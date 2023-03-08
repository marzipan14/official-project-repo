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
  br i1 %19, label %20, label %22, !dbg !291

; <label>:20:                                     ; preds = %1
  store i64 0, i64* @_timezone, align 8, !dbg !292, !tbaa !294
  store i32 0, i32* @_daylight, align 4, !dbg !298, !tbaa !299
  store <2 x i8*> <i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)>, <2 x i8*>* bitcast ([2 x i8*]* @_tzname to <2 x i8*>*), align 16, !dbg !301, !tbaa !302
  %21 = load i8*, i8** @prev_tzenv, align 8, !dbg !304, !tbaa !302
  tail call void @free(i8* %21) #5, !dbg !305
  store i8* null, i8** @prev_tzenv, align 8, !dbg !306, !tbaa !302
  br label %211, !dbg !307

; <label>:22:                                     ; preds = %1
  %23 = load i8*, i8** @prev_tzenv, align 8, !dbg !308, !tbaa !302
  %24 = icmp eq i8* %23, null, !dbg !310
  br i1 %24, label %30, label %25, !dbg !311

; <label>:25:                                     ; preds = %22
  %26 = tail call i32 @strcmp(i8* nonnull %18, i8* nonnull %23) #5, !dbg !312
  %27 = icmp eq i32 %26, 0, !dbg !313
  br i1 %27, label %211, label %28, !dbg !314

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
  br i1 %35, label %38, label %36, !dbg !321

; <label>:36:                                     ; preds = %30
  %37 = tail call i8* @strcpy(i8* nonnull %34, i8* nonnull %18) #5, !dbg !322
  br label %38, !dbg !322

; <label>:38:                                     ; preds = %30, %36
  %39 = load i8, i8* %18, align 1, !dbg !323, !tbaa !325
  %40 = icmp eq i8 %39, 58, !dbg !326
  %41 = getelementptr inbounds i8, i8* %18, i64 1, !dbg !327
  %42 = select i1 %40, i8* %41, i8* %18, !dbg !328
  %43 = call i32 (i8*, i8*, ...) @siscanf(i8* nonnull %42, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_std, i64 0, i64 0), i32* nonnull %8) #5, !dbg !330
  %44 = icmp slt i32 %43, 1, !dbg !332
  br i1 %44, label %211, label %45, !dbg !333

; <label>:45:                                     ; preds = %38
  %46 = load i32, i32* %8, align 4, !dbg !334, !tbaa !299
  %47 = sext i32 %46 to i64, !dbg !335
  %48 = getelementptr inbounds i8, i8* %42, i64 %47, !dbg !335
  %49 = load i8, i8* %48, align 1, !dbg !337, !tbaa !325
  switch i8 %49, label %54 [
    i8 45, label %50
    i8 43, label %52
  ], !dbg !339

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !340
  br label %54, !dbg !342

; <label>:52:                                     ; preds = %45
  %53 = getelementptr inbounds i8, i8* %48, i64 1, !dbg !343
  br label %54, !dbg !343

; <label>:54:                                     ; preds = %45, %52, %50
  %55 = phi i64 [ -1, %50 ], [ 1, %52 ], [ 1, %45 ]
  %56 = phi i8* [ %51, %50 ], [ %53, %52 ], [ %48, %45 ], !dbg !345
  store i16 0, i16* %3, align 2, !dbg !347, !tbaa !348
  store i16 0, i16* %4, align 2, !dbg !351, !tbaa !348
  %57 = call i32 (i8*, i8*, ...) @siscanf(i8* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !353
  %58 = icmp slt i32 %57, 1, !dbg !355
  br i1 %58, label %211, label %59, !dbg !356

; <label>:59:                                     ; preds = %54
  %60 = load i16, i16* %4, align 2, !dbg !357, !tbaa !348
  %61 = zext i16 %60 to i64, !dbg !357
  %62 = load i16, i16* %3, align 2, !dbg !358, !tbaa !348
  %63 = zext i16 %62 to i64, !dbg !358
  %64 = mul nuw nsw i64 %63, 60, !dbg !359
  %65 = add nuw nsw i64 %64, %61, !dbg !360
  %66 = load i16, i16* %2, align 2, !dbg !361, !tbaa !348
  %67 = zext i16 %66 to i64, !dbg !361
  %68 = mul nuw nsw i64 %67, 3600, !dbg !362
  %69 = add nuw nsw i64 %65, %68, !dbg !363
  %70 = mul nsw i64 %69, %55, !dbg !364
  %71 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 6, !dbg !365
  store i64 %70, i64* %71, align 8, !dbg !366, !tbaa !367
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_std, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 0), align 16, !dbg !369, !tbaa !302
  %72 = load i32, i32* %8, align 4, !dbg !370, !tbaa !299
  %73 = sext i32 %72 to i64, !dbg !371
  %74 = getelementptr inbounds i8, i8* %56, i64 %73, !dbg !371
  %75 = call i32 (i8*, i8*, ...) @siscanf(i8* %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_dst, i64 0, i64 0), i32* nonnull %8) #5, !dbg !372
  %76 = icmp slt i32 %75, 1, !dbg !374
  br i1 %76, label %77, label %80, !dbg !375

