; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.intset = type { i32, i32, [0 x i8] }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.intset* @intsetNew() local_unnamed_addr #0 !dbg !23 {
  %1 = tail call i8* @zmalloc(i64 8) #4, !dbg !44
  %2 = bitcast i8* %1 to %struct.intset*, !dbg !44
  %3 = bitcast i8* %1 to i32*, !dbg !46
  store i32 2, i32* %3, align 4, !dbg !47, !tbaa !48
  %4 = getelementptr inbounds i8, i8* %1, i64 4, !dbg !52
  %5 = bitcast i8* %4 to i32*, !dbg !52
  store i32 0, i32* %5, align 4, !dbg !53, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !54
  ret %struct.intset* %2, !dbg !54
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i8* @zmalloc(i64) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone nounwind
define dso_local %struct.intset* @intsetAdd(%struct.intset*, i64, i8*) local_unnamed_addr #0 !dbg !55 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  %8 = add i64 %1, 2147483648, !dbg !78
  %9 = icmp ugt i64 %8, 4294967295, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !78
  br i1 %9, label %10, label %11, !dbg !78

; <label>:10:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br label %15, !dbg !80

; <label>:11:                                     ; preds = %3
  %12 = add i64 %1, 32768, !dbg !81
  %13 = icmp ugt i64 %12, 65535, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  %14 = select i1 %13, i32 4, i32 2, !dbg !84
  br label %15, !dbg !84

; <label>:15:                                     ; preds = %10, %11
  %16 = phi i32 [ 8, %10 ], [ %14, %11 ], !dbg !83
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %17 = bitcast i32* %7 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %17) #5, !dbg !86
  %18 = icmp ne i8* %2, null, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br i1 %18, label %19, label %20, !dbg !89

; <label>:19:                                     ; preds = %15
  store i8 1, i8* %2, align 1, !dbg !90, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br label %20, !dbg !92

; <label>:20:                                     ; preds = %19, %15
  %21 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !93
  %22 = load i32, i32* %21, align 4, !dbg !93, !tbaa !48
  %23 = icmp ult i32 %22, %16, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %23, label %24, label %148, !dbg !96

; <label>:24:                                     ; preds = %20
  %25 = trunc i32 %22 to i8, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !115
  br i1 %9, label %26, label %27, !dbg !115

; <label>:26:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br label %31, !dbg !116

; <label>:27:                                     ; preds = %24
  %28 = add i64 %1, 32768, !dbg !117
  %29 = icmp ugt i64 %28, 65535, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  %30 = select i1 %29, i32 4, i32 2, !dbg !119
  br label %31, !dbg !119

; <label>:31:                                     ; preds = %27, %26
  %32 = phi i32 [ 8, %26 ], [ %30, %27 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  %33 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !121
  %34 = load i32, i32* %33, align 4, !dbg !121, !tbaa !48
  %35 = icmp slt i64 %1, 0, !dbg !123
  store i32 %32, i32* %21, align 4, !dbg !124, !tbaa !48
  %36 = add i32 %34, 1, !dbg !125
  %37 = mul i32 %36, %32, !dbg !136
  %38 = bitcast %struct.intset* %0 to i8*, !dbg !138
  %39 = zext i32 %37 to i64, !dbg !139
  %40 = add nuw nsw i64 %39, 8, !dbg !140
  %41 = tail call i8* @zrealloc(i8* %38, i64 %40) #4, !dbg !141
  %42 = bitcast i8* %41 to %struct.intset*, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  %43 = icmp eq i32 %34, 0, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %43, label %96, label %44, !dbg !143

; <label>:44:                                     ; preds = %31
  %45 = lshr i64 %1, 63, !dbg !144
  %46 = bitcast i64* %4 to i8*
  %47 = bitcast i32* %5 to i8*
  %48 = bitcast i16* %6 to i8*
  %49 = icmp eq i8 %25, 8
  %50 = getelementptr inbounds i8, i8* %41, i64 8
  %51 = bitcast i8* %50 to i64*
  %52 = bitcast i8* %41 to i32*
  %53 = icmp eq i8 %25, 4
  %54 = bitcast i8* %50 to i32*
  %55 = bitcast i8* %50 to i16*
  %56 = sext i32 %34 to i64, !dbg !143
  br label %57, !dbg !143

; <label>:57:                                     ; preds = %93, %44
  %58 = phi i64 [ %56, %44 ], [ %59, %93 ]
  %59 = add nsw i64 %58, -1, !dbg !145
  %60 = add nsw i64 %59, %45, !dbg !146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #5, !dbg !161
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %47) #5, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %48) #5, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %49, label %61, label %66, !dbg !164

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds i64, i64* %51, i64 %59, !dbg !165
  %63 = bitcast i64* %62 to i8*, !dbg !168
  %64 = call i8* @memcpy(i8* nonnull %46, i8* %63, i64 8) #4, !dbg !169
  %65 = load i64, i64* %4, align 8, !dbg !170, !tbaa !171
  br label %79, !dbg !174

; <label>:66:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %53, label %67, label %73, !dbg !175

; <label>:67:                                     ; preds = %66
  %68 = getelementptr inbounds i32, i32* %54, i64 %59, !dbg !176
  %69 = bitcast i32* %68 to i8*, !dbg !179
  %70 = call i8* @memcpy(i8* nonnull %47, i8* %69, i64 4) #4, !dbg !180
  %71 = load i32, i32* %5, align 4, !dbg !181, !tbaa !48
  %72 = sext i32 %71 to i64, !dbg !181
  br label %79, !dbg !183

; <label>:73:                                     ; preds = %66
  %74 = getelementptr inbounds i16, i16* %55, i64 %59, !dbg !184
  %75 = bitcast i16* %74 to i8*, !dbg !186
  %76 = call i8* @memcpy(i8* nonnull %48, i8* %75, i64 2) #4, !dbg !187
  %77 = load i16, i16* %6, align 2, !dbg !188, !tbaa !189
  %78 = sext i16 %77 to i64, !dbg !188
  br label %79, !dbg !192

; <label>:79:                                     ; preds = %73, %67, %61
  %80 = phi i64 [ %65, %61 ], [ %72, %67 ], [ %78, %73 ], !dbg !193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %48) #5, !dbg !195
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %47) #5, !dbg !195
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #5, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  %81 = load i32, i32* %52, align 4, !dbg !207, !tbaa !48
  %82 = icmp eq i32 %81, 8, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %82, label %83, label %85, !dbg !211

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds i64, i64* %51, i64 %60, !dbg !212
  store i64 %80, i64* %84, align 4, !dbg !214, !tbaa !171
  br label %93, !dbg !215

; <label>:85:                                     ; preds = %79
  %86 = icmp eq i32 %81, 4, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %86, label %87, label %90, !dbg !218

; <label>:87:                                     ; preds = %85
  %88 = trunc i64 %80 to i32, !dbg !219
  %89 = getelementptr inbounds i32, i32* %54, i64 %60, !dbg !221
  store i32 %88, i32* %89, align 4, !dbg !222, !tbaa !48
  br label %93, !dbg !223

; <label>:90:                                     ; preds = %85
  %91 = trunc i64 %80 to i16, !dbg !224
  %92 = getelementptr inbounds i16, i16* %55, i64 %60, !dbg !226
  store i16 %91, i16* %92, align 2, !dbg !227, !tbaa !189
  br label %93

; <label>:93:                                     ; preds = %90, %87, %83
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  %94 = trunc i64 %59 to i32, !dbg !143
  %95 = icmp eq i32 %94, 0, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  br i1 %95, label %96, label %57, !dbg !143, !llvm.loop !229

; <label>:96:                                     ; preds = %93, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %35, label %97, label %117, !dbg !232

; <label>:97:                                     ; preds = %96
  %98 = bitcast i8* %41 to i32*, !dbg !238
  %99 = load i32, i32* %98, align 4, !dbg !238, !tbaa !48
  %100 = icmp eq i32 %99, 8, !dbg !240
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %100, label %101, label %104, !dbg !241

; <label>:101:                                    ; preds = %97
  %102 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !242
  %103 = bitcast i8* %102 to i64*, !dbg !242
  store i64 %1, i64* %103, align 4, !dbg !243, !tbaa !171
  br label %114, !dbg !244

; <label>:104:                                    ; preds = %97
  %105 = icmp eq i32 %99, 4, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %105, label %106, label %110, !dbg !246

; <label>:106:                                    ; preds = %104
  %107 = trunc i64 %1 to i32, !dbg !247
  %108 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !248
  %109 = bitcast i8* %108 to i32*, !dbg !248
  store i32 %107, i32* %109, align 4, !dbg !249, !tbaa !48
  br label %114, !dbg !250

; <label>:110:                                    ; preds = %104
  %111 = trunc i64 %1 to i16, !dbg !251
  %112 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !252
  %113 = bitcast i8* %112 to i16*, !dbg !252
  store i16 %111, i16* %113, align 2, !dbg !253, !tbaa !189
  br label %114

; <label>:114:                                    ; preds = %110, %106, %101
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !255
  %115 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !256
  %116 = bitcast i8* %115 to i32*, !dbg !256
  br label %144, !dbg !255

; <label>:117:                                    ; preds = %96
  %118 = getelementptr inbounds i8, i8* %41, i64 4, !dbg !257
  %119 = bitcast i8* %118 to i32*, !dbg !257
  %120 = load i32, i32* %119, align 4, !dbg !257, !tbaa !48
  %121 = bitcast i8* %41 to i32*, !dbg !262
  %122 = load i32, i32* %121, align 4, !dbg !262, !tbaa !48
  %123 = icmp eq i32 %122, 8, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %123, label %124, label %129, !dbg !265

; <label>:124:                                    ; preds = %117
  %125 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !266
  %126 = bitcast i8* %125 to i64*, !dbg !266
  %127 = sext i32 %120 to i64, !dbg !266
  %128 = getelementptr inbounds i64, i64* %126, i64 %127, !dbg !266
  store i64 %1, i64* %128, align 4, !dbg !267, !tbaa !171
  br label %143, !dbg !268

; <label>:129:                                    ; preds = %117
  %130 = icmp eq i32 %122, 4, !dbg !269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %130, label %131, label %137, !dbg !270

; <label>:131:                                    ; preds = %129
  %132 = trunc i64 %1 to i32, !dbg !271
  %133 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !272
  %134 = bitcast i8* %133 to i32*, !dbg !272
  %135 = sext i32 %120 to i64, !dbg !272
  %136 = getelementptr inbounds i32, i32* %134, i64 %135, !dbg !272
  store i32 %132, i32* %136, align 4, !dbg !273, !tbaa !48
  br label %143, !dbg !274

; <label>:137:                                    ; preds = %129
  %138 = trunc i64 %1 to i16, !dbg !275
  %139 = getelementptr inbounds i8, i8* %41, i64 8, !dbg !276
  %140 = bitcast i8* %139 to i16*, !dbg !276
  %141 = sext i32 %120 to i64, !dbg !276
  %142 = getelementptr inbounds i16, i16* %140, i64 %141, !dbg !276
  store i16 %138, i16* %142, align 2, !dbg !277, !tbaa !189
  br label %143

; <label>:143:                                    ; preds = %137, %131, %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %144

; <label>:144:                                    ; preds = %114, %143
  %145 = phi i32* [ %119, %143 ], [ %116, %114 ], !dbg !256
  %146 = load i32, i32* %145, align 4, !dbg !256, !tbaa !48
  %147 = add i32 %146, 1, !dbg !256
  store i32 %147, i32* %145, align 4, !dbg !279, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  br label %240, !dbg !281

; <label>:148:                                    ; preds = %20
  %149 = call fastcc zeroext i8 @intsetSearch(%struct.intset* nonnull %0, i64 %1, i32* nonnull %7) #6, !dbg !283
  %150 = icmp eq i8 %149, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %150, label %153, label %151, !dbg !286

; <label>:151:                                    ; preds = %148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %18, label %152, label %240, !dbg !287

; <label>:152:                                    ; preds = %151
  store i8 0, i8* %2, align 1, !dbg !289, !tbaa !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %240, !dbg !291

; <label>:153:                                    ; preds = %148
  %154 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !292
  %155 = load i32, i32* %154, align 4, !dbg !292, !tbaa !48
  %156 = add i32 %155, 1, !dbg !293
  %157 = load i32, i32* %21, align 4, !dbg !297, !tbaa !48
  %158 = mul i32 %157, %156, !dbg !298
  %159 = bitcast %struct.intset* %0 to i8*, !dbg !300
  %160 = zext i32 %158 to i64, !dbg !301
  %161 = add nuw nsw i64 %160, 8, !dbg !302
  %162 = call i8* @zrealloc(i8* %159, i64 %161) #4, !dbg !303
  %163 = bitcast i8* %162 to %struct.intset*, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  %164 = load i32, i32* %7, align 4, !dbg !305, !tbaa !48
  %165 = getelementptr inbounds i8, i8* %162, i64 4, !dbg !307
  %166 = bitcast i8* %165 to i32*, !dbg !307
  %167 = load i32, i32* %166, align 4, !dbg !307, !tbaa !48
  %168 = icmp ugt i32 %167, %164, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  br i1 %168, label %171, label %169, !dbg !309

; <label>:169:                                    ; preds = %153
  %170 = bitcast i8* %162 to i32*, !dbg !310
  br label %213, !dbg !309

