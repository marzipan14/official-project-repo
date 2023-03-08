; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-hexnan.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/gdtoa-hexnan.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FPI = type { i32, i32, i32, i32, i32 }

@__hexdig = external dso_local local_unnamed_addr constant [0 x i8], align 1

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

; <label>:17:                                     ; preds = %110, %3
  %18 = phi i32* [ %112, %110 ], [ %14, %3 ]
  %19 = phi i64 [ %111, %110 ], [ -1, %3 ]
  %20 = phi i8* [ %53, %110 ], [ %15, %3 ]
  %21 = phi i32 [ %47, %110 ], [ 0, %3 ]
  %22 = bitcast i32* %18 to i8*
  %23 = getelementptr i8, i8* %22, i64 %16, !dbg !120
  br label %24, !dbg !120

; <label>:24:                                     ; preds = %63, %17
  %25 = phi i64 [ %19, %17 ], [ %30, %63 ]
  %26 = phi i8* [ %20, %17 ], [ %53, %63 ]
  %27 = phi i32 [ %21, %17 ], [ %47, %63 ]
  %28 = phi i32 [ 0, %17 ], [ %52, %63 ]
  br label %29, !dbg !120

; <label>:29:                                     ; preds = %24, %127
  %30 = phi i64 [ %25, %24 ], [ %130, %127 ]
  %31 = phi i8* [ %26, %24 ], [ %53, %127 ]
  %32 = phi i32 [ %27, %24 ], [ %118, %127 ]
  %33 = phi i32 [ %28, %24 ], [ %131, %127 ]
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

; <label>:45:                                     ; preds = %29, %121
  %46 = phi i8* [ %31, %29 ], [ %53, %121 ]
  %47 = phi i32 [ %32, %29 ], [ %118, %121 ]
  %48 = phi i32 [ %33, %29 ], [ %119, %121 ]
  %49 = icmp slt i32 %21, %47
  br label %50, !dbg !120

; <label>:50:                                     ; preds = %45, %109
  %51 = phi i8* [ %53, %109 ], [ %46, %45 ], !dbg !126
  %52 = phi i32 [ 8, %109 ], [ %48, %45 ], !dbg !127
  %53 = getelementptr inbounds i8, i8* %51, i64 1, !dbg !135
  %54 = load i8, i8* %53, align 1, !dbg !136, !tbaa !58
  %55 = icmp eq i8 %54, 0, !dbg !125
  br i1 %55, label %136, label %56, !dbg !125

; <label>:56:                                     ; preds = %50
  %57 = zext i8 %54 to i64, !dbg !137
  %58 = getelementptr inbounds [0 x i8], [0 x i8]* @__hexdig, i64 0, i64 %57, !dbg !137
  %59 = load i8, i8* %58, align 1, !dbg !137, !tbaa !58
  %60 = icmp eq i8 %59, 0, !dbg !138
  br i1 %60, label %61, label %117, !dbg !139

; <label>:61:                                     ; preds = %56
  %62 = icmp ult i8 %54, 33, !dbg !140
  br i1 %62, label %63, label %113, !dbg !141

; <label>:63:                                     ; preds = %61
  br i1 %49, label %64, label %24, !dbg !142, !llvm.loop !143

; <label>:64:                                     ; preds = %63
  %65 = icmp slt i32 %52, 8, !dbg !145
  %66 = and i1 %35, %65, !dbg !147
  br i1 %66, label %67, label %109, !dbg !147

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

; <label>:109:                                    ; preds = %82, %85, %64
  br i1 %36, label %110, label %50, !dbg !173, !llvm.loop !143

; <label>:110:                                    ; preds = %109
  %111 = add nsw i64 %30, -1, !dbg !174
  %112 = getelementptr inbounds i32, i32* %12, i64 %111, !dbg !111
  store i32 0, i32* %112, align 4, !dbg !175, !tbaa !117
  br label %17, !dbg !176, !llvm.loop !143

; <label>:113:                                    ; preds = %61
  %114 = icmp eq i8 %54, 41, !dbg !177
  br i1 %114, label %115, label %336, !dbg !179

; <label>:115:                                    ; preds = %113
  %116 = getelementptr inbounds i8, i8* %51, i64 2, !dbg !180
  store i8* %116, i8** %0, align 8, !dbg !182, !tbaa !48
  br label %136, !dbg !183

