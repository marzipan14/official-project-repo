; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-hexnan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-hexnan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FPI = type { i32, i32, i32, i32, i32 }

@__hexdig = external dso_local local_unnamed_addr constant [0 x i8], align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__match(i8** nocapture, i8* nocapture readonly) local_unnamed_addr #0 !dbg !31 {
  %3 = load i8*, i8** %0, align 8, !dbg !47, !tbaa !48
  br label %4, !dbg !53

; <label>:4:                                      ; preds = %10, %2
  %5 = phi i8* [ %1, %2 ], [ %12, %10 ]
  %6 = phi i8* [ %3, %2 ], [ %9, %10 ], !dbg !54
  %7 = load i8, i8* %5, align 1, !dbg !57, !tbaa !58
  %8 = icmp eq i8 %7, 0, !dbg !59
  %9 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !54
  br i1 %8, label %20, label %10, !dbg !53

; <label>:10:                                     ; preds = %4
  %11 = sext i8 %7 to i32, !dbg !57
  %12 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !61
  %13 = load i8, i8* %9, align 1, !dbg !62, !tbaa !58
  %14 = sext i8 %13 to i32, !dbg !62
  %15 = add i8 %13, -65, !dbg !64
  %16 = icmp ult i8 %15, 26, !dbg !64
  %17 = add nsw i32 %14, 32, !dbg !65
  %18 = select i1 %16, i32 %17, i32 %14, !dbg !64
  %19 = icmp eq i32 %18, %11, !dbg !66
  br i1 %19, label %4, label %21, !dbg !68, !llvm.loop !69

; <label>:20:                                     ; preds = %4
  store i8* %9, i8** %0, align 8, !dbg !71, !tbaa !48
  br label %21, !dbg !72

; <label>:21:                                     ; preds = %10, %20
  %22 = phi i32 [ 1, %20 ], [ 0, %10 ], !dbg !73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !74
  ret i32 %22, !dbg !74
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__hexnan(i8** nocapture, %struct.FPI* nocapture readonly, i32*) local_unnamed_addr #0 !dbg !75 {
  %4 = getelementptr inbounds %struct.FPI, %struct.FPI* %1, i64 0, i32 0, !dbg !104
  %5 = load i32, i32* %4, align 4, !dbg !104, !tbaa !105
  %6 = ashr i32 %5, 5, !dbg !109
  %7 = sext i32 %6 to i64, !dbg !110
  %8 = getelementptr inbounds i32, i32* %2, i64 %7, !dbg !110
  %9 = and i32 %5, 31, !dbg !112
  %10 = icmp ne i32 %9, 0, !dbg !112
  %11 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !114
  %12 = select i1 %10, i32* %11, i32* %8, !dbg !115
  %13 = ptrtoint i32* %12 to i64
  %14 = getelementptr inbounds i32, i32* %12, i64 -1, !dbg !111
  store i32 0, i32* %14, align 4, !dbg !116, !tbaa !117
  %15 = load i8*, i8** %0, align 8, !dbg !123, !tbaa !48
  %16 = xor i64 %13, -1, !dbg !125
  br label %17, !dbg !125

; <label>:17:                                     ; preds = %111, %3
  %18 = phi i32* [ %113, %111 ], [ %14, %3 ]
  %19 = phi i64 [ %112, %111 ], [ -1, %3 ]
  %20 = phi i8* [ %53, %111 ], [ %15, %3 ]
  %21 = phi i32 [ %47, %111 ], [ 0, %3 ]
  %22 = bitcast i32* %18 to i8*
  %23 = getelementptr i8, i8* %22, i64 %16, !dbg !120
  br label %24, !dbg !120

; <label>:24:                                     ; preds = %63, %17
  %25 = phi i64 [ %19, %17 ], [ %30, %63 ]
  %26 = phi i8* [ %20, %17 ], [ %53, %63 ]
  %27 = phi i32 [ %21, %17 ], [ %47, %63 ]
  %28 = phi i32 [ 0, %17 ], [ %52, %63 ]
  br label %29, !dbg !120

; <label>:29:                                     ; preds = %24, %128
  %30 = phi i64 [ %25, %24 ], [ %131, %128 ]
  %31 = phi i8* [ %26, %24 ], [ %53, %128 ]
  %32 = phi i32 [ %27, %24 ], [ %119, %128 ]
  %33 = phi i32 [ %28, %24 ], [ %132, %128 ]
  %34 = getelementptr inbounds i32, i32* %12, i64 %30
  %35 = icmp ult i32* %34, %18
  %36 = icmp ugt i32* %34, %2
  %37 = mul i64 %30, -4, !dbg !120
  %38 = getelementptr i8, i8* %23, i64 %37, !dbg !120
  %39 = ptrtoint i8* %38 to i64
  %40 = lshr i64 %39, 2, !dbg !120
  %41 = add nuw nsw i64 %40, 1, !dbg !120
  %42 = and i64 %41, 3
  %43 = icmp eq i64 %42, 0
  %44 = icmp ult i8* %38, inttoptr (i64 12 to i8*)
  br label %45, !dbg !120

; <label>:45:                                     ; preds = %29, %122
  %46 = phi i8* [ %31, %29 ], [ %53, %122 ]
  %47 = phi i32 [ %32, %29 ], [ %119, %122 ]
  %48 = phi i32 [ %33, %29 ], [ %120, %122 ]
  %49 = icmp slt i32 %21, %47
  br label %50, !dbg !120

; <label>:50:                                     ; preds = %45, %110
  %51 = phi i8* [ %53, %110 ], [ %46, %45 ], !dbg !126
  %52 = phi i32 [ 8, %110 ], [ %48, %45 ], !dbg !127
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !135
  %54 = load i8, i8* %53, align 1, !dbg !136, !tbaa !58
  %55 = icmp eq i8 %54, 0, !dbg !125
  br i1 %55, label %137, label %56, !dbg !125

; <label>:56:                                     ; preds = %50
  %57 = zext i8 %54 to i64, !dbg !137
  %58 = getelementptr inbounds [0 x i8], [0 x i8]* @__hexdig, i64 0, i64 %57, !dbg !137
  %59 = load i8, i8* %58, align 1, !dbg !137, !tbaa !58
  %60 = icmp eq i8 %59, 0, !dbg !138
  br i1 %60, label %61, label %118, !dbg !139

