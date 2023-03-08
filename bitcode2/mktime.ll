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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %28 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %29 = load i32, i32* %28, align 4, !dbg !123, !tbaa !125
  br i1 %27, label %30, label %44, !dbg !122

; <label>:30:                                     ; preds = %1
  %31 = and i32 %29, 3, !dbg !126
  %32 = icmp eq i32 %31, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %32, label %33, label %43, !dbg !126

; <label>:33:                                     ; preds = %30
  %34 = srem i32 %29, 100, !dbg !126
  %35 = icmp eq i32 %34, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %35, label %36, label %40, !dbg !126

; <label>:36:                                     ; preds = %33
  %37 = add nsw i32 %29, 1900, !dbg !126
  %38 = srem i32 %37, 400, !dbg !126
  %39 = icmp eq i32 %38, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br i1 %39, label %41, label %44, !dbg !127

; <label>:40:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br label %41

; <label>:41:                                     ; preds = %40, %36
  %42 = add nsw i64 %26, 1, !dbg !128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br label %44, !dbg !129

; <label>:43:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  br label %44

; <label>:44:                                     ; preds = %1, %43, %41, %36
  %45 = phi i64 [ %26, %43 ], [ %42, %41 ], [ %26, %36 ], [ %26, %1 ], !dbg !130
  %46 = trunc i64 %45 to i32, !dbg !131
  %47 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 7, !dbg !132
  store i32 %46, i32* %47, align 4, !dbg !133, !tbaa !134
  %48 = icmp sgt i32 %29, 10000, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %48, label %255, label %49, !dbg !136

; <label>:49:                                     ; preds = %44
  %50 = icmp slt i32 %29, -10000, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !138
  br i1 %50, label %255, label %51, !dbg !138

; <label>:51:                                     ; preds = %49
  %52 = icmp sgt i32 %29, 70, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %52, label %53, label %72, !dbg !142

; <label>:53:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !143
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  br label %54, !dbg !146

; <label>:54:                                     ; preds = %67, %53
  %55 = phi i64 [ %45, %53 ], [ %69, %67 ]
  %56 = phi i32 [ 70, %53 ], [ %70, %67 ]
  %57 = and i32 %56, 3, !dbg !147
  %58 = icmp eq i32 %57, 0, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %58, label %59, label %67, !dbg !147

; <label>:59:                                     ; preds = %54
  %60 = urem i32 %56, 100, !dbg !147
  %61 = icmp eq i32 %60, 0, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %61, label %62, label %66, !dbg !147

; <label>:62:                                     ; preds = %59
  %63 = add nuw nsw i32 %56, 1900, !dbg !147
  %64 = urem i32 %63, 400, !dbg !147
  %65 = icmp eq i32 %64, 0, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %65, label %66, label %67, !dbg !147

; <label>:66:                                     ; preds = %59, %62
  br label %67, !dbg !147

; <label>:67:                                     ; preds = %54, %62, %66
  %68 = phi i64 [ 366, %66 ], [ 365, %62 ], [ 365, %54 ]
  %69 = add nsw i64 %68, %55, !dbg !149
  %70 = add nuw nsw i32 %56, 1, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !146
  %71 = icmp eq i32 %70, %29, !dbg !152
  br i1 %71, label %108, label %54, !dbg !146, !llvm.loop !153

; <label>:72:                                     ; preds = %51
  %73 = icmp eq i32 %29, 70, !dbg !155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br i1 %73, label %108, label %74, !dbg !157

; <label>:74:                                     ; preds = %72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %75 = icmp slt i32 %29, 69, !dbg !161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %75, label %76, label %104, !dbg !163

; <label>:76:                                     ; preds = %74, %88
  %77 = phi i1 [ %94, %88 ], [ false, %74 ]
  %78 = phi i64 [ %90, %88 ], [ %45, %74 ]
  %79 = phi i32 [ %91, %88 ], [ 69, %74 ]
  br i1 %77, label %80, label %88, !dbg !165

; <label>:80:                                     ; preds = %76
  %81 = srem i32 %79, 100, !dbg !165
  %82 = icmp eq i32 %81, 0, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %82, label %83, label %87, !dbg !165

; <label>:83:                                     ; preds = %80
  %84 = add nsw i32 %79, 1900, !dbg !165
  %85 = srem i32 %84, 400, !dbg !165
  %86 = icmp eq i32 %85, 0, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  br i1 %86, label %87, label %88, !dbg !165

; <label>:87:                                     ; preds = %80, %83
  br label %88, !dbg !165

; <label>:88:                                     ; preds = %76, %83, %87
  %89 = phi i64 [ 366, %87 ], [ 365, %83 ], [ 365, %76 ]
  %90 = sub nsw i64 %78, %89, !dbg !166
  %91 = add nsw i32 %79, -1, !dbg !167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  %92 = icmp sgt i32 %91, %29, !dbg !161
  %93 = and i32 %91, 3, !dbg !164
  %94 = icmp eq i32 %93, 0, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br i1 %92, label %76, label %95, !dbg !163, !llvm.loop !169

; <label>:95:                                     ; preds = %88
  br i1 %94, label %96, label %104, !dbg !171

; <label>:96:                                     ; preds = %95
  %97 = srem i32 %29, 100, !dbg !171
  %98 = icmp eq i32 %97, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %98, label %99, label %103, !dbg !171

; <label>:99:                                     ; preds = %96
  %100 = add nsw i32 %29, 1900, !dbg !171
  %101 = srem i32 %100, 400, !dbg !171
  %102 = icmp eq i32 %101, 0, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %102, label %103, label %104, !dbg !171

; <label>:103:                                    ; preds = %96, %99
  br label %104, !dbg !171

; <label>:104:                                    ; preds = %74, %95, %99, %103
  %105 = phi i64 [ %90, %103 ], [ %90, %99 ], [ %90, %95 ], [ %45, %74 ]
  %106 = phi i64 [ 366, %103 ], [ 365, %99 ], [ 365, %95 ], [ 365, %74 ]
  %107 = sub nsw i64 %105, %106, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br label %108, !dbg !173

; <label>:108:                                    ; preds = %67, %72, %104
  %109 = phi i32 [ %29, %104 ], [ 70, %72 ], [ %29, %67 ], !dbg !174
  %110 = phi i64 [ %107, %104 ], [ %45, %72 ], [ %69, %67 ], !dbg !175
  %111 = mul nsw i64 %110, 86400, !dbg !176
  %112 = add nsw i64 %15, %111, !dbg !177
  tail call void @__tz_lock() #3, !dbg !178
  tail call void @_tzset_unlocked() #3, !dbg !179
  %113 = load i32, i32* @_daylight, align 4, !dbg !180, !tbaa !118
  %114 = icmp eq i32 %113, 0, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br i1 %114, label %115, label %117, !dbg !181

; <label>:115:                                    ; preds = %108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  %116 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8, !dbg !183
  br label %234, !dbg !182