; <label>:77:                                     ; preds = %59
  %78 = load i64, i64* bitcast ([2 x i8*]* @_tzname to i64*), align 16, !dbg !376, !tbaa !302
  store i64 %78, i64* bitcast (i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 1) to i64*), align 8, !dbg !378, !tbaa !302
  %79 = load i64, i64* %71, align 8, !dbg !379, !tbaa !367
  store i64 %79, i64* @_timezone, align 8, !dbg !380, !tbaa !294
  store i32 0, i32* @_daylight, align 4, !dbg !381, !tbaa !299
  br label %211, !dbg !382

; <label>:80:                                     ; preds = %59
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__tzname_dst, i64 0, i64 0), i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @_tzname, i64 0, i64 1), align 8, !dbg !383, !tbaa !302
  %81 = load i32, i32* %8, align 4, !dbg !384, !tbaa !299
  %82 = sext i32 %81 to i64, !dbg !385
  %83 = getelementptr inbounds i8, i8* %74, i64 %82, !dbg !385
  %84 = load i8, i8* %83, align 1, !dbg !386, !tbaa !325
  switch i8 %84, label %89 [
    i8 45, label %85
    i8 43, label %87
  ], !dbg !388

; <label>:85:                                     ; preds = %80
  %86 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !389
  br label %89, !dbg !391

; <label>:87:                                     ; preds = %80
  %88 = getelementptr inbounds i8, i8* %83, i64 1, !dbg !392
  br label %89, !dbg !392