; <label>:171:                                    ; preds = %153
  %172 = add i32 %164, 1, !dbg !312
  %173 = sub i32 %167, %164, !dbg !329
  %174 = bitcast i8* %162 to i32*, !dbg !331
  %175 = load i32, i32* %174, align 4, !dbg !331, !tbaa !48
  %176 = icmp eq i32 %175, 8, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %176, label %177, label %186, !dbg !335

; <label>:177:                                    ; preds = %171
  %178 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !336
  %179 = bitcast i8* %178 to i64*, !dbg !338
  %180 = zext i32 %164 to i64, !dbg !339
  %181 = getelementptr inbounds i64, i64* %179, i64 %180, !dbg !339
  %182 = bitcast i64* %181 to i8*, !dbg !338
  %183 = zext i32 %172 to i64, !dbg !341
  %184 = getelementptr inbounds i64, i64* %179, i64 %183, !dbg !341
  %185 = bitcast i64* %184 to i8*, !dbg !342
  br label %205, !dbg !344

; <label>:186:                                    ; preds = %171
  %187 = icmp eq i32 %175, 4, !dbg !345
  %188 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %187, label %189, label %197, !dbg !349

; <label>:189:                                    ; preds = %186
  %190 = bitcast i8* %188 to i32*, !dbg !350
  %191 = zext i32 %164 to i64, !dbg !352
  %192 = getelementptr inbounds i32, i32* %190, i64 %191, !dbg !352
  %193 = bitcast i32* %192 to i8*, !dbg !350
  %194 = zext i32 %172 to i64, !dbg !353
  %195 = getelementptr inbounds i32, i32* %190, i64 %194, !dbg !353
  %196 = bitcast i32* %195 to i8*, !dbg !354
  br label %205, !dbg !355

; <label>:197:                                    ; preds = %186
  %198 = bitcast i8* %188 to i16*, !dbg !356
  %199 = zext i32 %164 to i64, !dbg !357
  %200 = getelementptr inbounds i16, i16* %198, i64 %199, !dbg !357
  %201 = bitcast i16* %200 to i8*, !dbg !356
  %202 = zext i32 %172 to i64, !dbg !358
  %203 = getelementptr inbounds i16, i16* %198, i64 %202, !dbg !358
  %204 = bitcast i16* %203 to i8*, !dbg !359
  br label %205

; <label>:205:                                    ; preds = %177, %189, %197
  %206 = phi i32 [ 3, %177 ], [ 2, %189 ], [ 1, %197 ]
  %207 = phi i8* [ %185, %177 ], [ %196, %189 ], [ %204, %197 ], !dbg !347
  %208 = phi i8* [ %182, %177 ], [ %193, %189 ], [ %201, %197 ], !dbg !347
  %209 = shl i32 %173, %206, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %210 = zext i32 %209 to i64, !dbg !361
  %211 = call i8* @memmove(i8* %207, i8* %208, i64 %210) #4, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !364
  %212 = load i32, i32* %7, align 4, !dbg !365, !tbaa !48
  br label %213, !dbg !364

; <label>:213:                                    ; preds = %169, %205
  %214 = phi i32* [ %170, %169 ], [ %174, %205 ], !dbg !310
  %215 = phi i32 [ %164, %169 ], [ %212, %205 ], !dbg !365
  %216 = load i32, i32* %214, align 4, !dbg !310, !tbaa !48
  %217 = icmp eq i32 %216, 8, !dbg !370
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  br i1 %217, label %218, label %223, !dbg !371

; <label>:218:                                    ; preds = %213
  %219 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !372
  %220 = bitcast i8* %219 to i64*, !dbg !372
  %221 = sext i32 %215 to i64, !dbg !372
  %222 = getelementptr inbounds i64, i64* %220, i64 %221, !dbg !372
  store i64 %1, i64* %222, align 4, !dbg !373, !tbaa !171
  br label %237, !dbg !374

; <label>:223:                                    ; preds = %213
  %224 = icmp eq i32 %216, 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %224, label %225, label %231, !dbg !376

; <label>:225:                                    ; preds = %223
  %226 = trunc i64 %1 to i32, !dbg !377
  %227 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !378
  %228 = bitcast i8* %227 to i32*, !dbg !378
  %229 = sext i32 %215 to i64, !dbg !378
  %230 = getelementptr inbounds i32, i32* %228, i64 %229, !dbg !378
  store i32 %226, i32* %230, align 4, !dbg !379, !tbaa !48
  br label %237, !dbg !380

; <label>:231:                                    ; preds = %223
  %232 = trunc i64 %1 to i16, !dbg !381
  %233 = getelementptr inbounds i8, i8* %162, i64 8, !dbg !382
  %234 = bitcast i8* %233 to i16*, !dbg !382
  %235 = sext i32 %215 to i64, !dbg !382
  %236 = getelementptr inbounds i16, i16* %234, i64 %235, !dbg !382
  store i16 %232, i16* %236, align 2, !dbg !383, !tbaa !189
  br label %237

; <label>:237:                                    ; preds = %218, %225, %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  %238 = load i32, i32* %166, align 4, !dbg !385, !tbaa !48
  %239 = add i32 %238, 1, !dbg !385
  store i32 %239, i32* %166, align 4, !dbg !386, !tbaa !48
  br label %240, !dbg !387

; <label>:240:                                    ; preds = %151, %152, %237, %144
  %241 = phi %struct.intset* [ %42, %144 ], [ %163, %237 ], [ %0, %152 ], [ %0, %151 ], !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %17) #5, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  ret %struct.intset* %241, !dbg !389
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i8 @intsetSearch(%struct.intset*, i64, i32*) unnamed_addr #0 !dbg !390 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  %13 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !406
  %14 = load i32, i32* %13, align 4, !dbg !406, !tbaa !48
  %15 = add i32 %14, -1, !dbg !407
  %16 = icmp eq i32 %14, 0, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !413
  br i1 %16, label %17, label %20, !dbg !413

; <label>:17:                                     ; preds = %3
  %18 = icmp eq i32* %2, null, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %18, label %152, label %19, !dbg !417

; <label>:19:                                     ; preds = %17
  store i32 0, i32* %2, align 4, !dbg !418, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br label %152, !dbg !419

; <label>:20:                                     ; preds = %3
  %21 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !431
  %22 = load i32, i32* %21, align 4, !dbg !431, !tbaa !48
  %23 = trunc i32 %22 to i8, !dbg !431
  %24 = bitcast i64* %10 to i8*, !dbg !436
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #5, !dbg !436
  %25 = bitcast i32* %11 to i8*, !dbg !437
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %25) #5, !dbg !437
  %26 = bitcast i16* %12 to i8*, !dbg !438
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %26) #5, !dbg !438
  %27 = icmp eq i8 %23, 8, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  br i1 %27, label %28, label %36, !dbg !440

; <label>:28:                                     ; preds = %20
  %29 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !441
  %30 = bitcast i8* %29 to i64*, !dbg !442
  %31 = sext i32 %15 to i64, !dbg !443
  %32 = getelementptr inbounds i64, i64* %30, i64 %31, !dbg !443
  %33 = bitcast i64* %32 to i8*, !dbg !444
  %34 = call i8* @memcpy(i8* nonnull %24, i8* %33, i64 8) #4, !dbg !445
  %35 = load i64, i64* %10, align 8, !dbg !446, !tbaa !171
  br label %55, !dbg !448

; <label>:36:                                     ; preds = %20
  %37 = icmp eq i8 %23, 4, !dbg !449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  %38 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !451
  br i1 %37, label %39, label %47, !dbg !450

; <label>:39:                                     ; preds = %36
  %40 = bitcast i8* %38 to i32*, !dbg !452
  %41 = sext i32 %15 to i64, !dbg !453
  %42 = getelementptr inbounds i32, i32* %40, i64 %41, !dbg !453
  %43 = bitcast i32* %42 to i8*, !dbg !454
  %44 = call i8* @memcpy(i8* nonnull %25, i8* %43, i64 4) #4, !dbg !455
  %45 = load i32, i32* %11, align 4, !dbg !456, !tbaa !48
  %46 = sext i32 %45 to i64, !dbg !456
  br label %55, !dbg !458

; <label>:47:                                     ; preds = %36
  %48 = bitcast i8* %38 to i16*, !dbg !459
  %49 = sext i32 %15 to i64, !dbg !460
  %50 = getelementptr inbounds i16, i16* %48, i64 %49, !dbg !460
  %51 = bitcast i16* %50 to i8*, !dbg !461
  %52 = call i8* @memcpy(i8* nonnull %26, i8* %51, i64 2) #4, !dbg !462
  %53 = load i16, i16* %12, align 2, !dbg !463, !tbaa !189
  %54 = sext i16 %53 to i64, !dbg !463
  br label %55, !dbg !465

; <label>:55:                                     ; preds = %28, %39, %47
  %56 = phi i64 [ %35, %28 ], [ %46, %39 ], [ %54, %47 ], !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %26) #5, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %25) #5, !dbg !467
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #5, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !468
  %57 = icmp slt i64 %56, %1, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %57, label %58, label %62, !dbg !470

; <label>:58:                                     ; preds = %55
  %59 = icmp eq i32* %2, null, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %59, label %152, label %60, !dbg !474

; <label>:60:                                     ; preds = %58
  %61 = load i32, i32* %13, align 4, !dbg !475, !tbaa !48
  store i32 %61, i32* %2, align 4, !dbg !476, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br label %152, !dbg !477

; <label>:62:                                     ; preds = %55
  %63 = load i32, i32* %21, align 4, !dbg !482, !tbaa !48
  %64 = trunc i32 %63 to i8, !dbg !482
  %65 = bitcast i64* %7 to i8*, !dbg !487
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #5, !dbg !487
  %66 = bitcast i32* %8 to i8*, !dbg !488
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %66) #5, !dbg !488
  %67 = bitcast i16* %9 to i8*, !dbg !489
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %67) #5, !dbg !489
  %68 = icmp eq i8 %64, 8, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  br i1 %68, label %69, label %73, !dbg !491

; <label>:69:                                     ; preds = %62
  %70 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !492
  %71 = call i8* @memcpy(i8* nonnull %65, i8* nonnull %70, i64 8) #4, !dbg !493
  %72 = load i64, i64* %7, align 8, !dbg !494, !tbaa !171
  br label %84, !dbg !496

; <label>:73:                                     ; preds = %62
  %74 = icmp eq i8 %64, 4, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  %75 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !499
  br i1 %74, label %76, label %80, !dbg !498

; <label>:76:                                     ; preds = %73
  %77 = call i8* @memcpy(i8* nonnull %66, i8* nonnull %75, i64 4) #4, !dbg !500
  %78 = load i32, i32* %8, align 4, !dbg !501, !tbaa !48
  %79 = sext i32 %78 to i64, !dbg !501
  br label %84, !dbg !503

; <label>:80:                                     ; preds = %73
  %81 = call i8* @memcpy(i8* nonnull %67, i8* nonnull %75, i64 2) #4, !dbg !504
  %82 = load i16, i16* %9, align 2, !dbg !505, !tbaa !189
  %83 = sext i16 %82 to i64, !dbg !505
  br label %84, !dbg !507

; <label>:84:                                     ; preds = %69, %76, %80
  %85 = phi i64 [ %72, %69 ], [ %79, %76 ], [ %83, %80 ], !dbg !499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %67) #5, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %66) #5, !dbg !509
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #5, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %86 = icmp sgt i64 %85, %1, !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br i1 %86, label %97, label %87, !dbg !512

; <label>:87:                                     ; preds = %84
  %88 = icmp slt i32 %15, 0, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %88, label %142, label %89, !dbg !514

; <label>:89:                                     ; preds = %87
  %90 = bitcast i64* %4 to i8*
  %91 = bitcast i32* %5 to i8*
  %92 = bitcast i16* %6 to i8*
  %93 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0
  %94 = bitcast i8* %93 to i64*
  %95 = bitcast i8* %93 to i32*
  %96 = bitcast i8* %93 to i16*
  br label %100, !dbg !514

; <label>:97:                                     ; preds = %84
  %98 = icmp eq i32* %2, null, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  br i1 %98, label %152, label %99, !dbg !518

; <label>:99:                                     ; preds = %97
  store i32 0, i32* %2, align 4, !dbg !519, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br label %152, !dbg !520

; <label>:100:                                    ; preds = %89, %138
  %101 = phi i32 [ %15, %89 ], [ %140, %138 ]
  %102 = phi i32 [ 0, %89 ], [ %139, %138 ]
  %103 = add i32 %101, %102, !dbg !521
  %104 = lshr i32 %103, 1, !dbg !523
  %105 = load i32, i32* %21, align 4, !dbg !527, !tbaa !48
  %106 = trunc i32 %105 to i8, !dbg !527
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %90) #5, !dbg !532
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %91) #5, !dbg !533
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %92) #5, !dbg !534
  %107 = icmp eq i8 %106, 8, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %107, label %108, label %114, !dbg !536

; <label>:108:                                    ; preds = %100
  %109 = zext i32 %104 to i64, !dbg !537
  %110 = getelementptr inbounds i64, i64* %94, i64 %109, !dbg !537
  %111 = bitcast i64* %110 to i8*, !dbg !538
  %112 = call i8* @memcpy(i8* nonnull %90, i8* %111, i64 8) #4, !dbg !539
  %113 = load i64, i64* %4, align 8, !dbg !540, !tbaa !171
  br label %129, !dbg !542

