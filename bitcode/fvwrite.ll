; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__suio = type { %struct.__siov*, i32, i64 }
%struct.__siov = type { i8*, i64 }

@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @__sfvwrite_r(%struct._reent*, %struct.__sFILE*, %struct.__suio* nocapture) local_unnamed_addr #0 !dbg !17 {
  %4 = getelementptr inbounds %struct.__suio, %struct.__suio* %2, i64 0, i32 2, !dbg !277
  %5 = load i64, i64* %4, align 8, !dbg !277, !tbaa !279
  %6 = icmp eq i64 %5, 0, !dbg !287
  br i1 %6, label %294, label %7, !dbg !288

; <label>:7:                                      ; preds = %3
  %8 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !289
  %9 = load i16, i16* %8, align 8, !dbg !289, !tbaa !291
  %10 = and i16 %9, 8, !dbg !289
  %11 = icmp eq i16 %10, 0, !dbg !289
  br i1 %11, label %16, label %12, !dbg !289

; <label>:12:                                     ; preds = %7
  %13 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0, !dbg !289
  %14 = load i8*, i8** %13, align 8, !dbg !289, !tbaa !296
  %15 = icmp eq i8* %14, null, !dbg !289
  br i1 %15, label %16, label %21, !dbg !289

; <label>:16:                                     ; preds = %12, %7
  %17 = tail call i32 @__swsetup_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !289
  %18 = icmp eq i32 %17, 0, !dbg !289
  br i1 %18, label %19, label %294, !dbg !297

; <label>:19:                                     ; preds = %16
  %20 = load i16, i16* %8, align 8, !dbg !298, !tbaa !291
  br label %21, !dbg !297

; <label>:21:                                     ; preds = %19, %12
  %22 = phi i16 [ %20, %19 ], [ %9, %12 ], !dbg !298
  %23 = getelementptr inbounds %struct.__suio, %struct.__suio* %2, i64 0, i32 0, !dbg !299
  %24 = load %struct.__siov*, %struct.__siov** %23, align 8, !dbg !299, !tbaa !300
  %25 = sext i16 %22 to i32, !dbg !302
  %26 = and i32 %25, 2, !dbg !303
  %27 = icmp eq i32 %26, 0, !dbg !303
  br i1 %27, label %62, label %28, !dbg !304

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %30 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %31, !dbg !305

; <label>:31:                                     ; preds = %28, %56
  %32 = phi %struct.__siov* [ %46, %56 ], [ %24, %28 ], !dbg !308
  %33 = phi i8* [ %57, %56 ], [ null, %28 ], !dbg !309
  %34 = phi i64 [ %58, %56 ], [ 0, %28 ], !dbg !309
  %35 = icmp eq i64 %34, 0, !dbg !305
  br i1 %35, label %36, label %45, !dbg !305

; <label>:36:                                     ; preds = %31, %36
  %37 = phi %struct.__siov* [ %40, %36 ], [ %32, %31 ]
  %38 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 0, i32 1, !dbg !310
  %39 = load i64, i64* %38, align 8, !dbg !310, !tbaa !312
  %40 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 1, !dbg !310
  %41 = icmp eq i64 %39, 0, !dbg !305
  br i1 %41, label %36, label %42, !dbg !305, !llvm.loop !314

; <label>:42:                                     ; preds = %36
  %43 = getelementptr inbounds %struct.__siov, %struct.__siov* %37, i64 0, i32 0, !dbg !310
  %44 = load i8*, i8** %43, align 8, !dbg !310, !tbaa !315
  br label %45, !dbg !305

; <label>:45:                                     ; preds = %42, %31
  %46 = phi %struct.__siov* [ %40, %42 ], [ %32, %31 ], !dbg !316
  %47 = phi i8* [ %44, %42 ], [ %33, %31 ], !dbg !316
  %48 = phi i64 [ %39, %42 ], [ %34, %31 ], !dbg !316
  %49 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %29, align 8, !dbg !317, !tbaa !318
  %50 = load i8*, i8** %30, align 8, !dbg !319, !tbaa !320
  %51 = icmp ult i64 %48, 2147482624, !dbg !321
  %52 = select i1 %51, i64 %48, i64 2147482624, !dbg !321
  %53 = trunc i64 %52 to i32, !dbg !321
  %54 = tail call i64 %49(%struct._reent* %0, i8* %50, i8* %47, i32 %53) #3, !dbg !322
  %55 = icmp slt i64 %54, 1, !dbg !324
  br i1 %55, label %291, label %56, !dbg !326

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds i8, i8* %47, i64 %54, !dbg !327
  %58 = sub i64 %48, %54, !dbg !328
  %59 = load i64, i64* %4, align 8, !dbg !329, !tbaa !279
  %60 = sub i64 %59, %54, !dbg !329
  store i64 %60, i64* %4, align 8, !dbg !329, !tbaa !279
  %61 = icmp eq i64 %60, 0, !dbg !330
  br i1 %61, label %294, label %31, !dbg !331, !llvm.loop !332

; <label>:62:                                     ; preds = %21
  %63 = and i32 %25, 1, !dbg !335
  %64 = icmp eq i32 %63, 0, !dbg !336
  %65 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 2
  br i1 %64, label %72, label %66, !dbg !337

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1
  %68 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %69 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0
  %70 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %71 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %206, !dbg !338

; <label>:72:                                     ; preds = %62
  %73 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %74 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 0
  %75 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5, i32 1
  %76 = bitcast %struct.__sFILE* %1 to i64*
  %77 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 5
  %78 = getelementptr inbounds %struct.__sbuf, %struct.__sbuf* %77, i64 0, i32 0
  %79 = bitcast %struct.__sbuf* %77 to i64*
  %80 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 9
  %81 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 7
  br label %82, !dbg !341

; <label>:82:                                     ; preds = %72, %199
  %83 = phi %struct.__siov* [ %97, %199 ], [ %24, %72 ], !dbg !308
  %84 = phi i8* [ %201, %199 ], [ null, %72 ], !dbg !342
  %85 = phi i64 [ %202, %199 ], [ 0, %72 ], !dbg !342
  %86 = icmp eq i64 %85, 0, !dbg !341
  br i1 %86, label %87, label %96, !dbg !341

; <label>:87:                                     ; preds = %82, %87
  %88 = phi %struct.__siov* [ %91, %87 ], [ %83, %82 ]
  %89 = getelementptr inbounds %struct.__siov, %struct.__siov* %88, i64 0, i32 1, !dbg !343
  %90 = load i64, i64* %89, align 8, !dbg !343, !tbaa !312
  %91 = getelementptr inbounds %struct.__siov, %struct.__siov* %88, i64 1, !dbg !343
  %92 = icmp eq i64 %90, 0, !dbg !341
  br i1 %92, label %87, label %93, !dbg !341, !llvm.loop !345

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds %struct.__siov, %struct.__siov* %88, i64 0, i32 0, !dbg !343
  %95 = load i8*, i8** %94, align 8, !dbg !343, !tbaa !315
  br label %96, !dbg !341