; <label>:117:                                    ; preds = %56
  %118 = add nsw i32 %47, 1, !dbg !184
  %119 = add nsw i32 %52, 1, !dbg !185
  %120 = icmp sgt i32 %52, 7, !dbg !187
  br i1 %120, label %121, label %125, !dbg !188

; <label>:121:                                    ; preds = %117
  br i1 %36, label %122, label %45, !dbg !189, !llvm.loop !143

; <label>:122:                                    ; preds = %121
  %123 = add nsw i64 %30, -1, !dbg !191
  %124 = getelementptr inbounds i32, i32* %12, i64 %123, !dbg !111
  store i32 0, i32* %124, align 4, !dbg !192, !tbaa !117
  br label %127, !dbg !193

; <label>:125:                                    ; preds = %117
  %126 = load i32, i32* %34, align 4, !dbg !194, !tbaa !117
  br label %127, !dbg !120

; <label>:127:                                    ; preds = %125, %122
  %128 = phi i32* [ %34, %125 ], [ %124, %122 ], !dbg !120
  %129 = phi i32 [ %126, %125 ], [ 0, %122 ], !dbg !194
  %130 = phi i64 [ %30, %125 ], [ %123, %122 ]
  %131 = phi i32 [ %119, %125 ], [ 1, %122 ], !dbg !195
  %132 = shl i32 %129, 4, !dbg !196
  %133 = and i8 %59, 15, !dbg !197
  %134 = zext i8 %133 to i32, !dbg !197
  %135 = or i32 %132, %134, !dbg !198
  store i32 %135, i32* %128, align 4, !dbg !199, !tbaa !117
  br label %29, !dbg !125, !llvm.loop !143

; <label>:136:                                    ; preds = %50, %115
  %137 = ptrtoint i32* %34 to i64
  %138 = icmp eq i32 %47, 0, !dbg !200
  br i1 %138, label %336, label %139, !dbg !202

; <label>:139:                                    ; preds = %136
  %140 = icmp slt i32 %52, 8, !dbg !203
  %141 = and i1 %35, %140, !dbg !205
  br i1 %141, label %142, label %196, !dbg !205

; <label>:142:                                    ; preds = %139
  %143 = shl i32 %52, 2, !dbg !208
  %144 = sub i32 32, %143, !dbg !208
  %145 = load i32, i32* %34, align 4, !dbg !210, !tbaa !117
  %146 = getelementptr i32, i32* %34, i64 1, !dbg !211
  %147 = icmp ugt i32* %18, %146, !dbg !211
  %148 = select i1 %147, i32* %18, i32* %146, !dbg !211
  %149 = bitcast i32* %148 to i8*
  %150 = xor i64 %137, -1, !dbg !211
  %151 = getelementptr i8, i8* %149, i64 %150, !dbg !211
  %152 = ptrtoint i8* %151 to i64
  %153 = lshr i64 %152, 2, !dbg !211
  %154 = add nuw nsw i64 %153, 1, !dbg !211
  %155 = and i64 %154, 3, !dbg !211
  %156 = icmp eq i64 %155, 0, !dbg !211
  br i1 %156, label %168, label %157, !dbg !211

; <label>:157:                                    ; preds = %142, %157
  %158 = phi i32 [ %165, %157 ], [ %145, %142 ], !dbg !210
  %159 = phi i32* [ %161, %157 ], [ %34, %142 ]
  %160 = phi i64 [ %166, %157 ], [ %155, %142 ]
  %161 = getelementptr inbounds i32, i32* %159, i64 1, !dbg !212
  %162 = load i32, i32* %161, align 4, !dbg !212, !tbaa !117
  %163 = shl i32 %162, %143, !dbg !213
  %164 = or i32 %163, %158, !dbg !210
  store i32 %164, i32* %159, align 4, !dbg !210, !tbaa !117
  %165 = lshr i32 %162, %144, !dbg !214
  store i32 %165, i32* %161, align 4, !dbg !214, !tbaa !117
  %166 = add i64 %160, -1, !dbg !215
  %167 = icmp eq i64 %166, 0, !dbg !215
  br i1 %167, label %168, label %157, !dbg !215, !llvm.loop !216

