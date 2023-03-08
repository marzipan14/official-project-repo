; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNew() local_unnamed_addr #0 !dbg !10 {
  %1 = tail call i8* @zmalloc(i64 2) #4, !dbg !17
  store i8 0, i8* %1, align 1, !dbg !19, !tbaa !20
  %2 = getelementptr inbounds i8, i8* %1, i64 1, !dbg !23
  store i8 -1, i8* %2, align 1, !dbg !24, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  ret i8* %1, !dbg !25
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapSet(i8*, i8*, i32, i8*, i32, i32*) local_unnamed_addr #0 !dbg !26 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = bitcast i32* %11 to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !51
  %13 = add i32 %4, %2, !dbg !63
  %14 = add i32 %13, 3, !dbg !64
  %15 = icmp ugt i32 %2, 253, !dbg !66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br i1 %15, label %16, label %18, !dbg !68

; <label>:16:                                     ; preds = %6
  %17 = add i32 %13, 7, !dbg !69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !70
  br label %18, !dbg !70

; <label>:18:                                     ; preds = %16, %6
  %19 = phi i32 [ %17, %16 ], [ %14, %6 ], !dbg !71
  %20 = icmp ugt i32 %4, 253, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  br i1 %20, label %21, label %23, !dbg !74

; <label>:21:                                     ; preds = %18
  %22 = add i32 %19, 4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br label %23, !dbg !76

; <label>:23:                                     ; preds = %18, %21
  %24 = phi i32 [ %22, %21 ], [ %19, %18 ], !dbg !77
  %25 = zext i32 %24 to i64, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !79
  %26 = icmp ne i32* %5, null, !dbg !82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %26, label %27, label %28, !dbg !84

; <label>:27:                                     ; preds = %23
  store i32 0, i32* %5, align 4, !dbg !85, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %28, !dbg !88

; <label>:28:                                     ; preds = %27, %23
  %29 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %11) #6, !dbg !90
  %30 = icmp eq i8* %29, null, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br i1 %30, label %31, label %48, !dbg !94

; <label>:31:                                     ; preds = %28
  %32 = load i32, i32* %11, align 4, !dbg !95, !tbaa !86
  %33 = add i32 %32, %24, !dbg !97
  %34 = zext i32 %33 to i64, !dbg !107
  %35 = call i8* @zrealloc(i8* %0, i64 %34) #4, !dbg !108
  %36 = add i32 %33, -1, !dbg !109
  %37 = zext i32 %36 to i64, !dbg !110
  %38 = getelementptr inbounds i8, i8* %35, i64 %37, !dbg !110
  store i8 -1, i8* %38, align 1, !dbg !111, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  %39 = load i32, i32* %11, align 4, !dbg !113, !tbaa !86
  %40 = zext i32 %39 to i64, !dbg !114
  %41 = getelementptr inbounds i8, i8* %35, i64 %40, !dbg !114
  %42 = getelementptr inbounds i8, i8* %41, i64 -1, !dbg !115
  %43 = add i32 %39, %24, !dbg !116
  store i32 %43, i32* %11, align 4, !dbg !117, !tbaa !86
  %44 = load i8, i8* %35, align 1, !dbg !118, !tbaa !20
  %45 = icmp ult i8 %44, -2, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br i1 %45, label %46, label %114, !dbg !121

; <label>:46:                                     ; preds = %31
  %47 = add i8 %44, 1, !dbg !122
  store i8 %47, i8* %35, align 1, !dbg !122, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  br label %114, !dbg !123

; <label>:48:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br i1 %26, label %49, label %50, !dbg !124

; <label>:49:                                     ; preds = %48
  store i32 1, i32* %5, align 4, !dbg !126, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br label %50, !dbg !128

; <label>:50:                                     ; preds = %49, %48
  %51 = bitcast i32* %9 to i8*, !dbg !149
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #5, !dbg !149
  %52 = load i8, i8* %29, align 1, !dbg !150, !tbaa !20
  %53 = zext i8 %52 to i32, !dbg !150
  store i32 %53, i32* %9, align 4, !dbg !151, !tbaa !86
  %54 = icmp ult i8 %52, -2, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br i1 %54, label %59, label %55, !dbg !154

; <label>:55:                                     ; preds = %50
  %56 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !155
  %57 = call i8* @memcpy(i8* nonnull %51, i8* nonnull %56, i64 4) #4, !dbg !156
  %58 = load i32, i32* %9, align 4, !dbg !157, !tbaa !86
  br label %59, !dbg !158

; <label>:59:                                     ; preds = %50, %55
  %60 = phi i32 [ %58, %55 ], [ %53, %50 ], !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #5, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  %61 = icmp ult i32 %60, 254, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %62 = select i1 %61, i32 1, i32 5, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  %63 = add i32 %62, %60, !dbg !181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  %64 = zext i32 %63 to i64, !dbg !184
  %65 = getelementptr inbounds i8, i8* %29, i64 %64, !dbg !184
  %66 = bitcast i32* %8 to i8*, !dbg !194
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #5, !dbg !194
  %67 = load i8, i8* %65, align 1, !dbg !195, !tbaa !20
  %68 = zext i8 %67 to i32, !dbg !195
  store i32 %68, i32* %8, align 4, !dbg !196, !tbaa !86
  %69 = icmp ult i8 %67, -2, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %69, label %74, label %70, !dbg !198

; <label>:70:                                     ; preds = %59
  %71 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !199
  %72 = call i8* @memcpy(i8* nonnull %66, i8* nonnull %71, i64 4) #4, !dbg !200
  %73 = load i32, i32* %8, align 4, !dbg !201, !tbaa !86
  br label %74, !dbg !202

; <label>:74:                                     ; preds = %59, %70
  %75 = phi i32 [ %73, %70 ], [ %68, %59 ], !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #5, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  %76 = icmp ult i32 %75, 254, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  %77 = select i1 %76, i32 1, i32 5, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  %78 = zext i32 %77 to i64, !dbg !216
  %79 = getelementptr inbounds i8, i8* %65, i64 %78, !dbg !216
  %80 = load i8, i8* %79, align 1, !dbg !216, !tbaa !20
  %81 = zext i8 %80 to i32, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %82 = add i32 %63, 1, !dbg !218
  %83 = add i32 %82, %75, !dbg !219
  %84 = add i32 %83, %77, !dbg !220
  %85 = add i32 %84, %81, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  %86 = icmp ugt i32 %24, %85, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %86, label %87, label %114, !dbg !225

; <label>:87:                                     ; preds = %74
  %88 = ptrtoint i8* %29 to i64, !dbg !226
  %89 = ptrtoint i8* %0 to i64, !dbg !226
  %90 = sub i64 %88, %89, !dbg !226
  %91 = trunc i64 %90 to i32, !dbg !228
  %92 = load i32, i32* %11, align 4, !dbg !230, !tbaa !86
  %93 = sub i32 %92, %85, !dbg !231
  %94 = add i32 %93, %24, !dbg !232
  %95 = zext i32 %94 to i64, !dbg !236
  %96 = call i8* @zrealloc(i8* %0, i64 %95) #4, !dbg !237
  %97 = add i32 %94, -1, !dbg !238
  %98 = zext i32 %97 to i64, !dbg !239
  %99 = getelementptr inbounds i8, i8* %96, i64 %98, !dbg !239
  store i8 -1, i8* %99, align 1, !dbg !240, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  %100 = and i64 %90, 4294967295, !dbg !242
  %101 = getelementptr inbounds i8, i8* %96, i64 %100, !dbg !242
  %102 = getelementptr inbounds i8, i8* %101, i64 %25, !dbg !243
  %103 = zext i32 %85 to i64, !dbg !244
  %104 = getelementptr inbounds i8, i8* %101, i64 %103, !dbg !244
  %105 = load i32, i32* %11, align 4, !dbg !245, !tbaa !86
  %106 = add i32 %85, %91, !dbg !246
  %107 = xor i32 %106, -1, !dbg !247
  %108 = add i32 %105, %107, !dbg !247
  %109 = zext i32 %108 to i64, !dbg !245
  %110 = call i8* @memmove(i8* %102, i8* %104, i64 %109) #4, !dbg !248
  %111 = load i32, i32* %11, align 4, !dbg !249, !tbaa !86
  %112 = sub i32 %24, %85, !dbg !250
  %113 = add i32 %112, %111, !dbg !251
  store i32 %113, i32* %11, align 4, !dbg !252, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br label %114, !dbg !253

; <label>:114:                                    ; preds = %74, %87, %31, %46
  %115 = phi i32 [ %24, %46 ], [ %24, %31 ], [ %24, %87 ], [ %85, %74 ], !dbg !254
  %116 = phi i8* [ %35, %46 ], [ %35, %31 ], [ %96, %87 ], [ %0, %74 ]
  %117 = phi i8* [ %42, %46 ], [ %42, %31 ], [ %101, %87 ], [ %29, %74 ], !dbg !255
  %118 = sub i32 %115, %24, !dbg !256
  %119 = icmp ugt i32 %118, 3, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %119, label %120, label %143, !dbg !260

; <label>:120:                                    ; preds = %114
  %121 = ptrtoint i8* %117 to i64, !dbg !261
  %122 = ptrtoint i8* %116 to i64, !dbg !261
  %123 = sub i64 %121, %122, !dbg !261
  %124 = trunc i64 %123 to i32, !dbg !263
  %125 = getelementptr inbounds i8, i8* %117, i64 %25, !dbg !264
  %126 = zext i32 %115 to i64, !dbg !265
  %127 = getelementptr inbounds i8, i8* %117, i64 %126, !dbg !265
  %128 = load i32, i32* %11, align 4, !dbg !266, !tbaa !86
  %129 = add i32 %115, %124, !dbg !267
  %130 = xor i32 %129, -1, !dbg !268
  %131 = add i32 %128, %130, !dbg !268
  %132 = zext i32 %131 to i64, !dbg !266
  %133 = call i8* @memmove(i8* %125, i8* %127, i64 %132) #4, !dbg !269
  %134 = load i32, i32* %11, align 4, !dbg !270, !tbaa !86
  %135 = sub i32 %134, %118, !dbg !270
  store i32 %135, i32* %11, align 4, !dbg !270, !tbaa !86
  %136 = zext i32 %135 to i64, !dbg !274
  %137 = call i8* @zrealloc(i8* %116, i64 %136) #4, !dbg !275
  %138 = add i32 %135, -1, !dbg !276
  %139 = zext i32 %138 to i64, !dbg !277
  %140 = getelementptr inbounds i8, i8* %137, i64 %139, !dbg !277
  store i8 -1, i8* %140, align 1, !dbg !278, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %141 = and i64 %123, 4294967295, !dbg !280
  %142 = getelementptr inbounds i8, i8* %137, i64 %141, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !282
  br label %145, !dbg !282

; <label>:143:                                    ; preds = %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %144 = trunc i32 %118 to i8
  br label %145

; <label>:145:                                    ; preds = %143, %120
  %146 = phi i8* [ %137, %120 ], [ %116, %143 ], !dbg !283
  %147 = phi i8 [ 0, %120 ], [ %144, %143 ]
  %148 = phi i8* [ %142, %120 ], [ %117, %143 ], !dbg !283
  %149 = bitcast i32* %7 to i8*, !dbg !284
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %149), !dbg !284
  store i32 %2, i32* %7, align 4, !tbaa !86
  %150 = icmp eq i8* %148, null, !dbg !287
  %151 = icmp ult i32 %2, 254, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %150, label %152, label %154, !dbg !289

