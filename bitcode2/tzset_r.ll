; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzset_r.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzset_r.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, {}*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
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
%struct.__tzinfo_struct = type { i32, i32, [2 x %struct.__tzrule_struct] }
%struct.__tzrule_struct = type { i8, i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [3 x i8] c"TZ\00", align 1
@_timezone = external dso_local local_unnamed_addr global i64, align 8
@_daylight = external dso_local local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"GMT\00", align 1
@_tzname = external dso_local local_unnamed_addr global [2 x i8*], align 16
@prev_tzenv = internal unnamed_addr global i8* null, align 8, !dbg !0
@.str.2 = private unnamed_addr constant [15 x i8] c"%10[^0-9,+-]%n\00", align 1
@__tzname_std = internal global [11 x i8] zeroinitializer, align 1, !dbg !8
@.str.3 = private unnamed_addr constant [18 x i8] c"%hu%n:%hu%n:%hu%n\00", align 1
@__tzname_dst = internal global [11 x i8] zeroinitializer, align 1, !dbg !14
@.str.4 = private unnamed_addr constant [19 x i8] c"M%hu%n.%hu%n.%hu%n\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"/%hu%n:%hu%n:%hu%n\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @_tzset_unlocked_r(%struct._reent*) local_unnamed_addr #0 !dbg !21 {
  %2 = alloca i16, align 2
  %3 = alloca i16, align 2
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = bitcast i16* %2 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %10) #4, !dbg !283
  %11 = bitcast i16* %3 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %11) #4, !dbg !283
  %12 = bitcast i16* %4 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %12) #4, !dbg !283
  %13 = bitcast i16* %5 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %13) #4, !dbg !283
  %14 = bitcast i16* %6 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %14) #4, !dbg !283
  %15 = bitcast i16* %7 to i8*, !dbg !283
  call void @llvm.lifetime.start.p0i8(i64 2, i8* nonnull %15) #4, !dbg !283
  %16 = bitcast i32* %8 to i8*, !dbg !284
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %16) #4, !dbg !284
  %17 = tail call %struct.__tzinfo_struct* @__gettzinfo() #5, !dbg !285
  %18 = tail call i8* @_getenv_r(%struct._reent* %0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0)) #5, !dbg !287
  %19 = icmp eq i8* %18, null, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  br i1 %19, label %20, label %22, !dbg !291

; <label>:20:                                     ; preds = %1
  store i64 0, i64* @_timezone, align 8, !dbg !292, !tbaa !294
  store i32 0, i32* @_daylight, align 4, !dbg !298, !tbaa !299
  store <2 x i8*> <i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)>, <2 x i8*>* bitcast ([2 x i8*]* @_tzname to <2 x i8*>*), align 16, !dbg !301, !tbaa !302
  %21 = load i8*, i8** @prev_tzenv, align 8, !dbg !304, !tbaa !302
  tail call void @free(i8* %21) #5, !dbg !305
  store i8* null, i8** @prev_tzenv, align 8, !dbg !306, !tbaa !302
  br label %222, !dbg !307

; <label>:22:                                     ; preds = %1
  %23 = load i8*, i8** @prev_tzenv, align 8, !dbg !308, !tbaa !302
  %24 = icmp eq i8* %23, null, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !311
  br i1 %24, label %30, label %25, !dbg !311

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull %18, i8* nonnull %23) #5, !dbg !312
  %27 = icmp eq i32 %26, 0, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %27, label %222, label %28, !dbg !314

; <label>:28:                                     ; preds = %25
  %29 = load i8*, i8** @prev_tzenv, align 8, !dbg !315, !tbaa !302
  br label %30, !dbg !314

; <label>:30:                                     ; preds = %28, %22
  %31 = phi i8* [ %29, %28 ], [ null, %22 ], !dbg !315
  tail call void @free(i8* %31) #5, !dbg !316
  %32 = tail call i64 @strlen(i8* nonnull %18) #5, !dbg !317
  %33 = add i64 %32, 1, !dbg !317
  %34 = tail call i8* @malloc(i64 %33) #5, !dbg !317
  store i8* %34, i8** @prev_tzenv, align 8, !dbg !318, !tbaa !302
  %35 = icmp eq i8* %34, null, !dbg !319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !321
  br i1 %35, label %38, label %36, !dbg !321

; <label>:36:                                     ; preds = %30
  %37 = tail call i8* @strcpy(i8* nonnull %34, i8* nonnull %18) #5, !dbg !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br label %38, !dbg !322

; <label>:38:                                     ; preds = %30, %36
  %39 = load i8, i8* %18, align 1, !dbg !323, !tbaa !325
  %40 = icmp eq i8 %39, 58, !dbg !326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %40, label %41, label %43, !dbg !327

; <label>:41:                                     ; preds = %38
  %42 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br label %43, !dbg !328

; <label>:43:                                     ; preds = %41, %38
  %44 = phi i8* [ %42, %41 ], [ %18, %38 ], !dbg !329
  %45 = call i32 (i8*, i8*, ...) @siscanf(i8* nonnull %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_std, i64 0, i64 0), i32* nonnull %8) #5, !dbg !331
  %46 = icmp slt i32 %45, 1, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %46, label %222, label %47, !dbg !334

; <label>:47:                                     ; preds = %43
  %48 = load i32, i32* %8, align 4, !dbg !335, !tbaa !299
  %49 = sext i32 %48 to i64, !dbg !336
  %50 = getelementptr inbounds i8, i8* %44, i64 %49, !dbg !336
  %51 = load i8, i8* %50, align 1, !dbg !338, !tbaa !325
  %52 = icmp eq i8 %51, 45, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !341
  br i1 %52, label %55, label %53, !dbg !341

; <label>:53:                                     ; preds = %47
  %54 = icmp eq i8 %51, 43, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %54, label %55, label %58, !dbg !344

; <label>:55:                                     ; preds = %53, %47
  %56 = phi i64 [ -1, %47 ], [ 1, %53 ]
  %57 = getelementptr inbounds i8, i8* %50, i64 1, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br label %58, !dbg !347

