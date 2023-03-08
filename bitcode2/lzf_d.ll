; ModuleID = '/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_d.c'
source_filename = "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_d.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @lzf_decompress(i8* readonly, i32, i8*, i32) local_unnamed_addr #0 !dbg !14 {
  %5 = zext i32 %1 to i64, !dbg !45
  %6 = getelementptr inbounds i8, i8* %0, i64 %5, !dbg !45
  %7 = zext i32 %3 to i64, !dbg !47
  %8 = getelementptr inbounds i8, i8* %2, i64 %7, !dbg !47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !49
  br label %9, !dbg !49

; <label>:9:                                      ; preds = %371, %4
  %10 = phi i8* [ %2, %4 ], [ %372, %371 ], !dbg !44
  %11 = phi i8* [ %0, %4 ], [ %373, %371 ], !dbg !50
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !51
  %13 = load i8, i8* %11, align 1, !dbg !52, !tbaa !53
  %14 = zext i8 %13 to i32, !dbg !52
  %15 = icmp ult i8 %13, 32, !dbg !57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !58
  br i1 %15, label %16, label %218, !dbg !58

; <label>:16:                                     ; preds = %9
  %17 = add nuw nsw i32 %14, 1, !dbg !59
  %18 = zext i32 %17 to i64, !dbg !61
  %19 = getelementptr inbounds i8, i8* %10, i64 %18, !dbg !61
  %20 = icmp ugt i8* %19, %8, !dbg !63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !64
  br i1 %20, label %21, label %23, !dbg !64

; <label>:21:                                     ; preds = %16
  %22 = tail call i32* @__errno() #3, !dbg !65
  store i32 7, i32* %22, align 4, !dbg !65, !tbaa !67
  br label %366, !dbg !69

; <label>:23:                                     ; preds = %16
  %24 = getelementptr inbounds i8, i8* %12, i64 %18, !dbg !70
  %25 = icmp ugt i8* %24, %6, !dbg !72
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !73
  br i1 %25, label %26, label %28, !dbg !73

; <label>:26:                                     ; preds = %23
  %27 = tail call i32* @__errno() #3, !dbg !74
  store i32 22, i32* %27, align 4, !dbg !74, !tbaa !67
  br label %366, !dbg !76

; <label>:28:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !77
  switch i8 %13, label %371 [
    i8 31, label %29
    i8 30, label %33
    i8 29, label %39
    i8 28, label %45
    i8 27, label %51
    i8 26, label %57
    i8 25, label %63
    i8 24, label %69
    i8 23, label %75
    i8 22, label %81
    i8 21, label %87
    i8 20, label %93
    i8 19, label %99
    i8 18, label %105
    i8 17, label %111
    i8 16, label %117
    i8 15, label %123
    i8 14, label %129
    i8 13, label %135
    i8 12, label %141
    i8 11, label %147
    i8 10, label %153
    i8 9, label %159
    i8 8, label %165
    i8 7, label %171
    i8 6, label %177
    i8 5, label %183
    i8 4, label %189
    i8 3, label %195
    i8 2, label %201
    i8 1, label %207
    i8 0, label %213
  ], !dbg !77

; <label>:29:                                     ; preds = %28
  %30 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !78
  %31 = load i8, i8* %12, align 1, !dbg !80, !tbaa !53
  %32 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !81
  store i8 %31, i8* %10, align 1, !dbg !82, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !83
  br label %33, !dbg !83

; <label>:33:                                     ; preds = %28, %29
  %34 = phi i8* [ %10, %28 ], [ %32, %29 ], !dbg !84
  %35 = phi i8* [ %12, %28 ], [ %30, %29 ], !dbg !84
  %36 = getelementptr inbounds i8, i8* %35, i64 1, !dbg !85
  %37 = load i8, i8* %35, align 1, !dbg !86, !tbaa !53
  %38 = getelementptr inbounds i8, i8* %34, i64 1, !dbg !87
  store i8 %37, i8* %34, align 1, !dbg !88, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !89
  br label %39, !dbg !89

; <label>:39:                                     ; preds = %28, %33
  %40 = phi i8* [ %10, %28 ], [ %38, %33 ], !dbg !84
  %41 = phi i8* [ %12, %28 ], [ %36, %33 ], !dbg !84
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !90
  %43 = load i8, i8* %41, align 1, !dbg !91, !tbaa !53
  %44 = getelementptr inbounds i8, i8* %40, i64 1, !dbg !92
  store i8 %43, i8* %40, align 1, !dbg !93, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !94
  br label %45, !dbg !94

; <label>:45:                                     ; preds = %28, %39
  %46 = phi i8* [ %10, %28 ], [ %44, %39 ], !dbg !84
  %47 = phi i8* [ %12, %28 ], [ %42, %39 ], !dbg !84
  %48 = getelementptr inbounds i8, i8* %47, i64 1, !dbg !95
  %49 = load i8, i8* %47, align 1, !dbg !96, !tbaa !53
  %50 = getelementptr inbounds i8, i8* %46, i64 1, !dbg !97
  store i8 %49, i8* %46, align 1, !dbg !98, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !99
  br label %51, !dbg !99

; <label>:51:                                     ; preds = %28, %45
  %52 = phi i8* [ %10, %28 ], [ %50, %45 ], !dbg !84
  %53 = phi i8* [ %12, %28 ], [ %48, %45 ], !dbg !84
  %54 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !100
  %55 = load i8, i8* %53, align 1, !dbg !101, !tbaa !53
  %56 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !102
  store i8 %55, i8* %52, align 1, !dbg !103, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !104
  br label %57, !dbg !104

; <label>:57:                                     ; preds = %28, %51
  %58 = phi i8* [ %10, %28 ], [ %56, %51 ], !dbg !84
  %59 = phi i8* [ %12, %28 ], [ %54, %51 ], !dbg !84
  %60 = getelementptr inbounds i8, i8* %59, i64 1, !dbg !105
  %61 = load i8, i8* %59, align 1, !dbg !106, !tbaa !53
  %62 = getelementptr inbounds i8, i8* %58, i64 1, !dbg !107
  store i8 %61, i8* %58, align 1, !dbg !108, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !109
  br label %63, !dbg !109

; <label>:63:                                     ; preds = %28, %57
  %64 = phi i8* [ %10, %28 ], [ %62, %57 ], !dbg !84
  %65 = phi i8* [ %12, %28 ], [ %60, %57 ], !dbg !84
  %66 = getelementptr inbounds i8, i8* %65, i64 1, !dbg !110
  %67 = load i8, i8* %65, align 1, !dbg !111, !tbaa !53
  %68 = getelementptr inbounds i8, i8* %64, i64 1, !dbg !112
  store i8 %67, i8* %64, align 1, !dbg !113, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br label %69, !dbg !114

; <label>:69:                                     ; preds = %28, %63
  %70 = phi i8* [ %10, %28 ], [ %68, %63 ], !dbg !84
  %71 = phi i8* [ %12, %28 ], [ %66, %63 ], !dbg !84
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !115
  %73 = load i8, i8* %71, align 1, !dbg !116, !tbaa !53
  %74 = getelementptr inbounds i8, i8* %70, i64 1, !dbg !117
  store i8 %73, i8* %70, align 1, !dbg !118, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !119
  br label %75, !dbg !119

