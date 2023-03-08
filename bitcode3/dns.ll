; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/dns.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/dns.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.dns_table_entry = type { i32, %struct.ip_addr, i16, i8, i8, i8, i8, i8, i8, [256 x i8], i8 }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_swrand = type opaque
%struct.udp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.udp_pcb*, i8, i16, i16, %struct.ip4_addr, i8, i8, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8* }
%struct.ip4_addr = type { i32 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.dns_req_entry = type { void (i8*, %struct.ip_addr*, i8*)*, i8*, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.dns_hdr = type { i16, i8, i8, i16, i16, i16, i16 }
%struct.dns_query = type { i16, i16 }
%struct.dns_answer = type { i16, i16, i32, i16 }

@dns_mquery_v4group = dso_local local_unnamed_addr constant %struct.ip_addr { %union.anon { %struct.ip6_addr { [4 x i32] [i32 -83885856, i32 0, i32 0, i32 0], i8 0 } }, i8 0 }, align 4, !dbg !0
@dns_mquery_v6group = dso_local local_unnamed_addr constant %struct.ip_addr { %union.anon { %struct.ip6_addr { [4 x i32] [i32 767, i32 0, i32 0, i32 -83886080], i8 0 } }, i8 6 }, align 4, !dbg !79
@dns_servers = internal global [2 x %struct.ip_addr] zeroinitializer, align 16, !dbg !105
@ip_addr_any = external dso_local constant %struct.ip_addr, align 4
@dns_table = internal global [32 x %struct.dns_table_entry] zeroinitializer, align 16, !dbg !110
@.str = private unnamed_addr constant [26 x i8] c"array index out of bounds\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"unknown dns_table entry state:\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !132
@uk_pr_crit.__str.4 = internal global [6 x i8] c"dns.c\00", section ".data_shared", align 1, !dbg !158
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_swrand_def = external dso_local global %struct.uk_swrand, align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"dns server out of array\00", align 1
@dns_pcbs = internal unnamed_addr global [32 x %struct.udp_pcb*] zeroinitializer, align 16, !dbg !163
@.str.6 = private unnamed_addr constant [17 x i8] c"invalid response\00", align 1
@dns_requests = internal unnamed_addr global [32 x %struct.dns_req_entry] zeroinitializer, align 16, !dbg !201
@dns_seqno = internal unnamed_addr global i8 0, align 1, !dbg !215
@dns_last_pcb_idx = internal unnamed_addr global i8 0, align 1, !dbg !217
@ip_addr_any_type = external dso_local constant %struct.ip_addr, align 4

; Function Attrs: norecurse noredzone nounwind readnone
define dso_local void @dns_init() local_unnamed_addr #0 !dbg !223 {
  ret void, !dbg !227
}

; Function Attrs: noredzone nounwind
define dso_local void @dns_setserver(i8 zeroext, %struct.ip_addr* readonly) local_unnamed_addr #1 !dbg !228 {
  %3 = icmp ult i8 %0, 2, !dbg !236
  br i1 %3, label %4, label %12, !dbg !238

; <label>:4:                                      ; preds = %2
  %5 = icmp eq %struct.ip_addr* %1, null, !dbg !239
  %6 = zext i8 %0 to i64, !dbg !242
  %7 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %6, !dbg !242
  %8 = bitcast %struct.ip_addr* %7 to i8*, !dbg !244
  br i1 %5, label %11, label %9, !dbg !246

; <label>:9:                                      ; preds = %4
  %10 = bitcast %struct.ip_addr* %1 to i8*, !dbg !247
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* align 4 %10, i64 24, i1 false), !dbg !247, !tbaa.struct !248
  br label %12, !dbg !254

; <label>:11:                                     ; preds = %4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* align 4 bitcast (%struct.ip_addr* @ip_addr_any to i8*), i64 24, i1 false), !dbg !255, !tbaa.struct !248
  br label %12

; <label>:12:                                     ; preds = %9, %11, %2
  ret void, !dbg !256
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noredzone nounwind readnone
define dso_local nonnull %struct.ip_addr* @dns_getserver(i8 zeroext) local_unnamed_addr #4 !dbg !257 {
  %2 = icmp ult i8 %0, 2, !dbg !263
  %3 = zext i8 %0 to i64, !dbg !265
  %4 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %3, !dbg !265
  %5 = select i1 %2, %struct.ip_addr* %4, %struct.ip_addr* @ip_addr_any, !dbg !267
  ret %struct.ip_addr* %5, !dbg !268
}

; Function Attrs: noredzone nounwind
define dso_local void @dns_tmr() local_unnamed_addr #1 !dbg !269 {
  tail call fastcc void @dns_check_entry(i8 zeroext 0) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 1) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 2) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 3) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 4) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 5) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 6) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 7) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 8) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 9) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 10) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 11) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 12) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 13) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 14) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 15) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 16) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 17) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 18) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 19) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 20) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 21) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 22) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 23) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 24) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 25) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 26) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 27) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 28) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 29) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 30) #9, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 31) #9, !dbg !275
  ret void, !dbg !279
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*) local_unnamed_addr #1 !dbg !280 {
  %5 = tail call signext i8 @dns_gethostbyname_addrtype(i8* %0, %struct.ip_addr* %1, void (i8*, %struct.ip_addr*, i8*)* %2, i8* %3, i8 zeroext 2) #10, !dbg !298
  ret i8 %5, !dbg !299
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname_addrtype(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #1 !dbg !300 {
  %6 = alloca i32, align 4
  %7 = icmp ne %struct.ip_addr* %1, null, !dbg !322
  %8 = icmp ne i8* %0, null, !dbg !324
  %9 = and i1 %8, %7, !dbg !325
  br i1 %9, label %10, label %317, !dbg !325

; <label>:10:                                     ; preds = %5
  %11 = load i8, i8* %0, align 1, !dbg !326, !tbaa !249
  %12 = icmp eq i8 %11, 0, !dbg !326
  br i1 %12, label %317, label %13, !dbg !327

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @strlen(i8* nonnull %0) #9, !dbg !328
  %15 = icmp ugt i64 %14, 255, !dbg !330
  br i1 %15, label %317, label %16, !dbg !332

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @ipaddr_aton(i8* nonnull %0, %struct.ip_addr* nonnull %1) #9, !dbg !333
  %18 = icmp eq i32 %17, 0, !dbg !333
  br i1 %18, label %29, label %19, !dbg !335

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !336
  %21 = load i8, i8* %20, align 4, !dbg !336, !tbaa !339
  %22 = icmp ne i8 %21, 6, !dbg !336
  %23 = icmp eq i8 %4, 0, !dbg !341
  %24 = or i1 %23, %22, !dbg !342
  br i1 %24, label %25, label %317, !dbg !342

; <label>:25:                                     ; preds = %19
  %26 = icmp ne i8 %21, 0, !dbg !343
  %27 = icmp eq i8 %4, 1, !dbg !344
  %28 = or i1 %27, %26, !dbg !345
  br i1 %28, label %29, label %317, !dbg !345

; <label>:29:                                     ; preds = %25, %16
  %30 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %4) #10, !dbg !346
  %31 = icmp eq i8 %30, 0, !dbg !348
  br i1 %31, label %317, label %32, !dbg !349

; <label>:32:                                     ; preds = %29
  %33 = and i8 %4, -2, !dbg !350
  %34 = icmp eq i8 %33, 2, !dbg !350
  br i1 %34, label %35, label %40, !dbg !350

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i8 %4, 2, !dbg !351
  %37 = zext i1 %36 to i8, !dbg !352
  %38 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %37) #10, !dbg !356
  %39 = icmp eq i8 %38, 0, !dbg !358
  br i1 %39, label %317, label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = load i8, i8* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 1), align 4, !dbg !359, !tbaa !339
  %42 = icmp eq i8 %41, 6, !dbg !359
  %43 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0), align 16, !dbg !359, !tbaa !249
  br i1 %42, label %44, label %53, !dbg !362

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !359
  %46 = or i32 %45, %43, !dbg !359
  %47 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 2), align 8, !dbg !359
  %48 = or i32 %46, %47, !dbg !359
  %49 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !359
  %50 = or i32 %48, %49, !dbg !359
  %51 = icmp eq i32 %50, 0, !dbg !359
  br i1 %51, label %317, label %52, !dbg !359

; <label>:52:                                     ; preds = %53, %44
  br label %57, !dbg !363

; <label>:53:                                     ; preds = %40
  %54 = icmp eq i32 %43, 0, !dbg !359
  br i1 %54, label %317, label %52, !dbg !362

; <label>:55:                                     ; preds = %88
  %56 = load i8, i8* @dns_seqno, align 1
  br label %91, !dbg !397

; <label>:57:                                     ; preds = %52, %88
  %58 = phi i64 [ %89, %88 ], [ 0, %52 ]
  %59 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 3, !dbg !363
  %60 = load i8, i8* %59, align 2, !dbg !363, !tbaa !398
  %61 = icmp eq i8 %60, 2, !dbg !401
  br i1 %61, label %62, label %88, !dbg !402

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 9, i64 0, !dbg !403
  %64 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %63, i64 256) #9, !dbg !404
  %65 = icmp eq i32 %64, 0, !dbg !405
  br i1 %65, label %66, label %88, !dbg !406

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 10, !dbg !407
  %68 = load i8, i8* %67, align 4, !dbg !407, !tbaa !410
  %69 = icmp eq i8 %68, %4, !dbg !411
  br i1 %69, label %75, label %88, !dbg !412

; <label>:70:                                     ; preds = %75
  %71 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %80, i32 0, !dbg !414
  %72 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %71, align 8, !dbg !414, !tbaa !419
  %73 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %72, null, !dbg !422
  %74 = or i64 %76, 2, !dbg !423
  br i1 %73, label %81, label %346, !dbg !424

; <label>:75:                                     ; preds = %66, %356
  %76 = phi i64 [ %355, %356 ], [ 0, %66 ]
  %77 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %76, i32 0, !dbg !414
  %78 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %77, align 16, !dbg !414, !tbaa !419
  %79 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %78, null, !dbg !422
  %80 = or i64 %76, 1, !dbg !423
  br i1 %79, label %81, label %70, !dbg !424

; <label>:81:                                     ; preds = %351, %346, %70, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %70 ], [ %74, %346 ], [ %350, %351 ]
  %83 = phi void (i8*, %struct.ip_addr*, i8*)** [ %77, %75 ], [ %71, %70 ], [ %347, %346 ], [ %352, %351 ], !dbg !414
  %84 = trunc i64 %58 to i8, !dbg !393
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %83, align 8, !dbg !425, !tbaa !419
  %85 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 1, !dbg !427
  store i8* %3, i8** %85, align 8, !dbg !428, !tbaa !429
  %86 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 2, !dbg !430
  store i8 %84, i8* %86, align 8, !dbg !431, !tbaa !432
  %87 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 3, !dbg !433
  store i8 %4, i8* %87, align 1, !dbg !433, !tbaa !435
  br label %317, !dbg !436

; <label>:88:                                     ; preds = %356, %66, %62, %57
  %89 = add nuw nsw i64 %58, 1, !dbg !437
  %90 = icmp ult i64 %89, 32, !dbg !438
  br i1 %90, label %57, label %55, !dbg !439, !llvm.loop !440

; <label>:91:                                     ; preds = %341, %55
  %92 = phi i64 [ 0, %55 ], [ %344, %341 ]
  %93 = phi i8 [ 32, %55 ], [ %343, %341 ]
  %94 = phi i8 [ 0, %55 ], [ %342, %341 ]
  %95 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %92, i32 3, !dbg !443
  %96 = load i8, i8* %95, align 2, !dbg !443, !tbaa !398
  switch i8 %96, label %105 [
    i8 0, label %124
    i8 3, label %97
  ], !dbg !445

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %92, i32 7, !dbg !446
  %99 = load i8, i8* %98, align 2, !dbg !446, !tbaa !447
  %100 = sub i8 %56, %99, !dbg !448
  %101 = icmp ugt i8 %100, %94, !dbg !450
  %102 = select i1 %101, i8 %100, i8 %94, !dbg !452
  %103 = trunc i64 %92 to i8, !dbg !452
  %104 = select i1 %101, i8 %103, i8 %93, !dbg !452
  br label %105, !dbg !453

; <label>:105:                                    ; preds = %97, %91
  %106 = phi i8 [ %102, %97 ], [ %94, %91 ], !dbg !454
  %107 = phi i8 [ %104, %97 ], [ %93, %91 ], !dbg !454
  %108 = or i64 %92, 1, !dbg !455
  %109 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, i32 3, !dbg !443
  %110 = load i8, i8* %109, align 2, !dbg !443, !tbaa !398
  switch i8 %110, label %341 [
    i8 0, label %124
    i8 3, label %333
  ], !dbg !445

; <label>:111:                                    ; preds = %341
  %112 = trunc i64 %344 to i8, !dbg !395
  %113 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, !dbg !456
  %114 = icmp eq i8 %112, 32, !dbg !457
  br i1 %114, label %115, label %128, !dbg !459

; <label>:115:                                    ; preds = %111
  %116 = icmp ugt i8 %343, 31, !dbg !460
  br i1 %116, label %317, label %117, !dbg !463

; <label>:117:                                    ; preds = %115
  %118 = zext i8 %343 to i64, !dbg !464
  %119 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %118, i32 3, !dbg !465
  %120 = load i8, i8* %119, align 2, !dbg !465, !tbaa !398
  %121 = icmp eq i8 %120, 3, !dbg !466
  br i1 %121, label %122, label %317, !dbg !467

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %118, !dbg !464
  br label %128, !dbg !468

; <label>:124:                                    ; preds = %105, %91
  %125 = phi i64 [ %92, %91 ], [ %108, %105 ]
  %126 = trunc i64 %125 to i8, !dbg !393
  %127 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %125, !dbg !456
  br label %128, !dbg !469

; <label>:128:                                    ; preds = %124, %122, %111
  %129 = phi %struct.dns_table_entry* [ %123, %122 ], [ %113, %111 ], [ %127, %124 ], !dbg !471
  %130 = phi i8 [ %343, %122 ], [ %112, %111 ], [ %126, %124 ], !dbg !472
  br label %136, !dbg !474

; <label>:131:                                    ; preds = %136
  %132 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %141, i32 0, !dbg !475
  %133 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %132, align 8, !dbg !475, !tbaa !419
  %134 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %133, null, !dbg !479
  %135 = or i64 %137, 2, !dbg !480
  br i1 %134, label %142, label %321, !dbg !481

; <label>:136:                                    ; preds = %331, %128
  %137 = phi i64 [ 0, %128 ], [ %330, %331 ]
  %138 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %137, i32 0, !dbg !475
  %139 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %138, align 16, !dbg !475, !tbaa !419
  %140 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %139, null, !dbg !479
  %141 = or i64 %137, 1, !dbg !480
  br i1 %140, label %142, label %131, !dbg !481

; <label>:142:                                    ; preds = %326, %321, %131, %136
  %143 = phi i64 [ %137, %136 ], [ %141, %131 ], [ %135, %321 ], [ %325, %326 ]
  %144 = phi void (i8*, %struct.ip_addr*, i8*)** [ %138, %136 ], [ %132, %131 ], [ %322, %321 ], [ %327, %326 ], !dbg !475
  %145 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 2, !dbg !482
  store i8 %130, i8* %145, align 8, !dbg !483, !tbaa !432
  %146 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 3, !dbg !484
  store i8 1, i8* %146, align 2, !dbg !485, !tbaa !398
  %147 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 7, !dbg !486
  store i8 %56, i8* %147, align 2, !dbg !487, !tbaa !447
  %148 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 10, !dbg !488
  store i8 %4, i8* %148, align 4, !dbg !488, !tbaa !410
  %149 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 3, !dbg !490
  store i8 %4, i8* %149, align 1, !dbg !490, !tbaa !435
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %144, align 8, !dbg !492, !tbaa !419
  %150 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 1, !dbg !493
  store i8* %3, i8** %150, align 8, !dbg !494, !tbaa !429
  %151 = icmp ult i64 %14, 255, !dbg !495
  %152 = select i1 %151, i64 %14, i64 255, !dbg !495
  %153 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 9, i64 0, !dbg !497
  %154 = tail call i8* @memcpy(i8* nonnull %153, i8* %0, i64 %152) #9, !dbg !497
  %155 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 9, i64 %152, !dbg !498
  store i8 0, i8* %155, align 1, !dbg !499, !tbaa !249
  %156 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 0), align 16, !dbg !508, !tbaa !513
  %157 = icmp eq %struct.udp_pcb* %156, null, !dbg !514
  br i1 %157, label %161, label %158, !dbg !515

; <label>:158:                                    ; preds = %142
  %159 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 1), align 8, !dbg !508, !tbaa !513
  %160 = icmp eq %struct.udp_pcb* %159, null, !dbg !514
  br i1 %160, label %161, label %227, !dbg !515

; <label>:161:                                    ; preds = %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %158, %142
  %162 = phi i8 [ 0, %142 ], [ 1, %158 ], [ 2, %227 ], [ 3, %230 ], [ 4, %233 ], [ 5, %236 ], [ 6, %239 ], [ 7, %242 ], [ 8, %245 ], [ 9, %248 ], [ 10, %251 ], [ 11, %254 ], [ 12, %257 ], [ 13, %260 ], [ 14, %263 ], [ 15, %266 ], [ 16, %269 ], [ 17, %272 ], [ 18, %275 ], [ 19, %278 ], [ 20, %281 ], [ 21, %284 ], [ 22, %287 ], [ 23, %290 ], [ 24, %293 ], [ 25, %296 ], [ 26, %299 ], [ 27, %302 ], [ 28, %305 ], [ 29, %308 ], [ 30, %311 ], [ 31, %314 ]
  %163 = phi i64 [ 0, %142 ], [ 1, %158 ], [ 2, %227 ], [ 3, %230 ], [ 4, %233 ], [ 5, %236 ], [ 6, %239 ], [ 7, %242 ], [ 8, %245 ], [ 9, %248 ], [ 10, %251 ], [ 11, %254 ], [ 12, %257 ], [ 13, %260 ], [ 14, %263 ], [ 15, %266 ], [ 16, %269 ], [ 17, %272 ], [ 18, %275 ], [ 19, %278 ], [ 20, %281 ], [ 21, %284 ], [ 22, %287 ], [ 23, %290 ], [ 24, %293 ], [ 25, %296 ], [ 26, %299 ], [ 27, %302 ], [ 28, %305 ], [ 29, %308 ], [ 30, %311 ], [ 31, %314 ], !dbg !508
  %164 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %163, !dbg !508
  %165 = tail call %struct.udp_pcb* @udp_new_ip_type(i8 zeroext 46) #9, !dbg !516
  %166 = icmp eq %struct.udp_pcb* %165, null, !dbg !529
  br i1 %166, label %197, label %167, !dbg !531

; <label>:167:                                    ; preds = %161
  %168 = bitcast i32* %6 to i8*
  br label %169, !dbg !532

; <label>:169:                                    ; preds = %194, %167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %168) #8, !dbg !532
  %170 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !551, !srcloc !559
  %171 = icmp ult i64 %170, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !561
  br i1 %171, label %178, label %172, !dbg !561

; <label>:172:                                    ; preds = %169
  %173 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !562, !srcloc !559
  %174 = icmp ugt i64 %173, ptrtoint ([0 x i8]* @_end to i64), !dbg !561
  br i1 %174, label %178, label %175, !dbg !565

; <label>:175:                                    ; preds = %172
  %176 = call i64 @ukplat_lcpu_save_irqf() #9, !dbg !566
  %177 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #9, !dbg !575
  call void @ukplat_lcpu_restore_irqf(i64 %176) #9, !dbg !577
  store i32 %177, i32* %6, align 4, !dbg !579, !tbaa !252
  br label %187, !dbg !579

; <label>:178:                                    ; preds = %172, %169
  %179 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !580, !srcloc !559
  %180 = and i64 %179, -65536, !dbg !591
  %181 = or i64 %180, 4097, !dbg !591
  %182 = add nsw i64 %181, -1, !dbg !591
  %183 = inttoptr i64 %182 to i32*, !dbg !592
  %184 = load i32, i32* %183, align 4096, !dbg !593, !tbaa !252
  %185 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %184, i32 ()* nonnull @uk_swrand_randr) #8, !dbg !594, !srcloc !595
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %185) #8, !dbg !596, !srcloc !599
  %186 = load i32, i32* %6, align 4, !dbg !600, !tbaa !252
  br label %187

; <label>:187:                                    ; preds = %178, %175
  %188 = phi i32 [ %186, %178 ], [ %177, %175 ], !dbg !600
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %168) #8, !dbg !601
  %189 = and i32 %188, 64512, !dbg !602
  %190 = icmp eq i32 %189, 0, !dbg !602
  br i1 %190, label %194, label %191, !dbg !604

; <label>:191:                                    ; preds = %187
  %192 = trunc i32 %188 to i16, !dbg !605
  %193 = call signext i8 @udp_bind(%struct.udp_pcb* nonnull %165, %struct.ip_addr* nonnull @ip_addr_any_type, i16 zeroext %192) #9, !dbg !607
  br label %194, !dbg !610

; <label>:194:                                    ; preds = %191, %187
  %195 = phi i8 [ %193, %191 ], [ -8, %187 ], !dbg !611
  switch i8 %195, label %196 [
    i8 -8, label %169
    i8 0, label %219
  ], !dbg !613

; <label>:196:                                    ; preds = %194
  call void @udp_remove(%struct.udp_pcb* nonnull %165) #9, !dbg !614
  br label %197, !dbg !617

; <label>:197:                                    ; preds = %196, %161
  store %struct.udp_pcb* null, %struct.udp_pcb** %164, align 8, !dbg !618, !tbaa !513
  br label %198, !dbg !619

; <label>:198:                                    ; preds = %314, %197
  %199 = load i8, i8* @dns_last_pcb_idx, align 1, !dbg !620, !tbaa !249
  br label %209, !dbg !623

; <label>:200:                                    ; preds = %209
  %201 = add i8 %214, 1, !dbg !624
  %202 = icmp ugt i8 %201, 31, !dbg !626
  %203 = select i1 %202, i8 0, i8 %201, !dbg !629
  %204 = zext i8 %203 to i64, !dbg !630
  %205 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %204, !dbg !630
  %206 = load %struct.udp_pcb*, %struct.udp_pcb** %205, align 8, !dbg !630, !tbaa !513
  %207 = icmp eq %struct.udp_pcb* %206, null, !dbg !632
  %208 = add nuw nsw i8 %211, 2, !dbg !633
  br i1 %207, label %319, label %222, !dbg !634

; <label>:209:                                    ; preds = %319, %198
  %210 = phi i8 [ %199, %198 ], [ %203, %319 ]
  %211 = phi i8 [ 0, %198 ], [ %208, %319 ]
  %212 = add i8 %210, 1, !dbg !624
  %213 = icmp ugt i8 %212, 31, !dbg !626
  %214 = select i1 %213, i8 0, i8 %212, !dbg !629
  %215 = zext i8 %214 to i64, !dbg !630
  %216 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %215, !dbg !630
  %217 = load %struct.udp_pcb*, %struct.udp_pcb** %216, align 8, !dbg !630, !tbaa !513
  %218 = icmp eq %struct.udp_pcb* %217, null, !dbg !632
  br i1 %218, label %200, label %222, !dbg !634

; <label>:219:                                    ; preds = %194
  call void @udp_recv(%struct.udp_pcb* nonnull %165, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* nonnull @dns_recv, i8* null) #9, !dbg !635
  store %struct.udp_pcb* %165, %struct.udp_pcb** %164, align 8, !dbg !618, !tbaa !513
  br label %222, !dbg !636

; <label>:220:                                    ; preds = %319
  %221 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 8, !dbg !637
  store i8 32, i8* %221, align 1, !dbg !638, !tbaa !639
  store i8 0, i8* %146, align 2, !dbg !640, !tbaa !398
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %144, align 8, !dbg !643, !tbaa !419
  br label %317, !dbg !644

; <label>:222:                                    ; preds = %209, %200, %219
  %223 = phi i8 [ %162, %219 ], [ %214, %209 ], [ %203, %200 ]
  store i8 %223, i8* @dns_last_pcb_idx, align 1, !dbg !454, !tbaa !249
  %224 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 8, !dbg !637
  store i8 %223, i8* %224, align 1, !dbg !638, !tbaa !639
  %225 = load i8, i8* @dns_seqno, align 1, !dbg !645, !tbaa !249
  %226 = add i8 %225, 1, !dbg !645
  store i8 %226, i8* @dns_seqno, align 1, !dbg !645, !tbaa !249
  call fastcc void @dns_check_entry(i8 zeroext %130) #9, !dbg !646
  br label %317, !dbg !647

; <label>:227:                                    ; preds = %158
  %228 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 2), align 16, !dbg !508, !tbaa !513
  %229 = icmp eq %struct.udp_pcb* %228, null, !dbg !514
  br i1 %229, label %161, label %230, !dbg !515

; <label>:230:                                    ; preds = %227
  %231 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 3), align 8, !dbg !508, !tbaa !513
  %232 = icmp eq %struct.udp_pcb* %231, null, !dbg !514
  br i1 %232, label %161, label %233, !dbg !515

; <label>:233:                                    ; preds = %230
  %234 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 4), align 16, !dbg !508, !tbaa !513
  %235 = icmp eq %struct.udp_pcb* %234, null, !dbg !514
  br i1 %235, label %161, label %236, !dbg !515

; <label>:236:                                    ; preds = %233
  %237 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 5), align 8, !dbg !508, !tbaa !513
  %238 = icmp eq %struct.udp_pcb* %237, null, !dbg !514
  br i1 %238, label %161, label %239, !dbg !515

; <label>:239:                                    ; preds = %236
  %240 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 6), align 16, !dbg !508, !tbaa !513
  %241 = icmp eq %struct.udp_pcb* %240, null, !dbg !514
  br i1 %241, label %161, label %242, !dbg !515

; <label>:242:                                    ; preds = %239
  %243 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 7), align 8, !dbg !508, !tbaa !513
  %244 = icmp eq %struct.udp_pcb* %243, null, !dbg !514
  br i1 %244, label %161, label %245, !dbg !515

; <label>:245:                                    ; preds = %242
  %246 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 8), align 16, !dbg !508, !tbaa !513
  %247 = icmp eq %struct.udp_pcb* %246, null, !dbg !514
  br i1 %247, label %161, label %248, !dbg !515

; <label>:248:                                    ; preds = %245
  %249 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 9), align 8, !dbg !508, !tbaa !513
  %250 = icmp eq %struct.udp_pcb* %249, null, !dbg !514
  br i1 %250, label %161, label %251, !dbg !515

; <label>:251:                                    ; preds = %248
  %252 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 10), align 16, !dbg !508, !tbaa !513
  %253 = icmp eq %struct.udp_pcb* %252, null, !dbg !514
  br i1 %253, label %161, label %254, !dbg !515

; <label>:254:                                    ; preds = %251
  %255 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 11), align 8, !dbg !508, !tbaa !513
  %256 = icmp eq %struct.udp_pcb* %255, null, !dbg !514
  br i1 %256, label %161, label %257, !dbg !515

; <label>:257:                                    ; preds = %254
  %258 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 12), align 16, !dbg !508, !tbaa !513
  %259 = icmp eq %struct.udp_pcb* %258, null, !dbg !514
  br i1 %259, label %161, label %260, !dbg !515

; <label>:260:                                    ; preds = %257
  %261 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 13), align 8, !dbg !508, !tbaa !513
  %262 = icmp eq %struct.udp_pcb* %261, null, !dbg !514
  br i1 %262, label %161, label %263, !dbg !515

; <label>:263:                                    ; preds = %260
  %264 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 14), align 16, !dbg !508, !tbaa !513
  %265 = icmp eq %struct.udp_pcb* %264, null, !dbg !514
  br i1 %265, label %161, label %266, !dbg !515