; <label>:152:                                    ; preds = %145
  %153 = select i1 %151, i64 1, i64 5, !dbg !290
  br label %160, !dbg !291

; <label>:154:                                    ; preds = %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %151, label %155, label %157, !dbg !292

; <label>:155:                                    ; preds = %154
  %156 = trunc i32 %2 to i8, !dbg !293
  store i8 %156, i8* %148, align 1, !dbg !295, !tbaa !20
  br label %160, !dbg !296

; <label>:157:                                    ; preds = %154
  store i8 -2, i8* %148, align 1, !dbg !297, !tbaa !20
  %158 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !299
  %159 = call i8* @memcpy(i8* nonnull %158, i8* nonnull %149, i64 4) #4, !dbg !300
  br label %160, !dbg !301

; <label>:160:                                    ; preds = %152, %155, %157
  %161 = phi i64 [ %153, %152 ], [ 1, %155 ], [ 5, %157 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %149), !dbg !302
  %162 = getelementptr inbounds i8, i8* %148, i64 %161, !dbg !303
  %163 = zext i32 %2 to i64, !dbg !304
  %164 = call i8* @memcpy(i8* nonnull %162, i8* %1, i64 %163) #4, !dbg !305
  %165 = getelementptr inbounds i8, i8* %162, i64 %163, !dbg !306
  %166 = bitcast i32* %10 to i8*, !dbg !307
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %166), !dbg !307
  store i32 %4, i32* %10, align 4, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !310
  %167 = icmp ult i32 %4, 254, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %167, label %168, label %170, !dbg !312

; <label>:168:                                    ; preds = %160
  %169 = trunc i32 %4 to i8, !dbg !313
  store i8 %169, i8* %165, align 1, !dbg !314, !tbaa !20
  br label %173, !dbg !315

; <label>:170:                                    ; preds = %160
  store i8 -2, i8* %165, align 1, !dbg !316, !tbaa !20
  %171 = getelementptr inbounds i8, i8* %165, i64 1, !dbg !317
  %172 = call i8* @memcpy(i8* nonnull %171, i8* nonnull %166, i64 4) #4, !dbg !318
  br label %173, !dbg !319

; <label>:173:                                    ; preds = %168, %170
  %174 = phi i64 [ 1, %168 ], [ 5, %170 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %166), !dbg !320
  %175 = getelementptr inbounds i8, i8* %165, i64 %174, !dbg !321
  %176 = getelementptr inbounds i8, i8* %175, i64 1, !dbg !322
  store i8 %147, i8* %175, align 1, !dbg !323, !tbaa !20
  %177 = zext i32 %4 to i64, !dbg !324
  %178 = call i8* @memcpy(i8* nonnull %176, i8* %3, i64 %177) #4, !dbg !325
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  ret i8* %146, !dbg !327
}

; Function Attrs: noredzone nounwind
define internal fastcc i8* @zipmapLookupRaw(i8*, i8*, i32, i32*) unnamed_addr #0 !dbg !328 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  %8 = load i8, i8* %7, align 1, !dbg !351, !tbaa !20
  %9 = icmp eq i8 %8, -1, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %9, label %65, label %10, !dbg !350

; <label>:10:                                     ; preds = %4
  %11 = bitcast i32* %6 to i8*
  %12 = icmp ne i8* %1, null
  %13 = bitcast i32* %5 to i8*
  %14 = icmp eq i32* %3, null
  %15 = zext i32 %2 to i64
  br label %16, !dbg !350

; <label>:16:                                     ; preds = %10, %52
  %17 = phi i8 [ %8, %10 ], [ %63, %52 ], !dbg !353
  %18 = phi i8* [ %7, %10 ], [ %62, %52 ]
  %19 = phi i8* [ null, %10 ], [ %41, %52 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !356
  %20 = zext i8 %17 to i32, !dbg !353
  store i32 %20, i32* %6, align 4, !dbg !357, !tbaa !86
  %21 = icmp ult i8 %17, -2, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %21, label %26, label %22, !dbg !359

; <label>:22:                                     ; preds = %16
  %23 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !360
  %24 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %23, i64 4) #4, !dbg !361
  %25 = load i32, i32* %6, align 4, !dbg !362, !tbaa !86
  br label %26, !dbg !363

; <label>:26:                                     ; preds = %16, %22
  %27 = phi i32 [ %25, %22 ], [ %20, %16 ], !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  %28 = icmp ult i32 %27, 254, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %29 = select i1 %28, i32 1, i32 5, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  %30 = icmp eq i8* %19, null, !dbg !377
  %31 = and i1 %12, %30, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %31, label %32, label %40, !dbg !379

; <label>:32:                                     ; preds = %26
  %33 = icmp eq i32 %27, %2, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %33, label %34, label %40, !dbg !381

; <label>:34:                                     ; preds = %32
  %35 = zext i32 %29 to i64, !dbg !382
  %36 = getelementptr inbounds i8, i8* %18, i64 %35, !dbg !382
  %37 = call i32 @memcmp(i8* nonnull %36, i8* nonnull %1, i64 %15) #4, !dbg !383
  %38 = icmp eq i32 %37, 0, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br i1 %38, label %39, label %40, !dbg !384

; <label>:39:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %14, label %75, label %40, !dbg !385

; <label>:40:                                     ; preds = %39, %34, %32, %26
  %41 = phi i8* [ null, %34 ], [ null, %32 ], [ %19, %26 ], [ %18, %39 ], !dbg !388
  %42 = add i32 %29, %27, !dbg !389
  %43 = zext i32 %42 to i64, !dbg !390
  %44 = getelementptr inbounds i8, i8* %18, i64 %43, !dbg !390
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !393
  %45 = load i8, i8* %44, align 1, !dbg !394, !tbaa !20
  %46 = zext i8 %45 to i32, !dbg !394
  store i32 %46, i32* %5, align 4, !dbg !395, !tbaa !86
  %47 = icmp ult i8 %45, -2, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %47, label %52, label %48, !dbg !397

; <label>:48:                                     ; preds = %40
  %49 = getelementptr inbounds i8, i8* %44, i64 1, !dbg !398
  %50 = call i8* @memcpy(i8* nonnull %13, i8* nonnull %49, i64 4) #4, !dbg !399
  %51 = load i32, i32* %5, align 4, !dbg !400, !tbaa !86
  br label %52, !dbg !401

; <label>:52:                                     ; preds = %40, %48
  %53 = phi i32 [ %51, %48 ], [ %46, %40 ], !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  %54 = icmp ult i32 %53, 254, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  %55 = select i1 %54, i64 1, i64 5, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %56 = getelementptr inbounds i8, i8* %44, i64 %55, !dbg !412
  %57 = load i8, i8* %56, align 1, !dbg !413, !tbaa !20
  %58 = add i32 %53, 1, !dbg !415
  %59 = zext i8 %57 to i32, !dbg !416
  %60 = add i32 %58, %59, !dbg !417
  %61 = zext i32 %60 to i64, !dbg !418
  %62 = getelementptr inbounds i8, i8* %56, i64 %61, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %63 = load i8, i8* %62, align 1, !dbg !351, !tbaa !20
  %64 = icmp eq i8 %63, -1, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br i1 %64, label %65, label %16, !dbg !350

; <label>:65:                                     ; preds = %52, %4
  %66 = phi i8* [ null, %4 ], [ %41, %52 ], !dbg !349
  %67 = phi i8* [ %7, %4 ], [ %62, %52 ], !dbg !365
  %68 = icmp eq i32* %3, null, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %68, label %75, label %69, !dbg !422

; <label>:69:                                     ; preds = %65
  %70 = ptrtoint i8* %67 to i64, !dbg !423
  %71 = ptrtoint i8* %0 to i64, !dbg !423
  %72 = sub i64 %70, %71, !dbg !423
  %73 = trunc i64 %72 to i32, !dbg !424
  %74 = add i32 %73, 1, !dbg !425
  store i32 %74, i32* %3, align 4, !dbg !426, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %75, !dbg !427

; <label>:75:                                     ; preds = %39, %69, %65
  %76 = phi i8* [ %66, %65 ], [ %66, %69 ], [ %18, %39 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  ret i8* %76, !dbg !428
}

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapDel(i8*, i8*, i32, i32*) local_unnamed_addr #0 !dbg !429 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast i32* %7 to i8*, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %8) #5, !dbg !444
  %9 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* nonnull %7) #6, !dbg !446
  %10 = icmp eq i8* %9, null, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %10, label %72, label %11, !dbg !450

; <label>:11:                                     ; preds = %4
  %12 = bitcast i32* %6 to i8*, !dbg !458
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #5, !dbg !458
  %13 = load i8, i8* %9, align 1, !dbg !459, !tbaa !20
  %14 = zext i8 %13 to i32, !dbg !459
  store i32 %14, i32* %6, align 4, !dbg !460, !tbaa !86
  %15 = icmp ult i8 %13, -2, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br i1 %15, label %20, label %16, !dbg !462

; <label>:16:                                     ; preds = %11
  %17 = getelementptr inbounds i8, i8* %9, i64 1, !dbg !463
  %18 = call i8* @memcpy(i8* nonnull %12, i8* nonnull %17, i64 4) #4, !dbg !464
  %19 = load i32, i32* %6, align 4, !dbg !465, !tbaa !86
  br label %20, !dbg !466

; <label>:20:                                     ; preds = %11, %16
  %21 = phi i32 [ %19, %16 ], [ %14, %11 ], !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #5, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %22 = icmp ult i32 %21, 254, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %23 = select i1 %22, i32 1, i32 5, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  %24 = add i32 %23, %21, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  %25 = zext i32 %24 to i64, !dbg !482
  %26 = getelementptr inbounds i8, i8* %9, i64 %25, !dbg !482
  %27 = bitcast i32* %5 to i8*, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %27) #5, !dbg !487
  %28 = load i8, i8* %26, align 1, !dbg !488, !tbaa !20
  %29 = zext i8 %28 to i32, !dbg !488
  store i32 %29, i32* %5, align 4, !dbg !489, !tbaa !86
  %30 = icmp ult i8 %28, -2, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %30, label %35, label %31, !dbg !491

; <label>:31:                                     ; preds = %20
  %32 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !492
  %33 = call i8* @memcpy(i8* nonnull %27, i8* nonnull %32, i64 4) #4, !dbg !493
  %34 = load i32, i32* %5, align 4, !dbg !494, !tbaa !86
  br label %35, !dbg !495

