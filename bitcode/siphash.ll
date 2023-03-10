; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/siphash.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/siphash.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @siptlw(i32) local_unnamed_addr #0 !dbg !14 {
  %2 = add i32 %0, -65, !dbg !21
  %3 = icmp ult i32 %2, 26, !dbg !21
  %4 = add nsw i32 %0, 32, !dbg !23
  %5 = select i1 %3, i32 %4, i32 %0, !dbg !21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !25
  ret i32 %5, !dbg !25
}

; Function Attrs: noredzone nounwind
define dso_local i64 @siphash(i8* readonly, i64, i8* nocapture readonly) local_unnamed_addr #0 !dbg !26 {
  %4 = bitcast i8* %2 to i64*, !dbg !61
  %5 = load i64, i64* %4, align 8, !dbg !61, !tbaa !62
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !67
  %7 = bitcast i8* %6 to i64*, !dbg !67
  %8 = load i64, i64* %7, align 8, !dbg !67, !tbaa !62
  %9 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !69
  %10 = and i64 %1, 7, !dbg !70
  %11 = sub nsw i64 0, %10, !dbg !71
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !71
  %13 = shl i64 %1, 56, !dbg !73
  %14 = xor i64 %8, 8387220255154660723, !dbg !75
  %15 = xor i64 %5, 7816392313619706465, !dbg !76
  %16 = xor i64 %8, 7237128888997146477, !dbg !77
  %17 = xor i64 %5, 8317987319222330741, !dbg !78
  %18 = icmp eq i8* %12, %0, !dbg !79
  br i1 %18, label %64, label %19, !dbg !82

; <label>:19:                                     ; preds = %3
  %20 = add i64 %1, -8, !dbg !83
  %21 = sub i64 %20, %10, !dbg !83
  %22 = add i64 %21, 8, !dbg !83
  %23 = and i64 %22, -8, !dbg !83
  br label %24, !dbg !83

; <label>:24:                                     ; preds = %19, %24
  %25 = phi i8* [ %60, %24 ], [ %0, %19 ]
  %26 = phi i64 [ %59, %24 ], [ %17, %19 ]
  %27 = phi i64 [ %55, %24 ], [ %16, %19 ]
  %28 = phi i64 [ %58, %24 ], [ %15, %19 ]
  %29 = phi i64 [ %50, %24 ], [ %14, %19 ]
  %30 = bitcast i8* %25 to i64*, !dbg !83
  %31 = load i64, i64* %30, align 8, !dbg !83, !tbaa !62
  %32 = xor i64 %31, %29, !dbg !86
  %33 = add i64 %26, %27, !dbg !87
  %34 = shl i64 %27, 13, !dbg !87
  %35 = lshr i64 %27, 51, !dbg !87
  %36 = or i64 %34, %35, !dbg !87
  %37 = xor i64 %36, %33, !dbg !87
  %38 = shl i64 %33, 32, !dbg !87
  %39 = lshr i64 %33, 32, !dbg !87
  %40 = or i64 %38, %39, !dbg !87
  %41 = add i64 %32, %28, !dbg !87
  %42 = shl i64 %32, 16, !dbg !87
  %43 = lshr i64 %32, 48, !dbg !87
  %44 = or i64 %42, %43, !dbg !87
  %45 = xor i64 %44, %41, !dbg !87
  %46 = add i64 %45, %40, !dbg !87
  %47 = shl i64 %45, 21, !dbg !87
  %48 = lshr i64 %45, 43, !dbg !87
  %49 = or i64 %47, %48, !dbg !87
  %50 = xor i64 %49, %46, !dbg !87
  %51 = add i64 %41, %37, !dbg !87
  %52 = shl i64 %37, 17, !dbg !87
  %53 = lshr i64 %37, 47, !dbg !87
  %54 = or i64 %52, %53, !dbg !87
  %55 = xor i64 %51, %54, !dbg !87
  %56 = shl i64 %51, 32, !dbg !87
  %57 = lshr i64 %51, 32, !dbg !87
  %58 = or i64 %56, %57, !dbg !87
  %59 = xor i64 %46, %31, !dbg !89
  %60 = getelementptr inbounds i8, i8* %25, i64 8, !dbg !90
  %61 = icmp eq i8* %60, %12, !dbg !79
  br i1 %61, label %62, label %24, !dbg !82, !llvm.loop !91

; <label>:62:                                     ; preds = %24
  %63 = getelementptr i8, i8* %0, i64 %23, !dbg !83
  br label %64, !dbg !93

; <label>:64:                                     ; preds = %62, %3
  %65 = phi i64 [ %14, %3 ], [ %50, %62 ], !dbg !94
  %66 = phi i64 [ %15, %3 ], [ %58, %62 ], !dbg !94
  %67 = phi i64 [ %16, %3 ], [ %55, %62 ], !dbg !94
  %68 = phi i64 [ %17, %3 ], [ %59, %62 ], !dbg !95
  %69 = phi i8* [ %0, %3 ], [ %63, %62 ]
  %70 = trunc i64 %1 to i3, !dbg !93
  switch i3 %70, label %117 [
    i3 -1, label %71
    i3 -2, label %77
    i3 -3, label %84
    i3 -4, label %91
    i3 3, label %98
    i3 2, label %105
    i3 1, label %112
  ], !dbg !93

; <label>:71:                                     ; preds = %64
  %72 = getelementptr inbounds i8, i8* %69, i64 6, !dbg !96
  %73 = load i8, i8* %72, align 1, !dbg !96, !tbaa !98
  %74 = zext i8 %73 to i64, !dbg !99
  %75 = shl nuw nsw i64 %74, 48, !dbg !100
  %76 = or i64 %75, %13, !dbg !101
  br label %77, !dbg !102

; <label>:77:                                     ; preds = %64, %71
  %78 = phi i64 [ %13, %64 ], [ %76, %71 ], !dbg !103
  %79 = getelementptr inbounds i8, i8* %69, i64 5, !dbg !104
  %80 = load i8, i8* %79, align 1, !dbg !104, !tbaa !98
  %81 = zext i8 %80 to i64, !dbg !105
  %82 = shl nuw nsw i64 %81, 40, !dbg !106
  %83 = or i64 %82, %78, !dbg !107
  br label %84, !dbg !108