; <label>:266:                                    ; preds = %263
  %267 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 15), align 8, !dbg !508, !tbaa !513
  %268 = icmp eq %struct.udp_pcb* %267, null, !dbg !514
  br i1 %268, label %161, label %269, !dbg !515

; <label>:269:                                    ; preds = %266
  %270 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 16), align 16, !dbg !508, !tbaa !513
  %271 = icmp eq %struct.udp_pcb* %270, null, !dbg !514
  br i1 %271, label %161, label %272, !dbg !515

; <label>:272:                                    ; preds = %269
  %273 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 17), align 8, !dbg !508, !tbaa !513
  %274 = icmp eq %struct.udp_pcb* %273, null, !dbg !514
  br i1 %274, label %161, label %275, !dbg !515

; <label>:275:                                    ; preds = %272
  %276 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 18), align 16, !dbg !508, !tbaa !513
  %277 = icmp eq %struct.udp_pcb* %276, null, !dbg !514
  br i1 %277, label %161, label %278, !dbg !515

; <label>:278:                                    ; preds = %275
  %279 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 19), align 8, !dbg !508, !tbaa !513
  %280 = icmp eq %struct.udp_pcb* %279, null, !dbg !514
  br i1 %280, label %161, label %281, !dbg !515

; <label>:281:                                    ; preds = %278
  %282 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 20), align 16, !dbg !508, !tbaa !513
  %283 = icmp eq %struct.udp_pcb* %282, null, !dbg !514
  br i1 %283, label %161, label %284, !dbg !515

; <label>:284:                                    ; preds = %281
  %285 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 21), align 8, !dbg !508, !tbaa !513
  %286 = icmp eq %struct.udp_pcb* %285, null, !dbg !514
  br i1 %286, label %161, label %287, !dbg !515

; <label>:287:                                    ; preds = %284
  %288 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 22), align 16, !dbg !508, !tbaa !513
  %289 = icmp eq %struct.udp_pcb* %288, null, !dbg !514
  br i1 %289, label %161, label %290, !dbg !515

; <label>:290:                                    ; preds = %287
  %291 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 23), align 8, !dbg !508, !tbaa !513
  %292 = icmp eq %struct.udp_pcb* %291, null, !dbg !514
  br i1 %292, label %161, label %293, !dbg !515

; <label>:293:                                    ; preds = %290
  %294 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 24), align 16, !dbg !508, !tbaa !513
  %295 = icmp eq %struct.udp_pcb* %294, null, !dbg !514
  br i1 %295, label %161, label %296, !dbg !515

; <label>:296:                                    ; preds = %293
  %297 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 25), align 8, !dbg !508, !tbaa !513
  %298 = icmp eq %struct.udp_pcb* %297, null, !dbg !514
  br i1 %298, label %161, label %299, !dbg !515

; <label>:299:                                    ; preds = %296
  %300 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 26), align 16, !dbg !508, !tbaa !513
  %301 = icmp eq %struct.udp_pcb* %300, null, !dbg !514
  br i1 %301, label %161, label %302, !dbg !515

; <label>:302:                                    ; preds = %299
  %303 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 27), align 8, !dbg !508, !tbaa !513
  %304 = icmp eq %struct.udp_pcb* %303, null, !dbg !514
  br i1 %304, label %161, label %305, !dbg !515

; <label>:305:                                    ; preds = %302
  %306 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 28), align 16, !dbg !508, !tbaa !513
  %307 = icmp eq %struct.udp_pcb* %306, null, !dbg !514
  br i1 %307, label %161, label %308, !dbg !515

; <label>:308:                                    ; preds = %305
  %309 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 29), align 8, !dbg !508, !tbaa !513
  %310 = icmp eq %struct.udp_pcb* %309, null, !dbg !514
  br i1 %310, label %161, label %311, !dbg !515

; <label>:311:                                    ; preds = %308
  %312 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 30), align 16, !dbg !508, !tbaa !513
  %313 = icmp eq %struct.udp_pcb* %312, null, !dbg !514
  br i1 %313, label %161, label %314, !dbg !515

; <label>:314:                                    ; preds = %311
  %315 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 31), align 8, !dbg !508, !tbaa !513
  %316 = icmp eq %struct.udp_pcb* %315, null, !dbg !514
  br i1 %316, label %161, label %198, !dbg !515

; <label>:317:                                    ; preds = %331, %35, %222, %220, %117, %115, %81, %53, %44, %29, %19, %25, %13, %5, %10
  %318 = phi i8 [ 0, %35 ], [ -16, %10 ], [ -16, %5 ], [ -16, %13 ], [ 0, %25 ], [ 0, %19 ], [ 0, %29 ], [ -6, %44 ], [ -6, %53 ], [ -5, %81 ], [ -1, %220 ], [ -5, %222 ], [ -1, %117 ], [ -1, %115 ], [ -1, %331 ], !dbg !648
  ret i8 %318, !dbg !650

; <label>:319:                                    ; preds = %200
  %320 = icmp ult i8 %208, 32, !dbg !651
  br i1 %320, label %209, label %220, !dbg !623, !llvm.loop !652

; <label>:321:                                    ; preds = %131
  %322 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %135, i32 0, !dbg !475
  %323 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %322, align 16, !dbg !475, !tbaa !419
  %324 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %323, null, !dbg !479
  %325 = or i64 %137, 3, !dbg !480
  br i1 %324, label %142, label %326, !dbg !481

; <label>:326:                                    ; preds = %321
  %327 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %325, i32 0, !dbg !475
  %328 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %327, align 8, !dbg !475, !tbaa !419
  %329 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %328, null, !dbg !479
  %330 = add nuw nsw i64 %137, 4, !dbg !480
  br i1 %329, label %142, label %331, !dbg !481

; <label>:331:                                    ; preds = %326
  %332 = icmp ult i64 %330, 32, !dbg !655
  br i1 %332, label %136, label %317, !dbg !474, !llvm.loop !656

; <label>:333:                                    ; preds = %105
  %334 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, i32 7, !dbg !446
  %335 = load i8, i8* %334, align 2, !dbg !446, !tbaa !447
  %336 = sub i8 %56, %335, !dbg !448
  %337 = icmp ugt i8 %336, %106, !dbg !450
  %338 = select i1 %337, i8 %336, i8 %106, !dbg !452
  %339 = trunc i64 %108 to i8, !dbg !452
  %340 = select i1 %337, i8 %339, i8 %107, !dbg !452
  br label %341, !dbg !453

; <label>:341:                                    ; preds = %333, %105
  %342 = phi i8 [ %338, %333 ], [ %106, %105 ], !dbg !454
  %343 = phi i8 [ %340, %333 ], [ %107, %105 ], !dbg !454
  %344 = add nuw nsw i64 %92, 2, !dbg !455
  %345 = icmp ult i64 %344, 32, !dbg !659
  br i1 %345, label %91, label %111, !dbg !397, !llvm.loop !660

; <label>:346:                                    ; preds = %70
  %347 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %74, i32 0, !dbg !414
  %348 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %347, align 16, !dbg !414, !tbaa !419
  %349 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %348, null, !dbg !422
  %350 = or i64 %76, 3, !dbg !423
  br i1 %349, label %81, label %351, !dbg !424

; <label>:351:                                    ; preds = %346
  %352 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %350, i32 0, !dbg !414
  %353 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %352, align 8, !dbg !414, !tbaa !419
  %354 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %353, null, !dbg !422
  %355 = add nuw nsw i64 %76, 4, !dbg !423
  br i1 %354, label %81, label %356, !dbg !424

; <label>:356:                                    ; preds = %351
  %357 = icmp ult i64 %355, 32, !dbg !663
  br i1 %357, label %75, label %88, !dbg !664, !llvm.loop !665
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_lookup(i8*, %struct.ip_addr*, i8 zeroext) unnamed_addr #1 !dbg !668 {
  br label %4, !dbg !680

; <label>:4:                                      ; preds = %3, %46
  %5 = phi i64 [ 0, %3 ], [ %47, %46 ]
  %6 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 3, !dbg !682
  %7 = load i8, i8* %6, align 2, !dbg !682, !tbaa !398
  %8 = icmp eq i8 %7, 3, !dbg !686
  br i1 %8, label %9, label %46, !dbg !687

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 9, i64 0, !dbg !688
  %11 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %10, i64 256) #9, !dbg !689
  %12 = icmp eq i32 %11, 0, !dbg !690
  br i1 %12, label %13, label %46, !dbg !691

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 1, !dbg !692
  %15 = load i8, i8* %14, align 4, !dbg !692, !tbaa !693
  %16 = icmp eq i8 %15, 6, !dbg !692
  br i1 %16, label %17, label %18, !dbg !694

; <label>:17:                                     ; preds = %13
  switch i8 %2, label %46 [
    i8 3, label %19
    i8 1, label %19
  ], !dbg !692

; <label>:18:                                     ; preds = %13
  switch i8 %2, label %19 [
    i8 3, label %46
    i8 1, label %46
  ], !dbg !692

; <label>:19:                                     ; preds = %18, %17, %17
  %20 = icmp eq %struct.ip_addr* %1, null, !dbg !695
  br i1 %20, label %49, label %21, !dbg !698

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !699
  store i8 %15, i8* %22, align 4, !dbg !699, !tbaa !339
  %23 = load i8, i8* %14, align 4, !dbg !703, !tbaa !693
  %24 = icmp eq i8 %23, 6, !dbg !703
  %25 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !705
  %26 = load i32, i32* %25, align 4, !dbg !705, !tbaa !249
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !705
  store i32 %26, i32* %27, align 4, !dbg !705, !tbaa !249
  br i1 %24, label %28, label %41, !dbg !708

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !705
  %30 = load i32, i32* %29, align 4, !dbg !705, !tbaa !249
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !705
  store i32 %30, i32* %31, align 4, !dbg !705, !tbaa !249
  %32 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !705
  %33 = load i32, i32* %32, align 4, !dbg !705, !tbaa !249
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !705
  store i32 %33, i32* %34, align 4, !dbg !705, !tbaa !249
  %35 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !705
  %36 = load i32, i32* %35, align 4, !dbg !705, !tbaa !249
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !705
  store i32 %36, i32* %37, align 4, !dbg !705, !tbaa !249
  %38 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 1, !dbg !705
  %39 = load i8, i8* %38, align 4, !dbg !705, !tbaa !249
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !705
  store i8 %39, i8* %40, align 4, !dbg !705, !tbaa !249
  br label %49, !dbg !709

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !710
  store i32 0, i32* %42, align 4, !dbg !710, !tbaa !249
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !710
  store i32 0, i32* %43, align 4, !dbg !710, !tbaa !249
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !710
  store i32 0, i32* %44, align 4, !dbg !710, !tbaa !249
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !710
  store i8 0, i8* %45, align 4, !dbg !710, !tbaa !249
  br label %49

; <label>:46:                                     ; preds = %18, %18, %17, %4, %9
  %47 = add nuw nsw i64 %5, 1, !dbg !713
  %48 = icmp ult i64 %47, 32, !dbg !714
  br i1 %48, label %4, label %49, !dbg !680, !llvm.loop !715

; <label>:49:                                     ; preds = %46, %41, %28, %19
  %50 = phi i8 [ 0, %19 ], [ 0, %28 ], [ 0, %41 ], [ -16, %46 ], !dbg !717
  ret i8 %50, !dbg !718
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_check_entry(i8 zeroext) unnamed_addr #1 !dbg !719 {
  %2 = alloca i32, align 4
  %3 = zext i8 %0 to i64, !dbg !727
  %4 = icmp ult i8 %0, 32, !dbg !728
  br i1 %4, label %6, label %5, !dbg !731

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #10, !dbg !732
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !735
  tail call void @ukplat_terminate(i32 3) #11, !dbg !735
  unreachable, !dbg !735

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 3, !dbg !739
  %8 = load i8, i8* %7, align 2, !dbg !739, !tbaa !398
  switch i8 %8, label %151 [
    i8 1, label %9
    i8 2, label %54
    i8 3, label %143
    i8 0, label %152
  ], !dbg !740

; <label>:9:                                      ; preds = %6
  %10 = bitcast i32* %2 to i8*
  br label %12, !dbg !741

; <label>:11:                                     ; preds = %153, %38
  br label %12, !dbg !750

; <label>:12:                                     ; preds = %11, %9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #8, !dbg !750
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !752, !srcloc !559
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !755
  br i1 %14, label %21, label %15, !dbg !755

; <label>:15:                                     ; preds = %12
  %16 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !756, !srcloc !559
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !755
  br i1 %17, label %21, label %18, !dbg !759

; <label>:18:                                     ; preds = %15
  %19 = call i64 @ukplat_lcpu_save_irqf() #9, !dbg !760
  %20 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #9, !dbg !763
  call void @ukplat_lcpu_restore_irqf(i64 %19) #9, !dbg !765
  store i32 %20, i32* %2, align 4, !dbg !767, !tbaa !252
  br label %30, !dbg !767

; <label>:21:                                     ; preds = %15, %12
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #8, !dbg !768, !srcloc !559
  %23 = and i64 %22, -65536, !dbg !773
  %24 = or i64 %23, 4097, !dbg !773
  %25 = add nsw i64 %24, -1, !dbg !773
  %26 = inttoptr i64 %25 to i32*, !dbg !774
  %27 = load i32, i32* %26, align 4096, !dbg !775, !tbaa !252
  %28 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %27, i32 ()* nonnull @uk_swrand_randr) #8, !dbg !776, !srcloc !595
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %28) #8, !dbg !777, !srcloc !599
  %29 = load i32, i32* %2, align 4, !dbg !778, !tbaa !252
  br label %30

; <label>:30:                                     ; preds = %21, %18
  %31 = phi i32 [ %29, %21 ], [ %20, %18 ], !dbg !778
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #8, !dbg !779
  %32 = trunc i32 %31 to i16, !dbg !780
  br label %33, !dbg !783

; <label>:33:                                     ; preds = %157, %30
  %34 = phi i64 [ 0, %30 ], [ %158, %157 ]
  %35 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 3, !dbg !785
  %36 = load i8, i8* %35, align 2, !dbg !785, !tbaa !398
  %37 = icmp eq i8 %36, 2, !dbg !789
  br i1 %37, label %38, label %42, !dbg !790

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 2, !dbg !791
  %40 = load i16, i16* %39, align 4, !dbg !791, !tbaa !792
  %41 = icmp eq i16 %40, %32, !dbg !793
  br i1 %41, label %11, label %42, !dbg !794

; <label>:42:                                     ; preds = %38, %33
  %43 = or i64 %34, 1, !dbg !795
  %44 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 3, !dbg !785
  %45 = load i8, i8* %44, align 2, !dbg !785, !tbaa !398
  %46 = icmp eq i8 %45, 2, !dbg !789
  br i1 %46, label %153, label %157, !dbg !790

; <label>:47:                                     ; preds = %157
  %48 = trunc i32 %31 to i16, !dbg !780
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 2, !dbg !796
  store i16 %48, i16* %49, align 4, !dbg !797, !tbaa !792
  store i8 2, i8* %7, align 2, !dbg !798, !tbaa !398
  %50 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !799
  store i8 0, i8* %50, align 1, !dbg !800, !tbaa !801
  %51 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !802
  store i8 1, i8* %51, align 8, !dbg !803, !tbaa !804
  %52 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !805
  store i8 0, i8* %52, align 1, !dbg !806, !tbaa !807
  %53 = call fastcc signext i8 @dns_send(i8 zeroext %0) #10, !dbg !808
  br label %152, !dbg !810

; <label>:54:                                     ; preds = %6
  %55 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !811
  %56 = load i8, i8* %55, align 8, !dbg !813, !tbaa !804
  %57 = add i8 %56, -1, !dbg !813
  store i8 %57, i8* %55, align 8, !dbg !813, !tbaa !804
  %58 = icmp eq i8 %57, 0, !dbg !814
  br i1 %58, label %59, label %152, !dbg !815

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !816
  %61 = load i8, i8* %60, align 1, !dbg !819, !tbaa !807
  %62 = add i8 %61, 1, !dbg !819
  store i8 %62, i8* %60, align 1, !dbg !819, !tbaa !807
  %63 = icmp eq i8 %62, 4, !dbg !820
  br i1 %63, label %64, label %140, !dbg !821

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !832
  %66 = load i8, i8* %65, align 1, !dbg !832, !tbaa !801
  %67 = zext i8 %66 to i32, !dbg !836
  %68 = add nuw nsw i32 %67, 1, !dbg !837
  %69 = icmp ult i32 %68, 2, !dbg !838
  br i1 %69, label %70, label %94, !dbg !839

; <label>:70:                                     ; preds = %64
  %71 = zext i32 %68 to i64, !dbg !840
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 1, !dbg !840
  %73 = load i8, i8* %72, align 4, !dbg !840, !tbaa !339
  %74 = icmp eq i8 %73, 6, !dbg !840
  %75 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 0, !dbg !840
  %76 = load i32, i32* %75, align 8, !dbg !840, !tbaa !249
  %77 = icmp eq i32 %76, 0, !dbg !840
  br i1 %74, label %78, label %91, !dbg !841

; <label>:78:                                     ; preds = %70
  br i1 %77, label %79, label %92, !dbg !840

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 1, !dbg !840
  %81 = load i32, i32* %80, align 4, !dbg !840, !tbaa !249
  %82 = icmp eq i32 %81, 0, !dbg !840
  br i1 %82, label %83, label %92, !dbg !840

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 2, !dbg !840
  %85 = load i32, i32* %84, align 8, !dbg !840, !tbaa !249
  %86 = icmp eq i32 %85, 0, !dbg !840
  br i1 %86, label %87, label %92, !dbg !840

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 3, !dbg !840
  %89 = load i32, i32* %88, align 4, !dbg !840, !tbaa !249
  %90 = icmp eq i32 %89, 0, !dbg !840
  br i1 %90, label %94, label %92, !dbg !840

; <label>:91:                                     ; preds = %70
  br i1 %77, label %94, label %92, !dbg !841

; <label>:92:                                     ; preds = %91, %87, %83, %79, %78
  %93 = add i8 %66, 1, !dbg !842
  store i8 %93, i8* %65, align 1, !dbg !842, !tbaa !801
  store i8 1, i8* %55, align 8, !dbg !844, !tbaa !804
  store i8 0, i8* %60, align 1, !dbg !845, !tbaa !807
  br label %141, !dbg !846

; <label>:94:                                     ; preds = %87, %91, %64
  %95 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 9, i64 0
  br label %98, !dbg !859

; <label>:96:                                     ; preds = %110
  %97 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 8
  br label %113, !dbg !861

; <label>:98:                                     ; preds = %110, %94
  %99 = phi i64 [ 0, %94 ], [ %111, %110 ]
  %100 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 0, !dbg !863
  %101 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %100, align 8, !dbg !863, !tbaa !419
  %102 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %101, null, !dbg !867
  br i1 %102, label %110, label %103, !dbg !868

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 2, !dbg !869
  %105 = load i8, i8* %104, align 8, !dbg !869, !tbaa !432
  %106 = icmp eq i8 %105, %0, !dbg !870
  br i1 %106, label %107, label %110, !dbg !871

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 1, !dbg !872
  %109 = load i8*, i8** %108, align 8, !dbg !872, !tbaa !429
  tail call void %101(i8* nonnull %95, %struct.ip_addr* null, i8* %109) #9, !dbg !874
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %100, align 8, !dbg !875, !tbaa !419
  br label %110, !dbg !876

; <label>:110:                                    ; preds = %107, %103, %98
  %111 = add nuw nsw i64 %99, 1, !dbg !877
  %112 = icmp eq i64 %111, 32, !dbg !878
  br i1 %112, label %96, label %98, !dbg !859, !llvm.loop !879

; <label>:113:                                    ; preds = %169, %96
  %114 = phi i64 [ 0, %96 ], [ %170, %169 ]
  %115 = icmp eq i64 %114, %3, !dbg !882
  br i1 %115, label %125, label %116, !dbg !886

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %114, i32 3, !dbg !887
  %118 = load i8, i8* %117, align 2, !dbg !887, !tbaa !398
  %119 = icmp eq i8 %118, 2, !dbg !889
  br i1 %119, label %120, label %125, !dbg !890

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %114, i32 8, !dbg !891
  %122 = load i8, i8* %121, align 1, !dbg !891, !tbaa !639
  %123 = load i8, i8* %97, align 1, !dbg !894, !tbaa !639
  %124 = icmp eq i8 %122, %123, !dbg !895
  br i1 %124, label %138, label %125, !dbg !896

; <label>:125:                                    ; preds = %120, %116, %113
  %126 = or i64 %114, 1, !dbg !897
  %127 = icmp eq i64 %126, %3, !dbg !882
  br i1 %127, label %169, label %160, !dbg !886

; <label>:128:                                    ; preds = %169
  %129 = load i8, i8* %97, align 1, !dbg !898, !tbaa !639
  %130 = icmp ult i8 %129, 32, !dbg !900
  br i1 %130, label %131, label %139, !dbg !901

; <label>:131:                                    ; preds = %128
  %132 = zext i8 %129 to i64, !dbg !902
  %133 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %132, !dbg !902
  %134 = load %struct.udp_pcb*, %struct.udp_pcb** %133, align 8, !dbg !902, !tbaa !513
  tail call void @udp_remove(%struct.udp_pcb* %134) #9, !dbg !904
  %135 = load i8, i8* %97, align 1, !dbg !905, !tbaa !639
  %136 = zext i8 %135 to i64, !dbg !906
  %137 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %136, !dbg !906
  store %struct.udp_pcb* null, %struct.udp_pcb** %137, align 8, !dbg !907, !tbaa !513
  br label %138, !dbg !908

; <label>:138:                                    ; preds = %120, %164, %131
  store i8 32, i8* %97, align 1, !dbg !909, !tbaa !639
  br label %139, !dbg !910

; <label>:139:                                    ; preds = %138, %128
  store i8 0, i8* %7, align 2, !dbg !910, !tbaa !398
  br label %152, !dbg !911

; <label>:140:                                    ; preds = %59
  store i8 %62, i8* %55, align 8, !dbg !912, !tbaa !804
  br label %141

; <label>:141:                                    ; preds = %140, %92
  %142 = tail call fastcc signext i8 @dns_send(i8 zeroext %0) #10, !dbg !914
  br label %152, !dbg !915

; <label>:143:                                    ; preds = %6
  %144 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 0, !dbg !916
  %145 = load i32, i32* %144, align 8, !dbg !916, !tbaa !918
  %146 = icmp eq i32 %145, 0, !dbg !919
  br i1 %146, label %150, label %147, !dbg !920

; <label>:147:                                    ; preds = %143
  %148 = add i32 %145, -1, !dbg !921
  store i32 %148, i32* %144, align 8, !dbg !921, !tbaa !918
  %149 = icmp eq i32 %148, 0, !dbg !922
  br i1 %149, label %150, label %152, !dbg !923

; <label>:150:                                    ; preds = %147, %143
  store i8 0, i8* %7, align 2, !dbg !924, !tbaa !398
  br label %152, !dbg !926

; <label>:151:                                    ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !927
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !932
  tail call void @ukplat_terminate(i32 3) #11, !dbg !932
  unreachable, !dbg !932

; <label>:152:                                    ; preds = %147, %150, %54, %141, %6, %139, %47
  ret void, !dbg !936

; <label>:153:                                    ; preds = %42
  %154 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 2, !dbg !791
  %155 = load i16, i16* %154, align 4, !dbg !791, !tbaa !792
  %156 = icmp eq i16 %155, %32, !dbg !793
  br i1 %156, label %11, label %157, !dbg !794

; <label>:157:                                    ; preds = %153, %42
  %158 = add nuw nsw i64 %34, 2, !dbg !795
  %159 = icmp ult i64 %158, 32, !dbg !937
  br i1 %159, label %33, label %47, !dbg !783, !llvm.loop !938

; <label>:160:                                    ; preds = %125
  %161 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %126, i32 3, !dbg !887
  %162 = load i8, i8* %161, align 2, !dbg !887, !tbaa !398
  %163 = icmp eq i8 %162, 2, !dbg !889
  br i1 %163, label %164, label %169, !dbg !890

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %126, i32 8, !dbg !891
  %166 = load i8, i8* %165, align 1, !dbg !891, !tbaa !639
  %167 = load i8, i8* %97, align 1, !dbg !894, !tbaa !639
  %168 = icmp eq i8 %166, %167, !dbg !895
  br i1 %168, label %138, label %169, !dbg !896

; <label>:169:                                    ; preds = %164, %160, %125
  %170 = add nuw nsw i64 %114, 2, !dbg !897
  %171 = icmp ult i64 %170, 32, !dbg !941
  br i1 %171, label %113, label %128, !dbg !861, !llvm.loop !942
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #6 !dbg !134 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !946
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #8, !dbg !946
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !948
  call void @llvm.va_start(i8* nonnull %3), !dbg !948
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !949
  call void @llvm.va_end(i8* nonnull %3), !dbg !952
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #8, !dbg !953
  ret void, !dbg !953
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #7

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_send(i8 zeroext) unnamed_addr #1 !dbg !954 {
  %2 = alloca %struct.dns_hdr, align 2
  %3 = alloca %struct.dns_query, align 2
  %4 = bitcast %struct.dns_hdr* %2 to i8*, !dbg !989
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #8, !dbg !989
  %5 = bitcast %struct.dns_query* %3 to i8*, !dbg !990
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #8, !dbg !990
  %6 = zext i8 %0 to i64, !dbg !991
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 4, !dbg !992
  %8 = load i8, i8* %7, align 1, !dbg !992, !tbaa !801
  %9 = icmp ult i8 %8, 2, !dbg !992
  br i1 %9, label %11, label %10, !dbg !995

; <label>:10:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !996
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !999
  tail call void @ukplat_terminate(i32 3) #11, !dbg !999
  unreachable, !dbg !999

; <label>:11:                                     ; preds = %1
  %12 = zext i8 %8 to i64, !dbg !1003
  %13 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 1, !dbg !1003
  %14 = load i8, i8* %13, align 4, !dbg !1003, !tbaa !339
  %15 = icmp eq i8 %14, 6, !dbg !1003
  %16 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 0, !dbg !1003
  %17 = load i32, i32* %16, align 8, !dbg !1003, !tbaa !249
  %18 = icmp eq i32 %17, 0, !dbg !1003
  br i1 %15, label %19, label %32, !dbg !1005

; <label>:19:                                     ; preds = %11
  br i1 %18, label %20, label %80, !dbg !1003

; <label>:20:                                     ; preds = %19
  %21 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 1, !dbg !1003
  %22 = load i32, i32* %21, align 4, !dbg !1003, !tbaa !249
  %23 = icmp eq i32 %22, 0, !dbg !1003
  br i1 %23, label %24, label %80, !dbg !1003

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 2, !dbg !1003
  %26 = load i32, i32* %25, align 8, !dbg !1003, !tbaa !249
  %27 = icmp eq i32 %26, 0, !dbg !1003
  br i1 %27, label %28, label %80, !dbg !1003

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 3, !dbg !1003
  %30 = load i32, i32* %29, align 4, !dbg !1003, !tbaa !249
  %31 = icmp eq i32 %30, 0, !dbg !1003
  br i1 %31, label %33, label %80, !dbg !1003

; <label>:32:                                     ; preds = %11
  br i1 %18, label %33, label %80, !dbg !1005

; <label>:33:                                     ; preds = %32, %28
  %34 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 0
  br label %37, !dbg !1011

; <label>:35:                                     ; preds = %49
  %36 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 8
  br label %52, !dbg !1012

; <label>:37:                                     ; preds = %49, %33
  %38 = phi i64 [ 0, %33 ], [ %50, %49 ]
  %39 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 0, !dbg !1013
  %40 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %39, align 8, !dbg !1013, !tbaa !419
  %41 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %40, null, !dbg !1014
  br i1 %41, label %49, label %42, !dbg !1015

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 2, !dbg !1016
  %44 = load i8, i8* %43, align 8, !dbg !1016, !tbaa !432
  %45 = icmp eq i8 %44, %0, !dbg !1017
  br i1 %45, label %46, label %49, !dbg !1018

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 1, !dbg !1019
  %48 = load i8*, i8** %47, align 8, !dbg !1019, !tbaa !429
  tail call void %40(i8* nonnull %34, %struct.ip_addr* null, i8* %48) #9, !dbg !1020
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %39, align 8, !dbg !1021, !tbaa !419
  br label %49, !dbg !1022