; <label>:168:                                    ; preds = %157, %142
  %169 = phi i32 [ %145, %142 ], [ %165, %157 ]
  %170 = phi i32* [ %34, %142 ], [ %161, %157 ]
  %171 = icmp ult i8* %151, inttoptr (i64 12 to i8*), !dbg !211
  br i1 %171, label %196, label %172, !dbg !211

; <label>:172:                                    ; preds = %168, %172
  %173 = phi i32 [ %194, %172 ], [ %169, %168 ], !dbg !210
  %174 = phi i32* [ %190, %172 ], [ %170, %168 ]
  %175 = getelementptr inbounds i32, i32* %174, i64 1, !dbg !212
  %176 = load i32, i32* %175, align 4, !dbg !212, !tbaa !117
  %177 = shl i32 %176, %143, !dbg !213
  %178 = or i32 %177, %173, !dbg !210
  store i32 %178, i32* %174, align 4, !dbg !210, !tbaa !117
  %179 = lshr i32 %176, %144, !dbg !214
  store i32 %179, i32* %175, align 4, !dbg !214, !tbaa !117
  %180 = getelementptr inbounds i32, i32* %174, i64 2, !dbg !212
  %181 = load i32, i32* %180, align 4, !dbg !212, !tbaa !117
  %182 = shl i32 %181, %143, !dbg !213
  %183 = or i32 %182, %179, !dbg !210
  store i32 %183, i32* %175, align 4, !dbg !210, !tbaa !117
  %184 = lshr i32 %181, %144, !dbg !214
  store i32 %184, i32* %180, align 4, !dbg !214, !tbaa !117
  %185 = getelementptr inbounds i32, i32* %174, i64 3, !dbg !212
  %186 = load i32, i32* %185, align 4, !dbg !212, !tbaa !117
  %187 = shl i32 %186, %143, !dbg !213
  %188 = or i32 %187, %184, !dbg !210
  store i32 %188, i32* %180, align 4, !dbg !210, !tbaa !117
  %189 = lshr i32 %186, %144, !dbg !214
  store i32 %189, i32* %185, align 4, !dbg !214, !tbaa !117
  %190 = getelementptr inbounds i32, i32* %174, i64 4, !dbg !212
  %191 = load i32, i32* %190, align 4, !dbg !212, !tbaa !117
  %192 = shl i32 %191, %143, !dbg !213
  %193 = or i32 %192, %189, !dbg !210
  store i32 %193, i32* %185, align 4, !dbg !210, !tbaa !117
  %194 = lshr i32 %191, %144, !dbg !214
  store i32 %194, i32* %190, align 4, !dbg !214, !tbaa !117
  %195 = icmp ult i32* %190, %18, !dbg !217
  br i1 %195, label %172, label %196, !dbg !215, !llvm.loop !170

; <label>:196:                                    ; preds = %168, %172, %139
  br i1 %36, label %197, label %317, !dbg !218

; <label>:197:                                    ; preds = %196
  %198 = icmp sgt i64 %30, -1, !dbg !111
  %199 = select i1 %198, i64 %30, i64 -1, !dbg !111
  %200 = add i64 %199, 1, !dbg !111
  %201 = sub i64 %200, %30, !dbg !111
  %202 = icmp ult i64 %201, 8, !dbg !111
  br i1 %202, label %300, label %203, !dbg !111

; <label>:203:                                    ; preds = %197
  %204 = icmp sgt i64 %30, -1, !dbg !111
  %205 = select i1 %204, i64 %30, i64 -1, !dbg !111
  %206 = add i64 %205, 1, !dbg !111
  %207 = sub i64 %206, %30, !dbg !111
  %208 = getelementptr i32, i32* %2, i64 %207, !dbg !111
  %209 = getelementptr i32, i32* %12, i64 %30, !dbg !111
  %210 = getelementptr i32, i32* %12, i64 %206, !dbg !111
  %211 = icmp ugt i32* %210, %2, !dbg !111
  %212 = icmp ult i32* %209, %208, !dbg !111
  %213 = and i1 %211, %212, !dbg !111
  br i1 %213, label %300, label %214, !dbg !111