; <label>:75:                                     ; preds = %28, %69
  %76 = phi i8* [ %10, %28 ], [ %74, %69 ], !dbg !84
  %77 = phi i8* [ %12, %28 ], [ %72, %69 ], !dbg !84
  %78 = getelementptr inbounds i8, i8* %77, i64 1, !dbg !120
  %79 = load i8, i8* %77, align 1, !dbg !121, !tbaa !53
  %80 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !122
  store i8 %79, i8* %76, align 1, !dbg !123, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !124
  br label %81, !dbg !124

; <label>:81:                                     ; preds = %28, %75
  %82 = phi i8* [ %10, %28 ], [ %80, %75 ], !dbg !84
  %83 = phi i8* [ %12, %28 ], [ %78, %75 ], !dbg !84
  %84 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !125
  %85 = load i8, i8* %83, align 1, !dbg !126, !tbaa !53
  %86 = getelementptr inbounds i8, i8* %82, i64 1, !dbg !127
  store i8 %85, i8* %82, align 1, !dbg !128, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !129
  br label %87, !dbg !129

; <label>:87:                                     ; preds = %28, %81
  %88 = phi i8* [ %10, %28 ], [ %86, %81 ], !dbg !84
  %89 = phi i8* [ %12, %28 ], [ %84, %81 ], !dbg !84
  %90 = getelementptr inbounds i8, i8* %89, i64 1, !dbg !130
  %91 = load i8, i8* %89, align 1, !dbg !131, !tbaa !53
  %92 = getelementptr inbounds i8, i8* %88, i64 1, !dbg !132
  store i8 %91, i8* %88, align 1, !dbg !133, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !134
  br label %93, !dbg !134

; <label>:93:                                     ; preds = %28, %87
  %94 = phi i8* [ %10, %28 ], [ %92, %87 ], !dbg !84
  %95 = phi i8* [ %12, %28 ], [ %90, %87 ], !dbg !84
  %96 = getelementptr inbounds i8, i8* %95, i64 1, !dbg !135
  %97 = load i8, i8* %95, align 1, !dbg !136, !tbaa !53
  %98 = getelementptr inbounds i8, i8* %94, i64 1, !dbg !137
  store i8 %97, i8* %94, align 1, !dbg !138, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %99, !dbg !139

; <label>:99:                                     ; preds = %28, %93
  %100 = phi i8* [ %10, %28 ], [ %98, %93 ], !dbg !84
  %101 = phi i8* [ %12, %28 ], [ %96, %93 ], !dbg !84
  %102 = getelementptr inbounds i8, i8* %101, i64 1, !dbg !140
  %103 = load i8, i8* %101, align 1, !dbg !141, !tbaa !53
  %104 = getelementptr inbounds i8, i8* %100, i64 1, !dbg !142
  store i8 %103, i8* %100, align 1, !dbg !143, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !144
  br label %105, !dbg !144

; <label>:105:                                    ; preds = %28, %99
  %106 = phi i8* [ %10, %28 ], [ %104, %99 ], !dbg !84
  %107 = phi i8* [ %12, %28 ], [ %102, %99 ], !dbg !84
  %108 = getelementptr inbounds i8, i8* %107, i64 1, !dbg !145
  %109 = load i8, i8* %107, align 1, !dbg !146, !tbaa !53
  %110 = getelementptr inbounds i8, i8* %106, i64 1, !dbg !147
  store i8 %109, i8* %106, align 1, !dbg !148, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !149
  br label %111, !dbg !149

; <label>:111:                                    ; preds = %28, %105
  %112 = phi i8* [ %10, %28 ], [ %110, %105 ], !dbg !84
  %113 = phi i8* [ %12, %28 ], [ %108, %105 ], !dbg !84
  %114 = getelementptr inbounds i8, i8* %113, i64 1, !dbg !150
  %115 = load i8, i8* %113, align 1, !dbg !151, !tbaa !53
  %116 = getelementptr inbounds i8, i8* %112, i64 1, !dbg !152
  store i8 %115, i8* %112, align 1, !dbg !153, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  br label %117, !dbg !154

; <label>:117:                                    ; preds = %28, %111
  %118 = phi i8* [ %10, %28 ], [ %116, %111 ], !dbg !84
  %119 = phi i8* [ %12, %28 ], [ %114, %111 ], !dbg !84
  %120 = getelementptr inbounds i8, i8* %119, i64 1, !dbg !155
  %121 = load i8, i8* %119, align 1, !dbg !156, !tbaa !53
  %122 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !157
  store i8 %121, i8* %118, align 1, !dbg !158, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  br label %123, !dbg !159

; <label>:123:                                    ; preds = %28, %117
  %124 = phi i8* [ %10, %28 ], [ %122, %117 ], !dbg !84
  %125 = phi i8* [ %12, %28 ], [ %120, %117 ], !dbg !84
  %126 = getelementptr inbounds i8, i8* %125, i64 1, !dbg !160
  %127 = load i8, i8* %125, align 1, !dbg !161, !tbaa !53
  %128 = getelementptr inbounds i8, i8* %124, i64 1, !dbg !162
  store i8 %127, i8* %124, align 1, !dbg !163, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  br label %129, !dbg !164

; <label>:129:                                    ; preds = %28, %123
  %130 = phi i8* [ %10, %28 ], [ %128, %123 ], !dbg !84
  %131 = phi i8* [ %12, %28 ], [ %126, %123 ], !dbg !84
  %132 = getelementptr inbounds i8, i8* %131, i64 1, !dbg !165
  %133 = load i8, i8* %131, align 1, !dbg !166, !tbaa !53
  %134 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !167
  store i8 %133, i8* %130, align 1, !dbg !168, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  br label %135, !dbg !169

; <label>:135:                                    ; preds = %28, %129
  %136 = phi i8* [ %10, %28 ], [ %134, %129 ], !dbg !84
  %137 = phi i8* [ %12, %28 ], [ %132, %129 ], !dbg !84
  %138 = getelementptr inbounds i8, i8* %137, i64 1, !dbg !170
  %139 = load i8, i8* %137, align 1, !dbg !171, !tbaa !53
  %140 = getelementptr inbounds i8, i8* %136, i64 1, !dbg !172
  store i8 %139, i8* %136, align 1, !dbg !173, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  br label %141, !dbg !174

; <label>:141:                                    ; preds = %28, %135
  %142 = phi i8* [ %10, %28 ], [ %140, %135 ], !dbg !84
  %143 = phi i8* [ %12, %28 ], [ %138, %135 ], !dbg !84
  %144 = getelementptr inbounds i8, i8* %143, i64 1, !dbg !175
  %145 = load i8, i8* %143, align 1, !dbg !176, !tbaa !53
  %146 = getelementptr inbounds i8, i8* %142, i64 1, !dbg !177
  store i8 %145, i8* %142, align 1, !dbg !178, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !179
  br label %147, !dbg !179

; <label>:147:                                    ; preds = %28, %141
  %148 = phi i8* [ %10, %28 ], [ %146, %141 ], !dbg !84
  %149 = phi i8* [ %12, %28 ], [ %144, %141 ], !dbg !84
  %150 = getelementptr inbounds i8, i8* %149, i64 1, !dbg !180
  %151 = load i8, i8* %149, align 1, !dbg !181, !tbaa !53
  %152 = getelementptr inbounds i8, i8* %148, i64 1, !dbg !182
  store i8 %151, i8* %148, align 1, !dbg !183, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !184
  br label %153, !dbg !184