; <label>:35:                                     ; preds = %20, %31
  %36 = phi i32 [ %34, %31 ], [ %29, %20 ], !dbg !496
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !497
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %27) #5, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %37 = icmp ult i32 %36, 254, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  %38 = select i1 %37, i32 1, i32 5, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !507
  %39 = zext i32 %38 to i64, !dbg !509
  %40 = getelementptr inbounds i8, i8* %26, i64 %39, !dbg !509
  %41 = load i8, i8* %40, align 1, !dbg !509, !tbaa !20
  %42 = zext i8 %41 to i32, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %43 = add i32 %24, 1, !dbg !511
  %44 = add i32 %43, %36, !dbg !512
  %45 = add i32 %44, %38, !dbg !513
  %46 = add i32 %45, %42, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %47 = zext i32 %46 to i64, !dbg !517
  %48 = getelementptr inbounds i8, i8* %9, i64 %47, !dbg !517
  %49 = load i32, i32* %7, align 4, !dbg !518, !tbaa !86
  %50 = zext i32 %49 to i64, !dbg !518
  %51 = ptrtoint i8* %9 to i64, !dbg !519
  %52 = ptrtoint i8* %0 to i64, !dbg !519
  %53 = sub i64 %51, %52, !dbg !519
  %54 = add nsw i64 %53, %47, !dbg !520
  %55 = xor i64 %54, -1, !dbg !521
  %56 = add i64 %55, %50, !dbg !521
  %57 = call i8* @memmove(i8* nonnull %9, i8* nonnull %48, i64 %56) #4, !dbg !522
  %58 = load i32, i32* %7, align 4, !dbg !523, !tbaa !86
  %59 = sub i32 %58, %46, !dbg !524
  %60 = zext i32 %59 to i64, !dbg !528
  %61 = call i8* @zrealloc(i8* %0, i64 %60) #4, !dbg !529
  %62 = add i32 %59, -1, !dbg !530
  %63 = zext i32 %62 to i64, !dbg !531
  %64 = getelementptr inbounds i8, i8* %61, i64 %63, !dbg !531
  store i8 -1, i8* %64, align 1, !dbg !532, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  %65 = load i8, i8* %61, align 1, !dbg !534, !tbaa !20
  %66 = icmp ult i8 %65, -2, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %66, label %67, label %69, !dbg !537

; <label>:67:                                     ; preds = %35
  %68 = add i8 %65, -1, !dbg !538
  store i8 %68, i8* %61, align 1, !dbg !538, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !539
  br label %69, !dbg !539

; <label>:69:                                     ; preds = %67, %35
  %70 = icmp eq i32* %3, null, !dbg !540
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %70, label %75, label %71, !dbg !542

; <label>:71:                                     ; preds = %69
  store i32 1, i32* %3, align 4, !dbg !543, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br label %75, !dbg !544

; <label>:72:                                     ; preds = %4
  %73 = icmp eq i32* %3, null, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %73, label %75, label %74, !dbg !548

; <label>:74:                                     ; preds = %72
  store i32 0, i32* %3, align 4, !dbg !549, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br label %75, !dbg !550

; <label>:75:                                     ; preds = %69, %72, %74, %71
  %76 = phi i8* [ %61, %71 ], [ %61, %69 ], [ %0, %74 ], [ %0, %72 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %8) #5, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  ret i8* %76, !dbg !552
}

; Function Attrs: noredzone nounwind
define dso_local nonnull i8* @zipmapRewind(i8* readnone) local_unnamed_addr #0 !dbg !553 {
  %2 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  ret i8* %2, !dbg !560
}

; Function Attrs: noredzone nounwind
define dso_local i8* @zipmapNext(i8*, i8**, i32* nocapture, i8**, i32* nocapture) local_unnamed_addr #0 !dbg !561 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = load i8, i8* %0, align 1, !dbg !576, !tbaa !20
  %11 = icmp eq i8 %10, -1, !dbg !578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %11, label %88, label %12, !dbg !579

; <label>:12:                                     ; preds = %5
  %13 = icmp eq i8** %1, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %13, label %32, label %14, !dbg !582

; <label>:14:                                     ; preds = %12
  store i8* %0, i8** %1, align 8, !dbg !583, !tbaa !585
  %15 = bitcast i32* %9 to i8*, !dbg !589
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !589
  %16 = load i8, i8* %0, align 1, !dbg !590, !tbaa !20
  %17 = zext i8 %16 to i32, !dbg !590
  store i32 %17, i32* %9, align 4, !dbg !591, !tbaa !86
  %18 = icmp ult i8 %16, -2, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  br i1 %18, label %19, label %20, !dbg !593

; <label>:19:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br label %25, !dbg !594

; <label>:20:                                     ; preds = %14
  %21 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !595
  %22 = call i8* @memcpy(i8* nonnull %15, i8* nonnull %21, i64 4) #4, !dbg !596
  %23 = load i32, i32* %9, align 4, !dbg !597, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %24 = load i8*, i8** %1, align 8, !dbg !599, !tbaa !585
  br label %25, !dbg !598

; <label>:25:                                     ; preds = %19, %20
  %26 = phi i8* [ %0, %19 ], [ %24, %20 ], !dbg !599
  %27 = phi i32 [ %17, %19 ], [ %23, %20 ], !dbg !600
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  store i32 %27, i32* %2, align 4, !dbg !602, !tbaa !86
  %28 = icmp ult i32 %27, 254, !dbg !603
  %29 = select i1 %28, i64 1, i64 5, !dbg !603
  %30 = getelementptr inbounds i8, i8* %26, i64 %29, !dbg !599
  store i8* %30, i8** %1, align 8, !dbg !599, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  %31 = load i8, i8* %0, align 1, !dbg !605, !tbaa !20
  br label %32, !dbg !604

; <label>:32:                                     ; preds = %12, %25
  %33 = phi i8 [ %10, %12 ], [ %31, %25 ], !dbg !605
  %34 = bitcast i32* %8 to i8*, !dbg !610
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %34) #5, !dbg !610
  %35 = zext i8 %33 to i32, !dbg !605
  store i32 %35, i32* %8, align 4, !dbg !611, !tbaa !86
  %36 = icmp ult i8 %33, -2, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %36, label %41, label %37, !dbg !613

; <label>:37:                                     ; preds = %32
  %38 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !614
  %39 = call i8* @memcpy(i8* nonnull %34, i8* nonnull %38, i64 4) #4, !dbg !615
  %40 = load i32, i32* %8, align 4, !dbg !616, !tbaa !86
  br label %41, !dbg !617

; <label>:41:                                     ; preds = %32, %37
  %42 = phi i32 [ %40, %37 ], [ %35, %32 ], !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %34) #5, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %43 = icmp ult i32 %42, 254, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  %44 = select i1 %43, i32 1, i32 5, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  %45 = add i32 %44, %42, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %46 = zext i32 %45 to i64, !dbg !632
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !632
  %48 = icmp eq i8** %3, null, !dbg !633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !635
  br i1 %48, label %66, label %49, !dbg !635

; <label>:49:                                     ; preds = %41
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !636
  store i8* %50, i8** %3, align 8, !dbg !638, !tbaa !585
  %51 = bitcast i32* %7 to i8*, !dbg !641
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %51) #5, !dbg !641
  %52 = load i8, i8* %47, align 1, !dbg !642, !tbaa !20
  %53 = zext i8 %52 to i32, !dbg !642
  store i32 %53, i32* %7, align 4, !dbg !643, !tbaa !86
  %54 = icmp ult i8 %52, -2, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %54, label %55, label %56, !dbg !645

; <label>:55:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br label %60, !dbg !646

; <label>:56:                                     ; preds = %49
  %57 = call i8* @memcpy(i8* nonnull %51, i8* nonnull %50, i64 4) #4, !dbg !647
  %58 = load i32, i32* %7, align 4, !dbg !648, !tbaa !86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %59 = load i8*, i8** %3, align 8, !dbg !650, !tbaa !585
  br label %60, !dbg !649

; <label>:60:                                     ; preds = %55, %56
  %61 = phi i8* [ %50, %55 ], [ %59, %56 ], !dbg !650
  %62 = phi i32 [ %53, %55 ], [ %58, %56 ], !dbg !651
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %51) #5, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  store i32 %62, i32* %4, align 4, !dbg !653, !tbaa !86
  %63 = icmp ult i32 %62, 254, !dbg !654
  %64 = select i1 %63, i64 1, i64 5, !dbg !654
  %65 = getelementptr inbounds i8, i8* %61, i64 %64, !dbg !650
  store i8* %65, i8** %3, align 8, !dbg !650, !tbaa !585
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br label %66, !dbg !655

; <label>:66:                                     ; preds = %41, %60
  %67 = bitcast i32* %6 to i8*, !dbg !660
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %67) #5, !dbg !660
  %68 = load i8, i8* %47, align 1, !dbg !661, !tbaa !20
  %69 = zext i8 %68 to i32, !dbg !661
  store i32 %69, i32* %6, align 4, !dbg !662, !tbaa !86
  %70 = icmp ult i8 %68, -2, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  br i1 %70, label %75, label %71, !dbg !664

; <label>:71:                                     ; preds = %66
  %72 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !665
  %73 = call i8* @memcpy(i8* nonnull %67, i8* nonnull %72, i64 4) #4, !dbg !666
  %74 = load i32, i32* %6, align 4, !dbg !667, !tbaa !86
  br label %75, !dbg !668

; <label>:75:                                     ; preds = %66, %71
  %76 = phi i32 [ %74, %71 ], [ %69, %66 ], !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %67) #5, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  %77 = icmp ult i32 %76, 254, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %78 = select i1 %77, i32 1, i32 5, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !680
  %79 = zext i32 %78 to i64, !dbg !682
  %80 = getelementptr inbounds i8, i8* %47, i64 %79, !dbg !682
  %81 = load i8, i8* %80, align 1, !dbg !682, !tbaa !20
  %82 = zext i8 %81 to i32, !dbg !682
  %83 = add i32 %76, 1, !dbg !683
  %84 = add i32 %83, %78, !dbg !684
  %85 = add i32 %84, %82, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  %86 = zext i32 %85 to i64, !dbg !687
  %87 = getelementptr inbounds i8, i8* %47, i64 %86, !dbg !687
  br label %88, !dbg !688

; <label>:88:                                     ; preds = %5, %75
  %89 = phi i8* [ %87, %75 ], [ null, %5 ], !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  ret i8* %89, !dbg !691
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapGet(i8*, i8*, i32, i8** nocapture, i32* nocapture) local_unnamed_addr #0 !dbg !692 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #6, !dbg !707
  %9 = icmp eq i8* %8, null, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  br i1 %9, label %40, label %10, !dbg !711

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %7 to i8*, !dbg !716
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #5, !dbg !716
  %12 = load i8, i8* %8, align 1, !dbg !717, !tbaa !20
  %13 = zext i8 %12 to i32, !dbg !717
  store i32 %13, i32* %7, align 4, !dbg !718, !tbaa !86
  %14 = icmp ult i8 %12, -2, !dbg !719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %14, label %19, label %15, !dbg !720

; <label>:15:                                     ; preds = %10
  %16 = getelementptr inbounds i8, i8* %8, i64 1, !dbg !721
  %17 = call i8* @memcpy(i8* nonnull %11, i8* nonnull %16, i64 4) #4, !dbg !722
  %18 = load i32, i32* %7, align 4, !dbg !723, !tbaa !86
  br label %19, !dbg !724

; <label>:19:                                     ; preds = %10, %15
  %20 = phi i32 [ %18, %15 ], [ %13, %10 ], !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #5, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !727
  %21 = icmp ult i32 %20, 254, !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  %22 = select i1 %21, i32 1, i32 5, !dbg !734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %23 = add i32 %22, %20, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  %24 = zext i32 %23 to i64, !dbg !739
  %25 = getelementptr inbounds i8, i8* %8, i64 %24, !dbg !739
  %26 = bitcast i32* %6 to i8*, !dbg !742
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %26) #5, !dbg !742
  %27 = load i8, i8* %25, align 1, !dbg !743, !tbaa !20
  %28 = zext i8 %27 to i32, !dbg !743
  store i32 %28, i32* %6, align 4, !dbg !744, !tbaa !86
  %29 = icmp ult i8 %27, -2, !dbg !745
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %29, label %34, label %30, !dbg !746

; <label>:30:                                     ; preds = %19
  %31 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !747
  %32 = call i8* @memcpy(i8* nonnull %26, i8* nonnull %31, i64 4) #4, !dbg !748
  %33 = load i32, i32* %6, align 4, !dbg !749, !tbaa !86
  br label %34, !dbg !750

