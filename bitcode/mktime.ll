; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/mktime.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/mktime.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@_DAYS_BEFORE_MONTH = internal unnamed_addr constant [12 x i32] [i32 0, i32 31, i32 59, i32 90, i32 120, i32 151, i32 181, i32 212, i32 243, i32 273, i32 304, i32 334], align 16, !dbg !0
@_daylight = external dso_local local_unnamed_addr global i32, align 4
@DAYS_IN_MONTH = internal unnamed_addr constant [12 x i32] [i32 31, i32 28, i32 31, i32 30, i32 31, i32 30, i32 31, i32 31, i32 30, i32 31, i32 30, i32 31], align 16, !dbg !11
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @mktime(%struct.tm* nocapture) local_unnamed_addr #0 !dbg !21 {
  %2 = tail call %struct.__tzinfo_struct* @__gettzinfo() #3, !dbg !89
  tail call fastcc void @validate_structure(%struct.tm* %0) #4, !dbg !91
  %3 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0, !dbg !92
  %4 = load i32, i32* %3, align 8, !dbg !92, !tbaa !93
  %5 = sext i32 %4 to i64, !dbg !100
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1, !dbg !101
  %7 = load i32, i32* %6, align 4, !dbg !101, !tbaa !102
  %8 = sext i32 %7 to i64, !dbg !103
  %9 = mul nsw i64 %8, 60, !dbg !104
  %10 = add nsw i64 %9, %5, !dbg !105
  %11 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2, !dbg !106
  %12 = load i32, i32* %11, align 8, !dbg !106, !tbaa !107
  %13 = sext i32 %12 to i64, !dbg !108
  %14 = mul nsw i64 %13, 3600, !dbg !109
  %15 = add nsw i64 %10, %14, !dbg !110
  %16 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !111
  %17 = load i32, i32* %16, align 4, !dbg !111, !tbaa !112
  %18 = add nsw i32 %17, -1, !dbg !113
  %19 = sext i32 %18 to i64, !dbg !114
  %20 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4, !dbg !115
  %21 = load i32, i32* %20, align 8, !dbg !115, !tbaa !116
  %22 = sext i32 %21 to i64, !dbg !117
  %23 = getelementptr inbounds [12 x i32], [12 x i32]* @_DAYS_BEFORE_MONTH, i64 0, i64 %22, !dbg !117
  %24 = load i32, i32* %23, align 4, !dbg !117, !tbaa !118
  %25 = sext i32 %24 to i64, !dbg !117
  %26 = add nsw i64 %25, %19, !dbg !119
  %27 = icmp sgt i32 %21, 1, !dbg !120
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !dbg !122, !tbaa !124
  %30 = and i32 %29, 3, !dbg !125
  %31 = icmp eq i32 %30, 0, !dbg !125
  %32 = and i1 %27, %31, !dbg !126
  br i1 %32, label %33, label %42, !dbg !126

; <label>:33:                                     ; preds = %1
  %34 = srem i32 %29, 100, !dbg !125
  %35 = icmp eq i32 %34, 0, !dbg !125
  br i1 %35, label %36, label %40, !dbg !125

; <label>:36:                                     ; preds = %33
  %37 = add nsw i32 %29, 1900, !dbg !125
  %38 = srem i32 %37, 400, !dbg !125
  %39 = icmp eq i32 %38, 0, !dbg !125
  br i1 %39, label %40, label %42, !dbg !127

; <label>:40:                                     ; preds = %33, %36
  %41 = add nsw i64 %26, 1, !dbg !128
  br label %42, !dbg !127

; <label>:42:                                     ; preds = %1, %40, %36
  %43 = phi i64 [ %41, %40 ], [ %26, %36 ], [ %26, %1 ], !dbg !129
  %44 = trunc i64 %43 to i32, !dbg !130
  %45 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 7, !dbg !131
  store i32 %44, i32* %45, align 4, !dbg !132, !tbaa !133
  %46 = add i32 %29, 10000, !dbg !134
  %47 = icmp ugt i32 %46, 20000, !dbg !134
  br i1 %47, label %235, label %48, !dbg !134

; <label>:48:                                     ; preds = %42
  %49 = icmp sgt i32 %29, 70, !dbg !136
  br i1 %49, label %50, label %68, !dbg !138

; <label>:50:                                     ; preds = %48, %63
  %51 = phi i64 [ %65, %63 ], [ %43, %48 ]
  %52 = phi i32 [ %66, %63 ], [ 70, %48 ]
  %53 = and i32 %52, 3, !dbg !139
  %54 = icmp eq i32 %53, 0, !dbg !139
  br i1 %54, label %55, label %63, !dbg !139

; <label>:55:                                     ; preds = %50
  %56 = urem i32 %52, 100, !dbg !139
  %57 = icmp eq i32 %56, 0, !dbg !139
  br i1 %57, label %58, label %62, !dbg !139

; <label>:58:                                     ; preds = %55
  %59 = add nuw nsw i32 %52, 1900, !dbg !139
  %60 = urem i32 %59, 400, !dbg !139
  %61 = icmp eq i32 %60, 0, !dbg !139
  br i1 %61, label %62, label %63, !dbg !139

; <label>:62:                                     ; preds = %55, %58
  br label %63, !dbg !139

; <label>:63:                                     ; preds = %50, %58, %62
  %64 = phi i64 [ 366, %62 ], [ 365, %58 ], [ 365, %50 ]
  %65 = add nsw i64 %64, %51, !dbg !143
  %66 = add nuw nsw i32 %52, 1, !dbg !144
  %67 = icmp eq i32 %66, %29, !dbg !145
  br i1 %67, label %104, label %50, !dbg !146, !llvm.loop !147

; <label>:68:                                     ; preds = %48
  %69 = icmp eq i32 %29, 70, !dbg !149
  br i1 %69, label %104, label %70, !dbg !151

; <label>:70:                                     ; preds = %68
  %71 = icmp slt i32 %29, 69, !dbg !152
  br i1 %71, label %72, label %100, !dbg !156

; <label>:72:                                     ; preds = %70, %84
  %73 = phi i1 [ %90, %84 ], [ false, %70 ]
  %74 = phi i64 [ %86, %84 ], [ %43, %70 ]
  %75 = phi i32 [ %87, %84 ], [ 69, %70 ]
  br i1 %73, label %76, label %84, !dbg !157

; <label>:76:                                     ; preds = %72
  %77 = srem i32 %75, 100, !dbg !157
  %78 = icmp eq i32 %77, 0, !dbg !157
  br i1 %78, label %79, label %83, !dbg !157

; <label>:79:                                     ; preds = %76
  %80 = add nsw i32 %75, 1900, !dbg !157
  %81 = srem i32 %80, 400, !dbg !157
  %82 = icmp eq i32 %81, 0, !dbg !157
  br i1 %82, label %83, label %84, !dbg !157

; <label>:83:                                     ; preds = %76, %79
  br label %84, !dbg !157

; <label>:84:                                     ; preds = %72, %79, %83
  %85 = phi i64 [ 366, %83 ], [ 365, %79 ], [ 365, %72 ]
  %86 = sub nsw i64 %74, %85, !dbg !158
  %87 = add nsw i32 %75, -1, !dbg !159
  %88 = icmp sgt i32 %87, %29, !dbg !152
  %89 = and i32 %87, 3, !dbg !160
  %90 = icmp eq i32 %89, 0, !dbg !160
  br i1 %88, label %72, label %91, !dbg !156, !llvm.loop !161

; <label>:91:                                     ; preds = %84
  br i1 %90, label %92, label %100, !dbg !163

