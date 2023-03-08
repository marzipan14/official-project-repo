; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @strstr(i8*, i8*) local_unnamed_addr #0 !dbg !18 {
  %3 = alloca i64, align 8
  %4 = alloca [256 x i64], align 16
  %5 = alloca i64, align 8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  %6 = load i8, i8* %0, align 1, !dbg !62, !tbaa !63
  %7 = icmp eq i8 %6, 0, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %8 = load i8, i8* %1, align 1, !dbg !67, !tbaa !63
  %9 = icmp eq i8 %8, 0, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %7, label %28, label %10, !dbg !66

; <label>:10:                                     ; preds = %2, %18
  %11 = phi i1 [ %27, %18 ], [ %9, %2 ]
  %12 = phi i8 [ %26, %18 ], [ %8, %2 ]
  %13 = phi i8 [ %24, %18 ], [ %6, %2 ]
  %14 = phi i32 [ %23, %18 ], [ 1, %2 ]
  %15 = phi i8* [ %19, %18 ], [ %0, %2 ]
  %16 = phi i8* [ %20, %18 ], [ %1, %2 ]
  br i1 %11, label %17, label %18, !dbg !61

; <label>:17:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !68
  br label %32, !dbg !68

; <label>:18:                                     ; preds = %10
  %19 = getelementptr inbounds i8, i8* %15, i64 1, !dbg !69
  %20 = getelementptr inbounds i8, i8* %16, i64 1, !dbg !70
  %21 = icmp eq i8 %13, %12, !dbg !71
  %22 = zext i1 %21 to i32, !dbg !71
  %23 = and i32 %14, %22, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !61
  %24 = load i8, i8* %19, align 1, !dbg !62, !tbaa !63
  %25 = icmp eq i8 %24, 0, !dbg !62
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !66
  %26 = load i8, i8* %20, align 1, !dbg !67, !tbaa !63
  %27 = icmp eq i8 %26, 0, !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br i1 %25, label %28, label %10, !dbg !66, !llvm.loop !73

; <label>:28:                                     ; preds = %18, %2
  %29 = phi i8* [ %1, %2 ], [ %20, %18 ], !dbg !67
  %30 = phi i32 [ 1, %2 ], [ %23, %18 ], !dbg !67
  %31 = phi i1 [ %9, %2 ], [ %27, %18 ], !dbg !67
  br i1 %31, label %32, label %379, !dbg !68

; <label>:32:                                     ; preds = %17, %28
  %33 = phi i8* [ %16, %17 ], [ %29, %28 ]
  %34 = phi i32 [ %14, %17 ], [ %30, %28 ]
  %35 = icmp eq i32 %34, 0, !dbg !74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !76
  br i1 %35, label %36, label %379, !dbg !76

; <label>:36:                                     ; preds = %32
  %37 = ptrtoint i8* %33 to i64, !dbg !77
  %38 = ptrtoint i8* %1 to i64, !dbg !77
  %39 = sub i64 %37, %38, !dbg !77
  %40 = getelementptr inbounds i8, i8* %0, i64 1, !dbg !79
  %41 = sext i8 %8 to i32, !dbg !80
  %42 = tail call i8* @strchr(i8* nonnull %40, i32 %41) #4, !dbg !81
  %43 = icmp eq i8* %42, null, !dbg !82
  %44 = icmp eq i64 %39, 1, !dbg !84
  %45 = or i1 %44, %43, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %45, label %379, label %46, !dbg !85

; <label>:46:                                     ; preds = %36
  %47 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !86
  %48 = icmp ugt i8* %42, %47, !dbg !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br i1 %48, label %53, label %49, !dbg !88

; <label>:49:                                     ; preds = %46
  %50 = ptrtoint i8* %47 to i64, !dbg !89
  %51 = ptrtoint i8* %42 to i64, !dbg !89
  %52 = sub i64 %50, %51, !dbg !89
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !88
  br label %53, !dbg !88

; <label>:53:                                     ; preds = %46, %49
  %54 = phi i64 [ %52, %49 ], [ 1, %46 ], !dbg !88
  %55 = icmp ult i64 %39, 32, !dbg !91
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !93
  br i1 %55, label %56, label %178, !dbg !93

; <label>:56:                                     ; preds = %53
  %57 = bitcast i64* %5 to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %57) #5, !dbg !112
  %58 = call fastcc i64 @critical_factorization(i8* nonnull %1, i64 %39, i64* nonnull %5) #4, !dbg !114
  %59 = load i64, i64* %5, align 8, !dbg !116, !tbaa !117
  %60 = getelementptr inbounds i8, i8* %1, i64 %59, !dbg !119
  %61 = tail call i32 @memcmp(i8* nonnull %1, i8* %60, i64 %58) #4, !dbg !120
  %62 = icmp eq i32 %61, 0, !dbg !121
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %62, label %63, label %124, !dbg !122

; <label>:63:                                     ; preds = %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  %64 = getelementptr inbounds i8, i8* %42, i64 %54, !dbg !126
  %65 = sub i64 %39, %54, !dbg !126
  %66 = tail call i8* @memchr(i8* %64, i32 0, i64 %65) #4, !dbg !126
  %67 = icmp eq i8* %66, null, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %67, label %68, label %121, !dbg !126

; <label>:68:                                     ; preds = %63
  %69 = sub i64 %39, %59
  %70 = sub i64 1, %58
  br label %71, !dbg !126

; <label>:71:                                     ; preds = %112, %68
  %72 = phi i64 [ %39, %68 ], [ %117, %112 ]
  %73 = phi i64 [ 0, %68 ], [ %114, %112 ]
  %74 = phi i64 [ 0, %68 ], [ %115, %112 ]
  %75 = icmp eq i64 %72, 0, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  br i1 %75, label %121, label %76, !dbg !125

; <label>:76:                                     ; preds = %71
  %77 = icmp ult i64 %58, %73, !dbg !127
  %78 = select i1 %77, i64 %73, i64 %58, !dbg !127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %79 = icmp ult i64 %78, %39, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %79, label %80, label %91, !dbg !132

; <label>:80:                                     ; preds = %76, %88
  %81 = phi i64 [ %89, %88 ], [ %78, %76 ]
  %82 = getelementptr inbounds i8, i8* %1, i64 %81, !dbg !133
  %83 = load i8, i8* %82, align 1, !dbg !133, !tbaa !63
  %84 = add i64 %81, %74, !dbg !134
  %85 = getelementptr inbounds i8, i8* %42, i64 %84, !dbg !134
  %86 = load i8, i8* %85, align 1, !dbg !134, !tbaa !63
  %87 = icmp eq i8 %83, %86, !dbg !135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  br i1 %87, label %88, label %110, !dbg !130

; <label>:88:                                     ; preds = %80
  %89 = add nuw i64 %81, 1, !dbg !136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !130
  %90 = icmp ult i64 %89, %39, !dbg !131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !132
  br i1 %90, label %80, label %91, !dbg !132, !llvm.loop !137

; <label>:91:                                     ; preds = %88, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  %92 = icmp ult i64 %73, %58, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %92, label %93, label %104, !dbg !145

; <label>:93:                                     ; preds = %91, %102
  %94 = phi i64 [ %95, %102 ], [ %58, %91 ]
  %95 = add i64 %94, -1
  %96 = getelementptr inbounds i8, i8* %1, i64 %95, !dbg !146
  %97 = load i8, i8* %96, align 1, !dbg !146, !tbaa !63
  %98 = add i64 %95, %74, !dbg !147
  %99 = getelementptr inbounds i8, i8* %42, i64 %98, !dbg !147
  %100 = load i8, i8* %99, align 1, !dbg !147, !tbaa !63
  %101 = icmp eq i8 %97, %100, !dbg !148
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br i1 %101, label %102, label %106, !dbg !141

; <label>:102:                                    ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  %103 = icmp ult i64 %73, %95, !dbg !144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !145
  br i1 %103, label %93, label %104, !dbg !145, !llvm.loop !149

