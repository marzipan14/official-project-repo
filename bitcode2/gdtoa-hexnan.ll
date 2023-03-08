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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  br label %4, !dbg !53

; <label>:4:                                      ; preds = %19, %2
  %5 = phi i8* [ %1, %2 ], [ %7, %19 ]
  %6 = phi i8* [ %3, %2 ], [ %11, %19 ], !dbg !54
  %7 = getelementptr inbounds i8, i8* %5, i64 1, !dbg !57
  %8 = load i8, i8* %5, align 1, !dbg !58, !tbaa !59
  %9 = sext i8 %8 to i32, !dbg !58
  %10 = icmp eq i8 %8, 0, !dbg !61
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !53
  %11 = getelementptr inbounds i8, i8* %6, i64 1, !dbg !54
  br i1 %10, label %22, label %12, !dbg !53

; <label>:12:                                     ; preds = %4
  %13 = load i8, i8* %11, align 1, !dbg !62, !tbaa !59
  %14 = sext i8 %13 to i32, !dbg !62
  %15 = add i8 %13, -65, !dbg !64
  %16 = icmp ult i8 %15, 26, !dbg !64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %16, label %17, label %19, !dbg !64

; <label>:17:                                     ; preds = %12
  %18 = add nsw i32 %14, 32, !dbg !65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  br label %19, !dbg !66

; <label>:19:                                     ; preds = %17, %12
  %20 = phi i32 [ %18, %17 ], [ %14, %12 ], !dbg !54
  %21 = icmp eq i32 %20, %9, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !69
  br i1 %21, label %4, label %23, !dbg !69, !llvm.loop !70

; <label>:22:                                     ; preds = %4
  store i8* %11, i8** %0, align 8, !dbg !72, !tbaa !48
  br label %23, !dbg !73

; <label>:23:                                     ; preds = %19, %22
  %24 = phi i32 [ 1, %22 ], [ 0, %19 ], !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  ret i32 %24, !dbg !76
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__hexnan(i8** nocapture, %struct.FPI* nocapture readonly, i32*) local_unnamed_addr #0 !dbg !77 {
  %4 = getelementptr inbounds %struct.FPI, %struct.FPI* %1, i64 0, i32 0, !dbg !106
  %5 = load i32, i32* %4, align 4, !dbg !106, !tbaa !107
  %6 = ashr i32 %5, 5, !dbg !111
  %7 = sext i32 %6 to i64, !dbg !112
  %8 = getelementptr inbounds i32, i32* %2, i64 %7, !dbg !112
  %9 = and i32 %5, 31, !dbg !114
  %10 = icmp ne i32 %9, 0, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %10, label %11, label %13, !dbg !116

; <label>:11:                                     ; preds = %3
  %12 = getelementptr inbounds i32, i32* %8, i64 1, !dbg !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !118
  br label %13, !dbg !118

; <label>:13:                                     ; preds = %11, %3
  %14 = phi i32* [ %12, %11 ], [ %8, %3 ], !dbg !119
  %15 = ptrtoint i32* %14 to i64
  %16 = getelementptr inbounds i32, i32* %14, i64 -1, !dbg !113
  store i32 0, i32* %16, align 4, !dbg !120, !tbaa !121
  %17 = load i8*, i8** %0, align 8, !dbg !127, !tbaa !48
  %18 = xor i64 %15, -1, !dbg !129
  br label %19, !dbg !129

; <label>:19:                                     ; preds = %102, %13
  %20 = phi i32* [ %104, %102 ], [ %16, %13 ]
  %21 = phi i64 [ %103, %102 ], [ -1, %13 ]
  %22 = phi i8* [ %57, %102 ], [ %17, %13 ]
  %23 = phi i32 [ %48, %102 ], [ 0, %13 ]
  %24 = bitcast i32* %20 to i8*
  %25 = getelementptr i8, i8* %24, i64 %18, !dbg !124
  br label %26, !dbg !124

; <label>:26:                                     ; preds = %66, %19
  %27 = phi i64 [ %21, %19 ], [ %32, %66 ]
  %28 = phi i8* [ %22, %19 ], [ %57, %66 ]
  %29 = phi i32 [ %23, %19 ], [ %48, %66 ]
  %30 = phi i32 [ 0, %19 ], [ %58, %66 ]
  br label %31, !dbg !124