; <label>:84:                                     ; preds = %64, %77
  %85 = phi i64 [ %13, %64 ], [ %83, %77 ], !dbg !103
  %86 = getelementptr inbounds i8, i8* %69, i64 4, !dbg !109
  %87 = load i8, i8* %86, align 1, !dbg !109, !tbaa !98
  %88 = zext i8 %87 to i64, !dbg !110
  %89 = shl nuw nsw i64 %88, 32, !dbg !111
  %90 = or i64 %89, %85, !dbg !112
  br label %91, !dbg !113

; <label>:91:                                     ; preds = %64, %84
  %92 = phi i64 [ %13, %64 ], [ %90, %84 ], !dbg !103
  %93 = getelementptr inbounds i8, i8* %69, i64 3, !dbg !114
  %94 = load i8, i8* %93, align 1, !dbg !114, !tbaa !98
  %95 = zext i8 %94 to i64, !dbg !115
  %96 = shl nuw nsw i64 %95, 24, !dbg !116
  %97 = or i64 %96, %92, !dbg !117
  br label %98, !dbg !118

; <label>:98:                                     ; preds = %64, %91
  %99 = phi i64 [ %13, %64 ], [ %97, %91 ], !dbg !103
  %100 = getelementptr inbounds i8, i8* %69, i64 2, !dbg !119
  %101 = load i8, i8* %100, align 1, !dbg !119, !tbaa !98
  %102 = zext i8 %101 to i64, !dbg !120
  %103 = shl nuw nsw i64 %102, 16, !dbg !121
  %104 = or i64 %103, %99, !dbg !122
  br label %105, !dbg !123

; <label>:105:                                    ; preds = %64, %98
  %106 = phi i64 [ %13, %64 ], [ %104, %98 ], !dbg !103
  %107 = getelementptr inbounds i8, i8* %69, i64 1, !dbg !124
  %108 = load i8, i8* %107, align 1, !dbg !124, !tbaa !98
  %109 = zext i8 %108 to i64, !dbg !125
  %110 = shl nuw nsw i64 %109, 8, !dbg !126
  %111 = or i64 %110, %106, !dbg !127
  br label %112, !dbg !128

; <label>:112:                                    ; preds = %64, %105
  %113 = phi i64 [ %13, %64 ], [ %111, %105 ], !dbg !103
  %114 = load i8, i8* %69, align 1, !dbg !129, !tbaa !98
  %115 = zext i8 %114 to i64, !dbg !130
  %116 = or i64 %113, %115, !dbg !131
  br label %117, !dbg !132

; <label>:117:                                    ; preds = %64, %112
  %118 = phi i64 [ %13, %64 ], [ %116, %112 ], !dbg !103
  %119 = xor i64 %118, %65, !dbg !133
  %120 = add i64 %68, %67, !dbg !134
  %121 = shl i64 %67, 13, !dbg !134
  %122 = lshr i64 %67, 51, !dbg !134
  %123 = or i64 %121, %122, !dbg !134
  %124 = xor i64 %123, %120, !dbg !134
  %125 = shl i64 %120, 32, !dbg !134
  %126 = lshr i64 %120, 32, !dbg !134
  %127 = or i64 %125, %126, !dbg !134
  %128 = add i64 %119, %66, !dbg !134
  %129 = shl i64 %119, 16, !dbg !134
  %130 = lshr i64 %119, 48, !dbg !134
  %131 = or i64 %129, %130, !dbg !134
  %132 = xor i64 %131, %128, !dbg !134
  %133 = add i64 %132, %127, !dbg !134
  %134 = shl i64 %132, 21, !dbg !134
  %135 = lshr i64 %132, 43, !dbg !134
  %136 = or i64 %134, %135, !dbg !134
  %137 = xor i64 %136, %133, !dbg !134
  %138 = add i64 %128, %124, !dbg !134
  %139 = shl i64 %124, 17, !dbg !134
  %140 = lshr i64 %124, 47, !dbg !134
  %141 = or i64 %139, %140, !dbg !134
  %142 = xor i64 %138, %141, !dbg !134
  %143 = shl i64 %138, 32, !dbg !134
  %144 = lshr i64 %138, 32, !dbg !134
  %145 = or i64 %143, %144, !dbg !134
  %146 = xor i64 %133, %118, !dbg !136
  %147 = xor i64 %145, 255, !dbg !137
  %148 = add i64 %146, %142, !dbg !138
  %149 = shl i64 %142, 13, !dbg !138
  %150 = lshr i64 %142, 51, !dbg !138
  %151 = or i64 %149, %150, !dbg !138
  %152 = xor i64 %148, %151, !dbg !138
  %153 = shl i64 %148, 32, !dbg !138
  %154 = lshr i64 %148, 32, !dbg !138
  %155 = or i64 %153, %154, !dbg !138
  %156 = add i64 %137, %147, !dbg !138
  %157 = shl i64 %137, 16, !dbg !138
  %158 = lshr i64 %137, 48, !dbg !138
  %159 = or i64 %157, %158, !dbg !138
  %160 = xor i64 %159, %156, !dbg !138
  %161 = add i64 %160, %155, !dbg !138
  %162 = shl i64 %160, 21, !dbg !138
  %163 = lshr i64 %160, 43, !dbg !138
  %164 = or i64 %162, %163, !dbg !138
  %165 = xor i64 %164, %161, !dbg !138
  %166 = add i64 %156, %152, !dbg !138
  %167 = shl i64 %152, 17, !dbg !138
  %168 = lshr i64 %152, 47, !dbg !138
  %169 = or i64 %167, %168, !dbg !138
  %170 = xor i64 %169, %166, !dbg !138
  %171 = shl i64 %166, 32, !dbg !138
  %172 = lshr i64 %166, 32, !dbg !138
  %173 = or i64 %171, %172, !dbg !138
  %174 = add i64 %161, %170, !dbg !140
  %175 = shl i64 %170, 13, !dbg !140
  %176 = lshr i64 %170, 51, !dbg !140
  %177 = or i64 %175, %176, !dbg !140
  %178 = xor i64 %177, %174, !dbg !140
  %179 = add i64 %165, %173, !dbg !140
  %180 = shl i64 %165, 16, !dbg !140
  %181 = lshr i64 %165, 48, !dbg !140
  %182 = or i64 %180, %181, !dbg !140
  %183 = xor i64 %182, %179, !dbg !140
  %184 = shl i64 %183, 21, !dbg !140
  %185 = lshr i64 %183, 43, !dbg !140
  %186 = or i64 %184, %185, !dbg !140
  %187 = add i64 %179, %178, !dbg !140
  %188 = shl i64 %178, 17, !dbg !140
  %189 = lshr i64 %178, 47, !dbg !140
  %190 = or i64 %188, %189, !dbg !140
  %191 = shl i64 %187, 32, !dbg !140
  %192 = lshr i64 %187, 32, !dbg !140
  %193 = or i64 %191, %192, !dbg !140
  %194 = xor i64 %190, %187, !dbg !142
  %195 = xor i64 %194, %193, !dbg !143
  %196 = xor i64 %195, %186, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  ret i64 %196, !dbg !145
}