; <label>:104:                                    ; preds = %102, %91
  %105 = phi i64 [ %58, %91 ], [ %95, %102 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !141
  br label %106

; <label>:106:                                    ; preds = %93, %104
  %107 = phi i64 [ %105, %104 ], [ %94, %93 ]
  %108 = add i64 %73, 1, !dbg !152
  %109 = icmp ult i64 %107, %108, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !155
  br i1 %109, label %122, label %112, !dbg !155

; <label>:110:                                    ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !140
  %111 = add i64 %70, %81, !dbg !156
  br label %112

; <label>:112:                                    ; preds = %106, %110
  %113 = phi i64 [ %111, %110 ], [ %59, %106 ]
  %114 = phi i64 [ 0, %110 ], [ %69, %106 ], !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %115 = add i64 %113, %74, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  %116 = getelementptr inbounds i8, i8* %42, i64 %72, !dbg !126
  %117 = add i64 %115, %39, !dbg !126
  %118 = sub i64 %117, %72, !dbg !126
  %119 = tail call i8* @memchr(i8* %116, i32 0, i64 %118) #4, !dbg !126
  %120 = icmp eq i8* %119, null, !dbg !126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !126
  br i1 %120, label %71, label %121, !dbg !126, !llvm.loop !159

; <label>:121:                                    ; preds = %112, %71, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !162
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %176

; <label>:122:                                    ; preds = %106
  %123 = getelementptr inbounds i8, i8* %42, i64 %74, !dbg !163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br label %176

; <label>:124:                                    ; preds = %56
  %125 = sub i64 %39, %58, !dbg !165
  %126 = icmp ult i64 %58, %125, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !165
  %127 = select i1 %126, i64 %125, i64 %58, !dbg !165
  %128 = add i64 %127, 1, !dbg !167
  store i64 %128, i64* %5, align 8, !dbg !168, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %129 = getelementptr inbounds i8, i8* %42, i64 %54, !dbg !170
  %130 = sub i64 %39, %54, !dbg !170
  %131 = tail call i8* @memchr(i8* %129, i32 0, i64 %130) #4, !dbg !170
  %132 = icmp eq i8* %131, null, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br i1 %132, label %133, label %176, !dbg !170

; <label>:133:                                    ; preds = %124
  %134 = icmp ugt i64 %39, %58
  %135 = sub i64 1, %58
  br label %136, !dbg !170

; <label>:136:                                    ; preds = %168, %133
  %137 = phi i64 [ %39, %133 ], [ %172, %168 ]
  %138 = phi i64 [ 0, %133 ], [ %170, %168 ]
  %139 = icmp eq i64 %137, 0, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br i1 %139, label %176, label %140, !dbg !169

; <label>:140:                                    ; preds = %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %134, label %141, label %152, !dbg !173

; <label>:141:                                    ; preds = %140, %149
  %142 = phi i64 [ %150, %149 ], [ %58, %140 ]
  %143 = getelementptr inbounds i8, i8* %1, i64 %142, !dbg !174
  %144 = load i8, i8* %143, align 1, !dbg !174, !tbaa !63
  %145 = add i64 %142, %138, !dbg !175
  %146 = getelementptr inbounds i8, i8* %42, i64 %145, !dbg !175
  %147 = load i8, i8* %146, align 1, !dbg !175, !tbaa !63
  %148 = icmp eq i8 %144, %147, !dbg !176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  br i1 %148, label %149, label %166, !dbg !171

; <label>:149:                                    ; preds = %141
  %150 = add nuw i64 %142, 1, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !171
  %151 = icmp ult i64 %150, %39, !dbg !178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  br i1 %151, label %141, label %152, !dbg !173, !llvm.loop !179

; <label>:152:                                    ; preds = %149, %140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  br label %153, !dbg !183

; <label>:153:                                    ; preds = %157, %152
  %154 = phi i64 [ %58, %152 ], [ %155, %157 ]
  %155 = add i64 %154, -1, !dbg !186
  %156 = icmp eq i64 %154, 0, !dbg !187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  br i1 %156, label %164, label %157, !dbg !188

; <label>:157:                                    ; preds = %153
  %158 = getelementptr inbounds i8, i8* %1, i64 %155, !dbg !189
  %159 = load i8, i8* %158, align 1, !dbg !189, !tbaa !63
  %160 = add i64 %155, %138, !dbg !190
  %161 = getelementptr inbounds i8, i8* %42, i64 %160, !dbg !190
  %162 = load i8, i8* %161, align 1, !dbg !190, !tbaa !63
  %163 = icmp eq i8 %159, %162, !dbg !191
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !186
  br i1 %163, label %153, label %168, !dbg !183, !llvm.loop !192

; <label>:164:                                    ; preds = %153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  %165 = getelementptr inbounds i8, i8* %42, i64 %138, !dbg !196
  br label %176, !dbg !198

; <label>:166:                                    ; preds = %141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !182
  %167 = add i64 %135, %142, !dbg !199
  br label %168

; <label>:168:                                    ; preds = %157, %166
  %169 = phi i64 [ %167, %166 ], [ %128, %157 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %170 = add i64 %169, %138, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  %171 = getelementptr inbounds i8, i8* %42, i64 %137, !dbg !170
  %172 = add i64 %170, %39, !dbg !170
  %173 = sub i64 %172, %137, !dbg !170
  %174 = tail call i8* @memchr(i8* %171, i32 0, i64 %173) #4, !dbg !170
  %175 = icmp eq i8* %174, null, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  br i1 %175, label %136, label %176, !dbg !170, !llvm.loop !201

; <label>:176:                                    ; preds = %136, %168, %121, %124, %122, %164
  %177 = phi i8* [ %123, %122 ], [ %165, %164 ], [ null, %124 ], [ null, %121 ], [ null, %168 ], [ null, %136 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %57) #5, !dbg !204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br label %379, !dbg !205

; <label>:178:                                    ; preds = %53
  %179 = bitcast i64* %3 to i8*, !dbg !210
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %179) #5, !dbg !210
  %180 = bitcast [256 x i64]* %4 to i8*, !dbg !211
  call void @llvm.lifetime.start.p0i8(i64 2048, i8* nonnull %180) #5, !dbg !211
  %181 = call fastcc i64 @critical_factorization(i8* nonnull %1, i64 %39, i64* nonnull %3) #4, !dbg !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  br label %182, !dbg !218

; <label>:182:                                    ; preds = %182, %178
  %183 = phi i64 [ 0, %178 ], [ %191, %182 ]
  %184 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %183, !dbg !219
  store i64 %39, i64* %184, align 16, !dbg !221, !tbaa !117
  %185 = or i64 %183, 1, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %186 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %185, !dbg !219
  store i64 %39, i64* %186, align 8, !dbg !221, !tbaa !117
  %187 = or i64 %183, 2, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %188 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %187, !dbg !219
  store i64 %39, i64* %188, align 16, !dbg !221, !tbaa !117
  %189 = or i64 %183, 3, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %190 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %189, !dbg !219
  store i64 %39, i64* %190, align 8, !dbg !221, !tbaa !117
  %191 = add nuw nsw i64 %183, 4, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !218
  %192 = icmp eq i64 %191, 256, !dbg !224
  br i1 %192, label %193, label %182, !dbg !218, !llvm.loop !225

; <label>:193:                                    ; preds = %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !228
  %194 = icmp eq i64 %39, 0, !dbg !230
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br i1 %194, label %231, label %195, !dbg !232

; <label>:195:                                    ; preds = %193
  %196 = xor i64 %38, -1, !dbg !233
  %197 = and i64 %39, 1, !dbg !233
  %198 = sub i64 0, %37, !dbg !233
  %199 = icmp eq i64 %196, %198, !dbg !233
  br i1 %199, label %221, label %200, !dbg !233

; <label>:200:                                    ; preds = %195
  %201 = sub i64 %39, %197, !dbg !233
  br label %202, !dbg !233

; <label>:202:                                    ; preds = %202, %200
  %203 = phi i64 [ 0, %200 ], [ %218, %202 ]
  %204 = phi i64 [ %201, %200 ], [ %219, %202 ]
  %205 = xor i64 %203, -1, !dbg !233
  %206 = add i64 %39, %205, !dbg !233
  %207 = getelementptr inbounds i8, i8* %1, i64 %203, !dbg !234
  %208 = load i8, i8* %207, align 1, !dbg !234, !tbaa !63
  %209 = zext i8 %208 to i64, !dbg !235
  %210 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %209, !dbg !235
  store i64 %206, i64* %210, align 8, !dbg !236, !tbaa !117
  %211 = or i64 %203, 1, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  %212 = sub i64 -2, %203, !dbg !233
  %213 = add i64 %39, %212, !dbg !233
  %214 = getelementptr inbounds i8, i8* %1, i64 %211, !dbg !234
  %215 = load i8, i8* %214, align 1, !dbg !234, !tbaa !63
  %216 = zext i8 %215 to i64, !dbg !235
  %217 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %216, !dbg !235
  store i64 %213, i64* %217, align 8, !dbg !236, !tbaa !117
  %218 = add i64 %203, 2, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  %219 = add i64 %204, -2, !dbg !232
  %220 = icmp eq i64 %219, 0, !dbg !232
  br i1 %220, label %221, label %202, !dbg !232, !llvm.loop !239

; <label>:221:                                    ; preds = %202, %195
  %222 = phi i64 [ 0, %195 ], [ %218, %202 ]
  %223 = icmp eq i64 %197, 0, !dbg !232
  br i1 %223, label %231, label %224, !dbg !232

; <label>:224:                                    ; preds = %221
  %225 = xor i64 %222, -1, !dbg !233
  %226 = add i64 %39, %225, !dbg !233
  %227 = getelementptr inbounds i8, i8* %1, i64 %222, !dbg !234
  %228 = load i8, i8* %227, align 1, !dbg !234, !tbaa !63
  %229 = zext i8 %228 to i64, !dbg !235
  %230 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %229, !dbg !235
  store i64 %226, i64* %230, align 8, !dbg !236, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  br label %231, !dbg !242

; <label>:231:                                    ; preds = %224, %221, %193
  %232 = load i64, i64* %3, align 8, !dbg !242, !tbaa !117
  %233 = getelementptr inbounds i8, i8* %1, i64 %232, !dbg !243
  %234 = tail call i32 @memcmp(i8* %1, i8* %233, i64 %181) #4, !dbg !244
  %235 = icmp eq i32 %234, 0, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  br i1 %235, label %236, label %313, !dbg !246

; <label>:236:                                    ; preds = %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  %237 = getelementptr inbounds i8, i8* %42, i64 %54, !dbg !250
  %238 = sub i64 %39, %54, !dbg !250
  %239 = tail call i8* @memchr(i8* %237, i32 0, i64 %238) #4, !dbg !250
  %240 = icmp eq i8* %239, null, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %240, label %241, label %376, !dbg !250

; <label>:241:                                    ; preds = %236
  %242 = add i64 %39, -1
  %243 = sub i64 %39, %232
  %244 = sub i64 1, %181
  br label %245, !dbg !250

; <label>:245:                                    ; preds = %263, %241
  %246 = phi i64 [ %39, %241 ], [ %268, %263 ]
  %247 = phi i64 [ 0, %241 ], [ %265, %263 ]
  %248 = phi i64 [ 0, %241 ], [ %266, %263 ]
  %249 = icmp eq i64 %246, 0, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %249, label %376, label %250, !dbg !249

; <label>:250:                                    ; preds = %245
  %251 = add i64 %246, -1, !dbg !251
  %252 = getelementptr inbounds i8, i8* %42, i64 %251, !dbg !251
  %253 = load i8, i8* %252, align 1, !dbg !251, !tbaa !63
  %254 = zext i8 %253 to i64, !dbg !253
  %255 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %254, !dbg !253
  %256 = load i64, i64* %255, align 8, !dbg !253, !tbaa !117
  %257 = icmp eq i64 %256, 0, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br i1 %257, label %272, label %258, !dbg !257

; <label>:258:                                    ; preds = %250
  %259 = icmp eq i64 %247, 0, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %259, label %263, label %260, !dbg !261

; <label>:260:                                    ; preds = %258
  %261 = icmp ult i64 %256, %232, !dbg !262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !263
  br i1 %261, label %262, label %263, !dbg !263

; <label>:262:                                    ; preds = %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br label %263, !dbg !264

; <label>:263:                                    ; preds = %258, %260, %262, %308
  %264 = phi i64 [ %309, %308 ], [ %243, %262 ], [ %256, %260 ], [ %256, %258 ]
  %265 = phi i64 [ %310, %308 ], [ 0, %262 ], [ 0, %260 ], [ 0, %258 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  %266 = add i64 %264, %248, !dbg !266
  %267 = getelementptr inbounds i8, i8* %42, i64 %246, !dbg !250
  %268 = add i64 %266, %39, !dbg !250
  %269 = sub i64 %268, %246, !dbg !250
  %270 = tail call i8* @memchr(i8* %267, i32 0, i64 %269) #4, !dbg !250
  %271 = icmp eq i8* %270, null, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %271, label %245, label %376, !dbg !250, !llvm.loop !269

; <label>:272:                                    ; preds = %250
  %273 = icmp ult i64 %181, %247, !dbg !272
  %274 = select i1 %273, i64 %247, i64 %181, !dbg !272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %275 = icmp ult i64 %274, %242, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %275, label %276, label %287, !dbg !275

; <label>:276:                                    ; preds = %272, %284
  %277 = phi i64 [ %285, %284 ], [ %274, %272 ]
  %278 = getelementptr inbounds i8, i8* %1, i64 %277, !dbg !276
  %279 = load i8, i8* %278, align 1, !dbg !276, !tbaa !63
  %280 = add i64 %277, %248, !dbg !277
  %281 = getelementptr inbounds i8, i8* %42, i64 %280, !dbg !277
  %282 = load i8, i8* %281, align 1, !dbg !277, !tbaa !63
  %283 = icmp eq i8 %279, %282, !dbg !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %283, label %284, label %306, !dbg !273

; <label>:284:                                    ; preds = %276
  %285 = add nuw i64 %277, 1, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  %286 = icmp ult i64 %285, %242, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %286, label %276, label %287, !dbg !275, !llvm.loop !280

; <label>:287:                                    ; preds = %284, %272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %288 = icmp ult i64 %247, %181, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %288, label %289, label %300, !dbg !287

; <label>:289:                                    ; preds = %287, %298
  %290 = phi i64 [ %291, %298 ], [ %181, %287 ]
  %291 = add i64 %290, -1
  %292 = getelementptr inbounds i8, i8* %1, i64 %291, !dbg !288
  %293 = load i8, i8* %292, align 1, !dbg !288, !tbaa !63
  %294 = add i64 %291, %248, !dbg !289
  %295 = getelementptr inbounds i8, i8* %42, i64 %294, !dbg !289
  %296 = load i8, i8* %295, align 1, !dbg !289, !tbaa !63
  %297 = icmp eq i8 %293, %296, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br i1 %297, label %298, label %302, !dbg !284

; <label>:298:                                    ; preds = %289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  %299 = icmp ult i64 %247, %291, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %299, label %289, label %300, !dbg !287, !llvm.loop !291

; <label>:300:                                    ; preds = %298, %287
  %301 = phi i64 [ %181, %287 ], [ %291, %298 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  br label %302

; <label>:302:                                    ; preds = %289, %300
  %303 = phi i64 [ %301, %300 ], [ %290, %289 ]
  %304 = add i64 %247, 1, !dbg !294
  %305 = icmp ult i64 %303, %304, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %305, label %311, label %308, !dbg !297

; <label>:306:                                    ; preds = %276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %307 = add i64 %244, %277, !dbg !298
  br label %308

; <label>:308:                                    ; preds = %302, %306
  %309 = phi i64 [ %307, %306 ], [ %232, %302 ]
  %310 = phi i64 [ 0, %306 ], [ %243, %302 ], !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %263, !dbg !249

; <label>:311:                                    ; preds = %302
  %312 = getelementptr inbounds i8, i8* %42, i64 %248, !dbg !299
  br label %377

; <label>:313:                                    ; preds = %231
  %314 = sub i64 %39, %181, !dbg !300
  %315 = icmp ult i64 %181, %314, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  %316 = select i1 %315, i64 %314, i64 %181, !dbg !300
  %317 = add i64 %316, 1, !dbg !301
  store i64 %317, i64* %3, align 8, !dbg !302, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  %318 = getelementptr inbounds i8, i8* %42, i64 %54, !dbg !304
  %319 = sub i64 %39, %54, !dbg !304
  %320 = tail call i8* @memchr(i8* %318, i32 0, i64 %319) #4, !dbg !304
  %321 = icmp eq i8* %320, null, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br i1 %321, label %322, label %376, !dbg !304

; <label>:322:                                    ; preds = %313
  %323 = add i64 %39, -1
  %324 = icmp ult i64 %181, %323
  %325 = sub i64 1, %181
  br label %326, !dbg !304

; <label>:326:                                    ; preds = %338, %322
  %327 = phi i64 [ %39, %322 ], [ %342, %338 ]
  %328 = phi i64 [ 0, %322 ], [ %340, %338 ]
  %329 = icmp eq i64 %327, 0, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %329, label %376, label %330, !dbg !303

; <label>:330:                                    ; preds = %326
  %331 = add i64 %327, -1, !dbg !305
  %332 = getelementptr inbounds i8, i8* %42, i64 %331, !dbg !305
  %333 = load i8, i8* %332, align 1, !dbg !305, !tbaa !63
  %334 = zext i8 %333 to i64, !dbg !307
  %335 = getelementptr inbounds [256 x i64], [256 x i64]* %4, i64 0, i64 %334, !dbg !307
  %336 = load i64, i64* %335, align 8, !dbg !307, !tbaa !117
  %337 = icmp eq i64 %336, 0, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %337, label %346, label %338, !dbg !311

; <label>:338:                                    ; preds = %372, %330
  %339 = phi i64 [ %373, %372 ], [ %336, %330 ]
  %340 = add i64 %339, %328, !dbg !314
  %341 = getelementptr inbounds i8, i8* %42, i64 %327, !dbg !304
  %342 = add i64 %340, %39, !dbg !304
  %343 = sub i64 %342, %327, !dbg !304
  %344 = tail call i8* @memchr(i8* %341, i32 0, i64 %343) #4, !dbg !304
  %345 = icmp eq i8* %344, null, !dbg !304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !304
  br i1 %345, label %326, label %376, !dbg !304, !llvm.loop !316

; <label>:346:                                    ; preds = %330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %324, label %347, label %358, !dbg !319

; <label>:347:                                    ; preds = %346, %355
  %348 = phi i64 [ %356, %355 ], [ %181, %346 ]
  %349 = getelementptr inbounds i8, i8* %1, i64 %348, !dbg !320
  %350 = load i8, i8* %349, align 1, !dbg !320, !tbaa !63
  %351 = add i64 %348, %328, !dbg !321
  %352 = getelementptr inbounds i8, i8* %42, i64 %351, !dbg !321
  %353 = load i8, i8* %352, align 1, !dbg !321, !tbaa !63
  %354 = icmp eq i8 %350, %353, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br i1 %354, label %355, label %370, !dbg !323

; <label>:355:                                    ; preds = %347
  %356 = add nuw i64 %348, 1, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  %357 = icmp ult i64 %356, %323, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  br i1 %357, label %347, label %358, !dbg !319, !llvm.loop !326

; <label>:358:                                    ; preds = %355, %346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %359, !dbg !330

; <label>:359:                                    ; preds = %363, %358
  %360 = phi i64 [ %181, %358 ], [ %361, %363 ]
  %361 = add i64 %360, -1, !dbg !332
  %362 = icmp eq i64 %360, 0, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %362, label %374, label %363, !dbg !334

; <label>:363:                                    ; preds = %359
  %364 = getelementptr inbounds i8, i8* %1, i64 %361, !dbg !335
  %365 = load i8, i8* %364, align 1, !dbg !335, !tbaa !63
  %366 = add i64 %361, %328, !dbg !336
  %367 = getelementptr inbounds i8, i8* %42, i64 %366, !dbg !336
  %368 = load i8, i8* %367, align 1, !dbg !336, !tbaa !63
  %369 = icmp eq i8 %365, %368, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  br i1 %369, label %359, label %372, !dbg !330, !llvm.loop !338

; <label>:370:                                    ; preds = %347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  %371 = add i64 %325, %348, !dbg !341
  br label %372

; <label>:372:                                    ; preds = %363, %370
  %373 = phi i64 [ %371, %370 ], [ %317, %363 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br label %338, !dbg !303

; <label>:374:                                    ; preds = %359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  %375 = getelementptr inbounds i8, i8* %42, i64 %328, !dbg !343
  br label %377

; <label>:376:                                    ; preds = %326, %338, %245, %263, %313, %236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !67
  br label %377, !dbg !345

; <label>:377:                                    ; preds = %311, %374, %376
  %378 = phi i8* [ null, %376 ], [ %312, %311 ], [ %375, %374 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 2048, i8* nonnull %180) #5, !dbg !346
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %179) #5, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br label %379, !dbg !347

; <label>:379:                                    ; preds = %36, %32, %28, %377, %176
  %380 = phi i8* [ %177, %176 ], [ %378, %377 ], [ null, %28 ], [ %0, %32 ], [ %42, %36 ], !dbg !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  ret i8* %380, !dbg !350
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @strchr(i8*, i32) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define internal fastcc i64 @critical_factorization(i8* nocapture readonly, i64, i64* nocapture) unnamed_addr #0 !dbg !351 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %4 = icmp ugt i64 %1, 1, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %4, label %6, label %5, !dbg !373

; <label>:5:                                      ; preds = %3
  store i64 1, i64* %2, align 8, !dbg !375, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br label %69, !dbg !377

; <label>:6:                                      ; preds = %3, %30
  %7 = phi i64 [ %35, %30 ], [ 1, %3 ]
  %8 = phi i64 [ %34, %30 ], [ 1, %3 ]
  %9 = phi i64 [ %33, %30 ], [ 1, %3 ]
  %10 = phi i64 [ %32, %30 ], [ 0, %3 ]
  %11 = phi i64 [ %31, %30 ], [ -1, %3 ]
  %12 = getelementptr inbounds i8, i8* %0, i64 %7, !dbg !378
  %13 = load i8, i8* %12, align 1, !dbg !378, !tbaa !63
  %14 = add i64 %9, %11, !dbg !381
  %15 = getelementptr inbounds i8, i8* %0, i64 %14, !dbg !381
  %16 = load i8, i8* %15, align 1, !dbg !381, !tbaa !63
  %17 = icmp ult i8 %13, %16, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !385
  br i1 %17, label %18, label %20, !dbg !385

; <label>:18:                                     ; preds = %6
  %19 = sub i64 %7, %11, !dbg !386
  br label %30, !dbg !388

; <label>:20:                                     ; preds = %6
  %21 = icmp eq i8 %13, %16, !dbg !389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %21, label %22, label %28, !dbg !391

; <label>:22:                                     ; preds = %20
  %23 = icmp eq i64 %9, %8, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %23, label %26, label %24, !dbg !395

; <label>:24:                                     ; preds = %22
  %25 = add i64 %9, 1, !dbg !396
  br label %30, !dbg !396

; <label>:26:                                     ; preds = %22
  %27 = add i64 %8, %10, !dbg !397
  br label %30

; <label>:28:                                     ; preds = %20
  %29 = add i64 %10, 1, !dbg !399
  br label %30

; <label>:30:                                     ; preds = %28, %26, %24, %18
  %31 = phi i64 [ %11, %18 ], [ %11, %24 ], [ %11, %26 ], [ %10, %28 ], !dbg !401
  %32 = phi i64 [ %7, %18 ], [ %10, %24 ], [ %27, %26 ], [ %29, %28 ], !dbg !401
  %33 = phi i64 [ 1, %18 ], [ %25, %24 ], [ 1, %26 ], [ 1, %28 ], !dbg !401
  %34 = phi i64 [ %19, %18 ], [ %8, %24 ], [ %8, %26 ], [ 1, %28 ], !dbg !401
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  %35 = add i64 %33, %32, !dbg !402
  %36 = icmp ult i64 %35, %1, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %36, label %6, label %37, !dbg !373, !llvm.loop !403

; <label>:37:                                     ; preds = %30
  store i64 %34, i64* %2, align 8, !dbg !375, !tbaa !117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %4, label %38, label %69, !dbg !377

; <label>:38:                                     ; preds = %37, %62
  %39 = phi i64 [ %67, %62 ], [ 1, %37 ]
  %40 = phi i64 [ %66, %62 ], [ 1, %37 ]
  %41 = phi i64 [ %65, %62 ], [ 1, %37 ]
  %42 = phi i64 [ %64, %62 ], [ 0, %37 ]
  %43 = phi i64 [ %63, %62 ], [ -1, %37 ]
  %44 = getelementptr inbounds i8, i8* %0, i64 %39, !dbg !405
  %45 = load i8, i8* %44, align 1, !dbg !405, !tbaa !63
  %46 = add i64 %41, %43, !dbg !407
  %47 = getelementptr inbounds i8, i8* %0, i64 %46, !dbg !407
  %48 = load i8, i8* %47, align 1, !dbg !407, !tbaa !63
  %49 = icmp ult i8 %48, %45, !dbg !408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %49, label %50, label %52, !dbg !410

; <label>:50:                                     ; preds = %38
  %51 = sub i64 %39, %43, !dbg !411
  br label %62, !dbg !413

; <label>:52:                                     ; preds = %38
  %53 = icmp eq i8 %45, %48, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br i1 %53, label %54, label %60, !dbg !416

; <label>:54:                                     ; preds = %52
  %55 = icmp eq i64 %41, %40, !dbg !417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  br i1 %55, label %58, label %56, !dbg !420

; <label>:56:                                     ; preds = %54
  %57 = add i64 %41, 1, !dbg !421
  br label %62, !dbg !421

; <label>:58:                                     ; preds = %54
  %59 = add i64 %40, %42, !dbg !422
  br label %62

; <label>:60:                                     ; preds = %52
  %61 = add i64 %42, 1, !dbg !424
  br label %62

; <label>:62:                                     ; preds = %60, %58, %56, %50
  %63 = phi i64 [ %43, %50 ], [ %43, %56 ], [ %43, %58 ], [ %42, %60 ], !dbg !426
  %64 = phi i64 [ %39, %50 ], [ %42, %56 ], [ %59, %58 ], [ %61, %60 ], !dbg !426
  %65 = phi i64 [ 1, %50 ], [ %57, %56 ], [ 1, %58 ], [ 1, %60 ], !dbg !426
  %66 = phi i64 [ %51, %50 ], [ %40, %56 ], [ %40, %58 ], [ 1, %60 ], !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  %67 = add i64 %65, %64, !dbg !427
  %68 = icmp ult i64 %67, %1, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %68, label %38, label %69, !dbg !377, !llvm.loop !429

; <label>:69:                                     ; preds = %62, %5, %37
  %70 = phi i64 [ %31, %37 ], [ -1, %5 ], [ %31, %62 ]
  %71 = phi i64 [ -1, %37 ], [ -1, %5 ], [ %63, %62 ], !dbg !431
  %72 = phi i64 [ 1, %37 ], [ 1, %5 ], [ %66, %62 ], !dbg !432
  %73 = add i64 %71, 1, !dbg !433
  %74 = add i64 %70, 1, !dbg !435
  %75 = icmp ult i64 %73, %74, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %75, label %77, label %76, !dbg !437

; <label>:76:                                     ; preds = %69
  store i64 %72, i64* %2, align 8, !dbg !438, !tbaa !117
  br label %77, !dbg !439

; <label>:77:                                     ; preds = %69, %76
  %78 = phi i64 [ %73, %76 ], [ %74, %69 ], !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !442
  ret i64 %78, !dbg !442
}

; Function Attrs: noredzone
declare dso_local i32 @memcmp(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/strstr.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !10, line: 40, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !12, line: 129, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "strstr", scope: !1, file: !1, line: 48, type: !19, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !23)
!19 = !DISubroutineType(types: !20)
!20 = !{!4, !21, !21}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!23 = !{!24, !25, !26, !27, !28, !29, !30}
!24 = !DILocalVariable(name: "searchee", arg: 1, scope: !18, file: !1, line: 48, type: !21)
!25 = !DILocalVariable(name: "lookfor", arg: 2, scope: !18, file: !1, line: 48, type: !21)
!26 = !DILocalVariable(name: "haystack", scope: !18, file: !1, line: 88, type: !21)
!27 = !DILocalVariable(name: "needle", scope: !18, file: !1, line: 89, type: !21)
!28 = !DILocalVariable(name: "needle_len", scope: !18, file: !1, line: 90, type: !9)
!29 = !DILocalVariable(name: "haystack_len", scope: !18, file: !1, line: 91, type: !9)
!30 = !DILocalVariable(name: "ok", scope: !18, file: !1, line: 92, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocalVariable(name: "shift_table", scope: !33, file: !34, line: 299, type: !52)
!33 = distinct !DISubprogram(name: "two_way_long_needle", scope: !34, file: !34, line: 292, type: !35, isLocal: true, isDefinition: true, scopeLine: 294, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !37)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/string/str-two-way.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DISubroutineType(types: !36)
!36 = !{!4, !6, !9, !6, !9}
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45, !32, !46, !49, !50}
!38 = !DILocalVariable(name: "haystack", arg: 1, scope: !33, file: !34, line: 292, type: !6)
!39 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !33, file: !34, line: 292, type: !9)
!40 = !DILocalVariable(name: "needle", arg: 3, scope: !33, file: !34, line: 293, type: !6)
!41 = !DILocalVariable(name: "needle_len", arg: 4, scope: !33, file: !34, line: 293, type: !9)
!42 = !DILocalVariable(name: "i", scope: !33, file: !34, line: 295, type: !9)
!43 = !DILocalVariable(name: "j", scope: !33, file: !34, line: 296, type: !9)
!44 = !DILocalVariable(name: "period", scope: !33, file: !34, line: 297, type: !9)
!45 = !DILocalVariable(name: "suffix", scope: !33, file: !34, line: 298, type: !9)
!46 = !DILocalVariable(name: "memory", scope: !47, file: !34, line: 322, type: !9)
!47 = distinct !DILexicalBlock(scope: !48, file: !34, line: 318, column: 5)
!48 = distinct !DILexicalBlock(scope: !33, file: !34, line: 317, column: 7)
!49 = !DILocalVariable(name: "shift", scope: !47, file: !34, line: 323, type: !9)
!50 = !DILocalVariable(name: "shift", scope: !51, file: !34, line: 374, type: !9)
!51 = distinct !DILexicalBlock(scope: !48, file: !34, line: 371, column: 5)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 16384, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 256)
!55 = !DILocation(line: 299, column: 10, scope: !33, inlinedAt: !56)
!56 = distinct !DILocation(line: 118, column: 10, scope: !18)
!57 = !DILocation(line: 48, column: 1, scope: !18)
!58 = !DILocation(line: 88, column: 15, scope: !18)
!59 = !DILocation(line: 89, column: 15, scope: !18)
!60 = !DILocation(line: 92, column: 7, scope: !18)
!61 = !DILocation(line: 97, column: 3, scope: !18)
!62 = !DILocation(line: 97, column: 10, scope: !18)
!63 = !{!64, !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 97, column: 20, scope: !18)
!67 = !DILocation(line: 0, scope: !18)
!68 = !DILocation(line: 99, column: 7, scope: !18)
!69 = !DILocation(line: 98, column: 20, scope: !18)
!70 = !DILocation(line: 98, column: 33, scope: !18)
!71 = !DILocation(line: 98, column: 23, scope: !18)
!72 = !DILocation(line: 98, column: 8, scope: !18)
!73 = distinct !{!73, !61, !70}
!74 = !DILocation(line: 101, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !18, file: !1, line: 101, column: 7)
!76 = !DILocation(line: 101, column: 7, scope: !18)
!77 = !DILocation(line: 106, column: 23, scope: !18)
!78 = !DILocation(line: 90, column: 10, scope: !18)
!79 = !DILocation(line: 107, column: 31, scope: !18)
!80 = !DILocation(line: 107, column: 36, scope: !18)
!81 = !DILocation(line: 107, column: 14, scope: !18)
!82 = !DILocation(line: 108, column: 8, scope: !83)
!83 = distinct !DILexicalBlock(scope: !18, file: !1, line: 108, column: 7)
!84 = !DILocation(line: 108, column: 31, scope: !83)
!85 = !DILocation(line: 108, column: 17, scope: !83)
!86 = !DILocation(line: 110, column: 39, scope: !18)
!87 = !DILocation(line: 110, column: 28, scope: !18)
!88 = !DILocation(line: 110, column: 19, scope: !18)
!89 = !DILocation(line: 111, column: 29, scope: !18)
!90 = !DILocation(line: 91, column: 10, scope: !18)
!91 = !DILocation(line: 114, column: 18, scope: !92)
!92 = distinct !DILexicalBlock(scope: !18, file: !1, line: 114, column: 7)
!93 = !DILocation(line: 114, column: 7, scope: !18)
!94 = !DILocalVariable(name: "haystack", arg: 1, scope: !95, file: !34, line: 198, type: !6)
!95 = distinct !DISubprogram(name: "two_way_short_needle", scope: !34, file: !34, line: 198, type: !35, isLocal: true, isDefinition: true, scopeLine: 200, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !96)
!96 = !{!94, !97, !98, !99, !100, !101, !102, !103, !104}
!97 = !DILocalVariable(name: "haystack_len", arg: 2, scope: !95, file: !34, line: 198, type: !9)
!98 = !DILocalVariable(name: "needle", arg: 3, scope: !95, file: !34, line: 199, type: !6)
!99 = !DILocalVariable(name: "needle_len", arg: 4, scope: !95, file: !34, line: 199, type: !9)
!100 = !DILocalVariable(name: "i", scope: !95, file: !34, line: 201, type: !9)
!101 = !DILocalVariable(name: "j", scope: !95, file: !34, line: 202, type: !9)
!102 = !DILocalVariable(name: "period", scope: !95, file: !34, line: 203, type: !9)
!103 = !DILocalVariable(name: "suffix", scope: !95, file: !34, line: 204, type: !9)
!104 = !DILocalVariable(name: "memory", scope: !105, file: !34, line: 218, type: !9)
!105 = distinct !DILexicalBlock(scope: !106, file: !34, line: 214, column: 5)
!106 = distinct !DILexicalBlock(scope: !95, file: !34, line: 213, column: 7)
!107 = !DILocation(line: 198, column: 44, scope: !95, inlinedAt: !108)
!108 = distinct !DILocation(line: 115, column: 12, scope: !92)
!109 = !DILocation(line: 198, column: 61, scope: !95, inlinedAt: !108)
!110 = !DILocation(line: 199, column: 30, scope: !95, inlinedAt: !108)
!111 = !DILocation(line: 199, column: 45, scope: !95, inlinedAt: !108)
!112 = !DILocation(line: 203, column: 3, scope: !95, inlinedAt: !108)
!113 = !DILocation(line: 203, column: 10, scope: !95, inlinedAt: !108)
!114 = !DILocation(line: 209, column: 12, scope: !95, inlinedAt: !108)
!115 = !DILocation(line: 204, column: 10, scope: !95, inlinedAt: !108)
!116 = !DILocation(line: 213, column: 34, scope: !106, inlinedAt: !108)
!117 = !{!118, !118, i64 0}
!118 = !{!"long", !64, i64 0}
!119 = !DILocation(line: 213, column: 32, scope: !106, inlinedAt: !108)
!120 = !DILocation(line: 213, column: 7, scope: !106, inlinedAt: !108)
!121 = !DILocation(line: 213, column: 50, scope: !106, inlinedAt: !108)
!122 = !DILocation(line: 213, column: 7, scope: !95, inlinedAt: !108)
!123 = !DILocation(line: 218, column: 14, scope: !105, inlinedAt: !108)
!124 = !DILocation(line: 202, column: 10, scope: !95, inlinedAt: !108)
!125 = !DILocation(line: 220, column: 7, scope: !105, inlinedAt: !108)
!126 = !DILocation(line: 220, column: 14, scope: !105, inlinedAt: !108)
!127 = !DILocation(line: 223, column: 8, scope: !128, inlinedAt: !108)
!128 = distinct !DILexicalBlock(scope: !105, file: !34, line: 221, column: 2)
!129 = !DILocation(line: 201, column: 10, scope: !95, inlinedAt: !108)
!130 = !DILocation(line: 224, column: 4, scope: !128, inlinedAt: !108)
!131 = !DILocation(line: 224, column: 13, scope: !128, inlinedAt: !108)
!132 = !DILocation(line: 224, column: 26, scope: !128, inlinedAt: !108)
!133 = !DILocation(line: 224, column: 30, scope: !128, inlinedAt: !108)
!134 = !DILocation(line: 225, column: 12, scope: !128, inlinedAt: !108)
!135 = !DILocation(line: 225, column: 9, scope: !128, inlinedAt: !108)
!136 = !DILocation(line: 226, column: 6, scope: !128, inlinedAt: !108)
!137 = distinct !{!137, !138, !139}
!138 = !DILocation(line: 224, column: 4, scope: !128)
!139 = !DILocation(line: 226, column: 8, scope: !128)
!140 = !DILocation(line: 227, column: 8, scope: !128, inlinedAt: !108)
!141 = !DILocation(line: 231, column: 8, scope: !142, inlinedAt: !108)
!142 = distinct !DILexicalBlock(scope: !143, file: !34, line: 228, column: 6)
!143 = distinct !DILexicalBlock(scope: !128, file: !34, line: 227, column: 8)
!144 = !DILocation(line: 231, column: 22, scope: !142, inlinedAt: !108)
!145 = !DILocation(line: 231, column: 30, scope: !142, inlinedAt: !108)
!146 = !DILocation(line: 231, column: 34, scope: !142, inlinedAt: !108)
!147 = !DILocation(line: 232, column: 9, scope: !142, inlinedAt: !108)
!148 = !DILocation(line: 232, column: 6, scope: !142, inlinedAt: !108)
!149 = distinct !{!149, !150, !151}
!150 = !DILocation(line: 231, column: 8, scope: !142)
!151 = !DILocation(line: 233, column: 5, scope: !142)
!152 = !DILocation(line: 234, column: 27, scope: !153, inlinedAt: !108)
!153 = distinct !DILexicalBlock(scope: !142, file: !34, line: 234, column: 12)
!154 = !DILocation(line: 234, column: 18, scope: !153, inlinedAt: !108)
!155 = !DILocation(line: 234, column: 12, scope: !142, inlinedAt: !108)
!156 = !DILocation(line: 243, column: 24, scope: !157, inlinedAt: !108)
!157 = distinct !DILexicalBlock(scope: !143, file: !34, line: 242, column: 6)
!158 = !DILocation(line: 0, scope: !157, inlinedAt: !108)
!159 = distinct !{!159, !160, !161}
!160 = !DILocation(line: 220, column: 7, scope: !105)
!161 = !DILocation(line: 246, column: 2, scope: !105)
!162 = !DILocation(line: 247, column: 5, scope: !106, inlinedAt: !108)
!163 = !DILocation(line: 235, column: 34, scope: !153, inlinedAt: !108)
!164 = !DILocation(line: 235, column: 3, scope: !153, inlinedAt: !108)
!165 = !DILocation(line: 252, column: 16, scope: !166, inlinedAt: !108)
!166 = distinct !DILexicalBlock(scope: !106, file: !34, line: 249, column: 5)
!167 = !DILocation(line: 252, column: 50, scope: !166, inlinedAt: !108)
!168 = !DILocation(line: 252, column: 14, scope: !166, inlinedAt: !108)
!169 = !DILocation(line: 254, column: 7, scope: !166, inlinedAt: !108)
!170 = !DILocation(line: 254, column: 14, scope: !166, inlinedAt: !108)
!171 = !DILocation(line: 258, column: 4, scope: !172, inlinedAt: !108)
!172 = distinct !DILexicalBlock(scope: !166, file: !34, line: 255, column: 2)
!173 = !DILocation(line: 258, column: 26, scope: !172, inlinedAt: !108)
!174 = !DILocation(line: 258, column: 30, scope: !172, inlinedAt: !108)
!175 = !DILocation(line: 259, column: 12, scope: !172, inlinedAt: !108)
!176 = !DILocation(line: 259, column: 9, scope: !172, inlinedAt: !108)
!177 = !DILocation(line: 260, column: 6, scope: !172, inlinedAt: !108)
!178 = !DILocation(line: 258, column: 13, scope: !172, inlinedAt: !108)
!179 = distinct !{!179, !180, !181}
!180 = !DILocation(line: 258, column: 4, scope: !172)
!181 = !DILocation(line: 260, column: 8, scope: !172)
!182 = !DILocation(line: 261, column: 8, scope: !172, inlinedAt: !108)
!183 = !DILocation(line: 265, column: 8, scope: !184, inlinedAt: !108)
!184 = distinct !DILexicalBlock(scope: !185, file: !34, line: 262, column: 6)
!185 = distinct !DILexicalBlock(scope: !172, file: !34, line: 261, column: 8)
!186 = !DILocation(line: 0, scope: !184, inlinedAt: !108)
!187 = !DILocation(line: 265, column: 17, scope: !184, inlinedAt: !108)
!188 = !DILocation(line: 265, column: 29, scope: !184, inlinedAt: !108)
!189 = !DILocation(line: 265, column: 33, scope: !184, inlinedAt: !108)
!190 = !DILocation(line: 266, column: 15, scope: !184, inlinedAt: !108)
!191 = !DILocation(line: 266, column: 12, scope: !184, inlinedAt: !108)
!192 = distinct !{!192, !193, !194}
!193 = !DILocation(line: 265, column: 8, scope: !184)
!194 = !DILocation(line: 267, column: 5, scope: !184)
!195 = !DILocation(line: 268, column: 12, scope: !184, inlinedAt: !108)
!196 = !DILocation(line: 269, column: 34, scope: !197, inlinedAt: !108)
!197 = distinct !DILexicalBlock(scope: !184, file: !34, line: 268, column: 12)
!198 = !DILocation(line: 269, column: 3, scope: !197, inlinedAt: !108)
!199 = !DILocation(line: 273, column: 22, scope: !185, inlinedAt: !108)
!200 = !DILocation(line: 0, scope: !185, inlinedAt: !108)
!201 = distinct !{!201, !202, !203}
!202 = !DILocation(line: 254, column: 7, scope: !166)
!203 = !DILocation(line: 274, column: 2, scope: !166)
!204 = !DILocation(line: 277, column: 1, scope: !95, inlinedAt: !108)
!205 = !DILocation(line: 115, column: 5, scope: !92)
!206 = !DILocation(line: 292, column: 43, scope: !33, inlinedAt: !56)
!207 = !DILocation(line: 292, column: 60, scope: !33, inlinedAt: !56)
!208 = !DILocation(line: 293, column: 29, scope: !33, inlinedAt: !56)
!209 = !DILocation(line: 293, column: 44, scope: !33, inlinedAt: !56)
!210 = !DILocation(line: 297, column: 3, scope: !33, inlinedAt: !56)
!211 = !DILocation(line: 299, column: 3, scope: !33, inlinedAt: !56)
!212 = !DILocation(line: 297, column: 10, scope: !33, inlinedAt: !56)
!213 = !DILocation(line: 304, column: 12, scope: !33, inlinedAt: !56)
!214 = !DILocation(line: 298, column: 10, scope: !33, inlinedAt: !56)
!215 = !DILocation(line: 295, column: 10, scope: !33, inlinedAt: !56)
!216 = !DILocation(line: 310, column: 8, scope: !217, inlinedAt: !56)
!217 = distinct !DILexicalBlock(scope: !33, file: !34, line: 310, column: 3)
!218 = !DILocation(line: 310, column: 3, scope: !217, inlinedAt: !56)
!219 = !DILocation(line: 311, column: 5, scope: !220, inlinedAt: !56)
!220 = distinct !DILexicalBlock(scope: !217, file: !34, line: 310, column: 3)
!221 = !DILocation(line: 311, column: 20, scope: !220, inlinedAt: !56)
!222 = !DILocation(line: 310, column: 36, scope: !220, inlinedAt: !56)
!223 = !DILocation(line: 310, column: 3, scope: !220, inlinedAt: !56)
!224 = !DILocation(line: 310, column: 17, scope: !220, inlinedAt: !56)
!225 = distinct !{!225, !226, !227}
!226 = !DILocation(line: 310, column: 3, scope: !217)
!227 = !DILocation(line: 311, column: 22, scope: !217)
!228 = !DILocation(line: 312, column: 8, scope: !229, inlinedAt: !56)
!229 = distinct !DILexicalBlock(scope: !33, file: !34, line: 312, column: 3)
!230 = !DILocation(line: 312, column: 17, scope: !231, inlinedAt: !56)
!231 = distinct !DILexicalBlock(scope: !229, file: !34, line: 312, column: 3)
!232 = !DILocation(line: 312, column: 3, scope: !229, inlinedAt: !56)
!233 = !DILocation(line: 313, column: 61, scope: !231, inlinedAt: !56)
!234 = !DILocation(line: 313, column: 17, scope: !231, inlinedAt: !56)
!235 = !DILocation(line: 313, column: 5, scope: !231, inlinedAt: !56)
!236 = !DILocation(line: 313, column: 44, scope: !231, inlinedAt: !56)
!237 = !DILocation(line: 312, column: 32, scope: !231, inlinedAt: !56)
!238 = !DILocation(line: 312, column: 3, scope: !231, inlinedAt: !56)
!239 = distinct !{!239, !240, !241}
!240 = !DILocation(line: 312, column: 3, scope: !229)
!241 = !DILocation(line: 313, column: 63, scope: !229)
!242 = !DILocation(line: 317, column: 34, scope: !48, inlinedAt: !56)
!243 = !DILocation(line: 317, column: 32, scope: !48, inlinedAt: !56)
!244 = !DILocation(line: 317, column: 7, scope: !48, inlinedAt: !56)
!245 = !DILocation(line: 317, column: 50, scope: !48, inlinedAt: !56)
!246 = !DILocation(line: 317, column: 7, scope: !33, inlinedAt: !56)
!247 = !DILocation(line: 322, column: 14, scope: !47, inlinedAt: !56)
!248 = !DILocation(line: 296, column: 10, scope: !33, inlinedAt: !56)
!249 = !DILocation(line: 325, column: 7, scope: !47, inlinedAt: !56)
!250 = !DILocation(line: 325, column: 14, scope: !47, inlinedAt: !56)
!251 = !DILocation(line: 329, column: 24, scope: !252, inlinedAt: !56)
!252 = distinct !DILexicalBlock(scope: !47, file: !34, line: 326, column: 2)
!253 = !DILocation(line: 329, column: 12, scope: !252, inlinedAt: !56)
!254 = !DILocation(line: 323, column: 14, scope: !47, inlinedAt: !56)
!255 = !DILocation(line: 330, column: 10, scope: !256, inlinedAt: !56)
!256 = distinct !DILexicalBlock(scope: !252, file: !34, line: 330, column: 8)
!257 = !DILocation(line: 330, column: 8, scope: !252, inlinedAt: !56)
!258 = !DILocation(line: 332, column: 12, scope: !259, inlinedAt: !56)
!259 = distinct !DILexicalBlock(scope: !260, file: !34, line: 332, column: 12)
!260 = distinct !DILexicalBlock(scope: !256, file: !34, line: 331, column: 6)
!261 = !DILocation(line: 332, column: 19, scope: !259, inlinedAt: !56)
!262 = !DILocation(line: 332, column: 28, scope: !259, inlinedAt: !56)
!263 = !DILocation(line: 332, column: 12, scope: !260, inlinedAt: !56)
!264 = !DILocation(line: 338, column: 3, scope: !265, inlinedAt: !56)
!265 = distinct !DILexicalBlock(scope: !259, file: !34, line: 333, column: 3)
!266 = !DILocation(line: 0, scope: !267, inlinedAt: !56)
!267 = distinct !DILexicalBlock(scope: !268, file: !34, line: 364, column: 6)
!268 = distinct !DILexicalBlock(scope: !252, file: !34, line: 349, column: 8)
!269 = distinct !{!269, !270, !271}
!270 = !DILocation(line: 325, column: 7, scope: !47)
!271 = !DILocation(line: 368, column: 2, scope: !47)
!272 = !DILocation(line: 345, column: 8, scope: !252, inlinedAt: !56)
!273 = !DILocation(line: 346, column: 4, scope: !252, inlinedAt: !56)
!274 = !DILocation(line: 346, column: 13, scope: !252, inlinedAt: !56)
!275 = !DILocation(line: 346, column: 30, scope: !252, inlinedAt: !56)
!276 = !DILocation(line: 346, column: 34, scope: !252, inlinedAt: !56)
!277 = !DILocation(line: 347, column: 9, scope: !252, inlinedAt: !56)
!278 = !DILocation(line: 347, column: 6, scope: !252, inlinedAt: !56)
!279 = !DILocation(line: 348, column: 6, scope: !252, inlinedAt: !56)
!280 = distinct !{!280, !281, !282}
!281 = !DILocation(line: 346, column: 4, scope: !252)
!282 = !DILocation(line: 348, column: 8, scope: !252)
!283 = !DILocation(line: 349, column: 8, scope: !252, inlinedAt: !56)
!284 = !DILocation(line: 353, column: 8, scope: !285, inlinedAt: !56)
!285 = distinct !DILexicalBlock(scope: !268, file: !34, line: 350, column: 6)
!286 = !DILocation(line: 353, column: 22, scope: !285, inlinedAt: !56)
!287 = !DILocation(line: 353, column: 30, scope: !285, inlinedAt: !56)
!288 = !DILocation(line: 353, column: 34, scope: !285, inlinedAt: !56)
!289 = !DILocation(line: 354, column: 9, scope: !285, inlinedAt: !56)
!290 = !DILocation(line: 354, column: 6, scope: !285, inlinedAt: !56)
!291 = distinct !{!291, !292, !293}
!292 = !DILocation(line: 353, column: 8, scope: !285)
!293 = !DILocation(line: 355, column: 5, scope: !285)
!294 = !DILocation(line: 356, column: 27, scope: !295, inlinedAt: !56)
!295 = distinct !DILexicalBlock(scope: !285, file: !34, line: 356, column: 12)
!296 = !DILocation(line: 356, column: 18, scope: !295, inlinedAt: !56)
!297 = !DILocation(line: 356, column: 12, scope: !285, inlinedAt: !56)
!298 = !DILocation(line: 365, column: 24, scope: !267, inlinedAt: !56)
!299 = !DILocation(line: 357, column: 34, scope: !295, inlinedAt: !56)
!300 = !DILocation(line: 375, column: 16, scope: !51, inlinedAt: !56)
!301 = !DILocation(line: 375, column: 50, scope: !51, inlinedAt: !56)
!302 = !DILocation(line: 375, column: 14, scope: !51, inlinedAt: !56)
!303 = !DILocation(line: 377, column: 7, scope: !51, inlinedAt: !56)
!304 = !DILocation(line: 377, column: 14, scope: !51, inlinedAt: !56)
!305 = !DILocation(line: 381, column: 24, scope: !306, inlinedAt: !56)
!306 = distinct !DILexicalBlock(scope: !51, file: !34, line: 378, column: 2)
!307 = !DILocation(line: 381, column: 12, scope: !306, inlinedAt: !56)
!308 = !DILocation(line: 374, column: 14, scope: !51, inlinedAt: !56)
!309 = !DILocation(line: 382, column: 10, scope: !310, inlinedAt: !56)
!310 = distinct !DILexicalBlock(scope: !306, file: !34, line: 382, column: 8)
!311 = !DILocation(line: 382, column: 8, scope: !306, inlinedAt: !56)
!312 = !DILocation(line: 0, scope: !313, inlinedAt: !56)
!313 = distinct !DILexicalBlock(scope: !310, file: !34, line: 383, column: 6)
!314 = !DILocation(line: 0, scope: !315, inlinedAt: !56)
!315 = distinct !DILexicalBlock(scope: !306, file: !34, line: 393, column: 8)
!316 = distinct !{!316, !317, !318}
!317 = !DILocation(line: 377, column: 7, scope: !51)
!318 = !DILocation(line: 406, column: 2, scope: !51)
!319 = !DILocation(line: 390, column: 30, scope: !306, inlinedAt: !56)
!320 = !DILocation(line: 390, column: 34, scope: !306, inlinedAt: !56)
!321 = !DILocation(line: 391, column: 9, scope: !306, inlinedAt: !56)
!322 = !DILocation(line: 391, column: 6, scope: !306, inlinedAt: !56)
!323 = !DILocation(line: 390, column: 4, scope: !306, inlinedAt: !56)
!324 = !DILocation(line: 392, column: 6, scope: !306, inlinedAt: !56)
!325 = !DILocation(line: 390, column: 13, scope: !306, inlinedAt: !56)
!326 = distinct !{!326, !327, !328}
!327 = !DILocation(line: 390, column: 4, scope: !306)
!328 = !DILocation(line: 392, column: 8, scope: !306)
!329 = !DILocation(line: 393, column: 8, scope: !306, inlinedAt: !56)
!330 = !DILocation(line: 397, column: 8, scope: !331, inlinedAt: !56)
!331 = distinct !DILexicalBlock(scope: !315, file: !34, line: 394, column: 6)
!332 = !DILocation(line: 0, scope: !331, inlinedAt: !56)
!333 = !DILocation(line: 397, column: 17, scope: !331, inlinedAt: !56)
!334 = !DILocation(line: 397, column: 29, scope: !331, inlinedAt: !56)
!335 = !DILocation(line: 397, column: 33, scope: !331, inlinedAt: !56)
!336 = !DILocation(line: 398, column: 15, scope: !331, inlinedAt: !56)
!337 = !DILocation(line: 398, column: 12, scope: !331, inlinedAt: !56)
!338 = distinct !{!338, !339, !340}
!339 = !DILocation(line: 397, column: 8, scope: !331)
!340 = !DILocation(line: 399, column: 5, scope: !331)
!341 = !DILocation(line: 405, column: 22, scope: !315, inlinedAt: !56)
!342 = !DILocation(line: 400, column: 12, scope: !331, inlinedAt: !56)
!343 = !DILocation(line: 401, column: 34, scope: !344, inlinedAt: !56)
!344 = distinct !DILexicalBlock(scope: !331, file: !34, line: 400, column: 12)
!345 = !DILocation(line: 408, column: 3, scope: !33, inlinedAt: !56)
!346 = !DILocation(line: 409, column: 1, scope: !33, inlinedAt: !56)
!347 = !DILocation(line: 118, column: 3, scope: !18)
!348 = !DILocation(line: 0, scope: !349)
!349 = distinct !DILexicalBlock(scope: !18, file: !1, line: 99, column: 7)
!350 = !DILocation(line: 121, column: 1, scope: !18)
!351 = distinct !DISubprogram(name: "critical_factorization", scope: !34, file: !34, line: 91, type: !352, isLocal: true, isDefinition: true, scopeLine: 93, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !355)
!352 = !DISubroutineType(types: !353)
!353 = !{!9, !6, !9, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!355 = !{!356, !357, !358, !359, !360, !361, !362, !363, !364, !365}
!356 = !DILocalVariable(name: "needle", arg: 1, scope: !351, file: !34, line: 91, type: !6)
!357 = !DILocalVariable(name: "needle_len", arg: 2, scope: !351, file: !34, line: 91, type: !9)
!358 = !DILocalVariable(name: "period", arg: 3, scope: !351, file: !34, line: 92, type: !354)
!359 = !DILocalVariable(name: "max_suffix", scope: !351, file: !34, line: 95, type: !9)
!360 = !DILocalVariable(name: "max_suffix_rev", scope: !351, file: !34, line: 95, type: !9)
!361 = !DILocalVariable(name: "j", scope: !351, file: !34, line: 96, type: !9)
!362 = !DILocalVariable(name: "k", scope: !351, file: !34, line: 97, type: !9)
!363 = !DILocalVariable(name: "p", scope: !351, file: !34, line: 98, type: !9)
!364 = !DILocalVariable(name: "a", scope: !351, file: !34, line: 99, type: !8)
!365 = !DILocalVariable(name: "b", scope: !351, file: !34, line: 99, type: !8)
!366 = !DILocation(line: 91, column: 46, scope: !351)
!367 = !DILocation(line: 91, column: 61, scope: !351)
!368 = !DILocation(line: 92, column: 12, scope: !351)
!369 = !DILocation(line: 95, column: 10, scope: !351)
!370 = !DILocation(line: 96, column: 10, scope: !351)
!371 = !DILocation(line: 98, column: 10, scope: !351)
!372 = !DILocation(line: 97, column: 10, scope: !351)
!373 = !DILocation(line: 114, column: 3, scope: !351)
!374 = !DILocation(line: 114, column: 16, scope: !351)
!375 = !DILocation(line: 143, column: 11, scope: !351)
!376 = !DILocation(line: 95, column: 22, scope: !351)
!377 = !DILocation(line: 149, column: 3, scope: !351)
!378 = !DILocation(line: 116, column: 11, scope: !379)
!379 = distinct !DILexicalBlock(scope: !351, file: !34, line: 115, column: 5)
!380 = !DILocation(line: 99, column: 17, scope: !351)
!381 = !DILocation(line: 117, column: 11, scope: !379)
!382 = !DILocation(line: 99, column: 20, scope: !351)
!383 = !DILocation(line: 118, column: 13, scope: !384)
!384 = distinct !DILexicalBlock(scope: !379, file: !34, line: 118, column: 11)
!385 = !DILocation(line: 118, column: 11, scope: !379)
!386 = !DILocation(line: 123, column: 10, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !34, line: 119, column: 2)
!388 = !DILocation(line: 124, column: 2, scope: !387)
!389 = !DILocation(line: 125, column: 18, scope: !390)
!390 = distinct !DILexicalBlock(scope: !384, file: !34, line: 125, column: 16)
!391 = !DILocation(line: 125, column: 16, scope: !384)
!392 = !DILocation(line: 128, column: 10, scope: !393)
!393 = distinct !DILexicalBlock(scope: !394, file: !34, line: 128, column: 8)
!394 = distinct !DILexicalBlock(scope: !390, file: !34, line: 126, column: 2)
!395 = !DILocation(line: 128, column: 8, scope: !394)
!396 = !DILocation(line: 129, column: 6, scope: !393)
!397 = !DILocation(line: 132, column: 10, scope: !398)
!398 = distinct !DILexicalBlock(scope: !393, file: !34, line: 131, column: 6)
!399 = !DILocation(line: 139, column: 18, scope: !400)
!400 = distinct !DILexicalBlock(scope: !390, file: !34, line: 137, column: 2)
!401 = !DILocation(line: 0, scope: !400)
!402 = !DILocation(line: 114, column: 12, scope: !351)
!403 = distinct !{!403, !373, !404}
!404 = !DILocation(line: 142, column: 5, scope: !351)
!405 = !DILocation(line: 151, column: 11, scope: !406)
!406 = distinct !DILexicalBlock(scope: !351, file: !34, line: 150, column: 5)
!407 = !DILocation(line: 152, column: 11, scope: !406)
!408 = !DILocation(line: 153, column: 13, scope: !409)
!409 = distinct !DILexicalBlock(scope: !406, file: !34, line: 153, column: 11)
!410 = !DILocation(line: 153, column: 11, scope: !406)
!411 = !DILocation(line: 158, column: 10, scope: !412)
!412 = distinct !DILexicalBlock(scope: !409, file: !34, line: 154, column: 2)
!413 = !DILocation(line: 159, column: 2, scope: !412)
!414 = !DILocation(line: 160, column: 18, scope: !415)
!415 = distinct !DILexicalBlock(scope: !409, file: !34, line: 160, column: 16)
!416 = !DILocation(line: 160, column: 16, scope: !409)
!417 = !DILocation(line: 163, column: 10, scope: !418)
!418 = distinct !DILexicalBlock(scope: !419, file: !34, line: 163, column: 8)
!419 = distinct !DILexicalBlock(scope: !415, file: !34, line: 161, column: 2)
!420 = !DILocation(line: 163, column: 8, scope: !419)
!421 = !DILocation(line: 164, column: 6, scope: !418)
!422 = !DILocation(line: 167, column: 10, scope: !423)
!423 = distinct !DILexicalBlock(scope: !418, file: !34, line: 166, column: 6)
!424 = !DILocation(line: 174, column: 22, scope: !425)
!425 = distinct !DILexicalBlock(scope: !415, file: !34, line: 172, column: 2)
!426 = !DILocation(line: 0, scope: !425)
!427 = !DILocation(line: 149, column: 12, scope: !351)
!428 = !DILocation(line: 149, column: 16, scope: !351)
!429 = distinct !{!429, !377, !430}
!430 = !DILocation(line: 177, column: 5, scope: !351)
!431 = !DILocation(line: 146, column: 18, scope: !351)
!432 = !DILocation(line: 0, scope: !412)
!433 = !DILocation(line: 181, column: 22, scope: !434)
!434 = distinct !DILexicalBlock(scope: !351, file: !34, line: 181, column: 7)
!435 = !DILocation(line: 181, column: 39, scope: !434)
!436 = !DILocation(line: 181, column: 26, scope: !434)
!437 = !DILocation(line: 181, column: 7, scope: !351)
!438 = !DILocation(line: 183, column: 11, scope: !351)
!439 = !DILocation(line: 184, column: 3, scope: !351)
!440 = !DILocation(line: 0, scope: !351)
!441 = !DILocation(line: 0, scope: !434)
!442 = !DILocation(line: 185, column: 1, scope: !351)