; <label>:49:                                     ; preds = %46, %42, %37
  %50 = add nuw nsw i64 %38, 1, !dbg !1023
  %51 = icmp eq i64 %50, 32, !dbg !1024
  br i1 %51, label %35, label %37, !dbg !1011, !llvm.loop !879

; <label>:52:                                     ; preds = %158, %35
  %53 = phi i64 [ 0, %35 ], [ %159, %158 ]
  %54 = icmp eq i64 %53, %6, !dbg !1025
  br i1 %54, label %64, label %55, !dbg !1026

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %53, i32 3, !dbg !1027
  %57 = load i8, i8* %56, align 2, !dbg !1027, !tbaa !398
  %58 = icmp eq i8 %57, 2, !dbg !1028
  br i1 %58, label %59, label %64, !dbg !1029

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %53, i32 8, !dbg !1030
  %61 = load i8, i8* %60, align 1, !dbg !1030, !tbaa !639
  %62 = load i8, i8* %36, align 1, !dbg !1031, !tbaa !639
  %63 = icmp eq i8 %61, %62, !dbg !1032
  br i1 %63, label %77, label %64, !dbg !1033

; <label>:64:                                     ; preds = %59, %55, %52
  %65 = or i64 %53, 1, !dbg !1034
  %66 = icmp eq i64 %65, %6, !dbg !1025
  br i1 %66, label %158, label %149, !dbg !1026

; <label>:67:                                     ; preds = %158
  %68 = load i8, i8* %36, align 1, !dbg !1035, !tbaa !639
  %69 = icmp ult i8 %68, 32, !dbg !1036
  br i1 %69, label %70, label %78, !dbg !1037

; <label>:70:                                     ; preds = %67
  %71 = zext i8 %68 to i64, !dbg !1038
  %72 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %71, !dbg !1038
  %73 = load %struct.udp_pcb*, %struct.udp_pcb** %72, align 8, !dbg !1038, !tbaa !513
  tail call void @udp_remove(%struct.udp_pcb* %73) #9, !dbg !1039
  %74 = load i8, i8* %36, align 1, !dbg !1040, !tbaa !639
  %75 = zext i8 %74 to i64, !dbg !1041
  %76 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %75, !dbg !1041
  store %struct.udp_pcb* null, %struct.udp_pcb** %76, align 8, !dbg !1042, !tbaa !513
  br label %77, !dbg !1043

; <label>:77:                                     ; preds = %59, %153, %70
  store i8 32, i8* %36, align 1, !dbg !1044, !tbaa !639
  br label %78, !dbg !1045

; <label>:78:                                     ; preds = %77, %67
  %79 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 3, !dbg !1045
  store i8 0, i8* %79, align 2, !dbg !1046, !tbaa !398
  br label %147, !dbg !1047

; <label>:80:                                     ; preds = %32, %28, %24, %20, %19
  %81 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 0, !dbg !1048
  %82 = tail call i64 @strlen(i8* nonnull %81) #9, !dbg !1049
  %83 = trunc i64 %82 to i16, !dbg !1050
  %84 = add i16 %83, 18, !dbg !1050
  %85 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %84, i32 640) #9, !dbg !1051
  %86 = icmp eq %struct.pbuf* %85, null, !dbg !1053
  br i1 %86, label %147, label %87, !dbg !1054

; <label>:87:                                     ; preds = %80
  %88 = call i8* @memset(i8* nonnull %4, i32 0, i64 12) #9, !dbg !1055
  %89 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 2, !dbg !1056
  %90 = load i16, i16* %89, align 4, !dbg !1056, !tbaa !792
  %91 = call zeroext i16 @lwip_htons(i16 zeroext %90) #9, !dbg !1057
  %92 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 0, !dbg !1058
  store i16 %91, i16* %92, align 2, !dbg !1059, !tbaa !1060
  %93 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 1, !dbg !1062
  store i8 1, i8* %93, align 2, !dbg !1063, !tbaa !1064
  %94 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 3, !dbg !1065
  store i16 256, i16* %94, align 2, !dbg !1066, !tbaa !1067
  %95 = call signext i8 @pbuf_take(%struct.pbuf* nonnull %85, i8* nonnull %4, i16 zeroext 12) #9, !dbg !1068
  %96 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 -1, !dbg !1070
  br label %97, !dbg !1072

; <label>:97:                                     ; preds = %113, %87
  %98 = phi i8* [ %96, %87 ], [ %103, %113 ], !dbg !1073
  %99 = phi i16 [ 12, %87 ], [ %121, %113 ], !dbg !1073
  %100 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !1075
  br label %101, !dbg !1078

; <label>:101:                                    ; preds = %105, %97
  %102 = phi i8 [ 0, %97 ], [ %106, %105 ], !dbg !1080
  %103 = phi i8* [ %100, %97 ], [ %107, %105 ], !dbg !1083
  %104 = load i8, i8* %103, align 1, !dbg !1084, !tbaa !249
  switch i8 %104, label %105 [
    i8 46, label %108
    i8 0, label %108
  ], !dbg !1085

; <label>:105:                                    ; preds = %101
  %106 = add i8 %102, 1, !dbg !1086
  %107 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1087
  br label %101, !dbg !1088, !llvm.loop !1089

; <label>:108:                                    ; preds = %101, %101
  %109 = zext i16 %99 to i32, !dbg !1092
  %110 = zext i8 %102 to i32, !dbg !1094
  %111 = add nuw nsw i32 %110, %109, !dbg !1095
  %112 = icmp ugt i32 %111, 65534, !dbg !1096
  br i1 %112, label %145, label %113, !dbg !1097

; <label>:113:                                    ; preds = %108
  %114 = ptrtoint i8* %103 to i64, !dbg !1098
  %115 = ptrtoint i8* %100 to i64, !dbg !1098
  %116 = sub i64 %114, %115, !dbg !1098
  %117 = trunc i64 %116 to i16, !dbg !1099
  call void @pbuf_put_at(%struct.pbuf* nonnull %85, i16 zeroext %99, i8 zeroext %102) #9, !dbg !1101
  %118 = add i16 %99, 1, !dbg !1102
  %119 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %85, i8* nonnull %100, i16 zeroext %117, i16 zeroext %118) #9, !dbg !1103
  %120 = trunc i32 %111 to i16, !dbg !1104
  %121 = add i16 %120, 1, !dbg !1104
  %122 = load i8, i8* %103, align 1, !dbg !1105, !tbaa !249
  %123 = icmp eq i8 %122, 0, !dbg !1106
  br i1 %123, label %124, label %97, !dbg !1107, !llvm.loop !1108

; <label>:124:                                    ; preds = %113
  %125 = trunc i32 %111 to i16, !dbg !1104
  call void @pbuf_put_at(%struct.pbuf* nonnull %85, i16 zeroext %121, i8 zeroext 0) #9, !dbg !1110
  %126 = add i16 %125, 2, !dbg !1111
  %127 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 10, !dbg !1112
  %128 = load i8, i8* %127, align 4, !dbg !1112, !tbaa !410
  switch i8 %128, label %129 [
    i8 3, label %130
    i8 1, label %130
  ], !dbg !1112

; <label>:129:                                    ; preds = %124
  br label %130

; <label>:130:                                    ; preds = %124, %124, %129
  %131 = phi i16 [ 256, %129 ], [ 7168, %124 ], [ 7168, %124 ]
  %132 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 0, !dbg !1114
  store i16 %131, i16* %132, align 2, !dbg !1114, !tbaa !1116
  %133 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 1, !dbg !1118
  store i16 256, i16* %133, align 2, !dbg !1119, !tbaa !1120
  %134 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %85, i8* nonnull %5, i16 zeroext 4, i16 zeroext %126) #9, !dbg !1121
  %135 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 8, !dbg !1122
  %136 = load i8, i8* %135, align 1, !dbg !1122, !tbaa !639
  %137 = load i8, i8* %7, align 1, !dbg !1125, !tbaa !801
  %138 = zext i8 %137 to i64, !dbg !1127
  %139 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %138, !dbg !1127
  %140 = zext i8 %136 to i64, !dbg !1129
  %141 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %140, !dbg !1129
  %142 = load %struct.udp_pcb*, %struct.udp_pcb** %141, align 8, !dbg !1129, !tbaa !513
  %143 = call signext i8 @udp_sendto(%struct.udp_pcb* %142, %struct.pbuf* nonnull %85, %struct.ip_addr* nonnull %139, i16 zeroext 53) #9, !dbg !1130
  %144 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %85) #9, !dbg !1132
  br label %147

; <label>:145:                                    ; preds = %108
  %146 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %85) #9, !dbg !1133
  br label %147, !dbg !1134

; <label>:147:                                    ; preds = %130, %80, %145, %78
  %148 = phi i8 [ 0, %78 ], [ -6, %145 ], [ %143, %130 ], [ -1, %80 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #8, !dbg !1135
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #8, !dbg !1135
  ret i8 %148, !dbg !1135

; <label>:149:                                    ; preds = %64
  %150 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %65, i32 3, !dbg !1027
  %151 = load i8, i8* %150, align 2, !dbg !1027, !tbaa !398
  %152 = icmp eq i8 %151, 2, !dbg !1028
  br i1 %152, label %153, label %158, !dbg !1029

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %65, i32 8, !dbg !1030
  %155 = load i8, i8* %154, align 1, !dbg !1030, !tbaa !639
  %156 = load i8, i8* %36, align 1, !dbg !1031, !tbaa !639
  %157 = icmp eq i8 %155, %156, !dbg !1032
  br i1 %157, label %77, label %158, !dbg !1033

; <label>:158:                                    ; preds = %153, %149, %64
  %159 = add nuw nsw i64 %53, 2, !dbg !1034
  %160 = icmp ult i64 %159, 32, !dbg !1136
  br i1 %160, label %52, label %67, !dbg !1012, !llvm.loop !942
}

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_call_found(i8 zeroext, %struct.ip_addr*) unnamed_addr #1 !dbg !848 {
  %3 = icmp eq %struct.ip_addr* %1, null, !dbg !1139
  br i1 %3, label %4, label %6, !dbg !1141

; <label>:4:                                      ; preds = %2
  %5 = zext i8 %0 to i64
  br label %19, !dbg !1141

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1142
  %8 = load i8, i8* %7, align 4, !dbg !1142, !tbaa !339
  %9 = icmp eq i8 %8, 6, !dbg !1142
  %10 = zext i8 %0 to i64, !dbg !1145
  %11 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %10, i32 10, !dbg !1145
  %12 = load i8, i8* %11, align 4, !dbg !1145, !tbaa !410
  br i1 %9, label %13, label %16, !dbg !1149

; <label>:13:                                     ; preds = %6
  switch i8 %12, label %14 [
    i8 3, label %15
    i8 1, label %15
  ], !dbg !1150

; <label>:14:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1154
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1157
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1157
  unreachable, !dbg !1157

; <label>:15:                                     ; preds = %13, %13
  store i8 1, i8* %11, align 4, !dbg !1161, !tbaa !410
  br label %19, !dbg !1162

; <label>:16:                                     ; preds = %6
  switch i8 %12, label %18 [
    i8 3, label %17
    i8 1, label %17
  ], !dbg !1163

; <label>:17:                                     ; preds = %16, %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !1164
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1167
  tail call void @ukplat_terminate(i32 3) #11, !dbg !1167
  unreachable, !dbg !1167

; <label>:18:                                     ; preds = %16
  store i8 0, i8* %11, align 4, !dbg !1171, !tbaa !410
  br label %19

; <label>:19:                                     ; preds = %4, %15, %18
  %20 = phi i64 [ %5, %4 ], [ %10, %15 ], [ %10, %18 ]
  %21 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %20, i32 9, i64 0
  br label %24, !dbg !880

; <label>:22:                                     ; preds = %36
  %23 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %20, i32 8
  br label %39, !dbg !943

; <label>:24:                                     ; preds = %36, %19
  %25 = phi i64 [ 0, %19 ], [ %37, %36 ]
  %26 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 0, !dbg !1173
  %27 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %26, align 8, !dbg !1173, !tbaa !419
  %28 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %27, null, !dbg !1174
  br i1 %28, label %36, label %29, !dbg !1175

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 2, !dbg !1176
  %31 = load i8, i8* %30, align 8, !dbg !1176, !tbaa !432
  %32 = icmp eq i8 %31, %0, !dbg !1177
  br i1 %32, label %33, label %36, !dbg !1178

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 1, !dbg !1179
  %35 = load i8*, i8** %34, align 8, !dbg !1179, !tbaa !429
  tail call void %27(i8* nonnull %21, %struct.ip_addr* %1, i8* %35) #9, !dbg !1180
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %26, align 8, !dbg !1181, !tbaa !419
  br label %36, !dbg !1182

; <label>:36:                                     ; preds = %24, %29, %33
  %37 = add nuw nsw i64 %25, 1, !dbg !1183
  %38 = icmp eq i64 %37, 32, !dbg !1184
  br i1 %38, label %22, label %24, !dbg !880, !llvm.loop !879

; <label>:39:                                     ; preds = %75, %22
  %40 = phi i64 [ 0, %22 ], [ %76, %75 ]
  %41 = icmp eq i64 %40, %20, !dbg !1185
  br i1 %41, label %51, label %42, !dbg !1186

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %40, i32 3, !dbg !1187
  %44 = load i8, i8* %43, align 2, !dbg !1187, !tbaa !398
  %45 = icmp eq i8 %44, 2, !dbg !1188
  br i1 %45, label %46, label %51, !dbg !1189

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %40, i32 8, !dbg !1190
  %48 = load i8, i8* %47, align 1, !dbg !1190, !tbaa !639
  %49 = load i8, i8* %23, align 1, !dbg !1191, !tbaa !639
  %50 = icmp eq i8 %48, %49, !dbg !1192
  br i1 %50, label %64, label %51, !dbg !1193

; <label>:51:                                     ; preds = %42, %46, %39
  %52 = or i64 %40, 1, !dbg !1194
  %53 = icmp eq i64 %52, %20, !dbg !1185
  br i1 %53, label %75, label %66, !dbg !1186

; <label>:54:                                     ; preds = %75
  %55 = load i8, i8* %23, align 1, !dbg !1195, !tbaa !639
  %56 = icmp ult i8 %55, 32, !dbg !1196
  br i1 %56, label %57, label %65, !dbg !1197

; <label>:57:                                     ; preds = %54
  %58 = zext i8 %55 to i64, !dbg !1198
  %59 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %58, !dbg !1198
  %60 = load %struct.udp_pcb*, %struct.udp_pcb** %59, align 8, !dbg !1198, !tbaa !513
  tail call void @udp_remove(%struct.udp_pcb* %60) #9, !dbg !1199
  %61 = load i8, i8* %23, align 1, !dbg !1200, !tbaa !639
  %62 = zext i8 %61 to i64, !dbg !1201
  %63 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %62, !dbg !1201
  store %struct.udp_pcb* null, %struct.udp_pcb** %63, align 8, !dbg !1202, !tbaa !513
  br label %64, !dbg !1203

; <label>:64:                                     ; preds = %46, %70, %57
  store i8 32, i8* %23, align 1, !dbg !1204, !tbaa !639
  br label %65, !dbg !1205

; <label>:65:                                     ; preds = %64, %54
  ret void, !dbg !1205

; <label>:66:                                     ; preds = %51
  %67 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %52, i32 3, !dbg !1187
  %68 = load i8, i8* %67, align 2, !dbg !1187, !tbaa !398
  %69 = icmp eq i8 %68, 2, !dbg !1188
  br i1 %69, label %70, label %75, !dbg !1189

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %52, i32 8, !dbg !1190
  %72 = load i8, i8* %71, align 1, !dbg !1190, !tbaa !639
  %73 = load i8, i8* %23, align 1, !dbg !1191, !tbaa !639
  %74 = icmp eq i8 %72, %73, !dbg !1192
  br i1 %74, label %64, label %75, !dbg !1193

; <label>:75:                                     ; preds = %70, %66, %51
  %76 = add nuw nsw i64 %40, 2, !dbg !1194
  %77 = icmp ult i64 %76, 32, !dbg !1206
  br i1 %77, label %39, label %54, !dbg !943, !llvm.loop !942
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #8

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #8

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #6 !dbg !567 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !1207
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #9, !dbg !1209
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #9, !dbg !1211
  ret i32 %2, !dbg !1212
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_take(%struct.pbuf*, i8*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @pbuf_put_at(%struct.pbuf*, i16 zeroext, i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_take_at(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @lwip_strnicmp(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #5

; Function Attrs: noredzone nounwind
define internal void @dns_recv(i8* nocapture readnone, %struct.udp_pcb* nocapture readnone, %struct.pbuf*, %struct.ip_addr* nocapture readonly, i16 zeroext) #1 !dbg !1213 {
  %6 = alloca %struct.dns_hdr, align 2
  %7 = alloca %struct.dns_answer, align 4
  %8 = alloca %struct.dns_query, align 2
  %9 = alloca %struct.ip4_addr, align 4
  %10 = alloca <4 x i32>, align 16
  %11 = bitcast %struct.dns_hdr* %6 to i8*, !dbg !1267
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %11) #8, !dbg !1267
  %12 = bitcast %struct.dns_answer* %7 to i8*, !dbg !1268
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %12) #8, !dbg !1268
  %13 = bitcast %struct.dns_query* %8 to i8*, !dbg !1269
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #8, !dbg !1269
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1270
  %15 = load i16, i16* %14, align 8, !dbg !1270, !tbaa !1272
  %16 = icmp ult i16 %15, 16, !dbg !1274
  br i1 %16, label %416, label %17, !dbg !1275

; <label>:17:                                     ; preds = %5
  %18 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %11, i16 zeroext 12, i16 zeroext 0) #9, !dbg !1276
  %19 = icmp eq i16 %18, 12, !dbg !1277
  br i1 %19, label %20, label %416, !dbg !1278

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 0, !dbg !1279
  %22 = load i16, i16* %21, align 2, !dbg !1279, !tbaa !1060
  %23 = call zeroext i16 @lwip_htons(i16 zeroext %22) #9, !dbg !1280
  %24 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 3
  %25 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 4
  %26 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 1
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 1
  %28 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 0
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 1
  %30 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 2
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 0, i64 3
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %3, i64 0, i32 0, i32 0, i32 1
  %33 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %8, i64 0, i32 1
  %34 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %8, i64 0, i32 0
  %35 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 2
  %36 = getelementptr inbounds %struct.dns_answer, %struct.dns_answer* %7, i64 0, i32 1
  %37 = getelementptr inbounds %struct.dns_answer, %struct.dns_answer* %7, i64 0, i32 0
  %38 = getelementptr inbounds %struct.dns_answer, %struct.dns_answer* %7, i64 0, i32 3
  %39 = bitcast %struct.ip4_addr* %9 to i8*
  %40 = bitcast <4 x i32>* %10 to i8*
  %41 = getelementptr inbounds %struct.ip4_addr, %struct.ip4_addr* %9, i64 0, i32 0
  %42 = getelementptr inbounds %struct.dns_answer, %struct.dns_answer* %7, i64 0, i32 2
  br label %43, !dbg !1283

; <label>:43:                                     ; preds = %20, %413
  %44 = phi i64 [ 0, %20 ], [ %414, %413 ]
  %45 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 3, !dbg !1284
  %46 = load i8, i8* %45, align 2, !dbg !1284, !tbaa !398
  %47 = icmp eq i8 %46, 2, !dbg !1285
  br i1 %47, label %48, label %413, !dbg !1286

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 2, !dbg !1287
  %50 = load i16, i16* %49, align 4, !dbg !1287, !tbaa !792
  %51 = icmp eq i16 %50, %23, !dbg !1288
  br i1 %51, label %52, label %413, !dbg !1289

; <label>:52:                                     ; preds = %48
  %53 = load i16, i16* %24, align 2, !dbg !1290, !tbaa !1067
  %54 = call zeroext i16 @lwip_htons(i16 zeroext %53) #9, !dbg !1291
  %55 = load i16, i16* %25, align 2, !dbg !1293, !tbaa !1294
  %56 = call zeroext i16 @lwip_htons(i16 zeroext %55) #9, !dbg !1295
  %57 = load i8, i8* %26, align 2, !dbg !1297, !tbaa !1064
  %58 = icmp slt i8 %57, 0, !dbg !1299
  %59 = icmp eq i16 %54, 1, !dbg !1300
  %60 = and i1 %59, %58, !dbg !1302
  br i1 %60, label %61, label %416, !dbg !1302

; <label>:61:                                     ; preds = %52
  %62 = load i8, i8* %27, align 4, !dbg !1303, !tbaa !339
  %63 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 4, !dbg !1303
  %64 = load i8, i8* %63, align 1, !dbg !1303, !tbaa !801
  %65 = zext i8 %64 to i64, !dbg !1303
  %66 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 1, !dbg !1303
  %67 = load i8, i8* %66, align 4, !dbg !1303, !tbaa !339
  %68 = icmp eq i8 %62, %67, !dbg !1303
  br i1 %68, label %69, label %416, !dbg !1306

; <label>:69:                                     ; preds = %61
  %70 = icmp eq i8 %62, 6, !dbg !1303
  %71 = load i32, i32* %28, align 4, !dbg !1303, !tbaa !249
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 0, !dbg !1303
  %73 = load i32, i32* %72, align 8, !dbg !1303, !tbaa !249
  %74 = icmp eq i32 %71, %73, !dbg !1303
  br i1 %70, label %75, label %96, !dbg !1306

; <label>:75:                                     ; preds = %69
  br i1 %74, label %76, label %416, !dbg !1303

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %29, align 4, !dbg !1303, !tbaa !249
  %78 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 1, !dbg !1303
  %79 = load i32, i32* %78, align 4, !dbg !1303, !tbaa !249
  %80 = icmp eq i32 %77, %79, !dbg !1303
  br i1 %80, label %81, label %416, !dbg !1303

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %30, align 4, !dbg !1303, !tbaa !249
  %83 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 2, !dbg !1303
  %84 = load i32, i32* %83, align 8, !dbg !1303, !tbaa !249
  %85 = icmp eq i32 %82, %84, !dbg !1303
  br i1 %85, label %86, label %416, !dbg !1303

; <label>:86:                                     ; preds = %81
  %87 = load i32, i32* %31, align 4, !dbg !1303, !tbaa !249
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 3, !dbg !1303
  %89 = load i32, i32* %88, align 4, !dbg !1303, !tbaa !249
  %90 = icmp eq i32 %87, %89, !dbg !1303
  br i1 %90, label %91, label %416, !dbg !1303

; <label>:91:                                     ; preds = %86
  %92 = load i8, i8* %32, align 4, !dbg !1303, !tbaa !249
  %93 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 1, !dbg !1303
  %94 = load i8, i8* %93, align 8, !dbg !1303, !tbaa !249
  %95 = icmp eq i8 %92, %94, !dbg !1303
  br i1 %95, label %97, label %416, !dbg !1303

; <label>:96:                                     ; preds = %69
  br i1 %74, label %97, label %416, !dbg !1306

; <label>:97:                                     ; preds = %96, %91
  %98 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 9, i64 0, !dbg !1307
  br label %99, !dbg !1332

; <label>:99:                                     ; preds = %158, %97
  %100 = phi i16 [ 12, %97 ], [ %155, %158 ], !dbg !1333
  %101 = phi i8* [ %98, %97 ], [ %159, %158 ]
  %102 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %100) #9, !dbg !1334
  %103 = icmp slt i32 %102, 0, !dbg !1336
  %104 = icmp eq i16 %100, -1, !dbg !1338
  %105 = or i1 %104, %103, !dbg !1339
  %106 = and i32 %102, 192, !dbg !1340
  %107 = icmp eq i32 %106, 192, !dbg !1341
  %108 = or i1 %105, %107, !dbg !1339
  br i1 %108, label %416, label %109, !dbg !1339

; <label>:109:                                    ; preds = %99
  %110 = add i16 %100, 1, !dbg !1342
  %111 = icmp sgt i32 %102, 0, !dbg !1343
  %112 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %110) #9, !dbg !1333
  %113 = icmp slt i32 %112, 0, !dbg !1344
  br i1 %111, label %114, label %152, !dbg !1346

; <label>:114:                                    ; preds = %109, %145
  %115 = phi i1 [ %151, %145 ], [ %113, %109 ]
  %116 = phi i32 [ %150, %145 ], [ %112, %109 ]
  %117 = phi i16 [ %148, %145 ], [ %110, %109 ]
  %118 = phi i8* [ %146, %145 ], [ %101, %109 ]
  %119 = phi i32 [ %147, %145 ], [ %102, %109 ]
  br i1 %115, label %416, label %120, !dbg !1348

; <label>:120:                                    ; preds = %114
  %121 = load i8, i8* %118, align 1, !dbg !1349, !tbaa !249
  %122 = call i8* @__locale_ctype_ptr() #9, !dbg !1349
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1349
  %124 = zext i8 %121 to i32, !dbg !1349
  %125 = zext i8 %121 to i64, !dbg !1349
  %126 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !1349
  %127 = load i8, i8* %126, align 1, !dbg !1349, !tbaa !249
  %128 = and i8 %127, 3, !dbg !1349
  %129 = icmp eq i8 %128, 1, !dbg !1349
  %130 = add nuw nsw i32 %124, 32, !dbg !1349
  %131 = select i1 %129, i32 %130, i32 %124, !dbg !1349
  %132 = call i8* @__locale_ctype_ptr() #9, !dbg !1350
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1350
  %134 = and i32 %116, 255, !dbg !1350
  %135 = zext i32 %134 to i64, !dbg !1350
  %136 = getelementptr inbounds i8, i8* %133, i64 %135, !dbg !1350
  %137 = load i8, i8* %136, align 1, !dbg !1350, !tbaa !249
  %138 = and i8 %137, 3, !dbg !1350
  %139 = icmp eq i8 %138, 1, !dbg !1350
  %140 = add nuw nsw i32 %134, 32, !dbg !1350
  %141 = select i1 %139, i32 %140, i32 %134, !dbg !1350
  %142 = icmp ne i32 %131, %141, !dbg !1351
  %143 = icmp eq i16 %117, -1, !dbg !1352
  %144 = or i1 %143, %142, !dbg !1354
  br i1 %144, label %416, label %145, !dbg !1354

; <label>:145:                                    ; preds = %120
  %146 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1355
  %147 = add nsw i32 %119, -1, !dbg !1356
  %148 = add i16 %117, 1, !dbg !1342
  %149 = icmp sgt i32 %119, 1, !dbg !1343
  %150 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %148) #9, !dbg !1333
  %151 = icmp slt i32 %150, 0, !dbg !1344
  br i1 %149, label %114, label %152, !dbg !1346

; <label>:152:                                    ; preds = %145, %109
  %153 = phi i16 [ %100, %109 ], [ %117, %145 ]
  %154 = phi i8* [ %101, %109 ], [ %146, %145 ]
  %155 = phi i16 [ %110, %109 ], [ %148, %145 ], !dbg !1342
  %156 = phi i32 [ %112, %109 ], [ %150, %145 ], !dbg !1333
  %157 = phi i1 [ %113, %109 ], [ %151, %145 ], !dbg !1344
  br i1 %157, label %416, label %158, !dbg !1357

; <label>:158:                                    ; preds = %152
  %159 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1358
  %160 = icmp eq i32 %156, 0, !dbg !1359
  br i1 %160, label %161, label %99, !dbg !1360, !llvm.loop !1361

; <label>:161:                                    ; preds = %158
  %162 = icmp eq i16 %155, -1, !dbg !1364
  %163 = add i16 %153, 2, !dbg !1366
  br i1 %162, label %416, label %164