; <label>:92:                                     ; preds = %91
  %93 = srem i32 %29, 100, !dbg !163
  %94 = icmp eq i32 %93, 0, !dbg !163
  br i1 %94, label %95, label %99, !dbg !163

; <label>:95:                                     ; preds = %92
  %96 = add nsw i32 %29, 1900, !dbg !163
  %97 = srem i32 %96, 400, !dbg !163
  %98 = icmp eq i32 %97, 0, !dbg !163
  br i1 %98, label %99, label %100, !dbg !163

; <label>:99:                                     ; preds = %92, %95
  br label %100, !dbg !163

; <label>:100:                                    ; preds = %70, %91, %95, %99
  %101 = phi i64 [ %86, %99 ], [ %86, %95 ], [ %86, %91 ], [ %43, %70 ]
  %102 = phi i64 [ 366, %99 ], [ 365, %95 ], [ 365, %91 ], [ 365, %70 ]
  %103 = sub nsw i64 %101, %102, !dbg !164
  br label %104, !dbg !165

; <label>:104:                                    ; preds = %63, %68, %100
  %105 = phi i32 [ %29, %100 ], [ 70, %68 ], [ %29, %63 ], !dbg !166
  %106 = phi i64 [ %103, %100 ], [ %43, %68 ], [ %65, %63 ], !dbg !167
  %107 = mul nsw i64 %106, 86400, !dbg !168
  %108 = add nsw i64 %15, %107, !dbg !169
  tail call void @__tz_lock() #3, !dbg !170
  tail call void @_tzset_unlocked() #3, !dbg !171
  %109 = load i32, i32* @_daylight, align 4, !dbg !172, !tbaa !118
  %110 = icmp eq i32 %109, 0, !dbg !172
  br i1 %110, label %111, label %114, !dbg !173

; <label>:111:                                    ; preds = %104
  %112 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !174
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8, !dbg !176
  br label %220, !dbg !177

; <label>:114:                                    ; preds = %104
  %115 = load i32, i32* %28, align 4, !dbg !178, !tbaa !124
  %116 = add nsw i32 %115, 1900, !dbg !179
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8, !dbg !181
  %118 = load i32, i32* %117, align 8, !dbg !181, !tbaa !182
  %119 = icmp slt i32 %118, 1, !dbg !183
  %120 = select i1 %119, i32 %118, i32 1, !dbg !184
  %121 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 1, !dbg !186
  %122 = load i32, i32* %121, align 4, !dbg !186, !tbaa !187
  %123 = icmp eq i32 %116, %122, !dbg !189
  br i1 %123, label %130, label %124, !dbg !190

; <label>:124:                                    ; preds = %114
  %125 = tail call i32 @__tzcalc_limits(i32 %116) #3, !dbg !191
  %126 = icmp eq i32 %125, 0, !dbg !191
  br i1 %126, label %127, label %130, !dbg !192

; <label>:127:                                    ; preds = %124
  %128 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 6, !dbg !193
  %129 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !174
  br label %212, !dbg !192

; <label>:130:                                    ; preds = %124, %114
  %131 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 6, !dbg !194
  %132 = load i64, i64* %131, align 8, !dbg !194, !tbaa !195
  %133 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 5, !dbg !197
  %134 = load i64, i64* %133, align 8, !dbg !197, !tbaa !198
  %135 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !199
  %136 = load i64, i64* %135, align 8, !dbg !199, !tbaa !195
  %137 = sub nsw i64 %134, %136, !dbg !200
  %138 = icmp sge i64 %108, %137, !dbg !202
  %139 = sub nsw i64 %134, %132, !dbg !203
  %140 = icmp slt i64 %108, %139, !dbg !204
  %141 = and i1 %140, %138, !dbg !205
  br i1 %141, label %212, label %142, !dbg !205

; <label>:142:                                    ; preds = %130
  %143 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 5, !dbg !206
  %144 = load i64, i64* %143, align 8, !dbg !206, !tbaa !198
  %145 = sub nsw i64 %144, %132, !dbg !207
  %146 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 0, !dbg !209
  %147 = load i32, i32* %146, align 8, !dbg !209, !tbaa !210
  %148 = icmp eq i32 %147, 0, !dbg !211
  %149 = icmp sge i64 %108, %145, !dbg !212
  %150 = icmp slt i64 %108, %137, !dbg !212
  %151 = and i1 %150, %149, !dbg !213
  %152 = or i1 %150, %149, !dbg !214
  %153 = select i1 %148, i1 %152, i1 %151, !dbg !211
  %154 = zext i1 %153 to i32, !dbg !211
  %155 = icmp sgt i32 %120, -1, !dbg !215
  %156 = xor i32 %120, %154, !dbg !216
  %157 = icmp eq i32 %156, 1, !dbg !217
  %158 = and i1 %155, %157, !dbg !218
  br i1 %158, label %159, label %212, !dbg !218

; <label>:159:                                    ; preds = %142
  %160 = sub nsw i64 %136, %132, !dbg !219
  %161 = trunc i64 %160 to i32, !dbg !220
  %162 = sub nsw i32 0, %161, !dbg !222
  %163 = select i1 %153, i32 %161, i32 %162, !dbg !224
  %164 = load i32, i32* %3, align 8, !dbg !225, !tbaa !93
  %165 = add nsw i32 %164, %163, !dbg !225
  store i32 %165, i32* %3, align 8, !dbg !225, !tbaa !93
  %166 = sext i32 %163 to i64, !dbg !226
  %167 = add nsw i64 %108, %166, !dbg !227
  %168 = load i32, i32* %16, align 4, !dbg !228, !tbaa !112
  tail call fastcc void @validate_structure(%struct.tm* nonnull %0) #4, !dbg !230
  %169 = load i32, i32* %16, align 4, !dbg !231, !tbaa !112
  %170 = sub nsw i32 %169, %168, !dbg !232
  %171 = icmp eq i32 %170, 0, !dbg !233
  br i1 %171, label %212, label %172, !dbg !235

; <label>:172:                                    ; preds = %159
  %173 = icmp sgt i32 %170, 1, !dbg !236
  %174 = icmp slt i32 %170, -1, !dbg !239
  %175 = select i1 %174, i32 1, i32 %170, !dbg !241
  %176 = select i1 %173, i32 -1, i32 %175, !dbg !242
  %177 = sext i32 %176 to i64, !dbg !243
  %178 = add nsw i64 %106, %177, !dbg !244
  %179 = load i32, i32* %45, align 4, !dbg !245, !tbaa !133
  %180 = add nsw i32 %179, %176, !dbg !245
  store i32 %180, i32* %45, align 4, !dbg !245, !tbaa !133
  %181 = icmp slt i32 %180, 0, !dbg !247
  br i1 %181, label %182, label %196, !dbg !248

; <label>:182:                                    ; preds = %172
  %183 = add nsw i32 %105, -1, !dbg !249
  %184 = and i32 %183, 3, !dbg !251
  %185 = icmp eq i32 %184, 0, !dbg !251
  br i1 %185, label %186, label %194, !dbg !251

; <label>:186:                                    ; preds = %182
  %187 = srem i32 %183, 100, !dbg !251
  %188 = icmp eq i32 %187, 0, !dbg !251
  br i1 %188, label %189, label %194, !dbg !251

; <label>:189:                                    ; preds = %186
  %190 = add nsw i32 %105, 1899, !dbg !251
  %191 = srem i32 %190, 400, !dbg !251
  %192 = icmp eq i32 %191, 0, !dbg !251
  %193 = select i1 %192, i32 365, i32 364, !dbg !251
  br label %194, !dbg !251

