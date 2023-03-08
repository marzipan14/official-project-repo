; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/nl_langinfo.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/nl_langinfo.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.lc_time_T = type { [12 x i8*], [12 x i8*], [7 x i8*], [7 x i8*], i8*, i8*, i8*, [2 x i8*], i8*, [12 x i8*], i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.lc_numeric_T = type { i8*, i8*, i8* }
%struct.lc_messages_T = type { i8*, i8*, i8*, i8* }
%struct.lc_monetary_T = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
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

@nl_langinfo_l.csym = internal unnamed_addr global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"US-ASCII\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@_C_time_locale = external dso_local local_unnamed_addr constant %struct.lc_time_T, align 8
@_C_numeric_locale = external dso_local local_unnamed_addr constant %struct.lc_numeric_T, align 8
@_C_messages_locale = external dso_local local_unnamed_addr constant %struct.lc_messages_T, align 8
@_C_monetary_locale = external dso_local local_unnamed_addr constant %struct.lc_monetary_T, align 8
@__global_locale = external dso_local global %struct.__locale_t, align 8

; Function Attrs: noredzone nounwind
define dso_local i8* @nl_langinfo_l(i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !2 {
  switch i32 %0, label %100 [
    i32 0, label %107
    i32 1, label %3
    i32 2, label %5
    i32 3, label %7
    i32 4, label %9
    i32 5, label %11
    i32 6, label %13
    i32 7, label %15
    i32 8, label %15
    i32 9, label %15
    i32 10, label %15
    i32 11, label %15
    i32 12, label %15
    i32 13, label %15
    i32 14, label %20
    i32 15, label %20
    i32 16, label %20
    i32 17, label %20
    i32 18, label %20
    i32 19, label %20
    i32 20, label %20
    i32 21, label %25
    i32 22, label %25
    i32 23, label %25
    i32 24, label %25
    i32 25, label %25
    i32 26, label %25
    i32 27, label %25
    i32 28, label %25
    i32 29, label %25
    i32 30, label %25
    i32 31, label %25
    i32 32, label %25
    i32 33, label %30
    i32 34, label %30
    i32 35, label %30
    i32 36, label %30
    i32 37, label %30
    i32 38, label %30
    i32 39, label %30
    i32 40, label %30
    i32 41, label %30
    i32 42, label %30
    i32 43, label %30
    i32 44, label %30
    i32 45, label %35
    i32 46, label %37
    i32 47, label %39
    i32 48, label %41
    i32 49, label %43
    i32 84, label %45
    i32 50, label %47
    i32 51, label %49
    i32 52, label %51
    i32 53, label %53
    i32 54, label %55
    i32 55, label %57
    i32 56, label %59
    i32 57, label %98
  ], !dbg !376

; <label>:3:                                      ; preds = %2
  %4 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 6), align 8, !dbg !377, !tbaa !378
  br label %107, !dbg !384

; <label>:5:                                      ; preds = %2
  %6 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 5), align 8, !dbg !385, !tbaa !386
  br label %107, !dbg !387

; <label>:7:                                      ; preds = %2
  %8 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 4), align 8, !dbg !388, !tbaa !389
  br label %107, !dbg !390

; <label>:9:                                      ; preds = %2
  %10 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 11), align 8, !dbg !391, !tbaa !392
  br label %107, !dbg !393

; <label>:11:                                     ; preds = %2
  %12 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 7, i64 0), align 8, !dbg !394, !tbaa !395
  br label %107, !dbg !396

; <label>:13:                                     ; preds = %2
  %14 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 7, i64 1), align 8, !dbg !397, !tbaa !395
  br label %107, !dbg !398

; <label>:15:                                     ; preds = %2, %2, %2, %2, %2, %2, %2
  %16 = add nsw i32 %0, -7, !dbg !399
  %17 = sext i32 %16 to i64, !dbg !400
  %18 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 3, i64 %17, !dbg !400
  %19 = load i8*, i8** %18, align 8, !dbg !400, !tbaa !395
  br label %107, !dbg !401

; <label>:20:                                     ; preds = %2, %2, %2, %2, %2, %2, %2
  %21 = add nsw i32 %0, -14, !dbg !402
  %22 = sext i32 %21 to i64, !dbg !403
  %23 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 2, i64 %22, !dbg !403
  %24 = load i8*, i8** %23, align 8, !dbg !403, !tbaa !395
  br label %107, !dbg !404

; <label>:25:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %26 = add nsw i32 %0, -21, !dbg !405
  %27 = sext i32 %26 to i64, !dbg !406
  %28 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 1, i64 %27, !dbg !406
  %29 = load i8*, i8** %28, align 8, !dbg !406, !tbaa !395
  br label %107, !dbg !407

; <label>:30:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  %31 = add nsw i32 %0, -33, !dbg !408
  %32 = sext i32 %31 to i64, !dbg !409
  %33 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 0, i64 %32, !dbg !409
  %34 = load i8*, i8** %33, align 8, !dbg !409, !tbaa !395
  br label %107, !dbg !410

; <label>:35:                                     ; preds = %2
  %36 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 12), align 8, !dbg !411, !tbaa !412
  br label %107, !dbg !413

; <label>:37:                                     ; preds = %2
  %38 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 13), align 8, !dbg !414, !tbaa !415
  br label %107, !dbg !416

; <label>:39:                                     ; preds = %2
  %40 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 14), align 8, !dbg !417, !tbaa !418
  br label %107, !dbg !419

; <label>:41:                                     ; preds = %2
  %42 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 15), align 8, !dbg !420, !tbaa !421
  br label %107, !dbg !422

