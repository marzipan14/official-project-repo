; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/listpack.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @lpStringToInt64(i8* nocapture readonly, i64, i64*) local_unnamed_addr #0 !dbg !25 {
  %4 = icmp eq i64 %1, 0, !dbg !44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !46
  br i1 %4, label %72, label %5, !dbg !46

; <label>:5:                                      ; preds = %3
  %6 = icmp eq i64 %1, 1, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  %7 = load i8, i8* %0, align 1, !dbg !50, !tbaa !52
  br i1 %6, label %8, label %13, !dbg !49

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8 %7, 48, !dbg !55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !56
  br i1 %9, label %10, label %13, !dbg !56

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i64* %2, null, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !60
  br i1 %11, label %72, label %12, !dbg !60

; <label>:12:                                     ; preds = %10
  store i64 0, i64* %2, align 8, !dbg !61, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br label %72, !dbg !64

; <label>:13:                                     ; preds = %5, %8
  %14 = icmp eq i8 %7, 45, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br i1 %14, label %15, label %19, !dbg !66

; <label>:15:                                     ; preds = %13
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %6, label %72, label %17, !dbg !69

; <label>:17:                                     ; preds = %15
  %18 = load i8, i8* %16, align 1, !dbg !70, !tbaa !52
  br label %19, !dbg !69

; <label>:19:                                     ; preds = %17, %13
  %20 = phi i8 [ %18, %17 ], [ %7, %13 ], !dbg !70
  %21 = phi i8* [ %16, %17 ], [ %0, %13 ], !dbg !72
  %22 = phi i64 [ 2, %17 ], [ 1, %13 ]
  %23 = phi i32 [ 1, %17 ], [ 0, %13 ], !dbg !72
  %24 = sext i8 %20 to i64, !dbg !70
  %25 = icmp sgt i8 %20, 48, !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %25, label %26, label %32, !dbg !74

; <label>:26:                                     ; preds = %19
  %27 = icmp slt i8 %20, 58, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %27, label %29, label %28, !dbg !76

; <label>:28:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br label %72, !dbg !77

; <label>:29:                                     ; preds = %26
  %30 = add nsw i64 %24, -48, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  %31 = icmp ult i64 %22, %1, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %31, label %36, label %58, !dbg !84

; <label>:32:                                     ; preds = %19
  %33 = icmp eq i8 %20, 48, !dbg !85
  %34 = and i1 %6, %33, !dbg !77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  br i1 %34, label %35, label %72, !dbg !77

; <label>:35:                                     ; preds = %32
  store i64 0, i64* %2, align 8, !dbg !86, !tbaa !62
  br label %72, !dbg !88

; <label>:36:                                     ; preds = %29, %52
  %37 = phi i8* [ %40, %52 ], [ %21, %29 ]
  %38 = phi i64 [ %54, %52 ], [ %30, %29 ]
  %39 = phi i64 [ %55, %52 ], [ %22, %29 ]
  %40 = getelementptr inbounds i8, i8* %37, i64 1, !dbg !89
  %41 = load i8, i8* %40, align 1, !dbg !91, !tbaa !52
  %42 = sext i8 %41 to i64, !dbg !91
  %43 = icmp sgt i8 %41, 47, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %43, label %44, label %57, !dbg !93

; <label>:44:                                     ; preds = %36
  %45 = icmp slt i8 %41, 58, !dbg !94
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  br i1 %45, label %46, label %57, !dbg !82

; <label>:46:                                     ; preds = %44
  %47 = icmp ugt i64 %38, 1844674407370955161, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !97
  br i1 %47, label %72, label %48, !dbg !97

; <label>:48:                                     ; preds = %46
  %49 = mul i64 %38, 10, !dbg !98
  %50 = sub nsw i64 47, %42, !dbg !99
  %51 = icmp ugt i64 %49, %50, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br i1 %51, label %72, label %52, !dbg !102

; <label>:52:                                     ; preds = %48
  %53 = add i64 %49, -48, !dbg !103
  %54 = add i64 %53, %42, !dbg !104
  %55 = add nuw i64 %39, 1, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !82
  %56 = icmp ult i64 %55, %1, !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %56, label %36, label %58, !dbg !84, !llvm.loop !106

; <label>:57:                                     ; preds = %44, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  br label %72, !dbg !109

; <label>:58:                                     ; preds = %52, %29
  %59 = phi i64 [ %30, %29 ], [ %54, %52 ], !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  %60 = icmp eq i32 %23, 0, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %60, label %67, label %61, !dbg !113

; <label>:61:                                     ; preds = %58
  %62 = icmp ugt i64 %59, -9223372036854775808, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %62, label %72, label %63, !dbg !117

; <label>:63:                                     ; preds = %61
  %64 = icmp eq i64* %2, null, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %64, label %72, label %65, !dbg !120

; <label>:65:                                     ; preds = %63
  %66 = sub i64 0, %59, !dbg !121
  store i64 %66, i64* %2, align 8, !dbg !122, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br label %72, !dbg !123

; <label>:67:                                     ; preds = %58
  %68 = icmp slt i64 %59, 0, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %68, label %72, label %69, !dbg !127

; <label>:69:                                     ; preds = %67
  %70 = icmp eq i64* %2, null, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %70, label %72, label %71, !dbg !130

; <label>:71:                                     ; preds = %69
  store i64 %59, i64* %2, align 8, !dbg !131, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br label %72, !dbg !132

; <label>:72:                                     ; preds = %48, %46, %65, %71, %69, %63, %67, %61, %32, %28, %15, %12, %10, %3, %57, %35
  %73 = phi i32 [ 0, %57 ], [ 1, %35 ], [ 0, %3 ], [ 1, %10 ], [ 1, %12 ], [ 0, %15 ], [ 0, %28 ], [ 0, %32 ], [ 0, %61 ], [ 0, %67 ], [ 1, %63 ], [ 1, %69 ], [ 1, %71 ], [ 1, %65 ], [ 0, %46 ], [ 0, %48 ], !dbg !133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  ret i32 %73, !dbg !136
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @lpNew() local_unnamed_addr #0 !dbg !137 {
  %1 = tail call i8* @zmalloc(i64 7) #4, !dbg !144
  %2 = icmp eq i8* %1, null, !dbg !146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  br i1 %2, label %10, label %3, !dbg !148

; <label>:3:                                      ; preds = %0
  store i8 7, i8* %1, align 1, !dbg !149, !tbaa !52
  %4 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !149
  store i8 0, i8* %4, align 1, !dbg !149, !tbaa !52
  %5 = getelementptr inbounds i8, i8* %1, i64 2, !dbg !149
  store i8 0, i8* %5, align 1, !dbg !149, !tbaa !52
  %6 = getelementptr inbounds i8, i8* %1, i64 3, !dbg !149
  store i8 0, i8* %6, align 1, !dbg !149, !tbaa !52
  %7 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !151
  store i8 0, i8* %7, align 1, !dbg !151, !tbaa !52
  %8 = getelementptr inbounds i8, i8* %1, i64 5, !dbg !151
  store i8 0, i8* %8, align 1, !dbg !151, !tbaa !52
  %9 = getelementptr inbounds i8, i8* %1, i64 6, !dbg !153
  store i8 -1, i8* %9, align 1, !dbg !154, !tbaa !52
  br label %10, !dbg !155

; <label>:10:                                     ; preds = %0, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  ret i8* %1, !dbg !157
}

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local void @lpFree(i8*) local_unnamed_addr #0 !dbg !158 {
  tail call void @zfree(i8* %0) #4, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  ret void, !dbg !165
}

; Function Attrs: noredzone
declare dso_local void @zfree(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lpEncodeGetType(i8* nocapture readonly, i32, i8*, i64* nocapture) local_unnamed_addr #0 !dbg !166 {
  %5 = alloca i64, align 8
  %6 = bitcast i64* %5 to i8*, !dbg !189
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #5, !dbg !189
  %7 = zext i32 %1 to i64, !dbg !190
  %8 = call i32 @lpStringToInt64(i8* %0, i64 %7, i64* nonnull %5) #6, !dbg !192
  %9 = icmp eq i32 %8, 0, !dbg !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %9, label %104, label %10, !dbg !193

; <label>:10:                                     ; preds = %4
  %11 = load i64, i64* %5, align 8, !dbg !194, !tbaa !62
  %12 = icmp ult i64 %11, 128, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  br i1 %12, label %13, label %15, !dbg !195

; <label>:13:                                     ; preds = %10
  %14 = trunc i64 %11 to i8, !dbg !196
  store i8 %14, i8* %2, align 1, !dbg !198, !tbaa !52
  br label %113, !dbg !199

; <label>:15:                                     ; preds = %10
  %16 = add i64 %11, 4096, !dbg !200
  %17 = icmp ult i64 %16, 8192, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  br i1 %17, label %18, label %29, !dbg !200

; <label>:18:                                     ; preds = %15
  %19 = icmp slt i64 %11, 0, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br i1 %19, label %20, label %22, !dbg !204

; <label>:20:                                     ; preds = %18
  %21 = add nsw i64 %11, 8192, !dbg !205
  store i64 %21, i64* %5, align 8, !dbg !206, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br label %22, !dbg !207

; <label>:22:                                     ; preds = %20, %18
  %23 = phi i64 [ %21, %20 ], [ %11, %18 ], !dbg !208
  %24 = lshr i64 %23, 8, !dbg !209
  %25 = trunc i64 %24 to i8, !dbg !210
  %26 = or i8 %25, -64, !dbg !210
  store i8 %26, i8* %2, align 1, !dbg !211, !tbaa !52
  %27 = trunc i64 %23 to i8, !dbg !212
  %28 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !213
  store i8 %27, i8* %28, align 1, !dbg !214, !tbaa !52
  br label %113, !dbg !215

; <label>:29:                                     ; preds = %15
  %30 = add i64 %11, 32768, !dbg !216
  %31 = icmp ult i64 %30, 65536, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %31, label %32, label %43, !dbg !216

; <label>:32:                                     ; preds = %29
  %33 = icmp slt i64 %11, 0, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %33, label %34, label %36, !dbg !220

; <label>:34:                                     ; preds = %32
  %35 = add nsw i64 %11, 65536, !dbg !221
  store i64 %35, i64* %5, align 8, !dbg !222, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br label %36, !dbg !223

; <label>:36:                                     ; preds = %34, %32
  %37 = phi i64 [ %35, %34 ], [ %11, %32 ], !dbg !224
  store i8 -15, i8* %2, align 1, !dbg !225, !tbaa !52
  %38 = trunc i64 %37 to i8, !dbg !224
  %39 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !226
  store i8 %38, i8* %39, align 1, !dbg !227, !tbaa !52
  %40 = lshr i64 %37, 8, !dbg !228
  %41 = trunc i64 %40 to i8, !dbg !229
  %42 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !230
  store i8 %41, i8* %42, align 1, !dbg !231, !tbaa !52
  br label %113, !dbg !232

; <label>:43:                                     ; preds = %29
  %44 = add i64 %11, 8388608, !dbg !233
  %45 = icmp ult i64 %44, 16777216, !dbg !233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br i1 %45, label %46, label %60, !dbg !233

; <label>:46:                                     ; preds = %43
  %47 = icmp slt i64 %11, 0, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %47, label %48, label %50, !dbg !237

; <label>:48:                                     ; preds = %46
  %49 = add nsw i64 %11, 16777216, !dbg !238
  store i64 %49, i64* %5, align 8, !dbg !239, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !240
  br label %50, !dbg !240

; <label>:50:                                     ; preds = %48, %46
  %51 = phi i64 [ %49, %48 ], [ %11, %46 ], !dbg !241
  store i8 -14, i8* %2, align 1, !dbg !242, !tbaa !52
  %52 = trunc i64 %51 to i8, !dbg !241
  %53 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !243
  store i8 %52, i8* %53, align 1, !dbg !244, !tbaa !52
  %54 = lshr i64 %51, 8, !dbg !245
  %55 = trunc i64 %54 to i8, !dbg !246
  %56 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !247
  store i8 %55, i8* %56, align 1, !dbg !248, !tbaa !52
  %57 = lshr i64 %51, 16, !dbg !249
  %58 = trunc i64 %57 to i8, !dbg !250
  %59 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !251
  store i8 %58, i8* %59, align 1, !dbg !252, !tbaa !52
  br label %113, !dbg !253

; <label>:60:                                     ; preds = %43
  %61 = add i64 %11, 2147483648, !dbg !254
  %62 = icmp ult i64 %61, 4294967296, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %62, label %63, label %80, !dbg !254

; <label>:63:                                     ; preds = %60
  %64 = icmp slt i64 %11, 0, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %64, label %65, label %67, !dbg !258

; <label>:65:                                     ; preds = %63
  %66 = add nsw i64 %11, 4294967296, !dbg !259
  store i64 %66, i64* %5, align 8, !dbg !260, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br label %67, !dbg !261

; <label>:67:                                     ; preds = %65, %63
  %68 = phi i64 [ %66, %65 ], [ %11, %63 ], !dbg !262
  store i8 -13, i8* %2, align 1, !dbg !263, !tbaa !52
  %69 = trunc i64 %68 to i8, !dbg !262
  %70 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !264
  store i8 %69, i8* %70, align 1, !dbg !265, !tbaa !52
  %71 = lshr i64 %68, 8, !dbg !266
  %72 = trunc i64 %71 to i8, !dbg !267
  %73 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !268
  store i8 %72, i8* %73, align 1, !dbg !269, !tbaa !52
  %74 = lshr i64 %68, 16, !dbg !270
  %75 = trunc i64 %74 to i8, !dbg !271
  %76 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !272
  store i8 %75, i8* %76, align 1, !dbg !273, !tbaa !52
  %77 = lshr i64 %68, 24, !dbg !274
  %78 = trunc i64 %77 to i8, !dbg !275
  %79 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !276
  store i8 %78, i8* %79, align 1, !dbg !277, !tbaa !52
  br label %113, !dbg !278

; <label>:80:                                     ; preds = %60
  store i8 -12, i8* %2, align 1, !dbg !280, !tbaa !52
  %81 = trunc i64 %11 to i8, !dbg !281
  %82 = getelementptr inbounds i8, i8* %2, i64 1, !dbg !282
  store i8 %81, i8* %82, align 1, !dbg !283, !tbaa !52
  %83 = lshr i64 %11, 8, !dbg !284
  %84 = trunc i64 %83 to i8, !dbg !285
  %85 = getelementptr inbounds i8, i8* %2, i64 2, !dbg !286
  store i8 %84, i8* %85, align 1, !dbg !287, !tbaa !52
  %86 = lshr i64 %11, 16, !dbg !288
  %87 = trunc i64 %86 to i8, !dbg !289
  %88 = getelementptr inbounds i8, i8* %2, i64 3, !dbg !290
  store i8 %87, i8* %88, align 1, !dbg !291, !tbaa !52
  %89 = lshr i64 %11, 24, !dbg !292
  %90 = trunc i64 %89 to i8, !dbg !293
  %91 = getelementptr inbounds i8, i8* %2, i64 4, !dbg !294
  store i8 %90, i8* %91, align 1, !dbg !295, !tbaa !52
  %92 = lshr i64 %11, 32, !dbg !296
  %93 = trunc i64 %92 to i8, !dbg !297
  %94 = getelementptr inbounds i8, i8* %2, i64 5, !dbg !298
  store i8 %93, i8* %94, align 1, !dbg !299, !tbaa !52
  %95 = lshr i64 %11, 40, !dbg !300
  %96 = trunc i64 %95 to i8, !dbg !301
  %97 = getelementptr inbounds i8, i8* %2, i64 6, !dbg !302
  store i8 %96, i8* %97, align 1, !dbg !303, !tbaa !52
  %98 = lshr i64 %11, 48, !dbg !304
  %99 = trunc i64 %98 to i8, !dbg !305
  %100 = getelementptr inbounds i8, i8* %2, i64 7, !dbg !306
  store i8 %99, i8* %100, align 1, !dbg !307, !tbaa !52
  %101 = lshr i64 %11, 56, !dbg !308
  %102 = trunc i64 %101 to i8, !dbg !309
  %103 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !310
  store i8 %102, i8* %103, align 1, !dbg !311, !tbaa !52
  br label %113

; <label>:104:                                    ; preds = %4
  %105 = icmp ult i32 %1, 64, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %105, label %109, label %106, !dbg !315

; <label>:106:                                    ; preds = %104
  %107 = icmp ult i32 %1, 4096, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  %108 = select i1 %107, i32 2, i32 5, !dbg !319
  br label %109, !dbg !319

; <label>:109:                                    ; preds = %106, %104
  %110 = phi i32 [ 1, %104 ], [ %108, %106 ]
  %111 = add i32 %110, %1, !dbg !320
  %112 = zext i32 %111 to i64, !dbg !320
  br label %113, !dbg !321

; <label>:113:                                    ; preds = %13, %36, %67, %80, %50, %22, %109
  %114 = phi i64 [ %112, %109 ], [ 2, %22 ], [ 4, %50 ], [ 9, %80 ], [ 5, %67 ], [ 3, %36 ], [ 1, %13 ]
  %115 = phi i32 [ 1, %109 ], [ 0, %22 ], [ 0, %50 ], [ 0, %80 ], [ 0, %67 ], [ 0, %36 ], [ 0, %13 ], !dbg !322
  store i64 %114, i64* %3, align 8, !dbg !320, !tbaa !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #5, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  ret i32 %115, !dbg !324
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lpEncodeBacklen(i8*, i64) local_unnamed_addr #0 !dbg !325 {
  %3 = icmp ult i64 %1, 128, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %3, label %4, label %8, !dbg !335

; <label>:4:                                      ; preds = %2
  %5 = icmp eq i8* %0, null, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %5, label %69, label %6, !dbg !339

; <label>:6:                                      ; preds = %4
  %7 = trunc i64 %1 to i8, !dbg !340
  store i8 %7, i8* %0, align 1, !dbg !341, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br label %69, !dbg !342

; <label>:8:                                      ; preds = %2
  %9 = icmp ult i64 %1, 16383, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %9, label %10, label %18, !dbg !345

; <label>:10:                                     ; preds = %8
  %11 = icmp eq i8* %0, null, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %11, label %69, label %12, !dbg !349

; <label>:12:                                     ; preds = %10
  %13 = lshr i64 %1, 7, !dbg !350
  %14 = trunc i64 %13 to i8, !dbg !352
  store i8 %14, i8* %0, align 1, !dbg !353, !tbaa !52
  %15 = trunc i64 %1 to i8, !dbg !354
  %16 = or i8 %15, -128, !dbg !354
  %17 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !355
  store i8 %16, i8* %17, align 1, !dbg !356, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br label %69, !dbg !357

; <label>:18:                                     ; preds = %8
  %19 = icmp ult i64 %1, 2097151, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  br i1 %19, label %20, label %32, !dbg !360

; <label>:20:                                     ; preds = %18
  %21 = icmp eq i8* %0, null, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  br i1 %21, label %69, label %22, !dbg !364

; <label>:22:                                     ; preds = %20
  %23 = lshr i64 %1, 14, !dbg !365
  %24 = trunc i64 %23 to i8, !dbg !367
  store i8 %24, i8* %0, align 1, !dbg !368, !tbaa !52
  %25 = lshr i64 %1, 7, !dbg !369
  %26 = trunc i64 %25 to i8, !dbg !370
  %27 = or i8 %26, -128, !dbg !370
  %28 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !371
  store i8 %27, i8* %28, align 1, !dbg !372, !tbaa !52
  %29 = trunc i64 %1 to i8, !dbg !373
  %30 = or i8 %29, -128, !dbg !373
  %31 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !374
  store i8 %30, i8* %31, align 1, !dbg !375, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br label %69, !dbg !376

; <label>:32:                                     ; preds = %18
  %33 = icmp ult i64 %1, 268435455, !dbg !377
  %34 = icmp ne i8* %0, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %33, label %35, label %50, !dbg !382

; <label>:35:                                     ; preds = %32
  br i1 %34, label %36, label %69, !dbg !384

; <label>:36:                                     ; preds = %35
  %37 = lshr i64 %1, 21, !dbg !386
  %38 = trunc i64 %37 to i8, !dbg !389
  store i8 %38, i8* %0, align 1, !dbg !390, !tbaa !52
  %39 = lshr i64 %1, 14, !dbg !391
  %40 = trunc i64 %39 to i8, !dbg !392
  %41 = or i8 %40, -128, !dbg !392
  %42 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !393
  store i8 %41, i8* %42, align 1, !dbg !394, !tbaa !52
  %43 = lshr i64 %1, 7, !dbg !395
  %44 = trunc i64 %43 to i8, !dbg !396
  %45 = or i8 %44, -128, !dbg !396
  %46 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !397
  store i8 %45, i8* %46, align 1, !dbg !398, !tbaa !52
  %47 = trunc i64 %1 to i8, !dbg !399
  %48 = or i8 %47, -128, !dbg !399
  %49 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !400
  store i8 %48, i8* %49, align 1, !dbg !401, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  br label %69, !dbg !402

; <label>:50:                                     ; preds = %32
  br i1 %34, label %51, label %69, !dbg !403

; <label>:51:                                     ; preds = %50
  %52 = lshr i64 %1, 28, !dbg !404
  %53 = trunc i64 %52 to i8, !dbg !406
  store i8 %53, i8* %0, align 1, !dbg !407, !tbaa !52
  %54 = lshr i64 %1, 21, !dbg !408
  %55 = trunc i64 %54 to i8, !dbg !409
  %56 = or i8 %55, -128, !dbg !409
  %57 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !410
  store i8 %56, i8* %57, align 1, !dbg !411, !tbaa !52
  %58 = lshr i64 %1, 14, !dbg !412
  %59 = trunc i64 %58 to i8, !dbg !413
  %60 = or i8 %59, -128, !dbg !413
  %61 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !414
  store i8 %60, i8* %61, align 1, !dbg !415, !tbaa !52
  %62 = lshr i64 %1, 7, !dbg !416
  %63 = trunc i64 %62 to i8, !dbg !417
  %64 = or i8 %63, -128, !dbg !417
  %65 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !418
  store i8 %64, i8* %65, align 1, !dbg !419, !tbaa !52
  %66 = trunc i64 %1 to i8, !dbg !420
  %67 = or i8 %66, -128, !dbg !420
  %68 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !421
  store i8 %67, i8* %68, align 1, !dbg !422, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br label %69, !dbg !423

; <label>:69:                                     ; preds = %50, %51, %35, %36, %22, %20, %12, %10, %6, %4
  %70 = phi i64 [ 1, %4 ], [ 1, %6 ], [ 2, %10 ], [ 2, %12 ], [ 3, %20 ], [ 3, %22 ], [ 4, %36 ], [ 4, %35 ], [ 5, %51 ], [ 5, %50 ], !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  ret i64 %70, !dbg !425
}

; Function Attrs: noredzone nounwind
define dso_local i64 @lpDecodeBacklen(i8* nocapture readonly) local_unnamed_addr #0 !dbg !426 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  %2 = load i8, i8* %0, align 1, !dbg !437, !tbaa !52
  %3 = and i8 %2, 127, !dbg !439
  %4 = zext i8 %3 to i64, !dbg !440
  %5 = icmp slt i8 %2, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %5, label %6, label %14, !dbg !443

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 -1, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %8 = load i8, i8* %7, align 1, !dbg !437, !tbaa !52
  %9 = and i8 %8, 127, !dbg !439
  %10 = zext i8 %9 to i64, !dbg !440
  %11 = shl nuw nsw i64 %10, 7, !dbg !446
  %12 = or i64 %11, %4, !dbg !447
  %13 = icmp slt i8 %8, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %13, label %16, label %14, !dbg !443