; <label>:153:                                    ; preds = %28, %147
  %154 = phi i8* [ %10, %28 ], [ %152, %147 ], !dbg !84
  %155 = phi i8* [ %12, %28 ], [ %150, %147 ], !dbg !84
  %156 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !185
  %157 = load i8, i8* %155, align 1, !dbg !186, !tbaa !53
  %158 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !187
  store i8 %157, i8* %154, align 1, !dbg !188, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !189
  br label %159, !dbg !189

; <label>:159:                                    ; preds = %28, %153
  %160 = phi i8* [ %10, %28 ], [ %158, %153 ], !dbg !84
  %161 = phi i8* [ %12, %28 ], [ %156, %153 ], !dbg !84
  %162 = getelementptr inbounds i8, i8* %161, i64 1, !dbg !190
  %163 = load i8, i8* %161, align 1, !dbg !191, !tbaa !53
  %164 = getelementptr inbounds i8, i8* %160, i64 1, !dbg !192
  store i8 %163, i8* %160, align 1, !dbg !193, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !194
  br label %165, !dbg !194

; <label>:165:                                    ; preds = %28, %159
  %166 = phi i8* [ %10, %28 ], [ %164, %159 ], !dbg !84
  %167 = phi i8* [ %12, %28 ], [ %162, %159 ], !dbg !84
  %168 = getelementptr inbounds i8, i8* %167, i64 1, !dbg !195
  %169 = load i8, i8* %167, align 1, !dbg !196, !tbaa !53
  %170 = getelementptr inbounds i8, i8* %166, i64 1, !dbg !197
  store i8 %169, i8* %166, align 1, !dbg !198, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  br label %171, !dbg !199

; <label>:171:                                    ; preds = %28, %165
  %172 = phi i8* [ %10, %28 ], [ %170, %165 ], !dbg !84
  %173 = phi i8* [ %12, %28 ], [ %168, %165 ], !dbg !84
  %174 = getelementptr inbounds i8, i8* %173, i64 1, !dbg !200
  %175 = load i8, i8* %173, align 1, !dbg !201, !tbaa !53
  %176 = getelementptr inbounds i8, i8* %172, i64 1, !dbg !202
  store i8 %175, i8* %172, align 1, !dbg !203, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !204
  br label %177, !dbg !204

; <label>:177:                                    ; preds = %28, %171
  %178 = phi i8* [ %10, %28 ], [ %176, %171 ], !dbg !84
  %179 = phi i8* [ %12, %28 ], [ %174, %171 ], !dbg !84
  %180 = getelementptr inbounds i8, i8* %179, i64 1, !dbg !205
  %181 = load i8, i8* %179, align 1, !dbg !206, !tbaa !53
  %182 = getelementptr inbounds i8, i8* %178, i64 1, !dbg !207
  store i8 %181, i8* %178, align 1, !dbg !208, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !209
  br label %183, !dbg !209

; <label>:183:                                    ; preds = %28, %177
  %184 = phi i8* [ %10, %28 ], [ %182, %177 ], !dbg !84
  %185 = phi i8* [ %12, %28 ], [ %180, %177 ], !dbg !84
  %186 = getelementptr inbounds i8, i8* %185, i64 1, !dbg !210
  %187 = load i8, i8* %185, align 1, !dbg !211, !tbaa !53
  %188 = getelementptr inbounds i8, i8* %184, i64 1, !dbg !212
  store i8 %187, i8* %184, align 1, !dbg !213, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  br label %189, !dbg !214

; <label>:189:                                    ; preds = %28, %183
  %190 = phi i8* [ %10, %28 ], [ %188, %183 ], !dbg !84
  %191 = phi i8* [ %12, %28 ], [ %186, %183 ], !dbg !84
  %192 = getelementptr inbounds i8, i8* %191, i64 1, !dbg !215
  %193 = load i8, i8* %191, align 1, !dbg !216, !tbaa !53
  %194 = getelementptr inbounds i8, i8* %190, i64 1, !dbg !217
  store i8 %193, i8* %190, align 1, !dbg !218, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br label %195, !dbg !219

; <label>:195:                                    ; preds = %28, %189
  %196 = phi i8* [ %10, %28 ], [ %194, %189 ], !dbg !84
  %197 = phi i8* [ %12, %28 ], [ %192, %189 ], !dbg !84
  %198 = getelementptr inbounds i8, i8* %197, i64 1, !dbg !220
  %199 = load i8, i8* %197, align 1, !dbg !221, !tbaa !53
  %200 = getelementptr inbounds i8, i8* %196, i64 1, !dbg !222
  store i8 %199, i8* %196, align 1, !dbg !223, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !224
  br label %201, !dbg !224

; <label>:201:                                    ; preds = %28, %195
  %202 = phi i8* [ %10, %28 ], [ %200, %195 ], !dbg !84
  %203 = phi i8* [ %12, %28 ], [ %198, %195 ], !dbg !84
  %204 = getelementptr inbounds i8, i8* %203, i64 1, !dbg !225
  %205 = load i8, i8* %203, align 1, !dbg !226, !tbaa !53
  %206 = getelementptr inbounds i8, i8* %202, i64 1, !dbg !227
  store i8 %205, i8* %202, align 1, !dbg !228, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !229
  br label %207, !dbg !229

; <label>:207:                                    ; preds = %28, %201
  %208 = phi i8* [ %10, %28 ], [ %206, %201 ], !dbg !84
  %209 = phi i8* [ %12, %28 ], [ %204, %201 ], !dbg !84
  %210 = getelementptr inbounds i8, i8* %209, i64 1, !dbg !230
  %211 = load i8, i8* %209, align 1, !dbg !231, !tbaa !53
  %212 = getelementptr inbounds i8, i8* %208, i64 1, !dbg !232
  store i8 %211, i8* %208, align 1, !dbg !233, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !234
  br label %213, !dbg !234

; <label>:213:                                    ; preds = %28, %207
  %214 = phi i8* [ %10, %28 ], [ %212, %207 ], !dbg !84
  %215 = phi i8* [ %12, %28 ], [ %210, %207 ], !dbg !84
  %216 = load i8, i8* %215, align 1, !dbg !235, !tbaa !53
  %217 = getelementptr inbounds i8, i8* %214, i64 1, !dbg !236
  store i8 %216, i8* %214, align 1, !dbg !237, !tbaa !53
  br label %367, !dbg !238

; <label>:218:                                    ; preds = %9
  %219 = lshr i32 %14, 5, !dbg !239
  %220 = shl nuw nsw i32 %14, 8, !dbg !241
  %221 = and i32 %220, 7936, !dbg !241
  %222 = zext i32 %221 to i64, !dbg !242
  %223 = sub nsw i64 0, %222, !dbg !242
  %224 = getelementptr inbounds i8, i8* %10, i64 -1, !dbg !242
  %225 = getelementptr inbounds i8, i8* %224, i64 %223, !dbg !243
  %226 = icmp ult i8* %12, %6, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !247
  br i1 %226, label %227, label %358, !dbg !247

; <label>:227:                                    ; preds = %218
  %228 = icmp eq i32 %219, 7, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !250
  br i1 %228, label %229, label %235, !dbg !250

; <label>:229:                                    ; preds = %227
  %230 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !251
  %231 = load i8, i8* %12, align 1, !dbg !253, !tbaa !53
  %232 = zext i8 %231 to i32, !dbg !253
  %233 = add nuw nsw i32 %232, 7, !dbg !254
  %234 = icmp ult i8* %230, %6, !dbg !255
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  br i1 %234, label %235, label %358, !dbg !257

