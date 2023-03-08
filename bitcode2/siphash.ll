; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/siphash.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/siphash.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @siptlw(i32) local_unnamed_addr #0 !dbg !14 {
  %2 = add i32 %0, -65, !dbg !21
  %3 = icmp ult i32 %2, 26, !dbg !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !21
  %4 = add nsw i32 %0, 32, !dbg !23
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !26
  ret i32 %5, !dbg !26
}

; Function Attrs: noredzone nounwind
define dso_local i64 @siphash(i8* readonly, i64, i8* nocapture readonly) local_unnamed_addr #0 !dbg !27 {
  %4 = bitcast i8* %2 to i64*, !dbg !62
  %5 = load i64, i64* %4, align 8, !dbg !62, !tbaa !63
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !68
  %7 = bitcast i8* %6 to i64*, !dbg !68
  %8 = load i64, i64* %7, align 8, !dbg !68, !tbaa !63
  %9 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !70
  %10 = and i64 %1, 7, !dbg !71
  %11 = sub nsw i64 0, %10, !dbg !72
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !72
  %13 = shl i64 %1, 56, !dbg !74
  %14 = xor i64 %8, 8387220255154660723, !dbg !76
  %15 = xor i64 %5, 7816392313619706465, !dbg !77
  %16 = xor i64 %8, 7237128888997146477, !dbg !78
  %17 = xor i64 %5, 8317987319222330741, !dbg !79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  %18 = icmp eq i8* %12, %0, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %18, label %57, label %19, !dbg !84

; <label>:19:                                     ; preds = %3, %19
  %20 = phi i8* [ %55, %19 ], [ %0, %3 ]
  %21 = phi i64 [ %54, %19 ], [ %17, %3 ]
  %22 = phi i64 [ %50, %19 ], [ %16, %3 ]
  %23 = phi i64 [ %53, %19 ], [ %15, %3 ]
  %24 = phi i64 [ %45, %19 ], [ %14, %3 ]
  %25 = bitcast i8* %20 to i64*, !dbg !85
  %26 = load i64, i64* %25, align 8, !dbg !85, !tbaa !63
  %27 = xor i64 %26, %24, !dbg !88
  %28 = add i64 %21, %22, !dbg !89
  %29 = shl i64 %22, 13, !dbg !89
  %30 = lshr i64 %22, 51, !dbg !89
  %31 = or i64 %29, %30, !dbg !89
  %32 = xor i64 %31, %28, !dbg !89
  %33 = shl i64 %28, 32, !dbg !89
  %34 = lshr i64 %28, 32, !dbg !89
  %35 = or i64 %33, %34, !dbg !89
  %36 = add i64 %27, %23, !dbg !89
  %37 = shl i64 %27, 16, !dbg !89
  %38 = lshr i64 %27, 48, !dbg !89
  %39 = or i64 %37, %38, !dbg !89
  %40 = xor i64 %39, %36, !dbg !89
  %41 = add i64 %40, %35, !dbg !89
  %42 = shl i64 %40, 21, !dbg !89
  %43 = lshr i64 %40, 43, !dbg !89
  %44 = or i64 %42, %43, !dbg !89
  %45 = xor i64 %44, %41, !dbg !89
  %46 = add i64 %36, %32, !dbg !89
  %47 = shl i64 %32, 17, !dbg !89
  %48 = lshr i64 %32, 47, !dbg !89
  %49 = or i64 %47, %48, !dbg !89
  %50 = xor i64 %46, %49, !dbg !89
  %51 = shl i64 %46, 32, !dbg !89
  %52 = lshr i64 %46, 32, !dbg !89
  %53 = or i64 %51, %52, !dbg !89
  %54 = xor i64 %41, %26, !dbg !91
  %55 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !92
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  %56 = icmp eq i8* %55, %12, !dbg !81
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !84
  br i1 %56, label %57, label %19, !dbg !84, !llvm.loop !94