; <label>:61:                                     ; preds = %56
  %62 = icmp ult i8 %54, 33, !dbg !140
  br i1 %62, label %63, label %114, !dbg !141

; <label>:63:                                     ; preds = %61
  br i1 %49, label %64, label %24, !dbg !142, !llvm.loop !143

; <label>:64:                                     ; preds = %63
  %65 = icmp slt i32 %52, 8, !dbg !145
  %66 = and i1 %35, %65, !dbg !147
  br i1 %66, label %67, label %110, !dbg !147

; <label>:67:                                     ; preds = %64
  %68 = shl i32 %52, 2, !dbg !158
  %69 = sub i32 32, %68, !dbg !158
  %70 = load i32, i32* %34, align 4, !dbg !160, !tbaa !117
  br i1 %43, label %82, label %71, !dbg !162

; <label>:71:                                     ; preds = %67, %71
  %72 = phi i32 [ %79, %71 ], [ %70, %67 ], !dbg !160
  %73 = phi i32* [ %75, %71 ], [ %34, %67 ]
  %74 = phi i64 [ %80, %71 ], [ %42, %67 ]
  %75 = getelementptr inbounds i32, i32* %73, i64 1, !dbg !163
  %76 = load i32, i32* %75, align 4, !dbg !163, !tbaa !117
  %77 = shl i32 %76, %68, !dbg !164
  %78 = or i32 %77, %72, !dbg !160
  store i32 %78, i32* %73, align 4, !dbg !160, !tbaa !117
  %79 = lshr i32 %76, %69, !dbg !165
  store i32 %79, i32* %75, align 4, !dbg !165, !tbaa !117
  %80 = add i64 %74, -1, !dbg !166
  %81 = icmp eq i64 %80, 0, !dbg !166
  br i1 %81, label %82, label %71, !dbg !166, !llvm.loop !167

; <label>:82:                                     ; preds = %71, %67
  %83 = phi i32 [ %70, %67 ], [ %79, %71 ]
  %84 = phi i32* [ %34, %67 ], [ %75, %71 ]
  br i1 %44, label %109, label %85, !dbg !162

; <label>:85:                                     ; preds = %82, %85
  %86 = phi i32 [ %107, %85 ], [ %83, %82 ], !dbg !160
  %87 = phi i32* [ %103, %85 ], [ %84, %82 ]
  %88 = getelementptr inbounds i32, i32* %87, i64 1, !dbg !163
  %89 = load i32, i32* %88, align 4, !dbg !163, !tbaa !117
  %90 = shl i32 %89, %68, !dbg !164
  %91 = or i32 %90, %86, !dbg !160
  store i32 %91, i32* %87, align 4, !dbg !160, !tbaa !117
  %92 = lshr i32 %89, %69, !dbg !165
  store i32 %92, i32* %88, align 4, !dbg !165, !tbaa !117
  %93 = getelementptr inbounds i32, i32* %87, i64 2, !dbg !163
  %94 = load i32, i32* %93, align 4, !dbg !163, !tbaa !117
  %95 = shl i32 %94, %68, !dbg !164
  %96 = or i32 %95, %92, !dbg !160
  store i32 %96, i32* %88, align 4, !dbg !160, !tbaa !117
  %97 = lshr i32 %94, %69, !dbg !165
  store i32 %97, i32* %93, align 4, !dbg !165, !tbaa !117
  %98 = getelementptr inbounds i32, i32* %87, i64 3, !dbg !163
  %99 = load i32, i32* %98, align 4, !dbg !163, !tbaa !117
  %100 = shl i32 %99, %68, !dbg !164
  %101 = or i32 %100, %97, !dbg !160
  store i32 %101, i32* %93, align 4, !dbg !160, !tbaa !117
  %102 = lshr i32 %99, %69, !dbg !165
  store i32 %102, i32* %98, align 4, !dbg !165, !tbaa !117
  %103 = getelementptr inbounds i32, i32* %87, i64 4, !dbg !163
  %104 = load i32, i32* %103, align 4, !dbg !163, !tbaa !117
  %105 = shl i32 %104, %68, !dbg !164
  %106 = or i32 %105, %102, !dbg !160
  store i32 %106, i32* %98, align 4, !dbg !160, !tbaa !117
  %107 = lshr i32 %104, %69, !dbg !165
  store i32 %107, i32* %103, align 4, !dbg !165, !tbaa !117
  %108 = icmp ult i32* %103, %18, !dbg !169
  br i1 %108, label %85, label %109, !dbg !166, !llvm.loop !170

; <label>:109:                                    ; preds = %85, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br label %110, !dbg !174

; <label>:110:                                    ; preds = %109, %64
  br i1 %36, label %111, label %50, !dbg !175, !llvm.loop !143

; <label>:111:                                    ; preds = %110
  %112 = add nsw i64 %30, -1, !dbg !176
  %113 = getelementptr inbounds i32, i32* %12, i64 %112, !dbg !111
  store i32 0, i32* %113, align 4, !dbg !177, !tbaa !117
  br label %17, !dbg !178, !llvm.loop !143

; <label>:114:                                    ; preds = %61
  %115 = icmp eq i8 %54, 41, !dbg !179
  br i1 %115, label %116, label %338, !dbg !181

; <label>:116:                                    ; preds = %114
  %117 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !182
  store i8* %117, i8** %0, align 8, !dbg !184, !tbaa !48
  br label %137, !dbg !185

; <label>:118:                                    ; preds = %56
  %119 = add nsw i32 %47, 1, !dbg !186
  %120 = add nsw i32 %52, 1, !dbg !187
  %121 = icmp sgt i32 %52, 7, !dbg !189
  br i1 %121, label %122, label %126, !dbg !190

; <label>:122:                                    ; preds = %118
  br i1 %36, label %123, label %45, !dbg !191, !llvm.loop !143

