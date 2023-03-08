; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8* }
%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@__month_lengths = external dso_local local_unnamed_addr constant [2 x [12 x i32]], align 16
@_daylight = external dso_local local_unnamed_addr global i32, align 4
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.tm* @localtime_r(i64* noalias, %struct.tm* noalias) local_unnamed_addr #0 !dbg !9 {
  %3 = tail call %struct.__tzinfo_struct* @__gettzinfo() #3, !dbg !72
  %4 = tail call %struct.tm* @gmtime_r(i64* %0, %struct.tm* %1) #3, !dbg !74
  %5 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 5, !dbg !75
  %6 = load i32, i32* %5, align 4, !dbg !75, !tbaa !76
  %7 = add nsw i32 %6, 1900, !dbg !83
  %8 = and i32 %7, 3, !dbg !85
  %9 = icmp eq i32 %8, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %9, label %10, label %13, !dbg !85

; <label>:10:                                     ; preds = %2
  %11 = srem i32 %7, 100, !dbg !85
  %12 = icmp eq i32 %11, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %12, label %13, label %16, !dbg !85

; <label>:13:                                     ; preds = %10, %2
  %14 = srem i32 %7, 400, !dbg !85
  %15 = icmp eq i32 %14, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br label %16, !dbg !85

; <label>:16:                                     ; preds = %10, %13
  %17 = phi i1 [ true, %10 ], [ %15, %13 ]
  %18 = zext i1 %17 to i64, !dbg !86
  tail call void @__tz_lock() #3, !dbg !87
  tail call void @_tzset_unlocked() #3, !dbg !88
  %19 = load i32, i32* @_daylight, align 4, !dbg !89, !tbaa !91
  %20 = icmp eq i32 %19, 0, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %20, label %46, label %21, !dbg !92

; <label>:21:                                     ; preds = %16
  %22 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 1, !dbg !93
  %23 = load i32, i32* %22, align 4, !dbg !93, !tbaa !96
  %24 = icmp eq i32 %7, %23, !dbg !98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br i1 %24, label %28, label %25, !dbg !99

; <label>:25:                                     ; preds = %21
  %26 = tail call i32 @__tzcalc_limits(i32 %7) #3, !dbg !100
  %27 = icmp eq i32 %26, 0, !dbg !100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !101
  br i1 %27, label %46, label %28, !dbg !101

; <label>:28:                                     ; preds = %25, %21
  %29 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 0, !dbg !102
  %30 = load i32, i32* %29, align 8, !dbg !102, !tbaa !103
  %31 = icmp eq i32 %30, 0, !dbg !104
  %32 = load i64, i64* %0, align 8, !dbg !105, !tbaa !106
  %33 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 5, !dbg !105
  %34 = load i64, i64* %33, align 8, !dbg !105, !tbaa !107
  %35 = icmp sge i64 %32, %34, !dbg !105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br i1 %31, label %41, label %36, !dbg !104

; <label>:36:                                     ; preds = %28
  br i1 %35, label %37, label %49, !dbg !109

; <label>:37:                                     ; preds = %36
  %38 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 5, !dbg !110
  %39 = load i64, i64* %38, align 8, !dbg !110, !tbaa !107
  %40 = icmp slt i64 %32, %39, !dbg !111
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %49

; <label>:41:                                     ; preds = %28
  br i1 %35, label %49, label %42, !dbg !112

; <label>:42:                                     ; preds = %41
  %43 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 5, !dbg !113
  %44 = load i64, i64* %43, align 8, !dbg !113, !tbaa !107
  %45 = icmp slt i64 %32, %44, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br label %49, !dbg !112

; <label>:46:                                     ; preds = %16, %25
  %47 = phi i32 [ -1, %25 ], [ 0, %16 ]
  %48 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !115
  store i32 %47, i32* %48, align 8, !dbg !115, !tbaa !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br label %55, !dbg !117

; <label>:49:                                     ; preds = %41, %42, %36, %37
  %50 = phi i1 [ false, %36 ], [ %40, %37 ], [ true, %41 ], [ %45, %42 ]
  %51 = zext i1 %50 to i32, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  %52 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 8, !dbg !118
  store i32 %51, i32* %52, align 8, !dbg !119, !tbaa !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %50, label %53, label %55, !dbg !117

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 1, i32 6, !dbg !121
  br label %57, !dbg !117

