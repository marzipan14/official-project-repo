; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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

@_iconv_aliases = external dso_local local_unnamed_addr global i8*, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_iconv_resolve_encoding_name(%struct._reent*, i8*) local_unnamed_addr #0 !dbg !19 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br label %3, !dbg !241

; <label>:3:                                      ; preds = %11, %2
  %4 = phi i8* [ %1, %2 ], [ %12, %11 ], !dbg !242
  %5 = load i8, i8* %4, align 1, !dbg !244, !tbaa !245
  %6 = icmp eq i8 %5, 0, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !241
  br i1 %6, label %14, label %7, !dbg !241

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i8 %5, 32, !dbg !248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !249
  br i1 %8, label %156, label %9, !dbg !249

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i8 %5, 13, !dbg !250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !251
  br i1 %10, label %156, label %11, !dbg !251

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i8, i8* %4, i64 1, !dbg !252
  %13 = icmp eq i8 %5, 10, !dbg !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !254
  br i1 %13, label %156, label %3, !dbg !254, !llvm.loop !255

; <label>:14:                                     ; preds = %3
  %15 = icmp eq i8* %1, null, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  br i1 %15, label %22, label %16, !dbg !276

; <label>:16:                                     ; preds = %14
  %17 = tail call i8* @_strdup_r(%struct._reent* %0, i8* nonnull %1) #5, !dbg !277
  %18 = icmp eq i8* %17, null, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  br i1 %18, label %22, label %19, !dbg !281

; <label>:19:                                     ; preds = %16
  %20 = load i8, i8* %1, align 1, !dbg !282, !tbaa !245
  %21 = icmp eq i8 %20, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %21, label %44, label %23, !dbg !283

; <label>:22:                                     ; preds = %14, %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  br label %156, !dbg !287

; <label>:23:                                     ; preds = %19, %38
  %24 = phi i8 [ %42, %38 ], [ %20, %19 ]
  %25 = phi i8* [ %40, %38 ], [ %1, %19 ]
  %26 = phi i8* [ %41, %38 ], [ %17, %19 ]
  %27 = icmp eq i8 %24, 45, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  br i1 %27, label %38, label %28, !dbg !289

; <label>:28:                                     ; preds = %23
  %29 = tail call i8* @__locale_ctype_ptr() #5, !dbg !290
  %30 = getelementptr inbounds i8, i8* %29, i64 1, !dbg !290
  %31 = sext i8 %24 to i64, !dbg !290
  %32 = getelementptr inbounds i8, i8* %30, i64 %31, !dbg !290
  %33 = load i8, i8* %32, align 1, !dbg !290, !tbaa !245
  %34 = and i8 %33, 3, !dbg !290
  %35 = icmp eq i8 %34, 1, !dbg !290
  %36 = add i8 %24, 32, !dbg !290
  %37 = select i1 %35, i8 %36, i8 %24, !dbg !290
  br label %38

; <label>:38:                                     ; preds = %23, %28
  %39 = phi i8 [ %37, %28 ], [ 95, %23 ]
  store i8 %39, i8* %26, align 1, !dbg !291, !tbaa !245
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !292
  %41 = getelementptr inbounds i8, i8* %26, i64 1, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !294
  %42 = load i8, i8* %40, align 1, !dbg !282, !tbaa !245
  %43 = icmp eq i8 %42, 0, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  br i1 %43, label %44, label %23, !dbg !283, !llvm.loop !295

; <label>:44:                                     ; preds = %38, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !286
  %45 = load i8*, i8** @_iconv_aliases, align 8, !dbg !299, !tbaa !300
  %46 = tail call i64 @strlen(i8* %45) #5, !dbg !302
  %47 = trunc i64 %46 to i32, !dbg !302
  %48 = tail call i64 @strlen(i8* nonnull %17) #5, !dbg !318
  %49 = trunc i64 %48 to i32, !dbg !318
  %50 = shl i64 %46, 32, !dbg !321
  %51 = ashr exact i64 %50, 32, !dbg !321
  %52 = getelementptr inbounds i8, i8* %45, i64 %51, !dbg !321
  %53 = icmp eq i8* %45, null, !dbg !323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !325
  br i1 %53, label %152, label %54, !dbg !325

; <label>:54:                                     ; preds = %44
  %55 = load i8, i8* %45, align 1, !dbg !326, !tbaa !245
  %56 = icmp eq i8 %55, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %56, label %152, label %57, !dbg !328

; <label>:57:                                     ; preds = %54
  %58 = load i8, i8* %17, align 1, !dbg !329, !tbaa !245
  %59 = icmp eq i8 %58, 0, !dbg !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  br i1 %59, label %152, label %60, !dbg !331