; <label>:14:                                     ; preds = %1, %6, %16, %24, %32, %40
  %15 = phi i64 [ -1, %40 ], [ %4, %1 ], [ %12, %6 ], [ %22, %16 ], [ %30, %24 ], [ %38, %32 ], !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  ret i64 %15, !dbg !451

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds i8, i8* %0, i64 -2, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %18 = load i8, i8* %17, align 1, !dbg !437, !tbaa !52
  %19 = and i8 %18, 127, !dbg !439
  %20 = zext i8 %19 to i64, !dbg !440
  %21 = shl nuw nsw i64 %20, 14, !dbg !446
  %22 = or i64 %21, %12, !dbg !447
  %23 = icmp slt i8 %18, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %23, label %24, label %14, !dbg !443

; <label>:24:                                     ; preds = %16
  %25 = getelementptr inbounds i8, i8* %0, i64 -3, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %26 = load i8, i8* %25, align 1, !dbg !437, !tbaa !52
  %27 = and i8 %26, 127, !dbg !439
  %28 = zext i8 %27 to i64, !dbg !440
  %29 = shl nuw nsw i64 %28, 21, !dbg !446
  %30 = or i64 %29, %22, !dbg !447
  %31 = icmp slt i8 %26, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %31, label %32, label %14, !dbg !443

; <label>:32:                                     ; preds = %24
  %33 = getelementptr inbounds i8, i8* %0, i64 -4, !dbg !444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  %34 = load i8, i8* %33, align 1, !dbg !437, !tbaa !52
  %35 = and i8 %34, 127, !dbg !439
  %36 = zext i8 %35 to i64, !dbg !440
  %37 = shl nuw nsw i64 %36, 28, !dbg !446
  %38 = or i64 %37, %30, !dbg !447
  %39 = icmp slt i8 %34, 0, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %39, label %40, label %14, !dbg !443

; <label>:40:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  br label %14, !dbg !452
}

; Function Attrs: noredzone nounwind
define dso_local void @lpEncodeString(i8*, i8*, i32) local_unnamed_addr #0 !dbg !453 {
  %4 = icmp ult i32 %2, 64, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  br i1 %4, label %5, label %11, !dbg !465

; <label>:5:                                      ; preds = %3
  %6 = trunc i32 %2 to i8, !dbg !466
  %7 = or i8 %6, -128, !dbg !466
  store i8 %7, i8* %0, align 1, !dbg !468, !tbaa !52
  %8 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !469
  %9 = zext i32 %2 to i64, !dbg !470
  %10 = tail call i8* @memcpy(i8* nonnull %8, i8* %1, i64 %9) #4, !dbg !471
  br label %37, !dbg !472

; <label>:11:                                     ; preds = %3
  %12 = icmp ult i32 %2, 4096, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %12, label %13, label %22, !dbg !475

; <label>:13:                                     ; preds = %11
  %14 = lshr i32 %2, 8, !dbg !476
  %15 = trunc i32 %14 to i8, !dbg !478
  %16 = or i8 %15, -32, !dbg !478
  store i8 %16, i8* %0, align 1, !dbg !479, !tbaa !52
  %17 = trunc i32 %2 to i8, !dbg !480
  %18 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !481
  store i8 %17, i8* %18, align 1, !dbg !482, !tbaa !52
  %19 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !483
  %20 = zext i32 %2 to i64, !dbg !484
  %21 = tail call i8* @memcpy(i8* nonnull %19, i8* %1, i64 %20) #4, !dbg !485
  br label %37, !dbg !486

; <label>:22:                                     ; preds = %11
  store i8 -16, i8* %0, align 1, !dbg !487, !tbaa !52
  %23 = trunc i32 %2 to i8, !dbg !489
  %24 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !490
  store i8 %23, i8* %24, align 1, !dbg !491, !tbaa !52
  %25 = lshr i32 %2, 8, !dbg !492
  %26 = trunc i32 %25 to i8, !dbg !493
  %27 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !494
  store i8 %26, i8* %27, align 1, !dbg !495, !tbaa !52
  %28 = lshr i32 %2, 16, !dbg !496
  %29 = trunc i32 %28 to i8, !dbg !497
  %30 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !498
  store i8 %29, i8* %30, align 1, !dbg !499, !tbaa !52
  %31 = lshr i32 %2, 24, !dbg !500
  %32 = trunc i32 %31 to i8, !dbg !501
  %33 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !502
  store i8 %32, i8* %33, align 1, !dbg !503, !tbaa !52
  %34 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !504
  %35 = zext i32 %2 to i64, !dbg !505
  %36 = tail call i8* @memcpy(i8* nonnull %34, i8* %1, i64 %35) #4, !dbg !506
  br label %37

; <label>:37:                                     ; preds = %13, %22, %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  ret void, !dbg !507
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i32 @lpCurrentEncodedSize(i8* nocapture readonly) local_unnamed_addr #0 !dbg !508 {
  %2 = load i8, i8* %0, align 1, !dbg !514, !tbaa !52
  %3 = zext i8 %2 to i32, !dbg !514
  %4 = icmp sgt i8 %2, -1, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %4, label %5, label %6, !dbg !516

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %64, !dbg !517

; <label>:6:                                      ; preds = %1
  %7 = and i32 %3, 192, !dbg !518
  %8 = icmp eq i32 %7, 128, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %8, label %9, label %12, !dbg !520

; <label>:9:                                      ; preds = %6
  %10 = and i32 %3, 63, !dbg !521
  %11 = add nuw nsw i32 %10, 1, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br label %64, !dbg !523

; <label>:12:                                     ; preds = %6
  %13 = and i32 %3, 224, !dbg !524
  %14 = icmp eq i32 %13, 192, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  br i1 %14, label %15, label %16, !dbg !526

; <label>:15:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br label %64, !dbg !527

; <label>:16:                                     ; preds = %12
  %17 = icmp eq i8 %2, -15, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %17, label %18, label %19, !dbg !530

; <label>:18:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !531
  br label %64, !dbg !531

; <label>:19:                                     ; preds = %16
  %20 = icmp eq i8 %2, -14, !dbg !532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %20, label %21, label %22, !dbg !534

; <label>:21:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  br label %64, !dbg !535

; <label>:22:                                     ; preds = %19
  %23 = icmp eq i8 %2, -13, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %23, label %24, label %25, !dbg !538

; <label>:24:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %64, !dbg !539

; <label>:25:                                     ; preds = %22
  %26 = icmp eq i8 %2, -12, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %26, label %27, label %28, !dbg !542

; <label>:27:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  br label %64, !dbg !543

; <label>:28:                                     ; preds = %25
  %29 = and i32 %3, 240, !dbg !544
  %30 = icmp eq i32 %29, 224, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %30, label %31, label %39, !dbg !546

; <label>:31:                                     ; preds = %28
  %32 = shl nuw nsw i32 %3, 8, !dbg !547
  %33 = and i32 %32, 3840, !dbg !547
  %34 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !547
  %35 = load i8, i8* %34, align 1, !dbg !547, !tbaa !52
  %36 = zext i8 %35 to i32, !dbg !547
  %37 = or i32 %33, %36, !dbg !547
  %38 = add nuw nsw i32 %37, 2, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br label %64, !dbg !549

; <label>:39:                                     ; preds = %28
  %40 = icmp eq i8 %2, -16, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %40, label %41, label %61, !dbg !552

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !553
  %43 = load i8, i8* %42, align 1, !dbg !553, !tbaa !52
  %44 = zext i8 %43 to i32, !dbg !553
  %45 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !553
  %46 = load i8, i8* %45, align 1, !dbg !553, !tbaa !52
  %47 = zext i8 %46 to i32, !dbg !553
  %48 = shl nuw nsw i32 %47, 8, !dbg !553
  %49 = or i32 %48, %44, !dbg !553
  %50 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !553
  %51 = load i8, i8* %50, align 1, !dbg !553, !tbaa !52
  %52 = zext i8 %51 to i32, !dbg !553
  %53 = shl nuw nsw i32 %52, 16, !dbg !553
  %54 = or i32 %49, %53, !dbg !553
  %55 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !553
  %56 = load i8, i8* %55, align 1, !dbg !553, !tbaa !52
  %57 = zext i8 %56 to i32, !dbg !553
  %58 = shl nuw i32 %57, 24, !dbg !553
  %59 = or i32 %54, %58, !dbg !553
  %60 = add i32 %59, 5, !dbg !554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br label %64, !dbg !555

; <label>:61:                                     ; preds = %39
  %62 = icmp eq i8 %2, -1, !dbg !556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  %63 = zext i1 %62 to i32, !dbg !560
  br label %64, !dbg !560

; <label>:64:                                     ; preds = %61, %41, %31, %27, %24, %21, %18, %15, %9, %5
  %65 = phi i32 [ 1, %5 ], [ %11, %9 ], [ 2, %15 ], [ 3, %18 ], [ 4, %21 ], [ 5, %24 ], [ 9, %27 ], [ %38, %31 ], [ %60, %41 ], [ %63, %61 ], !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  ret i32 %65, !dbg !561
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @lpSkip(i8* readonly) local_unnamed_addr #0 !dbg !562 {
  %2 = tail call i32 @lpCurrentEncodedSize(i8* %0) #6, !dbg !569
  %3 = zext i32 %2 to i64, !dbg !569
  %4 = icmp ult i32 %2, 128, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %4, label %5, label %6, !dbg !575

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !576
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  br label %15, !dbg !577

; <label>:6:                                      ; preds = %1
  %7 = icmp ult i32 %2, 16383, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %7, label %8, label %9, !dbg !579

; <label>:8:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  br label %15, !dbg !581

; <label>:9:                                      ; preds = %6
  %10 = icmp ult i32 %2, 2097151, !dbg !582
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %10, label %11, label %12, !dbg !583

; <label>:11:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !585
  br label %15, !dbg !585

; <label>:12:                                     ; preds = %9
  %13 = icmp ult i32 %2, 268435455, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %14 = select i1 %13, i64 4, i64 5, !dbg !590
  br label %15, !dbg !590

; <label>:15:                                     ; preds = %12, %5, %8, %11
  %16 = phi i64 [ 1, %5 ], [ 2, %8 ], [ 3, %11 ], [ %14, %12 ], !dbg !588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !591
  %17 = add nuw nsw i64 %16, %3, !dbg !592
  %18 = getelementptr inbounds i8, i8* %0, i64 %17, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret i8* %18, !dbg !594
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpNext(i8* nocapture readnone, i8* readonly) local_unnamed_addr #0 !dbg !595 {
  %3 = tail call i32 @lpCurrentEncodedSize(i8* %1) #4, !dbg !605
  %4 = zext i32 %3 to i64, !dbg !605
  %5 = icmp ult i32 %3, 128, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br i1 %5, label %6, label %7, !dbg !611

; <label>:6:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br label %16, !dbg !613

; <label>:7:                                      ; preds = %2
  %8 = icmp ult i32 %3, 16383, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %8, label %9, label %10, !dbg !615

; <label>:9:                                      ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !617
  br label %16, !dbg !617

; <label>:10:                                     ; preds = %7
  %11 = icmp ult i32 %3, 2097151, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  br i1 %11, label %12, label %13, !dbg !619

; <label>:12:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br label %16, !dbg !621

; <label>:13:                                     ; preds = %10
  %14 = icmp ult i32 %3, 268435455, !dbg !622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %15 = select i1 %14, i64 4, i64 5, !dbg !626
  br label %16, !dbg !626

; <label>:16:                                     ; preds = %6, %9, %12, %13
  %17 = phi i64 [ 1, %6 ], [ 2, %9 ], [ 3, %12 ], [ %15, %13 ], !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  %18 = add nuw nsw i64 %17, %4, !dbg !628
  %19 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  %20 = load i8, i8* %19, align 1, !dbg !631, !tbaa !52
  %21 = icmp eq i8 %20, -1, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !634
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  %22 = select i1 %21, i8* null, i8* %19, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  ret i8* %22, !dbg !637
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpPrev(i8*, i8*) local_unnamed_addr #0 !dbg !638 {
  %3 = ptrtoint i8* %1 to i64, !dbg !645
  %4 = ptrtoint i8* %0 to i64, !dbg !645
  %5 = sub i64 %3, %4, !dbg !645
  %6 = icmp eq i64 %5, 6, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %6, label %69, label %7, !dbg !648

; <label>:7:                                      ; preds = %2
  %8 = getelementptr inbounds i8, i8* %1, i64 -1, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  %9 = load i8, i8* %8, align 1, !dbg !655, !tbaa !52
  %10 = and i8 %9, 127, !dbg !656
  %11 = zext i8 %10 to i64, !dbg !657
  %12 = icmp slt i8 %9, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %12, label %14, label %13, !dbg !659

; <label>:13:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br label %50, !dbg !666

; <label>:14:                                     ; preds = %7
  %15 = getelementptr inbounds i8, i8* %1, i64 -2, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %16 = load i8, i8* %15, align 1, !dbg !655, !tbaa !52
  %17 = and i8 %16, 127, !dbg !656
  %18 = zext i8 %17 to i64, !dbg !657
  %19 = shl nuw nsw i64 %18, 7, !dbg !669
  %20 = or i64 %19, %11, !dbg !670
  %21 = icmp slt i8 %16, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %21, label %22, label %47, !dbg !659

; <label>:22:                                     ; preds = %14
  %23 = getelementptr inbounds i8, i8* %1, i64 -3, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %24 = load i8, i8* %23, align 1, !dbg !655, !tbaa !52
  %25 = and i8 %24, 127, !dbg !656
  %26 = zext i8 %25 to i64, !dbg !657
  %27 = shl nuw nsw i64 %26, 14, !dbg !669
  %28 = or i64 %27, %20, !dbg !670
  %29 = icmp slt i8 %24, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %29, label %30, label %47, !dbg !659

; <label>:30:                                     ; preds = %22
  %31 = getelementptr inbounds i8, i8* %1, i64 -4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %32 = load i8, i8* %31, align 1, !dbg !655, !tbaa !52
  %33 = and i8 %32, 127, !dbg !656
  %34 = zext i8 %33 to i64, !dbg !657
  %35 = shl nuw nsw i64 %34, 21, !dbg !669
  %36 = or i64 %35, %28, !dbg !670
  %37 = icmp slt i8 %32, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %37, label %38, label %47, !dbg !659

; <label>:38:                                     ; preds = %30
  %39 = getelementptr inbounds i8, i8* %1, i64 -5, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %40 = load i8, i8* %39, align 1, !dbg !655, !tbaa !52
  %41 = and i8 %40, 127, !dbg !656
  %42 = zext i8 %41 to i64, !dbg !657
  %43 = shl nuw nsw i64 %42, 28, !dbg !669
  %44 = or i64 %43, %36, !dbg !670
  %45 = icmp slt i8 %40, 0, !dbg !658
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %45, label %46, label %47, !dbg !659

; <label>:46:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br label %60, !dbg !674

; <label>:47:                                     ; preds = %14, %22, %30, %38
  %48 = phi i64 [ %20, %14 ], [ %28, %22 ], [ %36, %30 ], [ %44, %38 ], !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %49 = icmp ult i64 %48, 128, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  br i1 %49, label %50, label %52, !dbg !666