; <label>:43:                                     ; preds = %2
  %44 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 16), align 8, !dbg !423, !tbaa !424
  br label %107, !dbg !425

; <label>:45:                                     ; preds = %2
  %46 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 8), align 8, !dbg !426, !tbaa !427
  br label %107, !dbg !428

; <label>:47:                                     ; preds = %2
  %48 = load i8*, i8** getelementptr inbounds (%struct.lc_numeric_T, %struct.lc_numeric_T* @_C_numeric_locale, i64 0, i32 0), align 8, !dbg !429, !tbaa !430
  br label %107, !dbg !432

; <label>:49:                                     ; preds = %2
  %50 = load i8*, i8** getelementptr inbounds (%struct.lc_numeric_T, %struct.lc_numeric_T* @_C_numeric_locale, i64 0, i32 1), align 8, !dbg !433, !tbaa !434
  br label %107, !dbg !435

; <label>:51:                                     ; preds = %2
  %52 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 0), align 8, !dbg !436, !tbaa !437
  br label %107, !dbg !439

; <label>:53:                                     ; preds = %2
  %54 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 1), align 8, !dbg !440, !tbaa !441
  br label %107, !dbg !442

; <label>:55:                                     ; preds = %2
  %56 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 2), align 8, !dbg !443, !tbaa !444
  br label %107, !dbg !445

; <label>:57:                                     ; preds = %2
  %58 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 3), align 8, !dbg !446, !tbaa !447
  br label %107, !dbg !448

; <label>:59:                                     ; preds = %2
  %60 = load i8*, i8** getelementptr inbounds (%struct.lc_monetary_T, %struct.lc_monetary_T* @_C_monetary_locale, i64 0, i32 1), align 8, !dbg !449, !tbaa !450
  %61 = load i8, i8* %60, align 1, !dbg !453, !tbaa !454
  %62 = icmp eq i8 %61, 0, !dbg !455
  br i1 %62, label %107, label %63, !dbg !456

; <label>:63:                                     ; preds = %59
  %64 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %1) #3, !dbg !457
  %65 = getelementptr inbounds %struct.lconv, %struct.lconv* %64, i64 0, i32 12, !dbg !458
  %66 = load i8, i8* %65, align 2, !dbg !458, !tbaa !459
  %67 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %1) #3, !dbg !462
  %68 = getelementptr inbounds %struct.lconv, %struct.lconv* %67, i64 0, i32 14, !dbg !463
  %69 = load i8, i8* %68, align 4, !dbg !463, !tbaa !464
  %70 = icmp eq i8 %66, %69, !dbg !465
  br i1 %70, label %71, label %107, !dbg !466

; <label>:71:                                     ; preds = %63
  %72 = icmp eq i8 %66, 127, !dbg !468
  br i1 %72, label %73, label %77, !dbg !470

; <label>:73:                                     ; preds = %71
  %74 = load i8*, i8** getelementptr inbounds (%struct.lc_monetary_T, %struct.lc_monetary_T* @_C_monetary_locale, i64 0, i32 2), align 8, !dbg !471, !tbaa !474
  %75 = tail call i32 @strcmp(i8* %60, i8* %74) #3, !dbg !475
  %76 = icmp eq i32 %75, 0, !dbg !476
  br i1 %76, label %80, label %107

; <label>:77:                                     ; preds = %71
  %78 = icmp eq i8 %66, 0, !dbg !477
  %79 = select i1 %78, i8 43, i8 45, !dbg !477
  br label %80

; <label>:80:                                     ; preds = %73, %77
  %81 = phi i8 [ %79, %77 ], [ 46, %73 ]
  %82 = tail call i64 @strlen(i8* %60) #3, !dbg !478
  %83 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !479, !tbaa !395
  %84 = shl i64 %82, 32, !dbg !480
  %85 = add i64 %84, 8589934592, !dbg !480
  %86 = ashr exact i64 %85, 32, !dbg !480
  %87 = tail call i8* @realloc(i8* %83, i64 %86) #3, !dbg !481
  %88 = icmp eq i8* %87, null, !dbg !483
  %89 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !485
  %90 = icmp ne i8* %89, null, !dbg !485
  %91 = and i1 %88, %90, !dbg !486
  br i1 %91, label %92, label %93, !dbg !486

; <label>:92:                                     ; preds = %80
  tail call void @free(i8* nonnull %89) #3, !dbg !487
  br label %93, !dbg !487

; <label>:93:                                     ; preds = %80, %92
  store i8* %87, i8** @nl_langinfo_l.csym, align 8, !dbg !488, !tbaa !395
  br i1 %88, label %107, label %94, !dbg !489

; <label>:94:                                     ; preds = %93
  store i8 %81, i8* %87, align 1, !dbg !490, !tbaa !454
  %95 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !493
  %96 = tail call i8* @strcpy(i8* nonnull %95, i8* %60) #3, !dbg !494
  %97 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !495, !tbaa !395
  br label %107, !dbg !496

; <label>:98:                                     ; preds = %2
  %99 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 10), align 8, !dbg !497, !tbaa !498
  br label %107, !dbg !499

; <label>:100:                                    ; preds = %2
  %101 = add i32 %0, -100001, !dbg !500
  %102 = icmp ult i32 %101, 6, !dbg !500
  br i1 %102, label %103, label %107, !dbg !500

; <label>:103:                                    ; preds = %100
  %104 = add nsw i32 %0, -100000, !dbg !502
  %105 = sext i32 %104 to i64, !dbg !504
  %106 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %1, i64 0, i32 0, i64 %105, i64 0, !dbg !504
  br label %107, !dbg !505