; <label>:60:                                     ; preds = %57
  %61 = icmp sgt i32 %49, %47, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %61, label %152, label %62, !dbg !334

; <label>:62:                                     ; preds = %60
  %63 = shl i64 %48, 32
  %64 = ashr exact i64 %63, 32
  %65 = ptrtoint i8* %45 to i64
  br label %66, !dbg !334

; <label>:66:                                     ; preds = %102, %62
  %67 = phi i8* [ %45, %62 ], [ %103, %102 ]
  %68 = phi i32 [ %47, %62 ], [ %107, %102 ]
  %69 = sext i32 %68 to i64, !dbg !335
  %70 = tail call i8* @strnstr(i8* %67, i8* nonnull %17, i64 %69) #6, !dbg !336
  %71 = icmp eq i8* %70, null, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  br i1 %71, label %152, label %72, !dbg !339

; <label>:72:                                     ; preds = %66
  %73 = icmp eq i8* %70, %45, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %73, label %88, label %74, !dbg !342

; <label>:74:                                     ; preds = %72
  %75 = tail call i8* @__locale_ctype_ptr() #5, !dbg !343
  %76 = getelementptr inbounds i8, i8* %75, i64 1, !dbg !343
  %77 = getelementptr inbounds i8, i8* %70, i64 -1, !dbg !343
  %78 = load i8, i8* %77, align 1, !dbg !343, !tbaa !245
  %79 = sext i8 %78 to i64, !dbg !343
  %80 = getelementptr inbounds i8, i8* %76, i64 %79, !dbg !343
  %81 = load i8, i8* %80, align 1, !dbg !343, !tbaa !245
  %82 = and i8 %81, 8, !dbg !343
  %83 = icmp eq i8 %82, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %83, label %84, label %88, !dbg !344

; <label>:84:                                     ; preds = %74
  %85 = icmp eq i8 %78, 10, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %85, label %88, label %86, !dbg !346

; <label>:86:                                     ; preds = %84
  %87 = getelementptr inbounds i8, i8* %70, i64 %64, !dbg !347
  br label %102, !dbg !346

; <label>:88:                                     ; preds = %84, %74, %72
  %89 = getelementptr inbounds i8, i8* %70, i64 %64, !dbg !349
  %90 = icmp eq i8* %89, %52, !dbg !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %90, label %109, label %91, !dbg !351

; <label>:91:                                     ; preds = %88
  %92 = tail call i8* @__locale_ctype_ptr() #5, !dbg !352
  %93 = getelementptr inbounds i8, i8* %92, i64 1, !dbg !352
  %94 = load i8, i8* %89, align 1, !dbg !352, !tbaa !245
  %95 = sext i8 %94 to i64, !dbg !352
  %96 = getelementptr inbounds i8, i8* %93, i64 %95, !dbg !352
  %97 = load i8, i8* %96, align 1, !dbg !352, !tbaa !245
  %98 = and i8 %97, 8, !dbg !352
  %99 = icmp eq i8 %98, 0, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %99, label %100, label %109, !dbg !353

; <label>:100:                                    ; preds = %91
  %101 = icmp eq i8 %94, 10, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %101, label %109, label %102, !dbg !355

; <label>:102:                                    ; preds = %100, %86
  %103 = phi i8* [ %87, %86 ], [ %89, %100 ], !dbg !347
  %104 = ptrtoint i8* %70 to i64, !dbg !356
  %105 = sub i64 %104, %65, !dbg !357
  %106 = trunc i64 %105 to i32, !dbg !357
  %107 = add i32 %68, %106, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %108 = icmp slt i32 %107, %49, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %108, label %152, label %66, !dbg !334

; <label>:109:                                    ; preds = %100, %91, %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br label %110, !dbg !359

; <label>:110:                                    ; preds = %114, %109
  %111 = phi i8* [ %70, %109 ], [ %112, %114 ], !dbg !360
  %112 = getelementptr inbounds i8, i8* %111, i64 -1, !dbg !361
  %113 = icmp ugt i8* %112, %45, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %113, label %114, label %117, !dbg !363

; <label>:114:                                    ; preds = %110
  %115 = load i8, i8* %112, align 1, !dbg !364, !tbaa !245
  %116 = icmp eq i8 %115, 10, !dbg !365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !359
  br i1 %116, label %117, label %110, !dbg !359, !llvm.loop !366

; <label>:117:                                    ; preds = %114, %110
  %118 = load i8, i8* %111, align 1, !dbg !369, !tbaa !245
  %119 = icmp eq i8 %118, 35, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %119, label %154, label %120, !dbg !372