; <label>:58:                                     ; preds = %55, %53
  %59 = phi i64 [ 1, %53 ], [ %56, %55 ]
  %60 = phi i8* [ %50, %53 ], [ %57, %55 ], !dbg !348
  store i16 0, i16* %3, align 2, !dbg !347, !tbaa !350
  store i16 0, i16* %4, align 2, !dbg !353, !tbaa !350
  %61 = call i32 (i8*, i8*, ...) @siscanf(i8* %60, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !355
  %62 = icmp slt i32 %61, 1, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %62, label %222, label %63, !dbg !358

; <label>:63:                                     ; preds = %58
  %64 = load i16, i16* %4, align 2, !dbg !359, !tbaa !350
  %65 = zext i16 %64 to i64, !dbg !359
  %66 = load i16, i16* %3, align 2, !dbg !360, !tbaa !350
  %67 = zext i16 %66 to i64, !dbg !360
  %68 = mul nuw nsw i64 %67, 60, !dbg !361
  %69 = add nuw nsw i64 %68, %65, !dbg !362
  %70 = load i16, i16* %2, align 2, !dbg !363, !tbaa !350
  %71 = zext i16 %70 to i64, !dbg !363
  %72 = mul nuw nsw i64 %71, 3600, !dbg !364
  %73 = add nuw nsw i64 %69, %72, !dbg !365
  %74 = mul nsw i64 %73, %59, !dbg !366
  %75 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 6, !dbg !367
  store i64 %74, i64* %75, align 8, !dbg !368, !tbaa !369
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_std, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 0), align 16, !dbg !371, !tbaa !302
  %76 = load i32, i32* %8, align 4, !dbg !372, !tbaa !299
  %77 = sext i32 %76 to i64, !dbg !373
  %78 = getelementptr inbounds i8, i8* %60, i64 %77, !dbg !373
  %79 = call i32 (i8*, i8*, ...) @siscanf(i8* %78, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_dst, i64 0, i64 0), i32* nonnull %8) #5, !dbg !374
  %80 = icmp slt i32 %79, 1, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %80, label %81, label %84, !dbg !377

; <label>:81:                                     ; preds = %63
  %82 = load i64, i64* bitcast ([2 x i8*]* @_tzname to i64*), align 16, !dbg !378, !tbaa !302
  store i64 %82, i64* bitcast (i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 1) to i64*), align 8, !dbg !380, !tbaa !302
  %83 = load i64, i64* %75, align 8, !dbg !381, !tbaa !369
  store i64 %83, i64* @_timezone, align 8, !dbg !382, !tbaa !294
  store i32 0, i32* @_daylight, align 4, !dbg !383, !tbaa !299
  br label %222, !dbg !384

; <label>:84:                                     ; preds = %63
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_dst, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 1), align 8, !dbg !385, !tbaa !302
  %85 = load i32, i32* %8, align 4, !dbg !386, !tbaa !299
  %86 = sext i32 %85 to i64, !dbg !387
  %87 = getelementptr inbounds i8, i8* %78, i64 %86, !dbg !387
  %88 = load i8, i8* %87, align 1, !dbg !388, !tbaa !325
  %89 = icmp eq i8 %88, 45, !dbg !390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %89, label %92, label %90, !dbg !391

; <label>:90:                                     ; preds = %84
  %91 = icmp eq i8 %88, 43, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  br i1 %91, label %92, label %95, !dbg !394

; <label>:92:                                     ; preds = %90, %84
  %93 = phi i64 [ -1, %84 ], [ 1, %90 ]
  %94 = getelementptr inbounds i8, i8* %87, i64 1, !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br label %95, !dbg !397