; <label>:123:                                    ; preds = %122
  %124 = add nsw i64 %30, -1, !dbg !193
  %125 = getelementptr inbounds i32, i32* %12, i64 %124, !dbg !111
  store i32 0, i32* %125, align 4, !dbg !194, !tbaa !117
  br label %128, !dbg !195

; <label>:126:                                    ; preds = %118
  %127 = load i32, i32* %34, align 4, !dbg !196, !tbaa !117
  br label %128, !dbg !120

; <label>:128:                                    ; preds = %126, %123
  %129 = phi i32* [ %34, %126 ], [ %125, %123 ], !dbg !120
  %130 = phi i32 [ %127, %126 ], [ 0, %123 ], !dbg !196
  %131 = phi i64 [ %30, %126 ], [ %124, %123 ]
  %132 = phi i32 [ %120, %126 ], [ 1, %123 ], !dbg !197
  %133 = shl i32 %130, 4, !dbg !198
  %134 = and i8 %59, 15, !dbg !199
  %135 = zext i8 %134 to i32, !dbg !199
  %136 = or i32 %133, %135, !dbg !200
  store i32 %136, i32* %129, align 4, !dbg !201, !tbaa !117
  br label %29, !dbg !125, !llvm.loop !143

; <label>:137:                                    ; preds = %50, %116
  %138 = ptrtoint i32* %34 to i64
  %139 = icmp eq i32 %47, 0, !dbg !202
  br i1 %139, label %338, label %140, !dbg !204

; <label>:140:                                    ; preds = %137
  %141 = icmp slt i32 %52, 8, !dbg !205
  %142 = and i1 %35, %141, !dbg !207
  br i1 %142, label %143, label %198, !dbg !207

; <label>:143:                                    ; preds = %140
  %144 = shl i32 %52, 2, !dbg !210
  %145 = sub i32 32, %144, !dbg !210
  %146 = load i32, i32* %34, align 4, !dbg !212, !tbaa !117
  %147 = getelementptr i32, i32* %34, i64 1, !dbg !213
  %148 = icmp ugt i32* %18, %147, !dbg !213
  %149 = select i1 %148, i32* %18, i32* %147, !dbg !213
  %150 = bitcast i32* %149 to i8*
  %151 = xor i64 %138, -1, !dbg !213
  %152 = getelementptr i8, i8* %150, i64 %151, !dbg !213
  %153 = ptrtoint i8* %152 to i64
  %154 = lshr i64 %153, 2, !dbg !213
  %155 = add nuw nsw i64 %154, 1, !dbg !213
  %156 = and i64 %155, 3, !dbg !213
  %157 = icmp eq i64 %156, 0, !dbg !213
  br i1 %157, label %169, label %158, !dbg !213

; <label>:158:                                    ; preds = %143, %158
  %159 = phi i32 [ %166, %158 ], [ %146, %143 ], !dbg !212
  %160 = phi i32* [ %162, %158 ], [ %34, %143 ]
  %161 = phi i64 [ %167, %158 ], [ %156, %143 ]
  %162 = getelementptr inbounds i32, i32* %160, i64 1, !dbg !214
  %163 = load i32, i32* %162, align 4, !dbg !214, !tbaa !117
  %164 = shl i32 %163, %144, !dbg !215
  %165 = or i32 %164, %159, !dbg !212
  store i32 %165, i32* %160, align 4, !dbg !212, !tbaa !117
  %166 = lshr i32 %163, %145, !dbg !216
  store i32 %166, i32* %162, align 4, !dbg !216, !tbaa !117
  %167 = add i64 %161, -1, !dbg !217
  %168 = icmp eq i64 %167, 0, !dbg !217
  br i1 %168, label %169, label %158, !dbg !217, !llvm.loop !218

; <label>:169:                                    ; preds = %158, %143
  %170 = phi i32 [ %146, %143 ], [ %166, %158 ]
  %171 = phi i32* [ %34, %143 ], [ %162, %158 ]
  %172 = icmp ult i8* %152, inttoptr (i64 12 to i8*), !dbg !213
  br i1 %172, label %197, label %173, !dbg !213

; <label>:173:                                    ; preds = %169, %173
  %174 = phi i32 [ %195, %173 ], [ %170, %169 ], !dbg !212
  %175 = phi i32* [ %191, %173 ], [ %171, %169 ]
  %176 = getelementptr inbounds i32, i32* %175, i64 1, !dbg !214
  %177 = load i32, i32* %176, align 4, !dbg !214, !tbaa !117
  %178 = shl i32 %177, %144, !dbg !215
  %179 = or i32 %178, %174, !dbg !212
  store i32 %179, i32* %175, align 4, !dbg !212, !tbaa !117
  %180 = lshr i32 %177, %145, !dbg !216
  store i32 %180, i32* %176, align 4, !dbg !216, !tbaa !117
  %181 = getelementptr inbounds i32, i32* %175, i64 2, !dbg !214
  %182 = load i32, i32* %181, align 4, !dbg !214, !tbaa !117
  %183 = shl i32 %182, %144, !dbg !215
  %184 = or i32 %183, %180, !dbg !212
  store i32 %184, i32* %176, align 4, !dbg !212, !tbaa !117
  %185 = lshr i32 %182, %145, !dbg !216
  store i32 %185, i32* %181, align 4, !dbg !216, !tbaa !117
  %186 = getelementptr inbounds i32, i32* %175, i64 3, !dbg !214
  %187 = load i32, i32* %186, align 4, !dbg !214, !tbaa !117
  %188 = shl i32 %187, %144, !dbg !215
  %189 = or i32 %188, %185, !dbg !212
  store i32 %189, i32* %181, align 4, !dbg !212, !tbaa !117
  %190 = lshr i32 %187, %145, !dbg !216
  store i32 %190, i32* %186, align 4, !dbg !216, !tbaa !117
  %191 = getelementptr inbounds i32, i32* %175, i64 4, !dbg !214
  %192 = load i32, i32* %191, align 4, !dbg !214, !tbaa !117
  %193 = shl i32 %192, %144, !dbg !215
  %194 = or i32 %193, %190, !dbg !212
  store i32 %194, i32* %186, align 4, !dbg !212, !tbaa !117
  %195 = lshr i32 %192, %145, !dbg !216
  store i32 %195, i32* %191, align 4, !dbg !216, !tbaa !117
  %196 = icmp ult i32* %191, %18, !dbg !219
  br i1 %196, label %173, label %197, !dbg !217, !llvm.loop !170