; <label>:55:                                     ; preds = %46, %49
  %56 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %3, i64 0, i32 2, i64 0, i32 6, !dbg !122
  br label %57, !dbg !117

; <label>:57:                                     ; preds = %55, %53
  %58 = phi i64* [ %56, %55 ], [ %54, %53 ]
  %59 = load i64, i64* %58, align 8, !dbg !123, !tbaa !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  %60 = sdiv i64 %59, 3600, !dbg !126
  %61 = trunc i64 %60 to i32, !dbg !127
  %62 = srem i64 %59, 3600, !dbg !129
  %63 = sdiv i64 %62, 60, !dbg !130
  %64 = trunc i64 %63 to i32, !dbg !131
  %65 = srem i64 %62, 60, !dbg !133
  %66 = trunc i64 %65 to i32, !dbg !134
  %67 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 0, !dbg !136
  %68 = load i32, i32* %67, align 8, !dbg !137, !tbaa !138
  %69 = sub nsw i32 %68, %66, !dbg !137
  store i32 %69, i32* %67, align 8, !dbg !137, !tbaa !138
  %70 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 1, !dbg !139
  %71 = load i32, i32* %70, align 4, !dbg !140, !tbaa !141
  %72 = sub nsw i32 %71, %64, !dbg !140
  store i32 %72, i32* %70, align 4, !dbg !140, !tbaa !141
  %73 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 2, !dbg !142
  %74 = load i32, i32* %73, align 8, !dbg !143, !tbaa !144
  %75 = sub nsw i32 %74, %61, !dbg !143
  store i32 %75, i32* %73, align 8, !dbg !143, !tbaa !144
  %76 = icmp sgt i32 %69, 59, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !147
  br i1 %76, label %77, label %79, !dbg !147

; <label>:77:                                     ; preds = %57
  %78 = add nsw i32 %72, 1, !dbg !148
  br label %83, !dbg !150

; <label>:79:                                     ; preds = %57
  %80 = icmp slt i32 %69, 0, !dbg !151
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  br i1 %80, label %81, label %87, !dbg !153

; <label>:81:                                     ; preds = %79
  %82 = add nsw i32 %72, -1, !dbg !154
  br label %83, !dbg !156

; <label>:83:                                     ; preds = %77, %81
  %84 = phi i32 [ %82, %81 ], [ %78, %77 ]
  %85 = phi i32 [ 60, %81 ], [ -60, %77 ]
  store i32 %84, i32* %70, align 4, !dbg !157, !tbaa !141
  %86 = add i32 %69, %85, !dbg !157
  store i32 %86, i32* %67, align 8, !dbg !157, !tbaa !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !157
  br label %87, !dbg !158

; <label>:87:                                     ; preds = %83, %79
  %88 = phi i32 [ %72, %79 ], [ %84, %83 ], !dbg !160
  %89 = icmp sgt i32 %88, 59, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !161
  br i1 %89, label %90, label %92, !dbg !161

; <label>:90:                                     ; preds = %87
  %91 = add nsw i32 %75, 1, !dbg !162
  br label %96, !dbg !164

; <label>:92:                                     ; preds = %87
  %93 = icmp slt i32 %88, 0, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  br i1 %93, label %94, label %100, !dbg !167

; <label>:94:                                     ; preds = %92
  %95 = add nsw i32 %75, -1, !dbg !168
  br label %96, !dbg !170

; <label>:96:                                     ; preds = %90, %94
  %97 = phi i32 [ %95, %94 ], [ %91, %90 ]
  %98 = phi i32 [ 60, %94 ], [ -60, %90 ]
  store i32 %97, i32* %73, align 8, !dbg !171, !tbaa !144
  %99 = add i32 %88, %98, !dbg !171
  store i32 %99, i32* %70, align 4, !dbg !171, !tbaa !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br label %100, !dbg !172

; <label>:100:                                    ; preds = %96, %92
  %101 = phi i32 [ %75, %92 ], [ %97, %96 ], !dbg !174
  %102 = icmp sgt i32 %101, 23, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %102, label %103, label %130, !dbg !175

; <label>:103:                                    ; preds = %100
  %104 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 7, !dbg !176
  %105 = load i32, i32* %104, align 4, !dbg !178, !tbaa !179
  %106 = add nsw i32 %105, 1, !dbg !178
  store i32 %106, i32* %104, align 4, !dbg !178, !tbaa !179
  %107 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 6, !dbg !180
  %108 = load i32, i32* %107, align 8, !dbg !181, !tbaa !182
  %109 = add nsw i32 %108, 1, !dbg !181
  store i32 %109, i32* %107, align 8, !dbg !181, !tbaa !182
  %110 = icmp sgt i32 %108, 5, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  br i1 %110, label %111, label %112, !dbg !185

