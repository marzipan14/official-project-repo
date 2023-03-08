; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/misc/__dprintf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/misc/__dprintf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }

@__unctrl = external dso_local local_unnamed_addr constant [256 x i8*], align 16
@print_number.chars = internal unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @__dprintf(i8* nocapture readonly, ...) local_unnamed_addr #0 !dbg !37 {
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  %5 = alloca [32 x i8], align 16
  %6 = alloca i8, align 1
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  %8 = bitcast [1 x %struct.__va_list_tag]* %7 to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %8) #3, !dbg !82
  call void @llvm.va_start(i8* nonnull %8), !dbg !84
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  %9 = load i8, i8* %0, align 1, !dbg !86, !tbaa !87
  %10 = icmp eq i8 %9, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %10, label %267, label %11, !dbg !85

; <label>:11:                                     ; preds = %1
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 0
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 3
  %14 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %7, i64 0, i64 0, i32 2
  %15 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %16 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 31
  %17 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30, !dbg !85
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 30
  br label %19, !dbg !85

; <label>:19:                                     ; preds = %11, %263
  %20 = phi i8 [ %9, %11 ], [ %265, %263 ]
  %21 = phi i8* [ %0, %11 ], [ %264, %263 ]
  %22 = icmp eq i8 %20, 37, !dbg !90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !92
  br i1 %22, label %23, label %28, !dbg !92

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds i8, i8* %21, i64 1, !dbg !93
  %25 = load i8, i8* %24, align 1, !dbg !94, !tbaa !87
  %26 = sext i8 %25 to i32, !dbg !94
  %27 = icmp eq i8 %25, 37, !dbg !95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !96
  br i1 %27, label %28, label %33, !dbg !96

; <label>:28:                                     ; preds = %19, %23
  %29 = phi i8* [ %21, %19 ], [ %24, %23 ]
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %6), !dbg !99
  store i8 %20, i8* %6, align 1, !tbaa !87
  %31 = call %struct._reent* @__getreent() #5, !dbg !106
  %32 = call i64 @_write_r(%struct._reent* %31, i32 2, i8* nonnull %6, i64 1) #5, !dbg !107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %6), !dbg !108
  br label %263, !dbg !109, !llvm.loop !110

; <label>:33:                                     ; preds = %23
  %34 = icmp eq i8 %25, 78, !dbg !112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !113
  br i1 %34, label %35, label %152, !dbg !113

; <label>:35:                                     ; preds = %33
  %36 = load i32, i32* %12, align 16, !dbg !114
  %37 = icmp ult i32 %36, 41, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  br i1 %37, label %43, label %38, !dbg !114

; <label>:38:                                     ; preds = %35
  %39 = load i8*, i8** %14, align 8, !dbg !114
  %40 = getelementptr i8, i8* %39, i64 8, !dbg !114
  store i8* %40, i8** %14, align 8, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  %41 = bitcast i8* %39 to i32*, !dbg !114
  %42 = load i32, i32* %41, align 4, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br label %56, !dbg !116

; <label>:43:                                     ; preds = %35
  %44 = load i8*, i8** %13, align 16, !dbg !114
  %45 = sext i32 %36 to i64, !dbg !114
  %46 = getelementptr i8, i8* %44, i64 %45, !dbg !114
  %47 = add i32 %36, 8, !dbg !114
  store i32 %47, i32* %12, align 16, !dbg !114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !114
  %48 = bitcast i8* %46 to i32*, !dbg !114
  %49 = load i32, i32* %48, align 4, !dbg !114
  %50 = icmp ult i32 %47, 41, !dbg !116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  br i1 %50, label %51, label %56, !dbg !116

; <label>:51:                                     ; preds = %43
  %52 = load i8*, i8** %13, align 16, !dbg !116
  %53 = sext i32 %47 to i64, !dbg !116
  %54 = getelementptr i8, i8* %52, i64 %53, !dbg !116
  %55 = add i32 %36, 16, !dbg !116
  store i32 %55, i32* %12, align 16, !dbg !116
  br label %60, !dbg !116

; <label>:56:                                     ; preds = %38, %43
  %57 = phi i32 [ %42, %38 ], [ %49, %43 ]
  %58 = load i8*, i8** %14, align 8, !dbg !116
  %59 = getelementptr i8, i8* %58, i64 8, !dbg !116
  store i8* %59, i8** %14, align 8, !dbg !116
  br label %60, !dbg !116