; <label>:34:                                     ; preds = %19, %30
  %35 = phi i32 [ %33, %30 ], [ %28, %19 ], !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %26) #5, !dbg !753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  store i32 %35, i32* %4, align 4, !dbg !754, !tbaa !86
  %36 = icmp ult i32 %35, 254, !dbg !755
  %37 = select i1 %36, i64 1, i64 5, !dbg !755
  %38 = getelementptr inbounds i8, i8* %25, i64 %37, !dbg !756
  %39 = getelementptr inbounds i8, i8* %38, i64 1, !dbg !757
  store i8* %39, i8** %3, align 8, !dbg !758, !tbaa !585
  br label %40, !dbg !759

; <label>:40:                                     ; preds = %5, %34
  %41 = phi i32 [ 1, %34 ], [ 0, %5 ], !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  ret i32 %41, !dbg !761
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapExists(i8*, i8*, i32) local_unnamed_addr #0 !dbg !762 {
  %4 = tail call fastcc i8* @zipmapLookupRaw(i8* %0, i8* %1, i32 %2, i32* null) #6, !dbg !772
  %5 = icmp ne i8* %4, null, !dbg !773
  %6 = zext i1 %5 to i32, !dbg !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  ret i32 %6, !dbg !774
}

; Function Attrs: noredzone nounwind
define dso_local i32 @zipmapLen(i8*) local_unnamed_addr #0 !dbg !775 {
  %2 = load i8, i8* %0, align 1, !dbg !784, !tbaa !20
  %3 = icmp ult i8 %2, -2, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  br i1 %3, label %4, label %6, !dbg !786

; <label>:4:                                      ; preds = %1
  %5 = zext i8 %2 to i32, !dbg !784
  br label %22, !dbg !787

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  %8 = tail call i8* @zipmapNext(i8* nonnull %7, i8** null, i32* null, i8** null, i32* null) #6, !dbg !795
  %9 = icmp eq i8* %8, null, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %9, label %10, label %11, !dbg !794

; <label>:10:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br label %19, !dbg !797

; <label>:11:                                     ; preds = %6, %11
  %12 = phi i8* [ %15, %11 ], [ %8, %6 ]
  %13 = phi i32 [ %14, %11 ], [ 0, %6 ]
  %14 = add i32 %13, 1, !dbg !798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  %15 = tail call i8* @zipmapNext(i8* nonnull %12, i8** null, i32* null, i8** null, i32* null) #6, !dbg !795
  %16 = icmp eq i8* %15, null, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %16, label %17, label %11, !dbg !794, !llvm.loop !799

; <label>:17:                                     ; preds = %11
  %18 = icmp ult i32 %14, 254, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !797
  br i1 %18, label %19, label %22, !dbg !797

; <label>:19:                                     ; preds = %10, %17
  %20 = phi i32 [ 0, %10 ], [ %14, %17 ]
  %21 = trunc i32 %20 to i8, !dbg !802
  store i8 %21, i8* %0, align 1, !dbg !803, !tbaa !20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  br label %22, !dbg !804

; <label>:22:                                     ; preds = %17, %19, %4
  %23 = phi i32 [ %5, %4 ], [ %20, %19 ], [ %14, %17 ], !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  ret i32 %23, !dbg !806
}