; <label>:194:                                    ; preds = %186, %189, %182
  %195 = phi i32 [ 364, %182 ], [ 365, %186 ], [ %193, %189 ]
  store i32 %195, i32* %45, align 4, !dbg !252, !tbaa !133
  br label %212, !dbg !253

; <label>:196:                                    ; preds = %172
  %197 = and i32 %105, 3, !dbg !254
  %198 = icmp eq i32 %197, 0, !dbg !254
  br i1 %198, label %199, label %207, !dbg !254

; <label>:199:                                    ; preds = %196
  %200 = srem i32 %105, 100, !dbg !254
  %201 = icmp eq i32 %200, 0, !dbg !254
  br i1 %201, label %202, label %207, !dbg !254

; <label>:202:                                    ; preds = %199
  %203 = add nsw i32 %105, 1900, !dbg !254
  %204 = srem i32 %203, 400, !dbg !254
  %205 = icmp eq i32 %204, 0, !dbg !254
  %206 = select i1 %205, i32 366, i32 365, !dbg !254
  br label %207, !dbg !254

; <label>:207:                                    ; preds = %199, %202, %196
  %208 = phi i32 [ 365, %196 ], [ 366, %199 ], [ %206, %202 ]
  %209 = icmp slt i32 %180, %208, !dbg !256
  br i1 %209, label %212, label %210, !dbg !258

; <label>:210:                                    ; preds = %207
  %211 = sub nsw i32 %180, %208, !dbg !259
  store i32 %211, i32* %45, align 4, !dbg !259, !tbaa !133
  br label %212, !dbg !260

; <label>:212:                                    ; preds = %127, %210, %194, %159, %207, %130, %142
  %213 = phi i64* [ %129, %127 ], [ %135, %210 ], [ %135, %194 ], [ %135, %159 ], [ %135, %207 ], [ %135, %130 ], [ %135, %142 ], !dbg !174
  %214 = phi i64* [ %128, %127 ], [ %131, %210 ], [ %131, %194 ], [ %131, %159 ], [ %131, %207 ], [ %131, %130 ], [ %131, %142 ], !dbg !193
  %215 = phi i32 [ %120, %127 ], [ %154, %210 ], [ %154, %194 ], [ %154, %159 ], [ %154, %207 ], [ %120, %130 ], [ %154, %142 ], !dbg !129
  %216 = phi i64 [ %106, %127 ], [ %178, %210 ], [ %178, %194 ], [ %106, %159 ], [ %178, %207 ], [ %106, %130 ], [ %106, %142 ], !dbg !128
  %217 = phi i64 [ %108, %127 ], [ %167, %210 ], [ %167, %194 ], [ %167, %159 ], [ %167, %207 ], [ %108, %130 ], [ %108, %142 ], !dbg !169
  %218 = icmp eq i32 %215, 1, !dbg !261
  %219 = select i1 %218, i64* %214, i64* %213, !dbg !177
  br label %220, !dbg !177

; <label>:220:                                    ; preds = %212, %111
  %221 = phi i32* [ %117, %212 ], [ %113, %111 ], !dbg !176
  %222 = phi i64 [ %217, %212 ], [ %108, %111 ]
  %223 = phi i64 [ %216, %212 ], [ %106, %111 ]
  %224 = phi i32 [ %215, %212 ], [ 0, %111 ]
  %225 = phi i64* [ %219, %212 ], [ %112, %111 ]
  %226 = load i64, i64* %225, align 8, !dbg !262, !tbaa !195
  %227 = add nsw i64 %226, %222, !dbg !262
  tail call void @__tz_unlock() #3, !dbg !263
  store i32 %224, i32* %221, align 8, !dbg !264, !tbaa !182
  %228 = add nsw i64 %223, 4, !dbg !265
  %229 = srem i64 %228, 7, !dbg !267
  %230 = trunc i64 %229 to i32, !dbg !268
  %231 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 6, !dbg !269
  %232 = icmp slt i32 %230, 0, !dbg !270
  %233 = add nsw i32 %230, 7, !dbg !271
  %234 = select i1 %232, i32 %233, i32 %230, !dbg !272
  store i32 %234, i32* %231, align 8, !dbg !273, !tbaa !274
  br label %235, !dbg !275

; <label>:235:                                    ; preds = %42, %220
  %236 = phi i64 [ %227, %220 ], [ -1, %42 ], !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  ret i64 %236, !dbg !276
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @validate_structure(%struct.tm* nocapture) unnamed_addr #0 !dbg !277 {
  %2 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0, !dbg !292
  %3 = load i32, i32* %2, align 8, !dbg !292, !tbaa !93
  %4 = icmp ugt i32 %3, 59, !dbg !294
  br i1 %4, label %8, label %5, !dbg !294

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %7 = load i32, i32* %6, align 4, !dbg !295, !tbaa !102
  br label %20, !dbg !294

; <label>:8:                                      ; preds = %1
  %9 = tail call i64 @div(i32 %3, i32 60) #3, !dbg !297
  %10 = trunc i64 %9 to i32, !dbg !297
  %11 = lshr i64 %9, 32, !dbg !297
  %12 = trunc i64 %11 to i32, !dbg !297
  %13 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1, !dbg !300
  %14 = load i32, i32* %13, align 4, !dbg !301, !tbaa !102
  %15 = add nsw i32 %14, %10, !dbg !301
  store i32 %15, i32* %13, align 4, !dbg !301, !tbaa !102
  store i32 %12, i32* %2, align 8, !dbg !302, !tbaa !93
  %16 = icmp slt i32 %12, 0, !dbg !304
  br i1 %16, label %17, label %20, !dbg !305

; <label>:17:                                     ; preds = %8
  %18 = add nsw i32 %12, 60, !dbg !306
  store i32 %18, i32* %2, align 8, !dbg !306, !tbaa !93
  %19 = add nsw i32 %15, -1, !dbg !308
  store i32 %19, i32* %13, align 4, !dbg !308, !tbaa !102
  br label %20, !dbg !309

; <label>:20:                                     ; preds = %5, %8, %17
  %21 = phi i32* [ %6, %5 ], [ %13, %8 ], [ %13, %17 ], !dbg !295
  %22 = phi i32 [ %7, %5 ], [ %15, %8 ], [ %19, %17 ], !dbg !295
  %23 = icmp ugt i32 %22, 59, !dbg !310
  br i1 %23, label %27, label %24, !dbg !310

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %26 = load i32, i32* %25, align 8, !dbg !311, !tbaa !107
  br label %39, !dbg !310

; <label>:27:                                     ; preds = %20
  %28 = tail call i64 @div(i32 %22, i32 60) #3, !dbg !313
  %29 = trunc i64 %28 to i32, !dbg !313
  %30 = lshr i64 %28, 32, !dbg !313
  %31 = trunc i64 %30 to i32, !dbg !313
  %32 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2, !dbg !315
  %33 = load i32, i32* %32, align 8, !dbg !316, !tbaa !107
  %34 = add nsw i32 %33, %29, !dbg !316
  store i32 %34, i32* %32, align 8, !dbg !316, !tbaa !107
  store i32 %31, i32* %21, align 4, !dbg !317, !tbaa !102
  %35 = icmp slt i32 %31, 0, !dbg !319
  br i1 %35, label %36, label %39, !dbg !320

; <label>:36:                                     ; preds = %27
  %37 = add nsw i32 %31, 60, !dbg !321
  store i32 %37, i32* %21, align 4, !dbg !321, !tbaa !102
  %38 = add nsw i32 %34, -1, !dbg !323
  store i32 %38, i32* %32, align 8, !dbg !323, !tbaa !107
  br label %39, !dbg !324