; <label>:96:                                     ; preds = %93, %82
  %97 = phi %struct.__siov* [ %91, %93 ], [ %83, %82 ], !dbg !346
  %98 = phi i8* [ %95, %93 ], [ %84, %82 ], !dbg !346
  %99 = phi i64 [ %90, %93 ], [ %85, %82 ], !dbg !346
  %100 = load i32, i32* %65, align 4, !dbg !347, !tbaa !348
  %101 = sext i32 %100 to i64, !dbg !349
  %102 = load i16, i16* %8, align 8, !dbg !350, !tbaa !291
  %103 = sext i16 %102 to i32, !dbg !351
  %104 = and i32 %103, 512, !dbg !352
  %105 = icmp eq i32 %104, 0, !dbg !352
  br i1 %105, label %168, label %106, !dbg !353

; <label>:106:                                    ; preds = %96
  %107 = icmp ult i64 %99, %101, !dbg !354
  %108 = and i32 %103, 1152, !dbg !355
  %109 = icmp eq i32 %108, 0, !dbg !355
  %110 = or i1 %107, %109, !dbg !356
  br i1 %110, label %111, label %113, !dbg !356

; <label>:111:                                    ; preds = %106
  %112 = load i8*, i8** %73, align 8, !dbg !357, !tbaa !358
  br label %157, !dbg !356

; <label>:113:                                    ; preds = %106
  %114 = load i64, i64* %76, align 8, !dbg !359, !tbaa !358
  %115 = load i64, i64* %79, align 8, !dbg !360, !tbaa !296
  %116 = sub i64 %114, %115, !dbg !361
  %117 = trunc i64 %116 to i32, !dbg !362
  %118 = load i32, i32* %75, align 8, !dbg !364, !tbaa !365
  %119 = mul nsw i32 %118, 3, !dbg !366
  %120 = sdiv i32 %119, 2, !dbg !367
  %121 = sext i32 %120 to i64, !dbg !369
  %122 = shl i64 %116, 32, !dbg !371
  %123 = ashr exact i64 %122, 32, !dbg !371
  %124 = add i64 %99, 1, !dbg !372
  %125 = add i64 %124, %123, !dbg !373
  %126 = icmp ugt i64 %125, %121, !dbg !374
  %127 = trunc i64 %125 to i32, !dbg !375
  %128 = select i1 %126, i32 %127, i32 %120, !dbg !376
  %129 = and i16 %102, 1024, !dbg !377
  %130 = icmp eq i16 %129, 0, !dbg !377
  br i1 %130, label %143, label %131, !dbg !379

; <label>:131:                                    ; preds = %113
  %132 = sext i32 %128 to i64, !dbg !380
  %133 = tail call i8* @malloc(i64 %132) #3, !dbg !380
  %134 = icmp eq i8* %133, null, !dbg !383
  br i1 %134, label %135, label %137, !dbg !385

; <label>:135:                                    ; preds = %131
  %136 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !386
  store i32 12, i32* %136, align 8, !dbg !388, !tbaa !389
  br label %291, !dbg !394

; <label>:137:                                    ; preds = %131
  %138 = load i8*, i8** %78, align 8, !dbg !395, !tbaa !296
  %139 = tail call i8* @memcpy(i8* nonnull %133, i8* %138, i64 %123) #3, !dbg !396
  %140 = load i16, i16* %8, align 8, !dbg !397, !tbaa !291
  %141 = and i16 %140, -1153, !dbg !398
  %142 = or i16 %141, 128, !dbg !399
  store i16 %142, i16* %8, align 8, !dbg !400, !tbaa !291
  br label %153, !dbg !401

; <label>:143:                                    ; preds = %113
  %144 = inttoptr i64 %115 to i8*, !dbg !379
  %145 = sext i32 %128 to i64, !dbg !402
  %146 = tail call i8* @realloc(i8* %144, i64 %145) #3, !dbg !402
  %147 = icmp eq i8* %146, null, !dbg !404
  br i1 %147, label %148, label %153, !dbg !406

; <label>:148:                                    ; preds = %143
  %149 = load i8*, i8** %78, align 8, !dbg !407, !tbaa !296
  tail call void @free(i8* %149) #3, !dbg !407
  %150 = load i16, i16* %8, align 8, !dbg !409, !tbaa !291
  %151 = and i16 %150, -129, !dbg !409
  store i16 %151, i16* %8, align 8, !dbg !409, !tbaa !291
  %152 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !410
  store i32 12, i32* %152, align 8, !dbg !411, !tbaa !389
  br label %291, !dbg !412

; <label>:153:                                    ; preds = %137, %143
  %154 = phi i8* [ %133, %137 ], [ %146, %143 ], !dbg !413
  store i8* %154, i8** %78, align 8, !dbg !414, !tbaa !296
  %155 = getelementptr inbounds i8, i8* %154, i64 %123, !dbg !415
  store i8* %155, i8** %73, align 8, !dbg !416, !tbaa !358
  store i32 %128, i32* %75, align 8, !dbg !417, !tbaa !365
  %156 = sub nsw i32 %128, %117, !dbg !418
  store i32 %156, i32* %65, align 4, !dbg !419, !tbaa !348
  br label %157

; <label>:157:                                    ; preds = %111, %153
  %158 = phi i8* [ %155, %153 ], [ %112, %111 ], !dbg !357
  %159 = phi i64 [ %99, %153 ], [ %101, %111 ], !dbg !342
  %160 = icmp ult i64 %99, %159, !dbg !420
  %161 = select i1 %160, i64 %99, i64 %159, !dbg !422
  %162 = tail call i8* @memmove(i8* %158, i8* %98, i64 %161) #3, !dbg !357
  %163 = load i32, i32* %65, align 4, !dbg !423, !tbaa !348
  %164 = trunc i64 %161 to i32, !dbg !423
  %165 = sub i32 %163, %164, !dbg !423
  store i32 %165, i32* %65, align 4, !dbg !423, !tbaa !348
  %166 = load i8*, i8** %73, align 8, !dbg !424, !tbaa !358
  %167 = getelementptr inbounds i8, i8* %166, i64 %161, !dbg !424
  store i8* %167, i8** %73, align 8, !dbg !424, !tbaa !358
  br label %199, !dbg !425

; <label>:168:                                    ; preds = %96
  %169 = load i8*, i8** %73, align 8, !dbg !426, !tbaa !358
  %170 = load i8*, i8** %74, align 8, !dbg !428, !tbaa !296
  %171 = icmp ugt i8* %169, %170, !dbg !429
  br i1 %171, label %176, label %172, !dbg !430