; <label>:235:                                    ; preds = %229, %227
  %236 = phi i8* [ %230, %229 ], [ %12, %227 ], !dbg !50
  %237 = phi i32 [ %233, %229 ], [ %219, %227 ], !dbg !258
  %238 = load i8, i8* %236, align 1, !dbg !259, !tbaa !53
  %239 = zext i8 %238 to i64, !dbg !260
  %240 = sub nsw i64 0, %239, !dbg !260
  %241 = getelementptr inbounds i8, i8* %225, i64 %240, !dbg !260
  %242 = zext i32 %237 to i64, !dbg !261
  %243 = getelementptr inbounds i8, i8* %10, i64 2, !dbg !261
  %244 = getelementptr inbounds i8, i8* %243, i64 %242, !dbg !263
  %245 = icmp ugt i8* %244, %8, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  br i1 %245, label %358, label %246, !dbg !265

; <label>:246:                                    ; preds = %235
  %247 = icmp ult i8* %241, %2, !dbg !266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  br i1 %247, label %358, label %248, !dbg !268

; <label>:248:                                    ; preds = %246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  switch i32 %237, label %249 [
    i32 9, label %297
    i32 8, label %301
    i32 7, label %307
    i32 6, label %313
    i32 5, label %319
    i32 4, label %325
    i32 3, label %331
    i32 2, label %337
    i32 1, label %343
    i32 0, label %350
  ], !dbg !269

; <label>:249:                                    ; preds = %248
  %250 = add nsw i32 %237, 2, !dbg !270
  %251 = zext i32 %250 to i64, !dbg !272
  %252 = getelementptr inbounds i8, i8* %241, i64 %251, !dbg !272
  %253 = icmp ult i8* %10, %252, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %253, label %254, label %276, !dbg !275

; <label>:254:                                    ; preds = %249
  %255 = add nsw i32 %237, 1, !dbg !276
  %256 = zext i32 %255 to i64, !dbg !276
  %257 = add nsw i32 %237, 1, !dbg !276
  %258 = and i32 %250, 3, !dbg !276
  %259 = icmp eq i32 %258, 0, !dbg !276
  br i1 %259, label %271, label %260, !dbg !276

; <label>:260:                                    ; preds = %254, %260
  %261 = phi i8* [ %267, %260 ], [ %10, %254 ], !dbg !278
  %262 = phi i32 [ %268, %260 ], [ %250, %254 ], !dbg !278
  %263 = phi i8* [ %265, %260 ], [ %241, %254 ], !dbg !278
  %264 = phi i32 [ %269, %260 ], [ %258, %254 ]
  %265 = getelementptr inbounds i8, i8* %263, i64 1, !dbg !276
  %266 = load i8, i8* %263, align 1, !dbg !279, !tbaa !53
  %267 = getelementptr inbounds i8, i8* %261, i64 1, !dbg !280
  store i8 %266, i8* %261, align 1, !dbg !281, !tbaa !53
  %268 = add i32 %262, -1, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %269 = add i32 %264, -1, !dbg !283
  %270 = icmp eq i32 %269, 0, !dbg !283
  br i1 %270, label %271, label %260, !dbg !283, !llvm.loop !284

; <label>:271:                                    ; preds = %260, %254
  %272 = phi i8* [ %10, %254 ], [ %267, %260 ]
  %273 = phi i32 [ %250, %254 ], [ %268, %260 ]
  %274 = phi i8* [ %241, %254 ], [ %265, %260 ]
  %275 = icmp ult i32 %257, 3, !dbg !276
  br i1 %275, label %361, label %279, !dbg !276

; <label>:276:                                    ; preds = %249
  %277 = tail call i8* @memcpy(i8* %10, i8* nonnull %241, i64 %251) #3, !dbg !286
  %278 = getelementptr inbounds i8, i8* %10, i64 %251, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br label %364, !dbg !289

; <label>:279:                                    ; preds = %271, %279
  %280 = phi i8* [ %294, %279 ], [ %272, %271 ], !dbg !278
  %281 = phi i32 [ %295, %279 ], [ %273, %271 ], !dbg !278
  %282 = phi i8* [ %292, %279 ], [ %274, %271 ], !dbg !278
  %283 = getelementptr inbounds i8, i8* %282, i64 1, !dbg !276
  %284 = load i8, i8* %282, align 1, !dbg !279, !tbaa !53
  %285 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !280
  store i8 %284, i8* %280, align 1, !dbg !281, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %286 = getelementptr inbounds i8, i8* %282, i64 2, !dbg !276
  %287 = load i8, i8* %283, align 1, !dbg !279, !tbaa !53
  %288 = getelementptr inbounds i8, i8* %280, i64 2, !dbg !280
  store i8 %287, i8* %285, align 1, !dbg !281, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %289 = getelementptr inbounds i8, i8* %282, i64 3, !dbg !276
  %290 = load i8, i8* %286, align 1, !dbg !279, !tbaa !53
  %291 = getelementptr inbounds i8, i8* %280, i64 3, !dbg !280
  store i8 %290, i8* %288, align 1, !dbg !281, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  %292 = getelementptr inbounds i8, i8* %282, i64 4, !dbg !276
  %293 = load i8, i8* %289, align 1, !dbg !279, !tbaa !53
  %294 = getelementptr inbounds i8, i8* %280, i64 4, !dbg !280
  store i8 %293, i8* %291, align 1, !dbg !281, !tbaa !53
  %295 = add i32 %281, -4, !dbg !282
  %296 = icmp eq i32 %295, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %296, label %361, label %279, !dbg !283, !llvm.loop !290

; <label>:297:                                    ; preds = %248
  %298 = getelementptr inbounds i8, i8* %241, i64 1, !dbg !293
  %299 = load i8, i8* %241, align 1, !dbg !294, !tbaa !53
  %300 = getelementptr inbounds i8, i8* %10, i64 1, !dbg !295
  store i8 %299, i8* %10, align 1, !dbg !296, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br label %301, !dbg !297

; <label>:301:                                    ; preds = %248, %297
  %302 = phi i8* [ %10, %248 ], [ %300, %297 ], !dbg !298
  %303 = phi i8* [ %241, %248 ], [ %298, %297 ], !dbg !298
  %304 = getelementptr inbounds i8, i8* %303, i64 1, !dbg !299
  %305 = load i8, i8* %303, align 1, !dbg !300, !tbaa !53
  %306 = getelementptr inbounds i8, i8* %302, i64 1, !dbg !301
  store i8 %305, i8* %302, align 1, !dbg !302, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br label %307, !dbg !303

; <label>:307:                                    ; preds = %248, %301
  %308 = phi i8* [ %10, %248 ], [ %306, %301 ], !dbg !298
  %309 = phi i8* [ %241, %248 ], [ %304, %301 ], !dbg !298
  %310 = getelementptr inbounds i8, i8* %309, i64 1, !dbg !304
  %311 = load i8, i8* %309, align 1, !dbg !305, !tbaa !53
  %312 = getelementptr inbounds i8, i8* %308, i64 1, !dbg !306
  store i8 %311, i8* %308, align 1, !dbg !307, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br label %313, !dbg !308

; <label>:313:                                    ; preds = %248, %307
  %314 = phi i8* [ %10, %248 ], [ %312, %307 ], !dbg !298
  %315 = phi i8* [ %241, %248 ], [ %310, %307 ], !dbg !298
  %316 = getelementptr inbounds i8, i8* %315, i64 1, !dbg !309
  %317 = load i8, i8* %315, align 1, !dbg !310, !tbaa !53
  %318 = getelementptr inbounds i8, i8* %314, i64 1, !dbg !311
  store i8 %317, i8* %314, align 1, !dbg !312, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br label %319, !dbg !313

