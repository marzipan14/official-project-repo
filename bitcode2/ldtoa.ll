; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldtoa.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldtoa.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.LDPARMS = type { i32, i32, i32, i32, i32, i16, i16, i16, [13 x i16], [13 x i16] }
%union.uconv = type { x86_fp80 }

@.str = private unnamed_addr constant [6 x i8] c" NaN \00", align 1
@etens = internal constant [13 x [10 x i16]] [[10 x i16] [i16 25974, i16 19090, i16 -32694, i16 5439, i16 -14004, i16 -26726, i16 -30176, i16 20994, i16 -15264, i16 29989], [10 x i16] [i16 27186, i16 -12718, i16 12954, i16 10446, i16 -22707, i16 24036, i16 -15043, i16 15197, i16 -24949, i16 23186], [10 x i16] [i16 21100, i16 20686, i16 -3701, i16 15656, i16 25869, i16 3095, i16 -32395, i16 30086, i16 -13962, i16 19784], [10 x i16] [i16 -25498, i16 22776, i16 -17328, i16 23636, i16 -13211, i16 -28218, i16 -23026, i16 -24402, i16 -7399, i16 18083], [10 x i16] [i16 -31458, i16 -5449, i16 -26370, i16 -28645, i16 -8773, i16 -8563, i16 -25095, i16 -5125, i16 -21890, i16 17233], [10 x i16] [i16 565, i16 311, i16 14001, i16 13164, i16 -14737, i16 -29473, i16 -32535, i16 18377, i16 -27718, i16 16808], [10 x i16] [i16 20728, i16 9723, i16 -14485, i16 27505, i16 15551, i16 -22827, i16 -49, i16 8009, i16 -15752, i16 16595], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 -4064, i16 -19043, i16 11120, i16 -21080, i16 -25147, i16 16489], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 1024, i16 -13889, i16 -29157, i16 16436], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 8192, i16 -16708, i16 16409], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -25536, i16 16396], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -14336, i16 16389], [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -24576, i16 16386]], align 16, !dbg !0
@eone = internal constant [10 x i16] [i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 -32768, i16 16383], align 16, !dbg !35
@.str.1 = private unnamed_addr constant [12 x i8] c" -Infinity \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c" Infinity \00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"NaN\00", align 1
@emtens = internal constant [13 x [10 x i16]] [[10 x i16] [i16 8240, i16 -12292, i16 -24125, i16 -32477, i16 11747, i16 -24610, i16 -11570, i16 1224, i16 -22819, i16 2776], [10 x i16] [i16 -32156, i16 -11573, i16 -3350, i16 4820, i16 18725, i16 11748, i16 13366, i16 21327, i16 -12626, i16 9579], [10 x i16] [i16 -2753, i16 -2408, i16 27603, i16 344, i16 -30810, i16 -16195, i16 -9641, i16 -32091, i16 -23898, i16 12981], [10 x i16] [i16 -6351, i16 1236, i16 -7182, i16 -11470, i16 28978, i16 -11748, i16 -9437, i16 -4558, i16 -28599, i16 14682], [10 x i16] [i16 -24002, i16 21256, i16 -261, i16 4437, i16 -1391, i16 6457, i16 25466, i16 17189, i16 -16335, i16 15532], [10 x i16] [i16 -7571, i16 -9250, i16 -12195, i16 -19466, i16 -21380, i16 -7008, i16 25788, i16 18044, i16 -8752, i16 15957], [10 x i16] [i16 10784, i16 25124, i16 18355, i16 -26409, i16 16163, i16 -5723, i16 -23239, i16 -5593, i16 -22401, i16 16170], [10 x i16] [i16 2907, i16 19186, i16 -23167, i16 6381, i16 26590, i16 -27462, i16 17721, i16 7853, i16 -12367, i16 16276], [10 x i16] [i16 -16527, i16 -22093, i16 31113, i16 -16792, i16 19502, i16 -7845, i16 -15283, i16 -27458, i16 -6507, i16 16329], [10 x i16] [i16 15693, i16 31805, i16 14010, i16 3371, i16 -574, i16 -12548, i16 -31647, i16 30481, i16 -21556, i16 16356], [10 x i16] [i16 -16043, i16 -23384, i16 16462, i16 24851, i16 -11325, i16 25899, i16 -7655, i16 5976, i16 -11849, i16 16369], [10 x i16] [i16 -10486, i16 28835, i16 2621, i16 -23593, i16 15728, i16 -10486, i16 28835, i16 2621, i16 -23593, i16 16376], [10 x i16] [i16 -13107, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 -13108, i16 16379]], align 16, !dbg !45
@ezero = internal constant [10 x i16] zeroinitializer, align 16, !dbg !50
@.str.4 = private unnamed_addr constant [4 x i8] c"E%d\00", align 1
@bmask = internal unnamed_addr constant [17 x i16] [i16 -1, i16 -2, i16 -4, i16 -8, i16 -16, i16 -32, i16 -64, i16 -128, i16 -256, i16 -512, i16 -1024, i16 -2048, i16 -4096, i16 -8192, i16 -16384, i16 -32768, i16 0], align 16, !dbg !40
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i8* @_ldtoa_r(%struct._reent*, x86_fp80, i32, i32, i32* nocapture, i32* nocapture, i8**) local_unnamed_addr #0 !dbg !56 {
  %8 = alloca [13 x i16], align 16
  %9 = alloca [13 x i16], align 16
  %10 = alloca [13 x i16], align 16
  %11 = alloca [13 x i16], align 16
  %12 = alloca [13 x i16], align 16
  %13 = alloca [13 x i16], align 16
  %14 = alloca [13 x i16], align 16
  %15 = alloca %struct.LDPARMS, align 4
  %16 = alloca [57 x i8], align 16
  %17 = alloca %union.uconv, align 16
  %18 = bitcast [13 x i16]* %14 to i8*, !dbg !469
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %18) #4, !dbg !469
  %19 = bitcast %struct.LDPARMS* %15 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %19) #4, !dbg !471
  %20 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 0, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %20) #4, !dbg !473
  %21 = bitcast %union.uconv* %17 to i8*, !dbg !475
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #4, !dbg !475
  %22 = getelementptr inbounds %union.uconv, %union.uconv* %17, i64 0, i32 0, !dbg !476
  store x86_fp80 %1, x86_fp80* %22, align 16, !dbg !477, !tbaa !478
  %23 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 0, !dbg !482
  store i32 -1, i32* %23, align 4, !dbg !483, !tbaa !484
  %24 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 1, !dbg !488
  store i32 144, i32* %24, align 4, !dbg !489, !tbaa !490
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 10, !dbg !491
  %26 = load %struct._Bigint*, %struct._Bigint** %25, align 8, !dbg !491, !tbaa !493
  %27 = icmp eq %struct._Bigint* %26, null, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %27, label %34, label %28, !dbg !499

; <label>:28:                                     ; preds = %7
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 11, !dbg !500
  %30 = load i32, i32* %29, align 8, !dbg !500, !tbaa !502
  %31 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %26, i64 0, i32 1, !dbg !503
  store i32 %30, i32* %31, align 8, !dbg !504, !tbaa !505
  %32 = shl i32 1, %30, !dbg !507
  %33 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %26, i64 0, i32 2, !dbg !508
  store i32 %32, i32* %33, align 4, !dbg !509, !tbaa !510
  tail call void @_Bfree(%struct._reent* nonnull %0, %struct._Bigint* nonnull %26) #5, !dbg !511
  store %struct._Bigint* null, %struct._Bigint** %25, align 8, !dbg !512, !tbaa !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br label %34, !dbg !513

; <label>:34:                                     ; preds = %7, %28
  %35 = bitcast %union.uconv* %17 to i16*, !dbg !514
  %36 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 0, !dbg !515
  call fastcc void @e64toe(i16* nonnull %35, i16* nonnull %36) #6, !dbg !516
  %37 = call fastcc i32 @eisnan(i16* nonnull %36) #5, !dbg !525
  %38 = icmp eq i32 %37, 0, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %38, label %40, label %39, !dbg !527

; <label>:39:                                     ; preds = %34
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br label %44, !dbg !530

; <label>:40:                                     ; preds = %34
  %41 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 9, !dbg !531
  %42 = load i16, i16* %41, align 2, !dbg !531, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !529
  %43 = icmp sgt i16 %42, -1, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !530
  br i1 %43, label %44, label %45, !dbg !530

; <label>:44:                                     ; preds = %39, %40
  br label %45

; <label>:45:                                     ; preds = %40, %44
  %46 = phi i32 [ 0, %44 ], [ 1, %40 ]
  store i32 %46, i32* %5, align 4, !dbg !537, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %47 = icmp eq i32 %2, 3, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %47, label %48, label %49, !dbg !541

; <label>:48:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br label %53, !dbg !542

; <label>:49:                                     ; preds = %45
  %50 = add nsw i32 %3, -1, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  %51 = icmp eq i32 %2, 0, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  br i1 %51, label %52, label %53, !dbg !542

; <label>:52:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  br label %56, !dbg !548

; <label>:53:                                     ; preds = %48, %49
  %54 = phi i32 [ %50, %49 ], [ %3, %48 ], !dbg !549
  %55 = icmp sgt i32 %54, 42, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %55, label %56, label %58, !dbg !548

; <label>:56:                                     ; preds = %53, %52
  %57 = phi i32 [ 20, %52 ], [ 42, %53 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br label %58, !dbg !553

; <label>:58:                                     ; preds = %56, %53
  %59 = phi i32 [ %54, %53 ], [ %57, %56 ], !dbg !554
  %60 = bitcast [13 x i16]* %10 to i8*, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %60) #4, !dbg !553
  %61 = bitcast [13 x i16]* %11 to i8*, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %61) #4, !dbg !553
  %62 = bitcast [13 x i16]* %12 to i8*, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %62) #4, !dbg !553
  %63 = bitcast [13 x i16]* %13 to i8*, !dbg !553
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %63) #4, !dbg !553
  %64 = load i32, i32* %24, align 4, !dbg !563, !tbaa !490
  %65 = call fastcc i32 @eisnan(i16* nonnull %36) #5, !dbg !565
  %66 = icmp eq i32 %65, 0, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  br i1 %66, label %70, label %67, !dbg !567

; <label>:67:                                     ; preds = %58
  %68 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #5, !dbg !568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  %69 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 9, !dbg !572
  br label %1102, !dbg !571

; <label>:70:                                     ; preds = %58
  store i32 144, i32* %24, align 4, !dbg !579, !tbaa !490
  %71 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %72 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 1, !dbg !595
  %73 = load i16, i16* %36, align 16, !dbg !597, !tbaa !533
  %74 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 1, !dbg !598
  store i16 %73, i16* %71, align 16, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %75 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 2, !dbg !595
  %76 = load i16, i16* %72, align 2, !dbg !597, !tbaa !533
  %77 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 2, !dbg !598
  store i16 %76, i16* %74, align 2, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %78 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 3, !dbg !595
  %79 = load i16, i16* %75, align 4, !dbg !597, !tbaa !533
  %80 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 3, !dbg !598
  store i16 %79, i16* %77, align 4, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %81 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 4, !dbg !595
  %82 = load i16, i16* %78, align 2, !dbg !597, !tbaa !533
  %83 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 4, !dbg !598
  store i16 %82, i16* %80, align 2, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %84 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 5, !dbg !595
  %85 = load i16, i16* %81, align 8, !dbg !597, !tbaa !533
  %86 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 5, !dbg !598
  store i16 %85, i16* %83, align 8, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %87 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 6, !dbg !595
  %88 = load i16, i16* %84, align 2, !dbg !597, !tbaa !533
  %89 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 6, !dbg !598
  store i16 %88, i16* %86, align 2, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %90 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 7, !dbg !595
  %91 = load i16, i16* %87, align 4, !dbg !597, !tbaa !533
  %92 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 7, !dbg !598
  store i16 %91, i16* %89, align 4, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %93 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 8, !dbg !595
  %94 = load i16, i16* %90, align 2, !dbg !597, !tbaa !533
  %95 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 8, !dbg !598
  store i16 %94, i16* %92, align 2, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %96 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 9, !dbg !595
  %97 = load i16, i16* %93, align 16, !dbg !597, !tbaa !533
  %98 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 9, !dbg !598
  store i16 %97, i16* %95, align 16, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %99 = load i16, i16* %96, align 2, !dbg !597, !tbaa !533
  store i16 %99, i16* %98, align 2, !dbg !599, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  %100 = icmp slt i16 %99, 0, !dbg !602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br i1 %100, label %101, label %103, !dbg !604

; <label>:101:                                    ; preds = %70
  %102 = and i16 %99, 32767, !dbg !606
  store i16 %102, i16* %98, align 2, !dbg !606, !tbaa !533
  br label %103, !dbg !608

; <label>:103:                                    ; preds = %70, %101
  %104 = phi i16 [ %102, %101 ], [ %99, %70 ], !dbg !609
  %105 = phi i16 [ -1, %101 ], [ 0, %70 ], !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %106 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 0, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %107 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 1, !dbg !621
  store i16 0, i16* %106, align 16, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %108 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 2, !dbg !621
  store i16 0, i16* %107, align 2, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %109 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 3, !dbg !621
  store i16 0, i16* %108, align 4, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %110 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 4, !dbg !621
  store i16 0, i16* %109, align 2, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %111 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 5, !dbg !621
  store i16 0, i16* %110, align 8, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %112 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 6, !dbg !621
  store i16 0, i16* %111, align 2, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %113 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 7, !dbg !621
  store i16 0, i16* %112, align 4, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %114 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 8, !dbg !621
  store i16 0, i16* %113, align 2, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  %115 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 9, !dbg !621
  store i16 -32768, i16* %114, align 16, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  store i16 16383, i16* %115, align 2, !dbg !622, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !620
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  %116 = icmp eq i16 %104, 0, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  br i1 %116, label %117, label %122, !dbg !626

; <label>:117:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %118 = icmp eq i16 %73, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %118, label %119, label %121, !dbg !636

; <label>:119:                                    ; preds = %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %120 = icmp eq i16 %76, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %120, label %1087, label %121, !dbg !636

; <label>:121:                                    ; preds = %1099, %1097, %1095, %1093, %1091, %1089, %1087, %119, %117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br label %135, !dbg !639

; <label>:122:                                    ; preds = %103
  %123 = icmp eq i16 %104, 32767, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br i1 %123, label %124, label %131, !dbg !638

; <label>:124:                                    ; preds = %122
  %125 = icmp eq i16 %105, 0, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %125, label %128, label %126, !dbg !646

; <label>:126:                                    ; preds = %124
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #5, !dbg !647
  br label %130, !dbg !647

; <label>:128:                                    ; preds = %124
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #5, !dbg !648
  br label %130

; <label>:130:                                    ; preds = %128, %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br label %1102, !dbg !649

; <label>:131:                                    ; preds = %122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  %132 = icmp sgt i16 %97, -1, !dbg !650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !651
  br i1 %132, label %133, label %135, !dbg !651

; <label>:133:                                    ; preds = %131
  %134 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #5, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !654
  br label %1102, !dbg !654

; <label>:135:                                    ; preds = %131, %121
  %136 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %71) #5, !dbg !655
  %137 = icmp eq i32 %136, 0, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  br i1 %137, label %701, label %138, !dbg !659

; <label>:138:                                    ; preds = %135
  %139 = icmp slt i32 %136, 0, !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  br i1 %139, label %140, label %494, !dbg !661

; <label>:140:                                    ; preds = %138
  %141 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0, !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %142 = load i16, i16* %71, align 16, !dbg !669, !tbaa !533
  %143 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1, !dbg !670
  store i16 %142, i16* %141, align 16, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %144 = load i16, i16* %74, align 2, !dbg !669, !tbaa !533
  %145 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2, !dbg !670
  store i16 %144, i16* %143, align 2, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %146 = load i16, i16* %77, align 4, !dbg !669, !tbaa !533
  %147 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3, !dbg !670
  store i16 %146, i16* %145, align 4, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %148 = load i16, i16* %80, align 2, !dbg !669, !tbaa !533
  %149 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4, !dbg !670
  store i16 %148, i16* %147, align 2, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %150 = load i16, i16* %83, align 8, !dbg !669, !tbaa !533
  %151 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5, !dbg !670
  store i16 %150, i16* %149, align 8, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %152 = load i16, i16* %86, align 2, !dbg !669, !tbaa !533
  %153 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6, !dbg !670
  store i16 %152, i16* %151, align 2, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %154 = load i16, i16* %89, align 4, !dbg !669, !tbaa !533
  %155 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7, !dbg !670
  store i16 %154, i16* %153, align 4, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %156 = load i16, i16* %92, align 2, !dbg !669, !tbaa !533
  %157 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8, !dbg !670
  store i16 %156, i16* %155, align 2, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  %158 = load i16, i16* %95, align 16, !dbg !669, !tbaa !533
  %159 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9, !dbg !670
  store i16 %158, i16* %157, align 16, !dbg !671, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store i16 16526, i16* %159, align 2, !dbg !674, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %160 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  %161 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1
  %162 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2
  %163 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3
  %164 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4
  %165 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5
  %166 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6
  %167 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7
  %168 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8
  %169 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9
  %170 = bitcast [13 x i16]* %8 to i8*
  %171 = bitcast [13 x i16]* %9 to i8*
  %172 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 0
  %173 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 0
  %174 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 1
  %175 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 1
  %176 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 2
  %177 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 3
  %178 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 4
  %179 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 5
  %180 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 6
  %181 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 7
  %182 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 8
  %183 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 9
  %184 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 10
  %185 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 11
  %186 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 2
  %187 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 3
  %188 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 4
  %189 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 5
  %190 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 6
  %191 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 7
  %192 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 8
  %193 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 9
  %194 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 10
  %195 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 11
  %196 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 12
  %197 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 12
  br label %198, !dbg !677

; <label>:198:                                    ; preds = %456, %140
  %199 = phi i32 [ 0, %140 ], [ %457, %456 ], !dbg !678
  %200 = phi i16* [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 8, i64 0), %140 ], [ %458, %456 ], !dbg !679
  %201 = phi i16 [ 16, %140 ], [ %459, %456 ], !dbg !679
  call fastcc void @ediv(i16* nonnull %200, i16* nonnull %141, i16* nonnull %106, %struct.LDPARMS* nonnull %15) #5, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %202 = load i16, i16* %106, align 16, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %203 = load i16, i16* %107, align 2, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %204 = load i16, i16* %108, align 4, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %205 = load i16, i16* %109, align 2, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %206 = load i16, i16* %110, align 8, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %207 = load i16, i16* %111, align 2, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %208 = load i16, i16* %112, align 4, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %209 = load i16, i16* %113, align 2, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %210 = load i16, i16* %114, align 16, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  %211 = load i16, i16* %115, align 2, !dbg !690, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %212 = and i16 %211, 32767, !dbg !694
  %213 = icmp ult i16 %212, 16383, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %213, label %214, label %215, !dbg !697

; <label>:214:                                    ; preds = %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %160, align 16, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %161, align 2, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %162, align 4, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %163, align 2, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %164, align 8, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %165, align 2, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %166, align 4, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %167, align 2, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %168, align 16, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store i16 0, i16* %169, align 2, !dbg !711, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br label %275, !dbg !715

; <label>:215:                                    ; preds = %198
  %216 = zext i16 %212 to i32, !dbg !694
  %217 = sub nsw i32 16526, %216, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %202, i16* %160, align 16, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %203, i16* %161, align 2, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %204, i16* %162, align 4, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %205, i16* %163, align 2, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %206, i16* %164, align 8, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %207, i16* %165, align 2, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %208, i16* %166, align 4, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %209, i16* %167, align 2, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %210, i16* %168, align 16, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store i16 %211, i16* %169, align 2, !dbg !724, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !726
  %218 = icmp slt i32 %217, 1, !dbg !727
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br i1 %218, label %219, label %220, !dbg !729

; <label>:219:                                    ; preds = %215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br label %1053, !dbg !736

; <label>:220:                                    ; preds = %215
  %221 = icmp sgt i32 %217, 15, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %221, label %222, label %267, !dbg !742

; <label>:222:                                    ; preds = %220
  %223 = add nsw i32 %216, -16527, !dbg !743
  %224 = icmp sgt i32 %223, -32, !dbg !743
  %225 = select i1 %224, i32 %223, i32 -32, !dbg !743
  %226 = sub nsw i32 16542, %216, !dbg !743
  %227 = add nsw i32 %225, %226, !dbg !743
  %228 = lshr i32 %227, 4, !dbg !743
  %229 = add nuw nsw i32 %228, 1, !dbg !743
  %230 = zext i32 %229 to i64, !dbg !743
  %231 = add nsw i32 %216, -16527, !dbg !743
  %232 = icmp sgt i32 %231, -32, !dbg !743
  %233 = select i1 %232, i32 %231, i32 -32, !dbg !743
  %234 = add nsw i32 %233, 16542, !dbg !743
  %235 = sub nsw i32 %234, %216, !dbg !743
  %236 = lshr i32 %235, 4, !dbg !743
  %237 = add nuw nsw i32 %236, 1, !dbg !743
  %238 = and i32 %237, 3, !dbg !743
  %239 = icmp eq i32 %238, 0, !dbg !743
  br i1 %239, label %248, label %240, !dbg !743

; <label>:240:                                    ; preds = %222, %240
  %241 = phi i16* [ %244, %240 ], [ %160, %222 ]
  %242 = phi i32 [ %245, %240 ], [ %217, %222 ]
  %243 = phi i32 [ %246, %240 ], [ %238, %222 ]
  %244 = getelementptr inbounds i16, i16* %241, i64 1, !dbg !743
  store i16 0, i16* %241, align 2, !dbg !745, !tbaa !533
  %245 = add nsw i32 %242, -16, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %246 = add i32 %243, -1, !dbg !742
  %247 = icmp eq i32 %246, 0, !dbg !742
  br i1 %247, label %248, label %240, !dbg !742, !llvm.loop !747

; <label>:248:                                    ; preds = %240, %222
  %249 = phi i16* [ %160, %222 ], [ %244, %240 ]
  %250 = phi i32 [ %217, %222 ], [ %245, %240 ]
  %251 = icmp ult i32 %235, 48, !dbg !743
  br i1 %251, label %261, label %252, !dbg !743

; <label>:252:                                    ; preds = %248, %252
  %253 = phi i16* [ %258, %252 ], [ %249, %248 ]
  %254 = phi i32 [ %259, %252 ], [ %250, %248 ]
  %255 = getelementptr inbounds i16, i16* %253, i64 1, !dbg !743
  store i16 0, i16* %253, align 2, !dbg !745, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %256 = getelementptr inbounds i16, i16* %253, i64 2, !dbg !743
  store i16 0, i16* %255, align 2, !dbg !745, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %257 = getelementptr inbounds i16, i16* %253, i64 3, !dbg !743
  store i16 0, i16* %256, align 2, !dbg !745, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %258 = getelementptr inbounds i16, i16* %253, i64 4, !dbg !743
  store i16 0, i16* %257, align 2, !dbg !745, !tbaa !533
  %259 = add nsw i32 %254, -64, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  %260 = icmp sgt i32 %254, 79, !dbg !741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br i1 %260, label %252, label %261, !dbg !742, !llvm.loop !749

; <label>:261:                                    ; preds = %252, %248
  %262 = getelementptr [13 x i16], [13 x i16]* %13, i64 0, i64 %230, !dbg !743
  %263 = and i32 %227, -16, !dbg !743
  %264 = sub nsw i32 16510, %216, !dbg !743
  %265 = sub nsw i32 %264, %263, !dbg !743
  %266 = load i16, i16* %262, align 2, !dbg !752, !tbaa !533
  br label %267, !dbg !753

; <label>:267:                                    ; preds = %261, %220
  %268 = phi i16 [ %202, %220 ], [ %266, %261 ], !dbg !752
  %269 = phi i32 [ %217, %220 ], [ %265, %261 ], !dbg !754
  %270 = phi i16* [ %160, %220 ], [ %262, %261 ], !dbg !754
  %271 = sext i32 %269 to i64, !dbg !753
  %272 = getelementptr inbounds [17 x i16], [17 x i16]* @bmask, i64 0, i64 %271, !dbg !753
  %273 = load i16, i16* %272, align 2, !dbg !753, !tbaa !533
  %274 = and i16 %273, %268, !dbg !752
  store i16 %274, i16* %270, align 2, !dbg !752, !tbaa !533
  br label %275, !dbg !755

; <label>:275:                                    ; preds = %267, %214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  %276 = icmp slt i16 %211, 0, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br i1 %276, label %277, label %448, !dbg !757

; <label>:277:                                    ; preds = %275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %278 = load i16, i16* %160, align 16, !dbg !761, !tbaa !533
  %279 = icmp eq i16 %202, %278, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %279, label %423, label %280, !dbg !763

; <label>:280:                                    ; preds = %444, %441, %438, %435, %432, %429, %426, %423, %277
  %281 = call fastcc i32 @eisnan(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0)) #5, !dbg !767
  %282 = icmp eq i32 %281, 0, !dbg !767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %282, label %284, label %283, !dbg !769

; <label>:283:                                    ; preds = %280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %160, align 16, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %161, align 2, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %162, align 4, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %163, align 2, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %164, align 8, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %165, align 2, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %166, align 4, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 0, i16* %167, align 2, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 -32768, i16* %168, align 16, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  store i16 16383, i16* %169, align 2, !dbg !777, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br label %421, !dbg !779

; <label>:284:                                    ; preds = %280
  %285 = call fastcc i32 @eisnan(i16* nonnull %160) #5, !dbg !780
  %286 = icmp eq i32 %285, 0, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br i1 %286, label %288, label %287, !dbg !782

; <label>:287:                                    ; preds = %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br label %421, !dbg !792

; <label>:288:                                    ; preds = %284
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %170) #4, !dbg !800
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %171) #4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  %289 = load i16, i16* %169, align 2, !dbg !811, !tbaa !533
  %290 = and i16 %289, 32767, !dbg !812
  %291 = icmp eq i16 %290, 32767, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %291, label %293, label %292, !dbg !814

; <label>:292:                                    ; preds = %288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !815
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br label %297, !dbg !817

; <label>:293:                                    ; preds = %288
  %294 = call fastcc i32 @eisnan(i16* nonnull %160) #5, !dbg !818
  %295 = icmp eq i32 %294, 0, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %295, label %296, label %297, !dbg !817

; <label>:296:                                    ; preds = %293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !831
  br label %420, !dbg !832

; <label>:297:                                    ; preds = %293, %292
  call fastcc void @emovi(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %172) #5, !dbg !833
  call fastcc void @emovi(i16* nonnull %160, i16* nonnull %173) #5, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  %298 = load i16, i16* %172, align 16, !dbg !836, !tbaa !533
  %299 = xor i16 %298, -1, !dbg !838
  store i16 %299, i16* %172, align 16, !dbg !839, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !840
  %300 = load i16, i16* %174, align 2, !dbg !841, !tbaa !533
  %301 = zext i16 %300 to i64, !dbg !841
  %302 = load i16, i16* %175, align 2, !dbg !843, !tbaa !533
  %303 = zext i16 %302 to i64, !dbg !843
  %304 = sub nsw i64 %301, %303, !dbg !845
  %305 = icmp sgt i64 %304, 0, !dbg !847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !849
  br i1 %305, label %306, label %329, !dbg !849

; <label>:306:                                    ; preds = %297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %307 = load i16, i16* %173, align 16, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %308 = load i16, i16* %176, align 4, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %309 = load i16, i16* %177, align 2, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %310 = load i16, i16* %178, align 8, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %311 = load i16, i16* %179, align 2, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %312 = load i16, i16* %180, align 4, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %313 = load i16, i16* %181, align 2, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %314 = load i16, i16* %182, align 16, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %315 = load i16, i16* %183, align 2, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %316 = load i16, i16* %184, align 4, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  %317 = load i16, i16* %185, align 2, !dbg !865, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store i16 %299, i16* %173, align 16, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store i16 %300, i16* %175, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %318 = load i16, i16* %186, align 4, !dbg !878, !tbaa !533
  store i16 %318, i16* %176, align 4, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %319 = load i16, i16* %187, align 2, !dbg !878, !tbaa !533
  store i16 %319, i16* %177, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %320 = load i16, i16* %188, align 8, !dbg !878, !tbaa !533
  store i16 %320, i16* %178, align 8, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %321 = load i16, i16* %189, align 2, !dbg !878, !tbaa !533
  store i16 %321, i16* %179, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %322 = load i16, i16* %190, align 4, !dbg !878, !tbaa !533
  store i16 %322, i16* %180, align 4, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %323 = load i16, i16* %191, align 2, !dbg !878, !tbaa !533
  store i16 %323, i16* %181, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %324 = load i16, i16* %192, align 16, !dbg !878, !tbaa !533
  store i16 %324, i16* %182, align 16, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %325 = load i16, i16* %193, align 2, !dbg !878, !tbaa !533
  store i16 %325, i16* %183, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %326 = load i16, i16* %194, align 4, !dbg !878, !tbaa !533
  store i16 %326, i16* %184, align 4, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  %327 = load i16, i16* %195, align 2, !dbg !878, !tbaa !533
  store i16 %327, i16* %185, align 2, !dbg !876, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !877
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !875
  store i16 0, i16* %196, align 8, !dbg !879, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %307, i16* %172, align 16, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %302, i16* %174, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %308, i16* %186, align 4, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %309, i16* %187, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %310, i16* %188, align 8, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %311, i16* %189, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %312, i16* %190, align 4, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %313, i16* %191, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %314, i16* %192, align 16, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %315, i16* %193, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %316, i16* %194, align 4, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 %317, i16* %195, align 2, !dbg !887, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !888
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store i16 0, i16* %197, align 8, !dbg !889, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  %328 = sub nsw i64 0, %304, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  br label %329, !dbg !892

; <label>:329:                                    ; preds = %306, %297
  %330 = phi i64 [ %328, %306 ], [ %304, %297 ], !dbg !893
  %331 = phi i64 [ %301, %306 ], [ %303, %297 ], !dbg !893
  %332 = icmp eq i64 %330, 0, !dbg !895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  br i1 %332, label %338, label %333, !dbg !897

; <label>:333:                                    ; preds = %329
  %334 = icmp slt i64 %330, -145, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %334, label %419, label %335, !dbg !901

; <label>:335:                                    ; preds = %333
  %336 = trunc i64 %330 to i32, !dbg !902
  %337 = call fastcc i32 @eshift(i16* nonnull %172, i32 %336) #5, !dbg !904
  br label %407, !dbg !905

; <label>:338:                                    ; preds = %329
  %339 = call fastcc i32 @ecmpm(i16* nonnull %172, i16* nonnull %173) #5, !dbg !906
  %340 = icmp eq i32 %339, 0, !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  br i1 %340, label %341, label %380, !dbg !911

; <label>:341:                                    ; preds = %338
  %342 = load i16, i16* %172, align 16, !dbg !912, !tbaa !533
  %343 = load i16, i16* %173, align 16, !dbg !915, !tbaa !533
  %344 = icmp eq i16 %342, %343, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !917
  br i1 %344, label %346, label %345, !dbg !917

; <label>:345:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %160, align 16, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %161, align 2, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %162, align 4, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %163, align 2, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %164, align 8, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %165, align 2, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %166, align 4, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %167, align 2, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %168, align 16, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store i16 0, i16* %169, align 2, !dbg !924, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br label %420, !dbg !927

; <label>:346:                                    ; preds = %341
  %347 = load i16, i16* %175, align 2, !dbg !928, !tbaa !533
  %348 = icmp eq i16 %347, 0, !dbg !930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !931
  br i1 %348, label %349, label %376, !dbg !931

; <label>:349:                                    ; preds = %346
  %350 = load i16, i16* %177, align 2, !dbg !932, !tbaa !533
  %351 = icmp sgt i16 %350, -1, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %351, label %352, label %373, !dbg !934

; <label>:352:                                    ; preds = %349, %367
  %353 = phi i32 [ %370, %367 ], [ 2, %349 ]
  %354 = phi i16 [ %368, %367 ], [ 0, %349 ]
  %355 = phi i16* [ %369, %367 ], [ %196, %349 ]
  %356 = load i16, i16* %355, align 2, !dbg !946, !tbaa !533
  %357 = icmp slt i16 %356, 0, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br i1 %357, label %358, label %360, !dbg !952

; <label>:358:                                    ; preds = %352
  %359 = or i16 %354, 1, !dbg !953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !954
  br label %360, !dbg !954

; <label>:360:                                    ; preds = %358, %352
  %361 = phi i16 [ %359, %358 ], [ %354, %352 ], !dbg !955
  %362 = shl i16 %356, 1, !dbg !956
  store i16 %362, i16* %355, align 2, !dbg !956, !tbaa !533
  %363 = and i16 %361, 2, !dbg !957
  %364 = icmp eq i16 %363, 0, !dbg !957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  br i1 %364, label %367, label %365, !dbg !959

; <label>:365:                                    ; preds = %360
  %366 = or i16 %362, 1, !dbg !960
  store i16 %366, i16* %355, align 2, !dbg !960, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !961
  br label %367, !dbg !961

; <label>:367:                                    ; preds = %365, %360
  %368 = shl i16 %361, 1, !dbg !962
  %369 = getelementptr inbounds i16, i16* %355, i64 -1, !dbg !963
  %370 = add nuw nsw i32 %353, 1, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !965
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  %371 = icmp eq i32 %370, 13, !dbg !967
  br i1 %371, label %372, label %352, !dbg !966, !llvm.loop !968

; <label>:372:                                    ; preds = %367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %418, !dbg !972

; <label>:373:                                    ; preds = %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  %374 = load i16, i16* %176, align 4, !dbg !980, !tbaa !533
  %375 = icmp eq i16 %374, 0, !dbg !982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br i1 %375, label %376, label %377, !dbg !974

; <label>:376:                                    ; preds = %346, %373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !979
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  br label %377, !dbg !983

; <label>:377:                                    ; preds = %376, %373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  %378 = trunc i64 %331 to i16, !dbg !985
  %379 = add i16 %378, 1, !dbg !985
  store i16 %379, i16* %175, align 2, !dbg !986, !tbaa !533
  br label %418, !dbg !987

; <label>:380:                                    ; preds = %338
  %381 = icmp sgt i32 %339, 0, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !990
  br i1 %381, label %382, label %409, !dbg !990

; <label>:382:                                    ; preds = %380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %383 = load i16, i16* %173, align 16, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %384 = load i16, i16* %175, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %385 = load i16, i16* %176, align 4, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %386 = load i16, i16* %177, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %387 = load i16, i16* %178, align 8, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %388 = load i16, i16* %179, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %389 = load i16, i16* %180, align 4, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %390 = load i16, i16* %181, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %391 = load i16, i16* %182, align 16, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %392 = load i16, i16* %183, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %393 = load i16, i16* %184, align 4, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  %394 = load i16, i16* %185, align 2, !dbg !998, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !997
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %395 = load i16, i16* %172, align 16, !dbg !1007, !tbaa !533
  store i16 %395, i16* %173, align 16, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %396 = load i16, i16* %174, align 2, !dbg !1007, !tbaa !533
  store i16 %396, i16* %175, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %397 = load i16, i16* %186, align 4, !dbg !1007, !tbaa !533
  store i16 %397, i16* %176, align 4, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %398 = load i16, i16* %187, align 2, !dbg !1007, !tbaa !533
  store i16 %398, i16* %177, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %399 = load i16, i16* %188, align 8, !dbg !1007, !tbaa !533
  store i16 %399, i16* %178, align 8, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %400 = load i16, i16* %189, align 2, !dbg !1007, !tbaa !533
  store i16 %400, i16* %179, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %401 = load i16, i16* %190, align 4, !dbg !1007, !tbaa !533
  store i16 %401, i16* %180, align 4, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %402 = load i16, i16* %191, align 2, !dbg !1007, !tbaa !533
  store i16 %402, i16* %181, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %403 = load i16, i16* %192, align 16, !dbg !1007, !tbaa !533
  store i16 %403, i16* %182, align 16, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %404 = load i16, i16* %193, align 2, !dbg !1007, !tbaa !533
  store i16 %404, i16* %183, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %405 = load i16, i16* %194, align 4, !dbg !1007, !tbaa !533
  store i16 %405, i16* %184, align 4, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  %406 = load i16, i16* %195, align 2, !dbg !1007, !tbaa !533
  store i16 %406, i16* %185, align 2, !dbg !1008, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1006
  store i16 0, i16* %196, align 8, !dbg !1010, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1016
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %383, i16* %172, align 16, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %384, i16* %174, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %385, i16* %186, align 4, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %386, i16* %187, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %387, i16* %188, align 8, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %388, i16* %189, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %389, i16* %190, align 4, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %390, i16* %191, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %391, i16* %192, align 16, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %392, i16* %193, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %393, i16* %194, align 4, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 %394, i16* %195, align 2, !dbg !1018, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1019
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1017
  store i16 0, i16* %197, align 8, !dbg !1020, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1021
  br label %407, !dbg !1022

; <label>:407:                                    ; preds = %335, %382
  %408 = phi i32 [ 0, %382 ], [ %337, %335 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br label %409, !dbg !1023

; <label>:409:                                    ; preds = %407, %380
  %410 = phi i32 [ 0, %380 ], [ %408, %407 ], !dbg !893
  %411 = load i16, i16* %172, align 16, !dbg !1023, !tbaa !533
  %412 = load i16, i16* %173, align 16, !dbg !1025, !tbaa !533
  %413 = icmp eq i16 %411, %412, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %413, label %414, label %415, !dbg !1027

; <label>:414:                                    ; preds = %409
  call fastcc void @eaddm(i16* nonnull %172, i16* nonnull %173) #5, !dbg !1028
  br label %416, !dbg !1030

; <label>:415:                                    ; preds = %409
  call fastcc void @esubm(i16* nonnull %172, i16* nonnull %173) #5, !dbg !1031
  br label %416

; <label>:416:                                    ; preds = %415, %414
  %417 = phi i32 [ 0, %414 ], [ 1, %415 ], !dbg !1033
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @emdnorm(i16* nonnull %173, i32 %410, i32 %417, i64 %331, i32 64, %struct.LDPARMS* nonnull %15) #5, !dbg !1034
  br label %418, !dbg !1034

; <label>:418:                                    ; preds = %372, %377, %416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  br label %419, !dbg !1035

; <label>:419:                                    ; preds = %418, %333
  call fastcc void @emovo(i16* nonnull %173, i16* nonnull %160) #5, !dbg !1035
  br label %420, !dbg !1036

; <label>:420:                                    ; preds = %419, %345, %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %171) #4, !dbg !1036
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %170) #4, !dbg !1036
  br label %421, !dbg !1037

; <label>:421:                                    ; preds = %420, %287, %283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  %422 = load i16, i16* %106, align 16, !dbg !1039, !tbaa !533
  br label %448, !dbg !1038

; <label>:423:                                    ; preds = %277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %424 = load i16, i16* %161, align 2, !dbg !761, !tbaa !533
  %425 = icmp eq i16 %203, %424, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %425, label %426, label %280, !dbg !763

; <label>:426:                                    ; preds = %423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %427 = load i16, i16* %162, align 4, !dbg !761, !tbaa !533
  %428 = icmp eq i16 %204, %427, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %428, label %429, label %280, !dbg !763

; <label>:429:                                    ; preds = %426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %430 = load i16, i16* %163, align 2, !dbg !761, !tbaa !533
  %431 = icmp eq i16 %205, %430, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %431, label %432, label %280, !dbg !763

; <label>:432:                                    ; preds = %429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %433 = load i16, i16* %164, align 8, !dbg !761, !tbaa !533
  %434 = icmp eq i16 %206, %433, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %434, label %435, label %280, !dbg !763

; <label>:435:                                    ; preds = %432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %436 = load i16, i16* %165, align 2, !dbg !761, !tbaa !533
  %437 = icmp eq i16 %207, %436, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %437, label %438, label %280, !dbg !763

; <label>:438:                                    ; preds = %435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %439 = load i16, i16* %166, align 4, !dbg !761, !tbaa !533
  %440 = icmp eq i16 %208, %439, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %440, label %441, label %280, !dbg !763

; <label>:441:                                    ; preds = %438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %442 = load i16, i16* %167, align 2, !dbg !761, !tbaa !533
  %443 = icmp eq i16 %209, %442, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %443, label %444, label %280, !dbg !763

; <label>:444:                                    ; preds = %441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  %445 = load i16, i16* %168, align 16, !dbg !761, !tbaa !533
  %446 = icmp eq i16 %210, %445, !dbg !762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !763
  br i1 %446, label %447, label %280, !dbg !763

; <label>:447:                                    ; preds = %444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !760
  br label %448, !dbg !731

; <label>:448:                                    ; preds = %447, %421, %275
  %449 = phi i16 [ %202, %447 ], [ %422, %421 ], [ %202, %275 ], !dbg !1039
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  %450 = load i16, i16* %160, align 16, !dbg !1042, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %451 = icmp eq i16 %449, %450, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %451, label %452, label %456, !dbg !736

; <label>:452:                                    ; preds = %448
  %453 = load i16, i16* %107, align 2, !dbg !1039, !tbaa !533
  %454 = load i16, i16* %161, align 2, !dbg !1042, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %455 = icmp eq i16 %453, %454, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %455, label %1053, label %456, !dbg !736

; <label>:456:                                    ; preds = %1083, %1079, %1075, %1071, %1067, %1063, %1059, %1053, %452, %448
  %457 = phi i32 [ %1086, %1083 ], [ %199, %1079 ], [ %199, %1075 ], [ %199, %1071 ], [ %199, %1067 ], [ %199, %1063 ], [ %199, %1059 ], [ %199, %1053 ], [ %199, %452 ], [ %199, %448 ], !dbg !679
  %458 = getelementptr inbounds i16, i16* %200, i64 10, !dbg !1044
  %459 = lshr i16 %201, 1, !dbg !1045
  %460 = icmp eq i16 %459, 0, !dbg !1046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %460, label %461, label %198, !dbg !1047, !llvm.loop !1048

; <label>:461:                                    ; preds = %456
  %462 = load i16, i16* %98, align 2, !dbg !1051, !tbaa !533
  %463 = add i16 %462, -16526, !dbg !1052
  %464 = load i16, i16* %159, align 2, !dbg !1053, !tbaa !533
  %465 = add i16 %463, %464, !dbg !1053
  store i16 %465, i16* %159, align 2, !dbg !1053, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %466 = load i16, i16* %141, align 16, !dbg !1060, !tbaa !533
  store i16 %466, i16* %71, align 16, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %467 = load i16, i16* %143, align 2, !dbg !1060, !tbaa !533
  store i16 %467, i16* %74, align 2, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %468 = load i16, i16* %145, align 4, !dbg !1060, !tbaa !533
  store i16 %468, i16* %77, align 4, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %469 = load i16, i16* %147, align 2, !dbg !1060, !tbaa !533
  store i16 %469, i16* %80, align 2, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %470 = load i16, i16* %149, align 8, !dbg !1060, !tbaa !533
  store i16 %470, i16* %83, align 8, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %471 = load i16, i16* %151, align 2, !dbg !1060, !tbaa !533
  store i16 %471, i16* %86, align 2, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %472 = load i16, i16* %153, align 4, !dbg !1060, !tbaa !533
  store i16 %472, i16* %89, align 4, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %473 = load i16, i16* %155, align 2, !dbg !1060, !tbaa !533
  store i16 %473, i16* %92, align 2, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  %474 = load i16, i16* %157, align 16, !dbg !1060, !tbaa !533
  store i16 %474, i16* %95, align 16, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store i16 %465, i16* %98, align 2, !dbg !1061, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1062
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %106, align 16, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %107, align 2, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %108, align 4, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %109, align 2, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %110, align 8, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %111, align 2, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %112, align 4, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 0, i16* %113, align 2, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 -32768, i16* %114, align 16, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store i16 16383, i16* %115, align 2, !dbg !1070, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  %475 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %141) #5, !dbg !1074
  %476 = icmp slt i32 %475, 1, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %476, label %477, label %701, !dbg !1073

; <label>:477:                                    ; preds = %461, %490
  %478 = phi i16 [ %488, %490 ], [ 4096, %461 ]
  %479 = phi i16* [ %491, %490 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 0, i64 0), %461 ]
  %480 = phi i32 [ %487, %490 ], [ %457, %461 ]
  %481 = call fastcc i32 @ecmp(i16* nonnull %479, i16* nonnull %141) #5, !dbg !1076
  %482 = icmp slt i32 %481, 1, !dbg !1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1080
  br i1 %482, label %483, label %486, !dbg !1080

; <label>:483:                                    ; preds = %477
  call fastcc void @ediv(i16* %479, i16* nonnull %141, i16* nonnull %141, %struct.LDPARMS* nonnull %15) #5, !dbg !1081
  call fastcc void @emul(i16* %479, i16* nonnull %106, i16* nonnull %106, %struct.LDPARMS* nonnull %15) #5, !dbg !1083
  %484 = zext i16 %478 to i32, !dbg !1084
  %485 = add nsw i32 %480, %484, !dbg !1085
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1086
  br label %486, !dbg !1086

; <label>:486:                                    ; preds = %483, %477
  %487 = phi i32 [ %485, %483 ], [ %480, %477 ], !dbg !1087
  %488 = lshr i16 %478, 1, !dbg !1088
  %489 = icmp eq i16 %488, 0, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %489, label %701, label %490, !dbg !1091

; <label>:490:                                    ; preds = %486
  %491 = getelementptr inbounds i16, i16* %479, i64 10, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  %492 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %141) #5, !dbg !1074
  %493 = icmp slt i32 %492, 1, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %493, label %477, label %701, !dbg !1073, !llvm.loop !1093

; <label>:494:                                    ; preds = %138
  %495 = load i16, i16* %98, align 2, !dbg !1096, !tbaa !533
  %496 = icmp eq i16 %495, 0, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1100
  br i1 %496, label %497, label %505, !dbg !1100

; <label>:497:                                    ; preds = %494
  %498 = load i16, i16* %95, align 16, !dbg !1101, !tbaa !533
  %499 = icmp sgt i16 %498, -1, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %499, label %500, label %656, !dbg !1104

; <label>:500:                                    ; preds = %497, %500
  %501 = phi i32 [ %502, %500 ], [ 0, %497 ]
  call fastcc void @emul(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %71, i16* nonnull %71, %struct.LDPARMS* nonnull %15) #5, !dbg !1105
  %502 = add nsw i32 %501, -1, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %503 = load i16, i16* %95, align 16, !dbg !1101, !tbaa !533
  %504 = icmp sgt i16 %503, -1, !dbg !1103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  br i1 %504, label %500, label %656, !dbg !1104, !llvm.loop !1108

; <label>:505:                                    ; preds = %494
  %506 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1111
  call fastcc void @emovi(i16* nonnull %71, i16* nonnull %506) #5, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  %507 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1116
  %508 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12, !dbg !1120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  %509 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %510 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1
  %511 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %512 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2
  %513 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %514 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3
  %515 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3
  %516 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4
  %517 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4
  %518 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5
  %519 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5
  %520 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6
  %521 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6
  %522 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7
  %523 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7
  %524 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8
  %525 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8
  %526 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9
  %527 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9
  %528 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10
  %529 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %530 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11
  %531 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %532 = load i16, i16* %507, align 8, !dbg !1116, !tbaa !533
  br label %533, !dbg !1122

; <label>:533:                                    ; preds = %639, %505
  %534 = phi i16 [ %532, %505 ], [ 0, %639 ], !dbg !1116
  %535 = phi i32 [ 0, %505 ], [ %650, %639 ]
  %536 = phi i32 [ 0, %505 ], [ %651, %639 ]
  %537 = and i16 %534, 7, !dbg !1123
  %538 = icmp eq i16 %537, 0, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br i1 %538, label %539, label %653, !dbg !1125

; <label>:539:                                    ; preds = %533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1130
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %540 = load i16, i16* %506, align 16, !dbg !1132, !tbaa !533
  store i16 %540, i16* %509, align 16, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %541 = load i16, i16* %510, align 2, !dbg !1132, !tbaa !533
  store i16 %541, i16* %511, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %542 = load i16, i16* %512, align 4, !dbg !1132, !tbaa !533
  store i16 %542, i16* %513, align 4, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %543 = load i16, i16* %514, align 2, !dbg !1132, !tbaa !533
  store i16 %543, i16* %515, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %544 = load i16, i16* %516, align 8, !dbg !1132, !tbaa !533
  store i16 %544, i16* %517, align 8, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %545 = load i16, i16* %518, align 2, !dbg !1132, !tbaa !533
  store i16 %545, i16* %519, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %546 = load i16, i16* %520, align 4, !dbg !1132, !tbaa !533
  store i16 %546, i16* %521, align 4, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %547 = load i16, i16* %522, align 2, !dbg !1132, !tbaa !533
  store i16 %547, i16* %523, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %548 = load i16, i16* %524, align 16, !dbg !1132, !tbaa !533
  store i16 %548, i16* %525, align 16, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %549 = load i16, i16* %526, align 2, !dbg !1132, !tbaa !533
  store i16 %549, i16* %527, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %550 = load i16, i16* %528, align 4, !dbg !1132, !tbaa !533
  store i16 %550, i16* %529, align 4, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  %551 = load i16, i16* %530, align 2, !dbg !1132, !tbaa !533
  store i16 %551, i16* %531, align 2, !dbg !1133, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1131
  store i16 0, i16* %508, align 8, !dbg !1135, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  br label %552, !dbg !1148

; <label>:552:                                    ; preds = %572, %539
  %553 = phi i16 [ %542, %539 ], [ %574, %572 ], !dbg !1149
  %554 = phi i32 [ 2, %539 ], [ %570, %572 ]
  %555 = phi i16 [ 0, %539 ], [ %573, %572 ]
  %556 = phi i16* [ %513, %539 ], [ %569, %572 ]
  %557 = and i16 %553, 1, !dbg !1153
  %558 = icmp eq i16 %557, 0, !dbg !1153
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %558, label %561, label %559, !dbg !1154

; <label>:559:                                    ; preds = %552
  %560 = or i16 %555, 1, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  br label %561, !dbg !1156

; <label>:561:                                    ; preds = %559, %552
  %562 = phi i16 [ %560, %559 ], [ %555, %552 ], !dbg !1157
  %563 = lshr i16 %553, 1, !dbg !1158
  store i16 %563, i16* %556, align 2, !dbg !1158, !tbaa !533
  %564 = and i16 %562, 2, !dbg !1159
  %565 = icmp eq i16 %564, 0, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1161
  br i1 %565, label %568, label %566, !dbg !1161

; <label>:566:                                    ; preds = %561
  %567 = or i16 %563, -32768, !dbg !1162
  store i16 %567, i16* %556, align 2, !dbg !1162, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1163
  br label %568, !dbg !1163

; <label>:568:                                    ; preds = %566, %561
  %569 = getelementptr inbounds i16, i16* %556, i64 1, !dbg !1164
  %570 = add nuw nsw i32 %554, 1, !dbg !1165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1148
  %571 = icmp eq i32 %570, 13, !dbg !1167
  br i1 %571, label %575, label %572, !dbg !1148, !llvm.loop !1168

; <label>:572:                                    ; preds = %568
  %573 = shl i16 %562, 1, !dbg !1171
  %574 = load i16, i16* %569, align 2, !dbg !1149, !tbaa !533
  br label %552, !dbg !1148

; <label>:575:                                    ; preds = %568
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1172
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  br label %576, !dbg !1178

; <label>:576:                                    ; preds = %592, %575
  %577 = phi i32 [ 2, %575 ], [ %595, %592 ]
  %578 = phi i16 [ 0, %575 ], [ %593, %592 ]
  %579 = phi i16* [ %513, %575 ], [ %594, %592 ]
  %580 = load i16, i16* %579, align 2, !dbg !1179, !tbaa !533
  %581 = and i16 %580, 1, !dbg !1180
  %582 = icmp eq i16 %581, 0, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  br i1 %582, label %585, label %583, !dbg !1181

; <label>:583:                                    ; preds = %576
  %584 = or i16 %578, 1, !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  br label %585, !dbg !1183

; <label>:585:                                    ; preds = %583, %576
  %586 = phi i16 [ %584, %583 ], [ %578, %576 ], !dbg !1184
  %587 = lshr i16 %580, 1, !dbg !1185
  store i16 %587, i16* %579, align 2, !dbg !1185, !tbaa !533
  %588 = and i16 %586, 2, !dbg !1186
  %589 = icmp eq i16 %588, 0, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  br i1 %589, label %592, label %590, !dbg !1187

; <label>:590:                                    ; preds = %585
  %591 = or i16 %587, -32768, !dbg !1188
  store i16 %591, i16* %579, align 2, !dbg !1188, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br label %592, !dbg !1189

; <label>:592:                                    ; preds = %590, %585
  %593 = shl i16 %586, 1, !dbg !1190
  %594 = getelementptr inbounds i16, i16* %579, i64 1, !dbg !1191
  %595 = add nuw nsw i32 %577, 1, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1178
  %596 = icmp eq i32 %595, 13, !dbg !1194
  br i1 %596, label %597, label %576, !dbg !1178, !llvm.loop !1168

; <label>:597:                                    ; preds = %592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1195
  call fastcc void @eaddm(i16* nonnull %506, i16* nonnull %509) #5, !dbg !1196
  %598 = load i16, i16* %511, align 2, !dbg !1197, !tbaa !533
  %599 = add i16 %598, 3, !dbg !1197
  store i16 %599, i16* %511, align 2, !dbg !1197, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %600 = load i16, i16* %513, align 4, !dbg !1199, !tbaa !533
  %601 = icmp eq i16 %600, 0, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %601, label %633, label %602, !dbg !1198

; <label>:602:                                    ; preds = %597, %628
  %603 = phi i16 [ %630, %628 ], [ %600, %597 ]
  %604 = phi i16 [ %629, %628 ], [ %599, %597 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  br label %605, !dbg !1207

; <label>:605:                                    ; preds = %625, %602
  %606 = phi i16 [ %603, %602 ], [ %627, %625 ], !dbg !1208
  %607 = phi i32 [ 2, %602 ], [ %623, %625 ]
  %608 = phi i16 [ 0, %602 ], [ %626, %625 ]
  %609 = phi i16* [ %513, %602 ], [ %622, %625 ]
  %610 = and i16 %606, 1, !dbg !1209
  %611 = icmp eq i16 %610, 0, !dbg !1209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1210
  br i1 %611, label %614, label %612, !dbg !1210

; <label>:612:                                    ; preds = %605
  %613 = or i16 %608, 1, !dbg !1211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1212
  br label %614, !dbg !1212

; <label>:614:                                    ; preds = %612, %605
  %615 = phi i16 [ %613, %612 ], [ %608, %605 ], !dbg !1213
  %616 = lshr i16 %606, 1, !dbg !1214
  store i16 %616, i16* %609, align 2, !dbg !1214, !tbaa !533
  %617 = and i16 %615, 2, !dbg !1215
  %618 = icmp eq i16 %617, 0, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %618, label %621, label %619, !dbg !1216

; <label>:619:                                    ; preds = %614
  %620 = or i16 %616, -32768, !dbg !1217
  store i16 %620, i16* %609, align 2, !dbg !1217, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br label %621, !dbg !1218

; <label>:621:                                    ; preds = %619, %614
  %622 = getelementptr inbounds i16, i16* %609, i64 1, !dbg !1219
  %623 = add nuw nsw i32 %607, 1, !dbg !1220
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  %624 = icmp eq i32 %623, 13, !dbg !1222
  br i1 %624, label %628, label %625, !dbg !1207, !llvm.loop !1168

; <label>:625:                                    ; preds = %621
  %626 = shl i16 %615, 1, !dbg !1223
  %627 = load i16, i16* %622, align 2, !dbg !1208, !tbaa !533
  br label %605, !dbg !1207

; <label>:628:                                    ; preds = %621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  %629 = add i16 %604, 1, !dbg !1225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  %630 = load i16, i16* %513, align 4, !dbg !1199, !tbaa !533
  %631 = icmp eq i16 %630, 0, !dbg !1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1198
  br i1 %631, label %632, label %602, !dbg !1198, !llvm.loop !1226

; <label>:632:                                    ; preds = %628
  store i16 %629, i16* %511, align 2, !dbg !1225, !tbaa !533
  br label %633, !dbg !1198

; <label>:633:                                    ; preds = %632, %597
  %634 = phi i16 [ %629, %632 ], [ %599, %597 ]
  %635 = load i16, i16* %508, align 8, !dbg !1120, !tbaa !533
  %636 = icmp eq i16 %635, 0, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  br i1 %636, label %637, label %653, !dbg !1230

; <label>:637:                                    ; preds = %633
  %638 = icmp ugt i16 %634, 16382, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  br i1 %638, label %653, label %639, !dbg !1233

; <label>:639:                                    ; preds = %637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %640 = load i16, i16* %509, align 16, !dbg !1240, !tbaa !533
  store i16 %640, i16* %506, align 16, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  store i16 %634, i16* %510, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  store i16 0, i16* %512, align 4, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %641 = load i16, i16* %515, align 2, !dbg !1240, !tbaa !533
  store i16 %641, i16* %514, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %642 = load i16, i16* %517, align 8, !dbg !1240, !tbaa !533
  store i16 %642, i16* %516, align 8, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %643 = load i16, i16* %519, align 2, !dbg !1240, !tbaa !533
  store i16 %643, i16* %518, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %644 = load i16, i16* %521, align 4, !dbg !1240, !tbaa !533
  store i16 %644, i16* %520, align 4, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %645 = load i16, i16* %523, align 2, !dbg !1240, !tbaa !533
  store i16 %645, i16* %522, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %646 = load i16, i16* %525, align 16, !dbg !1240, !tbaa !533
  store i16 %646, i16* %524, align 16, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %647 = load i16, i16* %527, align 2, !dbg !1240, !tbaa !533
  store i16 %647, i16* %526, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %648 = load i16, i16* %529, align 4, !dbg !1240, !tbaa !533
  store i16 %648, i16* %528, align 4, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  %649 = load i16, i16* %531, align 2, !dbg !1240, !tbaa !533
  store i16 %649, i16* %530, align 2, !dbg !1241, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1239
  store i16 0, i16* %507, align 8, !dbg !1243, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1244
  %650 = add nsw i32 %535, -1, !dbg !1245
  %651 = add nuw nsw i32 %536, 1, !dbg !1246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  %652 = icmp ult i32 %651, 43, !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1122
  br i1 %652, label %533, label %653, !dbg !1122, !llvm.loop !1249

; <label>:653:                                    ; preds = %639, %637, %633, %533
  %654 = phi i32 [ %535, %633 ], [ %535, %533 ], [ %535, %637 ], [ %650, %639 ], !dbg !1252
  call fastcc void @emovo(i16* nonnull %506, i16* nonnull %71) #5, !dbg !1253
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %655 = load i16, i16* %95, align 16, !dbg !1254, !tbaa !533
  br label %656

; <label>:656:                                    ; preds = %500, %653, %497
  %657 = phi i16 [ %655, %653 ], [ %498, %497 ], [ %503, %500 ], !dbg !1254
  %658 = phi i32 [ %654, %653 ], [ 0, %497 ], [ %502, %500 ], !dbg !678
  %659 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1261
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %660 = load i16, i16* %71, align 16, !dbg !1254, !tbaa !533
  %661 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1, !dbg !1263
  store i16 %660, i16* %659, align 16, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %662 = load i16, i16* %74, align 2, !dbg !1254, !tbaa !533
  %663 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2, !dbg !1263
  store i16 %662, i16* %661, align 2, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %664 = load i16, i16* %77, align 4, !dbg !1254, !tbaa !533
  %665 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1263
  store i16 %664, i16* %663, align 4, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %666 = load i16, i16* %80, align 2, !dbg !1254, !tbaa !533
  %667 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1263
  store i16 %666, i16* %665, align 2, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %668 = load i16, i16* %83, align 8, !dbg !1254, !tbaa !533
  %669 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1263
  store i16 %668, i16* %667, align 8, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %670 = load i16, i16* %86, align 2, !dbg !1254, !tbaa !533
  %671 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1263
  store i16 %670, i16* %669, align 2, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %672 = load i16, i16* %89, align 4, !dbg !1254, !tbaa !533
  %673 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1263
  store i16 %672, i16* %671, align 4, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %674 = load i16, i16* %92, align 2, !dbg !1254, !tbaa !533
  %675 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1263
  store i16 %674, i16* %673, align 2, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %676 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1263
  store i16 %657, i16* %675, align 16, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  %677 = load i16, i16* %98, align 2, !dbg !1254, !tbaa !533
  store i16 %677, i16* %676, align 2, !dbg !1264, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1262
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1266
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %106, align 16, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %107, align 2, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %108, align 4, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %109, align 2, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %110, align 8, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %111, align 2, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %112, align 4, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 0, i16* %113, align 2, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 -32768, i16* %114, align 16, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store i16 16383, i16* %115, align 2, !dbg !1273, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %678 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %659) #5, !dbg !1277
  %679 = icmp sgt i32 %678, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %679, label %680, label %699, !dbg !1276

; <label>:680:                                    ; preds = %656, %693
  %681 = phi i16* [ %695, %693 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @emtens, i64 0, i64 0, i64 0), %656 ]
  %682 = phi i32 [ %690, %693 ], [ %658, %656 ]
  %683 = phi i32 [ %694, %693 ], [ -4096, %656 ]
  %684 = phi i16* [ %696, %693 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 0, i64 0), %656 ]
  %685 = call fastcc i32 @ecmp(i16* nonnull %681, i16* nonnull %659) #5, !dbg !1279
  %686 = icmp sgt i32 %685, -1, !dbg !1282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1283
  br i1 %686, label %687, label %689, !dbg !1283

; <label>:687:                                    ; preds = %680
  call fastcc void @emul(i16* %684, i16* nonnull %659, i16* nonnull %659, %struct.LDPARMS* nonnull %15) #5, !dbg !1284
  call fastcc void @emul(i16* %684, i16* nonnull %106, i16* nonnull %106, %struct.LDPARMS* nonnull %15) #5, !dbg !1286
  %688 = add nsw i32 %683, %682, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1288
  br label %689, !dbg !1288

; <label>:689:                                    ; preds = %687, %680
  %690 = phi i32 [ %688, %687 ], [ %682, %680 ], !dbg !1087
  %691 = add nsw i32 %683, 1, !dbg !1289
  %692 = icmp ult i32 %691, 3, !dbg !1289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1291
  br i1 %692, label %699, label %693, !dbg !1291

; <label>:693:                                    ; preds = %689
  %694 = sdiv i32 %683, 2, !dbg !1292
  %695 = getelementptr inbounds i16, i16* %681, i64 10, !dbg !1293
  %696 = getelementptr inbounds i16, i16* %684, i64 10, !dbg !1294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  %697 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %659) #5, !dbg !1277
  %698 = icmp sgt i32 %697, 0, !dbg !1278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1276
  br i1 %698, label %680, label %699, !dbg !1276, !llvm.loop !1295

; <label>:699:                                    ; preds = %693, %689, %656
  %700 = phi i32 [ %658, %656 ], [ %690, %689 ], [ %690, %693 ], !dbg !1087
  call fastcc void @ediv(i16* nonnull %106, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %106, %struct.LDPARMS* nonnull %15) #5, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %701

; <label>:701:                                    ; preds = %490, %486, %1101, %699, %461, %135
  %702 = phi i32 [ 0, %135 ], [ %700, %699 ], [ %457, %461 ], [ 0, %1101 ], [ %487, %486 ], [ %487, %490 ], !dbg !1087
  %703 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1299
  call fastcc void @emovi(i16* nonnull %106, i16* nonnull %703) #5, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %704 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1, !dbg !1307
  %705 = load i16, i16* %703, align 16, !dbg !1308, !tbaa !533
  store i16 %705, i16* %106, align 16, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %706 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2, !dbg !1307
  %707 = load i16, i16* %704, align 2, !dbg !1308, !tbaa !533
  store i16 %707, i16* %107, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %708 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1307
  %709 = load i16, i16* %706, align 4, !dbg !1308, !tbaa !533
  store i16 %709, i16* %108, align 4, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %710 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1307
  %711 = load i16, i16* %708, align 2, !dbg !1308, !tbaa !533
  store i16 %711, i16* %109, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %712 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1307
  %713 = load i16, i16* %710, align 8, !dbg !1308, !tbaa !533
  store i16 %713, i16* %110, align 8, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %714 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1307
  %715 = load i16, i16* %712, align 2, !dbg !1308, !tbaa !533
  store i16 %715, i16* %111, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %716 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1307
  %717 = load i16, i16* %714, align 4, !dbg !1308, !tbaa !533
  store i16 %717, i16* %112, align 4, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %718 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1307
  %719 = load i16, i16* %716, align 2, !dbg !1308, !tbaa !533
  store i16 %719, i16* %113, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %720 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1307
  %721 = load i16, i16* %718, align 16, !dbg !1308, !tbaa !533
  store i16 %721, i16* %114, align 16, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %722 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10, !dbg !1307
  %723 = load i16, i16* %720, align 2, !dbg !1308, !tbaa !533
  %724 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 10, !dbg !1311
  store i16 %723, i16* %115, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %725 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11, !dbg !1307
  %726 = load i16, i16* %722, align 4, !dbg !1308, !tbaa !533
  %727 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 11, !dbg !1311
  store i16 %726, i16* %724, align 4, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %728 = load i16, i16* %725, align 2, !dbg !1308, !tbaa !533
  store i16 %728, i16* %727, align 2, !dbg !1309, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1306
  %729 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 12, !dbg !1306
  store i16 0, i16* %729, align 8, !dbg !1312, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1313
  call fastcc void @emovi(i16* nonnull %71, i16* nonnull %703) #5, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1319
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %730 = load i16, i16* %703, align 16, !dbg !1321, !tbaa !533
  store i16 %730, i16* %71, align 16, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %731 = load i16, i16* %704, align 2, !dbg !1321, !tbaa !533
  store i16 %731, i16* %74, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %732 = load i16, i16* %706, align 4, !dbg !1321, !tbaa !533
  store i16 %732, i16* %77, align 4, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %733 = load i16, i16* %708, align 2, !dbg !1321, !tbaa !533
  store i16 %733, i16* %80, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %734 = load i16, i16* %710, align 8, !dbg !1321, !tbaa !533
  store i16 %734, i16* %83, align 8, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %735 = load i16, i16* %712, align 2, !dbg !1321, !tbaa !533
  store i16 %735, i16* %86, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %736 = load i16, i16* %714, align 4, !dbg !1321, !tbaa !533
  store i16 %736, i16* %89, align 4, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %737 = load i16, i16* %716, align 2, !dbg !1321, !tbaa !533
  store i16 %737, i16* %92, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %738 = load i16, i16* %718, align 16, !dbg !1321, !tbaa !533
  store i16 %738, i16* %95, align 16, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %739 = load i16, i16* %720, align 2, !dbg !1321, !tbaa !533
  %740 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 10, !dbg !1324
  store i16 %739, i16* %98, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %741 = load i16, i16* %722, align 4, !dbg !1321, !tbaa !533
  %742 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 11, !dbg !1324
  store i16 %741, i16* %740, align 4, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %743 = load i16, i16* %725, align 2, !dbg !1321, !tbaa !533
  store i16 %743, i16* %742, align 2, !dbg !1322, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1320
  %744 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 12, !dbg !1320
  store i16 0, i16* %744, align 8, !dbg !1325, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1326
  call fastcc void @eiremain(i16* nonnull %106, i16* nonnull %71, %struct.LDPARMS* nonnull %15) #5, !dbg !1327
  %745 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 9, i64 12, !dbg !1328
  %746 = load i16, i16* %745, align 4, !dbg !1328, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %747 = icmp eq i16 %746, 0, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %747, label %748, label %847, !dbg !1331

; <label>:748:                                    ; preds = %701
  %749 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %750 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %751 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %752 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3
  %753 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4
  %754 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5
  %755 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6
  %756 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7
  %757 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8
  %758 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9
  %759 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %760 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %761 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12
  br label %762, !dbg !1331

; <label>:762:                                    ; preds = %843, %748
  %763 = phi i32 [ %702, %748 ], [ %845, %843 ]
  %764 = call fastcc i32 @ecmp(i16* nonnull %71, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #5, !dbg !1332
  %765 = icmp eq i32 %764, 0, !dbg !1333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  br i1 %765, label %847, label %766, !dbg !1329

; <label>:766:                                    ; preds = %762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  br label %767, !dbg !1340

; <label>:767:                                    ; preds = %782, %766
  %768 = phi i32 [ 2, %766 ], [ %785, %782 ]
  %769 = phi i16 [ 0, %766 ], [ %783, %782 ]
  %770 = phi i16* [ %744, %766 ], [ %784, %782 ]
  %771 = load i16, i16* %770, align 2, !dbg !1341, !tbaa !533
  %772 = icmp slt i16 %771, 0, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1343
  br i1 %772, label %773, label %775, !dbg !1343

; <label>:773:                                    ; preds = %767
  %774 = or i16 %769, 1, !dbg !1344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br label %775, !dbg !1345

; <label>:775:                                    ; preds = %773, %767
  %776 = phi i16 [ %774, %773 ], [ %769, %767 ], !dbg !1346
  %777 = shl i16 %771, 1, !dbg !1347
  store i16 %777, i16* %770, align 2, !dbg !1347, !tbaa !533
  %778 = and i16 %776, 2, !dbg !1348
  %779 = icmp eq i16 %778, 0, !dbg !1348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %779, label %782, label %780, !dbg !1349

; <label>:780:                                    ; preds = %775
  %781 = or i16 %777, 1, !dbg !1350
  store i16 %781, i16* %770, align 2, !dbg !1350, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1351
  br label %782, !dbg !1351

; <label>:782:                                    ; preds = %780, %775
  %783 = shl i16 %776, 1, !dbg !1352
  %784 = getelementptr inbounds i16, i16* %770, i64 -1, !dbg !1353
  %785 = add nuw nsw i32 %768, 1, !dbg !1354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1355
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1340
  %786 = icmp eq i32 %785, 13, !dbg !1356
  br i1 %786, label %787, label %767, !dbg !1340, !llvm.loop !968

; <label>:787:                                    ; preds = %782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %788 = load i16, i16* %71, align 16, !dbg !1364, !tbaa !533
  store i16 %788, i16* %749, align 16, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %789 = load i16, i16* %74, align 2, !dbg !1364, !tbaa !533
  store i16 %789, i16* %750, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %790 = load i16, i16* %77, align 4, !dbg !1364, !tbaa !533
  store i16 %790, i16* %751, align 4, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %791 = load i16, i16* %80, align 2, !dbg !1364, !tbaa !533
  store i16 %791, i16* %752, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %792 = load i16, i16* %83, align 8, !dbg !1364, !tbaa !533
  store i16 %792, i16* %753, align 8, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %793 = load i16, i16* %86, align 2, !dbg !1364, !tbaa !533
  store i16 %793, i16* %754, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %794 = load i16, i16* %89, align 4, !dbg !1364, !tbaa !533
  store i16 %794, i16* %755, align 4, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %795 = load i16, i16* %92, align 2, !dbg !1364, !tbaa !533
  store i16 %795, i16* %756, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %796 = load i16, i16* %95, align 16, !dbg !1364, !tbaa !533
  store i16 %796, i16* %757, align 16, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %797 = load i16, i16* %98, align 2, !dbg !1364, !tbaa !533
  store i16 %797, i16* %758, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %798 = load i16, i16* %740, align 4, !dbg !1364, !tbaa !533
  store i16 %798, i16* %759, align 4, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  %799 = load i16, i16* %742, align 2, !dbg !1364, !tbaa !533
  store i16 %799, i16* %760, align 2, !dbg !1365, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1366
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1363
  store i16 0, i16* %761, align 8, !dbg !1367, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1368
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  br label %803, !dbg !1374

; <label>:800:                                    ; preds = %818
  %801 = shl i16 %812, 1, !dbg !1375
  %802 = load i16, i16* %819, align 2, !dbg !1376, !tbaa !533
  br label %803, !dbg !1376

; <label>:803:                                    ; preds = %800, %787
  %804 = phi i16 [ %802, %800 ], [ 0, %787 ], !dbg !1376
  %805 = phi i32 [ %820, %800 ], [ 2, %787 ]
  %806 = phi i16 [ %801, %800 ], [ 0, %787 ]
  %807 = phi i16* [ %819, %800 ], [ %761, %787 ]
  %808 = icmp slt i16 %804, 0, !dbg !1377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1378
  br i1 %808, label %809, label %811, !dbg !1378

; <label>:809:                                    ; preds = %803
  %810 = or i16 %806, 1, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1380
  br label %811, !dbg !1380

; <label>:811:                                    ; preds = %809, %803
  %812 = phi i16 [ %810, %809 ], [ %806, %803 ], !dbg !1381
  %813 = shl i16 %804, 1, !dbg !1382
  store i16 %813, i16* %807, align 2, !dbg !1382, !tbaa !533
  %814 = and i16 %812, 2, !dbg !1383
  %815 = icmp eq i16 %814, 0, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1384
  br i1 %815, label %818, label %816, !dbg !1384

; <label>:816:                                    ; preds = %811
  %817 = or i16 %813, 1, !dbg !1385
  store i16 %817, i16* %807, align 2, !dbg !1385, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br label %818, !dbg !1386

; <label>:818:                                    ; preds = %816, %811
  %819 = getelementptr inbounds i16, i16* %807, i64 -1, !dbg !1387
  %820 = add nuw nsw i32 %805, 1, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1374
  %821 = icmp eq i32 %820, 13, !dbg !1390
  br i1 %821, label %822, label %800, !dbg !1374, !llvm.loop !968

; <label>:822:                                    ; preds = %818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br label %823, !dbg !1397

; <label>:823:                                    ; preds = %838, %822
  %824 = phi i32 [ 2, %822 ], [ %841, %838 ]
  %825 = phi i16 [ 0, %822 ], [ %839, %838 ]
  %826 = phi i16* [ %761, %822 ], [ %840, %838 ]
  %827 = load i16, i16* %826, align 2, !dbg !1398, !tbaa !533
  %828 = icmp slt i16 %827, 0, !dbg !1399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %828, label %829, label %831, !dbg !1400

; <label>:829:                                    ; preds = %823
  %830 = or i16 %825, 1, !dbg !1401
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1402
  br label %831, !dbg !1402

; <label>:831:                                    ; preds = %829, %823
  %832 = phi i16 [ %830, %829 ], [ %825, %823 ], !dbg !1403
  %833 = shl i16 %827, 1, !dbg !1404
  store i16 %833, i16* %826, align 2, !dbg !1404, !tbaa !533
  %834 = and i16 %832, 2, !dbg !1405
  %835 = icmp eq i16 %834, 0, !dbg !1405
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1406
  br i1 %835, label %838, label %836, !dbg !1406

; <label>:836:                                    ; preds = %831
  %837 = or i16 %833, 1, !dbg !1407
  store i16 %837, i16* %826, align 2, !dbg !1407, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br label %838, !dbg !1408

; <label>:838:                                    ; preds = %836, %831
  %839 = shl i16 %832, 1, !dbg !1409
  %840 = getelementptr inbounds i16, i16* %826, i64 -1, !dbg !1410
  %841 = add nuw nsw i32 %824, 1, !dbg !1411
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  %842 = icmp eq i32 %841, 13, !dbg !1413
  br i1 %842, label %843, label %823, !dbg !1397, !llvm.loop !968

; <label>:843:                                    ; preds = %838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  call fastcc void @eaddm(i16* nonnull %749, i16* nonnull %71) #5, !dbg !1415
  call fastcc void @eiremain(i16* nonnull %106, i16* nonnull %71, %struct.LDPARMS* nonnull %15) #5, !dbg !1416
  %844 = load i16, i16* %745, align 4, !dbg !1417, !tbaa !533
  %845 = add nsw i32 %763, -1, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1329
  %846 = icmp eq i16 %844, 0, !dbg !1330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br i1 %846, label %762, label %847, !dbg !1331, !llvm.loop !1419

; <label>:847:                                    ; preds = %843, %762, %701
  %848 = phi i32 [ %702, %701 ], [ %845, %843 ], [ %763, %762 ], !dbg !1422
  %849 = phi i16 [ %746, %701 ], [ %844, %843 ], [ 0, %762 ]
  %850 = icmp eq i16 %105, 0, !dbg !1424
  %851 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 1, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1427
  %852 = select i1 %850, i8 32, i8 45, !dbg !1427
  store i8 %852, i8* %20, align 16, !dbg !1428, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1429
  br i1 %47, label %853, label %855, !dbg !1429

; <label>:853:                                    ; preds = %847
  %854 = add nsw i32 %848, %59, !dbg !1430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br label %855, !dbg !1432

; <label>:855:                                    ; preds = %853, %847
  %856 = phi i32 [ %854, %853 ], [ %59, %847 ], !dbg !1087
  %857 = icmp sgt i32 %856, 42, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1435
  br i1 %857, label %858, label %859, !dbg !1435

; <label>:858:                                    ; preds = %855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br label %859, !dbg !1436

; <label>:859:                                    ; preds = %858, %855
  %860 = phi i32 [ 42, %858 ], [ %856, %855 ], !dbg !1437
  %861 = icmp eq i16 %849, 10, !dbg !1438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br i1 %861, label %862, label %879, !dbg !1440

; <label>:862:                                    ; preds = %859
  %863 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 2, !dbg !1441
  store i8 49, i8* %851, align 1, !dbg !1443, !tbaa !478
  %864 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 3, !dbg !1444
  store i8 46, i8* %863, align 2, !dbg !1445, !tbaa !478
  %865 = icmp sgt i32 %860, 0, !dbg !1446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %865, label %866, label %870, !dbg !1448

; <label>:866:                                    ; preds = %862
  %867 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 4, !dbg !1449
  store i8 48, i8* %864, align 1, !dbg !1451, !tbaa !478
  %868 = add nsw i32 %860, -1, !dbg !1452
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1453
  %869 = add nsw i32 %848, 1, !dbg !1454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br label %874, !dbg !1455

; <label>:870:                                    ; preds = %862
  %871 = add nsw i32 %848, 1, !dbg !1454
  %872 = icmp slt i32 %860, 0, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1455
  br i1 %872, label %873, label %874, !dbg !1455

; <label>:873:                                    ; preds = %870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br label %1049, !dbg !1459

; <label>:874:                                    ; preds = %870, %866
  %875 = phi i32 [ %869, %866 ], [ %871, %870 ]
  %876 = phi i32 [ %868, %866 ], [ 0, %870 ]
  %877 = phi i8* [ %867, %866 ], [ %864, %870 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %878 = icmp slt i32 %876, 0, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br label %885, !dbg !1465

; <label>:879:                                    ; preds = %859
  %880 = trunc i16 %849 to i8, !dbg !1466
  %881 = add i8 %880, 48, !dbg !1466
  %882 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 2, !dbg !1468
  store i8 %881, i8* %851, align 1, !dbg !1469, !tbaa !478
  %883 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 3, !dbg !1470
  store i8 46, i8* %882, align 2, !dbg !1471, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  %884 = icmp slt i32 %860, 0, !dbg !1463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %884, label %993, label %885, !dbg !1465

; <label>:885:                                    ; preds = %879, %874
  %886 = phi i1 [ %878, %874 ], [ false, %879 ]
  %887 = phi i8* [ %877, %874 ], [ %883, %879 ]
  %888 = phi i32 [ %876, %874 ], [ %860, %879 ]
  %889 = phi i32 [ %875, %874 ], [ %848, %879 ]
  %890 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %891 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %892 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %893 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3
  %894 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4
  %895 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5
  %896 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6
  %897 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7
  %898 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8
  %899 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9
  %900 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %901 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %902 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12
  %903 = zext i32 %888 to i64, !dbg !1465
  br label %904, !dbg !1465

; <label>:904:                                    ; preds = %983, %885
  %905 = phi i8* [ %887, %885 ], [ %987, %983 ]
  %906 = phi i32 [ 0, %885 ], [ %988, %983 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br label %907, !dbg !1478

; <label>:907:                                    ; preds = %922, %904
  %908 = phi i32 [ 2, %904 ], [ %925, %922 ]
  %909 = phi i16 [ 0, %904 ], [ %923, %922 ]
  %910 = phi i16* [ %744, %904 ], [ %924, %922 ]
  %911 = load i16, i16* %910, align 2, !dbg !1479, !tbaa !533
  %912 = icmp slt i16 %911, 0, !dbg !1480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1481
  br i1 %912, label %913, label %915, !dbg !1481

; <label>:913:                                    ; preds = %907
  %914 = or i16 %909, 1, !dbg !1482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1483
  br label %915, !dbg !1483

; <label>:915:                                    ; preds = %913, %907
  %916 = phi i16 [ %914, %913 ], [ %909, %907 ], !dbg !1484
  %917 = shl i16 %911, 1, !dbg !1485
  store i16 %917, i16* %910, align 2, !dbg !1485, !tbaa !533
  %918 = and i16 %916, 2, !dbg !1486
  %919 = icmp eq i16 %918, 0, !dbg !1486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1487
  br i1 %919, label %922, label %920, !dbg !1487

; <label>:920:                                    ; preds = %915
  %921 = or i16 %917, 1, !dbg !1488
  store i16 %921, i16* %910, align 2, !dbg !1488, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1489
  br label %922, !dbg !1489

; <label>:922:                                    ; preds = %920, %915
  %923 = shl i16 %916, 1, !dbg !1490
  %924 = getelementptr inbounds i16, i16* %910, i64 -1, !dbg !1491
  %925 = add nuw nsw i32 %908, 1, !dbg !1492
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %926 = icmp eq i32 %925, 13, !dbg !1494
  br i1 %926, label %927, label %907, !dbg !1478, !llvm.loop !968

; <label>:927:                                    ; preds = %922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %928 = load i16, i16* %71, align 16, !dbg !1502, !tbaa !533
  store i16 %928, i16* %890, align 16, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %929 = load i16, i16* %74, align 2, !dbg !1502, !tbaa !533
  store i16 %929, i16* %891, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %930 = load i16, i16* %77, align 4, !dbg !1502, !tbaa !533
  store i16 %930, i16* %892, align 4, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %931 = load i16, i16* %80, align 2, !dbg !1502, !tbaa !533
  store i16 %931, i16* %893, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %932 = load i16, i16* %83, align 8, !dbg !1502, !tbaa !533
  store i16 %932, i16* %894, align 8, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %933 = load i16, i16* %86, align 2, !dbg !1502, !tbaa !533
  store i16 %933, i16* %895, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %934 = load i16, i16* %89, align 4, !dbg !1502, !tbaa !533
  store i16 %934, i16* %896, align 4, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %935 = load i16, i16* %92, align 2, !dbg !1502, !tbaa !533
  store i16 %935, i16* %897, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %936 = load i16, i16* %95, align 16, !dbg !1502, !tbaa !533
  store i16 %936, i16* %898, align 16, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %937 = load i16, i16* %98, align 2, !dbg !1502, !tbaa !533
  store i16 %937, i16* %899, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %938 = load i16, i16* %740, align 4, !dbg !1502, !tbaa !533
  store i16 %938, i16* %900, align 4, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  %939 = load i16, i16* %742, align 2, !dbg !1502, !tbaa !533
  store i16 %939, i16* %901, align 2, !dbg !1503, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1501
  store i16 0, i16* %902, align 8, !dbg !1505, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  br label %943, !dbg !1512

; <label>:940:                                    ; preds = %958
  %941 = shl i16 %952, 1, !dbg !1513
  %942 = load i16, i16* %959, align 2, !dbg !1514, !tbaa !533
  br label %943, !dbg !1514

; <label>:943:                                    ; preds = %940, %927
  %944 = phi i16 [ %942, %940 ], [ 0, %927 ], !dbg !1514
  %945 = phi i32 [ %960, %940 ], [ 2, %927 ]
  %946 = phi i16 [ %941, %940 ], [ 0, %927 ]
  %947 = phi i16* [ %959, %940 ], [ %902, %927 ]
  %948 = icmp slt i16 %944, 0, !dbg !1515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1516
  br i1 %948, label %949, label %951, !dbg !1516

; <label>:949:                                    ; preds = %943
  %950 = or i16 %946, 1, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1518
  br label %951, !dbg !1518

; <label>:951:                                    ; preds = %949, %943
  %952 = phi i16 [ %950, %949 ], [ %946, %943 ], !dbg !1519
  %953 = shl i16 %944, 1, !dbg !1520
  store i16 %953, i16* %947, align 2, !dbg !1520, !tbaa !533
  %954 = and i16 %952, 2, !dbg !1521
  %955 = icmp eq i16 %954, 0, !dbg !1521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  br i1 %955, label %958, label %956, !dbg !1522

; <label>:956:                                    ; preds = %951
  %957 = or i16 %953, 1, !dbg !1523
  store i16 %957, i16* %947, align 2, !dbg !1523, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1524
  br label %958, !dbg !1524

; <label>:958:                                    ; preds = %956, %951
  %959 = getelementptr inbounds i16, i16* %947, i64 -1, !dbg !1525
  %960 = add nuw nsw i32 %945, 1, !dbg !1526
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1512
  %961 = icmp eq i32 %960, 13, !dbg !1528
  br i1 %961, label %962, label %940, !dbg !1512, !llvm.loop !968

; <label>:962:                                    ; preds = %958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  br label %963, !dbg !1535

; <label>:963:                                    ; preds = %978, %962
  %964 = phi i32 [ 2, %962 ], [ %981, %978 ]
  %965 = phi i16 [ 0, %962 ], [ %979, %978 ]
  %966 = phi i16* [ %902, %962 ], [ %980, %978 ]
  %967 = load i16, i16* %966, align 2, !dbg !1536, !tbaa !533
  %968 = icmp slt i16 %967, 0, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br i1 %968, label %969, label %971, !dbg !1538

; <label>:969:                                    ; preds = %963
  %970 = or i16 %965, 1, !dbg !1539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1540
  br label %971, !dbg !1540

; <label>:971:                                    ; preds = %969, %963
  %972 = phi i16 [ %970, %969 ], [ %965, %963 ], !dbg !1541
  %973 = shl i16 %967, 1, !dbg !1542
  store i16 %973, i16* %966, align 2, !dbg !1542, !tbaa !533
  %974 = and i16 %972, 2, !dbg !1543
  %975 = icmp eq i16 %974, 0, !dbg !1543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1544
  br i1 %975, label %978, label %976, !dbg !1544

; <label>:976:                                    ; preds = %971
  %977 = or i16 %973, 1, !dbg !1545
  store i16 %977, i16* %966, align 2, !dbg !1545, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1546
  br label %978, !dbg !1546

; <label>:978:                                    ; preds = %976, %971
  %979 = shl i16 %972, 1, !dbg !1547
  %980 = getelementptr inbounds i16, i16* %966, i64 -1, !dbg !1548
  %981 = add nuw nsw i32 %964, 1, !dbg !1549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1535
  %982 = icmp eq i32 %981, 13, !dbg !1551
  br i1 %982, label %983, label %963, !dbg !1535, !llvm.loop !968

; <label>:983:                                    ; preds = %978
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1552
  call fastcc void @eaddm(i16* nonnull %890, i16* nonnull %71) #5, !dbg !1553
  call fastcc void @eiremain(i16* nonnull %106, i16* nonnull %71, %struct.LDPARMS* nonnull %15) #5, !dbg !1554
  %984 = load i16, i16* %745, align 4, !dbg !1555, !tbaa !533
  %985 = trunc i16 %984 to i8, !dbg !1556
  %986 = add i8 %985, 48, !dbg !1556
  %987 = getelementptr inbounds i8, i8* %905, i64 1, !dbg !1557
  store i8 %986, i8* %905, align 1, !dbg !1558, !tbaa !478
  %988 = add nuw nsw i32 %906, 1, !dbg !1559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  %989 = icmp eq i32 %906, %888, !dbg !1463
  br i1 %989, label %990, label %904, !dbg !1465, !llvm.loop !1561

; <label>:990:                                    ; preds = %983
  %991 = add nuw nsw i64 %903, 1, !dbg !1465
  %992 = getelementptr i8, i8* %887, i64 %991, !dbg !1465
  br label %993, !dbg !1564

; <label>:993:                                    ; preds = %990, %879
  %994 = phi i1 [ true, %879 ], [ %886, %990 ]
  %995 = phi i32 [ %848, %879 ], [ %889, %990 ]
  %996 = phi i8* [ %883, %879 ], [ %992, %990 ], !dbg !1565
  %997 = load i16, i16* %745, align 4, !dbg !1564, !tbaa !533
  %998 = getelementptr inbounds i8, i8* %996, i64 -1, !dbg !1566
  %999 = icmp ugt i16 %997, 4, !dbg !1567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1569
  br i1 %999, label %1000, label %1049, !dbg !1569

; <label>:1000:                                   ; preds = %993
  %1001 = icmp eq i16 %997, 5, !dbg !1570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1573
  br i1 %1001, label %1002, label %1017, !dbg !1573

; <label>:1002:                                   ; preds = %1000
  call fastcc void @emovo(i16* nonnull %71, i16* nonnull %106) #5, !dbg !1574
  %1003 = call fastcc i32 @ecmp(i16* nonnull %106, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #5, !dbg !1576
  %1004 = icmp eq i32 %1003, 0, !dbg !1578
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1579
  br i1 %1004, label %1005, label %1020, !dbg !1579

; <label>:1005:                                   ; preds = %1002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1580
  br i1 %994, label %1049, label %1006, !dbg !1580

; <label>:1006:                                   ; preds = %1005
  %1007 = getelementptr inbounds i8, i8* %996, i64 -2, !dbg !1582
  %1008 = load i8, i8* %1007, align 1, !dbg !1583, !tbaa !478
  %1009 = icmp eq i8 %1008, 46, !dbg !1584
  %1010 = sext i1 %1009 to i64, !dbg !1585
  %1011 = getelementptr inbounds i8, i8* %1007, i64 %1010, !dbg !1585
  %1012 = load i8, i8* %1011, align 1, !dbg !1586, !tbaa !478
  %1013 = and i8 %1012, 1, !dbg !1587
  %1014 = icmp eq i8 %1013, 0, !dbg !1588
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  br i1 %1014, label %1049, label %1015, !dbg !1589

; <label>:1015:                                   ; preds = %1006
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  %1016 = load i8, i8* %1007, align 1, !dbg !1591, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br label %1023, !dbg !1592

; <label>:1017:                                   ; preds = %1000
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1590
  %1018 = getelementptr inbounds i8, i8* %996, i64 -2, !dbg !1593
  %1019 = load i8, i8* %1018, align 1, !dbg !1591, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %994, label %1028, label %1023, !dbg !1592

; <label>:1020:                                   ; preds = %1002
  %1021 = getelementptr inbounds i8, i8* %996, i64 -2, !dbg !1593
  %1022 = load i8, i8* %1021, align 1, !dbg !1591, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  br i1 %994, label %1028, label %1023, !dbg !1592

; <label>:1023:                                   ; preds = %1020, %1017, %1015
  %1024 = phi i8 [ %1019, %1017 ], [ %1022, %1020 ], [ %1016, %1015 ]
  %1025 = phi i8* [ %1018, %1017 ], [ %1021, %1020 ], [ %1007, %1015 ]
  %1026 = and i8 %1024, 127, !dbg !1594
  %1027 = icmp eq i8 %1026, 46, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %1027, label %1031, label %1039, !dbg !1598

; <label>:1028:                                   ; preds = %1020, %1017
  %1029 = phi i8* [ %1018, %1017 ], [ %1021, %1020 ]
  store i8 49, i8* %1029, align 1, !dbg !1599, !tbaa !478
  %1030 = add nsw i32 %995, 1, !dbg !1601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1602
  br label %1049, !dbg !1602

; <label>:1031:                                   ; preds = %1044, %1023
  %1032 = phi i8* [ %998, %1023 ], [ %1041, %1044 ]
  %1033 = getelementptr inbounds i8, i8* %1032, i64 -2, !dbg !1603
  %1034 = load i8, i8* %1033, align 1, !dbg !1605, !tbaa !478
  %1035 = add i8 %1034, 1, !dbg !1606
  store i8 %1035, i8* %1033, align 1, !dbg !1607, !tbaa !478
  %1036 = icmp sgt i8 %1034, 56, !dbg !1608
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br i1 %1036, label %1037, label %1049, !dbg !1610

; <label>:1037:                                   ; preds = %1031
  %1038 = add nsw i32 %995, 1, !dbg !1611
  store i8 49, i8* %1033, align 1, !dbg !1613, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br label %1049, !dbg !1614

; <label>:1039:                                   ; preds = %1023, %1044
  %1040 = phi i8 [ %1047, %1044 ], [ %1026, %1023 ]
  %1041 = phi i8* [ %1045, %1044 ], [ %1025, %1023 ]
  %1042 = add nuw i8 %1040, 1, !dbg !1615
  store i8 %1042, i8* %1041, align 1, !dbg !1616, !tbaa !478
  %1043 = icmp ugt i8 %1040, 56, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %1043, label %1044, label %1049, !dbg !1619

; <label>:1044:                                   ; preds = %1039
  store i8 48, i8* %1041, align 1, !dbg !1620, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1622
  %1045 = getelementptr inbounds i8, i8* %1041, i64 -1, !dbg !1593
  %1046 = load i8, i8* %1045, align 1, !dbg !1591, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1592
  %1047 = and i8 %1046, 127, !dbg !1594
  %1048 = icmp eq i8 %1047, 46, !dbg !1595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  br i1 %1048, label %1031, label %1039, !dbg !1598

; <label>:1049:                                   ; preds = %1039, %1037, %1031, %1028, %1006, %1005, %993, %873
  %1050 = phi i32 [ %871, %873 ], [ %1030, %1028 ], [ %1038, %1037 ], [ %995, %1031 ], [ %995, %1005 ], [ %995, %1006 ], [ %995, %993 ], [ %995, %1039 ], !dbg !1623
  %1051 = phi i8* [ %864, %873 ], [ %998, %1028 ], [ %998, %1037 ], [ %998, %1031 ], [ %998, %1005 ], [ %998, %1006 ], [ %998, %993 ], [ %998, %1039 ], !dbg !1087
  %1052 = call i32 (i8*, i8*, ...) @sprintf(i8* %1051, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %1050) #5, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1624
  br label %1102, !dbg !1624

; <label>:1053:                                   ; preds = %219, %452
  %1054 = phi i16 [ %202, %219 ], [ %449, %452 ]
  %1055 = phi i16 [ %203, %219 ], [ %454, %452 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1056 = load i16, i16* %108, align 4, !dbg !1039, !tbaa !533
  %1057 = load i16, i16* %162, align 4, !dbg !1042, !tbaa !533
  %1058 = icmp eq i16 %1056, %1057, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1058, label %1059, label %456, !dbg !736

; <label>:1059:                                   ; preds = %1053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1060 = load i16, i16* %109, align 2, !dbg !1039, !tbaa !533
  %1061 = load i16, i16* %163, align 2, !dbg !1042, !tbaa !533
  %1062 = icmp eq i16 %1060, %1061, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1062, label %1063, label %456, !dbg !736

; <label>:1063:                                   ; preds = %1059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1064 = load i16, i16* %110, align 8, !dbg !1039, !tbaa !533
  %1065 = load i16, i16* %164, align 8, !dbg !1042, !tbaa !533
  %1066 = icmp eq i16 %1064, %1065, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1066, label %1067, label %456, !dbg !736

; <label>:1067:                                   ; preds = %1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1068 = load i16, i16* %111, align 2, !dbg !1039, !tbaa !533
  %1069 = load i16, i16* %165, align 2, !dbg !1042, !tbaa !533
  %1070 = icmp eq i16 %1068, %1069, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1070, label %1071, label %456, !dbg !736

; <label>:1071:                                   ; preds = %1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1072 = load i16, i16* %112, align 4, !dbg !1039, !tbaa !533
  %1073 = load i16, i16* %166, align 4, !dbg !1042, !tbaa !533
  %1074 = icmp eq i16 %1072, %1073, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1074, label %1075, label %456, !dbg !736

; <label>:1075:                                   ; preds = %1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1076 = load i16, i16* %113, align 2, !dbg !1039, !tbaa !533
  %1077 = load i16, i16* %167, align 2, !dbg !1042, !tbaa !533
  %1078 = icmp eq i16 %1076, %1077, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1078, label %1079, label %456, !dbg !736

; <label>:1079:                                   ; preds = %1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  %1080 = load i16, i16* %114, align 16, !dbg !1039, !tbaa !533
  %1081 = load i16, i16* %168, align 16, !dbg !1042, !tbaa !533
  %1082 = icmp eq i16 %1080, %1081, !dbg !1043
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %1082, label %1083, label %456, !dbg !736

; <label>:1083:                                   ; preds = %1079
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1629
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1054, i16* %141, align 16, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1055, i16* %143, align 2, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1056, i16* %145, align 4, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1060, i16* %147, align 2, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1064, i16* %149, align 8, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1068, i16* %151, align 2, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1072, i16* %153, align 4, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1076, i16* %155, align 2, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store i16 %1080, i16* %157, align 16, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  %1084 = load i16, i16* %115, align 2, !dbg !1633, !tbaa !533
  store i16 %1084, i16* %159, align 2, !dbg !1631, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1634
  %1085 = zext i16 %201 to i32, !dbg !1635
  %1086 = add nsw i32 %199, %1085, !dbg !1636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1637
  br label %456, !dbg !1637

; <label>:1087:                                   ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1088 = icmp eq i16 %79, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1088, label %1089, label %121, !dbg !636

; <label>:1089:                                   ; preds = %1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1090 = icmp eq i16 %82, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1090, label %1091, label %121, !dbg !636

; <label>:1091:                                   ; preds = %1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1092 = icmp eq i16 %85, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1092, label %1093, label %121, !dbg !636

; <label>:1093:                                   ; preds = %1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1094 = icmp eq i16 %88, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1094, label %1095, label %121, !dbg !636

; <label>:1095:                                   ; preds = %1093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1096 = icmp eq i16 %91, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1096, label %1097, label %121, !dbg !636

; <label>:1097:                                   ; preds = %1095
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1098 = icmp eq i16 %94, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1098, label %1099, label %121, !dbg !636

; <label>:1099:                                   ; preds = %1097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  %1100 = icmp eq i16 %97, 0, !dbg !632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  br i1 %1100, label %1101, label %121, !dbg !636

; <label>:1101:                                   ; preds = %1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !631
  br label %701, !dbg !1299

; <label>:1102:                                   ; preds = %67, %130, %133, %1049
  %1103 = phi i16* [ %69, %67 ], [ %96, %130 ], [ %96, %133 ], [ %96, %1049 ], !dbg !572
  %1104 = phi i32 [ 9999, %67 ], [ 9999, %130 ], [ 9999, %133 ], [ %1050, %1049 ], !dbg !1623
  store i32 %64, i32* %24, align 4, !dbg !1638, !tbaa !490
  %1105 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 4, !dbg !1639
  store i32 %1104, i32* %1105, align 4, !dbg !1640, !tbaa !1641
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %63) #4, !dbg !1642
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %62) #4, !dbg !1642
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %61) #4, !dbg !1642
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %60) #4, !dbg !1642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1642
  %1106 = load i16, i16* %1103, align 2, !dbg !572, !tbaa !533
  %1107 = and i16 %1106, 32767, !dbg !1645
  %1108 = icmp eq i16 %1107, 32767, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br i1 %1108, label %1110, label %1109, !dbg !1647

; <label>:1109:                                   ; preds = %1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br label %1113, !dbg !1650

; <label>:1110:                                   ; preds = %1102
  %1111 = call fastcc i32 @eisnan(i16* nonnull %36) #5, !dbg !1651
  %1112 = icmp eq i32 %1111, 0, !dbg !1651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %1112, label %1116, label %1113, !dbg !1650

; <label>:1113:                                   ; preds = %1110, %1109
  %1114 = call fastcc i32 @eisnan(i16* nonnull %36) #6, !dbg !1654
  %1115 = icmp eq i32 %1114, 0, !dbg !1654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  br i1 %1115, label %1117, label %1116, !dbg !1655

; <label>:1116:                                   ; preds = %1110, %1113
  store i32 9999, i32* %4, align 4, !dbg !1656, !tbaa !538
  br label %1158, !dbg !1658

; <label>:1117:                                   ; preds = %1113
  %1118 = load i32, i32* %1105, align 4, !dbg !1659, !tbaa !1641
  %1119 = add nsw i32 %1118, 1, !dbg !1660
  store i32 %1119, i32* %4, align 4, !dbg !1661, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  %1120 = load i8, i8* %20, align 16, !dbg !1663, !tbaa !478
  %1121 = icmp eq i8 %1120, 0, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %1121, label %1142, label %1122, !dbg !1662

; <label>:1122:                                   ; preds = %1117, %1128
  %1123 = phi i8 [ %1131, %1128 ], [ %1120, %1117 ]
  %1124 = phi i64 [ %1129, %1128 ], [ 0, %1117 ]
  %1125 = icmp eq i8 %1123, 46, !dbg !1665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1668
  br i1 %1125, label %1126, label %1128, !dbg !1668

; <label>:1126:                                   ; preds = %1122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  %1127 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1124, !dbg !1643
  br label %1133, !dbg !1670

; <label>:1128:                                   ; preds = %1122
  %1129 = add nuw nsw i64 %1124, 1, !dbg !1672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  %1130 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1129, !dbg !1643
  %1131 = load i8, i8* %1130, align 1, !dbg !1663, !tbaa !478
  %1132 = icmp eq i8 %1131, 0, !dbg !1664
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1662
  br i1 %1132, label %1144, label %1122, !dbg !1662, !llvm.loop !1673

; <label>:1133:                                   ; preds = %1126, %1133
  %1134 = phi i8* [ %1139, %1133 ], [ %1127, %1126 ]
  %1135 = phi i64 [ %1138, %1133 ], [ %1124, %1126 ]
  %1136 = getelementptr inbounds i8, i8* %1134, i64 1, !dbg !1670
  %1137 = load i8, i8* %1136, align 1, !dbg !1675, !tbaa !478
  store i8 %1137, i8* %1134, align 1, !dbg !1676, !tbaa !478
  %1138 = add nuw nsw i64 %1135, 1, !dbg !1677
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  %1139 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1138, !dbg !1643
  %1140 = load i8, i8* %1139, align 1, !dbg !1678, !tbaa !478
  %1141 = icmp eq i8 %1140, 0, !dbg !1679
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1669
  br i1 %1141, label %1144, label %1133, !dbg !1669, !llvm.loop !1680

; <label>:1142:                                   ; preds = %1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  %1143 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 0, !dbg !1643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br label %1156

; <label>:1144:                                   ; preds = %1128, %1133
  %1145 = phi i64 [ %1138, %1133 ], [ %1129, %1128 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br label %1146, !dbg !1683

; <label>:1146:                                   ; preds = %1144, %1146
  %1147 = phi i64 [ %1148, %1146 ], [ %1145, %1144 ]
  %1148 = add nsw i64 %1147, -1, !dbg !1683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  %1149 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1148, !dbg !1643
  %1150 = load i8, i8* %1149, align 1, !dbg !1684, !tbaa !478
  %1151 = icmp ne i8 %1150, 69, !dbg !1685
  %1152 = icmp sgt i64 %1147, 1, !dbg !1686
  %1153 = and i1 %1152, %1151, !dbg !1687
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1682
  br i1 %1153, label %1146, label %1154, !dbg !1682, !llvm.loop !1688

; <label>:1154:                                   ; preds = %1146
  %1155 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1148, !dbg !1643
  br label %1156, !dbg !1690

; <label>:1156:                                   ; preds = %1154, %1142
  %1157 = phi i8* [ %1143, %1142 ], [ %1155, %1154 ], !dbg !1643
  store i8 0, i8* %1157, align 1, !dbg !1690, !tbaa !478
  br label %1158, !dbg !1691

; <label>:1158:                                   ; preds = %1156, %1116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  br label %1159, !dbg !1694

; <label>:1159:                                   ; preds = %1165, %1158
  %1160 = phi i8* [ %20, %1158 ], [ %1166, %1165 ], !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  %1161 = load i8, i8* %1160, align 1, !dbg !1695, !tbaa !478
  %1162 = icmp eq i8 %1161, 32, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1697
  br i1 %1162, label %1165, label %1163, !dbg !1697

; <label>:1163:                                   ; preds = %1159
  %1164 = icmp eq i8 %1161, 45, !dbg !1698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  br i1 %1164, label %1165, label %1167, !dbg !1694

; <label>:1165:                                   ; preds = %1159, %1163
  %1166 = getelementptr inbounds i8, i8* %1160, i64 1, !dbg !1699
  br label %1159, !dbg !1694, !llvm.loop !1700

; <label>:1167:                                   ; preds = %1163
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  br label %1168, !dbg !1702

; <label>:1168:                                   ; preds = %1168, %1167
  %1169 = phi i8* [ %1160, %1167 ], [ %1171, %1168 ], !dbg !1428
  %1170 = phi i8* [ %20, %1167 ], [ %1173, %1168 ], !dbg !1428
  %1171 = getelementptr inbounds i8, i8* %1169, i64 1, !dbg !1703
  %1172 = load i8, i8* %1169, align 1, !dbg !1704, !tbaa !478
  %1173 = getelementptr inbounds i8, i8* %1170, i64 1, !dbg !1705
  store i8 %1172, i8* %1170, align 1, !dbg !1706, !tbaa !478
  %1174 = icmp eq i8 %1172, 0, !dbg !1707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1702
  br i1 %1174, label %1175, label %1168, !dbg !1702, !llvm.loop !1708

; <label>:1175:                                   ; preds = %1168
  %1176 = icmp eq i32 %2, 2, !dbg !1710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1712
  br i1 %1176, label %1177, label %1178, !dbg !1712

; <label>:1177:                                   ; preds = %1175
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1714
  br label %1183, !dbg !1714

; <label>:1178:                                   ; preds = %1175
  %1179 = load i32, i32* %1105, align 4, !dbg !1715, !tbaa !1641
  %1180 = icmp sgt i32 %59, %1179, !dbg !1717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1718
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1181 = select i1 %1180, i32 %59, i32 %1179, !dbg !1719
  %1182 = sext i32 %1181 to i64, !dbg !1719
  br label %1183, !dbg !1719

; <label>:1183:                                   ; preds = %1178, %1177
  %1184 = phi i64 [ 1, %1177 ], [ %1182, %1178 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %1185 = getelementptr inbounds i8, i8* %1170, i64 -1, !dbg !1721
  %1186 = load i8, i8* %1185, align 1, !dbg !1722, !tbaa !478
  %1187 = icmp eq i8 %1186, 48, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  br i1 %1187, label %1188, label %1200, !dbg !1724

; <label>:1188:                                   ; preds = %1183
  %1189 = ptrtoint [57 x i8]* %16 to i64
  br label %1190, !dbg !1724

; <label>:1190:                                   ; preds = %1188, %1196
  %1191 = phi i8* [ %1185, %1188 ], [ %1197, %1196 ]
  %1192 = phi i8* [ %1170, %1188 ], [ %1191, %1196 ]
  %1193 = ptrtoint i8* %1192 to i64, !dbg !1725
  %1194 = sub i64 %1193, %1189, !dbg !1725
  %1195 = icmp sgt i64 %1194, %1184, !dbg !1726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  br i1 %1195, label %1196, label %1200, !dbg !1720

; <label>:1196:                                   ; preds = %1190
  store i8 0, i8* %1191, align 1, !dbg !1727, !tbaa !478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1720
  %1197 = getelementptr inbounds i8, i8* %1191, i64 -1, !dbg !1721
  %1198 = load i8, i8* %1197, align 1, !dbg !1722, !tbaa !478
  %1199 = icmp eq i8 %1198, 48, !dbg !1723
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1724
  br i1 %1199, label %1190, label %1200, !dbg !1724, !llvm.loop !1728

; <label>:1200:                                   ; preds = %1190, %1196, %1183
  %1201 = phi i8* [ %1170, %1183 ], [ %1191, %1196 ], [ %1192, %1190 ], !dbg !1428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  br i1 %47, label %1202, label %1214, !dbg !1730

; <label>:1202:                                   ; preds = %1200
  %1203 = load i32, i32* %1105, align 4, !dbg !1732, !tbaa !1641
  %1204 = add nsw i32 %1203, %59, !dbg !1733
  %1205 = icmp slt i32 %1204, 0, !dbg !1734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1735
  br i1 %1205, label %1208, label %1206, !dbg !1735

; <label>:1206:                                   ; preds = %1202
  %1207 = load i32, i32* %4, align 4, !dbg !1736, !tbaa !538
  br label %1209, !dbg !1735

; <label>:1208:                                   ; preds = %1202
  store i8 0, i8* %20, align 16, !dbg !1738, !tbaa !478
  store i32 0, i32* %4, align 4, !dbg !1740, !tbaa !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1741
  br label %1209, !dbg !1741

; <label>:1209:                                   ; preds = %1206, %1208
  %1210 = phi i32 [ %1207, %1206 ], [ 0, %1208 ], !dbg !1736
  %1211 = phi i8* [ %1201, %1206 ], [ %20, %1208 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  %1212 = add i32 %3, 3, !dbg !1743
  %1213 = add i32 %1212, %1210, !dbg !1744
  br label %1216, !dbg !1746

; <label>:1214:                                   ; preds = %1200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  %1215 = add nsw i32 %3, 9, !dbg !1747
  br label %1216

; <label>:1216:                                   ; preds = %1214, %1209
  %1217 = phi i8* [ %1211, %1209 ], [ %1201, %1214 ]
  %1218 = phi i32 [ %1213, %1209 ], [ %1215, %1214 ], !dbg !1748
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %1219 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 11, !dbg !1750
  store i32 0, i32* %1219, align 8, !dbg !1752, !tbaa !502
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1750
  %1220 = sext i32 %1218 to i64, !dbg !1753
  %1221 = icmp ult i32 %1218, 32, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  br i1 %1221, label %1230, label %1222, !dbg !1756

; <label>:1222:                                   ; preds = %1216, %1222
  %1223 = phi i32 [ %1225, %1222 ], [ 0, %1216 ]
  %1224 = phi i32 [ %1226, %1222 ], [ 4, %1216 ]
  %1225 = add nuw nsw i32 %1223, 1, !dbg !1757
  store i32 %1225, i32* %1219, align 8, !dbg !1757, !tbaa !502
  %1226 = shl i32 %1224, 1, !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  %1227 = sext i32 %1226 to i64, !dbg !1760
  %1228 = add nsw i64 %1227, 28, !dbg !1761
  %1229 = icmp ugt i64 %1228, %1220, !dbg !1755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1756
  br i1 %1229, label %1230, label %1222, !dbg !1756, !llvm.loop !1762

; <label>:1230:                                   ; preds = %1222, %1216
  %1231 = phi i32 [ 0, %1216 ], [ %1225, %1222 ], !dbg !1764
  %1232 = call %struct._Bigint* @_Balloc(%struct._reent* nonnull %0, i32 %1231) #5, !dbg !1765
  store %struct._Bigint* %1232, %struct._Bigint** %25, align 8, !dbg !1766, !tbaa !493
  %1233 = bitcast %struct._Bigint* %1232 to i8*, !dbg !1767
  %1234 = call i8* @strcpy(i8* %1233, i8* nonnull %20) #5, !dbg !1769
  %1235 = icmp eq i8** %6, null, !dbg !1770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1772
  br i1 %1235, label %1241, label %1236, !dbg !1772

; <label>:1236:                                   ; preds = %1230
  %1237 = ptrtoint i8* %1217 to i64, !dbg !1773
  %1238 = ptrtoint [57 x i8]* %16 to i64, !dbg !1773
  %1239 = sub i64 %1237, %1238, !dbg !1773
  %1240 = getelementptr inbounds i8, i8* %1233, i64 %1239, !dbg !1774
  store i8* %1240, i8** %6, align 8, !dbg !1775, !tbaa !1776
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1777
  br label %1241, !dbg !1777

; <label>:1241:                                   ; preds = %1230, %1236
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #4, !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %20) #4, !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %19) #4, !dbg !1778
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %18) #4, !dbg !1778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1779
  ret i8* %1233, !dbg !1779
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @_Bfree(%struct._reent*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @e64toe(i16* nocapture readonly, i16*) unnamed_addr #0 !dbg !1780 {
  %3 = alloca [13 x i16], align 16
  %4 = alloca [14 x i16], align 16
  %5 = bitcast [13 x i16]* %3 to i8*, !dbg !1799
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %5) #4, !dbg !1799
  %6 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 0, !dbg !1802
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %7 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 1, !dbg !1808
  store i16 0, i16* %6, align 16, !dbg !1810, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %8 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 2, !dbg !1808
  store i16 0, i16* %7, align 2, !dbg !1810, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %9 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !1808
  store i16 0, i16* %8, align 4, !dbg !1810, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %10 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 4, !dbg !1808
  store i16 0, i16* %9, align 2, !dbg !1810, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  store i16 0, i16* %10, align 8, !dbg !1810, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1807
  %11 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %12 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1815
  %13 = load i16, i16* %0, align 2, !dbg !1817, !tbaa !533
  %14 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !1818
  store i16 %13, i16* %11, align 2, !dbg !1819, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %15 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1815
  %16 = load i16, i16* %12, align 2, !dbg !1817, !tbaa !533
  %17 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !1818
  store i16 %16, i16* %14, align 4, !dbg !1819, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %18 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !1815
  %19 = load i16, i16* %15, align 2, !dbg !1817, !tbaa !533
  %20 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !1818
  store i16 %19, i16* %17, align 2, !dbg !1819, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %21 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !1815
  %22 = load i16, i16* %18, align 2, !dbg !1817, !tbaa !533
  %23 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !1818
  store i16 %22, i16* %20, align 16, !dbg !1819, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %24 = load i16, i16* %21, align 2, !dbg !1817, !tbaa !533
  store i16 %24, i16* %23, align 2, !dbg !1819, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  %25 = and i16 %24, 32767, !dbg !1821
  %26 = icmp eq i16 %25, 0, !dbg !1822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1823
  br i1 %26, label %27, label %55, !dbg !1823

; <label>:27:                                     ; preds = %2
  %28 = icmp sgt i16 %22, -1, !dbg !1824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1825
  br i1 %28, label %30, label %29, !dbg !1825

; <label>:29:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br label %57, !dbg !1826

; <label>:30:                                     ; preds = %27
  %31 = bitcast [14 x i16]* %4 to i8*, !dbg !1829
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %31) #4, !dbg !1829
  %32 = getelementptr inbounds [14 x i16], [14 x i16]* %4, i64 0, i64 0, !dbg !1831
  call fastcc void @emovi(i16* nonnull %6, i16* nonnull %32) #6, !dbg !1832
  %33 = getelementptr inbounds [14 x i16], [14 x i16]* %4, i64 0, i64 12, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  br label %34, !dbg !1839

; <label>:34:                                     ; preds = %49, %30
  %35 = phi i32 [ 2, %30 ], [ %52, %49 ]
  %36 = phi i16 [ 0, %30 ], [ %50, %49 ]
  %37 = phi i16* [ %33, %30 ], [ %51, %49 ]
  %38 = load i16, i16* %37, align 2, !dbg !1840, !tbaa !533
  %39 = icmp slt i16 %38, 0, !dbg !1841
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1842
  br i1 %39, label %40, label %42, !dbg !1842

; <label>:40:                                     ; preds = %34
  %41 = or i16 %36, 1, !dbg !1843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1844
  br label %42, !dbg !1844

; <label>:42:                                     ; preds = %40, %34
  %43 = phi i16 [ %41, %40 ], [ %36, %34 ], !dbg !1845
  %44 = shl i16 %38, 1, !dbg !1846
  store i16 %44, i16* %37, align 2, !dbg !1846, !tbaa !533
  %45 = and i16 %43, 2, !dbg !1847
  %46 = icmp eq i16 %45, 0, !dbg !1847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1848
  br i1 %46, label %49, label %47, !dbg !1848

; <label>:47:                                     ; preds = %42
  %48 = or i16 %44, 1, !dbg !1849
  store i16 %48, i16* %37, align 2, !dbg !1849, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1850
  br label %49, !dbg !1850

; <label>:49:                                     ; preds = %47, %42
  %50 = shl i16 %43, 1, !dbg !1851
  %51 = getelementptr inbounds i16, i16* %37, i64 -1, !dbg !1852
  %52 = add nuw nsw i32 %35, 1, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1839
  %53 = icmp eq i32 %52, 13, !dbg !1855
  br i1 %53, label %54, label %34, !dbg !1839, !llvm.loop !968

; <label>:54:                                     ; preds = %49
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1856
  call fastcc void @emovo(i16* nonnull %32, i16* %1) #6, !dbg !1857
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %31) #4, !dbg !1858
  br label %94

; <label>:55:                                     ; preds = %2
  %56 = icmp eq i16 %25, 32767, !dbg !1859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1827
  br i1 %56, label %75, label %57, !dbg !1826

; <label>:57:                                     ; preds = %29, %55
  %58 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1862
  store i16 0, i16* %1, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %59 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1862
  store i16 0, i16* %58, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %60 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1862
  store i16 0, i16* %59, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %61 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1862
  store i16 0, i16* %60, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %62 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !1867
  %63 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1862
  store i16 0, i16* %61, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %64 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !1867
  %65 = load i16, i16* %62, align 2, !dbg !1868, !tbaa !533
  %66 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1862
  store i16 %65, i16* %63, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %67 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !1867
  %68 = load i16, i16* %64, align 4, !dbg !1868, !tbaa !533
  %69 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1862
  store i16 %68, i16* %66, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %70 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !1867
  %71 = load i16, i16* %67, align 2, !dbg !1868, !tbaa !533
  %72 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !1862
  store i16 %71, i16* %69, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  %73 = load i16, i16* %70, align 16, !dbg !1868, !tbaa !533
  %74 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !1862
  store i16 %73, i16* %72, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  store i16 %24, i16* %74, align 2, !dbg !1864, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1866
  br label %94, !dbg !1869

; <label>:75:                                     ; preds = %55
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  %76 = icmp eq i16 %13, 0, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  br i1 %76, label %95, label %77, !dbg !1877

; <label>:77:                                     ; preds = %99, %97, %95, %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1893
  %78 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  %79 = getelementptr i16, i16* %1, i64 8, !dbg !1897
  store i16 0, i16* %1, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %80 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %78, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %81 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %80, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %82 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %81, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %83 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %82, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %84 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %83, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  %85 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %84, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  store i16 0, i16* %85, align 2, !dbg !1898, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  %86 = getelementptr i16, i16* %1, i64 9, !dbg !1897
  store i16 -16384, i16* %79, align 2, !dbg !1901, !tbaa !533
  store i16 32767, i16* %86, align 2, !dbg !1902, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1904
  br label %94, !dbg !1905

; <label>:87:                                     ; preds = %101
  %88 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !1912
  %89 = icmp eq i32 %88, 0, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br i1 %89, label %90, label %93, !dbg !1914

; <label>:90:                                     ; preds = %87
  %91 = load i16, i16* %110, align 2, !dbg !1915, !tbaa !533
  %92 = xor i16 %91, -32768, !dbg !1915
  store i16 %92, i16* %110, align 2, !dbg !1915, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  br label %93, !dbg !1916

; <label>:93:                                     ; preds = %87, %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1917
  br label %94, !dbg !1917

; <label>:94:                                     ; preds = %101, %93, %57, %77, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %5) #4, !dbg !1869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1869
  ret void, !dbg !1869

; <label>:95:                                     ; preds = %75
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  %96 = icmp eq i16 %16, 0, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  br i1 %96, label %97, label %77, !dbg !1877

; <label>:97:                                     ; preds = %95
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  %98 = icmp eq i16 %19, 0, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  br i1 %98, label %99, label %77, !dbg !1877

; <label>:99:                                     ; preds = %97
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1918
  %100 = icmp eq i16 %22, -32768, !dbg !1921
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1922
  br i1 %100, label %101, label %77, !dbg !1922

; <label>:101:                                    ; preds = %99
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %102 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %103 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %104 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %105 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %106 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %107 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %108 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %109 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  %110 = getelementptr i16, i16* %1, i64 9, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %1, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %102, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %103, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %104, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %105, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %106, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %107, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %108, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 0, i16* %109, align 2, !dbg !1945, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1944
  store i16 32767, i16* %110, align 2, !dbg !1948, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  %111 = icmp slt i16 %24, 0, !dbg !1950
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  br i1 %111, label %87, label %94, !dbg !1951
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @eisnan(i16* nocapture readonly) unnamed_addr #0 !dbg !1952 {
  %2 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !1957
  %3 = load i16, i16* %2, align 2, !dbg !1957, !tbaa !533
  %4 = and i16 %3, 32767, !dbg !1959
  %5 = icmp eq i16 %4, 32767, !dbg !1960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1961
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1962
  br i1 %5, label %6, label %15, !dbg !1961

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %7 = load i16, i16* %0, align 2, !dbg !1966, !tbaa !533
  %8 = icmp eq i16 %7, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %8, label %9, label %13, !dbg !1971

; <label>:9:                                      ; preds = %6
  %10 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %11 = load i16, i16* %10, align 2, !dbg !1966, !tbaa !533
  %12 = icmp eq i16 %11, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %12, label %17, label %13, !dbg !1971

; <label>:13:                                     ; preds = %6, %9, %17, %21, %25, %29, %33, %37, %41, %45
  %14 = phi i32 [ 0, %45 ], [ 1, %41 ], [ 1, %37 ], [ 1, %33 ], [ 1, %29 ], [ 1, %25 ], [ 1, %21 ], [ 1, %17 ], [ 1, %9 ], [ 1, %6 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1974
  br label %15, !dbg !1975

; <label>:15:                                     ; preds = %13, %1
  %16 = phi i32 [ 0, %1 ], [ %14, %13 ], !dbg !1976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1975
  ret i32 %16, !dbg !1975

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %19 = load i16, i16* %18, align 2, !dbg !1966, !tbaa !533
  %20 = icmp eq i16 %19, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %20, label %21, label %13, !dbg !1971

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %23 = load i16, i16* %22, align 2, !dbg !1966, !tbaa !533
  %24 = icmp eq i16 %23, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %24, label %25, label %13, !dbg !1971

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %27 = load i16, i16* %26, align 2, !dbg !1966, !tbaa !533
  %28 = icmp eq i16 %27, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %28, label %29, label %13, !dbg !1971

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %31 = load i16, i16* %30, align 2, !dbg !1966, !tbaa !533
  %32 = icmp eq i16 %31, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %32, label %33, label %13, !dbg !1971

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %35 = load i16, i16* %34, align 2, !dbg !1966, !tbaa !533
  %36 = icmp eq i16 %35, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %36, label %37, label %13, !dbg !1971

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %39 = load i16, i16* %38, align 2, !dbg !1966, !tbaa !533
  %40 = icmp eq i16 %39, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %40, label %41, label %13, !dbg !1971

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !1972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  %43 = load i16, i16* %42, align 2, !dbg !1966, !tbaa !533
  %44 = icmp eq i16 %43, 0, !dbg !1970
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1971
  br i1 %44, label %45, label %13, !dbg !1971

; <label>:45:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1964
  br label %13, !dbg !1977
}

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @_Balloc(%struct._reent*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_ldcheck(x86_fp80* nocapture readonly) local_unnamed_addr #0 !dbg !1978 {
  %2 = alloca [13 x i16], align 16
  %3 = alloca %union.uconv, align 16
  %4 = bitcast [13 x i16]* %2 to i8*, !dbg !1989
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %4) #4, !dbg !1989
  %5 = bitcast %union.uconv* %3 to i8*, !dbg !1991
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4, !dbg !1991
  %6 = load x86_fp80, x86_fp80* %0, align 16, !dbg !1992, !tbaa !1993
  %7 = getelementptr inbounds %union.uconv, %union.uconv* %3, i64 0, i32 0, !dbg !1995
  store x86_fp80 %6, x86_fp80* %7, align 16, !dbg !1996, !tbaa !478
  %8 = bitcast %union.uconv* %3 to i16*, !dbg !1997
  %9 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 0, !dbg !1998
  call fastcc void @e64toe(i16* nonnull %8, i16* nonnull %9) #6, !dbg !1999
  %10 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 9, !dbg !2000
  %11 = load i16, i16* %10, align 2, !dbg !2000, !tbaa !533
  %12 = and i16 %11, 32767, !dbg !2002
  %13 = icmp eq i16 %12, 32767, !dbg !2003
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2004
  br i1 %13, label %14, label %18, !dbg !2004

; <label>:14:                                     ; preds = %1
  %15 = call fastcc i32 @eisnan(i16* nonnull %9) #6, !dbg !2005
  %16 = icmp eq i32 %15, 0, !dbg !2005
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2009
  %17 = select i1 %16, i32 2, i32 1, !dbg !2010
  br label %19, !dbg !2010

; <label>:18:                                     ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2011
  br label %19, !dbg !2011

; <label>:19:                                     ; preds = %14, %18
  %20 = phi i32 [ 0, %18 ], [ %17, %14 ], !dbg !2012
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4, !dbg !2013
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %4) #4, !dbg !2013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2013
  ret i32 %20, !dbg !2013
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emovi(i16* nocapture readonly, i16* nocapture) unnamed_addr #0 !dbg !2014 {
  %3 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2024
  %4 = load i16, i16* %3, align 2, !dbg !2026, !tbaa !533
  %5 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2028
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2029
  %6 = ashr i16 %4, 15, !dbg !2029
  store i16 %6, i16* %1, align 2, !dbg !2028, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %7 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2030
  %8 = load i16, i16* %3, align 2, !dbg !2031, !tbaa !533
  %9 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2032
  %10 = and i16 %8, 32767, !dbg !2033
  store i16 %10, i16* %5, align 2, !dbg !2033, !tbaa !533
  %11 = icmp eq i16 %10, 32767, !dbg !2034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %11, label %12, label %55, !dbg !2036

; <label>:12:                                     ; preds = %2
  %13 = tail call fastcc i32 @eisnan(i16* nonnull %0) #6, !dbg !2037
  %14 = icmp eq i32 %13, 0, !dbg !2037
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2040
  br i1 %14, label %44, label %15, !dbg !2040

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2041
  store i16 0, i16* %9, align 2, !dbg !2043, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %17 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2048
  %18 = load i16, i16* %7, align 2, !dbg !2050, !tbaa !533
  %19 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2051
  store i16 %18, i16* %16, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %20 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2048
  %21 = load i16, i16* %17, align 2, !dbg !2050, !tbaa !533
  %22 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2051
  store i16 %21, i16* %19, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %23 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2048
  %24 = load i16, i16* %20, align 2, !dbg !2050, !tbaa !533
  %25 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2051
  store i16 %24, i16* %22, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %26 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2048
  %27 = load i16, i16* %23, align 2, !dbg !2050, !tbaa !533
  %28 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2051
  store i16 %27, i16* %25, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %29 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2048
  %30 = load i16, i16* %26, align 2, !dbg !2050, !tbaa !533
  %31 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2051
  store i16 %30, i16* %28, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %32 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2048
  %33 = load i16, i16* %29, align 2, !dbg !2050, !tbaa !533
  %34 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2051
  store i16 %33, i16* %31, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %35 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2048
  %36 = load i16, i16* %32, align 2, !dbg !2050, !tbaa !533
  %37 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !2051
  store i16 %36, i16* %34, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %38 = load i16, i16* %35, align 2, !dbg !2050, !tbaa !533
  %39 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !2051
  store i16 %38, i16* %37, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %40 = getelementptr inbounds i16, i16* %0, i64 -1, !dbg !2048
  %41 = load i16, i16* %0, align 2, !dbg !2050, !tbaa !533
  %42 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !2051
  store i16 %41, i16* %39, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  %43 = load i16, i16* %40, align 2, !dbg !2050, !tbaa !533
  store i16 %43, i16* %42, align 2, !dbg !2052, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2053
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  br label %82, !dbg !2054

; <label>:44:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %45 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2058
  store i16 0, i16* %9, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %46 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2058
  store i16 0, i16* %45, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %47 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2058
  store i16 0, i16* %46, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %48 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2058
  store i16 0, i16* %47, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %49 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2058
  store i16 0, i16* %48, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %50 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2058
  store i16 0, i16* %49, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %51 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2058
  store i16 0, i16* %50, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %52 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !2058
  store i16 0, i16* %51, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %53 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !2058
  store i16 0, i16* %52, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  %54 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !2058
  store i16 0, i16* %53, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  store i16 0, i16* %54, align 2, !dbg !2060, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br label %82, !dbg !2062

; <label>:55:                                     ; preds = %2
  %56 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2063
  store i16 0, i16* %9, align 2, !dbg !2064, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %57 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2068
  %58 = load i16, i16* %7, align 2, !dbg !2070, !tbaa !533
  %59 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2071
  store i16 %58, i16* %56, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %60 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2068
  %61 = load i16, i16* %57, align 2, !dbg !2070, !tbaa !533
  %62 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2071
  store i16 %61, i16* %59, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %63 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2068
  %64 = load i16, i16* %60, align 2, !dbg !2070, !tbaa !533
  %65 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2071
  store i16 %64, i16* %62, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %66 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2068
  %67 = load i16, i16* %63, align 2, !dbg !2070, !tbaa !533
  %68 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2071
  store i16 %67, i16* %65, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %69 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2068
  %70 = load i16, i16* %66, align 2, !dbg !2070, !tbaa !533
  %71 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2071
  store i16 %70, i16* %68, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %72 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2068
  %73 = load i16, i16* %69, align 2, !dbg !2070, !tbaa !533
  %74 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2071
  store i16 %73, i16* %71, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %75 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2068
  %76 = load i16, i16* %72, align 2, !dbg !2070, !tbaa !533
  %77 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !2071
  store i16 %76, i16* %74, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %78 = load i16, i16* %75, align 2, !dbg !2070, !tbaa !533
  %79 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !2071
  store i16 %78, i16* %77, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %80 = load i16, i16* %0, align 2, !dbg !2070, !tbaa !533
  store i16 %80, i16* %79, align 2, !dbg !2072, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2067
  %81 = getelementptr i16, i16* %1, i64 12, !dbg !2067
  store i16 0, i16* %81, align 2, !dbg !2074, !tbaa !533
  br label %82, !dbg !2075

; <label>:82:                                     ; preds = %55, %44, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2075
  ret void, !dbg !2075
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emovo(i16* nocapture readonly, i16*) unnamed_addr #0 !dbg !2077 {
  %3 = getelementptr i16, i16* %1, i64 9, !dbg !2089
  %4 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2091
  %5 = load i16, i16* %0, align 2, !dbg !2092, !tbaa !533
  %6 = icmp eq i16 %5, 0, !dbg !2094
  %7 = load i16, i16* %4, align 2, !dbg !2096, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  %8 = or i16 %7, -32768, !dbg !2098
  %9 = select i1 %6, i16 %7, i16 %8, !dbg !2097
  store i16 %9, i16* %3, align 2, !dbg !2096, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = load i16, i16* %4, align 2, !dbg !2099, !tbaa !533
  %11 = icmp eq i16 %10, 32767, !dbg !2101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2102
  br i1 %11, label %12, label %72, !dbg !2102

; <label>:12:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %13 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2120
  %14 = load i16, i16* %13, align 2, !dbg !2120, !tbaa !533
  %15 = icmp eq i16 %14, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %15, label %16, label %52, !dbg !2125

; <label>:16:                                     ; preds = %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %17 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2120
  %18 = load i16, i16* %17, align 2, !dbg !2120, !tbaa !533
  %19 = icmp eq i16 %18, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %19, label %20, label %52, !dbg !2125

; <label>:20:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %21 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2120
  %22 = load i16, i16* %21, align 2, !dbg !2120, !tbaa !533
  %23 = icmp eq i16 %22, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %23, label %24, label %52, !dbg !2125

; <label>:24:                                     ; preds = %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %25 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2120
  %26 = load i16, i16* %25, align 2, !dbg !2120, !tbaa !533
  %27 = icmp eq i16 %26, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %27, label %28, label %52, !dbg !2125

; <label>:28:                                     ; preds = %24
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %29 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2120
  %30 = load i16, i16* %29, align 2, !dbg !2120, !tbaa !533
  %31 = icmp eq i16 %30, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %31, label %32, label %52, !dbg !2125

; <label>:32:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %33 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2120
  %34 = load i16, i16* %33, align 2, !dbg !2120, !tbaa !533
  %35 = icmp eq i16 %34, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %35, label %36, label %52, !dbg !2125

; <label>:36:                                     ; preds = %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %37 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2120
  %38 = load i16, i16* %37, align 2, !dbg !2120, !tbaa !533
  %39 = icmp eq i16 %38, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %39, label %40, label %52, !dbg !2125

; <label>:40:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %41 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !2120
  %42 = load i16, i16* %41, align 2, !dbg !2120, !tbaa !533
  %43 = icmp eq i16 %42, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %43, label %44, label %52, !dbg !2125

; <label>:44:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %45 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !2120
  %46 = load i16, i16* %45, align 2, !dbg !2120, !tbaa !533
  %47 = icmp eq i16 %46, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %47, label %48, label %52, !dbg !2125

; <label>:48:                                     ; preds = %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  %49 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !2120
  %50 = load i16, i16* %49, align 2, !dbg !2120, !tbaa !533
  %51 = icmp eq i16 %50, 0, !dbg !2124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2125
  br i1 %51, label %61, label %52, !dbg !2125

; <label>:52:                                     ; preds = %48, %44, %40, %36, %32, %28, %24, %20, %16, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2127
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  %53 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  %54 = getelementptr i16, i16* %1, i64 8, !dbg !2138
  store i16 0, i16* %1, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %55 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %53, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %56 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %55, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %57 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %56, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %58 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %57, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %59 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %58, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  %60 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %59, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 0, i16* %60, align 2, !dbg !2139, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2138
  store i16 -16384, i16* %54, align 2, !dbg !2141, !tbaa !533
  store i16 32767, i16* %3, align 2, !dbg !2142, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2143
  br label %99, !dbg !2144

; <label>:61:                                     ; preds = %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2150
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %62 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2152
  store i16 0, i16* %1, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %63 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2152
  store i16 0, i16* %62, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %64 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2152
  store i16 0, i16* %63, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %65 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2152
  store i16 0, i16* %64, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %66 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2152
  store i16 0, i16* %65, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %67 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2152
  store i16 0, i16* %66, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %68 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2152
  store i16 0, i16* %67, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %69 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2152
  store i16 0, i16* %68, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  store i16 0, i16* %69, align 2, !dbg !2153, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2151
  %70 = or i16 %7, 32767, !dbg !2155
  %71 = select i1 %6, i16 %70, i16 -1, !dbg !2155
  store i16 %71, i16* %3, align 2, !dbg !2155, !tbaa !533
  br label %99, !dbg !2156

; <label>:72:                                     ; preds = %2
  %73 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2096
  %74 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2158
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %75 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2161
  %76 = load i16, i16* %74, align 2, !dbg !2163, !tbaa !533
  %77 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2164
  store i16 %76, i16* %73, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %78 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2161
  %79 = load i16, i16* %75, align 2, !dbg !2163, !tbaa !533
  %80 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2164
  store i16 %79, i16* %77, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %81 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2161
  %82 = load i16, i16* %78, align 2, !dbg !2163, !tbaa !533
  %83 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2164
  store i16 %82, i16* %80, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %84 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2161
  %85 = load i16, i16* %81, align 2, !dbg !2163, !tbaa !533
  %86 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2164
  store i16 %85, i16* %83, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %87 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2161
  %88 = load i16, i16* %84, align 2, !dbg !2163, !tbaa !533
  %89 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2164
  store i16 %88, i16* %86, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %90 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2161
  %91 = load i16, i16* %87, align 2, !dbg !2163, !tbaa !533
  %92 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2164
  store i16 %91, i16* %89, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %93 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !2161
  %94 = load i16, i16* %90, align 2, !dbg !2163, !tbaa !533
  %95 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2164
  store i16 %94, i16* %92, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %96 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !2161
  %97 = load i16, i16* %93, align 2, !dbg !2163, !tbaa !533
  store i16 %97, i16* %95, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2160
  %98 = load i16, i16* %96, align 2, !dbg !2163, !tbaa !533
  store i16 %98, i16* %1, align 2, !dbg !2165, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2166
  br label %99, !dbg !2167

; <label>:99:                                     ; preds = %72, %61, %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2167
  ret void, !dbg !2167
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ecmp(i16* nocapture readonly, i16* nocapture readonly) unnamed_addr #0 !dbg !2169 {
  %3 = alloca [13 x i16], align 16
  %4 = alloca [13 x i16], align 16
  %5 = bitcast [13 x i16]* %3 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %5) #4, !dbg !2183
  %6 = bitcast [13 x i16]* %4 to i8*, !dbg !2183
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %6) #4, !dbg !2183
  %7 = tail call fastcc i32 @eisnan(i16* %0) #6, !dbg !2186
  %8 = icmp eq i32 %7, 0, !dbg !2186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2188
  br i1 %8, label %9, label %12, !dbg !2188

; <label>:9:                                      ; preds = %2
  %10 = tail call fastcc i32 @eisnan(i16* %1) #6, !dbg !2189
  %11 = icmp eq i32 %10, 0, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  br i1 %11, label %13, label %12, !dbg !2190

; <label>:12:                                     ; preds = %9, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  br label %49, !dbg !2191

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 0, !dbg !2192
  call fastcc void @emovi(i16* %0, i16* nonnull %14) #6, !dbg !2193
  %15 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 0, !dbg !2195
  call fastcc void @emovi(i16* %1, i16* nonnull %15) #6, !dbg !2196
  %16 = load i16, i16* %14, align 16, !dbg !2198, !tbaa !533
  %17 = load i16, i16* %15, align 16, !dbg !2200, !tbaa !533
  %18 = icmp eq i16 %16, %17, !dbg !2201
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  br i1 %18, label %34, label %19, !dbg !2202

; <label>:19:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2204
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %20 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 1, !dbg !2208
  %21 = load i16, i16* %20, align 2, !dbg !2208, !tbaa !533
  %22 = icmp eq i16 %21, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %22, label %23, label %31, !dbg !2213

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 1, !dbg !2214
  %25 = load i16, i16* %24, align 2, !dbg !2214, !tbaa !533
  %26 = icmp eq i16 %25, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %26, label %27, label %31, !dbg !2217

; <label>:27:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %28 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 2, !dbg !2208
  %29 = load i16, i16* %28, align 4, !dbg !2208, !tbaa !533
  %30 = icmp eq i16 %29, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %30, label %112, label %31, !dbg !2213

; <label>:31:                                     ; preds = %184, %180, %176, %172, %168, %164, %160, %156, %152, %148, %144, %140, %136, %132, %128, %124, %120, %116, %112, %27, %23, %19
  %32 = icmp eq i16 %16, 0, !dbg !2219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2222
  %33 = select i1 %32, i32 1, i32 -1, !dbg !2223
  br label %49, !dbg !2223

; <label>:34:                                     ; preds = %13
  %35 = icmp eq i16 %16, 0, !dbg !2224
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2226
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = select i1 %35, i32 1, i32 -1, !dbg !2227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  %37 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 1, !dbg !2232
  %38 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 1, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %39 = load i16, i16* %38, align 2, !dbg !2236, !tbaa !533
  %40 = load i16, i16* %37, align 2, !dbg !2237, !tbaa !533
  %41 = icmp eq i16 %39, %40, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %41, label %51, label %42, !dbg !2230

; <label>:42:                                     ; preds = %105, %99, %93, %87, %81, %75, %69, %63, %57, %51, %34
  %43 = phi i16 [ %40, %34 ], [ %55, %51 ], [ %61, %57 ], [ %67, %63 ], [ %73, %69 ], [ %79, %75 ], [ %85, %81 ], [ %91, %87 ], [ %97, %93 ], [ %103, %99 ], [ %109, %105 ], !dbg !2239
  %44 = phi i16 [ %39, %34 ], [ %54, %51 ], [ %60, %57 ], [ %66, %63 ], [ %72, %69 ], [ %78, %75 ], [ %84, %81 ], [ %90, %87 ], [ %96, %93 ], [ %102, %99 ], [ %108, %105 ], !dbg !2241
  %45 = icmp ugt i16 %44, %43, !dbg !2242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2243
  br i1 %45, label %46, label %47, !dbg !2243

; <label>:46:                                     ; preds = %42
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2244
  br label %49, !dbg !2244

; <label>:47:                                     ; preds = %42
  %48 = sub nsw i32 0, %36, !dbg !2245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2246
  br label %49, !dbg !2246

; <label>:49:                                     ; preds = %31, %47, %46, %111, %188, %12
  %50 = phi i32 [ -2, %12 ], [ 0, %188 ], [ %36, %46 ], [ %48, %47 ], [ 0, %111 ], [ %33, %31 ], !dbg !2247
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %6) #4, !dbg !2248
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %5) #4, !dbg !2248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2248
  ret i32 %50, !dbg !2248

; <label>:51:                                     ; preds = %34
  %52 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 2, !dbg !2232
  %53 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 2, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %54 = load i16, i16* %53, align 4, !dbg !2236, !tbaa !533
  %55 = load i16, i16* %52, align 4, !dbg !2237, !tbaa !533
  %56 = icmp eq i16 %54, %55, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %56, label %57, label %42, !dbg !2230

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !2232
  %59 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %60 = load i16, i16* %59, align 2, !dbg !2236, !tbaa !533
  %61 = load i16, i16* %58, align 2, !dbg !2237, !tbaa !533
  %62 = icmp eq i16 %60, %61, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %62, label %63, label %42, !dbg !2230

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 4, !dbg !2232
  %65 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 4, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %66 = load i16, i16* %65, align 8, !dbg !2236, !tbaa !533
  %67 = load i16, i16* %64, align 8, !dbg !2237, !tbaa !533
  %68 = icmp eq i16 %66, %67, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %68, label %69, label %42, !dbg !2230

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 5, !dbg !2232
  %71 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %72 = load i16, i16* %71, align 2, !dbg !2236, !tbaa !533
  %73 = load i16, i16* %70, align 2, !dbg !2237, !tbaa !533
  %74 = icmp eq i16 %72, %73, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %74, label %75, label %42, !dbg !2230

; <label>:75:                                     ; preds = %69
  %76 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 6, !dbg !2232
  %77 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %78 = load i16, i16* %77, align 4, !dbg !2236, !tbaa !533
  %79 = load i16, i16* %76, align 4, !dbg !2237, !tbaa !533
  %80 = icmp eq i16 %78, %79, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %80, label %81, label %42, !dbg !2230

; <label>:81:                                     ; preds = %75
  %82 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 7, !dbg !2232
  %83 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %84 = load i16, i16* %83, align 2, !dbg !2236, !tbaa !533
  %85 = load i16, i16* %82, align 2, !dbg !2237, !tbaa !533
  %86 = icmp eq i16 %84, %85, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %86, label %87, label %42, !dbg !2230

; <label>:87:                                     ; preds = %81
  %88 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 8, !dbg !2232
  %89 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %90 = load i16, i16* %89, align 16, !dbg !2236, !tbaa !533
  %91 = load i16, i16* %88, align 16, !dbg !2237, !tbaa !533
  %92 = icmp eq i16 %90, %91, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %92, label %93, label %42, !dbg !2230

; <label>:93:                                     ; preds = %87
  %94 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 9, !dbg !2232
  %95 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %96 = load i16, i16* %95, align 2, !dbg !2236, !tbaa !533
  %97 = load i16, i16* %94, align 2, !dbg !2237, !tbaa !533
  %98 = icmp eq i16 %96, %97, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %98, label %99, label %42, !dbg !2230

; <label>:99:                                     ; preds = %93
  %100 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 10, !dbg !2232
  %101 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 10, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %102 = load i16, i16* %101, align 4, !dbg !2236, !tbaa !533
  %103 = load i16, i16* %100, align 4, !dbg !2237, !tbaa !533
  %104 = icmp eq i16 %102, %103, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %104, label %105, label %42, !dbg !2230

; <label>:105:                                    ; preds = %99
  %106 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2232
  %107 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2234
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  %108 = load i16, i16* %107, align 2, !dbg !2236, !tbaa !533
  %109 = load i16, i16* %106, align 2, !dbg !2237, !tbaa !533
  %110 = icmp eq i16 %108, %109, !dbg !2238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2230
  br i1 %110, label %111, label %42, !dbg !2230

; <label>:111:                                    ; preds = %105
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2249
  br label %49, !dbg !2249

; <label>:112:                                    ; preds = %27
  %113 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 2, !dbg !2214
  %114 = load i16, i16* %113, align 4, !dbg !2214, !tbaa !533
  %115 = icmp eq i16 %114, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %115, label %116, label %31, !dbg !2217

; <label>:116:                                    ; preds = %112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %117 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !2208
  %118 = load i16, i16* %117, align 2, !dbg !2208, !tbaa !533
  %119 = icmp eq i16 %118, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %119, label %120, label %31, !dbg !2213

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !2214
  %122 = load i16, i16* %121, align 2, !dbg !2214, !tbaa !533
  %123 = icmp eq i16 %122, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %123, label %124, label %31, !dbg !2217

; <label>:124:                                    ; preds = %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %125 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 4, !dbg !2208
  %126 = load i16, i16* %125, align 8, !dbg !2208, !tbaa !533
  %127 = icmp eq i16 %126, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %127, label %128, label %31, !dbg !2213

; <label>:128:                                    ; preds = %124
  %129 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 4, !dbg !2214
  %130 = load i16, i16* %129, align 8, !dbg !2214, !tbaa !533
  %131 = icmp eq i16 %130, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %131, label %132, label %31, !dbg !2217

; <label>:132:                                    ; preds = %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %133 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !2208
  %134 = load i16, i16* %133, align 2, !dbg !2208, !tbaa !533
  %135 = icmp eq i16 %134, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %135, label %136, label %31, !dbg !2213

; <label>:136:                                    ; preds = %132
  %137 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 5, !dbg !2214
  %138 = load i16, i16* %137, align 2, !dbg !2214, !tbaa !533
  %139 = icmp eq i16 %138, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %139, label %140, label %31, !dbg !2217

; <label>:140:                                    ; preds = %136
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %141 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !2208
  %142 = load i16, i16* %141, align 4, !dbg !2208, !tbaa !533
  %143 = icmp eq i16 %142, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %143, label %144, label %31, !dbg !2213

; <label>:144:                                    ; preds = %140
  %145 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 6, !dbg !2214
  %146 = load i16, i16* %145, align 4, !dbg !2214, !tbaa !533
  %147 = icmp eq i16 %146, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %147, label %148, label %31, !dbg !2217

; <label>:148:                                    ; preds = %144
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %149 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !2208
  %150 = load i16, i16* %149, align 2, !dbg !2208, !tbaa !533
  %151 = icmp eq i16 %150, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %151, label %152, label %31, !dbg !2213

; <label>:152:                                    ; preds = %148
  %153 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 7, !dbg !2214
  %154 = load i16, i16* %153, align 2, !dbg !2214, !tbaa !533
  %155 = icmp eq i16 %154, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %155, label %156, label %31, !dbg !2217

; <label>:156:                                    ; preds = %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %157 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !2208
  %158 = load i16, i16* %157, align 16, !dbg !2208, !tbaa !533
  %159 = icmp eq i16 %158, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %159, label %160, label %31, !dbg !2213

; <label>:160:                                    ; preds = %156
  %161 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 8, !dbg !2214
  %162 = load i16, i16* %161, align 16, !dbg !2214, !tbaa !533
  %163 = icmp eq i16 %162, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %163, label %164, label %31, !dbg !2217

; <label>:164:                                    ; preds = %160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %165 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !2208
  %166 = load i16, i16* %165, align 2, !dbg !2208, !tbaa !533
  %167 = icmp eq i16 %166, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %167, label %168, label %31, !dbg !2213

; <label>:168:                                    ; preds = %164
  %169 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 9, !dbg !2214
  %170 = load i16, i16* %169, align 2, !dbg !2214, !tbaa !533
  %171 = icmp eq i16 %170, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %171, label %172, label %31, !dbg !2217

; <label>:172:                                    ; preds = %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %173 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 10, !dbg !2208
  %174 = load i16, i16* %173, align 4, !dbg !2208, !tbaa !533
  %175 = icmp eq i16 %174, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %175, label %176, label %31, !dbg !2213

; <label>:176:                                    ; preds = %172
  %177 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 10, !dbg !2214
  %178 = load i16, i16* %177, align 4, !dbg !2214, !tbaa !533
  %179 = icmp eq i16 %178, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %179, label %180, label %31, !dbg !2217

; <label>:180:                                    ; preds = %176
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  %181 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2208
  %182 = load i16, i16* %181, align 2, !dbg !2208, !tbaa !533
  %183 = icmp eq i16 %182, 0, !dbg !2212
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2213
  br i1 %183, label %184, label %31, !dbg !2213

; <label>:184:                                    ; preds = %180
  %185 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2214
  %186 = load i16, i16* %185, align 2, !dbg !2214, !tbaa !533
  %187 = icmp eq i16 %186, 0, !dbg !2216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2217
  br i1 %187, label %188, label %31, !dbg !2217

; <label>:188:                                    ; preds = %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2218
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2250
  br label %49, !dbg !2250
}

; Function Attrs: noredzone nounwind
define internal fastcc void @ediv(i16* nocapture readonly, i16* nocapture readonly, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !2251 {
  %5 = alloca [14 x i16], align 16
  %6 = alloca [13 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = bitcast [13 x i16]* %6 to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %8) #4, !dbg !2284
  %9 = bitcast [13 x i16]* %7 to i8*, !dbg !2284
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %9) #4, !dbg !2284
  %10 = tail call fastcc i32 @eisnan(i16* %0) #6, !dbg !2287
  %11 = icmp eq i32 %10, 0, !dbg !2287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2289
  br i1 %11, label %41, label %12, !dbg !2289

; <label>:12:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2295
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2297
  %14 = load i16, i16* %0, align 2, !dbg !2298, !tbaa !533
  %15 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2299
  store i16 %14, i16* %2, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %16 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2297
  %17 = load i16, i16* %13, align 2, !dbg !2298, !tbaa !533
  %18 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2299
  store i16 %17, i16* %15, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %19 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2297
  %20 = load i16, i16* %16, align 2, !dbg !2298, !tbaa !533
  %21 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2299
  store i16 %20, i16* %18, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %22 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2297
  %23 = load i16, i16* %19, align 2, !dbg !2298, !tbaa !533
  %24 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2299
  store i16 %23, i16* %21, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %25 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2297
  %26 = load i16, i16* %22, align 2, !dbg !2298, !tbaa !533
  %27 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2299
  store i16 %26, i16* %24, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %28 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2297
  %29 = load i16, i16* %25, align 2, !dbg !2298, !tbaa !533
  %30 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2299
  store i16 %29, i16* %27, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %31 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2297
  %32 = load i16, i16* %28, align 2, !dbg !2298, !tbaa !533
  %33 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2299
  store i16 %32, i16* %30, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %34 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2297
  %35 = load i16, i16* %31, align 2, !dbg !2298, !tbaa !533
  %36 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2299
  store i16 %35, i16* %33, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %37 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2297
  %38 = load i16, i16* %34, align 2, !dbg !2298, !tbaa !533
  %39 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2299
  store i16 %38, i16* %36, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  %40 = load i16, i16* %37, align 2, !dbg !2298, !tbaa !533
  store i16 %40, i16* %39, align 2, !dbg !2300, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2302
  br label %324, !dbg !2303

; <label>:41:                                     ; preds = %4
  %42 = tail call fastcc i32 @eisnan(i16* %1) #6, !dbg !2304
  %43 = icmp eq i32 %42, 0, !dbg !2304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2306
  br i1 %43, label %73, label %44, !dbg !2306

; <label>:44:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %45 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2314
  %46 = load i16, i16* %1, align 2, !dbg !2315, !tbaa !533
  %47 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2316
  store i16 %46, i16* %2, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %48 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2314
  %49 = load i16, i16* %45, align 2, !dbg !2315, !tbaa !533
  %50 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2316
  store i16 %49, i16* %47, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %51 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2314
  %52 = load i16, i16* %48, align 2, !dbg !2315, !tbaa !533
  %53 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2316
  store i16 %52, i16* %50, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %54 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2314
  %55 = load i16, i16* %51, align 2, !dbg !2315, !tbaa !533
  %56 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2316
  store i16 %55, i16* %53, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %57 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2314
  %58 = load i16, i16* %54, align 2, !dbg !2315, !tbaa !533
  %59 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2316
  store i16 %58, i16* %56, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %60 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2314
  %61 = load i16, i16* %57, align 2, !dbg !2315, !tbaa !533
  %62 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2316
  store i16 %61, i16* %59, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %63 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2314
  %64 = load i16, i16* %60, align 2, !dbg !2315, !tbaa !533
  %65 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2316
  store i16 %64, i16* %62, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %66 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2314
  %67 = load i16, i16* %63, align 2, !dbg !2315, !tbaa !533
  %68 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2316
  store i16 %67, i16* %65, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %69 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2314
  %70 = load i16, i16* %66, align 2, !dbg !2315, !tbaa !533
  %71 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2316
  store i16 %70, i16* %68, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  %72 = load i16, i16* %69, align 2, !dbg !2315, !tbaa !533
  store i16 %72, i16* %71, align 2, !dbg !2317, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2319
  br label %324, !dbg !2320

; <label>:73:                                     ; preds = %41
  %74 = tail call fastcc i32 @ecmp(i16* %0, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !2321
  %75 = icmp eq i32 %74, 0, !dbg !2323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2324
  br i1 %75, label %76, label %79, !dbg !2324

; <label>:76:                                     ; preds = %73
  %77 = tail call fastcc i32 @ecmp(i16* %1, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !2325
  %78 = icmp eq i32 %77, 0, !dbg !2326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2327
  br i1 %78, label %97, label %79, !dbg !2327

; <label>:79:                                     ; preds = %76, %73
  %80 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2330
  %81 = load i16, i16* %80, align 2, !dbg !2330, !tbaa !533
  %82 = and i16 %81, 32767, !dbg !2331
  %83 = icmp eq i16 %82, 32767, !dbg !2332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2333
  br i1 %83, label %85, label %84, !dbg !2333

; <label>:84:                                     ; preds = %79
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br label %107, !dbg !2336

; <label>:85:                                     ; preds = %79
  %86 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2337
  %87 = icmp eq i32 %86, 0, !dbg !2337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2336
  br i1 %87, label %88, label %107, !dbg !2336

; <label>:88:                                     ; preds = %85
  %89 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2342
  %90 = load i16, i16* %89, align 2, !dbg !2342, !tbaa !533
  %91 = and i16 %90, 32767, !dbg !2343
  %92 = icmp eq i16 %91, 32767, !dbg !2344
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2345
  br i1 %92, label %94, label %93, !dbg !2345

; <label>:93:                                     ; preds = %88
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2348
  br label %107, !dbg !2348

; <label>:94:                                     ; preds = %88
  %95 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2349
  %96 = icmp eq i32 %95, 0, !dbg !2349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2348
  br i1 %96, label %97, label %107, !dbg !2348

; <label>:97:                                     ; preds = %94, %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2358
  %98 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  %99 = getelementptr i16, i16* %2, i64 8, !dbg !2360
  store i16 0, i16* %2, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %100 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %98, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %101 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %100, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %102 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %101, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %103 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %102, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %104 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %103, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  %105 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %104, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  store i16 0, i16* %105, align 2, !dbg !2361, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2360
  %106 = getelementptr i16, i16* %2, i64 9, !dbg !2360
  store i16 -16384, i16* %99, align 2, !dbg !2363, !tbaa !533
  store i16 32767, i16* %106, align 2, !dbg !2364, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2365
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2366
  br label %324, !dbg !2367

; <label>:107:                                    ; preds = %94, %85, %93, %84
  %108 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2371
  %109 = load i16, i16* %108, align 2, !dbg !2371, !tbaa !533
  %110 = and i16 %109, 32767, !dbg !2372
  %111 = icmp eq i16 %110, 32767, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2374
  br i1 %111, label %113, label %112, !dbg !2374

; <label>:112:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  br label %147, !dbg !2377

; <label>:113:                                    ; preds = %107
  %114 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2378
  %115 = icmp eq i32 %114, 0, !dbg !2378
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2377
  br i1 %115, label %116, label %147, !dbg !2377

; <label>:116:                                    ; preds = %113
  %117 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2385
  %118 = icmp eq i32 %117, 0, !dbg !2385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2386
  br i1 %118, label %120, label %119, !dbg !2386

; <label>:119:                                    ; preds = %116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2387
  br label %124, !dbg !2387

; <label>:120:                                    ; preds = %116
  %121 = load i16, i16* %80, align 2, !dbg !2388, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2390
  %122 = lshr i16 %121, 15, !dbg !2391
  %123 = zext i16 %122 to i32, !dbg !2391
  br label %124, !dbg !2391

; <label>:124:                                    ; preds = %119, %120
  %125 = phi i32 [ 0, %119 ], [ %123, %120 ], !dbg !2390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2392
  %126 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2395
  %127 = icmp eq i32 %126, 0, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  br i1 %127, label %129, label %128, !dbg !2396

; <label>:128:                                    ; preds = %124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2397
  br label %133, !dbg !2397

; <label>:129:                                    ; preds = %124
  %130 = load i16, i16* %108, align 2, !dbg !2398, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2400
  %131 = lshr i16 %130, 15, !dbg !2401
  %132 = zext i16 %131 to i32, !dbg !2401
  br label %133, !dbg !2401

; <label>:133:                                    ; preds = %128, %129
  %134 = phi i32 [ 0, %128 ], [ %132, %129 ], !dbg !2400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2402
  %135 = icmp eq i32 %125, %134, !dbg !2403
  %136 = getelementptr i16, i16* %2, i64 9, !dbg !2404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2405
  %137 = select i1 %135, i16 0, i16 -32768, !dbg !2405
  %138 = select i1 %135, i16 32767, i16 -1, !dbg !2405
  store i16 %137, i16* %136, align 2, !dbg !2404, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %139 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2412
  store i16 0, i16* %2, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %140 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2412
  store i16 0, i16* %139, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %141 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2412
  store i16 0, i16* %140, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %142 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2412
  store i16 0, i16* %141, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %143 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2412
  store i16 0, i16* %142, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %144 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2412
  store i16 0, i16* %143, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %145 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2412
  store i16 0, i16* %144, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  %146 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2412
  store i16 0, i16* %145, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  store i16 0, i16* %146, align 2, !dbg !2413, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2411
  store i16 %138, i16* %136, align 2, !dbg !2415, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2416
  br label %324, !dbg !2417

; <label>:147:                                    ; preds = %113, %112
  %148 = load i16, i16* %80, align 2, !dbg !2421, !tbaa !533
  %149 = and i16 %148, 32767, !dbg !2422
  %150 = icmp eq i16 %149, 32767, !dbg !2423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2424
  br i1 %150, label %152, label %151, !dbg !2424

; <label>:151:                                    ; preds = %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2427
  br label %165, !dbg !2427

; <label>:152:                                    ; preds = %147
  %153 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2428
  %154 = icmp eq i32 %153, 0, !dbg !2428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2427
  br i1 %154, label %155, label %165, !dbg !2427

; <label>:155:                                    ; preds = %152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %156 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2437
  store i16 0, i16* %2, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %157 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2437
  store i16 0, i16* %156, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %158 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2437
  store i16 0, i16* %157, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %159 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2437
  store i16 0, i16* %158, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %160 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2437
  store i16 0, i16* %159, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %161 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2437
  store i16 0, i16* %160, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %162 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2437
  store i16 0, i16* %161, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %163 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2437
  store i16 0, i16* %162, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  %164 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2437
  store i16 0, i16* %163, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  store i16 0, i16* %164, align 2, !dbg !2438, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2436
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2440
  br label %324, !dbg !2441

; <label>:165:                                    ; preds = %152, %151
  %166 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 0, !dbg !2442
  call fastcc void @emovi(i16* nonnull %0, i16* nonnull %166) #6, !dbg !2443
  %167 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0, !dbg !2444
  call fastcc void @emovi(i16* nonnull %1, i16* nonnull %167) #6, !dbg !2445
  %168 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 1, !dbg !2446
  %169 = load i16, i16* %168, align 2, !dbg !2446, !tbaa !533
  %170 = zext i16 %169 to i64, !dbg !2446
  %171 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 1, !dbg !2448
  %172 = load i16, i16* %171, align 2, !dbg !2448, !tbaa !533
  %173 = zext i16 %172 to i64, !dbg !2448
  %174 = icmp eq i16 %172, 0, !dbg !2450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2452
  br i1 %174, label %180, label %184, !dbg !2452

; <label>:175:                                    ; preds = %408, %404, %400, %396, %392, %388, %384, %380, %376, %180
  %176 = call fastcc i32 @enormlz(i16* nonnull %167) #6, !dbg !2453
  %177 = sext i32 %176 to i64, !dbg !2453
  %178 = sub nsw i64 %173, %177, !dbg !2460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2461
  %179 = load i16, i16* %168, align 2, !dbg !2462, !tbaa !533
  br label %184, !dbg !2461

; <label>:180:                                    ; preds = %165
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %181 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2469
  %182 = load i16, i16* %181, align 4, !dbg !2469, !tbaa !533
  %183 = icmp eq i16 %182, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %183, label %376, label %175, !dbg !2467

; <label>:184:                                    ; preds = %165, %175
  %185 = phi i16 [ %179, %175 ], [ %169, %165 ], !dbg !2462
  %186 = phi i64 [ %178, %175 ], [ %173, %165 ], !dbg !2471
  %187 = icmp eq i16 %185, 0, !dbg !2472
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2473
  br i1 %187, label %192, label %196, !dbg !2473

; <label>:188:                                    ; preds = %357, %353, %349, %345, %341, %337, %333, %329, %325, %192
  %189 = call fastcc i32 @enormlz(i16* nonnull %166) #6, !dbg !2474
  %190 = sext i32 %189 to i64, !dbg !2474
  %191 = sub nsw i64 %170, %190, !dbg !2481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2482
  br label %196, !dbg !2482

; <label>:192:                                    ; preds = %184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %193 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 2, !dbg !2487
  %194 = load i16, i16* %193, align 4, !dbg !2487, !tbaa !533
  %195 = icmp eq i16 %194, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %195, label %325, label %188, !dbg !2485

; <label>:196:                                    ; preds = %184, %188
  %197 = phi i64 [ %191, %188 ], [ %170, %184 ], !dbg !2471
  %198 = bitcast [14 x i16]* %5 to i8*, !dbg !2492
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %198) #4, !dbg !2492
  %199 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 0, !dbg !2493
  %200 = load i16, i16* %167, align 16, !dbg !2496, !tbaa !533
  %201 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 1, !dbg !2497
  store i16 %200, i16* %199, align 2, !dbg !2498, !tbaa !533
  %202 = load i16, i16* %171, align 2, !dbg !2499, !tbaa !533
  %203 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 2, !dbg !2500
  store i16 %202, i16* %201, align 2, !dbg !2501, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %204 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 3, !dbg !2506
  store i16 0, i16* %203, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %205 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 4, !dbg !2506
  store i16 0, i16* %204, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %206 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 5, !dbg !2506
  store i16 0, i16* %205, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %207 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 6, !dbg !2506
  store i16 0, i16* %206, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %208 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 7, !dbg !2506
  store i16 0, i16* %207, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %209 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 8, !dbg !2506
  store i16 0, i16* %208, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %210 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 9, !dbg !2506
  store i16 0, i16* %209, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %211 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 10, !dbg !2506
  store i16 0, i16* %210, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %212 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 11, !dbg !2506
  store i16 0, i16* %211, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %213 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 12, !dbg !2506
  store i16 0, i16* %212, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  store i16 0, i16* %213, align 2, !dbg !2509, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2505
  %214 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2516
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  br label %215, !dbg !2517

; <label>:215:                                    ; preds = %231, %196
  %216 = phi i32 [ 2, %196 ], [ %234, %231 ]
  %217 = phi i16 [ 0, %196 ], [ %232, %231 ]
  %218 = phi i16* [ %214, %196 ], [ %233, %231 ]
  %219 = load i16, i16* %218, align 2, !dbg !2518, !tbaa !533
  %220 = and i16 %219, 1, !dbg !2519
  %221 = icmp eq i16 %220, 0, !dbg !2519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2520
  br i1 %221, label %224, label %222, !dbg !2520

; <label>:222:                                    ; preds = %215
  %223 = or i16 %217, 1, !dbg !2521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2522
  br label %224, !dbg !2522

; <label>:224:                                    ; preds = %222, %215
  %225 = phi i16 [ %223, %222 ], [ %217, %215 ], !dbg !2523
  %226 = lshr i16 %219, 1, !dbg !2524
  store i16 %226, i16* %218, align 2, !dbg !2524, !tbaa !533
  %227 = and i16 %225, 2, !dbg !2525
  %228 = icmp eq i16 %227, 0, !dbg !2525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2526
  br i1 %228, label %231, label %229, !dbg !2526

; <label>:229:                                    ; preds = %224
  %230 = or i16 %226, -32768, !dbg !2527
  store i16 %230, i16* %218, align 2, !dbg !2527, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2528
  br label %231, !dbg !2528

; <label>:231:                                    ; preds = %229, %224
  %232 = shl i16 %225, 1, !dbg !2529
  %233 = getelementptr inbounds i16, i16* %218, i64 1, !dbg !2530
  %234 = add nuw nsw i32 %216, 1, !dbg !2531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2532
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2517
  %235 = icmp eq i32 %234, 13, !dbg !2533
  br i1 %235, label %236, label %215, !dbg !2517, !llvm.loop !1168

; <label>:236:                                    ; preds = %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2534
  %237 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2535
  %238 = load i16, i16* %237, align 2, !dbg !2535, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  %239 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3
  %240 = zext i16 %238 to i64
  %241 = mul nuw nsw i64 %240, 65535
  %242 = getelementptr inbounds [14 x i16], [14 x i16]* %5, i64 0, i64 0
  %243 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4
  %244 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5
  %245 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6
  %246 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7
  %247 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8
  %248 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9
  %249 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10
  %250 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11
  %251 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12
  %252 = load i16, i16* %214, align 4, !dbg !2540, !tbaa !533
  %253 = load i16, i16* %239, align 2, !dbg !2543, !tbaa !533
  br label %254, !dbg !2539

; <label>:254:                                    ; preds = %276, %236
  %255 = phi i16 [ %253, %236 ], [ %280, %276 ], !dbg !2543
  %256 = phi i16 [ %252, %236 ], [ %279, %276 ], !dbg !2540
  %257 = phi i64 [ 2, %236 ], [ %289, %276 ]
  %258 = zext i16 %256 to i64, !dbg !2544
  %259 = shl nuw nsw i64 %258, 16, !dbg !2545
  %260 = zext i16 %255 to i64, !dbg !2543
  %261 = or i64 %259, %260, !dbg !2546
  %262 = icmp ult i64 %241, %261, !dbg !2548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2550
  br i1 %262, label %266, label %263, !dbg !2550

; <label>:263:                                    ; preds = %254
  %264 = udiv i64 %261, %240, !dbg !2551
  %265 = trunc i64 %264 to i16, !dbg !2552
  br label %266

; <label>:266:                                    ; preds = %254, %263
  %267 = phi i16 [ %265, %263 ], [ -1, %254 ], !dbg !2554
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @m16m(i16 zeroext %267, i16* nonnull %166, i16* nonnull %242) #5, !dbg !2555
  %268 = call fastcc i32 @ecmpm(i16* nonnull %242, i16* nonnull %167) #5, !dbg !2556
  %269 = icmp sgt i32 %268, 0, !dbg !2558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2559
  br i1 %269, label %270, label %276, !dbg !2559

; <label>:270:                                    ; preds = %266
  %271 = add i16 %267, -1, !dbg !2560
  call fastcc void @esubm(i16* nonnull %166, i16* nonnull %242) #5, !dbg !2562
  %272 = call fastcc i32 @ecmpm(i16* nonnull %242, i16* nonnull %167) #5, !dbg !2563
  %273 = icmp sgt i32 %272, 0, !dbg !2565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2566
  br i1 %273, label %274, label %276, !dbg !2566

; <label>:274:                                    ; preds = %270
  %275 = add i16 %267, -2, !dbg !2567
  call fastcc void @esubm(i16* nonnull %166, i16* nonnull %242) #5, !dbg !2569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2570
  br label %276, !dbg !2570

; <label>:276:                                    ; preds = %274, %270, %266
  %277 = phi i16 [ %275, %274 ], [ %271, %270 ], [ %267, %266 ], !dbg !2554
  call fastcc void @esubm(i16* nonnull %242, i16* nonnull %167) #5, !dbg !2571
  %278 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 %257, !dbg !2572
  store i16 %277, i16* %278, align 2, !dbg !2573, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %279 = load i16, i16* %239, align 2, !dbg !2586, !tbaa !533
  store i16 %279, i16* %214, align 4, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %280 = load i16, i16* %243, align 8, !dbg !2586, !tbaa !533
  store i16 %280, i16* %239, align 2, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %281 = load i16, i16* %244, align 2, !dbg !2586, !tbaa !533
  store i16 %281, i16* %243, align 8, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %282 = load i16, i16* %245, align 4, !dbg !2586, !tbaa !533
  store i16 %282, i16* %244, align 2, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %283 = load i16, i16* %246, align 2, !dbg !2586, !tbaa !533
  store i16 %283, i16* %245, align 4, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %284 = load i16, i16* %247, align 16, !dbg !2586, !tbaa !533
  store i16 %284, i16* %246, align 2, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %285 = load i16, i16* %248, align 2, !dbg !2586, !tbaa !533
  store i16 %285, i16* %247, align 16, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %286 = load i16, i16* %249, align 4, !dbg !2586, !tbaa !533
  store i16 %286, i16* %248, align 2, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %287 = load i16, i16* %250, align 2, !dbg !2586, !tbaa !533
  store i16 %287, i16* %249, align 4, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  %288 = load i16, i16* %251, align 8, !dbg !2586, !tbaa !533
  store i16 %288, i16* %250, align 2, !dbg !2588, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2585
  store i16 0, i16* %251, align 8, !dbg !2590, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2591
  %289 = add nuw nsw i64 %257, 1, !dbg !2592
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2539
  %290 = icmp eq i64 %289, 13, !dbg !2594
  br i1 %290, label %291, label %254, !dbg !2539, !llvm.loop !2595

; <label>:291:                                    ; preds = %276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2599
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %292 = or i16 %280, %279, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %293 = or i16 %292, %281, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %294 = or i16 %293, %282, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %295 = or i16 %294, %283, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %296 = or i16 %295, %284, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %297 = or i16 %296, %285, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %298 = or i16 %297, %286, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %299 = or i16 %298, %287, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %300 = or i16 %299, %288, !dbg !2604
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2602
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2601
  %301 = icmp eq i16 %300, 0, !dbg !2606
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2608
  br i1 %301, label %303, label %302, !dbg !2608

; <label>:302:                                    ; preds = %291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2609
  br label %303, !dbg !2609

; <label>:303:                                    ; preds = %291, %302
  %304 = phi i32 [ 1, %302 ], [ 0, %291 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %305 = load i16, i16* %199, align 2, !dbg !2613, !tbaa !533
  store i16 %305, i16* %167, align 16, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %306 = load i16, i16* %201, align 2, !dbg !2613, !tbaa !533
  store i16 %306, i16* %171, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %307 = load i16, i16* %203, align 2, !dbg !2613, !tbaa !533
  store i16 %307, i16* %214, align 4, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %308 = load i16, i16* %204, align 2, !dbg !2613, !tbaa !533
  store i16 %308, i16* %239, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %309 = load i16, i16* %205, align 2, !dbg !2613, !tbaa !533
  store i16 %309, i16* %243, align 8, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %310 = load i16, i16* %206, align 2, !dbg !2613, !tbaa !533
  store i16 %310, i16* %244, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %311 = load i16, i16* %207, align 2, !dbg !2613, !tbaa !533
  store i16 %311, i16* %245, align 4, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %312 = load i16, i16* %208, align 2, !dbg !2613, !tbaa !533
  store i16 %312, i16* %246, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %313 = load i16, i16* %209, align 2, !dbg !2613, !tbaa !533
  store i16 %313, i16* %247, align 16, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %314 = load i16, i16* %210, align 2, !dbg !2613, !tbaa !533
  store i16 %314, i16* %248, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %315 = load i16, i16* %211, align 2, !dbg !2613, !tbaa !533
  store i16 %315, i16* %249, align 4, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %316 = load i16, i16* %212, align 2, !dbg !2613, !tbaa !533
  store i16 %316, i16* %250, align 2, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  %317 = load i16, i16* %213, align 2, !dbg !2613, !tbaa !533
  store i16 %317, i16* %251, align 8, !dbg !2615, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2616
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2612
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %198) #4, !dbg !2617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2618
  %318 = add nsw i64 %186, 16383, !dbg !2619
  %319 = sub nsw i64 %318, %197, !dbg !2620
  call fastcc void @emdnorm(i16* nonnull %167, i32 %304, i32 0, i64 %319, i32 64, %struct.LDPARMS* nonnull %3) #6, !dbg !2622
  %320 = load i16, i16* %166, align 16, !dbg !2623, !tbaa !533
  %321 = load i16, i16* %167, align 16, !dbg !2625, !tbaa !533
  %322 = icmp ne i16 %320, %321, !dbg !2626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2627
  %323 = sext i1 %322 to i16, !dbg !2627
  store i16 %323, i16* %167, align 16, !dbg !2628, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @emovo(i16* nonnull %167, i16* %2) #6, !dbg !2629
  br label %324, !dbg !2630

; <label>:324:                                    ; preds = %303, %361, %412, %155, %133, %97, %44, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2631
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %9) #4, !dbg !2630
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %8) #4, !dbg !2630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2630
  ret void, !dbg !2630

; <label>:325:                                    ; preds = %192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %326 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2487
  %327 = load i16, i16* %326, align 2, !dbg !2487, !tbaa !533
  %328 = icmp eq i16 %327, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %328, label %329, label %188, !dbg !2485

; <label>:329:                                    ; preds = %325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %330 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4, !dbg !2487
  %331 = load i16, i16* %330, align 8, !dbg !2487, !tbaa !533
  %332 = icmp eq i16 %331, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %332, label %333, label %188, !dbg !2485

; <label>:333:                                    ; preds = %329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %334 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5, !dbg !2487
  %335 = load i16, i16* %334, align 2, !dbg !2487, !tbaa !533
  %336 = icmp eq i16 %335, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %336, label %337, label %188, !dbg !2485

; <label>:337:                                    ; preds = %333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %338 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6, !dbg !2487
  %339 = load i16, i16* %338, align 4, !dbg !2487, !tbaa !533
  %340 = icmp eq i16 %339, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %340, label %341, label %188, !dbg !2485

; <label>:341:                                    ; preds = %337
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %342 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7, !dbg !2487
  %343 = load i16, i16* %342, align 2, !dbg !2487, !tbaa !533
  %344 = icmp eq i16 %343, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %344, label %345, label %188, !dbg !2485

; <label>:345:                                    ; preds = %341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %346 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8, !dbg !2487
  %347 = load i16, i16* %346, align 16, !dbg !2487, !tbaa !533
  %348 = icmp eq i16 %347, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %348, label %349, label %188, !dbg !2485

; <label>:349:                                    ; preds = %345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %350 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9, !dbg !2487
  %351 = load i16, i16* %350, align 2, !dbg !2487, !tbaa !533
  %352 = icmp eq i16 %351, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %352, label %353, label %188, !dbg !2485

; <label>:353:                                    ; preds = %349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %354 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10, !dbg !2487
  %355 = load i16, i16* %354, align 4, !dbg !2487, !tbaa !533
  %356 = icmp eq i16 %355, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %356, label %357, label %188, !dbg !2485

; <label>:357:                                    ; preds = %353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %358 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2487
  %359 = load i16, i16* %358, align 2, !dbg !2487, !tbaa !533
  %360 = icmp eq i16 %359, 0, !dbg !2488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2485
  br i1 %360, label %361, label %188, !dbg !2485

; <label>:361:                                    ; preds = %357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2484
  %362 = load i16, i16* %166, align 16, !dbg !2632, !tbaa !533
  %363 = load i16, i16* %167, align 16, !dbg !2634, !tbaa !533
  %364 = icmp eq i16 %362, %363, !dbg !2635
  %365 = getelementptr i16, i16* %2, i64 9, !dbg !2636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2637
  %366 = select i1 %364, i16 0, i16 -32768, !dbg !2637
  %367 = select i1 %364, i16 32767, i16 -1, !dbg !2637
  store i16 %366, i16* %365, align 2, !dbg !2636, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2642
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %368 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2644
  store i16 0, i16* %2, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %369 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2644
  store i16 0, i16* %368, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %370 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2644
  store i16 0, i16* %369, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %371 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2644
  store i16 0, i16* %370, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %372 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2644
  store i16 0, i16* %371, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %373 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2644
  store i16 0, i16* %372, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %374 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2644
  store i16 0, i16* %373, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  %375 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2644
  store i16 0, i16* %374, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  store i16 0, i16* %375, align 2, !dbg !2645, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2643
  store i16 %367, i16* %365, align 2, !dbg !2647, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2648
  br label %324, !dbg !2649

; <label>:376:                                    ; preds = %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %377 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2469
  %378 = load i16, i16* %377, align 2, !dbg !2469, !tbaa !533
  %379 = icmp eq i16 %378, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %379, label %380, label %175, !dbg !2467

; <label>:380:                                    ; preds = %376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %381 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2469
  %382 = load i16, i16* %381, align 8, !dbg !2469, !tbaa !533
  %383 = icmp eq i16 %382, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %383, label %384, label %175, !dbg !2467

; <label>:384:                                    ; preds = %380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %385 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2469
  %386 = load i16, i16* %385, align 2, !dbg !2469, !tbaa !533
  %387 = icmp eq i16 %386, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %387, label %388, label %175, !dbg !2467

; <label>:388:                                    ; preds = %384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %389 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2469
  %390 = load i16, i16* %389, align 4, !dbg !2469, !tbaa !533
  %391 = icmp eq i16 %390, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %391, label %392, label %175, !dbg !2467

; <label>:392:                                    ; preds = %388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %393 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2469
  %394 = load i16, i16* %393, align 2, !dbg !2469, !tbaa !533
  %395 = icmp eq i16 %394, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %395, label %396, label %175, !dbg !2467

; <label>:396:                                    ; preds = %392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %397 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2469
  %398 = load i16, i16* %397, align 16, !dbg !2469, !tbaa !533
  %399 = icmp eq i16 %398, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %399, label %400, label %175, !dbg !2467

; <label>:400:                                    ; preds = %396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %401 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2469
  %402 = load i16, i16* %401, align 2, !dbg !2469, !tbaa !533
  %403 = icmp eq i16 %402, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %403, label %404, label %175, !dbg !2467

; <label>:404:                                    ; preds = %400
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %405 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2469
  %406 = load i16, i16* %405, align 4, !dbg !2469, !tbaa !533
  %407 = icmp eq i16 %406, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %407, label %408, label %175, !dbg !2467

; <label>:408:                                    ; preds = %404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  %409 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2469
  %410 = load i16, i16* %409, align 2, !dbg !2469, !tbaa !533
  %411 = icmp eq i16 %410, 0, !dbg !2470
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2467
  br i1 %411, label %412, label %175, !dbg !2467

; <label>:412:                                    ; preds = %408
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %413 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2655
  store i16 0, i16* %2, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %414 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2655
  store i16 0, i16* %413, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %415 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2655
  store i16 0, i16* %414, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %416 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2655
  store i16 0, i16* %415, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %417 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2655
  store i16 0, i16* %416, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %418 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2655
  store i16 0, i16* %417, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %419 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2655
  store i16 0, i16* %418, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %420 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2655
  store i16 0, i16* %419, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  %421 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2655
  store i16 0, i16* %420, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  store i16 0, i16* %421, align 2, !dbg !2656, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2658
  br label %324, !dbg !2659
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emul(i16* nocapture readonly, i16* nocapture readonly, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !2660 {
  %5 = alloca [13 x i16], align 16
  %6 = alloca [13 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = bitcast [13 x i16]* %6 to i8*, !dbg !2690
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %8) #4, !dbg !2690
  %9 = bitcast [13 x i16]* %7 to i8*, !dbg !2690
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %9) #4, !dbg !2690
  %10 = tail call fastcc i32 @eisnan(i16* %0) #6, !dbg !2693
  %11 = icmp eq i32 %10, 0, !dbg !2693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2695
  br i1 %11, label %41, label %12, !dbg !2695

; <label>:12:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %13 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2703
  %14 = load i16, i16* %0, align 2, !dbg !2704, !tbaa !533
  %15 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2705
  store i16 %14, i16* %2, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %16 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2703
  %17 = load i16, i16* %13, align 2, !dbg !2704, !tbaa !533
  %18 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2705
  store i16 %17, i16* %15, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %19 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2703
  %20 = load i16, i16* %16, align 2, !dbg !2704, !tbaa !533
  %21 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2705
  store i16 %20, i16* %18, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %22 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2703
  %23 = load i16, i16* %19, align 2, !dbg !2704, !tbaa !533
  %24 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2705
  store i16 %23, i16* %21, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %25 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2703
  %26 = load i16, i16* %22, align 2, !dbg !2704, !tbaa !533
  %27 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2705
  store i16 %26, i16* %24, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %28 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2703
  %29 = load i16, i16* %25, align 2, !dbg !2704, !tbaa !533
  %30 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2705
  store i16 %29, i16* %27, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %31 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2703
  %32 = load i16, i16* %28, align 2, !dbg !2704, !tbaa !533
  %33 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2705
  store i16 %32, i16* %30, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %34 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2703
  %35 = load i16, i16* %31, align 2, !dbg !2704, !tbaa !533
  %36 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2705
  store i16 %35, i16* %33, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %37 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2703
  %38 = load i16, i16* %34, align 2, !dbg !2704, !tbaa !533
  %39 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2705
  store i16 %38, i16* %36, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  %40 = load i16, i16* %37, align 2, !dbg !2704, !tbaa !533
  store i16 %40, i16* %39, align 2, !dbg !2706, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2708
  br label %271, !dbg !2709

; <label>:41:                                     ; preds = %4
  %42 = tail call fastcc i32 @eisnan(i16* %1) #6, !dbg !2710
  %43 = icmp eq i32 %42, 0, !dbg !2710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2712
  br i1 %43, label %73, label %44, !dbg !2712

; <label>:44:                                     ; preds = %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %45 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2720
  %46 = load i16, i16* %1, align 2, !dbg !2721, !tbaa !533
  %47 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2722
  store i16 %46, i16* %2, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %48 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2720
  %49 = load i16, i16* %45, align 2, !dbg !2721, !tbaa !533
  %50 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2722
  store i16 %49, i16* %47, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %51 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2720
  %52 = load i16, i16* %48, align 2, !dbg !2721, !tbaa !533
  %53 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2722
  store i16 %52, i16* %50, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %54 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2720
  %55 = load i16, i16* %51, align 2, !dbg !2721, !tbaa !533
  %56 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2722
  store i16 %55, i16* %53, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %57 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2720
  %58 = load i16, i16* %54, align 2, !dbg !2721, !tbaa !533
  %59 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2722
  store i16 %58, i16* %56, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %60 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2720
  %61 = load i16, i16* %57, align 2, !dbg !2721, !tbaa !533
  %62 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2722
  store i16 %61, i16* %59, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %63 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2720
  %64 = load i16, i16* %60, align 2, !dbg !2721, !tbaa !533
  %65 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2722
  store i16 %64, i16* %62, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %66 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2720
  %67 = load i16, i16* %63, align 2, !dbg !2721, !tbaa !533
  %68 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2722
  store i16 %67, i16* %65, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %69 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2720
  %70 = load i16, i16* %66, align 2, !dbg !2721, !tbaa !533
  %71 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2722
  store i16 %70, i16* %68, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  %72 = load i16, i16* %69, align 2, !dbg !2721, !tbaa !533
  store i16 %72, i16* %71, align 2, !dbg !2723, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2719
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2725
  br label %271, !dbg !2726

; <label>:73:                                     ; preds = %41
  %74 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2730
  %75 = load i16, i16* %74, align 2, !dbg !2730, !tbaa !533
  %76 = and i16 %75, 32767, !dbg !2731
  %77 = icmp eq i16 %76, 32767, !dbg !2732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2733
  br i1 %77, label %79, label %78, !dbg !2733

; <label>:78:                                     ; preds = %73
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2734
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  br label %85, !dbg !2736

; <label>:79:                                     ; preds = %73
  %80 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2737
  %81 = icmp eq i32 %80, 0, !dbg !2737
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2736
  br i1 %81, label %82, label %85, !dbg !2736

; <label>:82:                                     ; preds = %79
  %83 = tail call fastcc i32 @ecmp(i16* %1, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !2740
  %84 = icmp eq i32 %83, 0, !dbg !2741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2742
  br i1 %84, label %97, label %85, !dbg !2742

; <label>:85:                                     ; preds = %79, %78, %82
  %86 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2745
  %87 = load i16, i16* %86, align 2, !dbg !2745, !tbaa !533
  %88 = and i16 %87, 32767, !dbg !2746
  %89 = icmp eq i16 %88, 32767, !dbg !2747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2748
  br i1 %89, label %91, label %90, !dbg !2748

; <label>:90:                                     ; preds = %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  br label %107, !dbg !2751

; <label>:91:                                     ; preds = %85
  %92 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2752
  %93 = icmp eq i32 %92, 0, !dbg !2752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2753
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2754
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2751
  br i1 %93, label %94, label %107, !dbg !2751

; <label>:94:                                     ; preds = %91
  %95 = tail call fastcc i32 @ecmp(i16* nonnull %0, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !2755
  %96 = icmp eq i32 %95, 0, !dbg !2756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2757
  br i1 %96, label %97, label %107, !dbg !2757

; <label>:97:                                     ; preds = %94, %82
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2762
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2764
  %98 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  %99 = getelementptr i16, i16* %2, i64 8, !dbg !2766
  store i16 0, i16* %2, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %100 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %98, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %101 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %100, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %102 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %101, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %103 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %102, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %104 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %103, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  %105 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2765
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %104, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  store i16 0, i16* %105, align 2, !dbg !2767, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2766
  %106 = getelementptr i16, i16* %2, i64 9, !dbg !2766
  store i16 -16384, i16* %99, align 2, !dbg !2769, !tbaa !533
  store i16 32767, i16* %106, align 2, !dbg !2770, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2772
  br label %271, !dbg !2773

; <label>:107:                                    ; preds = %91, %90, %94
  %108 = load i16, i16* %74, align 2, !dbg !2777, !tbaa !533
  %109 = and i16 %108, 32767, !dbg !2778
  %110 = icmp eq i16 %109, 32767, !dbg !2779
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2780
  br i1 %110, label %112, label %111, !dbg !2780

; <label>:111:                                    ; preds = %107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br label %115, !dbg !2783

; <label>:112:                                    ; preds = %107
  %113 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2784
  %114 = icmp eq i32 %113, 0, !dbg !2784
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2782
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2783
  br i1 %114, label %123, label %115, !dbg !2783

; <label>:115:                                    ; preds = %112, %111
  %116 = load i16, i16* %86, align 2, !dbg !2789, !tbaa !533
  %117 = and i16 %116, 32767, !dbg !2790
  %118 = icmp eq i16 %117, 32767, !dbg !2791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2792
  br i1 %118, label %120, label %119, !dbg !2792

; <label>:119:                                    ; preds = %115
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2795
  br label %154, !dbg !2795

; <label>:120:                                    ; preds = %115
  %121 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2796
  %122 = icmp eq i32 %121, 0, !dbg !2796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2798
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2795
  br i1 %122, label %123, label %154, !dbg !2795

; <label>:123:                                    ; preds = %112, %120
  %124 = tail call fastcc i32 @eisnan(i16* nonnull %0) #5, !dbg !2803
  %125 = icmp eq i32 %124, 0, !dbg !2803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2804
  br i1 %125, label %127, label %126, !dbg !2804

; <label>:126:                                    ; preds = %123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2805
  br label %131, !dbg !2805

; <label>:127:                                    ; preds = %123
  %128 = load i16, i16* %74, align 2, !dbg !2806, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2808
  %129 = lshr i16 %128, 15, !dbg !2809
  %130 = zext i16 %129 to i32, !dbg !2809
  br label %131, !dbg !2809

; <label>:131:                                    ; preds = %126, %127
  %132 = phi i32 [ 0, %126 ], [ %130, %127 ], !dbg !2808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2810
  %133 = tail call fastcc i32 @eisnan(i16* nonnull %1) #5, !dbg !2813
  %134 = icmp eq i32 %133, 0, !dbg !2813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2814
  br i1 %134, label %136, label %135, !dbg !2814

; <label>:135:                                    ; preds = %131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2815
  br label %140, !dbg !2815

; <label>:136:                                    ; preds = %131
  %137 = load i16, i16* %86, align 2, !dbg !2816, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2818
  %138 = lshr i16 %137, 15, !dbg !2819
  %139 = zext i16 %138 to i32, !dbg !2819
  br label %140, !dbg !2819

; <label>:140:                                    ; preds = %135, %136
  %141 = phi i32 [ 0, %135 ], [ %139, %136 ], !dbg !2818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2820
  %142 = icmp eq i32 %132, %141, !dbg !2821
  %143 = getelementptr i16, i16* %2, i64 9, !dbg !2822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2823
  %144 = select i1 %142, i16 0, i16 -32768, !dbg !2823
  %145 = select i1 %142, i16 32767, i16 -1, !dbg !2823
  store i16 %144, i16* %143, align 2, !dbg !2822, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %146 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2830
  store i16 0, i16* %2, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %147 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2830
  store i16 0, i16* %146, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %148 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2830
  store i16 0, i16* %147, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %149 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2830
  store i16 0, i16* %148, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %150 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2830
  store i16 0, i16* %149, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %151 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2830
  store i16 0, i16* %150, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %152 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2830
  store i16 0, i16* %151, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  %153 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2830
  store i16 0, i16* %152, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  store i16 0, i16* %153, align 2, !dbg !2831, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2832
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2829
  store i16 %145, i16* %143, align 2, !dbg !2833, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2834
  br label %271, !dbg !2835

; <label>:154:                                    ; preds = %120, %119
  %155 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 0, !dbg !2836
  call fastcc void @emovi(i16* nonnull %0, i16* nonnull %155) #6, !dbg !2837
  %156 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0, !dbg !2838
  call fastcc void @emovi(i16* nonnull %1, i16* nonnull %156) #6, !dbg !2839
  %157 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 1, !dbg !2840
  %158 = load i16, i16* %157, align 2, !dbg !2840, !tbaa !533
  %159 = zext i16 %158 to i64, !dbg !2840
  %160 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 1, !dbg !2842
  %161 = load i16, i16* %160, align 2, !dbg !2842, !tbaa !533
  %162 = zext i16 %161 to i64, !dbg !2842
  %163 = icmp eq i16 %158, 0, !dbg !2844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2846
  br i1 %163, label %169, label %173, !dbg !2846

; <label>:164:                                    ; preds = %350, %346, %342, %338, %334, %330, %326, %322, %318, %169
  %165 = call fastcc i32 @enormlz(i16* nonnull %155) #6, !dbg !2847
  %166 = sext i32 %165 to i64, !dbg !2847
  %167 = sub nsw i64 %159, %166, !dbg !2854
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2855
  %168 = load i16, i16* %160, align 2, !dbg !2856, !tbaa !533
  br label %173, !dbg !2855

; <label>:169:                                    ; preds = %154
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %170 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 2, !dbg !2863
  %171 = load i16, i16* %170, align 4, !dbg !2863, !tbaa !533
  %172 = icmp eq i16 %171, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %172, label %318, label %164, !dbg !2861

; <label>:173:                                    ; preds = %154, %164
  %174 = phi i16 [ %161, %154 ], [ %168, %164 ], !dbg !2856
  %175 = phi i64 [ %159, %154 ], [ %167, %164 ], !dbg !2865
  %176 = icmp eq i16 %174, 0, !dbg !2866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2867
  br i1 %176, label %182, label %186, !dbg !2867

; <label>:177:                                    ; preds = %304, %300, %296, %292, %288, %284, %280, %276, %272, %182
  %178 = call fastcc i32 @enormlz(i16* nonnull %156) #6, !dbg !2868
  %179 = sext i32 %178 to i64, !dbg !2868
  %180 = sub nsw i64 %162, %179, !dbg !2875
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2876
  %181 = load i16, i16* %160, align 2, !dbg !2877, !tbaa !533
  br label %186, !dbg !2876

; <label>:182:                                    ; preds = %173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %183 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2882
  %184 = load i16, i16* %183, align 4, !dbg !2882, !tbaa !533
  %185 = icmp eq i16 %184, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %185, label %272, label %177, !dbg !2880

; <label>:186:                                    ; preds = %173, %177
  %187 = phi i16 [ %181, %177 ], [ %174, %173 ], !dbg !2877
  %188 = phi i64 [ %180, %177 ], [ %162, %173 ], !dbg !2865
  %189 = bitcast [13 x i16]* %5 to i8*, !dbg !2887
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %189) #4, !dbg !2887
  %190 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 0, !dbg !2888
  %191 = load i16, i16* %156, align 16, !dbg !2890, !tbaa !533
  store i16 %191, i16* %190, align 2, !dbg !2891, !tbaa !533
  %192 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 1, !dbg !2892
  store i16 %187, i16* %192, align 2, !dbg !2893, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2895
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %193 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 2, !dbg !2898
  store i16 0, i16* %193, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %194 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 3, !dbg !2898
  store i16 0, i16* %194, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %195 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 4, !dbg !2898
  store i16 0, i16* %195, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %196 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 5, !dbg !2898
  store i16 0, i16* %196, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %197 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 6, !dbg !2898
  store i16 0, i16* %197, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %198 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 7, !dbg !2898
  store i16 0, i16* %198, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %199 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 8, !dbg !2898
  store i16 0, i16* %199, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %200 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 9, !dbg !2898
  store i16 0, i16* %200, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %201 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 10, !dbg !2898
  store i16 0, i16* %201, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %202 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 11, !dbg !2898
  store i16 0, i16* %202, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %203 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 12, !dbg !2898
  store i16 0, i16* %203, align 2, !dbg !2900, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2897
  %204 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2903
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  %205 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 0
  br label %206, !dbg !2908

; <label>:206:                                    ; preds = %235, %186
  %207 = phi i16 [ 0, %186 ], [ %236, %235 ]
  %208 = phi i16 [ 0, %186 ], [ %237, %235 ]
  %209 = phi i16 [ 0, %186 ], [ %238, %235 ]
  %210 = phi i16 [ 0, %186 ], [ %239, %235 ]
  %211 = phi i16 [ 0, %186 ], [ %240, %235 ]
  %212 = phi i16 [ 0, %186 ], [ %241, %235 ]
  %213 = phi i16 [ 0, %186 ], [ %242, %235 ]
  %214 = phi i16 [ 0, %186 ], [ %243, %235 ]
  %215 = phi i16 [ 0, %186 ], [ %244, %235 ]
  %216 = phi i16 [ 0, %186 ], [ %245, %235 ]
  %217 = phi i16* [ %204, %186 ], [ %222, %235 ]
  %218 = phi i32 [ 3, %186 ], [ %249, %235 ]
  %219 = phi i32 [ 0, %186 ], [ %248, %235 ]
  %220 = load i16, i16* %217, align 2, !dbg !2909, !tbaa !533
  %221 = icmp eq i16 %220, 0, !dbg !2913
  %222 = getelementptr inbounds i16, i16* %217, i64 -1, !dbg !2914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2916
  br i1 %221, label %235, label %223, !dbg !2916

; <label>:223:                                    ; preds = %206
  call fastcc void @m16m(i16 zeroext %220, i16* nonnull %156, i16* nonnull %205) #5, !dbg !2917
  call fastcc void @eaddm(i16* nonnull %205, i16* nonnull %190) #5, !dbg !2918
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %224 = load i16, i16* %203, align 2, !dbg !2919, !tbaa !533
  %225 = load i16, i16* %202, align 2, !dbg !2920, !tbaa !533
  %226 = load i16, i16* %201, align 2, !dbg !2920, !tbaa !533
  %227 = load i16, i16* %200, align 2, !dbg !2920, !tbaa !533
  %228 = load i16, i16* %199, align 2, !dbg !2920, !tbaa !533
  %229 = load i16, i16* %198, align 2, !dbg !2920, !tbaa !533
  %230 = load i16, i16* %197, align 2, !dbg !2920, !tbaa !533
  %231 = load i16, i16* %196, align 2, !dbg !2920, !tbaa !533
  %232 = load i16, i16* %195, align 2, !dbg !2920, !tbaa !533
  %233 = load i16, i16* %194, align 2, !dbg !2920, !tbaa !533
  %234 = load i16, i16* %193, align 2, !dbg !2920, !tbaa !533
  br label %235

; <label>:235:                                    ; preds = %223, %206
  %236 = phi i16 [ 0, %206 ], [ %234, %223 ], !dbg !2920
  %237 = phi i16 [ %207, %206 ], [ %233, %223 ], !dbg !2920
  %238 = phi i16 [ %208, %206 ], [ %232, %223 ], !dbg !2920
  %239 = phi i16 [ %209, %206 ], [ %231, %223 ], !dbg !2920
  %240 = phi i16 [ %210, %206 ], [ %230, %223 ], !dbg !2920
  %241 = phi i16 [ %211, %206 ], [ %229, %223 ], !dbg !2920
  %242 = phi i16 [ %212, %206 ], [ %228, %223 ], !dbg !2920
  %243 = phi i16 [ %213, %206 ], [ %227, %223 ], !dbg !2920
  %244 = phi i16 [ %214, %206 ], [ %226, %223 ], !dbg !2920
  %245 = phi i16 [ %215, %206 ], [ %225, %223 ], !dbg !2920
  %246 = phi i16 [ %216, %206 ], [ %224, %223 ], !dbg !2919
  %247 = zext i16 %246 to i32, !dbg !2919
  %248 = or i32 %219, %247, !dbg !2929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %245, i16* %203, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %244, i16* %202, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %243, i16* %201, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %242, i16* %200, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %241, i16* %199, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %240, i16* %198, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %239, i16* %197, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %238, i16* %196, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %237, i16* %195, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 %236, i16* %194, align 2, !dbg !2935, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2934
  store i16 0, i16* %193, align 2, !dbg !2937, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2938
  %249 = add nuw nsw i32 %218, 1, !dbg !2939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2908
  %250 = icmp eq i32 %249, 13, !dbg !2941
  br i1 %250, label %251, label %206, !dbg !2908, !llvm.loop !2942

; <label>:251:                                    ; preds = %235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %252 = load i16, i16* %190, align 2, !dbg !2948, !tbaa !533
  store i16 %252, i16* %156, align 16, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %253 = load i16, i16* %192, align 2, !dbg !2948, !tbaa !533
  store i16 %253, i16* %160, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %254 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2952
  store i16 0, i16* %254, align 4, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %255 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2952
  store i16 %236, i16* %255, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %256 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2952
  store i16 %237, i16* %256, align 8, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %257 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2952
  store i16 %238, i16* %257, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %258 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2952
  store i16 %239, i16* %258, align 4, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %259 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2952
  store i16 %240, i16* %259, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %260 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2952
  store i16 %241, i16* %260, align 16, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %261 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2952
  store i16 %242, i16* %261, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %262 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2952
  store i16 %243, i16* %262, align 4, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %263 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2952
  store i16 %244, i16* %263, align 2, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  %264 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2952
  store i16 %245, i16* %264, align 8, !dbg !2950, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2947
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %189) #4, !dbg !2953
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2954
  %265 = add nsw i64 %175, -16382, !dbg !2956
  %266 = add nsw i64 %265, %188, !dbg !2957
  call fastcc void @emdnorm(i16* nonnull %156, i32 %248, i32 0, i64 %266, i32 64, %struct.LDPARMS* nonnull %3) #6, !dbg !2959
  %267 = load i16, i16* %155, align 16, !dbg !2960, !tbaa !533
  %268 = load i16, i16* %156, align 16, !dbg !2962, !tbaa !533
  %269 = icmp ne i16 %267, %268, !dbg !2963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2964
  %270 = sext i1 %269 to i16, !dbg !2964
  store i16 %270, i16* %156, align 16, !dbg !2965, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call fastcc void @emovo(i16* nonnull %156, i16* %2) #6, !dbg !2966
  br label %271, !dbg !2967

; <label>:271:                                    ; preds = %251, %308, %354, %140, %97, %44, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2968
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %9) #4, !dbg !2967
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %8) #4, !dbg !2967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2967
  ret void, !dbg !2967

; <label>:272:                                    ; preds = %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %273 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2882
  %274 = load i16, i16* %273, align 2, !dbg !2882, !tbaa !533
  %275 = icmp eq i16 %274, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %275, label %276, label %177, !dbg !2880

; <label>:276:                                    ; preds = %272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %277 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2882
  %278 = load i16, i16* %277, align 8, !dbg !2882, !tbaa !533
  %279 = icmp eq i16 %278, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %279, label %280, label %177, !dbg !2880

; <label>:280:                                    ; preds = %276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %281 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2882
  %282 = load i16, i16* %281, align 2, !dbg !2882, !tbaa !533
  %283 = icmp eq i16 %282, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %283, label %284, label %177, !dbg !2880

; <label>:284:                                    ; preds = %280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %285 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2882
  %286 = load i16, i16* %285, align 4, !dbg !2882, !tbaa !533
  %287 = icmp eq i16 %286, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %287, label %288, label %177, !dbg !2880

; <label>:288:                                    ; preds = %284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %289 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2882
  %290 = load i16, i16* %289, align 2, !dbg !2882, !tbaa !533
  %291 = icmp eq i16 %290, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %291, label %292, label %177, !dbg !2880

; <label>:292:                                    ; preds = %288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %293 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2882
  %294 = load i16, i16* %293, align 16, !dbg !2882, !tbaa !533
  %295 = icmp eq i16 %294, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %295, label %296, label %177, !dbg !2880

; <label>:296:                                    ; preds = %292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %297 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2882
  %298 = load i16, i16* %297, align 2, !dbg !2882, !tbaa !533
  %299 = icmp eq i16 %298, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %299, label %300, label %177, !dbg !2880

; <label>:300:                                    ; preds = %296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %301 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2882
  %302 = load i16, i16* %301, align 4, !dbg !2882, !tbaa !533
  %303 = icmp eq i16 %302, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %303, label %304, label %177, !dbg !2880

; <label>:304:                                    ; preds = %300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  %305 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2882
  %306 = load i16, i16* %305, align 2, !dbg !2882, !tbaa !533
  %307 = icmp eq i16 %306, 0, !dbg !2883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2880
  br i1 %307, label %308, label %177, !dbg !2880

; <label>:308:                                    ; preds = %304
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %309 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2974
  store i16 0, i16* %2, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %310 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2974
  store i16 0, i16* %309, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %311 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2974
  store i16 0, i16* %310, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %312 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2974
  store i16 0, i16* %311, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %313 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2974
  store i16 0, i16* %312, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %314 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2974
  store i16 0, i16* %313, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %315 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2974
  store i16 0, i16* %314, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %316 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2974
  store i16 0, i16* %315, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  %317 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2974
  store i16 0, i16* %316, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  store i16 0, i16* %317, align 2, !dbg !2975, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2976
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2977
  br label %271, !dbg !2978

; <label>:318:                                    ; preds = %169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %319 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2863
  %320 = load i16, i16* %319, align 2, !dbg !2863, !tbaa !533
  %321 = icmp eq i16 %320, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %321, label %322, label %164, !dbg !2861

; <label>:322:                                    ; preds = %318
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %323 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4, !dbg !2863
  %324 = load i16, i16* %323, align 8, !dbg !2863, !tbaa !533
  %325 = icmp eq i16 %324, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %325, label %326, label %164, !dbg !2861

; <label>:326:                                    ; preds = %322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %327 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5, !dbg !2863
  %328 = load i16, i16* %327, align 2, !dbg !2863, !tbaa !533
  %329 = icmp eq i16 %328, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %329, label %330, label %164, !dbg !2861

; <label>:330:                                    ; preds = %326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %331 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6, !dbg !2863
  %332 = load i16, i16* %331, align 4, !dbg !2863, !tbaa !533
  %333 = icmp eq i16 %332, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %333, label %334, label %164, !dbg !2861

; <label>:334:                                    ; preds = %330
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %335 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7, !dbg !2863
  %336 = load i16, i16* %335, align 2, !dbg !2863, !tbaa !533
  %337 = icmp eq i16 %336, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %337, label %338, label %164, !dbg !2861

; <label>:338:                                    ; preds = %334
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %339 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8, !dbg !2863
  %340 = load i16, i16* %339, align 16, !dbg !2863, !tbaa !533
  %341 = icmp eq i16 %340, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %341, label %342, label %164, !dbg !2861

; <label>:342:                                    ; preds = %338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %343 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9, !dbg !2863
  %344 = load i16, i16* %343, align 2, !dbg !2863, !tbaa !533
  %345 = icmp eq i16 %344, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %345, label %346, label %164, !dbg !2861

; <label>:346:                                    ; preds = %342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %347 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10, !dbg !2863
  %348 = load i16, i16* %347, align 4, !dbg !2863, !tbaa !533
  %349 = icmp eq i16 %348, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %349, label %350, label %164, !dbg !2861

; <label>:350:                                    ; preds = %346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  %351 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2863
  %352 = load i16, i16* %351, align 2, !dbg !2863, !tbaa !533
  %353 = icmp eq i16 %352, 0, !dbg !2864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2861
  br i1 %353, label %354, label %164, !dbg !2861

; <label>:354:                                    ; preds = %350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2982
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %355 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2984
  store i16 0, i16* %2, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %356 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2984
  store i16 0, i16* %355, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %357 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2984
  store i16 0, i16* %356, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %358 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2984
  store i16 0, i16* %357, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %359 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2984
  store i16 0, i16* %358, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %360 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2984
  store i16 0, i16* %359, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %361 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2984
  store i16 0, i16* %360, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %362 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2984
  store i16 0, i16* %361, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  %363 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2984
  store i16 0, i16* %362, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  store i16 0, i16* %363, align 2, !dbg !2985, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2987
  br label %271, !dbg !2988
}

; Function Attrs: noredzone nounwind
define internal fastcc void @eaddm(i16* nocapture readonly, i16* nocapture) unnamed_addr #0 !dbg !2989 {
  %3 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !2998
  %4 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !2999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3002
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %5 = load i16, i16* %3, align 2, !dbg !3005, !tbaa !533
  %6 = zext i16 %5 to i64, !dbg !3008
  %7 = load i16, i16* %4, align 2, !dbg !3009, !tbaa !533
  %8 = zext i16 %7 to i64, !dbg !3010
  %9 = add nuw nsw i64 %6, %8, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = lshr i64 %9, 16
  %11 = trunc i64 %9 to i16, !dbg !3014
  store i16 %11, i16* %4, align 2, !dbg !3015, !tbaa !533
  %12 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3016
  %13 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %14 = load i16, i16* %12, align 2, !dbg !3005, !tbaa !533
  %15 = zext i16 %14 to i64, !dbg !3008
  %16 = load i16, i16* %13, align 2, !dbg !3009, !tbaa !533
  %17 = zext i16 %16 to i64, !dbg !3010
  %18 = add nuw nsw i64 %10, %15, !dbg !3019
  %19 = add nuw nsw i64 %18, %17, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %20 = lshr i64 %19, 16
  %21 = and i64 %20, 1
  %22 = trunc i64 %19 to i16, !dbg !3014
  store i16 %22, i16* %13, align 2, !dbg !3015, !tbaa !533
  %23 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3016
  %24 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %25 = load i16, i16* %23, align 2, !dbg !3005, !tbaa !533
  %26 = zext i16 %25 to i64, !dbg !3008
  %27 = load i16, i16* %24, align 2, !dbg !3009, !tbaa !533
  %28 = zext i16 %27 to i64, !dbg !3010
  %29 = add nuw nsw i64 %21, %26, !dbg !3019
  %30 = add nuw nsw i64 %29, %28, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %31 = lshr i64 %30, 16
  %32 = and i64 %31, 1
  %33 = trunc i64 %30 to i16, !dbg !3014
  store i16 %33, i16* %24, align 2, !dbg !3015, !tbaa !533
  %34 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3016
  %35 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %36 = load i16, i16* %34, align 2, !dbg !3005, !tbaa !533
  %37 = zext i16 %36 to i64, !dbg !3008
  %38 = load i16, i16* %35, align 2, !dbg !3009, !tbaa !533
  %39 = zext i16 %38 to i64, !dbg !3010
  %40 = add nuw nsw i64 %32, %37, !dbg !3019
  %41 = add nuw nsw i64 %40, %39, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %42 = lshr i64 %41, 16
  %43 = and i64 %42, 1
  %44 = trunc i64 %41 to i16, !dbg !3014
  store i16 %44, i16* %35, align 2, !dbg !3015, !tbaa !533
  %45 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3016
  %46 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %47 = load i16, i16* %45, align 2, !dbg !3005, !tbaa !533
  %48 = zext i16 %47 to i64, !dbg !3008
  %49 = load i16, i16* %46, align 2, !dbg !3009, !tbaa !533
  %50 = zext i16 %49 to i64, !dbg !3010
  %51 = add nuw nsw i64 %43, %48, !dbg !3019
  %52 = add nuw nsw i64 %51, %50, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %53 = lshr i64 %52, 16
  %54 = and i64 %53, 1
  %55 = trunc i64 %52 to i16, !dbg !3014
  store i16 %55, i16* %46, align 2, !dbg !3015, !tbaa !533
  %56 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3016
  %57 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %58 = load i16, i16* %56, align 2, !dbg !3005, !tbaa !533
  %59 = zext i16 %58 to i64, !dbg !3008
  %60 = load i16, i16* %57, align 2, !dbg !3009, !tbaa !533
  %61 = zext i16 %60 to i64, !dbg !3010
  %62 = add nuw nsw i64 %54, %59, !dbg !3019
  %63 = add nuw nsw i64 %62, %61, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %64 = lshr i64 %63, 16
  %65 = and i64 %64, 1
  %66 = trunc i64 %63 to i16, !dbg !3014
  store i16 %66, i16* %57, align 2, !dbg !3015, !tbaa !533
  %67 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3016
  %68 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %69 = load i16, i16* %67, align 2, !dbg !3005, !tbaa !533
  %70 = zext i16 %69 to i64, !dbg !3008
  %71 = load i16, i16* %68, align 2, !dbg !3009, !tbaa !533
  %72 = zext i16 %71 to i64, !dbg !3010
  %73 = add nuw nsw i64 %65, %70, !dbg !3019
  %74 = add nuw nsw i64 %73, %72, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %75 = lshr i64 %74, 16
  %76 = and i64 %75, 1
  %77 = trunc i64 %74 to i16, !dbg !3014
  store i16 %77, i16* %68, align 2, !dbg !3015, !tbaa !533
  %78 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3016
  %79 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %80 = load i16, i16* %78, align 2, !dbg !3005, !tbaa !533
  %81 = zext i16 %80 to i64, !dbg !3008
  %82 = load i16, i16* %79, align 2, !dbg !3009, !tbaa !533
  %83 = zext i16 %82 to i64, !dbg !3010
  %84 = add nuw nsw i64 %76, %81, !dbg !3019
  %85 = add nuw nsw i64 %84, %83, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %86 = lshr i64 %85, 16
  %87 = and i64 %86, 1
  %88 = trunc i64 %85 to i16, !dbg !3014
  store i16 %88, i16* %79, align 2, !dbg !3015, !tbaa !533
  %89 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3016
  %90 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %91 = load i16, i16* %89, align 2, !dbg !3005, !tbaa !533
  %92 = zext i16 %91 to i64, !dbg !3008
  %93 = load i16, i16* %90, align 2, !dbg !3009, !tbaa !533
  %94 = zext i16 %93 to i64, !dbg !3010
  %95 = add nuw nsw i64 %87, %92, !dbg !3019
  %96 = add nuw nsw i64 %95, %94, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %97 = lshr i64 %96, 16
  %98 = and i64 %97, 1
  %99 = trunc i64 %96 to i16, !dbg !3014
  store i16 %99, i16* %90, align 2, !dbg !3015, !tbaa !533
  %100 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3016
  %101 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %102 = load i16, i16* %100, align 2, !dbg !3005, !tbaa !533
  %103 = zext i16 %102 to i64, !dbg !3008
  %104 = load i16, i16* %101, align 2, !dbg !3009, !tbaa !533
  %105 = zext i16 %104 to i64, !dbg !3010
  %106 = add nuw nsw i64 %98, %103, !dbg !3019
  %107 = add nuw nsw i64 %106, %105, !dbg !3011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %108 = lshr i64 %107, 16
  %109 = trunc i64 %107 to i16, !dbg !3014
  store i16 %109, i16* %101, align 2, !dbg !3015, !tbaa !533
  %110 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3016
  %111 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !3017
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  %112 = load i16, i16* %110, align 2, !dbg !3005, !tbaa !533
  %113 = load i16, i16* %111, align 2, !dbg !3009, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3013
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %114 = trunc i64 %108 to i16, !dbg !3014
  %115 = and i16 %114, 1, !dbg !3014
  %116 = add i16 %112, %115, !dbg !3014
  %117 = add i16 %113, %116, !dbg !3014
  store i16 %117, i16* %111, align 2, !dbg !3015, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3020
  ret void, !dbg !3020
}

; Function Attrs: noredzone nounwind
define internal fastcc void @eiremain(i16*, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !3021 {
  %4 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 0, !dbg !3033
  %5 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3035
  %6 = load i16, i16* %5, align 2, !dbg !3035, !tbaa !533
  %7 = zext i16 %6 to i64, !dbg !3035
  %8 = tail call fastcc i32 @enormlz(i16* %0) #6, !dbg !3037
  %9 = sext i32 %8 to i64, !dbg !3037
  %10 = sub nsw i64 %7, %9, !dbg !3038
  %11 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !3039
  %12 = load i16, i16* %11, align 2, !dbg !3039, !tbaa !533
  %13 = zext i16 %12 to i64, !dbg !3039
  %14 = tail call fastcc i32 @enormlz(i16* %1) #6, !dbg !3041
  %15 = sext i32 %14 to i64, !dbg !3041
  %16 = sub nsw i64 %13, %15, !dbg !3042
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3050
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %17 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 1, !dbg !3053
  store i16 0, i16* %4, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %18 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 2, !dbg !3053
  store i16 0, i16* %17, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %19 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 3, !dbg !3053
  store i16 0, i16* %18, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %20 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 4, !dbg !3053
  store i16 0, i16* %19, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %21 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 5, !dbg !3053
  store i16 0, i16* %20, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %22 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 6, !dbg !3053
  store i16 0, i16* %21, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %23 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 7, !dbg !3053
  store i16 0, i16* %22, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %24 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 8, !dbg !3053
  store i16 0, i16* %23, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %25 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 9, !dbg !3053
  store i16 0, i16* %24, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %26 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 10, !dbg !3053
  store i16 0, i16* %25, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %27 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 11, !dbg !3053
  store i16 0, i16* %26, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  %28 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 12, !dbg !3053
  store i16 0, i16* %27, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  store i16 0, i16* %28, align 2, !dbg !3055, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3058
  %29 = icmp slt i64 %16, %10, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3058
  br i1 %29, label %85, label %30, !dbg !3058

; <label>:30:                                     ; preds = %3
  %31 = getelementptr inbounds i16, i16* %1, i64 12
  br label %32, !dbg !3058

; <label>:32:                                     ; preds = %82, %30
  %33 = phi i64 [ %16, %30 ], [ %83, %82 ]
  %34 = tail call fastcc i32 @ecmpm(i16* %0, i16* %1) #6, !dbg !3060
  %35 = icmp slt i32 %34, 1, !dbg !3063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3064
  br i1 %35, label %36, label %37, !dbg !3064

; <label>:36:                                     ; preds = %32
  tail call fastcc void @esubm(i16* %0, i16* %1) #6, !dbg !3065
  br label %37, !dbg !3068

; <label>:37:                                     ; preds = %32, %36
  %38 = phi i16 [ 1, %36 ], [ 0, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  br label %39, !dbg !3074

; <label>:39:                                     ; preds = %54, %37
  %40 = phi i32 [ 2, %37 ], [ %57, %54 ]
  %41 = phi i16 [ 0, %37 ], [ %55, %54 ]
  %42 = phi i16* [ %28, %37 ], [ %56, %54 ]
  %43 = load i16, i16* %42, align 2, !dbg !3075, !tbaa !533
  %44 = icmp slt i16 %43, 0, !dbg !3076
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3077
  br i1 %44, label %45, label %47, !dbg !3077

; <label>:45:                                     ; preds = %39
  %46 = or i16 %41, 1, !dbg !3078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3079
  br label %47, !dbg !3079

; <label>:47:                                     ; preds = %45, %39
  %48 = phi i16 [ %46, %45 ], [ %41, %39 ], !dbg !3080
  %49 = shl i16 %43, 1, !dbg !3081
  store i16 %49, i16* %42, align 2, !dbg !3081, !tbaa !533
  %50 = and i16 %48, 2, !dbg !3082
  %51 = icmp eq i16 %50, 0, !dbg !3082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3083
  br i1 %51, label %54, label %52, !dbg !3083

; <label>:52:                                     ; preds = %47
  %53 = or i16 %49, 1, !dbg !3084
  store i16 %53, i16* %42, align 2, !dbg !3084, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3085
  br label %54, !dbg !3085

; <label>:54:                                     ; preds = %52, %47
  %55 = shl i16 %48, 1, !dbg !3086
  %56 = getelementptr inbounds i16, i16* %42, i64 -1, !dbg !3087
  %57 = add nuw nsw i32 %40, 1, !dbg !3088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3074
  %58 = icmp eq i32 %57, 13, !dbg !3090
  br i1 %58, label %59, label %39, !dbg !3074, !llvm.loop !968

; <label>:59:                                     ; preds = %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3091
  %60 = load i16, i16* %28, align 2, !dbg !3092, !tbaa !533
  %61 = or i16 %60, %38, !dbg !3092
  store i16 %61, i16* %28, align 2, !dbg !3092, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3097
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  br label %62, !dbg !3098

; <label>:62:                                     ; preds = %77, %59
  %63 = phi i32 [ 2, %59 ], [ %80, %77 ]
  %64 = phi i16 [ 0, %59 ], [ %78, %77 ]
  %65 = phi i16* [ %31, %59 ], [ %79, %77 ]
  %66 = load i16, i16* %65, align 2, !dbg !3099, !tbaa !533
  %67 = icmp slt i16 %66, 0, !dbg !3100
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3101
  br i1 %67, label %68, label %70, !dbg !3101

; <label>:68:                                     ; preds = %62
  %69 = or i16 %64, 1, !dbg !3102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3103
  br label %70, !dbg !3103

; <label>:70:                                     ; preds = %68, %62
  %71 = phi i16 [ %69, %68 ], [ %64, %62 ], !dbg !3104
  %72 = shl i16 %66, 1, !dbg !3105
  store i16 %72, i16* %65, align 2, !dbg !3105, !tbaa !533
  %73 = and i16 %71, 2, !dbg !3106
  %74 = icmp eq i16 %73, 0, !dbg !3106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3107
  br i1 %74, label %77, label %75, !dbg !3107

; <label>:75:                                     ; preds = %70
  %76 = or i16 %72, 1, !dbg !3108
  store i16 %76, i16* %65, align 2, !dbg !3108, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3109
  br label %77, !dbg !3109

; <label>:77:                                     ; preds = %75, %70
  %78 = shl i16 %71, 1, !dbg !3110
  %79 = getelementptr inbounds i16, i16* %65, i64 -1, !dbg !3111
  %80 = add nuw nsw i32 %63, 1, !dbg !3112
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3098
  %81 = icmp eq i32 %80, 13, !dbg !3114
  br i1 %81, label %82, label %62, !dbg !3098, !llvm.loop !968

; <label>:82:                                     ; preds = %77
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3115
  %83 = add nsw i64 %33, -1, !dbg !3116
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3058
  %84 = icmp sgt i64 %33, %10, !dbg !3059
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3058
  br i1 %84, label %32, label %85, !dbg !3058, !llvm.loop !3117

; <label>:85:                                     ; preds = %82, %3
  %86 = phi i64 [ %16, %3 ], [ %83, %82 ], !dbg !3119
  tail call fastcc void @emdnorm(i16* %1, i32 0, i32 0, i64 %86, i32 0, %struct.LDPARMS* %2) #6, !dbg !3120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3121
  ret void, !dbg !3121
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @enormlz(i16*) unnamed_addr #0 !dbg !3122 {
  %2 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3129
  %3 = load i16, i16* %2, align 2, !dbg !3131, !tbaa !533
  %4 = icmp eq i16 %3, 0, !dbg !3133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3134
  br i1 %4, label %5, label %88, !dbg !3134

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3135
  %7 = load i16, i16* %6, align 2, !dbg !3136, !tbaa !533
  %8 = icmp slt i16 %7, 0, !dbg !3138
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3139
  br i1 %8, label %124, label %9, !dbg !3139

; <label>:9:                                      ; preds = %5
  %10 = icmp eq i16 %7, 0, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3141
  br i1 %10, label %11, label %32, !dbg !3141

; <label>:11:                                     ; preds = %9
  %12 = getelementptr inbounds i16, i16* %0, i64 4
  %13 = getelementptr inbounds i16, i16* %0, i64 5
  %14 = getelementptr inbounds i16, i16* %0, i64 6
  %15 = getelementptr inbounds i16, i16* %0, i64 7
  %16 = getelementptr inbounds i16, i16* %0, i64 8
  %17 = getelementptr inbounds i16, i16* %0, i64 9
  %18 = getelementptr inbounds i16, i16* %0, i64 10
  %19 = getelementptr inbounds i16, i16* %0, i64 11
  %20 = getelementptr i16, i16* %0, i64 12
  %21 = load i16, i16* %12, align 2, !dbg !3142, !tbaa !533
  %22 = load i16, i16* %13, align 2, !dbg !3142, !tbaa !533
  %23 = load i16, i16* %14, align 2, !dbg !3142, !tbaa !533
  %24 = load i16, i16* %15, align 2, !dbg !3142, !tbaa !533
  %25 = load i16, i16* %16, align 2, !dbg !3142, !tbaa !533
  %26 = load i16, i16* %17, align 2, !dbg !3142, !tbaa !533
  %27 = load i16, i16* %18, align 2, !dbg !3142, !tbaa !533
  %28 = load i16, i16* %19, align 2, !dbg !3142, !tbaa !533
  %29 = load i16, i16* %20, align 2, !dbg !3142, !tbaa !533
  br label %36, !dbg !3141

; <label>:30:                                     ; preds = %36
  %31 = icmp eq i16 %45, 0, !dbg !3140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3141
  br i1 %31, label %36, label %32, !dbg !3141

; <label>:32:                                     ; preds = %30, %9
  %33 = phi i16 [ %7, %9 ], [ %45, %30 ], !dbg !3145
  %34 = phi i32 [ 0, %9 ], [ %47, %30 ], !dbg !3146
  %35 = icmp ult i16 %33, 256, !dbg !3147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br i1 %35, label %55, label %49, !dbg !3148

; <label>:36:                                     ; preds = %11, %30
  %37 = phi i16 [ %29, %11 ], [ 0, %30 ], !dbg !3142
  %38 = phi i16 [ %28, %11 ], [ %37, %30 ], !dbg !3142
  %39 = phi i16 [ %27, %11 ], [ %38, %30 ], !dbg !3142
  %40 = phi i16 [ %26, %11 ], [ %39, %30 ], !dbg !3142
  %41 = phi i16 [ %25, %11 ], [ %40, %30 ], !dbg !3142
  %42 = phi i16 [ %24, %11 ], [ %41, %30 ], !dbg !3142
  %43 = phi i16 [ %23, %11 ], [ %42, %30 ], !dbg !3142
  %44 = phi i16 [ %22, %11 ], [ %43, %30 ], !dbg !3142
  %45 = phi i16 [ %21, %11 ], [ %44, %30 ], !dbg !3142
  %46 = phi i32 [ 0, %11 ], [ %47, %30 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 0, i16* %2, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %45, i16* %6, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %44, i16* %12, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %43, i16* %13, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %42, i16* %14, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %41, i16* %15, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %40, i16* %16, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %39, i16* %17, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %38, i16* %18, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 %37, i16* %19, align 2, !dbg !3154, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3153
  store i16 0, i16* %20, align 2, !dbg !3156, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3157
  %47 = add nuw nsw i32 %46, 16, !dbg !3158
  %48 = icmp ugt i32 %47, 144, !dbg !3159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3161
  br i1 %48, label %124, label %30, !dbg !3161, !llvm.loop !3162

; <label>:49:                                     ; preds = %55, %32
  %50 = phi i32 [ %34, %32 ], [ %57, %55 ], !dbg !3164
  %51 = phi i16 [ %33, %32 ], [ %58, %55 ], !dbg !3145
  %52 = icmp sgt i16 %51, -1, !dbg !3166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3167
  br i1 %52, label %53, label %124, !dbg !3167

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds i16, i16* %0, i64 12
  br label %63, !dbg !3167

; <label>:55:                                     ; preds = %32, %55
  %56 = phi i32 [ %57, %55 ], [ %34, %32 ]
  tail call fastcc void @eshup8(i16* nonnull %0) #6, !dbg !3168
  %57 = add nuw nsw i32 %56, 8, !dbg !3169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  %58 = load i16, i16* %6, align 2, !dbg !3145, !tbaa !533
  %59 = icmp ult i16 %58, 256, !dbg !3147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3148
  br i1 %59, label %55, label %49, !dbg !3148, !llvm.loop !3170

; <label>:60:                                     ; preds = %85
  %61 = load i16, i16* %6, align 2, !dbg !3172, !tbaa !533
  %62 = icmp sgt i16 %61, -1, !dbg !3166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3167
  br i1 %62, label %63, label %124, !dbg !3167

; <label>:63:                                     ; preds = %53, %60
  %64 = phi i32 [ %50, %53 ], [ %86, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3178
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3179
  br label %65, !dbg !3179

; <label>:65:                                     ; preds = %80, %63
  %66 = phi i32 [ 2, %63 ], [ %83, %80 ]
  %67 = phi i16 [ 0, %63 ], [ %81, %80 ]
  %68 = phi i16* [ %54, %63 ], [ %82, %80 ]
  %69 = load i16, i16* %68, align 2, !dbg !3180, !tbaa !533
  %70 = icmp slt i16 %69, 0, !dbg !3181
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3182
  br i1 %70, label %71, label %73, !dbg !3182

; <label>:71:                                     ; preds = %65
  %72 = or i16 %67, 1, !dbg !3183
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3184
  br label %73, !dbg !3184

; <label>:73:                                     ; preds = %71, %65
  %74 = phi i16 [ %72, %71 ], [ %67, %65 ], !dbg !3185
  %75 = shl i16 %69, 1, !dbg !3186
  store i16 %75, i16* %68, align 2, !dbg !3186, !tbaa !533
  %76 = and i16 %74, 2, !dbg !3187
  %77 = icmp eq i16 %76, 0, !dbg !3187
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3188
  br i1 %77, label %80, label %78, !dbg !3188

; <label>:78:                                     ; preds = %73
  %79 = or i16 %75, 1, !dbg !3189
  store i16 %79, i16* %68, align 2, !dbg !3189, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3190
  br label %80, !dbg !3190

; <label>:80:                                     ; preds = %78, %73
  %81 = shl i16 %74, 1, !dbg !3191
  %82 = getelementptr inbounds i16, i16* %68, i64 -1, !dbg !3192
  %83 = add nuw nsw i32 %66, 1, !dbg !3193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3179
  %84 = icmp eq i32 %83, 13, !dbg !3195
  br i1 %84, label %85, label %65, !dbg !3179, !llvm.loop !968

; <label>:85:                                     ; preds = %80
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3196
  %86 = add nuw nsw i32 %64, 1, !dbg !3197
  %87 = icmp ugt i32 %64, 159, !dbg !3198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3200
  br i1 %87, label %124, label %60, !dbg !3200, !llvm.loop !3201

; <label>:88:                                     ; preds = %1
  %89 = icmp ugt i16 %3, 255, !dbg !3203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3205
  br i1 %89, label %90, label %91, !dbg !3205

; <label>:90:                                     ; preds = %88
  tail call fastcc void @eshdn8(i16* nonnull %0) #6, !dbg !3206
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3208
  br label %91, !dbg !3208

; <label>:91:                                     ; preds = %90, %88
  %92 = phi i32 [ -8, %90 ], [ 0, %88 ], !dbg !3209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3210
  br label %93, !dbg !3210

; <label>:93:                                     ; preds = %121, %91
  %94 = phi i32 [ %92, %91 ], [ %122, %121 ], !dbg !3211
  %95 = load i16, i16* %2, align 2, !dbg !3213, !tbaa !533
  %96 = icmp eq i16 %95, 0, !dbg !3214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3211
  br i1 %96, label %126, label %97, !dbg !3210

; <label>:97:                                     ; preds = %93
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3219
  br label %98, !dbg !3219

; <label>:98:                                     ; preds = %118, %97
  %99 = phi i16 [ %95, %97 ], [ %120, %118 ], !dbg !3220
  %100 = phi i32 [ 2, %97 ], [ %116, %118 ]
  %101 = phi i16 [ 0, %97 ], [ %119, %118 ]
  %102 = phi i16* [ %2, %97 ], [ %115, %118 ]
  %103 = and i16 %99, 1, !dbg !3221
  %104 = icmp eq i16 %103, 0, !dbg !3221
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3222
  br i1 %104, label %107, label %105, !dbg !3222

; <label>:105:                                    ; preds = %98
  %106 = or i16 %101, 1, !dbg !3223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3224
  br label %107, !dbg !3224

; <label>:107:                                    ; preds = %105, %98
  %108 = phi i16 [ %106, %105 ], [ %101, %98 ], !dbg !3225
  %109 = lshr i16 %99, 1, !dbg !3226
  store i16 %109, i16* %102, align 2, !dbg !3226, !tbaa !533
  %110 = and i16 %108, 2, !dbg !3227
  %111 = icmp eq i16 %110, 0, !dbg !3227
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3228
  br i1 %111, label %114, label %112, !dbg !3228

; <label>:112:                                    ; preds = %107
  %113 = or i16 %109, -32768, !dbg !3229
  store i16 %113, i16* %102, align 2, !dbg !3229, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3230
  br label %114, !dbg !3230

; <label>:114:                                    ; preds = %112, %107
  %115 = getelementptr inbounds i16, i16* %102, i64 1, !dbg !3231
  %116 = add nuw nsw i32 %100, 1, !dbg !3232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3219
  %117 = icmp eq i32 %116, 13, !dbg !3234
  br i1 %117, label %121, label %118, !dbg !3219, !llvm.loop !1168

; <label>:118:                                    ; preds = %114
  %119 = shl i16 %108, 1, !dbg !3235
  %120 = load i16, i16* %115, align 2, !dbg !3220, !tbaa !533
  br label %98, !dbg !3219

; <label>:121:                                    ; preds = %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3236
  %122 = add nsw i32 %94, -1, !dbg !3237
  %123 = icmp slt i32 %94, -143, !dbg !3238
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3240
  br i1 %123, label %124, label %93, !dbg !3240, !llvm.loop !3241

; <label>:124:                                    ; preds = %121, %36, %60, %85, %49, %5
  %125 = phi i32 [ 0, %5 ], [ %50, %49 ], [ %86, %85 ], [ %86, %60 ], [ %47, %36 ], [ %122, %121 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3243
  br label %126, !dbg !3244

; <label>:126:                                    ; preds = %93, %124
  %127 = phi i32 [ %125, %124 ], [ %94, %93 ], !dbg !3209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3244
  ret i32 %127, !dbg !3244
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emdnorm(i16*, i32, i32, i64, i32, %struct.LDPARMS*) unnamed_addr #0 !dbg !3245 {
  %7 = tail call fastcc i32 @enormlz(i16* %0) #6, !dbg !3264
  %8 = sext i32 %7 to i64, !dbg !3266
  %9 = sub nsw i64 %3, %8, !dbg !3267
  %10 = icmp sgt i32 %7, 144, !dbg !3268
  %11 = icmp slt i64 %9, 32767, !dbg !3270
  %12 = and i1 %10, %11, !dbg !3271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3271
  br i1 %12, label %13, label %26, !dbg !3271

; <label>:13:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %14 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3283
  store i16 0, i16* %14, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %15 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3283
  store i16 0, i16* %15, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %16 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3283
  store i16 0, i16* %16, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %17 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3283
  store i16 0, i16* %17, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %18 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3283
  store i16 0, i16* %18, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %19 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3283
  store i16 0, i16* %19, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %20 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3283
  store i16 0, i16* %20, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %21 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3283
  store i16 0, i16* %21, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %22 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3283
  store i16 0, i16* %22, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %23 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3283
  store i16 0, i16* %23, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %24 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3283
  store i16 0, i16* %24, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  %25 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3283
  store i16 0, i16* %25, align 2, !dbg !3285, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3287
  br label %256, !dbg !3288

; <label>:26:                                     ; preds = %6
  %27 = icmp slt i64 %9, 0, !dbg !3289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3291
  br i1 %27, label %28, label %48, !dbg !3291

; <label>:28:                                     ; preds = %26
  %29 = icmp sgt i64 %9, -145, !dbg !3292
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3295
  br i1 %29, label %30, label %35, !dbg !3295

; <label>:30:                                     ; preds = %28
  %31 = trunc i64 %9 to i32, !dbg !3296
  %32 = tail call fastcc i32 @eshift(i16* %0, i32 %31) #6, !dbg !3298
  %33 = icmp eq i32 %32, 0, !dbg !3300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3302
  br i1 %33, label %48, label %34, !dbg !3302

; <label>:34:                                     ; preds = %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3303
  br label %48, !dbg !3303

; <label>:35:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %36 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3310
  store i16 0, i16* %36, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %37 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3310
  store i16 0, i16* %37, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %38 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3310
  store i16 0, i16* %38, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %39 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3310
  store i16 0, i16* %39, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %40 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3310
  store i16 0, i16* %40, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %41 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3310
  store i16 0, i16* %41, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %42 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3310
  store i16 0, i16* %42, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %43 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3310
  store i16 0, i16* %43, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %44 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3310
  store i16 0, i16* %44, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %45 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3310
  store i16 0, i16* %45, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %46 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3310
  store i16 0, i16* %46, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  %47 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3310
  store i16 0, i16* %47, align 2, !dbg !3311, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3313
  br label %256, !dbg !3314

; <label>:48:                                     ; preds = %30, %34, %26
  %49 = phi i32 [ 1, %34 ], [ %1, %30 ], [ %1, %26 ]
  %50 = icmp eq i32 %4, 0, !dbg !3315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3317
  br i1 %50, label %235, label %51, !dbg !3317

; <label>:51:                                     ; preds = %48
  %52 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 1, !dbg !3318
  %53 = load i32, i32* %52, align 4, !dbg !3318, !tbaa !490
  %54 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 0, !dbg !3320
  %55 = load i32, i32* %54, align 4, !dbg !3320, !tbaa !484
  %56 = icmp eq i32 %53, %55, !dbg !3321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3322
  br i1 %56, label %89, label %57, !dbg !3322

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 0, !dbg !3323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %59 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 1, !dbg !3330
  store i16 0, i16* %58, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %60 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 2, !dbg !3330
  store i16 0, i16* %59, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %61 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 3, !dbg !3330
  store i16 0, i16* %60, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %62 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 4, !dbg !3330
  store i16 0, i16* %61, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %63 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 5, !dbg !3330
  store i16 0, i16* %62, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %64 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 6, !dbg !3330
  store i16 0, i16* %63, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %65 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 7, !dbg !3330
  store i16 0, i16* %64, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %66 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 8, !dbg !3330
  store i16 0, i16* %65, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %67 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 9, !dbg !3330
  store i16 0, i16* %66, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %68 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 10, !dbg !3330
  store i16 0, i16* %67, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %69 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 11, !dbg !3330
  store i16 0, i16* %68, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  %70 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 12, !dbg !3330
  store i16 0, i16* %69, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  store i16 0, i16* %70, align 2, !dbg !3331, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3334
  switch i32 %53, label %76 [
    i32 24, label %75
    i32 113, label %71
    i32 64, label %72
    i32 56, label %73
    i32 53, label %74
  ], !dbg !3334

; <label>:71:                                     ; preds = %57
  br label %76, !dbg !3335

; <label>:72:                                     ; preds = %57
  br label %76, !dbg !3337

; <label>:73:                                     ; preds = %57
  br label %76, !dbg !3338

; <label>:74:                                     ; preds = %57
  br label %76, !dbg !3339

; <label>:75:                                     ; preds = %57
  br label %76, !dbg !3340

; <label>:76:                                     ; preds = %57, %75, %74, %73, %72, %71
  %77 = phi i32 [ 4, %75 ], [ 6, %74 ], [ 6, %73 ], [ 7, %72 ], [ 10, %71 ], [ 12, %57 ]
  %78 = phi i16 [ 255, %75 ], [ 2047, %74 ], [ 255, %73 ], [ -1, %72 ], [ 32767, %71 ], [ -1, %57 ]
  %79 = phi i16 [ 128, %75 ], [ 1024, %74 ], [ 128, %73 ], [ -32768, %72 ], [ 16384, %71 ], [ -32768, %57 ]
  %80 = phi i16 [ 256, %75 ], [ 2048, %74 ], [ 256, %73 ], [ 1, %72 ], [ -32768, %71 ], [ 1, %57 ]
  %81 = phi i32 [ 4, %75 ], [ 6, %74 ], [ 6, %73 ], [ 6, %72 ], [ 10, %71 ], [ 11, %57 ]
  %82 = phi i64 [ 4, %75 ], [ 6, %74 ], [ 6, %73 ], [ 6, %72 ], [ 10, %71 ], [ 11, %57 ]
  %83 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 2, !dbg !3341
  store i32 %77, i32* %83, align 4, !dbg !3341, !tbaa !3342
  %84 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 5, !dbg !3341
  store i16 %78, i16* %84, align 4, !dbg !3341, !tbaa !3343
  %85 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 6, !dbg !3341
  store i16 %79, i16* %85, align 2, !dbg !3341, !tbaa !3344
  %86 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 7, !dbg !3341
  store i16 %80, i16* %86, align 4, !dbg !3341, !tbaa !3345
  %87 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 3, !dbg !3341
  store i32 %81, i32* %87, align 4, !dbg !3341, !tbaa !3346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3341
  %88 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 %82, !dbg !3347
  store i16 %80, i16* %88, align 2, !dbg !3348, !tbaa !533
  store i32 %53, i32* %54, align 4, !dbg !3349, !tbaa !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3350
  br label %89, !dbg !3350

; <label>:89:                                     ; preds = %51, %76
  %90 = icmp slt i64 %9, 1, !dbg !3351
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3353
  br i1 %90, label %91, label %122, !dbg !3353

; <label>:91:                                     ; preds = %89
  %92 = icmp eq i32 %53, 144, !dbg !3354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3355
  br i1 %92, label %122, label %93, !dbg !3355

; <label>:93:                                     ; preds = %91
  %94 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3356
  %95 = load i16, i16* %94, align 2, !dbg !3356, !tbaa !533
  %96 = and i16 %95, 1, !dbg !3358
  %97 = zext i16 %96 to i32, !dbg !3358
  %98 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3365
  br label %99, !dbg !3365

; <label>:99:                                     ; preds = %115, %93
  %100 = phi i32 [ 2, %93 ], [ %118, %115 ]
  %101 = phi i16 [ 0, %93 ], [ %116, %115 ]
  %102 = phi i16* [ %98, %93 ], [ %117, %115 ]
  %103 = load i16, i16* %102, align 2, !dbg !3366, !tbaa !533
  %104 = and i16 %103, 1, !dbg !3367
  %105 = icmp eq i16 %104, 0, !dbg !3367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3368
  br i1 %105, label %108, label %106, !dbg !3368

; <label>:106:                                    ; preds = %99
  %107 = or i16 %101, 1, !dbg !3369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3370
  br label %108, !dbg !3370

; <label>:108:                                    ; preds = %106, %99
  %109 = phi i16 [ %107, %106 ], [ %101, %99 ], !dbg !3371
  %110 = lshr i16 %103, 1, !dbg !3372
  store i16 %110, i16* %102, align 2, !dbg !3372, !tbaa !533
  %111 = and i16 %109, 2, !dbg !3373
  %112 = icmp eq i16 %111, 0, !dbg !3373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3374
  br i1 %112, label %115, label %113, !dbg !3374

; <label>:113:                                    ; preds = %108
  %114 = or i16 %110, -32768, !dbg !3375
  store i16 %114, i16* %102, align 2, !dbg !3375, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3376
  br label %115, !dbg !3376

; <label>:115:                                    ; preds = %113, %108
  %116 = shl i16 %109, 1, !dbg !3377
  %117 = getelementptr inbounds i16, i16* %102, i64 1, !dbg !3378
  %118 = add nuw nsw i32 %100, 1, !dbg !3379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3365
  %119 = icmp eq i32 %118, 13, !dbg !3381
  br i1 %119, label %120, label %99, !dbg !3365, !llvm.loop !1168

; <label>:120:                                    ; preds = %115
  %121 = or i32 %49, %97, !dbg !3382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3384
  br label %122, !dbg !3384

; <label>:122:                                    ; preds = %91, %120, %89
  %123 = phi i32 [ %121, %120 ], [ %49, %91 ], [ %49, %89 ], !dbg !3385
  %124 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 2, !dbg !3386
  %125 = load i32, i32* %124, align 4, !dbg !3386, !tbaa !3342
  %126 = sext i32 %125 to i64, !dbg !3387
  %127 = getelementptr inbounds i16, i16* %0, i64 %126, !dbg !3387
  %128 = load i16, i16* %127, align 2, !dbg !3387, !tbaa !533
  %129 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 5, !dbg !3388
  %130 = load i16, i16* %129, align 4, !dbg !3388, !tbaa !3343
  %131 = and i16 %130, %128, !dbg !3389
  %132 = icmp slt i32 %53, 144, !dbg !3391
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3393
  br i1 %132, label %133, label %150, !dbg !3393

; <label>:133:                                    ; preds = %122
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  %134 = icmp slt i32 %125, 12, !dbg !3396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br i1 %134, label %135, label %150, !dbg !3394

; <label>:135:                                    ; preds = %133, %144
  %136 = phi i64 [ %138, %144 ], [ %126, %133 ]
  %137 = phi i16 [ %145, %144 ], [ %131, %133 ]
  %138 = add nsw i64 %136, 1, !dbg !3397
  %139 = getelementptr inbounds i16, i16* %0, i64 %138, !dbg !3399
  %140 = load i16, i16* %139, align 2, !dbg !3399, !tbaa !533
  %141 = icmp eq i16 %140, 0, !dbg !3399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3401
  br i1 %141, label %144, label %142, !dbg !3401

; <label>:142:                                    ; preds = %135
  %143 = or i16 %137, 1, !dbg !3402
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3403
  br label %144, !dbg !3403

; <label>:144:                                    ; preds = %135, %142
  %145 = phi i16 [ %143, %142 ], [ %137, %135 ], !dbg !3404
  store i16 0, i16* %139, align 2, !dbg !3405, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  %146 = icmp slt i64 %136, 11, !dbg !3396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3394
  br i1 %146, label %135, label %147, !dbg !3394, !llvm.loop !3406

; <label>:147:                                    ; preds = %144
  %148 = load i16, i16* %129, align 4, !dbg !3408, !tbaa !3343
  %149 = load i16, i16* %127, align 2, !dbg !3409, !tbaa !533
  br label %150, !dbg !3408

; <label>:150:                                    ; preds = %147, %133, %122
  %151 = phi i16 [ %128, %122 ], [ %128, %133 ], [ %149, %147 ], !dbg !3409
  %152 = phi i16 [ %130, %122 ], [ %130, %133 ], [ %148, %147 ], !dbg !3408
  %153 = phi i16 [ %131, %122 ], [ %131, %133 ], [ %145, %147 ], !dbg !3410
  %154 = xor i16 %152, -1, !dbg !3411
  %155 = and i16 %151, %154, !dbg !3409
  store i16 %155, i16* %127, align 2, !dbg !3409, !tbaa !533
  %156 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 6, !dbg !3412
  %157 = load i16, i16* %156, align 2, !dbg !3412, !tbaa !3344
  %158 = and i16 %157, %153, !dbg !3414
  %159 = icmp eq i16 %158, 0, !dbg !3415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3416
  br i1 %159, label %178, label %160, !dbg !3416

; <label>:160:                                    ; preds = %150
  %161 = icmp eq i16 %153, %157, !dbg !3417
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3420
  br i1 %161, label %162, label %176, !dbg !3420

; <label>:162:                                    ; preds = %160
  %163 = icmp eq i32 %123, 0, !dbg !3421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3424
  br i1 %163, label %164, label %174, !dbg !3424

; <label>:164:                                    ; preds = %162
  %165 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 3, !dbg !3425
  %166 = load i32, i32* %165, align 4, !dbg !3425, !tbaa !3346
  %167 = sext i32 %166 to i64, !dbg !3428
  %168 = getelementptr inbounds i16, i16* %0, i64 %167, !dbg !3428
  %169 = load i16, i16* %168, align 2, !dbg !3428, !tbaa !533
  %170 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 7, !dbg !3429
  %171 = load i16, i16* %170, align 4, !dbg !3429, !tbaa !3345
  %172 = and i16 %171, %169, !dbg !3430
  %173 = icmp eq i16 %172, 0, !dbg !3431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3432
  br i1 %173, label %178, label %176, !dbg !3432

; <label>:174:                                    ; preds = %162
  %175 = icmp eq i32 %2, 0, !dbg !3433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3436
  br i1 %175, label %176, label %178, !dbg !3436

; <label>:176:                                    ; preds = %174, %164, %160
  %177 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 0, !dbg !3437
  tail call fastcc void @eaddm(i16* nonnull %177, i16* nonnull %0) #6, !dbg !3438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3439
  br label %178, !dbg !3439

; <label>:178:                                    ; preds = %174, %150, %176, %164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3440
  br i1 %90, label %179, label %205, !dbg !3440

; <label>:179:                                    ; preds = %178
  %180 = load i32, i32* %52, align 4, !dbg !3442, !tbaa !490
  %181 = icmp eq i32 %180, 144, !dbg !3443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3444
  br i1 %181, label %205, label %182, !dbg !3444

; <label>:182:                                    ; preds = %179
  %183 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3451
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3452
  br label %184, !dbg !3452

; <label>:184:                                    ; preds = %199, %182
  %185 = phi i32 [ 2, %182 ], [ %202, %199 ]
  %186 = phi i16 [ 0, %182 ], [ %200, %199 ]
  %187 = phi i16* [ %183, %182 ], [ %201, %199 ]
  %188 = load i16, i16* %187, align 2, !dbg !3453, !tbaa !533
  %189 = icmp slt i16 %188, 0, !dbg !3454
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3455
  br i1 %189, label %190, label %192, !dbg !3455

; <label>:190:                                    ; preds = %184
  %191 = or i16 %186, 1, !dbg !3456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3457
  br label %192, !dbg !3457

; <label>:192:                                    ; preds = %190, %184
  %193 = phi i16 [ %191, %190 ], [ %186, %184 ], !dbg !3458
  %194 = shl i16 %188, 1, !dbg !3459
  store i16 %194, i16* %187, align 2, !dbg !3459, !tbaa !533
  %195 = and i16 %193, 2, !dbg !3460
  %196 = icmp eq i16 %195, 0, !dbg !3460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3461
  br i1 %196, label %199, label %197, !dbg !3461

; <label>:197:                                    ; preds = %192
  %198 = or i16 %194, 1, !dbg !3462
  store i16 %198, i16* %187, align 2, !dbg !3462, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3463
  br label %199, !dbg !3463

; <label>:199:                                    ; preds = %197, %192
  %200 = shl i16 %193, 1, !dbg !3464
  %201 = getelementptr inbounds i16, i16* %187, i64 -1, !dbg !3465
  %202 = add nuw nsw i32 %185, 1, !dbg !3466
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3452
  %203 = icmp eq i32 %202, 13, !dbg !3468
  br i1 %203, label %204, label %184, !dbg !3452, !llvm.loop !968

; <label>:204:                                    ; preds = %199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3470
  br label %205, !dbg !3470

; <label>:205:                                    ; preds = %179, %204, %178
  %206 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3471
  %207 = load i16, i16* %206, align 2, !dbg !3471, !tbaa !533
  %208 = icmp eq i16 %207, 0, !dbg !3473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3474
  br i1 %208, label %235, label %209, !dbg !3474

; <label>:209:                                    ; preds = %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3481
  br label %210, !dbg !3481

; <label>:210:                                    ; preds = %230, %209
  %211 = phi i16 [ %207, %209 ], [ %232, %230 ], !dbg !3482
  %212 = phi i32 [ 2, %209 ], [ %228, %230 ]
  %213 = phi i16 [ 0, %209 ], [ %231, %230 ]
  %214 = phi i16* [ %206, %209 ], [ %227, %230 ]
  %215 = and i16 %211, 1, !dbg !3483
  %216 = icmp eq i16 %215, 0, !dbg !3483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3484
  br i1 %216, label %219, label %217, !dbg !3484

; <label>:217:                                    ; preds = %210
  %218 = or i16 %213, 1, !dbg !3485
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3486
  br label %219, !dbg !3486

; <label>:219:                                    ; preds = %217, %210
  %220 = phi i16 [ %218, %217 ], [ %213, %210 ], !dbg !3487
  %221 = lshr i16 %211, 1, !dbg !3488
  store i16 %221, i16* %214, align 2, !dbg !3488, !tbaa !533
  %222 = and i16 %220, 2, !dbg !3489
  %223 = icmp eq i16 %222, 0, !dbg !3489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3490
  br i1 %223, label %226, label %224, !dbg !3490

; <label>:224:                                    ; preds = %219
  %225 = or i16 %221, -32768, !dbg !3491
  store i16 %225, i16* %214, align 2, !dbg !3491, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3492
  br label %226, !dbg !3492

; <label>:226:                                    ; preds = %224, %219
  %227 = getelementptr inbounds i16, i16* %214, i64 1, !dbg !3493
  %228 = add nuw nsw i32 %212, 1, !dbg !3494
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3481
  %229 = icmp eq i32 %228, 13, !dbg !3496
  br i1 %229, label %233, label %230, !dbg !3481, !llvm.loop !1168

; <label>:230:                                    ; preds = %226
  %231 = shl i16 %220, 1, !dbg !3497
  %232 = load i16, i16* %227, align 2, !dbg !3482, !tbaa !533
  br label %210, !dbg !3481

; <label>:233:                                    ; preds = %226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3498
  %234 = add nsw i64 %9, 1, !dbg !3499
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3500
  br label %235, !dbg !3500

; <label>:235:                                    ; preds = %205, %233, %48
  %236 = phi i64 [ %9, %48 ], [ %234, %233 ], [ %9, %205 ], !dbg !3404
  %237 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3501
  store i16 0, i16* %237, align 2, !dbg !3502, !tbaa !533
  %238 = icmp sgt i64 %236, 32766, !dbg !3503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3505
  br i1 %238, label %239, label %251, !dbg !3505

; <label>:239:                                    ; preds = %235
  %240 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3506
  store i16 32767, i16* %240, align 2, !dbg !3508, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3509
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %241 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3512
  store i16 0, i16* %241, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %242 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3512
  store i16 0, i16* %242, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %243 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3512
  store i16 0, i16* %243, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %244 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3512
  store i16 0, i16* %244, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %245 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3512
  store i16 0, i16* %245, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %246 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3512
  store i16 0, i16* %246, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %247 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3512
  store i16 0, i16* %247, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %248 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3512
  store i16 0, i16* %248, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %249 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3512
  store i16 0, i16* %249, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  %250 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3512
  store i16 0, i16* %250, align 2, !dbg !3514, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3511
  br label %256, !dbg !3516

; <label>:251:                                    ; preds = %235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3517
  %252 = icmp sgt i64 %236, 0, !dbg !3517
  %253 = select i1 %252, i64 %236, i64 0, !dbg !3517
  %254 = trunc i64 %253 to i16, !dbg !3517
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %255 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3518
  store i16 %254, i16* %255, align 2, !dbg !3520
  br label %256, !dbg !3521

; <label>:256:                                    ; preds = %251, %239, %35, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3521
  ret void, !dbg !3521
}

; Function Attrs: noredzone nounwind
define internal fastcc void @eshup8(i16* nocapture) unnamed_addr #0 !dbg !3523 {
  %2 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %3 = load i16, i16* %2, align 2, !dbg !3536, !tbaa !533
  %4 = lshr i16 %3, 8, !dbg !3539
  %5 = shl i16 %3, 8, !dbg !3541
  store i16 %5, i16* %2, align 2, !dbg !3542, !tbaa !533
  %6 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %7 = load i16, i16* %6, align 2, !dbg !3536, !tbaa !533
  %8 = lshr i16 %7, 8, !dbg !3539
  %9 = shl i16 %7, 8, !dbg !3541
  %10 = or i16 %9, %4, !dbg !3542
  store i16 %10, i16* %6, align 2, !dbg !3542, !tbaa !533
  %11 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %12 = load i16, i16* %11, align 2, !dbg !3536, !tbaa !533
  %13 = lshr i16 %12, 8, !dbg !3539
  %14 = shl i16 %12, 8, !dbg !3541
  %15 = or i16 %14, %8, !dbg !3542
  store i16 %15, i16* %11, align 2, !dbg !3542, !tbaa !533
  %16 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %17 = load i16, i16* %16, align 2, !dbg !3536, !tbaa !533
  %18 = lshr i16 %17, 8, !dbg !3539
  %19 = shl i16 %17, 8, !dbg !3541
  %20 = or i16 %19, %13, !dbg !3542
  store i16 %20, i16* %16, align 2, !dbg !3542, !tbaa !533
  %21 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %22 = load i16, i16* %21, align 2, !dbg !3536, !tbaa !533
  %23 = lshr i16 %22, 8, !dbg !3539
  %24 = shl i16 %22, 8, !dbg !3541
  %25 = or i16 %24, %18, !dbg !3542
  store i16 %25, i16* %21, align 2, !dbg !3542, !tbaa !533
  %26 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %27 = load i16, i16* %26, align 2, !dbg !3536, !tbaa !533
  %28 = lshr i16 %27, 8, !dbg !3539
  %29 = shl i16 %27, 8, !dbg !3541
  %30 = or i16 %29, %23, !dbg !3542
  store i16 %30, i16* %26, align 2, !dbg !3542, !tbaa !533
  %31 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %32 = load i16, i16* %31, align 2, !dbg !3536, !tbaa !533
  %33 = lshr i16 %32, 8, !dbg !3539
  %34 = shl i16 %32, 8, !dbg !3541
  %35 = or i16 %34, %28, !dbg !3542
  store i16 %35, i16* %31, align 2, !dbg !3542, !tbaa !533
  %36 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %37 = load i16, i16* %36, align 2, !dbg !3536, !tbaa !533
  %38 = lshr i16 %37, 8, !dbg !3539
  %39 = shl i16 %37, 8, !dbg !3541
  %40 = or i16 %39, %33, !dbg !3542
  store i16 %40, i16* %36, align 2, !dbg !3542, !tbaa !533
  %41 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %42 = load i16, i16* %41, align 2, !dbg !3536, !tbaa !533
  %43 = lshr i16 %42, 8, !dbg !3539
  %44 = shl i16 %42, 8, !dbg !3541
  %45 = or i16 %44, %38, !dbg !3542
  store i16 %45, i16* %41, align 2, !dbg !3542, !tbaa !533
  %46 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %47 = load i16, i16* %46, align 2, !dbg !3536, !tbaa !533
  %48 = lshr i16 %47, 8, !dbg !3539
  %49 = shl i16 %47, 8, !dbg !3541
  %50 = or i16 %49, %43, !dbg !3542
  store i16 %50, i16* %46, align 2, !dbg !3542, !tbaa !533
  %51 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  %52 = load i16, i16* %51, align 2, !dbg !3536, !tbaa !533
  %53 = shl i16 %52, 8, !dbg !3541
  %54 = or i16 %53, %48, !dbg !3542
  store i16 %54, i16* %51, align 2, !dbg !3542, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3545
  ret void, !dbg !3545
}

; Function Attrs: noredzone nounwind
define internal fastcc void @eshdn8(i16* nocapture) unnamed_addr #0 !dbg !3546 {
  %2 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %3 = load i16, i16* %2, align 2, !dbg !3559, !tbaa !533
  %4 = shl i16 %3, 8, !dbg !3562
  %5 = lshr i16 %3, 8, !dbg !3564
  store i16 %5, i16* %2, align 2, !dbg !3565, !tbaa !533
  %6 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %7 = load i16, i16* %6, align 2, !dbg !3559, !tbaa !533
  %8 = shl i16 %7, 8, !dbg !3562
  %9 = lshr i16 %7, 8, !dbg !3564
  %10 = or i16 %9, %4, !dbg !3565
  store i16 %10, i16* %6, align 2, !dbg !3565, !tbaa !533
  %11 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %12 = load i16, i16* %11, align 2, !dbg !3559, !tbaa !533
  %13 = shl i16 %12, 8, !dbg !3562
  %14 = lshr i16 %12, 8, !dbg !3564
  %15 = or i16 %14, %8, !dbg !3565
  store i16 %15, i16* %11, align 2, !dbg !3565, !tbaa !533
  %16 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %17 = load i16, i16* %16, align 2, !dbg !3559, !tbaa !533
  %18 = shl i16 %17, 8, !dbg !3562
  %19 = lshr i16 %17, 8, !dbg !3564
  %20 = or i16 %19, %13, !dbg !3565
  store i16 %20, i16* %16, align 2, !dbg !3565, !tbaa !533
  %21 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %22 = load i16, i16* %21, align 2, !dbg !3559, !tbaa !533
  %23 = shl i16 %22, 8, !dbg !3562
  %24 = lshr i16 %22, 8, !dbg !3564
  %25 = or i16 %24, %18, !dbg !3565
  store i16 %25, i16* %21, align 2, !dbg !3565, !tbaa !533
  %26 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %27 = load i16, i16* %26, align 2, !dbg !3559, !tbaa !533
  %28 = shl i16 %27, 8, !dbg !3562
  %29 = lshr i16 %27, 8, !dbg !3564
  %30 = or i16 %29, %23, !dbg !3565
  store i16 %30, i16* %26, align 2, !dbg !3565, !tbaa !533
  %31 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %32 = load i16, i16* %31, align 2, !dbg !3559, !tbaa !533
  %33 = shl i16 %32, 8, !dbg !3562
  %34 = lshr i16 %32, 8, !dbg !3564
  %35 = or i16 %34, %28, !dbg !3565
  store i16 %35, i16* %31, align 2, !dbg !3565, !tbaa !533
  %36 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %37 = load i16, i16* %36, align 2, !dbg !3559, !tbaa !533
  %38 = shl i16 %37, 8, !dbg !3562
  %39 = lshr i16 %37, 8, !dbg !3564
  %40 = or i16 %39, %33, !dbg !3565
  store i16 %40, i16* %36, align 2, !dbg !3565, !tbaa !533
  %41 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %42 = load i16, i16* %41, align 2, !dbg !3559, !tbaa !533
  %43 = shl i16 %42, 8, !dbg !3562
  %44 = lshr i16 %42, 8, !dbg !3564
  %45 = or i16 %44, %38, !dbg !3565
  store i16 %45, i16* %41, align 2, !dbg !3565, !tbaa !533
  %46 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %47 = load i16, i16* %46, align 2, !dbg !3559, !tbaa !533
  %48 = shl i16 %47, 8, !dbg !3562
  %49 = lshr i16 %47, 8, !dbg !3564
  %50 = or i16 %49, %43, !dbg !3565
  store i16 %50, i16* %46, align 2, !dbg !3565, !tbaa !533
  %51 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3566
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  %52 = load i16, i16* %51, align 2, !dbg !3559, !tbaa !533
  %53 = lshr i16 %52, 8, !dbg !3564
  %54 = or i16 %53, %48, !dbg !3565
  store i16 %54, i16* %51, align 2, !dbg !3565, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3568
  ret void, !dbg !3568
}

; Function Attrs: noredzone nounwind
define internal fastcc void @m16m(i16 zeroext, i16* nocapture readonly, i16* nocapture) unnamed_addr #0 !dbg !3569 {
  %4 = alloca [13 x i16], align 16
  %5 = bitcast [13 x i16]* %4 to i8*, !dbg !3586
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %5) #4, !dbg !3586
  %6 = zext i16 %0 to i64, !dbg !3588
  %7 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !3590
  %8 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 12, !dbg !3592
  store i16 0, i16* %7, align 2, !dbg !3593, !tbaa !533
  store i16 0, i16* %8, align 8, !dbg !3594, !tbaa !533
  %9 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !3595
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3600
  br label %10, !dbg !3600

; <label>:10:                                     ; preds = %36, %3
  %11 = phi i32 [ 3, %3 ], [ %41, %36 ]
  %12 = phi i16* [ %8, %3 ], [ %38, %36 ]
  %13 = phi i16* [ %9, %3 ], [ %40, %36 ]
  %14 = load i16, i16* %13, align 2, !dbg !3601, !tbaa !533
  %15 = icmp eq i16 %14, 0, !dbg !3605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3606
  br i1 %15, label %16, label %18, !dbg !3606

; <label>:16:                                     ; preds = %10
  %17 = getelementptr inbounds i16, i16* %12, i64 -1, !dbg !3607
  br label %36, !dbg !3609

; <label>:18:                                     ; preds = %10
  %19 = zext i16 %14 to i64, !dbg !3610
  %20 = mul nuw nsw i64 %19, %6, !dbg !3612
  %21 = and i64 %20, 65535, !dbg !3614
  %22 = load i16, i16* %12, align 2, !dbg !3615, !tbaa !533
  %23 = zext i16 %22 to i64, !dbg !3615
  %24 = add nuw nsw i64 %21, %23, !dbg !3616
  %25 = trunc i64 %24 to i16, !dbg !3618
  %26 = getelementptr inbounds i16, i16* %12, i64 -1, !dbg !3619
  store i16 %25, i16* %12, align 2, !dbg !3620, !tbaa !533
  %27 = lshr i64 %24, 16, !dbg !3621
  %28 = lshr i64 %20, 16, !dbg !3622
  %29 = add nuw nsw i64 %27, %28, !dbg !3623
  %30 = load i16, i16* %26, align 2, !dbg !3624, !tbaa !533
  %31 = zext i16 %30 to i64, !dbg !3624
  %32 = add nuw nsw i64 %29, %31, !dbg !3625
  %33 = trunc i64 %32 to i16, !dbg !3626
  store i16 %33, i16* %26, align 2, !dbg !3627, !tbaa !533
  %34 = lshr i64 %32, 16, !dbg !3628
  %35 = trunc i64 %34 to i16, !dbg !3629
  br label %36

; <label>:36:                                     ; preds = %16, %18
  %37 = phi i16 [ 0, %16 ], [ %35, %18 ]
  %38 = phi i16* [ %17, %16 ], [ %26, %18 ], !dbg !3630
  %39 = getelementptr inbounds i16, i16* %12, i64 -2, !dbg !3630
  store i16 %37, i16* %39, align 2, !dbg !3630, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %40 = getelementptr inbounds i16, i16* %13, i64 -1, !dbg !3630
  %41 = add nuw nsw i32 %11, 1, !dbg !3631
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3632
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3600
  %42 = icmp eq i32 %41, 13, !dbg !3633
  br i1 %42, label %43, label %10, !dbg !3600, !llvm.loop !3634

; <label>:43:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %44 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 2, !dbg !3639
  %45 = load i16, i16* %44, align 4, !dbg !3639, !tbaa !533
  %46 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !3641
  store i16 %45, i16* %46, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %47 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !3639
  %48 = load i16, i16* %47, align 2, !dbg !3639, !tbaa !533
  %49 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !3641
  store i16 %48, i16* %49, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %50 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 4, !dbg !3639
  %51 = load i16, i16* %50, align 8, !dbg !3639, !tbaa !533
  %52 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !3641
  store i16 %51, i16* %52, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %53 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 5, !dbg !3639
  %54 = load i16, i16* %53, align 2, !dbg !3639, !tbaa !533
  %55 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !3641
  store i16 %54, i16* %55, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %56 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 6, !dbg !3639
  %57 = load i16, i16* %56, align 4, !dbg !3639, !tbaa !533
  %58 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !3641
  store i16 %57, i16* %58, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %59 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 7, !dbg !3639
  %60 = load i16, i16* %59, align 2, !dbg !3639, !tbaa !533
  %61 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !3641
  store i16 %60, i16* %61, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %62 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 8, !dbg !3639
  %63 = load i16, i16* %62, align 16, !dbg !3639, !tbaa !533
  %64 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !3641
  store i16 %63, i16* %64, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %65 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 9, !dbg !3639
  %66 = load i16, i16* %65, align 2, !dbg !3639, !tbaa !533
  %67 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !3641
  store i16 %66, i16* %67, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %68 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 10, !dbg !3639
  %69 = load i16, i16* %68, align 4, !dbg !3639, !tbaa !533
  %70 = getelementptr inbounds i16, i16* %2, i64 10, !dbg !3641
  store i16 %69, i16* %70, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %71 = load i16, i16* %7, align 2, !dbg !3639, !tbaa !533
  %72 = getelementptr inbounds i16, i16* %2, i64 11, !dbg !3641
  store i16 %71, i16* %72, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  %73 = load i16, i16* %8, align 8, !dbg !3639, !tbaa !533
  %74 = getelementptr inbounds i16, i16* %2, i64 12, !dbg !3641
  store i16 %73, i16* %74, align 2, !dbg !3642, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3638
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %5) #4, !dbg !3644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3644
  ret void, !dbg !3644
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ecmpm(i16* nocapture readonly, i16* nocapture readonly) unnamed_addr #0 !dbg !3645 {
  %3 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3654
  %4 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !3655
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %5 = load i16, i16* %3, align 2, !dbg !3660, !tbaa !533
  %6 = load i16, i16* %4, align 2, !dbg !3664, !tbaa !533
  %7 = icmp eq i16 %5, %6, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %7, label %8, label %14, !dbg !3666

; <label>:8:                                      ; preds = %2
  %9 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !3667
  %10 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %11 = load i16, i16* %10, align 2, !dbg !3660, !tbaa !533
  %12 = load i16, i16* %9, align 2, !dbg !3664, !tbaa !533
  %13 = icmp eq i16 %11, %12, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %13, label %21, label %14, !dbg !3666

; <label>:14:                                     ; preds = %69, %63, %57, %51, %45, %39, %33, %27, %21, %8, %2
  %15 = phi i16 [ %5, %2 ], [ %11, %8 ], [ %24, %21 ], [ %30, %27 ], [ %36, %33 ], [ %42, %39 ], [ %48, %45 ], [ %54, %51 ], [ %60, %57 ], [ %66, %63 ], [ %72, %69 ], !dbg !3660
  %16 = phi i16 [ %6, %2 ], [ %12, %8 ], [ %25, %21 ], [ %31, %27 ], [ %37, %33 ], [ %43, %39 ], [ %49, %45 ], [ %55, %51 ], [ %61, %57 ], [ %67, %63 ], [ %73, %69 ], !dbg !3664
  %17 = icmp ugt i16 %15, %16, !dbg !3670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3673
  %18 = select i1 %17, i32 1, i32 -1, !dbg !3674
  br label %19, !dbg !3674

; <label>:19:                                     ; preds = %14, %75
  %20 = phi i32 [ 0, %75 ], [ %18, %14 ], !dbg !3675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3676
  ret i32 %20, !dbg !3676

; <label>:21:                                     ; preds = %8
  %22 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !3667
  %23 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %24 = load i16, i16* %23, align 2, !dbg !3660, !tbaa !533
  %25 = load i16, i16* %22, align 2, !dbg !3664, !tbaa !533
  %26 = icmp eq i16 %24, %25, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %26, label %27, label %14, !dbg !3666

; <label>:27:                                     ; preds = %21
  %28 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !3667
  %29 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %30 = load i16, i16* %29, align 2, !dbg !3660, !tbaa !533
  %31 = load i16, i16* %28, align 2, !dbg !3664, !tbaa !533
  %32 = icmp eq i16 %30, %31, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %32, label %33, label %14, !dbg !3666

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !3667
  %35 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %36 = load i16, i16* %35, align 2, !dbg !3660, !tbaa !533
  %37 = load i16, i16* %34, align 2, !dbg !3664, !tbaa !533
  %38 = icmp eq i16 %36, %37, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %38, label %39, label %14, !dbg !3666

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !3667
  %41 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %42 = load i16, i16* %41, align 2, !dbg !3660, !tbaa !533
  %43 = load i16, i16* %40, align 2, !dbg !3664, !tbaa !533
  %44 = icmp eq i16 %42, %43, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %44, label %45, label %14, !dbg !3666

; <label>:45:                                     ; preds = %39
  %46 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !3667
  %47 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %48 = load i16, i16* %47, align 2, !dbg !3660, !tbaa !533
  %49 = load i16, i16* %46, align 2, !dbg !3664, !tbaa !533
  %50 = icmp eq i16 %48, %49, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %50, label %51, label %14, !dbg !3666

; <label>:51:                                     ; preds = %45
  %52 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !3667
  %53 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %54 = load i16, i16* %53, align 2, !dbg !3660, !tbaa !533
  %55 = load i16, i16* %52, align 2, !dbg !3664, !tbaa !533
  %56 = icmp eq i16 %54, %55, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %56, label %57, label %14, !dbg !3666

; <label>:57:                                     ; preds = %51
  %58 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !3667
  %59 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %60 = load i16, i16* %59, align 2, !dbg !3660, !tbaa !533
  %61 = load i16, i16* %58, align 2, !dbg !3664, !tbaa !533
  %62 = icmp eq i16 %60, %61, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %62, label %63, label %14, !dbg !3666

; <label>:63:                                     ; preds = %57
  %64 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !3667
  %65 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %66 = load i16, i16* %65, align 2, !dbg !3660, !tbaa !533
  %67 = load i16, i16* %64, align 2, !dbg !3664, !tbaa !533
  %68 = icmp eq i16 %66, %67, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %68, label %69, label %14, !dbg !3666

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !3667
  %71 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3668
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  %72 = load i16, i16* %71, align 2, !dbg !3660, !tbaa !533
  %73 = load i16, i16* %70, align 2, !dbg !3664, !tbaa !533
  %74 = icmp eq i16 %72, %73, !dbg !3665
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3666
  br i1 %74, label %75, label %14, !dbg !3666

; <label>:75:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3677
  br label %19, !dbg !3677
}

; Function Attrs: noredzone nounwind
define internal fastcc void @esubm(i16* nocapture readonly, i16* nocapture) unnamed_addr #0 !dbg !3678 {
  %3 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3687
  %4 = getelementptr inbounds i16, i16* %1, i64 12, !dbg !3688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3691
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %5 = load i16, i16* %4, align 2, !dbg !3694, !tbaa !533
  %6 = zext i16 %5 to i64, !dbg !3697
  %7 = load i16, i16* %3, align 2, !dbg !3698, !tbaa !533
  %8 = zext i16 %7 to i64, !dbg !3699
  %9 = sub nsw i64 %6, %8, !dbg !3700
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %10 = lshr i64 %9, 16
  %11 = and i64 %10, 1
  %12 = trunc i64 %9 to i16, !dbg !3703
  store i16 %12, i16* %4, align 2, !dbg !3704, !tbaa !533
  %13 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3705
  %14 = getelementptr inbounds i16, i16* %1, i64 11, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %15 = load i16, i16* %14, align 2, !dbg !3694, !tbaa !533
  %16 = zext i16 %15 to i64, !dbg !3697
  %17 = load i16, i16* %13, align 2, !dbg !3698, !tbaa !533
  %18 = zext i16 %17 to i64, !dbg !3699
  %19 = sub nsw i64 %16, %18, !dbg !3700
  %20 = sub nsw i64 %19, %11, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %21 = lshr i64 %20, 16
  %22 = and i64 %21, 1
  %23 = trunc i64 %20 to i16, !dbg !3703
  store i16 %23, i16* %14, align 2, !dbg !3704, !tbaa !533
  %24 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3705
  %25 = getelementptr inbounds i16, i16* %1, i64 10, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %26 = load i16, i16* %25, align 2, !dbg !3694, !tbaa !533
  %27 = zext i16 %26 to i64, !dbg !3697
  %28 = load i16, i16* %24, align 2, !dbg !3698, !tbaa !533
  %29 = zext i16 %28 to i64, !dbg !3699
  %30 = sub nsw i64 %27, %29, !dbg !3700
  %31 = sub nsw i64 %30, %22, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %32 = lshr i64 %31, 16
  %33 = and i64 %32, 1
  %34 = trunc i64 %31 to i16, !dbg !3703
  store i16 %34, i16* %25, align 2, !dbg !3704, !tbaa !533
  %35 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3705
  %36 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %37 = load i16, i16* %36, align 2, !dbg !3694, !tbaa !533
  %38 = zext i16 %37 to i64, !dbg !3697
  %39 = load i16, i16* %35, align 2, !dbg !3698, !tbaa !533
  %40 = zext i16 %39 to i64, !dbg !3699
  %41 = sub nsw i64 %38, %40, !dbg !3700
  %42 = sub nsw i64 %41, %33, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %43 = lshr i64 %42, 16
  %44 = and i64 %43, 1
  %45 = trunc i64 %42 to i16, !dbg !3703
  store i16 %45, i16* %36, align 2, !dbg !3704, !tbaa !533
  %46 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3705
  %47 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %48 = load i16, i16* %47, align 2, !dbg !3694, !tbaa !533
  %49 = zext i16 %48 to i64, !dbg !3697
  %50 = load i16, i16* %46, align 2, !dbg !3698, !tbaa !533
  %51 = zext i16 %50 to i64, !dbg !3699
  %52 = sub nsw i64 %49, %51, !dbg !3700
  %53 = sub nsw i64 %52, %44, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %54 = lshr i64 %53, 16
  %55 = and i64 %54, 1
  %56 = trunc i64 %53 to i16, !dbg !3703
  store i16 %56, i16* %47, align 2, !dbg !3704, !tbaa !533
  %57 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3705
  %58 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %59 = load i16, i16* %58, align 2, !dbg !3694, !tbaa !533
  %60 = zext i16 %59 to i64, !dbg !3697
  %61 = load i16, i16* %57, align 2, !dbg !3698, !tbaa !533
  %62 = zext i16 %61 to i64, !dbg !3699
  %63 = sub nsw i64 %60, %62, !dbg !3700
  %64 = sub nsw i64 %63, %55, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %65 = lshr i64 %64, 16
  %66 = and i64 %65, 1
  %67 = trunc i64 %64 to i16, !dbg !3703
  store i16 %67, i16* %58, align 2, !dbg !3704, !tbaa !533
  %68 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3705
  %69 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %70 = load i16, i16* %69, align 2, !dbg !3694, !tbaa !533
  %71 = zext i16 %70 to i64, !dbg !3697
  %72 = load i16, i16* %68, align 2, !dbg !3698, !tbaa !533
  %73 = zext i16 %72 to i64, !dbg !3699
  %74 = sub nsw i64 %71, %73, !dbg !3700
  %75 = sub nsw i64 %74, %66, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %76 = lshr i64 %75, 16
  %77 = and i64 %76, 1
  %78 = trunc i64 %75 to i16, !dbg !3703
  store i16 %78, i16* %69, align 2, !dbg !3704, !tbaa !533
  %79 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3705
  %80 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %81 = load i16, i16* %80, align 2, !dbg !3694, !tbaa !533
  %82 = zext i16 %81 to i64, !dbg !3697
  %83 = load i16, i16* %79, align 2, !dbg !3698, !tbaa !533
  %84 = zext i16 %83 to i64, !dbg !3699
  %85 = sub nsw i64 %82, %84, !dbg !3700
  %86 = sub nsw i64 %85, %77, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %87 = lshr i64 %86, 16
  %88 = and i64 %87, 1
  %89 = trunc i64 %86 to i16, !dbg !3703
  store i16 %89, i16* %80, align 2, !dbg !3704, !tbaa !533
  %90 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3705
  %91 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %92 = load i16, i16* %91, align 2, !dbg !3694, !tbaa !533
  %93 = zext i16 %92 to i64, !dbg !3697
  %94 = load i16, i16* %90, align 2, !dbg !3698, !tbaa !533
  %95 = zext i16 %94 to i64, !dbg !3699
  %96 = sub nsw i64 %93, %95, !dbg !3700
  %97 = sub nsw i64 %96, %88, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %98 = lshr i64 %97, 16
  %99 = and i64 %98, 1
  %100 = trunc i64 %97 to i16, !dbg !3703
  store i16 %100, i16* %91, align 2, !dbg !3704, !tbaa !533
  %101 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3705
  %102 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %103 = load i16, i16* %102, align 2, !dbg !3694, !tbaa !533
  %104 = zext i16 %103 to i64, !dbg !3697
  %105 = load i16, i16* %101, align 2, !dbg !3698, !tbaa !533
  %106 = zext i16 %105 to i64, !dbg !3699
  %107 = sub nsw i64 %104, %106, !dbg !3700
  %108 = sub nsw i64 %107, %99, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %109 = lshr i64 %108, 16
  %110 = and i64 %109, 1
  %111 = trunc i64 %108 to i16, !dbg !3703
  store i16 %111, i16* %102, align 2, !dbg !3704, !tbaa !533
  %112 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3705
  %113 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !3706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  %114 = load i16, i16* %113, align 2, !dbg !3694, !tbaa !533
  %115 = zext i16 %114 to i64, !dbg !3697
  %116 = load i16, i16* %112, align 2, !dbg !3698, !tbaa !533
  %117 = zext i16 %116 to i64, !dbg !3699
  %118 = sub nsw i64 %115, %117, !dbg !3700
  %119 = sub nsw i64 %118, %110, !dbg !3708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3702
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %120 = trunc i64 %119 to i16, !dbg !3703
  store i16 %120, i16* %113, align 2, !dbg !3704, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3707
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3709
  ret void, !dbg !3709
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @eshift(i16*, i32) unnamed_addr #0 !dbg !3710 {
  %3 = icmp eq i32 %1, 0, !dbg !3720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3722
  br i1 %3, label %217, label %4, !dbg !3722

; <label>:4:                                      ; preds = %2
  %5 = getelementptr i16, i16* %0, i64 12, !dbg !3724
  %6 = icmp slt i32 %1, 0, !dbg !3726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3728
  br i1 %6, label %40, label %7, !dbg !3728

; <label>:7:                                      ; preds = %4
  %8 = icmp sgt i32 %1, 15, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  br i1 %8, label %9, label %156, !dbg !3731

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds i16, i16* %0, i64 2
  %11 = getelementptr inbounds i16, i16* %0, i64 3
  %12 = getelementptr inbounds i16, i16* %0, i64 4
  %13 = getelementptr inbounds i16, i16* %0, i64 5
  %14 = getelementptr inbounds i16, i16* %0, i64 6
  %15 = getelementptr inbounds i16, i16* %0, i64 7
  %16 = getelementptr inbounds i16, i16* %0, i64 8
  %17 = getelementptr inbounds i16, i16* %0, i64 9
  %18 = getelementptr inbounds i16, i16* %0, i64 10
  %19 = getelementptr inbounds i16, i16* %0, i64 11
  %20 = xor i32 %1, -1, !dbg !3731
  %21 = icmp sgt i32 %20, -32, !dbg !3731
  %22 = select i1 %21, i32 %20, i32 -32, !dbg !3731
  %23 = add i32 %22, %1, !dbg !3731
  %24 = add i32 %23, 16, !dbg !3731
  %25 = and i32 %24, -16, !dbg !3731
  %26 = load i16, i16* %11, align 2, !dbg !3732, !tbaa !533
  %27 = load i16, i16* %12, align 2, !dbg !3732, !tbaa !533
  %28 = load i16, i16* %13, align 2, !dbg !3732, !tbaa !533
  %29 = load i16, i16* %14, align 2, !dbg !3732, !tbaa !533
  %30 = load i16, i16* %15, align 2, !dbg !3732, !tbaa !533
  %31 = load i16, i16* %16, align 2, !dbg !3732, !tbaa !533
  %32 = load i16, i16* %17, align 2, !dbg !3732, !tbaa !533
  %33 = load i16, i16* %18, align 2, !dbg !3732, !tbaa !533
  %34 = load i16, i16* %19, align 2, !dbg !3732, !tbaa !533
  %35 = load i16, i16* %5, align 2, !dbg !3732, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %26, i16* %10, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %27, i16* %11, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %28, i16* %12, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %29, i16* %13, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %30, i16* %14, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %31, i16* %15, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %32, i16* %16, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %33, i16* %17, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %34, i16* %18, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %35, i16* %19, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %5, align 2, !dbg !3742, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  %36 = icmp sgt i32 %1, 31, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  br i1 %36, label %37, label %153, !dbg !3731, !llvm.loop !3744

; <label>:37:                                     ; preds = %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %27, i16* %10, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %28, i16* %11, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %29, i16* %12, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %30, i16* %13, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %31, i16* %14, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %32, i16* %15, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %33, i16* %16, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %34, i16* %17, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %35, i16* %18, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %19, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %5, align 2, !dbg !3742, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3743
  %38 = add nsw i32 %1, -32, !dbg !3746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  %39 = icmp sgt i32 %1, 47, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  br i1 %39, label %166, label %153, !dbg !3731, !llvm.loop !3744

; <label>:40:                                     ; preds = %4
  %41 = sub nsw i32 0, %1, !dbg !3747
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  %42 = icmp slt i32 %1, -15, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  br i1 %42, label %43, label %80, !dbg !3749

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds i16, i16* %0, i64 11
  %45 = getelementptr inbounds i16, i16* %0, i64 10
  %46 = getelementptr inbounds i16, i16* %0, i64 9
  %47 = getelementptr inbounds i16, i16* %0, i64 8
  %48 = getelementptr inbounds i16, i16* %0, i64 7
  %49 = getelementptr inbounds i16, i16* %0, i64 6
  %50 = getelementptr inbounds i16, i16* %0, i64 5
  %51 = getelementptr inbounds i16, i16* %0, i64 4
  %52 = getelementptr inbounds i16, i16* %0, i64 3
  %53 = getelementptr inbounds i16, i16* %0, i64 2
  %54 = add i32 %1, -1, !dbg !3749
  %55 = icmp sgt i32 %54, -32, !dbg !3749
  %56 = select i1 %55, i32 %54, i32 -32, !dbg !3749
  %57 = add i32 %56, 16, !dbg !3749
  %58 = sub i32 %57, %1, !dbg !3749
  %59 = and i32 %58, -16, !dbg !3749
  %60 = load i16, i16* %5, align 2, !dbg !3751, !tbaa !533
  %61 = load i16, i16* %44, align 2, !dbg !3753, !tbaa !533
  %62 = load i16, i16* %45, align 2, !dbg !3753, !tbaa !533
  %63 = load i16, i16* %46, align 2, !dbg !3753, !tbaa !533
  %64 = load i16, i16* %47, align 2, !dbg !3753, !tbaa !533
  %65 = load i16, i16* %48, align 2, !dbg !3753, !tbaa !533
  %66 = load i16, i16* %49, align 2, !dbg !3753, !tbaa !533
  %67 = load i16, i16* %50, align 2, !dbg !3753, !tbaa !533
  %68 = load i16, i16* %51, align 2, !dbg !3753, !tbaa !533
  %69 = load i16, i16* %52, align 2, !dbg !3753, !tbaa !533
  %70 = load i16, i16* %53, align 2, !dbg !3753, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %61, i16* %5, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %62, i16* %44, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %63, i16* %45, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %64, i16* %46, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %65, i16* %47, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %66, i16* %48, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %67, i16* %49, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %68, i16* %50, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %69, i16* %51, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %70, i16* %52, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %53, align 2, !dbg !3762, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  %71 = sub i32 -16, %1, !dbg !3764
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  %72 = icmp slt i32 %1, -31, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  br i1 %72, label %73, label %76, !dbg !3749, !llvm.loop !3765

; <label>:73:                                     ; preds = %43
  %74 = or i16 %61, %60, !dbg !3767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %62, i16* %5, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %63, i16* %44, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %64, i16* %45, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %65, i16* %46, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %66, i16* %47, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %67, i16* %48, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %68, i16* %49, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %69, i16* %50, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %70, i16* %51, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %52, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %53, align 2, !dbg !3762, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  %75 = icmp sgt i32 %71, 31, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  br i1 %75, label %91, label %76, !dbg !3749, !llvm.loop !3765

; <label>:76:                                     ; preds = %91, %73, %43
  %77 = phi i16 [ %60, %43 ], [ %74, %73 ], [ %104, %91 ], !dbg !3767
  %78 = sub i32 -16, %1, !dbg !3749
  %79 = sub i32 %78, %59, !dbg !3749
  br label %80, !dbg !3768

; <label>:80:                                     ; preds = %76, %40
  %81 = phi i32 [ %41, %40 ], [ %79, %76 ], !dbg !3769
  %82 = phi i16 [ 0, %40 ], [ %77, %76 ], !dbg !3769
  %83 = icmp sgt i32 %81, 7, !dbg !3768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3770
  br i1 %83, label %84, label %109, !dbg !3770

; <label>:84:                                     ; preds = %80
  %85 = xor i32 %81, -1, !dbg !3771
  %86 = icmp sgt i32 %85, -16, !dbg !3771
  %87 = select i1 %86, i32 %85, i32 -16, !dbg !3771
  %88 = add i32 %81, %87, !dbg !3771
  %89 = add i32 %88, 8, !dbg !3771
  %90 = and i32 %89, -8, !dbg !3771
  br label %115, !dbg !3771

; <label>:91:                                     ; preds = %73, %91
  %92 = phi i16 [ 0, %91 ], [ %70, %73 ], !dbg !3753
  %93 = phi i16 [ %92, %91 ], [ %69, %73 ], !dbg !3753
  %94 = phi i16 [ %93, %91 ], [ %68, %73 ], !dbg !3753
  %95 = phi i16 [ %94, %91 ], [ %67, %73 ], !dbg !3753
  %96 = phi i16 [ %95, %91 ], [ %66, %73 ], !dbg !3753
  %97 = phi i16 [ %96, %91 ], [ %65, %73 ], !dbg !3753
  %98 = phi i16 [ %97, %91 ], [ %64, %73 ], !dbg !3753
  %99 = phi i16 [ %98, %91 ], [ %63, %73 ], !dbg !3753
  %100 = phi i16 [ %99, %91 ], [ %62, %73 ], !dbg !3751
  %101 = phi i16 [ %104, %91 ], [ %74, %73 ]
  %102 = phi i32 [ %103, %91 ], [ %71, %73 ]
  %103 = add nsw i32 %102, -16, !dbg !3764
  %104 = or i16 %100, %101, !dbg !3767
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %99, i16* %5, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %98, i16* %44, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %97, i16* %45, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %96, i16* %46, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %95, i16* %47, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %94, i16* %48, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %93, i16* %49, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 %92, i16* %50, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %51, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %52, align 2, !dbg !3760, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3761
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3759
  store i16 0, i16* %53, align 2, !dbg !3762, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  %105 = icmp sgt i32 %102, 47, !dbg !3750
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3749
  br i1 %105, label %91, label %76, !dbg !3749, !llvm.loop !3773

; <label>:106:                                    ; preds = %115
  %107 = add i32 %81, -8, !dbg !3771
  %108 = sub i32 %107, %90, !dbg !3771
  br label %109, !dbg !3774

; <label>:109:                                    ; preds = %106, %80
  %110 = phi i32 [ %81, %80 ], [ %108, %106 ], !dbg !3775
  %111 = phi i16 [ %82, %80 ], [ %120, %106 ], !dbg !3775
  %112 = icmp sgt i32 %110, 0, !dbg !3774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  br i1 %112, label %113, label %213, !dbg !3776

; <label>:113:                                    ; preds = %109
  %114 = getelementptr inbounds i16, i16* %0, i64 2
  br label %123, !dbg !3776

; <label>:115:                                    ; preds = %84, %115
  %116 = phi i16 [ %120, %115 ], [ %82, %84 ]
  %117 = phi i32 [ %121, %115 ], [ %81, %84 ]
  %118 = load i16, i16* %5, align 2, !dbg !3771, !tbaa !533
  %119 = and i16 %118, 255, !dbg !3777
  %120 = or i16 %119, %116, !dbg !3778
  tail call fastcc void @eshdn8(i16* %0) #6, !dbg !3779
  %121 = add nsw i32 %117, -8, !dbg !3780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3770
  %122 = icmp sgt i32 %117, 15, !dbg !3768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3770
  br i1 %122, label %115, label %106, !dbg !3770, !llvm.loop !3781

; <label>:123:                                    ; preds = %113, %149
  %124 = phi i16 [ %111, %113 ], [ %150, %149 ]
  %125 = phi i32 [ %110, %113 ], [ %151, %149 ]
  %126 = load i16, i16* %5, align 2, !dbg !3783, !tbaa !533
  %127 = and i16 %126, 1, !dbg !3785
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3790
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3791
  br label %128, !dbg !3791

; <label>:128:                                    ; preds = %144, %123
  %129 = phi i32 [ 2, %123 ], [ %147, %144 ]
  %130 = phi i16 [ 0, %123 ], [ %145, %144 ]
  %131 = phi i16* [ %114, %123 ], [ %146, %144 ]
  %132 = load i16, i16* %131, align 2, !dbg !3792, !tbaa !533
  %133 = and i16 %132, 1, !dbg !3793
  %134 = icmp eq i16 %133, 0, !dbg !3793
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3794
  br i1 %134, label %137, label %135, !dbg !3794

; <label>:135:                                    ; preds = %128
  %136 = or i16 %130, 1, !dbg !3795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3796
  br label %137, !dbg !3796

; <label>:137:                                    ; preds = %135, %128
  %138 = phi i16 [ %136, %135 ], [ %130, %128 ], !dbg !3797
  %139 = lshr i16 %132, 1, !dbg !3798
  store i16 %139, i16* %131, align 2, !dbg !3798, !tbaa !533
  %140 = and i16 %138, 2, !dbg !3799
  %141 = icmp eq i16 %140, 0, !dbg !3799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3800
  br i1 %141, label %144, label %142, !dbg !3800

; <label>:142:                                    ; preds = %137
  %143 = or i16 %139, -32768, !dbg !3801
  store i16 %143, i16* %131, align 2, !dbg !3801, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3802
  br label %144, !dbg !3802

; <label>:144:                                    ; preds = %142, %137
  %145 = shl i16 %138, 1, !dbg !3803
  %146 = getelementptr inbounds i16, i16* %131, i64 1, !dbg !3804
  %147 = add nuw nsw i32 %129, 1, !dbg !3805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3806
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3791
  %148 = icmp eq i32 %147, 13, !dbg !3807
  br i1 %148, label %149, label %128, !dbg !3791, !llvm.loop !1168

; <label>:149:                                    ; preds = %144
  %150 = or i16 %127, %124, !dbg !3808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3809
  %151 = add nsw i32 %125, -1, !dbg !3810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  %152 = icmp sgt i32 %125, 1, !dbg !3774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3776
  br i1 %152, label %123, label %213, !dbg !3776, !llvm.loop !3811

; <label>:153:                                    ; preds = %166, %37, %9
  %154 = add i32 %1, -16, !dbg !3731
  %155 = sub i32 %154, %25, !dbg !3731
  br label %156, !dbg !3813

; <label>:156:                                    ; preds = %153, %7
  %157 = phi i32 [ %1, %7 ], [ %155, %153 ]
  %158 = icmp sgt i32 %157, 7, !dbg !3813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  br i1 %158, label %159, label %181, !dbg !3814

; <label>:159:                                    ; preds = %156
  %160 = xor i32 %157, -1, !dbg !3815
  %161 = icmp sgt i32 %160, -16, !dbg !3815
  %162 = select i1 %161, i32 %160, i32 -16, !dbg !3815
  %163 = add i32 %157, %162, !dbg !3815
  %164 = add i32 %163, 8, !dbg !3815
  %165 = and i32 %164, -8, !dbg !3815
  br label %184, !dbg !3815

; <label>:166:                                    ; preds = %37, %166
  %167 = phi i16 [ 0, %166 ], [ %35, %37 ], !dbg !3732
  %168 = phi i16 [ %167, %166 ], [ %34, %37 ], !dbg !3732
  %169 = phi i16 [ %168, %166 ], [ %33, %37 ], !dbg !3732
  %170 = phi i16 [ %169, %166 ], [ %32, %37 ], !dbg !3732
  %171 = phi i16 [ %170, %166 ], [ %31, %37 ], !dbg !3732
  %172 = phi i16 [ %171, %166 ], [ %30, %37 ], !dbg !3732
  %173 = phi i16 [ %172, %166 ], [ %29, %37 ], !dbg !3732
  %174 = phi i16 [ %173, %166 ], [ %28, %37 ], !dbg !3732
  %175 = phi i32 [ %176, %166 ], [ %38, %37 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %174, i16* %10, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %173, i16* %11, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %172, i16* %12, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %171, i16* %13, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %170, i16* %14, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %169, i16* %15, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %168, i16* %16, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 %167, i16* %17, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %18, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %19, align 2, !dbg !3740, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3739
  store i16 0, i16* %5, align 2, !dbg !3742, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3743
  %176 = add nsw i32 %175, -16, !dbg !3746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  %177 = icmp sgt i32 %175, 31, !dbg !3729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3731
  br i1 %177, label %166, label %153, !dbg !3731, !llvm.loop !3817

; <label>:178:                                    ; preds = %184
  %179 = add i32 %157, -8, !dbg !3815
  %180 = sub i32 %179, %165, !dbg !3815
  br label %181, !dbg !3818

; <label>:181:                                    ; preds = %178, %156
  %182 = phi i32 [ %157, %156 ], [ %180, %178 ]
  %183 = icmp sgt i32 %182, 0, !dbg !3818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3820
  br i1 %183, label %188, label %217, !dbg !3819

; <label>:184:                                    ; preds = %159, %184
  %185 = phi i32 [ %186, %184 ], [ %157, %159 ]
  tail call fastcc void @eshup8(i16* %0) #6, !dbg !3815
  %186 = add nsw i32 %185, -8, !dbg !3821
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  %187 = icmp sgt i32 %185, 15, !dbg !3813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3814
  br i1 %187, label %184, label %178, !dbg !3814, !llvm.loop !3822

; <label>:188:                                    ; preds = %181, %210
  %189 = phi i32 [ %211, %210 ], [ %182, %181 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3829
  br label %190, !dbg !3829

; <label>:190:                                    ; preds = %205, %188
  %191 = phi i32 [ 2, %188 ], [ %208, %205 ]
  %192 = phi i16 [ 0, %188 ], [ %206, %205 ]
  %193 = phi i16* [ %5, %188 ], [ %207, %205 ]
  %194 = load i16, i16* %193, align 2, !dbg !3830, !tbaa !533
  %195 = icmp slt i16 %194, 0, !dbg !3831
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3832
  br i1 %195, label %196, label %198, !dbg !3832

; <label>:196:                                    ; preds = %190
  %197 = or i16 %192, 1, !dbg !3833
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3834
  br label %198, !dbg !3834

; <label>:198:                                    ; preds = %196, %190
  %199 = phi i16 [ %197, %196 ], [ %192, %190 ], !dbg !3835
  %200 = shl i16 %194, 1, !dbg !3836
  store i16 %200, i16* %193, align 2, !dbg !3836, !tbaa !533
  %201 = and i16 %199, 2, !dbg !3837
  %202 = icmp eq i16 %201, 0, !dbg !3837
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3838
  br i1 %202, label %205, label %203, !dbg !3838

; <label>:203:                                    ; preds = %198
  %204 = or i16 %200, 1, !dbg !3839
  store i16 %204, i16* %193, align 2, !dbg !3839, !tbaa !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3840
  br label %205, !dbg !3840

; <label>:205:                                    ; preds = %203, %198
  %206 = shl i16 %199, 1, !dbg !3841
  %207 = getelementptr inbounds i16, i16* %193, i64 -1, !dbg !3842
  %208 = add nuw nsw i32 %191, 1, !dbg !3843
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3829
  %209 = icmp eq i32 %208, 13, !dbg !3845
  br i1 %209, label %210, label %190, !dbg !3829, !llvm.loop !968

; <label>:210:                                    ; preds = %205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3846
  %211 = add nsw i32 %189, -1, !dbg !3847
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  %212 = icmp sgt i32 %189, 1, !dbg !3818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3820
  br i1 %212, label %188, label %217, !dbg !3819, !llvm.loop !3848

; <label>:213:                                    ; preds = %149, %109
  %214 = phi i16 [ %111, %109 ], [ %150, %149 ], !dbg !3850
  %215 = icmp eq i16 %214, 0, !dbg !3851
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3853
  br i1 %215, label %217, label %216, !dbg !3853

; <label>:216:                                    ; preds = %213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3854
  br label %217, !dbg !3854

; <label>:217:                                    ; preds = %210, %216, %213, %181, %2
  %218 = phi i32 [ 0, %2 ], [ 1, %216 ], [ 0, %213 ], [ 0, %181 ], [ 0, %210 ], !dbg !3820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !3856
  ret i32 %218, !dbg !3856
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nobuiltin noredzone nounwind }
attributes #6 = { nobuiltin noredzone }

!llvm.module.flags = !{!52, !53, !54}
!llvm.ident = !{!55}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "etens", scope: !2, file: !3, line: 2630, type: !47, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !13)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/ldtoa.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{}
!5 = !{!6, !8, !9, !7, !10, !11, !12}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!11 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!12 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!13 = !{!14, !20, !25, !30, !0, !35, !40, !45, !50}
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "nan113", scope: !2, file: !3, line: 3786, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 128, elements: !18)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!18 = !{!19}
!19 = !DISubrange(count: 8)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "nan64", scope: !2, file: !3, line: 3787, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 96, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 6)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "nan53", scope: !2, file: !3, line: 3788, type: !27, isLocal: true, isDefinition: true)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 64, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 4)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "nan24", scope: !2, file: !3, line: 3789, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 2)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "eone", scope: !2, file: !3, line: 119, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 160, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 10)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "bmask", scope: !2, file: !3, line: 3657, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 272, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 17)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(name: "emtens", scope: !2, file: !3, line: 2659, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2080, elements: !48)
!48 = !{!49, !39}
!49 = !DISubrange(count: 13)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(name: "ezero", scope: !2, file: !3, line: 114, type: !37, isLocal: true, isDefinition: true)
!52 = !{i32 2, !"Dwarf Version", i32 4}
!53 = !{i32 2, !"Debug Info Version", i32 3}
!54 = !{i32 1, !"wchar_size", i32 4}
!55 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!56 = distinct !DISubprogram(name: "_ldtoa_r", scope: !3, file: !3, line: 2780, type: !57, isLocal: false, isDefinition: true, scopeLine: 2782, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !329)
!57 = !DISubroutineType(types: !58)
!58 = !{!6, !59, !326, !8, !8, !327, !327, !328}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !61, line: 569, size: 14912, elements: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !{!63, !64, !140, !141, !142, !143, !147, !148, !210, !211, !215, !227, !228, !229, !231, !232, !233, !292, !311, !312, !317, !324}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !60, file: !61, line: 571, baseType: !8, size: 32)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !60, file: !61, line: 576, baseType: !65, size: 64, offset: 64)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !61, line: 287, baseType: !67)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !61, line: 181, size: 1408, elements: !68)
!68 = !{!69, !72, !73, !74, !76, !77, !82, !83, !85, !91, !97, !102, !106, !107, !108, !109, !113, !117, !118, !119, !121, !122, !126, !139}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !67, file: !61, line: 182, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !67, file: !61, line: 183, baseType: !8, size: 32, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !67, file: !61, line: 184, baseType: !8, size: 32, offset: 96)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !67, file: !61, line: 185, baseType: !75, size: 16, offset: 128)
!75 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !67, file: !61, line: 186, baseType: !75, size: 16, offset: 144)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !67, file: !61, line: 187, baseType: !78, size: 128, offset: 192)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !61, line: 117, size: 128, elements: !79)
!79 = !{!80, !81}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !78, file: !61, line: 118, baseType: !70, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !78, file: !61, line: 119, baseType: !8, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !67, file: !61, line: 188, baseType: !8, size: 32, offset: 320)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !67, file: !61, line: 195, baseType: !84, size: 64, offset: 384)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !67, file: !61, line: 197, baseType: !86, size: 64, offset: 448)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DISubroutineType(types: !88)
!88 = !{!89, !59, !84, !6, !8}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !90, line: 145, baseType: !12)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!91 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !67, file: !61, line: 199, baseType: !92, size: 64, offset: 512)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!89, !59, !84, !95, !8}
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !67, file: !61, line: 202, baseType: !98, size: 64, offset: 576)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{!101, !59, !84, !101, !8}
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !90, line: 114, baseType: !12)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !67, file: !61, line: 203, baseType: !103, size: 64, offset: 640)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!8, !59, !84}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !67, file: !61, line: 206, baseType: !78, size: 128, offset: 704)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !67, file: !61, line: 207, baseType: !70, size: 64, offset: 832)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !67, file: !61, line: 208, baseType: !8, size: 32, offset: 896)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !67, file: !61, line: 211, baseType: !110, size: 24, offset: 928)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 24, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 3)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !67, file: !61, line: 212, baseType: !114, size: 8, offset: 952)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 8, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 1)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !67, file: !61, line: 215, baseType: !78, size: 128, offset: 960)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !67, file: !61, line: 218, baseType: !8, size: 32, offset: 1088)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !67, file: !61, line: 219, baseType: !120, size: 64, offset: 1152)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !90, line: 44, baseType: !12)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !67, file: !61, line: 222, baseType: !59, size: 64, offset: 1216)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !67, file: !61, line: 226, baseType: !123, size: 32, offset: 1280)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !90, line: 175, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !125, line: 12, baseType: !8)
!125 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!126 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !67, file: !61, line: 228, baseType: !127, size: 64, offset: 1312)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !90, line: 171, baseType: !128)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !90, line: 163, size: 64, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !128, file: !90, line: 165, baseType: !8, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !128, file: !90, line: 170, baseType: !132, size: 32, offset: 32)
!132 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !128, file: !90, line: 166, size: 32, elements: !133)
!133 = !{!134, !137}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !132, file: !90, line: 168, baseType: !135, size: 32)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !136, line: 124, baseType: !9)
!136 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !132, file: !90, line: 169, baseType: !138, size: 32)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !71, size: 32, elements: !28)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !67, file: !61, line: 229, baseType: !8, size: 32, offset: 1376)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !60, file: !61, line: 576, baseType: !65, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !60, file: !61, line: 576, baseType: !65, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !60, file: !61, line: 578, baseType: !8, size: 32, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !60, file: !61, line: 579, baseType: !144, size: 200, offset: 288)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 200, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 25)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !60, file: !61, line: 582, baseType: !8, size: 32, offset: 512)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !60, file: !61, line: 583, baseType: !149, size: 64, offset: 576)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !151, line: 178, size: 3392, elements: !152)
!151 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!152 = !{!153, !158, !166, !174, !175, !176, !204, !206, !209}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !150, file: !151, line: 180, baseType: !154, size: 1792)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1792, elements: !155)
!155 = !{!156, !157}
!156 = !DISubrange(count: 7)
!157 = !DISubrange(count: 32)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !150, file: !151, line: 181, baseType: !159, size: 64, offset: 1792)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!8, !59, !6, !162, !163}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !136, line: 83, baseType: !8)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !165, line: 86, baseType: !127)
!165 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!166 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !150, file: !151, line: 183, baseType: !167, size: 64, offset: 1856)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!8, !59, !170, !95, !171, !163}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !172, line: 40, baseType: !173)
!172 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !90, line: 129, baseType: !10)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !150, file: !151, line: 185, baseType: !8, size: 32, offset: 1920)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !150, file: !151, line: 186, baseType: !6, size: 64, offset: 1984)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !150, file: !151, line: 187, baseType: !177, size: 768, offset: 2048)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !178, line: 42, size: 768, elements: !179)
!178 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!179 = !{!180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !177, file: !178, line: 44, baseType: !6, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !177, file: !178, line: 45, baseType: !6, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !177, file: !178, line: 46, baseType: !6, size: 64, offset: 128)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !177, file: !178, line: 47, baseType: !6, size: 64, offset: 192)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !177, file: !178, line: 48, baseType: !6, size: 64, offset: 256)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !177, file: !178, line: 49, baseType: !6, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !177, file: !178, line: 50, baseType: !6, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !177, file: !178, line: 51, baseType: !6, size: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !177, file: !178, line: 52, baseType: !6, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !177, file: !178, line: 53, baseType: !6, size: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !177, file: !178, line: 54, baseType: !7, size: 8, offset: 640)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !177, file: !178, line: 55, baseType: !7, size: 8, offset: 648)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !177, file: !178, line: 56, baseType: !7, size: 8, offset: 656)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !177, file: !178, line: 57, baseType: !7, size: 8, offset: 664)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !177, file: !178, line: 58, baseType: !7, size: 8, offset: 672)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !177, file: !178, line: 59, baseType: !7, size: 8, offset: 680)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !177, file: !178, line: 60, baseType: !7, size: 8, offset: 688)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !177, file: !178, line: 61, baseType: !7, size: 8, offset: 696)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !177, file: !178, line: 62, baseType: !7, size: 8, offset: 704)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !177, file: !178, line: 63, baseType: !7, size: 8, offset: 712)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !177, file: !178, line: 64, baseType: !7, size: 8, offset: 720)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !177, file: !178, line: 65, baseType: !7, size: 8, offset: 728)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !177, file: !178, line: 66, baseType: !7, size: 8, offset: 736)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !177, file: !178, line: 67, baseType: !7, size: 8, offset: 744)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !150, file: !151, line: 189, baseType: !205, size: 16, offset: 2816)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 16, elements: !33)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !150, file: !151, line: 190, baseType: !207, size: 256, offset: 2832)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 256, elements: !208)
!208 = !{!157}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !150, file: !151, line: 191, baseType: !207, size: 256, offset: 3088)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !60, file: !61, line: 585, baseType: !8, size: 32, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !60, file: !61, line: 587, baseType: !212, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !59}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !60, file: !61, line: 590, baseType: !216, size: 64, offset: 768)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !61, line: 47, size: 256, elements: !218)
!218 = !{!219, !220, !221, !222, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !217, file: !61, line: 49, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !217, file: !61, line: 50, baseType: !8, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !217, file: !61, line: 50, baseType: !8, size: 32, offset: 96)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !217, file: !61, line: 50, baseType: !8, size: 32, offset: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !217, file: !61, line: 50, baseType: !8, size: 32, offset: 160)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !217, file: !61, line: 51, baseType: !225, size: 32, offset: 192)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !226, size: 32, elements: !115)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !61, line: 25, baseType: !9)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !60, file: !61, line: 591, baseType: !8, size: 32, offset: 832)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !60, file: !61, line: 592, baseType: !216, size: 64, offset: 896)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !60, file: !61, line: 593, baseType: !230, size: 64, offset: 960)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !60, file: !61, line: 596, baseType: !8, size: 32, offset: 1024)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !60, file: !61, line: 597, baseType: !6, size: 64, offset: 1088)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !60, file: !61, line: 632, baseType: !234, size: 2880, offset: 1152)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !60, file: !61, line: 599, size: 2880, elements: !235)
!235 = !{!236, !283}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !234, file: !61, line: 622, baseType: !237, size: 1728)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !234, file: !61, line: 601, size: 1728, elements: !238)
!238 = !{!239, !240, !241, !245, !257, !258, !260, !267, !268, !269, !270, !272, !276, !277, !278, !279, !280, !281, !282}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !237, file: !61, line: 603, baseType: !9, size: 32)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !237, file: !61, line: 604, baseType: !6, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !237, file: !61, line: 605, baseType: !242, size: 208, offset: 128)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 208, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 26)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !237, file: !61, line: 606, baseType: !246, size: 288, offset: 352)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !61, line: 55, size: 288, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !255, !256}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !246, file: !61, line: 57, baseType: !8, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !246, file: !61, line: 58, baseType: !8, size: 32, offset: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !246, file: !61, line: 59, baseType: !8, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !246, file: !61, line: 60, baseType: !8, size: 32, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !246, file: !61, line: 61, baseType: !8, size: 32, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !246, file: !61, line: 62, baseType: !8, size: 32, offset: 160)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !246, file: !61, line: 63, baseType: !8, size: 32, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !246, file: !61, line: 64, baseType: !8, size: 32, offset: 224)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !246, file: !61, line: 65, baseType: !8, size: 32, offset: 256)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !237, file: !61, line: 607, baseType: !8, size: 32, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !237, file: !61, line: 608, baseType: !259, size: 64, offset: 704)
!259 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !237, file: !61, line: 609, baseType: !261, size: 112, offset: 768)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !61, line: 319, size: 112, elements: !262)
!262 = !{!263, !265, !266}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !261, file: !61, line: 320, baseType: !264, size: 48)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 48, elements: !111)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !261, file: !61, line: 321, baseType: !264, size: 48, offset: 48)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !261, file: !61, line: 322, baseType: !11, size: 16, offset: 96)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !237, file: !61, line: 610, baseType: !127, size: 64, offset: 896)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !237, file: !61, line: 611, baseType: !127, size: 64, offset: 960)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !237, file: !61, line: 612, baseType: !127, size: 64, offset: 1024)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !237, file: !61, line: 613, baseType: !271, size: 64, offset: 1088)
!271 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !18)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !237, file: !61, line: 614, baseType: !273, size: 192, offset: 1152)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 192, elements: !274)
!274 = !{!275}
!275 = !DISubrange(count: 24)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !237, file: !61, line: 615, baseType: !8, size: 32, offset: 1344)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !237, file: !61, line: 616, baseType: !127, size: 64, offset: 1376)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !237, file: !61, line: 617, baseType: !127, size: 64, offset: 1440)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !237, file: !61, line: 618, baseType: !127, size: 64, offset: 1504)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !237, file: !61, line: 619, baseType: !127, size: 64, offset: 1568)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !237, file: !61, line: 620, baseType: !127, size: 64, offset: 1632)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !237, file: !61, line: 621, baseType: !8, size: 32, offset: 1696)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !234, file: !61, line: 631, baseType: !284, size: 2880)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !234, file: !61, line: 626, size: 2880, elements: !285)
!285 = !{!286, !290}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !284, file: !61, line: 629, baseType: !287, size: 1920)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, size: 1920, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 30)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !284, file: !61, line: 630, baseType: !291, size: 960, offset: 1920)
!291 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 960, elements: !288)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !60, file: !61, line: 636, baseType: !293, size: 64, offset: 4032)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !61, line: 93, size: 6336, elements: !295)
!295 = !{!296, !297, !298, !303}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !294, file: !61, line: 94, baseType: !293, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !294, file: !61, line: 95, baseType: !8, size: 32, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !294, file: !61, line: 97, baseType: !299, size: 2048, offset: 128)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 2048, elements: !208)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !294, file: !61, line: 98, baseType: !304, size: 4160, offset: 2176)
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !61, line: 74, size: 4160, elements: !305)
!305 = !{!306, !308, !309, !310}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !304, file: !61, line: 75, baseType: !307, size: 2048)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !84, size: 2048, elements: !208)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !304, file: !61, line: 76, baseType: !307, size: 2048, offset: 2048)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !304, file: !61, line: 78, baseType: !226, size: 32, offset: 4096)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !304, file: !61, line: 81, baseType: !226, size: 32, offset: 4128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !60, file: !61, line: 637, baseType: !294, size: 6336, offset: 4096)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !60, file: !61, line: 641, baseType: !313, size: 64, offset: 10432)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{null, !8}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !60, file: !61, line: 646, baseType: !318, size: 192, offset: 10496)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !61, line: 291, size: 192, elements: !319)
!319 = !{!320, !322, !323}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !318, file: !61, line: 293, baseType: !321, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !318, file: !61, line: 294, baseType: !8, size: 32, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !318, file: !61, line: 295, baseType: !65, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !60, file: !61, line: 648, baseType: !325, size: 4224, offset: 10688)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !66, size: 4224, elements: !111)
!326 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !340, !341, !342, !343, !344, !345, !346, !360, !362, !363, !367}
!330 = !DILocalVariable(name: "ptr", arg: 1, scope: !56, file: !3, line: 2780, type: !59)
!331 = !DILocalVariable(name: "d", arg: 2, scope: !56, file: !3, line: 2780, type: !326)
!332 = !DILocalVariable(name: "mode", arg: 3, scope: !56, file: !3, line: 2780, type: !8)
!333 = !DILocalVariable(name: "ndigits", arg: 4, scope: !56, file: !3, line: 2780, type: !8)
!334 = !DILocalVariable(name: "decpt", arg: 5, scope: !56, file: !3, line: 2781, type: !327)
!335 = !DILocalVariable(name: "sign", arg: 6, scope: !56, file: !3, line: 2781, type: !327)
!336 = !DILocalVariable(name: "rve", arg: 7, scope: !56, file: !3, line: 2781, type: !328)
!337 = !DILocalVariable(name: "e", scope: !56, file: !3, line: 2783, type: !338)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 208, elements: !339)
!339 = !{!49}
!340 = !DILocalVariable(name: "s", scope: !56, file: !3, line: 2784, type: !6)
!341 = !DILocalVariable(name: "p", scope: !56, file: !3, line: 2784, type: !6)
!342 = !DILocalVariable(name: "i", scope: !56, file: !3, line: 2785, type: !8)
!343 = !DILocalVariable(name: "j", scope: !56, file: !3, line: 2785, type: !8)
!344 = !DILocalVariable(name: "k", scope: !56, file: !3, line: 2785, type: !8)
!345 = !DILocalVariable(name: "orig_ndigits", scope: !56, file: !3, line: 2786, type: !8)
!346 = !DILocalVariable(name: "rnd", scope: !56, file: !3, line: 2787, type: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "LDPARMS", file: !3, line: 62, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 50, size: 640, elements: !349)
!349 = !{!350, !351, !352, !353, !354, !355, !356, !357, !358, !359}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rlast", scope: !348, file: !3, line: 52, baseType: !8, size: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "rndprc", scope: !348, file: !3, line: 53, baseType: !8, size: 32, offset: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rw", scope: !348, file: !3, line: 54, baseType: !8, size: 32, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "re", scope: !348, file: !3, line: 55, baseType: !8, size: 32, offset: 96)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "outexpon", scope: !348, file: !3, line: 56, baseType: !8, size: 32, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rmsk", scope: !348, file: !3, line: 57, baseType: !11, size: 16, offset: 160)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "rmbit", scope: !348, file: !3, line: 58, baseType: !11, size: 16, offset: 176)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rebit", scope: !348, file: !3, line: 59, baseType: !11, size: 16, offset: 192)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rbit", scope: !348, file: !3, line: 60, baseType: !338, size: 208, offset: 208)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "equot", scope: !348, file: !3, line: 61, baseType: !338, size: 208, offset: 416)
!360 = !DILocalVariable(name: "ldp", scope: !56, file: !3, line: 2788, type: !361)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!362 = !DILocalVariable(name: "outstr", scope: !56, file: !3, line: 2789, type: !6)
!363 = !DILocalVariable(name: "outbuf", scope: !56, file: !3, line: 2790, type: !364)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 456, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 57)
!367 = !DILocalVariable(name: "du", scope: !56, file: !3, line: 2791, type: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "uconv", file: !3, line: 89, size: 128, elements: !369)
!369 = !{!370, !371}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pe", scope: !368, file: !3, line: 91, baseType: !11, size: 16)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !368, file: !3, line: 92, baseType: !326, size: 128)
!372 = !DILocalVariable(name: "ai", scope: !373, file: !3, line: 1458, type: !338)
!373 = distinct !DISubprogram(name: "eadd1", scope: !3, file: !3, line: 1455, type: !374, isLocal: true, isDefinition: true, scopeLine: 1457, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !378)
!374 = !DISubroutineType(types: !375)
!375 = !{null, !376, !376, !377, !8, !361}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!378 = !{!379, !380, !381, !382, !383, !372, !384, !385, !386, !387, !388, !389, !390, !391, !392}
!379 = !DILocalVariable(name: "a", arg: 1, scope: !373, file: !3, line: 1455, type: !376)
!380 = !DILocalVariable(name: "b", arg: 2, scope: !373, file: !3, line: 1455, type: !376)
!381 = !DILocalVariable(name: "c", arg: 3, scope: !373, file: !3, line: 1456, type: !377)
!382 = !DILocalVariable(name: "subflg", arg: 4, scope: !373, file: !3, line: 1456, type: !8)
!383 = !DILocalVariable(name: "ldp", arg: 5, scope: !373, file: !3, line: 1456, type: !361)
!384 = !DILocalVariable(name: "bi", scope: !373, file: !3, line: 1458, type: !338)
!385 = !DILocalVariable(name: "ci", scope: !373, file: !3, line: 1458, type: !338)
!386 = !DILocalVariable(name: "i", scope: !373, file: !3, line: 1459, type: !8)
!387 = !DILocalVariable(name: "lost", scope: !373, file: !3, line: 1459, type: !8)
!388 = !DILocalVariable(name: "j", scope: !373, file: !3, line: 1459, type: !8)
!389 = !DILocalVariable(name: "k", scope: !373, file: !3, line: 1459, type: !8)
!390 = !DILocalVariable(name: "lt", scope: !373, file: !3, line: 1460, type: !12)
!391 = !DILocalVariable(name: "lta", scope: !373, file: !3, line: 1460, type: !12)
!392 = !DILocalVariable(name: "ltb", scope: !373, file: !3, line: 1460, type: !12)
!393 = !DILocation(line: 1458, column: 18, scope: !373, inlinedAt: !394)
!394 = distinct !DILocation(line: 1449, column: 3, scope: !395, inlinedAt: !403)
!395 = distinct !DISubprogram(name: "esub", scope: !3, file: !3, line: 1424, type: !396, isLocal: true, isDefinition: true, scopeLine: 1426, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !398)
!396 = !DISubroutineType(types: !397)
!397 = !{null, !376, !376, !377, !361}
!398 = !{!399, !400, !401, !402}
!399 = !DILocalVariable(name: "a", arg: 1, scope: !395, file: !3, line: 1424, type: !376)
!400 = !DILocalVariable(name: "b", arg: 2, scope: !395, file: !3, line: 1424, type: !376)
!401 = !DILocalVariable(name: "c", arg: 3, scope: !395, file: !3, line: 1425, type: !377)
!402 = !DILocalVariable(name: "ldp", arg: 4, scope: !395, file: !3, line: 1425, type: !361)
!403 = distinct !DILocation(line: 3715, column: 8, scope: !404, inlinedAt: !424)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 3714, column: 6)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 3713, column: 8)
!406 = distinct !DILexicalBlock(scope: !407, file: !3, line: 3712, column: 2)
!407 = distinct !DILexicalBlock(scope: !408, file: !3, line: 3711, column: 7)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 3711, column: 7)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 3710, column: 5)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3709, column: 7)
!411 = distinct !DISubprogram(name: "efloor", scope: !3, file: !3, line: 3678, type: !412, isLocal: true, isDefinition: true, scopeLine: 3679, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !414)
!412 = !DISubroutineType(types: !413)
!413 = !{null, !377, !377, !361}
!414 = !{!415, !416, !417, !418, !419, !420, !421, !422}
!415 = !DILocalVariable(name: "x", arg: 1, scope: !411, file: !3, line: 3678, type: !377)
!416 = !DILocalVariable(name: "y", arg: 2, scope: !411, file: !3, line: 3678, type: !377)
!417 = !DILocalVariable(name: "ldp", arg: 3, scope: !411, file: !3, line: 3678, type: !361)
!418 = !DILocalVariable(name: "p", scope: !411, file: !3, line: 3680, type: !377)
!419 = !DILocalVariable(name: "e", scope: !411, file: !3, line: 3681, type: !8)
!420 = !DILocalVariable(name: "expon", scope: !411, file: !3, line: 3681, type: !8)
!421 = !DILocalVariable(name: "i", scope: !411, file: !3, line: 3681, type: !8)
!422 = !DILocalVariable(name: "f", scope: !411, file: !3, line: 3682, type: !423)
!423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 160, elements: !38)
!424 = distinct !DILocation(line: 3058, column: 4, scope: !425, inlinedAt: !456)
!425 = distinct !DILexicalBlock(scope: !426, file: !3, line: 3056, column: 2)
!426 = distinct !DILexicalBlock(scope: !427, file: !3, line: 3048, column: 5)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3047, column: 7)
!428 = distinct !DISubprogram(name: "etoasc", scope: !3, file: !3, line: 2971, type: !429, isLocal: true, isDefinition: true, scopeLine: 2973, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !431)
!429 = !DISubroutineType(types: !430)
!430 = !{null, !377, !6, !8, !8, !361}
!431 = !{!432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !453, !454, !455}
!432 = !DILocalVariable(name: "x", arg: 1, scope: !428, file: !3, line: 2971, type: !377)
!433 = !DILocalVariable(name: "string", arg: 2, scope: !428, file: !3, line: 2971, type: !6)
!434 = !DILocalVariable(name: "ndigits", arg: 3, scope: !428, file: !3, line: 2971, type: !8)
!435 = !DILocalVariable(name: "outformat", arg: 4, scope: !428, file: !3, line: 2971, type: !8)
!436 = !DILocalVariable(name: "ldp", arg: 5, scope: !428, file: !3, line: 2972, type: !361)
!437 = !DILocalVariable(name: "digit", scope: !428, file: !3, line: 2974, type: !12)
!438 = !DILocalVariable(name: "y", scope: !428, file: !3, line: 2975, type: !338)
!439 = !DILocalVariable(name: "t", scope: !428, file: !3, line: 2975, type: !338)
!440 = !DILocalVariable(name: "u", scope: !428, file: !3, line: 2975, type: !338)
!441 = !DILocalVariable(name: "w", scope: !428, file: !3, line: 2975, type: !338)
!442 = !DILocalVariable(name: "p", scope: !428, file: !3, line: 2976, type: !376)
!443 = !DILocalVariable(name: "r", scope: !428, file: !3, line: 2976, type: !376)
!444 = !DILocalVariable(name: "ten", scope: !428, file: !3, line: 2976, type: !376)
!445 = !DILocalVariable(name: "sign", scope: !428, file: !3, line: 2977, type: !11)
!446 = !DILocalVariable(name: "i", scope: !428, file: !3, line: 2978, type: !8)
!447 = !DILocalVariable(name: "j", scope: !428, file: !3, line: 2978, type: !8)
!448 = !DILocalVariable(name: "k", scope: !428, file: !3, line: 2978, type: !8)
!449 = !DILocalVariable(name: "expon", scope: !428, file: !3, line: 2978, type: !8)
!450 = !DILocalVariable(name: "rndsav", scope: !428, file: !3, line: 2978, type: !8)
!451 = !DILocalVariable(name: "ndigs", scope: !428, file: !3, line: 2978, type: !8)
!452 = !DILocalVariable(name: "s", scope: !428, file: !3, line: 2979, type: !6)
!453 = !DILocalVariable(name: "ss", scope: !428, file: !3, line: 2979, type: !6)
!454 = !DILocalVariable(name: "m", scope: !428, file: !3, line: 2980, type: !11)
!455 = !DILocalVariable(name: "equot", scope: !428, file: !3, line: 2981, type: !377)
!456 = distinct !DILocation(line: 2837, column: 3, scope: !56)
!457 = !DILocation(line: 1458, column: 26, scope: !373, inlinedAt: !394)
!458 = !DILocation(line: 2975, column: 18, scope: !428, inlinedAt: !456)
!459 = !DILocation(line: 2975, column: 25, scope: !428, inlinedAt: !456)
!460 = !DILocation(line: 2975, column: 32, scope: !428, inlinedAt: !456)
!461 = !DILocation(line: 2975, column: 39, scope: !428, inlinedAt: !456)
!462 = !DILocation(line: 2780, column: 26, scope: !56)
!463 = !DILocation(line: 2780, column: 43, scope: !56)
!464 = !DILocation(line: 2780, column: 50, scope: !56)
!465 = !DILocation(line: 2780, column: 60, scope: !56)
!466 = !DILocation(line: 2781, column: 9, scope: !56)
!467 = !DILocation(line: 2781, column: 21, scope: !56)
!468 = !DILocation(line: 2781, column: 34, scope: !56)
!469 = !DILocation(line: 2783, column: 3, scope: !56)
!470 = !DILocation(line: 2783, column: 18, scope: !56)
!471 = !DILocation(line: 2787, column: 3, scope: !56)
!472 = !DILocation(line: 2788, column: 12, scope: !56)
!473 = !DILocation(line: 2790, column: 3, scope: !56)
!474 = !DILocation(line: 2790, column: 8, scope: !56)
!475 = !DILocation(line: 2791, column: 3, scope: !56)
!476 = !DILocation(line: 2792, column: 6, scope: !56)
!477 = !DILocation(line: 2792, column: 8, scope: !56)
!478 = !{!479, !479, i64 0}
!479 = !{!"omnipotent char", !480, i64 0}
!480 = !{!"Simple C/C++ TBAA"}
!481 = !DILocation(line: 2786, column: 7, scope: !56)
!482 = !DILocation(line: 2795, column: 7, scope: !56)
!483 = !DILocation(line: 2795, column: 13, scope: !56)
!484 = !{!485, !486, i64 0}
!485 = !{!"", !486, i64 0, !486, i64 4, !486, i64 8, !486, i64 12, !486, i64 16, !487, i64 20, !487, i64 22, !487, i64 24, !479, i64 26, !479, i64 52}
!486 = !{!"int", !479, i64 0}
!487 = !{!"short", !479, i64 0}
!488 = !DILocation(line: 2796, column: 7, scope: !56)
!489 = !DILocation(line: 2796, column: 14, scope: !56)
!490 = !{!485, !486, i64 4}
!491 = !DILocation(line: 2801, column: 7, scope: !492)
!492 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2801, column: 7)
!493 = !{!494, !495, i64 96}
!494 = !{!"_reent", !486, i64 0, !495, i64 8, !495, i64 16, !495, i64 24, !486, i64 32, !479, i64 36, !486, i64 64, !495, i64 72, !486, i64 80, !495, i64 88, !495, i64 96, !486, i64 104, !495, i64 112, !495, i64 120, !486, i64 128, !495, i64 136, !479, i64 144, !495, i64 504, !496, i64 512, !495, i64 1304, !498, i64 1312, !479, i64 1336}
!495 = !{!"any pointer", !479, i64 0}
!496 = !{!"_atexit", !495, i64 0, !486, i64 8, !479, i64 16, !497, i64 272}
!497 = !{!"_on_exit_args", !479, i64 0, !479, i64 256, !486, i64 512, !486, i64 516}
!498 = !{!"_glue", !495, i64 0, !486, i64 8, !495, i64 16}
!499 = !DILocation(line: 2801, column: 7, scope: !56)
!500 = !DILocation(line: 2803, column: 36, scope: !501)
!501 = distinct !DILexicalBlock(scope: !492, file: !3, line: 2802, column: 5)
!502 = !{!494, !486, i64 104}
!503 = !DILocation(line: 2803, column: 31, scope: !501)
!504 = !DILocation(line: 2803, column: 34, scope: !501)
!505 = !{!506, !486, i64 8}
!506 = !{!"_Bigint", !495, i64 0, !486, i64 8, !486, i64 12, !486, i64 16, !486, i64 20, !479, i64 24}
!507 = !DILocation(line: 2804, column: 43, scope: !501)
!508 = !DILocation(line: 2804, column: 31, scope: !501)
!509 = !DILocation(line: 2804, column: 39, scope: !501)
!510 = !{!506, !486, i64 12}
!511 = !DILocation(line: 2805, column: 7, scope: !501)
!512 = !DILocation(line: 2806, column: 30, scope: !501)
!513 = !DILocation(line: 2807, column: 5, scope: !501)
!514 = !DILocation(line: 2814, column: 15, scope: !56)
!515 = !DILocation(line: 2814, column: 19, scope: !56)
!516 = !DILocation(line: 2814, column: 3, scope: !56)
!517 = !DILocalVariable(name: "x", arg: 1, scope: !518, file: !3, line: 509, type: !376)
!518 = distinct !DISubprogram(name: "eisneg", scope: !3, file: !3, line: 509, type: !519, isLocal: true, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!8, !376}
!521 = !{!517}
!522 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !523)
!523 = distinct !DILocation(line: 2819, column: 7, scope: !524)
!524 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2819, column: 7)
!525 = !DILocation(line: 513, column: 7, scope: !526, inlinedAt: !523)
!526 = distinct !DILexicalBlock(scope: !518, file: !3, line: 513, column: 7)
!527 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !523)
!528 = !DILocation(line: 514, column: 5, scope: !526, inlinedAt: !523)
!529 = !DILocation(line: 520, column: 1, scope: !518, inlinedAt: !523)
!530 = !DILocation(line: 2819, column: 7, scope: !56)
!531 = !DILocation(line: 516, column: 7, scope: !532, inlinedAt: !523)
!532 = distinct !DILexicalBlock(scope: !518, file: !3, line: 516, column: 7)
!533 = !{!487, !487, i64 0}
!534 = !DILocation(line: 516, column: 7, scope: !518, inlinedAt: !523)
!535 = !DILocation(line: 0, scope: !532, inlinedAt: !523)
!536 = !DILocation(line: 2819, column: 7, scope: !524)
!537 = !DILocation(line: 0, scope: !524)
!538 = !{!486, !486, i64 0}
!539 = !DILocation(line: 2824, column: 12, scope: !540)
!540 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2824, column: 7)
!541 = !DILocation(line: 2824, column: 7, scope: !56)
!542 = !DILocation(line: 2829, column: 7, scope: !56)
!543 = !DILocation(line: 2825, column: 13, scope: !540)
!544 = !DILocation(line: 2825, column: 5, scope: !540)
!545 = !DILocation(line: 2829, column: 12, scope: !546)
!546 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2829, column: 7)
!547 = !DILocation(line: 2830, column: 5, scope: !546)
!548 = !DILocation(line: 2834, column: 7, scope: !56)
!549 = !DILocation(line: 0, scope: !540)
!550 = !DILocation(line: 2834, column: 15, scope: !551)
!551 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2834, column: 7)
!552 = !DILocation(line: 0, scope: !551)
!553 = !DILocation(line: 2975, column: 3, scope: !428, inlinedAt: !456)
!554 = !DILocation(line: 0, scope: !546)
!555 = !DILocation(line: 2787, column: 11, scope: !56)
!556 = !DILocation(line: 2971, column: 29, scope: !428, inlinedAt: !456)
!557 = !DILocation(line: 2971, column: 38, scope: !428, inlinedAt: !456)
!558 = !DILocation(line: 2971, column: 50, scope: !428, inlinedAt: !456)
!559 = !DILocation(line: 2971, column: 63, scope: !428, inlinedAt: !456)
!560 = !DILocation(line: 2972, column: 12, scope: !428, inlinedAt: !456)
!561 = !DILocation(line: 2981, column: 19, scope: !428, inlinedAt: !456)
!562 = !DILocation(line: 2978, column: 31, scope: !428, inlinedAt: !456)
!563 = !DILocation(line: 2984, column: 17, scope: !428, inlinedAt: !456)
!564 = !DILocation(line: 2978, column: 23, scope: !428, inlinedAt: !456)
!565 = !DILocation(line: 2986, column: 7, scope: !566, inlinedAt: !456)
!566 = distinct !DILexicalBlock(scope: !428, file: !3, line: 2986, column: 7)
!567 = !DILocation(line: 2986, column: 7, scope: !428, inlinedAt: !456)
!568 = !DILocation(line: 2988, column: 7, scope: !569, inlinedAt: !456)
!569 = distinct !DILexicalBlock(scope: !566, file: !3, line: 2987, column: 5)
!570 = !DILocation(line: 2978, column: 16, scope: !428, inlinedAt: !456)
!571 = !DILocation(line: 2990, column: 7, scope: !569, inlinedAt: !456)
!572 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !577)
!573 = distinct !DILexicalBlock(scope: !574, file: !3, line: 530, column: 7)
!574 = distinct !DISubprogram(name: "eisinf", scope: !3, file: !3, line: 527, type: !519, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !575)
!575 = !{!576}
!576 = !DILocalVariable(name: "x", arg: 1, scope: !574, file: !3, line: 527, type: !376)
!577 = distinct !DILocation(line: 2839, column: 7, scope: !578)
!578 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2839, column: 7)
!579 = !DILocation(line: 2993, column: 15, scope: !428, inlinedAt: !456)
!580 = !DILocation(line: 2994, column: 12, scope: !428, inlinedAt: !456)
!581 = !DILocalVariable(name: "a", arg: 1, scope: !582, file: !3, line: 476, type: !376)
!582 = distinct !DISubprogram(name: "emov", scope: !3, file: !3, line: 476, type: !583, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !585)
!583 = !DISubroutineType(types: !584)
!584 = !{null, !376, !377}
!585 = !{!581, !586, !587}
!586 = !DILocalVariable(name: "b", arg: 2, scope: !582, file: !3, line: 476, type: !377)
!587 = !DILocalVariable(name: "i", scope: !582, file: !3, line: 478, type: !8)
!588 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !589)
!589 = distinct !DILocation(line: 2994, column: 3, scope: !428, inlinedAt: !456)
!590 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !589)
!591 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !589)
!592 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !589)
!593 = distinct !DILexicalBlock(scope: !582, file: !3, line: 480, column: 3)
!594 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !589)
!595 = !DILocation(line: 481, column: 14, scope: !596, inlinedAt: !589)
!596 = distinct !DILexicalBlock(scope: !593, file: !3, line: 480, column: 3)
!597 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !589)
!598 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !589)
!599 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !589)
!600 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !589)
!601 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !589)
!602 = !DILocation(line: 2995, column: 17, scope: !603, inlinedAt: !456)
!603 = distinct !DILexicalBlock(scope: !428, file: !3, line: 2995, column: 7)
!604 = !DILocation(line: 2995, column: 7, scope: !428, inlinedAt: !456)
!605 = !DILocation(line: 2977, column: 18, scope: !428, inlinedAt: !456)
!606 = !DILocation(line: 2998, column: 17, scope: !607, inlinedAt: !456)
!607 = distinct !DILexicalBlock(scope: !603, file: !3, line: 2996, column: 5)
!608 = !DILocation(line: 2999, column: 5, scope: !607, inlinedAt: !456)
!609 = !DILocation(line: 3008, column: 7, scope: !610, inlinedAt: !456)
!610 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3008, column: 7)
!611 = !DILocation(line: 0, scope: !612, inlinedAt: !456)
!612 = distinct !DILexicalBlock(scope: !603, file: !3, line: 3001, column: 5)
!613 = !DILocation(line: 2976, column: 34, scope: !428, inlinedAt: !456)
!614 = !DILocation(line: 3006, column: 15, scope: !428, inlinedAt: !456)
!615 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !616)
!616 = distinct !DILocation(line: 3006, column: 3, scope: !428, inlinedAt: !456)
!617 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !616)
!618 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !616)
!619 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !616)
!620 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !616)
!621 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !616)
!622 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !616)
!623 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !616)
!624 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !616)
!625 = !DILocation(line: 3008, column: 17, scope: !610, inlinedAt: !456)
!626 = !DILocation(line: 3008, column: 7, scope: !428, inlinedAt: !456)
!627 = !DILocation(line: 2978, column: 13, scope: !428, inlinedAt: !456)
!628 = !DILocation(line: 3010, column: 12, scope: !629, inlinedAt: !456)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 3010, column: 7)
!630 = distinct !DILexicalBlock(scope: !610, file: !3, line: 3009, column: 5)
!631 = !DILocation(line: 3010, column: 7, scope: !629, inlinedAt: !456)
!632 = !DILocation(line: 3012, column: 13, scope: !633, inlinedAt: !456)
!633 = distinct !DILexicalBlock(scope: !634, file: !3, line: 3012, column: 8)
!634 = distinct !DILexicalBlock(scope: !635, file: !3, line: 3011, column: 2)
!635 = distinct !DILexicalBlock(scope: !629, file: !3, line: 3010, column: 7)
!636 = !DILocation(line: 3012, column: 8, scope: !634, inlinedAt: !456)
!637 = !DILocation(line: 3010, column: 7, scope: !635, inlinedAt: !456)
!638 = !DILocation(line: 3021, column: 7, scope: !428, inlinedAt: !456)
!639 = !DILocation(line: 3034, column: 24, scope: !640, inlinedAt: !456)
!640 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3034, column: 7)
!641 = !DILocation(line: 3021, column: 17, scope: !642, inlinedAt: !456)
!642 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3021, column: 7)
!643 = !DILocation(line: 3023, column: 11, scope: !644, inlinedAt: !456)
!644 = distinct !DILexicalBlock(scope: !645, file: !3, line: 3023, column: 11)
!645 = distinct !DILexicalBlock(scope: !642, file: !3, line: 3022, column: 5)
!646 = !DILocation(line: 3023, column: 11, scope: !645, inlinedAt: !456)
!647 = !DILocation(line: 3024, column: 2, scope: !644, inlinedAt: !456)
!648 = !DILocation(line: 3026, column: 2, scope: !644, inlinedAt: !456)
!649 = !DILocation(line: 3028, column: 7, scope: !645, inlinedAt: !456)
!650 = !DILocation(line: 3034, column: 49, scope: !640, inlinedAt: !456)
!651 = !DILocation(line: 3034, column: 7, scope: !428, inlinedAt: !456)
!652 = !DILocation(line: 3037, column: 7, scope: !653, inlinedAt: !456)
!653 = distinct !DILexicalBlock(scope: !640, file: !3, line: 3035, column: 5)
!654 = !DILocation(line: 3039, column: 7, scope: !653, inlinedAt: !456)
!655 = !DILocation(line: 3043, column: 7, scope: !428, inlinedAt: !456)
!656 = !DILocation(line: 2978, column: 7, scope: !428, inlinedAt: !456)
!657 = !DILocation(line: 3044, column: 9, scope: !658, inlinedAt: !456)
!658 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3044, column: 7)
!659 = !DILocation(line: 3044, column: 7, scope: !428, inlinedAt: !456)
!660 = !DILocation(line: 3047, column: 9, scope: !427, inlinedAt: !456)
!661 = !DILocation(line: 3047, column: 7, scope: !428, inlinedAt: !456)
!662 = !DILocation(line: 3050, column: 16, scope: !426, inlinedAt: !456)
!663 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !664)
!664 = distinct !DILocation(line: 3050, column: 7, scope: !426, inlinedAt: !456)
!665 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !664)
!666 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !664)
!667 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !664)
!668 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !664)
!669 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !664)
!670 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !664)
!671 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !664)
!672 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !664)
!673 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !664)
!674 = !DILocation(line: 3051, column: 17, scope: !426, inlinedAt: !456)
!675 = !DILocation(line: 2976, column: 26, scope: !428, inlinedAt: !456)
!676 = !DILocation(line: 2980, column: 18, scope: !428, inlinedAt: !456)
!677 = !DILocation(line: 3055, column: 7, scope: !426, inlinedAt: !456)
!678 = !DILocation(line: 3004, column: 9, scope: !428, inlinedAt: !456)
!679 = !DILocation(line: 0, scope: !425, inlinedAt: !456)
!680 = !DILocation(line: 3057, column: 4, scope: !425, inlinedAt: !456)
!681 = !DILocation(line: 3678, column: 29, scope: !411, inlinedAt: !424)
!682 = !DILocation(line: 3678, column: 52, scope: !411, inlinedAt: !424)
!683 = !DILocation(line: 3678, column: 65, scope: !411, inlinedAt: !424)
!684 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !685)
!685 = distinct !DILocation(line: 3684, column: 3, scope: !411, inlinedAt: !424)
!686 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !685)
!687 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !685)
!688 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !685)
!689 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !685)
!690 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !685)
!691 = !DILocation(line: 3682, column: 18, scope: !411, inlinedAt: !424)
!692 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !685)
!693 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !685)
!694 = !DILocation(line: 3686, column: 14, scope: !411, inlinedAt: !424)
!695 = !DILocation(line: 3687, column: 9, scope: !696, inlinedAt: !424)
!696 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3687, column: 7)
!697 = !DILocation(line: 3687, column: 7, scope: !411, inlinedAt: !424)
!698 = !DILocalVariable(name: "x", arg: 1, scope: !699, file: !3, line: 460, type: !377)
!699 = distinct !DISubprogram(name: "eclear", scope: !3, file: !3, line: 460, type: !700, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !702)
!700 = !DISubroutineType(types: !701)
!701 = !{null, !377}
!702 = !{!698, !703}
!703 = !DILocalVariable(name: "i", scope: !699, file: !3, line: 462, type: !8)
!704 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !705)
!705 = distinct !DILocation(line: 3689, column: 7, scope: !706, inlinedAt: !424)
!706 = distinct !DILexicalBlock(scope: !696, file: !3, line: 3688, column: 5)
!707 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !705)
!708 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !705)
!709 = distinct !DILexicalBlock(scope: !699, file: !3, line: 464, column: 3)
!710 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !705)
!711 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !705)
!712 = distinct !DILexicalBlock(scope: !709, file: !3, line: 464, column: 3)
!713 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !705)
!714 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !705)
!715 = !DILocation(line: 3690, column: 7, scope: !706, inlinedAt: !424)
!716 = !DILocation(line: 3681, column: 7, scope: !411, inlinedAt: !424)
!717 = !DILocation(line: 3693, column: 13, scope: !411, inlinedAt: !424)
!718 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !719)
!719 = distinct !DILocation(line: 3694, column: 3, scope: !411, inlinedAt: !424)
!720 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !719)
!721 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !719)
!722 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !719)
!723 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !719)
!724 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !719)
!725 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !719)
!726 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !719)
!727 = !DILocation(line: 3695, column: 9, scope: !728, inlinedAt: !424)
!728 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3695, column: 7)
!729 = !DILocation(line: 3695, column: 7, scope: !411, inlinedAt: !424)
!730 = !DILocation(line: 0, scope: !411, inlinedAt: !424)
!731 = !DILocation(line: 3720, column: 1, scope: !411, inlinedAt: !424)
!732 = !DILocation(line: 2978, column: 10, scope: !428, inlinedAt: !456)
!733 = !DILocation(line: 3059, column: 9, scope: !734, inlinedAt: !456)
!734 = distinct !DILexicalBlock(scope: !425, file: !3, line: 3059, column: 4)
!735 = !DILocation(line: 3059, column: 4, scope: !734, inlinedAt: !456)
!736 = !DILocation(line: 3061, column: 12, scope: !737, inlinedAt: !456)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 3060, column: 6)
!738 = distinct !DILexicalBlock(scope: !734, file: !3, line: 3059, column: 4)
!739 = !DILocation(line: 3059, column: 4, scope: !738, inlinedAt: !456)
!740 = !DILocation(line: 3680, column: 28, scope: !411, inlinedAt: !424)
!741 = !DILocation(line: 3699, column: 12, scope: !411, inlinedAt: !424)
!742 = !DILocation(line: 3699, column: 3, scope: !411, inlinedAt: !424)
!743 = !DILocation(line: 3701, column: 9, scope: !744, inlinedAt: !424)
!744 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3700, column: 5)
!745 = !DILocation(line: 3701, column: 12, scope: !744, inlinedAt: !424)
!746 = !DILocation(line: 3702, column: 9, scope: !744, inlinedAt: !424)
!747 = distinct !{!747, !748}
!748 = !{!"llvm.loop.unroll.disable"}
!749 = distinct !{!749, !750, !751}
!750 = !DILocation(line: 3699, column: 3, scope: !411)
!751 = !DILocation(line: 3703, column: 5, scope: !411)
!752 = !DILocation(line: 3705, column: 6, scope: !411, inlinedAt: !424)
!753 = !DILocation(line: 3705, column: 9, scope: !411, inlinedAt: !424)
!754 = !DILocation(line: 0, scope: !744, inlinedAt: !424)
!755 = !DILocation(line: 3705, column: 3, scope: !411, inlinedAt: !424)
!756 = !DILocation(line: 3709, column: 30, scope: !410, inlinedAt: !424)
!757 = !DILocation(line: 3709, column: 7, scope: !411, inlinedAt: !424)
!758 = !DILocation(line: 3681, column: 17, scope: !411, inlinedAt: !424)
!759 = !DILocation(line: 3711, column: 12, scope: !408, inlinedAt: !424)
!760 = !DILocation(line: 3711, column: 7, scope: !408, inlinedAt: !424)
!761 = !DILocation(line: 3713, column: 16, scope: !405, inlinedAt: !424)
!762 = !DILocation(line: 3713, column: 13, scope: !405, inlinedAt: !424)
!763 = !DILocation(line: 3713, column: 8, scope: !406, inlinedAt: !424)
!764 = !DILocation(line: 1424, column: 64, scope: !395, inlinedAt: !403)
!765 = !DILocation(line: 1425, column: 27, scope: !395, inlinedAt: !403)
!766 = !DILocation(line: 1425, column: 40, scope: !395, inlinedAt: !403)
!767 = !DILocation(line: 1429, column: 7, scope: !768, inlinedAt: !403)
!768 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1429, column: 7)
!769 = !DILocation(line: 1429, column: 7, scope: !395, inlinedAt: !403)
!770 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !771)
!771 = distinct !DILocation(line: 1431, column: 7, scope: !772, inlinedAt: !403)
!772 = distinct !DILexicalBlock(scope: !768, file: !3, line: 1430, column: 5)
!773 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !771)
!774 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !771)
!775 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !771)
!776 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !771)
!777 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !771)
!778 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !771)
!779 = !DILocation(line: 1432, column: 7, scope: !772, inlinedAt: !403)
!780 = !DILocation(line: 1434, column: 7, scope: !781, inlinedAt: !403)
!781 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1434, column: 7)
!782 = !DILocation(line: 1434, column: 7, scope: !395, inlinedAt: !403)
!783 = !DILocation(line: 0, scope: !784, inlinedAt: !403)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 1435, column: 5)
!785 = !DILocation(line: 0, scope: !404, inlinedAt: !424)
!786 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !787)
!787 = distinct !DILocation(line: 1436, column: 7, scope: !784, inlinedAt: !403)
!788 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !787)
!789 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !787)
!790 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !787)
!791 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !787)
!792 = !DILocation(line: 1437, column: 7, scope: !784, inlinedAt: !403)
!793 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !794)
!794 = distinct !DILocation(line: 1442, column: 7, scope: !795, inlinedAt: !403)
!795 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1442, column: 7)
!796 = !DILocation(line: 1455, column: 65, scope: !373, inlinedAt: !394)
!797 = !DILocation(line: 1456, column: 28, scope: !373, inlinedAt: !394)
!798 = !DILocation(line: 1456, column: 35, scope: !373, inlinedAt: !394)
!799 = !DILocation(line: 1456, column: 53, scope: !373, inlinedAt: !394)
!800 = !DILocation(line: 1458, column: 3, scope: !373, inlinedAt: !394)
!801 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !802)
!802 = distinct !DILocation(line: 1463, column: 7, scope: !803, inlinedAt: !394)
!803 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1463, column: 7)
!804 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !802)
!805 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !802)
!806 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !802)
!807 = !DILocation(line: 1463, column: 7, scope: !373, inlinedAt: !394)
!808 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !809)
!809 = distinct !DILocation(line: 1470, column: 7, scope: !810, inlinedAt: !394)
!810 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1470, column: 7)
!811 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !809)
!812 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !809)
!813 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !809)
!814 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !809)
!815 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !809)
!816 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !809)
!817 = !DILocation(line: 1470, column: 7, scope: !373, inlinedAt: !394)
!818 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !809)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 533, column: 11)
!820 = distinct !DILexicalBlock(scope: !573, file: !3, line: 531, column: 5)
!821 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !809)
!822 = !DILocation(line: 0, scope: !819, inlinedAt: !809)
!823 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !824)
!824 = distinct !DILocation(line: 1472, column: 7, scope: !825, inlinedAt: !394)
!825 = distinct !DILexicalBlock(scope: !810, file: !3, line: 1471, column: 5)
!826 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !824)
!827 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !824)
!828 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !824)
!829 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !824)
!830 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !824)
!831 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !824)
!832 = !DILocation(line: 1473, column: 7, scope: !825, inlinedAt: !394)
!833 = !DILocation(line: 1476, column: 3, scope: !373, inlinedAt: !394)
!834 = !DILocation(line: 1477, column: 3, scope: !373, inlinedAt: !394)
!835 = !DILocation(line: 1478, column: 7, scope: !373, inlinedAt: !394)
!836 = !DILocation(line: 1479, column: 14, scope: !837, inlinedAt: !394)
!837 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1478, column: 7)
!838 = !DILocation(line: 1479, column: 13, scope: !837, inlinedAt: !394)
!839 = !DILocation(line: 1479, column: 11, scope: !837, inlinedAt: !394)
!840 = !DILocation(line: 1479, column: 5, scope: !837, inlinedAt: !394)
!841 = !DILocation(line: 1482, column: 9, scope: !373, inlinedAt: !394)
!842 = !DILocation(line: 1460, column: 12, scope: !373, inlinedAt: !394)
!843 = !DILocation(line: 1483, column: 9, scope: !373, inlinedAt: !394)
!844 = !DILocation(line: 1460, column: 17, scope: !373, inlinedAt: !394)
!845 = !DILocation(line: 1484, column: 12, scope: !373, inlinedAt: !394)
!846 = !DILocation(line: 1460, column: 8, scope: !373, inlinedAt: !394)
!847 = !DILocation(line: 1485, column: 10, scope: !848, inlinedAt: !394)
!848 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1485, column: 7)
!849 = !DILocation(line: 1485, column: 7, scope: !373, inlinedAt: !394)
!850 = !DILocalVariable(name: "a", arg: 1, scope: !851, file: !3, line: 727, type: !377)
!851 = distinct !DISubprogram(name: "emovz", scope: !3, file: !3, line: 727, type: !852, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !854)
!852 = !DISubroutineType(types: !853)
!853 = !{null, !377, !377}
!854 = !{!850, !855, !856}
!855 = !DILocalVariable(name: "b", arg: 2, scope: !851, file: !3, line: 727, type: !377)
!856 = !DILocalVariable(name: "i", scope: !851, file: !3, line: 729, type: !8)
!857 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !858)
!858 = distinct !DILocation(line: 1487, column: 7, scope: !859, inlinedAt: !394)
!859 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1486, column: 5)
!860 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !858)
!861 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !858)
!862 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !858)
!863 = distinct !DILexicalBlock(scope: !851, file: !3, line: 731, column: 3)
!864 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !858)
!865 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !858)
!866 = distinct !DILexicalBlock(scope: !863, file: !3, line: 731, column: 3)
!867 = !DILocation(line: 1458, column: 34, scope: !373, inlinedAt: !394)
!868 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !858)
!869 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !858)
!870 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !871)
!871 = distinct !DILocation(line: 1488, column: 7, scope: !859, inlinedAt: !394)
!872 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !871)
!873 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !871)
!874 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !871)
!875 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !871)
!876 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !871)
!877 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !871)
!878 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !871)
!879 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !871)
!880 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !871)
!881 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !882)
!882 = distinct !DILocation(line: 1489, column: 7, scope: !859, inlinedAt: !394)
!883 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !882)
!884 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !882)
!885 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !882)
!886 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !882)
!887 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !882)
!888 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !882)
!889 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !882)
!890 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !882)
!891 = !DILocation(line: 1491, column: 12, scope: !859, inlinedAt: !394)
!892 = !DILocation(line: 1492, column: 5, scope: !859, inlinedAt: !394)
!893 = !DILocation(line: 0, scope: !373, inlinedAt: !394)
!894 = !DILocation(line: 1459, column: 10, scope: !373, inlinedAt: !394)
!895 = !DILocation(line: 1494, column: 10, scope: !896, inlinedAt: !394)
!896 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1494, column: 7)
!897 = !DILocation(line: 1494, column: 7, scope: !373, inlinedAt: !394)
!898 = !DILocation(line: 1496, column: 14, scope: !899, inlinedAt: !394)
!899 = distinct !DILexicalBlock(scope: !900, file: !3, line: 1496, column: 11)
!900 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1495, column: 5)
!901 = !DILocation(line: 1496, column: 11, scope: !900, inlinedAt: !394)
!902 = !DILocation(line: 1498, column: 11, scope: !900, inlinedAt: !394)
!903 = !DILocation(line: 1459, column: 19, scope: !373, inlinedAt: !394)
!904 = !DILocation(line: 1499, column: 14, scope: !900, inlinedAt: !394)
!905 = !DILocation(line: 1500, column: 5, scope: !900, inlinedAt: !394)
!906 = !DILocation(line: 1504, column: 11, scope: !907, inlinedAt: !394)
!907 = distinct !DILexicalBlock(scope: !896, file: !3, line: 1502, column: 5)
!908 = !DILocation(line: 1459, column: 7, scope: !373, inlinedAt: !394)
!909 = !DILocation(line: 1505, column: 13, scope: !910, inlinedAt: !394)
!910 = distinct !DILexicalBlock(scope: !907, file: !3, line: 1505, column: 11)
!911 = !DILocation(line: 1505, column: 11, scope: !907, inlinedAt: !394)
!912 = !DILocation(line: 1508, column: 8, scope: !913, inlinedAt: !394)
!913 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1508, column: 8)
!914 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1506, column: 2)
!915 = !DILocation(line: 1508, column: 17, scope: !913, inlinedAt: !394)
!916 = !DILocation(line: 1508, column: 14, scope: !913, inlinedAt: !394)
!917 = !DILocation(line: 1508, column: 8, scope: !914, inlinedAt: !394)
!918 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !919)
!919 = distinct !DILocation(line: 1510, column: 8, scope: !920, inlinedAt: !394)
!920 = distinct !DILexicalBlock(scope: !913, file: !3, line: 1509, column: 6)
!921 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !919)
!922 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !919)
!923 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !919)
!924 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !919)
!925 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !919)
!926 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !919)
!927 = !DILocation(line: 1511, column: 8, scope: !920, inlinedAt: !394)
!928 = !DILocation(line: 1515, column: 9, scope: !929, inlinedAt: !394)
!929 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1515, column: 8)
!930 = !DILocation(line: 1515, column: 15, scope: !929, inlinedAt: !394)
!931 = !DILocation(line: 1515, column: 21, scope: !929, inlinedAt: !394)
!932 = !DILocation(line: 1515, column: 26, scope: !929, inlinedAt: !394)
!933 = !DILocation(line: 1515, column: 42, scope: !929, inlinedAt: !394)
!934 = !DILocation(line: 1515, column: 8, scope: !914, inlinedAt: !394)
!935 = !DILocation(line: 0, scope: !395, inlinedAt: !403)
!936 = !DILocalVariable(name: "i", scope: !937, file: !3, line: 842, type: !8)
!937 = distinct !DISubprogram(name: "eshup1", scope: !3, file: !3, line: 839, type: !700, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !938)
!938 = !{!939, !940, !936}
!939 = !DILocalVariable(name: "x", arg: 1, scope: !937, file: !3, line: 839, type: !377)
!940 = !DILocalVariable(name: "bits", scope: !937, file: !3, line: 841, type: !11)
!941 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !942)
!942 = distinct !DILocation(line: 1517, column: 8, scope: !943, inlinedAt: !394)
!943 = distinct !DILexicalBlock(scope: !929, file: !3, line: 1516, column: 6)
!944 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !942)
!945 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !942)
!946 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !942)
!947 = distinct !DILexicalBlock(scope: !948, file: !3, line: 849, column: 11)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 848, column: 5)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 847, column: 3)
!950 = distinct !DILexicalBlock(scope: !937, file: !3, line: 847, column: 3)
!951 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !942)
!952 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !942)
!953 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !942)
!954 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !942)
!955 = !DILocation(line: 0, scope: !937, inlinedAt: !942)
!956 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !942)
!957 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !942)
!958 = distinct !DILexicalBlock(scope: !948, file: !3, line: 852, column: 11)
!959 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !942)
!960 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !942)
!961 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !942)
!962 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !942)
!963 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !942)
!964 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !942)
!965 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !942)
!966 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !942)
!967 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !942)
!968 = distinct !{!968, !969, !970}
!969 = !DILocation(line: 847, column: 3, scope: !950)
!970 = !DILocation(line: 856, column: 5, scope: !950)
!971 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !942)
!972 = !DILocation(line: 1518, column: 8, scope: !943, inlinedAt: !394)
!973 = !DILocation(line: 1459, column: 16, scope: !373, inlinedAt: !394)
!974 = !DILocation(line: 1523, column: 12, scope: !975, inlinedAt: !394)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 1522, column: 6)
!976 = distinct !DILexicalBlock(scope: !977, file: !3, line: 1521, column: 4)
!977 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1521, column: 4)
!978 = !DILocation(line: 1521, column: 4, scope: !976, inlinedAt: !394)
!979 = !DILocation(line: 1521, column: 4, scope: !977, inlinedAt: !394)
!980 = !DILocation(line: 1523, column: 12, scope: !981, inlinedAt: !394)
!981 = distinct !DILexicalBlock(scope: !975, file: !3, line: 1523, column: 12)
!982 = !DILocation(line: 1523, column: 18, scope: !981, inlinedAt: !394)
!983 = !DILocation(line: 1527, column: 5, scope: !984, inlinedAt: !394)
!984 = distinct !DILexicalBlock(scope: !981, file: !3, line: 1524, column: 3)
!985 = !DILocation(line: 1530, column: 12, scope: !914, inlinedAt: !394)
!986 = !DILocation(line: 1530, column: 10, scope: !914, inlinedAt: !394)
!987 = !DILocation(line: 1531, column: 4, scope: !914, inlinedAt: !394)
!988 = !DILocation(line: 1533, column: 13, scope: !989, inlinedAt: !394)
!989 = distinct !DILexicalBlock(scope: !907, file: !3, line: 1533, column: 11)
!990 = !DILocation(line: 1533, column: 11, scope: !907, inlinedAt: !394)
!991 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !992)
!992 = distinct !DILocation(line: 1535, column: 4, scope: !993, inlinedAt: !394)
!993 = distinct !DILexicalBlock(scope: !989, file: !3, line: 1534, column: 2)
!994 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !992)
!995 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !992)
!996 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !992)
!997 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !992)
!998 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !992)
!999 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !992)
!1000 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !992)
!1001 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1002)
!1002 = distinct !DILocation(line: 1536, column: 4, scope: !993, inlinedAt: !394)
!1003 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1002)
!1004 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1002)
!1005 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1002)
!1006 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1002)
!1007 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1002)
!1008 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1002)
!1009 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1002)
!1010 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1002)
!1011 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1002)
!1012 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1013)
!1013 = distinct !DILocation(line: 1537, column: 4, scope: !993, inlinedAt: !394)
!1014 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1013)
!1015 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1013)
!1016 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1013)
!1017 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1013)
!1018 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1013)
!1019 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1013)
!1020 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1013)
!1021 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1013)
!1022 = !DILocation(line: 1538, column: 2, scope: !993, inlinedAt: !394)
!1023 = !DILocation(line: 1540, column: 7, scope: !1024, inlinedAt: !394)
!1024 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1540, column: 7)
!1025 = !DILocation(line: 1540, column: 16, scope: !1024, inlinedAt: !394)
!1026 = !DILocation(line: 1540, column: 13, scope: !1024, inlinedAt: !394)
!1027 = !DILocation(line: 1540, column: 7, scope: !373, inlinedAt: !394)
!1028 = !DILocation(line: 1542, column: 7, scope: !1029, inlinedAt: !394)
!1029 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1541, column: 5)
!1030 = !DILocation(line: 1544, column: 5, scope: !1029, inlinedAt: !394)
!1031 = !DILocation(line: 1547, column: 7, scope: !1032, inlinedAt: !394)
!1032 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 1546, column: 5)
!1033 = !DILocation(line: 0, scope: !1032, inlinedAt: !394)
!1034 = !DILocation(line: 1550, column: 3, scope: !373, inlinedAt: !394)
!1035 = !DILocation(line: 1553, column: 3, scope: !373, inlinedAt: !394)
!1036 = !DILocation(line: 1554, column: 1, scope: !373, inlinedAt: !394)
!1037 = !DILocation(line: 1450, column: 1, scope: !395, inlinedAt: !403)
!1038 = !DILocation(line: 3716, column: 8, scope: !404, inlinedAt: !424)
!1039 = !DILocation(line: 3061, column: 12, scope: !1040, inlinedAt: !456)
!1040 = distinct !DILexicalBlock(scope: !737, file: !3, line: 3061, column: 12)
!1041 = !DILocation(line: 3711, column: 7, scope: !407, inlinedAt: !424)
!1042 = !DILocation(line: 3061, column: 20, scope: !1040, inlinedAt: !456)
!1043 = !DILocation(line: 3061, column: 17, scope: !1040, inlinedAt: !456)
!1044 = !DILocation(line: 3067, column: 6, scope: !425, inlinedAt: !456)
!1045 = !DILocation(line: 3068, column: 6, scope: !425, inlinedAt: !456)
!1046 = !DILocation(line: 3070, column: 16, scope: !426, inlinedAt: !456)
!1047 = !DILocation(line: 3069, column: 2, scope: !425, inlinedAt: !456)
!1048 = distinct !{!1048, !1049, !1050}
!1049 = !DILocation(line: 3055, column: 7, scope: !426)
!1050 = !DILocation(line: 3070, column: 20, scope: !426)
!1051 = !DILocation(line: 3073, column: 20, scope: !426, inlinedAt: !456)
!1052 = !DILocation(line: 3073, column: 30, scope: !426, inlinedAt: !456)
!1053 = !DILocation(line: 3073, column: 17, scope: !426, inlinedAt: !456)
!1054 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 3074, column: 7, scope: !426, inlinedAt: !456)
!1056 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !1055)
!1057 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !1055)
!1058 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !1055)
!1059 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !1055)
!1060 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !1055)
!1061 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !1055)
!1062 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !1055)
!1063 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !1055)
!1064 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !1065)
!1065 = distinct !DILocation(line: 3076, column: 7, scope: !426, inlinedAt: !456)
!1066 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !1065)
!1067 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !1065)
!1068 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !1065)
!1069 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !1065)
!1070 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !1065)
!1071 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !1065)
!1072 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !1065)
!1073 = !DILocation(line: 3079, column: 7, scope: !426, inlinedAt: !456)
!1074 = !DILocation(line: 3079, column: 14, scope: !426, inlinedAt: !456)
!1075 = !DILocation(line: 3079, column: 28, scope: !426, inlinedAt: !456)
!1076 = !DILocation(line: 3081, column: 8, scope: !1077, inlinedAt: !456)
!1077 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 3081, column: 8)
!1078 = distinct !DILexicalBlock(scope: !426, file: !3, line: 3080, column: 2)
!1079 = !DILocation(line: 3081, column: 20, scope: !1077, inlinedAt: !456)
!1080 = !DILocation(line: 3081, column: 8, scope: !1078, inlinedAt: !456)
!1081 = !DILocation(line: 3083, column: 8, scope: !1082, inlinedAt: !456)
!1082 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 3082, column: 6)
!1083 = !DILocation(line: 3084, column: 8, scope: !1082, inlinedAt: !456)
!1084 = !DILocation(line: 3085, column: 17, scope: !1082, inlinedAt: !456)
!1085 = !DILocation(line: 3085, column: 14, scope: !1082, inlinedAt: !456)
!1086 = !DILocation(line: 3086, column: 6, scope: !1082, inlinedAt: !456)
!1087 = !DILocation(line: 0, scope: !428, inlinedAt: !456)
!1088 = !DILocation(line: 3087, column: 6, scope: !1078, inlinedAt: !456)
!1089 = !DILocation(line: 3088, column: 10, scope: !1090, inlinedAt: !456)
!1090 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 3088, column: 8)
!1091 = !DILocation(line: 3088, column: 8, scope: !1078, inlinedAt: !456)
!1092 = !DILocation(line: 3090, column: 6, scope: !1078, inlinedAt: !456)
!1093 = distinct !{!1093, !1094, !1095}
!1094 = !DILocation(line: 3079, column: 7, scope: !426)
!1095 = !DILocation(line: 3091, column: 2, scope: !426)
!1096 = !DILocation(line: 3096, column: 11, scope: !1097, inlinedAt: !456)
!1097 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 3096, column: 11)
!1098 = distinct !DILexicalBlock(scope: !427, file: !3, line: 3094, column: 5)
!1099 = !DILocation(line: 3096, column: 21, scope: !1097, inlinedAt: !456)
!1100 = !DILocation(line: 3096, column: 11, scope: !1098, inlinedAt: !456)
!1101 = !DILocation(line: 3098, column: 12, scope: !1102, inlinedAt: !456)
!1102 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 3097, column: 2)
!1103 = !DILocation(line: 3098, column: 32, scope: !1102, inlinedAt: !456)
!1104 = !DILocation(line: 3098, column: 4, scope: !1102, inlinedAt: !456)
!1105 = !DILocation(line: 3100, column: 8, scope: !1106, inlinedAt: !456)
!1106 = distinct !DILexicalBlock(scope: !1102, file: !3, line: 3099, column: 6)
!1107 = !DILocation(line: 3101, column: 14, scope: !1106, inlinedAt: !456)
!1108 = distinct !{!1108, !1109, !1110}
!1109 = !DILocation(line: 3098, column: 4, scope: !1102)
!1110 = !DILocation(line: 3102, column: 6, scope: !1102)
!1111 = !DILocation(line: 3106, column: 14, scope: !1112, inlinedAt: !456)
!1112 = distinct !DILexicalBlock(scope: !1097, file: !3, line: 3105, column: 2)
!1113 = !DILocation(line: 3106, column: 4, scope: !1112, inlinedAt: !456)
!1114 = !DILocation(line: 3107, column: 9, scope: !1115, inlinedAt: !456)
!1115 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 3107, column: 4)
!1116 = !DILocation(line: 3109, column: 13, scope: !1117, inlinedAt: !456)
!1117 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 3109, column: 12)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !3, line: 3108, column: 6)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !3, line: 3107, column: 4)
!1120 = !DILocation(line: 3122, column: 12, scope: !1121, inlinedAt: !456)
!1121 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 3122, column: 12)
!1122 = !DILocation(line: 3107, column: 4, scope: !1115, inlinedAt: !456)
!1123 = !DILocation(line: 3109, column: 23, scope: !1117, inlinedAt: !456)
!1124 = !DILocation(line: 3109, column: 30, scope: !1117, inlinedAt: !456)
!1125 = !DILocation(line: 3109, column: 12, scope: !1118, inlinedAt: !456)
!1126 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1127)
!1127 = distinct !DILocation(line: 3112, column: 8, scope: !1118, inlinedAt: !456)
!1128 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1127)
!1129 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1127)
!1130 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1127)
!1131 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1127)
!1132 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1127)
!1133 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1127)
!1134 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1127)
!1135 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1127)
!1136 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1127)
!1137 = !DILocalVariable(name: "x", arg: 1, scope: !1138, file: !3, line: 812, type: !377)
!1138 = distinct !DISubprogram(name: "eshdn1", scope: !3, file: !3, line: 812, type: !700, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1139)
!1139 = !{!1137, !1140, !1141}
!1140 = !DILocalVariable(name: "bits", scope: !1138, file: !3, line: 814, type: !11)
!1141 = !DILocalVariable(name: "i", scope: !1138, file: !3, line: 815, type: !8)
!1142 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !1143)
!1143 = distinct !DILocation(line: 3113, column: 8, scope: !1118, inlinedAt: !456)
!1144 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !1143)
!1145 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !1143)
!1146 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !1143)
!1147 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 820, column: 3)
!1148 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !1143)
!1149 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !1143)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 822, column: 11)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 821, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 820, column: 3)
!1153 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !1143)
!1154 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !1143)
!1155 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !1143)
!1156 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !1143)
!1157 = !DILocation(line: 0, scope: !1138, inlinedAt: !1143)
!1158 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !1143)
!1159 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !1143)
!1160 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 825, column: 11)
!1161 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !1143)
!1162 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !1143)
!1163 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !1143)
!1164 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !1143)
!1165 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !1143)
!1166 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !1143)
!1167 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !1143)
!1168 = distinct !{!1168, !1169, !1170}
!1169 = !DILocation(line: 820, column: 3, scope: !1147)
!1170 = !DILocation(line: 829, column: 5, scope: !1147)
!1171 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !1143)
!1172 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !1143)
!1173 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !1174)
!1174 = distinct !DILocation(line: 3114, column: 8, scope: !1118, inlinedAt: !456)
!1175 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !1174)
!1176 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !1174)
!1177 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !1174)
!1178 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !1174)
!1179 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !1174)
!1180 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !1174)
!1181 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !1174)
!1182 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !1174)
!1183 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !1174)
!1184 = !DILocation(line: 0, scope: !1138, inlinedAt: !1174)
!1185 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !1174)
!1186 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !1174)
!1187 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !1174)
!1188 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !1174)
!1189 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !1174)
!1190 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !1174)
!1191 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !1174)
!1192 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !1174)
!1193 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !1174)
!1194 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !1174)
!1195 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !1174)
!1196 = !DILocation(line: 3115, column: 8, scope: !1118, inlinedAt: !456)
!1197 = !DILocation(line: 3116, column: 13, scope: !1118, inlinedAt: !456)
!1198 = !DILocation(line: 3117, column: 8, scope: !1118, inlinedAt: !456)
!1199 = !DILocation(line: 3117, column: 15, scope: !1118, inlinedAt: !456)
!1200 = !DILocation(line: 3117, column: 20, scope: !1118, inlinedAt: !456)
!1201 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !1202)
!1202 = distinct !DILocation(line: 3119, column: 5, scope: !1203, inlinedAt: !456)
!1203 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 3118, column: 3)
!1204 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !1202)
!1205 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !1202)
!1206 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !1202)
!1207 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !1202)
!1208 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !1202)
!1209 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !1202)
!1210 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !1202)
!1211 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !1202)
!1212 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !1202)
!1213 = !DILocation(line: 0, scope: !1138, inlinedAt: !1202)
!1214 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !1202)
!1215 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !1202)
!1216 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !1202)
!1217 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !1202)
!1218 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !1202)
!1219 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !1202)
!1220 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !1202)
!1221 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !1202)
!1222 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !1202)
!1223 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !1202)
!1224 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !1202)
!1225 = !DILocation(line: 3120, column: 10, scope: !1203, inlinedAt: !456)
!1226 = distinct !{!1226, !1227, !1228}
!1227 = !DILocation(line: 3117, column: 8, scope: !1118)
!1228 = !DILocation(line: 3121, column: 3, scope: !1118)
!1229 = !DILocation(line: 3122, column: 22, scope: !1121, inlinedAt: !456)
!1230 = !DILocation(line: 3122, column: 12, scope: !1118, inlinedAt: !456)
!1231 = !DILocation(line: 3124, column: 25, scope: !1232, inlinedAt: !456)
!1232 = distinct !DILexicalBlock(scope: !1118, file: !3, line: 3124, column: 12)
!1233 = !DILocation(line: 3124, column: 12, scope: !1118, inlinedAt: !456)
!1234 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1235)
!1235 = distinct !DILocation(line: 3126, column: 8, scope: !1118, inlinedAt: !456)
!1236 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1235)
!1237 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1235)
!1238 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1235)
!1239 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1235)
!1240 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1235)
!1241 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1235)
!1242 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1235)
!1243 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1235)
!1244 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1235)
!1245 = !DILocation(line: 3127, column: 14, scope: !1118, inlinedAt: !456)
!1246 = !DILocation(line: 3107, column: 31, scope: !1119, inlinedAt: !456)
!1247 = !DILocation(line: 3107, column: 4, scope: !1119, inlinedAt: !456)
!1248 = !DILocation(line: 3107, column: 18, scope: !1119, inlinedAt: !456)
!1249 = distinct !{!1249, !1250, !1251}
!1250 = !DILocation(line: 3107, column: 4, scope: !1115)
!1251 = !DILocation(line: 3128, column: 6, scope: !1115)
!1252 = !DILocation(line: 0, scope: !1118, inlinedAt: !456)
!1253 = !DILocation(line: 3129, column: 4, scope: !1112, inlinedAt: !456)
!1254 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !1255)
!1255 = distinct !DILocation(line: 3134, column: 7, scope: !1098, inlinedAt: !456)
!1256 = !DILocation(line: 2976, column: 30, scope: !428, inlinedAt: !456)
!1257 = !DILocation(line: 3134, column: 16, scope: !1098, inlinedAt: !456)
!1258 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !1255)
!1259 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !1255)
!1260 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !1255)
!1261 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !1255)
!1262 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !1255)
!1263 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !1255)
!1264 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !1255)
!1265 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !1255)
!1266 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !1255)
!1267 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !1268)
!1268 = distinct !DILocation(line: 3135, column: 7, scope: !1098, inlinedAt: !456)
!1269 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !1268)
!1270 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !1268)
!1271 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !1268)
!1272 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !1268)
!1273 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !1268)
!1274 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !1268)
!1275 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !1268)
!1276 = !DILocation(line: 3136, column: 7, scope: !1098, inlinedAt: !456)
!1277 = !DILocation(line: 3136, column: 14, scope: !1098, inlinedAt: !456)
!1278 = !DILocation(line: 3136, column: 29, scope: !1098, inlinedAt: !456)
!1279 = !DILocation(line: 3138, column: 8, scope: !1280, inlinedAt: !456)
!1280 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 3138, column: 8)
!1281 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 3137, column: 2)
!1282 = !DILocation(line: 3138, column: 20, scope: !1280, inlinedAt: !456)
!1283 = !DILocation(line: 3138, column: 8, scope: !1281, inlinedAt: !456)
!1284 = !DILocation(line: 3140, column: 8, scope: !1285, inlinedAt: !456)
!1285 = distinct !DILexicalBlock(scope: !1280, file: !3, line: 3139, column: 6)
!1286 = !DILocation(line: 3141, column: 8, scope: !1285, inlinedAt: !456)
!1287 = !DILocation(line: 3142, column: 14, scope: !1285, inlinedAt: !456)
!1288 = !DILocation(line: 3143, column: 6, scope: !1285, inlinedAt: !456)
!1289 = !DILocation(line: 3145, column: 10, scope: !1290, inlinedAt: !456)
!1290 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 3145, column: 8)
!1291 = !DILocation(line: 3145, column: 8, scope: !1281, inlinedAt: !456)
!1292 = !DILocation(line: 3144, column: 6, scope: !1281, inlinedAt: !456)
!1293 = !DILocation(line: 3147, column: 6, scope: !1281, inlinedAt: !456)
!1294 = !DILocation(line: 3148, column: 6, scope: !1281, inlinedAt: !456)
!1295 = distinct !{!1295, !1296, !1297}
!1296 = !DILocation(line: 3136, column: 7, scope: !1098)
!1297 = !DILocation(line: 3149, column: 2, scope: !1098)
!1298 = !DILocation(line: 3150, column: 7, scope: !1098, inlinedAt: !456)
!1299 = !DILocation(line: 3154, column: 13, scope: !428, inlinedAt: !456)
!1300 = !DILocation(line: 3154, column: 3, scope: !428, inlinedAt: !456)
!1301 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1302)
!1302 = distinct !DILocation(line: 3155, column: 3, scope: !428, inlinedAt: !456)
!1303 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1302)
!1304 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1302)
!1305 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1302)
!1306 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1302)
!1307 = !DILocation(line: 732, column: 14, scope: !866, inlinedAt: !1302)
!1308 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1302)
!1309 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1302)
!1310 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1302)
!1311 = !DILocation(line: 732, column: 7, scope: !866, inlinedAt: !1302)
!1312 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1302)
!1313 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1302)
!1314 = !DILocation(line: 3156, column: 3, scope: !428, inlinedAt: !456)
!1315 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1316)
!1316 = distinct !DILocation(line: 3157, column: 3, scope: !428, inlinedAt: !456)
!1317 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1316)
!1318 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1316)
!1319 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1316)
!1320 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1316)
!1321 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1316)
!1322 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1316)
!1323 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1316)
!1324 = !DILocation(line: 732, column: 7, scope: !866, inlinedAt: !1316)
!1325 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1316)
!1326 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1316)
!1327 = !DILocation(line: 3158, column: 3, scope: !428, inlinedAt: !456)
!1328 = !DILocation(line: 3159, column: 11, scope: !428, inlinedAt: !456)
!1329 = !DILocation(line: 3160, column: 3, scope: !428, inlinedAt: !456)
!1330 = !DILocation(line: 3160, column: 17, scope: !428, inlinedAt: !456)
!1331 = !DILocation(line: 3160, column: 23, scope: !428, inlinedAt: !456)
!1332 = !DILocation(line: 3160, column: 27, scope: !428, inlinedAt: !456)
!1333 = !DILocation(line: 3160, column: 43, scope: !428, inlinedAt: !456)
!1334 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1335)
!1335 = distinct !DILocation(line: 3162, column: 7, scope: !1336, inlinedAt: !456)
!1336 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3161, column: 5)
!1337 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1335)
!1338 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1335)
!1339 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1335)
!1340 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1335)
!1341 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1335)
!1342 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1335)
!1343 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1335)
!1344 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1335)
!1345 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1335)
!1346 = !DILocation(line: 0, scope: !937, inlinedAt: !1335)
!1347 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1335)
!1348 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1335)
!1349 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1335)
!1350 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1335)
!1351 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1335)
!1352 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1335)
!1353 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1335)
!1354 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1335)
!1355 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1335)
!1356 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1335)
!1357 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1335)
!1358 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1359)
!1359 = distinct !DILocation(line: 3163, column: 7, scope: !1336, inlinedAt: !456)
!1360 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1359)
!1361 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1359)
!1362 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1359)
!1363 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1359)
!1364 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1359)
!1365 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1359)
!1366 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1359)
!1367 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1359)
!1368 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1359)
!1369 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1370)
!1370 = distinct !DILocation(line: 3164, column: 7, scope: !1336, inlinedAt: !456)
!1371 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1370)
!1372 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1370)
!1373 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1370)
!1374 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1370)
!1375 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1370)
!1376 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1370)
!1377 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1370)
!1378 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1370)
!1379 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1370)
!1380 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1370)
!1381 = !DILocation(line: 0, scope: !937, inlinedAt: !1370)
!1382 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1370)
!1383 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1370)
!1384 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1370)
!1385 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1370)
!1386 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1370)
!1387 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1370)
!1388 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1370)
!1389 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1370)
!1390 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1370)
!1391 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1370)
!1392 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1393)
!1393 = distinct !DILocation(line: 3165, column: 7, scope: !1336, inlinedAt: !456)
!1394 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1393)
!1395 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1393)
!1396 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1393)
!1397 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1393)
!1398 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1393)
!1399 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1393)
!1400 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1393)
!1401 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1393)
!1402 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1393)
!1403 = !DILocation(line: 0, scope: !937, inlinedAt: !1393)
!1404 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1393)
!1405 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1393)
!1406 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1393)
!1407 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1393)
!1408 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1393)
!1409 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1393)
!1410 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1393)
!1411 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1393)
!1412 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1393)
!1413 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1393)
!1414 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1393)
!1415 = !DILocation(line: 3166, column: 7, scope: !1336, inlinedAt: !456)
!1416 = !DILocation(line: 3167, column: 7, scope: !1336, inlinedAt: !456)
!1417 = !DILocation(line: 3168, column: 15, scope: !1336, inlinedAt: !456)
!1418 = !DILocation(line: 3169, column: 13, scope: !1336, inlinedAt: !456)
!1419 = distinct !{!1419, !1420, !1421}
!1420 = !DILocation(line: 3160, column: 3, scope: !428)
!1421 = !DILocation(line: 3170, column: 5, scope: !428)
!1422 = !DILocation(line: 0, scope: !1336, inlinedAt: !456)
!1423 = !DILocation(line: 2979, column: 9, scope: !428, inlinedAt: !456)
!1424 = !DILocation(line: 3172, column: 7, scope: !1425, inlinedAt: !456)
!1425 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3172, column: 7)
!1426 = !DILocation(line: 0, scope: !1425, inlinedAt: !456)
!1427 = !DILocation(line: 3172, column: 7, scope: !428, inlinedAt: !456)
!1428 = !DILocation(line: 0, scope: !56)
!1429 = !DILocation(line: 3177, column: 7, scope: !428, inlinedAt: !456)
!1430 = !DILocation(line: 3178, column: 11, scope: !1431, inlinedAt: !456)
!1431 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3177, column: 7)
!1432 = !DILocation(line: 3178, column: 5, scope: !1431, inlinedAt: !456)
!1433 = !DILocation(line: 3183, column: 13, scope: !1434, inlinedAt: !456)
!1434 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3183, column: 7)
!1435 = !DILocation(line: 3183, column: 7, scope: !428, inlinedAt: !456)
!1436 = !DILocation(line: 3184, column: 5, scope: !1434, inlinedAt: !456)
!1437 = !DILocation(line: 0, scope: !1431, inlinedAt: !456)
!1438 = !DILocation(line: 3185, column: 13, scope: !1439, inlinedAt: !456)
!1439 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3185, column: 7)
!1440 = !DILocation(line: 3185, column: 7, scope: !428, inlinedAt: !456)
!1441 = !DILocation(line: 3187, column: 9, scope: !1442, inlinedAt: !456)
!1442 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 3186, column: 5)
!1443 = !DILocation(line: 3187, column: 12, scope: !1442, inlinedAt: !456)
!1444 = !DILocation(line: 3188, column: 9, scope: !1442, inlinedAt: !456)
!1445 = !DILocation(line: 3188, column: 12, scope: !1442, inlinedAt: !456)
!1446 = !DILocation(line: 3189, column: 17, scope: !1447, inlinedAt: !456)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 3189, column: 11)
!1448 = !DILocation(line: 3189, column: 11, scope: !1442, inlinedAt: !456)
!1449 = !DILocation(line: 3191, column: 6, scope: !1450, inlinedAt: !456)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 3190, column: 2)
!1451 = !DILocation(line: 3191, column: 9, scope: !1450, inlinedAt: !456)
!1452 = !DILocation(line: 3192, column: 10, scope: !1450, inlinedAt: !456)
!1453 = !DILocation(line: 3193, column: 2, scope: !1450, inlinedAt: !456)
!1454 = !DILocation(line: 3194, column: 13, scope: !1442, inlinedAt: !456)
!1455 = !DILocation(line: 3195, column: 11, scope: !1442, inlinedAt: !456)
!1456 = !DILocation(line: 3195, column: 17, scope: !1457, inlinedAt: !456)
!1457 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 3195, column: 11)
!1458 = !DILocation(line: 2979, column: 13, scope: !428, inlinedAt: !456)
!1459 = !DILocation(line: 3198, column: 4, scope: !1460, inlinedAt: !456)
!1460 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 3196, column: 2)
!1461 = !DILocation(line: 3207, column: 8, scope: !1462, inlinedAt: !456)
!1462 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3207, column: 3)
!1463 = !DILocation(line: 3207, column: 17, scope: !1464, inlinedAt: !456)
!1464 = distinct !DILexicalBlock(scope: !1462, file: !3, line: 3207, column: 3)
!1465 = !DILocation(line: 3207, column: 3, scope: !1462, inlinedAt: !456)
!1466 = !DILocation(line: 3203, column: 14, scope: !1467, inlinedAt: !456)
!1467 = distinct !DILexicalBlock(scope: !1439, file: !3, line: 3202, column: 5)
!1468 = !DILocation(line: 3203, column: 9, scope: !1467, inlinedAt: !456)
!1469 = !DILocation(line: 3203, column: 12, scope: !1467, inlinedAt: !456)
!1470 = !DILocation(line: 3204, column: 9, scope: !1467, inlinedAt: !456)
!1471 = !DILocation(line: 3204, column: 12, scope: !1467, inlinedAt: !456)
!1472 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1473)
!1473 = distinct !DILocation(line: 3210, column: 7, scope: !1474, inlinedAt: !456)
!1474 = distinct !DILexicalBlock(scope: !1464, file: !3, line: 3208, column: 5)
!1475 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1473)
!1476 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1473)
!1477 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1473)
!1478 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1473)
!1479 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1473)
!1480 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1473)
!1481 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1473)
!1482 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1473)
!1483 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1473)
!1484 = !DILocation(line: 0, scope: !937, inlinedAt: !1473)
!1485 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1473)
!1486 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1473)
!1487 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1473)
!1488 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1473)
!1489 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1473)
!1490 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1473)
!1491 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1473)
!1492 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1473)
!1493 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1473)
!1494 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1473)
!1495 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1473)
!1496 = !DILocation(line: 727, column: 37, scope: !851, inlinedAt: !1497)
!1497 = distinct !DILocation(line: 3211, column: 7, scope: !1474, inlinedAt: !456)
!1498 = !DILocation(line: 727, column: 69, scope: !851, inlinedAt: !1497)
!1499 = !DILocation(line: 729, column: 16, scope: !851, inlinedAt: !1497)
!1500 = !DILocation(line: 731, column: 8, scope: !863, inlinedAt: !1497)
!1501 = !DILocation(line: 731, column: 3, scope: !863, inlinedAt: !1497)
!1502 = !DILocation(line: 732, column: 12, scope: !866, inlinedAt: !1497)
!1503 = !DILocation(line: 732, column: 10, scope: !866, inlinedAt: !1497)
!1504 = !DILocation(line: 731, column: 3, scope: !866, inlinedAt: !1497)
!1505 = !DILocation(line: 734, column: 6, scope: !851, inlinedAt: !1497)
!1506 = !DILocation(line: 735, column: 1, scope: !851, inlinedAt: !1497)
!1507 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1508)
!1508 = distinct !DILocation(line: 3212, column: 7, scope: !1474, inlinedAt: !456)
!1509 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1508)
!1510 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1508)
!1511 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1508)
!1512 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1508)
!1513 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1508)
!1514 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1508)
!1515 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1508)
!1516 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1508)
!1517 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1508)
!1518 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1508)
!1519 = !DILocation(line: 0, scope: !937, inlinedAt: !1508)
!1520 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1508)
!1521 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1508)
!1522 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1508)
!1523 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1508)
!1524 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1508)
!1525 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1508)
!1526 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1508)
!1527 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1508)
!1528 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1508)
!1529 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1508)
!1530 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1531)
!1531 = distinct !DILocation(line: 3213, column: 7, scope: !1474, inlinedAt: !456)
!1532 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1531)
!1533 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1531)
!1534 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1531)
!1535 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1531)
!1536 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1531)
!1537 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1531)
!1538 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1531)
!1539 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1531)
!1540 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1531)
!1541 = !DILocation(line: 0, scope: !937, inlinedAt: !1531)
!1542 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1531)
!1543 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1531)
!1544 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1531)
!1545 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1531)
!1546 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1531)
!1547 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1531)
!1548 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1531)
!1549 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1531)
!1550 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1531)
!1551 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1531)
!1552 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1531)
!1553 = !DILocation(line: 3214, column: 7, scope: !1474, inlinedAt: !456)
!1554 = !DILocation(line: 3215, column: 7, scope: !1474, inlinedAt: !456)
!1555 = !DILocation(line: 3216, column: 21, scope: !1474, inlinedAt: !456)
!1556 = !DILocation(line: 3216, column: 14, scope: !1474, inlinedAt: !456)
!1557 = !DILocation(line: 3216, column: 9, scope: !1474, inlinedAt: !456)
!1558 = !DILocation(line: 3216, column: 12, scope: !1474, inlinedAt: !456)
!1559 = !DILocation(line: 3207, column: 28, scope: !1464, inlinedAt: !456)
!1560 = !DILocation(line: 3207, column: 3, scope: !1464, inlinedAt: !456)
!1561 = distinct !{!1561, !1562, !1563}
!1562 = !DILocation(line: 3207, column: 3, scope: !1462)
!1563 = !DILocation(line: 3217, column: 5, scope: !1462)
!1564 = !DILocation(line: 3218, column: 11, scope: !428, inlinedAt: !456)
!1565 = !DILocation(line: 0, scope: !1474, inlinedAt: !456)
!1566 = !DILocation(line: 3219, column: 3, scope: !428, inlinedAt: !456)
!1567 = !DILocation(line: 3222, column: 13, scope: !1568, inlinedAt: !456)
!1568 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3222, column: 7)
!1569 = !DILocation(line: 3222, column: 7, scope: !428, inlinedAt: !456)
!1570 = !DILocation(line: 3225, column: 17, scope: !1571, inlinedAt: !456)
!1571 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 3225, column: 11)
!1572 = distinct !DILexicalBlock(scope: !1568, file: !3, line: 3223, column: 5)
!1573 = !DILocation(line: 3225, column: 11, scope: !1572, inlinedAt: !456)
!1574 = !DILocation(line: 3227, column: 4, scope: !1575, inlinedAt: !456)
!1575 = distinct !DILexicalBlock(scope: !1571, file: !3, line: 3226, column: 2)
!1576 = !DILocation(line: 3228, column: 8, scope: !1577, inlinedAt: !456)
!1577 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 3228, column: 8)
!1578 = !DILocation(line: 3228, column: 24, scope: !1577, inlinedAt: !456)
!1579 = !DILocation(line: 3228, column: 8, scope: !1575, inlinedAt: !456)
!1580 = !DILocation(line: 3230, column: 18, scope: !1581, inlinedAt: !456)
!1581 = distinct !DILexicalBlock(scope: !1575, file: !3, line: 3230, column: 8)
!1582 = !DILocation(line: 3230, column: 26, scope: !1581, inlinedAt: !456)
!1583 = !DILocation(line: 3230, column: 33, scope: !1581, inlinedAt: !456)
!1584 = !DILocation(line: 3230, column: 42, scope: !1581, inlinedAt: !456)
!1585 = !DILocation(line: 3230, column: 30, scope: !1581, inlinedAt: !456)
!1586 = !DILocation(line: 3230, column: 22, scope: !1581, inlinedAt: !456)
!1587 = !DILocation(line: 3230, column: 51, scope: !1581, inlinedAt: !456)
!1588 = !DILocation(line: 3230, column: 56, scope: !1581, inlinedAt: !456)
!1589 = !DILocation(line: 3230, column: 8, scope: !1575, inlinedAt: !456)
!1590 = !DILocation(line: 3225, column: 20, scope: !1571, inlinedAt: !456)
!1591 = !DILocation(line: 3236, column: 11, scope: !1572, inlinedAt: !456)
!1592 = !DILocation(line: 3238, column: 11, scope: !1572, inlinedAt: !456)
!1593 = !DILocation(line: 3235, column: 7, scope: !1572, inlinedAt: !456)
!1594 = !DILocation(line: 3236, column: 14, scope: !1572, inlinedAt: !456)
!1595 = !DILocation(line: 3245, column: 18, scope: !1596, inlinedAt: !456)
!1596 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 3245, column: 16)
!1597 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 3238, column: 11)
!1598 = !DILocation(line: 3245, column: 16, scope: !1597, inlinedAt: !456)
!1599 = !DILocation(line: 3241, column: 7, scope: !1600, inlinedAt: !456)
!1600 = distinct !DILexicalBlock(scope: !1597, file: !3, line: 3239, column: 2)
!1601 = !DILocation(line: 3242, column: 10, scope: !1600, inlinedAt: !456)
!1602 = !DILocation(line: 3243, column: 4, scope: !1600, inlinedAt: !456)
!1603 = !DILocation(line: 3247, column: 4, scope: !1604, inlinedAt: !456)
!1604 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 3246, column: 2)
!1605 = !DILocation(line: 3248, column: 8, scope: !1604, inlinedAt: !456)
!1606 = !DILocation(line: 3249, column: 6, scope: !1604, inlinedAt: !456)
!1607 = !DILocation(line: 3250, column: 7, scope: !1604, inlinedAt: !456)
!1608 = !DILocation(line: 3252, column: 10, scope: !1609, inlinedAt: !456)
!1609 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 3252, column: 8)
!1610 = !DILocation(line: 3252, column: 8, scope: !1604, inlinedAt: !456)
!1611 = !DILocation(line: 3254, column: 14, scope: !1612, inlinedAt: !456)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !3, line: 3253, column: 6)
!1613 = !DILocation(line: 3255, column: 11, scope: !1612, inlinedAt: !456)
!1614 = !DILocation(line: 3256, column: 6, scope: !1612, inlinedAt: !456)
!1615 = !DILocation(line: 3260, column: 9, scope: !1572, inlinedAt: !456)
!1616 = !DILocation(line: 3261, column: 10, scope: !1572, inlinedAt: !456)
!1617 = !DILocation(line: 3262, column: 13, scope: !1618, inlinedAt: !456)
!1618 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 3262, column: 11)
!1619 = !DILocation(line: 3262, column: 11, scope: !1572, inlinedAt: !456)
!1620 = !DILocation(line: 3264, column: 7, scope: !1621, inlinedAt: !456)
!1621 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 3263, column: 2)
!1622 = !DILocation(line: 3265, column: 4, scope: !1621, inlinedAt: !456)
!1623 = !DILocation(line: 0, scope: !1442, inlinedAt: !456)
!1624 = !DILocation(line: 3275, column: 3, scope: !428, inlinedAt: !456)
!1625 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !1626)
!1626 = distinct !DILocation(line: 3064, column: 4, scope: !425, inlinedAt: !456)
!1627 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !1626)
!1628 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !1626)
!1629 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !1626)
!1630 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !1626)
!1631 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !1626)
!1632 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !1626)
!1633 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !1626)
!1634 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !1626)
!1635 = !DILocation(line: 3065, column: 13, scope: !425, inlinedAt: !456)
!1636 = !DILocation(line: 3065, column: 10, scope: !425, inlinedAt: !456)
!1637 = !DILocation(line: 3065, column: 4, scope: !425, inlinedAt: !456)
!1638 = !DILocation(line: 3278, column: 15, scope: !428, inlinedAt: !456)
!1639 = !DILocation(line: 3279, column: 8, scope: !428, inlinedAt: !456)
!1640 = !DILocation(line: 3279, column: 17, scope: !428, inlinedAt: !456)
!1641 = !{!485, !486, i64 16}
!1642 = !DILocation(line: 3280, column: 1, scope: !428, inlinedAt: !456)
!1643 = !DILocation(line: 2784, column: 9, scope: !56)
!1644 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !577)
!1645 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !577)
!1646 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !577)
!1647 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !577)
!1648 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !577)
!1649 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !577)
!1650 = !DILocation(line: 2839, column: 18, scope: !578)
!1651 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !577)
!1652 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !577)
!1653 = !DILocation(line: 0, scope: !819, inlinedAt: !577)
!1654 = !DILocation(line: 2839, column: 21, scope: !578)
!1655 = !DILocation(line: 2839, column: 7, scope: !56)
!1656 = !DILocation(line: 2841, column: 14, scope: !1657)
!1657 = distinct !DILexicalBlock(scope: !578, file: !3, line: 2840, column: 5)
!1658 = !DILocation(line: 2842, column: 7, scope: !1657)
!1659 = !DILocation(line: 2844, column: 17, scope: !56)
!1660 = !DILocation(line: 2844, column: 26, scope: !56)
!1661 = !DILocation(line: 2844, column: 10, scope: !56)
!1662 = !DILocation(line: 2850, column: 3, scope: !56)
!1663 = !DILocation(line: 2850, column: 10, scope: !56)
!1664 = !DILocation(line: 2850, column: 13, scope: !56)
!1665 = !DILocation(line: 2852, column: 14, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 2852, column: 11)
!1667 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2851, column: 5)
!1668 = !DILocation(line: 2852, column: 11, scope: !1667)
!1669 = !DILocation(line: 2861, column: 3, scope: !56)
!1670 = !DILocation(line: 2863, column: 16, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2862, column: 5)
!1672 = !DILocation(line: 2854, column: 7, scope: !1667)
!1673 = distinct !{!1673, !1662, !1674}
!1674 = !DILocation(line: 2855, column: 5, scope: !56)
!1675 = !DILocation(line: 2863, column: 12, scope: !1671)
!1676 = !DILocation(line: 2863, column: 10, scope: !1671)
!1677 = !DILocation(line: 2864, column: 7, scope: !1671)
!1678 = !DILocation(line: 2861, column: 10, scope: !56)
!1679 = !DILocation(line: 2861, column: 13, scope: !56)
!1680 = distinct !{!1680, !1669, !1681}
!1681 = !DILocation(line: 2865, column: 5, scope: !56)
!1682 = !DILocation(line: 2870, column: 3, scope: !56)
!1683 = !DILocation(line: 2871, column: 5, scope: !56)
!1684 = !DILocation(line: 2870, column: 10, scope: !56)
!1685 = !DILocation(line: 2870, column: 13, scope: !56)
!1686 = !DILocation(line: 2870, column: 25, scope: !56)
!1687 = !DILocation(line: 2870, column: 20, scope: !56)
!1688 = distinct !{!1688, !1682, !1689}
!1689 = !DILocation(line: 2871, column: 7, scope: !56)
!1690 = !DILocation(line: 2872, column: 6, scope: !56)
!1691 = !DILocation(line: 2872, column: 3, scope: !56)
!1692 = !DILocation(line: 0, scope: !1657)
!1693 = !DILocation(line: 2784, column: 13, scope: !56)
!1694 = !DILocation(line: 2878, column: 3, scope: !56)
!1695 = !DILocation(line: 2878, column: 10, scope: !56)
!1696 = !DILocation(line: 2878, column: 13, scope: !56)
!1697 = !DILocation(line: 2878, column: 20, scope: !56)
!1698 = !DILocation(line: 2878, column: 26, scope: !56)
!1699 = !DILocation(line: 2879, column: 5, scope: !56)
!1700 = distinct !{!1700, !1694, !1701}
!1701 = !DILocation(line: 2879, column: 7, scope: !56)
!1702 = !DILocation(line: 2883, column: 3, scope: !56)
!1703 = !DILocation(line: 2883, column: 20, scope: !56)
!1704 = !DILocation(line: 2883, column: 18, scope: !56)
!1705 = !DILocation(line: 2883, column: 13, scope: !56)
!1706 = !DILocation(line: 2883, column: 16, scope: !56)
!1707 = !DILocation(line: 2883, column: 24, scope: !56)
!1708 = distinct !{!1708, !1702, !1709}
!1709 = !DILocation(line: 2884, column: 5, scope: !56)
!1710 = !DILocation(line: 2888, column: 12, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2888, column: 7)
!1712 = !DILocation(line: 2888, column: 7, scope: !56)
!1713 = !DILocation(line: 2785, column: 13, scope: !56)
!1714 = !DILocation(line: 2889, column: 5, scope: !1711)
!1715 = !DILocation(line: 2890, column: 27, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !3, line: 2890, column: 12)
!1717 = !DILocation(line: 2890, column: 20, scope: !1716)
!1718 = !DILocation(line: 2890, column: 12, scope: !1711)
!1719 = !DILocation(line: 2891, column: 5, scope: !1716)
!1720 = !DILocation(line: 2895, column: 3, scope: !56)
!1721 = !DILocation(line: 2895, column: 14, scope: !56)
!1722 = !DILocation(line: 2895, column: 10, scope: !56)
!1723 = !DILocation(line: 2895, column: 19, scope: !56)
!1724 = !DILocation(line: 2895, column: 26, scope: !56)
!1725 = !DILocation(line: 2895, column: 33, scope: !56)
!1726 = !DILocation(line: 2895, column: 43, scope: !56)
!1727 = !DILocation(line: 2896, column: 12, scope: !56)
!1728 = distinct !{!1728, !1720, !1729}
!1729 = !DILocation(line: 2896, column: 14, scope: !56)
!1730 = !DILocation(line: 2900, column: 17, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2900, column: 7)
!1732 = !DILocation(line: 2900, column: 37, scope: !1731)
!1733 = !DILocation(line: 2900, column: 30, scope: !1731)
!1734 = !DILocation(line: 2900, column: 47, scope: !1731)
!1735 = !DILocation(line: 2900, column: 7, scope: !56)
!1736 = !DILocation(line: 2911, column: 9, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2910, column: 7)
!1738 = !DILocation(line: 2903, column: 10, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1731, file: !3, line: 2901, column: 5)
!1740 = !DILocation(line: 2904, column: 14, scope: !1739)
!1741 = !DILocation(line: 2905, column: 5, scope: !1739)
!1742 = !DILocation(line: 2910, column: 7, scope: !56)
!1743 = !DILocation(line: 2911, column: 16, scope: !1737)
!1744 = !DILocation(line: 2911, column: 31, scope: !1737)
!1745 = !DILocation(line: 2785, column: 7, scope: !56)
!1746 = !DILocation(line: 2911, column: 5, scope: !1737)
!1747 = !DILocation(line: 2913, column: 39, scope: !1737)
!1748 = !DILocation(line: 0, scope: !1737)
!1749 = !DILocation(line: 2785, column: 10, scope: !56)
!1750 = !DILocation(line: 2916, column: 8, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2916, column: 3)
!1752 = !DILocation(line: 2916, column: 33, scope: !1751)
!1753 = !DILocation(line: 2917, column: 51, scope: !1754)
!1754 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 2916, column: 3)
!1755 = !DILocation(line: 2917, column: 48, scope: !1754)
!1756 = !DILocation(line: 2916, column: 3, scope: !1751)
!1757 = !DILocation(line: 2918, column: 29, scope: !1754)
!1758 = !DILocation(line: 2917, column: 56, scope: !1754)
!1759 = !DILocation(line: 2916, column: 3, scope: !1754)
!1760 = !DILocation(line: 2917, column: 46, scope: !1754)
!1761 = !DILocation(line: 2917, column: 44, scope: !1754)
!1762 = distinct !{!1762, !1756, !1763}
!1763 = !DILocation(line: 2918, column: 29, scope: !1751)
!1764 = !DILocation(line: 0, scope: !1754)
!1765 = !DILocation(line: 2919, column: 28, scope: !56)
!1766 = !DILocation(line: 2919, column: 26, scope: !56)
!1767 = !DILocation(line: 2922, column: 12, scope: !56)
!1768 = !DILocation(line: 2789, column: 9, scope: !56)
!1769 = !DILocation(line: 2923, column: 3, scope: !56)
!1770 = !DILocation(line: 2925, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2925, column: 7)
!1772 = !DILocation(line: 2925, column: 7, scope: !56)
!1773 = !DILocation(line: 2926, column: 24, scope: !1771)
!1774 = !DILocation(line: 2926, column: 19, scope: !1771)
!1775 = !DILocation(line: 2926, column: 10, scope: !1771)
!1776 = !{!495, !495, i64 0}
!1777 = !DILocation(line: 2926, column: 5, scope: !1771)
!1778 = !DILocation(line: 2929, column: 1, scope: !56)
!1779 = !DILocation(line: 2928, column: 3, scope: !56)
!1780 = distinct !DISubprogram(name: "e64toe", scope: !3, file: !3, line: 1890, type: !412, isLocal: true, isDefinition: true, scopeLine: 1891, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1781)
!1781 = !{!1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1782 = !DILocalVariable(name: "pe", arg: 1, scope: !1780, file: !3, line: 1890, type: !377)
!1783 = !DILocalVariable(name: "y", arg: 2, scope: !1780, file: !3, line: 1890, type: !377)
!1784 = !DILocalVariable(name: "ldp", arg: 3, scope: !1780, file: !3, line: 1890, type: !361)
!1785 = !DILocalVariable(name: "yy", scope: !1780, file: !3, line: 1892, type: !338)
!1786 = !DILocalVariable(name: "p", scope: !1780, file: !3, line: 1893, type: !377)
!1787 = !DILocalVariable(name: "q", scope: !1780, file: !3, line: 1893, type: !377)
!1788 = !DILocalVariable(name: "e", scope: !1780, file: !3, line: 1893, type: !377)
!1789 = !DILocalVariable(name: "i", scope: !1780, file: !3, line: 1894, type: !8)
!1790 = !DILocalVariable(name: "temp", scope: !1791, file: !3, line: 1922, type: !1793)
!1791 = distinct !DILexicalBlock(scope: !1792, file: !3, line: 1921, column: 5)
!1792 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1920, column: 7)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 224, elements: !1794)
!1794 = !{!1795}
!1795 = !DISubrange(count: 14)
!1796 = !DILocation(line: 1890, column: 29, scope: !1780)
!1797 = !DILocation(line: 1890, column: 53, scope: !1780)
!1798 = !DILocation(line: 1890, column: 66, scope: !1780)
!1799 = !DILocation(line: 1892, column: 3, scope: !1780)
!1800 = !DILocation(line: 1892, column: 18, scope: !1780)
!1801 = !DILocation(line: 1893, column: 27, scope: !1780)
!1802 = !DILocation(line: 1897, column: 7, scope: !1780)
!1803 = !DILocation(line: 1893, column: 19, scope: !1780)
!1804 = !DILocation(line: 1894, column: 7, scope: !1780)
!1805 = !DILocation(line: 1899, column: 8, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1899, column: 3)
!1807 = !DILocation(line: 1899, column: 3, scope: !1806)
!1808 = !DILocation(line: 1900, column: 7, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !3, line: 1899, column: 3)
!1810 = !DILocation(line: 1900, column: 10, scope: !1809)
!1811 = !DILocation(line: 1899, column: 3, scope: !1809)
!1812 = !DILocation(line: 1902, column: 8, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1902, column: 3)
!1814 = !DILocation(line: 1902, column: 3, scope: !1813)
!1815 = !DILocation(line: 1903, column: 14, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1902, column: 3)
!1817 = !DILocation(line: 1903, column: 12, scope: !1816)
!1818 = !DILocation(line: 1903, column: 7, scope: !1816)
!1819 = !DILocation(line: 1903, column: 10, scope: !1816)
!1820 = !DILocation(line: 1902, column: 3, scope: !1816)
!1821 = !DILocation(line: 1920, column: 19, scope: !1792)
!1822 = !DILocation(line: 1920, column: 29, scope: !1792)
!1823 = !DILocation(line: 1920, column: 34, scope: !1792)
!1824 = !DILocation(line: 1920, column: 59, scope: !1792)
!1825 = !DILocation(line: 1920, column: 7, scope: !1780)
!1826 = !DILocation(line: 1932, column: 7, scope: !1780)
!1827 = !DILocation(line: 0, scope: !1828)
!1828 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1967, column: 3)
!1829 = !DILocation(line: 1922, column: 7, scope: !1791)
!1830 = !DILocation(line: 1922, column: 22, scope: !1791)
!1831 = !DILocation(line: 1923, column: 18, scope: !1791)
!1832 = !DILocation(line: 1923, column: 7, scope: !1791)
!1833 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !1834)
!1834 = distinct !DILocation(line: 1924, column: 7, scope: !1791)
!1835 = !DILocation(line: 844, column: 5, scope: !937, inlinedAt: !1834)
!1836 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !1834)
!1837 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !1834)
!1838 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !1834)
!1839 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !1834)
!1840 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !1834)
!1841 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !1834)
!1842 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !1834)
!1843 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !1834)
!1844 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !1834)
!1845 = !DILocation(line: 0, scope: !937, inlinedAt: !1834)
!1846 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !1834)
!1847 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !1834)
!1848 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !1834)
!1849 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !1834)
!1850 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !1834)
!1851 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !1834)
!1852 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !1834)
!1853 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !1834)
!1854 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !1834)
!1855 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !1834)
!1856 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !1834)
!1857 = !DILocation(line: 1925, column: 7, scope: !1791)
!1858 = !DILocation(line: 1927, column: 5, scope: !1792)
!1859 = !DILocation(line: 1932, column: 21, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1780, file: !3, line: 1932, column: 7)
!1861 = !DILocation(line: 1893, column: 23, scope: !1780)
!1862 = !DILocation(line: 1968, column: 7, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1828, file: !3, line: 1967, column: 3)
!1864 = !DILocation(line: 1968, column: 10, scope: !1863)
!1865 = !DILocation(line: 1967, column: 3, scope: !1863)
!1866 = !DILocation(line: 1967, column: 3, scope: !1828)
!1867 = !DILocation(line: 1968, column: 14, scope: !1863)
!1868 = !DILocation(line: 1968, column: 12, scope: !1863)
!1869 = !DILocation(line: 1969, column: 1, scope: !1780)
!1870 = !DILocation(line: 1938, column: 16, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1872, file: !3, line: 1938, column: 8)
!1872 = distinct !DILexicalBlock(scope: !1873, file: !3, line: 1937, column: 2)
!1873 = distinct !DILexicalBlock(scope: !1874, file: !3, line: 1936, column: 7)
!1874 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 1936, column: 7)
!1875 = distinct !DILexicalBlock(scope: !1860, file: !3, line: 1933, column: 5)
!1876 = !DILocation(line: 1938, column: 25, scope: !1871)
!1877 = !DILocation(line: 1940, column: 8, scope: !1871)
!1878 = !DILocalVariable(name: "nan", arg: 1, scope: !1879, file: !3, line: 3805, type: !377)
!1879 = distinct !DISubprogram(name: "enan", scope: !3, file: !3, line: 3805, type: !1880, isLocal: true, isDefinition: true, scopeLine: 3806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1882)
!1880 = !DISubroutineType(types: !1881)
!1881 = !{null, !377, !8}
!1882 = !{!1878, !1883, !1884, !1885, !1886}
!1883 = !DILocalVariable(name: "size", arg: 2, scope: !1879, file: !3, line: 3805, type: !8)
!1884 = !DILocalVariable(name: "i", scope: !1879, file: !3, line: 3807, type: !8)
!1885 = !DILocalVariable(name: "n", scope: !1879, file: !3, line: 3807, type: !8)
!1886 = !DILocalVariable(name: "p", scope: !1879, file: !3, line: 3808, type: !376)
!1887 = !DILocation(line: 3805, column: 27, scope: !1879, inlinedAt: !1888)
!1888 = distinct !DILocation(line: 1942, column: 8, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1871, file: !3, line: 1941, column: 6)
!1890 = !DILocation(line: 3805, column: 36, scope: !1879, inlinedAt: !1888)
!1891 = !DILocation(line: 3810, column: 3, scope: !1879, inlinedAt: !1888)
!1892 = !DILocation(line: 3807, column: 7, scope: !1879, inlinedAt: !1888)
!1893 = !DILocation(line: 3835, column: 12, scope: !1894, inlinedAt: !1888)
!1894 = distinct !DILexicalBlock(scope: !1895, file: !3, line: 3835, column: 7)
!1895 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 3811, column: 5)
!1896 = !DILocation(line: 0, scope: !1895, inlinedAt: !1888)
!1897 = !DILocation(line: 3835, column: 7, scope: !1894, inlinedAt: !1888)
!1898 = !DILocation(line: 3836, column: 9, scope: !1899, inlinedAt: !1888)
!1899 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 3835, column: 7)
!1900 = !DILocation(line: 3835, column: 7, scope: !1899, inlinedAt: !1888)
!1901 = !DILocation(line: 3837, column: 14, scope: !1895, inlinedAt: !1888)
!1902 = !DILocation(line: 3843, column: 14, scope: !1895, inlinedAt: !1888)
!1903 = !DILocation(line: 3844, column: 7, scope: !1895, inlinedAt: !1888)
!1904 = !DILocation(line: 3868, column: 1, scope: !1879, inlinedAt: !1888)
!1905 = !DILocation(line: 1943, column: 8, scope: !1889)
!1906 = !DILocalVariable(name: "x", arg: 1, scope: !1907, file: !3, line: 493, type: !377)
!1907 = distinct !DISubprogram(name: "eneg", scope: !3, file: !3, line: 493, type: !700, isLocal: true, isDefinition: true, scopeLine: 494, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1908)
!1908 = !{!1906}
!1909 = !DILocation(line: 493, column: 27, scope: !1907, inlinedAt: !1910)
!1910 = distinct !DILocation(line: 1961, column: 2, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1875, file: !3, line: 1960, column: 11)
!1912 = !DILocation(line: 497, column: 7, scope: !1913, inlinedAt: !1910)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !3, line: 497, column: 7)
!1914 = !DILocation(line: 497, column: 7, scope: !1907, inlinedAt: !1910)
!1915 = !DILocation(line: 500, column: 13, scope: !1907, inlinedAt: !1910)
!1916 = !DILocation(line: 501, column: 1, scope: !1907, inlinedAt: !1910)
!1917 = !DILocation(line: 1961, column: 2, scope: !1911)
!1918 = !DILocation(line: 1940, column: 19, scope: !1871)
!1919 = !DILocation(line: 1936, column: 7, scope: !1873)
!1920 = !DILocation(line: 1936, column: 7, scope: !1874)
!1921 = !DILocation(line: 1940, column: 28, scope: !1871)
!1922 = !DILocation(line: 1938, column: 8, scope: !1872)
!1923 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !1924)
!1924 = distinct !DILocation(line: 1958, column: 7, scope: !1875)
!1925 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !1924)
!1926 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !1924)
!1927 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !1924)
!1928 = !DILocation(line: 465, column: 7, scope: !712, inlinedAt: !1924)
!1929 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !1924)
!1930 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !1924)
!1931 = !DILocalVariable(name: "x", arg: 1, scope: !1932, file: !3, line: 573, type: !377)
!1932 = distinct !DISubprogram(name: "einfin", scope: !3, file: !3, line: 573, type: !1933, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1935)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{null, !377, !361}
!1935 = !{!1931, !1936, !1937}
!1936 = !DILocalVariable(name: "ldp", arg: 2, scope: !1932, file: !3, line: 573, type: !361)
!1937 = !DILocalVariable(name: "i", scope: !1932, file: !3, line: 575, type: !8)
!1938 = !DILocation(line: 573, column: 38, scope: !1932, inlinedAt: !1939)
!1939 = distinct !DILocation(line: 1959, column: 7, scope: !1875)
!1940 = !DILocation(line: 573, column: 60, scope: !1932, inlinedAt: !1939)
!1941 = !DILocation(line: 575, column: 16, scope: !1932, inlinedAt: !1939)
!1942 = !DILocation(line: 578, column: 8, scope: !1943, inlinedAt: !1939)
!1943 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 578, column: 3)
!1944 = !DILocation(line: 578, column: 3, scope: !1943, inlinedAt: !1939)
!1945 = !DILocation(line: 579, column: 10, scope: !1946, inlinedAt: !1939)
!1946 = distinct !DILexicalBlock(scope: !1943, file: !3, line: 578, column: 3)
!1947 = !DILocation(line: 578, column: 3, scope: !1946, inlinedAt: !1939)
!1948 = !DILocation(line: 580, column: 6, scope: !1932, inlinedAt: !1939)
!1949 = !DILocation(line: 609, column: 1, scope: !1932, inlinedAt: !1939)
!1950 = !DILocation(line: 1960, column: 14, scope: !1911)
!1951 = !DILocation(line: 1960, column: 11, scope: !1875)
!1952 = distinct !DISubprogram(name: "eisnan", scope: !3, file: !3, line: 545, type: !519, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1953)
!1953 = !{!1954, !1955}
!1954 = !DILocalVariable(name: "x", arg: 1, scope: !1952, file: !3, line: 545, type: !376)
!1955 = !DILocalVariable(name: "i", scope: !1952, file: !3, line: 549, type: !8)
!1956 = !DILocation(line: 545, column: 36, scope: !1952)
!1957 = !DILocation(line: 551, column: 8, scope: !1958)
!1958 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 551, column: 7)
!1959 = !DILocation(line: 551, column: 18, scope: !1958)
!1960 = !DILocation(line: 551, column: 28, scope: !1958)
!1961 = !DILocation(line: 551, column: 7, scope: !1952)
!1962 = !DILocation(line: 0, scope: !1958)
!1963 = !DILocation(line: 549, column: 7, scope: !1952)
!1964 = !DILocation(line: 554, column: 3, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1952, file: !3, line: 554, column: 3)
!1966 = !DILocation(line: 556, column: 11, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1968, file: !3, line: 556, column: 11)
!1968 = distinct !DILexicalBlock(scope: !1969, file: !3, line: 555, column: 5)
!1969 = distinct !DILexicalBlock(scope: !1965, file: !3, line: 554, column: 3)
!1970 = !DILocation(line: 556, column: 16, scope: !1967)
!1971 = !DILocation(line: 556, column: 11, scope: !1968)
!1972 = !DILocation(line: 556, column: 13, scope: !1967)
!1973 = !DILocation(line: 554, column: 3, scope: !1969)
!1974 = !DILocation(line: 0, scope: !1967)
!1975 = !DILocation(line: 561, column: 1, scope: !1952)
!1976 = !DILocation(line: 0, scope: !1952)
!1977 = !DILocation(line: 560, column: 3, scope: !1952)
!1978 = distinct !DISubprogram(name: "_ldcheck", scope: !3, file: !3, line: 2937, type: !1979, isLocal: false, isDefinition: true, scopeLine: 2938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1982)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!8, !1981}
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1982 = !{!1983, !1984, !1985, !1986, !1987}
!1983 = !DILocalVariable(name: "d", arg: 1, scope: !1978, file: !3, line: 2937, type: !1981)
!1984 = !DILocalVariable(name: "e", scope: !1978, file: !3, line: 2939, type: !338)
!1985 = !DILocalVariable(name: "rnd", scope: !1978, file: !3, line: 2940, type: !347)
!1986 = !DILocalVariable(name: "ldp", scope: !1978, file: !3, line: 2941, type: !361)
!1987 = !DILocalVariable(name: "du", scope: !1978, file: !3, line: 2943, type: !368)
!1988 = !DILocation(line: 2937, column: 24, scope: !1978)
!1989 = !DILocation(line: 2939, column: 3, scope: !1978)
!1990 = !DILocation(line: 2939, column: 18, scope: !1978)
!1991 = !DILocation(line: 2943, column: 3, scope: !1978)
!1992 = !DILocation(line: 2947, column: 10, scope: !1978)
!1993 = !{!1994, !1994, i64 0}
!1994 = !{!"long double", !479, i64 0}
!1995 = !DILocation(line: 2947, column: 6, scope: !1978)
!1996 = !DILocation(line: 2947, column: 8, scope: !1978)
!1997 = !DILocation(line: 2953, column: 15, scope: !1978)
!1998 = !DILocation(line: 2953, column: 19, scope: !1978)
!1999 = !DILocation(line: 2953, column: 3, scope: !1978)
!2000 = !DILocation(line: 2958, column: 8, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 2958, column: 7)
!2002 = !DILocation(line: 2958, column: 18, scope: !2001)
!2003 = !DILocation(line: 2958, column: 28, scope: !2001)
!2004 = !DILocation(line: 2958, column: 7, scope: !1978)
!2005 = !DILocation(line: 2961, column: 11, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 2961, column: 11)
!2007 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 2959, column: 5)
!2008 = !DILocation(line: 2961, column: 11, scope: !2007)
!2009 = !DILocation(line: 0, scope: !2006)
!2010 = !DILocation(line: 2964, column: 7, scope: !2007)
!2011 = !DILocation(line: 2967, column: 5, scope: !2001)
!2012 = !DILocation(line: 0, scope: !2001)
!2013 = !DILocation(line: 2968, column: 1, scope: !1978)
!2014 = distinct !DISubprogram(name: "emovi", scope: !3, file: !3, line: 615, type: !583, isLocal: true, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2015)
!2015 = !{!2016, !2017, !2018, !2019, !2020}
!2016 = !DILocalVariable(name: "a", arg: 1, scope: !2014, file: !3, line: 615, type: !376)
!2017 = !DILocalVariable(name: "b", arg: 2, scope: !2014, file: !3, line: 615, type: !377)
!2018 = !DILocalVariable(name: "p", scope: !2014, file: !3, line: 617, type: !376)
!2019 = !DILocalVariable(name: "q", scope: !2014, file: !3, line: 618, type: !377)
!2020 = !DILocalVariable(name: "i", scope: !2014, file: !3, line: 619, type: !8)
!2021 = !DILocation(line: 615, column: 35, scope: !2014)
!2022 = !DILocation(line: 615, column: 58, scope: !2014)
!2023 = !DILocation(line: 618, column: 28, scope: !2014)
!2024 = !DILocation(line: 622, column: 9, scope: !2014)
!2025 = !DILocation(line: 617, column: 35, scope: !2014)
!2026 = !DILocation(line: 624, column: 7, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 624, column: 7)
!2028 = !DILocation(line: 0, scope: !2027)
!2029 = !DILocation(line: 624, column: 7, scope: !2014)
!2030 = !DILocation(line: 629, column: 10, scope: !2014)
!2031 = !DILocation(line: 629, column: 8, scope: !2014)
!2032 = !DILocation(line: 630, column: 5, scope: !2014)
!2033 = !DILocation(line: 630, column: 8, scope: !2014)
!2034 = !DILocation(line: 632, column: 27, scope: !2035)
!2035 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 632, column: 7)
!2036 = !DILocation(line: 632, column: 7, scope: !2014)
!2037 = !DILocation(line: 635, column: 11, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 635, column: 11)
!2039 = distinct !DILexicalBlock(scope: !2035, file: !3, line: 633, column: 5)
!2040 = !DILocation(line: 635, column: 11, scope: !2039)
!2041 = !DILocation(line: 637, column: 6, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 636, column: 2)
!2043 = !DILocation(line: 637, column: 9, scope: !2042)
!2044 = !DILocation(line: 619, column: 7, scope: !2014)
!2045 = !DILocation(line: 638, column: 9, scope: !2046)
!2046 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 638, column: 4)
!2047 = !DILocation(line: 638, column: 4, scope: !2046)
!2048 = !DILocation(line: 639, column: 15, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2046, file: !3, line: 638, column: 4)
!2050 = !DILocation(line: 639, column: 13, scope: !2049)
!2051 = !DILocation(line: 639, column: 8, scope: !2049)
!2052 = !DILocation(line: 639, column: 11, scope: !2049)
!2053 = !DILocation(line: 638, column: 4, scope: !2049)
!2054 = !DILocation(line: 640, column: 4, scope: !2042)
!2055 = !DILocation(line: 643, column: 12, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 643, column: 7)
!2057 = !DILocation(line: 643, column: 7, scope: !2056)
!2058 = !DILocation(line: 644, column: 4, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2056, file: !3, line: 643, column: 7)
!2060 = !DILocation(line: 644, column: 7, scope: !2059)
!2061 = !DILocation(line: 643, column: 7, scope: !2059)
!2062 = !DILocation(line: 645, column: 7, scope: !2039)
!2063 = !DILocation(line: 649, column: 5, scope: !2014)
!2064 = !DILocation(line: 649, column: 8, scope: !2014)
!2065 = !DILocation(line: 651, column: 8, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !2014, file: !3, line: 651, column: 3)
!2067 = !DILocation(line: 651, column: 3, scope: !2066)
!2068 = !DILocation(line: 652, column: 14, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 651, column: 3)
!2070 = !DILocation(line: 652, column: 12, scope: !2069)
!2071 = !DILocation(line: 652, column: 7, scope: !2069)
!2072 = !DILocation(line: 652, column: 10, scope: !2069)
!2073 = !DILocation(line: 651, column: 3, scope: !2069)
!2074 = !DILocation(line: 654, column: 6, scope: !2014)
!2075 = !DILocation(line: 655, column: 1, scope: !2014)
!2076 = !DILocation(line: 0, scope: !2042)
!2077 = distinct !DISubprogram(name: "emovo", scope: !3, file: !3, line: 662, type: !412, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2078)
!2078 = !{!2079, !2080, !2081, !2082, !2083, !2084}
!2079 = !DILocalVariable(name: "a", arg: 1, scope: !2077, file: !3, line: 662, type: !377)
!2080 = !DILocalVariable(name: "b", arg: 2, scope: !2077, file: !3, line: 662, type: !377)
!2081 = !DILocalVariable(name: "ldp", arg: 3, scope: !2077, file: !3, line: 662, type: !361)
!2082 = !DILocalVariable(name: "p", scope: !2077, file: !3, line: 664, type: !377)
!2083 = !DILocalVariable(name: "q", scope: !2077, file: !3, line: 664, type: !377)
!2084 = !DILocalVariable(name: "i", scope: !2077, file: !3, line: 665, type: !11)
!2085 = !DILocation(line: 662, column: 28, scope: !2077)
!2086 = !DILocation(line: 662, column: 51, scope: !2077)
!2087 = !DILocation(line: 662, column: 64, scope: !2077)
!2088 = !DILocation(line: 664, column: 28, scope: !2077)
!2089 = !DILocation(line: 668, column: 9, scope: !2077)
!2090 = !DILocation(line: 664, column: 32, scope: !2077)
!2091 = !DILocation(line: 670, column: 9, scope: !2077)
!2092 = !DILocation(line: 670, column: 7, scope: !2077)
!2093 = !DILocation(line: 665, column: 18, scope: !2077)
!2094 = !DILocation(line: 671, column: 7, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 671, column: 7)
!2096 = !DILocation(line: 0, scope: !2095)
!2097 = !DILocation(line: 671, column: 7, scope: !2077)
!2098 = !DILocation(line: 672, column: 17, scope: !2095)
!2099 = !DILocation(line: 676, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 676, column: 7)
!2101 = !DILocation(line: 676, column: 16, scope: !2100)
!2102 = !DILocation(line: 676, column: 7, scope: !2077)
!2103 = !DILocalVariable(name: "x", arg: 1, scope: !2104, file: !3, line: 741, type: !377)
!2104 = distinct !DISubprogram(name: "eiisnan", scope: !3, file: !3, line: 741, type: !2105, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2107)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!8, !377}
!2107 = !{!2103, !2108}
!2108 = !DILocalVariable(name: "i", scope: !2104, file: !3, line: 743, type: !8)
!2109 = !DILocation(line: 741, column: 30, scope: !2104, inlinedAt: !2110)
!2110 = distinct !DILocation(line: 679, column: 11, scope: !2111)
!2111 = distinct !DILexicalBlock(scope: !2112, file: !3, line: 679, column: 11)
!2112 = distinct !DILexicalBlock(scope: !2100, file: !3, line: 677, column: 5)
!2113 = !DILocation(line: 745, column: 7, scope: !2104, inlinedAt: !2110)
!2114 = !DILocation(line: 743, column: 7, scope: !2104, inlinedAt: !2110)
!2115 = !DILocation(line: 747, column: 12, scope: !2116, inlinedAt: !2110)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 747, column: 7)
!2117 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 746, column: 5)
!2118 = distinct !DILexicalBlock(scope: !2104, file: !3, line: 745, column: 7)
!2119 = !DILocation(line: 747, column: 7, scope: !2116, inlinedAt: !2110)
!2120 = !DILocation(line: 749, column: 8, scope: !2121, inlinedAt: !2110)
!2121 = distinct !DILexicalBlock(scope: !2122, file: !3, line: 749, column: 8)
!2122 = distinct !DILexicalBlock(scope: !2123, file: !3, line: 748, column: 2)
!2123 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 747, column: 7)
!2124 = !DILocation(line: 749, column: 13, scope: !2121, inlinedAt: !2110)
!2125 = !DILocation(line: 749, column: 8, scope: !2122, inlinedAt: !2110)
!2126 = !DILocation(line: 747, column: 7, scope: !2123, inlinedAt: !2110)
!2127 = !DILocation(line: 750, column: 6, scope: !2121, inlinedAt: !2110)
!2128 = !DILocation(line: 754, column: 1, scope: !2104, inlinedAt: !2110)
!2129 = !DILocation(line: 679, column: 11, scope: !2112)
!2130 = !DILocation(line: 3805, column: 27, scope: !1879, inlinedAt: !2131)
!2131 = distinct !DILocation(line: 681, column: 4, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2111, file: !3, line: 680, column: 2)
!2133 = !DILocation(line: 3805, column: 36, scope: !1879, inlinedAt: !2131)
!2134 = !DILocation(line: 3810, column: 3, scope: !1879, inlinedAt: !2131)
!2135 = !DILocation(line: 3807, column: 7, scope: !1879, inlinedAt: !2131)
!2136 = !DILocation(line: 3835, column: 12, scope: !1894, inlinedAt: !2131)
!2137 = !DILocation(line: 0, scope: !1895, inlinedAt: !2131)
!2138 = !DILocation(line: 3835, column: 7, scope: !1894, inlinedAt: !2131)
!2139 = !DILocation(line: 3836, column: 9, scope: !1899, inlinedAt: !2131)
!2140 = !DILocation(line: 3835, column: 7, scope: !1899, inlinedAt: !2131)
!2141 = !DILocation(line: 3837, column: 14, scope: !1895, inlinedAt: !2131)
!2142 = !DILocation(line: 3843, column: 14, scope: !1895, inlinedAt: !2131)
!2143 = !DILocation(line: 3844, column: 7, scope: !1895, inlinedAt: !2131)
!2144 = !DILocation(line: 682, column: 4, scope: !2132)
!2145 = !DILocation(line: 753, column: 3, scope: !2104, inlinedAt: !2110)
!2146 = !DILocation(line: 573, column: 38, scope: !1932, inlinedAt: !2147)
!2147 = distinct !DILocation(line: 685, column: 7, scope: !2112)
!2148 = !DILocation(line: 573, column: 60, scope: !1932, inlinedAt: !2147)
!2149 = !DILocation(line: 575, column: 16, scope: !1932, inlinedAt: !2147)
!2150 = !DILocation(line: 578, column: 8, scope: !1943, inlinedAt: !2147)
!2151 = !DILocation(line: 578, column: 3, scope: !1943, inlinedAt: !2147)
!2152 = !DILocation(line: 579, column: 7, scope: !1946, inlinedAt: !2147)
!2153 = !DILocation(line: 579, column: 10, scope: !1946, inlinedAt: !2147)
!2154 = !DILocation(line: 578, column: 3, scope: !1946, inlinedAt: !2147)
!2155 = !DILocation(line: 580, column: 6, scope: !1932, inlinedAt: !2147)
!2156 = !DILocation(line: 686, column: 7, scope: !2112)
!2157 = !DILocation(line: 690, column: 3, scope: !2077)
!2158 = !DILocation(line: 692, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2077, file: !3, line: 692, column: 3)
!2160 = !DILocation(line: 692, column: 3, scope: !2159)
!2161 = !DILocation(line: 693, column: 14, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2159, file: !3, line: 692, column: 3)
!2163 = !DILocation(line: 693, column: 12, scope: !2162)
!2164 = !DILocation(line: 693, column: 7, scope: !2162)
!2165 = !DILocation(line: 693, column: 10, scope: !2162)
!2166 = !DILocation(line: 692, column: 3, scope: !2162)
!2167 = !DILocation(line: 694, column: 1, scope: !2077)
!2168 = !DILocation(line: 0, scope: !2132)
!2169 = distinct !DISubprogram(name: "ecmp", scope: !3, file: !3, line: 2418, type: !2170, isLocal: true, isDefinition: true, scopeLine: 2419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2172)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!8, !376, !376}
!2172 = !{!2173, !2174, !2175, !2176, !2177, !2178, !2179, !2180}
!2173 = !DILocalVariable(name: "a", arg: 1, scope: !2169, file: !3, line: 2418, type: !376)
!2174 = !DILocalVariable(name: "b", arg: 2, scope: !2169, file: !3, line: 2418, type: !376)
!2175 = !DILocalVariable(name: "ai", scope: !2169, file: !3, line: 2420, type: !338)
!2176 = !DILocalVariable(name: "bi", scope: !2169, file: !3, line: 2420, type: !338)
!2177 = !DILocalVariable(name: "p", scope: !2169, file: !3, line: 2421, type: !377)
!2178 = !DILocalVariable(name: "q", scope: !2169, file: !3, line: 2421, type: !377)
!2179 = !DILocalVariable(name: "i", scope: !2169, file: !3, line: 2422, type: !8)
!2180 = !DILocalVariable(name: "msign", scope: !2169, file: !3, line: 2423, type: !8)
!2181 = !DILocation(line: 2418, column: 34, scope: !2169)
!2182 = !DILocation(line: 2418, column: 64, scope: !2169)
!2183 = !DILocation(line: 2420, column: 3, scope: !2169)
!2184 = !DILocation(line: 2420, column: 18, scope: !2169)
!2185 = !DILocation(line: 2420, column: 26, scope: !2169)
!2186 = !DILocation(line: 2426, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2426, column: 7)
!2188 = !DILocation(line: 2426, column: 18, scope: !2187)
!2189 = !DILocation(line: 2426, column: 21, scope: !2187)
!2190 = !DILocation(line: 2426, column: 7, scope: !2169)
!2191 = !DILocation(line: 2427, column: 5, scope: !2187)
!2192 = !DILocation(line: 2429, column: 13, scope: !2169)
!2193 = !DILocation(line: 2429, column: 3, scope: !2169)
!2194 = !DILocation(line: 2421, column: 28, scope: !2169)
!2195 = !DILocation(line: 2431, column: 13, scope: !2169)
!2196 = !DILocation(line: 2431, column: 3, scope: !2169)
!2197 = !DILocation(line: 2421, column: 32, scope: !2169)
!2198 = !DILocation(line: 2434, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2434, column: 7)
!2200 = !DILocation(line: 2434, column: 13, scope: !2199)
!2201 = !DILocation(line: 2434, column: 10, scope: !2199)
!2202 = !DILocation(line: 2434, column: 7, scope: !2169)
!2203 = !DILocation(line: 2422, column: 16, scope: !2169)
!2204 = !DILocation(line: 2437, column: 12, scope: !2205)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 2437, column: 7)
!2206 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 2435, column: 5)
!2207 = !DILocation(line: 2437, column: 7, scope: !2205)
!2208 = !DILocation(line: 2439, column: 8, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 2439, column: 8)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 2438, column: 2)
!2211 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 2437, column: 7)
!2212 = !DILocation(line: 2439, column: 14, scope: !2209)
!2213 = !DILocation(line: 2439, column: 8, scope: !2210)
!2214 = !DILocation(line: 2441, column: 8, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 2441, column: 8)
!2216 = !DILocation(line: 2441, column: 14, scope: !2215)
!2217 = !DILocation(line: 2441, column: 8, scope: !2210)
!2218 = !DILocation(line: 2437, column: 7, scope: !2211)
!2219 = !DILocation(line: 2446, column: 14, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 2446, column: 11)
!2221 = !DILocation(line: 2446, column: 11, scope: !2206)
!2222 = !DILocation(line: 0, scope: !2220)
!2223 = !DILocation(line: 2447, column: 2, scope: !2220)
!2224 = !DILocation(line: 2452, column: 10, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2452, column: 7)
!2226 = !DILocation(line: 2452, column: 7, scope: !2169)
!2227 = !DILocation(line: 2453, column: 5, scope: !2225)
!2228 = !DILocation(line: 2423, column: 7, scope: !2169)
!2229 = !DILocation(line: 2457, column: 3, scope: !2169)
!2230 = !DILocation(line: 2459, column: 11, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2458, column: 5)
!2232 = !DILocation(line: 2459, column: 21, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 2459, column: 11)
!2234 = !DILocation(line: 2459, column: 13, scope: !2233)
!2235 = !DILocation(line: 2463, column: 5, scope: !2231)
!2236 = !DILocation(line: 2459, column: 11, scope: !2233)
!2237 = !DILocation(line: 2459, column: 19, scope: !2233)
!2238 = !DILocation(line: 2459, column: 16, scope: !2233)
!2239 = !DILocation(line: 2472, column: 16, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 2472, column: 7)
!2241 = !DILocation(line: 2472, column: 7, scope: !2240)
!2242 = !DILocation(line: 2472, column: 14, scope: !2240)
!2243 = !DILocation(line: 2472, column: 7, scope: !2169)
!2244 = !DILocation(line: 2473, column: 5, scope: !2240)
!2245 = !DILocation(line: 2475, column: 13, scope: !2240)
!2246 = !DILocation(line: 2475, column: 5, scope: !2240)
!2247 = !DILocation(line: 0, scope: !2169)
!2248 = !DILocation(line: 2476, column: 1, scope: !2169)
!2249 = !DILocation(line: 2466, column: 3, scope: !2169)
!2250 = !DILocation(line: 2444, column: 7, scope: !2206)
!2251 = distinct !DISubprogram(name: "ediv", scope: !3, file: !3, line: 1566, type: !396, isLocal: true, isDefinition: true, scopeLine: 1568, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2252)
!2252 = !{!2253, !2254, !2255, !2256, !2257, !2258, !2259, !2260, !2261, !2262}
!2253 = !DILocalVariable(name: "a", arg: 1, scope: !2251, file: !3, line: 1566, type: !376)
!2254 = !DILocalVariable(name: "b", arg: 2, scope: !2251, file: !3, line: 1566, type: !376)
!2255 = !DILocalVariable(name: "c", arg: 3, scope: !2251, file: !3, line: 1567, type: !377)
!2256 = !DILocalVariable(name: "ldp", arg: 4, scope: !2251, file: !3, line: 1567, type: !361)
!2257 = !DILocalVariable(name: "ai", scope: !2251, file: !3, line: 1569, type: !338)
!2258 = !DILocalVariable(name: "bi", scope: !2251, file: !3, line: 1569, type: !338)
!2259 = !DILocalVariable(name: "i", scope: !2251, file: !3, line: 1570, type: !8)
!2260 = !DILocalVariable(name: "lt", scope: !2251, file: !3, line: 1571, type: !12)
!2261 = !DILocalVariable(name: "lta", scope: !2251, file: !3, line: 1571, type: !12)
!2262 = !DILocalVariable(name: "ltb", scope: !2251, file: !3, line: 1571, type: !12)
!2263 = !DILocalVariable(name: "tprod", scope: !2264, file: !3, line: 1057, type: !1793)
!2264 = distinct !DISubprogram(name: "edivm", scope: !3, file: !3, line: 1051, type: !2265, isLocal: true, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2267)
!2265 = !DISubroutineType(types: !2266)
!2266 = !{!8, !377, !377, !361}
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2263, !2277}
!2268 = !DILocalVariable(name: "den", arg: 1, scope: !2264, file: !3, line: 1051, type: !377)
!2269 = !DILocalVariable(name: "num", arg: 2, scope: !2264, file: !3, line: 1051, type: !377)
!2270 = !DILocalVariable(name: "ldp", arg: 3, scope: !2264, file: !3, line: 1051, type: !361)
!2271 = !DILocalVariable(name: "i", scope: !2264, file: !3, line: 1053, type: !8)
!2272 = !DILocalVariable(name: "p", scope: !2264, file: !3, line: 1054, type: !377)
!2273 = !DILocalVariable(name: "tnum", scope: !2264, file: !3, line: 1055, type: !10)
!2274 = !DILocalVariable(name: "j", scope: !2264, file: !3, line: 1056, type: !11)
!2275 = !DILocalVariable(name: "tdenm", scope: !2264, file: !3, line: 1056, type: !11)
!2276 = !DILocalVariable(name: "tquot", scope: !2264, file: !3, line: 1056, type: !11)
!2277 = !DILocalVariable(name: "equot", scope: !2264, file: !3, line: 1058, type: !377)
!2278 = !DILocation(line: 1057, column: 18, scope: !2264, inlinedAt: !2279)
!2279 = distinct !DILocation(line: 1650, column: 7, scope: !2251)
!2280 = !DILocation(line: 1566, column: 34, scope: !2251)
!2281 = !DILocation(line: 1566, column: 64, scope: !2251)
!2282 = !DILocation(line: 1567, column: 27, scope: !2251)
!2283 = !DILocation(line: 1567, column: 40, scope: !2251)
!2284 = !DILocation(line: 1569, column: 3, scope: !2251)
!2285 = !DILocation(line: 1569, column: 18, scope: !2251)
!2286 = !DILocation(line: 1569, column: 26, scope: !2251)
!2287 = !DILocation(line: 1575, column: 7, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1575, column: 7)
!2289 = !DILocation(line: 1575, column: 7, scope: !2251)
!2290 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !2291)
!2291 = distinct !DILocation(line: 1577, column: 7, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2288, file: !3, line: 1576, column: 5)
!2293 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !2291)
!2294 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !2291)
!2295 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !2291)
!2296 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !2291)
!2297 = !DILocation(line: 481, column: 14, scope: !596, inlinedAt: !2291)
!2298 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !2291)
!2299 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !2291)
!2300 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !2291)
!2301 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !2291)
!2302 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !2291)
!2303 = !DILocation(line: 1578, column: 7, scope: !2292)
!2304 = !DILocation(line: 1580, column: 7, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1580, column: 7)
!2306 = !DILocation(line: 1580, column: 7, scope: !2251)
!2307 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !2308)
!2308 = distinct !DILocation(line: 1582, column: 7, scope: !2309)
!2309 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 1581, column: 5)
!2310 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !2308)
!2311 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !2308)
!2312 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !2308)
!2313 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !2308)
!2314 = !DILocation(line: 481, column: 14, scope: !596, inlinedAt: !2308)
!2315 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !2308)
!2316 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !2308)
!2317 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !2308)
!2318 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !2308)
!2319 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !2308)
!2320 = !DILocation(line: 1583, column: 7, scope: !2309)
!2321 = !DILocation(line: 1586, column: 9, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1586, column: 7)
!2323 = !DILocation(line: 1586, column: 25, scope: !2322)
!2324 = !DILocation(line: 1586, column: 31, scope: !2322)
!2325 = !DILocation(line: 1586, column: 35, scope: !2322)
!2326 = !DILocation(line: 1586, column: 51, scope: !2322)
!2327 = !DILocation(line: 1587, column: 7, scope: !2322)
!2328 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2329)
!2329 = distinct !DILocation(line: 1587, column: 11, scope: !2322)
!2330 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2329)
!2331 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2329)
!2332 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2329)
!2333 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2329)
!2334 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2329)
!2335 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2329)
!2336 = !DILocation(line: 1587, column: 22, scope: !2322)
!2337 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2329)
!2338 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2329)
!2339 = !DILocation(line: 0, scope: !819, inlinedAt: !2329)
!2340 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2341)
!2341 = distinct !DILocation(line: 1587, column: 25, scope: !2322)
!2342 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2341)
!2343 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2341)
!2344 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2341)
!2345 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2341)
!2346 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2341)
!2347 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2341)
!2348 = !DILocation(line: 1586, column: 7, scope: !2251)
!2349 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2341)
!2350 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2341)
!2351 = !DILocation(line: 0, scope: !819, inlinedAt: !2341)
!2352 = !DILocation(line: 3805, column: 27, scope: !1879, inlinedAt: !2353)
!2353 = distinct !DILocation(line: 1590, column: 7, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 1588, column: 5)
!2355 = !DILocation(line: 3805, column: 36, scope: !1879, inlinedAt: !2353)
!2356 = !DILocation(line: 3810, column: 3, scope: !1879, inlinedAt: !2353)
!2357 = !DILocation(line: 3807, column: 7, scope: !1879, inlinedAt: !2353)
!2358 = !DILocation(line: 3835, column: 12, scope: !1894, inlinedAt: !2353)
!2359 = !DILocation(line: 0, scope: !1895, inlinedAt: !2353)
!2360 = !DILocation(line: 3835, column: 7, scope: !1894, inlinedAt: !2353)
!2361 = !DILocation(line: 3836, column: 9, scope: !1899, inlinedAt: !2353)
!2362 = !DILocation(line: 3835, column: 7, scope: !1899, inlinedAt: !2353)
!2363 = !DILocation(line: 3837, column: 14, scope: !1895, inlinedAt: !2353)
!2364 = !DILocation(line: 3843, column: 14, scope: !1895, inlinedAt: !2353)
!2365 = !DILocation(line: 3844, column: 7, scope: !1895, inlinedAt: !2353)
!2366 = !DILocation(line: 3868, column: 1, scope: !1879, inlinedAt: !2353)
!2367 = !DILocation(line: 1591, column: 7, scope: !2354)
!2368 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2369)
!2369 = distinct !DILocation(line: 1596, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1596, column: 7)
!2371 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2369)
!2372 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2369)
!2373 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2369)
!2374 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2369)
!2375 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2369)
!2376 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2369)
!2377 = !DILocation(line: 1596, column: 7, scope: !2251)
!2378 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2369)
!2379 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2369)
!2380 = !DILocation(line: 0, scope: !819, inlinedAt: !2369)
!2381 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2382)
!2382 = distinct !DILocation(line: 1598, column: 11, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1598, column: 11)
!2384 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 1597, column: 5)
!2385 = !DILocation(line: 513, column: 7, scope: !526, inlinedAt: !2382)
!2386 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2382)
!2387 = !DILocation(line: 514, column: 5, scope: !526, inlinedAt: !2382)
!2388 = !DILocation(line: 516, column: 7, scope: !532, inlinedAt: !2382)
!2389 = !DILocation(line: 516, column: 7, scope: !518, inlinedAt: !2382)
!2390 = !DILocation(line: 0, scope: !532, inlinedAt: !2382)
!2391 = !DILocation(line: 517, column: 5, scope: !532, inlinedAt: !2382)
!2392 = !DILocation(line: 520, column: 1, scope: !518, inlinedAt: !2382)
!2393 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2394)
!2394 = distinct !DILocation(line: 1598, column: 24, scope: !2383)
!2395 = !DILocation(line: 513, column: 7, scope: !526, inlinedAt: !2394)
!2396 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2394)
!2397 = !DILocation(line: 514, column: 5, scope: !526, inlinedAt: !2394)
!2398 = !DILocation(line: 516, column: 7, scope: !532, inlinedAt: !2394)
!2399 = !DILocation(line: 516, column: 7, scope: !518, inlinedAt: !2394)
!2400 = !DILocation(line: 0, scope: !532, inlinedAt: !2394)
!2401 = !DILocation(line: 517, column: 5, scope: !532, inlinedAt: !2394)
!2402 = !DILocation(line: 520, column: 1, scope: !518, inlinedAt: !2394)
!2403 = !DILocation(line: 1598, column: 22, scope: !2383)
!2404 = !DILocation(line: 0, scope: !2383)
!2405 = !DILocation(line: 1598, column: 11, scope: !2384)
!2406 = !DILocation(line: 573, column: 38, scope: !1932, inlinedAt: !2407)
!2407 = distinct !DILocation(line: 1602, column: 7, scope: !2384)
!2408 = !DILocation(line: 573, column: 60, scope: !1932, inlinedAt: !2407)
!2409 = !DILocation(line: 575, column: 16, scope: !1932, inlinedAt: !2407)
!2410 = !DILocation(line: 578, column: 8, scope: !1943, inlinedAt: !2407)
!2411 = !DILocation(line: 578, column: 3, scope: !1943, inlinedAt: !2407)
!2412 = !DILocation(line: 579, column: 7, scope: !1946, inlinedAt: !2407)
!2413 = !DILocation(line: 579, column: 10, scope: !1946, inlinedAt: !2407)
!2414 = !DILocation(line: 578, column: 3, scope: !1946, inlinedAt: !2407)
!2415 = !DILocation(line: 580, column: 6, scope: !1932, inlinedAt: !2407)
!2416 = !DILocation(line: 609, column: 1, scope: !1932, inlinedAt: !2407)
!2417 = !DILocation(line: 1603, column: 7, scope: !2384)
!2418 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2419)
!2419 = distinct !DILocation(line: 1605, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1605, column: 7)
!2421 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2419)
!2422 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2419)
!2423 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2419)
!2424 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2419)
!2425 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2419)
!2426 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2419)
!2427 = !DILocation(line: 1605, column: 7, scope: !2251)
!2428 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2419)
!2429 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2419)
!2430 = !DILocation(line: 0, scope: !819, inlinedAt: !2419)
!2431 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 1607, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 1606, column: 5)
!2434 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !2432)
!2435 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !2432)
!2436 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !2432)
!2437 = !DILocation(line: 465, column: 7, scope: !712, inlinedAt: !2432)
!2438 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !2432)
!2439 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !2432)
!2440 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !2432)
!2441 = !DILocation(line: 1608, column: 7, scope: !2433)
!2442 = !DILocation(line: 1611, column: 13, scope: !2251)
!2443 = !DILocation(line: 1611, column: 3, scope: !2251)
!2444 = !DILocation(line: 1612, column: 13, scope: !2251)
!2445 = !DILocation(line: 1612, column: 3, scope: !2251)
!2446 = !DILocation(line: 1613, column: 9, scope: !2251)
!2447 = !DILocation(line: 1571, column: 12, scope: !2251)
!2448 = !DILocation(line: 1614, column: 9, scope: !2251)
!2449 = !DILocation(line: 1571, column: 17, scope: !2251)
!2450 = !DILocation(line: 1615, column: 13, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1615, column: 7)
!2452 = !DILocation(line: 1615, column: 7, scope: !2251)
!2453 = !DILocation(line: 1621, column: 15, scope: !2454)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !3, line: 1620, column: 6)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !3, line: 1619, column: 8)
!2456 = distinct !DILexicalBlock(scope: !2457, file: !3, line: 1618, column: 2)
!2457 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 1617, column: 7)
!2458 = distinct !DILexicalBlock(scope: !2459, file: !3, line: 1617, column: 7)
!2459 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 1616, column: 5)
!2460 = !DILocation(line: 1621, column: 12, scope: !2454)
!2461 = !DILocation(line: 1622, column: 8, scope: !2454)
!2462 = !DILocation(line: 1630, column: 7, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1630, column: 7)
!2464 = !DILocation(line: 1570, column: 7, scope: !2251)
!2465 = !DILocation(line: 1617, column: 12, scope: !2458)
!2466 = !DILocation(line: 1617, column: 7, scope: !2458)
!2467 = !DILocation(line: 1619, column: 8, scope: !2456)
!2468 = !DILocation(line: 1617, column: 7, scope: !2457)
!2469 = !DILocation(line: 1619, column: 8, scope: !2455)
!2470 = !DILocation(line: 1619, column: 14, scope: !2455)
!2471 = !DILocation(line: 0, scope: !2251)
!2472 = !DILocation(line: 1630, column: 13, scope: !2463)
!2473 = !DILocation(line: 1630, column: 7, scope: !2251)
!2474 = !DILocation(line: 1636, column: 15, scope: !2475)
!2475 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 1635, column: 6)
!2476 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 1634, column: 8)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 1633, column: 2)
!2478 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 1632, column: 7)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1632, column: 7)
!2480 = distinct !DILexicalBlock(scope: !2463, file: !3, line: 1631, column: 5)
!2481 = !DILocation(line: 1636, column: 12, scope: !2475)
!2482 = !DILocation(line: 1637, column: 8, scope: !2475)
!2483 = !DILocation(line: 1632, column: 12, scope: !2479)
!2484 = !DILocation(line: 1632, column: 7, scope: !2479)
!2485 = !DILocation(line: 1634, column: 8, scope: !2477)
!2486 = !DILocation(line: 1632, column: 7, scope: !2478)
!2487 = !DILocation(line: 1634, column: 8, scope: !2476)
!2488 = !DILocation(line: 1634, column: 14, scope: !2476)
!2489 = !DILocation(line: 1051, column: 28, scope: !2264, inlinedAt: !2279)
!2490 = !DILocation(line: 1051, column: 53, scope: !2264, inlinedAt: !2279)
!2491 = !DILocation(line: 1051, column: 68, scope: !2264, inlinedAt: !2279)
!2492 = !DILocation(line: 1057, column: 3, scope: !2264, inlinedAt: !2279)
!2493 = !DILocation(line: 1058, column: 27, scope: !2264, inlinedAt: !2279)
!2494 = !DILocation(line: 1058, column: 19, scope: !2264, inlinedAt: !2279)
!2495 = !DILocation(line: 1054, column: 28, scope: !2264, inlinedAt: !2279)
!2496 = !DILocation(line: 1061, column: 10, scope: !2264, inlinedAt: !2279)
!2497 = !DILocation(line: 1061, column: 5, scope: !2264, inlinedAt: !2279)
!2498 = !DILocation(line: 1061, column: 8, scope: !2264, inlinedAt: !2279)
!2499 = !DILocation(line: 1062, column: 10, scope: !2264, inlinedAt: !2279)
!2500 = !DILocation(line: 1062, column: 5, scope: !2264, inlinedAt: !2279)
!2501 = !DILocation(line: 1062, column: 8, scope: !2264, inlinedAt: !2279)
!2502 = !DILocation(line: 1053, column: 7, scope: !2264, inlinedAt: !2279)
!2503 = !DILocation(line: 1064, column: 8, scope: !2504, inlinedAt: !2279)
!2504 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1064, column: 3)
!2505 = !DILocation(line: 1064, column: 3, scope: !2504, inlinedAt: !2279)
!2506 = !DILocation(line: 1066, column: 9, scope: !2507, inlinedAt: !2279)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 1065, column: 5)
!2508 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1064, column: 3)
!2509 = !DILocation(line: 1066, column: 12, scope: !2507, inlinedAt: !2279)
!2510 = !DILocation(line: 1064, column: 3, scope: !2508, inlinedAt: !2279)
!2511 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !2512)
!2512 = distinct !DILocation(line: 1068, column: 3, scope: !2264, inlinedAt: !2279)
!2513 = !DILocation(line: 817, column: 5, scope: !1138, inlinedAt: !2512)
!2514 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !2512)
!2515 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !2512)
!2516 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !2512)
!2517 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !2512)
!2518 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !2512)
!2519 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !2512)
!2520 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !2512)
!2521 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !2512)
!2522 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !2512)
!2523 = !DILocation(line: 0, scope: !1138, inlinedAt: !2512)
!2524 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !2512)
!2525 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !2512)
!2526 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !2512)
!2527 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !2512)
!2528 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !2512)
!2529 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !2512)
!2530 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !2512)
!2531 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !2512)
!2532 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !2512)
!2533 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !2512)
!2534 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !2512)
!2535 = !DILocation(line: 1069, column: 11, scope: !2264, inlinedAt: !2279)
!2536 = !DILocation(line: 1056, column: 21, scope: !2264, inlinedAt: !2279)
!2537 = !DILocation(line: 1070, column: 8, scope: !2538, inlinedAt: !2279)
!2538 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1070, column: 3)
!2539 = !DILocation(line: 1070, column: 3, scope: !2538, inlinedAt: !2279)
!2540 = !DILocation(line: 1073, column: 32, scope: !2541, inlinedAt: !2279)
!2541 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 1071, column: 5)
!2542 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 1070, column: 3)
!2543 = !DILocation(line: 1073, column: 49, scope: !2541, inlinedAt: !2279)
!2544 = !DILocation(line: 1073, column: 16, scope: !2541, inlinedAt: !2279)
!2545 = !DILocation(line: 1073, column: 40, scope: !2541, inlinedAt: !2279)
!2546 = !DILocation(line: 1073, column: 47, scope: !2541, inlinedAt: !2279)
!2547 = !DILocation(line: 1055, column: 17, scope: !2264, inlinedAt: !2279)
!2548 = !DILocation(line: 1076, column: 30, scope: !2549, inlinedAt: !2279)
!2549 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1076, column: 11)
!2550 = !DILocation(line: 1076, column: 11, scope: !2541, inlinedAt: !2279)
!2551 = !DILocation(line: 1079, column: 15, scope: !2549, inlinedAt: !2279)
!2552 = !DILocation(line: 1079, column: 10, scope: !2549, inlinedAt: !2279)
!2553 = !DILocation(line: 1056, column: 28, scope: !2264, inlinedAt: !2279)
!2554 = !DILocation(line: 0, scope: !2549, inlinedAt: !2279)
!2555 = !DILocation(line: 1088, column: 7, scope: !2541, inlinedAt: !2279)
!2556 = !DILocation(line: 1090, column: 11, scope: !2557, inlinedAt: !2279)
!2557 = distinct !DILexicalBlock(scope: !2541, file: !3, line: 1090, column: 11)
!2558 = !DILocation(line: 1090, column: 30, scope: !2557, inlinedAt: !2279)
!2559 = !DILocation(line: 1090, column: 11, scope: !2541, inlinedAt: !2279)
!2560 = !DILocation(line: 1092, column: 10, scope: !2561, inlinedAt: !2279)
!2561 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 1091, column: 2)
!2562 = !DILocation(line: 1093, column: 4, scope: !2561, inlinedAt: !2279)
!2563 = !DILocation(line: 1094, column: 8, scope: !2564, inlinedAt: !2279)
!2564 = distinct !DILexicalBlock(scope: !2561, file: !3, line: 1094, column: 8)
!2565 = !DILocation(line: 1094, column: 27, scope: !2564, inlinedAt: !2279)
!2566 = !DILocation(line: 1094, column: 8, scope: !2561, inlinedAt: !2279)
!2567 = !DILocation(line: 1096, column: 14, scope: !2568, inlinedAt: !2279)
!2568 = distinct !DILexicalBlock(scope: !2564, file: !3, line: 1095, column: 6)
!2569 = !DILocation(line: 1097, column: 8, scope: !2568, inlinedAt: !2279)
!2570 = !DILocation(line: 1098, column: 6, scope: !2568, inlinedAt: !2279)
!2571 = !DILocation(line: 1109, column: 7, scope: !2541, inlinedAt: !2279)
!2572 = !DILocation(line: 1119, column: 7, scope: !2541, inlinedAt: !2279)
!2573 = !DILocation(line: 1119, column: 16, scope: !2541, inlinedAt: !2279)
!2574 = !DILocalVariable(name: "x", arg: 1, scope: !2575, file: !3, line: 911, type: !377)
!2575 = distinct !DISubprogram(name: "eshup6", scope: !3, file: !3, line: 911, type: !700, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2576)
!2576 = !{!2574, !2577, !2578}
!2577 = !DILocalVariable(name: "i", scope: !2575, file: !3, line: 913, type: !8)
!2578 = !DILocalVariable(name: "p", scope: !2575, file: !3, line: 914, type: !377)
!2579 = !DILocation(line: 911, column: 38, scope: !2575, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 1120, column: 7, scope: !2541, inlinedAt: !2279)
!2581 = !DILocation(line: 914, column: 28, scope: !2575, inlinedAt: !2580)
!2582 = !DILocation(line: 913, column: 7, scope: !2575, inlinedAt: !2580)
!2583 = !DILocation(line: 919, column: 8, scope: !2584, inlinedAt: !2580)
!2584 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 919, column: 3)
!2585 = !DILocation(line: 919, column: 3, scope: !2584, inlinedAt: !2580)
!2586 = !DILocation(line: 920, column: 12, scope: !2587, inlinedAt: !2580)
!2587 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 919, column: 3)
!2588 = !DILocation(line: 920, column: 10, scope: !2587, inlinedAt: !2580)
!2589 = !DILocation(line: 919, column: 3, scope: !2587, inlinedAt: !2580)
!2590 = !DILocation(line: 922, column: 6, scope: !2575, inlinedAt: !2580)
!2591 = !DILocation(line: 923, column: 1, scope: !2575, inlinedAt: !2580)
!2592 = !DILocation(line: 1070, column: 24, scope: !2542, inlinedAt: !2279)
!2593 = !DILocation(line: 1070, column: 3, scope: !2542, inlinedAt: !2279)
!2594 = !DILocation(line: 1070, column: 17, scope: !2542, inlinedAt: !2279)
!2595 = distinct !{!2595, !2596, !2597}
!2596 = !DILocation(line: 1070, column: 3, scope: !2538)
!2597 = !DILocation(line: 1121, column: 5, scope: !2538)
!2598 = !DILocation(line: 1056, column: 18, scope: !2264, inlinedAt: !2279)
!2599 = !DILocation(line: 1125, column: 8, scope: !2600, inlinedAt: !2279)
!2600 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1125, column: 3)
!2601 = !DILocation(line: 1125, column: 3, scope: !2600, inlinedAt: !2279)
!2602 = !DILocation(line: 1125, column: 3, scope: !2603, inlinedAt: !2279)
!2603 = distinct !DILexicalBlock(scope: !2600, file: !3, line: 1125, column: 3)
!2604 = !DILocation(line: 1127, column: 9, scope: !2605, inlinedAt: !2279)
!2605 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 1126, column: 5)
!2606 = !DILocation(line: 1129, column: 7, scope: !2607, inlinedAt: !2279)
!2607 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1129, column: 7)
!2608 = !DILocation(line: 1129, column: 7, scope: !2264, inlinedAt: !2279)
!2609 = !DILocation(line: 1130, column: 5, scope: !2607, inlinedAt: !2279)
!2610 = !DILocation(line: 1132, column: 8, scope: !2611, inlinedAt: !2279)
!2611 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 1132, column: 3)
!2612 = !DILocation(line: 1132, column: 3, scope: !2611, inlinedAt: !2279)
!2613 = !DILocation(line: 1133, column: 14, scope: !2614, inlinedAt: !2279)
!2614 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 1132, column: 3)
!2615 = !DILocation(line: 1133, column: 12, scope: !2614, inlinedAt: !2279)
!2616 = !DILocation(line: 1132, column: 3, scope: !2614, inlinedAt: !2279)
!2617 = !DILocation(line: 1136, column: 1, scope: !2264, inlinedAt: !2279)
!2618 = !DILocation(line: 1135, column: 3, scope: !2264, inlinedAt: !2279)
!2619 = !DILocation(line: 1652, column: 12, scope: !2251)
!2620 = !DILocation(line: 1652, column: 18, scope: !2251)
!2621 = !DILocation(line: 1571, column: 8, scope: !2251)
!2622 = !DILocation(line: 1653, column: 3, scope: !2251)
!2623 = !DILocation(line: 1655, column: 7, scope: !2624)
!2624 = distinct !DILexicalBlock(scope: !2251, file: !3, line: 1655, column: 7)
!2625 = !DILocation(line: 1655, column: 16, scope: !2624)
!2626 = !DILocation(line: 1655, column: 13, scope: !2624)
!2627 = !DILocation(line: 1655, column: 7, scope: !2251)
!2628 = !DILocation(line: 0, scope: !2624)
!2629 = !DILocation(line: 1659, column: 3, scope: !2251)
!2630 = !DILocation(line: 1660, column: 1, scope: !2251)
!2631 = !DILocation(line: 0, scope: !2292)
!2632 = !DILocation(line: 1640, column: 11, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 1640, column: 11)
!2634 = !DILocation(line: 1640, column: 20, scope: !2633)
!2635 = !DILocation(line: 1640, column: 17, scope: !2633)
!2636 = !DILocation(line: 0, scope: !2633)
!2637 = !DILocation(line: 1640, column: 11, scope: !2480)
!2638 = !DILocation(line: 573, column: 38, scope: !1932, inlinedAt: !2639)
!2639 = distinct !DILocation(line: 1644, column: 7, scope: !2480)
!2640 = !DILocation(line: 573, column: 60, scope: !1932, inlinedAt: !2639)
!2641 = !DILocation(line: 575, column: 16, scope: !1932, inlinedAt: !2639)
!2642 = !DILocation(line: 578, column: 8, scope: !1943, inlinedAt: !2639)
!2643 = !DILocation(line: 578, column: 3, scope: !1943, inlinedAt: !2639)
!2644 = !DILocation(line: 579, column: 7, scope: !1946, inlinedAt: !2639)
!2645 = !DILocation(line: 579, column: 10, scope: !1946, inlinedAt: !2639)
!2646 = !DILocation(line: 578, column: 3, scope: !1946, inlinedAt: !2639)
!2647 = !DILocation(line: 580, column: 6, scope: !1932, inlinedAt: !2639)
!2648 = !DILocation(line: 609, column: 1, scope: !1932, inlinedAt: !2639)
!2649 = !DILocation(line: 1646, column: 7, scope: !2480)
!2650 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1625, column: 7, scope: !2459)
!2652 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !2651)
!2653 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !2651)
!2654 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !2651)
!2655 = !DILocation(line: 465, column: 7, scope: !712, inlinedAt: !2651)
!2656 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !2651)
!2657 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !2651)
!2658 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !2651)
!2659 = !DILocation(line: 1626, column: 7, scope: !2459)
!2660 = distinct !DISubprogram(name: "emul", scope: !3, file: !3, line: 1672, type: !396, isLocal: true, isDefinition: true, scopeLine: 1674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2661)
!2661 = !{!2662, !2663, !2664, !2665, !2666, !2667, !2668, !2669, !2670, !2671, !2672}
!2662 = !DILocalVariable(name: "a", arg: 1, scope: !2660, file: !3, line: 1672, type: !376)
!2663 = !DILocalVariable(name: "b", arg: 2, scope: !2660, file: !3, line: 1672, type: !376)
!2664 = !DILocalVariable(name: "c", arg: 3, scope: !2660, file: !3, line: 1673, type: !377)
!2665 = !DILocalVariable(name: "ldp", arg: 4, scope: !2660, file: !3, line: 1673, type: !361)
!2666 = !DILocalVariable(name: "ai", scope: !2660, file: !3, line: 1675, type: !338)
!2667 = !DILocalVariable(name: "bi", scope: !2660, file: !3, line: 1675, type: !338)
!2668 = !DILocalVariable(name: "i", scope: !2660, file: !3, line: 1676, type: !8)
!2669 = !DILocalVariable(name: "j", scope: !2660, file: !3, line: 1676, type: !8)
!2670 = !DILocalVariable(name: "lt", scope: !2660, file: !3, line: 1677, type: !12)
!2671 = !DILocalVariable(name: "lta", scope: !2660, file: !3, line: 1677, type: !12)
!2672 = !DILocalVariable(name: "ltb", scope: !2660, file: !3, line: 1677, type: !12)
!2673 = !DILocalVariable(name: "pprod", scope: !2674, file: !3, line: 1145, type: !338)
!2674 = distinct !DISubprogram(name: "emulm", scope: !3, file: !3, line: 1142, type: !2265, isLocal: true, isDefinition: true, scopeLine: 1143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2675)
!2675 = !{!2676, !2677, !2678, !2679, !2680, !2673, !2681, !2682, !2683}
!2676 = !DILocalVariable(name: "a", arg: 1, scope: !2674, file: !3, line: 1142, type: !377)
!2677 = !DILocalVariable(name: "b", arg: 2, scope: !2674, file: !3, line: 1142, type: !377)
!2678 = !DILocalVariable(name: "ldp", arg: 3, scope: !2674, file: !3, line: 1142, type: !361)
!2679 = !DILocalVariable(name: "p", scope: !2674, file: !3, line: 1144, type: !377)
!2680 = !DILocalVariable(name: "q", scope: !2674, file: !3, line: 1144, type: !377)
!2681 = !DILocalVariable(name: "j", scope: !2674, file: !3, line: 1146, type: !11)
!2682 = !DILocalVariable(name: "i", scope: !2674, file: !3, line: 1147, type: !8)
!2683 = !DILocalVariable(name: "equot", scope: !2674, file: !3, line: 1148, type: !377)
!2684 = !DILocation(line: 1145, column: 18, scope: !2674, inlinedAt: !2685)
!2685 = distinct !DILocation(line: 1747, column: 7, scope: !2660)
!2686 = !DILocation(line: 1672, column: 34, scope: !2660)
!2687 = !DILocation(line: 1672, column: 64, scope: !2660)
!2688 = !DILocation(line: 1673, column: 27, scope: !2660)
!2689 = !DILocation(line: 1673, column: 40, scope: !2660)
!2690 = !DILocation(line: 1675, column: 3, scope: !2660)
!2691 = !DILocation(line: 1675, column: 18, scope: !2660)
!2692 = !DILocation(line: 1675, column: 26, scope: !2660)
!2693 = !DILocation(line: 1681, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1681, column: 7)
!2695 = !DILocation(line: 1681, column: 7, scope: !2660)
!2696 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !2697)
!2697 = distinct !DILocation(line: 1683, column: 7, scope: !2698)
!2698 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 1682, column: 5)
!2699 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !2697)
!2700 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !2697)
!2701 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !2697)
!2702 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !2697)
!2703 = !DILocation(line: 481, column: 14, scope: !596, inlinedAt: !2697)
!2704 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !2697)
!2705 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !2697)
!2706 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !2697)
!2707 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !2697)
!2708 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !2697)
!2709 = !DILocation(line: 1684, column: 7, scope: !2698)
!2710 = !DILocation(line: 1686, column: 7, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1686, column: 7)
!2712 = !DILocation(line: 1686, column: 7, scope: !2660)
!2713 = !DILocation(line: 476, column: 43, scope: !582, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 1688, column: 7, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !3, line: 1687, column: 5)
!2716 = !DILocation(line: 476, column: 75, scope: !582, inlinedAt: !2714)
!2717 = !DILocation(line: 478, column: 16, scope: !582, inlinedAt: !2714)
!2718 = !DILocation(line: 480, column: 8, scope: !593, inlinedAt: !2714)
!2719 = !DILocation(line: 480, column: 3, scope: !593, inlinedAt: !2714)
!2720 = !DILocation(line: 481, column: 14, scope: !596, inlinedAt: !2714)
!2721 = !DILocation(line: 481, column: 12, scope: !596, inlinedAt: !2714)
!2722 = !DILocation(line: 481, column: 7, scope: !596, inlinedAt: !2714)
!2723 = !DILocation(line: 481, column: 10, scope: !596, inlinedAt: !2714)
!2724 = !DILocation(line: 480, column: 3, scope: !596, inlinedAt: !2714)
!2725 = !DILocation(line: 482, column: 1, scope: !582, inlinedAt: !2714)
!2726 = !DILocation(line: 1689, column: 7, scope: !2715)
!2727 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2728)
!2728 = distinct !DILocation(line: 1692, column: 8, scope: !2729)
!2729 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1692, column: 7)
!2730 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2728)
!2731 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2728)
!2732 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2728)
!2733 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2728)
!2734 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2728)
!2735 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2728)
!2736 = !DILocation(line: 1692, column: 19, scope: !2729)
!2737 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2728)
!2738 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2728)
!2739 = !DILocation(line: 0, scope: !819, inlinedAt: !2728)
!2740 = !DILocation(line: 1692, column: 23, scope: !2729)
!2741 = !DILocation(line: 1692, column: 39, scope: !2729)
!2742 = !DILocation(line: 1693, column: 7, scope: !2729)
!2743 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1693, column: 11, scope: !2729)
!2745 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2744)
!2746 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2744)
!2747 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2744)
!2748 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2744)
!2749 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2744)
!2750 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2744)
!2751 = !DILocation(line: 1693, column: 22, scope: !2729)
!2752 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2744)
!2753 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2744)
!2754 = !DILocation(line: 0, scope: !819, inlinedAt: !2744)
!2755 = !DILocation(line: 1693, column: 26, scope: !2729)
!2756 = !DILocation(line: 1693, column: 42, scope: !2729)
!2757 = !DILocation(line: 1692, column: 7, scope: !2660)
!2758 = !DILocation(line: 3805, column: 27, scope: !1879, inlinedAt: !2759)
!2759 = distinct !DILocation(line: 1696, column: 7, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2729, file: !3, line: 1694, column: 5)
!2761 = !DILocation(line: 3805, column: 36, scope: !1879, inlinedAt: !2759)
!2762 = !DILocation(line: 3810, column: 3, scope: !1879, inlinedAt: !2759)
!2763 = !DILocation(line: 3807, column: 7, scope: !1879, inlinedAt: !2759)
!2764 = !DILocation(line: 3835, column: 12, scope: !1894, inlinedAt: !2759)
!2765 = !DILocation(line: 0, scope: !1895, inlinedAt: !2759)
!2766 = !DILocation(line: 3835, column: 7, scope: !1894, inlinedAt: !2759)
!2767 = !DILocation(line: 3836, column: 9, scope: !1899, inlinedAt: !2759)
!2768 = !DILocation(line: 3835, column: 7, scope: !1899, inlinedAt: !2759)
!2769 = !DILocation(line: 3837, column: 14, scope: !1895, inlinedAt: !2759)
!2770 = !DILocation(line: 3843, column: 14, scope: !1895, inlinedAt: !2759)
!2771 = !DILocation(line: 3844, column: 7, scope: !1895, inlinedAt: !2759)
!2772 = !DILocation(line: 3868, column: 1, scope: !1879, inlinedAt: !2759)
!2773 = !DILocation(line: 1697, column: 7, scope: !2760)
!2774 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2775)
!2775 = distinct !DILocation(line: 1702, column: 7, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1702, column: 7)
!2777 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2775)
!2778 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2775)
!2779 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2775)
!2780 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2775)
!2781 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2775)
!2782 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2775)
!2783 = !DILocation(line: 1702, column: 18, scope: !2776)
!2784 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2775)
!2785 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2775)
!2786 = !DILocation(line: 0, scope: !819, inlinedAt: !2775)
!2787 = !DILocation(line: 527, column: 36, scope: !574, inlinedAt: !2788)
!2788 = distinct !DILocation(line: 1702, column: 21, scope: !2776)
!2789 = !DILocation(line: 530, column: 8, scope: !573, inlinedAt: !2788)
!2790 = !DILocation(line: 530, column: 18, scope: !573, inlinedAt: !2788)
!2791 = !DILocation(line: 530, column: 28, scope: !573, inlinedAt: !2788)
!2792 = !DILocation(line: 530, column: 7, scope: !574, inlinedAt: !2788)
!2793 = !DILocation(line: 539, column: 5, scope: !573, inlinedAt: !2788)
!2794 = !DILocation(line: 540, column: 1, scope: !574, inlinedAt: !2788)
!2795 = !DILocation(line: 1702, column: 7, scope: !2660)
!2796 = !DILocation(line: 533, column: 11, scope: !819, inlinedAt: !2788)
!2797 = !DILocation(line: 533, column: 11, scope: !820, inlinedAt: !2788)
!2798 = !DILocation(line: 0, scope: !819, inlinedAt: !2788)
!2799 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2800)
!2800 = distinct !DILocation(line: 1704, column: 11, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 1704, column: 11)
!2802 = distinct !DILexicalBlock(scope: !2776, file: !3, line: 1703, column: 5)
!2803 = !DILocation(line: 513, column: 7, scope: !526, inlinedAt: !2800)
!2804 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2800)
!2805 = !DILocation(line: 514, column: 5, scope: !526, inlinedAt: !2800)
!2806 = !DILocation(line: 516, column: 7, scope: !532, inlinedAt: !2800)
!2807 = !DILocation(line: 516, column: 7, scope: !518, inlinedAt: !2800)
!2808 = !DILocation(line: 0, scope: !532, inlinedAt: !2800)
!2809 = !DILocation(line: 517, column: 5, scope: !532, inlinedAt: !2800)
!2810 = !DILocation(line: 520, column: 1, scope: !518, inlinedAt: !2800)
!2811 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2812)
!2812 = distinct !DILocation(line: 1704, column: 24, scope: !2801)
!2813 = !DILocation(line: 513, column: 7, scope: !526, inlinedAt: !2812)
!2814 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2812)
!2815 = !DILocation(line: 514, column: 5, scope: !526, inlinedAt: !2812)
!2816 = !DILocation(line: 516, column: 7, scope: !532, inlinedAt: !2812)
!2817 = !DILocation(line: 516, column: 7, scope: !518, inlinedAt: !2812)
!2818 = !DILocation(line: 0, scope: !532, inlinedAt: !2812)
!2819 = !DILocation(line: 517, column: 5, scope: !532, inlinedAt: !2812)
!2820 = !DILocation(line: 520, column: 1, scope: !518, inlinedAt: !2812)
!2821 = !DILocation(line: 1704, column: 22, scope: !2801)
!2822 = !DILocation(line: 0, scope: !2801)
!2823 = !DILocation(line: 1704, column: 11, scope: !2802)
!2824 = !DILocation(line: 573, column: 38, scope: !1932, inlinedAt: !2825)
!2825 = distinct !DILocation(line: 1708, column: 7, scope: !2802)
!2826 = !DILocation(line: 573, column: 60, scope: !1932, inlinedAt: !2825)
!2827 = !DILocation(line: 575, column: 16, scope: !1932, inlinedAt: !2825)
!2828 = !DILocation(line: 578, column: 8, scope: !1943, inlinedAt: !2825)
!2829 = !DILocation(line: 578, column: 3, scope: !1943, inlinedAt: !2825)
!2830 = !DILocation(line: 579, column: 7, scope: !1946, inlinedAt: !2825)
!2831 = !DILocation(line: 579, column: 10, scope: !1946, inlinedAt: !2825)
!2832 = !DILocation(line: 578, column: 3, scope: !1946, inlinedAt: !2825)
!2833 = !DILocation(line: 580, column: 6, scope: !1932, inlinedAt: !2825)
!2834 = !DILocation(line: 609, column: 1, scope: !1932, inlinedAt: !2825)
!2835 = !DILocation(line: 1709, column: 7, scope: !2802)
!2836 = !DILocation(line: 1712, column: 13, scope: !2660)
!2837 = !DILocation(line: 1712, column: 3, scope: !2660)
!2838 = !DILocation(line: 1713, column: 13, scope: !2660)
!2839 = !DILocation(line: 1713, column: 3, scope: !2660)
!2840 = !DILocation(line: 1714, column: 9, scope: !2660)
!2841 = !DILocation(line: 1677, column: 12, scope: !2660)
!2842 = !DILocation(line: 1715, column: 9, scope: !2660)
!2843 = !DILocation(line: 1677, column: 17, scope: !2660)
!2844 = !DILocation(line: 1716, column: 13, scope: !2845)
!2845 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1716, column: 7)
!2846 = !DILocation(line: 1716, column: 7, scope: !2660)
!2847 = !DILocation(line: 1722, column: 15, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2849, file: !3, line: 1721, column: 6)
!2849 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 1720, column: 8)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !3, line: 1719, column: 2)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 1718, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 1718, column: 7)
!2853 = distinct !DILexicalBlock(scope: !2845, file: !3, line: 1717, column: 5)
!2854 = !DILocation(line: 1722, column: 12, scope: !2848)
!2855 = !DILocation(line: 1723, column: 8, scope: !2848)
!2856 = !DILocation(line: 1731, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1731, column: 7)
!2858 = !DILocation(line: 1676, column: 7, scope: !2660)
!2859 = !DILocation(line: 1718, column: 12, scope: !2852)
!2860 = !DILocation(line: 1718, column: 7, scope: !2852)
!2861 = !DILocation(line: 1720, column: 8, scope: !2850)
!2862 = !DILocation(line: 1718, column: 7, scope: !2851)
!2863 = !DILocation(line: 1720, column: 8, scope: !2849)
!2864 = !DILocation(line: 1720, column: 14, scope: !2849)
!2865 = !DILocation(line: 0, scope: !2660)
!2866 = !DILocation(line: 1731, column: 13, scope: !2857)
!2867 = !DILocation(line: 1731, column: 7, scope: !2660)
!2868 = !DILocation(line: 1737, column: 15, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 1736, column: 6)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 1735, column: 8)
!2871 = distinct !DILexicalBlock(scope: !2872, file: !3, line: 1734, column: 2)
!2872 = distinct !DILexicalBlock(scope: !2873, file: !3, line: 1733, column: 7)
!2873 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 1733, column: 7)
!2874 = distinct !DILexicalBlock(scope: !2857, file: !3, line: 1732, column: 5)
!2875 = !DILocation(line: 1737, column: 12, scope: !2869)
!2876 = !DILocation(line: 1738, column: 8, scope: !2869)
!2877 = !DILocation(line: 1151, column: 14, scope: !2674, inlinedAt: !2685)
!2878 = !DILocation(line: 1733, column: 12, scope: !2873)
!2879 = !DILocation(line: 1733, column: 7, scope: !2873)
!2880 = !DILocation(line: 1735, column: 8, scope: !2871)
!2881 = !DILocation(line: 1733, column: 7, scope: !2872)
!2882 = !DILocation(line: 1735, column: 8, scope: !2870)
!2883 = !DILocation(line: 1735, column: 14, scope: !2870)
!2884 = !DILocation(line: 1142, column: 28, scope: !2674, inlinedAt: !2685)
!2885 = !DILocation(line: 1142, column: 51, scope: !2674, inlinedAt: !2685)
!2886 = !DILocation(line: 1142, column: 64, scope: !2674, inlinedAt: !2685)
!2887 = !DILocation(line: 1145, column: 3, scope: !2674, inlinedAt: !2685)
!2888 = !DILocation(line: 1148, column: 27, scope: !2674, inlinedAt: !2685)
!2889 = !DILocation(line: 1148, column: 19, scope: !2674, inlinedAt: !2685)
!2890 = !DILocation(line: 1150, column: 14, scope: !2674, inlinedAt: !2685)
!2891 = !DILocation(line: 1150, column: 12, scope: !2674, inlinedAt: !2685)
!2892 = !DILocation(line: 1151, column: 3, scope: !2674, inlinedAt: !2685)
!2893 = !DILocation(line: 1151, column: 12, scope: !2674, inlinedAt: !2685)
!2894 = !DILocation(line: 1147, column: 7, scope: !2674, inlinedAt: !2685)
!2895 = !DILocation(line: 1152, column: 8, scope: !2896, inlinedAt: !2685)
!2896 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1152, column: 3)
!2897 = !DILocation(line: 1152, column: 3, scope: !2896, inlinedAt: !2685)
!2898 = !DILocation(line: 1153, column: 5, scope: !2899, inlinedAt: !2685)
!2899 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 1152, column: 3)
!2900 = !DILocation(line: 1153, column: 14, scope: !2899, inlinedAt: !2685)
!2901 = !DILocation(line: 1152, column: 3, scope: !2899, inlinedAt: !2685)
!2902 = !DILocation(line: 1146, column: 18, scope: !2674, inlinedAt: !2685)
!2903 = !DILocation(line: 1156, column: 8, scope: !2674, inlinedAt: !2685)
!2904 = !DILocation(line: 1144, column: 19, scope: !2674, inlinedAt: !2685)
!2905 = !DILocation(line: 1144, column: 23, scope: !2674, inlinedAt: !2685)
!2906 = !DILocation(line: 1158, column: 8, scope: !2907, inlinedAt: !2685)
!2907 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1158, column: 3)
!2908 = !DILocation(line: 1158, column: 3, scope: !2907, inlinedAt: !2685)
!2909 = !DILocation(line: 1160, column: 11, scope: !2910, inlinedAt: !2685)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 1160, column: 11)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !3, line: 1159, column: 5)
!2912 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 1158, column: 3)
!2913 = !DILocation(line: 1160, column: 14, scope: !2910, inlinedAt: !2685)
!2914 = !DILocation(line: 0, scope: !2915, inlinedAt: !2685)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 1165, column: 2)
!2916 = !DILocation(line: 1160, column: 11, scope: !2911, inlinedAt: !2685)
!2917 = !DILocation(line: 1166, column: 4, scope: !2915, inlinedAt: !2685)
!2918 = !DILocation(line: 1167, column: 4, scope: !2915, inlinedAt: !2685)
!2919 = !DILocation(line: 1169, column: 12, scope: !2911, inlinedAt: !2685)
!2920 = !DILocation(line: 939, column: 14, scope: !2921, inlinedAt: !2928)
!2921 = distinct !DILexicalBlock(scope: !2922, file: !3, line: 938, column: 3)
!2922 = distinct !DILexicalBlock(scope: !2923, file: !3, line: 938, column: 3)
!2923 = distinct !DISubprogram(name: "eshdn6", scope: !3, file: !3, line: 930, type: !700, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2924)
!2924 = !{!2925, !2926, !2927}
!2925 = !DILocalVariable(name: "x", arg: 1, scope: !2923, file: !3, line: 930, type: !377)
!2926 = !DILocalVariable(name: "i", scope: !2923, file: !3, line: 932, type: !8)
!2927 = !DILocalVariable(name: "p", scope: !2923, file: !3, line: 933, type: !377)
!2928 = distinct !DILocation(line: 1170, column: 7, scope: !2911, inlinedAt: !2685)
!2929 = !DILocation(line: 1169, column: 9, scope: !2911, inlinedAt: !2685)
!2930 = !DILocation(line: 930, column: 38, scope: !2923, inlinedAt: !2928)
!2931 = !DILocation(line: 933, column: 28, scope: !2923, inlinedAt: !2928)
!2932 = !DILocation(line: 932, column: 7, scope: !2923, inlinedAt: !2928)
!2933 = !DILocation(line: 938, column: 8, scope: !2922, inlinedAt: !2928)
!2934 = !DILocation(line: 938, column: 3, scope: !2922, inlinedAt: !2928)
!2935 = !DILocation(line: 939, column: 12, scope: !2921, inlinedAt: !2928)
!2936 = !DILocation(line: 938, column: 3, scope: !2921, inlinedAt: !2928)
!2937 = !DILocation(line: 941, column: 10, scope: !2923, inlinedAt: !2928)
!2938 = !DILocation(line: 942, column: 1, scope: !2923, inlinedAt: !2928)
!2939 = !DILocation(line: 1158, column: 28, scope: !2912, inlinedAt: !2685)
!2940 = !DILocation(line: 1158, column: 3, scope: !2912, inlinedAt: !2685)
!2941 = !DILocation(line: 1158, column: 21, scope: !2912, inlinedAt: !2685)
!2942 = distinct !{!2942, !2943, !2944}
!2943 = !DILocation(line: 1158, column: 3, scope: !2907)
!2944 = !DILocation(line: 1171, column: 5, scope: !2907)
!2945 = !DILocation(line: 1173, column: 8, scope: !2946, inlinedAt: !2685)
!2946 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 1173, column: 3)
!2947 = !DILocation(line: 1173, column: 3, scope: !2946, inlinedAt: !2685)
!2948 = !DILocation(line: 1174, column: 12, scope: !2949, inlinedAt: !2685)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !3, line: 1173, column: 3)
!2950 = !DILocation(line: 1174, column: 10, scope: !2949, inlinedAt: !2685)
!2951 = !DILocation(line: 1173, column: 3, scope: !2949, inlinedAt: !2685)
!2952 = !DILocation(line: 1174, column: 5, scope: !2949, inlinedAt: !2685)
!2953 = !DILocation(line: 1178, column: 1, scope: !2674, inlinedAt: !2685)
!2954 = !DILocation(line: 1177, column: 3, scope: !2674, inlinedAt: !2685)
!2955 = !DILocation(line: 1676, column: 10, scope: !2660)
!2956 = !DILocation(line: 1749, column: 12, scope: !2660)
!2957 = !DILocation(line: 1749, column: 18, scope: !2660)
!2958 = !DILocation(line: 1677, column: 8, scope: !2660)
!2959 = !DILocation(line: 1750, column: 3, scope: !2660)
!2960 = !DILocation(line: 1752, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2660, file: !3, line: 1752, column: 7)
!2962 = !DILocation(line: 1752, column: 16, scope: !2961)
!2963 = !DILocation(line: 1752, column: 13, scope: !2961)
!2964 = !DILocation(line: 1752, column: 7, scope: !2660)
!2965 = !DILocation(line: 0, scope: !2961)
!2966 = !DILocation(line: 1756, column: 3, scope: !2660)
!2967 = !DILocation(line: 1757, column: 1, scope: !2660)
!2968 = !DILocation(line: 0, scope: !2698)
!2969 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !2970)
!2970 = distinct !DILocation(line: 1741, column: 7, scope: !2874)
!2971 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !2970)
!2972 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !2970)
!2973 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !2970)
!2974 = !DILocation(line: 465, column: 7, scope: !712, inlinedAt: !2970)
!2975 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !2970)
!2976 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !2970)
!2977 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !2970)
!2978 = !DILocation(line: 1742, column: 7, scope: !2874)
!2979 = !DILocation(line: 460, column: 38, scope: !699, inlinedAt: !2980)
!2980 = distinct !DILocation(line: 1726, column: 7, scope: !2853)
!2981 = !DILocation(line: 462, column: 16, scope: !699, inlinedAt: !2980)
!2982 = !DILocation(line: 464, column: 8, scope: !709, inlinedAt: !2980)
!2983 = !DILocation(line: 464, column: 3, scope: !709, inlinedAt: !2980)
!2984 = !DILocation(line: 465, column: 7, scope: !712, inlinedAt: !2980)
!2985 = !DILocation(line: 465, column: 10, scope: !712, inlinedAt: !2980)
!2986 = !DILocation(line: 464, column: 3, scope: !712, inlinedAt: !2980)
!2987 = !DILocation(line: 466, column: 1, scope: !699, inlinedAt: !2980)
!2988 = !DILocation(line: 1727, column: 7, scope: !2853)
!2989 = distinct !DISubprogram(name: "eaddm", scope: !3, file: !3, line: 950, type: !852, isLocal: true, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2990)
!2990 = !{!2991, !2992, !2993, !2994, !2995}
!2991 = !DILocalVariable(name: "x", arg: 1, scope: !2989, file: !3, line: 950, type: !377)
!2992 = !DILocalVariable(name: "y", arg: 2, scope: !2989, file: !3, line: 950, type: !377)
!2993 = !DILocalVariable(name: "a", scope: !2989, file: !3, line: 952, type: !10)
!2994 = !DILocalVariable(name: "i", scope: !2989, file: !3, line: 953, type: !8)
!2995 = !DILocalVariable(name: "carry", scope: !2989, file: !3, line: 954, type: !9)
!2996 = !DILocation(line: 950, column: 28, scope: !2989)
!2997 = !DILocation(line: 950, column: 51, scope: !2989)
!2998 = !DILocation(line: 956, column: 5, scope: !2989)
!2999 = !DILocation(line: 957, column: 5, scope: !2989)
!3000 = !DILocation(line: 954, column: 16, scope: !2989)
!3001 = !DILocation(line: 953, column: 7, scope: !2989)
!3002 = !DILocation(line: 959, column: 8, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2989, file: !3, line: 959, column: 3)
!3004 = !DILocation(line: 959, column: 3, scope: !3003)
!3005 = !DILocation(line: 961, column: 28, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3007, file: !3, line: 960, column: 5)
!3007 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 959, column: 3)
!3008 = !DILocation(line: 961, column: 11, scope: !3006)
!3009 = !DILocation(line: 961, column: 51, scope: !3006)
!3010 = !DILocation(line: 961, column: 34, scope: !3006)
!3011 = !DILocation(line: 961, column: 55, scope: !3006)
!3012 = !DILocation(line: 952, column: 26, scope: !2989)
!3013 = !DILocation(line: 962, column: 11, scope: !3006)
!3014 = !DILocation(line: 966, column: 12, scope: !3006)
!3015 = !DILocation(line: 966, column: 10, scope: !3006)
!3016 = !DILocation(line: 967, column: 7, scope: !3006)
!3017 = !DILocation(line: 968, column: 7, scope: !3006)
!3018 = !DILocation(line: 959, column: 3, scope: !3007)
!3019 = !DILocation(line: 961, column: 32, scope: !3006)
!3020 = !DILocation(line: 970, column: 1, scope: !2989)
!3021 = distinct !DISubprogram(name: "eiremain", scope: !3, file: !3, line: 3725, type: !412, isLocal: true, isDefinition: true, scopeLine: 3726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3022)
!3022 = !{!3023, !3024, !3025, !3026, !3027, !3028, !3029}
!3023 = !DILocalVariable(name: "den", arg: 1, scope: !3021, file: !3, line: 3725, type: !377)
!3024 = !DILocalVariable(name: "num", arg: 2, scope: !3021, file: !3, line: 3725, type: !377)
!3025 = !DILocalVariable(name: "ldp", arg: 3, scope: !3021, file: !3, line: 3725, type: !361)
!3026 = !DILocalVariable(name: "ld", scope: !3021, file: !3, line: 3727, type: !12)
!3027 = !DILocalVariable(name: "ln", scope: !3021, file: !3, line: 3727, type: !12)
!3028 = !DILocalVariable(name: "j", scope: !3021, file: !3, line: 3728, type: !11)
!3029 = !DILocalVariable(name: "equot", scope: !3021, file: !3, line: 3729, type: !377)
!3030 = !DILocation(line: 3725, column: 31, scope: !3021)
!3031 = !DILocation(line: 3725, column: 56, scope: !3021)
!3032 = !DILocation(line: 3725, column: 71, scope: !3021)
!3033 = !DILocation(line: 3729, column: 27, scope: !3021)
!3034 = !DILocation(line: 3729, column: 19, scope: !3021)
!3035 = !DILocation(line: 3731, column: 8, scope: !3021)
!3036 = !DILocation(line: 3727, column: 8, scope: !3021)
!3037 = !DILocation(line: 3732, column: 9, scope: !3021)
!3038 = !DILocation(line: 3732, column: 6, scope: !3021)
!3039 = !DILocation(line: 3733, column: 8, scope: !3021)
!3040 = !DILocation(line: 3727, column: 12, scope: !3021)
!3041 = !DILocation(line: 3734, column: 9, scope: !3021)
!3042 = !DILocation(line: 3734, column: 6, scope: !3021)
!3043 = !DILocalVariable(name: "xi", arg: 1, scope: !3044, file: !3, line: 701, type: !377)
!3044 = distinct !DISubprogram(name: "ecleaz", scope: !3, file: !3, line: 701, type: !700, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3045)
!3045 = !{!3043, !3046}
!3046 = !DILocalVariable(name: "i", scope: !3044, file: !3, line: 703, type: !8)
!3047 = !DILocation(line: 701, column: 38, scope: !3044, inlinedAt: !3048)
!3048 = distinct !DILocation(line: 3735, column: 3, scope: !3021)
!3049 = !DILocation(line: 703, column: 16, scope: !3044, inlinedAt: !3048)
!3050 = !DILocation(line: 705, column: 8, scope: !3051, inlinedAt: !3048)
!3051 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 705, column: 3)
!3052 = !DILocation(line: 705, column: 3, scope: !3051, inlinedAt: !3048)
!3053 = !DILocation(line: 706, column: 8, scope: !3054, inlinedAt: !3048)
!3054 = distinct !DILexicalBlock(scope: !3051, file: !3, line: 705, column: 3)
!3055 = !DILocation(line: 706, column: 11, scope: !3054, inlinedAt: !3048)
!3056 = !DILocation(line: 705, column: 3, scope: !3054, inlinedAt: !3048)
!3057 = !DILocation(line: 707, column: 1, scope: !3044, inlinedAt: !3048)
!3058 = !DILocation(line: 3736, column: 3, scope: !3021)
!3059 = !DILocation(line: 3736, column: 13, scope: !3021)
!3060 = !DILocation(line: 3738, column: 11, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3062, file: !3, line: 3738, column: 11)
!3062 = distinct !DILexicalBlock(scope: !3021, file: !3, line: 3737, column: 5)
!3063 = !DILocation(line: 3738, column: 28, scope: !3061)
!3064 = !DILocation(line: 3738, column: 11, scope: !3062)
!3065 = !DILocation(line: 3740, column: 4, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 3739, column: 2)
!3067 = !DILocation(line: 3728, column: 18, scope: !3021)
!3068 = !DILocation(line: 3742, column: 2, scope: !3066)
!3069 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !3070)
!3070 = distinct !DILocation(line: 3747, column: 7, scope: !3062)
!3071 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !3070)
!3072 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !3070)
!3073 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !3070)
!3074 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !3070)
!3075 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !3070)
!3076 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !3070)
!3077 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !3070)
!3078 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !3070)
!3079 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !3070)
!3080 = !DILocation(line: 0, scope: !937, inlinedAt: !3070)
!3081 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !3070)
!3082 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !3070)
!3083 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !3070)
!3084 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !3070)
!3085 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !3070)
!3086 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !3070)
!3087 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !3070)
!3088 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !3070)
!3089 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !3070)
!3090 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !3070)
!3091 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !3070)
!3092 = !DILocation(line: 3748, column: 21, scope: !3062)
!3093 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !3094)
!3094 = distinct !DILocation(line: 3749, column: 7, scope: !3062)
!3095 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !3094)
!3096 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !3094)
!3097 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !3094)
!3098 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !3094)
!3099 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !3094)
!3100 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !3094)
!3101 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !3094)
!3102 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !3094)
!3103 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !3094)
!3104 = !DILocation(line: 0, scope: !937, inlinedAt: !3094)
!3105 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !3094)
!3106 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !3094)
!3107 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !3094)
!3108 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !3094)
!3109 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !3094)
!3110 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !3094)
!3111 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !3094)
!3112 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !3094)
!3113 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !3094)
!3114 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !3094)
!3115 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !3094)
!3116 = !DILocation(line: 3750, column: 10, scope: !3062)
!3117 = distinct !{!3117, !3058, !3118}
!3118 = !DILocation(line: 3751, column: 5, scope: !3021)
!3119 = !DILocation(line: 0, scope: !3062)
!3120 = !DILocation(line: 3752, column: 3, scope: !3021)
!3121 = !DILocation(line: 3753, column: 1, scope: !3021)
!3122 = distinct !DISubprogram(name: "enormlz", scope: !3, file: !3, line: 2555, type: !2105, isLocal: true, isDefinition: true, scopeLine: 2556, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3123)
!3123 = !{!3124, !3125, !3126}
!3124 = !DILocalVariable(name: "x", arg: 1, scope: !3122, file: !3, line: 2555, type: !377)
!3125 = !DILocalVariable(name: "p", scope: !3122, file: !3, line: 2557, type: !377)
!3126 = !DILocalVariable(name: "sc", scope: !3122, file: !3, line: 2558, type: !8)
!3127 = !DILocation(line: 2555, column: 30, scope: !3122)
!3128 = !DILocation(line: 2558, column: 7, scope: !3122)
!3129 = !DILocation(line: 2561, column: 8, scope: !3122)
!3130 = !DILocation(line: 2557, column: 28, scope: !3122)
!3131 = !DILocation(line: 2562, column: 7, scope: !3132)
!3132 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2562, column: 7)
!3133 = !DILocation(line: 2562, column: 10, scope: !3132)
!3134 = !DILocation(line: 2562, column: 7, scope: !3122)
!3135 = !DILocation(line: 2564, column: 3, scope: !3122)
!3136 = !DILocation(line: 2565, column: 7, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2565, column: 7)
!3138 = !DILocation(line: 2565, column: 10, scope: !3137)
!3139 = !DILocation(line: 2565, column: 7, scope: !3122)
!3140 = !DILocation(line: 2567, column: 13, scope: !3122)
!3141 = !DILocation(line: 2567, column: 3, scope: !3122)
!3142 = !DILocation(line: 920, column: 12, scope: !2587, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 2569, column: 7, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2568, column: 5)
!3145 = !DILocation(line: 2578, column: 11, scope: !3122)
!3146 = !DILocation(line: 0, scope: !3144)
!3147 = !DILocation(line: 2578, column: 24, scope: !3122)
!3148 = !DILocation(line: 2578, column: 3, scope: !3122)
!3149 = !DILocation(line: 911, column: 38, scope: !2575, inlinedAt: !3143)
!3150 = !DILocation(line: 914, column: 28, scope: !2575, inlinedAt: !3143)
!3151 = !DILocation(line: 913, column: 7, scope: !2575, inlinedAt: !3143)
!3152 = !DILocation(line: 919, column: 8, scope: !2584, inlinedAt: !3143)
!3153 = !DILocation(line: 919, column: 3, scope: !2584, inlinedAt: !3143)
!3154 = !DILocation(line: 920, column: 10, scope: !2587, inlinedAt: !3143)
!3155 = !DILocation(line: 919, column: 3, scope: !2587, inlinedAt: !3143)
!3156 = !DILocation(line: 922, column: 6, scope: !2575, inlinedAt: !3143)
!3157 = !DILocation(line: 923, column: 1, scope: !2575, inlinedAt: !3143)
!3158 = !DILocation(line: 2570, column: 10, scope: !3144)
!3159 = !DILocation(line: 2574, column: 14, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 2574, column: 11)
!3161 = !DILocation(line: 2574, column: 11, scope: !3144)
!3162 = distinct !{!3162, !3141, !3163}
!3163 = !DILocation(line: 2576, column: 5, scope: !3122)
!3164 = !DILocation(line: 0, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2579, column: 5)
!3166 = !DILocation(line: 2584, column: 24, scope: !3122)
!3167 = !DILocation(line: 2584, column: 3, scope: !3122)
!3168 = !DILocation(line: 2580, column: 7, scope: !3165)
!3169 = !DILocation(line: 2581, column: 10, scope: !3165)
!3170 = distinct !{!3170, !3148, !3171}
!3171 = !DILocation(line: 2582, column: 5, scope: !3122)
!3172 = !DILocation(line: 2584, column: 11, scope: !3122)
!3173 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 2586, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2585, column: 5)
!3176 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !3174)
!3177 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !3174)
!3178 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !3174)
!3179 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !3174)
!3180 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !3174)
!3181 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !3174)
!3182 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !3174)
!3183 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !3174)
!3184 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !3174)
!3185 = !DILocation(line: 0, scope: !937, inlinedAt: !3174)
!3186 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !3174)
!3187 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !3174)
!3188 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !3174)
!3189 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !3174)
!3190 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !3174)
!3191 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !3174)
!3192 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !3174)
!3193 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !3174)
!3194 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !3174)
!3195 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !3174)
!3196 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !3174)
!3197 = !DILocation(line: 2587, column: 10, scope: !3175)
!3198 = !DILocation(line: 2588, column: 14, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3175, file: !3, line: 2588, column: 11)
!3200 = !DILocation(line: 2588, column: 11, scope: !3175)
!3201 = distinct !{!3201, !3167, !3202}
!3202 = !DILocation(line: 2593, column: 5, scope: !3122)
!3203 = !DILocation(line: 2600, column: 10, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2600, column: 7)
!3205 = !DILocation(line: 2600, column: 7, scope: !3122)
!3206 = !DILocation(line: 2602, column: 7, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 2601, column: 5)
!3208 = !DILocation(line: 2604, column: 5, scope: !3207)
!3209 = !DILocation(line: 0, scope: !3122)
!3210 = !DILocation(line: 2605, column: 3, scope: !3122)
!3211 = !DILocation(line: 0, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 2606, column: 5)
!3213 = !DILocation(line: 2605, column: 10, scope: !3122)
!3214 = !DILocation(line: 2605, column: 13, scope: !3122)
!3215 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !3216)
!3216 = distinct !DILocation(line: 2607, column: 7, scope: !3212)
!3217 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !3216)
!3218 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !3216)
!3219 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !3216)
!3220 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !3216)
!3221 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !3216)
!3222 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !3216)
!3223 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !3216)
!3224 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !3216)
!3225 = !DILocation(line: 0, scope: !1138, inlinedAt: !3216)
!3226 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !3216)
!3227 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !3216)
!3228 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !3216)
!3229 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !3216)
!3230 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !3216)
!3231 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !3216)
!3232 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !3216)
!3233 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !3216)
!3234 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !3216)
!3235 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !3216)
!3236 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !3216)
!3237 = !DILocation(line: 2608, column: 10, scope: !3212)
!3238 = !DILocation(line: 2610, column: 14, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 2610, column: 11)
!3240 = !DILocation(line: 2610, column: 11, scope: !3212)
!3241 = distinct !{!3241, !3210, !3242}
!3242 = !DILocation(line: 2615, column: 5, scope: !3122)
!3243 = !DILocation(line: 0, scope: !3137)
!3244 = !DILocation(line: 2617, column: 1, scope: !3122)
!3245 = distinct !DISubprogram(name: "emdnorm", scope: !3, file: !3, line: 1216, type: !3246, isLocal: true, isDefinition: true, scopeLine: 1218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3248)
!3246 = !DISubroutineType(types: !3247)
!3247 = !{null, !377, !8, !8, !12, !8, !361}
!3248 = !{!3249, !3250, !3251, !3252, !3253, !3254, !3255, !3256, !3257}
!3249 = !DILocalVariable(name: "s", arg: 1, scope: !3245, file: !3, line: 1216, type: !377)
!3250 = !DILocalVariable(name: "lost", arg: 2, scope: !3245, file: !3, line: 1216, type: !8)
!3251 = !DILocalVariable(name: "subflg", arg: 3, scope: !3245, file: !3, line: 1216, type: !8)
!3252 = !DILocalVariable(name: "exp", arg: 4, scope: !3245, file: !3, line: 1216, type: !12)
!3253 = !DILocalVariable(name: "rcntrl", arg: 5, scope: !3245, file: !3, line: 1217, type: !8)
!3254 = !DILocalVariable(name: "ldp", arg: 6, scope: !3245, file: !3, line: 1217, type: !361)
!3255 = !DILocalVariable(name: "i", scope: !3245, file: !3, line: 1219, type: !8)
!3256 = !DILocalVariable(name: "j", scope: !3245, file: !3, line: 1219, type: !8)
!3257 = !DILocalVariable(name: "r", scope: !3245, file: !3, line: 1220, type: !11)
!3258 = !DILocation(line: 1216, column: 30, scope: !3245)
!3259 = !DILocation(line: 1216, column: 37, scope: !3245)
!3260 = !DILocation(line: 1216, column: 47, scope: !3245)
!3261 = !DILocation(line: 1216, column: 64, scope: !3245)
!3262 = !DILocation(line: 1217, column: 7, scope: !3245)
!3263 = !DILocation(line: 1217, column: 25, scope: !3245)
!3264 = !DILocation(line: 1223, column: 7, scope: !3245)
!3265 = !DILocation(line: 1219, column: 10, scope: !3245)
!3266 = !DILocation(line: 1233, column: 10, scope: !3245)
!3267 = !DILocation(line: 1233, column: 7, scope: !3245)
!3268 = !DILocation(line: 1238, column: 10, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1238, column: 7)
!3270 = !DILocation(line: 1238, column: 27, scope: !3269)
!3271 = !DILocation(line: 1238, column: 19, scope: !3269)
!3272 = !DILocalVariable(name: "xi", arg: 1, scope: !3273, file: !3, line: 712, type: !377)
!3273 = distinct !DISubprogram(name: "ecleazs", scope: !3, file: !3, line: 712, type: !700, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3274)
!3274 = !{!3272, !3275}
!3275 = !DILocalVariable(name: "i", scope: !3273, file: !3, line: 714, type: !8)
!3276 = !DILocation(line: 712, column: 39, scope: !3273, inlinedAt: !3277)
!3277 = distinct !DILocation(line: 1240, column: 7, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 1239, column: 5)
!3279 = !DILocation(line: 714, column: 16, scope: !3273, inlinedAt: !3277)
!3280 = !DILocation(line: 717, column: 8, scope: !3281, inlinedAt: !3277)
!3281 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 717, column: 3)
!3282 = !DILocation(line: 717, column: 3, scope: !3281, inlinedAt: !3277)
!3283 = !DILocation(line: 0, scope: !3284, inlinedAt: !3277)
!3284 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 717, column: 3)
!3285 = !DILocation(line: 718, column: 11, scope: !3284, inlinedAt: !3277)
!3286 = !DILocation(line: 717, column: 3, scope: !3284, inlinedAt: !3277)
!3287 = !DILocation(line: 719, column: 1, scope: !3273, inlinedAt: !3277)
!3288 = !DILocation(line: 1241, column: 7, scope: !3278)
!3289 = !DILocation(line: 1244, column: 11, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1244, column: 7)
!3291 = !DILocation(line: 1244, column: 7, scope: !3245)
!3292 = !DILocation(line: 1246, column: 15, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 1246, column: 11)
!3294 = distinct !DILexicalBlock(scope: !3290, file: !3, line: 1245, column: 5)
!3295 = !DILocation(line: 1246, column: 11, scope: !3294)
!3296 = !DILocation(line: 1248, column: 8, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1247, column: 2)
!3298 = !DILocation(line: 1249, column: 8, scope: !3297)
!3299 = !DILocation(line: 1219, column: 7, scope: !3245)
!3300 = !DILocation(line: 1250, column: 8, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 1250, column: 8)
!3302 = !DILocation(line: 1250, column: 8, scope: !3297)
!3303 = !DILocation(line: 1251, column: 6, scope: !3301)
!3304 = !DILocation(line: 712, column: 39, scope: !3273, inlinedAt: !3305)
!3305 = distinct !DILocation(line: 1255, column: 4, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3293, file: !3, line: 1254, column: 2)
!3307 = !DILocation(line: 714, column: 16, scope: !3273, inlinedAt: !3305)
!3308 = !DILocation(line: 717, column: 8, scope: !3281, inlinedAt: !3305)
!3309 = !DILocation(line: 717, column: 3, scope: !3281, inlinedAt: !3305)
!3310 = !DILocation(line: 0, scope: !3284, inlinedAt: !3305)
!3311 = !DILocation(line: 718, column: 11, scope: !3284, inlinedAt: !3305)
!3312 = !DILocation(line: 717, column: 3, scope: !3284, inlinedAt: !3305)
!3313 = !DILocation(line: 719, column: 1, scope: !3273, inlinedAt: !3305)
!3314 = !DILocation(line: 1256, column: 4, scope: !3306)
!3315 = !DILocation(line: 1260, column: 14, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1260, column: 7)
!3317 = !DILocation(line: 1260, column: 7, scope: !3245)
!3318 = !DILocation(line: 1263, column: 12, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1263, column: 7)
!3320 = !DILocation(line: 1263, column: 27, scope: !3319)
!3321 = !DILocation(line: 1263, column: 19, scope: !3319)
!3322 = !DILocation(line: 1263, column: 7, scope: !3245)
!3323 = !DILocation(line: 1265, column: 15, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 1264, column: 5)
!3325 = !DILocation(line: 701, column: 38, scope: !3044, inlinedAt: !3326)
!3326 = distinct !DILocation(line: 1265, column: 7, scope: !3324)
!3327 = !DILocation(line: 703, column: 16, scope: !3044, inlinedAt: !3326)
!3328 = !DILocation(line: 705, column: 8, scope: !3051, inlinedAt: !3326)
!3329 = !DILocation(line: 705, column: 3, scope: !3051, inlinedAt: !3326)
!3330 = !DILocation(line: 706, column: 8, scope: !3054, inlinedAt: !3326)
!3331 = !DILocation(line: 706, column: 11, scope: !3054, inlinedAt: !3326)
!3332 = !DILocation(line: 705, column: 3, scope: !3054, inlinedAt: !3326)
!3333 = !DILocation(line: 707, column: 1, scope: !3044, inlinedAt: !3326)
!3334 = !DILocation(line: 1266, column: 7, scope: !3324)
!3335 = !DILocation(line: 1282, column: 4, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3324, file: !3, line: 1267, column: 2)
!3337 = !DILocation(line: 1289, column: 4, scope: !3336)
!3338 = !DILocation(line: 1297, column: 4, scope: !3336)
!3339 = !DILocation(line: 1304, column: 4, scope: !3336)
!3340 = !DILocation(line: 1311, column: 4, scope: !3336)
!3341 = !DILocation(line: 0, scope: !3336)
!3342 = !{!485, !486, i64 8}
!3343 = !{!485, !487, i64 20}
!3344 = !{!485, !487, i64 22}
!3345 = !{!485, !487, i64 24}
!3346 = !{!485, !486, i64 12}
!3347 = !DILocation(line: 1313, column: 7, scope: !3324)
!3348 = !DILocation(line: 1313, column: 26, scope: !3324)
!3349 = !DILocation(line: 1314, column: 18, scope: !3324)
!3350 = !DILocation(line: 1315, column: 5, scope: !3324)
!3351 = !DILocation(line: 1323, column: 12, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1323, column: 7)
!3353 = !DILocation(line: 1323, column: 18, scope: !3352)
!3354 = !DILocation(line: 1323, column: 34, scope: !3352)
!3355 = !DILocation(line: 1323, column: 7, scope: !3245)
!3356 = !DILocation(line: 1328, column: 15, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 1327, column: 5)
!3358 = !DILocation(line: 1328, column: 25, scope: !3357)
!3359 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !3360)
!3360 = distinct !DILocation(line: 1329, column: 7, scope: !3357)
!3361 = !DILocation(line: 817, column: 5, scope: !1138, inlinedAt: !3360)
!3362 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !3360)
!3363 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !3360)
!3364 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !3360)
!3365 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !3360)
!3366 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !3360)
!3367 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !3360)
!3368 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !3360)
!3369 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !3360)
!3370 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !3360)
!3371 = !DILocation(line: 0, scope: !1138, inlinedAt: !3360)
!3372 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !3360)
!3373 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !3360)
!3374 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !3360)
!3375 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !3360)
!3376 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !3360)
!3377 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !3360)
!3378 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !3360)
!3379 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !3360)
!3380 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !3360)
!3381 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !3360)
!3382 = !DILocation(line: 1328, column: 12, scope: !3357)
!3383 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !3360)
!3384 = !DILocation(line: 1330, column: 5, scope: !3357)
!3385 = !DILocation(line: 0, scope: !3301)
!3386 = !DILocation(line: 1334, column: 14, scope: !3245)
!3387 = !DILocation(line: 1334, column: 7, scope: !3245)
!3388 = !DILocation(line: 1334, column: 25, scope: !3245)
!3389 = !DILocation(line: 1334, column: 18, scope: !3245)
!3390 = !DILocation(line: 1220, column: 18, scope: !3245)
!3391 = !DILocation(line: 1335, column: 19, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1335, column: 7)
!3393 = !DILocation(line: 1335, column: 7, scope: !3245)
!3394 = !DILocation(line: 1338, column: 7, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3392, file: !3, line: 1336, column: 5)
!3396 = !DILocation(line: 1338, column: 16, scope: !3395)
!3397 = !DILocation(line: 0, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 1339, column: 2)
!3399 = !DILocation(line: 1340, column: 8, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 1340, column: 8)
!3401 = !DILocation(line: 1340, column: 8, scope: !3398)
!3402 = !DILocation(line: 1341, column: 8, scope: !3400)
!3403 = !DILocation(line: 1341, column: 6, scope: !3400)
!3404 = !DILocation(line: 0, scope: !3245)
!3405 = !DILocation(line: 1342, column: 9, scope: !3398)
!3406 = distinct !{!3406, !3394, !3407}
!3407 = !DILocation(line: 1344, column: 2, scope: !3395)
!3408 = !DILocation(line: 1346, column: 23, scope: !3245)
!3409 = !DILocation(line: 1346, column: 14, scope: !3245)
!3410 = !DILocation(line: 1334, column: 5, scope: !3245)
!3411 = !DILocation(line: 1346, column: 17, scope: !3245)
!3412 = !DILocation(line: 1347, column: 17, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1347, column: 7)
!3414 = !DILocation(line: 1347, column: 10, scope: !3413)
!3415 = !DILocation(line: 1347, column: 24, scope: !3413)
!3416 = !DILocation(line: 1347, column: 7, scope: !3245)
!3417 = !DILocation(line: 1349, column: 13, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 1349, column: 11)
!3419 = distinct !DILexicalBlock(scope: !3413, file: !3, line: 1348, column: 5)
!3420 = !DILocation(line: 1349, column: 11, scope: !3419)
!3421 = !DILocation(line: 1351, column: 13, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 1351, column: 8)
!3423 = distinct !DILexicalBlock(scope: !3418, file: !3, line: 1350, column: 2)
!3424 = !DILocation(line: 1351, column: 8, scope: !3423)
!3425 = !DILocation(line: 1353, column: 20, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 1353, column: 12)
!3427 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1352, column: 6)
!3428 = !DILocation(line: 1353, column: 13, scope: !3426)
!3429 = !DILocation(line: 1353, column: 31, scope: !3426)
!3430 = !DILocation(line: 1353, column: 24, scope: !3426)
!3431 = !DILocation(line: 1353, column: 38, scope: !3426)
!3432 = !DILocation(line: 1353, column: 12, scope: !3427)
!3433 = !DILocation(line: 1358, column: 19, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3435, file: !3, line: 1358, column: 12)
!3435 = distinct !DILexicalBlock(scope: !3422, file: !3, line: 1357, column: 6)
!3436 = !DILocation(line: 1358, column: 12, scope: !3435)
!3437 = !DILocation(line: 1362, column: 14, scope: !3419)
!3438 = !DILocation(line: 1362, column: 7, scope: !3419)
!3439 = !DILocation(line: 1363, column: 5, scope: !3419)
!3440 = !DILocation(line: 1366, column: 18, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1366, column: 7)
!3442 = !DILocation(line: 1366, column: 27, scope: !3441)
!3443 = !DILocation(line: 1366, column: 34, scope: !3441)
!3444 = !DILocation(line: 1366, column: 7, scope: !3245)
!3445 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !3446)
!3446 = distinct !DILocation(line: 1371, column: 7, scope: !3447)
!3447 = distinct !DILexicalBlock(scope: !3441, file: !3, line: 1370, column: 5)
!3448 = !DILocation(line: 844, column: 5, scope: !937, inlinedAt: !3446)
!3449 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !3446)
!3450 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !3446)
!3451 = !DILocation(line: 847, column: 8, scope: !950, inlinedAt: !3446)
!3452 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !3446)
!3453 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !3446)
!3454 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !3446)
!3455 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !3446)
!3456 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !3446)
!3457 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !3446)
!3458 = !DILocation(line: 0, scope: !937, inlinedAt: !3446)
!3459 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !3446)
!3460 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !3446)
!3461 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !3446)
!3462 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !3446)
!3463 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !3446)
!3464 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !3446)
!3465 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !3446)
!3466 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !3446)
!3467 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !3446)
!3468 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !3446)
!3469 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !3446)
!3470 = !DILocation(line: 1372, column: 5, scope: !3447)
!3471 = !DILocation(line: 1373, column: 7, scope: !3472)
!3472 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1373, column: 7)
!3473 = !DILocation(line: 1373, column: 12, scope: !3472)
!3474 = !DILocation(line: 1373, column: 7, scope: !3245)
!3475 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !3476)
!3476 = distinct !DILocation(line: 1375, column: 7, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3472, file: !3, line: 1374, column: 5)
!3478 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !3476)
!3479 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !3476)
!3480 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !3476)
!3481 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !3476)
!3482 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !3476)
!3483 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !3476)
!3484 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !3476)
!3485 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !3476)
!3486 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !3476)
!3487 = !DILocation(line: 0, scope: !1138, inlinedAt: !3476)
!3488 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !3476)
!3489 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !3476)
!3490 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !3476)
!3491 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !3476)
!3492 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !3476)
!3493 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !3476)
!3494 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !3476)
!3495 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !3476)
!3496 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !3476)
!3497 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !3476)
!3498 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !3476)
!3499 = !DILocation(line: 1376, column: 11, scope: !3477)
!3500 = !DILocation(line: 1377, column: 5, scope: !3477)
!3501 = !DILocation(line: 1379, column: 3, scope: !3245)
!3502 = !DILocation(line: 1379, column: 13, scope: !3245)
!3503 = !DILocation(line: 1380, column: 11, scope: !3504)
!3504 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1380, column: 7)
!3505 = !DILocation(line: 1380, column: 7, scope: !3245)
!3506 = !DILocation(line: 1386, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3504, file: !3, line: 1381, column: 5)
!3508 = !DILocation(line: 1386, column: 12, scope: !3507)
!3509 = !DILocation(line: 1387, column: 12, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3507, file: !3, line: 1387, column: 7)
!3511 = !DILocation(line: 1387, column: 7, scope: !3510)
!3512 = !DILocation(line: 1388, column: 2, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 1387, column: 7)
!3514 = !DILocation(line: 1388, column: 7, scope: !3513)
!3515 = !DILocation(line: 1387, column: 7, scope: !3513)
!3516 = !DILocation(line: 1405, column: 7, scope: !3507)
!3517 = !DILocation(line: 1407, column: 7, scope: !3245)
!3518 = !DILocation(line: 1410, column: 5, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 1407, column: 7)
!3520 = !DILocation(line: 1410, column: 10, scope: !3519)
!3521 = !DILocation(line: 1411, column: 1, scope: !3245)
!3522 = !DILocation(line: 0, scope: !3278)
!3523 = distinct !DISubprogram(name: "eshup8", scope: !3, file: !3, line: 888, type: !700, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3524)
!3524 = !{!3525, !3526, !3527, !3528}
!3525 = !DILocalVariable(name: "x", arg: 1, scope: !3523, file: !3, line: 888, type: !377)
!3526 = !DILocalVariable(name: "i", scope: !3523, file: !3, line: 890, type: !8)
!3527 = !DILocalVariable(name: "newbyt", scope: !3523, file: !3, line: 891, type: !11)
!3528 = !DILocalVariable(name: "oldbyt", scope: !3523, file: !3, line: 891, type: !11)
!3529 = !DILocation(line: 888, column: 38, scope: !3523)
!3530 = !DILocation(line: 893, column: 5, scope: !3523)
!3531 = !DILocation(line: 891, column: 35, scope: !3523)
!3532 = !DILocation(line: 890, column: 7, scope: !3523)
!3533 = !DILocation(line: 896, column: 8, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 896, column: 3)
!3535 = !DILocation(line: 896, column: 3, scope: !3534)
!3536 = !DILocation(line: 898, column: 16, scope: !3537)
!3537 = distinct !DILexicalBlock(scope: !3538, file: !3, line: 897, column: 5)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 896, column: 3)
!3539 = !DILocation(line: 898, column: 19, scope: !3537)
!3540 = !DILocation(line: 891, column: 27, scope: !3523)
!3541 = !DILocation(line: 899, column: 10, scope: !3537)
!3542 = !DILocation(line: 900, column: 10, scope: !3537)
!3543 = !DILocation(line: 902, column: 7, scope: !3537)
!3544 = !DILocation(line: 896, column: 3, scope: !3538)
!3545 = !DILocation(line: 904, column: 1, scope: !3523)
!3546 = distinct !DISubprogram(name: "eshdn8", scope: !3, file: !3, line: 866, type: !700, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3547)
!3547 = !{!3548, !3549, !3550, !3551}
!3548 = !DILocalVariable(name: "x", arg: 1, scope: !3546, file: !3, line: 866, type: !377)
!3549 = !DILocalVariable(name: "newbyt", scope: !3546, file: !3, line: 868, type: !11)
!3550 = !DILocalVariable(name: "oldbyt", scope: !3546, file: !3, line: 868, type: !11)
!3551 = !DILocalVariable(name: "i", scope: !3546, file: !3, line: 869, type: !8)
!3552 = !DILocation(line: 866, column: 38, scope: !3546)
!3553 = !DILocation(line: 871, column: 5, scope: !3546)
!3554 = !DILocation(line: 868, column: 35, scope: !3546)
!3555 = !DILocation(line: 869, column: 7, scope: !3546)
!3556 = !DILocation(line: 873, column: 8, scope: !3557)
!3557 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 873, column: 3)
!3558 = !DILocation(line: 873, column: 3, scope: !3557)
!3559 = !DILocation(line: 875, column: 16, scope: !3560)
!3560 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 874, column: 5)
!3561 = distinct !DILexicalBlock(scope: !3557, file: !3, line: 873, column: 3)
!3562 = !DILocation(line: 875, column: 19, scope: !3560)
!3563 = !DILocation(line: 868, column: 27, scope: !3546)
!3564 = !DILocation(line: 876, column: 10, scope: !3560)
!3565 = !DILocation(line: 877, column: 10, scope: !3560)
!3566 = !DILocation(line: 879, column: 7, scope: !3560)
!3567 = !DILocation(line: 873, column: 3, scope: !3561)
!3568 = !DILocation(line: 881, column: 1, scope: !3546)
!3569 = distinct !DISubprogram(name: "m16m", scope: !3, file: !3, line: 1008, type: !3570, isLocal: true, isDefinition: true, scopeLine: 1009, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3572)
!3570 = !DISubroutineType(types: !3571)
!3571 = !{null, !11, !377, !377}
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582}
!3573 = !DILocalVariable(name: "a", arg: 1, scope: !3569, file: !3, line: 1008, type: !11)
!3574 = !DILocalVariable(name: "b", arg: 2, scope: !3569, file: !3, line: 1008, type: !377)
!3575 = !DILocalVariable(name: "c", arg: 3, scope: !3569, file: !3, line: 1008, type: !377)
!3576 = !DILocalVariable(name: "pp", scope: !3569, file: !3, line: 1010, type: !377)
!3577 = !DILocalVariable(name: "carry", scope: !3569, file: !3, line: 1011, type: !10)
!3578 = !DILocalVariable(name: "ps", scope: !3569, file: !3, line: 1012, type: !377)
!3579 = !DILocalVariable(name: "p", scope: !3569, file: !3, line: 1013, type: !338)
!3580 = !DILocalVariable(name: "aa", scope: !3569, file: !3, line: 1014, type: !10)
!3581 = !DILocalVariable(name: "m", scope: !3569, file: !3, line: 1014, type: !10)
!3582 = !DILocalVariable(name: "i", scope: !3569, file: !3, line: 1015, type: !8)
!3583 = !DILocation(line: 1008, column: 26, scope: !3569)
!3584 = !DILocation(line: 1008, column: 49, scope: !3569)
!3585 = !DILocation(line: 1008, column: 72, scope: !3569)
!3586 = !DILocation(line: 1013, column: 3, scope: !3569)
!3587 = !DILocation(line: 1013, column: 18, scope: !3569)
!3588 = !DILocation(line: 1017, column: 8, scope: !3569)
!3589 = !DILocation(line: 1014, column: 17, scope: !3569)
!3590 = !DILocation(line: 1018, column: 9, scope: !3569)
!3591 = !DILocation(line: 1010, column: 28, scope: !3569)
!3592 = !DILocation(line: 1019, column: 6, scope: !3569)
!3593 = !DILocation(line: 1019, column: 9, scope: !3569)
!3594 = !DILocation(line: 1020, column: 7, scope: !3569)
!3595 = !DILocation(line: 1021, column: 9, scope: !3569)
!3596 = !DILocation(line: 1012, column: 19, scope: !3569)
!3597 = !DILocation(line: 1015, column: 7, scope: !3569)
!3598 = !DILocation(line: 1023, column: 8, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1023, column: 3)
!3600 = !DILocation(line: 1023, column: 3, scope: !3599)
!3601 = !DILocation(line: 1025, column: 11, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3603, file: !3, line: 1025, column: 11)
!3603 = distinct !DILexicalBlock(scope: !3604, file: !3, line: 1024, column: 5)
!3604 = distinct !DILexicalBlock(scope: !3599, file: !3, line: 1023, column: 3)
!3605 = !DILocation(line: 1025, column: 15, scope: !3602)
!3606 = !DILocation(line: 1025, column: 11, scope: !3603)
!3607 = !DILocation(line: 1028, column: 4, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1026, column: 2)
!3609 = !DILocation(line: 1030, column: 2, scope: !3608)
!3610 = !DILocation(line: 1033, column: 28, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 1032, column: 2)
!3612 = !DILocation(line: 1033, column: 27, scope: !3611)
!3613 = !DILocation(line: 1014, column: 21, scope: !3569)
!3614 = !DILocation(line: 1034, column: 15, scope: !3611)
!3615 = !DILocation(line: 1034, column: 27, scope: !3611)
!3616 = !DILocation(line: 1034, column: 25, scope: !3611)
!3617 = !DILocation(line: 1011, column: 26, scope: !3569)
!3618 = !DILocation(line: 1035, column: 12, scope: !3611)
!3619 = !DILocation(line: 1035, column: 7, scope: !3611)
!3620 = !DILocation(line: 1035, column: 10, scope: !3611)
!3621 = !DILocation(line: 1036, column: 19, scope: !3611)
!3622 = !DILocation(line: 1036, column: 31, scope: !3611)
!3623 = !DILocation(line: 1036, column: 26, scope: !3611)
!3624 = !DILocation(line: 1036, column: 40, scope: !3611)
!3625 = !DILocation(line: 1036, column: 38, scope: !3611)
!3626 = !DILocation(line: 1037, column: 10, scope: !3611)
!3627 = !DILocation(line: 1037, column: 8, scope: !3611)
!3628 = !DILocation(line: 1038, column: 22, scope: !3611)
!3629 = !DILocation(line: 1038, column: 16, scope: !3611)
!3630 = !DILocation(line: 0, scope: !3611)
!3631 = !DILocation(line: 1023, column: 28, scope: !3604)
!3632 = !DILocation(line: 1023, column: 3, scope: !3604)
!3633 = !DILocation(line: 1023, column: 21, scope: !3604)
!3634 = distinct !{!3634, !3600, !3635}
!3635 = !DILocation(line: 1040, column: 5, scope: !3599)
!3636 = !DILocation(line: 1041, column: 8, scope: !3637)
!3637 = distinct !DILexicalBlock(scope: !3569, file: !3, line: 1041, column: 3)
!3638 = !DILocation(line: 1041, column: 3, scope: !3637)
!3639 = !DILocation(line: 1042, column: 12, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3637, file: !3, line: 1041, column: 3)
!3641 = !DILocation(line: 1042, column: 5, scope: !3640)
!3642 = !DILocation(line: 1042, column: 10, scope: !3640)
!3643 = !DILocation(line: 1041, column: 3, scope: !3640)
!3644 = !DILocation(line: 1043, column: 1, scope: !3569)
!3645 = distinct !DISubprogram(name: "ecmpm", scope: !3, file: !3, line: 786, type: !3646, isLocal: true, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3648)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!8, !377, !377}
!3648 = !{!3649, !3650, !3651}
!3649 = !DILocalVariable(name: "a", arg: 1, scope: !3645, file: !3, line: 786, type: !377)
!3650 = !DILocalVariable(name: "b", arg: 2, scope: !3645, file: !3, line: 786, type: !377)
!3651 = !DILocalVariable(name: "i", scope: !3645, file: !3, line: 788, type: !8)
!3652 = !DILocation(line: 786, column: 37, scope: !3645)
!3653 = !DILocation(line: 786, column: 69, scope: !3645)
!3654 = !DILocation(line: 790, column: 5, scope: !3645)
!3655 = !DILocation(line: 791, column: 5, scope: !3645)
!3656 = !DILocation(line: 788, column: 7, scope: !3645)
!3657 = !DILocation(line: 792, column: 8, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 792, column: 3)
!3659 = !DILocation(line: 792, column: 3, scope: !3658)
!3660 = !DILocation(line: 794, column: 11, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3662, file: !3, line: 794, column: 11)
!3662 = distinct !DILexicalBlock(scope: !3663, file: !3, line: 793, column: 5)
!3663 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 792, column: 3)
!3664 = !DILocation(line: 794, column: 19, scope: !3661)
!3665 = !DILocation(line: 794, column: 16, scope: !3661)
!3666 = !DILocation(line: 794, column: 11, scope: !3662)
!3667 = !DILocation(line: 794, column: 21, scope: !3661)
!3668 = !DILocation(line: 794, column: 13, scope: !3661)
!3669 = !DILocation(line: 792, column: 3, scope: !3663)
!3670 = !DILocation(line: 800, column: 14, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 800, column: 7)
!3672 = !DILocation(line: 800, column: 7, scope: !3645)
!3673 = !DILocation(line: 0, scope: !3671)
!3674 = !DILocation(line: 801, column: 5, scope: !3671)
!3675 = !DILocation(line: 0, scope: !3645)
!3676 = !DILocation(line: 804, column: 1, scope: !3645)
!3677 = !DILocation(line: 797, column: 3, scope: !3645)
!3678 = distinct !DISubprogram(name: "esubm", scope: !3, file: !3, line: 978, type: !852, isLocal: true, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3679)
!3679 = !{!3680, !3681, !3682, !3683, !3684}
!3680 = !DILocalVariable(name: "x", arg: 1, scope: !3678, file: !3, line: 978, type: !377)
!3681 = !DILocalVariable(name: "y", arg: 2, scope: !3678, file: !3, line: 978, type: !377)
!3682 = !DILocalVariable(name: "a", scope: !3678, file: !3, line: 980, type: !10)
!3683 = !DILocalVariable(name: "i", scope: !3678, file: !3, line: 981, type: !8)
!3684 = !DILocalVariable(name: "carry", scope: !3678, file: !3, line: 982, type: !9)
!3685 = !DILocation(line: 978, column: 28, scope: !3678)
!3686 = !DILocation(line: 978, column: 51, scope: !3678)
!3687 = !DILocation(line: 984, column: 5, scope: !3678)
!3688 = !DILocation(line: 985, column: 5, scope: !3678)
!3689 = !DILocation(line: 982, column: 16, scope: !3678)
!3690 = !DILocation(line: 981, column: 7, scope: !3678)
!3691 = !DILocation(line: 987, column: 8, scope: !3692)
!3692 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 987, column: 3)
!3693 = !DILocation(line: 987, column: 3, scope: !3692)
!3694 = !DILocation(line: 989, column: 28, scope: !3695)
!3695 = distinct !DILexicalBlock(scope: !3696, file: !3, line: 988, column: 5)
!3696 = distinct !DILexicalBlock(scope: !3692, file: !3, line: 987, column: 3)
!3697 = !DILocation(line: 989, column: 11, scope: !3695)
!3698 = !DILocation(line: 989, column: 51, scope: !3695)
!3699 = !DILocation(line: 989, column: 34, scope: !3695)
!3700 = !DILocation(line: 989, column: 32, scope: !3695)
!3701 = !DILocation(line: 980, column: 17, scope: !3678)
!3702 = !DILocation(line: 990, column: 11, scope: !3695)
!3703 = !DILocation(line: 994, column: 12, scope: !3695)
!3704 = !DILocation(line: 994, column: 10, scope: !3695)
!3705 = !DILocation(line: 995, column: 7, scope: !3695)
!3706 = !DILocation(line: 996, column: 7, scope: !3695)
!3707 = !DILocation(line: 987, column: 3, scope: !3696)
!3708 = !DILocation(line: 989, column: 55, scope: !3695)
!3709 = !DILocation(line: 998, column: 1, scope: !3678)
!3710 = distinct !DISubprogram(name: "eshift", scope: !3, file: !3, line: 2486, type: !3711, isLocal: true, isDefinition: true, scopeLine: 2487, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3713)
!3711 = !DISubroutineType(types: !3712)
!3712 = !{!8, !377, !8}
!3713 = !{!3714, !3715, !3716, !3717}
!3714 = !DILocalVariable(name: "x", arg: 1, scope: !3710, file: !3, line: 2486, type: !377)
!3715 = !DILocalVariable(name: "sc", arg: 2, scope: !3710, file: !3, line: 2486, type: !8)
!3716 = !DILocalVariable(name: "lost", scope: !3710, file: !3, line: 2488, type: !11)
!3717 = !DILocalVariable(name: "p", scope: !3710, file: !3, line: 2489, type: !377)
!3718 = !DILocation(line: 2486, column: 29, scope: !3710)
!3719 = !DILocation(line: 2486, column: 36, scope: !3710)
!3720 = !DILocation(line: 2491, column: 10, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2491, column: 7)
!3722 = !DILocation(line: 2491, column: 7, scope: !3710)
!3723 = !DILocation(line: 2488, column: 18, scope: !3710)
!3724 = !DILocation(line: 2495, column: 14, scope: !3710)
!3725 = !DILocation(line: 2489, column: 19, scope: !3710)
!3726 = !DILocation(line: 2497, column: 10, scope: !3727)
!3727 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2497, column: 7)
!3728 = !DILocation(line: 2497, column: 7, scope: !3710)
!3729 = !DILocation(line: 2523, column: 17, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 2522, column: 5)
!3731 = !DILocation(line: 2523, column: 7, scope: !3730)
!3732 = !DILocation(line: 920, column: 12, scope: !2587, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 2525, column: 4, scope: !3734)
!3734 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 2524, column: 2)
!3735 = !DILocation(line: 911, column: 38, scope: !2575, inlinedAt: !3733)
!3736 = !DILocation(line: 914, column: 28, scope: !2575, inlinedAt: !3733)
!3737 = !DILocation(line: 913, column: 7, scope: !2575, inlinedAt: !3733)
!3738 = !DILocation(line: 919, column: 8, scope: !2584, inlinedAt: !3733)
!3739 = !DILocation(line: 919, column: 3, scope: !2584, inlinedAt: !3733)
!3740 = !DILocation(line: 920, column: 10, scope: !2587, inlinedAt: !3733)
!3741 = !DILocation(line: 919, column: 3, scope: !2587, inlinedAt: !3733)
!3742 = !DILocation(line: 922, column: 6, scope: !2575, inlinedAt: !3733)
!3743 = !DILocation(line: 923, column: 1, scope: !2575, inlinedAt: !3733)
!3744 = distinct !{!3744, !3731, !3745}
!3745 = !DILocation(line: 2527, column: 2, scope: !3730)
!3746 = !DILocation(line: 2526, column: 7, scope: !3734)
!3747 = !DILocation(line: 2499, column: 12, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3727, file: !3, line: 2498, column: 5)
!3749 = !DILocation(line: 2500, column: 7, scope: !3748)
!3750 = !DILocation(line: 2500, column: 17, scope: !3748)
!3751 = !DILocation(line: 2502, column: 12, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 2501, column: 2)
!3753 = !DILocation(line: 939, column: 14, scope: !2921, inlinedAt: !3754)
!3754 = distinct !DILocation(line: 2503, column: 4, scope: !3752)
!3755 = !DILocation(line: 930, column: 38, scope: !2923, inlinedAt: !3754)
!3756 = !DILocation(line: 933, column: 28, scope: !2923, inlinedAt: !3754)
!3757 = !DILocation(line: 932, column: 7, scope: !2923, inlinedAt: !3754)
!3758 = !DILocation(line: 938, column: 8, scope: !2922, inlinedAt: !3754)
!3759 = !DILocation(line: 938, column: 3, scope: !2922, inlinedAt: !3754)
!3760 = !DILocation(line: 939, column: 12, scope: !2921, inlinedAt: !3754)
!3761 = !DILocation(line: 938, column: 3, scope: !2921, inlinedAt: !3754)
!3762 = !DILocation(line: 941, column: 10, scope: !2923, inlinedAt: !3754)
!3763 = !DILocation(line: 942, column: 1, scope: !2923, inlinedAt: !3754)
!3764 = !DILocation(line: 2504, column: 7, scope: !3752)
!3765 = distinct !{!3765, !3749, !3766}
!3766 = !DILocation(line: 2505, column: 2, scope: !3748)
!3767 = !DILocation(line: 2502, column: 9, scope: !3752)
!3768 = !DILocation(line: 2507, column: 17, scope: !3748)
!3769 = !DILocation(line: 0, scope: !3752)
!3770 = !DILocation(line: 2507, column: 7, scope: !3748)
!3771 = !DILocation(line: 2509, column: 12, scope: !3772)
!3772 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 2508, column: 2)
!3773 = distinct !{!3773, !3749, !3766, !748}
!3774 = !DILocation(line: 2514, column: 17, scope: !3748)
!3775 = !DILocation(line: 0, scope: !3772)
!3776 = !DILocation(line: 2514, column: 7, scope: !3748)
!3777 = !DILocation(line: 2509, column: 15, scope: !3772)
!3778 = !DILocation(line: 2509, column: 9, scope: !3772)
!3779 = !DILocation(line: 2510, column: 4, scope: !3772)
!3780 = !DILocation(line: 2511, column: 7, scope: !3772)
!3781 = distinct !{!3781, !3770, !3782}
!3782 = !DILocation(line: 2512, column: 2, scope: !3748)
!3783 = !DILocation(line: 2516, column: 12, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3748, file: !3, line: 2515, column: 2)
!3785 = !DILocation(line: 2516, column: 15, scope: !3784)
!3786 = !DILocation(line: 812, column: 38, scope: !1138, inlinedAt: !3787)
!3787 = distinct !DILocation(line: 2517, column: 4, scope: !3784)
!3788 = !DILocation(line: 814, column: 27, scope: !1138, inlinedAt: !3787)
!3789 = !DILocation(line: 815, column: 7, scope: !1138, inlinedAt: !3787)
!3790 = !DILocation(line: 820, column: 8, scope: !1147, inlinedAt: !3787)
!3791 = !DILocation(line: 820, column: 3, scope: !1147, inlinedAt: !3787)
!3792 = !DILocation(line: 822, column: 11, scope: !1150, inlinedAt: !3787)
!3793 = !DILocation(line: 822, column: 14, scope: !1150, inlinedAt: !3787)
!3794 = !DILocation(line: 822, column: 11, scope: !1151, inlinedAt: !3787)
!3795 = !DILocation(line: 823, column: 7, scope: !1150, inlinedAt: !3787)
!3796 = !DILocation(line: 823, column: 2, scope: !1150, inlinedAt: !3787)
!3797 = !DILocation(line: 0, scope: !1138, inlinedAt: !3787)
!3798 = !DILocation(line: 824, column: 10, scope: !1151, inlinedAt: !3787)
!3799 = !DILocation(line: 825, column: 16, scope: !1160, inlinedAt: !3787)
!3800 = !DILocation(line: 825, column: 11, scope: !1151, inlinedAt: !3787)
!3801 = !DILocation(line: 826, column: 5, scope: !1160, inlinedAt: !3787)
!3802 = !DILocation(line: 826, column: 2, scope: !1160, inlinedAt: !3787)
!3803 = !DILocation(line: 827, column: 12, scope: !1151, inlinedAt: !3787)
!3804 = !DILocation(line: 828, column: 7, scope: !1151, inlinedAt: !3787)
!3805 = !DILocation(line: 820, column: 24, scope: !1152, inlinedAt: !3787)
!3806 = !DILocation(line: 820, column: 3, scope: !1152, inlinedAt: !3787)
!3807 = !DILocation(line: 820, column: 17, scope: !1152, inlinedAt: !3787)
!3808 = !DILocation(line: 2516, column: 9, scope: !3784)
!3809 = !DILocation(line: 830, column: 1, scope: !1138, inlinedAt: !3787)
!3810 = !DILocation(line: 2518, column: 7, scope: !3784)
!3811 = distinct !{!3811, !3776, !3812}
!3812 = !DILocation(line: 2519, column: 2, scope: !3748)
!3813 = !DILocation(line: 2529, column: 17, scope: !3730)
!3814 = !DILocation(line: 2529, column: 7, scope: !3730)
!3815 = !DILocation(line: 2531, column: 4, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 2530, column: 2)
!3817 = distinct !{!3817, !3731, !3745, !748}
!3818 = !DILocation(line: 2535, column: 17, scope: !3730)
!3819 = !DILocation(line: 2535, column: 7, scope: !3730)
!3820 = !DILocation(line: 0, scope: !3710)
!3821 = !DILocation(line: 2532, column: 7, scope: !3816)
!3822 = distinct !{!3822, !3814, !3823}
!3823 = !DILocation(line: 2533, column: 2, scope: !3730)
!3824 = !DILocation(line: 839, column: 38, scope: !937, inlinedAt: !3825)
!3825 = distinct !DILocation(line: 2537, column: 4, scope: !3826)
!3826 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 2536, column: 2)
!3827 = !DILocation(line: 841, column: 27, scope: !937, inlinedAt: !3825)
!3828 = !DILocation(line: 842, column: 7, scope: !937, inlinedAt: !3825)
!3829 = !DILocation(line: 847, column: 3, scope: !950, inlinedAt: !3825)
!3830 = !DILocation(line: 849, column: 11, scope: !947, inlinedAt: !3825)
!3831 = !DILocation(line: 849, column: 14, scope: !947, inlinedAt: !3825)
!3832 = !DILocation(line: 849, column: 11, scope: !948, inlinedAt: !3825)
!3833 = !DILocation(line: 850, column: 7, scope: !947, inlinedAt: !3825)
!3834 = !DILocation(line: 850, column: 2, scope: !947, inlinedAt: !3825)
!3835 = !DILocation(line: 0, scope: !937, inlinedAt: !3825)
!3836 = !DILocation(line: 851, column: 10, scope: !948, inlinedAt: !3825)
!3837 = !DILocation(line: 852, column: 16, scope: !958, inlinedAt: !3825)
!3838 = !DILocation(line: 852, column: 11, scope: !948, inlinedAt: !3825)
!3839 = !DILocation(line: 853, column: 5, scope: !958, inlinedAt: !3825)
!3840 = !DILocation(line: 853, column: 2, scope: !958, inlinedAt: !3825)
!3841 = !DILocation(line: 854, column: 12, scope: !948, inlinedAt: !3825)
!3842 = !DILocation(line: 855, column: 7, scope: !948, inlinedAt: !3825)
!3843 = !DILocation(line: 847, column: 24, scope: !949, inlinedAt: !3825)
!3844 = !DILocation(line: 847, column: 3, scope: !949, inlinedAt: !3825)
!3845 = !DILocation(line: 847, column: 17, scope: !949, inlinedAt: !3825)
!3846 = !DILocation(line: 857, column: 1, scope: !937, inlinedAt: !3825)
!3847 = !DILocation(line: 2538, column: 7, scope: !3826)
!3848 = distinct !{!3848, !3819, !3849}
!3849 = !DILocation(line: 2539, column: 2, scope: !3730)
!3850 = !DILocation(line: 0, scope: !3784)
!3851 = !DILocation(line: 2541, column: 7, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3710, file: !3, line: 2541, column: 7)
!3853 = !DILocation(line: 2541, column: 7, scope: !3710)
!3854 = !DILocation(line: 2542, column: 5, scope: !3852)
!3855 = !DILocation(line: 0, scope: !3721)
!3856 = !DILocation(line: 2544, column: 1, scope: !3710)