; <label>:172:                                    ; preds = %168
  %173 = load i32, i32* %75, align 8, !dbg !431, !tbaa !365
  %174 = sext i32 %173 to i64, !dbg !432
  %175 = icmp ult i64 %99, %174, !dbg !433
  br i1 %175, label %176, label %189, !dbg !434

; <label>:176:                                    ; preds = %172, %168
  %177 = icmp ult i64 %99, %101, !dbg !435
  %178 = select i1 %177, i64 %99, i64 %101, !dbg !435
  %179 = tail call i8* @memmove(i8* %169, i8* %98, i64 %178) #3, !dbg !437
  %180 = load i32, i32* %65, align 4, !dbg !438, !tbaa !348
  %181 = trunc i64 %178 to i32, !dbg !438
  %182 = sub i32 %180, %181, !dbg !438
  store i32 %182, i32* %65, align 4, !dbg !438, !tbaa !348
  %183 = load i8*, i8** %73, align 8, !dbg !439, !tbaa !358
  %184 = getelementptr inbounds i8, i8* %183, i64 %178, !dbg !439
  store i8* %184, i8** %73, align 8, !dbg !439, !tbaa !358
  %185 = icmp eq i32 %182, 0, !dbg !440
  br i1 %185, label %186, label %199, !dbg !442

; <label>:186:                                    ; preds = %176
  %187 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !443
  %188 = icmp eq i32 %187, 0, !dbg !443
  br i1 %188, label %199, label %291, !dbg !444

; <label>:189:                                    ; preds = %172
  %190 = icmp ult i64 %99, 2147483647, !dbg !445
  %191 = select i1 %190, i64 %99, i64 2147483647, !dbg !445
  %192 = trunc i64 %191 to i32, !dbg !447
  %193 = srem i32 %192, %173, !dbg !448
  %194 = sub nsw i32 %192, %193, !dbg !448
  %195 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %80, align 8, !dbg !449, !tbaa !318
  %196 = load i8*, i8** %81, align 8, !dbg !450, !tbaa !320
  %197 = tail call i64 %195(%struct._reent* %0, i8* %196, i8* %98, i32 %194) #3, !dbg !451
  %198 = icmp slt i64 %197, 1, !dbg !452
  br i1 %198, label %291, label %199, !dbg !454

; <label>:199:                                    ; preds = %186, %176, %189, %157
  %200 = phi i64 [ %99, %157 ], [ %178, %186 ], [ %178, %176 ], [ %197, %189 ], !dbg !455
  %201 = getelementptr inbounds i8, i8* %98, i64 %200, !dbg !456
  %202 = sub i64 %99, %200, !dbg !457
  %203 = load i64, i64* %4, align 8, !dbg !458, !tbaa !279
  %204 = sub i64 %203, %200, !dbg !458
  store i64 %204, i64* %4, align 8, !dbg !458, !tbaa !279
  %205 = icmp eq i64 %204, 0, !dbg !459
  br i1 %205, label %294, label %82, !dbg !460, !llvm.loop !461

; <label>:206:                                    ; preds = %66, %284
  %207 = phi %struct.__siov* [ %239, %284 ], [ %24, %66 ], !dbg !308
  %208 = phi i8* [ %286, %284 ], [ null, %66 ], !dbg !464
  %209 = phi i64 [ %287, %284 ], [ 0, %66 ], !dbg !464
  %210 = phi i32 [ %285, %284 ], [ 0, %66 ], !dbg !465
  %211 = phi i64 [ %278, %284 ], [ 0, %66 ], !dbg !468
  %212 = icmp eq i64 %209, 0, !dbg !338
  br i1 %212, label %213, label %222, !dbg !338

; <label>:213:                                    ; preds = %206, %213
  %214 = phi %struct.__siov* [ %217, %213 ], [ %207, %206 ]
  %215 = getelementptr inbounds %struct.__siov, %struct.__siov* %214, i64 0, i32 1, !dbg !470
  %216 = load i64, i64* %215, align 8, !dbg !470, !tbaa !312
  %217 = getelementptr inbounds %struct.__siov, %struct.__siov* %214, i64 1, !dbg !470
  %218 = icmp eq i64 %216, 0, !dbg !338
  br i1 %218, label %213, label %219, !dbg !338, !llvm.loop !472

; <label>:219:                                    ; preds = %213
  %220 = getelementptr inbounds %struct.__siov, %struct.__siov* %214, i64 0, i32 0, !dbg !470
  %221 = load i8*, i8** %220, align 8, !dbg !470, !tbaa !315
  br label %224, !dbg !473

; <label>:222:                                    ; preds = %206
  %223 = icmp eq i32 %210, 0, !dbg !474
  br i1 %223, label %224, label %236, !dbg !473

; <label>:224:                                    ; preds = %219, %222
  %225 = phi i64 [ %216, %219 ], [ %209, %222 ]
  %226 = phi i8* [ %221, %219 ], [ %208, %222 ]
  %227 = phi %struct.__siov* [ %217, %219 ], [ %207, %222 ]
  %228 = tail call i8* @memchr(i8* %226, i32 10, i64 %225) #3, !dbg !476
  %229 = icmp eq i8* %228, null, !dbg !479
  %230 = getelementptr inbounds i8, i8* %228, i64 1, !dbg !480
  %231 = ptrtoint i8* %230 to i64, !dbg !481
  %232 = ptrtoint i8* %226 to i64, !dbg !481
  %233 = sub i64 %231, %232, !dbg !481
  %234 = add i64 %225, 1, !dbg !482
  %235 = select i1 %229, i64 %234, i64 %233, !dbg !479
  br label %236, !dbg !479

; <label>:236:                                    ; preds = %224, %222
  %237 = phi i64 [ %209, %222 ], [ %225, %224 ]
  %238 = phi i8* [ %208, %222 ], [ %226, %224 ]
  %239 = phi %struct.__siov* [ %207, %222 ], [ %227, %224 ]
  %240 = phi i32 [ %210, %222 ], [ 1, %224 ], !dbg !483
  %241 = phi i64 [ %211, %222 ], [ %235, %224 ], !dbg !483
  %242 = shl i64 %241, 32, !dbg !484
  %243 = ashr exact i64 %242, 32, !dbg !484
  %244 = icmp ult i64 %237, %243, !dbg !484
  %245 = select i1 %244, i64 %237, i64 %243, !dbg !484
  %246 = load i32, i32* %65, align 4, !dbg !486, !tbaa !348
  %247 = load i32, i32* %67, align 8, !dbg !487, !tbaa !365
  %248 = add nsw i32 %247, %246, !dbg !488
  %249 = sext i32 %248 to i64, !dbg !489
  %250 = load i8*, i8** %68, align 8, !dbg !490, !tbaa !358
  %251 = load i8*, i8** %69, align 8, !dbg !492, !tbaa !296
  %252 = icmp ugt i8* %250, %251, !dbg !493
  %253 = icmp sgt i64 %245, %249, !dbg !494
  %254 = and i1 %252, %253, !dbg !495
  br i1 %254, label %255, label %261, !dbg !495