; <label>:120:                                    ; preds = %117
  %121 = getelementptr inbounds i8, i8* %111, i64 1, !dbg !375
  %122 = tail call i8* @__locale_ctype_ptr() #5, !dbg !378
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !378
  %124 = load i8, i8* %121, align 1, !dbg !378, !tbaa !245
  %125 = sext i8 %124 to i64, !dbg !378
  %126 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !378
  %127 = load i8, i8* %126, align 1, !dbg !378, !tbaa !245
  %128 = and i8 %127, 8, !dbg !378
  %129 = icmp eq i8 %128, 0, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %129, label %130, label %146, !dbg !379

; <label>:130:                                    ; preds = %120, %136
  %131 = phi i8 [ %140, %136 ], [ %124, %120 ]
  %132 = phi i8* [ %137, %136 ], [ %121, %120 ]
  %133 = icmp eq i8 %131, 10, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %133, label %146, label %134, !dbg !381

; <label>:134:                                    ; preds = %130
  %135 = icmp eq i8 %131, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %135, label %146, label %136, !dbg !383

; <label>:136:                                    ; preds = %134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  %137 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !375
  %138 = tail call i8* @__locale_ctype_ptr() #5, !dbg !378
  %139 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !378
  %140 = load i8, i8* %137, align 1, !dbg !378, !tbaa !245
  %141 = sext i8 %140 to i64, !dbg !378
  %142 = getelementptr inbounds i8, i8* %139, i64 %141, !dbg !378
  %143 = load i8, i8* %142, align 1, !dbg !378, !tbaa !245
  %144 = and i8 %143, 8, !dbg !378
  %145 = icmp eq i8 %144, 0, !dbg !378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %145, label %130, label %146, !dbg !379, !llvm.loop !385

; <label>:146:                                    ; preds = %136, %134, %130, %120
  %147 = phi i8* [ %121, %120 ], [ %137, %136 ], [ %132, %130 ], [ %132, %134 ], !dbg !375
  %148 = ptrtoint i8* %147 to i64, !dbg !388
  %149 = ptrtoint i8* %111 to i64, !dbg !388
  %150 = sub i64 %148, %149, !dbg !388
  %151 = tail call i8* @_strndup_r(%struct._reent* %0, i8* %111, i64 %150) #5, !dbg !389
  br label %152, !dbg !390