; <label>:50:                                     ; preds = %13, %47
  %51 = phi i64 [ %11, %13 ], [ %48, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  br label %62, !dbg !678

; <label>:52:                                     ; preds = %47
  %53 = icmp ult i64 %48, 16383, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %53, label %54, label %55, !dbg !672

; <label>:54:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  br label %62, !dbg !681

; <label>:55:                                     ; preds = %52
  %56 = icmp ult i64 %48, 2097151, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %56, label %57, label %58, !dbg !673

; <label>:57:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br label %62, !dbg !684

; <label>:58:                                     ; preds = %55
  %59 = icmp ult i64 %48, 268435455, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %59, label %62, label %60, !dbg !674

; <label>:60:                                     ; preds = %46, %58
  %61 = phi i64 [ -1, %46 ], [ %48, %58 ]
  br label %62, !dbg !686

; <label>:62:                                     ; preds = %58, %50, %54, %57, %60
  %63 = phi i64 [ %51, %50 ], [ %48, %54 ], [ %48, %57 ], [ %61, %60 ], [ %48, %58 ]
  %64 = phi i64 [ 1, %50 ], [ 2, %54 ], [ 3, %57 ], [ 5, %60 ], [ 4, %58 ], !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  %65 = add i64 %63, %64, !dbg !689
  %66 = sub i64 0, %65, !dbg !690
  %67 = getelementptr inbounds i8, i8* %8, i64 %66, !dbg !690
  %68 = getelementptr inbounds i8, i8* %67, i64 1, !dbg !691
  br label %69

; <label>:69:                                     ; preds = %2, %62
  %70 = phi i8* [ %68, %62 ], [ null, %2 ], !dbg !687
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  ret i8* %70, !dbg !692
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpFirst(i8* readonly) local_unnamed_addr #0 !dbg !693 {
  %2 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !697
  %3 = load i8, i8* %2, align 1, !dbg !698, !tbaa !52
  %4 = icmp eq i8 %3, -1, !dbg !700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  %5 = select i1 %4, i8* null, i8* %2, !dbg !703
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  ret i8* %5, !dbg !704
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpLast(i8*) local_unnamed_addr #0 !dbg !705 {
  %2 = load i8, i8* %0, align 1, !dbg !710, !tbaa !52
  %3 = zext i8 %2 to i64, !dbg !710
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !710
  %5 = load i8, i8* %4, align 1, !dbg !710, !tbaa !52
  %6 = zext i8 %5 to i64, !dbg !710
  %7 = shl nuw nsw i64 %6, 8, !dbg !710
  %8 = or i64 %7, %3, !dbg !710
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !710
  %10 = load i8, i8* %9, align 1, !dbg !710, !tbaa !52
  %11 = zext i8 %10 to i64, !dbg !710
  %12 = shl nuw nsw i64 %11, 16, !dbg !710
  %13 = or i64 %8, %12, !dbg !710
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !710
  %15 = load i8, i8* %14, align 1, !dbg !710, !tbaa !52
  %16 = zext i8 %15 to i64, !dbg !710
  %17 = shl nuw nsw i64 %16, 24, !dbg !710
  %18 = or i64 %13, %17, !dbg !710
  %19 = getelementptr inbounds i8, i8* %0, i64 %18, !dbg !711
  %20 = getelementptr inbounds i8, i8* %19, i64 -1, !dbg !712
  %21 = tail call i8* @lpPrev(i8* %0, i8* nonnull %20) #6, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  ret i8* %21, !dbg !715
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lpLength(i8*) local_unnamed_addr #0 !dbg !716 {
  %2 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !723
  %3 = load i8, i8* %2, align 1, !dbg !723, !tbaa !52
  %4 = zext i8 %3 to i32, !dbg !723
  %5 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !723
  %6 = load i8, i8* %5, align 1, !dbg !723, !tbaa !52
  %7 = zext i8 %6 to i32, !dbg !723
  %8 = shl nuw nsw i32 %7, 8, !dbg !723
  %9 = or i32 %8, %4, !dbg !723
  %10 = icmp eq i32 %9, 65535, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  br i1 %10, label %11, label %48, !dbg !727

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !731
  %13 = load i8, i8* %12, align 1, !dbg !732, !tbaa !52
  %14 = icmp eq i8 %13, -1, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %14, label %15, label %16, !dbg !737

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br label %43, !dbg !738

; <label>:16:                                     ; preds = %11, %33
  %17 = phi i8* [ %39, %33 ], [ %12, %11 ]
  %18 = phi i32 [ %19, %33 ], [ 0, %11 ]
  %19 = add i32 %18, 1, !dbg !740
  %20 = tail call i32 @lpCurrentEncodedSize(i8* nonnull %17) #4, !dbg !747
  %21 = zext i32 %20 to i64, !dbg !747
  %22 = icmp ult i32 %20, 128, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  br i1 %22, label %23, label %24, !dbg !753

; <label>:23:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br label %33, !dbg !755

; <label>:24:                                     ; preds = %16
  %25 = icmp ult i32 %20, 16383, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br i1 %25, label %26, label %27, !dbg !757

; <label>:26:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  br label %33, !dbg !759

; <label>:27:                                     ; preds = %24
  %28 = icmp ult i32 %20, 2097151, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %28, label %29, label %30, !dbg !761

; <label>:29:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br label %33, !dbg !763

; <label>:30:                                     ; preds = %27
  %31 = icmp ult i32 %20, 268435455, !dbg !764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  %32 = select i1 %31, i64 4, i64 5, !dbg !768
  br label %33, !dbg !768

; <label>:33:                                     ; preds = %23, %26, %29, %30
  %34 = phi i64 [ 1, %23 ], [ 2, %26 ], [ 3, %29 ], [ %32, %30 ], !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  %35 = add nuw nsw i64 %34, %21, !dbg !770
  %36 = getelementptr inbounds i8, i8* %17, i64 %35, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  %37 = load i8, i8* %36, align 1, !dbg !773, !tbaa !52
  %38 = icmp eq i8 %37, -1, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %39 = select i1 %38, i8* null, i8* %36
  %40 = icmp eq i8* %39, null, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %40, label %41, label %16, !dbg !737

; <label>:41:                                     ; preds = %33
  %42 = icmp ult i32 %19, 65535, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %42, label %43, label %48, !dbg !738

; <label>:43:                                     ; preds = %15, %41
  %44 = phi i32 [ 0, %15 ], [ %19, %41 ]
  %45 = trunc i32 %44 to i8, !dbg !780
  store i8 %45, i8* %2, align 1, !dbg !780, !tbaa !52
  %46 = lshr i32 %44, 8, !dbg !780
  %47 = trunc i32 %46 to i8, !dbg !780
  store i8 %47, i8* %5, align 1, !dbg !780, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br label %48, !dbg !780

; <label>:48:                                     ; preds = %41, %43, %1
  %49 = phi i32 [ %9, %1 ], [ %44, %43 ], [ %19, %41 ], !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  ret i32 %49, !dbg !783
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpGet(i8* readonly, i64* nocapture, i8*) local_unnamed_addr #0 !dbg !784 {
  %4 = load i8, i8* %0, align 1, !dbg !798, !tbaa !52
  %5 = zext i8 %4 to i32, !dbg !798
  %6 = icmp sgt i8 %4, -1, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  br i1 %6, label %7, label %10, !dbg !800

; <label>:7:                                      ; preds = %3
  %8 = and i32 %5, 127, !dbg !803
  %9 = zext i32 %8 to i64, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br label %161, !dbg !808

; <label>:10:                                     ; preds = %3
  %11 = and i32 %5, 192, !dbg !809
  %12 = icmp eq i32 %11, 128, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %12, label %13, label %17, !dbg !811

; <label>:13:                                     ; preds = %10
  %14 = and i32 %5, 63, !dbg !812
  %15 = zext i32 %14 to i64, !dbg !812
  store i64 %15, i64* %1, align 8, !dbg !814, !tbaa !62
  %16 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !815
  br label %168, !dbg !816

; <label>:17:                                     ; preds = %10
  %18 = and i32 %5, 224, !dbg !817
  %19 = icmp eq i32 %18, 192, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %19, label %20, label %28, !dbg !819

; <label>:20:                                     ; preds = %17
  %21 = shl nuw nsw i32 %5, 8, !dbg !820
  %22 = and i32 %21, 7936, !dbg !820
  %23 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !822
  %24 = load i8, i8* %23, align 1, !dbg !822, !tbaa !52
  %25 = zext i8 %24 to i32, !dbg !822
  %26 = or i32 %22, %25, !dbg !823
  %27 = zext i32 %26 to i64, !dbg !824
  br label %154, !dbg !825

; <label>:28:                                     ; preds = %17
  %29 = icmp eq i8 %4, -15, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  br i1 %29, label %30, label %39, !dbg !828

; <label>:30:                                     ; preds = %28
  %31 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !829
  %32 = load i8, i8* %31, align 1, !dbg !829, !tbaa !52
  %33 = zext i8 %32 to i64, !dbg !831
  %34 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !832
  %35 = load i8, i8* %34, align 1, !dbg !832, !tbaa !52
  %36 = zext i8 %35 to i64, !dbg !833
  %37 = shl nuw nsw i64 %36, 8, !dbg !834
  %38 = or i64 %37, %33, !dbg !835
  br label %154, !dbg !836

; <label>:39:                                     ; preds = %28
  %40 = icmp eq i8 %4, -14, !dbg !837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %40, label %41, label %55, !dbg !839

; <label>:41:                                     ; preds = %39
  %42 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !840
  %43 = load i8, i8* %42, align 1, !dbg !840, !tbaa !52
  %44 = zext i8 %43 to i64, !dbg !842
  %45 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !843
  %46 = load i8, i8* %45, align 1, !dbg !843, !tbaa !52
  %47 = zext i8 %46 to i64, !dbg !844
  %48 = shl nuw nsw i64 %47, 8, !dbg !845
  %49 = or i64 %48, %44, !dbg !846
  %50 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !847
  %51 = load i8, i8* %50, align 1, !dbg !847, !tbaa !52
  %52 = zext i8 %51 to i64, !dbg !848
  %53 = shl nuw nsw i64 %52, 16, !dbg !849
  %54 = or i64 %49, %53, !dbg !850
  br label %154, !dbg !851

; <label>:55:                                     ; preds = %39
  %56 = icmp eq i8 %4, -13, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !854
  br i1 %56, label %57, label %76, !dbg !854

; <label>:57:                                     ; preds = %55
  %58 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !855
  %59 = load i8, i8* %58, align 1, !dbg !855, !tbaa !52
  %60 = zext i8 %59 to i64, !dbg !857
  %61 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !858
  %62 = load i8, i8* %61, align 1, !dbg !858, !tbaa !52
  %63 = zext i8 %62 to i64, !dbg !859
  %64 = shl nuw nsw i64 %63, 8, !dbg !860
  %65 = or i64 %64, %60, !dbg !861
  %66 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !862
  %67 = load i8, i8* %66, align 1, !dbg !862, !tbaa !52
  %68 = zext i8 %67 to i64, !dbg !863
  %69 = shl nuw nsw i64 %68, 16, !dbg !864
  %70 = or i64 %65, %69, !dbg !865
  %71 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !866
  %72 = load i8, i8* %71, align 1, !dbg !866, !tbaa !52
  %73 = zext i8 %72 to i64, !dbg !867
  %74 = shl nuw nsw i64 %73, 24, !dbg !868
  %75 = or i64 %70, %74, !dbg !869
  br label %154, !dbg !870

; <label>:76:                                     ; preds = %55
  %77 = icmp eq i8 %4, -12, !dbg !871
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !873
  br i1 %77, label %78, label %117, !dbg !873

; <label>:78:                                     ; preds = %76
  %79 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !874
  %80 = load i8, i8* %79, align 1, !dbg !874, !tbaa !52
  %81 = zext i8 %80 to i64, !dbg !876
  %82 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !877
  %83 = load i8, i8* %82, align 1, !dbg !877, !tbaa !52
  %84 = zext i8 %83 to i64, !dbg !878
  %85 = shl nuw nsw i64 %84, 8, !dbg !879
  %86 = or i64 %85, %81, !dbg !880
  %87 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !881
  %88 = load i8, i8* %87, align 1, !dbg !881, !tbaa !52
  %89 = zext i8 %88 to i64, !dbg !882
  %90 = shl nuw nsw i64 %89, 16, !dbg !883
  %91 = or i64 %86, %90, !dbg !884
  %92 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !885
  %93 = load i8, i8* %92, align 1, !dbg !885, !tbaa !52
  %94 = zext i8 %93 to i64, !dbg !886
  %95 = shl nuw nsw i64 %94, 24, !dbg !887
  %96 = or i64 %91, %95, !dbg !888
  %97 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !889
  %98 = load i8, i8* %97, align 1, !dbg !889, !tbaa !52
  %99 = zext i8 %98 to i64, !dbg !890
  %100 = shl nuw nsw i64 %99, 32, !dbg !891
  %101 = or i64 %96, %100, !dbg !892
  %102 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !893
  %103 = load i8, i8* %102, align 1, !dbg !893, !tbaa !52
  %104 = zext i8 %103 to i64, !dbg !894
  %105 = shl nuw nsw i64 %104, 40, !dbg !895
  %106 = or i64 %101, %105, !dbg !896
  %107 = getelementptr inbounds i8, i8* %0, i64 7, !dbg !897
  %108 = load i8, i8* %107, align 1, !dbg !897, !tbaa !52
  %109 = zext i8 %108 to i64, !dbg !898
  %110 = shl nuw nsw i64 %109, 48, !dbg !899
  %111 = or i64 %106, %110, !dbg !900
  %112 = getelementptr inbounds i8, i8* %0, i64 8, !dbg !901
  %113 = load i8, i8* %112, align 1, !dbg !901, !tbaa !52
  %114 = zext i8 %113 to i64, !dbg !902
  %115 = shl nuw i64 %114, 56, !dbg !903
  %116 = or i64 %111, %115, !dbg !904
  br label %154, !dbg !905

; <label>:117:                                    ; preds = %76
  %118 = and i32 %5, 240, !dbg !906
  %119 = icmp eq i32 %118, 224, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  br i1 %119, label %120, label %129, !dbg !908

; <label>:120:                                    ; preds = %117
  %121 = shl nuw nsw i32 %5, 8, !dbg !909
  %122 = and i32 %121, 3840, !dbg !909
  %123 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !909
  %124 = load i8, i8* %123, align 1, !dbg !909, !tbaa !52
  %125 = zext i8 %124 to i32, !dbg !909
  %126 = or i32 %122, %125, !dbg !909
  %127 = zext i32 %126 to i64, !dbg !909
  store i64 %127, i64* %1, align 8, !dbg !911, !tbaa !62
  %128 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !912
  br label %168, !dbg !913

; <label>:129:                                    ; preds = %117
  %130 = icmp eq i8 %4, -16, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !916
  br i1 %130, label %131, label %151, !dbg !916

; <label>:131:                                    ; preds = %129
  %132 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !917
  %133 = load i8, i8* %132, align 1, !dbg !917, !tbaa !52
  %134 = zext i8 %133 to i64, !dbg !917
  %135 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !917
  %136 = load i8, i8* %135, align 1, !dbg !917, !tbaa !52
  %137 = zext i8 %136 to i64, !dbg !917
  %138 = shl nuw nsw i64 %137, 8, !dbg !917
  %139 = or i64 %138, %134, !dbg !917
  %140 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !917
  %141 = load i8, i8* %140, align 1, !dbg !917, !tbaa !52
  %142 = zext i8 %141 to i64, !dbg !917
  %143 = shl nuw nsw i64 %142, 16, !dbg !917
  %144 = or i64 %139, %143, !dbg !917
  %145 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !917
  %146 = load i8, i8* %145, align 1, !dbg !917, !tbaa !52
  %147 = zext i8 %146 to i64, !dbg !917
  %148 = shl nuw nsw i64 %147, 24, !dbg !917
  %149 = or i64 %144, %148, !dbg !917
  store i64 %149, i64* %1, align 8, !dbg !919, !tbaa !62
  %150 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !920
  br label %168, !dbg !921

; <label>:151:                                    ; preds = %129
  %152 = zext i8 %4 to i64, !dbg !922
  %153 = or i64 %152, 12345678900000000, !dbg !924
  br label %154

; <label>:154:                                    ; preds = %30, %57, %151, %78, %41, %20
  %155 = phi i64 [ %27, %20 ], [ %38, %30 ], [ %54, %41 ], [ %75, %57 ], [ %116, %78 ], [ %153, %151 ], !dbg !925
  %156 = phi i64 [ 4096, %20 ], [ 32768, %30 ], [ 8388608, %41 ], [ 2147483648, %57 ], [ -9223372036854775808, %78 ], [ -1, %151 ], !dbg !925
  %157 = phi i64 [ -8192, %20 ], [ -65536, %30 ], [ -16777216, %41 ], [ -4294967296, %57 ], [ 0, %78 ], [ -1, %151 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %158 = icmp ult i64 %155, %156, !dbg !926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br i1 %158, label %161, label %159, !dbg !808

; <label>:159:                                    ; preds = %154
  %160 = add i64 %157, %155, !dbg !928
  br label %161, !dbg !931

; <label>:161:                                    ; preds = %154, %7, %159
  %162 = phi i64 [ %160, %159 ], [ %9, %7 ], [ %155, %154 ], !dbg !932
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %163 = icmp eq i8* %2, null, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  br i1 %163, label %167, label %164, !dbg !936

; <label>:164:                                    ; preds = %161
  %165 = tail call i32 (i8*, i64, i8*, ...) @snprintf(i8* nonnull %2, i64 21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %162) #4, !dbg !937
  %166 = sext i32 %165 to i64, !dbg !937
  store i64 %166, i64* %1, align 8, !dbg !939, !tbaa !62
  br label %168, !dbg !940

; <label>:167:                                    ; preds = %161
  store i64 %162, i64* %1, align 8, !dbg !941, !tbaa !62
  br label %168, !dbg !943

; <label>:168:                                    ; preds = %167, %164, %131, %120, %13
  %169 = phi i8* [ %2, %164 ], [ null, %167 ], [ %16, %13 ], [ %128, %120 ], [ %150, %131 ], !dbg !944
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  ret i8* %169, !dbg !946
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpInsert(i8*, i8*, i32, i8*, i32, i8**) local_unnamed_addr #0 !dbg !947 {
  %7 = alloca [9 x i8], align 1
  %8 = alloca [5 x i8], align 1
  %9 = alloca i64, align 8
  %10 = getelementptr inbounds [9 x i8], [9 x i8]* %7, i64 0, i64 0, !dbg !986
  call void @llvm.lifetime.start.p0i8(i64 9, i8* nonnull %10) #5, !dbg !986
  %11 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 0, !dbg !988
  call void @llvm.lifetime.start.p0i8(i64 5, i8* nonnull %11) #5, !dbg !988
  %12 = bitcast i64* %9 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !990
  %13 = icmp eq i8* %1, null, !dbg !991
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %13, label %34, label %14, !dbg !993

; <label>:14:                                     ; preds = %6
  %15 = icmp eq i32 %4, 1, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %15, label %16, label %38, !dbg !996

; <label>:16:                                     ; preds = %14
  %17 = tail call i32 @lpCurrentEncodedSize(i8* %3) #4, !dbg !1000
  %18 = zext i32 %17 to i64, !dbg !1000
  %19 = icmp ult i32 %17, 128, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  br i1 %19, label %20, label %21, !dbg !1006

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1007
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1008
  br label %30, !dbg !1008

; <label>:21:                                     ; preds = %16
  %22 = icmp ult i32 %17, 16383, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  br i1 %22, label %23, label %24, !dbg !1010

; <label>:23:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br label %30, !dbg !1012

; <label>:24:                                     ; preds = %21
  %25 = icmp ult i32 %17, 2097151, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1014
  br i1 %25, label %26, label %27, !dbg !1014

; <label>:26:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  br label %30, !dbg !1016

; <label>:27:                                     ; preds = %24
  %28 = icmp ult i32 %17, 268435455, !dbg !1017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  %29 = select i1 %28, i64 4, i64 5, !dbg !1021
  br label %30, !dbg !1021

; <label>:30:                                     ; preds = %20, %23, %26, %27
  %31 = phi i64 [ 1, %20 ], [ 2, %23 ], [ 3, %26 ], [ %29, %27 ], !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  %32 = add nuw nsw i64 %31, %18, !dbg !1023
  %33 = getelementptr inbounds i8, i8* %3, i64 %32, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  br label %38, !dbg !1026

; <label>:34:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  %35 = ptrtoint i8* %3 to i64, !dbg !1028
  %36 = ptrtoint i8* %0 to i64, !dbg !1028
  %37 = sub i64 %35, %36, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  store i64 0, i64* %9, align 8, !dbg !1033, !tbaa !62
  br label %105, !dbg !1036

; <label>:38:                                     ; preds = %30, %14
  %39 = phi i32 [ %4, %14 ], [ 0, %30 ]
  %40 = phi i8* [ %3, %14 ], [ %33, %30 ]
  %41 = ptrtoint i8* %40 to i64, !dbg !1028
  %42 = ptrtoint i8* %0 to i64, !dbg !1028
  %43 = sub i64 %41, %42, !dbg !1028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  %44 = call i32 @lpEncodeGetType(i8* nonnull %1, i32 %2, i8* nonnull %10, i64* nonnull %9) #6, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %45 = load i64, i64* %9, align 8, !dbg !1040, !tbaa !62
  %46 = icmp ult i64 %45, 128, !dbg !1044
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1045
  br i1 %46, label %47, label %49, !dbg !1045

; <label>:47:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1046
  %48 = trunc i64 %45 to i8, !dbg !1047
  store i8 %48, i8* %11, align 1, !dbg !1048, !tbaa !52
  br label %103, !dbg !1049

; <label>:49:                                     ; preds = %38
  %50 = icmp ult i64 %45, 16383, !dbg !1050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1051
  br i1 %50, label %51, label %57, !dbg !1051

; <label>:51:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1052
  %52 = lshr i64 %45, 7, !dbg !1053
  %53 = trunc i64 %52 to i8, !dbg !1054
  store i8 %53, i8* %11, align 1, !dbg !1055, !tbaa !52
  %54 = trunc i64 %45 to i8, !dbg !1056
  %55 = or i8 %54, -128, !dbg !1056
  %56 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1057
  store i8 %55, i8* %56, align 1, !dbg !1058, !tbaa !52
  br label %103, !dbg !1059

; <label>:57:                                     ; preds = %49
  %58 = icmp ult i64 %45, 2097151, !dbg !1060
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br i1 %58, label %59, label %69, !dbg !1061

; <label>:59:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  %60 = lshr i64 %45, 14, !dbg !1063
  %61 = trunc i64 %60 to i8, !dbg !1064
  store i8 %61, i8* %11, align 1, !dbg !1065, !tbaa !52
  %62 = lshr i64 %45, 7, !dbg !1066
  %63 = trunc i64 %62 to i8, !dbg !1067
  %64 = or i8 %63, -128, !dbg !1067
  %65 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1068
  store i8 %64, i8* %65, align 1, !dbg !1069, !tbaa !52
  %66 = trunc i64 %45 to i8, !dbg !1070
  %67 = or i8 %66, -128, !dbg !1070
  %68 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1071
  store i8 %67, i8* %68, align 1, !dbg !1072, !tbaa !52
  br label %103, !dbg !1073

; <label>:69:                                     ; preds = %57
  %70 = icmp ult i64 %45, 268435455, !dbg !1074
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1076
  br i1 %70, label %71, label %85, !dbg !1075

; <label>:71:                                     ; preds = %69
  %72 = lshr i64 %45, 21, !dbg !1077
  %73 = trunc i64 %72 to i8, !dbg !1078
  store i8 %73, i8* %11, align 1, !dbg !1079, !tbaa !52
  %74 = lshr i64 %45, 14, !dbg !1080
  %75 = trunc i64 %74 to i8, !dbg !1081
  %76 = or i8 %75, -128, !dbg !1081
  %77 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1082
  store i8 %76, i8* %77, align 1, !dbg !1083, !tbaa !52
  %78 = lshr i64 %45, 7, !dbg !1084
  %79 = trunc i64 %78 to i8, !dbg !1085
  %80 = or i8 %79, -128, !dbg !1085
  %81 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1086
  store i8 %80, i8* %81, align 1, !dbg !1087, !tbaa !52
  %82 = trunc i64 %45 to i8, !dbg !1088
  %83 = or i8 %82, -128, !dbg !1088
  %84 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1089
  store i8 %83, i8* %84, align 1, !dbg !1090, !tbaa !52
  br label %103, !dbg !1091

; <label>:85:                                     ; preds = %69
  %86 = lshr i64 %45, 28, !dbg !1092
  %87 = trunc i64 %86 to i8, !dbg !1093
  store i8 %87, i8* %11, align 1, !dbg !1094, !tbaa !52
  %88 = lshr i64 %45, 21, !dbg !1095
  %89 = trunc i64 %88 to i8, !dbg !1096
  %90 = or i8 %89, -128, !dbg !1096
  %91 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 1, !dbg !1097
  store i8 %90, i8* %91, align 1, !dbg !1098, !tbaa !52
  %92 = lshr i64 %45, 14, !dbg !1099
  %93 = trunc i64 %92 to i8, !dbg !1100
  %94 = or i8 %93, -128, !dbg !1100
  %95 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 2, !dbg !1101
  store i8 %94, i8* %95, align 1, !dbg !1102, !tbaa !52
  %96 = lshr i64 %45, 7, !dbg !1103
  %97 = trunc i64 %96 to i8, !dbg !1104
  %98 = or i8 %97, -128, !dbg !1104
  %99 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 3, !dbg !1105
  store i8 %98, i8* %99, align 1, !dbg !1106, !tbaa !52
  %100 = trunc i64 %45 to i8, !dbg !1107
  %101 = or i8 %100, -128, !dbg !1107
  %102 = getelementptr inbounds [5 x i8], [5 x i8]* %8, i64 0, i64 4, !dbg !1108
  store i8 %101, i8* %102, align 1, !dbg !1109, !tbaa !52
  br label %103, !dbg !1110

; <label>:103:                                    ; preds = %47, %51, %59, %71, %85
  %104 = phi i64 [ 1, %47 ], [ 2, %51 ], [ 3, %59 ], [ 4, %71 ], [ 5, %85 ], !dbg !1076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br label %105, !dbg !1036

; <label>:105:                                    ; preds = %34, %103
  %106 = phi i64 [ %45, %103 ], [ 0, %34 ]
  %107 = phi i32 [ %44, %103 ], [ -1, %34 ]
  %108 = phi i32 [ %39, %103 ], [ 2, %34 ]
  %109 = phi i8* [ %40, %103 ], [ %3, %34 ]
  %110 = phi i64 [ %43, %103 ], [ %37, %34 ]
  %111 = phi i1 [ true, %103 ], [ false, %34 ]
  %112 = phi i64 [ %104, %103 ], [ 0, %34 ], !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %113 = load i8, i8* %0, align 1, !dbg !1113, !tbaa !52
  %114 = zext i8 %113 to i64, !dbg !1113
  %115 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1113
  %116 = load i8, i8* %115, align 1, !dbg !1113, !tbaa !52
  %117 = zext i8 %116 to i64, !dbg !1113
  %118 = shl nuw nsw i64 %117, 8, !dbg !1113
  %119 = or i64 %118, %114, !dbg !1113
  %120 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1113
  %121 = load i8, i8* %120, align 1, !dbg !1113, !tbaa !52
  %122 = zext i8 %121 to i64, !dbg !1113
  %123 = shl nuw nsw i64 %122, 16, !dbg !1113
  %124 = or i64 %119, %123, !dbg !1113
  %125 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1113
  %126 = load i8, i8* %125, align 1, !dbg !1113, !tbaa !52
  %127 = zext i8 %126 to i64, !dbg !1113
  %128 = shl nuw nsw i64 %127, 24, !dbg !1113
  %129 = or i64 %124, %128, !dbg !1113
  %130 = icmp eq i32 %108, 2, !dbg !1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br i1 %130, label %131, label %149, !dbg !1118

; <label>:131:                                    ; preds = %105
  %132 = call i32 @lpCurrentEncodedSize(i8* %109) #6, !dbg !1119
  %133 = zext i32 %132 to i64, !dbg !1121
  %134 = icmp ult i32 %132, 128, !dbg !1125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %134, label %135, label %136, !dbg !1126

; <label>:135:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br label %145, !dbg !1128

; <label>:136:                                    ; preds = %131
  %137 = icmp ult i32 %132, 16383, !dbg !1129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  br i1 %137, label %138, label %139, !dbg !1130

; <label>:138:                                    ; preds = %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br label %145, !dbg !1132

; <label>:139:                                    ; preds = %136
  %140 = icmp ult i32 %132, 2097151, !dbg !1133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  br i1 %140, label %141, label %142, !dbg !1134

; <label>:141:                                    ; preds = %139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  br label %145, !dbg !1136

; <label>:142:                                    ; preds = %139
  %143 = icmp ult i32 %132, 268435455, !dbg !1137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1140
  %144 = select i1 %143, i64 4, i64 5, !dbg !1141
  br label %145, !dbg !1141

; <label>:145:                                    ; preds = %142, %135, %138, %141
  %146 = phi i64 [ 1, %135 ], [ 2, %138 ], [ 3, %141 ], [ %144, %142 ], !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1142
  %147 = add nuw nsw i64 %146, %133, !dbg !1143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1144
  %148 = and i64 %147, 4294967295, !dbg !1144
  br label %149, !dbg !1144

; <label>:149:                                    ; preds = %145, %105
  %150 = phi i64 [ %148, %145 ], [ 0, %105 ]
  %151 = add i64 %106, %112, !dbg !1145
  %152 = add i64 %151, %129, !dbg !1146
  %153 = sub i64 %152, %150, !dbg !1147
  %154 = icmp ugt i64 %153, 4294967295, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  br i1 %154, label %273, label %155, !dbg !1151

; <label>:155:                                    ; preds = %149
  %156 = icmp ugt i64 %153, %129, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %156, label %157, label %162, !dbg !1155

; <label>:157:                                    ; preds = %155
  %158 = call i8* @zrealloc(i8* nonnull %0, i64 %153) #4, !dbg !1156
  %159 = icmp eq i8* %158, null, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1160
  br i1 %159, label %271, label %160, !dbg !1160

; <label>:160:                                    ; preds = %157
  %161 = getelementptr inbounds i8, i8* %158, i64 %110, !dbg !1161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1162
  br label %162, !dbg !1162

; <label>:162:                                    ; preds = %160, %155
  %163 = phi i8* [ %161, %160 ], [ %109, %155 ], !dbg !1111
  %164 = phi i8* [ %158, %160 ], [ %0, %155 ]
  %165 = icmp eq i32 %108, 0, !dbg !1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %165, label %166, label %171, !dbg !1164

; <label>:166:                                    ; preds = %162
  %167 = getelementptr inbounds i8, i8* %163, i64 %106, !dbg !1165
  %168 = getelementptr inbounds i8, i8* %167, i64 %112, !dbg !1167
  %169 = sub i64 %129, %110, !dbg !1168
  %170 = call i8* @memmove(i8* %168, i8* %163, i64 %169) #4, !dbg !1169
  br label %177, !dbg !1170

; <label>:171:                                    ; preds = %162
  %172 = getelementptr inbounds i8, i8* %163, i64 %150, !dbg !1171
  %173 = getelementptr inbounds i8, i8* %163, i64 %151, !dbg !1172
  %174 = sub i64 %129, %110, !dbg !1173
  %175 = sub i64 %174, %150, !dbg !1174
  %176 = call i8* @memmove(i8* %173, i8* %172, i64 %175) #4, !dbg !1175
  br label %177

; <label>:177:                                    ; preds = %171, %166
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %178 = icmp ult i64 %153, %129, !dbg !1176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br i1 %178, label %179, label %184, !dbg !1178

; <label>:179:                                    ; preds = %177
  %180 = call i8* @zrealloc(i8* nonnull %164, i64 %153) #4, !dbg !1179
  %181 = icmp eq i8* %180, null, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br i1 %181, label %271, label %182, !dbg !1183

; <label>:182:                                    ; preds = %179
  %183 = getelementptr inbounds i8, i8* %180, i64 %110, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  br label %184, !dbg !1185

; <label>:184:                                    ; preds = %182, %177
  %185 = phi i8* [ %183, %182 ], [ %163, %177 ], !dbg !1186
  %186 = phi i8* [ %180, %182 ], [ %164, %177 ], !dbg !1187
  %187 = icmp eq i8** %5, null, !dbg !1188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1190
  br i1 %187, label %193, label %188, !dbg !1190

; <label>:188:                                    ; preds = %184
  store i8* %185, i8** %5, align 8, !dbg !1191, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  br i1 %111, label %194, label %189, !dbg !1195

; <label>:189:                                    ; preds = %188
  %190 = load i8, i8* %185, align 1, !dbg !1197, !tbaa !52
  %191 = icmp eq i8 %190, -1, !dbg !1198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1199
  br i1 %191, label %192, label %237, !dbg !1199

; <label>:192:                                    ; preds = %189
  store i8* null, i8** %5, align 8, !dbg !1200, !tbaa !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br label %237, !dbg !1201

; <label>:193:                                    ; preds = %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br i1 %111, label %195, label %239, !dbg !1202

; <label>:194:                                    ; preds = %188
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1202
  br label %195

; <label>:195:                                    ; preds = %194, %193
  %196 = icmp eq i32 %107, 0, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br i1 %196, label %197, label %199, !dbg !1207

; <label>:197:                                    ; preds = %195
  %198 = call i8* @memcpy(i8* %185, i8* nonnull %10, i64 %106) #4, !dbg !1208
  br label %234, !dbg !1210

; <label>:199:                                    ; preds = %195
  %200 = icmp ult i32 %2, 64, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1217
  br i1 %200, label %201, label %207, !dbg !1217

; <label>:201:                                    ; preds = %199
  %202 = trunc i32 %2 to i8, !dbg !1218
  %203 = or i8 %202, -128, !dbg !1218
  store i8 %203, i8* %185, align 1, !dbg !1219, !tbaa !52
  %204 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1220
  %205 = zext i32 %2 to i64, !dbg !1221
  %206 = call i8* @memcpy(i8* nonnull %204, i8* %1, i64 %205) #4, !dbg !1222
  br label %233, !dbg !1223

; <label>:207:                                    ; preds = %199
  %208 = icmp ult i32 %2, 4096, !dbg !1224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1225
  br i1 %208, label %209, label %218, !dbg !1225

; <label>:209:                                    ; preds = %207
  %210 = lshr i32 %2, 8, !dbg !1226
  %211 = trunc i32 %210 to i8, !dbg !1227
  %212 = or i8 %211, -32, !dbg !1227
  store i8 %212, i8* %185, align 1, !dbg !1228, !tbaa !52
  %213 = trunc i32 %2 to i8, !dbg !1229
  %214 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1230
  store i8 %213, i8* %214, align 1, !dbg !1231, !tbaa !52
  %215 = getelementptr inbounds i8, i8* %185, i64 2, !dbg !1232
  %216 = zext i32 %2 to i64, !dbg !1233
  %217 = call i8* @memcpy(i8* nonnull %215, i8* %1, i64 %216) #4, !dbg !1234
  br label %233, !dbg !1235

; <label>:218:                                    ; preds = %207
  store i8 -16, i8* %185, align 1, !dbg !1236, !tbaa !52
  %219 = trunc i32 %2 to i8, !dbg !1237
  %220 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !1238
  store i8 %219, i8* %220, align 1, !dbg !1239, !tbaa !52
  %221 = lshr i32 %2, 8, !dbg !1240
  %222 = trunc i32 %221 to i8, !dbg !1241
  %223 = getelementptr inbounds i8, i8* %185, i64 2, !dbg !1242
  store i8 %222, i8* %223, align 1, !dbg !1243, !tbaa !52
  %224 = lshr i32 %2, 16, !dbg !1244
  %225 = trunc i32 %224 to i8, !dbg !1245
  %226 = getelementptr inbounds i8, i8* %185, i64 3, !dbg !1246
  store i8 %225, i8* %226, align 1, !dbg !1247, !tbaa !52
  %227 = lshr i32 %2, 24, !dbg !1248
  %228 = trunc i32 %227 to i8, !dbg !1249
  %229 = getelementptr inbounds i8, i8* %185, i64 4, !dbg !1250
  store i8 %228, i8* %229, align 1, !dbg !1251, !tbaa !52
  %230 = getelementptr inbounds i8, i8* %185, i64 5, !dbg !1252
  %231 = zext i32 %2 to i64, !dbg !1253
  %232 = call i8* @memcpy(i8* nonnull %230, i8* %1, i64 %231) #4, !dbg !1254
  br label %233

; <label>:233:                                    ; preds = %201, %209, %218
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1255
  br label %234

; <label>:234:                                    ; preds = %233, %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %235 = getelementptr inbounds i8, i8* %185, i64 %106, !dbg !1256
  %236 = call i8* @memcpy(i8* %235, i8* nonnull %11, i64 %112) #4, !dbg !1257
  br label %237, !dbg !1258

; <label>:237:                                    ; preds = %192, %189, %234
  %238 = phi i1 [ true, %234 ], [ false, %189 ], [ false, %192 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1259
  br label %239, !dbg !1260

; <label>:239:                                    ; preds = %237, %193
  %240 = phi i1 [ false, %193 ], [ %238, %237 ]
  %241 = icmp ne i32 %108, 2, !dbg !1260
  %242 = or i1 %13, %241, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  br i1 %242, label %243, label %260, !dbg !1261

; <label>:243:                                    ; preds = %239
  %244 = getelementptr inbounds i8, i8* %186, i64 4, !dbg !1262
  %245 = load i8, i8* %244, align 1, !dbg !1262, !tbaa !52
  %246 = zext i8 %245 to i32, !dbg !1262
  %247 = getelementptr inbounds i8, i8* %186, i64 5, !dbg !1262
  %248 = load i8, i8* %247, align 1, !dbg !1262, !tbaa !52
  %249 = zext i8 %248 to i32, !dbg !1262
  %250 = shl nuw nsw i32 %249, 8, !dbg !1262
  %251 = or i32 %250, %246, !dbg !1262
  %252 = icmp eq i32 %251, 65535, !dbg !1264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  br i1 %252, label %259, label %253, !dbg !1266

; <label>:253:                                    ; preds = %243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1267
  %254 = select i1 %240, i32 1, i32 -1, !dbg !1267
  %255 = add nsw i32 %251, %254, !dbg !1269
  %256 = trunc i32 %255 to i8, !dbg !1272
  store i8 %256, i8* %244, align 1, !dbg !1272, !tbaa !52
  %257 = lshr i32 %255, 8, !dbg !1272
  %258 = trunc i32 %257 to i8, !dbg !1272
  store i8 %258, i8* %247, align 1, !dbg !1272, !tbaa !52
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %259, !dbg !1274

; <label>:259:                                    ; preds = %253, %243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  br label %260, !dbg !1274

; <label>:260:                                    ; preds = %259, %239
  %261 = trunc i64 %153 to i8, !dbg !1275
  store i8 %261, i8* %186, align 1, !dbg !1275, !tbaa !52
  %262 = lshr i64 %153, 8, !dbg !1275
  %263 = trunc i64 %262 to i8, !dbg !1275
  %264 = getelementptr inbounds i8, i8* %186, i64 1, !dbg !1275
  store i8 %263, i8* %264, align 1, !dbg !1275, !tbaa !52
  %265 = lshr i64 %153, 16, !dbg !1275
  %266 = trunc i64 %265 to i8, !dbg !1275
  %267 = getelementptr inbounds i8, i8* %186, i64 2, !dbg !1275
  store i8 %266, i8* %267, align 1, !dbg !1275, !tbaa !52
  %268 = lshr i64 %153, 24, !dbg !1275
  %269 = trunc i64 %268 to i8, !dbg !1275
  %270 = getelementptr inbounds i8, i8* %186, i64 3, !dbg !1275
  store i8 %269, i8* %270, align 1, !dbg !1275, !tbaa !52
  br label %271, !dbg !1277

; <label>:271:                                    ; preds = %179, %157, %260
  %272 = phi i8* [ %186, %260 ], [ null, %157 ], [ null, %179 ], !dbg !1111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br label %273

; <label>:273:                                    ; preds = %149, %271
  %274 = phi i8* [ %272, %271 ], [ null, %149 ], !dbg !1187
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 5, i8* nonnull %11) #5, !dbg !1278
  call void @llvm.lifetime.end.p0i8(i64 9, i8* nonnull %10) #5, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1278
  ret i8* %274, !dbg !1278
}

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i8* @lpAppend(i8*, i8*, i32) local_unnamed_addr #0 !dbg !1279 {
  %4 = load i8, i8* %0, align 1, !dbg !1291, !tbaa !52
  %5 = zext i8 %4 to i64, !dbg !1291
  %6 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1291
  %7 = load i8, i8* %6, align 1, !dbg !1291, !tbaa !52
  %8 = zext i8 %7 to i64, !dbg !1291
  %9 = shl nuw nsw i64 %8, 8, !dbg !1291
  %10 = or i64 %9, %5, !dbg !1291
  %11 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1291
  %12 = load i8, i8* %11, align 1, !dbg !1291, !tbaa !52
  %13 = zext i8 %12 to i64, !dbg !1291
  %14 = shl nuw nsw i64 %13, 16, !dbg !1291
  %15 = or i64 %10, %14, !dbg !1291
  %16 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1291
  %17 = load i8, i8* %16, align 1, !dbg !1291, !tbaa !52
  %18 = zext i8 %17 to i64, !dbg !1291
  %19 = shl nuw nsw i64 %18, 24, !dbg !1291
  %20 = or i64 %15, %19, !dbg !1291
  %21 = getelementptr inbounds i8, i8* %0, i64 %20, !dbg !1293
  %22 = getelementptr inbounds i8, i8* %21, i64 -1, !dbg !1294
  %23 = tail call i8* @lpInsert(i8* %0, i8* %1, i32 %2, i8* nonnull %22, i32 0, i8** null) #6, !dbg !1296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1297
  ret i8* %23, !dbg !1297
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpDelete(i8*, i8*, i8**) local_unnamed_addr #0 !dbg !1298 {
  %4 = tail call i8* @lpInsert(i8* %0, i8* null, i32 0, i8* %1, i32 2, i8** %2) #6, !dbg !1308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1309
  ret i8* %4, !dbg !1309
}