; Function Attrs: noredzone nounwind
define dso_local i64 @siphash_nocase(i8* readonly, i64, i8* nocapture readonly) local_unnamed_addr #0 !dbg !146 {
  %4 = bitcast i8* %2 to i64*, !dbg !168
  %5 = load i64, i64* %4, align 8, !dbg !168, !tbaa !62
  %6 = getelementptr inbounds i8, i8* %2, i64 8, !dbg !170
  %7 = bitcast i8* %6 to i64*, !dbg !170
  %8 = load i64, i64* %7, align 8, !dbg !170, !tbaa !62
  %9 = getelementptr inbounds i8, i8* %0, i64 %1, !dbg !172
  %10 = and i64 %1, 7, !dbg !173
  %11 = sub nsw i64 0, %10, !dbg !174
  %12 = getelementptr inbounds i8, i8* %9, i64 %11, !dbg !174
  %13 = shl i64 %1, 56, !dbg !176
  %14 = xor i64 %8, 8387220255154660723, !dbg !178
  %15 = xor i64 %5, 7816392313619706465, !dbg !179
  %16 = xor i64 %8, 7237128888997146477, !dbg !180
  %17 = xor i64 %5, 8317987319222330741, !dbg !181
  %18 = icmp eq i8* %12, %0, !dbg !182
  br i1 %18, label %130, label %19, !dbg !185

; <label>:19:                                     ; preds = %3, %19
  %20 = phi i8* [ %128, %19 ], [ %0, %3 ]
  %21 = phi i64 [ %127, %19 ], [ %17, %3 ]
  %22 = phi i64 [ %123, %19 ], [ %16, %3 ]
  %23 = phi i64 [ %126, %19 ], [ %15, %3 ]
  %24 = phi i64 [ %118, %19 ], [ %14, %3 ]
  %25 = load i8, i8* %20, align 1, !dbg !186, !tbaa !98
  %26 = zext i8 %25 to i32, !dbg !186
  %27 = add nsw i32 %26, -65, !dbg !190
  %28 = icmp ult i32 %27, 26, !dbg !190
  %29 = add nuw nsw i32 %26, 32, !dbg !191
  %30 = select i1 %28, i32 %29, i32 %26, !dbg !190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  %31 = getelementptr inbounds i8, i8* %20, i64 1, !dbg !186
  %32 = load i8, i8* %31, align 1, !dbg !186, !tbaa !98
  %33 = zext i8 %32 to i32, !dbg !186
  %34 = add nsw i32 %33, -65, !dbg !195
  %35 = icmp ult i32 %34, 26, !dbg !195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  %36 = shl nuw nsw i32 %33, 8, !dbg !186
  %37 = add nuw nsw i32 %36, 8192, !dbg !186
  %38 = select i1 %35, i32 %37, i32 %36, !dbg !186
  %39 = or i32 %38, %30, !dbg !186
  %40 = getelementptr inbounds i8, i8* %20, i64 2, !dbg !186
  %41 = load i8, i8* %40, align 1, !dbg !186, !tbaa !98
  %42 = zext i8 %41 to i32, !dbg !186
  %43 = add nsw i32 %42, -65, !dbg !199
  %44 = icmp ult i32 %43, 26, !dbg !199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  %45 = shl nuw nsw i32 %42, 16, !dbg !186
  %46 = add nuw nsw i32 %45, 2097152, !dbg !186
  %47 = select i1 %44, i32 %46, i32 %45, !dbg !186
  %48 = or i32 %39, %47, !dbg !186
  %49 = zext i32 %48 to i64, !dbg !186
  %50 = getelementptr inbounds i8, i8* %20, i64 3, !dbg !186
  %51 = load i8, i8* %50, align 1, !dbg !186, !tbaa !98
  %52 = zext i8 %51 to i32, !dbg !186
  %53 = add nsw i32 %52, -65, !dbg !203
  %54 = icmp ult i32 %53, 26, !dbg !203
  %55 = add nuw nsw i32 %52, 32, !dbg !204
  %56 = select i1 %54, i32 %55, i32 %52, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  %57 = zext i32 %56 to i64, !dbg !186
  %58 = shl nuw nsw i64 %57, 24, !dbg !186
  %59 = or i64 %58, %49, !dbg !186
  %60 = getelementptr inbounds i8, i8* %20, i64 4, !dbg !186
  %61 = load i8, i8* %60, align 1, !dbg !186, !tbaa !98
  %62 = zext i8 %61 to i32, !dbg !186
  %63 = add nsw i32 %62, -65, !dbg !208
  %64 = icmp ult i32 %63, 26, !dbg !208
  %65 = add nuw nsw i32 %62, 32, !dbg !209
  %66 = select i1 %64, i32 %65, i32 %62, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  %67 = zext i32 %66 to i64, !dbg !186
  %68 = shl nuw nsw i64 %67, 32, !dbg !186
  %69 = or i64 %59, %68, !dbg !186
  %70 = getelementptr inbounds i8, i8* %20, i64 5, !dbg !186
  %71 = load i8, i8* %70, align 1, !dbg !186, !tbaa !98
  %72 = zext i8 %71 to i32, !dbg !186
  %73 = add nsw i32 %72, -65, !dbg !213
  %74 = icmp ult i32 %73, 26, !dbg !213
  %75 = add nuw nsw i32 %72, 32, !dbg !214
  %76 = select i1 %74, i32 %75, i32 %72, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %77 = zext i32 %76 to i64, !dbg !186
  %78 = shl nuw nsw i64 %77, 40, !dbg !186
  %79 = or i64 %69, %78, !dbg !186
  %80 = getelementptr inbounds i8, i8* %20, i64 6, !dbg !186
  %81 = load i8, i8* %80, align 1, !dbg !186, !tbaa !98
  %82 = zext i8 %81 to i32, !dbg !186
  %83 = add nsw i32 %82, -65, !dbg !218
  %84 = icmp ult i32 %83, 26, !dbg !218
  %85 = add nuw nsw i32 %82, 32, !dbg !219
  %86 = select i1 %84, i32 %85, i32 %82, !dbg !218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %87 = zext i32 %86 to i64, !dbg !186
  %88 = shl nuw nsw i64 %87, 48, !dbg !186
  %89 = or i64 %79, %88, !dbg !186
  %90 = getelementptr inbounds i8, i8* %20, i64 7, !dbg !186
  %91 = load i8, i8* %90, align 1, !dbg !186, !tbaa !98
  %92 = zext i8 %91 to i32, !dbg !186
  %93 = add nsw i32 %92, -65, !dbg !223
  %94 = icmp ult i32 %93, 26, !dbg !223
  %95 = add nuw nsw i32 %92, 32, !dbg !224
  %96 = select i1 %94, i32 %95, i32 %92, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  %97 = zext i32 %96 to i64, !dbg !186
  %98 = shl i64 %97, 56, !dbg !186
  %99 = or i64 %89, %98, !dbg !186
  %100 = xor i64 %99, %24, !dbg !227
  %101 = add i64 %21, %22, !dbg !228
  %102 = shl i64 %22, 13, !dbg !228
  %103 = lshr i64 %22, 51, !dbg !228
  %104 = or i64 %102, %103, !dbg !228
  %105 = xor i64 %104, %101, !dbg !228
  %106 = shl i64 %101, 32, !dbg !228
  %107 = lshr i64 %101, 32, !dbg !228
  %108 = or i64 %106, %107, !dbg !228
  %109 = add i64 %100, %23, !dbg !228
  %110 = shl i64 %100, 16, !dbg !228
  %111 = lshr i64 %100, 48, !dbg !228
  %112 = or i64 %110, %111, !dbg !228
  %113 = xor i64 %112, %109, !dbg !228
  %114 = add i64 %113, %108, !dbg !228
  %115 = shl i64 %113, 21, !dbg !228
  %116 = lshr i64 %113, 43, !dbg !228
  %117 = or i64 %115, %116, !dbg !228
  %118 = xor i64 %117, %114, !dbg !228
  %119 = add i64 %109, %105, !dbg !228
  %120 = shl i64 %105, 17, !dbg !228
  %121 = lshr i64 %105, 47, !dbg !228
  %122 = or i64 %120, %121, !dbg !228
  %123 = xor i64 %119, %122, !dbg !228
  %124 = shl i64 %119, 32, !dbg !228
  %125 = lshr i64 %119, 32, !dbg !228
  %126 = or i64 %124, %125, !dbg !228
  %127 = xor i64 %114, %99, !dbg !230
  %128 = getelementptr inbounds i8, i8* %20, i64 8, !dbg !231
  %129 = icmp eq i8* %128, %12, !dbg !182
  br i1 %129, label %130, label %19, !dbg !185, !llvm.loop !232