; Function Attrs: noredzone nounwind
define dso_local i64 @zipmapBlobLen(i8*) local_unnamed_addr #0 !dbg !807 {
  %2 = alloca i32, align 4
  %3 = bitcast i32* %2 to i8*, !dbg !818
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #5, !dbg !818
  %4 = call fastcc i8* @zipmapLookupRaw(i8* %0, i8* null, i32 0, i32* nonnull %2) #6, !dbg !820
  %5 = load i32, i32* %2, align 4, !dbg !821, !tbaa !86
  %6 = zext i32 %5 to i64, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #5, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  ret i64 %6, !dbg !823
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/zipmap.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{i32 2, !"Dwarf Version", i32 4}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!10 = distinct !DISubprogram(name: "zipmapNew", scope: !1, file: !1, line: 96, type: !11, isLocal: false, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !15)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!15 = !{!16}
!16 = !DILocalVariable(name: "zm", scope: !10, file: !1, line: 97, type: !13)
!17 = !DILocation(line: 97, column: 25, scope: !10)
!18 = !DILocation(line: 97, column: 20, scope: !10)
!19 = !DILocation(line: 99, column: 11, scope: !10)
!20 = !{!21, !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 100, column: 5, scope: !10)
!24 = !DILocation(line: 100, column: 11, scope: !10)
!25 = !DILocation(line: 101, column: 5, scope: !10)
!26 = distinct !DISubprogram(name: "zipmapSet", scope: !1, file: !1, line: 211, type: !27, isLocal: false, isDefinition: true, scopeLine: 211, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !31)
!27 = !DISubroutineType(types: !28)
!28 = !{!13, !13, !13, !5, !13, !5, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44}
!32 = !DILocalVariable(name: "zm", arg: 1, scope: !26, file: !1, line: 211, type: !13)
!33 = !DILocalVariable(name: "key", arg: 2, scope: !26, file: !1, line: 211, type: !13)
!34 = !DILocalVariable(name: "klen", arg: 3, scope: !26, file: !1, line: 211, type: !5)
!35 = !DILocalVariable(name: "val", arg: 4, scope: !26, file: !1, line: 211, type: !13)
!36 = !DILocalVariable(name: "vlen", arg: 5, scope: !26, file: !1, line: 211, type: !5)
!37 = !DILocalVariable(name: "update", arg: 6, scope: !26, file: !1, line: 211, type: !29)
!38 = !DILocalVariable(name: "zmlen", scope: !26, file: !1, line: 212, type: !5)
!39 = !DILocalVariable(name: "offset", scope: !26, file: !1, line: 212, type: !5)
!40 = !DILocalVariable(name: "freelen", scope: !26, file: !1, line: 213, type: !5)
!41 = !DILocalVariable(name: "reqlen", scope: !26, file: !1, line: 213, type: !5)
!42 = !DILocalVariable(name: "empty", scope: !26, file: !1, line: 214, type: !5)
!43 = !DILocalVariable(name: "vempty", scope: !26, file: !1, line: 214, type: !5)
!44 = !DILocalVariable(name: "p", scope: !26, file: !1, line: 215, type: !13)
!45 = !DILocation(line: 211, column: 41, scope: !26)
!46 = !DILocation(line: 211, column: 60, scope: !26)
!47 = !DILocation(line: 211, column: 78, scope: !26)
!48 = !DILocation(line: 211, column: 99, scope: !26)
!49 = !DILocation(line: 211, column: 117, scope: !26)
!50 = !DILocation(line: 211, column: 128, scope: !26)
!51 = !DILocation(line: 212, column: 5, scope: !26)
!52 = !DILocalVariable(name: "klen", arg: 1, scope: !53, file: !1, line: 168, type: !5)
!53 = distinct !DISubprogram(name: "zipmapRequiredLength", scope: !1, file: !1, line: 168, type: !54, isLocal: true, isDefinition: true, scopeLine: 168, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !57)
!54 = !DISubroutineType(types: !55)
!55 = !{!56, !5, !5}
!56 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!57 = !{!52, !58, !59}
!58 = !DILocalVariable(name: "vlen", arg: 2, scope: !53, file: !1, line: 168, type: !5)
!59 = !DILocalVariable(name: "l", scope: !53, file: !1, line: 169, type: !5)
!60 = !DILocation(line: 168, column: 56, scope: !53, inlinedAt: !61)
!61 = distinct !DILocation(line: 213, column: 36, scope: !26)
!62 = !DILocation(line: 168, column: 75, scope: !53, inlinedAt: !61)
!63 = !DILocation(line: 171, column: 13, scope: !53, inlinedAt: !61)
!64 = !DILocation(line: 171, column: 18, scope: !53, inlinedAt: !61)
!65 = !DILocation(line: 169, column: 18, scope: !53, inlinedAt: !61)
!66 = !DILocation(line: 172, column: 14, scope: !67, inlinedAt: !61)
!67 = distinct !DILexicalBlock(scope: !53, file: !1, line: 172, column: 9)
!68 = !DILocation(line: 172, column: 9, scope: !53, inlinedAt: !61)
!69 = !DILocation(line: 172, column: 34, scope: !67, inlinedAt: !61)
!70 = !DILocation(line: 172, column: 32, scope: !67, inlinedAt: !61)
!71 = !DILocation(line: 0, scope: !53, inlinedAt: !61)
!72 = !DILocation(line: 173, column: 14, scope: !73, inlinedAt: !61)
!73 = distinct !DILexicalBlock(scope: !53, file: !1, line: 173, column: 9)
!74 = !DILocation(line: 173, column: 9, scope: !53, inlinedAt: !61)
!75 = !DILocation(line: 173, column: 34, scope: !73, inlinedAt: !61)
!76 = !DILocation(line: 173, column: 32, scope: !73, inlinedAt: !61)
!77 = !DILocation(line: 0, scope: !67, inlinedAt: !61)
!78 = !DILocation(line: 174, column: 12, scope: !53, inlinedAt: !61)
!79 = !DILocation(line: 174, column: 5, scope: !53, inlinedAt: !61)
!80 = !DILocation(line: 213, column: 27, scope: !26)
!81 = !DILocation(line: 213, column: 18, scope: !26)
!82 = !DILocation(line: 218, column: 9, scope: !83)
!83 = distinct !DILexicalBlock(scope: !26, file: !1, line: 218, column: 9)
!84 = !DILocation(line: 218, column: 9, scope: !26)
!85 = !DILocation(line: 218, column: 25, scope: !83)
!86 = !{!87, !87, i64 0}
!87 = !{!"int", !21, i64 0}
!88 = !DILocation(line: 218, column: 17, scope: !83)
!89 = !DILocation(line: 212, column: 18, scope: !26)
!90 = !DILocation(line: 219, column: 9, scope: !26)
!91 = !DILocation(line: 215, column: 20, scope: !26)
!92 = !DILocation(line: 220, column: 11, scope: !93)
!93 = distinct !DILexicalBlock(scope: !26, file: !1, line: 220, column: 9)
!94 = !DILocation(line: 220, column: 9, scope: !26)
!95 = !DILocation(line: 222, column: 31, scope: !96)
!96 = distinct !DILexicalBlock(scope: !93, file: !1, line: 220, column: 20)
!97 = !DILocation(line: 222, column: 36, scope: !96)
!98 = !DILocalVariable(name: "zm", arg: 1, scope: !99, file: !1, line: 202, type: !13)
!99 = distinct !DISubprogram(name: "zipmapResize", scope: !1, file: !1, line: 202, type: !100, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !102)
!100 = !DISubroutineType(types: !101)
!101 = !{!13, !13, !5}
!102 = !{!98, !103}
!103 = !DILocalVariable(name: "len", arg: 2, scope: !99, file: !1, line: 202, type: !5)
!104 = !DILocation(line: 202, column: 58, scope: !99, inlinedAt: !105)
!105 = distinct !DILocation(line: 222, column: 14, scope: !96)
!106 = !DILocation(line: 202, column: 75, scope: !99, inlinedAt: !105)
!107 = !DILocation(line: 203, column: 23, scope: !99, inlinedAt: !105)
!108 = !DILocation(line: 203, column: 10, scope: !99, inlinedAt: !105)
!109 = !DILocation(line: 204, column: 11, scope: !99, inlinedAt: !105)
!110 = !DILocation(line: 204, column: 5, scope: !99, inlinedAt: !105)
!111 = !DILocation(line: 204, column: 15, scope: !99, inlinedAt: !105)
!112 = !DILocation(line: 205, column: 5, scope: !99, inlinedAt: !105)
!113 = !DILocation(line: 223, column: 16, scope: !96)
!114 = !DILocation(line: 223, column: 15, scope: !96)
!115 = !DILocation(line: 223, column: 21, scope: !96)
!116 = !DILocation(line: 224, column: 22, scope: !96)
!117 = !DILocation(line: 224, column: 15, scope: !96)
!118 = !DILocation(line: 227, column: 13, scope: !119)
!119 = distinct !DILexicalBlock(scope: !96, file: !1, line: 227, column: 13)
!120 = !DILocation(line: 227, column: 19, scope: !119)
!121 = !DILocation(line: 227, column: 13, scope: !96)
!122 = !DILocation(line: 227, column: 41, scope: !119)
!123 = !DILocation(line: 227, column: 36, scope: !119)
!124 = !DILocation(line: 231, column: 13, scope: !125)
!125 = distinct !DILexicalBlock(scope: !93, file: !1, line: 228, column: 12)
!126 = !DILocation(line: 231, column: 29, scope: !127)
!127 = distinct !DILexicalBlock(scope: !125, file: !1, line: 231, column: 13)
!128 = !DILocation(line: 231, column: 21, scope: !127)
!129 = !DILocalVariable(name: "p", arg: 1, scope: !130, file: !1, line: 197, type: !13)
!130 = distinct !DISubprogram(name: "zipmapRawEntryLength", scope: !1, file: !1, line: 197, type: !131, isLocal: true, isDefinition: true, scopeLine: 197, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{!5, !13}
!133 = !{!129, !134}
!134 = !DILocalVariable(name: "l", scope: !130, file: !1, line: 198, type: !5)
!135 = !DILocation(line: 197, column: 57, scope: !130, inlinedAt: !136)
!136 = distinct !DILocation(line: 232, column: 19, scope: !125)
!137 = !DILocalVariable(name: "p", arg: 1, scope: !138, file: !1, line: 178, type: !13)
!138 = distinct !DISubprogram(name: "zipmapRawKeyLength", scope: !1, file: !1, line: 178, type: !131, isLocal: true, isDefinition: true, scopeLine: 178, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !139)
!139 = !{!137, !140}
!140 = !DILocalVariable(name: "l", scope: !138, file: !1, line: 179, type: !5)
!141 = !DILocation(line: 178, column: 55, scope: !138, inlinedAt: !142)
!142 = distinct !DILocation(line: 198, column: 22, scope: !130, inlinedAt: !136)
!143 = !DILocalVariable(name: "p", arg: 1, scope: !144, file: !1, line: 105, type: !13)
!144 = distinct !DISubprogram(name: "zipmapDecodeLength", scope: !1, file: !1, line: 105, type: !131, isLocal: true, isDefinition: true, scopeLine: 105, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !145)
!145 = !{!143, !146}
!146 = !DILocalVariable(name: "len", scope: !144, file: !1, line: 106, type: !5)
!147 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !148)
!148 = distinct !DILocation(line: 179, column: 22, scope: !138, inlinedAt: !142)
!149 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !148)
!150 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !148)
!151 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !148)
!152 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !148)
!153 = distinct !DILexicalBlock(scope: !144, file: !1, line: 108, column: 9)
!154 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !148)
!155 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !148)
!156 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !148)
!157 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !148)
!158 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !148)
!159 = !DILocation(line: 0, scope: !144, inlinedAt: !148)
!160 = !DILocation(line: 0, scope: !138, inlinedAt: !142)
!161 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !148)
!162 = !DILocation(line: 179, column: 18, scope: !138, inlinedAt: !142)
!163 = !DILocalVariable(name: "p", arg: 1, scope: !164, file: !1, line: 116, type: !13)
!164 = distinct !DISubprogram(name: "zipmapEncodeLength", scope: !1, file: !1, line: 116, type: !165, isLocal: true, isDefinition: true, scopeLine: 116, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{!5, !13, !5}
!167 = !{!163, !168}
!168 = !DILocalVariable(name: "len", arg: 2, scope: !164, file: !1, line: 116, type: !5)
!169 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !170)
!170 = distinct !DILocation(line: 180, column: 12, scope: !138, inlinedAt: !142)
!171 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !170)
!172 = !DILocation(line: 0, scope: !173, inlinedAt: !170)
!173 = distinct !DILexicalBlock(scope: !174, file: !1, line: 120, column: 13)
!174 = distinct !DILexicalBlock(scope: !175, file: !1, line: 119, column: 12)
!175 = distinct !DILexicalBlock(scope: !164, file: !1, line: 117, column: 9)
!176 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !170)
!177 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !170)
!178 = distinct !DILexicalBlock(scope: !175, file: !1, line: 117, column: 20)
!179 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !170)
!180 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !170)
!181 = !DILocation(line: 180, column: 39, scope: !138, inlinedAt: !142)
!182 = !DILocation(line: 180, column: 5, scope: !138, inlinedAt: !142)
!183 = !DILocation(line: 198, column: 18, scope: !130, inlinedAt: !136)
!184 = !DILocation(line: 199, column: 38, scope: !130, inlinedAt: !136)
!185 = !DILocalVariable(name: "p", arg: 1, scope: !186, file: !1, line: 185, type: !13)
!186 = distinct !DISubprogram(name: "zipmapRawValueLength", scope: !1, file: !1, line: 185, type: !131, isLocal: true, isDefinition: true, scopeLine: 185, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !187)
!187 = !{!185, !188, !189}
!188 = !DILocalVariable(name: "l", scope: !186, file: !1, line: 186, type: !5)
!189 = !DILocalVariable(name: "used", scope: !186, file: !1, line: 187, type: !5)
!190 = !DILocation(line: 185, column: 57, scope: !186, inlinedAt: !191)
!191 = distinct !DILocation(line: 199, column: 16, scope: !130, inlinedAt: !136)
!192 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !193)
!193 = distinct !DILocation(line: 186, column: 22, scope: !186, inlinedAt: !191)
!194 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !193)
!195 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !193)
!196 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !193)
!197 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !193)
!198 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !193)
!199 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !193)
!200 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !193)
!201 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !193)
!202 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !193)
!203 = !DILocation(line: 0, scope: !144, inlinedAt: !193)
!204 = !DILocation(line: 0, scope: !186, inlinedAt: !191)
!205 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !193)
!206 = !DILocation(line: 186, column: 18, scope: !186, inlinedAt: !191)
!207 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !208)
!208 = distinct !DILocation(line: 189, column: 12, scope: !186, inlinedAt: !191)
!209 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !208)
!210 = !DILocation(line: 0, scope: !173, inlinedAt: !208)
!211 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !208)
!212 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !208)
!213 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !208)
!214 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !208)
!215 = !DILocation(line: 187, column: 18, scope: !186, inlinedAt: !191)
!216 = !DILocation(line: 190, column: 13, scope: !186, inlinedAt: !191)
!217 = !DILocation(line: 191, column: 5, scope: !186, inlinedAt: !191)
!218 = !DILocation(line: 190, column: 21, scope: !186, inlinedAt: !191)
!219 = !DILocation(line: 190, column: 25, scope: !186, inlinedAt: !191)
!220 = !DILocation(line: 190, column: 10, scope: !186, inlinedAt: !191)
!221 = !DILocation(line: 199, column: 14, scope: !130, inlinedAt: !136)
!222 = !DILocation(line: 199, column: 5, scope: !130, inlinedAt: !136)
!223 = !DILocation(line: 233, column: 21, scope: !224)
!224 = distinct !DILexicalBlock(scope: !125, file: !1, line: 233, column: 13)
!225 = !DILocation(line: 233, column: 13, scope: !125)
!226 = !DILocation(line: 237, column: 23, scope: !227)
!227 = distinct !DILexicalBlock(scope: !224, file: !1, line: 233, column: 31)
!228 = !DILocation(line: 237, column: 22, scope: !227)
!229 = !DILocation(line: 212, column: 25, scope: !26)
!230 = !DILocation(line: 238, column: 35, scope: !227)
!231 = !DILocation(line: 238, column: 40, scope: !227)
!232 = !DILocation(line: 238, column: 48, scope: !227)
!233 = !DILocation(line: 202, column: 58, scope: !99, inlinedAt: !234)
!234 = distinct !DILocation(line: 238, column: 18, scope: !227)
!235 = !DILocation(line: 202, column: 75, scope: !99, inlinedAt: !234)
!236 = !DILocation(line: 203, column: 23, scope: !99, inlinedAt: !234)
!237 = !DILocation(line: 203, column: 10, scope: !99, inlinedAt: !234)
!238 = !DILocation(line: 204, column: 11, scope: !99, inlinedAt: !234)
!239 = !DILocation(line: 204, column: 5, scope: !99, inlinedAt: !234)
!240 = !DILocation(line: 204, column: 15, scope: !99, inlinedAt: !234)
!241 = !DILocation(line: 205, column: 5, scope: !99, inlinedAt: !234)
!242 = !DILocation(line: 239, column: 19, scope: !227)
!243 = !DILocation(line: 243, column: 22, scope: !227)
!244 = !DILocation(line: 243, column: 32, scope: !227)
!245 = !DILocation(line: 243, column: 42, scope: !227)
!246 = !DILocation(line: 243, column: 55, scope: !227)
!247 = !DILocation(line: 243, column: 47, scope: !227)
!248 = !DILocation(line: 243, column: 13, scope: !227)
!249 = !DILocation(line: 244, column: 21, scope: !227)
!250 = !DILocation(line: 244, column: 26, scope: !227)
!251 = !DILocation(line: 244, column: 34, scope: !227)
!252 = !DILocation(line: 244, column: 19, scope: !227)
!253 = !DILocation(line: 246, column: 9, scope: !227)
!254 = !DILocation(line: 0, scope: !125)
!255 = !DILocation(line: 0, scope: !26)
!256 = !DILocation(line: 253, column: 20, scope: !26)
!257 = !DILocation(line: 214, column: 18, scope: !26)
!258 = !DILocation(line: 254, column: 15, scope: !259)
!259 = distinct !DILexicalBlock(scope: !26, file: !1, line: 254, column: 9)
!260 = !DILocation(line: 254, column: 9, scope: !26)
!261 = !DILocation(line: 257, column: 19, scope: !262)
!262 = distinct !DILexicalBlock(scope: !259, file: !1, line: 254, column: 41)
!263 = !DILocation(line: 257, column: 18, scope: !262)
!264 = !DILocation(line: 258, column: 18, scope: !262)
!265 = !DILocation(line: 258, column: 28, scope: !262)
!266 = !DILocation(line: 258, column: 38, scope: !262)
!267 = !DILocation(line: 258, column: 51, scope: !262)
!268 = !DILocation(line: 258, column: 43, scope: !262)
!269 = !DILocation(line: 258, column: 9, scope: !262)
!270 = !DILocation(line: 259, column: 15, scope: !262)
!271 = !DILocation(line: 202, column: 58, scope: !99, inlinedAt: !272)
!272 = distinct !DILocation(line: 260, column: 14, scope: !262)
!273 = !DILocation(line: 202, column: 75, scope: !99, inlinedAt: !272)
!274 = !DILocation(line: 203, column: 23, scope: !99, inlinedAt: !272)
!275 = !DILocation(line: 203, column: 10, scope: !99, inlinedAt: !272)
!276 = !DILocation(line: 204, column: 11, scope: !99, inlinedAt: !272)
!277 = !DILocation(line: 204, column: 5, scope: !99, inlinedAt: !272)
!278 = !DILocation(line: 204, column: 15, scope: !99, inlinedAt: !272)
!279 = !DILocation(line: 205, column: 5, scope: !99, inlinedAt: !272)
!280 = !DILocation(line: 261, column: 15, scope: !262)
!281 = !DILocation(line: 214, column: 25, scope: !26)
!282 = !DILocation(line: 263, column: 5, scope: !262)
!283 = !DILocation(line: 0, scope: !96)
!284 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !285)
!285 = distinct !DILocation(line: 269, column: 10, scope: !26)
!286 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !285)
!287 = !DILocation(line: 117, column: 11, scope: !175, inlinedAt: !285)
!288 = !DILocation(line: 0, scope: !173, inlinedAt: !285)
!289 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !285)
!290 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !285)
!291 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !285)
!292 = !DILocation(line: 120, column: 13, scope: !174, inlinedAt: !285)
!293 = !DILocation(line: 121, column: 20, scope: !294, inlinedAt: !285)
!294 = distinct !DILexicalBlock(scope: !173, file: !1, line: 120, column: 34)
!295 = !DILocation(line: 121, column: 18, scope: !294, inlinedAt: !285)
!296 = !DILocation(line: 122, column: 13, scope: !294, inlinedAt: !285)
!297 = !DILocation(line: 124, column: 18, scope: !298, inlinedAt: !285)
!298 = distinct !DILexicalBlock(scope: !173, file: !1, line: 123, column: 16)
!299 = !DILocation(line: 125, column: 21, scope: !298, inlinedAt: !285)
!300 = !DILocation(line: 125, column: 13, scope: !298, inlinedAt: !285)
!301 = !DILocation(line: 127, column: 13, scope: !298, inlinedAt: !285)
!302 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !285)
!303 = !DILocation(line: 269, column: 7, scope: !26)
!304 = !DILocation(line: 270, column: 18, scope: !26)
!305 = !DILocation(line: 270, column: 5, scope: !26)
!306 = !DILocation(line: 271, column: 7, scope: !26)
!307 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !308)
!308 = distinct !DILocation(line: 273, column: 10, scope: !26)
!309 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !308)
!310 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !308)
!311 = !DILocation(line: 0, scope: !173, inlinedAt: !308)
!312 = !DILocation(line: 120, column: 13, scope: !174, inlinedAt: !308)
!313 = !DILocation(line: 121, column: 20, scope: !294, inlinedAt: !308)
!314 = !DILocation(line: 121, column: 18, scope: !294, inlinedAt: !308)
!315 = !DILocation(line: 122, column: 13, scope: !294, inlinedAt: !308)
!316 = !DILocation(line: 124, column: 18, scope: !298, inlinedAt: !308)
!317 = !DILocation(line: 125, column: 21, scope: !298, inlinedAt: !308)
!318 = !DILocation(line: 125, column: 13, scope: !298, inlinedAt: !308)
!319 = !DILocation(line: 127, column: 13, scope: !298, inlinedAt: !308)
!320 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !308)
!321 = !DILocation(line: 273, column: 7, scope: !26)
!322 = !DILocation(line: 274, column: 7, scope: !26)
!323 = !DILocation(line: 274, column: 10, scope: !26)
!324 = !DILocation(line: 275, column: 18, scope: !26)
!325 = !DILocation(line: 275, column: 5, scope: !26)
!326 = !DILocation(line: 277, column: 1, scope: !26)
!327 = !DILocation(line: 276, column: 5, scope: !26)
!328 = distinct !DISubprogram(name: "zipmapLookupRaw", scope: !1, file: !1, line: 138, type: !329, isLocal: true, isDefinition: true, scopeLine: 138, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !332)
!329 = !DISubroutineType(types: !330)
!330 = !{!13, !13, !13, !5, !331}
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!332 = !{!333, !334, !335, !336, !337, !338, !339, !340, !341}
!333 = !DILocalVariable(name: "zm", arg: 1, scope: !328, file: !1, line: 138, type: !13)
!334 = !DILocalVariable(name: "key", arg: 2, scope: !328, file: !1, line: 138, type: !13)
!335 = !DILocalVariable(name: "klen", arg: 3, scope: !328, file: !1, line: 138, type: !5)
!336 = !DILocalVariable(name: "totlen", arg: 4, scope: !328, file: !1, line: 138, type: !331)
!337 = !DILocalVariable(name: "p", scope: !328, file: !1, line: 139, type: !13)
!338 = !DILocalVariable(name: "k", scope: !328, file: !1, line: 139, type: !13)
!339 = !DILocalVariable(name: "l", scope: !328, file: !1, line: 140, type: !5)
!340 = !DILocalVariable(name: "llen", scope: !328, file: !1, line: 140, type: !5)
!341 = !DILocalVariable(name: "free", scope: !342, file: !1, line: 143, type: !14)
!342 = distinct !DILexicalBlock(scope: !328, file: !1, line: 142, column: 29)
!343 = !DILocation(line: 138, column: 54, scope: !328)
!344 = !DILocation(line: 138, column: 73, scope: !328)
!345 = !DILocation(line: 138, column: 91, scope: !328)
!346 = !DILocation(line: 138, column: 111, scope: !328)
!347 = !DILocation(line: 139, column: 26, scope: !328)
!348 = !DILocation(line: 139, column: 20, scope: !328)
!349 = !DILocation(line: 139, column: 31, scope: !328)
!350 = !DILocation(line: 142, column: 5, scope: !328)
!351 = !DILocation(line: 142, column: 11, scope: !328)
!352 = !DILocation(line: 142, column: 14, scope: !328)
!353 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !354)
!354 = distinct !DILocation(line: 146, column: 13, scope: !342)
!355 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !354)
!356 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !354)
!357 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !354)
!358 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !354)
!359 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !354)
!360 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !354)
!361 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !354)
!362 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !354)
!363 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !354)
!364 = !DILocation(line: 0, scope: !144, inlinedAt: !354)
!365 = !DILocation(line: 0, scope: !342)
!366 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !354)
!367 = !DILocation(line: 140, column: 18, scope: !328)
!368 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !369)
!369 = distinct !DILocation(line: 147, column: 16, scope: !342)
!370 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !369)
!371 = !DILocation(line: 0, scope: !173, inlinedAt: !369)
!372 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !369)
!373 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !369)
!374 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !369)
!375 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !369)
!376 = !DILocation(line: 140, column: 20, scope: !328)
!377 = !DILocation(line: 148, column: 30, scope: !378)
!378 = distinct !DILexicalBlock(scope: !342, file: !1, line: 148, column: 13)
!379 = !DILocation(line: 148, column: 25, scope: !378)
!380 = !DILocation(line: 148, column: 43, scope: !378)
!381 = !DILocation(line: 148, column: 51, scope: !378)
!382 = !DILocation(line: 148, column: 63, scope: !378)
!383 = !DILocation(line: 148, column: 55, scope: !378)
!384 = !DILocation(line: 148, column: 13, scope: !342)
!385 = !DILocation(line: 151, column: 17, scope: !386)
!386 = distinct !DILexicalBlock(scope: !378, file: !1, line: 148, column: 77)
!387 = !DILocation(line: 0, scope: !386)
!388 = !DILocation(line: 0, scope: !328)
!389 = !DILocation(line: 157, column: 18, scope: !342)
!390 = !DILocation(line: 157, column: 11, scope: !342)
!391 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !392)
!392 = distinct !DILocation(line: 159, column: 13, scope: !342)
!393 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !392)
!394 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !392)
!395 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !392)
!396 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !392)
!397 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !392)
!398 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !392)
!399 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !392)
!400 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !392)
!401 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !392)
!402 = !DILocation(line: 0, scope: !144, inlinedAt: !392)
!403 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !392)
!404 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !405)
!405 = distinct !DILocation(line: 160, column: 14, scope: !342)
!406 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !405)
!407 = !DILocation(line: 0, scope: !173, inlinedAt: !405)
!408 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !405)
!409 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !405)
!410 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !405)
!411 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !405)
!412 = !DILocation(line: 160, column: 11, scope: !342)
!413 = !DILocation(line: 161, column: 16, scope: !342)
!414 = !DILocation(line: 143, column: 23, scope: !342)
!415 = !DILocation(line: 162, column: 15, scope: !342)
!416 = !DILocation(line: 162, column: 18, scope: !342)
!417 = !DILocation(line: 162, column: 17, scope: !342)
!418 = !DILocation(line: 162, column: 11, scope: !342)
!419 = !DILocation(line: 163, column: 5, scope: !328)
!420 = !DILocation(line: 164, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !328, file: !1, line: 164, column: 9)
!422 = !DILocation(line: 164, column: 9, scope: !328)
!423 = !DILocation(line: 164, column: 51, scope: !421)
!424 = !DILocation(line: 164, column: 35, scope: !421)
!425 = !DILocation(line: 164, column: 55, scope: !421)
!426 = !DILocation(line: 164, column: 33, scope: !421)
!427 = !DILocation(line: 164, column: 25, scope: !421)
!428 = !DILocation(line: 166, column: 1, scope: !328)
!429 = distinct !DISubprogram(name: "zipmapDel", scope: !1, file: !1, line: 281, type: !430, isLocal: false, isDefinition: true, scopeLine: 281, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !432)
!430 = !DISubroutineType(types: !431)
!431 = !{!13, !13, !13, !5, !29}
!432 = !{!433, !434, !435, !436, !437, !438, !439}
!433 = !DILocalVariable(name: "zm", arg: 1, scope: !429, file: !1, line: 281, type: !13)
!434 = !DILocalVariable(name: "key", arg: 2, scope: !429, file: !1, line: 281, type: !13)
!435 = !DILocalVariable(name: "klen", arg: 3, scope: !429, file: !1, line: 281, type: !5)
!436 = !DILocalVariable(name: "deleted", arg: 4, scope: !429, file: !1, line: 281, type: !29)
!437 = !DILocalVariable(name: "zmlen", scope: !429, file: !1, line: 282, type: !5)
!438 = !DILocalVariable(name: "freelen", scope: !429, file: !1, line: 282, type: !5)
!439 = !DILocalVariable(name: "p", scope: !429, file: !1, line: 283, type: !13)
!440 = !DILocation(line: 281, column: 41, scope: !429)
!441 = !DILocation(line: 281, column: 60, scope: !429)
!442 = !DILocation(line: 281, column: 78, scope: !429)
!443 = !DILocation(line: 281, column: 89, scope: !429)
!444 = !DILocation(line: 282, column: 5, scope: !429)
!445 = !DILocation(line: 282, column: 18, scope: !429)
!446 = !DILocation(line: 283, column: 24, scope: !429)
!447 = !DILocation(line: 283, column: 20, scope: !429)
!448 = !DILocation(line: 284, column: 9, scope: !449)
!449 = distinct !DILexicalBlock(scope: !429, file: !1, line: 284, column: 9)
!450 = !DILocation(line: 284, column: 9, scope: !429)
!451 = !DILocation(line: 197, column: 57, scope: !130, inlinedAt: !452)
!452 = distinct !DILocation(line: 285, column: 19, scope: !453)
!453 = distinct !DILexicalBlock(scope: !449, file: !1, line: 284, column: 12)
!454 = !DILocation(line: 178, column: 55, scope: !138, inlinedAt: !455)
!455 = distinct !DILocation(line: 198, column: 22, scope: !130, inlinedAt: !452)
!456 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !457)
!457 = distinct !DILocation(line: 179, column: 22, scope: !138, inlinedAt: !455)
!458 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !457)
!459 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !457)
!460 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !457)
!461 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !457)
!462 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !457)
!463 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !457)
!464 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !457)
!465 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !457)
!466 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !457)
!467 = !DILocation(line: 0, scope: !144, inlinedAt: !457)
!468 = !DILocation(line: 0, scope: !138, inlinedAt: !455)
!469 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !457)
!470 = !DILocation(line: 179, column: 18, scope: !138, inlinedAt: !455)
!471 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !472)
!472 = distinct !DILocation(line: 180, column: 12, scope: !138, inlinedAt: !455)
!473 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !472)
!474 = !DILocation(line: 0, scope: !173, inlinedAt: !472)
!475 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !472)
!476 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !472)
!477 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !472)
!478 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !472)
!479 = !DILocation(line: 180, column: 39, scope: !138, inlinedAt: !455)
!480 = !DILocation(line: 180, column: 5, scope: !138, inlinedAt: !455)
!481 = !DILocation(line: 198, column: 18, scope: !130, inlinedAt: !452)
!482 = !DILocation(line: 199, column: 38, scope: !130, inlinedAt: !452)
!483 = !DILocation(line: 185, column: 57, scope: !186, inlinedAt: !484)
!484 = distinct !DILocation(line: 199, column: 16, scope: !130, inlinedAt: !452)
!485 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !486)
!486 = distinct !DILocation(line: 186, column: 22, scope: !186, inlinedAt: !484)
!487 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !486)
!488 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !486)
!489 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !486)
!490 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !486)
!491 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !486)
!492 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !486)
!493 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !486)
!494 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !486)
!495 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !486)
!496 = !DILocation(line: 0, scope: !144, inlinedAt: !486)
!497 = !DILocation(line: 0, scope: !186, inlinedAt: !484)
!498 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !486)
!499 = !DILocation(line: 186, column: 18, scope: !186, inlinedAt: !484)
!500 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !501)
!501 = distinct !DILocation(line: 189, column: 12, scope: !186, inlinedAt: !484)
!502 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !501)
!503 = !DILocation(line: 0, scope: !173, inlinedAt: !501)
!504 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !501)
!505 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !501)
!506 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !501)
!507 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !501)
!508 = !DILocation(line: 187, column: 18, scope: !186, inlinedAt: !484)
!509 = !DILocation(line: 190, column: 13, scope: !186, inlinedAt: !484)
!510 = !DILocation(line: 191, column: 5, scope: !186, inlinedAt: !484)
!511 = !DILocation(line: 190, column: 21, scope: !186, inlinedAt: !484)
!512 = !DILocation(line: 190, column: 25, scope: !186, inlinedAt: !484)
!513 = !DILocation(line: 190, column: 10, scope: !186, inlinedAt: !484)
!514 = !DILocation(line: 199, column: 14, scope: !130, inlinedAt: !452)
!515 = !DILocation(line: 199, column: 5, scope: !130, inlinedAt: !452)
!516 = !DILocation(line: 282, column: 25, scope: !429)
!517 = !DILocation(line: 286, column: 21, scope: !453)
!518 = !DILocation(line: 286, column: 31, scope: !453)
!519 = !DILocation(line: 286, column: 40, scope: !453)
!520 = !DILocation(line: 286, column: 44, scope: !453)
!521 = !DILocation(line: 286, column: 36, scope: !453)
!522 = !DILocation(line: 286, column: 9, scope: !453)
!523 = !DILocation(line: 287, column: 31, scope: !453)
!524 = !DILocation(line: 287, column: 36, scope: !453)
!525 = !DILocation(line: 202, column: 58, scope: !99, inlinedAt: !526)
!526 = distinct !DILocation(line: 287, column: 14, scope: !453)
!527 = !DILocation(line: 202, column: 75, scope: !99, inlinedAt: !526)
!528 = !DILocation(line: 203, column: 23, scope: !99, inlinedAt: !526)
!529 = !DILocation(line: 203, column: 10, scope: !99, inlinedAt: !526)
!530 = !DILocation(line: 204, column: 11, scope: !99, inlinedAt: !526)
!531 = !DILocation(line: 204, column: 5, scope: !99, inlinedAt: !526)
!532 = !DILocation(line: 204, column: 15, scope: !99, inlinedAt: !526)
!533 = !DILocation(line: 205, column: 5, scope: !99, inlinedAt: !526)
!534 = !DILocation(line: 290, column: 13, scope: !535)
!535 = distinct !DILexicalBlock(scope: !453, file: !1, line: 290, column: 13)
!536 = !DILocation(line: 290, column: 19, scope: !535)
!537 = !DILocation(line: 290, column: 13, scope: !453)
!538 = !DILocation(line: 290, column: 41, scope: !535)
!539 = !DILocation(line: 290, column: 36, scope: !535)
!540 = !DILocation(line: 292, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !453, file: !1, line: 292, column: 13)
!542 = !DILocation(line: 292, column: 13, scope: !453)
!543 = !DILocation(line: 292, column: 31, scope: !541)
!544 = !DILocation(line: 292, column: 22, scope: !541)
!545 = !DILocation(line: 294, column: 13, scope: !546)
!546 = distinct !DILexicalBlock(scope: !547, file: !1, line: 294, column: 13)
!547 = distinct !DILexicalBlock(scope: !449, file: !1, line: 293, column: 12)
!548 = !DILocation(line: 294, column: 13, scope: !547)
!549 = !DILocation(line: 294, column: 31, scope: !546)
!550 = !DILocation(line: 294, column: 22, scope: !546)
!551 = !DILocation(line: 297, column: 1, scope: !429)
!552 = !DILocation(line: 296, column: 5, scope: !429)
!553 = distinct !DISubprogram(name: "zipmapRewind", scope: !1, file: !1, line: 300, type: !554, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !556)
!554 = !DISubroutineType(types: !555)
!555 = !{!13, !13}
!556 = !{!557}
!557 = !DILocalVariable(name: "zm", arg: 1, scope: !553, file: !1, line: 300, type: !13)
!558 = !DILocation(line: 300, column: 44, scope: !553)
!559 = !DILocation(line: 301, column: 14, scope: !553)
!560 = !DILocation(line: 301, column: 5, scope: !553)
!561 = distinct !DISubprogram(name: "zipmapNext", scope: !1, file: !1, line: 315, type: !562, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !565)
!562 = !DISubroutineType(types: !563)
!563 = !{!13, !13, !564, !331, !564, !331}
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!565 = !{!566, !567, !568, !569, !570}
!566 = !DILocalVariable(name: "zm", arg: 1, scope: !561, file: !1, line: 315, type: !13)
!567 = !DILocalVariable(name: "key", arg: 2, scope: !561, file: !1, line: 315, type: !564)
!568 = !DILocalVariable(name: "klen", arg: 3, scope: !561, file: !1, line: 315, type: !331)
!569 = !DILocalVariable(name: "value", arg: 4, scope: !561, file: !1, line: 315, type: !564)
!570 = !DILocalVariable(name: "vlen", arg: 5, scope: !561, file: !1, line: 315, type: !331)
!571 = !DILocation(line: 315, column: 42, scope: !561)
!572 = !DILocation(line: 315, column: 62, scope: !561)
!573 = !DILocation(line: 315, column: 81, scope: !561)
!574 = !DILocation(line: 315, column: 103, scope: !561)
!575 = !DILocation(line: 315, column: 124, scope: !561)
!576 = !DILocation(line: 316, column: 9, scope: !577)
!577 = distinct !DILexicalBlock(scope: !561, file: !1, line: 316, column: 9)
!578 = !DILocation(line: 316, column: 15, scope: !577)
!579 = !DILocation(line: 316, column: 9, scope: !561)
!580 = !DILocation(line: 317, column: 9, scope: !581)
!581 = distinct !DILexicalBlock(scope: !561, file: !1, line: 317, column: 9)
!582 = !DILocation(line: 317, column: 9, scope: !561)
!583 = !DILocation(line: 318, column: 14, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !1, line: 317, column: 14)
!585 = !{!586, !586, i64 0}
!586 = !{!"any pointer", !21, i64 0}
!587 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !588)
!588 = distinct !DILocation(line: 319, column: 17, scope: !584)
!589 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !588)
!590 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !588)
!591 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !588)
!592 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !588)
!593 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !588)
!594 = !DILocation(line: 108, column: 30, scope: !153, inlinedAt: !588)
!595 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !588)
!596 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !588)
!597 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !588)
!598 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !588)
!599 = !DILocation(line: 320, column: 14, scope: !584)
!600 = !DILocation(line: 0, scope: !144, inlinedAt: !588)
!601 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !588)
!602 = !DILocation(line: 319, column: 15, scope: !584)
!603 = !DILocation(line: 320, column: 17, scope: !584)
!604 = !DILocation(line: 321, column: 5, scope: !584)
!605 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !606)
!606 = distinct !DILocation(line: 179, column: 22, scope: !138, inlinedAt: !607)
!607 = distinct !DILocation(line: 322, column: 11, scope: !561)
!608 = !DILocation(line: 178, column: 55, scope: !138, inlinedAt: !607)
!609 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !606)
!610 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !606)
!611 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !606)
!612 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !606)
!613 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !606)
!614 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !606)
!615 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !606)
!616 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !606)
!617 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !606)
!618 = !DILocation(line: 0, scope: !144, inlinedAt: !606)
!619 = !DILocation(line: 0, scope: !138, inlinedAt: !607)
!620 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !606)
!621 = !DILocation(line: 179, column: 18, scope: !138, inlinedAt: !607)
!622 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !623)
!623 = distinct !DILocation(line: 180, column: 12, scope: !138, inlinedAt: !607)
!624 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !623)
!625 = !DILocation(line: 0, scope: !173, inlinedAt: !623)
!626 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !623)
!627 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !623)
!628 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !623)
!629 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !623)
!630 = !DILocation(line: 180, column: 39, scope: !138, inlinedAt: !607)
!631 = !DILocation(line: 180, column: 5, scope: !138, inlinedAt: !607)
!632 = !DILocation(line: 322, column: 8, scope: !561)
!633 = !DILocation(line: 323, column: 9, scope: !634)
!634 = distinct !DILexicalBlock(scope: !561, file: !1, line: 323, column: 9)
!635 = !DILocation(line: 323, column: 9, scope: !561)
!636 = !DILocation(line: 324, column: 20, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !1, line: 323, column: 16)
!638 = !DILocation(line: 324, column: 16, scope: !637)
!639 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !640)
!640 = distinct !DILocation(line: 325, column: 17, scope: !637)
!641 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !640)
!642 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !640)
!643 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !640)
!644 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !640)
!645 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !640)
!646 = !DILocation(line: 108, column: 30, scope: !153, inlinedAt: !640)
!647 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !640)
!648 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !640)
!649 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !640)
!650 = !DILocation(line: 326, column: 16, scope: !637)
!651 = !DILocation(line: 0, scope: !144, inlinedAt: !640)
!652 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !640)
!653 = !DILocation(line: 325, column: 15, scope: !637)
!654 = !DILocation(line: 326, column: 19, scope: !637)
!655 = !DILocation(line: 327, column: 5, scope: !637)
!656 = !DILocation(line: 185, column: 57, scope: !186, inlinedAt: !657)
!657 = distinct !DILocation(line: 328, column: 11, scope: !561)
!658 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !659)
!659 = distinct !DILocation(line: 186, column: 22, scope: !186, inlinedAt: !657)
!660 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !659)
!661 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !659)
!662 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !659)
!663 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !659)
!664 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !659)
!665 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !659)
!666 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !659)
!667 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !659)
!668 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !659)
!669 = !DILocation(line: 0, scope: !144, inlinedAt: !659)
!670 = !DILocation(line: 0, scope: !186, inlinedAt: !657)
!671 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !659)
!672 = !DILocation(line: 186, column: 18, scope: !186, inlinedAt: !657)
!673 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !674)
!674 = distinct !DILocation(line: 189, column: 12, scope: !186, inlinedAt: !657)
!675 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !674)
!676 = !DILocation(line: 0, scope: !173, inlinedAt: !674)
!677 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !674)
!678 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !674)
!679 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !674)
!680 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !674)
!681 = !DILocation(line: 187, column: 18, scope: !186, inlinedAt: !657)
!682 = !DILocation(line: 190, column: 13, scope: !186, inlinedAt: !657)
!683 = !DILocation(line: 190, column: 21, scope: !186, inlinedAt: !657)
!684 = !DILocation(line: 190, column: 25, scope: !186, inlinedAt: !657)
!685 = !DILocation(line: 190, column: 10, scope: !186, inlinedAt: !657)
!686 = !DILocation(line: 191, column: 5, scope: !186, inlinedAt: !657)
!687 = !DILocation(line: 328, column: 8, scope: !561)
!688 = !DILocation(line: 329, column: 5, scope: !561)
!689 = !DILocation(line: 0, scope: !561)
!690 = !DILocation(line: 0, scope: !577)
!691 = !DILocation(line: 330, column: 1, scope: !561)
!692 = distinct !DISubprogram(name: "zipmapGet", scope: !1, file: !1, line: 334, type: !693, isLocal: false, isDefinition: true, scopeLine: 334, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !695)
!693 = !DISubroutineType(types: !694)
!694 = !{!30, !13, !13, !5, !564, !331}
!695 = !{!696, !697, !698, !699, !700, !701}
!696 = !DILocalVariable(name: "zm", arg: 1, scope: !692, file: !1, line: 334, type: !13)
!697 = !DILocalVariable(name: "key", arg: 2, scope: !692, file: !1, line: 334, type: !13)
!698 = !DILocalVariable(name: "klen", arg: 3, scope: !692, file: !1, line: 334, type: !5)
!699 = !DILocalVariable(name: "value", arg: 4, scope: !692, file: !1, line: 334, type: !564)
!700 = !DILocalVariable(name: "vlen", arg: 5, scope: !692, file: !1, line: 334, type: !331)
!701 = !DILocalVariable(name: "p", scope: !692, file: !1, line: 335, type: !13)
!702 = !DILocation(line: 334, column: 30, scope: !692)
!703 = !DILocation(line: 334, column: 49, scope: !692)
!704 = !DILocation(line: 334, column: 67, scope: !692)
!705 = !DILocation(line: 334, column: 89, scope: !692)
!706 = !DILocation(line: 334, column: 110, scope: !692)
!707 = !DILocation(line: 337, column: 14, scope: !708)
!708 = distinct !DILexicalBlock(scope: !692, file: !1, line: 337, column: 9)
!709 = !DILocation(line: 335, column: 20, scope: !692)
!710 = !DILocation(line: 337, column: 49, scope: !708)
!711 = !DILocation(line: 337, column: 9, scope: !692)
!712 = !DILocation(line: 178, column: 55, scope: !138, inlinedAt: !713)
!713 = distinct !DILocation(line: 338, column: 10, scope: !692)
!714 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !715)
!715 = distinct !DILocation(line: 179, column: 22, scope: !138, inlinedAt: !713)
!716 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !715)
!717 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !715)
!718 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !715)
!719 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !715)
!720 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !715)
!721 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !715)
!722 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !715)
!723 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !715)
!724 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !715)
!725 = !DILocation(line: 0, scope: !144, inlinedAt: !715)
!726 = !DILocation(line: 0, scope: !138, inlinedAt: !713)
!727 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !715)
!728 = !DILocation(line: 179, column: 18, scope: !138, inlinedAt: !713)
!729 = !DILocation(line: 116, column: 55, scope: !164, inlinedAt: !730)
!730 = distinct !DILocation(line: 180, column: 12, scope: !138, inlinedAt: !713)
!731 = !DILocation(line: 116, column: 71, scope: !164, inlinedAt: !730)
!732 = !DILocation(line: 0, scope: !173, inlinedAt: !730)
!733 = !DILocation(line: 117, column: 9, scope: !164, inlinedAt: !730)
!734 = !DILocation(line: 118, column: 16, scope: !178, inlinedAt: !730)
!735 = !DILocation(line: 118, column: 9, scope: !178, inlinedAt: !730)
!736 = !DILocation(line: 130, column: 1, scope: !164, inlinedAt: !730)
!737 = !DILocation(line: 180, column: 39, scope: !138, inlinedAt: !713)
!738 = !DILocation(line: 180, column: 5, scope: !138, inlinedAt: !713)
!739 = !DILocation(line: 338, column: 7, scope: !692)
!740 = !DILocation(line: 105, column: 55, scope: !144, inlinedAt: !741)
!741 = distinct !DILocation(line: 339, column: 13, scope: !692)
!742 = !DILocation(line: 106, column: 5, scope: !144, inlinedAt: !741)
!743 = !DILocation(line: 106, column: 24, scope: !144, inlinedAt: !741)
!744 = !DILocation(line: 106, column: 18, scope: !144, inlinedAt: !741)
!745 = !DILocation(line: 108, column: 13, scope: !153, inlinedAt: !741)
!746 = !DILocation(line: 108, column: 9, scope: !144, inlinedAt: !741)
!747 = !DILocation(line: 109, column: 18, scope: !144, inlinedAt: !741)
!748 = !DILocation(line: 109, column: 5, scope: !144, inlinedAt: !741)
!749 = !DILocation(line: 111, column: 12, scope: !144, inlinedAt: !741)
!750 = !DILocation(line: 111, column: 5, scope: !144, inlinedAt: !741)
!751 = !DILocation(line: 0, scope: !144, inlinedAt: !741)
!752 = !DILocation(line: 0, scope: !692)
!753 = !DILocation(line: 112, column: 1, scope: !144, inlinedAt: !741)
!754 = !DILocation(line: 339, column: 11, scope: !692)
!755 = !DILocation(line: 340, column: 18, scope: !692)
!756 = !DILocation(line: 340, column: 16, scope: !692)
!757 = !DILocation(line: 340, column: 42, scope: !692)
!758 = !DILocation(line: 340, column: 12, scope: !692)
!759 = !DILocation(line: 341, column: 5, scope: !692)
!760 = !DILocation(line: 0, scope: !708)
!761 = !DILocation(line: 342, column: 1, scope: !692)
!762 = distinct !DISubprogram(name: "zipmapExists", scope: !1, file: !1, line: 345, type: !763, isLocal: false, isDefinition: true, scopeLine: 345, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !765)
!763 = !DISubroutineType(types: !764)
!764 = !{!30, !13, !13, !5}
!765 = !{!766, !767, !768}
!766 = !DILocalVariable(name: "zm", arg: 1, scope: !762, file: !1, line: 345, type: !13)
!767 = !DILocalVariable(name: "key", arg: 2, scope: !762, file: !1, line: 345, type: !13)
!768 = !DILocalVariable(name: "klen", arg: 3, scope: !762, file: !1, line: 345, type: !5)
!769 = !DILocation(line: 345, column: 33, scope: !762)
!770 = !DILocation(line: 345, column: 52, scope: !762)
!771 = !DILocation(line: 345, column: 70, scope: !762)
!772 = !DILocation(line: 346, column: 12, scope: !762)
!773 = !DILocation(line: 346, column: 46, scope: !762)
!774 = !DILocation(line: 346, column: 5, scope: !762)
!775 = distinct !DISubprogram(name: "zipmapLen", scope: !1, file: !1, line: 350, type: !131, isLocal: false, isDefinition: true, scopeLine: 350, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !776)
!776 = !{!777, !778, !779}
!777 = !DILocalVariable(name: "zm", arg: 1, scope: !775, file: !1, line: 350, type: !13)
!778 = !DILocalVariable(name: "len", scope: !775, file: !1, line: 351, type: !5)
!779 = !DILocalVariable(name: "p", scope: !780, file: !1, line: 355, type: !13)
!780 = distinct !DILexicalBlock(scope: !781, file: !1, line: 354, column: 12)
!781 = distinct !DILexicalBlock(scope: !775, file: !1, line: 352, column: 9)
!782 = !DILocation(line: 350, column: 39, scope: !775)
!783 = !DILocation(line: 351, column: 18, scope: !775)
!784 = !DILocation(line: 352, column: 9, scope: !781)
!785 = !DILocation(line: 352, column: 15, scope: !781)
!786 = !DILocation(line: 352, column: 9, scope: !775)
!787 = !DILocation(line: 354, column: 5, scope: !788)
!788 = distinct !DILexicalBlock(scope: !781, file: !1, line: 352, column: 32)
!789 = !DILocation(line: 300, column: 44, scope: !553, inlinedAt: !790)
!790 = distinct !DILocation(line: 355, column: 28, scope: !780)
!791 = !DILocation(line: 301, column: 14, scope: !553, inlinedAt: !790)
!792 = !DILocation(line: 301, column: 5, scope: !553, inlinedAt: !790)
!793 = !DILocation(line: 355, column: 24, scope: !780)
!794 = !DILocation(line: 356, column: 9, scope: !780)
!795 = !DILocation(line: 356, column: 20, scope: !780)
!796 = !DILocation(line: 356, column: 55, scope: !780)
!797 = !DILocation(line: 359, column: 13, scope: !780)
!798 = !DILocation(line: 356, column: 67, scope: !780)
!799 = distinct !{!799, !794, !798}
!800 = !DILocation(line: 359, column: 17, scope: !801)
!801 = distinct !DILexicalBlock(scope: !780, file: !1, line: 359, column: 13)
!802 = !DILocation(line: 359, column: 42, scope: !801)
!803 = !DILocation(line: 359, column: 40, scope: !801)
!804 = !DILocation(line: 359, column: 34, scope: !801)
!805 = !DILocation(line: 0, scope: !775)
!806 = !DILocation(line: 361, column: 5, scope: !775)
!807 = distinct !DISubprogram(name: "zipmapBlobLen", scope: !1, file: !1, line: 367, type: !808, isLocal: false, isDefinition: true, scopeLine: 367, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !814)
!808 = !DISubroutineType(types: !809)
!809 = !{!810, !13}
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !811, line: 40, baseType: !812)
!811 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !813, line: 129, baseType: !56)
!813 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!814 = !{!815, !816}
!815 = !DILocalVariable(name: "zm", arg: 1, scope: !807, file: !1, line: 367, type: !13)
!816 = !DILocalVariable(name: "totlen", scope: !807, file: !1, line: 368, type: !5)
!817 = !DILocation(line: 367, column: 37, scope: !807)
!818 = !DILocation(line: 368, column: 5, scope: !807)
!819 = !DILocation(line: 368, column: 18, scope: !807)
!820 = !DILocation(line: 369, column: 5, scope: !807)
!821 = !DILocation(line: 370, column: 12, scope: !807)
!822 = !DILocation(line: 371, column: 1, scope: !807)
!823 = !DILocation(line: 370, column: 5, scope: !807)