; <label>:89:                                     ; preds = %80, %87, %85
  %90 = phi i64 [ -1, %85 ], [ 1, %87 ], [ 1, %80 ]
  %91 = phi i8* [ %86, %85 ], [ %88, %87 ], [ %83, %80 ], !dbg !345
  store i16 0, i16* %2, align 2, !dbg !394, !tbaa !348
  store i16 0, i16* %3, align 2, !dbg !395, !tbaa !348
  store i16 0, i16* %4, align 2, !dbg !396, !tbaa !348
  store i32 0, i32* %8, align 4, !dbg !397, !tbaa !299
  %92 = call i32 (i8*, i8*, ...) @siscanf(i8* %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !398
  %93 = icmp slt i32 %92, 1, !dbg !400
  br i1 %93, label %94, label %97, !dbg !401

; <label>:94:                                     ; preds = %89
  %95 = load i64, i64* %71, align 8, !dbg !402, !tbaa !367
  %96 = add nsw i64 %95, -3600, !dbg !403
  br label %109, !dbg !404

; <label>:97:                                     ; preds = %89
  %98 = load i16, i16* %4, align 2, !dbg !405, !tbaa !348
  %99 = zext i16 %98 to i64, !dbg !405
  %100 = load i16, i16* %3, align 2, !dbg !406, !tbaa !348
  %101 = zext i16 %100 to i64, !dbg !406
  %102 = mul nuw nsw i64 %101, 60, !dbg !407
  %103 = add nuw nsw i64 %102, %99, !dbg !408
  %104 = load i16, i16* %2, align 2, !dbg !409, !tbaa !348
  %105 = zext i16 %104 to i64, !dbg !409
  %106 = mul nuw nsw i64 %105, 3600, !dbg !410
  %107 = add nuw nsw i64 %103, %106, !dbg !411
  %108 = mul nsw i64 %107, %90, !dbg !412
  br label %109

; <label>:109:                                    ; preds = %97, %94
  %110 = phi i64 [ %108, %97 ], [ %96, %94 ]
  %111 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 6, !dbg !413
  store i64 %110, i64* %111, align 8, !dbg !414
  %112 = load i32, i32* %8, align 4, !dbg !415, !tbaa !299
  %113 = sext i32 %112 to i64, !dbg !416
  %114 = getelementptr inbounds i8, i8* %91, i64 %113, !dbg !416
  %115 = bitcast i8** %9 to i8*
  %116 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 0
  %117 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 1
  %118 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 2
  %119 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 0, i32 3
  %120 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 0
  %121 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 1
  %122 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 2
  %123 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 1, i32 3
  br label %124, !dbg !418

; <label>:124:                                    ; preds = %109, %186
  %125 = phi i64 [ 0, %109 ], [ %201, %186 ]
  %126 = phi i8* [ %114, %109 ], [ %200, %186 ]
  %127 = load i8, i8* %126, align 1, !dbg !419, !tbaa !325
  %128 = icmp eq i8 %127, 44, !dbg !421
  %129 = getelementptr inbounds i8, i8* %126, i64 1, !dbg !422
  %130 = select i1 %128, i8* %129, i8* %126, !dbg !423
  %131 = load i8, i8* %130, align 1, !dbg !424, !tbaa !325
  %132 = icmp eq i8 %131, 77, !dbg !425
  br i1 %132, label %133, label %158, !dbg !426

; <label>:133:                                    ; preds = %124
  %134 = call i32 (i8*, i8*, ...) @siscanf(i8* nonnull %130, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i16* nonnull %5, i32* nonnull %8, i16* nonnull %6, i32* nonnull %8, i16* nonnull %7, i32* nonnull %8) #5, !dbg !430
  %135 = icmp eq i32 %134, 3, !dbg !433
  br i1 %135, label %136, label %211, !dbg !434

; <label>:136:                                    ; preds = %133
  %137 = load i16, i16* %5, align 2, !dbg !435, !tbaa !348
  %138 = add i16 %137, -1, !dbg !436
  %139 = icmp ugt i16 %138, 11, !dbg !436
  br i1 %139, label %211, label %140, !dbg !436

; <label>:140:                                    ; preds = %136
  %141 = load i16, i16* %6, align 2, !dbg !437, !tbaa !348
  %142 = add i16 %141, -1, !dbg !438
  %143 = icmp ugt i16 %142, 4, !dbg !438
  %144 = load i16, i16* %7, align 2, !dbg !439
  %145 = icmp ugt i16 %144, 6, !dbg !440
  %146 = or i1 %143, %145, !dbg !438
  br i1 %146, label %211, label %147, !dbg !438

; <label>:147:                                    ; preds = %140
  %148 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 0, !dbg !441
  store i8 77, i8* %148, align 8, !dbg !442, !tbaa !443
  %149 = zext i16 %137 to i32, !dbg !444
  %150 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 1, !dbg !445
  store i32 %149, i32* %150, align 4, !dbg !446, !tbaa !447
  %151 = zext i16 %141 to i32, !dbg !448
  %152 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 2, !dbg !449
  store i32 %151, i32* %152, align 8, !dbg !450, !tbaa !451
  %153 = zext i16 %144 to i32, !dbg !452
  %154 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 3, !dbg !453
  store i32 %153, i32* %154, align 4, !dbg !454, !tbaa !455
  %155 = load i32, i32* %8, align 4, !dbg !456, !tbaa !299
  %156 = sext i32 %155 to i64, !dbg !457
  %157 = getelementptr inbounds i8, i8* %130, i64 %156, !dbg !457
  br label %177, !dbg !458

; <label>:158:                                    ; preds = %124
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %115) #4, !dbg !459
  %159 = icmp eq i8 %131, 74, !dbg !460
  %160 = getelementptr inbounds i8, i8* %130, i64 1, !dbg !463
  %161 = select i1 %159, i8* %160, i8* %130, !dbg !465
  %162 = call i64 @strtoul(i8* %161, i8** nonnull %9, i32 10) #5, !dbg !467
  %163 = trunc i64 %162 to i16, !dbg !467
  store i16 %163, i16* %7, align 2, !dbg !468, !tbaa !348
  %164 = load i8*, i8** %9, align 8, !dbg !469, !tbaa !302
  %165 = icmp eq i8* %164, %161, !dbg !471
  br i1 %165, label %166, label %170, !dbg !472