; Function Attrs: noredzone nounwind
define dso_local i32 @lpBytes(i8* nocapture readonly) local_unnamed_addr #0 !dbg !1310 {
  %2 = load i8, i8* %0, align 1, !dbg !1314, !tbaa !52
  %3 = zext i8 %2 to i32, !dbg !1314
  %4 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1314
  %5 = load i8, i8* %4, align 1, !dbg !1314, !tbaa !52
  %6 = zext i8 %5 to i32, !dbg !1314
  %7 = shl nuw nsw i32 %6, 8, !dbg !1314
  %8 = or i32 %7, %3, !dbg !1314
  %9 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1314
  %10 = load i8, i8* %9, align 1, !dbg !1314, !tbaa !52
  %11 = zext i8 %10 to i32, !dbg !1314
  %12 = shl nuw nsw i32 %11, 16, !dbg !1314
  %13 = or i32 %8, %12, !dbg !1314
  %14 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1314
  %15 = load i8, i8* %14, align 1, !dbg !1314, !tbaa !52
  %16 = zext i8 %15 to i32, !dbg !1314
  %17 = shl nuw i32 %16, 24, !dbg !1314
  %18 = or i32 %13, %17, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  ret i32 %18, !dbg !1315
}

; Function Attrs: noredzone nounwind
define dso_local i8* @lpSeek(i8*, i64) local_unnamed_addr #0 !dbg !1316 {
  %3 = getelementptr inbounds i8, i8* %0, i64 4, !dbg !1332
  %4 = load i8, i8* %3, align 1, !dbg !1332, !tbaa !52
  %5 = zext i8 %4 to i32, !dbg !1332
  %6 = getelementptr inbounds i8, i8* %0, i64 5, !dbg !1332
  %7 = load i8, i8* %6, align 1, !dbg !1332, !tbaa !52
  %8 = zext i8 %7 to i32, !dbg !1332
  %9 = shl nuw nsw i32 %8, 8, !dbg !1332
  %10 = or i32 %9, %5, !dbg !1332
  %11 = icmp eq i32 %10, 65535, !dbg !1334
  %12 = icmp slt i64 %1, 0, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br i1 %11, label %30, label %13, !dbg !1339

; <label>:13:                                     ; preds = %2
  br i1 %12, label %16, label %14, !dbg !1342

; <label>:14:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  %15 = zext i32 %10 to i64, !dbg !1344
  br label %20, !dbg !1343

; <label>:16:                                     ; preds = %13
  %17 = zext i32 %10 to i64, !dbg !1346
  %18 = add nsw i64 %17, %1, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  %19 = icmp slt i64 %18, 0, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %19, label %100, label %20, !dbg !1343

; <label>:20:                                     ; preds = %14, %16
  %21 = phi i64 [ %15, %14 ], [ %17, %16 ], !dbg !1344
  %22 = phi i64 [ %1, %14 ], [ %18, %16 ]
  %23 = icmp slt i64 %22, %21, !dbg !1352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1353
  br i1 %23, label %24, label %100, !dbg !1353

; <label>:24:                                     ; preds = %20
  %25 = lshr i32 %10, 1, !dbg !1354
  %26 = zext i32 %25 to i64, !dbg !1356
  %27 = icmp sgt i64 %22, %26, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1358
  br i1 %27, label %28, label %31, !dbg !1358

; <label>:28:                                     ; preds = %24
  %29 = sub nsw i64 %22, %21, !dbg !1359
  br label %67, !dbg !1361

; <label>:30:                                     ; preds = %2
  br i1 %12, label %67, label %31, !dbg !1362