; <label>:117:                                    ; preds = %108
  %118 = load i32, i32* %28, align 4, !dbg !184, !tbaa !125
  %119 = add nsw i32 %118, 1900, !dbg !185
  %120 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 8, !dbg !187
  %121 = load i32, i32* %120, align 8, !dbg !187, !tbaa !188
  %122 = icmp sgt i32 %121, 0, !dbg !189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br i1 %122, label %124, label %123, !dbg !190

; <label>:123:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !190
  br label %124, !dbg !190

; <label>:124:                                    ; preds = %117, %123
  %125 = phi i32 [ %121, %123 ], [ 1, %117 ], !dbg !190
  %126 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 1, !dbg !192
  %127 = load i32, i32* %126, align 4, !dbg !192, !tbaa !193
  %128 = icmp eq i32 %119, %127, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %128, label %132, label %129, !dbg !196

; <label>:129:                                    ; preds = %124
  %130 = tail call i32 @__tzcalc_limits(i32 %119) #3, !dbg !197
  %131 = icmp eq i32 %130, 0, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br i1 %131, label %227, label %132, !dbg !198

; <label>:132:                                    ; preds = %129, %124
  %133 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 5, !dbg !199
  %134 = load i64, i64* %133, align 8, !dbg !199, !tbaa !200
  %135 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 6, !dbg !202
  %136 = load i64, i64* %135, align 8, !dbg !202, !tbaa !203
  %137 = sub nsw i64 %134, %136, !dbg !204
  %138 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 5, !dbg !206
  %139 = load i64, i64* %138, align 8, !dbg !206, !tbaa !200
  %140 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !207
  %141 = load i64, i64* %140, align 8, !dbg !207, !tbaa !203
  %142 = sub nsw i64 %139, %141, !dbg !208
  %143 = icmp slt i64 %112, %142, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %143, label %147, label %144, !dbg !211

; <label>:144:                                    ; preds = %132
  %145 = sub nsw i64 %139, %136, !dbg !212
  %146 = icmp slt i64 %112, %145, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  br i1 %146, label %223, label %147, !dbg !215

; <label>:147:                                    ; preds = %132, %144
  %148 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 0, !dbg !216
  %149 = load i32, i32* %148, align 8, !dbg !216, !tbaa !217
  %150 = icmp eq i32 %149, 0, !dbg !218
  %151 = icmp sge i64 %112, %137, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br i1 %150, label %154, label %152, !dbg !218

; <label>:152:                                    ; preds = %147
  br i1 %151, label %153, label %156, !dbg !220

; <label>:153:                                    ; preds = %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %156

; <label>:154:                                    ; preds = %147
  br i1 %151, label %156, label %155, !dbg !221

; <label>:155:                                    ; preds = %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br label %156, !dbg !221

; <label>:156:                                    ; preds = %154, %155, %152, %153
  %157 = phi i1 [ false, %152 ], [ %143, %153 ], [ true, %154 ], [ %143, %155 ]
  %158 = zext i1 %157 to i32, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %159 = icmp sgt i32 %125, -1, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br i1 %159, label %160, label %223, !dbg !223

; <label>:160:                                    ; preds = %156
  %161 = xor i32 %125, %158, !dbg !224
  %162 = icmp eq i32 %161, 1, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  br i1 %162, label %163, label %223, !dbg !226

; <label>:163:                                    ; preds = %160
  %164 = sub nsw i64 %141, %136, !dbg !227
  %165 = trunc i64 %164 to i32, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  br i1 %157, label %168, label %166, !dbg !230

; <label>:166:                                    ; preds = %163
  %167 = sub nsw i32 0, %165, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br label %168, !dbg !233

; <label>:168:                                    ; preds = %163, %166
  %169 = phi i32 [ %165, %163 ], [ %167, %166 ], !dbg !234
  %170 = load i32, i32* %3, align 8, !dbg !235, !tbaa !93
  %171 = add nsw i32 %170, %169, !dbg !235
  store i32 %171, i32* %3, align 8, !dbg !235, !tbaa !93
  %172 = sext i32 %169 to i64, !dbg !236
  %173 = add nsw i64 %112, %172, !dbg !237
  %174 = load i32, i32* %16, align 4, !dbg !238, !tbaa !112
  tail call fastcc void @validate_structure(%struct.tm* nonnull %0) #4, !dbg !240
  %175 = load i32, i32* %16, align 4, !dbg !241, !tbaa !112
  %176 = sub nsw i32 %175, %174, !dbg !242
  %177 = icmp eq i32 %176, 0, !dbg !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br i1 %177, label %221, label %178, !dbg !245

; <label>:178:                                    ; preds = %168
  %179 = icmp sgt i32 %176, 1, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %179, label %182, label %180, !dbg !249

; <label>:180:                                    ; preds = %178
  %181 = icmp slt i32 %176, -1, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %181, label %182, label %184, !dbg !252

