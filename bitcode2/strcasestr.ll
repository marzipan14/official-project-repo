; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strcasestr(i8*, i8*) local_unnamed_addr #0 !dbg !19 {
  %3 = alloca i64, align 8
  %4 = alloca [256 x i64], align 16
  %5 = alloca i64, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %6 = load i8, i8* %0, align 1, !dbg !96, !tbaa !97
  %7 = icmp eq i8 %6, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  %8 = load i8, i8* %1, align 1, !dbg !101, !tbaa !97
  %9 = icmp eq i8 %8, 0, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %7, label %48, label %10, !dbg !100

; <label>:10:                                     ; preds = %2, %17
  %11 = phi i1 [ %47, %17 ], [ %9, %2 ]
  %12 = phi i8 [ %44, %17 ], [ %6, %2 ]
  %13 = phi i8* [ %18, %17 ], [ %0, %2 ]
  %14 = phi i8* [ %29, %17 ], [ %1, %2 ]
  %15 = phi i32 [ %43, %17 ], [ 1, %2 ]
  br i1 %11, label %16, label %17, !dbg !95

; <label>:16:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !102
  br label %52, !dbg !102

; <label>:17:                                     ; preds = %10
  %18 = getelementptr inbounds i8, i8* %13, i64 1, !dbg !103
  %19 = tail call i8* @__locale_ctype_ptr() #5, !dbg !103
  %20 = getelementptr inbounds i8, i8* %19, i64 1, !dbg !103
  %21 = zext i8 %12 to i32, !dbg !103
  %22 = zext i8 %12 to i64, !dbg !103
  %23 = getelementptr inbounds i8, i8* %20, i64 %22, !dbg !103
  %24 = load i8, i8* %23, align 1, !dbg !103, !tbaa !97
  %25 = and i8 %24, 3, !dbg !103
  %26 = icmp eq i8 %25, 1, !dbg !103
  %27 = add nuw nsw i32 %21, 32, !dbg !103
  %28 = select i1 %26, i32 %27, i32 %21, !dbg !103
  %29 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !104
  %30 = load i8, i8* %14, align 1, !dbg !104, !tbaa !97
  %31 = tail call i8* @__locale_ctype_ptr() #5, !dbg !104
  %32 = getelementptr inbounds i8, i8* %31, i64 1, !dbg !104
  %33 = zext i8 %30 to i32, !dbg !104
  %34 = zext i8 %30 to i64, !dbg !104
  %35 = getelementptr inbounds i8, i8* %32, i64 %34, !dbg !104
  %36 = load i8, i8* %35, align 1, !dbg !104, !tbaa !97
  %37 = and i8 %36, 3, !dbg !104
  %38 = icmp eq i8 %37, 1, !dbg !104
  %39 = add nuw nsw i32 %33, 32, !dbg !104
  %40 = select i1 %38, i32 %39, i32 %33, !dbg !104
  %41 = icmp eq i32 %28, %40, !dbg !105
  %42 = zext i1 %41 to i32, !dbg !105
  %43 = and i32 %15, %42, !dbg !106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !95
  %44 = load i8, i8* %18, align 1, !dbg !96, !tbaa !97
  %45 = icmp eq i8 %44, 0, !dbg !96
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !100
  %46 = load i8, i8* %29, align 1, !dbg !101, !tbaa !97
  %47 = icmp eq i8 %46, 0, !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %45, label %48, label %10, !dbg !100, !llvm.loop !107

; <label>:48:                                     ; preds = %17, %2
  %49 = phi i32 [ 1, %2 ], [ %43, %17 ], !dbg !101
  %50 = phi i8* [ %1, %2 ], [ %29, %17 ], !dbg !109
  %51 = phi i1 [ %9, %2 ], [ %47, %17 ], !dbg !101
  br i1 %51, label %52, label %542, !dbg !102

; <label>:52:                                     ; preds = %16, %48
  %53 = phi i32 [ %15, %16 ], [ %49, %48 ]
  %54 = phi i8* [ %14, %16 ], [ %50, %48 ]
  %55 = icmp eq i32 %53, 0, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %55, label %56, label %542, !dbg !112

; <label>:56:                                     ; preds = %52
  %57 = ptrtoint i8* %54 to i64, !dbg !113
  %58 = ptrtoint i8* %1 to i64, !dbg !113
  %59 = sub i64 %57, %58, !dbg !113
  %60 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !115
  %61 = add i64 %59, -1, !dbg !116
  %62 = icmp ult i64 %59, 32, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  br i1 %62, label %63, label %263, !dbg !120

; <label>:63:                                     ; preds = %56
  %64 = bitcast i64* %5 to i8*, !dbg !162
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %64) #6, !dbg !162
  %65 = call fastcc i64 @critical_factorization(i8* %1, i64 %59, i64* nonnull %5) #5, !dbg !164
  %66 = load i64, i64* %5, align 8, !dbg !166, !tbaa !167
  %67 = getelementptr inbounds i8, i8* %1, i64 %66, !dbg !169
  %68 = tail call i32 @strncasecmp(i8* %1, i8* %67, i64 %65) #7, !dbg !170
  %69 = icmp eq i32 %68, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !172
  br i1 %69, label %70, label %170, !dbg !172

; <label>:70:                                     ; preds = %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  %71 = getelementptr inbounds i8, i8* %0, i64 %59, !dbg !176
  %72 = tail call i8* @memchr(i8* nonnull %71, i32 0, i64 1) #5, !dbg !176
  %73 = icmp eq i8* %72, null, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %73, label %74, label %167, !dbg !176

; <label>:74:                                     ; preds = %70
  %75 = sub i64 %59, %66
  %76 = sub i64 1, %65
  br label %77, !dbg !176

; <label>:77:                                     ; preds = %158, %74
  %78 = phi i64 [ %59, %74 ], [ %163, %158 ]
  %79 = phi i64 [ 0, %74 ], [ %161, %158 ]
  %80 = phi i64 [ 0, %74 ], [ %159, %158 ]
  %81 = icmp eq i64 %78, 0, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %81, label %167, label %82, !dbg !175

; <label>:82:                                     ; preds = %77
  %83 = icmp ult i64 %65, %80, !dbg !177
  %84 = select i1 %83, i64 %80, i64 %65, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  %85 = icmp ult i64 %84, %59, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %85, label %86, label %117, !dbg !181

; <label>:86:                                     ; preds = %82, %114
  %87 = phi i64 [ %115, %114 ], [ %84, %82 ]
  %88 = getelementptr inbounds i8, i8* %1, i64 %87, !dbg !182
  %89 = load i8, i8* %88, align 1, !dbg !182, !tbaa !97
  %90 = tail call i8* @__locale_ctype_ptr() #5, !dbg !182
  %91 = getelementptr inbounds i8, i8* %90, i64 1, !dbg !182
  %92 = zext i8 %89 to i32, !dbg !182
  %93 = zext i8 %89 to i64, !dbg !182
  %94 = getelementptr inbounds i8, i8* %91, i64 %93, !dbg !182
  %95 = load i8, i8* %94, align 1, !dbg !182, !tbaa !97
  %96 = and i8 %95, 3, !dbg !182
  %97 = icmp eq i8 %96, 1, !dbg !182
  %98 = add nuw nsw i32 %92, 32, !dbg !182
  %99 = select i1 %97, i32 %98, i32 %92, !dbg !182
  %100 = add i64 %87, %79, !dbg !183
  %101 = getelementptr inbounds i8, i8* %60, i64 %100, !dbg !183
  %102 = load i8, i8* %101, align 1, !dbg !183, !tbaa !97
  %103 = tail call i8* @__locale_ctype_ptr() #5, !dbg !183
  %104 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !183
  %105 = zext i8 %102 to i32, !dbg !183
  %106 = zext i8 %102 to i64, !dbg !183
  %107 = getelementptr inbounds i8, i8* %104, i64 %106, !dbg !183
  %108 = load i8, i8* %107, align 1, !dbg !183, !tbaa !97
  %109 = and i8 %108, 3, !dbg !183
  %110 = icmp eq i8 %109, 1, !dbg !183
  %111 = add nuw nsw i32 %105, 32, !dbg !183
  %112 = select i1 %110, i32 %111, i32 %105, !dbg !183
  %113 = icmp eq i32 %99, %112, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  br i1 %113, label %114, label %156, !dbg !179

; <label>:114:                                    ; preds = %86
  %115 = add nuw i64 %87, 1, !dbg !185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  %116 = icmp ult i64 %115, %59, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %116, label %86, label %117, !dbg !181, !llvm.loop !186

; <label>:117:                                    ; preds = %114, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  %118 = icmp ult i64 %80, %65, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %118, label %119, label %150, !dbg !192

; <label>:119:                                    ; preds = %117, %148
  %120 = phi i64 [ %121, %148 ], [ %65, %117 ]
  %121 = add i64 %120, -1
  %122 = getelementptr inbounds i8, i8* %1, i64 %121, !dbg !193
  %123 = load i8, i8* %122, align 1, !dbg !193, !tbaa !97
  %124 = tail call i8* @__locale_ctype_ptr() #5, !dbg !193
  %125 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !193
  %126 = zext i8 %123 to i32, !dbg !193
  %127 = zext i8 %123 to i64, !dbg !193
  %128 = getelementptr inbounds i8, i8* %125, i64 %127, !dbg !193
  %129 = load i8, i8* %128, align 1, !dbg !193, !tbaa !97
  %130 = and i8 %129, 3, !dbg !193
  %131 = icmp eq i8 %130, 1, !dbg !193
  %132 = add nuw nsw i32 %126, 32, !dbg !193
  %133 = select i1 %131, i32 %132, i32 %126, !dbg !193
  %134 = add i64 %121, %79, !dbg !194
  %135 = getelementptr inbounds i8, i8* %60, i64 %134, !dbg !194
  %136 = load i8, i8* %135, align 1, !dbg !194, !tbaa !97
  %137 = tail call i8* @__locale_ctype_ptr() #5, !dbg !194
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !194
  %139 = zext i8 %136 to i32, !dbg !194
  %140 = zext i8 %136 to i64, !dbg !194
  %141 = getelementptr inbounds i8, i8* %138, i64 %140, !dbg !194
  %142 = load i8, i8* %141, align 1, !dbg !194, !tbaa !97
  %143 = and i8 %142, 3, !dbg !194
  %144 = icmp eq i8 %143, 1, !dbg !194
  %145 = add nuw nsw i32 %139, 32, !dbg !194
  %146 = select i1 %144, i32 %145, i32 %139, !dbg !194
  %147 = icmp eq i32 %133, %146, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %147, label %148, label %152, !dbg !190

; <label>:148:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  %149 = icmp ult i64 %80, %121, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br i1 %149, label %119, label %150, !dbg !192, !llvm.loop !196