; <label>:114:                                    ; preds = %100
  %115 = icmp eq i8 %106, 4, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %116 = zext i32 %104 to i64, !dbg !545
  br i1 %115, label %117, label %123, !dbg !544

; <label>:117:                                    ; preds = %114
  %118 = getelementptr inbounds i32, i32* %95, i64 %116, !dbg !546
  %119 = bitcast i32* %118 to i8*, !dbg !547
  %120 = call i8* @memcpy(i8* nonnull %91, i8* %119, i64 4) #4, !dbg !548
  %121 = load i32, i32* %5, align 4, !dbg !549, !tbaa !48
  %122 = sext i32 %121 to i64, !dbg !549
  br label %129, !dbg !551

; <label>:123:                                    ; preds = %114
  %124 = getelementptr inbounds i16, i16* %96, i64 %116, !dbg !552
  %125 = bitcast i16* %124 to i8*, !dbg !553
  %126 = call i8* @memcpy(i8* nonnull %92, i8* %125, i64 2) #4, !dbg !554
  %127 = load i16, i16* %6, align 2, !dbg !555, !tbaa !189
  %128 = sext i16 %127 to i64, !dbg !555
  br label %129, !dbg !557

; <label>:129:                                    ; preds = %108, %117, %123
  %130 = phi i64 [ %113, %108 ], [ %122, %117 ], [ %128, %123 ], !dbg !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %92) #5, !dbg !560
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %91) #5, !dbg !560
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %90) #5, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  %131 = icmp slt i64 %130, %1, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %131, label %132, label %134, !dbg !564

; <label>:132:                                    ; preds = %129
  %133 = add nuw nsw i32 %104, 1, !dbg !565
  br label %138, !dbg !567

; <label>:134:                                    ; preds = %129
  %135 = icmp sgt i64 %130, %1, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  br i1 %135, label %136, label %142, !dbg !570

; <label>:136:                                    ; preds = %134
  %137 = add nsw i32 %104, -1, !dbg !571
  br label %138

; <label>:138:                                    ; preds = %136, %132
  %139 = phi i32 [ %133, %132 ], [ %102, %136 ], !dbg !573
  %140 = phi i32 [ %101, %132 ], [ %137, %136 ], !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  %141 = icmp slt i32 %140, %139, !dbg !513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !514
  br i1 %141, label %142, label %100, !dbg !514, !llvm.loop !575

; <label>:142:                                    ; preds = %134, %138, %87
  %143 = phi i32 [ 0, %87 ], [ %139, %138 ], [ %102, %134 ], !dbg !577
  %144 = phi i32 [ -1, %87 ], [ %104, %138 ], [ %104, %134 ], !dbg !573
  %145 = phi i64 [ -1, %87 ], [ %130, %138 ], [ %130, %134 ], !dbg !573
  %146 = icmp eq i64 %145, %1, !dbg !578
  %147 = icmp ne i32* %2, null, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  br i1 %146, label %148, label %150, !dbg !583

; <label>:148:                                    ; preds = %142
  br i1 %147, label %149, label %152, !dbg !585

; <label>:149:                                    ; preds = %148
  store i32 %144, i32* %2, align 4, !dbg !587, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  br label %152, !dbg !589

; <label>:150:                                    ; preds = %142
  br i1 %147, label %151, label %152, !dbg !590

; <label>:151:                                    ; preds = %150
  store i32 %143, i32* %2, align 4, !dbg !591, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  br label %152, !dbg !592

; <label>:152:                                    ; preds = %150, %151, %148, %149, %99, %97, %60, %58, %19, %17
  %153 = phi i8 [ 0, %17 ], [ 0, %19 ], [ 0, %58 ], [ 0, %60 ], [ 0, %97 ], [ 0, %99 ], [ 1, %149 ], [ 1, %148 ], [ 0, %151 ], [ 0, %150 ], !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  ret i8 %153, !dbg !594
}

; Function Attrs: noredzone nounwind
define dso_local %struct.intset* @intsetRemove(%struct.intset*, i64, i32*) local_unnamed_addr #0 !dbg !595 {
  %4 = alloca i32, align 4
  %5 = add i64 %1, 2147483648, !dbg !613
  %6 = icmp ugt i64 %5, 4294967295, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  br i1 %6, label %7, label %8, !dbg !613

; <label>:7:                                      ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br label %12, !dbg !614

; <label>:8:                                      ; preds = %3
  %9 = add i64 %1, 32768, !dbg !615
  %10 = icmp ugt i64 %9, 65535, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  %11 = select i1 %10, i32 4, i32 2, !dbg !617
  br label %12, !dbg !617

; <label>:12:                                     ; preds = %7, %8
  %13 = phi i32 [ 8, %7 ], [ %11, %8 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  %14 = bitcast i32* %4 to i8*, !dbg !619
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #5, !dbg !619
  %15 = icmp ne i32* %2, null, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !622
  br i1 %15, label %16, label %17, !dbg !622

; <label>:16:                                     ; preds = %12
  store i32 0, i32* %2, align 4, !dbg !623, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br label %17, !dbg !624

; <label>:17:                                     ; preds = %16, %12
  %18 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !625
  %19 = load i32, i32* %18, align 4, !dbg !625, !tbaa !48
  %20 = icmp ult i32 %19, %13, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %20, label %83, label %21, !dbg !627

; <label>:21:                                     ; preds = %17
  %22 = call fastcc zeroext i8 @intsetSearch(%struct.intset* nonnull %0, i64 %1, i32* nonnull %4) #6, !dbg !629
  %23 = icmp eq i8 %22, 0, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br i1 %23, label %83, label %24, !dbg !630

; <label>:24:                                     ; preds = %21
  %25 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !631
  %26 = load i32, i32* %25, align 4, !dbg !631, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %15, label %27, label %28, !dbg !633

; <label>:27:                                     ; preds = %24
  store i32 1, i32* %2, align 4, !dbg !634, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br label %28, !dbg !636

; <label>:28:                                     ; preds = %27, %24
  %29 = load i32, i32* %4, align 4, !dbg !637, !tbaa !48
  %30 = add i32 %26, -1, !dbg !639
  %31 = icmp ult i32 %29, %30, !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  br i1 %31, label %32, label %73, !dbg !641

; <label>:32:                                     ; preds = %28
  %33 = add i32 %29, 1, !dbg !642
  %34 = load i32, i32* %25, align 4, !dbg !647, !tbaa !48
  %35 = sub i32 %34, %33, !dbg !648
  %36 = load i32, i32* %18, align 4, !dbg !650, !tbaa !48
  %37 = icmp eq i32 %36, 8, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %37, label %38, label %47, !dbg !653

; <label>:38:                                     ; preds = %32
  %39 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !654
  %40 = bitcast i8* %39 to i64*, !dbg !655
  %41 = zext i32 %33 to i64, !dbg !656
  %42 = getelementptr inbounds i64, i64* %40, i64 %41, !dbg !656
  %43 = bitcast i64* %42 to i8*, !dbg !655
  %44 = zext i32 %29 to i64, !dbg !658
  %45 = getelementptr inbounds i64, i64* %40, i64 %44, !dbg !658
  %46 = bitcast i64* %45 to i8*, !dbg !659
  br label %66, !dbg !661

; <label>:47:                                     ; preds = %32
  %48 = icmp eq i32 %36, 4, !dbg !662
  %49 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !663
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !664
  br i1 %48, label %50, label %58, !dbg !664

; <label>:50:                                     ; preds = %47
  %51 = bitcast i8* %49 to i32*, !dbg !665
  %52 = zext i32 %33 to i64, !dbg !666
  %53 = getelementptr inbounds i32, i32* %51, i64 %52, !dbg !666
  %54 = bitcast i32* %53 to i8*, !dbg !665
  %55 = zext i32 %29 to i64, !dbg !667
  %56 = getelementptr inbounds i32, i32* %51, i64 %55, !dbg !667
  %57 = bitcast i32* %56 to i8*, !dbg !668
  br label %66, !dbg !669

; <label>:58:                                     ; preds = %47
  %59 = bitcast i8* %49 to i16*, !dbg !670
  %60 = zext i32 %33 to i64, !dbg !671
  %61 = getelementptr inbounds i16, i16* %59, i64 %60, !dbg !671
  %62 = bitcast i16* %61 to i8*, !dbg !670
  %63 = zext i32 %29 to i64, !dbg !672
  %64 = getelementptr inbounds i16, i16* %59, i64 %63, !dbg !672
  %65 = bitcast i16* %64 to i8*, !dbg !673
  br label %66

; <label>:66:                                     ; preds = %38, %50, %58
  %67 = phi i32 [ 3, %38 ], [ 2, %50 ], [ 1, %58 ]
  %68 = phi i8* [ %46, %38 ], [ %57, %50 ], [ %65, %58 ], !dbg !663
  %69 = phi i8* [ %43, %38 ], [ %54, %50 ], [ %62, %58 ], !dbg !663
  %70 = shl i32 %35, %67, !dbg !674
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %71 = zext i32 %70 to i64, !dbg !675
  %72 = call i8* @memmove(i8* %68, i8* %69, i64 %71) #4, !dbg !676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %73, !dbg !678

; <label>:73:                                     ; preds = %66, %28
  %74 = load i32, i32* %18, align 4, !dbg !682, !tbaa !48
  %75 = mul i32 %74, %30, !dbg !683
  %76 = bitcast %struct.intset* %0 to i8*, !dbg !685
  %77 = zext i32 %75 to i64, !dbg !686
  %78 = add nuw nsw i64 %77, 8, !dbg !687
  %79 = call i8* @zrealloc(i8* %76, i64 %78) #4, !dbg !688
  %80 = bitcast i8* %79 to %struct.intset*, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %81 = getelementptr inbounds i8, i8* %79, i64 4, !dbg !690
  %82 = bitcast i8* %81 to i32*, !dbg !690
  store i32 %30, i32* %82, align 4, !dbg !691, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br label %83, !dbg !692

; <label>:83:                                     ; preds = %21, %17, %73
  %84 = phi %struct.intset* [ %80, %73 ], [ %0, %21 ], [ %0, %17 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #5, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  ret %struct.intset* %84, !dbg !694
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @intsetFind(%struct.intset*, i64) local_unnamed_addr #0 !dbg !695 {
  %3 = add i64 %1, 2147483648, !dbg !706
  %4 = icmp ugt i64 %3, 4294967295, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  br i1 %4, label %5, label %6, !dbg !706

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %10, !dbg !707

; <label>:6:                                      ; preds = %2
  %7 = add i64 %1, 32768, !dbg !708
  %8 = icmp ugt i64 %7, 65535, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %9 = select i1 %8, i32 4, i32 2, !dbg !710
  br label %10, !dbg !710

; <label>:10:                                     ; preds = %5, %6
  %11 = phi i32 [ 8, %5 ], [ %9, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %12 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !712
  %13 = load i32, i32* %12, align 4, !dbg !712, !tbaa !48
  %14 = icmp ult i32 %13, %11, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %14, label %19, label %15, !dbg !714

; <label>:15:                                     ; preds = %10
  %16 = tail call fastcc zeroext i8 @intsetSearch(%struct.intset* nonnull %0, i64 %1, i32* null) #6, !dbg !715
  %17 = icmp ne i8 %16, 0, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %18 = zext i1 %17 to i8
  br label %19

; <label>:19:                                     ; preds = %10, %15
  %20 = phi i8 [ 0, %10 ], [ %18, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  ret i8 %20, !dbg !716
}

; Function Attrs: noredzone nounwind
define dso_local i64 @intsetRandom(%struct.intset*) local_unnamed_addr #0 !dbg !717 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i16, align 2
  %5 = tail call i32 @rand() #4, !dbg !723
  %6 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !724
  %7 = load i32, i32* %6, align 4, !dbg !724, !tbaa !48
  %8 = urem i32 %5, %7, !dbg !725
  %9 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !729
  %10 = load i32, i32* %9, align 4, !dbg !729, !tbaa !48
  %11 = trunc i32 %10 to i8, !dbg !729
  %12 = bitcast i64* %2 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %12) #5, !dbg !734
  %13 = bitcast i32* %3 to i8*, !dbg !735
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #5, !dbg !735
  %14 = bitcast i16* %4 to i8*, !dbg !736
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %14) #5, !dbg !736
  %15 = icmp eq i8 %11, 8, !dbg !737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %15, label %16, label %24, !dbg !738

; <label>:16:                                     ; preds = %1
  %17 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !739
  %18 = bitcast i8* %17 to i64*, !dbg !740
  %19 = sext i32 %8 to i64, !dbg !741
  %20 = getelementptr inbounds i64, i64* %18, i64 %19, !dbg !741
  %21 = bitcast i64* %20 to i8*, !dbg !742
  %22 = call i8* @memcpy(i8* nonnull %12, i8* %21, i64 8) #4, !dbg !743
  %23 = load i64, i64* %2, align 8, !dbg !744, !tbaa !171
  br label %43, !dbg !746

; <label>:24:                                     ; preds = %1
  %25 = icmp eq i8 %11, 4, !dbg !747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  %26 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !749
  br i1 %25, label %27, label %35, !dbg !748

; <label>:27:                                     ; preds = %24
  %28 = bitcast i8* %26 to i32*, !dbg !750
  %29 = sext i32 %8 to i64, !dbg !751
  %30 = getelementptr inbounds i32, i32* %28, i64 %29, !dbg !751
  %31 = bitcast i32* %30 to i8*, !dbg !752
  %32 = call i8* @memcpy(i8* nonnull %13, i8* %31, i64 4) #4, !dbg !753
  %33 = load i32, i32* %3, align 4, !dbg !754, !tbaa !48
  %34 = sext i32 %33 to i64, !dbg !754
  br label %43, !dbg !756

; <label>:35:                                     ; preds = %24
  %36 = bitcast i8* %26 to i16*, !dbg !757
  %37 = sext i32 %8 to i64, !dbg !758
  %38 = getelementptr inbounds i16, i16* %36, i64 %37, !dbg !758
  %39 = bitcast i16* %38 to i8*, !dbg !759
  %40 = call i8* @memcpy(i8* nonnull %14, i8* %39, i64 2) #4, !dbg !760
  %41 = load i16, i16* %4, align 2, !dbg !761, !tbaa !189
  %42 = sext i16 %41 to i64, !dbg !761
  br label %43, !dbg !763

; <label>:43:                                     ; preds = %16, %27, %35
  %44 = phi i64 [ %23, %16 ], [ %34, %27 ], [ %42, %35 ], !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !764
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %14) #5, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #5, !dbg !765
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %12) #5, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  ret i64 %44, !dbg !767
}