; <label>:57:                                     ; preds = %19, %3
  %58 = phi i64 [ %14, %3 ], [ %45, %19 ], !dbg !96
  %59 = phi i64 [ %15, %3 ], [ %53, %19 ], !dbg !96
  %60 = phi i64 [ %16, %3 ], [ %50, %19 ], !dbg !96
  %61 = phi i64 [ %17, %3 ], [ %54, %19 ], !dbg !97
  %62 = phi i8* [ %0, %3 ], [ %12, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !98
  %63 = trunc i64 %1 to i3, !dbg !98
  switch i3 %63, label %110 [
    i3 -1, label %64
    i3 -2, label %70
    i3 -3, label %77
    i3 -4, label %84
    i3 3, label %91
    i3 2, label %98
    i3 1, label %105
  ], !dbg !98

; <label>:64:                                     ; preds = %57
  %65 = getelementptr inbounds i8, i8* %62, i64 6, !dbg !99
  %66 = load i8, i8* %65, align 1, !dbg !99, !tbaa !101
  %67 = zext i8 %66 to i64, !dbg !102
  %68 = shl nuw nsw i64 %67, 48, !dbg !103
  %69 = or i64 %68, %13, !dbg !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !105
  br label %70, !dbg !105

; <label>:70:                                     ; preds = %57, %64
  %71 = phi i64 [ %13, %57 ], [ %69, %64 ], !dbg !106
  %72 = getelementptr inbounds i8, i8* %62, i64 5, !dbg !107
  %73 = load i8, i8* %72, align 1, !dbg !107, !tbaa !101
  %74 = zext i8 %73 to i64, !dbg !108
  %75 = shl nuw nsw i64 %74, 40, !dbg !109
  %76 = or i64 %75, %71, !dbg !110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !111
  br label %77, !dbg !111

; <label>:77:                                     ; preds = %57, %70
  %78 = phi i64 [ %13, %57 ], [ %76, %70 ], !dbg !106
  %79 = getelementptr inbounds i8, i8* %62, i64 4, !dbg !112
  %80 = load i8, i8* %79, align 1, !dbg !112, !tbaa !101
  %81 = zext i8 %80 to i64, !dbg !113
  %82 = shl nuw nsw i64 %81, 32, !dbg !114
  %83 = or i64 %82, %78, !dbg !115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br label %84, !dbg !116

; <label>:84:                                     ; preds = %57, %77
  %85 = phi i64 [ %13, %57 ], [ %83, %77 ], !dbg !106
  %86 = getelementptr inbounds i8, i8* %62, i64 3, !dbg !117
  %87 = load i8, i8* %86, align 1, !dbg !117, !tbaa !101
  %88 = zext i8 %87 to i64, !dbg !118
  %89 = shl nuw nsw i64 %88, 24, !dbg !119
  %90 = or i64 %89, %85, !dbg !120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !121
  br label %91, !dbg !121

; <label>:91:                                     ; preds = %57, %84
  %92 = phi i64 [ %13, %57 ], [ %90, %84 ], !dbg !106
  %93 = getelementptr inbounds i8, i8* %62, i64 2, !dbg !122
  %94 = load i8, i8* %93, align 1, !dbg !122, !tbaa !101
  %95 = zext i8 %94 to i64, !dbg !123
  %96 = shl nuw nsw i64 %95, 16, !dbg !124
  %97 = or i64 %96, %92, !dbg !125
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br label %98, !dbg !126

; <label>:98:                                     ; preds = %57, %91
  %99 = phi i64 [ %13, %57 ], [ %97, %91 ], !dbg !106
  %100 = getelementptr inbounds i8, i8* %62, i64 1, !dbg !127
  %101 = load i8, i8* %100, align 1, !dbg !127, !tbaa !101
  %102 = zext i8 %101 to i64, !dbg !128
  %103 = shl nuw nsw i64 %102, 8, !dbg !129
  %104 = or i64 %103, %99, !dbg !130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !131
  br label %105, !dbg !131

; <label>:105:                                    ; preds = %57, %98
  %106 = phi i64 [ %13, %57 ], [ %104, %98 ], !dbg !106
  %107 = load i8, i8* %62, align 1, !dbg !132, !tbaa !101
  %108 = zext i8 %107 to i64, !dbg !133
  %109 = or i64 %106, %108, !dbg !134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !135
  br label %110, !dbg !135

; <label>:110:                                    ; preds = %57, %105
  %111 = phi i64 [ %13, %57 ], [ %109, %105 ], !dbg !106
  %112 = xor i64 %111, %58, !dbg !136
  %113 = add i64 %61, %60, !dbg !137
  %114 = shl i64 %60, 13, !dbg !137
  %115 = lshr i64 %60, 51, !dbg !137
  %116 = or i64 %114, %115, !dbg !137
  %117 = xor i64 %116, %113, !dbg !137
  %118 = shl i64 %113, 32, !dbg !137
  %119 = lshr i64 %113, 32, !dbg !137
  %120 = or i64 %118, %119, !dbg !137
  %121 = add i64 %112, %59, !dbg !137
  %122 = shl i64 %112, 16, !dbg !137
  %123 = lshr i64 %112, 48, !dbg !137
  %124 = or i64 %122, %123, !dbg !137
  %125 = xor i64 %124, %121, !dbg !137
  %126 = add i64 %125, %120, !dbg !137
  %127 = shl i64 %125, 21, !dbg !137
  %128 = lshr i64 %125, 43, !dbg !137
  %129 = or i64 %127, %128, !dbg !137
  %130 = xor i64 %129, %126, !dbg !137
  %131 = add i64 %121, %117, !dbg !137
  %132 = shl i64 %117, 17, !dbg !137
  %133 = lshr i64 %117, 47, !dbg !137
  %134 = or i64 %132, %133, !dbg !137
  %135 = xor i64 %131, %134, !dbg !137
  %136 = shl i64 %131, 32, !dbg !137
  %137 = lshr i64 %131, 32, !dbg !137
  %138 = or i64 %136, %137, !dbg !137
  %139 = xor i64 %126, %111, !dbg !139
  %140 = xor i64 %138, 255, !dbg !140
  %141 = add i64 %139, %135, !dbg !141
  %142 = shl i64 %135, 13, !dbg !141
  %143 = lshr i64 %135, 51, !dbg !141
  %144 = or i64 %142, %143, !dbg !141
  %145 = xor i64 %141, %144, !dbg !141
  %146 = shl i64 %141, 32, !dbg !141
  %147 = lshr i64 %141, 32, !dbg !141
  %148 = or i64 %146, %147, !dbg !141
  %149 = add i64 %130, %140, !dbg !141
  %150 = shl i64 %130, 16, !dbg !141
  %151 = lshr i64 %130, 48, !dbg !141
  %152 = or i64 %150, %151, !dbg !141
  %153 = xor i64 %152, %149, !dbg !141
  %154 = add i64 %153, %148, !dbg !141
  %155 = shl i64 %153, 21, !dbg !141
  %156 = lshr i64 %153, 43, !dbg !141
  %157 = or i64 %155, %156, !dbg !141
  %158 = xor i64 %157, %154, !dbg !141
  %159 = add i64 %149, %145, !dbg !141
  %160 = shl i64 %145, 17, !dbg !141
  %161 = lshr i64 %145, 47, !dbg !141
  %162 = or i64 %160, %161, !dbg !141
  %163 = xor i64 %162, %159, !dbg !141
  %164 = shl i64 %159, 32, !dbg !141
  %165 = lshr i64 %159, 32, !dbg !141
  %166 = or i64 %164, %165, !dbg !141
  %167 = add i64 %154, %163, !dbg !143
  %168 = shl i64 %163, 13, !dbg !143
  %169 = lshr i64 %163, 51, !dbg !143
  %170 = or i64 %168, %169, !dbg !143
  %171 = xor i64 %170, %167, !dbg !143
  %172 = add i64 %158, %166, !dbg !143
  %173 = shl i64 %158, 16, !dbg !143
  %174 = lshr i64 %158, 48, !dbg !143
  %175 = or i64 %173, %174, !dbg !143
  %176 = xor i64 %175, %172, !dbg !143
  %177 = shl i64 %176, 21, !dbg !143
  %178 = lshr i64 %176, 43, !dbg !143
  %179 = or i64 %177, %178, !dbg !143
  %180 = add i64 %172, %171, !dbg !143
  %181 = shl i64 %171, 17, !dbg !143
  %182 = lshr i64 %171, 47, !dbg !143
  %183 = or i64 %181, %182, !dbg !143
  %184 = shl i64 %180, 32, !dbg !143
  %185 = lshr i64 %180, 32, !dbg !143
  %186 = or i64 %184, %185, !dbg !143
  %187 = xor i64 %183, %180, !dbg !145
  %188 = xor i64 %187, %186, !dbg !146
  %189 = xor i64 %188, %179, !dbg !147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !148
  ret i64 %189, !dbg !148
}

