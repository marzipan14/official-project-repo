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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @nl_langinfo_l(i32, %struct.__locale_t*) local_unnamed_addr #0 !dbg !2 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  switch i32 %0, label %104 [
    i32 0, label %111
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
    i32 57, label %102
  ], !dbg !376

; <label>:3:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !411
  %4 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 6), align 8, !dbg !412, !tbaa !413
  br label %111, !dbg !419

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %6 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 5), align 8, !dbg !423, !tbaa !424
  br label %111, !dbg !425

; <label>:7:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  %8 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 4), align 8, !dbg !429, !tbaa !430
  br label %111, !dbg !431

; <label>:9:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !434
  %10 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 11), align 8, !dbg !435, !tbaa !436
  br label %111, !dbg !437

; <label>:11:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %12 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 7, i64 0), align 8, !dbg !441, !tbaa !442
  br label %111, !dbg !443

; <label>:13:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %14 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 7, i64 1), align 8, !dbg !447, !tbaa !442
  br label %111, !dbg !448

; <label>:15:                                     ; preds = %2, %2, %2, %2, %2, %2, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  %16 = add nsw i32 %0, -7, !dbg !452
  %17 = sext i32 %16 to i64, !dbg !453
  %18 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 3, i64 %17, !dbg !453
  %19 = load i8*, i8** %18, align 8, !dbg !453, !tbaa !442
  br label %111, !dbg !454

; <label>:20:                                     ; preds = %2, %2, %2, %2, %2, %2, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  %21 = add nsw i32 %0, -14, !dbg !458
  %22 = sext i32 %21 to i64, !dbg !459
  %23 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 2, i64 %22, !dbg !459
  %24 = load i8*, i8** %23, align 8, !dbg !459, !tbaa !442
  br label %111, !dbg !460

; <label>:25:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  %26 = add nsw i32 %0, -21, !dbg !464
  %27 = sext i32 %26 to i64, !dbg !465
  %28 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 1, i64 %27, !dbg !465
  %29 = load i8*, i8** %28, align 8, !dbg !465, !tbaa !442
  br label %111, !dbg !466

; <label>:30:                                     ; preds = %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  %31 = add nsw i32 %0, -33, !dbg !470
  %32 = sext i32 %31 to i64, !dbg !471
  %33 = getelementptr inbounds %struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 0, i64 %32, !dbg !471
  %34 = load i8*, i8** %33, align 8, !dbg !471, !tbaa !442
  br label %111, !dbg !472

; <label>:35:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  %36 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 12), align 8, !dbg !476, !tbaa !477
  br label %111, !dbg !478

; <label>:37:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  %38 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 13), align 8, !dbg !482, !tbaa !483
  br label %111, !dbg !484

; <label>:39:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %40 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 14), align 8, !dbg !488, !tbaa !489
  br label %111, !dbg !490

; <label>:41:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  %42 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 15), align 8, !dbg !494, !tbaa !495
  br label %111, !dbg !496

; <label>:43:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  %44 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 16), align 8, !dbg !500, !tbaa !501
  br label %111, !dbg !502

; <label>:45:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  %46 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 8), align 8, !dbg !506, !tbaa !507
  br label %111, !dbg !508

; <label>:47:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  %48 = load i8*, i8** getelementptr inbounds (%struct.lc_numeric_T, %struct.lc_numeric_T* @_C_numeric_locale, i64 0, i32 0), align 8, !dbg !524, !tbaa !525
  br label %111, !dbg !527

; <label>:49:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %50 = load i8*, i8** getelementptr inbounds (%struct.lc_numeric_T, %struct.lc_numeric_T* @_C_numeric_locale, i64 0, i32 1), align 8, !dbg !531, !tbaa !532
  br label %111, !dbg !533

; <label>:51:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  %52 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 0), align 8, !dbg !550, !tbaa !551
  br label %111, !dbg !553

; <label>:53:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  %54 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 1), align 8, !dbg !557, !tbaa !558
  br label %111, !dbg !559

; <label>:55:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  %56 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 2), align 8, !dbg !563, !tbaa !564
  br label %111, !dbg !565