; <label>:164:                                    ; preds = %161
  %165 = zext i16 %163 to i32, !dbg !1368
  %166 = icmp eq i16 %163, -1, !dbg !1370
  br i1 %166, label %416, label %167, !dbg !1371

; <label>:167:                                    ; preds = %164
  %168 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %2, i8* nonnull %13, i16 zeroext 4, i16 zeroext %163) #9, !dbg !1372
  %169 = icmp eq i16 %168, 4, !dbg !1374
  %170 = load i16, i16* %33, align 2, !dbg !1375
  %171 = icmp eq i16 %170, 256, !dbg !1377
  %172 = and i1 %169, %171, !dbg !1378
  br i1 %172, label %173, label %416, !dbg !1378

; <label>:173:                                    ; preds = %167
  %174 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 10, !dbg !1379
  %175 = load i8, i8* %174, align 4, !dbg !1379, !tbaa !410
  switch i8 %175, label %180 [
    i8 3, label %176
    i8 1, label %176
  ], !dbg !1379

; <label>:176:                                    ; preds = %173, %173
  %177 = load i16, i16* %34, align 2, !dbg !1380, !tbaa !1116
  %178 = icmp eq i16 %177, 7168, !dbg !1381
  br i1 %178, label %179, label %416, !dbg !1382

; <label>:179:                                    ; preds = %176
  switch i8 %175, label %416 [
    i8 3, label %183
    i8 1, label %183
  ], !dbg !1383

; <label>:180:                                    ; preds = %173
  %181 = load i16, i16* %34, align 2, !dbg !1384, !tbaa !1116
  %182 = icmp eq i16 %181, 256, !dbg !1385
  br i1 %182, label %183, label %416, !dbg !1386

; <label>:183:                                    ; preds = %179, %179, %180
  %184 = add nuw nsw i32 %165, 4, !dbg !1387
  %185 = icmp ugt i32 %184, 65535, !dbg !1389
  br i1 %185, label %416, label %186, !dbg !1390

; <label>:186:                                    ; preds = %183
  %187 = load i8, i8* %35, align 1, !dbg !1391, !tbaa !1392
  %188 = and i8 %187, 15, !dbg !1393
  %189 = icmp eq i8 %188, 0, !dbg !1393
  br i1 %189, label %190, label %194, !dbg !1394

; <label>:190:                                    ; preds = %186
  %191 = icmp eq i16 %56, 0, !dbg !1395
  br i1 %191, label %355, label %192, !dbg !1396

; <label>:192:                                    ; preds = %190
  %193 = trunc i64 %44 to i8, !dbg !1397
  br label %225, !dbg !1397

; <label>:194:                                    ; preds = %186
  %195 = trunc i64 %44 to i8, !dbg !1282
  %196 = load i8, i8* %63, align 1, !dbg !1402, !tbaa !801
  %197 = zext i8 %196 to i32, !dbg !1403
  %198 = add nuw nsw i32 %197, 1, !dbg !1404
  %199 = icmp ult i32 %198, 2, !dbg !1405
  br i1 %199, label %200, label %364, !dbg !1406

; <label>:200:                                    ; preds = %194
  %201 = zext i32 %198 to i64, !dbg !1407
  %202 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %201, i32 1, !dbg !1407
  %203 = load i8, i8* %202, align 4, !dbg !1407, !tbaa !339
  %204 = icmp eq i8 %203, 6, !dbg !1407
  %205 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %201, i32 0, i32 0, i32 0, i64 0, !dbg !1407
  %206 = load i32, i32* %205, align 8, !dbg !1407, !tbaa !249
  %207 = icmp eq i32 %206, 0, !dbg !1407
  br i1 %204, label %208, label %221, !dbg !1408

; <label>:208:                                    ; preds = %200
  br i1 %207, label %209, label %222, !dbg !1407

; <label>:209:                                    ; preds = %208
  %210 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %201, i32 0, i32 0, i32 0, i64 1, !dbg !1407
  %211 = load i32, i32* %210, align 4, !dbg !1407, !tbaa !249
  %212 = icmp eq i32 %211, 0, !dbg !1407
  br i1 %212, label %213, label %222, !dbg !1407

; <label>:213:                                    ; preds = %209
  %214 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %201, i32 0, i32 0, i32 0, i64 2, !dbg !1407
  %215 = load i32, i32* %214, align 8, !dbg !1407, !tbaa !249
  %216 = icmp eq i32 %215, 0, !dbg !1407
  br i1 %216, label %217, label %222, !dbg !1407

; <label>:217:                                    ; preds = %213
  %218 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %201, i32 0, i32 0, i32 0, i64 3, !dbg !1407
  %219 = load i32, i32* %218, align 4, !dbg !1407, !tbaa !249
  %220 = icmp eq i32 %219, 0, !dbg !1407
  br i1 %220, label %364, label %222, !dbg !1407

; <label>:221:                                    ; preds = %200
  br i1 %207, label %364, label %222, !dbg !1408

; <label>:222:                                    ; preds = %221, %217, %213, %209, %208
  %223 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 6, !dbg !1409
  store i8 3, i8* %223, align 1, !dbg !1411, !tbaa !807
  %224 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 5, !dbg !1412
  store i8 1, i8* %224, align 8, !dbg !1413, !tbaa !804
  call fastcc void @dns_check_entry(i8 zeroext %195) #10, !dbg !1414
  br label %416, !dbg !1415

; <label>:225:                                    ; preds = %192, %346
  %226 = phi i16 [ %351, %346 ], [ %56, %192 ]
  %227 = phi i32 [ %350, %346 ], [ %184, %192 ]
  %228 = and i32 %227, 65535, !dbg !1416
  %229 = load i16, i16* %14, align 8, !dbg !1417, !tbaa !1272
  %230 = zext i16 %229 to i32, !dbg !1418
  %231 = icmp ult i32 %228, %230, !dbg !1419
  br i1 %231, label %232, label %353, !dbg !1420

; <label>:232:                                    ; preds = %225
  %233 = trunc i32 %227 to i16, !dbg !1397
  br label %234, !dbg !1421

; <label>:234:                                    ; preds = %232, %254
  %235 = phi i16 [ %251, %254 ], [ %233, %232 ], !dbg !1432
  %236 = add i16 %235, 1, !dbg !1421
  %237 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %235) #9, !dbg !1436
  %238 = icmp slt i32 %237, 0, !dbg !1438
  br i1 %238, label %416, label %239, !dbg !1440

; <label>:239:                                    ; preds = %234
  %240 = zext i16 %236 to i32, !dbg !1441
  %241 = icmp eq i16 %236, 0, !dbg !1442
  br i1 %241, label %416, label %242, !dbg !1443

; <label>:242:                                    ; preds = %239
  %243 = and i32 %237, 192, !dbg !1444
  %244 = icmp eq i32 %243, 192, !dbg !1445
  br i1 %244, label %258, label %245, !dbg !1446

; <label>:245:                                    ; preds = %242
  %246 = add nsw i32 %237, %240, !dbg !1447
  %247 = load i16, i16* %14, align 8, !dbg !1449, !tbaa !1272
  %248 = zext i16 %247 to i32, !dbg !1450
  %249 = icmp slt i32 %246, %248, !dbg !1451
  br i1 %249, label %250, label %416, !dbg !1452

; <label>:250:                                    ; preds = %245
  %251 = trunc i32 %246 to i16, !dbg !1453
  %252 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %251) #9, !dbg !1454
  %253 = icmp slt i32 %252, 0, !dbg !1455
  br i1 %253, label %416, label %254, !dbg !1457

; <label>:254:                                    ; preds = %250
  %255 = icmp eq i32 %252, 0, !dbg !1458
  br i1 %255, label %256, label %234, !dbg !1459, !llvm.loop !1460

; <label>:256:                                    ; preds = %254
  %257 = trunc i32 %246 to i16, !dbg !1453
  br label %258, !dbg !1463

; <label>:258:                                    ; preds = %242, %256
  %259 = phi i16 [ %257, %256 ], [ %236, %242 ], !dbg !1432
  %260 = icmp eq i16 %259, -1, !dbg !1463
  %261 = add i16 %259, 1, !dbg !1465
  br i1 %260, label %416, label %262

; <label>:262:                                    ; preds = %258
  %263 = zext i16 %261 to i32, !dbg !1466
  %264 = icmp eq i16 %261, -1, !dbg !1468
  br i1 %264, label %416, label %265, !dbg !1469

; <label>:265:                                    ; preds = %262
  %266 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %12, i16 zeroext 10, i16 zeroext %261) #9, !dbg !1470
  %267 = icmp eq i16 %266, 10, !dbg !1472
  br i1 %267, label %268, label %416, !dbg !1473

; <label>:268:                                    ; preds = %265
  %269 = add nuw nsw i32 %263, 10, !dbg !1474
  %270 = icmp ugt i32 %269, 65535, !dbg !1476
  br i1 %270, label %416, label %271, !dbg !1477

; <label>:271:                                    ; preds = %268
  %272 = load i16, i16* %36, align 2, !dbg !1478, !tbaa !1479
  %273 = icmp eq i16 %272, 256, !dbg !1481
  br i1 %273, label %274, label %338, !dbg !1482

; <label>:274:                                    ; preds = %271
  %275 = load i16, i16* %37, align 4, !dbg !1483, !tbaa !1484
  switch i16 %275, label %338 [
    i16 256, label %276
    i16 7168, label %308
  ], !dbg !1485

; <label>:276:                                    ; preds = %274
  %277 = load i16, i16* %38, align 4, !dbg !1486, !tbaa !1487
  %278 = icmp eq i16 %277, 1024, !dbg !1488
  br i1 %278, label %279, label %338, !dbg !1489

; <label>:279:                                    ; preds = %276
  %280 = load i8, i8* %174, align 4, !dbg !1490, !tbaa !410
  switch i8 %280, label %281 [
    i8 3, label %338
    i8 1, label %338
  ], !dbg !1490

; <label>:281:                                    ; preds = %279
  %282 = trunc i32 %269 to i16, !dbg !1491
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #8, !dbg !1492
  %283 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %39, i16 zeroext 4, i16 zeroext %282) #9, !dbg !1493
  %284 = icmp eq i16 %283, 4, !dbg !1495
  br i1 %284, label %285, label %306, !dbg !1496

; <label>:285:                                    ; preds = %281
  %286 = load i32, i32* %41, align 4, !dbg !1497, !tbaa !1499
  %287 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1497
  store i32 %286, i32* %287, align 4, !dbg !1497, !tbaa !249
  %288 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1501
  store i8 0, i8* %288, align 4, !dbg !1501, !tbaa !693
  %289 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1503
  store i32 0, i32* %289, align 4, !dbg !1503, !tbaa !249
  %290 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1503
  store i32 0, i32* %290, align 4, !dbg !1503, !tbaa !249
  %291 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1503
  store i32 0, i32* %291, align 4, !dbg !1503, !tbaa !249
  %292 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1503
  store i8 0, i8* %292, align 4, !dbg !1503, !tbaa !249
  %293 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #9, !dbg !1505
  %294 = load i32, i32* %42, align 4, !dbg !1506, !tbaa !1507
  %295 = call i32 @lwip_htonl(i32 %294) #9, !dbg !1506
  store i8 3, i8* %45, align 2, !dbg !1518, !tbaa !398
  %296 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1519
  %297 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1522
  %298 = icmp ult i32 %295, 604800, !dbg !1523
  %299 = select i1 %298, i32 %295, i32 604800, !dbg !1523
  store i32 %299, i32* %297, align 8, !dbg !1524, !tbaa !918
  call fastcc void @dns_call_found(i8 zeroext %193, %struct.ip_addr* nonnull %296) #9, !dbg !1525
  %300 = load i32, i32* %297, align 8, !dbg !1526, !tbaa !918
  %301 = icmp eq i32 %300, 0, !dbg !1528
  br i1 %301, label %302, label %306, !dbg !1529

; <label>:302:                                    ; preds = %285
  %303 = load i8, i8* %45, align 2, !dbg !1530, !tbaa !398
  %304 = icmp eq i8 %303, 3, !dbg !1533
  br i1 %304, label %305, label %306, !dbg !1534

; <label>:305:                                    ; preds = %302
  store i8 0, i8* %45, align 2, !dbg !1535, !tbaa !398
  br label %306, !dbg !1537

; <label>:306:                                    ; preds = %305, %302, %285, %281
  %307 = phi i32 [ 2, %281 ], [ 1, %285 ], [ 1, %302 ], [ 1, %305 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #8, !dbg !1538
  br label %411

; <label>:308:                                    ; preds = %274
  %309 = load i16, i16* %38, align 4, !dbg !1539, !tbaa !1487
  %310 = icmp eq i16 %309, 4096, !dbg !1540
  br i1 %310, label %311, label %338, !dbg !1541

; <label>:311:                                    ; preds = %308
  %312 = load i8, i8* %174, align 4, !dbg !1542, !tbaa !410
  switch i8 %312, label %338 [
    i8 3, label %313
    i8 1, label %313
  ], !dbg !1542

; <label>:313:                                    ; preds = %311, %311
  %314 = trunc i32 %269 to i16, !dbg !1491
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #8, !dbg !1543
  %315 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %40, i16 zeroext 16, i16 zeroext %314) #9, !dbg !1544
  %316 = icmp eq i16 %315, 16, !dbg !1546
  br i1 %316, label %317, label %336, !dbg !1547

; <label>:317:                                    ; preds = %313
  %318 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1548
  %319 = load <4 x i32>, <4 x i32>* %10, align 16, !dbg !1548, !tbaa !252
  %320 = bitcast i32* %318 to <4 x i32>*, !dbg !1548
  store <4 x i32> %319, <4 x i32>* %320, align 4, !dbg !1548, !tbaa !249
  %321 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1548
  store i8 0, i8* %321, align 4, !dbg !1548, !tbaa !249
  %322 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1551
  store i8 6, i8* %322, align 4, !dbg !1551, !tbaa !693
  %323 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #9, !dbg !1553
  %324 = load i32, i32* %42, align 4, !dbg !1554, !tbaa !1507
  %325 = call i32 @lwip_htonl(i32 %324) #9, !dbg !1554
  store i8 3, i8* %45, align 2, !dbg !1558, !tbaa !398
  %326 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1559
  %327 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1560
  %328 = icmp ult i32 %325, 604800, !dbg !1561
  %329 = select i1 %328, i32 %325, i32 604800, !dbg !1561
  store i32 %329, i32* %327, align 8, !dbg !1562, !tbaa !918
  call fastcc void @dns_call_found(i8 zeroext %193, %struct.ip_addr* nonnull %326) #9, !dbg !1563
  %330 = load i32, i32* %327, align 8, !dbg !1564, !tbaa !918
  %331 = icmp eq i32 %330, 0, !dbg !1565
  br i1 %331, label %332, label %336, !dbg !1566

; <label>:332:                                    ; preds = %317
  %333 = load i8, i8* %45, align 2, !dbg !1567, !tbaa !398
  %334 = icmp eq i8 %333, 3, !dbg !1568
  br i1 %334, label %335, label %336, !dbg !1569

; <label>:335:                                    ; preds = %332
  store i8 0, i8* %45, align 2, !dbg !1570, !tbaa !398
  br label %336, !dbg !1571

; <label>:336:                                    ; preds = %335, %332, %317, %313
  %337 = phi i32 [ 2, %313 ], [ 1, %317 ], [ 1, %332 ], [ 1, %335 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #8, !dbg !1572
  br label %411

; <label>:338:                                    ; preds = %274, %276, %279, %279, %311, %308, %271
  %339 = add i16 %259, 11, !dbg !1573
  %340 = zext i16 %339 to i32, !dbg !1573
  %341 = load i16, i16* %38, align 4, !dbg !1575, !tbaa !1487
  %342 = call zeroext i16 @lwip_htons(i16 zeroext %341) #9, !dbg !1576
  %343 = zext i16 %342 to i32, !dbg !1576
  %344 = add nuw nsw i32 %343, %340, !dbg !1577
  %345 = icmp ugt i32 %344, 65535, !dbg !1578
  br i1 %345, label %416, label %346, !dbg !1579

; <label>:346:                                    ; preds = %338
  %347 = load i16, i16* %38, align 4, !dbg !1580, !tbaa !1487
  %348 = call zeroext i16 @lwip_htons(i16 zeroext %347) #9, !dbg !1581
  %349 = zext i16 %348 to i32, !dbg !1581
  %350 = add nuw nsw i32 %349, %340, !dbg !1582
  %351 = add i16 %226, -1, !dbg !1583
  %352 = icmp eq i16 %351, 0, !dbg !1395
  br i1 %352, label %353, label %225, !dbg !1396, !llvm.loop !1584

; <label>:353:                                    ; preds = %346, %225
  %354 = load i8, i8* %174, align 4, !dbg !1586, !tbaa !410
  br label %355, !dbg !1586

; <label>:355:                                    ; preds = %190, %353
  %356 = phi i8 [ %354, %353 ], [ %175, %190 ], !dbg !1586
  %357 = trunc i64 %44 to i8, !dbg !1397
  %358 = and i8 %356, -2, !dbg !1588
  %359 = icmp eq i8 %358, 2, !dbg !1588
  br i1 %359, label %360, label %364, !dbg !1588

; <label>:360:                                    ; preds = %355
  %361 = icmp eq i8 %356, 2, !dbg !1589
  %362 = zext i1 %361 to i8, !dbg !1592
  store i8 %362, i8* %174, align 4, !dbg !1594, !tbaa !410
  %363 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !1595
  store i8 1, i8* %45, align 2, !dbg !1596, !tbaa !398
  call fastcc void @dns_check_entry(i8 zeroext %357) #10, !dbg !1597
  br label %418, !dbg !1598

; <label>:364:                                    ; preds = %194, %221, %217, %355
  %365 = phi i8 [ %195, %194 ], [ %195, %221 ], [ %195, %217 ], [ %357, %355 ]
  %366 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !1599
  br label %369, !dbg !1604

; <label>:367:                                    ; preds = %381
  %368 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 8
  br label %384, !dbg !1605

; <label>:369:                                    ; preds = %381, %364
  %370 = phi i64 [ 0, %364 ], [ %382, %381 ]
  %371 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %370, i32 0, !dbg !1606
  %372 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %371, align 8, !dbg !1606, !tbaa !419
  %373 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %372, null, !dbg !1607
  br i1 %373, label %381, label %374, !dbg !1608

; <label>:374:                                    ; preds = %369
  %375 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %370, i32 2, !dbg !1609
  %376 = load i8, i8* %375, align 8, !dbg !1609, !tbaa !432
  %377 = icmp eq i8 %376, %365, !dbg !1610
  br i1 %377, label %378, label %381, !dbg !1611

; <label>:378:                                    ; preds = %374
  %379 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %370, i32 1, !dbg !1612
  %380 = load i8*, i8** %379, align 8, !dbg !1612, !tbaa !429
  call void %372(i8* nonnull %98, %struct.ip_addr* null, i8* %380) #9, !dbg !1613
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %371, align 8, !dbg !1614, !tbaa !419
  br label %381, !dbg !1615

; <label>:381:                                    ; preds = %378, %374, %369
  %382 = add nuw nsw i64 %370, 1, !dbg !1616
  %383 = icmp eq i64 %382, 32, !dbg !1617
  br i1 %383, label %367, label %369, !dbg !1604, !llvm.loop !879

; <label>:384:                                    ; preds = %428, %367
  %385 = phi i64 [ 0, %367 ], [ %429, %428 ]
  %386 = icmp eq i64 %385, %44, !dbg !1618
  br i1 %386, label %396, label %387, !dbg !1619

; <label>:387:                                    ; preds = %384
  %388 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %385, i32 3, !dbg !1620
  %389 = load i8, i8* %388, align 2, !dbg !1620, !tbaa !398
  %390 = icmp eq i8 %389, 2, !dbg !1621
  br i1 %390, label %391, label %396, !dbg !1622

; <label>:391:                                    ; preds = %387
  %392 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %385, i32 8, !dbg !1623
  %393 = load i8, i8* %392, align 1, !dbg !1623, !tbaa !639
  %394 = load i8, i8* %368, align 1, !dbg !1624, !tbaa !639
  %395 = icmp eq i8 %393, %394, !dbg !1625
  br i1 %395, label %409, label %396, !dbg !1626

; <label>:396:                                    ; preds = %391, %387, %384
  %397 = or i64 %385, 1, !dbg !1627
  %398 = icmp eq i64 %397, %44, !dbg !1618
  br i1 %398, label %428, label %419, !dbg !1619

; <label>:399:                                    ; preds = %428
  %400 = load i8, i8* %368, align 1, !dbg !1628, !tbaa !639
  %401 = icmp ult i8 %400, 32, !dbg !1629
  br i1 %401, label %402, label %410, !dbg !1630

; <label>:402:                                    ; preds = %399
  %403 = zext i8 %400 to i64, !dbg !1631
  %404 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %403, !dbg !1631
  %405 = load %struct.udp_pcb*, %struct.udp_pcb** %404, align 8, !dbg !1631, !tbaa !513
  call void @udp_remove(%struct.udp_pcb* %405) #9, !dbg !1632
  %406 = load i8, i8* %368, align 1, !dbg !1633, !tbaa !639
  %407 = zext i8 %406 to i64, !dbg !1634
  %408 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %407, !dbg !1634
  store %struct.udp_pcb* null, %struct.udp_pcb** %408, align 8, !dbg !1635, !tbaa !513
  br label %409, !dbg !1636

; <label>:409:                                    ; preds = %391, %423, %402
  store i8 32, i8* %368, align 1, !dbg !1637, !tbaa !639
  br label %410, !dbg !1638

; <label>:410:                                    ; preds = %409, %399
  store i8 0, i8* %45, align 2, !dbg !1638, !tbaa !398
  br label %418, !dbg !1639

; <label>:411:                                    ; preds = %336, %306
  %412 = phi i32 [ %337, %336 ], [ %307, %306 ]
  switch i32 %412, label %418 [
    i32 0, label %413
    i32 2, label %416
  ]

; <label>:413:                                    ; preds = %43, %48, %411
  %414 = add nuw nsw i64 %44, 1, !dbg !1640
  %415 = icmp ult i64 %414, 32, !dbg !1641
  br i1 %415, label %43, label %416, !dbg !1283, !llvm.loop !1642

; <label>:416:                                    ; preds = %179, %161, %183, %180, %176, %167, %164, %75, %76, %81, %86, %91, %96, %61, %52, %413, %411, %99, %152, %258, %338, %268, %265, %262, %114, %120, %234, %239, %245, %250, %222, %17, %5
  %417 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #9, !dbg !1644
  br label %418, !dbg !1645

; <label>:418:                                    ; preds = %411, %360, %410, %416
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #8, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %12) #8, !dbg !1646
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %11) #8, !dbg !1646
  ret void, !dbg !1646

; <label>:419:                                    ; preds = %396
  %420 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %397, i32 3, !dbg !1620
  %421 = load i8, i8* %420, align 2, !dbg !1620, !tbaa !398
  %422 = icmp eq i8 %421, 2, !dbg !1621
  br i1 %422, label %423, label %428, !dbg !1622

; <label>:423:                                    ; preds = %419
  %424 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %397, i32 8, !dbg !1623
  %425 = load i8, i8* %424, align 1, !dbg !1623, !tbaa !639
  %426 = load i8, i8* %368, align 1, !dbg !1624, !tbaa !639
  %427 = icmp eq i8 %425, %426, !dbg !1625
  br i1 %427, label %409, label %428, !dbg !1626