; <label>:39:                                     ; preds = %24, %27, %36
  %40 = phi i32* [ %25, %24 ], [ %32, %27 ], [ %32, %36 ], !dbg !311
  %41 = phi i32 [ %26, %24 ], [ %34, %27 ], [ %38, %36 ], !dbg !311
  %42 = icmp ugt i32 %41, 23, !dbg !325
  br i1 %42, label %43, label %55, !dbg !325

; <label>:43:                                     ; preds = %39
  %44 = tail call i64 @div(i32 %41, i32 24) #3, !dbg !326
  %45 = trunc i64 %44 to i32, !dbg !326
  %46 = lshr i64 %44, 32, !dbg !326
  %47 = trunc i64 %46 to i32, !dbg !326
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !328
  %49 = load i32, i32* %48, align 4, !dbg !329, !tbaa !112
  %50 = add nsw i32 %49, %45, !dbg !329
  store i32 %50, i32* %48, align 4, !dbg !329, !tbaa !112
  store i32 %47, i32* %40, align 8, !dbg !330, !tbaa !107
  %51 = icmp slt i32 %47, 0, !dbg !332
  br i1 %51, label %52, label %55, !dbg !333

; <label>:52:                                     ; preds = %43
  %53 = add nsw i32 %47, 24, !dbg !334
  store i32 %53, i32* %40, align 8, !dbg !334, !tbaa !107
  %54 = add nsw i32 %50, -1, !dbg !336
  store i32 %54, i32* %48, align 4, !dbg !336, !tbaa !112
  br label %55, !dbg !337

; <label>:55:                                     ; preds = %39, %43, %52
  %56 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4, !dbg !338
  %57 = load i32, i32* %56, align 8, !dbg !338, !tbaa !116
  %58 = icmp ugt i32 %57, 11, !dbg !340
  br i1 %58, label %62, label %59, !dbg !340

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %61 = load i32, i32* %60, align 4, !dbg !341, !tbaa !124
  br label %74, !dbg !340

; <label>:62:                                     ; preds = %55
  %63 = tail call i64 @div(i32 %57, i32 12) #3, !dbg !343
  %64 = trunc i64 %63 to i32, !dbg !343
  %65 = lshr i64 %63, 32, !dbg !343
  %66 = trunc i64 %65 to i32, !dbg !343
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5, !dbg !345
  %68 = load i32, i32* %67, align 4, !dbg !346, !tbaa !124
  %69 = add nsw i32 %68, %64, !dbg !346
  store i32 %69, i32* %67, align 4, !dbg !346, !tbaa !124
  store i32 %66, i32* %56, align 8, !dbg !347, !tbaa !116
  %70 = icmp slt i32 %66, 0, !dbg !349
  br i1 %70, label %71, label %74, !dbg !350

; <label>:71:                                     ; preds = %62
  %72 = add nsw i32 %66, 12, !dbg !351
  store i32 %72, i32* %56, align 8, !dbg !351, !tbaa !116
  %73 = add nsw i32 %69, -1, !dbg !353
  store i32 %73, i32* %67, align 4, !dbg !353, !tbaa !124
  br label %74, !dbg !354

; <label>:74:                                     ; preds = %59, %62, %71
  %75 = phi i32* [ %60, %59 ], [ %67, %62 ], [ %67, %71 ], !dbg !341
  %76 = phi i32 [ %57, %59 ], [ %66, %62 ], [ %72, %71 ]
  %77 = phi i32 [ %61, %59 ], [ %69, %62 ], [ %73, %71 ], !dbg !341
  %78 = and i32 %77, 3, !dbg !341
  %79 = icmp eq i32 %78, 0, !dbg !341
  br i1 %79, label %80, label %88, !dbg !341

; <label>:80:                                     ; preds = %74
  %81 = srem i32 %77, 100, !dbg !341
  %82 = icmp eq i32 %81, 0, !dbg !341
  br i1 %82, label %83, label %87, !dbg !341

; <label>:83:                                     ; preds = %80
  %84 = add nsw i32 %77, 1900, !dbg !341
  %85 = srem i32 %84, 400, !dbg !341
  %86 = icmp eq i32 %85, 0, !dbg !341
  br i1 %86, label %87, label %88, !dbg !355

; <label>:87:                                     ; preds = %80, %83
  br label %88, !dbg !355

; <label>:88:                                     ; preds = %74, %83, %87
  %89 = phi i32 [ 29, %87 ], [ 28, %83 ], [ 28, %74 ]
  %90 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !356
  %91 = load i32, i32* %90, align 4, !dbg !356, !tbaa !112
  %92 = icmp slt i32 %91, 1, !dbg !358
  br i1 %92, label %93, label %163, !dbg !359

; <label>:93:                                     ; preds = %88, %121
  %94 = phi i32 [ %122, %121 ], [ %77, %88 ]
  %95 = phi i32 [ %123, %121 ], [ %76, %88 ], !dbg !291
  %96 = phi i32 [ %124, %121 ], [ %89, %88 ]
  %97 = phi i32 [ %126, %121 ], [ %91, %88 ]
  %98 = add nsw i32 %95, -1, !dbg !360
  %99 = icmp eq i32 %95, 0, !dbg !364
  br i1 %99, label %100, label %112, !dbg !365

; <label>:100:                                    ; preds = %93
  %101 = add nsw i32 %94, -1, !dbg !366
  store i32 %101, i32* %75, align 4, !dbg !366, !tbaa !124
  %102 = and i32 %101, 3, !dbg !368
  %103 = icmp eq i32 %102, 0, !dbg !368
  br i1 %103, label %104, label %114, !dbg !368

; <label>:104:                                    ; preds = %100
  %105 = srem i32 %101, 100, !dbg !368
  %106 = icmp eq i32 %105, 0, !dbg !368
  br i1 %106, label %107, label %111, !dbg !368

; <label>:107:                                    ; preds = %104
  %108 = add nsw i32 %94, 1899, !dbg !368
  %109 = srem i32 %108, 400, !dbg !368
  %110 = icmp eq i32 %109, 0, !dbg !368
  br i1 %110, label %111, label %114, !dbg !369

; <label>:111:                                    ; preds = %104, %107
  br label %114, !dbg !369

; <label>:112:                                    ; preds = %93
  %113 = icmp eq i32 %98, 1, !dbg !370
  br i1 %113, label %121, label %114, !dbg !370

; <label>:114:                                    ; preds = %111, %107, %100, %112
  %115 = phi i32 [ %94, %112 ], [ %101, %100 ], [ %101, %107 ], [ %101, %111 ]
  %116 = phi i32 [ %96, %112 ], [ 28, %100 ], [ 28, %107 ], [ 29, %111 ]
  %117 = phi i32 [ %98, %112 ], [ 11, %100 ], [ 11, %107 ], [ 11, %111 ]
  %118 = sext i32 %117 to i64, !dbg !370
  %119 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %118, !dbg !370
  %120 = load i32, i32* %119, align 4, !dbg !370, !tbaa !118
  br label %121, !dbg !370

; <label>:121:                                    ; preds = %112, %114
  %122 = phi i32 [ %115, %114 ], [ %94, %112 ]
  %123 = phi i32 [ %117, %114 ], [ 1, %112 ]
  %124 = phi i32 [ %116, %114 ], [ %96, %112 ]
  %125 = phi i32 [ %120, %114 ], [ %96, %112 ], !dbg !370
  %126 = add nsw i32 %125, %97, !dbg !371
  %127 = icmp slt i32 %126, 1, !dbg !372
  br i1 %127, label %93, label %171, !dbg !373, !llvm.loop !374