; <label>:57:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !568
  %58 = load i8*, i8** getelementptr inbounds (%struct.lc_messages_T, %struct.lc_messages_T* @_C_messages_locale, i64 0, i32 3), align 8, !dbg !569, !tbaa !570
  br label %111, !dbg !571

; <label>:59:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !598
  %60 = load i8*, i8** getelementptr inbounds (%struct.lc_monetary_T, %struct.lc_monetary_T* @_C_monetary_locale, i64 0, i32 1), align 8, !dbg !599, !tbaa !600
  %61 = load i8, i8* %60, align 1, !dbg !603, !tbaa !604
  %62 = icmp eq i8 %61, 0, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  br i1 %62, label %113, label %63, !dbg !606

; <label>:63:                                     ; preds = %59
  %64 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %1) #3, !dbg !607
  %65 = getelementptr inbounds %struct.lconv, %struct.lconv* %64, i64 0, i32 12, !dbg !608
  %66 = load i8, i8* %65, align 2, !dbg !608, !tbaa !609
  %67 = tail call %struct.lconv* @__localeconv_l(%struct.__locale_t* %1) #3, !dbg !612
  %68 = getelementptr inbounds %struct.lconv, %struct.lconv* %67, i64 0, i32 14, !dbg !613
  %69 = load i8, i8* %68, align 4, !dbg !613, !tbaa !614
  %70 = icmp eq i8 %66, %69, !dbg !615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !616
  br i1 %70, label %71, label %111, !dbg !616

; <label>:71:                                     ; preds = %63
  %72 = icmp eq i8 %66, 127, !dbg !618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  br i1 %72, label %73, label %77, !dbg !620

; <label>:73:                                     ; preds = %71
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  %74 = load i8*, i8** getelementptr inbounds (%struct.lc_monetary_T, %struct.lc_monetary_T* @_C_monetary_locale, i64 0, i32 2), align 8, !dbg !626, !tbaa !627
  %75 = tail call i32 @strcmp(i8* %60, i8* %74) #3, !dbg !628
  %76 = icmp eq i32 %75, 0, !dbg !629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br i1 %76, label %80, label %100, !dbg !630

; <label>:77:                                     ; preds = %71
  %78 = icmp eq i8 %66, 0, !dbg !632
  %79 = select i1 %78, i8 43, i8 45, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %80