; <label>:130:                                    ; preds = %19, %3
  %131 = phi i64 [ %14, %3 ], [ %118, %19 ], !dbg !234
  %132 = phi i64 [ %15, %3 ], [ %126, %19 ], !dbg !234
  %133 = phi i64 [ %16, %3 ], [ %123, %19 ], !dbg !234
  %134 = phi i64 [ %17, %3 ], [ %127, %19 ], !dbg !235
  %135 = phi i8* [ %0, %3 ], [ %12, %19 ]
  %136 = trunc i64 %1 to i3, !dbg !236
  switch i3 %136, label %218 [
    i3 -1, label %137
    i3 -2, label %148
    i3 -3, label %160
    i3 -4, label %172
    i3 3, label %184
    i3 2, label %196
    i3 1, label %208
  ], !dbg !236

; <label>:137:                                    ; preds = %130
  %138 = getelementptr inbounds i8, i8* %135, i64 6, !dbg !237
  %139 = load i8, i8* %138, align 1, !dbg !237, !tbaa !98
  %140 = zext i8 %139 to i32, !dbg !237
  %141 = add nsw i32 %140, -65, !dbg !241
  %142 = icmp ult i32 %141, 26, !dbg !241
  %143 = add nuw nsw i32 %140, 32, !dbg !242
  %144 = select i1 %142, i32 %143, i32 %140, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  %145 = zext i32 %144 to i64, !dbg !244
  %146 = shl nuw nsw i64 %145, 48, !dbg !245
  %147 = or i64 %146, %13, !dbg !246
  br label %148, !dbg !247

; <label>:148:                                    ; preds = %130, %137
  %149 = phi i64 [ %13, %130 ], [ %147, %137 ], !dbg !248
  %150 = getelementptr inbounds i8, i8* %135, i64 5, !dbg !249
  %151 = load i8, i8* %150, align 1, !dbg !249, !tbaa !98
  %152 = zext i8 %151 to i32, !dbg !249
  %153 = add nsw i32 %152, -65, !dbg !252
  %154 = icmp ult i32 %153, 26, !dbg !252
  %155 = add nuw nsw i32 %152, 32, !dbg !253
  %156 = select i1 %154, i32 %155, i32 %152, !dbg !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  %157 = zext i32 %156 to i64, !dbg !255
  %158 = shl nuw nsw i64 %157, 40, !dbg !256
  %159 = or i64 %158, %149, !dbg !257
  br label %160, !dbg !258

; <label>:160:                                    ; preds = %130, %148
  %161 = phi i64 [ %13, %130 ], [ %159, %148 ], !dbg !248
  %162 = getelementptr inbounds i8, i8* %135, i64 4, !dbg !259
  %163 = load i8, i8* %162, align 1, !dbg !259, !tbaa !98
  %164 = zext i8 %163 to i32, !dbg !259
  %165 = add nsw i32 %164, -65, !dbg !262
  %166 = icmp ult i32 %165, 26, !dbg !262
  %167 = add nuw nsw i32 %164, 32, !dbg !263
  %168 = select i1 %166, i32 %167, i32 %164, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %169 = zext i32 %168 to i64, !dbg !265
  %170 = shl nuw nsw i64 %169, 32, !dbg !266
  %171 = or i64 %170, %161, !dbg !267
  br label %172, !dbg !268

