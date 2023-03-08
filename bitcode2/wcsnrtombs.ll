; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }

@__global_locale = external dso_local global %struct.__locale_t, align 8
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcsnrtombs_l(%struct._reent*, i8*, i32** nocapture, i64, i64, %struct._mbstate_t*, %struct.__locale_t* nocapture readonly) local_unnamed_addr #0 !dbg !18 {
  %8 = alloca [10 x i8], align 1
  %9 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 0, !dbg !322
  call void @llvm.lifetime.start.p0i8(i64 10, i8* nonnull %9) #4, !dbg !322
  %10 = icmp eq i8* %1, null, !dbg !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %10, label %11, label %13, !dbg !326

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  %12 = load i32*, i32** %2, align 8, !dbg !329, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %16, !dbg !336

; <label>:13:                                     ; preds = %7
  %14 = load i32*, i32** %2, align 8, !dbg !329, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  %15 = icmp eq i64 %4, 0, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %15, label %112, label %16, !dbg !336

; <label>:16:                                     ; preds = %11, %13
  %17 = phi i32* [ %12, %11 ], [ %14, %13 ]
  %18 = phi i64 [ -1, %11 ], [ %4, %13 ]
  %19 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 0
  %20 = getelementptr inbounds %struct._mbstate_t, %struct._mbstate_t* %5, i64 0, i32 1, i32 0
  %21 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %6, i64 0, i32 1
  %22 = icmp ne i8* %1, null
  br label %23, !dbg !336

; <label>:23:                                     ; preds = %16, %109
  %24 = phi i64 [ %3, %16 ], [ %28, %109 ]
  %25 = phi i64 [ 0, %16 ], [ %41, %109 ]
  %26 = phi i32* [ %17, %16 ], [ %110, %109 ]
  %27 = phi i8* [ %1, %16 ], [ %99, %109 ]
  %28 = add i64 %24, -1, !dbg !338
  %29 = icmp eq i64 %24, 0, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %29, label %112, label %30, !dbg !335

; <label>:30:                                     ; preds = %23
  %31 = load i32, i32* %19, align 4, !dbg !340, !tbaa !341
  %32 = load i32, i32* %20, align 4, !dbg !345, !tbaa !346
  %33 = load i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)** %21, align 8, !dbg !348, !tbaa !349
  %34 = load i32, i32* %26, align 4, !dbg !352, !tbaa !353
  %35 = call i32 %33(%struct._reent* %0, i8* nonnull %9, i32 %34, %struct._mbstate_t* %5) #5, !dbg !354
  %36 = icmp eq i32 %35, -1, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %36, label %37, label %39, !dbg !358

; <label>:37:                                     ; preds = %30
  %38 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 0, !dbg !359
  store i32 138, i32* %38, align 8, !dbg !361, !tbaa !362
  store i32 0, i32* %19, align 4, !dbg !367, !tbaa !341
  br label %107, !dbg !368

; <label>:39:                                     ; preds = %30
  %40 = sext i32 %35 to i64, !dbg !369
  %41 = add i64 %25, %40, !dbg !371
  %42 = icmp ugt i64 %41, %18, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  br i1 %42, label %106, label %43, !dbg !373

; <label>:43:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %22, label %44, label %98, !dbg !374

; <label>:44:                                     ; preds = %43
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  %45 = icmp sgt i32 %35, 0, !dbg !381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %45, label %46, label %94, !dbg !383

; <label>:46:                                     ; preds = %44
  %47 = add i32 %35, -1, !dbg !384
  %48 = zext i32 %47 to i64, !dbg !384
  %49 = zext i32 %35 to i64
  %50 = add nsw i64 %49, -1, !dbg !384
  %51 = and i64 %49, 3, !dbg !384
  %52 = icmp ult i64 %50, 3, !dbg !384
  br i1 %52, label %77, label %53, !dbg !384

; <label>:53:                                     ; preds = %46
  %54 = sub nsw i64 %49, %51, !dbg !384
  br label %55, !dbg !384

; <label>:55:                                     ; preds = %55, %53
  %56 = phi i64 [ 0, %53 ], [ %74, %55 ]
  %57 = phi i8* [ %27, %53 ], [ %73, %55 ]
  %58 = phi i64 [ %54, %53 ], [ %75, %55 ]
  %59 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %56, !dbg !384
  %60 = load i8, i8* %59, align 1, !dbg !384, !tbaa !346
  %61 = getelementptr inbounds i8, i8* %57, i64 1, !dbg !385
  store i8 %60, i8* %57, align 1, !dbg !386, !tbaa !346
  %62 = or i64 %56, 1, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %63 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %62, !dbg !384
  %64 = load i8, i8* %63, align 1, !dbg !384, !tbaa !346
  %65 = getelementptr inbounds i8, i8* %57, i64 2, !dbg !385
  store i8 %64, i8* %61, align 1, !dbg !386, !tbaa !346
  %66 = or i64 %56, 2, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %67 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %66, !dbg !384
  %68 = load i8, i8* %67, align 1, !dbg !384, !tbaa !346
  %69 = getelementptr inbounds i8, i8* %57, i64 3, !dbg !385
  store i8 %68, i8* %65, align 1, !dbg !386, !tbaa !346
  %70 = or i64 %56, 3, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %71 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %70, !dbg !384
  %72 = load i8, i8* %71, align 1, !dbg !384, !tbaa !346
  %73 = getelementptr inbounds i8, i8* %57, i64 4, !dbg !385
  store i8 %72, i8* %69, align 1, !dbg !386, !tbaa !346
  %74 = add nuw nsw i64 %56, 4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %75 = add i64 %58, -4, !dbg !383
  %76 = icmp eq i64 %75, 0, !dbg !383
  br i1 %76, label %77, label %55, !dbg !383, !llvm.loop !389

