; ModuleID = '/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfscanf.c'
source_filename = "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfscanf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.0, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__locale_t = type { [7 x [32 x i8]], i32 (%struct._reent*, i8*, i32, %struct._mbstate_t*)*, i32 (%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*)*, i32, i8*, %struct.lconv, [2 x i8], [32 x i8], [32 x i8] }
%struct.lconv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@__svfiscanf_r.basefix = internal unnamed_addr constant [17 x i16] [i16 10, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16], align 16, !dbg !0
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local i32 @vfiscanf(%struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !396 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !407
  %5 = icmp eq %struct._reent* %4, null, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br i1 %5, label %11, label %6, !dbg !410

; <label>:6:                                      ; preds = %3
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %4, i64 0, i32 8, !dbg !410
  %8 = load i32, i32* %7, align 8, !dbg !410, !tbaa !412
  %9 = icmp eq i32 %8, 0, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %9, label %10, label %11, !dbg !409

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %4) #4, !dbg !410
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  br label %11, !dbg !410

; <label>:11:                                     ; preds = %6, %3, %10
  %12 = tail call i32 @__svfiscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i8* %1, %struct.__va_list_tag* %2) #5, !dbg !421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  ret i32 %12, !dbg !422
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct._reent* @__getreent() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @__sinit(%struct._reent*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfiscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !2 {
  %5 = alloca i32, align 4
  %6 = alloca [256 x i8], align 16
  %7 = alloca [40 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca %struct._mbstate_t, align 4
  %10 = alloca %struct._mbstate_t, align 4
  %11 = bitcast i32* %5 to i8*, !dbg !427
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #6, !dbg !427
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !429
  call void @llvm.lifetime.start.p0i8(i64 256, i8* nonnull %12) #6, !dbg !429
  %13 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 0, !dbg !431
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %13) #6, !dbg !431
  %14 = bitcast i32* %8 to i8*, !dbg !433
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #6, !dbg !433
  %15 = call i32 @pthread_setcancelstate(i32 1, i32* nonnull %8) #4, !dbg !433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  %16 = load i8, i8* %2, align 1, !dbg !437, !tbaa !438
  %17 = zext i8 %16 to i32, !dbg !437
  store i32 %17, i32* %5, align 4, !dbg !440, !tbaa !441
  %18 = icmp eq i8 %16, 0, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %18, label %994, label %19, !dbg !444

; <label>:19:                                     ; preds = %4
  %20 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 0
  %21 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 3
  %22 = getelementptr inbounds %struct.__va_list_tag, %struct.__va_list_tag* %3, i64 0, i32 2
  %23 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 1
  %24 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 0
  %25 = bitcast %struct._mbstate_t* %9 to i8*
  %26 = bitcast %struct._mbstate_t* %10 to i8*
  %27 = ptrtoint [40 x i8]* %7 to i64
  br label %28, !dbg !444

; <label>:28:                                     ; preds = %19, %975
  %29 = phi i8* [ %2, %19 ], [ %257, %975 ]
  %30 = phi i64 (%struct._reent*, i8*, i8**, i32)* [ null, %19 ], [ %255, %975 ]
  %31 = phi i32 [ 0, %19 ], [ %978, %975 ]
  %32 = phi i32 [ 0, %19 ], [ %977, %975 ]
  %33 = phi i32 [ 0, %19 ], [ %976, %975 ]
  br label %34, !dbg !444

; <label>:34:                                     ; preds = %28, %75
  %35 = phi i8* [ %29, %28 ], [ %77, %75 ]
  %36 = phi i32 [ %32, %28 ], [ %76, %75 ]
  %37 = trunc i32 %36 to i8
  %38 = trunc i32 %36 to i16
  %39 = sext i32 %36 to i64
  br label %40, !dbg !444

; <label>:40:                                     ; preds = %34, %234
  %41 = phi i8* [ %35, %34 ], [ %87, %234 ]
  %42 = getelementptr inbounds i8, i8* %41, i64 1, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  %43 = call i8* @__locale_ctype_ptr() #4, !dbg !448
  %44 = getelementptr inbounds i8, i8* %43, i64 1, !dbg !448
  %45 = load i32, i32* %5, align 4, !dbg !448, !tbaa !441
  %46 = sext i32 %45 to i64, !dbg !448
  %47 = getelementptr inbounds i8, i8* %44, i64 %46, !dbg !448
  %48 = load i8, i8* %47, align 1, !dbg !448, !tbaa !438
  %49 = and i8 %48, 8, !dbg !448
  %50 = icmp eq i8 %49, 0, !dbg !448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !449
  br i1 %50, label %81, label %51, !dbg !449

; <label>:51:                                     ; preds = %40
  %52 = load i32, i32* %23, align 8, !dbg !450, !tbaa !456
  br label %53, !dbg !450

; <label>:53:                                     ; preds = %51, %70
  %54 = phi i32 [ %73, %70 ], [ %52, %51 ], !dbg !450
  %55 = phi i32 [ %71, %70 ], [ %36, %51 ], !dbg !462
  %56 = icmp slt i32 %54, 1, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !450
  br i1 %56, label %57, label %60, !dbg !450

; <label>:57:                                     ; preds = %53
  %58 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !450
  %59 = icmp eq i32 %58, 0, !dbg !450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !463
  br i1 %59, label %60, label %75, !dbg !463

; <label>:60:                                     ; preds = %57, %53
  %61 = call i8* @__locale_ctype_ptr() #4, !dbg !464
  %62 = getelementptr inbounds i8, i8* %61, i64 1, !dbg !464
  %63 = load i8*, i8** %24, align 8, !dbg !464, !tbaa !465
  %64 = load i8, i8* %63, align 1, !dbg !464, !tbaa !438
  %65 = zext i8 %64 to i64, !dbg !464
  %66 = getelementptr inbounds i8, i8* %62, i64 %65, !dbg !464
  %67 = load i8, i8* %66, align 1, !dbg !464, !tbaa !438
  %68 = and i8 %67, 8, !dbg !464
  %69 = icmp eq i8 %68, 0, !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !466
  br i1 %69, label %75, label %70, !dbg !466

; <label>:70:                                     ; preds = %60
  %71 = add nsw i32 %55, 1, !dbg !467
  %72 = load i32, i32* %23, align 8, !dbg !468, !tbaa !456
  %73 = add nsw i32 %72, -1, !dbg !468
  store i32 %73, i32* %23, align 8, !dbg !468, !tbaa !456
  %74 = getelementptr inbounds i8, i8* %63, i64 1, !dbg !469
  store i8* %74, i8** %24, align 8, !dbg !469, !tbaa !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br label %53, !dbg !470, !llvm.loop !471

; <label>:75:                                     ; preds = %60, %57, %102
  %76 = phi i32 [ %106, %102 ], [ %55, %57 ], [ %55, %60 ]
  %77 = phi i8* [ %90, %102 ], [ %42, %57 ], [ %42, %60 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  %78 = load i8, i8* %77, align 1, !dbg !437, !tbaa !438
  %79 = zext i8 %78 to i32, !dbg !437
  store i32 %79, i32* %5, align 4, !dbg !440, !tbaa !441
  %80 = icmp eq i8 %78, 0, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %80, label %994, label %34, !dbg !444, !llvm.loop !477

; <label>:81:                                     ; preds = %40
  %82 = icmp eq i32 %45, 37, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %82, label %83, label %89, !dbg !482

; <label>:83:                                     ; preds = %81, %109
  %84 = phi i32 [ %110, %109 ], [ 0, %81 ], !dbg !483
  %85 = phi i64 [ %111, %109 ], [ 0, %81 ], !dbg !484
  %86 = phi i8* [ %112, %109 ], [ %42, %81 ], !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  %87 = getelementptr inbounds i8, i8* %86, i64 1, !dbg !487
  %88 = load i8, i8* %86, align 1, !dbg !488, !tbaa !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !489
  switch i8 %88, label %241 [
    i8 37, label %89
    i8 42, label %107
    i8 108, label %113
    i8 76, label %120
    i8 104, label %122
    i8 106, label %129
    i8 116, label %131
    i8 122, label %133
    i8 48, label %135
    i8 49, label %135
    i8 50, label %135
    i8 51, label %135
    i8 52, label %135
    i8 53, label %135
    i8 54, label %135
    i8 55, label %135
    i8 56, label %135
    i8 57, label %135
    i8 68, label %140
    i8 100, label %251
    i8 105, label %252
    i8 79, label %142
    i8 111, label %144
    i8 117, label %146
    i8 88, label %147
    i8 120, label %147
    i8 83, label %149
    i8 115, label %151
    i8 91, label %153
    i8 67, label %156
    i8 99, label %158
    i8 112, label %161
    i8 110, label %163
    i8 0, label %238
  ], !dbg !489

; <label>:89:                                     ; preds = %81, %83
  %90 = phi i8* [ %87, %83 ], [ %42, %81 ], !dbg !484
  %91 = getelementptr inbounds i8, i8* %90, i64 -1, !dbg !490
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  %92 = load i32, i32* %23, align 8, !dbg !495, !tbaa !456
  %93 = icmp slt i32 %92, 1, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %93, label %94, label %97, !dbg !495

; <label>:94:                                     ; preds = %89
  %95 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !495
  %96 = icmp eq i32 %95, 0, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  br i1 %96, label %97, label %982, !dbg !499

; <label>:97:                                     ; preds = %94, %89
  %98 = load i8*, i8** %24, align 8, !dbg !500, !tbaa !465
  %99 = load i8, i8* %98, align 1, !dbg !502, !tbaa !438
  %100 = load i8, i8* %91, align 1, !dbg !503, !tbaa !438
  %101 = icmp eq i8 %99, %100, !dbg !504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %101, label %102, label %994, !dbg !505

; <label>:102:                                    ; preds = %97
  %103 = load i32, i32* %23, align 8, !dbg !506, !tbaa !456
  %104 = add nsw i32 %103, -1, !dbg !506
  store i32 %104, i32* %23, align 8, !dbg !506, !tbaa !456
  %105 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !507
  store i8* %105, i8** %24, align 8, !dbg !507, !tbaa !465
  %106 = add nsw i32 %36, 1, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !509
  br label %75, !dbg !437

; <label>:107:                                    ; preds = %83
  %108 = or i32 %84, 16, !dbg !510
  br label %109, !dbg !511

; <label>:109:                                    ; preds = %107, %113, %120, %122, %129, %131, %133, %135
  %110 = phi i32 [ %84, %135 ], [ %134, %133 ], [ %132, %131 ], [ %130, %129 ], [ %128, %122 ], [ %121, %120 ], [ %119, %113 ], [ %108, %107 ]
  %111 = phi i64 [ %139, %135 ], [ %85, %133 ], [ %85, %131 ], [ %85, %129 ], [ %85, %122 ], [ %85, %120 ], [ %85, %113 ], [ %85, %107 ]
  %112 = phi i8* [ %87, %135 ], [ %87, %133 ], [ %87, %131 ], [ %87, %129 ], [ %127, %122 ], [ %87, %120 ], [ %118, %113 ], [ %87, %107 ]
  br label %83, !dbg !484

; <label>:113:                                    ; preds = %83
  %114 = load i8, i8* %87, align 1, !dbg !512, !tbaa !438
  %115 = icmp eq i8 %114, 108, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  %116 = getelementptr inbounds i8, i8* %86, i64 2, !dbg !516
  %117 = select i1 %115, i32 2, i32 1, !dbg !515
  %118 = select i1 %115, i8* %116, i8* %87, !dbg !515
  %119 = or i32 %84, %117, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %109, !dbg !519

; <label>:120:                                    ; preds = %83
  %121 = or i32 %84, 2, !dbg !520
  br label %109, !dbg !521

; <label>:122:                                    ; preds = %83
  %123 = load i8, i8* %87, align 1, !dbg !522, !tbaa !438
  %124 = icmp eq i8 %123, 104, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  %125 = getelementptr inbounds i8, i8* %86, i64 2, !dbg !526
  %126 = select i1 %124, i32 8, i32 4, !dbg !525
  %127 = select i1 %124, i8* %125, i8* %87, !dbg !525
  %128 = or i32 %84, %126, !dbg !528
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %109, !dbg !529

; <label>:129:                                    ; preds = %83
  %130 = or i32 %84, 1, !dbg !530
  br label %109, !dbg !532

; <label>:131:                                    ; preds = %83
  %132 = or i32 %84, 1, !dbg !533
  br label %109, !dbg !537

; <label>:133:                                    ; preds = %83
  %134 = or i32 %84, 1, !dbg !538
  br label %109, !dbg !542

; <label>:135:                                    ; preds = %83, %83, %83, %83, %83, %83, %83, %83, %83, %83
  %136 = mul i64 %85, 10, !dbg !543
  %137 = zext i8 %88 to i64, !dbg !544
  %138 = add i64 %136, -48, !dbg !545
  %139 = add i64 %138, %137, !dbg !546
  br label %109, !dbg !547

; <label>:140:                                    ; preds = %83
  %141 = or i32 %84, 1, !dbg !548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !549
  br label %252, !dbg !549

; <label>:142:                                    ; preds = %83
  %143 = or i32 %84, 1, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  br label %144, !dbg !551

; <label>:144:                                    ; preds = %83, %142
  %145 = phi i32 [ %143, %142 ], [ %84, %83 ], !dbg !483
  br label %252, !dbg !553

; <label>:146:                                    ; preds = %83
  br label %252, !dbg !554

; <label>:147:                                    ; preds = %83, %83
  %148 = or i32 %84, 512, !dbg !555
  br label %252, !dbg !556

; <label>:149:                                    ; preds = %83
  %150 = or i32 %84, 1, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br label %151, !dbg !558

; <label>:151:                                    ; preds = %83, %149
  %152 = phi i32 [ %150, %149 ], [ %84, %83 ], !dbg !483
  br label %252, !dbg !559

; <label>:153:                                    ; preds = %83
  %154 = call i8* @__sccl(i8* nonnull %12, i8* nonnull %87) #4, !dbg !560
  %155 = or i32 %84, 64, !dbg !561
  br label %252, !dbg !562

; <label>:156:                                    ; preds = %83
  %157 = or i32 %84, 1, !dbg !563
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br label %158, !dbg !564

; <label>:158:                                    ; preds = %83, %156
  %159 = phi i32 [ %157, %156 ], [ %84, %83 ], !dbg !483
  %160 = or i32 %159, 64, !dbg !565
  br label %252, !dbg !566

; <label>:161:                                    ; preds = %83
  %162 = or i32 %84, 544, !dbg !567
  br label %252, !dbg !568

; <label>:163:                                    ; preds = %83
  %164 = and i32 %84, 16, !dbg !569
  %165 = icmp eq i32 %164, 0, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  br i1 %165, label %166, label %234, !dbg !571

; <label>:166:                                    ; preds = %163
  %167 = and i32 %84, 8, !dbg !572
  %168 = icmp eq i32 %167, 0, !dbg !572
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br i1 %168, label %184, label %169, !dbg !574

; <label>:169:                                    ; preds = %166
  %170 = load i32, i32* %20, align 8, !dbg !575
  %171 = icmp ult i32 %170, 41, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  br i1 %171, label %172, label %177, !dbg !575

; <label>:172:                                    ; preds = %169
  %173 = load i8*, i8** %21, align 8, !dbg !575
  %174 = sext i32 %170 to i64, !dbg !575
  %175 = getelementptr i8, i8* %173, i64 %174, !dbg !575
  %176 = add i32 %170, 8, !dbg !575
  store i32 %176, i32* %20, align 8, !dbg !575
  br label %180, !dbg !575

; <label>:177:                                    ; preds = %169
  %178 = load i8*, i8** %22, align 8, !dbg !575
  %179 = getelementptr i8, i8* %178, i64 8, !dbg !575
  store i8* %179, i8** %22, align 8, !dbg !575
  br label %180, !dbg !575

; <label>:180:                                    ; preds = %177, %172
  %181 = phi i8* [ %175, %172 ], [ %178, %177 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  %182 = bitcast i8* %181 to i8**, !dbg !575
  %183 = load i8*, i8** %182, align 8, !dbg !575
  store i8 %37, i8* %183, align 1, !dbg !578, !tbaa !438
  br label %233, !dbg !579

; <label>:184:                                    ; preds = %166
  %185 = and i32 %84, 4, !dbg !580
  %186 = icmp eq i32 %185, 0, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !582
  br i1 %186, label %202, label %187, !dbg !582

; <label>:187:                                    ; preds = %184
  %188 = load i32, i32* %20, align 8, !dbg !583
  %189 = icmp ult i32 %188, 41, !dbg !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  br i1 %189, label %190, label %195, !dbg !583

; <label>:190:                                    ; preds = %187
  %191 = load i8*, i8** %21, align 8, !dbg !583
  %192 = sext i32 %188 to i64, !dbg !583
  %193 = getelementptr i8, i8* %191, i64 %192, !dbg !583
  %194 = add i32 %188, 8, !dbg !583
  store i32 %194, i32* %20, align 8, !dbg !583
  br label %198, !dbg !583

; <label>:195:                                    ; preds = %187
  %196 = load i8*, i8** %22, align 8, !dbg !583
  %197 = getelementptr i8, i8* %196, i64 8, !dbg !583
  store i8* %197, i8** %22, align 8, !dbg !583
  br label %198, !dbg !583

; <label>:198:                                    ; preds = %195, %190
  %199 = phi i8* [ %193, %190 ], [ %196, %195 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !583
  %200 = bitcast i8* %199 to i16**, !dbg !583
  %201 = load i16*, i16** %200, align 8, !dbg !583
  store i16 %38, i16* %201, align 2, !dbg !586, !tbaa !587
  br label %233, !dbg !588

; <label>:202:                                    ; preds = %184
  %203 = and i32 %84, 1, !dbg !589
  %204 = icmp eq i32 %203, 0, !dbg !589
  %205 = load i32, i32* %20, align 8, !dbg !591
  %206 = icmp ult i32 %205, 41, !dbg !591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !593
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  br i1 %204, label %220, label %207, !dbg !593

; <label>:207:                                    ; preds = %202
  br i1 %206, label %208, label %213, !dbg !596

; <label>:208:                                    ; preds = %207
  %209 = load i8*, i8** %21, align 8, !dbg !596
  %210 = sext i32 %205 to i64, !dbg !596
  %211 = getelementptr i8, i8* %209, i64 %210, !dbg !596
  %212 = add i32 %205, 8, !dbg !596
  store i32 %212, i32* %20, align 8, !dbg !596
  br label %216, !dbg !596

; <label>:213:                                    ; preds = %207
  %214 = load i8*, i8** %22, align 8, !dbg !596
  %215 = getelementptr i8, i8* %214, i64 8, !dbg !596
  store i8* %215, i8** %22, align 8, !dbg !596
  br label %216, !dbg !596

; <label>:216:                                    ; preds = %213, %208
  %217 = phi i8* [ %211, %208 ], [ %214, %213 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %218 = bitcast i8* %217 to i64**, !dbg !596
  %219 = load i64*, i64** %218, align 8, !dbg !596
  store i64 %39, i64* %219, align 8, !dbg !598, !tbaa !599
  br label %233, !dbg !600

; <label>:220:                                    ; preds = %202
  br i1 %206, label %221, label %226, !dbg !601

; <label>:221:                                    ; preds = %220
  %222 = load i8*, i8** %21, align 8, !dbg !601
  %223 = sext i32 %205 to i64, !dbg !601
  %224 = getelementptr i8, i8* %222, i64 %223, !dbg !601
  %225 = add i32 %205, 8, !dbg !601
  store i32 %225, i32* %20, align 8, !dbg !601
  br label %229, !dbg !601

; <label>:226:                                    ; preds = %220
  %227 = load i8*, i8** %22, align 8, !dbg !601
  %228 = getelementptr i8, i8* %227, i64 8, !dbg !601
  store i8* %228, i8** %22, align 8, !dbg !601
  br label %229, !dbg !601

; <label>:229:                                    ; preds = %226, %221
  %230 = phi i8* [ %224, %221 ], [ %227, %226 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !601
  %231 = bitcast i8* %230 to i32**, !dbg !601
  %232 = load i32*, i32** %231, align 8, !dbg !601
  store i32 %36, i32* %232, align 4, !dbg !603, !tbaa !441
  br label %233

; <label>:233:                                    ; preds = %198, %229, %216, %180
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !604
  br label %234, !dbg !604

; <label>:234:                                    ; preds = %233, %163
  %235 = load i8, i8* %87, align 1, !dbg !437, !tbaa !438
  %236 = zext i8 %235 to i32, !dbg !437
  store i32 %236, i32* %5, align 4, !dbg !440, !tbaa !441
  %237 = icmp eq i8 %235, 0, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %237, label %994, label %40, !dbg !444, !llvm.loop !477

; <label>:238:                                    ; preds = %83
  %239 = load i32, i32* %8, align 4, !dbg !605, !tbaa !441
  %240 = call i32 @pthread_setcancelstate(i32 %239, i32* nonnull %8) #4, !dbg !605
  br label %992, !dbg !606

; <label>:241:                                    ; preds = %83
  %242 = call i8* @__locale_ctype_ptr() #4, !dbg !607
  %243 = getelementptr inbounds i8, i8* %242, i64 1, !dbg !607
  %244 = zext i8 %88 to i64, !dbg !607
  %245 = getelementptr inbounds i8, i8* %243, i64 %244, !dbg !607
  %246 = load i8, i8* %245, align 1, !dbg !607, !tbaa !438
  %247 = and i8 %246, 3, !dbg !607
  %248 = icmp eq i8 %247, 1, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  br i1 %248, label %249, label %252, !dbg !609

; <label>:249:                                    ; preds = %241
  %250 = or i32 %84, 1, !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !611
  br label %252, !dbg !611

; <label>:251:                                    ; preds = %83
  br label %252, !dbg !483

; <label>:252:                                    ; preds = %83, %251, %241, %249, %140, %161, %158, %153, %151, %147, %146, %144
  %253 = phi i32 [ %162, %161 ], [ %160, %158 ], [ %155, %153 ], [ %152, %151 ], [ %148, %147 ], [ %84, %146 ], [ %145, %144 ], [ %141, %140 ], [ %250, %249 ], [ %84, %241 ], [ %84, %251 ], [ %84, %83 ], !dbg !484
  %254 = phi i32 [ 16, %161 ], [ %31, %158 ], [ %31, %153 ], [ %31, %151 ], [ 16, %147 ], [ 10, %146 ], [ 8, %144 ], [ 10, %140 ], [ 10, %249 ], [ 10, %241 ], [ 10, %251 ], [ 0, %83 ], !dbg !483
  %255 = phi i64 (%struct._reent*, i8*, i8**, i32)* [ @_strtoul_r, %161 ], [ %30, %158 ], [ %30, %153 ], [ %30, %151 ], [ @_strtoul_r, %147 ], [ @_strtoul_r, %146 ], [ @_strtoul_r, %144 ], [ @_strtol_r, %140 ], [ @_strtol_r, %249 ], [ @_strtol_r, %241 ], [ @_strtol_r, %251 ], [ @_strtol_r, %83 ], !dbg !483
  %256 = phi i2 [ -1, %161 ], [ 0, %158 ], [ 1, %153 ], [ -2, %151 ], [ -1, %147 ], [ -1, %146 ], [ -1, %144 ], [ -1, %140 ], [ -1, %249 ], [ -1, %241 ], [ -1, %251 ], [ -1, %83 ]
  %257 = phi i8* [ %87, %161 ], [ %87, %158 ], [ %154, %153 ], [ %87, %151 ], [ %87, %147 ], [ %87, %146 ], [ %87, %144 ], [ %87, %140 ], [ %87, %249 ], [ %87, %241 ], [ %87, %251 ], [ %87, %83 ], !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  %258 = load i32, i32* %23, align 8, !dbg !612, !tbaa !456
  %259 = icmp slt i32 %258, 1, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !612
  br i1 %259, label %260, label %263, !dbg !612

; <label>:260:                                    ; preds = %252
  %261 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !612
  %262 = icmp eq i32 %261, 0, !dbg !612
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  br i1 %262, label %263, label %982, !dbg !614

; <label>:263:                                    ; preds = %260, %252
  %264 = and i32 %253, 64, !dbg !615
  %265 = icmp eq i32 %264, 0, !dbg !617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !618
  br i1 %265, label %266, label %298, !dbg !618

; <label>:266:                                    ; preds = %263
  %267 = call i8* @__locale_ctype_ptr() #4, !dbg !619
  %268 = getelementptr inbounds i8, i8* %267, i64 1, !dbg !619
  %269 = load i8*, i8** %24, align 8, !dbg !619, !tbaa !465
  %270 = load i8, i8* %269, align 1, !dbg !619, !tbaa !438
  %271 = zext i8 %270 to i64, !dbg !619
  %272 = getelementptr inbounds i8, i8* %268, i64 %271, !dbg !619
  %273 = load i8, i8* %272, align 1, !dbg !619, !tbaa !438
  %274 = and i8 %273, 8, !dbg !619
  %275 = icmp eq i8 %274, 0, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %275, label %298, label %276, !dbg !621

; <label>:276:                                    ; preds = %266, %288
  %277 = phi i8* [ %291, %288 ], [ %269, %266 ]
  %278 = phi i32 [ %279, %288 ], [ %36, %266 ]
  %279 = add nsw i32 %278, 1, !dbg !622
  %280 = load i32, i32* %23, align 8, !dbg !624, !tbaa !456
  %281 = add nsw i32 %280, -1, !dbg !624
  store i32 %281, i32* %23, align 8, !dbg !624, !tbaa !456
  %282 = icmp sgt i32 %280, 1, !dbg !626
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !627
  br i1 %282, label %283, label %285, !dbg !627

; <label>:283:                                    ; preds = %276
  %284 = getelementptr inbounds i8, i8* %277, i64 1, !dbg !628
  store i8* %284, i8** %24, align 8, !dbg !628, !tbaa !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !629
  br label %288, !dbg !629

; <label>:285:                                    ; preds = %276
  %286 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !630
  %287 = icmp eq i32 %286, 0, !dbg !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !632
  br i1 %287, label %288, label %982, !dbg !632

; <label>:288:                                    ; preds = %285, %283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  %289 = call i8* @__locale_ctype_ptr() #4, !dbg !619
  %290 = getelementptr inbounds i8, i8* %289, i64 1, !dbg !619
  %291 = load i8*, i8** %24, align 8, !dbg !619, !tbaa !465
  %292 = load i8, i8* %291, align 1, !dbg !619, !tbaa !438
  %293 = zext i8 %292 to i64, !dbg !619
  %294 = getelementptr inbounds i8, i8* %290, i64 %293, !dbg !619
  %295 = load i8, i8* %294, align 1, !dbg !619, !tbaa !438
  %296 = and i8 %295, 8, !dbg !619
  %297 = icmp eq i8 %296, 0, !dbg !621
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !621
  br i1 %297, label %298, label %276, !dbg !621, !llvm.loop !633

; <label>:298:                                    ; preds = %288, %266, %263
  %299 = phi i32 [ %36, %263 ], [ %36, %266 ], [ %279, %288 ], !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  switch i2 %256, label %974 [
    i2 0, label %300
    i2 1, label %434
    i2 -2, label %534
    i2 -1, label %750
  ], !dbg !636

; <label>:300:                                    ; preds = %298
  %301 = icmp eq i64 %85, 0, !dbg !637
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !639
  br i1 %301, label %302, label %303, !dbg !639

; <label>:302:                                    ; preds = %300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !640
  br label %303, !dbg !640

; <label>:303:                                    ; preds = %302, %300
  %304 = phi i64 [ 1, %302 ], [ %85, %300 ], !dbg !484
  %305 = and i32 %253, 1, !dbg !641
  %306 = icmp eq i32 %305, 0, !dbg !641
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br i1 %306, label %381, label %307, !dbg !642

; <label>:307:                                    ; preds = %303
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %25) #6, !dbg !643
  %308 = call i8* @memset(i8* nonnull %25, i32 0, i64 8) #4, !dbg !644
  %309 = and i32 %253, 16, !dbg !645
  %310 = icmp eq i32 %309, 0, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  br i1 %310, label %311, label %326, !dbg !648

; <label>:311:                                    ; preds = %307
  %312 = load i32, i32* %20, align 8, !dbg !649
  %313 = icmp ult i32 %312, 41, !dbg !649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %313, label %314, label %319, !dbg !649

; <label>:314:                                    ; preds = %311
  %315 = load i8*, i8** %21, align 8, !dbg !649
  %316 = sext i32 %312 to i64, !dbg !649
  %317 = getelementptr i8, i8* %315, i64 %316, !dbg !649
  %318 = add i32 %312, 8, !dbg !649
  store i32 %318, i32* %20, align 8, !dbg !649
  br label %322, !dbg !649

; <label>:319:                                    ; preds = %311
  %320 = load i8*, i8** %22, align 8, !dbg !649
  %321 = getelementptr i8, i8* %320, i64 8, !dbg !649
  store i8* %321, i8** %22, align 8, !dbg !649
  br label %322, !dbg !649

; <label>:322:                                    ; preds = %319, %314
  %323 = phi i8* [ %317, %314 ], [ %320, %319 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  %324 = bitcast i8* %323 to i32**, !dbg !649
  %325 = load i32*, i32** %324, align 8, !dbg !649
  br label %326, !dbg !651

; <label>:326:                                    ; preds = %307, %322
  %327 = phi i32* [ %325, %322 ], [ null, %307 ], !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br label %328, !dbg !654

; <label>:328:                                    ; preds = %326, %373
  %329 = phi i32* [ %365, %373 ], [ %327, %326 ]
  %330 = phi i64 [ %364, %373 ], [ %304, %326 ]
  %331 = phi i32 [ %363, %373 ], [ %299, %326 ]
  %332 = phi i32 [ %362, %373 ], [ 0, %326 ]
  %333 = call i32 @__locale_mb_cur_max() #4, !dbg !654
  %334 = icmp eq i32 %332, %333, !dbg !657
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %334, label %378, label %335, !dbg !658

; <label>:335:                                    ; preds = %328
  %336 = load i8*, i8** %24, align 8, !dbg !659, !tbaa !465
  %337 = load i8, i8* %336, align 1, !dbg !660, !tbaa !438
  %338 = add nsw i32 %332, 1, !dbg !661
  %339 = sext i32 %332 to i64, !dbg !662
  %340 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %339, !dbg !662
  store i8 %337, i8* %340, align 1, !dbg !663, !tbaa !438
  %341 = load i32, i32* %23, align 8, !dbg !664, !tbaa !456
  %342 = add nsw i32 %341, -1, !dbg !664
  store i32 %342, i32* %23, align 8, !dbg !664, !tbaa !456
  %343 = getelementptr inbounds i8, i8* %336, i64 1, !dbg !665
  store i8* %343, i8** %24, align 8, !dbg !665, !tbaa !465
  %344 = sext i32 %338 to i64, !dbg !666
  %345 = call i64 @_mbrtowc_r(%struct._reent* %0, i32* %329, i8* nonnull %13, i64 %344, %struct._mbstate_t* nonnull %9) #4, !dbg !669
  %346 = icmp eq i64 %345, -1, !dbg !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %346, label %378, label %347, !dbg !672

; <label>:347:                                    ; preds = %335
  %348 = icmp eq i64 %345, 0, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !675
  br i1 %348, label %349, label %352, !dbg !675

; <label>:349:                                    ; preds = %347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %310, label %350, label %351, !dbg !676

; <label>:350:                                    ; preds = %349
  store i32 0, i32* %329, align 4, !dbg !677, !tbaa !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  br label %351, !dbg !678

; <label>:351:                                    ; preds = %349, %350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br label %354, !dbg !679

; <label>:352:                                    ; preds = %347
  %353 = icmp eq i64 %345, -2, !dbg !680
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  br i1 %353, label %361, label %354, !dbg !679

; <label>:354:                                    ; preds = %351, %352
  %355 = add nsw i32 %331, %338, !dbg !682
  %356 = add i64 %330, -1, !dbg !684
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  br i1 %310, label %357, label %359, !dbg !685

; <label>:357:                                    ; preds = %354
  %358 = getelementptr inbounds i32, i32* %329, i64 1, !dbg !686
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !688
  br label %359, !dbg !688

; <label>:359:                                    ; preds = %354, %357
  %360 = phi i32* [ %329, %354 ], [ %358, %357 ], !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  br label %361, !dbg !690

; <label>:361:                                    ; preds = %352, %359
  %362 = phi i32 [ 0, %359 ], [ %338, %352 ], !dbg !691
  %363 = phi i32 [ %355, %359 ], [ %331, %352 ], !dbg !692
  %364 = phi i64 [ %356, %359 ], [ %330, %352 ], !dbg !693
  %365 = phi i32* [ %360, %359 ], [ %329, %352 ], !dbg !694
  %366 = load i32, i32* %23, align 8, !dbg !695, !tbaa !456
  %367 = icmp slt i32 %366, 1, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  br i1 %367, label %368, label %373, !dbg !695

; <label>:368:                                    ; preds = %361
  %369 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !695
  %370 = icmp eq i32 %369, 0, !dbg !695
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %370, label %373, label %371, !dbg !697

; <label>:371:                                    ; preds = %368
  %372 = icmp eq i32 %362, 0, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  br i1 %372, label %375, label %378, !dbg !701

; <label>:373:                                    ; preds = %368, %361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  %374 = icmp eq i64 %364, 0, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !653
  br i1 %374, label %375, label %328, !dbg !653, !llvm.loop !703

; <label>:375:                                    ; preds = %373, %371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %310, label %376, label %379, !dbg !705

; <label>:376:                                    ; preds = %375
  %377 = add nsw i32 %33, 1, !dbg !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br label %379, !dbg !708

; <label>:378:                                    ; preds = %371, %335, %328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #6, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %982

; <label>:379:                                    ; preds = %376, %375
  %380 = phi i32 [ %33, %375 ], [ %377, %376 ], !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %25) #6, !dbg !710
  br label %975

; <label>:381:                                    ; preds = %303
  %382 = and i32 %253, 16, !dbg !712
  %383 = icmp eq i32 %382, 0, !dbg !712
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !713
  br i1 %383, label %412, label %384, !dbg !713

; <label>:384:                                    ; preds = %381
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  br label %385, !dbg !715

; <label>:385:                                    ; preds = %391, %384
  %386 = phi i64 [ %304, %384 ], [ %394, %391 ], !dbg !716
  %387 = phi i64 [ 0, %384 ], [ %393, %391 ], !dbg !716
  %388 = load i32, i32* %23, align 8, !dbg !722, !tbaa !456
  %389 = trunc i64 %386 to i32, !dbg !723
  %390 = icmp slt i32 %388, %389, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !725
  br i1 %390, label %391, label %401, !dbg !725

; <label>:391:                                    ; preds = %385
  %392 = sext i32 %388 to i64, !dbg !726
  %393 = add i64 %387, %392, !dbg !727
  %394 = sub i64 %386, %392, !dbg !728
  %395 = load i8*, i8** %24, align 8, !dbg !729, !tbaa !465
  %396 = getelementptr inbounds i8, i8* %395, i64 %392, !dbg !729
  store i8* %396, i8** %24, align 8, !dbg !729, !tbaa !465
  %397 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !730
  %398 = icmp eq i32 %397, 0, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %398, label %385, label %399, !dbg !732, !llvm.loop !733

; <label>:399:                                    ; preds = %391
  %400 = icmp eq i64 %393, 0, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %400, label %411, label %407, !dbg !739

; <label>:401:                                    ; preds = %385
  %402 = trunc i64 %386 to i32, !dbg !723
  %403 = add i64 %387, %386, !dbg !740
  %404 = sub i32 %388, %402, !dbg !742
  store i32 %404, i32* %23, align 8, !dbg !742, !tbaa !456
  %405 = load i8*, i8** %24, align 8, !dbg !743, !tbaa !465
  %406 = getelementptr inbounds i8, i8* %405, i64 %386, !dbg !743
  store i8* %406, i8** %24, align 8, !dbg !743, !tbaa !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !744
  br label %407, !dbg !744

; <label>:407:                                    ; preds = %401, %399
  %408 = phi i64 [ %393, %399 ], [ %403, %401 ], !dbg !745
  %409 = trunc i64 %408 to i32, !dbg !746
  %410 = add i32 %299, %409, !dbg !746
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !747
  br label %975

; <label>:411:                                    ; preds = %399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %982

; <label>:412:                                    ; preds = %381
  %413 = load i32, i32* %20, align 8, !dbg !749
  %414 = icmp ult i32 %413, 41, !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  br i1 %414, label %415, label %420, !dbg !749

; <label>:415:                                    ; preds = %412
  %416 = load i8*, i8** %21, align 8, !dbg !749
  %417 = sext i32 %413 to i64, !dbg !749
  %418 = getelementptr i8, i8* %416, i64 %417, !dbg !749
  %419 = add i32 %413, 8, !dbg !749
  store i32 %419, i32* %20, align 8, !dbg !749
  br label %423, !dbg !749

; <label>:420:                                    ; preds = %412
  %421 = load i8*, i8** %22, align 8, !dbg !749
  %422 = getelementptr i8, i8* %421, i64 8, !dbg !749
  store i8* %422, i8** %22, align 8, !dbg !749
  br label %423, !dbg !749

; <label>:423:                                    ; preds = %420, %415
  %424 = phi i8* [ %418, %415 ], [ %421, %420 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !749
  %425 = bitcast i8* %424 to i8**, !dbg !749
  %426 = load i8*, i8** %425, align 8, !dbg !749
  %427 = call i64 @_fread_r(%struct._reent* %0, i8* %426, i64 1, i64 %304, %struct.__sFILE* nonnull %1) #4, !dbg !750
  %428 = icmp eq i64 %427, 0, !dbg !752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %428, label %433, label %429, !dbg !754

; <label>:429:                                    ; preds = %423
  %430 = trunc i64 %427 to i32, !dbg !755
  %431 = add i32 %299, %430, !dbg !755
  %432 = add nsw i32 %33, 1, !dbg !756
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !757
  br label %975

; <label>:433:                                    ; preds = %423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %982

; <label>:434:                                    ; preds = %298
  %435 = icmp eq i64 %85, 0, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %435, label %436, label %437, !dbg !761

; <label>:436:                                    ; preds = %434
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !762
  br label %437, !dbg !762

; <label>:437:                                    ; preds = %436, %434
  %438 = phi i64 [ -1, %436 ], [ %85, %434 ], !dbg !484
  %439 = and i32 %253, 16, !dbg !763
  %440 = icmp eq i32 %439, 0, !dbg !763
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !765
  br i1 %440, label %474, label %441, !dbg !765

; <label>:441:                                    ; preds = %437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %442 = load i8*, i8** %24, align 8, !dbg !768, !tbaa !465
  %443 = load i8, i8* %442, align 1, !dbg !769, !tbaa !438
  %444 = zext i8 %443 to i64, !dbg !770
  %445 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %444, !dbg !770
  %446 = load i8, i8* %445, align 1, !dbg !770, !tbaa !438
  %447 = icmp eq i8 %446, 0, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %447, label %448, label %449, !dbg !766

; <label>:448:                                    ; preds = %441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br label %994, !dbg !771

; <label>:449:                                    ; preds = %441, %467
  %450 = phi i8* [ %468, %467 ], [ %442, %441 ]
  %451 = phi i64 [ %457, %467 ], [ %438, %441 ]
  %452 = phi i32 [ %453, %467 ], [ 0, %441 ]
  %453 = add nuw nsw i32 %452, 1, !dbg !772
  %454 = load i32, i32* %23, align 8, !dbg !774, !tbaa !456
  %455 = add nsw i32 %454, -1, !dbg !774
  store i32 %455, i32* %23, align 8, !dbg !774, !tbaa !456
  %456 = getelementptr inbounds i8, i8* %450, i64 1, !dbg !775
  store i8* %456, i8** %24, align 8, !dbg !775, !tbaa !465
  %457 = add i64 %451, -1, !dbg !776
  %458 = icmp eq i64 %457, 0, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %458, label %530, label %459, !dbg !779

; <label>:459:                                    ; preds = %449
  %460 = icmp slt i32 %454, 2, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !780
  br i1 %460, label %461, label %467, !dbg !780

; <label>:461:                                    ; preds = %459
  %462 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !780
  %463 = icmp eq i32 %462, 0, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %463, label %464, label %466, !dbg !782

; <label>:464:                                    ; preds = %461
  %465 = load i8*, i8** %24, align 8, !dbg !768, !tbaa !465
  br label %467, !dbg !782

; <label>:466:                                    ; preds = %461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %530, !dbg !783

; <label>:467:                                    ; preds = %464, %459
  %468 = phi i8* [ %465, %464 ], [ %456, %459 ], !dbg !768
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %469 = load i8, i8* %468, align 1, !dbg !769, !tbaa !438
  %470 = zext i8 %469 to i64, !dbg !770
  %471 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %470, !dbg !770
  %472 = load i8, i8* %471, align 1, !dbg !770, !tbaa !438
  %473 = icmp eq i8 %472, 0, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  br i1 %473, label %530, label %449, !dbg !766, !llvm.loop !785

; <label>:474:                                    ; preds = %437
  %475 = load i32, i32* %20, align 8, !dbg !787
  %476 = icmp ult i32 %475, 41, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  br i1 %476, label %477, label %482, !dbg !787

; <label>:477:                                    ; preds = %474
  %478 = load i8*, i8** %21, align 8, !dbg !787
  %479 = sext i32 %475 to i64, !dbg !787
  %480 = getelementptr i8, i8* %478, i64 %479, !dbg !787
  %481 = add i32 %475, 8, !dbg !787
  store i32 %481, i32* %20, align 8, !dbg !787
  br label %485, !dbg !787

; <label>:482:                                    ; preds = %474
  %483 = load i8*, i8** %22, align 8, !dbg !787
  %484 = getelementptr i8, i8* %483, i64 8, !dbg !787
  store i8* %484, i8** %22, align 8, !dbg !787
  br label %485, !dbg !787

; <label>:485:                                    ; preds = %482, %477
  %486 = phi i8* [ %480, %477 ], [ %483, %482 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  %487 = bitcast i8* %486 to i8**, !dbg !787
  %488 = load i8*, i8** %487, align 8, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  %489 = load i8*, i8** %24, align 8, !dbg !792, !tbaa !465
  %490 = load i8, i8* %489, align 1, !dbg !793, !tbaa !438
  %491 = zext i8 %490 to i64, !dbg !794
  %492 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %491, !dbg !794
  %493 = load i8, i8* %492, align 1, !dbg !794, !tbaa !438
  %494 = icmp eq i8 %493, 0, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %494, label %521, label %495, !dbg !791

; <label>:495:                                    ; preds = %485, %514
  %496 = phi i8* [ %515, %514 ], [ %489, %485 ]
  %497 = phi i64 [ %504, %514 ], [ %438, %485 ]
  %498 = phi i8* [ %503, %514 ], [ %488, %485 ]
  %499 = load i32, i32* %23, align 8, !dbg !795, !tbaa !456
  %500 = add nsw i32 %499, -1, !dbg !795
  store i32 %500, i32* %23, align 8, !dbg !795, !tbaa !456
  %501 = getelementptr inbounds i8, i8* %496, i64 1, !dbg !797
  store i8* %501, i8** %24, align 8, !dbg !797, !tbaa !465
  %502 = load i8, i8* %496, align 1, !dbg !798, !tbaa !438
  %503 = getelementptr inbounds i8, i8* %498, i64 1, !dbg !799
  store i8 %502, i8* %498, align 1, !dbg !800, !tbaa !438
  %504 = add i64 %497, -1, !dbg !801
  %505 = icmp eq i64 %504, 0, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  br i1 %505, label %521, label %506, !dbg !804

; <label>:506:                                    ; preds = %495
  %507 = load i32, i32* %23, align 8, !dbg !805, !tbaa !456
  %508 = icmp slt i32 %507, 1, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br i1 %508, label %509, label %514, !dbg !805

; <label>:509:                                    ; preds = %506
  %510 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !805
  %511 = icmp eq i32 %510, 0, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !807
  br i1 %511, label %514, label %512, !dbg !807

; <label>:512:                                    ; preds = %509
  %513 = icmp eq i8* %503, %488, !dbg !808
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  br i1 %513, label %982, label %521, !dbg !811

; <label>:514:                                    ; preds = %509, %506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  %515 = load i8*, i8** %24, align 8, !dbg !792, !tbaa !465
  %516 = load i8, i8* %515, align 1, !dbg !793, !tbaa !438
  %517 = zext i8 %516 to i64, !dbg !794
  %518 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 %517, !dbg !794
  %519 = load i8, i8* %518, align 1, !dbg !794, !tbaa !438
  %520 = icmp eq i8 %519, 0, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  br i1 %520, label %521, label %495, !dbg !791, !llvm.loop !812

; <label>:521:                                    ; preds = %495, %514, %485, %512
  %522 = phi i8* [ %503, %512 ], [ %488, %485 ], [ %503, %514 ], [ %503, %495 ], !dbg !814
  %523 = ptrtoint i8* %522 to i64, !dbg !815
  %524 = ptrtoint i8* %488 to i64, !dbg !815
  %525 = sub i64 %523, %524, !dbg !815
  %526 = trunc i64 %525 to i32, !dbg !816
  %527 = icmp eq i32 %526, 0, !dbg !817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  br i1 %527, label %994, label %528, !dbg !819

; <label>:528:                                    ; preds = %521
  store i8 0, i8* %522, align 1, !dbg !820, !tbaa !438
  %529 = add nsw i32 %33, 1, !dbg !821
  br label %530

; <label>:530:                                    ; preds = %467, %449, %466, %528
  %531 = phi i32 [ %526, %528 ], [ %453, %466 ], [ %453, %449 ], [ %453, %467 ], !dbg !814
  %532 = phi i32 [ %529, %528 ], [ %33, %466 ], [ %33, %449 ], [ %33, %467 ], !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %533 = add nsw i32 %531, %299, !dbg !822
  br label %975, !dbg !823

; <label>:534:                                    ; preds = %298
  %535 = icmp eq i64 %85, 0, !dbg !824
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !826
  br i1 %535, label %536, label %537, !dbg !826

; <label>:536:                                    ; preds = %534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br label %537, !dbg !827

; <label>:537:                                    ; preds = %536, %534
  %538 = phi i64 [ -1, %536 ], [ %85, %534 ], !dbg !484
  %539 = and i32 %253, 1, !dbg !828
  %540 = icmp eq i32 %539, 0, !dbg !828
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  br i1 %540, label %650, label %541, !dbg !829

; <label>:541:                                    ; preds = %537
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %26) #6, !dbg !830
  %542 = call i8* @memset(i8* nonnull %26, i32 0, i64 8) #4, !dbg !831
  %543 = and i32 %253, 16, !dbg !832
  %544 = icmp eq i32 %543, 0, !dbg !834
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %544, label %545, label %560, !dbg !835

; <label>:545:                                    ; preds = %541
  %546 = load i32, i32* %20, align 8, !dbg !836
  %547 = icmp ult i32 %546, 41, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br i1 %547, label %548, label %553, !dbg !836

; <label>:548:                                    ; preds = %545
  %549 = load i8*, i8** %21, align 8, !dbg !836
  %550 = sext i32 %546 to i64, !dbg !836
  %551 = getelementptr i8, i8* %549, i64 %550, !dbg !836
  %552 = add i32 %546, 8, !dbg !836
  store i32 %552, i32* %20, align 8, !dbg !836
  br label %556, !dbg !836

; <label>:553:                                    ; preds = %545
  %554 = load i8*, i8** %22, align 8, !dbg !836
  %555 = getelementptr i8, i8* %554, i64 8, !dbg !836
  store i8* %555, i8** %22, align 8, !dbg !836
  br label %556, !dbg !836

; <label>:556:                                    ; preds = %553, %548
  %557 = phi i8* [ %551, %548 ], [ %554, %553 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  %558 = bitcast i8* %557 to i32**, !dbg !836
  %559 = load i32*, i32** %558, align 8, !dbg !836
  br label %560, !dbg !837

; <label>:560:                                    ; preds = %541, %556
  %561 = phi i32* [ %559, %556 ], [ %5, %541 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %562 = call i8* @__locale_ctype_ptr() #4, !dbg !840
  %563 = getelementptr inbounds i8, i8* %562, i64 1, !dbg !840
  %564 = load i8*, i8** %24, align 8, !dbg !840, !tbaa !465
  %565 = load i8, i8* %564, align 1, !dbg !840, !tbaa !438
  %566 = zext i8 %565 to i64, !dbg !840
  %567 = getelementptr inbounds i8, i8* %563, i64 %566, !dbg !840
  %568 = load i8, i8* %567, align 1, !dbg !840, !tbaa !438
  %569 = and i8 %568, 8, !dbg !840
  %570 = icmp eq i8 %569, 0, !dbg !840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %570, label %571, label %642, !dbg !839

; <label>:571:                                    ; preds = %560, %630
  %572 = phi i32* [ %622, %630 ], [ %561, %560 ]
  %573 = phi i64 [ %621, %630 ], [ %538, %560 ]
  %574 = phi i32 [ %620, %630 ], [ %299, %560 ]
  %575 = phi i32 [ %619, %630 ], [ 0, %560 ]
  %576 = call i32 @__locale_mb_cur_max() #4, !dbg !841
  %577 = icmp eq i32 %575, %576, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  br i1 %577, label %647, label %578, !dbg !845

; <label>:578:                                    ; preds = %571
  %579 = load i8*, i8** %24, align 8, !dbg !846, !tbaa !465
  %580 = load i8, i8* %579, align 1, !dbg !847, !tbaa !438
  %581 = add nsw i32 %575, 1, !dbg !848
  %582 = sext i32 %575 to i64, !dbg !849
  %583 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %582, !dbg !849
  store i8 %580, i8* %583, align 1, !dbg !850, !tbaa !438
  %584 = load i32, i32* %23, align 8, !dbg !851, !tbaa !456
  %585 = add nsw i32 %584, -1, !dbg !851
  store i32 %585, i32* %23, align 8, !dbg !851, !tbaa !456
  %586 = getelementptr inbounds i8, i8* %579, i64 1, !dbg !852
  store i8* %586, i8** %24, align 8, !dbg !852, !tbaa !465
  %587 = sext i32 %581 to i64, !dbg !853
  %588 = call i64 @_mbrtowc_r(%struct._reent* %0, i32* %572, i8* nonnull %13, i64 %587, %struct._mbstate_t* nonnull %10) #4, !dbg !856
  %589 = icmp eq i64 %588, -1, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %589, label %647, label %590, !dbg !858

; <label>:590:                                    ; preds = %578
  %591 = icmp eq i64 %588, 0, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %591, label %592, label %593, !dbg !861

; <label>:592:                                    ; preds = %590
  store i32 0, i32* %572, align 4, !dbg !862, !tbaa !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br label %597, !dbg !864

; <label>:593:                                    ; preds = %590
  %594 = icmp eq i64 %588, -2, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br i1 %594, label %618, label %595, !dbg !864

; <label>:595:                                    ; preds = %593
  %596 = load i32, i32* %572, align 4, !dbg !867, !tbaa !441
  br label %597, !dbg !864

; <label>:597:                                    ; preds = %595, %592
  %598 = phi i32 [ %596, %595 ], [ 0, %592 ], !dbg !867
  %599 = call i32 @iswspace(i32 %598) #4, !dbg !870
  %600 = icmp eq i32 %599, 0, !dbg !870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !871
  br i1 %600, label %611, label %601, !dbg !871

; <label>:601:                                    ; preds = %597
  %602 = icmp eq i32 %581, 0, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %602, label %642, label %603, !dbg !874

; <label>:603:                                    ; preds = %601, %603
  %604 = phi i64 [ %605, %603 ], [ %587, %601 ]
  %605 = add nsw i64 %604, -1, !dbg !875
  %606 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %605, !dbg !876
  %607 = load i8, i8* %606, align 1, !dbg !876, !tbaa !438
  %608 = zext i8 %607 to i32, !dbg !877
  %609 = call i32 @_ungetc_r(%struct._reent* %0, i32 %608, %struct.__sFILE* %1) #4, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %610 = icmp eq i64 %605, 0
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %610, label %642, label %603, !dbg !874, !llvm.loop !879

; <label>:611:                                    ; preds = %597
  %612 = add nsw i32 %574, %581, !dbg !881
  %613 = add i64 %573, -1, !dbg !882
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  br i1 %544, label %614, label %616, !dbg !883

; <label>:614:                                    ; preds = %611
  %615 = getelementptr inbounds i32, i32* %572, i64 1, !dbg !884
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  br label %616, !dbg !886

; <label>:616:                                    ; preds = %614, %611
  %617 = phi i32* [ %615, %614 ], [ %572, %611 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  br label %618, !dbg !887

; <label>:618:                                    ; preds = %593, %616
  %619 = phi i32 [ 0, %616 ], [ %581, %593 ], !dbg !888
  %620 = phi i32 [ %612, %616 ], [ %574, %593 ], !dbg !692
  %621 = phi i64 [ %613, %616 ], [ %573, %593 ], !dbg !889
  %622 = phi i32* [ %617, %616 ], [ %572, %593 ], !dbg !838
  %623 = load i32, i32* %23, align 8, !dbg !890, !tbaa !456
  %624 = icmp slt i32 %623, 1, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %624, label %625, label %630, !dbg !890

; <label>:625:                                    ; preds = %618
  %626 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !890
  %627 = icmp eq i32 %626, 0, !dbg !890
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !892
  br i1 %627, label %630, label %628, !dbg !892

; <label>:628:                                    ; preds = %625
  %629 = icmp eq i32 %619, 0, !dbg !893
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !896
  br i1 %629, label %642, label %647, !dbg !896

; <label>:630:                                    ; preds = %625, %618
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  %631 = call i8* @__locale_ctype_ptr() #4, !dbg !840
  %632 = getelementptr inbounds i8, i8* %631, i64 1, !dbg !840
  %633 = load i8*, i8** %24, align 8, !dbg !840, !tbaa !465
  %634 = load i8, i8* %633, align 1, !dbg !840, !tbaa !438
  %635 = zext i8 %634 to i64, !dbg !840
  %636 = getelementptr inbounds i8, i8* %632, i64 %635, !dbg !840
  %637 = load i8, i8* %636, align 1, !dbg !840, !tbaa !438
  %638 = and i8 %637, 8, !dbg !840
  %639 = icmp eq i8 %638, 0, !dbg !840
  %640 = icmp ne i64 %621, 0, !dbg !897
  %641 = and i1 %640, %639, !dbg !898
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %641, label %571, label %642, !dbg !839, !llvm.loop !899

; <label>:642:                                    ; preds = %630, %603, %560, %601, %628
  %643 = phi i32 [ %620, %628 ], [ %574, %601 ], [ %299, %560 ], [ %574, %603 ], [ %620, %630 ], !dbg !692
  %644 = phi i32* [ %622, %628 ], [ %572, %601 ], [ %561, %560 ], [ %572, %603 ], [ %622, %630 ], !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %544, label %645, label %648, !dbg !901

; <label>:645:                                    ; preds = %642
  store i32 0, i32* %644, align 4, !dbg !902, !tbaa !441
  %646 = add nsw i32 %33, 1, !dbg !905
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %648, !dbg !906

; <label>:647:                                    ; preds = %628, %578, %571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #6, !dbg !908
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %982

; <label>:648:                                    ; preds = %645, %642
  %649 = phi i32 [ %33, %642 ], [ %646, %645 ], !dbg !909
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !908
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %26) #6, !dbg !908
  br label %975

; <label>:650:                                    ; preds = %537
  %651 = and i32 %253, 16, !dbg !910
  %652 = icmp eq i32 %651, 0, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !912
  br i1 %652, label %691, label %653, !dbg !912

; <label>:653:                                    ; preds = %650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %654 = call i8* @__locale_ctype_ptr() #4, !dbg !915
  %655 = getelementptr inbounds i8, i8* %654, i64 1, !dbg !915
  %656 = load i8*, i8** %24, align 8, !dbg !915, !tbaa !465
  %657 = load i8, i8* %656, align 1, !dbg !915, !tbaa !438
  %658 = zext i8 %657 to i64, !dbg !915
  %659 = getelementptr inbounds i8, i8* %655, i64 %658, !dbg !915
  %660 = load i8, i8* %659, align 1, !dbg !915, !tbaa !438
  %661 = and i8 %660, 8, !dbg !915
  %662 = icmp eq i8 %661, 0, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %662, label %663, label %688, !dbg !913

; <label>:663:                                    ; preds = %653, %678
  %664 = phi i8* [ %681, %678 ], [ %656, %653 ]
  %665 = phi i64 [ %671, %678 ], [ %538, %653 ]
  %666 = phi i32 [ %667, %678 ], [ 0, %653 ]
  %667 = add nuw nsw i32 %666, 1, !dbg !917
  %668 = load i32, i32* %23, align 8, !dbg !919, !tbaa !456
  %669 = add nsw i32 %668, -1, !dbg !919
  store i32 %669, i32* %23, align 8, !dbg !919, !tbaa !456
  %670 = getelementptr inbounds i8, i8* %664, i64 1, !dbg !920
  store i8* %670, i8** %24, align 8, !dbg !920, !tbaa !465
  %671 = add i64 %665, -1, !dbg !921
  %672 = icmp eq i64 %671, 0, !dbg !923
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  br i1 %672, label %688, label %673, !dbg !924

; <label>:673:                                    ; preds = %663
  %674 = icmp slt i32 %668, 2, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !925
  br i1 %674, label %675, label %678, !dbg !925

; <label>:675:                                    ; preds = %673
  %676 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !925
  %677 = icmp eq i32 %676, 0, !dbg !925
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !927
  br i1 %677, label %678, label %688, !dbg !927

; <label>:678:                                    ; preds = %675, %673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  %679 = call i8* @__locale_ctype_ptr() #4, !dbg !915
  %680 = getelementptr inbounds i8, i8* %679, i64 1, !dbg !915
  %681 = load i8*, i8** %24, align 8, !dbg !915, !tbaa !465
  %682 = load i8, i8* %681, align 1, !dbg !915, !tbaa !438
  %683 = zext i8 %682 to i64, !dbg !915
  %684 = getelementptr inbounds i8, i8* %680, i64 %683, !dbg !915
  %685 = load i8, i8* %684, align 1, !dbg !915, !tbaa !438
  %686 = and i8 %685, 8, !dbg !915
  %687 = icmp eq i8 %686, 0, !dbg !916
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %687, label %663, label %688, !dbg !913, !llvm.loop !928

; <label>:688:                                    ; preds = %678, %663, %675, %653
  %689 = phi i32 [ 0, %653 ], [ %667, %675 ], [ %667, %663 ], [ %667, %678 ], !dbg !930
  %690 = add nsw i32 %689, %299, !dbg !931
  br label %975, !dbg !932

; <label>:691:                                    ; preds = %650
  %692 = load i32, i32* %20, align 8, !dbg !933
  %693 = icmp ult i32 %692, 41, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %693, label %694, label %699, !dbg !933

; <label>:694:                                    ; preds = %691
  %695 = load i8*, i8** %21, align 8, !dbg !933
  %696 = sext i32 %692 to i64, !dbg !933
  %697 = getelementptr i8, i8* %695, i64 %696, !dbg !933
  %698 = add i32 %692, 8, !dbg !933
  store i32 %698, i32* %20, align 8, !dbg !933
  br label %702, !dbg !933

; <label>:699:                                    ; preds = %691
  %700 = load i8*, i8** %22, align 8, !dbg !933
  %701 = getelementptr i8, i8* %700, i64 8, !dbg !933
  store i8* %701, i8** %22, align 8, !dbg !933
  br label %702, !dbg !933

; <label>:702:                                    ; preds = %699, %694
  %703 = phi i8* [ %697, %694 ], [ %700, %699 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  %704 = bitcast i8* %703 to i8**, !dbg !933
  %705 = load i8*, i8** %704, align 8, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %706 = call i8* @__locale_ctype_ptr() #4, !dbg !936
  %707 = getelementptr inbounds i8, i8* %706, i64 1, !dbg !936
  %708 = load i8*, i8** %24, align 8, !dbg !936, !tbaa !465
  %709 = load i8, i8* %708, align 1, !dbg !936, !tbaa !438
  %710 = zext i8 %709 to i64, !dbg !936
  %711 = getelementptr inbounds i8, i8* %707, i64 %710, !dbg !936
  %712 = load i8, i8* %711, align 1, !dbg !936, !tbaa !438
  %713 = and i8 %712, 8, !dbg !936
  %714 = icmp eq i8 %713, 0, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %714, label %715, label %742, !dbg !935

; <label>:715:                                    ; preds = %702, %732
  %716 = phi i8* [ %735, %732 ], [ %708, %702 ]
  %717 = phi i64 [ %724, %732 ], [ %538, %702 ]
  %718 = phi i8* [ %723, %732 ], [ %705, %702 ]
  %719 = load i32, i32* %23, align 8, !dbg !938, !tbaa !456
  %720 = add nsw i32 %719, -1, !dbg !938
  store i32 %720, i32* %23, align 8, !dbg !938, !tbaa !456
  %721 = getelementptr inbounds i8, i8* %716, i64 1, !dbg !940
  store i8* %721, i8** %24, align 8, !dbg !940, !tbaa !465
  %722 = load i8, i8* %716, align 1, !dbg !941, !tbaa !438
  %723 = getelementptr inbounds i8, i8* %718, i64 1, !dbg !942
  store i8 %722, i8* %718, align 1, !dbg !943, !tbaa !438
  %724 = add i64 %717, -1, !dbg !944
  %725 = icmp eq i64 %724, 0, !dbg !946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !947
  br i1 %725, label %742, label %726, !dbg !947

; <label>:726:                                    ; preds = %715
  %727 = load i32, i32* %23, align 8, !dbg !948, !tbaa !456
  %728 = icmp slt i32 %727, 1, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br i1 %728, label %729, label %732, !dbg !948

; <label>:729:                                    ; preds = %726
  %730 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !948
  %731 = icmp eq i32 %730, 0, !dbg !948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !950
  br i1 %731, label %732, label %742, !dbg !950

; <label>:732:                                    ; preds = %729, %726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  %733 = call i8* @__locale_ctype_ptr() #4, !dbg !936
  %734 = getelementptr inbounds i8, i8* %733, i64 1, !dbg !936
  %735 = load i8*, i8** %24, align 8, !dbg !936, !tbaa !465
  %736 = load i8, i8* %735, align 1, !dbg !936, !tbaa !438
  %737 = zext i8 %736 to i64, !dbg !936
  %738 = getelementptr inbounds i8, i8* %734, i64 %737, !dbg !936
  %739 = load i8, i8* %738, align 1, !dbg !936, !tbaa !438
  %740 = and i8 %739, 8, !dbg !936
  %741 = icmp eq i8 %740, 0, !dbg !937
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %741, label %715, label %742, !dbg !935, !llvm.loop !951

; <label>:742:                                    ; preds = %732, %715, %729, %702
  %743 = phi i8* [ %705, %702 ], [ %723, %729 ], [ %723, %715 ], [ %723, %732 ], !dbg !953
  store i8 0, i8* %743, align 1, !dbg !954, !tbaa !438
  %744 = ptrtoint i8* %743 to i64, !dbg !955
  %745 = ptrtoint i8* %705 to i64, !dbg !955
  %746 = sub i64 %744, %745, !dbg !955
  %747 = trunc i64 %746 to i32, !dbg !956
  %748 = add i32 %299, %747, !dbg !956
  %749 = add nsw i32 %33, 1, !dbg !957
  br label %975

; <label>:750:                                    ; preds = %298
  %751 = add i64 %85, -1, !dbg !960
  %752 = icmp ugt i64 %751, 38, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br i1 %752, label %753, label %756, !dbg !963

; <label>:753:                                    ; preds = %750
  %754 = trunc i64 %85 to i32, !dbg !964
  %755 = add i32 %754, -39, !dbg !964
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !966
  br label %756, !dbg !966

; <label>:756:                                    ; preds = %750, %753
  %757 = phi i64 [ 39, %753 ], [ %85, %750 ], !dbg !484
  %758 = phi i32 [ %755, %753 ], [ 0, %750 ], !dbg !967
  %759 = or i32 %253, 3456, !dbg !968
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br label %760, !dbg !972

; <label>:760:                                    ; preds = %756, %846
  %761 = phi i8* [ %848, %846 ], [ %13, %756 ]
  %762 = phi i32 [ %837, %846 ], [ 0, %756 ]
  %763 = phi i32 [ %836, %846 ], [ %758, %756 ]
  %764 = phi i64 [ %847, %846 ], [ %757, %756 ]
  %765 = phi i32 [ %834, %846 ], [ %254, %756 ]
  %766 = phi i32 [ %833, %846 ], [ %759, %756 ]
  %767 = phi i64 [ %832, %846 ], [ 0, %756 ]
  %768 = load i8*, i8** %24, align 8, !dbg !972, !tbaa !465
  %769 = load i8, i8* %768, align 1, !dbg !975, !tbaa !438
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  switch i8 %769, label %852 [
    i8 48, label %770
    i8 49, label %794
    i8 50, label %794
    i8 51, label %794
    i8 52, label %794
    i8 53, label %794
    i8 54, label %794
    i8 55, label %794
    i8 56, label %800
    i8 57, label %800
    i8 65, label %809
    i8 66, label %809
    i8 67, label %809
    i8 68, label %809
    i8 69, label %809
    i8 70, label %809
    i8 97, label %809
    i8 98, label %809
    i8 99, label %809
    i8 100, label %809
    i8 101, label %809
    i8 102, label %809
    i8 43, label %813
    i8 45, label %813
    i8 120, label %818
    i8 88, label %818
  ], !dbg !976

; <label>:770:                                    ; preds = %760
  %771 = and i32 %766, 2048, !dbg !977
  %772 = icmp eq i32 %771, 0, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !980
  br i1 %772, label %827, label %773, !dbg !980

; <label>:773:                                    ; preds = %770
  %774 = icmp eq i32 %765, 0, !dbg !981
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !983
  br i1 %774, label %775, label %777, !dbg !983

; <label>:775:                                    ; preds = %773
  %776 = or i32 %766, 512, !dbg !984
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  br label %777, !dbg !986

; <label>:777:                                    ; preds = %775, %773
  %778 = phi i32 [ %776, %775 ], [ %766, %773 ], !dbg !967
  %779 = phi i32 [ 8, %775 ], [ %765, %773 ], !dbg !483
  %780 = and i32 %778, 1024, !dbg !987
  %781 = icmp eq i32 %780, 0, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %781, label %784, label %782, !dbg !989

; <label>:782:                                    ; preds = %777
  %783 = and i32 %778, -1409, !dbg !990
  br label %824, !dbg !992

; <label>:784:                                    ; preds = %777
  %785 = and i32 %778, -897, !dbg !993
  %786 = icmp eq i32 %763, 0, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br i1 %786, label %790, label %787, !dbg !996

; <label>:787:                                    ; preds = %784
  %788 = add i32 %763, -1, !dbg !997
  %789 = add i64 %764, 1, !dbg !999
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1000
  br label %790, !dbg !1000

; <label>:790:                                    ; preds = %784, %787
  %791 = phi i64 [ %789, %787 ], [ %764, %784 ], !dbg !1001
  %792 = phi i32 [ %788, %787 ], [ 0, %784 ], !dbg !1001
  %793 = add nsw i32 %762, 1, !dbg !1002
  br label %831, !dbg !1003

; <label>:794:                                    ; preds = %760, %760, %760, %760, %760, %760, %760
  %795 = sext i32 %765 to i64, !dbg !1004
  %796 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiscanf_r.basefix, i64 0, i64 %795, !dbg !1004
  %797 = load i16, i16* %796, align 2, !dbg !1004, !tbaa !587
  %798 = sext i16 %797 to i32, !dbg !1004
  %799 = and i32 %766, -2945, !dbg !1005
  br label %824, !dbg !1006

; <label>:800:                                    ; preds = %760, %760
  %801 = sext i32 %765 to i64, !dbg !1007
  %802 = getelementptr inbounds [17 x i16], [17 x i16]* @__svfiscanf_r.basefix, i64 0, i64 %801, !dbg !1007
  %803 = load i16, i16* %802, align 2, !dbg !1007, !tbaa !587
  %804 = add nsw i64 %801, -1, !dbg !1008
  %805 = icmp ult i64 %804, 8, !dbg !1008
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  %806 = sext i16 %803 to i32, !dbg !1007
  br i1 %805, label %850, label %807, !dbg !1010

; <label>:807:                                    ; preds = %800
  %808 = and i32 %766, -2945, !dbg !1011
  br label %824, !dbg !1012

; <label>:809:                                    ; preds = %760, %760, %760, %760, %760, %760, %760, %760, %760, %760, %760, %760
  %810 = icmp slt i32 %765, 11, !dbg !1013
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1015
  br i1 %810, label %852, label %811, !dbg !1015

; <label>:811:                                    ; preds = %809
  %812 = and i32 %766, -2945, !dbg !1016
  br label %824, !dbg !1017

; <label>:813:                                    ; preds = %760, %760
  %814 = trunc i32 %766 to i8, !dbg !1018
  %815 = icmp slt i8 %814, 0, !dbg !1018
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  br i1 %815, label %816, label %852, !dbg !1020

; <label>:816:                                    ; preds = %813
  %817 = and i32 %766, -129, !dbg !1021
  br label %824, !dbg !1023

; <label>:818:                                    ; preds = %760, %760
  %819 = and i32 %766, 1536, !dbg !1024
  %820 = icmp eq i32 %819, 512, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1027
  br i1 %820, label %821, label %852, !dbg !1027

; <label>:821:                                    ; preds = %818
  %822 = and i32 %766, -1793, !dbg !1028
  %823 = or i32 %822, 1280, !dbg !1030
  br label %824, !dbg !1031

; <label>:824:                                    ; preds = %782, %794, %807, %811, %816, %821
  %825 = phi i32 [ %783, %782 ], [ %799, %794 ], [ %808, %807 ], [ %812, %811 ], [ %817, %816 ], [ %823, %821 ]
  %826 = phi i32 [ %779, %782 ], [ %798, %794 ], [ %806, %807 ], [ %765, %811 ], [ %765, %816 ], [ 16, %821 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br label %827, !dbg !1033

; <label>:827:                                    ; preds = %824, %770
  %828 = phi i32 [ %766, %770 ], [ %825, %824 ], !dbg !967
  %829 = phi i32 [ %765, %770 ], [ %826, %824 ], !dbg !483
  %830 = add nsw i64 %767, 1, !dbg !1033
  store i8 %769, i8* %761, align 1, !dbg !1034, !tbaa !438
  br label %831, !dbg !1035

; <label>:831:                                    ; preds = %827, %790
  %832 = phi i64 [ %830, %827 ], [ %767, %790 ]
  %833 = phi i32 [ %828, %827 ], [ %785, %790 ], !dbg !1036
  %834 = phi i32 [ %829, %827 ], [ %779, %790 ], !dbg !1037
  %835 = phi i64 [ %764, %827 ], [ %791, %790 ], !dbg !1038
  %836 = phi i32 [ %763, %827 ], [ %792, %790 ], !dbg !1038
  %837 = phi i32 [ %762, %827 ], [ %793, %790 ], !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  %838 = load i32, i32* %23, align 8, !dbg !1039, !tbaa !456
  %839 = add nsw i32 %838, -1, !dbg !1039
  store i32 %839, i32* %23, align 8, !dbg !1039, !tbaa !456
  %840 = icmp sgt i32 %838, 1, !dbg !1041
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1042
  br i1 %840, label %841, label %843, !dbg !1042

; <label>:841:                                    ; preds = %831
  %842 = getelementptr inbounds i8, i8* %768, i64 1, !dbg !1043
  store i8* %842, i8** %24, align 8, !dbg !1043, !tbaa !465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1044
  br label %846, !dbg !1044

; <label>:843:                                    ; preds = %831
  %844 = call i32 @__srefill_r(%struct._reent* %0, %struct.__sFILE* nonnull %1) #4, !dbg !1045
  %845 = icmp eq i32 %844, 0, !dbg !1045
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1047
  br i1 %845, label %846, label %852, !dbg !1047

; <label>:846:                                    ; preds = %843, %841
  %847 = add i64 %835, -1, !dbg !1048
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  %848 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %832, !dbg !959
  %849 = icmp eq i64 %847, 0, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !971
  br i1 %849, label %852, label %760, !dbg !971, !llvm.loop !1050

; <label>:850:                                    ; preds = %800
  %851 = sext i16 %803 to i32, !dbg !1007
  br label %852, !dbg !959

; <label>:852:                                    ; preds = %843, %846, %760, %809, %813, %818, %850
  %853 = phi i64 [ %767, %850 ], [ %767, %818 ], [ %767, %813 ], [ %767, %809 ], [ %767, %760 ], [ %832, %846 ], [ %832, %843 ]
  %854 = phi i32 [ %766, %850 ], [ %766, %818 ], [ %766, %813 ], [ %766, %809 ], [ %766, %760 ], [ %833, %846 ], [ %833, %843 ], !dbg !967
  %855 = phi i32 [ %851, %850 ], [ %765, %818 ], [ %765, %813 ], [ %765, %809 ], [ %765, %760 ], [ %834, %846 ], [ %834, %843 ], !dbg !483
  %856 = phi i32 [ %762, %850 ], [ %762, %818 ], [ %762, %813 ], [ %762, %809 ], [ %762, %760 ], [ %837, %846 ], [ %837, %843 ], !dbg !959
  %857 = getelementptr inbounds [40 x i8], [40 x i8]* %7, i64 0, i64 %853, !dbg !959
  %858 = and i32 %854, 256, !dbg !1052
  %859 = icmp eq i32 %858, 0, !dbg !1052
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  br i1 %859, label %870, label %860, !dbg !1054

; <label>:860:                                    ; preds = %852
  %861 = icmp sgt i64 %853, 0, !dbg !1055
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1058
  br i1 %861, label %862, label %867, !dbg !1058

; <label>:862:                                    ; preds = %860
  %863 = getelementptr inbounds i8, i8* %857, i64 -1, !dbg !1059
  %864 = load i8, i8* %863, align 1, !dbg !1060, !tbaa !438
  %865 = sext i8 %864 to i32, !dbg !1060
  %866 = call i32 @_ungetc_r(%struct._reent* %0, i32 %865, %struct.__sFILE* nonnull %1) #4, !dbg !1061
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1061
  br label %867, !dbg !1061

; <label>:867:                                    ; preds = %862, %860
  %868 = phi i8* [ %863, %862 ], [ %857, %860 ], !dbg !1062
  %869 = icmp eq i8* %868, %13, !dbg !1063
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %869, label %973, label %870, !dbg !1065

; <label>:870:                                    ; preds = %852, %867
  %871 = phi i8* [ %868, %867 ], [ %857, %852 ], !dbg !1062
  %872 = and i32 %854, 16, !dbg !1066
  %873 = icmp eq i32 %872, 0, !dbg !1067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br i1 %873, label %874, label %966, !dbg !1068

; <label>:874:                                    ; preds = %870
  store i8 0, i8* %871, align 1, !dbg !1069, !tbaa !438
  %875 = call i64 %255(%struct._reent* %0, i8* nonnull %13, i8** null, i32 %855) #4, !dbg !1070, !callees !1071
  %876 = and i32 %854, 32, !dbg !1073
  %877 = icmp eq i32 %876, 0, !dbg !1073
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  br i1 %877, label %894, label %878, !dbg !1074

; <label>:878:                                    ; preds = %874
  %879 = load i32, i32* %20, align 8, !dbg !1075
  %880 = icmp ult i32 %879, 41, !dbg !1075
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  br i1 %880, label %881, label %886, !dbg !1075

; <label>:881:                                    ; preds = %878
  %882 = load i8*, i8** %21, align 8, !dbg !1075
  %883 = sext i32 %879 to i64, !dbg !1075
  %884 = getelementptr i8, i8* %882, i64 %883, !dbg !1075
  %885 = add i32 %879, 8, !dbg !1075
  store i32 %885, i32* %20, align 8, !dbg !1075
  br label %889, !dbg !1075

; <label>:886:                                    ; preds = %878
  %887 = load i8*, i8** %22, align 8, !dbg !1075
  %888 = getelementptr i8, i8* %887, i64 8, !dbg !1075
  store i8* %888, i8** %22, align 8, !dbg !1075
  br label %889, !dbg !1075

; <label>:889:                                    ; preds = %886, %881
  %890 = phi i8* [ %884, %881 ], [ %887, %886 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1075
  %891 = bitcast i8* %890 to i8***, !dbg !1075
  %892 = load i8**, i8*** %891, align 8, !dbg !1075
  %893 = inttoptr i64 %875 to i8*, !dbg !1077
  store i8* %893, i8** %892, align 8, !dbg !1078, !tbaa !1079
  br label %964, !dbg !1080

; <label>:894:                                    ; preds = %874
  %895 = and i32 %854, 8, !dbg !1081
  %896 = icmp eq i32 %895, 0, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1083
  br i1 %896, label %913, label %897, !dbg !1083

; <label>:897:                                    ; preds = %894
  %898 = load i32, i32* %20, align 8, !dbg !1084
  %899 = icmp ult i32 %898, 41, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %899, label %900, label %905, !dbg !1084

; <label>:900:                                    ; preds = %897
  %901 = load i8*, i8** %21, align 8, !dbg !1084
  %902 = sext i32 %898 to i64, !dbg !1084
  %903 = getelementptr i8, i8* %901, i64 %902, !dbg !1084
  %904 = add i32 %898, 8, !dbg !1084
  store i32 %904, i32* %20, align 8, !dbg !1084
  br label %908, !dbg !1084

; <label>:905:                                    ; preds = %897
  %906 = load i8*, i8** %22, align 8, !dbg !1084
  %907 = getelementptr i8, i8* %906, i64 8, !dbg !1084
  store i8* %907, i8** %22, align 8, !dbg !1084
  br label %908, !dbg !1084

; <label>:908:                                    ; preds = %905, %900
  %909 = phi i8* [ %903, %900 ], [ %906, %905 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  %910 = bitcast i8* %909 to i8**, !dbg !1084
  %911 = load i8*, i8** %910, align 8, !dbg !1084
  %912 = trunc i64 %875 to i8, !dbg !1086
  store i8 %912, i8* %911, align 1, !dbg !1087, !tbaa !438
  br label %964, !dbg !1088

; <label>:913:                                    ; preds = %894
  %914 = and i32 %854, 4, !dbg !1089
  %915 = icmp eq i32 %914, 0, !dbg !1089
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  br i1 %915, label %932, label %916, !dbg !1091

; <label>:916:                                    ; preds = %913
  %917 = load i32, i32* %20, align 8, !dbg !1092
  %918 = icmp ult i32 %917, 41, !dbg !1092
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  br i1 %918, label %919, label %924, !dbg !1092

; <label>:919:                                    ; preds = %916
  %920 = load i8*, i8** %21, align 8, !dbg !1092
  %921 = sext i32 %917 to i64, !dbg !1092
  %922 = getelementptr i8, i8* %920, i64 %921, !dbg !1092
  %923 = add i32 %917, 8, !dbg !1092
  store i32 %923, i32* %20, align 8, !dbg !1092
  br label %927, !dbg !1092

; <label>:924:                                    ; preds = %916
  %925 = load i8*, i8** %22, align 8, !dbg !1092
  %926 = getelementptr i8, i8* %925, i64 8, !dbg !1092
  store i8* %926, i8** %22, align 8, !dbg !1092
  br label %927, !dbg !1092

; <label>:927:                                    ; preds = %924, %919
  %928 = phi i8* [ %922, %919 ], [ %925, %924 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  %929 = bitcast i8* %928 to i16**, !dbg !1092
  %930 = load i16*, i16** %929, align 8, !dbg !1092
  %931 = trunc i64 %875 to i16, !dbg !1094
  store i16 %931, i16* %930, align 2, !dbg !1095, !tbaa !587
  br label %964, !dbg !1096

; <label>:932:                                    ; preds = %913
  %933 = and i32 %854, 1, !dbg !1097
  %934 = icmp eq i32 %933, 0, !dbg !1097
  %935 = load i32, i32* %20, align 8, !dbg !1099
  %936 = icmp ult i32 %935, 41, !dbg !1099
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1101
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1102
  br i1 %934, label %950, label %937, !dbg !1101

; <label>:937:                                    ; preds = %932
  br i1 %936, label %938, label %943, !dbg !1104

; <label>:938:                                    ; preds = %937
  %939 = load i8*, i8** %21, align 8, !dbg !1104
  %940 = sext i32 %935 to i64, !dbg !1104
  %941 = getelementptr i8, i8* %939, i64 %940, !dbg !1104
  %942 = add i32 %935, 8, !dbg !1104
  store i32 %942, i32* %20, align 8, !dbg !1104
  br label %946, !dbg !1104

; <label>:943:                                    ; preds = %937
  %944 = load i8*, i8** %22, align 8, !dbg !1104
  %945 = getelementptr i8, i8* %944, i64 8, !dbg !1104
  store i8* %945, i8** %22, align 8, !dbg !1104
  br label %946, !dbg !1104

; <label>:946:                                    ; preds = %943, %938
  %947 = phi i8* [ %941, %938 ], [ %944, %943 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1104
  %948 = bitcast i8* %947 to i64**, !dbg !1104
  %949 = load i64*, i64** %948, align 8, !dbg !1104
  store i64 %875, i64* %949, align 8, !dbg !1105, !tbaa !599
  br label %964, !dbg !1106

; <label>:950:                                    ; preds = %932
  br i1 %936, label %951, label %956, !dbg !1107

; <label>:951:                                    ; preds = %950
  %952 = load i8*, i8** %21, align 8, !dbg !1107
  %953 = sext i32 %935 to i64, !dbg !1107
  %954 = getelementptr i8, i8* %952, i64 %953, !dbg !1107
  %955 = add i32 %935, 8, !dbg !1107
  store i32 %955, i32* %20, align 8, !dbg !1107
  br label %959, !dbg !1107

; <label>:956:                                    ; preds = %950
  %957 = load i8*, i8** %22, align 8, !dbg !1107
  %958 = getelementptr i8, i8* %957, i64 8, !dbg !1107
  store i8* %958, i8** %22, align 8, !dbg !1107
  br label %959, !dbg !1107

; <label>:959:                                    ; preds = %956, %951
  %960 = phi i8* [ %954, %951 ], [ %957, %956 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1107
  %961 = bitcast i8* %960 to i32**, !dbg !1107
  %962 = load i32*, i32** %961, align 8, !dbg !1107
  %963 = trunc i64 %875 to i32, !dbg !1108
  store i32 %963, i32* %962, align 4, !dbg !1109, !tbaa !441
  br label %964

; <label>:964:                                    ; preds = %908, %946, %959, %927, %889
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %965 = add nsw i32 %33, 1, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1111
  br label %966, !dbg !1111

; <label>:966:                                    ; preds = %870, %964
  %967 = phi i32 [ %965, %964 ], [ %33, %870 ], !dbg !692
  %968 = ptrtoint i8* %871 to i64, !dbg !1112
  %969 = sub i64 %968, %27, !dbg !1112
  %970 = trunc i64 %969 to i32, !dbg !1113
  %971 = add i32 %856, %299, !dbg !1113
  %972 = add i32 %971, %970, !dbg !1113
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br label %975

; <label>:973:                                    ; preds = %867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %994

; <label>:974:                                    ; preds = %298
  unreachable

; <label>:975:                                    ; preds = %530, %379, %407, %429, %966, %742, %688, %648
  %976 = phi i32 [ %649, %648 ], [ %33, %688 ], [ %749, %742 ], [ %532, %530 ], [ %380, %379 ], [ %33, %407 ], [ %432, %429 ], [ %967, %966 ]
  %977 = phi i32 [ %643, %648 ], [ %690, %688 ], [ %748, %742 ], [ %533, %530 ], [ %363, %379 ], [ %410, %407 ], [ %431, %429 ], [ %972, %966 ]
  %978 = phi i32 [ %254, %648 ], [ %254, %688 ], [ %254, %742 ], [ %254, %530 ], [ %254, %379 ], [ %254, %407 ], [ %254, %429 ], [ %855, %966 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  %979 = load i8, i8* %257, align 1, !dbg !437, !tbaa !438
  %980 = zext i8 %979 to i32, !dbg !437
  store i32 %980, i32* %5, align 4, !dbg !440, !tbaa !441
  %981 = icmp eq i8 %979, 0, !dbg !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !444
  br i1 %981, label %994, label %28, !dbg !444, !llvm.loop !477

; <label>:982:                                    ; preds = %260, %512, %94, %285, %647, %433, %411, %378
  %983 = load i32, i32* %8, align 4, !dbg !1117, !tbaa !441
  %984 = call i32 @pthread_setcancelstate(i32 %983, i32* nonnull %8) #4, !dbg !1117
  %985 = icmp eq i32 %33, 0, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  br i1 %985, label %992, label %986, !dbg !1119

; <label>:986:                                    ; preds = %982
  %987 = getelementptr inbounds %struct.__sFILE, %struct.__sFILE* %1, i64 0, i32 3, !dbg !1120
  %988 = load i16, i16* %987, align 8, !dbg !1120, !tbaa !1121
  %989 = and i16 %988, 64, !dbg !1122
  %990 = icmp eq i16 %989, 0, !dbg !1122
  %991 = select i1 %990, i32 %33, i32 -1, !dbg !1118
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1118
  br label %992, !dbg !1118

; <label>:992:                                    ; preds = %986, %982, %238
  %993 = phi i32 [ -1, %238 ], [ -1, %982 ], [ %991, %986 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #6, !dbg !1123
  br label %998

; <label>:994:                                    ; preds = %975, %521, %75, %97, %234, %448, %4, %973
  %995 = phi i32 [ %33, %973 ], [ 0, %4 ], [ %33, %448 ], [ %33, %234 ], [ %33, %97 ], [ %33, %75 ], [ %976, %975 ], [ %33, %521 ]
  %996 = load i32, i32* %8, align 4, !dbg !1124, !tbaa !441
  %997 = call i32 @pthread_setcancelstate(i32 %996, i32* nonnull %8) #4, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #6, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %998, !dbg !1125

; <label>:998:                                    ; preds = %992, %994
  %999 = phi i32 [ %995, %994 ], [ %993, %992 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %13) #6, !dbg !1126
  call void @llvm.lifetime.end.p0i8(i64 256, i8* nonnull %12) #6, !dbg !1126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #6, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  ret i32 %999, !dbg !1126
}

; Function Attrs: noredzone nounwind
define dso_local i32 @__svfiscanf(%struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1127 {
  %4 = tail call %struct._reent* @__getreent() #4, !dbg !1133
  %5 = tail call i32 @__svfiscanf_r(%struct._reent* %4, %struct.__sFILE* %0, i8* %1, %struct.__va_list_tag* %2) #5, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1135
  ret i32 %5, !dbg !1135
}

; Function Attrs: noredzone nounwind
define dso_local i32 @_vfiscanf_r(%struct._reent*, %struct.__sFILE*, i8*, %struct.__va_list_tag*) local_unnamed_addr #0 !dbg !1136 {
  %5 = icmp eq %struct._reent* %0, null, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br i1 %5, label %11, label %6, !dbg !1146

; <label>:6:                                      ; preds = %4
  %7 = getelementptr inbounds %struct._reent, %struct._reent* %0, i64 0, i32 8, !dbg !1146
  %8 = load i32, i32* %7, align 8, !dbg !1146, !tbaa !412
  %9 = icmp eq i32 %8, 0, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1145
  br i1 %9, label %10, label %11, !dbg !1145

; <label>:10:                                     ; preds = %6
  tail call void @__sinit(%struct._reent* nonnull %0) #4, !dbg !1146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1146
  br label %11, !dbg !1146

; <label>:11:                                     ; preds = %6, %4, %10
  %12 = tail call i32 @__svfiscanf_r(%struct._reent* %0, %struct.__sFILE* %1, i8* %2, %struct.__va_list_tag* %3) #5, !dbg !1148
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1149
  ret i32 %12, !dbg !1149
}

; Function Attrs: noredzone
declare dso_local i32 @pthread_setcancelstate(i32, i32*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__srefill_r(%struct._reent*, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_strtol_r(%struct._reent*, i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_strtoul_r(%struct._reent*, i8*, i8**, i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @__sccl(i8*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @__locale_mb_cur_max() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_mbrtowc_r(%struct._reent*, i32*, i8*, i64, %struct._mbstate_t*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i64 @_fread_r(%struct._reent*, i8*, i64, i64, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @iswspace(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i32 @_ungetc_r(%struct._reent*, i32, %struct.__sFILE*) local_unnamed_addr #3

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nobuiltin noredzone nounwind }
attributes #5 = { nobuiltin noredzone }
attributes #6 = { nounwind }

!llvm.module.flags = !{!392, !393, !394}
!llvm.ident = !{!395}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "basefix", scope: !2, file: !3, line: 477, type: !388, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "__svfiscanf_r", scope: !3, file: !3, line: 426, type: !4, isLocal: false, isDefinition: true, scopeLine: 431, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !325)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/vfscanf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !7, !286, !46, !289}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !9, line: 569, size: 14912, elements: !10)
!9 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!10 = !{!11, !12, !94, !95, !96, !97, !101, !102, !167, !168, !172, !184, !185, !186, !188, !189, !190, !252, !271, !272, !277, !284}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !8, file: !9, line: 571, baseType: !6, size: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !9, line: 287, baseType: !15)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !9, line: 181, size: 1408, elements: !16)
!16 = !{!17, !20, !21, !22, !24, !25, !30, !31, !33, !42, !48, !53, !57, !58, !59, !60, !64, !68, !69, !70, !72, !73, !77, !93}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !15, file: !9, line: 182, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !15, file: !9, line: 183, baseType: !6, size: 32, offset: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !15, file: !9, line: 184, baseType: !6, size: 32, offset: 96)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !15, file: !9, line: 185, baseType: !23, size: 16, offset: 128)
!23 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !15, file: !9, line: 186, baseType: !23, size: 16, offset: 144)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !15, file: !9, line: 187, baseType: !26, size: 128, offset: 192)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !9, line: 117, size: 128, elements: !27)
!27 = !{!28, !29}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !26, file: !9, line: 118, baseType: !18, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !26, file: !9, line: 119, baseType: !6, size: 32, offset: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !15, file: !9, line: 188, baseType: !6, size: 32, offset: 320)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !15, file: !9, line: 195, baseType: !32, size: 64, offset: 384)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !15, file: !9, line: 197, baseType: !34, size: 64, offset: 448)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !7, !32, !40, !6}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !38, line: 145, baseType: !39)
!38 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!39 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !15, file: !9, line: 199, baseType: !43, size: 64, offset: 512)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{!37, !7, !32, !46, !6}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !15, file: !9, line: 202, baseType: !49, size: 64, offset: 576)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DISubroutineType(types: !51)
!51 = !{!52, !7, !32, !52, !6}
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !38, line: 114, baseType: !39)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !15, file: !9, line: 203, baseType: !54, size: 64, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DISubroutineType(types: !56)
!56 = !{!6, !7, !32}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !15, file: !9, line: 206, baseType: !26, size: 128, offset: 704)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !15, file: !9, line: 207, baseType: !18, size: 64, offset: 832)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !15, file: !9, line: 208, baseType: !6, size: 32, offset: 896)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !15, file: !9, line: 211, baseType: !61, size: 24, offset: 928)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 24, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 3)
!64 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !15, file: !9, line: 212, baseType: !65, size: 8, offset: 952)
!65 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 8, elements: !66)
!66 = !{!67}
!67 = !DISubrange(count: 1)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !15, file: !9, line: 215, baseType: !26, size: 128, offset: 960)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !15, file: !9, line: 218, baseType: !6, size: 32, offset: 1088)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !15, file: !9, line: 219, baseType: !71, size: 64, offset: 1152)
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !38, line: 44, baseType: !39)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !15, file: !9, line: 222, baseType: !7, size: 64, offset: 1216)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !15, file: !9, line: 226, baseType: !74, size: 32, offset: 1280)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !38, line: 175, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !76, line: 12, baseType: !6)
!76 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!77 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !15, file: !9, line: 228, baseType: !78, size: 64, offset: 1312)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !38, line: 171, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !38, line: 163, size: 64, elements: !80)
!80 = !{!81, !82}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !79, file: !38, line: 165, baseType: !6, size: 32)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !79, file: !38, line: 170, baseType: !83, size: 32, offset: 32)
!83 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !79, file: !38, line: 166, size: 32, elements: !84)
!84 = !{!85, !89}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !83, file: !38, line: 168, baseType: !86, size: 32)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !87, line: 124, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !83, file: !38, line: 169, baseType: !90, size: 32)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 32, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 4)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !15, file: !9, line: 229, baseType: !6, size: 32, offset: 1376)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !8, file: !9, line: 576, baseType: !13, size: 64, offset: 192)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !8, file: !9, line: 578, baseType: !6, size: 32, offset: 256)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !8, file: !9, line: 579, baseType: !98, size: 200, offset: 288)
!98 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 200, elements: !99)
!99 = !{!100}
!100 = !DISubrange(count: 25)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !8, file: !9, line: 582, baseType: !6, size: 32, offset: 512)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !8, file: !9, line: 583, baseType: !103, size: 64, offset: 576)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !105, line: 178, size: 3392, elements: !106)
!105 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/stdio/../stdlib/../locale/setlocale.h", directory: "/root/.unikraft/apps/redis/build")
!106 = !{!107, !112, !120, !129, !130, !131, !159, !163, !166}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "categories", scope: !104, file: !105, line: 180, baseType: !108, size: 1792)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 1792, elements: !109)
!109 = !{!110, !111}
!110 = !DISubrange(count: 7)
!111 = !DISubrange(count: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "wctomb", scope: !104, file: !105, line: 181, baseType: !113, size: 64, offset: 1792)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DISubroutineType(types: !115)
!115 = !{!6, !7, !40, !116, !117}
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "wchar_t", file: !87, line: 83, baseType: !6)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !119, line: 86, baseType: !78)
!119 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/wchar.h", directory: "/root/.unikraft/apps/redis/build")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mbtowc", scope: !104, file: !105, line: 183, baseType: !121, size: 64, offset: 1856)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!6, !7, !124, !46, !125, !117}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 40, baseType: !127)
!126 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !38, line: 129, baseType: !128)
!128 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "cjk_lang", scope: !104, file: !105, line: 185, baseType: !6, size: 32, offset: 1920)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_ptr", scope: !104, file: !105, line: 186, baseType: !40, size: 64, offset: 1984)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "lconv", scope: !104, file: !105, line: 187, baseType: !132, size: 768, offset: 2048)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !133, line: 42, size: 768, elements: !134)
!133 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/locale.h", directory: "/root/.unikraft/apps/redis/build")
!134 = !{!135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "decimal_point", scope: !132, file: !133, line: 44, baseType: !40, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "thousands_sep", scope: !132, file: !133, line: 45, baseType: !40, size: 64, offset: 64)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "grouping", scope: !132, file: !133, line: 46, baseType: !40, size: 64, offset: 128)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "int_curr_symbol", scope: !132, file: !133, line: 47, baseType: !40, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "currency_symbol", scope: !132, file: !133, line: 48, baseType: !40, size: 64, offset: 256)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mon_decimal_point", scope: !132, file: !133, line: 49, baseType: !40, size: 64, offset: 320)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "mon_thousands_sep", scope: !132, file: !133, line: 50, baseType: !40, size: 64, offset: 384)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "mon_grouping", scope: !132, file: !133, line: 51, baseType: !40, size: 64, offset: 448)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "positive_sign", scope: !132, file: !133, line: 52, baseType: !40, size: 64, offset: 512)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "negative_sign", scope: !132, file: !133, line: 53, baseType: !40, size: 64, offset: 576)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "int_frac_digits", scope: !132, file: !133, line: 54, baseType: !41, size: 8, offset: 640)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "frac_digits", scope: !132, file: !133, line: 55, baseType: !41, size: 8, offset: 648)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "p_cs_precedes", scope: !132, file: !133, line: 56, baseType: !41, size: 8, offset: 656)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "p_sep_by_space", scope: !132, file: !133, line: 57, baseType: !41, size: 8, offset: 664)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "n_cs_precedes", scope: !132, file: !133, line: 58, baseType: !41, size: 8, offset: 672)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "n_sep_by_space", scope: !132, file: !133, line: 59, baseType: !41, size: 8, offset: 680)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "p_sign_posn", scope: !132, file: !133, line: 60, baseType: !41, size: 8, offset: 688)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "n_sign_posn", scope: !132, file: !133, line: 61, baseType: !41, size: 8, offset: 696)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_cs_precedes", scope: !132, file: !133, line: 62, baseType: !41, size: 8, offset: 704)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sep_by_space", scope: !132, file: !133, line: 63, baseType: !41, size: 8, offset: 712)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "int_n_sign_posn", scope: !132, file: !133, line: 64, baseType: !41, size: 8, offset: 720)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_cs_precedes", scope: !132, file: !133, line: 65, baseType: !41, size: 8, offset: 728)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sep_by_space", scope: !132, file: !133, line: 66, baseType: !41, size: 8, offset: 736)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "int_p_sign_posn", scope: !132, file: !133, line: 67, baseType: !41, size: 8, offset: 744)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "mb_cur_max", scope: !104, file: !105, line: 189, baseType: !160, size: 16, offset: 2816)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 16, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 2)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "ctype_codeset", scope: !104, file: !105, line: 190, baseType: !164, size: 256, offset: 2832)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 256, elements: !165)
!165 = !{!111}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "message_codeset", scope: !104, file: !105, line: 191, baseType: !164, size: 256, offset: 3088)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !8, file: !9, line: 585, baseType: !6, size: 32, offset: 640)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !8, file: !9, line: 587, baseType: !169, size: 64, offset: 704)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !7}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !8, file: !9, line: 590, baseType: !173, size: 64, offset: 768)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !9, line: 47, size: 256, elements: !175)
!175 = !{!176, !177, !178, !179, !180, !181}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !174, file: !9, line: 49, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !174, file: !9, line: 50, baseType: !6, size: 32, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !174, file: !9, line: 50, baseType: !6, size: 32, offset: 96)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !174, file: !9, line: 50, baseType: !6, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !174, file: !9, line: 50, baseType: !6, size: 32, offset: 160)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !174, file: !9, line: 51, baseType: !182, size: 32, offset: 192)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 32, elements: !66)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !9, line: 25, baseType: !88)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !8, file: !9, line: 591, baseType: !6, size: 32, offset: 832)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !8, file: !9, line: 592, baseType: !173, size: 64, offset: 896)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !8, file: !9, line: 593, baseType: !187, size: 64, offset: 960)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !8, file: !9, line: 596, baseType: !6, size: 32, offset: 1024)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !8, file: !9, line: 597, baseType: !40, size: 64, offset: 1088)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !8, file: !9, line: 632, baseType: !191, size: 2880, offset: 1152)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !8, file: !9, line: 599, size: 2880, elements: !192)
!192 = !{!193, !243}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !191, file: !9, line: 622, baseType: !194, size: 1728)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !9, line: 601, size: 1728, elements: !195)
!195 = !{!196, !197, !198, !202, !214, !215, !217, !225, !226, !227, !228, !232, !236, !237, !238, !239, !240, !241, !242}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !194, file: !9, line: 603, baseType: !88, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !194, file: !9, line: 604, baseType: !40, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !194, file: !9, line: 605, baseType: !199, size: 208, offset: 128)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 208, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 26)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !194, file: !9, line: 606, baseType: !203, size: 288, offset: 352)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !9, line: 55, size: 288, elements: !204)
!204 = !{!205, !206, !207, !208, !209, !210, !211, !212, !213}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !203, file: !9, line: 57, baseType: !6, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !203, file: !9, line: 58, baseType: !6, size: 32, offset: 32)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !203, file: !9, line: 59, baseType: !6, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !203, file: !9, line: 60, baseType: !6, size: 32, offset: 96)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !203, file: !9, line: 61, baseType: !6, size: 32, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !203, file: !9, line: 62, baseType: !6, size: 32, offset: 160)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !203, file: !9, line: 63, baseType: !6, size: 32, offset: 192)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !203, file: !9, line: 64, baseType: !6, size: 32, offset: 224)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !203, file: !9, line: 65, baseType: !6, size: 32, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !194, file: !9, line: 607, baseType: !6, size: 32, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !194, file: !9, line: 608, baseType: !216, size: 64, offset: 704)
!216 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !194, file: !9, line: 609, baseType: !218, size: 112, offset: 768)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !9, line: 319, size: 112, elements: !219)
!219 = !{!220, !223, !224}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !218, file: !9, line: 320, baseType: !221, size: 48)
!221 = !DICompositeType(tag: DW_TAG_array_type, baseType: !222, size: 48, elements: !62)
!222 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !218, file: !9, line: 321, baseType: !221, size: 48, offset: 48)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !218, file: !9, line: 322, baseType: !222, size: 16, offset: 96)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !194, file: !9, line: 610, baseType: !78, size: 64, offset: 896)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !194, file: !9, line: 611, baseType: !78, size: 64, offset: 960)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !194, file: !9, line: 612, baseType: !78, size: 64, offset: 1024)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !194, file: !9, line: 613, baseType: !229, size: 64, offset: 1088)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 64, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 8)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !194, file: !9, line: 614, baseType: !233, size: 192, offset: 1152)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 192, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 24)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !194, file: !9, line: 615, baseType: !6, size: 32, offset: 1344)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !194, file: !9, line: 616, baseType: !78, size: 64, offset: 1376)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !194, file: !9, line: 617, baseType: !78, size: 64, offset: 1440)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !194, file: !9, line: 618, baseType: !78, size: 64, offset: 1504)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !194, file: !9, line: 619, baseType: !78, size: 64, offset: 1568)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !194, file: !9, line: 620, baseType: !78, size: 64, offset: 1632)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !194, file: !9, line: 621, baseType: !6, size: 32, offset: 1696)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !191, file: !9, line: 631, baseType: !244, size: 2880)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !191, file: !9, line: 626, size: 2880, elements: !245)
!245 = !{!246, !250}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !244, file: !9, line: 629, baseType: !247, size: 1920)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 1920, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 30)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !244, file: !9, line: 630, baseType: !251, size: 960, offset: 1920)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !88, size: 960, elements: !248)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !8, file: !9, line: 636, baseType: !253, size: 64, offset: 4032)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !9, line: 93, size: 6336, elements: !255)
!255 = !{!256, !257, !258, !263}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !254, file: !9, line: 94, baseType: !253, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !254, file: !9, line: 95, baseType: !6, size: 32, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !254, file: !9, line: 97, baseType: !259, size: 2048, offset: 128)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 2048, elements: !165)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !254, file: !9, line: 98, baseType: !264, size: 4160, offset: 2176)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !9, line: 74, size: 4160, elements: !265)
!265 = !{!266, !268, !269, !270}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !264, file: !9, line: 75, baseType: !267, size: 2048)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !32, size: 2048, elements: !165)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !264, file: !9, line: 76, baseType: !267, size: 2048, offset: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !264, file: !9, line: 78, baseType: !183, size: 32, offset: 4096)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !264, file: !9, line: 81, baseType: !183, size: 32, offset: 4128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !8, file: !9, line: 637, baseType: !254, size: 6336, offset: 4096)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !8, file: !9, line: 641, baseType: !273, size: 64, offset: 10432)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{null, !6}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !8, file: !9, line: 646, baseType: !278, size: 192, offset: 10496)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !9, line: 291, size: 192, elements: !279)
!279 = !{!280, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !278, file: !9, line: 293, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !278, file: !9, line: 294, baseType: !6, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !278, file: !9, line: 295, baseType: !13, size: 64, offset: 128)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !8, file: !9, line: 648, baseType: !285, size: 4224, offset: 10688)
!285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 4224, elements: !62)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !288, line: 66, baseType: !14)
!288 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/stdio.h", directory: "/root/.unikraft/apps/redis/build")
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, size: 192, elements: !291)
!291 = !{!292, !293, !294, !295}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !290, file: !3, baseType: !88, size: 32)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !290, file: !3, baseType: !88, size: 32, offset: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !290, file: !3, baseType: !32, size: 64, offset: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !290, file: !3, baseType: !32, size: 64, offset: 128)
!296 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !297, retainedTypes: !315, globals: !324)
!297 = !{!298}
!298 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !299, line: 435, baseType: !6, size: 32, elements: !300)
!299 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libpthread-embedded/origin/pthread-embedded-44b41d760a433915d70a7be9809651b0a65e001d/pthread.h", directory: "/root/.unikraft/apps/redis/build")
!300 = !{!301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314}
!301 = !DIEnumerator(name: "PTHREAD_CREATE_JOINABLE", value: 0)
!302 = !DIEnumerator(name: "PTHREAD_CREATE_DETACHED", value: 1)
!303 = !DIEnumerator(name: "PTHREAD_INHERIT_SCHED", value: 0)
!304 = !DIEnumerator(name: "PTHREAD_EXPLICIT_SCHED", value: 1)
!305 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS", value: 0)
!306 = !DIEnumerator(name: "PTHREAD_SCOPE_SYSTEM", value: 1)
!307 = !DIEnumerator(name: "PTHREAD_SCOPE_PROCESS_VFPU", value: 2)
!308 = !DIEnumerator(name: "PTHREAD_CANCEL_ENABLE", value: 0)
!309 = !DIEnumerator(name: "PTHREAD_CANCEL_DISABLE", value: 1)
!310 = !DIEnumerator(name: "PTHREAD_CANCEL_ASYNCHRONOUS", value: 0)
!311 = !DIEnumerator(name: "PTHREAD_CANCEL_DEFERRED", value: 1)
!312 = !DIEnumerator(name: "PTHREAD_PROCESS_PRIVATE", value: 0)
!313 = !DIEnumerator(name: "PTHREAD_PROCESS_SHARED", value: 1)
!314 = !DIEnumerator(name: "PTHREAD_BARRIER_SERIAL_THREAD", value: -1)
!315 = !{!18, !6, !316, !125, !32, !19, !319, !320}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!128, !7, !46, !319, !6}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !321, line: 82, baseType: !322)
!321 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !323, line: 232, baseType: !128)
!323 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !{!0}
!325 = !{!326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !349, !353, !354, !355, !357, !359, !361, !363, !370, !373, !375, !378, !380, !381, !384}
!326 = !DILocalVariable(name: "rptr", arg: 1, scope: !2, file: !3, line: 426, type: !7)
!327 = !DILocalVariable(name: "fp", arg: 2, scope: !2, file: !3, line: 426, type: !286)
!328 = !DILocalVariable(name: "fmt0", arg: 3, scope: !2, file: !3, line: 426, type: !46)
!329 = !DILocalVariable(name: "ap", arg: 4, scope: !2, file: !3, line: 426, type: !289)
!330 = !DILocalVariable(name: "fmt", scope: !2, file: !3, line: 432, type: !18)
!331 = !DILocalVariable(name: "c", scope: !2, file: !3, line: 433, type: !6)
!332 = !DILocalVariable(name: "width", scope: !2, file: !3, line: 434, type: !125)
!333 = !DILocalVariable(name: "p", scope: !2, file: !3, line: 435, type: !40)
!334 = !DILocalVariable(name: "n", scope: !2, file: !3, line: 436, type: !6)
!335 = !DILocalVariable(name: "flags", scope: !2, file: !3, line: 437, type: !6)
!336 = !DILocalVariable(name: "p0", scope: !2, file: !3, line: 438, type: !40)
!337 = !DILocalVariable(name: "nassigned", scope: !2, file: !3, line: 439, type: !6)
!338 = !DILocalVariable(name: "nread", scope: !2, file: !3, line: 440, type: !6)
!339 = !DILocalVariable(name: "base", scope: !2, file: !3, line: 448, type: !6)
!340 = !DILocalVariable(name: "nbytes", scope: !2, file: !3, line: 449, type: !6)
!341 = !DILocalVariable(name: "wc", scope: !2, file: !3, line: 450, type: !116)
!342 = !DILocalVariable(name: "wcp", scope: !2, file: !3, line: 451, type: !124)
!343 = !DILocalVariable(name: "mbslen", scope: !2, file: !3, line: 452, type: !125)
!344 = !DILocalVariable(name: "ccfn", scope: !2, file: !3, line: 458, type: !316)
!345 = !DILocalVariable(name: "ccltab", scope: !2, file: !3, line: 459, type: !346)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 2048, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 256)
!349 = !DILocalVariable(name: "buf", scope: !2, file: !3, line: 460, type: !350)
!350 = !DICompositeType(tag: DW_TAG_array_type, baseType: !41, size: 320, elements: !351)
!351 = !{!352}
!352 = !DISubrange(count: 40)
!353 = !DILocalVariable(name: "lptr", scope: !2, file: !3, line: 461, type: !18)
!354 = !DILocalVariable(name: "cp", scope: !2, file: !3, line: 463, type: !40)
!355 = !DILocalVariable(name: "sp", scope: !2, file: !3, line: 464, type: !356)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!357 = !DILocalVariable(name: "ip", scope: !2, file: !3, line: 465, type: !358)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!359 = !DILocalVariable(name: "lp", scope: !2, file: !3, line: 471, type: !360)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!361 = !DILocalVariable(name: "__oldfpcancel", scope: !362, file: !3, line: 496, type: !6)
!362 = distinct !DILexicalBlock(scope: !2, file: !3, line: 496, column: 3)
!363 = !DILocalVariable(name: "state", scope: !364, file: !3, line: 847, type: !118)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 846, column: 13)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 845, column: 15)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 838, column: 2)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 507, column: 5)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 506, column: 3)
!369 = distinct !DILexicalBlock(scope: !362, file: !3, line: 506, column: 3)
!370 = !DILocalVariable(name: "sum", scope: !371, file: !3, line: 888, type: !125)
!371 = distinct !DILexicalBlock(scope: !372, file: !3, line: 887, column: 6)
!372 = distinct !DILexicalBlock(scope: !365, file: !3, line: 886, column: 16)
!373 = !DILocalVariable(name: "r", scope: !374, file: !3, line: 915, type: !125)
!374 = distinct !DILexicalBlock(scope: !372, file: !3, line: 914, column: 6)
!375 = !DILocalVariable(name: "state", scope: !376, file: !3, line: 980, type: !118)
!376 = distinct !DILexicalBlock(scope: !377, file: !3, line: 978, column: 13)
!377 = distinct !DILexicalBlock(scope: !366, file: !3, line: 977, column: 15)
!378 = !DILocalVariable(name: "width_left", scope: !379, file: !3, line: 1062, type: !88)
!379 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1060, column: 2)
!380 = !DILocalVariable(name: "skips", scope: !379, file: !3, line: 1063, type: !6)
!381 = !DILocalVariable(name: "res", scope: !382, file: !3, line: 1215, type: !128)
!382 = distinct !DILexicalBlock(scope: !383, file: !3, line: 1214, column: 6)
!383 = distinct !DILexicalBlock(scope: !379, file: !3, line: 1213, column: 8)
!384 = !DILocalVariable(name: "vp", scope: !385, file: !3, line: 1221, type: !387)
!385 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1220, column: 3)
!386 = distinct !DILexicalBlock(scope: !382, file: !3, line: 1219, column: 12)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !389, size: 272, elements: !390)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!390 = !{!391}
!391 = !DISubrange(count: 17)
!392 = !{i32 2, !"Dwarf Version", i32 4}
!393 = !{i32 2, !"Debug Info Version", i32 3}
!394 = !{i32 1, !"wchar_size", i32 4}
!395 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!396 = distinct !DISubprogram(name: "vfiscanf", scope: !3, file: !3, line: 260, type: !397, isLocal: false, isDefinition: true, scopeLine: 264, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!6, !286, !46, !289}
!399 = !{!400, !401, !402, !403, !404}
!400 = !DILocalVariable(name: "fp", arg: 1, scope: !396, file: !3, line: 260, type: !286)
!401 = !DILocalVariable(name: "fmt", arg: 2, scope: !396, file: !3, line: 260, type: !46)
!402 = !DILocalVariable(name: "ap", arg: 3, scope: !396, file: !3, line: 260, type: !289)
!403 = !DILocalVariable(name: "reent", scope: !396, file: !3, line: 265, type: !7)
!404 = !DILocalVariable(name: "_check_init_ptr", scope: !405, file: !3, line: 267, type: !7)
!405 = distinct !DILexicalBlock(scope: !396, file: !3, line: 267, column: 3)
!406 = !DILocation(line: 260, column: 1, scope: !396)
!407 = !DILocation(line: 265, column: 26, scope: !396)
!408 = !DILocation(line: 265, column: 18, scope: !396)
!409 = !DILocation(line: 267, column: 3, scope: !405)
!410 = !DILocation(line: 267, column: 3, scope: !411)
!411 = distinct !DILexicalBlock(scope: !405, file: !3, line: 267, column: 3)
!412 = !{!413, !414, i64 80}
!413 = !{!"_reent", !414, i64 0, !417, i64 8, !417, i64 16, !417, i64 24, !414, i64 32, !415, i64 36, !414, i64 64, !417, i64 72, !414, i64 80, !417, i64 88, !417, i64 96, !414, i64 104, !417, i64 112, !417, i64 120, !414, i64 128, !417, i64 136, !415, i64 144, !417, i64 504, !418, i64 512, !417, i64 1304, !420, i64 1312, !415, i64 1336}
!414 = !{!"int", !415, i64 0}
!415 = !{!"omnipotent char", !416, i64 0}
!416 = !{!"Simple C/C++ TBAA"}
!417 = !{!"any pointer", !415, i64 0}
!418 = !{!"_atexit", !417, i64 0, !414, i64 8, !415, i64 16, !419, i64 272}
!419 = !{!"_on_exit_args", !415, i64 0, !415, i64 256, !414, i64 512, !414, i64 516}
!420 = !{!"_glue", !417, i64 0, !414, i64 8, !417, i64 16}
!421 = !DILocation(line: 268, column: 10, scope: !396)
!422 = !DILocation(line: 268, column: 3, scope: !396)
!423 = !DILocation(line: 426, column: 1, scope: !2)
!424 = !DILocation(line: 432, column: 20, scope: !2)
!425 = !DILocation(line: 448, column: 7, scope: !2)
!426 = !DILocation(line: 449, column: 7, scope: !2)
!427 = !DILocation(line: 450, column: 3, scope: !2)
!428 = !DILocation(line: 458, column: 12, scope: !2)
!429 = !DILocation(line: 459, column: 3, scope: !2)
!430 = !DILocation(line: 459, column: 8, scope: !2)
!431 = !DILocation(line: 460, column: 3, scope: !2)
!432 = !DILocation(line: 460, column: 8, scope: !2)
!433 = !DILocation(line: 496, column: 3, scope: !362)
!434 = !DILocation(line: 439, column: 7, scope: !2)
!435 = !DILocation(line: 440, column: 7, scope: !2)
!436 = !DILocation(line: 506, column: 3, scope: !362)
!437 = !DILocation(line: 509, column: 12, scope: !367)
!438 = !{!415, !415, i64 0}
!439 = !DILocation(line: 450, column: 11, scope: !2)
!440 = !DILocation(line: 509, column: 10, scope: !367)
!441 = !{!414, !414, i64 0}
!442 = !DILocation(line: 520, column: 14, scope: !443)
!443 = distinct !DILexicalBlock(scope: !367, file: !3, line: 520, column: 11)
!444 = !DILocation(line: 520, column: 11, scope: !367)
!445 = !DILocation(line: 518, column: 11, scope: !367)
!446 = !DILocation(line: 522, column: 23, scope: !447)
!447 = distinct !DILexicalBlock(scope: !367, file: !3, line: 522, column: 11)
!448 = !DILocation(line: 522, column: 26, scope: !447)
!449 = !DILocation(line: 522, column: 11, scope: !367)
!450 = !DILocation(line: 526, column: 12, scope: !451)
!451 = distinct !DILexicalBlock(scope: !452, file: !3, line: 526, column: 12)
!452 = distinct !DILexicalBlock(scope: !453, file: !3, line: 525, column: 6)
!453 = distinct !DILexicalBlock(scope: !454, file: !3, line: 524, column: 4)
!454 = distinct !DILexicalBlock(scope: !455, file: !3, line: 524, column: 4)
!455 = distinct !DILexicalBlock(scope: !447, file: !3, line: 523, column: 2)
!456 = !{!457, !414, i64 8}
!457 = !{!"__sFILE", !417, i64 0, !414, i64 8, !414, i64 12, !458, i64 16, !458, i64 18, !459, i64 24, !414, i64 40, !417, i64 48, !417, i64 56, !417, i64 64, !417, i64 72, !417, i64 80, !459, i64 88, !417, i64 104, !414, i64 112, !415, i64 116, !415, i64 119, !459, i64 120, !414, i64 136, !460, i64 144, !417, i64 152, !414, i64 160, !461, i64 164, !414, i64 172}
!458 = !{!"short", !415, i64 0}
!459 = !{!"__sbuf", !417, i64 0, !414, i64 8}
!460 = !{!"long", !415, i64 0}
!461 = !{!"", !414, i64 0, !415, i64 4}
!462 = !DILocation(line: 0, scope: !452)
!463 = !DILocation(line: 526, column: 24, scope: !451)
!464 = !DILocation(line: 526, column: 28, scope: !451)
!465 = !{!457, !417, i64 0}
!466 = !DILocation(line: 526, column: 12, scope: !452)
!467 = !DILocation(line: 528, column: 13, scope: !452)
!468 = !DILocation(line: 528, column: 23, scope: !452)
!469 = !DILocation(line: 528, column: 33, scope: !452)
!470 = !DILocation(line: 524, column: 4, scope: !453)
!471 = distinct !{!471, !472, !473}
!472 = !DILocation(line: 524, column: 4, scope: !454)
!473 = !DILocation(line: 529, column: 6, scope: !454)
!474 = !DILocation(line: 0, scope: !475)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 554, column: 11)
!476 = distinct !DILexicalBlock(scope: !367, file: !3, line: 550, column: 2)
!477 = distinct !{!477, !478, !479}
!478 = !DILocation(line: 506, column: 3, scope: !369)
!479 = !DILocation(line: 1632, column: 5, scope: !369)
!480 = !DILocation(line: 532, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !367, file: !3, line: 532, column: 11)
!482 = !DILocation(line: 532, column: 11, scope: !367)
!483 = !DILocation(line: 0, scope: !476)
!484 = !DILocation(line: 0, scope: !367)
!485 = !DILocation(line: 434, column: 19, scope: !2)
!486 = !DILocation(line: 437, column: 16, scope: !2)
!487 = !DILocation(line: 547, column: 15, scope: !367)
!488 = !DILocation(line: 547, column: 11, scope: !367)
!489 = !DILocation(line: 549, column: 7, scope: !367)
!490 = !DILocation(line: 553, column: 22, scope: !476)
!491 = !DILocation(line: 461, column: 18, scope: !2)
!492 = !DILocation(line: 436, column: 16, scope: !2)
!493 = !DILocation(line: 554, column: 16, scope: !475)
!494 = !DILocation(line: 554, column: 11, scope: !475)
!495 = !DILocation(line: 556, column: 12, scope: !496)
!496 = distinct !DILexicalBlock(scope: !497, file: !3, line: 556, column: 12)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 555, column: 13)
!498 = distinct !DILexicalBlock(scope: !475, file: !3, line: 554, column: 11)
!499 = !DILocation(line: 556, column: 12, scope: !497)
!500 = !DILocation(line: 558, column: 17, scope: !501)
!501 = distinct !DILexicalBlock(scope: !497, file: !3, line: 558, column: 12)
!502 = !DILocation(line: 558, column: 12, scope: !501)
!503 = !DILocation(line: 558, column: 23, scope: !501)
!504 = !DILocation(line: 558, column: 20, scope: !501)
!505 = !DILocation(line: 558, column: 12, scope: !497)
!506 = !DILocation(line: 560, column: 14, scope: !497)
!507 = !DILocation(line: 560, column: 24, scope: !497)
!508 = !DILocation(line: 561, column: 13, scope: !497)
!509 = !DILocation(line: 554, column: 11, scope: !498)
!510 = !DILocation(line: 567, column: 10, scope: !476)
!511 = !DILocation(line: 568, column: 4, scope: !476)
!512 = !DILocation(line: 571, column: 8, scope: !513)
!513 = distinct !DILexicalBlock(scope: !476, file: !3, line: 571, column: 8)
!514 = !DILocation(line: 571, column: 13, scope: !513)
!515 = !DILocation(line: 571, column: 8, scope: !476)
!516 = !DILocation(line: 573, column: 8, scope: !517)
!517 = distinct !DILexicalBlock(scope: !513, file: !3, line: 572, column: 6)
!518 = !DILocation(line: 0, scope: !517)
!519 = !DILocation(line: 579, column: 4, scope: !476)
!520 = !DILocation(line: 581, column: 10, scope: !476)
!521 = !DILocation(line: 582, column: 4, scope: !476)
!522 = !DILocation(line: 585, column: 8, scope: !523)
!523 = distinct !DILexicalBlock(scope: !476, file: !3, line: 585, column: 8)
!524 = !DILocation(line: 585, column: 13, scope: !523)
!525 = !DILocation(line: 585, column: 8, scope: !476)
!526 = !DILocation(line: 587, column: 8, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !3, line: 586, column: 6)
!528 = !DILocation(line: 0, scope: !527)
!529 = !DILocation(line: 593, column: 4, scope: !476)
!530 = !DILocation(line: 597, column: 12, scope: !531)
!531 = distinct !DILexicalBlock(scope: !476, file: !3, line: 596, column: 8)
!532 = !DILocation(line: 600, column: 4, scope: !476)
!533 = !DILocation(line: 609, column: 12, scope: !534)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 608, column: 13)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 606, column: 13)
!536 = distinct !DILexicalBlock(scope: !476, file: !3, line: 602, column: 8)
!537 = !DILocation(line: 616, column: 4, scope: !476)
!538 = !DILocation(line: 624, column: 12, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 623, column: 13)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 621, column: 13)
!541 = distinct !DILexicalBlock(scope: !476, file: !3, line: 618, column: 8)
!542 = !DILocation(line: 631, column: 4, scope: !476)
!543 = !DILocation(line: 644, column: 18, scope: !476)
!544 = !DILocation(line: 644, column: 25, scope: !476)
!545 = !DILocation(line: 644, column: 23, scope: !476)
!546 = !DILocation(line: 644, column: 27, scope: !476)
!547 = !DILocation(line: 645, column: 4, scope: !476)
!548 = !DILocation(line: 669, column: 10, scope: !476)
!549 = !DILocation(line: 669, column: 4, scope: !476)
!550 = !DILocation(line: 684, column: 10, scope: !476)
!551 = !DILocation(line: 684, column: 4, scope: !476)
!552 = !DILocation(line: 433, column: 16, scope: !2)
!553 = !DILocation(line: 690, column: 4, scope: !476)
!554 = !DILocation(line: 696, column: 4, scope: !476)
!555 = !DILocation(line: 700, column: 10, scope: !476)
!556 = !DILocation(line: 704, column: 4, scope: !476)
!557 = !DILocation(line: 723, column: 10, scope: !476)
!558 = !DILocation(line: 723, column: 4, scope: !476)
!559 = !DILocation(line: 729, column: 4, scope: !476)
!560 = !DILocation(line: 732, column: 21, scope: !476)
!561 = !DILocation(line: 733, column: 10, scope: !476)
!562 = !DILocation(line: 735, column: 4, scope: !476)
!563 = !DILocation(line: 739, column: 10, scope: !476)
!564 = !DILocation(line: 739, column: 4, scope: !476)
!565 = !DILocation(line: 744, column: 10, scope: !476)
!566 = !DILocation(line: 746, column: 4, scope: !476)
!567 = !DILocation(line: 749, column: 10, scope: !476)
!568 = !DILocation(line: 753, column: 4, scope: !476)
!569 = !DILocation(line: 756, column: 14, scope: !570)
!570 = distinct !DILexicalBlock(scope: !476, file: !3, line: 756, column: 8)
!571 = !DILocation(line: 756, column: 8, scope: !476)
!572 = !DILocation(line: 759, column: 14, scope: !573)
!573 = distinct !DILexicalBlock(scope: !476, file: !3, line: 759, column: 8)
!574 = !DILocation(line: 759, column: 8, scope: !476)
!575 = !DILocation(line: 761, column: 13, scope: !576)
!576 = distinct !DILexicalBlock(scope: !573, file: !3, line: 760, column: 6)
!577 = !DILocation(line: 463, column: 9, scope: !2)
!578 = !DILocation(line: 762, column: 12, scope: !576)
!579 = !DILocation(line: 763, column: 6, scope: !576)
!580 = !DILocation(line: 766, column: 14, scope: !581)
!581 = distinct !DILexicalBlock(scope: !573, file: !3, line: 766, column: 8)
!582 = !DILocation(line: 766, column: 8, scope: !573)
!583 = !DILocation(line: 768, column: 13, scope: !584)
!584 = distinct !DILexicalBlock(scope: !581, file: !3, line: 767, column: 6)
!585 = !DILocation(line: 464, column: 10, scope: !2)
!586 = !DILocation(line: 769, column: 12, scope: !584)
!587 = !{!458, !458, i64 0}
!588 = !DILocation(line: 770, column: 6, scope: !584)
!589 = !DILocation(line: 771, column: 19, scope: !590)
!590 = distinct !DILexicalBlock(scope: !581, file: !3, line: 771, column: 13)
!591 = !DILocation(line: 0, scope: !592)
!592 = distinct !DILexicalBlock(scope: !590, file: !3, line: 784, column: 6)
!593 = !DILocation(line: 771, column: 13, scope: !581)
!594 = !DILocation(line: 0, scope: !595)
!595 = distinct !DILexicalBlock(scope: !590, file: !3, line: 772, column: 6)
!596 = !DILocation(line: 773, column: 13, scope: !595)
!597 = !DILocation(line: 471, column: 9, scope: !2)
!598 = !DILocation(line: 774, column: 12, scope: !595)
!599 = !{!460, !460, i64 0}
!600 = !DILocation(line: 775, column: 6, scope: !595)
!601 = !DILocation(line: 785, column: 13, scope: !592)
!602 = !DILocation(line: 465, column: 8, scope: !2)
!603 = !DILocation(line: 786, column: 12, scope: !592)
!604 = !DILocation(line: 788, column: 4, scope: !476)
!605 = !DILocation(line: 794, column: 4, scope: !476)
!606 = !DILocation(line: 795, column: 4, scope: !476)
!607 = !DILocation(line: 798, column: 8, scope: !608)
!608 = distinct !DILexicalBlock(scope: !476, file: !3, line: 798, column: 8)
!609 = !DILocation(line: 798, column: 8, scope: !476)
!610 = !DILocation(line: 799, column: 12, scope: !608)
!611 = !DILocation(line: 799, column: 6, scope: !608)
!612 = !DILocation(line: 809, column: 11, scope: !613)
!613 = distinct !DILexicalBlock(scope: !367, file: !3, line: 809, column: 11)
!614 = !DILocation(line: 809, column: 11, scope: !367)
!615 = !DILocation(line: 816, column: 18, scope: !616)
!616 = distinct !DILexicalBlock(scope: !367, file: !3, line: 816, column: 11)
!617 = !DILocation(line: 816, column: 28, scope: !616)
!618 = !DILocation(line: 816, column: 11, scope: !367)
!619 = !DILocation(line: 818, column: 11, scope: !620)
!620 = distinct !DILexicalBlock(scope: !616, file: !3, line: 817, column: 2)
!621 = !DILocation(line: 818, column: 4, scope: !620)
!622 = !DILocation(line: 820, column: 13, scope: !623)
!623 = distinct !DILexicalBlock(scope: !620, file: !3, line: 819, column: 6)
!624 = !DILocation(line: 821, column: 12, scope: !625)
!625 = distinct !DILexicalBlock(scope: !623, file: !3, line: 821, column: 12)
!626 = !DILocation(line: 821, column: 21, scope: !625)
!627 = !DILocation(line: 821, column: 12, scope: !623)
!628 = !DILocation(line: 822, column: 9, scope: !625)
!629 = !DILocation(line: 822, column: 3, scope: !625)
!630 = !DILocation(line: 824, column: 12, scope: !631)
!631 = distinct !DILexicalBlock(scope: !625, file: !3, line: 824, column: 12)
!632 = !DILocation(line: 824, column: 12, scope: !625)
!633 = distinct !{!633, !621, !634}
!634 = !DILocation(line: 826, column: 6, scope: !620)
!635 = !DILocation(line: 501, column: 9, scope: !362)
!636 = !DILocation(line: 837, column: 7, scope: !367)
!637 = !DILocation(line: 842, column: 14, scope: !638)
!638 = distinct !DILexicalBlock(scope: !366, file: !3, line: 842, column: 8)
!639 = !DILocation(line: 842, column: 8, scope: !366)
!640 = !DILocation(line: 843, column: 6, scope: !638)
!641 = !DILocation(line: 845, column: 21, scope: !365)
!642 = !DILocation(line: 845, column: 15, scope: !366)
!643 = !DILocation(line: 847, column: 15, scope: !364)
!644 = !DILocation(line: 848, column: 15, scope: !364)
!645 = !DILocation(line: 849, column: 26, scope: !646)
!646 = distinct !DILexicalBlock(scope: !364, file: !3, line: 849, column: 19)
!647 = !DILocation(line: 849, column: 38, scope: !646)
!648 = !DILocation(line: 849, column: 19, scope: !364)
!649 = !DILocation(line: 850, column: 23, scope: !646)
!650 = !DILocation(line: 451, column: 12, scope: !2)
!651 = !DILocation(line: 850, column: 17, scope: !646)
!652 = !DILocation(line: 0, scope: !646)
!653 = !DILocation(line: 854, column: 15, scope: !364)
!654 = !DILocation(line: 856, column: 28, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !3, line: 856, column: 23)
!656 = distinct !DILexicalBlock(scope: !364, file: !3, line: 855, column: 17)
!657 = !DILocation(line: 856, column: 25, scope: !655)
!658 = !DILocation(line: 856, column: 23, scope: !656)
!659 = !DILocation(line: 858, column: 35, scope: !656)
!660 = !DILocation(line: 858, column: 30, scope: !656)
!661 = !DILocation(line: 858, column: 24, scope: !656)
!662 = !DILocation(line: 858, column: 19, scope: !656)
!663 = !DILocation(line: 858, column: 28, scope: !656)
!664 = !DILocation(line: 859, column: 26, scope: !656)
!665 = !DILocation(line: 860, column: 26, scope: !656)
!666 = !DILocation(line: 861, column: 61, scope: !667)
!667 = distinct !DILexicalBlock(scope: !656, file: !3, line: 861, column: 23)
!668 = !DILocation(line: 847, column: 25, scope: !364)
!669 = !DILocation(line: 861, column: 33, scope: !667)
!670 = !DILocation(line: 452, column: 10, scope: !2)
!671 = !DILocation(line: 862, column: 58, scope: !667)
!672 = !DILocation(line: 861, column: 23, scope: !656)
!673 = !DILocation(line: 864, column: 30, scope: !674)
!674 = distinct !DILexicalBlock(scope: !656, file: !3, line: 864, column: 23)
!675 = !DILocation(line: 864, column: 35, scope: !674)
!676 = !DILocation(line: 864, column: 23, scope: !656)
!677 = !DILocation(line: 865, column: 26, scope: !674)
!678 = !DILocation(line: 865, column: 21, scope: !674)
!679 = !DILocation(line: 866, column: 23, scope: !656)
!680 = !DILocation(line: 866, column: 30, scope: !681)
!681 = distinct !DILexicalBlock(scope: !656, file: !3, line: 866, column: 23)
!682 = !DILocation(line: 868, column: 29, scope: !683)
!683 = distinct !DILexicalBlock(scope: !681, file: !3, line: 867, column: 21)
!684 = !DILocation(line: 869, column: 29, scope: !683)
!685 = !DILocation(line: 870, column: 27, scope: !683)
!686 = !DILocation(line: 871, column: 29, scope: !687)
!687 = distinct !DILexicalBlock(scope: !683, file: !3, line: 870, column: 27)
!688 = !DILocation(line: 871, column: 25, scope: !687)
!689 = !DILocation(line: 0, scope: !687)
!690 = !DILocation(line: 873, column: 21, scope: !683)
!691 = !DILocation(line: 0, scope: !656)
!692 = !DILocation(line: 0, scope: !362)
!693 = !DILocation(line: 0, scope: !638)
!694 = !DILocation(line: 850, column: 21, scope: !646)
!695 = !DILocation(line: 874, column: 23, scope: !696)
!696 = distinct !DILexicalBlock(scope: !656, file: !3, line: 874, column: 23)
!697 = !DILocation(line: 874, column: 23, scope: !656)
!698 = !DILocation(line: 876, column: 29, scope: !699)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 876, column: 27)
!700 = distinct !DILexicalBlock(scope: !696, file: !3, line: 875, column: 14)
!701 = !DILocation(line: 876, column: 27, scope: !700)
!702 = !DILocation(line: 854, column: 28, scope: !364)
!703 = distinct !{!703, !653, !704}
!704 = !DILocation(line: 880, column: 17, scope: !364)
!705 = !DILocation(line: 881, column: 19, scope: !364)
!706 = !DILocation(line: 882, column: 26, scope: !707)
!707 = distinct !DILexicalBlock(scope: !364, file: !3, line: 881, column: 19)
!708 = !DILocation(line: 882, column: 17, scope: !707)
!709 = !DILocation(line: 0, scope: !699)
!710 = !DILocation(line: 883, column: 13, scope: !365)
!711 = !DILocation(line: 0, scope: !707)
!712 = !DILocation(line: 886, column: 22, scope: !372)
!713 = !DILocation(line: 886, column: 16, scope: !365)
!714 = !DILocation(line: 888, column: 15, scope: !371)
!715 = !DILocation(line: 889, column: 8, scope: !371)
!716 = !DILocation(line: 0, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 892, column: 7)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 891, column: 9)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 890, column: 3)
!720 = distinct !DILexicalBlock(scope: !721, file: !3, line: 889, column: 8)
!721 = distinct !DILexicalBlock(scope: !371, file: !3, line: 889, column: 8)
!722 = !DILocation(line: 891, column: 18, scope: !718)
!723 = !DILocation(line: 891, column: 24, scope: !718)
!724 = !DILocation(line: 891, column: 22, scope: !718)
!725 = !DILocation(line: 891, column: 9, scope: !719)
!726 = !DILocation(line: 893, column: 16, scope: !717)
!727 = !DILocation(line: 893, column: 13, scope: !717)
!728 = !DILocation(line: 894, column: 15, scope: !717)
!729 = !DILocation(line: 895, column: 16, scope: !717)
!730 = !DILocation(line: 896, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !717, file: !3, line: 896, column: 13)
!732 = !DILocation(line: 896, column: 13, scope: !717)
!733 = distinct !{!733, !734, !735}
!734 = !DILocation(line: 889, column: 8, scope: !721)
!735 = !DILocation(line: 910, column: 3, scope: !721)
!736 = !DILocation(line: 898, column: 14, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 898, column: 10)
!738 = distinct !DILexicalBlock(scope: !731, file: !3, line: 897, column: 4)
!739 = !DILocation(line: 898, column: 10, scope: !738)
!740 = !DILocation(line: 905, column: 13, scope: !741)
!741 = distinct !DILexicalBlock(scope: !718, file: !3, line: 904, column: 7)
!742 = !DILocation(line: 906, column: 16, scope: !741)
!743 = !DILocation(line: 907, column: 16, scope: !741)
!744 = !DILocation(line: 908, column: 9, scope: !741)
!745 = !DILocation(line: 0, scope: !741)
!746 = !DILocation(line: 911, column: 14, scope: !371)
!747 = !DILocation(line: 912, column: 6, scope: !372)
!748 = !DILocation(line: 899, column: 8, scope: !737)
!749 = !DILocation(line: 915, column: 42, scope: !374)
!750 = !DILocation(line: 915, column: 19, scope: !374)
!751 = !DILocation(line: 915, column: 15, scope: !374)
!752 = !DILocation(line: 917, column: 14, scope: !753)
!753 = distinct !DILexicalBlock(scope: !374, file: !3, line: 917, column: 12)
!754 = !DILocation(line: 917, column: 12, scope: !374)
!755 = !DILocation(line: 919, column: 14, scope: !374)
!756 = !DILocation(line: 920, column: 17, scope: !374)
!757 = !DILocation(line: 921, column: 6, scope: !372)
!758 = !DILocation(line: 918, column: 3, scope: !753)
!759 = !DILocation(line: 926, column: 14, scope: !760)
!760 = distinct !DILexicalBlock(scope: !366, file: !3, line: 926, column: 8)
!761 = !DILocation(line: 926, column: 8, scope: !366)
!762 = !DILocation(line: 927, column: 6, scope: !760)
!763 = !DILocation(line: 929, column: 14, scope: !764)
!764 = distinct !DILexicalBlock(scope: !366, file: !3, line: 929, column: 8)
!765 = !DILocation(line: 929, column: 8, scope: !366)
!766 = !DILocation(line: 932, column: 8, scope: !767)
!767 = distinct !DILexicalBlock(scope: !764, file: !3, line: 930, column: 6)
!768 = !DILocation(line: 932, column: 27, scope: !767)
!769 = !DILocation(line: 932, column: 22, scope: !767)
!770 = !DILocation(line: 932, column: 15, scope: !767)
!771 = !DILocation(line: 944, column: 12, scope: !767)
!772 = !DILocation(line: 934, column: 6, scope: !773)
!773 = distinct !DILexicalBlock(scope: !767, file: !3, line: 933, column: 3)
!774 = !DILocation(line: 934, column: 16, scope: !773)
!775 = !DILocation(line: 934, column: 26, scope: !773)
!776 = !DILocation(line: 935, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !773, file: !3, line: 935, column: 9)
!778 = !DILocation(line: 935, column: 17, scope: !777)
!779 = !DILocation(line: 935, column: 9, scope: !773)
!780 = !DILocation(line: 937, column: 9, scope: !781)
!781 = distinct !DILexicalBlock(scope: !773, file: !3, line: 937, column: 9)
!782 = !DILocation(line: 937, column: 9, scope: !773)
!783 = !DILocation(line: 939, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 938, column: 7)
!785 = distinct !{!785, !766, !786}
!786 = !DILocation(line: 943, column: 3, scope: !767)
!787 = !DILocation(line: 949, column: 17, scope: !788)
!788 = distinct !DILexicalBlock(scope: !764, file: !3, line: 948, column: 6)
!789 = !DILocation(line: 435, column: 18, scope: !2)
!790 = !DILocation(line: 438, column: 18, scope: !2)
!791 = !DILocation(line: 950, column: 8, scope: !788)
!792 = !DILocation(line: 950, column: 27, scope: !788)
!793 = !DILocation(line: 950, column: 22, scope: !788)
!794 = !DILocation(line: 950, column: 15, scope: !788)
!795 = !DILocation(line: 952, column: 11, scope: !796)
!796 = distinct !DILexicalBlock(scope: !788, file: !3, line: 951, column: 3)
!797 = !DILocation(line: 953, column: 19, scope: !796)
!798 = !DILocation(line: 953, column: 12, scope: !796)
!799 = !DILocation(line: 953, column: 7, scope: !796)
!800 = !DILocation(line: 953, column: 10, scope: !796)
!801 = !DILocation(line: 954, column: 9, scope: !802)
!802 = distinct !DILexicalBlock(scope: !796, file: !3, line: 954, column: 9)
!803 = !DILocation(line: 954, column: 17, scope: !802)
!804 = !DILocation(line: 954, column: 9, scope: !796)
!805 = !DILocation(line: 956, column: 9, scope: !806)
!806 = distinct !DILexicalBlock(scope: !796, file: !3, line: 956, column: 9)
!807 = !DILocation(line: 956, column: 9, scope: !796)
!808 = !DILocation(line: 958, column: 15, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !3, line: 958, column: 13)
!810 = distinct !DILexicalBlock(scope: !806, file: !3, line: 957, column: 7)
!811 = !DILocation(line: 958, column: 13, scope: !810)
!812 = distinct !{!812, !791, !813}
!813 = !DILocation(line: 962, column: 3, scope: !788)
!814 = !DILocation(line: 0, scope: !788)
!815 = !DILocation(line: 963, column: 14, scope: !788)
!816 = !DILocation(line: 963, column: 12, scope: !788)
!817 = !DILocation(line: 964, column: 14, scope: !818)
!818 = distinct !DILexicalBlock(scope: !788, file: !3, line: 964, column: 12)
!819 = !DILocation(line: 964, column: 12, scope: !788)
!820 = !DILocation(line: 966, column: 11, scope: !788)
!821 = !DILocation(line: 967, column: 17, scope: !788)
!822 = !DILocation(line: 969, column: 10, scope: !366)
!823 = !DILocation(line: 970, column: 4, scope: !366)
!824 = !DILocation(line: 974, column: 14, scope: !825)
!825 = distinct !DILexicalBlock(scope: !366, file: !3, line: 974, column: 8)
!826 = !DILocation(line: 974, column: 8, scope: !366)
!827 = !DILocation(line: 975, column: 13, scope: !825)
!828 = !DILocation(line: 977, column: 21, scope: !377)
!829 = !DILocation(line: 977, column: 15, scope: !366)
!830 = !DILocation(line: 980, column: 15, scope: !376)
!831 = !DILocation(line: 981, column: 15, scope: !376)
!832 = !DILocation(line: 982, column: 26, scope: !833)
!833 = distinct !DILexicalBlock(scope: !376, file: !3, line: 982, column: 19)
!834 = !DILocation(line: 982, column: 38, scope: !833)
!835 = !DILocation(line: 982, column: 19, scope: !376)
!836 = !DILocation(line: 983, column: 23, scope: !833)
!837 = !DILocation(line: 983, column: 17, scope: !833)
!838 = !DILocation(line: 0, scope: !833)
!839 = !DILocation(line: 987, column: 15, scope: !376)
!840 = !DILocation(line: 987, column: 23, scope: !376)
!841 = !DILocation(line: 989, column: 28, scope: !842)
!842 = distinct !DILexicalBlock(scope: !843, file: !3, line: 989, column: 23)
!843 = distinct !DILexicalBlock(scope: !376, file: !3, line: 988, column: 17)
!844 = !DILocation(line: 989, column: 25, scope: !842)
!845 = !DILocation(line: 989, column: 23, scope: !843)
!846 = !DILocation(line: 991, column: 35, scope: !843)
!847 = !DILocation(line: 991, column: 30, scope: !843)
!848 = !DILocation(line: 991, column: 24, scope: !843)
!849 = !DILocation(line: 991, column: 19, scope: !843)
!850 = !DILocation(line: 991, column: 28, scope: !843)
!851 = !DILocation(line: 992, column: 26, scope: !843)
!852 = !DILocation(line: 993, column: 26, scope: !843)
!853 = !DILocation(line: 994, column: 61, scope: !854)
!854 = distinct !DILexicalBlock(scope: !843, file: !3, line: 994, column: 23)
!855 = !DILocation(line: 980, column: 25, scope: !376)
!856 = !DILocation(line: 994, column: 33, scope: !854)
!857 = !DILocation(line: 995, column: 57, scope: !854)
!858 = !DILocation(line: 994, column: 23, scope: !843)
!859 = !DILocation(line: 997, column: 30, scope: !860)
!860 = distinct !DILexicalBlock(scope: !843, file: !3, line: 997, column: 23)
!861 = !DILocation(line: 997, column: 23, scope: !843)
!862 = !DILocation(line: 998, column: 26, scope: !860)
!863 = !DILocation(line: 998, column: 21, scope: !860)
!864 = !DILocation(line: 999, column: 23, scope: !843)
!865 = !DILocation(line: 999, column: 30, scope: !866)
!866 = distinct !DILexicalBlock(scope: !843, file: !3, line: 999, column: 23)
!867 = !DILocation(line: 1001, column: 36, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 1001, column: 27)
!869 = distinct !DILexicalBlock(scope: !866, file: !3, line: 1000, column: 21)
!870 = !DILocation(line: 1001, column: 27, scope: !868)
!871 = !DILocation(line: 1001, column: 27, scope: !869)
!872 = !DILocation(line: 1003, column: 36, scope: !873)
!873 = distinct !DILexicalBlock(scope: !868, file: !3, line: 1002, column: 25)
!874 = !DILocation(line: 1003, column: 27, scope: !873)
!875 = !DILocation(line: 1004, column: 66, scope: !873)
!876 = !DILocation(line: 1004, column: 62, scope: !873)
!877 = !DILocation(line: 1004, column: 46, scope: !873)
!878 = !DILocation(line: 1004, column: 29, scope: !873)
!879 = distinct !{!879, !874, !880}
!880 = !DILocation(line: 1004, column: 74, scope: !873)
!881 = !DILocation(line: 1007, column: 29, scope: !869)
!882 = !DILocation(line: 1008, column: 29, scope: !869)
!883 = !DILocation(line: 1009, column: 27, scope: !869)
!884 = !DILocation(line: 1010, column: 29, scope: !885)
!885 = distinct !DILexicalBlock(scope: !869, file: !3, line: 1009, column: 27)
!886 = !DILocation(line: 1010, column: 25, scope: !885)
!887 = !DILocation(line: 1012, column: 21, scope: !869)
!888 = !DILocation(line: 0, scope: !843)
!889 = !DILocation(line: 0, scope: !825)
!890 = !DILocation(line: 1013, column: 23, scope: !891)
!891 = distinct !DILexicalBlock(scope: !843, file: !3, line: 1013, column: 23)
!892 = !DILocation(line: 1013, column: 23, scope: !843)
!893 = !DILocation(line: 1015, column: 29, scope: !894)
!894 = distinct !DILexicalBlock(scope: !895, file: !3, line: 1015, column: 27)
!895 = distinct !DILexicalBlock(scope: !891, file: !3, line: 1014, column: 21)
!896 = !DILocation(line: 1015, column: 27, scope: !895)
!897 = !DILocation(line: 987, column: 50, scope: !376)
!898 = !DILocation(line: 987, column: 41, scope: !376)
!899 = distinct !{!899, !839, !900}
!900 = !DILocation(line: 1019, column: 17, scope: !376)
!901 = !DILocation(line: 1020, column: 19, scope: !376)
!902 = !DILocation(line: 1022, column: 24, scope: !903)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1021, column: 17)
!904 = distinct !DILexicalBlock(scope: !376, file: !3, line: 1020, column: 19)
!905 = !DILocation(line: 1023, column: 28, scope: !903)
!906 = !DILocation(line: 1024, column: 17, scope: !903)
!907 = !DILocation(line: 0, scope: !894)
!908 = !DILocation(line: 1025, column: 13, scope: !377)
!909 = !DILocation(line: 0, scope: !903)
!910 = !DILocation(line: 1028, column: 22, scope: !911)
!911 = distinct !DILexicalBlock(scope: !377, file: !3, line: 1028, column: 16)
!912 = !DILocation(line: 1028, column: 16, scope: !377)
!913 = !DILocation(line: 1031, column: 8, scope: !914)
!914 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1029, column: 6)
!915 = !DILocation(line: 1031, column: 16, scope: !914)
!916 = !DILocation(line: 1031, column: 15, scope: !914)
!917 = !DILocation(line: 1033, column: 6, scope: !918)
!918 = distinct !DILexicalBlock(scope: !914, file: !3, line: 1032, column: 3)
!919 = !DILocation(line: 1033, column: 16, scope: !918)
!920 = !DILocation(line: 1033, column: 26, scope: !918)
!921 = !DILocation(line: 1034, column: 9, scope: !922)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1034, column: 9)
!923 = !DILocation(line: 1034, column: 17, scope: !922)
!924 = !DILocation(line: 1034, column: 9, scope: !918)
!925 = !DILocation(line: 1036, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !918, file: !3, line: 1036, column: 9)
!927 = !DILocation(line: 1036, column: 9, scope: !918)
!928 = distinct !{!928, !913, !929}
!929 = !DILocation(line: 1038, column: 3, scope: !914)
!930 = !DILocation(line: 0, scope: !914)
!931 = !DILocation(line: 1039, column: 14, scope: !914)
!932 = !DILocation(line: 1040, column: 6, scope: !914)
!933 = !DILocation(line: 1043, column: 17, scope: !934)
!934 = distinct !DILexicalBlock(scope: !911, file: !3, line: 1042, column: 6)
!935 = !DILocation(line: 1044, column: 8, scope: !934)
!936 = !DILocation(line: 1044, column: 16, scope: !934)
!937 = !DILocation(line: 1044, column: 15, scope: !934)
!938 = !DILocation(line: 1046, column: 11, scope: !939)
!939 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1045, column: 3)
!940 = !DILocation(line: 1047, column: 19, scope: !939)
!941 = !DILocation(line: 1047, column: 12, scope: !939)
!942 = !DILocation(line: 1047, column: 7, scope: !939)
!943 = !DILocation(line: 1047, column: 10, scope: !939)
!944 = !DILocation(line: 1048, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1048, column: 9)
!946 = !DILocation(line: 1048, column: 17, scope: !945)
!947 = !DILocation(line: 1048, column: 9, scope: !939)
!948 = !DILocation(line: 1050, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !939, file: !3, line: 1050, column: 9)
!950 = !DILocation(line: 1050, column: 9, scope: !939)
!951 = distinct !{!951, !935, !952}
!952 = !DILocation(line: 1052, column: 3, scope: !934)
!953 = !DILocation(line: 0, scope: !934)
!954 = !DILocation(line: 1053, column: 11, scope: !934)
!955 = !DILocation(line: 1054, column: 19, scope: !934)
!956 = !DILocation(line: 1054, column: 14, scope: !934)
!957 = !DILocation(line: 1055, column: 17, scope: !934)
!958 = !DILocation(line: 1062, column: 13, scope: !379)
!959 = !DILocation(line: 1063, column: 8, scope: !379)
!960 = !DILocation(line: 1068, column: 14, scope: !961)
!961 = distinct !DILexicalBlock(scope: !379, file: !3, line: 1068, column: 8)
!962 = !DILocation(line: 1068, column: 18, scope: !961)
!963 = !DILocation(line: 1068, column: 8, scope: !379)
!964 = !DILocation(line: 1071, column: 21, scope: !965)
!965 = distinct !DILexicalBlock(scope: !961, file: !3, line: 1070, column: 6)
!966 = !DILocation(line: 1073, column: 6, scope: !965)
!967 = !DILocation(line: 0, scope: !379)
!968 = !DILocation(line: 1074, column: 10, scope: !379)
!969 = !DILocation(line: 1075, column: 9, scope: !970)
!970 = distinct !DILexicalBlock(scope: !379, file: !3, line: 1075, column: 4)
!971 = !DILocation(line: 1075, column: 4, scope: !970)
!972 = !DILocation(line: 1077, column: 17, scope: !973)
!973 = distinct !DILexicalBlock(scope: !974, file: !3, line: 1076, column: 6)
!974 = distinct !DILexicalBlock(scope: !970, file: !3, line: 1075, column: 4)
!975 = !DILocation(line: 1077, column: 12, scope: !973)
!976 = !DILocation(line: 1082, column: 8, scope: !973)
!977 = !DILocation(line: 1094, column: 18, scope: !978)
!978 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1094, column: 9)
!979 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1083, column: 3)
!980 = !DILocation(line: 1094, column: 9, scope: !979)
!981 = !DILocation(line: 1096, column: 14, scope: !982)
!982 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1096, column: 9)
!983 = !DILocation(line: 1096, column: 9, scope: !979)
!984 = !DILocation(line: 1099, column: 15, scope: !985)
!985 = distinct !DILexicalBlock(scope: !982, file: !3, line: 1097, column: 7)
!986 = !DILocation(line: 1100, column: 7, scope: !985)
!987 = !DILocation(line: 1101, column: 15, scope: !988)
!988 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1101, column: 9)
!989 = !DILocation(line: 1101, column: 9, scope: !979)
!990 = !DILocation(line: 1103, column: 15, scope: !991)
!991 = distinct !DILexicalBlock(scope: !988, file: !3, line: 1102, column: 7)
!992 = !DILocation(line: 1104, column: 9, scope: !991)
!993 = !DILocation(line: 1106, column: 11, scope: !979)
!994 = !DILocation(line: 1107, column: 9, scope: !995)
!995 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1107, column: 9)
!996 = !DILocation(line: 1107, column: 9, scope: !979)
!997 = !DILocation(line: 1109, column: 19, scope: !998)
!998 = distinct !DILexicalBlock(scope: !995, file: !3, line: 1108, column: 7)
!999 = !DILocation(line: 1110, column: 14, scope: !998)
!1000 = !DILocation(line: 1111, column: 7, scope: !998)
!1001 = !DILocation(line: 0, scope: !965)
!1002 = !DILocation(line: 1112, column: 5, scope: !979)
!1003 = !DILocation(line: 1113, column: 5, scope: !979)
!1004 = !DILocation(line: 1123, column: 12, scope: !979)
!1005 = !DILocation(line: 1124, column: 11, scope: !979)
!1006 = !DILocation(line: 1125, column: 5, scope: !979)
!1007 = !DILocation(line: 1130, column: 12, scope: !979)
!1008 = !DILocation(line: 1131, column: 14, scope: !1009)
!1009 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1131, column: 9)
!1010 = !DILocation(line: 1131, column: 9, scope: !979)
!1011 = !DILocation(line: 1133, column: 11, scope: !979)
!1012 = !DILocation(line: 1134, column: 5, scope: !979)
!1013 = !DILocation(line: 1150, column: 14, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1150, column: 9)
!1015 = !DILocation(line: 1150, column: 9, scope: !979)
!1016 = !DILocation(line: 1152, column: 11, scope: !979)
!1017 = !DILocation(line: 1153, column: 5, scope: !979)
!1018 = !DILocation(line: 1158, column: 15, scope: !1019)
!1019 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1158, column: 9)
!1020 = !DILocation(line: 1158, column: 9, scope: !979)
!1021 = !DILocation(line: 1160, column: 15, scope: !1022)
!1022 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 1159, column: 7)
!1023 = !DILocation(line: 1161, column: 9, scope: !1022)
!1024 = !DILocation(line: 1168, column: 16, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !979, file: !3, line: 1168, column: 9)
!1026 = !DILocation(line: 1168, column: 38, scope: !1025)
!1027 = !DILocation(line: 1168, column: 9, scope: !979)
!1028 = !DILocation(line: 1171, column: 15, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1025, file: !3, line: 1169, column: 7)
!1030 = !DILocation(line: 1175, column: 15, scope: !1029)
!1031 = !DILocation(line: 1176, column: 9, scope: !1029)
!1032 = !DILocation(line: 0, scope: !991)
!1033 = !DILocation(line: 1190, column: 10, scope: !973)
!1034 = !DILocation(line: 1190, column: 13, scope: !973)
!1035 = !DILocation(line: 1190, column: 8, scope: !973)
!1036 = !DILocation(line: 0, scope: !979)
!1037 = !DILocation(line: 0, scope: !985)
!1038 = !DILocation(line: 0, scope: !998)
!1039 = !DILocation(line: 1192, column: 12, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !973, file: !3, line: 1192, column: 12)
!1041 = !DILocation(line: 1192, column: 21, scope: !1040)
!1042 = !DILocation(line: 1192, column: 12, scope: !973)
!1043 = !DILocation(line: 1193, column: 9, scope: !1040)
!1044 = !DILocation(line: 1193, column: 3, scope: !1040)
!1045 = !DILocation(line: 1195, column: 12, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 1195, column: 12)
!1047 = !DILocation(line: 1195, column: 12, scope: !1040)
!1048 = !DILocation(line: 1075, column: 30, scope: !974)
!1049 = !DILocation(line: 1075, column: 4, scope: !974)
!1050 = distinct !{!1050, !971, !1051}
!1051 = !DILocation(line: 1197, column: 6, scope: !970)
!1052 = !DILocation(line: 1206, column: 14, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !379, file: !3, line: 1206, column: 8)
!1054 = !DILocation(line: 1206, column: 8, scope: !379)
!1055 = !DILocation(line: 1208, column: 14, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 1208, column: 12)
!1057 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 1207, column: 6)
!1058 = !DILocation(line: 1208, column: 12, scope: !1057)
!1059 = !DILocation(line: 1209, column: 21, scope: !1056)
!1060 = !DILocation(line: 1209, column: 20, scope: !1056)
!1061 = !DILocation(line: 1209, column: 3, scope: !1056)
!1062 = !DILocation(line: 0, scope: !970)
!1063 = !DILocation(line: 1210, column: 14, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 1210, column: 12)
!1065 = !DILocation(line: 1210, column: 12, scope: !1057)
!1066 = !DILocation(line: 1213, column: 15, scope: !383)
!1067 = !DILocation(line: 1213, column: 27, scope: !383)
!1068 = !DILocation(line: 1213, column: 8, scope: !379)
!1069 = !DILocation(line: 1217, column: 11, scope: !382)
!1070 = !DILocation(line: 1218, column: 14, scope: !382)
!1071 = !{i64 (%struct._reent*, i8*, i8**, i32)* @_strtol_r, i64 (%struct._reent*, i8*, i8**, i32)* @_strtoul_r}
!1072 = !DILocation(line: 1215, column: 15, scope: !382)
!1073 = !DILocation(line: 1219, column: 18, scope: !386)
!1074 = !DILocation(line: 1219, column: 12, scope: !382)
!1075 = !DILocation(line: 1221, column: 17, scope: !385)
!1076 = !DILocation(line: 1221, column: 12, scope: !385)
!1077 = !DILocation(line: 1231, column: 13, scope: !385)
!1078 = !DILocation(line: 1231, column: 11, scope: !385)
!1079 = !{!417, !417, i64 0}
!1080 = !DILocation(line: 1232, column: 3, scope: !385)
!1081 = !DILocation(line: 1234, column: 23, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !386, file: !3, line: 1234, column: 17)
!1083 = !DILocation(line: 1234, column: 17, scope: !386)
!1084 = !DILocation(line: 1236, column: 10, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1235, column: 3)
!1086 = !DILocation(line: 1237, column: 11, scope: !1085)
!1087 = !DILocation(line: 1237, column: 9, scope: !1085)
!1088 = !DILocation(line: 1238, column: 3, scope: !1085)
!1089 = !DILocation(line: 1240, column: 23, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 1240, column: 17)
!1091 = !DILocation(line: 1240, column: 17, scope: !1082)
!1092 = !DILocation(line: 1242, column: 10, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 1241, column: 3)
!1094 = !DILocation(line: 1243, column: 11, scope: !1093)
!1095 = !DILocation(line: 1243, column: 9, scope: !1093)
!1096 = !DILocation(line: 1244, column: 3, scope: !1093)
!1097 = !DILocation(line: 1245, column: 23, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1090, file: !3, line: 1245, column: 17)
!1099 = !DILocation(line: 0, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1263, column: 3)
!1101 = !DILocation(line: 1245, column: 17, scope: !1090)
!1102 = !DILocation(line: 0, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1098, file: !3, line: 1246, column: 3)
!1104 = !DILocation(line: 1247, column: 10, scope: !1103)
!1105 = !DILocation(line: 1248, column: 9, scope: !1103)
!1106 = !DILocation(line: 1249, column: 3, scope: !1103)
!1107 = !DILocation(line: 1264, column: 10, scope: !1100)
!1108 = !DILocation(line: 1265, column: 11, scope: !1100)
!1109 = !DILocation(line: 1265, column: 9, scope: !1100)
!1110 = !DILocation(line: 1267, column: 17, scope: !382)
!1111 = !DILocation(line: 1268, column: 6, scope: !382)
!1112 = !DILocation(line: 1269, column: 15, scope: !379)
!1113 = !DILocation(line: 1269, column: 10, scope: !379)
!1114 = !DILocation(line: 1270, column: 4, scope: !379)
!1115 = !DILocation(line: 1211, column: 3, scope: !1064)
!1116 = !DILocation(line: 0, scope: !366)
!1117 = !DILocation(line: 1638, column: 3, scope: !362)
!1118 = !DILocation(line: 1639, column: 10, scope: !362)
!1119 = !DILocation(line: 1639, column: 20, scope: !362)
!1120 = !DILocation(line: 1639, column: 29, scope: !362)
!1121 = !{!457, !458, i64 16}
!1122 = !DILocation(line: 1639, column: 36, scope: !362)
!1123 = !DILocation(line: 1643, column: 3, scope: !2)
!1124 = !DILocation(line: 1643, column: 3, scope: !362)
!1125 = !DILocation(line: 1644, column: 3, scope: !2)
!1126 = !DILocation(line: 1645, column: 1, scope: !2)
!1127 = distinct !DISubprogram(name: "__svfiscanf", scope: !3, file: !3, line: 272, type: !397, isLocal: false, isDefinition: true, scopeLine: 276, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DILocalVariable(name: "fp", arg: 1, scope: !1127, file: !3, line: 272, type: !286)
!1130 = !DILocalVariable(name: "fmt0", arg: 2, scope: !1127, file: !3, line: 272, type: !46)
!1131 = !DILocalVariable(name: "ap", arg: 3, scope: !1127, file: !3, line: 272, type: !289)
!1132 = !DILocation(line: 272, column: 1, scope: !1127)
!1133 = !DILocation(line: 277, column: 24, scope: !1127)
!1134 = !DILocation(line: 277, column: 10, scope: !1127)
!1135 = !DILocation(line: 277, column: 3, scope: !1127)
!1136 = distinct !DISubprogram(name: "_vfiscanf_r", scope: !3, file: !3, line: 283, type: !4, isLocal: false, isDefinition: true, scopeLine: 288, flags: DIFlagPrototyped, isOptimized: true, unit: !296, retainedNodes: !1137)
!1137 = !{!1138, !1139, !1140, !1141, !1142}
!1138 = !DILocalVariable(name: "data", arg: 1, scope: !1136, file: !3, line: 283, type: !7)
!1139 = !DILocalVariable(name: "fp", arg: 2, scope: !1136, file: !3, line: 283, type: !286)
!1140 = !DILocalVariable(name: "fmt", arg: 3, scope: !1136, file: !3, line: 283, type: !46)
!1141 = !DILocalVariable(name: "ap", arg: 4, scope: !1136, file: !3, line: 283, type: !289)
!1142 = !DILocalVariable(name: "_check_init_ptr", scope: !1143, file: !3, line: 289, type: !7)
!1143 = distinct !DILexicalBlock(scope: !1136, file: !3, line: 289, column: 3)
!1144 = !DILocation(line: 283, column: 1, scope: !1136)
!1145 = !DILocation(line: 289, column: 3, scope: !1143)
!1146 = !DILocation(line: 289, column: 3, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 289, column: 3)
!1148 = !DILocation(line: 290, column: 10, scope: !1136)
!1149 = !DILocation(line: 290, column: 3, scope: !1136)