; <label>:255:                                    ; preds = %236
  %256 = tail call i8* @memmove(i8* %250, i8* %238, i64 %249) #3, !dbg !496
  %257 = load i8*, i8** %68, align 8, !dbg !498, !tbaa !358
  %258 = getelementptr inbounds i8, i8* %257, i64 %249, !dbg !498
  store i8* %258, i8** %68, align 8, !dbg !498, !tbaa !358
  %259 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !499
  %260 = icmp eq i32 %259, 0, !dbg !499
  br i1 %260, label %276, label %291, !dbg !501

; <label>:261:                                    ; preds = %236
  %262 = sext i32 %247 to i64, !dbg !502
  %263 = icmp slt i64 %245, %262, !dbg !504
  br i1 %263, label %269, label %264, !dbg !505

; <label>:264:                                    ; preds = %261
  %265 = load i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)** %70, align 8, !dbg !506, !tbaa !318
  %266 = load i8*, i8** %71, align 8, !dbg !508, !tbaa !320
  %267 = tail call i64 %265(%struct._reent* %0, i8* %266, i8* %238, i32 %247) #3, !dbg !509
  %268 = icmp slt i64 %267, 1, !dbg !510
  br i1 %268, label %291, label %276, !dbg !512

; <label>:269:                                    ; preds = %261
  %270 = tail call i8* @memmove(i8* %250, i8* %238, i64 %245) #3, !dbg !513
  %271 = load i32, i32* %65, align 4, !dbg !515, !tbaa !348
  %272 = trunc i64 %245 to i32, !dbg !515
  %273 = sub i32 %271, %272, !dbg !515
  store i32 %273, i32* %65, align 4, !dbg !515, !tbaa !348
  %274 = load i8*, i8** %68, align 8, !dbg !516, !tbaa !358
  %275 = getelementptr inbounds i8, i8* %274, i64 %245, !dbg !516
  store i8* %275, i8** %68, align 8, !dbg !516, !tbaa !358
  br label %276

; <label>:276:                                    ; preds = %255, %269, %264
  %277 = phi i64 [ %249, %255 ], [ %267, %264 ], [ %245, %269 ], !dbg !517
  %278 = sub nsw i64 %243, %277, !dbg !518
  %279 = trunc i64 %278 to i32, !dbg !518
  %280 = icmp eq i32 %279, 0, !dbg !520
  br i1 %280, label %281, label %284, !dbg !521

; <label>:281:                                    ; preds = %276
  %282 = tail call i32 @_fflush_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #3, !dbg !522
  %283 = icmp eq i32 %282, 0, !dbg !522
  br i1 %283, label %284, label %291, !dbg !524

; <label>:284:                                    ; preds = %281, %276
  %285 = phi i32 [ %240, %276 ], [ 0, %281 ], !dbg !525
  %286 = getelementptr inbounds i8, i8* %238, i64 %277, !dbg !526
  %287 = sub i64 %237, %277, !dbg !527
  %288 = load i64, i64* %4, align 8, !dbg !528, !tbaa !279
  %289 = sub i64 %288, %277, !dbg !528
  store i64 %289, i64* %4, align 8, !dbg !528, !tbaa !279
  %290 = icmp eq i64 %289, 0, !dbg !529
  br i1 %290, label %294, label %206, !dbg !530, !llvm.loop !531

; <label>:291:                                    ; preds = %45, %255, %281, %264, %186, %189, %148, %135
  %292 = load i16, i16* %8, align 8, !dbg !534, !tbaa !291
  %293 = or i16 %292, 64, !dbg !534
  store i16 %293, i16* %8, align 8, !dbg !534, !tbaa !291
  br label %294, !dbg !535

; <label>:294:                                    ; preds = %56, %284, %199, %16, %3, %291
  %295 = phi i32 [ -1, %291 ], [ 0, %3 ], [ -1, %16 ], [ 0, %199 ], [ 0, %284 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  ret i32 %295, !dbg !536
}