; <label>:319:                                    ; preds = %248, %313
  %320 = phi i8* [ %10, %248 ], [ %318, %313 ], !dbg !298
  %321 = phi i8* [ %241, %248 ], [ %316, %313 ], !dbg !298
  %322 = getelementptr inbounds i8, i8* %321, i64 1, !dbg !314
  %323 = load i8, i8* %321, align 1, !dbg !315, !tbaa !53
  %324 = getelementptr inbounds i8, i8* %320, i64 1, !dbg !316
  store i8 %323, i8* %320, align 1, !dbg !317, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  br label %325, !dbg !318

; <label>:325:                                    ; preds = %248, %319
  %326 = phi i8* [ %10, %248 ], [ %324, %319 ], !dbg !298
  %327 = phi i8* [ %241, %248 ], [ %322, %319 ], !dbg !298
  %328 = getelementptr inbounds i8, i8* %327, i64 1, !dbg !319
  %329 = load i8, i8* %327, align 1, !dbg !320, !tbaa !53
  %330 = getelementptr inbounds i8, i8* %326, i64 1, !dbg !321
  store i8 %329, i8* %326, align 1, !dbg !322, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !323
  br label %331, !dbg !323

; <label>:331:                                    ; preds = %248, %325
  %332 = phi i8* [ %10, %248 ], [ %330, %325 ], !dbg !298
  %333 = phi i8* [ %241, %248 ], [ %328, %325 ], !dbg !298
  %334 = getelementptr inbounds i8, i8* %333, i64 1, !dbg !324
  %335 = load i8, i8* %333, align 1, !dbg !325, !tbaa !53
  %336 = getelementptr inbounds i8, i8* %332, i64 1, !dbg !326
  store i8 %335, i8* %332, align 1, !dbg !327, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br label %337, !dbg !328

; <label>:337:                                    ; preds = %248, %331
  %338 = phi i8* [ %10, %248 ], [ %336, %331 ], !dbg !298
  %339 = phi i8* [ %241, %248 ], [ %334, %331 ], !dbg !298
  %340 = getelementptr inbounds i8, i8* %339, i64 1, !dbg !329
  %341 = load i8, i8* %339, align 1, !dbg !330, !tbaa !53
  %342 = getelementptr inbounds i8, i8* %338, i64 1, !dbg !331
  store i8 %341, i8* %338, align 1, !dbg !332, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %343, !dbg !333

; <label>:343:                                    ; preds = %248, %337
  %344 = phi i8* [ %10, %248 ], [ %342, %337 ], !dbg !298
  %345 = phi i8* [ %241, %248 ], [ %340, %337 ], !dbg !298
  %346 = getelementptr inbounds i8, i8* %345, i64 1, !dbg !334
  %347 = load i8, i8* %345, align 1, !dbg !335, !tbaa !53
  %348 = getelementptr inbounds i8, i8* %344, i64 1, !dbg !336
  store i8 %347, i8* %344, align 1, !dbg !337, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  %349 = getelementptr inbounds i8, i8* %344, i64 3, !dbg !339
  br label %350, !dbg !338

; <label>:350:                                    ; preds = %248, %343
  %351 = phi i8* [ %243, %248 ], [ %349, %343 ], !dbg !339
  %352 = phi i8* [ %10, %248 ], [ %348, %343 ], !dbg !298
  %353 = phi i8* [ %241, %248 ], [ %346, %343 ], !dbg !298
  %354 = getelementptr inbounds i8, i8* %353, i64 1, !dbg !340
  %355 = load i8, i8* %353, align 1, !dbg !341, !tbaa !53
  %356 = getelementptr inbounds i8, i8* %352, i64 1, !dbg !342
  store i8 %355, i8* %352, align 1, !dbg !343, !tbaa !53
  %357 = load i8, i8* %354, align 1, !dbg !344, !tbaa !53
  store i8 %357, i8* %356, align 1, !dbg !345, !tbaa !53
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br label %364, !dbg !346

; <label>:358:                                    ; preds = %246, %235, %229, %218
  %359 = phi i32 [ 22, %218 ], [ 22, %229 ], [ 7, %235 ], [ 22, %246 ]
  %360 = tail call i32* @__errno() #3, !dbg !347
  store i32 %359, i32* %360, align 4, !dbg !347, !tbaa !67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  br label %366

; <label>:361:                                    ; preds = %279, %271
  %362 = getelementptr i8, i8* %10, i64 1, !dbg !276
  %363 = getelementptr i8, i8* %362, i64 %256, !dbg !276
  br label %364, !dbg !349

; <label>:364:                                    ; preds = %361, %350, %276
  %365 = phi i8* [ %278, %276 ], [ %351, %350 ], [ %363, %361 ], !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  br label %367

; <label>:366:                                    ; preds = %21, %26, %358
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %380

; <label>:367:                                    ; preds = %213, %364
  %368 = phi i8* [ %365, %364 ], [ %217, %213 ]
  %369 = phi i8* [ %236, %364 ], [ %215, %213 ]
  %370 = getelementptr inbounds i8, i8* %369, i64 1, !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %371, !dbg !350

; <label>:371:                                    ; preds = %367, %28
  %372 = phi i8* [ %10, %28 ], [ %368, %367 ], !dbg !351
  %373 = phi i8* [ %12, %28 ], [ %370, %367 ], !dbg !50
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %374 = icmp ult i8* %373, %6, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %374, label %9, label %375, !dbg !353, !llvm.loop !354

; <label>:375:                                    ; preds = %371
  %376 = ptrtoint i8* %372 to i64, !dbg !356
  %377 = ptrtoint i8* %2 to i64, !dbg !356
  %378 = sub i64 %376, %377, !dbg !356
  %379 = trunc i64 %378 to i32, !dbg !357
  br label %380, !dbg !358

; <label>:380:                                    ; preds = %366, %375
  %381 = phi i32 [ %379, %375 ], [ 0, %366 ], !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  ret i32 %381, !dbg !360
}