; <label>:80:                                     ; preds = %73, %77
  %81 = phi i8 [ %79, %77 ], [ 46, %73 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  %82 = tail call i64 @strlen(i8* %60) #3, !dbg !634
  %83 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !635, !tbaa !442
  %84 = shl i64 %82, 32, !dbg !636
  %85 = add i64 %84, 8589934592, !dbg !636
  %86 = ashr exact i64 %85, 32, !dbg !636
  %87 = tail call i8* @realloc(i8* %83, i64 %86) #3, !dbg !637
  %88 = icmp eq i8* %87, null, !dbg !639
  %89 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !641
  %90 = icmp ne i8* %89, null, !dbg !641
  %91 = and i1 %88, %90, !dbg !642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %91, label %92, label %93, !dbg !642

; <label>:92:                                     ; preds = %80
  tail call void @free(i8* nonnull %89) #3, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  br label %93, !dbg !643

; <label>:93:                                     ; preds = %80, %92
  store i8* %87, i8** @nl_langinfo_l.csym, align 8, !dbg !644, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %88, label %98, label %94, !dbg !645

; <label>:94:                                     ; preds = %93
  store i8 %81, i8* %87, align 1, !dbg !646, !tbaa !604
  %95 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !649
  %96 = tail call i8* @strcpy(i8* nonnull %95, i8* %60) #3, !dbg !650
  %97 = load i8*, i8** @nl_langinfo_l.csym, align 8, !dbg !651, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  br label %98, !dbg !652

; <label>:98:                                     ; preds = %93, %94
  %99 = phi i8* [ %97, %94 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %93 ], !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %100, !dbg !654

; <label>:100:                                    ; preds = %73, %98
  %101 = phi i8* [ %99, %98 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %73 ], !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  br label %111, !dbg !655

; <label>:102:                                    ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  %103 = load i8*, i8** getelementptr inbounds (%struct.lc_time_T, %struct.lc_time_T* @_C_time_locale, i64 0, i32 10), align 8, !dbg !659, !tbaa !660
  br label %111, !dbg !661

; <label>:104:                                    ; preds = %2
  %105 = add i32 %0, -100001, !dbg !662
  %106 = icmp ult i32 %105, 6, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %106, label %107, label %111, !dbg !662

; <label>:107:                                    ; preds = %104
  %108 = add nsw i32 %0, -100000, !dbg !664
  %109 = sext i32 %108 to i64, !dbg !666
  %110 = getelementptr inbounds %struct.__locale_t, %struct.__locale_t* %1, i64 0, i32 0, i64 %109, i64 0, !dbg !666
  br label %113, !dbg !667

; <label>:111:                                    ; preds = %104, %63, %100, %2, %3, %5, %7, %9, %11, %13, %15, %20, %25, %30, %35, %37, %39, %41, %43, %45, %47, %49, %51, %53, %55, %57, %102
  %112 = phi i8* [ %4, %3 ], [ %6, %5 ], [ %8, %7 ], [ %10, %9 ], [ %12, %11 ], [ %14, %13 ], [ %19, %15 ], [ %24, %20 ], [ %29, %25 ], [ %34, %30 ], [ %36, %35 ], [ %38, %37 ], [ %40, %39 ], [ %42, %41 ], [ %44, %43 ], [ %46, %45 ], [ %48, %47 ], [ %50, %49 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ %58, %57 ], [ %103, %102 ], [ getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %2 ], [ %101, %100 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %63 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %104 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %113, !dbg !668

; <label>:113:                                    ; preds = %59, %111, %107
  %114 = phi i8* [ %110, %107 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %59 ], [ %112, %111 ], !dbg !669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !671
  ret i8* %114, !dbg !671
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
define dso_local i8* @nl_langinfo(i32) local_unnamed_addr #0 !dbg !672 {
  %2 = tail call %struct._reent* @__getreent() #3, !dbg !678
  %3 = getelementptr inbounds %struct._reent, %struct._reent* %2, i64 0, i32 7, !dbg !684
  %4 = load %struct.__locale_t*, %struct.__locale_t** %3, align 8, !dbg !684, !tbaa !685
  %5 = icmp eq %struct.__locale_t* %4, null, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br i1 %5, label %6, label %7, !dbg !678

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %7, !dbg !678

; <label>:7:                                      ; preds = %1, %6
  %8 = phi %struct.__locale_t* [ @__global_locale, %6 ], [ %4, %1 ], !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  %9 = tail call i8* @nl_langinfo_l(i32 %0, %struct.__locale_t* nonnull %8) #4, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  ret i8* %9, !dbg !696
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
!377 = !DILocalVariable(name: "locale", arg: 1, scope: !378, file: !13, line: 364, type: !11)
!378 = distinct !DISubprogram(name: "__get_time_locale", scope: !13, file: !13, line: 364, type: !379, isLocal: true, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !408)
!379 = !DISubroutineType(types: !380)
!380 = !{!381, !11}
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lc_time_T", file: !13, line: 116, size: 4032, elements: !384)
!384 = !{!385, !389, !390, !393, !394, !395, !396, !397, !399, !400, !401, !402, !403, !404, !405, !406, !407}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mon", scope: !383, file: !13, line: 118, baseType: !386, size: 768)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 768, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 12)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "month", scope: !383, file: !13, line: 119, baseType: !386, size: 768, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "wday", scope: !383, file: !13, line: 120, baseType: !391, size: 448, offset: 1536)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 448, elements: !392)
!392 = !{!18}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "weekday", scope: !383, file: !13, line: 121, baseType: !391, size: 448, offset: 1984)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "X_fmt", scope: !383, file: !13, line: 122, baseType: !61, size: 64, offset: 2432)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "x_fmt", scope: !383, file: !13, line: 123, baseType: !61, size: 64, offset: 2496)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "c_fmt", scope: !383, file: !13, line: 124, baseType: !61, size: 64, offset: 2560)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "am_pm", scope: !383, file: !13, line: 125, baseType: !398, size: 128, offset: 2624)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !61, size: 128, elements: !283)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "date_fmt", scope: !383, file: !13, line: 126, baseType: !61, size: 64, offset: 2752)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "alt_month", scope: !383, file: !13, line: 127, baseType: !386, size: 768, offset: 2816)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "md_order", scope: !383, file: !13, line: 128, baseType: !61, size: 64, offset: 3584)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ampm_fmt", scope: !383, file: !13, line: 129, baseType: !61, size: 64, offset: 3648)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "era", scope: !383, file: !13, line: 130, baseType: !61, size: 64, offset: 3712)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "era_d_fmt", scope: !383, file: !13, line: 131, baseType: !61, size: 64, offset: 3776)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "era_d_t_fmt", scope: !383, file: !13, line: 132, baseType: !61, size: 64, offset: 3840)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "era_t_fmt", scope: !383, file: !13, line: 133, baseType: !61, size: 64, offset: 3904)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "alt_digits", scope: !383, file: !13, line: 134, baseType: !61, size: 64, offset: 3968)
!408 = !{!377}
!409 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !410)
!410 = distinct !DILocation(line: 256, column: 18, scope: !363)
!411 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !410)
!412 = !DILocation(line: 256, column: 46, scope: !363)
!413 = !{!414, !417, i64 320}
!414 = !{!"lc_time_T", !415, i64 0, !415, i64 96, !415, i64 192, !415, i64 248, !417, i64 304, !417, i64 312, !417, i64 320, !415, i64 328, !417, i64 344, !415, i64 352, !417, i64 448, !417, i64 456, !417, i64 464, !417, i64 472, !417, i64 480, !417, i64 488, !417, i64 496}
!415 = !{!"omnipotent char", !416, i64 0}
!416 = !{!"Simple C/C++ TBAA"}
!417 = !{!"any pointer", !415, i64 0}
!418 = !DILocation(line: 175, column: 10, scope: !2)
!419 = !DILocation(line: 257, column: 3, scope: !363)
!420 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !421)
!421 = distinct !DILocation(line: 259, column: 18, scope: !363)
!422 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !421)
!423 = !DILocation(line: 259, column: 46, scope: !363)
!424 = !{!414, !417, i64 312}
!425 = !DILocation(line: 260, column: 3, scope: !363)
!426 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !427)
!427 = distinct !DILocation(line: 262, column: 18, scope: !363)
!428 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !427)
!429 = !DILocation(line: 262, column: 46, scope: !363)
!430 = !{!414, !417, i64 304}
!431 = !DILocation(line: 263, column: 3, scope: !363)
!432 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !433)
!433 = distinct !DILocation(line: 265, column: 18, scope: !363)
!434 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !433)
!435 = !DILocation(line: 265, column: 46, scope: !363)
!436 = !{!414, !417, i64 456}
!437 = !DILocation(line: 266, column: 3, scope: !363)
!438 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !439)
!439 = distinct !DILocation(line: 268, column: 18, scope: !363)
!440 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !439)
!441 = !DILocation(line: 268, column: 18, scope: !363)
!442 = !{!417, !417, i64 0}
!443 = !DILocation(line: 269, column: 3, scope: !363)
!444 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !445)
!445 = distinct !DILocation(line: 271, column: 18, scope: !363)
!446 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !445)
!447 = !DILocation(line: 271, column: 18, scope: !363)
!448 = !DILocation(line: 272, column: 3, scope: !363)
!449 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !450)
!450 = distinct !DILocation(line: 275, column: 17, scope: !363)
!451 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !450)
!452 = !DILocation(line: 275, column: 53, scope: !363)
!453 = !DILocation(line: 275, column: 17, scope: !363)
!454 = !DILocation(line: 276, column: 3, scope: !363)
!455 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !456)
!456 = distinct !DILocation(line: 279, column: 17, scope: !363)
!457 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !456)
!458 = !DILocation(line: 279, column: 50, scope: !363)
!459 = !DILocation(line: 279, column: 17, scope: !363)
!460 = !DILocation(line: 280, column: 3, scope: !363)
!461 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !462)
!462 = distinct !DILocation(line: 284, column: 17, scope: !363)
!463 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !462)
!464 = !DILocation(line: 284, column: 51, scope: !363)
!465 = !DILocation(line: 284, column: 17, scope: !363)
!466 = !DILocation(line: 285, column: 3, scope: !363)
!467 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !468)
!468 = distinct !DILocation(line: 289, column: 17, scope: !363)
!469 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !468)
!470 = !DILocation(line: 289, column: 49, scope: !363)
!471 = !DILocation(line: 289, column: 17, scope: !363)
!472 = !DILocation(line: 290, column: 3, scope: !363)
!473 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !474)
!474 = distinct !DILocation(line: 292, column: 17, scope: !363)
!475 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !474)
!476 = !DILocation(line: 292, column: 45, scope: !363)
!477 = !{!414, !417, i64 464}
!478 = !DILocation(line: 293, column: 3, scope: !363)
!479 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !480)
!480 = distinct !DILocation(line: 295, column: 17, scope: !363)
!481 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !480)
!482 = !DILocation(line: 295, column: 45, scope: !363)
!483 = !{!414, !417, i64 472}
!484 = !DILocation(line: 296, column: 3, scope: !363)
!485 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !486)
!486 = distinct !DILocation(line: 298, column: 17, scope: !363)
!487 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !486)
!488 = !DILocation(line: 298, column: 45, scope: !363)
!489 = !{!414, !417, i64 480}
!490 = !DILocation(line: 299, column: 3, scope: !363)
!491 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !492)
!492 = distinct !DILocation(line: 301, column: 17, scope: !363)
!493 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !492)
!494 = !DILocation(line: 301, column: 45, scope: !363)
!495 = !{!414, !417, i64 488}
!496 = !DILocation(line: 302, column: 3, scope: !363)
!497 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !498)
!498 = distinct !DILocation(line: 304, column: 17, scope: !363)
!499 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !498)
!500 = !DILocation(line: 304, column: 45, scope: !363)
!501 = !{!414, !417, i64 496}
!502 = !DILocation(line: 305, column: 3, scope: !363)
!503 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !504)
!504 = distinct !DILocation(line: 307, column: 17, scope: !363)
!505 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !504)
!506 = !DILocation(line: 307, column: 45, scope: !363)
!507 = !{!414, !417, i64 344}
!508 = !DILocation(line: 308, column: 3, scope: !363)
!509 = !DILocalVariable(name: "locale", arg: 1, scope: !510, file: !13, line: 352, type: !11)
!510 = distinct !DISubprogram(name: "__get_numeric_locale", scope: !13, file: !13, line: 352, type: !511, isLocal: true, isDefinition: true, scopeLine: 353, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !520)
!511 = !DISubroutineType(types: !512)
!512 = !{!513, !11}
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lc_numeric_T", file: !13, line: 103, size: 192, elements: !516)
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !515, file: !13, line: 105, baseType: !61, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !515, file: !13, line: 106, baseType: !61, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !515, file: !13, line: 107, baseType: !61, size: 64, offset: 128)
!520 = !{!509}
!521 = !DILocation(line: 352, column: 42, scope: !510, inlinedAt: !522)
!522 = distinct !DILocation(line: 310, column: 17, scope: !363)
!523 = !DILocation(line: 354, column: 3, scope: !510, inlinedAt: !522)
!524 = !DILocation(line: 310, column: 48, scope: !363)
!525 = !{!526, !417, i64 0}
!526 = !{!"lc_numeric_T", !417, i64 0, !417, i64 8, !417, i64 16}
!527 = !DILocation(line: 311, column: 3, scope: !363)
!528 = !DILocation(line: 352, column: 42, scope: !510, inlinedAt: !529)
!529 = distinct !DILocation(line: 313, column: 17, scope: !363)
!530 = !DILocation(line: 354, column: 3, scope: !510, inlinedAt: !529)
!531 = !DILocation(line: 313, column: 48, scope: !363)
!532 = !{!526, !417, i64 8}
!533 = !DILocation(line: 314, column: 3, scope: !363)
!534 = !DILocalVariable(name: "locale", arg: 1, scope: !535, file: !13, line: 376, type: !11)
!535 = distinct !DISubprogram(name: "__get_messages_locale", scope: !13, file: !13, line: 376, type: !536, isLocal: true, isDefinition: true, scopeLine: 377, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !546)
!536 = !DISubroutineType(types: !537)
!537 = !{!538, !11}
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lc_messages_T", file: !13, line: 156, size: 256, elements: !541)
!541 = !{!542, !543, !544, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "yesexpr", scope: !540, file: !13, line: 158, baseType: !61, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "noexpr", scope: !540, file: !13, line: 159, baseType: !61, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "yesstr", scope: !540, file: !13, line: 160, baseType: !61, size: 64, offset: 128)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "nostr", scope: !540, file: !13, line: 161, baseType: !61, size: 64, offset: 192)
!546 = !{!534}
!547 = !DILocation(line: 376, column: 43, scope: !535, inlinedAt: !548)
!548 = distinct !DILocation(line: 316, column: 17, scope: !363)
!549 = !DILocation(line: 378, column: 3, scope: !535, inlinedAt: !548)
!550 = !DILocation(line: 316, column: 49, scope: !363)
!551 = !{!552, !417, i64 0}
!552 = !{!"lc_messages_T", !417, i64 0, !417, i64 8, !417, i64 16, !417, i64 24}
!553 = !DILocation(line: 317, column: 3, scope: !363)
!554 = !DILocation(line: 376, column: 43, scope: !535, inlinedAt: !555)
!555 = distinct !DILocation(line: 319, column: 17, scope: !363)
!556 = !DILocation(line: 378, column: 3, scope: !535, inlinedAt: !555)
!557 = !DILocation(line: 319, column: 49, scope: !363)
!558 = !{!552, !417, i64 8}
!559 = !DILocation(line: 320, column: 3, scope: !363)
!560 = !DILocation(line: 376, column: 43, scope: !535, inlinedAt: !561)
!561 = distinct !DILocation(line: 327, column: 17, scope: !363)
!562 = !DILocation(line: 378, column: 3, scope: !535, inlinedAt: !561)
!563 = !DILocation(line: 327, column: 49, scope: !363)
!564 = !{!552, !417, i64 16}
!565 = !DILocation(line: 328, column: 3, scope: !363)
!566 = !DILocation(line: 376, column: 43, scope: !535, inlinedAt: !567)
!567 = distinct !DILocation(line: 330, column: 17, scope: !363)
!568 = !DILocation(line: 378, column: 3, scope: !535, inlinedAt: !567)
!569 = !DILocation(line: 330, column: 49, scope: !363)
!570 = !{!552, !417, i64 24}
!571 = !DILocation(line: 331, column: 3, scope: !363)
!572 = !DILocalVariable(name: "locale", arg: 1, scope: !573, file: !13, line: 340, type: !11)
!573 = distinct !DISubprogram(name: "__get_monetary_locale", scope: !13, file: !13, line: 340, type: !574, isLocal: true, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !595)
!574 = !DISubroutineType(types: !575)
!575 = !{!576, !11}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lc_monetary_T", file: !13, line: 68, size: 960, elements: !579)
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !592, !593, !594}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !578, file: !13, line: 70, baseType: !61, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !578, file: !13, line: 71, baseType: !61, size: 64, offset: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !578, file: !13, line: 72, baseType: !61, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !578, file: !13, line: 73, baseType: !61, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !578, file: !13, line: 74, baseType: !61, size: 64, offset: 256)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !578, file: !13, line: 75, baseType: !61, size: 64, offset: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !578, file: !13, line: 76, baseType: !61, size: 64, offset: 384)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !578, file: !13, line: 77, baseType: !61, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !578, file: !13, line: 78, baseType: !61, size: 64, offset: 512)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !578, file: !13, line: 79, baseType: !61, size: 64, offset: 576)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !578, file: !13, line: 80, baseType: !61, size: 64, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !578, file: !13, line: 81, baseType: !61, size: 64, offset: 704)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !578, file: !13, line: 82, baseType: !61, size: 64, offset: 768)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !578, file: !13, line: 83, baseType: !61, size: 64, offset: 832)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !578, file: !13, line: 84, baseType: !61, size: 64, offset: 896)
!595 = !{!572}
!596 = !DILocation(line: 340, column: 43, scope: !573, inlinedAt: !597)
!597 = distinct !DILocation(line: 334, column: 16, scope: !363)
!598 = !DILocation(line: 342, column: 3, scope: !573, inlinedAt: !597)
!599 = !DILocation(line: 334, column: 48, scope: !363)
!600 = !{!601, !417, i64 8}
!601 = !{!"lc_monetary_T", !417, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !417, i64 88, !417, i64 96, !417, i64 104, !417, i64 112}
!602 = !DILocation(line: 175, column: 16, scope: !2)
!603 = !DILocation(line: 335, column: 7, scope: !362)
!604 = !{!415, !415, i64 0}
!605 = !DILocation(line: 335, column: 11, scope: !362)
!606 = !DILocation(line: 335, column: 7, scope: !363)
!607 = !DILocation(line: 336, column: 15, scope: !361)
!608 = !DILocation(line: 336, column: 40, scope: !361)
!609 = !{!610, !415, i64 82}
!610 = !{!"lconv", !417, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !417, i64 32, !417, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !415, i64 80, !415, i64 81, !415, i64 82, !415, i64 83, !415, i64 84, !415, i64 85, !415, i64 86, !415, i64 87, !415, i64 88, !415, i64 89, !415, i64 90, !415, i64 91, !415, i64 92, !415, i64 93}
!611 = !DILocation(line: 336, column: 9, scope: !361)
!612 = !DILocation(line: 338, column: 15, scope: !366)
!613 = !DILocation(line: 338, column: 40, scope: !366)
!614 = !{!610, !415, i64 84}
!615 = !DILocation(line: 338, column: 12, scope: !366)
!616 = !DILocation(line: 338, column: 8, scope: !361)
!617 = !DILocation(line: 339, column: 10, scope: !365)
!618 = !DILocation(line: 341, column: 13, scope: !619)
!619 = distinct !DILexicalBlock(scope: !365, file: !3, line: 341, column: 9)
!620 = !DILocation(line: 341, column: 9, scope: !365)
!621 = !DILocation(line: 340, column: 43, scope: !573, inlinedAt: !622)
!622 = distinct !DILocation(line: 342, column: 21, scope: !623)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 342, column: 10)
!624 = distinct !DILexicalBlock(scope: !619, file: !3, line: 341, column: 26)
!625 = !DILocation(line: 342, column: 3, scope: !573, inlinedAt: !622)
!626 = !DILocation(line: 342, column: 53, scope: !623)
!627 = !{!601, !417, i64 16}
!628 = !DILocation(line: 342, column: 10, scope: !623)
!629 = !DILocation(line: 342, column: 72, scope: !623)
!630 = !DILocation(line: 342, column: 10, scope: !624)
!631 = !DILocation(line: 0, scope: !365)
!632 = !DILocation(line: 345, column: 12, scope: !619)
!633 = !DILocation(line: 346, column: 9, scope: !365)
!634 = !DILocation(line: 347, column: 17, scope: !368)
!635 = !DILocation(line: 349, column: 56, scope: !368)
!636 = !DILocation(line: 349, column: 62, scope: !368)
!637 = !DILocation(line: 349, column: 48, scope: !368)
!638 = !DILocation(line: 180, column: 10, scope: !2)
!639 = !DILocation(line: 350, column: 46, scope: !640)
!640 = distinct !DILexicalBlock(scope: !368, file: !3, line: 350, column: 45)
!641 = !DILocation(line: 350, column: 54, scope: !640)
!642 = !DILocation(line: 350, column: 51, scope: !640)
!643 = !DILocation(line: 351, column: 43, scope: !640)
!644 = !DILocation(line: 353, column: 46, scope: !368)
!645 = !DILocation(line: 355, column: 10, scope: !368)
!646 = !DILocation(line: 356, column: 13, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !3, line: 355, column: 24)
!648 = distinct !DILexicalBlock(scope: !368, file: !3, line: 355, column: 10)
!649 = !DILocation(line: 357, column: 19, scope: !647)
!650 = !DILocation(line: 357, column: 7, scope: !647)
!651 = !DILocation(line: 358, column: 13, scope: !647)
!652 = !DILocation(line: 359, column: 6, scope: !647)
!653 = !DILocation(line: 0, scope: !363)
!654 = !DILocation(line: 360, column: 5, scope: !368)
!655 = !DILocation(line: 361, column: 4, scope: !365)
!656 = !DILocation(line: 364, column: 39, scope: !378, inlinedAt: !657)
!657 = distinct !DILocation(line: 365, column: 18, scope: !363)
!658 = !DILocation(line: 366, column: 3, scope: !378, inlinedAt: !657)
!659 = !DILocation(line: 365, column: 46, scope: !363)
!660 = !{!414, !417, i64 448}
!661 = !DILocation(line: 366, column: 3, scope: !363)
!662 = !DILocation(line: 376, column: 7, scope: !663)
!663 = distinct !DILexicalBlock(scope: !363, file: !3, line: 375, column: 7)
!664 = !DILocation(line: 378, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !663, file: !3, line: 376, column: 43)
!666 = !DILocation(line: 377, column: 11, scope: !665)
!667 = !DILocation(line: 377, column: 4, scope: !665)
!668 = !DILocation(line: 390, column: 4, scope: !2)
!669 = !DILocation(line: 0, scope: !2)
!670 = !DILocation(line: 0, scope: !665)
!671 = !DILocation(line: 391, column: 1, scope: !2)
!672 = distinct !DISubprogram(name: "nl_langinfo", scope: !3, file: !3, line: 393, type: !673, isLocal: false, isDefinition: true, scopeLine: 394, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !675)
!673 = !DISubroutineType(types: !674)
!674 = !{!6, !8}
!675 = !{!676}
!676 = !DILocalVariable(name: "item", arg: 1, scope: !672, file: !3, line: 393, type: !8)
!677 = !DILocation(line: 393, column: 28, scope: !672)
!678 = !DILocation(line: 230, column: 10, scope: !679, inlinedAt: !683)
!679 = distinct !DISubprogram(name: "__get_current_locale", scope: !13, file: !13, line: 228, type: !680, isLocal: true, isDefinition: true, scopeLine: 229, flags: DIFlagPrototyped, isOptimized: true, unit: !288, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!11}
!682 = !{}
!683 = distinct !DILocation(line: 395, column: 31, scope: !672)
!684 = !DILocation(line: 230, column: 18, scope: !679, inlinedAt: !683)
!685 = !{!686, !417, i64 72}
!686 = !{!"_reent", !687, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !687, i64 32, !415, i64 36, !687, i64 64, !417, i64 72, !687, i64 80, !417, i64 88, !417, i64 96, !687, i64 104, !417, i64 112, !417, i64 120, !687, i64 128, !417, i64 136, !415, i64 144, !417, i64 504, !688, i64 512, !417, i64 1304, !690, i64 1312, !415, i64 1336}
!687 = !{!"int", !415, i64 0}
!688 = !{!"_atexit", !417, i64 0, !687, i64 8, !415, i64 16, !689, i64 272}
!689 = !{!"_on_exit_args", !415, i64 0, !415, i64 256, !687, i64 512, !687, i64 516}
!690 = !{!"_glue", !417, i64 0, !687, i64 8, !417, i64 16}
!691 = !DILocation(line: 213, column: 3, scope: !692, inlinedAt: !693)
!692 = distinct !DISubprogram(name: "__get_global_locale", scope: !13, file: !13, line: 210, type: !680, isLocal: true, isDefinition: true, scopeLine: 211, isOptimized: true, unit: !288, retainedNodes: !682)
!693 = distinct !DILocation(line: 230, column: 29, scope: !679, inlinedAt: !683)
!694 = !DILocation(line: 230, column: 3, scope: !679, inlinedAt: !683)
!695 = !DILocation(line: 395, column: 10, scope: !672)
!696 = !DILocation(line: 395, column: 3, scope: !672)