; <label>:111:                                    ; preds = %103
  store i32 0, i32* %107, align 8, !dbg !186, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !187
  br label %112, !dbg !187

; <label>:112:                                    ; preds = %111, %103
  %113 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3, !dbg !188
  %114 = load i32, i32* %113, align 4, !dbg !189, !tbaa !190
  %115 = add nsw i32 %114, 1, !dbg !189
  store i32 %115, i32* %113, align 4, !dbg !189, !tbaa !190
  %116 = add i32 %101, -24, !dbg !191
  store i32 %116, i32* %73, align 8, !dbg !191, !tbaa !144
  %117 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !192
  %118 = load i32, i32* %117, align 8, !dbg !192, !tbaa !194
  %119 = sext i32 %118 to i64, !dbg !195
  %120 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %18, i64 %119, !dbg !195
  %121 = load i32, i32* %120, align 4, !dbg !195, !tbaa !91
  %122 = icmp slt i32 %114, %121, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  br i1 %122, label %172, label %123, !dbg !197

; <label>:123:                                    ; preds = %112
  %124 = sub nsw i32 %115, %121, !dbg !198
  store i32 %124, i32* %113, align 4, !dbg !198, !tbaa !190
  %125 = add nsw i32 %118, 1, !dbg !200
  store i32 %125, i32* %117, align 8, !dbg !200, !tbaa !194
  %126 = icmp eq i32 %125, 12, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !203
  br i1 %126, label %127, label %172, !dbg !203

; <label>:127:                                    ; preds = %123
  store i32 0, i32* %117, align 8, !dbg !204, !tbaa !194
  %128 = load i32, i32* %5, align 4, !dbg !206, !tbaa !76
  %129 = add nsw i32 %128, 1, !dbg !206
  store i32 %129, i32* %5, align 4, !dbg !206, !tbaa !76
  store i32 0, i32* %104, align 4, !dbg !207, !tbaa !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br label %172, !dbg !208

; <label>:130:                                    ; preds = %100
  %131 = icmp slt i32 %101, 0, !dbg !209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  br i1 %131, label %132, label %172, !dbg !211

; <label>:132:                                    ; preds = %130
  %133 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 7, !dbg !212
  %134 = load i32, i32* %133, align 4, !dbg !214, !tbaa !179
  %135 = add nsw i32 %134, -1, !dbg !214
  store i32 %135, i32* %133, align 4, !dbg !214, !tbaa !179
  %136 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 6, !dbg !215
  %137 = load i32, i32* %136, align 8, !dbg !216, !tbaa !182
  %138 = add nsw i32 %137, -1, !dbg !216
  store i32 %138, i32* %136, align 8, !dbg !216, !tbaa !182
  %139 = icmp slt i32 %137, 1, !dbg !217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br i1 %139, label %140, label %141, !dbg !219

; <label>:140:                                    ; preds = %132
  store i32 6, i32* %136, align 8, !dbg !220, !tbaa !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br label %141, !dbg !221

; <label>:141:                                    ; preds = %140, %132
  %142 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 3, !dbg !222
  %143 = load i32, i32* %142, align 4, !dbg !223, !tbaa !190
  %144 = add nsw i32 %143, -1, !dbg !223
  store i32 %144, i32* %142, align 4, !dbg !223, !tbaa !190
  %145 = add nsw i32 %101, 24, !dbg !224
  store i32 %145, i32* %73, align 8, !dbg !224, !tbaa !144
  %146 = icmp eq i32 %144, 0, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %146, label %147, label %172, !dbg !227

; <label>:147:                                    ; preds = %141
  %148 = getelementptr inbounds %struct.tm, %struct.tm* %4, i64 0, i32 4, !dbg !228
  %149 = load i32, i32* %148, align 8, !dbg !230, !tbaa !194
  %150 = add nsw i32 %149, -1, !dbg !230
  store i32 %150, i32* %148, align 8, !dbg !230, !tbaa !194
  %151 = icmp slt i32 %149, 1, !dbg !231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br i1 %151, label %152, label %167, !dbg !233