; <label>:428:                                    ; preds = %423, %419, %396
  %429 = add nuw nsw i64 %385, 2, !dbg !1627
  %430 = icmp ult i64 %429, 32, !dbg !1647
  br i1 %430, label %384, label %399, !dbg !1605, !llvm.loop !942
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i32 @pbuf_try_get_at(%struct.pbuf*, i16 zeroext) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #5

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone nounwind readnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { nobuiltin noredzone nounwind }
attributes #10 = { nobuiltin noredzone }
attributes #11 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!219, !220, !221}
!llvm.ident = !{!222}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "dns_mquery_v4group", scope: !2, file: !3, line: 304, type: !81, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !60, globals: !78)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/dns.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !26, !33, !40, !46, !54}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 53, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!9 = !DIEnumerator(name: "ERR_OK", value: 0)
!10 = !DIEnumerator(name: "ERR_MEM", value: -1)
!11 = !DIEnumerator(name: "ERR_BUF", value: -2)
!12 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!13 = !DIEnumerator(name: "ERR_RTE", value: -4)
!14 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!15 = !DIEnumerator(name: "ERR_VAL", value: -6)
!16 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!17 = !DIEnumerator(name: "ERR_USE", value: -8)
!18 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!19 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!20 = !DIEnumerator(name: "ERR_CONN", value: -11)
!21 = !DIEnumerator(name: "ERR_IF", value: -12)
!22 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!23 = !DIEnumerator(name: "ERR_RST", value: -14)
!24 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!25 = !DIEnumerator(name: "ERR_ARG", value: -16)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !27, line: 54, baseType: !28, size: 32, elements: !29)
!27 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!28 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!29 = !{!30, !31, !32}
!30 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!31 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!32 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !34, line: 68, baseType: !28, size: 32, elements: !35)
!34 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !{!36, !37, !38, !39}
!36 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!37 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!38 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!39 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 212, baseType: !28, size: 32, elements: !41)
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "DNS_STATE_UNUSED", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "DNS_STATE_NEW", value: 1, isUnsigned: true)
!44 = !DIEnumerator(name: "DNS_STATE_ASKING", value: 2, isUnsigned: true)
!45 = !DIEnumerator(name: "DNS_STATE_DONE", value: 3, isUnsigned: true)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 89, baseType: !28, size: 32, elements: !48)
!47 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!48 = !{!49, !50, !51, !52, !53}
!49 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!50 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!51 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!52 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !47, line: 145, baseType: !28, size: 32, elements: !55)
!55 = !{!56, !57, !58, !59}
!56 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!57 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!58 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!59 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!60 = !{!61, !62, !68, !72, !73, !74, !7, !77}
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !63, line: 129, baseType: !64)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 48, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !67, line: 79, baseType: !28)
!67 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !63, line: 127, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !65, line: 36, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !67, line: 57, baseType: !71)
!71 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!72 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !63, line: 125, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 24, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !67, line: 43, baseType: !77)
!77 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!78 = !{!0, !79, !105, !110, !132, !158, !163, !201, !215, !217}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(name: "dns_mquery_v6group", scope: !2, file: !3, line: 307, type: !81, isLocal: false, isDefinition: true)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !27, line: 76, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !27, line: 69, size: 192, elements: !84)
!84 = !{!85, !104}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !83, file: !27, line: 73, baseType: !86, size: 160)
!86 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !83, file: !27, line: 70, size: 160, elements: !87)
!87 = !{!88, !98}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !86, file: !27, line: 71, baseType: !89, size: 160)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !90, line: 67, baseType: !91)
!90 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !90, line: 59, size: 160, elements: !92)
!92 = !{!93, !97}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !91, file: !90, line: 60, baseType: !94, size: 128)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 128, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 4)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !91, file: !90, line: 62, baseType: !74, size: 8, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !86, file: !27, line: 72, baseType: !99, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !100, line: 57, baseType: !101)
!100 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !100, line: 51, size: 32, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !101, file: !100, line: 52, baseType: !62, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !83, file: !27, line: 75, baseType: !74, size: 8, offset: 160)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "dns_servers", scope: !2, file: !3, line: 301, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 384, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 2)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "dns_table", scope: !2, file: !3, line: 299, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 75776, elements: !130)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_table_entry", file: !3, line: 220, size: 2368, elements: !114)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !129}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !113, file: !3, line: 221, baseType: !62, size: 32)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ipaddr", scope: !113, file: !3, line: 222, baseType: !82, size: 192, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "txid", scope: !113, file: !3, line: 223, baseType: !68, size: 16, offset: 224)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !113, file: !3, line: 224, baseType: !74, size: 8, offset: 240)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "server_idx", scope: !113, file: !3, line: 225, baseType: !74, size: 8, offset: 248)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !113, file: !3, line: 226, baseType: !74, size: 8, offset: 256)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !113, file: !3, line: 227, baseType: !74, size: 8, offset: 264)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !113, file: !3, line: 228, baseType: !74, size: 8, offset: 272)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "pcb_idx", scope: !113, file: !3, line: 230, baseType: !74, size: 8, offset: 280)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !113, file: !3, line: 232, baseType: !125, size: 2048, offset: 288)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2048, elements: !127)
!126 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!127 = !{!128}
!128 = !DISubrange(count: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "reqaddrtype", scope: !113, file: !3, line: 234, baseType: !74, size: 8, offset: 2336)
!130 = !{!131}
!131 = !DISubrange(count: 32)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__str", scope: !134, file: !135, line: 198, type: !155, isLocal: true, isDefinition: true)
!134 = distinct !DISubprogram(name: "uk_pr_crit", scope: !135, file: !135, line: 194, type: !136, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !140)
!135 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!136 = !DISubroutineType(types: !137)
!137 = !{null, !138, null}
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!140 = !{!141, !142}
!141 = !DILocalVariable(name: "fmt", arg: 1, scope: !134, file: !135, line: 194, type: !138)
!142 = !DILocalVariable(name: "argp", scope: !134, file: !135, line: 196, type: !143)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !144, line: 32, baseType: !145)
!144 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !146)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 192, elements: !153)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !148)
!148 = !{!149, !150, !151, !152}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !147, file: !3, line: 196, baseType: !28, size: 32)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !147, file: !3, line: 196, baseType: !28, size: 32, offset: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !147, file: !3, line: 196, baseType: !61, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !147, file: !3, line: 196, baseType: !61, size: 64, offset: 128)
!153 = !{!154}
!154 = !DISubrange(count: 1)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(name: "__str", scope: !134, file: !135, line: 198, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 48, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 6)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(name: "dns_pcbs", scope: !2, file: !3, line: 294, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2048, elements: !130)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "udp_pcb", file: !168, line: 81, size: 768, elements: !169)
!168 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/udp.h", directory: "/root/.unikraft/apps/redis/build")
!169 = !{!170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !200}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !167, file: !168, line: 83, baseType: !82, size: 192)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !167, file: !168, line: 83, baseType: !82, size: 192, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !167, file: !168, line: 83, baseType: !74, size: 8, offset: 384)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !167, file: !168, line: 83, baseType: !74, size: 8, offset: 392)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !167, file: !168, line: 83, baseType: !74, size: 8, offset: 400)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !167, file: !168, line: 83, baseType: !74, size: 8, offset: 408)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !168, line: 87, baseType: !166, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !168, line: 89, baseType: !74, size: 8, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !167, file: !168, line: 91, baseType: !68, size: 16, offset: 528)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !167, file: !168, line: 91, baseType: !68, size: 16, offset: 544)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ip4", scope: !167, file: !168, line: 96, baseType: !99, size: 32, offset: 576)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ifindex", scope: !167, file: !168, line: 99, baseType: !74, size: 8, offset: 608)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "mcast_ttl", scope: !167, file: !168, line: 101, baseType: !74, size: 8, offset: 616)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !167, file: !168, line: 110, baseType: !184, size: 64, offset: 640)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "udp_recv_fn", file: !168, line: 77, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !61, !166, !188, !199, !68}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !47, line: 186, size: 192, elements: !190)
!190 = !{!191, !192, !193, !194, !195, !196, !197, !198}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !189, file: !47, line: 188, baseType: !188, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !189, file: !47, line: 191, baseType: !61, size: 64, offset: 64)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !189, file: !47, line: 200, baseType: !68, size: 16, offset: 128)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !189, file: !47, line: 203, baseType: !68, size: 16, offset: 144)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !189, file: !47, line: 208, baseType: !74, size: 8, offset: 160)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !189, file: !47, line: 211, baseType: !74, size: 8, offset: 168)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !189, file: !47, line: 218, baseType: !74, size: 8, offset: 176)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !189, file: !47, line: 221, baseType: !74, size: 8, offset: 184)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "recv_arg", scope: !167, file: !168, line: 112, baseType: !61, size: 64, offset: 704)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(name: "dns_requests", scope: !2, file: !3, line: 300, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !204, size: 6144, elements: !130)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_req_entry", file: !3, line: 243, size: 192, elements: !205)
!205 = !{!206, !212, !213, !214}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "found", scope: !204, file: !3, line: 245, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "dns_found_callback", file: !208, line: 103, baseType: !209)
!208 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/dns.h", directory: "/root/.unikraft/apps/redis/build")
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !138, !199, !61}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !204, file: !3, line: 247, baseType: !61, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "dns_table_idx", scope: !204, file: !3, line: 249, baseType: !74, size: 8, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "reqaddrtype", scope: !204, file: !3, line: 252, baseType: !74, size: 8, offset: 136)
!215 = !DIGlobalVariableExpression(var: !216, expr: !DIExpression())
!216 = distinct !DIGlobalVariable(name: "dns_seqno", scope: !2, file: !3, line: 298, type: !74, isLocal: true, isDefinition: true)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(name: "dns_last_pcb_idx", scope: !2, file: !3, line: 296, type: !74, isLocal: true, isDefinition: true)
!219 = !{i32 2, !"Dwarf Version", i32 4}
!220 = !{i32 2, !"Debug Info Version", i32 3}
!221 = !{i32 1, !"wchar_size", i32 4}
!222 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!223 = distinct !DISubprogram(name: "dns_init", scope: !3, file: !3, line: 315, type: !224, isLocal: false, isDefinition: true, scopeLine: 316, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !226)
!224 = !DISubroutineType(types: !225)
!225 = !{null}
!226 = !{}
!227 = !DILocation(line: 351, column: 1, scope: !223)
!228 = distinct !DISubprogram(name: "dns_setserver", scope: !3, file: !3, line: 361, type: !229, isLocal: false, isDefinition: true, scopeLine: 362, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !231)
!229 = !DISubroutineType(types: !230)
!230 = !{null, !74, !199}
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "numdns", arg: 1, scope: !228, file: !3, line: 361, type: !74)
!233 = !DILocalVariable(name: "dnsserver", arg: 2, scope: !228, file: !3, line: 361, type: !199)
!234 = !DILocation(line: 361, column: 20, scope: !228)
!235 = !DILocation(line: 361, column: 45, scope: !228)
!236 = !DILocation(line: 363, column: 14, scope: !237)
!237 = distinct !DILexicalBlock(scope: !228, file: !3, line: 363, column: 7)
!238 = !DILocation(line: 363, column: 7, scope: !228)
!239 = !DILocation(line: 364, column: 19, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 364, column: 9)
!241 = distinct !DILexicalBlock(scope: !237, file: !3, line: 363, column: 33)
!242 = !DILocation(line: 0, scope: !243)
!243 = distinct !DILexicalBlock(scope: !240, file: !3, line: 366, column: 12)
!244 = !DILocation(line: 0, scope: !245)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 364, column: 28)
!246 = !DILocation(line: 364, column: 9, scope: !241)
!247 = !DILocation(line: 365, column: 30, scope: !245)
!248 = !{i64 0, i64 16, !249, i64 16, i64 1, !249, i64 0, i64 4, !252, i64 20, i64 1, !249}
!249 = !{!250, !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C/C++ TBAA"}
!252 = !{!253, !253, i64 0}
!253 = !{!"int", !250, i64 0}
!254 = !DILocation(line: 366, column: 5, scope: !245)
!255 = !DILocation(line: 367, column: 29, scope: !243)
!256 = !DILocation(line: 370, column: 1, scope: !228)
!257 = distinct !DISubprogram(name: "dns_getserver", scope: !3, file: !3, line: 381, type: !258, isLocal: false, isDefinition: true, scopeLine: 382, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !260)
!258 = !DISubroutineType(types: !259)
!259 = !{!199, !74}
!260 = !{!261}
!261 = !DILocalVariable(name: "numdns", arg: 1, scope: !257, file: !3, line: 381, type: !74)
!262 = !DILocation(line: 381, column: 20, scope: !257)
!263 = !DILocation(line: 383, column: 14, scope: !264)
!264 = distinct !DILexicalBlock(scope: !257, file: !3, line: 383, column: 7)
!265 = !DILocation(line: 384, column: 13, scope: !266)
!266 = distinct !DILexicalBlock(scope: !264, file: !3, line: 383, column: 33)
!267 = !DILocation(line: 383, column: 7, scope: !257)
!268 = !DILocation(line: 388, column: 1, scope: !257)
!269 = distinct !DISubprogram(name: "dns_tmr", scope: !3, file: !3, line: 395, type: !224, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !226)
!270 = !DILocalVariable(name: "i", scope: !271, file: !3, line: 1126, type: !74)
!271 = distinct !DISubprogram(name: "dns_check_entries", scope: !3, file: !3, line: 1124, type: !224, isLocal: true, isDefinition: true, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !272)
!272 = !{!270}
!273 = !DILocation(line: 1126, column: 8, scope: !271, inlinedAt: !274)
!274 = distinct !DILocation(line: 398, column: 3, scope: !269)
!275 = !DILocation(line: 1129, column: 5, scope: !276, inlinedAt: !274)
!276 = distinct !DILexicalBlock(scope: !277, file: !3, line: 1128, column: 40)
!277 = distinct !DILexicalBlock(scope: !278, file: !3, line: 1128, column: 3)
!278 = distinct !DILexicalBlock(scope: !271, file: !3, line: 1128, column: 3)
!279 = !DILocation(line: 399, column: 1, scope: !269)
!280 = distinct !DISubprogram(name: "dns_gethostbyname", scope: !3, file: !3, line: 1526, type: !281, isLocal: false, isDefinition: true, scopeLine: 1528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !289)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !138, !288, !207, !61}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !6, line: 96, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !63, line: 126, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !65, line: 20, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !67, line: 41, baseType: !287)
!287 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!289 = !{!290, !291, !292, !293}
!290 = !DILocalVariable(name: "hostname", arg: 1, scope: !280, file: !3, line: 1526, type: !138)
!291 = !DILocalVariable(name: "addr", arg: 2, scope: !280, file: !3, line: 1526, type: !288)
!292 = !DILocalVariable(name: "found", arg: 3, scope: !280, file: !3, line: 1526, type: !207)
!293 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !280, file: !3, line: 1527, type: !61)
!294 = !DILocation(line: 1526, column: 31, scope: !280)
!295 = !DILocation(line: 1526, column: 52, scope: !280)
!296 = !DILocation(line: 1526, column: 77, scope: !280)
!297 = !DILocation(line: 1527, column: 25, scope: !280)
!298 = !DILocation(line: 1529, column: 10, scope: !280)
!299 = !DILocation(line: 1529, column: 3, scope: !280)
!300 = distinct !DISubprogram(name: "dns_gethostbyname_addrtype", scope: !3, file: !3, line: 1547, type: !301, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{!283, !138, !288, !207, !61, !74}
!303 = !{!304, !305, !306, !307, !308, !309, !314}
!304 = !DILocalVariable(name: "hostname", arg: 1, scope: !300, file: !3, line: 1547, type: !138)
!305 = !DILocalVariable(name: "addr", arg: 2, scope: !300, file: !3, line: 1547, type: !288)
!306 = !DILocalVariable(name: "found", arg: 3, scope: !300, file: !3, line: 1547, type: !207)
!307 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !300, file: !3, line: 1548, type: !61)
!308 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !300, file: !3, line: 1548, type: !74)
!309 = !DILocalVariable(name: "hostnamelen", scope: !300, file: !3, line: 1550, type: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !311, line: 40, baseType: !312)
!311 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !313, line: 129, baseType: !72)
!313 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!314 = !DILocalVariable(name: "fallback", scope: !315, file: !3, line: 1596, type: !74)
!315 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1594, column: 103)
!316 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1594, column: 7)
!317 = !DILocation(line: 1547, column: 40, scope: !300)
!318 = !DILocation(line: 1547, column: 61, scope: !300)
!319 = !DILocation(line: 1547, column: 86, scope: !300)
!320 = !DILocation(line: 1548, column: 34, scope: !300)
!321 = !DILocation(line: 1548, column: 53, scope: !300)
!322 = !DILocation(line: 1556, column: 13, scope: !323)
!323 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1556, column: 7)
!324 = !DILocation(line: 1557, column: 9, scope: !323)
!325 = !DILocation(line: 1556, column: 22, scope: !323)
!326 = !DILocation(line: 1557, column: 24, scope: !323)
!327 = !DILocation(line: 1556, column: 7, scope: !300)
!328 = !DILocation(line: 1565, column: 17, scope: !300)
!329 = !DILocation(line: 1550, column: 10, scope: !300)
!330 = !DILocation(line: 1566, column: 19, scope: !331)
!331 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1566, column: 7)
!332 = !DILocation(line: 1566, column: 7, scope: !300)
!333 = !DILocation(line: 1580, column: 7, scope: !334)
!334 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1580, column: 7)
!335 = !DILocation(line: 1580, column: 7, scope: !300)
!336 = !DILocation(line: 1582, column: 10, scope: !337)
!337 = distinct !DILexicalBlock(scope: !338, file: !3, line: 1582, column: 9)
!338 = distinct !DILexicalBlock(scope: !334, file: !3, line: 1580, column: 36)
!339 = !{!340, !250, i64 20}
!340 = !{!"ip_addr", !250, i64 0, !250, i64 20}
!341 = !DILocation(line: 1582, column: 42, scope: !337)
!342 = !DILocation(line: 1582, column: 25, scope: !337)
!343 = !DILocation(line: 1583, column: 10, scope: !337)
!344 = !DILocation(line: 1583, column: 42, scope: !337)
!345 = !DILocation(line: 1583, column: 25, scope: !337)
!346 = !DILocation(line: 1590, column: 7, scope: !347)
!347 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1590, column: 7)
!348 = !DILocation(line: 1590, column: 70, scope: !347)
!349 = !DILocation(line: 1590, column: 7, scope: !300)
!350 = !DILocation(line: 1594, column: 53, scope: !316)
!351 = !DILocation(line: 1594, column: 21, scope: !316)
!352 = !DILocation(line: 1599, column: 5, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !3, line: 1597, column: 54)
!354 = distinct !DILexicalBlock(scope: !315, file: !3, line: 1597, column: 9)
!355 = !DILocation(line: 1596, column: 10, scope: !315)
!356 = !DILocation(line: 1602, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !315, file: !3, line: 1602, column: 9)
!358 = !DILocation(line: 1602, column: 68, scope: !357)
!359 = !DILocation(line: 1621, column: 9, scope: !360)
!360 = distinct !DILexicalBlock(scope: !361, file: !3, line: 1621, column: 9)
!361 = distinct !DILexicalBlock(scope: !300, file: !3, line: 1619, column: 3)
!362 = !DILocation(line: 1621, column: 9, scope: !361)
!363 = !DILocation(line: 1388, column: 23, scope: !364, inlinedAt: !392)
!364 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1388, column: 9)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1387, column: 40)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1387, column: 3)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1387, column: 3)
!368 = distinct !DISubprogram(name: "dns_enqueue", scope: !3, file: !3, line: 1375, type: !369, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !371)
!369 = !DISubroutineType(types: !370)
!370 = !{!283, !138, !310, !207, !61, !74}
!371 = !{!372, !373, !374, !375, !376, !377, !378, !379, !380, !382, !383, !385, !386}
!372 = !DILocalVariable(name: "name", arg: 1, scope: !368, file: !3, line: 1375, type: !138)
!373 = !DILocalVariable(name: "hostnamelen", arg: 2, scope: !368, file: !3, line: 1375, type: !310)
!374 = !DILocalVariable(name: "found", arg: 3, scope: !368, file: !3, line: 1375, type: !207)
!375 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !368, file: !3, line: 1376, type: !61)
!376 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !368, file: !3, line: 1376, type: !74)
!377 = !DILocalVariable(name: "i", scope: !368, file: !3, line: 1378, type: !74)
!378 = !DILocalVariable(name: "lseq", scope: !368, file: !3, line: 1379, type: !74)
!379 = !DILocalVariable(name: "lseqi", scope: !368, file: !3, line: 1379, type: !74)
!380 = !DILocalVariable(name: "entry", scope: !368, file: !3, line: 1380, type: !381)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!382 = !DILocalVariable(name: "namelen", scope: !368, file: !3, line: 1381, type: !310)
!383 = !DILocalVariable(name: "req", scope: !368, file: !3, line: 1382, type: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!385 = !DILocalVariable(name: "r", scope: !368, file: !3, line: 1385, type: !74)
!386 = !DILocalVariable(name: "age", scope: !387, file: !3, line: 1425, type: !74)
!387 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1424, column: 41)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 1424, column: 9)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 1417, column: 40)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1417, column: 3)
!391 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1417, column: 3)
!392 = distinct !DILocation(line: 1627, column: 10, scope: !300)
!393 = !DILocation(line: 1378, column: 8, scope: !368, inlinedAt: !392)
!394 = !DILocation(line: 1380, column: 27, scope: !368, inlinedAt: !392)
!395 = !DILocation(line: 1379, column: 14, scope: !368, inlinedAt: !392)
!396 = !DILocation(line: 1379, column: 8, scope: !368, inlinedAt: !392)
!397 = !DILocation(line: 1417, column: 3, scope: !391, inlinedAt: !392)
!398 = !{!399, !250, i64 30}
!399 = !{!"dns_table_entry", !253, i64 0, !340, i64 4, !400, i64 28, !250, i64 30, !250, i64 31, !250, i64 32, !250, i64 33, !250, i64 34, !250, i64 35, !250, i64 36, !250, i64 292}
!400 = !{!"short", !250, i64 0}
!401 = !DILocation(line: 1388, column: 29, scope: !364, inlinedAt: !392)
!402 = !DILocation(line: 1388, column: 50, scope: !364, inlinedAt: !392)
!403 = !DILocation(line: 1389, column: 30, scope: !364, inlinedAt: !392)
!404 = !DILocation(line: 1389, column: 10, scope: !364, inlinedAt: !392)
!405 = !DILocation(line: 1389, column: 76, scope: !364, inlinedAt: !392)
!406 = !DILocation(line: 1388, column: 9, scope: !365, inlinedAt: !392)
!407 = !DILocation(line: 1391, column: 24, scope: !408, inlinedAt: !392)
!408 = distinct !DILexicalBlock(scope: !409, file: !3, line: 1391, column: 11)
!409 = distinct !DILexicalBlock(scope: !364, file: !3, line: 1389, column: 83)
!410 = !{!399, !250, i64 292}
!411 = !DILocation(line: 1391, column: 36, scope: !408, inlinedAt: !392)
!412 = !DILocation(line: 1391, column: 11, scope: !409, inlinedAt: !392)
!413 = !DILocation(line: 1385, column: 8, scope: !368, inlinedAt: !392)
!414 = !DILocation(line: 1400, column: 29, scope: !415, inlinedAt: !392)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1400, column: 13)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 1399, column: 46)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 1399, column: 7)
!418 = distinct !DILexicalBlock(scope: !409, file: !3, line: 1399, column: 7)
!419 = !{!420, !421, i64 0}
!420 = !{!"dns_req_entry", !421, i64 0, !421, i64 8, !250, i64 16, !250, i64 17}
!421 = !{!"any pointer", !250, i64 0}
!422 = !DILocation(line: 1400, column: 35, scope: !415, inlinedAt: !392)
!423 = !DILocation(line: 1399, column: 42, scope: !417, inlinedAt: !392)
!424 = !DILocation(line: 1400, column: 13, scope: !416, inlinedAt: !392)
!425 = !DILocation(line: 1401, column: 33, scope: !426, inlinedAt: !392)
!426 = distinct !DILexicalBlock(scope: !415, file: !3, line: 1400, column: 41)
!427 = !DILocation(line: 1402, column: 27, scope: !426, inlinedAt: !392)
!428 = !DILocation(line: 1402, column: 31, scope: !426, inlinedAt: !392)
!429 = !{!420, !421, i64 8}
!430 = !DILocation(line: 1403, column: 27, scope: !426, inlinedAt: !392)
!431 = !DILocation(line: 1403, column: 41, scope: !426, inlinedAt: !392)
!432 = !{!420, !250, i64 16}
!433 = !DILocation(line: 1404, column: 11, scope: !434, inlinedAt: !392)
!434 = distinct !DILexicalBlock(scope: !426, file: !3, line: 1404, column: 11)
!435 = !{!420, !250, i64 17}
!436 = !DILocation(line: 1406, column: 11, scope: !426, inlinedAt: !392)
!437 = !DILocation(line: 1387, column: 36, scope: !366, inlinedAt: !392)
!438 = !DILocation(line: 1387, column: 17, scope: !366, inlinedAt: !392)
!439 = !DILocation(line: 1387, column: 3, scope: !367, inlinedAt: !392)
!440 = distinct !{!440, !441, !442}
!441 = !DILocation(line: 1387, column: 3, scope: !367)
!442 = !DILocation(line: 1410, column: 3, scope: !367)
!443 = !DILocation(line: 1420, column: 16, scope: !444, inlinedAt: !392)
!444 = distinct !DILexicalBlock(scope: !389, file: !3, line: 1420, column: 9)
!445 = !DILocation(line: 1420, column: 9, scope: !389, inlinedAt: !392)
!446 = !DILocation(line: 1425, column: 44, scope: !387, inlinedAt: !392)
!447 = !{!399, !250, i64 34}
!448 = !DILocation(line: 1425, column: 35, scope: !387, inlinedAt: !392)
!449 = !DILocation(line: 1425, column: 12, scope: !387, inlinedAt: !392)
!450 = !DILocation(line: 1426, column: 15, scope: !451, inlinedAt: !392)
!451 = distinct !DILexicalBlock(scope: !387, file: !3, line: 1426, column: 11)
!452 = !DILocation(line: 1426, column: 11, scope: !387, inlinedAt: !392)
!453 = !DILocation(line: 1430, column: 5, scope: !387, inlinedAt: !392)
!454 = !DILocation(line: 0, scope: !368, inlinedAt: !392)
!455 = !DILocation(line: 1417, column: 35, scope: !390, inlinedAt: !392)
!456 = !DILocation(line: 1418, column: 14, scope: !389, inlinedAt: !392)
!457 = !DILocation(line: 1434, column: 9, scope: !458, inlinedAt: !392)
!458 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1434, column: 7)
!459 = !DILocation(line: 1434, column: 7, scope: !368, inlinedAt: !392)
!460 = !DILocation(line: 1435, column: 16, scope: !461, inlinedAt: !392)
!461 = distinct !DILexicalBlock(scope: !462, file: !3, line: 1435, column: 9)
!462 = distinct !DILexicalBlock(scope: !458, file: !3, line: 1434, column: 28)
!463 = !DILocation(line: 1435, column: 35, scope: !461, inlinedAt: !392)
!464 = !DILocation(line: 1435, column: 39, scope: !461, inlinedAt: !392)
!465 = !DILocation(line: 1435, column: 56, scope: !461, inlinedAt: !392)
!466 = !DILocation(line: 1435, column: 62, scope: !461, inlinedAt: !392)
!467 = !DILocation(line: 1435, column: 9, scope: !462, inlinedAt: !392)
!468 = !DILocation(line: 1444, column: 3, scope: !462, inlinedAt: !392)
!469 = !DILocation(line: 1449, column: 8, scope: !470, inlinedAt: !392)
!470 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1449, column: 3)
!471 = !DILocation(line: 0, scope: !389, inlinedAt: !392)
!472 = !DILocation(line: 0, scope: !391, inlinedAt: !392)
!473 = !DILocation(line: 1382, column: 25, scope: !368, inlinedAt: !392)
!474 = !DILocation(line: 1449, column: 3, scope: !470, inlinedAt: !392)
!475 = !DILocation(line: 1450, column: 25, scope: !476, inlinedAt: !392)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 1450, column: 9)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 1449, column: 42)
!478 = distinct !DILexicalBlock(scope: !470, file: !3, line: 1449, column: 3)
!479 = !DILocation(line: 1450, column: 31, scope: !476, inlinedAt: !392)
!480 = !DILocation(line: 1449, column: 38, scope: !478, inlinedAt: !392)
!481 = !DILocation(line: 1450, column: 9, scope: !477, inlinedAt: !392)
!482 = !DILocation(line: 1460, column: 8, scope: !368, inlinedAt: !392)
!483 = !DILocation(line: 1460, column: 22, scope: !368, inlinedAt: !392)
!484 = !DILocation(line: 1470, column: 10, scope: !368, inlinedAt: !392)
!485 = !DILocation(line: 1470, column: 16, scope: !368, inlinedAt: !392)
!486 = !DILocation(line: 1471, column: 10, scope: !368, inlinedAt: !392)
!487 = !DILocation(line: 1471, column: 16, scope: !368, inlinedAt: !392)
!488 = !DILocation(line: 1472, column: 3, scope: !489, inlinedAt: !392)
!489 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1472, column: 3)
!490 = !DILocation(line: 1473, column: 3, scope: !491, inlinedAt: !392)
!491 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1473, column: 3)
!492 = !DILocation(line: 1474, column: 14, scope: !368, inlinedAt: !392)
!493 = !DILocation(line: 1475, column: 8, scope: !368, inlinedAt: !392)
!494 = !DILocation(line: 1475, column: 14, scope: !368, inlinedAt: !392)
!495 = !DILocation(line: 1476, column: 13, scope: !368, inlinedAt: !392)
!496 = !DILocation(line: 1381, column: 10, scope: !368, inlinedAt: !392)
!497 = !DILocation(line: 1477, column: 3, scope: !368, inlinedAt: !392)
!498 = !DILocation(line: 1478, column: 3, scope: !368, inlinedAt: !392)
!499 = !DILocation(line: 1478, column: 24, scope: !368, inlinedAt: !392)
!500 = !DILocalVariable(name: "i", scope: !501, file: !3, line: 902, type: !74)
!501 = distinct !DISubprogram(name: "dns_alloc_pcb", scope: !3, file: !3, line: 900, type: !502, isLocal: true, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !504)
!502 = !DISubroutineType(types: !503)
!503 = !{!74}
!504 = !{!500, !505}
!505 = !DILocalVariable(name: "idx", scope: !501, file: !3, line: 903, type: !74)
!506 = !DILocation(line: 902, column: 8, scope: !501, inlinedAt: !507)
!507 = distinct !DILocation(line: 1481, column: 20, scope: !368, inlinedAt: !392)
!508 = !DILocation(line: 906, column: 9, scope: !509, inlinedAt: !507)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 906, column: 9)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 905, column: 46)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 905, column: 3)
!512 = distinct !DILexicalBlock(scope: !501, file: !3, line: 905, column: 3)
!513 = !{!421, !421, i64 0}
!514 = !DILocation(line: 906, column: 21, scope: !509, inlinedAt: !507)
!515 = !DILocation(line: 906, column: 9, scope: !510, inlinedAt: !507)
!516 = !DILocation(line: 871, column: 9, scope: !517, inlinedAt: !525)
!517 = distinct !DISubprogram(name: "dns_alloc_random_port", scope: !3, file: !3, line: 866, type: !518, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !520)
!518 = !DISubroutineType(types: !519)
!519 = !{!166}
!520 = !{!521, !522, !523}
!521 = !DILocalVariable(name: "err", scope: !517, file: !3, line: 868, type: !283)
!522 = !DILocalVariable(name: "pcb", scope: !517, file: !3, line: 869, type: !166)
!523 = !DILocalVariable(name: "port", scope: !524, file: !3, line: 877, type: !68)
!524 = distinct !DILexicalBlock(scope: !517, file: !3, line: 876, column: 6)
!525 = distinct !DILocation(line: 911, column: 19, scope: !526, inlinedAt: !507)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 910, column: 33)
!527 = distinct !DILexicalBlock(scope: !501, file: !3, line: 910, column: 7)
!528 = !DILocation(line: 869, column: 19, scope: !517, inlinedAt: !525)
!529 = !DILocation(line: 872, column: 11, scope: !530, inlinedAt: !525)
!530 = distinct !DILexicalBlock(scope: !517, file: !3, line: 872, column: 7)
!531 = !DILocation(line: 872, column: 7, scope: !517, inlinedAt: !525)
!532 = !DILocation(line: 65, column: 2, scope: !533, inlinedAt: !550)
!533 = distinct !DISubprogram(name: "isolated_rand", scope: !534, file: !534, line: 63, type: !535, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !539)
!534 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!535 = !DISubroutineType(types: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !538, line: 88, baseType: !28)
!538 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!539 = !{!540, !541, !547}
!540 = !DILocalVariable(name: "randn", scope: !533, file: !534, line: 65, type: !537)
!541 = !DILocalVariable(name: "tid", scope: !542, file: !534, line: 66, type: !64)
!542 = distinct !DILexicalBlock(scope: !543, file: !534, line: 66, column: 2)
!543 = distinct !DILexicalBlock(scope: !544, file: !534, line: 66, column: 2)
!544 = distinct !DILexicalBlock(scope: !545, file: !534, line: 66, column: 2)
!545 = distinct !DILexicalBlock(scope: !546, file: !534, line: 66, column: 2)
!546 = distinct !DILexicalBlock(scope: !533, file: !534, line: 66, column: 2)
!547 = !DILocalVariable(name: "_ret", scope: !542, file: !534, line: 66, type: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 60, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 105, baseType: !72)
!550 = distinct !DILocation(line: 877, column: 25, scope: !524, inlinedAt: !525)
!551 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !558)
!552 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !553, file: !553, line: 116, type: !554, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !556)
!553 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!554 = !DISubroutineType(types: !555)
!555 = !{!72}
!556 = !{!557}
!557 = !DILocalVariable(name: "sp", scope: !552, file: !553, line: 118, type: !72)
!558 = distinct !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !550)
!559 = !{i32 567325}
!560 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !558)
!561 = !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !550)
!562 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !563)
!563 = distinct !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !550)
!564 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !563)
!565 = !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !550)
!566 = !DILocation(line: 65, column: 11, scope: !567, inlinedAt: !572)
!567 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !568, file: !568, line: 60, type: !535, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !569)
!568 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!569 = !{!570, !571}
!570 = !DILocalVariable(name: "iflags", scope: !567, file: !568, line: 62, type: !72)
!571 = !DILocalVariable(name: "ret", scope: !567, file: !568, line: 63, type: !537)
!572 = distinct !DILocation(line: 66, column: 2, scope: !573, inlinedAt: !550)
!573 = distinct !DILexicalBlock(scope: !545, file: !534, line: 66, column: 2)
!574 = !DILocation(line: 62, column: 16, scope: !567, inlinedAt: !572)
!575 = !DILocation(line: 66, column: 8, scope: !567, inlinedAt: !572)
!576 = !DILocation(line: 63, column: 8, scope: !567, inlinedAt: !572)
!577 = !DILocation(line: 67, column: 2, scope: !567, inlinedAt: !572)
!578 = !DILocation(line: 65, column: 8, scope: !533, inlinedAt: !550)
!579 = !DILocation(line: 66, column: 2, scope: !573, inlinedAt: !550)
!580 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !581)
!581 = distinct !DILocation(line: 49, column: 21, scope: !582, inlinedAt: !588)
!582 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !583, file: !583, line: 47, type: !584, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !586)
!583 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!584 = !DISubroutineType(types: !585)
!585 = !{!7}
!586 = !{!587}
!587 = !DILocalVariable(name: "sp", scope: !582, file: !583, line: 49, type: !72)
!588 = distinct !DILocation(line: 66, column: 2, scope: !542, inlinedAt: !550)
!589 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !581)
!590 = !DILocation(line: 49, column: 16, scope: !582, inlinedAt: !588)
!591 = !DILocation(line: 50, column: 19, scope: !582, inlinedAt: !588)
!592 = !DILocation(line: 50, column: 11, scope: !582, inlinedAt: !588)
!593 = !DILocation(line: 50, column: 9, scope: !582, inlinedAt: !588)
!594 = !DILocation(line: 66, column: 2, scope: !542, inlinedAt: !550)
!595 = !{i32 -2146788957, i32 -2146788944, i32 -2146788919, i32 -2146788895, i32 -2146788870, i32 -2146788795, i32 -2146788770, i32 -2146788626, i32 -2146785533, i32 -2146785444, i32 -2146785323, i32 -2146785228, i32 -2146785127, i32 -2146785100, i32 -2146785017, i32 -2146784928, i32 -2146784807, i32 -2146784707, i32 -2146784601, i32 -2146784493, i32 -2146788343, i32 -2146788290, i32 -2146788259, i32 -2146788228, i32 -2146788207, i32 -2146788185, i32 -2146788136, i32 -2146788115, i32 -2146784410, i32 -2146784321, i32 -2146784200, i32 -2146784101, i32 -2146783995, i32 -2146783893, i32 -2146783860, i32 -2146783787, i32 -2146783719, i32 -2146787813, i32 -2146787754, i32 -2146787701, i32 -2146787670, i32 -2146787639, i32 -2146787618, i32 -2146787596, i32 -2146787547, i32 -2146787526, i32 -2146783668, i32 -2146783579, i32 -2146783458, i32 -2146783359, i32 -2146783253, i32 -2146783151, i32 -2146783118, i32 -2146783035, i32 -2146782946, i32 -2146782825, i32 -2146782725, i32 -2146782699, i32 -2146782596, i32 -2146782570, i32 -2146787268, i32 -2146787201, i32 -2146787176, i32 -2146787112, i32 -2146787030, i32 -2146787007, i32 -2146786982, i32 -2146786957}
!596 = !DILocation(line: 66, column: 2, scope: !597, inlinedAt: !550)
!597 = distinct !DILexicalBlock(scope: !598, file: !534, line: 66, column: 2)
!598 = distinct !DILexicalBlock(scope: !542, file: !534, line: 66, column: 2)
!599 = !{i32 -2146786010, i32 -2146785993}
!600 = !DILocation(line: 67, column: 9, scope: !533, inlinedAt: !550)
!601 = !DILocation(line: 68, column: 1, scope: !533, inlinedAt: !550)
!602 = !DILocation(line: 878, column: 9, scope: !603, inlinedAt: !525)
!603 = distinct !DILexicalBlock(scope: !524, file: !3, line: 878, column: 9)
!604 = !DILocation(line: 878, column: 9, scope: !524, inlinedAt: !525)
!605 = !DILocation(line: 877, column: 18, scope: !524, inlinedAt: !525)
!606 = !DILocation(line: 877, column: 11, scope: !524, inlinedAt: !525)
!607 = !DILocation(line: 879, column: 13, scope: !608, inlinedAt: !525)
!608 = distinct !DILexicalBlock(scope: !603, file: !3, line: 878, column: 33)
!609 = !DILocation(line: 868, column: 9, scope: !517, inlinedAt: !525)
!610 = !DILocation(line: 880, column: 5, scope: !608, inlinedAt: !525)
!611 = !DILocation(line: 0, scope: !612, inlinedAt: !525)
!612 = distinct !DILexicalBlock(scope: !603, file: !3, line: 880, column: 12)
!613 = !DILocation(line: 884, column: 3, scope: !524, inlinedAt: !525)
!614 = !DILocation(line: 886, column: 5, scope: !615, inlinedAt: !525)
!615 = distinct !DILexicalBlock(scope: !616, file: !3, line: 885, column: 22)
!616 = distinct !DILexicalBlock(scope: !517, file: !3, line: 885, column: 7)
!617 = !DILocation(line: 887, column: 5, scope: !615, inlinedAt: !525)
!618 = !DILocation(line: 911, column: 17, scope: !526, inlinedAt: !507)
!619 = !DILocation(line: 912, column: 9, scope: !526, inlinedAt: !507)
!620 = !DILocation(line: 920, column: 28, scope: !621, inlinedAt: !507)
!621 = distinct !DILexicalBlock(scope: !501, file: !3, line: 920, column: 3)
!622 = !DILocation(line: 903, column: 8, scope: !501, inlinedAt: !507)
!623 = !DILocation(line: 920, column: 3, scope: !621, inlinedAt: !507)
!624 = !DILocation(line: 0, scope: !625, inlinedAt: !507)
!625 = distinct !DILexicalBlock(scope: !621, file: !3, line: 920, column: 3)
!626 = !DILocation(line: 921, column: 13, scope: !627, inlinedAt: !507)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 921, column: 9)
!628 = distinct !DILexicalBlock(scope: !625, file: !3, line: 920, column: 89)
!629 = !DILocation(line: 921, column: 9, scope: !628, inlinedAt: !507)
!630 = !DILocation(line: 924, column: 9, scope: !631, inlinedAt: !507)
!631 = distinct !DILexicalBlock(scope: !628, file: !3, line: 924, column: 9)
!632 = !DILocation(line: 924, column: 23, scope: !631, inlinedAt: !507)
!633 = !DILocation(line: 920, column: 78, scope: !625, inlinedAt: !507)
!634 = !DILocation(line: 924, column: 9, scope: !628, inlinedAt: !507)
!635 = !DILocation(line: 889, column: 3, scope: !517, inlinedAt: !525)
!636 = !DILocation(line: 1482, column: 7, scope: !368, inlinedAt: !392)
!637 = !DILocation(line: 1481, column: 10, scope: !368, inlinedAt: !392)
!638 = !DILocation(line: 1481, column: 18, scope: !368, inlinedAt: !392)
!639 = !{!399, !250, i64 35}
!640 = !DILocation(line: 1485, column: 18, scope: !641, inlinedAt: !392)
!641 = distinct !DILexicalBlock(scope: !642, file: !3, line: 1482, column: 47)
!642 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1482, column: 7)
!643 = !DILocation(line: 1486, column: 16, scope: !641, inlinedAt: !392)
!644 = !DILocation(line: 1487, column: 5, scope: !641, inlinedAt: !392)
!645 = !DILocation(line: 1496, column: 12, scope: !368, inlinedAt: !392)
!646 = !DILocation(line: 1499, column: 3, scope: !368, inlinedAt: !392)
!647 = !DILocation(line: 1502, column: 3, scope: !368, inlinedAt: !392)
!648 = !DILocation(line: 0, scope: !649)
!649 = distinct !DILexicalBlock(scope: !323, file: !3, line: 1557, column: 38)
!650 = !DILocation(line: 1629, column: 1, scope: !300)
!651 = !DILocation(line: 920, column: 53, scope: !625, inlinedAt: !507)
!652 = distinct !{!652, !653, !654}
!653 = !DILocation(line: 920, column: 3, scope: !621)
!654 = !DILocation(line: 928, column: 3, scope: !621)
!655 = !DILocation(line: 1449, column: 17, scope: !478, inlinedAt: !392)
!656 = distinct !{!656, !657, !658}
!657 = !DILocation(line: 1449, column: 3, scope: !470)
!658 = !DILocation(line: 1454, column: 3, scope: !470)
!659 = !DILocation(line: 1417, column: 17, scope: !390, inlinedAt: !392)
!660 = distinct !{!660, !661, !662}
!661 = !DILocation(line: 1417, column: 3, scope: !391)
!662 = !DILocation(line: 1431, column: 3, scope: !391)
!663 = !DILocation(line: 1399, column: 21, scope: !417, inlinedAt: !392)
!664 = !DILocation(line: 1399, column: 7, scope: !418, inlinedAt: !392)
!665 = distinct !{!665, !666, !667}
!666 = !DILocation(line: 1399, column: 7, scope: !418)
!667 = !DILocation(line: 1408, column: 7, scope: !418)
!668 = distinct !DISubprogram(name: "dns_lookup", scope: !3, file: !3, line: 602, type: !669, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !671)
!669 = !DISubroutineType(types: !670)
!670 = !{!283, !138, !288, !74}
!671 = !{!672, !673, !674, !675}
!672 = !DILocalVariable(name: "name", arg: 1, scope: !668, file: !3, line: 602, type: !138)
!673 = !DILocalVariable(name: "addr", arg: 2, scope: !668, file: !3, line: 602, type: !288)
!674 = !DILocalVariable(name: "dns_addrtype", arg: 3, scope: !668, file: !3, line: 602, type: !74)
!675 = !DILocalVariable(name: "i", scope: !668, file: !3, line: 604, type: !74)
!676 = !DILocation(line: 602, column: 24, scope: !668)
!677 = !DILocation(line: 602, column: 41, scope: !668)
!678 = !DILocation(line: 602, column: 46, scope: !668)
!679 = !DILocation(line: 604, column: 8, scope: !668)
!680 = !DILocation(line: 617, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !668, file: !3, line: 617, column: 3)
!682 = !DILocation(line: 618, column: 23, scope: !683)
!683 = distinct !DILexicalBlock(scope: !684, file: !3, line: 618, column: 9)
!684 = distinct !DILexicalBlock(scope: !685, file: !3, line: 617, column: 40)
!685 = distinct !DILexicalBlock(scope: !681, file: !3, line: 617, column: 3)
!686 = !DILocation(line: 618, column: 29, scope: !683)
!687 = !DILocation(line: 618, column: 48, scope: !683)
!688 = !DILocation(line: 619, column: 30, scope: !683)
!689 = !DILocation(line: 619, column: 10, scope: !683)
!690 = !DILocation(line: 619, column: 76, scope: !683)
!691 = !DILocation(line: 619, column: 82, scope: !683)
!692 = !DILocation(line: 620, column: 9, scope: !683)
!693 = !{!399, !250, i64 24}
!694 = !DILocation(line: 618, column: 9, scope: !684)
!695 = !DILocation(line: 624, column: 11, scope: !696)
!696 = distinct !DILexicalBlock(scope: !697, file: !3, line: 624, column: 11)
!697 = distinct !DILexicalBlock(scope: !683, file: !3, line: 620, column: 72)
!698 = !DILocation(line: 624, column: 11, scope: !697)
!699 = !DILocation(line: 625, column: 9, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 625, column: 9)
!701 = distinct !DILexicalBlock(scope: !702, file: !3, line: 625, column: 9)
!702 = distinct !DILexicalBlock(scope: !696, file: !3, line: 624, column: 17)
!703 = !DILocation(line: 625, column: 9, scope: !704)
!704 = distinct !DILexicalBlock(scope: !701, file: !3, line: 625, column: 9)
!705 = !DILocation(line: 625, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 625, column: 9)
!707 = distinct !DILexicalBlock(scope: !704, file: !3, line: 625, column: 9)
!708 = !DILocation(line: 625, column: 9, scope: !701)
!709 = !DILocation(line: 625, column: 9, scope: !707)
!710 = !DILocation(line: 625, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 625, column: 9)
!712 = distinct !DILexicalBlock(scope: !704, file: !3, line: 625, column: 9)
!713 = !DILocation(line: 617, column: 35, scope: !685)
!714 = !DILocation(line: 617, column: 17, scope: !685)
!715 = distinct !{!715, !680, !716}
!716 = !DILocation(line: 629, column: 3, scope: !681)
!717 = !DILocation(line: 0, scope: !668)
!718 = !DILocation(line: 632, column: 1, scope: !668)
!719 = distinct !DISubprogram(name: "dns_check_entry", scope: !3, file: !3, line: 1047, type: !720, isLocal: true, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !722)
!720 = !DISubroutineType(types: !721)
!721 = !{null, !74}
!722 = !{!723, !724, !725}
!723 = !DILocalVariable(name: "i", arg: 1, scope: !719, file: !3, line: 1047, type: !74)
!724 = !DILocalVariable(name: "err", scope: !719, file: !3, line: 1049, type: !283)
!725 = !DILocalVariable(name: "entry", scope: !719, file: !3, line: 1050, type: !381)
!726 = !DILocation(line: 1047, column: 22, scope: !719)
!727 = !DILocation(line: 1050, column: 36, scope: !719)
!728 = !DILocation(line: 1052, column: 3, scope: !729)
!729 = distinct !DILexicalBlock(scope: !730, file: !3, line: 1052, column: 3)
!730 = distinct !DILexicalBlock(scope: !719, file: !3, line: 1052, column: 3)
!731 = !DILocation(line: 1052, column: 3, scope: !730)
!732 = !DILocation(line: 1052, column: 3, scope: !733)
!733 = distinct !DILexicalBlock(scope: !734, file: !3, line: 1052, column: 3)
!734 = distinct !DILexicalBlock(scope: !729, file: !3, line: 1052, column: 3)
!735 = !DILocation(line: 1052, column: 3, scope: !736)
!736 = distinct !DILexicalBlock(scope: !737, file: !3, line: 1052, column: 3)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 1052, column: 3)
!738 = distinct !DILexicalBlock(scope: !733, file: !3, line: 1052, column: 3)
!739 = !DILocation(line: 1054, column: 18, scope: !719)
!740 = !DILocation(line: 1054, column: 3, scope: !719)
!741 = !DILocation(line: 1003, column: 3, scope: !742, inlinedAt: !748)
!742 = distinct !DISubprogram(name: "dns_create_txid", scope: !3, file: !3, line: 1000, type: !743, isLocal: true, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !745)
!743 = !DISubroutineType(types: !744)
!744 = !{!68}
!745 = !{!746, !747}
!746 = !DILocalVariable(name: "txid", scope: !742, file: !3, line: 1002, type: !68)
!747 = !DILocalVariable(name: "i", scope: !742, file: !3, line: 1003, type: !74)
!748 = distinct !DILocation(line: 1057, column: 21, scope: !749)
!749 = distinct !DILexicalBlock(scope: !719, file: !3, line: 1054, column: 25)
!750 = !DILocation(line: 65, column: 2, scope: !533, inlinedAt: !751)
!751 = distinct !DILocation(line: 1006, column: 17, scope: !742, inlinedAt: !748)
!752 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !753)
!753 = distinct !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !751)
!754 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !753)
!755 = !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !751)
!756 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !757)
!757 = distinct !DILocation(line: 66, column: 2, scope: !545, inlinedAt: !751)
!758 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !757)
!759 = !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !751)
!760 = !DILocation(line: 65, column: 11, scope: !567, inlinedAt: !761)
!761 = distinct !DILocation(line: 66, column: 2, scope: !573, inlinedAt: !751)
!762 = !DILocation(line: 62, column: 16, scope: !567, inlinedAt: !761)
!763 = !DILocation(line: 66, column: 8, scope: !567, inlinedAt: !761)
!764 = !DILocation(line: 63, column: 8, scope: !567, inlinedAt: !761)
!765 = !DILocation(line: 67, column: 2, scope: !567, inlinedAt: !761)
!766 = !DILocation(line: 65, column: 8, scope: !533, inlinedAt: !751)
!767 = !DILocation(line: 66, column: 2, scope: !573, inlinedAt: !751)
!768 = !DILocation(line: 120, column: 2, scope: !552, inlinedAt: !769)
!769 = distinct !DILocation(line: 49, column: 21, scope: !582, inlinedAt: !770)
!770 = distinct !DILocation(line: 66, column: 2, scope: !542, inlinedAt: !751)
!771 = !DILocation(line: 118, column: 16, scope: !552, inlinedAt: !769)
!772 = !DILocation(line: 49, column: 16, scope: !582, inlinedAt: !770)
!773 = !DILocation(line: 50, column: 19, scope: !582, inlinedAt: !770)
!774 = !DILocation(line: 50, column: 11, scope: !582, inlinedAt: !770)
!775 = !DILocation(line: 50, column: 9, scope: !582, inlinedAt: !770)
!776 = !DILocation(line: 66, column: 2, scope: !542, inlinedAt: !751)
!777 = !DILocation(line: 66, column: 2, scope: !597, inlinedAt: !751)
!778 = !DILocation(line: 67, column: 9, scope: !533, inlinedAt: !751)
!779 = !DILocation(line: 68, column: 1, scope: !533, inlinedAt: !751)
!780 = !DILocation(line: 1006, column: 10, scope: !742, inlinedAt: !748)
!781 = !DILocation(line: 1002, column: 9, scope: !742, inlinedAt: !748)
!782 = !DILocation(line: 1003, column: 8, scope: !742, inlinedAt: !748)
!783 = !DILocation(line: 1009, column: 3, scope: !784, inlinedAt: !748)
!784 = distinct !DILexicalBlock(scope: !742, file: !3, line: 1009, column: 3)
!785 = !DILocation(line: 1010, column: 23, scope: !786, inlinedAt: !748)
!786 = distinct !DILexicalBlock(scope: !787, file: !3, line: 1010, column: 9)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 1009, column: 40)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 1009, column: 3)
!789 = !DILocation(line: 1010, column: 29, scope: !786, inlinedAt: !748)
!790 = !DILocation(line: 1010, column: 50, scope: !786, inlinedAt: !748)
!791 = !DILocation(line: 1011, column: 23, scope: !786, inlinedAt: !748)
!792 = !{!399, !400, i64 28}
!793 = !DILocation(line: 1011, column: 28, scope: !786, inlinedAt: !748)
!794 = !DILocation(line: 1010, column: 9, scope: !787, inlinedAt: !748)
!795 = !DILocation(line: 1009, column: 36, scope: !788, inlinedAt: !748)
!796 = !DILocation(line: 1057, column: 14, scope: !749)
!797 = !DILocation(line: 1057, column: 19, scope: !749)
!798 = !DILocation(line: 1058, column: 20, scope: !749)
!799 = !DILocation(line: 1059, column: 14, scope: !749)
!800 = !DILocation(line: 1059, column: 25, scope: !749)
!801 = !{!399, !250, i64 31}
!802 = !DILocation(line: 1060, column: 14, scope: !749)
!803 = !DILocation(line: 1060, column: 18, scope: !749)
!804 = !{!399, !250, i64 32}
!805 = !DILocation(line: 1061, column: 14, scope: !749)
!806 = !DILocation(line: 1061, column: 22, scope: !749)
!807 = !{!399, !250, i64 33}
!808 = !DILocation(line: 1064, column: 13, scope: !749)
!809 = !DILocation(line: 1049, column: 9, scope: !719)
!810 = !DILocation(line: 1069, column: 7, scope: !749)
!811 = !DILocation(line: 1071, column: 20, scope: !812)
!812 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1071, column: 11)
!813 = !DILocation(line: 1071, column: 11, scope: !812)
!814 = !DILocation(line: 1071, column: 24, scope: !812)
!815 = !DILocation(line: 1071, column: 11, scope: !749)
!816 = !DILocation(line: 1072, column: 22, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !3, line: 1072, column: 13)
!818 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1071, column: 30)
!819 = !DILocation(line: 1072, column: 13, scope: !817)
!820 = !DILocation(line: 1072, column: 30, scope: !817)
!821 = !DILocation(line: 1072, column: 13, scope: !818)
!822 = !DILocalVariable(name: "ret", scope: !823, file: !3, line: 1026, type: !74)
!823 = distinct !DISubprogram(name: "dns_backupserver_available", scope: !3, file: !3, line: 1024, type: !824, isLocal: true, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !826)
!824 = !DISubroutineType(types: !825)
!825 = !{!74, !381}
!826 = !{!827, !822}
!827 = !DILocalVariable(name: "pentry", arg: 1, scope: !823, file: !3, line: 1024, type: !381)
!828 = !DILocation(line: 1026, column: 8, scope: !823, inlinedAt: !829)
!829 = distinct !DILocation(line: 1073, column: 15, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !3, line: 1073, column: 15)
!831 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1072, column: 50)
!832 = !DILocation(line: 1029, column: 18, scope: !833, inlinedAt: !829)
!833 = distinct !DILexicalBlock(scope: !834, file: !3, line: 1029, column: 9)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1028, column: 15)
!835 = distinct !DILexicalBlock(scope: !823, file: !3, line: 1028, column: 7)
!836 = !DILocation(line: 1029, column: 10, scope: !833, inlinedAt: !829)
!837 = !DILocation(line: 1029, column: 29, scope: !833, inlinedAt: !829)
!838 = !DILocation(line: 1029, column: 33, scope: !833, inlinedAt: !829)
!839 = !DILocation(line: 1029, column: 52, scope: !833, inlinedAt: !829)
!840 = !DILocation(line: 1029, column: 56, scope: !833, inlinedAt: !829)
!841 = !DILocation(line: 1029, column: 9, scope: !834, inlinedAt: !829)
!842 = !DILocation(line: 1079, column: 30, scope: !843)
!843 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1077, column: 16)
!844 = !DILocation(line: 1080, column: 24, scope: !843)
!845 = !DILocation(line: 1081, column: 28, scope: !843)
!846 = !DILocation(line: 1090, column: 9, scope: !831)
!847 = !DILocalVariable(name: "idx", arg: 1, scope: !848, file: !3, line: 942, type: !74)
!848 = distinct !DISubprogram(name: "dns_call_found", scope: !3, file: !3, line: 942, type: !849, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !851)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !74, !288}
!851 = !{!847, !852, !853}
!852 = !DILocalVariable(name: "addr", arg: 2, scope: !848, file: !3, line: 942, type: !288)
!853 = !DILocalVariable(name: "i", scope: !848, file: !3, line: 945, type: !74)
!854 = !DILocation(line: 942, column: 21, scope: !848, inlinedAt: !855)
!855 = distinct !DILocation(line: 1085, column: 13, scope: !856)
!856 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1082, column: 18)
!857 = !DILocation(line: 942, column: 37, scope: !848, inlinedAt: !855)
!858 = !DILocation(line: 945, column: 8, scope: !848, inlinedAt: !855)
!859 = !DILocation(line: 962, column: 3, scope: !860, inlinedAt: !855)
!860 = distinct !DILexicalBlock(scope: !848, file: !3, line: 962, column: 3)
!861 = !DILocation(line: 977, column: 3, scope: !862, inlinedAt: !855)
!862 = distinct !DILexicalBlock(scope: !848, file: !3, line: 977, column: 3)
!863 = !DILocation(line: 963, column: 25, scope: !864, inlinedAt: !855)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 963, column: 9)
!865 = distinct !DILexicalBlock(scope: !866, file: !3, line: 962, column: 42)
!866 = distinct !DILexicalBlock(scope: !860, file: !3, line: 962, column: 3)
!867 = !DILocation(line: 963, column: 9, scope: !864, inlinedAt: !855)
!868 = !DILocation(line: 963, column: 31, scope: !864, inlinedAt: !855)
!869 = !DILocation(line: 963, column: 51, scope: !864, inlinedAt: !855)
!870 = !DILocation(line: 963, column: 65, scope: !864, inlinedAt: !855)
!871 = !DILocation(line: 963, column: 9, scope: !865, inlinedAt: !855)
!872 = !DILocation(line: 964, column: 75, scope: !873, inlinedAt: !855)
!873 = distinct !DILexicalBlock(scope: !864, file: !3, line: 963, column: 74)
!874 = !DILocation(line: 964, column: 7, scope: !873, inlinedAt: !855)
!875 = !DILocation(line: 966, column: 29, scope: !873, inlinedAt: !855)
!876 = !DILocation(line: 967, column: 5, scope: !873, inlinedAt: !855)
!877 = !DILocation(line: 962, column: 38, scope: !866, inlinedAt: !855)
!878 = !DILocation(line: 962, column: 17, scope: !866, inlinedAt: !855)
!879 = distinct !{!879, !880, !881}
!880 = !DILocation(line: 962, column: 3, scope: !860)
!881 = !DILocation(line: 968, column: 3, scope: !860)
!882 = !DILocation(line: 978, column: 11, scope: !883, inlinedAt: !855)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 978, column: 9)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 977, column: 42)
!885 = distinct !DILexicalBlock(scope: !862, file: !3, line: 977, column: 3)
!886 = !DILocation(line: 978, column: 9, scope: !884, inlinedAt: !855)
!887 = !DILocation(line: 981, column: 22, scope: !888, inlinedAt: !855)
!888 = distinct !DILexicalBlock(scope: !884, file: !3, line: 981, column: 9)
!889 = !DILocation(line: 981, column: 28, scope: !888, inlinedAt: !855)
!890 = !DILocation(line: 981, column: 9, scope: !884, inlinedAt: !855)
!891 = !DILocation(line: 982, column: 24, scope: !892, inlinedAt: !855)
!892 = distinct !DILexicalBlock(scope: !893, file: !3, line: 982, column: 11)
!893 = distinct !DILexicalBlock(scope: !888, file: !3, line: 981, column: 49)
!894 = !DILocation(line: 982, column: 50, scope: !892, inlinedAt: !855)
!895 = !DILocation(line: 982, column: 32, scope: !892, inlinedAt: !855)
!896 = !DILocation(line: 982, column: 11, scope: !893, inlinedAt: !855)
!897 = !DILocation(line: 977, column: 38, scope: !885, inlinedAt: !855)
!898 = !DILocation(line: 989, column: 22, scope: !899, inlinedAt: !855)
!899 = distinct !DILexicalBlock(scope: !848, file: !3, line: 989, column: 7)
!900 = !DILocation(line: 989, column: 30, scope: !899, inlinedAt: !855)
!901 = !DILocation(line: 989, column: 7, scope: !848, inlinedAt: !855)
!902 = !DILocation(line: 991, column: 16, scope: !903, inlinedAt: !855)
!903 = distinct !DILexicalBlock(scope: !899, file: !3, line: 989, column: 54)
!904 = !DILocation(line: 991, column: 5, scope: !903, inlinedAt: !855)
!905 = !DILocation(line: 992, column: 29, scope: !903, inlinedAt: !855)
!906 = !DILocation(line: 992, column: 5, scope: !903, inlinedAt: !855)
!907 = !DILocation(line: 992, column: 38, scope: !903, inlinedAt: !855)
!908 = !DILocation(line: 994, column: 3, scope: !903, inlinedAt: !855)
!909 = !DILocation(line: 0, scope: !856)
!910 = !DILocation(line: 1087, column: 26, scope: !856)
!911 = !DILocation(line: 1088, column: 13, scope: !856)
!912 = !DILocation(line: 1092, column: 22, scope: !913)
!913 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1090, column: 16)
!914 = !DILocation(line: 1096, column: 15, scope: !818)
!915 = !DILocation(line: 1101, column: 7, scope: !818)
!916 = !DILocation(line: 1105, column: 19, scope: !917)
!917 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1105, column: 11)
!918 = !{!399, !253, i64 0}
!919 = !DILocation(line: 1105, column: 23, scope: !917)
!920 = !DILocation(line: 1105, column: 29, scope: !917)
!921 = !DILocation(line: 1105, column: 33, scope: !917)
!922 = !DILocation(line: 1105, column: 46, scope: !917)
!923 = !DILocation(line: 1105, column: 11, scope: !749)
!924 = !DILocation(line: 1108, column: 22, scope: !925)
!925 = distinct !DILexicalBlock(scope: !917, file: !3, line: 1105, column: 53)
!926 = !DILocation(line: 1109, column: 7, scope: !925)
!927 = !DILocation(line: 1115, column: 7, scope: !928)
!928 = distinct !DILexicalBlock(scope: !929, file: !3, line: 1115, column: 7)
!929 = distinct !DILexicalBlock(scope: !930, file: !3, line: 1115, column: 7)
!930 = distinct !DILexicalBlock(scope: !931, file: !3, line: 1115, column: 7)
!931 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1115, column: 7)
!932 = !DILocation(line: 1115, column: 7, scope: !933)
!933 = distinct !DILexicalBlock(scope: !934, file: !3, line: 1115, column: 7)
!934 = distinct !DILexicalBlock(scope: !935, file: !3, line: 1115, column: 7)
!935 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1115, column: 7)
!936 = !DILocation(line: 1118, column: 1, scope: !719)
!937 = !DILocation(line: 1009, column: 17, scope: !788, inlinedAt: !748)
!938 = distinct !{!938, !939, !940}
!939 = !DILocation(line: 1009, column: 3, scope: !784)
!940 = !DILocation(line: 1015, column: 3, scope: !784)
!941 = !DILocation(line: 977, column: 17, scope: !885, inlinedAt: !855)
!942 = distinct !{!942, !943, !944}
!943 = !DILocation(line: 977, column: 3, scope: !862)
!944 = !DILocation(line: 988, column: 3, scope: !862)
!945 = !DILocation(line: 194, column: 43, scope: !134)
!946 = !DILocation(line: 196, column: 2, scope: !134)
!947 = !DILocation(line: 196, column: 10, scope: !134)
!948 = !DILocation(line: 197, column: 2, scope: !134)
!949 = !DILocation(line: 198, column: 2, scope: !950)
!950 = distinct !DILexicalBlock(scope: !951, file: !135, line: 198, column: 2)
!951 = distinct !DILexicalBlock(scope: !134, file: !135, line: 198, column: 2)
!952 = !DILocation(line: 199, column: 2, scope: !134)
!953 = !DILocation(line: 200, column: 1, scope: !134)
!954 = distinct !DISubprogram(name: "dns_send", scope: !3, file: !3, line: 748, type: !955, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !957)
!955 = !DISubroutineType(types: !956)
!956 = !{!283, !74}
!957 = !{!958, !959, !960, !971, !976, !977, !978, !979, !980, !981, !982, !983, !984, !987}
!958 = !DILocalVariable(name: "idx", arg: 1, scope: !954, file: !3, line: 748, type: !74)
!959 = !DILocalVariable(name: "err", scope: !954, file: !3, line: 750, type: !283)
!960 = !DILocalVariable(name: "hdr", scope: !954, file: !3, line: 751, type: !961)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_hdr", file: !962, line: 103, size: 96, elements: !963)
!962 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/dns.h", directory: "/root/.unikraft/apps/redis/build")
!963 = !{!964, !965, !966, !967, !968, !969, !970}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !961, file: !962, line: 104, baseType: !68, size: 16)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "flags1", scope: !961, file: !962, line: 105, baseType: !74, size: 8, offset: 16)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "flags2", scope: !961, file: !962, line: 106, baseType: !74, size: 8, offset: 24)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "numquestions", scope: !961, file: !962, line: 107, baseType: !68, size: 16, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "numanswers", scope: !961, file: !962, line: 108, baseType: !68, size: 16, offset: 48)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "numauthrr", scope: !961, file: !962, line: 109, baseType: !68, size: 16, offset: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "numextrarr", scope: !961, file: !962, line: 110, baseType: !68, size: 16, offset: 80)
!971 = !DILocalVariable(name: "qry", scope: !954, file: !3, line: 752, type: !972)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_query", file: !3, line: 189, size: 32, elements: !973)
!973 = !{!974, !975}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !972, file: !3, line: 192, baseType: !68, size: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !972, file: !3, line: 193, baseType: !68, size: 16, offset: 16)
!976 = !DILocalVariable(name: "p", scope: !954, file: !3, line: 753, type: !188)
!977 = !DILocalVariable(name: "query_idx", scope: !954, file: !3, line: 754, type: !68)
!978 = !DILocalVariable(name: "copy_len", scope: !954, file: !3, line: 754, type: !68)
!979 = !DILocalVariable(name: "hostname", scope: !954, file: !3, line: 755, type: !138)
!980 = !DILocalVariable(name: "hostname_part", scope: !954, file: !3, line: 755, type: !138)
!981 = !DILocalVariable(name: "n", scope: !954, file: !3, line: 756, type: !74)
!982 = !DILocalVariable(name: "pcb_idx", scope: !954, file: !3, line: 757, type: !74)
!983 = !DILocalVariable(name: "entry", scope: !954, file: !3, line: 758, type: !381)
!984 = !DILocalVariable(name: "dst", scope: !985, file: !3, line: 780, type: !199)
!985 = distinct !DILexicalBlock(scope: !986, file: !3, line: 779, column: 18)
!986 = distinct !DILexicalBlock(scope: !954, file: !3, line: 779, column: 7)
!987 = !DILocalVariable(name: "dst_port", scope: !985, file: !3, line: 781, type: !68)
!988 = !DILocation(line: 748, column: 15, scope: !954)
!989 = !DILocation(line: 751, column: 3, scope: !954)
!990 = !DILocation(line: 752, column: 3, scope: !954)
!991 = !DILocation(line: 758, column: 36, scope: !954)
!992 = !DILocation(line: 762, column: 3, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !3, line: 762, column: 3)
!994 = distinct !DILexicalBlock(scope: !954, file: !3, line: 762, column: 3)
!995 = !DILocation(line: 762, column: 3, scope: !994)
!996 = !DILocation(line: 762, column: 3, scope: !997)
!997 = distinct !DILexicalBlock(scope: !998, file: !3, line: 762, column: 3)
!998 = distinct !DILexicalBlock(scope: !993, file: !3, line: 762, column: 3)
!999 = !DILocation(line: 762, column: 3, scope: !1000)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 762, column: 3)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 762, column: 3)
!1002 = distinct !DILexicalBlock(scope: !997, file: !3, line: 762, column: 3)
!1003 = !DILocation(line: 763, column: 7, scope: !1004)
!1004 = distinct !DILexicalBlock(scope: !954, file: !3, line: 763, column: 7)
!1005 = !DILocation(line: 763, column: 7, scope: !954)
!1006 = !DILocation(line: 942, column: 21, scope: !848, inlinedAt: !1007)
!1007 = distinct !DILocation(line: 770, column: 5, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !1004, file: !3, line: 767, column: 8)
!1009 = !DILocation(line: 942, column: 37, scope: !848, inlinedAt: !1007)
!1010 = !DILocation(line: 945, column: 8, scope: !848, inlinedAt: !1007)
!1011 = !DILocation(line: 962, column: 3, scope: !860, inlinedAt: !1007)
!1012 = !DILocation(line: 977, column: 3, scope: !862, inlinedAt: !1007)
!1013 = !DILocation(line: 963, column: 25, scope: !864, inlinedAt: !1007)
!1014 = !DILocation(line: 963, column: 9, scope: !864, inlinedAt: !1007)
!1015 = !DILocation(line: 963, column: 31, scope: !864, inlinedAt: !1007)
!1016 = !DILocation(line: 963, column: 51, scope: !864, inlinedAt: !1007)
!1017 = !DILocation(line: 963, column: 65, scope: !864, inlinedAt: !1007)
!1018 = !DILocation(line: 963, column: 9, scope: !865, inlinedAt: !1007)
!1019 = !DILocation(line: 964, column: 75, scope: !873, inlinedAt: !1007)
!1020 = !DILocation(line: 964, column: 7, scope: !873, inlinedAt: !1007)
!1021 = !DILocation(line: 966, column: 29, scope: !873, inlinedAt: !1007)
!1022 = !DILocation(line: 967, column: 5, scope: !873, inlinedAt: !1007)
!1023 = !DILocation(line: 962, column: 38, scope: !866, inlinedAt: !1007)
!1024 = !DILocation(line: 962, column: 17, scope: !866, inlinedAt: !1007)
!1025 = !DILocation(line: 978, column: 11, scope: !883, inlinedAt: !1007)
!1026 = !DILocation(line: 978, column: 9, scope: !884, inlinedAt: !1007)
!1027 = !DILocation(line: 981, column: 22, scope: !888, inlinedAt: !1007)
!1028 = !DILocation(line: 981, column: 28, scope: !888, inlinedAt: !1007)
!1029 = !DILocation(line: 981, column: 9, scope: !884, inlinedAt: !1007)
!1030 = !DILocation(line: 982, column: 24, scope: !892, inlinedAt: !1007)
!1031 = !DILocation(line: 982, column: 50, scope: !892, inlinedAt: !1007)
!1032 = !DILocation(line: 982, column: 32, scope: !892, inlinedAt: !1007)
!1033 = !DILocation(line: 982, column: 11, scope: !893, inlinedAt: !1007)
!1034 = !DILocation(line: 977, column: 38, scope: !885, inlinedAt: !1007)
!1035 = !DILocation(line: 989, column: 22, scope: !899, inlinedAt: !1007)
!1036 = !DILocation(line: 989, column: 30, scope: !899, inlinedAt: !1007)
!1037 = !DILocation(line: 989, column: 7, scope: !848, inlinedAt: !1007)
!1038 = !DILocation(line: 991, column: 16, scope: !903, inlinedAt: !1007)
!1039 = !DILocation(line: 991, column: 5, scope: !903, inlinedAt: !1007)
!1040 = !DILocation(line: 992, column: 29, scope: !903, inlinedAt: !1007)
!1041 = !DILocation(line: 992, column: 5, scope: !903, inlinedAt: !1007)
!1042 = !DILocation(line: 992, column: 38, scope: !903, inlinedAt: !1007)
!1043 = !DILocation(line: 994, column: 3, scope: !903, inlinedAt: !1007)
!1044 = !DILocation(line: 0, scope: !1008)
!1045 = !DILocation(line: 772, column: 12, scope: !1008)
!1046 = !DILocation(line: 772, column: 18, scope: !1008)
!1047 = !DILocation(line: 773, column: 5, scope: !1008)
!1048 = !DILocation(line: 777, column: 66, scope: !954)
!1049 = !DILocation(line: 777, column: 59, scope: !954)
!1050 = !DILocation(line: 777, column: 34, scope: !954)
!1051 = !DILocation(line: 777, column: 7, scope: !954)
!1052 = !DILocation(line: 753, column: 16, scope: !954)
!1053 = !DILocation(line: 779, column: 9, scope: !986)
!1054 = !DILocation(line: 779, column: 7, scope: !954)
!1055 = !DILocation(line: 783, column: 5, scope: !985)
!1056 = !DILocation(line: 784, column: 32, scope: !985)
!1057 = !DILocation(line: 784, column: 14, scope: !985)
!1058 = !DILocation(line: 784, column: 9, scope: !985)
!1059 = !DILocation(line: 784, column: 12, scope: !985)
!1060 = !{!1061, !400, i64 0}
!1061 = !{!"dns_hdr", !400, i64 0, !250, i64 2, !250, i64 3, !400, i64 4, !400, i64 6, !400, i64 8, !400, i64 10}
!1062 = !DILocation(line: 785, column: 9, scope: !985)
!1063 = !DILocation(line: 785, column: 16, scope: !985)
!1064 = !{!1061, !250, i64 2}
!1065 = !DILocation(line: 786, column: 9, scope: !985)
!1066 = !DILocation(line: 786, column: 22, scope: !985)
!1067 = !{!1061, !400, i64 4}
!1068 = !DILocation(line: 787, column: 5, scope: !985)
!1069 = !DILocation(line: 755, column: 15, scope: !954)
!1070 = !DILocation(line: 789, column: 5, scope: !985)
!1071 = !DILocation(line: 754, column: 9, scope: !954)
!1072 = !DILocation(line: 793, column: 5, scope: !985)
!1073 = !DILocation(line: 0, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !985, file: !3, line: 793, column: 8)
!1075 = !DILocation(line: 794, column: 7, scope: !1074)
!1076 = !DILocation(line: 755, column: 26, scope: !954)
!1077 = !DILocation(line: 756, column: 8, scope: !954)
!1078 = !DILocation(line: 796, column: 12, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 796, column: 7)
!1080 = !DILocation(line: 0, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 796, column: 67)
!1082 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 796, column: 7)
!1083 = !DILocation(line: 0, scope: !1082)
!1084 = !DILocation(line: 796, column: 19, scope: !1082)
!1085 = !DILocation(line: 796, column: 36, scope: !1082)
!1086 = !DILocation(line: 797, column: 9, scope: !1081)
!1087 = !DILocation(line: 796, column: 55, scope: !1082)
!1088 = !DILocation(line: 796, column: 7, scope: !1082)
!1089 = distinct !{!1089, !1090, !1091}
!1090 = !DILocation(line: 796, column: 7, scope: !1079)
!1091 = !DILocation(line: 798, column: 7, scope: !1079)
!1092 = !DILocation(line: 800, column: 11, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1074, file: !3, line: 800, column: 11)
!1094 = !DILocation(line: 800, column: 23, scope: !1093)
!1095 = !DILocation(line: 800, column: 21, scope: !1093)
!1096 = !DILocation(line: 800, column: 29, scope: !1093)
!1097 = !DILocation(line: 800, column: 11, scope: !1074)
!1098 = !DILocation(line: 799, column: 35, scope: !1074)
!1099 = !DILocation(line: 799, column: 18, scope: !1074)
!1100 = !DILocation(line: 754, column: 20, scope: !954)
!1101 = !DILocation(line: 804, column: 7, scope: !1074)
!1102 = !DILocation(line: 805, column: 66, scope: !1074)
!1103 = !DILocation(line: 805, column: 7, scope: !1074)
!1104 = !DILocation(line: 806, column: 19, scope: !1074)
!1105 = !DILocation(line: 807, column: 14, scope: !985)
!1106 = !DILocation(line: 807, column: 24, scope: !985)
!1107 = !DILocation(line: 807, column: 5, scope: !1074)
!1108 = distinct !{!1108, !1072, !1109}
!1109 = !DILocation(line: 807, column: 28, scope: !985)
!1110 = !DILocation(line: 808, column: 5, scope: !985)
!1111 = !DILocation(line: 809, column: 14, scope: !985)
!1112 = !DILocation(line: 812, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !985, file: !3, line: 812, column: 9)
!1114 = !DILocation(line: 0, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 814, column: 12)
!1116 = !{!1117, !400, i64 0}
!1117 = !{!"dns_query", !400, i64 0, !400, i64 2}
!1118 = !DILocation(line: 817, column: 9, scope: !985)
!1119 = !DILocation(line: 817, column: 13, scope: !985)
!1120 = !{!1117, !400, i64 2}
!1121 = !DILocation(line: 818, column: 5, scope: !985)
!1122 = !DILocation(line: 821, column: 22, scope: !985)
!1123 = !DILocation(line: 757, column: 8, scope: !954)
!1124 = !DILocation(line: 781, column: 11, scope: !985)
!1125 = !DILocation(line: 848, column: 33, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !985, file: !3, line: 846, column: 5)
!1127 = !DILocation(line: 848, column: 14, scope: !1126)
!1128 = !DILocation(line: 780, column: 22, scope: !985)
!1129 = !DILocation(line: 850, column: 22, scope: !985)
!1130 = !DILocation(line: 850, column: 11, scope: !985)
!1131 = !DILocation(line: 750, column: 9, scope: !954)
!1132 = !DILocation(line: 853, column: 5, scope: !985)
!1133 = !DILocation(line: 860, column: 3, scope: !954)
!1134 = !DILocation(line: 861, column: 3, scope: !954)
!1135 = !DILocation(line: 862, column: 1, scope: !954)
!1136 = !DILocation(line: 977, column: 17, scope: !885, inlinedAt: !1007)
!1137 = !DILocation(line: 942, column: 21, scope: !848)
!1138 = !DILocation(line: 942, column: 37, scope: !848)
!1139 = !DILocation(line: 949, column: 12, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !848, file: !3, line: 949, column: 7)
!1141 = !DILocation(line: 949, column: 7, scope: !848)
!1142 = !DILocation(line: 951, column: 9, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 951, column: 9)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 949, column: 21)
!1145 = !DILocation(line: 0, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !3, line: 955, column: 7)
!1147 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 955, column: 7)
!1148 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 954, column: 12)
!1149 = !DILocation(line: 951, column: 9, scope: !1144)
!1150 = !DILocation(line: 952, column: 7, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 952, column: 7)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 952, column: 7)
!1153 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 951, column: 30)
!1154 = !DILocation(line: 952, column: 7, scope: !1155)
!1155 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 952, column: 7)
!1156 = distinct !DILexicalBlock(scope: !1151, file: !3, line: 952, column: 7)
!1157 = !DILocation(line: 952, column: 7, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1159, file: !3, line: 952, column: 7)
!1159 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 952, column: 7)
!1160 = distinct !DILexicalBlock(scope: !1155, file: !3, line: 952, column: 7)
!1161 = !DILocation(line: 953, column: 34, scope: !1153)
!1162 = !DILocation(line: 954, column: 5, scope: !1153)
!1163 = !DILocation(line: 955, column: 7, scope: !1146)
!1164 = !DILocation(line: 955, column: 7, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 955, column: 7)
!1166 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 955, column: 7)
!1167 = !DILocation(line: 955, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 955, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 955, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 955, column: 7)
!1171 = !DILocation(line: 956, column: 34, scope: !1148)
!1172 = !DILocation(line: 945, column: 8, scope: !848)
!1173 = !DILocation(line: 963, column: 25, scope: !864)
!1174 = !DILocation(line: 963, column: 9, scope: !864)
!1175 = !DILocation(line: 963, column: 31, scope: !864)
!1176 = !DILocation(line: 963, column: 51, scope: !864)
!1177 = !DILocation(line: 963, column: 65, scope: !864)
!1178 = !DILocation(line: 963, column: 9, scope: !865)
!1179 = !DILocation(line: 964, column: 75, scope: !873)
!1180 = !DILocation(line: 964, column: 7, scope: !873)
!1181 = !DILocation(line: 966, column: 29, scope: !873)
!1182 = !DILocation(line: 967, column: 5, scope: !873)
!1183 = !DILocation(line: 962, column: 38, scope: !866)
!1184 = !DILocation(line: 962, column: 17, scope: !866)
!1185 = !DILocation(line: 978, column: 11, scope: !883)
!1186 = !DILocation(line: 978, column: 9, scope: !884)
!1187 = !DILocation(line: 981, column: 22, scope: !888)
!1188 = !DILocation(line: 981, column: 28, scope: !888)
!1189 = !DILocation(line: 981, column: 9, scope: !884)
!1190 = !DILocation(line: 982, column: 24, scope: !892)
!1191 = !DILocation(line: 982, column: 50, scope: !892)
!1192 = !DILocation(line: 982, column: 32, scope: !892)
!1193 = !DILocation(line: 982, column: 11, scope: !893)
!1194 = !DILocation(line: 977, column: 38, scope: !885)
!1195 = !DILocation(line: 989, column: 22, scope: !899)
!1196 = !DILocation(line: 989, column: 30, scope: !899)
!1197 = !DILocation(line: 989, column: 7, scope: !848)
!1198 = !DILocation(line: 991, column: 16, scope: !903)
!1199 = !DILocation(line: 991, column: 5, scope: !903)
!1200 = !DILocation(line: 992, column: 29, scope: !903)
!1201 = !DILocation(line: 992, column: 5, scope: !903)
!1202 = !DILocation(line: 992, column: 38, scope: !903)
!1203 = !DILocation(line: 994, column: 3, scope: !903)
!1204 = !DILocation(line: 0, scope: !903)
!1205 = !DILocation(line: 996, column: 1, scope: !848)
!1206 = !DILocation(line: 977, column: 17, scope: !885)
!1207 = !DILocation(line: 65, column: 11, scope: !567)
!1208 = !DILocation(line: 62, column: 16, scope: !567)
!1209 = !DILocation(line: 66, column: 8, scope: !567)
!1210 = !DILocation(line: 63, column: 8, scope: !567)
!1211 = !DILocation(line: 67, column: 2, scope: !567)
!1212 = !DILocation(line: 69, column: 2, scope: !567)
!1213 = distinct !DISubprogram(name: "dns_recv", scope: !3, file: !3, line: 1170, type: !186, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1214)
!1214 = !{!1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1231, !1232, !1233, !1234, !1240, !1252}
!1215 = !DILocalVariable(name: "arg", arg: 1, scope: !1213, file: !3, line: 1170, type: !61)
!1216 = !DILocalVariable(name: "pcb", arg: 2, scope: !1213, file: !3, line: 1170, type: !166)
!1217 = !DILocalVariable(name: "p", arg: 3, scope: !1213, file: !3, line: 1170, type: !188)
!1218 = !DILocalVariable(name: "addr", arg: 4, scope: !1213, file: !3, line: 1170, type: !199)
!1219 = !DILocalVariable(name: "port", arg: 5, scope: !1213, file: !3, line: 1170, type: !68)
!1220 = !DILocalVariable(name: "i", scope: !1213, file: !3, line: 1172, type: !74)
!1221 = !DILocalVariable(name: "txid", scope: !1213, file: !3, line: 1173, type: !68)
!1222 = !DILocalVariable(name: "res_idx", scope: !1213, file: !3, line: 1174, type: !68)
!1223 = !DILocalVariable(name: "hdr", scope: !1213, file: !3, line: 1175, type: !961)
!1224 = !DILocalVariable(name: "ans", scope: !1213, file: !3, line: 1176, type: !1225)
!1225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_answer", file: !3, line: 199, size: 96, elements: !1226)
!1226 = !{!1227, !1228, !1229, !1230}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1225, file: !3, line: 202, baseType: !68, size: 16)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1225, file: !3, line: 203, baseType: !68, size: 16, offset: 16)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1225, file: !3, line: 204, baseType: !62, size: 32, offset: 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1225, file: !3, line: 205, baseType: !68, size: 16, offset: 64)
!1231 = !DILocalVariable(name: "qry", scope: !1213, file: !3, line: 1177, type: !972)
!1232 = !DILocalVariable(name: "nquestions", scope: !1213, file: !3, line: 1178, type: !68)
!1233 = !DILocalVariable(name: "nanswers", scope: !1213, file: !3, line: 1178, type: !68)
!1234 = !DILocalVariable(name: "entry", scope: !1235, file: !3, line: 1196, type: !381)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1195, column: 42)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 1195, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 1195, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1192, column: 72)
!1239 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1192, column: 7)
!1240 = !DILocalVariable(name: "ip4addr", scope: !1241, file: !3, line: 1291, type: !99)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !3, line: 1290, column: 17)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 1288, column: 21)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 1286, column: 102)
!1244 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1286, column: 19)
!1245 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1284, column: 54)
!1246 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1284, column: 17)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1268, column: 60)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1267, column: 16)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1251, column: 13)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1198, column: 34)
!1251 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1197, column: 11)
!1252 = !DILocalVariable(name: "ip6addr", scope: !1253, file: !3, line: 1310, type: !1257)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1309, column: 17)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1307, column: 21)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1305, column: 107)
!1256 = distinct !DILexicalBlock(scope: !1245, file: !3, line: 1305, column: 19)
!1257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !1258, line: 60, baseType: !1259)
!1258 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !1258, line: 53, size: 128, elements: !1260)
!1260 = !{!1261}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1259, file: !1258, line: 54, baseType: !94, size: 128)
!1262 = !DILocation(line: 1170, column: 16, scope: !1213)
!1263 = !DILocation(line: 1170, column: 37, scope: !1213)
!1264 = !DILocation(line: 1170, column: 55, scope: !1213)
!1265 = !DILocation(line: 1170, column: 75, scope: !1213)
!1266 = !DILocation(line: 1170, column: 87, scope: !1213)
!1267 = !DILocation(line: 1175, column: 3, scope: !1213)
!1268 = !DILocation(line: 1176, column: 3, scope: !1213)
!1269 = !DILocation(line: 1177, column: 3, scope: !1213)
!1270 = !DILocation(line: 1185, column: 10, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 1185, column: 7)
!1272 = !{!1273, !400, i64 16}
!1273 = !{!"pbuf", !421, i64 0, !421, i64 8, !400, i64 16, !400, i64 18, !250, i64 20, !250, i64 21, !250, i64 22, !250, i64 23}
!1274 = !DILocation(line: 1185, column: 18, scope: !1271)
!1275 = !DILocation(line: 1185, column: 7, scope: !1213)
!1276 = !DILocation(line: 1192, column: 7, scope: !1239)
!1277 = !DILocation(line: 1192, column: 53, scope: !1239)
!1278 = !DILocation(line: 1192, column: 7, scope: !1213)
!1279 = !DILocation(line: 1194, column: 27, scope: !1238)
!1280 = !DILocation(line: 1194, column: 12, scope: !1238)
!1281 = !DILocation(line: 1173, column: 9, scope: !1213)
!1282 = !DILocation(line: 1172, column: 8, scope: !1213)
!1283 = !DILocation(line: 1195, column: 5, scope: !1237)
!1284 = !DILocation(line: 1197, column: 19, scope: !1251)
!1285 = !DILocation(line: 1197, column: 25, scope: !1251)
!1286 = !DILocation(line: 1197, column: 46, scope: !1251)
!1287 = !DILocation(line: 1198, column: 19, scope: !1251)
!1288 = !DILocation(line: 1198, column: 24, scope: !1251)
!1289 = !DILocation(line: 1197, column: 11, scope: !1235)
!1290 = !DILocation(line: 1202, column: 37, scope: !1250)
!1291 = !DILocation(line: 1202, column: 22, scope: !1250)
!1292 = !DILocation(line: 1178, column: 9, scope: !1213)
!1293 = !DILocation(line: 1203, column: 37, scope: !1250)
!1294 = !{!1061, !400, i64 6}
!1295 = !DILocation(line: 1203, column: 22, scope: !1250)
!1296 = !DILocation(line: 1178, column: 21, scope: !1213)
!1297 = !DILocation(line: 1206, column: 18, scope: !1298)
!1298 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1206, column: 13)
!1299 = !DILocation(line: 1206, column: 47, scope: !1298)
!1300 = !DILocation(line: 1210, column: 24, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1210, column: 13)
!1302 = !DILocation(line: 1206, column: 13, scope: !1250)
!1303 = !DILocation(line: 1221, column: 16, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 1221, column: 15)
!1305 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1218, column: 9)
!1306 = !DILocation(line: 1221, column: 15, scope: !1305)
!1307 = !DILocation(line: 1228, column: 36, scope: !1250)
!1308 = !DILocalVariable(name: "query", arg: 1, scope: !1309, file: !3, line: 651, type: !138)
!1309 = distinct !DISubprogram(name: "dns_compare_name", scope: !3, file: !3, line: 651, type: !1310, isLocal: true, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1312)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!68, !138, !188, !68}
!1312 = !{!1308, !1313, !1314, !1315, !1316, !1317, !1322, !1325}
!1313 = !DILocalVariable(name: "p", arg: 2, scope: !1309, file: !3, line: 651, type: !188)
!1314 = !DILocalVariable(name: "start_offset", arg: 3, scope: !1309, file: !3, line: 651, type: !68)
!1315 = !DILocalVariable(name: "n", scope: !1309, file: !3, line: 653, type: !7)
!1316 = !DILocalVariable(name: "response_offset", scope: !1309, file: !3, line: 654, type: !68)
!1317 = !DILocalVariable(name: "c", scope: !1318, file: !3, line: 670, type: !7)
!1318 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 669, column: 21)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 667, column: 12)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 664, column: 9)
!1321 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 656, column: 6)
!1322 = !DILocalVariable(name: "__x", scope: !1323, file: !3, line: 674, type: !77)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 674, column: 13)
!1324 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 674, column: 13)
!1325 = !DILocalVariable(name: "__x", scope: !1326, file: !3, line: 674, type: !77)
!1326 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 674, column: 39)
!1327 = !DILocation(line: 651, column: 30, scope: !1309, inlinedAt: !1328)
!1328 = distinct !DILocation(line: 1228, column: 19, scope: !1250)
!1329 = !DILocation(line: 651, column: 50, scope: !1309, inlinedAt: !1328)
!1330 = !DILocation(line: 651, column: 59, scope: !1309, inlinedAt: !1328)
!1331 = !DILocation(line: 654, column: 9, scope: !1309, inlinedAt: !1328)
!1332 = !DILocation(line: 656, column: 3, scope: !1309, inlinedAt: !1328)
!1333 = !DILocation(line: 0, scope: !1321, inlinedAt: !1328)
!1334 = !DILocation(line: 657, column: 9, scope: !1321, inlinedAt: !1328)
!1335 = !DILocation(line: 653, column: 7, scope: !1309, inlinedAt: !1328)
!1336 = !DILocation(line: 658, column: 12, scope: !1337, inlinedAt: !1328)
!1337 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 658, column: 9)
!1338 = !DILocation(line: 658, column: 37, scope: !1337, inlinedAt: !1328)
!1339 = !DILocation(line: 658, column: 17, scope: !1337, inlinedAt: !1328)
!1340 = !DILocation(line: 664, column: 12, scope: !1320, inlinedAt: !1328)
!1341 = !DILocation(line: 664, column: 20, scope: !1320, inlinedAt: !1328)
!1342 = !DILocation(line: 662, column: 20, scope: !1321, inlinedAt: !1328)
!1343 = !DILocation(line: 669, column: 16, scope: !1319, inlinedAt: !1328)
!1344 = !DILocation(line: 0, scope: !1345, inlinedAt: !1328)
!1345 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 688, column: 9)
!1346 = !DILocation(line: 669, column: 7, scope: !1319, inlinedAt: !1328)
!1347 = !DILocation(line: 670, column: 13, scope: !1318, inlinedAt: !1328)
!1348 = !DILocation(line: 671, column: 13, scope: !1318, inlinedAt: !1328)
!1349 = !DILocation(line: 674, column: 13, scope: !1323, inlinedAt: !1328)
!1350 = !DILocation(line: 674, column: 39, scope: !1326, inlinedAt: !1328)
!1351 = !DILocation(line: 674, column: 36, scope: !1324, inlinedAt: !1328)
!1352 = !DILocation(line: 677, column: 29, scope: !1353, inlinedAt: !1328)
!1353 = distinct !DILexicalBlock(scope: !1318, file: !3, line: 677, column: 13)
!1354 = !DILocation(line: 674, column: 13, scope: !1318, inlinedAt: !1328)
!1355 = !DILocation(line: 682, column: 9, scope: !1318, inlinedAt: !1328)
!1356 = !DILocation(line: 683, column: 9, scope: !1318, inlinedAt: !1328)
!1357 = !DILocation(line: 688, column: 9, scope: !1321, inlinedAt: !1328)
!1358 = !DILocation(line: 685, column: 7, scope: !1319, inlinedAt: !1328)
!1359 = !DILocation(line: 691, column: 14, scope: !1309, inlinedAt: !1328)
!1360 = !DILocation(line: 691, column: 3, scope: !1321, inlinedAt: !1328)
!1361 = distinct !{!1361, !1362, !1363}
!1362 = !DILocation(line: 656, column: 3, scope: !1309)
!1363 = !DILocation(line: 691, column: 18, scope: !1309)
!1364 = !DILocation(line: 693, column: 23, scope: !1365, inlinedAt: !1328)
!1365 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 693, column: 7)
!1366 = !DILocation(line: 697, column: 34, scope: !1309, inlinedAt: !1328)
!1367 = !DILocation(line: 1174, column: 9, scope: !1213)
!1368 = !DILocation(line: 1229, column: 13, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1229, column: 13)
!1370 = !DILocation(line: 1229, column: 21, scope: !1369)
!1371 = !DILocation(line: 1229, column: 13, scope: !1250)
!1372 = !DILocation(line: 1235, column: 13, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1235, column: 13)
!1374 = !DILocation(line: 1235, column: 67, scope: !1373)
!1375 = !DILocation(line: 1238, column: 18, scope: !1376)
!1376 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1238, column: 13)
!1377 = !DILocation(line: 1238, column: 22, scope: !1376)
!1378 = !DILocation(line: 1235, column: 13, scope: !1250)
!1379 = !DILocation(line: 1239, column: 14, scope: !1376)
!1380 = !DILocation(line: 1239, column: 68, scope: !1376)
!1381 = !DILocation(line: 1239, column: 73, scope: !1376)
!1382 = !DILocation(line: 1239, column: 104, scope: !1376)
!1383 = !DILocation(line: 1240, column: 15, scope: !1376)
!1384 = !DILocation(line: 1240, column: 69, scope: !1376)
!1385 = !DILocation(line: 1240, column: 74, scope: !1376)
!1386 = !DILocation(line: 1238, column: 13, scope: !1250)
!1387 = !DILocation(line: 1245, column: 21, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1245, column: 13)
!1389 = !DILocation(line: 1245, column: 40, scope: !1388)
!1390 = !DILocation(line: 1245, column: 13, scope: !1250)
!1391 = !DILocation(line: 1251, column: 17, scope: !1249)
!1392 = !{!1061, !250, i64 3}
!1393 = !DILocation(line: 1251, column: 24, scope: !1249)
!1394 = !DILocation(line: 1251, column: 13, scope: !1250)
!1395 = !DILocation(line: 1268, column: 28, scope: !1248)
!1396 = !DILocation(line: 1268, column: 33, scope: !1248)
!1397 = !DILocation(line: 0, scope: !1247)
!1398 = !DILocation(line: 1026, column: 8, scope: !823, inlinedAt: !1399)
!1399 = distinct !DILocation(line: 1257, column: 15, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !3, line: 1257, column: 15)
!1401 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 1251, column: 46)
!1402 = !DILocation(line: 1029, column: 18, scope: !833, inlinedAt: !1399)
!1403 = !DILocation(line: 1029, column: 10, scope: !833, inlinedAt: !1399)
!1404 = !DILocation(line: 1029, column: 29, scope: !833, inlinedAt: !1399)
!1405 = !DILocation(line: 1029, column: 33, scope: !833, inlinedAt: !1399)
!1406 = !DILocation(line: 1029, column: 52, scope: !833, inlinedAt: !1399)
!1407 = !DILocation(line: 1029, column: 56, scope: !833, inlinedAt: !1399)
!1408 = !DILocation(line: 1029, column: 9, scope: !834, inlinedAt: !1399)
!1409 = !DILocation(line: 1259, column: 20, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1257, column: 50)
!1411 = !DILocation(line: 1259, column: 28, scope: !1410)
!1412 = !DILocation(line: 1260, column: 20, scope: !1410)
!1413 = !DILocation(line: 1260, column: 28, scope: !1410)
!1414 = !DILocation(line: 1263, column: 13, scope: !1410)
!1415 = !DILocation(line: 1265, column: 13, scope: !1410)
!1416 = !DILocation(line: 1268, column: 37, scope: !1248)
!1417 = !DILocation(line: 1268, column: 50, scope: !1248)
!1418 = !DILocation(line: 1268, column: 47, scope: !1248)
!1419 = !DILocation(line: 1268, column: 45, scope: !1248)
!1420 = !DILocation(line: 1268, column: 11, scope: !1248)
!1421 = !DILocation(line: 714, column: 34, scope: !1422, inlinedAt: !1431)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 713, column: 6)
!1423 = distinct !DISubprogram(name: "dns_skip_name", scope: !3, file: !3, line: 708, type: !1424, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1426)
!1424 = !DISubroutineType(types: !1425)
!1425 = !{!68, !188, !68}
!1426 = !{!1427, !1428, !1429, !1430}
!1427 = !DILocalVariable(name: "p", arg: 1, scope: !1423, file: !3, line: 708, type: !188)
!1428 = !DILocalVariable(name: "query_idx", arg: 2, scope: !1423, file: !3, line: 708, type: !68)
!1429 = !DILocalVariable(name: "n", scope: !1423, file: !3, line: 710, type: !7)
!1430 = !DILocalVariable(name: "offset", scope: !1423, file: !3, line: 711, type: !68)
!1431 = distinct !DILocation(line: 1270, column: 23, scope: !1247)
!1432 = !DILocation(line: 0, scope: !1433, inlinedAt: !1431)
!1433 = distinct !DILexicalBlock(scope: !1434, file: !3, line: 722, column: 12)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 719, column: 9)
!1435 = !DILocation(line: 711, column: 9, scope: !1423, inlinedAt: !1431)
!1436 = !DILocation(line: 714, column: 9, scope: !1422, inlinedAt: !1431)
!1437 = !DILocation(line: 710, column: 7, scope: !1423, inlinedAt: !1431)
!1438 = !DILocation(line: 715, column: 12, scope: !1439, inlinedAt: !1431)
!1439 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 715, column: 9)
!1440 = !DILocation(line: 715, column: 17, scope: !1439, inlinedAt: !1431)
!1441 = !DILocation(line: 715, column: 21, scope: !1439, inlinedAt: !1431)
!1442 = !DILocation(line: 715, column: 28, scope: !1439, inlinedAt: !1431)
!1443 = !DILocation(line: 715, column: 9, scope: !1422, inlinedAt: !1431)
!1444 = !DILocation(line: 719, column: 12, scope: !1434, inlinedAt: !1431)
!1445 = !DILocation(line: 719, column: 20, scope: !1434, inlinedAt: !1431)
!1446 = !DILocation(line: 719, column: 9, scope: !1422, inlinedAt: !1431)
!1447 = !DILocation(line: 724, column: 18, scope: !1448, inlinedAt: !1431)
!1448 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 724, column: 11)
!1449 = !DILocation(line: 724, column: 28, scope: !1448, inlinedAt: !1431)
!1450 = !DILocation(line: 724, column: 25, scope: !1448, inlinedAt: !1431)
!1451 = !DILocation(line: 724, column: 22, scope: !1448, inlinedAt: !1431)
!1452 = !DILocation(line: 724, column: 11, scope: !1433, inlinedAt: !1431)
!1453 = !DILocation(line: 727, column: 16, scope: !1433, inlinedAt: !1431)
!1454 = !DILocation(line: 729, column: 9, scope: !1422, inlinedAt: !1431)
!1455 = !DILocation(line: 730, column: 11, scope: !1456, inlinedAt: !1431)
!1456 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 730, column: 9)
!1457 = !DILocation(line: 730, column: 9, scope: !1422, inlinedAt: !1431)
!1458 = !DILocation(line: 733, column: 14, scope: !1423, inlinedAt: !1431)
!1459 = !DILocation(line: 733, column: 3, scope: !1422, inlinedAt: !1431)
!1460 = distinct !{!1460, !1461, !1462}
!1461 = !DILocation(line: 713, column: 3, scope: !1423)
!1462 = !DILocation(line: 733, column: 18, scope: !1423)
!1463 = !DILocation(line: 735, column: 14, scope: !1464, inlinedAt: !1431)
!1464 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 735, column: 7)
!1465 = !DILocation(line: 738, column: 25, scope: !1423, inlinedAt: !1431)
!1466 = !DILocation(line: 1271, column: 17, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1271, column: 17)
!1468 = !DILocation(line: 1271, column: 25, scope: !1467)
!1469 = !DILocation(line: 1271, column: 17, scope: !1247)
!1470 = !DILocation(line: 1276, column: 17, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1276, column: 17)
!1472 = !DILocation(line: 1276, column: 72, scope: !1471)
!1473 = !DILocation(line: 1276, column: 17, scope: !1247)
!1474 = !DILocation(line: 1279, column: 25, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1279, column: 17)
!1476 = !DILocation(line: 1279, column: 45, scope: !1475)
!1477 = !DILocation(line: 1279, column: 17, scope: !1247)
!1478 = !DILocation(line: 1284, column: 21, scope: !1246)
!1479 = !{!1480, !400, i64 2}
!1480 = !{!"dns_answer", !400, i64 0, !400, i64 2, !253, i64 4, !400, i64 8}
!1481 = !DILocation(line: 1284, column: 25, scope: !1246)
!1482 = !DILocation(line: 1284, column: 17, scope: !1247)
!1483 = !DILocation(line: 1286, column: 24, scope: !1244)
!1484 = !{!1480, !400, i64 0}
!1485 = !DILocation(line: 1286, column: 56, scope: !1244)
!1486 = !DILocation(line: 1286, column: 64, scope: !1244)
!1487 = !{!1480, !400, i64 8}
!1488 = !DILocation(line: 1286, column: 68, scope: !1244)
!1489 = !DILocation(line: 1286, column: 19, scope: !1245)
!1490 = !DILocation(line: 1288, column: 22, scope: !1242)
!1491 = !DILocation(line: 1282, column: 23, scope: !1247)
!1492 = !DILocation(line: 1291, column: 19, scope: !1241)
!1493 = !DILocation(line: 1293, column: 23, scope: !1494)
!1494 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1293, column: 23)
!1495 = !DILocation(line: 1293, column: 83, scope: !1494)
!1496 = !DILocation(line: 1293, column: 23, scope: !1241)
!1497 = !DILocation(line: 1296, column: 19, scope: !1498)
!1498 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 1296, column: 19)
!1499 = !{!1500, !253, i64 0}
!1500 = !{!"ip4_addr", !253, i64 0}
!1501 = !DILocation(line: 1296, column: 19, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 1296, column: 19)
!1503 = !DILocation(line: 1296, column: 19, scope: !1504)
!1504 = distinct !DILexicalBlock(scope: !1498, file: !3, line: 1296, column: 19)
!1505 = !DILocation(line: 1297, column: 19, scope: !1241)
!1506 = !DILocation(line: 1299, column: 43, scope: !1241)
!1507 = !{!1480, !253, i64 4}
!1508 = !DILocalVariable(name: "idx", arg: 1, scope: !1509, file: !3, line: 1137, type: !74)
!1509 = distinct !DISubprogram(name: "dns_correct_response", scope: !3, file: !3, line: 1137, type: !1510, isLocal: true, isDefinition: true, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1512)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !74, !62}
!1512 = !{!1508, !1513, !1514}
!1513 = !DILocalVariable(name: "ttl", arg: 2, scope: !1509, file: !3, line: 1137, type: !62)
!1514 = !DILocalVariable(name: "entry", scope: !1509, file: !3, line: 1139, type: !381)
!1515 = !DILocation(line: 1137, column: 27, scope: !1509, inlinedAt: !1516)
!1516 = distinct !DILocation(line: 1299, column: 19, scope: !1241)
!1517 = !DILocation(line: 1137, column: 38, scope: !1509, inlinedAt: !1516)
!1518 = !DILocation(line: 1141, column: 16, scope: !1509, inlinedAt: !1516)
!1519 = !DILocation(line: 1144, column: 3, scope: !1520, inlinedAt: !1516)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !3, line: 1144, column: 3)
!1521 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1144, column: 3)
!1522 = !DILocation(line: 1148, column: 10, scope: !1509, inlinedAt: !1516)
!1523 = !DILocation(line: 1149, column: 7, scope: !1509, inlinedAt: !1516)
!1524 = !DILocation(line: 0, scope: !1509, inlinedAt: !1516)
!1525 = !DILocation(line: 1152, column: 3, scope: !1509, inlinedAt: !1516)
!1526 = !DILocation(line: 1154, column: 14, scope: !1527, inlinedAt: !1516)
!1527 = distinct !DILexicalBlock(scope: !1509, file: !3, line: 1154, column: 7)
!1528 = !DILocation(line: 1154, column: 18, scope: !1527, inlinedAt: !1516)
!1529 = !DILocation(line: 1154, column: 7, scope: !1509, inlinedAt: !1516)
!1530 = !DILocation(line: 1160, column: 16, scope: !1531, inlinedAt: !1516)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1160, column: 9)
!1532 = distinct !DILexicalBlock(scope: !1527, file: !3, line: 1154, column: 24)
!1533 = !DILocation(line: 1160, column: 22, scope: !1531, inlinedAt: !1516)
!1534 = !DILocation(line: 1160, column: 9, scope: !1532, inlinedAt: !1516)
!1535 = !DILocation(line: 1161, column: 20, scope: !1536, inlinedAt: !1516)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1160, column: 41)
!1537 = !DILocation(line: 1162, column: 5, scope: !1536, inlinedAt: !1516)
!1538 = !DILocation(line: 1301, column: 17, scope: !1242)
!1539 = !DILocation(line: 1305, column: 67, scope: !1256)
!1540 = !DILocation(line: 1305, column: 71, scope: !1256)
!1541 = !DILocation(line: 1305, column: 19, scope: !1245)
!1542 = !DILocation(line: 1307, column: 21, scope: !1254)
!1543 = !DILocation(line: 1310, column: 19, scope: !1253)
!1544 = !DILocation(line: 1312, column: 23, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1312, column: 23)
!1546 = !DILocation(line: 1312, column: 85, scope: !1545)
!1547 = !DILocation(line: 1312, column: 23, scope: !1253)
!1548 = !DILocation(line: 1316, column: 19, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 1316, column: 19)
!1550 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1316, column: 19)
!1551 = !DILocation(line: 1316, column: 19, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 1316, column: 19)
!1553 = !DILocation(line: 1317, column: 19, scope: !1253)
!1554 = !DILocation(line: 1319, column: 43, scope: !1253)
!1555 = !DILocation(line: 1137, column: 27, scope: !1509, inlinedAt: !1556)
!1556 = distinct !DILocation(line: 1319, column: 19, scope: !1253)
!1557 = !DILocation(line: 1137, column: 38, scope: !1509, inlinedAt: !1556)
!1558 = !DILocation(line: 1141, column: 16, scope: !1509, inlinedAt: !1556)
!1559 = !DILocation(line: 1144, column: 3, scope: !1520, inlinedAt: !1556)
!1560 = !DILocation(line: 1148, column: 10, scope: !1509, inlinedAt: !1556)
!1561 = !DILocation(line: 1149, column: 7, scope: !1509, inlinedAt: !1556)
!1562 = !DILocation(line: 0, scope: !1509, inlinedAt: !1556)
!1563 = !DILocation(line: 1152, column: 3, scope: !1509, inlinedAt: !1556)
!1564 = !DILocation(line: 1154, column: 14, scope: !1527, inlinedAt: !1556)
!1565 = !DILocation(line: 1154, column: 18, scope: !1527, inlinedAt: !1556)
!1566 = !DILocation(line: 1154, column: 7, scope: !1509, inlinedAt: !1556)
!1567 = !DILocation(line: 1160, column: 16, scope: !1531, inlinedAt: !1556)
!1568 = !DILocation(line: 1160, column: 22, scope: !1531, inlinedAt: !1556)
!1569 = !DILocation(line: 1160, column: 9, scope: !1532, inlinedAt: !1556)
!1570 = !DILocation(line: 1161, column: 20, scope: !1536, inlinedAt: !1556)
!1571 = !DILocation(line: 1162, column: 5, scope: !1536, inlinedAt: !1556)
!1572 = !DILocation(line: 1321, column: 17, scope: !1254)
!1573 = !DILocation(line: 1326, column: 23, scope: !1574)
!1574 = distinct !DILexicalBlock(scope: !1247, file: !3, line: 1326, column: 17)
!1575 = !DILocation(line: 1326, column: 48, scope: !1574)
!1576 = !DILocation(line: 1326, column: 33, scope: !1574)
!1577 = !DILocation(line: 1326, column: 31, scope: !1574)
!1578 = !DILocation(line: 1326, column: 54, scope: !1574)
!1579 = !DILocation(line: 1326, column: 17, scope: !1247)
!1580 = !DILocation(line: 1329, column: 56, scope: !1247)
!1581 = !DILocation(line: 1329, column: 41, scope: !1247)
!1582 = !DILocation(line: 1329, column: 39, scope: !1247)
!1583 = !DILocation(line: 1330, column: 13, scope: !1247)
!1584 = distinct !{!1584, !1420, !1585}
!1585 = !DILocation(line: 1331, column: 11, scope: !1248)
!1586 = !DILocation(line: 1333, column: 23, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 1333, column: 15)
!1588 = !DILocation(line: 1333, column: 67, scope: !1587)
!1589 = !DILocation(line: 1335, column: 36, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1591, file: !3, line: 1335, column: 17)
!1591 = distinct !DILexicalBlock(scope: !1587, file: !3, line: 1334, column: 68)
!1592 = !DILocation(line: 1338, column: 13, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1590, file: !3, line: 1335, column: 68)
!1594 = !DILocation(line: 0, scope: !1593)
!1595 = !DILocation(line: 1342, column: 13, scope: !1591)
!1596 = !DILocation(line: 1343, column: 32, scope: !1591)
!1597 = !DILocation(line: 1344, column: 13, scope: !1591)
!1598 = !DILocation(line: 1345, column: 13, scope: !1591)
!1599 = !DILocation(line: 1351, column: 9, scope: !1250)
!1600 = !DILocation(line: 942, column: 21, scope: !848, inlinedAt: !1601)
!1601 = distinct !DILocation(line: 1352, column: 9, scope: !1250)
!1602 = !DILocation(line: 942, column: 37, scope: !848, inlinedAt: !1601)
!1603 = !DILocation(line: 945, column: 8, scope: !848, inlinedAt: !1601)
!1604 = !DILocation(line: 962, column: 3, scope: !860, inlinedAt: !1601)
!1605 = !DILocation(line: 977, column: 3, scope: !862, inlinedAt: !1601)
!1606 = !DILocation(line: 963, column: 25, scope: !864, inlinedAt: !1601)
!1607 = !DILocation(line: 963, column: 9, scope: !864, inlinedAt: !1601)
!1608 = !DILocation(line: 963, column: 31, scope: !864, inlinedAt: !1601)
!1609 = !DILocation(line: 963, column: 51, scope: !864, inlinedAt: !1601)
!1610 = !DILocation(line: 963, column: 65, scope: !864, inlinedAt: !1601)
!1611 = !DILocation(line: 963, column: 9, scope: !865, inlinedAt: !1601)
!1612 = !DILocation(line: 964, column: 75, scope: !873, inlinedAt: !1601)
!1613 = !DILocation(line: 964, column: 7, scope: !873, inlinedAt: !1601)
!1614 = !DILocation(line: 966, column: 29, scope: !873, inlinedAt: !1601)
!1615 = !DILocation(line: 967, column: 5, scope: !873, inlinedAt: !1601)
!1616 = !DILocation(line: 962, column: 38, scope: !866, inlinedAt: !1601)
!1617 = !DILocation(line: 962, column: 17, scope: !866, inlinedAt: !1601)
!1618 = !DILocation(line: 978, column: 11, scope: !883, inlinedAt: !1601)
!1619 = !DILocation(line: 978, column: 9, scope: !884, inlinedAt: !1601)
!1620 = !DILocation(line: 981, column: 22, scope: !888, inlinedAt: !1601)
!1621 = !DILocation(line: 981, column: 28, scope: !888, inlinedAt: !1601)
!1622 = !DILocation(line: 981, column: 9, scope: !884, inlinedAt: !1601)
!1623 = !DILocation(line: 982, column: 24, scope: !892, inlinedAt: !1601)
!1624 = !DILocation(line: 982, column: 50, scope: !892, inlinedAt: !1601)
!1625 = !DILocation(line: 982, column: 32, scope: !892, inlinedAt: !1601)
!1626 = !DILocation(line: 982, column: 11, scope: !893, inlinedAt: !1601)
!1627 = !DILocation(line: 977, column: 38, scope: !885, inlinedAt: !1601)
!1628 = !DILocation(line: 989, column: 22, scope: !899, inlinedAt: !1601)
!1629 = !DILocation(line: 989, column: 30, scope: !899, inlinedAt: !1601)
!1630 = !DILocation(line: 989, column: 7, scope: !848, inlinedAt: !1601)
!1631 = !DILocation(line: 991, column: 16, scope: !903, inlinedAt: !1601)
!1632 = !DILocation(line: 991, column: 5, scope: !903, inlinedAt: !1601)
!1633 = !DILocation(line: 992, column: 29, scope: !903, inlinedAt: !1601)
!1634 = !DILocation(line: 992, column: 5, scope: !903, inlinedAt: !1601)
!1635 = !DILocation(line: 992, column: 38, scope: !903, inlinedAt: !1601)
!1636 = !DILocation(line: 994, column: 3, scope: !903, inlinedAt: !1601)
!1637 = !DILocation(line: 0, scope: !1250)
!1638 = !DILocation(line: 1353, column: 28, scope: !1250)
!1639 = !DILocation(line: 1354, column: 9, scope: !1250)
!1640 = !DILocation(line: 1195, column: 38, scope: !1236)
!1641 = !DILocation(line: 1195, column: 19, scope: !1236)
!1642 = distinct !{!1642, !1283, !1643}
!1643 = !DILocation(line: 1356, column: 5, scope: !1237)
!1644 = !DILocation(line: 1361, column: 3, scope: !1213)
!1645 = !DILocation(line: 1362, column: 3, scope: !1213)
!1646 = !DILocation(line: 1363, column: 1, scope: !1213)
!1647 = !DILocation(line: 977, column: 17, scope: !885, inlinedAt: !1601)