; <label>:128:                                    ; preds = %142, %163
  %129 = phi i32 [ %165, %163 ], [ %143, %142 ], !dbg !376
  %130 = phi i32 [ %166, %163 ], [ %144, %142 ], !dbg !378
  %131 = icmp eq i32 %129, 1, !dbg !376
  br i1 %131, label %136, label %132, !dbg !376

; <label>:132:                                    ; preds = %128
  %133 = sext i32 %129 to i64, !dbg !376
  %134 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %133, !dbg !376
  %135 = load i32, i32* %134, align 4, !dbg !376, !tbaa !118
  br label %136, !dbg !376

; <label>:136:                                    ; preds = %128, %132
  %137 = phi i32 [ %135, %132 ], [ %167, %128 ], !dbg !376
  %138 = icmp sgt i32 %130, %137, !dbg !379
  br i1 %138, label %139, label %172, !dbg !380

; <label>:139:                                    ; preds = %136
  br i1 %131, label %140, label %145, !dbg !381

; <label>:140:                                    ; preds = %139
  %141 = sub nsw i32 %130, %167, !dbg !383
  store i32 %141, i32* %90, align 4, !dbg !383, !tbaa !112
  store i32 2, i32* %56, align 8, !dbg !384, !tbaa !116
  br label %142, !dbg !386

; <label>:142:                                    ; preds = %140, %145
  %143 = phi i32 [ %150, %145 ], [ 2, %140 ]
  %144 = phi i32 [ %149, %145 ], [ %141, %140 ]
  br label %128, !dbg !291, !llvm.loop !387

; <label>:145:                                    ; preds = %139
  %146 = sext i32 %129 to i64, !dbg !381
  %147 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %146, !dbg !381
  %148 = load i32, i32* %147, align 4, !dbg !381, !tbaa !118
  %149 = sub nsw i32 %130, %148, !dbg !383
  store i32 %149, i32* %90, align 4, !dbg !383, !tbaa !112
  %150 = add nsw i32 %129, 1, !dbg !384
  store i32 %150, i32* %56, align 8, !dbg !384, !tbaa !116
  %151 = icmp eq i32 %150, 12, !dbg !389
  br i1 %151, label %152, label %142, !dbg !386

; <label>:152:                                    ; preds = %145
  %153 = add nsw i32 %164, 1, !dbg !390
  store i32 %153, i32* %75, align 4, !dbg !390, !tbaa !124
  store i32 0, i32* %56, align 8, !dbg !392, !tbaa !116
  %154 = and i32 %153, 3, !dbg !393
  %155 = icmp eq i32 %154, 0, !dbg !393
  br i1 %155, label %156, label %169, !dbg !393

; <label>:156:                                    ; preds = %152
  %157 = srem i32 %153, 100, !dbg !393
  %158 = icmp eq i32 %157, 0, !dbg !393
  br i1 %158, label %159, label %168, !dbg !393

; <label>:159:                                    ; preds = %156
  %160 = add nsw i32 %164, 1901, !dbg !393
  %161 = srem i32 %160, 400, !dbg !393
  %162 = icmp eq i32 %161, 0, !dbg !393
  br i1 %162, label %168, label %169, !dbg !394

; <label>:163:                                    ; preds = %88, %169
  %164 = phi i32 [ %153, %169 ], [ %77, %88 ]
  %165 = phi i32 [ 0, %169 ], [ %76, %88 ]
  %166 = phi i32 [ %149, %169 ], [ %91, %88 ]
  %167 = phi i32 [ %170, %169 ], [ %89, %88 ]
  br label %128, !dbg !376

; <label>:168:                                    ; preds = %156, %159
  br label %169, !dbg !394

; <label>:169:                                    ; preds = %168, %159, %152
  %170 = phi i32 [ 28, %152 ], [ 28, %159 ], [ 29, %168 ]
  br label %163, !dbg !376, !llvm.loop !387

; <label>:171:                                    ; preds = %121
  store i32 %123, i32* %56, align 8, !dbg !370, !tbaa !116
  store i32 %126, i32* %90, align 4, !dbg !371, !tbaa !112
  br label %172, !dbg !395

; <label>:172:                                    ; preds = %136, %171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  ret void, !dbg !395
}