; Function Attrs: noredzone nounwind
define dso_local i64 @siphash_nocase(i8* readonly, i64, i8* nocapture readonly) local_unnamed_addr #0 !dbg !149 {
  %4 = bitcast i8* %2 to i64*, !dbg !171
  %5 = load i64, i64* %4, align 8, !dbg !171, !tbaa !63
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !173
  %7 = bitcast i8* %6 to i64*, !dbg !173
  %8 = load i64, i64* %7, align 8, !dbg !173, !tbaa !63
  %9 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !175
  %10 = and i64 %1, 7, !dbg !176
  %11 = sub nsw i64 0, %10, !dbg !177
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !177
  %13 = shl i64 %1, 56, !dbg !179
  %14 = xor i64 %8, 8387220255154660723, !dbg !181
  %15 = xor i64 %5, 7816392313619706465, !dbg !182
  %16 = xor i64 %8, 7237128888997146477, !dbg !183
  %17 = xor i64 %5, 8317987319222330741, !dbg !184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !185
  %18 = icmp eq i8* %12, %0, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %18, label %130, label %19, !dbg !189

; <label>:19:                                     ; preds = %3, %19
  %20 = phi i8* [ %128, %19 ], [ %0, %3 ]
  %21 = phi i64 [ %127, %19 ], [ %17, %3 ]
  %22 = phi i64 [ %123, %19 ], [ %16, %3 ]
  %23 = phi i64 [ %126, %19 ], [ %15, %3 ]
  %24 = phi i64 [ %118, %19 ], [ %14, %3 ]
  %25 = load i8, i8* %20, align 1, !dbg !190, !tbaa !101
  %26 = zext i8 %25 to i32, !dbg !190
  %27 = add nsw i32 %26, -65, !dbg !194
  %28 = icmp ult i32 %27, 26, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  %29 = add nuw nsw i32 %26, 32, !dbg !195
  %30 = select i1 %28, i32 %29, i32 %26, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !197
  %31 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !190
  %32 = load i8, i8* %31, align 1, !dbg !190, !tbaa !101
  %33 = zext i8 %32 to i32, !dbg !190
  %34 = add nsw i32 %33, -65, !dbg !200
  %35 = icmp ult i32 %34, 26, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  %36 = shl nuw nsw i32 %33, 8, !dbg !190
  %37 = add nuw nsw i32 %36, 8192, !dbg !190
  %38 = select i1 %35, i32 %37, i32 %36, !dbg !190
  %39 = or i32 %38, %30, !dbg !190
  %40 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !190
  %41 = load i8, i8* %40, align 1, !dbg !190, !tbaa !101
  %42 = zext i8 %41 to i32, !dbg !190
  %43 = add nsw i32 %42, -65, !dbg !204
  %44 = icmp ult i32 %43, 26, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  %45 = shl nuw nsw i32 %42, 16, !dbg !190
  %46 = add nuw nsw i32 %45, 2097152, !dbg !190
  %47 = select i1 %44, i32 %46, i32 %45, !dbg !190
  %48 = or i32 %39, %47, !dbg !190
  %49 = zext i32 %48 to i64, !dbg !190
  %50 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !190
  %51 = load i8, i8* %50, align 1, !dbg !190, !tbaa !101
  %52 = zext i8 %51 to i32, !dbg !190
  %53 = add nsw i32 %52, -65, !dbg !208
  %54 = icmp ult i32 %53, 26, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  %55 = add nuw nsw i32 %52, 32, !dbg !209
  %56 = select i1 %54, i32 %55, i32 %52, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  %57 = zext i32 %56 to i64, !dbg !190
  %58 = shl nuw nsw i64 %57, 24, !dbg !190
  %59 = or i64 %58, %49, !dbg !190
  %60 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !190
  %61 = load i8, i8* %60, align 1, !dbg !190, !tbaa !101
  %62 = zext i8 %61 to i32, !dbg !190
  %63 = add nsw i32 %62, -65, !dbg !213
  %64 = icmp ult i32 %63, 26, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !213
  %65 = add nuw nsw i32 %62, 32, !dbg !214
  %66 = select i1 %64, i32 %65, i32 %62, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %67 = zext i32 %66 to i64, !dbg !190
  %68 = shl nuw nsw i64 %67, 32, !dbg !190
  %69 = or i64 %59, %68, !dbg !190
  %70 = getelementptr inbounds i8, i8* %20, i64 5, !dbg !190
  %71 = load i8, i8* %70, align 1, !dbg !190, !tbaa !101
  %72 = zext i8 %71 to i32, !dbg !190
  %73 = add nsw i32 %72, -65, !dbg !218
  %74 = icmp ult i32 %73, 26, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %75 = add nuw nsw i32 %72, 32, !dbg !219
  %76 = select i1 %74, i32 %75, i32 %72, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %77 = zext i32 %76 to i64, !dbg !190
  %78 = shl nuw nsw i64 %77, 40, !dbg !190
  %79 = or i64 %69, %78, !dbg !190
  %80 = getelementptr inbounds i8, i8* %20, i64 6, !dbg !190
  %81 = load i8, i8* %80, align 1, !dbg !190, !tbaa !101
  %82 = zext i8 %81 to i32, !dbg !190
  %83 = add nsw i32 %82, -65, !dbg !223
  %84 = icmp ult i32 %83, 26, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  %85 = add nuw nsw i32 %82, 32, !dbg !224
  %86 = select i1 %84, i32 %85, i32 %82, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  %87 = zext i32 %86 to i64, !dbg !190
  %88 = shl nuw nsw i64 %87, 48, !dbg !190
  %89 = or i64 %79, %88, !dbg !190
  %90 = getelementptr inbounds i8, i8* %20, i64 7, !dbg !190
  %91 = load i8, i8* %90, align 1, !dbg !190, !tbaa !101
  %92 = zext i8 %91 to i32, !dbg !190
  %93 = add nsw i32 %92, -65, !dbg !228
  %94 = icmp ult i32 %93, 26, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  %95 = add nuw nsw i32 %92, 32, !dbg !229
  %96 = select i1 %94, i32 %95, i32 %92, !dbg !228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !230
  %97 = zext i32 %96 to i64, !dbg !190
  %98 = shl i64 %97, 56, !dbg !190
  %99 = or i64 %89, %98, !dbg !190
  %100 = xor i64 %99, %24, !dbg !232
  %101 = add i64 %21, %22, !dbg !233
  %102 = shl i64 %22, 13, !dbg !233
  %103 = lshr i64 %22, 51, !dbg !233
  %104 = or i64 %102, %103, !dbg !233
  %105 = xor i64 %104, %101, !dbg !233
  %106 = shl i64 %101, 32, !dbg !233
  %107 = lshr i64 %101, 32, !dbg !233
  %108 = or i64 %106, %107, !dbg !233
  %109 = add i64 %100, %23, !dbg !233
  %110 = shl i64 %100, 16, !dbg !233
  %111 = lshr i64 %100, 48, !dbg !233
  %112 = or i64 %110, %111, !dbg !233
  %113 = xor i64 %112, %109, !dbg !233
  %114 = add i64 %113, %108, !dbg !233
  %115 = shl i64 %113, 21, !dbg !233
  %116 = lshr i64 %113, 43, !dbg !233
  %117 = or i64 %115, %116, !dbg !233
  %118 = xor i64 %117, %114, !dbg !233
  %119 = add i64 %109, %105, !dbg !233
  %120 = shl i64 %105, 17, !dbg !233
  %121 = lshr i64 %105, 47, !dbg !233
  %122 = or i64 %120, %121, !dbg !233
  %123 = xor i64 %119, %122, !dbg !233
  %124 = shl i64 %119, 32, !dbg !233
  %125 = lshr i64 %119, 32, !dbg !233
  %126 = or i64 %124, %125, !dbg !233
  %127 = xor i64 %114, %99, !dbg !235
  %128 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %129 = icmp eq i8* %128, %12, !dbg !186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br i1 %129, label %130, label %19, !dbg !189, !llvm.loop !238