; Function Attrs: noredzone
declare dso_local i32* @__errno() local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzf_d.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !9}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !7, line: 160, baseType: !8)
!7 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/lzfP.h", directory: "/root/.unikraft/apps/redis/build")
!8 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!10 = !{i32 2, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!14 = distinct !DISubprogram(name: "lzf_decompress", scope: !1, file: !1, line: 60, type: !15, isLocal: false, isDefinition: true, scopeLine: 62, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !22)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !18, !17, !21, !17}
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !{!23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !38}
!23 = !DILocalVariable(name: "in_data", arg: 1, scope: !14, file: !1, line: 60, type: !18)
!24 = !DILocalVariable(name: "in_len", arg: 2, scope: !14, file: !1, line: 60, type: !17)
!25 = !DILocalVariable(name: "out_data", arg: 3, scope: !14, file: !1, line: 61, type: !21)
!26 = !DILocalVariable(name: "out_len", arg: 4, scope: !14, file: !1, line: 61, type: !17)
!27 = !DILocalVariable(name: "ip", scope: !14, file: !1, line: 63, type: !4)
!28 = !DILocalVariable(name: "op", scope: !14, file: !1, line: 64, type: !9)
!29 = !DILocalVariable(name: "in_end", scope: !14, file: !1, line: 65, type: !30)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!31 = !DILocalVariable(name: "out_end", scope: !14, file: !1, line: 66, type: !32)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!33 = !DILocalVariable(name: "ctrl", scope: !34, file: !1, line: 70, type: !17)
!34 = distinct !DILexicalBlock(scope: !14, file: !1, line: 69, column: 5)
!35 = !DILocalVariable(name: "len", scope: !36, file: !1, line: 108, type: !17)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 107, column: 9)
!37 = distinct !DILexicalBlock(scope: !34, file: !1, line: 72, column: 11)
!38 = !DILocalVariable(name: "ref", scope: !36, file: !1, line: 110, type: !9)
!39 = !DILocation(line: 60, column: 35, scope: !14)
!40 = !DILocation(line: 60, column: 58, scope: !14)
!41 = !DILocation(line: 61, column: 35, scope: !14)
!42 = !DILocation(line: 61, column: 58, scope: !14)
!43 = !DILocation(line: 63, column: 13, scope: !14)
!44 = !DILocation(line: 64, column: 13, scope: !14)
!45 = !DILocation(line: 65, column: 32, scope: !14)
!46 = !DILocation(line: 65, column: 19, scope: !14)
!47 = !DILocation(line: 66, column: 32, scope: !14)
!48 = !DILocation(line: 66, column: 19, scope: !14)
!49 = !DILocation(line: 68, column: 3, scope: !14)
!50 = !DILocation(line: 0, scope: !34)
!51 = !DILocation(line: 70, column: 30, scope: !34)
!52 = !DILocation(line: 70, column: 27, scope: !34)
!53 = !{!54, !54, i64 0}
!54 = !{!"omnipotent char", !55, i64 0}
!55 = !{!"Simple C/C++ TBAA"}
!56 = !DILocation(line: 70, column: 20, scope: !34)
!57 = !DILocation(line: 72, column: 16, scope: !37)
!58 = !DILocation(line: 72, column: 11, scope: !34)
!59 = !DILocation(line: 74, column: 15, scope: !60)
!60 = distinct !DILexicalBlock(scope: !37, file: !1, line: 73, column: 9)
!61 = !DILocation(line: 76, column: 18, scope: !62)
!62 = distinct !DILexicalBlock(scope: !60, file: !1, line: 76, column: 15)
!63 = !DILocation(line: 76, column: 25, scope: !62)
!64 = !DILocation(line: 76, column: 15, scope: !60)
!65 = !DILocation(line: 78, column: 15, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 77, column: 13)
!67 = !{!68, !68, i64 0}
!68 = !{!"int", !54, i64 0}
!69 = !DILocation(line: 79, column: 15, scope: !66)
!70 = !DILocation(line: 83, column: 18, scope: !71)
!71 = distinct !DILexicalBlock(scope: !60, file: !1, line: 83, column: 15)
!72 = !DILocation(line: 83, column: 25, scope: !71)
!73 = !DILocation(line: 83, column: 15, scope: !60)
!74 = !DILocation(line: 85, column: 15, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 84, column: 13)
!76 = !DILocation(line: 86, column: 15, scope: !75)
!77 = !DILocation(line: 93, column: 11, scope: !60)
!78 = !DILocation(line: 95, column: 35, scope: !79)
!79 = distinct !DILexicalBlock(scope: !60, file: !1, line: 94, column: 13)
!80 = !DILocation(line: 95, column: 32, scope: !79)
!81 = !DILocation(line: 95, column: 27, scope: !79)
!82 = !DILocation(line: 95, column: 30, scope: !79)
!83 = !DILocation(line: 95, column: 24, scope: !79)
!84 = !DILocation(line: 0, scope: !79)
!85 = !DILocation(line: 95, column: 59, scope: !79)
!86 = !DILocation(line: 95, column: 56, scope: !79)
!87 = !DILocation(line: 95, column: 51, scope: !79)
!88 = !DILocation(line: 95, column: 54, scope: !79)
!89 = !DILocation(line: 95, column: 48, scope: !79)
!90 = !DILocation(line: 95, column: 83, scope: !79)
!91 = !DILocation(line: 95, column: 80, scope: !79)
!92 = !DILocation(line: 95, column: 75, scope: !79)
!93 = !DILocation(line: 95, column: 78, scope: !79)
!94 = !DILocation(line: 95, column: 72, scope: !79)
!95 = !DILocation(line: 95, column: 107, scope: !79)
!96 = !DILocation(line: 95, column: 104, scope: !79)
!97 = !DILocation(line: 95, column: 99, scope: !79)
!98 = !DILocation(line: 95, column: 102, scope: !79)
!99 = !DILocation(line: 95, column: 96, scope: !79)
!100 = !DILocation(line: 96, column: 35, scope: !79)
!101 = !DILocation(line: 96, column: 32, scope: !79)
!102 = !DILocation(line: 96, column: 27, scope: !79)
!103 = !DILocation(line: 96, column: 30, scope: !79)
!104 = !DILocation(line: 96, column: 24, scope: !79)
!105 = !DILocation(line: 96, column: 59, scope: !79)
!106 = !DILocation(line: 96, column: 56, scope: !79)
!107 = !DILocation(line: 96, column: 51, scope: !79)
!108 = !DILocation(line: 96, column: 54, scope: !79)
!109 = !DILocation(line: 96, column: 48, scope: !79)
!110 = !DILocation(line: 96, column: 83, scope: !79)
!111 = !DILocation(line: 96, column: 80, scope: !79)
!112 = !DILocation(line: 96, column: 75, scope: !79)
!113 = !DILocation(line: 96, column: 78, scope: !79)
!114 = !DILocation(line: 96, column: 72, scope: !79)
!115 = !DILocation(line: 96, column: 107, scope: !79)
!116 = !DILocation(line: 96, column: 104, scope: !79)
!117 = !DILocation(line: 96, column: 99, scope: !79)
!118 = !DILocation(line: 96, column: 102, scope: !79)
!119 = !DILocation(line: 96, column: 96, scope: !79)
!120 = !DILocation(line: 97, column: 35, scope: !79)
!121 = !DILocation(line: 97, column: 32, scope: !79)
!122 = !DILocation(line: 97, column: 27, scope: !79)
!123 = !DILocation(line: 97, column: 30, scope: !79)
!124 = !DILocation(line: 97, column: 24, scope: !79)
!125 = !DILocation(line: 97, column: 59, scope: !79)
!126 = !DILocation(line: 97, column: 56, scope: !79)
!127 = !DILocation(line: 97, column: 51, scope: !79)
!128 = !DILocation(line: 97, column: 54, scope: !79)
!129 = !DILocation(line: 97, column: 48, scope: !79)
!130 = !DILocation(line: 97, column: 83, scope: !79)
!131 = !DILocation(line: 97, column: 80, scope: !79)
!132 = !DILocation(line: 97, column: 75, scope: !79)
!133 = !DILocation(line: 97, column: 78, scope: !79)
!134 = !DILocation(line: 97, column: 72, scope: !79)
!135 = !DILocation(line: 97, column: 107, scope: !79)
!136 = !DILocation(line: 97, column: 104, scope: !79)
!137 = !DILocation(line: 97, column: 99, scope: !79)
!138 = !DILocation(line: 97, column: 102, scope: !79)
!139 = !DILocation(line: 97, column: 96, scope: !79)
!140 = !DILocation(line: 98, column: 35, scope: !79)
!141 = !DILocation(line: 98, column: 32, scope: !79)
!142 = !DILocation(line: 98, column: 27, scope: !79)
!143 = !DILocation(line: 98, column: 30, scope: !79)
!144 = !DILocation(line: 98, column: 24, scope: !79)
!145 = !DILocation(line: 98, column: 59, scope: !79)
!146 = !DILocation(line: 98, column: 56, scope: !79)
!147 = !DILocation(line: 98, column: 51, scope: !79)
!148 = !DILocation(line: 98, column: 54, scope: !79)
!149 = !DILocation(line: 98, column: 48, scope: !79)
!150 = !DILocation(line: 98, column: 83, scope: !79)
!151 = !DILocation(line: 98, column: 80, scope: !79)
!152 = !DILocation(line: 98, column: 75, scope: !79)
!153 = !DILocation(line: 98, column: 78, scope: !79)
!154 = !DILocation(line: 98, column: 72, scope: !79)
!155 = !DILocation(line: 98, column: 107, scope: !79)
!156 = !DILocation(line: 98, column: 104, scope: !79)
!157 = !DILocation(line: 98, column: 99, scope: !79)
!158 = !DILocation(line: 98, column: 102, scope: !79)
!159 = !DILocation(line: 98, column: 96, scope: !79)
!160 = !DILocation(line: 99, column: 35, scope: !79)
!161 = !DILocation(line: 99, column: 32, scope: !79)
!162 = !DILocation(line: 99, column: 27, scope: !79)
!163 = !DILocation(line: 99, column: 30, scope: !79)
!164 = !DILocation(line: 99, column: 24, scope: !79)
!165 = !DILocation(line: 99, column: 59, scope: !79)
!166 = !DILocation(line: 99, column: 56, scope: !79)
!167 = !DILocation(line: 99, column: 51, scope: !79)
!168 = !DILocation(line: 99, column: 54, scope: !79)
!169 = !DILocation(line: 99, column: 48, scope: !79)
!170 = !DILocation(line: 99, column: 83, scope: !79)
!171 = !DILocation(line: 99, column: 80, scope: !79)
!172 = !DILocation(line: 99, column: 75, scope: !79)
!173 = !DILocation(line: 99, column: 78, scope: !79)
!174 = !DILocation(line: 99, column: 72, scope: !79)
!175 = !DILocation(line: 99, column: 107, scope: !79)
!176 = !DILocation(line: 99, column: 104, scope: !79)
!177 = !DILocation(line: 99, column: 99, scope: !79)
!178 = !DILocation(line: 99, column: 102, scope: !79)
!179 = !DILocation(line: 99, column: 96, scope: !79)
!180 = !DILocation(line: 100, column: 35, scope: !79)
!181 = !DILocation(line: 100, column: 32, scope: !79)
!182 = !DILocation(line: 100, column: 27, scope: !79)
!183 = !DILocation(line: 100, column: 30, scope: !79)
!184 = !DILocation(line: 100, column: 24, scope: !79)
!185 = !DILocation(line: 100, column: 59, scope: !79)
!186 = !DILocation(line: 100, column: 56, scope: !79)
!187 = !DILocation(line: 100, column: 51, scope: !79)
!188 = !DILocation(line: 100, column: 54, scope: !79)
!189 = !DILocation(line: 100, column: 48, scope: !79)
!190 = !DILocation(line: 100, column: 83, scope: !79)
!191 = !DILocation(line: 100, column: 80, scope: !79)
!192 = !DILocation(line: 100, column: 75, scope: !79)
!193 = !DILocation(line: 100, column: 78, scope: !79)
!194 = !DILocation(line: 100, column: 72, scope: !79)
!195 = !DILocation(line: 100, column: 107, scope: !79)
!196 = !DILocation(line: 100, column: 104, scope: !79)
!197 = !DILocation(line: 100, column: 99, scope: !79)
!198 = !DILocation(line: 100, column: 102, scope: !79)
!199 = !DILocation(line: 100, column: 96, scope: !79)
!200 = !DILocation(line: 101, column: 35, scope: !79)
!201 = !DILocation(line: 101, column: 32, scope: !79)
!202 = !DILocation(line: 101, column: 27, scope: !79)
!203 = !DILocation(line: 101, column: 30, scope: !79)
!204 = !DILocation(line: 101, column: 24, scope: !79)
!205 = !DILocation(line: 101, column: 59, scope: !79)
!206 = !DILocation(line: 101, column: 56, scope: !79)
!207 = !DILocation(line: 101, column: 51, scope: !79)
!208 = !DILocation(line: 101, column: 54, scope: !79)
!209 = !DILocation(line: 101, column: 48, scope: !79)
!210 = !DILocation(line: 101, column: 83, scope: !79)
!211 = !DILocation(line: 101, column: 80, scope: !79)
!212 = !DILocation(line: 101, column: 75, scope: !79)
!213 = !DILocation(line: 101, column: 78, scope: !79)
!214 = !DILocation(line: 101, column: 72, scope: !79)
!215 = !DILocation(line: 101, column: 107, scope: !79)
!216 = !DILocation(line: 101, column: 104, scope: !79)
!217 = !DILocation(line: 101, column: 99, scope: !79)
!218 = !DILocation(line: 101, column: 102, scope: !79)
!219 = !DILocation(line: 101, column: 96, scope: !79)
!220 = !DILocation(line: 102, column: 35, scope: !79)
!221 = !DILocation(line: 102, column: 32, scope: !79)
!222 = !DILocation(line: 102, column: 27, scope: !79)
!223 = !DILocation(line: 102, column: 30, scope: !79)
!224 = !DILocation(line: 102, column: 24, scope: !79)
!225 = !DILocation(line: 102, column: 59, scope: !79)
!226 = !DILocation(line: 102, column: 56, scope: !79)
!227 = !DILocation(line: 102, column: 51, scope: !79)
!228 = !DILocation(line: 102, column: 54, scope: !79)
!229 = !DILocation(line: 102, column: 48, scope: !79)
!230 = !DILocation(line: 102, column: 83, scope: !79)
!231 = !DILocation(line: 102, column: 80, scope: !79)
!232 = !DILocation(line: 102, column: 75, scope: !79)
!233 = !DILocation(line: 102, column: 78, scope: !79)
!234 = !DILocation(line: 102, column: 72, scope: !79)
!235 = !DILocation(line: 102, column: 104, scope: !79)
!236 = !DILocation(line: 102, column: 99, scope: !79)
!237 = !DILocation(line: 102, column: 102, scope: !79)
!238 = !DILocation(line: 103, column: 13, scope: !79)
!239 = !DILocation(line: 108, column: 35, scope: !36)
!240 = !DILocation(line: 108, column: 24, scope: !36)
!241 = !DILocation(line: 110, column: 41, scope: !36)
!242 = !DILocation(line: 110, column: 24, scope: !36)
!243 = !DILocation(line: 110, column: 47, scope: !36)
!244 = !DILocation(line: 110, column: 15, scope: !36)
!245 = !DILocation(line: 113, column: 18, scope: !246)
!246 = distinct !DILexicalBlock(scope: !36, file: !1, line: 113, column: 15)
!247 = !DILocation(line: 113, column: 15, scope: !36)
!248 = !DILocation(line: 119, column: 19, scope: !249)
!249 = distinct !DILexicalBlock(scope: !36, file: !1, line: 119, column: 15)
!250 = !DILocation(line: 119, column: 15, scope: !36)
!251 = !DILocation(line: 121, column: 25, scope: !252)
!252 = distinct !DILexicalBlock(scope: !249, file: !1, line: 120, column: 13)
!253 = !DILocation(line: 121, column: 22, scope: !252)
!254 = !DILocation(line: 121, column: 19, scope: !252)
!255 = !DILocation(line: 123, column: 22, scope: !256)
!256 = distinct !DILexicalBlock(scope: !252, file: !1, line: 123, column: 19)
!257 = !DILocation(line: 123, column: 19, scope: !252)
!258 = !DILocation(line: 0, scope: !36)
!259 = !DILocation(line: 131, column: 18, scope: !36)
!260 = !DILocation(line: 131, column: 15, scope: !36)
!261 = !DILocation(line: 133, column: 18, scope: !262)
!262 = distinct !DILexicalBlock(scope: !36, file: !1, line: 133, column: 15)
!263 = !DILocation(line: 133, column: 24, scope: !262)
!264 = !DILocation(line: 133, column: 28, scope: !262)
!265 = !DILocation(line: 133, column: 15, scope: !36)
!266 = !DILocation(line: 139, column: 19, scope: !267)
!267 = distinct !DILexicalBlock(scope: !36, file: !1, line: 139, column: 15)
!268 = !DILocation(line: 139, column: 15, scope: !36)
!269 = !DILocation(line: 149, column: 11, scope: !36)
!270 = !DILocation(line: 152, column: 21, scope: !271)
!271 = distinct !DILexicalBlock(scope: !36, file: !1, line: 150, column: 13)
!272 = !DILocation(line: 154, column: 31, scope: !273)
!273 = distinct !DILexicalBlock(scope: !271, file: !1, line: 154, column: 21)
!274 = !DILocation(line: 154, column: 24, scope: !273)
!275 = !DILocation(line: 154, column: 21, scope: !271)
!276 = !DILocation(line: 164, column: 35, scope: !277)
!277 = distinct !DILexicalBlock(scope: !273, file: !1, line: 161, column: 19)
!278 = !DILocation(line: 0, scope: !277)
!279 = !DILocation(line: 164, column: 31, scope: !277)
!280 = !DILocation(line: 164, column: 26, scope: !277)
!281 = !DILocation(line: 164, column: 29, scope: !277)
!282 = !DILocation(line: 165, column: 28, scope: !277)
!283 = !DILocation(line: 164, column: 23, scope: !277)
!284 = distinct !{!284, !285}
!285 = !{!"llvm.loop.unroll.disable"}
!286 = !DILocation(line: 157, column: 21, scope: !287)
!287 = distinct !DILexicalBlock(scope: !273, file: !1, line: 155, column: 19)
!288 = !DILocation(line: 158, column: 24, scope: !287)
!289 = !DILocation(line: 159, column: 19, scope: !287)
!290 = distinct !{!290, !291, !292}
!291 = !DILocation(line: 163, column: 21, scope: !277)
!292 = !DILocation(line: 165, column: 33, scope: !277)
!293 = !DILocation(line: 170, column: 35, scope: !271)
!294 = !DILocation(line: 170, column: 31, scope: !271)
!295 = !DILocation(line: 170, column: 26, scope: !271)
!296 = !DILocation(line: 170, column: 29, scope: !271)
!297 = !DILocation(line: 170, column: 23, scope: !271)
!298 = !DILocation(line: 0, scope: !271)
!299 = !DILocation(line: 171, column: 35, scope: !271)
!300 = !DILocation(line: 171, column: 31, scope: !271)
!301 = !DILocation(line: 171, column: 26, scope: !271)
!302 = !DILocation(line: 171, column: 29, scope: !271)
!303 = !DILocation(line: 171, column: 23, scope: !271)
!304 = !DILocation(line: 172, column: 35, scope: !271)
!305 = !DILocation(line: 172, column: 31, scope: !271)
!306 = !DILocation(line: 172, column: 26, scope: !271)
!307 = !DILocation(line: 172, column: 29, scope: !271)
!308 = !DILocation(line: 172, column: 23, scope: !271)
!309 = !DILocation(line: 173, column: 35, scope: !271)
!310 = !DILocation(line: 173, column: 31, scope: !271)
!311 = !DILocation(line: 173, column: 26, scope: !271)
!312 = !DILocation(line: 173, column: 29, scope: !271)
!313 = !DILocation(line: 173, column: 23, scope: !271)
!314 = !DILocation(line: 174, column: 35, scope: !271)
!315 = !DILocation(line: 174, column: 31, scope: !271)
!316 = !DILocation(line: 174, column: 26, scope: !271)
!317 = !DILocation(line: 174, column: 29, scope: !271)
!318 = !DILocation(line: 174, column: 23, scope: !271)
!319 = !DILocation(line: 175, column: 35, scope: !271)
!320 = !DILocation(line: 175, column: 31, scope: !271)
!321 = !DILocation(line: 175, column: 26, scope: !271)
!322 = !DILocation(line: 175, column: 29, scope: !271)
!323 = !DILocation(line: 175, column: 23, scope: !271)
!324 = !DILocation(line: 176, column: 35, scope: !271)
!325 = !DILocation(line: 176, column: 31, scope: !271)
!326 = !DILocation(line: 176, column: 26, scope: !271)
!327 = !DILocation(line: 176, column: 29, scope: !271)
!328 = !DILocation(line: 176, column: 23, scope: !271)
!329 = !DILocation(line: 177, column: 35, scope: !271)
!330 = !DILocation(line: 177, column: 31, scope: !271)
!331 = !DILocation(line: 177, column: 26, scope: !271)
!332 = !DILocation(line: 177, column: 29, scope: !271)
!333 = !DILocation(line: 177, column: 23, scope: !271)
!334 = !DILocation(line: 178, column: 35, scope: !271)
!335 = !DILocation(line: 178, column: 31, scope: !271)
!336 = !DILocation(line: 178, column: 26, scope: !271)
!337 = !DILocation(line: 178, column: 29, scope: !271)
!338 = !DILocation(line: 178, column: 23, scope: !271)
!339 = !DILocation(line: 180, column: 26, scope: !271)
!340 = !DILocation(line: 179, column: 35, scope: !271)
!341 = !DILocation(line: 179, column: 31, scope: !271)
!342 = !DILocation(line: 179, column: 26, scope: !271)
!343 = !DILocation(line: 179, column: 29, scope: !271)
!344 = !DILocation(line: 180, column: 31, scope: !271)
!345 = !DILocation(line: 180, column: 29, scope: !271)
!346 = !DILocation(line: 181, column: 13, scope: !271)
!347 = !DILocation(line: 0, scope: !348)
!348 = distinct !DILexicalBlock(scope: !267, file: !1, line: 140, column: 13)
!349 = !DILocation(line: 183, column: 9, scope: !37)
!350 = !DILocation(line: 184, column: 5, scope: !14)
!351 = !DILocation(line: 0, scope: !14)
!352 = !DILocation(line: 185, column: 13, scope: !14)
!353 = !DILocation(line: 184, column: 5, scope: !34)
!354 = distinct !{!354, !49, !355}
!355 = !DILocation(line: 185, column: 21, scope: !14)
!356 = !DILocation(line: 187, column: 13, scope: !14)
!357 = !DILocation(line: 187, column: 10, scope: !14)
!358 = !DILocation(line: 187, column: 3, scope: !14)
!359 = !DILocation(line: 0, scope: !66)
!360 = !DILocation(line: 188, column: 1, scope: !14)