; Function Attrs: noredzone
declare dso_local i32 @__swsetup_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memmove(i8*, i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @_fflush_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @memchr(i8*, i32, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !7, !12}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 40, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !10, line: 129, baseType: !11)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!11 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{i32 2, !"Dwarf Version", i32 4}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!17 = distinct !DISubprogram(name: "__sfvwrite_r", scope: !1, file: !1, line: 48, type: !18, isLocal: false, isDefinition: true, scopeLine: 52, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !252)
!18 = !DISubroutineType(types: !19)
!19 = !{!12, !20, !235, !238}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !22, line: 569, size: 14912, elements: !23)
!22 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!23 = !{!24, !25, !103, !104, !105, !106, !110, !111, !114, !115, !119, !131, !132, !133, !135, !136, !137, !199, !220, !221, !226, !233}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !21, file: !22, line: 571, baseType: !12, size: 32)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !22, line: 287, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !22, line: 181, size: 1408, elements: !29)
!29 = !{!30, !31, !32, !33, !35, !36, !41, !42, !43, !51, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !28, file: !22, line: 182, baseType: !5, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !28, file: !22, line: 183, baseType: !12, size: 32, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !28, file: !22, line: 184, baseType: !12, size: 32, offset: 96)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !28, file: !22, line: 185, baseType: !34, size: 16, offset: 128)
!34 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !28, file: !22, line: 186, baseType: !34, size: 16, offset: 144)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !28, file: !22, line: 187, baseType: !37, size: 128, offset: 192)
!37 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !22, line: 117, size: 128, elements: !38)
!38 = !{!39, !40}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !37, file: !22, line: 118, baseType: !5, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !37, file: !22, line: 119, baseType: !12, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !28, file: !22, line: 188, baseType: !12, size: 32, offset: 320)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !28, file: !22, line: 195, baseType: !4, size: 64, offset: 384)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !28, file: !22, line: 197, baseType: !44, size: 64, offset: 448)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DISubroutineType(types: !46)
!46 = !{!47, !20, !4, !49, !12}
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !10, line: 145, baseType: !48)
!48 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !28, file: !22, line: 199, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DISubroutineType(types: !54)
!54 = !{!47, !20, !4, !55, !12}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !28, file: !22, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !20, !4, !61, !12}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !10, line: 114, baseType: !48)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !28, file: !22, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!12, !20, !4}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !28, file: !22, line: 206, baseType: !37, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !28, file: !22, line: 207, baseType: !5, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !28, file: !22, line: 208, baseType: !12, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !28, file: !22, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !28, file: !22, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !28, file: !22, line: 215, baseType: !37, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !28, file: !22, line: 218, baseType: !12, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !28, file: !22, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !10, line: 44, baseType: !48)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !28, file: !22, line: 222, baseType: !20, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !28, file: !22, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !10, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !12)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !28, file: !22, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !10, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !10, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !10, line: 165, baseType: !12, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !10, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !10, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !10, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !10, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !28, file: !22, line: 229, baseType: !12, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !21, file: !22, line: 576, baseType: !26, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !21, file: !22, line: 578, baseType: !12, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !21, file: !22, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !21, file: !22, line: 582, baseType: !12, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !21, file: !22, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !22, line: 40, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !21, file: !22, line: 585, baseType: !12, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !21, file: !22, line: 587, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !20}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !21, file: !22, line: 590, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !22, line: 47, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !121, file: !22, line: 49, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !121, file: !22, line: 50, baseType: !12, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !121, file: !22, line: 51, baseType: !129, size: 32, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !75)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !22, line: 25, baseType: !97)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !21, file: !22, line: 591, baseType: !12, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !21, file: !22, line: 592, baseType: !120, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !21, file: !22, line: 593, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !21, file: !22, line: 596, baseType: !12, size: 32, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !21, file: !22, line: 597, baseType: !49, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !21, file: !22, line: 632, baseType: !138, size: 2880, offset: 1152)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !21, file: !22, line: 599, size: 2880, elements: !139)
!139 = !{!140, !190}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !138, file: !22, line: 622, baseType: !141, size: 1728)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !22, line: 601, size: 1728, elements: !142)
!142 = !{!143, !144, !145, !149, !161, !162, !164, !172, !173, !174, !175, !179, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !141, file: !22, line: 603, baseType: !97, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !141, file: !22, line: 604, baseType: !49, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !141, file: !22, line: 605, baseType: !146, size: 208, offset: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 208, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 26)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !141, file: !22, line: 606, baseType: !150, size: 288, offset: 352)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !22, line: 55, size: 288, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !150, file: !22, line: 57, baseType: !12, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !150, file: !22, line: 58, baseType: !12, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !150, file: !22, line: 59, baseType: !12, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !150, file: !22, line: 60, baseType: !12, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !150, file: !22, line: 61, baseType: !12, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !150, file: !22, line: 62, baseType: !12, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !150, file: !22, line: 63, baseType: !12, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !150, file: !22, line: 64, baseType: !12, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !150, file: !22, line: 65, baseType: !12, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !141, file: !22, line: 607, baseType: !12, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !141, file: !22, line: 608, baseType: !163, size: 64, offset: 704)
!163 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !141, file: !22, line: 609, baseType: !165, size: 112, offset: 768)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !22, line: 319, size: 112, elements: !166)
!166 = !{!167, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !165, file: !22, line: 320, baseType: !168, size: 48)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !71)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !165, file: !22, line: 321, baseType: !168, size: 48, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !165, file: !22, line: 322, baseType: !169, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !141, file: !22, line: 610, baseType: !87, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !141, file: !22, line: 611, baseType: !87, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !141, file: !22, line: 612, baseType: !87, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !141, file: !22, line: 613, baseType: !176, size: 64, offset: 1088)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !141, file: !22, line: 614, baseType: !180, size: 192, offset: 1152)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !50, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !141, file: !22, line: 615, baseType: !12, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !141, file: !22, line: 616, baseType: !87, size: 64, offset: 1376)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !141, file: !22, line: 617, baseType: !87, size: 64, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !141, file: !22, line: 618, baseType: !87, size: 64, offset: 1504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !141, file: !22, line: 619, baseType: !87, size: 64, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !141, file: !22, line: 620, baseType: !87, size: 64, offset: 1632)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !141, file: !22, line: 621, baseType: !12, size: 32, offset: 1696)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !138, file: !22, line: 631, baseType: !191, size: 2880)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !22, line: 626, size: 2880, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !191, file: !22, line: 629, baseType: !194, size: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 1920, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !191, file: !22, line: 630, baseType: !198, size: 960, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !21, file: !22, line: 636, baseType: !200, size: 64, offset: 4032)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !22, line: 93, size: 6336, elements: !202)
!202 = !{!203, !204, !205, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !22, line: 94, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !201, file: !22, line: 95, baseType: !12, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !201, file: !22, line: 97, baseType: !206, size: 2048, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2048, elements: !210)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{!211}
!211 = !DISubrange(count: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !201, file: !22, line: 98, baseType: !213, size: 4160, offset: 2176)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !22, line: 74, size: 4160, elements: !214)
!214 = !{!215, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !213, file: !22, line: 75, baseType: !216, size: 2048)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !210)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !213, file: !22, line: 76, baseType: !216, size: 2048, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !213, file: !22, line: 78, baseType: !130, size: 32, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !213, file: !22, line: 81, baseType: !130, size: 32, offset: 4128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !21, file: !22, line: 637, baseType: !201, size: 6336, offset: 4096)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !21, file: !22, line: 641, baseType: !222, size: 64, offset: 10432)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !12}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !21, file: !22, line: 646, baseType: !227, size: 192, offset: 10496)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !22, line: 291, size: 192, elements: !228)
!228 = !{!229, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !227, file: !22, line: 293, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !227, file: !22, line: 294, baseType: !12, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !227, file: !22, line: 295, baseType: !26, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !21, file: !22, line: 648, baseType: !234, size: 4224, offset: 10688)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, size: 4224, elements: !71)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !237, line: 66, baseType: !27)
!237 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__suio", file: !240, line: 28, size: 192, elements: !241)
!240 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/fvwrite.h", directory: "/root/.unikraft/apps/redis/build")
!241 = !{!242, !250, !251}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uio_iov", scope: !239, file: !240, line: 29, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__siov", file: !240, line: 24, size: 128, elements: !245)
!245 = !{!246, !249}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !244, file: !240, line: 25, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !244, file: !240, line: 26, baseType: !7, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uio_iovcnt", scope: !239, file: !240, line: 30, baseType: !12, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "uio_resid", scope: !239, file: !240, line: 31, baseType: !7, size: 64, offset: 128)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !273, !274}
!253 = !DILocalVariable(name: "ptr", arg: 1, scope: !17, file: !1, line: 48, type: !20)
!254 = !DILocalVariable(name: "fp", arg: 2, scope: !17, file: !1, line: 48, type: !235)
!255 = !DILocalVariable(name: "uio", arg: 3, scope: !17, file: !1, line: 48, type: !238)
!256 = !DILocalVariable(name: "len", scope: !17, file: !1, line: 53, type: !7)
!257 = !DILocalVariable(name: "p", scope: !17, file: !1, line: 54, type: !55)
!258 = !DILocalVariable(name: "iov", scope: !17, file: !1, line: 55, type: !243)
!259 = !DILocalVariable(name: "w", scope: !17, file: !1, line: 56, type: !47)
!260 = !DILocalVariable(name: "s", scope: !17, file: !1, line: 56, type: !47)
!261 = !DILocalVariable(name: "nl", scope: !17, file: !1, line: 57, type: !49)
!262 = !DILocalVariable(name: "nlknown", scope: !17, file: !1, line: 58, type: !12)
!263 = !DILocalVariable(name: "nldist", scope: !17, file: !1, line: 58, type: !12)
!264 = !DILocalVariable(name: "str", scope: !265, file: !1, line: 131, type: !5)
!265 = distinct !DILexicalBlock(scope: !266, file: !1, line: 130, column: 3)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 129, column: 12)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 128, column: 6)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 127, column: 8)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 124, column: 2)
!270 = distinct !DILexicalBlock(scope: !271, file: !1, line: 109, column: 5)
!271 = distinct !DILexicalBlock(scope: !272, file: !1, line: 108, column: 12)
!272 = distinct !DILexicalBlock(scope: !17, file: !1, line: 90, column: 7)
!273 = !DILocalVariable(name: "curpos", scope: !265, file: !1, line: 132, type: !12)
!274 = !DILocalVariable(name: "newsize", scope: !265, file: !1, line: 140, type: !12)
!275 = !DILocation(line: 48, column: 1, scope: !17)
!276 = !DILocation(line: 54, column: 25, scope: !17)
!277 = !DILocation(line: 60, column: 19, scope: !278)
!278 = distinct !DILexicalBlock(scope: !17, file: !1, line: 60, column: 7)
!279 = !{!280, !285, i64 16}
!280 = !{!"__suio", !281, i64 0, !284, i64 8, !285, i64 16}
!281 = !{!"any pointer", !282, i64 0}
!282 = !{!"omnipotent char", !283, i64 0}
!283 = !{!"Simple C/C++ TBAA"}
!284 = !{!"int", !282, i64 0}
!285 = !{!"long", !282, i64 0}
!286 = !DILocation(line: 53, column: 19, scope: !17)
!287 = !DILocation(line: 60, column: 30, scope: !278)
!288 = !DILocation(line: 60, column: 7, scope: !17)
!289 = !DILocation(line: 64, column: 7, scope: !290)
!290 = distinct !DILexicalBlock(scope: !17, file: !1, line: 64, column: 7)
!291 = !{!292, !293, i64 16}
!292 = !{!"__sFILE", !281, i64 0, !284, i64 8, !284, i64 12, !293, i64 16, !293, i64 18, !294, i64 24, !284, i64 40, !281, i64 48, !281, i64 56, !281, i64 64, !281, i64 72, !281, i64 80, !294, i64 88, !281, i64 104, !284, i64 112, !282, i64 116, !282, i64 119, !294, i64 120, !284, i64 136, !285, i64 144, !281, i64 152, !284, i64 160, !295, i64 164, !284, i64 172}
!293 = !{!"short", !282, i64 0}
!294 = !{!"__sbuf", !281, i64 0, !284, i64 8}
!295 = !{!"", !284, i64 0, !282, i64 4}
!296 = !{!292, !281, i64 24}
!297 = !DILocation(line: 64, column: 7, scope: !17)
!298 = !DILocation(line: 90, column: 11, scope: !272)
!299 = !DILocation(line: 67, column: 14, scope: !17)
!300 = !{!280, !281, i64 0}
!301 = !DILocation(line: 55, column: 27, scope: !17)
!302 = !DILocation(line: 90, column: 7, scope: !272)
!303 = !DILocation(line: 90, column: 18, scope: !272)
!304 = !DILocation(line: 90, column: 7, scope: !17)
!305 = !DILocation(line: 98, column: 4, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !1, line: 97, column: 2)
!307 = distinct !DILexicalBlock(scope: !272, file: !1, line: 91, column: 5)
!308 = !DILocation(line: 67, column: 7, scope: !17)
!309 = !DILocation(line: 0, scope: !306)
!310 = !DILocation(line: 98, column: 4, scope: !311)
!311 = distinct !DILexicalBlock(scope: !306, file: !1, line: 98, column: 4)
!312 = !{!313, !285, i64 8}
!313 = !{!"__siov", !281, i64 0, !285, i64 8}
!314 = distinct !{!314, !305, !305}
!315 = !{!313, !281, i64 0}
!316 = !DILocation(line: 0, scope: !311)
!317 = !DILocation(line: 99, column: 12, scope: !306)
!318 = !{!292, !281, i64 64}
!319 = !DILocation(line: 99, column: 29, scope: !306)
!320 = !{!292, !281, i64 48}
!321 = !DILocation(line: 100, column: 6, scope: !306)
!322 = !DILocation(line: 99, column: 8, scope: !306)
!323 = !DILocation(line: 56, column: 36, scope: !17)
!324 = !DILocation(line: 101, column: 10, scope: !325)
!325 = distinct !DILexicalBlock(scope: !306, file: !1, line: 101, column: 8)
!326 = !DILocation(line: 101, column: 8, scope: !306)
!327 = !DILocation(line: 103, column: 6, scope: !306)
!328 = !DILocation(line: 104, column: 8, scope: !306)
!329 = !DILocation(line: 106, column: 30, scope: !307)
!330 = !DILocation(line: 106, column: 36, scope: !307)
!331 = !DILocation(line: 105, column: 2, scope: !306)
!332 = distinct !{!332, !333, !334}
!333 = !DILocation(line: 96, column: 7, scope: !307)
!334 = !DILocation(line: 106, column: 40, scope: !307)
!335 = !DILocation(line: 108, column: 24, scope: !271)
!336 = !DILocation(line: 108, column: 34, scope: !271)
!337 = !DILocation(line: 108, column: 12, scope: !272)
!338 = !DILocation(line: 219, column: 4, scope: !339)
!339 = distinct !DILexicalBlock(scope: !340, file: !1, line: 218, column: 2)
!340 = distinct !DILexicalBlock(scope: !271, file: !1, line: 207, column: 5)
!341 = !DILocation(line: 125, column: 4, scope: !269)
!342 = !DILocation(line: 0, scope: !269)
!343 = !DILocation(line: 125, column: 4, scope: !344)
!344 = distinct !DILexicalBlock(scope: !269, file: !1, line: 125, column: 4)
!345 = distinct !{!345, !341, !341}
!346 = !DILocation(line: 0, scope: !344)
!347 = !DILocation(line: 126, column: 12, scope: !269)
!348 = !{!292, !284, i64 12}
!349 = !DILocation(line: 126, column: 8, scope: !269)
!350 = !DILocation(line: 127, column: 12, scope: !268)
!351 = !DILocation(line: 127, column: 8, scope: !268)
!352 = !DILocation(line: 127, column: 19, scope: !268)
!353 = !DILocation(line: 127, column: 8, scope: !269)
!354 = !DILocation(line: 129, column: 16, scope: !266)
!355 = !DILocation(line: 129, column: 35, scope: !266)
!356 = !DILocation(line: 129, column: 21, scope: !266)
!357 = !DILocation(line: 178, column: 8, scope: !267)
!358 = !{!292, !281, i64 0}
!359 = !DILocation(line: 132, column: 23, scope: !265)
!360 = !DILocation(line: 132, column: 36, scope: !265)
!361 = !DILocation(line: 132, column: 26, scope: !265)
!362 = !DILocation(line: 132, column: 18, scope: !265)
!363 = !DILocation(line: 132, column: 9, scope: !265)
!364 = !DILocation(line: 140, column: 27, scope: !265)
!365 = !{!292, !284, i64 32}
!366 = !DILocation(line: 140, column: 33, scope: !265)
!367 = !DILocation(line: 140, column: 37, scope: !265)
!368 = !DILocation(line: 140, column: 9, scope: !265)
!369 = !DILocation(line: 141, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !265, file: !1, line: 141, column: 9)
!371 = !DILocation(line: 141, column: 19, scope: !370)
!372 = !DILocation(line: 141, column: 26, scope: !370)
!373 = !DILocation(line: 141, column: 32, scope: !370)
!374 = !DILocation(line: 141, column: 17, scope: !370)
!375 = !DILocation(line: 142, column: 17, scope: !370)
!376 = !DILocation(line: 141, column: 9, scope: !265)
!377 = !DILocation(line: 143, column: 20, scope: !378)
!378 = distinct !DILexicalBlock(scope: !265, file: !1, line: 143, column: 9)
!379 = !DILocation(line: 143, column: 9, scope: !265)
!380 = !DILocation(line: 146, column: 32, scope: !381)
!381 = distinct !DILexicalBlock(scope: !378, file: !1, line: 144, column: 7)
!382 = !DILocation(line: 131, column: 20, scope: !265)
!383 = !DILocation(line: 147, column: 14, scope: !384)
!384 = distinct !DILexicalBlock(scope: !381, file: !1, line: 147, column: 13)
!385 = !DILocation(line: 147, column: 13, scope: !381)
!386 = !DILocation(line: 149, column: 11, scope: !387)
!387 = distinct !DILexicalBlock(scope: !384, file: !1, line: 148, column: 4)
!388 = !DILocation(line: 149, column: 18, scope: !387)
!389 = !{!390, !284, i64 0}
!390 = !{!"_reent", !284, i64 0, !281, i64 8, !281, i64 16, !281, i64 24, !284, i64 32, !282, i64 36, !284, i64 64, !281, i64 72, !284, i64 80, !281, i64 88, !281, i64 96, !284, i64 104, !281, i64 112, !281, i64 120, !284, i64 128, !281, i64 136, !282, i64 144, !281, i64 504, !391, i64 512, !281, i64 1304, !393, i64 1312, !282, i64 1336}
!391 = !{!"_atexit", !281, i64 0, !284, i64 8, !282, i64 16, !392, i64 272}
!392 = !{!"_on_exit_args", !282, i64 0, !282, i64 256, !284, i64 512, !284, i64 516}
!393 = !{!"_glue", !281, i64 0, !284, i64 8, !281, i64 16}
!394 = !DILocation(line: 150, column: 6, scope: !387)
!395 = !DILocation(line: 152, column: 30, scope: !381)
!396 = !DILocation(line: 152, column: 9, scope: !381)
!397 = !DILocation(line: 153, column: 27, scope: !381)
!398 = !DILocation(line: 153, column: 34, scope: !381)
!399 = !DILocation(line: 153, column: 45, scope: !381)
!400 = !DILocation(line: 153, column: 20, scope: !381)
!401 = !DILocation(line: 154, column: 7, scope: !381)
!402 = !DILocation(line: 157, column: 32, scope: !403)
!403 = distinct !DILexicalBlock(scope: !378, file: !1, line: 156, column: 7)
!404 = !DILocation(line: 159, column: 14, scope: !405)
!405 = distinct !DILexicalBlock(scope: !403, file: !1, line: 159, column: 13)
!406 = !DILocation(line: 159, column: 13, scope: !403)
!407 = !DILocation(line: 163, column: 6, scope: !408)
!408 = distinct !DILexicalBlock(scope: !405, file: !1, line: 160, column: 4)
!409 = !DILocation(line: 164, column: 17, scope: !408)
!410 = !DILocation(line: 166, column: 11, scope: !408)
!411 = !DILocation(line: 166, column: 18, scope: !408)
!412 = !DILocation(line: 167, column: 6, scope: !408)
!413 = !DILocation(line: 0, scope: !403)
!414 = !DILocation(line: 170, column: 19, scope: !265)
!415 = !DILocation(line: 171, column: 18, scope: !265)
!416 = !DILocation(line: 171, column: 12, scope: !265)
!417 = !DILocation(line: 172, column: 19, scope: !265)
!418 = !DILocation(line: 174, column: 22, scope: !265)
!419 = !DILocation(line: 174, column: 12, scope: !265)
!420 = !DILocation(line: 176, column: 16, scope: !421)
!421 = distinct !DILexicalBlock(scope: !267, file: !1, line: 176, column: 12)
!422 = !DILocation(line: 176, column: 12, scope: !267)
!423 = !DILocation(line: 179, column: 15, scope: !267)
!424 = !DILocation(line: 180, column: 15, scope: !267)
!425 = !DILocation(line: 182, column: 6, scope: !267)
!426 = !DILocation(line: 183, column: 17, scope: !427)
!427 = distinct !DILexicalBlock(scope: !268, file: !1, line: 183, column: 13)
!428 = !DILocation(line: 183, column: 30, scope: !427)
!429 = !DILocation(line: 183, column: 20, scope: !427)
!430 = !DILocation(line: 183, column: 36, scope: !427)
!431 = !DILocation(line: 183, column: 53, scope: !427)
!432 = !DILocation(line: 183, column: 45, scope: !427)
!433 = !DILocation(line: 183, column: 43, scope: !427)
!434 = !DILocation(line: 183, column: 13, scope: !268)
!435 = !DILocation(line: 186, column: 12, scope: !436)
!436 = distinct !DILexicalBlock(scope: !427, file: !1, line: 184, column: 6)
!437 = !DILocation(line: 187, column: 8, scope: !436)
!438 = !DILocation(line: 188, column: 15, scope: !436)
!439 = !DILocation(line: 189, column: 15, scope: !436)
!440 = !DILocation(line: 190, column: 19, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !1, line: 190, column: 12)
!442 = !DILocation(line: 190, column: 24, scope: !441)
!443 = !DILocation(line: 190, column: 27, scope: !441)
!444 = !DILocation(line: 190, column: 12, scope: !436)
!445 = !DILocation(line: 196, column: 18, scope: !446)
!446 = distinct !DILexicalBlock(scope: !427, file: !1, line: 194, column: 6)
!447 = !DILocation(line: 196, column: 13, scope: !446)
!448 = !DILocation(line: 196, column: 54, scope: !446)
!449 = !DILocation(line: 197, column: 16, scope: !446)
!450 = !DILocation(line: 197, column: 33, scope: !446)
!451 = !DILocation(line: 197, column: 12, scope: !446)
!452 = !DILocation(line: 198, column: 14, scope: !453)
!453 = distinct !DILexicalBlock(scope: !446, file: !1, line: 198, column: 12)
!454 = !DILocation(line: 198, column: 12, scope: !446)
!455 = !DILocation(line: 0, scope: !446)
!456 = !DILocation(line: 201, column: 6, scope: !269)
!457 = !DILocation(line: 202, column: 8, scope: !269)
!458 = !DILocation(line: 204, column: 30, scope: !270)
!459 = !DILocation(line: 204, column: 36, scope: !270)
!460 = !DILocation(line: 203, column: 2, scope: !269)
!461 = distinct !{!461, !462, !463}
!462 = !DILocation(line: 123, column: 7, scope: !270)
!463 = !DILocation(line: 204, column: 40, scope: !270)
!464 = !DILocation(line: 0, scope: !339)
!465 = !DILocation(line: 0, scope: !466)
!466 = distinct !DILexicalBlock(scope: !467, file: !1, line: 250, column: 6)
!467 = distinct !DILexicalBlock(scope: !339, file: !1, line: 249, column: 8)
!468 = !DILocation(line: 0, scope: !467)
!469 = !DILocation(line: 58, column: 7, scope: !17)
!470 = !DILocation(line: 219, column: 4, scope: !471)
!471 = distinct !DILexicalBlock(scope: !339, file: !1, line: 219, column: 4)
!472 = distinct !{!472, !338, !338}
!473 = !DILocation(line: 220, column: 8, scope: !339)
!474 = !DILocation(line: 220, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !339, file: !1, line: 220, column: 8)
!476 = !DILocation(line: 222, column: 13, scope: !477)
!477 = distinct !DILexicalBlock(scope: !475, file: !1, line: 221, column: 6)
!478 = !DILocation(line: 57, column: 9, scope: !17)
!479 = !DILocation(line: 223, column: 17, scope: !477)
!480 = !DILocation(line: 223, column: 25, scope: !477)
!481 = !DILocation(line: 223, column: 29, scope: !477)
!482 = !DILocation(line: 223, column: 39, scope: !477)
!483 = !DILocation(line: 0, scope: !477)
!484 = !DILocation(line: 226, column: 8, scope: !339)
!485 = !DILocation(line: 56, column: 39, scope: !17)
!486 = !DILocation(line: 227, column: 12, scope: !339)
!487 = !DILocation(line: 227, column: 25, scope: !339)
!488 = !DILocation(line: 227, column: 15, scope: !339)
!489 = !DILocation(line: 227, column: 8, scope: !339)
!490 = !DILocation(line: 228, column: 12, scope: !491)
!491 = distinct !DILexicalBlock(scope: !339, file: !1, line: 228, column: 8)
!492 = !DILocation(line: 228, column: 25, scope: !491)
!493 = !DILocation(line: 228, column: 15, scope: !491)
!494 = !DILocation(line: 228, column: 36, scope: !491)
!495 = !DILocation(line: 228, column: 31, scope: !491)
!496 = !DILocation(line: 230, column: 8, scope: !497)
!497 = distinct !DILexicalBlock(scope: !491, file: !1, line: 229, column: 6)
!498 = !DILocation(line: 232, column: 15, scope: !497)
!499 = !DILocation(line: 233, column: 12, scope: !500)
!500 = distinct !DILexicalBlock(scope: !497, file: !1, line: 233, column: 12)
!501 = !DILocation(line: 233, column: 12, scope: !497)
!502 = !DILocation(line: 236, column: 23, scope: !503)
!503 = distinct !DILexicalBlock(scope: !491, file: !1, line: 236, column: 13)
!504 = !DILocation(line: 236, column: 15, scope: !503)
!505 = !DILocation(line: 236, column: 13, scope: !491)
!506 = !DILocation(line: 238, column: 16, scope: !507)
!507 = distinct !DILexicalBlock(scope: !503, file: !1, line: 237, column: 6)
!508 = !DILocation(line: 238, column: 33, scope: !507)
!509 = !DILocation(line: 238, column: 12, scope: !507)
!510 = !DILocation(line: 239, column: 14, scope: !511)
!511 = distinct !DILexicalBlock(scope: !507, file: !1, line: 239, column: 12)
!512 = !DILocation(line: 239, column: 12, scope: !507)
!513 = !DILocation(line: 245, column: 8, scope: !514)
!514 = distinct !DILexicalBlock(scope: !503, file: !1, line: 243, column: 6)
!515 = !DILocation(line: 246, column: 15, scope: !514)
!516 = !DILocation(line: 247, column: 15, scope: !514)
!517 = !DILocation(line: 0, scope: !514)
!518 = !DILocation(line: 249, column: 16, scope: !467)
!519 = !DILocation(line: 58, column: 16, scope: !17)
!520 = !DILocation(line: 249, column: 22, scope: !467)
!521 = !DILocation(line: 249, column: 8, scope: !339)
!522 = !DILocation(line: 252, column: 12, scope: !523)
!523 = distinct !DILexicalBlock(scope: !466, file: !1, line: 252, column: 12)
!524 = !DILocation(line: 252, column: 12, scope: !466)
!525 = !DILocation(line: 0, scope: !340)
!526 = !DILocation(line: 256, column: 6, scope: !339)
!527 = !DILocation(line: 257, column: 8, scope: !339)
!528 = !DILocation(line: 259, column: 30, scope: !340)
!529 = !DILocation(line: 259, column: 36, scope: !340)
!530 = !DILocation(line: 258, column: 2, scope: !339)
!531 = distinct !{!531, !532, !533}
!532 = !DILocation(line: 217, column: 7, scope: !340)
!533 = !DILocation(line: 259, column: 40, scope: !340)
!534 = !DILocation(line: 264, column: 14, scope: !17)
!535 = !DILocation(line: 265, column: 3, scope: !17)
!536 = !DILocation(line: 266, column: 1, scope: !17)