; <label>:214:                                    ; preds = %203
  %215 = and i64 %201, -8, !dbg !111
  %216 = getelementptr i32, i32* %2, i64 %215, !dbg !111
  %217 = add i64 %30, %215, !dbg !111
  %218 = add i64 %215, -8, !dbg !111
  %219 = lshr exact i64 %218, 3, !dbg !111
  %220 = add nuw nsw i64 %219, 1, !dbg !111
  %221 = and i64 %220, 3, !dbg !111
  %222 = icmp ult i64 %218, 24, !dbg !111
  br i1 %222, label %278, label %223, !dbg !111

; <label>:223:                                    ; preds = %214
  %224 = sub nsw i64 %220, %221, !dbg !111
  br label %225, !dbg !111

; <label>:225:                                    ; preds = %225, %223
  %226 = phi i64 [ 0, %223 ], [ %275, %225 ]
  %227 = phi i64 [ %224, %223 ], [ %276, %225 ]
  %228 = getelementptr i32, i32* %2, i64 %226, !dbg !219
  %229 = add i64 %30, %226, !dbg !219
  %230 = getelementptr inbounds i32, i32* %12, i64 %229, !dbg !111
  %231 = bitcast i32* %230 to <4 x i32>*, !dbg !222
  %232 = load <4 x i32>, <4 x i32>* %231, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %233 = getelementptr inbounds i32, i32* %230, i64 4, !dbg !222
  %234 = bitcast i32* %233 to <4 x i32>*, !dbg !222
  %235 = load <4 x i32>, <4 x i32>* %234, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %236 = bitcast i32* %228 to <4 x i32>*, !dbg !226
  store <4 x i32> %232, <4 x i32>* %236, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %237 = getelementptr i32, i32* %228, i64 4, !dbg !226
  %238 = bitcast i32* %237 to <4 x i32>*, !dbg !226
  store <4 x i32> %235, <4 x i32>* %238, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %239 = or i64 %226, 8
  %240 = getelementptr i32, i32* %2, i64 %239, !dbg !219
  %241 = add i64 %30, %239, !dbg !219
  %242 = getelementptr inbounds i32, i32* %12, i64 %241, !dbg !111
  %243 = bitcast i32* %242 to <4 x i32>*, !dbg !222
  %244 = load <4 x i32>, <4 x i32>* %243, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %245 = getelementptr inbounds i32, i32* %242, i64 4, !dbg !222
  %246 = bitcast i32* %245 to <4 x i32>*, !dbg !222
  %247 = load <4 x i32>, <4 x i32>* %246, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %248 = bitcast i32* %240 to <4 x i32>*, !dbg !226
  store <4 x i32> %244, <4 x i32>* %248, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %249 = getelementptr i32, i32* %240, i64 4, !dbg !226
  %250 = bitcast i32* %249 to <4 x i32>*, !dbg !226
  store <4 x i32> %247, <4 x i32>* %250, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %251 = or i64 %226, 16
  %252 = getelementptr i32, i32* %2, i64 %251, !dbg !219
  %253 = add i64 %30, %251, !dbg !219
  %254 = getelementptr inbounds i32, i32* %12, i64 %253, !dbg !111
  %255 = bitcast i32* %254 to <4 x i32>*, !dbg !222
  %256 = load <4 x i32>, <4 x i32>* %255, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %257 = getelementptr inbounds i32, i32* %254, i64 4, !dbg !222
  %258 = bitcast i32* %257 to <4 x i32>*, !dbg !222
  %259 = load <4 x i32>, <4 x i32>* %258, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %260 = bitcast i32* %252 to <4 x i32>*, !dbg !226
  store <4 x i32> %256, <4 x i32>* %260, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %261 = getelementptr i32, i32* %252, i64 4, !dbg !226
  %262 = bitcast i32* %261 to <4 x i32>*, !dbg !226
  store <4 x i32> %259, <4 x i32>* %262, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %263 = or i64 %226, 24
  %264 = getelementptr i32, i32* %2, i64 %263, !dbg !219
  %265 = add i64 %30, %263, !dbg !219
  %266 = getelementptr inbounds i32, i32* %12, i64 %265, !dbg !111
  %267 = bitcast i32* %266 to <4 x i32>*, !dbg !222
  %268 = load <4 x i32>, <4 x i32>* %267, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %269 = getelementptr inbounds i32, i32* %266, i64 4, !dbg !222
  %270 = bitcast i32* %269 to <4 x i32>*, !dbg !222
  %271 = load <4 x i32>, <4 x i32>* %270, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %272 = bitcast i32* %264 to <4 x i32>*, !dbg !226
  store <4 x i32> %268, <4 x i32>* %272, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %273 = getelementptr i32, i32* %264, i64 4, !dbg !226
  %274 = bitcast i32* %273 to <4 x i32>*, !dbg !226
  store <4 x i32> %271, <4 x i32>* %274, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %275 = add i64 %226, 32
  %276 = add i64 %227, -4
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %278, label %225, !llvm.loop !229