; <label>:31:                                     ; preds = %26, %119
  %32 = phi i64 [ %27, %26 ], [ %122, %119 ]
  %33 = phi i8* [ %28, %26 ], [ %57, %119 ]
  %34 = phi i32 [ %29, %26 ], [ %110, %119 ]
  %35 = phi i32 [ %30, %26 ], [ %123, %119 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  %36 = getelementptr inbounds i32, i32* %14, i64 %32
  %37 = icmp ult i32* %36, %20
  %38 = icmp ugt i32* %36, %2
  %39 = mul i64 %32, -4, !dbg !124
  %40 = getelementptr i8, i8* %25, i64 %39, !dbg !124
  %41 = ptrtoint i8* %40 to i64
  %42 = and i64 %41, 4
  %43 = icmp eq i64 %42, 0
  %44 = getelementptr inbounds i32, i32* %36, i64 1
  %45 = icmp ult i8* %40, inttoptr (i64 4 to i8*)
  br label %46, !dbg !124

; <label>:46:                                     ; preds = %31, %113
  %47 = phi i8* [ %33, %31 ], [ %57, %113 ]
  %48 = phi i32 [ %34, %31 ], [ %110, %113 ]
  %49 = phi i32 [ %35, %31 ], [ %111, %113 ]
  %50 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !130
  %51 = load i8, i8* %50, align 1, !dbg !131, !tbaa !59
  %52 = icmp eq i8 %51, 0, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %52, label %128, label %53, !dbg !129

; <label>:53:                                     ; preds = %46
  %54 = icmp slt i32 %23, %48
  br label %55, !dbg !129

; <label>:55:                                     ; preds = %53, %98
  %56 = phi i8 [ %51, %53 ], [ %100, %98 ]
  %57 = phi i8* [ %50, %53 ], [ %99, %98 ]
  %58 = phi i32 [ %49, %53 ], [ 8, %98 ]
  %59 = phi i8* [ %47, %53 ], [ %57, %98 ]
  %60 = zext i8 %56 to i64, !dbg !132
  %61 = getelementptr inbounds [0 x i8], [0 x i8]* @__hexdig, i64 0, i64 %60, !dbg !132
  %62 = load i8, i8* %61, align 1, !dbg !132, !tbaa !59
  %63 = icmp eq i8 %62, 0, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !136
  br i1 %63, label %64, label %109, !dbg !136

; <label>:64:                                     ; preds = %55
  %65 = icmp ult i8 %56, 33, !dbg !137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  br i1 %65, label %66, label %105, !dbg !140

; <label>:66:                                     ; preds = %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br i1 %54, label %67, label %26, !dbg !141, !llvm.loop !143

; <label>:67:                                     ; preds = %66
  %68 = icmp slt i32 %58, 8, !dbg !145
  %69 = and i1 %37, %68, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br i1 %69, label %70, label %97, !dbg !149

; <label>:70:                                     ; preds = %67
  %71 = shl i32 %58, 2, !dbg !160
  %72 = sub i32 32, %71, !dbg !160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !162
  %73 = load i32, i32* %36, align 4, !dbg !163, !tbaa !121
  br i1 %43, label %74, label %79, !dbg !162

; <label>:74:                                     ; preds = %70
  %75 = load i32, i32* %44, align 4, !dbg !165, !tbaa !121
  %76 = shl i32 %75, %71, !dbg !166
  %77 = or i32 %76, %73, !dbg !163
  store i32 %77, i32* %36, align 4, !dbg !163, !tbaa !121
  %78 = lshr i32 %75, %72, !dbg !167
  store i32 %78, i32* %44, align 4, !dbg !167, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br label %79, !dbg !168

; <label>:79:                                     ; preds = %74, %70
  %80 = phi i32 [ %78, %74 ], [ %73, %70 ]
  %81 = phi i32* [ %44, %74 ], [ %36, %70 ]
  br i1 %45, label %96, label %82, !dbg !162

; <label>:82:                                     ; preds = %79, %82
  %83 = phi i32 [ %94, %82 ], [ %80, %79 ], !dbg !163
  %84 = phi i32* [ %90, %82 ], [ %81, %79 ]
  %85 = getelementptr inbounds i32, i32* %84, i64 1, !dbg !165
  %86 = load i32, i32* %85, align 4, !dbg !165, !tbaa !121
  %87 = shl i32 %86, %71, !dbg !166
  %88 = or i32 %87, %83, !dbg !163
  store i32 %88, i32* %84, align 4, !dbg !163, !tbaa !121
  %89 = lshr i32 %86, %72, !dbg !167
  store i32 %89, i32* %85, align 4, !dbg !167, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  %90 = getelementptr inbounds i32, i32* %84, i64 2, !dbg !165
  %91 = load i32, i32* %90, align 4, !dbg !165, !tbaa !121
  %92 = shl i32 %91, %71, !dbg !166
  %93 = or i32 %92, %89, !dbg !163
  store i32 %93, i32* %85, align 4, !dbg !163, !tbaa !121
  %94 = lshr i32 %91, %72, !dbg !167
  store i32 %94, i32* %90, align 4, !dbg !167, !tbaa !121
  %95 = icmp ult i32* %90, %20, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  br i1 %95, label %82, label %96, !dbg !168, !llvm.loop !170

; <label>:96:                                     ; preds = %82, %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br label %97, !dbg !174

; <label>:97:                                     ; preds = %96, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %38, label %102, label %98, !dbg !175

; <label>:98:                                     ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !176
  %99 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !130
  %100 = load i8, i8* %99, align 1, !dbg !131, !tbaa !59
  %101 = icmp eq i8 %100, 0, !dbg !129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br i1 %101, label %128, label %55, !dbg !129, !llvm.loop !143

; <label>:102:                                    ; preds = %97
  %103 = add nsw i64 %32, -1, !dbg !179
  %104 = getelementptr inbounds i32, i32* %14, i64 %103, !dbg !113
  store i32 0, i32* %104, align 4, !dbg !180, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  br label %19, !dbg !181, !llvm.loop !143

; <label>:105:                                    ; preds = %64
  %106 = icmp eq i8 %56, 41, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br i1 %106, label %107, label %203, !dbg !184

; <label>:107:                                    ; preds = %105
  %108 = getelementptr inbounds i8, i8* %59, i64 2, !dbg !185
  store i8* %108, i8** %0, align 8, !dbg !187, !tbaa !48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br label %128, !dbg !188

; <label>:109:                                    ; preds = %55
  %110 = add nsw i32 %48, 1, !dbg !189
  %111 = add nsw i32 %58, 1, !dbg !190
  %112 = icmp sgt i32 %58, 7, !dbg !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !193
  br i1 %112, label %113, label %117, !dbg !193

; <label>:113:                                    ; preds = %109
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br i1 %38, label %114, label %46, !dbg !194, !llvm.loop !143

; <label>:114:                                    ; preds = %113
  %115 = add nsw i64 %32, -1, !dbg !196
  %116 = getelementptr inbounds i32, i32* %14, i64 %115, !dbg !113
  store i32 0, i32* %116, align 4, !dbg !197, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !198
  br label %119, !dbg !198

; <label>:117:                                    ; preds = %109
  %118 = load i32, i32* %36, align 4, !dbg !199, !tbaa !121
  br label %119, !dbg !124

; <label>:119:                                    ; preds = %117, %114
  %120 = phi i32* [ %36, %117 ], [ %116, %114 ], !dbg !124
  %121 = phi i32 [ %118, %117 ], [ 0, %114 ], !dbg !199
  %122 = phi i64 [ %32, %117 ], [ %115, %114 ]
  %123 = phi i32 [ %111, %117 ], [ 1, %114 ], !dbg !200
  %124 = shl i32 %121, 4, !dbg !201
  %125 = and i8 %62, 15, !dbg !202
  %126 = zext i8 %125 to i32, !dbg !202
  %127 = or i32 %124, %126, !dbg !203
  store i32 %127, i32* %120, align 4, !dbg !204, !tbaa !121
  br label %31, !dbg !129, !llvm.loop !143

; <label>:128:                                    ; preds = %46, %98, %107
  %129 = phi i32 [ %58, %107 ], [ 8, %98 ], [ %49, %46 ]
  %130 = ptrtoint i32* %36 to i64
  %131 = icmp eq i32 %48, 0, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !207
  br i1 %131, label %203, label %132, !dbg !207

; <label>:132:                                    ; preds = %128
  %133 = icmp slt i32 %129, 8, !dbg !208
  %134 = and i1 %37, %133, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  br i1 %134, label %135, label %173, !dbg !210

; <label>:135:                                    ; preds = %132
  %136 = shl i32 %129, 2, !dbg !213
  %137 = sub i32 32, %136, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  %138 = load i32, i32* %36, align 4, !dbg !216, !tbaa !121
  %139 = getelementptr i32, i32* %36, i64 1, !dbg !215
  %140 = icmp ugt i32* %20, %139, !dbg !215
  %141 = select i1 %140, i32* %20, i32* %139, !dbg !215
  %142 = bitcast i32* %141 to i8*
  %143 = xor i64 %130, -1, !dbg !215
  %144 = getelementptr i8, i8* %142, i64 %143, !dbg !215
  %145 = ptrtoint i8* %144 to i64
  %146 = and i64 %145, 4, !dbg !215
  %147 = icmp eq i64 %146, 0, !dbg !215
  br i1 %147, label %148, label %154, !dbg !215

; <label>:148:                                    ; preds = %135
  %149 = getelementptr inbounds i32, i32* %36, i64 1, !dbg !217
  %150 = load i32, i32* %149, align 4, !dbg !217, !tbaa !121
  %151 = shl i32 %150, %136, !dbg !218
  %152 = or i32 %151, %138, !dbg !216
  store i32 %152, i32* %36, align 4, !dbg !216, !tbaa !121
  %153 = lshr i32 %150, %137, !dbg !219
  store i32 %153, i32* %149, align 4, !dbg !219, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br label %154, !dbg !220

; <label>:154:                                    ; preds = %148, %135
  %155 = phi i32 [ %138, %135 ], [ %153, %148 ]
  %156 = phi i32* [ %36, %135 ], [ %149, %148 ]
  %157 = icmp ult i8* %144, inttoptr (i64 4 to i8*), !dbg !215
  br i1 %157, label %172, label %158, !dbg !215

; <label>:158:                                    ; preds = %154, %158
  %159 = phi i32 [ %170, %158 ], [ %155, %154 ], !dbg !216
  %160 = phi i32* [ %166, %158 ], [ %156, %154 ]
  %161 = getelementptr inbounds i32, i32* %160, i64 1, !dbg !217
  %162 = load i32, i32* %161, align 4, !dbg !217, !tbaa !121
  %163 = shl i32 %162, %136, !dbg !218
  %164 = or i32 %163, %159, !dbg !216
  store i32 %164, i32* %160, align 4, !dbg !216, !tbaa !121
  %165 = lshr i32 %162, %137, !dbg !219
  store i32 %165, i32* %161, align 4, !dbg !219, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  %166 = getelementptr inbounds i32, i32* %160, i64 2, !dbg !217
  %167 = load i32, i32* %166, align 4, !dbg !217, !tbaa !121
  %168 = shl i32 %167, %136, !dbg !218
  %169 = or i32 %168, %165, !dbg !216
  store i32 %169, i32* %161, align 4, !dbg !216, !tbaa !121
  %170 = lshr i32 %167, %137, !dbg !219
  store i32 %170, i32* %166, align 4, !dbg !219, !tbaa !121
  %171 = icmp ult i32* %166, %20, !dbg !221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !220
  br i1 %171, label %158, label %172, !dbg !220, !llvm.loop !170

; <label>:172:                                    ; preds = %158, %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  br label %173, !dbg !223

; <label>:173:                                    ; preds = %172, %132
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %38, label %174, label %186, !dbg !224

; <label>:174:                                    ; preds = %173, %174
  %175 = phi i32* [ %180, %174 ], [ %2, %173 ], !dbg !228
  %176 = phi i64 [ %178, %174 ], [ %32, %173 ]
  %177 = getelementptr inbounds i32, i32* %14, i64 %176, !dbg !113
  %178 = add nsw i64 %176, 1, !dbg !230
  %179 = load i32, i32* %177, align 4, !dbg !231, !tbaa !121
  %180 = getelementptr inbounds i32, i32* %175, i64 1, !dbg !232
  store i32 %179, i32* %175, align 4, !dbg !233, !tbaa !121
  %181 = icmp slt i64 %176, -1, !dbg !234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !235
  br i1 %181, label %174, label %182, !dbg !235, !llvm.loop !236

; <label>:182:                                    ; preds = %174, %182
  %183 = phi i32* [ %184, %182 ], [ %180, %174 ], !dbg !228
  %184 = getelementptr inbounds i32, i32* %183, i64 1, !dbg !239
  store i32 0, i32* %183, align 4, !dbg !240, !tbaa !121
  %185 = icmp ugt i32* %184, %16, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  br i1 %185, label %192, label %182, !dbg !242, !llvm.loop !243

; <label>:186:                                    ; preds = %173
  br i1 %10, label %187, label %192, !dbg !246

; <label>:187:                                    ; preds = %186
  %188 = sub nsw i32 32, %9, !dbg !247
  %189 = lshr i32 -1, %188, !dbg !249
  %190 = load i32, i32* %16, align 4, !dbg !250, !tbaa !121
  %191 = and i32 %190, %189, !dbg !250
  store i32 %191, i32* %16, align 4, !dbg !250, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br label %192, !dbg !251

; <label>:192:                                    ; preds = %182, %186, %187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  %193 = load i32, i32* %16, align 4, !dbg !254, !tbaa !121
  %194 = icmp eq i32 %193, 0, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %194, label %195, label %203, !dbg !259

; <label>:195:                                    ; preds = %192, %199
  %196 = phi i32* [ %200, %199 ], [ %16, %192 ]
  %197 = icmp eq i32* %196, %2, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !262
  br i1 %197, label %198, label %199, !dbg !262

; <label>:198:                                    ; preds = %195
  store i32 1, i32* %2, align 4, !dbg !263, !tbaa !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br label %203, !dbg !265

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i32, i32* %196, i64 -1, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  %201 = load i32, i32* %200, align 4, !dbg !254, !tbaa !121
  %202 = icmp eq i32 %201, 0, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  br i1 %202, label %195, label %203, !dbg !259, !llvm.loop !268

; <label>:203:                                    ; preds = %199, %198, %192, %128, %105
  %204 = phi i32 [ 4, %105 ], [ 4, %128 ], [ 5, %192 ], [ 5, %198 ], [ 5, %199 ], !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  ret i32 %204, !dbg !272
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
!57 = !DILocation(line: 55, column: 16, scope: !31)
!58 = !DILocation(line: 55, column: 14, scope: !31)
!59 = !{!50, !50, i64 0}
!60 = !DILocation(line: 52, column: 9, scope: !31)
!61 = !DILocation(line: 55, column: 20, scope: !31)
!62 = !DILocation(line: 56, column: 12, scope: !55)
!63 = !DILocation(line: 52, column: 6, scope: !31)
!64 = !DILocation(line: 56, column: 25, scope: !55)
!65 = !DILocation(line: 57, column: 6, scope: !55)
!66 = !DILocation(line: 57, column: 4, scope: !55)
!67 = !DILocation(line: 58, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !56, file: !1, line: 58, column: 7)
!69 = !DILocation(line: 58, column: 7, scope: !56)
!70 = distinct !{!70, !53, !71}
!71 = !DILocation(line: 60, column: 3, scope: !31)
!72 = !DILocation(line: 61, column: 6, scope: !31)
!73 = !DILocation(line: 62, column: 2, scope: !31)
!74 = !DILocation(line: 0, scope: !31)
!75 = !DILocation(line: 0, scope: !68)
!76 = !DILocation(line: 63, column: 1, scope: !31)
!77 = distinct !DISubprogram(name: "__hexnan", scope: !1, file: !1, line: 83, type: !78, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !91)
!78 = !DISubroutineType(types: !79)
!79 = !{!34, !35, !80, !90}
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "FPI", file: !4, line: 63, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "FPI", file: !4, line: 57, size: 160, elements: !84)
!84 = !{!85, !86, !87, !88, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "nbits", scope: !83, file: !4, line: 58, baseType: !34, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "emin", scope: !83, file: !4, line: 59, baseType: !34, size: 32, offset: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "emax", scope: !83, file: !4, line: 60, baseType: !34, size: 32, offset: 64)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "rounding", scope: !83, file: !4, line: 61, baseType: !34, size: 32, offset: 96)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sudden_underflow", scope: !83, file: !4, line: 62, baseType: !34, size: 32, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!92 = !DILocalVariable(name: "sp", arg: 1, scope: !77, file: !1, line: 83, type: !35)
!93 = !DILocalVariable(name: "fpi", arg: 2, scope: !77, file: !1, line: 83, type: !80)
!94 = !DILocalVariable(name: "x0", arg: 3, scope: !77, file: !1, line: 83, type: !90)
!95 = !DILocalVariable(name: "c", scope: !77, file: !1, line: 88, type: !25)
!96 = !DILocalVariable(name: "h", scope: !77, file: !1, line: 88, type: !25)
!97 = !DILocalVariable(name: "x", scope: !77, file: !1, line: 88, type: !90)
!98 = !DILocalVariable(name: "x1", scope: !77, file: !1, line: 88, type: !90)
!99 = !DILocalVariable(name: "xe", scope: !77, file: !1, line: 88, type: !90)
!100 = !DILocalVariable(name: "s", scope: !77, file: !1, line: 89, type: !36)
!101 = !DILocalVariable(name: "havedig", scope: !77, file: !1, line: 90, type: !34)
!102 = !DILocalVariable(name: "hd0", scope: !77, file: !1, line: 90, type: !34)
!103 = !DILocalVariable(name: "i", scope: !77, file: !1, line: 90, type: !34)
!104 = !DILocalVariable(name: "nbits", scope: !77, file: !1, line: 90, type: !34)
!105 = !DILocation(line: 83, column: 1, scope: !77)
!106 = !DILocation(line: 92, column: 15, scope: !77)
!107 = !{!108, !109, i64 0}
!108 = !{!"FPI", !109, i64 0, !109, i64 4, !109, i64 8, !109, i64 12, !109, i64 16}
!109 = !{!"int", !50, i64 0}
!110 = !DILocation(line: 90, column: 23, scope: !77)
!111 = !DILocation(line: 93, column: 18, scope: !77)
!112 = !DILocation(line: 93, column: 9, scope: !77)
!113 = !DILocation(line: 88, column: 17, scope: !77)
!114 = !DILocation(line: 94, column: 12, scope: !115)
!115 = distinct !DILexicalBlock(scope: !77, file: !1, line: 94, column: 6)
!116 = !DILocation(line: 94, column: 6, scope: !77)
!117 = !DILocation(line: 95, column: 4, scope: !115)
!118 = !DILocation(line: 95, column: 3, scope: !115)
!119 = !DILocation(line: 0, scope: !77)
!120 = !DILocation(line: 96, column: 7, scope: !77)
!121 = !{!109, !109, i64 0}
!122 = !DILocation(line: 88, column: 26, scope: !77)
!123 = !DILocation(line: 88, column: 21, scope: !77)
!124 = !DILocation(line: 90, column: 20, scope: !77)
!125 = !DILocation(line: 90, column: 15, scope: !77)
!126 = !DILocation(line: 90, column: 6, scope: !77)
!127 = !DILocation(line: 99, column: 6, scope: !77)
!128 = !DILocation(line: 89, column: 15, scope: !77)
!129 = !DILocation(line: 100, column: 2, scope: !77)
!130 = !DILocation(line: 100, column: 37, scope: !77)
!131 = !DILocation(line: 100, column: 13, scope: !77)
!132 = !DILocation(line: 101, column: 13, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 101, column: 7)
!134 = distinct !DILexicalBlock(scope: !77, file: !1, line: 100, column: 43)
!135 = !DILocation(line: 101, column: 11, scope: !133)
!136 = !DILocation(line: 101, column: 7, scope: !134)
!137 = !DILocation(line: 102, column: 10, scope: !138)
!138 = distinct !DILexicalBlock(scope: !139, file: !1, line: 102, column: 8)
!139 = distinct !DILexicalBlock(scope: !133, file: !1, line: 101, column: 31)
!140 = !DILocation(line: 102, column: 8, scope: !139)
!141 = !DILocation(line: 103, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !138, file: !1, line: 102, column: 18)
!143 = distinct !{!143, !129, !144}
!144 = !DILocation(line: 131, column: 3, scope: !77)
!145 = !DILocation(line: 104, column: 22, scope: !146)
!146 = distinct !DILexicalBlock(scope: !147, file: !1, line: 104, column: 10)
!147 = distinct !DILexicalBlock(scope: !148, file: !1, line: 103, column: 24)
!148 = distinct !DILexicalBlock(scope: !142, file: !1, line: 103, column: 9)
!149 = !DILocation(line: 104, column: 17, scope: !146)
!150 = !DILocalVariable(name: "x", arg: 1, scope: !151, file: !1, line: 66, type: !90)
!151 = distinct !DISubprogram(name: "L_shift", scope: !1, file: !1, line: 66, type: !152, isLocal: true, isDefinition: true, scopeLine: 70, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !154)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !90, !90, !34}
!154 = !{!150, !155, !156, !157}
!155 = !DILocalVariable(name: "x1", arg: 2, scope: !151, file: !1, line: 66, type: !90)
!156 = !DILocalVariable(name: "i", arg: 3, scope: !151, file: !1, line: 66, type: !34)
!157 = !DILocalVariable(name: "j", scope: !151, file: !1, line: 71, type: !34)
!158 = !DILocation(line: 66, column: 1, scope: !151, inlinedAt: !159)
!159 = distinct !DILocation(line: 105, column: 7, scope: !146)
!160 = !DILocation(line: 74, column: 4, scope: !151, inlinedAt: !159)
!161 = !DILocation(line: 71, column: 6, scope: !151, inlinedAt: !159)
!162 = !DILocation(line: 76, column: 2, scope: !151, inlinedAt: !159)
!163 = !DILocation(line: 77, column: 6, scope: !164, inlinedAt: !159)
!164 = distinct !DILexicalBlock(scope: !151, file: !1, line: 76, column: 5)
!165 = !DILocation(line: 77, column: 9, scope: !164, inlinedAt: !159)
!166 = !DILocation(line: 77, column: 14, scope: !164, inlinedAt: !159)
!167 = !DILocation(line: 78, column: 8, scope: !164, inlinedAt: !159)
!168 = !DILocation(line: 79, column: 3, scope: !164, inlinedAt: !159)
!169 = !DILocation(line: 79, column: 15, scope: !151, inlinedAt: !159)
!170 = distinct !{!170, !171, !172}
!171 = !DILocation(line: 76, column: 2, scope: !151)
!172 = !DILocation(line: 79, column: 19, scope: !151)
!173 = !DILocation(line: 80, column: 1, scope: !151, inlinedAt: !159)
!174 = !DILocation(line: 105, column: 7, scope: !146)
!175 = !DILocation(line: 106, column: 10, scope: !147)
!176 = !DILocation(line: 108, column: 7, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !1, line: 106, column: 19)
!178 = distinct !DILexicalBlock(scope: !147, file: !1, line: 106, column: 10)
!179 = !DILocation(line: 111, column: 7, scope: !147)
!180 = !DILocation(line: 111, column: 11, scope: !147)
!181 = !DILocation(line: 114, column: 6, scope: !147)
!182 = !DILocation(line: 117, column: 16, scope: !183)
!183 = distinct !DILexicalBlock(scope: !139, file: !1, line: 117, column: 14)
!184 = !DILocation(line: 117, column: 14, scope: !139)
!185 = !DILocation(line: 118, column: 13, scope: !186)
!186 = distinct !DILexicalBlock(scope: !183, file: !1, line: 117, column: 24)
!187 = !DILocation(line: 118, column: 9, scope: !186)
!188 = !DILocation(line: 119, column: 5, scope: !186)
!189 = !DILocation(line: 123, column: 10, scope: !134)
!190 = !DILocation(line: 124, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !134, file: !1, line: 124, column: 7)
!192 = !DILocation(line: 124, column: 11, scope: !191)
!193 = !DILocation(line: 124, column: 7, scope: !134)
!194 = !DILocation(line: 125, column: 8, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 124, column: 16)
!196 = !DILocation(line: 128, column: 5, scope: !195)
!197 = !DILocation(line: 128, column: 9, scope: !195)
!198 = !DILocation(line: 129, column: 4, scope: !195)
!199 = !DILocation(line: 130, column: 10, scope: !134)
!200 = !DILocation(line: 0, scope: !191)
!201 = !DILocation(line: 130, column: 13, scope: !134)
!202 = !DILocation(line: 130, column: 24, scope: !134)
!203 = !DILocation(line: 130, column: 19, scope: !134)
!204 = !DILocation(line: 130, column: 6, scope: !134)
!205 = !DILocation(line: 132, column: 7, scope: !206)
!206 = distinct !DILexicalBlock(scope: !77, file: !1, line: 132, column: 6)
!207 = !DILocation(line: 132, column: 6, scope: !77)
!208 = !DILocation(line: 134, column: 18, scope: !209)
!209 = distinct !DILexicalBlock(scope: !77, file: !1, line: 134, column: 6)
!210 = !DILocation(line: 134, column: 13, scope: !209)
!211 = !DILocation(line: 66, column: 1, scope: !151, inlinedAt: !212)
!212 = distinct !DILocation(line: 135, column: 3, scope: !209)
!213 = !DILocation(line: 74, column: 4, scope: !151, inlinedAt: !212)
!214 = !DILocation(line: 71, column: 6, scope: !151, inlinedAt: !212)
!215 = !DILocation(line: 76, column: 2, scope: !151, inlinedAt: !212)
!216 = !DILocation(line: 77, column: 6, scope: !164, inlinedAt: !212)
!217 = !DILocation(line: 77, column: 9, scope: !164, inlinedAt: !212)
!218 = !DILocation(line: 77, column: 14, scope: !164, inlinedAt: !212)
!219 = !DILocation(line: 78, column: 8, scope: !164, inlinedAt: !212)
!220 = !DILocation(line: 79, column: 3, scope: !164, inlinedAt: !212)
!221 = !DILocation(line: 79, column: 15, scope: !151, inlinedAt: !212)
!222 = !DILocation(line: 80, column: 1, scope: !151, inlinedAt: !212)
!223 = !DILocation(line: 135, column: 3, scope: !209)
!224 = !DILocation(line: 136, column: 6, scope: !77)
!225 = !DILocation(line: 0, scope: !226)
!226 = distinct !DILexicalBlock(scope: !227, file: !1, line: 143, column: 7)
!227 = distinct !DILexicalBlock(scope: !77, file: !1, line: 136, column: 6)
!228 = !DILocation(line: 0, scope: !229)
!229 = distinct !DILexicalBlock(scope: !227, file: !1, line: 136, column: 14)
!230 = !DILocation(line: 138, column: 16, scope: !229)
!231 = !DILocation(line: 138, column: 14, scope: !229)
!232 = !DILocation(line: 138, column: 9, scope: !229)
!233 = !DILocation(line: 138, column: 12, scope: !229)
!234 = !DILocation(line: 139, column: 12, scope: !229)
!235 = !DILocation(line: 138, column: 6, scope: !229)
!236 = distinct !{!236, !237, !238}
!237 = !DILocation(line: 138, column: 3, scope: !229)
!238 = !DILocation(line: 139, column: 17, scope: !229)
!239 = !DILocation(line: 140, column: 9, scope: !229)
!240 = !DILocation(line: 140, column: 12, scope: !229)
!241 = !DILocation(line: 141, column: 13, scope: !229)
!242 = !DILocation(line: 140, column: 6, scope: !229)
!243 = distinct !{!243, !244, !245}
!244 = !DILocation(line: 140, column: 3, scope: !229)
!245 = !DILocation(line: 141, column: 18, scope: !229)
!246 = !DILocation(line: 145, column: 8, scope: !226)
!247 = !DILocation(line: 146, column: 44, scope: !248)
!248 = distinct !DILexicalBlock(scope: !226, file: !1, line: 145, column: 8)
!249 = !DILocation(line: 146, column: 33, scope: !248)
!250 = !DILocation(line: 146, column: 8, scope: !248)
!251 = !DILocation(line: 146, column: 4, scope: !248)
!252 = !DILocation(line: 148, column: 6, scope: !253)
!253 = distinct !DILexicalBlock(scope: !77, file: !1, line: 148, column: 2)
!254 = !DILocation(line: 149, column: 7, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !1, line: 149, column: 7)
!256 = distinct !DILexicalBlock(scope: !257, file: !1, line: 148, column: 22)
!257 = distinct !DILexicalBlock(scope: !253, file: !1, line: 148, column: 2)
!258 = !DILocation(line: 149, column: 11, scope: !255)
!259 = !DILocation(line: 149, column: 7, scope: !256)
!260 = !DILocation(line: 151, column: 10, scope: !261)
!261 = distinct !DILexicalBlock(scope: !256, file: !1, line: 151, column: 7)
!262 = !DILocation(line: 151, column: 7, scope: !256)
!263 = !DILocation(line: 152, column: 8, scope: !264)
!264 = distinct !DILexicalBlock(scope: !261, file: !1, line: 151, column: 17)
!265 = !DILocation(line: 153, column: 4, scope: !264)
!266 = !DILocation(line: 148, column: 16, scope: !257)
!267 = !DILocation(line: 148, column: 2, scope: !257)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 148, column: 2, scope: !253)
!270 = !DILocation(line: 155, column: 3, scope: !253)
!271 = !DILocation(line: 0, scope: !139)
!272 = !DILocation(line: 157, column: 1, scope: !77)