; <label>:107:                                    ; preds = %73, %3, %5, %7, %9, %11, %13, %15, %20, %25, %30, %35, %37, %39, %41, %43, %45, %47, %49, %51, %53, %55, %57, %98, %59, %2, %93, %94, %63, %100, %103
  %108 = phi i8* [ %106, %103 ], [ %99, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %59 ], [ %58, %57 ], [ %56, %55 ], [ %54, %53 ], [ %52, %51 ], [ %50, %49 ], [ %48, %47 ], [ %46, %45 ], [ %44, %43 ], [ %42, %41 ], [ %40, %39 ], [ %38, %37 ], [ %36, %35 ], [ %34, %30 ], [ %29, %25 ], [ %24, %20 ], [ %19, %15 ], [ %14, %13 ], [ %12, %11 ], [ %10, %9 ], [ %8, %7 ], [ %6, %5 ], [ %4, %3 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %2 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %63 ], [ %97, %94 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %93 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %73 ], !dbg !506
  ret i8* %108, !dbg !507
}

; Function Attrs: noredzone
declare dso_local %struct.lconv* @__localeconv_l(%struct.__locale_t*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @realloc(i8*, i64) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #1

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #1

; Function Attrs: noredzone nounwind
define dso_local i8* @nl_langinfo(i32) local_unnamed_addr #0 !dbg !508 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !514
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 7, !dbg !520
  %4 = load %struct.__locale_t*, %struct.__locale_t** %3, align 8, !dbg !520, !tbaa !521
  %5 = icmp eq %struct.__locale_t* %4, null, !dbg !514
  %6 = select i1 %5, %struct.__locale_t* @__global_locale, %struct.__locale_t* %4, !dbg !514
  %7 = tail call i8* @nl_langinfo_l(i32 %0, %struct.__locale_t* %6) #4, !dbg !527
  ret i8* %7, !dbg !528
}

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #1

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { nobuiltin noredzone nounwind }
attributes #4 = { nobuiltin noredzone }