; <label>:77:                                     ; preds = %55, %46
  %78 = phi i64 [ 0, %46 ], [ %74, %55 ]
  %79 = phi i8* [ %27, %46 ], [ %73, %55 ]
  %80 = icmp eq i64 %51, 0, !dbg !383
  br i1 %80, label %91, label %81, !dbg !383

; <label>:81:                                     ; preds = %77, %81
  %82 = phi i64 [ %88, %81 ], [ %78, %77 ]
  %83 = phi i8* [ %87, %81 ], [ %79, %77 ]
  %84 = phi i64 [ %89, %81 ], [ %51, %77 ]
  %85 = getelementptr inbounds [10 x i8], [10 x i8]* %8, i64 0, i64 %82, !dbg !384
  %86 = load i8, i8* %85, align 1, !dbg !384, !tbaa !346
  %87 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !385
  store i8 %86, i8* %83, align 1, !dbg !386, !tbaa !346
  %88 = add nuw nsw i64 %82, 1, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  %89 = add i64 %84, -1, !dbg !383
  %90 = icmp eq i64 %89, 0, !dbg !383
  br i1 %90, label %91, label %81, !dbg !383, !llvm.loop !391

; <label>:91:                                     ; preds = %81, %77
  %92 = getelementptr i8, i8* %27, i64 1, !dbg !384
  %93 = getelementptr i8, i8* %92, i64 %48, !dbg !384
  br label %94, !dbg !393

; <label>:94:                                     ; preds = %91, %44
  %95 = phi i8* [ %27, %44 ], [ %93, %91 ], !dbg !394
  %96 = load i32*, i32** %2, align 8, !dbg !393, !tbaa !330
  %97 = getelementptr inbounds i32, i32* %96, i64 1, !dbg !393
  store i32* %97, i32** %2, align 8, !dbg !393, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br label %98, !dbg !395

; <label>:98:                                     ; preds = %94, %43
  %99 = phi i8* [ %95, %94 ], [ %27, %43 ], !dbg !321
  %100 = load i32, i32* %26, align 4, !dbg !396, !tbaa !353
  %101 = icmp eq i32 %100, 0, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  br i1 %101, label %102, label %109, !dbg !399

; <label>:102:                                    ; preds = %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !400
  br i1 %22, label %103, label %104, !dbg !400

; <label>:103:                                    ; preds = %102
  store i32* null, i32** %2, align 8, !dbg !402, !tbaa !330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br label %104, !dbg !404

; <label>:104:                                    ; preds = %103, %102
  store i32 0, i32* %19, align 4, !dbg !405, !tbaa !341
  %105 = add i64 %41, -1, !dbg !406
  br label %107, !dbg !407

; <label>:106:                                    ; preds = %39
  store i32 %31, i32* %19, align 4, !dbg !408, !tbaa !341
  store i32 %32, i32* %20, align 4, !dbg !410, !tbaa !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br label %112, !dbg !336

; <label>:107:                                    ; preds = %37, %104
  %108 = phi i64 [ %105, %104 ], [ -1, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  br label %112

; <label>:109:                                    ; preds = %98
  %110 = getelementptr inbounds i32, i32* %26, i64 1, !dbg !413
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %111 = icmp ult i64 %41, %18, !dbg !337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %111, label %23, label %112, !dbg !336

; <label>:112:                                    ; preds = %23, %109, %13, %106, %107
  %113 = phi i64 [ %108, %107 ], [ 0, %13 ], [ %25, %106 ], [ %25, %23 ], [ %41, %109 ], !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 10, i8* nonnull %9) #4, !dbg !415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  ret i64 %113, !dbg !415
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i64 @_wcsnrtombs_r(%struct._reent* nocapture readnone, i8*, i32** nocapture, i64, i64, %struct._mbstate_t*) local_unnamed_addr #0 !dbg !416 {
  %7 = tail call %struct._reent* @__getreent() #5, !dbg !428
  %8 = tail call %struct._reent* @__getreent() #5, !dbg !429
  %9 = getelementptr inbounds %struct._reent, %struct._reent* %8, i64 0, i32 7, !dbg !434
  %10 = load %struct.__locale_t*, %struct.__locale_t** %9, align 8, !dbg !434, !tbaa !435
  %11 = icmp eq %struct.__locale_t* %10, null, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %11, label %12, label %13, !dbg !429