; Function Attrs: noredzone
declare dso_local i32 @rand() local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @intsetGet(%struct.intset*, i32, i64* nocapture) local_unnamed_addr #0 !dbg !768 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !778
  %8 = load i32, i32* %7, align 4, !dbg !778, !tbaa !48
  %9 = icmp ugt i32 %8, %1, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !781
  br i1 %9, label %10, label %47, !dbg !781

; <label>:10:                                     ; preds = %3
  %11 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !786
  %12 = load i32, i32* %11, align 4, !dbg !786, !tbaa !48
  %13 = trunc i32 %12 to i8, !dbg !786
  %14 = bitcast i64* %4 to i8*, !dbg !791
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #5, !dbg !791
  %15 = bitcast i32* %5 to i8*, !dbg !792
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %15) #5, !dbg !792
  %16 = bitcast i16* %6 to i8*, !dbg !793
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %16) #5, !dbg !793
  %17 = icmp eq i8 %13, 8, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  br i1 %17, label %18, label %26, !dbg !795

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !796
  %20 = bitcast i8* %19 to i64*, !dbg !797
  %21 = sext i32 %1 to i64, !dbg !798
  %22 = getelementptr inbounds i64, i64* %20, i64 %21, !dbg !798
  %23 = bitcast i64* %22 to i8*, !dbg !799
  %24 = call i8* @memcpy(i8* nonnull %14, i8* %23, i64 8) #4, !dbg !800
  %25 = load i64, i64* %4, align 8, !dbg !801, !tbaa !171
  br label %45, !dbg !803

; <label>:26:                                     ; preds = %10
  %27 = icmp eq i8 %13, 4, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  %28 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 2, i64 0, !dbg !806
  br i1 %27, label %29, label %37, !dbg !805

; <label>:29:                                     ; preds = %26
  %30 = bitcast i8* %28 to i32*, !dbg !807
  %31 = sext i32 %1 to i64, !dbg !808
  %32 = getelementptr inbounds i32, i32* %30, i64 %31, !dbg !808
  %33 = bitcast i32* %32 to i8*, !dbg !809
  %34 = call i8* @memcpy(i8* nonnull %15, i8* %33, i64 4) #4, !dbg !810
  %35 = load i32, i32* %5, align 4, !dbg !811, !tbaa !48
  %36 = sext i32 %35 to i64, !dbg !811
  br label %45, !dbg !813

; <label>:37:                                     ; preds = %26
  %38 = bitcast i8* %28 to i16*, !dbg !814
  %39 = sext i32 %1 to i64, !dbg !815
  %40 = getelementptr inbounds i16, i16* %38, i64 %39, !dbg !815
  %41 = bitcast i16* %40 to i8*, !dbg !816
  %42 = call i8* @memcpy(i8* nonnull %16, i8* %41, i64 2) #4, !dbg !817
  %43 = load i16, i16* %6, align 2, !dbg !818, !tbaa !189
  %44 = sext i16 %43 to i64, !dbg !818
  br label %45, !dbg !820

; <label>:45:                                     ; preds = %18, %29, %37
  %46 = phi i64 [ %25, %18 ], [ %36, %29 ], [ %44, %37 ], !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %16) #5, !dbg !822
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %15) #5, !dbg !822
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #5, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  store i64 %46, i64* %2, align 8, !dbg !824, !tbaa !171
  br label %47, !dbg !825

; <label>:47:                                     ; preds = %3, %45
  %48 = phi i8 [ 1, %45 ], [ 0, %3 ], !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  ret i8 %48, !dbg !827
}

; Function Attrs: noredzone nounwind
define dso_local i32 @intsetLen(%struct.intset* nocapture readonly) local_unnamed_addr #0 !dbg !828 {
  %2 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !836
  %3 = load i32, i32* %2, align 4, !dbg !836, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !837
  ret i32 %3, !dbg !837
}