; <label>:31:                                     ; preds = %24, %30
  %32 = phi i64 [ %1, %30 ], [ %22, %24 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %33 = getelementptr inbounds i8, i8* %0, i64 6, !dbg !1366
  %34 = load i8, i8* %33, align 1, !dbg !1367, !tbaa !52
  %35 = icmp eq i8 %34, -1, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  %36 = select i1 %35, i8* null, i8* %33, !dbg !1371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  %37 = icmp sgt i64 %32, 0, !dbg !1375
  %38 = icmp ne i8* %36, null, !dbg !1376
  %39 = and i1 %37, %38, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br i1 %39, label %40, label %100, !dbg !1374

; <label>:40:                                     ; preds = %31, %56
  %41 = phi i8* [ %62, %56 ], [ %36, %31 ]
  %42 = phi i64 [ %63, %56 ], [ %32, %31 ]
  %43 = tail call i32 @lpCurrentEncodedSize(i8* nonnull %41) #4, !dbg !1383
  %44 = zext i32 %43 to i64, !dbg !1383
  %45 = icmp ult i32 %43, 128, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  br i1 %45, label %46, label %47, !dbg !1389

; <label>:46:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  br label %56, !dbg !1391

; <label>:47:                                     ; preds = %40
  %48 = icmp ult i32 %43, 16383, !dbg !1392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1393
  br i1 %48, label %49, label %50, !dbg !1393

; <label>:49:                                     ; preds = %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1395
  br label %56, !dbg !1395

; <label>:50:                                     ; preds = %47
  %51 = icmp ult i32 %43, 2097151, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %51, label %52, label %53, !dbg !1397

; <label>:52:                                     ; preds = %50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1399
  br label %56, !dbg !1399

; <label>:53:                                     ; preds = %50
  %54 = icmp ult i32 %43, 268435455, !dbg !1400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1403
  %55 = select i1 %54, i64 4, i64 5, !dbg !1404
  br label %56, !dbg !1404

; <label>:56:                                     ; preds = %46, %49, %52, %53
  %57 = phi i64 [ 1, %46 ], [ 2, %49 ], [ 3, %52 ], [ %55, %53 ], !dbg !1402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1405
  %58 = add nuw nsw i64 %57, %44, !dbg !1406
  %59 = getelementptr inbounds i8, i8* %41, i64 %58, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  %60 = load i8, i8* %59, align 1, !dbg !1409, !tbaa !52
  %61 = icmp eq i8 %60, -1, !dbg !1410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  %62 = select i1 %61, i8* null, i8* %59, !dbg !1413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  %63 = add nsw i64 %42, -1, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  %64 = icmp sgt i64 %42, 1, !dbg !1375
  %65 = icmp ne i8* %62, null, !dbg !1376
  %66 = and i1 %64, %65, !dbg !1376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br i1 %66, label %40, label %100, !dbg !1374, !llvm.loop !1416

; <label>:67:                                     ; preds = %30, %28
  %68 = phi i64 [ %29, %28 ], [ %1, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %69 = load i8, i8* %0, align 1, !dbg !1420, !tbaa !52
  %70 = zext i8 %69 to i64, !dbg !1420
  %71 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !1420
  %72 = load i8, i8* %71, align 1, !dbg !1420, !tbaa !52
  %73 = zext i8 %72 to i64, !dbg !1420
  %74 = shl nuw nsw i64 %73, 8, !dbg !1420
  %75 = or i64 %74, %70, !dbg !1420
  %76 = getelementptr inbounds i8, i8* %0, i64 2, !dbg !1420
  %77 = load i8, i8* %76, align 1, !dbg !1420, !tbaa !52
  %78 = zext i8 %77 to i64, !dbg !1420
  %79 = shl nuw nsw i64 %78, 16, !dbg !1420
  %80 = or i64 %75, %79, !dbg !1420
  %81 = getelementptr inbounds i8, i8* %0, i64 3, !dbg !1420
  %82 = load i8, i8* %81, align 1, !dbg !1420, !tbaa !52
  %83 = zext i8 %82 to i64, !dbg !1420
  %84 = shl nuw nsw i64 %83, 24, !dbg !1420
  %85 = or i64 %80, %84, !dbg !1420
  %86 = getelementptr inbounds i8, i8* %0, i64 %85, !dbg !1421
  %87 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !1422
  %88 = tail call i8* @lpPrev(i8* nonnull %0, i8* nonnull %87) #4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  %89 = icmp slt i64 %68, -1, !dbg !1428
  %90 = icmp ne i8* %88, null, !dbg !1429
  %91 = and i1 %89, %90, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %91, label %92, label %100, !dbg !1427

; <label>:92:                                     ; preds = %67, %92
  %93 = phi i8* [ %95, %92 ], [ %88, %67 ]
  %94 = phi i64 [ %96, %92 ], [ %68, %67 ]
  %95 = tail call i8* @lpPrev(i8* %0, i8* nonnull %93) #6, !dbg !1430
  %96 = add nuw nsw i64 %94, 1, !dbg !1432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  %97 = icmp slt i64 %94, -2, !dbg !1428
  %98 = icmp ne i8* %95, null, !dbg !1429
  %99 = and i1 %97, %98, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  br i1 %99, label %92, label %100, !dbg !1427, !llvm.loop !1433

; <label>:100:                                    ; preds = %56, %92, %67, %31, %20, %16
  %101 = phi i8* [ null, %16 ], [ null, %20 ], [ %36, %31 ], [ %88, %67 ], [ %95, %92 ], [ %62, %56 ], !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  ret i8* %101, !dbg !1436
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

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
!49 = !DILocation(line: 151, column: 19, scope: !48)
!50 = !DILocation(line: 0, scope: !51)
!51 = distinct !DILexicalBlock(scope: !25, file: !1, line: 156, column: 9)
!52 = !{!53, !53, i64 0}
!53 = !{!"omnipotent char", !54, i64 0}
!54 = !{!"Simple C/C++ TBAA"}
!55 = !DILocation(line: 151, column: 27, scope: !48)
!56 = !DILocation(line: 151, column: 9, scope: !25)
!57 = !DILocation(line: 152, column: 19, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 152, column: 13)
!59 = distinct !DILexicalBlock(scope: !48, file: !1, line: 151, column: 35)
!60 = !DILocation(line: 152, column: 13, scope: !59)
!61 = !DILocation(line: 152, column: 35, scope: !58)
!62 = !{!63, !63, i64 0}
!63 = !{!"long", !53, i64 0}
!64 = !DILocation(line: 152, column: 28, scope: !58)
!65 = !DILocation(line: 156, column: 14, scope: !51)
!66 = !DILocation(line: 156, column: 9, scope: !25)
!67 = !DILocation(line: 158, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !51, file: !1, line: 156, column: 22)
!69 = !DILocation(line: 161, column: 13, scope: !68)
!70 = !DILocation(line: 166, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !25, file: !1, line: 166, column: 9)
!72 = !DILocation(line: 0, scope: !25)
!73 = !DILocation(line: 166, column: 14, scope: !71)
!74 = !DILocation(line: 166, column: 21, scope: !71)
!75 = !DILocation(line: 166, column: 29, scope: !71)
!76 = !DILocation(line: 166, column: 9, scope: !25)
!77 = !DILocation(line: 169, column: 28, scope: !78)
!78 = distinct !DILexicalBlock(scope: !71, file: !1, line: 169, column: 16)
!79 = !DILocation(line: 167, column: 17, scope: !80)
!80 = distinct !DILexicalBlock(scope: !71, file: !1, line: 166, column: 37)
!81 = !DILocation(line: 145, column: 14, scope: !25)
!82 = !DILocation(line: 176, column: 5, scope: !25)
!83 = !DILocation(line: 176, column: 17, scope: !25)
!84 = !DILocation(line: 176, column: 24, scope: !25)
!85 = !DILocation(line: 169, column: 21, scope: !78)
!86 = !DILocation(line: 170, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 169, column: 42)
!88 = !DILocation(line: 171, column: 9, scope: !87)
!89 = !DILocation(line: 0, scope: !90)
!90 = distinct !DILexicalBlock(scope: !25, file: !1, line: 176, column: 55)
!91 = !DILocation(line: 176, column: 27, scope: !25)
!92 = !DILocation(line: 176, column: 32, scope: !25)
!93 = !DILocation(line: 176, column: 39, scope: !25)
!94 = !DILocation(line: 176, column: 47, scope: !25)
!95 = !DILocation(line: 177, column: 15, scope: !96)
!96 = distinct !DILexicalBlock(scope: !90, file: !1, line: 177, column: 13)
!97 = !DILocation(line: 177, column: 13, scope: !90)
!98 = !DILocation(line: 179, column: 11, scope: !90)
!99 = !DILocation(line: 181, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !90, file: !1, line: 181, column: 13)
!101 = !DILocation(line: 181, column: 15, scope: !100)
!102 = !DILocation(line: 181, column: 13, scope: !90)
!103 = !DILocation(line: 181, column: 36, scope: !100)
!104 = !DILocation(line: 183, column: 11, scope: !90)
!105 = !DILocation(line: 185, column: 18, scope: !90)
!106 = distinct !{!106, !82, !107}
!107 = !DILocation(line: 186, column: 5, scope: !25)
!108 = !DILocation(line: 189, column: 9, scope: !25)
!109 = !DILocation(line: 190, column: 9, scope: !110)
!110 = distinct !DILexicalBlock(scope: !25, file: !1, line: 189, column: 9)
!111 = !DILocation(line: 192, column: 9, scope: !112)
!112 = distinct !DILexicalBlock(scope: !25, file: !1, line: 192, column: 9)
!113 = !DILocation(line: 192, column: 9, scope: !25)
!114 = !DILocation(line: 193, column: 15, scope: !115)
!115 = distinct !DILexicalBlock(scope: !116, file: !1, line: 193, column: 13)
!116 = distinct !DILexicalBlock(scope: !112, file: !1, line: 192, column: 19)
!117 = !DILocation(line: 193, column: 13, scope: !116)
!118 = !DILocation(line: 195, column: 19, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 195, column: 13)
!120 = !DILocation(line: 195, column: 13, scope: !116)
!121 = !DILocation(line: 195, column: 37, scope: !119)
!122 = !DILocation(line: 195, column: 35, scope: !119)
!123 = !DILocation(line: 195, column: 28, scope: !119)
!124 = !DILocation(line: 197, column: 15, scope: !125)
!125 = distinct !DILexicalBlock(scope: !126, file: !1, line: 197, column: 13)
!126 = distinct !DILexicalBlock(scope: !112, file: !1, line: 196, column: 12)
!127 = !DILocation(line: 197, column: 13, scope: !126)
!128 = !DILocation(line: 199, column: 19, scope: !129)
!129 = distinct !DILexicalBlock(scope: !126, file: !1, line: 199, column: 13)
!130 = !DILocation(line: 199, column: 13, scope: !126)
!131 = !DILocation(line: 199, column: 35, scope: !129)
!132 = !DILocation(line: 199, column: 28, scope: !129)
!133 = !DILocation(line: 0, scope: !134)
!134 = distinct !DILexicalBlock(scope: !78, file: !1, line: 172, column: 12)
!135 = !DILocation(line: 0, scope: !45)
!136 = !DILocation(line: 202, column: 1, scope: !25)
!137 = distinct !DISubprogram(name: "lpNew", scope: !1, file: !1, line: 206, type: !138, isLocal: false, isDefinition: true, scopeLine: 206, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !142)
!138 = !DISubroutineType(types: !139)
!139 = !{!140}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!142 = !{!143}
!143 = !DILocalVariable(name: "lp", scope: !137, file: !1, line: 207, type: !140)
!144 = !DILocation(line: 207, column: 25, scope: !137)
!145 = !DILocation(line: 207, column: 20, scope: !137)
!146 = !DILocation(line: 208, column: 12, scope: !147)
!147 = distinct !DILexicalBlock(scope: !137, file: !1, line: 208, column: 9)
!148 = !DILocation(line: 208, column: 9, scope: !137)
!149 = !DILocation(line: 209, column: 5, scope: !150)
!150 = distinct !DILexicalBlock(scope: !137, file: !1, line: 209, column: 5)
!151 = !DILocation(line: 210, column: 5, scope: !152)
!152 = distinct !DILexicalBlock(scope: !137, file: !1, line: 210, column: 5)
!153 = !DILocation(line: 211, column: 5, scope: !137)
!154 = !DILocation(line: 211, column: 21, scope: !137)
!155 = !DILocation(line: 212, column: 5, scope: !137)
!156 = !DILocation(line: 0, scope: !147)
!157 = !DILocation(line: 213, column: 1, scope: !137)
!158 = distinct !DISubprogram(name: "lpFree", scope: !1, file: !1, line: 216, type: !159, isLocal: false, isDefinition: true, scopeLine: 216, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !161)
!159 = !DISubroutineType(types: !160)
!160 = !{null, !140}
!161 = !{!162}
!162 = !DILocalVariable(name: "lp", arg: 1, scope: !158, file: !1, line: 216, type: !140)
!163 = !DILocation(line: 216, column: 28, scope: !158)
!164 = !DILocation(line: 217, column: 5, scope: !158)
!165 = !DILocation(line: 218, column: 1, scope: !158)
!166 = distinct !DISubprogram(name: "lpEncodeGetType", scope: !1, file: !1, line: 231, type: !167, isLocal: false, isDefinition: true, scopeLine: 231, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !170)
!167 = !DISubroutineType(types: !168)
!168 = !{!28, !140, !16, !140, !169}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!170 = !{!171, !172, !173, !174, !175, !176}
!171 = !DILocalVariable(name: "ele", arg: 1, scope: !166, file: !1, line: 231, type: !140)
!172 = !DILocalVariable(name: "size", arg: 2, scope: !166, file: !1, line: 231, type: !16)
!173 = !DILocalVariable(name: "intenc", arg: 3, scope: !166, file: !1, line: 231, type: !140)
!174 = !DILocalVariable(name: "enclen", arg: 4, scope: !166, file: !1, line: 231, type: !169)
!175 = !DILocalVariable(name: "v", scope: !166, file: !1, line: 232, type: !13)
!176 = !DILocalVariable(name: "uv", scope: !177, file: !1, line: 270, type: !5)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 268, column: 16)
!178 = distinct !DILexicalBlock(scope: !179, file: !1, line: 259, column: 20)
!179 = distinct !DILexicalBlock(scope: !180, file: !1, line: 251, column: 20)
!180 = distinct !DILexicalBlock(scope: !181, file: !1, line: 244, column: 20)
!181 = distinct !DILexicalBlock(scope: !182, file: !1, line: 238, column: 20)
!182 = distinct !DILexicalBlock(scope: !183, file: !1, line: 234, column: 13)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 233, column: 54)
!184 = distinct !DILexicalBlock(scope: !166, file: !1, line: 233, column: 9)
!185 = !DILocation(line: 231, column: 36, scope: !166)
!186 = !DILocation(line: 231, column: 50, scope: !166)
!187 = !DILocation(line: 231, column: 71, scope: !166)
!188 = !DILocation(line: 231, column: 89, scope: !166)
!189 = !DILocation(line: 232, column: 5, scope: !166)
!190 = !DILocation(line: 233, column: 43, scope: !184)
!191 = !DILocation(line: 232, column: 13, scope: !166)
!192 = !DILocation(line: 233, column: 9, scope: !184)
!193 = !DILocation(line: 233, column: 9, scope: !166)
!194 = !DILocation(line: 234, column: 13, scope: !182)
!195 = !DILocation(line: 234, column: 20, scope: !182)
!196 = !DILocation(line: 236, column: 25, scope: !197)
!197 = distinct !DILexicalBlock(scope: !182, file: !1, line: 234, column: 33)
!198 = !DILocation(line: 236, column: 23, scope: !197)
!199 = !DILocation(line: 238, column: 9, scope: !197)
!200 = !DILocation(line: 238, column: 31, scope: !181)
!201 = !DILocation(line: 240, column: 19, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 240, column: 17)
!203 = distinct !DILexicalBlock(scope: !181, file: !1, line: 238, column: 45)
!204 = !DILocation(line: 240, column: 17, scope: !203)
!205 = !DILocation(line: 240, column: 44, scope: !202)
!206 = !DILocation(line: 240, column: 26, scope: !202)
!207 = !DILocation(line: 240, column: 24, scope: !202)
!208 = !DILocation(line: 241, column: 26, scope: !203)
!209 = !DILocation(line: 241, column: 27, scope: !203)
!210 = !DILocation(line: 241, column: 25, scope: !203)
!211 = !DILocation(line: 241, column: 23, scope: !203)
!212 = !DILocation(line: 242, column: 25, scope: !203)
!213 = !DILocation(line: 242, column: 13, scope: !203)
!214 = !DILocation(line: 242, column: 23, scope: !203)
!215 = !DILocation(line: 244, column: 9, scope: !203)
!216 = !DILocation(line: 244, column: 32, scope: !180)
!217 = !DILocation(line: 246, column: 19, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !1, line: 246, column: 17)
!219 = distinct !DILexicalBlock(scope: !180, file: !1, line: 244, column: 47)
!220 = !DILocation(line: 246, column: 17, scope: !219)
!221 = !DILocation(line: 246, column: 44, scope: !218)
!222 = !DILocation(line: 246, column: 26, scope: !218)
!223 = !DILocation(line: 246, column: 24, scope: !218)
!224 = !DILocation(line: 248, column: 25, scope: !219)
!225 = !DILocation(line: 247, column: 23, scope: !219)
!226 = !DILocation(line: 248, column: 13, scope: !219)
!227 = !DILocation(line: 248, column: 23, scope: !219)
!228 = !DILocation(line: 249, column: 26, scope: !219)
!229 = !DILocation(line: 249, column: 25, scope: !219)
!230 = !DILocation(line: 249, column: 13, scope: !219)
!231 = !DILocation(line: 249, column: 23, scope: !219)
!232 = !DILocation(line: 251, column: 9, scope: !219)
!233 = !DILocation(line: 251, column: 34, scope: !179)
!234 = !DILocation(line: 253, column: 19, scope: !235)
!235 = distinct !DILexicalBlock(scope: !236, file: !1, line: 253, column: 17)
!236 = distinct !DILexicalBlock(scope: !179, file: !1, line: 251, column: 51)
!237 = !DILocation(line: 253, column: 17, scope: !236)
!238 = !DILocation(line: 253, column: 44, scope: !235)
!239 = !DILocation(line: 253, column: 26, scope: !235)
!240 = !DILocation(line: 253, column: 24, scope: !235)
!241 = !DILocation(line: 255, column: 25, scope: !236)
!242 = !DILocation(line: 254, column: 23, scope: !236)
!243 = !DILocation(line: 255, column: 13, scope: !236)
!244 = !DILocation(line: 255, column: 23, scope: !236)
!245 = !DILocation(line: 256, column: 27, scope: !236)
!246 = !DILocation(line: 256, column: 25, scope: !236)
!247 = !DILocation(line: 256, column: 13, scope: !236)
!248 = !DILocation(line: 256, column: 23, scope: !236)
!249 = !DILocation(line: 257, column: 26, scope: !236)
!250 = !DILocation(line: 257, column: 25, scope: !236)
!251 = !DILocation(line: 257, column: 13, scope: !236)
!252 = !DILocation(line: 257, column: 23, scope: !236)
!253 = !DILocation(line: 259, column: 9, scope: !236)
!254 = !DILocation(line: 259, column: 37, scope: !178)
!255 = !DILocation(line: 261, column: 19, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 261, column: 17)
!257 = distinct !DILexicalBlock(scope: !178, file: !1, line: 259, column: 57)
!258 = !DILocation(line: 261, column: 17, scope: !257)
!259 = !DILocation(line: 261, column: 44, scope: !256)
!260 = !DILocation(line: 261, column: 26, scope: !256)
!261 = !DILocation(line: 261, column: 24, scope: !256)
!262 = !DILocation(line: 263, column: 25, scope: !257)
!263 = !DILocation(line: 262, column: 23, scope: !257)
!264 = !DILocation(line: 263, column: 13, scope: !257)
!265 = !DILocation(line: 263, column: 23, scope: !257)
!266 = !DILocation(line: 264, column: 27, scope: !257)
!267 = !DILocation(line: 264, column: 25, scope: !257)
!268 = !DILocation(line: 264, column: 13, scope: !257)
!269 = !DILocation(line: 264, column: 23, scope: !257)
!270 = !DILocation(line: 265, column: 27, scope: !257)
!271 = !DILocation(line: 265, column: 25, scope: !257)
!272 = !DILocation(line: 265, column: 13, scope: !257)
!273 = !DILocation(line: 265, column: 23, scope: !257)
!274 = !DILocation(line: 266, column: 26, scope: !257)
!275 = !DILocation(line: 266, column: 25, scope: !257)
!276 = !DILocation(line: 266, column: 13, scope: !257)
!277 = !DILocation(line: 266, column: 23, scope: !257)
!278 = !DILocation(line: 268, column: 9, scope: !257)
!279 = !DILocation(line: 270, column: 22, scope: !177)
!280 = !DILocation(line: 271, column: 23, scope: !177)
!281 = !DILocation(line: 272, column: 25, scope: !177)
!282 = !DILocation(line: 272, column: 13, scope: !177)
!283 = !DILocation(line: 272, column: 23, scope: !177)
!284 = !DILocation(line: 273, column: 28, scope: !177)
!285 = !DILocation(line: 273, column: 25, scope: !177)
!286 = !DILocation(line: 273, column: 13, scope: !177)
!287 = !DILocation(line: 273, column: 23, scope: !177)
!288 = !DILocation(line: 274, column: 28, scope: !177)
!289 = !DILocation(line: 274, column: 25, scope: !177)
!290 = !DILocation(line: 274, column: 13, scope: !177)
!291 = !DILocation(line: 274, column: 23, scope: !177)
!292 = !DILocation(line: 275, column: 28, scope: !177)
!293 = !DILocation(line: 275, column: 25, scope: !177)
!294 = !DILocation(line: 275, column: 13, scope: !177)
!295 = !DILocation(line: 275, column: 23, scope: !177)
!296 = !DILocation(line: 276, column: 28, scope: !177)
!297 = !DILocation(line: 276, column: 25, scope: !177)
!298 = !DILocation(line: 276, column: 13, scope: !177)
!299 = !DILocation(line: 276, column: 23, scope: !177)
!300 = !DILocation(line: 277, column: 28, scope: !177)
!301 = !DILocation(line: 277, column: 25, scope: !177)
!302 = !DILocation(line: 277, column: 13, scope: !177)
!303 = !DILocation(line: 277, column: 23, scope: !177)
!304 = !DILocation(line: 278, column: 28, scope: !177)
!305 = !DILocation(line: 278, column: 25, scope: !177)
!306 = !DILocation(line: 278, column: 13, scope: !177)
!307 = !DILocation(line: 278, column: 23, scope: !177)
!308 = !DILocation(line: 279, column: 27, scope: !177)
!309 = !DILocation(line: 279, column: 25, scope: !177)
!310 = !DILocation(line: 279, column: 13, scope: !177)
!311 = !DILocation(line: 279, column: 23, scope: !177)
!312 = !DILocation(line: 284, column: 18, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !1, line: 284, column: 13)
!314 = distinct !DILexicalBlock(scope: !184, file: !1, line: 283, column: 12)
!315 = !DILocation(line: 284, column: 13, scope: !314)
!316 = !DILocation(line: 285, column: 23, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !1, line: 285, column: 18)
!318 = !DILocation(line: 285, column: 18, scope: !313)
!319 = !DILocation(line: 285, column: 31, scope: !317)
!320 = !DILocation(line: 0, scope: !313)
!321 = !DILocation(line: 287, column: 9, scope: !314)
!322 = !DILocation(line: 0, scope: !314)
!323 = !DILocation(line: 0, scope: !183)
!324 = !DILocation(line: 289, column: 1, scope: !166)
!325 = distinct !DISubprogram(name: "lpEncodeBacklen", scope: !1, file: !1, line: 296, type: !326, isLocal: false, isDefinition: true, scopeLine: 296, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !328)
!326 = !DISubroutineType(types: !327)
!327 = !{!9, !140, !5}
!328 = !{!329, !330}
!329 = !DILocalVariable(name: "buf", arg: 1, scope: !325, file: !1, line: 296, type: !140)
!330 = !DILocalVariable(name: "l", arg: 2, scope: !325, file: !1, line: 296, type: !5)
!331 = !DILocation(line: 296, column: 46, scope: !325)
!332 = !DILocation(line: 296, column: 60, scope: !325)
!333 = !DILocation(line: 297, column: 11, scope: !334)
!334 = distinct !DILexicalBlock(scope: !325, file: !1, line: 297, column: 9)
!335 = !DILocation(line: 297, column: 9, scope: !325)
!336 = !DILocation(line: 298, column: 13, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !1, line: 298, column: 13)
!338 = distinct !DILexicalBlock(scope: !334, file: !1, line: 297, column: 19)
!339 = !DILocation(line: 298, column: 13, scope: !338)
!340 = !DILocation(line: 298, column: 27, scope: !337)
!341 = !DILocation(line: 298, column: 25, scope: !337)
!342 = !DILocation(line: 298, column: 18, scope: !337)
!343 = !DILocation(line: 300, column: 18, scope: !344)
!344 = distinct !DILexicalBlock(scope: !334, file: !1, line: 300, column: 16)
!345 = !DILocation(line: 300, column: 16, scope: !334)
!346 = !DILocation(line: 301, column: 13, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !1, line: 301, column: 13)
!348 = distinct !DILexicalBlock(scope: !344, file: !1, line: 300, column: 27)
!349 = !DILocation(line: 301, column: 13, scope: !348)
!350 = !DILocation(line: 302, column: 23, scope: !351)
!351 = distinct !DILexicalBlock(scope: !347, file: !1, line: 301, column: 18)
!352 = !DILocation(line: 302, column: 22, scope: !351)
!353 = !DILocation(line: 302, column: 20, scope: !351)
!354 = !DILocation(line: 303, column: 22, scope: !351)
!355 = !DILocation(line: 303, column: 13, scope: !351)
!356 = !DILocation(line: 303, column: 20, scope: !351)
!357 = !DILocation(line: 304, column: 9, scope: !351)
!358 = !DILocation(line: 306, column: 18, scope: !359)
!359 = distinct !DILexicalBlock(scope: !344, file: !1, line: 306, column: 16)
!360 = !DILocation(line: 306, column: 16, scope: !344)
!361 = !DILocation(line: 307, column: 13, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !1, line: 307, column: 13)
!363 = distinct !DILexicalBlock(scope: !359, file: !1, line: 306, column: 29)
!364 = !DILocation(line: 307, column: 13, scope: !363)
!365 = !DILocation(line: 308, column: 23, scope: !366)
!366 = distinct !DILexicalBlock(scope: !362, file: !1, line: 307, column: 18)
!367 = !DILocation(line: 308, column: 22, scope: !366)
!368 = !DILocation(line: 308, column: 20, scope: !366)
!369 = !DILocation(line: 309, column: 25, scope: !366)
!370 = !DILocation(line: 309, column: 22, scope: !366)
!371 = !DILocation(line: 309, column: 13, scope: !366)
!372 = !DILocation(line: 309, column: 20, scope: !366)
!373 = !DILocation(line: 310, column: 22, scope: !366)
!374 = !DILocation(line: 310, column: 13, scope: !366)
!375 = !DILocation(line: 310, column: 20, scope: !366)
!376 = !DILocation(line: 311, column: 9, scope: !366)
!377 = !DILocation(line: 313, column: 18, scope: !378)
!378 = distinct !DILexicalBlock(scope: !359, file: !1, line: 313, column: 16)
!379 = !DILocation(line: 0, scope: !380)
!380 = distinct !DILexicalBlock(scope: !381, file: !1, line: 322, column: 13)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 321, column: 12)
!382 = !DILocation(line: 313, column: 16, scope: !359)
!383 = !DILocation(line: 0, scope: !381)
!384 = !DILocation(line: 314, column: 13, scope: !385)
!385 = distinct !DILexicalBlock(scope: !378, file: !1, line: 313, column: 31)
!386 = !DILocation(line: 315, column: 23, scope: !387)
!387 = distinct !DILexicalBlock(scope: !388, file: !1, line: 314, column: 18)
!388 = distinct !DILexicalBlock(scope: !385, file: !1, line: 314, column: 13)
!389 = !DILocation(line: 315, column: 22, scope: !387)
!390 = !DILocation(line: 315, column: 20, scope: !387)
!391 = !DILocation(line: 316, column: 25, scope: !387)
!392 = !DILocation(line: 316, column: 22, scope: !387)
!393 = !DILocation(line: 316, column: 13, scope: !387)
!394 = !DILocation(line: 316, column: 20, scope: !387)
!395 = !DILocation(line: 317, column: 25, scope: !387)
!396 = !DILocation(line: 317, column: 22, scope: !387)
!397 = !DILocation(line: 317, column: 13, scope: !387)
!398 = !DILocation(line: 317, column: 20, scope: !387)
!399 = !DILocation(line: 318, column: 22, scope: !387)
!400 = !DILocation(line: 318, column: 13, scope: !387)
!401 = !DILocation(line: 318, column: 20, scope: !387)
!402 = !DILocation(line: 319, column: 9, scope: !387)
!403 = !DILocation(line: 322, column: 13, scope: !381)
!404 = !DILocation(line: 323, column: 23, scope: !405)
!405 = distinct !DILexicalBlock(scope: !380, file: !1, line: 322, column: 18)
!406 = !DILocation(line: 323, column: 22, scope: !405)
!407 = !DILocation(line: 323, column: 20, scope: !405)
!408 = !DILocation(line: 324, column: 25, scope: !405)
!409 = !DILocation(line: 324, column: 22, scope: !405)
!410 = !DILocation(line: 324, column: 13, scope: !405)
!411 = !DILocation(line: 324, column: 20, scope: !405)
!412 = !DILocation(line: 325, column: 25, scope: !405)
!413 = !DILocation(line: 325, column: 22, scope: !405)
!414 = !DILocation(line: 325, column: 13, scope: !405)
!415 = !DILocation(line: 325, column: 20, scope: !405)
!416 = !DILocation(line: 326, column: 25, scope: !405)
!417 = !DILocation(line: 326, column: 22, scope: !405)
!418 = !DILocation(line: 326, column: 13, scope: !405)
!419 = !DILocation(line: 326, column: 20, scope: !405)
!420 = !DILocation(line: 327, column: 22, scope: !405)
!421 = !DILocation(line: 327, column: 13, scope: !405)
!422 = !DILocation(line: 327, column: 20, scope: !405)
!423 = !DILocation(line: 328, column: 9, scope: !405)
!424 = !DILocation(line: 0, scope: !338)
!425 = !DILocation(line: 331, column: 1, scope: !325)
!426 = distinct !DISubprogram(name: "lpDecodeBacklen", scope: !1, file: !1, line: 335, type: !427, isLocal: false, isDefinition: true, scopeLine: 335, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !429)
!427 = !DISubroutineType(types: !428)
!428 = !{!5, !140}
!429 = !{!430, !431, !432}
!430 = !DILocalVariable(name: "p", arg: 1, scope: !426, file: !1, line: 335, type: !140)
!431 = !DILocalVariable(name: "val", scope: !426, file: !1, line: 336, type: !5)
!432 = !DILocalVariable(name: "shift", scope: !426, file: !1, line: 337, type: !5)
!433 = !DILocation(line: 335, column: 41, scope: !426)
!434 = !DILocation(line: 336, column: 14, scope: !426)
!435 = !DILocation(line: 337, column: 14, scope: !426)
!436 = !DILocation(line: 338, column: 5, scope: !426)
!437 = !DILocation(line: 339, column: 27, scope: !438)
!438 = distinct !DILexicalBlock(scope: !426, file: !1, line: 338, column: 8)
!439 = !DILocation(line: 339, column: 32, scope: !438)
!440 = !DILocation(line: 339, column: 16, scope: !438)
!441 = !DILocation(line: 340, column: 20, scope: !442)
!442 = distinct !DILexicalBlock(scope: !438, file: !1, line: 340, column: 13)
!443 = !DILocation(line: 340, column: 13, scope: !438)
!444 = !DILocation(line: 342, column: 10, scope: !438)
!445 = !DILocation(line: 343, column: 13, scope: !438)
!446 = !DILocation(line: 339, column: 39, scope: !438)
!447 = !DILocation(line: 339, column: 13, scope: !438)
!448 = !DILocation(line: 0, scope: !426)
!449 = !DILocation(line: 0, scope: !450)
!450 = distinct !DILexicalBlock(scope: !438, file: !1, line: 343, column: 13)
!451 = !DILocation(line: 346, column: 1, scope: !426)
!452 = !DILocation(line: 343, column: 25, scope: !450)
!453 = distinct !DISubprogram(name: "lpEncodeString", scope: !1, file: !1, line: 352, type: !454, isLocal: false, isDefinition: true, scopeLine: 352, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !456)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !140, !140, !16}
!456 = !{!457, !458, !459}
!457 = !DILocalVariable(name: "buf", arg: 1, scope: !453, file: !1, line: 352, type: !140)
!458 = !DILocalVariable(name: "s", arg: 2, scope: !453, file: !1, line: 352, type: !140)
!459 = !DILocalVariable(name: "len", arg: 3, scope: !453, file: !1, line: 352, type: !16)
!460 = !DILocation(line: 352, column: 36, scope: !453)
!461 = !DILocation(line: 352, column: 56, scope: !453)
!462 = !DILocation(line: 352, column: 68, scope: !453)
!463 = !DILocation(line: 353, column: 13, scope: !464)
!464 = distinct !DILexicalBlock(scope: !453, file: !1, line: 353, column: 9)
!465 = !DILocation(line: 353, column: 9, scope: !453)
!466 = !DILocation(line: 354, column: 18, scope: !467)
!467 = distinct !DILexicalBlock(scope: !464, file: !1, line: 353, column: 19)
!468 = !DILocation(line: 354, column: 16, scope: !467)
!469 = !DILocation(line: 355, column: 19, scope: !467)
!470 = !DILocation(line: 355, column: 24, scope: !467)
!471 = !DILocation(line: 355, column: 9, scope: !467)
!472 = !DILocation(line: 356, column: 5, scope: !467)
!473 = !DILocation(line: 356, column: 20, scope: !474)
!474 = distinct !DILexicalBlock(scope: !464, file: !1, line: 356, column: 16)
!475 = !DILocation(line: 356, column: 16, scope: !464)
!476 = !DILocation(line: 357, column: 23, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !1, line: 356, column: 28)
!478 = !DILocation(line: 357, column: 18, scope: !477)
!479 = !DILocation(line: 357, column: 16, scope: !477)
!480 = !DILocation(line: 358, column: 18, scope: !477)
!481 = !DILocation(line: 358, column: 9, scope: !477)
!482 = !DILocation(line: 358, column: 16, scope: !477)
!483 = !DILocation(line: 359, column: 19, scope: !477)
!484 = !DILocation(line: 359, column: 24, scope: !477)
!485 = !DILocation(line: 359, column: 9, scope: !477)
!486 = !DILocation(line: 360, column: 5, scope: !477)
!487 = !DILocation(line: 361, column: 16, scope: !488)
!488 = distinct !DILexicalBlock(scope: !474, file: !1, line: 360, column: 12)
!489 = !DILocation(line: 362, column: 18, scope: !488)
!490 = !DILocation(line: 362, column: 9, scope: !488)
!491 = !DILocation(line: 362, column: 16, scope: !488)
!492 = !DILocation(line: 363, column: 23, scope: !488)
!493 = !DILocation(line: 363, column: 18, scope: !488)
!494 = !DILocation(line: 363, column: 9, scope: !488)
!495 = !DILocation(line: 363, column: 16, scope: !488)
!496 = !DILocation(line: 364, column: 23, scope: !488)
!497 = !DILocation(line: 364, column: 18, scope: !488)
!498 = !DILocation(line: 364, column: 9, scope: !488)
!499 = !DILocation(line: 364, column: 16, scope: !488)
!500 = !DILocation(line: 365, column: 23, scope: !488)
!501 = !DILocation(line: 365, column: 18, scope: !488)
!502 = !DILocation(line: 365, column: 9, scope: !488)
!503 = !DILocation(line: 365, column: 16, scope: !488)
!504 = !DILocation(line: 366, column: 19, scope: !488)
!505 = !DILocation(line: 366, column: 24, scope: !488)
!506 = !DILocation(line: 366, column: 9, scope: !488)
!507 = !DILocation(line: 368, column: 1, scope: !453)
!508 = distinct !DISubprogram(name: "lpCurrentEncodedSize", scope: !1, file: !1, line: 372, type: !509, isLocal: false, isDefinition: true, scopeLine: 372, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!16, !140}
!511 = !{!512}
!512 = !DILocalVariable(name: "p", arg: 1, scope: !508, file: !1, line: 372, type: !140)
!513 = !DILocation(line: 372, column: 46, scope: !508)
!514 = !DILocation(line: 373, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !508, file: !1, line: 373, column: 9)
!516 = !DILocation(line: 373, column: 9, scope: !508)
!517 = !DILocation(line: 373, column: 41, scope: !515)
!518 = !DILocation(line: 374, column: 9, scope: !519)
!519 = distinct !DILexicalBlock(scope: !508, file: !1, line: 374, column: 9)
!520 = !DILocation(line: 374, column: 9, scope: !508)
!521 = !DILocation(line: 374, column: 49, scope: !519)
!522 = !DILocation(line: 374, column: 48, scope: !519)
!523 = !DILocation(line: 374, column: 40, scope: !519)
!524 = !DILocation(line: 375, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !508, file: !1, line: 375, column: 9)
!526 = !DILocation(line: 375, column: 9, scope: !508)
!527 = !DILocation(line: 375, column: 41, scope: !525)
!528 = !DILocation(line: 376, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !508, file: !1, line: 376, column: 9)
!530 = !DILocation(line: 376, column: 9, scope: !508)
!531 = !DILocation(line: 376, column: 41, scope: !529)
!532 = !DILocation(line: 377, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !508, file: !1, line: 377, column: 9)
!534 = !DILocation(line: 377, column: 9, scope: !508)
!535 = !DILocation(line: 377, column: 41, scope: !533)
!536 = !DILocation(line: 378, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !508, file: !1, line: 378, column: 9)
!538 = !DILocation(line: 378, column: 9, scope: !508)
!539 = !DILocation(line: 378, column: 41, scope: !537)
!540 = !DILocation(line: 379, column: 9, scope: !541)
!541 = distinct !DILexicalBlock(scope: !508, file: !1, line: 379, column: 9)
!542 = !DILocation(line: 379, column: 9, scope: !508)
!543 = !DILocation(line: 379, column: 41, scope: !541)
!544 = !DILocation(line: 380, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !508, file: !1, line: 380, column: 9)
!546 = !DILocation(line: 380, column: 9, scope: !508)
!547 = !DILocation(line: 380, column: 50, scope: !545)
!548 = !DILocation(line: 380, column: 49, scope: !545)
!549 = !DILocation(line: 380, column: 41, scope: !545)
!550 = !DILocation(line: 381, column: 9, scope: !551)
!551 = distinct !DILexicalBlock(scope: !508, file: !1, line: 381, column: 9)
!552 = !DILocation(line: 381, column: 9, scope: !508)
!553 = !DILocation(line: 381, column: 50, scope: !551)
!554 = !DILocation(line: 381, column: 49, scope: !551)
!555 = !DILocation(line: 381, column: 41, scope: !551)
!556 = !DILocation(line: 382, column: 14, scope: !557)
!557 = distinct !DILexicalBlock(scope: !508, file: !1, line: 382, column: 9)
!558 = !DILocation(line: 382, column: 9, scope: !508)
!559 = !DILocation(line: 0, scope: !508)
!560 = !DILocation(line: 382, column: 25, scope: !557)
!561 = !DILocation(line: 384, column: 1, scope: !508)
!562 = distinct !DISubprogram(name: "lpSkip", scope: !1, file: !1, line: 390, type: !563, isLocal: false, isDefinition: true, scopeLine: 390, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !565)
!563 = !DISubroutineType(types: !564)
!564 = !{!140, !140}
!565 = !{!566, !567}
!566 = !DILocalVariable(name: "p", arg: 1, scope: !562, file: !1, line: 390, type: !140)
!567 = !DILocalVariable(name: "entrylen", scope: !562, file: !1, line: 391, type: !9)
!568 = !DILocation(line: 390, column: 38, scope: !562)
!569 = !DILocation(line: 391, column: 30, scope: !562)
!570 = !DILocation(line: 391, column: 19, scope: !562)
!571 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !572)
!572 = distinct !DILocation(line: 392, column: 17, scope: !562)
!573 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !572)
!574 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !572)
!575 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !572)
!576 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !572)
!577 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !572)
!578 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !572)
!579 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !572)
!580 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !572)
!581 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !572)
!582 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !572)
!583 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !572)
!584 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !572)
!585 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !572)
!586 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !572)
!587 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !572)
!588 = !DILocation(line: 0, scope: !381, inlinedAt: !572)
!589 = !DILocation(line: 0, scope: !562)
!590 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !572)
!591 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !572)
!592 = !DILocation(line: 392, column: 14, scope: !562)
!593 = !DILocation(line: 393, column: 7, scope: !562)
!594 = !DILocation(line: 394, column: 5, scope: !562)
!595 = distinct !DISubprogram(name: "lpNext", scope: !1, file: !1, line: 400, type: !596, isLocal: false, isDefinition: true, scopeLine: 400, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !598)
!596 = !DISubroutineType(types: !597)
!597 = !{!140, !140, !140}
!598 = !{!599, !600}
!599 = !DILocalVariable(name: "lp", arg: 1, scope: !595, file: !1, line: 400, type: !140)
!600 = !DILocalVariable(name: "p", arg: 2, scope: !595, file: !1, line: 400, type: !140)
!601 = !DILocation(line: 400, column: 38, scope: !595)
!602 = !DILocation(line: 400, column: 57, scope: !595)
!603 = !DILocation(line: 390, column: 38, scope: !562, inlinedAt: !604)
!604 = distinct !DILocation(line: 402, column: 9, scope: !595)
!605 = !DILocation(line: 391, column: 30, scope: !562, inlinedAt: !604)
!606 = !DILocation(line: 391, column: 19, scope: !562, inlinedAt: !604)
!607 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !608)
!608 = distinct !DILocation(line: 392, column: 17, scope: !562, inlinedAt: !604)
!609 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !608)
!610 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !608)
!611 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !608)
!612 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !608)
!613 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !608)
!614 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !608)
!615 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !608)
!616 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !608)
!617 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !608)
!618 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !608)
!619 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !608)
!620 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !608)
!621 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !608)
!622 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !608)
!623 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !608)
!624 = !DILocation(line: 0, scope: !381, inlinedAt: !608)
!625 = !DILocation(line: 0, scope: !562, inlinedAt: !604)
!626 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !608)
!627 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !608)
!628 = !DILocation(line: 392, column: 14, scope: !562, inlinedAt: !604)
!629 = !DILocation(line: 393, column: 7, scope: !562, inlinedAt: !604)
!630 = !DILocation(line: 394, column: 5, scope: !562, inlinedAt: !604)
!631 = !DILocation(line: 403, column: 9, scope: !632)
!632 = distinct !DILexicalBlock(scope: !595, file: !1, line: 403, column: 9)
!633 = !DILocation(line: 403, column: 14, scope: !632)
!634 = !DILocation(line: 403, column: 9, scope: !595)
!635 = !DILocation(line: 0, scope: !595)
!636 = !DILocation(line: 403, column: 25, scope: !632)
!637 = !DILocation(line: 405, column: 1, scope: !595)
!638 = distinct !DISubprogram(name: "lpPrev", scope: !1, file: !1, line: 410, type: !596, isLocal: false, isDefinition: true, scopeLine: 410, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !639)
!639 = !{!640, !641, !642}
!640 = !DILocalVariable(name: "lp", arg: 1, scope: !638, file: !1, line: 410, type: !140)
!641 = !DILocalVariable(name: "p", arg: 2, scope: !638, file: !1, line: 410, type: !140)
!642 = !DILocalVariable(name: "prevlen", scope: !638, file: !1, line: 413, type: !5)
!643 = !DILocation(line: 410, column: 38, scope: !638)
!644 = !DILocation(line: 410, column: 57, scope: !638)
!645 = !DILocation(line: 411, column: 10, scope: !646)
!646 = distinct !DILexicalBlock(scope: !638, file: !1, line: 411, column: 9)
!647 = !DILocation(line: 411, column: 14, scope: !646)
!648 = !DILocation(line: 411, column: 9, scope: !638)
!649 = !DILocation(line: 412, column: 6, scope: !638)
!650 = !DILocation(line: 335, column: 41, scope: !426, inlinedAt: !651)
!651 = distinct !DILocation(line: 413, column: 24, scope: !638)
!652 = !DILocation(line: 336, column: 14, scope: !426, inlinedAt: !651)
!653 = !DILocation(line: 337, column: 14, scope: !426, inlinedAt: !651)
!654 = !DILocation(line: 338, column: 5, scope: !426, inlinedAt: !651)
!655 = !DILocation(line: 339, column: 27, scope: !438, inlinedAt: !651)
!656 = !DILocation(line: 339, column: 32, scope: !438, inlinedAt: !651)
!657 = !DILocation(line: 339, column: 16, scope: !438, inlinedAt: !651)
!658 = !DILocation(line: 340, column: 20, scope: !442, inlinedAt: !651)
!659 = !DILocation(line: 340, column: 13, scope: !438, inlinedAt: !651)
!660 = !DILocation(line: 345, column: 5, scope: !426, inlinedAt: !651)
!661 = !DILocation(line: 346, column: 1, scope: !426, inlinedAt: !651)
!662 = !DILocation(line: 413, column: 14, scope: !638)
!663 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !664)
!664 = distinct !DILocation(line: 414, column: 16, scope: !638)
!665 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !664)
!666 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !664)
!667 = !DILocation(line: 342, column: 10, scope: !438, inlinedAt: !651)
!668 = !DILocation(line: 343, column: 13, scope: !438, inlinedAt: !651)
!669 = !DILocation(line: 339, column: 39, scope: !438, inlinedAt: !651)
!670 = !DILocation(line: 339, column: 13, scope: !438, inlinedAt: !651)
!671 = !DILocation(line: 343, column: 25, scope: !450, inlinedAt: !651)
!672 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !664)
!673 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !664)
!674 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !664)
!675 = !DILocation(line: 0, scope: !381, inlinedAt: !664)
!676 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !664)
!677 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !664)
!678 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !664)
!679 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !664)
!680 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !664)
!681 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !664)
!682 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !664)
!683 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !664)
!684 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !664)
!685 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !664)
!686 = !DILocation(line: 329, column: 9, scope: !381, inlinedAt: !664)
!687 = !DILocation(line: 0, scope: !638)
!688 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !664)
!689 = !DILocation(line: 414, column: 13, scope: !638)
!690 = !DILocation(line: 415, column: 13, scope: !638)
!691 = !DILocation(line: 415, column: 21, scope: !638)
!692 = !DILocation(line: 416, column: 1, scope: !638)
!693 = distinct !DISubprogram(name: "lpFirst", scope: !1, file: !1, line: 420, type: !563, isLocal: false, isDefinition: true, scopeLine: 420, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !694)
!694 = !{!695}
!695 = !DILocalVariable(name: "lp", arg: 1, scope: !693, file: !1, line: 420, type: !140)
!696 = !DILocation(line: 420, column: 39, scope: !693)
!697 = !DILocation(line: 421, column: 8, scope: !693)
!698 = !DILocation(line: 422, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !693, file: !1, line: 422, column: 9)
!700 = !DILocation(line: 422, column: 15, scope: !699)
!701 = !DILocation(line: 422, column: 9, scope: !693)
!702 = !DILocation(line: 0, scope: !693)
!703 = !DILocation(line: 422, column: 26, scope: !699)
!704 = !DILocation(line: 424, column: 1, scope: !693)
!705 = distinct !DISubprogram(name: "lpLast", scope: !1, file: !1, line: 428, type: !563, isLocal: false, isDefinition: true, scopeLine: 428, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !706)
!706 = !{!707, !708}
!707 = !DILocalVariable(name: "lp", arg: 1, scope: !705, file: !1, line: 428, type: !140)
!708 = !DILocalVariable(name: "p", scope: !705, file: !1, line: 429, type: !140)
!709 = !DILocation(line: 428, column: 38, scope: !705)
!710 = !DILocation(line: 429, column: 27, scope: !705)
!711 = !DILocation(line: 429, column: 26, scope: !705)
!712 = !DILocation(line: 429, column: 46, scope: !705)
!713 = !DILocation(line: 429, column: 20, scope: !705)
!714 = !DILocation(line: 430, column: 12, scope: !705)
!715 = !DILocation(line: 430, column: 5, scope: !705)
!716 = distinct !DISubprogram(name: "lpLength", scope: !1, file: !1, line: 438, type: !509, isLocal: false, isDefinition: true, scopeLine: 438, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !717)
!717 = !{!718, !719, !720, !721}
!718 = !DILocalVariable(name: "lp", arg: 1, scope: !716, file: !1, line: 438, type: !140)
!719 = !DILocalVariable(name: "numele", scope: !716, file: !1, line: 439, type: !16)
!720 = !DILocalVariable(name: "count", scope: !716, file: !1, line: 444, type: !16)
!721 = !DILocalVariable(name: "p", scope: !716, file: !1, line: 445, type: !140)
!722 = !DILocation(line: 438, column: 34, scope: !716)
!723 = !DILocation(line: 439, column: 23, scope: !716)
!724 = !DILocation(line: 439, column: 14, scope: !716)
!725 = !DILocation(line: 440, column: 16, scope: !726)
!726 = distinct !DILexicalBlock(scope: !716, file: !1, line: 440, column: 9)
!727 = !DILocation(line: 440, column: 9, scope: !716)
!728 = !DILocation(line: 444, column: 14, scope: !716)
!729 = !DILocation(line: 420, column: 39, scope: !693, inlinedAt: !730)
!730 = distinct !DILocation(line: 445, column: 24, scope: !716)
!731 = !DILocation(line: 421, column: 8, scope: !693, inlinedAt: !730)
!732 = !DILocation(line: 422, column: 9, scope: !699, inlinedAt: !730)
!733 = !DILocation(line: 422, column: 15, scope: !699, inlinedAt: !730)
!734 = !DILocation(line: 422, column: 9, scope: !693, inlinedAt: !730)
!735 = !DILocation(line: 0, scope: !693, inlinedAt: !730)
!736 = !DILocation(line: 424, column: 1, scope: !693, inlinedAt: !730)
!737 = !DILocation(line: 446, column: 5, scope: !716)
!738 = !DILocation(line: 453, column: 9, scope: !716)
!739 = !DILocation(line: 445, column: 20, scope: !716)
!740 = !DILocation(line: 447, column: 14, scope: !741)
!741 = distinct !DILexicalBlock(scope: !716, file: !1, line: 446, column: 14)
!742 = !DILocation(line: 400, column: 38, scope: !595, inlinedAt: !743)
!743 = distinct !DILocation(line: 448, column: 13, scope: !741)
!744 = !DILocation(line: 400, column: 57, scope: !595, inlinedAt: !743)
!745 = !DILocation(line: 390, column: 38, scope: !562, inlinedAt: !746)
!746 = distinct !DILocation(line: 402, column: 9, scope: !595, inlinedAt: !743)
!747 = !DILocation(line: 391, column: 30, scope: !562, inlinedAt: !746)
!748 = !DILocation(line: 391, column: 19, scope: !562, inlinedAt: !746)
!749 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !750)
!750 = distinct !DILocation(line: 392, column: 17, scope: !562, inlinedAt: !746)
!751 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !750)
!752 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !750)
!753 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !750)
!754 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !750)
!755 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !750)
!756 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !750)
!757 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !750)
!758 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !750)
!759 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !750)
!760 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !750)
!761 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !750)
!762 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !750)
!763 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !750)
!764 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !750)
!765 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !750)
!766 = !DILocation(line: 0, scope: !381, inlinedAt: !750)
!767 = !DILocation(line: 0, scope: !562, inlinedAt: !746)
!768 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !750)
!769 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !750)
!770 = !DILocation(line: 392, column: 14, scope: !562, inlinedAt: !746)
!771 = !DILocation(line: 393, column: 7, scope: !562, inlinedAt: !746)
!772 = !DILocation(line: 394, column: 5, scope: !562, inlinedAt: !746)
!773 = !DILocation(line: 403, column: 9, scope: !632, inlinedAt: !743)
!774 = !DILocation(line: 403, column: 14, scope: !632, inlinedAt: !743)
!775 = !DILocation(line: 403, column: 9, scope: !595, inlinedAt: !743)
!776 = !DILocation(line: 0, scope: !595, inlinedAt: !743)
!777 = !DILocation(line: 405, column: 1, scope: !595, inlinedAt: !743)
!778 = !DILocation(line: 453, column: 15, scope: !779)
!779 = distinct !DILexicalBlock(scope: !716, file: !1, line: 453, column: 9)
!780 = !DILocation(line: 453, column: 40, scope: !781)
!781 = distinct !DILexicalBlock(scope: !779, file: !1, line: 453, column: 40)
!782 = !DILocation(line: 0, scope: !716)
!783 = !DILocation(line: 455, column: 1, scope: !716)
!784 = distinct !DISubprogram(name: "lpGet", scope: !1, file: !1, line: 491, type: !785, isLocal: false, isDefinition: true, scopeLine: 491, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !787)
!785 = !DISubroutineType(types: !786)
!786 = !{!140, !140, !29, !140}
!787 = !{!788, !789, !790, !791, !792, !793, !794}
!788 = !DILocalVariable(name: "p", arg: 1, scope: !784, file: !1, line: 491, type: !140)
!789 = !DILocalVariable(name: "count", arg: 2, scope: !784, file: !1, line: 491, type: !29)
!790 = !DILocalVariable(name: "intbuf", arg: 3, scope: !784, file: !1, line: 491, type: !140)
!791 = !DILocalVariable(name: "val", scope: !784, file: !1, line: 492, type: !13)
!792 = !DILocalVariable(name: "uval", scope: !784, file: !1, line: 493, type: !5)
!793 = !DILocalVariable(name: "negstart", scope: !784, file: !1, line: 493, type: !5)
!794 = !DILocalVariable(name: "negmax", scope: !784, file: !1, line: 493, type: !5)
!795 = !DILocation(line: 491, column: 37, scope: !784)
!796 = !DILocation(line: 491, column: 49, scope: !784)
!797 = !DILocation(line: 491, column: 71, scope: !784)
!798 = !DILocation(line: 495, column: 9, scope: !799)
!799 = distinct !DILexicalBlock(scope: !784, file: !1, line: 495, column: 9)
!800 = !DILocation(line: 495, column: 9, scope: !784)
!801 = !DILocation(line: 493, column: 20, scope: !784)
!802 = !DILocation(line: 493, column: 30, scope: !784)
!803 = !DILocation(line: 498, column: 21, scope: !804)
!804 = distinct !DILexicalBlock(scope: !799, file: !1, line: 495, column: 41)
!805 = !DILocation(line: 498, column: 16, scope: !804)
!806 = !DILocation(line: 493, column: 14, scope: !784)
!807 = !DILocation(line: 499, column: 5, scope: !804)
!808 = !DILocation(line: 550, column: 9, scope: !784)
!809 = !DILocation(line: 499, column: 16, scope: !810)
!810 = distinct !DILexicalBlock(scope: !799, file: !1, line: 499, column: 16)
!811 = !DILocation(line: 499, column: 16, scope: !799)
!812 = !DILocation(line: 500, column: 18, scope: !813)
!813 = distinct !DILexicalBlock(scope: !810, file: !1, line: 499, column: 47)
!814 = !DILocation(line: 500, column: 16, scope: !813)
!815 = !DILocation(line: 501, column: 17, scope: !813)
!816 = !DILocation(line: 501, column: 9, scope: !813)
!817 = !DILocation(line: 502, column: 16, scope: !818)
!818 = distinct !DILexicalBlock(scope: !810, file: !1, line: 502, column: 16)
!819 = !DILocation(line: 502, column: 16, scope: !810)
!820 = !DILocation(line: 503, column: 28, scope: !821)
!821 = distinct !DILexicalBlock(scope: !818, file: !1, line: 502, column: 48)
!822 = !DILocation(line: 503, column: 35, scope: !821)
!823 = !DILocation(line: 503, column: 33, scope: !821)
!824 = !DILocation(line: 503, column: 16, scope: !821)
!825 = !DILocation(line: 506, column: 5, scope: !821)
!826 = !DILocation(line: 506, column: 16, scope: !827)
!827 = distinct !DILexicalBlock(scope: !818, file: !1, line: 506, column: 16)
!828 = !DILocation(line: 506, column: 16, scope: !818)
!829 = !DILocation(line: 507, column: 26, scope: !830)
!830 = distinct !DILexicalBlock(scope: !827, file: !1, line: 506, column: 48)
!831 = !DILocation(line: 507, column: 16, scope: !830)
!832 = !DILocation(line: 508, column: 26, scope: !830)
!833 = !DILocation(line: 508, column: 16, scope: !830)
!834 = !DILocation(line: 508, column: 30, scope: !830)
!835 = !DILocation(line: 507, column: 31, scope: !830)
!836 = !DILocation(line: 511, column: 5, scope: !830)
!837 = !DILocation(line: 511, column: 16, scope: !838)
!838 = distinct !DILexicalBlock(scope: !827, file: !1, line: 511, column: 16)
!839 = !DILocation(line: 511, column: 16, scope: !827)
!840 = !DILocation(line: 512, column: 26, scope: !841)
!841 = distinct !DILexicalBlock(scope: !838, file: !1, line: 511, column: 48)
!842 = !DILocation(line: 512, column: 16, scope: !841)
!843 = !DILocation(line: 513, column: 26, scope: !841)
!844 = !DILocation(line: 513, column: 16, scope: !841)
!845 = !DILocation(line: 513, column: 30, scope: !841)
!846 = !DILocation(line: 512, column: 31, scope: !841)
!847 = !DILocation(line: 514, column: 26, scope: !841)
!848 = !DILocation(line: 514, column: 16, scope: !841)
!849 = !DILocation(line: 514, column: 30, scope: !841)
!850 = !DILocation(line: 513, column: 34, scope: !841)
!851 = !DILocation(line: 517, column: 5, scope: !841)
!852 = !DILocation(line: 517, column: 16, scope: !853)
!853 = distinct !DILexicalBlock(scope: !838, file: !1, line: 517, column: 16)
!854 = !DILocation(line: 517, column: 16, scope: !838)
!855 = !DILocation(line: 518, column: 26, scope: !856)
!856 = distinct !DILexicalBlock(scope: !853, file: !1, line: 517, column: 48)
!857 = !DILocation(line: 518, column: 16, scope: !856)
!858 = !DILocation(line: 519, column: 26, scope: !856)
!859 = !DILocation(line: 519, column: 16, scope: !856)
!860 = !DILocation(line: 519, column: 30, scope: !856)
!861 = !DILocation(line: 518, column: 31, scope: !856)
!862 = !DILocation(line: 520, column: 26, scope: !856)
!863 = !DILocation(line: 520, column: 16, scope: !856)
!864 = !DILocation(line: 520, column: 30, scope: !856)
!865 = !DILocation(line: 519, column: 34, scope: !856)
!866 = !DILocation(line: 521, column: 26, scope: !856)
!867 = !DILocation(line: 521, column: 16, scope: !856)
!868 = !DILocation(line: 521, column: 30, scope: !856)
!869 = !DILocation(line: 520, column: 35, scope: !856)
!870 = !DILocation(line: 524, column: 5, scope: !856)
!871 = !DILocation(line: 524, column: 16, scope: !872)
!872 = distinct !DILexicalBlock(scope: !853, file: !1, line: 524, column: 16)
!873 = !DILocation(line: 524, column: 16, scope: !853)
!874 = !DILocation(line: 525, column: 26, scope: !875)
!875 = distinct !DILexicalBlock(scope: !872, file: !1, line: 524, column: 48)
!876 = !DILocation(line: 525, column: 16, scope: !875)
!877 = !DILocation(line: 526, column: 26, scope: !875)
!878 = !DILocation(line: 526, column: 16, scope: !875)
!879 = !DILocation(line: 526, column: 30, scope: !875)
!880 = !DILocation(line: 525, column: 31, scope: !875)
!881 = !DILocation(line: 527, column: 26, scope: !875)
!882 = !DILocation(line: 527, column: 16, scope: !875)
!883 = !DILocation(line: 527, column: 30, scope: !875)
!884 = !DILocation(line: 526, column: 34, scope: !875)
!885 = !DILocation(line: 528, column: 26, scope: !875)
!886 = !DILocation(line: 528, column: 16, scope: !875)
!887 = !DILocation(line: 528, column: 30, scope: !875)
!888 = !DILocation(line: 527, column: 35, scope: !875)
!889 = !DILocation(line: 529, column: 26, scope: !875)
!890 = !DILocation(line: 529, column: 16, scope: !875)
!891 = !DILocation(line: 529, column: 30, scope: !875)
!892 = !DILocation(line: 528, column: 35, scope: !875)
!893 = !DILocation(line: 530, column: 26, scope: !875)
!894 = !DILocation(line: 530, column: 16, scope: !875)
!895 = !DILocation(line: 530, column: 30, scope: !875)
!896 = !DILocation(line: 529, column: 35, scope: !875)
!897 = !DILocation(line: 531, column: 26, scope: !875)
!898 = !DILocation(line: 531, column: 16, scope: !875)
!899 = !DILocation(line: 531, column: 30, scope: !875)
!900 = !DILocation(line: 530, column: 35, scope: !875)
!901 = !DILocation(line: 532, column: 26, scope: !875)
!902 = !DILocation(line: 532, column: 16, scope: !875)
!903 = !DILocation(line: 532, column: 30, scope: !875)
!904 = !DILocation(line: 531, column: 35, scope: !875)
!905 = !DILocation(line: 535, column: 5, scope: !875)
!906 = !DILocation(line: 535, column: 16, scope: !907)
!907 = distinct !DILexicalBlock(scope: !872, file: !1, line: 535, column: 16)
!908 = !DILocation(line: 535, column: 16, scope: !872)
!909 = !DILocation(line: 536, column: 18, scope: !910)
!910 = distinct !DILexicalBlock(scope: !907, file: !1, line: 535, column: 48)
!911 = !DILocation(line: 536, column: 16, scope: !910)
!912 = !DILocation(line: 537, column: 17, scope: !910)
!913 = !DILocation(line: 537, column: 9, scope: !910)
!914 = !DILocation(line: 538, column: 16, scope: !915)
!915 = distinct !DILexicalBlock(scope: !907, file: !1, line: 538, column: 16)
!916 = !DILocation(line: 538, column: 16, scope: !907)
!917 = !DILocation(line: 539, column: 18, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !1, line: 538, column: 48)
!919 = !DILocation(line: 539, column: 16, scope: !918)
!920 = !DILocation(line: 540, column: 17, scope: !918)
!921 = !DILocation(line: 540, column: 9, scope: !918)
!922 = !DILocation(line: 542, column: 39, scope: !923)
!923 = distinct !DILexicalBlock(scope: !915, file: !1, line: 541, column: 12)
!924 = !DILocation(line: 542, column: 37, scope: !923)
!925 = !DILocation(line: 0, scope: !923)
!926 = !DILocation(line: 550, column: 14, scope: !927)
!927 = distinct !DILexicalBlock(scope: !784, file: !1, line: 550, column: 9)
!928 = !DILocation(line: 555, column: 19, scope: !929)
!929 = distinct !DILexicalBlock(scope: !927, file: !1, line: 550, column: 27)
!930 = !DILocation(line: 492, column: 13, scope: !784)
!931 = !DILocation(line: 556, column: 5, scope: !929)
!932 = !DILocation(line: 0, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !1, line: 556, column: 12)
!934 = !DILocation(line: 562, column: 9, scope: !935)
!935 = distinct !DILexicalBlock(scope: !784, file: !1, line: 562, column: 9)
!936 = !DILocation(line: 562, column: 9, scope: !784)
!937 = !DILocation(line: 563, column: 18, scope: !938)
!938 = distinct !DILexicalBlock(scope: !935, file: !1, line: 562, column: 17)
!939 = !DILocation(line: 563, column: 16, scope: !938)
!940 = !DILocation(line: 564, column: 9, scope: !938)
!941 = !DILocation(line: 566, column: 16, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !1, line: 565, column: 12)
!943 = !DILocation(line: 567, column: 9, scope: !942)
!944 = !DILocation(line: 0, scope: !918)
!945 = !DILocation(line: 0, scope: !813)
!946 = !DILocation(line: 569, column: 1, scope: !784)
!947 = distinct !DISubprogram(name: "lpInsert", scope: !1, file: !1, line: 595, type: !948, isLocal: false, isDefinition: true, scopeLine: 595, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !951)
!948 = !DISubroutineType(types: !949)
!949 = !{!140, !140, !140, !16, !140, !28, !950}
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!951 = !{!952, !953, !954, !955, !956, !957, !958, !962, !966, !967, !968, !969, !970, !971, !972, !973, !974, !977}
!952 = !DILocalVariable(name: "lp", arg: 1, scope: !947, file: !1, line: 595, type: !140)
!953 = !DILocalVariable(name: "ele", arg: 2, scope: !947, file: !1, line: 595, type: !140)
!954 = !DILocalVariable(name: "size", arg: 3, scope: !947, file: !1, line: 595, type: !16)
!955 = !DILocalVariable(name: "p", arg: 4, scope: !947, file: !1, line: 595, type: !140)
!956 = !DILocalVariable(name: "where", arg: 5, scope: !947, file: !1, line: 595, type: !28)
!957 = !DILocalVariable(name: "newp", arg: 6, scope: !947, file: !1, line: 595, type: !950)
!958 = !DILocalVariable(name: "intenc", scope: !947, file: !1, line: 596, type: !959)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 72, elements: !960)
!960 = !{!961}
!961 = !DISubrange(count: 9)
!962 = !DILocalVariable(name: "backlen", scope: !947, file: !1, line: 597, type: !963)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 40, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 5)
!966 = !DILocalVariable(name: "enclen", scope: !947, file: !1, line: 599, type: !5)
!967 = !DILocalVariable(name: "poff", scope: !947, file: !1, line: 617, type: !9)
!968 = !DILocalVariable(name: "enctype", scope: !947, file: !1, line: 627, type: !28)
!969 = !DILocalVariable(name: "backlen_size", scope: !947, file: !1, line: 638, type: !9)
!970 = !DILocalVariable(name: "old_listpack_bytes", scope: !947, file: !1, line: 639, type: !5)
!971 = !DILocalVariable(name: "replaced_len", scope: !947, file: !1, line: 640, type: !16)
!972 = !DILocalVariable(name: "new_listpack_bytes", scope: !947, file: !1, line: 646, type: !5)
!973 = !DILocalVariable(name: "dst", scope: !947, file: !1, line: 656, type: !140)
!974 = !DILocalVariable(name: "lendiff", scope: !975, file: !1, line: 669, type: !15)
!975 = distinct !DILexicalBlock(scope: !976, file: !1, line: 668, column: 12)
!976 = distinct !DILexicalBlock(scope: !947, file: !1, line: 666, column: 9)
!977 = !DILocalVariable(name: "num_elements", scope: !978, file: !1, line: 701, type: !16)
!978 = distinct !DILexicalBlock(scope: !979, file: !1, line: 700, column: 45)
!979 = distinct !DILexicalBlock(scope: !947, file: !1, line: 700, column: 9)
!980 = !DILocation(line: 595, column: 40, scope: !947)
!981 = !DILocation(line: 595, column: 59, scope: !947)
!982 = !DILocation(line: 595, column: 73, scope: !947)
!983 = !DILocation(line: 595, column: 94, scope: !947)
!984 = !DILocation(line: 595, column: 101, scope: !947)
!985 = !DILocation(line: 595, column: 124, scope: !947)
!986 = !DILocation(line: 596, column: 5, scope: !947)
!987 = !DILocation(line: 596, column: 19, scope: !947)
!988 = !DILocation(line: 597, column: 5, scope: !947)
!989 = !DILocation(line: 597, column: 19, scope: !947)
!990 = !DILocation(line: 599, column: 5, scope: !947)
!991 = !DILocation(line: 604, column: 13, scope: !992)
!992 = distinct !DILexicalBlock(scope: !947, file: !1, line: 604, column: 9)
!993 = !DILocation(line: 604, column: 9, scope: !947)
!994 = !DILocation(line: 610, column: 15, scope: !995)
!995 = distinct !DILexicalBlock(scope: !947, file: !1, line: 610, column: 9)
!996 = !DILocation(line: 610, column: 9, scope: !947)
!997 = !DILocation(line: 390, column: 38, scope: !562, inlinedAt: !998)
!998 = distinct !DILocation(line: 611, column: 13, scope: !999)
!999 = distinct !DILexicalBlock(scope: !995, file: !1, line: 610, column: 28)
!1000 = !DILocation(line: 391, column: 30, scope: !562, inlinedAt: !998)
!1001 = !DILocation(line: 391, column: 19, scope: !562, inlinedAt: !998)
!1002 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !1003)
!1003 = distinct !DILocation(line: 392, column: 17, scope: !562, inlinedAt: !998)
!1004 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !1003)
!1005 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !1003)
!1006 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !1003)
!1007 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !1003)
!1008 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !1003)
!1009 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !1003)
!1010 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !1003)
!1011 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !1003)
!1012 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !1003)
!1013 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !1003)
!1014 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !1003)
!1015 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !1003)
!1016 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !1003)
!1017 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !1003)
!1018 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !1003)
!1019 = !DILocation(line: 0, scope: !381, inlinedAt: !1003)
!1020 = !DILocation(line: 0, scope: !562, inlinedAt: !998)
!1021 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !1003)
!1022 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !1003)
!1023 = !DILocation(line: 392, column: 14, scope: !562, inlinedAt: !998)
!1024 = !DILocation(line: 393, column: 7, scope: !562, inlinedAt: !998)
!1025 = !DILocation(line: 394, column: 5, scope: !562, inlinedAt: !998)
!1026 = !DILocation(line: 613, column: 5, scope: !999)
!1027 = !DILocation(line: 604, column: 22, scope: !992)
!1028 = !DILocation(line: 617, column: 27, scope: !947)
!1029 = !DILocation(line: 617, column: 19, scope: !947)
!1030 = !DILocation(line: 628, column: 9, scope: !947)
!1031 = !DILocation(line: 627, column: 9, scope: !947)
!1032 = !DILocation(line: 599, column: 14, scope: !947)
!1033 = !DILocation(line: 632, column: 16, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 630, column: 12)
!1035 = distinct !DILexicalBlock(scope: !947, file: !1, line: 628, column: 9)
!1036 = !DILocation(line: 638, column: 34, scope: !947)
!1037 = !DILocation(line: 629, column: 19, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1035, file: !1, line: 628, column: 14)
!1039 = !DILocation(line: 630, column: 5, scope: !1038)
!1040 = !DILocation(line: 638, column: 64, scope: !947)
!1041 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !1042)
!1042 = distinct !DILocation(line: 638, column: 40, scope: !947)
!1043 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !1042)
!1044 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !1042)
!1045 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !1042)
!1046 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !1042)
!1047 = !DILocation(line: 298, column: 27, scope: !337, inlinedAt: !1042)
!1048 = !DILocation(line: 298, column: 25, scope: !337, inlinedAt: !1042)
!1049 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !1042)
!1050 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !1042)
!1051 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !1042)
!1052 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !1042)
!1053 = !DILocation(line: 302, column: 23, scope: !351, inlinedAt: !1042)
!1054 = !DILocation(line: 302, column: 22, scope: !351, inlinedAt: !1042)
!1055 = !DILocation(line: 302, column: 20, scope: !351, inlinedAt: !1042)
!1056 = !DILocation(line: 303, column: 22, scope: !351, inlinedAt: !1042)
!1057 = !DILocation(line: 303, column: 13, scope: !351, inlinedAt: !1042)
!1058 = !DILocation(line: 303, column: 20, scope: !351, inlinedAt: !1042)
!1059 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !1042)
!1060 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !1042)
!1061 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !1042)
!1062 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !1042)
!1063 = !DILocation(line: 308, column: 23, scope: !366, inlinedAt: !1042)
!1064 = !DILocation(line: 308, column: 22, scope: !366, inlinedAt: !1042)
!1065 = !DILocation(line: 308, column: 20, scope: !366, inlinedAt: !1042)
!1066 = !DILocation(line: 309, column: 25, scope: !366, inlinedAt: !1042)
!1067 = !DILocation(line: 309, column: 22, scope: !366, inlinedAt: !1042)
!1068 = !DILocation(line: 309, column: 13, scope: !366, inlinedAt: !1042)
!1069 = !DILocation(line: 309, column: 20, scope: !366, inlinedAt: !1042)
!1070 = !DILocation(line: 310, column: 22, scope: !366, inlinedAt: !1042)
!1071 = !DILocation(line: 310, column: 13, scope: !366, inlinedAt: !1042)
!1072 = !DILocation(line: 310, column: 20, scope: !366, inlinedAt: !1042)
!1073 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !1042)
!1074 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !1042)
!1075 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !1042)
!1076 = !DILocation(line: 0, scope: !381, inlinedAt: !1042)
!1077 = !DILocation(line: 315, column: 23, scope: !387, inlinedAt: !1042)
!1078 = !DILocation(line: 315, column: 22, scope: !387, inlinedAt: !1042)
!1079 = !DILocation(line: 315, column: 20, scope: !387, inlinedAt: !1042)
!1080 = !DILocation(line: 316, column: 25, scope: !387, inlinedAt: !1042)
!1081 = !DILocation(line: 316, column: 22, scope: !387, inlinedAt: !1042)
!1082 = !DILocation(line: 316, column: 13, scope: !387, inlinedAt: !1042)
!1083 = !DILocation(line: 316, column: 20, scope: !387, inlinedAt: !1042)
!1084 = !DILocation(line: 317, column: 25, scope: !387, inlinedAt: !1042)
!1085 = !DILocation(line: 317, column: 22, scope: !387, inlinedAt: !1042)
!1086 = !DILocation(line: 317, column: 13, scope: !387, inlinedAt: !1042)
!1087 = !DILocation(line: 317, column: 20, scope: !387, inlinedAt: !1042)
!1088 = !DILocation(line: 318, column: 22, scope: !387, inlinedAt: !1042)
!1089 = !DILocation(line: 318, column: 13, scope: !387, inlinedAt: !1042)
!1090 = !DILocation(line: 318, column: 20, scope: !387, inlinedAt: !1042)
!1091 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !1042)
!1092 = !DILocation(line: 323, column: 23, scope: !405, inlinedAt: !1042)
!1093 = !DILocation(line: 323, column: 22, scope: !405, inlinedAt: !1042)
!1094 = !DILocation(line: 323, column: 20, scope: !405, inlinedAt: !1042)
!1095 = !DILocation(line: 324, column: 25, scope: !405, inlinedAt: !1042)
!1096 = !DILocation(line: 324, column: 22, scope: !405, inlinedAt: !1042)
!1097 = !DILocation(line: 324, column: 13, scope: !405, inlinedAt: !1042)
!1098 = !DILocation(line: 324, column: 20, scope: !405, inlinedAt: !1042)
!1099 = !DILocation(line: 325, column: 25, scope: !405, inlinedAt: !1042)
!1100 = !DILocation(line: 325, column: 22, scope: !405, inlinedAt: !1042)
!1101 = !DILocation(line: 325, column: 13, scope: !405, inlinedAt: !1042)
!1102 = !DILocation(line: 325, column: 20, scope: !405, inlinedAt: !1042)
!1103 = !DILocation(line: 326, column: 25, scope: !405, inlinedAt: !1042)
!1104 = !DILocation(line: 326, column: 22, scope: !405, inlinedAt: !1042)
!1105 = !DILocation(line: 326, column: 13, scope: !405, inlinedAt: !1042)
!1106 = !DILocation(line: 326, column: 20, scope: !405, inlinedAt: !1042)
!1107 = !DILocation(line: 327, column: 22, scope: !405, inlinedAt: !1042)
!1108 = !DILocation(line: 327, column: 13, scope: !405, inlinedAt: !1042)
!1109 = !DILocation(line: 327, column: 20, scope: !405, inlinedAt: !1042)
!1110 = !DILocation(line: 329, column: 9, scope: !381, inlinedAt: !1042)
!1111 = !DILocation(line: 0, scope: !947)
!1112 = !DILocation(line: 638, column: 19, scope: !947)
!1113 = !DILocation(line: 639, column: 35, scope: !947)
!1114 = !DILocation(line: 639, column: 14, scope: !947)
!1115 = !DILocation(line: 640, column: 14, scope: !947)
!1116 = !DILocation(line: 641, column: 15, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !947, file: !1, line: 641, column: 9)
!1118 = !DILocation(line: 641, column: 9, scope: !947)
!1119 = !DILocation(line: 642, column: 24, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !1, line: 641, column: 30)
!1121 = !DILocation(line: 643, column: 46, scope: !1120)
!1122 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !1123)
!1123 = distinct !DILocation(line: 643, column: 25, scope: !1120)
!1124 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !1123)
!1125 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !1123)
!1126 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !1123)
!1127 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !1123)
!1128 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !1123)
!1129 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !1123)
!1130 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !1123)
!1131 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !1123)
!1132 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !1123)
!1133 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !1123)
!1134 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !1123)
!1135 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !1123)
!1136 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !1123)
!1137 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !1123)
!1138 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !1123)
!1139 = !DILocation(line: 0, scope: !381, inlinedAt: !1123)
!1140 = !DILocation(line: 0, scope: !1120)
!1141 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !1123)
!1142 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !1123)
!1143 = !DILocation(line: 643, column: 22, scope: !1120)
!1144 = !DILocation(line: 644, column: 5, scope: !1120)
!1145 = !DILocation(line: 646, column: 54, scope: !947)
!1146 = !DILocation(line: 646, column: 63, scope: !947)
!1147 = !DILocation(line: 647, column: 35, scope: !947)
!1148 = !DILocation(line: 646, column: 14, scope: !947)
!1149 = !DILocation(line: 648, column: 28, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !947, file: !1, line: 648, column: 9)
!1151 = !DILocation(line: 648, column: 9, scope: !947)
!1152 = !DILocation(line: 656, column: 20, scope: !947)
!1153 = !DILocation(line: 659, column: 28, scope: !1154)
!1154 = distinct !DILexicalBlock(scope: !947, file: !1, line: 659, column: 9)
!1155 = !DILocation(line: 659, column: 9, scope: !947)
!1156 = !DILocation(line: 660, column: 19, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !1, line: 660, column: 13)
!1158 = distinct !DILexicalBlock(scope: !1154, file: !1, line: 659, column: 50)
!1159 = !DILocation(line: 660, column: 54, scope: !1157)
!1160 = !DILocation(line: 660, column: 13, scope: !1158)
!1161 = !DILocation(line: 661, column: 18, scope: !1158)
!1162 = !DILocation(line: 662, column: 5, scope: !1158)
!1163 = !DILocation(line: 666, column: 15, scope: !976)
!1164 = !DILocation(line: 666, column: 9, scope: !947)
!1165 = !DILocation(line: 667, column: 20, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !976, file: !1, line: 666, column: 29)
!1167 = !DILocation(line: 667, column: 27, scope: !1166)
!1168 = !DILocation(line: 667, column: 63, scope: !1166)
!1169 = !DILocation(line: 667, column: 9, scope: !1166)
!1170 = !DILocation(line: 668, column: 5, scope: !1166)
!1171 = !DILocation(line: 670, column: 20, scope: !975)
!1172 = !DILocation(line: 670, column: 33, scope: !975)
!1173 = !DILocation(line: 672, column: 35, scope: !975)
!1174 = !DILocation(line: 672, column: 40, scope: !975)
!1175 = !DILocation(line: 670, column: 9, scope: !975)
!1176 = !DILocation(line: 676, column: 28, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !947, file: !1, line: 676, column: 9)
!1178 = !DILocation(line: 676, column: 9, scope: !947)
!1179 = !DILocation(line: 677, column: 19, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !1, line: 677, column: 13)
!1181 = distinct !DILexicalBlock(scope: !1177, file: !1, line: 676, column: 50)
!1182 = !DILocation(line: 677, column: 54, scope: !1180)
!1183 = !DILocation(line: 677, column: 13, scope: !1181)
!1184 = !DILocation(line: 678, column: 18, scope: !1181)
!1185 = !DILocation(line: 679, column: 5, scope: !1181)
!1186 = !DILocation(line: 0, scope: !1158)
!1187 = !DILocation(line: 0, scope: !1157)
!1188 = !DILocation(line: 682, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !947, file: !1, line: 682, column: 9)
!1190 = !DILocation(line: 682, column: 9, scope: !947)
!1191 = !DILocation(line: 683, column: 15, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !1, line: 682, column: 15)
!1193 = !{!1194, !1194, i64 0}
!1194 = !{!"any pointer", !53, i64 0}
!1195 = !DILocation(line: 686, column: 18, scope: !1196)
!1196 = distinct !DILexicalBlock(scope: !1192, file: !1, line: 686, column: 13)
!1197 = !DILocation(line: 686, column: 21, scope: !1196)
!1198 = !DILocation(line: 686, column: 28, scope: !1196)
!1199 = !DILocation(line: 686, column: 13, scope: !1192)
!1200 = !DILocation(line: 686, column: 45, scope: !1196)
!1201 = !DILocation(line: 686, column: 39, scope: !1196)
!1202 = !DILocation(line: 688, column: 9, scope: !947)
!1203 = !DILocation(line: 689, column: 21, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1205, file: !1, line: 689, column: 13)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !1, line: 688, column: 14)
!1206 = distinct !DILexicalBlock(scope: !947, file: !1, line: 688, column: 9)
!1207 = !DILocation(line: 689, column: 13, scope: !1205)
!1208 = !DILocation(line: 690, column: 13, scope: !1209)
!1209 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 689, column: 41)
!1210 = !DILocation(line: 691, column: 9, scope: !1209)
!1211 = !DILocation(line: 352, column: 36, scope: !453, inlinedAt: !1212)
!1212 = distinct !DILocation(line: 692, column: 13, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1204, file: !1, line: 691, column: 16)
!1214 = !DILocation(line: 352, column: 56, scope: !453, inlinedAt: !1212)
!1215 = !DILocation(line: 352, column: 68, scope: !453, inlinedAt: !1212)
!1216 = !DILocation(line: 353, column: 13, scope: !464, inlinedAt: !1212)
!1217 = !DILocation(line: 353, column: 9, scope: !453, inlinedAt: !1212)
!1218 = !DILocation(line: 354, column: 18, scope: !467, inlinedAt: !1212)
!1219 = !DILocation(line: 354, column: 16, scope: !467, inlinedAt: !1212)
!1220 = !DILocation(line: 355, column: 19, scope: !467, inlinedAt: !1212)
!1221 = !DILocation(line: 355, column: 24, scope: !467, inlinedAt: !1212)
!1222 = !DILocation(line: 355, column: 9, scope: !467, inlinedAt: !1212)
!1223 = !DILocation(line: 356, column: 5, scope: !467, inlinedAt: !1212)
!1224 = !DILocation(line: 356, column: 20, scope: !474, inlinedAt: !1212)
!1225 = !DILocation(line: 356, column: 16, scope: !464, inlinedAt: !1212)
!1226 = !DILocation(line: 357, column: 23, scope: !477, inlinedAt: !1212)
!1227 = !DILocation(line: 357, column: 18, scope: !477, inlinedAt: !1212)
!1228 = !DILocation(line: 357, column: 16, scope: !477, inlinedAt: !1212)
!1229 = !DILocation(line: 358, column: 18, scope: !477, inlinedAt: !1212)
!1230 = !DILocation(line: 358, column: 9, scope: !477, inlinedAt: !1212)
!1231 = !DILocation(line: 358, column: 16, scope: !477, inlinedAt: !1212)
!1232 = !DILocation(line: 359, column: 19, scope: !477, inlinedAt: !1212)
!1233 = !DILocation(line: 359, column: 24, scope: !477, inlinedAt: !1212)
!1234 = !DILocation(line: 359, column: 9, scope: !477, inlinedAt: !1212)
!1235 = !DILocation(line: 360, column: 5, scope: !477, inlinedAt: !1212)
!1236 = !DILocation(line: 361, column: 16, scope: !488, inlinedAt: !1212)
!1237 = !DILocation(line: 362, column: 18, scope: !488, inlinedAt: !1212)
!1238 = !DILocation(line: 362, column: 9, scope: !488, inlinedAt: !1212)
!1239 = !DILocation(line: 362, column: 16, scope: !488, inlinedAt: !1212)
!1240 = !DILocation(line: 363, column: 23, scope: !488, inlinedAt: !1212)
!1241 = !DILocation(line: 363, column: 18, scope: !488, inlinedAt: !1212)
!1242 = !DILocation(line: 363, column: 9, scope: !488, inlinedAt: !1212)
!1243 = !DILocation(line: 363, column: 16, scope: !488, inlinedAt: !1212)
!1244 = !DILocation(line: 364, column: 23, scope: !488, inlinedAt: !1212)
!1245 = !DILocation(line: 364, column: 18, scope: !488, inlinedAt: !1212)
!1246 = !DILocation(line: 364, column: 9, scope: !488, inlinedAt: !1212)
!1247 = !DILocation(line: 364, column: 16, scope: !488, inlinedAt: !1212)
!1248 = !DILocation(line: 365, column: 23, scope: !488, inlinedAt: !1212)
!1249 = !DILocation(line: 365, column: 18, scope: !488, inlinedAt: !1212)
!1250 = !DILocation(line: 365, column: 9, scope: !488, inlinedAt: !1212)
!1251 = !DILocation(line: 365, column: 16, scope: !488, inlinedAt: !1212)
!1252 = !DILocation(line: 366, column: 19, scope: !488, inlinedAt: !1212)
!1253 = !DILocation(line: 366, column: 24, scope: !488, inlinedAt: !1212)
!1254 = !DILocation(line: 366, column: 9, scope: !488, inlinedAt: !1212)
!1255 = !DILocation(line: 368, column: 1, scope: !453, inlinedAt: !1212)
!1256 = !DILocation(line: 694, column: 13, scope: !1205)
!1257 = !DILocation(line: 695, column: 9, scope: !1205)
!1258 = !DILocation(line: 697, column: 5, scope: !1205)
!1259 = !DILocation(line: 0, scope: !1205)
!1260 = !DILocation(line: 700, column: 15, scope: !979)
!1261 = !DILocation(line: 700, column: 29, scope: !979)
!1262 = !DILocation(line: 701, column: 33, scope: !978)
!1263 = !DILocation(line: 701, column: 18, scope: !978)
!1264 = !DILocation(line: 702, column: 26, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !978, file: !1, line: 702, column: 13)
!1266 = !DILocation(line: 702, column: 13, scope: !978)
!1267 = !DILocation(line: 703, column: 17, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1265, file: !1, line: 702, column: 52)
!1269 = !DILocation(line: 0, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 704, column: 17)
!1271 = distinct !DILexicalBlock(scope: !1268, file: !1, line: 703, column: 17)
!1272 = !DILocation(line: 0, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1271, file: !1, line: 706, column: 17)
!1274 = !DILocation(line: 708, column: 5, scope: !978)
!1275 = !DILocation(line: 709, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !947, file: !1, line: 709, column: 5)
!1277 = !DILocation(line: 730, column: 5, scope: !947)
!1278 = !DILocation(line: 731, column: 1, scope: !947)
!1279 = distinct !DISubprogram(name: "lpAppend", scope: !1, file: !1, line: 736, type: !1280, isLocal: false, isDefinition: true, scopeLine: 736, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1282)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!140, !140, !140, !16}
!1282 = !{!1283, !1284, !1285, !1286, !1287}
!1283 = !DILocalVariable(name: "lp", arg: 1, scope: !1279, file: !1, line: 736, type: !140)
!1284 = !DILocalVariable(name: "ele", arg: 2, scope: !1279, file: !1, line: 736, type: !140)
!1285 = !DILocalVariable(name: "size", arg: 3, scope: !1279, file: !1, line: 736, type: !16)
!1286 = !DILocalVariable(name: "listpack_bytes", scope: !1279, file: !1, line: 737, type: !5)
!1287 = !DILocalVariable(name: "eofptr", scope: !1279, file: !1, line: 738, type: !140)
!1288 = !DILocation(line: 736, column: 40, scope: !1279)
!1289 = !DILocation(line: 736, column: 59, scope: !1279)
!1290 = !DILocation(line: 736, column: 73, scope: !1279)
!1291 = !DILocation(line: 737, column: 31, scope: !1279)
!1292 = !DILocation(line: 737, column: 14, scope: !1279)
!1293 = !DILocation(line: 738, column: 32, scope: !1279)
!1294 = !DILocation(line: 738, column: 49, scope: !1279)
!1295 = !DILocation(line: 738, column: 20, scope: !1279)
!1296 = !DILocation(line: 739, column: 12, scope: !1279)
!1297 = !DILocation(line: 739, column: 5, scope: !1279)
!1298 = distinct !DISubprogram(name: "lpDelete", scope: !1, file: !1, line: 746, type: !1299, isLocal: false, isDefinition: true, scopeLine: 746, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1301)
!1299 = !DISubroutineType(types: !1300)
!1300 = !{!140, !140, !140, !950}
!1301 = !{!1302, !1303, !1304}
!1302 = !DILocalVariable(name: "lp", arg: 1, scope: !1298, file: !1, line: 746, type: !140)
!1303 = !DILocalVariable(name: "p", arg: 2, scope: !1298, file: !1, line: 746, type: !140)
!1304 = !DILocalVariable(name: "newp", arg: 3, scope: !1298, file: !1, line: 746, type: !950)
!1305 = !DILocation(line: 746, column: 40, scope: !1298)
!1306 = !DILocation(line: 746, column: 59, scope: !1298)
!1307 = !DILocation(line: 746, column: 78, scope: !1298)
!1308 = !DILocation(line: 747, column: 12, scope: !1298)
!1309 = !DILocation(line: 747, column: 5, scope: !1298)
!1310 = distinct !DISubprogram(name: "lpBytes", scope: !1, file: !1, line: 751, type: !509, isLocal: false, isDefinition: true, scopeLine: 751, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1311)
!1311 = !{!1312}
!1312 = !DILocalVariable(name: "lp", arg: 1, scope: !1310, file: !1, line: 751, type: !140)
!1313 = !DILocation(line: 751, column: 33, scope: !1310)
!1314 = !DILocation(line: 752, column: 12, scope: !1310)
!1315 = !DILocation(line: 752, column: 5, scope: !1310)
!1316 = distinct !DISubprogram(name: "lpSeek", scope: !1, file: !1, line: 760, type: !1317, isLocal: false, isDefinition: true, scopeLine: 760, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !1319)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!140, !140, !15}
!1319 = !{!1320, !1321, !1322, !1323, !1324, !1327}
!1320 = !DILocalVariable(name: "lp", arg: 1, scope: !1316, file: !1, line: 760, type: !140)
!1321 = !DILocalVariable(name: "index", arg: 2, scope: !1316, file: !1, line: 760, type: !15)
!1322 = !DILocalVariable(name: "forward", scope: !1316, file: !1, line: 761, type: !28)
!1323 = !DILocalVariable(name: "numele", scope: !1316, file: !1, line: 767, type: !16)
!1324 = !DILocalVariable(name: "ele", scope: !1325, file: !1, line: 788, type: !140)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 787, column: 18)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 787, column: 9)
!1327 = !DILocalVariable(name: "ele", scope: !1328, file: !1, line: 795, type: !140)
!1328 = distinct !DILexicalBlock(scope: !1326, file: !1, line: 794, column: 12)
!1329 = !DILocation(line: 760, column: 38, scope: !1316)
!1330 = !DILocation(line: 760, column: 47, scope: !1316)
!1331 = !DILocation(line: 761, column: 9, scope: !1316)
!1332 = !DILocation(line: 767, column: 23, scope: !1316)
!1333 = !DILocation(line: 767, column: 14, scope: !1316)
!1334 = !DILocation(line: 768, column: 16, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1316, file: !1, line: 768, column: 9)
!1336 = !DILocation(line: 0, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1338, file: !1, line: 783, column: 13)
!1338 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 780, column: 12)
!1339 = !DILocation(line: 768, column: 9, scope: !1316)
!1340 = !DILocation(line: 0, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1335, file: !1, line: 768, column: 42)
!1342 = !DILocation(line: 769, column: 13, scope: !1341)
!1343 = !DILocation(line: 770, column: 13, scope: !1341)
!1344 = !DILocation(line: 771, column: 22, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 771, column: 13)
!1346 = !DILocation(line: 769, column: 32, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 769, column: 13)
!1348 = !DILocation(line: 769, column: 44, scope: !1347)
!1349 = !DILocation(line: 769, column: 24, scope: !1347)
!1350 = !DILocation(line: 770, column: 19, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 770, column: 13)
!1352 = !DILocation(line: 771, column: 19, scope: !1345)
!1353 = !DILocation(line: 771, column: 13, scope: !1341)
!1354 = !DILocation(line: 774, column: 27, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1341, file: !1, line: 774, column: 13)
!1356 = !DILocation(line: 774, column: 21, scope: !1355)
!1357 = !DILocation(line: 774, column: 19, scope: !1355)
!1358 = !DILocation(line: 774, column: 13, scope: !1341)
!1359 = !DILocation(line: 778, column: 19, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1355, file: !1, line: 774, column: 31)
!1361 = !DILocation(line: 779, column: 9, scope: !1360)
!1362 = !DILocation(line: 783, column: 13, scope: !1338)
!1363 = !DILocation(line: 787, column: 9, scope: !1316)
!1364 = !DILocation(line: 420, column: 39, scope: !693, inlinedAt: !1365)
!1365 = distinct !DILocation(line: 788, column: 30, scope: !1325)
!1366 = !DILocation(line: 421, column: 8, scope: !693, inlinedAt: !1365)
!1367 = !DILocation(line: 422, column: 9, scope: !699, inlinedAt: !1365)
!1368 = !DILocation(line: 422, column: 15, scope: !699, inlinedAt: !1365)
!1369 = !DILocation(line: 422, column: 9, scope: !693, inlinedAt: !1365)
!1370 = !DILocation(line: 0, scope: !693, inlinedAt: !1365)
!1371 = !DILocation(line: 422, column: 26, scope: !699, inlinedAt: !1365)
!1372 = !DILocation(line: 424, column: 1, scope: !693, inlinedAt: !1365)
!1373 = !DILocation(line: 788, column: 24, scope: !1325)
!1374 = !DILocation(line: 789, column: 9, scope: !1325)
!1375 = !DILocation(line: 789, column: 22, scope: !1325)
!1376 = !DILocation(line: 789, column: 26, scope: !1325)
!1377 = !DILocation(line: 400, column: 38, scope: !595, inlinedAt: !1378)
!1378 = distinct !DILocation(line: 790, column: 19, scope: !1379)
!1379 = distinct !DILexicalBlock(scope: !1325, file: !1, line: 789, column: 34)
!1380 = !DILocation(line: 400, column: 57, scope: !595, inlinedAt: !1378)
!1381 = !DILocation(line: 390, column: 38, scope: !562, inlinedAt: !1382)
!1382 = distinct !DILocation(line: 402, column: 9, scope: !595, inlinedAt: !1378)
!1383 = !DILocation(line: 391, column: 30, scope: !562, inlinedAt: !1382)
!1384 = !DILocation(line: 391, column: 19, scope: !562, inlinedAt: !1382)
!1385 = !DILocation(line: 296, column: 46, scope: !325, inlinedAt: !1386)
!1386 = distinct !DILocation(line: 392, column: 17, scope: !562, inlinedAt: !1382)
!1387 = !DILocation(line: 296, column: 60, scope: !325, inlinedAt: !1386)
!1388 = !DILocation(line: 297, column: 11, scope: !334, inlinedAt: !1386)
!1389 = !DILocation(line: 297, column: 9, scope: !325, inlinedAt: !1386)
!1390 = !DILocation(line: 298, column: 13, scope: !338, inlinedAt: !1386)
!1391 = !DILocation(line: 299, column: 9, scope: !338, inlinedAt: !1386)
!1392 = !DILocation(line: 300, column: 18, scope: !344, inlinedAt: !1386)
!1393 = !DILocation(line: 300, column: 16, scope: !334, inlinedAt: !1386)
!1394 = !DILocation(line: 301, column: 13, scope: !348, inlinedAt: !1386)
!1395 = !DILocation(line: 305, column: 9, scope: !348, inlinedAt: !1386)
!1396 = !DILocation(line: 306, column: 18, scope: !359, inlinedAt: !1386)
!1397 = !DILocation(line: 306, column: 16, scope: !344, inlinedAt: !1386)
!1398 = !DILocation(line: 307, column: 13, scope: !363, inlinedAt: !1386)
!1399 = !DILocation(line: 312, column: 9, scope: !363, inlinedAt: !1386)
!1400 = !DILocation(line: 313, column: 18, scope: !378, inlinedAt: !1386)
!1401 = !DILocation(line: 313, column: 16, scope: !359, inlinedAt: !1386)
!1402 = !DILocation(line: 0, scope: !381, inlinedAt: !1386)
!1403 = !DILocation(line: 0, scope: !562, inlinedAt: !1382)
!1404 = !DILocation(line: 320, column: 9, scope: !385, inlinedAt: !1386)
!1405 = !DILocation(line: 331, column: 1, scope: !325, inlinedAt: !1386)
!1406 = !DILocation(line: 392, column: 14, scope: !562, inlinedAt: !1382)
!1407 = !DILocation(line: 393, column: 7, scope: !562, inlinedAt: !1382)
!1408 = !DILocation(line: 394, column: 5, scope: !562, inlinedAt: !1382)
!1409 = !DILocation(line: 403, column: 9, scope: !632, inlinedAt: !1378)
!1410 = !DILocation(line: 403, column: 14, scope: !632, inlinedAt: !1378)
!1411 = !DILocation(line: 403, column: 9, scope: !595, inlinedAt: !1378)
!1412 = !DILocation(line: 0, scope: !595, inlinedAt: !1378)
!1413 = !DILocation(line: 403, column: 25, scope: !632, inlinedAt: !1378)
!1414 = !DILocation(line: 405, column: 1, scope: !595, inlinedAt: !1378)
!1415 = !DILocation(line: 791, column: 18, scope: !1379)
!1416 = distinct !{!1416, !1374, !1417}
!1417 = !DILocation(line: 792, column: 9, scope: !1325)
!1418 = !DILocation(line: 428, column: 38, scope: !705, inlinedAt: !1419)
!1419 = distinct !DILocation(line: 795, column: 30, scope: !1328)
!1420 = !DILocation(line: 429, column: 27, scope: !705, inlinedAt: !1419)
!1421 = !DILocation(line: 429, column: 26, scope: !705, inlinedAt: !1419)
!1422 = !DILocation(line: 429, column: 46, scope: !705, inlinedAt: !1419)
!1423 = !DILocation(line: 429, column: 20, scope: !705, inlinedAt: !1419)
!1424 = !DILocation(line: 430, column: 12, scope: !705, inlinedAt: !1419)
!1425 = !DILocation(line: 430, column: 5, scope: !705, inlinedAt: !1419)
!1426 = !DILocation(line: 795, column: 24, scope: !1328)
!1427 = !DILocation(line: 796, column: 9, scope: !1328)
!1428 = !DILocation(line: 796, column: 22, scope: !1328)
!1429 = !DILocation(line: 796, column: 27, scope: !1328)
!1430 = !DILocation(line: 797, column: 19, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1328, file: !1, line: 796, column: 35)
!1432 = !DILocation(line: 798, column: 18, scope: !1431)
!1433 = distinct !{!1433, !1427, !1434}
!1434 = !DILocation(line: 799, column: 9, scope: !1328)
!1435 = !DILocation(line: 0, scope: !1328)
!1436 = !DILocation(line: 802, column: 1, scope: !1316)