; <label>:60:                                     ; preds = %56, %51
  %61 = phi i32 [ %49, %51 ], [ %57, %56 ]
  %62 = phi i8* [ %54, %51 ], [ %58, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !116
  %63 = bitcast i8* %62 to i8**, !dbg !116
  %64 = load i8*, i8** %63, align 8, !dbg !116
  %65 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !118
  %66 = getelementptr inbounds i8, i8* %21, i64 3, !dbg !119
  %67 = load i8, i8* %65, align 1, !dbg !120, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  %68 = icmp sgt i32 %61, 0, !dbg !123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br i1 %68, label %69, label %263, !dbg !122

; <label>:69:                                     ; preds = %60
  %70 = sext i8 %67 to i32
  %71 = icmp eq i8 %67, 120
  %72 = icmp eq i8 %67, 100
  %73 = select i1 %71, i64 16, i64 10
  br label %74, !dbg !122

; <label>:74:                                     ; preds = %149, %69
  %75 = phi i32 [ %61, %69 ], [ %77, %149 ]
  %76 = phi i8* [ %64, %69 ], [ %147, %149 ]
  %77 = add nsw i32 %75, -1, !dbg !124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !125
  switch i32 %70, label %146 [
    i32 99, label %78
    i32 112, label %87
    i32 100, label %92
    i32 117, label %92
    i32 120, label %92
    i32 115, label %137
  ], !dbg !125

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !126
  %80 = load i8, i8* %76, align 1, !dbg !126, !tbaa !87
  %81 = zext i8 %80 to i64, !dbg !126
  %82 = getelementptr inbounds [256 x i8*], [256 x i8*]* @__unctrl, i64 0, i64 %81, !dbg !126
  %83 = load i8*, i8** %82, align 8, !dbg !126, !tbaa !127
  %84 = call %struct._reent* @__getreent() #5, !dbg !136
  %85 = call i64 @strlen(i8* %83) #5, !dbg !137
  %86 = call i64 @_write_r(%struct._reent* %84, i32 2, i8* %83, i64 %85) #5, !dbg !138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !139
  br label %144, !dbg !140

; <label>:87:                                     ; preds = %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !156
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #3, !dbg !158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i8 0, i8* %16, align 1, !dbg !163, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !164
  store i8 48, i8* %18, align 2, !dbg !165, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !167
  %88 = call %struct._reent* @__getreent() #5, !dbg !170
  %89 = call i64 @strlen(i8* nonnull %17) #5, !dbg !171
  %90 = call i64 @_write_r(%struct._reent* %88, i32 2, i8* nonnull %17, i64 %89) #5, !dbg !172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !173
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #3, !dbg !174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !174
  %91 = getelementptr inbounds i8, i8* %76, i64 8, !dbg !175
  br label %144, !dbg !176

; <label>:92:                                     ; preds = %74, %74, %74
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !181
  %93 = getelementptr inbounds i8, i8* %76, i64 3, !dbg !182
  %94 = load i8, i8* %93, align 1, !dbg !182, !tbaa !87
  %95 = zext i8 %94 to i64, !dbg !184
  %96 = shl nuw nsw i64 %95, 24, !dbg !185
  %97 = getelementptr inbounds i8, i8* %76, i64 2, !dbg !186
  %98 = load i8, i8* %97, align 1, !dbg !186, !tbaa !87
  %99 = zext i8 %98 to i64, !dbg !187
  %100 = shl nuw nsw i64 %99, 16, !dbg !188
  %101 = or i64 %100, %96, !dbg !189
  %102 = getelementptr inbounds i8, i8* %76, i64 1, !dbg !190
  %103 = load i8, i8* %102, align 1, !dbg !190, !tbaa !87
  %104 = zext i8 %103 to i64, !dbg !190
  %105 = shl nuw nsw i64 %104, 8, !dbg !191
  %106 = or i64 %101, %105, !dbg !192
  %107 = load i8, i8* %76, align 1, !dbg !193, !tbaa !87
  %108 = zext i8 %107 to i64, !dbg !193
  %109 = or i64 %106, %108, !dbg !194
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !196
  br i1 %72, label %110, label %113, !dbg !196

; <label>:110:                                    ; preds = %92
  %111 = shl nuw i64 %109, 32, !dbg !197
  %112 = ashr exact i64 %111, 32, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !199
  br label %113, !dbg !199

; <label>:113:                                    ; preds = %92, %110
  %114 = phi i64 [ %109, %92 ], [ %112, %110 ], !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !202
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #3, !dbg !204
  %115 = icmp slt i64 %114, 0, !dbg !205
  %116 = and i1 %72, %115, !dbg !206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  br i1 %116, label %117, label %121, !dbg !206

; <label>:117:                                    ; preds = %113
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %4) #3, !dbg !207
  store i8 45, i8* %4, align 1, !tbaa !87
  %118 = call %struct._reent* @__getreent() #5, !dbg !210
  %119 = call i64 @_write_r(%struct._reent* %118, i32 2, i8* nonnull %4, i64 1) #5, !dbg !211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !212
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %4) #3, !dbg !212
  %120 = sub nsw i64 0, %114, !dbg !213
  br label %121, !dbg !215

; <label>:121:                                    ; preds = %113, %117
  %122 = phi i64 [ %120, %117 ], [ %114, %113 ], !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i8 0, i8* %16, align 1, !dbg !218, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !219
  br label %123, !dbg !219

; <label>:123:                                    ; preds = %123, %121
  %124 = phi i8* [ %16, %121 ], [ %129, %123 ], !dbg !220
  %125 = phi i64 [ %122, %121 ], [ %130, %123 ], !dbg !220
  %126 = urem i64 %125, %73, !dbg !221
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* @print_number.chars, i64 0, i64 %126, !dbg !222
  %128 = load i8, i8* %127, align 1, !dbg !222, !tbaa !87
  %129 = getelementptr inbounds i8, i8* %124, i64 -1, !dbg !223
  store i8 %128, i8* %129, align 1, !dbg !224, !tbaa !87
  %130 = udiv i64 %125, %73, !dbg !225
  %131 = icmp ult i64 %125, %73, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
  br i1 %131, label %132, label %123, !dbg !227, !llvm.loop !228

; <label>:132:                                    ; preds = %123
  %133 = call %struct._reent* @__getreent() #5, !dbg !233
  %134 = call i64 @strlen(i8* nonnull %129) #5, !dbg !234
  %135 = call i64 @_write_r(%struct._reent* %133, i32 2, i8* nonnull %129, i64 %134) #5, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !236
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #3, !dbg !237
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !237
  %136 = getelementptr inbounds i8, i8* %76, i64 4, !dbg !238
  br label %144, !dbg !239

; <label>:137:                                    ; preds = %74
  %138 = bitcast i8* %76 to i8**, !dbg !240
  %139 = load i8*, i8** %138, align 8, !dbg !240, !tbaa !127
  %140 = call %struct._reent* @__getreent() #5, !dbg !243
  %141 = call i64 @strlen(i8* %139) #5, !dbg !244
  %142 = call i64 @_write_r(%struct._reent* %140, i32 2, i8* %139, i64 %141) #5, !dbg !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !246
  %143 = getelementptr inbounds i8, i8* %76, i64 8, !dbg !247
  br label %144, !dbg !248

