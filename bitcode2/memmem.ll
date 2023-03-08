; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmem.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmem.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @memmem(i8*, i64, i8*, i64) local_unnamed_addr #0 !dbg !17 {
  %5 = alloca i64, align 8
  %6 = alloca [256 x i64], align 16
  %7 = alloca i64, align 8
  %8 = icmp eq i64 %3, 0, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !59
  br i1 %8, label %301, label %9, !dbg !59

; <label>:9:                                      ; preds = %4
  %10 = icmp ult i64 %1, %3, !dbg !60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !62
  br i1 %10, label %301, label %11, !dbg !62

; <label>:11:                                     ; preds = %9
  %12 = icmp ult i64 %3, 32, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !65
  br i1 %12, label %13, label %126, !dbg !65

; <label>:13:                                     ; preds = %11
  %14 = load i8, i8* %2, align 1, !dbg !66, !tbaa !68
  %15 = zext i8 %14 to i32, !dbg !66
  %16 = tail call i8* @memchr(i8* %0, i32 %15, i64 %1) #4, !dbg !71
  %17 = icmp eq i8* %16, null, !dbg !72
  %18 = icmp eq i64 %3, 1, !dbg !74
  %19 = or i1 %18, %17, !dbg !75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !75
  br i1 %19, label %301, label %20, !dbg !75

; <label>:20:                                     ; preds = %13
  %21 = ptrtoint i8* %16 to i64, !dbg !76
  %22 = ptrtoint i8* %0 to i64, !dbg !76
  %23 = sub i64 %22, %21, !dbg !77
  %24 = add i64 %23, %1, !dbg !77
  %25 = icmp ult i64 %24, %3, !dbg !78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !80
  br i1 %25, label %301, label %26, !dbg !80

; <label>:26:                                     ; preds = %20
  %27 = bitcast i64* %7 to i8*, !dbg !99
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #5, !dbg !99
  %28 = call fastcc i64 @critical_factorization(i8* nonnull %2, i64 %3, i64* nonnull %7) #4, !dbg !101
  %29 = load i64, i64* %7, align 8, !dbg !103, !tbaa !104
  %30 = getelementptr inbounds i8, i8* %2, i64 %29, !dbg !106
  %31 = tail call i32 @memcmp(i8* nonnull %2, i8* %30, i64 %28) #4, !dbg !107
  %32 = icmp eq i32 %31, 0, !dbg !108
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br i1 %32, label %33, label %83, !dbg !109

; <label>:33:                                     ; preds = %26
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  %34 = sub i64 %24, %3, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  %35 = sub i64 %3, %29
  %36 = sub i64 1, %28
  br label %37, !dbg !112

; <label>:37:                                     ; preds = %75, %33
  %38 = phi i64 [ 0, %33 ], [ %77, %75 ]
  %39 = phi i64 [ 0, %33 ], [ %78, %75 ]
  %40 = icmp ult i64 %28, %38, !dbg !114
  %41 = select i1 %40, i64 %38, i64 %28, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  %42 = icmp ult i64 %41, %3, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %42, label %43, label %54, !dbg !119

; <label>:43:                                     ; preds = %37, %51
  %44 = phi i64 [ %52, %51 ], [ %41, %37 ]
  %45 = getelementptr inbounds i8, i8* %2, i64 %44, !dbg !120
  %46 = load i8, i8* %45, align 1, !dbg !120, !tbaa !68
  %47 = add i64 %44, %39, !dbg !121
  %48 = getelementptr inbounds i8, i8* %16, i64 %47, !dbg !121
  %49 = load i8, i8* %48, align 1, !dbg !121, !tbaa !68
  %50 = icmp eq i8 %46, %49, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  br i1 %50, label %51, label %73, !dbg !117

; <label>:51:                                     ; preds = %43
  %52 = add nuw i64 %44, 1, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !117
  %53 = icmp ult i64 %52, %3, !dbg !118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br i1 %53, label %43, label %54, !dbg !119, !llvm.loop !124

; <label>:54:                                     ; preds = %51, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  %55 = icmp ult i64 %38, %28, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %55, label %56, label %67, !dbg !132

; <label>:56:                                     ; preds = %54, %65
  %57 = phi i64 [ %58, %65 ], [ %28, %54 ]
  %58 = add i64 %57, -1
  %59 = getelementptr inbounds i8, i8* %2, i64 %58, !dbg !133
  %60 = load i8, i8* %59, align 1, !dbg !133, !tbaa !68
  %61 = add i64 %58, %39, !dbg !134
  %62 = getelementptr inbounds i8, i8* %16, i64 %61, !dbg !134
  %63 = load i8, i8* %62, align 1, !dbg !134, !tbaa !68
  %64 = icmp eq i8 %60, %63, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br i1 %64, label %65, label %69, !dbg !128

; <label>:65:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  %66 = icmp ult i64 %38, %58, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %66, label %56, label %67, !dbg !132, !llvm.loop !136