; Function Attrs: noredzone
declare dso_local void @__tz_lock() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_tzset_unlocked() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__tz_unlock() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @div(i32, i32) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "_DAYS_BEFORE_MONTH", scope: !2, file: !3, line: 63, type: !13, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !10)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/mktime.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !9}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !7, line: 34, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !0}
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "DAYS_IN_MONTH", scope: !2, file: !3, line: 58, type: !13, isLocal: true, isDefinition: true)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 384, elements: !15)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!15 = !{!16}
!16 = !DISubrange(count: 12)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "mktime", scope: !3, file: !3, line: 157, type: !22, isLocal: false, isDefinition: true, scopeLine: 159, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !42)
!22 = !DISubroutineType(types: !23)
!23 = !{!6, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !26, line: 31, size: 448, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !25, file: !26, line: 32, baseType: !9, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !25, file: !26, line: 33, baseType: !9, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !25, file: !26, line: 34, baseType: !9, size: 32, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !25, file: !26, line: 35, baseType: !9, size: 32, offset: 96)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !25, file: !26, line: 36, baseType: !9, size: 32, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !25, file: !26, line: 37, baseType: !9, size: 32, offset: 160)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !25, file: !26, line: 38, baseType: !9, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !25, file: !26, line: 39, baseType: !9, size: 32, offset: 224)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !25, file: !26, line: 40, baseType: !9, size: 32, offset: 256)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !25, file: !26, line: 41, baseType: !8, size: 64, offset: 320)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !25, file: !26, line: 42, baseType: !39, size: 64, offset: 384)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !{!43, !44, !45, !46, !47, !48, !70, !73, !74, !77, !78, !79, !84}
!43 = !DILocalVariable(name: "tim_p", arg: 1, scope: !21, file: !3, line: 157, type: !24)
!44 = !DILocalVariable(name: "tim", scope: !21, file: !3, line: 160, type: !6)
!45 = !DILocalVariable(name: "days", scope: !21, file: !3, line: 161, type: !8)
!46 = !DILocalVariable(name: "year", scope: !21, file: !3, line: 162, type: !9)
!47 = !DILocalVariable(name: "isdst", scope: !21, file: !3, line: 162, type: !9)
!48 = !DILocalVariable(name: "tz", scope: !21, file: !3, line: 163, type: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !51, line: 65, baseType: !52)
!51 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !51, line: 60, size: 704, elements: !53)
!53 = !{!54, !55, !56}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !52, file: !51, line: 62, baseType: !9, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !52, file: !51, line: 63, baseType: !9, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !52, file: !51, line: 64, baseType: !57, size: 640, offset: 64)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !58, size: 640, elements: !68)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !51, line: 58, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !51, line: 49, size: 320, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !59, file: !51, line: 51, baseType: !41, size: 8)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !59, file: !51, line: 52, baseType: !9, size: 32, offset: 32)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !59, file: !51, line: 53, baseType: !9, size: 32, offset: 64)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !59, file: !51, line: 54, baseType: !9, size: 32, offset: 96)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !59, file: !51, line: 55, baseType: !9, size: 32, offset: 128)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !59, file: !51, line: 56, baseType: !6, size: 64, offset: 192)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !59, file: !51, line: 57, baseType: !8, size: 64, offset: 256)
!68 = !{!69}
!69 = !DISubrange(count: 2)
!70 = !DILocalVariable(name: "tm_isdst", scope: !71, file: !3, line: 206, type: !9)
!71 = distinct !DILexicalBlock(scope: !72, file: !3, line: 205, column: 5)
!72 = distinct !DILexicalBlock(scope: !21, file: !3, line: 204, column: 7)
!73 = !DILocalVariable(name: "y", scope: !71, file: !3, line: 207, type: !9)
!74 = !DILocalVariable(name: "startdst_dst", scope: !75, file: !3, line: 216, type: !6)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 213, column: 2)
!76 = distinct !DILexicalBlock(scope: !71, file: !3, line: 212, column: 11)
!77 = !DILocalVariable(name: "startstd_dst", scope: !75, file: !3, line: 218, type: !6)
!78 = !DILocalVariable(name: "startstd_std", scope: !75, file: !3, line: 220, type: !6)
!79 = !DILocalVariable(name: "diff", scope: !80, file: !3, line: 240, type: !9)
!80 = distinct !DILexicalBlock(scope: !81, file: !3, line: 234, column: 3)
!81 = distinct !DILexicalBlock(scope: !82, file: !3, line: 233, column: 13)
!82 = distinct !DILexicalBlock(scope: !83, file: !3, line: 226, column: 6)
!83 = distinct !DILexicalBlock(scope: !75, file: !3, line: 223, column: 8)
!84 = !DILocalVariable(name: "mday", scope: !80, file: !3, line: 246, type: !9)
!85 = !DILocation(line: 157, column: 1, scope: !21)
!86 = !DILocation(line: 160, column: 10, scope: !21)
!87 = !DILocation(line: 161, column: 8, scope: !21)
!88 = !DILocation(line: 162, column: 13, scope: !21)
!89 = !DILocation(line: 163, column: 23, scope: !21)
!90 = !DILocation(line: 163, column: 18, scope: !21)
!91 = !DILocation(line: 166, column: 3, scope: !21)
!92 = !DILocation(line: 169, column: 17, scope: !21)
!93 = !{!94, !95, i64 0}
!94 = !{!"tm", !95, i64 0, !95, i64 4, !95, i64 8, !95, i64 12, !95, i64 16, !95, i64 20, !95, i64 24, !95, i64 28, !95, i64 32, !98, i64 40, !99, i64 48}
!95 = !{!"int", !96, i64 0}
!96 = !{!"omnipotent char", !97, i64 0}
!97 = !{!"Simple C/C++ TBAA"}
!98 = !{!"long", !96, i64 0}
!99 = !{!"any pointer", !96, i64 0}
!100 = !DILocation(line: 169, column: 10, scope: !21)
!101 = !DILocation(line: 169, column: 34, scope: !21)
!102 = !{!94, !95, i64 4}
!103 = !DILocation(line: 169, column: 27, scope: !21)
!104 = !DILocation(line: 169, column: 41, scope: !21)
!105 = !DILocation(line: 169, column: 24, scope: !21)
!106 = !DILocation(line: 170, column: 13, scope: !21)
!107 = !{!94, !95, i64 8}
!108 = !DILocation(line: 170, column: 6, scope: !21)
!109 = !DILocation(line: 170, column: 21, scope: !21)
!110 = !DILocation(line: 169, column: 59, scope: !21)
!111 = !DILocation(line: 173, column: 18, scope: !21)
!112 = !{!94, !95, i64 12}
!113 = !DILocation(line: 173, column: 26, scope: !21)
!114 = !DILocation(line: 173, column: 11, scope: !21)
!115 = !DILocation(line: 174, column: 37, scope: !21)
!116 = !{!94, !95, i64 16}
!117 = !DILocation(line: 174, column: 11, scope: !21)
!118 = !{!95, !95, i64 0}
!119 = !DILocation(line: 174, column: 8, scope: !21)
!120 = !DILocation(line: 175, column: 21, scope: !121)
!121 = distinct !DILexicalBlock(scope: !21, file: !3, line: 175, column: 7)
!122 = !DILocation(line: 0, scope: !123)
!123 = distinct !DILexicalBlock(scope: !21, file: !3, line: 181, column: 7)
!124 = !{!94, !95, i64 20}
!125 = !DILocation(line: 175, column: 28, scope: !121)
!126 = !DILocation(line: 175, column: 25, scope: !121)
!127 = !DILocation(line: 175, column: 7, scope: !21)
!128 = !DILocation(line: 176, column: 9, scope: !121)
!129 = !DILocation(line: 0, scope: !21)
!130 = !DILocation(line: 179, column: 20, scope: !21)
!131 = !DILocation(line: 179, column: 10, scope: !21)
!132 = !DILocation(line: 179, column: 18, scope: !21)
!133 = !{!94, !95, i64 28}
!134 = !DILocation(line: 181, column: 30, scope: !123)
!135 = !DILocation(line: 162, column: 7, scope: !21)
!136 = !DILocation(line: 185, column: 31, scope: !137)
!137 = distinct !DILexicalBlock(scope: !21, file: !3, line: 185, column: 7)
!138 = !DILocation(line: 185, column: 7, scope: !21)
!139 = !DILocation(line: 188, column: 10, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 187, column: 7)
!141 = distinct !DILexicalBlock(scope: !142, file: !3, line: 187, column: 7)
!142 = distinct !DILexicalBlock(scope: !137, file: !3, line: 186, column: 5)
!143 = !DILocation(line: 188, column: 7, scope: !140)
!144 = !DILocation(line: 187, column: 50, scope: !140)
!145 = !DILocation(line: 187, column: 28, scope: !140)
!146 = !DILocation(line: 187, column: 7, scope: !141)
!147 = distinct !{!147, !146, !148}
!148 = !DILocation(line: 188, column: 10, scope: !141)
!149 = !DILocation(line: 190, column: 17, scope: !150)
!150 = distinct !DILexicalBlock(scope: !137, file: !3, line: 190, column: 12)
!151 = !DILocation(line: 190, column: 12, scope: !137)
!152 = !DILocation(line: 192, column: 28, scope: !153)
!153 = distinct !DILexicalBlock(scope: !154, file: !3, line: 192, column: 7)
!154 = distinct !DILexicalBlock(scope: !155, file: !3, line: 192, column: 7)
!155 = distinct !DILexicalBlock(scope: !150, file: !3, line: 191, column: 5)
!156 = !DILocation(line: 192, column: 7, scope: !154)
!157 = !DILocation(line: 193, column: 10, scope: !153)
!158 = !DILocation(line: 193, column: 7, scope: !153)
!159 = !DILocation(line: 192, column: 50, scope: !153)
!160 = !DILocation(line: 0, scope: !155)
!161 = distinct !{!161, !156, !162}
!162 = !DILocation(line: 193, column: 10, scope: !154)
!163 = !DILocation(line: 194, column: 15, scope: !155)
!164 = !DILocation(line: 194, column: 12, scope: !155)
!165 = !DILocation(line: 195, column: 5, scope: !155)
!166 = !DILocation(line: 0, scope: !137)
!167 = !DILocation(line: 0, scope: !121)
!168 = !DILocation(line: 198, column: 16, scope: !21)
!169 = !DILocation(line: 198, column: 7, scope: !21)
!170 = !DILocation(line: 200, column: 3, scope: !21)
!171 = !DILocation(line: 202, column: 3, scope: !21)
!172 = !DILocation(line: 204, column: 7, scope: !72)
!173 = !DILocation(line: 204, column: 7, scope: !21)
!174 = !DILocation(line: 277, column: 37, scope: !175)
!175 = distinct !DILexicalBlock(scope: !21, file: !3, line: 274, column: 7)
!176 = !DILocation(line: 282, column: 10, scope: !21)
!177 = !DILocation(line: 274, column: 7, scope: !21)
!178 = !DILocation(line: 207, column: 22, scope: !71)
!179 = !DILocation(line: 207, column: 30, scope: !71)
!180 = !DILocation(line: 207, column: 11, scope: !71)
!181 = !DILocation(line: 209, column: 25, scope: !71)
!182 = !{!94, !95, i64 32}
!183 = !DILocation(line: 209, column: 34, scope: !71)
!184 = !DILocation(line: 209, column: 18, scope: !71)
!185 = !DILocation(line: 206, column: 11, scope: !71)
!186 = !DILocation(line: 212, column: 20, scope: !76)
!187 = !{!188, !95, i64 4}
!188 = !{!"__tzinfo_struct", !95, i64 0, !95, i64 4, !96, i64 8}
!189 = !DILocation(line: 212, column: 13, scope: !76)
!190 = !DILocation(line: 212, column: 29, scope: !76)
!191 = !DILocation(line: 212, column: 32, scope: !76)
!192 = !DILocation(line: 212, column: 11, scope: !71)
!193 = !DILocation(line: 275, column: 37, scope: !175)
!194 = !DILocation(line: 217, column: 33, scope: !75)
!195 = !{!196, !98, i64 32}
!196 = !{!"__tzrule_struct", !96, i64 0, !95, i64 4, !95, i64 8, !95, i64 12, !95, i64 16, !98, i64 24, !98, i64 32}
!197 = !DILocation(line: 218, column: 42, scope: !75)
!198 = !{!196, !98, i64 24}
!199 = !DILocation(line: 221, column: 33, scope: !75)
!200 = !DILocation(line: 221, column: 6, scope: !75)
!201 = !DILocation(line: 220, column: 11, scope: !75)
!202 = !DILocation(line: 223, column: 12, scope: !83)
!203 = !DILocation(line: 219, column: 6, scope: !75)
!204 = !DILocation(line: 223, column: 35, scope: !83)
!205 = !DILocation(line: 223, column: 28, scope: !83)
!206 = !DILocation(line: 216, column: 49, scope: !75)
!207 = !DILocation(line: 217, column: 6, scope: !75)
!208 = !DILocation(line: 216, column: 18, scope: !75)
!209 = !DILocation(line: 227, column: 21, scope: !82)
!210 = !{!188, !95, i64 0}
!211 = !DILocation(line: 227, column: 17, scope: !82)
!212 = !DILocation(line: 0, scope: !82)
!213 = !DILocation(line: 228, column: 33, scope: !82)
!214 = !DILocation(line: 229, column: 33, scope: !82)
!215 = !DILocation(line: 233, column: 22, scope: !81)
!216 = !DILocation(line: 233, column: 39, scope: !81)
!217 = !DILocation(line: 233, column: 51, scope: !81)
!218 = !DILocation(line: 233, column: 28, scope: !81)
!219 = !DILocation(line: 241, column: 9, scope: !80)
!220 = !DILocation(line: 240, column: 16, scope: !80)
!221 = !DILocation(line: 240, column: 9, scope: !80)
!222 = !DILocation(line: 243, column: 14, scope: !223)
!223 = distinct !DILexicalBlock(scope: !80, file: !3, line: 242, column: 9)
!224 = !DILocation(line: 242, column: 9, scope: !80)
!225 = !DILocation(line: 244, column: 19, scope: !80)
!226 = !DILocation(line: 245, column: 12, scope: !80)
!227 = !DILocation(line: 245, column: 9, scope: !80)
!228 = !DILocation(line: 246, column: 23, scope: !80)
!229 = !DILocation(line: 246, column: 9, scope: !80)
!230 = !DILocation(line: 247, column: 5, scope: !80)
!231 = !DILocation(line: 248, column: 19, scope: !80)
!232 = !DILocation(line: 248, column: 27, scope: !80)
!233 = !DILocation(line: 250, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !80, file: !3, line: 250, column: 9)
!235 = !DILocation(line: 250, column: 9, scope: !80)
!236 = !DILocation(line: 252, column: 16, scope: !237)
!237 = distinct !DILexicalBlock(scope: !238, file: !3, line: 252, column: 11)
!238 = distinct !DILexicalBlock(scope: !234, file: !3, line: 250, column: 15)
!239 = !DILocation(line: 254, column: 21, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !3, line: 254, column: 16)
!241 = !DILocation(line: 254, column: 16, scope: !237)
!242 = !DILocation(line: 252, column: 11, scope: !238)
!243 = !DILocation(line: 257, column: 15, scope: !238)
!244 = !DILocation(line: 257, column: 12, scope: !238)
!245 = !DILocation(line: 259, column: 27, scope: !246)
!246 = distinct !DILexicalBlock(scope: !238, file: !3, line: 259, column: 11)
!247 = !DILocation(line: 259, column: 36, scope: !246)
!248 = !DILocation(line: 259, column: 11, scope: !238)
!249 = !DILocation(line: 260, column: 6, scope: !250)
!250 = distinct !DILexicalBlock(scope: !246, file: !3, line: 259, column: 41)
!251 = !DILocation(line: 261, column: 23, scope: !250)
!252 = !DILocation(line: 261, column: 21, scope: !250)
!253 = !DILocation(line: 262, column: 7, scope: !250)
!254 = !DILocation(line: 263, column: 13, scope: !255)
!255 = distinct !DILexicalBlock(scope: !246, file: !3, line: 262, column: 14)
!256 = !DILocation(line: 264, column: 25, scope: !257)
!257 = distinct !DILexicalBlock(scope: !255, file: !3, line: 264, column: 10)
!258 = !DILocation(line: 264, column: 10, scope: !255)
!259 = !DILocation(line: 265, column: 20, scope: !257)
!260 = !DILocation(line: 265, column: 5, scope: !257)
!261 = !DILocation(line: 274, column: 13, scope: !175)
!262 = !DILocation(line: 0, scope: !175)
!263 = !DILocation(line: 279, column: 3, scope: !21)
!264 = !DILocation(line: 282, column: 19, scope: !21)
!265 = !DILocation(line: 285, column: 31, scope: !266)
!266 = distinct !DILexicalBlock(scope: !21, file: !3, line: 285, column: 7)
!267 = !DILocation(line: 285, column: 36, scope: !266)
!268 = !DILocation(line: 285, column: 25, scope: !266)
!269 = !DILocation(line: 285, column: 15, scope: !266)
!270 = !DILocation(line: 285, column: 41, scope: !266)
!271 = !DILocation(line: 286, column: 20, scope: !266)
!272 = !DILocation(line: 285, column: 7, scope: !21)
!273 = !DILocation(line: 0, scope: !266)
!274 = !{!94, !95, i64 24}
!275 = !DILocation(line: 288, column: 3, scope: !21)
!276 = !DILocation(line: 289, column: 1, scope: !21)
!277 = distinct !DISubprogram(name: "validate_structure", scope: !3, file: !3, line: 70, type: !278, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !280)
!278 = !DISubroutineType(types: !279)
!279 = !{null, !24}
!280 = !{!281, !282, !289}
!281 = !DILocalVariable(name: "tim_p", arg: 1, scope: !277, file: !3, line: 70, type: !24)
!282 = !DILocalVariable(name: "res", scope: !277, file: !3, line: 73, type: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !284, line: 39, baseType: !285)
!284 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdlib.h", directory: "/root/.unikraft/apps/redis/build")
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !284, line: 35, size: 64, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !285, file: !284, line: 37, baseType: !9, size: 32)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !285, file: !284, line: 38, baseType: !9, size: 32, offset: 32)
!289 = !DILocalVariable(name: "days_in_feb", scope: !277, file: !3, line: 74, type: !9)
!290 = !DILocation(line: 70, column: 1, scope: !277)
!291 = !DILocation(line: 74, column: 7, scope: !277)
!292 = !DILocation(line: 77, column: 14, scope: !293)
!293 = distinct !DILexicalBlock(scope: !277, file: !3, line: 77, column: 7)
!294 = !DILocation(line: 77, column: 25, scope: !293)
!295 = !DILocation(line: 88, column: 14, scope: !296)
!296 = distinct !DILexicalBlock(scope: !277, file: !3, line: 88, column: 7)
!297 = !DILocation(line: 79, column: 13, scope: !298)
!298 = distinct !DILexicalBlock(scope: !293, file: !3, line: 78, column: 5)
!299 = !DILocation(line: 73, column: 9, scope: !277)
!300 = !DILocation(line: 80, column: 14, scope: !298)
!301 = !DILocation(line: 80, column: 21, scope: !298)
!302 = !DILocation(line: 81, column: 26, scope: !303)
!303 = distinct !DILexicalBlock(scope: !298, file: !3, line: 81, column: 11)
!304 = !DILocation(line: 81, column: 37, scope: !303)
!305 = !DILocation(line: 81, column: 11, scope: !298)
!306 = !DILocation(line: 83, column: 18, scope: !307)
!307 = distinct !DILexicalBlock(scope: !303, file: !3, line: 82, column: 2)
!308 = !DILocation(line: 84, column: 4, scope: !307)
!309 = !DILocation(line: 85, column: 2, scope: !307)
!310 = !DILocation(line: 88, column: 25, scope: !296)
!311 = !DILocation(line: 99, column: 14, scope: !312)
!312 = distinct !DILexicalBlock(scope: !277, file: !3, line: 99, column: 7)
!313 = !DILocation(line: 90, column: 13, scope: !314)
!314 = distinct !DILexicalBlock(scope: !296, file: !3, line: 89, column: 5)
!315 = !DILocation(line: 91, column: 14, scope: !314)
!316 = !DILocation(line: 91, column: 22, scope: !314)
!317 = !DILocation(line: 92, column: 26, scope: !318)
!318 = distinct !DILexicalBlock(scope: !314, file: !3, line: 92, column: 11)
!319 = !DILocation(line: 92, column: 37, scope: !318)
!320 = !DILocation(line: 92, column: 11, scope: !314)
!321 = !DILocation(line: 94, column: 18, scope: !322)
!322 = distinct !DILexicalBlock(scope: !318, file: !3, line: 93, column: 2)
!323 = !DILocation(line: 95, column: 4, scope: !322)
!324 = !DILocation(line: 96, column: 9, scope: !322)
!325 = !DILocation(line: 99, column: 26, scope: !312)
!326 = !DILocation(line: 101, column: 13, scope: !327)
!327 = distinct !DILexicalBlock(scope: !312, file: !3, line: 100, column: 5)
!328 = !DILocation(line: 102, column: 14, scope: !327)
!329 = !DILocation(line: 102, column: 22, scope: !327)
!330 = !DILocation(line: 103, column: 27, scope: !331)
!331 = distinct !DILexicalBlock(scope: !327, file: !3, line: 103, column: 11)
!332 = !DILocation(line: 103, column: 38, scope: !331)
!333 = !DILocation(line: 103, column: 11, scope: !327)
!334 = !DILocation(line: 105, column: 19, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !3, line: 104, column: 2)
!336 = !DILocation(line: 106, column: 4, scope: !335)
!337 = !DILocation(line: 107, column: 9, scope: !335)
!338 = !DILocation(line: 110, column: 14, scope: !339)
!339 = distinct !DILexicalBlock(scope: !277, file: !3, line: 110, column: 7)
!340 = !DILocation(line: 110, column: 25, scope: !339)
!341 = !DILocation(line: 121, column: 7, scope: !342)
!342 = distinct !DILexicalBlock(scope: !277, file: !3, line: 121, column: 7)
!343 = !DILocation(line: 112, column: 13, scope: !344)
!344 = distinct !DILexicalBlock(scope: !339, file: !3, line: 111, column: 5)
!345 = !DILocation(line: 113, column: 14, scope: !344)
!346 = !DILocation(line: 113, column: 22, scope: !344)
!347 = !DILocation(line: 114, column: 26, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 114, column: 11)
!349 = !DILocation(line: 114, column: 37, scope: !348)
!350 = !DILocation(line: 114, column: 11, scope: !344)
!351 = !DILocation(line: 116, column: 18, scope: !352)
!352 = distinct !DILexicalBlock(scope: !348, file: !3, line: 115, column: 9)
!353 = !DILocation(line: 117, column: 4, scope: !352)
!354 = !DILocation(line: 118, column: 9, scope: !352)
!355 = !DILocation(line: 121, column: 7, scope: !277)
!356 = !DILocation(line: 124, column: 14, scope: !357)
!357 = distinct !DILexicalBlock(scope: !277, file: !3, line: 124, column: 7)
!358 = !DILocation(line: 124, column: 22, scope: !357)
!359 = !DILocation(line: 124, column: 7, scope: !277)
!360 = !DILocation(line: 128, column: 8, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 128, column: 8)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 127, column: 2)
!363 = distinct !DILexicalBlock(scope: !357, file: !3, line: 125, column: 5)
!364 = !DILocation(line: 128, column: 24, scope: !361)
!365 = !DILocation(line: 128, column: 8, scope: !362)
!366 = !DILocation(line: 130, column: 22, scope: !367)
!367 = distinct !DILexicalBlock(scope: !361, file: !3, line: 129, column: 6)
!368 = !DILocation(line: 133, column: 5, scope: !367)
!369 = !DILocation(line: 133, column: 4, scope: !367)
!370 = !DILocation(line: 136, column: 22, scope: !362)
!371 = !DILocation(line: 136, column: 19, scope: !362)
!372 = !DILocation(line: 126, column: 29, scope: !363)
!373 = !DILocation(line: 126, column: 7, scope: !363)
!374 = distinct !{!374, !373, !375}
!375 = !DILocation(line: 137, column: 2, scope: !363)
!376 = !DILocation(line: 141, column: 31, scope: !377)
!377 = distinct !DILexicalBlock(scope: !357, file: !3, line: 140, column: 5)
!378 = !DILocation(line: 141, column: 21, scope: !377)
!379 = !DILocation(line: 141, column: 29, scope: !377)
!380 = !DILocation(line: 141, column: 7, scope: !377)
!381 = !DILocation(line: 143, column: 22, scope: !382)
!382 = distinct !DILexicalBlock(scope: !377, file: !3, line: 142, column: 2)
!383 = !DILocation(line: 143, column: 19, scope: !382)
!384 = !DILocation(line: 144, column: 8, scope: !385)
!385 = distinct !DILexicalBlock(scope: !382, file: !3, line: 144, column: 8)
!386 = !DILocation(line: 144, column: 8, scope: !382)
!387 = distinct !{!387, !380, !388}
!388 = !DILocation(line: 152, column: 2, scope: !377)
!389 = !DILocation(line: 144, column: 24, scope: !385)
!390 = !DILocation(line: 146, column: 22, scope: !391)
!391 = distinct !DILexicalBlock(scope: !385, file: !3, line: 145, column: 6)
!392 = !DILocation(line: 147, column: 22, scope: !391)
!393 = !DILocation(line: 149, column: 5, scope: !391)
!394 = !DILocation(line: 149, column: 4, scope: !391)
!395 = !DILocation(line: 154, column: 1, scope: !277)