; <label>:12:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br label %13, !dbg !429

; <label>:13:                                     ; preds = %6, %12
  %14 = phi %struct.__locale_t* [ @__global_locale, %12 ], [ %10, %6 ], !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !439
  %15 = tail call i64 @_wcsnrtombs_l(%struct._reent* %7, i8* %1, i32** %2, i64 %3, i64 %4, %struct._mbstate_t* %5, %struct.__locale_t* nonnull %14) #6, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  ret i64 %15, !dbg !441
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local i64 @wcsnrtombs(i8* noalias, i32** noalias nocapture, i64, i64, %struct._mbstate_t* noalias) local_unnamed_addr #0 !dbg !442 {
  %6 = tail call %struct._reent* @__getreent() #5, !dbg !455
  %7 = tail call %struct._reent* @__getreent() #5, !dbg !456
  %8 = getelementptr inbounds %struct._reent, %struct._reent* %7, i64 0, i32 7, !dbg !458
  %9 = load %struct.__locale_t*, %struct.__locale_t** %8, align 8, !dbg !458, !tbaa !435
  %10 = icmp eq %struct.__locale_t* %9, null, !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br i1 %10, label %11, label %12, !dbg !456

; <label>:11:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br label %12, !dbg !456

; <label>:12:                                     ; preds = %5, %11
  %13 = phi %struct.__locale_t* [ @__global_locale, %11 ], [ %9, %5 ], !dbg !456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  %14 = tail call i64 @_wcsnrtombs_l(%struct._reent* %6, i8* %0, i32** %1, i64 %2, i64 %3, %struct._mbstate_t* %4, %struct.__locale_t* nonnull %13) #6, !dbg !462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  ret i64 %14, !dbg !463
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3)
!1 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/wcsnrtombs.c", directory: "/root/.unikraft/apps/redis/build")
!2 = !{}
!3 = !{!4, !5, !10}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !6, line: 40, baseType: !7)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !8, line: 129, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!9 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !12, line: 83, baseType: !13)
!12 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{i32 2, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!18 = distinct !DISubprogram(name: "_wcsnrtombs_l", scope: !1, file: !1, line: 109, type: !19, isLocal: false, isDefinition: true, scopeLine: 111, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !294)
!19 = !DISubroutineType(types: !20)
!20 = !{!5, !21, !52, !291, !5, !5, !127, !114}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !23, line: 569, size: 14912, elements: !24)
!23 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !{!25, !26, !105, !106, !107, !108, !112, !113, !172, !173, !177, !189, !190, !191, !193, !194, !195, !257, !276, !277, !282, !289}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !22, file: !23, line: 571, baseType: !13, size: 32)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !23, line: 287, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !23, line: 181, size: 1408, elements: !30)
!30 = !{!31, !34, !35, !36, !38, !39, !44, !45, !46, !54, !60, !65, !69, !70, !71, !72, !76, !80, !81, !82, !84, !85, !89, !104}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !29, file: !23, line: 182, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !29, file: !23, line: 183, baseType: !13, size: 32, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !29, file: !23, line: 184, baseType: !13, size: 32, offset: 96)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !29, file: !23, line: 185, baseType: !37, size: 16, offset: 128)
!37 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !29, file: !23, line: 186, baseType: !37, size: 16, offset: 144)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !29, file: !23, line: 187, baseType: !40, size: 128, offset: 192)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !23, line: 117, size: 128, elements: !41)
!41 = !{!42, !43}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !40, file: !23, line: 118, baseType: !32, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !40, file: !23, line: 119, baseType: !13, size: 32, offset: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !29, file: !23, line: 188, baseType: !13, size: 32, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !29, file: !23, line: 195, baseType: !4, size: 64, offset: 384)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !29, file: !23, line: 197, baseType: !47, size: 64, offset: 448)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{!50, !21, !4, !52, !13}
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !8, line: 145, baseType: !51)
!51 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !29, file: !23, line: 199, baseType: !55, size: 64, offset: 512)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!50, !21, !4, !58, !13}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !29, file: !23, line: 202, baseType: !61, size: 64, offset: 576)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{!64, !21, !4, !64, !13}
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !8, line: 114, baseType: !51)
!65 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !29, file: !23, line: 203, baseType: !66, size: 64, offset: 640)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DISubroutineType(types: !68)
!68 = !{!13, !21, !4}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !29, file: !23, line: 206, baseType: !40, size: 128, offset: 704)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !29, file: !23, line: 207, baseType: !32, size: 64, offset: 832)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !29, file: !23, line: 208, baseType: !13, size: 32, offset: 896)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !29, file: !23, line: 211, baseType: !73, size: 24, offset: 928)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 24, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 3)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !29, file: !23, line: 212, baseType: !77, size: 8, offset: 952)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 8, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 1)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !29, file: !23, line: 215, baseType: !40, size: 128, offset: 960)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !29, file: !23, line: 218, baseType: !13, size: 32, offset: 1088)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !29, file: !23, line: 219, baseType: !83, size: 64, offset: 1152)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !8, line: 44, baseType: !51)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !29, file: !23, line: 222, baseType: !21, size: 64, offset: 1216)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !29, file: !23, line: 226, baseType: !86, size: 32, offset: 1280)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !8, line: 175, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !88, line: 12, baseType: !13)
!88 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!89 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !29, file: !23, line: 228, baseType: !90, size: 64, offset: 1312)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !8, line: 171, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 163, size: 64, elements: !92)
!92 = !{!93, !94}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !91, file: !8, line: 165, baseType: !13, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !91, file: !8, line: 170, baseType: !95, size: 32, offset: 32)
!95 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !91, file: !8, line: 166, size: 32, elements: !96)
!96 = !{!97, !100}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !95, file: !8, line: 168, baseType: !98, size: 32)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !12, line: 124, baseType: !99)
!99 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !95, file: !8, line: 169, baseType: !101, size: 32)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 32, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 4)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !29, file: !23, line: 229, baseType: !13, size: 32, offset: 1376)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 128)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !22, file: !23, line: 576, baseType: !27, size: 64, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !22, file: !23, line: 578, baseType: !13, size: 32, offset: 256)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !22, file: !23, line: 579, baseType: !109, size: 200, offset: 288)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 25)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !22, file: !23, line: 582, baseType: !13, size: 32, offset: 512)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !22, file: !23, line: 583, baseType: !114, size: 64, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !116, line: 178, size: 3392, elements: !117)
!116 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!117 = !{!118, !123, !130, !134, !135, !136, !164, !168, !171}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !115, file: !116, line: 180, baseType: !119, size: 1792)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 1792, elements: !120)
!120 = !{!121, !122}
!121 = !DISubrange(count: 7)
!122 = !DISubrange(count: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !115, file: !116, line: 181, baseType: !124, size: 64, offset: 1792)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!13, !21, !52, !11, !127}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !129, line: 86, baseType: !90)
!129 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !115, file: !116, line: 183, baseType: !131, size: 64, offset: 1856)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DISubroutineType(types: !133)
!133 = !{!13, !21, !10, !58, !5, !127}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !115, file: !116, line: 185, baseType: !13, size: 32, offset: 1920)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !115, file: !116, line: 186, baseType: !52, size: 64, offset: 1984)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !115, file: !116, line: 187, baseType: !137, size: 768, offset: 2048)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !138, line: 42, size: 768, elements: !139)
!138 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!139 = !{!140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !137, file: !138, line: 44, baseType: !52, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !137, file: !138, line: 45, baseType: !52, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !137, file: !138, line: 46, baseType: !52, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !137, file: !138, line: 47, baseType: !52, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !137, file: !138, line: 48, baseType: !52, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !137, file: !138, line: 49, baseType: !52, size: 64, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !137, file: !138, line: 50, baseType: !52, size: 64, offset: 384)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !137, file: !138, line: 51, baseType: !52, size: 64, offset: 448)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !137, file: !138, line: 52, baseType: !52, size: 64, offset: 512)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !137, file: !138, line: 53, baseType: !52, size: 64, offset: 576)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !137, file: !138, line: 54, baseType: !53, size: 8, offset: 640)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !137, file: !138, line: 55, baseType: !53, size: 8, offset: 648)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !137, file: !138, line: 56, baseType: !53, size: 8, offset: 656)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !137, file: !138, line: 57, baseType: !53, size: 8, offset: 664)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !137, file: !138, line: 58, baseType: !53, size: 8, offset: 672)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !137, file: !138, line: 59, baseType: !53, size: 8, offset: 680)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !137, file: !138, line: 60, baseType: !53, size: 8, offset: 688)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !137, file: !138, line: 61, baseType: !53, size: 8, offset: 696)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !137, file: !138, line: 62, baseType: !53, size: 8, offset: 704)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !137, file: !138, line: 63, baseType: !53, size: 8, offset: 712)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !137, file: !138, line: 64, baseType: !53, size: 8, offset: 720)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !137, file: !138, line: 65, baseType: !53, size: 8, offset: 728)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !137, file: !138, line: 66, baseType: !53, size: 8, offset: 736)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !137, file: !138, line: 67, baseType: !53, size: 8, offset: 744)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !115, file: !116, line: 189, baseType: !165, size: 16, offset: 2816)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 2)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !115, file: !116, line: 190, baseType: !169, size: 256, offset: 2832)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 256, elements: !170)
!170 = !{!122}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !115, file: !116, line: 191, baseType: !169, size: 256, offset: 3088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !22, file: !23, line: 585, baseType: !13, size: 32, offset: 640)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !22, file: !23, line: 587, baseType: !174, size: 64, offset: 704)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{null, !21}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !22, file: !23, line: 590, baseType: !178, size: 64, offset: 768)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !23, line: 47, size: 256, elements: !180)
!180 = !{!181, !182, !183, !184, !185, !186}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !179, file: !23, line: 49, baseType: !178, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 96)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !179, file: !23, line: 50, baseType: !13, size: 32, offset: 160)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !179, file: !23, line: 51, baseType: !187, size: 32, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 32, elements: !78)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !23, line: 25, baseType: !99)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !22, file: !23, line: 591, baseType: !13, size: 32, offset: 832)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !22, file: !23, line: 592, baseType: !178, size: 64, offset: 896)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !22, file: !23, line: 593, baseType: !192, size: 64, offset: 960)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !22, file: !23, line: 596, baseType: !13, size: 32, offset: 1024)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !22, file: !23, line: 597, baseType: !52, size: 64, offset: 1088)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !22, file: !23, line: 632, baseType: !196, size: 2880, offset: 1152)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !22, file: !23, line: 599, size: 2880, elements: !197)
!197 = !{!198, !248}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !196, file: !23, line: 622, baseType: !199, size: 1728)
!199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !23, line: 601, size: 1728, elements: !200)
!200 = !{!201, !202, !203, !207, !219, !220, !222, !230, !231, !232, !233, !237, !241, !242, !243, !244, !245, !246, !247}
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !199, file: !23, line: 603, baseType: !99, size: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !199, file: !23, line: 604, baseType: !52, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !199, file: !23, line: 605, baseType: !204, size: 208, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 26)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !199, file: !23, line: 606, baseType: !208, size: 288, offset: 352)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !23, line: 55, size: 288, elements: !209)
!209 = !{!210, !211, !212, !213, !214, !215, !216, !217, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !208, file: !23, line: 57, baseType: !13, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !208, file: !23, line: 58, baseType: !13, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !208, file: !23, line: 59, baseType: !13, size: 32, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !208, file: !23, line: 60, baseType: !13, size: 32, offset: 96)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !208, file: !23, line: 61, baseType: !13, size: 32, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !208, file: !23, line: 62, baseType: !13, size: 32, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !208, file: !23, line: 63, baseType: !13, size: 32, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !208, file: !23, line: 64, baseType: !13, size: 32, offset: 224)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !208, file: !23, line: 65, baseType: !13, size: 32, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !199, file: !23, line: 607, baseType: !13, size: 32, offset: 640)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !199, file: !23, line: 608, baseType: !221, size: 64, offset: 704)
!221 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !199, file: !23, line: 609, baseType: !223, size: 112, offset: 768)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !23, line: 319, size: 112, elements: !224)
!224 = !{!225, !228, !229}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !223, file: !23, line: 320, baseType: !226, size: 48)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 48, elements: !74)
!227 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !223, file: !23, line: 321, baseType: !226, size: 48, offset: 48)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !223, file: !23, line: 322, baseType: !227, size: 16, offset: 96)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !199, file: !23, line: 610, baseType: !90, size: 64, offset: 896)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !199, file: !23, line: 611, baseType: !90, size: 64, offset: 960)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !199, file: !23, line: 612, baseType: !90, size: 64, offset: 1024)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !199, file: !23, line: 613, baseType: !234, size: 64, offset: 1088)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !199, file: !23, line: 614, baseType: !238, size: 192, offset: 1152)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 24)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !199, file: !23, line: 615, baseType: !13, size: 32, offset: 1344)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !199, file: !23, line: 616, baseType: !90, size: 64, offset: 1376)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !199, file: !23, line: 617, baseType: !90, size: 64, offset: 1440)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !199, file: !23, line: 618, baseType: !90, size: 64, offset: 1504)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !199, file: !23, line: 619, baseType: !90, size: 64, offset: 1568)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !199, file: !23, line: 620, baseType: !90, size: 64, offset: 1632)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !199, file: !23, line: 621, baseType: !13, size: 32, offset: 1696)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !196, file: !23, line: 631, baseType: !249, size: 2880)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !23, line: 626, size: 2880, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !249, file: !23, line: 629, baseType: !252, size: 1920)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 1920, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 30)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !249, file: !23, line: 630, baseType: !256, size: 960, offset: 1920)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !99, size: 960, elements: !253)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !22, file: !23, line: 636, baseType: !258, size: 64, offset: 4032)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !23, line: 93, size: 6336, elements: !260)
!260 = !{!261, !262, !263, !268}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !259, file: !23, line: 94, baseType: !258, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !259, file: !23, line: 95, baseType: !13, size: 32, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !259, file: !23, line: 97, baseType: !264, size: 2048, offset: 128)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 2048, elements: !170)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{null}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !259, file: !23, line: 98, baseType: !269, size: 4160, offset: 2176)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !23, line: 74, size: 4160, elements: !270)
!270 = !{!271, !273, !274, !275}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !269, file: !23, line: 75, baseType: !272, size: 2048)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !170)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !269, file: !23, line: 76, baseType: !272, size: 2048, offset: 2048)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !269, file: !23, line: 78, baseType: !188, size: 32, offset: 4096)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !269, file: !23, line: 81, baseType: !188, size: 32, offset: 4128)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !22, file: !23, line: 637, baseType: !259, size: 6336, offset: 4096)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !22, file: !23, line: 641, baseType: !278, size: 64, offset: 10432)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !13}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !22, file: !23, line: 646, baseType: !283, size: 192, offset: 10496)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !23, line: 291, size: 192, elements: !284)
!284 = !{!285, !287, !288}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !283, file: !23, line: 293, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !283, file: !23, line: 294, baseType: !13, size: 32, offset: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !283, file: !23, line: 295, baseType: !27, size: 64, offset: 128)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !22, file: !23, line: 648, baseType: !290, size: 4224, offset: 10688)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 4224, elements: !74)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!294 = !{!295, !296, !297, !298, !299, !300, !301, !302, !303, !307, !308, !309, !310, !312, !313}
!295 = !DILocalVariable(name: "r", arg: 1, scope: !18, file: !1, line: 109, type: !21)
!296 = !DILocalVariable(name: "dst", arg: 2, scope: !18, file: !1, line: 109, type: !52)
!297 = !DILocalVariable(name: "src", arg: 3, scope: !18, file: !1, line: 109, type: !291)
!298 = !DILocalVariable(name: "nwc", arg: 4, scope: !18, file: !1, line: 109, type: !5)
!299 = !DILocalVariable(name: "len", arg: 5, scope: !18, file: !1, line: 110, type: !5)
!300 = !DILocalVariable(name: "ps", arg: 6, scope: !18, file: !1, line: 110, type: !127)
!301 = !DILocalVariable(name: "loc", arg: 7, scope: !18, file: !1, line: 110, type: !114)
!302 = !DILocalVariable(name: "ptr", scope: !18, file: !1, line: 112, type: !52)
!303 = !DILocalVariable(name: "buff", scope: !18, file: !1, line: 113, type: !304)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 80, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 10)
!307 = !DILocalVariable(name: "pwcs", scope: !18, file: !1, line: 114, type: !10)
!308 = !DILocalVariable(name: "n", scope: !18, file: !1, line: 115, type: !5)
!309 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 116, type: !13)
!310 = !DILocalVariable(name: "count", scope: !311, file: !1, line: 135, type: !13)
!311 = distinct !DILexicalBlock(scope: !18, file: !1, line: 134, column: 5)
!312 = !DILocalVariable(name: "wch", scope: !311, file: !1, line: 136, type: !98)
!313 = !DILocalVariable(name: "bytes", scope: !311, file: !1, line: 137, type: !13)
!314 = !DILocation(line: 109, column: 31, scope: !18)
!315 = !DILocation(line: 109, column: 40, scope: !18)
!316 = !DILocation(line: 109, column: 61, scope: !18)
!317 = !DILocation(line: 109, column: 73, scope: !18)
!318 = !DILocation(line: 110, column: 16, scope: !18)
!319 = !DILocation(line: 110, column: 32, scope: !18)
!320 = !DILocation(line: 110, column: 55, scope: !18)
!321 = !DILocation(line: 112, column: 9, scope: !18)
!322 = !DILocation(line: 113, column: 3, scope: !18)
!323 = !DILocation(line: 113, column: 8, scope: !18)
!324 = !DILocation(line: 127, column: 11, scope: !325)
!325 = distinct !DILexicalBlock(scope: !18, file: !1, line: 127, column: 7)
!326 = !DILocation(line: 127, column: 7, scope: !18)
!327 = !DILocation(line: 128, column: 5, scope: !325)
!328 = !DILocation(line: 115, column: 10, scope: !18)
!329 = !DILocation(line: 131, column: 22, scope: !18)
!330 = !{!331, !331, i64 0}
!331 = !{!"any pointer", !332, i64 0}
!332 = !{!"omnipotent char", !333, i64 0}
!333 = !{!"Simple C/C++ TBAA"}
!334 = !DILocation(line: 114, column: 12, scope: !18)
!335 = !DILocation(line: 133, column: 3, scope: !18)
!336 = !DILocation(line: 133, column: 18, scope: !18)
!337 = !DILocation(line: 133, column: 12, scope: !18)
!338 = !DILocation(line: 133, column: 24, scope: !18)
!339 = !DILocation(line: 133, column: 27, scope: !18)
!340 = !DILocation(line: 135, column: 23, scope: !311)
!341 = !{!342, !343, i64 0}
!342 = !{!"", !343, i64 0, !332, i64 4}
!343 = !{!"int", !332, i64 0}
!344 = !DILocation(line: 135, column: 11, scope: !311)
!345 = !DILocation(line: 136, column: 32, scope: !311)
!346 = !{!332, !332, i64 0}
!347 = !DILocation(line: 136, column: 14, scope: !311)
!348 = !DILocation(line: 137, column: 24, scope: !311)
!349 = !{!350, !331, i64 224}
!350 = !{!"__locale_t", !332, i64 0, !331, i64 224, !331, i64 232, !343, i64 240, !331, i64 248, !351, i64 256, !332, i64 352, !332, i64 354, !332, i64 386}
!351 = !{!"lconv", !331, i64 0, !331, i64 8, !331, i64 16, !331, i64 24, !331, i64 32, !331, i64 40, !331, i64 48, !331, i64 56, !331, i64 64, !331, i64 72, !332, i64 80, !332, i64 81, !332, i64 82, !332, i64 83, !332, i64 84, !332, i64 85, !332, i64 86, !332, i64 87, !332, i64 88, !332, i64 89, !332, i64 90, !332, i64 91, !332, i64 92, !332, i64 93}
!352 = !DILocation(line: 137, column: 41, scope: !311)
!353 = !{!343, !343, i64 0}
!354 = !DILocation(line: 137, column: 19, scope: !311)
!355 = !DILocation(line: 137, column: 11, scope: !311)
!356 = !DILocation(line: 138, column: 17, scope: !357)
!357 = distinct !DILexicalBlock(scope: !311, file: !1, line: 138, column: 11)
!358 = !DILocation(line: 138, column: 11, scope: !311)
!359 = !DILocation(line: 140, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !357, file: !1, line: 139, column: 2)
!361 = !DILocation(line: 140, column: 14, scope: !360)
!362 = !{!363, !343, i64 0}
!363 = !{!"_reent", !343, i64 0, !331, i64 8, !331, i64 16, !331, i64 24, !343, i64 32, !332, i64 36, !343, i64 64, !331, i64 72, !343, i64 80, !331, i64 88, !331, i64 96, !343, i64 104, !331, i64 112, !331, i64 120, !343, i64 128, !331, i64 136, !332, i64 144, !331, i64 504, !364, i64 512, !331, i64 1304, !366, i64 1312, !332, i64 1336}
!364 = !{!"_atexit", !331, i64 0, !343, i64 8, !332, i64 16, !365, i64 272}
!365 = !{!"_on_exit_args", !332, i64 0, !332, i64 256, !343, i64 512, !343, i64 516}
!366 = !{!"_glue", !331, i64 0, !343, i64 8, !331, i64 16}
!367 = !DILocation(line: 141, column: 16, scope: !360)
!368 = !DILocation(line: 142, column: 4, scope: !360)
!369 = !DILocation(line: 144, column: 15, scope: !370)
!370 = distinct !DILexicalBlock(scope: !311, file: !1, line: 144, column: 11)
!371 = !DILocation(line: 144, column: 13, scope: !370)
!372 = !DILocation(line: 144, column: 21, scope: !370)
!373 = !DILocation(line: 144, column: 11, scope: !311)
!374 = !DILocation(line: 147, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !1, line: 145, column: 2)
!376 = !DILocation(line: 116, column: 7, scope: !18)
!377 = !DILocation(line: 149, column: 13, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !1, line: 149, column: 8)
!379 = distinct !DILexicalBlock(scope: !380, file: !1, line: 148, column: 6)
!380 = distinct !DILexicalBlock(scope: !375, file: !1, line: 147, column: 8)
!381 = !DILocation(line: 149, column: 22, scope: !382)
!382 = distinct !DILexicalBlock(scope: !378, file: !1, line: 149, column: 8)
!383 = !DILocation(line: 149, column: 8, scope: !378)
!384 = !DILocation(line: 150, column: 19, scope: !382)
!385 = !DILocation(line: 150, column: 14, scope: !382)
!386 = !DILocation(line: 150, column: 17, scope: !382)
!387 = !DILocation(line: 149, column: 31, scope: !382)
!388 = !DILocation(line: 149, column: 8, scope: !382)
!389 = distinct !{!389, !383, !390}
!390 = !DILocation(line: 150, column: 25, scope: !378)
!391 = distinct !{!391, !392}
!392 = !{!"llvm.loop.unroll.disable"}
!393 = !DILocation(line: 151, column: 8, scope: !379)
!394 = !DILocation(line: 0, scope: !382)
!395 = !DILocation(line: 152, column: 6, scope: !379)
!396 = !DILocation(line: 153, column: 8, scope: !397)
!397 = distinct !DILexicalBlock(scope: !375, file: !1, line: 153, column: 8)
!398 = !DILocation(line: 153, column: 16, scope: !397)
!399 = !DILocation(line: 153, column: 8, scope: !375)
!400 = !DILocation(line: 155, column: 12, scope: !401)
!401 = distinct !DILexicalBlock(scope: !397, file: !1, line: 154, column: 6)
!402 = !DILocation(line: 156, column: 15, scope: !403)
!403 = distinct !DILexicalBlock(scope: !401, file: !1, line: 155, column: 12)
!404 = !DILocation(line: 156, column: 10, scope: !403)
!405 = !DILocation(line: 157, column: 20, scope: !401)
!406 = !DILocation(line: 158, column: 17, scope: !401)
!407 = !DILocation(line: 158, column: 8, scope: !401)
!408 = !DILocation(line: 164, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !370, file: !1, line: 162, column: 2)
!410 = !DILocation(line: 165, column: 22, scope: !409)
!411 = !DILocation(line: 168, column: 5, scope: !18)
!412 = !DILocation(line: 0, scope: !401)
!413 = !DILocation(line: 153, column: 13, scope: !397)
!414 = !DILocation(line: 0, scope: !18)
!415 = !DILocation(line: 171, column: 1, scope: !18)
!416 = distinct !DISubprogram(name: "_wcsnrtombs_r", scope: !1, file: !1, line: 174, type: !417, isLocal: false, isDefinition: true, scopeLine: 181, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !420)
!417 = !DISubroutineType(types: !418)
!418 = !{!419, !21, !52, !291, !5, !5, !127}
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !12, line: 58, baseType: !9)
!420 = !{!421, !422, !423, !424, !425, !426}
!421 = !DILocalVariable(name: "r", arg: 1, scope: !416, file: !1, line: 174, type: !21)
!422 = !DILocalVariable(name: "dst", arg: 2, scope: !416, file: !1, line: 174, type: !52)
!423 = !DILocalVariable(name: "src", arg: 3, scope: !416, file: !1, line: 174, type: !291)
!424 = !DILocalVariable(name: "nwc", arg: 4, scope: !416, file: !1, line: 174, type: !5)
!425 = !DILocalVariable(name: "len", arg: 5, scope: !416, file: !1, line: 174, type: !5)
!426 = !DILocalVariable(name: "ps", arg: 6, scope: !416, file: !1, line: 174, type: !127)
!427 = !DILocation(line: 174, column: 1, scope: !416)
!428 = !DILocation(line: 182, column: 25, scope: !416)
!429 = !DILocation(line: 230, column: 10, scope: !430, inlinedAt: !433)
!430 = distinct !DISubprogram(name: "__get_current_locale", scope: !116, file: !116, line: 228, type: !431, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !2)
!431 = !DISubroutineType(types: !432)
!432 = !{!114}
!433 = distinct !DILocation(line: 183, column: 4, scope: !416)
!434 = !DILocation(line: 230, column: 18, scope: !430, inlinedAt: !433)
!435 = !{!363, !331, i64 72}
!436 = !DILocation(line: 213, column: 3, scope: !437, inlinedAt: !438)
!437 = distinct !DISubprogram(name: "__get_global_locale", scope: !116, file: !116, line: 210, type: !431, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !0, retainedNodes: !2)
!438 = distinct !DILocation(line: 230, column: 29, scope: !430, inlinedAt: !433)
!439 = !DILocation(line: 230, column: 3, scope: !430, inlinedAt: !433)
!440 = !DILocation(line: 182, column: 10, scope: !416)
!441 = !DILocation(line: 182, column: 3, scope: !416)
!442 = distinct !DISubprogram(name: "wcsnrtombs", scope: !1, file: !1, line: 188, type: !443, isLocal: false, isDefinition: true, scopeLine: 194, flags: DIFlagPrototyped, isOptimized: true, unit: !0, retainedNodes: !448)
!443 = !DISubroutineType(types: !444)
!444 = !{!419, !445, !446, !5, !5, !447}
!445 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!446 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !291)
!447 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!448 = !{!449, !450, !451, !452, !453}
!449 = !DILocalVariable(name: "dst", arg: 1, scope: !442, file: !1, line: 188, type: !445)
!450 = !DILocalVariable(name: "src", arg: 2, scope: !442, file: !1, line: 188, type: !446)
!451 = !DILocalVariable(name: "nwc", arg: 3, scope: !442, file: !1, line: 188, type: !5)
!452 = !DILocalVariable(name: "len", arg: 4, scope: !442, file: !1, line: 188, type: !5)
!453 = !DILocalVariable(name: "ps", arg: 5, scope: !442, file: !1, line: 188, type: !447)
!454 = !DILocation(line: 188, column: 1, scope: !442)
!455 = !DILocation(line: 195, column: 25, scope: !442)
!456 = !DILocation(line: 230, column: 10, scope: !430, inlinedAt: !457)
!457 = distinct !DILocation(line: 196, column: 4, scope: !442)
!458 = !DILocation(line: 230, column: 18, scope: !430, inlinedAt: !457)
!459 = !DILocation(line: 213, column: 3, scope: !437, inlinedAt: !460)
!460 = distinct !DILocation(line: 230, column: 29, scope: !430, inlinedAt: !457)
!461 = !DILocation(line: 230, column: 3, scope: !430, inlinedAt: !457)
!462 = !DILocation(line: 195, column: 10, scope: !442)
!463 = !DILocation(line: 195, column: 3, scope: !442)