; <label>:172:                                    ; preds = %130, %160
  %173 = phi i64 [ %13, %130 ], [ %171, %160 ], !dbg !248
  %174 = getelementptr inbounds i8, i8* %135, i64 3, !dbg !269
  %175 = load i8, i8* %174, align 1, !dbg !269, !tbaa !98
  %176 = zext i8 %175 to i32, !dbg !269
  %177 = add nsw i32 %176, -65, !dbg !272
  %178 = icmp ult i32 %177, 26, !dbg !272
  %179 = add nuw nsw i32 %176, 32, !dbg !273
  %180 = select i1 %178, i32 %179, i32 %176, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  %181 = zext i32 %180 to i64, !dbg !275
  %182 = shl nuw nsw i64 %181, 24, !dbg !276
  %183 = or i64 %182, %173, !dbg !277
  br label %184, !dbg !278

; <label>:184:                                    ; preds = %130, %172
  %185 = phi i64 [ %13, %130 ], [ %183, %172 ], !dbg !248
  %186 = getelementptr inbounds i8, i8* %135, i64 2, !dbg !279
  %187 = load i8, i8* %186, align 1, !dbg !279, !tbaa !98
  %188 = zext i8 %187 to i32, !dbg !279
  %189 = add nsw i32 %188, -65, !dbg !282
  %190 = icmp ult i32 %189, 26, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %191 = shl nuw nsw i32 %188, 16, !dbg !284
  %192 = add nuw nsw i32 %191, 2097152, !dbg !284
  %193 = select i1 %190, i32 %192, i32 %191, !dbg !284
  %194 = zext i32 %193 to i64, !dbg !284
  %195 = or i64 %185, %194, !dbg !285
  br label %196, !dbg !286

; <label>:196:                                    ; preds = %130, %184
  %197 = phi i64 [ %13, %130 ], [ %195, %184 ], !dbg !248
  %198 = getelementptr inbounds i8, i8* %135, i64 1, !dbg !287
  %199 = load i8, i8* %198, align 1, !dbg !287, !tbaa !98
  %200 = zext i8 %199 to i32, !dbg !287
  %201 = add nsw i32 %200, -65, !dbg !290
  %202 = icmp ult i32 %201, 26, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %203 = shl nuw nsw i32 %200, 8, !dbg !292
  %204 = add nuw nsw i32 %203, 8192, !dbg !292
  %205 = select i1 %202, i32 %204, i32 %203, !dbg !292
  %206 = zext i32 %205 to i64, !dbg !292
  %207 = or i64 %197, %206, !dbg !293
  br label %208, !dbg !294

; <label>:208:                                    ; preds = %130, %196
  %209 = phi i64 [ %13, %130 ], [ %207, %196 ], !dbg !248
  %210 = load i8, i8* %135, align 1, !dbg !295, !tbaa !98
  %211 = zext i8 %210 to i32, !dbg !295
  %212 = add nsw i32 %211, -65, !dbg !298
  %213 = icmp ult i32 %212, 26, !dbg !298
  %214 = add nuw nsw i32 %211, 32, !dbg !299
  %215 = select i1 %213, i32 %214, i32 %211, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  %216 = zext i32 %215 to i64, !dbg !301
  %217 = or i64 %209, %216, !dbg !302
  br label %218, !dbg !303