; <label>:130:                                    ; preds = %19, %3
  %131 = phi i64 [ %14, %3 ], [ %118, %19 ], !dbg !240
  %132 = phi i64 [ %15, %3 ], [ %126, %19 ], !dbg !240
  %133 = phi i64 [ %16, %3 ], [ %123, %19 ], !dbg !240
  %134 = phi i64 [ %17, %3 ], [ %127, %19 ], !dbg !196
  %135 = phi i8* [ %0, %3 ], [ %12, %19 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  %136 = trunc i64 %1 to i3, !dbg !241
  switch i3 %136, label %218 [
    i3 -1, label %137
    i3 -2, label %148
    i3 -3, label %160
    i3 -4, label %172
    i3 3, label %184
    i3 2, label %196
    i3 1, label %208
  ], !dbg !241

; <label>:137:                                    ; preds = %130
  %138 = getelementptr inbounds i8, i8* %135, i64 6, !dbg !242
  %139 = load i8, i8* %138, align 1, !dbg !242, !tbaa !101
  %140 = zext i8 %139 to i32, !dbg !242
  %141 = add nsw i32 %140, -65, !dbg !246
  %142 = icmp ult i32 %141, 26, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %143 = add nuw nsw i32 %140, 32, !dbg !247
  %144 = select i1 %142, i32 %143, i32 %140, !dbg !246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %145 = zext i32 %144 to i64, !dbg !250
  %146 = shl nuw nsw i64 %145, 48, !dbg !251
  %147 = or i64 %146, %13, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br label %148, !dbg !253

; <label>:148:                                    ; preds = %130, %137
  %149 = phi i64 [ %13, %130 ], [ %147, %137 ], !dbg !248
  %150 = getelementptr inbounds i8, i8* %135, i64 5, !dbg !254
  %151 = load i8, i8* %150, align 1, !dbg !254, !tbaa !101
  %152 = zext i8 %151 to i32, !dbg !254
  %153 = add nsw i32 %152, -65, !dbg !257
  %154 = icmp ult i32 %153, 26, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  %155 = add nuw nsw i32 %152, 32, !dbg !258
  %156 = select i1 %154, i32 %155, i32 %152, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  %157 = zext i32 %156 to i64, !dbg !260
  %158 = shl nuw nsw i64 %157, 40, !dbg !261
  %159 = or i64 %158, %149, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br label %160, !dbg !263

; <label>:160:                                    ; preds = %130, %148
  %161 = phi i64 [ %13, %130 ], [ %159, %148 ], !dbg !248
  %162 = getelementptr inbounds i8, i8* %135, i64 4, !dbg !264
  %163 = load i8, i8* %162, align 1, !dbg !264, !tbaa !101
  %164 = zext i8 %163 to i32, !dbg !264
  %165 = add nsw i32 %164, -65, !dbg !267
  %166 = icmp ult i32 %165, 26, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  %167 = add nuw nsw i32 %164, 32, !dbg !268
  %168 = select i1 %166, i32 %167, i32 %164, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  %169 = zext i32 %168 to i64, !dbg !270
  %170 = shl nuw nsw i64 %169, 32, !dbg !271
  %171 = or i64 %170, %161, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br label %172, !dbg !273

; <label>:172:                                    ; preds = %130, %160
  %173 = phi i64 [ %13, %130 ], [ %171, %160 ], !dbg !248
  %174 = getelementptr inbounds i8, i8* %135, i64 3, !dbg !274
  %175 = load i8, i8* %174, align 1, !dbg !274, !tbaa !101
  %176 = zext i8 %175 to i32, !dbg !274
  %177 = add nsw i32 %176, -65, !dbg !277
  %178 = icmp ult i32 %177, 26, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  %179 = add nuw nsw i32 %176, 32, !dbg !278
  %180 = select i1 %178, i32 %179, i32 %176, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  %181 = zext i32 %180 to i64, !dbg !280
  %182 = shl nuw nsw i64 %181, 24, !dbg !281
  %183 = or i64 %182, %173, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br label %184, !dbg !283

; <label>:184:                                    ; preds = %130, %172
  %185 = phi i64 [ %13, %130 ], [ %183, %172 ], !dbg !248
  %186 = getelementptr inbounds i8, i8* %135, i64 2, !dbg !284
  %187 = load i8, i8* %186, align 1, !dbg !284, !tbaa !101
  %188 = zext i8 %187 to i32, !dbg !284
  %189 = add nsw i32 %188, -65, !dbg !287
  %190 = icmp ult i32 %189, 26, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  %191 = shl nuw nsw i32 %188, 16, !dbg !289
  %192 = add nuw nsw i32 %191, 2097152, !dbg !289
  %193 = select i1 %190, i32 %192, i32 %191, !dbg !289
  %194 = zext i32 %193 to i64, !dbg !289
  %195 = or i64 %185, %194, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %196, !dbg !291

; <label>:196:                                    ; preds = %130, %184
  %197 = phi i64 [ %13, %130 ], [ %195, %184 ], !dbg !248
  %198 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !292
  %199 = load i8, i8* %198, align 1, !dbg !292, !tbaa !101
  %200 = zext i8 %199 to i32, !dbg !292
  %201 = add nsw i32 %200, -65, !dbg !295
  %202 = icmp ult i32 %201, 26, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  %203 = shl nuw nsw i32 %200, 8, !dbg !297
  %204 = add nuw nsw i32 %203, 8192, !dbg !297
  %205 = select i1 %202, i32 %204, i32 %203, !dbg !297
  %206 = zext i32 %205 to i64, !dbg !297
  %207 = or i64 %197, %206, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br label %208, !dbg !299

; <label>:208:                                    ; preds = %130, %196
  %209 = phi i64 [ %13, %130 ], [ %207, %196 ], !dbg !248
  %210 = load i8, i8* %135, align 1, !dbg !300, !tbaa !101
  %211 = zext i8 %210 to i32, !dbg !300
  %212 = add nsw i32 %211, -65, !dbg !303
  %213 = icmp ult i32 %212, 26, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  %214 = add nuw nsw i32 %211, 32, !dbg !304
  %215 = select i1 %213, i32 %214, i32 %211, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  %216 = zext i32 %215 to i64, !dbg !306
  %217 = or i64 %209, %216, !dbg !307
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br label %218, !dbg !308

; <label>:218:                                    ; preds = %130, %208
  %219 = phi i64 [ %13, %130 ], [ %217, %208 ], !dbg !248
  %220 = xor i64 %219, %131, !dbg !309
  %221 = add i64 %134, %133, !dbg !310
  %222 = shl i64 %133, 13, !dbg !310
  %223 = lshr i64 %133, 51, !dbg !310
  %224 = or i64 %222, %223, !dbg !310
  %225 = xor i64 %224, %221, !dbg !310
  %226 = shl i64 %221, 32, !dbg !310
  %227 = lshr i64 %221, 32, !dbg !310
  %228 = or i64 %226, %227, !dbg !310
  %229 = add i64 %220, %132, !dbg !310
  %230 = shl i64 %220, 16, !dbg !310
  %231 = lshr i64 %220, 48, !dbg !310
  %232 = or i64 %230, %231, !dbg !310
  %233 = xor i64 %232, %229, !dbg !310
  %234 = add i64 %233, %228, !dbg !310
  %235 = shl i64 %233, 21, !dbg !310
  %236 = lshr i64 %233, 43, !dbg !310
  %237 = or i64 %235, %236, !dbg !310
  %238 = xor i64 %237, %234, !dbg !310
  %239 = add i64 %229, %225, !dbg !310
  %240 = shl i64 %225, 17, !dbg !310
  %241 = lshr i64 %225, 47, !dbg !310
  %242 = or i64 %240, %241, !dbg !310
  %243 = xor i64 %239, %242, !dbg !310
  %244 = shl i64 %239, 32, !dbg !310
  %245 = lshr i64 %239, 32, !dbg !310
  %246 = or i64 %244, %245, !dbg !310
  %247 = xor i64 %234, %219, !dbg !312
  %248 = xor i64 %246, 255, !dbg !313
  %249 = add i64 %247, %243, !dbg !314
  %250 = shl i64 %243, 13, !dbg !314
  %251 = lshr i64 %243, 51, !dbg !314
  %252 = or i64 %250, %251, !dbg !314
  %253 = xor i64 %249, %252, !dbg !314
  %254 = shl i64 %249, 32, !dbg !314
  %255 = lshr i64 %249, 32, !dbg !314
  %256 = or i64 %254, %255, !dbg !314
  %257 = add i64 %238, %248, !dbg !314
  %258 = shl i64 %238, 16, !dbg !314
  %259 = lshr i64 %238, 48, !dbg !314
  %260 = or i64 %258, %259, !dbg !314
  %261 = xor i64 %260, %257, !dbg !314
  %262 = add i64 %261, %256, !dbg !314
  %263 = shl i64 %261, 21, !dbg !314
  %264 = lshr i64 %261, 43, !dbg !314
  %265 = or i64 %263, %264, !dbg !314
  %266 = xor i64 %265, %262, !dbg !314
  %267 = add i64 %257, %253, !dbg !314
  %268 = shl i64 %253, 17, !dbg !314
  %269 = lshr i64 %253, 47, !dbg !314
  %270 = or i64 %268, %269, !dbg !314
  %271 = xor i64 %270, %267, !dbg !314
  %272 = shl i64 %267, 32, !dbg !314
  %273 = lshr i64 %267, 32, !dbg !314
  %274 = or i64 %272, %273, !dbg !314
  %275 = add i64 %262, %271, !dbg !316
  %276 = shl i64 %271, 13, !dbg !316
  %277 = lshr i64 %271, 51, !dbg !316
  %278 = or i64 %276, %277, !dbg !316
  %279 = xor i64 %278, %275, !dbg !316
  %280 = add i64 %266, %274, !dbg !316
  %281 = shl i64 %266, 16, !dbg !316
  %282 = lshr i64 %266, 48, !dbg !316
  %283 = or i64 %281, %282, !dbg !316
  %284 = xor i64 %283, %280, !dbg !316
  %285 = shl i64 %284, 21, !dbg !316
  %286 = lshr i64 %284, 43, !dbg !316
  %287 = or i64 %285, %286, !dbg !316
  %288 = add i64 %280, %279, !dbg !316
  %289 = shl i64 %279, 17, !dbg !316
  %290 = lshr i64 %279, 47, !dbg !316
  %291 = or i64 %289, %290, !dbg !316
  %292 = shl i64 %288, 32, !dbg !316
  %293 = lshr i64 %288, 32, !dbg !316
  %294 = or i64 %292, %293, !dbg !316
  %295 = xor i64 %291, %288, !dbg !318
  %296 = xor i64 %295, %294, !dbg !319
  %297 = xor i64 %296, %287, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  ret i64 %297, !dbg !321
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/siphash.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !6, line: 60, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !8, line: 105, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "siptlw", scope: !1, file: !1, line: 50, type: !15, isLocal: false, isDefinition: true, scopeLine: 50, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19}
!19 = !DILocalVariable(name: "c", arg: 1, scope: !14, file: !1, line: 50, type: !17)
!20 = !DILocation(line: 50, column: 16, scope: !14)
!21 = !DILocation(line: 51, column: 18, scope: !22)
!22 = distinct !DILexicalBlock(scope: !14, file: !1, line: 51, column: 9)
!23 = !DILocation(line: 52, column: 17, scope: !24)
!24 = distinct !DILexicalBlock(scope: !22, file: !1, line: 51, column: 31)
!25 = !DILocation(line: 0, scope: !24)
!26 = !DILocation(line: 56, column: 1, scope: !14)
!27 = distinct !DISubprogram(name: "siphash", scope: !1, file: !1, line: 115, type: !28, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !40)
!28 = !DISubroutineType(types: !29)
!29 = !{!5, !30, !35, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !34)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 40, baseType: !38)
!37 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !39, line: 129, baseType: !9)
!39 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !54}
!41 = !DILocalVariable(name: "in", arg: 1, scope: !27, file: !1, line: 115, type: !30)
!42 = !DILocalVariable(name: "inlen", arg: 2, scope: !27, file: !1, line: 115, type: !35)
!43 = !DILocalVariable(name: "k", arg: 3, scope: !27, file: !1, line: 115, type: !30)
!44 = !DILocalVariable(name: "v0", scope: !27, file: !1, line: 120, type: !5)
!45 = !DILocalVariable(name: "v1", scope: !27, file: !1, line: 121, type: !5)
!46 = !DILocalVariable(name: "v2", scope: !27, file: !1, line: 122, type: !5)
!47 = !DILocalVariable(name: "v3", scope: !27, file: !1, line: 123, type: !5)
!48 = !DILocalVariable(name: "k0", scope: !27, file: !1, line: 124, type: !5)
!49 = !DILocalVariable(name: "k1", scope: !27, file: !1, line: 125, type: !5)
!50 = !DILocalVariable(name: "m", scope: !27, file: !1, line: 126, type: !5)
!51 = !DILocalVariable(name: "end", scope: !27, file: !1, line: 127, type: !30)
!52 = !DILocalVariable(name: "left", scope: !27, file: !1, line: 128, type: !53)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!54 = !DILocalVariable(name: "b", scope: !27, file: !1, line: 129, type: !5)
!55 = !DILocation(line: 115, column: 33, scope: !27)
!56 = !DILocation(line: 115, column: 50, scope: !27)
!57 = !DILocation(line: 115, column: 72, scope: !27)
!58 = !DILocation(line: 120, column: 14, scope: !27)
!59 = !DILocation(line: 121, column: 14, scope: !27)
!60 = !DILocation(line: 122, column: 14, scope: !27)
!61 = !DILocation(line: 123, column: 14, scope: !27)
!62 = !DILocation(line: 124, column: 19, scope: !27)
!63 = !{!64, !64, i64 0}
!64 = !{!"long", !65, i64 0}
!65 = !{!"omnipotent char", !66, i64 0}
!66 = !{!"Simple C/C++ TBAA"}
!67 = !DILocation(line: 124, column: 14, scope: !27)
!68 = !DILocation(line: 125, column: 19, scope: !27)
!69 = !DILocation(line: 125, column: 14, scope: !27)
!70 = !DILocation(line: 127, column: 29, scope: !27)
!71 = !DILocation(line: 127, column: 46, scope: !27)
!72 = !DILocation(line: 127, column: 37, scope: !27)
!73 = !DILocation(line: 127, column: 20, scope: !27)
!74 = !DILocation(line: 129, column: 36, scope: !27)
!75 = !DILocation(line: 129, column: 14, scope: !27)
!76 = !DILocation(line: 130, column: 8, scope: !27)
!77 = !DILocation(line: 131, column: 8, scope: !27)
!78 = !DILocation(line: 132, column: 8, scope: !27)
!79 = !DILocation(line: 133, column: 8, scope: !27)
!80 = !DILocation(line: 135, column: 5, scope: !27)
!81 = !DILocation(line: 135, column: 15, scope: !82)
!82 = distinct !DILexicalBlock(scope: !83, file: !1, line: 135, column: 5)
!83 = distinct !DILexicalBlock(scope: !27, file: !1, line: 135, column: 5)
!84 = !DILocation(line: 135, column: 5, scope: !83)
!85 = !DILocation(line: 136, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 135, column: 32)
!87 = !DILocation(line: 126, column: 14, scope: !27)
!88 = !DILocation(line: 137, column: 12, scope: !86)
!89 = !DILocation(line: 139, column: 9, scope: !90)
!90 = distinct !DILexicalBlock(scope: !86, file: !1, line: 139, column: 9)
!91 = !DILocation(line: 141, column: 12, scope: !86)
!92 = !DILocation(line: 135, column: 26, scope: !82)
!93 = !DILocation(line: 135, column: 5, scope: !82)
!94 = distinct !{!94, !84, !95}
!95 = !DILocation(line: 142, column: 5, scope: !83)
!96 = !DILocation(line: 0, scope: !90)
!97 = !DILocation(line: 0, scope: !86)
!98 = !DILocation(line: 144, column: 5, scope: !27)
!99 = !DILocation(line: 145, column: 29, scope: !100)
!100 = distinct !DILexicalBlock(scope: !27, file: !1, line: 144, column: 19)
!101 = !{!65, !65, i64 0}
!102 = !DILocation(line: 145, column: 19, scope: !100)
!103 = !DILocation(line: 145, column: 36, scope: !100)
!104 = !DILocation(line: 145, column: 15, scope: !100)
!105 = !DILocation(line: 145, column: 13, scope: !100)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 146, column: 29, scope: !100)
!108 = !DILocation(line: 146, column: 19, scope: !100)
!109 = !DILocation(line: 146, column: 36, scope: !100)
!110 = !DILocation(line: 146, column: 15, scope: !100)
!111 = !DILocation(line: 146, column: 13, scope: !100)
!112 = !DILocation(line: 147, column: 29, scope: !100)
!113 = !DILocation(line: 147, column: 19, scope: !100)
!114 = !DILocation(line: 147, column: 36, scope: !100)
!115 = !DILocation(line: 147, column: 15, scope: !100)
!116 = !DILocation(line: 147, column: 13, scope: !100)
!117 = !DILocation(line: 148, column: 29, scope: !100)
!118 = !DILocation(line: 148, column: 19, scope: !100)
!119 = !DILocation(line: 148, column: 36, scope: !100)
!120 = !DILocation(line: 148, column: 15, scope: !100)
!121 = !DILocation(line: 148, column: 13, scope: !100)
!122 = !DILocation(line: 149, column: 29, scope: !100)
!123 = !DILocation(line: 149, column: 19, scope: !100)
!124 = !DILocation(line: 149, column: 36, scope: !100)
!125 = !DILocation(line: 149, column: 15, scope: !100)
!126 = !DILocation(line: 149, column: 13, scope: !100)
!127 = !DILocation(line: 150, column: 29, scope: !100)
!128 = !DILocation(line: 150, column: 19, scope: !100)
!129 = !DILocation(line: 150, column: 36, scope: !100)
!130 = !DILocation(line: 150, column: 15, scope: !100)
!131 = !DILocation(line: 150, column: 13, scope: !100)
!132 = !DILocation(line: 151, column: 29, scope: !100)
!133 = !DILocation(line: 151, column: 19, scope: !100)
!134 = !DILocation(line: 151, column: 15, scope: !100)
!135 = !DILocation(line: 151, column: 37, scope: !100)
!136 = !DILocation(line: 155, column: 8, scope: !27)
!137 = !DILocation(line: 157, column: 5, scope: !138)
!138 = distinct !DILexicalBlock(scope: !27, file: !1, line: 157, column: 5)
!139 = !DILocation(line: 159, column: 8, scope: !27)
!140 = !DILocation(line: 160, column: 8, scope: !27)
!141 = !DILocation(line: 162, column: 5, scope: !142)
!142 = distinct !DILexicalBlock(scope: !27, file: !1, line: 162, column: 5)
!143 = !DILocation(line: 163, column: 5, scope: !144)
!144 = distinct !DILexicalBlock(scope: !27, file: !1, line: 163, column: 5)
!145 = !DILocation(line: 165, column: 12, scope: !27)
!146 = !DILocation(line: 165, column: 17, scope: !27)
!147 = !DILocation(line: 165, column: 22, scope: !27)
!148 = !DILocation(line: 170, column: 5, scope: !27)
!149 = distinct !DISubprogram(name: "siphash_nocase", scope: !1, file: !1, line: 174, type: !28, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !150)
!150 = !{!151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!151 = !DILocalVariable(name: "in", arg: 1, scope: !149, file: !1, line: 174, type: !30)
!152 = !DILocalVariable(name: "inlen", arg: 2, scope: !149, file: !1, line: 174, type: !35)
!153 = !DILocalVariable(name: "k", arg: 3, scope: !149, file: !1, line: 174, type: !30)
!154 = !DILocalVariable(name: "v0", scope: !149, file: !1, line: 180, type: !5)
!155 = !DILocalVariable(name: "v1", scope: !149, file: !1, line: 181, type: !5)
!156 = !DILocalVariable(name: "v2", scope: !149, file: !1, line: 182, type: !5)
!157 = !DILocalVariable(name: "v3", scope: !149, file: !1, line: 183, type: !5)
!158 = !DILocalVariable(name: "k0", scope: !149, file: !1, line: 184, type: !5)
!159 = !DILocalVariable(name: "k1", scope: !149, file: !1, line: 185, type: !5)
!160 = !DILocalVariable(name: "m", scope: !149, file: !1, line: 186, type: !5)
!161 = !DILocalVariable(name: "end", scope: !149, file: !1, line: 187, type: !30)
!162 = !DILocalVariable(name: "left", scope: !149, file: !1, line: 188, type: !53)
!163 = !DILocalVariable(name: "b", scope: !149, file: !1, line: 189, type: !5)
!164 = !DILocation(line: 174, column: 40, scope: !149)
!165 = !DILocation(line: 174, column: 57, scope: !149)
!166 = !DILocation(line: 174, column: 79, scope: !149)
!167 = !DILocation(line: 180, column: 14, scope: !149)
!168 = !DILocation(line: 181, column: 14, scope: !149)
!169 = !DILocation(line: 182, column: 14, scope: !149)
!170 = !DILocation(line: 183, column: 14, scope: !149)
!171 = !DILocation(line: 184, column: 19, scope: !149)
!172 = !DILocation(line: 184, column: 14, scope: !149)
!173 = !DILocation(line: 185, column: 19, scope: !149)
!174 = !DILocation(line: 185, column: 14, scope: !149)
!175 = !DILocation(line: 187, column: 29, scope: !149)
!176 = !DILocation(line: 187, column: 46, scope: !149)
!177 = !DILocation(line: 187, column: 37, scope: !149)
!178 = !DILocation(line: 187, column: 20, scope: !149)
!179 = !DILocation(line: 189, column: 36, scope: !149)
!180 = !DILocation(line: 189, column: 14, scope: !149)
!181 = !DILocation(line: 190, column: 8, scope: !149)
!182 = !DILocation(line: 191, column: 8, scope: !149)
!183 = !DILocation(line: 192, column: 8, scope: !149)
!184 = !DILocation(line: 193, column: 8, scope: !149)
!185 = !DILocation(line: 195, column: 5, scope: !149)
!186 = !DILocation(line: 195, column: 15, scope: !187)
!187 = distinct !DILexicalBlock(scope: !188, file: !1, line: 195, column: 5)
!188 = distinct !DILexicalBlock(scope: !149, file: !1, line: 195, column: 5)
!189 = !DILocation(line: 195, column: 5, scope: !188)
!190 = !DILocation(line: 196, column: 13, scope: !191)
!191 = distinct !DILexicalBlock(scope: !187, file: !1, line: 195, column: 32)
!192 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !193)
!193 = distinct !DILocation(line: 196, column: 13, scope: !191)
!194 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !193)
!195 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !193)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !193)
!198 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !199)
!199 = distinct !DILocation(line: 196, column: 13, scope: !191)
!200 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !199)
!201 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !199)
!202 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !203)
!203 = distinct !DILocation(line: 196, column: 13, scope: !191)
!204 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !203)
!205 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !203)
!206 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !207)
!207 = distinct !DILocation(line: 196, column: 13, scope: !191)
!208 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !207)
!209 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !207)
!210 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !207)
!211 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !212)
!212 = distinct !DILocation(line: 196, column: 13, scope: !191)
!213 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !212)
!214 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !212)
!215 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !212)
!216 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !217)
!217 = distinct !DILocation(line: 196, column: 13, scope: !191)
!218 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !217)
!219 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !217)
!220 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !217)
!221 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !222)
!222 = distinct !DILocation(line: 196, column: 13, scope: !191)
!223 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !222)
!224 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !222)
!225 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !222)
!226 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !227)
!227 = distinct !DILocation(line: 196, column: 13, scope: !191)
!228 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !227)
!229 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !227)
!230 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !227)
!231 = !DILocation(line: 186, column: 14, scope: !149)
!232 = !DILocation(line: 197, column: 12, scope: !191)
!233 = !DILocation(line: 199, column: 9, scope: !234)
!234 = distinct !DILexicalBlock(scope: !191, file: !1, line: 199, column: 9)
!235 = !DILocation(line: 201, column: 12, scope: !191)
!236 = !DILocation(line: 195, column: 26, scope: !187)
!237 = !DILocation(line: 195, column: 5, scope: !187)
!238 = distinct !{!238, !189, !239}
!239 = !DILocation(line: 202, column: 5, scope: !188)
!240 = !DILocation(line: 0, scope: !234)
!241 = !DILocation(line: 204, column: 5, scope: !149)
!242 = !DILocation(line: 205, column: 36, scope: !243)
!243 = distinct !DILexicalBlock(scope: !149, file: !1, line: 204, column: 19)
!244 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !245)
!245 = distinct !DILocation(line: 205, column: 29, scope: !243)
!246 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !245)
!247 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !245)
!248 = !DILocation(line: 0, scope: !243)
!249 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !245)
!250 = !DILocation(line: 205, column: 19, scope: !243)
!251 = !DILocation(line: 205, column: 44, scope: !243)
!252 = !DILocation(line: 205, column: 15, scope: !243)
!253 = !DILocation(line: 205, column: 13, scope: !243)
!254 = !DILocation(line: 206, column: 36, scope: !243)
!255 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !256)
!256 = distinct !DILocation(line: 206, column: 29, scope: !243)
!257 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !256)
!258 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !256)
!259 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !256)
!260 = !DILocation(line: 206, column: 19, scope: !243)
!261 = !DILocation(line: 206, column: 44, scope: !243)
!262 = !DILocation(line: 206, column: 15, scope: !243)
!263 = !DILocation(line: 206, column: 13, scope: !243)
!264 = !DILocation(line: 207, column: 36, scope: !243)
!265 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !266)
!266 = distinct !DILocation(line: 207, column: 29, scope: !243)
!267 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !266)
!268 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !266)
!269 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !266)
!270 = !DILocation(line: 207, column: 19, scope: !243)
!271 = !DILocation(line: 207, column: 44, scope: !243)
!272 = !DILocation(line: 207, column: 15, scope: !243)
!273 = !DILocation(line: 207, column: 13, scope: !243)
!274 = !DILocation(line: 208, column: 36, scope: !243)
!275 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !276)
!276 = distinct !DILocation(line: 208, column: 29, scope: !243)
!277 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !276)
!278 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !276)
!279 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !276)
!280 = !DILocation(line: 208, column: 19, scope: !243)
!281 = !DILocation(line: 208, column: 44, scope: !243)
!282 = !DILocation(line: 208, column: 15, scope: !243)
!283 = !DILocation(line: 208, column: 13, scope: !243)
!284 = !DILocation(line: 209, column: 36, scope: !243)
!285 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !286)
!286 = distinct !DILocation(line: 209, column: 29, scope: !243)
!287 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !286)
!288 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !286)
!289 = !DILocation(line: 209, column: 44, scope: !243)
!290 = !DILocation(line: 209, column: 15, scope: !243)
!291 = !DILocation(line: 209, column: 13, scope: !243)
!292 = !DILocation(line: 210, column: 36, scope: !243)
!293 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !294)
!294 = distinct !DILocation(line: 210, column: 29, scope: !243)
!295 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !294)
!296 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !294)
!297 = !DILocation(line: 210, column: 44, scope: !243)
!298 = !DILocation(line: 210, column: 15, scope: !243)
!299 = !DILocation(line: 210, column: 13, scope: !243)
!300 = !DILocation(line: 211, column: 36, scope: !243)
!301 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !302)
!302 = distinct !DILocation(line: 211, column: 29, scope: !243)
!303 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !302)
!304 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !302)
!305 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !302)
!306 = !DILocation(line: 211, column: 19, scope: !243)
!307 = !DILocation(line: 211, column: 15, scope: !243)
!308 = !DILocation(line: 211, column: 45, scope: !243)
!309 = !DILocation(line: 215, column: 8, scope: !149)
!310 = !DILocation(line: 217, column: 5, scope: !311)
!311 = distinct !DILexicalBlock(scope: !149, file: !1, line: 217, column: 5)
!312 = !DILocation(line: 219, column: 8, scope: !149)
!313 = !DILocation(line: 220, column: 8, scope: !149)
!314 = !DILocation(line: 222, column: 5, scope: !315)
!315 = distinct !DILexicalBlock(scope: !149, file: !1, line: 222, column: 5)
!316 = !DILocation(line: 223, column: 5, scope: !317)
!317 = distinct !DILexicalBlock(scope: !149, file: !1, line: 223, column: 5)
!318 = !DILocation(line: 225, column: 12, scope: !149)
!319 = !DILocation(line: 225, column: 17, scope: !149)
!320 = !DILocation(line: 225, column: 22, scope: !149)
!321 = !DILocation(line: 230, column: 5, scope: !149)