; <label>:197:                                    ; preds = %173, %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %198, !dbg !221

; <label>:198:                                    ; preds = %197, %140
  br i1 %36, label %199, label %319, !dbg !222

; <label>:199:                                    ; preds = %198
  %200 = icmp sgt i64 %30, -1, !dbg !111
  %201 = select i1 %200, i64 %30, i64 -1, !dbg !111
  %202 = add i64 %201, 1, !dbg !111
  %203 = sub i64 %202, %30, !dbg !111
  %204 = icmp ult i64 %203, 8, !dbg !111
  br i1 %204, label %302, label %205, !dbg !111

; <label>:205:                                    ; preds = %199
  %206 = icmp sgt i64 %30, -1, !dbg !111
  %207 = select i1 %206, i64 %30, i64 -1, !dbg !111
  %208 = add i64 %207, 1, !dbg !111
  %209 = sub i64 %208, %30, !dbg !111
  %210 = getelementptr i32, i32* %2, i64 %209, !dbg !111
  %211 = getelementptr i32, i32* %12, i64 %30, !dbg !111
  %212 = getelementptr i32, i32* %12, i64 %208, !dbg !111
  %213 = icmp ugt i32* %212, %2, !dbg !111
  %214 = icmp ult i32* %211, %210, !dbg !111
  %215 = and i1 %213, %214, !dbg !111
  br i1 %215, label %302, label %216, !dbg !111

; <label>:216:                                    ; preds = %205
  %217 = and i64 %203, -8, !dbg !111
  %218 = getelementptr i32, i32* %2, i64 %217, !dbg !111
  %219 = add i64 %30, %217, !dbg !111
  %220 = add i64 %217, -8, !dbg !111
  %221 = lshr exact i64 %220, 3, !dbg !111
  %222 = add nuw nsw i64 %221, 1, !dbg !111
  %223 = and i64 %222, 3, !dbg !111
  %224 = icmp ult i64 %220, 24, !dbg !111
  br i1 %224, label %280, label %225, !dbg !111

; <label>:225:                                    ; preds = %216
  %226 = sub nsw i64 %222, %223, !dbg !111
  br label %227, !dbg !111

; <label>:227:                                    ; preds = %227, %225
  %228 = phi i64 [ 0, %225 ], [ %277, %227 ]
  %229 = phi i64 [ %226, %225 ], [ %278, %227 ]
  %230 = getelementptr i32, i32* %2, i64 %228, !dbg !223
  %231 = add i64 %30, %228, !dbg !223
  %232 = getelementptr inbounds i32, i32* %12, i64 %231, !dbg !111
  %233 = bitcast i32* %232 to <4 x i32>*, !dbg !226
  %234 = load <4 x i32>, <4 x i32>* %233, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %235 = getelementptr inbounds i32, i32* %232, i64 4, !dbg !226
  %236 = bitcast i32* %235 to <4 x i32>*, !dbg !226
  %237 = load <4 x i32>, <4 x i32>* %236, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %238 = bitcast i32* %230 to <4 x i32>*, !dbg !230
  store <4 x i32> %234, <4 x i32>* %238, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %239 = getelementptr i32, i32* %230, i64 4, !dbg !230
  %240 = bitcast i32* %239 to <4 x i32>*, !dbg !230
  store <4 x i32> %237, <4 x i32>* %240, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %241 = or i64 %228, 8
  %242 = getelementptr i32, i32* %2, i64 %241, !dbg !223
  %243 = add i64 %30, %241, !dbg !223
  %244 = getelementptr inbounds i32, i32* %12, i64 %243, !dbg !111
  %245 = bitcast i32* %244 to <4 x i32>*, !dbg !226
  %246 = load <4 x i32>, <4 x i32>* %245, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %247 = getelementptr inbounds i32, i32* %244, i64 4, !dbg !226
  %248 = bitcast i32* %247 to <4 x i32>*, !dbg !226
  %249 = load <4 x i32>, <4 x i32>* %248, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %250 = bitcast i32* %242 to <4 x i32>*, !dbg !230
  store <4 x i32> %246, <4 x i32>* %250, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %251 = getelementptr i32, i32* %242, i64 4, !dbg !230
  %252 = bitcast i32* %251 to <4 x i32>*, !dbg !230
  store <4 x i32> %249, <4 x i32>* %252, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %253 = or i64 %228, 16
  %254 = getelementptr i32, i32* %2, i64 %253, !dbg !223
  %255 = add i64 %30, %253, !dbg !223
  %256 = getelementptr inbounds i32, i32* %12, i64 %255, !dbg !111
  %257 = bitcast i32* %256 to <4 x i32>*, !dbg !226
  %258 = load <4 x i32>, <4 x i32>* %257, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %259 = getelementptr inbounds i32, i32* %256, i64 4, !dbg !226
  %260 = bitcast i32* %259 to <4 x i32>*, !dbg !226
  %261 = load <4 x i32>, <4 x i32>* %260, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %262 = bitcast i32* %254 to <4 x i32>*, !dbg !230
  store <4 x i32> %258, <4 x i32>* %262, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %263 = getelementptr i32, i32* %254, i64 4, !dbg !230
  %264 = bitcast i32* %263 to <4 x i32>*, !dbg !230
  store <4 x i32> %261, <4 x i32>* %264, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %265 = or i64 %228, 24
  %266 = getelementptr i32, i32* %2, i64 %265, !dbg !223
  %267 = add i64 %30, %265, !dbg !223
  %268 = getelementptr inbounds i32, i32* %12, i64 %267, !dbg !111
  %269 = bitcast i32* %268 to <4 x i32>*, !dbg !226
  %270 = load <4 x i32>, <4 x i32>* %269, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %271 = getelementptr inbounds i32, i32* %268, i64 4, !dbg !226
  %272 = bitcast i32* %271 to <4 x i32>*, !dbg !226
  %273 = load <4 x i32>, <4 x i32>* %272, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %274 = bitcast i32* %266 to <4 x i32>*, !dbg !230
  store <4 x i32> %270, <4 x i32>* %274, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %275 = getelementptr i32, i32* %266, i64 4, !dbg !230
  %276 = bitcast i32* %275 to <4 x i32>*, !dbg !230
  store <4 x i32> %273, <4 x i32>* %276, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %277 = add i64 %228, 32
  %278 = add i64 %229, -4
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %280, label %227, !llvm.loop !233