; <label>:278:                                    ; preds = %225, %214
  %279 = phi i64 [ 0, %214 ], [ %275, %225 ]
  %280 = icmp eq i64 %221, 0
  br i1 %280, label %298, label %281

; <label>:281:                                    ; preds = %278, %281
  %282 = phi i64 [ %295, %281 ], [ %279, %278 ]
  %283 = phi i64 [ %296, %281 ], [ %221, %278 ]
  %284 = getelementptr i32, i32* %2, i64 %282, !dbg !219
  %285 = add i64 %30, %282, !dbg !219
  %286 = getelementptr inbounds i32, i32* %12, i64 %285, !dbg !111
  %287 = bitcast i32* %286 to <4 x i32>*, !dbg !222
  %288 = load <4 x i32>, <4 x i32>* %287, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %289 = getelementptr inbounds i32, i32* %286, i64 4, !dbg !222
  %290 = bitcast i32* %289 to <4 x i32>*, !dbg !222
  %291 = load <4 x i32>, <4 x i32>* %290, align 4, !dbg !222, !tbaa !117, !alias.scope !223
  %292 = bitcast i32* %284 to <4 x i32>*, !dbg !226
  store <4 x i32> %288, <4 x i32>* %292, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %293 = getelementptr i32, i32* %284, i64 4, !dbg !226
  %294 = bitcast i32* %293 to <4 x i32>*, !dbg !226
  store <4 x i32> %291, <4 x i32>* %294, align 4, !dbg !226, !tbaa !117, !alias.scope !227, !noalias !223
  %295 = add i64 %282, 8
  %296 = add i64 %283, -1
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %298, label %281, !llvm.loop !233

; <label>:298:                                    ; preds = %281, %278
  %299 = icmp eq i64 %201, %215
  br i1 %299, label %311, label %300, !dbg !111

; <label>:300:                                    ; preds = %298, %203, %197
  %301 = phi i32* [ %2, %203 ], [ %2, %197 ], [ %216, %298 ]
  %302 = phi i64 [ %30, %203 ], [ %30, %197 ], [ %217, %298 ]
  br label %303, !dbg !111

; <label>:303:                                    ; preds = %300, %303
  %304 = phi i32* [ %309, %303 ], [ %301, %300 ], !dbg !219
  %305 = phi i64 [ %307, %303 ], [ %302, %300 ]
  %306 = getelementptr inbounds i32, i32* %12, i64 %305, !dbg !111
  %307 = add nsw i64 %305, 1, !dbg !234
  %308 = load i32, i32* %306, align 4, !dbg !222, !tbaa !117
  %309 = getelementptr inbounds i32, i32* %304, i64 1, !dbg !235
  store i32 %308, i32* %304, align 4, !dbg !226, !tbaa !117
  %310 = icmp slt i64 %305, -1, !dbg !236
  br i1 %310, label %303, label %311, !dbg !237, !llvm.loop !238

; <label>:311:                                    ; preds = %303, %298
  %312 = phi i32* [ %216, %298 ], [ %309, %303 ]
  br label %313, !dbg !239

; <label>:313:                                    ; preds = %311, %313
  %314 = phi i32* [ %315, %313 ], [ %312, %311 ], !dbg !219
  %315 = getelementptr inbounds i32, i32* %314, i64 1, !dbg !239
  store i32 0, i32* %314, align 4, !dbg !240, !tbaa !117
  %316 = icmp ugt i32* %315, %14, !dbg !241
  br i1 %316, label %323, label %313, !dbg !242, !llvm.loop !243

; <label>:317:                                    ; preds = %196
  br i1 %10, label %318, label %323, !dbg !246