; <label>:95:                                     ; preds = %92, %90
  %96 = phi i64 [ 1, %90 ], [ %93, %92 ]
  %97 = phi i8* [ %87, %90 ], [ %94, %92 ], !dbg !348
  store i16 0, i16* %2, align 2, !dbg !397, !tbaa !350
  store i16 0, i16* %3, align 2, !dbg !398, !tbaa !350
  store i16 0, i16* %4, align 2, !dbg !399, !tbaa !350
  store i32 0, i32* %8, align 4, !dbg !400, !tbaa !299
  %98 = call i32 (i8*, i8*, ...) @siscanf(i8* %97, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !401
  %99 = icmp slt i32 %98, 1, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  br i1 %99, label %100, label %103, !dbg !404

; <label>:100:                                    ; preds = %95
  %101 = load i64, i64* %75, align 8, !dbg !405, !tbaa !369
  %102 = add nsw i64 %101, -3600, !dbg !406
  br label %115, !dbg !407

; <label>:103:                                    ; preds = %95
  %104 = load i16, i16* %4, align 2, !dbg !408, !tbaa !350
  %105 = zext i16 %104 to i64, !dbg !408
  %106 = load i16, i16* %3, align 2, !dbg !409, !tbaa !350
  %107 = zext i16 %106 to i64, !dbg !409
  %108 = mul nuw nsw i64 %107, 60, !dbg !410
  %109 = add nuw nsw i64 %108, %105, !dbg !411
  %110 = load i16, i16* %2, align 2, !dbg !412, !tbaa !350
  %111 = zext i16 %110 to i64, !dbg !412
  %112 = mul nuw nsw i64 %111, 3600, !dbg !413
  %113 = add nuw nsw i64 %109, %112, !dbg !414
  %114 = mul nsw i64 %113, %96, !dbg !415
  br label %115

; <label>:115:                                    ; preds = %103, %100
  %116 = phi i64 [ %114, %103 ], [ %102, %100 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %117 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 6, !dbg !416
  store i64 %116, i64* %117, align 8, !dbg !417
  %118 = load i32, i32* %8, align 4, !dbg !418, !tbaa !299
  %119 = sext i32 %118 to i64, !dbg !419
  %120 = getelementptr inbounds i8, i8* %97, i64 %119, !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %121 = bitcast i8** %9 to i8*
  %122 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 0
  %123 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 1
  %124 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 2
  %125 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 3
  %126 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 0
  %127 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 1
  %128 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 2
  %129 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 3
  br label %130, !dbg !422

; <label>:130:                                    ; preds = %115, %197
  %131 = phi i64 [ 0, %115 ], [ %212, %197 ]
  %132 = phi i8* [ %120, %115 ], [ %211, %197 ]
  %133 = load i8, i8* %132, align 1, !dbg !423, !tbaa !325
  %134 = icmp eq i8 %133, 44, !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  br i1 %134, label %135, label %137, !dbg !426

; <label>:135:                                    ; preds = %130
  %136 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !427
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br label %137, !dbg !427

; <label>:137:                                    ; preds = %135, %130
  %138 = phi i8* [ %136, %135 ], [ %132, %130 ], !dbg !348
  %139 = load i8, i8* %138, align 1, !dbg !428, !tbaa !325
  %140 = icmp eq i8 %139, 77, !dbg !429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  br i1 %140, label %141, label %168, !dbg !430

; <label>:141:                                    ; preds = %137
  %142 = call i32 (i8*, i8*, ...) @siscanf(i8* nonnull %138, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i16* nonnull %5, i32* nonnull %8, i16* nonnull %6, i32* nonnull %8, i16* nonnull %7, i32* nonnull %8) #5, !dbg !434
  %143 = icmp eq i32 %142, 3, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %143, label %144, label %222, !dbg !438

; <label>:144:                                    ; preds = %141
  %145 = load i16, i16* %5, align 2, !dbg !439, !tbaa !350
  %146 = icmp eq i16 %145, 0, !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !441
  br i1 %146, label %222, label %147, !dbg !441

; <label>:147:                                    ; preds = %144
  %148 = icmp ugt i16 %145, 12, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  br i1 %148, label %222, label %149, !dbg !443

; <label>:149:                                    ; preds = %147
  %150 = load i16, i16* %6, align 2, !dbg !444, !tbaa !350
  %151 = icmp eq i16 %150, 0, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %151, label %222, label %152, !dbg !446

; <label>:152:                                    ; preds = %149
  %153 = icmp ugt i16 %150, 5, !dbg !447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !448
  br i1 %153, label %222, label %154, !dbg !448

; <label>:154:                                    ; preds = %152
  %155 = load i16, i16* %7, align 2, !dbg !449, !tbaa !350
  %156 = icmp ugt i16 %155, 6, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  br i1 %156, label %222, label %157, !dbg !451

; <label>:157:                                    ; preds = %154
  %158 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 0, !dbg !452
  store i8 77, i8* %158, align 8, !dbg !453, !tbaa !454
  %159 = zext i16 %145 to i32, !dbg !455
  %160 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 1, !dbg !456
  store i32 %159, i32* %160, align 4, !dbg !457, !tbaa !458
  %161 = zext i16 %150 to i32, !dbg !459
  %162 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 2, !dbg !460
  store i32 %161, i32* %162, align 8, !dbg !461, !tbaa !462
  %163 = zext i16 %155 to i32, !dbg !463
  %164 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 3, !dbg !464
  store i32 %163, i32* %164, align 4, !dbg !465, !tbaa !466
  %165 = load i32, i32* %8, align 4, !dbg !467, !tbaa !299
  %166 = sext i32 %165 to i64, !dbg !468
  %167 = getelementptr inbounds i8, i8* %138, i64 %166, !dbg !468
  br label %188, !dbg !469

; <label>:168:                                    ; preds = %137
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %121) #4, !dbg !470
  %169 = load i8, i8* %138, align 1, !dbg !471, !tbaa !325
  %170 = icmp eq i8 %169, 74, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  %171 = getelementptr inbounds i8, i8* %138, i64 1, !dbg !476
  %172 = select i1 %170, i8* %171, i8* %138, !dbg !474
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %173 = call i64 @strtoul(i8* nonnull %172, i8** nonnull %9, i32 10) #5, !dbg !479
  %174 = trunc i64 %173 to i16, !dbg !479
  store i16 %174, i16* %7, align 2, !dbg !480, !tbaa !350
  %175 = load i8*, i8** %9, align 8, !dbg !481, !tbaa !302
  %176 = icmp eq i8* %175, %172, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %176, label %177, label %181, !dbg !484

; <label>:177:                                    ; preds = %168
  %178 = icmp eq i64 %131, 0, !dbg !485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br i1 %178, label %179, label %180, !dbg !488

; <label>:179:                                    ; preds = %177
  store i8 77, i8* %122, align 8, !dbg !489, !tbaa !454
  store i32 3, i32* %123, align 4, !dbg !491, !tbaa !458
  store i32 2, i32* %124, align 8, !dbg !492, !tbaa !462
  store i32 0, i32* %125, align 4, !dbg !493, !tbaa !466
  br label %187, !dbg !494

; <label>:180:                                    ; preds = %177
  store i8 77, i8* %126, align 8, !dbg !495, !tbaa !454
  store i32 11, i32* %127, align 4, !dbg !497, !tbaa !458
  store i32 1, i32* %128, align 8, !dbg !498, !tbaa !462
  store i32 0, i32* %129, align 4, !dbg !499, !tbaa !466
  br label %187

; <label>:181:                                    ; preds = %168
  %182 = select i1 %170, i8 74, i8 68, !dbg !474
  %183 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 0, !dbg !500
  store i8 %182, i8* %183, align 8, !dbg !502, !tbaa !454
  %184 = trunc i64 %173 to i32, !dbg !503
  %185 = and i32 %184, 65535, !dbg !503
  %186 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 3, !dbg !504
  store i32 %185, i32* %186, align 4, !dbg !505, !tbaa !466
  br label %187

; <label>:187:                                    ; preds = %179, %180, %181
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %121) #4, !dbg !506
  br label %188

; <label>:188:                                    ; preds = %187, %157
  %189 = phi i8* [ %167, %157 ], [ %175, %187 ], !dbg !507
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store i16 2, i16* %2, align 2, !dbg !508, !tbaa !350
  store i16 0, i16* %3, align 2, !dbg !509, !tbaa !350
  store i16 0, i16* %4, align 2, !dbg !510, !tbaa !350
  store i32 0, i32* %8, align 4, !dbg !511, !tbaa !299
  %190 = load i8, i8* %189, align 1, !dbg !512, !tbaa !325
  %191 = icmp eq i8 %190, 47, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  br i1 %191, label %192, label %197, !dbg !515

