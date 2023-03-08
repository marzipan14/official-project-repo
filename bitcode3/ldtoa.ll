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
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %18) #5, !dbg !469
  %19 = bitcast %struct.LDPARMS* %15 to i8*, !dbg !471
  call void @llvm.lifetime.start.p0i8(i64 80, i8* nonnull %19) #5, !dbg !471
  %20 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 0, !dbg !473
  call void @llvm.lifetime.start.p0i8(i64 57, i8* nonnull %20) #5, !dbg !473
  %21 = bitcast %union.uconv* %17 to i8*, !dbg !475
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #5, !dbg !475
  %22 = getelementptr inbounds %union.uconv, %union.uconv* %17, i64 0, i32 0, !dbg !476
  store x86_fp80 %1, x86_fp80* %22, align 16, !dbg !477, !tbaa !478
  %23 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 0, !dbg !482
  store i32 -1, i32* %23, align 4, !dbg !483, !tbaa !484
  %24 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 1, !dbg !488
  store i32 144, i32* %24, align 4, !dbg !489, !tbaa !490
  %25 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 10, !dbg !491
  %26 = load %struct._Bigint*, %struct._Bigint** %25, align 8, !dbg !491, !tbaa !493
  %27 = icmp eq %struct._Bigint* %26, null, !dbg !491
  br i1 %27, label %34, label %28, !dbg !499

; <label>:28:                                     ; preds = %7
  %29 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 11, !dbg !500
  %30 = load i32, i32* %29, align 8, !dbg !500, !tbaa !502
  %31 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %26, i64 0, i32 1, !dbg !503
  store i32 %30, i32* %31, align 8, !dbg !504, !tbaa !505
  %32 = shl i32 1, %30, !dbg !507
  %33 = getelementptr inbounds %struct._Bigint, %struct._Bigint* %26, i64 0, i32 2, !dbg !508
  store i32 %32, i32* %33, align 4, !dbg !509, !tbaa !510
  tail call void @_Bfree(%struct._reent* nonnull %0, %struct._Bigint* nonnull %26) #6, !dbg !511
  store %struct._Bigint* null, %struct._Bigint** %25, align 8, !dbg !512, !tbaa !493
  br label %34, !dbg !513

; <label>:34:                                     ; preds = %7, %28
  %35 = bitcast %union.uconv* %17 to i16*, !dbg !514
  %36 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 0, !dbg !515
  call fastcc void @e64toe(i16* nonnull %35, i16* nonnull %36) #7, !dbg !516
  %37 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 9, !dbg !532
  %38 = load i16, i16* %37, align 2, !dbg !532, !tbaa !534
  %39 = and i16 %38, 32767, !dbg !535
  %40 = icmp eq i16 %39, 32767, !dbg !536
  br i1 %40, label %41, label %78, !dbg !537

; <label>:41:                                     ; preds = %34
  %42 = load i16, i16* %36, align 16, !dbg !539, !tbaa !534
  %43 = icmp eq i16 %42, 0, !dbg !544
  br i1 %43, label %44, label %80, !dbg !545

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 1, !dbg !546
  %46 = load i16, i16* %45, align 2, !dbg !539, !tbaa !534
  %47 = icmp eq i16 %46, 0, !dbg !544
  br i1 %47, label %48, label %80, !dbg !545

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 2, !dbg !546
  %50 = load i16, i16* %49, align 4, !dbg !539, !tbaa !534
  %51 = icmp eq i16 %50, 0, !dbg !544
  br i1 %51, label %52, label %80, !dbg !545

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 3, !dbg !546
  %54 = load i16, i16* %53, align 2, !dbg !539, !tbaa !534
  %55 = icmp eq i16 %54, 0, !dbg !544
  br i1 %55, label %56, label %80, !dbg !545

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 4, !dbg !546
  %58 = load i16, i16* %57, align 8, !dbg !539, !tbaa !534
  %59 = icmp eq i16 %58, 0, !dbg !544
  br i1 %59, label %60, label %80, !dbg !545

; <label>:60:                                     ; preds = %56
  %61 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 5, !dbg !546
  %62 = load i16, i16* %61, align 2, !dbg !539, !tbaa !534
  %63 = icmp eq i16 %62, 0, !dbg !544
  br i1 %63, label %64, label %80, !dbg !545

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 6, !dbg !546
  %66 = load i16, i16* %65, align 4, !dbg !539, !tbaa !534
  %67 = icmp eq i16 %66, 0, !dbg !544
  br i1 %67, label %68, label %80, !dbg !545

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 7, !dbg !546
  %70 = load i16, i16* %69, align 2, !dbg !539, !tbaa !534
  %71 = icmp eq i16 %70, 0, !dbg !544
  br i1 %71, label %72, label %80, !dbg !545

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 8, !dbg !546
  %74 = load i16, i16* %73, align 16, !dbg !539, !tbaa !534
  %75 = icmp ne i16 %74, 0, !dbg !544
  %76 = icmp sgt i16 %38, -1, !dbg !547
  %77 = or i1 %76, %75, !dbg !548
  br i1 %77, label %80, label %81, !dbg !548

; <label>:78:                                     ; preds = %34
  %79 = icmp sgt i16 %38, -1, !dbg !547
  br i1 %79, label %80, label %81

; <label>:80:                                     ; preds = %72, %68, %64, %60, %56, %52, %48, %44, %41, %78
  br label %81

; <label>:81:                                     ; preds = %72, %78, %80
  %82 = phi i32 [ 0, %80 ], [ 1, %78 ], [ 1, %72 ]
  store i32 %82, i32* %5, align 4, !dbg !549, !tbaa !550
  %83 = icmp eq i32 %2, 3, !dbg !551
  %84 = xor i1 %83, true, !dbg !553
  %85 = sext i1 %84 to i32, !dbg !553
  %86 = add nsw i32 %85, %3, !dbg !553
  %87 = icmp eq i32 %2, 0, !dbg !554
  %88 = select i1 %87, i32 20, i32 %86, !dbg !556
  %89 = icmp slt i32 %88, 42, !dbg !557
  %90 = select i1 %89, i32 %88, i32 42, !dbg !557
  %91 = bitcast [13 x i16]* %10 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %91) #5, !dbg !564
  %92 = bitcast [13 x i16]* %11 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %92) #5, !dbg !564
  %93 = bitcast [13 x i16]* %12 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %93) #5, !dbg !564
  %94 = bitcast [13 x i16]* %13 to i8*, !dbg !564
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %94) #5, !dbg !564
  %95 = load i32, i32* %24, align 4, !dbg !567, !tbaa !490
  %96 = load i16, i16* %36, align 16, !dbg !572, !tbaa !534
  br i1 %40, label %101, label %97, !dbg !573

; <label>:97:                                     ; preds = %81
  %98 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 1
  %99 = bitcast i16* %98 to <8 x i16>*, !dbg !574
  %100 = load <8 x i16>, <8 x i16>* %99, align 2, !dbg !574, !tbaa !534
  br label %137, !dbg !573

; <label>:101:                                    ; preds = %81
  %102 = icmp eq i16 %96, 0, !dbg !586
  br i1 %102, label %103, label %135, !dbg !587

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 1, !dbg !588
  %105 = load i16, i16* %104, align 2, !dbg !589, !tbaa !534
  %106 = icmp eq i16 %105, 0, !dbg !586
  br i1 %106, label %107, label %135, !dbg !587

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 2, !dbg !588
  %109 = load i16, i16* %108, align 4, !dbg !589, !tbaa !534
  %110 = icmp eq i16 %109, 0, !dbg !586
  br i1 %110, label %111, label %135, !dbg !587

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 3, !dbg !588
  %113 = load i16, i16* %112, align 2, !dbg !589, !tbaa !534
  %114 = icmp eq i16 %113, 0, !dbg !586
  br i1 %114, label %115, label %135, !dbg !587

; <label>:115:                                    ; preds = %111
  %116 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 4, !dbg !588
  %117 = load i16, i16* %116, align 8, !dbg !589, !tbaa !534
  %118 = icmp eq i16 %117, 0, !dbg !586
  br i1 %118, label %119, label %135, !dbg !587

; <label>:119:                                    ; preds = %115
  %120 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 5, !dbg !588
  %121 = load i16, i16* %120, align 2, !dbg !589, !tbaa !534
  %122 = icmp eq i16 %121, 0, !dbg !586
  br i1 %122, label %123, label %135, !dbg !587

; <label>:123:                                    ; preds = %119
  %124 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 6, !dbg !588
  %125 = load i16, i16* %124, align 4, !dbg !589, !tbaa !534
  %126 = icmp eq i16 %125, 0, !dbg !586
  br i1 %126, label %127, label %135, !dbg !587

; <label>:127:                                    ; preds = %123
  %128 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 7, !dbg !588
  %129 = load i16, i16* %128, align 2, !dbg !589, !tbaa !534
  %130 = icmp eq i16 %129, 0, !dbg !586
  br i1 %130, label %131, label %135, !dbg !587

; <label>:131:                                    ; preds = %127
  %132 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 8, !dbg !588
  %133 = load i16, i16* %132, align 16, !dbg !589, !tbaa !534
  %134 = icmp eq i16 %133, 0, !dbg !586
  br i1 %134, label %137, label %135, !dbg !590

; <label>:135:                                    ; preds = %131, %127, %123, %119, %115, %111, %107, %103, %101
  %136 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0)) #6, !dbg !591
  br label %1766, !dbg !594

; <label>:137:                                    ; preds = %131, %97
  %138 = phi <8 x i16> [ %100, %97 ], [ zeroinitializer, %131 ], !dbg !574
  store i32 144, i32* %24, align 4, !dbg !595, !tbaa !490
  %139 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 0, !dbg !596
  %140 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 1, !dbg !600
  store i16 %96, i16* %139, align 16, !dbg !601, !tbaa !534
  %141 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 2, !dbg !600
  %142 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 3, !dbg !600
  %143 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 4, !dbg !600
  %144 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 5, !dbg !600
  %145 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 6, !dbg !600
  %146 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 7, !dbg !600
  %147 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 8, !dbg !600
  %148 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 9, !dbg !600
  %149 = bitcast i16* %140 to <8 x i16>*, !dbg !601
  store <8 x i16> %138, <8 x i16>* %149, align 2, !dbg !601, !tbaa !534
  %150 = ashr i16 %38, 15, !dbg !602
  store i16 %39, i16* %148, align 2, !dbg !572, !tbaa !534
  %151 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 0, !dbg !605
  %152 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 1, !dbg !610
  %153 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 2, !dbg !610
  %154 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 3, !dbg !610
  %155 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 4, !dbg !610
  %156 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 5, !dbg !610
  %157 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 6, !dbg !610
  %158 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 7, !dbg !610
  %159 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 8, !dbg !610
  %160 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !611
  store <8 x i16> zeroinitializer, <8 x i16>* %160, align 16, !dbg !611, !tbaa !534
  %161 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 9, !dbg !610
  store i16 -32768, i16* %159, align 16, !dbg !611, !tbaa !534
  store i16 16383, i16* %161, align 2, !dbg !611, !tbaa !534
  %162 = icmp eq i16 %39, 0, !dbg !612
  br i1 %162, label %163, label %181, !dbg !614

; <label>:163:                                    ; preds = %137
  %164 = extractelement <8 x i16> %138, i32 7, !dbg !616
  %165 = or i16 %164, %96, !dbg !616
  %166 = extractelement <8 x i16> %138, i32 6, !dbg !616
  %167 = or i16 %165, %166, !dbg !616
  %168 = extractelement <8 x i16> %138, i32 5, !dbg !616
  %169 = or i16 %167, %168, !dbg !616
  %170 = extractelement <8 x i16> %138, i32 4, !dbg !616
  %171 = or i16 %169, %170, !dbg !616
  %172 = extractelement <8 x i16> %138, i32 3, !dbg !616
  %173 = or i16 %171, %172, !dbg !616
  %174 = extractelement <8 x i16> %138, i32 2, !dbg !616
  %175 = or i16 %173, %174, !dbg !616
  %176 = extractelement <8 x i16> %138, i32 1, !dbg !616
  %177 = or i16 %175, %176, !dbg !616
  %178 = extractelement <8 x i16> %138, i32 0, !dbg !616
  %179 = or i16 %177, %178, !dbg !616
  %180 = icmp eq i16 %179, 0, !dbg !616
  br i1 %180, label %1139, label %193, !dbg !616

; <label>:181:                                    ; preds = %137
  br i1 %40, label %182, label %188, !dbg !621

; <label>:182:                                    ; preds = %181
  %183 = icmp eq i16 %150, 0, !dbg !622
  br i1 %183, label %186, label %184, !dbg !626

; <label>:184:                                    ; preds = %182
  %185 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !627
  br label %1766, !dbg !627

; <label>:186:                                    ; preds = %182
  %187 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)) #6, !dbg !628
  br label %1766

; <label>:188:                                    ; preds = %181
  %189 = extractelement <8 x i16> %138, i32 7, !dbg !629
  %190 = icmp sgt i16 %189, -1, !dbg !629
  br i1 %190, label %191, label %193, !dbg !631

; <label>:191:                                    ; preds = %188
  %192 = call i32 (i8*, i8*, ...) @sprintf(i8* nonnull %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0)) #6, !dbg !632
  br label %1766, !dbg !634

; <label>:193:                                    ; preds = %188, %163
  %194 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %139) #6, !dbg !635
  %195 = icmp eq i32 %194, 0, !dbg !637
  br i1 %195, label %1139, label %196, !dbg !639

; <label>:196:                                    ; preds = %193
  %197 = icmp slt i32 %194, 0, !dbg !640
  br i1 %197, label %198, label %797, !dbg !641

; <label>:198:                                    ; preds = %196
  %199 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0, !dbg !642
  %200 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1, !dbg !647
  store i16 %96, i16* %199, align 16, !dbg !648, !tbaa !534
  %201 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2, !dbg !647
  %202 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3, !dbg !647
  %203 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4, !dbg !647
  %204 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5, !dbg !647
  %205 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6, !dbg !647
  %206 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7, !dbg !647
  %207 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8, !dbg !647
  %208 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9, !dbg !647
  %209 = bitcast i16* %200 to <8 x i16>*, !dbg !648
  store <8 x i16> %138, <8 x i16>* %209, align 2, !dbg !648, !tbaa !534
  store i16 16526, i16* %208, align 2, !dbg !649, !tbaa !534
  %210 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0
  %211 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1
  %212 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2
  %213 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3
  %214 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4
  %215 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5
  %216 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6
  %217 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7
  %218 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8
  %219 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9
  %220 = bitcast [13 x i16]* %8 to i8*
  %221 = bitcast [13 x i16]* %9 to i8*
  %222 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 0
  %223 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 1
  %224 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 2
  %225 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 3
  %226 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 4
  %227 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 5
  %228 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 6
  %229 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 7
  %230 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 8
  %231 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 9
  %232 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 10
  %233 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 11
  %234 = getelementptr inbounds [13 x i16], [13 x i16]* %8, i64 0, i64 12
  %235 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 0
  %236 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 1
  %237 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 2
  %238 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 3
  %239 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 4
  %240 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 5
  %241 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 6
  %242 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 7
  %243 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 8
  %244 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 9
  %245 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 10
  %246 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 11
  %247 = getelementptr inbounds [13 x i16], [13 x i16]* %9, i64 0, i64 12
  %248 = bitcast [13 x i16]* %11 to <8 x i16>*
  %249 = bitcast [13 x i16]* %13 to <8 x i16>*
  %250 = bitcast [13 x i16]* %13 to <8 x i16>*
  %251 = bitcast i16* %211 to <8 x i16>*
  %252 = bitcast i16* %238 to <8 x i16>*
  %253 = bitcast [13 x i16]* %8 to <8 x i16>*
  %254 = bitcast [13 x i16]* %9 to <8 x i16>*
  %255 = bitcast i16* %225 to <8 x i16>*
  %256 = bitcast [13 x i16]* %13 to <8 x i16>*
  %257 = bitcast [13 x i16]* %13 to <8 x i16>*
  br label %258, !dbg !652

; <label>:258:                                    ; preds = %763, %198
  %259 = phi i32 [ 0, %198 ], [ %764, %763 ], !dbg !653
  %260 = phi i16* [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 8, i64 0), %198 ], [ %765, %763 ], !dbg !654
  %261 = phi i16 [ 16, %198 ], [ %766, %763 ], !dbg !654
  call fastcc void @ediv(i16* nonnull %260, i16* nonnull %199, i16* nonnull %151, %struct.LDPARMS* nonnull %15) #6, !dbg !655
  %262 = load <8 x i16>, <8 x i16>* %248, align 16, !dbg !664, !tbaa !534
  %263 = load i16, i16* %159, align 16, !dbg !664, !tbaa !534
  %264 = load i16, i16* %161, align 2, !dbg !664, !tbaa !534
  %265 = and i16 %264, 32767, !dbg !665
  %266 = icmp ult i16 %265, 16383, !dbg !666
  br i1 %266, label %267, label %268, !dbg !668

; <label>:267:                                    ; preds = %258
  store <8 x i16> zeroinitializer, <8 x i16>* %249, align 16, !dbg !679, !tbaa !534
  store i16 0, i16* %218, align 16, !dbg !679, !tbaa !534
  store i16 0, i16* %219, align 2, !dbg !679, !tbaa !534
  br label %340, !dbg !682

; <label>:268:                                    ; preds = %258
  %269 = zext i16 %265 to i32, !dbg !665
  %270 = sub nsw i32 16526, %269, !dbg !684
  store <8 x i16> %262, <8 x i16>* %250, align 16, !dbg !689, !tbaa !534
  store i16 %263, i16* %218, align 16, !dbg !689, !tbaa !534
  store i16 %264, i16* %219, align 2, !dbg !689, !tbaa !534
  %271 = icmp slt i32 %270, 1, !dbg !690
  %272 = extractelement <8 x i16> %262, i32 0, !dbg !692
  %273 = extractelement <8 x i16> %262, i32 1, !dbg !692
  br i1 %271, label %1732, label %274, !dbg !692

; <label>:274:                                    ; preds = %268
  %275 = icmp sgt i32 %270, 15, !dbg !694
  br i1 %275, label %276, label %331, !dbg !695

; <label>:276:                                    ; preds = %274
  %277 = add nsw i32 %269, -16527, !dbg !696
  %278 = icmp sgt i32 %277, -32, !dbg !696
  %279 = select i1 %278, i32 %277, i32 -32, !dbg !696
  %280 = sub nsw i32 16542, %269, !dbg !696
  %281 = add nsw i32 %279, %280, !dbg !696
  %282 = lshr i32 %281, 4, !dbg !696
  %283 = add nuw nsw i32 %282, 1, !dbg !696
  %284 = zext i32 %283 to i64, !dbg !696
  %285 = add nsw i32 %269, -16527, !dbg !696
  %286 = icmp sgt i32 %285, -32, !dbg !696
  %287 = select i1 %286, i32 %285, i32 -32, !dbg !696
  %288 = add nsw i32 %287, 16542, !dbg !696
  %289 = sub nsw i32 %288, %269, !dbg !696
  %290 = lshr i32 %289, 4, !dbg !696
  %291 = add nuw nsw i32 %290, 1, !dbg !696
  %292 = icmp ult i32 %291, 16, !dbg !696
  br i1 %292, label %316, label %293, !dbg !696

; <label>:293:                                    ; preds = %276
  %294 = zext i32 %291 to i64, !dbg !696
  %295 = add nuw nsw i32 %290, 1, !dbg !696
  %296 = and i32 %295, 15, !dbg !696
  %297 = zext i32 %296 to i64, !dbg !696
  %298 = sub nsw i64 %294, %297, !dbg !696
  %299 = getelementptr [13 x i16], [13 x i16]* %13, i64 0, i64 %298, !dbg !696
  %300 = add nsw i32 %289, 16, !dbg !696
  %301 = and i32 %300, 240, !dbg !696
  %302 = add nuw nsw i32 %301, 16510, !dbg !696
  %303 = sub nsw i32 %302, %269, !dbg !696
  %304 = and i32 %289, -16, !dbg !696
  %305 = sub nsw i32 %303, %304, !dbg !696
  br label %306, !dbg !696

; <label>:306:                                    ; preds = %306, %293
  %307 = phi i64 [ 0, %293 ], [ %312, %306 ]
  %308 = getelementptr [13 x i16], [13 x i16]* %13, i64 0, i64 %307
  %309 = bitcast i16* %308 to <8 x i16>*, !dbg !698
  store <8 x i16> zeroinitializer, <8 x i16>* %309, align 16, !dbg !698, !tbaa !534
  %310 = getelementptr i16, i16* %308, i64 8, !dbg !698
  %311 = bitcast i16* %310 to <8 x i16>*, !dbg !698
  store <8 x i16> zeroinitializer, <8 x i16>* %311, align 16, !dbg !698, !tbaa !534
  %312 = add i64 %307, 16
  %313 = icmp eq i64 %312, %298
  br i1 %313, label %314, label %306, !llvm.loop !699

; <label>:314:                                    ; preds = %306
  %315 = icmp eq i32 %296, 0
  br i1 %315, label %325, label %316, !dbg !696

; <label>:316:                                    ; preds = %314, %276
  %317 = phi i16* [ %210, %276 ], [ %299, %314 ]
  %318 = phi i32 [ %270, %276 ], [ %305, %314 ]
  br label %319, !dbg !696

; <label>:319:                                    ; preds = %316, %319
  %320 = phi i16* [ %322, %319 ], [ %317, %316 ]
  %321 = phi i32 [ %323, %319 ], [ %318, %316 ]
  %322 = getelementptr inbounds i16, i16* %320, i64 1, !dbg !696
  store i16 0, i16* %320, align 2, !dbg !698, !tbaa !534
  %323 = add nsw i32 %321, -16, !dbg !703
  %324 = icmp sgt i32 %321, 31, !dbg !694
  br i1 %324, label %319, label %325, !dbg !695, !llvm.loop !704

; <label>:325:                                    ; preds = %319, %314
  %326 = getelementptr [13 x i16], [13 x i16]* %13, i64 0, i64 %284, !dbg !696
  %327 = and i32 %281, -16, !dbg !696
  %328 = sub nsw i32 16510, %269, !dbg !696
  %329 = sub nsw i32 %328, %327, !dbg !696
  %330 = load i16, i16* %326, align 2, !dbg !706, !tbaa !534
  br label %331, !dbg !707

; <label>:331:                                    ; preds = %325, %274
  %332 = phi i16 [ %272, %274 ], [ %330, %325 ], !dbg !706
  %333 = phi i32 [ %270, %274 ], [ %329, %325 ], !dbg !708
  %334 = phi i16* [ %210, %274 ], [ %326, %325 ], !dbg !708
  %335 = sext i32 %333 to i64, !dbg !707
  %336 = getelementptr inbounds [17 x i16], [17 x i16]* @bmask, i64 0, i64 %335, !dbg !707
  %337 = load i16, i16* %336, align 2, !dbg !707, !tbaa !534
  %338 = and i16 %337, %332, !dbg !706
  store i16 %338, i16* %334, align 2, !dbg !706, !tbaa !534
  %339 = load i16, i16* %210, align 16, !dbg !709, !tbaa !534
  br label %340, !dbg !714

; <label>:340:                                    ; preds = %331, %267
  %341 = phi i16 [ %339, %331 ], [ 0, %267 ], !dbg !709
  %342 = icmp slt i16 %264, 0, !dbg !715
  %343 = extractelement <8 x i16> %262, i32 0, !dbg !716
  br i1 %342, label %344, label %755, !dbg !716

; <label>:344:                                    ; preds = %340
  %345 = icmp eq i16 %343, %341, !dbg !718
  %346 = load <8 x i16>, <8 x i16>* %251, align 2, !dbg !719
  %347 = shufflevector <8 x i16> %346, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !719
  %348 = extractelement <8 x i16> %346, i32 0, !dbg !718
  %349 = extractelement <8 x i16> %262, i32 1, !dbg !718
  %350 = icmp eq i16 %349, %348, !dbg !718
  %351 = and i1 %345, %350, !dbg !720
  %352 = extractelement <8 x i16> %346, i32 1, !dbg !718
  %353 = extractelement <8 x i16> %262, i32 2, !dbg !718
  %354 = icmp eq i16 %353, %352, !dbg !718
  %355 = and i1 %351, %354, !dbg !720
  %356 = extractelement <8 x i16> %346, i32 2, !dbg !718
  %357 = extractelement <8 x i16> %262, i32 3, !dbg !718
  %358 = icmp eq i16 %357, %356, !dbg !718
  %359 = and i1 %355, %358, !dbg !720
  %360 = extractelement <8 x i16> %346, i32 3, !dbg !718
  %361 = extractelement <8 x i16> %262, i32 4, !dbg !718
  %362 = icmp eq i16 %361, %360, !dbg !718
  %363 = and i1 %359, %362, !dbg !720
  %364 = extractelement <8 x i16> %346, i32 4, !dbg !718
  %365 = extractelement <8 x i16> %262, i32 5, !dbg !718
  %366 = icmp eq i16 %365, %364, !dbg !718
  %367 = and i1 %363, %366, !dbg !720
  %368 = extractelement <8 x i16> %346, i32 5, !dbg !718
  %369 = extractelement <8 x i16> %262, i32 6, !dbg !718
  %370 = icmp eq i16 %369, %368, !dbg !718
  %371 = and i1 %367, %370, !dbg !720
  %372 = extractelement <8 x i16> %346, i32 6, !dbg !718
  %373 = extractelement <8 x i16> %262, i32 7, !dbg !718
  %374 = icmp eq i16 %373, %372, !dbg !718
  %375 = and i1 %371, %374, !dbg !720
  %376 = extractelement <8 x i16> %346, i32 7, !dbg !718
  %377 = icmp eq i16 %263, %376, !dbg !718
  %378 = and i1 %375, %377, !dbg !720
  br i1 %378, label %1732, label %379, !dbg !720

; <label>:379:                                    ; preds = %344
  %380 = load i16, i16* %219, align 2, !dbg !730, !tbaa !534
  %381 = and i16 %380, 32767, !dbg !731
  %382 = icmp eq i16 %381, 32767, !dbg !732
  br i1 %382, label %383, label %394, !dbg !733

; <label>:383:                                    ; preds = %379
  %384 = or i16 %348, %341, !dbg !735
  %385 = or i16 %384, %352, !dbg !735
  %386 = or i16 %385, %356, !dbg !735
  %387 = or i16 %386, %360, !dbg !735
  %388 = or i16 %387, %364, !dbg !735
  %389 = or i16 %388, %368, !dbg !735
  %390 = or i16 %389, %372, !dbg !735
  %391 = or i16 %390, %376, !dbg !735
  %392 = icmp eq i16 %391, 0, !dbg !735
  br i1 %392, label %393, label %755, !dbg !735

; <label>:393:                                    ; preds = %383
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %220) #5, !dbg !740
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %221) #5, !dbg !740
  store i16 0, i16* %210, align 16, !dbg !757, !tbaa !534
  br label %752, !dbg !758

; <label>:394:                                    ; preds = %379
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %220) #5, !dbg !740
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %221) #5, !dbg !740
  store i16 0, i16* %230, align 16, !dbg !771, !tbaa !534
  store i16 0, i16* %231, align 2, !dbg !771, !tbaa !534
  store i16 0, i16* %232, align 4, !dbg !771, !tbaa !534
  store i16 0, i16* %233, align 2, !dbg !771, !tbaa !534
  store i16 0, i16* %234, align 8, !dbg !775, !tbaa !534
  %395 = ashr i16 %380, 15, !dbg !781
  store i16 %395, i16* %235, align 16, !dbg !783, !tbaa !534
  store i16 %381, i16* %236, align 2, !dbg !784, !tbaa !534
  store i16 0, i16* %237, align 4, !dbg !785, !tbaa !534
  store <8 x i16> %347, <8 x i16>* %252, align 2, !dbg !787, !tbaa !534
  store i16 %341, i16* %246, align 2, !dbg !787, !tbaa !534
  store i16 0, i16* %247, align 8, !dbg !788, !tbaa !534
  store <8 x i16> <i16 -1, i16 16383, i16 0, i16 -32768, i16 0, i16 0, i16 0, i16 0>, <8 x i16>* %253, align 16, !dbg !789, !tbaa !534
  %396 = zext i16 %381 to i64, !dbg !792
  %397 = sub nsw i64 16383, %396, !dbg !794
  %398 = icmp sgt i64 %397, 0, !dbg !796
  br i1 %398, label %399, label %401, !dbg !798

; <label>:399:                                    ; preds = %394
  store <8 x i16> <i16 -1, i16 16383, i16 0, i16 -32768, i16 0, i16 0, i16 0, i16 0>, <8 x i16>* %254, align 16, !dbg !816, !tbaa !534
  store i16 0, i16* %243, align 16, !dbg !816, !tbaa !534
  store i16 0, i16* %244, align 2, !dbg !816, !tbaa !534
  store i16 0, i16* %245, align 4, !dbg !816, !tbaa !534
  store i16 0, i16* %246, align 2, !dbg !816, !tbaa !534
  store i16 0, i16* %247, align 8, !dbg !819, !tbaa !534
  store i16 %395, i16* %222, align 16, !dbg !824, !tbaa !534
  store i16 %381, i16* %223, align 2, !dbg !824, !tbaa !534
  store i16 0, i16* %224, align 4, !dbg !824, !tbaa !534
  store <8 x i16> %347, <8 x i16>* %255, align 2, !dbg !824, !tbaa !534
  store i16 %341, i16* %233, align 2, !dbg !824, !tbaa !534
  store i16 0, i16* %234, align 8, !dbg !825, !tbaa !534
  %400 = sub nsw i64 0, %397, !dbg !826
  br label %401, !dbg !827

; <label>:401:                                    ; preds = %399, %394
  %402 = phi i16 [ %381, %399 ], [ 16383, %394 ]
  %403 = phi i16 [ %395, %399 ], [ -1, %394 ]
  %404 = phi i16 [ 16383, %399 ], [ %381, %394 ]
  %405 = phi i16 [ -1, %399 ], [ %395, %394 ]
  %406 = phi i16 [ 0, %399 ], [ %341, %394 ]
  %407 = phi i16 [ %341, %399 ], [ 0, %394 ]
  %408 = phi i16 [ 0, %399 ], [ %348, %394 ]
  %409 = phi i16 [ %348, %399 ], [ 0, %394 ]
  %410 = phi i16 [ 0, %399 ], [ %352, %394 ]
  %411 = phi i16 [ %352, %399 ], [ 0, %394 ]
  %412 = phi i16 [ 0, %399 ], [ %356, %394 ]
  %413 = phi i16 [ %356, %399 ], [ 0, %394 ]
  %414 = phi i16 [ 0, %399 ], [ %360, %394 ]
  %415 = phi i16 [ %360, %399 ], [ 0, %394 ]
  %416 = phi i16 [ 0, %399 ], [ %364, %394 ]
  %417 = phi i16 [ %364, %399 ], [ 0, %394 ]
  %418 = phi i16 [ 0, %399 ], [ %368, %394 ]
  %419 = phi i16 [ %368, %399 ], [ 0, %394 ]
  %420 = phi i16 [ 0, %399 ], [ %372, %394 ]
  %421 = phi i16 [ %372, %399 ], [ 0, %394 ]
  %422 = phi i16 [ -32768, %399 ], [ %376, %394 ]
  %423 = phi i16 [ %376, %399 ], [ -32768, %394 ]
  %424 = phi i64 [ %400, %399 ], [ %397, %394 ], !dbg !828
  %425 = phi i64 [ 16383, %399 ], [ %396, %394 ], !dbg !828
  %426 = icmp eq i64 %424, 0, !dbg !830
  br i1 %426, label %438, label %427, !dbg !832

; <label>:427:                                    ; preds = %401
  %428 = icmp slt i64 %424, -145, !dbg !833
  br i1 %428, label %429, label %433, !dbg !836

; <label>:429:                                    ; preds = %427
  %430 = icmp eq i16 %405, 0, !dbg !852
  %431 = or i16 %404, -32768, !dbg !854
  %432 = select i1 %430, i16 %404, i16 %431, !dbg !855
  store i16 %432, i16* %219, align 2, !dbg !856, !tbaa !534
  br label %742, !dbg !857

; <label>:433:                                    ; preds = %427
  %434 = trunc i64 %424 to i32, !dbg !858
  %435 = call fastcc i32 @eshift(i16* nonnull %222, i32 %434) #6, !dbg !860
  %436 = load i16, i16* %222, align 16, !dbg !861, !tbaa !534
  %437 = load i16, i16* %235, align 16, !dbg !863, !tbaa !534
  br label %500, !dbg !864

; <label>:438:                                    ; preds = %401
  %439 = icmp eq i16 %423, %422, !dbg !877
  br i1 %439, label %440, label %495, !dbg !882

; <label>:440:                                    ; preds = %438
  %441 = icmp eq i16 %421, %420, !dbg !877
  br i1 %441, label %442, label %495, !dbg !882

; <label>:442:                                    ; preds = %440
  %443 = icmp eq i16 %419, %418, !dbg !877
  br i1 %443, label %444, label %495, !dbg !882

; <label>:444:                                    ; preds = %442
  %445 = icmp eq i16 %417, %416, !dbg !877
  br i1 %445, label %446, label %495, !dbg !882

; <label>:446:                                    ; preds = %444
  %447 = icmp eq i16 %415, %414, !dbg !877
  br i1 %447, label %448, label %495, !dbg !882

; <label>:448:                                    ; preds = %446
  %449 = icmp eq i16 %413, %412, !dbg !877
  br i1 %449, label %450, label %495, !dbg !882

; <label>:450:                                    ; preds = %448
  %451 = icmp eq i16 %411, %410, !dbg !877
  br i1 %451, label %452, label %495, !dbg !882

; <label>:452:                                    ; preds = %450
  %453 = icmp eq i16 %409, %408, !dbg !877
  br i1 %453, label %454, label %495, !dbg !882

; <label>:454:                                    ; preds = %452
  %455 = icmp eq i16 %407, %406, !dbg !877
  br i1 %455, label %456, label %495, !dbg !882

; <label>:456:                                    ; preds = %454
  %457 = icmp eq i16 %403, %405, !dbg !883
  br i1 %457, label %459, label %458, !dbg !887

; <label>:458:                                    ; preds = %456
  store <8 x i16> zeroinitializer, <8 x i16>* %257, align 16, !dbg !892, !tbaa !534
  store i16 0, i16* %218, align 16, !dbg !892, !tbaa !534
  store i16 0, i16* %219, align 2, !dbg !892, !tbaa !534
  br label %752, !dbg !893

; <label>:459:                                    ; preds = %456
  %460 = icmp eq i16 %404, 0, !dbg !894
  %461 = icmp sgt i16 %422, -1, !dbg !896
  %462 = and i1 %460, %461, !dbg !897
  br i1 %462, label %463, label %492, !dbg !897

; <label>:463:                                    ; preds = %459
  store i16 0, i16* %247, align 8, !dbg !908, !tbaa !534
  %464 = lshr i16 %406, 15, !dbg !912
  %465 = shl i16 %406, 1, !dbg !913
  store i16 %465, i16* %246, align 2, !dbg !908, !tbaa !534
  %466 = lshr i16 %408, 15, !dbg !912
  %467 = shl i16 %408, 1, !dbg !913
  %468 = or i16 %467, %464, !dbg !914
  store i16 %468, i16* %245, align 4, !dbg !908, !tbaa !534
  %469 = lshr i16 %410, 15, !dbg !912
  %470 = shl i16 %410, 1, !dbg !913
  %471 = or i16 %470, %466, !dbg !914
  store i16 %471, i16* %244, align 2, !dbg !908, !tbaa !534
  %472 = lshr i16 %412, 15, !dbg !912
  %473 = shl i16 %412, 1, !dbg !913
  %474 = or i16 %473, %469, !dbg !914
  store i16 %474, i16* %243, align 16, !dbg !908, !tbaa !534
  %475 = lshr i16 %414, 15, !dbg !912
  %476 = shl i16 %414, 1, !dbg !913
  %477 = or i16 %476, %472, !dbg !914
  store i16 %477, i16* %242, align 2, !dbg !908, !tbaa !534
  %478 = lshr i16 %416, 15, !dbg !912
  %479 = shl i16 %416, 1, !dbg !913
  %480 = or i16 %479, %475, !dbg !914
  store i16 %480, i16* %241, align 4, !dbg !908, !tbaa !534
  %481 = lshr i16 %418, 15, !dbg !912
  %482 = shl i16 %418, 1, !dbg !913
  %483 = or i16 %482, %478, !dbg !914
  store i16 %483, i16* %240, align 2, !dbg !908, !tbaa !534
  %484 = lshr i16 %420, 15, !dbg !912
  %485 = shl i16 %420, 1, !dbg !913
  %486 = or i16 %485, %481, !dbg !914
  store i16 %486, i16* %239, align 8, !dbg !908, !tbaa !534
  %487 = lshr i16 %422, 15, !dbg !912
  %488 = shl i16 %422, 1, !dbg !913
  %489 = or i16 %488, %484, !dbg !914
  store i16 %489, i16* %238, align 2, !dbg !908, !tbaa !534
  store i16 %487, i16* %237, align 4, !dbg !908, !tbaa !534
  %490 = icmp eq i16 %403, 0, !dbg !852
  %491 = select i1 %490, i16 0, i16 -32768, !dbg !855
  store i16 %491, i16* %219, align 2, !dbg !856, !tbaa !534
  br label %742, !dbg !857

; <label>:492:                                    ; preds = %459
  %493 = trunc i64 %425 to i16, !dbg !915
  %494 = add i16 %493, 1, !dbg !915
  store i16 %494, i16* %236, align 2, !dbg !916, !tbaa !534
  br label %703, !dbg !917

; <label>:495:                                    ; preds = %454, %452, %450, %448, %446, %444, %442, %440, %438
  %496 = phi i16 [ %423, %438 ], [ %421, %440 ], [ %419, %442 ], [ %417, %444 ], [ %415, %446 ], [ %413, %448 ], [ %411, %450 ], [ %409, %452 ], [ %407, %454 ], !dbg !918
  %497 = phi i16 [ %422, %438 ], [ %420, %440 ], [ %418, %442 ], [ %416, %444 ], [ %414, %446 ], [ %412, %448 ], [ %410, %450 ], [ %408, %452 ], [ %406, %454 ], !dbg !919
  %498 = icmp ugt i16 %496, %497, !dbg !920
  br i1 %498, label %499, label %500, !dbg !922

; <label>:499:                                    ; preds = %495
  store i16 %403, i16* %235, align 16, !dbg !933, !tbaa !534
  store i16 %402, i16* %236, align 2, !dbg !933, !tbaa !534
  store i16 0, i16* %237, align 4, !dbg !933, !tbaa !534
  store i16 %423, i16* %238, align 2, !dbg !933, !tbaa !534
  store i16 %421, i16* %239, align 8, !dbg !933, !tbaa !534
  store i16 %419, i16* %240, align 2, !dbg !933, !tbaa !534
  store i16 %417, i16* %241, align 4, !dbg !933, !tbaa !534
  store i16 %415, i16* %242, align 2, !dbg !933, !tbaa !534
  store i16 %413, i16* %243, align 16, !dbg !933, !tbaa !534
  store i16 %411, i16* %244, align 2, !dbg !933, !tbaa !534
  store i16 %409, i16* %245, align 4, !dbg !933, !tbaa !534
  store i16 %407, i16* %246, align 2, !dbg !933, !tbaa !534
  store i16 0, i16* %247, align 8, !dbg !934, !tbaa !534
  store i16 %405, i16* %222, align 16, !dbg !939, !tbaa !534
  store i16 %404, i16* %223, align 2, !dbg !939, !tbaa !534
  store i16 0, i16* %224, align 4, !dbg !939, !tbaa !534
  store i16 %422, i16* %225, align 2, !dbg !939, !tbaa !534
  store i16 %420, i16* %226, align 8, !dbg !939, !tbaa !534
  store i16 %418, i16* %227, align 2, !dbg !939, !tbaa !534
  store i16 %416, i16* %228, align 4, !dbg !939, !tbaa !534
  store i16 %414, i16* %229, align 2, !dbg !939, !tbaa !534
  store i16 %412, i16* %230, align 16, !dbg !939, !tbaa !534
  store i16 %410, i16* %231, align 2, !dbg !939, !tbaa !534
  store i16 %408, i16* %232, align 4, !dbg !939, !tbaa !534
  store i16 %406, i16* %233, align 2, !dbg !939, !tbaa !534
  store i16 0, i16* %234, align 8, !dbg !940, !tbaa !534
  br label %500, !dbg !941

; <label>:500:                                    ; preds = %499, %495, %433
  %501 = phi i16 [ %437, %433 ], [ %403, %499 ], [ %405, %495 ], !dbg !863
  %502 = phi i16 [ %436, %433 ], [ %405, %499 ], [ %403, %495 ], !dbg !861
  %503 = phi i32 [ %435, %433 ], [ 0, %499 ], [ 0, %495 ], !dbg !828
  %504 = icmp eq i16 %502, %501, !dbg !942
  br i1 %504, label %505, label %599, !dbg !943

; <label>:505:                                    ; preds = %500
  %506 = load i16, i16* %234, align 8, !dbg !957, !tbaa !534
  %507 = zext i16 %506 to i64, !dbg !961
  %508 = load i16, i16* %247, align 8, !dbg !962, !tbaa !534
  %509 = zext i16 %508 to i64, !dbg !963
  %510 = add nuw nsw i64 %509, %507, !dbg !964
  %511 = lshr i64 %510, 16
  %512 = trunc i64 %510 to i16, !dbg !966
  store i16 %512, i16* %247, align 8, !dbg !967, !tbaa !534
  %513 = load i16, i16* %233, align 2, !dbg !957, !tbaa !534
  %514 = zext i16 %513 to i64, !dbg !961
  %515 = load i16, i16* %246, align 2, !dbg !962, !tbaa !534
  %516 = zext i16 %515 to i64, !dbg !963
  %517 = add nuw nsw i64 %511, %514, !dbg !968
  %518 = add nuw nsw i64 %517, %516, !dbg !964
  %519 = lshr i64 %518, 16
  %520 = and i64 %519, 1
  %521 = trunc i64 %518 to i16, !dbg !966
  store i16 %521, i16* %246, align 2, !dbg !967, !tbaa !534
  %522 = load i16, i16* %232, align 4, !dbg !957, !tbaa !534
  %523 = zext i16 %522 to i64, !dbg !961
  %524 = load i16, i16* %245, align 4, !dbg !962, !tbaa !534
  %525 = zext i16 %524 to i64, !dbg !963
  %526 = add nuw nsw i64 %520, %523, !dbg !968
  %527 = add nuw nsw i64 %526, %525, !dbg !964
  %528 = lshr i64 %527, 16
  %529 = and i64 %528, 1
  %530 = trunc i64 %527 to i16, !dbg !966
  store i16 %530, i16* %245, align 4, !dbg !967, !tbaa !534
  %531 = load i16, i16* %231, align 2, !dbg !957, !tbaa !534
  %532 = zext i16 %531 to i64, !dbg !961
  %533 = load i16, i16* %244, align 2, !dbg !962, !tbaa !534
  %534 = zext i16 %533 to i64, !dbg !963
  %535 = add nuw nsw i64 %534, %532, !dbg !968
  %536 = add nuw nsw i64 %535, %529, !dbg !964
  %537 = lshr i64 %536, 16
  %538 = and i64 %537, 1
  %539 = trunc i64 %536 to i16, !dbg !966
  store i16 %539, i16* %244, align 2, !dbg !967, !tbaa !534
  %540 = load i16, i16* %230, align 16, !dbg !957, !tbaa !534
  %541 = zext i16 %540 to i64, !dbg !961
  %542 = load i16, i16* %243, align 16, !dbg !962, !tbaa !534
  %543 = zext i16 %542 to i64, !dbg !963
  %544 = add nuw nsw i64 %543, %541, !dbg !968
  %545 = add nuw nsw i64 %544, %538, !dbg !964
  %546 = lshr i64 %545, 16
  %547 = and i64 %546, 1
  %548 = trunc i64 %545 to i16, !dbg !966
  store i16 %548, i16* %243, align 16, !dbg !967, !tbaa !534
  %549 = load i16, i16* %229, align 2, !dbg !957, !tbaa !534
  %550 = zext i16 %549 to i64, !dbg !961
  %551 = load i16, i16* %242, align 2, !dbg !962, !tbaa !534
  %552 = zext i16 %551 to i64, !dbg !963
  %553 = add nuw nsw i64 %552, %550, !dbg !968
  %554 = add nuw nsw i64 %553, %547, !dbg !964
  %555 = lshr i64 %554, 16
  %556 = and i64 %555, 1
  %557 = trunc i64 %554 to i16, !dbg !966
  store i16 %557, i16* %242, align 2, !dbg !967, !tbaa !534
  %558 = load i16, i16* %228, align 4, !dbg !957, !tbaa !534
  %559 = zext i16 %558 to i64, !dbg !961
  %560 = load i16, i16* %241, align 4, !dbg !962, !tbaa !534
  %561 = zext i16 %560 to i64, !dbg !963
  %562 = add nuw nsw i64 %561, %559, !dbg !968
  %563 = add nuw nsw i64 %562, %556, !dbg !964
  %564 = lshr i64 %563, 16
  %565 = and i64 %564, 1
  %566 = trunc i64 %563 to i16, !dbg !966
  store i16 %566, i16* %241, align 4, !dbg !967, !tbaa !534
  %567 = load i16, i16* %227, align 2, !dbg !957, !tbaa !534
  %568 = zext i16 %567 to i64, !dbg !961
  %569 = load i16, i16* %240, align 2, !dbg !962, !tbaa !534
  %570 = zext i16 %569 to i64, !dbg !963
  %571 = add nuw nsw i64 %570, %568, !dbg !968
  %572 = add nuw nsw i64 %571, %565, !dbg !964
  %573 = lshr i64 %572, 16
  %574 = and i64 %573, 1
  %575 = trunc i64 %572 to i16, !dbg !966
  store i16 %575, i16* %240, align 2, !dbg !967, !tbaa !534
  %576 = load i16, i16* %226, align 8, !dbg !957, !tbaa !534
  %577 = zext i16 %576 to i64, !dbg !961
  %578 = load i16, i16* %239, align 8, !dbg !962, !tbaa !534
  %579 = zext i16 %578 to i64, !dbg !963
  %580 = add nuw nsw i64 %579, %577, !dbg !968
  %581 = add nuw nsw i64 %580, %574, !dbg !964
  %582 = lshr i64 %581, 16
  %583 = and i64 %582, 1
  %584 = trunc i64 %581 to i16, !dbg !966
  store i16 %584, i16* %239, align 8, !dbg !967, !tbaa !534
  %585 = load i16, i16* %225, align 2, !dbg !957, !tbaa !534
  %586 = zext i16 %585 to i64, !dbg !961
  %587 = load i16, i16* %238, align 2, !dbg !962, !tbaa !534
  %588 = zext i16 %587 to i64, !dbg !963
  %589 = add nuw nsw i64 %588, %586, !dbg !968
  %590 = add nuw nsw i64 %589, %583, !dbg !964
  %591 = lshr i64 %590, 16
  %592 = trunc i64 %590 to i16, !dbg !966
  store i16 %592, i16* %238, align 2, !dbg !967, !tbaa !534
  %593 = load i16, i16* %224, align 4, !dbg !957, !tbaa !534
  %594 = load i16, i16* %237, align 4, !dbg !962, !tbaa !534
  %595 = trunc i64 %591 to i16, !dbg !966
  %596 = and i16 %595, 1, !dbg !966
  %597 = add i16 %594, %593, !dbg !966
  %598 = add i16 %597, %596, !dbg !966
  br label %696, !dbg !969

; <label>:599:                                    ; preds = %500
  %600 = load i16, i16* %247, align 8, !dbg !983, !tbaa !534
  %601 = zext i16 %600 to i64, !dbg !987
  %602 = load i16, i16* %234, align 8, !dbg !988, !tbaa !534
  %603 = zext i16 %602 to i64, !dbg !989
  %604 = sub nsw i64 %601, %603, !dbg !990
  %605 = lshr i64 %604, 16
  %606 = and i64 %605, 1
  %607 = trunc i64 %604 to i16, !dbg !992
  store i16 %607, i16* %247, align 8, !dbg !993, !tbaa !534
  %608 = load i16, i16* %246, align 2, !dbg !983, !tbaa !534
  %609 = zext i16 %608 to i64, !dbg !987
  %610 = load i16, i16* %233, align 2, !dbg !988, !tbaa !534
  %611 = zext i16 %610 to i64, !dbg !989
  %612 = sub nsw i64 %609, %611, !dbg !990
  %613 = sub nsw i64 %612, %606, !dbg !994
  %614 = lshr i64 %613, 16
  %615 = and i64 %614, 1
  %616 = trunc i64 %613 to i16, !dbg !992
  store i16 %616, i16* %246, align 2, !dbg !993, !tbaa !534
  %617 = load i16, i16* %245, align 4, !dbg !983, !tbaa !534
  %618 = zext i16 %617 to i64, !dbg !987
  %619 = load i16, i16* %232, align 4, !dbg !988, !tbaa !534
  %620 = zext i16 %619 to i64, !dbg !989
  %621 = sub nsw i64 %618, %620, !dbg !990
  %622 = sub nsw i64 %621, %615, !dbg !994
  %623 = lshr i64 %622, 16
  %624 = and i64 %623, 1
  %625 = trunc i64 %622 to i16, !dbg !992
  store i16 %625, i16* %245, align 4, !dbg !993, !tbaa !534
  %626 = load i16, i16* %244, align 2, !dbg !983, !tbaa !534
  %627 = zext i16 %626 to i64, !dbg !987
  %628 = load i16, i16* %231, align 2, !dbg !988, !tbaa !534
  %629 = zext i16 %628 to i64, !dbg !989
  %630 = sub nsw i64 %627, %629, !dbg !990
  %631 = sub nsw i64 %630, %624, !dbg !994
  %632 = lshr i64 %631, 16
  %633 = and i64 %632, 1
  %634 = trunc i64 %631 to i16, !dbg !992
  store i16 %634, i16* %244, align 2, !dbg !993, !tbaa !534
  %635 = load i16, i16* %243, align 16, !dbg !983, !tbaa !534
  %636 = zext i16 %635 to i64, !dbg !987
  %637 = load i16, i16* %230, align 16, !dbg !988, !tbaa !534
  %638 = zext i16 %637 to i64, !dbg !989
  %639 = sub nsw i64 %636, %638, !dbg !990
  %640 = sub nsw i64 %639, %633, !dbg !994
  %641 = lshr i64 %640, 16
  %642 = and i64 %641, 1
  %643 = trunc i64 %640 to i16, !dbg !992
  store i16 %643, i16* %243, align 16, !dbg !993, !tbaa !534
  %644 = load i16, i16* %242, align 2, !dbg !983, !tbaa !534
  %645 = zext i16 %644 to i64, !dbg !987
  %646 = load i16, i16* %229, align 2, !dbg !988, !tbaa !534
  %647 = zext i16 %646 to i64, !dbg !989
  %648 = sub nsw i64 %645, %647, !dbg !990
  %649 = sub nsw i64 %648, %642, !dbg !994
  %650 = lshr i64 %649, 16
  %651 = and i64 %650, 1
  %652 = trunc i64 %649 to i16, !dbg !992
  store i16 %652, i16* %242, align 2, !dbg !993, !tbaa !534
  %653 = load i16, i16* %241, align 4, !dbg !983, !tbaa !534
  %654 = zext i16 %653 to i64, !dbg !987
  %655 = load i16, i16* %228, align 4, !dbg !988, !tbaa !534
  %656 = zext i16 %655 to i64, !dbg !989
  %657 = sub nsw i64 %654, %656, !dbg !990
  %658 = sub nsw i64 %657, %651, !dbg !994
  %659 = lshr i64 %658, 16
  %660 = and i64 %659, 1
  %661 = trunc i64 %658 to i16, !dbg !992
  store i16 %661, i16* %241, align 4, !dbg !993, !tbaa !534
  %662 = load i16, i16* %240, align 2, !dbg !983, !tbaa !534
  %663 = zext i16 %662 to i64, !dbg !987
  %664 = load i16, i16* %227, align 2, !dbg !988, !tbaa !534
  %665 = zext i16 %664 to i64, !dbg !989
  %666 = sub nsw i64 %663, %665, !dbg !990
  %667 = sub nsw i64 %666, %660, !dbg !994
  %668 = lshr i64 %667, 16
  %669 = and i64 %668, 1
  %670 = trunc i64 %667 to i16, !dbg !992
  store i16 %670, i16* %240, align 2, !dbg !993, !tbaa !534
  %671 = load i16, i16* %239, align 8, !dbg !983, !tbaa !534
  %672 = zext i16 %671 to i64, !dbg !987
  %673 = load i16, i16* %226, align 8, !dbg !988, !tbaa !534
  %674 = zext i16 %673 to i64, !dbg !989
  %675 = sub nsw i64 %672, %674, !dbg !990
  %676 = sub nsw i64 %675, %669, !dbg !994
  %677 = lshr i64 %676, 16
  %678 = and i64 %677, 1
  %679 = trunc i64 %676 to i16, !dbg !992
  store i16 %679, i16* %239, align 8, !dbg !993, !tbaa !534
  %680 = load i16, i16* %238, align 2, !dbg !983, !tbaa !534
  %681 = zext i16 %680 to i64, !dbg !987
  %682 = load i16, i16* %225, align 2, !dbg !988, !tbaa !534
  %683 = zext i16 %682 to i64, !dbg !989
  %684 = sub nsw i64 %681, %683, !dbg !990
  %685 = sub nsw i64 %684, %678, !dbg !994
  %686 = lshr i64 %685, 16
  %687 = and i64 %686, 1
  %688 = trunc i64 %685 to i16, !dbg !992
  store i16 %688, i16* %238, align 2, !dbg !993, !tbaa !534
  %689 = load i16, i16* %237, align 4, !dbg !983, !tbaa !534
  %690 = zext i16 %689 to i64, !dbg !987
  %691 = load i16, i16* %224, align 4, !dbg !988, !tbaa !534
  %692 = zext i16 %691 to i64, !dbg !989
  %693 = sub nsw i64 %690, %692, !dbg !990
  %694 = sub nsw i64 %693, %687, !dbg !994
  %695 = trunc i64 %694 to i16, !dbg !992
  br label %696

; <label>:696:                                    ; preds = %599, %505
  %697 = phi i16 [ %598, %505 ], [ %695, %599 ]
  %698 = phi i32 [ 0, %505 ], [ 1, %599 ], !dbg !995
  store i16 %697, i16* %237, align 4, !dbg !995, !tbaa !534
  call fastcc void @emdnorm(i16* nonnull %235, i32 %503, i32 %698, i64 %425, i32 64, %struct.LDPARMS* nonnull %15) #6, !dbg !996
  %699 = load i16, i16* %235, align 16, !dbg !997, !tbaa !534
  %700 = load i16, i16* %236, align 2, !dbg !856, !tbaa !534
  %701 = load i16, i16* %238, align 2, !dbg !828, !tbaa !534
  %702 = load i16, i16* %239, align 8, !dbg !828
  br label %703, !dbg !996

; <label>:703:                                    ; preds = %696, %492
  %704 = phi i16 [ %702, %696 ], [ %420, %492 ], !dbg !828
  %705 = phi i16 [ %701, %696 ], [ %422, %492 ], !dbg !828
  %706 = phi i16 [ %700, %696 ], [ %494, %492 ], !dbg !856
  %707 = phi i16 [ %699, %696 ], [ %403, %492 ], !dbg !997
  %708 = icmp eq i16 %707, 0, !dbg !852
  %709 = or i16 %706, -32768, !dbg !854
  %710 = select i1 %708, i16 %706, i16 %709, !dbg !855
  store i16 %710, i16* %219, align 2, !dbg !856, !tbaa !534
  %711 = icmp eq i16 %706, 32767, !dbg !998
  br i1 %711, label %720, label %712, !dbg !857

; <label>:712:                                    ; preds = %703
  %713 = load i16, i16* %240, align 2, !dbg !1000, !tbaa !534
  %714 = load i16, i16* %241, align 4, !dbg !1000, !tbaa !534
  %715 = load i16, i16* %242, align 2, !dbg !1000, !tbaa !534
  %716 = load i16, i16* %243, align 16, !dbg !1000, !tbaa !534
  %717 = load i16, i16* %244, align 2, !dbg !1000, !tbaa !534
  %718 = load i16, i16* %245, align 4, !dbg !1000, !tbaa !534
  %719 = load i16, i16* %246, align 2, !dbg !1000, !tbaa !534
  br label %742, !dbg !857

; <label>:720:                                    ; preds = %703
  %721 = or i16 %705, %704, !dbg !1014
  %722 = load i16, i16* %240, align 2, !dbg !1020
  %723 = or i16 %721, %722, !dbg !1014
  %724 = load i16, i16* %241, align 4, !dbg !1020
  %725 = or i16 %723, %724, !dbg !1014
  %726 = load i16, i16* %242, align 2, !dbg !1020
  %727 = or i16 %725, %726, !dbg !1014
  %728 = load i16, i16* %243, align 16, !dbg !1020
  %729 = or i16 %727, %728, !dbg !1014
  %730 = load i16, i16* %244, align 2, !dbg !1020
  %731 = or i16 %729, %730, !dbg !1014
  %732 = load i16, i16* %245, align 4, !dbg !1020
  %733 = or i16 %731, %732, !dbg !1014
  %734 = load i16, i16* %246, align 2, !dbg !1020
  %735 = or i16 %733, %734, !dbg !1014
  %736 = load i16, i16* %247, align 8, !dbg !1020
  %737 = or i16 %735, %736, !dbg !1014
  %738 = icmp eq i16 %737, 0, !dbg !1014
  store <8 x i16> zeroinitializer, <8 x i16>* %256, align 16, !dbg !828, !tbaa !534
  br i1 %738, label %740, label %739, !dbg !1014

; <label>:739:                                    ; preds = %720
  store i16 -16384, i16* %218, align 16, !dbg !1036, !tbaa !534
  store i16 32767, i16* %219, align 2, !dbg !1038, !tbaa !534
  br label %752, !dbg !1039

; <label>:740:                                    ; preds = %720
  store i16 0, i16* %218, align 16, !dbg !1051, !tbaa !534
  %741 = or i16 %710, 32767, !dbg !1054
  store i16 %741, i16* %219, align 2, !dbg !1054, !tbaa !534
  br label %752, !dbg !1055

; <label>:742:                                    ; preds = %712, %463, %429
  %743 = phi i16 [ %465, %463 ], [ %719, %712 ], [ %406, %429 ], !dbg !1000
  %744 = phi i16 [ %468, %463 ], [ %718, %712 ], [ %408, %429 ], !dbg !1000
  %745 = phi i16 [ %471, %463 ], [ %717, %712 ], [ %410, %429 ], !dbg !1000
  %746 = phi i16 [ %474, %463 ], [ %716, %712 ], [ %412, %429 ], !dbg !1000
  %747 = phi i16 [ %477, %463 ], [ %715, %712 ], [ %414, %429 ], !dbg !1000
  %748 = phi i16 [ %480, %463 ], [ %714, %712 ], [ %416, %429 ], !dbg !1000
  %749 = phi i16 [ %483, %463 ], [ %713, %712 ], [ %418, %429 ], !dbg !1000
  %750 = phi i16 [ %486, %463 ], [ %704, %712 ], [ %420, %429 ], !dbg !1000
  %751 = phi i16 [ %489, %463 ], [ %705, %712 ], [ %422, %429 ], !dbg !1000
  store i16 %751, i16* %218, align 16, !dbg !1056, !tbaa !534
  store i16 %750, i16* %217, align 2, !dbg !1056, !tbaa !534
  store i16 %749, i16* %216, align 4, !dbg !1056, !tbaa !534
  store i16 %748, i16* %215, align 2, !dbg !1056, !tbaa !534
  store i16 %747, i16* %214, align 8, !dbg !1056, !tbaa !534
  store i16 %746, i16* %213, align 2, !dbg !1056, !tbaa !534
  store i16 %745, i16* %212, align 4, !dbg !1056, !tbaa !534
  store i16 %744, i16* %211, align 2, !dbg !1056, !tbaa !534
  store i16 %743, i16* %210, align 16, !dbg !1056, !tbaa !534
  br label %752, !dbg !1057

; <label>:752:                                    ; preds = %742, %740, %739, %458, %393
  %753 = phi i16 [ %743, %742 ], [ 0, %740 ], [ 0, %739 ], [ 0, %458 ], [ 0, %393 ]
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %221) #5, !dbg !1058
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %220) #5, !dbg !1058
  %754 = load i16, i16* %151, align 16, !dbg !1059, !tbaa !534
  br label %755, !dbg !1060

; <label>:755:                                    ; preds = %752, %383, %340
  %756 = phi i16 [ %341, %383 ], [ %753, %752 ], [ %341, %340 ], !dbg !1061
  %757 = phi i16 [ %343, %383 ], [ %754, %752 ], [ %343, %340 ], !dbg !1059
  %758 = icmp eq i16 %757, %756, !dbg !1063
  br i1 %758, label %759, label %763, !dbg !1064

; <label>:759:                                    ; preds = %755
  %760 = load i16, i16* %152, align 2, !dbg !1059, !tbaa !534
  %761 = load i16, i16* %211, align 2, !dbg !1061, !tbaa !534
  %762 = icmp eq i16 %760, %761, !dbg !1063
  br i1 %762, label %1732, label %763, !dbg !1064

; <label>:763:                                    ; preds = %1762, %1758, %1754, %1750, %1746, %1742, %1738, %1732, %759, %755
  %764 = phi i32 [ %1765, %1762 ], [ %259, %1758 ], [ %259, %1754 ], [ %259, %1750 ], [ %259, %1746 ], [ %259, %1742 ], [ %259, %1738 ], [ %259, %1732 ], [ %259, %759 ], [ %259, %755 ], !dbg !654
  %765 = getelementptr inbounds i16, i16* %260, i64 10, !dbg !1065
  %766 = lshr i16 %261, 1, !dbg !1066
  %767 = icmp eq i16 %766, 0, !dbg !1067
  br i1 %767, label %768, label %258, !dbg !1068, !llvm.loop !1069

; <label>:768:                                    ; preds = %763
  %769 = load i16, i16* %148, align 2, !dbg !1072, !tbaa !534
  %770 = add i16 %769, -16526, !dbg !1073
  %771 = load i16, i16* %208, align 2, !dbg !1074, !tbaa !534
  %772 = add i16 %770, %771, !dbg !1074
  store i16 %772, i16* %208, align 2, !dbg !1074, !tbaa !534
  %773 = bitcast [13 x i16]* %12 to <8 x i16>*, !dbg !1079
  %774 = load <8 x i16>, <8 x i16>* %773, align 16, !dbg !1079, !tbaa !534
  %775 = bitcast [13 x i16]* %10 to <8 x i16>*, !dbg !1080
  store <8 x i16> %774, <8 x i16>* %775, align 16, !dbg !1080, !tbaa !534
  %776 = load i16, i16* %207, align 16, !dbg !1079, !tbaa !534
  store i16 %776, i16* %147, align 16, !dbg !1080, !tbaa !534
  store i16 %772, i16* %148, align 2, !dbg !1080, !tbaa !534
  %777 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !1085
  store <8 x i16> zeroinitializer, <8 x i16>* %777, align 16, !dbg !1085, !tbaa !534
  store i16 -32768, i16* %159, align 16, !dbg !1085, !tbaa !534
  store i16 16383, i16* %161, align 2, !dbg !1085, !tbaa !534
  %778 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %199) #6, !dbg !1086
  %779 = icmp slt i32 %778, 1, !dbg !1087
  br i1 %779, label %784, label %1139, !dbg !1088

; <label>:780:                                    ; preds = %793
  %781 = getelementptr inbounds i16, i16* %786, i64 10, !dbg !1089
  %782 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %199) #6, !dbg !1086
  %783 = icmp slt i32 %782, 1, !dbg !1087
  br i1 %783, label %784, label %1139, !dbg !1088, !llvm.loop !1091

; <label>:784:                                    ; preds = %768, %780
  %785 = phi i16 [ %795, %780 ], [ 4096, %768 ]
  %786 = phi i16* [ %781, %780 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 0, i64 0), %768 ]
  %787 = phi i32 [ %794, %780 ], [ %764, %768 ]
  %788 = call fastcc i32 @ecmp(i16* nonnull %786, i16* nonnull %199) #6, !dbg !1094
  %789 = icmp slt i32 %788, 1, !dbg !1096
  br i1 %789, label %790, label %793, !dbg !1097

; <label>:790:                                    ; preds = %784
  call fastcc void @ediv(i16* %786, i16* nonnull %199, i16* nonnull %199, %struct.LDPARMS* nonnull %15) #6, !dbg !1098
  call fastcc void @emul(i16* %786, i16* nonnull %151, i16* nonnull %151, %struct.LDPARMS* nonnull %15) #6, !dbg !1100
  %791 = zext i16 %785 to i32, !dbg !1101
  %792 = add nsw i32 %787, %791, !dbg !1102
  br label %793, !dbg !1103

; <label>:793:                                    ; preds = %790, %784
  %794 = phi i32 [ %792, %790 ], [ %787, %784 ], !dbg !572
  %795 = lshr i16 %785, 1, !dbg !1104
  %796 = icmp eq i16 %795, 0, !dbg !1105
  br i1 %796, label %1139, label %780, !dbg !1107

; <label>:797:                                    ; preds = %196
  br i1 %162, label %798, label %813, !dbg !1108

; <label>:798:                                    ; preds = %797
  %799 = extractelement <8 x i16> %138, i32 7, !dbg !1110
  %800 = icmp sgt i16 %799, -1, !dbg !1110
  %801 = extractelement <8 x i16> %138, i32 0, !dbg !1113
  %802 = extractelement <8 x i16> %138, i32 1, !dbg !1113
  %803 = extractelement <8 x i16> %138, i32 2, !dbg !1113
  %804 = extractelement <8 x i16> %138, i32 3, !dbg !1113
  %805 = extractelement <8 x i16> %138, i32 4, !dbg !1113
  %806 = extractelement <8 x i16> %138, i32 5, !dbg !1113
  %807 = extractelement <8 x i16> %138, i32 6, !dbg !1113
  br i1 %800, label %808, label %1093, !dbg !1113

; <label>:808:                                    ; preds = %798, %808
  %809 = phi i32 [ %810, %808 ], [ 0, %798 ]
  call fastcc void @emul(i16* getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 12, i64 0), i16* nonnull %139, i16* nonnull %139, %struct.LDPARMS* nonnull %15) #6, !dbg !1114
  %810 = add nsw i32 %809, -1, !dbg !1116
  %811 = load i16, i16* %147, align 16, !dbg !1117, !tbaa !534
  %812 = icmp sgt i16 %811, -1, !dbg !1110
  br i1 %812, label %808, label %1083, !dbg !1113, !llvm.loop !1118

; <label>:813:                                    ; preds = %797
  %814 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1121
  %815 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1, !dbg !1128
  store i16 0, i16* %814, align 16, !dbg !1128, !tbaa !534
  %816 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2, !dbg !1129
  store i16 %39, i16* %815, align 2, !dbg !1130, !tbaa !534
  %817 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1131
  store i16 0, i16* %816, align 4, !dbg !1132, !tbaa !534
  %818 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1134
  %819 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1134
  %820 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1134
  %821 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1134
  %822 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1134
  %823 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1134
  %824 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10, !dbg !1134
  %825 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11, !dbg !1134
  %826 = shufflevector <8 x i16> %138, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !1135
  %827 = bitcast i16* %817 to <8 x i16>*, !dbg !1135
  store <8 x i16> %826, <8 x i16>* %827, align 2, !dbg !1135, !tbaa !534
  store i16 %96, i16* %825, align 2, !dbg !1135, !tbaa !534
  %828 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1136
  store i16 0, i16* %828, align 8, !dbg !1137, !tbaa !534
  %829 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %830 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %831 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %832 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 3
  %833 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 4
  %834 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 5
  %835 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 6
  %836 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 7
  %837 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 8
  %838 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 9
  %839 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %840 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %841 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12
  %842 = extractelement <8 x i16> %138, i32 0, !dbg !1138
  %843 = extractelement <8 x i16> %138, i32 1, !dbg !1138
  %844 = extractelement <8 x i16> %138, i32 2, !dbg !1138
  %845 = extractelement <8 x i16> %138, i32 3, !dbg !1138
  %846 = extractelement <8 x i16> %138, i32 4, !dbg !1138
  %847 = extractelement <8 x i16> %138, i32 5, !dbg !1138
  %848 = extractelement <8 x i16> %138, i32 6, !dbg !1138
  %849 = extractelement <8 x i16> %138, i32 7, !dbg !1138
  br label %850, !dbg !1138

; <label>:850:                                    ; preds = %1014, %813
  %851 = phi i16 [ %96, %813 ], [ %1021, %1014 ]
  %852 = phi i16 [ %842, %813 ], [ %1020, %1014 ]
  %853 = phi i16 [ %843, %813 ], [ %1019, %1014 ]
  %854 = phi i16 [ %844, %813 ], [ %1018, %1014 ]
  %855 = phi i16 [ %845, %813 ], [ %1017, %1014 ]
  %856 = phi i16 [ %846, %813 ], [ %1016, %1014 ]
  %857 = phi i16 [ %847, %813 ], [ %1015, %1014 ]
  %858 = phi i16 [ %848, %813 ], [ %1006, %1014 ]
  %859 = phi i16 [ %849, %813 ], [ %1007, %1014 ]
  %860 = phi i16 [ %39, %813 ], [ %1008, %1014 ]
  %861 = phi i32 [ 0, %813 ], [ %1022, %1014 ]
  %862 = phi i32 [ 0, %813 ], [ %1023, %1014 ]
  %863 = lshr i16 %859, 1, !dbg !1155
  %864 = lshr i16 %858, 1, !dbg !1155
  %865 = shl i16 %859, 15, !dbg !1159
  %866 = or i16 %865, %864, !dbg !1159
  %867 = lshr i16 %857, 1, !dbg !1155
  %868 = shl i16 %858, 15, !dbg !1159
  %869 = or i16 %868, %867, !dbg !1159
  %870 = lshr i16 %856, 1, !dbg !1155
  %871 = shl i16 %857, 15, !dbg !1159
  %872 = or i16 %871, %870, !dbg !1159
  %873 = lshr i16 %855, 1, !dbg !1155
  %874 = shl i16 %856, 15, !dbg !1159
  %875 = or i16 %874, %873, !dbg !1159
  %876 = lshr i16 %854, 1, !dbg !1155
  %877 = shl i16 %855, 15, !dbg !1159
  %878 = or i16 %877, %876, !dbg !1159
  %879 = lshr i16 %853, 1, !dbg !1155
  %880 = shl i16 %854, 15, !dbg !1159
  %881 = or i16 %880, %879, !dbg !1159
  %882 = lshr i16 %852, 1, !dbg !1155
  %883 = shl i16 %853, 15, !dbg !1159
  %884 = or i16 %883, %882, !dbg !1159
  %885 = lshr i16 %851, 1, !dbg !1155
  %886 = shl i16 %852, 15, !dbg !1159
  %887 = or i16 %886, %885, !dbg !1159
  %888 = lshr i16 %859, 2, !dbg !1164
  %889 = lshr i16 %866, 1, !dbg !1164
  %890 = shl i16 %863, 15, !dbg !1165
  %891 = or i16 %889, %890, !dbg !1165
  %892 = lshr i16 %869, 1, !dbg !1164
  %893 = shl i16 %864, 15, !dbg !1165
  %894 = or i16 %892, %893, !dbg !1165
  %895 = lshr i16 %872, 1, !dbg !1164
  %896 = shl i16 %867, 15, !dbg !1165
  %897 = or i16 %895, %896, !dbg !1165
  %898 = lshr i16 %875, 1, !dbg !1164
  %899 = shl i16 %870, 15, !dbg !1165
  %900 = or i16 %898, %899, !dbg !1165
  %901 = lshr i16 %878, 1, !dbg !1164
  %902 = shl i16 %873, 15, !dbg !1165
  %903 = or i16 %901, %902, !dbg !1165
  %904 = lshr i16 %881, 1, !dbg !1164
  %905 = shl i16 %876, 15, !dbg !1165
  %906 = or i16 %904, %905, !dbg !1165
  %907 = lshr i16 %884, 1, !dbg !1164
  %908 = shl i16 %879, 15, !dbg !1165
  %909 = or i16 %907, %908, !dbg !1165
  %910 = lshr i16 %887, 1, !dbg !1164
  %911 = shl i16 %882, 15, !dbg !1165
  %912 = or i16 %910, %911, !dbg !1165
  %913 = shl i16 %885, 15, !dbg !1166
  %914 = shl i16 %851, 14, !dbg !1164
  %915 = and i16 %914, 16384, !dbg !1164
  %916 = or i16 %915, %913, !dbg !1165
  %917 = zext i16 %851 to i64, !dbg !1172
  %918 = zext i16 %912 to i64, !dbg !1173
  %919 = add nuw nsw i64 %918, %917, !dbg !1174
  %920 = lshr i64 %919, 16
  %921 = trunc i64 %919 to i16, !dbg !1176
  %922 = zext i16 %852 to i64, !dbg !1172
  %923 = zext i16 %909 to i64, !dbg !1173
  %924 = add nuw nsw i64 %923, %922, !dbg !1174
  %925 = add nuw nsw i64 %924, %920, !dbg !1177
  %926 = lshr i64 %925, 16
  %927 = and i64 %926, 1
  %928 = trunc i64 %925 to i16, !dbg !1176
  %929 = zext i16 %853 to i64, !dbg !1172
  %930 = zext i16 %906 to i64, !dbg !1173
  %931 = add nuw nsw i64 %930, %929, !dbg !1174
  %932 = add nuw nsw i64 %931, %927, !dbg !1177
  %933 = lshr i64 %932, 16
  %934 = and i64 %933, 1
  %935 = trunc i64 %932 to i16, !dbg !1176
  %936 = zext i16 %854 to i64, !dbg !1172
  %937 = zext i16 %903 to i64, !dbg !1173
  %938 = add nuw nsw i64 %937, %936, !dbg !1174
  %939 = add nuw nsw i64 %938, %934, !dbg !1177
  %940 = lshr i64 %939, 16
  %941 = and i64 %940, 1
  %942 = trunc i64 %939 to i16, !dbg !1176
  %943 = zext i16 %855 to i64, !dbg !1172
  %944 = zext i16 %900 to i64, !dbg !1173
  %945 = add nuw nsw i64 %944, %943, !dbg !1174
  %946 = add nuw nsw i64 %945, %941, !dbg !1177
  %947 = lshr i64 %946, 16
  %948 = and i64 %947, 1
  %949 = trunc i64 %946 to i16, !dbg !1176
  %950 = zext i16 %856 to i64, !dbg !1172
  %951 = zext i16 %897 to i64, !dbg !1173
  %952 = add nuw nsw i64 %951, %950, !dbg !1174
  %953 = add nuw nsw i64 %952, %948, !dbg !1177
  %954 = lshr i64 %953, 16
  %955 = and i64 %954, 1
  %956 = trunc i64 %953 to i16, !dbg !1176
  %957 = zext i16 %857 to i64, !dbg !1172
  %958 = zext i16 %894 to i64, !dbg !1173
  %959 = add nuw nsw i64 %958, %957, !dbg !1174
  %960 = add nuw nsw i64 %959, %955, !dbg !1177
  %961 = lshr i64 %960, 16
  %962 = and i64 %961, 1
  %963 = trunc i64 %960 to i16, !dbg !1176
  %964 = zext i16 %858 to i64, !dbg !1172
  %965 = zext i16 %891 to i64, !dbg !1173
  %966 = add nuw nsw i64 %965, %964, !dbg !1174
  %967 = add nuw nsw i64 %966, %962, !dbg !1177
  %968 = lshr i64 %967, 16
  %969 = and i64 %968, 1
  %970 = trunc i64 %967 to i16, !dbg !1176
  %971 = zext i16 %859 to i64, !dbg !1172
  %972 = zext i16 %888 to i64, !dbg !1173
  %973 = add nuw nsw i64 %972, %971, !dbg !1174
  %974 = add nuw nsw i64 %973, %969, !dbg !1177
  %975 = trunc i64 %974 to i16, !dbg !1176
  %976 = add i16 %860, 3, !dbg !1178
  %977 = and i64 %974, 65536, !dbg !1179
  %978 = icmp eq i64 %977, 0, !dbg !1179
  %979 = insertelement <8 x i16> undef, i16 %963, i32 0
  %980 = insertelement <8 x i16> %979, i16 %956, i32 1
  %981 = insertelement <8 x i16> %980, i16 %949, i32 2
  %982 = insertelement <8 x i16> %981, i16 %942, i32 3
  %983 = insertelement <8 x i16> %982, i16 %935, i32 4
  %984 = insertelement <8 x i16> %983, i16 %928, i32 5
  %985 = insertelement <8 x i16> %984, i16 %921, i32 6
  %986 = insertelement <8 x i16> %985, i16 %916, i32 7
  br i1 %978, label %1005, label %987, !dbg !1180

; <label>:987:                                    ; preds = %850
  %988 = lshr i16 %975, 1, !dbg !1186
  %989 = or i16 %988, -32768, !dbg !1187
  %990 = lshr i16 %970, 1, !dbg !1186
  %991 = shl i16 %975, 15, !dbg !1187
  %992 = or i16 %991, %990, !dbg !1187
  %993 = insertelement <8 x i16> undef, i16 %970, i32 0, !dbg !1187
  %994 = insertelement <8 x i16> %993, i16 %963, i32 1, !dbg !1187
  %995 = insertelement <8 x i16> %994, i16 %956, i32 2, !dbg !1187
  %996 = insertelement <8 x i16> %995, i16 %949, i32 3, !dbg !1187
  %997 = insertelement <8 x i16> %996, i16 %942, i32 4, !dbg !1187
  %998 = insertelement <8 x i16> %997, i16 %935, i32 5, !dbg !1187
  %999 = insertelement <8 x i16> %998, i16 %928, i32 6, !dbg !1187
  %1000 = insertelement <8 x i16> %999, i16 %921, i32 7, !dbg !1187
  %1001 = shl <8 x i16> %1000, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !1187
  %1002 = lshr <8 x i16> %986, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1186
  %1003 = or <8 x i16> %1001, %1002, !dbg !1187
  %1004 = add i16 %860, 4, !dbg !1186
  br label %1005, !dbg !1188

; <label>:1005:                                   ; preds = %987, %850
  %1006 = phi i16 [ %970, %850 ], [ %992, %987 ]
  %1007 = phi i16 [ %975, %850 ], [ %989, %987 ]
  %1008 = phi i16 [ %976, %850 ], [ %1004, %987 ]
  %1009 = phi <8 x i16> [ %986, %850 ], [ %1003, %987 ]
  %1010 = extractelement <8 x i16> %1009, i32 7, !dbg !1188
  %1011 = icmp ne i16 %1010, 0, !dbg !1188
  %1012 = icmp ugt i16 %1008, 16382, !dbg !1190
  %1013 = or i1 %1011, %1012, !dbg !1192
  br i1 %1013, label %1030, label %1014, !dbg !1192

; <label>:1014:                                   ; preds = %1005
  store i16 %1008, i16* %815, align 2, !dbg !1197, !tbaa !534
  store i16 0, i16* %816, align 4, !dbg !1197, !tbaa !534
  store i16 %1007, i16* %817, align 2, !dbg !1197, !tbaa !534
  store i16 %1006, i16* %818, align 8, !dbg !1197, !tbaa !534
  %1015 = extractelement <8 x i16> %1009, i32 0, !dbg !1197
  store i16 %1015, i16* %819, align 2, !dbg !1197, !tbaa !534
  %1016 = extractelement <8 x i16> %1009, i32 1, !dbg !1197
  store i16 %1016, i16* %820, align 4, !dbg !1197, !tbaa !534
  %1017 = extractelement <8 x i16> %1009, i32 2, !dbg !1197
  store i16 %1017, i16* %821, align 2, !dbg !1197, !tbaa !534
  %1018 = extractelement <8 x i16> %1009, i32 3, !dbg !1197
  store i16 %1018, i16* %822, align 16, !dbg !1197, !tbaa !534
  %1019 = extractelement <8 x i16> %1009, i32 4, !dbg !1197
  store i16 %1019, i16* %823, align 2, !dbg !1197, !tbaa !534
  %1020 = extractelement <8 x i16> %1009, i32 5, !dbg !1197
  store i16 %1020, i16* %824, align 4, !dbg !1197, !tbaa !534
  %1021 = extractelement <8 x i16> %1009, i32 6, !dbg !1197
  store i16 %1021, i16* %825, align 2, !dbg !1197, !tbaa !534
  store i16 0, i16* %828, align 8, !dbg !1198, !tbaa !534
  %1022 = add nsw i32 %861, -1, !dbg !1199
  %1023 = add nuw nsw i32 %862, 1, !dbg !1200
  %1024 = icmp ult i32 %1023, 43, !dbg !1201
  br i1 %1024, label %850, label %1025, !dbg !1138, !llvm.loop !1202

; <label>:1025:                                   ; preds = %1014
  store i16 0, i16* %829, align 16, !dbg !1205, !tbaa !534
  store i16 %1008, i16* %830, align 2, !dbg !1206, !tbaa !534
  store i16 0, i16* %831, align 4, !dbg !1207, !tbaa !534
  store i16 0, i16* %841, align 8, !dbg !1208, !tbaa !534
  store i16 %1021, i16* %840, align 2, !dbg !1207, !tbaa !534
  store i16 %1020, i16* %839, align 4, !dbg !1207, !tbaa !534
  store i16 %1019, i16* %838, align 2, !dbg !1207, !tbaa !534
  store i16 %1018, i16* %837, align 16, !dbg !1207, !tbaa !534
  store i16 %1017, i16* %836, align 2, !dbg !1207, !tbaa !534
  store i16 %1016, i16* %835, align 4, !dbg !1207, !tbaa !534
  store i16 %1015, i16* %834, align 2, !dbg !1207, !tbaa !534
  store i16 %1006, i16* %833, align 8, !dbg !1207, !tbaa !534
  store i16 %1007, i16* %832, align 2, !dbg !1207, !tbaa !534
  %1026 = load i16, i16* %814, align 16, !dbg !1216, !tbaa !534
  %1027 = icmp eq i16 %1026, 0, !dbg !1217
  %1028 = or i16 %1008, -32768, !dbg !1218
  %1029 = select i1 %1027, i16 %1008, i16 %1028, !dbg !1219
  store i16 %1029, i16* %148, align 2, !dbg !1220, !tbaa !534
  br label %1071, !dbg !1221

; <label>:1030:                                   ; preds = %1005
  store i16 0, i16* %829, align 16, !dbg !1205, !tbaa !534
  store i16 %1008, i16* %830, align 2, !dbg !1206, !tbaa !534
  store i16 0, i16* %831, align 4, !dbg !1207, !tbaa !534
  %1031 = bitcast i16* %834 to <8 x i16>*, !dbg !1207
  store <8 x i16> %1009, <8 x i16>* %1031, align 2, !dbg !1207, !tbaa !534
  store i16 %1006, i16* %833, align 8, !dbg !1207, !tbaa !534
  store i16 %1007, i16* %832, align 2, !dbg !1207, !tbaa !534
  %1032 = load i16, i16* %815, align 2, !dbg !1220, !tbaa !534
  %1033 = load i16, i16* %814, align 16, !dbg !1216, !tbaa !534
  %1034 = icmp eq i16 %1033, 0, !dbg !1217
  %1035 = or i16 %1032, -32768, !dbg !1218
  %1036 = select i1 %1034, i16 %1032, i16 %1035, !dbg !1219
  store i16 %1036, i16* %148, align 2, !dbg !1220, !tbaa !534
  %1037 = icmp eq i16 %1032, 32767, !dbg !1223
  %1038 = load i16, i16* %817, align 2, !dbg !1224, !tbaa !534
  %1039 = load i16, i16* %818, align 8, !dbg !1224
  br i1 %1037, label %1048, label %1040, !dbg !1221

; <label>:1040:                                   ; preds = %1030
  %1041 = load i16, i16* %819, align 2, !dbg !1225, !tbaa !534
  %1042 = load i16, i16* %820, align 4, !dbg !1225, !tbaa !534
  %1043 = load i16, i16* %821, align 2, !dbg !1225, !tbaa !534
  %1044 = load i16, i16* %822, align 16, !dbg !1225, !tbaa !534
  %1045 = load i16, i16* %823, align 2, !dbg !1225, !tbaa !534
  %1046 = load i16, i16* %824, align 4, !dbg !1225, !tbaa !534
  %1047 = load i16, i16* %825, align 2, !dbg !1225, !tbaa !534
  br label %1071, !dbg !1221

; <label>:1048:                                   ; preds = %1030
  %1049 = or i16 %1039, %1038, !dbg !1229
  %1050 = load i16, i16* %819, align 2, !dbg !1230
  %1051 = or i16 %1049, %1050, !dbg !1229
  %1052 = load i16, i16* %820, align 4, !dbg !1230
  %1053 = or i16 %1051, %1052, !dbg !1229
  %1054 = load i16, i16* %821, align 2, !dbg !1230
  %1055 = or i16 %1053, %1054, !dbg !1229
  %1056 = load i16, i16* %822, align 16, !dbg !1230
  %1057 = or i16 %1055, %1056, !dbg !1229
  %1058 = load i16, i16* %823, align 2, !dbg !1230
  %1059 = or i16 %1057, %1058, !dbg !1229
  %1060 = load i16, i16* %824, align 4, !dbg !1230
  %1061 = or i16 %1059, %1060, !dbg !1229
  %1062 = load i16, i16* %825, align 2, !dbg !1230
  %1063 = or i16 %1061, %1062, !dbg !1229
  %1064 = load i16, i16* %828, align 8, !dbg !1230
  %1065 = or i16 %1063, %1064, !dbg !1229
  %1066 = icmp eq i16 %1065, 0, !dbg !1229
  %1067 = bitcast [13 x i16]* %10 to <8 x i16>*, !dbg !1224
  store <8 x i16> zeroinitializer, <8 x i16>* %1067, align 16, !dbg !1224, !tbaa !534
  br i1 %1066, label %1069, label %1068, !dbg !1229

; <label>:1068:                                   ; preds = %1048
  store i16 -16384, i16* %147, align 16, !dbg !1235, !tbaa !534
  store i16 32767, i16* %148, align 2, !dbg !1236, !tbaa !534
  br label %1093, !dbg !1237

; <label>:1069:                                   ; preds = %1048
  store i16 0, i16* %147, align 16, !dbg !1242, !tbaa !534
  %1070 = or i16 %1036, 32767, !dbg !1243
  store i16 %1070, i16* %148, align 2, !dbg !1243, !tbaa !534
  br label %1093, !dbg !1244

; <label>:1071:                                   ; preds = %1040, %1025
  %1072 = phi i16 [ %1021, %1025 ], [ %1047, %1040 ], !dbg !1225
  %1073 = phi i16 [ %1020, %1025 ], [ %1046, %1040 ], !dbg !1225
  %1074 = phi i16 [ %1019, %1025 ], [ %1045, %1040 ], !dbg !1225
  %1075 = phi i16 [ %1018, %1025 ], [ %1044, %1040 ], !dbg !1225
  %1076 = phi i16 [ %1017, %1025 ], [ %1043, %1040 ], !dbg !1225
  %1077 = phi i16 [ %1016, %1025 ], [ %1042, %1040 ], !dbg !1225
  %1078 = phi i16 [ %1015, %1025 ], [ %1041, %1040 ], !dbg !1225
  %1079 = phi i16 [ %1006, %1025 ], [ %1039, %1040 ], !dbg !1225
  %1080 = phi i16 [ %1007, %1025 ], [ %1038, %1040 ], !dbg !1225
  %1081 = phi i16 [ %1029, %1025 ], [ %1036, %1040 ]
  %1082 = phi i32 [ %1022, %1025 ], [ %861, %1040 ]
  store i16 %1080, i16* %147, align 16, !dbg !1245, !tbaa !534
  store i16 %1079, i16* %146, align 2, !dbg !1245, !tbaa !534
  store i16 %1078, i16* %145, align 4, !dbg !1245, !tbaa !534
  store i16 %1077, i16* %144, align 2, !dbg !1245, !tbaa !534
  store i16 %1076, i16* %143, align 8, !dbg !1245, !tbaa !534
  store i16 %1075, i16* %142, align 2, !dbg !1245, !tbaa !534
  store i16 %1074, i16* %141, align 4, !dbg !1245, !tbaa !534
  store i16 %1073, i16* %140, align 2, !dbg !1245, !tbaa !534
  store i16 %1072, i16* %139, align 16, !dbg !1245, !tbaa !534
  br label %1093, !dbg !1246

; <label>:1083:                                   ; preds = %808
  %1084 = load i16, i16* %139, align 16, !dbg !1247, !tbaa !534
  %1085 = load i16, i16* %140, align 2, !dbg !1247, !tbaa !534
  %1086 = load i16, i16* %141, align 4, !dbg !1247, !tbaa !534
  %1087 = load i16, i16* %142, align 2, !dbg !1247, !tbaa !534
  %1088 = load i16, i16* %143, align 8, !dbg !1247, !tbaa !534
  %1089 = load i16, i16* %144, align 2, !dbg !1247, !tbaa !534
  %1090 = load i16, i16* %145, align 4, !dbg !1247, !tbaa !534
  %1091 = load i16, i16* %146, align 2, !dbg !1247, !tbaa !534
  %1092 = load i16, i16* %148, align 2, !dbg !1247, !tbaa !534
  br label %1093, !dbg !1249

; <label>:1093:                                   ; preds = %1083, %1071, %1069, %1068, %798
  %1094 = phi i16 [ 32767, %1068 ], [ %1070, %1069 ], [ %1081, %1071 ], [ 0, %798 ], [ %1092, %1083 ], !dbg !1247
  %1095 = phi i16 [ -16384, %1068 ], [ 0, %1069 ], [ %1080, %1071 ], [ %799, %798 ], [ %811, %1083 ], !dbg !1247
  %1096 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1079, %1071 ], [ %807, %798 ], [ %1091, %1083 ], !dbg !1247
  %1097 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1078, %1071 ], [ %806, %798 ], [ %1090, %1083 ], !dbg !1247
  %1098 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1077, %1071 ], [ %805, %798 ], [ %1089, %1083 ], !dbg !1247
  %1099 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1076, %1071 ], [ %804, %798 ], [ %1088, %1083 ], !dbg !1247
  %1100 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1075, %1071 ], [ %803, %798 ], [ %1087, %1083 ], !dbg !1247
  %1101 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1074, %1071 ], [ %802, %798 ], [ %1086, %1083 ], !dbg !1247
  %1102 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1073, %1071 ], [ %801, %798 ], [ %1085, %1083 ], !dbg !1247
  %1103 = phi i16 [ 0, %1068 ], [ 0, %1069 ], [ %1072, %1071 ], [ %96, %798 ], [ %1084, %1083 ], !dbg !1247
  %1104 = phi i32 [ %861, %1068 ], [ %861, %1069 ], [ %1082, %1071 ], [ 0, %798 ], [ %810, %1083 ], !dbg !653
  %1105 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1249
  %1106 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1, !dbg !1254
  store i16 %1103, i16* %1105, align 16, !dbg !1255, !tbaa !534
  %1107 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2, !dbg !1254
  store i16 %1102, i16* %1106, align 2, !dbg !1255, !tbaa !534
  %1108 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1254
  store i16 %1101, i16* %1107, align 4, !dbg !1255, !tbaa !534
  %1109 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1254
  store i16 %1100, i16* %1108, align 2, !dbg !1255, !tbaa !534
  %1110 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1254
  store i16 %1099, i16* %1109, align 8, !dbg !1255, !tbaa !534
  %1111 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1254
  store i16 %1098, i16* %1110, align 2, !dbg !1255, !tbaa !534
  %1112 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1254
  store i16 %1097, i16* %1111, align 4, !dbg !1255, !tbaa !534
  %1113 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1254
  store i16 %1096, i16* %1112, align 2, !dbg !1255, !tbaa !534
  %1114 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1254
  store i16 %1095, i16* %1113, align 16, !dbg !1255, !tbaa !534
  store i16 %1094, i16* %1114, align 2, !dbg !1255, !tbaa !534
  %1115 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !1260
  store <8 x i16> zeroinitializer, <8 x i16>* %1115, align 16, !dbg !1260, !tbaa !534
  store i16 -32768, i16* %159, align 16, !dbg !1260, !tbaa !534
  store i16 16383, i16* %161, align 2, !dbg !1260, !tbaa !534
  %1116 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %1105) #6, !dbg !1261
  %1117 = icmp sgt i32 %1116, 0, !dbg !1262
  br i1 %1117, label %1118, label %1137, !dbg !1263

; <label>:1118:                                   ; preds = %1093, %1131
  %1119 = phi i16* [ %1133, %1131 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @emtens, i64 0, i64 0, i64 0), %1093 ]
  %1120 = phi i32 [ %1128, %1131 ], [ %1104, %1093 ]
  %1121 = phi i32 [ %1132, %1131 ], [ -4096, %1093 ]
  %1122 = phi i16* [ %1134, %1131 ], [ getelementptr inbounds ([13 x [10 x i16]], [13 x [10 x i16]]* @etens, i64 0, i64 0, i64 0), %1093 ]
  %1123 = call fastcc i32 @ecmp(i16* nonnull %1119, i16* nonnull %1105) #6, !dbg !1264
  %1124 = icmp sgt i32 %1123, -1, !dbg !1267
  br i1 %1124, label %1125, label %1127, !dbg !1268

; <label>:1125:                                   ; preds = %1118
  call fastcc void @emul(i16* %1122, i16* nonnull %1105, i16* nonnull %1105, %struct.LDPARMS* nonnull %15) #6, !dbg !1269
  call fastcc void @emul(i16* %1122, i16* nonnull %151, i16* nonnull %151, %struct.LDPARMS* nonnull %15) #6, !dbg !1271
  %1126 = add nsw i32 %1121, %1120, !dbg !1272
  br label %1127, !dbg !1273

; <label>:1127:                                   ; preds = %1125, %1118
  %1128 = phi i32 [ %1126, %1125 ], [ %1120, %1118 ], !dbg !572
  %1129 = add nsw i32 %1121, 1, !dbg !1274
  %1130 = icmp ult i32 %1129, 3, !dbg !1274
  br i1 %1130, label %1137, label %1131, !dbg !1276

; <label>:1131:                                   ; preds = %1127
  %1132 = sdiv i32 %1121, 2, !dbg !1277
  %1133 = getelementptr inbounds i16, i16* %1119, i64 10, !dbg !1278
  %1134 = getelementptr inbounds i16, i16* %1122, i64 10, !dbg !1279
  %1135 = call fastcc i32 @ecmp(i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %1105) #6, !dbg !1261
  %1136 = icmp sgt i32 %1135, 0, !dbg !1262
  br i1 %1136, label %1118, label %1137, !dbg !1263, !llvm.loop !1280

; <label>:1137:                                   ; preds = %1131, %1127, %1093
  %1138 = phi i32 [ %1104, %1093 ], [ %1128, %1127 ], [ %1128, %1131 ], !dbg !572
  call fastcc void @ediv(i16* nonnull %151, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @eone, i64 0, i64 0), i16* nonnull %151, %struct.LDPARMS* nonnull %15) #6, !dbg !1283
  br label %1139

; <label>:1139:                                   ; preds = %793, %780, %1137, %768, %193, %163
  %1140 = phi i32 [ 0, %193 ], [ %1138, %1137 ], [ %764, %768 ], [ 0, %163 ], [ %794, %780 ], [ %794, %793 ], !dbg !572
  %1141 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 0, !dbg !1284
  %1142 = load i16, i16* %161, align 2, !dbg !1290, !tbaa !534
  %1143 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 1, !dbg !1291
  %1144 = ashr i16 %1142, 15, !dbg !1292
  store i16 %1144, i16* %1141, align 16, !dbg !1291, !tbaa !534
  %1145 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 2, !dbg !1293
  %1146 = and i16 %1142, 32767, !dbg !1294
  store i16 %1146, i16* %1143, align 2, !dbg !1294, !tbaa !534
  %1147 = icmp eq i16 %1146, 32767, !dbg !1295
  br i1 %1147, label %1148, label %1201, !dbg !1297

; <label>:1148:                                   ; preds = %1139
  %1149 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !1303
  %1150 = load <8 x i16>, <8 x i16>* %1149, align 16, !dbg !1303
  %1151 = shufflevector <8 x i16> %1150, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !1303
  %1152 = extractelement <8 x i16> %1150, i32 1, !dbg !1304
  %1153 = extractelement <8 x i16> %1150, i32 0, !dbg !1304
  %1154 = or i16 %1152, %1153, !dbg !1304
  %1155 = extractelement <8 x i16> %1150, i32 2, !dbg !1304
  %1156 = or i16 %1154, %1155, !dbg !1304
  %1157 = extractelement <8 x i16> %1150, i32 3, !dbg !1304
  %1158 = or i16 %1156, %1157, !dbg !1304
  %1159 = extractelement <8 x i16> %1150, i32 4, !dbg !1304
  %1160 = or i16 %1158, %1159, !dbg !1304
  %1161 = extractelement <8 x i16> %1150, i32 5, !dbg !1304
  %1162 = or i16 %1160, %1161, !dbg !1304
  %1163 = extractelement <8 x i16> %1150, i32 6, !dbg !1304
  %1164 = or i16 %1162, %1163, !dbg !1304
  %1165 = extractelement <8 x i16> %1150, i32 7, !dbg !1304
  %1166 = or i16 %1164, %1165, !dbg !1304
  %1167 = icmp eq i16 %1166, 0, !dbg !1304
  br i1 %1167, label %1171, label %1168, !dbg !1304

; <label>:1168:                                   ; preds = %1148
  %1169 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1305
  store i16 0, i16* %1145, align 4, !dbg !1305, !tbaa !534
  %1170 = load i16, i16* %159, align 16, !dbg !1308, !tbaa !534
  br label %1186, !dbg !1311

; <label>:1171:                                   ; preds = %1148
  %1172 = load i16, i16* %159, align 16, !dbg !1303, !tbaa !534
  %1173 = icmp eq i16 %1172, 0, !dbg !1312
  %1174 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1305
  store i16 0, i16* %1145, align 4, !dbg !1305, !tbaa !534
  br i1 %1173, label %1175, label %1186, !dbg !1311

; <label>:1175:                                   ; preds = %1171
  %1176 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1313
  %1177 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1313
  %1178 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1313
  %1179 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1313
  %1180 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1313
  %1181 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1313
  %1182 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10, !dbg !1313
  %1183 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11, !dbg !1313
  %1184 = bitcast i16* %1174 to <8 x i16>*, !dbg !1316
  store <8 x i16> zeroinitializer, <8 x i16>* %1184, align 2, !dbg !1316, !tbaa !534
  %1185 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1313
  store i16 0, i16* %1183, align 2, !dbg !1316, !tbaa !534
  store i16 0, i16* %1185, align 8, !dbg !1316, !tbaa !534
  br label %1225, !dbg !1317

; <label>:1186:                                   ; preds = %1171, %1168
  %1187 = phi i16* [ %1169, %1168 ], [ %1174, %1171 ], !dbg !1318
  %1188 = phi i16 [ %1170, %1168 ], [ %1172, %1171 ], !dbg !1308
  %1189 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1320
  store i16 %1188, i16* %1187, align 2, !dbg !1321, !tbaa !534
  %1190 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1320
  %1191 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1320
  %1192 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1320
  %1193 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1320
  %1194 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1320
  %1195 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10, !dbg !1320
  %1196 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11, !dbg !1320
  %1197 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 -1, !dbg !1322
  %1198 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1320
  %1199 = bitcast i16* %1189 to <8 x i16>*, !dbg !1321
  store <8 x i16> %1151, <8 x i16>* %1199, align 8, !dbg !1321, !tbaa !534
  %1200 = load i16, i16* %1197, align 2, !dbg !1308, !tbaa !534
  store i16 %1200, i16* %1198, align 8, !dbg !1321, !tbaa !534
  br label %1225, !dbg !1317

; <label>:1201:                                   ; preds = %1139
  %1202 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 3, !dbg !1323
  store i16 0, i16* %1145, align 4, !dbg !1324, !tbaa !534
  %1203 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 4, !dbg !1325
  %1204 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 5, !dbg !1325
  %1205 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 6, !dbg !1325
  %1206 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 7, !dbg !1325
  %1207 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 8, !dbg !1325
  %1208 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 9, !dbg !1325
  %1209 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 10, !dbg !1325
  %1210 = bitcast i16* %152 to <8 x i16>*, !dbg !1326
  %1211 = load <8 x i16>, <8 x i16>* %1210, align 2, !dbg !1326, !tbaa !534
  %1212 = shufflevector <8 x i16> %1211, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !1326
  %1213 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 11, !dbg !1325
  %1214 = bitcast i16* %1202 to <8 x i16>*, !dbg !1327
  store <8 x i16> %1212, <8 x i16>* %1214, align 2, !dbg !1327, !tbaa !534
  %1215 = load i16, i16* %151, align 16, !dbg !1326, !tbaa !534
  store i16 %1215, i16* %1213, align 2, !dbg !1327, !tbaa !534
  %1216 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1328
  store i16 0, i16* %1216, align 8, !dbg !1329, !tbaa !534
  %1217 = extractelement <8 x i16> %1211, i32 7, !dbg !1317
  %1218 = extractelement <8 x i16> %1211, i32 6, !dbg !1317
  %1219 = extractelement <8 x i16> %1211, i32 5, !dbg !1317
  %1220 = extractelement <8 x i16> %1211, i32 4, !dbg !1317
  %1221 = extractelement <8 x i16> %1211, i32 3, !dbg !1317
  %1222 = extractelement <8 x i16> %1211, i32 2, !dbg !1317
  %1223 = extractelement <8 x i16> %1211, i32 1, !dbg !1317
  %1224 = extractelement <8 x i16> %1211, i32 0, !dbg !1317
  br label %1225, !dbg !1317

; <label>:1225:                                   ; preds = %1201, %1186, %1175
  %1226 = phi i16* [ %1183, %1175 ], [ %1196, %1186 ], [ %1213, %1201 ], !dbg !1318
  %1227 = phi i16* [ %1182, %1175 ], [ %1195, %1186 ], [ %1209, %1201 ], !dbg !1318
  %1228 = phi i16* [ %1181, %1175 ], [ %1194, %1186 ], [ %1208, %1201 ], !dbg !1318
  %1229 = phi i16* [ %1180, %1175 ], [ %1193, %1186 ], [ %1207, %1201 ], !dbg !1318
  %1230 = phi i16* [ %1179, %1175 ], [ %1192, %1186 ], [ %1206, %1201 ], !dbg !1318
  %1231 = phi i16* [ %1178, %1175 ], [ %1191, %1186 ], [ %1205, %1201 ], !dbg !1318
  %1232 = phi i16* [ %1177, %1175 ], [ %1190, %1186 ], [ %1204, %1201 ], !dbg !1318
  %1233 = phi i16* [ %1176, %1175 ], [ %1189, %1186 ], [ %1203, %1201 ], !dbg !1318
  %1234 = phi i16* [ %1174, %1175 ], [ %1187, %1186 ], [ %1202, %1201 ], !dbg !1318
  %1235 = phi i16 [ 0, %1175 ], [ %1153, %1186 ], [ %1215, %1201 ], !dbg !1330
  %1236 = phi i16 [ 0, %1175 ], [ %1152, %1186 ], [ %1224, %1201 ], !dbg !1330
  %1237 = phi i16 [ 0, %1175 ], [ %1155, %1186 ], [ %1223, %1201 ], !dbg !1330
  %1238 = phi i16 [ 0, %1175 ], [ %1157, %1186 ], [ %1222, %1201 ], !dbg !1330
  %1239 = phi i16 [ 0, %1175 ], [ %1159, %1186 ], [ %1221, %1201 ], !dbg !1330
  %1240 = phi i16 [ 0, %1175 ], [ %1161, %1186 ], [ %1220, %1201 ], !dbg !1330
  %1241 = phi i16 [ 0, %1175 ], [ %1163, %1186 ], [ %1219, %1201 ], !dbg !1330
  %1242 = phi i16 [ 0, %1175 ], [ %1165, %1186 ], [ %1218, %1201 ], !dbg !1330
  %1243 = phi i16 [ 0, %1175 ], [ %1188, %1186 ], [ %1217, %1201 ], !dbg !1330
  store i16 %1144, i16* %151, align 16, !dbg !1334, !tbaa !534
  store i16 %1146, i16* %152, align 2, !dbg !1334, !tbaa !534
  store i16 0, i16* %153, align 4, !dbg !1334, !tbaa !534
  store i16 %1243, i16* %154, align 2, !dbg !1334, !tbaa !534
  store i16 %1242, i16* %155, align 8, !dbg !1334, !tbaa !534
  store i16 %1241, i16* %156, align 2, !dbg !1334, !tbaa !534
  store i16 %1240, i16* %157, align 4, !dbg !1334, !tbaa !534
  store i16 %1239, i16* %158, align 2, !dbg !1334, !tbaa !534
  store i16 %1238, i16* %159, align 16, !dbg !1334, !tbaa !534
  %1244 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 10, !dbg !1335
  store i16 %1237, i16* %161, align 2, !dbg !1334, !tbaa !534
  %1245 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 11, !dbg !1335
  store i16 %1236, i16* %1244, align 4, !dbg !1334, !tbaa !534
  store i16 %1235, i16* %1245, align 2, !dbg !1334, !tbaa !534
  %1246 = getelementptr inbounds [13 x i16], [13 x i16]* %11, i64 0, i64 12, !dbg !1336
  store i16 0, i16* %1246, align 8, !dbg !1337, !tbaa !534
  %1247 = load i16, i16* %148, align 2, !dbg !1343, !tbaa !534
  %1248 = ashr i16 %1247, 15, !dbg !1344
  store i16 %1248, i16* %1141, align 16, !dbg !1345, !tbaa !534
  %1249 = and i16 %1247, 32767, !dbg !1346
  store i16 %1249, i16* %1143, align 2, !dbg !1346, !tbaa !534
  %1250 = icmp eq i16 %1249, 32767, !dbg !1347
  br i1 %1250, label %1251, label %1280, !dbg !1348

; <label>:1251:                                   ; preds = %1225
  %1252 = load i16, i16* %139, align 16, !dbg !1352, !tbaa !534
  %1253 = load i16, i16* %140, align 2, !dbg !1352
  %1254 = or i16 %1253, %1252, !dbg !1353
  %1255 = load i16, i16* %141, align 4, !dbg !1352
  %1256 = or i16 %1254, %1255, !dbg !1353
  %1257 = load i16, i16* %142, align 2, !dbg !1352
  %1258 = or i16 %1256, %1257, !dbg !1353
  %1259 = load i16, i16* %143, align 8, !dbg !1352
  %1260 = or i16 %1258, %1259, !dbg !1353
  %1261 = load i16, i16* %144, align 2, !dbg !1352
  %1262 = or i16 %1260, %1261, !dbg !1353
  %1263 = load i16, i16* %145, align 4, !dbg !1352
  %1264 = or i16 %1262, %1263, !dbg !1353
  %1265 = load i16, i16* %146, align 2, !dbg !1352
  %1266 = or i16 %1264, %1265, !dbg !1353
  %1267 = icmp eq i16 %1266, 0, !dbg !1353
  br i1 %1267, label %1270, label %1268, !dbg !1353

; <label>:1268:                                   ; preds = %1251
  store i16 0, i16* %1145, align 4, !dbg !1354, !tbaa !534
  %1269 = load i16, i16* %147, align 16, !dbg !1356, !tbaa !534
  br label %1275, !dbg !1357

; <label>:1270:                                   ; preds = %1251
  %1271 = load i16, i16* %147, align 16, !dbg !1352, !tbaa !534
  %1272 = icmp eq i16 %1271, 0, !dbg !1358
  store i16 0, i16* %1145, align 4, !dbg !1354, !tbaa !534
  br i1 %1272, label %1273, label %1275, !dbg !1357

; <label>:1273:                                   ; preds = %1270
  store i16 0, i16* %1234, align 2, !dbg !1359, !tbaa !534
  store i16 0, i16* %1233, align 8, !dbg !1359, !tbaa !534
  store i16 0, i16* %1232, align 2, !dbg !1359, !tbaa !534
  store i16 0, i16* %1231, align 4, !dbg !1359, !tbaa !534
  store i16 0, i16* %1230, align 2, !dbg !1359, !tbaa !534
  store i16 0, i16* %1229, align 16, !dbg !1359, !tbaa !534
  store i16 0, i16* %1228, align 2, !dbg !1359, !tbaa !534
  store i16 0, i16* %1227, align 4, !dbg !1359, !tbaa !534
  %1274 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1360
  store i16 0, i16* %1226, align 2, !dbg !1359, !tbaa !534
  store i16 0, i16* %1274, align 8, !dbg !1359, !tbaa !534
  br label %1291, !dbg !1361

; <label>:1275:                                   ; preds = %1270, %1268
  %1276 = phi i16 [ %1269, %1268 ], [ %1271, %1270 ], !dbg !1356
  store i16 %1276, i16* %1234, align 2, !dbg !1362, !tbaa !534
  store i16 %1265, i16* %1233, align 8, !dbg !1362, !tbaa !534
  store i16 %1263, i16* %1232, align 2, !dbg !1362, !tbaa !534
  store i16 %1261, i16* %1231, align 4, !dbg !1362, !tbaa !534
  store i16 %1259, i16* %1230, align 2, !dbg !1362, !tbaa !534
  store i16 %1257, i16* %1229, align 16, !dbg !1362, !tbaa !534
  store i16 %1255, i16* %1228, align 2, !dbg !1362, !tbaa !534
  store i16 %1253, i16* %1227, align 4, !dbg !1362, !tbaa !534
  %1277 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 -1, !dbg !1363
  %1278 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1364
  store i16 %1252, i16* %1226, align 2, !dbg !1362, !tbaa !534
  %1279 = load i16, i16* %1277, align 2, !dbg !1356, !tbaa !534
  store i16 %1279, i16* %1278, align 8, !dbg !1362, !tbaa !534
  br label %1291, !dbg !1361

; <label>:1280:                                   ; preds = %1225
  store i16 0, i16* %1145, align 4, !dbg !1365, !tbaa !534
  %1281 = load i16, i16* %147, align 16, !dbg !1366, !tbaa !534
  store i16 %1281, i16* %1234, align 2, !dbg !1367, !tbaa !534
  %1282 = load i16, i16* %146, align 2, !dbg !1366, !tbaa !534
  store i16 %1282, i16* %1233, align 8, !dbg !1367, !tbaa !534
  %1283 = load i16, i16* %145, align 4, !dbg !1366, !tbaa !534
  store i16 %1283, i16* %1232, align 2, !dbg !1367, !tbaa !534
  %1284 = load i16, i16* %144, align 2, !dbg !1366, !tbaa !534
  store i16 %1284, i16* %1231, align 4, !dbg !1367, !tbaa !534
  %1285 = load i16, i16* %143, align 8, !dbg !1366, !tbaa !534
  store i16 %1285, i16* %1230, align 2, !dbg !1367, !tbaa !534
  %1286 = load i16, i16* %142, align 2, !dbg !1366, !tbaa !534
  store i16 %1286, i16* %1229, align 16, !dbg !1367, !tbaa !534
  %1287 = load i16, i16* %141, align 4, !dbg !1366, !tbaa !534
  store i16 %1287, i16* %1228, align 2, !dbg !1367, !tbaa !534
  %1288 = load i16, i16* %140, align 2, !dbg !1366, !tbaa !534
  store i16 %1288, i16* %1227, align 4, !dbg !1367, !tbaa !534
  %1289 = load i16, i16* %139, align 16, !dbg !1366, !tbaa !534
  store i16 %1289, i16* %1226, align 2, !dbg !1367, !tbaa !534
  %1290 = getelementptr inbounds [13 x i16], [13 x i16]* %13, i64 0, i64 12, !dbg !1368
  store i16 0, i16* %1290, align 8, !dbg !1369, !tbaa !534
  br label %1291, !dbg !1361

; <label>:1291:                                   ; preds = %1280, %1275, %1273
  %1292 = phi i16 [ 0, %1273 ], [ %1252, %1275 ], [ %1289, %1280 ], !dbg !1370
  %1293 = phi i16 [ 0, %1273 ], [ %1253, %1275 ], [ %1288, %1280 ], !dbg !1370
  %1294 = phi i16 [ 0, %1273 ], [ %1255, %1275 ], [ %1287, %1280 ], !dbg !1370
  %1295 = phi i16 [ 0, %1273 ], [ %1257, %1275 ], [ %1286, %1280 ], !dbg !1370
  %1296 = phi i16 [ 0, %1273 ], [ %1259, %1275 ], [ %1285, %1280 ], !dbg !1370
  %1297 = phi i16 [ 0, %1273 ], [ %1261, %1275 ], [ %1284, %1280 ], !dbg !1370
  %1298 = phi i16 [ 0, %1273 ], [ %1263, %1275 ], [ %1283, %1280 ], !dbg !1370
  %1299 = phi i16 [ 0, %1273 ], [ %1265, %1275 ], [ %1282, %1280 ], !dbg !1370
  %1300 = phi i16 [ 0, %1273 ], [ %1276, %1275 ], [ %1281, %1280 ], !dbg !1370
  store i16 %1248, i16* %139, align 16, !dbg !1375, !tbaa !534
  store i16 %1249, i16* %140, align 2, !dbg !1375, !tbaa !534
  store i16 0, i16* %141, align 4, !dbg !1375, !tbaa !534
  store i16 %1300, i16* %142, align 2, !dbg !1375, !tbaa !534
  store i16 %1299, i16* %143, align 8, !dbg !1375, !tbaa !534
  store i16 %1298, i16* %144, align 2, !dbg !1375, !tbaa !534
  store i16 %1297, i16* %145, align 4, !dbg !1375, !tbaa !534
  store i16 %1296, i16* %146, align 2, !dbg !1375, !tbaa !534
  store i16 %1295, i16* %147, align 16, !dbg !1375, !tbaa !534
  %1301 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 10, !dbg !1376
  store i16 %1294, i16* %148, align 2, !dbg !1375, !tbaa !534
  %1302 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 11, !dbg !1376
  store i16 %1293, i16* %1301, align 4, !dbg !1375, !tbaa !534
  store i16 %1292, i16* %1302, align 2, !dbg !1375, !tbaa !534
  %1303 = getelementptr inbounds [13 x i16], [13 x i16]* %10, i64 0, i64 12, !dbg !1377
  store i16 0, i16* %1303, align 8, !dbg !1378, !tbaa !534
  call fastcc void @eiremain(i16* nonnull %151, i16* nonnull %139, %struct.LDPARMS* nonnull %15) #6, !dbg !1379
  %1304 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 9, i64 12, !dbg !1380
  %1305 = load i16, i16* %1304, align 4, !dbg !1381, !tbaa !534
  %1306 = icmp eq i16 %1305, 0, !dbg !1383
  br i1 %1306, label %1307, label %1453, !dbg !1384

; <label>:1307:                                   ; preds = %1291
  %1308 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %1309 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %1310 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %1311 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %1312 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %1313 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12
  %1314 = bitcast i16* %141 to <8 x i16>*
  %1315 = bitcast i16* %141 to <8 x i16>*
  %1316 = bitcast i16* %1310 to <8 x i16>*
  br label %1317, !dbg !1384

; <label>:1317:                                   ; preds = %1321, %1307
  %1318 = phi i32 [ %1140, %1307 ], [ %1450, %1321 ]
  %1319 = call fastcc i32 @ecmp(i16* nonnull %139, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !1385
  %1320 = icmp eq i32 %1319, 0, !dbg !1386
  br i1 %1320, label %1453, label %1321, !dbg !1387

; <label>:1321:                                   ; preds = %1317
  %1322 = load i16, i16* %1303, align 8, !dbg !1392, !tbaa !534
  %1323 = lshr i16 %1322, 15, !dbg !1394
  %1324 = shl i16 %1322, 1, !dbg !1395
  store i16 %1324, i16* %1303, align 8, !dbg !1396, !tbaa !534
  %1325 = load i16, i16* %1302, align 2, !dbg !1392, !tbaa !534
  %1326 = lshr i16 %1325, 15, !dbg !1394
  %1327 = shl i16 %1325, 1, !dbg !1395
  %1328 = or i16 %1327, %1323, !dbg !1397
  store i16 %1328, i16* %1302, align 2, !dbg !1396, !tbaa !534
  %1329 = load i16, i16* %1301, align 4, !dbg !1392, !tbaa !534
  %1330 = shl i16 %1329, 1, !dbg !1395
  %1331 = or i16 %1330, %1326, !dbg !1397
  store i16 %1331, i16* %1301, align 4, !dbg !1396, !tbaa !534
  %1332 = load <8 x i16>, <8 x i16>* %1314, align 4, !dbg !1392, !tbaa !534
  %1333 = extractelement <8 x i16> %1332, i32 1, !dbg !1394
  %1334 = insertelement <8 x i16> undef, i16 %1333, i32 0, !dbg !1394
  %1335 = extractelement <8 x i16> %1332, i32 2, !dbg !1394
  %1336 = insertelement <8 x i16> %1334, i16 %1335, i32 1, !dbg !1394
  %1337 = extractelement <8 x i16> %1332, i32 3, !dbg !1394
  %1338 = insertelement <8 x i16> %1336, i16 %1337, i32 2, !dbg !1394
  %1339 = extractelement <8 x i16> %1332, i32 4, !dbg !1394
  %1340 = insertelement <8 x i16> %1338, i16 %1339, i32 3, !dbg !1394
  %1341 = extractelement <8 x i16> %1332, i32 5, !dbg !1394
  %1342 = insertelement <8 x i16> %1340, i16 %1341, i32 4, !dbg !1394
  %1343 = extractelement <8 x i16> %1332, i32 6, !dbg !1394
  %1344 = insertelement <8 x i16> %1342, i16 %1343, i32 5, !dbg !1394
  %1345 = extractelement <8 x i16> %1332, i32 7, !dbg !1394
  %1346 = insertelement <8 x i16> %1344, i16 %1345, i32 6, !dbg !1394
  %1347 = insertelement <8 x i16> %1346, i16 %1329, i32 7, !dbg !1394
  %1348 = lshr <8 x i16> %1347, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !1394
  %1349 = shl <8 x i16> %1332, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1395
  %1350 = or <8 x i16> %1349, %1348, !dbg !1397
  store <8 x i16> %1350, <8 x i16>* %1315, align 4, !dbg !1396, !tbaa !534
  %1351 = load i16, i16* %139, align 16, !dbg !1402, !tbaa !534
  store i16 %1351, i16* %1308, align 16, !dbg !1403, !tbaa !534
  %1352 = load i16, i16* %140, align 2, !dbg !1402, !tbaa !534
  store i16 %1352, i16* %1309, align 2, !dbg !1403, !tbaa !534
  %1353 = lshr i16 %1325, 14, !dbg !1408
  %1354 = and i16 %1353, 1, !dbg !1408
  %1355 = shl i16 %1331, 1, !dbg !1409
  %1356 = or i16 %1355, %1354, !dbg !1410
  %1357 = lshr <8 x i16> %1347, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>, !dbg !1408
  %1358 = and <8 x i16> %1357, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1408
  %1359 = shl <8 x i16> %1350, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1409
  %1360 = or <8 x i16> %1359, %1358, !dbg !1410
  store i16 0, i16* %1313, align 8, !dbg !1415, !tbaa !534
  %1361 = lshr i16 %1325, 13, !dbg !1416
  %1362 = and i16 %1361, 1, !dbg !1416
  %1363 = shl i16 %1328, 2, !dbg !1417
  store i16 %1363, i16* %1312, align 2, !dbg !1415, !tbaa !534
  %1364 = shl i16 %1356, 1, !dbg !1417
  %1365 = or i16 %1364, %1362, !dbg !1418
  store i16 %1365, i16* %1311, align 4, !dbg !1415, !tbaa !534
  %1366 = lshr <8 x i16> %1347, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>, !dbg !1416
  %1367 = and <8 x i16> %1366, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1416
  %1368 = shl <8 x i16> %1360, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1417
  %1369 = or <8 x i16> %1368, %1367, !dbg !1418
  store <8 x i16> %1369, <8 x i16>* %1316, align 4, !dbg !1415, !tbaa !534
  store i16 %1324, i16* %1303, align 8, !dbg !1424, !tbaa !534
  %1370 = zext i16 %1363 to i64, !dbg !1425
  %1371 = zext i16 %1328 to i64, !dbg !1426
  %1372 = add nuw nsw i64 %1370, %1371, !dbg !1427
  %1373 = lshr i64 %1372, 16
  %1374 = trunc i64 %1372 to i16, !dbg !1429
  store i16 %1374, i16* %1302, align 2, !dbg !1424, !tbaa !534
  %1375 = zext i16 %1365 to i64, !dbg !1425
  %1376 = zext i16 %1331 to i64, !dbg !1426
  %1377 = add nuw nsw i64 %1373, %1376, !dbg !1430
  %1378 = add nuw nsw i64 %1377, %1375, !dbg !1427
  %1379 = lshr i64 %1378, 16
  %1380 = and i64 %1379, 1
  %1381 = trunc i64 %1378 to i16, !dbg !1429
  store i16 %1381, i16* %1301, align 4, !dbg !1424, !tbaa !534
  %1382 = extractelement <8 x i16> %1369, i32 7, !dbg !1425
  %1383 = zext i16 %1382 to i64, !dbg !1425
  %1384 = extractelement <8 x i16> %1350, i32 7, !dbg !1426
  %1385 = zext i16 %1384 to i64, !dbg !1426
  %1386 = add nuw nsw i64 %1383, %1385, !dbg !1430
  %1387 = add nuw nsw i64 %1386, %1380, !dbg !1427
  %1388 = lshr i64 %1387, 16
  %1389 = and i64 %1388, 1
  %1390 = trunc i64 %1387 to i16, !dbg !1429
  store i16 %1390, i16* %148, align 2, !dbg !1424, !tbaa !534
  %1391 = extractelement <8 x i16> %1369, i32 6, !dbg !1425
  %1392 = zext i16 %1391 to i64, !dbg !1425
  %1393 = extractelement <8 x i16> %1350, i32 6, !dbg !1426
  %1394 = zext i16 %1393 to i64, !dbg !1426
  %1395 = add nuw nsw i64 %1392, %1394, !dbg !1430
  %1396 = add nuw nsw i64 %1395, %1389, !dbg !1427
  %1397 = lshr i64 %1396, 16
  %1398 = and i64 %1397, 1
  %1399 = trunc i64 %1396 to i16, !dbg !1429
  store i16 %1399, i16* %147, align 16, !dbg !1424, !tbaa !534
  %1400 = extractelement <8 x i16> %1369, i32 5, !dbg !1425
  %1401 = zext i16 %1400 to i64, !dbg !1425
  %1402 = extractelement <8 x i16> %1350, i32 5, !dbg !1426
  %1403 = zext i16 %1402 to i64, !dbg !1426
  %1404 = add nuw nsw i64 %1401, %1403, !dbg !1430
  %1405 = add nuw nsw i64 %1404, %1398, !dbg !1427
  %1406 = lshr i64 %1405, 16
  %1407 = and i64 %1406, 1
  %1408 = trunc i64 %1405 to i16, !dbg !1429
  store i16 %1408, i16* %146, align 2, !dbg !1424, !tbaa !534
  %1409 = extractelement <8 x i16> %1369, i32 4, !dbg !1425
  %1410 = zext i16 %1409 to i64, !dbg !1425
  %1411 = extractelement <8 x i16> %1350, i32 4, !dbg !1426
  %1412 = zext i16 %1411 to i64, !dbg !1426
  %1413 = add nuw nsw i64 %1410, %1412, !dbg !1430
  %1414 = add nuw nsw i64 %1413, %1407, !dbg !1427
  %1415 = lshr i64 %1414, 16
  %1416 = and i64 %1415, 1
  %1417 = trunc i64 %1414 to i16, !dbg !1429
  store i16 %1417, i16* %145, align 4, !dbg !1424, !tbaa !534
  %1418 = extractelement <8 x i16> %1369, i32 3, !dbg !1425
  %1419 = zext i16 %1418 to i64, !dbg !1425
  %1420 = extractelement <8 x i16> %1350, i32 3, !dbg !1426
  %1421 = zext i16 %1420 to i64, !dbg !1426
  %1422 = add nuw nsw i64 %1419, %1421, !dbg !1430
  %1423 = add nuw nsw i64 %1422, %1416, !dbg !1427
  %1424 = lshr i64 %1423, 16
  %1425 = and i64 %1424, 1
  %1426 = trunc i64 %1423 to i16, !dbg !1429
  store i16 %1426, i16* %144, align 2, !dbg !1424, !tbaa !534
  %1427 = extractelement <8 x i16> %1369, i32 2, !dbg !1425
  %1428 = zext i16 %1427 to i64, !dbg !1425
  %1429 = extractelement <8 x i16> %1350, i32 2, !dbg !1426
  %1430 = zext i16 %1429 to i64, !dbg !1426
  %1431 = add nuw nsw i64 %1428, %1430, !dbg !1430
  %1432 = add nuw nsw i64 %1431, %1425, !dbg !1427
  %1433 = lshr i64 %1432, 16
  %1434 = and i64 %1433, 1
  %1435 = trunc i64 %1432 to i16, !dbg !1429
  store i16 %1435, i16* %143, align 8, !dbg !1424, !tbaa !534
  %1436 = extractelement <8 x i16> %1369, i32 1, !dbg !1425
  %1437 = zext i16 %1436 to i64, !dbg !1425
  %1438 = extractelement <8 x i16> %1350, i32 1, !dbg !1426
  %1439 = zext i16 %1438 to i64, !dbg !1426
  %1440 = add nuw nsw i64 %1437, %1439, !dbg !1430
  %1441 = add nuw nsw i64 %1440, %1434, !dbg !1427
  %1442 = lshr i64 %1441, 16
  %1443 = trunc i64 %1441 to i16, !dbg !1429
  store i16 %1443, i16* %142, align 2, !dbg !1424, !tbaa !534
  %1444 = trunc i64 %1442 to i16, !dbg !1429
  %1445 = and i16 %1444, 1, !dbg !1429
  %1446 = extractelement <8 x i16> %1350, i32 0, !dbg !1429
  %1447 = extractelement <8 x i16> %1369, i32 0, !dbg !1429
  %1448 = add i16 %1447, %1446, !dbg !1429
  %1449 = add i16 %1448, %1445, !dbg !1429
  store i16 %1449, i16* %141, align 4, !dbg !1424, !tbaa !534
  call fastcc void @eiremain(i16* nonnull %151, i16* nonnull %139, %struct.LDPARMS* nonnull %15) #6, !dbg !1431
  %1450 = add nsw i32 %1318, -1, !dbg !1432
  %1451 = load i16, i16* %1304, align 4, !dbg !1381, !tbaa !534
  %1452 = icmp eq i16 %1451, 0, !dbg !1383
  br i1 %1452, label %1317, label %1453, !dbg !1384, !llvm.loop !1433

; <label>:1453:                                   ; preds = %1321, %1317, %1291
  %1454 = phi i16 [ %1305, %1291 ], [ %1451, %1321 ], [ 0, %1317 ]
  %1455 = phi i32 [ %1140, %1291 ], [ %1450, %1321 ], [ %1318, %1317 ], !dbg !1381
  %1456 = icmp eq i16 %150, 0, !dbg !1437
  %1457 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 1, !dbg !1439
  %1458 = select i1 %1456, i8 32, i8 45
  store i8 %1458, i8* %20, align 16, !dbg !1439, !tbaa !478
  %1459 = select i1 %83, i32 %1455, i32 0, !dbg !1440
  %1460 = add nsw i32 %1459, %90, !dbg !1440
  %1461 = icmp slt i32 %1460, 42, !dbg !1441
  %1462 = select i1 %1461, i32 %1460, i32 42, !dbg !1441
  %1463 = icmp eq i16 %1454, 10, !dbg !1442
  br i1 %1463, label %1464, label %1475, !dbg !1444

; <label>:1464:                                   ; preds = %1453
  %1465 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 2, !dbg !1445
  store i8 49, i8* %1457, align 1, !dbg !1447, !tbaa !478
  %1466 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 3, !dbg !1448
  store i8 46, i8* %1465, align 2, !dbg !1449, !tbaa !478
  %1467 = icmp sgt i32 %1460, 0, !dbg !1450
  br i1 %1467, label %1468, label %1472, !dbg !1452

; <label>:1468:                                   ; preds = %1464
  %1469 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 4, !dbg !1453
  store i8 48, i8* %1466, align 1, !dbg !1455, !tbaa !478
  %1470 = add nsw i32 %1462, -1, !dbg !1456
  %1471 = add nsw i32 %1455, 1, !dbg !1457
  br label %1480, !dbg !1458

; <label>:1472:                                   ; preds = %1464
  %1473 = add nsw i32 %1455, 1, !dbg !1457
  %1474 = icmp slt i32 %1462, 0, !dbg !1459
  br i1 %1474, label %1728, label %1485, !dbg !1458

; <label>:1475:                                   ; preds = %1453
  %1476 = trunc i16 %1454 to i8, !dbg !1461
  %1477 = add i8 %1476, 48, !dbg !1461
  %1478 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 2, !dbg !1463
  store i8 %1477, i8* %1457, align 1, !dbg !1464, !tbaa !478
  %1479 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 3, !dbg !1465
  store i8 46, i8* %1478, align 2, !dbg !1466, !tbaa !478
  br label %1480

; <label>:1480:                                   ; preds = %1475, %1468
  %1481 = phi i32 [ %1455, %1475 ], [ %1471, %1468 ], !dbg !572
  %1482 = phi i32 [ %1462, %1475 ], [ %1470, %1468 ], !dbg !1467
  %1483 = phi i8* [ %1479, %1475 ], [ %1469, %1468 ], !dbg !1469
  %1484 = icmp slt i32 %1482, 0, !dbg !1470
  br i1 %1484, label %1640, label %1485, !dbg !1473

; <label>:1485:                                   ; preds = %1480, %1472
  %1486 = phi i8* [ %1483, %1480 ], [ %1466, %1472 ]
  %1487 = phi i32 [ %1482, %1480 ], [ 0, %1472 ]
  %1488 = phi i32 [ %1481, %1480 ], [ %1473, %1472 ]
  %1489 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 0
  %1490 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 1
  %1491 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 2
  %1492 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 10
  %1493 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 11
  %1494 = getelementptr inbounds [13 x i16], [13 x i16]* %12, i64 0, i64 12
  %1495 = zext i32 %1487 to i64, !dbg !1473
  %1496 = bitcast i16* %141 to <8 x i16>*
  %1497 = bitcast i16* %141 to <8 x i16>*
  %1498 = bitcast i16* %1491 to <8 x i16>*
  br label %1499, !dbg !1473

; <label>:1499:                                   ; preds = %1499, %1485
  %1500 = phi i8* [ %1486, %1485 ], [ %1633, %1499 ]
  %1501 = phi i32 [ 0, %1485 ], [ %1634, %1499 ]
  %1502 = load i16, i16* %1303, align 8, !dbg !1479, !tbaa !534
  %1503 = lshr i16 %1502, 15, !dbg !1480
  %1504 = shl i16 %1502, 1, !dbg !1481
  store i16 %1504, i16* %1303, align 8, !dbg !1482, !tbaa !534
  %1505 = load i16, i16* %1302, align 2, !dbg !1479, !tbaa !534
  %1506 = lshr i16 %1505, 15, !dbg !1480
  %1507 = shl i16 %1505, 1, !dbg !1481
  %1508 = or i16 %1507, %1503, !dbg !1483
  store i16 %1508, i16* %1302, align 2, !dbg !1482, !tbaa !534
  %1509 = load i16, i16* %1301, align 4, !dbg !1479, !tbaa !534
  %1510 = shl i16 %1509, 1, !dbg !1481
  %1511 = or i16 %1510, %1506, !dbg !1483
  store i16 %1511, i16* %1301, align 4, !dbg !1482, !tbaa !534
  %1512 = load <8 x i16>, <8 x i16>* %1496, align 4, !dbg !1479, !tbaa !534
  %1513 = extractelement <8 x i16> %1512, i32 1, !dbg !1480
  %1514 = insertelement <8 x i16> undef, i16 %1513, i32 0, !dbg !1480
  %1515 = extractelement <8 x i16> %1512, i32 2, !dbg !1480
  %1516 = insertelement <8 x i16> %1514, i16 %1515, i32 1, !dbg !1480
  %1517 = extractelement <8 x i16> %1512, i32 3, !dbg !1480
  %1518 = insertelement <8 x i16> %1516, i16 %1517, i32 2, !dbg !1480
  %1519 = extractelement <8 x i16> %1512, i32 4, !dbg !1480
  %1520 = insertelement <8 x i16> %1518, i16 %1519, i32 3, !dbg !1480
  %1521 = extractelement <8 x i16> %1512, i32 5, !dbg !1480
  %1522 = insertelement <8 x i16> %1520, i16 %1521, i32 4, !dbg !1480
  %1523 = extractelement <8 x i16> %1512, i32 6, !dbg !1480
  %1524 = insertelement <8 x i16> %1522, i16 %1523, i32 5, !dbg !1480
  %1525 = extractelement <8 x i16> %1512, i32 7, !dbg !1480
  %1526 = insertelement <8 x i16> %1524, i16 %1525, i32 6, !dbg !1480
  %1527 = insertelement <8 x i16> %1526, i16 %1509, i32 7, !dbg !1480
  %1528 = lshr <8 x i16> %1527, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !1480
  %1529 = shl <8 x i16> %1512, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1481
  %1530 = or <8 x i16> %1529, %1528, !dbg !1483
  store <8 x i16> %1530, <8 x i16>* %1497, align 4, !dbg !1482, !tbaa !534
  %1531 = load i16, i16* %139, align 16, !dbg !1488, !tbaa !534
  store i16 %1531, i16* %1489, align 16, !dbg !1489, !tbaa !534
  %1532 = load i16, i16* %140, align 2, !dbg !1488, !tbaa !534
  store i16 %1532, i16* %1490, align 2, !dbg !1489, !tbaa !534
  %1533 = lshr i16 %1505, 14, !dbg !1494
  %1534 = and i16 %1533, 1, !dbg !1494
  %1535 = shl i16 %1511, 1, !dbg !1495
  %1536 = or i16 %1535, %1534, !dbg !1496
  %1537 = lshr <8 x i16> %1527, <i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14>, !dbg !1494
  %1538 = and <8 x i16> %1537, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1494
  %1539 = shl <8 x i16> %1530, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1495
  %1540 = or <8 x i16> %1539, %1538, !dbg !1496
  store i16 0, i16* %1494, align 8, !dbg !1501, !tbaa !534
  %1541 = lshr i16 %1505, 13, !dbg !1502
  %1542 = and i16 %1541, 1, !dbg !1502
  %1543 = shl i16 %1508, 2, !dbg !1503
  store i16 %1543, i16* %1493, align 2, !dbg !1501, !tbaa !534
  %1544 = shl i16 %1536, 1, !dbg !1503
  %1545 = or i16 %1544, %1542, !dbg !1504
  store i16 %1545, i16* %1492, align 4, !dbg !1501, !tbaa !534
  %1546 = lshr <8 x i16> %1527, <i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13, i16 13>, !dbg !1502
  %1547 = and <8 x i16> %1546, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1502
  %1548 = shl <8 x i16> %1540, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !1503
  %1549 = or <8 x i16> %1548, %1547, !dbg !1504
  store <8 x i16> %1549, <8 x i16>* %1498, align 4, !dbg !1501, !tbaa !534
  store i16 %1504, i16* %1303, align 8, !dbg !1510, !tbaa !534
  %1550 = zext i16 %1543 to i64, !dbg !1511
  %1551 = zext i16 %1508 to i64, !dbg !1512
  %1552 = add nuw nsw i64 %1550, %1551, !dbg !1513
  %1553 = lshr i64 %1552, 16
  %1554 = trunc i64 %1552 to i16, !dbg !1515
  store i16 %1554, i16* %1302, align 2, !dbg !1510, !tbaa !534
  %1555 = zext i16 %1545 to i64, !dbg !1511
  %1556 = zext i16 %1511 to i64, !dbg !1512
  %1557 = add nuw nsw i64 %1553, %1556, !dbg !1516
  %1558 = add nuw nsw i64 %1557, %1555, !dbg !1513
  %1559 = lshr i64 %1558, 16
  %1560 = and i64 %1559, 1
  %1561 = trunc i64 %1558 to i16, !dbg !1515
  store i16 %1561, i16* %1301, align 4, !dbg !1510, !tbaa !534
  %1562 = extractelement <8 x i16> %1549, i32 7, !dbg !1511
  %1563 = zext i16 %1562 to i64, !dbg !1511
  %1564 = extractelement <8 x i16> %1530, i32 7, !dbg !1512
  %1565 = zext i16 %1564 to i64, !dbg !1512
  %1566 = add nuw nsw i64 %1563, %1565, !dbg !1516
  %1567 = add nuw nsw i64 %1566, %1560, !dbg !1513
  %1568 = lshr i64 %1567, 16
  %1569 = and i64 %1568, 1
  %1570 = trunc i64 %1567 to i16, !dbg !1515
  store i16 %1570, i16* %148, align 2, !dbg !1510, !tbaa !534
  %1571 = extractelement <8 x i16> %1549, i32 6, !dbg !1511
  %1572 = zext i16 %1571 to i64, !dbg !1511
  %1573 = extractelement <8 x i16> %1530, i32 6, !dbg !1512
  %1574 = zext i16 %1573 to i64, !dbg !1512
  %1575 = add nuw nsw i64 %1572, %1574, !dbg !1516
  %1576 = add nuw nsw i64 %1575, %1569, !dbg !1513
  %1577 = lshr i64 %1576, 16
  %1578 = and i64 %1577, 1
  %1579 = trunc i64 %1576 to i16, !dbg !1515
  store i16 %1579, i16* %147, align 16, !dbg !1510, !tbaa !534
  %1580 = extractelement <8 x i16> %1549, i32 5, !dbg !1511
  %1581 = zext i16 %1580 to i64, !dbg !1511
  %1582 = extractelement <8 x i16> %1530, i32 5, !dbg !1512
  %1583 = zext i16 %1582 to i64, !dbg !1512
  %1584 = add nuw nsw i64 %1581, %1583, !dbg !1516
  %1585 = add nuw nsw i64 %1584, %1578, !dbg !1513
  %1586 = lshr i64 %1585, 16
  %1587 = and i64 %1586, 1
  %1588 = trunc i64 %1585 to i16, !dbg !1515
  store i16 %1588, i16* %146, align 2, !dbg !1510, !tbaa !534
  %1589 = extractelement <8 x i16> %1549, i32 4, !dbg !1511
  %1590 = zext i16 %1589 to i64, !dbg !1511
  %1591 = extractelement <8 x i16> %1530, i32 4, !dbg !1512
  %1592 = zext i16 %1591 to i64, !dbg !1512
  %1593 = add nuw nsw i64 %1590, %1592, !dbg !1516
  %1594 = add nuw nsw i64 %1593, %1587, !dbg !1513
  %1595 = lshr i64 %1594, 16
  %1596 = and i64 %1595, 1
  %1597 = trunc i64 %1594 to i16, !dbg !1515
  store i16 %1597, i16* %145, align 4, !dbg !1510, !tbaa !534
  %1598 = extractelement <8 x i16> %1549, i32 3, !dbg !1511
  %1599 = zext i16 %1598 to i64, !dbg !1511
  %1600 = extractelement <8 x i16> %1530, i32 3, !dbg !1512
  %1601 = zext i16 %1600 to i64, !dbg !1512
  %1602 = add nuw nsw i64 %1599, %1601, !dbg !1516
  %1603 = add nuw nsw i64 %1602, %1596, !dbg !1513
  %1604 = lshr i64 %1603, 16
  %1605 = and i64 %1604, 1
  %1606 = trunc i64 %1603 to i16, !dbg !1515
  store i16 %1606, i16* %144, align 2, !dbg !1510, !tbaa !534
  %1607 = extractelement <8 x i16> %1549, i32 2, !dbg !1511
  %1608 = zext i16 %1607 to i64, !dbg !1511
  %1609 = extractelement <8 x i16> %1530, i32 2, !dbg !1512
  %1610 = zext i16 %1609 to i64, !dbg !1512
  %1611 = add nuw nsw i64 %1608, %1610, !dbg !1516
  %1612 = add nuw nsw i64 %1611, %1605, !dbg !1513
  %1613 = lshr i64 %1612, 16
  %1614 = and i64 %1613, 1
  %1615 = trunc i64 %1612 to i16, !dbg !1515
  store i16 %1615, i16* %143, align 8, !dbg !1510, !tbaa !534
  %1616 = extractelement <8 x i16> %1549, i32 1, !dbg !1511
  %1617 = zext i16 %1616 to i64, !dbg !1511
  %1618 = extractelement <8 x i16> %1530, i32 1, !dbg !1512
  %1619 = zext i16 %1618 to i64, !dbg !1512
  %1620 = add nuw nsw i64 %1617, %1619, !dbg !1516
  %1621 = add nuw nsw i64 %1620, %1614, !dbg !1513
  %1622 = lshr i64 %1621, 16
  %1623 = trunc i64 %1621 to i16, !dbg !1515
  store i16 %1623, i16* %142, align 2, !dbg !1510, !tbaa !534
  %1624 = trunc i64 %1622 to i16, !dbg !1515
  %1625 = and i16 %1624, 1, !dbg !1515
  %1626 = extractelement <8 x i16> %1530, i32 0, !dbg !1515
  %1627 = extractelement <8 x i16> %1549, i32 0, !dbg !1515
  %1628 = add i16 %1627, %1626, !dbg !1515
  %1629 = add i16 %1628, %1625, !dbg !1515
  store i16 %1629, i16* %141, align 4, !dbg !1510, !tbaa !534
  call fastcc void @eiremain(i16* nonnull %151, i16* nonnull %139, %struct.LDPARMS* nonnull %15) #6, !dbg !1517
  %1630 = load i16, i16* %1304, align 4, !dbg !1518, !tbaa !534
  %1631 = trunc i16 %1630 to i8, !dbg !1519
  %1632 = add i8 %1631, 48, !dbg !1519
  %1633 = getelementptr inbounds i8, i8* %1500, i64 1, !dbg !1520
  store i8 %1632, i8* %1500, align 1, !dbg !1521, !tbaa !478
  %1634 = add nuw nsw i32 %1501, 1, !dbg !1522
  %1635 = icmp eq i32 %1501, %1487, !dbg !1470
  br i1 %1635, label %1636, label %1499, !dbg !1473, !llvm.loop !1523

; <label>:1636:                                   ; preds = %1499
  %1637 = add nuw nsw i64 %1495, 1, !dbg !1473
  %1638 = getelementptr i8, i8* %1486, i64 %1637, !dbg !1473
  %1639 = load i16, i16* %1304, align 4, !dbg !1526, !tbaa !534
  br label %1640, !dbg !1526

; <label>:1640:                                   ; preds = %1636, %1480
  %1641 = phi i16 [ %1454, %1480 ], [ %1639, %1636 ], !dbg !1526
  %1642 = phi i1 [ true, %1480 ], [ false, %1636 ]
  %1643 = phi i32 [ %1481, %1480 ], [ %1488, %1636 ]
  %1644 = phi i8* [ %1483, %1480 ], [ %1638, %1636 ], !dbg !1527
  %1645 = getelementptr inbounds i8, i8* %1644, i64 -1, !dbg !1528
  %1646 = icmp ugt i16 %1641, 4, !dbg !1530
  br i1 %1646, label %1647, label %1728, !dbg !1532

; <label>:1647:                                   ; preds = %1640
  %1648 = icmp eq i16 %1641, 5, !dbg !1533
  br i1 %1648, label %1649, label %1699, !dbg !1536

; <label>:1649:                                   ; preds = %1647
  %1650 = load i16, i16* %139, align 16, !dbg !1544, !tbaa !534
  %1651 = icmp eq i16 %1650, 0, !dbg !1546
  %1652 = load i16, i16* %140, align 2, !dbg !1547, !tbaa !534
  %1653 = or i16 %1652, -32768, !dbg !1548
  %1654 = select i1 %1651, i16 %1652, i16 %1653, !dbg !1549
  store i16 %1654, i16* %161, align 2, !dbg !1547, !tbaa !534
  %1655 = icmp eq i16 %1652, 32767, !dbg !1550
  %1656 = load i16, i16* %142, align 2, !dbg !1551, !tbaa !534
  br i1 %1655, label %1657, label %1681, !dbg !1552

; <label>:1657:                                   ; preds = %1649
  %1658 = load i16, i16* %143, align 8, !dbg !1556
  %1659 = or i16 %1658, %1656, !dbg !1557
  %1660 = load i16, i16* %144, align 2, !dbg !1556
  %1661 = or i16 %1659, %1660, !dbg !1557
  %1662 = load i16, i16* %145, align 4, !dbg !1556
  %1663 = or i16 %1661, %1662, !dbg !1557
  %1664 = load i16, i16* %146, align 2, !dbg !1556
  %1665 = or i16 %1663, %1664, !dbg !1557
  %1666 = load i16, i16* %147, align 16, !dbg !1556
  %1667 = or i16 %1665, %1666, !dbg !1557
  %1668 = load i16, i16* %148, align 2, !dbg !1556
  %1669 = or i16 %1667, %1668, !dbg !1557
  %1670 = load i16, i16* %1301, align 4, !dbg !1556
  %1671 = or i16 %1669, %1670, !dbg !1557
  %1672 = load i16, i16* %1302, align 2, !dbg !1556
  %1673 = or i16 %1671, %1672, !dbg !1557
  %1674 = load i16, i16* %1303, align 8, !dbg !1556
  %1675 = or i16 %1673, %1674, !dbg !1557
  %1676 = icmp eq i16 %1675, 0, !dbg !1557
  %1677 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !1551
  store <8 x i16> zeroinitializer, <8 x i16>* %1677, align 16, !dbg !1551, !tbaa !534
  br i1 %1676, label %1679, label %1678, !dbg !1557

; <label>:1678:                                   ; preds = %1657
  store i16 -16384, i16* %159, align 16, !dbg !1562, !tbaa !534
  store i16 32767, i16* %161, align 2, !dbg !1563, !tbaa !534
  br label %1686, !dbg !1564

; <label>:1679:                                   ; preds = %1657
  store i16 0, i16* %159, align 16, !dbg !1569, !tbaa !534
  %1680 = or i16 %1654, 32767, !dbg !1570
  store i16 %1680, i16* %161, align 2, !dbg !1570, !tbaa !534
  br label %1686, !dbg !1571

; <label>:1681:                                   ; preds = %1649
  store i16 %1656, i16* %159, align 16, !dbg !1572, !tbaa !534
  %1682 = bitcast i16* %143 to <8 x i16>*, !dbg !1573
  %1683 = load <8 x i16>, <8 x i16>* %1682, align 8, !dbg !1573, !tbaa !534
  %1684 = shufflevector <8 x i16> %1683, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !1573
  %1685 = bitcast [13 x i16]* %11 to <8 x i16>*, !dbg !1572
  store <8 x i16> %1684, <8 x i16>* %1685, align 16, !dbg !1572, !tbaa !534
  br label %1686, !dbg !1574

; <label>:1686:                                   ; preds = %1681, %1679, %1678
  %1687 = call fastcc i32 @ecmp(i16* nonnull %151, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #6, !dbg !1575
  %1688 = icmp eq i32 %1687, 0, !dbg !1577
  br i1 %1688, label %1689, label %1699, !dbg !1578

; <label>:1689:                                   ; preds = %1686
  br i1 %1642, label %1728, label %1690, !dbg !1579

; <label>:1690:                                   ; preds = %1689
  %1691 = getelementptr inbounds i8, i8* %1644, i64 -2, !dbg !1581
  %1692 = load i8, i8* %1691, align 1, !dbg !1582, !tbaa !478
  %1693 = icmp eq i8 %1692, 46, !dbg !1583
  %1694 = sext i1 %1693 to i64, !dbg !1584
  %1695 = getelementptr inbounds i8, i8* %1691, i64 %1694, !dbg !1584
  %1696 = load i8, i8* %1695, align 1, !dbg !1585, !tbaa !478
  %1697 = and i8 %1696, 1, !dbg !1586
  %1698 = icmp eq i8 %1697, 0, !dbg !1587
  br i1 %1698, label %1728, label %1703, !dbg !1588

; <label>:1699:                                   ; preds = %1686, %1647
  %1700 = getelementptr inbounds i8, i8* %1644, i64 -2, !dbg !1589
  br i1 %1642, label %1708, label %1701, !dbg !1590

; <label>:1701:                                   ; preds = %1699
  %1702 = load i8, i8* %1700, align 1, !dbg !1591, !tbaa !478
  br label %1703, !dbg !1590

; <label>:1703:                                   ; preds = %1701, %1690
  %1704 = phi i8 [ %1702, %1701 ], [ %1692, %1690 ], !dbg !1591
  %1705 = phi i8* [ %1700, %1701 ], [ %1691, %1690 ]
  %1706 = and i8 %1704, 127, !dbg !1592
  %1707 = icmp eq i8 %1706, 46, !dbg !1593
  br i1 %1707, label %1710, label %1718, !dbg !1596

; <label>:1708:                                   ; preds = %1699
  store i8 49, i8* %1700, align 1, !dbg !1597, !tbaa !478
  %1709 = add nsw i32 %1643, 1, !dbg !1599
  br label %1728, !dbg !1600

; <label>:1710:                                   ; preds = %1723, %1703
  %1711 = phi i8* [ %1645, %1703 ], [ %1720, %1723 ]
  %1712 = getelementptr inbounds i8, i8* %1711, i64 -2, !dbg !1601
  %1713 = load i8, i8* %1712, align 1, !dbg !1603, !tbaa !478
  %1714 = add i8 %1713, 1, !dbg !1604
  store i8 %1714, i8* %1712, align 1, !dbg !1605, !tbaa !478
  %1715 = icmp sgt i8 %1713, 56, !dbg !1606
  br i1 %1715, label %1716, label %1728, !dbg !1608

; <label>:1716:                                   ; preds = %1710
  %1717 = add nsw i32 %1643, 1, !dbg !1609
  store i8 49, i8* %1712, align 1, !dbg !1611, !tbaa !478
  br label %1728, !dbg !1612

; <label>:1718:                                   ; preds = %1703, %1723
  %1719 = phi i8 [ %1726, %1723 ], [ %1706, %1703 ]
  %1720 = phi i8* [ %1724, %1723 ], [ %1705, %1703 ]
  %1721 = add nuw i8 %1719, 1, !dbg !1613
  store i8 %1721, i8* %1720, align 1, !dbg !1614, !tbaa !478
  %1722 = icmp ugt i8 %1719, 56, !dbg !1615
  br i1 %1722, label %1723, label %1728, !dbg !1617

; <label>:1723:                                   ; preds = %1718
  store i8 48, i8* %1720, align 1, !dbg !1618, !tbaa !478
  %1724 = getelementptr inbounds i8, i8* %1720, i64 -1, !dbg !1589
  %1725 = load i8, i8* %1724, align 1, !dbg !1591, !tbaa !478
  %1726 = and i8 %1725, 127, !dbg !1592
  %1727 = icmp eq i8 %1726, 46, !dbg !1593
  br i1 %1727, label %1710, label %1718, !dbg !1596

; <label>:1728:                                   ; preds = %1718, %1716, %1710, %1708, %1690, %1689, %1640, %1472
  %1729 = phi i32 [ %1709, %1708 ], [ %1717, %1716 ], [ %1643, %1710 ], [ %1643, %1689 ], [ %1643, %1690 ], [ %1643, %1640 ], [ %1473, %1472 ], [ %1643, %1718 ], !dbg !1620
  %1730 = phi i8* [ %1645, %1708 ], [ %1645, %1716 ], [ %1645, %1710 ], [ %1645, %1689 ], [ %1645, %1690 ], [ %1645, %1640 ], [ %1466, %1472 ], [ %1645, %1718 ], !dbg !572
  %1731 = call i32 (i8*, i8*, ...) @sprintf(i8* %1730, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %1729) #6, !dbg !1621
  br label %1766, !dbg !1621

; <label>:1732:                                   ; preds = %268, %344, %759
  %1733 = phi i16 [ %756, %759 ], [ %343, %344 ], [ %272, %268 ]
  %1734 = phi i16 [ %761, %759 ], [ %349, %344 ], [ %273, %268 ]
  %1735 = load i16, i16* %153, align 4, !dbg !1059, !tbaa !534
  %1736 = load i16, i16* %212, align 4, !dbg !1061, !tbaa !534
  %1737 = icmp eq i16 %1735, %1736, !dbg !1063
  br i1 %1737, label %1738, label %763, !dbg !1064

; <label>:1738:                                   ; preds = %1732
  %1739 = load i16, i16* %154, align 2, !dbg !1059, !tbaa !534
  %1740 = load i16, i16* %213, align 2, !dbg !1061, !tbaa !534
  %1741 = icmp eq i16 %1739, %1740, !dbg !1063
  br i1 %1741, label %1742, label %763, !dbg !1064

; <label>:1742:                                   ; preds = %1738
  %1743 = load i16, i16* %155, align 8, !dbg !1059, !tbaa !534
  %1744 = load i16, i16* %214, align 8, !dbg !1061, !tbaa !534
  %1745 = icmp eq i16 %1743, %1744, !dbg !1063
  br i1 %1745, label %1746, label %763, !dbg !1064

; <label>:1746:                                   ; preds = %1742
  %1747 = load i16, i16* %156, align 2, !dbg !1059, !tbaa !534
  %1748 = load i16, i16* %215, align 2, !dbg !1061, !tbaa !534
  %1749 = icmp eq i16 %1747, %1748, !dbg !1063
  br i1 %1749, label %1750, label %763, !dbg !1064

; <label>:1750:                                   ; preds = %1746
  %1751 = load i16, i16* %157, align 4, !dbg !1059, !tbaa !534
  %1752 = load i16, i16* %216, align 4, !dbg !1061, !tbaa !534
  %1753 = icmp eq i16 %1751, %1752, !dbg !1063
  br i1 %1753, label %1754, label %763, !dbg !1064

; <label>:1754:                                   ; preds = %1750
  %1755 = load i16, i16* %158, align 2, !dbg !1059, !tbaa !534
  %1756 = load i16, i16* %217, align 2, !dbg !1061, !tbaa !534
  %1757 = icmp eq i16 %1755, %1756, !dbg !1063
  br i1 %1757, label %1758, label %763, !dbg !1064

; <label>:1758:                                   ; preds = %1754
  %1759 = load i16, i16* %159, align 16, !dbg !1059, !tbaa !534
  %1760 = load i16, i16* %218, align 16, !dbg !1061, !tbaa !534
  %1761 = icmp eq i16 %1759, %1760, !dbg !1063
  br i1 %1761, label %1762, label %763, !dbg !1064

; <label>:1762:                                   ; preds = %1758
  store i16 %1733, i16* %199, align 16, !dbg !1626, !tbaa !534
  store i16 %1734, i16* %200, align 2, !dbg !1626, !tbaa !534
  store i16 %1735, i16* %201, align 4, !dbg !1626, !tbaa !534
  store i16 %1739, i16* %202, align 2, !dbg !1626, !tbaa !534
  store i16 %1743, i16* %203, align 8, !dbg !1626, !tbaa !534
  store i16 %1747, i16* %204, align 2, !dbg !1626, !tbaa !534
  store i16 %1751, i16* %205, align 4, !dbg !1626, !tbaa !534
  store i16 %1755, i16* %206, align 2, !dbg !1626, !tbaa !534
  store i16 %1759, i16* %207, align 16, !dbg !1626, !tbaa !534
  %1763 = load i16, i16* %161, align 2, !dbg !1627, !tbaa !534
  store i16 %1763, i16* %208, align 2, !dbg !1626, !tbaa !534
  %1764 = zext i16 %261 to i32, !dbg !1628
  %1765 = add nsw i32 %259, %1764, !dbg !1629
  br label %763, !dbg !1630

; <label>:1766:                                   ; preds = %135, %184, %186, %191, %1728
  %1767 = phi i32 [ 9999, %135 ], [ 9999, %191 ], [ %1729, %1728 ], [ 9999, %186 ], [ 9999, %184 ], !dbg !1620
  store i32 %95, i32* %24, align 4, !dbg !1631, !tbaa !490
  %1768 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %15, i64 0, i32 4, !dbg !1632
  store i32 %1767, i32* %1768, align 4, !dbg !1633, !tbaa !1634
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %94) #5, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %93) #5, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %92) #5, !dbg !1635
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %91) #5, !dbg !1635
  %1769 = load i16, i16* %37, align 2, !dbg !1640, !tbaa !534
  %1770 = and i16 %1769, 32767, !dbg !1641
  %1771 = icmp eq i16 %1770, 32767, !dbg !1642
  br i1 %1771, label %1772, label %1836, !dbg !1643

; <label>:1772:                                   ; preds = %1766
  %1773 = load i16, i16* %36, align 16, !dbg !1647, !tbaa !534
  %1774 = icmp eq i16 %1773, 0, !dbg !1648
  br i1 %1774, label %1775, label %1835, !dbg !1649

; <label>:1775:                                   ; preds = %1772
  %1776 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 1, !dbg !1650
  %1777 = load i16, i16* %1776, align 2, !dbg !1647, !tbaa !534
  %1778 = icmp eq i16 %1777, 0, !dbg !1648
  br i1 %1778, label %1779, label %1835, !dbg !1649

; <label>:1779:                                   ; preds = %1775
  %1780 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 2, !dbg !1650
  %1781 = load i16, i16* %1780, align 4, !dbg !1647, !tbaa !534
  %1782 = icmp eq i16 %1781, 0, !dbg !1648
  br i1 %1782, label %1783, label %1807, !dbg !1649

; <label>:1783:                                   ; preds = %1779
  %1784 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 3, !dbg !1650
  %1785 = load i16, i16* %1784, align 2, !dbg !1647, !tbaa !534
  %1786 = icmp eq i16 %1785, 0, !dbg !1648
  br i1 %1786, label %1787, label %1807, !dbg !1649

; <label>:1787:                                   ; preds = %1783
  %1788 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 4, !dbg !1650
  %1789 = load i16, i16* %1788, align 8, !dbg !1647, !tbaa !534
  %1790 = icmp eq i16 %1789, 0, !dbg !1648
  br i1 %1790, label %1791, label %1807, !dbg !1649

; <label>:1791:                                   ; preds = %1787
  %1792 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 5, !dbg !1650
  %1793 = load i16, i16* %1792, align 2, !dbg !1647, !tbaa !534
  %1794 = icmp eq i16 %1793, 0, !dbg !1648
  br i1 %1794, label %1795, label %1807, !dbg !1649

; <label>:1795:                                   ; preds = %1791
  %1796 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 6, !dbg !1650
  %1797 = load i16, i16* %1796, align 4, !dbg !1647, !tbaa !534
  %1798 = icmp eq i16 %1797, 0, !dbg !1648
  br i1 %1798, label %1799, label %1807, !dbg !1649

; <label>:1799:                                   ; preds = %1795
  %1800 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 7, !dbg !1650
  %1801 = load i16, i16* %1800, align 2, !dbg !1647, !tbaa !534
  %1802 = icmp eq i16 %1801, 0, !dbg !1648
  br i1 %1802, label %1803, label %1807, !dbg !1649

; <label>:1803:                                   ; preds = %1799
  %1804 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 8, !dbg !1650
  %1805 = load i16, i16* %1804, align 16, !dbg !1647, !tbaa !534
  %1806 = icmp eq i16 %1805, 0, !dbg !1648
  br i1 %1806, label %1835, label %1807, !dbg !1654

; <label>:1807:                                   ; preds = %1799, %1795, %1791, %1787, %1783, %1779, %1803
  %1808 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 2, !dbg !1655
  %1809 = load i16, i16* %1808, align 4, !dbg !1656, !tbaa !534
  %1810 = icmp eq i16 %1809, 0, !dbg !1657
  br i1 %1810, label %1811, label %1835, !dbg !1658

; <label>:1811:                                   ; preds = %1807
  %1812 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 3, !dbg !1655
  %1813 = load i16, i16* %1812, align 2, !dbg !1656, !tbaa !534
  %1814 = icmp eq i16 %1813, 0, !dbg !1657
  br i1 %1814, label %1815, label %1835, !dbg !1658

; <label>:1815:                                   ; preds = %1811
  %1816 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 4, !dbg !1655
  %1817 = load i16, i16* %1816, align 8, !dbg !1656, !tbaa !534
  %1818 = icmp eq i16 %1817, 0, !dbg !1657
  br i1 %1818, label %1819, label %1835, !dbg !1658

; <label>:1819:                                   ; preds = %1815
  %1820 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 5, !dbg !1655
  %1821 = load i16, i16* %1820, align 2, !dbg !1656, !tbaa !534
  %1822 = icmp eq i16 %1821, 0, !dbg !1657
  br i1 %1822, label %1823, label %1835, !dbg !1658

; <label>:1823:                                   ; preds = %1819
  %1824 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 6, !dbg !1655
  %1825 = load i16, i16* %1824, align 4, !dbg !1656, !tbaa !534
  %1826 = icmp eq i16 %1825, 0, !dbg !1657
  br i1 %1826, label %1827, label %1835, !dbg !1658

; <label>:1827:                                   ; preds = %1823
  %1828 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 7, !dbg !1655
  %1829 = load i16, i16* %1828, align 2, !dbg !1656, !tbaa !534
  %1830 = icmp eq i16 %1829, 0, !dbg !1657
  br i1 %1830, label %1831, label %1835, !dbg !1658

; <label>:1831:                                   ; preds = %1827
  %1832 = getelementptr inbounds [13 x i16], [13 x i16]* %14, i64 0, i64 8, !dbg !1655
  %1833 = load i16, i16* %1832, align 16, !dbg !1656, !tbaa !534
  %1834 = icmp eq i16 %1833, 0, !dbg !1657
  br i1 %1834, label %1836, label %1835, !dbg !1659

; <label>:1835:                                   ; preds = %1775, %1803, %1772, %1827, %1823, %1819, %1815, %1811, %1807, %1831
  store i32 9999, i32* %4, align 4, !dbg !1660, !tbaa !550
  br label %1867, !dbg !1662

; <label>:1836:                                   ; preds = %1766, %1831
  %1837 = add nsw i32 %1767, 1, !dbg !1663
  store i32 %1837, i32* %4, align 4, !dbg !1664, !tbaa !550
  br label %1838, !dbg !1665

; <label>:1838:                                   ; preds = %1844, %1836
  %1839 = phi i64 [ 0, %1836 ], [ %1845, %1844 ]
  %1840 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1839, !dbg !1636
  %1841 = load i8, i8* %1840, align 1, !dbg !1666, !tbaa !478
  switch i8 %1841, label %1844 [
    i8 0, label %1855
    i8 46, label %1842
  ], !dbg !1665

; <label>:1842:                                   ; preds = %1838
  %1843 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1839, !dbg !1636
  br label %1846, !dbg !1667

; <label>:1844:                                   ; preds = %1838
  %1845 = add nuw nsw i64 %1839, 1, !dbg !1669
  br label %1838, !dbg !1665, !llvm.loop !1671

; <label>:1846:                                   ; preds = %1842, %1846
  %1847 = phi i8* [ %1852, %1846 ], [ %1843, %1842 ]
  %1848 = phi i64 [ %1851, %1846 ], [ %1839, %1842 ]
  %1849 = getelementptr inbounds i8, i8* %1847, i64 1, !dbg !1667
  %1850 = load i8, i8* %1849, align 1, !dbg !1673, !tbaa !478
  store i8 %1850, i8* %1847, align 1, !dbg !1674, !tbaa !478
  %1851 = add nuw nsw i64 %1848, 1, !dbg !1675
  %1852 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1851, !dbg !1636
  %1853 = load i8, i8* %1852, align 1, !dbg !1676, !tbaa !478
  %1854 = icmp eq i8 %1853, 0, !dbg !1677
  br i1 %1854, label %1855, label %1846, !dbg !1678, !llvm.loop !1679

; <label>:1855:                                   ; preds = %1838, %1846
  %1856 = phi i64 [ %1851, %1846 ], [ %1839, %1838 ]
  br label %1857, !dbg !1636

; <label>:1857:                                   ; preds = %1855, %1857
  %1858 = phi i64 [ %1864, %1857 ], [ %1856, %1855 ]
  %1859 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1858, !dbg !1636
  %1860 = load i8, i8* %1859, align 1, !dbg !1681, !tbaa !478
  %1861 = icmp ne i8 %1860, 69, !dbg !1682
  %1862 = icmp sgt i64 %1858, 0, !dbg !1683
  %1863 = and i1 %1862, %1861, !dbg !1684
  %1864 = add nsw i64 %1858, -1, !dbg !1685
  br i1 %1863, label %1857, label %1865, !dbg !1686, !llvm.loop !1687

; <label>:1865:                                   ; preds = %1857
  %1866 = getelementptr inbounds [57 x i8], [57 x i8]* %16, i64 0, i64 %1858, !dbg !1636
  store i8 0, i8* %1866, align 1, !dbg !1689, !tbaa !478
  br label %1867, !dbg !1690

; <label>:1867:                                   ; preds = %1865, %1835
  br label %1868, !dbg !1691

; <label>:1868:                                   ; preds = %1867, %1873
  %1869 = phi i8* [ %1874, %1873 ], [ %20, %1867 ], !dbg !1692
  %1870 = load i8, i8* %1869, align 1, !dbg !1691, !tbaa !478
  switch i8 %1870, label %1871 [
    i8 32, label %1873
    i8 45, label %1873
  ], !dbg !1694

; <label>:1871:                                   ; preds = %1868
  store i8 %1870, i8* %20, align 16, !dbg !1695, !tbaa !478
  %1872 = icmp eq i8 %1870, 0, !dbg !1696
  br i1 %1872, label %1882, label %1875, !dbg !1697, !llvm.loop !1698

; <label>:1873:                                   ; preds = %1868, %1868
  %1874 = getelementptr inbounds i8, i8* %1869, i64 1, !dbg !1700
  br label %1868, !dbg !1701, !llvm.loop !1702

; <label>:1875:                                   ; preds = %1871, %1875
  %1876 = phi i8* [ %1878, %1875 ], [ %1869, %1871 ]
  %1877 = phi i8* [ %1879, %1875 ], [ %20, %1871 ]
  %1878 = getelementptr inbounds i8, i8* %1876, i64 1, !dbg !1704
  %1879 = getelementptr inbounds i8, i8* %1877, i64 1, !dbg !1705
  %1880 = load i8, i8* %1878, align 1, !dbg !1706, !tbaa !478
  store i8 %1880, i8* %1879, align 1, !dbg !1695, !tbaa !478
  %1881 = icmp eq i8 %1880, 0, !dbg !1696
  br i1 %1881, label %1882, label %1875, !dbg !1697, !llvm.loop !1698

; <label>:1882:                                   ; preds = %1875, %1871
  %1883 = phi i8* [ %20, %1871 ], [ %1879, %1875 ], !dbg !1692
  %1884 = icmp eq i32 %2, 2, !dbg !1707
  br i1 %1884, label %1890, label %1885, !dbg !1709

; <label>:1885:                                   ; preds = %1882
  %1886 = load i32, i32* %1768, align 4, !dbg !1710, !tbaa !1634
  %1887 = icmp sgt i32 %90, %1886, !dbg !1712
  %1888 = select i1 %1887, i32 %90, i32 %1886, !dbg !1713
  %1889 = sext i32 %1888 to i64, !dbg !1713
  br label %1890, !dbg !1713

; <label>:1890:                                   ; preds = %1885, %1882
  %1891 = phi i64 [ 1, %1882 ], [ %1889, %1885 ]
  %1892 = getelementptr inbounds i8, i8* %1883, i64 -1, !dbg !1714
  %1893 = load i8, i8* %1892, align 1, !dbg !1715, !tbaa !478
  %1894 = icmp eq i8 %1893, 48, !dbg !1716
  br i1 %1894, label %1895, label %1907, !dbg !1717

; <label>:1895:                                   ; preds = %1890
  %1896 = ptrtoint [57 x i8]* %16 to i64
  br label %1897, !dbg !1717

; <label>:1897:                                   ; preds = %1895, %1903
  %1898 = phi i8* [ %1892, %1895 ], [ %1904, %1903 ]
  %1899 = phi i8* [ %1883, %1895 ], [ %1898, %1903 ]
  %1900 = ptrtoint i8* %1899 to i64, !dbg !1718
  %1901 = sub i64 %1900, %1896, !dbg !1718
  %1902 = icmp sgt i64 %1901, %1891, !dbg !1719
  br i1 %1902, label %1903, label %1907, !dbg !1720

; <label>:1903:                                   ; preds = %1897
  store i8 0, i8* %1898, align 1, !dbg !1721, !tbaa !478
  %1904 = getelementptr inbounds i8, i8* %1898, i64 -1, !dbg !1714
  %1905 = load i8, i8* %1904, align 1, !dbg !1715, !tbaa !478
  %1906 = icmp eq i8 %1905, 48, !dbg !1716
  br i1 %1906, label %1897, label %1907, !dbg !1717, !llvm.loop !1722

; <label>:1907:                                   ; preds = %1897, %1903, %1890
  %1908 = phi i8* [ %1883, %1890 ], [ %1898, %1903 ], [ %1899, %1897 ], !dbg !1692
  br i1 %83, label %1909, label %1921, !dbg !1724

; <label>:1909:                                   ; preds = %1907
  %1910 = load i32, i32* %1768, align 4, !dbg !1726, !tbaa !1634
  %1911 = add nsw i32 %1910, %90, !dbg !1727
  %1912 = icmp slt i32 %1911, 0, !dbg !1728
  br i1 %1912, label %1915, label %1913, !dbg !1729

; <label>:1913:                                   ; preds = %1909
  %1914 = load i32, i32* %4, align 4, !dbg !1730, !tbaa !550
  br label %1916, !dbg !1729

; <label>:1915:                                   ; preds = %1909
  store i8 0, i8* %20, align 16, !dbg !1732, !tbaa !478
  store i32 0, i32* %4, align 4, !dbg !1734, !tbaa !550
  br label %1916, !dbg !1735

; <label>:1916:                                   ; preds = %1913, %1915
  %1917 = phi i32 [ %1914, %1913 ], [ 0, %1915 ], !dbg !1730
  %1918 = phi i8* [ %1908, %1913 ], [ %20, %1915 ]
  %1919 = add i32 %3, 3, !dbg !1736
  %1920 = add i32 %1919, %1917, !dbg !1737
  br label %1923, !dbg !1739

; <label>:1921:                                   ; preds = %1907
  %1922 = add nsw i32 %3, 9, !dbg !1740
  br label %1923

; <label>:1923:                                   ; preds = %1921, %1916
  %1924 = phi i8* [ %1918, %1916 ], [ %1908, %1921 ]
  %1925 = phi i32 [ %1920, %1916 ], [ %1922, %1921 ], !dbg !1741
  %1926 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 11, !dbg !1743
  store i32 0, i32* %1926, align 8, !dbg !1745, !tbaa !502
  %1927 = sext i32 %1925 to i64, !dbg !1746
  %1928 = icmp ult i32 %1925, 32, !dbg !1748
  br i1 %1928, label %1938, label %1929, !dbg !1749

; <label>:1929:                                   ; preds = %1923, %1929
  %1930 = phi i32 [ %1932, %1929 ], [ 0, %1923 ]
  %1931 = phi i32 [ %1933, %1929 ], [ 4, %1923 ]
  %1932 = add nuw nsw i32 %1930, 1, !dbg !1750
  %1933 = shl i32 %1931, 1, !dbg !1751
  %1934 = sext i32 %1933 to i64, !dbg !1752
  %1935 = add nsw i64 %1934, 28, !dbg !1753
  %1936 = icmp ugt i64 %1935, %1927, !dbg !1748
  br i1 %1936, label %1937, label %1929, !dbg !1749, !llvm.loop !1754

; <label>:1937:                                   ; preds = %1929
  store i32 %1932, i32* %1926, align 8, !dbg !1756, !tbaa !502
  br label %1938, !dbg !1749

; <label>:1938:                                   ; preds = %1937, %1923
  %1939 = phi i32 [ %1932, %1937 ], [ 0, %1923 ], !dbg !1756
  %1940 = call %struct._Bigint* @_Balloc(%struct._reent* nonnull %0, i32 %1939) #6, !dbg !1757
  store %struct._Bigint* %1940, %struct._Bigint** %25, align 8, !dbg !1758, !tbaa !493
  %1941 = bitcast %struct._Bigint* %1940 to i8*, !dbg !1759
  %1942 = call i8* @strcpy(i8* %1941, i8* nonnull %20) #6, !dbg !1761
  %1943 = icmp eq i8** %6, null, !dbg !1762
  br i1 %1943, label %1949, label %1944, !dbg !1764

; <label>:1944:                                   ; preds = %1938
  %1945 = ptrtoint i8* %1924 to i64, !dbg !1765
  %1946 = ptrtoint [57 x i8]* %16 to i64, !dbg !1765
  %1947 = sub i64 %1945, %1946, !dbg !1765
  %1948 = getelementptr inbounds i8, i8* %1941, i64 %1947, !dbg !1766
  store i8* %1948, i8** %6, align 8, !dbg !1767, !tbaa !1768
  br label %1949, !dbg !1769

; <label>:1949:                                   ; preds = %1938, %1944
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #5, !dbg !1770
  call void @llvm.lifetime.end.p0i8(i64 57, i8* nonnull %20) #5, !dbg !1770
  call void @llvm.lifetime.end.p0i8(i64 80, i8* nonnull %19) #5, !dbg !1770
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %18) #5, !dbg !1770
  ret i8* %1941, !dbg !1771
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local void @_Bfree(%struct._reent*, %struct._Bigint*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc void @e64toe(i16* nocapture readonly, i16*) unnamed_addr #0 !dbg !1772 {
  %3 = alloca [13 x i16], align 16
  %4 = bitcast [13 x i16]* %3 to i8*, !dbg !1791
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %4) #5, !dbg !1791
  %5 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 0, !dbg !1794
  %6 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 1, !dbg !1797
  store i16 0, i16* %5, align 16, !dbg !1800, !tbaa !534
  %7 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 2, !dbg !1797
  store i16 0, i16* %6, align 2, !dbg !1800, !tbaa !534
  %8 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !1797
  store i16 0, i16* %7, align 4, !dbg !1800, !tbaa !534
  %9 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 4, !dbg !1797
  store i16 0, i16* %8, align 2, !dbg !1800, !tbaa !534
  store i16 0, i16* %9, align 8, !dbg !1800, !tbaa !534
  %10 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !1801
  %11 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1802
  %12 = load i16, i16* %0, align 2, !dbg !1805, !tbaa !534
  %13 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !1806
  store i16 %12, i16* %10, align 2, !dbg !1807, !tbaa !534
  %14 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1802
  %15 = load i16, i16* %11, align 2, !dbg !1805, !tbaa !534
  %16 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !1806
  store i16 %15, i16* %13, align 4, !dbg !1807, !tbaa !534
  %17 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !1802
  %18 = load i16, i16* %14, align 2, !dbg !1805, !tbaa !534
  %19 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !1806
  store i16 %18, i16* %16, align 2, !dbg !1807, !tbaa !534
  %20 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !1802
  %21 = load i16, i16* %17, align 2, !dbg !1805, !tbaa !534
  %22 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !1806
  store i16 %21, i16* %19, align 16, !dbg !1807, !tbaa !534
  %23 = load i16, i16* %20, align 2, !dbg !1805, !tbaa !534
  store i16 %23, i16* %22, align 2, !dbg !1807, !tbaa !534
  %24 = and i16 %23, 32767, !dbg !1808
  %25 = trunc i16 %23 to i15, !dbg !1809
  switch i15 %25, label %26 [
    i15 0, label %44
    i15 -1, label %92
  ], !dbg !1809

; <label>:26:                                     ; preds = %91, %2
  %27 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1811
  store i16 0, i16* %1, align 2, !dbg !1814, !tbaa !534
  %28 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1811
  store i16 0, i16* %27, align 2, !dbg !1814, !tbaa !534
  %29 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1811
  store i16 0, i16* %28, align 2, !dbg !1814, !tbaa !534
  %30 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1811
  store i16 0, i16* %29, align 2, !dbg !1814, !tbaa !534
  %31 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !1815
  %32 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1811
  store i16 0, i16* %30, align 2, !dbg !1814, !tbaa !534
  %33 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !1815
  %34 = load i16, i16* %31, align 2, !dbg !1816, !tbaa !534
  %35 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1811
  store i16 %34, i16* %32, align 2, !dbg !1814, !tbaa !534
  %36 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !1815
  %37 = load i16, i16* %33, align 4, !dbg !1816, !tbaa !534
  %38 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1811
  store i16 %37, i16* %35, align 2, !dbg !1814, !tbaa !534
  %39 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !1815
  %40 = load i16, i16* %36, align 2, !dbg !1816, !tbaa !534
  %41 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !1811
  store i16 %40, i16* %38, align 2, !dbg !1814, !tbaa !534
  %42 = load i16, i16* %39, align 16, !dbg !1816, !tbaa !534
  %43 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !1811
  store i16 %42, i16* %41, align 2, !dbg !1814, !tbaa !534
  store i16 %23, i16* %43, align 2, !dbg !1814, !tbaa !534
  br label %102, !dbg !1817

; <label>:44:                                     ; preds = %2
  %45 = icmp sgt i16 %21, -1, !dbg !1818
  %46 = icmp eq i16 %24, 32767, !dbg !1819
  br i1 %45, label %47, label %91, !dbg !1821

; <label>:47:                                     ; preds = %44
  br i1 %46, label %48, label %55, !dbg !1828

; <label>:48:                                     ; preds = %47
  %49 = or i16 %12, %15, !dbg !1832
  %50 = or i16 %18, %21, !dbg !1832
  %51 = or i16 %49, %50, !dbg !1832
  %52 = icmp eq i16 %51, 0, !dbg !1832
  %53 = select i1 %52, i16 0, i16 %18, !dbg !1832
  %54 = select i1 %52, i16 0, i16 %21, !dbg !1832
  br label %55, !dbg !1832

; <label>:55:                                     ; preds = %48, %47
  %56 = phi i16 [ %18, %47 ], [ %53, %48 ], !dbg !1834
  %57 = phi i16 [ %21, %47 ], [ %54, %48 ], !dbg !1834
  %58 = lshr i16 %12, 15, !dbg !1839
  %59 = shl i16 %12, 1, !dbg !1840
  %60 = lshr i16 %15, 15, !dbg !1839
  %61 = shl i16 %15, 1, !dbg !1840
  %62 = or i16 %61, %58, !dbg !1841
  %63 = lshr i16 %56, 15, !dbg !1839
  %64 = shl i16 %56, 1, !dbg !1840
  %65 = or i16 %64, %60, !dbg !1841
  %66 = shl i16 %57, 1, !dbg !1840
  %67 = or i16 %66, %63, !dbg !1841
  %68 = getelementptr i16, i16* %1, i64 9, !dbg !1847
  %69 = icmp sgt i16 %23, -1, !dbg !1850
  %70 = or i16 %23, -32768, !dbg !1851
  %71 = select i1 %69, i16 %24, i16 %70, !dbg !1852
  store i16 %71, i16* %68, align 2, !dbg !1853, !tbaa !534
  br i1 %46, label %72, label %82, !dbg !1854

; <label>:72:                                     ; preds = %55
  %73 = or i16 %59, %62, !dbg !1858
  %74 = or i16 %73, %65, !dbg !1858
  %75 = or i16 %74, %67, !dbg !1858
  %76 = icmp eq i16 %75, 0, !dbg !1858
  %77 = getelementptr i16, i16* %1, i64 8, !dbg !1834
  %78 = bitcast i16* %1 to <8 x i16>*, !dbg !1834
  store <8 x i16> zeroinitializer, <8 x i16>* %78, align 2, !dbg !1834, !tbaa !534
  br i1 %76, label %80, label %79, !dbg !1858

; <label>:79:                                     ; preds = %72
  store i16 -16384, i16* %77, align 2, !dbg !1863, !tbaa !534
  store i16 32767, i16* %68, align 2, !dbg !1864, !tbaa !534
  br label %102, !dbg !1865

; <label>:80:                                     ; preds = %72
  store i16 0, i16* %77, align 2, !dbg !1870, !tbaa !534
  %81 = or i16 %71, 32767, !dbg !1871
  store i16 %81, i16* %68, align 2, !dbg !1871, !tbaa !534
  br label %102, !dbg !1872

; <label>:82:                                     ; preds = %55
  %83 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !1853
  %84 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1873
  store i16 %67, i16* %83, align 2, !dbg !1874, !tbaa !534
  %85 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1873
  store i16 %65, i16* %84, align 2, !dbg !1874, !tbaa !534
  %86 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1873
  store i16 %62, i16* %85, align 2, !dbg !1874, !tbaa !534
  %87 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1873
  store i16 %59, i16* %86, align 2, !dbg !1874, !tbaa !534
  %88 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1873
  store i16 0, i16* %87, align 2, !dbg !1874, !tbaa !534
  %89 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1873
  store i16 0, i16* %88, align 2, !dbg !1874, !tbaa !534
  %90 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1873
  store i16 0, i16* %89, align 2, !dbg !1874, !tbaa !534
  store i16 0, i16* %90, align 2, !dbg !1874, !tbaa !534
  store i16 0, i16* %1, align 2, !dbg !1874, !tbaa !534
  br label %102, !dbg !1875

; <label>:91:                                     ; preds = %44
  br i1 %46, label %92, label %26, !dbg !1876

; <label>:92:                                     ; preds = %2, %91
  %93 = or i16 %12, %15, !dbg !1877
  %94 = or i16 %93, %18, !dbg !1877
  %95 = icmp eq i16 %94, 0, !dbg !1877
  %96 = icmp eq i16 %21, -32768, !dbg !1883
  %97 = and i1 %95, %96, !dbg !1877
  %98 = getelementptr i16, i16* %1, i64 8, !dbg !1884
  br i1 %97, label %103, label %99, !dbg !1877

; <label>:99:                                     ; preds = %92
  %100 = bitcast i16* %1 to <8 x i16>*, !dbg !1890
  store <8 x i16> zeroinitializer, <8 x i16>* %100, align 2, !dbg !1890, !tbaa !534
  %101 = getelementptr i16, i16* %1, i64 9, !dbg !1893
  store i16 -16384, i16* %98, align 2, !dbg !1894, !tbaa !534
  store i16 32767, i16* %101, align 2, !dbg !1895, !tbaa !534
  br label %102, !dbg !1896

; <label>:102:                                    ; preds = %26, %103, %82, %80, %79, %99
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %4) #5, !dbg !1817
  ret void, !dbg !1817

; <label>:103:                                    ; preds = %92
  %104 = getelementptr i16, i16* %1, i64 9, !dbg !1900
  %105 = bitcast i16* %1 to <8 x i16>*, !dbg !1905
  store <8 x i16> zeroinitializer, <8 x i16>* %105, align 2, !dbg !1905, !tbaa !534
  store i16 0, i16* %98, align 2, !dbg !1905, !tbaa !534
  %106 = or i16 %23, 32767, !dbg !1906
  store i16 %106, i16* %104, align 2, !dbg !1907
  br label %102, !dbg !1906
}

; Function Attrs: noredzone
declare dso_local %struct._Bigint* @_Balloc(%struct._reent*, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @strcpy(i8*, i8*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @_ldcheck(x86_fp80* nocapture readonly) local_unnamed_addr #0 !dbg !1909 {
  %2 = alloca [13 x i16], align 16
  %3 = alloca %union.uconv, align 16
  %4 = bitcast [13 x i16]* %2 to i8*, !dbg !1920
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %4) #5, !dbg !1920
  %5 = bitcast %union.uconv* %3 to i8*, !dbg !1922
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #5, !dbg !1922
  %6 = load x86_fp80, x86_fp80* %0, align 16, !dbg !1923, !tbaa !1924
  %7 = getelementptr inbounds %union.uconv, %union.uconv* %3, i64 0, i32 0, !dbg !1926
  store x86_fp80 %6, x86_fp80* %7, align 16, !dbg !1927, !tbaa !478
  %8 = bitcast %union.uconv* %3 to i16*, !dbg !1928
  %9 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 0, !dbg !1929
  call fastcc void @e64toe(i16* nonnull %8, i16* nonnull %9) #7, !dbg !1930
  %10 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 9, !dbg !1931
  %11 = load i16, i16* %10, align 2, !dbg !1931, !tbaa !534
  %12 = and i16 %11, 32767, !dbg !1933
  %13 = icmp eq i16 %12, 32767, !dbg !1934
  br i1 %13, label %14, label %50, !dbg !1935

; <label>:14:                                     ; preds = %1
  %15 = load i16, i16* %9, align 16, !dbg !1941, !tbaa !534
  %16 = icmp eq i16 %15, 0, !dbg !1942
  br i1 %16, label %17, label %50, !dbg !1943

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 1, !dbg !1944
  %19 = load i16, i16* %18, align 2, !dbg !1941, !tbaa !534
  %20 = icmp eq i16 %19, 0, !dbg !1942
  br i1 %20, label %21, label %50, !dbg !1943

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 2, !dbg !1944
  %23 = load i16, i16* %22, align 4, !dbg !1941, !tbaa !534
  %24 = icmp eq i16 %23, 0, !dbg !1942
  br i1 %24, label %25, label %50, !dbg !1943

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 3, !dbg !1944
  %27 = load i16, i16* %26, align 2, !dbg !1941, !tbaa !534
  %28 = icmp eq i16 %27, 0, !dbg !1942
  br i1 %28, label %29, label %50, !dbg !1943

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 4, !dbg !1944
  %31 = load i16, i16* %30, align 8, !dbg !1941, !tbaa !534
  %32 = icmp eq i16 %31, 0, !dbg !1942
  br i1 %32, label %33, label %50, !dbg !1943

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 5, !dbg !1944
  %35 = load i16, i16* %34, align 2, !dbg !1941, !tbaa !534
  %36 = icmp eq i16 %35, 0, !dbg !1942
  br i1 %36, label %37, label %50, !dbg !1943

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 6, !dbg !1944
  %39 = load i16, i16* %38, align 4, !dbg !1941, !tbaa !534
  %40 = icmp eq i16 %39, 0, !dbg !1942
  br i1 %40, label %41, label %50, !dbg !1943

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 7, !dbg !1944
  %43 = load i16, i16* %42, align 2, !dbg !1941, !tbaa !534
  %44 = icmp eq i16 %43, 0, !dbg !1942
  br i1 %44, label %45, label %50, !dbg !1943

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds [13 x i16], [13 x i16]* %2, i64 0, i64 8, !dbg !1944
  %47 = load i16, i16* %46, align 16, !dbg !1941, !tbaa !534
  %48 = icmp eq i16 %47, 0, !dbg !1942
  %49 = select i1 %48, i32 2, i32 1, !dbg !1945
  br label %50, !dbg !1945

; <label>:50:                                     ; preds = %45, %41, %37, %33, %29, %25, %21, %17, %14, %1
  %51 = phi i32 [ 0, %1 ], [ 1, %14 ], [ 1, %17 ], [ 1, %21 ], [ 1, %25 ], [ 1, %29 ], [ 1, %33 ], [ 1, %37 ], [ 1, %41 ], [ %49, %45 ], !dbg !1946
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #5, !dbg !1947
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %4) #5, !dbg !1947
  ret i32 %51, !dbg !1947
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define internal fastcc i32 @ecmp(i16* readonly, i16* readonly) unnamed_addr #4 !dbg !1948 {
  %3 = alloca [13 x i16], align 16
  %4 = alloca [13 x i16], align 16
  %5 = bitcast [13 x i16]* %3 to i8*, !dbg !1962
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %5) #5, !dbg !1962
  %6 = bitcast [13 x i16]* %4 to i8*, !dbg !1962
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %6) #5, !dbg !1962
  %7 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !1968
  %8 = load i16, i16* %7, align 2, !dbg !1968, !tbaa !534
  %9 = and i16 %8, 32767, !dbg !1969
  %10 = icmp eq i16 %9, 32767, !dbg !1970
  br i1 %10, label %11, label %46, !dbg !1971

; <label>:11:                                     ; preds = %2
  %12 = load i16, i16* %0, align 2, !dbg !1973, !tbaa !534
  %13 = icmp eq i16 %12, 0, !dbg !1974
  br i1 %13, label %14, label %339, !dbg !1975

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !1976
  %16 = load i16, i16* %15, align 2, !dbg !1973, !tbaa !534
  %17 = icmp eq i16 %16, 0, !dbg !1974
  br i1 %17, label %18, label %339, !dbg !1975

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !1976
  %20 = load i16, i16* %19, align 2, !dbg !1973, !tbaa !534
  %21 = icmp eq i16 %20, 0, !dbg !1974
  br i1 %21, label %22, label %339, !dbg !1975

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !1976
  %24 = load i16, i16* %23, align 2, !dbg !1973, !tbaa !534
  %25 = icmp eq i16 %24, 0, !dbg !1974
  br i1 %25, label %26, label %339, !dbg !1975

; <label>:26:                                     ; preds = %22
  %27 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !1976
  %28 = load i16, i16* %27, align 2, !dbg !1973, !tbaa !534
  %29 = icmp eq i16 %28, 0, !dbg !1974
  br i1 %29, label %30, label %339, !dbg !1975

; <label>:30:                                     ; preds = %26
  %31 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !1976
  %32 = load i16, i16* %31, align 2, !dbg !1973, !tbaa !534
  %33 = icmp eq i16 %32, 0, !dbg !1974
  br i1 %33, label %34, label %339, !dbg !1975

; <label>:34:                                     ; preds = %30
  %35 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !1976
  %36 = load i16, i16* %35, align 2, !dbg !1973, !tbaa !534
  %37 = icmp eq i16 %36, 0, !dbg !1974
  br i1 %37, label %38, label %339, !dbg !1975

; <label>:38:                                     ; preds = %34
  %39 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !1976
  %40 = load i16, i16* %39, align 2, !dbg !1973, !tbaa !534
  %41 = icmp eq i16 %40, 0, !dbg !1974
  br i1 %41, label %42, label %339, !dbg !1975

; <label>:42:                                     ; preds = %38
  %43 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !1976
  %44 = load i16, i16* %43, align 2, !dbg !1973, !tbaa !534
  %45 = icmp eq i16 %44, 0, !dbg !1974
  br i1 %45, label %46, label %339, !dbg !1977

; <label>:46:                                     ; preds = %2, %42
  %47 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !1980
  %48 = load i16, i16* %47, align 2, !dbg !1980, !tbaa !534
  %49 = and i16 %48, 32767, !dbg !1981
  %50 = icmp eq i16 %49, 32767, !dbg !1982
  br i1 %50, label %51, label %86, !dbg !1983

; <label>:51:                                     ; preds = %46
  %52 = load i16, i16* %1, align 2, !dbg !1985, !tbaa !534
  %53 = icmp eq i16 %52, 0, !dbg !1986
  br i1 %53, label %54, label %339, !dbg !1987

; <label>:54:                                     ; preds = %51
  %55 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !1988
  %56 = load i16, i16* %55, align 2, !dbg !1985, !tbaa !534
  %57 = icmp eq i16 %56, 0, !dbg !1986
  br i1 %57, label %58, label %339, !dbg !1987

; <label>:58:                                     ; preds = %54
  %59 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !1988
  %60 = load i16, i16* %59, align 2, !dbg !1985, !tbaa !534
  %61 = icmp eq i16 %60, 0, !dbg !1986
  br i1 %61, label %62, label %339, !dbg !1987

; <label>:62:                                     ; preds = %58
  %63 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !1988
  %64 = load i16, i16* %63, align 2, !dbg !1985, !tbaa !534
  %65 = icmp eq i16 %64, 0, !dbg !1986
  br i1 %65, label %66, label %339, !dbg !1987

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !1988
  %68 = load i16, i16* %67, align 2, !dbg !1985, !tbaa !534
  %69 = icmp eq i16 %68, 0, !dbg !1986
  br i1 %69, label %70, label %339, !dbg !1987

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !1988
  %72 = load i16, i16* %71, align 2, !dbg !1985, !tbaa !534
  %73 = icmp eq i16 %72, 0, !dbg !1986
  br i1 %73, label %74, label %339, !dbg !1987

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !1988
  %76 = load i16, i16* %75, align 2, !dbg !1985, !tbaa !534
  %77 = icmp eq i16 %76, 0, !dbg !1986
  br i1 %77, label %78, label %339, !dbg !1987

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !1988
  %80 = load i16, i16* %79, align 2, !dbg !1985, !tbaa !534
  %81 = icmp eq i16 %80, 0, !dbg !1986
  br i1 %81, label %82, label %339, !dbg !1987

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !1988
  %84 = load i16, i16* %83, align 2, !dbg !1985, !tbaa !534
  %85 = icmp eq i16 %84, 0, !dbg !1986
  br i1 %85, label %86, label %339, !dbg !1989

; <label>:86:                                     ; preds = %46, %82
  %87 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 0, !dbg !1990
  %88 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 1, !dbg !1996
  %89 = ashr i16 %8, 15, !dbg !1997
  store i16 %89, i16* %87, align 16, !dbg !1996, !tbaa !534
  %90 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !1998
  %91 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 2, !dbg !1999
  store i16 %9, i16* %88, align 2, !dbg !2000, !tbaa !534
  br i1 %10, label %92, label %167, !dbg !2001

; <label>:92:                                     ; preds = %86
  %93 = load i16, i16* %0, align 2, !dbg !2005, !tbaa !534
  %94 = getelementptr inbounds i16, i16* %0, i64 1
  %95 = load i16, i16* %94, align 2, !dbg !2006, !tbaa !534
  %96 = or i16 %93, %95, !dbg !2007
  %97 = icmp eq i16 %96, 0, !dbg !2007
  br i1 %97, label %98, label %122, !dbg !2007

; <label>:98:                                     ; preds = %92
  %99 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2008
  %100 = load i16, i16* %99, align 2, !dbg !2005, !tbaa !534
  %101 = icmp eq i16 %100, 0, !dbg !2009
  br i1 %101, label %102, label %122, !dbg !2007

; <label>:102:                                    ; preds = %98
  %103 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2008
  %104 = load i16, i16* %103, align 2, !dbg !2005, !tbaa !534
  %105 = icmp eq i16 %104, 0, !dbg !2009
  br i1 %105, label %106, label %122, !dbg !2007

; <label>:106:                                    ; preds = %102
  %107 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2008
  %108 = load i16, i16* %107, align 2, !dbg !2005, !tbaa !534
  %109 = icmp eq i16 %108, 0, !dbg !2009
  br i1 %109, label %110, label %122, !dbg !2007

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2008
  %112 = load i16, i16* %111, align 2, !dbg !2005, !tbaa !534
  %113 = icmp eq i16 %112, 0, !dbg !2009
  br i1 %113, label %114, label %122, !dbg !2007

; <label>:114:                                    ; preds = %110
  %115 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2008
  %116 = load i16, i16* %115, align 2, !dbg !2005, !tbaa !534
  %117 = icmp eq i16 %116, 0, !dbg !2009
  br i1 %117, label %118, label %122, !dbg !2007

; <label>:118:                                    ; preds = %114
  %119 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2008
  %120 = load i16, i16* %119, align 2, !dbg !2005, !tbaa !534
  %121 = icmp eq i16 %120, 0, !dbg !2009
  br i1 %121, label %138, label %122, !dbg !2007

; <label>:122:                                    ; preds = %92, %118, %114, %110, %106, %102, %98
  %123 = phi i16 [ 0, %118 ], [ 0, %114 ], [ 0, %110 ], [ 0, %106 ], [ 0, %102 ], [ 0, %98 ], [ %95, %92 ], !dbg !2010
  %124 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !2011
  store i16 0, i16* %91, align 4, !dbg !2011, !tbaa !534
  %125 = load i16, i16* %90, align 2, !dbg !2010, !tbaa !534
  %126 = getelementptr inbounds i16, i16* %0, i64 7
  %127 = load i16, i16* %126, align 2, !dbg !2010, !tbaa !534
  %128 = getelementptr inbounds i16, i16* %0, i64 6
  %129 = load i16, i16* %128, align 2, !dbg !2010, !tbaa !534
  %130 = getelementptr inbounds i16, i16* %0, i64 5
  %131 = load i16, i16* %130, align 2, !dbg !2010, !tbaa !534
  %132 = getelementptr inbounds i16, i16* %0, i64 4
  %133 = load i16, i16* %132, align 2, !dbg !2010, !tbaa !534
  %134 = getelementptr inbounds i16, i16* %0, i64 3
  %135 = load i16, i16* %134, align 2, !dbg !2010, !tbaa !534
  %136 = getelementptr inbounds i16, i16* %0, i64 2
  %137 = load i16, i16* %136, align 2, !dbg !2010, !tbaa !534
  br label %146, !dbg !2013

; <label>:138:                                    ; preds = %118
  %139 = load i16, i16* %90, align 2, !dbg !2005, !tbaa !534
  %140 = icmp eq i16 %139, 0, !dbg !2009
  %141 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !2011
  store i16 0, i16* %91, align 4, !dbg !2011, !tbaa !534
  br i1 %140, label %142, label %146, !dbg !2013

; <label>:142:                                    ; preds = %138
  %143 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2014
  %144 = bitcast i16* %141 to <8 x i16>*, !dbg !2015
  store <8 x i16> zeroinitializer, <8 x i16>* %144, align 2, !dbg !2015, !tbaa !534
  %145 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 12, !dbg !2014
  store i16 0, i16* %143, align 2, !dbg !2015, !tbaa !534
  store i16 0, i16* %145, align 8, !dbg !2015, !tbaa !534
  br label %185, !dbg !2016

; <label>:146:                                    ; preds = %122, %138
  %147 = phi i16 [ %123, %122 ], [ 0, %138 ], !dbg !2010
  %148 = phi i16 [ %137, %122 ], [ 0, %138 ], !dbg !2010
  %149 = phi i16 [ %135, %122 ], [ 0, %138 ], !dbg !2010
  %150 = phi i16 [ %133, %122 ], [ 0, %138 ], !dbg !2010
  %151 = phi i16 [ %131, %122 ], [ 0, %138 ], !dbg !2010
  %152 = phi i16 [ %129, %122 ], [ 0, %138 ], !dbg !2010
  %153 = phi i16 [ %127, %122 ], [ 0, %138 ], !dbg !2010
  %154 = phi i16 [ %125, %122 ], [ %139, %138 ], !dbg !2010
  %155 = phi i16* [ %124, %122 ], [ %141, %138 ]
  %156 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 4, !dbg !2017
  store i16 %154, i16* %155, align 2, !dbg !2018, !tbaa !534
  %157 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !2017
  store i16 %153, i16* %156, align 8, !dbg !2018, !tbaa !534
  %158 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !2017
  store i16 %152, i16* %157, align 2, !dbg !2018, !tbaa !534
  %159 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !2017
  store i16 %151, i16* %158, align 4, !dbg !2018, !tbaa !534
  %160 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !2017
  store i16 %150, i16* %159, align 2, !dbg !2018, !tbaa !534
  %161 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !2017
  store i16 %149, i16* %160, align 16, !dbg !2018, !tbaa !534
  %162 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 10, !dbg !2017
  store i16 %148, i16* %161, align 2, !dbg !2018, !tbaa !534
  %163 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2017
  store i16 %147, i16* %162, align 4, !dbg !2018, !tbaa !534
  %164 = getelementptr inbounds i16, i16* %0, i64 -1, !dbg !2019
  %165 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 12, !dbg !2017
  store i16 %93, i16* %163, align 2, !dbg !2018, !tbaa !534
  %166 = load i16, i16* %164, align 2, !dbg !2010, !tbaa !534
  store i16 %166, i16* %165, align 8, !dbg !2018, !tbaa !534
  br label %185, !dbg !2016

; <label>:167:                                    ; preds = %86
  %168 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 3, !dbg !2020
  store i16 0, i16* %91, align 4, !dbg !2021, !tbaa !534
  %169 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2022
  %170 = bitcast i16* %169 to <8 x i16>*, !dbg !2023
  %171 = load <8 x i16>, <8 x i16>* %170, align 2, !dbg !2023, !tbaa !534
  %172 = shufflevector <8 x i16> %171, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2023
  %173 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2024
  %174 = bitcast i16* %168 to <8 x i16>*, !dbg !2025
  store <8 x i16> %172, <8 x i16>* %174, align 2, !dbg !2025, !tbaa !534
  %175 = load i16, i16* %0, align 2, !dbg !2023, !tbaa !534
  store i16 %175, i16* %173, align 2, !dbg !2025, !tbaa !534
  %176 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 12, !dbg !2026
  store i16 0, i16* %176, align 8, !dbg !2027, !tbaa !534
  %177 = extractelement <8 x i16> %171, i32 7, !dbg !2016
  %178 = extractelement <8 x i16> %171, i32 6, !dbg !2016
  %179 = extractelement <8 x i16> %171, i32 5, !dbg !2016
  %180 = extractelement <8 x i16> %171, i32 4, !dbg !2016
  %181 = extractelement <8 x i16> %171, i32 3, !dbg !2016
  %182 = extractelement <8 x i16> %171, i32 2, !dbg !2016
  %183 = extractelement <8 x i16> %171, i32 1, !dbg !2016
  %184 = extractelement <8 x i16> %171, i32 0, !dbg !2016
  br label %185, !dbg !2016

; <label>:185:                                    ; preds = %142, %146, %167
  %186 = phi i16 [ 0, %142 ], [ %93, %146 ], [ %175, %167 ]
  %187 = phi i16 [ 0, %142 ], [ %147, %146 ], [ %184, %167 ]
  %188 = phi i16 [ 0, %142 ], [ %148, %146 ], [ %183, %167 ]
  %189 = phi i16 [ 0, %142 ], [ %149, %146 ], [ %182, %167 ]
  %190 = phi i16 [ 0, %142 ], [ %150, %146 ], [ %181, %167 ]
  %191 = phi i16 [ 0, %142 ], [ %151, %146 ], [ %180, %167 ]
  %192 = phi i16 [ 0, %142 ], [ %152, %146 ], [ %179, %167 ]
  %193 = phi i16 [ 0, %142 ], [ %153, %146 ], [ %178, %167 ]
  %194 = phi i16 [ 0, %142 ], [ %154, %146 ], [ %177, %167 ]
  %195 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 0, !dbg !2029
  %196 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 1, !dbg !2035
  %197 = ashr i16 %48, 15, !dbg !2036
  store i16 %197, i16* %195, align 16, !dbg !2035, !tbaa !534
  %198 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2037
  %199 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 2, !dbg !2038
  store i16 %49, i16* %196, align 2, !dbg !2039, !tbaa !534
  br i1 %50, label %200, label %275, !dbg !2040

; <label>:200:                                    ; preds = %185
  %201 = load i16, i16* %1, align 2, !dbg !2044, !tbaa !534
  %202 = getelementptr inbounds i16, i16* %1, i64 1
  %203 = load i16, i16* %202, align 2, !dbg !2006, !tbaa !534
  %204 = or i16 %201, %203, !dbg !2045
  %205 = icmp eq i16 %204, 0, !dbg !2045
  br i1 %205, label %206, label %230, !dbg !2045

; <label>:206:                                    ; preds = %200
  %207 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2046
  %208 = load i16, i16* %207, align 2, !dbg !2044, !tbaa !534
  %209 = icmp eq i16 %208, 0, !dbg !2047
  br i1 %209, label %210, label %230, !dbg !2045

; <label>:210:                                    ; preds = %206
  %211 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2046
  %212 = load i16, i16* %211, align 2, !dbg !2044, !tbaa !534
  %213 = icmp eq i16 %212, 0, !dbg !2047
  br i1 %213, label %214, label %230, !dbg !2045

; <label>:214:                                    ; preds = %210
  %215 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2046
  %216 = load i16, i16* %215, align 2, !dbg !2044, !tbaa !534
  %217 = icmp eq i16 %216, 0, !dbg !2047
  br i1 %217, label %218, label %230, !dbg !2045

; <label>:218:                                    ; preds = %214
  %219 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2046
  %220 = load i16, i16* %219, align 2, !dbg !2044, !tbaa !534
  %221 = icmp eq i16 %220, 0, !dbg !2047
  br i1 %221, label %222, label %230, !dbg !2045

; <label>:222:                                    ; preds = %218
  %223 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2046
  %224 = load i16, i16* %223, align 2, !dbg !2044, !tbaa !534
  %225 = icmp eq i16 %224, 0, !dbg !2047
  br i1 %225, label %226, label %230, !dbg !2045

; <label>:226:                                    ; preds = %222
  %227 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2046
  %228 = load i16, i16* %227, align 2, !dbg !2044, !tbaa !534
  %229 = icmp eq i16 %228, 0, !dbg !2047
  br i1 %229, label %246, label %230, !dbg !2045

; <label>:230:                                    ; preds = %200, %226, %222, %218, %214, %210, %206
  %231 = phi i16 [ 0, %226 ], [ 0, %222 ], [ 0, %218 ], [ 0, %214 ], [ 0, %210 ], [ 0, %206 ], [ %203, %200 ], !dbg !2048
  %232 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !2049
  store i16 0, i16* %199, align 4, !dbg !2049, !tbaa !534
  %233 = load i16, i16* %198, align 2, !dbg !2048, !tbaa !534
  %234 = getelementptr inbounds i16, i16* %1, i64 7
  %235 = load i16, i16* %234, align 2, !dbg !2048, !tbaa !534
  %236 = getelementptr inbounds i16, i16* %1, i64 6
  %237 = load i16, i16* %236, align 2, !dbg !2048, !tbaa !534
  %238 = getelementptr inbounds i16, i16* %1, i64 5
  %239 = load i16, i16* %238, align 2, !dbg !2048, !tbaa !534
  %240 = getelementptr inbounds i16, i16* %1, i64 4
  %241 = load i16, i16* %240, align 2, !dbg !2048, !tbaa !534
  %242 = getelementptr inbounds i16, i16* %1, i64 3
  %243 = load i16, i16* %242, align 2, !dbg !2048, !tbaa !534
  %244 = getelementptr inbounds i16, i16* %1, i64 2
  %245 = load i16, i16* %244, align 2, !dbg !2048, !tbaa !534
  br label %254, !dbg !2051

; <label>:246:                                    ; preds = %226
  %247 = load i16, i16* %198, align 2, !dbg !2044, !tbaa !534
  %248 = icmp eq i16 %247, 0, !dbg !2047
  %249 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !2049
  store i16 0, i16* %199, align 4, !dbg !2049, !tbaa !534
  br i1 %248, label %250, label %254, !dbg !2051

; <label>:250:                                    ; preds = %246
  %251 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2052
  %252 = bitcast i16* %249 to <8 x i16>*, !dbg !2053
  store <8 x i16> zeroinitializer, <8 x i16>* %252, align 2, !dbg !2053, !tbaa !534
  %253 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 12, !dbg !2052
  store i16 0, i16* %251, align 2, !dbg !2053, !tbaa !534
  store i16 0, i16* %253, align 8, !dbg !2053, !tbaa !534
  br label %293, !dbg !2054

; <label>:254:                                    ; preds = %230, %246
  %255 = phi i16 [ %231, %230 ], [ 0, %246 ], !dbg !2048
  %256 = phi i16 [ %245, %230 ], [ 0, %246 ], !dbg !2048
  %257 = phi i16 [ %243, %230 ], [ 0, %246 ], !dbg !2048
  %258 = phi i16 [ %241, %230 ], [ 0, %246 ], !dbg !2048
  %259 = phi i16 [ %239, %230 ], [ 0, %246 ], !dbg !2048
  %260 = phi i16 [ %237, %230 ], [ 0, %246 ], !dbg !2048
  %261 = phi i16 [ %235, %230 ], [ 0, %246 ], !dbg !2048
  %262 = phi i16 [ %233, %230 ], [ %247, %246 ], !dbg !2048
  %263 = phi i16* [ %232, %230 ], [ %249, %246 ]
  %264 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 4, !dbg !2055
  store i16 %262, i16* %263, align 2, !dbg !2056, !tbaa !534
  %265 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 5, !dbg !2055
  store i16 %261, i16* %264, align 8, !dbg !2056, !tbaa !534
  %266 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 6, !dbg !2055
  store i16 %260, i16* %265, align 2, !dbg !2056, !tbaa !534
  %267 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 7, !dbg !2055
  store i16 %259, i16* %266, align 4, !dbg !2056, !tbaa !534
  %268 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 8, !dbg !2055
  store i16 %258, i16* %267, align 2, !dbg !2056, !tbaa !534
  %269 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 9, !dbg !2055
  store i16 %257, i16* %268, align 16, !dbg !2056, !tbaa !534
  %270 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 10, !dbg !2055
  store i16 %256, i16* %269, align 2, !dbg !2056, !tbaa !534
  %271 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2055
  store i16 %255, i16* %270, align 4, !dbg !2056, !tbaa !534
  %272 = getelementptr inbounds i16, i16* %1, i64 -1, !dbg !2057
  %273 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 12, !dbg !2055
  store i16 %201, i16* %271, align 2, !dbg !2056, !tbaa !534
  %274 = load i16, i16* %272, align 2, !dbg !2048, !tbaa !534
  store i16 %274, i16* %273, align 8, !dbg !2056, !tbaa !534
  br label %293, !dbg !2054

; <label>:275:                                    ; preds = %185
  %276 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 3, !dbg !2058
  store i16 0, i16* %199, align 4, !dbg !2059, !tbaa !534
  %277 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2060
  %278 = bitcast i16* %277 to <8 x i16>*, !dbg !2061
  %279 = load <8 x i16>, <8 x i16>* %278, align 2, !dbg !2061, !tbaa !534
  %280 = shufflevector <8 x i16> %279, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2061
  %281 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2062
  %282 = bitcast i16* %276 to <8 x i16>*, !dbg !2063
  store <8 x i16> %280, <8 x i16>* %282, align 2, !dbg !2063, !tbaa !534
  %283 = load i16, i16* %1, align 2, !dbg !2061, !tbaa !534
  store i16 %283, i16* %281, align 2, !dbg !2063, !tbaa !534
  %284 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 12, !dbg !2064
  store i16 0, i16* %284, align 8, !dbg !2065, !tbaa !534
  %285 = extractelement <8 x i16> %279, i32 7, !dbg !2054
  %286 = extractelement <8 x i16> %279, i32 6, !dbg !2054
  %287 = extractelement <8 x i16> %279, i32 5, !dbg !2054
  %288 = extractelement <8 x i16> %279, i32 4, !dbg !2054
  %289 = extractelement <8 x i16> %279, i32 3, !dbg !2054
  %290 = extractelement <8 x i16> %279, i32 2, !dbg !2054
  %291 = extractelement <8 x i16> %279, i32 1, !dbg !2054
  %292 = extractelement <8 x i16> %279, i32 0, !dbg !2054
  br label %293, !dbg !2054

; <label>:293:                                    ; preds = %250, %254, %275
  %294 = phi i16 [ 0, %250 ], [ %201, %254 ], [ %283, %275 ]
  %295 = phi i16 [ 0, %250 ], [ %255, %254 ], [ %292, %275 ]
  %296 = phi i16 [ 0, %250 ], [ %256, %254 ], [ %291, %275 ]
  %297 = phi i16 [ 0, %250 ], [ %257, %254 ], [ %290, %275 ]
  %298 = phi i16 [ 0, %250 ], [ %258, %254 ], [ %289, %275 ]
  %299 = phi i16 [ 0, %250 ], [ %259, %254 ], [ %288, %275 ]
  %300 = phi i16 [ 0, %250 ], [ %260, %254 ], [ %287, %275 ]
  %301 = phi i16 [ 0, %250 ], [ %261, %254 ], [ %286, %275 ]
  %302 = phi i16 [ 0, %250 ], [ %262, %254 ], [ %285, %275 ]
  %303 = icmp eq i16 %89, %197, !dbg !2067
  br i1 %303, label %329, label %304, !dbg !2069

; <label>:304:                                    ; preds = %293
  %305 = or i16 %8, %48, !dbg !2071
  %306 = and i16 %305, 32767, !dbg !2071
  %307 = or i16 %306, %194, !dbg !2071
  %308 = or i16 %307, %302, !dbg !2071
  %309 = or i16 %308, %193, !dbg !2071
  %310 = or i16 %309, %301, !dbg !2071
  %311 = or i16 %310, %192, !dbg !2071
  %312 = or i16 %311, %300, !dbg !2071
  %313 = or i16 %312, %191, !dbg !2071
  %314 = or i16 %313, %299, !dbg !2071
  %315 = or i16 %314, %190, !dbg !2071
  %316 = or i16 %315, %298, !dbg !2071
  %317 = or i16 %316, %189, !dbg !2071
  %318 = or i16 %317, %297, !dbg !2071
  %319 = or i16 %318, %188, !dbg !2071
  %320 = or i16 %319, %296, !dbg !2071
  %321 = or i16 %320, %187, !dbg !2071
  %322 = or i16 %321, %295, !dbg !2071
  %323 = or i16 %322, %186, !dbg !2071
  %324 = or i16 %323, %294, !dbg !2071
  %325 = icmp eq i16 %324, 0, !dbg !2071
  br i1 %325, label %339, label %326, !dbg !2071

; <label>:326:                                    ; preds = %304
  %327 = icmp eq i16 %89, 0, !dbg !2076
  %328 = select i1 %327, i32 1, i32 -1, !dbg !2078
  br label %339, !dbg !2078

; <label>:329:                                    ; preds = %293
  %330 = icmp eq i16 %89, 0, !dbg !2079
  %331 = select i1 %330, i32 1, i32 -1, !dbg !2081
  %332 = icmp eq i16 %9, %49, !dbg !2083
  br i1 %332, label %341, label %333, !dbg !2086

; <label>:333:                                    ; preds = %381, %375, %369, %363, %357, %351, %345, %343, %341, %329
  %334 = phi i16 [ %9, %329 ], [ %194, %341 ], [ %193, %343 ], [ %348, %345 ], [ %354, %351 ], [ %360, %357 ], [ %366, %363 ], [ %372, %369 ], [ %378, %375 ], [ %384, %381 ], !dbg !2087
  %335 = phi i16 [ %49, %329 ], [ %302, %341 ], [ %301, %343 ], [ %349, %345 ], [ %355, %351 ], [ %361, %357 ], [ %367, %363 ], [ %373, %369 ], [ %379, %375 ], [ %385, %381 ], !dbg !2088
  %336 = icmp ugt i16 %334, %335, !dbg !2089
  %337 = sub nsw i32 0, %331, !dbg !2091
  %338 = select i1 %336, i32 %331, i32 %337, !dbg !2092
  br label %339, !dbg !2092

; <label>:339:                                    ; preds = %304, %381, %78, %74, %70, %66, %62, %58, %54, %51, %38, %34, %30, %26, %22, %18, %14, %11, %333, %326, %42, %82
  %340 = phi i32 [ -2, %82 ], [ -2, %42 ], [ %328, %326 ], [ %338, %333 ], [ -2, %11 ], [ -2, %14 ], [ -2, %18 ], [ -2, %22 ], [ -2, %26 ], [ -2, %30 ], [ -2, %34 ], [ -2, %38 ], [ -2, %51 ], [ -2, %54 ], [ -2, %58 ], [ -2, %62 ], [ -2, %66 ], [ -2, %70 ], [ -2, %74 ], [ -2, %78 ], [ 0, %381 ], [ 0, %304 ], !dbg !2006
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %6) #5, !dbg !2093
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %5) #5, !dbg !2093
  ret i32 %340, !dbg !2093

; <label>:341:                                    ; preds = %329
  %342 = icmp eq i16 %194, %302, !dbg !2083
  br i1 %342, label %343, label %333, !dbg !2086

; <label>:343:                                    ; preds = %341
  %344 = icmp eq i16 %193, %301, !dbg !2083
  br i1 %344, label %345, label %333, !dbg !2086

; <label>:345:                                    ; preds = %343
  %346 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 5, !dbg !2094
  %347 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 5, !dbg !2095
  %348 = load i16, i16* %347, align 2, !dbg !2087, !tbaa !534
  %349 = load i16, i16* %346, align 2, !dbg !2088, !tbaa !534
  %350 = icmp eq i16 %348, %349, !dbg !2083
  br i1 %350, label %351, label %333, !dbg !2086

; <label>:351:                                    ; preds = %345
  %352 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 6, !dbg !2094
  %353 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 6, !dbg !2095
  %354 = load i16, i16* %353, align 4, !dbg !2087, !tbaa !534
  %355 = load i16, i16* %352, align 4, !dbg !2088, !tbaa !534
  %356 = icmp eq i16 %354, %355, !dbg !2083
  br i1 %356, label %357, label %333, !dbg !2086

; <label>:357:                                    ; preds = %351
  %358 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 7, !dbg !2094
  %359 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 7, !dbg !2095
  %360 = load i16, i16* %359, align 2, !dbg !2087, !tbaa !534
  %361 = load i16, i16* %358, align 2, !dbg !2088, !tbaa !534
  %362 = icmp eq i16 %360, %361, !dbg !2083
  br i1 %362, label %363, label %333, !dbg !2086

; <label>:363:                                    ; preds = %357
  %364 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 8, !dbg !2094
  %365 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 8, !dbg !2095
  %366 = load i16, i16* %365, align 16, !dbg !2087, !tbaa !534
  %367 = load i16, i16* %364, align 16, !dbg !2088, !tbaa !534
  %368 = icmp eq i16 %366, %367, !dbg !2083
  br i1 %368, label %369, label %333, !dbg !2086

; <label>:369:                                    ; preds = %363
  %370 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 9, !dbg !2094
  %371 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 9, !dbg !2095
  %372 = load i16, i16* %371, align 2, !dbg !2087, !tbaa !534
  %373 = load i16, i16* %370, align 2, !dbg !2088, !tbaa !534
  %374 = icmp eq i16 %372, %373, !dbg !2083
  br i1 %374, label %375, label %333, !dbg !2086

; <label>:375:                                    ; preds = %369
  %376 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 10, !dbg !2094
  %377 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 10, !dbg !2095
  %378 = load i16, i16* %377, align 4, !dbg !2087, !tbaa !534
  %379 = load i16, i16* %376, align 4, !dbg !2088, !tbaa !534
  %380 = icmp eq i16 %378, %379, !dbg !2083
  br i1 %380, label %381, label %333, !dbg !2086

; <label>:381:                                    ; preds = %375
  %382 = getelementptr inbounds [13 x i16], [13 x i16]* %4, i64 0, i64 11, !dbg !2094
  %383 = getelementptr inbounds [13 x i16], [13 x i16]* %3, i64 0, i64 11, !dbg !2095
  %384 = load i16, i16* %383, align 2, !dbg !2087, !tbaa !534
  %385 = load i16, i16* %382, align 2, !dbg !2088, !tbaa !534
  %386 = icmp eq i16 %384, %385, !dbg !2083
  br i1 %386, label %339, label %333, !dbg !2086
}

; Function Attrs: noredzone nounwind
define internal fastcc void @ediv(i16* readonly, i16* readonly, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !2096 {
  %5 = alloca [13 x i16], align 16
  %6 = alloca [13 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = bitcast [13 x i16]* %6 to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %8) #5, !dbg !2147
  %9 = bitcast [13 x i16]* %7 to i8*, !dbg !2147
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %9) #5, !dbg !2147
  %10 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2153
  %11 = load i16, i16* %10, align 2, !dbg !2153, !tbaa !534
  %12 = and i16 %11, 32767, !dbg !2154
  %13 = icmp eq i16 %12, 32767, !dbg !2155
  br i1 %13, label %14, label %75, !dbg !2156

; <label>:14:                                     ; preds = %4
  %15 = load i16, i16* %0, align 2, !dbg !2158, !tbaa !534
  %16 = icmp eq i16 %15, 0, !dbg !2159
  %17 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2160
  br i1 %16, label %18, label %49, !dbg !2162

; <label>:18:                                     ; preds = %14
  %19 = load i16, i16* %17, align 2, !dbg !2158, !tbaa !534
  %20 = icmp eq i16 %19, 0, !dbg !2159
  br i1 %20, label %21, label %49, !dbg !2162

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2163
  %23 = load i16, i16* %22, align 2, !dbg !2158, !tbaa !534
  %24 = icmp eq i16 %23, 0, !dbg !2159
  br i1 %24, label %25, label %49, !dbg !2162

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2163
  %27 = load i16, i16* %26, align 2, !dbg !2158, !tbaa !534
  %28 = icmp eq i16 %27, 0, !dbg !2159
  br i1 %28, label %29, label %49, !dbg !2162

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2163
  %31 = load i16, i16* %30, align 2, !dbg !2158, !tbaa !534
  %32 = icmp eq i16 %31, 0, !dbg !2159
  br i1 %32, label %33, label %49, !dbg !2162

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2163
  %35 = load i16, i16* %34, align 2, !dbg !2158, !tbaa !534
  %36 = icmp eq i16 %35, 0, !dbg !2159
  br i1 %36, label %37, label %49, !dbg !2162

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2163
  %39 = load i16, i16* %38, align 2, !dbg !2158, !tbaa !534
  %40 = icmp eq i16 %39, 0, !dbg !2159
  br i1 %40, label %41, label %49, !dbg !2162

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2163
  %43 = load i16, i16* %42, align 2, !dbg !2158, !tbaa !534
  %44 = icmp eq i16 %43, 0, !dbg !2159
  br i1 %44, label %45, label %49, !dbg !2162

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2163
  %47 = load i16, i16* %46, align 2, !dbg !2158, !tbaa !534
  %48 = icmp eq i16 %47, 0, !dbg !2159
  br i1 %48, label %75, label %49, !dbg !2164

; <label>:49:                                     ; preds = %14, %41, %37, %33, %29, %25, %21, %18, %45
  %50 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2169
  store i16 %15, i16* %2, align 2, !dbg !2170, !tbaa !534
  %51 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2171
  %52 = load i16, i16* %17, align 2, !dbg !2172, !tbaa !534
  %53 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2169
  store i16 %52, i16* %50, align 2, !dbg !2170, !tbaa !534
  %54 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2171
  %55 = load i16, i16* %51, align 2, !dbg !2172, !tbaa !534
  %56 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2169
  store i16 %55, i16* %53, align 2, !dbg !2170, !tbaa !534
  %57 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2171
  %58 = load i16, i16* %54, align 2, !dbg !2172, !tbaa !534
  %59 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2169
  store i16 %58, i16* %56, align 2, !dbg !2170, !tbaa !534
  %60 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2171
  %61 = load i16, i16* %57, align 2, !dbg !2172, !tbaa !534
  %62 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2169
  store i16 %61, i16* %59, align 2, !dbg !2170, !tbaa !534
  %63 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2171
  %64 = load i16, i16* %60, align 2, !dbg !2172, !tbaa !534
  %65 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2169
  store i16 %64, i16* %62, align 2, !dbg !2170, !tbaa !534
  %66 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2171
  %67 = load i16, i16* %63, align 2, !dbg !2172, !tbaa !534
  %68 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2169
  store i16 %67, i16* %65, align 2, !dbg !2170, !tbaa !534
  %69 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2171
  %70 = load i16, i16* %66, align 2, !dbg !2172, !tbaa !534
  %71 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2169
  store i16 %70, i16* %68, align 2, !dbg !2170, !tbaa !534
  %72 = load i16, i16* %69, align 2, !dbg !2172, !tbaa !534
  %73 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2169
  store i16 %72, i16* %71, align 2, !dbg !2170, !tbaa !534
  %74 = load i16, i16* %10, align 2, !dbg !2172, !tbaa !534
  store i16 %74, i16* %73, align 2, !dbg !2170, !tbaa !534
  br label %1053, !dbg !2173

; <label>:75:                                     ; preds = %4, %45
  %76 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2177
  %77 = load i16, i16* %76, align 2, !dbg !2177, !tbaa !534
  %78 = and i16 %77, 32767, !dbg !2178
  %79 = icmp eq i16 %78, 32767, !dbg !2179
  br i1 %79, label %80, label %141, !dbg !2180

; <label>:80:                                     ; preds = %75
  %81 = load i16, i16* %1, align 2, !dbg !2182, !tbaa !534
  %82 = icmp eq i16 %81, 0, !dbg !2183
  %83 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2184
  br i1 %82, label %84, label %115, !dbg !2186

; <label>:84:                                     ; preds = %80
  %85 = load i16, i16* %83, align 2, !dbg !2182, !tbaa !534
  %86 = icmp eq i16 %85, 0, !dbg !2183
  br i1 %86, label %87, label %115, !dbg !2186

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2187
  %89 = load i16, i16* %88, align 2, !dbg !2182, !tbaa !534
  %90 = icmp eq i16 %89, 0, !dbg !2183
  br i1 %90, label %91, label %115, !dbg !2186

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2187
  %93 = load i16, i16* %92, align 2, !dbg !2182, !tbaa !534
  %94 = icmp eq i16 %93, 0, !dbg !2183
  br i1 %94, label %95, label %115, !dbg !2186

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2187
  %97 = load i16, i16* %96, align 2, !dbg !2182, !tbaa !534
  %98 = icmp eq i16 %97, 0, !dbg !2183
  br i1 %98, label %99, label %115, !dbg !2186

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2187
  %101 = load i16, i16* %100, align 2, !dbg !2182, !tbaa !534
  %102 = icmp eq i16 %101, 0, !dbg !2183
  br i1 %102, label %103, label %115, !dbg !2186

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2187
  %105 = load i16, i16* %104, align 2, !dbg !2182, !tbaa !534
  %106 = icmp eq i16 %105, 0, !dbg !2183
  br i1 %106, label %107, label %115, !dbg !2186

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2187
  %109 = load i16, i16* %108, align 2, !dbg !2182, !tbaa !534
  %110 = icmp eq i16 %109, 0, !dbg !2183
  br i1 %110, label %111, label %115, !dbg !2186

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2187
  %113 = load i16, i16* %112, align 2, !dbg !2182, !tbaa !534
  %114 = icmp eq i16 %113, 0, !dbg !2183
  br i1 %114, label %141, label %115, !dbg !2188

; <label>:115:                                    ; preds = %80, %107, %103, %99, %95, %91, %87, %84, %111
  %116 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2193
  store i16 %81, i16* %2, align 2, !dbg !2194, !tbaa !534
  %117 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2195
  %118 = load i16, i16* %83, align 2, !dbg !2196, !tbaa !534
  %119 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2193
  store i16 %118, i16* %116, align 2, !dbg !2194, !tbaa !534
  %120 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2195
  %121 = load i16, i16* %117, align 2, !dbg !2196, !tbaa !534
  %122 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2193
  store i16 %121, i16* %119, align 2, !dbg !2194, !tbaa !534
  %123 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2195
  %124 = load i16, i16* %120, align 2, !dbg !2196, !tbaa !534
  %125 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2193
  store i16 %124, i16* %122, align 2, !dbg !2194, !tbaa !534
  %126 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2195
  %127 = load i16, i16* %123, align 2, !dbg !2196, !tbaa !534
  %128 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2193
  store i16 %127, i16* %125, align 2, !dbg !2194, !tbaa !534
  %129 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2195
  %130 = load i16, i16* %126, align 2, !dbg !2196, !tbaa !534
  %131 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2193
  store i16 %130, i16* %128, align 2, !dbg !2194, !tbaa !534
  %132 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2195
  %133 = load i16, i16* %129, align 2, !dbg !2196, !tbaa !534
  %134 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2193
  store i16 %133, i16* %131, align 2, !dbg !2194, !tbaa !534
  %135 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2195
  %136 = load i16, i16* %132, align 2, !dbg !2196, !tbaa !534
  %137 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2193
  store i16 %136, i16* %134, align 2, !dbg !2194, !tbaa !534
  %138 = load i16, i16* %135, align 2, !dbg !2196, !tbaa !534
  %139 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2193
  store i16 %138, i16* %137, align 2, !dbg !2194, !tbaa !534
  %140 = load i16, i16* %76, align 2, !dbg !2196, !tbaa !534
  store i16 %140, i16* %139, align 2, !dbg !2194, !tbaa !534
  br label %1053, !dbg !2197

; <label>:141:                                    ; preds = %75, %111
  %142 = tail call fastcc i32 @ecmp(i16* nonnull %0, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #7, !dbg !2198
  %143 = icmp eq i32 %142, 0, !dbg !2200
  br i1 %143, label %144, label %147, !dbg !2201

; <label>:144:                                    ; preds = %141
  %145 = tail call fastcc i32 @ecmp(i16* nonnull %1, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #7, !dbg !2202
  %146 = icmp eq i32 %145, 0, !dbg !2203
  br i1 %146, label %219, label %147, !dbg !2204

; <label>:147:                                    ; preds = %144, %141
  br i1 %13, label %148, label %223, !dbg !2207

; <label>:148:                                    ; preds = %147
  %149 = load i16, i16* %0, align 2, !dbg !2211, !tbaa !534
  %150 = icmp eq i16 %149, 0, !dbg !2212
  br i1 %150, label %151, label %223, !dbg !2213

; <label>:151:                                    ; preds = %148
  %152 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2214
  %153 = load i16, i16* %152, align 2, !dbg !2211, !tbaa !534
  %154 = icmp eq i16 %153, 0, !dbg !2212
  br i1 %154, label %155, label %223, !dbg !2213

; <label>:155:                                    ; preds = %151
  %156 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2214
  %157 = load i16, i16* %156, align 2, !dbg !2211, !tbaa !534
  %158 = icmp eq i16 %157, 0, !dbg !2212
  br i1 %158, label %159, label %223, !dbg !2213

; <label>:159:                                    ; preds = %155
  %160 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2214
  %161 = load i16, i16* %160, align 2, !dbg !2211, !tbaa !534
  %162 = icmp eq i16 %161, 0, !dbg !2212
  br i1 %162, label %163, label %223, !dbg !2213

; <label>:163:                                    ; preds = %159
  %164 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2214
  %165 = load i16, i16* %164, align 2, !dbg !2211, !tbaa !534
  %166 = icmp eq i16 %165, 0, !dbg !2212
  br i1 %166, label %167, label %223, !dbg !2213

; <label>:167:                                    ; preds = %163
  %168 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2214
  %169 = load i16, i16* %168, align 2, !dbg !2211, !tbaa !534
  %170 = icmp eq i16 %169, 0, !dbg !2212
  br i1 %170, label %171, label %223, !dbg !2213

; <label>:171:                                    ; preds = %167
  %172 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2214
  %173 = load i16, i16* %172, align 2, !dbg !2211, !tbaa !534
  %174 = icmp eq i16 %173, 0, !dbg !2212
  br i1 %174, label %175, label %223, !dbg !2213

; <label>:175:                                    ; preds = %171
  %176 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2214
  %177 = load i16, i16* %176, align 2, !dbg !2211, !tbaa !534
  %178 = icmp eq i16 %177, 0, !dbg !2212
  br i1 %178, label %179, label %223, !dbg !2213

; <label>:179:                                    ; preds = %175
  %180 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2214
  %181 = load i16, i16* %180, align 2, !dbg !2211, !tbaa !534
  %182 = icmp eq i16 %181, 0, !dbg !2212
  br i1 %182, label %183, label %223, !dbg !2215

; <label>:183:                                    ; preds = %179
  br i1 %79, label %184, label %311, !dbg !2218

; <label>:184:                                    ; preds = %183
  %185 = load i16, i16* %1, align 2, !dbg !2222, !tbaa !534
  %186 = icmp eq i16 %185, 0, !dbg !2223
  br i1 %186, label %187, label %311, !dbg !2224

; <label>:187:                                    ; preds = %184
  %188 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2225
  %189 = load i16, i16* %188, align 2, !dbg !2222, !tbaa !534
  %190 = icmp eq i16 %189, 0, !dbg !2223
  br i1 %190, label %191, label %227, !dbg !2224

; <label>:191:                                    ; preds = %187
  %192 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2225
  %193 = load i16, i16* %192, align 2, !dbg !2222, !tbaa !534
  %194 = icmp eq i16 %193, 0, !dbg !2223
  br i1 %194, label %195, label %227, !dbg !2224

; <label>:195:                                    ; preds = %191
  %196 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2225
  %197 = load i16, i16* %196, align 2, !dbg !2222, !tbaa !534
  %198 = icmp eq i16 %197, 0, !dbg !2223
  br i1 %198, label %199, label %227, !dbg !2224

; <label>:199:                                    ; preds = %195
  %200 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2225
  %201 = load i16, i16* %200, align 2, !dbg !2222, !tbaa !534
  %202 = icmp eq i16 %201, 0, !dbg !2223
  br i1 %202, label %203, label %227, !dbg !2224

; <label>:203:                                    ; preds = %199
  %204 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2225
  %205 = load i16, i16* %204, align 2, !dbg !2222, !tbaa !534
  %206 = icmp eq i16 %205, 0, !dbg !2223
  br i1 %206, label %207, label %227, !dbg !2224

; <label>:207:                                    ; preds = %203
  %208 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2225
  %209 = load i16, i16* %208, align 2, !dbg !2222, !tbaa !534
  %210 = icmp eq i16 %209, 0, !dbg !2223
  br i1 %210, label %211, label %227, !dbg !2224

; <label>:211:                                    ; preds = %207
  %212 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2225
  %213 = load i16, i16* %212, align 2, !dbg !2222, !tbaa !534
  %214 = icmp eq i16 %213, 0, !dbg !2223
  br i1 %214, label %215, label %227, !dbg !2224

; <label>:215:                                    ; preds = %211
  %216 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2225
  %217 = load i16, i16* %216, align 2, !dbg !2222, !tbaa !534
  %218 = icmp eq i16 %217, 0, !dbg !2223
  br i1 %218, label %219, label %227, !dbg !2226

; <label>:219:                                    ; preds = %215, %144
  %220 = getelementptr i16, i16* %2, i64 8, !dbg !2232
  %221 = bitcast i16* %2 to <8 x i16>*, !dbg !2233
  store <8 x i16> zeroinitializer, <8 x i16>* %221, align 2, !dbg !2233, !tbaa !534
  %222 = getelementptr i16, i16* %2, i64 9, !dbg !2232
  store i16 -16384, i16* %220, align 2, !dbg !2234, !tbaa !534
  store i16 32767, i16* %222, align 2, !dbg !2235, !tbaa !534
  br label %1053, !dbg !2236

; <label>:223:                                    ; preds = %179, %147, %148, %151, %155, %159, %163, %167, %171, %175
  br i1 %79, label %224, label %307, !dbg !2240

; <label>:224:                                    ; preds = %223
  %225 = load i16, i16* %1, align 2, !dbg !2241, !tbaa !534
  %226 = icmp eq i16 %225, 0, !dbg !2245
  br i1 %226, label %227, label %307, !dbg !2246

; <label>:227:                                    ; preds = %187, %191, %195, %199, %203, %207, %211, %215, %224
  %228 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2247
  %229 = load i16, i16* %228, align 2, !dbg !2241, !tbaa !534
  %230 = icmp eq i16 %229, 0, !dbg !2245
  br i1 %230, label %231, label %307, !dbg !2246

; <label>:231:                                    ; preds = %227
  %232 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2247
  %233 = load i16, i16* %232, align 2, !dbg !2241, !tbaa !534
  %234 = icmp eq i16 %233, 0, !dbg !2245
  br i1 %234, label %235, label %307, !dbg !2246

; <label>:235:                                    ; preds = %231
  %236 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2247
  %237 = load i16, i16* %236, align 2, !dbg !2241, !tbaa !534
  %238 = icmp eq i16 %237, 0, !dbg !2245
  br i1 %238, label %239, label %307, !dbg !2246

; <label>:239:                                    ; preds = %235
  %240 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2247
  %241 = load i16, i16* %240, align 2, !dbg !2241, !tbaa !534
  %242 = icmp eq i16 %241, 0, !dbg !2245
  br i1 %242, label %243, label %307, !dbg !2246

; <label>:243:                                    ; preds = %239
  %244 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2247
  %245 = load i16, i16* %244, align 2, !dbg !2241, !tbaa !534
  %246 = icmp eq i16 %245, 0, !dbg !2245
  br i1 %246, label %247, label %307, !dbg !2246

; <label>:247:                                    ; preds = %243
  %248 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2247
  %249 = load i16, i16* %248, align 2, !dbg !2241, !tbaa !534
  %250 = icmp eq i16 %249, 0, !dbg !2245
  br i1 %250, label %251, label %307, !dbg !2246

; <label>:251:                                    ; preds = %247
  %252 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2247
  %253 = load i16, i16* %252, align 2, !dbg !2241, !tbaa !534
  %254 = icmp eq i16 %253, 0, !dbg !2245
  br i1 %254, label %255, label %307, !dbg !2246

; <label>:255:                                    ; preds = %251
  %256 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2247
  %257 = load i16, i16* %256, align 2, !dbg !2241, !tbaa !534
  %258 = icmp eq i16 %257, 0, !dbg !2245
  br i1 %258, label %259, label %307, !dbg !2248

; <label>:259:                                    ; preds = %255
  br i1 %13, label %260, label %295, !dbg !2255

; <label>:260:                                    ; preds = %259
  %261 = load i16, i16* %0, align 2, !dbg !2257, !tbaa !534
  %262 = icmp eq i16 %261, 0, !dbg !2258
  br i1 %262, label %263, label %298, !dbg !2259

; <label>:263:                                    ; preds = %260
  %264 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2260
  %265 = load i16, i16* %264, align 2, !dbg !2257, !tbaa !534
  %266 = icmp eq i16 %265, 0, !dbg !2258
  br i1 %266, label %267, label %298, !dbg !2259

; <label>:267:                                    ; preds = %263
  %268 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2260
  %269 = load i16, i16* %268, align 2, !dbg !2257, !tbaa !534
  %270 = icmp eq i16 %269, 0, !dbg !2258
  br i1 %270, label %271, label %298, !dbg !2259

; <label>:271:                                    ; preds = %267
  %272 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2260
  %273 = load i16, i16* %272, align 2, !dbg !2257, !tbaa !534
  %274 = icmp eq i16 %273, 0, !dbg !2258
  br i1 %274, label %275, label %298, !dbg !2259

; <label>:275:                                    ; preds = %271
  %276 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2260
  %277 = load i16, i16* %276, align 2, !dbg !2257, !tbaa !534
  %278 = icmp eq i16 %277, 0, !dbg !2258
  br i1 %278, label %279, label %298, !dbg !2259

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2260
  %281 = load i16, i16* %280, align 2, !dbg !2257, !tbaa !534
  %282 = icmp eq i16 %281, 0, !dbg !2258
  br i1 %282, label %283, label %298, !dbg !2259

; <label>:283:                                    ; preds = %279
  %284 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2260
  %285 = load i16, i16* %284, align 2, !dbg !2257, !tbaa !534
  %286 = icmp eq i16 %285, 0, !dbg !2258
  br i1 %286, label %287, label %298, !dbg !2259

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2260
  %289 = load i16, i16* %288, align 2, !dbg !2257, !tbaa !534
  %290 = icmp eq i16 %289, 0, !dbg !2258
  br i1 %290, label %291, label %298, !dbg !2259

; <label>:291:                                    ; preds = %287
  %292 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2260
  %293 = load i16, i16* %292, align 2, !dbg !2257, !tbaa !534
  %294 = icmp eq i16 %293, 0, !dbg !2258
  br i1 %294, label %295, label %298, !dbg !2261

; <label>:295:                                    ; preds = %291, %259
  %296 = lshr i16 %11, 15, !dbg !2262
  %297 = zext i16 %296 to i32, !dbg !2262
  br label %298, !dbg !2262

; <label>:298:                                    ; preds = %295, %291, %287, %283, %279, %275, %271, %267, %263, %260
  %299 = phi i32 [ 0, %291 ], [ %297, %295 ], [ 0, %260 ], [ 0, %263 ], [ 0, %267 ], [ 0, %271 ], [ 0, %275 ], [ 0, %279 ], [ 0, %283 ], [ 0, %287 ], !dbg !2264
  %300 = lshr i16 %77, 15, !dbg !2270
  %301 = zext i16 %300 to i32, !dbg !2270
  %302 = icmp eq i32 %299, %301, !dbg !2271
  %303 = getelementptr i16, i16* %2, i64 9, !dbg !2272
  %304 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2277
  %305 = bitcast i16* %2 to <8 x i16>*, !dbg !2278
  store <8 x i16> zeroinitializer, <8 x i16>* %305, align 2, !dbg !2278, !tbaa !534
  store i16 0, i16* %304, align 2, !dbg !2278, !tbaa !534
  %306 = select i1 %302, i16 32767, i16 -1, !dbg !2279
  store i16 %306, i16* %303, align 2, !dbg !2279, !tbaa !534
  br label %1053, !dbg !2280

; <label>:307:                                    ; preds = %255, %223, %224, %227, %231, %235, %239, %243, %247, %251
  br i1 %13, label %308, label %347, !dbg !2284

; <label>:308:                                    ; preds = %307
  %309 = load i16, i16* %0, align 2, !dbg !2285, !tbaa !534
  %310 = icmp eq i16 %309, 0, !dbg !2289
  br i1 %310, label %311, label %347, !dbg !2290

; <label>:311:                                    ; preds = %183, %184, %308
  %312 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2291
  %313 = load i16, i16* %312, align 2, !dbg !2285, !tbaa !534
  %314 = icmp eq i16 %313, 0, !dbg !2289
  br i1 %314, label %315, label %347, !dbg !2290

; <label>:315:                                    ; preds = %311
  %316 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2291
  %317 = load i16, i16* %316, align 2, !dbg !2285, !tbaa !534
  %318 = icmp eq i16 %317, 0, !dbg !2289
  br i1 %318, label %319, label %347, !dbg !2290

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2291
  %321 = load i16, i16* %320, align 2, !dbg !2285, !tbaa !534
  %322 = icmp eq i16 %321, 0, !dbg !2289
  br i1 %322, label %323, label %347, !dbg !2290

; <label>:323:                                    ; preds = %319
  %324 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2291
  %325 = load i16, i16* %324, align 2, !dbg !2285, !tbaa !534
  %326 = icmp eq i16 %325, 0, !dbg !2289
  br i1 %326, label %327, label %347, !dbg !2290

; <label>:327:                                    ; preds = %323
  %328 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2291
  %329 = load i16, i16* %328, align 2, !dbg !2285, !tbaa !534
  %330 = icmp eq i16 %329, 0, !dbg !2289
  br i1 %330, label %331, label %347, !dbg !2290

; <label>:331:                                    ; preds = %327
  %332 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2291
  %333 = load i16, i16* %332, align 2, !dbg !2285, !tbaa !534
  %334 = icmp eq i16 %333, 0, !dbg !2289
  br i1 %334, label %335, label %347, !dbg !2290

; <label>:335:                                    ; preds = %331
  %336 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2291
  %337 = load i16, i16* %336, align 2, !dbg !2285, !tbaa !534
  %338 = icmp eq i16 %337, 0, !dbg !2289
  br i1 %338, label %339, label %347, !dbg !2290

; <label>:339:                                    ; preds = %335
  %340 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2291
  %341 = load i16, i16* %340, align 2, !dbg !2285, !tbaa !534
  %342 = icmp eq i16 %341, 0, !dbg !2289
  br i1 %342, label %343, label %347, !dbg !2292

; <label>:343:                                    ; preds = %339
  %344 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2297
  %345 = bitcast i16* %2 to <8 x i16>*, !dbg !2298
  store <8 x i16> zeroinitializer, <8 x i16>* %345, align 2, !dbg !2298, !tbaa !534
  %346 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2297
  store i16 0, i16* %344, align 2, !dbg !2298, !tbaa !534
  store i16 0, i16* %346, align 2, !dbg !2298, !tbaa !534
  br label %1053, !dbg !2299

; <label>:347:                                    ; preds = %339, %307, %308, %311, %315, %319, %323, %327, %331, %335
  %348 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 0, !dbg !2300
  %349 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 1, !dbg !2306
  %350 = ashr i16 %11, 15, !dbg !2307
  store i16 %350, i16* %348, align 16, !dbg !2306, !tbaa !534
  %351 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2308
  %352 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 2, !dbg !2309
  store i16 %12, i16* %349, align 2, !dbg !2310, !tbaa !534
  br i1 %13, label %353, label %428, !dbg !2311

; <label>:353:                                    ; preds = %347
  %354 = load i16, i16* %0, align 2, !dbg !2315, !tbaa !534
  %355 = getelementptr inbounds i16, i16* %0, i64 1
  %356 = load i16, i16* %355, align 2, !dbg !2316, !tbaa !534
  %357 = or i16 %354, %356, !dbg !2317
  %358 = icmp eq i16 %357, 0, !dbg !2317
  br i1 %358, label %359, label %383, !dbg !2317

; <label>:359:                                    ; preds = %353
  %360 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2318
  %361 = load i16, i16* %360, align 2, !dbg !2315, !tbaa !534
  %362 = icmp eq i16 %361, 0, !dbg !2319
  br i1 %362, label %363, label %383, !dbg !2317

; <label>:363:                                    ; preds = %359
  %364 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2318
  %365 = load i16, i16* %364, align 2, !dbg !2315, !tbaa !534
  %366 = icmp eq i16 %365, 0, !dbg !2319
  br i1 %366, label %367, label %383, !dbg !2317

; <label>:367:                                    ; preds = %363
  %368 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2318
  %369 = load i16, i16* %368, align 2, !dbg !2315, !tbaa !534
  %370 = icmp eq i16 %369, 0, !dbg !2319
  br i1 %370, label %371, label %383, !dbg !2317

; <label>:371:                                    ; preds = %367
  %372 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2318
  %373 = load i16, i16* %372, align 2, !dbg !2315, !tbaa !534
  %374 = icmp eq i16 %373, 0, !dbg !2319
  br i1 %374, label %375, label %383, !dbg !2317

; <label>:375:                                    ; preds = %371
  %376 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2318
  %377 = load i16, i16* %376, align 2, !dbg !2315, !tbaa !534
  %378 = icmp eq i16 %377, 0, !dbg !2319
  br i1 %378, label %379, label %383, !dbg !2317

; <label>:379:                                    ; preds = %375
  %380 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2318
  %381 = load i16, i16* %380, align 2, !dbg !2315, !tbaa !534
  %382 = icmp eq i16 %381, 0, !dbg !2319
  br i1 %382, label %399, label %383, !dbg !2317

; <label>:383:                                    ; preds = %353, %379, %375, %371, %367, %363, %359
  %384 = phi i16 [ 0, %379 ], [ 0, %375 ], [ 0, %371 ], [ 0, %367 ], [ 0, %363 ], [ 0, %359 ], [ %356, %353 ], !dbg !2320
  %385 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2321
  store i16 0, i16* %352, align 4, !dbg !2321, !tbaa !534
  %386 = load i16, i16* %351, align 2, !dbg !2320, !tbaa !534
  %387 = getelementptr inbounds i16, i16* %0, i64 7
  %388 = load i16, i16* %387, align 2, !dbg !2320, !tbaa !534
  %389 = getelementptr inbounds i16, i16* %0, i64 6
  %390 = load i16, i16* %389, align 2, !dbg !2320, !tbaa !534
  %391 = getelementptr inbounds i16, i16* %0, i64 5
  %392 = load i16, i16* %391, align 2, !dbg !2320, !tbaa !534
  %393 = getelementptr inbounds i16, i16* %0, i64 4
  %394 = load i16, i16* %393, align 2, !dbg !2320, !tbaa !534
  %395 = getelementptr inbounds i16, i16* %0, i64 3
  %396 = load i16, i16* %395, align 2, !dbg !2320, !tbaa !534
  %397 = getelementptr inbounds i16, i16* %0, i64 2
  %398 = load i16, i16* %397, align 2, !dbg !2320, !tbaa !534
  br label %407, !dbg !2323

; <label>:399:                                    ; preds = %379
  %400 = load i16, i16* %351, align 2, !dbg !2315, !tbaa !534
  %401 = icmp eq i16 %400, 0, !dbg !2319
  %402 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2321
  store i16 0, i16* %352, align 4, !dbg !2321, !tbaa !534
  br i1 %401, label %403, label %407, !dbg !2323

; <label>:403:                                    ; preds = %399
  %404 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2324
  %405 = bitcast i16* %402 to <8 x i16>*, !dbg !2325
  store <8 x i16> zeroinitializer, <8 x i16>* %405, align 2, !dbg !2325, !tbaa !534
  %406 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2324
  store i16 0, i16* %404, align 2, !dbg !2325, !tbaa !534
  store i16 0, i16* %406, align 8, !dbg !2325, !tbaa !534
  br label %438, !dbg !2326

; <label>:407:                                    ; preds = %383, %399
  %408 = phi i16 [ %384, %383 ], [ 0, %399 ], !dbg !2320
  %409 = phi i16 [ %398, %383 ], [ 0, %399 ], !dbg !2320
  %410 = phi i16 [ %396, %383 ], [ 0, %399 ], !dbg !2320
  %411 = phi i16 [ %394, %383 ], [ 0, %399 ], !dbg !2320
  %412 = phi i16 [ %392, %383 ], [ 0, %399 ], !dbg !2320
  %413 = phi i16 [ %390, %383 ], [ 0, %399 ], !dbg !2320
  %414 = phi i16 [ %388, %383 ], [ 0, %399 ], !dbg !2320
  %415 = phi i16 [ %386, %383 ], [ %400, %399 ], !dbg !2320
  %416 = phi i16* [ %385, %383 ], [ %402, %399 ]
  %417 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4, !dbg !2327
  store i16 %415, i16* %416, align 2, !dbg !2328, !tbaa !534
  %418 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5, !dbg !2327
  store i16 %414, i16* %417, align 8, !dbg !2328, !tbaa !534
  %419 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6, !dbg !2327
  store i16 %413, i16* %418, align 2, !dbg !2328, !tbaa !534
  %420 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7, !dbg !2327
  store i16 %412, i16* %419, align 4, !dbg !2328, !tbaa !534
  %421 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8, !dbg !2327
  store i16 %411, i16* %420, align 2, !dbg !2328, !tbaa !534
  %422 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9, !dbg !2327
  store i16 %410, i16* %421, align 16, !dbg !2328, !tbaa !534
  %423 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10, !dbg !2327
  store i16 %409, i16* %422, align 2, !dbg !2328, !tbaa !534
  %424 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2327
  store i16 %408, i16* %423, align 4, !dbg !2328, !tbaa !534
  %425 = getelementptr inbounds i16, i16* %0, i64 -1, !dbg !2329
  %426 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2327
  store i16 %354, i16* %424, align 2, !dbg !2328, !tbaa !534
  %427 = load i16, i16* %425, align 2, !dbg !2320, !tbaa !534
  store i16 %427, i16* %426, align 8, !dbg !2328, !tbaa !534
  br label %438, !dbg !2326

; <label>:428:                                    ; preds = %347
  %429 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2330
  store i16 0, i16* %352, align 4, !dbg !2331, !tbaa !534
  %430 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2332
  %431 = bitcast i16* %430 to <8 x i16>*, !dbg !2333
  %432 = load <8 x i16>, <8 x i16>* %431, align 2, !dbg !2333, !tbaa !534
  %433 = shufflevector <8 x i16> %432, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2333
  %434 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2334
  %435 = bitcast i16* %429 to <8 x i16>*, !dbg !2335
  store <8 x i16> %433, <8 x i16>* %435, align 2, !dbg !2335, !tbaa !534
  %436 = load i16, i16* %0, align 2, !dbg !2333, !tbaa !534
  store i16 %436, i16* %434, align 2, !dbg !2335, !tbaa !534
  %437 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2336
  store i16 0, i16* %437, align 8, !dbg !2337, !tbaa !534
  br label %438, !dbg !2326

; <label>:438:                                    ; preds = %403, %407, %428
  %439 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0, !dbg !2338
  %440 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 1, !dbg !2344
  %441 = ashr i16 %77, 15, !dbg !2345
  store i16 %441, i16* %439, align 16, !dbg !2344, !tbaa !534
  %442 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2346
  %443 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2347
  store i16 %78, i16* %440, align 2, !dbg !2348, !tbaa !534
  br i1 %79, label %444, label %521, !dbg !2349

; <label>:444:                                    ; preds = %438
  %445 = load i16, i16* %1, align 2, !dbg !2353, !tbaa !534
  %446 = getelementptr inbounds i16, i16* %1, i64 1
  %447 = load i16, i16* %446, align 2, !dbg !2316, !tbaa !534
  %448 = or i16 %445, %447, !dbg !2354
  %449 = icmp eq i16 %448, 0, !dbg !2354
  br i1 %449, label %450, label %474, !dbg !2354

; <label>:450:                                    ; preds = %444
  %451 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2355
  %452 = load i16, i16* %451, align 2, !dbg !2353, !tbaa !534
  %453 = icmp eq i16 %452, 0, !dbg !2356
  br i1 %453, label %454, label %474, !dbg !2354

; <label>:454:                                    ; preds = %450
  %455 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2355
  %456 = load i16, i16* %455, align 2, !dbg !2353, !tbaa !534
  %457 = icmp eq i16 %456, 0, !dbg !2356
  br i1 %457, label %458, label %474, !dbg !2354

; <label>:458:                                    ; preds = %454
  %459 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2355
  %460 = load i16, i16* %459, align 2, !dbg !2353, !tbaa !534
  %461 = icmp eq i16 %460, 0, !dbg !2356
  br i1 %461, label %462, label %474, !dbg !2354

; <label>:462:                                    ; preds = %458
  %463 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2355
  %464 = load i16, i16* %463, align 2, !dbg !2353, !tbaa !534
  %465 = icmp eq i16 %464, 0, !dbg !2356
  br i1 %465, label %466, label %474, !dbg !2354

; <label>:466:                                    ; preds = %462
  %467 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2355
  %468 = load i16, i16* %467, align 2, !dbg !2353, !tbaa !534
  %469 = icmp eq i16 %468, 0, !dbg !2356
  br i1 %469, label %470, label %474, !dbg !2354

; <label>:470:                                    ; preds = %466
  %471 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2355
  %472 = load i16, i16* %471, align 2, !dbg !2353, !tbaa !534
  %473 = icmp eq i16 %472, 0, !dbg !2356
  br i1 %473, label %490, label %474, !dbg !2354

; <label>:474:                                    ; preds = %444, %470, %466, %462, %458, %454, %450
  %475 = phi i16 [ 0, %470 ], [ 0, %466 ], [ 0, %462 ], [ 0, %458 ], [ 0, %454 ], [ 0, %450 ], [ %447, %444 ], !dbg !2357
  %476 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2358
  store i16 0, i16* %443, align 4, !dbg !2358, !tbaa !534
  %477 = load i16, i16* %442, align 2, !dbg !2357, !tbaa !534
  %478 = getelementptr inbounds i16, i16* %1, i64 7
  %479 = load i16, i16* %478, align 2, !dbg !2357, !tbaa !534
  %480 = getelementptr inbounds i16, i16* %1, i64 6
  %481 = load i16, i16* %480, align 2, !dbg !2357, !tbaa !534
  %482 = getelementptr inbounds i16, i16* %1, i64 5
  %483 = load i16, i16* %482, align 2, !dbg !2357, !tbaa !534
  %484 = getelementptr inbounds i16, i16* %1, i64 4
  %485 = load i16, i16* %484, align 2, !dbg !2357, !tbaa !534
  %486 = getelementptr inbounds i16, i16* %1, i64 3
  %487 = load i16, i16* %486, align 2, !dbg !2357, !tbaa !534
  %488 = getelementptr inbounds i16, i16* %1, i64 2
  %489 = load i16, i16* %488, align 2, !dbg !2357, !tbaa !534
  br label %498, !dbg !2360

; <label>:490:                                    ; preds = %470
  %491 = load i16, i16* %442, align 2, !dbg !2353, !tbaa !534
  %492 = icmp eq i16 %491, 0, !dbg !2356
  %493 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2358
  store i16 0, i16* %443, align 4, !dbg !2358, !tbaa !534
  br i1 %492, label %494, label %498, !dbg !2360

; <label>:494:                                    ; preds = %490
  %495 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2361
  %496 = bitcast i16* %493 to <8 x i16>*, !dbg !2362
  store <8 x i16> zeroinitializer, <8 x i16>* %496, align 2, !dbg !2362, !tbaa !534
  %497 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2361
  store i16 0, i16* %495, align 2, !dbg !2362, !tbaa !534
  store i16 0, i16* %497, align 8, !dbg !2362, !tbaa !534
  br label %519, !dbg !2363

; <label>:498:                                    ; preds = %474, %490
  %499 = phi i16 [ %475, %474 ], [ 0, %490 ], !dbg !2357
  %500 = phi i16 [ %489, %474 ], [ 0, %490 ], !dbg !2357
  %501 = phi i16 [ %487, %474 ], [ 0, %490 ], !dbg !2357
  %502 = phi i16 [ %485, %474 ], [ 0, %490 ], !dbg !2357
  %503 = phi i16 [ %483, %474 ], [ 0, %490 ], !dbg !2357
  %504 = phi i16 [ %481, %474 ], [ 0, %490 ], !dbg !2357
  %505 = phi i16 [ %479, %474 ], [ 0, %490 ], !dbg !2357
  %506 = phi i16 [ %477, %474 ], [ %491, %490 ], !dbg !2357
  %507 = phi i16* [ %476, %474 ], [ %493, %490 ]
  %508 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2364
  store i16 %506, i16* %507, align 2, !dbg !2365, !tbaa !534
  %509 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2364
  store i16 %505, i16* %508, align 8, !dbg !2365, !tbaa !534
  %510 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2364
  store i16 %504, i16* %509, align 2, !dbg !2365, !tbaa !534
  %511 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2364
  store i16 %503, i16* %510, align 4, !dbg !2365, !tbaa !534
  %512 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2364
  store i16 %502, i16* %511, align 2, !dbg !2365, !tbaa !534
  %513 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2364
  store i16 %501, i16* %512, align 16, !dbg !2365, !tbaa !534
  %514 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2364
  store i16 %500, i16* %513, align 2, !dbg !2365, !tbaa !534
  %515 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2364
  store i16 %499, i16* %514, align 4, !dbg !2365, !tbaa !534
  %516 = getelementptr inbounds i16, i16* %1, i64 -1, !dbg !2366
  %517 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2364
  store i16 %445, i16* %515, align 2, !dbg !2365, !tbaa !534
  %518 = load i16, i16* %516, align 2, !dbg !2357, !tbaa !534
  store i16 %518, i16* %517, align 8, !dbg !2365, !tbaa !534
  br label %519, !dbg !2363

; <label>:519:                                    ; preds = %494, %498
  %520 = zext i16 %12 to i64, !dbg !2367
  br label %539, !dbg !2370

; <label>:521:                                    ; preds = %438
  %522 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2371
  store i16 0, i16* %443, align 4, !dbg !2372, !tbaa !534
  %523 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2373
  %524 = bitcast i16* %523 to <8 x i16>*, !dbg !2374
  %525 = load <8 x i16>, <8 x i16>* %524, align 2, !dbg !2374, !tbaa !534
  %526 = shufflevector <8 x i16> %525, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2374
  %527 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2375
  %528 = bitcast i16* %522 to <8 x i16>*, !dbg !2376
  store <8 x i16> %526, <8 x i16>* %528, align 2, !dbg !2376, !tbaa !534
  %529 = load i16, i16* %1, align 2, !dbg !2374, !tbaa !534
  store i16 %529, i16* %527, align 2, !dbg !2376, !tbaa !534
  %530 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2377
  store i16 0, i16* %530, align 8, !dbg !2378, !tbaa !534
  %531 = zext i16 %12 to i64, !dbg !2367
  %532 = zext i16 %78 to i64, !dbg !2379
  %533 = icmp eq i16 %78, 0, !dbg !2380
  br i1 %533, label %1098, label %539, !dbg !2370

; <label>:534:                                    ; preds = %1098
  %535 = call fastcc i32 @enormlz(i16* nonnull %439) #7, !dbg !2382
  %536 = sext i32 %535 to i64, !dbg !2382
  %537 = sub nsw i64 %532, %536, !dbg !2389
  %538 = load i16, i16* %349, align 2, !dbg !2390, !tbaa !534
  br label %539, !dbg !2392

; <label>:539:                                    ; preds = %519, %521, %534
  %540 = phi i64 [ %531, %534 ], [ %531, %521 ], [ %520, %519 ]
  %541 = phi i16 [ %538, %534 ], [ %12, %521 ], [ %12, %519 ], !dbg !2390
  %542 = phi i64 [ %537, %534 ], [ %532, %521 ], [ 32767, %519 ], !dbg !2316
  %543 = icmp eq i16 %541, 0, !dbg !2393
  br i1 %543, label %544, label %551, !dbg !2394

; <label>:544:                                    ; preds = %539
  %545 = load i16, i16* %352, align 4, !dbg !2396, !tbaa !534
  %546 = icmp eq i16 %545, 0, !dbg !2402
  br i1 %546, label %1054, label %547, !dbg !2403

; <label>:547:                                    ; preds = %1086, %1082, %1078, %1074, %1070, %1066, %1062, %1058, %1054, %544
  %548 = call fastcc i32 @enormlz(i16* nonnull %348) #7, !dbg !2404
  %549 = sext i32 %548 to i64, !dbg !2404
  %550 = sub nsw i64 %540, %549, !dbg !2406
  br label %551, !dbg !2407

; <label>:551:                                    ; preds = %539, %547
  %552 = phi i64 [ %550, %547 ], [ %540, %539 ], !dbg !2316
  %553 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 0, !dbg !2411
  %554 = load i16, i16* %439, align 16, !dbg !2414, !tbaa !534
  %555 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 1, !dbg !2415
  store i16 %554, i16* %553, align 2, !dbg !2416, !tbaa !534
  %556 = load i16, i16* %440, align 2, !dbg !2417, !tbaa !534
  %557 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 2, !dbg !2418
  store i16 %556, i16* %555, align 2, !dbg !2419, !tbaa !534
  %558 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 8, !dbg !2421
  %559 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 9, !dbg !2421
  %560 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 10, !dbg !2421
  %561 = bitcast i16* %557 to <8 x i16>*, !dbg !2425
  store <8 x i16> zeroinitializer, <8 x i16>* %561, align 2, !dbg !2425, !tbaa !534
  %562 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 11, !dbg !2421
  store i16 0, i16* %560, align 2, !dbg !2425, !tbaa !534
  %563 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 12, !dbg !2421
  store i16 0, i16* %562, align 2, !dbg !2425, !tbaa !534
  store i16 0, i16* %563, align 2, !dbg !2425, !tbaa !534
  %564 = load i16, i16* %443, align 4, !dbg !2430, !tbaa !534
  %565 = lshr i16 %564, 1, !dbg !2431
  store i16 %565, i16* %443, align 4, !dbg !2432, !tbaa !534
  %566 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2433
  %567 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2433
  %568 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2433
  %569 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2433
  %570 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2433
  %571 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2433
  %572 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2433
  %573 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2433
  %574 = bitcast i16* %566 to <8 x i16>*, !dbg !2430
  %575 = load <8 x i16>, <8 x i16>* %574, align 2, !dbg !2430, !tbaa !534
  %576 = lshr <8 x i16> %575, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !2431
  %577 = insertelement <8 x i16> undef, i16 %564, i32 0, !dbg !2434
  %578 = shufflevector <8 x i16> %577, <8 x i16> %575, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !2434
  %579 = shl <8 x i16> %578, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !2434
  %580 = or <8 x i16> %576, %579, !dbg !2434
  %581 = bitcast i16* %566 to <8 x i16>*, !dbg !2432
  store <8 x i16> %580, <8 x i16>* %581, align 2, !dbg !2432, !tbaa !534
  %582 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2433
  %583 = load i16, i16* %582, align 2, !dbg !2430, !tbaa !534
  %584 = lshr i16 %583, 1, !dbg !2431
  %585 = extractelement <8 x i16> %575, i32 7, !dbg !2434
  %586 = shl i16 %585, 15, !dbg !2434
  %587 = or i16 %584, %586, !dbg !2434
  store i16 %587, i16* %582, align 2, !dbg !2432, !tbaa !534
  %588 = shl i16 %583, 15, !dbg !2435
  %589 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2433
  %590 = load i16, i16* %589, align 8, !dbg !2430, !tbaa !534
  %591 = lshr i16 %590, 1, !dbg !2431
  %592 = or i16 %591, %588, !dbg !2434
  store i16 %592, i16* %589, align 8, !dbg !2432, !tbaa !534
  %593 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2436
  %594 = load i16, i16* %593, align 2, !dbg !2436, !tbaa !534
  %595 = zext i16 %594 to i64
  %596 = mul nuw nsw i64 %595, 65535
  %597 = bitcast [13 x i16]* %5 to i8*
  %598 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 11
  %599 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 12
  %600 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12
  %601 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 2
  %602 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 3
  %603 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 4
  %604 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 5
  %605 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 6
  %606 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 7
  %607 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 8
  %608 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 9
  %609 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 10
  %610 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11
  %611 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10
  %612 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9
  %613 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8
  %614 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7
  %615 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6
  %616 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5
  %617 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4
  %618 = extractelement <8 x i16> %580, i32 0, !dbg !2438
  br label %619, !dbg !2438

; <label>:619:                                    ; preds = %895, %551
  %620 = phi i16 [ %618, %551 ], [ %977, %895 ], !dbg !2439
  %621 = phi i16 [ %565, %551 ], [ %983, %895 ], !dbg !2440
  %622 = phi i64 [ 2, %551 ], [ %985, %895 ]
  %623 = zext i16 %621 to i64, !dbg !2441
  %624 = shl nuw nsw i64 %623, 16, !dbg !2442
  %625 = zext i16 %620 to i64, !dbg !2439
  %626 = or i64 %624, %625, !dbg !2443
  %627 = icmp ult i64 %596, %626, !dbg !2445
  br i1 %627, label %631, label %628, !dbg !2447

; <label>:628:                                    ; preds = %619
  %629 = udiv i64 %626, %595, !dbg !2448
  %630 = trunc i64 %629 to i16, !dbg !2449
  br label %631

; <label>:631:                                    ; preds = %628, %619
  %632 = phi i16 [ %630, %628 ], [ -1, %619 ], !dbg !2451
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %597) #5, !dbg !2455
  %633 = zext i16 %632 to i64, !dbg !2456
  store i16 0, i16* %598, align 2, !dbg !2459, !tbaa !534
  store i16 0, i16* %599, align 8, !dbg !2460, !tbaa !534
  br label %634, !dbg !2463

; <label>:634:                                    ; preds = %660, %631
  %635 = phi i32 [ 3, %631 ], [ %665, %660 ]
  %636 = phi i16* [ %599, %631 ], [ %662, %660 ]
  %637 = phi i16* [ %600, %631 ], [ %664, %660 ]
  %638 = load i16, i16* %637, align 2, !dbg !2465, !tbaa !534
  %639 = icmp eq i16 %638, 0, !dbg !2469
  br i1 %639, label %640, label %642, !dbg !2470

; <label>:640:                                    ; preds = %634
  %641 = getelementptr inbounds i16, i16* %636, i64 -1, !dbg !2471
  br label %660, !dbg !2473

; <label>:642:                                    ; preds = %634
  %643 = zext i16 %638 to i64, !dbg !2474
  %644 = mul nuw nsw i64 %643, %633, !dbg !2476
  %645 = and i64 %644, 65535, !dbg !2478
  %646 = load i16, i16* %636, align 2, !dbg !2479, !tbaa !534
  %647 = zext i16 %646 to i64, !dbg !2479
  %648 = add nuw nsw i64 %645, %647, !dbg !2480
  %649 = trunc i64 %648 to i16, !dbg !2482
  %650 = getelementptr inbounds i16, i16* %636, i64 -1, !dbg !2483
  store i16 %649, i16* %636, align 2, !dbg !2484, !tbaa !534
  %651 = lshr i64 %648, 16, !dbg !2485
  %652 = lshr i64 %644, 16, !dbg !2486
  %653 = add nuw nsw i64 %651, %652, !dbg !2487
  %654 = load i16, i16* %650, align 2, !dbg !2488, !tbaa !534
  %655 = zext i16 %654 to i64, !dbg !2488
  %656 = add nuw nsw i64 %653, %655, !dbg !2489
  %657 = trunc i64 %656 to i16, !dbg !2490
  store i16 %657, i16* %650, align 2, !dbg !2491, !tbaa !534
  %658 = lshr i64 %656, 16, !dbg !2492
  %659 = trunc i64 %658 to i16, !dbg !2493
  br label %660

; <label>:660:                                    ; preds = %642, %640
  %661 = phi i16 [ 0, %640 ], [ %659, %642 ]
  %662 = phi i16* [ %641, %640 ], [ %650, %642 ], !dbg !2494
  %663 = getelementptr inbounds i16, i16* %636, i64 -2, !dbg !2495
  store i16 %661, i16* %663, align 2, !dbg !2496
  %664 = getelementptr inbounds i16, i16* %637, i64 -1, !dbg !2494
  %665 = add nuw nsw i32 %635, 1, !dbg !2497
  %666 = icmp eq i32 %665, 13, !dbg !2498
  br i1 %666, label %667, label %634, !dbg !2463, !llvm.loop !2499

; <label>:667:                                    ; preds = %660
  %668 = load i16, i16* %601, align 4, !dbg !2502, !tbaa !534
  %669 = load i16, i16* %602, align 2, !dbg !2502, !tbaa !534
  %670 = load i16, i16* %603, align 8, !dbg !2502, !tbaa !534
  %671 = load i16, i16* %604, align 2, !dbg !2502, !tbaa !534
  %672 = load i16, i16* %605, align 4, !dbg !2502, !tbaa !534
  %673 = load i16, i16* %606, align 2, !dbg !2502, !tbaa !534
  %674 = load i16, i16* %607, align 16, !dbg !2502, !tbaa !534
  %675 = load i16, i16* %608, align 2, !dbg !2502, !tbaa !534
  %676 = load i16, i16* %609, align 4, !dbg !2502, !tbaa !534
  %677 = load i16, i16* %598, align 2, !dbg !2502, !tbaa !534
  %678 = load i16, i16* %599, align 8, !dbg !2502, !tbaa !534
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %597) #5, !dbg !2506
  %679 = load i16, i16* %443, align 4, !dbg !2512, !tbaa !534
  %680 = icmp eq i16 %668, %679, !dbg !2513
  br i1 %680, label %681, label %684, !dbg !2514

; <label>:681:                                    ; preds = %667
  %682 = load i16, i16* %566, align 2, !dbg !2512, !tbaa !534
  %683 = icmp eq i16 %669, %682, !dbg !2513
  br i1 %683, label %688, label %684, !dbg !2514

; <label>:684:                                    ; preds = %712, %709, %706, %703, %700, %697, %694, %691, %688, %681, %667
  %685 = phi i16 [ %668, %667 ], [ %669, %681 ], [ %670, %688 ], [ %671, %691 ], [ %672, %694 ], [ %673, %697 ], [ %674, %700 ], [ %675, %703 ], [ %676, %706 ], [ %677, %709 ], [ %678, %712 ], !dbg !2515
  %686 = phi i16 [ %679, %667 ], [ %682, %681 ], [ %689, %688 ], [ %692, %691 ], [ %695, %694 ], [ %698, %697 ], [ %701, %700 ], [ %704, %703 ], [ %707, %706 ], [ %710, %709 ], [ %713, %712 ], !dbg !2512
  %687 = icmp ugt i16 %685, %686, !dbg !2516
  br i1 %687, label %715, label %895

; <label>:688:                                    ; preds = %681
  %689 = load i16, i16* %567, align 8, !dbg !2512, !tbaa !534
  %690 = icmp eq i16 %670, %689, !dbg !2513
  br i1 %690, label %691, label %684, !dbg !2514

; <label>:691:                                    ; preds = %688
  %692 = load i16, i16* %568, align 2, !dbg !2512, !tbaa !534
  %693 = icmp eq i16 %671, %692, !dbg !2513
  br i1 %693, label %694, label %684, !dbg !2514

; <label>:694:                                    ; preds = %691
  %695 = load i16, i16* %569, align 4, !dbg !2512, !tbaa !534
  %696 = icmp eq i16 %672, %695, !dbg !2513
  br i1 %696, label %697, label %684, !dbg !2514

; <label>:697:                                    ; preds = %694
  %698 = load i16, i16* %570, align 2, !dbg !2512, !tbaa !534
  %699 = icmp eq i16 %673, %698, !dbg !2513
  br i1 %699, label %700, label %684, !dbg !2514

; <label>:700:                                    ; preds = %697
  %701 = load i16, i16* %571, align 16, !dbg !2512, !tbaa !534
  %702 = icmp eq i16 %674, %701, !dbg !2513
  br i1 %702, label %703, label %684, !dbg !2514

; <label>:703:                                    ; preds = %700
  %704 = load i16, i16* %572, align 2, !dbg !2512, !tbaa !534
  %705 = icmp eq i16 %675, %704, !dbg !2513
  br i1 %705, label %706, label %684, !dbg !2514

; <label>:706:                                    ; preds = %703
  %707 = load i16, i16* %573, align 4, !dbg !2512, !tbaa !534
  %708 = icmp eq i16 %676, %707, !dbg !2513
  br i1 %708, label %709, label %684, !dbg !2514

; <label>:709:                                    ; preds = %706
  %710 = load i16, i16* %582, align 2, !dbg !2512, !tbaa !534
  %711 = icmp eq i16 %677, %710, !dbg !2513
  br i1 %711, label %712, label %684, !dbg !2514

; <label>:712:                                    ; preds = %709
  %713 = load i16, i16* %589, align 8, !dbg !2512, !tbaa !534
  %714 = icmp eq i16 %678, %713, !dbg !2513
  br i1 %714, label %895, label %684, !dbg !2514

; <label>:715:                                    ; preds = %684
  %716 = add i16 %632, -1, !dbg !2517
  %717 = zext i16 %678 to i64, !dbg !2524
  %718 = load i16, i16* %600, align 8, !dbg !2525, !tbaa !534
  %719 = zext i16 %718 to i64, !dbg !2526
  %720 = sub nsw i64 %717, %719, !dbg !2527
  %721 = lshr i64 %720, 16
  %722 = and i64 %721, 1
  %723 = trunc i64 %720 to i16, !dbg !2529
  %724 = zext i16 %677 to i64, !dbg !2524
  %725 = load i16, i16* %610, align 2, !dbg !2525, !tbaa !534
  %726 = zext i16 %725 to i64, !dbg !2526
  %727 = sub nsw i64 %724, %726, !dbg !2527
  %728 = sub nsw i64 %727, %722, !dbg !2530
  %729 = lshr i64 %728, 16
  %730 = and i64 %729, 1
  %731 = trunc i64 %728 to i16, !dbg !2529
  %732 = zext i16 %676 to i64, !dbg !2524
  %733 = load i16, i16* %611, align 4, !dbg !2525, !tbaa !534
  %734 = zext i16 %733 to i64, !dbg !2526
  %735 = sub nsw i64 %732, %734, !dbg !2527
  %736 = sub nsw i64 %735, %730, !dbg !2530
  %737 = lshr i64 %736, 16
  %738 = and i64 %737, 1
  %739 = trunc i64 %736 to i16, !dbg !2529
  %740 = zext i16 %675 to i64, !dbg !2524
  %741 = load i16, i16* %612, align 2, !dbg !2525, !tbaa !534
  %742 = zext i16 %741 to i64, !dbg !2526
  %743 = sub nsw i64 %740, %742, !dbg !2527
  %744 = sub nsw i64 %743, %738, !dbg !2530
  %745 = lshr i64 %744, 16
  %746 = and i64 %745, 1
  %747 = trunc i64 %744 to i16, !dbg !2529
  %748 = zext i16 %674 to i64, !dbg !2524
  %749 = load i16, i16* %613, align 16, !dbg !2525, !tbaa !534
  %750 = zext i16 %749 to i64, !dbg !2526
  %751 = sub nsw i64 %748, %750, !dbg !2527
  %752 = sub nsw i64 %751, %746, !dbg !2530
  %753 = lshr i64 %752, 16
  %754 = and i64 %753, 1
  %755 = trunc i64 %752 to i16, !dbg !2529
  %756 = zext i16 %673 to i64, !dbg !2524
  %757 = load i16, i16* %614, align 2, !dbg !2525, !tbaa !534
  %758 = zext i16 %757 to i64, !dbg !2526
  %759 = sub nsw i64 %756, %758, !dbg !2527
  %760 = sub nsw i64 %759, %754, !dbg !2530
  %761 = lshr i64 %760, 16
  %762 = and i64 %761, 1
  %763 = trunc i64 %760 to i16, !dbg !2529
  %764 = zext i16 %672 to i64, !dbg !2524
  %765 = load i16, i16* %615, align 4, !dbg !2525, !tbaa !534
  %766 = zext i16 %765 to i64, !dbg !2526
  %767 = sub nsw i64 %764, %766, !dbg !2527
  %768 = sub nsw i64 %767, %762, !dbg !2530
  %769 = lshr i64 %768, 16
  %770 = and i64 %769, 1
  %771 = trunc i64 %768 to i16, !dbg !2529
  %772 = zext i16 %671 to i64, !dbg !2524
  %773 = load i16, i16* %616, align 2, !dbg !2525, !tbaa !534
  %774 = zext i16 %773 to i64, !dbg !2526
  %775 = sub nsw i64 %772, %774, !dbg !2527
  %776 = sub nsw i64 %775, %770, !dbg !2530
  %777 = lshr i64 %776, 16
  %778 = and i64 %777, 1
  %779 = trunc i64 %776 to i16, !dbg !2529
  %780 = zext i16 %670 to i64, !dbg !2524
  %781 = load i16, i16* %617, align 8, !dbg !2525, !tbaa !534
  %782 = zext i16 %781 to i64, !dbg !2526
  %783 = sub nsw i64 %780, %782, !dbg !2527
  %784 = sub nsw i64 %783, %778, !dbg !2530
  %785 = lshr i64 %784, 16
  %786 = and i64 %785, 1
  %787 = trunc i64 %784 to i16, !dbg !2529
  %788 = zext i16 %669 to i64, !dbg !2524
  %789 = load i16, i16* %593, align 2, !dbg !2525, !tbaa !534
  %790 = zext i16 %789 to i64, !dbg !2526
  %791 = sub nsw i64 %788, %790, !dbg !2527
  %792 = sub nsw i64 %791, %786, !dbg !2530
  %793 = lshr i64 %792, 16
  %794 = and i64 %793, 1
  %795 = trunc i64 %792 to i16, !dbg !2529
  %796 = zext i16 %668 to i64, !dbg !2524
  %797 = load i16, i16* %352, align 4, !dbg !2525, !tbaa !534
  %798 = zext i16 %797 to i64, !dbg !2526
  %799 = sub nsw i64 %796, %798, !dbg !2527
  %800 = sub nsw i64 %799, %794, !dbg !2530
  %801 = trunc i64 %800 to i16, !dbg !2529
  %802 = icmp eq i16 %679, %801, !dbg !2536
  br i1 %802, label %803, label %806, !dbg !2537

; <label>:803:                                    ; preds = %715
  %804 = load i16, i16* %566, align 2, !dbg !2538, !tbaa !534
  %805 = icmp eq i16 %804, %795, !dbg !2536
  br i1 %805, label %810, label %806, !dbg !2537

; <label>:806:                                    ; preds = %834, %831, %828, %825, %822, %819, %816, %813, %810, %803, %715
  %807 = phi i16 [ %801, %715 ], [ %795, %803 ], [ %787, %810 ], [ %779, %813 ], [ %771, %816 ], [ %763, %819 ], [ %755, %822 ], [ %747, %825 ], [ %739, %828 ], [ %731, %831 ], [ %723, %834 ], !dbg !2539
  %808 = phi i16 [ %679, %715 ], [ %804, %803 ], [ %811, %810 ], [ %814, %813 ], [ %817, %816 ], [ %820, %819 ], [ %823, %822 ], [ %826, %825 ], [ %829, %828 ], [ %832, %831 ], [ %835, %834 ], !dbg !2538
  %809 = icmp ugt i16 %807, %808, !dbg !2540
  br i1 %809, label %837, label %895

; <label>:810:                                    ; preds = %803
  %811 = load i16, i16* %567, align 8, !dbg !2538, !tbaa !534
  %812 = icmp eq i16 %811, %787, !dbg !2536
  br i1 %812, label %813, label %806, !dbg !2537

; <label>:813:                                    ; preds = %810
  %814 = load i16, i16* %568, align 2, !dbg !2538, !tbaa !534
  %815 = icmp eq i16 %814, %779, !dbg !2536
  br i1 %815, label %816, label %806, !dbg !2537

; <label>:816:                                    ; preds = %813
  %817 = load i16, i16* %569, align 4, !dbg !2538, !tbaa !534
  %818 = icmp eq i16 %817, %771, !dbg !2536
  br i1 %818, label %819, label %806, !dbg !2537

; <label>:819:                                    ; preds = %816
  %820 = load i16, i16* %570, align 2, !dbg !2538, !tbaa !534
  %821 = icmp eq i16 %820, %763, !dbg !2536
  br i1 %821, label %822, label %806, !dbg !2537

; <label>:822:                                    ; preds = %819
  %823 = load i16, i16* %571, align 16, !dbg !2538, !tbaa !534
  %824 = icmp eq i16 %823, %755, !dbg !2536
  br i1 %824, label %825, label %806, !dbg !2537

; <label>:825:                                    ; preds = %822
  %826 = load i16, i16* %572, align 2, !dbg !2538, !tbaa !534
  %827 = icmp eq i16 %826, %747, !dbg !2536
  br i1 %827, label %828, label %806, !dbg !2537

; <label>:828:                                    ; preds = %825
  %829 = load i16, i16* %573, align 4, !dbg !2538, !tbaa !534
  %830 = icmp eq i16 %829, %739, !dbg !2536
  br i1 %830, label %831, label %806, !dbg !2537

; <label>:831:                                    ; preds = %828
  %832 = load i16, i16* %582, align 2, !dbg !2538, !tbaa !534
  %833 = icmp eq i16 %832, %731, !dbg !2536
  br i1 %833, label %834, label %806, !dbg !2537

; <label>:834:                                    ; preds = %831
  %835 = load i16, i16* %589, align 8, !dbg !2538, !tbaa !534
  %836 = icmp eq i16 %835, %723, !dbg !2536
  br i1 %836, label %895, label %806, !dbg !2537

; <label>:837:                                    ; preds = %806
  %838 = add i16 %632, -2, !dbg !2541
  %839 = and i64 %720, 65535, !dbg !2548
  %840 = sub nsw i64 %839, %719, !dbg !2549
  %841 = lshr i64 %840, 16
  %842 = and i64 %841, 1
  %843 = trunc i64 %840 to i16, !dbg !2551
  %844 = and i64 %728, 65535, !dbg !2548
  %845 = sub nsw i64 %844, %726, !dbg !2549
  %846 = sub nsw i64 %845, %842, !dbg !2552
  %847 = lshr i64 %846, 16
  %848 = and i64 %847, 1
  %849 = trunc i64 %846 to i16, !dbg !2551
  %850 = and i64 %736, 65535, !dbg !2548
  %851 = sub nsw i64 %850, %734, !dbg !2549
  %852 = sub nsw i64 %851, %848, !dbg !2552
  %853 = lshr i64 %852, 16
  %854 = and i64 %853, 1
  %855 = trunc i64 %852 to i16, !dbg !2551
  %856 = and i64 %744, 65535, !dbg !2548
  %857 = sub nsw i64 %856, %742, !dbg !2549
  %858 = sub nsw i64 %857, %854, !dbg !2552
  %859 = lshr i64 %858, 16
  %860 = and i64 %859, 1
  %861 = trunc i64 %858 to i16, !dbg !2551
  %862 = and i64 %752, 65535, !dbg !2548
  %863 = sub nsw i64 %862, %750, !dbg !2549
  %864 = sub nsw i64 %863, %860, !dbg !2552
  %865 = lshr i64 %864, 16
  %866 = and i64 %865, 1
  %867 = trunc i64 %864 to i16, !dbg !2551
  %868 = and i64 %760, 65535, !dbg !2548
  %869 = sub nsw i64 %868, %758, !dbg !2549
  %870 = sub nsw i64 %869, %866, !dbg !2552
  %871 = lshr i64 %870, 16
  %872 = and i64 %871, 1
  %873 = trunc i64 %870 to i16, !dbg !2551
  %874 = and i64 %768, 65535, !dbg !2548
  %875 = sub nsw i64 %874, %766, !dbg !2549
  %876 = sub nsw i64 %875, %872, !dbg !2552
  %877 = lshr i64 %876, 16
  %878 = and i64 %877, 1
  %879 = trunc i64 %876 to i16, !dbg !2551
  %880 = and i64 %776, 65535, !dbg !2548
  %881 = sub nsw i64 %880, %774, !dbg !2549
  %882 = sub nsw i64 %881, %878, !dbg !2552
  %883 = lshr i64 %882, 16
  %884 = and i64 %883, 1
  %885 = trunc i64 %882 to i16, !dbg !2551
  %886 = and i64 %784, 65535, !dbg !2548
  %887 = sub nsw i64 %886, %782, !dbg !2549
  %888 = sub nsw i64 %887, %884, !dbg !2552
  %889 = lshr i64 %888, 16
  %890 = and i64 %889, 1
  %891 = trunc i64 %888 to i16, !dbg !2551
  %892 = sub nsw i64 %792, %790, !dbg !2549
  %893 = sub nsw i64 %892, %890, !dbg !2552
  %894 = trunc i64 %893 to i16, !dbg !2551
  br label %895, !dbg !2553

; <label>:895:                                    ; preds = %837, %834, %806, %712, %684
  %896 = phi i16 [ %849, %837 ], [ %677, %684 ], [ %677, %712 ], [ %731, %806 ], [ %731, %834 ], !dbg !2554
  %897 = phi i16 [ %855, %837 ], [ %676, %684 ], [ %676, %712 ], [ %739, %806 ], [ %739, %834 ], !dbg !2554
  %898 = phi i16 [ %861, %837 ], [ %675, %684 ], [ %675, %712 ], [ %747, %806 ], [ %747, %834 ], !dbg !2554
  %899 = phi i16 [ %867, %837 ], [ %674, %684 ], [ %674, %712 ], [ %755, %806 ], [ %755, %834 ], !dbg !2554
  %900 = phi i16 [ %873, %837 ], [ %673, %684 ], [ %673, %712 ], [ %763, %806 ], [ %763, %834 ], !dbg !2554
  %901 = phi i16 [ %879, %837 ], [ %672, %684 ], [ %672, %712 ], [ %771, %806 ], [ %771, %834 ], !dbg !2554
  %902 = phi i16 [ %885, %837 ], [ %671, %684 ], [ %671, %712 ], [ %779, %806 ], [ %779, %834 ], !dbg !2554
  %903 = phi i16 [ %891, %837 ], [ %670, %684 ], [ %670, %712 ], [ %787, %806 ], [ %787, %834 ], !dbg !2554
  %904 = phi i16 [ %894, %837 ], [ %669, %684 ], [ %669, %712 ], [ %795, %806 ], [ %795, %834 ], !dbg !2554
  %905 = phi i16 [ %843, %837 ], [ %678, %684 ], [ %678, %712 ], [ %723, %806 ], [ %723, %834 ], !dbg !2554
  %906 = phi i16 [ %838, %837 ], [ %632, %684 ], [ %632, %712 ], [ %716, %806 ], [ %716, %834 ], !dbg !2451
  %907 = load i16, i16* %589, align 8, !dbg !2560, !tbaa !534
  %908 = zext i16 %907 to i64, !dbg !2561
  %909 = zext i16 %905 to i64, !dbg !2562
  %910 = sub nsw i64 %908, %909, !dbg !2563
  %911 = lshr i64 %910, 16
  %912 = and i64 %911, 1
  %913 = trunc i64 %910 to i16, !dbg !2565
  %914 = load i16, i16* %582, align 2, !dbg !2560, !tbaa !534
  %915 = zext i16 %914 to i64, !dbg !2561
  %916 = zext i16 %896 to i64, !dbg !2562
  %917 = sub nsw i64 %915, %916, !dbg !2563
  %918 = sub nsw i64 %917, %912, !dbg !2566
  %919 = lshr i64 %918, 16
  %920 = and i64 %919, 1
  %921 = trunc i64 %918 to i16, !dbg !2565
  %922 = load i16, i16* %573, align 4, !dbg !2560, !tbaa !534
  %923 = zext i16 %922 to i64, !dbg !2561
  %924 = zext i16 %897 to i64, !dbg !2562
  %925 = sub nsw i64 %923, %924, !dbg !2563
  %926 = sub nsw i64 %925, %920, !dbg !2566
  %927 = lshr i64 %926, 16
  %928 = and i64 %927, 1
  %929 = trunc i64 %926 to i16, !dbg !2565
  %930 = load i16, i16* %572, align 2, !dbg !2560, !tbaa !534
  %931 = zext i16 %930 to i64, !dbg !2561
  %932 = zext i16 %898 to i64, !dbg !2562
  %933 = sub nsw i64 %931, %932, !dbg !2563
  %934 = sub nsw i64 %933, %928, !dbg !2566
  %935 = lshr i64 %934, 16
  %936 = and i64 %935, 1
  %937 = trunc i64 %934 to i16, !dbg !2565
  %938 = load i16, i16* %571, align 16, !dbg !2560, !tbaa !534
  %939 = zext i16 %938 to i64, !dbg !2561
  %940 = zext i16 %899 to i64, !dbg !2562
  %941 = sub nsw i64 %939, %940, !dbg !2563
  %942 = sub nsw i64 %941, %936, !dbg !2566
  %943 = lshr i64 %942, 16
  %944 = and i64 %943, 1
  %945 = trunc i64 %942 to i16, !dbg !2565
  %946 = load i16, i16* %570, align 2, !dbg !2560, !tbaa !534
  %947 = zext i16 %946 to i64, !dbg !2561
  %948 = zext i16 %900 to i64, !dbg !2562
  %949 = sub nsw i64 %947, %948, !dbg !2563
  %950 = sub nsw i64 %949, %944, !dbg !2566
  %951 = lshr i64 %950, 16
  %952 = and i64 %951, 1
  %953 = trunc i64 %950 to i16, !dbg !2565
  %954 = load i16, i16* %569, align 4, !dbg !2560, !tbaa !534
  %955 = zext i16 %954 to i64, !dbg !2561
  %956 = zext i16 %901 to i64, !dbg !2562
  %957 = sub nsw i64 %955, %956, !dbg !2563
  %958 = sub nsw i64 %957, %952, !dbg !2566
  %959 = lshr i64 %958, 16
  %960 = and i64 %959, 1
  %961 = trunc i64 %958 to i16, !dbg !2565
  %962 = load i16, i16* %568, align 2, !dbg !2560, !tbaa !534
  %963 = zext i16 %962 to i64, !dbg !2561
  %964 = zext i16 %902 to i64, !dbg !2562
  %965 = sub nsw i64 %963, %964, !dbg !2563
  %966 = sub nsw i64 %965, %960, !dbg !2566
  %967 = lshr i64 %966, 16
  %968 = and i64 %967, 1
  %969 = trunc i64 %966 to i16, !dbg !2565
  %970 = load i16, i16* %567, align 8, !dbg !2560, !tbaa !534
  %971 = zext i16 %970 to i64, !dbg !2561
  %972 = zext i16 %903 to i64, !dbg !2562
  %973 = sub nsw i64 %971, %972, !dbg !2563
  %974 = sub nsw i64 %973, %968, !dbg !2566
  %975 = lshr i64 %974, 16
  %976 = and i64 %975, 1
  %977 = trunc i64 %974 to i16, !dbg !2565
  %978 = load i16, i16* %566, align 2, !dbg !2560, !tbaa !534
  %979 = zext i16 %978 to i64, !dbg !2561
  %980 = zext i16 %904 to i64, !dbg !2562
  %981 = sub nsw i64 %979, %980, !dbg !2563
  %982 = sub nsw i64 %981, %976, !dbg !2566
  %983 = trunc i64 %982 to i16, !dbg !2565
  %984 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 %622, !dbg !2567
  store i16 %906, i16* %984, align 2, !dbg !2568, !tbaa !534
  store i16 %983, i16* %443, align 4, !dbg !2578, !tbaa !534
  store i16 %977, i16* %566, align 2, !dbg !2578, !tbaa !534
  store i16 %969, i16* %567, align 8, !dbg !2578, !tbaa !534
  store i16 %961, i16* %568, align 2, !dbg !2578, !tbaa !534
  store i16 %953, i16* %569, align 4, !dbg !2578, !tbaa !534
  store i16 %945, i16* %570, align 2, !dbg !2578, !tbaa !534
  store i16 %937, i16* %571, align 16, !dbg !2578, !tbaa !534
  store i16 %929, i16* %572, align 2, !dbg !2578, !tbaa !534
  store i16 %921, i16* %573, align 4, !dbg !2578, !tbaa !534
  store i16 %913, i16* %582, align 2, !dbg !2578, !tbaa !534
  store i16 0, i16* %589, align 8, !dbg !2581, !tbaa !534
  %985 = add nuw nsw i64 %622, 1, !dbg !2582
  %986 = icmp eq i64 %985, 13, !dbg !2583
  br i1 %986, label %987, label %619, !dbg !2438, !llvm.loop !2584

; <label>:987:                                    ; preds = %895
  %988 = or i64 %918, %910, !dbg !2588
  %989 = or i64 %988, %926, !dbg !2588
  %990 = or i64 %989, %934, !dbg !2588
  %991 = or i64 %990, %942, !dbg !2588
  %992 = or i64 %991, %950, !dbg !2588
  %993 = or i64 %992, %958, !dbg !2588
  %994 = or i64 %993, %966, !dbg !2588
  %995 = or i64 %994, %974, !dbg !2588
  %996 = or i64 %995, %982, !dbg !2588
  %997 = trunc i64 %996 to i16, !dbg !2588
  %998 = bitcast i16* %553 to <8 x i16>*, !dbg !2592
  %999 = load <8 x i16>, <8 x i16>* %998, align 2, !dbg !2592, !tbaa !534
  %1000 = bitcast [13 x i16]* %7 to <8 x i16>*, !dbg !2595
  store <8 x i16> %999, <8 x i16>* %1000, align 16, !dbg !2595, !tbaa !534
  %1001 = load i16, i16* %558, align 2, !dbg !2592, !tbaa !534
  store i16 %1001, i16* %571, align 16, !dbg !2595, !tbaa !534
  %1002 = load i16, i16* %559, align 2, !dbg !2592, !tbaa !534
  store i16 %1002, i16* %572, align 2, !dbg !2595, !tbaa !534
  %1003 = load i16, i16* %560, align 2, !dbg !2592, !tbaa !534
  store i16 %1003, i16* %573, align 4, !dbg !2595, !tbaa !534
  %1004 = load i16, i16* %562, align 2, !dbg !2592, !tbaa !534
  store i16 %1004, i16* %582, align 2, !dbg !2595, !tbaa !534
  %1005 = load i16, i16* %563, align 2, !dbg !2592, !tbaa !534
  store i16 %1005, i16* %589, align 8, !dbg !2595, !tbaa !534
  %1006 = icmp ne i16 %997, 0, !dbg !2596
  %1007 = zext i1 %1006 to i32, !dbg !2598
  %1008 = add nsw i64 %542, 16383, !dbg !2599
  %1009 = sub nsw i64 %1008, %552, !dbg !2600
  call fastcc void @emdnorm(i16* nonnull %439, i32 %1007, i32 0, i64 %1009, i32 64, %struct.LDPARMS* nonnull %3) #7, !dbg !2602
  %1010 = load i16, i16* %348, align 16, !dbg !2603, !tbaa !534
  %1011 = load i16, i16* %439, align 16, !dbg !2605, !tbaa !534
  %1012 = icmp eq i16 %1010, %1011, !dbg !2606
  %1013 = xor i1 %1012, true, !dbg !2607
  %1014 = sext i1 %1013 to i16, !dbg !2607
  store i16 %1014, i16* %439, align 16, !dbg !2608, !tbaa !534
  %1015 = getelementptr i16, i16* %2, i64 9, !dbg !2614
  %1016 = load i16, i16* %440, align 2, !dbg !2617, !tbaa !534
  %1017 = or i16 %1016, -32768, !dbg !2618
  %1018 = select i1 %1012, i16 %1016, i16 %1017, !dbg !2619
  store i16 %1018, i16* %1015, align 2, !dbg !2617, !tbaa !534
  %1019 = icmp eq i16 %1016, 32767, !dbg !2620
  br i1 %1019, label %1020, label %1046, !dbg !2621

; <label>:1020:                                   ; preds = %987
  %1021 = load i16, i16* %566, align 2, !dbg !2625, !tbaa !534
  %1022 = load i16, i16* %567, align 8, !dbg !2625
  %1023 = or i16 %1022, %1021, !dbg !2626
  %1024 = load i16, i16* %568, align 2, !dbg !2625
  %1025 = or i16 %1023, %1024, !dbg !2626
  %1026 = load i16, i16* %569, align 4, !dbg !2625
  %1027 = or i16 %1025, %1026, !dbg !2626
  %1028 = load i16, i16* %570, align 2, !dbg !2625
  %1029 = or i16 %1027, %1028, !dbg !2626
  %1030 = load i16, i16* %571, align 16, !dbg !2625
  %1031 = or i16 %1029, %1030, !dbg !2626
  %1032 = load i16, i16* %572, align 2, !dbg !2625
  %1033 = or i16 %1031, %1032, !dbg !2626
  %1034 = load i16, i16* %573, align 4, !dbg !2625
  %1035 = or i16 %1033, %1034, !dbg !2626
  %1036 = load i16, i16* %582, align 2, !dbg !2625
  %1037 = or i16 %1035, %1036, !dbg !2626
  %1038 = load i16, i16* %589, align 8, !dbg !2625
  %1039 = or i16 %1037, %1038, !dbg !2626
  %1040 = icmp eq i16 %1039, 0, !dbg !2626
  %1041 = getelementptr i16, i16* %2, i64 8, !dbg !2316
  %1042 = bitcast i16* %2 to <8 x i16>*, !dbg !2316
  store <8 x i16> zeroinitializer, <8 x i16>* %1042, align 2, !dbg !2316, !tbaa !534
  br i1 %1040, label %1044, label %1043, !dbg !2626

; <label>:1043:                                   ; preds = %1020
  store i16 -16384, i16* %1041, align 2, !dbg !2631, !tbaa !534
  store i16 32767, i16* %1015, align 2, !dbg !2632, !tbaa !534
  br label %1053, !dbg !2633

; <label>:1044:                                   ; preds = %1020
  store i16 0, i16* %1041, align 2, !dbg !2638, !tbaa !534
  %1045 = or i16 %1018, 32767, !dbg !2639
  store i16 %1045, i16* %1015, align 2, !dbg !2639, !tbaa !534
  br label %1053, !dbg !2640

; <label>:1046:                                   ; preds = %987
  %1047 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2617
  %1048 = load i16, i16* %566, align 2, !dbg !2641, !tbaa !534
  store i16 %1048, i16* %1047, align 2, !dbg !2642, !tbaa !534
  %1049 = bitcast i16* %567 to <8 x i16>*, !dbg !2641
  %1050 = load <8 x i16>, <8 x i16>* %1049, align 8, !dbg !2641, !tbaa !534
  %1051 = shufflevector <8 x i16> %1050, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2641
  %1052 = bitcast i16* %2 to <8 x i16>*, !dbg !2642
  store <8 x i16> %1051, <8 x i16>* %1052, align 2, !dbg !2642, !tbaa !534
  br label %1053, !dbg !2643

; <label>:1053:                                   ; preds = %1046, %1044, %1043, %1090, %1116, %343, %298, %219, %115, %49
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %9) #5, !dbg !2644
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %8) #5, !dbg !2644
  ret void, !dbg !2644

; <label>:1054:                                   ; preds = %544
  %1055 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2396
  %1056 = load i16, i16* %1055, align 2, !dbg !2396, !tbaa !534
  %1057 = icmp eq i16 %1056, 0, !dbg !2402
  br i1 %1057, label %1058, label %547, !dbg !2403

; <label>:1058:                                   ; preds = %1054
  %1059 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4, !dbg !2396
  %1060 = load i16, i16* %1059, align 8, !dbg !2396, !tbaa !534
  %1061 = icmp eq i16 %1060, 0, !dbg !2402
  br i1 %1061, label %1062, label %547, !dbg !2403

; <label>:1062:                                   ; preds = %1058
  %1063 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5, !dbg !2396
  %1064 = load i16, i16* %1063, align 2, !dbg !2396, !tbaa !534
  %1065 = icmp eq i16 %1064, 0, !dbg !2402
  br i1 %1065, label %1066, label %547, !dbg !2403

; <label>:1066:                                   ; preds = %1062
  %1067 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6, !dbg !2396
  %1068 = load i16, i16* %1067, align 4, !dbg !2396, !tbaa !534
  %1069 = icmp eq i16 %1068, 0, !dbg !2402
  br i1 %1069, label %1070, label %547, !dbg !2403

; <label>:1070:                                   ; preds = %1066
  %1071 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7, !dbg !2396
  %1072 = load i16, i16* %1071, align 2, !dbg !2396, !tbaa !534
  %1073 = icmp eq i16 %1072, 0, !dbg !2402
  br i1 %1073, label %1074, label %547, !dbg !2403

; <label>:1074:                                   ; preds = %1070
  %1075 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8, !dbg !2396
  %1076 = load i16, i16* %1075, align 16, !dbg !2396, !tbaa !534
  %1077 = icmp eq i16 %1076, 0, !dbg !2402
  br i1 %1077, label %1078, label %547, !dbg !2403

; <label>:1078:                                   ; preds = %1074
  %1079 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9, !dbg !2396
  %1080 = load i16, i16* %1079, align 2, !dbg !2396, !tbaa !534
  %1081 = icmp eq i16 %1080, 0, !dbg !2402
  br i1 %1081, label %1082, label %547, !dbg !2403

; <label>:1082:                                   ; preds = %1078
  %1083 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10, !dbg !2396
  %1084 = load i16, i16* %1083, align 4, !dbg !2396, !tbaa !534
  %1085 = icmp eq i16 %1084, 0, !dbg !2402
  br i1 %1085, label %1086, label %547, !dbg !2403

; <label>:1086:                                   ; preds = %1082
  %1087 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2396
  %1088 = load i16, i16* %1087, align 2, !dbg !2396, !tbaa !534
  %1089 = icmp eq i16 %1088, 0, !dbg !2402
  br i1 %1089, label %1090, label %547, !dbg !2403

; <label>:1090:                                   ; preds = %1086
  %1091 = load i16, i16* %348, align 16, !dbg !2645, !tbaa !534
  %1092 = load i16, i16* %439, align 16, !dbg !2647, !tbaa !534
  %1093 = icmp eq i16 %1091, %1092, !dbg !2648
  %1094 = getelementptr i16, i16* %2, i64 9, !dbg !2649
  %1095 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2654
  %1096 = bitcast i16* %2 to <8 x i16>*, !dbg !2655
  store <8 x i16> zeroinitializer, <8 x i16>* %1096, align 2, !dbg !2655, !tbaa !534
  store i16 0, i16* %1095, align 2, !dbg !2655, !tbaa !534
  %1097 = select i1 %1093, i16 32767, i16 -1, !dbg !2656
  store i16 %1097, i16* %1094, align 2, !dbg !2656, !tbaa !534
  br label %1053, !dbg !2657

; <label>:1098:                                   ; preds = %521
  %1099 = extractelement <8 x i16> %525, i32 7, !dbg !2658
  %1100 = extractelement <8 x i16> %525, i32 6, !dbg !2658
  %1101 = or i16 %1099, %1100, !dbg !2658
  %1102 = extractelement <8 x i16> %525, i32 5, !dbg !2658
  %1103 = or i16 %1101, %1102, !dbg !2658
  %1104 = extractelement <8 x i16> %525, i32 4, !dbg !2658
  %1105 = or i16 %1103, %1104, !dbg !2658
  %1106 = extractelement <8 x i16> %525, i32 3, !dbg !2658
  %1107 = or i16 %1105, %1106, !dbg !2658
  %1108 = extractelement <8 x i16> %525, i32 2, !dbg !2658
  %1109 = or i16 %1107, %1108, !dbg !2658
  %1110 = extractelement <8 x i16> %525, i32 1, !dbg !2658
  %1111 = or i16 %1109, %1110, !dbg !2658
  %1112 = extractelement <8 x i16> %525, i32 0, !dbg !2658
  %1113 = or i16 %1111, %1112, !dbg !2658
  %1114 = or i16 %1113, %529, !dbg !2658
  %1115 = icmp eq i16 %1114, 0, !dbg !2658
  br i1 %1115, label %1116, label %534, !dbg !2658

; <label>:1116:                                   ; preds = %1098
  %1117 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2662
  %1118 = bitcast i16* %2 to <8 x i16>*, !dbg !2663
  store <8 x i16> zeroinitializer, <8 x i16>* %1118, align 2, !dbg !2663, !tbaa !534
  %1119 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2662
  store i16 0, i16* %1117, align 2, !dbg !2663, !tbaa !534
  store i16 0, i16* %1119, align 2, !dbg !2663, !tbaa !534
  br label %1053, !dbg !2664
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emul(i16* readonly, i16* readonly, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !2665 {
  %5 = alloca [13 x i16], align 16
  %6 = alloca [13 x i16], align 16
  %7 = alloca [13 x i16], align 16
  %8 = bitcast [13 x i16]* %6 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %8) #5, !dbg !2701
  %9 = bitcast [13 x i16]* %7 to i8*, !dbg !2701
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %9) #5, !dbg !2701
  %10 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !2707
  %11 = load i16, i16* %10, align 2, !dbg !2707, !tbaa !534
  %12 = and i16 %11, 32767, !dbg !2708
  %13 = icmp eq i16 %12, 32767, !dbg !2709
  br i1 %13, label %14, label %75, !dbg !2710

; <label>:14:                                     ; preds = %4
  %15 = load i16, i16* %0, align 2, !dbg !2712, !tbaa !534
  %16 = icmp eq i16 %15, 0, !dbg !2713
  %17 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2714
  br i1 %16, label %18, label %49, !dbg !2716

; <label>:18:                                     ; preds = %14
  %19 = load i16, i16* %17, align 2, !dbg !2712, !tbaa !534
  %20 = icmp eq i16 %19, 0, !dbg !2713
  br i1 %20, label %21, label %49, !dbg !2716

; <label>:21:                                     ; preds = %18
  %22 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2717
  %23 = load i16, i16* %22, align 2, !dbg !2712, !tbaa !534
  %24 = icmp eq i16 %23, 0, !dbg !2713
  br i1 %24, label %25, label %49, !dbg !2716

; <label>:25:                                     ; preds = %21
  %26 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2717
  %27 = load i16, i16* %26, align 2, !dbg !2712, !tbaa !534
  %28 = icmp eq i16 %27, 0, !dbg !2713
  br i1 %28, label %29, label %49, !dbg !2716

; <label>:29:                                     ; preds = %25
  %30 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2717
  %31 = load i16, i16* %30, align 2, !dbg !2712, !tbaa !534
  %32 = icmp eq i16 %31, 0, !dbg !2713
  br i1 %32, label %33, label %49, !dbg !2716

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2717
  %35 = load i16, i16* %34, align 2, !dbg !2712, !tbaa !534
  %36 = icmp eq i16 %35, 0, !dbg !2713
  br i1 %36, label %37, label %49, !dbg !2716

; <label>:37:                                     ; preds = %33
  %38 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2717
  %39 = load i16, i16* %38, align 2, !dbg !2712, !tbaa !534
  %40 = icmp eq i16 %39, 0, !dbg !2713
  br i1 %40, label %41, label %49, !dbg !2716

; <label>:41:                                     ; preds = %37
  %42 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2717
  %43 = load i16, i16* %42, align 2, !dbg !2712, !tbaa !534
  %44 = icmp eq i16 %43, 0, !dbg !2713
  br i1 %44, label %45, label %49, !dbg !2716

; <label>:45:                                     ; preds = %41
  %46 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2717
  %47 = load i16, i16* %46, align 2, !dbg !2712, !tbaa !534
  %48 = icmp eq i16 %47, 0, !dbg !2713
  br i1 %48, label %75, label %49, !dbg !2718

; <label>:49:                                     ; preds = %14, %41, %37, %33, %29, %25, %21, %18, %45
  %50 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2723
  store i16 %15, i16* %2, align 2, !dbg !2724, !tbaa !534
  %51 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2725
  %52 = load i16, i16* %17, align 2, !dbg !2726, !tbaa !534
  %53 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2723
  store i16 %52, i16* %50, align 2, !dbg !2724, !tbaa !534
  %54 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2725
  %55 = load i16, i16* %51, align 2, !dbg !2726, !tbaa !534
  %56 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2723
  store i16 %55, i16* %53, align 2, !dbg !2724, !tbaa !534
  %57 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2725
  %58 = load i16, i16* %54, align 2, !dbg !2726, !tbaa !534
  %59 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2723
  store i16 %58, i16* %56, align 2, !dbg !2724, !tbaa !534
  %60 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2725
  %61 = load i16, i16* %57, align 2, !dbg !2726, !tbaa !534
  %62 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2723
  store i16 %61, i16* %59, align 2, !dbg !2724, !tbaa !534
  %63 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2725
  %64 = load i16, i16* %60, align 2, !dbg !2726, !tbaa !534
  %65 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2723
  store i16 %64, i16* %62, align 2, !dbg !2724, !tbaa !534
  %66 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2725
  %67 = load i16, i16* %63, align 2, !dbg !2726, !tbaa !534
  %68 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2723
  store i16 %67, i16* %65, align 2, !dbg !2724, !tbaa !534
  %69 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2725
  %70 = load i16, i16* %66, align 2, !dbg !2726, !tbaa !534
  %71 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2723
  store i16 %70, i16* %68, align 2, !dbg !2724, !tbaa !534
  %72 = load i16, i16* %69, align 2, !dbg !2726, !tbaa !534
  %73 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2723
  store i16 %72, i16* %71, align 2, !dbg !2724, !tbaa !534
  %74 = load i16, i16* %10, align 2, !dbg !2726, !tbaa !534
  store i16 %74, i16* %73, align 2, !dbg !2724, !tbaa !534
  br label %855, !dbg !2727

; <label>:75:                                     ; preds = %4, %45
  %76 = getelementptr inbounds i16, i16* %1, i64 9, !dbg !2731
  %77 = load i16, i16* %76, align 2, !dbg !2731, !tbaa !534
  %78 = and i16 %77, 32767, !dbg !2732
  %79 = icmp eq i16 %78, 32767, !dbg !2733
  br i1 %79, label %80, label %141, !dbg !2734

; <label>:80:                                     ; preds = %75
  %81 = load i16, i16* %1, align 2, !dbg !2736, !tbaa !534
  %82 = icmp eq i16 %81, 0, !dbg !2737
  %83 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2738
  br i1 %82, label %84, label %115, !dbg !2740

; <label>:84:                                     ; preds = %80
  %85 = load i16, i16* %83, align 2, !dbg !2736, !tbaa !534
  %86 = icmp eq i16 %85, 0, !dbg !2737
  br i1 %86, label %87, label %115, !dbg !2740

; <label>:87:                                     ; preds = %84
  %88 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2741
  %89 = load i16, i16* %88, align 2, !dbg !2736, !tbaa !534
  %90 = icmp eq i16 %89, 0, !dbg !2737
  br i1 %90, label %91, label %115, !dbg !2740

; <label>:91:                                     ; preds = %87
  %92 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2741
  %93 = load i16, i16* %92, align 2, !dbg !2736, !tbaa !534
  %94 = icmp eq i16 %93, 0, !dbg !2737
  br i1 %94, label %95, label %115, !dbg !2740

; <label>:95:                                     ; preds = %91
  %96 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2741
  %97 = load i16, i16* %96, align 2, !dbg !2736, !tbaa !534
  %98 = icmp eq i16 %97, 0, !dbg !2737
  br i1 %98, label %99, label %115, !dbg !2740

; <label>:99:                                     ; preds = %95
  %100 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2741
  %101 = load i16, i16* %100, align 2, !dbg !2736, !tbaa !534
  %102 = icmp eq i16 %101, 0, !dbg !2737
  br i1 %102, label %103, label %115, !dbg !2740

; <label>:103:                                    ; preds = %99
  %104 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2741
  %105 = load i16, i16* %104, align 2, !dbg !2736, !tbaa !534
  %106 = icmp eq i16 %105, 0, !dbg !2737
  br i1 %106, label %107, label %115, !dbg !2740

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2741
  %109 = load i16, i16* %108, align 2, !dbg !2736, !tbaa !534
  %110 = icmp eq i16 %109, 0, !dbg !2737
  br i1 %110, label %111, label %115, !dbg !2740

; <label>:111:                                    ; preds = %107
  %112 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2741
  %113 = load i16, i16* %112, align 2, !dbg !2736, !tbaa !534
  %114 = icmp eq i16 %113, 0, !dbg !2737
  br i1 %114, label %141, label %115, !dbg !2742

; <label>:115:                                    ; preds = %80, %107, %103, %99, %95, %91, %87, %84, %111
  %116 = getelementptr inbounds i16, i16* %2, i64 1, !dbg !2747
  store i16 %81, i16* %2, align 2, !dbg !2748, !tbaa !534
  %117 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2749
  %118 = load i16, i16* %83, align 2, !dbg !2750, !tbaa !534
  %119 = getelementptr inbounds i16, i16* %2, i64 2, !dbg !2747
  store i16 %118, i16* %116, align 2, !dbg !2748, !tbaa !534
  %120 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2749
  %121 = load i16, i16* %117, align 2, !dbg !2750, !tbaa !534
  %122 = getelementptr inbounds i16, i16* %2, i64 3, !dbg !2747
  store i16 %121, i16* %119, align 2, !dbg !2748, !tbaa !534
  %123 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2749
  %124 = load i16, i16* %120, align 2, !dbg !2750, !tbaa !534
  %125 = getelementptr inbounds i16, i16* %2, i64 4, !dbg !2747
  store i16 %124, i16* %122, align 2, !dbg !2748, !tbaa !534
  %126 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2749
  %127 = load i16, i16* %123, align 2, !dbg !2750, !tbaa !534
  %128 = getelementptr inbounds i16, i16* %2, i64 5, !dbg !2747
  store i16 %127, i16* %125, align 2, !dbg !2748, !tbaa !534
  %129 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2749
  %130 = load i16, i16* %126, align 2, !dbg !2750, !tbaa !534
  %131 = getelementptr inbounds i16, i16* %2, i64 6, !dbg !2747
  store i16 %130, i16* %128, align 2, !dbg !2748, !tbaa !534
  %132 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2749
  %133 = load i16, i16* %129, align 2, !dbg !2750, !tbaa !534
  %134 = getelementptr inbounds i16, i16* %2, i64 7, !dbg !2747
  store i16 %133, i16* %131, align 2, !dbg !2748, !tbaa !534
  %135 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2749
  %136 = load i16, i16* %132, align 2, !dbg !2750, !tbaa !534
  %137 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2747
  store i16 %136, i16* %134, align 2, !dbg !2748, !tbaa !534
  %138 = load i16, i16* %135, align 2, !dbg !2750, !tbaa !534
  %139 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !2747
  store i16 %138, i16* %137, align 2, !dbg !2748, !tbaa !534
  %140 = load i16, i16* %76, align 2, !dbg !2750, !tbaa !534
  store i16 %140, i16* %139, align 2, !dbg !2748, !tbaa !534
  br label %855, !dbg !2751

; <label>:141:                                    ; preds = %75, %111
  br i1 %13, label %142, label %180, !dbg !2755

; <label>:142:                                    ; preds = %141
  %143 = load i16, i16* %0, align 2, !dbg !2759, !tbaa !534
  %144 = icmp eq i16 %143, 0, !dbg !2760
  br i1 %144, label %145, label %180, !dbg !2761

; <label>:145:                                    ; preds = %142
  %146 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2762
  %147 = load i16, i16* %146, align 2, !dbg !2759, !tbaa !534
  %148 = icmp eq i16 %147, 0, !dbg !2760
  br i1 %148, label %149, label %180, !dbg !2761

; <label>:149:                                    ; preds = %145
  %150 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2762
  %151 = load i16, i16* %150, align 2, !dbg !2759, !tbaa !534
  %152 = icmp eq i16 %151, 0, !dbg !2760
  br i1 %152, label %153, label %180, !dbg !2761

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2762
  %155 = load i16, i16* %154, align 2, !dbg !2759, !tbaa !534
  %156 = icmp eq i16 %155, 0, !dbg !2760
  br i1 %156, label %157, label %180, !dbg !2761

; <label>:157:                                    ; preds = %153
  %158 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2762
  %159 = load i16, i16* %158, align 2, !dbg !2759, !tbaa !534
  %160 = icmp eq i16 %159, 0, !dbg !2760
  br i1 %160, label %161, label %180, !dbg !2761

; <label>:161:                                    ; preds = %157
  %162 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2762
  %163 = load i16, i16* %162, align 2, !dbg !2759, !tbaa !534
  %164 = icmp eq i16 %163, 0, !dbg !2760
  br i1 %164, label %165, label %180, !dbg !2761

; <label>:165:                                    ; preds = %161
  %166 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2762
  %167 = load i16, i16* %166, align 2, !dbg !2759, !tbaa !534
  %168 = icmp eq i16 %167, 0, !dbg !2760
  br i1 %168, label %169, label %180, !dbg !2761

; <label>:169:                                    ; preds = %165
  %170 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2762
  %171 = load i16, i16* %170, align 2, !dbg !2759, !tbaa !534
  %172 = icmp eq i16 %171, 0, !dbg !2760
  br i1 %172, label %173, label %180, !dbg !2761

; <label>:173:                                    ; preds = %169
  %174 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2762
  %175 = load i16, i16* %174, align 2, !dbg !2759, !tbaa !534
  %176 = icmp eq i16 %175, 0, !dbg !2760
  br i1 %176, label %177, label %180, !dbg !2763

; <label>:177:                                    ; preds = %173
  %178 = tail call fastcc i32 @ecmp(i16* nonnull %1, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #7, !dbg !2764
  %179 = icmp eq i32 %178, 0, !dbg !2765
  br i1 %179, label %219, label %180, !dbg !2766

; <label>:180:                                    ; preds = %173, %141, %142, %145, %149, %153, %157, %161, %165, %169, %177
  br i1 %79, label %181, label %223, !dbg !2769

; <label>:181:                                    ; preds = %180
  %182 = load i16, i16* %1, align 2, !dbg !2773, !tbaa !534
  %183 = icmp eq i16 %182, 0, !dbg !2774
  br i1 %183, label %184, label %223, !dbg !2775

; <label>:184:                                    ; preds = %181
  %185 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2776
  %186 = load i16, i16* %185, align 2, !dbg !2773, !tbaa !534
  %187 = icmp eq i16 %186, 0, !dbg !2774
  br i1 %187, label %188, label %223, !dbg !2775

; <label>:188:                                    ; preds = %184
  %189 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2776
  %190 = load i16, i16* %189, align 2, !dbg !2773, !tbaa !534
  %191 = icmp eq i16 %190, 0, !dbg !2774
  br i1 %191, label %192, label %223, !dbg !2775

; <label>:192:                                    ; preds = %188
  %193 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2776
  %194 = load i16, i16* %193, align 2, !dbg !2773, !tbaa !534
  %195 = icmp eq i16 %194, 0, !dbg !2774
  br i1 %195, label %196, label %223, !dbg !2775

; <label>:196:                                    ; preds = %192
  %197 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2776
  %198 = load i16, i16* %197, align 2, !dbg !2773, !tbaa !534
  %199 = icmp eq i16 %198, 0, !dbg !2774
  br i1 %199, label %200, label %223, !dbg !2775

; <label>:200:                                    ; preds = %196
  %201 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2776
  %202 = load i16, i16* %201, align 2, !dbg !2773, !tbaa !534
  %203 = icmp eq i16 %202, 0, !dbg !2774
  br i1 %203, label %204, label %223, !dbg !2775

; <label>:204:                                    ; preds = %200
  %205 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2776
  %206 = load i16, i16* %205, align 2, !dbg !2773, !tbaa !534
  %207 = icmp eq i16 %206, 0, !dbg !2774
  br i1 %207, label %208, label %223, !dbg !2775

; <label>:208:                                    ; preds = %204
  %209 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2776
  %210 = load i16, i16* %209, align 2, !dbg !2773, !tbaa !534
  %211 = icmp eq i16 %210, 0, !dbg !2774
  br i1 %211, label %212, label %223, !dbg !2775

; <label>:212:                                    ; preds = %208
  %213 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2776
  %214 = load i16, i16* %213, align 2, !dbg !2773, !tbaa !534
  %215 = icmp eq i16 %214, 0, !dbg !2774
  br i1 %215, label %216, label %223, !dbg !2777

; <label>:216:                                    ; preds = %212
  %217 = tail call fastcc i32 @ecmp(i16* nonnull %0, i16* getelementptr inbounds ([10 x i16], [10 x i16]* @ezero, i64 0, i64 0)) #7, !dbg !2778
  %218 = icmp eq i32 %217, 0, !dbg !2779
  br i1 %218, label %219, label %223, !dbg !2780

; <label>:219:                                    ; preds = %216, %177
  %220 = getelementptr i16, i16* %2, i64 8, !dbg !2786
  %221 = bitcast i16* %2 to <8 x i16>*, !dbg !2787
  store <8 x i16> zeroinitializer, <8 x i16>* %221, align 2, !dbg !2787, !tbaa !534
  %222 = getelementptr i16, i16* %2, i64 9, !dbg !2786
  store i16 -16384, i16* %220, align 2, !dbg !2788, !tbaa !534
  store i16 32767, i16* %222, align 2, !dbg !2789, !tbaa !534
  br label %855, !dbg !2790

; <label>:223:                                    ; preds = %212, %180, %181, %184, %188, %192, %196, %200, %204, %208, %216
  br i1 %13, label %224, label %259, !dbg !2794

; <label>:224:                                    ; preds = %223
  %225 = load i16, i16* %0, align 2, !dbg !2798, !tbaa !534
  %226 = icmp eq i16 %225, 0, !dbg !2799
  br i1 %226, label %227, label %259, !dbg !2800

; <label>:227:                                    ; preds = %224
  %228 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2801
  %229 = load i16, i16* %228, align 2, !dbg !2798, !tbaa !534
  %230 = icmp eq i16 %229, 0, !dbg !2799
  br i1 %230, label %231, label %259, !dbg !2800

; <label>:231:                                    ; preds = %227
  %232 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2801
  %233 = load i16, i16* %232, align 2, !dbg !2798, !tbaa !534
  %234 = icmp eq i16 %233, 0, !dbg !2799
  br i1 %234, label %235, label %259, !dbg !2800

; <label>:235:                                    ; preds = %231
  %236 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2801
  %237 = load i16, i16* %236, align 2, !dbg !2798, !tbaa !534
  %238 = icmp eq i16 %237, 0, !dbg !2799
  br i1 %238, label %239, label %259, !dbg !2800

; <label>:239:                                    ; preds = %235
  %240 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2801
  %241 = load i16, i16* %240, align 2, !dbg !2798, !tbaa !534
  %242 = icmp eq i16 %241, 0, !dbg !2799
  br i1 %242, label %243, label %259, !dbg !2800

; <label>:243:                                    ; preds = %239
  %244 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2801
  %245 = load i16, i16* %244, align 2, !dbg !2798, !tbaa !534
  %246 = icmp eq i16 %245, 0, !dbg !2799
  br i1 %246, label %247, label %259, !dbg !2800

; <label>:247:                                    ; preds = %243
  %248 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2801
  %249 = load i16, i16* %248, align 2, !dbg !2798, !tbaa !534
  %250 = icmp eq i16 %249, 0, !dbg !2799
  br i1 %250, label %251, label %259, !dbg !2800

; <label>:251:                                    ; preds = %247
  %252 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2801
  %253 = load i16, i16* %252, align 2, !dbg !2798, !tbaa !534
  %254 = icmp eq i16 %253, 0, !dbg !2799
  br i1 %254, label %255, label %259, !dbg !2800

; <label>:255:                                    ; preds = %251
  %256 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2801
  %257 = load i16, i16* %256, align 2, !dbg !2798, !tbaa !534
  %258 = icmp eq i16 %257, 0, !dbg !2799
  br i1 %258, label %299, label %259, !dbg !2802

; <label>:259:                                    ; preds = %255, %223, %224, %227, %231, %235, %239, %243, %247, %251
  br i1 %79, label %260, label %384, !dbg !2805

; <label>:260:                                    ; preds = %259
  %261 = load i16, i16* %1, align 2, !dbg !2809, !tbaa !534
  %262 = icmp eq i16 %261, 0, !dbg !2810
  br i1 %262, label %263, label %384, !dbg !2811

; <label>:263:                                    ; preds = %260
  %264 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2812
  %265 = load i16, i16* %264, align 2, !dbg !2809, !tbaa !534
  %266 = icmp eq i16 %265, 0, !dbg !2810
  br i1 %266, label %267, label %384, !dbg !2811

; <label>:267:                                    ; preds = %263
  %268 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2812
  %269 = load i16, i16* %268, align 2, !dbg !2809, !tbaa !534
  %270 = icmp eq i16 %269, 0, !dbg !2810
  br i1 %270, label %271, label %384, !dbg !2811

; <label>:271:                                    ; preds = %267
  %272 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2812
  %273 = load i16, i16* %272, align 2, !dbg !2809, !tbaa !534
  %274 = icmp eq i16 %273, 0, !dbg !2810
  br i1 %274, label %275, label %384, !dbg !2811

; <label>:275:                                    ; preds = %271
  %276 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2812
  %277 = load i16, i16* %276, align 2, !dbg !2809, !tbaa !534
  %278 = icmp eq i16 %277, 0, !dbg !2810
  br i1 %278, label %279, label %384, !dbg !2811

; <label>:279:                                    ; preds = %275
  %280 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2812
  %281 = load i16, i16* %280, align 2, !dbg !2809, !tbaa !534
  %282 = icmp eq i16 %281, 0, !dbg !2810
  br i1 %282, label %283, label %384, !dbg !2811

; <label>:283:                                    ; preds = %279
  %284 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2812
  %285 = load i16, i16* %284, align 2, !dbg !2809, !tbaa !534
  %286 = icmp eq i16 %285, 0, !dbg !2810
  br i1 %286, label %287, label %384, !dbg !2811

; <label>:287:                                    ; preds = %283
  %288 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2812
  %289 = load i16, i16* %288, align 2, !dbg !2809, !tbaa !534
  %290 = icmp eq i16 %289, 0, !dbg !2810
  br i1 %290, label %291, label %384, !dbg !2811

; <label>:291:                                    ; preds = %287
  %292 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2812
  %293 = load i16, i16* %292, align 2, !dbg !2809, !tbaa !534
  %294 = icmp eq i16 %293, 0, !dbg !2810
  br i1 %294, label %295, label %384, !dbg !2813

; <label>:295:                                    ; preds = %291
  br i1 %13, label %296, label %331, !dbg !2820

; <label>:296:                                    ; preds = %295
  %297 = load i16, i16* %0, align 2, !dbg !2821, !tbaa !534
  %298 = icmp eq i16 %297, 0, !dbg !2820
  br i1 %298, label %299, label %336, !dbg !2823

; <label>:299:                                    ; preds = %255, %296
  %300 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2824
  %301 = load i16, i16* %300, align 2, !dbg !2821, !tbaa !534
  %302 = icmp eq i16 %301, 0, !dbg !2825
  br i1 %302, label %303, label %334, !dbg !2823

; <label>:303:                                    ; preds = %299
  %304 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2824
  %305 = load i16, i16* %304, align 2, !dbg !2821, !tbaa !534
  %306 = icmp eq i16 %305, 0, !dbg !2825
  br i1 %306, label %307, label %334, !dbg !2823

; <label>:307:                                    ; preds = %303
  %308 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2824
  %309 = load i16, i16* %308, align 2, !dbg !2821, !tbaa !534
  %310 = icmp eq i16 %309, 0, !dbg !2825
  br i1 %310, label %311, label %334, !dbg !2823

; <label>:311:                                    ; preds = %307
  %312 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2824
  %313 = load i16, i16* %312, align 2, !dbg !2821, !tbaa !534
  %314 = icmp eq i16 %313, 0, !dbg !2825
  br i1 %314, label %315, label %334, !dbg !2823

; <label>:315:                                    ; preds = %311
  %316 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2824
  %317 = load i16, i16* %316, align 2, !dbg !2821, !tbaa !534
  %318 = icmp eq i16 %317, 0, !dbg !2825
  br i1 %318, label %319, label %334, !dbg !2823

; <label>:319:                                    ; preds = %315
  %320 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2824
  %321 = load i16, i16* %320, align 2, !dbg !2821, !tbaa !534
  %322 = icmp eq i16 %321, 0, !dbg !2825
  br i1 %322, label %323, label %334, !dbg !2823

; <label>:323:                                    ; preds = %319
  %324 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2824
  %325 = load i16, i16* %324, align 2, !dbg !2821, !tbaa !534
  %326 = icmp eq i16 %325, 0, !dbg !2825
  br i1 %326, label %327, label %334, !dbg !2823

; <label>:327:                                    ; preds = %323
  %328 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2824
  %329 = load i16, i16* %328, align 2, !dbg !2821, !tbaa !534
  %330 = icmp eq i16 %329, 0, !dbg !2825
  br i1 %330, label %331, label %334, !dbg !2826

; <label>:331:                                    ; preds = %327, %295
  %332 = lshr i16 %11, 15, !dbg !2827
  %333 = zext i16 %332 to i32, !dbg !2827
  br label %334, !dbg !2827

; <label>:334:                                    ; preds = %299, %303, %307, %311, %315, %319, %323, %327, %331
  %335 = phi i32 [ 0, %327 ], [ %333, %331 ], [ 0, %299 ], [ 0, %303 ], [ 0, %307 ], [ 0, %311 ], [ 0, %315 ], [ 0, %319 ], [ 0, %323 ], !dbg !2828
  br i1 %79, label %336, label %372, !dbg !2833

; <label>:336:                                    ; preds = %296, %334
  %337 = phi i32 [ %335, %334 ], [ 0, %296 ]
  %338 = load i16, i16* %1, align 2, !dbg !2835, !tbaa !534
  %339 = icmp eq i16 %338, 0, !dbg !2836
  br i1 %339, label %340, label %376, !dbg !2837

; <label>:340:                                    ; preds = %336
  %341 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2838
  %342 = load i16, i16* %341, align 2, !dbg !2835, !tbaa !534
  %343 = icmp eq i16 %342, 0, !dbg !2836
  br i1 %343, label %344, label %376, !dbg !2837

; <label>:344:                                    ; preds = %340
  %345 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2838
  %346 = load i16, i16* %345, align 2, !dbg !2835, !tbaa !534
  %347 = icmp eq i16 %346, 0, !dbg !2836
  br i1 %347, label %348, label %376, !dbg !2837

; <label>:348:                                    ; preds = %344
  %349 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2838
  %350 = load i16, i16* %349, align 2, !dbg !2835, !tbaa !534
  %351 = icmp eq i16 %350, 0, !dbg !2836
  br i1 %351, label %352, label %376, !dbg !2837

; <label>:352:                                    ; preds = %348
  %353 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2838
  %354 = load i16, i16* %353, align 2, !dbg !2835, !tbaa !534
  %355 = icmp eq i16 %354, 0, !dbg !2836
  br i1 %355, label %356, label %376, !dbg !2837

; <label>:356:                                    ; preds = %352
  %357 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2838
  %358 = load i16, i16* %357, align 2, !dbg !2835, !tbaa !534
  %359 = icmp eq i16 %358, 0, !dbg !2836
  br i1 %359, label %360, label %376, !dbg !2837

; <label>:360:                                    ; preds = %356
  %361 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2838
  %362 = load i16, i16* %361, align 2, !dbg !2835, !tbaa !534
  %363 = icmp eq i16 %362, 0, !dbg !2836
  br i1 %363, label %364, label %376, !dbg !2837

; <label>:364:                                    ; preds = %360
  %365 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2838
  %366 = load i16, i16* %365, align 2, !dbg !2835, !tbaa !534
  %367 = icmp eq i16 %366, 0, !dbg !2836
  br i1 %367, label %368, label %376, !dbg !2837

; <label>:368:                                    ; preds = %364
  %369 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2838
  %370 = load i16, i16* %369, align 2, !dbg !2835, !tbaa !534
  %371 = icmp eq i16 %370, 0, !dbg !2836
  br i1 %371, label %372, label %376, !dbg !2839

; <label>:372:                                    ; preds = %368, %334
  %373 = phi i32 [ %337, %368 ], [ %335, %334 ]
  %374 = lshr i16 %77, 15, !dbg !2840
  %375 = zext i16 %374 to i32, !dbg !2840
  br label %376, !dbg !2840

; <label>:376:                                    ; preds = %336, %340, %344, %348, %352, %356, %360, %364, %368, %372
  %377 = phi i32 [ %337, %368 ], [ %373, %372 ], [ %337, %336 ], [ %337, %340 ], [ %337, %344 ], [ %337, %348 ], [ %337, %352 ], [ %337, %356 ], [ %337, %360 ], [ %337, %364 ]
  %378 = phi i32 [ 0, %368 ], [ %375, %372 ], [ 0, %336 ], [ 0, %340 ], [ 0, %344 ], [ 0, %348 ], [ 0, %352 ], [ 0, %356 ], [ 0, %360 ], [ 0, %364 ], !dbg !2841
  %379 = icmp eq i32 %377, %378, !dbg !2842
  %380 = getelementptr i16, i16* %2, i64 9, !dbg !2843
  %381 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !2848
  %382 = bitcast i16* %2 to <8 x i16>*, !dbg !2849
  store <8 x i16> zeroinitializer, <8 x i16>* %382, align 2, !dbg !2849, !tbaa !534
  store i16 0, i16* %381, align 2, !dbg !2849, !tbaa !534
  %383 = select i1 %379, i16 32767, i16 -1, !dbg !2850
  store i16 %383, i16* %380, align 2, !dbg !2850, !tbaa !534
  br label %855, !dbg !2851

; <label>:384:                                    ; preds = %291, %259, %260, %263, %267, %271, %275, %279, %283, %287
  %385 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 0, !dbg !2852
  %386 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 1, !dbg !2858
  %387 = ashr i16 %11, 15, !dbg !2859
  store i16 %387, i16* %385, align 16, !dbg !2858, !tbaa !534
  %388 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !2860
  %389 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 2, !dbg !2861
  store i16 %12, i16* %386, align 2, !dbg !2862, !tbaa !534
  br i1 %13, label %390, label %465, !dbg !2863

; <label>:390:                                    ; preds = %384
  %391 = load i16, i16* %0, align 2, !dbg !2867, !tbaa !534
  %392 = getelementptr inbounds i16, i16* %0, i64 1
  %393 = load i16, i16* %392, align 2, !dbg !2868, !tbaa !534
  %394 = or i16 %391, %393, !dbg !2869
  %395 = icmp eq i16 %394, 0, !dbg !2869
  br i1 %395, label %396, label %420, !dbg !2869

; <label>:396:                                    ; preds = %390
  %397 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !2870
  %398 = load i16, i16* %397, align 2, !dbg !2867, !tbaa !534
  %399 = icmp eq i16 %398, 0, !dbg !2871
  br i1 %399, label %400, label %420, !dbg !2869

; <label>:400:                                    ; preds = %396
  %401 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !2870
  %402 = load i16, i16* %401, align 2, !dbg !2867, !tbaa !534
  %403 = icmp eq i16 %402, 0, !dbg !2871
  br i1 %403, label %404, label %420, !dbg !2869

; <label>:404:                                    ; preds = %400
  %405 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !2870
  %406 = load i16, i16* %405, align 2, !dbg !2867, !tbaa !534
  %407 = icmp eq i16 %406, 0, !dbg !2871
  br i1 %407, label %408, label %420, !dbg !2869

; <label>:408:                                    ; preds = %404
  %409 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !2870
  %410 = load i16, i16* %409, align 2, !dbg !2867, !tbaa !534
  %411 = icmp eq i16 %410, 0, !dbg !2871
  br i1 %411, label %412, label %420, !dbg !2869

; <label>:412:                                    ; preds = %408
  %413 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !2870
  %414 = load i16, i16* %413, align 2, !dbg !2867, !tbaa !534
  %415 = icmp eq i16 %414, 0, !dbg !2871
  br i1 %415, label %416, label %420, !dbg !2869

; <label>:416:                                    ; preds = %412
  %417 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !2870
  %418 = load i16, i16* %417, align 2, !dbg !2867, !tbaa !534
  %419 = icmp eq i16 %418, 0, !dbg !2871
  br i1 %419, label %436, label %420, !dbg !2869

; <label>:420:                                    ; preds = %390, %416, %412, %408, %404, %400, %396
  %421 = phi i16 [ 0, %416 ], [ 0, %412 ], [ 0, %408 ], [ 0, %404 ], [ 0, %400 ], [ 0, %396 ], [ %393, %390 ], !dbg !2872
  %422 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2873
  store i16 0, i16* %389, align 4, !dbg !2873, !tbaa !534
  %423 = load i16, i16* %388, align 2, !dbg !2872, !tbaa !534
  %424 = getelementptr inbounds i16, i16* %0, i64 7
  %425 = load i16, i16* %424, align 2, !dbg !2872, !tbaa !534
  %426 = getelementptr inbounds i16, i16* %0, i64 6
  %427 = load i16, i16* %426, align 2, !dbg !2872, !tbaa !534
  %428 = getelementptr inbounds i16, i16* %0, i64 5
  %429 = load i16, i16* %428, align 2, !dbg !2872, !tbaa !534
  %430 = getelementptr inbounds i16, i16* %0, i64 4
  %431 = load i16, i16* %430, align 2, !dbg !2872, !tbaa !534
  %432 = getelementptr inbounds i16, i16* %0, i64 3
  %433 = load i16, i16* %432, align 2, !dbg !2872, !tbaa !534
  %434 = getelementptr inbounds i16, i16* %0, i64 2
  %435 = load i16, i16* %434, align 2, !dbg !2872, !tbaa !534
  br label %444, !dbg !2875

; <label>:436:                                    ; preds = %416
  %437 = load i16, i16* %388, align 2, !dbg !2867, !tbaa !534
  %438 = icmp eq i16 %437, 0, !dbg !2871
  %439 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2873
  store i16 0, i16* %389, align 4, !dbg !2873, !tbaa !534
  br i1 %438, label %440, label %444, !dbg !2875

; <label>:440:                                    ; preds = %436
  %441 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2876
  %442 = bitcast i16* %439 to <8 x i16>*, !dbg !2877
  store <8 x i16> zeroinitializer, <8 x i16>* %442, align 2, !dbg !2877, !tbaa !534
  %443 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2876
  store i16 0, i16* %441, align 2, !dbg !2877, !tbaa !534
  store i16 0, i16* %443, align 8, !dbg !2877, !tbaa !534
  br label %483, !dbg !2878

; <label>:444:                                    ; preds = %420, %436
  %445 = phi i16 [ %421, %420 ], [ 0, %436 ], !dbg !2872
  %446 = phi i16 [ %435, %420 ], [ 0, %436 ], !dbg !2872
  %447 = phi i16 [ %433, %420 ], [ 0, %436 ], !dbg !2872
  %448 = phi i16 [ %431, %420 ], [ 0, %436 ], !dbg !2872
  %449 = phi i16 [ %429, %420 ], [ 0, %436 ], !dbg !2872
  %450 = phi i16 [ %427, %420 ], [ 0, %436 ], !dbg !2872
  %451 = phi i16 [ %425, %420 ], [ 0, %436 ], !dbg !2872
  %452 = phi i16 [ %423, %420 ], [ %437, %436 ], !dbg !2872
  %453 = phi i16* [ %422, %420 ], [ %439, %436 ]
  %454 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 4, !dbg !2879
  store i16 %452, i16* %453, align 2, !dbg !2880, !tbaa !534
  %455 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 5, !dbg !2879
  store i16 %451, i16* %454, align 8, !dbg !2880, !tbaa !534
  %456 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 6, !dbg !2879
  store i16 %450, i16* %455, align 2, !dbg !2880, !tbaa !534
  %457 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 7, !dbg !2879
  store i16 %449, i16* %456, align 4, !dbg !2880, !tbaa !534
  %458 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 8, !dbg !2879
  store i16 %448, i16* %457, align 2, !dbg !2880, !tbaa !534
  %459 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 9, !dbg !2879
  store i16 %447, i16* %458, align 16, !dbg !2880, !tbaa !534
  %460 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 10, !dbg !2879
  store i16 %446, i16* %459, align 2, !dbg !2880, !tbaa !534
  %461 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2879
  store i16 %445, i16* %460, align 4, !dbg !2880, !tbaa !534
  %462 = getelementptr inbounds i16, i16* %0, i64 -1, !dbg !2881
  %463 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2879
  store i16 %391, i16* %461, align 2, !dbg !2880, !tbaa !534
  %464 = load i16, i16* %462, align 2, !dbg !2872, !tbaa !534
  store i16 %464, i16* %463, align 8, !dbg !2880, !tbaa !534
  br label %483, !dbg !2878

; <label>:465:                                    ; preds = %384
  %466 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 3, !dbg !2882
  store i16 0, i16* %389, align 4, !dbg !2883, !tbaa !534
  %467 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !2884
  %468 = bitcast i16* %467 to <8 x i16>*, !dbg !2885
  %469 = load <8 x i16>, <8 x i16>* %468, align 2, !dbg !2885, !tbaa !534
  %470 = shufflevector <8 x i16> %469, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2885
  %471 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 11, !dbg !2886
  %472 = bitcast i16* %466 to <8 x i16>*, !dbg !2887
  store <8 x i16> %470, <8 x i16>* %472, align 2, !dbg !2887, !tbaa !534
  %473 = load i16, i16* %0, align 2, !dbg !2885, !tbaa !534
  store i16 %473, i16* %471, align 2, !dbg !2887, !tbaa !534
  %474 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2888
  store i16 0, i16* %474, align 8, !dbg !2889, !tbaa !534
  %475 = extractelement <8 x i16> %469, i32 7, !dbg !2878
  %476 = extractelement <8 x i16> %469, i32 6, !dbg !2878
  %477 = extractelement <8 x i16> %469, i32 5, !dbg !2878
  %478 = extractelement <8 x i16> %469, i32 4, !dbg !2878
  %479 = extractelement <8 x i16> %469, i32 3, !dbg !2878
  %480 = extractelement <8 x i16> %469, i32 2, !dbg !2878
  %481 = extractelement <8 x i16> %469, i32 1, !dbg !2878
  %482 = extractelement <8 x i16> %469, i32 0, !dbg !2878
  br label %483, !dbg !2878

; <label>:483:                                    ; preds = %440, %444, %465
  %484 = phi i16 [ 0, %440 ], [ %391, %444 ], [ %473, %465 ]
  %485 = phi i16 [ 0, %440 ], [ %445, %444 ], [ %482, %465 ]
  %486 = phi i16 [ 0, %440 ], [ %446, %444 ], [ %481, %465 ]
  %487 = phi i16 [ 0, %440 ], [ %447, %444 ], [ %480, %465 ]
  %488 = phi i16 [ 0, %440 ], [ %448, %444 ], [ %479, %465 ]
  %489 = phi i16 [ 0, %440 ], [ %449, %444 ], [ %478, %465 ]
  %490 = phi i16 [ 0, %440 ], [ %450, %444 ], [ %477, %465 ]
  %491 = phi i16 [ 0, %440 ], [ %451, %444 ], [ %476, %465 ]
  %492 = phi i16 [ 0, %440 ], [ %452, %444 ], [ %475, %465 ]
  %493 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 0, !dbg !2890
  %494 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 1, !dbg !2896
  %495 = ashr i16 %77, 15, !dbg !2897
  store i16 %495, i16* %493, align 16, !dbg !2896, !tbaa !534
  %496 = getelementptr inbounds i16, i16* %1, i64 8, !dbg !2898
  %497 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 2, !dbg !2899
  store i16 %78, i16* %494, align 2, !dbg !2900, !tbaa !534
  br i1 %79, label %498, label %573, !dbg !2901

; <label>:498:                                    ; preds = %483
  %499 = load i16, i16* %1, align 2, !dbg !2905, !tbaa !534
  %500 = getelementptr inbounds i16, i16* %1, i64 1
  %501 = load i16, i16* %500, align 2, !dbg !2868, !tbaa !534
  %502 = or i16 %499, %501, !dbg !2906
  %503 = icmp eq i16 %502, 0, !dbg !2906
  br i1 %503, label %504, label %528, !dbg !2906

; <label>:504:                                    ; preds = %498
  %505 = getelementptr inbounds i16, i16* %1, i64 2, !dbg !2907
  %506 = load i16, i16* %505, align 2, !dbg !2905, !tbaa !534
  %507 = icmp eq i16 %506, 0, !dbg !2908
  br i1 %507, label %508, label %528, !dbg !2906

; <label>:508:                                    ; preds = %504
  %509 = getelementptr inbounds i16, i16* %1, i64 3, !dbg !2907
  %510 = load i16, i16* %509, align 2, !dbg !2905, !tbaa !534
  %511 = icmp eq i16 %510, 0, !dbg !2908
  br i1 %511, label %512, label %528, !dbg !2906

; <label>:512:                                    ; preds = %508
  %513 = getelementptr inbounds i16, i16* %1, i64 4, !dbg !2907
  %514 = load i16, i16* %513, align 2, !dbg !2905, !tbaa !534
  %515 = icmp eq i16 %514, 0, !dbg !2908
  br i1 %515, label %516, label %528, !dbg !2906

; <label>:516:                                    ; preds = %512
  %517 = getelementptr inbounds i16, i16* %1, i64 5, !dbg !2907
  %518 = load i16, i16* %517, align 2, !dbg !2905, !tbaa !534
  %519 = icmp eq i16 %518, 0, !dbg !2908
  br i1 %519, label %520, label %528, !dbg !2906

; <label>:520:                                    ; preds = %516
  %521 = getelementptr inbounds i16, i16* %1, i64 6, !dbg !2907
  %522 = load i16, i16* %521, align 2, !dbg !2905, !tbaa !534
  %523 = icmp eq i16 %522, 0, !dbg !2908
  br i1 %523, label %524, label %528, !dbg !2906

; <label>:524:                                    ; preds = %520
  %525 = getelementptr inbounds i16, i16* %1, i64 7, !dbg !2907
  %526 = load i16, i16* %525, align 2, !dbg !2905, !tbaa !534
  %527 = icmp eq i16 %526, 0, !dbg !2908
  br i1 %527, label %544, label %528, !dbg !2906

; <label>:528:                                    ; preds = %498, %524, %520, %516, %512, %508, %504
  %529 = phi i16 [ 0, %524 ], [ 0, %520 ], [ 0, %516 ], [ 0, %512 ], [ 0, %508 ], [ 0, %504 ], [ %501, %498 ], !dbg !2909
  %530 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2910
  store i16 0, i16* %497, align 4, !dbg !2910, !tbaa !534
  %531 = load i16, i16* %496, align 2, !dbg !2909, !tbaa !534
  %532 = getelementptr inbounds i16, i16* %1, i64 7
  %533 = load i16, i16* %532, align 2, !dbg !2909, !tbaa !534
  %534 = getelementptr inbounds i16, i16* %1, i64 6
  %535 = load i16, i16* %534, align 2, !dbg !2909, !tbaa !534
  %536 = getelementptr inbounds i16, i16* %1, i64 5
  %537 = load i16, i16* %536, align 2, !dbg !2909, !tbaa !534
  %538 = getelementptr inbounds i16, i16* %1, i64 4
  %539 = load i16, i16* %538, align 2, !dbg !2909, !tbaa !534
  %540 = getelementptr inbounds i16, i16* %1, i64 3
  %541 = load i16, i16* %540, align 2, !dbg !2909, !tbaa !534
  %542 = getelementptr inbounds i16, i16* %1, i64 2
  %543 = load i16, i16* %542, align 2, !dbg !2909, !tbaa !534
  br label %552, !dbg !2912

; <label>:544:                                    ; preds = %524
  %545 = load i16, i16* %496, align 2, !dbg !2905, !tbaa !534
  %546 = icmp eq i16 %545, 0, !dbg !2908
  %547 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2910
  store i16 0, i16* %497, align 4, !dbg !2910, !tbaa !534
  br i1 %546, label %548, label %552, !dbg !2912

; <label>:548:                                    ; preds = %544
  %549 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2913
  %550 = bitcast i16* %547 to <8 x i16>*, !dbg !2914
  store <8 x i16> zeroinitializer, <8 x i16>* %550, align 2, !dbg !2914, !tbaa !534
  %551 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2913
  store i16 0, i16* %549, align 2, !dbg !2914, !tbaa !534
  store i16 0, i16* %551, align 8, !dbg !2914, !tbaa !534
  br label %583, !dbg !2915

; <label>:552:                                    ; preds = %528, %544
  %553 = phi i16 [ %529, %528 ], [ 0, %544 ], !dbg !2909
  %554 = phi i16 [ %543, %528 ], [ 0, %544 ], !dbg !2909
  %555 = phi i16 [ %541, %528 ], [ 0, %544 ], !dbg !2909
  %556 = phi i16 [ %539, %528 ], [ 0, %544 ], !dbg !2909
  %557 = phi i16 [ %537, %528 ], [ 0, %544 ], !dbg !2909
  %558 = phi i16 [ %535, %528 ], [ 0, %544 ], !dbg !2909
  %559 = phi i16 [ %533, %528 ], [ 0, %544 ], !dbg !2909
  %560 = phi i16 [ %531, %528 ], [ %545, %544 ], !dbg !2909
  %561 = phi i16* [ %530, %528 ], [ %547, %544 ]
  %562 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2916
  store i16 %560, i16* %561, align 2, !dbg !2917, !tbaa !534
  %563 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2916
  store i16 %559, i16* %562, align 8, !dbg !2917, !tbaa !534
  %564 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2916
  store i16 %558, i16* %563, align 2, !dbg !2917, !tbaa !534
  %565 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2916
  store i16 %557, i16* %564, align 4, !dbg !2917, !tbaa !534
  %566 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2916
  store i16 %556, i16* %565, align 2, !dbg !2917, !tbaa !534
  %567 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2916
  store i16 %555, i16* %566, align 16, !dbg !2917, !tbaa !534
  %568 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2916
  store i16 %554, i16* %567, align 2, !dbg !2917, !tbaa !534
  %569 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2916
  store i16 %553, i16* %568, align 4, !dbg !2917, !tbaa !534
  %570 = getelementptr inbounds i16, i16* %1, i64 -1, !dbg !2918
  %571 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2916
  store i16 %499, i16* %569, align 2, !dbg !2917, !tbaa !534
  %572 = load i16, i16* %570, align 2, !dbg !2909, !tbaa !534
  store i16 %572, i16* %571, align 8, !dbg !2917, !tbaa !534
  br label %583, !dbg !2915

; <label>:573:                                    ; preds = %483
  %574 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2919
  store i16 0, i16* %497, align 4, !dbg !2920, !tbaa !534
  %575 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !2921
  %576 = bitcast i16* %575 to <8 x i16>*, !dbg !2922
  %577 = load <8 x i16>, <8 x i16>* %576, align 2, !dbg !2922, !tbaa !534
  %578 = shufflevector <8 x i16> %577, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !2922
  %579 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2923
  %580 = bitcast i16* %574 to <8 x i16>*, !dbg !2924
  store <8 x i16> %578, <8 x i16>* %580, align 2, !dbg !2924, !tbaa !534
  %581 = load i16, i16* %1, align 2, !dbg !2922, !tbaa !534
  store i16 %581, i16* %579, align 2, !dbg !2924, !tbaa !534
  %582 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12, !dbg !2925
  store i16 0, i16* %582, align 8, !dbg !2926, !tbaa !534
  br label %583, !dbg !2915

; <label>:583:                                    ; preds = %548, %552, %573
  %584 = zext i16 %12 to i64, !dbg !2927
  %585 = zext i16 %78 to i64, !dbg !2929
  %586 = icmp eq i16 %12, 0, !dbg !2931
  br i1 %586, label %896, label %592, !dbg !2933

; <label>:587:                                    ; preds = %896
  %588 = call fastcc i32 @enormlz(i16* nonnull %385) #7, !dbg !2934
  %589 = sext i32 %588 to i64, !dbg !2934
  %590 = sub nsw i64 %584, %589, !dbg !2941
  %591 = load i16, i16* %494, align 2, !dbg !2942, !tbaa !534
  br label %592, !dbg !2944

; <label>:592:                                    ; preds = %583, %587
  %593 = phi i16 [ %78, %583 ], [ %591, %587 ], !dbg !2942
  %594 = phi i64 [ %584, %583 ], [ %590, %587 ], !dbg !2868
  %595 = icmp eq i16 %593, 0, !dbg !2945
  br i1 %595, label %596, label %604, !dbg !2946

; <label>:596:                                    ; preds = %592
  %597 = load i16, i16* %497, align 4, !dbg !2948, !tbaa !534
  %598 = icmp eq i16 %597, 0, !dbg !2954
  br i1 %598, label %856, label %599, !dbg !2955

; <label>:599:                                    ; preds = %888, %884, %880, %876, %872, %868, %864, %860, %856, %596
  %600 = call fastcc i32 @enormlz(i16* nonnull %493) #7, !dbg !2956
  %601 = sext i32 %600 to i64, !dbg !2956
  %602 = sub nsw i64 %585, %601, !dbg !2958
  %603 = load i16, i16* %494, align 2, !dbg !2959, !tbaa !534
  br label %604, !dbg !2960

; <label>:604:                                    ; preds = %592, %599
  %605 = phi i16 [ %603, %599 ], [ %593, %592 ], !dbg !2959
  %606 = phi i64 [ %602, %599 ], [ %585, %592 ], !dbg !2868
  %607 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 0, !dbg !2964
  %608 = load i16, i16* %493, align 16, !dbg !2966, !tbaa !534
  store i16 %608, i16* %607, align 2, !dbg !2967, !tbaa !534
  %609 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 1, !dbg !2968
  store i16 %605, i16* %609, align 2, !dbg !2969, !tbaa !534
  %610 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 2, !dbg !2971
  %611 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 3, !dbg !2971
  %612 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 4, !dbg !2971
  %613 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 5, !dbg !2971
  %614 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 6, !dbg !2971
  %615 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 7, !dbg !2971
  %616 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 8, !dbg !2971
  %617 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 9, !dbg !2971
  %618 = bitcast i16* %610 to <8 x i16>*, !dbg !2974
  store <8 x i16> zeroinitializer, <8 x i16>* %618, align 2, !dbg !2974, !tbaa !534
  %619 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 10, !dbg !2971
  store i16 0, i16* %619, align 2, !dbg !2974, !tbaa !534
  %620 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 11, !dbg !2971
  store i16 0, i16* %620, align 2, !dbg !2974, !tbaa !534
  %621 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %3, i64 0, i32 9, i64 12, !dbg !2971
  store i16 0, i16* %621, align 2, !dbg !2974, !tbaa !534
  %622 = getelementptr inbounds [13 x i16], [13 x i16]* %6, i64 0, i64 12, !dbg !2976
  %623 = bitcast [13 x i16]* %5 to i8*
  %624 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 11
  %625 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 12
  %626 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 12
  %627 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 2
  %628 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 3
  %629 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 4
  %630 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 5
  %631 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 6
  %632 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 7
  %633 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 8
  %634 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 9
  %635 = getelementptr inbounds [13 x i16], [13 x i16]* %5, i64 0, i64 10
  br label %636, !dbg !2979

; <label>:636:                                    ; preds = %782, %604
  %637 = phi i16 [ 0, %604 ], [ %783, %782 ]
  %638 = phi i16 [ 0, %604 ], [ %784, %782 ]
  %639 = phi i16 [ 0, %604 ], [ %785, %782 ]
  %640 = phi i16 [ 0, %604 ], [ %786, %782 ]
  %641 = phi i16 [ 0, %604 ], [ %787, %782 ]
  %642 = phi i16 [ 0, %604 ], [ %788, %782 ]
  %643 = phi i16 [ 0, %604 ], [ %789, %782 ]
  %644 = phi i16 [ 0, %604 ], [ %790, %782 ]
  %645 = phi i16 [ 0, %604 ], [ %791, %782 ]
  %646 = phi i16 [ 0, %604 ], [ %792, %782 ]
  %647 = phi i16* [ %622, %604 ], [ %652, %782 ]
  %648 = phi i32 [ 3, %604 ], [ %796, %782 ]
  %649 = phi i32 [ 0, %604 ], [ %795, %782 ]
  %650 = load i16, i16* %647, align 2, !dbg !2980, !tbaa !534
  %651 = icmp eq i16 %650, 0, !dbg !2981
  %652 = getelementptr inbounds i16, i16* %647, i64 -1, !dbg !2982
  br i1 %651, label %782, label %653, !dbg !2983

; <label>:653:                                    ; preds = %636
  call void @llvm.lifetime.start.p0i8(i64 26, i8* nonnull %623) #5, !dbg !2987
  %654 = zext i16 %650 to i64, !dbg !2988
  store i16 0, i16* %624, align 2, !dbg !2991, !tbaa !534
  store i16 0, i16* %625, align 8, !dbg !2992, !tbaa !534
  br label %655, !dbg !2995

; <label>:655:                                    ; preds = %681, %653
  %656 = phi i32 [ 3, %653 ], [ %686, %681 ]
  %657 = phi i16* [ %625, %653 ], [ %683, %681 ]
  %658 = phi i16* [ %626, %653 ], [ %685, %681 ]
  %659 = load i16, i16* %658, align 2, !dbg !2996, !tbaa !534
  %660 = icmp eq i16 %659, 0, !dbg !2997
  br i1 %660, label %661, label %663, !dbg !2998

; <label>:661:                                    ; preds = %655
  %662 = getelementptr inbounds i16, i16* %657, i64 -1, !dbg !2999
  br label %681, !dbg !3000

; <label>:663:                                    ; preds = %655
  %664 = zext i16 %659 to i64, !dbg !3001
  %665 = mul nuw nsw i64 %664, %654, !dbg !3002
  %666 = and i64 %665, 65535, !dbg !3004
  %667 = load i16, i16* %657, align 2, !dbg !3005, !tbaa !534
  %668 = zext i16 %667 to i64, !dbg !3005
  %669 = add nuw nsw i64 %666, %668, !dbg !3006
  %670 = trunc i64 %669 to i16, !dbg !3008
  %671 = getelementptr inbounds i16, i16* %657, i64 -1, !dbg !3009
  store i16 %670, i16* %657, align 2, !dbg !3010, !tbaa !534
  %672 = lshr i64 %669, 16, !dbg !3011
  %673 = lshr i64 %665, 16, !dbg !3012
  %674 = add nuw nsw i64 %672, %673, !dbg !3013
  %675 = load i16, i16* %671, align 2, !dbg !3014, !tbaa !534
  %676 = zext i16 %675 to i64, !dbg !3014
  %677 = add nuw nsw i64 %674, %676, !dbg !3015
  %678 = trunc i64 %677 to i16, !dbg !3016
  store i16 %678, i16* %671, align 2, !dbg !3017, !tbaa !534
  %679 = lshr i64 %677, 16, !dbg !3018
  %680 = trunc i64 %679 to i16, !dbg !3019
  br label %681

; <label>:681:                                    ; preds = %663, %661
  %682 = phi i16 [ 0, %661 ], [ %680, %663 ]
  %683 = phi i16* [ %662, %661 ], [ %671, %663 ], !dbg !3020
  %684 = getelementptr inbounds i16, i16* %657, i64 -2, !dbg !3021
  store i16 %682, i16* %684, align 2, !dbg !3022
  %685 = getelementptr inbounds i16, i16* %658, i64 -1, !dbg !3020
  %686 = add nuw nsw i32 %656, 1, !dbg !3023
  %687 = icmp eq i32 %686, 13, !dbg !3024
  br i1 %687, label %688, label %655, !dbg !2995, !llvm.loop !2499

; <label>:688:                                    ; preds = %681
  %689 = load i16, i16* %627, align 4, !dbg !3025, !tbaa !534
  %690 = load i16, i16* %628, align 2, !dbg !3025, !tbaa !534
  %691 = load i16, i16* %629, align 8, !dbg !3025, !tbaa !534
  %692 = load i16, i16* %630, align 2, !dbg !3025, !tbaa !534
  %693 = load i16, i16* %631, align 4, !dbg !3025, !tbaa !534
  %694 = load i16, i16* %632, align 2, !dbg !3025, !tbaa !534
  %695 = load i16, i16* %633, align 16, !dbg !3025, !tbaa !534
  %696 = load i16, i16* %634, align 2, !dbg !3025, !tbaa !534
  %697 = load i16, i16* %635, align 4, !dbg !3025, !tbaa !534
  %698 = load i16, i16* %624, align 2, !dbg !3025, !tbaa !534
  %699 = load i16, i16* %625, align 8, !dbg !3025, !tbaa !534
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %623) #5, !dbg !3027
  %700 = zext i16 %699 to i64, !dbg !3033
  %701 = load i16, i16* %621, align 2, !dbg !3034, !tbaa !534
  %702 = zext i16 %701 to i64, !dbg !3035
  %703 = add nuw nsw i64 %702, %700, !dbg !3036
  %704 = lshr i64 %703, 16
  %705 = trunc i64 %703 to i16, !dbg !3038
  store i16 %705, i16* %621, align 2, !dbg !3039, !tbaa !534
  %706 = zext i16 %698 to i64, !dbg !3033
  %707 = load i16, i16* %620, align 2, !dbg !3034, !tbaa !534
  %708 = zext i16 %707 to i64, !dbg !3035
  %709 = add nuw nsw i64 %704, %706, !dbg !3040
  %710 = add nuw nsw i64 %709, %708, !dbg !3036
  %711 = lshr i64 %710, 16
  %712 = and i64 %711, 1
  %713 = trunc i64 %710 to i16, !dbg !3038
  store i16 %713, i16* %620, align 2, !dbg !3039, !tbaa !534
  %714 = zext i16 %697 to i64, !dbg !3033
  %715 = load i16, i16* %619, align 2, !dbg !3034, !tbaa !534
  %716 = zext i16 %715 to i64, !dbg !3035
  %717 = add nuw nsw i64 %716, %714, !dbg !3040
  %718 = add nuw nsw i64 %717, %712, !dbg !3036
  %719 = lshr i64 %718, 16
  %720 = and i64 %719, 1
  %721 = trunc i64 %718 to i16, !dbg !3038
  store i16 %721, i16* %619, align 2, !dbg !3039, !tbaa !534
  %722 = zext i16 %696 to i64, !dbg !3033
  %723 = load i16, i16* %617, align 2, !dbg !3034, !tbaa !534
  %724 = zext i16 %723 to i64, !dbg !3035
  %725 = add nuw nsw i64 %724, %722, !dbg !3040
  %726 = add nuw nsw i64 %725, %720, !dbg !3036
  %727 = lshr i64 %726, 16
  %728 = and i64 %727, 1
  %729 = trunc i64 %726 to i16, !dbg !3038
  store i16 %729, i16* %617, align 2, !dbg !3039, !tbaa !534
  %730 = zext i16 %695 to i64, !dbg !3033
  %731 = load i16, i16* %616, align 2, !dbg !3034, !tbaa !534
  %732 = zext i16 %731 to i64, !dbg !3035
  %733 = add nuw nsw i64 %732, %730, !dbg !3040
  %734 = add nuw nsw i64 %733, %728, !dbg !3036
  %735 = lshr i64 %734, 16
  %736 = and i64 %735, 1
  %737 = trunc i64 %734 to i16, !dbg !3038
  store i16 %737, i16* %616, align 2, !dbg !3039, !tbaa !534
  %738 = zext i16 %694 to i64, !dbg !3033
  %739 = load i16, i16* %615, align 2, !dbg !3034, !tbaa !534
  %740 = zext i16 %739 to i64, !dbg !3035
  %741 = add nuw nsw i64 %740, %738, !dbg !3040
  %742 = add nuw nsw i64 %741, %736, !dbg !3036
  %743 = lshr i64 %742, 16
  %744 = and i64 %743, 1
  %745 = trunc i64 %742 to i16, !dbg !3038
  store i16 %745, i16* %615, align 2, !dbg !3039, !tbaa !534
  %746 = zext i16 %693 to i64, !dbg !3033
  %747 = load i16, i16* %614, align 2, !dbg !3034, !tbaa !534
  %748 = zext i16 %747 to i64, !dbg !3035
  %749 = add nuw nsw i64 %748, %746, !dbg !3040
  %750 = add nuw nsw i64 %749, %744, !dbg !3036
  %751 = lshr i64 %750, 16
  %752 = and i64 %751, 1
  %753 = trunc i64 %750 to i16, !dbg !3038
  store i16 %753, i16* %614, align 2, !dbg !3039, !tbaa !534
  %754 = zext i16 %692 to i64, !dbg !3033
  %755 = load i16, i16* %613, align 2, !dbg !3034, !tbaa !534
  %756 = zext i16 %755 to i64, !dbg !3035
  %757 = add nuw nsw i64 %756, %754, !dbg !3040
  %758 = add nuw nsw i64 %757, %752, !dbg !3036
  %759 = lshr i64 %758, 16
  %760 = and i64 %759, 1
  %761 = trunc i64 %758 to i16, !dbg !3038
  store i16 %761, i16* %613, align 2, !dbg !3039, !tbaa !534
  %762 = zext i16 %691 to i64, !dbg !3033
  %763 = load i16, i16* %612, align 2, !dbg !3034, !tbaa !534
  %764 = zext i16 %763 to i64, !dbg !3035
  %765 = add nuw nsw i64 %764, %762, !dbg !3040
  %766 = add nuw nsw i64 %765, %760, !dbg !3036
  %767 = lshr i64 %766, 16
  %768 = and i64 %767, 1
  %769 = trunc i64 %766 to i16, !dbg !3038
  store i16 %769, i16* %612, align 2, !dbg !3039, !tbaa !534
  %770 = zext i16 %690 to i64, !dbg !3033
  %771 = load i16, i16* %611, align 2, !dbg !3034, !tbaa !534
  %772 = zext i16 %771 to i64, !dbg !3035
  %773 = add nuw nsw i64 %772, %770, !dbg !3040
  %774 = add nuw nsw i64 %773, %768, !dbg !3036
  %775 = lshr i64 %774, 16
  %776 = trunc i64 %774 to i16, !dbg !3038
  store i16 %776, i16* %611, align 2, !dbg !3039, !tbaa !534
  %777 = load i16, i16* %610, align 2, !dbg !3034, !tbaa !534
  %778 = trunc i64 %775 to i16, !dbg !3038
  %779 = and i16 %778, 1, !dbg !3038
  %780 = add i16 %777, %689, !dbg !3038
  %781 = add i16 %780, %779, !dbg !3038
  store i16 %781, i16* %610, align 2, !dbg !3039, !tbaa !534
  br label %782

; <label>:782:                                    ; preds = %688, %636
  %783 = phi i16 [ 0, %636 ], [ %781, %688 ], !dbg !3041
  %784 = phi i16 [ %637, %636 ], [ %776, %688 ], !dbg !3041
  %785 = phi i16 [ %638, %636 ], [ %769, %688 ], !dbg !3041
  %786 = phi i16 [ %639, %636 ], [ %761, %688 ], !dbg !3041
  %787 = phi i16 [ %640, %636 ], [ %753, %688 ], !dbg !3041
  %788 = phi i16 [ %641, %636 ], [ %745, %688 ], !dbg !3041
  %789 = phi i16 [ %642, %636 ], [ %737, %688 ], !dbg !3041
  %790 = phi i16 [ %643, %636 ], [ %729, %688 ], !dbg !3041
  %791 = phi i16 [ %644, %636 ], [ %721, %688 ], !dbg !3041
  %792 = phi i16 [ %645, %636 ], [ %713, %688 ], !dbg !3041
  %793 = phi i16 [ %646, %636 ], [ %705, %688 ], !dbg !3050
  %794 = zext i16 %793 to i32, !dbg !3050
  %795 = or i32 %649, %794, !dbg !3051
  store i16 %792, i16* %621, align 2, !dbg !3055, !tbaa !534
  store i16 %791, i16* %620, align 2, !dbg !3055, !tbaa !534
  store i16 %790, i16* %619, align 2, !dbg !3055, !tbaa !534
  store i16 %789, i16* %617, align 2, !dbg !3055, !tbaa !534
  store i16 %788, i16* %616, align 2, !dbg !3055, !tbaa !534
  store i16 %787, i16* %615, align 2, !dbg !3055, !tbaa !534
  store i16 %786, i16* %614, align 2, !dbg !3055, !tbaa !534
  store i16 %785, i16* %613, align 2, !dbg !3055, !tbaa !534
  store i16 %784, i16* %612, align 2, !dbg !3055, !tbaa !534
  store i16 %783, i16* %611, align 2, !dbg !3055, !tbaa !534
  store i16 0, i16* %610, align 2, !dbg !3056, !tbaa !534
  %796 = add nuw nsw i32 %648, 1, !dbg !3057
  %797 = icmp eq i32 %796, 13, !dbg !3058
  br i1 %797, label %798, label %636, !dbg !2979, !llvm.loop !3059

; <label>:798:                                    ; preds = %782
  %799 = load i16, i16* %607, align 2, !dbg !3062, !tbaa !534
  store i16 %799, i16* %493, align 16, !dbg !3065, !tbaa !534
  %800 = load i16, i16* %609, align 2, !dbg !3062, !tbaa !534
  store i16 %800, i16* %494, align 2, !dbg !3065, !tbaa !534
  store i16 0, i16* %497, align 4, !dbg !3065, !tbaa !534
  %801 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !3066
  store i16 %783, i16* %801, align 2, !dbg !3065, !tbaa !534
  %802 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !3066
  store i16 %784, i16* %802, align 8, !dbg !3065, !tbaa !534
  %803 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !3066
  store i16 %785, i16* %803, align 2, !dbg !3065, !tbaa !534
  %804 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !3066
  store i16 %786, i16* %804, align 4, !dbg !3065, !tbaa !534
  %805 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !3066
  store i16 %787, i16* %805, align 2, !dbg !3065, !tbaa !534
  %806 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !3066
  store i16 %788, i16* %806, align 16, !dbg !3065, !tbaa !534
  %807 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !3066
  store i16 %789, i16* %807, align 2, !dbg !3065, !tbaa !534
  %808 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !3066
  store i16 %790, i16* %808, align 4, !dbg !3065, !tbaa !534
  %809 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !3066
  store i16 %791, i16* %809, align 2, !dbg !3065, !tbaa !534
  store i16 %792, i16* %626, align 8, !dbg !3065, !tbaa !534
  %810 = add nsw i64 %594, -16382, !dbg !3068
  %811 = add nsw i64 %810, %606, !dbg !3069
  call fastcc void @emdnorm(i16* nonnull %493, i32 %795, i32 0, i64 %811, i32 64, %struct.LDPARMS* nonnull %3) #7, !dbg !3071
  %812 = load i16, i16* %385, align 16, !dbg !3072, !tbaa !534
  %813 = load i16, i16* %493, align 16, !dbg !3074, !tbaa !534
  %814 = icmp eq i16 %812, %813, !dbg !3075
  %815 = xor i1 %814, true, !dbg !3076
  %816 = sext i1 %815 to i16, !dbg !3076
  store i16 %816, i16* %493, align 16, !dbg !3077, !tbaa !534
  %817 = getelementptr i16, i16* %2, i64 9, !dbg !3083
  %818 = load i16, i16* %494, align 2, !dbg !3086, !tbaa !534
  %819 = or i16 %818, -32768, !dbg !3087
  %820 = select i1 %814, i16 %818, i16 %819, !dbg !3088
  store i16 %820, i16* %817, align 2, !dbg !3086, !tbaa !534
  %821 = icmp eq i16 %818, 32767, !dbg !3089
  br i1 %821, label %822, label %848, !dbg !3090

; <label>:822:                                    ; preds = %798
  %823 = load i16, i16* %801, align 2, !dbg !3094, !tbaa !534
  %824 = load i16, i16* %802, align 8, !dbg !3094
  %825 = or i16 %824, %823, !dbg !3095
  %826 = load i16, i16* %803, align 2, !dbg !3094
  %827 = or i16 %825, %826, !dbg !3095
  %828 = load i16, i16* %804, align 4, !dbg !3094
  %829 = or i16 %827, %828, !dbg !3095
  %830 = load i16, i16* %805, align 2, !dbg !3094
  %831 = or i16 %829, %830, !dbg !3095
  %832 = load i16, i16* %806, align 16, !dbg !3094
  %833 = or i16 %831, %832, !dbg !3095
  %834 = load i16, i16* %807, align 2, !dbg !3094
  %835 = or i16 %833, %834, !dbg !3095
  %836 = load i16, i16* %808, align 4, !dbg !3094
  %837 = or i16 %835, %836, !dbg !3095
  %838 = load i16, i16* %809, align 2, !dbg !3094
  %839 = or i16 %837, %838, !dbg !3095
  %840 = load i16, i16* %626, align 8, !dbg !3094
  %841 = or i16 %839, %840, !dbg !3095
  %842 = icmp eq i16 %841, 0, !dbg !3095
  %843 = getelementptr i16, i16* %2, i64 8, !dbg !2868
  %844 = bitcast i16* %2 to <8 x i16>*, !dbg !2868
  store <8 x i16> zeroinitializer, <8 x i16>* %844, align 2, !dbg !2868, !tbaa !534
  br i1 %842, label %846, label %845, !dbg !3095

; <label>:845:                                    ; preds = %822
  store i16 -16384, i16* %843, align 2, !dbg !3100, !tbaa !534
  store i16 32767, i16* %817, align 2, !dbg !3101, !tbaa !534
  br label %855, !dbg !3102

; <label>:846:                                    ; preds = %822
  store i16 0, i16* %843, align 2, !dbg !3107, !tbaa !534
  %847 = or i16 %820, 32767, !dbg !3108
  store i16 %847, i16* %817, align 2, !dbg !3108, !tbaa !534
  br label %855, !dbg !3109

; <label>:848:                                    ; preds = %798
  %849 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !3086
  %850 = load i16, i16* %801, align 2, !dbg !3110, !tbaa !534
  store i16 %850, i16* %849, align 2, !dbg !3111, !tbaa !534
  %851 = bitcast i16* %802 to <8 x i16>*, !dbg !3110
  %852 = load <8 x i16>, <8 x i16>* %851, align 8, !dbg !3110, !tbaa !534
  %853 = shufflevector <8 x i16> %852, <8 x i16> undef, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>, !dbg !3110
  %854 = bitcast i16* %2 to <8 x i16>*, !dbg !3111
  store <8 x i16> %853, <8 x i16>* %854, align 2, !dbg !3111, !tbaa !534
  br label %855, !dbg !3112

; <label>:855:                                    ; preds = %848, %846, %845, %892, %906, %376, %219, %115, %49
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %9) #5, !dbg !3113
  call void @llvm.lifetime.end.p0i8(i64 26, i8* nonnull %8) #5, !dbg !3113
  ret void, !dbg !3113

; <label>:856:                                    ; preds = %596
  %857 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 3, !dbg !2948
  %858 = load i16, i16* %857, align 2, !dbg !2948, !tbaa !534
  %859 = icmp eq i16 %858, 0, !dbg !2954
  br i1 %859, label %860, label %599, !dbg !2955

; <label>:860:                                    ; preds = %856
  %861 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 4, !dbg !2948
  %862 = load i16, i16* %861, align 8, !dbg !2948, !tbaa !534
  %863 = icmp eq i16 %862, 0, !dbg !2954
  br i1 %863, label %864, label %599, !dbg !2955

; <label>:864:                                    ; preds = %860
  %865 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 5, !dbg !2948
  %866 = load i16, i16* %865, align 2, !dbg !2948, !tbaa !534
  %867 = icmp eq i16 %866, 0, !dbg !2954
  br i1 %867, label %868, label %599, !dbg !2955

; <label>:868:                                    ; preds = %864
  %869 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 6, !dbg !2948
  %870 = load i16, i16* %869, align 4, !dbg !2948, !tbaa !534
  %871 = icmp eq i16 %870, 0, !dbg !2954
  br i1 %871, label %872, label %599, !dbg !2955

; <label>:872:                                    ; preds = %868
  %873 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 7, !dbg !2948
  %874 = load i16, i16* %873, align 2, !dbg !2948, !tbaa !534
  %875 = icmp eq i16 %874, 0, !dbg !2954
  br i1 %875, label %876, label %599, !dbg !2955

; <label>:876:                                    ; preds = %872
  %877 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 8, !dbg !2948
  %878 = load i16, i16* %877, align 16, !dbg !2948, !tbaa !534
  %879 = icmp eq i16 %878, 0, !dbg !2954
  br i1 %879, label %880, label %599, !dbg !2955

; <label>:880:                                    ; preds = %876
  %881 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 9, !dbg !2948
  %882 = load i16, i16* %881, align 2, !dbg !2948, !tbaa !534
  %883 = icmp eq i16 %882, 0, !dbg !2954
  br i1 %883, label %884, label %599, !dbg !2955

; <label>:884:                                    ; preds = %880
  %885 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 10, !dbg !2948
  %886 = load i16, i16* %885, align 4, !dbg !2948, !tbaa !534
  %887 = icmp eq i16 %886, 0, !dbg !2954
  br i1 %887, label %888, label %599, !dbg !2955

; <label>:888:                                    ; preds = %884
  %889 = getelementptr inbounds [13 x i16], [13 x i16]* %7, i64 0, i64 11, !dbg !2948
  %890 = load i16, i16* %889, align 2, !dbg !2948, !tbaa !534
  %891 = icmp eq i16 %890, 0, !dbg !2954
  br i1 %891, label %892, label %599, !dbg !2955

; <label>:892:                                    ; preds = %888
  %893 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !3117
  %894 = bitcast i16* %2 to <8 x i16>*, !dbg !3118
  store <8 x i16> zeroinitializer, <8 x i16>* %894, align 2, !dbg !3118, !tbaa !534
  %895 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !3117
  store i16 0, i16* %893, align 2, !dbg !3118, !tbaa !534
  store i16 0, i16* %895, align 2, !dbg !3118, !tbaa !534
  br label %855, !dbg !3119

; <label>:896:                                    ; preds = %583
  %897 = or i16 %492, %491, !dbg !3120
  %898 = or i16 %897, %490, !dbg !3120
  %899 = or i16 %898, %489, !dbg !3120
  %900 = or i16 %899, %488, !dbg !3120
  %901 = or i16 %900, %487, !dbg !3120
  %902 = or i16 %901, %486, !dbg !3120
  %903 = or i16 %902, %485, !dbg !3120
  %904 = or i16 %903, %484, !dbg !3120
  %905 = icmp eq i16 %904, 0, !dbg !3120
  br i1 %905, label %906, label %587, !dbg !3120

; <label>:906:                                    ; preds = %896
  %907 = getelementptr inbounds i16, i16* %2, i64 8, !dbg !3124
  %908 = bitcast i16* %2 to <8 x i16>*, !dbg !3125
  store <8 x i16> zeroinitializer, <8 x i16>* %908, align 2, !dbg !3125, !tbaa !534
  %909 = getelementptr inbounds i16, i16* %2, i64 9, !dbg !3124
  store i16 0, i16* %907, align 2, !dbg !3125, !tbaa !534
  store i16 0, i16* %909, align 2, !dbg !3125, !tbaa !534
  br label %855, !dbg !3126
}

; Function Attrs: noredzone nounwind
define internal fastcc void @eiremain(i16*, i16*, %struct.LDPARMS*) unnamed_addr #0 !dbg !3127 {
  %4 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 0, !dbg !3139
  %5 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3141
  %6 = load i16, i16* %5, align 2, !dbg !3141, !tbaa !534
  %7 = zext i16 %6 to i64, !dbg !3141
  %8 = tail call fastcc i32 @enormlz(i16* %0) #7, !dbg !3143
  %9 = sext i32 %8 to i64, !dbg !3143
  %10 = sub nsw i64 %7, %9, !dbg !3144
  %11 = getelementptr inbounds i16, i16* %1, i64 1, !dbg !3145
  %12 = load i16, i16* %11, align 2, !dbg !3145, !tbaa !534
  %13 = zext i16 %12 to i64, !dbg !3145
  %14 = tail call fastcc i32 @enormlz(i16* %1) #7, !dbg !3147
  %15 = sext i32 %14 to i64, !dbg !3147
  %16 = sub nsw i64 %13, %15, !dbg !3148
  %17 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 2, !dbg !3156
  %18 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 8, !dbg !3156
  %19 = bitcast i16* %4 to <8 x i16>*, !dbg !3159
  store <8 x i16> zeroinitializer, <8 x i16>* %19, align 2, !dbg !3159, !tbaa !534
  %20 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 9, !dbg !3156
  store i16 0, i16* %18, align 2, !dbg !3159, !tbaa !534
  %21 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 10, !dbg !3156
  store i16 0, i16* %20, align 2, !dbg !3159, !tbaa !534
  %22 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 11, !dbg !3156
  store i16 0, i16* %21, align 2, !dbg !3159, !tbaa !534
  %23 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %2, i64 0, i32 9, i64 12, !dbg !3156
  store i16 0, i16* %22, align 2, !dbg !3159, !tbaa !534
  store i16 0, i16* %23, align 2, !dbg !3159, !tbaa !534
  %24 = icmp slt i64 %16, %10, !dbg !3160
  br i1 %24, label %274, label %25, !dbg !3161

; <label>:25:                                     ; preds = %3
  %26 = getelementptr inbounds i16, i16* %0, i64 2
  %27 = getelementptr inbounds i16, i16* %1, i64 2
  %28 = getelementptr inbounds i16, i16* %1, i64 3
  %29 = getelementptr inbounds i16, i16* %0, i64 3
  %30 = getelementptr inbounds i16, i16* %0, i64 12
  %31 = getelementptr inbounds i16, i16* %1, i64 12
  %32 = getelementptr inbounds i16, i16* %0, i64 11
  %33 = getelementptr inbounds i16, i16* %1, i64 11
  %34 = getelementptr inbounds i16, i16* %0, i64 10
  %35 = getelementptr inbounds i16, i16* %1, i64 10
  %36 = getelementptr inbounds i16, i16* %0, i64 9
  %37 = getelementptr inbounds i16, i16* %1, i64 9
  %38 = getelementptr inbounds i16, i16* %0, i64 8
  %39 = getelementptr inbounds i16, i16* %1, i64 8
  %40 = getelementptr inbounds i16, i16* %0, i64 7
  %41 = getelementptr inbounds i16, i16* %1, i64 7
  %42 = getelementptr inbounds i16, i16* %0, i64 6
  %43 = getelementptr inbounds i16, i16* %1, i64 6
  %44 = getelementptr inbounds i16, i16* %0, i64 5
  %45 = getelementptr inbounds i16, i16* %1, i64 5
  %46 = getelementptr inbounds i16, i16* %0, i64 4
  %47 = getelementptr inbounds i16, i16* %1, i64 4
  %48 = load i16, i16* %27, align 2, !dbg !3162, !tbaa !534
  %49 = bitcast i16* %17 to <8 x i16>*
  %50 = bitcast i16* %17 to <8 x i16>*
  %51 = bitcast i16* %27 to <8 x i16>*
  %52 = bitcast i16* %27 to <8 x i16>*
  br label %53, !dbg !3161

; <label>:53:                                     ; preds = %210, %25
  %54 = phi i16 [ %48, %25 ], [ %273, %210 ], !dbg !3162
  %55 = phi i64 [ %16, %25 ], [ %271, %210 ]
  %56 = load i16, i16* %26, align 2, !dbg !3169, !tbaa !534
  %57 = icmp eq i16 %56, %54, !dbg !3170
  br i1 %57, label %58, label %62, !dbg !3171

; <label>:58:                                     ; preds = %53
  %59 = load i16, i16* %29, align 2, !dbg !3169, !tbaa !534
  %60 = load i16, i16* %28, align 2, !dbg !3162, !tbaa !534
  %61 = icmp eq i16 %59, %60, !dbg !3170
  br i1 %61, label %78, label %62, !dbg !3171

; <label>:62:                                     ; preds = %110, %106, %102, %98, %94, %90, %86, %82, %78, %58, %53
  %63 = phi i16 [ %56, %53 ], [ %59, %58 ], [ %79, %78 ], [ %83, %82 ], [ %87, %86 ], [ %91, %90 ], [ %95, %94 ], [ %99, %98 ], [ %103, %102 ], [ %107, %106 ], [ %111, %110 ], !dbg !3169
  %64 = phi i16 [ %54, %53 ], [ %60, %58 ], [ %80, %78 ], [ %84, %82 ], [ %88, %86 ], [ %92, %90 ], [ %96, %94 ], [ %100, %98 ], [ %104, %102 ], [ %108, %106 ], [ %112, %110 ], !dbg !3162
  %65 = icmp ugt i16 %63, %64, !dbg !3172
  br i1 %65, label %210, label %66

; <label>:66:                                     ; preds = %62
  %67 = load i16, i16* %31, align 2, !dbg !3173, !tbaa !534
  %68 = load i16, i16* %30, align 2, !dbg !3176, !tbaa !534
  %69 = load i16, i16* %33, align 2, !dbg !3173, !tbaa !534
  %70 = load i16, i16* %35, align 2, !dbg !3173, !tbaa !534
  %71 = load i16, i16* %37, align 2, !dbg !3173, !tbaa !534
  %72 = load i16, i16* %39, align 2, !dbg !3173, !tbaa !534
  %73 = load i16, i16* %41, align 2, !dbg !3173, !tbaa !534
  %74 = load i16, i16* %43, align 2, !dbg !3173, !tbaa !534
  %75 = load i16, i16* %45, align 2, !dbg !3173, !tbaa !534
  %76 = load i16, i16* %47, align 2, !dbg !3173, !tbaa !534
  %77 = load i16, i16* %28, align 2, !dbg !3173, !tbaa !534
  br label %114

; <label>:78:                                     ; preds = %58
  %79 = load i16, i16* %46, align 2, !dbg !3169, !tbaa !534
  %80 = load i16, i16* %47, align 2, !dbg !3162, !tbaa !534
  %81 = icmp eq i16 %79, %80, !dbg !3170
  br i1 %81, label %82, label %62, !dbg !3171

; <label>:82:                                     ; preds = %78
  %83 = load i16, i16* %44, align 2, !dbg !3169, !tbaa !534
  %84 = load i16, i16* %45, align 2, !dbg !3162, !tbaa !534
  %85 = icmp eq i16 %83, %84, !dbg !3170
  br i1 %85, label %86, label %62, !dbg !3171

; <label>:86:                                     ; preds = %82
  %87 = load i16, i16* %42, align 2, !dbg !3169, !tbaa !534
  %88 = load i16, i16* %43, align 2, !dbg !3162, !tbaa !534
  %89 = icmp eq i16 %87, %88, !dbg !3170
  br i1 %89, label %90, label %62, !dbg !3171

; <label>:90:                                     ; preds = %86
  %91 = load i16, i16* %40, align 2, !dbg !3169, !tbaa !534
  %92 = load i16, i16* %41, align 2, !dbg !3162, !tbaa !534
  %93 = icmp eq i16 %91, %92, !dbg !3170
  br i1 %93, label %94, label %62, !dbg !3171

; <label>:94:                                     ; preds = %90
  %95 = load i16, i16* %38, align 2, !dbg !3169, !tbaa !534
  %96 = load i16, i16* %39, align 2, !dbg !3162, !tbaa !534
  %97 = icmp eq i16 %95, %96, !dbg !3170
  br i1 %97, label %98, label %62, !dbg !3171

; <label>:98:                                     ; preds = %94
  %99 = load i16, i16* %36, align 2, !dbg !3169, !tbaa !534
  %100 = load i16, i16* %37, align 2, !dbg !3162, !tbaa !534
  %101 = icmp eq i16 %99, %100, !dbg !3170
  br i1 %101, label %102, label %62, !dbg !3171

; <label>:102:                                    ; preds = %98
  %103 = load i16, i16* %34, align 2, !dbg !3169, !tbaa !534
  %104 = load i16, i16* %35, align 2, !dbg !3162, !tbaa !534
  %105 = icmp eq i16 %103, %104, !dbg !3170
  br i1 %105, label %106, label %62, !dbg !3171

; <label>:106:                                    ; preds = %102
  %107 = load i16, i16* %32, align 2, !dbg !3169, !tbaa !534
  %108 = load i16, i16* %33, align 2, !dbg !3162, !tbaa !534
  %109 = icmp eq i16 %107, %108, !dbg !3170
  br i1 %109, label %110, label %62, !dbg !3171

; <label>:110:                                    ; preds = %106
  %111 = load i16, i16* %30, align 2, !dbg !3169, !tbaa !534
  %112 = load i16, i16* %31, align 2, !dbg !3162, !tbaa !534
  %113 = icmp eq i16 %111, %112, !dbg !3170
  br i1 %113, label %114, label %62, !dbg !3171

; <label>:114:                                    ; preds = %66, %110
  %115 = phi i16 [ %77, %66 ], [ %59, %110 ], !dbg !3173
  %116 = phi i16 [ %76, %66 ], [ %79, %110 ], !dbg !3173
  %117 = phi i16 [ %75, %66 ], [ %83, %110 ], !dbg !3173
  %118 = phi i16 [ %74, %66 ], [ %87, %110 ], !dbg !3173
  %119 = phi i16 [ %73, %66 ], [ %91, %110 ], !dbg !3173
  %120 = phi i16 [ %72, %66 ], [ %95, %110 ], !dbg !3173
  %121 = phi i16 [ %71, %66 ], [ %99, %110 ], !dbg !3173
  %122 = phi i16 [ %70, %66 ], [ %103, %110 ], !dbg !3173
  %123 = phi i16 [ %69, %66 ], [ %107, %110 ], !dbg !3173
  %124 = phi i16 [ %68, %66 ], [ %111, %110 ], !dbg !3176
  %125 = phi i16 [ %67, %66 ], [ %111, %110 ], !dbg !3173
  %126 = zext i16 %125 to i64, !dbg !3181
  %127 = zext i16 %124 to i64, !dbg !3182
  %128 = sub nsw i64 %126, %127, !dbg !3183
  %129 = lshr i64 %128, 16
  %130 = and i64 %129, 1
  %131 = trunc i64 %128 to i16, !dbg !3185
  store i16 %131, i16* %31, align 2, !dbg !3186, !tbaa !534
  %132 = zext i16 %123 to i64, !dbg !3181
  %133 = load i16, i16* %32, align 2, !dbg !3176, !tbaa !534
  %134 = zext i16 %133 to i64, !dbg !3182
  %135 = sub nsw i64 %132, %134, !dbg !3183
  %136 = sub nsw i64 %135, %130, !dbg !3187
  %137 = lshr i64 %136, 16
  %138 = and i64 %137, 1
  %139 = trunc i64 %136 to i16, !dbg !3185
  store i16 %139, i16* %33, align 2, !dbg !3186, !tbaa !534
  %140 = zext i16 %122 to i64, !dbg !3181
  %141 = load i16, i16* %34, align 2, !dbg !3176, !tbaa !534
  %142 = zext i16 %141 to i64, !dbg !3182
  %143 = sub nsw i64 %140, %142, !dbg !3183
  %144 = sub nsw i64 %143, %138, !dbg !3187
  %145 = lshr i64 %144, 16
  %146 = and i64 %145, 1
  %147 = trunc i64 %144 to i16, !dbg !3185
  store i16 %147, i16* %35, align 2, !dbg !3186, !tbaa !534
  %148 = zext i16 %121 to i64, !dbg !3181
  %149 = load i16, i16* %36, align 2, !dbg !3176, !tbaa !534
  %150 = zext i16 %149 to i64, !dbg !3182
  %151 = sub nsw i64 %148, %150, !dbg !3183
  %152 = sub nsw i64 %151, %146, !dbg !3187
  %153 = lshr i64 %152, 16
  %154 = and i64 %153, 1
  %155 = trunc i64 %152 to i16, !dbg !3185
  store i16 %155, i16* %37, align 2, !dbg !3186, !tbaa !534
  %156 = zext i16 %120 to i64, !dbg !3181
  %157 = load i16, i16* %38, align 2, !dbg !3176, !tbaa !534
  %158 = zext i16 %157 to i64, !dbg !3182
  %159 = sub nsw i64 %156, %158, !dbg !3183
  %160 = sub nsw i64 %159, %154, !dbg !3187
  %161 = lshr i64 %160, 16
  %162 = and i64 %161, 1
  %163 = trunc i64 %160 to i16, !dbg !3185
  store i16 %163, i16* %39, align 2, !dbg !3186, !tbaa !534
  %164 = zext i16 %119 to i64, !dbg !3181
  %165 = load i16, i16* %40, align 2, !dbg !3176, !tbaa !534
  %166 = zext i16 %165 to i64, !dbg !3182
  %167 = sub nsw i64 %164, %166, !dbg !3183
  %168 = sub nsw i64 %167, %162, !dbg !3187
  %169 = lshr i64 %168, 16
  %170 = and i64 %169, 1
  %171 = trunc i64 %168 to i16, !dbg !3185
  store i16 %171, i16* %41, align 2, !dbg !3186, !tbaa !534
  %172 = zext i16 %118 to i64, !dbg !3181
  %173 = load i16, i16* %42, align 2, !dbg !3176, !tbaa !534
  %174 = zext i16 %173 to i64, !dbg !3182
  %175 = sub nsw i64 %172, %174, !dbg !3183
  %176 = sub nsw i64 %175, %170, !dbg !3187
  %177 = lshr i64 %176, 16
  %178 = and i64 %177, 1
  %179 = trunc i64 %176 to i16, !dbg !3185
  store i16 %179, i16* %43, align 2, !dbg !3186, !tbaa !534
  %180 = zext i16 %117 to i64, !dbg !3181
  %181 = load i16, i16* %44, align 2, !dbg !3176, !tbaa !534
  %182 = zext i16 %181 to i64, !dbg !3182
  %183 = sub nsw i64 %180, %182, !dbg !3183
  %184 = sub nsw i64 %183, %178, !dbg !3187
  %185 = lshr i64 %184, 16
  %186 = and i64 %185, 1
  %187 = trunc i64 %184 to i16, !dbg !3185
  store i16 %187, i16* %45, align 2, !dbg !3186, !tbaa !534
  %188 = zext i16 %116 to i64, !dbg !3181
  %189 = load i16, i16* %46, align 2, !dbg !3176, !tbaa !534
  %190 = zext i16 %189 to i64, !dbg !3182
  %191 = sub nsw i64 %188, %190, !dbg !3183
  %192 = sub nsw i64 %191, %186, !dbg !3187
  %193 = lshr i64 %192, 16
  %194 = and i64 %193, 1
  %195 = trunc i64 %192 to i16, !dbg !3185
  store i16 %195, i16* %47, align 2, !dbg !3186, !tbaa !534
  %196 = zext i16 %115 to i64, !dbg !3181
  %197 = load i16, i16* %29, align 2, !dbg !3176, !tbaa !534
  %198 = zext i16 %197 to i64, !dbg !3182
  %199 = sub nsw i64 %196, %198, !dbg !3183
  %200 = sub nsw i64 %199, %194, !dbg !3187
  %201 = lshr i64 %200, 16
  %202 = and i64 %201, 1
  %203 = trunc i64 %200 to i16, !dbg !3185
  store i16 %203, i16* %28, align 2, !dbg !3186, !tbaa !534
  %204 = zext i16 %54 to i64, !dbg !3181
  %205 = load i16, i16* %26, align 2, !dbg !3176, !tbaa !534
  %206 = zext i16 %205 to i64, !dbg !3182
  %207 = sub nsw i64 %204, %206, !dbg !3183
  %208 = sub nsw i64 %207, %202, !dbg !3187
  %209 = trunc i64 %208 to i16, !dbg !3185
  store i16 %209, i16* %27, align 2, !dbg !3186, !tbaa !534
  br label %210, !dbg !3189

; <label>:210:                                    ; preds = %62, %114
  %211 = phi i16 [ 1, %114 ], [ 0, %62 ]
  %212 = load i16, i16* %23, align 2, !dbg !3194, !tbaa !534
  %213 = lshr i16 %212, 15, !dbg !3195
  %214 = shl i16 %212, 1, !dbg !3196
  %215 = load i16, i16* %22, align 2, !dbg !3194, !tbaa !534
  %216 = lshr i16 %215, 15, !dbg !3195
  %217 = shl i16 %215, 1, !dbg !3196
  %218 = or i16 %217, %213, !dbg !3197
  store i16 %218, i16* %22, align 2, !dbg !3198, !tbaa !534
  %219 = load i16, i16* %21, align 2, !dbg !3194, !tbaa !534
  %220 = shl i16 %219, 1, !dbg !3196
  %221 = or i16 %220, %216, !dbg !3197
  store i16 %221, i16* %21, align 2, !dbg !3198, !tbaa !534
  %222 = load <8 x i16>, <8 x i16>* %49, align 2, !dbg !3194, !tbaa !534
  %223 = extractelement <8 x i16> %222, i32 1, !dbg !3195
  %224 = insertelement <8 x i16> undef, i16 %223, i32 0, !dbg !3195
  %225 = extractelement <8 x i16> %222, i32 2, !dbg !3195
  %226 = insertelement <8 x i16> %224, i16 %225, i32 1, !dbg !3195
  %227 = extractelement <8 x i16> %222, i32 3, !dbg !3195
  %228 = insertelement <8 x i16> %226, i16 %227, i32 2, !dbg !3195
  %229 = extractelement <8 x i16> %222, i32 4, !dbg !3195
  %230 = insertelement <8 x i16> %228, i16 %229, i32 3, !dbg !3195
  %231 = extractelement <8 x i16> %222, i32 5, !dbg !3195
  %232 = insertelement <8 x i16> %230, i16 %231, i32 4, !dbg !3195
  %233 = extractelement <8 x i16> %222, i32 6, !dbg !3195
  %234 = insertelement <8 x i16> %232, i16 %233, i32 5, !dbg !3195
  %235 = extractelement <8 x i16> %222, i32 7, !dbg !3195
  %236 = insertelement <8 x i16> %234, i16 %235, i32 6, !dbg !3195
  %237 = insertelement <8 x i16> %236, i16 %219, i32 7, !dbg !3195
  %238 = lshr <8 x i16> %237, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3195
  %239 = shl <8 x i16> %222, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3196
  %240 = or <8 x i16> %239, %238, !dbg !3197
  store <8 x i16> %240, <8 x i16>* %50, align 2, !dbg !3198, !tbaa !534
  %241 = or i16 %214, %211, !dbg !3199
  store i16 %241, i16* %23, align 2, !dbg !3199, !tbaa !534
  %242 = load i16, i16* %31, align 2, !dbg !3204, !tbaa !534
  %243 = lshr i16 %242, 15, !dbg !3205
  %244 = shl i16 %242, 1, !dbg !3206
  store i16 %244, i16* %31, align 2, !dbg !3207, !tbaa !534
  %245 = load i16, i16* %33, align 2, !dbg !3204, !tbaa !534
  %246 = lshr i16 %245, 15, !dbg !3205
  %247 = shl i16 %245, 1, !dbg !3206
  %248 = or i16 %247, %243, !dbg !3208
  store i16 %248, i16* %33, align 2, !dbg !3207, !tbaa !534
  %249 = load i16, i16* %35, align 2, !dbg !3204, !tbaa !534
  %250 = shl i16 %249, 1, !dbg !3206
  %251 = or i16 %250, %246, !dbg !3208
  store i16 %251, i16* %35, align 2, !dbg !3207, !tbaa !534
  %252 = load <8 x i16>, <8 x i16>* %51, align 2, !dbg !3204, !tbaa !534
  %253 = extractelement <8 x i16> %252, i32 1, !dbg !3205
  %254 = insertelement <8 x i16> undef, i16 %253, i32 0, !dbg !3205
  %255 = extractelement <8 x i16> %252, i32 2, !dbg !3205
  %256 = insertelement <8 x i16> %254, i16 %255, i32 1, !dbg !3205
  %257 = extractelement <8 x i16> %252, i32 3, !dbg !3205
  %258 = insertelement <8 x i16> %256, i16 %257, i32 2, !dbg !3205
  %259 = extractelement <8 x i16> %252, i32 4, !dbg !3205
  %260 = insertelement <8 x i16> %258, i16 %259, i32 3, !dbg !3205
  %261 = extractelement <8 x i16> %252, i32 5, !dbg !3205
  %262 = insertelement <8 x i16> %260, i16 %261, i32 4, !dbg !3205
  %263 = extractelement <8 x i16> %252, i32 6, !dbg !3205
  %264 = insertelement <8 x i16> %262, i16 %263, i32 5, !dbg !3205
  %265 = extractelement <8 x i16> %252, i32 7, !dbg !3205
  %266 = insertelement <8 x i16> %264, i16 %265, i32 6, !dbg !3205
  %267 = insertelement <8 x i16> %266, i16 %249, i32 7, !dbg !3205
  %268 = lshr <8 x i16> %267, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3205
  %269 = shl <8 x i16> %252, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3206
  %270 = or <8 x i16> %269, %268, !dbg !3208
  store <8 x i16> %270, <8 x i16>* %52, align 2, !dbg !3207, !tbaa !534
  %271 = add nsw i64 %55, -1, !dbg !3209
  %272 = icmp sgt i64 %55, %10, !dbg !3160
  %273 = extractelement <8 x i16> %270, i32 0, !dbg !3161
  br i1 %272, label %53, label %274, !dbg !3161, !llvm.loop !3210

; <label>:274:                                    ; preds = %210, %3
  %275 = phi i64 [ %16, %3 ], [ %271, %210 ], !dbg !3212
  tail call fastcc void @emdnorm(i16* nonnull %1, i32 0, i32 0, i64 %275, i32 0, %struct.LDPARMS* nonnull %2) #7, !dbg !3213
  ret void, !dbg !3214
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @enormlz(i16*) unnamed_addr #0 !dbg !3215 {
  %2 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3222
  %3 = load i16, i16* %2, align 2, !dbg !3224, !tbaa !534
  %4 = icmp eq i16 %3, 0, !dbg !3226
  br i1 %4, label %5, label %180, !dbg !3227

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3228
  %7 = load i16, i16* %6, align 2, !dbg !3229, !tbaa !534
  %8 = icmp slt i16 %7, 0, !dbg !3231
  br i1 %8, label %274, label %9, !dbg !3232

; <label>:9:                                      ; preds = %5
  %10 = icmp eq i16 %7, 0, !dbg !3233
  br i1 %10, label %11, label %33, !dbg !3234

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
  %21 = load i16, i16* %12, align 2, !dbg !3235, !tbaa !534
  %22 = load i16, i16* %13, align 2, !dbg !3235, !tbaa !534
  %23 = load i16, i16* %14, align 2, !dbg !3235, !tbaa !534
  %24 = load i16, i16* %15, align 2, !dbg !3235, !tbaa !534
  %25 = load i16, i16* %16, align 2, !dbg !3235, !tbaa !534
  %26 = load i16, i16* %17, align 2, !dbg !3235, !tbaa !534
  %27 = load i16, i16* %18, align 2, !dbg !3235, !tbaa !534
  %28 = load i16, i16* %19, align 2, !dbg !3235, !tbaa !534
  %29 = load i16, i16* %20, align 2, !dbg !3238, !tbaa !534
  br label %63, !dbg !3234

; <label>:30:                                     ; preds = %63
  %31 = icmp eq i16 %72, 0, !dbg !3233
  br i1 %31, label %63, label %32, !dbg !3234

; <label>:32:                                     ; preds = %30
  store i16 0, i16* %2, align 2, !dbg !3235, !tbaa !534
  store i16 %71, i16* %12, align 2, !dbg !3235, !tbaa !534
  store i16 %72, i16* %6, align 2, !dbg !3239, !tbaa !534
  store i16 %70, i16* %13, align 2, !dbg !3235, !tbaa !534
  store i16 %69, i16* %14, align 2, !dbg !3235, !tbaa !534
  store i16 %68, i16* %15, align 2, !dbg !3235, !tbaa !534
  store i16 %67, i16* %16, align 2, !dbg !3235, !tbaa !534
  store i16 %66, i16* %17, align 2, !dbg !3235, !tbaa !534
  store i16 %65, i16* %18, align 2, !dbg !3235, !tbaa !534
  store i16 %64, i16* %19, align 2, !dbg !3235, !tbaa !534
  store i16 0, i16* %20, align 2, !dbg !3238, !tbaa !534
  br label %33, !dbg !3234

; <label>:33:                                     ; preds = %32, %9
  %34 = phi i16 [ %72, %32 ], [ %7, %9 ], !dbg !3240
  %35 = phi i32 [ %74, %32 ], [ 0, %9 ], !dbg !3241
  %36 = icmp ult i16 %34, 256, !dbg !3242
  %37 = getelementptr inbounds i16, i16* %0, i64 12
  br i1 %36, label %38, label %79, !dbg !3243

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds i16, i16* %0, i64 11
  %40 = getelementptr inbounds i16, i16* %0, i64 10
  %41 = getelementptr inbounds i16, i16* %0, i64 9
  %42 = getelementptr inbounds i16, i16* %0, i64 8
  %43 = getelementptr inbounds i16, i16* %0, i64 7
  %44 = getelementptr inbounds i16, i16* %0, i64 6
  %45 = getelementptr inbounds i16, i16* %0, i64 5
  %46 = getelementptr inbounds i16, i16* %0, i64 4
  %47 = load i16, i16* %37, align 2, !dbg !3244, !tbaa !534
  %48 = load i16, i16* %39, align 2, !dbg !3244, !tbaa !534
  %49 = load i16, i16* %40, align 2, !dbg !3244, !tbaa !534
  %50 = load i16, i16* %41, align 2, !dbg !3244, !tbaa !534
  %51 = load i16, i16* %42, align 2, !dbg !3244, !tbaa !534
  %52 = load i16, i16* %43, align 2, !dbg !3244, !tbaa !534
  %53 = load i16, i16* %44, align 2, !dbg !3244, !tbaa !534
  %54 = load i16, i16* %45, align 2, !dbg !3244, !tbaa !534
  %55 = load i16, i16* %46, align 2, !dbg !3244, !tbaa !534
  %56 = insertelement <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, i16 %34, i32 1, !dbg !3221
  %57 = insertelement <8 x i16> %56, i16 %55, i32 2, !dbg !3221
  %58 = insertelement <8 x i16> %57, i16 %54, i32 3, !dbg !3221
  %59 = insertelement <8 x i16> %58, i16 %53, i32 4, !dbg !3221
  %60 = insertelement <8 x i16> %59, i16 %52, i32 5, !dbg !3221
  %61 = insertelement <8 x i16> %60, i16 %51, i32 6, !dbg !3221
  %62 = insertelement <8 x i16> %61, i16 %50, i32 7, !dbg !3221
  br label %110, !dbg !3243

; <label>:63:                                     ; preds = %11, %30
  %64 = phi i16 [ %29, %11 ], [ 0, %30 ], !dbg !3221
  %65 = phi i16 [ %28, %11 ], [ %64, %30 ], !dbg !3221
  %66 = phi i16 [ %27, %11 ], [ %65, %30 ], !dbg !3221
  %67 = phi i16 [ %26, %11 ], [ %66, %30 ], !dbg !3221
  %68 = phi i16 [ %25, %11 ], [ %67, %30 ], !dbg !3221
  %69 = phi i16 [ %24, %11 ], [ %68, %30 ], !dbg !3221
  %70 = phi i16 [ %23, %11 ], [ %69, %30 ], !dbg !3221
  %71 = phi i16 [ %22, %11 ], [ %70, %30 ], !dbg !3221
  %72 = phi i16 [ %21, %11 ], [ %71, %30 ], !dbg !3221
  %73 = phi i32 [ 0, %11 ], [ %74, %30 ]
  %74 = add nuw nsw i32 %73, 16, !dbg !3259
  %75 = icmp ugt i32 %74, 144, !dbg !3260
  br i1 %75, label %273, label %30, !dbg !3262, !llvm.loop !3263

; <label>:76:                                     ; preds = %110
  store i16 %117, i16* %37, align 2, !dbg !3244, !tbaa !534
  store i16 %120, i16* %39, align 2, !dbg !3244, !tbaa !534
  store i16 %122, i16* %40, align 2, !dbg !3244, !tbaa !534
  %77 = bitcast i16* %2 to <8 x i16>*, !dbg !3265
  store <8 x i16> %140, <8 x i16>* %77, align 2, !dbg !3265, !tbaa !534
  %78 = extractelement <8 x i16> %140, i32 0, !dbg !3243
  br label %79, !dbg !3243

; <label>:79:                                     ; preds = %33, %76
  %80 = phi i16 [ %78, %76 ], [ 0, %33 ]
  %81 = phi i32 [ %141, %76 ], [ %35, %33 ], !dbg !3266
  %82 = phi i16 [ %142, %76 ], [ %34, %33 ], !dbg !3240
  %83 = icmp sgt i16 %82, -1, !dbg !3267
  br i1 %83, label %84, label %274, !dbg !3268

; <label>:84:                                     ; preds = %79
  %85 = getelementptr inbounds i16, i16* %0, i64 11
  %86 = getelementptr inbounds i16, i16* %0, i64 10
  %87 = getelementptr inbounds i16, i16* %0, i64 9
  %88 = getelementptr inbounds i16, i16* %0, i64 8
  %89 = getelementptr inbounds i16, i16* %0, i64 7
  %90 = getelementptr inbounds i16, i16* %0, i64 6
  %91 = getelementptr inbounds i16, i16* %0, i64 5
  %92 = getelementptr inbounds i16, i16* %0, i64 4
  %93 = load i16, i16* %37, align 2, !dbg !3269, !tbaa !534
  %94 = load i16, i16* %85, align 2, !dbg !3269, !tbaa !534
  %95 = load i16, i16* %86, align 2, !dbg !3269, !tbaa !534
  %96 = load i16, i16* %87, align 2, !dbg !3269, !tbaa !534
  %97 = load i16, i16* %88, align 2, !dbg !3269, !tbaa !534
  %98 = load i16, i16* %89, align 2, !dbg !3269, !tbaa !534
  %99 = load i16, i16* %90, align 2, !dbg !3269, !tbaa !534
  %100 = load i16, i16* %91, align 2, !dbg !3269, !tbaa !534
  %101 = load i16, i16* %92, align 2, !dbg !3269, !tbaa !534
  %102 = insertelement <8 x i16> undef, i16 %80, i32 0, !dbg !3221
  %103 = insertelement <8 x i16> %102, i16 %82, i32 1, !dbg !3221
  %104 = insertelement <8 x i16> %103, i16 %101, i32 2, !dbg !3221
  %105 = insertelement <8 x i16> %104, i16 %100, i32 3, !dbg !3221
  %106 = insertelement <8 x i16> %105, i16 %99, i32 4, !dbg !3221
  %107 = insertelement <8 x i16> %106, i16 %98, i32 5, !dbg !3221
  %108 = insertelement <8 x i16> %107, i16 %97, i32 6, !dbg !3221
  %109 = insertelement <8 x i16> %108, i16 %96, i32 7, !dbg !3221
  br label %147, !dbg !3268

; <label>:110:                                    ; preds = %38, %110
  %111 = phi i16 [ %49, %38 ], [ %122, %110 ], !dbg !3221
  %112 = phi i16 [ %48, %38 ], [ %120, %110 ], !dbg !3221
  %113 = phi i16 [ %47, %38 ], [ %117, %110 ], !dbg !3221
  %114 = phi i32 [ %35, %38 ], [ %141, %110 ]
  %115 = phi <8 x i16> [ %62, %38 ], [ %140, %110 ], !dbg !3221
  %116 = lshr i16 %113, 8, !dbg !3275
  %117 = shl i16 %113, 8, !dbg !3277
  %118 = lshr i16 %112, 8, !dbg !3275
  %119 = shl i16 %112, 8, !dbg !3277
  %120 = or i16 %119, %116, !dbg !3244
  %121 = shl i16 %111, 8, !dbg !3277
  %122 = or i16 %121, %118, !dbg !3244
  %123 = extractelement <8 x i16> %115, i32 1, !dbg !3275
  %124 = insertelement <8 x i16> undef, i16 %123, i32 0, !dbg !3275
  %125 = extractelement <8 x i16> %115, i32 2, !dbg !3275
  %126 = insertelement <8 x i16> %124, i16 %125, i32 1, !dbg !3275
  %127 = extractelement <8 x i16> %115, i32 3, !dbg !3275
  %128 = insertelement <8 x i16> %126, i16 %127, i32 2, !dbg !3275
  %129 = extractelement <8 x i16> %115, i32 4, !dbg !3275
  %130 = insertelement <8 x i16> %128, i16 %129, i32 3, !dbg !3275
  %131 = extractelement <8 x i16> %115, i32 5, !dbg !3275
  %132 = insertelement <8 x i16> %130, i16 %131, i32 4, !dbg !3275
  %133 = extractelement <8 x i16> %115, i32 6, !dbg !3275
  %134 = insertelement <8 x i16> %132, i16 %133, i32 5, !dbg !3275
  %135 = extractelement <8 x i16> %115, i32 7, !dbg !3275
  %136 = insertelement <8 x i16> %134, i16 %135, i32 6, !dbg !3275
  %137 = insertelement <8 x i16> %136, i16 %111, i32 7, !dbg !3275
  %138 = lshr <8 x i16> %137, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3275
  %139 = shl <8 x i16> %115, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3277
  %140 = or <8 x i16> %139, %138, !dbg !3244
  %141 = add nuw nsw i32 %114, 8, !dbg !3278
  %142 = extractelement <8 x i16> %140, i32 1, !dbg !3242
  %143 = icmp ult i16 %142, 256, !dbg !3242
  br i1 %143, label %110, label %76, !dbg !3243, !llvm.loop !3279

; <label>:144:                                    ; preds = %147
  %145 = extractelement <8 x i16> %177, i32 1, !dbg !3267
  %146 = icmp sgt i16 %145, -1, !dbg !3267
  br i1 %146, label %147, label %271, !dbg !3268

; <label>:147:                                    ; preds = %84, %144
  %148 = phi i16 [ %95, %84 ], [ %159, %144 ], !dbg !3221
  %149 = phi i16 [ %94, %84 ], [ %157, %144 ], !dbg !3221
  %150 = phi i16 [ %93, %84 ], [ %154, %144 ], !dbg !3221
  %151 = phi i32 [ %81, %84 ], [ %178, %144 ]
  %152 = phi <8 x i16> [ %109, %84 ], [ %177, %144 ], !dbg !3221
  %153 = lshr i16 %150, 15, !dbg !3284
  %154 = shl i16 %150, 1, !dbg !3285
  %155 = lshr i16 %149, 15, !dbg !3284
  %156 = shl i16 %149, 1, !dbg !3285
  %157 = or i16 %156, %153, !dbg !3286
  %158 = shl i16 %148, 1, !dbg !3285
  %159 = or i16 %158, %155, !dbg !3286
  %160 = extractelement <8 x i16> %152, i32 1, !dbg !3284
  %161 = insertelement <8 x i16> undef, i16 %160, i32 0, !dbg !3284
  %162 = extractelement <8 x i16> %152, i32 2, !dbg !3284
  %163 = insertelement <8 x i16> %161, i16 %162, i32 1, !dbg !3284
  %164 = extractelement <8 x i16> %152, i32 3, !dbg !3284
  %165 = insertelement <8 x i16> %163, i16 %164, i32 2, !dbg !3284
  %166 = extractelement <8 x i16> %152, i32 4, !dbg !3284
  %167 = insertelement <8 x i16> %165, i16 %166, i32 3, !dbg !3284
  %168 = extractelement <8 x i16> %152, i32 5, !dbg !3284
  %169 = insertelement <8 x i16> %167, i16 %168, i32 4, !dbg !3284
  %170 = extractelement <8 x i16> %152, i32 6, !dbg !3284
  %171 = insertelement <8 x i16> %169, i16 %170, i32 5, !dbg !3284
  %172 = extractelement <8 x i16> %152, i32 7, !dbg !3284
  %173 = insertelement <8 x i16> %171, i16 %172, i32 6, !dbg !3284
  %174 = insertelement <8 x i16> %173, i16 %148, i32 7, !dbg !3284
  %175 = lshr <8 x i16> %174, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3284
  %176 = shl <8 x i16> %152, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3285
  %177 = or <8 x i16> %176, %175, !dbg !3286
  %178 = add nuw nsw i32 %151, 1, !dbg !3287
  %179 = icmp ugt i32 %151, 159, !dbg !3288
  br i1 %179, label %269, label %144, !dbg !3290, !llvm.loop !3291

; <label>:180:                                    ; preds = %1
  %181 = icmp ugt i16 %3, 255, !dbg !3293
  br i1 %181, label %186, label %182, !dbg !3295

; <label>:182:                                    ; preds = %180
  %183 = getelementptr inbounds i16, i16* %0, i64 3
  %184 = getelementptr inbounds i16, i16* %0, i64 11
  %185 = getelementptr inbounds i16, i16* %0, i64 12
  br label %208, !dbg !3295

; <label>:186:                                    ; preds = %180
  %187 = lshr i16 %3, 8, !dbg !3308
  store i16 %187, i16* %2, align 2, !dbg !3312, !tbaa !534
  %188 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3313
  %189 = bitcast i16* %188 to <8 x i16>*, !dbg !3314
  %190 = load <8 x i16>, <8 x i16>* %189, align 2, !dbg !3314, !tbaa !534
  %191 = insertelement <8 x i16> undef, i16 %3, i32 0, !dbg !3315
  %192 = shufflevector <8 x i16> %191, <8 x i16> %190, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3315
  %193 = shl <8 x i16> %192, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3315
  %194 = extractelement <8 x i16> %190, i32 7, !dbg !3315
  %195 = shl i16 %194, 8, !dbg !3315
  %196 = lshr <8 x i16> %190, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3308
  %197 = or <8 x i16> %196, %193, !dbg !3312
  %198 = bitcast i16* %188 to <8 x i16>*, !dbg !3312
  store <8 x i16> %197, <8 x i16>* %198, align 2, !dbg !3312, !tbaa !534
  %199 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3313
  %200 = load i16, i16* %199, align 2, !dbg !3314, !tbaa !534
  %201 = shl i16 %200, 8, !dbg !3315
  %202 = lshr i16 %200, 8, !dbg !3308
  %203 = or i16 %202, %195, !dbg !3312
  store i16 %203, i16* %199, align 2, !dbg !3312, !tbaa !534
  %204 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3313
  %205 = load i16, i16* %204, align 2, !dbg !3314, !tbaa !534
  %206 = lshr i16 %205, 8, !dbg !3308
  %207 = or i16 %206, %201, !dbg !3312
  store i16 %207, i16* %204, align 2, !dbg !3312, !tbaa !534
  br label %208, !dbg !3316

; <label>:208:                                    ; preds = %182, %186
  %209 = phi i16* [ %185, %182 ], [ %204, %186 ]
  %210 = phi i16* [ %184, %182 ], [ %199, %186 ]
  %211 = phi i16* [ %183, %182 ], [ %188, %186 ]
  %212 = phi i16 [ %3, %182 ], [ %187, %186 ]
  %213 = phi i32 [ 0, %182 ], [ -8, %186 ], !dbg !3317
  %214 = getelementptr inbounds i16, i16* %0, i64 4
  %215 = getelementptr inbounds i16, i16* %0, i64 5
  %216 = getelementptr inbounds i16, i16* %0, i64 6
  %217 = getelementptr inbounds i16, i16* %0, i64 7
  %218 = getelementptr inbounds i16, i16* %0, i64 8
  %219 = getelementptr inbounds i16, i16* %0, i64 9
  %220 = getelementptr inbounds i16, i16* %0, i64 10
  br label %221, !dbg !3318

; <label>:221:                                    ; preds = %225, %208
  %222 = phi i16 [ %212, %208 ], [ %226, %225 ], !dbg !3319
  %223 = phi i32 [ %213, %208 ], [ %267, %225 ], !dbg !3320
  %224 = icmp eq i16 %222, 0, !dbg !3322
  br i1 %224, label %274, label %225, !dbg !3318

; <label>:225:                                    ; preds = %221
  %226 = lshr i16 %222, 1, !dbg !3327
  store i16 %226, i16* %2, align 2, !dbg !3328, !tbaa !534
  %227 = load i16, i16* %211, align 2, !dbg !3329, !tbaa !534
  %228 = lshr i16 %227, 1, !dbg !3327
  %229 = shl i16 %222, 15, !dbg !3330
  %230 = or i16 %228, %229, !dbg !3330
  store i16 %230, i16* %211, align 2, !dbg !3328, !tbaa !534
  %231 = load i16, i16* %214, align 2, !dbg !3329, !tbaa !534
  %232 = lshr i16 %231, 1, !dbg !3327
  %233 = shl i16 %227, 15, !dbg !3330
  %234 = or i16 %232, %233, !dbg !3330
  store i16 %234, i16* %214, align 2, !dbg !3328, !tbaa !534
  %235 = load i16, i16* %215, align 2, !dbg !3329, !tbaa !534
  %236 = lshr i16 %235, 1, !dbg !3327
  %237 = shl i16 %231, 15, !dbg !3330
  %238 = or i16 %236, %237, !dbg !3330
  store i16 %238, i16* %215, align 2, !dbg !3328, !tbaa !534
  %239 = load i16, i16* %216, align 2, !dbg !3329, !tbaa !534
  %240 = lshr i16 %239, 1, !dbg !3327
  %241 = shl i16 %235, 15, !dbg !3330
  %242 = or i16 %240, %241, !dbg !3330
  store i16 %242, i16* %216, align 2, !dbg !3328, !tbaa !534
  %243 = load i16, i16* %217, align 2, !dbg !3329, !tbaa !534
  %244 = lshr i16 %243, 1, !dbg !3327
  %245 = shl i16 %239, 15, !dbg !3330
  %246 = or i16 %244, %245, !dbg !3330
  store i16 %246, i16* %217, align 2, !dbg !3328, !tbaa !534
  %247 = load i16, i16* %218, align 2, !dbg !3329, !tbaa !534
  %248 = lshr i16 %247, 1, !dbg !3327
  %249 = shl i16 %243, 15, !dbg !3330
  %250 = or i16 %248, %249, !dbg !3330
  store i16 %250, i16* %218, align 2, !dbg !3328, !tbaa !534
  %251 = load i16, i16* %219, align 2, !dbg !3329, !tbaa !534
  %252 = lshr i16 %251, 1, !dbg !3327
  %253 = shl i16 %247, 15, !dbg !3330
  %254 = or i16 %252, %253, !dbg !3330
  store i16 %254, i16* %219, align 2, !dbg !3328, !tbaa !534
  %255 = load i16, i16* %220, align 2, !dbg !3329, !tbaa !534
  %256 = lshr i16 %255, 1, !dbg !3327
  %257 = shl i16 %251, 15, !dbg !3330
  %258 = or i16 %256, %257, !dbg !3330
  store i16 %258, i16* %220, align 2, !dbg !3328, !tbaa !534
  %259 = load i16, i16* %210, align 2, !dbg !3329, !tbaa !534
  %260 = lshr i16 %259, 1, !dbg !3327
  %261 = shl i16 %255, 15, !dbg !3330
  %262 = or i16 %260, %261, !dbg !3330
  store i16 %262, i16* %210, align 2, !dbg !3328, !tbaa !534
  %263 = shl i16 %259, 15, !dbg !3331
  %264 = load i16, i16* %209, align 2, !dbg !3329, !tbaa !534
  %265 = lshr i16 %264, 1, !dbg !3327
  %266 = or i16 %265, %263, !dbg !3330
  store i16 %266, i16* %209, align 2, !dbg !3328, !tbaa !534
  %267 = add nsw i32 %223, -1, !dbg !3332
  %268 = icmp slt i32 %223, -143, !dbg !3333
  br i1 %268, label %274, label %221, !dbg !3335, !llvm.loop !3336

; <label>:269:                                    ; preds = %147
  store i16 %154, i16* %37, align 2, !dbg !3269, !tbaa !534
  store i16 %157, i16* %85, align 2, !dbg !3269, !tbaa !534
  store i16 %159, i16* %86, align 2, !dbg !3269, !tbaa !534
  %270 = bitcast i16* %2 to <8 x i16>*, !dbg !3338
  store <8 x i16> %177, <8 x i16>* %270, align 2, !dbg !3338, !tbaa !534
  br label %274, !dbg !3290

; <label>:271:                                    ; preds = %144
  store i16 %154, i16* %37, align 2, !dbg !3269, !tbaa !534
  store i16 %157, i16* %85, align 2, !dbg !3269, !tbaa !534
  store i16 %159, i16* %86, align 2, !dbg !3269, !tbaa !534
  %272 = bitcast i16* %2 to <8 x i16>*, !dbg !3338
  store <8 x i16> %177, <8 x i16>* %272, align 2, !dbg !3338, !tbaa !534
  br label %274, !dbg !3268

; <label>:273:                                    ; preds = %63
  store i16 0, i16* %2, align 2, !dbg !3235, !tbaa !534
  store i16 %71, i16* %12, align 2, !dbg !3235, !tbaa !534
  store i16 %72, i16* %6, align 2, !dbg !3239, !tbaa !534
  store i16 %70, i16* %13, align 2, !dbg !3235, !tbaa !534
  store i16 %69, i16* %14, align 2, !dbg !3235, !tbaa !534
  store i16 %68, i16* %15, align 2, !dbg !3235, !tbaa !534
  store i16 %67, i16* %16, align 2, !dbg !3235, !tbaa !534
  store i16 %66, i16* %17, align 2, !dbg !3235, !tbaa !534
  store i16 %65, i16* %18, align 2, !dbg !3235, !tbaa !534
  store i16 %64, i16* %19, align 2, !dbg !3235, !tbaa !534
  store i16 0, i16* %20, align 2, !dbg !3238, !tbaa !534
  br label %274, !dbg !3339

; <label>:274:                                    ; preds = %221, %225, %79, %269, %271, %273, %5
  %275 = phi i32 [ 0, %5 ], [ %74, %273 ], [ %178, %271 ], [ %178, %269 ], [ %81, %79 ], [ %223, %221 ], [ %267, %225 ], !dbg !3317
  ret i32 %275, !dbg !3339
}

; Function Attrs: noredzone nounwind
define internal fastcc void @emdnorm(i16*, i32, i32, i64, i32, %struct.LDPARMS*) unnamed_addr #0 !dbg !3340 {
  %7 = tail call fastcc i32 @enormlz(i16* %0) #7, !dbg !3359
  %8 = sext i32 %7 to i64, !dbg !3361
  %9 = sub nsw i64 %3, %8, !dbg !3362
  %10 = icmp sgt i32 %7, 144, !dbg !3363
  %11 = icmp slt i64 %9, 32767, !dbg !3365
  %12 = and i1 %10, %11, !dbg !3366
  br i1 %12, label %13, label %19, !dbg !3366

; <label>:13:                                     ; preds = %6
  %14 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3375
  %15 = bitcast i16* %14 to <8 x i16>*, !dbg !3378
  store <8 x i16> zeroinitializer, <8 x i16>* %15, align 2, !dbg !3378, !tbaa !534
  %16 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3375
  store i16 0, i16* %16, align 2, !dbg !3378, !tbaa !534
  %17 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3375
  store i16 0, i16* %17, align 2, !dbg !3378, !tbaa !534
  %18 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3375
  store i16 0, i16* %18, align 2, !dbg !3378, !tbaa !534
  br label %447, !dbg !3379

; <label>:19:                                     ; preds = %6
  %20 = icmp slt i64 %9, 0, !dbg !3380
  br i1 %20, label %21, label %34, !dbg !3382

; <label>:21:                                     ; preds = %19
  %22 = icmp sgt i64 %9, -145, !dbg !3383
  br i1 %22, label %23, label %28, !dbg !3386

; <label>:23:                                     ; preds = %21
  %24 = trunc i64 %9 to i32, !dbg !3387
  %25 = tail call fastcc i32 @eshift(i16* %0, i32 %24) #7, !dbg !3389
  %26 = icmp eq i32 %25, 0, !dbg !3391
  %27 = select i1 %26, i32 %1, i32 1, !dbg !3393
  br label %34, !dbg !3393

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3398
  %30 = bitcast i16* %29 to <8 x i16>*, !dbg !3399
  store <8 x i16> zeroinitializer, <8 x i16>* %30, align 2, !dbg !3399, !tbaa !534
  %31 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3398
  store i16 0, i16* %31, align 2, !dbg !3399, !tbaa !534
  %32 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3398
  store i16 0, i16* %32, align 2, !dbg !3399, !tbaa !534
  %33 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3398
  store i16 0, i16* %33, align 2, !dbg !3399, !tbaa !534
  br label %447, !dbg !3400

; <label>:34:                                     ; preds = %23, %19
  %35 = phi i32 [ %1, %19 ], [ %27, %23 ]
  %36 = icmp eq i32 %4, 0, !dbg !3401
  br i1 %36, label %434, label %37, !dbg !3403

; <label>:37:                                     ; preds = %34
  %38 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 1, !dbg !3404
  %39 = load i32, i32* %38, align 4, !dbg !3404, !tbaa !490
  %40 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 0, !dbg !3406
  %41 = load i32, i32* %40, align 4, !dbg !3406, !tbaa !484
  %42 = icmp eq i32 %39, %41, !dbg !3407
  br i1 %42, label %69, label %43, !dbg !3408

; <label>:43:                                     ; preds = %37
  %44 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 0, !dbg !3409
  %45 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 8, !dbg !3414
  %46 = bitcast i16* %44 to <8 x i16>*, !dbg !3415
  store <8 x i16> zeroinitializer, <8 x i16>* %46, align 2, !dbg !3415, !tbaa !534
  %47 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 9, !dbg !3414
  store i16 0, i16* %45, align 2, !dbg !3415, !tbaa !534
  %48 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 10, !dbg !3414
  store i16 0, i16* %47, align 2, !dbg !3415, !tbaa !534
  %49 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 11, !dbg !3414
  store i16 0, i16* %48, align 2, !dbg !3415, !tbaa !534
  %50 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 12, !dbg !3414
  store i16 0, i16* %49, align 2, !dbg !3415, !tbaa !534
  store i16 0, i16* %50, align 2, !dbg !3415, !tbaa !534
  switch i32 %39, label %56 [
    i32 24, label %55
    i32 113, label %51
    i32 64, label %52
    i32 56, label %53
    i32 53, label %54
  ], !dbg !3416

; <label>:51:                                     ; preds = %43
  br label %56, !dbg !3417

; <label>:52:                                     ; preds = %43
  br label %56, !dbg !3419

; <label>:53:                                     ; preds = %43
  br label %56, !dbg !3420

; <label>:54:                                     ; preds = %43
  br label %56, !dbg !3421

; <label>:55:                                     ; preds = %43
  br label %56, !dbg !3422

; <label>:56:                                     ; preds = %43, %55, %54, %53, %52, %51
  %57 = phi i32 [ 4, %55 ], [ 6, %54 ], [ 6, %53 ], [ 7, %52 ], [ 10, %51 ], [ 12, %43 ]
  %58 = phi i16 [ 255, %55 ], [ 2047, %54 ], [ 255, %53 ], [ -1, %52 ], [ 32767, %51 ], [ -1, %43 ]
  %59 = phi i16 [ 128, %55 ], [ 1024, %54 ], [ 128, %53 ], [ -32768, %52 ], [ 16384, %51 ], [ -32768, %43 ]
  %60 = phi i16 [ 256, %55 ], [ 2048, %54 ], [ 256, %53 ], [ 1, %52 ], [ -32768, %51 ], [ 1, %43 ]
  %61 = phi i32 [ 4, %55 ], [ 6, %54 ], [ 6, %53 ], [ 6, %52 ], [ 10, %51 ], [ 11, %43 ]
  %62 = phi i64 [ 4, %55 ], [ 6, %54 ], [ 6, %53 ], [ 6, %52 ], [ 10, %51 ], [ 11, %43 ]
  %63 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 2, !dbg !3423
  store i32 %57, i32* %63, align 4, !dbg !3423, !tbaa !3424
  %64 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 5, !dbg !3423
  store i16 %58, i16* %64, align 4, !dbg !3423, !tbaa !3425
  %65 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 6, !dbg !3423
  store i16 %59, i16* %65, align 2, !dbg !3423, !tbaa !3426
  %66 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 7, !dbg !3423
  store i16 %60, i16* %66, align 4, !dbg !3423, !tbaa !3427
  %67 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 3, !dbg !3423
  store i32 %61, i32* %67, align 4, !dbg !3423, !tbaa !3428
  %68 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 %62, !dbg !3429
  store i16 %60, i16* %68, align 2, !dbg !3430, !tbaa !534
  store i32 %39, i32* %40, align 4, !dbg !3431, !tbaa !484
  br label %69, !dbg !3432

; <label>:69:                                     ; preds = %37, %56
  %70 = icmp sgt i64 %9, 0, !dbg !3433
  %71 = icmp eq i32 %39, 144, !dbg !3435
  %72 = or i1 %71, %70, !dbg !3436
  br i1 %72, label %100, label %73, !dbg !3436

; <label>:73:                                     ; preds = %69
  %74 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3437
  %75 = load i16, i16* %74, align 2, !dbg !3437, !tbaa !534
  %76 = and i16 %75, 1, !dbg !3439
  %77 = zext i16 %76 to i32, !dbg !3439
  %78 = or i32 %35, %77, !dbg !3440
  %79 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3443
  %80 = load i16, i16* %79, align 2, !dbg !3446, !tbaa !534
  %81 = lshr i16 %80, 1, !dbg !3447
  store i16 %81, i16* %79, align 2, !dbg !3448, !tbaa !534
  %82 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3449
  %83 = bitcast i16* %82 to <8 x i16>*, !dbg !3446
  %84 = load <8 x i16>, <8 x i16>* %83, align 2, !dbg !3446, !tbaa !534
  %85 = lshr <8 x i16> %84, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3447
  %86 = insertelement <8 x i16> undef, i16 %80, i32 0, !dbg !3450
  %87 = shufflevector <8 x i16> %86, <8 x i16> %84, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3450
  %88 = shl <8 x i16> %87, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3450
  %89 = or <8 x i16> %85, %88, !dbg !3450
  %90 = bitcast i16* %82 to <8 x i16>*, !dbg !3448
  store <8 x i16> %89, <8 x i16>* %90, align 2, !dbg !3448, !tbaa !534
  %91 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3449
  %92 = load i16, i16* %91, align 2, !dbg !3446, !tbaa !534
  %93 = lshr i16 %92, 1, !dbg !3447
  %94 = extractelement <8 x i16> %84, i32 7, !dbg !3450
  %95 = shl i16 %94, 15, !dbg !3450
  %96 = or i16 %93, %95, !dbg !3450
  store i16 %96, i16* %91, align 2, !dbg !3448, !tbaa !534
  %97 = shl i16 %92, 15, !dbg !3451
  %98 = lshr i16 %75, 1, !dbg !3447
  %99 = or i16 %97, %98, !dbg !3450
  store i16 %99, i16* %74, align 2, !dbg !3448, !tbaa !534
  br label %100, !dbg !3452

; <label>:100:                                    ; preds = %69, %73
  %101 = phi i32 [ %78, %73 ], [ %35, %69 ], !dbg !3453
  %102 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 2, !dbg !3454
  %103 = load i32, i32* %102, align 4, !dbg !3454, !tbaa !3424
  %104 = sext i32 %103 to i64, !dbg !3455
  %105 = getelementptr inbounds i16, i16* %0, i64 %104, !dbg !3455
  %106 = load i16, i16* %105, align 2, !dbg !3455, !tbaa !534
  %107 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 5, !dbg !3456
  %108 = load i16, i16* %107, align 4, !dbg !3456, !tbaa !3425
  %109 = and i16 %108, %106, !dbg !3457
  %110 = icmp slt i32 %39, 144, !dbg !3459
  %111 = icmp slt i32 %103, 12, !dbg !3461
  %112 = and i1 %110, %111, !dbg !3463
  br i1 %112, label %113, label %224, !dbg !3463

; <label>:113:                                    ; preds = %100
  %114 = icmp sgt i64 %104, 11, !dbg !3464
  %115 = select i1 %114, i64 %104, i64 11, !dbg !3464
  %116 = add nuw nsw i64 %115, 1, !dbg !3464
  %117 = sub nsw i64 %116, %104, !dbg !3464
  %118 = icmp ult i64 %117, 16, !dbg !3464
  br i1 %118, label %207, label %119, !dbg !3464

; <label>:119:                                    ; preds = %113
  %120 = and i64 %117, -16, !dbg !3464
  %121 = add nsw i64 %120, %104, !dbg !3464
  %122 = insertelement <8 x i16> <i16 undef, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, i16 %109, i32 0, !dbg !3464
  %123 = add nsw i64 %120, -16, !dbg !3464
  %124 = lshr exact i64 %123, 4, !dbg !3464
  %125 = add nuw nsw i64 %124, 1, !dbg !3464
  %126 = and i64 %125, 1, !dbg !3464
  %127 = icmp eq i64 %123, 0, !dbg !3464
  br i1 %127, label %171, label %128, !dbg !3464

; <label>:128:                                    ; preds = %119
  %129 = sub nsw i64 %125, %126, !dbg !3464
  br label %130, !dbg !3464

; <label>:130:                                    ; preds = %130, %128
  %131 = phi i64 [ 0, %128 ], [ %168, %130 ]
  %132 = phi <8 x i16> [ %122, %128 ], [ %164, %130 ]
  %133 = phi <8 x i16> [ zeroinitializer, %128 ], [ %165, %130 ]
  %134 = phi i64 [ %129, %128 ], [ %169, %130 ]
  %135 = add i64 %131, %104
  %136 = add nsw i64 %135, 1, !dbg !3464
  %137 = getelementptr inbounds i16, i16* %0, i64 %136, !dbg !3466
  %138 = bitcast i16* %137 to <8 x i16>*, !dbg !3466
  %139 = load <8 x i16>, <8 x i16>* %138, align 2, !dbg !3466, !tbaa !534
  %140 = getelementptr inbounds i16, i16* %137, i64 8, !dbg !3466
  %141 = bitcast i16* %140 to <8 x i16>*, !dbg !3466
  %142 = load <8 x i16>, <8 x i16>* %141, align 2, !dbg !3466, !tbaa !534
  %143 = icmp ne <8 x i16> %139, zeroinitializer, !dbg !3466
  %144 = icmp ne <8 x i16> %142, zeroinitializer, !dbg !3466
  %145 = zext <8 x i1> %143 to <8 x i16>, !dbg !3468
  %146 = zext <8 x i1> %144 to <8 x i16>, !dbg !3468
  %147 = or <8 x i16> %132, %145, !dbg !3468
  %148 = or <8 x i16> %133, %146, !dbg !3468
  %149 = bitcast i16* %137 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %149, align 2, !dbg !3469, !tbaa !534
  %150 = bitcast i16* %140 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %150, align 2, !dbg !3469, !tbaa !534
  %151 = or i64 %131, 16
  %152 = add i64 %151, %104
  %153 = add nsw i64 %152, 1, !dbg !3464
  %154 = getelementptr inbounds i16, i16* %0, i64 %153, !dbg !3466
  %155 = bitcast i16* %154 to <8 x i16>*, !dbg !3466
  %156 = load <8 x i16>, <8 x i16>* %155, align 2, !dbg !3466, !tbaa !534
  %157 = getelementptr inbounds i16, i16* %154, i64 8, !dbg !3466
  %158 = bitcast i16* %157 to <8 x i16>*, !dbg !3466
  %159 = load <8 x i16>, <8 x i16>* %158, align 2, !dbg !3466, !tbaa !534
  %160 = icmp ne <8 x i16> %156, zeroinitializer, !dbg !3466
  %161 = icmp ne <8 x i16> %159, zeroinitializer, !dbg !3466
  %162 = zext <8 x i1> %160 to <8 x i16>, !dbg !3468
  %163 = zext <8 x i1> %161 to <8 x i16>, !dbg !3468
  %164 = or <8 x i16> %147, %162, !dbg !3468
  %165 = or <8 x i16> %148, %163, !dbg !3468
  %166 = bitcast i16* %154 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %166, align 2, !dbg !3469, !tbaa !534
  %167 = bitcast i16* %157 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %167, align 2, !dbg !3469, !tbaa !534
  %168 = add i64 %131, 32
  %169 = add i64 %134, -2
  %170 = icmp eq i64 %169, 0
  br i1 %170, label %171, label %130, !llvm.loop !3470

; <label>:171:                                    ; preds = %130, %119
  %172 = phi <8 x i16> [ undef, %119 ], [ %164, %130 ]
  %173 = phi <8 x i16> [ undef, %119 ], [ %165, %130 ]
  %174 = phi i64 [ 0, %119 ], [ %168, %130 ]
  %175 = phi <8 x i16> [ %122, %119 ], [ %164, %130 ]
  %176 = phi <8 x i16> [ zeroinitializer, %119 ], [ %165, %130 ]
  %177 = icmp eq i64 %126, 0
  br i1 %177, label %195, label %178

; <label>:178:                                    ; preds = %171
  %179 = add i64 %174, %104
  %180 = add nsw i64 %179, 1, !dbg !3464
  %181 = getelementptr inbounds i16, i16* %0, i64 %180, !dbg !3466
  %182 = bitcast i16* %181 to <8 x i16>*, !dbg !3466
  %183 = load <8 x i16>, <8 x i16>* %182, align 2, !dbg !3466, !tbaa !534
  %184 = getelementptr inbounds i16, i16* %181, i64 8, !dbg !3466
  %185 = bitcast i16* %184 to <8 x i16>*, !dbg !3466
  %186 = load <8 x i16>, <8 x i16>* %185, align 2, !dbg !3466, !tbaa !534
  %187 = bitcast i16* %181 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %187, align 2, !dbg !3469, !tbaa !534
  %188 = bitcast i16* %184 to <8 x i16>*, !dbg !3469
  store <8 x i16> zeroinitializer, <8 x i16>* %188, align 2, !dbg !3469, !tbaa !534
  %189 = icmp ne <8 x i16> %186, zeroinitializer, !dbg !3466
  %190 = zext <8 x i1> %189 to <8 x i16>, !dbg !3468
  %191 = or <8 x i16> %176, %190, !dbg !3468
  %192 = icmp ne <8 x i16> %183, zeroinitializer, !dbg !3466
  %193 = zext <8 x i1> %192 to <8 x i16>, !dbg !3468
  %194 = or <8 x i16> %175, %193, !dbg !3468
  br label %195, !dbg !3468

; <label>:195:                                    ; preds = %171, %178
  %196 = phi <8 x i16> [ %172, %171 ], [ %194, %178 ], !dbg !3468
  %197 = phi <8 x i16> [ %173, %171 ], [ %191, %178 ], !dbg !3468
  %198 = or <8 x i16> %197, %196, !dbg !3468
  %199 = shufflevector <8 x i16> %198, <8 x i16> undef, <8 x i32> <i32 4, i32 5, i32 6, i32 7, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3468
  %200 = or <8 x i16> %198, %199, !dbg !3468
  %201 = shufflevector <8 x i16> %200, <8 x i16> undef, <8 x i32> <i32 2, i32 3, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3468
  %202 = or <8 x i16> %200, %201, !dbg !3468
  %203 = shufflevector <8 x i16> %202, <8 x i16> undef, <8 x i32> <i32 1, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>, !dbg !3468
  %204 = or <8 x i16> %202, %203, !dbg !3468
  %205 = extractelement <8 x i16> %204, i32 0, !dbg !3468
  %206 = icmp eq i64 %117, %120
  br i1 %206, label %220, label %207, !dbg !3464

; <label>:207:                                    ; preds = %195, %113
  %208 = phi i64 [ %104, %113 ], [ %121, %195 ]
  %209 = phi i16 [ %109, %113 ], [ %205, %195 ]
  br label %210, !dbg !3464

; <label>:210:                                    ; preds = %207, %210
  %211 = phi i64 [ %213, %210 ], [ %208, %207 ]
  %212 = phi i16 [ %218, %210 ], [ %209, %207 ]
  %213 = add nsw i64 %211, 1, !dbg !3464
  %214 = getelementptr inbounds i16, i16* %0, i64 %213, !dbg !3466
  %215 = load i16, i16* %214, align 2, !dbg !3466, !tbaa !534
  %216 = icmp ne i16 %215, 0, !dbg !3466
  %217 = zext i1 %216 to i16, !dbg !3468
  %218 = or i16 %212, %217, !dbg !3468
  store i16 0, i16* %214, align 2, !dbg !3469, !tbaa !534
  %219 = icmp slt i64 %211, 11, !dbg !3461
  br i1 %219, label %210, label %220, !dbg !3471, !llvm.loop !3473

; <label>:220:                                    ; preds = %210, %195
  %221 = phi i16 [ %205, %195 ], [ %218, %210 ], !dbg !3468
  %222 = load i16, i16* %107, align 4, !dbg !3474, !tbaa !3425
  %223 = load i16, i16* %105, align 2, !dbg !3475, !tbaa !534
  br label %224, !dbg !3474

; <label>:224:                                    ; preds = %220, %100
  %225 = phi i16 [ %106, %100 ], [ %223, %220 ], !dbg !3475
  %226 = phi i16 [ %108, %100 ], [ %222, %220 ], !dbg !3474
  %227 = phi i16 [ %109, %100 ], [ %221, %220 ], !dbg !3476
  %228 = xor i16 %226, -1, !dbg !3477
  %229 = and i16 %225, %228, !dbg !3475
  store i16 %229, i16* %105, align 2, !dbg !3475, !tbaa !534
  %230 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 6, !dbg !3478
  %231 = load i16, i16* %230, align 2, !dbg !3478, !tbaa !3426
  %232 = and i16 %231, %227, !dbg !3480
  %233 = icmp eq i16 %232, 0, !dbg !3481
  br i1 %233, label %366, label %234, !dbg !3482

; <label>:234:                                    ; preds = %224
  %235 = icmp eq i16 %227, %231, !dbg !3483
  br i1 %235, label %236, label %250, !dbg !3486

; <label>:236:                                    ; preds = %234
  %237 = icmp eq i32 %101, 0, !dbg !3487
  br i1 %237, label %238, label %248, !dbg !3490

; <label>:238:                                    ; preds = %236
  %239 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 3, !dbg !3491
  %240 = load i32, i32* %239, align 4, !dbg !3491, !tbaa !3428
  %241 = sext i32 %240 to i64, !dbg !3494
  %242 = getelementptr inbounds i16, i16* %0, i64 %241, !dbg !3494
  %243 = load i16, i16* %242, align 2, !dbg !3494, !tbaa !534
  %244 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 7, !dbg !3495
  %245 = load i16, i16* %244, align 4, !dbg !3495, !tbaa !3427
  %246 = and i16 %245, %243, !dbg !3496
  %247 = icmp eq i16 %246, 0, !dbg !3497
  br i1 %247, label %366, label %250, !dbg !3498

; <label>:248:                                    ; preds = %236
  %249 = icmp eq i32 %2, 0, !dbg !3499
  br i1 %249, label %250, label %366, !dbg !3502

; <label>:250:                                    ; preds = %248, %238, %234
  %251 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 12, !dbg !3506
  %252 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3507
  %253 = load i16, i16* %251, align 2, !dbg !3510, !tbaa !534
  %254 = zext i16 %253 to i64, !dbg !3511
  %255 = load i16, i16* %252, align 2, !dbg !3512, !tbaa !534
  %256 = zext i16 %255 to i64, !dbg !3513
  %257 = add nuw nsw i64 %256, %254, !dbg !3514
  %258 = lshr i64 %257, 16
  %259 = trunc i64 %257 to i16, !dbg !3516
  store i16 %259, i16* %252, align 2, !dbg !3517, !tbaa !534
  %260 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 11, !dbg !3518
  %261 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3519
  %262 = load i16, i16* %260, align 2, !dbg !3510, !tbaa !534
  %263 = zext i16 %262 to i64, !dbg !3511
  %264 = load i16, i16* %261, align 2, !dbg !3512, !tbaa !534
  %265 = zext i16 %264 to i64, !dbg !3513
  %266 = add nuw nsw i64 %258, %263, !dbg !3520
  %267 = add nuw nsw i64 %266, %265, !dbg !3514
  %268 = lshr i64 %267, 16
  %269 = and i64 %268, 1
  %270 = trunc i64 %267 to i16, !dbg !3516
  store i16 %270, i16* %261, align 2, !dbg !3517, !tbaa !534
  %271 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 10, !dbg !3518
  %272 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3519
  %273 = load i16, i16* %271, align 2, !dbg !3510, !tbaa !534
  %274 = zext i16 %273 to i64, !dbg !3511
  %275 = load i16, i16* %272, align 2, !dbg !3512, !tbaa !534
  %276 = zext i16 %275 to i64, !dbg !3513
  %277 = add nuw nsw i64 %269, %274, !dbg !3520
  %278 = add nuw nsw i64 %277, %276, !dbg !3514
  %279 = lshr i64 %278, 16
  %280 = and i64 %279, 1
  %281 = trunc i64 %278 to i16, !dbg !3516
  store i16 %281, i16* %272, align 2, !dbg !3517, !tbaa !534
  %282 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 9, !dbg !3518
  %283 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3519
  %284 = load i16, i16* %282, align 2, !dbg !3510, !tbaa !534
  %285 = zext i16 %284 to i64, !dbg !3511
  %286 = load i16, i16* %283, align 2, !dbg !3512, !tbaa !534
  %287 = zext i16 %286 to i64, !dbg !3513
  %288 = add nuw nsw i64 %287, %285, !dbg !3520
  %289 = add nuw nsw i64 %288, %280, !dbg !3514
  %290 = lshr i64 %289, 16
  %291 = and i64 %290, 1
  %292 = trunc i64 %289 to i16, !dbg !3516
  store i16 %292, i16* %283, align 2, !dbg !3517, !tbaa !534
  %293 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 8, !dbg !3518
  %294 = getelementptr inbounds i16, i16* %0, i64 8, !dbg !3519
  %295 = load i16, i16* %293, align 2, !dbg !3510, !tbaa !534
  %296 = zext i16 %295 to i64, !dbg !3511
  %297 = load i16, i16* %294, align 2, !dbg !3512, !tbaa !534
  %298 = zext i16 %297 to i64, !dbg !3513
  %299 = add nuw nsw i64 %298, %296, !dbg !3520
  %300 = add nuw nsw i64 %299, %291, !dbg !3514
  %301 = lshr i64 %300, 16
  %302 = and i64 %301, 1
  %303 = trunc i64 %300 to i16, !dbg !3516
  store i16 %303, i16* %294, align 2, !dbg !3517, !tbaa !534
  %304 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 7, !dbg !3518
  %305 = getelementptr inbounds i16, i16* %0, i64 7, !dbg !3519
  %306 = load i16, i16* %304, align 2, !dbg !3510, !tbaa !534
  %307 = zext i16 %306 to i64, !dbg !3511
  %308 = load i16, i16* %305, align 2, !dbg !3512, !tbaa !534
  %309 = zext i16 %308 to i64, !dbg !3513
  %310 = add nuw nsw i64 %309, %307, !dbg !3520
  %311 = add nuw nsw i64 %310, %302, !dbg !3514
  %312 = lshr i64 %311, 16
  %313 = and i64 %312, 1
  %314 = trunc i64 %311 to i16, !dbg !3516
  store i16 %314, i16* %305, align 2, !dbg !3517, !tbaa !534
  %315 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 6, !dbg !3518
  %316 = getelementptr inbounds i16, i16* %0, i64 6, !dbg !3519
  %317 = load i16, i16* %315, align 2, !dbg !3510, !tbaa !534
  %318 = zext i16 %317 to i64, !dbg !3511
  %319 = load i16, i16* %316, align 2, !dbg !3512, !tbaa !534
  %320 = zext i16 %319 to i64, !dbg !3513
  %321 = add nuw nsw i64 %320, %318, !dbg !3520
  %322 = add nuw nsw i64 %321, %313, !dbg !3514
  %323 = lshr i64 %322, 16
  %324 = and i64 %323, 1
  %325 = trunc i64 %322 to i16, !dbg !3516
  store i16 %325, i16* %316, align 2, !dbg !3517, !tbaa !534
  %326 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 5, !dbg !3518
  %327 = getelementptr inbounds i16, i16* %0, i64 5, !dbg !3519
  %328 = load i16, i16* %326, align 2, !dbg !3510, !tbaa !534
  %329 = zext i16 %328 to i64, !dbg !3511
  %330 = load i16, i16* %327, align 2, !dbg !3512, !tbaa !534
  %331 = zext i16 %330 to i64, !dbg !3513
  %332 = add nuw nsw i64 %331, %329, !dbg !3520
  %333 = add nuw nsw i64 %332, %324, !dbg !3514
  %334 = lshr i64 %333, 16
  %335 = and i64 %334, 1
  %336 = trunc i64 %333 to i16, !dbg !3516
  store i16 %336, i16* %327, align 2, !dbg !3517, !tbaa !534
  %337 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 4, !dbg !3518
  %338 = getelementptr inbounds i16, i16* %0, i64 4, !dbg !3519
  %339 = load i16, i16* %337, align 2, !dbg !3510, !tbaa !534
  %340 = zext i16 %339 to i64, !dbg !3511
  %341 = load i16, i16* %338, align 2, !dbg !3512, !tbaa !534
  %342 = zext i16 %341 to i64, !dbg !3513
  %343 = add nuw nsw i64 %342, %340, !dbg !3520
  %344 = add nuw nsw i64 %343, %335, !dbg !3514
  %345 = lshr i64 %344, 16
  %346 = and i64 %345, 1
  %347 = trunc i64 %344 to i16, !dbg !3516
  store i16 %347, i16* %338, align 2, !dbg !3517, !tbaa !534
  %348 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 3, !dbg !3518
  %349 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3519
  %350 = load i16, i16* %348, align 2, !dbg !3510, !tbaa !534
  %351 = zext i16 %350 to i64, !dbg !3511
  %352 = load i16, i16* %349, align 2, !dbg !3512, !tbaa !534
  %353 = zext i16 %352 to i64, !dbg !3513
  %354 = add nuw nsw i64 %353, %351, !dbg !3520
  %355 = add nuw nsw i64 %354, %346, !dbg !3514
  %356 = lshr i64 %355, 16
  %357 = trunc i64 %355 to i16, !dbg !3516
  store i16 %357, i16* %349, align 2, !dbg !3517, !tbaa !534
  %358 = getelementptr inbounds %struct.LDPARMS, %struct.LDPARMS* %5, i64 0, i32 8, i64 2, !dbg !3518
  %359 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3519
  %360 = load i16, i16* %358, align 2, !dbg !3510, !tbaa !534
  %361 = load i16, i16* %359, align 2, !dbg !3512, !tbaa !534
  %362 = trunc i64 %356 to i16, !dbg !3516
  %363 = and i16 %362, 1, !dbg !3516
  %364 = add i16 %361, %360, !dbg !3516
  %365 = add i16 %364, %363, !dbg !3516
  store i16 %365, i16* %359, align 2, !dbg !3517, !tbaa !534
  br label %366, !dbg !3521

; <label>:366:                                    ; preds = %248, %224, %250, %238
  br i1 %72, label %367, label %370, !dbg !3522

; <label>:367:                                    ; preds = %366
  %368 = getelementptr inbounds i16, i16* %0, i64 2
  %369 = load i16, i16* %368, align 2, !dbg !3524, !tbaa !534
  br label %407, !dbg !3522

; <label>:370:                                    ; preds = %366
  %371 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3529
  %372 = load i16, i16* %371, align 2, !dbg !3532, !tbaa !534
  %373 = lshr i16 %372, 15, !dbg !3533
  %374 = shl i16 %372, 1, !dbg !3534
  store i16 %374, i16* %371, align 2, !dbg !3535, !tbaa !534
  %375 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3536
  %376 = load i16, i16* %375, align 2, !dbg !3532, !tbaa !534
  %377 = lshr i16 %376, 15, !dbg !3533
  %378 = shl i16 %376, 1, !dbg !3534
  %379 = or i16 %378, %373, !dbg !3537
  store i16 %379, i16* %375, align 2, !dbg !3535, !tbaa !534
  %380 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3536
  %381 = load i16, i16* %380, align 2, !dbg !3532, !tbaa !534
  %382 = shl i16 %381, 1, !dbg !3534
  %383 = or i16 %382, %377, !dbg !3537
  store i16 %383, i16* %380, align 2, !dbg !3535, !tbaa !534
  %384 = getelementptr inbounds i16, i16* %0, i64 2, !dbg !3536
  %385 = bitcast i16* %384 to <8 x i16>*, !dbg !3532
  %386 = load <8 x i16>, <8 x i16>* %385, align 2, !dbg !3532, !tbaa !534
  %387 = extractelement <8 x i16> %386, i32 1, !dbg !3533
  %388 = insertelement <8 x i16> undef, i16 %387, i32 0, !dbg !3533
  %389 = extractelement <8 x i16> %386, i32 2, !dbg !3533
  %390 = insertelement <8 x i16> %388, i16 %389, i32 1, !dbg !3533
  %391 = extractelement <8 x i16> %386, i32 3, !dbg !3533
  %392 = insertelement <8 x i16> %390, i16 %391, i32 2, !dbg !3533
  %393 = extractelement <8 x i16> %386, i32 4, !dbg !3533
  %394 = insertelement <8 x i16> %392, i16 %393, i32 3, !dbg !3533
  %395 = extractelement <8 x i16> %386, i32 5, !dbg !3533
  %396 = insertelement <8 x i16> %394, i16 %395, i32 4, !dbg !3533
  %397 = extractelement <8 x i16> %386, i32 6, !dbg !3533
  %398 = insertelement <8 x i16> %396, i16 %397, i32 5, !dbg !3533
  %399 = extractelement <8 x i16> %386, i32 7, !dbg !3533
  %400 = insertelement <8 x i16> %398, i16 %399, i32 6, !dbg !3533
  %401 = insertelement <8 x i16> %400, i16 %381, i32 7, !dbg !3533
  %402 = lshr <8 x i16> %401, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3533
  %403 = shl <8 x i16> %386, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3534
  %404 = or <8 x i16> %403, %402, !dbg !3537
  %405 = bitcast i16* %384 to <8 x i16>*, !dbg !3535
  store <8 x i16> %404, <8 x i16>* %405, align 2, !dbg !3535, !tbaa !534
  %406 = extractelement <8 x i16> %404, i32 0, !dbg !3538
  br label %407, !dbg !3538

; <label>:407:                                    ; preds = %367, %370
  %408 = phi i16* [ %368, %367 ], [ %384, %370 ], !dbg !3524
  %409 = phi i16 [ %369, %367 ], [ %406, %370 ], !dbg !3524
  %410 = icmp eq i16 %409, 0, !dbg !3539
  br i1 %410, label %434, label %411, !dbg !3540

; <label>:411:                                    ; preds = %407
  %412 = lshr i16 %409, 1, !dbg !3546
  store i16 %412, i16* %408, align 2, !dbg !3547, !tbaa !534
  %413 = getelementptr inbounds i16, i16* %0, i64 3, !dbg !3548
  %414 = bitcast i16* %413 to <8 x i16>*, !dbg !3549
  %415 = load <8 x i16>, <8 x i16>* %414, align 2, !dbg !3549, !tbaa !534
  %416 = lshr <8 x i16> %415, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3546
  %417 = insertelement <8 x i16> undef, i16 %409, i32 0, !dbg !3550
  %418 = shufflevector <8 x i16> %417, <8 x i16> %415, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3550
  %419 = shl <8 x i16> %418, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3550
  %420 = or <8 x i16> %416, %419, !dbg !3550
  %421 = bitcast i16* %413 to <8 x i16>*, !dbg !3547
  store <8 x i16> %420, <8 x i16>* %421, align 2, !dbg !3547, !tbaa !534
  %422 = getelementptr inbounds i16, i16* %0, i64 11, !dbg !3548
  %423 = load i16, i16* %422, align 2, !dbg !3549, !tbaa !534
  %424 = lshr i16 %423, 1, !dbg !3546
  %425 = extractelement <8 x i16> %415, i32 7, !dbg !3550
  %426 = shl i16 %425, 15, !dbg !3550
  %427 = or i16 %424, %426, !dbg !3550
  store i16 %427, i16* %422, align 2, !dbg !3547, !tbaa !534
  %428 = shl i16 %423, 15, !dbg !3551
  %429 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3548
  %430 = load i16, i16* %429, align 2, !dbg !3549, !tbaa !534
  %431 = lshr i16 %430, 1, !dbg !3546
  %432 = or i16 %431, %428, !dbg !3550
  store i16 %432, i16* %429, align 2, !dbg !3547, !tbaa !534
  %433 = add nsw i64 %9, 1, !dbg !3552
  br label %434, !dbg !3553

; <label>:434:                                    ; preds = %407, %411, %34
  %435 = phi i64 [ %9, %34 ], [ %433, %411 ], [ %9, %407 ], !dbg !3554
  %436 = getelementptr inbounds i16, i16* %0, i64 12, !dbg !3555
  store i16 0, i16* %436, align 2, !dbg !3556, !tbaa !534
  %437 = icmp sgt i64 %435, 32766, !dbg !3557
  br i1 %437, label %438, label %443, !dbg !3559

; <label>:438:                                    ; preds = %434
  %439 = getelementptr inbounds i16, i16* %0, i64 1, !dbg !3560
  %440 = bitcast i16* %439 to <8 x i16>*, !dbg !3562
  store <8 x i16> <i16 32767, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0, i16 0>, <8 x i16>* %440, align 2, !dbg !3562, !tbaa !534
  %441 = getelementptr inbounds i16, i16* %0, i64 9, !dbg !3563
  store i16 0, i16* %441, align 2, !dbg !3566, !tbaa !534
  %442 = getelementptr inbounds i16, i16* %0, i64 10, !dbg !3563
  store i16 0, i16* %442, align 2, !dbg !3566, !tbaa !534
  br label %447, !dbg !3567

; <label>:443:                                    ; preds = %434
  %444 = icmp sgt i64 %435, 0, !dbg !3568
  %445 = select i1 %444, i64 %435, i64 0, !dbg !3568
  %446 = trunc i64 %445 to i16, !dbg !3568
  br label %447, !dbg !3568

; <label>:447:                                    ; preds = %443, %438, %28, %13
  %448 = phi i64 [ 11, %438 ], [ 12, %28 ], [ 12, %13 ], [ 1, %443 ]
  %449 = phi i16 [ 0, %438 ], [ 0, %28 ], [ 0, %13 ], [ %446, %443 ]
  %450 = getelementptr inbounds i16, i16* %0, i64 %448, !dbg !3569
  store i16 %449, i16* %450, align 2, !dbg !3571, !tbaa !534
  ret void, !dbg !3567
}

; Function Attrs: noredzone nounwind
define internal fastcc i32 @eshift(i16*, i32) unnamed_addr #0 !dbg !3572 {
  %3 = icmp eq i32 %1, 0, !dbg !3582
  br i1 %3, label %339, label %4, !dbg !3584

; <label>:4:                                      ; preds = %2
  %5 = getelementptr i16, i16* %0, i64 12, !dbg !3586
  %6 = icmp slt i32 %1, 0, !dbg !3588
  br i1 %6, label %50, label %7, !dbg !3590

; <label>:7:                                      ; preds = %4
  %8 = icmp sgt i32 %1, 15, !dbg !3591
  br i1 %8, label %9, label %219, !dbg !3593

; <label>:9:                                      ; preds = %7
  %10 = getelementptr inbounds i16, i16* %0, i64 3
  %11 = getelementptr inbounds i16, i16* %0, i64 10
  %12 = getelementptr inbounds i16, i16* %0, i64 11
  %13 = bitcast i16* %10 to <8 x i16>*, !dbg !3594
  %14 = load <8 x i16>, <8 x i16>* %13, align 2, !dbg !3594, !tbaa !534
  %15 = load i16, i16* %12, align 2, !dbg !3594, !tbaa !534
  %16 = load i16, i16* %5, align 2, !dbg !3597, !tbaa !534
  %17 = xor i32 %1, -1, !dbg !3593
  %18 = icmp sgt i32 %17, -32, !dbg !3593
  %19 = select i1 %18, i32 %17, i32 -32, !dbg !3593
  %20 = add i32 %19, %1, !dbg !3593
  %21 = add i32 %20, 16, !dbg !3593
  %22 = and i32 %21, -16, !dbg !3593
  %23 = icmp sgt i32 %1, 31, !dbg !3591
  %24 = extractelement <8 x i16> %14, i32 1, !dbg !3581
  %25 = insertelement <8 x i16> undef, i16 %24, i32 0, !dbg !3581
  %26 = extractelement <8 x i16> %14, i32 2, !dbg !3581
  %27 = insertelement <8 x i16> %25, i16 %26, i32 1, !dbg !3581
  %28 = extractelement <8 x i16> %14, i32 3, !dbg !3581
  %29 = insertelement <8 x i16> %27, i16 %28, i32 2, !dbg !3581
  %30 = extractelement <8 x i16> %14, i32 4, !dbg !3581
  %31 = insertelement <8 x i16> %29, i16 %30, i32 3, !dbg !3581
  %32 = extractelement <8 x i16> %14, i32 5, !dbg !3581
  %33 = insertelement <8 x i16> %31, i16 %32, i32 4, !dbg !3581
  %34 = extractelement <8 x i16> %14, i32 6, !dbg !3581
  %35 = insertelement <8 x i16> %33, i16 %34, i32 5, !dbg !3581
  %36 = extractelement <8 x i16> %14, i32 7, !dbg !3581
  %37 = insertelement <8 x i16> %35, i16 %36, i32 6, !dbg !3581
  %38 = insertelement <8 x i16> %37, i16 %15, i32 7, !dbg !3581
  br i1 %23, label %39, label %211, !dbg !3593, !llvm.loop !3601

; <label>:39:                                     ; preds = %9
  %40 = add nsw i32 %1, -32, !dbg !3603
  %41 = icmp sgt i32 %1, 47, !dbg !3591
  %42 = insertelement <8 x i16> undef, i16 %26, i32 0, !dbg !3581
  %43 = insertelement <8 x i16> %42, i16 %28, i32 1, !dbg !3581
  %44 = insertelement <8 x i16> %43, i16 %30, i32 2, !dbg !3581
  %45 = insertelement <8 x i16> %44, i16 %32, i32 3, !dbg !3581
  %46 = insertelement <8 x i16> %45, i16 %34, i32 4, !dbg !3581
  %47 = insertelement <8 x i16> %46, i16 %36, i32 5, !dbg !3581
  %48 = insertelement <8 x i16> %47, i16 %15, i32 6, !dbg !3581
  %49 = insertelement <8 x i16> %48, i16 %16, i32 7, !dbg !3581
  br i1 %41, label %237, label %211, !dbg !3593, !llvm.loop !3601

; <label>:50:                                     ; preds = %4
  %51 = sub nsw i32 0, %1, !dbg !3604
  %52 = icmp slt i32 %1, -15, !dbg !3606
  br i1 %52, label %53, label %106, !dbg !3607

; <label>:53:                                     ; preds = %50
  %54 = getelementptr inbounds i16, i16* %0, i64 11
  %55 = getelementptr inbounds i16, i16* %0, i64 10
  %56 = getelementptr inbounds i16, i16* %0, i64 3
  %57 = getelementptr inbounds i16, i16* %0, i64 2
  %58 = load i16, i16* %5, align 2, !dbg !3608, !tbaa !534
  %59 = load i16, i16* %54, align 2, !dbg !3608, !tbaa !534
  %60 = load i16, i16* %55, align 2, !dbg !3608, !tbaa !534
  %61 = bitcast i16* %57 to <8 x i16>*, !dbg !3611
  %62 = load <8 x i16>, <8 x i16>* %61, align 2, !dbg !3611, !tbaa !534
  %63 = add i32 %1, -1, !dbg !3607
  %64 = icmp sgt i32 %63, -32, !dbg !3607
  %65 = select i1 %64, i32 %63, i32 -32, !dbg !3607
  %66 = add i32 %65, 16, !dbg !3607
  %67 = sub i32 %66, %1, !dbg !3607
  %68 = and i32 %67, -16, !dbg !3607
  %69 = lshr i32 %67, 4, !dbg !3607
  %70 = add nuw nsw i32 %69, 1, !dbg !3607
  %71 = and i32 %70, 3, !dbg !3607
  %72 = icmp ult i32 %67, 48, !dbg !3607
  br i1 %72, label %75, label %73, !dbg !3607

; <label>:73:                                     ; preds = %53
  %74 = sub nsw i32 %70, %71, !dbg !3607
  br label %125, !dbg !3607

; <label>:75:                                     ; preds = %125, %53
  %76 = phi i16 [ undef, %53 ], [ %140, %125 ]
  %77 = phi i16 [ undef, %53 ], [ %137, %125 ]
  %78 = phi <8 x i16> [ undef, %53 ], [ %139, %125 ]
  %79 = phi i16 [ undef, %53 ], [ %141, %125 ]
  %80 = phi i16 [ %60, %53 ], [ %143, %125 ]
  %81 = phi i16 [ %59, %53 ], [ %140, %125 ]
  %82 = phi i16 [ %58, %53 ], [ %137, %125 ]
  %83 = phi i16 [ 0, %53 ], [ %141, %125 ]
  %84 = phi <8 x i16> [ %62, %53 ], [ %142, %125 ]
  %85 = icmp eq i32 %71, 0, !dbg !3607
  br i1 %85, label %98, label %86, !dbg !3607

; <label>:86:                                     ; preds = %75, %86
  %87 = phi i16 [ %95, %86 ], [ %80, %75 ], !dbg !3585
  %88 = phi i16 [ %87, %86 ], [ %81, %75 ], !dbg !3585
  %89 = phi i16 [ %88, %86 ], [ %82, %75 ], !dbg !3585
  %90 = phi i16 [ %93, %86 ], [ %83, %75 ]
  %91 = phi <8 x i16> [ %94, %86 ], [ %84, %75 ], !dbg !3585
  %92 = phi i32 [ %96, %86 ], [ %71, %75 ]
  %93 = or i16 %89, %90, !dbg !3612
  %94 = shufflevector <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i16> %91, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3585
  %95 = extractelement <8 x i16> %91, i32 7, !dbg !3607
  %96 = add i32 %92, -1, !dbg !3607
  %97 = icmp eq i32 %96, 0, !dbg !3607
  br i1 %97, label %98, label %86, !dbg !3607, !llvm.loop !3616

; <label>:98:                                     ; preds = %86, %75
  %99 = phi i16 [ %76, %75 ], [ %87, %86 ], !dbg !3585
  %100 = phi i16 [ %77, %75 ], [ %88, %86 ], !dbg !3585
  %101 = phi <8 x i16> [ %78, %75 ], [ %91, %86 ], !dbg !3585
  %102 = phi i16 [ %79, %75 ], [ %93, %86 ], !dbg !3612
  %103 = sub i32 -16, %1, !dbg !3607
  %104 = sub i32 %103, %68, !dbg !3607
  store i16 %100, i16* %5, align 2, !dbg !3608, !tbaa !534
  store i16 %99, i16* %54, align 2, !dbg !3608, !tbaa !534
  %105 = bitcast i16* %56 to <8 x i16>*, !dbg !3608
  store <8 x i16> %101, <8 x i16>* %105, align 2, !dbg !3608, !tbaa !534
  store i16 0, i16* %57, align 2, !dbg !3611, !tbaa !534
  br label %106, !dbg !3607

; <label>:106:                                    ; preds = %98, %50
  %107 = phi i32 [ %104, %98 ], [ %51, %50 ], !dbg !3618
  %108 = phi i16 [ %102, %98 ], [ 0, %50 ], !dbg !3618
  %109 = icmp sgt i32 %107, 7, !dbg !3619
  br i1 %109, label %110, label %150, !dbg !3620

; <label>:110:                                    ; preds = %106
  %111 = getelementptr inbounds i16, i16* %0, i64 2
  %112 = getelementptr inbounds i16, i16* %0, i64 3
  %113 = getelementptr inbounds i16, i16* %0, i64 11
  %114 = load i16, i16* %5, align 2, !dbg !3621, !tbaa !534
  %115 = load i16, i16* %111, align 2, !dbg !3621, !tbaa !534
  %116 = bitcast i16* %112 to <8 x i16>*, !dbg !3621
  %117 = load <8 x i16>, <8 x i16>* %116, align 2, !dbg !3621, !tbaa !534
  %118 = load i16, i16* %113, align 2, !dbg !3621, !tbaa !534
  %119 = xor i32 %107, -1, !dbg !3620
  %120 = icmp sgt i32 %119, -16, !dbg !3620
  %121 = select i1 %120, i32 %119, i32 -16, !dbg !3620
  %122 = add i32 %107, %121, !dbg !3620
  %123 = add i32 %122, 8, !dbg !3620
  %124 = and i32 %123, -8, !dbg !3620
  br label %163, !dbg !3620

; <label>:125:                                    ; preds = %125, %73
  %126 = phi i16 [ %60, %73 ], [ %143, %125 ], !dbg !3585
  %127 = phi i16 [ %59, %73 ], [ %140, %125 ], !dbg !3585
  %128 = phi i16 [ %58, %73 ], [ %137, %125 ], !dbg !3585
  %129 = phi i16 [ 0, %73 ], [ %141, %125 ]
  %130 = phi <8 x i16> [ %62, %73 ], [ %142, %125 ], !dbg !3585
  %131 = phi i32 [ %74, %73 ], [ %144, %125 ]
  %132 = or i16 %128, %129, !dbg !3612
  %133 = shufflevector <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i16> %130, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 undef, i32 undef>, !dbg !3585
  %134 = extractelement <8 x i16> %130, i32 7, !dbg !3607
  %135 = or i16 %127, %132, !dbg !3612
  %136 = shufflevector <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i16> %133, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 undef>, !dbg !3585
  %137 = extractelement <8 x i16> %130, i32 6, !dbg !3607
  %138 = or i16 %126, %135, !dbg !3612
  %139 = shufflevector <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i16> %136, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3585
  %140 = extractelement <8 x i16> %130, i32 5, !dbg !3607
  %141 = or i16 %134, %138, !dbg !3612
  %142 = shufflevector <8 x i16> <i16 0, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef>, <8 x i16> %139, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3585
  %143 = extractelement <8 x i16> %130, i32 4, !dbg !3607
  %144 = add i32 %131, -4, !dbg !3607
  %145 = icmp eq i32 %144, 0, !dbg !3607
  br i1 %145, label %75, label %125, !dbg !3607, !llvm.loop !3624

; <label>:146:                                    ; preds = %163
  %147 = add i32 %107, -8, !dbg !3620
  %148 = sub i32 %147, %124, !dbg !3620
  store i16 %184, i16* %5, align 2, !dbg !3621, !tbaa !534
  store i16 %172, i16* %111, align 2, !dbg !3621, !tbaa !534
  %149 = bitcast i16* %112 to <8 x i16>*, !dbg !3621
  store <8 x i16> %179, <8 x i16>* %149, align 2, !dbg !3621, !tbaa !534
  store i16 %182, i16* %113, align 2, !dbg !3621, !tbaa !534
  br label %150, !dbg !3620

; <label>:150:                                    ; preds = %146, %106
  %151 = phi i32 [ %148, %146 ], [ %107, %106 ], !dbg !3626
  %152 = phi i16 [ %171, %146 ], [ %108, %106 ], !dbg !3626
  %153 = icmp sgt i32 %151, 0, !dbg !3627
  br i1 %153, label %154, label %333, !dbg !3628

; <label>:154:                                    ; preds = %150
  %155 = getelementptr inbounds i16, i16* %0, i64 2
  %156 = getelementptr inbounds i16, i16* %0, i64 3
  %157 = getelementptr inbounds i16, i16* %0, i64 11
  %158 = load i16, i16* %5, align 2, !dbg !3629, !tbaa !534
  %159 = load i16, i16* %155, align 2, !dbg !3629, !tbaa !534
  %160 = bitcast i16* %156 to <8 x i16>*, !dbg !3629
  %161 = load <8 x i16>, <8 x i16>* %160, align 2, !dbg !3629, !tbaa !534
  %162 = load i16, i16* %157, align 2, !dbg !3629, !tbaa !534
  br label %187, !dbg !3628

; <label>:163:                                    ; preds = %110, %163
  %164 = phi i16 [ %118, %110 ], [ %182, %163 ], !dbg !3585
  %165 = phi i16 [ %115, %110 ], [ %172, %163 ], !dbg !3585
  %166 = phi i16 [ %114, %110 ], [ %184, %163 ], !dbg !3585
  %167 = phi i16 [ %108, %110 ], [ %171, %163 ]
  %168 = phi i32 [ %107, %110 ], [ %185, %163 ]
  %169 = phi <8 x i16> [ %117, %110 ], [ %179, %163 ], !dbg !3585
  %170 = and i16 %166, 255, !dbg !3632
  %171 = or i16 %170, %167, !dbg !3633
  %172 = lshr i16 %165, 8, !dbg !3638
  %173 = insertelement <8 x i16> undef, i16 %165, i32 0, !dbg !3639
  %174 = shufflevector <8 x i16> %173, <8 x i16> %169, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3639
  %175 = shl <8 x i16> %174, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3639
  %176 = extractelement <8 x i16> %169, i32 7, !dbg !3639
  %177 = shl i16 %176, 8, !dbg !3639
  %178 = lshr <8 x i16> %169, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3638
  %179 = or <8 x i16> %178, %175, !dbg !3621
  %180 = shl i16 %164, 8, !dbg !3639
  %181 = lshr i16 %164, 8, !dbg !3638
  %182 = or i16 %181, %177, !dbg !3621
  %183 = lshr i16 %166, 8, !dbg !3638
  %184 = or i16 %180, %183, !dbg !3621
  %185 = add nsw i32 %168, -8, !dbg !3640
  %186 = icmp sgt i32 %168, 15, !dbg !3619
  br i1 %186, label %163, label %146, !dbg !3620, !llvm.loop !3641

; <label>:187:                                    ; preds = %154, %187
  %188 = phi i16 [ %162, %154 ], [ %205, %187 ], !dbg !3585
  %189 = phi i16 [ %159, %154 ], [ %196, %187 ], !dbg !3585
  %190 = phi i16 [ %158, %154 ], [ %208, %187 ], !dbg !3585
  %191 = phi i16 [ %152, %154 ], [ %195, %187 ]
  %192 = phi i32 [ %151, %154 ], [ %209, %187 ]
  %193 = phi <8 x i16> [ %161, %154 ], [ %201, %187 ], !dbg !3585
  %194 = and i16 %190, 1, !dbg !3643
  %195 = or i16 %194, %191, !dbg !3644
  %196 = lshr i16 %189, 1, !dbg !3648
  %197 = lshr <8 x i16> %193, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3648
  %198 = insertelement <8 x i16> undef, i16 %189, i32 0, !dbg !3649
  %199 = shufflevector <8 x i16> %198, <8 x i16> %193, <8 x i32> <i32 0, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14>, !dbg !3649
  %200 = shl <8 x i16> %199, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3649
  %201 = or <8 x i16> %197, %200, !dbg !3649
  %202 = lshr i16 %188, 1, !dbg !3648
  %203 = extractelement <8 x i16> %193, i32 7, !dbg !3649
  %204 = shl i16 %203, 15, !dbg !3649
  %205 = or i16 %202, %204, !dbg !3649
  %206 = shl i16 %188, 15, !dbg !3650
  %207 = lshr i16 %190, 1, !dbg !3648
  %208 = or i16 %206, %207, !dbg !3649
  %209 = add nsw i32 %192, -1, !dbg !3651
  %210 = icmp sgt i32 %192, 1, !dbg !3627
  br i1 %210, label %187, label %331, !dbg !3628, !llvm.loop !3652

; <label>:211:                                    ; preds = %237, %39, %9
  %212 = phi i16 [ %16, %9 ], [ 0, %39 ], [ 0, %237 ], !dbg !3581
  %213 = phi i16 [ %15, %9 ], [ %16, %39 ], [ 0, %237 ], !dbg !3581
  %214 = phi <8 x i16> [ %14, %9 ], [ %38, %39 ], [ %239, %237 ], !dbg !3581
  %215 = getelementptr inbounds i16, i16* %0, i64 2
  %216 = add i32 %1, -16, !dbg !3593
  %217 = sub i32 %216, %22, !dbg !3593
  %218 = bitcast i16* %215 to <8 x i16>*, !dbg !3594
  store <8 x i16> %214, <8 x i16>* %218, align 2, !dbg !3594, !tbaa !534
  store i16 %213, i16* %11, align 2, !dbg !3594, !tbaa !534
  store i16 %212, i16* %12, align 2, !dbg !3594, !tbaa !534
  store i16 0, i16* %5, align 2, !dbg !3597, !tbaa !534
  br label %219, !dbg !3593

; <label>:219:                                    ; preds = %211, %7
  %220 = phi i32 [ %217, %211 ], [ %1, %7 ]
  %221 = icmp sgt i32 %220, 7, !dbg !3654
  br i1 %221, label %222, label %253, !dbg !3655

; <label>:222:                                    ; preds = %219
  %223 = getelementptr inbounds i16, i16* %0, i64 11
  %224 = getelementptr inbounds i16, i16* %0, i64 10
  %225 = getelementptr inbounds i16, i16* %0, i64 2
  %226 = load i16, i16* %5, align 2, !dbg !3656, !tbaa !534
  %227 = load i16, i16* %223, align 2, !dbg !3659, !tbaa !534
  %228 = load i16, i16* %224, align 2, !dbg !3659, !tbaa !534
  %229 = bitcast i16* %225 to <8 x i16>*, !dbg !3659
  %230 = load <8 x i16>, <8 x i16>* %229, align 2, !dbg !3659, !tbaa !534
  %231 = xor i32 %220, -1, !dbg !3655
  %232 = icmp sgt i32 %231, -16, !dbg !3655
  %233 = select i1 %232, i32 %231, i32 -16, !dbg !3655
  %234 = add i32 %220, %233, !dbg !3655
  %235 = add i32 %234, 8, !dbg !3655
  %236 = and i32 %235, -8, !dbg !3655
  br label %265, !dbg !3655

; <label>:237:                                    ; preds = %39, %237
  %238 = phi i32 [ %240, %237 ], [ %40, %39 ]
  %239 = phi <8 x i16> [ %248, %237 ], [ %49, %39 ], !dbg !3581
  %240 = add nsw i32 %238, -16, !dbg !3603
  %241 = icmp sgt i32 %238, 31, !dbg !3591
  %242 = shufflevector <8 x i16> <i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 undef, i16 0>, <8 x i16> %239, <8 x i32> <i32 9, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7>, !dbg !3581
  %243 = shufflevector <8 x i16> %242, <8 x i16> %239, <8 x i32> <i32 0, i32 10, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 7>, !dbg !3581
  %244 = shufflevector <8 x i16> %243, <8 x i16> %239, <8 x i32> <i32 0, i32 1, i32 11, i32 undef, i32 undef, i32 undef, i32 undef, i32 7>, !dbg !3581
  %245 = shufflevector <8 x i16> %244, <8 x i16> %239, <8 x i32> <i32 0, i32 1, i32 2, i32 12, i32 undef, i32 undef, i32 undef, i32 7>, !dbg !3581
  %246 = shufflevector <8 x i16> %245, <8 x i16> %239, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 13, i32 undef, i32 undef, i32 7>, !dbg !3581
  %247 = shufflevector <8 x i16> %246, <8 x i16> %239, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 14, i32 undef, i32 7>, !dbg !3581
  %248 = shufflevector <8 x i16> %247, <8 x i16> %239, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 15, i32 7>, !dbg !3581
  br i1 %241, label %237, label %211, !dbg !3593, !llvm.loop !3660

; <label>:249:                                    ; preds = %265
  %250 = add i32 %220, -8, !dbg !3655
  %251 = sub i32 %250, %236, !dbg !3655
  store i16 %272, i16* %5, align 2, !dbg !3656, !tbaa !534
  store i16 %275, i16* %223, align 2, !dbg !3659, !tbaa !534
  store i16 %277, i16* %224, align 2, !dbg !3659, !tbaa !534
  %252 = bitcast i16* %225 to <8 x i16>*, !dbg !3659
  store <8 x i16> %295, <8 x i16>* %252, align 2, !dbg !3659, !tbaa !534
  br label %253, !dbg !3655

; <label>:253:                                    ; preds = %249, %219
  %254 = phi i32 [ %251, %249 ], [ %220, %219 ]
  %255 = icmp sgt i32 %254, 0, !dbg !3661
  br i1 %255, label %256, label %338, !dbg !3662

; <label>:256:                                    ; preds = %253
  %257 = getelementptr inbounds i16, i16* %0, i64 11
  %258 = getelementptr inbounds i16, i16* %0, i64 10
  %259 = getelementptr inbounds i16, i16* %0, i64 2
  %260 = load i16, i16* %5, align 2, !dbg !3663, !tbaa !534
  %261 = load i16, i16* %257, align 2, !dbg !3666, !tbaa !534
  %262 = load i16, i16* %258, align 2, !dbg !3666, !tbaa !534
  %263 = bitcast i16* %259 to <8 x i16>*, !dbg !3666
  %264 = load <8 x i16>, <8 x i16>* %263, align 2, !dbg !3666, !tbaa !534
  br label %298, !dbg !3662

; <label>:265:                                    ; preds = %222, %265
  %266 = phi i16 [ %228, %222 ], [ %277, %265 ], !dbg !3581
  %267 = phi i16 [ %227, %222 ], [ %275, %265 ], !dbg !3581
  %268 = phi i16 [ %226, %222 ], [ %272, %265 ], !dbg !3581
  %269 = phi i32 [ %220, %222 ], [ %296, %265 ]
  %270 = phi <8 x i16> [ %230, %222 ], [ %295, %265 ], !dbg !3581
  %271 = lshr i16 %268, 8, !dbg !3670
  %272 = shl i16 %268, 8, !dbg !3672
  %273 = lshr i16 %267, 8, !dbg !3670
  %274 = shl i16 %267, 8, !dbg !3672
  %275 = or i16 %274, %271, !dbg !3659
  %276 = shl i16 %266, 8, !dbg !3672
  %277 = or i16 %276, %273, !dbg !3659
  %278 = extractelement <8 x i16> %270, i32 1, !dbg !3670
  %279 = insertelement <8 x i16> undef, i16 %278, i32 0, !dbg !3670
  %280 = extractelement <8 x i16> %270, i32 2, !dbg !3670
  %281 = insertelement <8 x i16> %279, i16 %280, i32 1, !dbg !3670
  %282 = extractelement <8 x i16> %270, i32 3, !dbg !3670
  %283 = insertelement <8 x i16> %281, i16 %282, i32 2, !dbg !3670
  %284 = extractelement <8 x i16> %270, i32 4, !dbg !3670
  %285 = insertelement <8 x i16> %283, i16 %284, i32 3, !dbg !3670
  %286 = extractelement <8 x i16> %270, i32 5, !dbg !3670
  %287 = insertelement <8 x i16> %285, i16 %286, i32 4, !dbg !3670
  %288 = extractelement <8 x i16> %270, i32 6, !dbg !3670
  %289 = insertelement <8 x i16> %287, i16 %288, i32 5, !dbg !3670
  %290 = extractelement <8 x i16> %270, i32 7, !dbg !3670
  %291 = insertelement <8 x i16> %289, i16 %290, i32 6, !dbg !3670
  %292 = insertelement <8 x i16> %291, i16 %266, i32 7, !dbg !3670
  %293 = lshr <8 x i16> %292, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3670
  %294 = shl <8 x i16> %270, <i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8, i16 8>, !dbg !3672
  %295 = or <8 x i16> %294, %293, !dbg !3659
  %296 = add nsw i32 %269, -8, !dbg !3673
  %297 = icmp sgt i32 %269, 15, !dbg !3654
  br i1 %297, label %265, label %249, !dbg !3655, !llvm.loop !3674

; <label>:298:                                    ; preds = %256, %298
  %299 = phi i16 [ %262, %256 ], [ %310, %298 ], !dbg !3581
  %300 = phi i16 [ %261, %256 ], [ %308, %298 ], !dbg !3581
  %301 = phi i16 [ %260, %256 ], [ %305, %298 ], !dbg !3581
  %302 = phi i32 [ %254, %256 ], [ %329, %298 ]
  %303 = phi <8 x i16> [ %264, %256 ], [ %328, %298 ], !dbg !3581
  %304 = lshr i16 %301, 15, !dbg !3679
  %305 = shl i16 %301, 1, !dbg !3680
  %306 = lshr i16 %300, 15, !dbg !3679
  %307 = shl i16 %300, 1, !dbg !3680
  %308 = or i16 %307, %304, !dbg !3681
  %309 = shl i16 %299, 1, !dbg !3680
  %310 = or i16 %309, %306, !dbg !3681
  %311 = extractelement <8 x i16> %303, i32 1, !dbg !3679
  %312 = insertelement <8 x i16> undef, i16 %311, i32 0, !dbg !3679
  %313 = extractelement <8 x i16> %303, i32 2, !dbg !3679
  %314 = insertelement <8 x i16> %312, i16 %313, i32 1, !dbg !3679
  %315 = extractelement <8 x i16> %303, i32 3, !dbg !3679
  %316 = insertelement <8 x i16> %314, i16 %315, i32 2, !dbg !3679
  %317 = extractelement <8 x i16> %303, i32 4, !dbg !3679
  %318 = insertelement <8 x i16> %316, i16 %317, i32 3, !dbg !3679
  %319 = extractelement <8 x i16> %303, i32 5, !dbg !3679
  %320 = insertelement <8 x i16> %318, i16 %319, i32 4, !dbg !3679
  %321 = extractelement <8 x i16> %303, i32 6, !dbg !3679
  %322 = insertelement <8 x i16> %320, i16 %321, i32 5, !dbg !3679
  %323 = extractelement <8 x i16> %303, i32 7, !dbg !3679
  %324 = insertelement <8 x i16> %322, i16 %323, i32 6, !dbg !3679
  %325 = insertelement <8 x i16> %324, i16 %299, i32 7, !dbg !3679
  %326 = lshr <8 x i16> %325, <i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15, i16 15>, !dbg !3679
  %327 = shl <8 x i16> %303, <i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1, i16 1>, !dbg !3680
  %328 = or <8 x i16> %327, %326, !dbg !3681
  %329 = add nsw i32 %302, -1, !dbg !3682
  %330 = icmp sgt i32 %302, 1, !dbg !3661
  br i1 %330, label %298, label %336, !dbg !3662, !llvm.loop !3683

; <label>:331:                                    ; preds = %187
  store i16 %208, i16* %5, align 2, !dbg !3629, !tbaa !534
  store i16 %196, i16* %155, align 2, !dbg !3629, !tbaa !534
  %332 = bitcast i16* %156 to <8 x i16>*, !dbg !3629
  store <8 x i16> %201, <8 x i16>* %332, align 2, !dbg !3629, !tbaa !534
  store i16 %205, i16* %157, align 2, !dbg !3629, !tbaa !534
  br label %333, !dbg !3628

; <label>:333:                                    ; preds = %331, %150
  %334 = phi i16 [ %195, %331 ], [ %152, %150 ], !dbg !3685
  %335 = icmp eq i16 %334, 0, !dbg !3686
  br i1 %335, label %338, label %339, !dbg !3688

; <label>:336:                                    ; preds = %298
  store i16 %305, i16* %5, align 2, !dbg !3663, !tbaa !534
  store i16 %308, i16* %257, align 2, !dbg !3666, !tbaa !534
  store i16 %310, i16* %258, align 2, !dbg !3666, !tbaa !534
  %337 = bitcast i16* %259 to <8 x i16>*, !dbg !3666
  store <8 x i16> %328, <8 x i16>* %337, align 2, !dbg !3666, !tbaa !534
  br label %338, !dbg !3662

; <label>:338:                                    ; preds = %253, %336, %333
  br label %339, !dbg !3688

; <label>:339:                                    ; preds = %338, %333, %2
  %340 = phi i32 [ 0, %2 ], [ 0, %338 ], [ 1, %333 ], !dbg !3689
  ret i32 %340, !dbg !3690
}

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { nobuiltin noredzone nounwind }
attributes #7 = { nobuiltin noredzone }

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
!525 = !DILocalVariable(name: "x", arg: 1, scope: !526, file: !3, line: 545, type: !376)
!526 = distinct !DISubprogram(name: "eisnan", scope: !3, file: !3, line: 545, type: !519, isLocal: true, isDefinition: true, scopeLine: 546, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !527)
!527 = !{!525, !528}
!528 = !DILocalVariable(name: "i", scope: !526, file: !3, line: 549, type: !8)
!529 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !530)
!530 = distinct !DILocation(line: 513, column: 7, scope: !531, inlinedAt: !523)
!531 = distinct !DILexicalBlock(scope: !518, file: !3, line: 513, column: 7)
!532 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !530)
!533 = distinct !DILexicalBlock(scope: !526, file: !3, line: 551, column: 7)
!534 = !{!487, !487, i64 0}
!535 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !530)
!536 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !530)
!537 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !530)
!538 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !530)
!539 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !530)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 556, column: 11)
!541 = distinct !DILexicalBlock(scope: !542, file: !3, line: 555, column: 5)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 554, column: 3)
!543 = distinct !DILexicalBlock(scope: !526, file: !3, line: 554, column: 3)
!544 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !530)
!545 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !530)
!546 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !530)
!547 = !DILocation(line: 2819, column: 7, scope: !524)
!548 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !523)
!549 = !DILocation(line: 0, scope: !524)
!550 = !{!486, !486, i64 0}
!551 = !DILocation(line: 2824, column: 12, scope: !552)
!552 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2824, column: 7)
!553 = !DILocation(line: 2824, column: 7, scope: !56)
!554 = !DILocation(line: 2829, column: 12, scope: !555)
!555 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2829, column: 7)
!556 = !DILocation(line: 2829, column: 7, scope: !56)
!557 = !DILocation(line: 2834, column: 7, scope: !56)
!558 = !DILocation(line: 2787, column: 11, scope: !56)
!559 = !DILocation(line: 2971, column: 29, scope: !428, inlinedAt: !456)
!560 = !DILocation(line: 2971, column: 38, scope: !428, inlinedAt: !456)
!561 = !DILocation(line: 2971, column: 50, scope: !428, inlinedAt: !456)
!562 = !DILocation(line: 2971, column: 63, scope: !428, inlinedAt: !456)
!563 = !DILocation(line: 2972, column: 12, scope: !428, inlinedAt: !456)
!564 = !DILocation(line: 2975, column: 3, scope: !428, inlinedAt: !456)
!565 = !DILocation(line: 2981, column: 19, scope: !428, inlinedAt: !456)
!566 = !DILocation(line: 2978, column: 31, scope: !428, inlinedAt: !456)
!567 = !DILocation(line: 2984, column: 17, scope: !428, inlinedAt: !456)
!568 = !DILocation(line: 2978, column: 23, scope: !428, inlinedAt: !456)
!569 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !570)
!570 = distinct !DILocation(line: 2986, column: 7, scope: !571, inlinedAt: !456)
!571 = distinct !DILexicalBlock(scope: !428, file: !3, line: 2986, column: 7)
!572 = !DILocation(line: 0, scope: !428, inlinedAt: !456)
!573 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !570)
!574 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !584)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 480, column: 3)
!576 = distinct !DILexicalBlock(scope: !577, file: !3, line: 480, column: 3)
!577 = distinct !DISubprogram(name: "emov", scope: !3, file: !3, line: 476, type: !578, isLocal: true, isDefinition: true, scopeLine: 477, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !580)
!578 = !DISubroutineType(types: !579)
!579 = !{null, !376, !377}
!580 = !{!581, !582, !583}
!581 = !DILocalVariable(name: "a", arg: 1, scope: !577, file: !3, line: 476, type: !376)
!582 = !DILocalVariable(name: "b", arg: 2, scope: !577, file: !3, line: 476, type: !377)
!583 = !DILocalVariable(name: "i", scope: !577, file: !3, line: 478, type: !8)
!584 = distinct !DILocation(line: 2994, column: 3, scope: !428, inlinedAt: !456)
!585 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !570)
!586 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !570)
!587 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !570)
!588 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !570)
!589 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !570)
!590 = !DILocation(line: 2986, column: 7, scope: !428, inlinedAt: !456)
!591 = !DILocation(line: 2988, column: 7, scope: !592, inlinedAt: !456)
!592 = distinct !DILexicalBlock(scope: !571, file: !3, line: 2987, column: 5)
!593 = !DILocation(line: 2978, column: 16, scope: !428, inlinedAt: !456)
!594 = !DILocation(line: 2990, column: 7, scope: !592, inlinedAt: !456)
!595 = !DILocation(line: 2993, column: 15, scope: !428, inlinedAt: !456)
!596 = !DILocation(line: 2994, column: 12, scope: !428, inlinedAt: !456)
!597 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !584)
!598 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !584)
!599 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !584)
!600 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !584)
!601 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !584)
!602 = !DILocation(line: 2995, column: 7, scope: !428, inlinedAt: !456)
!603 = !DILocation(line: 2977, column: 18, scope: !428, inlinedAt: !456)
!604 = !DILocation(line: 2976, column: 34, scope: !428, inlinedAt: !456)
!605 = !DILocation(line: 3006, column: 15, scope: !428, inlinedAt: !456)
!606 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !607)
!607 = distinct !DILocation(line: 3006, column: 3, scope: !428, inlinedAt: !456)
!608 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !607)
!609 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !607)
!610 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !607)
!611 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !607)
!612 = !DILocation(line: 3008, column: 17, scope: !613, inlinedAt: !456)
!613 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3008, column: 7)
!614 = !DILocation(line: 3008, column: 7, scope: !428, inlinedAt: !456)
!615 = !DILocation(line: 2978, column: 13, scope: !428, inlinedAt: !456)
!616 = !DILocation(line: 3012, column: 8, scope: !617, inlinedAt: !456)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 3011, column: 2)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 3010, column: 7)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 3010, column: 7)
!620 = distinct !DILexicalBlock(scope: !613, file: !3, line: 3009, column: 5)
!621 = !DILocation(line: 3021, column: 7, scope: !428, inlinedAt: !456)
!622 = !DILocation(line: 3023, column: 11, scope: !623, inlinedAt: !456)
!623 = distinct !DILexicalBlock(scope: !624, file: !3, line: 3023, column: 11)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 3022, column: 5)
!625 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3021, column: 7)
!626 = !DILocation(line: 3023, column: 11, scope: !624, inlinedAt: !456)
!627 = !DILocation(line: 3024, column: 2, scope: !623, inlinedAt: !456)
!628 = !DILocation(line: 3026, column: 2, scope: !623, inlinedAt: !456)
!629 = !DILocation(line: 3034, column: 49, scope: !630, inlinedAt: !456)
!630 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3034, column: 7)
!631 = !DILocation(line: 3034, column: 7, scope: !428, inlinedAt: !456)
!632 = !DILocation(line: 3037, column: 7, scope: !633, inlinedAt: !456)
!633 = distinct !DILexicalBlock(scope: !630, file: !3, line: 3035, column: 5)
!634 = !DILocation(line: 3039, column: 7, scope: !633, inlinedAt: !456)
!635 = !DILocation(line: 3043, column: 7, scope: !428, inlinedAt: !456)
!636 = !DILocation(line: 2978, column: 7, scope: !428, inlinedAt: !456)
!637 = !DILocation(line: 3044, column: 9, scope: !638, inlinedAt: !456)
!638 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3044, column: 7)
!639 = !DILocation(line: 3044, column: 7, scope: !428, inlinedAt: !456)
!640 = !DILocation(line: 3047, column: 9, scope: !427, inlinedAt: !456)
!641 = !DILocation(line: 3047, column: 7, scope: !428, inlinedAt: !456)
!642 = !DILocation(line: 3050, column: 16, scope: !426, inlinedAt: !456)
!643 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !644)
!644 = distinct !DILocation(line: 3050, column: 7, scope: !426, inlinedAt: !456)
!645 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !644)
!646 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !644)
!647 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !644)
!648 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !644)
!649 = !DILocation(line: 3051, column: 17, scope: !426, inlinedAt: !456)
!650 = !DILocation(line: 2976, column: 26, scope: !428, inlinedAt: !456)
!651 = !DILocation(line: 2980, column: 18, scope: !428, inlinedAt: !456)
!652 = !DILocation(line: 3055, column: 7, scope: !426, inlinedAt: !456)
!653 = !DILocation(line: 3004, column: 9, scope: !428, inlinedAt: !456)
!654 = !DILocation(line: 0, scope: !425, inlinedAt: !456)
!655 = !DILocation(line: 3057, column: 4, scope: !425, inlinedAt: !456)
!656 = !DILocation(line: 3678, column: 29, scope: !411, inlinedAt: !424)
!657 = !DILocation(line: 3678, column: 52, scope: !411, inlinedAt: !424)
!658 = !DILocation(line: 3678, column: 65, scope: !411, inlinedAt: !424)
!659 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !660)
!660 = distinct !DILocation(line: 3684, column: 3, scope: !411, inlinedAt: !424)
!661 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !660)
!662 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !660)
!663 = !DILocation(line: 3682, column: 18, scope: !411, inlinedAt: !424)
!664 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !660)
!665 = !DILocation(line: 3686, column: 14, scope: !411, inlinedAt: !424)
!666 = !DILocation(line: 3687, column: 9, scope: !667, inlinedAt: !424)
!667 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3687, column: 7)
!668 = !DILocation(line: 3687, column: 7, scope: !411, inlinedAt: !424)
!669 = !DILocalVariable(name: "x", arg: 1, scope: !670, file: !3, line: 460, type: !377)
!670 = distinct !DISubprogram(name: "eclear", scope: !3, file: !3, line: 460, type: !671, isLocal: true, isDefinition: true, scopeLine: 461, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !673)
!671 = !DISubroutineType(types: !672)
!672 = !{null, !377}
!673 = !{!669, !674}
!674 = !DILocalVariable(name: "i", scope: !670, file: !3, line: 462, type: !8)
!675 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !676)
!676 = distinct !DILocation(line: 3689, column: 7, scope: !677, inlinedAt: !424)
!677 = distinct !DILexicalBlock(scope: !667, file: !3, line: 3688, column: 5)
!678 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !676)
!679 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !676)
!680 = distinct !DILexicalBlock(scope: !681, file: !3, line: 464, column: 3)
!681 = distinct !DILexicalBlock(scope: !670, file: !3, line: 464, column: 3)
!682 = !DILocation(line: 3690, column: 7, scope: !677, inlinedAt: !424)
!683 = !DILocation(line: 3681, column: 7, scope: !411, inlinedAt: !424)
!684 = !DILocation(line: 3693, column: 13, scope: !411, inlinedAt: !424)
!685 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !686)
!686 = distinct !DILocation(line: 3694, column: 3, scope: !411, inlinedAt: !424)
!687 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !686)
!688 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !686)
!689 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !686)
!690 = !DILocation(line: 3695, column: 9, scope: !691, inlinedAt: !424)
!691 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3695, column: 7)
!692 = !DILocation(line: 3695, column: 7, scope: !411, inlinedAt: !424)
!693 = !DILocation(line: 3680, column: 28, scope: !411, inlinedAt: !424)
!694 = !DILocation(line: 3699, column: 12, scope: !411, inlinedAt: !424)
!695 = !DILocation(line: 3699, column: 3, scope: !411, inlinedAt: !424)
!696 = !DILocation(line: 3701, column: 9, scope: !697, inlinedAt: !424)
!697 = distinct !DILexicalBlock(scope: !411, file: !3, line: 3700, column: 5)
!698 = !DILocation(line: 3701, column: 12, scope: !697, inlinedAt: !424)
!699 = distinct !{!699, !700, !701, !702}
!700 = !DILocation(line: 3699, column: 3, scope: !411)
!701 = !DILocation(line: 3703, column: 5, scope: !411)
!702 = !{!"llvm.loop.isvectorized", i32 1}
!703 = !DILocation(line: 3702, column: 9, scope: !697, inlinedAt: !424)
!704 = distinct !{!704, !700, !701, !705, !702}
!705 = !{!"llvm.loop.unroll.runtime.disable"}
!706 = !DILocation(line: 3705, column: 6, scope: !411, inlinedAt: !424)
!707 = !DILocation(line: 3705, column: 9, scope: !411, inlinedAt: !424)
!708 = !DILocation(line: 0, scope: !697, inlinedAt: !424)
!709 = !DILocation(line: 0, scope: !710, inlinedAt: !456)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 3061, column: 12)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 3060, column: 6)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 3059, column: 4)
!713 = distinct !DILexicalBlock(scope: !425, file: !3, line: 3059, column: 4)
!714 = !DILocation(line: 3705, column: 3, scope: !411, inlinedAt: !424)
!715 = !DILocation(line: 3709, column: 30, scope: !410, inlinedAt: !424)
!716 = !DILocation(line: 3709, column: 7, scope: !411, inlinedAt: !424)
!717 = !DILocation(line: 3681, column: 17, scope: !411, inlinedAt: !424)
!718 = !DILocation(line: 3713, column: 13, scope: !405, inlinedAt: !424)
!719 = !DILocation(line: 3713, column: 16, scope: !405, inlinedAt: !424)
!720 = !DILocation(line: 3713, column: 8, scope: !406, inlinedAt: !424)
!721 = !DILocation(line: 1424, column: 64, scope: !395, inlinedAt: !403)
!722 = !DILocation(line: 1425, column: 27, scope: !395, inlinedAt: !403)
!723 = !DILocation(line: 1425, column: 40, scope: !395, inlinedAt: !403)
!724 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !725)
!725 = distinct !DILocation(line: 1429, column: 7, scope: !726, inlinedAt: !403)
!726 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1429, column: 7)
!727 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !728)
!728 = distinct !DILocation(line: 1434, column: 7, scope: !729, inlinedAt: !403)
!729 = distinct !DILexicalBlock(scope: !395, file: !3, line: 1434, column: 7)
!730 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !728)
!731 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !728)
!732 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !728)
!733 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !728)
!734 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !728)
!735 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !728)
!736 = !DILocation(line: 1455, column: 65, scope: !373, inlinedAt: !394)
!737 = !DILocation(line: 1456, column: 28, scope: !373, inlinedAt: !394)
!738 = !DILocation(line: 1456, column: 35, scope: !373, inlinedAt: !394)
!739 = !DILocation(line: 1456, column: 53, scope: !373, inlinedAt: !394)
!740 = !DILocation(line: 1458, column: 3, scope: !373, inlinedAt: !394)
!741 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !742)
!742 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !749)
!743 = distinct !DILexicalBlock(scope: !744, file: !3, line: 533, column: 11)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 531, column: 5)
!745 = distinct !DILexicalBlock(scope: !746, file: !3, line: 530, column: 7)
!746 = distinct !DISubprogram(name: "eisinf", scope: !3, file: !3, line: 527, type: !519, isLocal: true, isDefinition: true, scopeLine: 528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !747)
!747 = !{!748}
!748 = !DILocalVariable(name: "x", arg: 1, scope: !746, file: !3, line: 527, type: !376)
!749 = distinct !DILocation(line: 1470, column: 7, scope: !750, inlinedAt: !394)
!750 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1470, column: 7)
!751 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !742)
!752 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !753)
!753 = distinct !DILocation(line: 1472, column: 7, scope: !754, inlinedAt: !394)
!754 = distinct !DILexicalBlock(scope: !750, file: !3, line: 1471, column: 5)
!755 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !753)
!756 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !753)
!757 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !753)
!758 = !DILocation(line: 1473, column: 7, scope: !754, inlinedAt: !394)
!759 = !DILocalVariable(name: "a", arg: 1, scope: !760, file: !3, line: 615, type: !376)
!760 = distinct !DISubprogram(name: "emovi", scope: !3, file: !3, line: 615, type: !578, isLocal: true, isDefinition: true, scopeLine: 616, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !761)
!761 = !{!759, !762, !763, !764, !765}
!762 = !DILocalVariable(name: "b", arg: 2, scope: !760, file: !3, line: 615, type: !377)
!763 = !DILocalVariable(name: "p", scope: !760, file: !3, line: 617, type: !376)
!764 = !DILocalVariable(name: "q", scope: !760, file: !3, line: 618, type: !377)
!765 = !DILocalVariable(name: "i", scope: !760, file: !3, line: 619, type: !8)
!766 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !767)
!767 = distinct !DILocation(line: 1476, column: 3, scope: !373, inlinedAt: !394)
!768 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !767)
!769 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !767)
!770 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !767)
!771 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !767)
!772 = distinct !DILexicalBlock(scope: !773, file: !3, line: 651, column: 3)
!773 = distinct !DILexicalBlock(scope: !760, file: !3, line: 651, column: 3)
!774 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !767)
!775 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !767)
!776 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !777)
!777 = distinct !DILocation(line: 1477, column: 3, scope: !373, inlinedAt: !394)
!778 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !777)
!779 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !777)
!780 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !777)
!781 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !777)
!782 = distinct !DILexicalBlock(scope: !760, file: !3, line: 624, column: 7)
!783 = !DILocation(line: 0, scope: !782, inlinedAt: !777)
!784 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !777)
!785 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !777)
!786 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !777)
!787 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !777)
!788 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !777)
!789 = !DILocation(line: 1479, column: 11, scope: !790, inlinedAt: !394)
!790 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1478, column: 7)
!791 = !DILocation(line: 1460, column: 12, scope: !373, inlinedAt: !394)
!792 = !DILocation(line: 1483, column: 9, scope: !373, inlinedAt: !394)
!793 = !DILocation(line: 1460, column: 17, scope: !373, inlinedAt: !394)
!794 = !DILocation(line: 1484, column: 12, scope: !373, inlinedAt: !394)
!795 = !DILocation(line: 1460, column: 8, scope: !373, inlinedAt: !394)
!796 = !DILocation(line: 1485, column: 10, scope: !797, inlinedAt: !394)
!797 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1485, column: 7)
!798 = !DILocation(line: 1485, column: 7, scope: !373, inlinedAt: !394)
!799 = !DILocalVariable(name: "a", arg: 1, scope: !800, file: !3, line: 727, type: !377)
!800 = distinct !DISubprogram(name: "emovz", scope: !3, file: !3, line: 727, type: !801, isLocal: true, isDefinition: true, scopeLine: 728, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !803)
!801 = !DISubroutineType(types: !802)
!802 = !{null, !377, !377}
!803 = !{!799, !804, !805}
!804 = !DILocalVariable(name: "b", arg: 2, scope: !800, file: !3, line: 727, type: !377)
!805 = !DILocalVariable(name: "i", scope: !800, file: !3, line: 729, type: !8)
!806 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !807)
!807 = distinct !DILocation(line: 1487, column: 7, scope: !808, inlinedAt: !394)
!808 = distinct !DILexicalBlock(scope: !797, file: !3, line: 1486, column: 5)
!809 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !807)
!810 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !807)
!811 = !DILocation(line: 1458, column: 34, scope: !373, inlinedAt: !394)
!812 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !813)
!813 = distinct !DILocation(line: 1488, column: 7, scope: !808, inlinedAt: !394)
!814 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !813)
!815 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !813)
!816 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !813)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 731, column: 3)
!818 = distinct !DILexicalBlock(scope: !800, file: !3, line: 731, column: 3)
!819 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !813)
!820 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !821)
!821 = distinct !DILocation(line: 1489, column: 7, scope: !808, inlinedAt: !394)
!822 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !821)
!823 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !821)
!824 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !821)
!825 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !821)
!826 = !DILocation(line: 1491, column: 12, scope: !808, inlinedAt: !394)
!827 = !DILocation(line: 1492, column: 5, scope: !808, inlinedAt: !394)
!828 = !DILocation(line: 0, scope: !373, inlinedAt: !394)
!829 = !DILocation(line: 1459, column: 10, scope: !373, inlinedAt: !394)
!830 = !DILocation(line: 1494, column: 10, scope: !831, inlinedAt: !394)
!831 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1494, column: 7)
!832 = !DILocation(line: 1494, column: 7, scope: !373, inlinedAt: !394)
!833 = !DILocation(line: 1496, column: 14, scope: !834, inlinedAt: !394)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1496, column: 11)
!835 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1495, column: 5)
!836 = !DILocation(line: 1496, column: 11, scope: !835, inlinedAt: !394)
!837 = !DILocalVariable(name: "a", arg: 1, scope: !838, file: !3, line: 662, type: !377)
!838 = distinct !DISubprogram(name: "emovo", scope: !3, file: !3, line: 662, type: !412, isLocal: true, isDefinition: true, scopeLine: 663, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !839)
!839 = !{!837, !840, !841, !842, !843, !844}
!840 = !DILocalVariable(name: "b", arg: 2, scope: !838, file: !3, line: 662, type: !377)
!841 = !DILocalVariable(name: "ldp", arg: 3, scope: !838, file: !3, line: 662, type: !361)
!842 = !DILocalVariable(name: "p", scope: !838, file: !3, line: 664, type: !377)
!843 = !DILocalVariable(name: "q", scope: !838, file: !3, line: 664, type: !377)
!844 = !DILocalVariable(name: "i", scope: !838, file: !3, line: 665, type: !11)
!845 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !846)
!846 = distinct !DILocation(line: 1553, column: 3, scope: !373, inlinedAt: !394)
!847 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !846)
!848 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !846)
!849 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !846)
!850 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !846)
!851 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !846)
!852 = !DILocation(line: 671, column: 7, scope: !853, inlinedAt: !846)
!853 = distinct !DILexicalBlock(scope: !838, file: !3, line: 671, column: 7)
!854 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !846)
!855 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !846)
!856 = !DILocation(line: 0, scope: !853, inlinedAt: !846)
!857 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !846)
!858 = !DILocation(line: 1498, column: 11, scope: !835, inlinedAt: !394)
!859 = !DILocation(line: 1459, column: 19, scope: !373, inlinedAt: !394)
!860 = !DILocation(line: 1499, column: 14, scope: !835, inlinedAt: !394)
!861 = !DILocation(line: 1540, column: 7, scope: !862, inlinedAt: !394)
!862 = distinct !DILexicalBlock(scope: !373, file: !3, line: 1540, column: 7)
!863 = !DILocation(line: 1540, column: 16, scope: !862, inlinedAt: !394)
!864 = !DILocation(line: 1500, column: 5, scope: !835, inlinedAt: !394)
!865 = !DILocalVariable(name: "a", arg: 1, scope: !866, file: !3, line: 786, type: !377)
!866 = distinct !DISubprogram(name: "ecmpm", scope: !3, file: !3, line: 786, type: !867, isLocal: true, isDefinition: true, scopeLine: 787, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !869)
!867 = !DISubroutineType(types: !868)
!868 = !{!8, !377, !377}
!869 = !{!865, !870, !871}
!870 = !DILocalVariable(name: "b", arg: 2, scope: !866, file: !3, line: 786, type: !377)
!871 = !DILocalVariable(name: "i", scope: !866, file: !3, line: 788, type: !8)
!872 = !DILocation(line: 786, column: 37, scope: !866, inlinedAt: !873)
!873 = distinct !DILocation(line: 1504, column: 11, scope: !874, inlinedAt: !394)
!874 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1502, column: 5)
!875 = !DILocation(line: 786, column: 69, scope: !866, inlinedAt: !873)
!876 = !DILocation(line: 788, column: 7, scope: !866, inlinedAt: !873)
!877 = !DILocation(line: 794, column: 16, scope: !878, inlinedAt: !873)
!878 = distinct !DILexicalBlock(scope: !879, file: !3, line: 794, column: 11)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 793, column: 5)
!880 = distinct !DILexicalBlock(scope: !881, file: !3, line: 792, column: 3)
!881 = distinct !DILexicalBlock(scope: !866, file: !3, line: 792, column: 3)
!882 = !DILocation(line: 794, column: 11, scope: !879, inlinedAt: !873)
!883 = !DILocation(line: 1508, column: 14, scope: !884, inlinedAt: !394)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1508, column: 8)
!885 = distinct !DILexicalBlock(scope: !886, file: !3, line: 1506, column: 2)
!886 = distinct !DILexicalBlock(scope: !874, file: !3, line: 1505, column: 11)
!887 = !DILocation(line: 1508, column: 8, scope: !885, inlinedAt: !394)
!888 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !889)
!889 = distinct !DILocation(line: 1510, column: 8, scope: !890, inlinedAt: !394)
!890 = distinct !DILexicalBlock(scope: !884, file: !3, line: 1509, column: 6)
!891 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !889)
!892 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !889)
!893 = !DILocation(line: 1511, column: 8, scope: !890, inlinedAt: !394)
!894 = !DILocation(line: 1515, column: 15, scope: !895, inlinedAt: !394)
!895 = distinct !DILexicalBlock(scope: !885, file: !3, line: 1515, column: 8)
!896 = !DILocation(line: 1515, column: 42, scope: !895, inlinedAt: !394)
!897 = !DILocation(line: 1515, column: 21, scope: !895, inlinedAt: !394)
!898 = !DILocalVariable(name: "x", arg: 1, scope: !899, file: !3, line: 839, type: !377)
!899 = distinct !DISubprogram(name: "eshup1", scope: !3, file: !3, line: 839, type: !671, isLocal: true, isDefinition: true, scopeLine: 840, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !900)
!900 = !{!898, !901, !902}
!901 = !DILocalVariable(name: "bits", scope: !899, file: !3, line: 841, type: !11)
!902 = !DILocalVariable(name: "i", scope: !899, file: !3, line: 842, type: !8)
!903 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !904)
!904 = distinct !DILocation(line: 1517, column: 8, scope: !905, inlinedAt: !394)
!905 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1516, column: 6)
!906 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !904)
!907 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !904)
!908 = !DILocation(line: 0, scope: !909, inlinedAt: !904)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 848, column: 5)
!910 = distinct !DILexicalBlock(scope: !911, file: !3, line: 847, column: 3)
!911 = distinct !DILexicalBlock(scope: !899, file: !3, line: 847, column: 3)
!912 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !904)
!913 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !904)
!914 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !904)
!915 = !DILocation(line: 1530, column: 12, scope: !885, inlinedAt: !394)
!916 = !DILocation(line: 1530, column: 10, scope: !885, inlinedAt: !394)
!917 = !DILocation(line: 1531, column: 4, scope: !885, inlinedAt: !394)
!918 = !DILocation(line: 794, column: 11, scope: !878, inlinedAt: !873)
!919 = !DILocation(line: 794, column: 19, scope: !878, inlinedAt: !873)
!920 = !DILocation(line: 800, column: 14, scope: !921, inlinedAt: !873)
!921 = distinct !DILexicalBlock(scope: !866, file: !3, line: 800, column: 7)
!922 = !DILocation(line: 1533, column: 11, scope: !874, inlinedAt: !394)
!923 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !924)
!924 = distinct !DILocation(line: 1535, column: 4, scope: !925, inlinedAt: !394)
!925 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1534, column: 2)
!926 = distinct !DILexicalBlock(scope: !874, file: !3, line: 1533, column: 11)
!927 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !924)
!928 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !924)
!929 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !930)
!930 = distinct !DILocation(line: 1536, column: 4, scope: !925, inlinedAt: !394)
!931 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !930)
!932 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !930)
!933 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !930)
!934 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !930)
!935 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !936)
!936 = distinct !DILocation(line: 1537, column: 4, scope: !925, inlinedAt: !394)
!937 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !936)
!938 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !936)
!939 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !936)
!940 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !936)
!941 = !DILocation(line: 1538, column: 2, scope: !925, inlinedAt: !394)
!942 = !DILocation(line: 1540, column: 13, scope: !862, inlinedAt: !394)
!943 = !DILocation(line: 1540, column: 7, scope: !373, inlinedAt: !394)
!944 = !DILocalVariable(name: "x", arg: 1, scope: !945, file: !3, line: 950, type: !377)
!945 = distinct !DISubprogram(name: "eaddm", scope: !3, file: !3, line: 950, type: !801, isLocal: true, isDefinition: true, scopeLine: 951, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !946)
!946 = !{!944, !947, !948, !949, !950}
!947 = !DILocalVariable(name: "y", arg: 2, scope: !945, file: !3, line: 950, type: !377)
!948 = !DILocalVariable(name: "a", scope: !945, file: !3, line: 952, type: !10)
!949 = !DILocalVariable(name: "i", scope: !945, file: !3, line: 953, type: !8)
!950 = !DILocalVariable(name: "carry", scope: !945, file: !3, line: 954, type: !9)
!951 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !952)
!952 = distinct !DILocation(line: 1542, column: 7, scope: !953, inlinedAt: !394)
!953 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1541, column: 5)
!954 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !952)
!955 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !952)
!956 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !952)
!957 = !DILocation(line: 961, column: 28, scope: !958, inlinedAt: !952)
!958 = distinct !DILexicalBlock(scope: !959, file: !3, line: 960, column: 5)
!959 = distinct !DILexicalBlock(scope: !960, file: !3, line: 959, column: 3)
!960 = distinct !DILexicalBlock(scope: !945, file: !3, line: 959, column: 3)
!961 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !952)
!962 = !DILocation(line: 961, column: 51, scope: !958, inlinedAt: !952)
!963 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !952)
!964 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !952)
!965 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !952)
!966 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !952)
!967 = !DILocation(line: 966, column: 10, scope: !958, inlinedAt: !952)
!968 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !952)
!969 = !DILocation(line: 1544, column: 5, scope: !953, inlinedAt: !394)
!970 = !DILocalVariable(name: "x", arg: 1, scope: !971, file: !3, line: 978, type: !377)
!971 = distinct !DISubprogram(name: "esubm", scope: !3, file: !3, line: 978, type: !801, isLocal: true, isDefinition: true, scopeLine: 979, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !972)
!972 = !{!970, !973, !974, !975, !976}
!973 = !DILocalVariable(name: "y", arg: 2, scope: !971, file: !3, line: 978, type: !377)
!974 = !DILocalVariable(name: "a", scope: !971, file: !3, line: 980, type: !10)
!975 = !DILocalVariable(name: "i", scope: !971, file: !3, line: 981, type: !8)
!976 = !DILocalVariable(name: "carry", scope: !971, file: !3, line: 982, type: !9)
!977 = !DILocation(line: 978, column: 28, scope: !971, inlinedAt: !978)
!978 = distinct !DILocation(line: 1547, column: 7, scope: !979, inlinedAt: !394)
!979 = distinct !DILexicalBlock(scope: !862, file: !3, line: 1546, column: 5)
!980 = !DILocation(line: 978, column: 51, scope: !971, inlinedAt: !978)
!981 = !DILocation(line: 982, column: 16, scope: !971, inlinedAt: !978)
!982 = !DILocation(line: 981, column: 7, scope: !971, inlinedAt: !978)
!983 = !DILocation(line: 989, column: 28, scope: !984, inlinedAt: !978)
!984 = distinct !DILexicalBlock(scope: !985, file: !3, line: 988, column: 5)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 987, column: 3)
!986 = distinct !DILexicalBlock(scope: !971, file: !3, line: 987, column: 3)
!987 = !DILocation(line: 989, column: 11, scope: !984, inlinedAt: !978)
!988 = !DILocation(line: 989, column: 51, scope: !984, inlinedAt: !978)
!989 = !DILocation(line: 989, column: 34, scope: !984, inlinedAt: !978)
!990 = !DILocation(line: 989, column: 32, scope: !984, inlinedAt: !978)
!991 = !DILocation(line: 980, column: 17, scope: !971, inlinedAt: !978)
!992 = !DILocation(line: 994, column: 12, scope: !984, inlinedAt: !978)
!993 = !DILocation(line: 994, column: 10, scope: !984, inlinedAt: !978)
!994 = !DILocation(line: 989, column: 55, scope: !984, inlinedAt: !978)
!995 = !DILocation(line: 0, scope: !979, inlinedAt: !394)
!996 = !DILocation(line: 1550, column: 3, scope: !373, inlinedAt: !394)
!997 = !DILocation(line: 670, column: 7, scope: !838, inlinedAt: !846)
!998 = !DILocation(line: 676, column: 16, scope: !999, inlinedAt: !846)
!999 = distinct !DILexicalBlock(scope: !838, file: !3, line: 676, column: 7)
!1000 = !DILocation(line: 693, column: 12, scope: !1001, inlinedAt: !846)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 692, column: 3)
!1002 = distinct !DILexicalBlock(scope: !838, file: !3, line: 692, column: 3)
!1003 = !DILocalVariable(name: "x", arg: 1, scope: !1004, file: !3, line: 741, type: !377)
!1004 = distinct !DISubprogram(name: "eiisnan", scope: !3, file: !3, line: 741, type: !1005, isLocal: true, isDefinition: true, scopeLine: 742, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1007)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!8, !377}
!1007 = !{!1003, !1008}
!1008 = !DILocalVariable(name: "i", scope: !1004, file: !3, line: 743, type: !8)
!1009 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !1010)
!1010 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !846)
!1011 = distinct !DILexicalBlock(scope: !1012, file: !3, line: 679, column: 11)
!1012 = distinct !DILexicalBlock(scope: !999, file: !3, line: 677, column: 5)
!1013 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !1010)
!1014 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !1010)
!1015 = distinct !DILexicalBlock(scope: !1016, file: !3, line: 748, column: 2)
!1016 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 747, column: 7)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 747, column: 7)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 746, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 745, column: 7)
!1020 = !DILocation(line: 749, column: 8, scope: !1021, inlinedAt: !1010)
!1021 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 749, column: 8)
!1022 = !DILocalVariable(name: "nan", arg: 1, scope: !1023, file: !3, line: 3805, type: !377)
!1023 = distinct !DISubprogram(name: "enan", scope: !3, file: !3, line: 3805, type: !1024, isLocal: true, isDefinition: true, scopeLine: 3806, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1026)
!1024 = !DISubroutineType(types: !1025)
!1025 = !{null, !377, !8}
!1026 = !{!1022, !1027, !1028, !1029, !1030}
!1027 = !DILocalVariable(name: "size", arg: 2, scope: !1023, file: !3, line: 3805, type: !8)
!1028 = !DILocalVariable(name: "i", scope: !1023, file: !3, line: 3807, type: !8)
!1029 = !DILocalVariable(name: "n", scope: !1023, file: !3, line: 3807, type: !8)
!1030 = !DILocalVariable(name: "p", scope: !1023, file: !3, line: 3808, type: !376)
!1031 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !1032)
!1032 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !846)
!1033 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 680, column: 2)
!1034 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !1032)
!1035 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !1032)
!1036 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !1032)
!1037 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 3811, column: 5)
!1038 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !1032)
!1039 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !846)
!1040 = !DILocalVariable(name: "x", arg: 1, scope: !1041, file: !3, line: 573, type: !377)
!1041 = distinct !DISubprogram(name: "einfin", scope: !3, file: !3, line: 573, type: !1042, isLocal: true, isDefinition: true, scopeLine: 574, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1044)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{null, !377, !361}
!1044 = !{!1040, !1045, !1046}
!1045 = !DILocalVariable(name: "ldp", arg: 2, scope: !1041, file: !3, line: 573, type: !361)
!1046 = !DILocalVariable(name: "i", scope: !1041, file: !3, line: 575, type: !8)
!1047 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !1048)
!1048 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !846)
!1049 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !1048)
!1050 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !1048)
!1051 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !1048)
!1052 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 578, column: 3)
!1053 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 578, column: 3)
!1054 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !1048)
!1055 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !846)
!1056 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !846)
!1057 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !846)
!1058 = !DILocation(line: 1554, column: 1, scope: !373, inlinedAt: !394)
!1059 = !DILocation(line: 3061, column: 12, scope: !710, inlinedAt: !456)
!1060 = !DILocation(line: 1450, column: 1, scope: !395, inlinedAt: !403)
!1061 = !DILocation(line: 3061, column: 20, scope: !710, inlinedAt: !456)
!1062 = !DILocation(line: 2978, column: 10, scope: !428, inlinedAt: !456)
!1063 = !DILocation(line: 3061, column: 17, scope: !710, inlinedAt: !456)
!1064 = !DILocation(line: 3061, column: 12, scope: !711, inlinedAt: !456)
!1065 = !DILocation(line: 3067, column: 6, scope: !425, inlinedAt: !456)
!1066 = !DILocation(line: 3068, column: 6, scope: !425, inlinedAt: !456)
!1067 = !DILocation(line: 3070, column: 16, scope: !426, inlinedAt: !456)
!1068 = !DILocation(line: 3069, column: 2, scope: !425, inlinedAt: !456)
!1069 = distinct !{!1069, !1070, !1071}
!1070 = !DILocation(line: 3055, column: 7, scope: !426)
!1071 = !DILocation(line: 3070, column: 20, scope: !426)
!1072 = !DILocation(line: 3073, column: 20, scope: !426, inlinedAt: !456)
!1073 = !DILocation(line: 3073, column: 30, scope: !426, inlinedAt: !456)
!1074 = !DILocation(line: 3073, column: 17, scope: !426, inlinedAt: !456)
!1075 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !1076)
!1076 = distinct !DILocation(line: 3074, column: 7, scope: !426, inlinedAt: !456)
!1077 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !1076)
!1078 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !1076)
!1079 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !1076)
!1080 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !1076)
!1081 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 3076, column: 7, scope: !426, inlinedAt: !456)
!1083 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !1082)
!1084 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !1082)
!1085 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !1082)
!1086 = !DILocation(line: 3079, column: 14, scope: !426, inlinedAt: !456)
!1087 = !DILocation(line: 3079, column: 28, scope: !426, inlinedAt: !456)
!1088 = !DILocation(line: 3079, column: 7, scope: !426, inlinedAt: !456)
!1089 = !DILocation(line: 3090, column: 6, scope: !1090, inlinedAt: !456)
!1090 = distinct !DILexicalBlock(scope: !426, file: !3, line: 3080, column: 2)
!1091 = distinct !{!1091, !1092, !1093}
!1092 = !DILocation(line: 3079, column: 7, scope: !426)
!1093 = !DILocation(line: 3091, column: 2, scope: !426)
!1094 = !DILocation(line: 3081, column: 8, scope: !1095, inlinedAt: !456)
!1095 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 3081, column: 8)
!1096 = !DILocation(line: 3081, column: 20, scope: !1095, inlinedAt: !456)
!1097 = !DILocation(line: 3081, column: 8, scope: !1090, inlinedAt: !456)
!1098 = !DILocation(line: 3083, column: 8, scope: !1099, inlinedAt: !456)
!1099 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 3082, column: 6)
!1100 = !DILocation(line: 3084, column: 8, scope: !1099, inlinedAt: !456)
!1101 = !DILocation(line: 3085, column: 17, scope: !1099, inlinedAt: !456)
!1102 = !DILocation(line: 3085, column: 14, scope: !1099, inlinedAt: !456)
!1103 = !DILocation(line: 3086, column: 6, scope: !1099, inlinedAt: !456)
!1104 = !DILocation(line: 3087, column: 6, scope: !1090, inlinedAt: !456)
!1105 = !DILocation(line: 3088, column: 10, scope: !1106, inlinedAt: !456)
!1106 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 3088, column: 8)
!1107 = !DILocation(line: 3088, column: 8, scope: !1090, inlinedAt: !456)
!1108 = !DILocation(line: 3096, column: 11, scope: !1109, inlinedAt: !456)
!1109 = distinct !DILexicalBlock(scope: !427, file: !3, line: 3094, column: 5)
!1110 = !DILocation(line: 3098, column: 32, scope: !1111, inlinedAt: !456)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 3097, column: 2)
!1112 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 3096, column: 11)
!1113 = !DILocation(line: 3098, column: 4, scope: !1111, inlinedAt: !456)
!1114 = !DILocation(line: 3100, column: 8, scope: !1115, inlinedAt: !456)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 3099, column: 6)
!1116 = !DILocation(line: 3101, column: 14, scope: !1115, inlinedAt: !456)
!1117 = !DILocation(line: 3098, column: 12, scope: !1111, inlinedAt: !456)
!1118 = distinct !{!1118, !1119, !1120}
!1119 = !DILocation(line: 3098, column: 4, scope: !1111)
!1120 = !DILocation(line: 3102, column: 6, scope: !1111)
!1121 = !DILocation(line: 3106, column: 14, scope: !1122, inlinedAt: !456)
!1122 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 3105, column: 2)
!1123 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !1124)
!1124 = distinct !DILocation(line: 3106, column: 4, scope: !1122, inlinedAt: !456)
!1125 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !1124)
!1126 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !1124)
!1127 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !1124)
!1128 = !DILocation(line: 0, scope: !782, inlinedAt: !1124)
!1129 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !1124)
!1130 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !1124)
!1131 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !1124)
!1132 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !1124)
!1133 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !1124)
!1134 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !1124)
!1135 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !1124)
!1136 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !1124)
!1137 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !1124)
!1138 = !DILocation(line: 3107, column: 4, scope: !1139, inlinedAt: !456)
!1139 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 3107, column: 4)
!1140 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1141)
!1141 = distinct !DILocation(line: 3112, column: 8, scope: !1142, inlinedAt: !456)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 3108, column: 6)
!1143 = distinct !DILexicalBlock(scope: !1139, file: !3, line: 3107, column: 4)
!1144 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1141)
!1145 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1141)
!1146 = !DILocalVariable(name: "x", arg: 1, scope: !1147, file: !3, line: 812, type: !377)
!1147 = distinct !DISubprogram(name: "eshdn1", scope: !3, file: !3, line: 812, type: !671, isLocal: true, isDefinition: true, scopeLine: 813, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1148)
!1148 = !{!1146, !1149, !1150}
!1149 = !DILocalVariable(name: "bits", scope: !1147, file: !3, line: 814, type: !11)
!1150 = !DILocalVariable(name: "i", scope: !1147, file: !3, line: 815, type: !8)
!1151 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !1152)
!1152 = distinct !DILocation(line: 3113, column: 8, scope: !1142, inlinedAt: !456)
!1153 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !1152)
!1154 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !1152)
!1155 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !1152)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 821, column: 5)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 820, column: 3)
!1158 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 820, column: 3)
!1159 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !1152)
!1160 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !1161)
!1161 = distinct !DILocation(line: 3114, column: 8, scope: !1142, inlinedAt: !456)
!1162 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !1161)
!1163 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !1161)
!1164 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !1161)
!1165 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !1161)
!1166 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !1161)
!1167 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !1168)
!1168 = distinct !DILocation(line: 3115, column: 8, scope: !1142, inlinedAt: !456)
!1169 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !1168)
!1170 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !1168)
!1171 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !1168)
!1172 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !1168)
!1173 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !1168)
!1174 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !1168)
!1175 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !1168)
!1176 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !1168)
!1177 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !1168)
!1178 = !DILocation(line: 3116, column: 13, scope: !1142, inlinedAt: !456)
!1179 = !DILocation(line: 3117, column: 20, scope: !1142, inlinedAt: !456)
!1180 = !DILocation(line: 3117, column: 8, scope: !1142, inlinedAt: !456)
!1181 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 3119, column: 5, scope: !1183, inlinedAt: !456)
!1183 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 3118, column: 3)
!1184 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !1182)
!1185 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !1182)
!1186 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !1182)
!1187 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !1182)
!1188 = !DILocation(line: 3122, column: 22, scope: !1189, inlinedAt: !456)
!1189 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 3122, column: 12)
!1190 = !DILocation(line: 3124, column: 25, scope: !1191, inlinedAt: !456)
!1191 = distinct !DILexicalBlock(scope: !1142, file: !3, line: 3124, column: 12)
!1192 = !DILocation(line: 3122, column: 12, scope: !1142, inlinedAt: !456)
!1193 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1194)
!1194 = distinct !DILocation(line: 3126, column: 8, scope: !1142, inlinedAt: !456)
!1195 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1194)
!1196 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1194)
!1197 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1194)
!1198 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !1194)
!1199 = !DILocation(line: 3127, column: 14, scope: !1142, inlinedAt: !456)
!1200 = !DILocation(line: 3107, column: 31, scope: !1143, inlinedAt: !456)
!1201 = !DILocation(line: 3107, column: 18, scope: !1143, inlinedAt: !456)
!1202 = distinct !{!1202, !1203, !1204}
!1203 = !DILocation(line: 3107, column: 4, scope: !1139)
!1204 = !DILocation(line: 3128, column: 6, scope: !1139)
!1205 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1141)
!1206 = !DILocation(line: 0, scope: !1183, inlinedAt: !456)
!1207 = !DILocation(line: 0, scope: !1156, inlinedAt: !1182)
!1208 = !DILocation(line: 822, column: 11, scope: !1209, inlinedAt: !1182)
!1209 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 822, column: 11)
!1210 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !1211)
!1211 = distinct !DILocation(line: 3129, column: 4, scope: !1122, inlinedAt: !456)
!1212 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !1211)
!1213 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !1211)
!1214 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !1211)
!1215 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !1211)
!1216 = !DILocation(line: 670, column: 7, scope: !838, inlinedAt: !1211)
!1217 = !DILocation(line: 671, column: 7, scope: !853, inlinedAt: !1211)
!1218 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !1211)
!1219 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !1211)
!1220 = !DILocation(line: 0, scope: !853, inlinedAt: !1211)
!1221 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !1211)
!1222 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !1211)
!1223 = !DILocation(line: 676, column: 16, scope: !999, inlinedAt: !1211)
!1224 = !DILocation(line: 0, scope: !1122, inlinedAt: !456)
!1225 = !DILocation(line: 693, column: 12, scope: !1001, inlinedAt: !1211)
!1226 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !1227)
!1227 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !1211)
!1228 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !1227)
!1229 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !1227)
!1230 = !DILocation(line: 749, column: 8, scope: !1021, inlinedAt: !1227)
!1231 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !1232)
!1232 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !1211)
!1233 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !1232)
!1234 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !1232)
!1235 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !1232)
!1236 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !1232)
!1237 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !1211)
!1238 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !1239)
!1239 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !1211)
!1240 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !1239)
!1241 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !1239)
!1242 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !1239)
!1243 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !1239)
!1244 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !1211)
!1245 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !1211)
!1246 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !1211)
!1247 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !1248)
!1248 = distinct !DILocation(line: 3134, column: 7, scope: !1109, inlinedAt: !456)
!1249 = !DILocation(line: 3134, column: 16, scope: !1109, inlinedAt: !456)
!1250 = !DILocation(line: 2976, column: 30, scope: !428, inlinedAt: !456)
!1251 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !1248)
!1252 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !1248)
!1253 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !1248)
!1254 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !1248)
!1255 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !1248)
!1256 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !1257)
!1257 = distinct !DILocation(line: 3135, column: 7, scope: !1109, inlinedAt: !456)
!1258 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !1257)
!1259 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !1257)
!1260 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !1257)
!1261 = !DILocation(line: 3136, column: 14, scope: !1109, inlinedAt: !456)
!1262 = !DILocation(line: 3136, column: 29, scope: !1109, inlinedAt: !456)
!1263 = !DILocation(line: 3136, column: 7, scope: !1109, inlinedAt: !456)
!1264 = !DILocation(line: 3138, column: 8, scope: !1265, inlinedAt: !456)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 3138, column: 8)
!1266 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 3137, column: 2)
!1267 = !DILocation(line: 3138, column: 20, scope: !1265, inlinedAt: !456)
!1268 = !DILocation(line: 3138, column: 8, scope: !1266, inlinedAt: !456)
!1269 = !DILocation(line: 3140, column: 8, scope: !1270, inlinedAt: !456)
!1270 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 3139, column: 6)
!1271 = !DILocation(line: 3141, column: 8, scope: !1270, inlinedAt: !456)
!1272 = !DILocation(line: 3142, column: 14, scope: !1270, inlinedAt: !456)
!1273 = !DILocation(line: 3143, column: 6, scope: !1270, inlinedAt: !456)
!1274 = !DILocation(line: 3145, column: 10, scope: !1275, inlinedAt: !456)
!1275 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 3145, column: 8)
!1276 = !DILocation(line: 3145, column: 8, scope: !1266, inlinedAt: !456)
!1277 = !DILocation(line: 3144, column: 6, scope: !1266, inlinedAt: !456)
!1278 = !DILocation(line: 3147, column: 6, scope: !1266, inlinedAt: !456)
!1279 = !DILocation(line: 3148, column: 6, scope: !1266, inlinedAt: !456)
!1280 = distinct !{!1280, !1281, !1282}
!1281 = !DILocation(line: 3136, column: 7, scope: !1109)
!1282 = !DILocation(line: 3149, column: 2, scope: !1109)
!1283 = !DILocation(line: 3150, column: 7, scope: !1109, inlinedAt: !456)
!1284 = !DILocation(line: 3154, column: 13, scope: !428, inlinedAt: !456)
!1285 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !1286)
!1286 = distinct !DILocation(line: 3154, column: 3, scope: !428, inlinedAt: !456)
!1287 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !1286)
!1288 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !1286)
!1289 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !1286)
!1290 = !DILocation(line: 624, column: 7, scope: !782, inlinedAt: !1286)
!1291 = !DILocation(line: 0, scope: !782, inlinedAt: !1286)
!1292 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !1286)
!1293 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !1286)
!1294 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !1286)
!1295 = !DILocation(line: 632, column: 27, scope: !1296, inlinedAt: !1286)
!1296 = distinct !DILexicalBlock(scope: !760, file: !3, line: 632, column: 7)
!1297 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !1286)
!1298 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1299)
!1299 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !1286)
!1300 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 635, column: 11)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 633, column: 5)
!1302 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1299)
!1303 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1299)
!1304 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1299)
!1305 = !DILocation(line: 0, scope: !1306, inlinedAt: !1286)
!1306 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 636, column: 2)
!1307 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !1286)
!1308 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !1286)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !3, line: 638, column: 4)
!1310 = distinct !DILexicalBlock(scope: !1306, file: !3, line: 638, column: 4)
!1311 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !1286)
!1312 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1299)
!1313 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !1286)
!1314 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 643, column: 7)
!1315 = distinct !DILexicalBlock(scope: !1301, file: !3, line: 643, column: 7)
!1316 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !1286)
!1317 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !1286)
!1318 = !DILocation(line: 732, column: 14, scope: !817, inlinedAt: !1319)
!1319 = distinct !DILocation(line: 3155, column: 3, scope: !428, inlinedAt: !456)
!1320 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !1286)
!1321 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !1286)
!1322 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !1286)
!1323 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !1286)
!1324 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !1286)
!1325 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !1286)
!1326 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !1286)
!1327 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !1286)
!1328 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !1286)
!1329 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !1286)
!1330 = !DILocation(line: 732, column: 12, scope: !817, inlinedAt: !1319)
!1331 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1319)
!1332 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1319)
!1333 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1319)
!1334 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1319)
!1335 = !DILocation(line: 732, column: 7, scope: !817, inlinedAt: !1319)
!1336 = !DILocation(line: 731, column: 3, scope: !818, inlinedAt: !1319)
!1337 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !1319)
!1338 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !1339)
!1339 = distinct !DILocation(line: 3156, column: 3, scope: !428, inlinedAt: !456)
!1340 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !1339)
!1341 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !1339)
!1342 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !1339)
!1343 = !DILocation(line: 624, column: 7, scope: !782, inlinedAt: !1339)
!1344 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !1339)
!1345 = !DILocation(line: 0, scope: !782, inlinedAt: !1339)
!1346 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !1339)
!1347 = !DILocation(line: 632, column: 27, scope: !1296, inlinedAt: !1339)
!1348 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !1339)
!1349 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1350)
!1350 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !1339)
!1351 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1350)
!1352 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1350)
!1353 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1350)
!1354 = !DILocation(line: 0, scope: !1306, inlinedAt: !1339)
!1355 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !1339)
!1356 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !1339)
!1357 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !1339)
!1358 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1350)
!1359 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !1339)
!1360 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !1339)
!1361 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !1339)
!1362 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !1339)
!1363 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !1339)
!1364 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !1339)
!1365 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !1339)
!1366 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !1339)
!1367 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !1339)
!1368 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !1339)
!1369 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !1339)
!1370 = !DILocation(line: 732, column: 12, scope: !817, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 3157, column: 3, scope: !428, inlinedAt: !456)
!1372 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1371)
!1373 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1371)
!1374 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1371)
!1375 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1371)
!1376 = !DILocation(line: 732, column: 7, scope: !817, inlinedAt: !1371)
!1377 = !DILocation(line: 731, column: 3, scope: !818, inlinedAt: !1371)
!1378 = !DILocation(line: 734, column: 6, scope: !800, inlinedAt: !1371)
!1379 = !DILocation(line: 3158, column: 3, scope: !428, inlinedAt: !456)
!1380 = !DILocation(line: 3159, column: 11, scope: !428, inlinedAt: !456)
!1381 = !DILocation(line: 0, scope: !1382, inlinedAt: !456)
!1382 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3161, column: 5)
!1383 = !DILocation(line: 3160, column: 17, scope: !428, inlinedAt: !456)
!1384 = !DILocation(line: 3160, column: 23, scope: !428, inlinedAt: !456)
!1385 = !DILocation(line: 3160, column: 27, scope: !428, inlinedAt: !456)
!1386 = !DILocation(line: 3160, column: 43, scope: !428, inlinedAt: !456)
!1387 = !DILocation(line: 3160, column: 3, scope: !428, inlinedAt: !456)
!1388 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1389)
!1389 = distinct !DILocation(line: 3162, column: 7, scope: !1382, inlinedAt: !456)
!1390 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1389)
!1391 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1389)
!1392 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !1389)
!1393 = distinct !DILexicalBlock(scope: !909, file: !3, line: 849, column: 11)
!1394 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1389)
!1395 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1389)
!1396 = !DILocation(line: 0, scope: !909, inlinedAt: !1389)
!1397 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1389)
!1398 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 3163, column: 7, scope: !1382, inlinedAt: !456)
!1400 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1399)
!1401 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1399)
!1402 = !DILocation(line: 732, column: 12, scope: !817, inlinedAt: !1399)
!1403 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1399)
!1404 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 3164, column: 7, scope: !1382, inlinedAt: !456)
!1406 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1405)
!1407 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1405)
!1408 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1405)
!1409 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1405)
!1410 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1405)
!1411 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1412)
!1412 = distinct !DILocation(line: 3165, column: 7, scope: !1382, inlinedAt: !456)
!1413 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1412)
!1414 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1412)
!1415 = !DILocation(line: 0, scope: !909, inlinedAt: !1412)
!1416 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1412)
!1417 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1412)
!1418 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1412)
!1419 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !1420)
!1420 = distinct !DILocation(line: 3166, column: 7, scope: !1382, inlinedAt: !456)
!1421 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !1420)
!1422 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !1420)
!1423 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !1420)
!1424 = !DILocation(line: 966, column: 10, scope: !958, inlinedAt: !1420)
!1425 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !1420)
!1426 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !1420)
!1427 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !1420)
!1428 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !1420)
!1429 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !1420)
!1430 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !1420)
!1431 = !DILocation(line: 3167, column: 7, scope: !1382, inlinedAt: !456)
!1432 = !DILocation(line: 3169, column: 13, scope: !1382, inlinedAt: !456)
!1433 = distinct !{!1433, !1434, !1435}
!1434 = !DILocation(line: 3160, column: 3, scope: !428)
!1435 = !DILocation(line: 3170, column: 5, scope: !428)
!1436 = !DILocation(line: 2979, column: 9, scope: !428, inlinedAt: !456)
!1437 = !DILocation(line: 3172, column: 7, scope: !1438, inlinedAt: !456)
!1438 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3172, column: 7)
!1439 = !DILocation(line: 0, scope: !1438, inlinedAt: !456)
!1440 = !DILocation(line: 3177, column: 7, scope: !428, inlinedAt: !456)
!1441 = !DILocation(line: 3183, column: 7, scope: !428, inlinedAt: !456)
!1442 = !DILocation(line: 3185, column: 13, scope: !1443, inlinedAt: !456)
!1443 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3185, column: 7)
!1444 = !DILocation(line: 3185, column: 7, scope: !428, inlinedAt: !456)
!1445 = !DILocation(line: 3187, column: 9, scope: !1446, inlinedAt: !456)
!1446 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 3186, column: 5)
!1447 = !DILocation(line: 3187, column: 12, scope: !1446, inlinedAt: !456)
!1448 = !DILocation(line: 3188, column: 9, scope: !1446, inlinedAt: !456)
!1449 = !DILocation(line: 3188, column: 12, scope: !1446, inlinedAt: !456)
!1450 = !DILocation(line: 3189, column: 17, scope: !1451, inlinedAt: !456)
!1451 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 3189, column: 11)
!1452 = !DILocation(line: 3189, column: 11, scope: !1446, inlinedAt: !456)
!1453 = !DILocation(line: 3191, column: 6, scope: !1454, inlinedAt: !456)
!1454 = distinct !DILexicalBlock(scope: !1451, file: !3, line: 3190, column: 2)
!1455 = !DILocation(line: 3191, column: 9, scope: !1454, inlinedAt: !456)
!1456 = !DILocation(line: 3192, column: 10, scope: !1454, inlinedAt: !456)
!1457 = !DILocation(line: 3194, column: 13, scope: !1446, inlinedAt: !456)
!1458 = !DILocation(line: 3195, column: 11, scope: !1446, inlinedAt: !456)
!1459 = !DILocation(line: 3195, column: 17, scope: !1460, inlinedAt: !456)
!1460 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 3195, column: 11)
!1461 = !DILocation(line: 3203, column: 14, scope: !1462, inlinedAt: !456)
!1462 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 3202, column: 5)
!1463 = !DILocation(line: 3203, column: 9, scope: !1462, inlinedAt: !456)
!1464 = !DILocation(line: 3203, column: 12, scope: !1462, inlinedAt: !456)
!1465 = !DILocation(line: 3204, column: 9, scope: !1462, inlinedAt: !456)
!1466 = !DILocation(line: 3204, column: 12, scope: !1462, inlinedAt: !456)
!1467 = !DILocation(line: 0, scope: !1468, inlinedAt: !456)
!1468 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3183, column: 7)
!1469 = !DILocation(line: 0, scope: !1462, inlinedAt: !456)
!1470 = !DILocation(line: 3207, column: 17, scope: !1471, inlinedAt: !456)
!1471 = distinct !DILexicalBlock(scope: !1472, file: !3, line: 3207, column: 3)
!1472 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3207, column: 3)
!1473 = !DILocation(line: 3207, column: 3, scope: !1472, inlinedAt: !456)
!1474 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1475)
!1475 = distinct !DILocation(line: 3210, column: 7, scope: !1476, inlinedAt: !456)
!1476 = distinct !DILexicalBlock(scope: !1471, file: !3, line: 3208, column: 5)
!1477 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1475)
!1478 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1475)
!1479 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !1475)
!1480 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1475)
!1481 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1475)
!1482 = !DILocation(line: 0, scope: !909, inlinedAt: !1475)
!1483 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1475)
!1484 = !DILocation(line: 727, column: 37, scope: !800, inlinedAt: !1485)
!1485 = distinct !DILocation(line: 3211, column: 7, scope: !1476, inlinedAt: !456)
!1486 = !DILocation(line: 727, column: 69, scope: !800, inlinedAt: !1485)
!1487 = !DILocation(line: 729, column: 16, scope: !800, inlinedAt: !1485)
!1488 = !DILocation(line: 732, column: 12, scope: !817, inlinedAt: !1485)
!1489 = !DILocation(line: 732, column: 10, scope: !817, inlinedAt: !1485)
!1490 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1491)
!1491 = distinct !DILocation(line: 3212, column: 7, scope: !1476, inlinedAt: !456)
!1492 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1491)
!1493 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1491)
!1494 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1491)
!1495 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1491)
!1496 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1491)
!1497 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1498)
!1498 = distinct !DILocation(line: 3213, column: 7, scope: !1476, inlinedAt: !456)
!1499 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1498)
!1500 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1498)
!1501 = !DILocation(line: 0, scope: !909, inlinedAt: !1498)
!1502 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1498)
!1503 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1498)
!1504 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1498)
!1505 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !1506)
!1506 = distinct !DILocation(line: 3214, column: 7, scope: !1476, inlinedAt: !456)
!1507 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !1506)
!1508 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !1506)
!1509 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !1506)
!1510 = !DILocation(line: 966, column: 10, scope: !958, inlinedAt: !1506)
!1511 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !1506)
!1512 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !1506)
!1513 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !1506)
!1514 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !1506)
!1515 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !1506)
!1516 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !1506)
!1517 = !DILocation(line: 3215, column: 7, scope: !1476, inlinedAt: !456)
!1518 = !DILocation(line: 3216, column: 21, scope: !1476, inlinedAt: !456)
!1519 = !DILocation(line: 3216, column: 14, scope: !1476, inlinedAt: !456)
!1520 = !DILocation(line: 3216, column: 9, scope: !1476, inlinedAt: !456)
!1521 = !DILocation(line: 3216, column: 12, scope: !1476, inlinedAt: !456)
!1522 = !DILocation(line: 3207, column: 28, scope: !1471, inlinedAt: !456)
!1523 = distinct !{!1523, !1524, !1525}
!1524 = !DILocation(line: 3207, column: 3, scope: !1472)
!1525 = !DILocation(line: 3217, column: 5, scope: !1472)
!1526 = !DILocation(line: 3218, column: 11, scope: !428, inlinedAt: !456)
!1527 = !DILocation(line: 0, scope: !1476, inlinedAt: !456)
!1528 = !DILocation(line: 3219, column: 3, scope: !428, inlinedAt: !456)
!1529 = !DILocation(line: 2979, column: 13, scope: !428, inlinedAt: !456)
!1530 = !DILocation(line: 3222, column: 13, scope: !1531, inlinedAt: !456)
!1531 = distinct !DILexicalBlock(scope: !428, file: !3, line: 3222, column: 7)
!1532 = !DILocation(line: 3222, column: 7, scope: !428, inlinedAt: !456)
!1533 = !DILocation(line: 3225, column: 17, scope: !1534, inlinedAt: !456)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 3225, column: 11)
!1535 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 3223, column: 5)
!1536 = !DILocation(line: 3225, column: 11, scope: !1535, inlinedAt: !456)
!1537 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !1538)
!1538 = distinct !DILocation(line: 3227, column: 4, scope: !1539, inlinedAt: !456)
!1539 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 3226, column: 2)
!1540 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !1538)
!1541 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !1538)
!1542 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !1538)
!1543 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !1538)
!1544 = !DILocation(line: 670, column: 7, scope: !838, inlinedAt: !1538)
!1545 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !1538)
!1546 = !DILocation(line: 671, column: 7, scope: !853, inlinedAt: !1538)
!1547 = !DILocation(line: 0, scope: !853, inlinedAt: !1538)
!1548 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !1538)
!1549 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !1538)
!1550 = !DILocation(line: 676, column: 16, scope: !999, inlinedAt: !1538)
!1551 = !DILocation(line: 0, scope: !1539, inlinedAt: !456)
!1552 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !1538)
!1553 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !1554)
!1554 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !1538)
!1555 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !1554)
!1556 = !DILocation(line: 749, column: 8, scope: !1021, inlinedAt: !1554)
!1557 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !1554)
!1558 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !1559)
!1559 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !1538)
!1560 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !1559)
!1561 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !1559)
!1562 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !1559)
!1563 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !1559)
!1564 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !1538)
!1565 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !1566)
!1566 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !1538)
!1567 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !1566)
!1568 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !1566)
!1569 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !1566)
!1570 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !1566)
!1571 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !1538)
!1572 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !1538)
!1573 = !DILocation(line: 693, column: 12, scope: !1001, inlinedAt: !1538)
!1574 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !1538)
!1575 = !DILocation(line: 3228, column: 8, scope: !1576, inlinedAt: !456)
!1576 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 3228, column: 8)
!1577 = !DILocation(line: 3228, column: 24, scope: !1576, inlinedAt: !456)
!1578 = !DILocation(line: 3228, column: 8, scope: !1539, inlinedAt: !456)
!1579 = !DILocation(line: 3230, column: 18, scope: !1580, inlinedAt: !456)
!1580 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 3230, column: 8)
!1581 = !DILocation(line: 3230, column: 26, scope: !1580, inlinedAt: !456)
!1582 = !DILocation(line: 3230, column: 33, scope: !1580, inlinedAt: !456)
!1583 = !DILocation(line: 3230, column: 42, scope: !1580, inlinedAt: !456)
!1584 = !DILocation(line: 3230, column: 30, scope: !1580, inlinedAt: !456)
!1585 = !DILocation(line: 3230, column: 22, scope: !1580, inlinedAt: !456)
!1586 = !DILocation(line: 3230, column: 51, scope: !1580, inlinedAt: !456)
!1587 = !DILocation(line: 3230, column: 56, scope: !1580, inlinedAt: !456)
!1588 = !DILocation(line: 3230, column: 8, scope: !1539, inlinedAt: !456)
!1589 = !DILocation(line: 3235, column: 7, scope: !1535, inlinedAt: !456)
!1590 = !DILocation(line: 3238, column: 11, scope: !1535, inlinedAt: !456)
!1591 = !DILocation(line: 3236, column: 11, scope: !1535, inlinedAt: !456)
!1592 = !DILocation(line: 3236, column: 14, scope: !1535, inlinedAt: !456)
!1593 = !DILocation(line: 3245, column: 18, scope: !1594, inlinedAt: !456)
!1594 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 3245, column: 16)
!1595 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 3238, column: 11)
!1596 = !DILocation(line: 3245, column: 16, scope: !1595, inlinedAt: !456)
!1597 = !DILocation(line: 3241, column: 7, scope: !1598, inlinedAt: !456)
!1598 = distinct !DILexicalBlock(scope: !1595, file: !3, line: 3239, column: 2)
!1599 = !DILocation(line: 3242, column: 10, scope: !1598, inlinedAt: !456)
!1600 = !DILocation(line: 3243, column: 4, scope: !1598, inlinedAt: !456)
!1601 = !DILocation(line: 3247, column: 4, scope: !1602, inlinedAt: !456)
!1602 = distinct !DILexicalBlock(scope: !1594, file: !3, line: 3246, column: 2)
!1603 = !DILocation(line: 3248, column: 8, scope: !1602, inlinedAt: !456)
!1604 = !DILocation(line: 3249, column: 6, scope: !1602, inlinedAt: !456)
!1605 = !DILocation(line: 3250, column: 7, scope: !1602, inlinedAt: !456)
!1606 = !DILocation(line: 3252, column: 10, scope: !1607, inlinedAt: !456)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 3252, column: 8)
!1608 = !DILocation(line: 3252, column: 8, scope: !1602, inlinedAt: !456)
!1609 = !DILocation(line: 3254, column: 14, scope: !1610, inlinedAt: !456)
!1610 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 3253, column: 6)
!1611 = !DILocation(line: 3255, column: 11, scope: !1610, inlinedAt: !456)
!1612 = !DILocation(line: 3256, column: 6, scope: !1610, inlinedAt: !456)
!1613 = !DILocation(line: 3260, column: 9, scope: !1535, inlinedAt: !456)
!1614 = !DILocation(line: 3261, column: 10, scope: !1535, inlinedAt: !456)
!1615 = !DILocation(line: 3262, column: 13, scope: !1616, inlinedAt: !456)
!1616 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 3262, column: 11)
!1617 = !DILocation(line: 3262, column: 11, scope: !1535, inlinedAt: !456)
!1618 = !DILocation(line: 3264, column: 7, scope: !1619, inlinedAt: !456)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 3263, column: 2)
!1620 = !DILocation(line: 0, scope: !1446, inlinedAt: !456)
!1621 = !DILocation(line: 3275, column: 3, scope: !428, inlinedAt: !456)
!1622 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !1623)
!1623 = distinct !DILocation(line: 3064, column: 4, scope: !425, inlinedAt: !456)
!1624 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !1623)
!1625 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !1623)
!1626 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !1623)
!1627 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !1623)
!1628 = !DILocation(line: 3065, column: 13, scope: !425, inlinedAt: !456)
!1629 = !DILocation(line: 3065, column: 10, scope: !425, inlinedAt: !456)
!1630 = !DILocation(line: 3065, column: 4, scope: !425, inlinedAt: !456)
!1631 = !DILocation(line: 3278, column: 15, scope: !428, inlinedAt: !456)
!1632 = !DILocation(line: 3279, column: 8, scope: !428, inlinedAt: !456)
!1633 = !DILocation(line: 3279, column: 17, scope: !428, inlinedAt: !456)
!1634 = !{!485, !486, i64 16}
!1635 = !DILocation(line: 3280, column: 1, scope: !428, inlinedAt: !456)
!1636 = !DILocation(line: 2784, column: 9, scope: !56)
!1637 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !1638)
!1638 = distinct !DILocation(line: 2839, column: 7, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2839, column: 7)
!1640 = !DILocation(line: 530, column: 8, scope: !745, inlinedAt: !1638)
!1641 = !DILocation(line: 530, column: 18, scope: !745, inlinedAt: !1638)
!1642 = !DILocation(line: 530, column: 28, scope: !745, inlinedAt: !1638)
!1643 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !1638)
!1644 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1645)
!1645 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !1638)
!1646 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1645)
!1647 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1645)
!1648 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1645)
!1649 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1645)
!1650 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !1645)
!1651 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1652)
!1652 = distinct !DILocation(line: 2839, column: 21, scope: !1639)
!1653 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1652)
!1654 = !DILocation(line: 2839, column: 18, scope: !1639)
!1655 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !1652)
!1656 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1652)
!1657 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1652)
!1658 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1652)
!1659 = !DILocation(line: 2839, column: 7, scope: !56)
!1660 = !DILocation(line: 2841, column: 14, scope: !1661)
!1661 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 2840, column: 5)
!1662 = !DILocation(line: 2842, column: 7, scope: !1661)
!1663 = !DILocation(line: 2844, column: 26, scope: !56)
!1664 = !DILocation(line: 2844, column: 10, scope: !56)
!1665 = !DILocation(line: 2850, column: 3, scope: !56)
!1666 = !DILocation(line: 2850, column: 10, scope: !56)
!1667 = !DILocation(line: 2863, column: 16, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2862, column: 5)
!1669 = !DILocation(line: 2854, column: 7, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2851, column: 5)
!1671 = distinct !{!1671, !1665, !1672}
!1672 = !DILocation(line: 2855, column: 5, scope: !56)
!1673 = !DILocation(line: 2863, column: 12, scope: !1668)
!1674 = !DILocation(line: 2863, column: 10, scope: !1668)
!1675 = !DILocation(line: 2864, column: 7, scope: !1668)
!1676 = !DILocation(line: 2861, column: 10, scope: !56)
!1677 = !DILocation(line: 2861, column: 13, scope: !56)
!1678 = !DILocation(line: 2861, column: 3, scope: !56)
!1679 = distinct !{!1679, !1678, !1680}
!1680 = !DILocation(line: 2865, column: 5, scope: !56)
!1681 = !DILocation(line: 2870, column: 10, scope: !56)
!1682 = !DILocation(line: 2870, column: 13, scope: !56)
!1683 = !DILocation(line: 2870, column: 25, scope: !56)
!1684 = !DILocation(line: 2870, column: 20, scope: !56)
!1685 = !DILocation(line: 2871, column: 5, scope: !56)
!1686 = !DILocation(line: 2870, column: 3, scope: !56)
!1687 = distinct !{!1687, !1686, !1688}
!1688 = !DILocation(line: 2871, column: 7, scope: !56)
!1689 = !DILocation(line: 2872, column: 6, scope: !56)
!1690 = !DILocation(line: 2872, column: 3, scope: !56)
!1691 = !DILocation(line: 2878, column: 10, scope: !56)
!1692 = !DILocation(line: 0, scope: !56)
!1693 = !DILocation(line: 2784, column: 13, scope: !56)
!1694 = !DILocation(line: 2878, column: 20, scope: !56)
!1695 = !DILocation(line: 2883, column: 16, scope: !56)
!1696 = !DILocation(line: 2883, column: 24, scope: !56)
!1697 = !DILocation(line: 2883, column: 3, scope: !56)
!1698 = distinct !{!1698, !1697, !1699}
!1699 = !DILocation(line: 2884, column: 5, scope: !56)
!1700 = !DILocation(line: 2879, column: 5, scope: !56)
!1701 = !DILocation(line: 2878, column: 3, scope: !56)
!1702 = distinct !{!1702, !1701, !1703}
!1703 = !DILocation(line: 2879, column: 7, scope: !56)
!1704 = !DILocation(line: 2883, column: 20, scope: !56)
!1705 = !DILocation(line: 2883, column: 13, scope: !56)
!1706 = !DILocation(line: 2883, column: 18, scope: !56)
!1707 = !DILocation(line: 2888, column: 12, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2888, column: 7)
!1709 = !DILocation(line: 2888, column: 7, scope: !56)
!1710 = !DILocation(line: 2890, column: 27, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !3, line: 2890, column: 12)
!1712 = !DILocation(line: 2890, column: 20, scope: !1711)
!1713 = !DILocation(line: 2891, column: 5, scope: !1711)
!1714 = !DILocation(line: 2895, column: 14, scope: !56)
!1715 = !DILocation(line: 2895, column: 10, scope: !56)
!1716 = !DILocation(line: 2895, column: 19, scope: !56)
!1717 = !DILocation(line: 2895, column: 26, scope: !56)
!1718 = !DILocation(line: 2895, column: 33, scope: !56)
!1719 = !DILocation(line: 2895, column: 43, scope: !56)
!1720 = !DILocation(line: 2895, column: 3, scope: !56)
!1721 = !DILocation(line: 2896, column: 12, scope: !56)
!1722 = distinct !{!1722, !1720, !1723}
!1723 = !DILocation(line: 2896, column: 14, scope: !56)
!1724 = !DILocation(line: 2900, column: 17, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2900, column: 7)
!1726 = !DILocation(line: 2900, column: 37, scope: !1725)
!1727 = !DILocation(line: 2900, column: 30, scope: !1725)
!1728 = !DILocation(line: 2900, column: 47, scope: !1725)
!1729 = !DILocation(line: 2900, column: 7, scope: !56)
!1730 = !DILocation(line: 2911, column: 9, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2910, column: 7)
!1732 = !DILocation(line: 2903, column: 10, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1725, file: !3, line: 2901, column: 5)
!1734 = !DILocation(line: 2904, column: 14, scope: !1733)
!1735 = !DILocation(line: 2905, column: 5, scope: !1733)
!1736 = !DILocation(line: 2911, column: 16, scope: !1731)
!1737 = !DILocation(line: 2911, column: 31, scope: !1731)
!1738 = !DILocation(line: 2785, column: 7, scope: !56)
!1739 = !DILocation(line: 2911, column: 5, scope: !1731)
!1740 = !DILocation(line: 2913, column: 39, scope: !1731)
!1741 = !DILocation(line: 0, scope: !1731)
!1742 = !DILocation(line: 2785, column: 10, scope: !56)
!1743 = !DILocation(line: 2916, column: 8, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2916, column: 3)
!1745 = !DILocation(line: 2916, column: 33, scope: !1744)
!1746 = !DILocation(line: 2917, column: 51, scope: !1747)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !3, line: 2916, column: 3)
!1748 = !DILocation(line: 2917, column: 48, scope: !1747)
!1749 = !DILocation(line: 2916, column: 3, scope: !1744)
!1750 = !DILocation(line: 2918, column: 29, scope: !1747)
!1751 = !DILocation(line: 2917, column: 56, scope: !1747)
!1752 = !DILocation(line: 2917, column: 46, scope: !1747)
!1753 = !DILocation(line: 2917, column: 44, scope: !1747)
!1754 = distinct !{!1754, !1749, !1755}
!1755 = !DILocation(line: 2918, column: 29, scope: !1744)
!1756 = !DILocation(line: 0, scope: !1747)
!1757 = !DILocation(line: 2919, column: 28, scope: !56)
!1758 = !DILocation(line: 2919, column: 26, scope: !56)
!1759 = !DILocation(line: 2922, column: 12, scope: !56)
!1760 = !DILocation(line: 2789, column: 9, scope: !56)
!1761 = !DILocation(line: 2923, column: 3, scope: !56)
!1762 = !DILocation(line: 2925, column: 7, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !56, file: !3, line: 2925, column: 7)
!1764 = !DILocation(line: 2925, column: 7, scope: !56)
!1765 = !DILocation(line: 2926, column: 24, scope: !1763)
!1766 = !DILocation(line: 2926, column: 19, scope: !1763)
!1767 = !DILocation(line: 2926, column: 10, scope: !1763)
!1768 = !{!495, !495, i64 0}
!1769 = !DILocation(line: 2926, column: 5, scope: !1763)
!1770 = !DILocation(line: 2929, column: 1, scope: !56)
!1771 = !DILocation(line: 2928, column: 3, scope: !56)
!1772 = distinct !DISubprogram(name: "e64toe", scope: !3, file: !3, line: 1890, type: !412, isLocal: true, isDefinition: true, scopeLine: 1891, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782}
!1774 = !DILocalVariable(name: "pe", arg: 1, scope: !1772, file: !3, line: 1890, type: !377)
!1775 = !DILocalVariable(name: "y", arg: 2, scope: !1772, file: !3, line: 1890, type: !377)
!1776 = !DILocalVariable(name: "ldp", arg: 3, scope: !1772, file: !3, line: 1890, type: !361)
!1777 = !DILocalVariable(name: "yy", scope: !1772, file: !3, line: 1892, type: !338)
!1778 = !DILocalVariable(name: "p", scope: !1772, file: !3, line: 1893, type: !377)
!1779 = !DILocalVariable(name: "q", scope: !1772, file: !3, line: 1893, type: !377)
!1780 = !DILocalVariable(name: "e", scope: !1772, file: !3, line: 1893, type: !377)
!1781 = !DILocalVariable(name: "i", scope: !1772, file: !3, line: 1894, type: !8)
!1782 = !DILocalVariable(name: "temp", scope: !1783, file: !3, line: 1922, type: !1785)
!1783 = distinct !DILexicalBlock(scope: !1784, file: !3, line: 1921, column: 5)
!1784 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1920, column: 7)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 224, elements: !1786)
!1786 = !{!1787}
!1787 = !DISubrange(count: 14)
!1788 = !DILocation(line: 1890, column: 29, scope: !1772)
!1789 = !DILocation(line: 1890, column: 53, scope: !1772)
!1790 = !DILocation(line: 1890, column: 66, scope: !1772)
!1791 = !DILocation(line: 1892, column: 3, scope: !1772)
!1792 = !DILocation(line: 1892, column: 18, scope: !1772)
!1793 = !DILocation(line: 1893, column: 27, scope: !1772)
!1794 = !DILocation(line: 1897, column: 7, scope: !1772)
!1795 = !DILocation(line: 1893, column: 19, scope: !1772)
!1796 = !DILocation(line: 1894, column: 7, scope: !1772)
!1797 = !DILocation(line: 1900, column: 7, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1799, file: !3, line: 1899, column: 3)
!1799 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1899, column: 3)
!1800 = !DILocation(line: 1900, column: 10, scope: !1798)
!1801 = !DILocation(line: 1899, column: 3, scope: !1799)
!1802 = !DILocation(line: 1903, column: 14, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1804, file: !3, line: 1902, column: 3)
!1804 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1902, column: 3)
!1805 = !DILocation(line: 1903, column: 12, scope: !1803)
!1806 = !DILocation(line: 1903, column: 7, scope: !1803)
!1807 = !DILocation(line: 1903, column: 10, scope: !1803)
!1808 = !DILocation(line: 1920, column: 19, scope: !1784)
!1809 = !DILocation(line: 1920, column: 34, scope: !1784)
!1810 = !DILocation(line: 1893, column: 23, scope: !1772)
!1811 = !DILocation(line: 1968, column: 7, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 1967, column: 3)
!1813 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1967, column: 3)
!1814 = !DILocation(line: 1968, column: 10, scope: !1812)
!1815 = !DILocation(line: 1968, column: 14, scope: !1812)
!1816 = !DILocation(line: 1968, column: 12, scope: !1812)
!1817 = !DILocation(line: 1969, column: 1, scope: !1772)
!1818 = !DILocation(line: 1920, column: 59, scope: !1784)
!1819 = !DILocation(line: 0, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1772, file: !3, line: 1932, column: 7)
!1821 = !DILocation(line: 1920, column: 7, scope: !1772)
!1822 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !1823)
!1823 = distinct !DILocation(line: 1923, column: 7, scope: !1783)
!1824 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !1823)
!1825 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !1823)
!1826 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !1823)
!1827 = !DILocation(line: 1922, column: 22, scope: !1783)
!1828 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !1823)
!1829 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1830)
!1830 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !1823)
!1831 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1830)
!1832 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1830)
!1833 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !1823)
!1834 = !DILocation(line: 0, scope: !1783)
!1835 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !1836)
!1836 = distinct !DILocation(line: 1924, column: 7, scope: !1783)
!1837 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !1836)
!1838 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !1836)
!1839 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !1836)
!1840 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !1836)
!1841 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !1836)
!1842 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !1843)
!1843 = distinct !DILocation(line: 1925, column: 7, scope: !1783)
!1844 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !1843)
!1845 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !1843)
!1846 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !1843)
!1847 = !DILocation(line: 668, column: 9, scope: !838, inlinedAt: !1843)
!1848 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !1843)
!1849 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !1843)
!1850 = !DILocation(line: 671, column: 7, scope: !853, inlinedAt: !1843)
!1851 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !1843)
!1852 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !1843)
!1853 = !DILocation(line: 0, scope: !853, inlinedAt: !1843)
!1854 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !1843)
!1855 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !1843)
!1857 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !1856)
!1858 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !1856)
!1859 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !1860)
!1860 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !1843)
!1861 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !1860)
!1862 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !1860)
!1863 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !1860)
!1864 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !1860)
!1865 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !1843)
!1866 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !1867)
!1867 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !1843)
!1868 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !1867)
!1869 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !1867)
!1870 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !1867)
!1871 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !1867)
!1872 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !1843)
!1873 = !DILocation(line: 693, column: 7, scope: !1001, inlinedAt: !1843)
!1874 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !1843)
!1875 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !1843)
!1876 = !DILocation(line: 1932, column: 7, scope: !1772)
!1877 = !DILocation(line: 1940, column: 8, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1879, file: !3, line: 1938, column: 8)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !3, line: 1937, column: 2)
!1880 = distinct !DILexicalBlock(scope: !1881, file: !3, line: 1936, column: 7)
!1881 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 1936, column: 7)
!1882 = distinct !DILexicalBlock(scope: !1820, file: !3, line: 1933, column: 5)
!1883 = !DILocation(line: 1940, column: 28, scope: !1878)
!1884 = !DILocation(line: 0, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1941, column: 6)
!1886 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !1887)
!1887 = distinct !DILocation(line: 1942, column: 8, scope: !1885)
!1888 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !1887)
!1889 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !1887)
!1890 = !DILocation(line: 3836, column: 9, scope: !1891, inlinedAt: !1887)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !3, line: 3835, column: 7)
!1892 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 3835, column: 7)
!1893 = !DILocation(line: 3835, column: 7, scope: !1892, inlinedAt: !1887)
!1894 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !1887)
!1895 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !1887)
!1896 = !DILocation(line: 1943, column: 8, scope: !1885)
!1897 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !1898)
!1898 = distinct !DILocation(line: 1958, column: 7, scope: !1882)
!1899 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !1898)
!1900 = !DILocation(line: 465, column: 7, scope: !680, inlinedAt: !1898)
!1901 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !1902)
!1902 = distinct !DILocation(line: 1959, column: 7, scope: !1882)
!1903 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !1902)
!1904 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !1902)
!1905 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !1902)
!1906 = !DILocation(line: 1960, column: 11, scope: !1882)
!1907 = !DILocation(line: 0, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1882, file: !3, line: 1960, column: 11)
!1909 = distinct !DISubprogram(name: "_ldcheck", scope: !3, file: !3, line: 2937, type: !1910, isLocal: false, isDefinition: true, scopeLine: 2938, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1913)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!8, !1912}
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!1913 = !{!1914, !1915, !1916, !1917, !1918}
!1914 = !DILocalVariable(name: "d", arg: 1, scope: !1909, file: !3, line: 2937, type: !1912)
!1915 = !DILocalVariable(name: "e", scope: !1909, file: !3, line: 2939, type: !338)
!1916 = !DILocalVariable(name: "rnd", scope: !1909, file: !3, line: 2940, type: !347)
!1917 = !DILocalVariable(name: "ldp", scope: !1909, file: !3, line: 2941, type: !361)
!1918 = !DILocalVariable(name: "du", scope: !1909, file: !3, line: 2943, type: !368)
!1919 = !DILocation(line: 2937, column: 24, scope: !1909)
!1920 = !DILocation(line: 2939, column: 3, scope: !1909)
!1921 = !DILocation(line: 2939, column: 18, scope: !1909)
!1922 = !DILocation(line: 2943, column: 3, scope: !1909)
!1923 = !DILocation(line: 2947, column: 10, scope: !1909)
!1924 = !{!1925, !1925, i64 0}
!1925 = !{!"long double", !479, i64 0}
!1926 = !DILocation(line: 2947, column: 6, scope: !1909)
!1927 = !DILocation(line: 2947, column: 8, scope: !1909)
!1928 = !DILocation(line: 2953, column: 15, scope: !1909)
!1929 = !DILocation(line: 2953, column: 19, scope: !1909)
!1930 = !DILocation(line: 2953, column: 3, scope: !1909)
!1931 = !DILocation(line: 2958, column: 8, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1909, file: !3, line: 2958, column: 7)
!1933 = !DILocation(line: 2958, column: 18, scope: !1932)
!1934 = !DILocation(line: 2958, column: 28, scope: !1932)
!1935 = !DILocation(line: 2958, column: 7, scope: !1909)
!1936 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 2961, column: 11, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !3, line: 2961, column: 11)
!1939 = distinct !DILexicalBlock(scope: !1932, file: !3, line: 2959, column: 5)
!1940 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1937)
!1941 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1937)
!1942 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1937)
!1943 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1937)
!1944 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !1937)
!1945 = !DILocation(line: 2964, column: 7, scope: !1939)
!1946 = !DILocation(line: 0, scope: !1932)
!1947 = !DILocation(line: 2968, column: 1, scope: !1909)
!1948 = distinct !DISubprogram(name: "ecmp", scope: !3, file: !3, line: 2418, type: !1949, isLocal: true, isDefinition: true, scopeLine: 2419, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1951)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!8, !376, !376}
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959}
!1952 = !DILocalVariable(name: "a", arg: 1, scope: !1948, file: !3, line: 2418, type: !376)
!1953 = !DILocalVariable(name: "b", arg: 2, scope: !1948, file: !3, line: 2418, type: !376)
!1954 = !DILocalVariable(name: "ai", scope: !1948, file: !3, line: 2420, type: !338)
!1955 = !DILocalVariable(name: "bi", scope: !1948, file: !3, line: 2420, type: !338)
!1956 = !DILocalVariable(name: "p", scope: !1948, file: !3, line: 2421, type: !377)
!1957 = !DILocalVariable(name: "q", scope: !1948, file: !3, line: 2421, type: !377)
!1958 = !DILocalVariable(name: "i", scope: !1948, file: !3, line: 2422, type: !8)
!1959 = !DILocalVariable(name: "msign", scope: !1948, file: !3, line: 2423, type: !8)
!1960 = !DILocation(line: 2418, column: 34, scope: !1948)
!1961 = !DILocation(line: 2418, column: 64, scope: !1948)
!1962 = !DILocation(line: 2420, column: 3, scope: !1948)
!1963 = !DILocation(line: 2420, column: 18, scope: !1948)
!1964 = !DILocation(line: 2420, column: 26, scope: !1948)
!1965 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1966)
!1966 = distinct !DILocation(line: 2426, column: 7, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 2426, column: 7)
!1968 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !1966)
!1969 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !1966)
!1970 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !1966)
!1971 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !1966)
!1972 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1966)
!1973 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1966)
!1974 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1966)
!1975 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1966)
!1976 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !1966)
!1977 = !DILocation(line: 2426, column: 18, scope: !1967)
!1978 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !1979)
!1979 = distinct !DILocation(line: 2426, column: 21, scope: !1967)
!1980 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !1979)
!1981 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !1979)
!1982 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !1979)
!1983 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !1979)
!1984 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !1979)
!1985 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !1979)
!1986 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !1979)
!1987 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !1979)
!1988 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !1979)
!1989 = !DILocation(line: 2426, column: 7, scope: !1948)
!1990 = !DILocation(line: 2429, column: 13, scope: !1948)
!1991 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 2429, column: 3, scope: !1948)
!1993 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !1992)
!1994 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !1992)
!1995 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !1992)
!1996 = !DILocation(line: 0, scope: !782, inlinedAt: !1992)
!1997 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !1992)
!1998 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !1992)
!1999 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !1992)
!2000 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !1992)
!2001 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !1992)
!2002 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2003)
!2003 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !1992)
!2004 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2003)
!2005 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2003)
!2006 = !DILocation(line: 0, scope: !1948)
!2007 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2003)
!2008 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2003)
!2009 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2003)
!2010 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !1992)
!2011 = !DILocation(line: 0, scope: !1306, inlinedAt: !1992)
!2012 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !1992)
!2013 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !1992)
!2014 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !1992)
!2015 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !1992)
!2016 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !1992)
!2017 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !1992)
!2018 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !1992)
!2019 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !1992)
!2020 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !1992)
!2021 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !1992)
!2022 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !1992)
!2023 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !1992)
!2024 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !1992)
!2025 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !1992)
!2026 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !1992)
!2027 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !1992)
!2028 = !DILocation(line: 2421, column: 28, scope: !1948)
!2029 = !DILocation(line: 2431, column: 13, scope: !1948)
!2030 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !2031)
!2031 = distinct !DILocation(line: 2431, column: 3, scope: !1948)
!2032 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !2031)
!2033 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !2031)
!2034 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !2031)
!2035 = !DILocation(line: 0, scope: !782, inlinedAt: !2031)
!2036 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !2031)
!2037 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !2031)
!2038 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !2031)
!2039 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !2031)
!2040 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !2031)
!2041 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2042)
!2042 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !2031)
!2043 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2042)
!2044 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2042)
!2045 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2042)
!2046 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2042)
!2047 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2042)
!2048 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !2031)
!2049 = !DILocation(line: 0, scope: !1306, inlinedAt: !2031)
!2050 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !2031)
!2051 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !2031)
!2052 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !2031)
!2053 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !2031)
!2054 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !2031)
!2055 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !2031)
!2056 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !2031)
!2057 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !2031)
!2058 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !2031)
!2059 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !2031)
!2060 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !2031)
!2061 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !2031)
!2062 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !2031)
!2063 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !2031)
!2064 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !2031)
!2065 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !2031)
!2066 = !DILocation(line: 2421, column: 32, scope: !1948)
!2067 = !DILocation(line: 2434, column: 10, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 2434, column: 7)
!2069 = !DILocation(line: 2434, column: 7, scope: !1948)
!2070 = !DILocation(line: 2422, column: 16, scope: !1948)
!2071 = !DILocation(line: 2439, column: 8, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 2438, column: 2)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 2437, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 2437, column: 7)
!2075 = distinct !DILexicalBlock(scope: !2068, file: !3, line: 2435, column: 5)
!2076 = !DILocation(line: 2446, column: 14, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2075, file: !3, line: 2446, column: 11)
!2078 = !DILocation(line: 2447, column: 2, scope: !2077)
!2079 = !DILocation(line: 2452, column: 10, scope: !2080)
!2080 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 2452, column: 7)
!2081 = !DILocation(line: 2453, column: 5, scope: !2080)
!2082 = !DILocation(line: 2423, column: 7, scope: !1948)
!2083 = !DILocation(line: 2459, column: 16, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2085, file: !3, line: 2459, column: 11)
!2085 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 2458, column: 5)
!2086 = !DILocation(line: 2459, column: 11, scope: !2085)
!2087 = !DILocation(line: 2459, column: 11, scope: !2084)
!2088 = !DILocation(line: 2459, column: 19, scope: !2084)
!2089 = !DILocation(line: 2472, column: 14, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !1948, file: !3, line: 2472, column: 7)
!2091 = !DILocation(line: 2475, column: 13, scope: !2090)
!2092 = !DILocation(line: 2472, column: 7, scope: !1948)
!2093 = !DILocation(line: 2476, column: 1, scope: !1948)
!2094 = !DILocation(line: 2459, column: 21, scope: !2084)
!2095 = !DILocation(line: 2459, column: 13, scope: !2084)
!2096 = distinct !DISubprogram(name: "ediv", scope: !3, file: !3, line: 1566, type: !396, isLocal: true, isDefinition: true, scopeLine: 1568, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2097)
!2097 = !{!2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107}
!2098 = !DILocalVariable(name: "a", arg: 1, scope: !2096, file: !3, line: 1566, type: !376)
!2099 = !DILocalVariable(name: "b", arg: 2, scope: !2096, file: !3, line: 1566, type: !376)
!2100 = !DILocalVariable(name: "c", arg: 3, scope: !2096, file: !3, line: 1567, type: !377)
!2101 = !DILocalVariable(name: "ldp", arg: 4, scope: !2096, file: !3, line: 1567, type: !361)
!2102 = !DILocalVariable(name: "ai", scope: !2096, file: !3, line: 1569, type: !338)
!2103 = !DILocalVariable(name: "bi", scope: !2096, file: !3, line: 1569, type: !338)
!2104 = !DILocalVariable(name: "i", scope: !2096, file: !3, line: 1570, type: !8)
!2105 = !DILocalVariable(name: "lt", scope: !2096, file: !3, line: 1571, type: !12)
!2106 = !DILocalVariable(name: "lta", scope: !2096, file: !3, line: 1571, type: !12)
!2107 = !DILocalVariable(name: "ltb", scope: !2096, file: !3, line: 1571, type: !12)
!2108 = !DILocalVariable(name: "p", scope: !2109, file: !3, line: 1013, type: !338)
!2109 = distinct !DISubprogram(name: "m16m", scope: !3, file: !3, line: 1008, type: !2110, isLocal: true, isDefinition: true, scopeLine: 1009, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2112)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !11, !377, !377}
!2112 = !{!2113, !2114, !2115, !2116, !2117, !2118, !2108, !2119, !2120, !2121}
!2113 = !DILocalVariable(name: "a", arg: 1, scope: !2109, file: !3, line: 1008, type: !11)
!2114 = !DILocalVariable(name: "b", arg: 2, scope: !2109, file: !3, line: 1008, type: !377)
!2115 = !DILocalVariable(name: "c", arg: 3, scope: !2109, file: !3, line: 1008, type: !377)
!2116 = !DILocalVariable(name: "pp", scope: !2109, file: !3, line: 1010, type: !377)
!2117 = !DILocalVariable(name: "carry", scope: !2109, file: !3, line: 1011, type: !10)
!2118 = !DILocalVariable(name: "ps", scope: !2109, file: !3, line: 1012, type: !377)
!2119 = !DILocalVariable(name: "aa", scope: !2109, file: !3, line: 1014, type: !10)
!2120 = !DILocalVariable(name: "m", scope: !2109, file: !3, line: 1014, type: !10)
!2121 = !DILocalVariable(name: "i", scope: !2109, file: !3, line: 1015, type: !8)
!2122 = !DILocation(line: 1013, column: 18, scope: !2109, inlinedAt: !2123)
!2123 = distinct !DILocation(line: 1088, column: 7, scope: !2124, inlinedAt: !2142)
!2124 = distinct !DILexicalBlock(scope: !2125, file: !3, line: 1071, column: 5)
!2125 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 1070, column: 3)
!2126 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1070, column: 3)
!2127 = distinct !DISubprogram(name: "edivm", scope: !3, file: !3, line: 1051, type: !2128, isLocal: true, isDefinition: true, scopeLine: 1052, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2130)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!8, !377, !377, !361}
!2130 = !{!2131, !2132, !2133, !2134, !2135, !2136, !2137, !2138, !2139, !2140, !2141}
!2131 = !DILocalVariable(name: "den", arg: 1, scope: !2127, file: !3, line: 1051, type: !377)
!2132 = !DILocalVariable(name: "num", arg: 2, scope: !2127, file: !3, line: 1051, type: !377)
!2133 = !DILocalVariable(name: "ldp", arg: 3, scope: !2127, file: !3, line: 1051, type: !361)
!2134 = !DILocalVariable(name: "i", scope: !2127, file: !3, line: 1053, type: !8)
!2135 = !DILocalVariable(name: "p", scope: !2127, file: !3, line: 1054, type: !377)
!2136 = !DILocalVariable(name: "tnum", scope: !2127, file: !3, line: 1055, type: !10)
!2137 = !DILocalVariable(name: "j", scope: !2127, file: !3, line: 1056, type: !11)
!2138 = !DILocalVariable(name: "tdenm", scope: !2127, file: !3, line: 1056, type: !11)
!2139 = !DILocalVariable(name: "tquot", scope: !2127, file: !3, line: 1056, type: !11)
!2140 = !DILocalVariable(name: "tprod", scope: !2127, file: !3, line: 1057, type: !1785)
!2141 = !DILocalVariable(name: "equot", scope: !2127, file: !3, line: 1058, type: !377)
!2142 = distinct !DILocation(line: 1650, column: 7, scope: !2096)
!2143 = !DILocation(line: 1566, column: 34, scope: !2096)
!2144 = !DILocation(line: 1566, column: 64, scope: !2096)
!2145 = !DILocation(line: 1567, column: 27, scope: !2096)
!2146 = !DILocation(line: 1567, column: 40, scope: !2096)
!2147 = !DILocation(line: 1569, column: 3, scope: !2096)
!2148 = !DILocation(line: 1569, column: 18, scope: !2096)
!2149 = !DILocation(line: 1569, column: 26, scope: !2096)
!2150 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2151)
!2151 = distinct !DILocation(line: 1575, column: 7, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1575, column: 7)
!2153 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !2151)
!2154 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !2151)
!2155 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !2151)
!2156 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2151)
!2157 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2151)
!2158 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2151)
!2159 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2151)
!2160 = !DILocation(line: 0, scope: !2161)
!2161 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 1576, column: 5)
!2162 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2151)
!2163 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2151)
!2164 = !DILocation(line: 1575, column: 7, scope: !2096)
!2165 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !2166)
!2166 = distinct !DILocation(line: 1577, column: 7, scope: !2161)
!2167 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !2166)
!2168 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !2166)
!2169 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !2166)
!2170 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !2166)
!2171 = !DILocation(line: 481, column: 14, scope: !575, inlinedAt: !2166)
!2172 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !2166)
!2173 = !DILocation(line: 1578, column: 7, scope: !2161)
!2174 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2175)
!2175 = distinct !DILocation(line: 1580, column: 7, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1580, column: 7)
!2177 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !2175)
!2178 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !2175)
!2179 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !2175)
!2180 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2175)
!2181 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2175)
!2182 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2175)
!2183 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2175)
!2184 = !DILocation(line: 0, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2176, file: !3, line: 1581, column: 5)
!2186 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2175)
!2187 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2175)
!2188 = !DILocation(line: 1580, column: 7, scope: !2096)
!2189 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !2190)
!2190 = distinct !DILocation(line: 1582, column: 7, scope: !2185)
!2191 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !2190)
!2192 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !2190)
!2193 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !2190)
!2194 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !2190)
!2195 = !DILocation(line: 481, column: 14, scope: !575, inlinedAt: !2190)
!2196 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !2190)
!2197 = !DILocation(line: 1583, column: 7, scope: !2185)
!2198 = !DILocation(line: 1586, column: 9, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1586, column: 7)
!2200 = !DILocation(line: 1586, column: 25, scope: !2199)
!2201 = !DILocation(line: 1586, column: 31, scope: !2199)
!2202 = !DILocation(line: 1586, column: 35, scope: !2199)
!2203 = !DILocation(line: 1586, column: 51, scope: !2199)
!2204 = !DILocation(line: 1587, column: 7, scope: !2199)
!2205 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2206)
!2206 = distinct !DILocation(line: 1587, column: 11, scope: !2199)
!2207 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2206)
!2208 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2209)
!2209 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2206)
!2210 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2209)
!2211 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2209)
!2212 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2209)
!2213 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2209)
!2214 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2209)
!2215 = !DILocation(line: 1587, column: 22, scope: !2199)
!2216 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2217)
!2217 = distinct !DILocation(line: 1587, column: 25, scope: !2199)
!2218 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2217)
!2219 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2220)
!2220 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2217)
!2221 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2220)
!2222 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2220)
!2223 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2220)
!2224 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2220)
!2225 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2220)
!2226 = !DILocation(line: 1586, column: 7, scope: !2096)
!2227 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !2228)
!2228 = distinct !DILocation(line: 1590, column: 7, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 1588, column: 5)
!2230 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !2228)
!2231 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !2228)
!2232 = !DILocation(line: 3835, column: 7, scope: !1892, inlinedAt: !2228)
!2233 = !DILocation(line: 3836, column: 9, scope: !1891, inlinedAt: !2228)
!2234 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !2228)
!2235 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !2228)
!2236 = !DILocation(line: 1591, column: 7, scope: !2229)
!2237 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2238)
!2238 = distinct !DILocation(line: 1596, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1596, column: 7)
!2240 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2238)
!2241 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2242)
!2242 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2238)
!2243 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2242)
!2244 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2242)
!2245 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2242)
!2246 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2242)
!2247 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2242)
!2248 = !DILocation(line: 1596, column: 7, scope: !2096)
!2249 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2250)
!2250 = distinct !DILocation(line: 1598, column: 11, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 1598, column: 11)
!2252 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 1597, column: 5)
!2253 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2254)
!2254 = distinct !DILocation(line: 513, column: 7, scope: !531, inlinedAt: !2250)
!2255 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2254)
!2256 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2254)
!2257 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2254)
!2258 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2254)
!2259 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2254)
!2260 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2254)
!2261 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2250)
!2262 = !DILocation(line: 517, column: 5, scope: !2263, inlinedAt: !2250)
!2263 = distinct !DILexicalBlock(scope: !518, file: !3, line: 516, column: 7)
!2264 = !DILocation(line: 0, scope: !2263, inlinedAt: !2250)
!2265 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2266)
!2266 = distinct !DILocation(line: 1598, column: 24, scope: !2251)
!2267 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2268)
!2268 = distinct !DILocation(line: 513, column: 7, scope: !531, inlinedAt: !2266)
!2269 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2268)
!2270 = !DILocation(line: 517, column: 5, scope: !2263, inlinedAt: !2266)
!2271 = !DILocation(line: 1598, column: 22, scope: !2251)
!2272 = !DILocation(line: 0, scope: !2251)
!2273 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !2274)
!2274 = distinct !DILocation(line: 1602, column: 7, scope: !2252)
!2275 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !2274)
!2276 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !2274)
!2277 = !DILocation(line: 579, column: 7, scope: !1052, inlinedAt: !2274)
!2278 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !2274)
!2279 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !2274)
!2280 = !DILocation(line: 1603, column: 7, scope: !2252)
!2281 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2282)
!2282 = distinct !DILocation(line: 1605, column: 7, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1605, column: 7)
!2284 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2282)
!2285 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2286)
!2286 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2282)
!2287 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2286)
!2288 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2286)
!2289 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2286)
!2290 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2286)
!2291 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2286)
!2292 = !DILocation(line: 1605, column: 7, scope: !2096)
!2293 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !2294)
!2294 = distinct !DILocation(line: 1607, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2283, file: !3, line: 1606, column: 5)
!2296 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !2294)
!2297 = !DILocation(line: 465, column: 7, scope: !680, inlinedAt: !2294)
!2298 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !2294)
!2299 = !DILocation(line: 1608, column: 7, scope: !2295)
!2300 = !DILocation(line: 1611, column: 13, scope: !2096)
!2301 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !2302)
!2302 = distinct !DILocation(line: 1611, column: 3, scope: !2096)
!2303 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !2302)
!2304 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !2302)
!2305 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !2302)
!2306 = !DILocation(line: 0, scope: !782, inlinedAt: !2302)
!2307 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !2302)
!2308 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !2302)
!2309 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !2302)
!2310 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !2302)
!2311 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !2302)
!2312 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2313)
!2313 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !2302)
!2314 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2313)
!2315 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2313)
!2316 = !DILocation(line: 0, scope: !2096)
!2317 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2313)
!2318 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2313)
!2319 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2313)
!2320 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !2302)
!2321 = !DILocation(line: 0, scope: !1306, inlinedAt: !2302)
!2322 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !2302)
!2323 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !2302)
!2324 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !2302)
!2325 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !2302)
!2326 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !2302)
!2327 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !2302)
!2328 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !2302)
!2329 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !2302)
!2330 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !2302)
!2331 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !2302)
!2332 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !2302)
!2333 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !2302)
!2334 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !2302)
!2335 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !2302)
!2336 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !2302)
!2337 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !2302)
!2338 = !DILocation(line: 1612, column: 13, scope: !2096)
!2339 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !2340)
!2340 = distinct !DILocation(line: 1612, column: 3, scope: !2096)
!2341 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !2340)
!2342 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !2340)
!2343 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !2340)
!2344 = !DILocation(line: 0, scope: !782, inlinedAt: !2340)
!2345 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !2340)
!2346 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !2340)
!2347 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !2340)
!2348 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !2340)
!2349 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !2340)
!2350 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2351)
!2351 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !2340)
!2352 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2351)
!2353 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2351)
!2354 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2351)
!2355 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2351)
!2356 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2351)
!2357 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !2340)
!2358 = !DILocation(line: 0, scope: !1306, inlinedAt: !2340)
!2359 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !2340)
!2360 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !2340)
!2361 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !2340)
!2362 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !2340)
!2363 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !2340)
!2364 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !2340)
!2365 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !2340)
!2366 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !2340)
!2367 = !DILocation(line: 1613, column: 9, scope: !2096)
!2368 = !DILocation(line: 1571, column: 12, scope: !2096)
!2369 = !DILocation(line: 1571, column: 17, scope: !2096)
!2370 = !DILocation(line: 1615, column: 7, scope: !2096)
!2371 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !2340)
!2372 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !2340)
!2373 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !2340)
!2374 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !2340)
!2375 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !2340)
!2376 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !2340)
!2377 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !2340)
!2378 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !2340)
!2379 = !DILocation(line: 1614, column: 9, scope: !2096)
!2380 = !DILocation(line: 1615, column: 13, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1615, column: 7)
!2382 = !DILocation(line: 1621, column: 15, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 1620, column: 6)
!2384 = distinct !DILexicalBlock(scope: !2385, file: !3, line: 1619, column: 8)
!2385 = distinct !DILexicalBlock(scope: !2386, file: !3, line: 1618, column: 2)
!2386 = distinct !DILexicalBlock(scope: !2387, file: !3, line: 1617, column: 7)
!2387 = distinct !DILexicalBlock(scope: !2388, file: !3, line: 1617, column: 7)
!2388 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 1616, column: 5)
!2389 = !DILocation(line: 1621, column: 12, scope: !2383)
!2390 = !DILocation(line: 1630, column: 7, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1630, column: 7)
!2392 = !DILocation(line: 1622, column: 8, scope: !2383)
!2393 = !DILocation(line: 1630, column: 13, scope: !2391)
!2394 = !DILocation(line: 1630, column: 7, scope: !2096)
!2395 = !DILocation(line: 1570, column: 7, scope: !2096)
!2396 = !DILocation(line: 1634, column: 8, scope: !2397)
!2397 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 1634, column: 8)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 1633, column: 2)
!2399 = distinct !DILexicalBlock(scope: !2400, file: !3, line: 1632, column: 7)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1632, column: 7)
!2401 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 1631, column: 5)
!2402 = !DILocation(line: 1634, column: 14, scope: !2397)
!2403 = !DILocation(line: 1634, column: 8, scope: !2398)
!2404 = !DILocation(line: 1636, column: 15, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2397, file: !3, line: 1635, column: 6)
!2406 = !DILocation(line: 1636, column: 12, scope: !2405)
!2407 = !DILocation(line: 1637, column: 8, scope: !2405)
!2408 = !DILocation(line: 1051, column: 28, scope: !2127, inlinedAt: !2142)
!2409 = !DILocation(line: 1051, column: 53, scope: !2127, inlinedAt: !2142)
!2410 = !DILocation(line: 1051, column: 68, scope: !2127, inlinedAt: !2142)
!2411 = !DILocation(line: 1058, column: 27, scope: !2127, inlinedAt: !2142)
!2412 = !DILocation(line: 1058, column: 19, scope: !2127, inlinedAt: !2142)
!2413 = !DILocation(line: 1054, column: 28, scope: !2127, inlinedAt: !2142)
!2414 = !DILocation(line: 1061, column: 10, scope: !2127, inlinedAt: !2142)
!2415 = !DILocation(line: 1061, column: 5, scope: !2127, inlinedAt: !2142)
!2416 = !DILocation(line: 1061, column: 8, scope: !2127, inlinedAt: !2142)
!2417 = !DILocation(line: 1062, column: 10, scope: !2127, inlinedAt: !2142)
!2418 = !DILocation(line: 1062, column: 5, scope: !2127, inlinedAt: !2142)
!2419 = !DILocation(line: 1062, column: 8, scope: !2127, inlinedAt: !2142)
!2420 = !DILocation(line: 1053, column: 7, scope: !2127, inlinedAt: !2142)
!2421 = !DILocation(line: 1066, column: 9, scope: !2422, inlinedAt: !2142)
!2422 = distinct !DILexicalBlock(scope: !2423, file: !3, line: 1065, column: 5)
!2423 = distinct !DILexicalBlock(scope: !2424, file: !3, line: 1064, column: 3)
!2424 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1064, column: 3)
!2425 = !DILocation(line: 1066, column: 12, scope: !2422, inlinedAt: !2142)
!2426 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !2427)
!2427 = distinct !DILocation(line: 1068, column: 3, scope: !2127, inlinedAt: !2142)
!2428 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !2427)
!2429 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !2427)
!2430 = !DILocation(line: 822, column: 11, scope: !1209, inlinedAt: !2427)
!2431 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !2427)
!2432 = !DILocation(line: 0, scope: !1156, inlinedAt: !2427)
!2433 = !DILocation(line: 828, column: 7, scope: !1156, inlinedAt: !2427)
!2434 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !2427)
!2435 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !2427)
!2436 = !DILocation(line: 1069, column: 11, scope: !2127, inlinedAt: !2142)
!2437 = !DILocation(line: 1056, column: 21, scope: !2127, inlinedAt: !2142)
!2438 = !DILocation(line: 1070, column: 3, scope: !2126, inlinedAt: !2142)
!2439 = !DILocation(line: 1073, column: 49, scope: !2124, inlinedAt: !2142)
!2440 = !DILocation(line: 1073, column: 32, scope: !2124, inlinedAt: !2142)
!2441 = !DILocation(line: 1073, column: 16, scope: !2124, inlinedAt: !2142)
!2442 = !DILocation(line: 1073, column: 40, scope: !2124, inlinedAt: !2142)
!2443 = !DILocation(line: 1073, column: 47, scope: !2124, inlinedAt: !2142)
!2444 = !DILocation(line: 1055, column: 17, scope: !2127, inlinedAt: !2142)
!2445 = !DILocation(line: 1076, column: 30, scope: !2446, inlinedAt: !2142)
!2446 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 1076, column: 11)
!2447 = !DILocation(line: 1076, column: 11, scope: !2124, inlinedAt: !2142)
!2448 = !DILocation(line: 1079, column: 15, scope: !2446, inlinedAt: !2142)
!2449 = !DILocation(line: 1079, column: 10, scope: !2446, inlinedAt: !2142)
!2450 = !DILocation(line: 1056, column: 28, scope: !2127, inlinedAt: !2142)
!2451 = !DILocation(line: 0, scope: !2446, inlinedAt: !2142)
!2452 = !DILocation(line: 1008, column: 26, scope: !2109, inlinedAt: !2123)
!2453 = !DILocation(line: 1008, column: 49, scope: !2109, inlinedAt: !2123)
!2454 = !DILocation(line: 1008, column: 72, scope: !2109, inlinedAt: !2123)
!2455 = !DILocation(line: 1013, column: 3, scope: !2109, inlinedAt: !2123)
!2456 = !DILocation(line: 1017, column: 8, scope: !2109, inlinedAt: !2123)
!2457 = !DILocation(line: 1014, column: 17, scope: !2109, inlinedAt: !2123)
!2458 = !DILocation(line: 1010, column: 28, scope: !2109, inlinedAt: !2123)
!2459 = !DILocation(line: 1019, column: 9, scope: !2109, inlinedAt: !2123)
!2460 = !DILocation(line: 1020, column: 7, scope: !2109, inlinedAt: !2123)
!2461 = !DILocation(line: 1012, column: 19, scope: !2109, inlinedAt: !2123)
!2462 = !DILocation(line: 1015, column: 7, scope: !2109, inlinedAt: !2123)
!2463 = !DILocation(line: 1023, column: 3, scope: !2464, inlinedAt: !2123)
!2464 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 1023, column: 3)
!2465 = !DILocation(line: 1025, column: 11, scope: !2466, inlinedAt: !2123)
!2466 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 1025, column: 11)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 1024, column: 5)
!2468 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 1023, column: 3)
!2469 = !DILocation(line: 1025, column: 15, scope: !2466, inlinedAt: !2123)
!2470 = !DILocation(line: 1025, column: 11, scope: !2467, inlinedAt: !2123)
!2471 = !DILocation(line: 1028, column: 4, scope: !2472, inlinedAt: !2123)
!2472 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1026, column: 2)
!2473 = !DILocation(line: 1030, column: 2, scope: !2472, inlinedAt: !2123)
!2474 = !DILocation(line: 1033, column: 28, scope: !2475, inlinedAt: !2123)
!2475 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 1032, column: 2)
!2476 = !DILocation(line: 1033, column: 27, scope: !2475, inlinedAt: !2123)
!2477 = !DILocation(line: 1014, column: 21, scope: !2109, inlinedAt: !2123)
!2478 = !DILocation(line: 1034, column: 15, scope: !2475, inlinedAt: !2123)
!2479 = !DILocation(line: 1034, column: 27, scope: !2475, inlinedAt: !2123)
!2480 = !DILocation(line: 1034, column: 25, scope: !2475, inlinedAt: !2123)
!2481 = !DILocation(line: 1011, column: 26, scope: !2109, inlinedAt: !2123)
!2482 = !DILocation(line: 1035, column: 12, scope: !2475, inlinedAt: !2123)
!2483 = !DILocation(line: 1035, column: 7, scope: !2475, inlinedAt: !2123)
!2484 = !DILocation(line: 1035, column: 10, scope: !2475, inlinedAt: !2123)
!2485 = !DILocation(line: 1036, column: 19, scope: !2475, inlinedAt: !2123)
!2486 = !DILocation(line: 1036, column: 31, scope: !2475, inlinedAt: !2123)
!2487 = !DILocation(line: 1036, column: 26, scope: !2475, inlinedAt: !2123)
!2488 = !DILocation(line: 1036, column: 40, scope: !2475, inlinedAt: !2123)
!2489 = !DILocation(line: 1036, column: 38, scope: !2475, inlinedAt: !2123)
!2490 = !DILocation(line: 1037, column: 10, scope: !2475, inlinedAt: !2123)
!2491 = !DILocation(line: 1037, column: 8, scope: !2475, inlinedAt: !2123)
!2492 = !DILocation(line: 1038, column: 22, scope: !2475, inlinedAt: !2123)
!2493 = !DILocation(line: 1038, column: 16, scope: !2475, inlinedAt: !2123)
!2494 = !DILocation(line: 0, scope: !2475, inlinedAt: !2123)
!2495 = !DILocation(line: 1029, column: 9, scope: !2472, inlinedAt: !2123)
!2496 = !DILocation(line: 1029, column: 14, scope: !2472, inlinedAt: !2123)
!2497 = !DILocation(line: 1023, column: 28, scope: !2468, inlinedAt: !2123)
!2498 = !DILocation(line: 1023, column: 21, scope: !2468, inlinedAt: !2123)
!2499 = distinct !{!2499, !2500, !2501}
!2500 = !DILocation(line: 1023, column: 3, scope: !2464)
!2501 = !DILocation(line: 1040, column: 5, scope: !2464)
!2502 = !DILocation(line: 1042, column: 12, scope: !2503, inlinedAt: !2123)
!2503 = distinct !DILexicalBlock(scope: !2504, file: !3, line: 1041, column: 3)
!2504 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 1041, column: 3)
!2505 = !DILocation(line: 1057, column: 18, scope: !2127, inlinedAt: !2142)
!2506 = !DILocation(line: 1043, column: 1, scope: !2109, inlinedAt: !2123)
!2507 = !DILocation(line: 786, column: 37, scope: !866, inlinedAt: !2508)
!2508 = distinct !DILocation(line: 1090, column: 11, scope: !2509, inlinedAt: !2142)
!2509 = distinct !DILexicalBlock(scope: !2124, file: !3, line: 1090, column: 11)
!2510 = !DILocation(line: 786, column: 69, scope: !866, inlinedAt: !2508)
!2511 = !DILocation(line: 788, column: 7, scope: !866, inlinedAt: !2508)
!2512 = !DILocation(line: 794, column: 19, scope: !878, inlinedAt: !2508)
!2513 = !DILocation(line: 794, column: 16, scope: !878, inlinedAt: !2508)
!2514 = !DILocation(line: 794, column: 11, scope: !879, inlinedAt: !2508)
!2515 = !DILocation(line: 794, column: 11, scope: !878, inlinedAt: !2508)
!2516 = !DILocation(line: 800, column: 14, scope: !921, inlinedAt: !2508)
!2517 = !DILocation(line: 1092, column: 10, scope: !2518, inlinedAt: !2142)
!2518 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 1091, column: 2)
!2519 = !DILocation(line: 978, column: 28, scope: !971, inlinedAt: !2520)
!2520 = distinct !DILocation(line: 1093, column: 4, scope: !2518, inlinedAt: !2142)
!2521 = !DILocation(line: 978, column: 51, scope: !971, inlinedAt: !2520)
!2522 = !DILocation(line: 982, column: 16, scope: !971, inlinedAt: !2520)
!2523 = !DILocation(line: 981, column: 7, scope: !971, inlinedAt: !2520)
!2524 = !DILocation(line: 989, column: 11, scope: !984, inlinedAt: !2520)
!2525 = !DILocation(line: 989, column: 51, scope: !984, inlinedAt: !2520)
!2526 = !DILocation(line: 989, column: 34, scope: !984, inlinedAt: !2520)
!2527 = !DILocation(line: 989, column: 32, scope: !984, inlinedAt: !2520)
!2528 = !DILocation(line: 980, column: 17, scope: !971, inlinedAt: !2520)
!2529 = !DILocation(line: 994, column: 12, scope: !984, inlinedAt: !2520)
!2530 = !DILocation(line: 989, column: 55, scope: !984, inlinedAt: !2520)
!2531 = !DILocation(line: 786, column: 37, scope: !866, inlinedAt: !2532)
!2532 = distinct !DILocation(line: 1094, column: 8, scope: !2533, inlinedAt: !2142)
!2533 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 1094, column: 8)
!2534 = !DILocation(line: 786, column: 69, scope: !866, inlinedAt: !2532)
!2535 = !DILocation(line: 788, column: 7, scope: !866, inlinedAt: !2532)
!2536 = !DILocation(line: 794, column: 16, scope: !878, inlinedAt: !2532)
!2537 = !DILocation(line: 794, column: 11, scope: !879, inlinedAt: !2532)
!2538 = !DILocation(line: 794, column: 19, scope: !878, inlinedAt: !2532)
!2539 = !DILocation(line: 794, column: 11, scope: !878, inlinedAt: !2532)
!2540 = !DILocation(line: 800, column: 14, scope: !921, inlinedAt: !2532)
!2541 = !DILocation(line: 1096, column: 14, scope: !2542, inlinedAt: !2142)
!2542 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 1095, column: 6)
!2543 = !DILocation(line: 978, column: 28, scope: !971, inlinedAt: !2544)
!2544 = distinct !DILocation(line: 1097, column: 8, scope: !2542, inlinedAt: !2142)
!2545 = !DILocation(line: 978, column: 51, scope: !971, inlinedAt: !2544)
!2546 = !DILocation(line: 982, column: 16, scope: !971, inlinedAt: !2544)
!2547 = !DILocation(line: 981, column: 7, scope: !971, inlinedAt: !2544)
!2548 = !DILocation(line: 989, column: 11, scope: !984, inlinedAt: !2544)
!2549 = !DILocation(line: 989, column: 32, scope: !984, inlinedAt: !2544)
!2550 = !DILocation(line: 980, column: 17, scope: !971, inlinedAt: !2544)
!2551 = !DILocation(line: 994, column: 12, scope: !984, inlinedAt: !2544)
!2552 = !DILocation(line: 989, column: 55, scope: !984, inlinedAt: !2544)
!2553 = !DILocation(line: 1098, column: 6, scope: !2542, inlinedAt: !2142)
!2554 = !DILocation(line: 0, scope: !2124, inlinedAt: !2142)
!2555 = !DILocation(line: 978, column: 28, scope: !971, inlinedAt: !2556)
!2556 = distinct !DILocation(line: 1109, column: 7, scope: !2124, inlinedAt: !2142)
!2557 = !DILocation(line: 978, column: 51, scope: !971, inlinedAt: !2556)
!2558 = !DILocation(line: 982, column: 16, scope: !971, inlinedAt: !2556)
!2559 = !DILocation(line: 981, column: 7, scope: !971, inlinedAt: !2556)
!2560 = !DILocation(line: 989, column: 28, scope: !984, inlinedAt: !2556)
!2561 = !DILocation(line: 989, column: 11, scope: !984, inlinedAt: !2556)
!2562 = !DILocation(line: 989, column: 34, scope: !984, inlinedAt: !2556)
!2563 = !DILocation(line: 989, column: 32, scope: !984, inlinedAt: !2556)
!2564 = !DILocation(line: 980, column: 17, scope: !971, inlinedAt: !2556)
!2565 = !DILocation(line: 994, column: 12, scope: !984, inlinedAt: !2556)
!2566 = !DILocation(line: 989, column: 55, scope: !984, inlinedAt: !2556)
!2567 = !DILocation(line: 1119, column: 7, scope: !2124, inlinedAt: !2142)
!2568 = !DILocation(line: 1119, column: 16, scope: !2124, inlinedAt: !2142)
!2569 = !DILocalVariable(name: "x", arg: 1, scope: !2570, file: !3, line: 911, type: !377)
!2570 = distinct !DISubprogram(name: "eshup6", scope: !3, file: !3, line: 911, type: !671, isLocal: true, isDefinition: true, scopeLine: 912, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2571)
!2571 = !{!2569, !2572, !2573}
!2572 = !DILocalVariable(name: "i", scope: !2570, file: !3, line: 913, type: !8)
!2573 = !DILocalVariable(name: "p", scope: !2570, file: !3, line: 914, type: !377)
!2574 = !DILocation(line: 911, column: 38, scope: !2570, inlinedAt: !2575)
!2575 = distinct !DILocation(line: 1120, column: 7, scope: !2124, inlinedAt: !2142)
!2576 = !DILocation(line: 914, column: 28, scope: !2570, inlinedAt: !2575)
!2577 = !DILocation(line: 913, column: 7, scope: !2570, inlinedAt: !2575)
!2578 = !DILocation(line: 920, column: 10, scope: !2579, inlinedAt: !2575)
!2579 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 919, column: 3)
!2580 = distinct !DILexicalBlock(scope: !2570, file: !3, line: 919, column: 3)
!2581 = !DILocation(line: 922, column: 6, scope: !2570, inlinedAt: !2575)
!2582 = !DILocation(line: 1070, column: 24, scope: !2125, inlinedAt: !2142)
!2583 = !DILocation(line: 1070, column: 17, scope: !2125, inlinedAt: !2142)
!2584 = distinct !{!2584, !2585, !2586}
!2585 = !DILocation(line: 1070, column: 3, scope: !2126)
!2586 = !DILocation(line: 1121, column: 5, scope: !2126)
!2587 = !DILocation(line: 1056, column: 18, scope: !2127, inlinedAt: !2142)
!2588 = !DILocation(line: 1127, column: 9, scope: !2589, inlinedAt: !2142)
!2589 = distinct !DILexicalBlock(scope: !2590, file: !3, line: 1126, column: 5)
!2590 = distinct !DILexicalBlock(scope: !2591, file: !3, line: 1125, column: 3)
!2591 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1125, column: 3)
!2592 = !DILocation(line: 1133, column: 14, scope: !2593, inlinedAt: !2142)
!2593 = distinct !DILexicalBlock(scope: !2594, file: !3, line: 1132, column: 3)
!2594 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1132, column: 3)
!2595 = !DILocation(line: 1133, column: 12, scope: !2593, inlinedAt: !2142)
!2596 = !DILocation(line: 1129, column: 7, scope: !2597, inlinedAt: !2142)
!2597 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 1129, column: 7)
!2598 = !DILocation(line: 1135, column: 11, scope: !2127, inlinedAt: !2142)
!2599 = !DILocation(line: 1652, column: 12, scope: !2096)
!2600 = !DILocation(line: 1652, column: 18, scope: !2096)
!2601 = !DILocation(line: 1571, column: 8, scope: !2096)
!2602 = !DILocation(line: 1653, column: 3, scope: !2096)
!2603 = !DILocation(line: 1655, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 1655, column: 7)
!2605 = !DILocation(line: 1655, column: 16, scope: !2604)
!2606 = !DILocation(line: 1655, column: 13, scope: !2604)
!2607 = !DILocation(line: 1656, column: 5, scope: !2604)
!2608 = !DILocation(line: 0, scope: !2604)
!2609 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !2610)
!2610 = distinct !DILocation(line: 1659, column: 3, scope: !2096)
!2611 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !2610)
!2612 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !2610)
!2613 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !2610)
!2614 = !DILocation(line: 668, column: 9, scope: !838, inlinedAt: !2610)
!2615 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !2610)
!2616 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !2610)
!2617 = !DILocation(line: 0, scope: !853, inlinedAt: !2610)
!2618 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !2610)
!2619 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !2610)
!2620 = !DILocation(line: 676, column: 16, scope: !999, inlinedAt: !2610)
!2621 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !2610)
!2622 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !2623)
!2623 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !2610)
!2624 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !2623)
!2625 = !DILocation(line: 749, column: 8, scope: !1021, inlinedAt: !2623)
!2626 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !2623)
!2627 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !2628)
!2628 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !2610)
!2629 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !2628)
!2630 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !2628)
!2631 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !2628)
!2632 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !2628)
!2633 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !2610)
!2634 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !2635)
!2635 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !2610)
!2636 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !2635)
!2637 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !2635)
!2638 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !2635)
!2639 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !2635)
!2640 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !2610)
!2641 = !DILocation(line: 693, column: 12, scope: !1001, inlinedAt: !2610)
!2642 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !2610)
!2643 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !2610)
!2644 = !DILocation(line: 1660, column: 1, scope: !2096)
!2645 = !DILocation(line: 1640, column: 11, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 1640, column: 11)
!2647 = !DILocation(line: 1640, column: 20, scope: !2646)
!2648 = !DILocation(line: 1640, column: 17, scope: !2646)
!2649 = !DILocation(line: 0, scope: !2646)
!2650 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !2651)
!2651 = distinct !DILocation(line: 1644, column: 7, scope: !2401)
!2652 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !2651)
!2653 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !2651)
!2654 = !DILocation(line: 579, column: 7, scope: !1052, inlinedAt: !2651)
!2655 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !2651)
!2656 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !2651)
!2657 = !DILocation(line: 1646, column: 7, scope: !2401)
!2658 = !DILocation(line: 1619, column: 8, scope: !2385)
!2659 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !2660)
!2660 = distinct !DILocation(line: 1625, column: 7, scope: !2388)
!2661 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !2660)
!2662 = !DILocation(line: 465, column: 7, scope: !680, inlinedAt: !2660)
!2663 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !2660)
!2664 = !DILocation(line: 1626, column: 7, scope: !2388)
!2665 = distinct !DISubprogram(name: "emul", scope: !3, file: !3, line: 1672, type: !396, isLocal: true, isDefinition: true, scopeLine: 1674, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2666)
!2666 = !{!2667, !2668, !2669, !2670, !2671, !2672, !2673, !2674, !2675, !2676, !2677}
!2667 = !DILocalVariable(name: "a", arg: 1, scope: !2665, file: !3, line: 1672, type: !376)
!2668 = !DILocalVariable(name: "b", arg: 2, scope: !2665, file: !3, line: 1672, type: !376)
!2669 = !DILocalVariable(name: "c", arg: 3, scope: !2665, file: !3, line: 1673, type: !377)
!2670 = !DILocalVariable(name: "ldp", arg: 4, scope: !2665, file: !3, line: 1673, type: !361)
!2671 = !DILocalVariable(name: "ai", scope: !2665, file: !3, line: 1675, type: !338)
!2672 = !DILocalVariable(name: "bi", scope: !2665, file: !3, line: 1675, type: !338)
!2673 = !DILocalVariable(name: "i", scope: !2665, file: !3, line: 1676, type: !8)
!2674 = !DILocalVariable(name: "j", scope: !2665, file: !3, line: 1676, type: !8)
!2675 = !DILocalVariable(name: "lt", scope: !2665, file: !3, line: 1677, type: !12)
!2676 = !DILocalVariable(name: "lta", scope: !2665, file: !3, line: 1677, type: !12)
!2677 = !DILocalVariable(name: "ltb", scope: !2665, file: !3, line: 1677, type: !12)
!2678 = !DILocation(line: 1013, column: 18, scope: !2109, inlinedAt: !2679)
!2679 = distinct !DILocation(line: 1166, column: 4, scope: !2680, inlinedAt: !2696)
!2680 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 1165, column: 2)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 1160, column: 11)
!2682 = distinct !DILexicalBlock(scope: !2683, file: !3, line: 1159, column: 5)
!2683 = distinct !DILexicalBlock(scope: !2684, file: !3, line: 1158, column: 3)
!2684 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1158, column: 3)
!2685 = distinct !DISubprogram(name: "emulm", scope: !3, file: !3, line: 1142, type: !2128, isLocal: true, isDefinition: true, scopeLine: 1143, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2686)
!2686 = !{!2687, !2688, !2689, !2690, !2691, !2692, !2693, !2694, !2695}
!2687 = !DILocalVariable(name: "a", arg: 1, scope: !2685, file: !3, line: 1142, type: !377)
!2688 = !DILocalVariable(name: "b", arg: 2, scope: !2685, file: !3, line: 1142, type: !377)
!2689 = !DILocalVariable(name: "ldp", arg: 3, scope: !2685, file: !3, line: 1142, type: !361)
!2690 = !DILocalVariable(name: "p", scope: !2685, file: !3, line: 1144, type: !377)
!2691 = !DILocalVariable(name: "q", scope: !2685, file: !3, line: 1144, type: !377)
!2692 = !DILocalVariable(name: "pprod", scope: !2685, file: !3, line: 1145, type: !338)
!2693 = !DILocalVariable(name: "j", scope: !2685, file: !3, line: 1146, type: !11)
!2694 = !DILocalVariable(name: "i", scope: !2685, file: !3, line: 1147, type: !8)
!2695 = !DILocalVariable(name: "equot", scope: !2685, file: !3, line: 1148, type: !377)
!2696 = distinct !DILocation(line: 1747, column: 7, scope: !2665)
!2697 = !DILocation(line: 1672, column: 34, scope: !2665)
!2698 = !DILocation(line: 1672, column: 64, scope: !2665)
!2699 = !DILocation(line: 1673, column: 27, scope: !2665)
!2700 = !DILocation(line: 1673, column: 40, scope: !2665)
!2701 = !DILocation(line: 1675, column: 3, scope: !2665)
!2702 = !DILocation(line: 1675, column: 18, scope: !2665)
!2703 = !DILocation(line: 1675, column: 26, scope: !2665)
!2704 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2705)
!2705 = distinct !DILocation(line: 1681, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1681, column: 7)
!2707 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !2705)
!2708 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !2705)
!2709 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !2705)
!2710 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2705)
!2711 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2705)
!2712 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2705)
!2713 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2705)
!2714 = !DILocation(line: 0, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 1682, column: 5)
!2716 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2705)
!2717 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2705)
!2718 = !DILocation(line: 1681, column: 7, scope: !2665)
!2719 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 1683, column: 7, scope: !2715)
!2721 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !2720)
!2722 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !2720)
!2723 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !2720)
!2724 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !2720)
!2725 = !DILocation(line: 481, column: 14, scope: !575, inlinedAt: !2720)
!2726 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !2720)
!2727 = !DILocation(line: 1684, column: 7, scope: !2715)
!2728 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2729)
!2729 = distinct !DILocation(line: 1686, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1686, column: 7)
!2731 = !DILocation(line: 551, column: 8, scope: !533, inlinedAt: !2729)
!2732 = !DILocation(line: 551, column: 18, scope: !533, inlinedAt: !2729)
!2733 = !DILocation(line: 551, column: 28, scope: !533, inlinedAt: !2729)
!2734 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2729)
!2735 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2729)
!2736 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2729)
!2737 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2729)
!2738 = !DILocation(line: 0, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2730, file: !3, line: 1687, column: 5)
!2740 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2729)
!2741 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2729)
!2742 = !DILocation(line: 1686, column: 7, scope: !2665)
!2743 = !DILocation(line: 476, column: 43, scope: !577, inlinedAt: !2744)
!2744 = distinct !DILocation(line: 1688, column: 7, scope: !2739)
!2745 = !DILocation(line: 476, column: 75, scope: !577, inlinedAt: !2744)
!2746 = !DILocation(line: 478, column: 16, scope: !577, inlinedAt: !2744)
!2747 = !DILocation(line: 481, column: 7, scope: !575, inlinedAt: !2744)
!2748 = !DILocation(line: 481, column: 10, scope: !575, inlinedAt: !2744)
!2749 = !DILocation(line: 481, column: 14, scope: !575, inlinedAt: !2744)
!2750 = !DILocation(line: 481, column: 12, scope: !575, inlinedAt: !2744)
!2751 = !DILocation(line: 1689, column: 7, scope: !2739)
!2752 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2753)
!2753 = distinct !DILocation(line: 1692, column: 8, scope: !2754)
!2754 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1692, column: 7)
!2755 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2753)
!2756 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2757)
!2757 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2753)
!2758 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2757)
!2759 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2757)
!2760 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2757)
!2761 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2757)
!2762 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2757)
!2763 = !DILocation(line: 1692, column: 19, scope: !2754)
!2764 = !DILocation(line: 1692, column: 23, scope: !2754)
!2765 = !DILocation(line: 1692, column: 39, scope: !2754)
!2766 = !DILocation(line: 1693, column: 7, scope: !2754)
!2767 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2768)
!2768 = distinct !DILocation(line: 1693, column: 11, scope: !2754)
!2769 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2768)
!2770 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2771)
!2771 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2768)
!2772 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2771)
!2773 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2771)
!2774 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2771)
!2775 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2771)
!2776 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2771)
!2777 = !DILocation(line: 1693, column: 22, scope: !2754)
!2778 = !DILocation(line: 1693, column: 26, scope: !2754)
!2779 = !DILocation(line: 1693, column: 42, scope: !2754)
!2780 = !DILocation(line: 1692, column: 7, scope: !2665)
!2781 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !2782)
!2782 = distinct !DILocation(line: 1696, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 1694, column: 5)
!2784 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !2782)
!2785 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !2782)
!2786 = !DILocation(line: 3835, column: 7, scope: !1892, inlinedAt: !2782)
!2787 = !DILocation(line: 3836, column: 9, scope: !1891, inlinedAt: !2782)
!2788 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !2782)
!2789 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !2782)
!2790 = !DILocation(line: 1697, column: 7, scope: !2783)
!2791 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2792)
!2792 = distinct !DILocation(line: 1702, column: 7, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1702, column: 7)
!2794 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2792)
!2795 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2796)
!2796 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2792)
!2797 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2796)
!2798 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2796)
!2799 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2796)
!2800 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2796)
!2801 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2796)
!2802 = !DILocation(line: 1702, column: 18, scope: !2793)
!2803 = !DILocation(line: 527, column: 36, scope: !746, inlinedAt: !2804)
!2804 = distinct !DILocation(line: 1702, column: 21, scope: !2793)
!2805 = !DILocation(line: 530, column: 7, scope: !746, inlinedAt: !2804)
!2806 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2807)
!2807 = distinct !DILocation(line: 533, column: 11, scope: !743, inlinedAt: !2804)
!2808 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2807)
!2809 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2807)
!2810 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2807)
!2811 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2807)
!2812 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2807)
!2813 = !DILocation(line: 1702, column: 7, scope: !2665)
!2814 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2815)
!2815 = distinct !DILocation(line: 1704, column: 11, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2817, file: !3, line: 1704, column: 11)
!2817 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 1703, column: 5)
!2818 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2819)
!2819 = distinct !DILocation(line: 513, column: 7, scope: !531, inlinedAt: !2815)
!2820 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2819)
!2821 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2819)
!2822 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2819)
!2823 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2819)
!2824 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2819)
!2825 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2819)
!2826 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2815)
!2827 = !DILocation(line: 517, column: 5, scope: !2263, inlinedAt: !2815)
!2828 = !DILocation(line: 0, scope: !2263, inlinedAt: !2815)
!2829 = !DILocation(line: 509, column: 36, scope: !518, inlinedAt: !2830)
!2830 = distinct !DILocation(line: 1704, column: 24, scope: !2816)
!2831 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 513, column: 7, scope: !531, inlinedAt: !2830)
!2833 = !DILocation(line: 551, column: 7, scope: !526, inlinedAt: !2832)
!2834 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2832)
!2835 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2832)
!2836 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2832)
!2837 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2832)
!2838 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2832)
!2839 = !DILocation(line: 513, column: 7, scope: !518, inlinedAt: !2830)
!2840 = !DILocation(line: 517, column: 5, scope: !2263, inlinedAt: !2830)
!2841 = !DILocation(line: 0, scope: !2263, inlinedAt: !2830)
!2842 = !DILocation(line: 1704, column: 22, scope: !2816)
!2843 = !DILocation(line: 0, scope: !2816)
!2844 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !2845)
!2845 = distinct !DILocation(line: 1708, column: 7, scope: !2817)
!2846 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !2845)
!2847 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !2845)
!2848 = !DILocation(line: 579, column: 7, scope: !1052, inlinedAt: !2845)
!2849 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !2845)
!2850 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !2845)
!2851 = !DILocation(line: 1709, column: 7, scope: !2817)
!2852 = !DILocation(line: 1712, column: 13, scope: !2665)
!2853 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !2854)
!2854 = distinct !DILocation(line: 1712, column: 3, scope: !2665)
!2855 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !2854)
!2856 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !2854)
!2857 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !2854)
!2858 = !DILocation(line: 0, scope: !782, inlinedAt: !2854)
!2859 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !2854)
!2860 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !2854)
!2861 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !2854)
!2862 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !2854)
!2863 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !2854)
!2864 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2865)
!2865 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !2854)
!2866 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2865)
!2867 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2865)
!2868 = !DILocation(line: 0, scope: !2665)
!2869 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2865)
!2870 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2865)
!2871 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2865)
!2872 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !2854)
!2873 = !DILocation(line: 0, scope: !1306, inlinedAt: !2854)
!2874 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !2854)
!2875 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !2854)
!2876 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !2854)
!2877 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !2854)
!2878 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !2854)
!2879 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !2854)
!2880 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !2854)
!2881 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !2854)
!2882 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !2854)
!2883 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !2854)
!2884 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !2854)
!2885 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !2854)
!2886 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !2854)
!2887 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !2854)
!2888 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !2854)
!2889 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !2854)
!2890 = !DILocation(line: 1713, column: 13, scope: !2665)
!2891 = !DILocation(line: 615, column: 35, scope: !760, inlinedAt: !2892)
!2892 = distinct !DILocation(line: 1713, column: 3, scope: !2665)
!2893 = !DILocation(line: 615, column: 58, scope: !760, inlinedAt: !2892)
!2894 = !DILocation(line: 618, column: 28, scope: !760, inlinedAt: !2892)
!2895 = !DILocation(line: 617, column: 35, scope: !760, inlinedAt: !2892)
!2896 = !DILocation(line: 0, scope: !782, inlinedAt: !2892)
!2897 = !DILocation(line: 625, column: 5, scope: !782, inlinedAt: !2892)
!2898 = !DILocation(line: 629, column: 10, scope: !760, inlinedAt: !2892)
!2899 = !DILocation(line: 630, column: 5, scope: !760, inlinedAt: !2892)
!2900 = !DILocation(line: 630, column: 8, scope: !760, inlinedAt: !2892)
!2901 = !DILocation(line: 632, column: 7, scope: !760, inlinedAt: !2892)
!2902 = !DILocation(line: 545, column: 36, scope: !526, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 635, column: 11, scope: !1300, inlinedAt: !2892)
!2904 = !DILocation(line: 549, column: 7, scope: !526, inlinedAt: !2903)
!2905 = !DILocation(line: 556, column: 11, scope: !540, inlinedAt: !2903)
!2906 = !DILocation(line: 556, column: 11, scope: !541, inlinedAt: !2903)
!2907 = !DILocation(line: 556, column: 13, scope: !540, inlinedAt: !2903)
!2908 = !DILocation(line: 556, column: 16, scope: !540, inlinedAt: !2903)
!2909 = !DILocation(line: 639, column: 13, scope: !1309, inlinedAt: !2892)
!2910 = !DILocation(line: 0, scope: !1306, inlinedAt: !2892)
!2911 = !DILocation(line: 619, column: 7, scope: !760, inlinedAt: !2892)
!2912 = !DILocation(line: 635, column: 11, scope: !1301, inlinedAt: !2892)
!2913 = !DILocation(line: 644, column: 4, scope: !1314, inlinedAt: !2892)
!2914 = !DILocation(line: 644, column: 7, scope: !1314, inlinedAt: !2892)
!2915 = !DILocation(line: 655, column: 1, scope: !760, inlinedAt: !2892)
!2916 = !DILocation(line: 639, column: 8, scope: !1309, inlinedAt: !2892)
!2917 = !DILocation(line: 639, column: 11, scope: !1309, inlinedAt: !2892)
!2918 = !DILocation(line: 639, column: 15, scope: !1309, inlinedAt: !2892)
!2919 = !DILocation(line: 649, column: 5, scope: !760, inlinedAt: !2892)
!2920 = !DILocation(line: 649, column: 8, scope: !760, inlinedAt: !2892)
!2921 = !DILocation(line: 652, column: 14, scope: !772, inlinedAt: !2892)
!2922 = !DILocation(line: 652, column: 12, scope: !772, inlinedAt: !2892)
!2923 = !DILocation(line: 652, column: 7, scope: !772, inlinedAt: !2892)
!2924 = !DILocation(line: 652, column: 10, scope: !772, inlinedAt: !2892)
!2925 = !DILocation(line: 651, column: 3, scope: !773, inlinedAt: !2892)
!2926 = !DILocation(line: 654, column: 6, scope: !760, inlinedAt: !2892)
!2927 = !DILocation(line: 1714, column: 9, scope: !2665)
!2928 = !DILocation(line: 1677, column: 12, scope: !2665)
!2929 = !DILocation(line: 1715, column: 9, scope: !2665)
!2930 = !DILocation(line: 1677, column: 17, scope: !2665)
!2931 = !DILocation(line: 1716, column: 13, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1716, column: 7)
!2933 = !DILocation(line: 1716, column: 7, scope: !2665)
!2934 = !DILocation(line: 1722, column: 15, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 1721, column: 6)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 1720, column: 8)
!2937 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 1719, column: 2)
!2938 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 1718, column: 7)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !3, line: 1718, column: 7)
!2940 = distinct !DILexicalBlock(scope: !2932, file: !3, line: 1717, column: 5)
!2941 = !DILocation(line: 1722, column: 12, scope: !2935)
!2942 = !DILocation(line: 1731, column: 7, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1731, column: 7)
!2944 = !DILocation(line: 1723, column: 8, scope: !2935)
!2945 = !DILocation(line: 1731, column: 13, scope: !2943)
!2946 = !DILocation(line: 1731, column: 7, scope: !2665)
!2947 = !DILocation(line: 1676, column: 7, scope: !2665)
!2948 = !DILocation(line: 1735, column: 8, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 1735, column: 8)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 1734, column: 2)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 1733, column: 7)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !3, line: 1733, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 1732, column: 5)
!2954 = !DILocation(line: 1735, column: 14, scope: !2949)
!2955 = !DILocation(line: 1735, column: 8, scope: !2950)
!2956 = !DILocation(line: 1737, column: 15, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2949, file: !3, line: 1736, column: 6)
!2958 = !DILocation(line: 1737, column: 12, scope: !2957)
!2959 = !DILocation(line: 1151, column: 14, scope: !2685, inlinedAt: !2696)
!2960 = !DILocation(line: 1738, column: 8, scope: !2957)
!2961 = !DILocation(line: 1142, column: 28, scope: !2685, inlinedAt: !2696)
!2962 = !DILocation(line: 1142, column: 51, scope: !2685, inlinedAt: !2696)
!2963 = !DILocation(line: 1142, column: 64, scope: !2685, inlinedAt: !2696)
!2964 = !DILocation(line: 1148, column: 27, scope: !2685, inlinedAt: !2696)
!2965 = !DILocation(line: 1148, column: 19, scope: !2685, inlinedAt: !2696)
!2966 = !DILocation(line: 1150, column: 14, scope: !2685, inlinedAt: !2696)
!2967 = !DILocation(line: 1150, column: 12, scope: !2685, inlinedAt: !2696)
!2968 = !DILocation(line: 1151, column: 3, scope: !2685, inlinedAt: !2696)
!2969 = !DILocation(line: 1151, column: 12, scope: !2685, inlinedAt: !2696)
!2970 = !DILocation(line: 1147, column: 7, scope: !2685, inlinedAt: !2696)
!2971 = !DILocation(line: 1153, column: 5, scope: !2972, inlinedAt: !2696)
!2972 = distinct !DILexicalBlock(scope: !2973, file: !3, line: 1152, column: 3)
!2973 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1152, column: 3)
!2974 = !DILocation(line: 1153, column: 14, scope: !2972, inlinedAt: !2696)
!2975 = !DILocation(line: 1146, column: 18, scope: !2685, inlinedAt: !2696)
!2976 = !DILocation(line: 1156, column: 8, scope: !2685, inlinedAt: !2696)
!2977 = !DILocation(line: 1144, column: 19, scope: !2685, inlinedAt: !2696)
!2978 = !DILocation(line: 1144, column: 23, scope: !2685, inlinedAt: !2696)
!2979 = !DILocation(line: 1158, column: 3, scope: !2684, inlinedAt: !2696)
!2980 = !DILocation(line: 1160, column: 11, scope: !2681, inlinedAt: !2696)
!2981 = !DILocation(line: 1160, column: 14, scope: !2681, inlinedAt: !2696)
!2982 = !DILocation(line: 0, scope: !2680, inlinedAt: !2696)
!2983 = !DILocation(line: 1160, column: 11, scope: !2682, inlinedAt: !2696)
!2984 = !DILocation(line: 1008, column: 26, scope: !2109, inlinedAt: !2679)
!2985 = !DILocation(line: 1008, column: 49, scope: !2109, inlinedAt: !2679)
!2986 = !DILocation(line: 1008, column: 72, scope: !2109, inlinedAt: !2679)
!2987 = !DILocation(line: 1013, column: 3, scope: !2109, inlinedAt: !2679)
!2988 = !DILocation(line: 1017, column: 8, scope: !2109, inlinedAt: !2679)
!2989 = !DILocation(line: 1014, column: 17, scope: !2109, inlinedAt: !2679)
!2990 = !DILocation(line: 1010, column: 28, scope: !2109, inlinedAt: !2679)
!2991 = !DILocation(line: 1019, column: 9, scope: !2109, inlinedAt: !2679)
!2992 = !DILocation(line: 1020, column: 7, scope: !2109, inlinedAt: !2679)
!2993 = !DILocation(line: 1012, column: 19, scope: !2109, inlinedAt: !2679)
!2994 = !DILocation(line: 1015, column: 7, scope: !2109, inlinedAt: !2679)
!2995 = !DILocation(line: 1023, column: 3, scope: !2464, inlinedAt: !2679)
!2996 = !DILocation(line: 1025, column: 11, scope: !2466, inlinedAt: !2679)
!2997 = !DILocation(line: 1025, column: 15, scope: !2466, inlinedAt: !2679)
!2998 = !DILocation(line: 1025, column: 11, scope: !2467, inlinedAt: !2679)
!2999 = !DILocation(line: 1028, column: 4, scope: !2472, inlinedAt: !2679)
!3000 = !DILocation(line: 1030, column: 2, scope: !2472, inlinedAt: !2679)
!3001 = !DILocation(line: 1033, column: 28, scope: !2475, inlinedAt: !2679)
!3002 = !DILocation(line: 1033, column: 27, scope: !2475, inlinedAt: !2679)
!3003 = !DILocation(line: 1014, column: 21, scope: !2109, inlinedAt: !2679)
!3004 = !DILocation(line: 1034, column: 15, scope: !2475, inlinedAt: !2679)
!3005 = !DILocation(line: 1034, column: 27, scope: !2475, inlinedAt: !2679)
!3006 = !DILocation(line: 1034, column: 25, scope: !2475, inlinedAt: !2679)
!3007 = !DILocation(line: 1011, column: 26, scope: !2109, inlinedAt: !2679)
!3008 = !DILocation(line: 1035, column: 12, scope: !2475, inlinedAt: !2679)
!3009 = !DILocation(line: 1035, column: 7, scope: !2475, inlinedAt: !2679)
!3010 = !DILocation(line: 1035, column: 10, scope: !2475, inlinedAt: !2679)
!3011 = !DILocation(line: 1036, column: 19, scope: !2475, inlinedAt: !2679)
!3012 = !DILocation(line: 1036, column: 31, scope: !2475, inlinedAt: !2679)
!3013 = !DILocation(line: 1036, column: 26, scope: !2475, inlinedAt: !2679)
!3014 = !DILocation(line: 1036, column: 40, scope: !2475, inlinedAt: !2679)
!3015 = !DILocation(line: 1036, column: 38, scope: !2475, inlinedAt: !2679)
!3016 = !DILocation(line: 1037, column: 10, scope: !2475, inlinedAt: !2679)
!3017 = !DILocation(line: 1037, column: 8, scope: !2475, inlinedAt: !2679)
!3018 = !DILocation(line: 1038, column: 22, scope: !2475, inlinedAt: !2679)
!3019 = !DILocation(line: 1038, column: 16, scope: !2475, inlinedAt: !2679)
!3020 = !DILocation(line: 0, scope: !2475, inlinedAt: !2679)
!3021 = !DILocation(line: 1029, column: 9, scope: !2472, inlinedAt: !2679)
!3022 = !DILocation(line: 1029, column: 14, scope: !2472, inlinedAt: !2679)
!3023 = !DILocation(line: 1023, column: 28, scope: !2468, inlinedAt: !2679)
!3024 = !DILocation(line: 1023, column: 21, scope: !2468, inlinedAt: !2679)
!3025 = !DILocation(line: 1042, column: 12, scope: !2503, inlinedAt: !2679)
!3026 = !DILocation(line: 1145, column: 18, scope: !2685, inlinedAt: !2696)
!3027 = !DILocation(line: 1043, column: 1, scope: !2109, inlinedAt: !2679)
!3028 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !3029)
!3029 = distinct !DILocation(line: 1167, column: 4, scope: !2680, inlinedAt: !2696)
!3030 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !3029)
!3031 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !3029)
!3032 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !3029)
!3033 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !3029)
!3034 = !DILocation(line: 961, column: 51, scope: !958, inlinedAt: !3029)
!3035 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !3029)
!3036 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !3029)
!3037 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !3029)
!3038 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !3029)
!3039 = !DILocation(line: 966, column: 10, scope: !958, inlinedAt: !3029)
!3040 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !3029)
!3041 = !DILocation(line: 939, column: 14, scope: !3042, inlinedAt: !3049)
!3042 = distinct !DILexicalBlock(scope: !3043, file: !3, line: 938, column: 3)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !3, line: 938, column: 3)
!3044 = distinct !DISubprogram(name: "eshdn6", scope: !3, file: !3, line: 930, type: !671, isLocal: true, isDefinition: true, scopeLine: 931, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "x", arg: 1, scope: !3044, file: !3, line: 930, type: !377)
!3047 = !DILocalVariable(name: "i", scope: !3044, file: !3, line: 932, type: !8)
!3048 = !DILocalVariable(name: "p", scope: !3044, file: !3, line: 933, type: !377)
!3049 = distinct !DILocation(line: 1170, column: 7, scope: !2682, inlinedAt: !2696)
!3050 = !DILocation(line: 1169, column: 12, scope: !2682, inlinedAt: !2696)
!3051 = !DILocation(line: 1169, column: 9, scope: !2682, inlinedAt: !2696)
!3052 = !DILocation(line: 930, column: 38, scope: !3044, inlinedAt: !3049)
!3053 = !DILocation(line: 933, column: 28, scope: !3044, inlinedAt: !3049)
!3054 = !DILocation(line: 932, column: 7, scope: !3044, inlinedAt: !3049)
!3055 = !DILocation(line: 939, column: 12, scope: !3042, inlinedAt: !3049)
!3056 = !DILocation(line: 941, column: 10, scope: !3044, inlinedAt: !3049)
!3057 = !DILocation(line: 1158, column: 28, scope: !2683, inlinedAt: !2696)
!3058 = !DILocation(line: 1158, column: 21, scope: !2683, inlinedAt: !2696)
!3059 = distinct !{!3059, !3060, !3061}
!3060 = !DILocation(line: 1158, column: 3, scope: !2684)
!3061 = !DILocation(line: 1171, column: 5, scope: !2684)
!3062 = !DILocation(line: 1174, column: 12, scope: !3063, inlinedAt: !2696)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 1173, column: 3)
!3064 = distinct !DILexicalBlock(scope: !2685, file: !3, line: 1173, column: 3)
!3065 = !DILocation(line: 1174, column: 10, scope: !3063, inlinedAt: !2696)
!3066 = !DILocation(line: 1174, column: 5, scope: !3063, inlinedAt: !2696)
!3067 = !DILocation(line: 1676, column: 10, scope: !2665)
!3068 = !DILocation(line: 1749, column: 12, scope: !2665)
!3069 = !DILocation(line: 1749, column: 18, scope: !2665)
!3070 = !DILocation(line: 1677, column: 8, scope: !2665)
!3071 = !DILocation(line: 1750, column: 3, scope: !2665)
!3072 = !DILocation(line: 1752, column: 7, scope: !3073)
!3073 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 1752, column: 7)
!3074 = !DILocation(line: 1752, column: 16, scope: !3073)
!3075 = !DILocation(line: 1752, column: 13, scope: !3073)
!3076 = !DILocation(line: 1753, column: 5, scope: !3073)
!3077 = !DILocation(line: 0, scope: !3073)
!3078 = !DILocation(line: 662, column: 28, scope: !838, inlinedAt: !3079)
!3079 = distinct !DILocation(line: 1756, column: 3, scope: !2665)
!3080 = !DILocation(line: 662, column: 51, scope: !838, inlinedAt: !3079)
!3081 = !DILocation(line: 662, column: 64, scope: !838, inlinedAt: !3079)
!3082 = !DILocation(line: 664, column: 28, scope: !838, inlinedAt: !3079)
!3083 = !DILocation(line: 668, column: 9, scope: !838, inlinedAt: !3079)
!3084 = !DILocation(line: 664, column: 32, scope: !838, inlinedAt: !3079)
!3085 = !DILocation(line: 665, column: 18, scope: !838, inlinedAt: !3079)
!3086 = !DILocation(line: 0, scope: !853, inlinedAt: !3079)
!3087 = !DILocation(line: 672, column: 17, scope: !853, inlinedAt: !3079)
!3088 = !DILocation(line: 671, column: 7, scope: !838, inlinedAt: !3079)
!3089 = !DILocation(line: 676, column: 16, scope: !999, inlinedAt: !3079)
!3090 = !DILocation(line: 676, column: 7, scope: !838, inlinedAt: !3079)
!3091 = !DILocation(line: 741, column: 30, scope: !1004, inlinedAt: !3092)
!3092 = distinct !DILocation(line: 679, column: 11, scope: !1011, inlinedAt: !3079)
!3093 = !DILocation(line: 743, column: 7, scope: !1004, inlinedAt: !3092)
!3094 = !DILocation(line: 749, column: 8, scope: !1021, inlinedAt: !3092)
!3095 = !DILocation(line: 749, column: 8, scope: !1015, inlinedAt: !3092)
!3096 = !DILocation(line: 3805, column: 27, scope: !1023, inlinedAt: !3097)
!3097 = distinct !DILocation(line: 681, column: 4, scope: !1033, inlinedAt: !3079)
!3098 = !DILocation(line: 3805, column: 36, scope: !1023, inlinedAt: !3097)
!3099 = !DILocation(line: 3807, column: 7, scope: !1023, inlinedAt: !3097)
!3100 = !DILocation(line: 3837, column: 14, scope: !1037, inlinedAt: !3097)
!3101 = !DILocation(line: 3843, column: 14, scope: !1037, inlinedAt: !3097)
!3102 = !DILocation(line: 682, column: 4, scope: !1033, inlinedAt: !3079)
!3103 = !DILocation(line: 573, column: 38, scope: !1041, inlinedAt: !3104)
!3104 = distinct !DILocation(line: 685, column: 7, scope: !1012, inlinedAt: !3079)
!3105 = !DILocation(line: 573, column: 60, scope: !1041, inlinedAt: !3104)
!3106 = !DILocation(line: 575, column: 16, scope: !1041, inlinedAt: !3104)
!3107 = !DILocation(line: 579, column: 10, scope: !1052, inlinedAt: !3104)
!3108 = !DILocation(line: 580, column: 6, scope: !1041, inlinedAt: !3104)
!3109 = !DILocation(line: 686, column: 7, scope: !1012, inlinedAt: !3079)
!3110 = !DILocation(line: 693, column: 12, scope: !1001, inlinedAt: !3079)
!3111 = !DILocation(line: 693, column: 10, scope: !1001, inlinedAt: !3079)
!3112 = !DILocation(line: 694, column: 1, scope: !838, inlinedAt: !3079)
!3113 = !DILocation(line: 1757, column: 1, scope: !2665)
!3114 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !3115)
!3115 = distinct !DILocation(line: 1741, column: 7, scope: !2953)
!3116 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !3115)
!3117 = !DILocation(line: 465, column: 7, scope: !680, inlinedAt: !3115)
!3118 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !3115)
!3119 = !DILocation(line: 1742, column: 7, scope: !2953)
!3120 = !DILocation(line: 1720, column: 8, scope: !2937)
!3121 = !DILocation(line: 460, column: 38, scope: !670, inlinedAt: !3122)
!3122 = distinct !DILocation(line: 1726, column: 7, scope: !2940)
!3123 = !DILocation(line: 462, column: 16, scope: !670, inlinedAt: !3122)
!3124 = !DILocation(line: 465, column: 7, scope: !680, inlinedAt: !3122)
!3125 = !DILocation(line: 465, column: 10, scope: !680, inlinedAt: !3122)
!3126 = !DILocation(line: 1727, column: 7, scope: !2940)
!3127 = distinct !DISubprogram(name: "eiremain", scope: !3, file: !3, line: 3725, type: !412, isLocal: true, isDefinition: true, scopeLine: 3726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3128)
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135}
!3129 = !DILocalVariable(name: "den", arg: 1, scope: !3127, file: !3, line: 3725, type: !377)
!3130 = !DILocalVariable(name: "num", arg: 2, scope: !3127, file: !3, line: 3725, type: !377)
!3131 = !DILocalVariable(name: "ldp", arg: 3, scope: !3127, file: !3, line: 3725, type: !361)
!3132 = !DILocalVariable(name: "ld", scope: !3127, file: !3, line: 3727, type: !12)
!3133 = !DILocalVariable(name: "ln", scope: !3127, file: !3, line: 3727, type: !12)
!3134 = !DILocalVariable(name: "j", scope: !3127, file: !3, line: 3728, type: !11)
!3135 = !DILocalVariable(name: "equot", scope: !3127, file: !3, line: 3729, type: !377)
!3136 = !DILocation(line: 3725, column: 31, scope: !3127)
!3137 = !DILocation(line: 3725, column: 56, scope: !3127)
!3138 = !DILocation(line: 3725, column: 71, scope: !3127)
!3139 = !DILocation(line: 3729, column: 27, scope: !3127)
!3140 = !DILocation(line: 3729, column: 19, scope: !3127)
!3141 = !DILocation(line: 3731, column: 8, scope: !3127)
!3142 = !DILocation(line: 3727, column: 8, scope: !3127)
!3143 = !DILocation(line: 3732, column: 9, scope: !3127)
!3144 = !DILocation(line: 3732, column: 6, scope: !3127)
!3145 = !DILocation(line: 3733, column: 8, scope: !3127)
!3146 = !DILocation(line: 3727, column: 12, scope: !3127)
!3147 = !DILocation(line: 3734, column: 9, scope: !3127)
!3148 = !DILocation(line: 3734, column: 6, scope: !3127)
!3149 = !DILocalVariable(name: "xi", arg: 1, scope: !3150, file: !3, line: 701, type: !377)
!3150 = distinct !DISubprogram(name: "ecleaz", scope: !3, file: !3, line: 701, type: !671, isLocal: true, isDefinition: true, scopeLine: 702, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3151)
!3151 = !{!3149, !3152}
!3152 = !DILocalVariable(name: "i", scope: !3150, file: !3, line: 703, type: !8)
!3153 = !DILocation(line: 701, column: 38, scope: !3150, inlinedAt: !3154)
!3154 = distinct !DILocation(line: 3735, column: 3, scope: !3127)
!3155 = !DILocation(line: 703, column: 16, scope: !3150, inlinedAt: !3154)
!3156 = !DILocation(line: 706, column: 8, scope: !3157, inlinedAt: !3154)
!3157 = distinct !DILexicalBlock(scope: !3158, file: !3, line: 705, column: 3)
!3158 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 705, column: 3)
!3159 = !DILocation(line: 706, column: 11, scope: !3157, inlinedAt: !3154)
!3160 = !DILocation(line: 3736, column: 13, scope: !3127)
!3161 = !DILocation(line: 3736, column: 3, scope: !3127)
!3162 = !DILocation(line: 794, column: 19, scope: !878, inlinedAt: !3163)
!3163 = distinct !DILocation(line: 3738, column: 11, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3165, file: !3, line: 3738, column: 11)
!3165 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 3737, column: 5)
!3166 = !DILocation(line: 786, column: 37, scope: !866, inlinedAt: !3163)
!3167 = !DILocation(line: 786, column: 69, scope: !866, inlinedAt: !3163)
!3168 = !DILocation(line: 788, column: 7, scope: !866, inlinedAt: !3163)
!3169 = !DILocation(line: 794, column: 11, scope: !878, inlinedAt: !3163)
!3170 = !DILocation(line: 794, column: 16, scope: !878, inlinedAt: !3163)
!3171 = !DILocation(line: 794, column: 11, scope: !879, inlinedAt: !3163)
!3172 = !DILocation(line: 800, column: 14, scope: !921, inlinedAt: !3163)
!3173 = !DILocation(line: 989, column: 28, scope: !984, inlinedAt: !3174)
!3174 = distinct !DILocation(line: 3740, column: 4, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3164, file: !3, line: 3739, column: 2)
!3176 = !DILocation(line: 989, column: 51, scope: !984, inlinedAt: !3174)
!3177 = !DILocation(line: 978, column: 28, scope: !971, inlinedAt: !3174)
!3178 = !DILocation(line: 978, column: 51, scope: !971, inlinedAt: !3174)
!3179 = !DILocation(line: 982, column: 16, scope: !971, inlinedAt: !3174)
!3180 = !DILocation(line: 981, column: 7, scope: !971, inlinedAt: !3174)
!3181 = !DILocation(line: 989, column: 11, scope: !984, inlinedAt: !3174)
!3182 = !DILocation(line: 989, column: 34, scope: !984, inlinedAt: !3174)
!3183 = !DILocation(line: 989, column: 32, scope: !984, inlinedAt: !3174)
!3184 = !DILocation(line: 980, column: 17, scope: !971, inlinedAt: !3174)
!3185 = !DILocation(line: 994, column: 12, scope: !984, inlinedAt: !3174)
!3186 = !DILocation(line: 994, column: 10, scope: !984, inlinedAt: !3174)
!3187 = !DILocation(line: 989, column: 55, scope: !984, inlinedAt: !3174)
!3188 = !DILocation(line: 3728, column: 18, scope: !3127)
!3189 = !DILocation(line: 3742, column: 2, scope: !3175)
!3190 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 3747, column: 7, scope: !3165)
!3192 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !3191)
!3193 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !3191)
!3194 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !3191)
!3195 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !3191)
!3196 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !3191)
!3197 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !3191)
!3198 = !DILocation(line: 0, scope: !909, inlinedAt: !3191)
!3199 = !DILocation(line: 3748, column: 21, scope: !3165)
!3200 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !3201)
!3201 = distinct !DILocation(line: 3749, column: 7, scope: !3165)
!3202 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !3201)
!3203 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !3201)
!3204 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !3201)
!3205 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !3201)
!3206 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !3201)
!3207 = !DILocation(line: 0, scope: !909, inlinedAt: !3201)
!3208 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !3201)
!3209 = !DILocation(line: 3750, column: 10, scope: !3165)
!3210 = distinct !{!3210, !3161, !3211}
!3211 = !DILocation(line: 3751, column: 5, scope: !3127)
!3212 = !DILocation(line: 0, scope: !3165)
!3213 = !DILocation(line: 3752, column: 3, scope: !3127)
!3214 = !DILocation(line: 3753, column: 1, scope: !3127)
!3215 = distinct !DISubprogram(name: "enormlz", scope: !3, file: !3, line: 2555, type: !1005, isLocal: true, isDefinition: true, scopeLine: 2556, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3216)
!3216 = !{!3217, !3218, !3219}
!3217 = !DILocalVariable(name: "x", arg: 1, scope: !3215, file: !3, line: 2555, type: !377)
!3218 = !DILocalVariable(name: "p", scope: !3215, file: !3, line: 2557, type: !377)
!3219 = !DILocalVariable(name: "sc", scope: !3215, file: !3, line: 2558, type: !8)
!3220 = !DILocation(line: 2555, column: 30, scope: !3215)
!3221 = !DILocation(line: 2558, column: 7, scope: !3215)
!3222 = !DILocation(line: 2561, column: 8, scope: !3215)
!3223 = !DILocation(line: 2557, column: 28, scope: !3215)
!3224 = !DILocation(line: 2562, column: 7, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2562, column: 7)
!3226 = !DILocation(line: 2562, column: 10, scope: !3225)
!3227 = !DILocation(line: 2562, column: 7, scope: !3215)
!3228 = !DILocation(line: 2564, column: 3, scope: !3215)
!3229 = !DILocation(line: 2565, column: 7, scope: !3230)
!3230 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2565, column: 7)
!3231 = !DILocation(line: 2565, column: 10, scope: !3230)
!3232 = !DILocation(line: 2565, column: 7, scope: !3215)
!3233 = !DILocation(line: 2567, column: 13, scope: !3215)
!3234 = !DILocation(line: 2567, column: 3, scope: !3215)
!3235 = !DILocation(line: 920, column: 10, scope: !2579, inlinedAt: !3236)
!3236 = distinct !DILocation(line: 2569, column: 7, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2568, column: 5)
!3238 = !DILocation(line: 922, column: 6, scope: !2570, inlinedAt: !3236)
!3239 = !DILocation(line: 2567, column: 10, scope: !3215)
!3240 = !DILocation(line: 2578, column: 11, scope: !3215)
!3241 = !DILocation(line: 0, scope: !3237)
!3242 = !DILocation(line: 2578, column: 24, scope: !3215)
!3243 = !DILocation(line: 2578, column: 3, scope: !3215)
!3244 = !DILocation(line: 900, column: 10, scope: !3245, inlinedAt: !3254)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 897, column: 5)
!3246 = distinct !DILexicalBlock(scope: !3247, file: !3, line: 896, column: 3)
!3247 = distinct !DILexicalBlock(scope: !3248, file: !3, line: 896, column: 3)
!3248 = distinct !DISubprogram(name: "eshup8", scope: !3, file: !3, line: 888, type: !671, isLocal: true, isDefinition: true, scopeLine: 889, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3249)
!3249 = !{!3250, !3251, !3252, !3253}
!3250 = !DILocalVariable(name: "x", arg: 1, scope: !3248, file: !3, line: 888, type: !377)
!3251 = !DILocalVariable(name: "i", scope: !3248, file: !3, line: 890, type: !8)
!3252 = !DILocalVariable(name: "newbyt", scope: !3248, file: !3, line: 891, type: !11)
!3253 = !DILocalVariable(name: "oldbyt", scope: !3248, file: !3, line: 891, type: !11)
!3254 = distinct !DILocation(line: 2580, column: 7, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2579, column: 5)
!3256 = !DILocation(line: 911, column: 38, scope: !2570, inlinedAt: !3236)
!3257 = !DILocation(line: 914, column: 28, scope: !2570, inlinedAt: !3236)
!3258 = !DILocation(line: 913, column: 7, scope: !2570, inlinedAt: !3236)
!3259 = !DILocation(line: 2570, column: 10, scope: !3237)
!3260 = !DILocation(line: 2574, column: 14, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 2574, column: 11)
!3262 = !DILocation(line: 2574, column: 11, scope: !3237)
!3263 = distinct !{!3263, !3234, !3264}
!3264 = !DILocation(line: 2576, column: 5, scope: !3215)
!3265 = !DILocation(line: 898, column: 16, scope: !3245, inlinedAt: !3254)
!3266 = !DILocation(line: 0, scope: !3255)
!3267 = !DILocation(line: 2584, column: 24, scope: !3215)
!3268 = !DILocation(line: 2584, column: 3, scope: !3215)
!3269 = !DILocation(line: 0, scope: !909, inlinedAt: !3270)
!3270 = distinct !DILocation(line: 2586, column: 7, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2585, column: 5)
!3272 = !DILocation(line: 888, column: 38, scope: !3248, inlinedAt: !3254)
!3273 = !DILocation(line: 891, column: 35, scope: !3248, inlinedAt: !3254)
!3274 = !DILocation(line: 890, column: 7, scope: !3248, inlinedAt: !3254)
!3275 = !DILocation(line: 898, column: 19, scope: !3245, inlinedAt: !3254)
!3276 = !DILocation(line: 891, column: 27, scope: !3248, inlinedAt: !3254)
!3277 = !DILocation(line: 899, column: 10, scope: !3245, inlinedAt: !3254)
!3278 = !DILocation(line: 2581, column: 10, scope: !3255)
!3279 = distinct !{!3279, !3243, !3280}
!3280 = !DILocation(line: 2582, column: 5, scope: !3215)
!3281 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !3270)
!3282 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !3270)
!3283 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !3270)
!3284 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !3270)
!3285 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !3270)
!3286 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !3270)
!3287 = !DILocation(line: 2587, column: 10, scope: !3271)
!3288 = !DILocation(line: 2588, column: 14, scope: !3289)
!3289 = distinct !DILexicalBlock(scope: !3271, file: !3, line: 2588, column: 11)
!3290 = !DILocation(line: 2588, column: 11, scope: !3271)
!3291 = distinct !{!3291, !3268, !3292}
!3292 = !DILocation(line: 2593, column: 5, scope: !3215)
!3293 = !DILocation(line: 2600, column: 10, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2600, column: 7)
!3295 = !DILocation(line: 2600, column: 7, scope: !3215)
!3296 = !DILocalVariable(name: "x", arg: 1, scope: !3297, file: !3, line: 866, type: !377)
!3297 = distinct !DISubprogram(name: "eshdn8", scope: !3, file: !3, line: 866, type: !671, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3298)
!3298 = !{!3296, !3299, !3300, !3301}
!3299 = !DILocalVariable(name: "newbyt", scope: !3297, file: !3, line: 868, type: !11)
!3300 = !DILocalVariable(name: "oldbyt", scope: !3297, file: !3, line: 868, type: !11)
!3301 = !DILocalVariable(name: "i", scope: !3297, file: !3, line: 869, type: !8)
!3302 = !DILocation(line: 866, column: 38, scope: !3297, inlinedAt: !3303)
!3303 = distinct !DILocation(line: 2602, column: 7, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 2601, column: 5)
!3305 = !DILocation(line: 868, column: 35, scope: !3297, inlinedAt: !3303)
!3306 = !DILocation(line: 869, column: 7, scope: !3297, inlinedAt: !3303)
!3307 = !DILocation(line: 868, column: 27, scope: !3297, inlinedAt: !3303)
!3308 = !DILocation(line: 876, column: 10, scope: !3309, inlinedAt: !3303)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 874, column: 5)
!3310 = distinct !DILexicalBlock(scope: !3311, file: !3, line: 873, column: 3)
!3311 = distinct !DILexicalBlock(scope: !3297, file: !3, line: 873, column: 3)
!3312 = !DILocation(line: 877, column: 10, scope: !3309, inlinedAt: !3303)
!3313 = !DILocation(line: 879, column: 7, scope: !3309, inlinedAt: !3303)
!3314 = !DILocation(line: 875, column: 16, scope: !3309, inlinedAt: !3303)
!3315 = !DILocation(line: 875, column: 19, scope: !3309, inlinedAt: !3303)
!3316 = !DILocation(line: 2604, column: 5, scope: !3304)
!3317 = !DILocation(line: 0, scope: !3215)
!3318 = !DILocation(line: 2605, column: 3, scope: !3215)
!3319 = !DILocation(line: 2605, column: 10, scope: !3215)
!3320 = !DILocation(line: 0, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 2606, column: 5)
!3322 = !DILocation(line: 2605, column: 13, scope: !3215)
!3323 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !3324)
!3324 = distinct !DILocation(line: 2607, column: 7, scope: !3321)
!3325 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !3324)
!3326 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !3324)
!3327 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !3324)
!3328 = !DILocation(line: 0, scope: !1156, inlinedAt: !3324)
!3329 = !DILocation(line: 822, column: 11, scope: !1209, inlinedAt: !3324)
!3330 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !3324)
!3331 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !3324)
!3332 = !DILocation(line: 2608, column: 10, scope: !3321)
!3333 = !DILocation(line: 2610, column: 14, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3321, file: !3, line: 2610, column: 11)
!3335 = !DILocation(line: 2610, column: 11, scope: !3321)
!3336 = distinct !{!3336, !3318, !3337}
!3337 = !DILocation(line: 2615, column: 5, scope: !3215)
!3338 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !3270)
!3339 = !DILocation(line: 2617, column: 1, scope: !3215)
!3340 = distinct !DISubprogram(name: "emdnorm", scope: !3, file: !3, line: 1216, type: !3341, isLocal: true, isDefinition: true, scopeLine: 1218, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3343)
!3341 = !DISubroutineType(types: !3342)
!3342 = !{null, !377, !8, !8, !12, !8, !361}
!3343 = !{!3344, !3345, !3346, !3347, !3348, !3349, !3350, !3351, !3352}
!3344 = !DILocalVariable(name: "s", arg: 1, scope: !3340, file: !3, line: 1216, type: !377)
!3345 = !DILocalVariable(name: "lost", arg: 2, scope: !3340, file: !3, line: 1216, type: !8)
!3346 = !DILocalVariable(name: "subflg", arg: 3, scope: !3340, file: !3, line: 1216, type: !8)
!3347 = !DILocalVariable(name: "exp", arg: 4, scope: !3340, file: !3, line: 1216, type: !12)
!3348 = !DILocalVariable(name: "rcntrl", arg: 5, scope: !3340, file: !3, line: 1217, type: !8)
!3349 = !DILocalVariable(name: "ldp", arg: 6, scope: !3340, file: !3, line: 1217, type: !361)
!3350 = !DILocalVariable(name: "i", scope: !3340, file: !3, line: 1219, type: !8)
!3351 = !DILocalVariable(name: "j", scope: !3340, file: !3, line: 1219, type: !8)
!3352 = !DILocalVariable(name: "r", scope: !3340, file: !3, line: 1220, type: !11)
!3353 = !DILocation(line: 1216, column: 30, scope: !3340)
!3354 = !DILocation(line: 1216, column: 37, scope: !3340)
!3355 = !DILocation(line: 1216, column: 47, scope: !3340)
!3356 = !DILocation(line: 1216, column: 64, scope: !3340)
!3357 = !DILocation(line: 1217, column: 7, scope: !3340)
!3358 = !DILocation(line: 1217, column: 25, scope: !3340)
!3359 = !DILocation(line: 1223, column: 7, scope: !3340)
!3360 = !DILocation(line: 1219, column: 10, scope: !3340)
!3361 = !DILocation(line: 1233, column: 10, scope: !3340)
!3362 = !DILocation(line: 1233, column: 7, scope: !3340)
!3363 = !DILocation(line: 1238, column: 10, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1238, column: 7)
!3365 = !DILocation(line: 1238, column: 27, scope: !3364)
!3366 = !DILocation(line: 1238, column: 19, scope: !3364)
!3367 = !DILocalVariable(name: "xi", arg: 1, scope: !3368, file: !3, line: 712, type: !377)
!3368 = distinct !DISubprogram(name: "ecleazs", scope: !3, file: !3, line: 712, type: !671, isLocal: true, isDefinition: true, scopeLine: 713, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3369)
!3369 = !{!3367, !3370}
!3370 = !DILocalVariable(name: "i", scope: !3368, file: !3, line: 714, type: !8)
!3371 = !DILocation(line: 712, column: 39, scope: !3368, inlinedAt: !3372)
!3372 = distinct !DILocation(line: 1240, column: 7, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 1239, column: 5)
!3374 = !DILocation(line: 714, column: 16, scope: !3368, inlinedAt: !3372)
!3375 = !DILocation(line: 0, scope: !3376, inlinedAt: !3372)
!3376 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 717, column: 3)
!3377 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 717, column: 3)
!3378 = !DILocation(line: 718, column: 11, scope: !3376, inlinedAt: !3372)
!3379 = !DILocation(line: 1241, column: 7, scope: !3373)
!3380 = !DILocation(line: 1244, column: 11, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1244, column: 7)
!3382 = !DILocation(line: 1244, column: 7, scope: !3340)
!3383 = !DILocation(line: 1246, column: 15, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 1246, column: 11)
!3385 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 1245, column: 5)
!3386 = !DILocation(line: 1246, column: 11, scope: !3385)
!3387 = !DILocation(line: 1248, column: 8, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1247, column: 2)
!3389 = !DILocation(line: 1249, column: 8, scope: !3388)
!3390 = !DILocation(line: 1219, column: 7, scope: !3340)
!3391 = !DILocation(line: 1250, column: 8, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3388, file: !3, line: 1250, column: 8)
!3393 = !DILocation(line: 1250, column: 8, scope: !3388)
!3394 = !DILocation(line: 712, column: 39, scope: !3368, inlinedAt: !3395)
!3395 = distinct !DILocation(line: 1255, column: 4, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 1254, column: 2)
!3397 = !DILocation(line: 714, column: 16, scope: !3368, inlinedAt: !3395)
!3398 = !DILocation(line: 0, scope: !3376, inlinedAt: !3395)
!3399 = !DILocation(line: 718, column: 11, scope: !3376, inlinedAt: !3395)
!3400 = !DILocation(line: 1256, column: 4, scope: !3396)
!3401 = !DILocation(line: 1260, column: 14, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1260, column: 7)
!3403 = !DILocation(line: 1260, column: 7, scope: !3340)
!3404 = !DILocation(line: 1263, column: 12, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1263, column: 7)
!3406 = !DILocation(line: 1263, column: 27, scope: !3405)
!3407 = !DILocation(line: 1263, column: 19, scope: !3405)
!3408 = !DILocation(line: 1263, column: 7, scope: !3340)
!3409 = !DILocation(line: 1265, column: 15, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3405, file: !3, line: 1264, column: 5)
!3411 = !DILocation(line: 701, column: 38, scope: !3150, inlinedAt: !3412)
!3412 = distinct !DILocation(line: 1265, column: 7, scope: !3410)
!3413 = !DILocation(line: 703, column: 16, scope: !3150, inlinedAt: !3412)
!3414 = !DILocation(line: 706, column: 8, scope: !3157, inlinedAt: !3412)
!3415 = !DILocation(line: 706, column: 11, scope: !3157, inlinedAt: !3412)
!3416 = !DILocation(line: 1266, column: 7, scope: !3410)
!3417 = !DILocation(line: 1282, column: 4, scope: !3418)
!3418 = distinct !DILexicalBlock(scope: !3410, file: !3, line: 1267, column: 2)
!3419 = !DILocation(line: 1289, column: 4, scope: !3418)
!3420 = !DILocation(line: 1297, column: 4, scope: !3418)
!3421 = !DILocation(line: 1304, column: 4, scope: !3418)
!3422 = !DILocation(line: 1311, column: 4, scope: !3418)
!3423 = !DILocation(line: 0, scope: !3418)
!3424 = !{!485, !486, i64 8}
!3425 = !{!485, !487, i64 20}
!3426 = !{!485, !487, i64 22}
!3427 = !{!485, !487, i64 24}
!3428 = !{!485, !486, i64 12}
!3429 = !DILocation(line: 1313, column: 7, scope: !3410)
!3430 = !DILocation(line: 1313, column: 26, scope: !3410)
!3431 = !DILocation(line: 1314, column: 18, scope: !3410)
!3432 = !DILocation(line: 1315, column: 5, scope: !3410)
!3433 = !DILocation(line: 1323, column: 12, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1323, column: 7)
!3435 = !DILocation(line: 1323, column: 34, scope: !3434)
!3436 = !DILocation(line: 1323, column: 18, scope: !3434)
!3437 = !DILocation(line: 1328, column: 15, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3434, file: !3, line: 1327, column: 5)
!3439 = !DILocation(line: 1328, column: 25, scope: !3438)
!3440 = !DILocation(line: 1328, column: 12, scope: !3438)
!3441 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !3442)
!3442 = distinct !DILocation(line: 1329, column: 7, scope: !3438)
!3443 = !DILocation(line: 817, column: 5, scope: !1147, inlinedAt: !3442)
!3444 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !3442)
!3445 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !3442)
!3446 = !DILocation(line: 822, column: 11, scope: !1209, inlinedAt: !3442)
!3447 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !3442)
!3448 = !DILocation(line: 0, scope: !1156, inlinedAt: !3442)
!3449 = !DILocation(line: 828, column: 7, scope: !1156, inlinedAt: !3442)
!3450 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !3442)
!3451 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !3442)
!3452 = !DILocation(line: 1330, column: 5, scope: !3438)
!3453 = !DILocation(line: 0, scope: !3392)
!3454 = !DILocation(line: 1334, column: 14, scope: !3340)
!3455 = !DILocation(line: 1334, column: 7, scope: !3340)
!3456 = !DILocation(line: 1334, column: 25, scope: !3340)
!3457 = !DILocation(line: 1334, column: 18, scope: !3340)
!3458 = !DILocation(line: 1220, column: 18, scope: !3340)
!3459 = !DILocation(line: 1335, column: 19, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1335, column: 7)
!3461 = !DILocation(line: 1338, column: 16, scope: !3462)
!3462 = distinct !DILexicalBlock(scope: !3460, file: !3, line: 1336, column: 5)
!3463 = !DILocation(line: 1335, column: 7, scope: !3340)
!3464 = !DILocation(line: 0, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 1339, column: 2)
!3466 = !DILocation(line: 1340, column: 8, scope: !3467)
!3467 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 1340, column: 8)
!3468 = !DILocation(line: 1340, column: 8, scope: !3465)
!3469 = !DILocation(line: 1342, column: 9, scope: !3465)
!3470 = distinct !{!3470, !3471, !3472, !702}
!3471 = !DILocation(line: 1338, column: 7, scope: !3462)
!3472 = !DILocation(line: 1344, column: 2, scope: !3462)
!3473 = distinct !{!3473, !3471, !3472, !705, !702}
!3474 = !DILocation(line: 1346, column: 23, scope: !3340)
!3475 = !DILocation(line: 1346, column: 14, scope: !3340)
!3476 = !DILocation(line: 1334, column: 5, scope: !3340)
!3477 = !DILocation(line: 1346, column: 17, scope: !3340)
!3478 = !DILocation(line: 1347, column: 17, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1347, column: 7)
!3480 = !DILocation(line: 1347, column: 10, scope: !3479)
!3481 = !DILocation(line: 1347, column: 24, scope: !3479)
!3482 = !DILocation(line: 1347, column: 7, scope: !3340)
!3483 = !DILocation(line: 1349, column: 13, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3485, file: !3, line: 1349, column: 11)
!3485 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 1348, column: 5)
!3486 = !DILocation(line: 1349, column: 11, scope: !3485)
!3487 = !DILocation(line: 1351, column: 13, scope: !3488)
!3488 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 1351, column: 8)
!3489 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 1350, column: 2)
!3490 = !DILocation(line: 1351, column: 8, scope: !3489)
!3491 = !DILocation(line: 1353, column: 20, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3493, file: !3, line: 1353, column: 12)
!3493 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1352, column: 6)
!3494 = !DILocation(line: 1353, column: 13, scope: !3492)
!3495 = !DILocation(line: 1353, column: 31, scope: !3492)
!3496 = !DILocation(line: 1353, column: 24, scope: !3492)
!3497 = !DILocation(line: 1353, column: 38, scope: !3492)
!3498 = !DILocation(line: 1353, column: 12, scope: !3493)
!3499 = !DILocation(line: 1358, column: 19, scope: !3500)
!3500 = distinct !DILexicalBlock(scope: !3501, file: !3, line: 1358, column: 12)
!3501 = distinct !DILexicalBlock(scope: !3488, file: !3, line: 1357, column: 6)
!3502 = !DILocation(line: 1358, column: 12, scope: !3501)
!3503 = !DILocation(line: 950, column: 28, scope: !945, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 1362, column: 7, scope: !3485)
!3505 = !DILocation(line: 950, column: 51, scope: !945, inlinedAt: !3504)
!3506 = !DILocation(line: 956, column: 5, scope: !945, inlinedAt: !3504)
!3507 = !DILocation(line: 957, column: 5, scope: !945, inlinedAt: !3504)
!3508 = !DILocation(line: 954, column: 16, scope: !945, inlinedAt: !3504)
!3509 = !DILocation(line: 953, column: 7, scope: !945, inlinedAt: !3504)
!3510 = !DILocation(line: 961, column: 28, scope: !958, inlinedAt: !3504)
!3511 = !DILocation(line: 961, column: 11, scope: !958, inlinedAt: !3504)
!3512 = !DILocation(line: 961, column: 51, scope: !958, inlinedAt: !3504)
!3513 = !DILocation(line: 961, column: 34, scope: !958, inlinedAt: !3504)
!3514 = !DILocation(line: 961, column: 55, scope: !958, inlinedAt: !3504)
!3515 = !DILocation(line: 952, column: 26, scope: !945, inlinedAt: !3504)
!3516 = !DILocation(line: 966, column: 12, scope: !958, inlinedAt: !3504)
!3517 = !DILocation(line: 966, column: 10, scope: !958, inlinedAt: !3504)
!3518 = !DILocation(line: 967, column: 7, scope: !958, inlinedAt: !3504)
!3519 = !DILocation(line: 968, column: 7, scope: !958, inlinedAt: !3504)
!3520 = !DILocation(line: 961, column: 32, scope: !958, inlinedAt: !3504)
!3521 = !DILocation(line: 1363, column: 5, scope: !3485)
!3522 = !DILocation(line: 1366, column: 18, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1366, column: 7)
!3524 = !DILocation(line: 1373, column: 7, scope: !3525)
!3525 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1373, column: 7)
!3526 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !3527)
!3527 = distinct !DILocation(line: 1371, column: 7, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3523, file: !3, line: 1370, column: 5)
!3529 = !DILocation(line: 844, column: 5, scope: !899, inlinedAt: !3527)
!3530 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !3527)
!3531 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !3527)
!3532 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !3527)
!3533 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !3527)
!3534 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !3527)
!3535 = !DILocation(line: 0, scope: !909, inlinedAt: !3527)
!3536 = !DILocation(line: 855, column: 7, scope: !909, inlinedAt: !3527)
!3537 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !3527)
!3538 = !DILocation(line: 1372, column: 5, scope: !3528)
!3539 = !DILocation(line: 1373, column: 12, scope: !3525)
!3540 = !DILocation(line: 1373, column: 7, scope: !3340)
!3541 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 1375, column: 7, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3525, file: !3, line: 1374, column: 5)
!3544 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !3542)
!3545 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !3542)
!3546 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !3542)
!3547 = !DILocation(line: 0, scope: !1156, inlinedAt: !3542)
!3548 = !DILocation(line: 828, column: 7, scope: !1156, inlinedAt: !3542)
!3549 = !DILocation(line: 822, column: 11, scope: !1209, inlinedAt: !3542)
!3550 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !3542)
!3551 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !3542)
!3552 = !DILocation(line: 1376, column: 11, scope: !3543)
!3553 = !DILocation(line: 1377, column: 5, scope: !3543)
!3554 = !DILocation(line: 0, scope: !3340)
!3555 = !DILocation(line: 1379, column: 3, scope: !3340)
!3556 = !DILocation(line: 1379, column: 13, scope: !3340)
!3557 = !DILocation(line: 1380, column: 11, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1380, column: 7)
!3559 = !DILocation(line: 1380, column: 7, scope: !3340)
!3560 = !DILocation(line: 1386, column: 7, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3558, file: !3, line: 1381, column: 5)
!3562 = !DILocation(line: 1386, column: 12, scope: !3561)
!3563 = !DILocation(line: 1388, column: 2, scope: !3564)
!3564 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 1387, column: 7)
!3565 = distinct !DILexicalBlock(scope: !3561, file: !3, line: 1387, column: 7)
!3566 = !DILocation(line: 1388, column: 7, scope: !3564)
!3567 = !DILocation(line: 1411, column: 1, scope: !3340)
!3568 = !DILocation(line: 1407, column: 7, scope: !3340)
!3569 = !DILocation(line: 0, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 1407, column: 7)
!3571 = !DILocation(line: 0, scope: !3373)
!3572 = distinct !DISubprogram(name: "eshift", scope: !3, file: !3, line: 2486, type: !3573, isLocal: true, isDefinition: true, scopeLine: 2487, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !3575)
!3573 = !DISubroutineType(types: !3574)
!3574 = !{!8, !377, !8}
!3575 = !{!3576, !3577, !3578, !3579}
!3576 = !DILocalVariable(name: "x", arg: 1, scope: !3572, file: !3, line: 2486, type: !377)
!3577 = !DILocalVariable(name: "sc", arg: 2, scope: !3572, file: !3, line: 2486, type: !8)
!3578 = !DILocalVariable(name: "lost", scope: !3572, file: !3, line: 2488, type: !11)
!3579 = !DILocalVariable(name: "p", scope: !3572, file: !3, line: 2489, type: !377)
!3580 = !DILocation(line: 2486, column: 29, scope: !3572)
!3581 = !DILocation(line: 2486, column: 36, scope: !3572)
!3582 = !DILocation(line: 2491, column: 10, scope: !3583)
!3583 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 2491, column: 7)
!3584 = !DILocation(line: 2491, column: 7, scope: !3572)
!3585 = !DILocation(line: 2488, column: 18, scope: !3572)
!3586 = !DILocation(line: 2495, column: 14, scope: !3572)
!3587 = !DILocation(line: 2489, column: 19, scope: !3572)
!3588 = !DILocation(line: 2497, column: 10, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 2497, column: 7)
!3590 = !DILocation(line: 2497, column: 7, scope: !3572)
!3591 = !DILocation(line: 2523, column: 17, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 2522, column: 5)
!3593 = !DILocation(line: 2523, column: 7, scope: !3592)
!3594 = !DILocation(line: 920, column: 10, scope: !2579, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 2525, column: 4, scope: !3596)
!3596 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 2524, column: 2)
!3597 = !DILocation(line: 922, column: 6, scope: !2570, inlinedAt: !3595)
!3598 = !DILocation(line: 911, column: 38, scope: !2570, inlinedAt: !3595)
!3599 = !DILocation(line: 914, column: 28, scope: !2570, inlinedAt: !3595)
!3600 = !DILocation(line: 913, column: 7, scope: !2570, inlinedAt: !3595)
!3601 = distinct !{!3601, !3593, !3602}
!3602 = !DILocation(line: 2527, column: 2, scope: !3592)
!3603 = !DILocation(line: 2526, column: 7, scope: !3596)
!3604 = !DILocation(line: 2499, column: 12, scope: !3605)
!3605 = distinct !DILexicalBlock(scope: !3589, file: !3, line: 2498, column: 5)
!3606 = !DILocation(line: 2500, column: 17, scope: !3605)
!3607 = !DILocation(line: 2500, column: 7, scope: !3605)
!3608 = !DILocation(line: 939, column: 12, scope: !3042, inlinedAt: !3609)
!3609 = distinct !DILocation(line: 2503, column: 4, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 2501, column: 2)
!3611 = !DILocation(line: 941, column: 10, scope: !3044, inlinedAt: !3609)
!3612 = !DILocation(line: 2502, column: 9, scope: !3610)
!3613 = !DILocation(line: 930, column: 38, scope: !3044, inlinedAt: !3609)
!3614 = !DILocation(line: 933, column: 28, scope: !3044, inlinedAt: !3609)
!3615 = !DILocation(line: 932, column: 7, scope: !3044, inlinedAt: !3609)
!3616 = distinct !{!3616, !3617}
!3617 = !{!"llvm.loop.unroll.disable"}
!3618 = !DILocation(line: 0, scope: !3610)
!3619 = !DILocation(line: 2507, column: 17, scope: !3605)
!3620 = !DILocation(line: 2507, column: 7, scope: !3605)
!3621 = !DILocation(line: 877, column: 10, scope: !3309, inlinedAt: !3622)
!3622 = distinct !DILocation(line: 2510, column: 4, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 2508, column: 2)
!3624 = distinct !{!3624, !3607, !3625}
!3625 = !DILocation(line: 2505, column: 2, scope: !3605)
!3626 = !DILocation(line: 0, scope: !3623)
!3627 = !DILocation(line: 2514, column: 17, scope: !3605)
!3628 = !DILocation(line: 2514, column: 7, scope: !3605)
!3629 = !DILocation(line: 0, scope: !1156, inlinedAt: !3630)
!3630 = distinct !DILocation(line: 2517, column: 4, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3605, file: !3, line: 2515, column: 2)
!3632 = !DILocation(line: 2509, column: 15, scope: !3623)
!3633 = !DILocation(line: 2509, column: 9, scope: !3623)
!3634 = !DILocation(line: 866, column: 38, scope: !3297, inlinedAt: !3622)
!3635 = !DILocation(line: 868, column: 35, scope: !3297, inlinedAt: !3622)
!3636 = !DILocation(line: 869, column: 7, scope: !3297, inlinedAt: !3622)
!3637 = !DILocation(line: 868, column: 27, scope: !3297, inlinedAt: !3622)
!3638 = !DILocation(line: 876, column: 10, scope: !3309, inlinedAt: !3622)
!3639 = !DILocation(line: 875, column: 19, scope: !3309, inlinedAt: !3622)
!3640 = !DILocation(line: 2511, column: 7, scope: !3623)
!3641 = distinct !{!3641, !3620, !3642}
!3642 = !DILocation(line: 2512, column: 2, scope: !3605)
!3643 = !DILocation(line: 2516, column: 15, scope: !3631)
!3644 = !DILocation(line: 2516, column: 9, scope: !3631)
!3645 = !DILocation(line: 812, column: 38, scope: !1147, inlinedAt: !3630)
!3646 = !DILocation(line: 814, column: 27, scope: !1147, inlinedAt: !3630)
!3647 = !DILocation(line: 815, column: 7, scope: !1147, inlinedAt: !3630)
!3648 = !DILocation(line: 824, column: 10, scope: !1156, inlinedAt: !3630)
!3649 = !DILocation(line: 825, column: 11, scope: !1156, inlinedAt: !3630)
!3650 = !DILocation(line: 827, column: 12, scope: !1156, inlinedAt: !3630)
!3651 = !DILocation(line: 2518, column: 7, scope: !3631)
!3652 = distinct !{!3652, !3628, !3653}
!3653 = !DILocation(line: 2519, column: 2, scope: !3605)
!3654 = !DILocation(line: 2529, column: 17, scope: !3592)
!3655 = !DILocation(line: 2529, column: 7, scope: !3592)
!3656 = !DILocation(line: 898, column: 16, scope: !3245, inlinedAt: !3657)
!3657 = distinct !DILocation(line: 2531, column: 4, scope: !3658)
!3658 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 2530, column: 2)
!3659 = !DILocation(line: 900, column: 10, scope: !3245, inlinedAt: !3657)
!3660 = distinct !{!3660, !3593, !3602, !3617}
!3661 = !DILocation(line: 2535, column: 17, scope: !3592)
!3662 = !DILocation(line: 2535, column: 7, scope: !3592)
!3663 = !DILocation(line: 849, column: 11, scope: !1393, inlinedAt: !3664)
!3664 = distinct !DILocation(line: 2537, column: 4, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3592, file: !3, line: 2536, column: 2)
!3666 = !DILocation(line: 0, scope: !909, inlinedAt: !3664)
!3667 = !DILocation(line: 888, column: 38, scope: !3248, inlinedAt: !3657)
!3668 = !DILocation(line: 891, column: 35, scope: !3248, inlinedAt: !3657)
!3669 = !DILocation(line: 890, column: 7, scope: !3248, inlinedAt: !3657)
!3670 = !DILocation(line: 898, column: 19, scope: !3245, inlinedAt: !3657)
!3671 = !DILocation(line: 891, column: 27, scope: !3248, inlinedAt: !3657)
!3672 = !DILocation(line: 899, column: 10, scope: !3245, inlinedAt: !3657)
!3673 = !DILocation(line: 2532, column: 7, scope: !3658)
!3674 = distinct !{!3674, !3655, !3675}
!3675 = !DILocation(line: 2533, column: 2, scope: !3592)
!3676 = !DILocation(line: 839, column: 38, scope: !899, inlinedAt: !3664)
!3677 = !DILocation(line: 841, column: 27, scope: !899, inlinedAt: !3664)
!3678 = !DILocation(line: 842, column: 7, scope: !899, inlinedAt: !3664)
!3679 = !DILocation(line: 849, column: 11, scope: !909, inlinedAt: !3664)
!3680 = !DILocation(line: 851, column: 10, scope: !909, inlinedAt: !3664)
!3681 = !DILocation(line: 852, column: 11, scope: !909, inlinedAt: !3664)
!3682 = !DILocation(line: 2538, column: 7, scope: !3665)
!3683 = distinct !{!3683, !3662, !3684}
!3684 = !DILocation(line: 2539, column: 2, scope: !3592)
!3685 = !DILocation(line: 0, scope: !3631)
!3686 = !DILocation(line: 2541, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 2541, column: 7)
!3688 = !DILocation(line: 2541, column: 7, scope: !3572)
!3689 = !DILocation(line: 0, scope: !3572)
!3690 = !DILocation(line: 2544, column: 1, scope: !3572)