!llvm.module.flags = !{!370, !371, !372}
!llvm.ident = !{!373}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "csym", scope: !2, file: !3, line: 179, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "nl_langinfo_l", scope: !3, file: !3, line: 173, type: !4, isLocal: false, isDefinition: true, scopeLine: 174, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !353)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/nl_langinfo.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !8, !11}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "nl_item", file: !9, line: 39, baseType: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/langinfo.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !13, line: 178, size: 3392, elements: !14)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !{!15, !20, !242, !251, !252, !253, !281, !285, !287}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !12, file: !13, line: 180, baseType: !16, size: 1792)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1792, elements: !17)
!17 = !{!18, !19}
!18 = !DISubrange(count: 7)
!19 = !DISubrange(count: 32)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !12, file: !13, line: 181, baseType: !21, size: 64, offset: 1792)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DISubroutineType(types: !23)
!23 = !{!10, !24, !6, !238, !239}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !26, line: 569, size: 14912, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !29, !109, !110, !111, !112, !116, !117, !118, !119, !123, !135, !136, !137, !139, !140, !141, !203, !223, !224, !229, !236}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !25, file: !26, line: 571, baseType: !10, size: 32)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !26, line: 287, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 181, size: 1408, elements: !33)
!33 = !{!34, !37, !38, !39, !41, !42, !47, !48, !50, !57, !63, !68, !72, !73, !74, !75, !79, !83, !84, !85, !87, !88, !92, !108}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !32, file: !26, line: 182, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !32, file: !26, line: 183, baseType: !10, size: 32, offset: 64)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !32, file: !26, line: 184, baseType: !10, size: 32, offset: 96)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !32, file: !26, line: 185, baseType: !40, size: 16, offset: 128)
!40 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !32, file: !26, line: 186, baseType: !40, size: 16, offset: 144)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !32, file: !26, line: 187, baseType: !43, size: 128, offset: 192)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 117, size: 128, elements: !44)
!44 = !{!45, !46}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !43, file: !26, line: 118, baseType: !35, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !43, file: !26, line: 119, baseType: !10, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !32, file: !26, line: 188, baseType: !10, size: 32, offset: 320)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !32, file: !26, line: 195, baseType: !49, size: 64, offset: 384)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !32, file: !26, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !24, !49, !6, !10}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !55, line: 145, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !32, file: !26, line: 199, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!54, !24, !49, !61, !10}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !32, file: !26, line: 202, baseType: !64, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !24, !49, !67, !10}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !55, line: 114, baseType: !56)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !32, file: !26, line: 203, baseType: !69, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!10, !24, !49}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !32, file: !26, line: 206, baseType: !43, size: 128, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !32, file: !26, line: 207, baseType: !35, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !32, file: !26, line: 208, baseType: !10, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !32, file: !26, line: 211, baseType: !76, size: 24, offset: 928)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !32, file: !26, line: 212, baseType: !80, size: 8, offset: 952)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !32, file: !26, line: 215, baseType: !43, size: 128, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !32, file: !26, line: 218, baseType: !10, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !32, file: !26, line: 219, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !56)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !32, file: !26, line: 222, baseType: !24, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !32, file: !26, line: 226, baseType: !89, size: 32, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !55, line: 175, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !91, line: 12, baseType: !10)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !32, file: !26, line: 228, baseType: !93, size: 64, offset: 1312)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !55, line: 171, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 163, size: 64, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !94, file: !55, line: 165, baseType: !10, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !94, file: !55, line: 170, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !55, line: 166, size: 32, elements: !99)
!99 = !{!100, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !98, file: !55, line: 168, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !102, line: 124, baseType: !103)
!102 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !98, file: !55, line: 169, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !32, file: !26, line: 229, baseType: !10, size: 32, offset: 1376)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !25, file: !26, line: 576, baseType: !30, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !25, file: !26, line: 578, baseType: !10, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !25, file: !26, line: 579, baseType: !113, size: 200, offset: 288)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 25)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !25, file: !26, line: 582, baseType: !10, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !25, file: !26, line: 583, baseType: !11, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !25, file: !26, line: 585, baseType: !10, size: 32, offset: 640)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !25, file: !26, line: 587, baseType: !120, size: 64, offset: 704)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DISubroutineType(types: !122)
!122 = !{null, !24}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !25, file: !26, line: 590, baseType: !124, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !26, line: 47, size: 256, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !125, file: !26, line: 49, baseType: !124, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !125, file: !26, line: 50, baseType: !10, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !125, file: !26, line: 50, baseType: !10, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !125, file: !26, line: 50, baseType: !10, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !125, file: !26, line: 50, baseType: !10, size: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !125, file: !26, line: 51, baseType: !133, size: 32, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !81)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !103)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !25, file: !26, line: 591, baseType: !10, size: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !25, file: !26, line: 592, baseType: !124, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !25, file: !26, line: 593, baseType: !138, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !25, file: !26, line: 596, baseType: !10, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !25, file: !26, line: 597, baseType: !6, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !25, file: !26, line: 632, baseType: !142, size: 2880, offset: 1152)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 599, size: 2880, elements: !143)
!143 = !{!144, !194}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !142, file: !26, line: 622, baseType: !145, size: 1728)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !26, line: 601, size: 1728, elements: !146)
!146 = !{!147, !148, !149, !153, !165, !166, !168, !176, !177, !178, !179, !183, !187, !188, !189, !190, !191, !192, !193}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !145, file: !26, line: 603, baseType: !103, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !145, file: !26, line: 604, baseType: !6, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !145, file: !26, line: 605, baseType: !150, size: 208, offset: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 208, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 26)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !145, file: !26, line: 606, baseType: !154, size: 288, offset: 352)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !26, line: 55, size: 288, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !154, file: !26, line: 57, baseType: !10, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !154, file: !26, line: 58, baseType: !10, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !154, file: !26, line: 59, baseType: !10, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !154, file: !26, line: 60, baseType: !10, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !154, file: !26, line: 61, baseType: !10, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !154, file: !26, line: 62, baseType: !10, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !154, file: !26, line: 63, baseType: !10, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !154, file: !26, line: 64, baseType: !10, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !154, file: !26, line: 65, baseType: !10, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !145, file: !26, line: 607, baseType: !10, size: 32, offset: 640)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !145, file: !26, line: 608, baseType: !167, size: 64, offset: 704)
!167 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !145, file: !26, line: 609, baseType: !169, size: 112, offset: 768)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !26, line: 319, size: 112, elements: !170)
!170 = !{!171, !174, !175}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !169, file: !26, line: 320, baseType: !172, size: 48)
!172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !173, size: 48, elements: !77)
!173 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !169, file: !26, line: 321, baseType: !172, size: 48, offset: 48)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !169, file: !26, line: 322, baseType: !173, size: 16, offset: 96)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !145, file: !26, line: 610, baseType: !93, size: 64, offset: 896)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !145, file: !26, line: 611, baseType: !93, size: 64, offset: 960)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !145, file: !26, line: 612, baseType: !93, size: 64, offset: 1024)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !145, file: !26, line: 613, baseType: !180, size: 64, offset: 1088)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !145, file: !26, line: 614, baseType: !184, size: 192, offset: 1152)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !145, file: !26, line: 615, baseType: !10, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !145, file: !26, line: 616, baseType: !93, size: 64, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !145, file: !26, line: 617, baseType: !93, size: 64, offset: 1440)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !145, file: !26, line: 618, baseType: !93, size: 64, offset: 1504)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !145, file: !26, line: 619, baseType: !93, size: 64, offset: 1568)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !145, file: !26, line: 620, baseType: !93, size: 64, offset: 1632)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !145, file: !26, line: 621, baseType: !10, size: 32, offset: 1696)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !142, file: !26, line: 631, baseType: !195, size: 2880)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !26, line: 626, size: 2880, elements: !196)
!196 = !{!197, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !195, file: !26, line: 629, baseType: !198, size: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1920, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 30)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !195, file: !26, line: 630, baseType: !202, size: 960, offset: 1920)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 960, elements: !199)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !25, file: !26, line: 636, baseType: !204, size: 64, offset: 4032)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !26, line: 93, size: 6336, elements: !206)
!206 = !{!207, !208, !209, !215}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !205, file: !26, line: 94, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !205, file: !26, line: 95, baseType: !10, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !205, file: !26, line: 97, baseType: !210, size: 2048, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !214)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !{!19}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !205, file: !26, line: 98, baseType: !216, size: 4160, offset: 2176)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !26, line: 74, size: 4160, elements: !217)
!217 = !{!218, !220, !221, !222}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !216, file: !26, line: 75, baseType: !219, size: 2048)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !49, size: 2048, elements: !214)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !216, file: !26, line: 76, baseType: !219, size: 2048, offset: 2048)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !216, file: !26, line: 78, baseType: !134, size: 32, offset: 4096)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !216, file: !26, line: 81, baseType: !134, size: 32, offset: 4128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !25, file: !26, line: 637, baseType: !205, size: 6336, offset: 4096)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !25, file: !26, line: 641, baseType: !225, size: 64, offset: 10432)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{null, !10}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !25, file: !26, line: 646, baseType: !230, size: 192, offset: 10496)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !26, line: 291, size: 192, elements: !231)
!231 = !{!232, !234, !235}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !230, file: !26, line: 293, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !230, file: !26, line: 294, baseType: !10, size: 32, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !230, file: !26, line: 295, baseType: !30, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !25, file: !26, line: 648, baseType: !237, size: 4224, offset: 10688)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 4224, elements: !77)
!238 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !102, line: 83, baseType: !10)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !241, line: 86, baseType: !93)
!241 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !12, file: !13, line: 183, baseType: !243, size: 64, offset: 1856)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!10, !24, !246, !61, !247, !239}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !248, line: 40, baseType: !249)
!248 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !55, line: 129, baseType: !250)
!250 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !12, file: !13, line: 185, baseType: !10, size: 32, offset: 1920)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !12, file: !13, line: 186, baseType: !6, size: 64, offset: 1984)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !12, file: !13, line: 187, baseType: !254, size: 768, offset: 2048)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !255, line: 42, size: 768, elements: !256)
!255 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!256 = !{!257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !254, file: !255, line: 44, baseType: !6, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !254, file: !255, line: 45, baseType: !6, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !254, file: !255, line: 46, baseType: !6, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !254, file: !255, line: 47, baseType: !6, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !254, file: !255, line: 48, baseType: !6, size: 64, offset: 256)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !254, file: !255, line: 49, baseType: !6, size: 64, offset: 320)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !254, file: !255, line: 50, baseType: !6, size: 64, offset: 384)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !254, file: !255, line: 51, baseType: !6, size: 64, offset: 448)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !254, file: !255, line: 52, baseType: !6, size: 64, offset: 512)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !254, file: !255, line: 53, baseType: !6, size: 64, offset: 576)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !254, file: !255, line: 54, baseType: !7, size: 8, offset: 640)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !254, file: !255, line: 55, baseType: !7, size: 8, offset: 648)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !254, file: !255, line: 56, baseType: !7, size: 8, offset: 656)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !254, file: !255, line: 57, baseType: !7, size: 8, offset: 664)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !254, file: !255, line: 58, baseType: !7, size: 8, offset: 672)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !254, file: !255, line: 59, baseType: !7, size: 8, offset: 680)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !254, file: !255, line: 60, baseType: !7, size: 8, offset: 688)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !254, file: !255, line: 61, baseType: !7, size: 8, offset: 696)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !254, file: !255, line: 62, baseType: !7, size: 8, offset: 704)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !254, file: !255, line: 63, baseType: !7, size: 8, offset: 712)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !254, file: !255, line: 64, baseType: !7, size: 8, offset: 720)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !254, file: !255, line: 65, baseType: !7, size: 8, offset: 728)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !254, file: !255, line: 66, baseType: !7, size: 8, offset: 736)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !254, file: !255, line: 67, baseType: !7, size: 8, offset: 744)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !12, file: !13, line: 189, baseType: !282, size: 16, offset: 2816)
!282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !283)
!283 = !{!284}
!284 = !DISubrange(count: 2)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !12, file: !13, line: 190, baseType: !286, size: 256, offset: 2832)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !214)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !12, file: !13, line: 191, baseType: !286, size: 256, offset: 3088)
!288 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !289, retainedTypes: !351, globals: !352)
!289 = !{!290}
!290 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__nl_item", file: !9, line: 41, baseType: !103, size: 32, elements: !291)
!291 = !{!292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350}
!292 = !DIEnumerator(name: "_NL_CTYPE_CODESET_NAME", value: 0, isUnsigned: true)
!293 = !DIEnumerator(name: "D_T_FMT", value: 1, isUnsigned: true)
!294 = !DIEnumerator(name: "D_FMT", value: 2, isUnsigned: true)
!295 = !DIEnumerator(name: "T_FMT", value: 3, isUnsigned: true)
!296 = !DIEnumerator(name: "T_FMT_AMPM", value: 4, isUnsigned: true)
!297 = !DIEnumerator(name: "AM_STR", value: 5, isUnsigned: true)
!298 = !DIEnumerator(name: "PM_STR", value: 6, isUnsigned: true)
!299 = !DIEnumerator(name: "DAY_1", value: 7, isUnsigned: true)
!300 = !DIEnumerator(name: "DAY_2", value: 8, isUnsigned: true)
!301 = !DIEnumerator(name: "DAY_3", value: 9, isUnsigned: true)
!302 = !DIEnumerator(name: "DAY_4", value: 10, isUnsigned: true)
!303 = !DIEnumerator(name: "DAY_5", value: 11, isUnsigned: true)
!304 = !DIEnumerator(name: "DAY_6", value: 12, isUnsigned: true)
!305 = !DIEnumerator(name: "DAY_7", value: 13, isUnsigned: true)
!306 = !DIEnumerator(name: "ABDAY_1", value: 14, isUnsigned: true)
!307 = !DIEnumerator(name: "ABDAY_2", value: 15, isUnsigned: true)
!308 = !DIEnumerator(name: "ABDAY_3", value: 16, isUnsigned: true)
!309 = !DIEnumerator(name: "ABDAY_4", value: 17, isUnsigned: true)
!310 = !DIEnumerator(name: "ABDAY_5", value: 18, isUnsigned: true)
!311 = !DIEnumerator(name: "ABDAY_6", value: 19, isUnsigned: true)
!312 = !DIEnumerator(name: "ABDAY_7", value: 20, isUnsigned: true)
!313 = !DIEnumerator(name: "MON_1", value: 21, isUnsigned: true)
!314 = !DIEnumerator(name: "MON_2", value: 22, isUnsigned: true)
!315 = !DIEnumerator(name: "MON_3", value: 23, isUnsigned: true)
!316 = !DIEnumerator(name: "MON_4", value: 24, isUnsigned: true)
!317 = !DIEnumerator(name: "MON_5", value: 25, isUnsigned: true)
!318 = !DIEnumerator(name: "MON_6", value: 26, isUnsigned: true)
!319 = !DIEnumerator(name: "MON_7", value: 27, isUnsigned: true)
!320 = !DIEnumerator(name: "MON_8", value: 28, isUnsigned: true)
!321 = !DIEnumerator(name: "MON_9", value: 29, isUnsigned: true)
!322 = !DIEnumerator(name: "MON_10", value: 30, isUnsigned: true)
!323 = !DIEnumerator(name: "MON_11", value: 31, isUnsigned: true)
!324 = !DIEnumerator(name: "MON_12", value: 32, isUnsigned: true)
!325 = !DIEnumerator(name: "ABMON_1", value: 33, isUnsigned: true)
!326 = !DIEnumerator(name: "ABMON_2", value: 34, isUnsigned: true)
!327 = !DIEnumerator(name: "ABMON_3", value: 35, isUnsigned: true)
!328 = !DIEnumerator(name: "ABMON_4", value: 36, isUnsigned: true)
!329 = !DIEnumerator(name: "ABMON_5", value: 37, isUnsigned: true)
!330 = !DIEnumerator(name: "ABMON_6", value: 38, isUnsigned: true)
!331 = !DIEnumerator(name: "ABMON_7", value: 39, isUnsigned: true)
!332 = !DIEnumerator(name: "ABMON_8", value: 40, isUnsigned: true)
!333 = !DIEnumerator(name: "ABMON_9", value: 41, isUnsigned: true)
!334 = !DIEnumerator(name: "ABMON_10", value: 42, isUnsigned: true)
!335 = !DIEnumerator(name: "ABMON_11", value: 43, isUnsigned: true)
!336 = !DIEnumerator(name: "ABMON_12", value: 44, isUnsigned: true)
!337 = !DIEnumerator(name: "ERA", value: 45, isUnsigned: true)
!338 = !DIEnumerator(name: "ERA_D_FMT", value: 46, isUnsigned: true)
!339 = !DIEnumerator(name: "ERA_D_T_FMT", value: 47, isUnsigned: true)
!340 = !DIEnumerator(name: "ERA_T_FMT", value: 48, isUnsigned: true)
!341 = !DIEnumerator(name: "ALT_DIGITS", value: 49, isUnsigned: true)
!342 = !DIEnumerator(name: "RADIXCHAR", value: 50, isUnsigned: true)
!343 = !DIEnumerator(name: "THOUSEP", value: 51, isUnsigned: true)
!344 = !DIEnumerator(name: "YESEXPR", value: 52, isUnsigned: true)
!345 = !DIEnumerator(name: "NOEXPR", value: 53, isUnsigned: true)
!346 = !DIEnumerator(name: "YESSTR", value: 54, isUnsigned: true)
!347 = !DIEnumerator(name: "NOSTR", value: 55, isUnsigned: true)
!348 = !DIEnumerator(name: "CRNCYSTR", value: 56, isUnsigned: true)
!349 = !DIEnumerator(name: "D_MD_ORDER", value: 57, isUnsigned: true)
!350 = !DIEnumerator(name: "_NL_TIME_DATE_FMT", value: 84, isUnsigned: true)
!351 = !{!6, !10, !49}
!352 = !{!0}
!353 = !{!354, !355, !356, !357, !358, !359, !360, !364, !367}
!354 = !DILocalVariable(name: "item", arg: 1, scope: !2, file: !3, line: 173, type: !8)
!355 = !DILocalVariable(name: "locale", arg: 2, scope: !2, file: !3, line: 173, type: !11)
!356 = !DILocalVariable(name: "ret", scope: !2, file: !3, line: 175, type: !6)
!357 = !DILocalVariable(name: "cs", scope: !2, file: !3, line: 175, type: !6)
!358 = !DILocalVariable(name: "s", scope: !2, file: !3, line: 177, type: !6)
!359 = !DILocalVariable(name: "nptr", scope: !2, file: !3, line: 180, type: !6)
!360 = !DILocalVariable(name: "pos", scope: !361, file: !3, line: 336, type: !7)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 335, column: 20)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 335, column: 7)
!363 = distinct !DILexicalBlock(scope: !2, file: !3, line: 182, column: 18)
!364 = !DILocalVariable(name: "psn", scope: !365, file: !3, line: 339, type: !7)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 338, column: 55)
!366 = distinct !DILexicalBlock(scope: !361, file: !3, line: 338, column: 8)
!367 = !DILocalVariable(name: "clen", scope: !368, file: !3, line: 347, type: !10)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 346, column: 22)
!369 = distinct !DILexicalBlock(scope: !365, file: !3, line: 346, column: 9)
!370 = !{i32 2, !"Dwarf Version", i32 4}
!371 = !{i32 2, !"Debug Info Version", i32 3}
!372 = !{i32 1, !"wchar_size", i32 4}
!373 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!374 = !DILocation(line: 173, column: 30, scope: !2)
!375 = !DILocation(line: 173, column: 55, scope: !2)
!376 = !DILocation(line: 182, column: 4, scope: !2)
!377 = !DILocation(line: 256, column: 46, scope: !363)
!378 = !{!379, !382, i64 320}
!379 = !{!"lc_time_T", !380, i64 0, !380, i64 96, !380, i64 192, !380, i64 248, !382, i64 304, !382, i64 312, !382, i64 320, !380, i64 328, !382, i64 344, !380, i64 352, !382, i64 448, !382, i64 456, !382, i64 464, !382, i64 472, !382, i64 480, !382, i64 488, !382, i64 496}
!380 = !{!"omnipotent char", !381, i64 0}
!381 = !{!"Simple C/C++ TBAA"}
!382 = !{!"any pointer", !380, i64 0}
!383 = !DILocation(line: 175, column: 10, scope: !2)
!384 = !DILocation(line: 257, column: 3, scope: !363)
!385 = !DILocation(line: 259, column: 46, scope: !363)
!386 = !{!379, !382, i64 312}
!387 = !DILocation(line: 260, column: 3, scope: !363)
!388 = !DILocation(line: 262, column: 46, scope: !363)
!389 = !{!379, !382, i64 304}
!390 = !DILocation(line: 263, column: 3, scope: !363)
!391 = !DILocation(line: 265, column: 46, scope: !363)
!392 = !{!379, !382, i64 456}
!393 = !DILocation(line: 266, column: 3, scope: !363)
!394 = !DILocation(line: 268, column: 18, scope: !363)
!395 = !{!382, !382, i64 0}
!396 = !DILocation(line: 269, column: 3, scope: !363)
!397 = !DILocation(line: 271, column: 18, scope: !363)
!398 = !DILocation(line: 272, column: 3, scope: !363)
!399 = !DILocation(line: 275, column: 53, scope: !363)
!400 = !DILocation(line: 275, column: 17, scope: !363)
!401 = !DILocation(line: 276, column: 3, scope: !363)
!402 = !DILocation(line: 279, column: 50, scope: !363)
!403 = !DILocation(line: 279, column: 17, scope: !363)
!404 = !DILocation(line: 280, column: 3, scope: !363)
!405 = !DILocation(line: 284, column: 51, scope: !363)
!406 = !DILocation(line: 284, column: 17, scope: !363)
!407 = !DILocation(line: 285, column: 3, scope: !363)
!408 = !DILocation(line: 289, column: 49, scope: !363)
!409 = !DILocation(line: 289, column: 17, scope: !363)
!410 = !DILocation(line: 290, column: 3, scope: !363)
!411 = !DILocation(line: 292, column: 45, scope: !363)
!412 = !{!379, !382, i64 464}
!413 = !DILocation(line: 293, column: 3, scope: !363)
!414 = !DILocation(line: 295, column: 45, scope: !363)
!415 = !{!379, !382, i64 472}
!416 = !DILocation(line: 296, column: 3, scope: !363)
!417 = !DILocation(line: 298, column: 45, scope: !363)
!418 = !{!379, !382, i64 480}
!419 = !DILocation(line: 299, column: 3, scope: !363)
!420 = !DILocation(line: 301, column: 45, scope: !363)
!421 = !{!379, !382, i64 488}
!422 = !DILocation(line: 302, column: 3, scope: !363)
!423 = !DILocation(line: 304, column: 45, scope: !363)
!424 = !{!379, !382, i64 496}
!425 = !DILocation(line: 305, column: 3, scope: !363)
!426 = !DILocation(line: 307, column: 45, scope: !363)
!427 = !{!379, !382, i64 344}
!428 = !DILocation(line: 308, column: 3, scope: !363)
!429 = !DILocation(line: 310, column: 48, scope: !363)
!430 = !{!431, !382, i64 0}
!431 = !{!"lc_numeric_T", !382, i64 0, !382, i64 8, !382, i64 16}
!432 = !DILocation(line: 311, column: 3, scope: !363)
!433 = !DILocation(line: 313, column: 48, scope: !363)
!434 = !{!431, !382, i64 8}
!435 = !DILocation(line: 314, column: 3, scope: !363)
!436 = !DILocation(line: 316, column: 49, scope: !363)
!437 = !{!438, !382, i64 0}
!438 = !{!"lc_messages_T", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24}
!439 = !DILocation(line: 317, column: 3, scope: !363)
!440 = !DILocation(line: 319, column: 49, scope: !363)
!441 = !{!438, !382, i64 8}
!442 = !DILocation(line: 320, column: 3, scope: !363)
!443 = !DILocation(line: 327, column: 49, scope: !363)
!444 = !{!438, !382, i64 16}
!445 = !DILocation(line: 328, column: 3, scope: !363)
!446 = !DILocation(line: 330, column: 49, scope: !363)
!447 = !{!438, !382, i64 24}
!448 = !DILocation(line: 331, column: 3, scope: !363)
!449 = !DILocation(line: 334, column: 48, scope: !363)
!450 = !{!451, !382, i64 8}
!451 = !{!"lc_monetary_T", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !382, i64 32, !382, i64 40, !382, i64 48, !382, i64 56, !382, i64 64, !382, i64 72, !382, i64 80, !382, i64 88, !382, i64 96, !382, i64 104, !382, i64 112}
!452 = !DILocation(line: 175, column: 16, scope: !2)
!453 = !DILocation(line: 335, column: 7, scope: !362)
!454 = !{!380, !380, i64 0}
!455 = !DILocation(line: 335, column: 11, scope: !362)
!456 = !DILocation(line: 335, column: 7, scope: !363)
!457 = !DILocation(line: 336, column: 15, scope: !361)
!458 = !DILocation(line: 336, column: 40, scope: !361)
!459 = !{!460, !380, i64 82}
!460 = !{!"lconv", !382, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !382, i64 32, !382, i64 40, !382, i64 48, !382, i64 56, !382, i64 64, !382, i64 72, !380, i64 80, !380, i64 81, !380, i64 82, !380, i64 83, !380, i64 84, !380, i64 85, !380, i64 86, !380, i64 87, !380, i64 88, !380, i64 89, !380, i64 90, !380, i64 91, !380, i64 92, !380, i64 93}
!461 = !DILocation(line: 336, column: 9, scope: !361)
!462 = !DILocation(line: 338, column: 15, scope: !366)
!463 = !DILocation(line: 338, column: 40, scope: !366)
!464 = !{!460, !380, i64 84}
!465 = !DILocation(line: 338, column: 12, scope: !366)
!466 = !DILocation(line: 338, column: 8, scope: !361)
!467 = !DILocation(line: 339, column: 10, scope: !365)
!468 = !DILocation(line: 341, column: 13, scope: !469)
!469 = distinct !DILexicalBlock(scope: !365, file: !3, line: 341, column: 9)
!470 = !DILocation(line: 341, column: 9, scope: !365)
!471 = !DILocation(line: 342, column: 53, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 342, column: 10)
!473 = distinct !DILexicalBlock(scope: !469, file: !3, line: 341, column: 26)
!474 = !{!451, !382, i64 16}
!475 = !DILocation(line: 342, column: 10, scope: !472)
!476 = !DILocation(line: 342, column: 72, scope: !472)
!477 = !DILocation(line: 345, column: 12, scope: !469)
!478 = !DILocation(line: 347, column: 17, scope: !368)
!479 = !DILocation(line: 349, column: 56, scope: !368)
!480 = !DILocation(line: 349, column: 62, scope: !368)
!481 = !DILocation(line: 349, column: 48, scope: !368)
!482 = !DILocation(line: 180, column: 10, scope: !2)
!483 = !DILocation(line: 350, column: 46, scope: !484)
!484 = distinct !DILexicalBlock(scope: !368, file: !3, line: 350, column: 45)
!485 = !DILocation(line: 350, column: 54, scope: !484)
!486 = !DILocation(line: 350, column: 51, scope: !484)
!487 = !DILocation(line: 351, column: 43, scope: !484)
!488 = !DILocation(line: 353, column: 46, scope: !368)
!489 = !DILocation(line: 355, column: 10, scope: !368)
!490 = !DILocation(line: 356, column: 13, scope: !491)
!491 = distinct !DILexicalBlock(scope: !492, file: !3, line: 355, column: 24)
!492 = distinct !DILexicalBlock(scope: !368, file: !3, line: 355, column: 10)
!493 = !DILocation(line: 357, column: 19, scope: !491)
!494 = !DILocation(line: 357, column: 7, scope: !491)
!495 = !DILocation(line: 358, column: 13, scope: !491)
!496 = !DILocation(line: 359, column: 6, scope: !491)
!497 = !DILocation(line: 365, column: 46, scope: !363)
!498 = !{!379, !382, i64 448}
!499 = !DILocation(line: 366, column: 3, scope: !363)
!500 = !DILocation(line: 376, column: 7, scope: !501)
!501 = distinct !DILexicalBlock(scope: !363, file: !3, line: 375, column: 7)
!502 = !DILocation(line: 378, column: 9, scope: !503)
!503 = distinct !DILexicalBlock(scope: !501, file: !3, line: 376, column: 43)
!504 = !DILocation(line: 377, column: 11, scope: !503)
!505 = !DILocation(line: 377, column: 4, scope: !503)
!506 = !DILocation(line: 0, scope: !2)
!507 = !DILocation(line: 391, column: 1, scope: !2)
!508 = distinct !DISubprogram(name: "nl_langinfo", scope: !3, file: !3, line: 393, type: !509, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !511)
!509 = !DISubroutineType(types: !510)
!510 = !{!6, !8}
!511 = !{!512}
!512 = !DILocalVariable(name: "item", arg: 1, scope: !508, file: !3, line: 393, type: !8)
!513 = !DILocation(line: 393, column: 28, scope: !508)
!514 = !DILocation(line: 230, column: 10, scope: !515, inlinedAt: !519)
!515 = distinct !DISubprogram(name: "__get_current_locale", scope: !13, file: !13, line: 228, type: !516, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !518)
!516 = !DISubroutineType(types: !517)
!517 = !{!11}
!518 = !{}
!519 = distinct !DILocation(line: 395, column: 31, scope: !508)
!520 = !DILocation(line: 230, column: 18, scope: !515, inlinedAt: !519)
!521 = !{!522, !382, i64 72}
!522 = !{!"_reent", !523, i64 0, !382, i64 8, !382, i64 16, !382, i64 24, !523, i64 32, !380, i64 36, !523, i64 64, !382, i64 72, !523, i64 80, !382, i64 88, !382, i64 96, !523, i64 104, !382, i64 112, !382, i64 120, !523, i64 128, !382, i64 136, !380, i64 144, !382, i64 504, !524, i64 512, !382, i64 1304, !526, i64 1312, !380, i64 1336}
!523 = !{!"int", !380, i64 0}
!524 = !{!"_atexit", !382, i64 0, !523, i64 8, !380, i64 16, !525, i64 272}
!525 = !{!"_on_exit_args", !380, i64 0, !380, i64 256, !523, i64 512, !523, i64 516}
!526 = !{!"_glue", !382, i64 0, !523, i64 8, !382, i64 16}
!527 = !DILocation(line: 395, column: 10, scope: !508)
!528 = !DILocation(line: 395, column: 3, scope: !508)