; <label>:218:                                    ; preds = %130, %208
  %219 = phi i64 [ %13, %130 ], [ %217, %208 ], !dbg !248
  %220 = xor i64 %219, %131, !dbg !304
  %221 = add i64 %134, %133, !dbg !305
  %222 = shl i64 %133, 13, !dbg !305
  %223 = lshr i64 %133, 51, !dbg !305
  %224 = or i64 %222, %223, !dbg !305
  %225 = xor i64 %224, %221, !dbg !305
  %226 = shl i64 %221, 32, !dbg !305
  %227 = lshr i64 %221, 32, !dbg !305
  %228 = or i64 %226, %227, !dbg !305
  %229 = add i64 %220, %132, !dbg !305
  %230 = shl i64 %220, 16, !dbg !305
  %231 = lshr i64 %220, 48, !dbg !305
  %232 = or i64 %230, %231, !dbg !305
  %233 = xor i64 %232, %229, !dbg !305
  %234 = add i64 %233, %228, !dbg !305
  %235 = shl i64 %233, 21, !dbg !305
  %236 = lshr i64 %233, 43, !dbg !305
  %237 = or i64 %235, %236, !dbg !305
  %238 = xor i64 %237, %234, !dbg !305
  %239 = add i64 %229, %225, !dbg !305
  %240 = shl i64 %225, 17, !dbg !305
  %241 = lshr i64 %225, 47, !dbg !305
  %242 = or i64 %240, %241, !dbg !305
  %243 = xor i64 %239, %242, !dbg !305
  %244 = shl i64 %239, 32, !dbg !305
  %245 = lshr i64 %239, 32, !dbg !305
  %246 = or i64 %244, %245, !dbg !305
  %247 = xor i64 %234, %219, !dbg !307
  %248 = xor i64 %246, 255, !dbg !308
  %249 = add i64 %247, %243, !dbg !309
  %250 = shl i64 %243, 13, !dbg !309
  %251 = lshr i64 %243, 51, !dbg !309
  %252 = or i64 %250, %251, !dbg !309
  %253 = xor i64 %249, %252, !dbg !309
  %254 = shl i64 %249, 32, !dbg !309
  %255 = lshr i64 %249, 32, !dbg !309
  %256 = or i64 %254, %255, !dbg !309
  %257 = add i64 %238, %248, !dbg !309
  %258 = shl i64 %238, 16, !dbg !309
  %259 = lshr i64 %238, 48, !dbg !309
  %260 = or i64 %258, %259, !dbg !309
  %261 = xor i64 %260, %257, !dbg !309
  %262 = add i64 %261, %256, !dbg !309
  %263 = shl i64 %261, 21, !dbg !309
  %264 = lshr i64 %261, 43, !dbg !309
  %265 = or i64 %263, %264, !dbg !309
  %266 = xor i64 %265, %262, !dbg !309
  %267 = add i64 %257, %253, !dbg !309
  %268 = shl i64 %253, 17, !dbg !309
  %269 = lshr i64 %253, 47, !dbg !309
  %270 = or i64 %268, %269, !dbg !309
  %271 = xor i64 %270, %267, !dbg !309
  %272 = shl i64 %267, 32, !dbg !309
  %273 = lshr i64 %267, 32, !dbg !309
  %274 = or i64 %272, %273, !dbg !309
  %275 = add i64 %262, %271, !dbg !311
  %276 = shl i64 %271, 13, !dbg !311
  %277 = lshr i64 %271, 51, !dbg !311
  %278 = or i64 %276, %277, !dbg !311
  %279 = xor i64 %278, %275, !dbg !311
  %280 = add i64 %266, %274, !dbg !311
  %281 = shl i64 %266, 16, !dbg !311
  %282 = lshr i64 %266, 48, !dbg !311
  %283 = or i64 %281, %282, !dbg !311
  %284 = xor i64 %283, %280, !dbg !311
  %285 = shl i64 %284, 21, !dbg !311
  %286 = lshr i64 %284, 43, !dbg !311
  %287 = or i64 %285, %286, !dbg !311
  %288 = add i64 %280, %279, !dbg !311
  %289 = shl i64 %279, 17, !dbg !311
  %290 = lshr i64 %279, 47, !dbg !311
  %291 = or i64 %289, %290, !dbg !311
  %292 = shl i64 %288, 32, !dbg !311
  %293 = lshr i64 %288, 32, !dbg !311
  %294 = or i64 %292, %293, !dbg !311
  %295 = xor i64 %291, %288, !dbg !313
  %296 = xor i64 %295, %294, !dbg !314
  %297 = xor i64 %296, %287, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  ret i64 %297, !dbg !316
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
!25 = !DILocation(line: 56, column: 1, scope: !14)
!26 = distinct !DISubprogram(name: "siphash", scope: !1, file: !1, line: 115, type: !27, isLocal: false, isDefinition: true, scopeLine: 115, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !39)
!27 = !DISubroutineType(types: !28)
!28 = !{!5, !29, !34, !29}
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !6, line: 24, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !8, line: 43, baseType: !33)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 40, baseType: !37)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !38, line: 129, baseType: !9)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !53}
!40 = !DILocalVariable(name: "in", arg: 1, scope: !26, file: !1, line: 115, type: !29)
!41 = !DILocalVariable(name: "inlen", arg: 2, scope: !26, file: !1, line: 115, type: !34)
!42 = !DILocalVariable(name: "k", arg: 3, scope: !26, file: !1, line: 115, type: !29)
!43 = !DILocalVariable(name: "v0", scope: !26, file: !1, line: 120, type: !5)
!44 = !DILocalVariable(name: "v1", scope: !26, file: !1, line: 121, type: !5)
!45 = !DILocalVariable(name: "v2", scope: !26, file: !1, line: 122, type: !5)
!46 = !DILocalVariable(name: "v3", scope: !26, file: !1, line: 123, type: !5)
!47 = !DILocalVariable(name: "k0", scope: !26, file: !1, line: 124, type: !5)
!48 = !DILocalVariable(name: "k1", scope: !26, file: !1, line: 125, type: !5)
!49 = !DILocalVariable(name: "m", scope: !26, file: !1, line: 126, type: !5)
!50 = !DILocalVariable(name: "end", scope: !26, file: !1, line: 127, type: !29)
!51 = !DILocalVariable(name: "left", scope: !26, file: !1, line: 128, type: !52)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!53 = !DILocalVariable(name: "b", scope: !26, file: !1, line: 129, type: !5)
!54 = !DILocation(line: 115, column: 33, scope: !26)
!55 = !DILocation(line: 115, column: 50, scope: !26)
!56 = !DILocation(line: 115, column: 72, scope: !26)
!57 = !DILocation(line: 120, column: 14, scope: !26)
!58 = !DILocation(line: 121, column: 14, scope: !26)
!59 = !DILocation(line: 122, column: 14, scope: !26)
!60 = !DILocation(line: 123, column: 14, scope: !26)
!61 = !DILocation(line: 124, column: 19, scope: !26)
!62 = !{!63, !63, i64 0}
!63 = !{!"long", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 124, column: 14, scope: !26)
!67 = !DILocation(line: 125, column: 19, scope: !26)
!68 = !DILocation(line: 125, column: 14, scope: !26)
!69 = !DILocation(line: 127, column: 29, scope: !26)
!70 = !DILocation(line: 127, column: 46, scope: !26)
!71 = !DILocation(line: 127, column: 37, scope: !26)
!72 = !DILocation(line: 127, column: 20, scope: !26)
!73 = !DILocation(line: 129, column: 36, scope: !26)
!74 = !DILocation(line: 129, column: 14, scope: !26)
!75 = !DILocation(line: 130, column: 8, scope: !26)
!76 = !DILocation(line: 131, column: 8, scope: !26)
!77 = !DILocation(line: 132, column: 8, scope: !26)
!78 = !DILocation(line: 133, column: 8, scope: !26)
!79 = !DILocation(line: 135, column: 15, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 135, column: 5)
!81 = distinct !DILexicalBlock(scope: !26, file: !1, line: 135, column: 5)
!82 = !DILocation(line: 135, column: 5, scope: !81)
!83 = !DILocation(line: 136, column: 13, scope: !84)
!84 = distinct !DILexicalBlock(scope: !80, file: !1, line: 135, column: 32)
!85 = !DILocation(line: 126, column: 14, scope: !26)
!86 = !DILocation(line: 137, column: 12, scope: !84)
!87 = !DILocation(line: 139, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !1, line: 139, column: 9)
!89 = !DILocation(line: 141, column: 12, scope: !84)
!90 = !DILocation(line: 135, column: 26, scope: !80)
!91 = distinct !{!91, !82, !92}
!92 = !DILocation(line: 142, column: 5, scope: !81)
!93 = !DILocation(line: 144, column: 5, scope: !26)
!94 = !DILocation(line: 0, scope: !88)
!95 = !DILocation(line: 0, scope: !84)
!96 = !DILocation(line: 145, column: 29, scope: !97)
!97 = distinct !DILexicalBlock(scope: !26, file: !1, line: 144, column: 19)
!98 = !{!64, !64, i64 0}
!99 = !DILocation(line: 145, column: 19, scope: !97)
!100 = !DILocation(line: 145, column: 36, scope: !97)
!101 = !DILocation(line: 145, column: 15, scope: !97)
!102 = !DILocation(line: 145, column: 13, scope: !97)
!103 = !DILocation(line: 0, scope: !97)
!104 = !DILocation(line: 146, column: 29, scope: !97)
!105 = !DILocation(line: 146, column: 19, scope: !97)
!106 = !DILocation(line: 146, column: 36, scope: !97)
!107 = !DILocation(line: 146, column: 15, scope: !97)
!108 = !DILocation(line: 146, column: 13, scope: !97)
!109 = !DILocation(line: 147, column: 29, scope: !97)
!110 = !DILocation(line: 147, column: 19, scope: !97)
!111 = !DILocation(line: 147, column: 36, scope: !97)
!112 = !DILocation(line: 147, column: 15, scope: !97)
!113 = !DILocation(line: 147, column: 13, scope: !97)
!114 = !DILocation(line: 148, column: 29, scope: !97)
!115 = !DILocation(line: 148, column: 19, scope: !97)
!116 = !DILocation(line: 148, column: 36, scope: !97)
!117 = !DILocation(line: 148, column: 15, scope: !97)
!118 = !DILocation(line: 148, column: 13, scope: !97)
!119 = !DILocation(line: 149, column: 29, scope: !97)
!120 = !DILocation(line: 149, column: 19, scope: !97)
!121 = !DILocation(line: 149, column: 36, scope: !97)
!122 = !DILocation(line: 149, column: 15, scope: !97)
!123 = !DILocation(line: 149, column: 13, scope: !97)
!124 = !DILocation(line: 150, column: 29, scope: !97)
!125 = !DILocation(line: 150, column: 19, scope: !97)
!126 = !DILocation(line: 150, column: 36, scope: !97)
!127 = !DILocation(line: 150, column: 15, scope: !97)
!128 = !DILocation(line: 150, column: 13, scope: !97)
!129 = !DILocation(line: 151, column: 29, scope: !97)
!130 = !DILocation(line: 151, column: 19, scope: !97)
!131 = !DILocation(line: 151, column: 15, scope: !97)
!132 = !DILocation(line: 151, column: 37, scope: !97)
!133 = !DILocation(line: 155, column: 8, scope: !26)
!134 = !DILocation(line: 157, column: 5, scope: !135)
!135 = distinct !DILexicalBlock(scope: !26, file: !1, line: 157, column: 5)
!136 = !DILocation(line: 159, column: 8, scope: !26)
!137 = !DILocation(line: 160, column: 8, scope: !26)
!138 = !DILocation(line: 162, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !26, file: !1, line: 162, column: 5)
!140 = !DILocation(line: 163, column: 5, scope: !141)
!141 = distinct !DILexicalBlock(scope: !26, file: !1, line: 163, column: 5)
!142 = !DILocation(line: 165, column: 12, scope: !26)
!143 = !DILocation(line: 165, column: 17, scope: !26)
!144 = !DILocation(line: 165, column: 22, scope: !26)
!145 = !DILocation(line: 170, column: 5, scope: !26)
!146 = distinct !DISubprogram(name: "siphash_nocase", scope: !1, file: !1, line: 174, type: !27, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !147)
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160}
!148 = !DILocalVariable(name: "in", arg: 1, scope: !146, file: !1, line: 174, type: !29)
!149 = !DILocalVariable(name: "inlen", arg: 2, scope: !146, file: !1, line: 174, type: !34)
!150 = !DILocalVariable(name: "k", arg: 3, scope: !146, file: !1, line: 174, type: !29)
!151 = !DILocalVariable(name: "v0", scope: !146, file: !1, line: 180, type: !5)
!152 = !DILocalVariable(name: "v1", scope: !146, file: !1, line: 181, type: !5)
!153 = !DILocalVariable(name: "v2", scope: !146, file: !1, line: 182, type: !5)
!154 = !DILocalVariable(name: "v3", scope: !146, file: !1, line: 183, type: !5)
!155 = !DILocalVariable(name: "k0", scope: !146, file: !1, line: 184, type: !5)
!156 = !DILocalVariable(name: "k1", scope: !146, file: !1, line: 185, type: !5)
!157 = !DILocalVariable(name: "m", scope: !146, file: !1, line: 186, type: !5)
!158 = !DILocalVariable(name: "end", scope: !146, file: !1, line: 187, type: !29)
!159 = !DILocalVariable(name: "left", scope: !146, file: !1, line: 188, type: !52)
!160 = !DILocalVariable(name: "b", scope: !146, file: !1, line: 189, type: !5)
!161 = !DILocation(line: 174, column: 40, scope: !146)
!162 = !DILocation(line: 174, column: 57, scope: !146)
!163 = !DILocation(line: 174, column: 79, scope: !146)
!164 = !DILocation(line: 180, column: 14, scope: !146)
!165 = !DILocation(line: 181, column: 14, scope: !146)
!166 = !DILocation(line: 182, column: 14, scope: !146)
!167 = !DILocation(line: 183, column: 14, scope: !146)
!168 = !DILocation(line: 184, column: 19, scope: !146)
!169 = !DILocation(line: 184, column: 14, scope: !146)
!170 = !DILocation(line: 185, column: 19, scope: !146)
!171 = !DILocation(line: 185, column: 14, scope: !146)
!172 = !DILocation(line: 187, column: 29, scope: !146)
!173 = !DILocation(line: 187, column: 46, scope: !146)
!174 = !DILocation(line: 187, column: 37, scope: !146)
!175 = !DILocation(line: 187, column: 20, scope: !146)
!176 = !DILocation(line: 189, column: 36, scope: !146)
!177 = !DILocation(line: 189, column: 14, scope: !146)
!178 = !DILocation(line: 190, column: 8, scope: !146)
!179 = !DILocation(line: 191, column: 8, scope: !146)
!180 = !DILocation(line: 192, column: 8, scope: !146)
!181 = !DILocation(line: 193, column: 8, scope: !146)
!182 = !DILocation(line: 195, column: 15, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 195, column: 5)
!184 = distinct !DILexicalBlock(scope: !146, file: !1, line: 195, column: 5)
!185 = !DILocation(line: 195, column: 5, scope: !184)
!186 = !DILocation(line: 196, column: 13, scope: !187)
!187 = distinct !DILexicalBlock(scope: !183, file: !1, line: 195, column: 32)
!188 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !189)
!189 = distinct !DILocation(line: 196, column: 13, scope: !187)
!190 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !189)
!191 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !189)
!192 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !189)
!193 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !194)
!194 = distinct !DILocation(line: 196, column: 13, scope: !187)
!195 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !194)
!196 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !194)
!197 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !198)
!198 = distinct !DILocation(line: 196, column: 13, scope: !187)
!199 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !198)
!200 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !198)
!201 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !202)
!202 = distinct !DILocation(line: 196, column: 13, scope: !187)
!203 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !202)
!204 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !202)
!205 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !202)
!206 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !207)
!207 = distinct !DILocation(line: 196, column: 13, scope: !187)
!208 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !207)
!209 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !207)
!210 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !207)
!211 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !212)
!212 = distinct !DILocation(line: 196, column: 13, scope: !187)
!213 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !212)
!214 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !212)
!215 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !212)
!216 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !217)
!217 = distinct !DILocation(line: 196, column: 13, scope: !187)
!218 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !217)
!219 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !217)
!220 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !217)
!221 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !222)
!222 = distinct !DILocation(line: 196, column: 13, scope: !187)
!223 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !222)
!224 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !222)
!225 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !222)
!226 = !DILocation(line: 186, column: 14, scope: !146)
!227 = !DILocation(line: 197, column: 12, scope: !187)
!228 = !DILocation(line: 199, column: 9, scope: !229)
!229 = distinct !DILexicalBlock(scope: !187, file: !1, line: 199, column: 9)
!230 = !DILocation(line: 201, column: 12, scope: !187)
!231 = !DILocation(line: 195, column: 26, scope: !183)
!232 = distinct !{!232, !185, !233}
!233 = !DILocation(line: 202, column: 5, scope: !184)
!234 = !DILocation(line: 0, scope: !229)
!235 = !DILocation(line: 0, scope: !187)
!236 = !DILocation(line: 204, column: 5, scope: !146)
!237 = !DILocation(line: 205, column: 36, scope: !238)
!238 = distinct !DILexicalBlock(scope: !146, file: !1, line: 204, column: 19)
!239 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !240)
!240 = distinct !DILocation(line: 205, column: 29, scope: !238)
!241 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !240)
!242 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !240)
!243 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !240)
!244 = !DILocation(line: 205, column: 19, scope: !238)
!245 = !DILocation(line: 205, column: 44, scope: !238)
!246 = !DILocation(line: 205, column: 15, scope: !238)
!247 = !DILocation(line: 205, column: 13, scope: !238)
!248 = !DILocation(line: 0, scope: !238)
!249 = !DILocation(line: 206, column: 36, scope: !238)
!250 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !251)
!251 = distinct !DILocation(line: 206, column: 29, scope: !238)
!252 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !251)
!253 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !251)
!254 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !251)
!255 = !DILocation(line: 206, column: 19, scope: !238)
!256 = !DILocation(line: 206, column: 44, scope: !238)
!257 = !DILocation(line: 206, column: 15, scope: !238)
!258 = !DILocation(line: 206, column: 13, scope: !238)
!259 = !DILocation(line: 207, column: 36, scope: !238)
!260 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !261)
!261 = distinct !DILocation(line: 207, column: 29, scope: !238)
!262 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !261)
!263 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !261)
!264 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !261)
!265 = !DILocation(line: 207, column: 19, scope: !238)
!266 = !DILocation(line: 207, column: 44, scope: !238)
!267 = !DILocation(line: 207, column: 15, scope: !238)
!268 = !DILocation(line: 207, column: 13, scope: !238)
!269 = !DILocation(line: 208, column: 36, scope: !238)
!270 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !271)
!271 = distinct !DILocation(line: 208, column: 29, scope: !238)
!272 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !271)
!273 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !271)
!274 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !271)
!275 = !DILocation(line: 208, column: 19, scope: !238)
!276 = !DILocation(line: 208, column: 44, scope: !238)
!277 = !DILocation(line: 208, column: 15, scope: !238)
!278 = !DILocation(line: 208, column: 13, scope: !238)
!279 = !DILocation(line: 209, column: 36, scope: !238)
!280 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !281)
!281 = distinct !DILocation(line: 209, column: 29, scope: !238)
!282 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !281)
!283 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !281)
!284 = !DILocation(line: 209, column: 44, scope: !238)
!285 = !DILocation(line: 209, column: 15, scope: !238)
!286 = !DILocation(line: 209, column: 13, scope: !238)
!287 = !DILocation(line: 210, column: 36, scope: !238)
!288 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !289)
!289 = distinct !DILocation(line: 210, column: 29, scope: !238)
!290 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !289)
!291 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !289)
!292 = !DILocation(line: 210, column: 44, scope: !238)
!293 = !DILocation(line: 210, column: 15, scope: !238)
!294 = !DILocation(line: 210, column: 13, scope: !238)
!295 = !DILocation(line: 211, column: 36, scope: !238)
!296 = !DILocation(line: 50, column: 16, scope: !14, inlinedAt: !297)
!297 = distinct !DILocation(line: 211, column: 29, scope: !238)
!298 = !DILocation(line: 51, column: 18, scope: !22, inlinedAt: !297)
!299 = !DILocation(line: 52, column: 17, scope: !24, inlinedAt: !297)
!300 = !DILocation(line: 56, column: 1, scope: !14, inlinedAt: !297)
!301 = !DILocation(line: 211, column: 19, scope: !238)
!302 = !DILocation(line: 211, column: 15, scope: !238)
!303 = !DILocation(line: 211, column: 45, scope: !238)
!304 = !DILocation(line: 215, column: 8, scope: !146)
!305 = !DILocation(line: 217, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !146, file: !1, line: 217, column: 5)
!307 = !DILocation(line: 219, column: 8, scope: !146)
!308 = !DILocation(line: 220, column: 8, scope: !146)
!309 = !DILocation(line: 222, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !146, file: !1, line: 222, column: 5)
!311 = !DILocation(line: 223, column: 5, scope: !312)
!312 = distinct !DILexicalBlock(scope: !146, file: !1, line: 223, column: 5)
!313 = !DILocation(line: 225, column: 12, scope: !146)
!314 = !DILocation(line: 225, column: 17, scope: !146)
!315 = !DILocation(line: 225, column: 22, scope: !146)
!316 = !DILocation(line: 230, column: 5, scope: !146)