; <label>:152:                                    ; preds = %147
  store i32 11, i32* %148, align 8, !dbg !234, !tbaa !194
  %153 = load i32, i32* %5, align 4, !dbg !236, !tbaa !76
  %154 = add nsw i32 %153, -1, !dbg !236
  store i32 %154, i32* %5, align 4, !dbg !236, !tbaa !76
  %155 = add nsw i32 %153, 1899, !dbg !237
  %156 = and i32 %155, 3, !dbg !237
  %157 = icmp eq i32 %156, 0, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %157, label %158, label %161, !dbg !237

; <label>:158:                                    ; preds = %152
  %159 = srem i32 %155, 100, !dbg !237
  %160 = icmp eq i32 %159, 0, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  br i1 %160, label %161, label %165, !dbg !237

; <label>:161:                                    ; preds = %158, %152
  %162 = srem i32 %155, 400, !dbg !237
  %163 = icmp eq i32 %162, 0, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %164 = select i1 %163, i32 365, i32 364, !dbg !237
  br label %165, !dbg !237

; <label>:165:                                    ; preds = %158, %161
  %166 = phi i32 [ 365, %158 ], [ %164, %161 ]
  store i32 %166, i32* %133, align 4, !dbg !238, !tbaa !179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br label %167, !dbg !239

; <label>:167:                                    ; preds = %165, %147
  %168 = phi i32 [ 11, %165 ], [ %150, %147 ], !dbg !240
  %169 = sext i32 %168 to i64, !dbg !241
  %170 = getelementptr inbounds [2 x [12 x i32]], [2 x [12 x i32]]* @__month_lengths, i64 0, i64 %18, i64 %169, !dbg !241
  %171 = load i32, i32* %170, align 4, !dbg !241, !tbaa !91
  store i32 %171, i32* %142, align 4, !dbg !242, !tbaa !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  br label %172, !dbg !243