; <label>:280:                                    ; preds = %227, %216
  %281 = phi i64 [ 0, %216 ], [ %277, %227 ]
  %282 = icmp eq i64 %223, 0
  br i1 %282, label %300, label %283

; <label>:283:                                    ; preds = %280, %283
  %284 = phi i64 [ %297, %283 ], [ %281, %280 ]
  %285 = phi i64 [ %298, %283 ], [ %223, %280 ]
  %286 = getelementptr i32, i32* %2, i64 %284, !dbg !223
  %287 = add i64 %30, %284, !dbg !223
  %288 = getelementptr inbounds i32, i32* %12, i64 %287, !dbg !111
  %289 = bitcast i32* %288 to <4 x i32>*, !dbg !226
  %290 = load <4 x i32>, <4 x i32>* %289, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %291 = getelementptr inbounds i32, i32* %288, i64 4, !dbg !226
  %292 = bitcast i32* %291 to <4 x i32>*, !dbg !226
  %293 = load <4 x i32>, <4 x i32>* %292, align 4, !dbg !226, !tbaa !117, !alias.scope !227
  %294 = bitcast i32* %286 to <4 x i32>*, !dbg !230
  store <4 x i32> %290, <4 x i32>* %294, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %295 = getelementptr i32, i32* %286, i64 4, !dbg !230
  %296 = bitcast i32* %295 to <4 x i32>*, !dbg !230
  store <4 x i32> %293, <4 x i32>* %296, align 4, !dbg !230, !tbaa !117, !alias.scope !231, !noalias !227
  %297 = add i64 %284, 8
  %298 = add i64 %285, -1
  %299 = icmp eq i64 %298, 0
  br i1 %299, label %300, label %283, !llvm.loop !237

; <label>:300:                                    ; preds = %283, %280
  %301 = icmp eq i64 %203, %217
  br i1 %301, label %313, label %302, !dbg !111

; <label>:302:                                    ; preds = %300, %205, %199
  %303 = phi i32* [ %2, %205 ], [ %2, %199 ], [ %218, %300 ]
  %304 = phi i64 [ %30, %205 ], [ %30, %199 ], [ %219, %300 ]
  br label %305, !dbg !111

; <label>:305:                                    ; preds = %302, %305
  %306 = phi i32* [ %311, %305 ], [ %303, %302 ], !dbg !223
  %307 = phi i64 [ %309, %305 ], [ %304, %302 ]
  %308 = getelementptr inbounds i32, i32* %12, i64 %307, !dbg !111
  %309 = add nsw i64 %307, 1, !dbg !238
  %310 = load i32, i32* %308, align 4, !dbg !226, !tbaa !117
  %311 = getelementptr inbounds i32, i32* %306, i64 1, !dbg !239
  store i32 %310, i32* %306, align 4, !dbg !230, !tbaa !117
  %312 = icmp slt i64 %307, -1, !dbg !240
  br i1 %312, label %305, label %313, !dbg !241, !llvm.loop !242

; <label>:313:                                    ; preds = %305, %300
  %314 = phi i32* [ %218, %300 ], [ %311, %305 ]
  br label %315, !dbg !243

; <label>:315:                                    ; preds = %313, %315
  %316 = phi i32* [ %317, %315 ], [ %314, %313 ], !dbg !223
  %317 = getelementptr inbounds i32, i32* %316, i64 1, !dbg !243
  store i32 0, i32* %316, align 4, !dbg !244, !tbaa !117
  %318 = icmp ugt i32* %317, %14, !dbg !245
  br i1 %318, label %325, label %315, !dbg !246, !llvm.loop !247

; <label>:319:                                    ; preds = %198
  br i1 %10, label %320, label %325, !dbg !250

; <label>:320:                                    ; preds = %319
  %321 = sub nsw i32 32, %9, !dbg !252
  %322 = lshr i32 -1, %321, !dbg !254
  %323 = load i32, i32* %14, align 4, !dbg !255, !tbaa !117
  %324 = and i32 %323, %322, !dbg !255
  store i32 %324, i32* %14, align 4, !dbg !255, !tbaa !117
  br label %327, !dbg !256

; <label>:325:                                    ; preds = %315, %319
  %326 = load i32, i32* %14, align 4, !dbg !257, !tbaa !117
  br label %327, !dbg !257

; <label>:327:                                    ; preds = %325, %320
  %328 = phi i32 [ %326, %325 ], [ %324, %320 ], !dbg !257
  %329 = icmp eq i32 %328, 0, !dbg !262
  br i1 %329, label %330, label %338, !dbg !263

; <label>:330:                                    ; preds = %327, %334
  %331 = phi i32* [ %335, %334 ], [ %14, %327 ]
  %332 = icmp eq i32* %331, %2, !dbg !264
  br i1 %332, label %333, label %334, !dbg !266

; <label>:333:                                    ; preds = %330
  store i32 1, i32* %2, align 4, !dbg !267, !tbaa !117
  br label %338, !dbg !269

; <label>:334:                                    ; preds = %330
  %335 = getelementptr inbounds i32, i32* %331, i64 -1, !dbg !270
  %336 = load i32, i32* %335, align 4, !dbg !257, !tbaa !117
  %337 = icmp eq i32 %336, 0, !dbg !262
  br i1 %337, label %330, label %338, !dbg !263, !llvm.loop !271