; <label>:144:                                    ; preds = %78, %87, %132, %137
  %145 = phi i8* [ %79, %78 ], [ %91, %87 ], [ %136, %132 ], [ %143, %137 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br label %146, !dbg !250

; <label>:146:                                    ; preds = %144, %74
  %147 = phi i8* [ %76, %74 ], [ %145, %144 ], !dbg !249
  %148 = icmp sgt i32 %75, 1, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !252
  br i1 %148, label %149, label %262, !dbg !252

; <label>:149:                                    ; preds = %146
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %3), !dbg !253
  store i8 32, i8* %3, align 1, !tbaa !87
  %150 = call %struct._reent* @__getreent() #5, !dbg !255
  %151 = call i64 @_write_r(%struct._reent* %150, i32 2, i8* nonnull %3, i64 1) #5, !dbg !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !257
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %3), !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br label %74

; <label>:152:                                    ; preds = %33
  %153 = getelementptr inbounds i8, i8* %21, i64 2, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !260
  switch i32 %26, label %263 [
    i32 99, label %154
    i32 112, label %176
    i32 100, label %204
    i32 117, label %204
    i32 120, label %204
    i32 115, label %244
  ], !dbg !260

; <label>:154:                                    ; preds = %152
  %155 = load i32, i32* %12, align 16, !dbg !261
  %156 = icmp ult i32 %155, 41, !dbg !261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  br i1 %156, label %157, label %162, !dbg !261

; <label>:157:                                    ; preds = %154
  %158 = load i8*, i8** %13, align 16, !dbg !261
  %159 = sext i32 %155 to i64, !dbg !261
  %160 = getelementptr i8, i8* %158, i64 %159, !dbg !261
  %161 = add i32 %155, 8, !dbg !261
  store i32 %161, i32* %12, align 16, !dbg !261
  br label %165, !dbg !261

; <label>:162:                                    ; preds = %154
  %163 = load i8*, i8** %14, align 8, !dbg !261
  %164 = getelementptr i8, i8* %163, i64 8, !dbg !261
  store i8* %164, i8** %14, align 8, !dbg !261
  br label %165, !dbg !261