; <label>:182:                                    ; preds = %180, %178
  %183 = phi i32 [ -1, %178 ], [ 1, %180 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br label %184, !dbg !254

; <label>:184:                                    ; preds = %182, %180
  %185 = phi i32 [ %176, %180 ], [ %183, %182 ], !dbg !255
  %186 = sext i32 %185 to i64, !dbg !254
  %187 = add nsw i64 %110, %186, !dbg !256
  %188 = load i32, i32* %47, align 4, !dbg !257, !tbaa !134
  %189 = add nsw i32 %188, %185, !dbg !257
  store i32 %189, i32* %47, align 4, !dbg !257, !tbaa !134
  %190 = icmp slt i32 %189, 0, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  br i1 %190, label %191, label %205, !dbg !260

; <label>:191:                                    ; preds = %184
  %192 = add nsw i32 %109, -1, !dbg !261
  %193 = and i32 %192, 3, !dbg !263
  %194 = icmp eq i32 %193, 0, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %194, label %195, label %203, !dbg !263

; <label>:195:                                    ; preds = %191
  %196 = srem i32 %192, 100, !dbg !263
  %197 = icmp eq i32 %196, 0, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %197, label %198, label %203, !dbg !263

; <label>:198:                                    ; preds = %195
  %199 = add nsw i32 %109, 1899, !dbg !263
  %200 = srem i32 %199, 400, !dbg !263
  %201 = icmp eq i32 %200, 0, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  %202 = select i1 %201, i32 365, i32 364, !dbg !263
  br label %203, !dbg !263

; <label>:203:                                    ; preds = %195, %198, %191
  %204 = phi i32 [ 364, %191 ], [ 365, %195 ], [ %202, %198 ]
  store i32 %204, i32* %47, align 4, !dbg !264, !tbaa !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br label %221, !dbg !265

; <label>:205:                                    ; preds = %184
  %206 = and i32 %109, 3, !dbg !266
  %207 = icmp eq i32 %206, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %207, label %208, label %216, !dbg !266

; <label>:208:                                    ; preds = %205
  %209 = srem i32 %109, 100, !dbg !266
  %210 = icmp eq i32 %209, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  br i1 %210, label %211, label %216, !dbg !266

; <label>:211:                                    ; preds = %208
  %212 = add nsw i32 %109, 1900, !dbg !266
  %213 = srem i32 %212, 400, !dbg !266
  %214 = icmp eq i32 %213, 0, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !266
  %215 = select i1 %214, i32 366, i32 365, !dbg !266
  br label %216, !dbg !266

; <label>:216:                                    ; preds = %208, %211, %205
  %217 = phi i32 [ 365, %205 ], [ 366, %208 ], [ %215, %211 ]
  %218 = icmp slt i32 %189, %217, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %218, label %221, label %219, !dbg !270

; <label>:219:                                    ; preds = %216
  %220 = sub nsw i32 %189, %217, !dbg !271
  store i32 %220, i32* %47, align 4, !dbg !271, !tbaa !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %221, !dbg !272

; <label>:221:                                    ; preds = %216, %168, %203, %219
  %222 = phi i64 [ %187, %203 ], [ %187, %219 ], [ %187, %216 ], [ %110, %168 ], !dbg !175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br label %223, !dbg !273

; <label>:223:                                    ; preds = %156, %160, %221, %144
  %224 = phi i32 [ %125, %144 ], [ %158, %221 ], [ %158, %160 ], [ %158, %156 ], !dbg !219
  %225 = phi i64 [ %110, %144 ], [ %222, %221 ], [ %110, %160 ], [ %110, %156 ], !dbg !175
  %226 = phi i64 [ %112, %144 ], [ %173, %221 ], [ %112, %160 ], [ %112, %156 ], !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %227, !dbg !274

; <label>:227:                                    ; preds = %223, %129
  %228 = phi i32 [ %224, %223 ], [ %125, %129 ], !dbg !275
  %229 = phi i64 [ %225, %223 ], [ %110, %129 ], !dbg !128
  %230 = phi i64 [ %226, %223 ], [ %112, %129 ], !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  %231 = icmp eq i32 %228, 1, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  br i1 %231, label %232, label %234, !dbg !182

; <label>:232:                                    ; preds = %227
  %233 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 1, i32 6, !dbg !279
  br label %240, !dbg !280

; <label>:234:                                    ; preds = %115, %227
  %235 = phi i32* [ %116, %115 ], [ %120, %227 ], !dbg !183
  %236 = phi i64 [ %112, %115 ], [ %230, %227 ]
  %237 = phi i64 [ %110, %115 ], [ %229, %227 ]
  %238 = phi i32 [ 0, %115 ], [ %228, %227 ]
  %239 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %2, i64 0, i32 2, i64 0, i32 6, !dbg !281
  br label %240

; <label>:240:                                    ; preds = %234, %232
  %241 = phi i64* [ %239, %234 ], [ %233, %232 ]
  %242 = phi i32* [ %235, %234 ], [ %120, %232 ], !dbg !183
  %243 = phi i64 [ %236, %234 ], [ %230, %232 ]
  %244 = phi i64 [ %237, %234 ], [ %229, %232 ]
  %245 = phi i32 [ %238, %234 ], [ 1, %232 ]
  %246 = load i64, i64* %241, align 8, !dbg !282, !tbaa !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %247 = add nsw i64 %246, %243, !dbg !282
  tail call void @__tz_unlock() #3, !dbg !283
  store i32 %245, i32* %242, align 8, !dbg !284, !tbaa !188
  %248 = add nsw i64 %244, 4, !dbg !285
  %249 = srem i64 %248, 7, !dbg !287
  %250 = trunc i64 %249 to i32, !dbg !288
  %251 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 6, !dbg !289
  store i32 %250, i32* %251, align 8, !dbg !290, !tbaa !291
  %252 = icmp slt i32 %250, 0, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  br i1 %252, label %253, label %255, !dbg !293

; <label>:253:                                    ; preds = %240
  %254 = add nsw i32 %250, 7, !dbg !294
  store i32 %254, i32* %251, align 8, !dbg !294, !tbaa !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br label %255, !dbg !295

; <label>:255:                                    ; preds = %240, %253, %44, %49
  %256 = phi i64 [ -1, %49 ], [ -1, %44 ], [ %247, %253 ], [ %247, %240 ], !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  ret i64 %256, !dbg !296
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define internal fastcc void @validate_structure(%struct.tm* nocapture) unnamed_addr #0 !dbg !297 {
  %2 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 0, !dbg !312
  %3 = load i32, i32* %2, align 8, !dbg !312, !tbaa !93
  %4 = icmp slt i32 %3, 0, !dbg !314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !315
  br i1 %4, label %10, label %5, !dbg !315

; <label>:5:                                      ; preds = %1
  %6 = icmp sgt i32 %3, 59, !dbg !316
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  br i1 %6, label %10, label %7, !dbg !317

; <label>:7:                                      ; preds = %5
  %8 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1
  %9 = load i32, i32* %8, align 4, !dbg !318, !tbaa !102
  br label %22, !dbg !317

; <label>:10:                                     ; preds = %5, %1
  %11 = tail call i64 @div(i32 %3, i32 60) #3, !dbg !320
  %12 = trunc i64 %11 to i32, !dbg !320
  %13 = lshr i64 %11, 32, !dbg !320
  %14 = trunc i64 %13 to i32, !dbg !320
  %15 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 1, !dbg !323
  %16 = load i32, i32* %15, align 4, !dbg !324, !tbaa !102
  %17 = add nsw i32 %16, %12, !dbg !324
  store i32 %17, i32* %15, align 4, !dbg !324, !tbaa !102
  store i32 %14, i32* %2, align 8, !dbg !325, !tbaa !93
  %18 = icmp slt i32 %14, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %18, label %19, label %22, !dbg !328

; <label>:19:                                     ; preds = %10
  %20 = add nsw i32 %14, 60, !dbg !329
  store i32 %20, i32* %2, align 8, !dbg !329, !tbaa !93
  %21 = add nsw i32 %17, -1, !dbg !331
  store i32 %21, i32* %15, align 4, !dbg !331, !tbaa !102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br label %22, !dbg !332

; <label>:22:                                     ; preds = %7, %10, %19
  %23 = phi i32* [ %8, %7 ], [ %15, %10 ], [ %15, %19 ], !dbg !318
  %24 = phi i32 [ %9, %7 ], [ %17, %10 ], [ %21, %19 ], !dbg !318
  %25 = icmp slt i32 %24, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %25, label %31, label %26, !dbg !334

; <label>:26:                                     ; preds = %22
  %27 = icmp sgt i32 %24, 59, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %27, label %31, label %28, !dbg !336

; <label>:28:                                     ; preds = %26
  %29 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2
  %30 = load i32, i32* %29, align 8, !dbg !337, !tbaa !107
  br label %43, !dbg !336

; <label>:31:                                     ; preds = %26, %22
  %32 = tail call i64 @div(i32 %24, i32 60) #3, !dbg !339
  %33 = trunc i64 %32 to i32, !dbg !339
  %34 = lshr i64 %32, 32, !dbg !339
  %35 = trunc i64 %34 to i32, !dbg !339
  %36 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 2, !dbg !341
  %37 = load i32, i32* %36, align 8, !dbg !342, !tbaa !107
  %38 = add nsw i32 %37, %33, !dbg !342
  store i32 %38, i32* %36, align 8, !dbg !342, !tbaa !107
  store i32 %35, i32* %23, align 4, !dbg !343, !tbaa !102
  %39 = icmp slt i32 %35, 0, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %39, label %40, label %43, !dbg !346

; <label>:40:                                     ; preds = %31
  %41 = add nsw i32 %35, 60, !dbg !347
  store i32 %41, i32* %23, align 4, !dbg !347, !tbaa !102
  %42 = add nsw i32 %38, -1, !dbg !349
  store i32 %42, i32* %36, align 8, !dbg !349, !tbaa !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  br label %43, !dbg !350

; <label>:43:                                     ; preds = %28, %31, %40
  %44 = phi i32* [ %29, %28 ], [ %36, %31 ], [ %36, %40 ], !dbg !337
  %45 = phi i32 [ %30, %28 ], [ %38, %31 ], [ %42, %40 ], !dbg !337
  %46 = icmp slt i32 %45, 0, !dbg !351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  br i1 %46, label %49, label %47, !dbg !352

; <label>:47:                                     ; preds = %43
  %48 = icmp sgt i32 %45, 23, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  br i1 %48, label %49, label %61, !dbg !354

; <label>:49:                                     ; preds = %47, %43
  %50 = tail call i64 @div(i32 %45, i32 24) #3, !dbg !355
  %51 = trunc i64 %50 to i32, !dbg !355
  %52 = lshr i64 %50, 32, !dbg !355
  %53 = trunc i64 %52 to i32, !dbg !355
  %54 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !357
  %55 = load i32, i32* %54, align 4, !dbg !358, !tbaa !112
  %56 = add nsw i32 %55, %51, !dbg !358
  store i32 %56, i32* %54, align 4, !dbg !358, !tbaa !112
  store i32 %53, i32* %44, align 8, !dbg !359, !tbaa !107
  %57 = icmp slt i32 %53, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %57, label %58, label %61, !dbg !362

; <label>:58:                                     ; preds = %49
  %59 = add nsw i32 %53, 24, !dbg !363
  store i32 %59, i32* %44, align 8, !dbg !363, !tbaa !107
  %60 = add nsw i32 %56, -1, !dbg !365
  store i32 %60, i32* %54, align 4, !dbg !365, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  br label %61, !dbg !366

; <label>:61:                                     ; preds = %49, %58, %47
  %62 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 4, !dbg !367
  %63 = load i32, i32* %62, align 8, !dbg !367, !tbaa !116
  %64 = icmp slt i32 %63, 0, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %64, label %70, label %65, !dbg !370

; <label>:65:                                     ; preds = %61
  %66 = icmp sgt i32 %63, 11, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  br i1 %66, label %70, label %67, !dbg !372

; <label>:67:                                     ; preds = %65
  %68 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5
  %69 = load i32, i32* %68, align 4, !dbg !373, !tbaa !125
  br label %82, !dbg !372

; <label>:70:                                     ; preds = %65, %61
  %71 = tail call i64 @div(i32 %63, i32 12) #3, !dbg !375
  %72 = trunc i64 %71 to i32, !dbg !375
  %73 = lshr i64 %71, 32, !dbg !375
  %74 = trunc i64 %73 to i32, !dbg !375
  %75 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 5, !dbg !377
  %76 = load i32, i32* %75, align 4, !dbg !378, !tbaa !125
  %77 = add nsw i32 %76, %72, !dbg !378
  store i32 %77, i32* %75, align 4, !dbg !378, !tbaa !125
  store i32 %74, i32* %62, align 8, !dbg !379, !tbaa !116
  %78 = icmp slt i32 %74, 0, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  br i1 %78, label %79, label %82, !dbg !382

; <label>:79:                                     ; preds = %70
  %80 = add nsw i32 %74, 12, !dbg !383
  store i32 %80, i32* %62, align 8, !dbg !383, !tbaa !116
  %81 = add nsw i32 %77, -1, !dbg !385
  store i32 %81, i32* %75, align 4, !dbg !385, !tbaa !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %82, !dbg !386

; <label>:82:                                     ; preds = %67, %70, %79
  %83 = phi i32* [ %68, %67 ], [ %75, %70 ], [ %75, %79 ], !dbg !373
  %84 = phi i32 [ %63, %67 ], [ %74, %70 ], [ %80, %79 ]
  %85 = phi i32 [ %69, %67 ], [ %77, %70 ], [ %81, %79 ], !dbg !373
  %86 = and i32 %85, 3, !dbg !373
  %87 = icmp eq i32 %86, 0, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %87, label %88, label %96, !dbg !373

; <label>:88:                                     ; preds = %82
  %89 = srem i32 %85, 100, !dbg !373
  %90 = icmp eq i32 %89, 0, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %90, label %91, label %95, !dbg !373

; <label>:91:                                     ; preds = %88
  %92 = add nsw i32 %85, 1900, !dbg !373
  %93 = srem i32 %92, 400, !dbg !373
  %94 = icmp eq i32 %93, 0, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br i1 %94, label %96, label %98, !dbg !387

; <label>:95:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  br label %96

; <label>:96:                                     ; preds = %82, %91, %95
  %97 = phi i32 [ 29, %95 ], [ 29, %91 ], [ 28, %82 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  br label %98, !dbg !389

; <label>:98:                                     ; preds = %96, %91
  %99 = phi i32 [ 28, %91 ], [ %97, %96 ], !dbg !391
  %100 = getelementptr inbounds %struct.tm, %struct.tm* %0, i64 0, i32 3, !dbg !389
  %101 = load i32, i32* %100, align 4, !dbg !389, !tbaa !112
  %102 = icmp slt i32 %101, 1, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %102, label %103, label %141, !dbg !393

; <label>:103:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br label %104, !dbg !394

; <label>:104:                                    ; preds = %103, %134
  %105 = phi i32 [ %85, %103 ], [ %137, %134 ]
  %106 = phi i32 [ %84, %103 ], [ %136, %134 ], !dbg !396
  %107 = phi i32 [ %99, %103 ], [ %135, %134 ]
  %108 = phi i32 [ %101, %103 ], [ %139, %134 ]
  %109 = add nsw i32 %106, -1, !dbg !396
  store i32 %109, i32* %62, align 8, !dbg !396, !tbaa !116
  %110 = icmp eq i32 %106, 0, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %110, label %111, label %125, !dbg !400

; <label>:111:                                    ; preds = %104
  %112 = add nsw i32 %105, -1, !dbg !401
  store i32 %112, i32* %83, align 4, !dbg !401, !tbaa !125
  store i32 11, i32* %62, align 8, !dbg !403, !tbaa !116
  %113 = and i32 %112, 3, !dbg !404
  %114 = icmp eq i32 %113, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %114, label %115, label %123, !dbg !404

; <label>:115:                                    ; preds = %111
  %116 = srem i32 %112, 100, !dbg !404
  %117 = icmp eq i32 %116, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %117, label %118, label %122, !dbg !404

; <label>:118:                                    ; preds = %115
  %119 = add nsw i32 %105, 1899, !dbg !404
  %120 = srem i32 %119, 400, !dbg !404
  %121 = icmp eq i32 %120, 0, !dbg !404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %121, label %122, label %123, !dbg !405

; <label>:122:                                    ; preds = %115, %118
  br label %123, !dbg !405

; <label>:123:                                    ; preds = %122, %118, %111
  %124 = phi i32 [ 29, %122 ], [ 28, %118 ], [ 28, %111 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br label %127, !dbg !407

; <label>:125:                                    ; preds = %104
  %126 = icmp eq i32 %109, 1, !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  br i1 %126, label %134, label %127, !dbg !407

; <label>:127:                                    ; preds = %123, %125
  %128 = phi i32 [ %124, %123 ], [ %107, %125 ]
  %129 = phi i32 [ 11, %123 ], [ %109, %125 ]
  %130 = phi i32 [ %112, %123 ], [ %105, %125 ]
  %131 = sext i32 %129 to i64, !dbg !407
  %132 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %131, !dbg !407
  %133 = load i32, i32* %132, align 4, !dbg !407, !tbaa !118
  br label %134, !dbg !407

; <label>:134:                                    ; preds = %125, %127
  %135 = phi i32 [ %128, %127 ], [ %107, %125 ]
  %136 = phi i32 [ %129, %127 ], [ 1, %125 ]
  %137 = phi i32 [ %130, %127 ], [ %105, %125 ]
  %138 = phi i32 [ %133, %127 ], [ %107, %125 ], !dbg !407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !407
  %139 = add nsw i32 %138, %108, !dbg !408
  store i32 %139, i32* %100, align 4, !dbg !408, !tbaa !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %140 = icmp slt i32 %139, 1, !dbg !409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %140, label %104, label %186, !dbg !394, !llvm.loop !410

; <label>:141:                                    ; preds = %98, %181
  %142 = phi i32 [ %182, %181 ], [ %85, %98 ]
  %143 = phi i32 [ %183, %181 ], [ %84, %98 ], !dbg !412
  %144 = phi i32 [ %184, %181 ], [ %101, %98 ], !dbg !414
  %145 = phi i32 [ %185, %181 ], [ %99, %98 ], !dbg !415
  %146 = icmp eq i32 %143, 1, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br i1 %146, label %151, label %147, !dbg !412

; <label>:147:                                    ; preds = %141
  %148 = sext i32 %143 to i64, !dbg !412
  %149 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %148, !dbg !412
  %150 = load i32, i32* %149, align 4, !dbg !412, !tbaa !118
  br label %151, !dbg !412

; <label>:151:                                    ; preds = %141, %147
  %152 = phi i32 [ %150, %147 ], [ %145, %141 ], !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  %153 = icmp sgt i32 %144, %152, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %153, label %154, label %186, !dbg !420

; <label>:154:                                    ; preds = %151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  br i1 %146, label %155, label %157, !dbg !421

; <label>:155:                                    ; preds = %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  %156 = sub nsw i32 %144, %145, !dbg !422
  store i32 %156, i32* %100, align 4, !dbg !422, !tbaa !112
  store i32 2, i32* %62, align 8, !dbg !423, !tbaa !116
  br label %176, !dbg !424

; <label>:157:                                    ; preds = %154
  %158 = sext i32 %143 to i64, !dbg !421
  %159 = getelementptr inbounds [12 x i32], [12 x i32]* @DAYS_IN_MONTH, i64 0, i64 %158, !dbg !421
  %160 = load i32, i32* %159, align 4, !dbg !421, !tbaa !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  %161 = sub nsw i32 %144, %160, !dbg !422
  store i32 %161, i32* %100, align 4, !dbg !422, !tbaa !112
  %162 = add nsw i32 %143, 1, !dbg !423
  store i32 %162, i32* %62, align 8, !dbg !423, !tbaa !116
  %163 = icmp eq i32 %162, 12, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %163, label %164, label %181, !dbg !424

; <label>:164:                                    ; preds = %157
  %165 = add nsw i32 %142, 1, !dbg !426
  store i32 %165, i32* %83, align 4, !dbg !426, !tbaa !125
  store i32 0, i32* %62, align 8, !dbg !427, !tbaa !116
  %166 = and i32 %165, 3, !dbg !428
  %167 = icmp eq i32 %166, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %167, label %168, label %176, !dbg !428

; <label>:168:                                    ; preds = %164
  %169 = srem i32 %165, 100, !dbg !428
  %170 = icmp eq i32 %169, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %170, label %171, label %175, !dbg !428

; <label>:171:                                    ; preds = %168
  %172 = add nsw i32 %142, 1901, !dbg !428
  %173 = srem i32 %172, 400, !dbg !428
  %174 = icmp eq i32 %173, 0, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %174, label %175, label %176, !dbg !429

; <label>:175:                                    ; preds = %168, %171
  br label %176, !dbg !429

; <label>:176:                                    ; preds = %175, %171, %164, %155
  %177 = phi i32 [ %142, %155 ], [ %165, %164 ], [ %165, %171 ], [ %165, %175 ]
  %178 = phi i32 [ 2, %155 ], [ 0, %164 ], [ 0, %171 ], [ 0, %175 ]
  %179 = phi i32 [ %156, %155 ], [ %161, %164 ], [ %161, %171 ], [ %161, %175 ]
  %180 = phi i32 [ %145, %155 ], [ 28, %164 ], [ 28, %171 ], [ 29, %175 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br label %181, !dbg !420

; <label>:181:                                    ; preds = %176, %157
  %182 = phi i32 [ %142, %157 ], [ %177, %176 ]
  %183 = phi i32 [ %162, %157 ], [ %178, %176 ]
  %184 = phi i32 [ %161, %157 ], [ %179, %176 ]
  %185 = phi i32 [ %145, %157 ], [ %180, %176 ], !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br label %141, !dbg !420, !llvm.loop !430

; <label>:186:                                    ; preds = %151, %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  ret void, !dbg !432
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
!122 = !DILocation(line: 175, column: 25, scope: !121)
!123 = !DILocation(line: 0, scope: !124)
!124 = distinct !DILexicalBlock(scope: !21, file: !3, line: 181, column: 7)
!125 = !{!94, !95, i64 20}
!126 = !DILocation(line: 175, column: 28, scope: !121)
!127 = !DILocation(line: 175, column: 7, scope: !21)
!128 = !DILocation(line: 176, column: 9, scope: !121)
!129 = !DILocation(line: 176, column: 5, scope: !121)
!130 = !DILocation(line: 0, scope: !21)
!131 = !DILocation(line: 179, column: 20, scope: !21)
!132 = !DILocation(line: 179, column: 10, scope: !21)
!133 = !DILocation(line: 179, column: 18, scope: !21)
!134 = !{!94, !95, i64 28}
!135 = !DILocation(line: 181, column: 22, scope: !124)
!136 = !DILocation(line: 181, column: 30, scope: !124)
!137 = !DILocation(line: 181, column: 48, scope: !124)
!138 = !DILocation(line: 181, column: 7, scope: !21)
!139 = !DILocation(line: 162, column: 7, scope: !21)
!140 = !DILocation(line: 185, column: 31, scope: !141)
!141 = distinct !DILexicalBlock(scope: !21, file: !3, line: 185, column: 7)
!142 = !DILocation(line: 185, column: 7, scope: !21)
!143 = !DILocation(line: 187, column: 12, scope: !144)
!144 = distinct !DILexicalBlock(scope: !145, file: !3, line: 187, column: 7)
!145 = distinct !DILexicalBlock(scope: !141, file: !3, line: 186, column: 5)
!146 = !DILocation(line: 187, column: 7, scope: !144)
!147 = !DILocation(line: 188, column: 10, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !3, line: 187, column: 7)
!149 = !DILocation(line: 188, column: 7, scope: !148)
!150 = !DILocation(line: 187, column: 50, scope: !148)
!151 = !DILocation(line: 187, column: 7, scope: !148)
!152 = !DILocation(line: 187, column: 28, scope: !148)
!153 = distinct !{!153, !146, !154}
!154 = !DILocation(line: 188, column: 10, scope: !144)
!155 = !DILocation(line: 190, column: 17, scope: !156)
!156 = distinct !DILexicalBlock(scope: !141, file: !3, line: 190, column: 12)
!157 = !DILocation(line: 190, column: 12, scope: !141)
!158 = !DILocation(line: 192, column: 12, scope: !159)
!159 = distinct !DILexicalBlock(scope: !160, file: !3, line: 192, column: 7)
!160 = distinct !DILexicalBlock(scope: !156, file: !3, line: 191, column: 5)
!161 = !DILocation(line: 192, column: 28, scope: !162)
!162 = distinct !DILexicalBlock(scope: !159, file: !3, line: 192, column: 7)
!163 = !DILocation(line: 192, column: 7, scope: !159)
!164 = !DILocation(line: 0, scope: !160)
!165 = !DILocation(line: 193, column: 10, scope: !162)
!166 = !DILocation(line: 193, column: 7, scope: !162)
!167 = !DILocation(line: 192, column: 50, scope: !162)
!168 = !DILocation(line: 192, column: 7, scope: !162)
!169 = distinct !{!169, !163, !170}
!170 = !DILocation(line: 193, column: 10, scope: !159)
!171 = !DILocation(line: 194, column: 15, scope: !160)
!172 = !DILocation(line: 194, column: 12, scope: !160)
!173 = !DILocation(line: 195, column: 5, scope: !160)
!174 = !DILocation(line: 0, scope: !141)
!175 = !DILocation(line: 0, scope: !121)
!176 = !DILocation(line: 198, column: 16, scope: !21)
!177 = !DILocation(line: 198, column: 7, scope: !21)
!178 = !DILocation(line: 200, column: 3, scope: !21)
!179 = !DILocation(line: 202, column: 3, scope: !21)
!180 = !DILocation(line: 204, column: 7, scope: !72)
!181 = !DILocation(line: 204, column: 7, scope: !21)
!182 = !DILocation(line: 274, column: 7, scope: !21)
!183 = !DILocation(line: 282, column: 10, scope: !21)
!184 = !DILocation(line: 207, column: 22, scope: !71)
!185 = !DILocation(line: 207, column: 30, scope: !71)
!186 = !DILocation(line: 207, column: 11, scope: !71)
!187 = !DILocation(line: 209, column: 25, scope: !71)
!188 = !{!94, !95, i64 32}
!189 = !DILocation(line: 209, column: 34, scope: !71)
!190 = !DILocation(line: 209, column: 18, scope: !71)
!191 = !DILocation(line: 206, column: 11, scope: !71)
!192 = !DILocation(line: 212, column: 20, scope: !76)
!193 = !{!194, !95, i64 4}
!194 = !{!"__tzinfo_struct", !95, i64 0, !95, i64 4, !96, i64 8}
!195 = !DILocation(line: 212, column: 13, scope: !76)
!196 = !DILocation(line: 212, column: 29, scope: !76)
!197 = !DILocation(line: 212, column: 32, scope: !76)
!198 = !DILocation(line: 212, column: 11, scope: !71)
!199 = !DILocation(line: 216, column: 49, scope: !75)
!200 = !{!201, !98, i64 24}
!201 = !{!"__tzrule_struct", !96, i64 0, !95, i64 4, !95, i64 8, !95, i64 12, !95, i64 16, !98, i64 24, !98, i64 32}
!202 = !DILocation(line: 217, column: 33, scope: !75)
!203 = !{!201, !98, i64 32}
!204 = !DILocation(line: 217, column: 6, scope: !75)
!205 = !DILocation(line: 216, column: 18, scope: !75)
!206 = !DILocation(line: 218, column: 42, scope: !75)
!207 = !DILocation(line: 221, column: 33, scope: !75)
!208 = !DILocation(line: 221, column: 6, scope: !75)
!209 = !DILocation(line: 220, column: 11, scope: !75)
!210 = !DILocation(line: 223, column: 12, scope: !83)
!211 = !DILocation(line: 223, column: 28, scope: !83)
!212 = !DILocation(line: 219, column: 6, scope: !75)
!213 = !DILocation(line: 218, column: 11, scope: !75)
!214 = !DILocation(line: 223, column: 35, scope: !83)
!215 = !DILocation(line: 223, column: 8, scope: !75)
!216 = !DILocation(line: 227, column: 21, scope: !82)
!217 = !{!194, !95, i64 0}
!218 = !DILocation(line: 227, column: 17, scope: !82)
!219 = !DILocation(line: 0, scope: !82)
!220 = !DILocation(line: 228, column: 33, scope: !82)
!221 = !DILocation(line: 229, column: 33, scope: !82)
!222 = !DILocation(line: 233, column: 22, scope: !81)
!223 = !DILocation(line: 233, column: 28, scope: !81)
!224 = !DILocation(line: 233, column: 39, scope: !81)
!225 = !DILocation(line: 233, column: 51, scope: !81)
!226 = !DILocation(line: 233, column: 13, scope: !82)
!227 = !DILocation(line: 241, column: 9, scope: !80)
!228 = !DILocation(line: 240, column: 16, scope: !80)
!229 = !DILocation(line: 240, column: 9, scope: !80)
!230 = !DILocation(line: 242, column: 9, scope: !80)
!231 = !DILocation(line: 243, column: 14, scope: !232)
!232 = distinct !DILexicalBlock(scope: !80, file: !3, line: 242, column: 9)
!233 = !DILocation(line: 243, column: 7, scope: !232)
!234 = !DILocation(line: 0, scope: !232)
!235 = !DILocation(line: 244, column: 19, scope: !80)
!236 = !DILocation(line: 245, column: 12, scope: !80)
!237 = !DILocation(line: 245, column: 9, scope: !80)
!238 = !DILocation(line: 246, column: 23, scope: !80)
!239 = !DILocation(line: 246, column: 9, scope: !80)
!240 = !DILocation(line: 247, column: 5, scope: !80)
!241 = !DILocation(line: 248, column: 19, scope: !80)
!242 = !DILocation(line: 248, column: 27, scope: !80)
!243 = !DILocation(line: 250, column: 9, scope: !244)
!244 = distinct !DILexicalBlock(scope: !80, file: !3, line: 250, column: 9)
!245 = !DILocation(line: 250, column: 9, scope: !80)
!246 = !DILocation(line: 252, column: 16, scope: !247)
!247 = distinct !DILexicalBlock(scope: !248, file: !3, line: 252, column: 11)
!248 = distinct !DILexicalBlock(scope: !244, file: !3, line: 250, column: 15)
!249 = !DILocation(line: 252, column: 11, scope: !248)
!250 = !DILocation(line: 254, column: 21, scope: !251)
!251 = distinct !DILexicalBlock(scope: !247, file: !3, line: 254, column: 16)
!252 = !DILocation(line: 254, column: 16, scope: !247)
!253 = !DILocation(line: 0, scope: !247)
!254 = !DILocation(line: 257, column: 15, scope: !248)
!255 = !DILocation(line: 0, scope: !80)
!256 = !DILocation(line: 257, column: 12, scope: !248)
!257 = !DILocation(line: 259, column: 27, scope: !258)
!258 = distinct !DILexicalBlock(scope: !248, file: !3, line: 259, column: 11)
!259 = !DILocation(line: 259, column: 36, scope: !258)
!260 = !DILocation(line: 259, column: 11, scope: !248)
!261 = !DILocation(line: 260, column: 6, scope: !262)
!262 = distinct !DILexicalBlock(scope: !258, file: !3, line: 259, column: 41)
!263 = !DILocation(line: 261, column: 23, scope: !262)
!264 = !DILocation(line: 261, column: 21, scope: !262)
!265 = !DILocation(line: 262, column: 7, scope: !262)
!266 = !DILocation(line: 263, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !258, file: !3, line: 262, column: 14)
!268 = !DILocation(line: 264, column: 25, scope: !269)
!269 = distinct !DILexicalBlock(scope: !267, file: !3, line: 264, column: 10)
!270 = !DILocation(line: 264, column: 10, scope: !267)
!271 = !DILocation(line: 265, column: 20, scope: !269)
!272 = !DILocation(line: 265, column: 5, scope: !269)
!273 = !DILocation(line: 268, column: 3, scope: !80)
!274 = !DILocation(line: 270, column: 2, scope: !75)
!275 = !DILocation(line: 210, column: 13, scope: !71)
!276 = !DILocation(line: 271, column: 5, scope: !71)
!277 = !DILocation(line: 274, column: 13, scope: !278)
!278 = distinct !DILexicalBlock(scope: !21, file: !3, line: 274, column: 7)
!279 = !DILocation(line: 275, column: 37, scope: !278)
!280 = !DILocation(line: 275, column: 5, scope: !278)
!281 = !DILocation(line: 277, column: 37, scope: !278)
!282 = !DILocation(line: 0, scope: !278)
!283 = !DILocation(line: 279, column: 3, scope: !21)
!284 = !DILocation(line: 282, column: 19, scope: !21)
!285 = !DILocation(line: 285, column: 31, scope: !286)
!286 = distinct !DILexicalBlock(scope: !21, file: !3, line: 285, column: 7)
!287 = !DILocation(line: 285, column: 36, scope: !286)
!288 = !DILocation(line: 285, column: 25, scope: !286)
!289 = !DILocation(line: 285, column: 15, scope: !286)
!290 = !DILocation(line: 285, column: 23, scope: !286)
!291 = !{!94, !95, i64 24}
!292 = !DILocation(line: 285, column: 41, scope: !286)
!293 = !DILocation(line: 285, column: 7, scope: !21)
!294 = !DILocation(line: 286, column: 20, scope: !286)
!295 = !DILocation(line: 286, column: 5, scope: !286)
!296 = !DILocation(line: 289, column: 1, scope: !21)
!297 = distinct !DISubprogram(name: "validate_structure", scope: !3, file: !3, line: 70, type: !298, isLocal: true, isDefinition: true, scopeLine: 72, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !300)
!298 = !DISubroutineType(types: !299)
!299 = !{null, !24}
!300 = !{!301, !302, !309}
!301 = !DILocalVariable(name: "tim_p", arg: 1, scope: !297, file: !3, line: 70, type: !24)
!302 = !DILocalVariable(name: "res", scope: !297, file: !3, line: 73, type: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !304, line: 39, baseType: !305)
!304 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdlib.h", directory: "/root/.unikraft/apps/redis/build")
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !304, line: 35, size: 64, elements: !306)
!306 = !{!307, !308}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !305, file: !304, line: 37, baseType: !9, size: 32)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !305, file: !304, line: 38, baseType: !9, size: 32, offset: 32)
!309 = !DILocalVariable(name: "days_in_feb", scope: !297, file: !3, line: 74, type: !9)
!310 = !DILocation(line: 70, column: 1, scope: !297)
!311 = !DILocation(line: 74, column: 7, scope: !297)
!312 = !DILocation(line: 77, column: 14, scope: !313)
!313 = distinct !DILexicalBlock(scope: !297, file: !3, line: 77, column: 7)
!314 = !DILocation(line: 77, column: 21, scope: !313)
!315 = !DILocation(line: 77, column: 25, scope: !313)
!316 = !DILocation(line: 77, column: 42, scope: !313)
!317 = !DILocation(line: 77, column: 7, scope: !297)
!318 = !DILocation(line: 88, column: 14, scope: !319)
!319 = distinct !DILexicalBlock(scope: !297, file: !3, line: 88, column: 7)
!320 = !DILocation(line: 79, column: 13, scope: !321)
!321 = distinct !DILexicalBlock(scope: !313, file: !3, line: 78, column: 5)
!322 = !DILocation(line: 73, column: 9, scope: !297)
!323 = !DILocation(line: 80, column: 14, scope: !321)
!324 = !DILocation(line: 80, column: 21, scope: !321)
!325 = !DILocation(line: 81, column: 26, scope: !326)
!326 = distinct !DILexicalBlock(scope: !321, file: !3, line: 81, column: 11)
!327 = !DILocation(line: 81, column: 37, scope: !326)
!328 = !DILocation(line: 81, column: 11, scope: !321)
!329 = !DILocation(line: 83, column: 18, scope: !330)
!330 = distinct !DILexicalBlock(scope: !326, file: !3, line: 82, column: 2)
!331 = !DILocation(line: 84, column: 4, scope: !330)
!332 = !DILocation(line: 85, column: 2, scope: !330)
!333 = !DILocation(line: 88, column: 21, scope: !319)
!334 = !DILocation(line: 88, column: 25, scope: !319)
!335 = !DILocation(line: 88, column: 42, scope: !319)
!336 = !DILocation(line: 88, column: 7, scope: !297)
!337 = !DILocation(line: 99, column: 14, scope: !338)
!338 = distinct !DILexicalBlock(scope: !297, file: !3, line: 99, column: 7)
!339 = !DILocation(line: 90, column: 13, scope: !340)
!340 = distinct !DILexicalBlock(scope: !319, file: !3, line: 89, column: 5)
!341 = !DILocation(line: 91, column: 14, scope: !340)
!342 = !DILocation(line: 91, column: 22, scope: !340)
!343 = !DILocation(line: 92, column: 26, scope: !344)
!344 = distinct !DILexicalBlock(scope: !340, file: !3, line: 92, column: 11)
!345 = !DILocation(line: 92, column: 37, scope: !344)
!346 = !DILocation(line: 92, column: 11, scope: !340)
!347 = !DILocation(line: 94, column: 18, scope: !348)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 93, column: 2)
!349 = !DILocation(line: 95, column: 4, scope: !348)
!350 = !DILocation(line: 96, column: 9, scope: !348)
!351 = !DILocation(line: 99, column: 22, scope: !338)
!352 = !DILocation(line: 99, column: 26, scope: !338)
!353 = !DILocation(line: 99, column: 44, scope: !338)
!354 = !DILocation(line: 99, column: 7, scope: !297)
!355 = !DILocation(line: 101, column: 13, scope: !356)
!356 = distinct !DILexicalBlock(scope: !338, file: !3, line: 100, column: 5)
!357 = !DILocation(line: 102, column: 14, scope: !356)
!358 = !DILocation(line: 102, column: 22, scope: !356)
!359 = !DILocation(line: 103, column: 27, scope: !360)
!360 = distinct !DILexicalBlock(scope: !356, file: !3, line: 103, column: 11)
!361 = !DILocation(line: 103, column: 38, scope: !360)
!362 = !DILocation(line: 103, column: 11, scope: !356)
!363 = !DILocation(line: 105, column: 19, scope: !364)
!364 = distinct !DILexicalBlock(scope: !360, file: !3, line: 104, column: 2)
!365 = !DILocation(line: 106, column: 4, scope: !364)
!366 = !DILocation(line: 107, column: 9, scope: !364)
!367 = !DILocation(line: 110, column: 14, scope: !368)
!368 = distinct !DILexicalBlock(scope: !297, file: !3, line: 110, column: 7)
!369 = !DILocation(line: 110, column: 21, scope: !368)
!370 = !DILocation(line: 110, column: 25, scope: !368)
!371 = !DILocation(line: 110, column: 42, scope: !368)
!372 = !DILocation(line: 110, column: 7, scope: !297)
!373 = !DILocation(line: 121, column: 7, scope: !374)
!374 = distinct !DILexicalBlock(scope: !297, file: !3, line: 121, column: 7)
!375 = !DILocation(line: 112, column: 13, scope: !376)
!376 = distinct !DILexicalBlock(scope: !368, file: !3, line: 111, column: 5)
!377 = !DILocation(line: 113, column: 14, scope: !376)
!378 = !DILocation(line: 113, column: 22, scope: !376)
!379 = !DILocation(line: 114, column: 26, scope: !380)
!380 = distinct !DILexicalBlock(scope: !376, file: !3, line: 114, column: 11)
!381 = !DILocation(line: 114, column: 37, scope: !380)
!382 = !DILocation(line: 114, column: 11, scope: !376)
!383 = !DILocation(line: 116, column: 18, scope: !384)
!384 = distinct !DILexicalBlock(scope: !380, file: !3, line: 115, column: 9)
!385 = !DILocation(line: 117, column: 4, scope: !384)
!386 = !DILocation(line: 118, column: 9, scope: !384)
!387 = !DILocation(line: 121, column: 7, scope: !297)
!388 = !DILocation(line: 0, scope: !374)
!389 = !DILocation(line: 124, column: 14, scope: !390)
!390 = distinct !DILexicalBlock(scope: !297, file: !3, line: 124, column: 7)
!391 = !DILocation(line: 0, scope: !297)
!392 = !DILocation(line: 124, column: 22, scope: !390)
!393 = !DILocation(line: 124, column: 7, scope: !297)
!394 = !DILocation(line: 126, column: 7, scope: !395)
!395 = distinct !DILexicalBlock(scope: !390, file: !3, line: 125, column: 5)
!396 = !DILocation(line: 128, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !3, line: 128, column: 8)
!398 = distinct !DILexicalBlock(scope: !395, file: !3, line: 127, column: 2)
!399 = !DILocation(line: 128, column: 24, scope: !397)
!400 = !DILocation(line: 128, column: 8, scope: !398)
!401 = !DILocation(line: 130, column: 22, scope: !402)
!402 = distinct !DILexicalBlock(scope: !397, file: !3, line: 129, column: 6)
!403 = !DILocation(line: 131, column: 22, scope: !402)
!404 = !DILocation(line: 133, column: 5, scope: !402)
!405 = !DILocation(line: 133, column: 4, scope: !402)
!406 = !DILocation(line: 135, column: 6, scope: !402)
!407 = !DILocation(line: 136, column: 22, scope: !398)
!408 = !DILocation(line: 136, column: 19, scope: !398)
!409 = !DILocation(line: 126, column: 29, scope: !395)
!410 = distinct !{!410, !394, !411}
!411 = !DILocation(line: 137, column: 2, scope: !395)
!412 = !DILocation(line: 141, column: 31, scope: !413)
!413 = distinct !DILexicalBlock(scope: !390, file: !3, line: 140, column: 5)
!414 = !DILocation(line: 141, column: 21, scope: !413)
!415 = !DILocation(line: 0, scope: !416)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 145, column: 6)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 144, column: 8)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 142, column: 2)
!419 = !DILocation(line: 141, column: 29, scope: !413)
!420 = !DILocation(line: 141, column: 7, scope: !413)
!421 = !DILocation(line: 143, column: 22, scope: !418)
!422 = !DILocation(line: 143, column: 19, scope: !418)
!423 = !DILocation(line: 144, column: 8, scope: !417)
!424 = !DILocation(line: 144, column: 8, scope: !418)
!425 = !DILocation(line: 144, column: 24, scope: !417)
!426 = !DILocation(line: 146, column: 22, scope: !416)
!427 = !DILocation(line: 147, column: 22, scope: !416)
!428 = !DILocation(line: 149, column: 5, scope: !416)
!429 = !DILocation(line: 149, column: 4, scope: !416)
!430 = distinct !{!430, !420, !431}
!431 = !DILocation(line: 152, column: 2, scope: !413)
!432 = !DILocation(line: 154, column: 1, scope: !297)
