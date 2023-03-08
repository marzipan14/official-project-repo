; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@__A_VARIABLE = internal global i32 0
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  ret i32 %69, !dbg !125
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @lpNew() local_unnamed_addr #0 !dbg !126 {
  %1 = tail call i8* @zmalloc(i64 7) #4, !dbg !133
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  ret i8* %1, !dbg !145
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpFree(i8*) local_unnamed_addr #0 !dbg !146 {
  tail call void @zfree(i8* %0) #4, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  ret void, !dbg !153
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lpEncodeGetType(i8* nocapture readonly, i32, i8*, i64* nocapture) local_unnamed_addr #0 !dbg !154 {
  %5 = zext i32 %1 to i64, !dbg !177
  %6 = icmp eq i32 %1, 0, !dbg !184
  br i1 %6, label %149, label %7, !dbg !185

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i32 %1, 1, !dbg !186
  %9 = load i8, i8* %0, align 1, !dbg !187, !tbaa !51
  %10 = icmp eq i8 %9, 48, !dbg !188
  %11 = and i1 %8, %10, !dbg !189
  br i1 %11, label %61, label %12, !dbg !189

; <label>:12:                                     ; preds = %7
  %13 = icmp eq i8 %9, 45, !dbg !190
  br i1 %13, label %14, label %18, !dbg !191

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !192
  br i1 %8, label %149, label %16, !dbg !193

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
  br i1 %31, label %61, label %150, !dbg !202

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
  br i1 %42, label %150, label %43, !dbg !205

; <label>:43:                                     ; preds = %32
  %44 = mul i64 %34, 10, !dbg !207
  %45 = sub nsw i64 47, %38, !dbg !208
  %46 = icmp ugt i64 %44, %45, !dbg !209
  br i1 %46, label %150, label %47, !dbg !210

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
  br i1 %56, label %150, label %57, !dbg !217

; <label>:57:                                     ; preds = %55
  %58 = sub i64 0, %53, !dbg !218
  br label %62, !dbg !219

; <label>:59:                                     ; preds = %52
  %60 = icmp slt i64 %53, 0, !dbg !220
  br i1 %60, label %150, label %62, !dbg !221

; <label>:61:                                     ; preds = %7, %29
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  br label %65, !dbg !224