; <label>:165:                                    ; preds = %162, %157
  %166 = phi i8* [ %160, %157 ], [ %163, %162 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !261
  %167 = bitcast i8* %166 to i32*, !dbg !261
  %168 = load i32, i32* %167, align 4, !dbg !261
  %169 = and i32 %168, 255, !dbg !262
  %170 = zext i32 %169 to i64, !dbg !262
  %171 = getelementptr inbounds [256 x i8*], [256 x i8*]* @__unctrl, i64 0, i64 %170, !dbg !262
  %172 = load i8*, i8** %171, align 8, !dbg !262, !tbaa !127
  %173 = call %struct._reent* @__getreent() #5, !dbg !265
  %174 = call i64 @strlen(i8* %172) #5, !dbg !266
  %175 = call i64 @_write_r(%struct._reent* %173, i32 2, i8* %172, i64 %174) #5, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  br label %263, !dbg !269

; <label>:176:                                    ; preds = %152
  %177 = load i32, i32* %12, align 16, !dbg !270
  %178 = icmp ult i32 %177, 41, !dbg !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  br i1 %178, label %179, label %184, !dbg !270

; <label>:179:                                    ; preds = %176
  %180 = load i8*, i8** %13, align 16, !dbg !270
  %181 = sext i32 %177 to i64, !dbg !270
  %182 = getelementptr i8, i8* %180, i64 %181, !dbg !270
  %183 = add i32 %177, 8, !dbg !270
  store i32 %183, i32* %12, align 16, !dbg !270
  br label %187, !dbg !270

; <label>:184:                                    ; preds = %176
  %185 = load i8*, i8** %14, align 8, !dbg !270
  %186 = getelementptr i8, i8* %185, i64 8, !dbg !270
  store i8* %186, i8** %14, align 8, !dbg !270
  br label %187, !dbg !270

; <label>:187:                                    ; preds = %184, %179
  %188 = phi i8* [ %182, %179 ], [ %185, %184 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !270
  %189 = bitcast i8* %188 to i64*, !dbg !270
  %190 = load i64, i64* %189, align 8, !dbg !270
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #3, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i8 0, i8* %16, align 1, !dbg !277, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br label %191, !dbg !278

; <label>:191:                                    ; preds = %191, %187
  %192 = phi i8* [ %16, %187 ], [ %197, %191 ], !dbg !279
  %193 = phi i64 [ %190, %187 ], [ %198, %191 ], !dbg !279
  %194 = and i64 %193, 15, !dbg !280
  %195 = getelementptr inbounds [16 x i8], [16 x i8]* @print_number.chars, i64 0, i64 %194, !dbg !281
  %196 = load i8, i8* %195, align 1, !dbg !281, !tbaa !87
  %197 = getelementptr inbounds i8, i8* %192, i64 -1, !dbg !282
  store i8 %196, i8* %197, align 1, !dbg !283, !tbaa !87
  %198 = lshr i64 %193, 4, !dbg !284
  %199 = icmp ult i64 %193, 16, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br i1 %199, label %200, label %191, !dbg !286, !llvm.loop !228

; <label>:200:                                    ; preds = %191
  %201 = call %struct._reent* @__getreent() #5, !dbg !289
  %202 = call i64 @strlen(i8* nonnull %197) #5, !dbg !290
  %203 = call i64 @_write_r(%struct._reent* %201, i32 2, i8* nonnull %197, i64 %202) #5, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #3, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  br label %263, !dbg !294

; <label>:204:                                    ; preds = %152, %152, %152
  %205 = load i32, i32* %12, align 16, !dbg !295
  %206 = icmp ult i32 %205, 41, !dbg !295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  br i1 %206, label %207, label %212, !dbg !295

; <label>:207:                                    ; preds = %204
  %208 = load i8*, i8** %13, align 16, !dbg !295
  %209 = sext i32 %205 to i64, !dbg !295
  %210 = getelementptr i8, i8* %208, i64 %209, !dbg !295
  %211 = add i32 %205, 8, !dbg !295
  store i32 %211, i32* %12, align 16, !dbg !295
  br label %215, !dbg !295

; <label>:212:                                    ; preds = %204
  %213 = load i8*, i8** %14, align 8, !dbg !295
  %214 = getelementptr i8, i8* %213, i64 8, !dbg !295
  store i8* %214, i8** %14, align 8, !dbg !295
  br label %215, !dbg !295

; <label>:215:                                    ; preds = %212, %207
  %216 = phi i8* [ %210, %207 ], [ %213, %212 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !295
  %217 = bitcast i8* %216 to i32*, !dbg !295
  %218 = load i32, i32* %217, align 4, !dbg !295
  %219 = sext i32 %218 to i64, !dbg !295
  %220 = icmp eq i8 %25, 120, !dbg !296
  %221 = icmp eq i8 %25, 100, !dbg !297
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #3, !dbg !299
  %222 = icmp slt i32 %218, 0, !dbg !300
  %223 = and i1 %221, %222, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br i1 %223, label %224, label %228, !dbg !301

; <label>:224:                                    ; preds = %215
  call void @llvm.lifetime.start.p0i8(i64 1, i8* nonnull %2) #3, !dbg !302
  store i8 45, i8* %2, align 1, !tbaa !87
  %225 = call %struct._reent* @__getreent() #5, !dbg !304
  %226 = call i64 @_write_r(%struct._reent* %225, i32 2, i8* nonnull %2, i64 1) #5, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  call void @llvm.lifetime.end.p0i8(i64 1, i8* nonnull %2) #3, !dbg !306
  %227 = sub nsw i64 0, %219, !dbg !307
  br label %228, !dbg !309

; <label>:228:                                    ; preds = %215, %224
  %229 = phi i64 [ %227, %224 ], [ %219, %215 ], !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i8 0, i8* %16, align 1, !dbg !312, !tbaa !87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  %230 = select i1 %220, i64 16, i64 10, !dbg !314
  br label %231, !dbg !313

; <label>:231:                                    ; preds = %231, %228
  %232 = phi i8* [ %16, %228 ], [ %237, %231 ], !dbg !315
  %233 = phi i64 [ %229, %228 ], [ %238, %231 ], !dbg !315
  %234 = urem i64 %233, %230, !dbg !316
  %235 = getelementptr inbounds [16 x i8], [16 x i8]* @print_number.chars, i64 0, i64 %234, !dbg !317
  %236 = load i8, i8* %235, align 1, !dbg !317, !tbaa !87
  %237 = getelementptr inbounds i8, i8* %232, i64 -1, !dbg !318
  store i8 %236, i8* %237, align 1, !dbg !319, !tbaa !87
  %238 = udiv i64 %233, %230, !dbg !320
  %239 = icmp ult i64 %233, %230, !dbg !321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %239, label %240, label %231, !dbg !322, !llvm.loop !228

; <label>:240:                                    ; preds = %231
  %241 = call %struct._reent* @__getreent() #5, !dbg !325
  %242 = call i64 @strlen(i8* nonnull %237) #5, !dbg !326
  %243 = call i64 @_write_r(%struct._reent* %241, i32 2, i8* nonnull %237, i64 %242) #5, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #3, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !330
  br label %263, !dbg !330

; <label>:244:                                    ; preds = %152
  %245 = load i32, i32* %12, align 16, !dbg !331
  %246 = icmp ult i32 %245, 41, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %246, label %247, label %252, !dbg !331

; <label>:247:                                    ; preds = %244
  %248 = load i8*, i8** %13, align 16, !dbg !331
  %249 = sext i32 %245 to i64, !dbg !331
  %250 = getelementptr i8, i8* %248, i64 %249, !dbg !331
  %251 = add i32 %245, 8, !dbg !331
  store i32 %251, i32* %12, align 16, !dbg !331
  br label %255, !dbg !331

; <label>:252:                                    ; preds = %244
  %253 = load i8*, i8** %14, align 8, !dbg !331
  %254 = getelementptr i8, i8* %253, i64 8, !dbg !331
  store i8* %254, i8** %14, align 8, !dbg !331
  br label %255, !dbg !331

; <label>:255:                                    ; preds = %252, %247
  %256 = phi i8* [ %250, %247 ], [ %253, %252 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %257 = bitcast i8* %256 to i8**, !dbg !331
  %258 = load i8*, i8** %257, align 8, !dbg !331
  %259 = call %struct._reent* @__getreent() #5, !dbg !334
  %260 = call i64 @strlen(i8* %258) #5, !dbg !335
  %261 = call i64 @_write_r(%struct._reent* %259, i32 2, i8* %258, i64 %260) #5, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !338
  br label %263, !dbg !338

; <label>:262:                                    ; preds = %146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !122
  br label %263, !dbg !111

; <label>:263:                                    ; preds = %152, %255, %240, %200, %165, %60, %262, %28
  %264 = phi i8* [ %30, %28 ], [ %153, %152 ], [ %153, %255 ], [ %153, %240 ], [ %153, %200 ], [ %153, %165 ], [ %66, %60 ], [ %66, %262 ], !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %265 = load i8, i8* %264, align 1, !dbg !86, !tbaa !87
  %266 = icmp eq i8 %265, 0, !dbg !85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !85
  br i1 %266, label %267, label %19, !dbg !85

; <label>:267:                                    ; preds = %263, %1
  call void @llvm.va_end(i8* nonnull %8), !dbg !341
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %8) #3, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  ret void, !dbg !342
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noredzone
declare dso_local i64 @_write_r(%struct._reent*, i32, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!33, !34, !35}
!llvm.ident = !{!36}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "chars", scope: !2, file: !3, line: 228, type: !30, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "print_number", scope: !3, file: !3, line: 223, type: !4, isLocal: true, isDefinition: true, scopeLine: 227, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !19)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/misc/__dprintf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6, !7}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !10, globals: !16)
!9 = !{}
!10 = !{!11, !13, !7, !14}
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!16 = !{!17, !0}
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "big_endian_p", scope: !8, file: !3, line: 29, type: !6, isLocal: true, isDefinition: true)
!19 = !{!20, !21, !22, !23, !24, !28}
!20 = !DILocalVariable(name: "base", arg: 1, scope: !2, file: !3, line: 223, type: !6)
!21 = !DILocalVariable(name: "unsigned_p", arg: 2, scope: !2, file: !3, line: 223, type: !6)
!22 = !DILocalVariable(name: "n", arg: 3, scope: !2, file: !3, line: 223, type: !7)
!23 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 229, type: !11)
!24 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 229, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 32)
!28 = !DILocalVariable(name: "x", scope: !2, file: !3, line: 230, type: !29)
!29 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 128, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 16)
!33 = !{i32 2, !"Dwarf Version", i32 4}
!34 = !{i32 2, !"Debug Info Version", i32 3}
!35 = !{i32 1, !"wchar_size", i32 4}
!36 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!37 = distinct !DISubprogram(name: "__dprintf", scope: !3, file: !3, line: 58, type: !38, isLocal: false, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !42)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, null}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!42 = !{!43, !44, !59, !62, !64, !65, !66}
!43 = !DILocalVariable(name: "fmt", arg: 1, scope: !37, file: !3, line: 58, type: !40)
!44 = !DILocalVariable(name: "args", scope: !37, file: !3, line: 65, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !46, line: 32, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 65, baseType: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 192, elements: !57)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 65, size: 192, elements: !50)
!50 = !{!51, !53, !54, !56}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !49, file: !3, line: 65, baseType: !52, size: 32)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !49, file: !3, line: 65, baseType: !52, size: 32, offset: 32)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !49, file: !3, line: 65, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !49, file: !3, line: 65, baseType: !55, size: 64, offset: 128)
!57 = !{!58}
!58 = !DISubrange(count: 1)
!59 = !DILocalVariable(name: "tmp", scope: !60, file: !3, line: 69, type: !61)
!60 = distinct !DILexicalBlock(scope: !37, file: !3, line: 68, column: 3)
!61 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!62 = !DILocalVariable(name: "c", scope: !63, file: !3, line: 81, type: !12)
!63 = distinct !DILexicalBlock(scope: !37, file: !3, line: 80, column: 5)
!64 = !DILocalVariable(name: "p", scope: !63, file: !3, line: 81, type: !11)
!65 = !DILocalVariable(name: "count", scope: !63, file: !3, line: 82, type: !6)
!66 = !DILocalVariable(name: "l", scope: !63, file: !3, line: 83, type: !7)
!67 = !DILocation(line: 229, column: 12, scope: !2, inlinedAt: !68)
!68 = distinct !DILocation(line: 141, column: 8, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 128, column: 6)
!70 = distinct !DILexicalBlock(scope: !71, file: !3, line: 126, column: 2)
!71 = distinct !DILexicalBlock(scope: !63, file: !3, line: 91, column: 11)
!72 = !DILocation(line: 229, column: 12, scope: !2, inlinedAt: !73)
!73 = distinct !DILocation(line: 135, column: 8, scope: !69)
!74 = !DILocation(line: 229, column: 12, scope: !2, inlinedAt: !75)
!75 = distinct !DILocation(line: 112, column: 5, scope: !76)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 101, column: 3)
!77 = distinct !DILexicalBlock(scope: !78, file: !3, line: 99, column: 6)
!78 = distinct !DILexicalBlock(scope: !71, file: !3, line: 92, column: 2)
!79 = !DILocation(line: 229, column: 12, scope: !2, inlinedAt: !80)
!80 = distinct !DILocation(line: 106, column: 5, scope: !76)
!81 = !DILocation(line: 58, column: 24, scope: !37)
!82 = !DILocation(line: 65, column: 3, scope: !37)
!83 = !DILocation(line: 65, column: 11, scope: !37)
!84 = !DILocation(line: 74, column: 3, scope: !37)
!85 = !DILocation(line: 79, column: 3, scope: !37)
!86 = !DILocation(line: 79, column: 10, scope: !37)
!87 = !{!88, !88, i64 0}
!88 = !{!"omnipotent char", !89, i64 0}
!89 = !{!"Simple C/C++ TBAA"}
!90 = !DILocation(line: 85, column: 16, scope: !91)
!91 = distinct !DILexicalBlock(scope: !63, file: !3, line: 85, column: 11)
!92 = !DILocation(line: 85, column: 23, scope: !91)
!93 = !DILocation(line: 85, column: 27, scope: !91)
!94 = !DILocation(line: 85, column: 26, scope: !91)
!95 = !DILocation(line: 85, column: 33, scope: !91)
!96 = !DILocation(line: 85, column: 11, scope: !63)
!97 = !DILocation(line: 87, column: 20, scope: !98)
!98 = distinct !DILexicalBlock(scope: !91, file: !3, line: 86, column: 2)
!99 = !DILocation(line: 257, column: 1, scope: !100, inlinedAt: !105)
!100 = distinct !DISubprogram(name: "write_char", scope: !3, file: !3, line: 257, type: !101, isLocal: true, isDefinition: true, scopeLine: 259, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !103)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !12}
!103 = !{!104}
!104 = !DILocalVariable(name: "c", arg: 1, scope: !100, file: !3, line: 257, type: !12)
!105 = distinct !DILocation(line: 87, column: 4, scope: !98)
!106 = !DILocation(line: 260, column: 13, scope: !100, inlinedAt: !105)
!107 = !DILocation(line: 260, column: 3, scope: !100, inlinedAt: !105)
!108 = !DILocation(line: 261, column: 1, scope: !100, inlinedAt: !105)
!109 = !DILocation(line: 88, column: 4, scope: !98)
!110 = distinct !{!110, !85, !111}
!111 = !DILocation(line: 149, column: 5, scope: !37)
!112 = !DILocation(line: 91, column: 16, scope: !71)
!113 = !DILocation(line: 91, column: 11, scope: !63)
!114 = !DILocation(line: 93, column: 12, scope: !78)
!115 = !DILocation(line: 82, column: 11, scope: !63)
!116 = !DILocation(line: 94, column: 8, scope: !78)
!117 = !DILocation(line: 81, column: 16, scope: !63)
!118 = !DILocation(line: 95, column: 4, scope: !78)
!119 = !DILocation(line: 96, column: 12, scope: !78)
!120 = !DILocation(line: 96, column: 8, scope: !78)
!121 = !DILocation(line: 81, column: 12, scope: !63)
!122 = !DILocation(line: 98, column: 4, scope: !78)
!123 = !DILocation(line: 98, column: 19, scope: !78)
!124 = !DILocation(line: 98, column: 11, scope: !78)
!125 = !DILocation(line: 100, column: 8, scope: !77)
!126 = !DILocation(line: 103, column: 19, scope: !76)
!127 = !{!128, !128, i64 0}
!128 = !{!"any pointer", !88, i64 0}
!129 = !DILocalVariable(name: "s", arg: 1, scope: !130, file: !3, line: 268, type: !40)
!130 = distinct !DISubprogram(name: "write_string", scope: !3, file: !3, line: 268, type: !131, isLocal: true, isDefinition: true, scopeLine: 270, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !133)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !40}
!133 = !{!129}
!134 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !135)
!135 = distinct !DILocation(line: 103, column: 5, scope: !76)
!136 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !135)
!137 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !135)
!138 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !135)
!139 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !135)
!140 = !DILocation(line: 104, column: 5, scope: !76)
!141 = !DILocalVariable(name: "s", arg: 1, scope: !142, file: !3, line: 180, type: !11)
!142 = distinct !DISubprogram(name: "get_number", scope: !3, file: !3, line: 180, type: !143, isLocal: true, isDefinition: true, scopeLine: 184, flags: DIFlagPrototyped, isOptimized: true, unit: !8, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{!7, !11, !7, !6}
!145 = !{!141, !146, !147, !148, !149}
!146 = !DILocalVariable(name: "size", arg: 2, scope: !142, file: !3, line: 180, type: !7)
!147 = !DILocalVariable(name: "unsigned_p", arg: 3, scope: !142, file: !3, line: 180, type: !6)
!148 = !DILocalVariable(name: "x", scope: !142, file: !3, line: 185, type: !7)
!149 = !DILocalVariable(name: "p", scope: !142, file: !3, line: 186, type: !14)
!150 = !DILocation(line: 180, column: 1, scope: !142, inlinedAt: !151)
!151 = distinct !DILocation(line: 106, column: 26, scope: !76)
!152 = !DILocation(line: 186, column: 18, scope: !142, inlinedAt: !151)
!153 = !DILocation(line: 188, column: 3, scope: !142, inlinedAt: !151)
!154 = !DILocation(line: 216, column: 7, scope: !155, inlinedAt: !151)
!155 = distinct !DILexicalBlock(scope: !142, file: !3, line: 189, column: 5)
!156 = !DILocation(line: 218, column: 1, scope: !142, inlinedAt: !151)
!157 = !DILocation(line: 223, column: 1, scope: !2, inlinedAt: !80)
!158 = !DILocation(line: 229, column: 3, scope: !2, inlinedAt: !80)
!159 = !DILocation(line: 232, column: 19, scope: !160, inlinedAt: !80)
!160 = distinct !DILexicalBlock(scope: !2, file: !3, line: 232, column: 7)
!161 = !DILocation(line: 230, column: 17, scope: !2, inlinedAt: !80)
!162 = !DILocation(line: 229, column: 9, scope: !2, inlinedAt: !80)
!163 = !DILocation(line: 241, column: 8, scope: !2, inlinedAt: !80)
!164 = !DILocation(line: 242, column: 3, scope: !2, inlinedAt: !80)
!165 = !DILocation(line: 244, column: 12, scope: !166, inlinedAt: !80)
!166 = distinct !DILexicalBlock(scope: !2, file: !3, line: 243, column: 5)
!167 = !DILocation(line: 246, column: 5, scope: !166, inlinedAt: !80)
!168 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !169)
!169 = distinct !DILocation(line: 249, column: 3, scope: !2, inlinedAt: !80)
!170 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !169)
!171 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !169)
!172 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !169)
!173 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !169)
!174 = !DILocation(line: 250, column: 1, scope: !2, inlinedAt: !80)
!175 = !DILocation(line: 107, column: 7, scope: !76)
!176 = !DILocation(line: 108, column: 5, scope: !76)
!177 = !DILocation(line: 180, column: 1, scope: !142, inlinedAt: !178)
!178 = distinct !DILocation(line: 113, column: 5, scope: !76)
!179 = !DILocation(line: 186, column: 18, scope: !142, inlinedAt: !178)
!180 = !DILocation(line: 188, column: 3, scope: !142, inlinedAt: !178)
!181 = !DILocation(line: 204, column: 11, scope: !155, inlinedAt: !178)
!182 = !DILocation(line: 207, column: 13, scope: !183, inlinedAt: !178)
!183 = distinct !DILexicalBlock(scope: !155, file: !3, line: 204, column: 11)
!184 = !DILocation(line: 207, column: 7, scope: !183, inlinedAt: !178)
!185 = !DILocation(line: 207, column: 18, scope: !183, inlinedAt: !178)
!186 = !DILocation(line: 207, column: 34, scope: !183, inlinedAt: !178)
!187 = !DILocation(line: 207, column: 28, scope: !183, inlinedAt: !178)
!188 = !DILocation(line: 207, column: 39, scope: !183, inlinedAt: !178)
!189 = !DILocation(line: 207, column: 25, scope: !183, inlinedAt: !178)
!190 = !DILocation(line: 207, column: 49, scope: !183, inlinedAt: !178)
!191 = !DILocation(line: 207, column: 54, scope: !183, inlinedAt: !178)
!192 = !DILocation(line: 207, column: 46, scope: !183, inlinedAt: !178)
!193 = !DILocation(line: 207, column: 62, scope: !183, inlinedAt: !178)
!194 = !DILocation(line: 207, column: 60, scope: !183, inlinedAt: !178)
!195 = !DILocation(line: 185, column: 8, scope: !142, inlinedAt: !178)
!196 = !DILocation(line: 208, column: 11, scope: !155, inlinedAt: !178)
!197 = !DILocation(line: 209, column: 24, scope: !198, inlinedAt: !178)
!198 = distinct !DILexicalBlock(scope: !155, file: !3, line: 208, column: 11)
!199 = !DILocation(line: 209, column: 2, scope: !198, inlinedAt: !178)
!200 = !DILocation(line: 0, scope: !198, inlinedAt: !178)
!201 = !DILocation(line: 210, column: 7, scope: !155, inlinedAt: !178)
!202 = !DILocation(line: 218, column: 1, scope: !142, inlinedAt: !178)
!203 = !DILocation(line: 223, column: 1, scope: !2, inlinedAt: !75)
!204 = !DILocation(line: 229, column: 3, scope: !2, inlinedAt: !75)
!205 = !DILocation(line: 232, column: 24, scope: !160, inlinedAt: !75)
!206 = !DILocation(line: 232, column: 19, scope: !160, inlinedAt: !75)
!207 = !DILocation(line: 257, column: 1, scope: !100, inlinedAt: !208)
!208 = distinct !DILocation(line: 234, column: 7, scope: !209, inlinedAt: !75)
!209 = distinct !DILexicalBlock(scope: !160, file: !3, line: 233, column: 5)
!210 = !DILocation(line: 260, column: 13, scope: !100, inlinedAt: !208)
!211 = !DILocation(line: 260, column: 3, scope: !100, inlinedAt: !208)
!212 = !DILocation(line: 261, column: 1, scope: !100, inlinedAt: !208)
!213 = !DILocation(line: 235, column: 11, scope: !209, inlinedAt: !75)
!214 = !DILocation(line: 230, column: 17, scope: !2, inlinedAt: !75)
!215 = !DILocation(line: 236, column: 5, scope: !209, inlinedAt: !75)
!216 = !DILocation(line: 0, scope: !160, inlinedAt: !75)
!217 = !DILocation(line: 229, column: 9, scope: !2, inlinedAt: !75)
!218 = !DILocation(line: 241, column: 8, scope: !2, inlinedAt: !75)
!219 = !DILocation(line: 242, column: 3, scope: !2, inlinedAt: !75)
!220 = !DILocation(line: 0, scope: !166, inlinedAt: !75)
!221 = !DILocation(line: 244, column: 22, scope: !166, inlinedAt: !75)
!222 = !DILocation(line: 244, column: 14, scope: !166, inlinedAt: !75)
!223 = !DILocation(line: 244, column: 8, scope: !166, inlinedAt: !75)
!224 = !DILocation(line: 244, column: 12, scope: !166, inlinedAt: !75)
!225 = !DILocation(line: 245, column: 9, scope: !166, inlinedAt: !75)
!226 = !DILocation(line: 247, column: 12, scope: !2, inlinedAt: !75)
!227 = !DILocation(line: 246, column: 5, scope: !166, inlinedAt: !75)
!228 = distinct !{!228, !229, !230}
!229 = !DILocation(line: 242, column: 3, scope: !2)
!230 = !DILocation(line: 247, column: 16, scope: !2)
!231 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !232)
!232 = distinct !DILocation(line: 249, column: 3, scope: !2, inlinedAt: !75)
!233 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !232)
!234 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !232)
!235 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !232)
!236 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !232)
!237 = !DILocation(line: 250, column: 1, scope: !2, inlinedAt: !75)
!238 = !DILocation(line: 114, column: 7, scope: !76)
!239 = !DILocation(line: 115, column: 5, scope: !76)
!240 = !DILocation(line: 117, column: 19, scope: !76)
!241 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !242)
!242 = distinct !DILocation(line: 117, column: 5, scope: !76)
!243 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !242)
!244 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !242)
!245 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !242)
!246 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !242)
!247 = !DILocation(line: 118, column: 7, scope: !76)
!248 = !DILocation(line: 119, column: 5, scope: !76)
!249 = !DILocation(line: 0, scope: !76)
!250 = !DILocation(line: 121, column: 18, scope: !251)
!251 = distinct !DILexicalBlock(scope: !77, file: !3, line: 121, column: 12)
!252 = !DILocation(line: 121, column: 12, scope: !77)
!253 = !DILocation(line: 257, column: 1, scope: !100, inlinedAt: !254)
!254 = distinct !DILocation(line: 122, column: 3, scope: !251)
!255 = !DILocation(line: 260, column: 13, scope: !100, inlinedAt: !254)
!256 = !DILocation(line: 260, column: 3, scope: !100, inlinedAt: !254)
!257 = !DILocation(line: 261, column: 1, scope: !100, inlinedAt: !254)
!258 = !DILocation(line: 122, column: 3, scope: !251)
!259 = !DILocation(line: 127, column: 20, scope: !70)
!260 = !DILocation(line: 127, column: 4, scope: !70)
!261 = !DILocation(line: 130, column: 12, scope: !69)
!262 = !DILocation(line: 131, column: 22, scope: !69)
!263 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !264)
!264 = distinct !DILocation(line: 131, column: 8, scope: !69)
!265 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !264)
!266 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !264)
!267 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !264)
!268 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !264)
!269 = !DILocation(line: 132, column: 8, scope: !69)
!270 = !DILocation(line: 134, column: 27, scope: !69)
!271 = !DILocation(line: 83, column: 12, scope: !63)
!272 = !DILocation(line: 223, column: 1, scope: !2, inlinedAt: !73)
!273 = !DILocation(line: 229, column: 3, scope: !2, inlinedAt: !73)
!274 = !DILocation(line: 232, column: 19, scope: !160, inlinedAt: !73)
!275 = !DILocation(line: 230, column: 17, scope: !2, inlinedAt: !73)
!276 = !DILocation(line: 229, column: 9, scope: !2, inlinedAt: !73)
!277 = !DILocation(line: 241, column: 8, scope: !2, inlinedAt: !73)
!278 = !DILocation(line: 242, column: 3, scope: !2, inlinedAt: !73)
!279 = !DILocation(line: 0, scope: !166, inlinedAt: !73)
!280 = !DILocation(line: 244, column: 22, scope: !166, inlinedAt: !73)
!281 = !DILocation(line: 244, column: 14, scope: !166, inlinedAt: !73)
!282 = !DILocation(line: 244, column: 8, scope: !166, inlinedAt: !73)
!283 = !DILocation(line: 244, column: 12, scope: !166, inlinedAt: !73)
!284 = !DILocation(line: 245, column: 9, scope: !166, inlinedAt: !73)
!285 = !DILocation(line: 247, column: 12, scope: !2, inlinedAt: !73)
!286 = !DILocation(line: 246, column: 5, scope: !166, inlinedAt: !73)
!287 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !288)
!288 = distinct !DILocation(line: 249, column: 3, scope: !2, inlinedAt: !73)
!289 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !288)
!290 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !288)
!291 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !288)
!292 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !288)
!293 = !DILocation(line: 250, column: 1, scope: !2, inlinedAt: !73)
!294 = !DILocation(line: 136, column: 8, scope: !69)
!295 = !DILocation(line: 140, column: 12, scope: !69)
!296 = !DILocation(line: 141, column: 24, scope: !69)
!297 = !DILocation(line: 141, column: 44, scope: !69)
!298 = !DILocation(line: 223, column: 1, scope: !2, inlinedAt: !68)
!299 = !DILocation(line: 229, column: 3, scope: !2, inlinedAt: !68)
!300 = !DILocation(line: 232, column: 24, scope: !160, inlinedAt: !68)
!301 = !DILocation(line: 232, column: 19, scope: !160, inlinedAt: !68)
!302 = !DILocation(line: 257, column: 1, scope: !100, inlinedAt: !303)
!303 = distinct !DILocation(line: 234, column: 7, scope: !209, inlinedAt: !68)
!304 = !DILocation(line: 260, column: 13, scope: !100, inlinedAt: !303)
!305 = !DILocation(line: 260, column: 3, scope: !100, inlinedAt: !303)
!306 = !DILocation(line: 261, column: 1, scope: !100, inlinedAt: !303)
!307 = !DILocation(line: 235, column: 11, scope: !209, inlinedAt: !68)
!308 = !DILocation(line: 230, column: 17, scope: !2, inlinedAt: !68)
!309 = !DILocation(line: 236, column: 5, scope: !209, inlinedAt: !68)
!310 = !DILocation(line: 0, scope: !160, inlinedAt: !68)
!311 = !DILocation(line: 229, column: 9, scope: !2, inlinedAt: !68)
!312 = !DILocation(line: 241, column: 8, scope: !2, inlinedAt: !68)
!313 = !DILocation(line: 242, column: 3, scope: !2, inlinedAt: !68)
!314 = !DILocation(line: 141, column: 22, scope: !69)
!315 = !DILocation(line: 0, scope: !166, inlinedAt: !68)
!316 = !DILocation(line: 244, column: 22, scope: !166, inlinedAt: !68)
!317 = !DILocation(line: 244, column: 14, scope: !166, inlinedAt: !68)
!318 = !DILocation(line: 244, column: 8, scope: !166, inlinedAt: !68)
!319 = !DILocation(line: 244, column: 12, scope: !166, inlinedAt: !68)
!320 = !DILocation(line: 245, column: 9, scope: !166, inlinedAt: !68)
!321 = !DILocation(line: 247, column: 12, scope: !2, inlinedAt: !68)
!322 = !DILocation(line: 246, column: 5, scope: !166, inlinedAt: !68)
!323 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !324)
!324 = distinct !DILocation(line: 249, column: 3, scope: !2, inlinedAt: !68)
!325 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !324)
!326 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !324)
!327 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !324)
!328 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !324)
!329 = !DILocation(line: 250, column: 1, scope: !2, inlinedAt: !68)
!330 = !DILocation(line: 142, column: 8, scope: !69)
!331 = !DILocation(line: 144, column: 12, scope: !69)
!332 = !DILocation(line: 268, column: 1, scope: !130, inlinedAt: !333)
!333 = distinct !DILocation(line: 145, column: 8, scope: !69)
!334 = !DILocation(line: 271, column: 13, scope: !130, inlinedAt: !333)
!335 = !DILocation(line: 271, column: 36, scope: !130, inlinedAt: !333)
!336 = !DILocation(line: 271, column: 3, scope: !130, inlinedAt: !333)
!337 = !DILocation(line: 272, column: 1, scope: !130, inlinedAt: !333)
!338 = !DILocation(line: 146, column: 8, scope: !69)
!339 = !DILocation(line: 0, scope: !78)
!340 = !DILocation(line: 0, scope: !98)
!341 = !DILocation(line: 151, column: 3, scope: !37)
!342 = !DILocation(line: 152, column: 1, scope: !37)