; <label>:67:                                     ; preds = %65, %54
  %68 = phi i64 [ %28, %54 ], [ %58, %65 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !128
  br label %69

; <label>:69:                                     ; preds = %56, %67
  %70 = phi i64 [ %68, %67 ], [ %57, %56 ]
  %71 = add i64 %38, 1, !dbg !139
  %72 = icmp ult i64 %70, %71, !dbg !141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !142
  br i1 %72, label %81, label %75, !dbg !142

; <label>:73:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !127
  %74 = add i64 %36, %44, !dbg !143
  br label %75

; <label>:75:                                     ; preds = %69, %73
  %76 = phi i64 [ %74, %73 ], [ %29, %69 ]
  %77 = phi i64 [ 0, %73 ], [ %35, %69 ], !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %78 = add i64 %76, %39, !dbg !145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  %79 = icmp ugt i64 %78, %34, !dbg !113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !112
  br i1 %79, label %80, label %37, !dbg !112, !llvm.loop !146

; <label>:80:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %124

; <label>:81:                                     ; preds = %69
  %82 = getelementptr inbounds i8, i8* %16, i64 %39, !dbg !150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !151
  br label %124

; <label>:83:                                     ; preds = %26
  %84 = sub i64 %3, %28, !dbg !152
  %85 = icmp ult i64 %28, %84, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !152
  %86 = select i1 %85, i64 %84, i64 %28, !dbg !152
  %87 = add i64 %86, 1, !dbg !154
  store i64 %87, i64* %7, align 8, !dbg !155, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %88 = sub i64 %24, %3, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %89 = icmp ult i64 %28, %3
  %90 = sub i64 1, %28
  br label %91, !dbg !156

; <label>:91:                                     ; preds = %120, %83
  %92 = phi i64 [ 0, %83 ], [ %122, %120 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %89, label %93, label %104, !dbg !160

; <label>:93:                                     ; preds = %91, %101
  %94 = phi i64 [ %102, %101 ], [ %28, %91 ]
  %95 = getelementptr inbounds i8, i8* %2, i64 %94, !dbg !161
  %96 = load i8, i8* %95, align 1, !dbg !161, !tbaa !68
  %97 = add i64 %94, %92, !dbg !162
  %98 = getelementptr inbounds i8, i8* %16, i64 %97, !dbg !162
  %99 = load i8, i8* %98, align 1, !dbg !162, !tbaa !68
  %100 = icmp eq i8 %96, %99, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  br i1 %100, label %101, label %118, !dbg !158

; <label>:101:                                    ; preds = %93
  %102 = add nuw i64 %94, 1, !dbg !164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !158
  %103 = icmp ult i64 %102, %3, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !160
  br i1 %103, label %93, label %104, !dbg !160, !llvm.loop !166

; <label>:104:                                    ; preds = %101, %91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br label %105, !dbg !170

; <label>:105:                                    ; preds = %109, %104
  %106 = phi i64 [ %28, %104 ], [ %107, %109 ]
  %107 = add i64 %106, -1, !dbg !173
  %108 = icmp eq i64 %106, 0, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !175
  br i1 %108, label %116, label %109, !dbg !175

; <label>:109:                                    ; preds = %105
  %110 = getelementptr inbounds i8, i8* %2, i64 %107, !dbg !176
  %111 = load i8, i8* %110, align 1, !dbg !176, !tbaa !68
  %112 = add i64 %107, %92, !dbg !177
  %113 = getelementptr inbounds i8, i8* %16, i64 %112, !dbg !177
  %114 = load i8, i8* %113, align 1, !dbg !177, !tbaa !68
  %115 = icmp eq i8 %111, %114, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %115, label %105, label %120, !dbg !170, !llvm.loop !179

; <label>:116:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  %117 = getelementptr inbounds i8, i8* %16, i64 %92, !dbg !183
  br label %124, !dbg !185

; <label>:118:                                    ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %119 = add i64 %90, %94, !dbg !186
  br label %120

; <label>:120:                                    ; preds = %109, %118
  %121 = phi i64 [ %119, %118 ], [ %87, %109 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %122 = add i64 %121, %92, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  %123 = icmp ugt i64 %122, %88, !dbg !157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  br i1 %123, label %124, label %91, !dbg !156, !llvm.loop !188

; <label>:124:                                    ; preds = %120, %80, %81, %116
  %125 = phi i8* [ %82, %81 ], [ %117, %116 ], [ null, %80 ], [ null, %120 ], !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #5, !dbg !192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !192
  br label %301, !dbg !193

; <label>:126:                                    ; preds = %11
  %127 = bitcast i64* %5 to i8*, !dbg !198
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %127) #5, !dbg !198
  %128 = bitcast [256 x i64]* %6 to i8*, !dbg !199
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %128) #5, !dbg !199
  %129 = call fastcc i64 @critical_factorization(i8* %2, i64 %3, i64* nonnull %5) #4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br label %130, !dbg !206

; <label>:130:                                    ; preds = %130, %126
  %131 = phi i64 [ 0, %126 ], [ %139, %130 ]
  %132 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %131, !dbg !207
  store i64 %3, i64* %132, align 16, !dbg !209, !tbaa !104
  %133 = or i64 %131, 1, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %134 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %133, !dbg !207
  store i64 %3, i64* %134, align 8, !dbg !209, !tbaa !104
  %135 = or i64 %131, 2, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %136 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %135, !dbg !207
  store i64 %3, i64* %136, align 16, !dbg !209, !tbaa !104
  %137 = or i64 %131, 3, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %138 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %137, !dbg !207
  store i64 %3, i64* %138, align 8, !dbg !209, !tbaa !104
  %139 = add nuw nsw i64 %131, 4, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  %140 = icmp eq i64 %139, 256, !dbg !212
  br i1 %140, label %141, label %130, !dbg !206, !llvm.loop !213

; <label>:141:                                    ; preds = %130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %142 = and i64 %3, 1, !dbg !218
  %143 = icmp eq i64 %3, 1, !dbg !218
  br i1 %143, label %165, label %144, !dbg !218

; <label>:144:                                    ; preds = %141
  %145 = sub i64 %3, %142, !dbg !218
  br label %146, !dbg !218

; <label>:146:                                    ; preds = %146, %144
  %147 = phi i64 [ 0, %144 ], [ %162, %146 ]
  %148 = phi i64 [ %145, %144 ], [ %163, %146 ]
  %149 = xor i64 %147, -1, !dbg !219
  %150 = add i64 %149, %3, !dbg !219
  %151 = getelementptr inbounds i8, i8* %2, i64 %147, !dbg !221
  %152 = load i8, i8* %151, align 1, !dbg !221, !tbaa !68
  %153 = zext i8 %152 to i64, !dbg !222
  %154 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %153, !dbg !222
  store i64 %150, i64* %154, align 8, !dbg !223, !tbaa !104
  %155 = or i64 %147, 1, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %156 = sub i64 -2, %147, !dbg !219
  %157 = add i64 %156, %3, !dbg !219
  %158 = getelementptr inbounds i8, i8* %2, i64 %155, !dbg !221
  %159 = load i8, i8* %158, align 1, !dbg !221, !tbaa !68
  %160 = zext i8 %159 to i64, !dbg !222
  %161 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %160, !dbg !222
  store i64 %157, i64* %161, align 8, !dbg !223, !tbaa !104
  %162 = add i64 %147, 2, !dbg !224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %163 = add i64 %148, -2, !dbg !218
  %164 = icmp eq i64 %163, 0, !dbg !218
  br i1 %164, label %165, label %146, !dbg !218, !llvm.loop !226

; <label>:165:                                    ; preds = %146, %141
  %166 = phi i64 [ 0, %141 ], [ %162, %146 ]
  %167 = icmp eq i64 %142, 0, !dbg !218
  br i1 %167, label %175, label %168, !dbg !218

; <label>:168:                                    ; preds = %165
  %169 = xor i64 %166, -1, !dbg !219
  %170 = add i64 %169, %3, !dbg !219
  %171 = getelementptr inbounds i8, i8* %2, i64 %166, !dbg !221
  %172 = load i8, i8* %171, align 1, !dbg !221, !tbaa !68
  %173 = zext i8 %172 to i64, !dbg !222
  %174 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %173, !dbg !222
  store i64 %170, i64* %174, align 8, !dbg !223, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br label %175, !dbg !229

; <label>:175:                                    ; preds = %165, %168
  %176 = load i64, i64* %5, align 8, !dbg !229, !tbaa !104
  %177 = getelementptr inbounds i8, i8* %2, i64 %176, !dbg !230
  %178 = tail call i32 @memcmp(i8* nonnull %2, i8* %177, i64 %129) #4, !dbg !231
  %179 = icmp eq i32 %178, 0, !dbg !232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !233
  br i1 %179, label %180, label %246, !dbg !233

; <label>:180:                                    ; preds = %175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  %181 = sub i64 %1, %3, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  %182 = add i64 %3, -1
  %183 = sub i64 %3, %176
  %184 = sub i64 1, %129
  br label %185, !dbg !236

; <label>:185:                                    ; preds = %200, %180
  %186 = phi i64 [ 0, %180 ], [ %202, %200 ]
  %187 = phi i64 [ 0, %180 ], [ %203, %200 ]
  %188 = add i64 %187, %182, !dbg !238
  %189 = getelementptr inbounds i8, i8* %0, i64 %188, !dbg !238
  %190 = load i8, i8* %189, align 1, !dbg !238, !tbaa !68
  %191 = zext i8 %190 to i64, !dbg !240
  %192 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %191, !dbg !240
  %193 = load i64, i64* %192, align 8, !dbg !240, !tbaa !104
  %194 = icmp eq i64 %193, 0, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %194, label %205, label %195, !dbg !244

; <label>:195:                                    ; preds = %185
  %196 = icmp eq i64 %186, 0, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !248
  br i1 %196, label %200, label %197, !dbg !248

; <label>:197:                                    ; preds = %195
  %198 = icmp ult i64 %193, %176, !dbg !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %198, label %199, label %200, !dbg !250

; <label>:199:                                    ; preds = %197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br label %200, !dbg !251

; <label>:200:                                    ; preds = %195, %197, %199, %241
  %201 = phi i64 [ %242, %241 ], [ %183, %199 ], [ %193, %197 ], [ %193, %195 ]
  %202 = phi i64 [ %243, %241 ], [ 0, %199 ], [ 0, %197 ], [ 0, %195 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  %203 = add i64 %201, %187, !dbg !254
  %204 = icmp ugt i64 %203, %181, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  br i1 %204, label %298, label %185, !dbg !236, !llvm.loop !257

; <label>:205:                                    ; preds = %185
  %206 = icmp ult i64 %129, %186, !dbg !260
  %207 = select i1 %206, i64 %186, i64 %129, !dbg !260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %208 = icmp ult i64 %207, %182, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %208, label %209, label %220, !dbg !263

; <label>:209:                                    ; preds = %205, %217
  %210 = phi i64 [ %218, %217 ], [ %207, %205 ]
  %211 = getelementptr inbounds i8, i8* %2, i64 %210, !dbg !264
  %212 = load i8, i8* %211, align 1, !dbg !264, !tbaa !68
  %213 = add i64 %210, %187, !dbg !265
  %214 = getelementptr inbounds i8, i8* %0, i64 %213, !dbg !265
  %215 = load i8, i8* %214, align 1, !dbg !265, !tbaa !68
  %216 = icmp eq i8 %212, %215, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %216, label %217, label %239, !dbg !261

; <label>:217:                                    ; preds = %209
  %218 = add nuw i64 %210, 1, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %219 = icmp ult i64 %218, %182, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %219, label %209, label %220, !dbg !263, !llvm.loop !268

; <label>:220:                                    ; preds = %217, %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %221 = icmp ult i64 %186, %129, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %221, label %222, label %233, !dbg !275

; <label>:222:                                    ; preds = %220, %231
  %223 = phi i64 [ %224, %231 ], [ %129, %220 ]
  %224 = add i64 %223, -1
  %225 = getelementptr inbounds i8, i8* %2, i64 %224, !dbg !276
  %226 = load i8, i8* %225, align 1, !dbg !276, !tbaa !68
  %227 = add i64 %224, %187, !dbg !277
  %228 = getelementptr inbounds i8, i8* %0, i64 %227, !dbg !277
  %229 = load i8, i8* %228, align 1, !dbg !277, !tbaa !68
  %230 = icmp eq i8 %226, %229, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br i1 %230, label %231, label %235, !dbg !272

; <label>:231:                                    ; preds = %222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  %232 = icmp ult i64 %186, %224, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %232, label %222, label %233, !dbg !275, !llvm.loop !279

; <label>:233:                                    ; preds = %231, %220
  %234 = phi i64 [ %129, %220 ], [ %224, %231 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !272
  br label %235

; <label>:235:                                    ; preds = %222, %233
  %236 = phi i64 [ %234, %233 ], [ %223, %222 ]
  %237 = add i64 %186, 1, !dbg !282
  %238 = icmp ult i64 %236, %237, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br i1 %238, label %244, label %241, !dbg !285

; <label>:239:                                    ; preds = %209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  %240 = add i64 %184, %210, !dbg !286
  br label %241

; <label>:241:                                    ; preds = %235, %239
  %242 = phi i64 [ %240, %239 ], [ %176, %235 ]
  %243 = phi i64 [ 0, %239 ], [ %183, %235 ], !dbg !254
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %200, !dbg !236

; <label>:244:                                    ; preds = %235
  %245 = getelementptr inbounds i8, i8* %0, i64 %187, !dbg !287
  br label %299

; <label>:246:                                    ; preds = %175
  %247 = sub i64 %3, %129, !dbg !288
  %248 = icmp ult i64 %129, %247, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  %249 = select i1 %248, i64 %247, i64 %129, !dbg !288
  %250 = add i64 %249, 1, !dbg !289
  store i64 %250, i64* %5, align 8, !dbg !290, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %251 = sub i64 %1, %3, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %252 = add i64 %3, -1
  %253 = icmp ult i64 %129, %252
  %254 = sub i64 1, %129
  br label %255, !dbg !291

; <label>:255:                                    ; preds = %264, %246
  %256 = phi i64 [ 0, %246 ], [ %266, %264 ]
  %257 = add i64 %256, %252, !dbg !293
  %258 = getelementptr inbounds i8, i8* %0, i64 %257, !dbg !293
  %259 = load i8, i8* %258, align 1, !dbg !293, !tbaa !68
  %260 = zext i8 %259 to i64, !dbg !295
  %261 = getelementptr inbounds [256 x i64], [256 x i64]* %6, i64 0, i64 %260, !dbg !295
  %262 = load i64, i64* %261, align 8, !dbg !295, !tbaa !104
  %263 = icmp eq i64 %262, 0, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br i1 %263, label %268, label %264, !dbg !299

; <label>:264:                                    ; preds = %294, %255
  %265 = phi i64 [ %295, %294 ], [ %262, %255 ]
  %266 = add i64 %265, %256, !dbg !302
  %267 = icmp ugt i64 %266, %251, !dbg !292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %267, label %298, label %255, !dbg !291, !llvm.loop !304

; <label>:268:                                    ; preds = %255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %253, label %269, label %280, !dbg !307

; <label>:269:                                    ; preds = %268, %277
  %270 = phi i64 [ %278, %277 ], [ %129, %268 ]
  %271 = getelementptr inbounds i8, i8* %2, i64 %270, !dbg !308
  %272 = load i8, i8* %271, align 1, !dbg !308, !tbaa !68
  %273 = add i64 %270, %256, !dbg !309
  %274 = getelementptr inbounds i8, i8* %0, i64 %273, !dbg !309
  %275 = load i8, i8* %274, align 1, !dbg !309, !tbaa !68
  %276 = icmp eq i8 %272, %275, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %276, label %277, label %292, !dbg !311

; <label>:277:                                    ; preds = %269
  %278 = add nuw i64 %270, 1, !dbg !312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  %279 = icmp ult i64 %278, %252, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  br i1 %279, label %269, label %280, !dbg !307, !llvm.loop !314

; <label>:280:                                    ; preds = %277, %268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br label %281, !dbg !318

; <label>:281:                                    ; preds = %285, %280
  %282 = phi i64 [ %129, %280 ], [ %283, %285 ]
  %283 = add i64 %282, -1, !dbg !320
  %284 = icmp eq i64 %282, 0, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %284, label %296, label %285, !dbg !322

; <label>:285:                                    ; preds = %281
  %286 = getelementptr inbounds i8, i8* %2, i64 %283, !dbg !323
  %287 = load i8, i8* %286, align 1, !dbg !323, !tbaa !68
  %288 = add i64 %283, %256, !dbg !324
  %289 = getelementptr inbounds i8, i8* %0, i64 %288, !dbg !324
  %290 = load i8, i8* %289, align 1, !dbg !324, !tbaa !68
  %291 = icmp eq i8 %287, %290, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %291, label %281, label %294, !dbg !318, !llvm.loop !326

; <label>:292:                                    ; preds = %269
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %293 = add i64 %254, %270, !dbg !329
  br label %294

; <label>:294:                                    ; preds = %285, %292
  %295 = phi i64 [ %293, %292 ], [ %250, %285 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br label %264, !dbg !291

; <label>:296:                                    ; preds = %281
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  %297 = getelementptr inbounds i8, i8* %0, i64 %256, !dbg !331
  br label %299

; <label>:298:                                    ; preds = %264, %200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !253
  br label %299, !dbg !333

; <label>:299:                                    ; preds = %244, %296, %298
  %300 = phi i8* [ null, %298 ], [ %245, %244 ], [ %297, %296 ], !dbg !334
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %128) #5, !dbg !335
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %127) #5, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br label %301, !dbg !336

; <label>:301:                                    ; preds = %20, %13, %9, %4, %299, %124
  %302 = phi i8* [ %125, %124 ], [ %300, %299 ], [ %0, %4 ], [ null, %9 ], [ %16, %13 ], [ null, %20 ], !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  ret i8* %302, !dbg !338
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i64 @critical_factorization(i8* nocapture readonly, i64, i64* nocapture) unnamed_addr #0 !dbg !339 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  %4 = icmp ugt i64 %1, 1, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %4, label %6, label %5, !dbg !361

; <label>:5:                                      ; preds = %3
  store i64 1, i64* %2, align 8, !dbg !363, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %69, !dbg !365

; <label>:6:                                      ; preds = %3, %30
  %7 = phi i64 [ %35, %30 ], [ 1, %3 ]
  %8 = phi i64 [ %34, %30 ], [ 1, %3 ]
  %9 = phi i64 [ %33, %30 ], [ 1, %3 ]
  %10 = phi i64 [ %32, %30 ], [ 0, %3 ]
  %11 = phi i64 [ %31, %30 ], [ -1, %3 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !366
  %13 = load i8, i8* %12, align 1, !dbg !366, !tbaa !68
  %14 = add i64 %9, %11, !dbg !369
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !369
  %16 = load i8, i8* %15, align 1, !dbg !369, !tbaa !68
  %17 = icmp ult i8 %13, %16, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %17, label %18, label %20, !dbg !373

; <label>:18:                                     ; preds = %6
  %19 = sub i64 %7, %11, !dbg !374
  br label %30, !dbg !376

; <label>:20:                                     ; preds = %6
  %21 = icmp eq i8 %13, %16, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %21, label %22, label %28, !dbg !379

; <label>:22:                                     ; preds = %20
  %23 = icmp eq i64 %9, %8, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %23, label %26, label %24, !dbg !383

; <label>:24:                                     ; preds = %22
  %25 = add i64 %9, 1, !dbg !384
  br label %30, !dbg !384

; <label>:26:                                     ; preds = %22
  %27 = add i64 %8, %10, !dbg !385
  br label %30

; <label>:28:                                     ; preds = %20
  %29 = add i64 %10, 1, !dbg !387
  br label %30

; <label>:30:                                     ; preds = %28, %26, %24, %18
  %31 = phi i64 [ %11, %18 ], [ %11, %24 ], [ %11, %26 ], [ %10, %28 ], !dbg !389
  %32 = phi i64 [ %7, %18 ], [ %10, %24 ], [ %27, %26 ], [ %29, %28 ], !dbg !389
  %33 = phi i64 [ 1, %18 ], [ %25, %24 ], [ 1, %26 ], [ 1, %28 ], !dbg !389
  %34 = phi i64 [ %19, %18 ], [ %8, %24 ], [ %8, %26 ], [ 1, %28 ], !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  %35 = add i64 %33, %32, !dbg !390
  %36 = icmp ult i64 %35, %1, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %36, label %6, label %37, !dbg !361, !llvm.loop !391

; <label>:37:                                     ; preds = %30
  store i64 %34, i64* %2, align 8, !dbg !363, !tbaa !104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %4, label %38, label %69, !dbg !365

; <label>:38:                                     ; preds = %37, %62
  %39 = phi i64 [ %67, %62 ], [ 1, %37 ]
  %40 = phi i64 [ %66, %62 ], [ 1, %37 ]
  %41 = phi i64 [ %65, %62 ], [ 1, %37 ]
  %42 = phi i64 [ %64, %62 ], [ 0, %37 ]
  %43 = phi i64 [ %63, %62 ], [ -1, %37 ]
  %44 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !393
  %45 = load i8, i8* %44, align 1, !dbg !393, !tbaa !68
  %46 = add i64 %41, %43, !dbg !395
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !395
  %48 = load i8, i8* %47, align 1, !dbg !395, !tbaa !68
  %49 = icmp ult i8 %48, %45, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  br i1 %49, label %50, label %52, !dbg !398

; <label>:50:                                     ; preds = %38
  %51 = sub i64 %39, %43, !dbg !399
  br label %62, !dbg !401

; <label>:52:                                     ; preds = %38
  %53 = icmp eq i8 %45, %48, !dbg !402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %53, label %54, label %60, !dbg !404

; <label>:54:                                     ; preds = %52
  %55 = icmp eq i64 %41, %40, !dbg !405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %55, label %58, label %56, !dbg !408

; <label>:56:                                     ; preds = %54
  %57 = add i64 %41, 1, !dbg !409
  br label %62, !dbg !409

; <label>:58:                                     ; preds = %54
  %59 = add i64 %40, %42, !dbg !410
  br label %62

; <label>:60:                                     ; preds = %52
  %61 = add i64 %42, 1, !dbg !412
  br label %62

; <label>:62:                                     ; preds = %60, %58, %56, %50
  %63 = phi i64 [ %43, %50 ], [ %43, %56 ], [ %43, %58 ], [ %42, %60 ], !dbg !414
  %64 = phi i64 [ %39, %50 ], [ %42, %56 ], [ %59, %58 ], [ %61, %60 ], !dbg !414
  %65 = phi i64 [ 1, %50 ], [ %57, %56 ], [ 1, %58 ], [ 1, %60 ], !dbg !414
  %66 = phi i64 [ %51, %50 ], [ %40, %56 ], [ %40, %58 ], [ 1, %60 ], !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %67 = add i64 %65, %64, !dbg !415
  %68 = icmp ult i64 %67, %1, !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %68, label %38, label %69, !dbg !365, !llvm.loop !417

; <label>:69:                                     ; preds = %62, %5, %37
  %70 = phi i64 [ %31, %37 ], [ -1, %5 ], [ %31, %62 ]
  %71 = phi i64 [ -1, %37 ], [ -1, %5 ], [ %63, %62 ], !dbg !419
  %72 = phi i64 [ 1, %37 ], [ 1, %5 ], [ %66, %62 ], !dbg !420
  %73 = add i64 %71, 1, !dbg !421
  %74 = add i64 %70, 1, !dbg !423
  %75 = icmp ult i64 %73, %74, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !425
  br i1 %75, label %77, label %76, !dbg !425

; <label>:76:                                     ; preds = %69
  store i64 %72, i64* %2, align 8, !dbg !426, !tbaa !104
  br label %77, !dbg !427

; <label>:77:                                     ; preds = %69, %76
  %78 = phi i64 [ %73, %76 ], [ %74, %69 ], !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  ret i64 %78, !dbg !430
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/memmem.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !7, !8}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !9, line: 40, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !11, line: 129, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "memmem", scope: !1, file: !1, line: 49, type: !18, isLocal: false, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!18 = !DISubroutineType(types: !19)
!19 = !{!7, !20, !8, !20, !8}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!22 = !{!23, !24, !25, !26, !27, !28}
!23 = !DILocalVariable(name: "haystack_start", arg: 1, scope: !17, file: !1, line: 49, type: !20)
!24 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !17, file: !1, line: 49, type: !8)
!25 = !DILocalVariable(name: "needle_start", arg: 3, scope: !17, file: !1, line: 49, type: !20)
!26 = !DILocalVariable(name: "needle_len", arg: 4, scope: !17, file: !1, line: 49, type: !8)
!27 = !DILocalVariable(name: "haystack", scope: !17, file: !1, line: 57, type: !4)
!28 = !DILocalVariable(name: "needle", scope: !17, file: !1, line: 58, type: !4)
!29 = !DILocalVariable(name: "shift_table", scope: !30, file: !31, line: 299, type: !49)
!30 = distinct !DISubprogram(name: "two_way_long_needle", scope: !31, file: !31, line: 292, type: !32, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !34)
!31 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/str-two-way.h", directory: "/root/.unikraft/apps/redis/build")
!32 = !DISubroutineType(types: !33)
!33 = !{!7, !4, !8, !4, !8}
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !29, !43, !46, !47}
!35 = !DILocalVariable(name: "haystack", arg: 1, scope: !30, file: !31, line: 292, type: !4)
!36 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !30, file: !31, line: 292, type: !8)
!37 = !DILocalVariable(name: "needle", arg: 3, scope: !30, file: !31, line: 293, type: !4)
!38 = !DILocalVariable(name: "needle_len", arg: 4, scope: !30, file: !31, line: 293, type: !8)
!39 = !DILocalVariable(name: "i", scope: !30, file: !31, line: 295, type: !8)
!40 = !DILocalVariable(name: "j", scope: !30, file: !31, line: 296, type: !8)
!41 = !DILocalVariable(name: "period", scope: !30, file: !31, line: 297, type: !8)
!42 = !DILocalVariable(name: "suffix", scope: !30, file: !31, line: 298, type: !8)
!43 = !DILocalVariable(name: "memory", scope: !44, file: !31, line: 322, type: !8)
!44 = distinct !DILexicalBlock(scope: !45, file: !31, line: 318, column: 5)
!45 = distinct !DILexicalBlock(scope: !30, file: !31, line: 317, column: 7)
!46 = !DILocalVariable(name: "shift", scope: !44, file: !31, line: 323, type: !8)
!47 = !DILocalVariable(name: "shift", scope: !48, file: !31, line: 374, type: !8)
!48 = distinct !DILexicalBlock(scope: !45, file: !31, line: 371, column: 5)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16384, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 256)
!52 = !DILocation(line: 299, column: 10, scope: !30, inlinedAt: !53)
!53 = distinct !DILocation(line: 100, column: 10, scope: !17)
!54 = !DILocation(line: 49, column: 1, scope: !17)
!55 = !DILocation(line: 57, column: 24, scope: !17)
!56 = !DILocation(line: 58, column: 24, scope: !17)
!57 = !DILocation(line: 60, column: 18, scope: !58)
!58 = distinct !DILexicalBlock(scope: !17, file: !1, line: 60, column: 7)
!59 = !DILocation(line: 60, column: 7, scope: !17)
!60 = !DILocation(line: 83, column: 20, scope: !61)
!61 = distinct !DILexicalBlock(scope: !17, file: !1, line: 83, column: 7)
!62 = !DILocation(line: 83, column: 7, scope: !17)
!63 = !DILocation(line: 90, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !17, file: !1, line: 90, column: 7)
!65 = !DILocation(line: 90, column: 7, scope: !17)
!66 = !DILocation(line: 92, column: 36, scope: !67)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 91, column: 5)
!68 = !{!69, !69, i64 0}
!69 = !{!"omnipotent char", !70, i64 0}
!70 = !{!"Simple C/C++ TBAA"}
!71 = !DILocation(line: 92, column: 18, scope: !67)
!72 = !DILocation(line: 93, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !67, file: !1, line: 93, column: 11)
!74 = !DILocation(line: 93, column: 35, scope: !73)
!75 = !DILocation(line: 93, column: 21, scope: !73)
!76 = !DILocation(line: 95, column: 32, scope: !67)
!77 = !DILocation(line: 95, column: 20, scope: !67)
!78 = !DILocation(line: 96, column: 24, scope: !79)
!79 = distinct !DILexicalBlock(scope: !67, file: !1, line: 96, column: 11)
!80 = !DILocation(line: 96, column: 11, scope: !67)
!81 = !DILocalVariable(name: "haystack", arg: 1, scope: !82, file: !31, line: 198, type: !4)
!82 = distinct !DISubprogram(name: "two_way_short_needle", scope: !31, file: !31, line: 198, type: !32, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !83)
!83 = !{!81, !84, !85, !86, !87, !88, !89, !90, !91}
!84 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !82, file: !31, line: 198, type: !8)
!85 = !DILocalVariable(name: "needle", arg: 3, scope: !82, file: !31, line: 199, type: !4)
!86 = !DILocalVariable(name: "needle_len", arg: 4, scope: !82, file: !31, line: 199, type: !8)
!87 = !DILocalVariable(name: "i", scope: !82, file: !31, line: 201, type: !8)
!88 = !DILocalVariable(name: "j", scope: !82, file: !31, line: 202, type: !8)
!89 = !DILocalVariable(name: "period", scope: !82, file: !31, line: 203, type: !8)
!90 = !DILocalVariable(name: "suffix", scope: !82, file: !31, line: 204, type: !8)
!91 = !DILocalVariable(name: "memory", scope: !92, file: !31, line: 218, type: !8)
!92 = distinct !DILexicalBlock(scope: !93, file: !31, line: 214, column: 5)
!93 = distinct !DILexicalBlock(scope: !82, file: !31, line: 213, column: 7)
!94 = !DILocation(line: 198, column: 44, scope: !82, inlinedAt: !95)
!95 = distinct !DILocation(line: 98, column: 14, scope: !67)
!96 = !DILocation(line: 198, column: 61, scope: !82, inlinedAt: !95)
!97 = !DILocation(line: 199, column: 30, scope: !82, inlinedAt: !95)
!98 = !DILocation(line: 199, column: 45, scope: !82, inlinedAt: !95)
!99 = !DILocation(line: 203, column: 3, scope: !82, inlinedAt: !95)
!100 = !DILocation(line: 203, column: 10, scope: !82, inlinedAt: !95)
!101 = !DILocation(line: 209, column: 12, scope: !82, inlinedAt: !95)
!102 = !DILocation(line: 204, column: 10, scope: !82, inlinedAt: !95)
!103 = !DILocation(line: 213, column: 34, scope: !93, inlinedAt: !95)
!104 = !{!105, !105, i64 0}
!105 = !{!"long", !69, i64 0}
!106 = !DILocation(line: 213, column: 32, scope: !93, inlinedAt: !95)
!107 = !DILocation(line: 213, column: 7, scope: !93, inlinedAt: !95)
!108 = !DILocation(line: 213, column: 50, scope: !93, inlinedAt: !95)
!109 = !DILocation(line: 213, column: 7, scope: !82, inlinedAt: !95)
!110 = !DILocation(line: 218, column: 14, scope: !92, inlinedAt: !95)
!111 = !DILocation(line: 202, column: 10, scope: !82, inlinedAt: !95)
!112 = !DILocation(line: 220, column: 7, scope: !92, inlinedAt: !95)
!113 = !DILocation(line: 220, column: 14, scope: !92, inlinedAt: !95)
!114 = !DILocation(line: 223, column: 8, scope: !115, inlinedAt: !95)
!115 = distinct !DILexicalBlock(scope: !92, file: !31, line: 221, column: 2)
!116 = !DILocation(line: 201, column: 10, scope: !82, inlinedAt: !95)
!117 = !DILocation(line: 224, column: 4, scope: !115, inlinedAt: !95)
!118 = !DILocation(line: 224, column: 13, scope: !115, inlinedAt: !95)
!119 = !DILocation(line: 224, column: 26, scope: !115, inlinedAt: !95)
!120 = !DILocation(line: 224, column: 30, scope: !115, inlinedAt: !95)
!121 = !DILocation(line: 225, column: 12, scope: !115, inlinedAt: !95)
!122 = !DILocation(line: 225, column: 9, scope: !115, inlinedAt: !95)
!123 = !DILocation(line: 226, column: 6, scope: !115, inlinedAt: !95)
!124 = distinct !{!124, !125, !126}
!125 = !DILocation(line: 224, column: 4, scope: !115)
!126 = !DILocation(line: 226, column: 8, scope: !115)
!127 = !DILocation(line: 227, column: 8, scope: !115, inlinedAt: !95)
!128 = !DILocation(line: 231, column: 8, scope: !129, inlinedAt: !95)
!129 = distinct !DILexicalBlock(scope: !130, file: !31, line: 228, column: 6)
!130 = distinct !DILexicalBlock(scope: !115, file: !31, line: 227, column: 8)
!131 = !DILocation(line: 231, column: 22, scope: !129, inlinedAt: !95)
!132 = !DILocation(line: 231, column: 30, scope: !129, inlinedAt: !95)
!133 = !DILocation(line: 231, column: 34, scope: !129, inlinedAt: !95)
!134 = !DILocation(line: 232, column: 9, scope: !129, inlinedAt: !95)
!135 = !DILocation(line: 232, column: 6, scope: !129, inlinedAt: !95)
!136 = distinct !{!136, !137, !138}
!137 = !DILocation(line: 231, column: 8, scope: !129)
!138 = !DILocation(line: 233, column: 5, scope: !129)
!139 = !DILocation(line: 234, column: 27, scope: !140, inlinedAt: !95)
!140 = distinct !DILexicalBlock(scope: !129, file: !31, line: 234, column: 12)
!141 = !DILocation(line: 234, column: 18, scope: !140, inlinedAt: !95)
!142 = !DILocation(line: 234, column: 12, scope: !129, inlinedAt: !95)
!143 = !DILocation(line: 243, column: 24, scope: !144, inlinedAt: !95)
!144 = distinct !DILexicalBlock(scope: !130, file: !31, line: 242, column: 6)
!145 = !DILocation(line: 0, scope: !144, inlinedAt: !95)
!146 = distinct !{!146, !147, !148}
!147 = !DILocation(line: 220, column: 7, scope: !92)
!148 = !DILocation(line: 246, column: 2, scope: !92)
!149 = !DILocation(line: 247, column: 5, scope: !93, inlinedAt: !95)
!150 = !DILocation(line: 235, column: 34, scope: !140, inlinedAt: !95)
!151 = !DILocation(line: 235, column: 3, scope: !140, inlinedAt: !95)
!152 = !DILocation(line: 252, column: 16, scope: !153, inlinedAt: !95)
!153 = distinct !DILexicalBlock(scope: !93, file: !31, line: 249, column: 5)
!154 = !DILocation(line: 252, column: 50, scope: !153, inlinedAt: !95)
!155 = !DILocation(line: 252, column: 14, scope: !153, inlinedAt: !95)
!156 = !DILocation(line: 254, column: 7, scope: !153, inlinedAt: !95)
!157 = !DILocation(line: 254, column: 14, scope: !153, inlinedAt: !95)
!158 = !DILocation(line: 258, column: 4, scope: !159, inlinedAt: !95)
!159 = distinct !DILexicalBlock(scope: !153, file: !31, line: 255, column: 2)
!160 = !DILocation(line: 258, column: 26, scope: !159, inlinedAt: !95)
!161 = !DILocation(line: 258, column: 30, scope: !159, inlinedAt: !95)
!162 = !DILocation(line: 259, column: 12, scope: !159, inlinedAt: !95)
!163 = !DILocation(line: 259, column: 9, scope: !159, inlinedAt: !95)
!164 = !DILocation(line: 260, column: 6, scope: !159, inlinedAt: !95)
!165 = !DILocation(line: 258, column: 13, scope: !159, inlinedAt: !95)
!166 = distinct !{!166, !167, !168}
!167 = !DILocation(line: 258, column: 4, scope: !159)
!168 = !DILocation(line: 260, column: 8, scope: !159)
!169 = !DILocation(line: 261, column: 8, scope: !159, inlinedAt: !95)
!170 = !DILocation(line: 265, column: 8, scope: !171, inlinedAt: !95)
!171 = distinct !DILexicalBlock(scope: !172, file: !31, line: 262, column: 6)
!172 = distinct !DILexicalBlock(scope: !159, file: !31, line: 261, column: 8)
!173 = !DILocation(line: 0, scope: !171, inlinedAt: !95)
!174 = !DILocation(line: 265, column: 17, scope: !171, inlinedAt: !95)
!175 = !DILocation(line: 265, column: 29, scope: !171, inlinedAt: !95)
!176 = !DILocation(line: 265, column: 33, scope: !171, inlinedAt: !95)
!177 = !DILocation(line: 266, column: 15, scope: !171, inlinedAt: !95)
!178 = !DILocation(line: 266, column: 12, scope: !171, inlinedAt: !95)
!179 = distinct !{!179, !180, !181}
!180 = !DILocation(line: 265, column: 8, scope: !171)
!181 = !DILocation(line: 267, column: 5, scope: !171)
!182 = !DILocation(line: 268, column: 12, scope: !171, inlinedAt: !95)
!183 = !DILocation(line: 269, column: 34, scope: !184, inlinedAt: !95)
!184 = distinct !DILexicalBlock(scope: !171, file: !31, line: 268, column: 12)
!185 = !DILocation(line: 269, column: 3, scope: !184, inlinedAt: !95)
!186 = !DILocation(line: 273, column: 22, scope: !172, inlinedAt: !95)
!187 = !DILocation(line: 0, scope: !172, inlinedAt: !95)
!188 = distinct !{!188, !189, !190}
!189 = !DILocation(line: 254, column: 7, scope: !153)
!190 = !DILocation(line: 274, column: 2, scope: !153)
!191 = !DILocation(line: 0, scope: !184, inlinedAt: !95)
!192 = !DILocation(line: 277, column: 1, scope: !82, inlinedAt: !95)
!193 = !DILocation(line: 98, column: 7, scope: !67)
!194 = !DILocation(line: 292, column: 43, scope: !30, inlinedAt: !53)
!195 = !DILocation(line: 292, column: 60, scope: !30, inlinedAt: !53)
!196 = !DILocation(line: 293, column: 29, scope: !30, inlinedAt: !53)
!197 = !DILocation(line: 293, column: 44, scope: !30, inlinedAt: !53)
!198 = !DILocation(line: 297, column: 3, scope: !30, inlinedAt: !53)
!199 = !DILocation(line: 299, column: 3, scope: !30, inlinedAt: !53)
!200 = !DILocation(line: 297, column: 10, scope: !30, inlinedAt: !53)
!201 = !DILocation(line: 304, column: 12, scope: !30, inlinedAt: !53)
!202 = !DILocation(line: 298, column: 10, scope: !30, inlinedAt: !53)
!203 = !DILocation(line: 295, column: 10, scope: !30, inlinedAt: !53)
!204 = !DILocation(line: 310, column: 8, scope: !205, inlinedAt: !53)
!205 = distinct !DILexicalBlock(scope: !30, file: !31, line: 310, column: 3)
!206 = !DILocation(line: 310, column: 3, scope: !205, inlinedAt: !53)
!207 = !DILocation(line: 311, column: 5, scope: !208, inlinedAt: !53)
!208 = distinct !DILexicalBlock(scope: !205, file: !31, line: 310, column: 3)
!209 = !DILocation(line: 311, column: 20, scope: !208, inlinedAt: !53)
!210 = !DILocation(line: 310, column: 36, scope: !208, inlinedAt: !53)
!211 = !DILocation(line: 310, column: 3, scope: !208, inlinedAt: !53)
!212 = !DILocation(line: 310, column: 17, scope: !208, inlinedAt: !53)
!213 = distinct !{!213, !214, !215}
!214 = !DILocation(line: 310, column: 3, scope: !205)
!215 = !DILocation(line: 311, column: 22, scope: !205)
!216 = !DILocation(line: 312, column: 8, scope: !217, inlinedAt: !53)
!217 = distinct !DILexicalBlock(scope: !30, file: !31, line: 312, column: 3)
!218 = !DILocation(line: 312, column: 3, scope: !217, inlinedAt: !53)
!219 = !DILocation(line: 313, column: 61, scope: !220, inlinedAt: !53)
!220 = distinct !DILexicalBlock(scope: !217, file: !31, line: 312, column: 3)
!221 = !DILocation(line: 313, column: 17, scope: !220, inlinedAt: !53)
!222 = !DILocation(line: 313, column: 5, scope: !220, inlinedAt: !53)
!223 = !DILocation(line: 313, column: 44, scope: !220, inlinedAt: !53)
!224 = !DILocation(line: 312, column: 32, scope: !220, inlinedAt: !53)
!225 = !DILocation(line: 312, column: 3, scope: !220, inlinedAt: !53)
!226 = distinct !{!226, !227, !228}
!227 = !DILocation(line: 312, column: 3, scope: !217)
!228 = !DILocation(line: 313, column: 63, scope: !217)
!229 = !DILocation(line: 317, column: 34, scope: !45, inlinedAt: !53)
!230 = !DILocation(line: 317, column: 32, scope: !45, inlinedAt: !53)
!231 = !DILocation(line: 317, column: 7, scope: !45, inlinedAt: !53)
!232 = !DILocation(line: 317, column: 50, scope: !45, inlinedAt: !53)
!233 = !DILocation(line: 317, column: 7, scope: !30, inlinedAt: !53)
!234 = !DILocation(line: 322, column: 14, scope: !44, inlinedAt: !53)
!235 = !DILocation(line: 296, column: 10, scope: !30, inlinedAt: !53)
!236 = !DILocation(line: 325, column: 7, scope: !44, inlinedAt: !53)
!237 = !DILocation(line: 325, column: 14, scope: !44, inlinedAt: !53)
!238 = !DILocation(line: 329, column: 24, scope: !239, inlinedAt: !53)
!239 = distinct !DILexicalBlock(scope: !44, file: !31, line: 326, column: 2)
!240 = !DILocation(line: 329, column: 12, scope: !239, inlinedAt: !53)
!241 = !DILocation(line: 323, column: 14, scope: !44, inlinedAt: !53)
!242 = !DILocation(line: 330, column: 10, scope: !243, inlinedAt: !53)
!243 = distinct !DILexicalBlock(scope: !239, file: !31, line: 330, column: 8)
!244 = !DILocation(line: 330, column: 8, scope: !239, inlinedAt: !53)
!245 = !DILocation(line: 332, column: 12, scope: !246, inlinedAt: !53)
!246 = distinct !DILexicalBlock(scope: !247, file: !31, line: 332, column: 12)
!247 = distinct !DILexicalBlock(scope: !243, file: !31, line: 331, column: 6)
!248 = !DILocation(line: 332, column: 19, scope: !246, inlinedAt: !53)
!249 = !DILocation(line: 332, column: 28, scope: !246, inlinedAt: !53)
!250 = !DILocation(line: 332, column: 12, scope: !247, inlinedAt: !53)
!251 = !DILocation(line: 338, column: 3, scope: !252, inlinedAt: !53)
!252 = distinct !DILexicalBlock(scope: !246, file: !31, line: 333, column: 3)
!253 = !DILocation(line: 0, scope: !17)
!254 = !DILocation(line: 0, scope: !255, inlinedAt: !53)
!255 = distinct !DILexicalBlock(scope: !256, file: !31, line: 364, column: 6)
!256 = distinct !DILexicalBlock(scope: !239, file: !31, line: 349, column: 8)
!257 = distinct !{!257, !258, !259}
!258 = !DILocation(line: 325, column: 7, scope: !44)
!259 = !DILocation(line: 368, column: 2, scope: !44)
!260 = !DILocation(line: 345, column: 8, scope: !239, inlinedAt: !53)
!261 = !DILocation(line: 346, column: 4, scope: !239, inlinedAt: !53)
!262 = !DILocation(line: 346, column: 13, scope: !239, inlinedAt: !53)
!263 = !DILocation(line: 346, column: 30, scope: !239, inlinedAt: !53)
!264 = !DILocation(line: 346, column: 34, scope: !239, inlinedAt: !53)
!265 = !DILocation(line: 347, column: 9, scope: !239, inlinedAt: !53)
!266 = !DILocation(line: 347, column: 6, scope: !239, inlinedAt: !53)
!267 = !DILocation(line: 348, column: 6, scope: !239, inlinedAt: !53)
!268 = distinct !{!268, !269, !270}
!269 = !DILocation(line: 346, column: 4, scope: !239)
!270 = !DILocation(line: 348, column: 8, scope: !239)
!271 = !DILocation(line: 349, column: 8, scope: !239, inlinedAt: !53)
!272 = !DILocation(line: 353, column: 8, scope: !273, inlinedAt: !53)
!273 = distinct !DILexicalBlock(scope: !256, file: !31, line: 350, column: 6)
!274 = !DILocation(line: 353, column: 22, scope: !273, inlinedAt: !53)
!275 = !DILocation(line: 353, column: 30, scope: !273, inlinedAt: !53)
!276 = !DILocation(line: 353, column: 34, scope: !273, inlinedAt: !53)
!277 = !DILocation(line: 354, column: 9, scope: !273, inlinedAt: !53)
!278 = !DILocation(line: 354, column: 6, scope: !273, inlinedAt: !53)
!279 = distinct !{!279, !280, !281}
!280 = !DILocation(line: 353, column: 8, scope: !273)
!281 = !DILocation(line: 355, column: 5, scope: !273)
!282 = !DILocation(line: 356, column: 27, scope: !283, inlinedAt: !53)
!283 = distinct !DILexicalBlock(scope: !273, file: !31, line: 356, column: 12)
!284 = !DILocation(line: 356, column: 18, scope: !283, inlinedAt: !53)
!285 = !DILocation(line: 356, column: 12, scope: !273, inlinedAt: !53)
!286 = !DILocation(line: 365, column: 24, scope: !255, inlinedAt: !53)
!287 = !DILocation(line: 357, column: 34, scope: !283, inlinedAt: !53)
!288 = !DILocation(line: 375, column: 16, scope: !48, inlinedAt: !53)
!289 = !DILocation(line: 375, column: 50, scope: !48, inlinedAt: !53)
!290 = !DILocation(line: 375, column: 14, scope: !48, inlinedAt: !53)
!291 = !DILocation(line: 377, column: 7, scope: !48, inlinedAt: !53)
!292 = !DILocation(line: 377, column: 14, scope: !48, inlinedAt: !53)
!293 = !DILocation(line: 381, column: 24, scope: !294, inlinedAt: !53)
!294 = distinct !DILexicalBlock(scope: !48, file: !31, line: 378, column: 2)
!295 = !DILocation(line: 381, column: 12, scope: !294, inlinedAt: !53)
!296 = !DILocation(line: 374, column: 14, scope: !48, inlinedAt: !53)
!297 = !DILocation(line: 382, column: 10, scope: !298, inlinedAt: !53)
!298 = distinct !DILexicalBlock(scope: !294, file: !31, line: 382, column: 8)
!299 = !DILocation(line: 382, column: 8, scope: !294, inlinedAt: !53)
!300 = !DILocation(line: 0, scope: !301, inlinedAt: !53)
!301 = distinct !DILexicalBlock(scope: !298, file: !31, line: 383, column: 6)
!302 = !DILocation(line: 0, scope: !303, inlinedAt: !53)
!303 = distinct !DILexicalBlock(scope: !294, file: !31, line: 393, column: 8)
!304 = distinct !{!304, !305, !306}
!305 = !DILocation(line: 377, column: 7, scope: !48)
!306 = !DILocation(line: 406, column: 2, scope: !48)
!307 = !DILocation(line: 390, column: 30, scope: !294, inlinedAt: !53)
!308 = !DILocation(line: 390, column: 34, scope: !294, inlinedAt: !53)
!309 = !DILocation(line: 391, column: 9, scope: !294, inlinedAt: !53)
!310 = !DILocation(line: 391, column: 6, scope: !294, inlinedAt: !53)
!311 = !DILocation(line: 390, column: 4, scope: !294, inlinedAt: !53)
!312 = !DILocation(line: 392, column: 6, scope: !294, inlinedAt: !53)
!313 = !DILocation(line: 390, column: 13, scope: !294, inlinedAt: !53)
!314 = distinct !{!314, !315, !316}
!315 = !DILocation(line: 390, column: 4, scope: !294)
!316 = !DILocation(line: 392, column: 8, scope: !294)
!317 = !DILocation(line: 393, column: 8, scope: !294, inlinedAt: !53)
!318 = !DILocation(line: 397, column: 8, scope: !319, inlinedAt: !53)
!319 = distinct !DILexicalBlock(scope: !303, file: !31, line: 394, column: 6)
!320 = !DILocation(line: 0, scope: !319, inlinedAt: !53)
!321 = !DILocation(line: 397, column: 17, scope: !319, inlinedAt: !53)
!322 = !DILocation(line: 397, column: 29, scope: !319, inlinedAt: !53)
!323 = !DILocation(line: 397, column: 33, scope: !319, inlinedAt: !53)
!324 = !DILocation(line: 398, column: 15, scope: !319, inlinedAt: !53)
!325 = !DILocation(line: 398, column: 12, scope: !319, inlinedAt: !53)
!326 = distinct !{!326, !327, !328}
!327 = !DILocation(line: 397, column: 8, scope: !319)
!328 = !DILocation(line: 399, column: 5, scope: !319)
!329 = !DILocation(line: 405, column: 22, scope: !303, inlinedAt: !53)
!330 = !DILocation(line: 400, column: 12, scope: !319, inlinedAt: !53)
!331 = !DILocation(line: 401, column: 34, scope: !332, inlinedAt: !53)
!332 = distinct !DILexicalBlock(scope: !319, file: !31, line: 400, column: 12)
!333 = !DILocation(line: 408, column: 3, scope: !30, inlinedAt: !53)
!334 = !DILocation(line: 0, scope: !332, inlinedAt: !53)
!335 = !DILocation(line: 409, column: 1, scope: !30, inlinedAt: !53)
!336 = !DILocation(line: 100, column: 3, scope: !17)
!337 = !DILocation(line: 0, scope: !58)
!338 = !DILocation(line: 102, column: 1, scope: !17)
!339 = distinct !DISubprogram(name: "critical_factorization", scope: !31, file: !31, line: 91, type: !340, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !343)
!340 = !DISubroutineType(types: !341)
!341 = !{!8, !4, !8, !342}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!343 = !{!344, !345, !346, !347, !348, !349, !350, !351, !352, !353}
!344 = !DILocalVariable(name: "needle", arg: 1, scope: !339, file: !31, line: 91, type: !4)
!345 = !DILocalVariable(name: "needle_len", arg: 2, scope: !339, file: !31, line: 91, type: !8)
!346 = !DILocalVariable(name: "period", arg: 3, scope: !339, file: !31, line: 92, type: !342)
!347 = !DILocalVariable(name: "max_suffix", scope: !339, file: !31, line: 95, type: !8)
!348 = !DILocalVariable(name: "max_suffix_rev", scope: !339, file: !31, line: 95, type: !8)
!349 = !DILocalVariable(name: "j", scope: !339, file: !31, line: 96, type: !8)
!350 = !DILocalVariable(name: "k", scope: !339, file: !31, line: 97, type: !8)
!351 = !DILocalVariable(name: "p", scope: !339, file: !31, line: 98, type: !8)
!352 = !DILocalVariable(name: "a", scope: !339, file: !31, line: 99, type: !6)
!353 = !DILocalVariable(name: "b", scope: !339, file: !31, line: 99, type: !6)
!354 = !DILocation(line: 91, column: 46, scope: !339)
!355 = !DILocation(line: 91, column: 61, scope: !339)
!356 = !DILocation(line: 92, column: 12, scope: !339)
!357 = !DILocation(line: 95, column: 10, scope: !339)
!358 = !DILocation(line: 96, column: 10, scope: !339)
!359 = !DILocation(line: 98, column: 10, scope: !339)
!360 = !DILocation(line: 97, column: 10, scope: !339)
!361 = !DILocation(line: 114, column: 3, scope: !339)
!362 = !DILocation(line: 114, column: 16, scope: !339)
!363 = !DILocation(line: 143, column: 11, scope: !339)
!364 = !DILocation(line: 95, column: 22, scope: !339)
!365 = !DILocation(line: 149, column: 3, scope: !339)
!366 = !DILocation(line: 116, column: 11, scope: !367)
!367 = distinct !DILexicalBlock(scope: !339, file: !31, line: 115, column: 5)
!368 = !DILocation(line: 99, column: 17, scope: !339)
!369 = !DILocation(line: 117, column: 11, scope: !367)
!370 = !DILocation(line: 99, column: 20, scope: !339)
!371 = !DILocation(line: 118, column: 13, scope: !372)
!372 = distinct !DILexicalBlock(scope: !367, file: !31, line: 118, column: 11)
!373 = !DILocation(line: 118, column: 11, scope: !367)
!374 = !DILocation(line: 123, column: 10, scope: !375)
!375 = distinct !DILexicalBlock(scope: !372, file: !31, line: 119, column: 2)
!376 = !DILocation(line: 124, column: 2, scope: !375)
!377 = !DILocation(line: 125, column: 18, scope: !378)
!378 = distinct !DILexicalBlock(scope: !372, file: !31, line: 125, column: 16)
!379 = !DILocation(line: 125, column: 16, scope: !372)
!380 = !DILocation(line: 128, column: 10, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !31, line: 128, column: 8)
!382 = distinct !DILexicalBlock(scope: !378, file: !31, line: 126, column: 2)
!383 = !DILocation(line: 128, column: 8, scope: !382)
!384 = !DILocation(line: 129, column: 6, scope: !381)
!385 = !DILocation(line: 132, column: 10, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !31, line: 131, column: 6)
!387 = !DILocation(line: 139, column: 18, scope: !388)
!388 = distinct !DILexicalBlock(scope: !378, file: !31, line: 137, column: 2)
!389 = !DILocation(line: 0, scope: !388)
!390 = !DILocation(line: 114, column: 12, scope: !339)
!391 = distinct !{!391, !361, !392}
!392 = !DILocation(line: 142, column: 5, scope: !339)
!393 = !DILocation(line: 151, column: 11, scope: !394)
!394 = distinct !DILexicalBlock(scope: !339, file: !31, line: 150, column: 5)
!395 = !DILocation(line: 152, column: 11, scope: !394)
!396 = !DILocation(line: 153, column: 13, scope: !397)
!397 = distinct !DILexicalBlock(scope: !394, file: !31, line: 153, column: 11)
!398 = !DILocation(line: 153, column: 11, scope: !394)
!399 = !DILocation(line: 158, column: 10, scope: !400)
!400 = distinct !DILexicalBlock(scope: !397, file: !31, line: 154, column: 2)
!401 = !DILocation(line: 159, column: 2, scope: !400)
!402 = !DILocation(line: 160, column: 18, scope: !403)
!403 = distinct !DILexicalBlock(scope: !397, file: !31, line: 160, column: 16)
!404 = !DILocation(line: 160, column: 16, scope: !397)
!405 = !DILocation(line: 163, column: 10, scope: !406)
!406 = distinct !DILexicalBlock(scope: !407, file: !31, line: 163, column: 8)
!407 = distinct !DILexicalBlock(scope: !403, file: !31, line: 161, column: 2)
!408 = !DILocation(line: 163, column: 8, scope: !407)
!409 = !DILocation(line: 164, column: 6, scope: !406)
!410 = !DILocation(line: 167, column: 10, scope: !411)
!411 = distinct !DILexicalBlock(scope: !406, file: !31, line: 166, column: 6)
!412 = !DILocation(line: 174, column: 22, scope: !413)
!413 = distinct !DILexicalBlock(scope: !403, file: !31, line: 172, column: 2)
!414 = !DILocation(line: 0, scope: !413)
!415 = !DILocation(line: 149, column: 12, scope: !339)
!416 = !DILocation(line: 149, column: 16, scope: !339)
!417 = distinct !{!417, !365, !418}
!418 = !DILocation(line: 177, column: 5, scope: !339)
!419 = !DILocation(line: 146, column: 18, scope: !339)
!420 = !DILocation(line: 0, scope: !400)
!421 = !DILocation(line: 181, column: 22, scope: !422)
!422 = distinct !DILexicalBlock(scope: !339, file: !31, line: 181, column: 7)
!423 = !DILocation(line: 181, column: 39, scope: !422)
!424 = !DILocation(line: 181, column: 26, scope: !422)
!425 = !DILocation(line: 181, column: 7, scope: !339)
!426 = !DILocation(line: 183, column: 11, scope: !339)
!427 = !DILocation(line: 184, column: 3, scope: !339)
!428 = !DILocation(line: 0, scope: !339)
!429 = !DILocation(line: 0, scope: !422)
!430 = !DILocation(line: 185, column: 1, scope: !339)