; <label>:318:                                    ; preds = %317
  %319 = sub nsw i32 32, %9, !dbg !248
  %320 = lshr i32 -1, %319, !dbg !250
  %321 = load i32, i32* %14, align 4, !dbg !251, !tbaa !117
  %322 = and i32 %321, %320, !dbg !251
  store i32 %322, i32* %14, align 4, !dbg !251, !tbaa !117
  br label %325, !dbg !252

; <label>:323:                                    ; preds = %313, %317
  %324 = load i32, i32* %14, align 4, !dbg !253, !tbaa !117
  br label %325, !dbg !253

; <label>:325:                                    ; preds = %323, %318
  %326 = phi i32 [ %324, %323 ], [ %322, %318 ], !dbg !253
  %327 = icmp eq i32 %326, 0, !dbg !258
  br i1 %327, label %328, label %336, !dbg !259

; <label>:328:                                    ; preds = %325, %332
  %329 = phi i32* [ %333, %332 ], [ %14, %325 ]
  %330 = icmp eq i32* %329, %2, !dbg !260
  br i1 %330, label %331, label %332, !dbg !262

; <label>:331:                                    ; preds = %328
  store i32 1, i32* %2, align 4, !dbg !263, !tbaa !117
  br label %336, !dbg !265

; <label>:332:                                    ; preds = %328
  %333 = getelementptr inbounds i32, i32* %329, i64 -1, !dbg !266
  %334 = load i32, i32* %333, align 4, !dbg !253, !tbaa !117
  %335 = icmp eq i32 %334, 0, !dbg !258
  br i1 %335, label %328, label %336, !dbg !259, !llvm.loop !267