; <label>:172:                                    ; preds = %112, %130, %167, %141, %127, %123
  tail call void @__tz_unlock() #3, !dbg !244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  ret %struct.tm* %4, !dbg !245
}

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local %struct.tm* @gmtime_r(i64*, %struct.tm*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__tz_lock() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @_tzset_unlocked() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @__tz_unlock() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/lcltime_r.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !{i32 2, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!9 = distinct !DISubprogram(name: "localtime_r", scope: !1, file: !1, line: 19, type: !10, isLocal: false, isDefinition: true, scopeLine: 22, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !31, !36}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !14, line: 31, size: 448, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/musl-imported/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "tm_sec", scope: !13, file: !14, line: 32, baseType: !4, size: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "tm_min", scope: !13, file: !14, line: 33, baseType: !4, size: 32, offset: 32)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "tm_hour", scope: !13, file: !14, line: 34, baseType: !4, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mday", scope: !13, file: !14, line: 35, baseType: !4, size: 32, offset: 96)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tm_mon", scope: !13, file: !14, line: 36, baseType: !4, size: 32, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "tm_year", scope: !13, file: !14, line: 37, baseType: !4, size: 32, offset: 160)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "tm_wday", scope: !13, file: !14, line: 38, baseType: !4, size: 32, offset: 192)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tm_yday", scope: !13, file: !14, line: 39, baseType: !4, size: 32, offset: 224)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tm_isdst", scope: !13, file: !14, line: 40, baseType: !4, size: 32, offset: 256)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_gmtoff", scope: !13, file: !14, line: 41, baseType: !26, size: 64, offset: 320)
!26 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_zone", scope: !13, file: !14, line: 42, baseType: !28, size: 64, offset: 384)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !35, line: 34, baseType: !26)
!35 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !12)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !68}
!38 = !DILocalVariable(name: "tim_p", arg: 1, scope: !9, file: !1, line: 19, type: !31)
!39 = !DILocalVariable(name: "res", arg: 2, scope: !9, file: !1, line: 19, type: !36)
!40 = !DILocalVariable(name: "offset", scope: !9, file: !1, line: 23, type: !26)
!41 = !DILocalVariable(name: "hours", scope: !9, file: !1, line: 24, type: !4)
!42 = !DILocalVariable(name: "mins", scope: !9, file: !1, line: 24, type: !4)
!43 = !DILocalVariable(name: "secs", scope: !9, file: !1, line: 24, type: !4)
!44 = !DILocalVariable(name: "year", scope: !9, file: !1, line: 25, type: !4)
!45 = !DILocalVariable(name: "tz", scope: !9, file: !1, line: 26, type: !46)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !49, line: 65, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !49, line: 60, size: 704, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !50, file: !49, line: 62, baseType: !4, size: 32)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !50, file: !49, line: 63, baseType: !4, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !50, file: !49, line: 64, baseType: !55, size: 640, offset: 64)
!55 = !DICompositeType(tag: DW_TAG_array_type, baseType: !56, size: 640, elements: !66)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !49, line: 58, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !49, line: 49, size: 320, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !57, file: !49, line: 51, baseType: !30, size: 8)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !57, file: !49, line: 52, baseType: !4, size: 32, offset: 32)
!61 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !57, file: !49, line: 53, baseType: !4, size: 32, offset: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !57, file: !49, line: 54, baseType: !4, size: 32, offset: 96)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !57, file: !49, line: 55, baseType: !4, size: 32, offset: 128)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !57, file: !49, line: 56, baseType: !34, size: 64, offset: 192)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !57, file: !49, line: 57, baseType: !26, size: 64, offset: 256)
!66 = !{!67}
!67 = !DISubrange(count: 2)
!68 = !DILocalVariable(name: "ip", scope: !9, file: !1, line: 27, type: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!71 = !DILocation(line: 19, column: 1, scope: !9)
!72 = !DILocation(line: 26, column: 30, scope: !9)
!73 = !DILocation(line: 26, column: 25, scope: !9)
!74 = !DILocation(line: 29, column: 9, scope: !9)
!75 = !DILocation(line: 31, column: 15, scope: !9)
!76 = !{!77, !78, i64 20}
!77 = !{!"tm", !78, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !78, i64 20, !78, i64 24, !78, i64 28, !78, i64 32, !81, i64 40, !82, i64 48}
!78 = !{!"int", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C/C++ TBAA"}
!81 = !{!"long", !79, i64 0}
!82 = !{!"any pointer", !79, i64 0}
!83 = !DILocation(line: 31, column: 23, scope: !9)
!84 = !DILocation(line: 25, column: 7, scope: !9)
!85 = !DILocation(line: 32, column: 24, scope: !9)
!86 = !DILocation(line: 32, column: 8, scope: !9)
!87 = !DILocation(line: 34, column: 3, scope: !9)
!88 = !DILocation(line: 35, column: 3, scope: !9)
!89 = !DILocation(line: 36, column: 7, scope: !90)
!90 = distinct !DILexicalBlock(scope: !9, file: !1, line: 36, column: 7)
!91 = !{!78, !78, i64 0}
!92 = !DILocation(line: 36, column: 7, scope: !9)
!93 = !DILocation(line: 38, column: 23, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 38, column: 11)
!95 = distinct !DILexicalBlock(scope: !90, file: !1, line: 37, column: 5)
!96 = !{!97, !78, i64 4}
!97 = !{!"__tzinfo_struct", !78, i64 0, !78, i64 4, !79, i64 8}
!98 = !DILocation(line: 38, column: 16, scope: !94)
!99 = !DILocation(line: 38, column: 32, scope: !94)
!100 = !DILocation(line: 38, column: 35, scope: !94)
!101 = !DILocation(line: 38, column: 11, scope: !95)
!102 = !DILocation(line: 39, column: 23, scope: !94)
!103 = !{!97, !78, i64 0}
!104 = !DILocation(line: 39, column: 19, scope: !94)
!105 = !DILocation(line: 0, scope: !94)
!106 = !{!81, !81, i64 0}
!107 = !{!108, !81, i64 24}
!108 = !{!"__tzrule_struct", !79, i64 0, !78, i64 4, !78, i64 8, !78, i64 12, !78, i64 16, !81, i64 24, !81, i64 32}
!109 = !DILocation(line: 41, column: 4, scope: !94)
!110 = !DILocation(line: 41, column: 32, scope: !94)
!111 = !DILocation(line: 41, column: 14, scope: !94)
!112 = !DILocation(line: 43, column: 4, scope: !94)
!113 = !DILocation(line: 43, column: 32, scope: !94)
!114 = !DILocation(line: 43, column: 14, scope: !94)
!115 = !DILocation(line: 0, scope: !90)
!116 = !{!77, !78, i64 32}
!117 = !DILocation(line: 50, column: 13, scope: !9)
!118 = !DILocation(line: 39, column: 7, scope: !94)
!119 = !DILocation(line: 39, column: 16, scope: !94)
!120 = !DILocation(line: 39, column: 2, scope: !94)
!121 = !DILocation(line: 51, column: 23, scope: !9)
!122 = !DILocation(line: 52, column: 23, scope: !9)
!123 = !DILocation(line: 0, scope: !9)
!124 = !{!108, !81, i64 32}
!125 = !DILocation(line: 23, column: 8, scope: !9)
!126 = !DILocation(line: 54, column: 25, scope: !9)
!127 = !DILocation(line: 54, column: 11, scope: !9)
!128 = !DILocation(line: 24, column: 7, scope: !9)
!129 = !DILocation(line: 55, column: 19, scope: !9)
!130 = !DILocation(line: 57, column: 24, scope: !9)
!131 = !DILocation(line: 57, column: 10, scope: !9)
!132 = !DILocation(line: 24, column: 14, scope: !9)
!133 = !DILocation(line: 58, column: 24, scope: !9)
!134 = !DILocation(line: 58, column: 10, scope: !9)
!135 = !DILocation(line: 24, column: 20, scope: !9)
!136 = !DILocation(line: 60, column: 8, scope: !9)
!137 = !DILocation(line: 60, column: 15, scope: !9)
!138 = !{!77, !78, i64 0}
!139 = !DILocation(line: 61, column: 8, scope: !9)
!140 = !DILocation(line: 61, column: 15, scope: !9)
!141 = !{!77, !78, i64 4}
!142 = !DILocation(line: 62, column: 8, scope: !9)
!143 = !DILocation(line: 62, column: 16, scope: !9)
!144 = !{!77, !78, i64 8}
!145 = !DILocation(line: 64, column: 19, scope: !146)
!146 = distinct !DILexicalBlock(scope: !9, file: !1, line: 64, column: 7)
!147 = !DILocation(line: 64, column: 7, scope: !9)
!148 = !DILocation(line: 66, column: 19, scope: !149)
!149 = distinct !DILexicalBlock(scope: !146, file: !1, line: 65, column: 5)
!150 = !DILocation(line: 68, column: 5, scope: !149)
!151 = !DILocation(line: 69, column: 24, scope: !152)
!152 = distinct !DILexicalBlock(scope: !146, file: !1, line: 69, column: 12)
!153 = !DILocation(line: 69, column: 12, scope: !146)
!154 = !DILocation(line: 71, column: 19, scope: !155)
!155 = distinct !DILexicalBlock(scope: !152, file: !1, line: 70, column: 5)
!156 = !DILocation(line: 73, column: 5, scope: !155)
!157 = !DILocation(line: 0, scope: !149)
!158 = !DILocation(line: 74, column: 19, scope: !159)
!159 = distinct !DILexicalBlock(scope: !9, file: !1, line: 74, column: 7)
!160 = !DILocation(line: 74, column: 12, scope: !159)
!161 = !DILocation(line: 74, column: 7, scope: !9)
!162 = !DILocation(line: 76, column: 20, scope: !163)
!163 = distinct !DILexicalBlock(scope: !159, file: !1, line: 75, column: 5)
!164 = !DILocation(line: 78, column: 5, scope: !163)
!165 = !DILocation(line: 79, column: 24, scope: !166)
!166 = distinct !DILexicalBlock(scope: !159, file: !1, line: 79, column: 12)
!167 = !DILocation(line: 79, column: 12, scope: !159)
!168 = !DILocation(line: 81, column: 20, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 80, column: 5)
!170 = !DILocation(line: 83, column: 5, scope: !169)
!171 = !DILocation(line: 0, scope: !163)
!172 = !DILocation(line: 84, column: 20, scope: !173)
!173 = distinct !DILexicalBlock(scope: !9, file: !1, line: 84, column: 7)
!174 = !DILocation(line: 84, column: 12, scope: !173)
!175 = !DILocation(line: 84, column: 7, scope: !9)
!176 = !DILocation(line: 86, column: 14, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 85, column: 5)
!178 = !DILocation(line: 86, column: 7, scope: !177)
!179 = !{!77, !78, i64 28}
!180 = !DILocation(line: 87, column: 14, scope: !177)
!181 = !DILocation(line: 87, column: 7, scope: !177)
!182 = !{!77, !78, i64 24}
!183 = !DILocation(line: 88, column: 24, scope: !184)
!184 = distinct !DILexicalBlock(scope: !177, file: !1, line: 88, column: 11)
!185 = !DILocation(line: 88, column: 11, scope: !177)
!186 = !DILocation(line: 89, column: 15, scope: !184)
!187 = !DILocation(line: 89, column: 2, scope: !184)
!188 = !DILocation(line: 90, column: 14, scope: !177)
!189 = !DILocation(line: 90, column: 7, scope: !177)
!190 = !{!77, !78, i64 12}
!191 = !DILocation(line: 91, column: 20, scope: !177)
!192 = !DILocation(line: 92, column: 34, scope: !193)
!193 = distinct !DILexicalBlock(scope: !177, file: !1, line: 92, column: 11)
!194 = !{!77, !78, i64 16}
!195 = !DILocation(line: 92, column: 26, scope: !193)
!196 = !DILocation(line: 92, column: 24, scope: !193)
!197 = !DILocation(line: 92, column: 11, scope: !177)
!198 = !DILocation(line: 94, column: 17, scope: !199)
!199 = distinct !DILexicalBlock(scope: !193, file: !1, line: 93, column: 2)
!200 = !DILocation(line: 95, column: 16, scope: !199)
!201 = !DILocation(line: 96, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !199, file: !1, line: 96, column: 8)
!203 = !DILocation(line: 96, column: 8, scope: !199)
!204 = !DILocation(line: 98, column: 20, scope: !205)
!205 = distinct !DILexicalBlock(scope: !202, file: !1, line: 97, column: 6)
!206 = !DILocation(line: 99, column: 21, scope: !205)
!207 = !DILocation(line: 100, column: 21, scope: !205)
!208 = !DILocation(line: 101, column: 6, scope: !205)
!209 = !DILocation(line: 104, column: 25, scope: !210)
!210 = distinct !DILexicalBlock(scope: !173, file: !1, line: 104, column: 12)
!211 = !DILocation(line: 104, column: 12, scope: !173)
!212 = !DILocation(line: 106, column: 12, scope: !213)
!213 = distinct !DILexicalBlock(scope: !210, file: !1, line: 105, column: 5)
!214 = !DILocation(line: 106, column: 20, scope: !213)
!215 = !DILocation(line: 107, column: 12, scope: !213)
!216 = !DILocation(line: 107, column: 20, scope: !213)
!217 = !DILocation(line: 108, column: 24, scope: !218)
!218 = distinct !DILexicalBlock(scope: !213, file: !1, line: 108, column: 11)
!219 = !DILocation(line: 108, column: 11, scope: !213)
!220 = !DILocation(line: 109, column: 15, scope: !218)
!221 = !DILocation(line: 109, column: 2, scope: !218)
!222 = !DILocation(line: 110, column: 12, scope: !213)
!223 = !DILocation(line: 110, column: 20, scope: !213)
!224 = !DILocation(line: 111, column: 20, scope: !213)
!225 = !DILocation(line: 112, column: 24, scope: !226)
!226 = distinct !DILexicalBlock(scope: !213, file: !1, line: 112, column: 11)
!227 = !DILocation(line: 112, column: 11, scope: !213)
!228 = !DILocation(line: 114, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !226, file: !1, line: 113, column: 2)
!230 = !DILocation(line: 114, column: 16, scope: !229)
!231 = !DILocation(line: 115, column: 20, scope: !232)
!232 = distinct !DILexicalBlock(scope: !229, file: !1, line: 115, column: 8)
!233 = !DILocation(line: 115, column: 8, scope: !229)
!234 = !DILocation(line: 117, column: 20, scope: !235)
!235 = distinct !DILexicalBlock(scope: !232, file: !1, line: 116, column: 6)
!236 = !DILocation(line: 118, column: 21, scope: !235)
!237 = !DILocation(line: 119, column: 29, scope: !235)
!238 = !DILocation(line: 119, column: 21, scope: !235)
!239 = !DILocation(line: 120, column: 6, scope: !235)
!240 = !DILocation(line: 121, column: 27, scope: !229)
!241 = !DILocation(line: 121, column: 19, scope: !229)
!242 = !DILocation(line: 121, column: 17, scope: !229)
!243 = !DILocation(line: 122, column: 2, scope: !229)
!244 = !DILocation(line: 124, column: 3, scope: !9)
!245 = !DILocation(line: 126, column: 3, scope: !9)