; <label>:192:                                    ; preds = %188
  %193 = call i32 (i8*, i8*, ...) @siscanf(i8* %189, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  %194 = load i16, i16* %4, align 2, !dbg !517, !tbaa !350
  %195 = load i16, i16* %3, align 2, !dbg !518, !tbaa !350
  %196 = load i16, i16* %2, align 2, !dbg !519, !tbaa !350
  br label %197, !dbg !516

; <label>:197:                                    ; preds = %192, %188
  %198 = phi i16 [ %196, %192 ], [ 2, %188 ], !dbg !519
  %199 = phi i16 [ %195, %192 ], [ 0, %188 ], !dbg !518
  %200 = phi i16 [ %194, %192 ], [ 0, %188 ], !dbg !517
  %201 = zext i16 %200 to i32, !dbg !517
  %202 = zext i16 %199 to i32, !dbg !518
  %203 = mul nuw nsw i32 %202, 60, !dbg !520
  %204 = add nuw nsw i32 %203, %201, !dbg !521
  %205 = zext i16 %198 to i32, !dbg !519
  %206 = mul nuw nsw i32 %205, 3600, !dbg !522
  %207 = add nuw nsw i32 %204, %206, !dbg !523
  %208 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %131, i32 4, !dbg !524
  store i32 %207, i32* %208, align 8, !dbg !525, !tbaa !526
  %209 = load i32, i32* %8, align 4, !dbg !527, !tbaa !299
  %210 = sext i32 %209 to i64, !dbg !528
  %211 = getelementptr inbounds i8, i8* %189, i64 %210, !dbg !528
  %212 = add nuw nsw i64 %131, 1, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  %213 = icmp ult i64 %212, 2, !dbg !531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br i1 %213, label %130, label %214, !dbg !422, !llvm.loop !532

; <label>:214:                                    ; preds = %197
  %215 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 1, !dbg !534
  %216 = load i32, i32* %215, align 4, !dbg !534, !tbaa !535
  %217 = call i32 @__tzcalc_limits(i32 %216) #5, !dbg !537
  %218 = load i64, i64* %75, align 8, !dbg !538, !tbaa !369
  store i64 %218, i64* @_timezone, align 8, !dbg !539, !tbaa !294
  %219 = load i64, i64* %117, align 8, !dbg !540, !tbaa !369
  %220 = icmp ne i64 %218, %219, !dbg !541
  %221 = zext i1 %220 to i32, !dbg !541
  store i32 %221, i32* @_daylight, align 4, !dbg !542, !tbaa !299
  br label %222, !dbg !543

; <label>:222:                                    ; preds = %144, %147, %149, %152, %154, %141, %58, %43, %25, %214, %81, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %15) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %14) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %13) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #4, !dbg !543
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #4, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  ret void, !dbg !543
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local %struct.__tzinfo_struct* @__gettzinfo() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @_getenv_r(%struct._reent*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @free(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @malloc(i64) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i32 @siscanf(i8*, i8*, ...) local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local i64 @strtoul(i8*, i8**, i32) local_unnamed_addr #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #1

; Function Attrs: noredzone
declare dso_local i32 @__tzcalc_limits(i32) local_unnamed_addr #2

; Function Attrs: noredzone nounwind
define dso_local void @_tzset_r(%struct._reent*) local_unnamed_addr #0 !dbg !545 {
  tail call void @__tz_lock() #5, !dbg !549
  tail call void @_tzset_unlocked_r(%struct._reent* %0) #6, !dbg !550
  tail call void @__tz_unlock() #5, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  ret void, !dbg !552
}

; Function Attrs: noredzone
declare dso_local void @__tz_lock() local_unnamed_addr #2

; Function Attrs: noredzone
declare dso_local void @__tz_unlock() local_unnamed_addr #2

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "prev_tzenv", scope: !2, file: !3, line: 14, type: !16, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/time/tzset_r.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !{!8, !14, !0}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "__tzname_std", scope: !2, file: !3, line: 12, type: !10, isLocal: true, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 88, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 11)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "__tzname_dst", scope: !2, file: !3, line: 13, type: !10, isLocal: true, isDefinition: true)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!17 = !{i32 2, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!21 = distinct !DISubprogram(name: "_tzset_unlocked_r", scope: !3, file: !3, line: 17, type: !22, isLocal: false, isDefinition: true, scopeLine: 19, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !239)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !26, line: 569, size: 14912, elements: !27)
!26 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!27 = !{!28, !30, !109, !110, !111, !112, !116, !117, !120, !121, !123, !135, !136, !137, !139, !140, !141, !203, !224, !225, !230, !237}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !25, file: !26, line: 571, baseType: !29, size: 32)
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !26, line: 287, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !26, line: 181, size: 1408, elements: !34)
!34 = !{!35, !38, !39, !40, !42, !43, !48, !49, !50, !57, !63, !68, !72, !73, !74, !75, !79, !83, !84, !85, !87, !88, !92, !108}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !33, file: !26, line: 182, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !33, file: !26, line: 183, baseType: !29, size: 32, offset: 64)
!39 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !33, file: !26, line: 184, baseType: !29, size: 32, offset: 96)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !33, file: !26, line: 185, baseType: !41, size: 16, offset: 128)
!41 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !33, file: !26, line: 186, baseType: !41, size: 16, offset: 144)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !33, file: !26, line: 187, baseType: !44, size: 128, offset: 192)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !26, line: 117, size: 128, elements: !45)
!45 = !{!46, !47}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !44, file: !26, line: 118, baseType: !36, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !44, file: !26, line: 119, baseType: !29, size: 32, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !33, file: !26, line: 188, baseType: !29, size: 32, offset: 320)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !33, file: !26, line: 195, baseType: !6, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !33, file: !26, line: 197, baseType: !51, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{!54, !24, !6, !16, !29}
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !55, line: 145, baseType: !56)
!55 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!56 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !33, file: !26, line: 199, baseType: !58, size: 64, offset: 512)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{!54, !24, !6, !61, !29}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !33, file: !26, line: 202, baseType: !64, size: 64, offset: 576)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DISubroutineType(types: !66)
!66 = !{!67, !24, !6, !67, !29}
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !55, line: 114, baseType: !56)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !33, file: !26, line: 203, baseType: !69, size: 64, offset: 640)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{!29, !24, !6}
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !33, file: !26, line: 206, baseType: !44, size: 128, offset: 704)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !33, file: !26, line: 207, baseType: !36, size: 64, offset: 832)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !33, file: !26, line: 208, baseType: !29, size: 32, offset: 896)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !33, file: !26, line: 211, baseType: !76, size: 24, offset: 928)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 24, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: 3)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !33, file: !26, line: 212, baseType: !80, size: 8, offset: 952)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 8, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 1)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !33, file: !26, line: 215, baseType: !44, size: 128, offset: 960)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !33, file: !26, line: 218, baseType: !29, size: 32, offset: 1088)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !33, file: !26, line: 219, baseType: !86, size: 64, offset: 1152)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !55, line: 44, baseType: !56)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !33, file: !26, line: 222, baseType: !24, size: 64, offset: 1216)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !33, file: !26, line: 226, baseType: !89, size: 32, offset: 1280)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !55, line: 175, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !91, line: 12, baseType: !29)
!91 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!92 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !33, file: !26, line: 228, baseType: !93, size: 64, offset: 1312)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !55, line: 171, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !55, line: 163, size: 64, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !94, file: !55, line: 165, baseType: !29, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !94, file: !55, line: 170, baseType: !98, size: 32, offset: 32)
!98 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !94, file: !55, line: 166, size: 32, elements: !99)
!99 = !{!100, !104}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !98, file: !55, line: 168, baseType: !101, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !102, line: 124, baseType: !103)
!102 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!103 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !98, file: !55, line: 169, baseType: !105, size: 32)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !37, size: 32, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 4)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !33, file: !26, line: 229, baseType: !29, size: 32, offset: 1376)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !25, file: !26, line: 576, baseType: !31, size: 64, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !25, file: !26, line: 578, baseType: !29, size: 32, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !25, file: !26, line: 579, baseType: !113, size: 200, offset: 288)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 200, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 25)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !25, file: !26, line: 582, baseType: !29, size: 32, offset: 512)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !25, file: !26, line: 583, baseType: !118, size: 64, offset: 576)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !26, line: 40, flags: DIFlagFwdDecl)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !25, file: !26, line: 585, baseType: !29, size: 32, offset: 640)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !25, file: !26, line: 587, baseType: !122, size: 64, offset: 704)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !25, file: !26, line: 590, baseType: !124, size: 64, offset: 768)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !26, line: 47, size: 256, elements: !126)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !125, file: !26, line: 49, baseType: !124, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !125, file: !26, line: 50, baseType: !29, size: 32, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !125, file: !26, line: 50, baseType: !29, size: 32, offset: 96)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !125, file: !26, line: 50, baseType: !29, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !125, file: !26, line: 50, baseType: !29, size: 32, offset: 160)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !125, file: !26, line: 51, baseType: !133, size: 32, offset: 192)
!133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !134, size: 32, elements: !81)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !26, line: 25, baseType: !103)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !25, file: !26, line: 591, baseType: !29, size: 32, offset: 832)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !25, file: !26, line: 592, baseType: !124, size: 64, offset: 896)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !25, file: !26, line: 593, baseType: !138, size: 64, offset: 960)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !25, file: !26, line: 596, baseType: !29, size: 32, offset: 1024)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !25, file: !26, line: 597, baseType: !16, size: 64, offset: 1088)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !25, file: !26, line: 632, baseType: !142, size: 2880, offset: 1152)
!142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !25, file: !26, line: 599, size: 2880, elements: !143)
!143 = !{!144, !194}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !142, file: !26, line: 622, baseType: !145, size: 1728)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !26, line: 601, size: 1728, elements: !146)
!146 = !{!147, !148, !149, !153, !165, !166, !168, !176, !177, !178, !179, !183, !187, !188, !189, !190, !191, !192, !193}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !145, file: !26, line: 603, baseType: !103, size: 32)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !145, file: !26, line: 604, baseType: !16, size: 64, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !145, file: !26, line: 605, baseType: !150, size: 208, offset: 128)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 26)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !145, file: !26, line: 606, baseType: !154, size: 288, offset: 352)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !26, line: 55, size: 288, elements: !155)
!155 = !{!156, !157, !158, !159, !160, !161, !162, !163, !164}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !154, file: !26, line: 57, baseType: !29, size: 32)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !154, file: !26, line: 58, baseType: !29, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !154, file: !26, line: 59, baseType: !29, size: 32, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !154, file: !26, line: 60, baseType: !29, size: 32, offset: 96)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !154, file: !26, line: 61, baseType: !29, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !154, file: !26, line: 62, baseType: !29, size: 32, offset: 160)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !154, file: !26, line: 63, baseType: !29, size: 32, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !154, file: !26, line: 64, baseType: !29, size: 32, offset: 224)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !154, file: !26, line: 65, baseType: !29, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !145, file: !26, line: 607, baseType: !29, size: 32, offset: 640)
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
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 8)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !145, file: !26, line: 614, baseType: !184, size: 192, offset: 1152)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 192, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 24)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !145, file: !26, line: 615, baseType: !29, size: 32, offset: 1344)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !145, file: !26, line: 616, baseType: !93, size: 64, offset: 1376)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !145, file: !26, line: 617, baseType: !93, size: 64, offset: 1440)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !145, file: !26, line: 618, baseType: !93, size: 64, offset: 1504)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !145, file: !26, line: 619, baseType: !93, size: 64, offset: 1568)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !145, file: !26, line: 620, baseType: !93, size: 64, offset: 1632)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !145, file: !26, line: 621, baseType: !29, size: 32, offset: 1696)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !142, file: !26, line: 631, baseType: !195, size: 2880)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !26, line: 626, size: 2880, elements: !196)
!196 = !{!197, !201}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !195, file: !26, line: 629, baseType: !198, size: 1920)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 1920, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 30)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !195, file: !26, line: 630, baseType: !202, size: 960, offset: 1920)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !103, size: 960, elements: !199)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !25, file: !26, line: 636, baseType: !204, size: 64, offset: 4032)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !26, line: 93, size: 6336, elements: !206)
!206 = !{!207, !208, !209, !216}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !205, file: !26, line: 94, baseType: !204, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !205, file: !26, line: 95, baseType: !29, size: 32, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !205, file: !26, line: 97, baseType: !210, size: 2048, offset: 128)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !211, size: 2048, elements: !214)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{null}
!214 = !{!215}
!215 = !DISubrange(count: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !205, file: !26, line: 98, baseType: !217, size: 4160, offset: 2176)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !26, line: 74, size: 4160, elements: !218)
!218 = !{!219, !221, !222, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !217, file: !26, line: 75, baseType: !220, size: 2048)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 2048, elements: !214)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !217, file: !26, line: 76, baseType: !220, size: 2048, offset: 2048)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !217, file: !26, line: 78, baseType: !134, size: 32, offset: 4096)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !217, file: !26, line: 81, baseType: !134, size: 32, offset: 4128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !25, file: !26, line: 637, baseType: !205, size: 6336, offset: 4096)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !25, file: !26, line: 641, baseType: !226, size: 64, offset: 10432)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{null, !29}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !25, file: !26, line: 646, baseType: !231, size: 192, offset: 10496)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !26, line: 291, size: 192, elements: !232)
!232 = !{!233, !235, !236}
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !231, file: !26, line: 293, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !231, file: !26, line: 294, baseType: !29, size: 32, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !231, file: !26, line: 295, baseType: !31, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !25, file: !26, line: 648, baseType: !238, size: 4224, offset: 10688)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 4224, elements: !77)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !276}
!240 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !21, file: !3, line: 17, type: !24)
!241 = !DILocalVariable(name: "tzenv", scope: !21, file: !3, line: 20, type: !16)
!242 = !DILocalVariable(name: "hh", scope: !21, file: !3, line: 21, type: !173)
!243 = !DILocalVariable(name: "mm", scope: !21, file: !3, line: 21, type: !173)
!244 = !DILocalVariable(name: "ss", scope: !21, file: !3, line: 21, type: !173)
!245 = !DILocalVariable(name: "m", scope: !21, file: !3, line: 21, type: !173)
!246 = !DILocalVariable(name: "w", scope: !21, file: !3, line: 21, type: !173)
!247 = !DILocalVariable(name: "d", scope: !21, file: !3, line: 21, type: !173)
!248 = !DILocalVariable(name: "sign", scope: !21, file: !3, line: 22, type: !29)
!249 = !DILocalVariable(name: "n", scope: !21, file: !3, line: 22, type: !29)
!250 = !DILocalVariable(name: "i", scope: !21, file: !3, line: 23, type: !29)
!251 = !DILocalVariable(name: "ch", scope: !21, file: !3, line: 23, type: !29)
!252 = !DILocalVariable(name: "tz", scope: !21, file: !3, line: 24, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzinfo_type", file: !255, line: 65, baseType: !256)
!255 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/time.h", directory: "/root/.unikraft/apps/redis/build")
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzinfo_struct", file: !255, line: 60, size: 704, elements: !257)
!257 = !{!258, !259, !260}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "__tznorth", scope: !256, file: !255, line: 62, baseType: !29, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "__tzyear", scope: !256, file: !255, line: 63, baseType: !29, size: 32, offset: 32)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "__tzrule", scope: !256, file: !255, line: 64, baseType: !261, size: 640, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !262, size: 640, elements: !274)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__tzrule_type", file: !255, line: 58, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tzrule_struct", file: !255, line: 49, size: 320, elements: !264)
!264 = !{!265, !266, !267, !268, !269, !270, !273}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ch", scope: !263, file: !255, line: 51, baseType: !11, size: 8)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !263, file: !255, line: 52, baseType: !29, size: 32, offset: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !263, file: !255, line: 53, baseType: !29, size: 32, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !263, file: !255, line: 54, baseType: !29, size: 32, offset: 96)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !263, file: !255, line: 55, baseType: !29, size: 32, offset: 128)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "change", scope: !263, file: !255, line: 56, baseType: !271, size: 64, offset: 192)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !272, line: 34, baseType: !56)
!272 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uktime/include/uk/time_types.h", directory: "/root/.unikraft/apps/redis/build")
!273 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !263, file: !255, line: 57, baseType: !56, size: 64, offset: 256)
!274 = !{!275}
!275 = !DISubrange(count: 2)
!276 = !DILocalVariable(name: "end", scope: !277, file: !3, line: 127, type: !16)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 126, column: 2)
!278 = distinct !DILexicalBlock(scope: !279, file: !3, line: 112, column: 11)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 108, column: 5)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 107, column: 3)
!281 = distinct !DILexicalBlock(scope: !21, file: !3, line: 107, column: 3)
!282 = !DILocation(line: 17, column: 1, scope: !21)
!283 = !DILocation(line: 21, column: 3, scope: !21)
!284 = !DILocation(line: 22, column: 3, scope: !21)
!285 = !DILocation(line: 24, column: 23, scope: !21)
!286 = !DILocation(line: 24, column: 18, scope: !21)
!287 = !DILocation(line: 26, column: 16, scope: !288)
!288 = distinct !DILexicalBlock(scope: !21, file: !3, line: 26, column: 7)
!289 = !DILocation(line: 20, column: 9, scope: !21)
!290 = !DILocation(line: 26, column: 45, scope: !288)
!291 = !DILocation(line: 26, column: 7, scope: !21)
!292 = !DILocation(line: 28, column: 12, scope: !293)
!293 = distinct !DILexicalBlock(scope: !288, file: !3, line: 27, column: 7)
!294 = !{!295, !295, i64 0}
!295 = !{!"long", !296, i64 0}
!296 = !{!"omnipotent char", !297, i64 0}
!297 = !{!"Simple C/C++ TBAA"}
!298 = !DILocation(line: 29, column: 12, scope: !293)
!299 = !{!300, !300, i64 0}
!300 = !{!"int", !296, i64 0}
!301 = !DILocation(line: 30, column: 13, scope: !293)
!302 = !{!303, !303, i64 0}
!303 = !{!"any pointer", !296, i64 0}
!304 = !DILocation(line: 32, column: 7, scope: !293)
!305 = !DILocation(line: 32, column: 2, scope: !293)
!306 = !DILocation(line: 33, column: 13, scope: !293)
!307 = !DILocation(line: 34, column: 2, scope: !293)
!308 = !DILocation(line: 37, column: 7, scope: !309)
!309 = distinct !DILexicalBlock(scope: !21, file: !3, line: 37, column: 7)
!310 = !DILocation(line: 37, column: 18, scope: !309)
!311 = !DILocation(line: 37, column: 26, scope: !309)
!312 = !DILocation(line: 37, column: 29, scope: !309)
!313 = !DILocation(line: 37, column: 55, scope: !309)
!314 = !DILocation(line: 37, column: 7, scope: !21)
!315 = !DILocation(line: 40, column: 8, scope: !21)
!316 = !DILocation(line: 40, column: 3, scope: !21)
!317 = !DILocation(line: 41, column: 16, scope: !21)
!318 = !DILocation(line: 41, column: 14, scope: !21)
!319 = !DILocation(line: 42, column: 18, scope: !320)
!320 = distinct !DILexicalBlock(scope: !21, file: !3, line: 42, column: 7)
!321 = !DILocation(line: 42, column: 7, scope: !21)
!322 = !DILocation(line: 43, column: 5, scope: !320)
!323 = !DILocation(line: 46, column: 7, scope: !324)
!324 = distinct !DILexicalBlock(scope: !21, file: !3, line: 46, column: 7)
!325 = !{!296, !296, i64 0}
!326 = !DILocation(line: 46, column: 14, scope: !324)
!327 = !DILocation(line: 46, column: 7, scope: !21)
!328 = !DILocation(line: 47, column: 5, scope: !324)
!329 = !DILocation(line: 0, scope: !288)
!330 = !DILocation(line: 22, column: 13, scope: !21)
!331 = !DILocation(line: 49, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !21, file: !3, line: 49, column: 7)
!333 = !DILocation(line: 49, column: 58, scope: !332)
!334 = !DILocation(line: 49, column: 7, scope: !21)
!335 = !DILocation(line: 52, column: 12, scope: !21)
!336 = !DILocation(line: 52, column: 9, scope: !21)
!337 = !DILocation(line: 22, column: 7, scope: !21)
!338 = !DILocation(line: 55, column: 7, scope: !339)
!339 = distinct !DILexicalBlock(scope: !21, file: !3, line: 55, column: 7)
!340 = !DILocation(line: 55, column: 14, scope: !339)
!341 = !DILocation(line: 55, column: 7, scope: !21)
!342 = !DILocation(line: 60, column: 19, scope: !343)
!343 = distinct !DILexicalBlock(scope: !339, file: !3, line: 60, column: 12)
!344 = !DILocation(line: 60, column: 12, scope: !339)
!345 = !DILocation(line: 0, scope: !346)
!346 = distinct !DILexicalBlock(scope: !339, file: !3, line: 56, column: 5)
!347 = !DILocation(line: 63, column: 6, scope: !21)
!348 = !DILocation(line: 0, scope: !21)
!349 = !DILocation(line: 21, column: 22, scope: !21)
!350 = !{!351, !351, i64 0}
!351 = !{!"short", !296, i64 0}
!352 = !DILocation(line: 21, column: 26, scope: !21)
!353 = !DILocation(line: 64, column: 6, scope: !21)
!354 = !DILocation(line: 21, column: 18, scope: !21)
!355 = !DILocation(line: 66, column: 7, scope: !356)
!356 = distinct !DILexicalBlock(scope: !21, file: !3, line: 66, column: 7)
!357 = !DILocation(line: 66, column: 70, scope: !356)
!358 = !DILocation(line: 66, column: 7, scope: !21)
!359 = !DILocation(line: 69, column: 36, scope: !21)
!360 = !DILocation(line: 69, column: 54, scope: !21)
!361 = !DILocation(line: 69, column: 52, scope: !21)
!362 = !DILocation(line: 69, column: 39, scope: !21)
!363 = !DILocation(line: 69, column: 73, scope: !21)
!364 = !DILocation(line: 69, column: 71, scope: !21)
!365 = !DILocation(line: 69, column: 57, scope: !21)
!366 = !DILocation(line: 69, column: 33, scope: !21)
!367 = !DILocation(line: 69, column: 19, scope: !21)
!368 = !DILocation(line: 69, column: 26, scope: !21)
!369 = !{!370, !295, i64 32}
!370 = !{!"__tzrule_struct", !296, i64 0, !300, i64 4, !300, i64 8, !300, i64 12, !300, i64 16, !295, i64 24, !295, i64 32}
!371 = !DILocation(line: 70, column: 14, scope: !21)
!372 = !DILocation(line: 71, column: 12, scope: !21)
!373 = !DILocation(line: 71, column: 9, scope: !21)
!374 = !DILocation(line: 73, column: 7, scope: !375)
!375 = distinct !DILexicalBlock(scope: !21, file: !3, line: 73, column: 7)
!376 = !DILocation(line: 73, column: 58, scope: !375)
!377 = !DILocation(line: 73, column: 7, scope: !21)
!378 = !DILocation(line: 75, column: 20, scope: !379)
!379 = distinct !DILexicalBlock(scope: !375, file: !3, line: 74, column: 5)
!380 = !DILocation(line: 75, column: 18, scope: !379)
!381 = !DILocation(line: 76, column: 35, scope: !379)
!382 = !DILocation(line: 76, column: 17, scope: !379)
!383 = !DILocation(line: 77, column: 17, scope: !379)
!384 = !DILocation(line: 78, column: 7, scope: !379)
!385 = !DILocation(line: 81, column: 16, scope: !375)
!386 = !DILocation(line: 83, column: 12, scope: !21)
!387 = !DILocation(line: 83, column: 9, scope: !21)
!388 = !DILocation(line: 87, column: 7, scope: !389)
!389 = distinct !DILexicalBlock(scope: !21, file: !3, line: 87, column: 7)
!390 = !DILocation(line: 87, column: 14, scope: !389)
!391 = !DILocation(line: 87, column: 7, scope: !21)
!392 = !DILocation(line: 92, column: 19, scope: !393)
!393 = distinct !DILexicalBlock(scope: !389, file: !3, line: 92, column: 12)
!394 = !DILocation(line: 92, column: 12, scope: !389)
!395 = !DILocation(line: 0, scope: !396)
!396 = distinct !DILexicalBlock(scope: !389, file: !3, line: 88, column: 5)
!397 = !DILocation(line: 95, column: 6, scope: !21)
!398 = !DILocation(line: 96, column: 6, scope: !21)
!399 = !DILocation(line: 97, column: 6, scope: !21)
!400 = !DILocation(line: 99, column: 6, scope: !21)
!401 = !DILocation(line: 100, column: 7, scope: !402)
!402 = distinct !DILexicalBlock(scope: !21, file: !3, line: 100, column: 7)
!403 = !DILocation(line: 100, column: 70, scope: !402)
!404 = !DILocation(line: 100, column: 7, scope: !21)
!405 = !DILocation(line: 101, column: 46, scope: !402)
!406 = !DILocation(line: 101, column: 53, scope: !402)
!407 = !DILocation(line: 101, column: 5, scope: !402)
!408 = !DILocation(line: 103, column: 38, scope: !402)
!409 = !DILocation(line: 103, column: 56, scope: !402)
!410 = !DILocation(line: 103, column: 54, scope: !402)
!411 = !DILocation(line: 103, column: 41, scope: !402)
!412 = !DILocation(line: 103, column: 75, scope: !402)
!413 = !DILocation(line: 103, column: 73, scope: !402)
!414 = !DILocation(line: 103, column: 59, scope: !402)
!415 = !DILocation(line: 103, column: 35, scope: !402)
!416 = !DILocation(line: 103, column: 21, scope: !402)
!417 = !DILocation(line: 103, column: 28, scope: !402)
!418 = !DILocation(line: 105, column: 12, scope: !21)
!419 = !DILocation(line: 105, column: 9, scope: !21)
!420 = !DILocation(line: 23, column: 7, scope: !21)
!421 = !DILocation(line: 107, column: 8, scope: !281)
!422 = !DILocation(line: 107, column: 3, scope: !281)
!423 = !DILocation(line: 109, column: 11, scope: !424)
!424 = distinct !DILexicalBlock(scope: !279, file: !3, line: 109, column: 11)
!425 = !DILocation(line: 109, column: 18, scope: !424)
!426 = !DILocation(line: 109, column: 11, scope: !279)
!427 = !DILocation(line: 110, column: 9, scope: !424)
!428 = !DILocation(line: 112, column: 11, scope: !278)
!429 = !DILocation(line: 112, column: 18, scope: !278)
!430 = !DILocation(line: 112, column: 11, scope: !279)
!431 = !DILocation(line: 21, column: 30, scope: !21)
!432 = !DILocation(line: 21, column: 33, scope: !21)
!433 = !DILocation(line: 21, column: 36, scope: !21)
!434 = !DILocation(line: 114, column: 8, scope: !435)
!435 = distinct !DILexicalBlock(scope: !436, file: !3, line: 114, column: 8)
!436 = distinct !DILexicalBlock(scope: !278, file: !3, line: 113, column: 2)
!437 = !DILocation(line: 114, column: 69, scope: !435)
!438 = !DILocation(line: 114, column: 74, scope: !435)
!439 = !DILocation(line: 115, column: 8, scope: !435)
!440 = !DILocation(line: 115, column: 10, scope: !435)
!441 = !DILocation(line: 115, column: 14, scope: !435)
!442 = !DILocation(line: 115, column: 19, scope: !435)
!443 = !DILocation(line: 115, column: 24, scope: !435)
!444 = !DILocation(line: 115, column: 27, scope: !435)
!445 = !DILocation(line: 115, column: 29, scope: !435)
!446 = !DILocation(line: 115, column: 33, scope: !435)
!447 = !DILocation(line: 115, column: 38, scope: !435)
!448 = !DILocation(line: 115, column: 42, scope: !435)
!449 = !DILocation(line: 115, column: 45, scope: !435)
!450 = !DILocation(line: 115, column: 47, scope: !435)
!451 = !DILocation(line: 114, column: 8, scope: !436)
!452 = !DILocation(line: 118, column: 20, scope: !436)
!453 = !DILocation(line: 118, column: 23, scope: !436)
!454 = !{!370, !296, i64 0}
!455 = !DILocation(line: 119, column: 24, scope: !436)
!456 = !DILocation(line: 119, column: 20, scope: !436)
!457 = !DILocation(line: 119, column: 22, scope: !436)
!458 = !{!370, !300, i64 4}
!459 = !DILocation(line: 120, column: 24, scope: !436)
!460 = !DILocation(line: 120, column: 20, scope: !436)
!461 = !DILocation(line: 120, column: 22, scope: !436)
!462 = !{!370, !300, i64 8}
!463 = !DILocation(line: 121, column: 24, scope: !436)
!464 = !DILocation(line: 121, column: 20, scope: !436)
!465 = !DILocation(line: 121, column: 22, scope: !436)
!466 = !{!370, !300, i64 12}
!467 = !DILocation(line: 123, column: 13, scope: !436)
!468 = !DILocation(line: 123, column: 10, scope: !436)
!469 = !DILocation(line: 124, column: 2, scope: !436)
!470 = !DILocation(line: 127, column: 4, scope: !277)
!471 = !DILocation(line: 128, column: 8, scope: !472)
!472 = distinct !DILexicalBlock(scope: !277, file: !3, line: 128, column: 8)
!473 = !DILocation(line: 128, column: 15, scope: !472)
!474 = !DILocation(line: 128, column: 8, scope: !277)
!475 = !DILocation(line: 23, column: 10, scope: !21)
!476 = !DILocation(line: 131, column: 8, scope: !477)
!477 = distinct !DILexicalBlock(scope: !472, file: !3, line: 129, column: 6)
!478 = !DILocation(line: 127, column: 10, scope: !277)
!479 = !DILocation(line: 136, column: 8, scope: !277)
!480 = !DILocation(line: 136, column: 6, scope: !277)
!481 = !DILocation(line: 141, column: 8, scope: !482)
!482 = distinct !DILexicalBlock(scope: !277, file: !3, line: 141, column: 8)
!483 = !DILocation(line: 141, column: 12, scope: !482)
!484 = !DILocation(line: 141, column: 8, scope: !277)
!485 = !DILocation(line: 143, column: 14, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 143, column: 12)
!487 = distinct !DILexicalBlock(scope: !482, file: !3, line: 142, column: 6)
!488 = !DILocation(line: 143, column: 12, scope: !487)
!489 = !DILocation(line: 145, column: 24, scope: !490)
!490 = distinct !DILexicalBlock(scope: !486, file: !3, line: 144, column: 3)
!491 = !DILocation(line: 146, column: 23, scope: !490)
!492 = !DILocation(line: 147, column: 23, scope: !490)
!493 = !DILocation(line: 148, column: 23, scope: !490)
!494 = !DILocation(line: 149, column: 3, scope: !490)
!495 = !DILocation(line: 152, column: 24, scope: !496)
!496 = distinct !DILexicalBlock(scope: !486, file: !3, line: 151, column: 3)
!497 = !DILocation(line: 153, column: 23, scope: !496)
!498 = !DILocation(line: 154, column: 23, scope: !496)
!499 = !DILocation(line: 155, column: 23, scope: !496)
!500 = !DILocation(line: 160, column: 24, scope: !501)
!501 = distinct !DILexicalBlock(scope: !482, file: !3, line: 159, column: 6)
!502 = !DILocation(line: 160, column: 27, scope: !501)
!503 = !DILocation(line: 161, column: 28, scope: !501)
!504 = !DILocation(line: 161, column: 24, scope: !501)
!505 = !DILocation(line: 161, column: 26, scope: !501)
!506 = !DILocation(line: 165, column: 2, scope: !278)
!507 = !DILocation(line: 0, scope: !277)
!508 = !DILocation(line: 168, column: 10, scope: !279)
!509 = !DILocation(line: 169, column: 10, scope: !279)
!510 = !DILocation(line: 170, column: 10, scope: !279)
!511 = !DILocation(line: 171, column: 9, scope: !279)
!512 = !DILocation(line: 173, column: 11, scope: !513)
!513 = distinct !DILexicalBlock(scope: !279, file: !3, line: 173, column: 11)
!514 = !DILocation(line: 173, column: 18, scope: !513)
!515 = !DILocation(line: 173, column: 11, scope: !279)
!516 = !DILocation(line: 174, column: 2, scope: !513)
!517 = !DILocation(line: 176, column: 27, scope: !279)
!518 = !DILocation(line: 176, column: 45, scope: !279)
!519 = !DILocation(line: 176, column: 65, scope: !279)
!520 = !DILocation(line: 176, column: 43, scope: !279)
!521 = !DILocation(line: 176, column: 30, scope: !279)
!522 = !DILocation(line: 176, column: 63, scope: !279)
!523 = !DILocation(line: 176, column: 48, scope: !279)
!524 = !DILocation(line: 176, column: 23, scope: !279)
!525 = !DILocation(line: 176, column: 25, scope: !279)
!526 = !{!370, !300, i64 16}
!527 = !DILocation(line: 178, column: 16, scope: !279)
!528 = !DILocation(line: 178, column: 13, scope: !279)
!529 = !DILocation(line: 107, column: 22, scope: !280)
!530 = !DILocation(line: 107, column: 3, scope: !280)
!531 = !DILocation(line: 107, column: 17, scope: !280)
!532 = distinct !{!532, !422, !533}
!533 = !DILocation(line: 179, column: 5, scope: !281)
!534 = !DILocation(line: 181, column: 24, scope: !21)
!535 = !{!536, !300, i64 4}
!536 = !{!"__tzinfo_struct", !300, i64 0, !300, i64 4, !296, i64 8}
!537 = !DILocation(line: 181, column: 3, scope: !21)
!538 = !DILocation(line: 182, column: 31, scope: !21)
!539 = !DILocation(line: 182, column: 13, scope: !21)
!540 = !DILocation(line: 183, column: 57, scope: !21)
!541 = !DILocation(line: 183, column: 38, scope: !21)
!542 = !DILocation(line: 183, column: 13, scope: !21)
!543 = !DILocation(line: 184, column: 1, scope: !21)
!544 = !DILocation(line: 0, scope: !293)
!545 = distinct !DISubprogram(name: "_tzset_r", scope: !3, file: !3, line: 187, type: !22, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !546)
!546 = !{!547}
!547 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !545, file: !3, line: 187, type: !24)
!548 = !DILocation(line: 187, column: 1, scope: !545)
!549 = !DILocation(line: 190, column: 3, scope: !545)
!550 = !DILocation(line: 191, column: 3, scope: !545)
!551 = !DILocation(line: 192, column: 3, scope: !545)
!552 = !DILocation(line: 193, column: 1, scope: !545)