; <label>:336:                                    ; preds = %332, %325, %331, %136, %113
  %337 = phi i32 [ 4, %113 ], [ 4, %136 ], [ 5, %331 ], [ 5, %325 ], [ 5, %332 ], !dbg !270
  ret i32 %337, !dbg !271
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
!173 = !DILocation(line: 106, column: 10, scope: !128)
!174 = !DILocation(line: 111, column: 7, scope: !128)
!175 = !DILocation(line: 111, column: 11, scope: !128)
!176 = !DILocation(line: 114, column: 6, scope: !128)
!177 = !DILocation(line: 117, column: 16, scope: !178)
!178 = distinct !DILexicalBlock(scope: !132, file: !1, line: 117, column: 14)
!179 = !DILocation(line: 117, column: 14, scope: !132)
!180 = !DILocation(line: 118, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !178, file: !1, line: 117, column: 24)
!182 = !DILocation(line: 118, column: 9, scope: !181)
!183 = !DILocation(line: 119, column: 5, scope: !181)
!184 = !DILocation(line: 123, column: 10, scope: !134)
!185 = !DILocation(line: 124, column: 7, scope: !186)
!186 = distinct !DILexicalBlock(scope: !134, file: !1, line: 124, column: 7)
!187 = !DILocation(line: 124, column: 11, scope: !186)
!188 = !DILocation(line: 124, column: 7, scope: !134)
!189 = !DILocation(line: 125, column: 8, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 124, column: 16)
!191 = !DILocation(line: 128, column: 5, scope: !190)
!192 = !DILocation(line: 128, column: 9, scope: !190)
!193 = !DILocation(line: 129, column: 4, scope: !190)
!194 = !DILocation(line: 130, column: 10, scope: !134)
!195 = !DILocation(line: 0, scope: !186)
!196 = !DILocation(line: 130, column: 13, scope: !134)
!197 = !DILocation(line: 130, column: 24, scope: !134)
!198 = !DILocation(line: 130, column: 19, scope: !134)
!199 = !DILocation(line: 130, column: 6, scope: !134)
!200 = !DILocation(line: 132, column: 7, scope: !201)
!201 = distinct !DILexicalBlock(scope: !75, file: !1, line: 132, column: 6)
!202 = !DILocation(line: 132, column: 6, scope: !75)
!203 = !DILocation(line: 134, column: 18, scope: !204)
!204 = distinct !DILexicalBlock(scope: !75, file: !1, line: 134, column: 6)
!205 = !DILocation(line: 134, column: 13, scope: !204)
!206 = !DILocation(line: 66, column: 1, scope: !149, inlinedAt: !207)
!207 = distinct !DILocation(line: 135, column: 3, scope: !204)
!208 = !DILocation(line: 74, column: 4, scope: !149, inlinedAt: !207)
!209 = !DILocation(line: 71, column: 6, scope: !149, inlinedAt: !207)
!210 = !DILocation(line: 77, column: 6, scope: !161, inlinedAt: !207)
!211 = !DILocation(line: 76, column: 2, scope: !149, inlinedAt: !207)
!212 = !DILocation(line: 77, column: 9, scope: !161, inlinedAt: !207)
!213 = !DILocation(line: 77, column: 14, scope: !161, inlinedAt: !207)
!214 = !DILocation(line: 78, column: 8, scope: !161, inlinedAt: !207)
!215 = !DILocation(line: 79, column: 3, scope: !161, inlinedAt: !207)
!216 = distinct !{!216, !168}
!217 = !DILocation(line: 79, column: 15, scope: !149, inlinedAt: !207)
!218 = !DILocation(line: 136, column: 6, scope: !75)
!219 = !DILocation(line: 0, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !1, line: 136, column: 14)
!221 = distinct !DILexicalBlock(scope: !75, file: !1, line: 136, column: 6)
!222 = !DILocation(line: 138, column: 14, scope: !220)
!223 = !{!224}
!224 = distinct !{!224, !225}
!225 = distinct !{!225, !"LVerDomain"}
!226 = !DILocation(line: 138, column: 12, scope: !220)
!227 = !{!228}
!228 = distinct !{!228, !225}
!229 = distinct !{!229, !230, !231, !232}
!230 = !DILocation(line: 138, column: 3, scope: !220)
!231 = !DILocation(line: 139, column: 17, scope: !220)
!232 = !{!"llvm.loop.isvectorized", i32 1}
!233 = distinct !{!233, !168}
!234 = !DILocation(line: 138, column: 16, scope: !220)
!235 = !DILocation(line: 138, column: 9, scope: !220)
!236 = !DILocation(line: 139, column: 12, scope: !220)
!237 = !DILocation(line: 138, column: 6, scope: !220)
!238 = distinct !{!238, !230, !231, !232}
!239 = !DILocation(line: 140, column: 9, scope: !220)
!240 = !DILocation(line: 140, column: 12, scope: !220)
!241 = !DILocation(line: 141, column: 13, scope: !220)
!242 = !DILocation(line: 140, column: 6, scope: !220)
!243 = distinct !{!243, !244, !245}
!244 = !DILocation(line: 140, column: 3, scope: !220)
!245 = !DILocation(line: 141, column: 18, scope: !220)
!246 = !DILocation(line: 145, column: 8, scope: !247)
!247 = distinct !DILexicalBlock(scope: !221, file: !1, line: 143, column: 7)
!248 = !DILocation(line: 146, column: 44, scope: !249)
!249 = distinct !DILexicalBlock(scope: !247, file: !1, line: 145, column: 8)
!250 = !DILocation(line: 146, column: 33, scope: !249)
!251 = !DILocation(line: 146, column: 8, scope: !249)
!252 = !DILocation(line: 146, column: 4, scope: !249)
!253 = !DILocation(line: 149, column: 7, scope: !254)
!254 = distinct !DILexicalBlock(scope: !255, file: !1, line: 149, column: 7)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 148, column: 22)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 148, column: 2)
!257 = distinct !DILexicalBlock(scope: !75, file: !1, line: 148, column: 2)
!258 = !DILocation(line: 149, column: 11, scope: !254)
!259 = !DILocation(line: 149, column: 7, scope: !255)
!260 = !DILocation(line: 151, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !255, file: !1, line: 151, column: 7)
!262 = !DILocation(line: 151, column: 7, scope: !255)
!263 = !DILocation(line: 152, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 151, column: 17)
!265 = !DILocation(line: 153, column: 4, scope: !264)
!266 = !DILocation(line: 148, column: 16, scope: !256)
!267 = distinct !{!267, !268, !269}
!268 = !DILocation(line: 148, column: 2, scope: !257)
!269 = !DILocation(line: 155, column: 3, scope: !257)
!270 = !DILocation(line: 0, scope: !132)
!271 = !DILocation(line: 157, column: 1, scope: !75)