; Function Attrs: noredzone nounwind
define dso_local i64 @intsetBlobLen(%struct.intset* nocapture readonly) local_unnamed_addr #0 !dbg !838 {
  %2 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 1, !dbg !849
  %3 = load i32, i32* %2, align 4, !dbg !849, !tbaa !48
  %4 = getelementptr inbounds %struct.intset, %struct.intset* %0, i64 0, i32 0, !dbg !850
  %5 = load i32, i32* %4, align 4, !dbg !850, !tbaa !48
  %6 = mul i32 %5, %3, !dbg !851
  %7 = zext i32 %6 to i64, !dbg !849
  %8 = add nuw nsw i64 %7, 8, !dbg !852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  ret i64 %8, !dbg !853
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @zrealloc(i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !10, !14, !18}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !6, line: 56, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !8, line: 103, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !6, line: 44, baseType: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !8, line: 77, baseType: !13)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !6, line: 32, baseType: !16)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !8, line: 55, baseType: !17)
!17 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!18 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!19 = !{i32 2, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!23 = distinct !DISubprogram(name: "intsetNew", scope: !1, file: !1, line: 117, type: !24, isLocal: false, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !42)
!24 = !DISubroutineType(types: !25)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "intset", file: !28, line: 39, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/intset.h", directory: "/root/.unikraft/apps/redis/build")
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "intset", file: !28, line: 35, size: 64, elements: !30)
!30 = !{!31, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !29, file: !28, line: 36, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !6, line: 48, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !8, line: 79, baseType: !18)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !29, file: !28, line: 37, baseType: !32, size: 32, offset: 32)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !29, file: !28, line: 38, baseType: !36, offset: 64)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, elements: !40)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !6, line: 20, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !8, line: 41, baseType: !39)
!39 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!40 = !{!41}
!41 = !DISubrange(count: -1)
!42 = !{!43}
!43 = !DILocalVariable(name: "is", scope: !23, file: !1, line: 118, type: !26)
!44 = !DILocation(line: 118, column: 18, scope: !23)
!45 = !DILocation(line: 118, column: 13, scope: !23)
!46 = !DILocation(line: 119, column: 9, scope: !23)
!47 = !DILocation(line: 119, column: 18, scope: !23)
!48 = !{!49, !49, i64 0}
!49 = !{!"int", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 120, column: 9, scope: !23)
!53 = !DILocation(line: 120, column: 16, scope: !23)
!54 = !DILocation(line: 121, column: 5, scope: !23)
!55 = distinct !DISubprogram(name: "intsetAdd", scope: !1, file: !1, line: 224, type: !56, isLocal: false, isDefinition: true, scopeLine: 224, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !62)
!56 = !DISubroutineType(types: !57)
!57 = !{!26, !26, !5, !58}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !61)
!61 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!62 = !{!63, !64, !65, !66, !67}
!63 = !DILocalVariable(name: "is", arg: 1, scope: !55, file: !1, line: 224, type: !26)
!64 = !DILocalVariable(name: "value", arg: 2, scope: !55, file: !1, line: 224, type: !5)
!65 = !DILocalVariable(name: "success", arg: 3, scope: !55, file: !1, line: 224, type: !58)
!66 = !DILocalVariable(name: "valenc", scope: !55, file: !1, line: 225, type: !59)
!67 = !DILocalVariable(name: "pos", scope: !55, file: !1, line: 226, type: !32)
!68 = !DILocation(line: 224, column: 27, scope: !55)
!69 = !DILocation(line: 224, column: 39, scope: !55)
!70 = !DILocation(line: 224, column: 55, scope: !55)
!71 = !DILocalVariable(name: "v", arg: 1, scope: !72, file: !1, line: 65, type: !5)
!72 = distinct !DISubprogram(name: "_intsetValueEncoding", scope: !1, file: !1, line: 65, type: !73, isLocal: true, isDefinition: true, scopeLine: 65, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !75)
!73 = !DISubroutineType(types: !74)
!74 = !{!59, !5}
!75 = !{!71}
!76 = !DILocation(line: 65, column: 45, scope: !72, inlinedAt: !77)
!77 = distinct !DILocation(line: 225, column: 22, scope: !55)
!78 = !DILocation(line: 66, column: 23, scope: !79, inlinedAt: !77)
!79 = distinct !DILexicalBlock(scope: !72, file: !1, line: 66, column: 9)
!80 = !DILocation(line: 67, column: 9, scope: !79, inlinedAt: !77)
!81 = !DILocation(line: 68, column: 28, scope: !82, inlinedAt: !77)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 68, column: 14)
!83 = !DILocation(line: 0, scope: !82, inlinedAt: !77)
!84 = !DILocation(line: 69, column: 9, scope: !82, inlinedAt: !77)
!85 = !DILocation(line: 72, column: 1, scope: !72, inlinedAt: !77)
!86 = !DILocation(line: 226, column: 5, scope: !55)
!87 = !DILocation(line: 227, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !55, file: !1, line: 227, column: 9)
!89 = !DILocation(line: 227, column: 9, scope: !55)
!90 = !DILocation(line: 227, column: 27, scope: !88)
!91 = !{!50, !50, i64 0}
!92 = !DILocation(line: 227, column: 18, scope: !88)
!93 = !DILocation(line: 232, column: 18, scope: !94)
!94 = distinct !DILexicalBlock(scope: !55, file: !1, line: 232, column: 9)
!95 = !DILocation(line: 232, column: 16, scope: !94)
!96 = !DILocation(line: 232, column: 9, scope: !55)
!97 = !DILocalVariable(name: "is", arg: 1, scope: !98, file: !1, line: 177, type: !26)
!98 = distinct !DISubprogram(name: "intsetUpgradeAndAdd", scope: !1, file: !1, line: 177, type: !99, isLocal: true, isDefinition: true, scopeLine: 177, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !101)
!99 = !DISubroutineType(types: !100)
!100 = !{!26, !26, !5}
!101 = !{!97, !102, !103, !104, !105, !106}
!102 = !DILocalVariable(name: "value", arg: 2, scope: !98, file: !1, line: 177, type: !5)
!103 = !DILocalVariable(name: "curenc", scope: !98, file: !1, line: 178, type: !59)
!104 = !DILocalVariable(name: "newenc", scope: !98, file: !1, line: 179, type: !59)
!105 = !DILocalVariable(name: "length", scope: !98, file: !1, line: 180, type: !13)
!106 = !DILocalVariable(name: "prepend", scope: !98, file: !1, line: 181, type: !13)
!107 = !DILocation(line: 177, column: 44, scope: !98, inlinedAt: !108)
!108 = distinct !DILocation(line: 234, column: 16, scope: !109)
!109 = distinct !DILexicalBlock(scope: !94, file: !1, line: 232, column: 46)
!110 = !DILocation(line: 177, column: 56, scope: !98, inlinedAt: !108)
!111 = !DILocation(line: 178, column: 22, scope: !98, inlinedAt: !108)
!112 = !DILocation(line: 178, column: 13, scope: !98, inlinedAt: !108)
!113 = !DILocation(line: 65, column: 45, scope: !72, inlinedAt: !114)
!114 = distinct !DILocation(line: 179, column: 22, scope: !98, inlinedAt: !108)
!115 = !DILocation(line: 66, column: 23, scope: !79, inlinedAt: !114)
!116 = !DILocation(line: 67, column: 9, scope: !79, inlinedAt: !114)
!117 = !DILocation(line: 68, column: 28, scope: !82, inlinedAt: !114)
!118 = !DILocation(line: 0, scope: !82, inlinedAt: !114)
!119 = !DILocation(line: 69, column: 9, scope: !82, inlinedAt: !114)
!120 = !DILocation(line: 72, column: 1, scope: !72, inlinedAt: !114)
!121 = !DILocation(line: 180, column: 18, scope: !98, inlinedAt: !108)
!122 = !DILocation(line: 180, column: 9, scope: !98, inlinedAt: !108)
!123 = !DILocation(line: 181, column: 25, scope: !98, inlinedAt: !108)
!124 = !DILocation(line: 184, column: 18, scope: !98, inlinedAt: !108)
!125 = !DILocation(line: 185, column: 50, scope: !98, inlinedAt: !108)
!126 = !DILocalVariable(name: "is", arg: 1, scope: !127, file: !1, line: 125, type: !26)
!127 = distinct !DISubprogram(name: "intsetResize", scope: !1, file: !1, line: 125, type: !128, isLocal: true, isDefinition: true, scopeLine: 125, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{!26, !26, !32}
!130 = !{!126, !131, !132}
!131 = !DILocalVariable(name: "len", arg: 2, scope: !127, file: !1, line: 125, type: !32)
!132 = !DILocalVariable(name: "size", scope: !127, file: !1, line: 126, type: !32)
!133 = !DILocation(line: 125, column: 37, scope: !127, inlinedAt: !134)
!134 = distinct !DILocation(line: 185, column: 10, scope: !98, inlinedAt: !108)
!135 = !DILocation(line: 125, column: 50, scope: !127, inlinedAt: !134)
!136 = !DILocation(line: 126, column: 24, scope: !127, inlinedAt: !134)
!137 = !DILocation(line: 126, column: 14, scope: !127, inlinedAt: !134)
!138 = !DILocation(line: 127, column: 19, scope: !127, inlinedAt: !134)
!139 = !DILocation(line: 127, column: 37, scope: !127, inlinedAt: !134)
!140 = !DILocation(line: 127, column: 36, scope: !127, inlinedAt: !134)
!141 = !DILocation(line: 127, column: 10, scope: !127, inlinedAt: !134)
!142 = !DILocation(line: 128, column: 5, scope: !127, inlinedAt: !134)
!143 = !DILocation(line: 190, column: 5, scope: !98, inlinedAt: !108)
!144 = !DILocation(line: 181, column: 19, scope: !98, inlinedAt: !108)
!145 = !DILocation(line: 190, column: 17, scope: !98, inlinedAt: !108)
!146 = !DILocation(line: 191, column: 29, scope: !98, inlinedAt: !108)
!147 = !DILocalVariable(name: "is", arg: 1, scope: !148, file: !1, line: 75, type: !26)
!148 = distinct !DISubprogram(name: "_intsetGetEncoded", scope: !1, file: !1, line: 75, type: !149, isLocal: true, isDefinition: true, scopeLine: 75, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !151)
!149 = !DISubroutineType(types: !150)
!150 = !{!5, !26, !13, !59}
!151 = !{!147, !152, !153, !154, !155, !156}
!152 = !DILocalVariable(name: "pos", arg: 2, scope: !148, file: !1, line: 75, type: !13)
!153 = !DILocalVariable(name: "enc", arg: 3, scope: !148, file: !1, line: 75, type: !59)
!154 = !DILocalVariable(name: "v64", scope: !148, file: !1, line: 76, type: !5)
!155 = !DILocalVariable(name: "v32", scope: !148, file: !1, line: 77, type: !11)
!156 = !DILocalVariable(name: "v16", scope: !148, file: !1, line: 78, type: !15)
!157 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !158)
!158 = distinct !DILocation(line: 191, column: 38, scope: !98, inlinedAt: !108)
!159 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !158)
!160 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !158)
!161 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !158)
!162 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !158)
!163 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !158)
!164 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !158)
!165 = !DILocation(line: 81, column: 45, scope: !166, inlinedAt: !158)
!166 = distinct !DILexicalBlock(scope: !167, file: !1, line: 80, column: 34)
!167 = distinct !DILexicalBlock(scope: !148, file: !1, line: 80, column: 9)
!168 = !DILocation(line: 81, column: 21, scope: !166, inlinedAt: !158)
!169 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !158)
!170 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !158)
!171 = !{!172, !172, i64 0}
!172 = !{!"long", !50, i64 0}
!173 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !158)
!174 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !158)
!175 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !158)
!176 = !DILocation(line: 85, column: 45, scope: !177, inlinedAt: !158)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 84, column: 41)
!178 = distinct !DILexicalBlock(scope: !167, file: !1, line: 84, column: 16)
!179 = !DILocation(line: 85, column: 21, scope: !177, inlinedAt: !158)
!180 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !158)
!181 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !158)
!182 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !158)
!183 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !158)
!184 = !DILocation(line: 89, column: 45, scope: !185, inlinedAt: !158)
!185 = distinct !DILexicalBlock(scope: !178, file: !1, line: 88, column: 12)
!186 = !DILocation(line: 89, column: 21, scope: !185, inlinedAt: !158)
!187 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !158)
!188 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !158)
!189 = !{!190, !190, i64 0}
!190 = !{!"short", !50, i64 0}
!191 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !158)
!192 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !158)
!193 = !DILocation(line: 0, scope: !185, inlinedAt: !158)
!194 = !DILocation(line: 0, scope: !109)
!195 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !158)
!196 = !DILocalVariable(name: "is", arg: 1, scope: !197, file: !1, line: 101, type: !26)
!197 = distinct !DISubprogram(name: "_intsetSet", scope: !1, file: !1, line: 101, type: !198, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{null, !26, !13, !5}
!200 = !{!196, !201, !202, !203}
!201 = !DILocalVariable(name: "pos", arg: 2, scope: !197, file: !1, line: 101, type: !13)
!202 = !DILocalVariable(name: "value", arg: 3, scope: !197, file: !1, line: 101, type: !5)
!203 = !DILocalVariable(name: "encoding", scope: !197, file: !1, line: 102, type: !32)
!204 = !DILocation(line: 101, column: 32, scope: !197, inlinedAt: !205)
!205 = distinct !DILocation(line: 191, column: 9, scope: !98, inlinedAt: !108)
!206 = !DILocation(line: 101, column: 53, scope: !197, inlinedAt: !205)
!207 = !DILocation(line: 102, column: 25, scope: !197, inlinedAt: !205)
!208 = !DILocation(line: 102, column: 14, scope: !197, inlinedAt: !205)
!209 = !DILocation(line: 104, column: 18, scope: !210, inlinedAt: !205)
!210 = distinct !DILexicalBlock(scope: !197, file: !1, line: 104, column: 9)
!211 = !DILocation(line: 104, column: 9, scope: !197, inlinedAt: !205)
!212 = !DILocation(line: 105, column: 9, scope: !213, inlinedAt: !205)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 104, column: 39)
!214 = !DILocation(line: 105, column: 39, scope: !213, inlinedAt: !205)
!215 = !DILocation(line: 107, column: 5, scope: !213, inlinedAt: !205)
!216 = !DILocation(line: 107, column: 25, scope: !217, inlinedAt: !205)
!217 = distinct !DILexicalBlock(scope: !210, file: !1, line: 107, column: 16)
!218 = !DILocation(line: 107, column: 16, scope: !210, inlinedAt: !205)
!219 = !DILocation(line: 108, column: 41, scope: !220, inlinedAt: !205)
!220 = distinct !DILexicalBlock(scope: !217, file: !1, line: 107, column: 46)
!221 = !DILocation(line: 108, column: 9, scope: !220, inlinedAt: !205)
!222 = !DILocation(line: 108, column: 39, scope: !220, inlinedAt: !205)
!223 = !DILocation(line: 110, column: 5, scope: !220, inlinedAt: !205)
!224 = !DILocation(line: 111, column: 41, scope: !225, inlinedAt: !205)
!225 = distinct !DILexicalBlock(scope: !217, file: !1, line: 110, column: 12)
!226 = !DILocation(line: 111, column: 9, scope: !225, inlinedAt: !205)
!227 = !DILocation(line: 111, column: 39, scope: !225, inlinedAt: !205)
!228 = !DILocation(line: 114, column: 1, scope: !197, inlinedAt: !205)
!229 = distinct !{!229, !230, !231}
!230 = !DILocation(line: 190, column: 5, scope: !98)
!231 = !DILocation(line: 191, column: 73, scope: !98)
!232 = !DILocation(line: 194, column: 9, scope: !98, inlinedAt: !108)
!233 = !DILocation(line: 101, column: 32, scope: !197, inlinedAt: !234)
!234 = distinct !DILocation(line: 195, column: 9, scope: !235, inlinedAt: !108)
!235 = distinct !DILexicalBlock(scope: !98, file: !1, line: 194, column: 9)
!236 = !DILocation(line: 101, column: 40, scope: !197, inlinedAt: !234)
!237 = !DILocation(line: 101, column: 53, scope: !197, inlinedAt: !234)
!238 = !DILocation(line: 102, column: 25, scope: !197, inlinedAt: !234)
!239 = !DILocation(line: 102, column: 14, scope: !197, inlinedAt: !234)
!240 = !DILocation(line: 104, column: 18, scope: !210, inlinedAt: !234)
!241 = !DILocation(line: 104, column: 9, scope: !197, inlinedAt: !234)
!242 = !DILocation(line: 105, column: 9, scope: !213, inlinedAt: !234)
!243 = !DILocation(line: 105, column: 39, scope: !213, inlinedAt: !234)
!244 = !DILocation(line: 107, column: 5, scope: !213, inlinedAt: !234)
!245 = !DILocation(line: 107, column: 25, scope: !217, inlinedAt: !234)
!246 = !DILocation(line: 107, column: 16, scope: !210, inlinedAt: !234)
!247 = !DILocation(line: 108, column: 41, scope: !220, inlinedAt: !234)
!248 = !DILocation(line: 108, column: 9, scope: !220, inlinedAt: !234)
!249 = !DILocation(line: 108, column: 39, scope: !220, inlinedAt: !234)
!250 = !DILocation(line: 110, column: 5, scope: !220, inlinedAt: !234)
!251 = !DILocation(line: 111, column: 41, scope: !225, inlinedAt: !234)
!252 = !DILocation(line: 111, column: 9, scope: !225, inlinedAt: !234)
!253 = !DILocation(line: 111, column: 39, scope: !225, inlinedAt: !234)
!254 = !DILocation(line: 114, column: 1, scope: !197, inlinedAt: !234)
!255 = !DILocation(line: 195, column: 9, scope: !235, inlinedAt: !108)
!256 = !DILocation(line: 198, column: 18, scope: !98, inlinedAt: !108)
!257 = !DILocation(line: 197, column: 23, scope: !235, inlinedAt: !108)
!258 = !DILocation(line: 101, column: 32, scope: !197, inlinedAt: !259)
!259 = distinct !DILocation(line: 197, column: 9, scope: !235, inlinedAt: !108)
!260 = !DILocation(line: 101, column: 40, scope: !197, inlinedAt: !259)
!261 = !DILocation(line: 101, column: 53, scope: !197, inlinedAt: !259)
!262 = !DILocation(line: 102, column: 25, scope: !197, inlinedAt: !259)
!263 = !DILocation(line: 102, column: 14, scope: !197, inlinedAt: !259)
!264 = !DILocation(line: 104, column: 18, scope: !210, inlinedAt: !259)
!265 = !DILocation(line: 104, column: 9, scope: !197, inlinedAt: !259)
!266 = !DILocation(line: 105, column: 9, scope: !213, inlinedAt: !259)
!267 = !DILocation(line: 105, column: 39, scope: !213, inlinedAt: !259)
!268 = !DILocation(line: 107, column: 5, scope: !213, inlinedAt: !259)
!269 = !DILocation(line: 107, column: 25, scope: !217, inlinedAt: !259)
!270 = !DILocation(line: 107, column: 16, scope: !210, inlinedAt: !259)
!271 = !DILocation(line: 108, column: 41, scope: !220, inlinedAt: !259)
!272 = !DILocation(line: 108, column: 9, scope: !220, inlinedAt: !259)
!273 = !DILocation(line: 108, column: 39, scope: !220, inlinedAt: !259)
!274 = !DILocation(line: 110, column: 5, scope: !220, inlinedAt: !259)
!275 = !DILocation(line: 111, column: 41, scope: !225, inlinedAt: !259)
!276 = !DILocation(line: 111, column: 9, scope: !225, inlinedAt: !259)
!277 = !DILocation(line: 111, column: 39, scope: !225, inlinedAt: !259)
!278 = !DILocation(line: 114, column: 1, scope: !197, inlinedAt: !259)
!279 = !DILocation(line: 198, column: 16, scope: !98, inlinedAt: !108)
!280 = !DILocation(line: 199, column: 5, scope: !98, inlinedAt: !108)
!281 = !DILocation(line: 234, column: 9, scope: !109)
!282 = !DILocation(line: 226, column: 14, scope: !55)
!283 = !DILocation(line: 239, column: 13, scope: !284)
!284 = distinct !DILexicalBlock(scope: !285, file: !1, line: 239, column: 13)
!285 = distinct !DILexicalBlock(scope: !94, file: !1, line: 235, column: 12)
!286 = !DILocation(line: 239, column: 13, scope: !285)
!287 = !DILocation(line: 240, column: 17, scope: !288)
!288 = distinct !DILexicalBlock(scope: !284, file: !1, line: 239, column: 42)
!289 = !DILocation(line: 240, column: 35, scope: !290)
!290 = distinct !DILexicalBlock(scope: !288, file: !1, line: 240, column: 17)
!291 = !DILocation(line: 240, column: 26, scope: !290)
!292 = !DILocation(line: 244, column: 30, scope: !285)
!293 = !DILocation(line: 244, column: 54, scope: !285)
!294 = !DILocation(line: 125, column: 37, scope: !127, inlinedAt: !295)
!295 = distinct !DILocation(line: 244, column: 14, scope: !285)
!296 = !DILocation(line: 125, column: 50, scope: !127, inlinedAt: !295)
!297 = !DILocation(line: 126, column: 25, scope: !127, inlinedAt: !295)
!298 = !DILocation(line: 126, column: 24, scope: !127, inlinedAt: !295)
!299 = !DILocation(line: 126, column: 14, scope: !127, inlinedAt: !295)
!300 = !DILocation(line: 127, column: 19, scope: !127, inlinedAt: !295)
!301 = !DILocation(line: 127, column: 37, scope: !127, inlinedAt: !295)
!302 = !DILocation(line: 127, column: 36, scope: !127, inlinedAt: !295)
!303 = !DILocation(line: 127, column: 10, scope: !127, inlinedAt: !295)
!304 = !DILocation(line: 128, column: 5, scope: !127, inlinedAt: !295)
!305 = !DILocation(line: 245, column: 13, scope: !306)
!306 = distinct !DILexicalBlock(scope: !285, file: !1, line: 245, column: 13)
!307 = !DILocation(line: 245, column: 19, scope: !306)
!308 = !DILocation(line: 245, column: 17, scope: !306)
!309 = !DILocation(line: 245, column: 13, scope: !285)
!310 = !DILocation(line: 102, column: 25, scope: !197, inlinedAt: !311)
!311 = distinct !DILocation(line: 248, column: 5, scope: !55)
!312 = !DILocation(line: 245, column: 70, scope: !306)
!313 = !DILocalVariable(name: "is", arg: 1, scope: !314, file: !1, line: 202, type: !26)
!314 = distinct !DISubprogram(name: "intsetMoveTail", scope: !1, file: !1, line: 202, type: !315, isLocal: true, isDefinition: true, scopeLine: 202, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !317)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !26, !32, !32}
!317 = !{!313, !318, !319, !320, !322, !323, !324}
!318 = !DILocalVariable(name: "from", arg: 2, scope: !314, file: !1, line: 202, type: !32)
!319 = !DILocalVariable(name: "to", arg: 3, scope: !314, file: !1, line: 202, type: !32)
!320 = !DILocalVariable(name: "src", scope: !314, file: !1, line: 203, type: !321)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!322 = !DILocalVariable(name: "dst", scope: !314, file: !1, line: 203, type: !321)
!323 = !DILocalVariable(name: "bytes", scope: !314, file: !1, line: 204, type: !32)
!324 = !DILocalVariable(name: "encoding", scope: !314, file: !1, line: 205, type: !32)
!325 = !DILocation(line: 202, column: 36, scope: !314, inlinedAt: !326)
!326 = distinct !DILocation(line: 245, column: 45, scope: !306)
!327 = !DILocation(line: 202, column: 49, scope: !314, inlinedAt: !326)
!328 = !DILocation(line: 202, column: 64, scope: !314, inlinedAt: !326)
!329 = !DILocation(line: 204, column: 46, scope: !314, inlinedAt: !326)
!330 = !DILocation(line: 204, column: 14, scope: !314, inlinedAt: !326)
!331 = !DILocation(line: 205, column: 25, scope: !314, inlinedAt: !326)
!332 = !DILocation(line: 205, column: 14, scope: !314, inlinedAt: !326)
!333 = !DILocation(line: 207, column: 18, scope: !334, inlinedAt: !326)
!334 = distinct !DILexicalBlock(scope: !314, file: !1, line: 207, column: 9)
!335 = !DILocation(line: 207, column: 9, scope: !314, inlinedAt: !326)
!336 = !DILocation(line: 208, column: 25, scope: !337, inlinedAt: !326)
!337 = distinct !DILexicalBlock(scope: !334, file: !1, line: 207, column: 39)
!338 = !DILocation(line: 208, column: 15, scope: !337, inlinedAt: !326)
!339 = !DILocation(line: 208, column: 37, scope: !337, inlinedAt: !326)
!340 = !DILocation(line: 203, column: 11, scope: !314, inlinedAt: !326)
!341 = !DILocation(line: 209, column: 37, scope: !337, inlinedAt: !326)
!342 = !DILocation(line: 209, column: 15, scope: !337, inlinedAt: !326)
!343 = !DILocation(line: 203, column: 17, scope: !314, inlinedAt: !326)
!344 = !DILocation(line: 211, column: 5, scope: !337, inlinedAt: !326)
!345 = !DILocation(line: 211, column: 25, scope: !346, inlinedAt: !326)
!346 = distinct !DILexicalBlock(scope: !334, file: !1, line: 211, column: 16)
!347 = !DILocation(line: 0, scope: !348, inlinedAt: !326)
!348 = distinct !DILexicalBlock(scope: !346, file: !1, line: 215, column: 12)
!349 = !DILocation(line: 211, column: 16, scope: !334, inlinedAt: !326)
!350 = !DILocation(line: 212, column: 15, scope: !351, inlinedAt: !326)
!351 = distinct !DILexicalBlock(scope: !346, file: !1, line: 211, column: 46)
!352 = !DILocation(line: 212, column: 37, scope: !351, inlinedAt: !326)
!353 = !DILocation(line: 213, column: 37, scope: !351, inlinedAt: !326)
!354 = !DILocation(line: 213, column: 15, scope: !351, inlinedAt: !326)
!355 = !DILocation(line: 215, column: 5, scope: !351, inlinedAt: !326)
!356 = !DILocation(line: 216, column: 15, scope: !348, inlinedAt: !326)
!357 = !DILocation(line: 216, column: 37, scope: !348, inlinedAt: !326)
!358 = !DILocation(line: 217, column: 37, scope: !348, inlinedAt: !326)
!359 = !DILocation(line: 217, column: 15, scope: !348, inlinedAt: !326)
!360 = !DILocation(line: 0, scope: !306)
!361 = !DILocation(line: 220, column: 21, scope: !314, inlinedAt: !326)
!362 = !DILocation(line: 220, column: 5, scope: !314, inlinedAt: !326)
!363 = !DILocation(line: 221, column: 1, scope: !314, inlinedAt: !326)
!364 = !DILocation(line: 245, column: 45, scope: !306)
!365 = !DILocation(line: 248, column: 19, scope: !55)
!366 = !DILocation(line: 101, column: 32, scope: !197, inlinedAt: !311)
!367 = !DILocation(line: 101, column: 40, scope: !197, inlinedAt: !311)
!368 = !DILocation(line: 101, column: 53, scope: !197, inlinedAt: !311)
!369 = !DILocation(line: 102, column: 14, scope: !197, inlinedAt: !311)
!370 = !DILocation(line: 104, column: 18, scope: !210, inlinedAt: !311)
!371 = !DILocation(line: 104, column: 9, scope: !197, inlinedAt: !311)
!372 = !DILocation(line: 105, column: 9, scope: !213, inlinedAt: !311)
!373 = !DILocation(line: 105, column: 39, scope: !213, inlinedAt: !311)
!374 = !DILocation(line: 107, column: 5, scope: !213, inlinedAt: !311)
!375 = !DILocation(line: 107, column: 25, scope: !217, inlinedAt: !311)
!376 = !DILocation(line: 107, column: 16, scope: !210, inlinedAt: !311)
!377 = !DILocation(line: 108, column: 41, scope: !220, inlinedAt: !311)
!378 = !DILocation(line: 108, column: 9, scope: !220, inlinedAt: !311)
!379 = !DILocation(line: 108, column: 39, scope: !220, inlinedAt: !311)
!380 = !DILocation(line: 110, column: 5, scope: !220, inlinedAt: !311)
!381 = !DILocation(line: 111, column: 41, scope: !225, inlinedAt: !311)
!382 = !DILocation(line: 111, column: 9, scope: !225, inlinedAt: !311)
!383 = !DILocation(line: 111, column: 39, scope: !225, inlinedAt: !311)
!384 = !DILocation(line: 114, column: 1, scope: !197, inlinedAt: !311)
!385 = !DILocation(line: 249, column: 18, scope: !55)
!386 = !DILocation(line: 249, column: 16, scope: !55)
!387 = !DILocation(line: 250, column: 5, scope: !55)
!388 = !DILocation(line: 0, scope: !55)
!389 = !DILocation(line: 251, column: 1, scope: !55)
!390 = distinct !DISubprogram(name: "intsetSearch", scope: !1, file: !1, line: 135, type: !391, isLocal: true, isDefinition: true, scopeLine: 135, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !394)
!391 = !DISubroutineType(types: !392)
!392 = !{!59, !26, !5, !393}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!394 = !{!395, !396, !397, !398, !399, !400, !401}
!395 = !DILocalVariable(name: "is", arg: 1, scope: !390, file: !1, line: 135, type: !26)
!396 = !DILocalVariable(name: "value", arg: 2, scope: !390, file: !1, line: 135, type: !5)
!397 = !DILocalVariable(name: "pos", arg: 3, scope: !390, file: !1, line: 135, type: !393)
!398 = !DILocalVariable(name: "min", scope: !390, file: !1, line: 136, type: !13)
!399 = !DILocalVariable(name: "max", scope: !390, file: !1, line: 136, type: !13)
!400 = !DILocalVariable(name: "mid", scope: !390, file: !1, line: 136, type: !13)
!401 = !DILocalVariable(name: "cur", scope: !390, file: !1, line: 137, type: !5)
!402 = !DILocation(line: 135, column: 37, scope: !390)
!403 = !DILocation(line: 135, column: 49, scope: !390)
!404 = !DILocation(line: 135, column: 66, scope: !390)
!405 = !DILocation(line: 136, column: 9, scope: !390)
!406 = !DILocation(line: 136, column: 24, scope: !390)
!407 = !DILocation(line: 136, column: 48, scope: !390)
!408 = !DILocation(line: 136, column: 18, scope: !390)
!409 = !DILocation(line: 136, column: 52, scope: !390)
!410 = !DILocation(line: 137, column: 13, scope: !390)
!411 = !DILocation(line: 140, column: 34, scope: !412)
!412 = distinct !DILexicalBlock(scope: !390, file: !1, line: 140, column: 9)
!413 = !DILocation(line: 140, column: 9, scope: !390)
!414 = !DILocation(line: 141, column: 13, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !1, line: 141, column: 13)
!416 = distinct !DILexicalBlock(scope: !412, file: !1, line: 140, column: 40)
!417 = !DILocation(line: 141, column: 13, scope: !416)
!418 = !DILocation(line: 141, column: 23, scope: !415)
!419 = !DILocation(line: 141, column: 18, scope: !415)
!420 = !DILocalVariable(name: "is", arg: 1, scope: !421, file: !1, line: 96, type: !26)
!421 = distinct !DISubprogram(name: "_intsetGet", scope: !1, file: !1, line: 96, type: !422, isLocal: true, isDefinition: true, scopeLine: 96, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !424)
!422 = !DISubroutineType(types: !423)
!423 = !{!5, !26, !13}
!424 = !{!420, !425}
!425 = !DILocalVariable(name: "pos", arg: 2, scope: !421, file: !1, line: 96, type: !13)
!426 = !DILocation(line: 96, column: 35, scope: !421, inlinedAt: !427)
!427 = distinct !DILocation(line: 146, column: 21, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !1, line: 146, column: 13)
!429 = distinct !DILexicalBlock(scope: !412, file: !1, line: 143, column: 12)
!430 = !DILocation(line: 96, column: 43, scope: !421, inlinedAt: !427)
!431 = !DILocation(line: 97, column: 37, scope: !421, inlinedAt: !427)
!432 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !433)
!433 = distinct !DILocation(line: 97, column: 12, scope: !421, inlinedAt: !427)
!434 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !433)
!435 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !433)
!436 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !433)
!437 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !433)
!438 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !433)
!439 = !DILocation(line: 80, column: 13, scope: !167, inlinedAt: !433)
!440 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !433)
!441 = !DILocation(line: 81, column: 32, scope: !166, inlinedAt: !433)
!442 = !DILocation(line: 81, column: 22, scope: !166, inlinedAt: !433)
!443 = !DILocation(line: 81, column: 45, scope: !166, inlinedAt: !433)
!444 = !DILocation(line: 81, column: 21, scope: !166, inlinedAt: !433)
!445 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !433)
!446 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !433)
!447 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !433)
!448 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !433)
!449 = !DILocation(line: 84, column: 20, scope: !178, inlinedAt: !433)
!450 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !433)
!451 = !DILocation(line: 0, scope: !185, inlinedAt: !433)
!452 = !DILocation(line: 85, column: 22, scope: !177, inlinedAt: !433)
!453 = !DILocation(line: 85, column: 45, scope: !177, inlinedAt: !433)
!454 = !DILocation(line: 85, column: 21, scope: !177, inlinedAt: !433)
!455 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !433)
!456 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !433)
!457 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !433)
!458 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !433)
!459 = !DILocation(line: 89, column: 22, scope: !185, inlinedAt: !433)
!460 = !DILocation(line: 89, column: 45, scope: !185, inlinedAt: !433)
!461 = !DILocation(line: 89, column: 21, scope: !185, inlinedAt: !433)
!462 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !433)
!463 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !433)
!464 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !433)
!465 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !433)
!466 = !DILocation(line: 0, scope: !428)
!467 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !433)
!468 = !DILocation(line: 97, column: 5, scope: !421, inlinedAt: !427)
!469 = !DILocation(line: 146, column: 19, scope: !428)
!470 = !DILocation(line: 146, column: 13, scope: !429)
!471 = !DILocation(line: 147, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !1, line: 147, column: 17)
!473 = distinct !DILexicalBlock(scope: !428, file: !1, line: 146, column: 41)
!474 = !DILocation(line: 147, column: 17, scope: !473)
!475 = !DILocation(line: 147, column: 29, scope: !472)
!476 = !DILocation(line: 147, column: 27, scope: !472)
!477 = !DILocation(line: 147, column: 22, scope: !472)
!478 = !DILocation(line: 96, column: 35, scope: !421, inlinedAt: !479)
!479 = distinct !DILocation(line: 149, column: 28, scope: !480)
!480 = distinct !DILexicalBlock(scope: !428, file: !1, line: 149, column: 20)
!481 = !DILocation(line: 96, column: 43, scope: !421, inlinedAt: !479)
!482 = !DILocation(line: 97, column: 37, scope: !421, inlinedAt: !479)
!483 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !484)
!484 = distinct !DILocation(line: 97, column: 12, scope: !421, inlinedAt: !479)
!485 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !484)
!486 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !484)
!487 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !484)
!488 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !484)
!489 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !484)
!490 = !DILocation(line: 80, column: 13, scope: !167, inlinedAt: !484)
!491 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !484)
!492 = !DILocation(line: 81, column: 32, scope: !166, inlinedAt: !484)
!493 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !484)
!494 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !484)
!495 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !484)
!496 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !484)
!497 = !DILocation(line: 84, column: 20, scope: !178, inlinedAt: !484)
!498 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !484)
!499 = !DILocation(line: 0, scope: !185, inlinedAt: !484)
!500 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !484)
!501 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !484)
!502 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !484)
!503 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !484)
!504 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !484)
!505 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !484)
!506 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !484)
!507 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !484)
!508 = !DILocation(line: 0, scope: !480)
!509 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !484)
!510 = !DILocation(line: 97, column: 5, scope: !421, inlinedAt: !479)
!511 = !DILocation(line: 149, column: 26, scope: !480)
!512 = !DILocation(line: 149, column: 20, scope: !428)
!513 = !DILocation(line: 155, column: 15, scope: !390)
!514 = !DILocation(line: 155, column: 5, scope: !390)
!515 = !DILocation(line: 150, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !1, line: 150, column: 17)
!517 = distinct !DILexicalBlock(scope: !480, file: !1, line: 149, column: 46)
!518 = !DILocation(line: 150, column: 17, scope: !517)
!519 = !DILocation(line: 150, column: 27, scope: !516)
!520 = !DILocation(line: 150, column: 22, scope: !516)
!521 = !DILocation(line: 156, column: 34, scope: !522)
!522 = distinct !DILexicalBlock(scope: !390, file: !1, line: 155, column: 23)
!523 = !DILocation(line: 156, column: 55, scope: !522)
!524 = !DILocation(line: 96, column: 35, scope: !421, inlinedAt: !525)
!525 = distinct !DILocation(line: 157, column: 15, scope: !522)
!526 = !DILocation(line: 96, column: 43, scope: !421, inlinedAt: !525)
!527 = !DILocation(line: 97, column: 37, scope: !421, inlinedAt: !525)
!528 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !529)
!529 = distinct !DILocation(line: 97, column: 12, scope: !421, inlinedAt: !525)
!530 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !529)
!531 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !529)
!532 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !529)
!533 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !529)
!534 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !529)
!535 = !DILocation(line: 80, column: 13, scope: !167, inlinedAt: !529)
!536 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !529)
!537 = !DILocation(line: 81, column: 45, scope: !166, inlinedAt: !529)
!538 = !DILocation(line: 81, column: 21, scope: !166, inlinedAt: !529)
!539 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !529)
!540 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !529)
!541 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !529)
!542 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !529)
!543 = !DILocation(line: 84, column: 20, scope: !178, inlinedAt: !529)
!544 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !529)
!545 = !DILocation(line: 0, scope: !421, inlinedAt: !525)
!546 = !DILocation(line: 85, column: 45, scope: !177, inlinedAt: !529)
!547 = !DILocation(line: 85, column: 21, scope: !177, inlinedAt: !529)
!548 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !529)
!549 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !529)
!550 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !529)
!551 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !529)
!552 = !DILocation(line: 89, column: 45, scope: !185, inlinedAt: !529)
!553 = !DILocation(line: 89, column: 21, scope: !185, inlinedAt: !529)
!554 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !529)
!555 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !529)
!556 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !529)
!557 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !529)
!558 = !DILocation(line: 0, scope: !185, inlinedAt: !529)
!559 = !DILocation(line: 0, scope: !522)
!560 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !529)
!561 = !DILocation(line: 97, column: 5, scope: !421, inlinedAt: !525)
!562 = !DILocation(line: 158, column: 19, scope: !563)
!563 = distinct !DILexicalBlock(scope: !522, file: !1, line: 158, column: 13)
!564 = !DILocation(line: 158, column: 13, scope: !522)
!565 = !DILocation(line: 159, column: 22, scope: !566)
!566 = distinct !DILexicalBlock(scope: !563, file: !1, line: 158, column: 26)
!567 = !DILocation(line: 160, column: 9, scope: !566)
!568 = !DILocation(line: 160, column: 26, scope: !569)
!569 = distinct !DILexicalBlock(scope: !563, file: !1, line: 160, column: 20)
!570 = !DILocation(line: 160, column: 20, scope: !563)
!571 = !DILocation(line: 161, column: 22, scope: !572)
!572 = distinct !DILexicalBlock(scope: !569, file: !1, line: 160, column: 33)
!573 = !DILocation(line: 0, scope: !390)
!574 = !DILocation(line: 0, scope: !572)
!575 = distinct !{!575, !514, !576}
!576 = !DILocation(line: 165, column: 5, scope: !390)
!577 = !DILocation(line: 0, scope: !566)
!578 = !DILocation(line: 167, column: 15, scope: !579)
!579 = distinct !DILexicalBlock(scope: !390, file: !1, line: 167, column: 9)
!580 = !DILocation(line: 0, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !1, line: 171, column: 13)
!582 = distinct !DILexicalBlock(scope: !579, file: !1, line: 170, column: 12)
!583 = !DILocation(line: 167, column: 9, scope: !390)
!584 = !DILocation(line: 0, scope: !582)
!585 = !DILocation(line: 168, column: 13, scope: !586)
!586 = distinct !DILexicalBlock(scope: !579, file: !1, line: 167, column: 23)
!587 = !DILocation(line: 168, column: 23, scope: !588)
!588 = distinct !DILexicalBlock(scope: !586, file: !1, line: 168, column: 13)
!589 = !DILocation(line: 168, column: 18, scope: !588)
!590 = !DILocation(line: 171, column: 13, scope: !582)
!591 = !DILocation(line: 171, column: 23, scope: !581)
!592 = !DILocation(line: 171, column: 18, scope: !581)
!593 = !DILocation(line: 0, scope: !416)
!594 = !DILocation(line: 174, column: 1, scope: !390)
!595 = distinct !DISubprogram(name: "intsetRemove", scope: !1, file: !1, line: 254, type: !596, isLocal: false, isDefinition: true, scopeLine: 254, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !599)
!596 = !DISubroutineType(types: !597)
!597 = !{!26, !26, !5, !598}
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!599 = !{!600, !601, !602, !603, !604, !605}
!600 = !DILocalVariable(name: "is", arg: 1, scope: !595, file: !1, line: 254, type: !26)
!601 = !DILocalVariable(name: "value", arg: 2, scope: !595, file: !1, line: 254, type: !5)
!602 = !DILocalVariable(name: "success", arg: 3, scope: !595, file: !1, line: 254, type: !598)
!603 = !DILocalVariable(name: "valenc", scope: !595, file: !1, line: 255, type: !59)
!604 = !DILocalVariable(name: "pos", scope: !595, file: !1, line: 256, type: !32)
!605 = !DILocalVariable(name: "len", scope: !606, file: !1, line: 260, type: !32)
!606 = distinct !DILexicalBlock(scope: !607, file: !1, line: 259, column: 78)
!607 = distinct !DILexicalBlock(scope: !595, file: !1, line: 259, column: 9)
!608 = !DILocation(line: 254, column: 30, scope: !595)
!609 = !DILocation(line: 254, column: 42, scope: !595)
!610 = !DILocation(line: 254, column: 54, scope: !595)
!611 = !DILocation(line: 65, column: 45, scope: !72, inlinedAt: !612)
!612 = distinct !DILocation(line: 255, column: 22, scope: !595)
!613 = !DILocation(line: 66, column: 23, scope: !79, inlinedAt: !612)
!614 = !DILocation(line: 67, column: 9, scope: !79, inlinedAt: !612)
!615 = !DILocation(line: 68, column: 28, scope: !82, inlinedAt: !612)
!616 = !DILocation(line: 0, scope: !82, inlinedAt: !612)
!617 = !DILocation(line: 69, column: 9, scope: !82, inlinedAt: !612)
!618 = !DILocation(line: 72, column: 1, scope: !72, inlinedAt: !612)
!619 = !DILocation(line: 256, column: 5, scope: !595)
!620 = !DILocation(line: 257, column: 9, scope: !621)
!621 = distinct !DILexicalBlock(scope: !595, file: !1, line: 257, column: 9)
!622 = !DILocation(line: 257, column: 9, scope: !595)
!623 = !DILocation(line: 257, column: 27, scope: !621)
!624 = !DILocation(line: 257, column: 18, scope: !621)
!625 = !DILocation(line: 259, column: 19, scope: !607)
!626 = !DILocation(line: 259, column: 16, scope: !607)
!627 = !DILocation(line: 259, column: 46, scope: !607)
!628 = !DILocation(line: 256, column: 14, scope: !595)
!629 = !DILocation(line: 259, column: 49, scope: !607)
!630 = !DILocation(line: 259, column: 9, scope: !595)
!631 = !DILocation(line: 260, column: 24, scope: !606)
!632 = !DILocation(line: 260, column: 18, scope: !606)
!633 = !DILocation(line: 263, column: 13, scope: !606)
!634 = !DILocation(line: 263, column: 31, scope: !635)
!635 = distinct !DILexicalBlock(scope: !606, file: !1, line: 263, column: 13)
!636 = !DILocation(line: 263, column: 22, scope: !635)
!637 = !DILocation(line: 266, column: 13, scope: !638)
!638 = distinct !DILexicalBlock(scope: !606, file: !1, line: 266, column: 13)
!639 = !DILocation(line: 266, column: 23, scope: !638)
!640 = !DILocation(line: 266, column: 17, scope: !638)
!641 = !DILocation(line: 266, column: 13, scope: !606)
!642 = !DILocation(line: 266, column: 49, scope: !638)
!643 = !DILocation(line: 202, column: 36, scope: !314, inlinedAt: !644)
!644 = distinct !DILocation(line: 266, column: 28, scope: !638)
!645 = !DILocation(line: 202, column: 49, scope: !314, inlinedAt: !644)
!646 = !DILocation(line: 202, column: 64, scope: !314, inlinedAt: !644)
!647 = !DILocation(line: 204, column: 22, scope: !314, inlinedAt: !644)
!648 = !DILocation(line: 204, column: 46, scope: !314, inlinedAt: !644)
!649 = !DILocation(line: 204, column: 14, scope: !314, inlinedAt: !644)
!650 = !DILocation(line: 205, column: 25, scope: !314, inlinedAt: !644)
!651 = !DILocation(line: 205, column: 14, scope: !314, inlinedAt: !644)
!652 = !DILocation(line: 207, column: 18, scope: !334, inlinedAt: !644)
!653 = !DILocation(line: 207, column: 9, scope: !314, inlinedAt: !644)
!654 = !DILocation(line: 208, column: 25, scope: !337, inlinedAt: !644)
!655 = !DILocation(line: 208, column: 15, scope: !337, inlinedAt: !644)
!656 = !DILocation(line: 208, column: 37, scope: !337, inlinedAt: !644)
!657 = !DILocation(line: 203, column: 11, scope: !314, inlinedAt: !644)
!658 = !DILocation(line: 209, column: 37, scope: !337, inlinedAt: !644)
!659 = !DILocation(line: 209, column: 15, scope: !337, inlinedAt: !644)
!660 = !DILocation(line: 203, column: 17, scope: !314, inlinedAt: !644)
!661 = !DILocation(line: 211, column: 5, scope: !337, inlinedAt: !644)
!662 = !DILocation(line: 211, column: 25, scope: !346, inlinedAt: !644)
!663 = !DILocation(line: 0, scope: !348, inlinedAt: !644)
!664 = !DILocation(line: 211, column: 16, scope: !334, inlinedAt: !644)
!665 = !DILocation(line: 212, column: 15, scope: !351, inlinedAt: !644)
!666 = !DILocation(line: 212, column: 37, scope: !351, inlinedAt: !644)
!667 = !DILocation(line: 213, column: 37, scope: !351, inlinedAt: !644)
!668 = !DILocation(line: 213, column: 15, scope: !351, inlinedAt: !644)
!669 = !DILocation(line: 215, column: 5, scope: !351, inlinedAt: !644)
!670 = !DILocation(line: 216, column: 15, scope: !348, inlinedAt: !644)
!671 = !DILocation(line: 216, column: 37, scope: !348, inlinedAt: !644)
!672 = !DILocation(line: 217, column: 37, scope: !348, inlinedAt: !644)
!673 = !DILocation(line: 217, column: 15, scope: !348, inlinedAt: !644)
!674 = !DILocation(line: 0, scope: !638)
!675 = !DILocation(line: 220, column: 21, scope: !314, inlinedAt: !644)
!676 = !DILocation(line: 220, column: 5, scope: !314, inlinedAt: !644)
!677 = !DILocation(line: 221, column: 1, scope: !314, inlinedAt: !644)
!678 = !DILocation(line: 266, column: 28, scope: !638)
!679 = !DILocation(line: 125, column: 37, scope: !127, inlinedAt: !680)
!680 = distinct !DILocation(line: 267, column: 14, scope: !606)
!681 = !DILocation(line: 125, column: 50, scope: !127, inlinedAt: !680)
!682 = !DILocation(line: 126, column: 25, scope: !127, inlinedAt: !680)
!683 = !DILocation(line: 126, column: 24, scope: !127, inlinedAt: !680)
!684 = !DILocation(line: 126, column: 14, scope: !127, inlinedAt: !680)
!685 = !DILocation(line: 127, column: 19, scope: !127, inlinedAt: !680)
!686 = !DILocation(line: 127, column: 37, scope: !127, inlinedAt: !680)
!687 = !DILocation(line: 127, column: 36, scope: !127, inlinedAt: !680)
!688 = !DILocation(line: 127, column: 10, scope: !127, inlinedAt: !680)
!689 = !DILocation(line: 128, column: 5, scope: !127, inlinedAt: !680)
!690 = !DILocation(line: 268, column: 13, scope: !606)
!691 = !DILocation(line: 268, column: 20, scope: !606)
!692 = !DILocation(line: 269, column: 5, scope: !606)
!693 = !DILocation(line: 271, column: 1, scope: !595)
!694 = !DILocation(line: 270, column: 5, scope: !595)
!695 = distinct !DISubprogram(name: "intsetFind", scope: !1, file: !1, line: 274, type: !696, isLocal: false, isDefinition: true, scopeLine: 274, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !698)
!696 = !DISubroutineType(types: !697)
!697 = !{!59, !26, !5}
!698 = !{!699, !700, !701}
!699 = !DILocalVariable(name: "is", arg: 1, scope: !695, file: !1, line: 274, type: !26)
!700 = !DILocalVariable(name: "value", arg: 2, scope: !695, file: !1, line: 274, type: !5)
!701 = !DILocalVariable(name: "valenc", scope: !695, file: !1, line: 275, type: !59)
!702 = !DILocation(line: 274, column: 28, scope: !695)
!703 = !DILocation(line: 274, column: 40, scope: !695)
!704 = !DILocation(line: 65, column: 45, scope: !72, inlinedAt: !705)
!705 = distinct !DILocation(line: 275, column: 22, scope: !695)
!706 = !DILocation(line: 66, column: 23, scope: !79, inlinedAt: !705)
!707 = !DILocation(line: 67, column: 9, scope: !79, inlinedAt: !705)
!708 = !DILocation(line: 68, column: 28, scope: !82, inlinedAt: !705)
!709 = !DILocation(line: 0, scope: !82, inlinedAt: !705)
!710 = !DILocation(line: 69, column: 9, scope: !82, inlinedAt: !705)
!711 = !DILocation(line: 72, column: 1, scope: !72, inlinedAt: !705)
!712 = !DILocation(line: 276, column: 22, scope: !695)
!713 = !DILocation(line: 276, column: 19, scope: !695)
!714 = !DILocation(line: 276, column: 49, scope: !695)
!715 = !DILocation(line: 276, column: 52, scope: !695)
!716 = !DILocation(line: 276, column: 5, scope: !695)
!717 = distinct !DISubprogram(name: "intsetRandom", scope: !1, file: !1, line: 280, type: !718, isLocal: false, isDefinition: true, scopeLine: 280, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !720)
!718 = !DISubroutineType(types: !719)
!719 = !{!5, !26}
!720 = !{!721}
!721 = !DILocalVariable(name: "is", arg: 1, scope: !717, file: !1, line: 280, type: !26)
!722 = !DILocation(line: 280, column: 30, scope: !717)
!723 = !DILocation(line: 281, column: 26, scope: !717)
!724 = !DILocation(line: 281, column: 33, scope: !717)
!725 = !DILocation(line: 281, column: 32, scope: !717)
!726 = !DILocation(line: 96, column: 35, scope: !421, inlinedAt: !727)
!727 = distinct !DILocation(line: 281, column: 12, scope: !717)
!728 = !DILocation(line: 96, column: 43, scope: !421, inlinedAt: !727)
!729 = !DILocation(line: 97, column: 37, scope: !421, inlinedAt: !727)
!730 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !731)
!731 = distinct !DILocation(line: 97, column: 12, scope: !421, inlinedAt: !727)
!732 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !731)
!733 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !731)
!734 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !731)
!735 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !731)
!736 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !731)
!737 = !DILocation(line: 80, column: 13, scope: !167, inlinedAt: !731)
!738 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !731)
!739 = !DILocation(line: 81, column: 32, scope: !166, inlinedAt: !731)
!740 = !DILocation(line: 81, column: 22, scope: !166, inlinedAt: !731)
!741 = !DILocation(line: 81, column: 45, scope: !166, inlinedAt: !731)
!742 = !DILocation(line: 81, column: 21, scope: !166, inlinedAt: !731)
!743 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !731)
!744 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !731)
!745 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !731)
!746 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !731)
!747 = !DILocation(line: 84, column: 20, scope: !178, inlinedAt: !731)
!748 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !731)
!749 = !DILocation(line: 0, scope: !185, inlinedAt: !731)
!750 = !DILocation(line: 85, column: 22, scope: !177, inlinedAt: !731)
!751 = !DILocation(line: 85, column: 45, scope: !177, inlinedAt: !731)
!752 = !DILocation(line: 85, column: 21, scope: !177, inlinedAt: !731)
!753 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !731)
!754 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !731)
!755 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !731)
!756 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !731)
!757 = !DILocation(line: 89, column: 22, scope: !185, inlinedAt: !731)
!758 = !DILocation(line: 89, column: 45, scope: !185, inlinedAt: !731)
!759 = !DILocation(line: 89, column: 21, scope: !185, inlinedAt: !731)
!760 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !731)
!761 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !731)
!762 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !731)
!763 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !731)
!764 = !DILocation(line: 0, scope: !717)
!765 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !731)
!766 = !DILocation(line: 97, column: 5, scope: !421, inlinedAt: !727)
!767 = !DILocation(line: 281, column: 5, scope: !717)
!768 = distinct !DISubprogram(name: "intsetGet", scope: !1, file: !1, line: 286, type: !769, isLocal: false, isDefinition: true, scopeLine: 286, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !771)
!769 = !DISubroutineType(types: !770)
!770 = !{!59, !26, !32, !4}
!771 = !{!772, !773, !774}
!772 = !DILocalVariable(name: "is", arg: 1, scope: !768, file: !1, line: 286, type: !26)
!773 = !DILocalVariable(name: "pos", arg: 2, scope: !768, file: !1, line: 286, type: !32)
!774 = !DILocalVariable(name: "value", arg: 3, scope: !768, file: !1, line: 286, type: !4)
!775 = !DILocation(line: 286, column: 27, scope: !768)
!776 = !DILocation(line: 286, column: 40, scope: !768)
!777 = !DILocation(line: 286, column: 54, scope: !768)
!778 = !DILocation(line: 287, column: 15, scope: !779)
!779 = distinct !DILexicalBlock(scope: !768, file: !1, line: 287, column: 9)
!780 = !DILocation(line: 287, column: 13, scope: !779)
!781 = !DILocation(line: 287, column: 9, scope: !768)
!782 = !DILocation(line: 96, column: 35, scope: !421, inlinedAt: !783)
!783 = distinct !DILocation(line: 288, column: 18, scope: !784)
!784 = distinct !DILexicalBlock(scope: !779, file: !1, line: 287, column: 41)
!785 = !DILocation(line: 96, column: 43, scope: !421, inlinedAt: !783)
!786 = !DILocation(line: 97, column: 37, scope: !421, inlinedAt: !783)
!787 = !DILocation(line: 75, column: 42, scope: !148, inlinedAt: !788)
!788 = distinct !DILocation(line: 97, column: 12, scope: !421, inlinedAt: !783)
!789 = !DILocation(line: 75, column: 50, scope: !148, inlinedAt: !788)
!790 = !DILocation(line: 75, column: 63, scope: !148, inlinedAt: !788)
!791 = !DILocation(line: 76, column: 5, scope: !148, inlinedAt: !788)
!792 = !DILocation(line: 77, column: 5, scope: !148, inlinedAt: !788)
!793 = !DILocation(line: 78, column: 5, scope: !148, inlinedAt: !788)
!794 = !DILocation(line: 80, column: 13, scope: !167, inlinedAt: !788)
!795 = !DILocation(line: 80, column: 9, scope: !148, inlinedAt: !788)
!796 = !DILocation(line: 81, column: 32, scope: !166, inlinedAt: !788)
!797 = !DILocation(line: 81, column: 22, scope: !166, inlinedAt: !788)
!798 = !DILocation(line: 81, column: 45, scope: !166, inlinedAt: !788)
!799 = !DILocation(line: 81, column: 21, scope: !166, inlinedAt: !788)
!800 = !DILocation(line: 81, column: 9, scope: !166, inlinedAt: !788)
!801 = !DILocation(line: 83, column: 16, scope: !166, inlinedAt: !788)
!802 = !DILocation(line: 76, column: 13, scope: !148, inlinedAt: !788)
!803 = !DILocation(line: 83, column: 9, scope: !166, inlinedAt: !788)
!804 = !DILocation(line: 84, column: 20, scope: !178, inlinedAt: !788)
!805 = !DILocation(line: 84, column: 16, scope: !167, inlinedAt: !788)
!806 = !DILocation(line: 0, scope: !185, inlinedAt: !788)
!807 = !DILocation(line: 85, column: 22, scope: !177, inlinedAt: !788)
!808 = !DILocation(line: 85, column: 45, scope: !177, inlinedAt: !788)
!809 = !DILocation(line: 85, column: 21, scope: !177, inlinedAt: !788)
!810 = !DILocation(line: 85, column: 9, scope: !177, inlinedAt: !788)
!811 = !DILocation(line: 87, column: 16, scope: !177, inlinedAt: !788)
!812 = !DILocation(line: 77, column: 13, scope: !148, inlinedAt: !788)
!813 = !DILocation(line: 87, column: 9, scope: !177, inlinedAt: !788)
!814 = !DILocation(line: 89, column: 22, scope: !185, inlinedAt: !788)
!815 = !DILocation(line: 89, column: 45, scope: !185, inlinedAt: !788)
!816 = !DILocation(line: 89, column: 21, scope: !185, inlinedAt: !788)
!817 = !DILocation(line: 89, column: 9, scope: !185, inlinedAt: !788)
!818 = !DILocation(line: 91, column: 16, scope: !185, inlinedAt: !788)
!819 = !DILocation(line: 78, column: 13, scope: !148, inlinedAt: !788)
!820 = !DILocation(line: 91, column: 9, scope: !185, inlinedAt: !788)
!821 = !DILocation(line: 0, scope: !784)
!822 = !DILocation(line: 93, column: 1, scope: !148, inlinedAt: !788)
!823 = !DILocation(line: 97, column: 5, scope: !421, inlinedAt: !783)
!824 = !DILocation(line: 288, column: 16, scope: !784)
!825 = !DILocation(line: 289, column: 9, scope: !784)
!826 = !DILocation(line: 0, scope: !768)
!827 = !DILocation(line: 292, column: 1, scope: !768)
!828 = distinct !DISubprogram(name: "intsetLen", scope: !1, file: !1, line: 295, type: !829, isLocal: false, isDefinition: true, scopeLine: 295, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !833)
!829 = !DISubroutineType(types: !830)
!830 = !{!32, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!833 = !{!834}
!834 = !DILocalVariable(name: "is", arg: 1, scope: !828, file: !1, line: 295, type: !831)
!835 = !DILocation(line: 295, column: 34, scope: !828)
!836 = !DILocation(line: 296, column: 12, scope: !828)
!837 = !DILocation(line: 296, column: 5, scope: !828)
!838 = distinct !DISubprogram(name: "intsetBlobLen", scope: !1, file: !1, line: 300, type: !839, isLocal: false, isDefinition: true, scopeLine: 300, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !846)
!839 = !DISubroutineType(types: !840)
!840 = !{!841, !26}
!841 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !842, line: 40, baseType: !843)
!842 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !844, line: 129, baseType: !845)
!844 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!845 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!846 = !{!847}
!847 = !DILocalVariable(name: "is", arg: 1, scope: !838, file: !1, line: 300, type: !26)
!848 = !DILocation(line: 300, column: 30, scope: !838)
!849 = !DILocation(line: 301, column: 27, scope: !838)
!850 = !DILocation(line: 301, column: 52, scope: !838)
!851 = !DILocation(line: 301, column: 51, scope: !838)
!852 = !DILocation(line: 301, column: 26, scope: !838)
!853 = !DILocation(line: 301, column: 5, scope: !838)