; <label>:166:                                    ; preds = %158
  %167 = icmp eq i64 %125, 0, !dbg !473
  br i1 %167, label %168, label %169, !dbg !476

; <label>:168:                                    ; preds = %166
  store i8 77, i8* %116, align 8, !dbg !477, !tbaa !443
  store i32 3, i32* %117, align 4, !dbg !479, !tbaa !447
  store i32 2, i32* %118, align 8, !dbg !480, !tbaa !451
  store i32 0, i32* %119, align 4, !dbg !481, !tbaa !455
  br label %176, !dbg !482

; <label>:169:                                    ; preds = %166
  store i8 77, i8* %120, align 8, !dbg !483, !tbaa !443
  store i32 11, i32* %121, align 4, !dbg !485, !tbaa !447
  store i32 1, i32* %122, align 8, !dbg !486, !tbaa !451
  store i32 0, i32* %123, align 4, !dbg !487, !tbaa !455
  br label %176

; <label>:170:                                    ; preds = %158
  %171 = select i1 %159, i8 74, i8 68, !dbg !465
  %172 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 0, !dbg !488
  store i8 %171, i8* %172, align 8, !dbg !490, !tbaa !443
  %173 = trunc i64 %162 to i32, !dbg !491
  %174 = and i32 %173, 65535, !dbg !491
  %175 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 3, !dbg !492
  store i32 %174, i32* %175, align 4, !dbg !493, !tbaa !455
  br label %176

; <label>:176:                                    ; preds = %168, %169, %170
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %115) #4, !dbg !494
  br label %177

; <label>:177:                                    ; preds = %176, %147
  %178 = phi i8* [ %157, %147 ], [ %164, %176 ], !dbg !495
  store i16 2, i16* %2, align 2, !dbg !496, !tbaa !348
  store i16 0, i16* %3, align 2, !dbg !497, !tbaa !348
  store i16 0, i16* %4, align 2, !dbg !498, !tbaa !348
  store i32 0, i32* %8, align 4, !dbg !499, !tbaa !299
  %179 = load i8, i8* %178, align 1, !dbg !500, !tbaa !325
  %180 = icmp eq i8 %179, 47, !dbg !502
  br i1 %180, label %181, label %186, !dbg !503

; <label>:181:                                    ; preds = %177
  %182 = call i32 (i8*, i8*, ...) @siscanf(i8* %178, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i16* nonnull %2, i32* nonnull %8, i16* nonnull %3, i32* nonnull %8, i16* nonnull %4, i32* nonnull %8) #5, !dbg !504
  %183 = load i16, i16* %4, align 2, !dbg !505, !tbaa !348
  %184 = load i16, i16* %3, align 2, !dbg !506, !tbaa !348
  %185 = load i16, i16* %2, align 2, !dbg !507, !tbaa !348
  br label %186, !dbg !504

; <label>:186:                                    ; preds = %181, %177
  %187 = phi i16 [ %185, %181 ], [ 2, %177 ], !dbg !507
  %188 = phi i16 [ %184, %181 ], [ 0, %177 ], !dbg !506
  %189 = phi i16 [ %183, %181 ], [ 0, %177 ], !dbg !505
  %190 = zext i16 %189 to i32, !dbg !505
  %191 = zext i16 %188 to i32, !dbg !506
  %192 = mul nuw nsw i32 %191, 60, !dbg !508
  %193 = add nuw nsw i32 %192, %190, !dbg !509
  %194 = zext i16 %187 to i32, !dbg !507
  %195 = mul nuw nsw i32 %194, 3600, !dbg !510
  %196 = add nuw nsw i32 %193, %195, !dbg !511
  %197 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 2, i64 %125, i32 4, !dbg !512
  store i32 %196, i32* %197, align 8, !dbg !513, !tbaa !514
  %198 = load i32, i32* %8, align 4, !dbg !515, !tbaa !299
  %199 = sext i32 %198 to i64, !dbg !516
  %200 = getelementptr inbounds i8, i8* %178, i64 %199, !dbg !516
  %201 = add nuw nsw i64 %125, 1, !dbg !517
  %202 = icmp ult i64 %201, 2, !dbg !518
  br i1 %202, label %124, label %203, !dbg !418, !llvm.loop !519