; <label>:338:                                    ; preds = %334, %327, %333, %137, %114
  %339 = phi i32 [ 4, %114 ], [ 4, %137 ], [ 5, %333 ], [ 5, %327 ], [ 5, %334 ], !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  ret i32 %339, !dbg !275
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!27, !28, !29}
!llvm.ident = !{!30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !21)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-hexnan.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !4, line: 36, baseType: !5, size: 32, elements: !6)
!4 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa.h", directory: "/root/.unikraft/apps/redis/build")
!5 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!6 = !{!7, !8, !9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!7 = !DIEnumerator(name: "STRTOG_Zero", value: 0, isUnsigned: true)
!8 = !DIEnumerator(name: "STRTOG_Normal", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "STRTOG_Denormal", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "STRTOG_Infinite", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "STRTOG_NaN", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "STRTOG_NaNbits", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "STRTOG_NoNumber", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "STRTOG_Retmask", value: 7, isUnsigned: true)
!15 = !DIEnumerator(name: "STRTOG_Neg", value: 8, isUnsigned: true)
!16 = !DIEnumerator(name: "STRTOG_Inexlo", value: 16, isUnsigned: true)
!17 = !DIEnumerator(name: "STRTOG_Inexhi", value: 32, isUnsigned: true)
!18 = !DIEnumerator(name: "STRTOG_Inexact", value: 48, isUnsigned: true)
!19 = !DIEnumerator(name: "STRTOG_Underflow", value: 64, isUnsigned: true)
!20 = !DIEnumerator(name: "STRTOG_Overflow", value: 128, isUnsigned: true)
!21 = !{!22, !25}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !5)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{i32 2, !"Dwarf Version", i32 4}
!28 = !{i32 2, !"Debug Info Version", i32 3}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!31 = distinct !DISubprogram(name: "__match", scope: !1, file: !1, line: 48, type: !32, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !40)
!32 = !DISubroutineType(types: !33)
!33 = !{!34, !35, !39}
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!40 = !{!41, !42, !43, !44, !45}
!41 = !DILocalVariable(name: "sp", arg: 1, scope: !31, file: !1, line: 48, type: !35)
!42 = !DILocalVariable(name: "t", arg: 2, scope: !31, file: !1, line: 48, type: !39)
!43 = !DILocalVariable(name: "c", scope: !31, file: !1, line: 52, type: !34)
!44 = !DILocalVariable(name: "d", scope: !31, file: !1, line: 52, type: !34)
!45 = !DILocalVariable(name: "s", scope: !31, file: !1, line: 53, type: !36)
!46 = !DILocation(line: 48, column: 1, scope: !31)
!47 = !DILocation(line: 53, column: 19, scope: !31)
!48 = !{!49, !49, i64 0}
!49 = !{!"any pointer", !50, i64 0}
!50 = !{!"omnipotent char", !51, i64 0}
!51 = !{!"Simple C/C++ TBAA"}
!52 = !DILocation(line: 53, column: 15, scope: !31)
!53 = !DILocation(line: 55, column: 2, scope: !31)
!54 = !DILocation(line: 0, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 56, column: 7)
!56 = distinct !DILexicalBlock(scope: !31, file: !1, line: 55, column: 25)
!57 = !DILocation(line: 55, column: 14, scope: !31)
!58 = !{!50, !50, i64 0}
!59 = !DILocation(line: 55, column: 20, scope: !31)
!60 = !DILocation(line: 52, column: 9, scope: !31)
!61 = !DILocation(line: 55, column: 16, scope: !31)
!62 = !DILocation(line: 56, column: 12, scope: !55)
!63 = !DILocation(line: 52, column: 6, scope: !31)
!64 = !DILocation(line: 56, column: 25, scope: !55)
!65 = !DILocation(line: 57, column: 6, scope: !55)
!66 = !DILocation(line: 58, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !56, file: !1, line: 58, column: 7)
!68 = !DILocation(line: 58, column: 7, scope: !56)
!69 = distinct !{!69, !53, !70}
!70 = !DILocation(line: 60, column: 3, scope: !31)
!71 = !DILocation(line: 61, column: 6, scope: !31)
!72 = !DILocation(line: 62, column: 2, scope: !31)
!73 = !DILocation(line: 0, scope: !31)
!74 = !DILocation(line: 63, column: 1, scope: !31)
!75 = distinct !DISubprogram(name: "__hexnan", scope: !1, file: !1, line: 83, type: !76, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !89)
!76 = !DISubroutineType(types: !77)
!77 = !{!34, !35, !78, !88}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "FPI", file: !4, line: 63, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPI", file: !4, line: 57, size: 160, elements: !82)
!82 = !{!83, !84, !85, !86, !87}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !81, file: !4, line: 58, baseType: !34, size: 32)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !81, file: !4, line: 59, baseType: !34, size: 32, offset: 32)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !81, file: !4, line: 60, baseType: !34, size: 32, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "rounding", scope: !81, file: !4, line: 61, baseType: !34, size: 32, offset: 96)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "sudden_underflow", scope: !81, file: !4, line: 62, baseType: !34, size: 32, offset: 128)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!89 = !{!90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102}
!90 = !DILocalVariable(name: "sp", arg: 1, scope: !75, file: !1, line: 83, type: !35)
!91 = !DILocalVariable(name: "fpi", arg: 2, scope: !75, file: !1, line: 83, type: !78)
!92 = !DILocalVariable(name: "x0", arg: 3, scope: !75, file: !1, line: 83, type: !88)
!93 = !DILocalVariable(name: "c", scope: !75, file: !1, line: 88, type: !25)
!94 = !DILocalVariable(name: "h", scope: !75, file: !1, line: 88, type: !25)
!95 = !DILocalVariable(name: "x", scope: !75, file: !1, line: 88, type: !88)
!96 = !DILocalVariable(name: "x1", scope: !75, file: !1, line: 88, type: !88)
!97 = !DILocalVariable(name: "xe", scope: !75, file: !1, line: 88, type: !88)
!98 = !DILocalVariable(name: "s", scope: !75, file: !1, line: 89, type: !36)
!99 = !DILocalVariable(name: "havedig", scope: !75, file: !1, line: 90, type: !34)
!100 = !DILocalVariable(name: "hd0", scope: !75, file: !1, line: 90, type: !34)
!101 = !DILocalVariable(name: "i", scope: !75, file: !1, line: 90, type: !34)
!102 = !DILocalVariable(name: "nbits", scope: !75, file: !1, line: 90, type: !34)
!103 = !DILocation(line: 83, column: 1, scope: !75)
!104 = !DILocation(line: 92, column: 15, scope: !75)
!105 = !{!106, !107, i64 0}
!106 = !{!"FPI", !107, i64 0, !107, i64 4, !107, i64 8, !107, i64 12, !107, i64 16}
!107 = !{!"int", !50, i64 0}
!108 = !DILocation(line: 90, column: 23, scope: !75)
!109 = !DILocation(line: 93, column: 18, scope: !75)
!110 = !DILocation(line: 93, column: 9, scope: !75)
!111 = !DILocation(line: 88, column: 17, scope: !75)
!112 = !DILocation(line: 94, column: 12, scope: !113)
!113 = distinct !DILexicalBlock(scope: !75, file: !1, line: 94, column: 6)
!114 = !DILocation(line: 95, column: 4, scope: !113)
!115 = !DILocation(line: 94, column: 6, scope: !75)
!116 = !DILocation(line: 96, column: 7, scope: !75)
!117 = !{!107, !107, i64 0}
!118 = !DILocation(line: 88, column: 26, scope: !75)
!119 = !DILocation(line: 88, column: 21, scope: !75)
!120 = !DILocation(line: 90, column: 20, scope: !75)
!121 = !DILocation(line: 90, column: 15, scope: !75)
!122 = !DILocation(line: 90, column: 6, scope: !75)
!123 = !DILocation(line: 99, column: 6, scope: !75)
!124 = !DILocation(line: 89, column: 15, scope: !75)
!125 = !DILocation(line: 100, column: 2, scope: !75)
!126 = !DILocation(line: 0, scope: !75)
!127 = !DILocation(line: 0, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 103, column: 24)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 103, column: 9)
!130 = distinct !DILexicalBlock(scope: !131, file: !1, line: 102, column: 18)
!131 = distinct !DILexicalBlock(scope: !132, file: !1, line: 102, column: 8)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 101, column: 31)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 101, column: 7)
!134 = distinct !DILexicalBlock(scope: !75, file: !1, line: 100, column: 43)
!135 = !DILocation(line: 100, column: 37, scope: !75)
!136 = !DILocation(line: 100, column: 13, scope: !75)
!137 = !DILocation(line: 101, column: 13, scope: !133)
!138 = !DILocation(line: 101, column: 11, scope: !133)
!139 = !DILocation(line: 101, column: 7, scope: !134)
!140 = !DILocation(line: 102, column: 10, scope: !131)
!141 = !DILocation(line: 102, column: 8, scope: !132)
!142 = !DILocation(line: 103, column: 9, scope: !130)
!143 = distinct !{!143, !125, !144}
!144 = !DILocation(line: 131, column: 3, scope: !75)
!145 = !DILocation(line: 104, column: 22, scope: !146)
!146 = distinct !DILexicalBlock(scope: !128, file: !1, line: 104, column: 10)
!147 = !DILocation(line: 104, column: 17, scope: !146)
!148 = !DILocalVariable(name: "x", arg: 1, scope: !149, file: !1, line: 66, type: !88)
!149 = distinct !DISubprogram(name: "L_shift", scope: !1, file: !1, line: 66, type: !150, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !152)
!150 = !DISubroutineType(types: !151)
!151 = !{null, !88, !88, !34}
!152 = !{!148, !153, !154, !155}
!153 = !DILocalVariable(name: "x1", arg: 2, scope: !149, file: !1, line: 66, type: !88)
!154 = !DILocalVariable(name: "i", arg: 3, scope: !149, file: !1, line: 66, type: !34)
!155 = !DILocalVariable(name: "j", scope: !149, file: !1, line: 71, type: !34)
!156 = !DILocation(line: 66, column: 1, scope: !149, inlinedAt: !157)
!157 = distinct !DILocation(line: 105, column: 7, scope: !146)
!158 = !DILocation(line: 74, column: 4, scope: !149, inlinedAt: !157)
!159 = !DILocation(line: 71, column: 6, scope: !149, inlinedAt: !157)
!160 = !DILocation(line: 77, column: 6, scope: !161, inlinedAt: !157)
!161 = distinct !DILexicalBlock(scope: !149, file: !1, line: 76, column: 5)
!162 = !DILocation(line: 76, column: 2, scope: !149, inlinedAt: !157)
!163 = !DILocation(line: 77, column: 9, scope: !161, inlinedAt: !157)
!164 = !DILocation(line: 77, column: 14, scope: !161, inlinedAt: !157)
!165 = !DILocation(line: 78, column: 8, scope: !161, inlinedAt: !157)
!166 = !DILocation(line: 79, column: 3, scope: !161, inlinedAt: !157)
!167 = distinct !{!167, !168}
!168 = !{!"llvm.loop.unroll.disable"}
!169 = !DILocation(line: 79, column: 15, scope: !149, inlinedAt: !157)
!170 = distinct !{!170, !171, !172}
!171 = !DILocation(line: 76, column: 2, scope: !149)
!172 = !DILocation(line: 79, column: 19, scope: !149)
!173 = !DILocation(line: 80, column: 1, scope: !149, inlinedAt: !157)
!174 = !DILocation(line: 105, column: 7, scope: !146)
!175 = !DILocation(line: 106, column: 10, scope: !128)
!176 = !DILocation(line: 111, column: 7, scope: !128)
!177 = !DILocation(line: 111, column: 11, scope: !128)
!178 = !DILocation(line: 114, column: 6, scope: !128)
!179 = !DILocation(line: 117, column: 16, scope: !180)
!180 = distinct !DILexicalBlock(scope: !132, file: !1, line: 117, column: 14)
!181 = !DILocation(line: 117, column: 14, scope: !132)
!182 = !DILocation(line: 118, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !1, line: 117, column: 24)
!184 = !DILocation(line: 118, column: 9, scope: !183)
!185 = !DILocation(line: 119, column: 5, scope: !183)
!186 = !DILocation(line: 123, column: 10, scope: !134)
!187 = !DILocation(line: 124, column: 7, scope: !188)
!188 = distinct !DILexicalBlock(scope: !134, file: !1, line: 124, column: 7)
!189 = !DILocation(line: 124, column: 11, scope: !188)
!190 = !DILocation(line: 124, column: 7, scope: !134)
!191 = !DILocation(line: 125, column: 8, scope: !192)
!192 = distinct !DILexicalBlock(scope: !188, file: !1, line: 124, column: 16)
!193 = !DILocation(line: 128, column: 5, scope: !192)
!194 = !DILocation(line: 128, column: 9, scope: !192)
!195 = !DILocation(line: 129, column: 4, scope: !192)
!196 = !DILocation(line: 130, column: 10, scope: !134)
!197 = !DILocation(line: 0, scope: !188)
!198 = !DILocation(line: 130, column: 13, scope: !134)
!199 = !DILocation(line: 130, column: 24, scope: !134)
!200 = !DILocation(line: 130, column: 19, scope: !134)
!201 = !DILocation(line: 130, column: 6, scope: !134)
!202 = !DILocation(line: 132, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !75, file: !1, line: 132, column: 6)
!204 = !DILocation(line: 132, column: 6, scope: !75)
!205 = !DILocation(line: 134, column: 18, scope: !206)
!206 = distinct !DILexicalBlock(scope: !75, file: !1, line: 134, column: 6)
!207 = !DILocation(line: 134, column: 13, scope: !206)
!208 = !DILocation(line: 66, column: 1, scope: !149, inlinedAt: !209)
!209 = distinct !DILocation(line: 135, column: 3, scope: !206)
!210 = !DILocation(line: 74, column: 4, scope: !149, inlinedAt: !209)
!211 = !DILocation(line: 71, column: 6, scope: !149, inlinedAt: !209)
!212 = !DILocation(line: 77, column: 6, scope: !161, inlinedAt: !209)
!213 = !DILocation(line: 76, column: 2, scope: !149, inlinedAt: !209)
!214 = !DILocation(line: 77, column: 9, scope: !161, inlinedAt: !209)
!215 = !DILocation(line: 77, column: 14, scope: !161, inlinedAt: !209)
!216 = !DILocation(line: 78, column: 8, scope: !161, inlinedAt: !209)
!217 = !DILocation(line: 79, column: 3, scope: !161, inlinedAt: !209)
!218 = distinct !{!218, !168}
!219 = !DILocation(line: 79, column: 15, scope: !149, inlinedAt: !209)
!220 = !DILocation(line: 80, column: 1, scope: !149, inlinedAt: !209)
!221 = !DILocation(line: 135, column: 3, scope: !206)
!222 = !DILocation(line: 136, column: 6, scope: !75)
!223 = !DILocation(line: 0, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !1, line: 136, column: 14)
!225 = distinct !DILexicalBlock(scope: !75, file: !1, line: 136, column: 6)
!226 = !DILocation(line: 138, column: 14, scope: !224)
!227 = !{!228}
!228 = distinct !{!228, !229}
!229 = distinct !{!229, !"LVerDomain"}
!230 = !DILocation(line: 138, column: 12, scope: !224)
!231 = !{!232}
!232 = distinct !{!232, !229}
!233 = distinct !{!233, !234, !235, !236}
!234 = !DILocation(line: 138, column: 3, scope: !224)
!235 = !DILocation(line: 139, column: 17, scope: !224)
!236 = !{!"llvm.loop.isvectorized", i32 1}
!237 = distinct !{!237, !168}
!238 = !DILocation(line: 138, column: 16, scope: !224)
!239 = !DILocation(line: 138, column: 9, scope: !224)
!240 = !DILocation(line: 139, column: 12, scope: !224)
!241 = !DILocation(line: 138, column: 6, scope: !224)
!242 = distinct !{!242, !234, !235, !236}
!243 = !DILocation(line: 140, column: 9, scope: !224)
!244 = !DILocation(line: 140, column: 12, scope: !224)
!245 = !DILocation(line: 141, column: 13, scope: !224)
!246 = !DILocation(line: 140, column: 6, scope: !224)
!247 = distinct !{!247, !248, !249}
!248 = !DILocation(line: 140, column: 3, scope: !224)
!249 = !DILocation(line: 141, column: 18, scope: !224)
!250 = !DILocation(line: 145, column: 8, scope: !251)
!251 = distinct !DILexicalBlock(scope: !225, file: !1, line: 143, column: 7)
!252 = !DILocation(line: 146, column: 44, scope: !253)
!253 = distinct !DILexicalBlock(scope: !251, file: !1, line: 145, column: 8)
!254 = !DILocation(line: 146, column: 33, scope: !253)
!255 = !DILocation(line: 146, column: 8, scope: !253)
!256 = !DILocation(line: 146, column: 4, scope: !253)
!257 = !DILocation(line: 149, column: 7, scope: !258)
!258 = distinct !DILexicalBlock(scope: !259, file: !1, line: 149, column: 7)
!259 = distinct !DILexicalBlock(scope: !260, file: !1, line: 148, column: 22)
!260 = distinct !DILexicalBlock(scope: !261, file: !1, line: 148, column: 2)
!261 = distinct !DILexicalBlock(scope: !75, file: !1, line: 148, column: 2)
!262 = !DILocation(line: 149, column: 11, scope: !258)
!263 = !DILocation(line: 149, column: 7, scope: !259)
!264 = !DILocation(line: 151, column: 10, scope: !265)
!265 = distinct !DILexicalBlock(scope: !259, file: !1, line: 151, column: 7)
!266 = !DILocation(line: 151, column: 7, scope: !259)
!267 = !DILocation(line: 152, column: 8, scope: !268)
!268 = distinct !DILexicalBlock(scope: !265, file: !1, line: 151, column: 17)
!269 = !DILocation(line: 153, column: 4, scope: !268)
!270 = !DILocation(line: 148, column: 16, scope: !260)
!271 = distinct !{!271, !272, !273}
!272 = !DILocation(line: 148, column: 2, scope: !261)
!273 = !DILocation(line: 155, column: 3, scope: !261)
!274 = !DILocation(line: 0, scope: !132)
!275 = !DILocation(line: 157, column: 1, scope: !75)