; <label>:62:                                     ; preds = %59, %57
  %63 = phi i64 [ %58, %57 ], [ %53, %59 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %64 = icmp ult i64 %63, 128, !dbg !224
  br i1 %64, label %65, label %68, !dbg !224

; <label>:65:                                     ; preds = %61, %62
  %66 = phi i64 [ 0, %61 ], [ %63, %62 ]
  %67 = trunc i64 %66 to i8, !dbg !225
  store i8 %67, i8* %2, align 1, !dbg !227, !tbaa !51
  br label %160, !dbg !228

; <label>:68:                                     ; preds = %62
  %69 = add i64 %63, 4096, !dbg !229
  %70 = icmp ult i64 %69, 8192, !dbg !229
  br i1 %70, label %71, label %80, !dbg !229

; <label>:71:                                     ; preds = %68
  %72 = icmp slt i64 %63, 0, !dbg !230
  %73 = add nsw i64 %63, 8192, !dbg !233
  %74 = select i1 %72, i64 %73, i64 %63, !dbg !234
  %75 = lshr i64 %74, 8, !dbg !235
  %76 = trunc i64 %75 to i8, !dbg !236
  %77 = or i8 %76, -64, !dbg !236
  store i8 %77, i8* %2, align 1, !dbg !237, !tbaa !51
  %78 = trunc i64 %74 to i8, !dbg !238
  %79 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !239
  store i8 %78, i8* %79, align 1, !dbg !240, !tbaa !51
  br label %160, !dbg !241

; <label>:80:                                     ; preds = %68
  %81 = add i64 %63, 32768, !dbg !242
  %82 = icmp ult i64 %81, 65536, !dbg !242
  br i1 %82, label %83, label %92, !dbg !242

; <label>:83:                                     ; preds = %80
  %84 = icmp slt i64 %63, 0, !dbg !243
  %85 = add nsw i64 %63, 65536, !dbg !246
  %86 = select i1 %84, i64 %85, i64 %63, !dbg !247
  store i8 -15, i8* %2, align 1, !dbg !248, !tbaa !51
  %87 = trunc i64 %86 to i8, !dbg !249
  %88 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !250
  store i8 %87, i8* %88, align 1, !dbg !251, !tbaa !51
  %89 = lshr i64 %86, 8, !dbg !252
  %90 = trunc i64 %89 to i8, !dbg !253
  %91 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !254
  store i8 %90, i8* %91, align 1, !dbg !255, !tbaa !51
  br label %160, !dbg !256

; <label>:92:                                     ; preds = %80
  %93 = add i64 %63, 8388608, !dbg !257
  %94 = icmp ult i64 %93, 16777216, !dbg !257
  br i1 %94, label %95, label %107, !dbg !257

; <label>:95:                                     ; preds = %92
  %96 = icmp slt i64 %63, 0, !dbg !258
  %97 = add nsw i64 %63, 16777216, !dbg !261
  %98 = select i1 %96, i64 %97, i64 %63, !dbg !262
  store i8 -14, i8* %2, align 1, !dbg !263, !tbaa !51
  %99 = trunc i64 %98 to i8, !dbg !264
  %100 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !265
  store i8 %99, i8* %100, align 1, !dbg !266, !tbaa !51
  %101 = lshr i64 %98, 8, !dbg !267
  %102 = trunc i64 %101 to i8, !dbg !268
  %103 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !269
  store i8 %102, i8* %103, align 1, !dbg !270, !tbaa !51
  %104 = lshr i64 %98, 16, !dbg !271
  %105 = trunc i64 %104 to i8, !dbg !272
  %106 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !273
  store i8 %105, i8* %106, align 1, !dbg !274, !tbaa !51
  br label %160, !dbg !275

; <label>:107:                                    ; preds = %92
  %108 = add i64 %63, 2147483648, !dbg !276
  %109 = icmp ult i64 %108, 4294967296, !dbg !276
  br i1 %109, label %110, label %125, !dbg !276

; <label>:110:                                    ; preds = %107
  %111 = icmp slt i64 %63, 0, !dbg !277
  %112 = add nsw i64 %63, 4294967296, !dbg !280
  %113 = select i1 %111, i64 %112, i64 %63, !dbg !281
  store i8 -13, i8* %2, align 1, !dbg !282, !tbaa !51
  %114 = trunc i64 %113 to i8, !dbg !283
  %115 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !284
  store i8 %114, i8* %115, align 1, !dbg !285, !tbaa !51
  %116 = lshr i64 %113, 8, !dbg !286
  %117 = trunc i64 %116 to i8, !dbg !287
  %118 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !288
  store i8 %117, i8* %118, align 1, !dbg !289, !tbaa !51
  %119 = lshr i64 %113, 16, !dbg !290
  %120 = trunc i64 %119 to i8, !dbg !291
  %121 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !292
  store i8 %120, i8* %121, align 1, !dbg !293, !tbaa !51
  %122 = lshr i64 %113, 24, !dbg !294
  %123 = trunc i64 %122 to i8, !dbg !295
  %124 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !296
  store i8 %123, i8* %124, align 1, !dbg !297, !tbaa !51
  br label %160, !dbg !298

; <label>:125:                                    ; preds = %107
  store i8 -12, i8* %2, align 1, !dbg !300, !tbaa !51
  %126 = trunc i64 %63 to i8, !dbg !301
  %127 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !302
  store i8 %126, i8* %127, align 1, !dbg !303, !tbaa !51
  %128 = lshr i64 %63, 8, !dbg !304
  %129 = trunc i64 %128 to i8, !dbg !305
  %130 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !306
  store i8 %129, i8* %130, align 1, !dbg !307, !tbaa !51
  %131 = lshr i64 %63, 16, !dbg !308
  %132 = trunc i64 %131 to i8, !dbg !309
  %133 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !310
  store i8 %132, i8* %133, align 1, !dbg !311, !tbaa !51
  %134 = lshr i64 %63, 24, !dbg !312
  %135 = trunc i64 %134 to i8, !dbg !313
  %136 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !314
  store i8 %135, i8* %136, align 1, !dbg !315, !tbaa !51
  %137 = lshr i64 %63, 32, !dbg !316
  %138 = trunc i64 %137 to i8, !dbg !317
  %139 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !318
  store i8 %138, i8* %139, align 1, !dbg !319, !tbaa !51
  %140 = lshr i64 %63, 40, !dbg !320
  %141 = trunc i64 %140 to i8, !dbg !321
  %142 = getelementptr inbounds i8, i8* %2, i64 6, !dbg !322
  store i8 %141, i8* %142, align 1, !dbg !323, !tbaa !51
  %143 = lshr i64 %63, 48, !dbg !324
  %144 = trunc i64 %143 to i8, !dbg !325
  %145 = getelementptr inbounds i8, i8* %2, i64 7, !dbg !326
  store i8 %144, i8* %145, align 1, !dbg !327, !tbaa !51
  %146 = lshr i64 %63, 56, !dbg !328
  %147 = trunc i64 %146 to i8, !dbg !329
  %148 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !330
  store i8 %147, i8* %148, align 1, !dbg !331, !tbaa !51
  br label %160

; <label>:149:                                    ; preds = %4, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  br label %152, !dbg !332

; <label>:150:                                    ; preds = %43, %32, %29, %55, %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %151 = icmp ult i32 %1, 64, !dbg !334
  br i1 %151, label %152, label %154, !dbg !332

; <label>:152:                                    ; preds = %149, %150
  %153 = add i32 %1, 1, !dbg !336
  br label %160, !dbg !337

; <label>:154:                                    ; preds = %150
  %155 = icmp ult i32 %1, 4096, !dbg !338
  br i1 %155, label %156, label %158, !dbg !340

; <label>:156:                                    ; preds = %154
  %157 = add i32 %1, 2, !dbg !341
  br label %160, !dbg !342

; <label>:158:                                    ; preds = %154
  %159 = add i32 %1, 5, !dbg !343
  br label %160

; <label>:160:                                    ; preds = %152, %158, %156, %65, %83, %110, %125, %95, %71
  %161 = phi i32 [ %153, %152 ], [ %159, %158 ], [ %157, %156 ], [ 1, %65 ], [ 3, %83 ], [ 5, %110 ], [ 9, %125 ], [ 4, %95 ], [ 2, %71 ]
  %162 = phi i32 [ 1, %152 ], [ 1, %158 ], [ 1, %156 ], [ 0, %65 ], [ 0, %83 ], [ 0, %110 ], [ 0, %125 ], [ 0, %95 ], [ 0, %71 ], !dbg !344
  %163 = zext i32 %161 to i64
  store i64 %163, i64* %3, align 8, !dbg !345, !tbaa !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  ret i32 %162, !dbg !346
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lpEncodeBacklen(i8*, i64) local_unnamed_addr #0 !dbg !347 {
  %3 = icmp ult i64 %1, 128, !dbg !355
  br i1 %3, label %4, label %8, !dbg !357

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i8* %0, null, !dbg !358
  br i1 %5, label %69, label %6, !dbg !361

; <label>:6:                                      ; preds = %4
  %7 = trunc i64 %1 to i8, !dbg !362
  store i8 %7, i8* %0, align 1, !dbg !363, !tbaa !51
  br label %69, !dbg !364

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %1, 16383, !dbg !365
  br i1 %9, label %10, label %18, !dbg !367

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i8* %0, null, !dbg !368
  br i1 %11, label %69, label %12, !dbg !371

; <label>:12:                                     ; preds = %10
  %13 = lshr i64 %1, 7, !dbg !372
  %14 = trunc i64 %13 to i8, !dbg !374
  store i8 %14, i8* %0, align 1, !dbg !375, !tbaa !51
  %15 = trunc i64 %1 to i8, !dbg !376
  %16 = or i8 %15, -128, !dbg !376
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !377
  store i8 %16, i8* %17, align 1, !dbg !378, !tbaa !51
  br label %69, !dbg !379

; <label>:18:                                     ; preds = %8
  %19 = icmp ult i64 %1, 2097151, !dbg !380
  br i1 %19, label %20, label %32, !dbg !382

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i8* %0, null, !dbg !383
  br i1 %21, label %69, label %22, !dbg !386

; <label>:22:                                     ; preds = %20
  %23 = lshr i64 %1, 14, !dbg !387
  %24 = trunc i64 %23 to i8, !dbg !389
  store i8 %24, i8* %0, align 1, !dbg !390, !tbaa !51
  %25 = lshr i64 %1, 7, !dbg !391
  %26 = trunc i64 %25 to i8, !dbg !392
  %27 = or i8 %26, -128, !dbg !392
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !393
  store i8 %27, i8* %28, align 1, !dbg !394, !tbaa !51
  %29 = trunc i64 %1 to i8, !dbg !395
  %30 = or i8 %29, -128, !dbg !395
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !396
  store i8 %30, i8* %31, align 1, !dbg !397, !tbaa !51
  br label %69, !dbg !398

; <label>:32:                                     ; preds = %18
  %33 = icmp ult i64 %1, 268435455, !dbg !399
  %34 = icmp ne i8* %0, null, !dbg !401
  br i1 %33, label %35, label %50, !dbg !404

; <label>:35:                                     ; preds = %32
  br i1 %34, label %36, label %69, !dbg !405

; <label>:36:                                     ; preds = %35
  %37 = lshr i64 %1, 21, !dbg !407
  %38 = trunc i64 %37 to i8, !dbg !410
  store i8 %38, i8* %0, align 1, !dbg !411, !tbaa !51
  %39 = lshr i64 %1, 14, !dbg !412
  %40 = trunc i64 %39 to i8, !dbg !413
  %41 = or i8 %40, -128, !dbg !413
  %42 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !414
  store i8 %41, i8* %42, align 1, !dbg !415, !tbaa !51
  %43 = lshr i64 %1, 7, !dbg !416
  %44 = trunc i64 %43 to i8, !dbg !417
  %45 = or i8 %44, -128, !dbg !417
  %46 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !418
  store i8 %45, i8* %46, align 1, !dbg !419, !tbaa !51
  %47 = trunc i64 %1 to i8, !dbg !420
  %48 = or i8 %47, -128, !dbg !420
  %49 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !421
  store i8 %48, i8* %49, align 1, !dbg !422, !tbaa !51
  br label %69, !dbg !423

; <label>:50:                                     ; preds = %32
  br i1 %34, label %51, label %69, !dbg !424

; <label>:51:                                     ; preds = %50
  %52 = lshr i64 %1, 28, !dbg !425
  %53 = trunc i64 %52 to i8, !dbg !427
  store i8 %53, i8* %0, align 1, !dbg !428, !tbaa !51
  %54 = lshr i64 %1, 21, !dbg !429
  %55 = trunc i64 %54 to i8, !dbg !430
  %56 = or i8 %55, -128, !dbg !430
  %57 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !431
  store i8 %56, i8* %57, align 1, !dbg !432, !tbaa !51
  %58 = lshr i64 %1, 14, !dbg !433
  %59 = trunc i64 %58 to i8, !dbg !434
  %60 = or i8 %59, -128, !dbg !434
  %61 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !435
  store i8 %60, i8* %61, align 1, !dbg !436, !tbaa !51
  %62 = lshr i64 %1, 7, !dbg !437
  %63 = trunc i64 %62 to i8, !dbg !438
  %64 = or i8 %63, -128, !dbg !438
  %65 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !439
  store i8 %64, i8* %65, align 1, !dbg !440, !tbaa !51
  %66 = trunc i64 %1 to i8, !dbg !441
  %67 = or i8 %66, -128, !dbg !441
  %68 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !442
  store i8 %67, i8* %68, align 1, !dbg !443, !tbaa !51
  br label %69, !dbg !444

; <label>:69:                                     ; preds = %50, %51, %35, %36, %22, %20, %12, %10, %6, %4
  %70 = phi i64 [ 1, %4 ], [ 1, %6 ], [ 2, %10 ], [ 2, %12 ], [ 3, %20 ], [ 3, %22 ], [ 4, %36 ], [ 4, %35 ], [ 5, %51 ], [ 5, %50 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  ret i64 %70, !dbg !446
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lpDecodeBacklen(i8* nocapture readonly) local_unnamed_addr #0 !dbg !447 {
  %2 = load i8, i8* %0, align 1, !dbg !457, !tbaa !51
  %3 = and i8 %2, 127, !dbg !459
  %4 = zext i8 %3 to i64, !dbg !460
  %5 = icmp slt i8 %2, 0, !dbg !461
  br i1 %5, label %6, label %14, !dbg !463

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !464
  %8 = load i8, i8* %7, align 1, !dbg !457, !tbaa !51
  %9 = and i8 %8, 127, !dbg !459
  %10 = zext i8 %9 to i64, !dbg !460
  %11 = shl nuw nsw i64 %10, 7, !dbg !465
  %12 = or i64 %11, %4, !dbg !466
  %13 = icmp slt i8 %8, 0, !dbg !461
  br i1 %13, label %16, label %14, !dbg !463

; <label>:14:                                     ; preds = %32, %24, %16, %6, %1
  %15 = phi i64 [ %4, %1 ], [ %12, %6 ], [ %22, %16 ], [ %30, %24 ], [ %40, %32 ], !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  ret i64 %15, !dbg !468

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !464
  %18 = load i8, i8* %17, align 1, !dbg !457, !tbaa !51
  %19 = and i8 %18, 127, !dbg !459
  %20 = zext i8 %19 to i64, !dbg !460
  %21 = shl nuw nsw i64 %20, 14, !dbg !465
  %22 = or i64 %21, %12, !dbg !466
  %23 = icmp slt i8 %18, 0, !dbg !461
  br i1 %23, label %24, label %14, !dbg !463

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !464
  %26 = load i8, i8* %25, align 1, !dbg !457, !tbaa !51
  %27 = and i8 %26, 127, !dbg !459
  %28 = zext i8 %27 to i64, !dbg !460
  %29 = shl nuw nsw i64 %28, 21, !dbg !465
  %30 = or i64 %29, %22, !dbg !466
  %31 = icmp slt i8 %26, 0, !dbg !461
  br i1 %31, label %32, label %14, !dbg !463

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %0, i64 -4, !dbg !464
  %34 = load i8, i8* %33, align 1, !dbg !457, !tbaa !51
  %35 = and i8 %34, 127, !dbg !459
  %36 = zext i8 %35 to i64, !dbg !460
  %37 = shl nuw nsw i64 %36, 28, !dbg !465
  %38 = or i64 %37, %30, !dbg !466
  %39 = icmp slt i8 %34, 0, !dbg !461
  %40 = select i1 %39, i64 -1, i64 %38, !dbg !463
  br label %14, !dbg !463
}

; Function Attrs: noredzone nounwind
define dso_local void @lpEncodeString(i8*, i8*, i32) local_unnamed_addr #0 !dbg !469 {
  %4 = icmp ult i32 %2, 64, !dbg !479
  br i1 %4, label %5, label %11, !dbg !481

; <label>:5:                                      ; preds = %3
  %6 = trunc i32 %2 to i8, !dbg !482
  %7 = or i8 %6, -128, !dbg !482
  store i8 %7, i8* %0, align 1, !dbg !484, !tbaa !51
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !485
  %9 = zext i32 %2 to i64, !dbg !486
  %10 = tail call i8* @memcpy(i8* nonnull %8, i8* %1, i64 %9) #4, !dbg !487
  br label %37, !dbg !488

; <label>:11:                                     ; preds = %3
  %12 = icmp ult i32 %2, 4096, !dbg !489
  br i1 %12, label %13, label %22, !dbg !491

; <label>:13:                                     ; preds = %11
  %14 = lshr i32 %2, 8, !dbg !492
  %15 = trunc i32 %14 to i8, !dbg !494
  %16 = or i8 %15, -32, !dbg !494
  store i8 %16, i8* %0, align 1, !dbg !495, !tbaa !51
  %17 = trunc i32 %2 to i8, !dbg !496
  %18 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !497
  store i8 %17, i8* %18, align 1, !dbg !498, !tbaa !51
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !499
  %20 = zext i32 %2 to i64, !dbg !500
  %21 = tail call i8* @memcpy(i8* nonnull %19, i8* %1, i64 %20) #4, !dbg !501
  br label %37, !dbg !502

; <label>:22:                                     ; preds = %11
  store i8 -16, i8* %0, align 1, !dbg !503, !tbaa !51
  %23 = trunc i32 %2 to i8, !dbg !505
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !506
  store i8 %23, i8* %24, align 1, !dbg !507, !tbaa !51
  %25 = lshr i32 %2, 8, !dbg !508
  %26 = trunc i32 %25 to i8, !dbg !509
  %27 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !510
  store i8 %26, i8* %27, align 1, !dbg !511, !tbaa !51
  %28 = lshr i32 %2, 16, !dbg !512
  %29 = trunc i32 %28 to i8, !dbg !513
  %30 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !514
  store i8 %29, i8* %30, align 1, !dbg !515, !tbaa !51
  %31 = lshr i32 %2, 24, !dbg !516
  %32 = trunc i32 %31 to i8, !dbg !517
  %33 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !518
  store i8 %32, i8* %33, align 1, !dbg !519, !tbaa !51
  %34 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !520
  %35 = zext i32 %2 to i64, !dbg !521
  %36 = tail call i8* @memcpy(i8* nonnull %34, i8* %1, i64 %35) #4, !dbg !522
  br label %37

; <label>:37:                                     ; preds = %13, %22, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  ret void, !dbg !523
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lpCurrentEncodedSize(i8* nocapture readonly) local_unnamed_addr #0 !dbg !524 {
  %2 = load i8, i8* %0, align 1, !dbg !530, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !530
  %4 = icmp sgt i8 %2, -1, !dbg !530
  br i1 %4, label %54, label %5, !dbg !532

; <label>:5:                                      ; preds = %1
  %6 = and i32 %3, 192, !dbg !533
  %7 = icmp eq i32 %6, 128, !dbg !533
  br i1 %7, label %8, label %11, !dbg !535

; <label>:8:                                      ; preds = %5
  %9 = and i32 %3, 63, !dbg !536
  %10 = add nuw nsw i32 %9, 1, !dbg !537
  br label %54, !dbg !538

; <label>:11:                                     ; preds = %5
  %12 = and i32 %3, 224, !dbg !539
  %13 = icmp eq i32 %12, 192, !dbg !539
  br i1 %13, label %54, label %14, !dbg !541

; <label>:14:                                     ; preds = %11
  %15 = add i8 %2, 15, !dbg !542
  %16 = icmp ult i8 %15, 4, !dbg !542
  br i1 %16, label %50, label %17, !dbg !542

; <label>:17:                                     ; preds = %14
  %18 = and i32 %3, 240, !dbg !543
  %19 = icmp eq i32 %18, 224, !dbg !543
  br i1 %19, label %20, label %28, !dbg !545

; <label>:20:                                     ; preds = %17
  %21 = shl nuw nsw i32 %3, 8, !dbg !546
  %22 = and i32 %21, 3840, !dbg !546
  %23 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !546
  %24 = load i8, i8* %23, align 1, !dbg !546, !tbaa !51
  %25 = zext i8 %24 to i32, !dbg !546
  %26 = or i32 %22, %25, !dbg !546
  %27 = add nuw nsw i32 %26, 2, !dbg !547
  br label %54, !dbg !548

; <label>:28:                                     ; preds = %17
  switch i8 %2, label %49 [
    i8 -16, label %29
    i8 -1, label %54
  ], !dbg !549

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !550
  %31 = load i8, i8* %30, align 1, !dbg !550, !tbaa !51
  %32 = zext i8 %31 to i32, !dbg !550
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !550
  %34 = load i8, i8* %33, align 1, !dbg !550, !tbaa !51
  %35 = zext i8 %34 to i32, !dbg !550
  %36 = shl nuw nsw i32 %35, 8, !dbg !550
  %37 = or i32 %36, %32, !dbg !550
  %38 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !550
  %39 = load i8, i8* %38, align 1, !dbg !550, !tbaa !51
  %40 = zext i8 %39 to i32, !dbg !550
  %41 = shl nuw nsw i32 %40, 16, !dbg !550
  %42 = or i32 %37, %41, !dbg !550
  %43 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !550
  %44 = load i8, i8* %43, align 1, !dbg !550, !tbaa !51
  %45 = zext i8 %44 to i32, !dbg !550
  %46 = shl nuw i32 %45, 24, !dbg !550
  %47 = or i32 %42, %46, !dbg !550
  %48 = add i32 %47, 5, !dbg !552
  br label %54, !dbg !553

; <label>:49:                                     ; preds = %28
  br label %54, !dbg !554

; <label>:50:                                     ; preds = %14
  %51 = sext i8 %15 to i64, !dbg !542
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* @switch.table.lpCurrentEncodedSize, i64 0, i64 %51, !dbg !542
  %53 = load i32, i32* %52, align 4, !dbg !542
  br label %54, !dbg !542

; <label>:54:                                     ; preds = %50, %28, %11, %1, %49, %29, %20, %8
  %55 = phi i32 [ %10, %8 ], [ %27, %20 ], [ %48, %29 ], [ 0, %49 ], [ 1, %1 ], [ 2, %11 ], [ 1, %28 ], [ %53, %50 ], !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  ret i32 %55, !dbg !556
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @lpSkip(i8* readonly) local_unnamed_addr #0 !dbg !557 {
  %2 = load i8, i8* %0, align 1, !dbg !566, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !566
  %4 = icmp sgt i8 %2, -1, !dbg !566
  br i1 %4, label %53, label %5, !dbg !567

; <label>:5:                                      ; preds = %1
  %6 = and i32 %3, 192, !dbg !568
  %7 = icmp eq i32 %6, 128, !dbg !568
  br i1 %7, label %8, label %12, !dbg !569

; <label>:8:                                      ; preds = %5
  %9 = and i32 %3, 63, !dbg !570
  %10 = add nuw nsw i32 %9, 1, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %11 = zext i32 %10 to i64, !dbg !573
  br label %68, !dbg !578

; <label>:12:                                     ; preds = %5
  %13 = and i32 %3, 224, !dbg !579
  %14 = icmp eq i32 %13, 192, !dbg !579
  br i1 %14, label %53, label %15, !dbg !580

; <label>:15:                                     ; preds = %12
  %16 = add i8 %2, 15, !dbg !581
  %17 = icmp ult i8 %16, 4, !dbg !581
  br i1 %17, label %49, label %18, !dbg !581

; <label>:18:                                     ; preds = %15
  %19 = and i32 %3, 240, !dbg !582
  %20 = icmp eq i32 %19, 224, !dbg !582
  br i1 %20, label %21, label %28, !dbg !583

; <label>:21:                                     ; preds = %18
  %22 = shl nuw nsw i32 %3, 8, !dbg !584
  %23 = and i32 %22, 3840, !dbg !584
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !584
  %25 = load i8, i8* %24, align 1, !dbg !584, !tbaa !51
  %26 = zext i8 %25 to i32, !dbg !584
  %27 = or i32 %23, %26, !dbg !584
  br label %55, !dbg !585

; <label>:28:                                     ; preds = %18
  switch i8 %2, label %48 [
    i8 -16, label %29
    i8 -1, label %53
  ], !dbg !586

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !587
  %31 = load i8, i8* %30, align 1, !dbg !587, !tbaa !51
  %32 = zext i8 %31 to i32, !dbg !587
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !587
  %34 = load i8, i8* %33, align 1, !dbg !587, !tbaa !51
  %35 = zext i8 %34 to i32, !dbg !587
  %36 = shl nuw nsw i32 %35, 8, !dbg !587
  %37 = or i32 %36, %32, !dbg !587
  %38 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !587
  %39 = load i8, i8* %38, align 1, !dbg !587, !tbaa !51
  %40 = zext i8 %39 to i32, !dbg !587
  %41 = shl nuw nsw i32 %40, 16, !dbg !587
  %42 = or i32 %37, %41, !dbg !587
  %43 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !587
  %44 = load i8, i8* %43, align 1, !dbg !587, !tbaa !51
  %45 = zext i8 %44 to i32, !dbg !587
  %46 = shl nuw i32 %45, 24, !dbg !587
  %47 = or i32 %42, %46, !dbg !587
  br label %55, !dbg !588

; <label>:48:                                     ; preds = %28
  br label %53, !dbg !589

; <label>:49:                                     ; preds = %15
  %50 = sext i8 %16 to i64, !dbg !581
  %51 = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.lpInsert, i64 0, i64 %50, !dbg !581
  %52 = load i64, i64* %51, align 8, !dbg !581
  br label %53, !dbg !581

; <label>:53:                                     ; preds = %49, %48, %1, %12, %28
  %54 = phi i64 [ 1, %28 ], [ 2, %12 ], [ 1, %1 ], [ 0, %48 ], [ %52, %49 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  br label %68, !dbg !578

; <label>:55:                                     ; preds = %21, %29
  %56 = phi i32 [ 2, %21 ], [ 5, %29 ]
  %57 = phi i32 [ %27, %21 ], [ %47, %29 ]
  %58 = add i32 %57, %56, !dbg !590
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %59 = zext i32 %58 to i64, !dbg !573
  %60 = icmp ult i32 %58, 128, !dbg !591
  br i1 %60, label %68, label %61, !dbg !578

; <label>:61:                                     ; preds = %55
  %62 = icmp ult i32 %58, 16383, !dbg !592
  br i1 %62, label %68, label %63, !dbg !593

; <label>:63:                                     ; preds = %61
  %64 = icmp ult i32 %58, 2097151, !dbg !594
  br i1 %64, label %68, label %65, !dbg !595

; <label>:65:                                     ; preds = %63
  %66 = icmp ult i32 %58, 268435455, !dbg !596
  %67 = select i1 %66, i64 4, i64 5, !dbg !597
  br label %68, !dbg !597

; <label>:68:                                     ; preds = %8, %65, %63, %61, %55, %53
  %69 = phi i64 [ %54, %53 ], [ %59, %55 ], [ %59, %61 ], [ %59, %63 ], [ %59, %65 ], [ %11, %8 ]
  %70 = phi i64 [ 1, %53 ], [ 1, %55 ], [ 2, %61 ], [ 3, %63 ], [ %67, %65 ], [ 1, %8 ], !dbg !598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  %71 = add i64 %70, %69, !dbg !600
  %72 = getelementptr inbounds i8, i8* %0, i64 %71, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !602
  ret i8* %72, !dbg !602
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #0 !dbg !603 {
  %3 = tail call i8* @lpSkip(i8* %1) #5, !dbg !611
  %4 = load i8, i8* %3, align 1, !dbg !612, !tbaa !51
  %5 = icmp eq i8 %4, -1, !dbg !614
  %6 = select i1 %5, i8* null, i8* %3, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  ret i8* %6, !dbg !616
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #0 !dbg !617 {
  %3 = ptrtoint i8* %1 to i64, !dbg !624
  %4 = ptrtoint i8* %0 to i64, !dbg !624
  %5 = sub i64 %3, %4, !dbg !624
  %6 = icmp eq i64 %5, 6, !dbg !626
  br i1 %6, label %65, label %7, !dbg !627

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !628
  %9 = load i8, i8* %8, align 1, !dbg !633, !tbaa !51
  %10 = and i8 %9, 127, !dbg !634
  %11 = zext i8 %10 to i64, !dbg !635
  %12 = icmp slt i8 %9, 0, !dbg !636
  br i1 %12, label %14, label %13, !dbg !637

; <label>:13:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br label %58, !dbg !643

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds i8, i8* %1, i64 -2, !dbg !644
  %16 = load i8, i8* %15, align 1, !dbg !633, !tbaa !51
  %17 = and i8 %16, 127, !dbg !634
  %18 = zext i8 %17 to i64, !dbg !635
  %19 = shl nuw nsw i64 %18, 7, !dbg !645
  %20 = or i64 %19, %11, !dbg !646
  %21 = icmp slt i8 %16, 0, !dbg !636
  br i1 %21, label %22, label %47, !dbg !637

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !644
  %24 = load i8, i8* %23, align 1, !dbg !633, !tbaa !51
  %25 = and i8 %24, 127, !dbg !634
  %26 = zext i8 %25 to i64, !dbg !635
  %27 = shl nuw nsw i64 %26, 14, !dbg !645
  %28 = or i64 %27, %20, !dbg !646
  %29 = icmp slt i8 %24, 0, !dbg !636
  br i1 %29, label %30, label %47, !dbg !637

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds i8, i8* %1, i64 -4, !dbg !644
  %32 = load i8, i8* %31, align 1, !dbg !633, !tbaa !51
  %33 = and i8 %32, 127, !dbg !634
  %34 = zext i8 %33 to i64, !dbg !635
  %35 = shl nuw nsw i64 %34, 21, !dbg !645
  %36 = or i64 %35, %28, !dbg !646
  %37 = icmp slt i8 %32, 0, !dbg !636
  br i1 %37, label %38, label %47, !dbg !637

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !644
  %40 = load i8, i8* %39, align 1, !dbg !633, !tbaa !51
  %41 = and i8 %40, 127, !dbg !634
  %42 = zext i8 %41 to i64, !dbg !635
  %43 = shl nuw nsw i64 %42, 28, !dbg !645
  %44 = or i64 %43, %36, !dbg !646
  %45 = icmp slt i8 %40, 0, !dbg !636
  br i1 %45, label %46, label %47

; <label>:46:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br label %56, !dbg !647

; <label>:47:                                     ; preds = %38, %14, %22, %30
  %48 = phi i64 [ %20, %14 ], [ %28, %22 ], [ %36, %30 ], [ %44, %38 ], !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  %49 = icmp ult i64 %48, 128, !dbg !649
  br i1 %49, label %58, label %50, !dbg !643

; <label>:50:                                     ; preds = %47
  %51 = icmp ult i64 %48, 16383, !dbg !650
  br i1 %51, label %58, label %52, !dbg !651

; <label>:52:                                     ; preds = %50
  %53 = icmp ult i64 %48, 2097151, !dbg !652
  br i1 %53, label %58, label %54, !dbg !653

; <label>:54:                                     ; preds = %52
  %55 = icmp ult i64 %48, 268435455, !dbg !654
  br i1 %55, label %58, label %56, !dbg !647

; <label>:56:                                     ; preds = %46, %54
  %57 = phi i64 [ -1, %46 ], [ %48, %54 ]
  br label %58

; <label>:58:                                     ; preds = %54, %52, %50, %47, %13, %56
  %59 = phi i64 [ %57, %56 ], [ %11, %13 ], [ %48, %47 ], [ %48, %50 ], [ %48, %52 ], [ %48, %54 ]
  %60 = phi i64 [ 5, %56 ], [ 1, %13 ], [ 1, %47 ], [ 2, %50 ], [ 3, %52 ], [ 4, %54 ], !dbg !655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !656
  %61 = add i64 %59, %60, !dbg !657
  %62 = sub i64 0, %61, !dbg !658
  %63 = getelementptr inbounds i8, i8* %8, i64 %62, !dbg !658
  %64 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !659
  br label %65

; <label>:65:                                     ; preds = %2, %58
  %66 = phi i8* [ %64, %58 ], [ null, %2 ], !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  ret i8* %66, !dbg !661
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpFirst(i8* readonly) local_unnamed_addr #0 !dbg !662 {
  %2 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !666
  %3 = load i8, i8* %2, align 1, !dbg !667, !tbaa !51
  %4 = icmp eq i8 %3, -1, !dbg !669
  %5 = select i1 %4, i8* null, i8* %2, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  ret i8* %5, !dbg !671
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpLast(i8*) local_unnamed_addr #0 !dbg !672 {
  %2 = load i8, i8* %0, align 1, !dbg !677, !tbaa !51
  %3 = zext i8 %2 to i64, !dbg !677
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !677
  %5 = load i8, i8* %4, align 1, !dbg !677, !tbaa !51
  %6 = zext i8 %5 to i64, !dbg !677
  %7 = shl nuw nsw i64 %6, 8, !dbg !677
  %8 = or i64 %7, %3, !dbg !677
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !677
  %10 = load i8, i8* %9, align 1, !dbg !677, !tbaa !51
  %11 = zext i8 %10 to i64, !dbg !677
  %12 = shl nuw nsw i64 %11, 16, !dbg !677
  %13 = or i64 %8, %12, !dbg !677
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !677
  %15 = load i8, i8* %14, align 1, !dbg !677, !tbaa !51
  %16 = zext i8 %15 to i64, !dbg !677
  %17 = shl nuw nsw i64 %16, 24, !dbg !677
  %18 = or i64 %13, %17, !dbg !677
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !678
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !679
  %21 = ptrtoint i8* %20 to i64, !dbg !684
  %22 = ptrtoint i8* %0 to i64, !dbg !684
  %23 = sub i64 %21, %22, !dbg !684
  %24 = icmp eq i64 %23, 6, !dbg !685
  br i1 %24, label %83, label %25, !dbg !686

; <label>:25:                                     ; preds = %1
  %26 = getelementptr inbounds i8, i8* %20, i64 -1, !dbg !687
  %27 = load i8, i8* %26, align 1, !dbg !692, !tbaa !51
  %28 = and i8 %27, 127, !dbg !693
  %29 = zext i8 %28 to i64, !dbg !694
  %30 = icmp slt i8 %27, 0, !dbg !695
  br i1 %30, label %32, label %31, !dbg !696

; <label>:31:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %76, !dbg !700

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds i8, i8* %20, i64 -2, !dbg !701
  %34 = load i8, i8* %33, align 1, !dbg !692, !tbaa !51
  %35 = and i8 %34, 127, !dbg !693
  %36 = zext i8 %35 to i64, !dbg !694
  %37 = shl nuw nsw i64 %36, 7, !dbg !702
  %38 = or i64 %37, %29, !dbg !703
  %39 = icmp slt i8 %34, 0, !dbg !695
  br i1 %39, label %40, label %65, !dbg !696

; <label>:40:                                     ; preds = %32
  %41 = getelementptr inbounds i8, i8* %20, i64 -3, !dbg !701
  %42 = load i8, i8* %41, align 1, !dbg !692, !tbaa !51
  %43 = and i8 %42, 127, !dbg !693
  %44 = zext i8 %43 to i64, !dbg !694
  %45 = shl nuw nsw i64 %44, 14, !dbg !702
  %46 = or i64 %45, %38, !dbg !703
  %47 = icmp slt i8 %42, 0, !dbg !695
  br i1 %47, label %48, label %65, !dbg !696

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds i8, i8* %20, i64 -4, !dbg !701
  %50 = load i8, i8* %49, align 1, !dbg !692, !tbaa !51
  %51 = and i8 %50, 127, !dbg !693
  %52 = zext i8 %51 to i64, !dbg !694
  %53 = shl nuw nsw i64 %52, 21, !dbg !702
  %54 = or i64 %53, %46, !dbg !703
  %55 = icmp slt i8 %50, 0, !dbg !695
  br i1 %55, label %56, label %65, !dbg !696

; <label>:56:                                     ; preds = %48
  %57 = getelementptr inbounds i8, i8* %20, i64 -5, !dbg !701
  %58 = load i8, i8* %57, align 1, !dbg !692, !tbaa !51
  %59 = and i8 %58, 127, !dbg !693
  %60 = zext i8 %59 to i64, !dbg !694
  %61 = shl nuw nsw i64 %60, 28, !dbg !702
  %62 = or i64 %61, %54, !dbg !703
  %63 = icmp slt i8 %58, 0, !dbg !695
  br i1 %63, label %64, label %65

; <label>:64:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %74, !dbg !706

; <label>:65:                                     ; preds = %56, %48, %40, %32
  %66 = phi i64 [ %38, %32 ], [ %46, %40 ], [ %54, %48 ], [ %62, %56 ], !dbg !707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  %67 = icmp ult i64 %66, 128, !dbg !708
  br i1 %67, label %76, label %68, !dbg !700

; <label>:68:                                     ; preds = %65
  %69 = icmp ult i64 %66, 16383, !dbg !709
  br i1 %69, label %76, label %70, !dbg !710

; <label>:70:                                     ; preds = %68
  %71 = icmp ult i64 %66, 2097151, !dbg !711
  br i1 %71, label %76, label %72, !dbg !712

; <label>:72:                                     ; preds = %70
  %73 = icmp ult i64 %66, 268435455, !dbg !713
  br i1 %73, label %76, label %74, !dbg !706

; <label>:74:                                     ; preds = %72, %64
  %75 = phi i64 [ -1, %64 ], [ %66, %72 ]
  br label %76

; <label>:76:                                     ; preds = %74, %72, %70, %68, %65, %31
  %77 = phi i64 [ %75, %74 ], [ %29, %31 ], [ %66, %65 ], [ %66, %68 ], [ %66, %70 ], [ %66, %72 ]
  %78 = phi i64 [ 5, %74 ], [ 1, %31 ], [ 1, %65 ], [ 2, %68 ], [ 3, %70 ], [ 4, %72 ], !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %79 = add i64 %77, %78, !dbg !716
  %80 = sub i64 0, %79, !dbg !717
  %81 = getelementptr inbounds i8, i8* %26, i64 %80, !dbg !717
  %82 = getelementptr inbounds i8, i8* %81, i64 1, !dbg !718
  br label %83

; <label>:83:                                     ; preds = %1, %76
  %84 = phi i8* [ %82, %76 ], [ null, %1 ], !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  ret i8* %84, !dbg !721
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lpLength(i8*) local_unnamed_addr #0 !dbg !722 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !729
  %3 = load i8, i8* %2, align 1, !dbg !729, !tbaa !51
  %4 = zext i8 %3 to i32, !dbg !729
  %5 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !729
  %6 = load i8, i8* %5, align 1, !dbg !729, !tbaa !51
  %7 = zext i8 %6 to i32, !dbg !729
  %8 = shl nuw nsw i32 %7, 8, !dbg !729
  %9 = or i32 %8, %4, !dbg !729
  %10 = icmp eq i32 %9, 65535, !dbg !731
  br i1 %10, label %11, label %29, !dbg !733

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !737
  %13 = load i8, i8* %12, align 1, !dbg !738, !tbaa !51
  %14 = icmp eq i8 %13, -1, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br i1 %14, label %24, label %15, !dbg !741

; <label>:15:                                     ; preds = %11, %15
  %16 = phi i8* [ %19, %15 ], [ %12, %11 ]
  %17 = phi i32 [ %18, %15 ], [ 0, %11 ]
  %18 = add i32 %17, 1, !dbg !743
  %19 = tail call i8* @lpSkip(i8* nonnull %16) #4, !dbg !748
  %20 = load i8, i8* %19, align 1, !dbg !749, !tbaa !51
  %21 = icmp eq i8 %20, -1, !dbg !750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !751
  br i1 %21, label %22, label %15, !dbg !741

; <label>:22:                                     ; preds = %15
  %23 = icmp ult i32 %18, 65535, !dbg !752
  br i1 %23, label %24, label %29, !dbg !754

; <label>:24:                                     ; preds = %11, %22
  %25 = phi i32 [ %18, %22 ], [ 0, %11 ]
  %26 = trunc i32 %25 to i8, !dbg !755
  store i8 %26, i8* %2, align 1, !dbg !755, !tbaa !51
  %27 = lshr i32 %25, 8, !dbg !755
  %28 = trunc i32 %27 to i8, !dbg !755
  store i8 %28, i8* %5, align 1, !dbg !755, !tbaa !51
  br label %29, !dbg !755

; <label>:29:                                     ; preds = %22, %24, %1
  %30 = phi i32 [ %9, %1 ], [ %25, %24 ], [ %18, %22 ], !dbg !757
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  ret i32 %30, !dbg !758
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpGet(i8* readonly, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !759 {
  %4 = load i8, i8* %0, align 1, !dbg !773, !tbaa !51
  %5 = zext i8 %4 to i32, !dbg !773
  %6 = icmp sgt i8 %4, -1, !dbg !773
  br i1 %6, label %7, label %10, !dbg !775

; <label>:7:                                      ; preds = %3
  %8 = and i32 %5, 127, !dbg !778
  %9 = zext i32 %8 to i64, !dbg !780
  br label %147, !dbg !782

; <label>:10:                                     ; preds = %3
  %11 = and i32 %5, 192, !dbg !783
  %12 = icmp eq i32 %11, 128, !dbg !783
  br i1 %12, label %13, label %17, !dbg !785

; <label>:13:                                     ; preds = %10
  %14 = and i32 %5, 63, !dbg !786
  %15 = zext i32 %14 to i64, !dbg !786
  store i64 %15, i64* %1, align 8, !dbg !788, !tbaa !61
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !789
  br label %159, !dbg !790

; <label>:17:                                     ; preds = %10
  %18 = and i32 %5, 224, !dbg !791
  %19 = icmp eq i32 %18, 192, !dbg !791
  br i1 %19, label %20, label %28, !dbg !793

; <label>:20:                                     ; preds = %17
  %21 = shl nuw nsw i32 %5, 8, !dbg !794
  %22 = and i32 %21, 7936, !dbg !794
  %23 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !796
  %24 = load i8, i8* %23, align 1, !dbg !796, !tbaa !51
  %25 = zext i8 %24 to i32, !dbg !796
  %26 = or i32 %22, %25, !dbg !797
  %27 = zext i32 %26 to i64, !dbg !798
  br label %147, !dbg !799

; <label>:28:                                     ; preds = %17
  switch i8 %4, label %110 [
    i8 -15, label %29
    i8 -14, label %38
    i8 -13, label %52
    i8 -12, label %71
  ], !dbg !800

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !801
  %31 = load i8, i8* %30, align 1, !dbg !801, !tbaa !51
  %32 = zext i8 %31 to i64, !dbg !804
  %33 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !805
  %34 = load i8, i8* %33, align 1, !dbg !805, !tbaa !51
  %35 = zext i8 %34 to i64, !dbg !806
  %36 = shl nuw nsw i64 %35, 8, !dbg !807
  %37 = or i64 %36, %32, !dbg !808
  br label %147, !dbg !809

; <label>:38:                                     ; preds = %28
  %39 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !810
  %40 = load i8, i8* %39, align 1, !dbg !810, !tbaa !51
  %41 = zext i8 %40 to i64, !dbg !813
  %42 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !814
  %43 = load i8, i8* %42, align 1, !dbg !814, !tbaa !51
  %44 = zext i8 %43 to i64, !dbg !815
  %45 = shl nuw nsw i64 %44, 8, !dbg !816
  %46 = or i64 %45, %41, !dbg !817
  %47 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !818
  %48 = load i8, i8* %47, align 1, !dbg !818, !tbaa !51
  %49 = zext i8 %48 to i64, !dbg !819
  %50 = shl nuw nsw i64 %49, 16, !dbg !820
  %51 = or i64 %46, %50, !dbg !821
  br label %147, !dbg !822

; <label>:52:                                     ; preds = %28
  %53 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !823
  %54 = load i8, i8* %53, align 1, !dbg !823, !tbaa !51
  %55 = zext i8 %54 to i64, !dbg !826
  %56 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !827
  %57 = load i8, i8* %56, align 1, !dbg !827, !tbaa !51
  %58 = zext i8 %57 to i64, !dbg !828
  %59 = shl nuw nsw i64 %58, 8, !dbg !829
  %60 = or i64 %59, %55, !dbg !830
  %61 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !831
  %62 = load i8, i8* %61, align 1, !dbg !831, !tbaa !51
  %63 = zext i8 %62 to i64, !dbg !832
  %64 = shl nuw nsw i64 %63, 16, !dbg !833
  %65 = or i64 %60, %64, !dbg !834
  %66 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !835
  %67 = load i8, i8* %66, align 1, !dbg !835, !tbaa !51
  %68 = zext i8 %67 to i64, !dbg !836
  %69 = shl nuw nsw i64 %68, 24, !dbg !837
  %70 = or i64 %65, %69, !dbg !838
  br label %147, !dbg !839

; <label>:71:                                     ; preds = %28
  %72 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !840
  %73 = load i8, i8* %72, align 1, !dbg !840, !tbaa !51
  %74 = zext i8 %73 to i64, !dbg !843
  %75 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !844
  %76 = load i8, i8* %75, align 1, !dbg !844, !tbaa !51
  %77 = zext i8 %76 to i64, !dbg !845
  %78 = shl nuw nsw i64 %77, 8, !dbg !846
  %79 = or i64 %78, %74, !dbg !847
  %80 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !848
  %81 = load i8, i8* %80, align 1, !dbg !848, !tbaa !51
  %82 = zext i8 %81 to i64, !dbg !849
  %83 = shl nuw nsw i64 %82, 16, !dbg !850
  %84 = or i64 %79, %83, !dbg !851
  %85 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !852
  %86 = load i8, i8* %85, align 1, !dbg !852, !tbaa !51
  %87 = zext i8 %86 to i64, !dbg !853
  %88 = shl nuw nsw i64 %87, 24, !dbg !854
  %89 = or i64 %84, %88, !dbg !855
  %90 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !856
  %91 = load i8, i8* %90, align 1, !dbg !856, !tbaa !51
  %92 = zext i8 %91 to i64, !dbg !857
  %93 = shl nuw nsw i64 %92, 32, !dbg !858
  %94 = or i64 %89, %93, !dbg !859
  %95 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !860
  %96 = load i8, i8* %95, align 1, !dbg !860, !tbaa !51
  %97 = zext i8 %96 to i64, !dbg !861
  %98 = shl nuw nsw i64 %97, 40, !dbg !862
  %99 = or i64 %94, %98, !dbg !863
  %100 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !864
  %101 = load i8, i8* %100, align 1, !dbg !864, !tbaa !51
  %102 = zext i8 %101 to i64, !dbg !865
  %103 = shl nuw nsw i64 %102, 48, !dbg !866
  %104 = or i64 %99, %103, !dbg !867
  %105 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !868
  %106 = load i8, i8* %105, align 1, !dbg !868, !tbaa !51
  %107 = zext i8 %106 to i64, !dbg !869
  %108 = shl nuw i64 %107, 56, !dbg !870
  %109 = or i64 %104, %108, !dbg !871
  br label %147, !dbg !872

; <label>:110:                                    ; preds = %28
  %111 = and i32 %5, 240, !dbg !873
  %112 = icmp eq i32 %111, 224, !dbg !873
  br i1 %112, label %113, label %122, !dbg !875

; <label>:113:                                    ; preds = %110
  %114 = shl nuw nsw i32 %5, 8, !dbg !876
  %115 = and i32 %114, 3840, !dbg !876
  %116 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !876
  %117 = load i8, i8* %116, align 1, !dbg !876, !tbaa !51
  %118 = zext i8 %117 to i32, !dbg !876
  %119 = or i32 %115, %118, !dbg !876
  %120 = zext i32 %119 to i64, !dbg !876
  store i64 %120, i64* %1, align 8, !dbg !878, !tbaa !61
  %121 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !879
  br label %159, !dbg !880

; <label>:122:                                    ; preds = %110
  %123 = icmp eq i8 %4, -16, !dbg !881
  br i1 %123, label %124, label %144, !dbg !883

; <label>:124:                                    ; preds = %122
  %125 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !884
  %126 = load i8, i8* %125, align 1, !dbg !884, !tbaa !51
  %127 = zext i8 %126 to i64, !dbg !884
  %128 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !884
  %129 = load i8, i8* %128, align 1, !dbg !884, !tbaa !51
  %130 = zext i8 %129 to i64, !dbg !884
  %131 = shl nuw nsw i64 %130, 8, !dbg !884
  %132 = or i64 %131, %127, !dbg !884
  %133 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !884
  %134 = load i8, i8* %133, align 1, !dbg !884, !tbaa !51
  %135 = zext i8 %134 to i64, !dbg !884
  %136 = shl nuw nsw i64 %135, 16, !dbg !884
  %137 = or i64 %132, %136, !dbg !884
  %138 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !884
  %139 = load i8, i8* %138, align 1, !dbg !884, !tbaa !51
  %140 = zext i8 %139 to i64, !dbg !884
  %141 = shl nuw nsw i64 %140, 24, !dbg !884
  %142 = or i64 %137, %141, !dbg !884
  store i64 %142, i64* %1, align 8, !dbg !886, !tbaa !61
  %143 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !887
  br label %159, !dbg !888

; <label>:144:                                    ; preds = %122
  %145 = zext i8 %4 to i64, !dbg !889
  %146 = or i64 %145, 12345678900000000, !dbg !891
  br label %147

; <label>:147:                                    ; preds = %29, %52, %144, %71, %38, %20, %7
  %148 = phi i64 [ %9, %7 ], [ %27, %20 ], [ %37, %29 ], [ %51, %38 ], [ %70, %52 ], [ %109, %71 ], [ %146, %144 ], !dbg !892
  %149 = phi i64 [ -1, %7 ], [ 4096, %20 ], [ 32768, %29 ], [ 8388608, %38 ], [ 2147483648, %52 ], [ -9223372036854775808, %71 ], [ -1, %144 ], !dbg !892
  %150 = phi i64 [ -1, %7 ], [ -8192, %20 ], [ -65536, %29 ], [ -16777216, %38 ], [ -4294967296, %52 ], [ 0, %71 ], [ -1, %144 ]
  %151 = icmp ult i64 %148, %149, !dbg !893
  %152 = select i1 %151, i64 0, i64 %150, !dbg !895
  %153 = add i64 %152, %148, !dbg !895
  %154 = icmp eq i8* %2, null, !dbg !897
  br i1 %154, label %158, label %155, !dbg !899

; <label>:155:                                    ; preds = %147
  %156 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %2, i64 21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %153) #4, !dbg !900
  %157 = sext i32 %156 to i64, !dbg !900
  store i64 %157, i64* %1, align 8, !dbg !902, !tbaa !61
  br label %159, !dbg !903

; <label>:158:                                    ; preds = %147
  store i64 %153, i64* %1, align 8, !dbg !904, !tbaa !61
  br label %159, !dbg !906

; <label>:159:                                    ; preds = %158, %155, %124, %113, %13
  %160 = phi i8* [ %2, %155 ], [ null, %158 ], [ %16, %13 ], [ %121, %113 ], [ %143, %124 ], !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  ret i8* %160, !dbg !908
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpInsert(i8*, i8*, i32, i8*, i32, i8**) local_unnamed_addr #0 !dbg !909 {
  %7 = alloca [9 x i8], align 1
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !948
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %10) #6, !dbg !948
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !950
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %11) #6, !dbg !950
  %12 = bitcast i64* %9 to i8*, !dbg !952
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #6, !dbg !952
  %13 = icmp eq i8* %1, null, !dbg !953
  %14 = select i1 %13, i32 2, i32 %4, !dbg !955
  %15 = icmp eq i32 %14, 1, !dbg !956
  br i1 %15, label %16, label %18, !dbg !958

; <label>:16:                                     ; preds = %6
  %17 = tail call i8* @lpSkip(i8* %3) #5, !dbg !959
  br label %18, !dbg !961

; <label>:18:                                     ; preds = %16, %6
  %19 = phi i32 [ 0, %16 ], [ %14, %6 ], !dbg !962
  %20 = phi i8* [ %17, %16 ], [ %3, %6 ]
  %21 = ptrtoint i8* %20 to i64, !dbg !963
  %22 = ptrtoint i8* %0 to i64, !dbg !963
  %23 = sub i64 %21, %22, !dbg !963
  %24 = icmp ne i8* %1, null, !dbg !965
  br i1 %24, label %26, label %25, !dbg !967

; <label>:25:                                     ; preds = %18
  store i64 0, i64* %9, align 8, !dbg !970, !tbaa !61
  br label %88

; <label>:26:                                     ; preds = %18
  %27 = call i32 @lpEncodeGetType(i8* nonnull %1, i32 %2, i8* nonnull %10, i64* nonnull %9) #5, !dbg !972
  %28 = load i64, i64* %9, align 8, !dbg !974, !tbaa !61
  %29 = icmp ult i64 %28, 128, !dbg !978
  br i1 %29, label %30, label %32, !dbg !979

; <label>:30:                                     ; preds = %26
  %31 = trunc i64 %28 to i8, !dbg !980
  store i8 %31, i8* %11, align 1, !dbg !981, !tbaa !51
  br label %86, !dbg !982

; <label>:32:                                     ; preds = %26
  %33 = icmp ult i64 %28, 16383, !dbg !983
  br i1 %33, label %34, label %40, !dbg !984

; <label>:34:                                     ; preds = %32
  %35 = lshr i64 %28, 7, !dbg !985
  %36 = trunc i64 %35 to i8, !dbg !986
  store i8 %36, i8* %11, align 1, !dbg !987, !tbaa !51
  %37 = trunc i64 %28 to i8, !dbg !988
  %38 = or i8 %37, -128, !dbg !988
  %39 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !989
  store i8 %38, i8* %39, align 1, !dbg !990, !tbaa !51
  br label %86, !dbg !991

; <label>:40:                                     ; preds = %32
  %41 = icmp ult i64 %28, 2097151, !dbg !992
  br i1 %41, label %42, label %52, !dbg !993

; <label>:42:                                     ; preds = %40
  %43 = lshr i64 %28, 14, !dbg !994
  %44 = trunc i64 %43 to i8, !dbg !995
  store i8 %44, i8* %11, align 1, !dbg !996, !tbaa !51
  %45 = lshr i64 %28, 7, !dbg !997
  %46 = trunc i64 %45 to i8, !dbg !998
  %47 = or i8 %46, -128, !dbg !998
  %48 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !999
  store i8 %47, i8* %48, align 1, !dbg !1000, !tbaa !51
  %49 = trunc i64 %28 to i8, !dbg !1001
  %50 = or i8 %49, -128, !dbg !1001
  %51 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1002
  store i8 %50, i8* %51, align 1, !dbg !1003, !tbaa !51
  br label %86, !dbg !1004

; <label>:52:                                     ; preds = %40
  %53 = icmp ult i64 %28, 268435455, !dbg !1005
  br i1 %53, label %54, label %68, !dbg !1006

; <label>:54:                                     ; preds = %52
  %55 = lshr i64 %28, 21, !dbg !1007
  %56 = trunc i64 %55 to i8, !dbg !1008
  store i8 %56, i8* %11, align 1, !dbg !1009, !tbaa !51
  %57 = lshr i64 %28, 14, !dbg !1010
  %58 = trunc i64 %57 to i8, !dbg !1011
  %59 = or i8 %58, -128, !dbg !1011
  %60 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1012
  store i8 %59, i8* %60, align 1, !dbg !1013, !tbaa !51
  %61 = lshr i64 %28, 7, !dbg !1014
  %62 = trunc i64 %61 to i8, !dbg !1015
  %63 = or i8 %62, -128, !dbg !1015
  %64 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1016
  store i8 %63, i8* %64, align 1, !dbg !1017, !tbaa !51
  %65 = trunc i64 %28 to i8, !dbg !1018
  %66 = or i8 %65, -128, !dbg !1018
  %67 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1019
  store i8 %66, i8* %67, align 1, !dbg !1020, !tbaa !51
  br label %86, !dbg !1021

; <label>:68:                                     ; preds = %52
  %69 = lshr i64 %28, 28, !dbg !1022
  %70 = trunc i64 %69 to i8, !dbg !1023
  store i8 %70, i8* %11, align 1, !dbg !1024, !tbaa !51
  %71 = lshr i64 %28, 21, !dbg !1025
  %72 = trunc i64 %71 to i8, !dbg !1026
  %73 = or i8 %72, -128, !dbg !1026
  %74 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1027
  store i8 %73, i8* %74, align 1, !dbg !1028, !tbaa !51
  %75 = lshr i64 %28, 14, !dbg !1029
  %76 = trunc i64 %75 to i8, !dbg !1030
  %77 = or i8 %76, -128, !dbg !1030
  %78 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1031
  store i8 %77, i8* %78, align 1, !dbg !1032, !tbaa !51
  %79 = lshr i64 %28, 7, !dbg !1033
  %80 = trunc i64 %79 to i8, !dbg !1034
  %81 = or i8 %80, -128, !dbg !1034
  %82 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1035
  store i8 %81, i8* %82, align 1, !dbg !1036, !tbaa !51
  %83 = trunc i64 %28 to i8, !dbg !1037
  %84 = or i8 %83, -128, !dbg !1037
  %85 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4, !dbg !1038
  store i8 %84, i8* %85, align 1, !dbg !1039, !tbaa !51
  br label %86, !dbg !1040

; <label>:86:                                     ; preds = %30, %34, %42, %54, %68
  %87 = phi i64 [ 1, %30 ], [ 2, %34 ], [ 3, %42 ], [ 4, %54 ], [ 5, %68 ], !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  br label %88, !dbg !1043

; <label>:88:                                     ; preds = %25, %86
  %89 = phi i64 [ %28, %86 ], [ 0, %25 ]
  %90 = phi i32 [ %27, %86 ], [ -1, %25 ]
  %91 = phi i64 [ %87, %86 ], [ 0, %25 ], !dbg !1043
  %92 = load i8, i8* %0, align 1, !dbg !1045, !tbaa !51
  %93 = zext i8 %92 to i64, !dbg !1045
  %94 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1045
  %95 = load i8, i8* %94, align 1, !dbg !1045, !tbaa !51
  %96 = zext i8 %95 to i64, !dbg !1045
  %97 = shl nuw nsw i64 %96, 8, !dbg !1045
  %98 = or i64 %97, %93, !dbg !1045
  %99 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1045
  %100 = load i8, i8* %99, align 1, !dbg !1045, !tbaa !51
  %101 = zext i8 %100 to i64, !dbg !1045
  %102 = shl nuw nsw i64 %101, 16, !dbg !1045
  %103 = or i64 %98, %102, !dbg !1045
  %104 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1045
  %105 = load i8, i8* %104, align 1, !dbg !1045, !tbaa !51
  %106 = zext i8 %105 to i64, !dbg !1045
  %107 = shl nuw nsw i64 %106, 24, !dbg !1045
  %108 = or i64 %103, %107, !dbg !1045
  %109 = icmp eq i32 %19, 2, !dbg !1048
  br i1 %109, label %110, label %182, !dbg !1050

; <label>:110:                                    ; preds = %88
  %111 = load i8, i8* %20, align 1, !dbg !1054, !tbaa !51
  %112 = zext i8 %111 to i32, !dbg !1054
  %113 = icmp sgt i8 %111, -1, !dbg !1054
  br i1 %113, label %162, label %114, !dbg !1055

; <label>:114:                                    ; preds = %110
  %115 = and i32 %112, 192, !dbg !1056
  %116 = icmp eq i32 %115, 128, !dbg !1056
  br i1 %116, label %117, label %121, !dbg !1057

; <label>:117:                                    ; preds = %114
  %118 = and i32 %112, 63, !dbg !1058
  %119 = add nuw nsw i32 %118, 1, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %120 = zext i32 %119 to i64, !dbg !1061
  br label %177, !dbg !1065

; <label>:121:                                    ; preds = %114
  %122 = and i32 %112, 224, !dbg !1066
  %123 = icmp eq i32 %122, 192, !dbg !1066
  br i1 %123, label %162, label %124, !dbg !1067

; <label>:124:                                    ; preds = %121
  %125 = add i8 %111, 15, !dbg !1068
  %126 = icmp ult i8 %125, 4, !dbg !1068
  br i1 %126, label %158, label %127, !dbg !1068

; <label>:127:                                    ; preds = %124
  %128 = and i32 %112, 240, !dbg !1069
  %129 = icmp eq i32 %128, 224, !dbg !1069
  br i1 %129, label %130, label %137, !dbg !1070

; <label>:130:                                    ; preds = %127
  %131 = shl nuw nsw i32 %112, 8, !dbg !1071
  %132 = and i32 %131, 3840, !dbg !1071
  %133 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1071
  %134 = load i8, i8* %133, align 1, !dbg !1071, !tbaa !51
  %135 = zext i8 %134 to i32, !dbg !1071
  %136 = or i32 %132, %135, !dbg !1071
  br label %164, !dbg !1072

; <label>:137:                                    ; preds = %127
  switch i8 %111, label %157 [
    i8 -16, label %138
    i8 -1, label %162
  ], !dbg !1073

; <label>:138:                                    ; preds = %137
  %139 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !1074
  %140 = load i8, i8* %139, align 1, !dbg !1074, !tbaa !51
  %141 = zext i8 %140 to i32, !dbg !1074
  %142 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !1074
  %143 = load i8, i8* %142, align 1, !dbg !1074, !tbaa !51
  %144 = zext i8 %143 to i32, !dbg !1074
  %145 = shl nuw nsw i32 %144, 8, !dbg !1074
  %146 = or i32 %145, %141, !dbg !1074
  %147 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !1074
  %148 = load i8, i8* %147, align 1, !dbg !1074, !tbaa !51
  %149 = zext i8 %148 to i32, !dbg !1074
  %150 = shl nuw nsw i32 %149, 16, !dbg !1074
  %151 = or i32 %146, %150, !dbg !1074
  %152 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !1074
  %153 = load i8, i8* %152, align 1, !dbg !1074, !tbaa !51
  %154 = zext i8 %153 to i32, !dbg !1074
  %155 = shl nuw i32 %154, 24, !dbg !1074
  %156 = or i32 %151, %155, !dbg !1074
  br label %164, !dbg !1075

; <label>:157:                                    ; preds = %137
  br label %162, !dbg !1076

; <label>:158:                                    ; preds = %124
  %159 = sext i8 %125 to i64, !dbg !1068
  %160 = getelementptr inbounds [4 x i64], [4 x i64]* @switch.table.lpInsert, i64 0, i64 %159, !dbg !1068
  %161 = load i64, i64* %160, align 8, !dbg !1068
  br label %162, !dbg !1068

; <label>:162:                                    ; preds = %158, %157, %110, %121, %137
  %163 = phi i64 [ 1, %137 ], [ 2, %121 ], [ 1, %110 ], [ 0, %157 ], [ %161, %158 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  br label %177, !dbg !1065

; <label>:164:                                    ; preds = %130, %138
  %165 = phi i32 [ 2, %130 ], [ 5, %138 ]
  %166 = phi i32 [ %136, %130 ], [ %156, %138 ]
  %167 = add i32 %166, %165, !dbg !1077
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1060
  %168 = zext i32 %167 to i64, !dbg !1061
  %169 = icmp ult i32 %167, 128, !dbg !1078
  br i1 %169, label %177, label %170, !dbg !1065

; <label>:170:                                    ; preds = %164
  %171 = icmp ult i32 %167, 16383, !dbg !1079
  br i1 %171, label %177, label %172, !dbg !1080

; <label>:172:                                    ; preds = %170
  %173 = icmp ult i32 %167, 2097151, !dbg !1081
  br i1 %173, label %177, label %174, !dbg !1082

; <label>:174:                                    ; preds = %172
  %175 = icmp ult i32 %167, 268435455, !dbg !1083
  %176 = select i1 %175, i64 4, i64 5, !dbg !1084
  br label %177, !dbg !1084

; <label>:177:                                    ; preds = %117, %174, %172, %170, %164, %162
  %178 = phi i64 [ %163, %162 ], [ %168, %164 ], [ %168, %170 ], [ %168, %172 ], [ %168, %174 ], [ %120, %117 ]
  %179 = phi i64 [ 1, %162 ], [ 1, %164 ], [ 2, %170 ], [ 3, %172 ], [ %176, %174 ], [ 1, %117 ], !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  %180 = add i64 %179, %178, !dbg !1087
  %181 = and i64 %180, 4294967295, !dbg !1088
  br label %182, !dbg !1088

; <label>:182:                                    ; preds = %177, %88
  %183 = phi i64 [ %181, %177 ], [ 0, %88 ]
  %184 = add i64 %89, %91, !dbg !1089
  %185 = add i64 %184, %108, !dbg !1090
  %186 = sub i64 %185, %183, !dbg !1091
  %187 = icmp ugt i64 %186, 4294967295, !dbg !1093
  br i1 %187, label %304, label %188, !dbg !1095

; <label>:188:                                    ; preds = %182
  %189 = icmp ugt i64 %186, %108, !dbg !1097
  br i1 %189, label %190, label %195, !dbg !1099

; <label>:190:                                    ; preds = %188
  %191 = call i8* @zrealloc(i8* nonnull %0, i64 %186) #4, !dbg !1100
  %192 = icmp eq i8* %191, null, !dbg !1103
  br i1 %192, label %304, label %193, !dbg !1104

; <label>:193:                                    ; preds = %190
  %194 = getelementptr inbounds i8, i8* %191, i64 %23, !dbg !1105
  br label %195, !dbg !1106

; <label>:195:                                    ; preds = %193, %188
  %196 = phi i8* [ %194, %193 ], [ %20, %188 ], !dbg !1107
  %197 = phi i8* [ %191, %193 ], [ %0, %188 ]
  %198 = icmp eq i32 %19, 0, !dbg !1108
  br i1 %198, label %199, label %204, !dbg !1109

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i8, i8* %196, i64 %89, !dbg !1110
  %201 = getelementptr inbounds i8, i8* %200, i64 %91, !dbg !1112
  %202 = sub i64 %108, %23, !dbg !1113
  %203 = call i8* @memmove(i8* %201, i8* %196, i64 %202) #4, !dbg !1114
  br label %210, !dbg !1115

; <label>:204:                                    ; preds = %195
  %205 = getelementptr inbounds i8, i8* %196, i64 %183, !dbg !1116
  %206 = getelementptr inbounds i8, i8* %196, i64 %184, !dbg !1117
  %207 = sub i64 %108, %23, !dbg !1118
  %208 = sub i64 %207, %183, !dbg !1119
  %209 = call i8* @memmove(i8* %206, i8* %205, i64 %208) #4, !dbg !1120
  br label %210

; <label>:210:                                    ; preds = %204, %199
  %211 = icmp ult i64 %186, %108, !dbg !1121
  br i1 %211, label %212, label %217, !dbg !1123

; <label>:212:                                    ; preds = %210
  %213 = call i8* @zrealloc(i8* nonnull %197, i64 %186) #4, !dbg !1124
  %214 = icmp eq i8* %213, null, !dbg !1127
  br i1 %214, label %304, label %215, !dbg !1128

; <label>:215:                                    ; preds = %212
  %216 = getelementptr inbounds i8, i8* %213, i64 %23, !dbg !1129
  br label %217, !dbg !1130

; <label>:217:                                    ; preds = %215, %210
  %218 = phi i8* [ %216, %215 ], [ %196, %210 ], !dbg !1131
  %219 = phi i8* [ %213, %215 ], [ %197, %210 ], !dbg !1132
  %220 = icmp eq i8** %5, null, !dbg !1133
  br i1 %220, label %226, label %221, !dbg !1135

; <label>:221:                                    ; preds = %217
  store i8* %218, i8** %5, align 8, !dbg !1136, !tbaa !1138
  br i1 %24, label %227, label %222, !dbg !1140

; <label>:222:                                    ; preds = %221
  %223 = load i8, i8* %218, align 1, !dbg !1142, !tbaa !51
  %224 = icmp eq i8 %223, -1, !dbg !1143
  br i1 %224, label %225, label %269, !dbg !1144

; <label>:225:                                    ; preds = %222
  store i8* null, i8** %5, align 8, !dbg !1145, !tbaa !1138
  br label %269, !dbg !1146

; <label>:226:                                    ; preds = %217
  br i1 %24, label %227, label %269, !dbg !1147

; <label>:227:                                    ; preds = %221, %226
  %228 = icmp eq i32 %90, 0, !dbg !1148
  br i1 %228, label %229, label %231, !dbg !1152

; <label>:229:                                    ; preds = %227
  %230 = call i8* @memcpy(i8* %218, i8* nonnull %10, i64 %89) #4, !dbg !1153
  br label %266, !dbg !1155

; <label>:231:                                    ; preds = %227
  %232 = icmp ult i32 %2, 64, !dbg !1161
  br i1 %232, label %233, label %239, !dbg !1162

; <label>:233:                                    ; preds = %231
  %234 = trunc i32 %2 to i8, !dbg !1163
  %235 = or i8 %234, -128, !dbg !1163
  store i8 %235, i8* %218, align 1, !dbg !1164, !tbaa !51
  %236 = getelementptr inbounds i8, i8* %218, i64 1, !dbg !1165
  %237 = zext i32 %2 to i64, !dbg !1166
  %238 = call i8* @memcpy(i8* nonnull %236, i8* nonnull %1, i64 %237) #4, !dbg !1167
  br label %265, !dbg !1168

; <label>:239:                                    ; preds = %231
  %240 = icmp ult i32 %2, 4096, !dbg !1169
  br i1 %240, label %241, label %250, !dbg !1170

; <label>:241:                                    ; preds = %239
  %242 = lshr i32 %2, 8, !dbg !1171
  %243 = trunc i32 %242 to i8, !dbg !1172
  %244 = or i8 %243, -32, !dbg !1172
  store i8 %244, i8* %218, align 1, !dbg !1173, !tbaa !51
  %245 = trunc i32 %2 to i8, !dbg !1174
  %246 = getelementptr inbounds i8, i8* %218, i64 1, !dbg !1175
  store i8 %245, i8* %246, align 1, !dbg !1176, !tbaa !51
  %247 = getelementptr inbounds i8, i8* %218, i64 2, !dbg !1177
  %248 = zext i32 %2 to i64, !dbg !1178
  %249 = call i8* @memcpy(i8* nonnull %247, i8* nonnull %1, i64 %248) #4, !dbg !1179
  br label %265, !dbg !1180

; <label>:250:                                    ; preds = %239
  store i8 -16, i8* %218, align 1, !dbg !1181, !tbaa !51
  %251 = trunc i32 %2 to i8, !dbg !1182
  %252 = getelementptr inbounds i8, i8* %218, i64 1, !dbg !1183
  store i8 %251, i8* %252, align 1, !dbg !1184, !tbaa !51
  %253 = lshr i32 %2, 8, !dbg !1185
  %254 = trunc i32 %253 to i8, !dbg !1186
  %255 = getelementptr inbounds i8, i8* %218, i64 2, !dbg !1187
  store i8 %254, i8* %255, align 1, !dbg !1188, !tbaa !51
  %256 = lshr i32 %2, 16, !dbg !1189
  %257 = trunc i32 %256 to i8, !dbg !1190
  %258 = getelementptr inbounds i8, i8* %218, i64 3, !dbg !1191
  store i8 %257, i8* %258, align 1, !dbg !1192, !tbaa !51
  %259 = lshr i32 %2, 24, !dbg !1193
  %260 = trunc i32 %259 to i8, !dbg !1194
  %261 = getelementptr inbounds i8, i8* %218, i64 4, !dbg !1195
  store i8 %260, i8* %261, align 1, !dbg !1196, !tbaa !51
  %262 = getelementptr inbounds i8, i8* %218, i64 5, !dbg !1197
  %263 = zext i32 %2 to i64, !dbg !1198
  %264 = call i8* @memcpy(i8* nonnull %262, i8* nonnull %1, i64 %263) #4, !dbg !1199
  br label %265

; <label>:265:                                    ; preds = %233, %241, %250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br label %266

; <label>:266:                                    ; preds = %265, %229
  %267 = getelementptr inbounds i8, i8* %218, i64 %89, !dbg !1201
  %268 = call i8* @memcpy(i8* %267, i8* nonnull %11, i64 %91) #4, !dbg !1202
  br label %269, !dbg !1203

; <label>:269:                                    ; preds = %225, %222, %266, %226
  %270 = icmp ne i32 %19, 2, !dbg !1204
  %271 = or i1 %13, %270, !dbg !1205
  br i1 %271, label %272, label %293, !dbg !1205

; <label>:272:                                    ; preds = %269
  %273 = getelementptr inbounds i8, i8* %219, i64 4, !dbg !1206
  %274 = load i8, i8* %273, align 1, !dbg !1206, !tbaa !51
  %275 = zext i8 %274 to i32, !dbg !1206
  %276 = getelementptr inbounds i8, i8* %219, i64 5, !dbg !1206
  %277 = load i8, i8* %276, align 1, !dbg !1206, !tbaa !51
  %278 = zext i8 %277 to i32, !dbg !1206
  %279 = shl nuw nsw i32 %278, 8, !dbg !1206
  %280 = or i32 %279, %275, !dbg !1206
  %281 = icmp eq i32 %280, 65535, !dbg !1208
  br i1 %281, label %293, label %282, !dbg !1210

; <label>:282:                                    ; preds = %272
  br i1 %24, label %283, label %288, !dbg !1211

; <label>:283:                                    ; preds = %282
  %284 = add nuw nsw i32 %280, 1, !dbg !1213
  %285 = trunc i32 %284 to i8, !dbg !1213
  store i8 %285, i8* %273, align 1, !dbg !1213, !tbaa !51
  %286 = lshr i32 %284, 8, !dbg !1213
  %287 = trunc i32 %286 to i8, !dbg !1213
  store i8 %287, i8* %276, align 1, !dbg !1213, !tbaa !51
  br label %293, !dbg !1213

; <label>:288:                                    ; preds = %282
  %289 = add nsw i32 %280, -1, !dbg !1216
  %290 = trunc i32 %289 to i8, !dbg !1216
  store i8 %290, i8* %273, align 1, !dbg !1216, !tbaa !51
  %291 = lshr i32 %289, 8, !dbg !1216
  %292 = trunc i32 %291 to i8, !dbg !1216
  store i8 %292, i8* %276, align 1, !dbg !1216, !tbaa !51
  br label %293

; <label>:293:                                    ; preds = %288, %283, %272, %269
  %294 = trunc i64 %186 to i8, !dbg !1218
  store i8 %294, i8* %219, align 1, !dbg !1218, !tbaa !51
  %295 = lshr i64 %186, 8, !dbg !1218
  %296 = trunc i64 %295 to i8, !dbg !1218
  %297 = getelementptr inbounds i8, i8* %219, i64 1, !dbg !1218
  store i8 %296, i8* %297, align 1, !dbg !1218, !tbaa !51
  %298 = lshr i64 %186, 16, !dbg !1218
  %299 = trunc i64 %298 to i8, !dbg !1218
  %300 = getelementptr inbounds i8, i8* %219, i64 2, !dbg !1218
  store i8 %299, i8* %300, align 1, !dbg !1218, !tbaa !51
  %301 = lshr i64 %186, 24, !dbg !1218
  %302 = trunc i64 %301 to i8, !dbg !1218
  %303 = getelementptr inbounds i8, i8* %219, i64 3, !dbg !1218
  store i8 %302, i8* %303, align 1, !dbg !1218, !tbaa !51
  br label %304, !dbg !1220

; <label>:304:                                    ; preds = %293, %190, %212, %182
  %305 = phi i8* [ null, %182 ], [ %219, %293 ], [ null, %190 ], [ null, %212 ], !dbg !1132
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #6, !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %11) #6, !dbg !1221
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %10) #6, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  ret i8* %305, !dbg !1221
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpAppend(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1222 {
  %4 = load i8, i8* %0, align 1, !dbg !1234, !tbaa !51
  %5 = zext i8 %4 to i64, !dbg !1234
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1234
  %7 = load i8, i8* %6, align 1, !dbg !1234, !tbaa !51
  %8 = zext i8 %7 to i64, !dbg !1234
  %9 = shl nuw nsw i64 %8, 8, !dbg !1234
  %10 = or i64 %9, %5, !dbg !1234
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1234
  %12 = load i8, i8* %11, align 1, !dbg !1234, !tbaa !51
  %13 = zext i8 %12 to i64, !dbg !1234
  %14 = shl nuw nsw i64 %13, 16, !dbg !1234
  %15 = or i64 %10, %14, !dbg !1234
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1234
  %17 = load i8, i8* %16, align 1, !dbg !1234, !tbaa !51
  %18 = zext i8 %17 to i64, !dbg !1234
  %19 = shl nuw nsw i64 %18, 24, !dbg !1234
  %20 = or i64 %15, %19, !dbg !1234
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1236
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1237
  %23 = tail call i8* @lpInsert(i8* %0, i8* %1, i32 %2, i8* nonnull %22, i32 0, i8** null) #5, !dbg !1239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1240
  ret i8* %23, !dbg !1240
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpDelete(i8*, i8*, i8**) local_unnamed_addr #0 !dbg !1241 {
  %4 = tail call i8* @lpInsert(i8* %0, i8* null, i32 0, i8* %1, i32 2, i8** %2) #5, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  ret i8* %4, !dbg !1252
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lpBytes(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1253 {
  %2 = load i8, i8* %0, align 1, !dbg !1257, !tbaa !51
  %3 = zext i8 %2 to i32, !dbg !1257
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1257
  %5 = load i8, i8* %4, align 1, !dbg !1257, !tbaa !51
  %6 = zext i8 %5 to i32, !dbg !1257
  %7 = shl nuw nsw i32 %6, 8, !dbg !1257
  %8 = or i32 %7, %3, !dbg !1257
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1257
  %10 = load i8, i8* %9, align 1, !dbg !1257, !tbaa !51
  %11 = zext i8 %10 to i32, !dbg !1257
  %12 = shl nuw nsw i32 %11, 16, !dbg !1257
  %13 = or i32 %8, %12, !dbg !1257
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1257
  %15 = load i8, i8* %14, align 1, !dbg !1257, !tbaa !51
  %16 = zext i8 %15 to i32, !dbg !1257
  %17 = shl nuw i32 %16, 24, !dbg !1257
  %18 = or i32 %13, %17, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1258
  ret i32 %18, !dbg !1258
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpSeek(i8*, i64) local_unnamed_addr #0 !dbg !1259 {
  %3 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1275
  %4 = load i8, i8* %3, align 1, !dbg !1275, !tbaa !51
  %5 = zext i8 %4 to i32, !dbg !1275
  %6 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1275
  %7 = load i8, i8* %6, align 1, !dbg !1275, !tbaa !51
  %8 = zext i8 %7 to i32, !dbg !1275
  %9 = shl nuw nsw i32 %8, 8, !dbg !1275
  %10 = or i32 %9, %5, !dbg !1275
  %11 = icmp eq i32 %10, 65535, !dbg !1277
  %12 = icmp slt i64 %1, 0, !dbg !1279
  br i1 %11, label %24, label %13, !dbg !1282

; <label>:13:                                     ; preds = %2
  %14 = zext i32 %10 to i64, !dbg !1283
  %15 = select i1 %12, i64 %14, i64 0, !dbg !1286
  %16 = add nsw i64 %15, %1, !dbg !1286
  %17 = icmp ult i64 %16, %14, !dbg !1287
  br i1 %17, label %18, label %121, !dbg !1287

; <label>:18:                                     ; preds = %13
  %19 = lshr i32 %10, 1, !dbg !1288
  %20 = zext i32 %19 to i64, !dbg !1290
  %21 = icmp sgt i64 %16, %20, !dbg !1291
  %22 = select i1 %21, i64 %14, i64 0, !dbg !1292
  %23 = sub nsw i64 %16, %22, !dbg !1292
  br i1 %21, label %45, label %25, !dbg !1293

; <label>:24:                                     ; preds = %2
  br i1 %12, label %45, label %25, !dbg !1293

; <label>:25:                                     ; preds = %24, %18
  %26 = phi i64 [ %23, %18 ], [ %1, %24 ]
  %27 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1296
  %28 = load i8, i8* %27, align 1, !dbg !1297, !tbaa !51
  %29 = icmp eq i8 %28, -1, !dbg !1298
  %30 = select i1 %29, i8* null, i8* %27, !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  %31 = icmp sgt i64 %26, 0, !dbg !1302
  %32 = icmp ne i8* %30, null, !dbg !1303
  %33 = and i1 %31, %32, !dbg !1303
  br i1 %33, label %34, label %121, !dbg !1304

; <label>:34:                                     ; preds = %25, %34
  %35 = phi i8* [ %40, %34 ], [ %30, %25 ]
  %36 = phi i64 [ %41, %34 ], [ %26, %25 ]
  %37 = tail call i8* @lpSkip(i8* nonnull %35) #4, !dbg !1309
  %38 = load i8, i8* %37, align 1, !dbg !1310, !tbaa !51
  %39 = icmp eq i8 %38, -1, !dbg !1311
  %40 = select i1 %39, i8* null, i8* %37, !dbg !1312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  %41 = add nsw i64 %36, -1, !dbg !1314
  %42 = icmp sgt i64 %36, 1, !dbg !1302
  %43 = icmp ne i8* %40, null, !dbg !1303
  %44 = and i1 %42, %43, !dbg !1303
  br i1 %44, label %34, label %121, !dbg !1304, !llvm.loop !1315

; <label>:45:                                     ; preds = %24, %18
  %46 = phi i64 [ %23, %18 ], [ %1, %24 ]
  %47 = tail call i8* @lpLast(i8* nonnull %0) #5, !dbg !1317
  %48 = icmp slt i64 %46, -1, !dbg !1319
  %49 = icmp ne i8* %47, null, !dbg !1320
  %50 = and i1 %48, %49, !dbg !1320
  br i1 %50, label %51, label %121, !dbg !1321

; <label>:51:                                     ; preds = %45
  %52 = ptrtoint i8* %0 to i64
  br label %53, !dbg !1321

; <label>:53:                                     ; preds = %51, %111
  %54 = phi i8* [ %47, %51 ], [ %116, %111 ]
  %55 = phi i64 [ %46, %51 ], [ %117, %111 ]
  %56 = ptrtoint i8* %54 to i64, !dbg !1326
  %57 = sub i64 %56, %52, !dbg !1326
  %58 = icmp eq i64 %57, 6, !dbg !1327
  br i1 %58, label %59, label %60, !dbg !1328

; <label>:59:                                     ; preds = %53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br label %121, !dbg !1321

; <label>:60:                                     ; preds = %53
  %61 = getelementptr inbounds i8, i8* %54, i64 -1, !dbg !1330
  %62 = load i8, i8* %61, align 1, !dbg !1335, !tbaa !51
  %63 = and i8 %62, 127, !dbg !1336
  %64 = zext i8 %63 to i64, !dbg !1337
  %65 = icmp slt i8 %62, 0, !dbg !1338
  br i1 %65, label %67, label %66, !dbg !1339

; <label>:66:                                     ; preds = %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %111, !dbg !1343

; <label>:67:                                     ; preds = %60
  %68 = getelementptr inbounds i8, i8* %54, i64 -2, !dbg !1344
  %69 = load i8, i8* %68, align 1, !dbg !1335, !tbaa !51
  %70 = and i8 %69, 127, !dbg !1336
  %71 = zext i8 %70 to i64, !dbg !1337
  %72 = shl nuw nsw i64 %71, 7, !dbg !1345
  %73 = or i64 %72, %64, !dbg !1346
  %74 = icmp slt i8 %69, 0, !dbg !1338
  br i1 %74, label %75, label %100, !dbg !1339

; <label>:75:                                     ; preds = %67
  %76 = getelementptr inbounds i8, i8* %54, i64 -3, !dbg !1344
  %77 = load i8, i8* %76, align 1, !dbg !1335, !tbaa !51
  %78 = and i8 %77, 127, !dbg !1336
  %79 = zext i8 %78 to i64, !dbg !1337
  %80 = shl nuw nsw i64 %79, 14, !dbg !1345
  %81 = or i64 %80, %73, !dbg !1346
  %82 = icmp slt i8 %77, 0, !dbg !1338
  br i1 %82, label %83, label %100, !dbg !1339

; <label>:83:                                     ; preds = %75
  %84 = getelementptr inbounds i8, i8* %54, i64 -4, !dbg !1344
  %85 = load i8, i8* %84, align 1, !dbg !1335, !tbaa !51
  %86 = and i8 %85, 127, !dbg !1336
  %87 = zext i8 %86 to i64, !dbg !1337
  %88 = shl nuw nsw i64 %87, 21, !dbg !1345
  %89 = or i64 %88, %81, !dbg !1346
  %90 = icmp slt i8 %85, 0, !dbg !1338
  br i1 %90, label %91, label %100, !dbg !1339

; <label>:91:                                     ; preds = %83
  %92 = getelementptr inbounds i8, i8* %54, i64 -5, !dbg !1344
  %93 = load i8, i8* %92, align 1, !dbg !1335, !tbaa !51
  %94 = and i8 %93, 127, !dbg !1336
  %95 = zext i8 %94 to i64, !dbg !1337
  %96 = shl nuw nsw i64 %95, 28, !dbg !1345
  %97 = or i64 %96, %89, !dbg !1346
  %98 = icmp slt i8 %93, 0, !dbg !1338
  br i1 %98, label %99, label %100

; <label>:99:                                     ; preds = %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %109, !dbg !1349

; <label>:100:                                    ; preds = %91, %83, %75, %67
  %101 = phi i64 [ %73, %67 ], [ %81, %75 ], [ %89, %83 ], [ %97, %91 ], !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %102 = icmp ult i64 %101, 128, !dbg !1351
  br i1 %102, label %111, label %103, !dbg !1343

; <label>:103:                                    ; preds = %100
  %104 = icmp ult i64 %101, 16383, !dbg !1352
  br i1 %104, label %111, label %105, !dbg !1353

; <label>:105:                                    ; preds = %103
  %106 = icmp ult i64 %101, 2097151, !dbg !1354
  br i1 %106, label %111, label %107, !dbg !1355

; <label>:107:                                    ; preds = %105
  %108 = icmp ult i64 %101, 268435455, !dbg !1356
  br i1 %108, label %111, label %109, !dbg !1349

; <label>:109:                                    ; preds = %107, %99
  %110 = phi i64 [ -1, %99 ], [ %101, %107 ]
  br label %111

; <label>:111:                                    ; preds = %66, %100, %103, %105, %107, %109
  %112 = phi i64 [ %110, %109 ], [ %64, %66 ], [ %101, %100 ], [ %101, %103 ], [ %101, %105 ], [ %101, %107 ]
  %113 = phi i64 [ 5, %109 ], [ 1, %66 ], [ 1, %100 ], [ 2, %103 ], [ 3, %105 ], [ 4, %107 ], !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  %114 = add i64 %112, %113, !dbg !1359
  %115 = sub i64 0, %114, !dbg !1360
  %116 = getelementptr inbounds i8, i8* %54, i64 %115, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %117 = add nuw nsw i64 %55, 1, !dbg !1362
  %118 = icmp slt i64 %55, -2, !dbg !1319
  %119 = icmp ne i8* %116, null, !dbg !1320
  %120 = and i1 %118, %119, !dbg !1320
  br i1 %120, label %53, label %121, !dbg !1321, !llvm.loop !1363

; <label>:121:                                    ; preds = %34, %111, %59, %25, %45, %13
  %122 = phi i8* [ null, %13 ], [ %47, %45 ], [ %30, %25 ], [ null, %59 ], [ %116, %111 ], [ %40, %34 ], !dbg !1365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  ret i8* %122, !dbg !1366
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

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
!222 = !DILocation(line: 202, column: 1, scope: !25, inlinedAt: !179)
!223 = !DILocation(line: 232, column: 13, scope: !154)
!224 = !DILocation(line: 234, column: 20, scope: !170)
!225 = !DILocation(line: 236, column: 25, scope: !226)
!226 = distinct !DILexicalBlock(scope: !170, file: !1, line: 234, column: 33)
!227 = !DILocation(line: 236, column: 23, scope: !226)
!228 = !DILocation(line: 238, column: 9, scope: !226)
!229 = !DILocation(line: 238, column: 31, scope: !169)
!230 = !DILocation(line: 240, column: 19, scope: !231)
!231 = distinct !DILexicalBlock(scope: !232, file: !1, line: 240, column: 17)
!232 = distinct !DILexicalBlock(scope: !169, file: !1, line: 238, column: 45)
!233 = !DILocation(line: 240, column: 44, scope: !231)
!234 = !DILocation(line: 240, column: 17, scope: !232)
!235 = !DILocation(line: 241, column: 27, scope: !232)
!236 = !DILocation(line: 241, column: 25, scope: !232)
!237 = !DILocation(line: 241, column: 23, scope: !232)
!238 = !DILocation(line: 242, column: 25, scope: !232)
!239 = !DILocation(line: 242, column: 13, scope: !232)
!240 = !DILocation(line: 242, column: 23, scope: !232)
!241 = !DILocation(line: 244, column: 9, scope: !232)
!242 = !DILocation(line: 244, column: 32, scope: !168)
!243 = !DILocation(line: 246, column: 19, scope: !244)
!244 = distinct !DILexicalBlock(scope: !245, file: !1, line: 246, column: 17)
!245 = distinct !DILexicalBlock(scope: !168, file: !1, line: 244, column: 47)
!246 = !DILocation(line: 246, column: 44, scope: !244)
!247 = !DILocation(line: 246, column: 17, scope: !245)
!248 = !DILocation(line: 247, column: 23, scope: !245)
!249 = !DILocation(line: 248, column: 25, scope: !245)
!250 = !DILocation(line: 248, column: 13, scope: !245)
!251 = !DILocation(line: 248, column: 23, scope: !245)
!252 = !DILocation(line: 249, column: 26, scope: !245)
!253 = !DILocation(line: 249, column: 25, scope: !245)
!254 = !DILocation(line: 249, column: 13, scope: !245)
!255 = !DILocation(line: 249, column: 23, scope: !245)
!256 = !DILocation(line: 251, column: 9, scope: !245)
!257 = !DILocation(line: 251, column: 34, scope: !167)
!258 = !DILocation(line: 253, column: 19, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 253, column: 17)
!260 = distinct !DILexicalBlock(scope: !167, file: !1, line: 251, column: 51)
!261 = !DILocation(line: 253, column: 44, scope: !259)
!262 = !DILocation(line: 253, column: 17, scope: !260)
!263 = !DILocation(line: 254, column: 23, scope: !260)
!264 = !DILocation(line: 255, column: 25, scope: !260)
!265 = !DILocation(line: 255, column: 13, scope: !260)
!266 = !DILocation(line: 255, column: 23, scope: !260)
!267 = !DILocation(line: 256, column: 27, scope: !260)
!268 = !DILocation(line: 256, column: 25, scope: !260)
!269 = !DILocation(line: 256, column: 13, scope: !260)
!270 = !DILocation(line: 256, column: 23, scope: !260)
!271 = !DILocation(line: 257, column: 26, scope: !260)
!272 = !DILocation(line: 257, column: 25, scope: !260)
!273 = !DILocation(line: 257, column: 13, scope: !260)
!274 = !DILocation(line: 257, column: 23, scope: !260)
!275 = !DILocation(line: 259, column: 9, scope: !260)
!276 = !DILocation(line: 259, column: 37, scope: !166)
!277 = !DILocation(line: 261, column: 19, scope: !278)
!278 = distinct !DILexicalBlock(scope: !279, file: !1, line: 261, column: 17)
!279 = distinct !DILexicalBlock(scope: !166, file: !1, line: 259, column: 57)
!280 = !DILocation(line: 261, column: 44, scope: !278)
!281 = !DILocation(line: 261, column: 17, scope: !279)
!282 = !DILocation(line: 262, column: 23, scope: !279)
!283 = !DILocation(line: 263, column: 25, scope: !279)
!284 = !DILocation(line: 263, column: 13, scope: !279)
!285 = !DILocation(line: 263, column: 23, scope: !279)
!286 = !DILocation(line: 264, column: 27, scope: !279)
!287 = !DILocation(line: 264, column: 25, scope: !279)
!288 = !DILocation(line: 264, column: 13, scope: !279)
!289 = !DILocation(line: 264, column: 23, scope: !279)
!290 = !DILocation(line: 265, column: 27, scope: !279)
!291 = !DILocation(line: 265, column: 25, scope: !279)
!292 = !DILocation(line: 265, column: 13, scope: !279)
!293 = !DILocation(line: 265, column: 23, scope: !279)
!294 = !DILocation(line: 266, column: 26, scope: !279)
!295 = !DILocation(line: 266, column: 25, scope: !279)
!296 = !DILocation(line: 266, column: 13, scope: !279)
!297 = !DILocation(line: 266, column: 23, scope: !279)
!298 = !DILocation(line: 268, column: 9, scope: !279)
!299 = !DILocation(line: 270, column: 22, scope: !165)
!300 = !DILocation(line: 271, column: 23, scope: !165)
!301 = !DILocation(line: 272, column: 25, scope: !165)
!302 = !DILocation(line: 272, column: 13, scope: !165)
!303 = !DILocation(line: 272, column: 23, scope: !165)
!304 = !DILocation(line: 273, column: 28, scope: !165)
!305 = !DILocation(line: 273, column: 25, scope: !165)
!306 = !DILocation(line: 273, column: 13, scope: !165)
!307 = !DILocation(line: 273, column: 23, scope: !165)
!308 = !DILocation(line: 274, column: 28, scope: !165)
!309 = !DILocation(line: 274, column: 25, scope: !165)
!310 = !DILocation(line: 274, column: 13, scope: !165)
!311 = !DILocation(line: 274, column: 23, scope: !165)
!312 = !DILocation(line: 275, column: 28, scope: !165)
!313 = !DILocation(line: 275, column: 25, scope: !165)
!314 = !DILocation(line: 275, column: 13, scope: !165)
!315 = !DILocation(line: 275, column: 23, scope: !165)
!316 = !DILocation(line: 276, column: 28, scope: !165)
!317 = !DILocation(line: 276, column: 25, scope: !165)
!318 = !DILocation(line: 276, column: 13, scope: !165)
!319 = !DILocation(line: 276, column: 23, scope: !165)
!320 = !DILocation(line: 277, column: 28, scope: !165)
!321 = !DILocation(line: 277, column: 25, scope: !165)
!322 = !DILocation(line: 277, column: 13, scope: !165)
!323 = !DILocation(line: 277, column: 23, scope: !165)
!324 = !DILocation(line: 278, column: 28, scope: !165)
!325 = !DILocation(line: 278, column: 25, scope: !165)
!326 = !DILocation(line: 278, column: 13, scope: !165)
!327 = !DILocation(line: 278, column: 23, scope: !165)
!328 = !DILocation(line: 279, column: 27, scope: !165)
!329 = !DILocation(line: 279, column: 25, scope: !165)
!330 = !DILocation(line: 279, column: 13, scope: !165)
!331 = !DILocation(line: 279, column: 23, scope: !165)
!332 = !DILocation(line: 284, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !172, file: !1, line: 283, column: 12)
!334 = !DILocation(line: 284, column: 18, scope: !335)
!335 = distinct !DILexicalBlock(scope: !333, file: !1, line: 284, column: 13)
!336 = !DILocation(line: 284, column: 35, scope: !335)
!337 = !DILocation(line: 284, column: 24, scope: !335)
!338 = !DILocation(line: 285, column: 23, scope: !339)
!339 = distinct !DILexicalBlock(scope: !335, file: !1, line: 285, column: 18)
!340 = !DILocation(line: 285, column: 18, scope: !335)
!341 = !DILocation(line: 285, column: 42, scope: !339)
!342 = !DILocation(line: 285, column: 31, scope: !339)
!343 = !DILocation(line: 286, column: 25, scope: !339)
!344 = !DILocation(line: 0, scope: !333)
!345 = !DILocation(line: 0, scope: !232)
!346 = !DILocation(line: 289, column: 1, scope: !154)
!347 = distinct !DISubprogram(name: "lpEncodeBacklen", scope: !1, file: !1, line: 296, type: !348, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !350)
!348 = !DISubroutineType(types: !349)
!349 = !{!9, !129, !5}
!350 = !{!351, !352}
!351 = !DILocalVariable(name: "buf", arg: 1, scope: !347, file: !1, line: 296, type: !129)
!352 = !DILocalVariable(name: "l", arg: 2, scope: !347, file: !1, line: 296, type: !5)
!353 = !DILocation(line: 296, column: 46, scope: !347)
!354 = !DILocation(line: 296, column: 60, scope: !347)
!355 = !DILocation(line: 297, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !347, file: !1, line: 297, column: 9)
!357 = !DILocation(line: 297, column: 9, scope: !347)
!358 = !DILocation(line: 298, column: 13, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !1, line: 298, column: 13)
!360 = distinct !DILexicalBlock(scope: !356, file: !1, line: 297, column: 19)
!361 = !DILocation(line: 298, column: 13, scope: !360)
!362 = !DILocation(line: 298, column: 27, scope: !359)
!363 = !DILocation(line: 298, column: 25, scope: !359)
!364 = !DILocation(line: 298, column: 18, scope: !359)
!365 = !DILocation(line: 300, column: 18, scope: !366)
!366 = distinct !DILexicalBlock(scope: !356, file: !1, line: 300, column: 16)
!367 = !DILocation(line: 300, column: 16, scope: !356)
!368 = !DILocation(line: 301, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !370, file: !1, line: 301, column: 13)
!370 = distinct !DILexicalBlock(scope: !366, file: !1, line: 300, column: 27)
!371 = !DILocation(line: 301, column: 13, scope: !370)
!372 = !DILocation(line: 302, column: 23, scope: !373)
!373 = distinct !DILexicalBlock(scope: !369, file: !1, line: 301, column: 18)
!374 = !DILocation(line: 302, column: 22, scope: !373)
!375 = !DILocation(line: 302, column: 20, scope: !373)
!376 = !DILocation(line: 303, column: 22, scope: !373)
!377 = !DILocation(line: 303, column: 13, scope: !373)
!378 = !DILocation(line: 303, column: 20, scope: !373)
!379 = !DILocation(line: 304, column: 9, scope: !373)
!380 = !DILocation(line: 306, column: 18, scope: !381)
!381 = distinct !DILexicalBlock(scope: !366, file: !1, line: 306, column: 16)
!382 = !DILocation(line: 306, column: 16, scope: !366)
!383 = !DILocation(line: 307, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !385, file: !1, line: 307, column: 13)
!385 = distinct !DILexicalBlock(scope: !381, file: !1, line: 306, column: 29)
!386 = !DILocation(line: 307, column: 13, scope: !385)
!387 = !DILocation(line: 308, column: 23, scope: !388)
!388 = distinct !DILexicalBlock(scope: !384, file: !1, line: 307, column: 18)
!389 = !DILocation(line: 308, column: 22, scope: !388)
!390 = !DILocation(line: 308, column: 20, scope: !388)
!391 = !DILocation(line: 309, column: 25, scope: !388)
!392 = !DILocation(line: 309, column: 22, scope: !388)
!393 = !DILocation(line: 309, column: 13, scope: !388)
!394 = !DILocation(line: 309, column: 20, scope: !388)
!395 = !DILocation(line: 310, column: 22, scope: !388)
!396 = !DILocation(line: 310, column: 13, scope: !388)
!397 = !DILocation(line: 310, column: 20, scope: !388)
!398 = !DILocation(line: 311, column: 9, scope: !388)
!399 = !DILocation(line: 313, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !381, file: !1, line: 313, column: 16)
!401 = !DILocation(line: 0, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !1, line: 322, column: 13)
!403 = distinct !DILexicalBlock(scope: !400, file: !1, line: 321, column: 12)
!404 = !DILocation(line: 313, column: 16, scope: !381)
!405 = !DILocation(line: 314, column: 13, scope: !406)
!406 = distinct !DILexicalBlock(scope: !400, file: !1, line: 313, column: 31)
!407 = !DILocation(line: 315, column: 23, scope: !408)
!408 = distinct !DILexicalBlock(scope: !409, file: !1, line: 314, column: 18)
!409 = distinct !DILexicalBlock(scope: !406, file: !1, line: 314, column: 13)
!410 = !DILocation(line: 315, column: 22, scope: !408)
!411 = !DILocation(line: 315, column: 20, scope: !408)
!412 = !DILocation(line: 316, column: 25, scope: !408)
!413 = !DILocation(line: 316, column: 22, scope: !408)
!414 = !DILocation(line: 316, column: 13, scope: !408)
!415 = !DILocation(line: 316, column: 20, scope: !408)
!416 = !DILocation(line: 317, column: 25, scope: !408)
!417 = !DILocation(line: 317, column: 22, scope: !408)
!418 = !DILocation(line: 317, column: 13, scope: !408)
!419 = !DILocation(line: 317, column: 20, scope: !408)
!420 = !DILocation(line: 318, column: 22, scope: !408)
!421 = !DILocation(line: 318, column: 13, scope: !408)
!422 = !DILocation(line: 318, column: 20, scope: !408)
!423 = !DILocation(line: 319, column: 9, scope: !408)
!424 = !DILocation(line: 322, column: 13, scope: !403)
!425 = !DILocation(line: 323, column: 23, scope: !426)
!426 = distinct !DILexicalBlock(scope: !402, file: !1, line: 322, column: 18)
!427 = !DILocation(line: 323, column: 22, scope: !426)
!428 = !DILocation(line: 323, column: 20, scope: !426)
!429 = !DILocation(line: 324, column: 25, scope: !426)
!430 = !DILocation(line: 324, column: 22, scope: !426)
!431 = !DILocation(line: 324, column: 13, scope: !426)
!432 = !DILocation(line: 324, column: 20, scope: !426)
!433 = !DILocation(line: 325, column: 25, scope: !426)
!434 = !DILocation(line: 325, column: 22, scope: !426)
!435 = !DILocation(line: 325, column: 13, scope: !426)
!436 = !DILocation(line: 325, column: 20, scope: !426)
!437 = !DILocation(line: 326, column: 25, scope: !426)
!438 = !DILocation(line: 326, column: 22, scope: !426)
!439 = !DILocation(line: 326, column: 13, scope: !426)
!440 = !DILocation(line: 326, column: 20, scope: !426)
!441 = !DILocation(line: 327, column: 22, scope: !426)
!442 = !DILocation(line: 327, column: 13, scope: !426)
!443 = !DILocation(line: 327, column: 20, scope: !426)
!444 = !DILocation(line: 328, column: 9, scope: !426)
!445 = !DILocation(line: 0, scope: !403)
!446 = !DILocation(line: 331, column: 1, scope: !347)
!447 = distinct !DISubprogram(name: "lpDecodeBacklen", scope: !1, file: !1, line: 335, type: !448, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !450)
!448 = !DISubroutineType(types: !449)
!449 = !{!5, !129}
!450 = !{!451, !452, !453}
!451 = !DILocalVariable(name: "p", arg: 1, scope: !447, file: !1, line: 335, type: !129)
!452 = !DILocalVariable(name: "val", scope: !447, file: !1, line: 336, type: !5)
!453 = !DILocalVariable(name: "shift", scope: !447, file: !1, line: 337, type: !5)
!454 = !DILocation(line: 335, column: 41, scope: !447)
!455 = !DILocation(line: 336, column: 14, scope: !447)
!456 = !DILocation(line: 337, column: 14, scope: !447)
!457 = !DILocation(line: 339, column: 27, scope: !458)
!458 = distinct !DILexicalBlock(scope: !447, file: !1, line: 338, column: 8)
!459 = !DILocation(line: 339, column: 32, scope: !458)
!460 = !DILocation(line: 339, column: 16, scope: !458)
!461 = !DILocation(line: 340, column: 20, scope: !462)
!462 = distinct !DILexicalBlock(scope: !458, file: !1, line: 340, column: 13)
!463 = !DILocation(line: 340, column: 13, scope: !458)
!464 = !DILocation(line: 342, column: 10, scope: !458)
!465 = !DILocation(line: 339, column: 39, scope: !458)
!466 = !DILocation(line: 339, column: 13, scope: !458)
!467 = !DILocation(line: 0, scope: !447)
!468 = !DILocation(line: 346, column: 1, scope: !447)
!469 = distinct !DISubprogram(name: "lpEncodeString", scope: !1, file: !1, line: 352, type: !470, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !472)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !129, !129, !16}
!472 = !{!473, !474, !475}
!473 = !DILocalVariable(name: "buf", arg: 1, scope: !469, file: !1, line: 352, type: !129)
!474 = !DILocalVariable(name: "s", arg: 2, scope: !469, file: !1, line: 352, type: !129)
!475 = !DILocalVariable(name: "len", arg: 3, scope: !469, file: !1, line: 352, type: !16)
!476 = !DILocation(line: 352, column: 36, scope: !469)
!477 = !DILocation(line: 352, column: 56, scope: !469)
!478 = !DILocation(line: 352, column: 68, scope: !469)
!479 = !DILocation(line: 353, column: 13, scope: !480)
!480 = distinct !DILexicalBlock(scope: !469, file: !1, line: 353, column: 9)
!481 = !DILocation(line: 353, column: 9, scope: !469)
!482 = !DILocation(line: 354, column: 18, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !1, line: 353, column: 19)
!484 = !DILocation(line: 354, column: 16, scope: !483)
!485 = !DILocation(line: 355, column: 19, scope: !483)
!486 = !DILocation(line: 355, column: 24, scope: !483)
!487 = !DILocation(line: 355, column: 9, scope: !483)
!488 = !DILocation(line: 356, column: 5, scope: !483)
!489 = !DILocation(line: 356, column: 20, scope: !490)
!490 = distinct !DILexicalBlock(scope: !480, file: !1, line: 356, column: 16)
!491 = !DILocation(line: 356, column: 16, scope: !480)
!492 = !DILocation(line: 357, column: 23, scope: !493)
!493 = distinct !DILexicalBlock(scope: !490, file: !1, line: 356, column: 28)
!494 = !DILocation(line: 357, column: 18, scope: !493)
!495 = !DILocation(line: 357, column: 16, scope: !493)
!496 = !DILocation(line: 358, column: 18, scope: !493)
!497 = !DILocation(line: 358, column: 9, scope: !493)
!498 = !DILocation(line: 358, column: 16, scope: !493)
!499 = !DILocation(line: 359, column: 19, scope: !493)
!500 = !DILocation(line: 359, column: 24, scope: !493)
!501 = !DILocation(line: 359, column: 9, scope: !493)
!502 = !DILocation(line: 360, column: 5, scope: !493)
!503 = !DILocation(line: 361, column: 16, scope: !504)
!504 = distinct !DILexicalBlock(scope: !490, file: !1, line: 360, column: 12)
!505 = !DILocation(line: 362, column: 18, scope: !504)
!506 = !DILocation(line: 362, column: 9, scope: !504)
!507 = !DILocation(line: 362, column: 16, scope: !504)
!508 = !DILocation(line: 363, column: 23, scope: !504)
!509 = !DILocation(line: 363, column: 18, scope: !504)
!510 = !DILocation(line: 363, column: 9, scope: !504)
!511 = !DILocation(line: 363, column: 16, scope: !504)
!512 = !DILocation(line: 364, column: 23, scope: !504)
!513 = !DILocation(line: 364, column: 18, scope: !504)
!514 = !DILocation(line: 364, column: 9, scope: !504)
!515 = !DILocation(line: 364, column: 16, scope: !504)
!516 = !DILocation(line: 365, column: 23, scope: !504)
!517 = !DILocation(line: 365, column: 18, scope: !504)
!518 = !DILocation(line: 365, column: 9, scope: !504)
!519 = !DILocation(line: 365, column: 16, scope: !504)
!520 = !DILocation(line: 366, column: 19, scope: !504)
!521 = !DILocation(line: 366, column: 24, scope: !504)
!522 = !DILocation(line: 366, column: 9, scope: !504)
!523 = !DILocation(line: 368, column: 1, scope: !469)
!524 = distinct !DISubprogram(name: "lpCurrentEncodedSize", scope: !1, file: !1, line: 372, type: !525, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !527)
!525 = !DISubroutineType(types: !526)
!526 = !{!16, !129}
!527 = !{!528}
!528 = !DILocalVariable(name: "p", arg: 1, scope: !524, file: !1, line: 372, type: !129)
!529 = !DILocation(line: 372, column: 46, scope: !524)
!530 = !DILocation(line: 373, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !524, file: !1, line: 373, column: 9)
!532 = !DILocation(line: 373, column: 9, scope: !524)
!533 = !DILocation(line: 374, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !524, file: !1, line: 374, column: 9)
!535 = !DILocation(line: 374, column: 9, scope: !524)
!536 = !DILocation(line: 374, column: 49, scope: !534)
!537 = !DILocation(line: 374, column: 48, scope: !534)
!538 = !DILocation(line: 374, column: 40, scope: !534)
!539 = !DILocation(line: 375, column: 9, scope: !540)
!540 = distinct !DILexicalBlock(scope: !524, file: !1, line: 375, column: 9)
!541 = !DILocation(line: 375, column: 9, scope: !524)
!542 = !DILocation(line: 376, column: 9, scope: !524)
!543 = !DILocation(line: 380, column: 9, scope: !544)
!544 = distinct !DILexicalBlock(scope: !524, file: !1, line: 380, column: 9)
!545 = !DILocation(line: 380, column: 9, scope: !524)
!546 = !DILocation(line: 380, column: 50, scope: !544)
!547 = !DILocation(line: 380, column: 49, scope: !544)
!548 = !DILocation(line: 380, column: 41, scope: !544)
!549 = !DILocation(line: 381, column: 9, scope: !524)
!550 = !DILocation(line: 381, column: 50, scope: !551)
!551 = distinct !DILexicalBlock(scope: !524, file: !1, line: 381, column: 9)
!552 = !DILocation(line: 381, column: 49, scope: !551)
!553 = !DILocation(line: 381, column: 41, scope: !551)
!554 = !DILocation(line: 383, column: 5, scope: !524)
!555 = !DILocation(line: 0, scope: !524)
!556 = !DILocation(line: 384, column: 1, scope: !524)
!557 = distinct !DISubprogram(name: "lpSkip", scope: !1, file: !1, line: 390, type: !558, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!129, !129}
!560 = !{!561, !562}
!561 = !DILocalVariable(name: "p", arg: 1, scope: !557, file: !1, line: 390, type: !129)
!562 = !DILocalVariable(name: "entrylen", scope: !557, file: !1, line: 391, type: !9)
!563 = !DILocation(line: 390, column: 38, scope: !557)
!564 = !DILocation(line: 372, column: 46, scope: !524, inlinedAt: !565)
!565 = distinct !DILocation(line: 391, column: 30, scope: !557)
!566 = !DILocation(line: 373, column: 9, scope: !531, inlinedAt: !565)
!567 = !DILocation(line: 373, column: 9, scope: !524, inlinedAt: !565)
!568 = !DILocation(line: 374, column: 9, scope: !534, inlinedAt: !565)
!569 = !DILocation(line: 374, column: 9, scope: !524, inlinedAt: !565)
!570 = !DILocation(line: 374, column: 49, scope: !534, inlinedAt: !565)
!571 = !DILocation(line: 374, column: 48, scope: !534, inlinedAt: !565)
!572 = !DILocation(line: 384, column: 1, scope: !524, inlinedAt: !565)
!573 = !DILocation(line: 391, column: 30, scope: !557)
!574 = !DILocation(line: 391, column: 19, scope: !557)
!575 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !576)
!576 = distinct !DILocation(line: 392, column: 17, scope: !557)
!577 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !576)
!578 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !576)
!579 = !DILocation(line: 375, column: 9, scope: !540, inlinedAt: !565)
!580 = !DILocation(line: 375, column: 9, scope: !524, inlinedAt: !565)
!581 = !DILocation(line: 376, column: 9, scope: !524, inlinedAt: !565)
!582 = !DILocation(line: 380, column: 9, scope: !544, inlinedAt: !565)
!583 = !DILocation(line: 380, column: 9, scope: !524, inlinedAt: !565)
!584 = !DILocation(line: 380, column: 50, scope: !544, inlinedAt: !565)
!585 = !DILocation(line: 380, column: 41, scope: !544, inlinedAt: !565)
!586 = !DILocation(line: 381, column: 9, scope: !524, inlinedAt: !565)
!587 = !DILocation(line: 381, column: 50, scope: !551, inlinedAt: !565)
!588 = !DILocation(line: 381, column: 41, scope: !551, inlinedAt: !565)
!589 = !DILocation(line: 383, column: 5, scope: !524, inlinedAt: !565)
!590 = !DILocation(line: 0, scope: !557)
!591 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !576)
!592 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !576)
!593 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !576)
!594 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !576)
!595 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !576)
!596 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !576)
!597 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !576)
!598 = !DILocation(line: 0, scope: !403, inlinedAt: !576)
!599 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !576)
!600 = !DILocation(line: 392, column: 14, scope: !557)
!601 = !DILocation(line: 393, column: 7, scope: !557)
!602 = !DILocation(line: 394, column: 5, scope: !557)
!603 = distinct !DISubprogram(name: "lpNext", scope: !1, file: !1, line: 400, type: !604, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !606)
!604 = !DISubroutineType(types: !605)
!605 = !{!129, !129, !129}
!606 = !{!607, !608}
!607 = !DILocalVariable(name: "lp", arg: 1, scope: !603, file: !1, line: 400, type: !129)
!608 = !DILocalVariable(name: "p", arg: 2, scope: !603, file: !1, line: 400, type: !129)
!609 = !DILocation(line: 400, column: 38, scope: !603)
!610 = !DILocation(line: 400, column: 57, scope: !603)
!611 = !DILocation(line: 402, column: 9, scope: !603)
!612 = !DILocation(line: 403, column: 9, scope: !613)
!613 = distinct !DILexicalBlock(scope: !603, file: !1, line: 403, column: 9)
!614 = !DILocation(line: 403, column: 14, scope: !613)
!615 = !DILocation(line: 403, column: 25, scope: !613)
!616 = !DILocation(line: 405, column: 1, scope: !603)
!617 = distinct !DISubprogram(name: "lpPrev", scope: !1, file: !1, line: 410, type: !604, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !618)
!618 = !{!619, !620, !621}
!619 = !DILocalVariable(name: "lp", arg: 1, scope: !617, file: !1, line: 410, type: !129)
!620 = !DILocalVariable(name: "p", arg: 2, scope: !617, file: !1, line: 410, type: !129)
!621 = !DILocalVariable(name: "prevlen", scope: !617, file: !1, line: 413, type: !5)
!622 = !DILocation(line: 410, column: 38, scope: !617)
!623 = !DILocation(line: 410, column: 57, scope: !617)
!624 = !DILocation(line: 411, column: 10, scope: !625)
!625 = distinct !DILexicalBlock(scope: !617, file: !1, line: 411, column: 9)
!626 = !DILocation(line: 411, column: 14, scope: !625)
!627 = !DILocation(line: 411, column: 9, scope: !617)
!628 = !DILocation(line: 412, column: 6, scope: !617)
!629 = !DILocation(line: 335, column: 41, scope: !447, inlinedAt: !630)
!630 = distinct !DILocation(line: 413, column: 24, scope: !617)
!631 = !DILocation(line: 336, column: 14, scope: !447, inlinedAt: !630)
!632 = !DILocation(line: 337, column: 14, scope: !447, inlinedAt: !630)
!633 = !DILocation(line: 339, column: 27, scope: !458, inlinedAt: !630)
!634 = !DILocation(line: 339, column: 32, scope: !458, inlinedAt: !630)
!635 = !DILocation(line: 339, column: 16, scope: !458, inlinedAt: !630)
!636 = !DILocation(line: 340, column: 20, scope: !462, inlinedAt: !630)
!637 = !DILocation(line: 340, column: 13, scope: !458, inlinedAt: !630)
!638 = !DILocation(line: 346, column: 1, scope: !447, inlinedAt: !630)
!639 = !DILocation(line: 413, column: 14, scope: !617)
!640 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !641)
!641 = distinct !DILocation(line: 414, column: 16, scope: !617)
!642 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !641)
!643 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !641)
!644 = !DILocation(line: 342, column: 10, scope: !458, inlinedAt: !630)
!645 = !DILocation(line: 339, column: 39, scope: !458, inlinedAt: !630)
!646 = !DILocation(line: 339, column: 13, scope: !458, inlinedAt: !630)
!647 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !641)
!648 = !DILocation(line: 0, scope: !447, inlinedAt: !630)
!649 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !641)
!650 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !641)
!651 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !641)
!652 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !641)
!653 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !641)
!654 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !641)
!655 = !DILocation(line: 0, scope: !403, inlinedAt: !641)
!656 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !641)
!657 = !DILocation(line: 414, column: 13, scope: !617)
!658 = !DILocation(line: 415, column: 13, scope: !617)
!659 = !DILocation(line: 415, column: 21, scope: !617)
!660 = !DILocation(line: 0, scope: !617)
!661 = !DILocation(line: 416, column: 1, scope: !617)
!662 = distinct !DISubprogram(name: "lpFirst", scope: !1, file: !1, line: 420, type: !558, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !663)
!663 = !{!664}
!664 = !DILocalVariable(name: "lp", arg: 1, scope: !662, file: !1, line: 420, type: !129)
!665 = !DILocation(line: 420, column: 39, scope: !662)
!666 = !DILocation(line: 421, column: 8, scope: !662)
!667 = !DILocation(line: 422, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !662, file: !1, line: 422, column: 9)
!669 = !DILocation(line: 422, column: 15, scope: !668)
!670 = !DILocation(line: 422, column: 26, scope: !668)
!671 = !DILocation(line: 424, column: 1, scope: !662)
!672 = distinct !DISubprogram(name: "lpLast", scope: !1, file: !1, line: 428, type: !558, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !673)
!673 = !{!674, !675}
!674 = !DILocalVariable(name: "lp", arg: 1, scope: !672, file: !1, line: 428, type: !129)
!675 = !DILocalVariable(name: "p", scope: !672, file: !1, line: 429, type: !129)
!676 = !DILocation(line: 428, column: 38, scope: !672)
!677 = !DILocation(line: 429, column: 27, scope: !672)
!678 = !DILocation(line: 429, column: 26, scope: !672)
!679 = !DILocation(line: 429, column: 46, scope: !672)
!680 = !DILocation(line: 429, column: 20, scope: !672)
!681 = !DILocation(line: 410, column: 38, scope: !617, inlinedAt: !682)
!682 = distinct !DILocation(line: 430, column: 12, scope: !672)
!683 = !DILocation(line: 410, column: 57, scope: !617, inlinedAt: !682)
!684 = !DILocation(line: 411, column: 10, scope: !625, inlinedAt: !682)
!685 = !DILocation(line: 411, column: 14, scope: !625, inlinedAt: !682)
!686 = !DILocation(line: 411, column: 9, scope: !617, inlinedAt: !682)
!687 = !DILocation(line: 412, column: 6, scope: !617, inlinedAt: !682)
!688 = !DILocation(line: 335, column: 41, scope: !447, inlinedAt: !689)
!689 = distinct !DILocation(line: 413, column: 24, scope: !617, inlinedAt: !682)
!690 = !DILocation(line: 336, column: 14, scope: !447, inlinedAt: !689)
!691 = !DILocation(line: 337, column: 14, scope: !447, inlinedAt: !689)
!692 = !DILocation(line: 339, column: 27, scope: !458, inlinedAt: !689)
!693 = !DILocation(line: 339, column: 32, scope: !458, inlinedAt: !689)
!694 = !DILocation(line: 339, column: 16, scope: !458, inlinedAt: !689)
!695 = !DILocation(line: 340, column: 20, scope: !462, inlinedAt: !689)
!696 = !DILocation(line: 340, column: 13, scope: !458, inlinedAt: !689)
!697 = !DILocation(line: 346, column: 1, scope: !447, inlinedAt: !689)
!698 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !699)
!699 = distinct !DILocation(line: 414, column: 16, scope: !617, inlinedAt: !682)
!700 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !699)
!701 = !DILocation(line: 342, column: 10, scope: !458, inlinedAt: !689)
!702 = !DILocation(line: 339, column: 39, scope: !458, inlinedAt: !689)
!703 = !DILocation(line: 339, column: 13, scope: !458, inlinedAt: !689)
!704 = !DILocation(line: 413, column: 14, scope: !617, inlinedAt: !682)
!705 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !699)
!706 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !699)
!707 = !DILocation(line: 0, scope: !447, inlinedAt: !689)
!708 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !699)
!709 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !699)
!710 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !699)
!711 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !699)
!712 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !699)
!713 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !699)
!714 = !DILocation(line: 0, scope: !403, inlinedAt: !699)
!715 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !699)
!716 = !DILocation(line: 414, column: 13, scope: !617, inlinedAt: !682)
!717 = !DILocation(line: 415, column: 13, scope: !617, inlinedAt: !682)
!718 = !DILocation(line: 415, column: 21, scope: !617, inlinedAt: !682)
!719 = !DILocation(line: 0, scope: !617, inlinedAt: !682)
!720 = !DILocation(line: 416, column: 1, scope: !617, inlinedAt: !682)
!721 = !DILocation(line: 430, column: 5, scope: !672)
!722 = distinct !DISubprogram(name: "lpLength", scope: !1, file: !1, line: 438, type: !525, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !723)
!723 = !{!724, !725, !726, !727}
!724 = !DILocalVariable(name: "lp", arg: 1, scope: !722, file: !1, line: 438, type: !129)
!725 = !DILocalVariable(name: "numele", scope: !722, file: !1, line: 439, type: !16)
!726 = !DILocalVariable(name: "count", scope: !722, file: !1, line: 444, type: !16)
!727 = !DILocalVariable(name: "p", scope: !722, file: !1, line: 445, type: !129)
!728 = !DILocation(line: 438, column: 34, scope: !722)
!729 = !DILocation(line: 439, column: 23, scope: !722)
!730 = !DILocation(line: 439, column: 14, scope: !722)
!731 = !DILocation(line: 440, column: 16, scope: !732)
!732 = distinct !DILexicalBlock(scope: !722, file: !1, line: 440, column: 9)
!733 = !DILocation(line: 440, column: 9, scope: !722)
!734 = !DILocation(line: 444, column: 14, scope: !722)
!735 = !DILocation(line: 420, column: 39, scope: !662, inlinedAt: !736)
!736 = distinct !DILocation(line: 445, column: 24, scope: !722)
!737 = !DILocation(line: 421, column: 8, scope: !662, inlinedAt: !736)
!738 = !DILocation(line: 422, column: 9, scope: !668, inlinedAt: !736)
!739 = !DILocation(line: 422, column: 15, scope: !668, inlinedAt: !736)
!740 = !DILocation(line: 424, column: 1, scope: !662, inlinedAt: !736)
!741 = !DILocation(line: 446, column: 5, scope: !722)
!742 = !DILocation(line: 445, column: 20, scope: !722)
!743 = !DILocation(line: 447, column: 14, scope: !744)
!744 = distinct !DILexicalBlock(scope: !722, file: !1, line: 446, column: 14)
!745 = !DILocation(line: 400, column: 38, scope: !603, inlinedAt: !746)
!746 = distinct !DILocation(line: 448, column: 13, scope: !744)
!747 = !DILocation(line: 400, column: 57, scope: !603, inlinedAt: !746)
!748 = !DILocation(line: 402, column: 9, scope: !603, inlinedAt: !746)
!749 = !DILocation(line: 403, column: 9, scope: !613, inlinedAt: !746)
!750 = !DILocation(line: 403, column: 14, scope: !613, inlinedAt: !746)
!751 = !DILocation(line: 405, column: 1, scope: !603, inlinedAt: !746)
!752 = !DILocation(line: 453, column: 15, scope: !753)
!753 = distinct !DILexicalBlock(scope: !722, file: !1, line: 453, column: 9)
!754 = !DILocation(line: 453, column: 9, scope: !722)
!755 = !DILocation(line: 453, column: 40, scope: !756)
!756 = distinct !DILexicalBlock(scope: !753, file: !1, line: 453, column: 40)
!757 = !DILocation(line: 0, scope: !722)
!758 = !DILocation(line: 455, column: 1, scope: !722)
!759 = distinct !DISubprogram(name: "lpGet", scope: !1, file: !1, line: 491, type: !760, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !762)
!760 = !DISubroutineType(types: !761)
!761 = !{!129, !129, !29, !129}
!762 = !{!763, !764, !765, !766, !767, !768, !769}
!763 = !DILocalVariable(name: "p", arg: 1, scope: !759, file: !1, line: 491, type: !129)
!764 = !DILocalVariable(name: "count", arg: 2, scope: !759, file: !1, line: 491, type: !29)
!765 = !DILocalVariable(name: "intbuf", arg: 3, scope: !759, file: !1, line: 491, type: !129)
!766 = !DILocalVariable(name: "val", scope: !759, file: !1, line: 492, type: !13)
!767 = !DILocalVariable(name: "uval", scope: !759, file: !1, line: 493, type: !5)
!768 = !DILocalVariable(name: "negstart", scope: !759, file: !1, line: 493, type: !5)
!769 = !DILocalVariable(name: "negmax", scope: !759, file: !1, line: 493, type: !5)
!770 = !DILocation(line: 491, column: 37, scope: !759)
!771 = !DILocation(line: 491, column: 49, scope: !759)
!772 = !DILocation(line: 491, column: 71, scope: !759)
!773 = !DILocation(line: 495, column: 9, scope: !774)
!774 = distinct !DILexicalBlock(scope: !759, file: !1, line: 495, column: 9)
!775 = !DILocation(line: 495, column: 9, scope: !759)
!776 = !DILocation(line: 493, column: 20, scope: !759)
!777 = !DILocation(line: 493, column: 30, scope: !759)
!778 = !DILocation(line: 498, column: 21, scope: !779)
!779 = distinct !DILexicalBlock(scope: !774, file: !1, line: 495, column: 41)
!780 = !DILocation(line: 498, column: 16, scope: !779)
!781 = !DILocation(line: 493, column: 14, scope: !759)
!782 = !DILocation(line: 499, column: 5, scope: !779)
!783 = !DILocation(line: 499, column: 16, scope: !784)
!784 = distinct !DILexicalBlock(scope: !774, file: !1, line: 499, column: 16)
!785 = !DILocation(line: 499, column: 16, scope: !774)
!786 = !DILocation(line: 500, column: 18, scope: !787)
!787 = distinct !DILexicalBlock(scope: !784, file: !1, line: 499, column: 47)
!788 = !DILocation(line: 500, column: 16, scope: !787)
!789 = !DILocation(line: 501, column: 17, scope: !787)
!790 = !DILocation(line: 501, column: 9, scope: !787)
!791 = !DILocation(line: 502, column: 16, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !1, line: 502, column: 16)
!793 = !DILocation(line: 502, column: 16, scope: !784)
!794 = !DILocation(line: 503, column: 28, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !1, line: 502, column: 48)
!796 = !DILocation(line: 503, column: 35, scope: !795)
!797 = !DILocation(line: 503, column: 33, scope: !795)
!798 = !DILocation(line: 503, column: 16, scope: !795)
!799 = !DILocation(line: 506, column: 5, scope: !795)
!800 = !DILocation(line: 506, column: 16, scope: !792)
!801 = !DILocation(line: 507, column: 26, scope: !802)
!802 = distinct !DILexicalBlock(scope: !803, file: !1, line: 506, column: 48)
!803 = distinct !DILexicalBlock(scope: !792, file: !1, line: 506, column: 16)
!804 = !DILocation(line: 507, column: 16, scope: !802)
!805 = !DILocation(line: 508, column: 26, scope: !802)
!806 = !DILocation(line: 508, column: 16, scope: !802)
!807 = !DILocation(line: 508, column: 30, scope: !802)
!808 = !DILocation(line: 507, column: 31, scope: !802)
!809 = !DILocation(line: 511, column: 5, scope: !802)
!810 = !DILocation(line: 512, column: 26, scope: !811)
!811 = distinct !DILexicalBlock(scope: !812, file: !1, line: 511, column: 48)
!812 = distinct !DILexicalBlock(scope: !803, file: !1, line: 511, column: 16)
!813 = !DILocation(line: 512, column: 16, scope: !811)
!814 = !DILocation(line: 513, column: 26, scope: !811)
!815 = !DILocation(line: 513, column: 16, scope: !811)
!816 = !DILocation(line: 513, column: 30, scope: !811)
!817 = !DILocation(line: 512, column: 31, scope: !811)
!818 = !DILocation(line: 514, column: 26, scope: !811)
!819 = !DILocation(line: 514, column: 16, scope: !811)
!820 = !DILocation(line: 514, column: 30, scope: !811)
!821 = !DILocation(line: 513, column: 34, scope: !811)
!822 = !DILocation(line: 517, column: 5, scope: !811)
!823 = !DILocation(line: 518, column: 26, scope: !824)
!824 = distinct !DILexicalBlock(scope: !825, file: !1, line: 517, column: 48)
!825 = distinct !DILexicalBlock(scope: !812, file: !1, line: 517, column: 16)
!826 = !DILocation(line: 518, column: 16, scope: !824)
!827 = !DILocation(line: 519, column: 26, scope: !824)
!828 = !DILocation(line: 519, column: 16, scope: !824)
!829 = !DILocation(line: 519, column: 30, scope: !824)
!830 = !DILocation(line: 518, column: 31, scope: !824)
!831 = !DILocation(line: 520, column: 26, scope: !824)
!832 = !DILocation(line: 520, column: 16, scope: !824)
!833 = !DILocation(line: 520, column: 30, scope: !824)
!834 = !DILocation(line: 519, column: 34, scope: !824)
!835 = !DILocation(line: 521, column: 26, scope: !824)
!836 = !DILocation(line: 521, column: 16, scope: !824)
!837 = !DILocation(line: 521, column: 30, scope: !824)
!838 = !DILocation(line: 520, column: 35, scope: !824)
!839 = !DILocation(line: 524, column: 5, scope: !824)
!840 = !DILocation(line: 525, column: 26, scope: !841)
!841 = distinct !DILexicalBlock(scope: !842, file: !1, line: 524, column: 48)
!842 = distinct !DILexicalBlock(scope: !825, file: !1, line: 524, column: 16)
!843 = !DILocation(line: 525, column: 16, scope: !841)
!844 = !DILocation(line: 526, column: 26, scope: !841)
!845 = !DILocation(line: 526, column: 16, scope: !841)
!846 = !DILocation(line: 526, column: 30, scope: !841)
!847 = !DILocation(line: 525, column: 31, scope: !841)
!848 = !DILocation(line: 527, column: 26, scope: !841)
!849 = !DILocation(line: 527, column: 16, scope: !841)
!850 = !DILocation(line: 527, column: 30, scope: !841)
!851 = !DILocation(line: 526, column: 34, scope: !841)
!852 = !DILocation(line: 528, column: 26, scope: !841)
!853 = !DILocation(line: 528, column: 16, scope: !841)
!854 = !DILocation(line: 528, column: 30, scope: !841)
!855 = !DILocation(line: 527, column: 35, scope: !841)
!856 = !DILocation(line: 529, column: 26, scope: !841)
!857 = !DILocation(line: 529, column: 16, scope: !841)
!858 = !DILocation(line: 529, column: 30, scope: !841)
!859 = !DILocation(line: 528, column: 35, scope: !841)
!860 = !DILocation(line: 530, column: 26, scope: !841)
!861 = !DILocation(line: 530, column: 16, scope: !841)
!862 = !DILocation(line: 530, column: 30, scope: !841)
!863 = !DILocation(line: 529, column: 35, scope: !841)
!864 = !DILocation(line: 531, column: 26, scope: !841)
!865 = !DILocation(line: 531, column: 16, scope: !841)
!866 = !DILocation(line: 531, column: 30, scope: !841)
!867 = !DILocation(line: 530, column: 35, scope: !841)
!868 = !DILocation(line: 532, column: 26, scope: !841)
!869 = !DILocation(line: 532, column: 16, scope: !841)
!870 = !DILocation(line: 532, column: 30, scope: !841)
!871 = !DILocation(line: 531, column: 35, scope: !841)
!872 = !DILocation(line: 535, column: 5, scope: !841)
!873 = !DILocation(line: 535, column: 16, scope: !874)
!874 = distinct !DILexicalBlock(scope: !842, file: !1, line: 535, column: 16)
!875 = !DILocation(line: 535, column: 16, scope: !842)
!876 = !DILocation(line: 536, column: 18, scope: !877)
!877 = distinct !DILexicalBlock(scope: !874, file: !1, line: 535, column: 48)
!878 = !DILocation(line: 536, column: 16, scope: !877)
!879 = !DILocation(line: 537, column: 17, scope: !877)
!880 = !DILocation(line: 537, column: 9, scope: !877)
!881 = !DILocation(line: 538, column: 16, scope: !882)
!882 = distinct !DILexicalBlock(scope: !874, file: !1, line: 538, column: 16)
!883 = !DILocation(line: 538, column: 16, scope: !874)
!884 = !DILocation(line: 539, column: 18, scope: !885)
!885 = distinct !DILexicalBlock(scope: !882, file: !1, line: 538, column: 48)
!886 = !DILocation(line: 539, column: 16, scope: !885)
!887 = !DILocation(line: 540, column: 17, scope: !885)
!888 = !DILocation(line: 540, column: 9, scope: !885)
!889 = !DILocation(line: 542, column: 39, scope: !890)
!890 = distinct !DILexicalBlock(scope: !882, file: !1, line: 541, column: 12)
!891 = !DILocation(line: 542, column: 37, scope: !890)
!892 = !DILocation(line: 0, scope: !890)
!893 = !DILocation(line: 550, column: 14, scope: !894)
!894 = distinct !DILexicalBlock(scope: !759, file: !1, line: 550, column: 9)
!895 = !DILocation(line: 550, column: 9, scope: !759)
!896 = !DILocation(line: 492, column: 13, scope: !759)
!897 = !DILocation(line: 562, column: 9, scope: !898)
!898 = distinct !DILexicalBlock(scope: !759, file: !1, line: 562, column: 9)
!899 = !DILocation(line: 562, column: 9, scope: !759)
!900 = !DILocation(line: 563, column: 18, scope: !901)
!901 = distinct !DILexicalBlock(scope: !898, file: !1, line: 562, column: 17)
!902 = !DILocation(line: 563, column: 16, scope: !901)
!903 = !DILocation(line: 564, column: 9, scope: !901)
!904 = !DILocation(line: 566, column: 16, scope: !905)
!905 = distinct !DILexicalBlock(scope: !898, file: !1, line: 565, column: 12)
!906 = !DILocation(line: 567, column: 9, scope: !905)
!907 = !DILocation(line: 0, scope: !885)
!908 = !DILocation(line: 569, column: 1, scope: !759)
!909 = distinct !DISubprogram(name: "lpInsert", scope: !1, file: !1, line: 595, type: !910, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !913)
!910 = !DISubroutineType(types: !911)
!911 = !{!129, !129, !129, !16, !129, !28, !912}
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!913 = !{!914, !915, !916, !917, !918, !919, !920, !924, !928, !929, !930, !931, !932, !933, !934, !935, !936, !939}
!914 = !DILocalVariable(name: "lp", arg: 1, scope: !909, file: !1, line: 595, type: !129)
!915 = !DILocalVariable(name: "ele", arg: 2, scope: !909, file: !1, line: 595, type: !129)
!916 = !DILocalVariable(name: "size", arg: 3, scope: !909, file: !1, line: 595, type: !16)
!917 = !DILocalVariable(name: "p", arg: 4, scope: !909, file: !1, line: 595, type: !129)
!918 = !DILocalVariable(name: "where", arg: 5, scope: !909, file: !1, line: 595, type: !28)
!919 = !DILocalVariable(name: "newp", arg: 6, scope: !909, file: !1, line: 595, type: !912)
!920 = !DILocalVariable(name: "intenc", scope: !909, file: !1, line: 596, type: !921)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 72, elements: !922)
!922 = !{!923}
!923 = !DISubrange(count: 9)
!924 = !DILocalVariable(name: "backlen", scope: !909, file: !1, line: 597, type: !925)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 40, elements: !926)
!926 = !{!927}
!927 = !DISubrange(count: 5)
!928 = !DILocalVariable(name: "enclen", scope: !909, file: !1, line: 599, type: !5)
!929 = !DILocalVariable(name: "poff", scope: !909, file: !1, line: 617, type: !9)
!930 = !DILocalVariable(name: "enctype", scope: !909, file: !1, line: 627, type: !28)
!931 = !DILocalVariable(name: "backlen_size", scope: !909, file: !1, line: 638, type: !9)
!932 = !DILocalVariable(name: "old_listpack_bytes", scope: !909, file: !1, line: 639, type: !5)
!933 = !DILocalVariable(name: "replaced_len", scope: !909, file: !1, line: 640, type: !16)
!934 = !DILocalVariable(name: "new_listpack_bytes", scope: !909, file: !1, line: 646, type: !5)
!935 = !DILocalVariable(name: "dst", scope: !909, file: !1, line: 656, type: !129)
!936 = !DILocalVariable(name: "lendiff", scope: !937, file: !1, line: 669, type: !15)
!937 = distinct !DILexicalBlock(scope: !938, file: !1, line: 668, column: 12)
!938 = distinct !DILexicalBlock(scope: !909, file: !1, line: 666, column: 9)
!939 = !DILocalVariable(name: "num_elements", scope: !940, file: !1, line: 701, type: !16)
!940 = distinct !DILexicalBlock(scope: !941, file: !1, line: 700, column: 45)
!941 = distinct !DILexicalBlock(scope: !909, file: !1, line: 700, column: 9)
!942 = !DILocation(line: 595, column: 40, scope: !909)
!943 = !DILocation(line: 595, column: 59, scope: !909)
!944 = !DILocation(line: 595, column: 73, scope: !909)
!945 = !DILocation(line: 595, column: 94, scope: !909)
!946 = !DILocation(line: 595, column: 101, scope: !909)
!947 = !DILocation(line: 595, column: 124, scope: !909)
!948 = !DILocation(line: 596, column: 5, scope: !909)
!949 = !DILocation(line: 596, column: 19, scope: !909)
!950 = !DILocation(line: 597, column: 5, scope: !909)
!951 = !DILocation(line: 597, column: 19, scope: !909)
!952 = !DILocation(line: 599, column: 5, scope: !909)
!953 = !DILocation(line: 604, column: 13, scope: !954)
!954 = distinct !DILexicalBlock(scope: !909, file: !1, line: 604, column: 9)
!955 = !DILocation(line: 604, column: 9, scope: !909)
!956 = !DILocation(line: 610, column: 15, scope: !957)
!957 = distinct !DILexicalBlock(scope: !909, file: !1, line: 610, column: 9)
!958 = !DILocation(line: 610, column: 9, scope: !909)
!959 = !DILocation(line: 611, column: 13, scope: !960)
!960 = distinct !DILexicalBlock(scope: !957, file: !1, line: 610, column: 28)
!961 = !DILocation(line: 613, column: 5, scope: !960)
!962 = !DILocation(line: 0, scope: !954)
!963 = !DILocation(line: 617, column: 27, scope: !909)
!964 = !DILocation(line: 617, column: 19, scope: !909)
!965 = !DILocation(line: 628, column: 9, scope: !966)
!966 = distinct !DILexicalBlock(scope: !909, file: !1, line: 628, column: 9)
!967 = !DILocation(line: 628, column: 9, scope: !909)
!968 = !DILocation(line: 627, column: 9, scope: !909)
!969 = !DILocation(line: 599, column: 14, scope: !909)
!970 = !DILocation(line: 632, column: 16, scope: !971)
!971 = distinct !DILexicalBlock(scope: !966, file: !1, line: 630, column: 12)
!972 = !DILocation(line: 629, column: 19, scope: !973)
!973 = distinct !DILexicalBlock(scope: !966, file: !1, line: 628, column: 14)
!974 = !DILocation(line: 638, column: 64, scope: !909)
!975 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !976)
!976 = distinct !DILocation(line: 638, column: 40, scope: !909)
!977 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !976)
!978 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !976)
!979 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !976)
!980 = !DILocation(line: 298, column: 27, scope: !359, inlinedAt: !976)
!981 = !DILocation(line: 298, column: 25, scope: !359, inlinedAt: !976)
!982 = !DILocation(line: 298, column: 18, scope: !359, inlinedAt: !976)
!983 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !976)
!984 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !976)
!985 = !DILocation(line: 302, column: 23, scope: !373, inlinedAt: !976)
!986 = !DILocation(line: 302, column: 22, scope: !373, inlinedAt: !976)
!987 = !DILocation(line: 302, column: 20, scope: !373, inlinedAt: !976)
!988 = !DILocation(line: 303, column: 22, scope: !373, inlinedAt: !976)
!989 = !DILocation(line: 303, column: 13, scope: !373, inlinedAt: !976)
!990 = !DILocation(line: 303, column: 20, scope: !373, inlinedAt: !976)
!991 = !DILocation(line: 304, column: 9, scope: !373, inlinedAt: !976)
!992 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !976)
!993 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !976)
!994 = !DILocation(line: 308, column: 23, scope: !388, inlinedAt: !976)
!995 = !DILocation(line: 308, column: 22, scope: !388, inlinedAt: !976)
!996 = !DILocation(line: 308, column: 20, scope: !388, inlinedAt: !976)
!997 = !DILocation(line: 309, column: 25, scope: !388, inlinedAt: !976)
!998 = !DILocation(line: 309, column: 22, scope: !388, inlinedAt: !976)
!999 = !DILocation(line: 309, column: 13, scope: !388, inlinedAt: !976)
!1000 = !DILocation(line: 309, column: 20, scope: !388, inlinedAt: !976)
!1001 = !DILocation(line: 310, column: 22, scope: !388, inlinedAt: !976)
!1002 = !DILocation(line: 310, column: 13, scope: !388, inlinedAt: !976)
!1003 = !DILocation(line: 310, column: 20, scope: !388, inlinedAt: !976)
!1004 = !DILocation(line: 311, column: 9, scope: !388, inlinedAt: !976)
!1005 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !976)
!1006 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !976)
!1007 = !DILocation(line: 315, column: 23, scope: !408, inlinedAt: !976)
!1008 = !DILocation(line: 315, column: 22, scope: !408, inlinedAt: !976)
!1009 = !DILocation(line: 315, column: 20, scope: !408, inlinedAt: !976)
!1010 = !DILocation(line: 316, column: 25, scope: !408, inlinedAt: !976)
!1011 = !DILocation(line: 316, column: 22, scope: !408, inlinedAt: !976)
!1012 = !DILocation(line: 316, column: 13, scope: !408, inlinedAt: !976)
!1013 = !DILocation(line: 316, column: 20, scope: !408, inlinedAt: !976)
!1014 = !DILocation(line: 317, column: 25, scope: !408, inlinedAt: !976)
!1015 = !DILocation(line: 317, column: 22, scope: !408, inlinedAt: !976)
!1016 = !DILocation(line: 317, column: 13, scope: !408, inlinedAt: !976)
!1017 = !DILocation(line: 317, column: 20, scope: !408, inlinedAt: !976)
!1018 = !DILocation(line: 318, column: 22, scope: !408, inlinedAt: !976)
!1019 = !DILocation(line: 318, column: 13, scope: !408, inlinedAt: !976)
!1020 = !DILocation(line: 318, column: 20, scope: !408, inlinedAt: !976)
!1021 = !DILocation(line: 319, column: 9, scope: !408, inlinedAt: !976)
!1022 = !DILocation(line: 323, column: 23, scope: !426, inlinedAt: !976)
!1023 = !DILocation(line: 323, column: 22, scope: !426, inlinedAt: !976)
!1024 = !DILocation(line: 323, column: 20, scope: !426, inlinedAt: !976)
!1025 = !DILocation(line: 324, column: 25, scope: !426, inlinedAt: !976)
!1026 = !DILocation(line: 324, column: 22, scope: !426, inlinedAt: !976)
!1027 = !DILocation(line: 324, column: 13, scope: !426, inlinedAt: !976)
!1028 = !DILocation(line: 324, column: 20, scope: !426, inlinedAt: !976)
!1029 = !DILocation(line: 325, column: 25, scope: !426, inlinedAt: !976)
!1030 = !DILocation(line: 325, column: 22, scope: !426, inlinedAt: !976)
!1031 = !DILocation(line: 325, column: 13, scope: !426, inlinedAt: !976)
!1032 = !DILocation(line: 325, column: 20, scope: !426, inlinedAt: !976)
!1033 = !DILocation(line: 326, column: 25, scope: !426, inlinedAt: !976)
!1034 = !DILocation(line: 326, column: 22, scope: !426, inlinedAt: !976)
!1035 = !DILocation(line: 326, column: 13, scope: !426, inlinedAt: !976)
!1036 = !DILocation(line: 326, column: 20, scope: !426, inlinedAt: !976)
!1037 = !DILocation(line: 327, column: 22, scope: !426, inlinedAt: !976)
!1038 = !DILocation(line: 327, column: 13, scope: !426, inlinedAt: !976)
!1039 = !DILocation(line: 327, column: 20, scope: !426, inlinedAt: !976)
!1040 = !DILocation(line: 328, column: 9, scope: !426, inlinedAt: !976)
!1041 = !DILocation(line: 0, scope: !403, inlinedAt: !976)
!1042 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !976)
!1043 = !DILocation(line: 638, column: 34, scope: !909)
!1044 = !DILocation(line: 638, column: 19, scope: !909)
!1045 = !DILocation(line: 639, column: 35, scope: !909)
!1046 = !DILocation(line: 639, column: 14, scope: !909)
!1047 = !DILocation(line: 640, column: 14, scope: !909)
!1048 = !DILocation(line: 641, column: 15, scope: !1049)
!1049 = distinct !DILexicalBlock(scope: !909, file: !1, line: 641, column: 9)
!1050 = !DILocation(line: 641, column: 9, scope: !909)
!1051 = !DILocation(line: 372, column: 46, scope: !524, inlinedAt: !1052)
!1052 = distinct !DILocation(line: 642, column: 24, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1049, file: !1, line: 641, column: 30)
!1054 = !DILocation(line: 373, column: 9, scope: !531, inlinedAt: !1052)
!1055 = !DILocation(line: 373, column: 9, scope: !524, inlinedAt: !1052)
!1056 = !DILocation(line: 374, column: 9, scope: !534, inlinedAt: !1052)
!1057 = !DILocation(line: 374, column: 9, scope: !524, inlinedAt: !1052)
!1058 = !DILocation(line: 374, column: 49, scope: !534, inlinedAt: !1052)
!1059 = !DILocation(line: 374, column: 48, scope: !534, inlinedAt: !1052)
!1060 = !DILocation(line: 384, column: 1, scope: !524, inlinedAt: !1052)
!1061 = !DILocation(line: 643, column: 46, scope: !1053)
!1062 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !1063)
!1063 = distinct !DILocation(line: 643, column: 25, scope: !1053)
!1064 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !1063)
!1065 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !1063)
!1066 = !DILocation(line: 375, column: 9, scope: !540, inlinedAt: !1052)
!1067 = !DILocation(line: 375, column: 9, scope: !524, inlinedAt: !1052)
!1068 = !DILocation(line: 376, column: 9, scope: !524, inlinedAt: !1052)
!1069 = !DILocation(line: 380, column: 9, scope: !544, inlinedAt: !1052)
!1070 = !DILocation(line: 380, column: 9, scope: !524, inlinedAt: !1052)
!1071 = !DILocation(line: 380, column: 50, scope: !544, inlinedAt: !1052)
!1072 = !DILocation(line: 380, column: 41, scope: !544, inlinedAt: !1052)
!1073 = !DILocation(line: 381, column: 9, scope: !524, inlinedAt: !1052)
!1074 = !DILocation(line: 381, column: 50, scope: !551, inlinedAt: !1052)
!1075 = !DILocation(line: 381, column: 41, scope: !551, inlinedAt: !1052)
!1076 = !DILocation(line: 383, column: 5, scope: !524, inlinedAt: !1052)
!1077 = !DILocation(line: 0, scope: !1053)
!1078 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !1063)
!1079 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !1063)
!1080 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !1063)
!1081 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !1063)
!1082 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !1063)
!1083 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !1063)
!1084 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !1063)
!1085 = !DILocation(line: 0, scope: !403, inlinedAt: !1063)
!1086 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !1063)
!1087 = !DILocation(line: 643, column: 22, scope: !1053)
!1088 = !DILocation(line: 644, column: 5, scope: !1053)
!1089 = !DILocation(line: 646, column: 54, scope: !909)
!1090 = !DILocation(line: 646, column: 63, scope: !909)
!1091 = !DILocation(line: 647, column: 35, scope: !909)
!1092 = !DILocation(line: 646, column: 14, scope: !909)
!1093 = !DILocation(line: 648, column: 28, scope: !1094)
!1094 = distinct !DILexicalBlock(scope: !909, file: !1, line: 648, column: 9)
!1095 = !DILocation(line: 648, column: 9, scope: !909)
!1096 = !DILocation(line: 656, column: 20, scope: !909)
!1097 = !DILocation(line: 659, column: 28, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !909, file: !1, line: 659, column: 9)
!1099 = !DILocation(line: 659, column: 9, scope: !909)
!1100 = !DILocation(line: 660, column: 19, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1102, file: !1, line: 660, column: 13)
!1102 = distinct !DILexicalBlock(scope: !1098, file: !1, line: 659, column: 50)
!1103 = !DILocation(line: 660, column: 54, scope: !1101)
!1104 = !DILocation(line: 660, column: 13, scope: !1102)
!1105 = !DILocation(line: 661, column: 18, scope: !1102)
!1106 = !DILocation(line: 662, column: 5, scope: !1102)
!1107 = !DILocation(line: 0, scope: !909)
!1108 = !DILocation(line: 666, column: 15, scope: !938)
!1109 = !DILocation(line: 666, column: 9, scope: !909)
!1110 = !DILocation(line: 667, column: 20, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !938, file: !1, line: 666, column: 29)
!1112 = !DILocation(line: 667, column: 27, scope: !1111)
!1113 = !DILocation(line: 667, column: 63, scope: !1111)
!1114 = !DILocation(line: 667, column: 9, scope: !1111)
!1115 = !DILocation(line: 668, column: 5, scope: !1111)
!1116 = !DILocation(line: 670, column: 20, scope: !937)
!1117 = !DILocation(line: 670, column: 33, scope: !937)
!1118 = !DILocation(line: 672, column: 35, scope: !937)
!1119 = !DILocation(line: 672, column: 40, scope: !937)
!1120 = !DILocation(line: 670, column: 9, scope: !937)
!1121 = !DILocation(line: 676, column: 28, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !909, file: !1, line: 676, column: 9)
!1123 = !DILocation(line: 676, column: 9, scope: !909)
!1124 = !DILocation(line: 677, column: 19, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !1, line: 677, column: 13)
!1126 = distinct !DILexicalBlock(scope: !1122, file: !1, line: 676, column: 50)
!1127 = !DILocation(line: 677, column: 54, scope: !1125)
!1128 = !DILocation(line: 677, column: 13, scope: !1126)
!1129 = !DILocation(line: 678, column: 18, scope: !1126)
!1130 = !DILocation(line: 679, column: 5, scope: !1126)
!1131 = !DILocation(line: 0, scope: !1102)
!1132 = !DILocation(line: 0, scope: !1101)
!1133 = !DILocation(line: 682, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !909, file: !1, line: 682, column: 9)
!1135 = !DILocation(line: 682, column: 9, scope: !909)
!1136 = !DILocation(line: 683, column: 15, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1134, file: !1, line: 682, column: 15)
!1138 = !{!1139, !1139, i64 0}
!1139 = !{!"any pointer", !52, i64 0}
!1140 = !DILocation(line: 686, column: 18, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1137, file: !1, line: 686, column: 13)
!1142 = !DILocation(line: 686, column: 21, scope: !1141)
!1143 = !DILocation(line: 686, column: 28, scope: !1141)
!1144 = !DILocation(line: 686, column: 13, scope: !1137)
!1145 = !DILocation(line: 686, column: 45, scope: !1141)
!1146 = !DILocation(line: 686, column: 39, scope: !1141)
!1147 = !DILocation(line: 688, column: 9, scope: !909)
!1148 = !DILocation(line: 689, column: 21, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !1, line: 689, column: 13)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !1, line: 688, column: 14)
!1151 = distinct !DILexicalBlock(scope: !909, file: !1, line: 688, column: 9)
!1152 = !DILocation(line: 689, column: 13, scope: !1150)
!1153 = !DILocation(line: 690, column: 13, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 689, column: 41)
!1155 = !DILocation(line: 691, column: 9, scope: !1154)
!1156 = !DILocation(line: 352, column: 36, scope: !469, inlinedAt: !1157)
!1157 = distinct !DILocation(line: 692, column: 13, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1149, file: !1, line: 691, column: 16)
!1159 = !DILocation(line: 352, column: 56, scope: !469, inlinedAt: !1157)
!1160 = !DILocation(line: 352, column: 68, scope: !469, inlinedAt: !1157)
!1161 = !DILocation(line: 353, column: 13, scope: !480, inlinedAt: !1157)
!1162 = !DILocation(line: 353, column: 9, scope: !469, inlinedAt: !1157)
!1163 = !DILocation(line: 354, column: 18, scope: !483, inlinedAt: !1157)
!1164 = !DILocation(line: 354, column: 16, scope: !483, inlinedAt: !1157)
!1165 = !DILocation(line: 355, column: 19, scope: !483, inlinedAt: !1157)
!1166 = !DILocation(line: 355, column: 24, scope: !483, inlinedAt: !1157)
!1167 = !DILocation(line: 355, column: 9, scope: !483, inlinedAt: !1157)
!1168 = !DILocation(line: 356, column: 5, scope: !483, inlinedAt: !1157)
!1169 = !DILocation(line: 356, column: 20, scope: !490, inlinedAt: !1157)
!1170 = !DILocation(line: 356, column: 16, scope: !480, inlinedAt: !1157)
!1171 = !DILocation(line: 357, column: 23, scope: !493, inlinedAt: !1157)
!1172 = !DILocation(line: 357, column: 18, scope: !493, inlinedAt: !1157)
!1173 = !DILocation(line: 357, column: 16, scope: !493, inlinedAt: !1157)
!1174 = !DILocation(line: 358, column: 18, scope: !493, inlinedAt: !1157)
!1175 = !DILocation(line: 358, column: 9, scope: !493, inlinedAt: !1157)
!1176 = !DILocation(line: 358, column: 16, scope: !493, inlinedAt: !1157)
!1177 = !DILocation(line: 359, column: 19, scope: !493, inlinedAt: !1157)
!1178 = !DILocation(line: 359, column: 24, scope: !493, inlinedAt: !1157)
!1179 = !DILocation(line: 359, column: 9, scope: !493, inlinedAt: !1157)
!1180 = !DILocation(line: 360, column: 5, scope: !493, inlinedAt: !1157)
!1181 = !DILocation(line: 361, column: 16, scope: !504, inlinedAt: !1157)
!1182 = !DILocation(line: 362, column: 18, scope: !504, inlinedAt: !1157)
!1183 = !DILocation(line: 362, column: 9, scope: !504, inlinedAt: !1157)
!1184 = !DILocation(line: 362, column: 16, scope: !504, inlinedAt: !1157)
!1185 = !DILocation(line: 363, column: 23, scope: !504, inlinedAt: !1157)
!1186 = !DILocation(line: 363, column: 18, scope: !504, inlinedAt: !1157)
!1187 = !DILocation(line: 363, column: 9, scope: !504, inlinedAt: !1157)
!1188 = !DILocation(line: 363, column: 16, scope: !504, inlinedAt: !1157)
!1189 = !DILocation(line: 364, column: 23, scope: !504, inlinedAt: !1157)
!1190 = !DILocation(line: 364, column: 18, scope: !504, inlinedAt: !1157)
!1191 = !DILocation(line: 364, column: 9, scope: !504, inlinedAt: !1157)
!1192 = !DILocation(line: 364, column: 16, scope: !504, inlinedAt: !1157)
!1193 = !DILocation(line: 365, column: 23, scope: !504, inlinedAt: !1157)
!1194 = !DILocation(line: 365, column: 18, scope: !504, inlinedAt: !1157)
!1195 = !DILocation(line: 365, column: 9, scope: !504, inlinedAt: !1157)
!1196 = !DILocation(line: 365, column: 16, scope: !504, inlinedAt: !1157)
!1197 = !DILocation(line: 366, column: 19, scope: !504, inlinedAt: !1157)
!1198 = !DILocation(line: 366, column: 24, scope: !504, inlinedAt: !1157)
!1199 = !DILocation(line: 366, column: 9, scope: !504, inlinedAt: !1157)
!1200 = !DILocation(line: 368, column: 1, scope: !469, inlinedAt: !1157)
!1201 = !DILocation(line: 694, column: 13, scope: !1150)
!1202 = !DILocation(line: 695, column: 9, scope: !1150)
!1203 = !DILocation(line: 697, column: 5, scope: !1150)
!1204 = !DILocation(line: 700, column: 15, scope: !941)
!1205 = !DILocation(line: 700, column: 29, scope: !941)
!1206 = !DILocation(line: 701, column: 33, scope: !940)
!1207 = !DILocation(line: 701, column: 18, scope: !940)
!1208 = !DILocation(line: 702, column: 26, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !940, file: !1, line: 702, column: 13)
!1210 = !DILocation(line: 702, column: 13, scope: !940)
!1211 = !DILocation(line: 703, column: 17, scope: !1212)
!1212 = distinct !DILexicalBlock(scope: !1209, file: !1, line: 702, column: 52)
!1213 = !DILocation(line: 704, column: 17, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 704, column: 17)
!1215 = distinct !DILexicalBlock(scope: !1212, file: !1, line: 703, column: 17)
!1216 = !DILocation(line: 706, column: 17, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1215, file: !1, line: 706, column: 17)
!1218 = !DILocation(line: 709, column: 5, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !909, file: !1, line: 709, column: 5)
!1220 = !DILocation(line: 730, column: 5, scope: !909)
!1221 = !DILocation(line: 731, column: 1, scope: !909)
!1222 = distinct !DISubprogram(name: "lpAppend", scope: !1, file: !1, line: 736, type: !1223, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1225)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!129, !129, !129, !16}
!1225 = !{!1226, !1227, !1228, !1229, !1230}
!1226 = !DILocalVariable(name: "lp", arg: 1, scope: !1222, file: !1, line: 736, type: !129)
!1227 = !DILocalVariable(name: "ele", arg: 2, scope: !1222, file: !1, line: 736, type: !129)
!1228 = !DILocalVariable(name: "size", arg: 3, scope: !1222, file: !1, line: 736, type: !16)
!1229 = !DILocalVariable(name: "listpack_bytes", scope: !1222, file: !1, line: 737, type: !5)
!1230 = !DILocalVariable(name: "eofptr", scope: !1222, file: !1, line: 738, type: !129)
!1231 = !DILocation(line: 736, column: 40, scope: !1222)
!1232 = !DILocation(line: 736, column: 59, scope: !1222)
!1233 = !DILocation(line: 736, column: 73, scope: !1222)
!1234 = !DILocation(line: 737, column: 31, scope: !1222)
!1235 = !DILocation(line: 737, column: 14, scope: !1222)
!1236 = !DILocation(line: 738, column: 32, scope: !1222)
!1237 = !DILocation(line: 738, column: 49, scope: !1222)
!1238 = !DILocation(line: 738, column: 20, scope: !1222)
!1239 = !DILocation(line: 739, column: 12, scope: !1222)
!1240 = !DILocation(line: 739, column: 5, scope: !1222)
!1241 = distinct !DISubprogram(name: "lpDelete", scope: !1, file: !1, line: 746, type: !1242, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1244)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!129, !129, !129, !912}
!1244 = !{!1245, !1246, !1247}
!1245 = !DILocalVariable(name: "lp", arg: 1, scope: !1241, file: !1, line: 746, type: !129)
!1246 = !DILocalVariable(name: "p", arg: 2, scope: !1241, file: !1, line: 746, type: !129)
!1247 = !DILocalVariable(name: "newp", arg: 3, scope: !1241, file: !1, line: 746, type: !912)
!1248 = !DILocation(line: 746, column: 40, scope: !1241)
!1249 = !DILocation(line: 746, column: 59, scope: !1241)
!1250 = !DILocation(line: 746, column: 78, scope: !1241)
!1251 = !DILocation(line: 747, column: 12, scope: !1241)
!1252 = !DILocation(line: 747, column: 5, scope: !1241)
!1253 = distinct !DISubprogram(name: "lpBytes", scope: !1, file: !1, line: 751, type: !525, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1254)
!1254 = !{!1255}
!1255 = !DILocalVariable(name: "lp", arg: 1, scope: !1253, file: !1, line: 751, type: !129)
!1256 = !DILocation(line: 751, column: 33, scope: !1253)
!1257 = !DILocation(line: 752, column: 12, scope: !1253)
!1258 = !DILocation(line: 752, column: 5, scope: !1253)
!1259 = distinct !DISubprogram(name: "lpSeek", scope: !1, file: !1, line: 760, type: !1260, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1262)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!129, !129, !15}
!1262 = !{!1263, !1264, !1265, !1266, !1267, !1270}
!1263 = !DILocalVariable(name: "lp", arg: 1, scope: !1259, file: !1, line: 760, type: !129)
!1264 = !DILocalVariable(name: "index", arg: 2, scope: !1259, file: !1, line: 760, type: !15)
!1265 = !DILocalVariable(name: "forward", scope: !1259, file: !1, line: 761, type: !28)
!1266 = !DILocalVariable(name: "numele", scope: !1259, file: !1, line: 767, type: !16)
!1267 = !DILocalVariable(name: "ele", scope: !1268, file: !1, line: 788, type: !129)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 787, column: 18)
!1269 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 787, column: 9)
!1270 = !DILocalVariable(name: "ele", scope: !1271, file: !1, line: 795, type: !129)
!1271 = distinct !DILexicalBlock(scope: !1269, file: !1, line: 794, column: 12)
!1272 = !DILocation(line: 760, column: 38, scope: !1259)
!1273 = !DILocation(line: 760, column: 47, scope: !1259)
!1274 = !DILocation(line: 761, column: 9, scope: !1259)
!1275 = !DILocation(line: 767, column: 23, scope: !1259)
!1276 = !DILocation(line: 767, column: 14, scope: !1259)
!1277 = !DILocation(line: 768, column: 16, scope: !1278)
!1278 = distinct !DILexicalBlock(scope: !1259, file: !1, line: 768, column: 9)
!1279 = !DILocation(line: 0, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !1, line: 783, column: 13)
!1281 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 780, column: 12)
!1282 = !DILocation(line: 768, column: 9, scope: !1259)
!1283 = !DILocation(line: 769, column: 32, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 769, column: 13)
!1285 = distinct !DILexicalBlock(scope: !1278, file: !1, line: 768, column: 42)
!1286 = !DILocation(line: 769, column: 13, scope: !1285)
!1287 = !DILocation(line: 770, column: 13, scope: !1285)
!1288 = !DILocation(line: 774, column: 27, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1285, file: !1, line: 774, column: 13)
!1290 = !DILocation(line: 774, column: 21, scope: !1289)
!1291 = !DILocation(line: 774, column: 19, scope: !1289)
!1292 = !DILocation(line: 774, column: 13, scope: !1285)
!1293 = !DILocation(line: 787, column: 9, scope: !1259)
!1294 = !DILocation(line: 420, column: 39, scope: !662, inlinedAt: !1295)
!1295 = distinct !DILocation(line: 788, column: 30, scope: !1268)
!1296 = !DILocation(line: 421, column: 8, scope: !662, inlinedAt: !1295)
!1297 = !DILocation(line: 422, column: 9, scope: !668, inlinedAt: !1295)
!1298 = !DILocation(line: 422, column: 15, scope: !668, inlinedAt: !1295)
!1299 = !DILocation(line: 422, column: 26, scope: !668, inlinedAt: !1295)
!1300 = !DILocation(line: 424, column: 1, scope: !662, inlinedAt: !1295)
!1301 = !DILocation(line: 788, column: 24, scope: !1268)
!1302 = !DILocation(line: 789, column: 22, scope: !1268)
!1303 = !DILocation(line: 789, column: 26, scope: !1268)
!1304 = !DILocation(line: 789, column: 9, scope: !1268)
!1305 = !DILocation(line: 400, column: 38, scope: !603, inlinedAt: !1306)
!1306 = distinct !DILocation(line: 790, column: 19, scope: !1307)
!1307 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 789, column: 34)
!1308 = !DILocation(line: 400, column: 57, scope: !603, inlinedAt: !1306)
!1309 = !DILocation(line: 402, column: 9, scope: !603, inlinedAt: !1306)
!1310 = !DILocation(line: 403, column: 9, scope: !613, inlinedAt: !1306)
!1311 = !DILocation(line: 403, column: 14, scope: !613, inlinedAt: !1306)
!1312 = !DILocation(line: 403, column: 25, scope: !613, inlinedAt: !1306)
!1313 = !DILocation(line: 405, column: 1, scope: !603, inlinedAt: !1306)
!1314 = !DILocation(line: 791, column: 18, scope: !1307)
!1315 = distinct !{!1315, !1304, !1316}
!1316 = !DILocation(line: 792, column: 9, scope: !1268)
!1317 = !DILocation(line: 795, column: 30, scope: !1271)
!1318 = !DILocation(line: 795, column: 24, scope: !1271)
!1319 = !DILocation(line: 796, column: 22, scope: !1271)
!1320 = !DILocation(line: 796, column: 27, scope: !1271)
!1321 = !DILocation(line: 796, column: 9, scope: !1271)
!1322 = !DILocation(line: 410, column: 38, scope: !617, inlinedAt: !1323)
!1323 = distinct !DILocation(line: 797, column: 19, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 796, column: 35)
!1325 = !DILocation(line: 410, column: 57, scope: !617, inlinedAt: !1323)
!1326 = !DILocation(line: 411, column: 10, scope: !625, inlinedAt: !1323)
!1327 = !DILocation(line: 411, column: 14, scope: !625, inlinedAt: !1323)
!1328 = !DILocation(line: 411, column: 9, scope: !617, inlinedAt: !1323)
!1329 = !DILocation(line: 416, column: 1, scope: !617, inlinedAt: !1323)
!1330 = !DILocation(line: 412, column: 6, scope: !617, inlinedAt: !1323)
!1331 = !DILocation(line: 335, column: 41, scope: !447, inlinedAt: !1332)
!1332 = distinct !DILocation(line: 413, column: 24, scope: !617, inlinedAt: !1323)
!1333 = !DILocation(line: 336, column: 14, scope: !447, inlinedAt: !1332)
!1334 = !DILocation(line: 337, column: 14, scope: !447, inlinedAt: !1332)
!1335 = !DILocation(line: 339, column: 27, scope: !458, inlinedAt: !1332)
!1336 = !DILocation(line: 339, column: 32, scope: !458, inlinedAt: !1332)
!1337 = !DILocation(line: 339, column: 16, scope: !458, inlinedAt: !1332)
!1338 = !DILocation(line: 340, column: 20, scope: !462, inlinedAt: !1332)
!1339 = !DILocation(line: 340, column: 13, scope: !458, inlinedAt: !1332)
!1340 = !DILocation(line: 346, column: 1, scope: !447, inlinedAt: !1332)
!1341 = !DILocation(line: 296, column: 46, scope: !347, inlinedAt: !1342)
!1342 = distinct !DILocation(line: 414, column: 16, scope: !617, inlinedAt: !1323)
!1343 = !DILocation(line: 297, column: 9, scope: !347, inlinedAt: !1342)
!1344 = !DILocation(line: 342, column: 10, scope: !458, inlinedAt: !1332)
!1345 = !DILocation(line: 339, column: 39, scope: !458, inlinedAt: !1332)
!1346 = !DILocation(line: 339, column: 13, scope: !458, inlinedAt: !1332)
!1347 = !DILocation(line: 413, column: 14, scope: !617, inlinedAt: !1323)
!1348 = !DILocation(line: 296, column: 60, scope: !347, inlinedAt: !1342)
!1349 = !DILocation(line: 313, column: 16, scope: !381, inlinedAt: !1342)
!1350 = !DILocation(line: 0, scope: !447, inlinedAt: !1332)
!1351 = !DILocation(line: 297, column: 11, scope: !356, inlinedAt: !1342)
!1352 = !DILocation(line: 300, column: 18, scope: !366, inlinedAt: !1342)
!1353 = !DILocation(line: 300, column: 16, scope: !356, inlinedAt: !1342)
!1354 = !DILocation(line: 306, column: 18, scope: !381, inlinedAt: !1342)
!1355 = !DILocation(line: 306, column: 16, scope: !366, inlinedAt: !1342)
!1356 = !DILocation(line: 313, column: 18, scope: !400, inlinedAt: !1342)
!1357 = !DILocation(line: 0, scope: !403, inlinedAt: !1342)
!1358 = !DILocation(line: 331, column: 1, scope: !347, inlinedAt: !1342)
!1359 = !DILocation(line: 414, column: 13, scope: !617, inlinedAt: !1323)
!1360 = !DILocation(line: 415, column: 13, scope: !617, inlinedAt: !1323)
!1361 = !DILocation(line: 415, column: 21, scope: !617, inlinedAt: !1323)
!1362 = !DILocation(line: 798, column: 18, scope: !1324)
!1363 = distinct !{!1363, !1321, !1364}
!1364 = !DILocation(line: 799, column: 9, scope: !1271)
!1365 = !DILocation(line: 0, scope: !1271)
!1366 = !DILocation(line: 802, column: 1, scope: !1259)