; <label>:150:                                    ; preds = %148, %117
  %151 = phi i64 [ %65, %117 ], [ %121, %148 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br label %152

; <label>:152:                                    ; preds = %119, %150
  %153 = phi i64 [ %151, %150 ], [ %120, %119 ]
  %154 = add i64 %80, 1, !dbg !199
  %155 = icmp ult i64 %153, %154, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  br i1 %155, label %168, label %158, !dbg !202

; <label>:156:                                    ; preds = %86
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  %157 = add i64 %76, %87, !dbg !203
  br label %158

; <label>:158:                                    ; preds = %152, %156
  %159 = phi i64 [ 0, %156 ], [ %75, %152 ], !dbg !205
  %160 = phi i64 [ %157, %156 ], [ %66, %152 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %161 = add i64 %160, %79, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  %162 = getelementptr inbounds i8, i8* %60, i64 %78, !dbg !176
  %163 = add i64 %161, %59, !dbg !176
  %164 = sub i64 %163, %78, !dbg !176
  %165 = tail call i8* @memchr(i8* nonnull %162, i32 0, i64 %164) #5, !dbg !176
  %166 = icmp eq i8* %165, null, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  br i1 %166, label %77, label %167, !dbg !176, !llvm.loop !206

; <label>:167:                                    ; preds = %158, %77, %70
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %261

; <label>:168:                                    ; preds = %152
  %169 = getelementptr inbounds i8, i8* %60, i64 %79, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br label %261

; <label>:170:                                    ; preds = %63
  %171 = sub i64 %59, %65, !dbg !212
  %172 = icmp ult i64 %65, %171, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  %173 = select i1 %172, i64 %171, i64 %65, !dbg !212
  %174 = add i64 %173, 1, !dbg !213
  store i64 %174, i64* %5, align 8, !dbg !214, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %175 = getelementptr inbounds i8, i8* %0, i64 %59, !dbg !216
  %176 = tail call i8* @memchr(i8* nonnull %175, i32 0, i64 1) #5, !dbg !216
  %177 = icmp eq i8* %176, null, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %177, label %178, label %261, !dbg !216

; <label>:178:                                    ; preds = %170
  %179 = icmp ugt i64 %59, %65
  %180 = sub i64 1, %65
  br label %181, !dbg !216

; <label>:181:                                    ; preds = %253, %178
  %182 = phi i64 [ %59, %178 ], [ %257, %253 ]
  %183 = phi i64 [ 0, %178 ], [ %255, %253 ]
  %184 = icmp eq i64 %182, 0, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %184, label %261, label %185, !dbg !215

; <label>:185:                                    ; preds = %181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %179, label %186, label %217, !dbg !218

; <label>:186:                                    ; preds = %185, %214
  %187 = phi i64 [ %215, %214 ], [ %65, %185 ]
  %188 = getelementptr inbounds i8, i8* %1, i64 %187, !dbg !219
  %189 = load i8, i8* %188, align 1, !dbg !219, !tbaa !97
  %190 = tail call i8* @__locale_ctype_ptr() #5, !dbg !219
  %191 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !219
  %192 = zext i8 %189 to i32, !dbg !219
  %193 = zext i8 %189 to i64, !dbg !219
  %194 = getelementptr inbounds i8, i8* %191, i64 %193, !dbg !219
  %195 = load i8, i8* %194, align 1, !dbg !219, !tbaa !97
  %196 = and i8 %195, 3, !dbg !219
  %197 = icmp eq i8 %196, 1, !dbg !219
  %198 = add nuw nsw i32 %192, 32, !dbg !219
  %199 = select i1 %197, i32 %198, i32 %192, !dbg !219
  %200 = add i64 %187, %183, !dbg !220
  %201 = getelementptr inbounds i8, i8* %60, i64 %200, !dbg !220
  %202 = load i8, i8* %201, align 1, !dbg !220, !tbaa !97
  %203 = tail call i8* @__locale_ctype_ptr() #5, !dbg !220
  %204 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !220
  %205 = zext i8 %202 to i32, !dbg !220
  %206 = zext i8 %202 to i64, !dbg !220
  %207 = getelementptr inbounds i8, i8* %204, i64 %206, !dbg !220
  %208 = load i8, i8* %207, align 1, !dbg !220, !tbaa !97
  %209 = and i8 %208, 3, !dbg !220
  %210 = icmp eq i8 %209, 1, !dbg !220
  %211 = add nuw nsw i32 %205, 32, !dbg !220
  %212 = select i1 %210, i32 %211, i32 %205, !dbg !220
  %213 = icmp eq i32 %199, %212, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  br i1 %213, label %214, label %251, !dbg !217

; <label>:214:                                    ; preds = %186
  %215 = add nuw i64 %187, 1, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  %216 = icmp ult i64 %215, %59, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br i1 %216, label %186, label %217, !dbg !218, !llvm.loop !224

; <label>:217:                                    ; preds = %214, %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  br label %218, !dbg !228

; <label>:218:                                    ; preds = %222, %217
  %219 = phi i64 [ %65, %217 ], [ %220, %222 ]
  %220 = add i64 %219, -1, !dbg !229
  %221 = icmp eq i64 %219, 0, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !231
  br i1 %221, label %249, label %222, !dbg !231

; <label>:222:                                    ; preds = %218
  %223 = getelementptr inbounds i8, i8* %1, i64 %220, !dbg !232
  %224 = load i8, i8* %223, align 1, !dbg !232, !tbaa !97
  %225 = tail call i8* @__locale_ctype_ptr() #5, !dbg !232
  %226 = getelementptr inbounds i8, i8* %225, i64 1, !dbg !232
  %227 = zext i8 %224 to i32, !dbg !232
  %228 = zext i8 %224 to i64, !dbg !232
  %229 = getelementptr inbounds i8, i8* %226, i64 %228, !dbg !232
  %230 = load i8, i8* %229, align 1, !dbg !232, !tbaa !97
  %231 = and i8 %230, 3, !dbg !232
  %232 = icmp eq i8 %231, 1, !dbg !232
  %233 = add nuw nsw i32 %227, 32, !dbg !232
  %234 = select i1 %232, i32 %233, i32 %227, !dbg !232
  %235 = add i64 %220, %183, !dbg !233
  %236 = getelementptr inbounds i8, i8* %60, i64 %235, !dbg !233
  %237 = load i8, i8* %236, align 1, !dbg !233, !tbaa !97
  %238 = tail call i8* @__locale_ctype_ptr() #5, !dbg !233
  %239 = getelementptr inbounds i8, i8* %238, i64 1, !dbg !233
  %240 = zext i8 %237 to i32, !dbg !233
  %241 = zext i8 %237 to i64, !dbg !233
  %242 = getelementptr inbounds i8, i8* %239, i64 %241, !dbg !233
  %243 = load i8, i8* %242, align 1, !dbg !233, !tbaa !97
  %244 = and i8 %243, 3, !dbg !233
  %245 = icmp eq i8 %244, 1, !dbg !233
  %246 = add nuw nsw i32 %240, 32, !dbg !233
  %247 = select i1 %245, i32 %246, i32 %240, !dbg !233
  %248 = icmp eq i32 %234, %247, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br i1 %248, label %218, label %253, !dbg !228, !llvm.loop !235

; <label>:249:                                    ; preds = %218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %250 = getelementptr inbounds i8, i8* %60, i64 %183, !dbg !239
  br label %261, !dbg !241

; <label>:251:                                    ; preds = %186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  %252 = add i64 %180, %187, !dbg !242
  br label %253

; <label>:253:                                    ; preds = %222, %251
  %254 = phi i64 [ %252, %251 ], [ %174, %222 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %255 = add i64 %254, %183, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %256 = getelementptr inbounds i8, i8* %60, i64 %182, !dbg !216
  %257 = add i64 %255, %59, !dbg !216
  %258 = sub i64 %257, %182, !dbg !216
  %259 = tail call i8* @memchr(i8* nonnull %256, i32 0, i64 %258) #5, !dbg !216
  %260 = icmp eq i8* %259, null, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  br i1 %260, label %181, label %261, !dbg !216, !llvm.loop !244

; <label>:261:                                    ; preds = %181, %253, %167, %170, %168, %249
  %262 = phi i8* [ %169, %168 ], [ %250, %249 ], [ null, %170 ], [ null, %167 ], [ null, %253 ], [ null, %181 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %64) #6, !dbg !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br label %542, !dbg !248

; <label>:263:                                    ; preds = %56
  %264 = bitcast i64* %3 to i8*, !dbg !253
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %264) #6, !dbg !253
  %265 = bitcast [256 x i64]* %4 to i8*, !dbg !254
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %265) #6, !dbg !254
  %266 = call fastcc i64 @critical_factorization(i8* %1, i64 %59, i64* nonnull %3) #5, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br label %267, !dbg !261

; <label>:267:                                    ; preds = %267, %263
  %268 = phi i64 [ 0, %263 ], [ %276, %267 ]
  %269 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %268, !dbg !262
  store i64 %59, i64* %269, align 16, !dbg !264, !tbaa !167
  %270 = or i64 %268, 1, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %271 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %270, !dbg !262
  store i64 %59, i64* %271, align 8, !dbg !264, !tbaa !167
  %272 = or i64 %268, 2, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %273 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %272, !dbg !262
  store i64 %59, i64* %273, align 16, !dbg !264, !tbaa !167
  %274 = or i64 %268, 3, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %275 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %274, !dbg !262
  store i64 %59, i64* %275, align 8, !dbg !264, !tbaa !167
  %276 = add nuw nsw i64 %268, 4, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %277 = icmp eq i64 %276, 256, !dbg !267
  br i1 %277, label %278, label %267, !dbg !261, !llvm.loop !268

; <label>:278:                                    ; preds = %267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %279 = icmp eq i64 %59, 0, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %279, label %300, label %280, !dbg !273

; <label>:280:                                    ; preds = %278, %280
  %281 = phi i64 [ %298, %280 ], [ 0, %278 ]
  %282 = xor i64 %281, -1, !dbg !274
  %283 = add i64 %59, %282, !dbg !274
  %284 = getelementptr inbounds i8, i8* %1, i64 %281, !dbg !275
  %285 = load i8, i8* %284, align 1, !dbg !275, !tbaa !97
  %286 = tail call i8* @__locale_ctype_ptr() #5, !dbg !275
  %287 = getelementptr inbounds i8, i8* %286, i64 1, !dbg !275
  %288 = zext i8 %285 to i32, !dbg !275
  %289 = zext i8 %285 to i64, !dbg !275
  %290 = getelementptr inbounds i8, i8* %287, i64 %289, !dbg !275
  %291 = load i8, i8* %290, align 1, !dbg !275, !tbaa !97
  %292 = and i8 %291, 3, !dbg !275
  %293 = icmp eq i8 %292, 1, !dbg !275
  %294 = add nuw nsw i32 %288, 32, !dbg !275
  %295 = select i1 %293, i32 %294, i32 %288, !dbg !275
  %296 = zext i32 %295 to i64, !dbg !276
  %297 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %296, !dbg !276
  store i64 %283, i64* %297, align 8, !dbg !277, !tbaa !167
  %298 = add nuw i64 %281, 1, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %299 = icmp eq i64 %298, %59, !dbg !272
  br i1 %299, label %300, label %280, !dbg !273, !llvm.loop !280

; <label>:300:                                    ; preds = %280, %278
  %301 = load i64, i64* %3, align 8, !dbg !283, !tbaa !167
  %302 = getelementptr inbounds i8, i8* %1, i64 %301, !dbg !284
  %303 = tail call i32 @strncasecmp(i8* %1, i8* %302, i64 %266) #7, !dbg !285
  %304 = icmp eq i32 %303, 0, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %304, label %305, label %429, !dbg !287

; <label>:305:                                    ; preds = %300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  %306 = getelementptr inbounds i8, i8* %0, i64 %59, !dbg !291
  %307 = tail call i8* @memchr(i8* nonnull %306, i32 0, i64 1) #5, !dbg !291
  %308 = icmp eq i8* %307, null, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %308, label %309, label %539, !dbg !291

; <label>:309:                                    ; preds = %305
  %310 = sub i64 %59, %301
  %311 = sub i64 1, %266
  br label %312, !dbg !291

; <label>:312:                                    ; preds = %339, %309
  %313 = phi i64 [ %59, %309 ], [ %344, %339 ]
  %314 = phi i64 [ 0, %309 ], [ %342, %339 ]
  %315 = phi i64 [ 0, %309 ], [ %340, %339 ]
  %316 = icmp eq i64 %313, 0, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %316, label %539, label %317, !dbg !290

; <label>:317:                                    ; preds = %312
  %318 = getelementptr inbounds i8, i8* %0, i64 %313, !dbg !292
  %319 = load i8, i8* %318, align 1, !dbg !292, !tbaa !97
  %320 = tail call i8* @__locale_ctype_ptr() #5, !dbg !292
  %321 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !292
  %322 = zext i8 %319 to i32, !dbg !292
  %323 = zext i8 %319 to i64, !dbg !292
  %324 = getelementptr inbounds i8, i8* %321, i64 %323, !dbg !292
  %325 = load i8, i8* %324, align 1, !dbg !292, !tbaa !97
  %326 = and i8 %325, 3, !dbg !292
  %327 = icmp eq i8 %326, 1, !dbg !292
  %328 = add nuw nsw i32 %322, 32, !dbg !292
  %329 = select i1 %327, i32 %328, i32 %322, !dbg !292
  %330 = zext i32 %329 to i64, !dbg !293
  %331 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %330, !dbg !293
  %332 = load i64, i64* %331, align 8, !dbg !293, !tbaa !167
  %333 = icmp eq i64 %332, 0, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %333, label %348, label %334, !dbg !297

; <label>:334:                                    ; preds = %317
  %335 = icmp eq i64 %315, 0, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %335, label %339, label %336, !dbg !301

; <label>:336:                                    ; preds = %334
  %337 = icmp ult i64 %332, %301, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %337, label %338, label %339, !dbg !303

; <label>:338:                                    ; preds = %336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br label %339, !dbg !304

; <label>:339:                                    ; preds = %334, %336, %338, %424
  %340 = phi i64 [ %425, %424 ], [ 0, %338 ], [ 0, %336 ], [ 0, %334 ]
  %341 = phi i64 [ %426, %424 ], [ %310, %338 ], [ %332, %336 ], [ %332, %334 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  %342 = add i64 %341, %314, !dbg !306
  %343 = getelementptr inbounds i8, i8* %60, i64 %313, !dbg !291
  %344 = add i64 %342, %59, !dbg !291
  %345 = sub i64 %344, %313, !dbg !291
  %346 = tail call i8* @memchr(i8* nonnull %343, i32 0, i64 %345) #5, !dbg !291
  %347 = icmp eq i8* %346, null, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %347, label %312, label %539, !dbg !291, !llvm.loop !308

; <label>:348:                                    ; preds = %317
  %349 = icmp ult i64 %266, %315, !dbg !311
  %350 = select i1 %349, i64 %315, i64 %266, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  %351 = icmp ult i64 %350, %61, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %351, label %352, label %383, !dbg !314

; <label>:352:                                    ; preds = %348, %380
  %353 = phi i64 [ %381, %380 ], [ %350, %348 ]
  %354 = getelementptr inbounds i8, i8* %1, i64 %353, !dbg !315
  %355 = load i8, i8* %354, align 1, !dbg !315, !tbaa !97
  %356 = tail call i8* @__locale_ctype_ptr() #5, !dbg !315
  %357 = getelementptr inbounds i8, i8* %356, i64 1, !dbg !315
  %358 = zext i8 %355 to i32, !dbg !315
  %359 = zext i8 %355 to i64, !dbg !315
  %360 = getelementptr inbounds i8, i8* %357, i64 %359, !dbg !315
  %361 = load i8, i8* %360, align 1, !dbg !315, !tbaa !97
  %362 = and i8 %361, 3, !dbg !315
  %363 = icmp eq i8 %362, 1, !dbg !315
  %364 = add nuw nsw i32 %358, 32, !dbg !315
  %365 = select i1 %363, i32 %364, i32 %358, !dbg !315
  %366 = add i64 %353, %314, !dbg !316
  %367 = getelementptr inbounds i8, i8* %60, i64 %366, !dbg !316
  %368 = load i8, i8* %367, align 1, !dbg !316, !tbaa !97
  %369 = tail call i8* @__locale_ctype_ptr() #5, !dbg !316
  %370 = getelementptr inbounds i8, i8* %369, i64 1, !dbg !316
  %371 = zext i8 %368 to i32, !dbg !316
  %372 = zext i8 %368 to i64, !dbg !316
  %373 = getelementptr inbounds i8, i8* %370, i64 %372, !dbg !316
  %374 = load i8, i8* %373, align 1, !dbg !316, !tbaa !97
  %375 = and i8 %374, 3, !dbg !316
  %376 = icmp eq i8 %375, 1, !dbg !316
  %377 = add nuw nsw i32 %371, 32, !dbg !316
  %378 = select i1 %376, i32 %377, i32 %371, !dbg !316
  %379 = icmp eq i32 %365, %378, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %379, label %380, label %422, !dbg !312

; <label>:380:                                    ; preds = %352
  %381 = add nuw i64 %353, 1, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  %382 = icmp ult i64 %381, %61, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %382, label %352, label %383, !dbg !314, !llvm.loop !319

; <label>:383:                                    ; preds = %380, %348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %384 = icmp ult i64 %315, %266, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %384, label %385, label %416, !dbg !325

; <label>:385:                                    ; preds = %383, %414
  %386 = phi i64 [ %387, %414 ], [ %266, %383 ]
  %387 = add i64 %386, -1
  %388 = getelementptr inbounds i8, i8* %1, i64 %387, !dbg !326
  %389 = load i8, i8* %388, align 1, !dbg !326, !tbaa !97
  %390 = tail call i8* @__locale_ctype_ptr() #5, !dbg !326
  %391 = getelementptr inbounds i8, i8* %390, i64 1, !dbg !326
  %392 = zext i8 %389 to i32, !dbg !326
  %393 = zext i8 %389 to i64, !dbg !326
  %394 = getelementptr inbounds i8, i8* %391, i64 %393, !dbg !326
  %395 = load i8, i8* %394, align 1, !dbg !326, !tbaa !97
  %396 = and i8 %395, 3, !dbg !326
  %397 = icmp eq i8 %396, 1, !dbg !326
  %398 = add nuw nsw i32 %392, 32, !dbg !326
  %399 = select i1 %397, i32 %398, i32 %392, !dbg !326
  %400 = add i64 %387, %314, !dbg !327
  %401 = getelementptr inbounds i8, i8* %60, i64 %400, !dbg !327
  %402 = load i8, i8* %401, align 1, !dbg !327, !tbaa !97
  %403 = tail call i8* @__locale_ctype_ptr() #5, !dbg !327
  %404 = getelementptr inbounds i8, i8* %403, i64 1, !dbg !327
  %405 = zext i8 %402 to i32, !dbg !327
  %406 = zext i8 %402 to i64, !dbg !327
  %407 = getelementptr inbounds i8, i8* %404, i64 %406, !dbg !327
  %408 = load i8, i8* %407, align 1, !dbg !327, !tbaa !97
  %409 = and i8 %408, 3, !dbg !327
  %410 = icmp eq i8 %409, 1, !dbg !327
  %411 = add nuw nsw i32 %405, 32, !dbg !327
  %412 = select i1 %410, i32 %411, i32 %405, !dbg !327
  %413 = icmp eq i32 %399, %412, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %413, label %414, label %418, !dbg !323

; <label>:414:                                    ; preds = %385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %415 = icmp ult i64 %315, %387, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %415, label %385, label %416, !dbg !325, !llvm.loop !329

; <label>:416:                                    ; preds = %414, %383
  %417 = phi i64 [ %266, %383 ], [ %387, %414 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br label %418

; <label>:418:                                    ; preds = %385, %416
  %419 = phi i64 [ %417, %416 ], [ %386, %385 ]
  %420 = add i64 %315, 1, !dbg !332
  %421 = icmp ult i64 %419, %420, !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %421, label %427, label %424, !dbg !335

; <label>:422:                                    ; preds = %352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  %423 = add i64 %311, %353, !dbg !336
  br label %424

; <label>:424:                                    ; preds = %418, %422
  %425 = phi i64 [ 0, %422 ], [ %310, %418 ], !dbg !306
  %426 = phi i64 [ %423, %422 ], [ %301, %418 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %339, !dbg !290

; <label>:427:                                    ; preds = %418
  %428 = getelementptr inbounds i8, i8* %60, i64 %314, !dbg !337
  br label %540

; <label>:429:                                    ; preds = %300
  %430 = sub i64 %59, %266, !dbg !338
  %431 = icmp ult i64 %266, %430, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %432 = select i1 %431, i64 %430, i64 %266, !dbg !338
  %433 = add i64 %432, 1, !dbg !339
  store i64 %433, i64* %3, align 8, !dbg !340, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  %434 = getelementptr inbounds i8, i8* %0, i64 %59, !dbg !342
  %435 = tail call i8* @memchr(i8* nonnull %434, i32 0, i64 1) #5, !dbg !342
  %436 = icmp eq i8* %435, null, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %436, label %437, label %539, !dbg !342

; <label>:437:                                    ; preds = %429
  %438 = icmp ult i64 %266, %61
  %439 = sub i64 1, %266
  br label %440, !dbg !342

; <label>:440:                                    ; preds = %461, %437
  %441 = phi i64 [ %59, %437 ], [ %465, %461 ]
  %442 = phi i64 [ 0, %437 ], [ %463, %461 ]
  %443 = icmp eq i64 %441, 0, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %443, label %539, label %444, !dbg !341

; <label>:444:                                    ; preds = %440
  %445 = getelementptr inbounds i8, i8* %0, i64 %441, !dbg !343
  %446 = load i8, i8* %445, align 1, !dbg !343, !tbaa !97
  %447 = tail call i8* @__locale_ctype_ptr() #5, !dbg !343
  %448 = getelementptr inbounds i8, i8* %447, i64 1, !dbg !343
  %449 = zext i8 %446 to i32, !dbg !343
  %450 = zext i8 %446 to i64, !dbg !343
  %451 = getelementptr inbounds i8, i8* %448, i64 %450, !dbg !343
  %452 = load i8, i8* %451, align 1, !dbg !343, !tbaa !97
  %453 = and i8 %452, 3, !dbg !343
  %454 = icmp eq i8 %453, 1, !dbg !343
  %455 = add nuw nsw i32 %449, 32, !dbg !343
  %456 = select i1 %454, i32 %455, i32 %449, !dbg !343
  %457 = zext i32 %456 to i64, !dbg !344
  %458 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %457, !dbg !344
  %459 = load i64, i64* %458, align 8, !dbg !344, !tbaa !167
  %460 = icmp eq i64 %459, 0, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br i1 %460, label %469, label %461, !dbg !348

; <label>:461:                                    ; preds = %535, %444
  %462 = phi i64 [ %536, %535 ], [ %459, %444 ]
  %463 = add i64 %462, %442, !dbg !351
  %464 = getelementptr inbounds i8, i8* %60, i64 %441, !dbg !342
  %465 = add i64 %463, %59, !dbg !342
  %466 = sub i64 %465, %441, !dbg !342
  %467 = tail call i8* @memchr(i8* nonnull %464, i32 0, i64 %466) #5, !dbg !342
  %468 = icmp eq i8* %467, null, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %468, label %440, label %539, !dbg !342, !llvm.loop !352

; <label>:469:                                    ; preds = %444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %438, label %470, label %501, !dbg !355

; <label>:470:                                    ; preds = %469, %498
  %471 = phi i64 [ %499, %498 ], [ %266, %469 ]
  %472 = getelementptr inbounds i8, i8* %1, i64 %471, !dbg !356
  %473 = load i8, i8* %472, align 1, !dbg !356, !tbaa !97
  %474 = tail call i8* @__locale_ctype_ptr() #5, !dbg !356
  %475 = getelementptr inbounds i8, i8* %474, i64 1, !dbg !356
  %476 = zext i8 %473 to i32, !dbg !356
  %477 = zext i8 %473 to i64, !dbg !356
  %478 = getelementptr inbounds i8, i8* %475, i64 %477, !dbg !356
  %479 = load i8, i8* %478, align 1, !dbg !356, !tbaa !97
  %480 = and i8 %479, 3, !dbg !356
  %481 = icmp eq i8 %480, 1, !dbg !356
  %482 = add nuw nsw i32 %476, 32, !dbg !356
  %483 = select i1 %481, i32 %482, i32 %476, !dbg !356
  %484 = add i64 %471, %442, !dbg !357
  %485 = getelementptr inbounds i8, i8* %60, i64 %484, !dbg !357
  %486 = load i8, i8* %485, align 1, !dbg !357, !tbaa !97
  %487 = tail call i8* @__locale_ctype_ptr() #5, !dbg !357
  %488 = getelementptr inbounds i8, i8* %487, i64 1, !dbg !357
  %489 = zext i8 %486 to i32, !dbg !357
  %490 = zext i8 %486 to i64, !dbg !357
  %491 = getelementptr inbounds i8, i8* %488, i64 %490, !dbg !357
  %492 = load i8, i8* %491, align 1, !dbg !357, !tbaa !97
  %493 = and i8 %492, 3, !dbg !357
  %494 = icmp eq i8 %493, 1, !dbg !357
  %495 = add nuw nsw i32 %489, 32, !dbg !357
  %496 = select i1 %494, i32 %495, i32 %489, !dbg !357
  %497 = icmp eq i32 %483, %496, !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %497, label %498, label %533, !dbg !359

; <label>:498:                                    ; preds = %470
  %499 = add nuw i64 %471, 1, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  %500 = icmp ult i64 %499, %61, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %500, label %470, label %501, !dbg !355, !llvm.loop !362

; <label>:501:                                    ; preds = %498, %469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br label %502, !dbg !366

; <label>:502:                                    ; preds = %506, %501
  %503 = phi i64 [ %266, %501 ], [ %504, %506 ]
  %504 = add i64 %503, -1, !dbg !367
  %505 = icmp eq i64 %503, 0, !dbg !368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %505, label %537, label %506, !dbg !369

; <label>:506:                                    ; preds = %502
  %507 = getelementptr inbounds i8, i8* %1, i64 %504, !dbg !370
  %508 = load i8, i8* %507, align 1, !dbg !370, !tbaa !97
  %509 = tail call i8* @__locale_ctype_ptr() #5, !dbg !370
  %510 = getelementptr inbounds i8, i8* %509, i64 1, !dbg !370
  %511 = zext i8 %508 to i32, !dbg !370
  %512 = zext i8 %508 to i64, !dbg !370
  %513 = getelementptr inbounds i8, i8* %510, i64 %512, !dbg !370
  %514 = load i8, i8* %513, align 1, !dbg !370, !tbaa !97
  %515 = and i8 %514, 3, !dbg !370
  %516 = icmp eq i8 %515, 1, !dbg !370
  %517 = add nuw nsw i32 %511, 32, !dbg !370
  %518 = select i1 %516, i32 %517, i32 %511, !dbg !370
  %519 = add i64 %504, %442, !dbg !371
  %520 = getelementptr inbounds i8, i8* %60, i64 %519, !dbg !371
  %521 = load i8, i8* %520, align 1, !dbg !371, !tbaa !97
  %522 = tail call i8* @__locale_ctype_ptr() #5, !dbg !371
  %523 = getelementptr inbounds i8, i8* %522, i64 1, !dbg !371
  %524 = zext i8 %521 to i32, !dbg !371
  %525 = zext i8 %521 to i64, !dbg !371
  %526 = getelementptr inbounds i8, i8* %523, i64 %525, !dbg !371
  %527 = load i8, i8* %526, align 1, !dbg !371, !tbaa !97
  %528 = and i8 %527, 3, !dbg !371
  %529 = icmp eq i8 %528, 1, !dbg !371
  %530 = add nuw nsw i32 %524, 32, !dbg !371
  %531 = select i1 %529, i32 %530, i32 %524, !dbg !371
  %532 = icmp eq i32 %518, %531, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !367
  br i1 %532, label %502, label %535, !dbg !366, !llvm.loop !373

; <label>:533:                                    ; preds = %470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %534 = add i64 %439, %471, !dbg !376
  br label %535

; <label>:535:                                    ; preds = %506, %533
  %536 = phi i64 [ %534, %533 ], [ %433, %506 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br label %461, !dbg !341

; <label>:537:                                    ; preds = %502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  %538 = getelementptr inbounds i8, i8* %60, i64 %442, !dbg !378
  br label %540

; <label>:539:                                    ; preds = %440, %461, %312, %339, %429, %305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br label %540, !dbg !380

; <label>:540:                                    ; preds = %427, %537, %539
  %541 = phi i8* [ null, %539 ], [ %428, %427 ], [ %538, %537 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %265) #6, !dbg !381
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %264) #6, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br label %542, !dbg !382

; <label>:542:                                    ; preds = %52, %48, %540, %261
  %543 = phi i8* [ %262, %261 ], [ %541, %540 ], [ null, %48 ], [ %0, %52 ], !dbg !101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  ret i8* %543, !dbg !385
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i64 @critical_factorization(i8* nocapture readonly, i64, i64* nocapture) unnamed_addr #0 !dbg !386 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %4 = icmp ugt i64 %1, 1, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %4, label %6, label %5, !dbg !418

; <label>:5:                                      ; preds = %3
  store i64 1, i64* %2, align 8, !dbg !420, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br label %105, !dbg !422

; <label>:6:                                      ; preds = %3, %48
  %7 = phi i64 [ %53, %48 ], [ 1, %3 ]
  %8 = phi i64 [ %52, %48 ], [ -1, %3 ]
  %9 = phi i64 [ %51, %48 ], [ 0, %3 ]
  %10 = phi i64 [ %50, %48 ], [ 1, %3 ]
  %11 = phi i64 [ %49, %48 ], [ 1, %3 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !423
  %13 = load i8, i8* %12, align 1, !dbg !423, !tbaa !97
  %14 = tail call i8* @__locale_ctype_ptr() #5, !dbg !423
  %15 = getelementptr inbounds i8, i8* %14, i64 1, !dbg !423
  %16 = zext i8 %13 to i64, !dbg !423
  %17 = getelementptr inbounds i8, i8* %15, i64 %16, !dbg !423
  %18 = load i8, i8* %17, align 1, !dbg !423, !tbaa !97
  %19 = and i8 %18, 3, !dbg !423
  %20 = icmp eq i8 %19, 1, !dbg !423
  %21 = add i8 %13, 32, !dbg !423
  %22 = select i1 %20, i8 %21, i8 %13, !dbg !423
  %23 = add i64 %8, %10, !dbg !425
  %24 = getelementptr inbounds i8, i8* %0, i64 %23, !dbg !425
  %25 = load i8, i8* %24, align 1, !dbg !425, !tbaa !97
  %26 = tail call i8* @__locale_ctype_ptr() #5, !dbg !425
  %27 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !425
  %28 = zext i8 %25 to i64, !dbg !425
  %29 = getelementptr inbounds i8, i8* %27, i64 %28, !dbg !425
  %30 = load i8, i8* %29, align 1, !dbg !425, !tbaa !97
  %31 = and i8 %30, 3, !dbg !425
  %32 = icmp eq i8 %31, 1, !dbg !425
  %33 = add i8 %25, 32, !dbg !425
  %34 = select i1 %32, i8 %33, i8 %25, !dbg !425
  %35 = icmp ult i8 %22, %34, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %35, label %36, label %38, !dbg !429

; <label>:36:                                     ; preds = %6
  %37 = sub i64 %7, %8, !dbg !430
  br label %48, !dbg !432

; <label>:38:                                     ; preds = %6
  %39 = icmp eq i8 %22, %34, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  br i1 %39, label %40, label %46, !dbg !435

; <label>:40:                                     ; preds = %38
  %41 = icmp eq i64 %10, %11, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  br i1 %41, label %44, label %42, !dbg !439

; <label>:42:                                     ; preds = %40
  %43 = add i64 %10, 1, !dbg !440
  br label %48, !dbg !440

; <label>:44:                                     ; preds = %40
  %45 = add i64 %9, %10, !dbg !441
  br label %48

; <label>:46:                                     ; preds = %38
  %47 = add i64 %9, 1, !dbg !443
  br label %48

; <label>:48:                                     ; preds = %46, %44, %42, %36
  %49 = phi i64 [ %37, %36 ], [ %11, %42 ], [ %10, %44 ], [ 1, %46 ], !dbg !445
  %50 = phi i64 [ 1, %36 ], [ %43, %42 ], [ 1, %44 ], [ 1, %46 ], !dbg !445
  %51 = phi i64 [ %7, %36 ], [ %9, %42 ], [ %45, %44 ], [ %47, %46 ], !dbg !445
  %52 = phi i64 [ %8, %36 ], [ %8, %42 ], [ %8, %44 ], [ %9, %46 ], !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  %53 = add i64 %51, %50, !dbg !446
  %54 = icmp ult i64 %53, %1, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  br i1 %54, label %6, label %55, !dbg !418, !llvm.loop !447

; <label>:55:                                     ; preds = %48
  store i64 %49, i64* %2, align 8, !dbg !420, !tbaa !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %4, label %56, label %105, !dbg !422

; <label>:56:                                     ; preds = %55, %98
  %57 = phi i64 [ %103, %98 ], [ 1, %55 ]
  %58 = phi i64 [ %102, %98 ], [ -1, %55 ]
  %59 = phi i64 [ %101, %98 ], [ 0, %55 ]
  %60 = phi i64 [ %100, %98 ], [ 1, %55 ]
  %61 = phi i64 [ %99, %98 ], [ 1, %55 ]
  %62 = getelementptr inbounds i8, i8* %0, i64 %57, !dbg !449
  %63 = load i8, i8* %62, align 1, !dbg !449, !tbaa !97
  %64 = tail call i8* @__locale_ctype_ptr() #5, !dbg !449
  %65 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !449
  %66 = zext i8 %63 to i64, !dbg !449
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !449
  %68 = load i8, i8* %67, align 1, !dbg !449, !tbaa !97
  %69 = and i8 %68, 3, !dbg !449
  %70 = icmp eq i8 %69, 1, !dbg !449
  %71 = add i8 %63, 32, !dbg !449
  %72 = select i1 %70, i8 %71, i8 %63, !dbg !449
  %73 = add i64 %58, %60, !dbg !450
  %74 = getelementptr inbounds i8, i8* %0, i64 %73, !dbg !450
  %75 = load i8, i8* %74, align 1, !dbg !450, !tbaa !97
  %76 = tail call i8* @__locale_ctype_ptr() #5, !dbg !450
  %77 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !450
  %78 = zext i8 %75 to i64, !dbg !450
  %79 = getelementptr inbounds i8, i8* %77, i64 %78, !dbg !450
  %80 = load i8, i8* %79, align 1, !dbg !450, !tbaa !97
  %81 = and i8 %80, 3, !dbg !450
  %82 = icmp eq i8 %81, 1, !dbg !450
  %83 = add i8 %75, 32, !dbg !450
  %84 = select i1 %82, i8 %83, i8 %75, !dbg !450
  %85 = icmp ult i8 %84, %72, !dbg !451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  br i1 %85, label %86, label %88, !dbg !453

; <label>:86:                                     ; preds = %56
  %87 = sub i64 %57, %58, !dbg !454
  br label %98, !dbg !456

; <label>:88:                                     ; preds = %56
  %89 = icmp eq i8 %72, %84, !dbg !457
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  br i1 %89, label %90, label %96, !dbg !459

; <label>:90:                                     ; preds = %88
  %91 = icmp eq i64 %60, %61, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %91, label %94, label %92, !dbg !463

; <label>:92:                                     ; preds = %90
  %93 = add i64 %60, 1, !dbg !464
  br label %98, !dbg !464

; <label>:94:                                     ; preds = %90
  %95 = add i64 %59, %60, !dbg !465
  br label %98

; <label>:96:                                     ; preds = %88
  %97 = add i64 %59, 1, !dbg !467
  br label %98

; <label>:98:                                     ; preds = %96, %94, %92, %86
  %99 = phi i64 [ %87, %86 ], [ %61, %92 ], [ %60, %94 ], [ 1, %96 ], !dbg !469
  %100 = phi i64 [ 1, %86 ], [ %93, %92 ], [ 1, %94 ], [ 1, %96 ], !dbg !469
  %101 = phi i64 [ %57, %86 ], [ %59, %92 ], [ %95, %94 ], [ %97, %96 ], !dbg !469
  %102 = phi i64 [ %58, %86 ], [ %58, %92 ], [ %58, %94 ], [ %59, %96 ], !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %103 = add i64 %101, %100, !dbg !470
  %104 = icmp ult i64 %103, %1, !dbg !471
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %104, label %56, label %105, !dbg !422, !llvm.loop !472

; <label>:105:                                    ; preds = %98, %5, %55
  %106 = phi i64 [ %52, %55 ], [ -1, %5 ], [ %52, %98 ]
  %107 = phi i64 [ 1, %55 ], [ 1, %5 ], [ %99, %98 ], !dbg !474
  %108 = phi i64 [ -1, %55 ], [ -1, %5 ], [ %102, %98 ], !dbg !475
  %109 = add i64 %108, 1, !dbg !476
  %110 = add i64 %106, 1, !dbg !478
  %111 = icmp ult i64 %109, %110, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %111, label %113, label %112, !dbg !480

; <label>:112:                                    ; preds = %105
  store i64 %107, i64* %2, align 8, !dbg !481, !tbaa !167
  br label %113, !dbg !482

; <label>:113:                                    ; preds = %105, %112
  %114 = phi i64 [ %109, %112 ], [ %110, %105 ], !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  ret i64 %114, !dbg !485
}

; Function Attrs: noredzone nounwind readonly
declare dso_local i32 @strncasecmp(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strcasestr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !6, !8, !10}
!4 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "strcasestr", scope: !1, file: !1, line: 99, type: !20, isLocal: false, isDefinition: true, scopeLine: 102, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !24)
!20 = !DISubroutineType(types: !21)
!21 = !{!6, !22, !22}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!24 = !{!25, !26, !27, !28, !29, !30, !31, !32, !34}
!25 = !DILocalVariable(name: "s", arg: 1, scope: !19, file: !1, line: 99, type: !22)
!26 = !DILocalVariable(name: "find", arg: 2, scope: !19, file: !1, line: 99, type: !22)
!27 = !DILocalVariable(name: "haystack", scope: !19, file: !1, line: 125, type: !22)
!28 = !DILocalVariable(name: "needle", scope: !19, file: !1, line: 126, type: !22)
!29 = !DILocalVariable(name: "needle_len", scope: !19, file: !1, line: 127, type: !10)
!30 = !DILocalVariable(name: "haystack_len", scope: !19, file: !1, line: 128, type: !10)
!31 = !DILocalVariable(name: "ok", scope: !19, file: !1, line: 129, type: !5)
!32 = !DILocalVariable(name: "__x", scope: !33, file: !1, line: 135, type: !4)
!33 = distinct !DILexicalBlock(scope: !19, file: !1, line: 135, column: 12)
!34 = !DILocalVariable(name: "__x", scope: !35, file: !1, line: 136, type: !4)
!35 = distinct !DILexicalBlock(scope: !19, file: !1, line: 136, column: 8)
!36 = !DILocalVariable(name: "shift_table", scope: !37, file: !38, line: 299, type: !86)
!37 = distinct !DISubprogram(name: "two_way_long_needle", scope: !38, file: !38, line: 292, type: !39, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !41)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/str-two-way.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DISubroutineType(types: !40)
!40 = !{!6, !8, !10, !8, !10}
!41 = !{!42, !43, !44, !45, !46, !47, !48, !49, !36, !50, !54, !57, !58, !61, !63, !65, !69, !71, !73, !76, !78, !80, !84}
!42 = !DILocalVariable(name: "haystack", arg: 1, scope: !37, file: !38, line: 292, type: !8)
!43 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !37, file: !38, line: 292, type: !10)
!44 = !DILocalVariable(name: "needle", arg: 3, scope: !37, file: !38, line: 293, type: !8)
!45 = !DILocalVariable(name: "needle_len", arg: 4, scope: !37, file: !38, line: 293, type: !10)
!46 = !DILocalVariable(name: "i", scope: !37, file: !38, line: 295, type: !10)
!47 = !DILocalVariable(name: "j", scope: !37, file: !38, line: 296, type: !10)
!48 = !DILocalVariable(name: "period", scope: !37, file: !38, line: 297, type: !10)
!49 = !DILocalVariable(name: "suffix", scope: !37, file: !38, line: 298, type: !10)
!50 = !DILocalVariable(name: "__x", scope: !51, file: !38, line: 313, type: !9)
!51 = distinct !DILexicalBlock(scope: !52, file: !38, line: 313, column: 17)
!52 = distinct !DILexicalBlock(scope: !53, file: !38, line: 312, column: 3)
!53 = distinct !DILexicalBlock(scope: !37, file: !38, line: 312, column: 3)
!54 = !DILocalVariable(name: "memory", scope: !55, file: !38, line: 322, type: !10)
!55 = distinct !DILexicalBlock(scope: !56, file: !38, line: 318, column: 5)
!56 = distinct !DILexicalBlock(scope: !37, file: !38, line: 317, column: 7)
!57 = !DILocalVariable(name: "shift", scope: !55, file: !38, line: 323, type: !10)
!58 = !DILocalVariable(name: "__x", scope: !59, file: !38, line: 329, type: !9)
!59 = distinct !DILexicalBlock(scope: !60, file: !38, line: 329, column: 24)
!60 = distinct !DILexicalBlock(scope: !55, file: !38, line: 326, column: 2)
!61 = !DILocalVariable(name: "__x", scope: !62, file: !38, line: 346, type: !9)
!62 = distinct !DILexicalBlock(scope: !60, file: !38, line: 346, column: 34)
!63 = !DILocalVariable(name: "__x", scope: !64, file: !38, line: 347, type: !9)
!64 = distinct !DILexicalBlock(scope: !60, file: !38, line: 347, column: 9)
!65 = !DILocalVariable(name: "__x", scope: !66, file: !38, line: 353, type: !9)
!66 = distinct !DILexicalBlock(scope: !67, file: !38, line: 353, column: 34)
!67 = distinct !DILexicalBlock(scope: !68, file: !38, line: 350, column: 6)
!68 = distinct !DILexicalBlock(scope: !60, file: !38, line: 349, column: 8)
!69 = !DILocalVariable(name: "__x", scope: !70, file: !38, line: 354, type: !9)
!70 = distinct !DILexicalBlock(scope: !67, file: !38, line: 354, column: 9)
!71 = !DILocalVariable(name: "shift", scope: !72, file: !38, line: 374, type: !10)
!72 = distinct !DILexicalBlock(scope: !56, file: !38, line: 371, column: 5)
!73 = !DILocalVariable(name: "__x", scope: !74, file: !38, line: 381, type: !9)
!74 = distinct !DILexicalBlock(scope: !75, file: !38, line: 381, column: 24)
!75 = distinct !DILexicalBlock(scope: !72, file: !38, line: 378, column: 2)
!76 = !DILocalVariable(name: "__x", scope: !77, file: !38, line: 390, type: !9)
!77 = distinct !DILexicalBlock(scope: !75, file: !38, line: 390, column: 34)
!78 = !DILocalVariable(name: "__x", scope: !79, file: !38, line: 391, type: !9)
!79 = distinct !DILexicalBlock(scope: !75, file: !38, line: 391, column: 9)
!80 = !DILocalVariable(name: "__x", scope: !81, file: !38, line: 397, type: !9)
!81 = distinct !DILexicalBlock(scope: !82, file: !38, line: 397, column: 33)
!82 = distinct !DILexicalBlock(scope: !83, file: !38, line: 394, column: 6)
!83 = distinct !DILexicalBlock(scope: !75, file: !38, line: 393, column: 8)
!84 = !DILocalVariable(name: "__x", scope: !85, file: !38, line: 398, type: !9)
!85 = distinct !DILexicalBlock(scope: !82, file: !38, line: 398, column: 15)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 16384, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 256)
!89 = !DILocation(line: 299, column: 10, scope: !37, inlinedAt: !90)
!90 = distinct !DILocation(line: 150, column: 10, scope: !19)
!91 = !DILocation(line: 99, column: 1, scope: !19)
!92 = !DILocation(line: 125, column: 15, scope: !19)
!93 = !DILocation(line: 126, column: 15, scope: !19)
!94 = !DILocation(line: 129, column: 7, scope: !19)
!95 = !DILocation(line: 134, column: 3, scope: !19)
!96 = !DILocation(line: 134, column: 10, scope: !19)
!97 = !{!98, !98, i64 0}
!98 = !{!"omnipotent char", !99, i64 0}
!99 = !{!"Simple C/C++ TBAA"}
!100 = !DILocation(line: 134, column: 20, scope: !19)
!101 = !DILocation(line: 0, scope: !19)
!102 = !DILocation(line: 137, column: 7, scope: !19)
!103 = !DILocation(line: 135, column: 12, scope: !33)
!104 = !DILocation(line: 136, column: 8, scope: !35)
!105 = !DILocation(line: 136, column: 5, scope: !19)
!106 = !DILocation(line: 135, column: 8, scope: !19)
!107 = distinct !{!107, !95, !108}
!108 = !DILocation(line: 136, column: 43, scope: !19)
!109 = !DILocation(line: 0, scope: !35)
!110 = !DILocation(line: 139, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !19, file: !1, line: 139, column: 7)
!112 = !DILocation(line: 139, column: 7, scope: !19)
!113 = !DILocation(line: 141, column: 23, scope: !19)
!114 = !DILocation(line: 127, column: 10, scope: !19)
!115 = !DILocation(line: 142, column: 16, scope: !19)
!116 = !DILocation(line: 143, column: 29, scope: !19)
!117 = !DILocation(line: 128, column: 10, scope: !19)
!118 = !DILocation(line: 146, column: 18, scope: !119)
!119 = distinct !DILexicalBlock(scope: !19, file: !1, line: 146, column: 7)
!120 = !DILocation(line: 146, column: 7, scope: !19)
!121 = !DILocalVariable(name: "haystack", arg: 1, scope: !122, file: !38, line: 198, type: !8)
!122 = distinct !DISubprogram(name: "two_way_short_needle", scope: !38, file: !38, line: 198, type: !39, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !123)
!123 = !{!121, !124, !125, !126, !127, !128, !129, !130, !131, !134, !137, !139, !143, !145, !149, !151, !155}
!124 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !122, file: !38, line: 198, type: !10)
!125 = !DILocalVariable(name: "needle", arg: 3, scope: !122, file: !38, line: 199, type: !8)
!126 = !DILocalVariable(name: "needle_len", arg: 4, scope: !122, file: !38, line: 199, type: !10)
!127 = !DILocalVariable(name: "i", scope: !122, file: !38, line: 201, type: !10)
!128 = !DILocalVariable(name: "j", scope: !122, file: !38, line: 202, type: !10)
!129 = !DILocalVariable(name: "period", scope: !122, file: !38, line: 203, type: !10)
!130 = !DILocalVariable(name: "suffix", scope: !122, file: !38, line: 204, type: !10)
!131 = !DILocalVariable(name: "memory", scope: !132, file: !38, line: 218, type: !10)
!132 = distinct !DILexicalBlock(scope: !133, file: !38, line: 214, column: 5)
!133 = distinct !DILexicalBlock(scope: !122, file: !38, line: 213, column: 7)
!134 = !DILocalVariable(name: "__x", scope: !135, file: !38, line: 224, type: !9)
!135 = distinct !DILexicalBlock(scope: !136, file: !38, line: 224, column: 30)
!136 = distinct !DILexicalBlock(scope: !132, file: !38, line: 221, column: 2)
!137 = !DILocalVariable(name: "__x", scope: !138, file: !38, line: 225, type: !9)
!138 = distinct !DILexicalBlock(scope: !136, file: !38, line: 225, column: 12)
!139 = !DILocalVariable(name: "__x", scope: !140, file: !38, line: 231, type: !9)
!140 = distinct !DILexicalBlock(scope: !141, file: !38, line: 231, column: 34)
!141 = distinct !DILexicalBlock(scope: !142, file: !38, line: 228, column: 6)
!142 = distinct !DILexicalBlock(scope: !136, file: !38, line: 227, column: 8)
!143 = !DILocalVariable(name: "__x", scope: !144, file: !38, line: 232, type: !9)
!144 = distinct !DILexicalBlock(scope: !141, file: !38, line: 232, column: 9)
!145 = !DILocalVariable(name: "__x", scope: !146, file: !38, line: 258, type: !9)
!146 = distinct !DILexicalBlock(scope: !147, file: !38, line: 258, column: 30)
!147 = distinct !DILexicalBlock(scope: !148, file: !38, line: 255, column: 2)
!148 = distinct !DILexicalBlock(scope: !133, file: !38, line: 249, column: 5)
!149 = !DILocalVariable(name: "__x", scope: !150, file: !38, line: 259, type: !9)
!150 = distinct !DILexicalBlock(scope: !147, file: !38, line: 259, column: 12)
!151 = !DILocalVariable(name: "__x", scope: !152, file: !38, line: 265, type: !9)
!152 = distinct !DILexicalBlock(scope: !153, file: !38, line: 265, column: 33)
!153 = distinct !DILexicalBlock(scope: !154, file: !38, line: 262, column: 6)
!154 = distinct !DILexicalBlock(scope: !147, file: !38, line: 261, column: 8)
!155 = !DILocalVariable(name: "__x", scope: !156, file: !38, line: 266, type: !9)
!156 = distinct !DILexicalBlock(scope: !153, file: !38, line: 266, column: 15)
!157 = !DILocation(line: 198, column: 44, scope: !122, inlinedAt: !158)
!158 = distinct !DILocation(line: 147, column: 12, scope: !119)
!159 = !DILocation(line: 198, column: 61, scope: !122, inlinedAt: !158)
!160 = !DILocation(line: 199, column: 30, scope: !122, inlinedAt: !158)
!161 = !DILocation(line: 199, column: 45, scope: !122, inlinedAt: !158)
!162 = !DILocation(line: 203, column: 3, scope: !122, inlinedAt: !158)
!163 = !DILocation(line: 203, column: 10, scope: !122, inlinedAt: !158)
!164 = !DILocation(line: 209, column: 12, scope: !122, inlinedAt: !158)
!165 = !DILocation(line: 204, column: 10, scope: !122, inlinedAt: !158)
!166 = !DILocation(line: 213, column: 34, scope: !133, inlinedAt: !158)
!167 = !{!168, !168, i64 0}
!168 = !{!"long", !98, i64 0}
!169 = !DILocation(line: 213, column: 32, scope: !133, inlinedAt: !158)
!170 = !DILocation(line: 213, column: 7, scope: !133, inlinedAt: !158)
!171 = !DILocation(line: 213, column: 50, scope: !133, inlinedAt: !158)
!172 = !DILocation(line: 213, column: 7, scope: !122, inlinedAt: !158)
!173 = !DILocation(line: 218, column: 14, scope: !132, inlinedAt: !158)
!174 = !DILocation(line: 202, column: 10, scope: !122, inlinedAt: !158)
!175 = !DILocation(line: 220, column: 7, scope: !132, inlinedAt: !158)
!176 = !DILocation(line: 220, column: 14, scope: !132, inlinedAt: !158)
!177 = !DILocation(line: 223, column: 8, scope: !136, inlinedAt: !158)
!178 = !DILocation(line: 201, column: 10, scope: !122, inlinedAt: !158)
!179 = !DILocation(line: 224, column: 4, scope: !136, inlinedAt: !158)
!180 = !DILocation(line: 224, column: 13, scope: !136, inlinedAt: !158)
!181 = !DILocation(line: 224, column: 26, scope: !136, inlinedAt: !158)
!182 = !DILocation(line: 224, column: 30, scope: !135, inlinedAt: !158)
!183 = !DILocation(line: 225, column: 12, scope: !138, inlinedAt: !158)
!184 = !DILocation(line: 225, column: 9, scope: !136, inlinedAt: !158)
!185 = !DILocation(line: 226, column: 6, scope: !136, inlinedAt: !158)
!186 = distinct !{!186, !187, !188}
!187 = !DILocation(line: 224, column: 4, scope: !136)
!188 = !DILocation(line: 226, column: 8, scope: !136)
!189 = !DILocation(line: 227, column: 8, scope: !136, inlinedAt: !158)
!190 = !DILocation(line: 231, column: 8, scope: !141, inlinedAt: !158)
!191 = !DILocation(line: 231, column: 22, scope: !141, inlinedAt: !158)
!192 = !DILocation(line: 231, column: 30, scope: !141, inlinedAt: !158)
!193 = !DILocation(line: 231, column: 34, scope: !140, inlinedAt: !158)
!194 = !DILocation(line: 232, column: 9, scope: !144, inlinedAt: !158)
!195 = !DILocation(line: 232, column: 6, scope: !141, inlinedAt: !158)
!196 = distinct !{!196, !197, !198}
!197 = !DILocation(line: 231, column: 8, scope: !141)
!198 = !DILocation(line: 233, column: 5, scope: !141)
!199 = !DILocation(line: 234, column: 27, scope: !200, inlinedAt: !158)
!200 = distinct !DILexicalBlock(scope: !141, file: !38, line: 234, column: 12)
!201 = !DILocation(line: 234, column: 18, scope: !200, inlinedAt: !158)
!202 = !DILocation(line: 234, column: 12, scope: !141, inlinedAt: !158)
!203 = !DILocation(line: 243, column: 24, scope: !204, inlinedAt: !158)
!204 = distinct !DILexicalBlock(scope: !142, file: !38, line: 242, column: 6)
!205 = !DILocation(line: 0, scope: !204, inlinedAt: !158)
!206 = distinct !{!206, !207, !208}
!207 = !DILocation(line: 220, column: 7, scope: !132)
!208 = !DILocation(line: 246, column: 2, scope: !132)
!209 = !DILocation(line: 247, column: 5, scope: !133, inlinedAt: !158)
!210 = !DILocation(line: 235, column: 34, scope: !200, inlinedAt: !158)
!211 = !DILocation(line: 235, column: 3, scope: !200, inlinedAt: !158)
!212 = !DILocation(line: 252, column: 16, scope: !148, inlinedAt: !158)
!213 = !DILocation(line: 252, column: 50, scope: !148, inlinedAt: !158)
!214 = !DILocation(line: 252, column: 14, scope: !148, inlinedAt: !158)
!215 = !DILocation(line: 254, column: 7, scope: !148, inlinedAt: !158)
!216 = !DILocation(line: 254, column: 14, scope: !148, inlinedAt: !158)
!217 = !DILocation(line: 258, column: 4, scope: !147, inlinedAt: !158)
!218 = !DILocation(line: 258, column: 26, scope: !147, inlinedAt: !158)
!219 = !DILocation(line: 258, column: 30, scope: !146, inlinedAt: !158)
!220 = !DILocation(line: 259, column: 12, scope: !150, inlinedAt: !158)
!221 = !DILocation(line: 259, column: 9, scope: !147, inlinedAt: !158)
!222 = !DILocation(line: 260, column: 6, scope: !147, inlinedAt: !158)
!223 = !DILocation(line: 258, column: 13, scope: !147, inlinedAt: !158)
!224 = distinct !{!224, !225, !226}
!225 = !DILocation(line: 258, column: 4, scope: !147)
!226 = !DILocation(line: 260, column: 8, scope: !147)
!227 = !DILocation(line: 261, column: 8, scope: !147, inlinedAt: !158)
!228 = !DILocation(line: 265, column: 8, scope: !153, inlinedAt: !158)
!229 = !DILocation(line: 0, scope: !153, inlinedAt: !158)
!230 = !DILocation(line: 265, column: 17, scope: !153, inlinedAt: !158)
!231 = !DILocation(line: 265, column: 29, scope: !153, inlinedAt: !158)
!232 = !DILocation(line: 265, column: 33, scope: !152, inlinedAt: !158)
!233 = !DILocation(line: 266, column: 15, scope: !156, inlinedAt: !158)
!234 = !DILocation(line: 266, column: 12, scope: !153, inlinedAt: !158)
!235 = distinct !{!235, !236, !237}
!236 = !DILocation(line: 265, column: 8, scope: !153)
!237 = !DILocation(line: 267, column: 5, scope: !153)
!238 = !DILocation(line: 268, column: 12, scope: !153, inlinedAt: !158)
!239 = !DILocation(line: 269, column: 34, scope: !240, inlinedAt: !158)
!240 = distinct !DILexicalBlock(scope: !153, file: !38, line: 268, column: 12)
!241 = !DILocation(line: 269, column: 3, scope: !240, inlinedAt: !158)
!242 = !DILocation(line: 273, column: 22, scope: !154, inlinedAt: !158)
!243 = !DILocation(line: 0, scope: !154, inlinedAt: !158)
!244 = distinct !{!244, !245, !246}
!245 = !DILocation(line: 254, column: 7, scope: !148)
!246 = !DILocation(line: 274, column: 2, scope: !148)
!247 = !DILocation(line: 277, column: 1, scope: !122, inlinedAt: !158)
!248 = !DILocation(line: 147, column: 5, scope: !119)
!249 = !DILocation(line: 292, column: 43, scope: !37, inlinedAt: !90)
!250 = !DILocation(line: 292, column: 60, scope: !37, inlinedAt: !90)
!251 = !DILocation(line: 293, column: 29, scope: !37, inlinedAt: !90)
!252 = !DILocation(line: 293, column: 44, scope: !37, inlinedAt: !90)
!253 = !DILocation(line: 297, column: 3, scope: !37, inlinedAt: !90)
!254 = !DILocation(line: 299, column: 3, scope: !37, inlinedAt: !90)
!255 = !DILocation(line: 297, column: 10, scope: !37, inlinedAt: !90)
!256 = !DILocation(line: 304, column: 12, scope: !37, inlinedAt: !90)
!257 = !DILocation(line: 298, column: 10, scope: !37, inlinedAt: !90)
!258 = !DILocation(line: 295, column: 10, scope: !37, inlinedAt: !90)
!259 = !DILocation(line: 310, column: 8, scope: !260, inlinedAt: !90)
!260 = distinct !DILexicalBlock(scope: !37, file: !38, line: 310, column: 3)
!261 = !DILocation(line: 310, column: 3, scope: !260, inlinedAt: !90)
!262 = !DILocation(line: 311, column: 5, scope: !263, inlinedAt: !90)
!263 = distinct !DILexicalBlock(scope: !260, file: !38, line: 310, column: 3)
!264 = !DILocation(line: 311, column: 20, scope: !263, inlinedAt: !90)
!265 = !DILocation(line: 310, column: 36, scope: !263, inlinedAt: !90)
!266 = !DILocation(line: 310, column: 3, scope: !263, inlinedAt: !90)
!267 = !DILocation(line: 310, column: 17, scope: !263, inlinedAt: !90)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 310, column: 3, scope: !260)
!270 = !DILocation(line: 311, column: 22, scope: !260)
!271 = !DILocation(line: 312, column: 8, scope: !53, inlinedAt: !90)
!272 = !DILocation(line: 312, column: 17, scope: !52, inlinedAt: !90)
!273 = !DILocation(line: 312, column: 3, scope: !53, inlinedAt: !90)
!274 = !DILocation(line: 313, column: 61, scope: !52, inlinedAt: !90)
!275 = !DILocation(line: 313, column: 17, scope: !51, inlinedAt: !90)
!276 = !DILocation(line: 313, column: 5, scope: !52, inlinedAt: !90)
!277 = !DILocation(line: 313, column: 44, scope: !52, inlinedAt: !90)
!278 = !DILocation(line: 312, column: 32, scope: !52, inlinedAt: !90)
!279 = !DILocation(line: 312, column: 3, scope: !52, inlinedAt: !90)
!280 = distinct !{!280, !281, !282}
!281 = !DILocation(line: 312, column: 3, scope: !53)
!282 = !DILocation(line: 313, column: 63, scope: !53)
!283 = !DILocation(line: 317, column: 34, scope: !56, inlinedAt: !90)
!284 = !DILocation(line: 317, column: 32, scope: !56, inlinedAt: !90)
!285 = !DILocation(line: 317, column: 7, scope: !56, inlinedAt: !90)
!286 = !DILocation(line: 317, column: 50, scope: !56, inlinedAt: !90)
!287 = !DILocation(line: 317, column: 7, scope: !37, inlinedAt: !90)
!288 = !DILocation(line: 322, column: 14, scope: !55, inlinedAt: !90)
!289 = !DILocation(line: 296, column: 10, scope: !37, inlinedAt: !90)
!290 = !DILocation(line: 325, column: 7, scope: !55, inlinedAt: !90)
!291 = !DILocation(line: 325, column: 14, scope: !55, inlinedAt: !90)
!292 = !DILocation(line: 329, column: 24, scope: !59, inlinedAt: !90)
!293 = !DILocation(line: 329, column: 12, scope: !60, inlinedAt: !90)
!294 = !DILocation(line: 323, column: 14, scope: !55, inlinedAt: !90)
!295 = !DILocation(line: 330, column: 10, scope: !296, inlinedAt: !90)
!296 = distinct !DILexicalBlock(scope: !60, file: !38, line: 330, column: 8)
!297 = !DILocation(line: 330, column: 8, scope: !60, inlinedAt: !90)
!298 = !DILocation(line: 332, column: 12, scope: !299, inlinedAt: !90)
!299 = distinct !DILexicalBlock(scope: !300, file: !38, line: 332, column: 12)
!300 = distinct !DILexicalBlock(scope: !296, file: !38, line: 331, column: 6)
!301 = !DILocation(line: 332, column: 19, scope: !299, inlinedAt: !90)
!302 = !DILocation(line: 332, column: 28, scope: !299, inlinedAt: !90)
!303 = !DILocation(line: 332, column: 12, scope: !300, inlinedAt: !90)
!304 = !DILocation(line: 338, column: 3, scope: !305, inlinedAt: !90)
!305 = distinct !DILexicalBlock(scope: !299, file: !38, line: 333, column: 3)
!306 = !DILocation(line: 0, scope: !307, inlinedAt: !90)
!307 = distinct !DILexicalBlock(scope: !68, file: !38, line: 364, column: 6)
!308 = distinct !{!308, !309, !310}
!309 = !DILocation(line: 325, column: 7, scope: !55)
!310 = !DILocation(line: 368, column: 2, scope: !55)
!311 = !DILocation(line: 345, column: 8, scope: !60, inlinedAt: !90)
!312 = !DILocation(line: 346, column: 4, scope: !60, inlinedAt: !90)
!313 = !DILocation(line: 346, column: 13, scope: !60, inlinedAt: !90)
!314 = !DILocation(line: 346, column: 30, scope: !60, inlinedAt: !90)
!315 = !DILocation(line: 346, column: 34, scope: !62, inlinedAt: !90)
!316 = !DILocation(line: 347, column: 9, scope: !64, inlinedAt: !90)
!317 = !DILocation(line: 347, column: 6, scope: !60, inlinedAt: !90)
!318 = !DILocation(line: 348, column: 6, scope: !60, inlinedAt: !90)
!319 = distinct !{!319, !320, !321}
!320 = !DILocation(line: 346, column: 4, scope: !60)
!321 = !DILocation(line: 348, column: 8, scope: !60)
!322 = !DILocation(line: 349, column: 8, scope: !60, inlinedAt: !90)
!323 = !DILocation(line: 353, column: 8, scope: !67, inlinedAt: !90)
!324 = !DILocation(line: 353, column: 22, scope: !67, inlinedAt: !90)
!325 = !DILocation(line: 353, column: 30, scope: !67, inlinedAt: !90)
!326 = !DILocation(line: 353, column: 34, scope: !66, inlinedAt: !90)
!327 = !DILocation(line: 354, column: 9, scope: !70, inlinedAt: !90)
!328 = !DILocation(line: 354, column: 6, scope: !67, inlinedAt: !90)
!329 = distinct !{!329, !330, !331}
!330 = !DILocation(line: 353, column: 8, scope: !67)
!331 = !DILocation(line: 355, column: 5, scope: !67)
!332 = !DILocation(line: 356, column: 27, scope: !333, inlinedAt: !90)
!333 = distinct !DILexicalBlock(scope: !67, file: !38, line: 356, column: 12)
!334 = !DILocation(line: 356, column: 18, scope: !333, inlinedAt: !90)
!335 = !DILocation(line: 356, column: 12, scope: !67, inlinedAt: !90)
!336 = !DILocation(line: 365, column: 24, scope: !307, inlinedAt: !90)
!337 = !DILocation(line: 357, column: 34, scope: !333, inlinedAt: !90)
!338 = !DILocation(line: 375, column: 16, scope: !72, inlinedAt: !90)
!339 = !DILocation(line: 375, column: 50, scope: !72, inlinedAt: !90)
!340 = !DILocation(line: 375, column: 14, scope: !72, inlinedAt: !90)
!341 = !DILocation(line: 377, column: 7, scope: !72, inlinedAt: !90)
!342 = !DILocation(line: 377, column: 14, scope: !72, inlinedAt: !90)
!343 = !DILocation(line: 381, column: 24, scope: !74, inlinedAt: !90)
!344 = !DILocation(line: 381, column: 12, scope: !75, inlinedAt: !90)
!345 = !DILocation(line: 374, column: 14, scope: !72, inlinedAt: !90)
!346 = !DILocation(line: 382, column: 10, scope: !347, inlinedAt: !90)
!347 = distinct !DILexicalBlock(scope: !75, file: !38, line: 382, column: 8)
!348 = !DILocation(line: 382, column: 8, scope: !75, inlinedAt: !90)
!349 = !DILocation(line: 0, scope: !350, inlinedAt: !90)
!350 = distinct !DILexicalBlock(scope: !347, file: !38, line: 383, column: 6)
!351 = !DILocation(line: 0, scope: !83, inlinedAt: !90)
!352 = distinct !{!352, !353, !354}
!353 = !DILocation(line: 377, column: 7, scope: !72)
!354 = !DILocation(line: 406, column: 2, scope: !72)
!355 = !DILocation(line: 390, column: 30, scope: !75, inlinedAt: !90)
!356 = !DILocation(line: 390, column: 34, scope: !77, inlinedAt: !90)
!357 = !DILocation(line: 391, column: 9, scope: !79, inlinedAt: !90)
!358 = !DILocation(line: 391, column: 6, scope: !75, inlinedAt: !90)
!359 = !DILocation(line: 390, column: 4, scope: !75, inlinedAt: !90)
!360 = !DILocation(line: 392, column: 6, scope: !75, inlinedAt: !90)
!361 = !DILocation(line: 390, column: 13, scope: !75, inlinedAt: !90)
!362 = distinct !{!362, !363, !364}
!363 = !DILocation(line: 390, column: 4, scope: !75)
!364 = !DILocation(line: 392, column: 8, scope: !75)
!365 = !DILocation(line: 393, column: 8, scope: !75, inlinedAt: !90)
!366 = !DILocation(line: 397, column: 8, scope: !82, inlinedAt: !90)
!367 = !DILocation(line: 0, scope: !82, inlinedAt: !90)
!368 = !DILocation(line: 397, column: 17, scope: !82, inlinedAt: !90)
!369 = !DILocation(line: 397, column: 29, scope: !82, inlinedAt: !90)
!370 = !DILocation(line: 397, column: 33, scope: !81, inlinedAt: !90)
!371 = !DILocation(line: 398, column: 15, scope: !85, inlinedAt: !90)
!372 = !DILocation(line: 398, column: 12, scope: !82, inlinedAt: !90)
!373 = distinct !{!373, !374, !375}
!374 = !DILocation(line: 397, column: 8, scope: !82)
!375 = !DILocation(line: 399, column: 5, scope: !82)
!376 = !DILocation(line: 405, column: 22, scope: !83, inlinedAt: !90)
!377 = !DILocation(line: 400, column: 12, scope: !82, inlinedAt: !90)
!378 = !DILocation(line: 401, column: 34, scope: !379, inlinedAt: !90)
!379 = distinct !DILexicalBlock(scope: !82, file: !38, line: 400, column: 12)
!380 = !DILocation(line: 408, column: 3, scope: !37, inlinedAt: !90)
!381 = !DILocation(line: 409, column: 1, scope: !37, inlinedAt: !90)
!382 = !DILocation(line: 150, column: 3, scope: !19)
!383 = !DILocation(line: 0, scope: !384)
!384 = distinct !DILexicalBlock(scope: !19, file: !1, line: 137, column: 7)
!385 = !DILocation(line: 153, column: 1, scope: !19)
!386 = distinct !DISubprogram(name: "critical_factorization", scope: !38, file: !38, line: 91, type: !387, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !390)
!387 = !DISubroutineType(types: !388)
!388 = !{!10, !8, !10, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!390 = !{!391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !404, !406, !409}
!391 = !DILocalVariable(name: "needle", arg: 1, scope: !386, file: !38, line: 91, type: !8)
!392 = !DILocalVariable(name: "needle_len", arg: 2, scope: !386, file: !38, line: 91, type: !10)
!393 = !DILocalVariable(name: "period", arg: 3, scope: !386, file: !38, line: 92, type: !389)
!394 = !DILocalVariable(name: "max_suffix", scope: !386, file: !38, line: 95, type: !10)
!395 = !DILocalVariable(name: "max_suffix_rev", scope: !386, file: !38, line: 95, type: !10)
!396 = !DILocalVariable(name: "j", scope: !386, file: !38, line: 96, type: !10)
!397 = !DILocalVariable(name: "k", scope: !386, file: !38, line: 97, type: !10)
!398 = !DILocalVariable(name: "p", scope: !386, file: !38, line: 98, type: !10)
!399 = !DILocalVariable(name: "a", scope: !386, file: !38, line: 99, type: !4)
!400 = !DILocalVariable(name: "b", scope: !386, file: !38, line: 99, type: !4)
!401 = !DILocalVariable(name: "__x", scope: !402, file: !38, line: 116, type: !9)
!402 = distinct !DILexicalBlock(scope: !403, file: !38, line: 116, column: 11)
!403 = distinct !DILexicalBlock(scope: !386, file: !38, line: 115, column: 5)
!404 = !DILocalVariable(name: "__x", scope: !405, file: !38, line: 117, type: !9)
!405 = distinct !DILexicalBlock(scope: !403, file: !38, line: 117, column: 11)
!406 = !DILocalVariable(name: "__x", scope: !407, file: !38, line: 151, type: !9)
!407 = distinct !DILexicalBlock(scope: !408, file: !38, line: 151, column: 11)
!408 = distinct !DILexicalBlock(scope: !386, file: !38, line: 150, column: 5)
!409 = !DILocalVariable(name: "__x", scope: !410, file: !38, line: 152, type: !9)
!410 = distinct !DILexicalBlock(scope: !408, file: !38, line: 152, column: 11)
!411 = !DILocation(line: 91, column: 46, scope: !386)
!412 = !DILocation(line: 91, column: 61, scope: !386)
!413 = !DILocation(line: 92, column: 12, scope: !386)
!414 = !DILocation(line: 95, column: 10, scope: !386)
!415 = !DILocation(line: 96, column: 10, scope: !386)
!416 = !DILocation(line: 98, column: 10, scope: !386)
!417 = !DILocation(line: 97, column: 10, scope: !386)
!418 = !DILocation(line: 114, column: 3, scope: !386)
!419 = !DILocation(line: 114, column: 16, scope: !386)
!420 = !DILocation(line: 143, column: 11, scope: !386)
!421 = !DILocation(line: 95, column: 22, scope: !386)
!422 = !DILocation(line: 149, column: 3, scope: !386)
!423 = !DILocation(line: 116, column: 11, scope: !402)
!424 = !DILocation(line: 99, column: 17, scope: !386)
!425 = !DILocation(line: 117, column: 11, scope: !405)
!426 = !DILocation(line: 99, column: 20, scope: !386)
!427 = !DILocation(line: 118, column: 13, scope: !428)
!428 = distinct !DILexicalBlock(scope: !403, file: !38, line: 118, column: 11)
!429 = !DILocation(line: 118, column: 11, scope: !403)
!430 = !DILocation(line: 123, column: 10, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !38, line: 119, column: 2)
!432 = !DILocation(line: 124, column: 2, scope: !431)
!433 = !DILocation(line: 125, column: 18, scope: !434)
!434 = distinct !DILexicalBlock(scope: !428, file: !38, line: 125, column: 16)
!435 = !DILocation(line: 125, column: 16, scope: !428)
!436 = !DILocation(line: 128, column: 10, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !38, line: 128, column: 8)
!438 = distinct !DILexicalBlock(scope: !434, file: !38, line: 126, column: 2)
!439 = !DILocation(line: 128, column: 8, scope: !438)
!440 = !DILocation(line: 129, column: 6, scope: !437)
!441 = !DILocation(line: 132, column: 10, scope: !442)
!442 = distinct !DILexicalBlock(scope: !437, file: !38, line: 131, column: 6)
!443 = !DILocation(line: 139, column: 18, scope: !444)
!444 = distinct !DILexicalBlock(scope: !434, file: !38, line: 137, column: 2)
!445 = !DILocation(line: 0, scope: !444)
!446 = !DILocation(line: 114, column: 12, scope: !386)
!447 = distinct !{!447, !418, !448}
!448 = !DILocation(line: 142, column: 5, scope: !386)
!449 = !DILocation(line: 151, column: 11, scope: !407)
!450 = !DILocation(line: 152, column: 11, scope: !410)
!451 = !DILocation(line: 153, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !408, file: !38, line: 153, column: 11)
!453 = !DILocation(line: 153, column: 11, scope: !408)
!454 = !DILocation(line: 158, column: 10, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !38, line: 154, column: 2)
!456 = !DILocation(line: 159, column: 2, scope: !455)
!457 = !DILocation(line: 160, column: 18, scope: !458)
!458 = distinct !DILexicalBlock(scope: !452, file: !38, line: 160, column: 16)
!459 = !DILocation(line: 160, column: 16, scope: !452)
!460 = !DILocation(line: 163, column: 10, scope: !461)
!461 = distinct !DILexicalBlock(scope: !462, file: !38, line: 163, column: 8)
!462 = distinct !DILexicalBlock(scope: !458, file: !38, line: 161, column: 2)
!463 = !DILocation(line: 163, column: 8, scope: !462)
!464 = !DILocation(line: 164, column: 6, scope: !461)
!465 = !DILocation(line: 167, column: 10, scope: !466)
!466 = distinct !DILexicalBlock(scope: !461, file: !38, line: 166, column: 6)
!467 = !DILocation(line: 174, column: 22, scope: !468)
!468 = distinct !DILexicalBlock(scope: !458, file: !38, line: 172, column: 2)
!469 = !DILocation(line: 0, scope: !468)
!470 = !DILocation(line: 149, column: 12, scope: !386)
!471 = !DILocation(line: 149, column: 16, scope: !386)
!472 = distinct !{!472, !422, !473}
!473 = !DILocation(line: 177, column: 5, scope: !386)
!474 = !DILocation(line: 0, scope: !455)
!475 = !DILocation(line: 146, column: 18, scope: !386)
!476 = !DILocation(line: 181, column: 22, scope: !477)
!477 = distinct !DILexicalBlock(scope: !386, file: !38, line: 181, column: 7)
!478 = !DILocation(line: 181, column: 39, scope: !477)
!479 = !DILocation(line: 181, column: 26, scope: !477)
!480 = !DILocation(line: 181, column: 7, scope: !386)
!481 = !DILocation(line: 183, column: 11, scope: !386)
!482 = !DILocation(line: 184, column: 3, scope: !386)
!483 = !DILocation(line: 0, scope: !386)
!484 = !DILocation(line: 0, scope: !477)
!485 = !DILocation(line: 185, column: 1, scope: !386)