; <label>:152:                                    ; preds = %66, %102, %60, %44, %54, %57, %146
  %153 = phi i8* [ %151, %146 ], [ null, %57 ], [ null, %54 ], [ null, %44 ], [ null, %60 ], [ null, %102 ], [ null, %66 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br label %154, !dbg !392

; <label>:154:                                    ; preds = %152, %117
  %155 = phi i8* [ null, %117 ], [ %153, %152 ], !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  tail call void @free(i8* nonnull %17) #5, !dbg !393
  br label %156, !dbg !394

; <label>:156:                                    ; preds = %7, %9, %11, %154, %22
  %157 = phi i8* [ null, %22 ], [ %155, %154 ], [ null, %11 ], [ null, %9 ], [ null, %7 ], !dbg !391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  ret i8* %157, !dbg !395
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @_strdup_r(%struct._reent*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #1

; Function Attrs: noredzone nounwind readonly
declare dso_local i8* @strnstr(i8*, i8*, i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @_strndup_r(%struct._reent*, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone nounwind readonly }

!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/iconv/lib/aliasesi.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !6, !7, !9, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 40, baseType: !12)
!11 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !13, line: 129, baseType: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!15 = !{i32 2, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!19 = distinct !DISubprogram(name: "_iconv_resolve_encoding_name", scope: !1, file: !1, line: 150, type: !20, isLocal: false, isDefinition: true, scopeLine: 153, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !235)
!20 = !DISubroutineType(types: !21)
!21 = !{!4, !22, !7}
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !24, line: 569, size: 14912, elements: !25)
!24 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!25 = !{!26, !27, !103, !104, !105, !106, !110, !111, !114, !115, !119, !131, !132, !133, !135, !136, !137, !199, !220, !221, !226, !233}
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !23, file: !24, line: 571, baseType: !9, size: 32)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !24, line: 287, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !24, line: 181, size: 1408, elements: !31)
!31 = !{!32, !35, !36, !37, !39, !40, !45, !46, !47, !53, !57, !62, !66, !67, !68, !69, !73, !77, !78, !79, !81, !82, !86, !102}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !30, file: !24, line: 182, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !30, file: !24, line: 183, baseType: !9, size: 32, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !30, file: !24, line: 184, baseType: !9, size: 32, offset: 96)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !30, file: !24, line: 185, baseType: !38, size: 16, offset: 128)
!38 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !30, file: !24, line: 186, baseType: !38, size: 16, offset: 144)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !30, file: !24, line: 187, baseType: !41, size: 128, offset: 192)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !24, line: 117, size: 128, elements: !42)
!42 = !{!43, !44}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !41, file: !24, line: 118, baseType: !33, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !41, file: !24, line: 119, baseType: !9, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !30, file: !24, line: 188, baseType: !9, size: 32, offset: 320)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !30, file: !24, line: 195, baseType: !6, size: 64, offset: 384)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !30, file: !24, line: 197, baseType: !48, size: 64, offset: 448)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{!51, !22, !6, !4, !9}
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !13, line: 145, baseType: !52)
!52 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !30, file: !24, line: 199, baseType: !54, size: 64, offset: 512)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!51, !22, !6, !7, !9}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !30, file: !24, line: 202, baseType: !58, size: 64, offset: 576)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!61, !22, !6, !61, !9}
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !13, line: 114, baseType: !52)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !30, file: !24, line: 203, baseType: !63, size: 64, offset: 640)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!9, !22, !6}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !30, file: !24, line: 206, baseType: !41, size: 128, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !30, file: !24, line: 207, baseType: !33, size: 64, offset: 832)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !30, file: !24, line: 208, baseType: !9, size: 32, offset: 896)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !30, file: !24, line: 211, baseType: !70, size: 24, offset: 928)
!70 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 24, elements: !71)
!71 = !{!72}
!72 = !DISubrange(count: 3)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !30, file: !24, line: 212, baseType: !74, size: 8, offset: 952)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 8, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !30, file: !24, line: 215, baseType: !41, size: 128, offset: 960)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !30, file: !24, line: 218, baseType: !9, size: 32, offset: 1088)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !30, file: !24, line: 219, baseType: !80, size: 64, offset: 1152)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !13, line: 44, baseType: !52)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !30, file: !24, line: 222, baseType: !22, size: 64, offset: 1216)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !30, file: !24, line: 226, baseType: !83, size: 32, offset: 1280)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !13, line: 175, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !85, line: 12, baseType: !9)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !30, file: !24, line: 228, baseType: !87, size: 64, offset: 1312)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !13, line: 171, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !13, line: 163, size: 64, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !88, file: !13, line: 165, baseType: !9, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !88, file: !13, line: 170, baseType: !92, size: 32, offset: 32)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !88, file: !13, line: 166, size: 32, elements: !93)
!93 = !{!94, !98}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !92, file: !13, line: 168, baseType: !95, size: 32)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !96, line: 124, baseType: !97)
!96 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !92, file: !13, line: 169, baseType: !99, size: 32)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 32, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 4)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !30, file: !24, line: 229, baseType: !9, size: 32, offset: 1376)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 128)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !23, file: !24, line: 576, baseType: !28, size: 64, offset: 192)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !23, file: !24, line: 578, baseType: !9, size: 32, offset: 256)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !23, file: !24, line: 579, baseType: !107, size: 200, offset: 288)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 200, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 25)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !23, file: !24, line: 582, baseType: !9, size: 32, offset: 512)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !23, file: !24, line: 583, baseType: !112, size: 64, offset: 576)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !24, line: 40, flags: DIFlagFwdDecl)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !23, file: !24, line: 585, baseType: !9, size: 32, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !23, file: !24, line: 587, baseType: !116, size: 64, offset: 704)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !22}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !23, file: !24, line: 590, baseType: !120, size: 64, offset: 768)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !24, line: 47, size: 256, elements: !122)
!122 = !{!123, !124, !125, !126, !127, !128}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !121, file: !24, line: 49, baseType: !120, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 96)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !121, file: !24, line: 50, baseType: !9, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !121, file: !24, line: 51, baseType: !129, size: 32, offset: 192)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 32, elements: !75)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !24, line: 25, baseType: !97)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !23, file: !24, line: 591, baseType: !9, size: 32, offset: 832)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !23, file: !24, line: 592, baseType: !120, size: 64, offset: 896)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !23, file: !24, line: 593, baseType: !134, size: 64, offset: 960)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !23, file: !24, line: 596, baseType: !9, size: 32, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !23, file: !24, line: 597, baseType: !4, size: 64, offset: 1088)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !23, file: !24, line: 632, baseType: !138, size: 2880, offset: 1152)
!138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !23, file: !24, line: 599, size: 2880, elements: !139)
!139 = !{!140, !190}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !138, file: !24, line: 622, baseType: !141, size: 1728)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !24, line: 601, size: 1728, elements: !142)
!142 = !{!143, !144, !145, !149, !161, !162, !164, !172, !173, !174, !175, !179, !183, !184, !185, !186, !187, !188, !189}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !141, file: !24, line: 603, baseType: !97, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !141, file: !24, line: 604, baseType: !4, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !141, file: !24, line: 605, baseType: !146, size: 208, offset: 128)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 208, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 26)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !141, file: !24, line: 606, baseType: !150, size: 288, offset: 352)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !24, line: 55, size: 288, elements: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !150, file: !24, line: 57, baseType: !9, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !150, file: !24, line: 58, baseType: !9, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !150, file: !24, line: 59, baseType: !9, size: 32, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !150, file: !24, line: 60, baseType: !9, size: 32, offset: 96)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !150, file: !24, line: 61, baseType: !9, size: 32, offset: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !150, file: !24, line: 62, baseType: !9, size: 32, offset: 160)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !150, file: !24, line: 63, baseType: !9, size: 32, offset: 192)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !150, file: !24, line: 64, baseType: !9, size: 32, offset: 224)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !150, file: !24, line: 65, baseType: !9, size: 32, offset: 256)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !141, file: !24, line: 607, baseType: !9, size: 32, offset: 640)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !141, file: !24, line: 608, baseType: !163, size: 64, offset: 704)
!163 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !141, file: !24, line: 609, baseType: !165, size: 112, offset: 768)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !24, line: 319, size: 112, elements: !166)
!166 = !{!167, !170, !171}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !165, file: !24, line: 320, baseType: !168, size: 48)
!168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 48, elements: !71)
!169 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !165, file: !24, line: 321, baseType: !168, size: 48, offset: 48)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !165, file: !24, line: 322, baseType: !169, size: 16, offset: 96)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !141, file: !24, line: 610, baseType: !87, size: 64, offset: 896)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !141, file: !24, line: 611, baseType: !87, size: 64, offset: 960)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !141, file: !24, line: 612, baseType: !87, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !141, file: !24, line: 613, baseType: !176, size: 64, offset: 1088)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 64, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 8)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !141, file: !24, line: 614, baseType: !180, size: 192, offset: 1152)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 192, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 24)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !141, file: !24, line: 615, baseType: !9, size: 32, offset: 1344)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !141, file: !24, line: 616, baseType: !87, size: 64, offset: 1376)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !141, file: !24, line: 617, baseType: !87, size: 64, offset: 1440)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !141, file: !24, line: 618, baseType: !87, size: 64, offset: 1504)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !141, file: !24, line: 619, baseType: !87, size: 64, offset: 1568)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !141, file: !24, line: 620, baseType: !87, size: 64, offset: 1632)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !141, file: !24, line: 621, baseType: !9, size: 32, offset: 1696)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !138, file: !24, line: 631, baseType: !191, size: 2880)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !138, file: !24, line: 626, size: 2880, elements: !192)
!192 = !{!193, !197}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !191, file: !24, line: 629, baseType: !194, size: 1920)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 1920, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 30)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !191, file: !24, line: 630, baseType: !198, size: 960, offset: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 960, elements: !195)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !23, file: !24, line: 636, baseType: !200, size: 64, offset: 4032)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !24, line: 93, size: 6336, elements: !202)
!202 = !{!203, !204, !205, !212}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !201, file: !24, line: 94, baseType: !200, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !201, file: !24, line: 95, baseType: !9, size: 32, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !201, file: !24, line: 97, baseType: !206, size: 2048, offset: 128)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 2048, elements: !210)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{null}
!210 = !{!211}
!211 = !DISubrange(count: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !201, file: !24, line: 98, baseType: !213, size: 4160, offset: 2176)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !24, line: 74, size: 4160, elements: !214)
!214 = !{!215, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !213, file: !24, line: 75, baseType: !216, size: 2048)
!216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !210)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !213, file: !24, line: 76, baseType: !216, size: 2048, offset: 2048)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !213, file: !24, line: 78, baseType: !130, size: 32, offset: 4096)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !213, file: !24, line: 81, baseType: !130, size: 32, offset: 4128)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !23, file: !24, line: 637, baseType: !201, size: 6336, offset: 4096)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !23, file: !24, line: 641, baseType: !222, size: 64, offset: 10432)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{null, !9}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !23, file: !24, line: 646, baseType: !227, size: 192, offset: 10496)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !24, line: 291, size: 192, elements: !228)
!228 = !{!229, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !227, file: !24, line: 293, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !227, file: !24, line: 294, baseType: !9, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !227, file: !24, line: 295, baseType: !28, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !23, file: !24, line: 648, baseType: !234, size: 4224, offset: 10688)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 4224, elements: !71)
!235 = !{!236, !237, !238}
!236 = !DILocalVariable(name: "rptr", arg: 1, scope: !19, file: !1, line: 150, type: !22)
!237 = !DILocalVariable(name: "ca", arg: 2, scope: !19, file: !1, line: 150, type: !7)
!238 = !DILocalVariable(name: "p", scope: !19, file: !1, line: 154, type: !4)
!239 = !DILocation(line: 150, column: 1, scope: !19)
!240 = !DILocation(line: 154, column: 9, scope: !19)
!241 = !DILocation(line: 157, column: 3, scope: !19)
!242 = !DILocation(line: 0, scope: !243)
!243 = distinct !DILexicalBlock(scope: !19, file: !1, line: 158, column: 9)
!244 = !DILocation(line: 157, column: 10, scope: !19)
!245 = !{!246, !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !DILocation(line: 158, column: 12, scope: !243)
!249 = !DILocation(line: 158, column: 19, scope: !243)
!250 = !DILocation(line: 158, column: 25, scope: !243)
!251 = !DILocation(line: 158, column: 33, scope: !243)
!252 = !DILocation(line: 158, column: 38, scope: !243)
!253 = !DILocation(line: 158, column: 41, scope: !243)
!254 = !DILocation(line: 158, column: 9, scope: !19)
!255 = distinct !{!255, !241, !256}
!256 = !DILocation(line: 159, column: 14, scope: !19)
!257 = !DILocalVariable(name: "rptr", arg: 1, scope: !258, file: !1, line: 51, type: !22)
!258 = distinct !DISubprogram(name: "canonical_form", scope: !1, file: !1, line: 51, type: !259, isLocal: true, isDefinition: true, scopeLine: 54, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !261)
!259 = !DISubroutineType(types: !260)
!260 = !{!7, !22, !7}
!261 = !{!257, !262, !263, !264, !265}
!262 = !DILocalVariable(name: "str", arg: 2, scope: !258, file: !1, line: 51, type: !7)
!263 = !DILocalVariable(name: "p", scope: !258, file: !1, line: 55, type: !4)
!264 = !DILocalVariable(name: "p1", scope: !258, file: !1, line: 55, type: !4)
!265 = !DILocalVariable(name: "__x", scope: !266, file: !1, line: 65, type: !8)
!266 = distinct !DILexicalBlock(scope: !267, file: !1, line: 65, column: 14)
!267 = distinct !DILexicalBlock(scope: !268, file: !1, line: 62, column: 11)
!268 = distinct !DILexicalBlock(scope: !269, file: !1, line: 61, column: 5)
!269 = distinct !DILexicalBlock(scope: !270, file: !1, line: 60, column: 3)
!270 = distinct !DILexicalBlock(scope: !258, file: !1, line: 60, column: 3)
!271 = !DILocation(line: 51, column: 1, scope: !258, inlinedAt: !272)
!272 = distinct !DILocation(line: 161, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !19, file: !1, line: 161, column: 7)
!274 = !DILocation(line: 57, column: 11, scope: !275, inlinedAt: !272)
!275 = distinct !DILexicalBlock(scope: !258, file: !1, line: 57, column: 7)
!276 = !DILocation(line: 57, column: 19, scope: !275, inlinedAt: !272)
!277 = !DILocation(line: 57, column: 32, scope: !275, inlinedAt: !272)
!278 = !DILocation(line: 55, column: 13, scope: !258, inlinedAt: !272)
!279 = !DILocation(line: 55, column: 9, scope: !258, inlinedAt: !272)
!280 = !DILocation(line: 57, column: 55, scope: !275, inlinedAt: !272)
!281 = !DILocation(line: 57, column: 7, scope: !258, inlinedAt: !272)
!282 = !DILocation(line: 60, column: 10, scope: !269, inlinedAt: !272)
!283 = !DILocation(line: 60, column: 3, scope: !270, inlinedAt: !272)
!284 = !DILocation(line: 58, column: 5, scope: !275, inlinedAt: !272)
!285 = !DILocation(line: 69, column: 1, scope: !258, inlinedAt: !272)
!286 = !DILocation(line: 161, column: 7, scope: !19)
!287 = !DILocation(line: 162, column: 5, scope: !273)
!288 = !DILocation(line: 62, column: 16, scope: !267, inlinedAt: !272)
!289 = !DILocation(line: 62, column: 11, scope: !268, inlinedAt: !272)
!290 = !DILocation(line: 65, column: 14, scope: !266, inlinedAt: !272)
!291 = !DILocation(line: 0, scope: !273)
!292 = !DILocation(line: 60, column: 19, scope: !269, inlinedAt: !272)
!293 = !DILocation(line: 60, column: 24, scope: !269, inlinedAt: !272)
!294 = !DILocation(line: 60, column: 3, scope: !269, inlinedAt: !272)
!295 = distinct !{!295, !296, !297}
!296 = !DILocation(line: 60, column: 3, scope: !270)
!297 = !DILocation(line: 66, column: 5, scope: !270)
!298 = !DILocation(line: 68, column: 3, scope: !258, inlinedAt: !272)
!299 = !DILocation(line: 164, column: 29, scope: !19)
!300 = !{!301, !301, i64 0}
!301 = !{!"any pointer", !246, i64 0}
!302 = !DILocation(line: 164, column: 45, scope: !19)
!303 = !DILocalVariable(name: "rptr", arg: 1, scope: !304, file: !1, line: 96, type: !22)
!304 = distinct !DISubprogram(name: "find_alias", scope: !1, file: !1, line: 96, type: !305, isLocal: true, isDefinition: true, scopeLine: 101, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{!4, !22, !7, !7, !9}
!307 = !{!303, !308, !309, !310, !311, !312, !313, !314, !315}
!308 = !DILocalVariable(name: "alias", arg: 2, scope: !304, file: !1, line: 96, type: !7)
!309 = !DILocalVariable(name: "table", arg: 3, scope: !304, file: !1, line: 96, type: !7)
!310 = !DILocalVariable(name: "len", arg: 4, scope: !304, file: !1, line: 96, type: !9)
!311 = !DILocalVariable(name: "end", scope: !304, file: !1, line: 102, type: !7)
!312 = !DILocalVariable(name: "p", scope: !304, file: !1, line: 103, type: !7)
!313 = !DILocalVariable(name: "l", scope: !304, file: !1, line: 104, type: !9)
!314 = !DILocalVariable(name: "ptable", scope: !304, file: !1, line: 105, type: !7)
!315 = !DILocalVariable(name: "table_end", scope: !304, file: !1, line: 106, type: !7)
!316 = !DILocation(line: 96, column: 1, scope: !304, inlinedAt: !317)
!317 = distinct !DILocation(line: 164, column: 7, scope: !19)
!318 = !DILocation(line: 104, column: 11, scope: !304, inlinedAt: !317)
!319 = !DILocation(line: 104, column: 7, scope: !304, inlinedAt: !317)
!320 = !DILocation(line: 105, column: 16, scope: !304, inlinedAt: !317)
!321 = !DILocation(line: 106, column: 34, scope: !304, inlinedAt: !317)
!322 = !DILocation(line: 106, column: 16, scope: !304, inlinedAt: !317)
!323 = !DILocation(line: 108, column: 13, scope: !324, inlinedAt: !317)
!324 = distinct !DILexicalBlock(scope: !304, file: !1, line: 108, column: 7)
!325 = !DILocation(line: 108, column: 21, scope: !324, inlinedAt: !317)
!326 = !DILocation(line: 108, column: 41, scope: !324, inlinedAt: !317)
!327 = !DILocation(line: 108, column: 48, scope: !324, inlinedAt: !317)
!328 = !DILocation(line: 108, column: 56, scope: !324, inlinedAt: !317)
!329 = !DILocation(line: 108, column: 59, scope: !324, inlinedAt: !317)
!330 = !DILocation(line: 108, column: 66, scope: !324, inlinedAt: !317)
!331 = !DILocation(line: 108, column: 7, scope: !304, inlinedAt: !317)
!332 = !DILocation(line: 112, column: 11, scope: !333, inlinedAt: !317)
!333 = distinct !DILexicalBlock(scope: !304, file: !1, line: 112, column: 7)
!334 = !DILocation(line: 112, column: 15, scope: !333, inlinedAt: !317)
!335 = !DILocation(line: 112, column: 47, scope: !333, inlinedAt: !317)
!336 = !DILocation(line: 112, column: 23, scope: !333, inlinedAt: !317)
!337 = !DILocation(line: 103, column: 16, scope: !304, inlinedAt: !317)
!338 = !DILocation(line: 112, column: 53, scope: !333, inlinedAt: !317)
!339 = !DILocation(line: 112, column: 7, scope: !304, inlinedAt: !317)
!340 = !DILocation(line: 116, column: 12, scope: !341, inlinedAt: !317)
!341 = distinct !DILexicalBlock(scope: !304, file: !1, line: 116, column: 7)
!342 = !DILocation(line: 116, column: 21, scope: !341, inlinedAt: !317)
!343 = !DILocation(line: 116, column: 24, scope: !341, inlinedAt: !317)
!344 = !DILocation(line: 116, column: 41, scope: !341, inlinedAt: !317)
!345 = !DILocation(line: 116, column: 51, scope: !341, inlinedAt: !317)
!346 = !DILocation(line: 117, column: 6, scope: !341, inlinedAt: !317)
!347 = !DILocation(line: 119, column: 18, scope: !348, inlinedAt: !317)
!348 = distinct !DILexicalBlock(scope: !341, file: !1, line: 118, column: 5)
!349 = !DILocation(line: 117, column: 11, scope: !341, inlinedAt: !317)
!350 = !DILocation(line: 117, column: 14, scope: !341, inlinedAt: !317)
!351 = !DILocation(line: 117, column: 27, scope: !341, inlinedAt: !317)
!352 = !DILocation(line: 117, column: 30, scope: !341, inlinedAt: !317)
!353 = !DILocation(line: 117, column: 47, scope: !341, inlinedAt: !317)
!354 = !DILocation(line: 117, column: 57, scope: !341, inlinedAt: !317)
!355 = !DILocation(line: 116, column: 7, scope: !304, inlinedAt: !317)
!356 = !DILocation(line: 120, column: 20, scope: !348, inlinedAt: !317)
!357 = !DILocation(line: 120, column: 11, scope: !348, inlinedAt: !317)
!358 = !DILocation(line: 121, column: 7, scope: !348, inlinedAt: !317)
!359 = !DILocation(line: 124, column: 3, scope: !304, inlinedAt: !317)
!360 = !DILocation(line: 0, scope: !304, inlinedAt: !317)
!361 = !DILocation(line: 124, column: 9, scope: !304, inlinedAt: !317)
!362 = !DILocation(line: 124, column: 13, scope: !304, inlinedAt: !317)
!363 = !DILocation(line: 124, column: 21, scope: !304, inlinedAt: !317)
!364 = !DILocation(line: 124, column: 24, scope: !304, inlinedAt: !317)
!365 = !DILocation(line: 124, column: 27, scope: !304, inlinedAt: !317)
!366 = distinct !{!366, !367, !368}
!367 = !DILocation(line: 124, column: 3, scope: !304)
!368 = !DILocation(line: 124, column: 35, scope: !304)
!369 = !DILocation(line: 126, column: 7, scope: !370, inlinedAt: !317)
!370 = distinct !DILexicalBlock(scope: !304, file: !1, line: 126, column: 7)
!371 = !DILocation(line: 126, column: 14, scope: !370, inlinedAt: !317)
!372 = !DILocation(line: 126, column: 7, scope: !304, inlinedAt: !317)
!373 = !DILocation(line: 0, scope: !374, inlinedAt: !317)
!374 = distinct !DILexicalBlock(scope: !304, file: !1, line: 129, column: 3)
!375 = !DILocation(line: 0, scope: !376, inlinedAt: !317)
!376 = distinct !DILexicalBlock(scope: !374, file: !1, line: 129, column: 3)
!377 = !DILocation(line: 102, column: 16, scope: !304, inlinedAt: !317)
!378 = !DILocation(line: 129, column: 22, scope: !376, inlinedAt: !317)
!379 = !DILocation(line: 129, column: 37, scope: !376, inlinedAt: !317)
!380 = !DILocation(line: 129, column: 45, scope: !376, inlinedAt: !317)
!381 = !DILocation(line: 129, column: 53, scope: !376, inlinedAt: !317)
!382 = !DILocation(line: 129, column: 61, scope: !376, inlinedAt: !317)
!383 = !DILocation(line: 129, column: 3, scope: !374, inlinedAt: !317)
!384 = !DILocation(line: 129, column: 3, scope: !376, inlinedAt: !317)
!385 = distinct !{!385, !386, !387}
!386 = !DILocation(line: 129, column: 3, scope: !374)
!387 = !DILocation(line: 129, column: 76, scope: !374)
!388 = !DILocation(line: 131, column: 44, scope: !304, inlinedAt: !317)
!389 = !DILocation(line: 131, column: 10, scope: !304, inlinedAt: !317)
!390 = !DILocation(line: 131, column: 3, scope: !304, inlinedAt: !317)
!391 = !DILocation(line: 0, scope: !19)
!392 = !DILocation(line: 132, column: 1, scope: !304, inlinedAt: !317)
!393 = !DILocation(line: 166, column: 3, scope: !19)
!394 = !DILocation(line: 167, column: 3, scope: !19)
!395 = !DILocation(line: 168, column: 1, scope: !19)