; <label>:203:                                    ; preds = %186
  %204 = getelementptr inbounds %struct.__tzinfo_struct, %struct.__tzinfo_struct* %17, i64 0, i32 1, !dbg !521
  %205 = load i32, i32* %204, align 4, !dbg !521, !tbaa !522
  %206 = call i32 @__tzcalc_limits(i32 %205) #5, !dbg !524
  %207 = load i64, i64* %71, align 8, !dbg !525, !tbaa !367
  store i64 %207, i64* @_timezone, align 8, !dbg !526, !tbaa !294
  %208 = load i64, i64* %111, align 8, !dbg !527, !tbaa !367
  %209 = icmp ne i64 %207, %208, !dbg !528
  %210 = zext i1 %209 to i32, !dbg !528
  store i32 %210, i32* @_daylight, align 4, !dbg !529, !tbaa !299
  br label %211, !dbg !530

; <label>:211:                                    ; preds = %136, %140, %133, %54, %38, %25, %203, %77, %20
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %16) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %15) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %14) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %13) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %12) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %11) #4, !dbg !530
  call void @llvm.lifetime.end.p0i8(i64 2, i8* nonnull %10) #4, !dbg !530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  ret void, !dbg !530
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
define dso_local void @_tzset_r(%struct._reent*) local_unnamed_addr #0 !dbg !531 {
  tail call void @__tz_lock() #5, !dbg !535
  tail call void @_tzset_unlocked_r(%struct._reent* %0) #6, !dbg !536
  tail call void @__tz_unlock() #5, !dbg !537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  ret void, !dbg !538
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
!327 = !DILocation(line: 47, column: 5, scope: !324)
!328 = !DILocation(line: 46, column: 7, scope: !21)
!329 = !DILocation(line: 22, column: 13, scope: !21)
!330 = !DILocation(line: 49, column: 7, scope: !331)
!331 = distinct !DILexicalBlock(scope: !21, file: !3, line: 49, column: 7)
!332 = !DILocation(line: 49, column: 58, scope: !331)
!333 = !DILocation(line: 49, column: 7, scope: !21)
!334 = !DILocation(line: 52, column: 12, scope: !21)
!335 = !DILocation(line: 52, column: 9, scope: !21)
!336 = !DILocation(line: 22, column: 7, scope: !21)
!337 = !DILocation(line: 55, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !21, file: !3, line: 55, column: 7)
!339 = !DILocation(line: 55, column: 7, scope: !21)
!340 = !DILocation(line: 58, column: 7, scope: !341)
!341 = distinct !DILexicalBlock(scope: !338, file: !3, line: 56, column: 5)
!342 = !DILocation(line: 59, column: 5, scope: !341)
!343 = !DILocation(line: 61, column: 5, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !3, line: 60, column: 12)
!345 = !DILocation(line: 0, scope: !21)
!346 = !DILocation(line: 21, column: 22, scope: !21)
!347 = !DILocation(line: 63, column: 6, scope: !21)
!348 = !{!349, !349, i64 0}
!349 = !{!"short", !296, i64 0}
!350 = !DILocation(line: 21, column: 26, scope: !21)
!351 = !DILocation(line: 64, column: 6, scope: !21)
!352 = !DILocation(line: 21, column: 18, scope: !21)
!353 = !DILocation(line: 66, column: 7, scope: !354)
!354 = distinct !DILexicalBlock(scope: !21, file: !3, line: 66, column: 7)
!355 = !DILocation(line: 66, column: 70, scope: !354)
!356 = !DILocation(line: 66, column: 7, scope: !21)
!357 = !DILocation(line: 69, column: 36, scope: !21)
!358 = !DILocation(line: 69, column: 54, scope: !21)
!359 = !DILocation(line: 69, column: 52, scope: !21)
!360 = !DILocation(line: 69, column: 39, scope: !21)
!361 = !DILocation(line: 69, column: 73, scope: !21)
!362 = !DILocation(line: 69, column: 71, scope: !21)
!363 = !DILocation(line: 69, column: 57, scope: !21)
!364 = !DILocation(line: 69, column: 33, scope: !21)
!365 = !DILocation(line: 69, column: 19, scope: !21)
!366 = !DILocation(line: 69, column: 26, scope: !21)
!367 = !{!368, !295, i64 32}
!368 = !{!"__tzrule_struct", !296, i64 0, !300, i64 4, !300, i64 8, !300, i64 12, !300, i64 16, !295, i64 24, !295, i64 32}
!369 = !DILocation(line: 70, column: 14, scope: !21)
!370 = !DILocation(line: 71, column: 12, scope: !21)
!371 = !DILocation(line: 71, column: 9, scope: !21)
!372 = !DILocation(line: 73, column: 7, scope: !373)
!373 = distinct !DILexicalBlock(scope: !21, file: !3, line: 73, column: 7)
!374 = !DILocation(line: 73, column: 58, scope: !373)
!375 = !DILocation(line: 73, column: 7, scope: !21)
!376 = !DILocation(line: 75, column: 20, scope: !377)
!377 = distinct !DILexicalBlock(scope: !373, file: !3, line: 74, column: 5)
!378 = !DILocation(line: 75, column: 18, scope: !377)
!379 = !DILocation(line: 76, column: 35, scope: !377)
!380 = !DILocation(line: 76, column: 17, scope: !377)
!381 = !DILocation(line: 77, column: 17, scope: !377)
!382 = !DILocation(line: 78, column: 7, scope: !377)
!383 = !DILocation(line: 81, column: 16, scope: !373)
!384 = !DILocation(line: 83, column: 12, scope: !21)
!385 = !DILocation(line: 83, column: 9, scope: !21)
!386 = !DILocation(line: 87, column: 7, scope: !387)
!387 = distinct !DILexicalBlock(scope: !21, file: !3, line: 87, column: 7)
!388 = !DILocation(line: 87, column: 7, scope: !21)
!389 = !DILocation(line: 90, column: 7, scope: !390)
!390 = distinct !DILexicalBlock(scope: !387, file: !3, line: 88, column: 5)
!391 = !DILocation(line: 91, column: 5, scope: !390)
!392 = !DILocation(line: 93, column: 5, scope: !393)
!393 = distinct !DILexicalBlock(scope: !387, file: !3, line: 92, column: 12)
!394 = !DILocation(line: 95, column: 6, scope: !21)
!395 = !DILocation(line: 96, column: 6, scope: !21)
!396 = !DILocation(line: 97, column: 6, scope: !21)
!397 = !DILocation(line: 99, column: 6, scope: !21)
!398 = !DILocation(line: 100, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !21, file: !3, line: 100, column: 7)
!400 = !DILocation(line: 100, column: 70, scope: !399)
!401 = !DILocation(line: 100, column: 7, scope: !21)
!402 = !DILocation(line: 101, column: 46, scope: !399)
!403 = !DILocation(line: 101, column: 53, scope: !399)
!404 = !DILocation(line: 101, column: 5, scope: !399)
!405 = !DILocation(line: 103, column: 38, scope: !399)
!406 = !DILocation(line: 103, column: 56, scope: !399)
!407 = !DILocation(line: 103, column: 54, scope: !399)
!408 = !DILocation(line: 103, column: 41, scope: !399)
!409 = !DILocation(line: 103, column: 75, scope: !399)
!410 = !DILocation(line: 103, column: 73, scope: !399)
!411 = !DILocation(line: 103, column: 59, scope: !399)
!412 = !DILocation(line: 103, column: 35, scope: !399)
!413 = !DILocation(line: 103, column: 21, scope: !399)
!414 = !DILocation(line: 103, column: 28, scope: !399)
!415 = !DILocation(line: 105, column: 12, scope: !21)
!416 = !DILocation(line: 105, column: 9, scope: !21)
!417 = !DILocation(line: 23, column: 7, scope: !21)
!418 = !DILocation(line: 107, column: 3, scope: !281)
!419 = !DILocation(line: 109, column: 11, scope: !420)
!420 = distinct !DILexicalBlock(scope: !279, file: !3, line: 109, column: 11)
!421 = !DILocation(line: 109, column: 18, scope: !420)
!422 = !DILocation(line: 110, column: 9, scope: !420)
!423 = !DILocation(line: 109, column: 11, scope: !279)
!424 = !DILocation(line: 112, column: 11, scope: !278)
!425 = !DILocation(line: 112, column: 18, scope: !278)
!426 = !DILocation(line: 112, column: 11, scope: !279)
!427 = !DILocation(line: 21, column: 30, scope: !21)
!428 = !DILocation(line: 21, column: 33, scope: !21)
!429 = !DILocation(line: 21, column: 36, scope: !21)
!430 = !DILocation(line: 114, column: 8, scope: !431)
!431 = distinct !DILexicalBlock(scope: !432, file: !3, line: 114, column: 8)
!432 = distinct !DILexicalBlock(scope: !278, file: !3, line: 113, column: 2)
!433 = !DILocation(line: 114, column: 69, scope: !431)
!434 = !DILocation(line: 114, column: 74, scope: !431)
!435 = !DILocation(line: 115, column: 8, scope: !431)
!436 = !DILocation(line: 115, column: 14, scope: !431)
!437 = !DILocation(line: 115, column: 27, scope: !431)
!438 = !DILocation(line: 115, column: 33, scope: !431)
!439 = !DILocation(line: 115, column: 45, scope: !431)
!440 = !DILocation(line: 115, column: 47, scope: !431)
!441 = !DILocation(line: 118, column: 20, scope: !432)
!442 = !DILocation(line: 118, column: 23, scope: !432)
!443 = !{!368, !296, i64 0}
!444 = !DILocation(line: 119, column: 24, scope: !432)
!445 = !DILocation(line: 119, column: 20, scope: !432)
!446 = !DILocation(line: 119, column: 22, scope: !432)
!447 = !{!368, !300, i64 4}
!448 = !DILocation(line: 120, column: 24, scope: !432)
!449 = !DILocation(line: 120, column: 20, scope: !432)
!450 = !DILocation(line: 120, column: 22, scope: !432)
!451 = !{!368, !300, i64 8}
!452 = !DILocation(line: 121, column: 24, scope: !432)
!453 = !DILocation(line: 121, column: 20, scope: !432)
!454 = !DILocation(line: 121, column: 22, scope: !432)
!455 = !{!368, !300, i64 12}
!456 = !DILocation(line: 123, column: 13, scope: !432)
!457 = !DILocation(line: 123, column: 10, scope: !432)
!458 = !DILocation(line: 124, column: 2, scope: !432)
!459 = !DILocation(line: 127, column: 4, scope: !277)
!460 = !DILocation(line: 128, column: 15, scope: !461)
!461 = distinct !DILexicalBlock(scope: !277, file: !3, line: 128, column: 8)
!462 = !DILocation(line: 23, column: 10, scope: !21)
!463 = !DILocation(line: 131, column: 8, scope: !464)
!464 = distinct !DILexicalBlock(scope: !461, file: !3, line: 129, column: 6)
!465 = !DILocation(line: 128, column: 8, scope: !277)
!466 = !DILocation(line: 127, column: 10, scope: !277)
!467 = !DILocation(line: 136, column: 8, scope: !277)
!468 = !DILocation(line: 136, column: 6, scope: !277)
!469 = !DILocation(line: 141, column: 8, scope: !470)
!470 = distinct !DILexicalBlock(scope: !277, file: !3, line: 141, column: 8)
!471 = !DILocation(line: 141, column: 12, scope: !470)
!472 = !DILocation(line: 141, column: 8, scope: !277)
!473 = !DILocation(line: 143, column: 14, scope: !474)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 143, column: 12)
!475 = distinct !DILexicalBlock(scope: !470, file: !3, line: 142, column: 6)
!476 = !DILocation(line: 143, column: 12, scope: !475)
!477 = !DILocation(line: 145, column: 24, scope: !478)
!478 = distinct !DILexicalBlock(scope: !474, file: !3, line: 144, column: 3)
!479 = !DILocation(line: 146, column: 23, scope: !478)
!480 = !DILocation(line: 147, column: 23, scope: !478)
!481 = !DILocation(line: 148, column: 23, scope: !478)
!482 = !DILocation(line: 149, column: 3, scope: !478)
!483 = !DILocation(line: 152, column: 24, scope: !484)
!484 = distinct !DILexicalBlock(scope: !474, file: !3, line: 151, column: 3)
!485 = !DILocation(line: 153, column: 23, scope: !484)
!486 = !DILocation(line: 154, column: 23, scope: !484)
!487 = !DILocation(line: 155, column: 23, scope: !484)
!488 = !DILocation(line: 160, column: 24, scope: !489)
!489 = distinct !DILexicalBlock(scope: !470, file: !3, line: 159, column: 6)
!490 = !DILocation(line: 160, column: 27, scope: !489)
!491 = !DILocation(line: 161, column: 28, scope: !489)
!492 = !DILocation(line: 161, column: 24, scope: !489)
!493 = !DILocation(line: 161, column: 26, scope: !489)
!494 = !DILocation(line: 165, column: 2, scope: !278)
!495 = !DILocation(line: 0, scope: !277)
!496 = !DILocation(line: 168, column: 10, scope: !279)
!497 = !DILocation(line: 169, column: 10, scope: !279)
!498 = !DILocation(line: 170, column: 10, scope: !279)
!499 = !DILocation(line: 171, column: 9, scope: !279)
!500 = !DILocation(line: 173, column: 11, scope: !501)
!501 = distinct !DILexicalBlock(scope: !279, file: !3, line: 173, column: 11)
!502 = !DILocation(line: 173, column: 18, scope: !501)
!503 = !DILocation(line: 173, column: 11, scope: !279)
!504 = !DILocation(line: 174, column: 2, scope: !501)
!505 = !DILocation(line: 176, column: 27, scope: !279)
!506 = !DILocation(line: 176, column: 45, scope: !279)
!507 = !DILocation(line: 176, column: 65, scope: !279)
!508 = !DILocation(line: 176, column: 43, scope: !279)
!509 = !DILocation(line: 176, column: 30, scope: !279)
!510 = !DILocation(line: 176, column: 63, scope: !279)
!511 = !DILocation(line: 176, column: 48, scope: !279)
!512 = !DILocation(line: 176, column: 23, scope: !279)
!513 = !DILocation(line: 176, column: 25, scope: !279)
!514 = !{!368, !300, i64 16}
!515 = !DILocation(line: 178, column: 16, scope: !279)
!516 = !DILocation(line: 178, column: 13, scope: !279)
!517 = !DILocation(line: 107, column: 22, scope: !280)
!518 = !DILocation(line: 107, column: 17, scope: !280)
!519 = distinct !{!519, !418, !520}
!520 = !DILocation(line: 179, column: 5, scope: !281)
!521 = !DILocation(line: 181, column: 24, scope: !21)
!522 = !{!523, !300, i64 4}
!523 = !{!"__tzinfo_struct", !300, i64 0, !300, i64 4, !296, i64 8}
!524 = !DILocation(line: 181, column: 3, scope: !21)
!525 = !DILocation(line: 182, column: 31, scope: !21)
!526 = !DILocation(line: 182, column: 13, scope: !21)
!527 = !DILocation(line: 183, column: 57, scope: !21)
!528 = !DILocation(line: 183, column: 38, scope: !21)
!529 = !DILocation(line: 183, column: 13, scope: !21)
!530 = !DILocation(line: 184, column: 1, scope: !21)
!531 = distinct !DISubprogram(name: "_tzset_r", scope: !3, file: !3, line: 187, type: !22, isLocal: false, isDefinition: true, scopeLine: 189, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !532)
!532 = !{!533}
!533 = !DILocalVariable(name: "reent_ptr", arg: 1, scope: !531, file: !3, line: 187, type: !24)
!534 = !DILocation(line: 187, column: 1, scope: !531)
!535 = !DILocation(line: 190, column: 3, scope: !531)
!536 = !DILocation(line: 191, column: 3, scope: !531)
!537 = !DILocation(line: 192, column: 3, scope: !531)
!538 = !DILocation(line: 193, column: 1, scope: !531)
