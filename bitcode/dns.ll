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
@__A_VARIABLE = internal global i32 0

; Function Attrs: norecurse noredzone nounwind
define dso_local void @dns_init() local_unnamed_addr #0 !dbg !223 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !227
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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret void, !dbg !256
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.ip_addr* @dns_getserver(i8 zeroext) local_unnamed_addr #1 !dbg !257 {
  %2 = icmp ult i8 %0, 2, !dbg !263
  %3 = zext i8 %0 to i64, !dbg !265
  %4 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %3, !dbg !265
  %5 = select i1 %2, %struct.ip_addr* %4, %struct.ip_addr* @ip_addr_any, !dbg !267
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  ret %struct.ip_addr* %5, !dbg !268
}

; Function Attrs: noredzone nounwind
define dso_local void @dns_tmr() local_unnamed_addr #1 !dbg !269 {
  tail call fastcc void @dns_check_entry(i8 zeroext 0) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 1) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 2) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 3) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 4) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 5) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 6) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 7) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 8) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 9) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 10) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 11) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 12) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 13) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 14) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 15) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 16) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 17) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 18) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 19) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 20) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 21) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 22) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 23) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 24) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 25) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 26) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 27) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 28) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 29) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 30) #8, !dbg !275
  tail call fastcc void @dns_check_entry(i8 zeroext 31) #8, !dbg !275
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  ret void, !dbg !280
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*) local_unnamed_addr #1 !dbg !281 {
  %5 = tail call signext i8 @dns_gethostbyname_addrtype(i8* %0, %struct.ip_addr* %1, void (i8*, %struct.ip_addr*, i8*)* %2, i8* %3, i8 zeroext 2) #9, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret i8 %5, !dbg !300
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname_addrtype(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #1 !dbg !301 {
  %6 = alloca i32, align 4
  %7 = icmp ne %struct.ip_addr* %1, null, !dbg !323
  %8 = icmp ne i8* %0, null, !dbg !325
  %9 = and i1 %8, %7, !dbg !326
  br i1 %9, label %10, label %319, !dbg !326

; <label>:10:                                     ; preds = %5
  %11 = load i8, i8* %0, align 1, !dbg !327, !tbaa !249
  %12 = icmp eq i8 %11, 0, !dbg !327
  br i1 %12, label %319, label %13, !dbg !328

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @strlen(i8* nonnull %0) #8, !dbg !329
  %15 = icmp ugt i64 %14, 255, !dbg !331
  br i1 %15, label %319, label %16, !dbg !333

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @ipaddr_aton(i8* nonnull %0, %struct.ip_addr* nonnull %1) #8, !dbg !334
  %18 = icmp eq i32 %17, 0, !dbg !334
  br i1 %18, label %29, label %19, !dbg !336

; <label>:19:                                     ; preds = %16
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !337
  %21 = load i8, i8* %20, align 4, !dbg !337, !tbaa !340
  %22 = icmp ne i8 %21, 6, !dbg !337
  %23 = icmp eq i8 %4, 0, !dbg !342
  %24 = or i1 %23, %22, !dbg !343
  br i1 %24, label %25, label %319, !dbg !343

; <label>:25:                                     ; preds = %19
  %26 = icmp ne i8 %21, 0, !dbg !344
  %27 = icmp eq i8 %4, 1, !dbg !345
  %28 = or i1 %27, %26, !dbg !346
  br i1 %28, label %29, label %319, !dbg !346

; <label>:29:                                     ; preds = %25, %16
  %30 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %4) #9, !dbg !347
  %31 = icmp eq i8 %30, 0, !dbg !349
  br i1 %31, label %319, label %32, !dbg !350

; <label>:32:                                     ; preds = %29
  %33 = and i8 %4, -2, !dbg !351
  %34 = icmp eq i8 %33, 2, !dbg !351
  br i1 %34, label %35, label %40, !dbg !351

; <label>:35:                                     ; preds = %32
  %36 = icmp eq i8 %4, 2, !dbg !352
  %37 = zext i1 %36 to i8, !dbg !353
  %38 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %37) #9, !dbg !357
  %39 = icmp eq i8 %38, 0, !dbg !359
  br i1 %39, label %319, label %40

; <label>:40:                                     ; preds = %35, %32
  %41 = load i8, i8* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 1), align 4, !dbg !360, !tbaa !340
  %42 = icmp eq i8 %41, 6, !dbg !360
  %43 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0), align 16, !dbg !360, !tbaa !249
  br i1 %42, label %44, label %53, !dbg !363

; <label>:44:                                     ; preds = %40
  %45 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !360
  %46 = or i32 %45, %43, !dbg !360
  %47 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 2), align 8, !dbg !360
  %48 = or i32 %46, %47, !dbg !360
  %49 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !360
  %50 = or i32 %48, %49, !dbg !360
  %51 = icmp eq i32 %50, 0, !dbg !360
  br i1 %51, label %319, label %52, !dbg !360

; <label>:52:                                     ; preds = %53, %44
  br label %57, !dbg !364

; <label>:53:                                     ; preds = %40
  %54 = icmp eq i32 %43, 0, !dbg !360
  br i1 %54, label %319, label %52, !dbg !363

; <label>:55:                                     ; preds = %88
  %56 = load i8, i8* @dns_seqno, align 1
  br label %91, !dbg !398

; <label>:57:                                     ; preds = %52, %88
  %58 = phi i64 [ %89, %88 ], [ 0, %52 ]
  %59 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 3, !dbg !364
  %60 = load i8, i8* %59, align 2, !dbg !364, !tbaa !399
  %61 = icmp eq i8 %60, 2, !dbg !402
  br i1 %61, label %62, label %88, !dbg !403

; <label>:62:                                     ; preds = %57
  %63 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 9, i64 0, !dbg !404
  %64 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %63, i64 256) #8, !dbg !405
  %65 = icmp eq i32 %64, 0, !dbg !406
  br i1 %65, label %66, label %88, !dbg !407

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %58, i32 10, !dbg !408
  %68 = load i8, i8* %67, align 4, !dbg !408, !tbaa !411
  %69 = icmp eq i8 %68, %4, !dbg !412
  br i1 %69, label %75, label %88, !dbg !413

; <label>:70:                                     ; preds = %75
  %71 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %80, i32 0, !dbg !415
  %72 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %71, align 8, !dbg !415, !tbaa !420
  %73 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %72, null, !dbg !423
  %74 = or i64 %76, 2, !dbg !424
  br i1 %73, label %81, label %348, !dbg !425

; <label>:75:                                     ; preds = %66, %358
  %76 = phi i64 [ %357, %358 ], [ 0, %66 ]
  %77 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %76, i32 0, !dbg !415
  %78 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %77, align 16, !dbg !415, !tbaa !420
  %79 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %78, null, !dbg !423
  %80 = or i64 %76, 1, !dbg !424
  br i1 %79, label %81, label %70, !dbg !425

; <label>:81:                                     ; preds = %353, %348, %70, %75
  %82 = phi i64 [ %76, %75 ], [ %80, %70 ], [ %74, %348 ], [ %352, %353 ]
  %83 = phi void (i8*, %struct.ip_addr*, i8*)** [ %77, %75 ], [ %71, %70 ], [ %349, %348 ], [ %354, %353 ], !dbg !415
  %84 = trunc i64 %58 to i8, !dbg !394
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %83, align 8, !dbg !426, !tbaa !420
  %85 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 1, !dbg !428
  store i8* %3, i8** %85, align 8, !dbg !429, !tbaa !430
  %86 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 2, !dbg !431
  store i8 %84, i8* %86, align 8, !dbg !432, !tbaa !433
  %87 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %82, i32 3, !dbg !434
  store i8 %4, i8* %87, align 1, !dbg !434, !tbaa !436
  br label %317, !dbg !437

; <label>:88:                                     ; preds = %358, %66, %62, %57
  %89 = add nuw nsw i64 %58, 1, !dbg !438
  %90 = icmp ult i64 %89, 32, !dbg !439
  br i1 %90, label %57, label %55, !dbg !440, !llvm.loop !441

; <label>:91:                                     ; preds = %343, %55
  %92 = phi i64 [ 0, %55 ], [ %346, %343 ]
  %93 = phi i8 [ 32, %55 ], [ %345, %343 ]
  %94 = phi i8 [ 0, %55 ], [ %344, %343 ]
  %95 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %92, i32 3, !dbg !444
  %96 = load i8, i8* %95, align 2, !dbg !444, !tbaa !399
  switch i8 %96, label %105 [
    i8 0, label %124
    i8 3, label %97
  ], !dbg !446

; <label>:97:                                     ; preds = %91
  %98 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %92, i32 7, !dbg !447
  %99 = load i8, i8* %98, align 2, !dbg !447, !tbaa !448
  %100 = sub i8 %56, %99, !dbg !449
  %101 = icmp ugt i8 %100, %94, !dbg !451
  %102 = select i1 %101, i8 %100, i8 %94, !dbg !453
  %103 = trunc i64 %92 to i8, !dbg !453
  %104 = select i1 %101, i8 %103, i8 %93, !dbg !453
  br label %105, !dbg !454

; <label>:105:                                    ; preds = %97, %91
  %106 = phi i8 [ %102, %97 ], [ %94, %91 ], !dbg !455
  %107 = phi i8 [ %104, %97 ], [ %93, %91 ], !dbg !455
  %108 = or i64 %92, 1, !dbg !456
  %109 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, i32 3, !dbg !444
  %110 = load i8, i8* %109, align 2, !dbg !444, !tbaa !399
  switch i8 %110, label %343 [
    i8 0, label %124
    i8 3, label %335
  ], !dbg !446

; <label>:111:                                    ; preds = %343
  %112 = trunc i64 %346 to i8, !dbg !396
  %113 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, !dbg !457
  %114 = icmp eq i8 %112, 32, !dbg !458
  br i1 %114, label %115, label %128, !dbg !460

; <label>:115:                                    ; preds = %111
  %116 = icmp ugt i8 %345, 31, !dbg !461
  br i1 %116, label %317, label %117, !dbg !464

; <label>:117:                                    ; preds = %115
  %118 = zext i8 %345 to i64, !dbg !465
  %119 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %118, i32 3, !dbg !466
  %120 = load i8, i8* %119, align 2, !dbg !466, !tbaa !399
  %121 = icmp eq i8 %120, 3, !dbg !467
  br i1 %121, label %122, label %317, !dbg !468

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %118, !dbg !465
  br label %128, !dbg !469

; <label>:124:                                    ; preds = %105, %91
  %125 = phi i64 [ %92, %91 ], [ %108, %105 ]
  %126 = trunc i64 %125 to i8, !dbg !394
  %127 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %125, !dbg !457
  br label %128, !dbg !470

; <label>:128:                                    ; preds = %124, %122, %111
  %129 = phi %struct.dns_table_entry* [ %123, %122 ], [ %113, %111 ], [ %127, %124 ], !dbg !472
  %130 = phi i8 [ %345, %122 ], [ %112, %111 ], [ %126, %124 ], !dbg !473
  br label %136, !dbg !475

; <label>:131:                                    ; preds = %136
  %132 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %141, i32 0, !dbg !476
  %133 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %132, align 8, !dbg !476, !tbaa !420
  %134 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %133, null, !dbg !480
  %135 = or i64 %137, 2, !dbg !481
  br i1 %134, label %142, label %323, !dbg !482

; <label>:136:                                    ; preds = %333, %128
  %137 = phi i64 [ 0, %128 ], [ %332, %333 ]
  %138 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %137, i32 0, !dbg !476
  %139 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %138, align 16, !dbg !476, !tbaa !420
  %140 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %139, null, !dbg !480
  %141 = or i64 %137, 1, !dbg !481
  br i1 %140, label %142, label %131, !dbg !482

; <label>:142:                                    ; preds = %328, %323, %131, %136
  %143 = phi i64 [ %137, %136 ], [ %141, %131 ], [ %135, %323 ], [ %327, %328 ]
  %144 = phi void (i8*, %struct.ip_addr*, i8*)** [ %138, %136 ], [ %132, %131 ], [ %324, %323 ], [ %329, %328 ], !dbg !476
  %145 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 2, !dbg !483
  store i8 %130, i8* %145, align 8, !dbg !484, !tbaa !433
  %146 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 3, !dbg !485
  store i8 1, i8* %146, align 2, !dbg !486, !tbaa !399
  %147 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 7, !dbg !487
  store i8 %56, i8* %147, align 2, !dbg !488, !tbaa !448
  %148 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 10, !dbg !489
  store i8 %4, i8* %148, align 4, !dbg !489, !tbaa !411
  %149 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 3, !dbg !491
  store i8 %4, i8* %149, align 1, !dbg !491, !tbaa !436
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %144, align 8, !dbg !493, !tbaa !420
  %150 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %143, i32 1, !dbg !494
  store i8* %3, i8** %150, align 8, !dbg !495, !tbaa !430
  %151 = icmp ult i64 %14, 255, !dbg !496
  %152 = select i1 %151, i64 %14, i64 255, !dbg !496
  %153 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 9, i64 0, !dbg !498
  %154 = tail call i8* @memcpy(i8* nonnull %153, i8* %0, i64 %152) #8, !dbg !498
  %155 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 9, i64 %152, !dbg !499
  store i8 0, i8* %155, align 1, !dbg !500, !tbaa !249
  %156 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 0), align 16, !dbg !509, !tbaa !514
  %157 = icmp eq %struct.udp_pcb* %156, null, !dbg !515
  br i1 %157, label %161, label %158, !dbg !516

; <label>:158:                                    ; preds = %142
  %159 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 1), align 8, !dbg !509, !tbaa !514
  %160 = icmp eq %struct.udp_pcb* %159, null, !dbg !515
  br i1 %160, label %161, label %227, !dbg !516

; <label>:161:                                    ; preds = %314, %311, %308, %305, %302, %299, %296, %293, %290, %287, %284, %281, %278, %275, %272, %269, %266, %263, %260, %257, %254, %251, %248, %245, %242, %239, %236, %233, %230, %227, %158, %142
  %162 = phi i8 [ 0, %142 ], [ 1, %158 ], [ 2, %227 ], [ 3, %230 ], [ 4, %233 ], [ 5, %236 ], [ 6, %239 ], [ 7, %242 ], [ 8, %245 ], [ 9, %248 ], [ 10, %251 ], [ 11, %254 ], [ 12, %257 ], [ 13, %260 ], [ 14, %263 ], [ 15, %266 ], [ 16, %269 ], [ 17, %272 ], [ 18, %275 ], [ 19, %278 ], [ 20, %281 ], [ 21, %284 ], [ 22, %287 ], [ 23, %290 ], [ 24, %293 ], [ 25, %296 ], [ 26, %299 ], [ 27, %302 ], [ 28, %305 ], [ 29, %308 ], [ 30, %311 ], [ 31, %314 ]
  %163 = phi i64 [ 0, %142 ], [ 1, %158 ], [ 2, %227 ], [ 3, %230 ], [ 4, %233 ], [ 5, %236 ], [ 6, %239 ], [ 7, %242 ], [ 8, %245 ], [ 9, %248 ], [ 10, %251 ], [ 11, %254 ], [ 12, %257 ], [ 13, %260 ], [ 14, %263 ], [ 15, %266 ], [ 16, %269 ], [ 17, %272 ], [ 18, %275 ], [ 19, %278 ], [ 20, %281 ], [ 21, %284 ], [ 22, %287 ], [ 23, %290 ], [ 24, %293 ], [ 25, %296 ], [ 26, %299 ], [ 27, %302 ], [ 28, %305 ], [ 29, %308 ], [ 30, %311 ], [ 31, %314 ], !dbg !509
  %164 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %163, !dbg !509
  %165 = tail call %struct.udp_pcb* @udp_new_ip_type(i8 zeroext 46) #8, !dbg !517
  %166 = icmp eq %struct.udp_pcb* %165, null, !dbg !530
  br i1 %166, label %197, label %167, !dbg !532

; <label>:167:                                    ; preds = %161
  %168 = bitcast i32* %6 to i8*
  br label %169, !dbg !533

; <label>:169:                                    ; preds = %194, %167
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %168) #7, !dbg !533
  %170 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !552, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  %171 = icmp ult i64 %170, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !563
  br i1 %171, label %178, label %172, !dbg !563

; <label>:172:                                    ; preds = %169
  %173 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !564, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !567
  %174 = icmp ugt i64 %173, ptrtoint ([0 x i8]* @_end to i64), !dbg !563
  br i1 %174, label %178, label %175, !dbg !568

; <label>:175:                                    ; preds = %172
  %176 = call i64 @ukplat_lcpu_save_irqf() #8, !dbg !569
  %177 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !578
  call void @ukplat_lcpu_restore_irqf(i64 %176) #8, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !581
  store i32 %177, i32* %6, align 4, !dbg !583, !tbaa !252
  br label %187, !dbg !583

; <label>:178:                                    ; preds = %172, %169
  %179 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !584, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !594
  %180 = and i64 %179, -65536, !dbg !596
  %181 = or i64 %180, 4097, !dbg !596
  %182 = add nsw i64 %181, -1, !dbg !596
  %183 = inttoptr i64 %182 to i32*, !dbg !597
  %184 = load i32, i32* %183, align 4096, !dbg !598, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !599
  %185 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %184, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !600, !srcloc !601
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %185) #7, !dbg !602, !srcloc !605
  %186 = load i32, i32* %6, align 4, !dbg !606, !tbaa !252
  br label %187

; <label>:187:                                    ; preds = %178, %175
  %188 = phi i32 [ %186, %178 ], [ %177, %175 ], !dbg !606
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %168) #7, !dbg !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !608
  %189 = and i32 %188, 64512, !dbg !609
  %190 = icmp eq i32 %189, 0, !dbg !609
  br i1 %190, label %194, label %191, !dbg !611

; <label>:191:                                    ; preds = %187
  %192 = trunc i32 %188 to i16, !dbg !612
  %193 = call signext i8 @udp_bind(%struct.udp_pcb* nonnull %165, %struct.ip_addr* nonnull @ip_addr_any_type, i16 zeroext %192) #8, !dbg !614
  br label %194, !dbg !617

; <label>:194:                                    ; preds = %191, %187
  %195 = phi i8 [ %193, %191 ], [ -8, %187 ], !dbg !618
  switch i8 %195, label %196 [
    i8 -8, label %169
    i8 0, label %219
  ], !dbg !620

; <label>:196:                                    ; preds = %194
  call void @udp_remove(%struct.udp_pcb* nonnull %165) #8, !dbg !621
  br label %197, !dbg !624

; <label>:197:                                    ; preds = %196, %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store %struct.udp_pcb* null, %struct.udp_pcb** %164, align 8, !dbg !626, !tbaa !514
  br label %198, !dbg !627

; <label>:198:                                    ; preds = %314, %197
  %199 = load i8, i8* @dns_last_pcb_idx, align 1, !dbg !628, !tbaa !249
  br label %209, !dbg !631

; <label>:200:                                    ; preds = %209
  %201 = add i8 %214, 1, !dbg !632
  %202 = icmp ugt i8 %201, 31, !dbg !634
  %203 = select i1 %202, i8 0, i8 %201, !dbg !637
  %204 = zext i8 %203 to i64, !dbg !638
  %205 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %204, !dbg !638
  %206 = load %struct.udp_pcb*, %struct.udp_pcb** %205, align 8, !dbg !638, !tbaa !514
  %207 = icmp eq %struct.udp_pcb* %206, null, !dbg !640
  %208 = add nuw nsw i8 %211, 2, !dbg !641
  br i1 %207, label %321, label %222, !dbg !642

; <label>:209:                                    ; preds = %321, %198
  %210 = phi i8 [ %199, %198 ], [ %203, %321 ]
  %211 = phi i8 [ 0, %198 ], [ %208, %321 ]
  %212 = add i8 %210, 1, !dbg !632
  %213 = icmp ugt i8 %212, 31, !dbg !634
  %214 = select i1 %213, i8 0, i8 %212, !dbg !637
  %215 = zext i8 %214 to i64, !dbg !638
  %216 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %215, !dbg !638
  %217 = load %struct.udp_pcb*, %struct.udp_pcb** %216, align 8, !dbg !638, !tbaa !514
  %218 = icmp eq %struct.udp_pcb* %217, null, !dbg !640
  br i1 %218, label %200, label %222, !dbg !642

; <label>:219:                                    ; preds = %194
  call void @udp_recv(%struct.udp_pcb* nonnull %165, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* nonnull @dns_recv, i8* null) #8, !dbg !643
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store %struct.udp_pcb* %165, %struct.udp_pcb** %164, align 8, !dbg !626, !tbaa !514
  br label %222, !dbg !644

; <label>:220:                                    ; preds = %321
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %221 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 8, !dbg !646
  store i8 32, i8* %221, align 1, !dbg !647, !tbaa !648
  store i8 0, i8* %146, align 2, !dbg !649, !tbaa !399
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %144, align 8, !dbg !652, !tbaa !420
  br label %317, !dbg !653

; <label>:222:                                    ; preds = %209, %200, %219
  %223 = phi i8 [ %162, %219 ], [ %214, %209 ], [ %203, %200 ]
  store i8 %223, i8* @dns_last_pcb_idx, align 1, !dbg !455, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  %224 = getelementptr inbounds %struct.dns_table_entry, %struct.dns_table_entry* %129, i64 0, i32 8, !dbg !646
  store i8 %223, i8* %224, align 1, !dbg !647, !tbaa !648
  %225 = load i8, i8* @dns_seqno, align 1, !dbg !654, !tbaa !249
  %226 = add i8 %225, 1, !dbg !654
  store i8 %226, i8* @dns_seqno, align 1, !dbg !654, !tbaa !249
  call fastcc void @dns_check_entry(i8 zeroext %130) #8, !dbg !655
  br label %317, !dbg !656

; <label>:227:                                    ; preds = %158
  %228 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 2), align 16, !dbg !509, !tbaa !514
  %229 = icmp eq %struct.udp_pcb* %228, null, !dbg !515
  br i1 %229, label %161, label %230, !dbg !516

; <label>:230:                                    ; preds = %227
  %231 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 3), align 8, !dbg !509, !tbaa !514
  %232 = icmp eq %struct.udp_pcb* %231, null, !dbg !515
  br i1 %232, label %161, label %233, !dbg !516

; <label>:233:                                    ; preds = %230
  %234 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 4), align 16, !dbg !509, !tbaa !514
  %235 = icmp eq %struct.udp_pcb* %234, null, !dbg !515
  br i1 %235, label %161, label %236, !dbg !516

; <label>:236:                                    ; preds = %233
  %237 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 5), align 8, !dbg !509, !tbaa !514
  %238 = icmp eq %struct.udp_pcb* %237, null, !dbg !515
  br i1 %238, label %161, label %239, !dbg !516

; <label>:239:                                    ; preds = %236
  %240 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 6), align 16, !dbg !509, !tbaa !514
  %241 = icmp eq %struct.udp_pcb* %240, null, !dbg !515
  br i1 %241, label %161, label %242, !dbg !516

; <label>:242:                                    ; preds = %239
  %243 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 7), align 8, !dbg !509, !tbaa !514
  %244 = icmp eq %struct.udp_pcb* %243, null, !dbg !515
  br i1 %244, label %161, label %245, !dbg !516

; <label>:245:                                    ; preds = %242
  %246 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 8), align 16, !dbg !509, !tbaa !514
  %247 = icmp eq %struct.udp_pcb* %246, null, !dbg !515
  br i1 %247, label %161, label %248, !dbg !516

; <label>:248:                                    ; preds = %245
  %249 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 9), align 8, !dbg !509, !tbaa !514
  %250 = icmp eq %struct.udp_pcb* %249, null, !dbg !515
  br i1 %250, label %161, label %251, !dbg !516

; <label>:251:                                    ; preds = %248
  %252 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 10), align 16, !dbg !509, !tbaa !514
  %253 = icmp eq %struct.udp_pcb* %252, null, !dbg !515
  br i1 %253, label %161, label %254, !dbg !516

; <label>:254:                                    ; preds = %251
  %255 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 11), align 8, !dbg !509, !tbaa !514
  %256 = icmp eq %struct.udp_pcb* %255, null, !dbg !515
  br i1 %256, label %161, label %257, !dbg !516

; <label>:257:                                    ; preds = %254
  %258 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 12), align 16, !dbg !509, !tbaa !514
  %259 = icmp eq %struct.udp_pcb* %258, null, !dbg !515
  br i1 %259, label %161, label %260, !dbg !516

; <label>:260:                                    ; preds = %257
  %261 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 13), align 8, !dbg !509, !tbaa !514
  %262 = icmp eq %struct.udp_pcb* %261, null, !dbg !515
  br i1 %262, label %161, label %263, !dbg !516

; <label>:263:                                    ; preds = %260
  %264 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 14), align 16, !dbg !509, !tbaa !514
  %265 = icmp eq %struct.udp_pcb* %264, null, !dbg !515
  br i1 %265, label %161, label %266, !dbg !516

; <label>:266:                                    ; preds = %263
  %267 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 15), align 8, !dbg !509, !tbaa !514
  %268 = icmp eq %struct.udp_pcb* %267, null, !dbg !515
  br i1 %268, label %161, label %269, !dbg !516

; <label>:269:                                    ; preds = %266
  %270 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 16), align 16, !dbg !509, !tbaa !514
  %271 = icmp eq %struct.udp_pcb* %270, null, !dbg !515
  br i1 %271, label %161, label %272, !dbg !516

; <label>:272:                                    ; preds = %269
  %273 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 17), align 8, !dbg !509, !tbaa !514
  %274 = icmp eq %struct.udp_pcb* %273, null, !dbg !515
  br i1 %274, label %161, label %275, !dbg !516

; <label>:275:                                    ; preds = %272
  %276 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 18), align 16, !dbg !509, !tbaa !514
  %277 = icmp eq %struct.udp_pcb* %276, null, !dbg !515
  br i1 %277, label %161, label %278, !dbg !516

; <label>:278:                                    ; preds = %275
  %279 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 19), align 8, !dbg !509, !tbaa !514
  %280 = icmp eq %struct.udp_pcb* %279, null, !dbg !515
  br i1 %280, label %161, label %281, !dbg !516

; <label>:281:                                    ; preds = %278
  %282 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 20), align 16, !dbg !509, !tbaa !514
  %283 = icmp eq %struct.udp_pcb* %282, null, !dbg !515
  br i1 %283, label %161, label %284, !dbg !516

; <label>:284:                                    ; preds = %281
  %285 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 21), align 8, !dbg !509, !tbaa !514
  %286 = icmp eq %struct.udp_pcb* %285, null, !dbg !515
  br i1 %286, label %161, label %287, !dbg !516

; <label>:287:                                    ; preds = %284
  %288 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 22), align 16, !dbg !509, !tbaa !514
  %289 = icmp eq %struct.udp_pcb* %288, null, !dbg !515
  br i1 %289, label %161, label %290, !dbg !516

; <label>:290:                                    ; preds = %287
  %291 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 23), align 8, !dbg !509, !tbaa !514
  %292 = icmp eq %struct.udp_pcb* %291, null, !dbg !515
  br i1 %292, label %161, label %293, !dbg !516

; <label>:293:                                    ; preds = %290
  %294 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 24), align 16, !dbg !509, !tbaa !514
  %295 = icmp eq %struct.udp_pcb* %294, null, !dbg !515
  br i1 %295, label %161, label %296, !dbg !516

; <label>:296:                                    ; preds = %293
  %297 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 25), align 8, !dbg !509, !tbaa !514
  %298 = icmp eq %struct.udp_pcb* %297, null, !dbg !515
  br i1 %298, label %161, label %299, !dbg !516

; <label>:299:                                    ; preds = %296
  %300 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 26), align 16, !dbg !509, !tbaa !514
  %301 = icmp eq %struct.udp_pcb* %300, null, !dbg !515
  br i1 %301, label %161, label %302, !dbg !516

; <label>:302:                                    ; preds = %299
  %303 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 27), align 8, !dbg !509, !tbaa !514
  %304 = icmp eq %struct.udp_pcb* %303, null, !dbg !515
  br i1 %304, label %161, label %305, !dbg !516

; <label>:305:                                    ; preds = %302
  %306 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 28), align 16, !dbg !509, !tbaa !514
  %307 = icmp eq %struct.udp_pcb* %306, null, !dbg !515
  br i1 %307, label %161, label %308, !dbg !516

; <label>:308:                                    ; preds = %305
  %309 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 29), align 8, !dbg !509, !tbaa !514
  %310 = icmp eq %struct.udp_pcb* %309, null, !dbg !515
  br i1 %310, label %161, label %311, !dbg !516

; <label>:311:                                    ; preds = %308
  %312 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 30), align 16, !dbg !509, !tbaa !514
  %313 = icmp eq %struct.udp_pcb* %312, null, !dbg !515
  br i1 %313, label %161, label %314, !dbg !516

; <label>:314:                                    ; preds = %311
  %315 = load %struct.udp_pcb*, %struct.udp_pcb** getelementptr inbounds ([32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 31), align 8, !dbg !509, !tbaa !514
  %316 = icmp eq %struct.udp_pcb* %315, null, !dbg !515
  br i1 %316, label %161, label %198, !dbg !516

; <label>:317:                                    ; preds = %333, %81, %115, %117, %220, %222
  %318 = phi i8 [ -5, %81 ], [ -1, %220 ], [ -5, %222 ], [ -1, %117 ], [ -1, %115 ], [ -1, %333 ], !dbg !455
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !657
  br label %319, !dbg !658

; <label>:319:                                    ; preds = %35, %53, %44, %29, %19, %25, %13, %5, %10, %317
  %320 = phi i8 [ %318, %317 ], [ 0, %35 ], [ -16, %10 ], [ -16, %5 ], [ -16, %13 ], [ 0, %25 ], [ 0, %19 ], [ 0, %29 ], [ -6, %44 ], [ -6, %53 ], !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  ret i8 %320, !dbg !661

; <label>:321:                                    ; preds = %200
  %322 = icmp ult i8 %208, 32, !dbg !662
  br i1 %322, label %209, label %220, !dbg !631, !llvm.loop !663

; <label>:323:                                    ; preds = %131
  %324 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %135, i32 0, !dbg !476
  %325 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %324, align 16, !dbg !476, !tbaa !420
  %326 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %325, null, !dbg !480
  %327 = or i64 %137, 3, !dbg !481
  br i1 %326, label %142, label %328, !dbg !482

; <label>:328:                                    ; preds = %323
  %329 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %327, i32 0, !dbg !476
  %330 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %329, align 8, !dbg !476, !tbaa !420
  %331 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %330, null, !dbg !480
  %332 = add nuw nsw i64 %137, 4, !dbg !481
  br i1 %331, label %142, label %333, !dbg !482

; <label>:333:                                    ; preds = %328
  %334 = icmp ult i64 %332, 32, !dbg !666
  br i1 %334, label %136, label %317, !dbg !475, !llvm.loop !667

; <label>:335:                                    ; preds = %105
  %336 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %108, i32 7, !dbg !447
  %337 = load i8, i8* %336, align 2, !dbg !447, !tbaa !448
  %338 = sub i8 %56, %337, !dbg !449
  %339 = icmp ugt i8 %338, %106, !dbg !451
  %340 = select i1 %339, i8 %338, i8 %106, !dbg !453
  %341 = trunc i64 %108 to i8, !dbg !453
  %342 = select i1 %339, i8 %341, i8 %107, !dbg !453
  br label %343, !dbg !454

; <label>:343:                                    ; preds = %335, %105
  %344 = phi i8 [ %340, %335 ], [ %106, %105 ], !dbg !455
  %345 = phi i8 [ %342, %335 ], [ %107, %105 ], !dbg !455
  %346 = add nuw nsw i64 %92, 2, !dbg !456
  %347 = icmp ult i64 %346, 32, !dbg !670
  br i1 %347, label %91, label %111, !dbg !398, !llvm.loop !671

; <label>:348:                                    ; preds = %70
  %349 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %74, i32 0, !dbg !415
  %350 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %349, align 16, !dbg !415, !tbaa !420
  %351 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %350, null, !dbg !423
  %352 = or i64 %76, 3, !dbg !424
  br i1 %351, label %81, label %353, !dbg !425

; <label>:353:                                    ; preds = %348
  %354 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %352, i32 0, !dbg !415
  %355 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %354, align 8, !dbg !415, !tbaa !420
  %356 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %355, null, !dbg !423
  %357 = add nuw nsw i64 %76, 4, !dbg !424
  br i1 %356, label %81, label %358, !dbg !425

; <label>:358:                                    ; preds = %353
  %359 = icmp ult i64 %357, 32, !dbg !674
  br i1 %359, label %75, label %88, !dbg !675, !llvm.loop !676
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_lookup(i8*, %struct.ip_addr*, i8 zeroext) unnamed_addr #1 !dbg !679 {
  br label %4, !dbg !691

; <label>:4:                                      ; preds = %3, %46
  %5 = phi i64 [ 0, %3 ], [ %47, %46 ]
  %6 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 3, !dbg !693
  %7 = load i8, i8* %6, align 2, !dbg !693, !tbaa !399
  %8 = icmp eq i8 %7, 3, !dbg !697
  br i1 %8, label %9, label %46, !dbg !698

; <label>:9:                                      ; preds = %4
  %10 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 9, i64 0, !dbg !699
  %11 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %10, i64 256) #8, !dbg !700
  %12 = icmp eq i32 %11, 0, !dbg !701
  br i1 %12, label %13, label %46, !dbg !702

; <label>:13:                                     ; preds = %9
  %14 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 1, !dbg !703
  %15 = load i8, i8* %14, align 4, !dbg !703, !tbaa !704
  %16 = icmp eq i8 %15, 6, !dbg !703
  br i1 %16, label %17, label %18, !dbg !705

; <label>:17:                                     ; preds = %13
  switch i8 %2, label %46 [
    i8 3, label %19
    i8 1, label %19
  ], !dbg !703

; <label>:18:                                     ; preds = %13
  switch i8 %2, label %19 [
    i8 3, label %46
    i8 1, label %46
  ], !dbg !703

; <label>:19:                                     ; preds = %18, %17, %17
  %20 = icmp eq %struct.ip_addr* %1, null, !dbg !706
  br i1 %20, label %49, label %21, !dbg !709

; <label>:21:                                     ; preds = %19
  %22 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !710
  store i8 %15, i8* %22, align 4, !dbg !710, !tbaa !340
  %23 = load i8, i8* %14, align 4, !dbg !714, !tbaa !704
  %24 = icmp eq i8 %23, 6, !dbg !714
  %25 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !716
  %26 = load i32, i32* %25, align 4, !dbg !716, !tbaa !249
  %27 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !716
  store i32 %26, i32* %27, align 4, !dbg !716, !tbaa !249
  br i1 %24, label %28, label %41, !dbg !719

; <label>:28:                                     ; preds = %21
  %29 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !716
  %30 = load i32, i32* %29, align 4, !dbg !716, !tbaa !249
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !716
  store i32 %30, i32* %31, align 4, !dbg !716, !tbaa !249
  %32 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !716
  %33 = load i32, i32* %32, align 4, !dbg !716, !tbaa !249
  %34 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !716
  store i32 %33, i32* %34, align 4, !dbg !716, !tbaa !249
  %35 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !716
  %36 = load i32, i32* %35, align 4, !dbg !716, !tbaa !249
  %37 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !716
  store i32 %36, i32* %37, align 4, !dbg !716, !tbaa !249
  %38 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %5, i32 1, i32 0, i32 0, i32 1, !dbg !716
  %39 = load i8, i8* %38, align 4, !dbg !716, !tbaa !249
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !716
  store i8 %39, i8* %40, align 4, !dbg !716, !tbaa !249
  br label %49, !dbg !720

; <label>:41:                                     ; preds = %21
  %42 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !721
  store i32 0, i32* %42, align 4, !dbg !721, !tbaa !249
  %43 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !721
  store i32 0, i32* %43, align 4, !dbg !721, !tbaa !249
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !721
  store i32 0, i32* %44, align 4, !dbg !721, !tbaa !249
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !721
  store i8 0, i8* %45, align 4, !dbg !721, !tbaa !249
  br label %49

; <label>:46:                                     ; preds = %18, %18, %17, %4, %9
  %47 = add nuw nsw i64 %5, 1, !dbg !724
  %48 = icmp ult i64 %47, 32, !dbg !725
  br i1 %48, label %4, label %49, !dbg !691, !llvm.loop !726

; <label>:49:                                     ; preds = %46, %41, %28, %19
  %50 = phi i8 [ 0, %19 ], [ 0, %28 ], [ 0, %41 ], [ -16, %46 ], !dbg !728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  ret i8 %50, !dbg !729
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_check_entry(i8 zeroext) unnamed_addr #1 !dbg !730 {
  %2 = alloca i32, align 4
  %3 = zext i8 %0 to i64, !dbg !738
  %4 = icmp ult i8 %0, 32, !dbg !739
  br i1 %4, label %6, label %5, !dbg !742

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9, !dbg !743
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !746
  tail call void @ukplat_terminate(i32 3) #10, !dbg !746
  unreachable, !dbg !746

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 3, !dbg !750
  %8 = load i8, i8* %7, align 2, !dbg !750, !tbaa !399
  switch i8 %8, label %151 [
    i8 1, label %9
    i8 2, label %54
    i8 3, label %143
    i8 0, label %152
  ], !dbg !751

; <label>:9:                                      ; preds = %6
  %10 = bitcast i32* %2 to i8*
  br label %12, !dbg !752

; <label>:11:                                     ; preds = %153, %38
  br label %12, !dbg !761

; <label>:12:                                     ; preds = %11, %9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !761
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !763, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !767
  br i1 %14, label %21, label %15, !dbg !767

; <label>:15:                                     ; preds = %12
  %16 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !768, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !767
  br i1 %17, label %21, label %18, !dbg !772

; <label>:18:                                     ; preds = %15
  %19 = call i64 @ukplat_lcpu_save_irqf() #8, !dbg !773
  %20 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !776
  call void @ukplat_lcpu_restore_irqf(i64 %19) #8, !dbg !778
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  store i32 %20, i32* %2, align 4, !dbg !781, !tbaa !252
  br label %30, !dbg !781

; <label>:21:                                     ; preds = %15, %12
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !782, !srcloc !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  %23 = and i64 %22, -65536, !dbg !788
  %24 = or i64 %23, 4097, !dbg !788
  %25 = add nsw i64 %24, -1, !dbg !788
  %26 = inttoptr i64 %25 to i32*, !dbg !789
  %27 = load i32, i32* %26, align 4096, !dbg !790, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !791
  %28 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %27, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !792, !srcloc !601
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %28) #7, !dbg !793, !srcloc !605
  %29 = load i32, i32* %2, align 4, !dbg !794, !tbaa !252
  br label %30

; <label>:30:                                     ; preds = %21, %18
  %31 = phi i32 [ %29, %21 ], [ %20, %18 ], !dbg !794
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !795
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !796
  %32 = trunc i32 %31 to i16, !dbg !797
  br label %33, !dbg !800

; <label>:33:                                     ; preds = %157, %30
  %34 = phi i64 [ 0, %30 ], [ %158, %157 ]
  %35 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 3, !dbg !802
  %36 = load i8, i8* %35, align 2, !dbg !802, !tbaa !399
  %37 = icmp eq i8 %36, 2, !dbg !806
  br i1 %37, label %38, label %42, !dbg !807

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 2, !dbg !808
  %40 = load i16, i16* %39, align 4, !dbg !808, !tbaa !809
  %41 = icmp eq i16 %40, %32, !dbg !810
  br i1 %41, label %11, label %42, !dbg !811

; <label>:42:                                     ; preds = %38, %33
  %43 = or i64 %34, 1, !dbg !812
  %44 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 3, !dbg !802
  %45 = load i8, i8* %44, align 2, !dbg !802, !tbaa !399
  %46 = icmp eq i8 %45, 2, !dbg !806
  br i1 %46, label %153, label %157, !dbg !807

; <label>:47:                                     ; preds = %157
  %48 = trunc i32 %31 to i16, !dbg !797
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 2, !dbg !814
  store i16 %48, i16* %49, align 4, !dbg !815, !tbaa !809
  store i8 2, i8* %7, align 2, !dbg !816, !tbaa !399
  %50 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !817
  store i8 0, i8* %50, align 1, !dbg !818, !tbaa !819
  %51 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !820
  store i8 1, i8* %51, align 8, !dbg !821, !tbaa !822
  %52 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !823
  store i8 0, i8* %52, align 1, !dbg !824, !tbaa !825
  %53 = call fastcc signext i8 @dns_send(i8 zeroext %0) #9, !dbg !826
  br label %152, !dbg !828

; <label>:54:                                     ; preds = %6
  %55 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !829
  %56 = load i8, i8* %55, align 8, !dbg !831, !tbaa !822
  %57 = add i8 %56, -1, !dbg !831
  store i8 %57, i8* %55, align 8, !dbg !831, !tbaa !822
  %58 = icmp eq i8 %57, 0, !dbg !832
  br i1 %58, label %59, label %152, !dbg !833

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !834
  %61 = load i8, i8* %60, align 1, !dbg !837, !tbaa !825
  %62 = add i8 %61, 1, !dbg !837
  store i8 %62, i8* %60, align 1, !dbg !837, !tbaa !825
  %63 = icmp eq i8 %62, 4, !dbg !838
  br i1 %63, label %64, label %140, !dbg !839

; <label>:64:                                     ; preds = %59
  %65 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !850
  %66 = load i8, i8* %65, align 1, !dbg !850, !tbaa !819
  %67 = zext i8 %66 to i32, !dbg !854
  %68 = add nuw nsw i32 %67, 1, !dbg !855
  %69 = icmp ult i32 %68, 2, !dbg !856
  br i1 %69, label %70, label %94, !dbg !857

; <label>:70:                                     ; preds = %64
  %71 = zext i32 %68 to i64, !dbg !858
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 1, !dbg !858
  %73 = load i8, i8* %72, align 4, !dbg !858, !tbaa !340
  %74 = icmp eq i8 %73, 6, !dbg !858
  %75 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 0, !dbg !858
  %76 = load i32, i32* %75, align 8, !dbg !858, !tbaa !249
  %77 = icmp eq i32 %76, 0, !dbg !858
  br i1 %74, label %78, label %91, !dbg !859

; <label>:78:                                     ; preds = %70
  br i1 %77, label %79, label %92, !dbg !858

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 1, !dbg !858
  %81 = load i32, i32* %80, align 4, !dbg !858, !tbaa !249
  %82 = icmp eq i32 %81, 0, !dbg !858
  br i1 %82, label %83, label %92, !dbg !858

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 2, !dbg !858
  %85 = load i32, i32* %84, align 8, !dbg !858, !tbaa !249
  %86 = icmp eq i32 %85, 0, !dbg !858
  br i1 %86, label %87, label %92, !dbg !858

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 3, !dbg !858
  %89 = load i32, i32* %88, align 4, !dbg !858, !tbaa !249
  %90 = icmp eq i32 %89, 0, !dbg !858
  br i1 %90, label %94, label %92, !dbg !858

; <label>:91:                                     ; preds = %70
  br i1 %77, label %94, label %92, !dbg !859

; <label>:92:                                     ; preds = %91, %87, %83, %79, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %93 = add i8 %66, 1, !dbg !861
  store i8 %93, i8* %65, align 1, !dbg !861, !tbaa !819
  store i8 1, i8* %55, align 8, !dbg !863, !tbaa !822
  store i8 0, i8* %60, align 1, !dbg !864, !tbaa !825
  br label %141, !dbg !865

; <label>:94:                                     ; preds = %87, %91, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !860
  %95 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 9, i64 0
  br label %98, !dbg !878

; <label>:96:                                     ; preds = %110
  %97 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 8
  br label %113, !dbg !880

; <label>:98:                                     ; preds = %110, %94
  %99 = phi i64 [ 0, %94 ], [ %111, %110 ]
  %100 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 0, !dbg !882
  %101 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %100, align 8, !dbg !882, !tbaa !420
  %102 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %101, null, !dbg !886
  br i1 %102, label %110, label %103, !dbg !887

; <label>:103:                                    ; preds = %98
  %104 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 2, !dbg !888
  %105 = load i8, i8* %104, align 8, !dbg !888, !tbaa !433
  %106 = icmp eq i8 %105, %0, !dbg !889
  br i1 %106, label %107, label %110, !dbg !890

; <label>:107:                                    ; preds = %103
  %108 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %99, i32 1, !dbg !891
  %109 = load i8*, i8** %108, align 8, !dbg !891, !tbaa !430
  tail call void %101(i8* nonnull %95, %struct.ip_addr* null, i8* %109) #8, !dbg !893
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %100, align 8, !dbg !894, !tbaa !420
  br label %110, !dbg !895

; <label>:110:                                    ; preds = %107, %103, %98
  %111 = add nuw nsw i64 %99, 1, !dbg !896
  %112 = icmp eq i64 %111, 32, !dbg !897
  br i1 %112, label %96, label %98, !dbg !878, !llvm.loop !898

; <label>:113:                                    ; preds = %169, %96
  %114 = phi i64 [ 0, %96 ], [ %170, %169 ]
  %115 = icmp eq i64 %114, %3, !dbg !901
  br i1 %115, label %125, label %116, !dbg !905

; <label>:116:                                    ; preds = %113
  %117 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %114, i32 3, !dbg !906
  %118 = load i8, i8* %117, align 2, !dbg !906, !tbaa !399
  %119 = icmp eq i8 %118, 2, !dbg !908
  br i1 %119, label %120, label %125, !dbg !909

; <label>:120:                                    ; preds = %116
  %121 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %114, i32 8, !dbg !910
  %122 = load i8, i8* %121, align 1, !dbg !910, !tbaa !648
  %123 = load i8, i8* %97, align 1, !dbg !913, !tbaa !648
  %124 = icmp eq i8 %122, %123, !dbg !914
  br i1 %124, label %138, label %125, !dbg !915

; <label>:125:                                    ; preds = %120, %116, %113
  %126 = or i64 %114, 1, !dbg !916
  %127 = icmp eq i64 %126, %3, !dbg !901
  br i1 %127, label %169, label %160, !dbg !905

; <label>:128:                                    ; preds = %169
  %129 = load i8, i8* %97, align 1, !dbg !917, !tbaa !648
  %130 = icmp ult i8 %129, 32, !dbg !919
  br i1 %130, label %131, label %139, !dbg !920

; <label>:131:                                    ; preds = %128
  %132 = zext i8 %129 to i64, !dbg !921
  %133 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %132, !dbg !921
  %134 = load %struct.udp_pcb*, %struct.udp_pcb** %133, align 8, !dbg !921, !tbaa !514
  tail call void @udp_remove(%struct.udp_pcb* %134) #8, !dbg !923
  %135 = load i8, i8* %97, align 1, !dbg !924, !tbaa !648
  %136 = zext i8 %135 to i64, !dbg !925
  %137 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %136, !dbg !925
  store %struct.udp_pcb* null, %struct.udp_pcb** %137, align 8, !dbg !926, !tbaa !514
  br label %138, !dbg !927

; <label>:138:                                    ; preds = %120, %164, %131
  store i8 32, i8* %97, align 1, !dbg !928, !tbaa !648
  br label %139, !dbg !929

; <label>:139:                                    ; preds = %138, %128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  store i8 0, i8* %7, align 2, !dbg !930, !tbaa !399
  br label %152, !dbg !931

; <label>:140:                                    ; preds = %59
  store i8 %62, i8* %55, align 8, !dbg !932, !tbaa !822
  br label %141

; <label>:141:                                    ; preds = %140, %92
  %142 = tail call fastcc signext i8 @dns_send(i8 zeroext %0) #9, !dbg !934
  br label %152, !dbg !935

; <label>:143:                                    ; preds = %6
  %144 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 0, !dbg !936
  %145 = load i32, i32* %144, align 8, !dbg !936, !tbaa !938
  %146 = icmp eq i32 %145, 0, !dbg !939
  br i1 %146, label %150, label %147, !dbg !940

; <label>:147:                                    ; preds = %143
  %148 = add i32 %145, -1, !dbg !941
  store i32 %148, i32* %144, align 8, !dbg !941, !tbaa !938
  %149 = icmp eq i32 %148, 0, !dbg !942
  br i1 %149, label %150, label %152, !dbg !943

; <label>:150:                                    ; preds = %147, %143
  store i8 0, i8* %7, align 2, !dbg !944, !tbaa !399
  br label %152, !dbg !946

; <label>:151:                                    ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !947
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !952
  tail call void @ukplat_terminate(i32 3) #10, !dbg !952
  unreachable, !dbg !952

; <label>:152:                                    ; preds = %147, %150, %54, %141, %6, %139, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !956
  ret void, !dbg !956

; <label>:153:                                    ; preds = %42
  %154 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 2, !dbg !808
  %155 = load i16, i16* %154, align 4, !dbg !808, !tbaa !809
  %156 = icmp eq i16 %155, %32, !dbg !810
  br i1 %156, label %11, label %157, !dbg !811

; <label>:157:                                    ; preds = %153, %42
  %158 = add nuw nsw i64 %34, 2, !dbg !812
  %159 = icmp ult i64 %158, 32, !dbg !957
  br i1 %159, label %33, label %47, !dbg !800, !llvm.loop !958

; <label>:160:                                    ; preds = %125
  %161 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %126, i32 3, !dbg !906
  %162 = load i8, i8* %161, align 2, !dbg !906, !tbaa !399
  %163 = icmp eq i8 %162, 2, !dbg !908
  br i1 %163, label %164, label %169, !dbg !909

; <label>:164:                                    ; preds = %160
  %165 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %126, i32 8, !dbg !910
  %166 = load i8, i8* %165, align 1, !dbg !910, !tbaa !648
  %167 = load i8, i8* %97, align 1, !dbg !913, !tbaa !648
  %168 = icmp eq i8 %166, %167, !dbg !914
  br i1 %168, label %138, label %169, !dbg !915

; <label>:169:                                    ; preds = %164, %160, %125
  %170 = add nuw nsw i64 %114, 2, !dbg !916
  %171 = icmp ult i64 %170, 32, !dbg !961
  br i1 %171, label %113, label %128, !dbg !880, !llvm.loop !962
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #5 !dbg !134 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !966
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !966
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !968
  call void @llvm.va_start(i8* nonnull %3), !dbg !968
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !969
  call void @llvm.va_end(i8* nonnull %3), !dbg !972
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !973
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  ret void, !dbg !973
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_send(i8 zeroext) unnamed_addr #1 !dbg !974 {
  %2 = alloca %struct.dns_hdr, align 2
  %3 = alloca %struct.dns_query, align 2
  %4 = bitcast %struct.dns_hdr* %2 to i8*, !dbg !1009
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #7, !dbg !1009
  %5 = bitcast %struct.dns_query* %3 to i8*, !dbg !1010
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1010
  %6 = zext i8 %0 to i64, !dbg !1011
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 4, !dbg !1012
  %8 = load i8, i8* %7, align 1, !dbg !1012, !tbaa !819
  %9 = icmp ult i8 %8, 2, !dbg !1012
  br i1 %9, label %11, label %10, !dbg !1015

; <label>:10:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1016
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1019
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1019
  unreachable, !dbg !1019

; <label>:11:                                     ; preds = %1
  %12 = zext i8 %8 to i64, !dbg !1023
  %13 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 1, !dbg !1023
  %14 = load i8, i8* %13, align 4, !dbg !1023, !tbaa !340
  %15 = icmp eq i8 %14, 6, !dbg !1023
  %16 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 0, !dbg !1023
  %17 = load i32, i32* %16, align 8, !dbg !1023, !tbaa !249
  %18 = icmp eq i32 %17, 0, !dbg !1023
  br i1 %15, label %19, label %32, !dbg !1025

; <label>:19:                                     ; preds = %11
  br i1 %18, label %20, label %80, !dbg !1023

; <label>:20:                                     ; preds = %19
  %21 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 1, !dbg !1023
  %22 = load i32, i32* %21, align 4, !dbg !1023, !tbaa !249
  %23 = icmp eq i32 %22, 0, !dbg !1023
  br i1 %23, label %24, label %80, !dbg !1023

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 2, !dbg !1023
  %26 = load i32, i32* %25, align 8, !dbg !1023, !tbaa !249
  %27 = icmp eq i32 %26, 0, !dbg !1023
  br i1 %27, label %28, label %80, !dbg !1023

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 3, !dbg !1023
  %30 = load i32, i32* %29, align 4, !dbg !1023, !tbaa !249
  %31 = icmp eq i32 %30, 0, !dbg !1023
  br i1 %31, label %33, label %80, !dbg !1023

; <label>:32:                                     ; preds = %11
  br i1 %18, label %33, label %80, !dbg !1025

; <label>:33:                                     ; preds = %32, %28
  %34 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 0
  br label %37, !dbg !1031

; <label>:35:                                     ; preds = %49
  %36 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 8
  br label %52, !dbg !1032

; <label>:37:                                     ; preds = %49, %33
  %38 = phi i64 [ 0, %33 ], [ %50, %49 ]
  %39 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 0, !dbg !1033
  %40 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %39, align 8, !dbg !1033, !tbaa !420
  %41 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %40, null, !dbg !1034
  br i1 %41, label %49, label %42, !dbg !1035

; <label>:42:                                     ; preds = %37
  %43 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 2, !dbg !1036
  %44 = load i8, i8* %43, align 8, !dbg !1036, !tbaa !433
  %45 = icmp eq i8 %44, %0, !dbg !1037
  br i1 %45, label %46, label %49, !dbg !1038

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %38, i32 1, !dbg !1039
  %48 = load i8*, i8** %47, align 8, !dbg !1039, !tbaa !430
  tail call void %40(i8* nonnull %34, %struct.ip_addr* null, i8* %48) #8, !dbg !1040
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %39, align 8, !dbg !1041, !tbaa !420
  br label %49, !dbg !1042

; <label>:49:                                     ; preds = %46, %42, %37
  %50 = add nuw nsw i64 %38, 1, !dbg !1043
  %51 = icmp eq i64 %50, 32, !dbg !1044
  br i1 %51, label %35, label %37, !dbg !1031, !llvm.loop !898

; <label>:52:                                     ; preds = %158, %35
  %53 = phi i64 [ 0, %35 ], [ %159, %158 ]
  %54 = icmp eq i64 %53, %6, !dbg !1045
  br i1 %54, label %64, label %55, !dbg !1046

; <label>:55:                                     ; preds = %52
  %56 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %53, i32 3, !dbg !1047
  %57 = load i8, i8* %56, align 2, !dbg !1047, !tbaa !399
  %58 = icmp eq i8 %57, 2, !dbg !1048
  br i1 %58, label %59, label %64, !dbg !1049

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %53, i32 8, !dbg !1050
  %61 = load i8, i8* %60, align 1, !dbg !1050, !tbaa !648
  %62 = load i8, i8* %36, align 1, !dbg !1051, !tbaa !648
  %63 = icmp eq i8 %61, %62, !dbg !1052
  br i1 %63, label %77, label %64, !dbg !1053

; <label>:64:                                     ; preds = %59, %55, %52
  %65 = or i64 %53, 1, !dbg !1054
  %66 = icmp eq i64 %65, %6, !dbg !1045
  br i1 %66, label %158, label %149, !dbg !1046

; <label>:67:                                     ; preds = %158
  %68 = load i8, i8* %36, align 1, !dbg !1055, !tbaa !648
  %69 = icmp ult i8 %68, 32, !dbg !1056
  br i1 %69, label %70, label %78, !dbg !1057

; <label>:70:                                     ; preds = %67
  %71 = zext i8 %68 to i64, !dbg !1058
  %72 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %71, !dbg !1058
  %73 = load %struct.udp_pcb*, %struct.udp_pcb** %72, align 8, !dbg !1058, !tbaa !514
  tail call void @udp_remove(%struct.udp_pcb* %73) #8, !dbg !1059
  %74 = load i8, i8* %36, align 1, !dbg !1060, !tbaa !648
  %75 = zext i8 %74 to i64, !dbg !1061
  %76 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %75, !dbg !1061
  store %struct.udp_pcb* null, %struct.udp_pcb** %76, align 8, !dbg !1062, !tbaa !514
  br label %77, !dbg !1063

; <label>:77:                                     ; preds = %59, %153, %70
  store i8 32, i8* %36, align 1, !dbg !1064, !tbaa !648
  br label %78, !dbg !1065

; <label>:78:                                     ; preds = %77, %67
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %79 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 3, !dbg !1066
  store i8 0, i8* %79, align 2, !dbg !1067, !tbaa !399
  br label %147, !dbg !1068

; <label>:80:                                     ; preds = %32, %28, %24, %20, %19
  %81 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 0, !dbg !1069
  %82 = tail call i64 @strlen(i8* nonnull %81) #8, !dbg !1070
  %83 = trunc i64 %82 to i16, !dbg !1071
  %84 = add i16 %83, 18, !dbg !1071
  %85 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %84, i32 640) #8, !dbg !1072
  %86 = icmp eq %struct.pbuf* %85, null, !dbg !1074
  br i1 %86, label %147, label %87, !dbg !1075

; <label>:87:                                     ; preds = %80
  %88 = call i8* @memset(i8* nonnull %4, i32 0, i64 12) #8, !dbg !1076
  %89 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 2, !dbg !1077
  %90 = load i16, i16* %89, align 4, !dbg !1077, !tbaa !809
  %91 = call zeroext i16 @lwip_htons(i16 zeroext %90) #8, !dbg !1078
  %92 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 0, !dbg !1079
  store i16 %91, i16* %92, align 2, !dbg !1080, !tbaa !1081
  %93 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 1, !dbg !1083
  store i8 1, i8* %93, align 2, !dbg !1084, !tbaa !1085
  %94 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 3, !dbg !1086
  store i16 256, i16* %94, align 2, !dbg !1087, !tbaa !1088
  %95 = call signext i8 @pbuf_take(%struct.pbuf* nonnull %85, i8* nonnull %4, i16 zeroext 12) #8, !dbg !1089
  %96 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 -1, !dbg !1091
  br label %97, !dbg !1093

; <label>:97:                                     ; preds = %113, %87
  %98 = phi i8* [ %96, %87 ], [ %103, %113 ], !dbg !1094
  %99 = phi i16 [ 12, %87 ], [ %121, %113 ], !dbg !1094
  %100 = getelementptr inbounds i8, i8* %98, i64 1, !dbg !1096
  br label %101, !dbg !1099

; <label>:101:                                    ; preds = %105, %97
  %102 = phi i8 [ 0, %97 ], [ %106, %105 ], !dbg !1101
  %103 = phi i8* [ %100, %97 ], [ %107, %105 ], !dbg !1104
  %104 = load i8, i8* %103, align 1, !dbg !1105, !tbaa !249
  switch i8 %104, label %105 [
    i8 46, label %108
    i8 0, label %108
  ], !dbg !1106

; <label>:105:                                    ; preds = %101
  %106 = add i8 %102, 1, !dbg !1107
  %107 = getelementptr inbounds i8, i8* %103, i64 1, !dbg !1108
  br label %101, !dbg !1109, !llvm.loop !1110

; <label>:108:                                    ; preds = %101, %101
  %109 = zext i16 %99 to i32, !dbg !1113
  %110 = zext i8 %102 to i32, !dbg !1115
  %111 = add nuw nsw i32 %110, %109, !dbg !1116
  %112 = icmp ugt i32 %111, 65534, !dbg !1117
  br i1 %112, label %145, label %113, !dbg !1118

; <label>:113:                                    ; preds = %108
  %114 = ptrtoint i8* %103 to i64, !dbg !1119
  %115 = ptrtoint i8* %100 to i64, !dbg !1119
  %116 = sub i64 %114, %115, !dbg !1119
  %117 = trunc i64 %116 to i16, !dbg !1120
  call void @pbuf_put_at(%struct.pbuf* nonnull %85, i16 zeroext %99, i8 zeroext %102) #8, !dbg !1122
  %118 = add i16 %99, 1, !dbg !1123
  %119 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %85, i8* nonnull %100, i16 zeroext %117, i16 zeroext %118) #8, !dbg !1124
  %120 = trunc i32 %111 to i16, !dbg !1125
  %121 = add i16 %120, 1, !dbg !1125
  %122 = load i8, i8* %103, align 1, !dbg !1126, !tbaa !249
  %123 = icmp eq i8 %122, 0, !dbg !1127
  br i1 %123, label %124, label %97, !dbg !1128, !llvm.loop !1129

; <label>:124:                                    ; preds = %113
  %125 = trunc i32 %111 to i16, !dbg !1125
  call void @pbuf_put_at(%struct.pbuf* nonnull %85, i16 zeroext %121, i8 zeroext 0) #8, !dbg !1131
  %126 = add i16 %125, 2, !dbg !1132
  %127 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 10, !dbg !1133
  %128 = load i8, i8* %127, align 4, !dbg !1133, !tbaa !411
  switch i8 %128, label %129 [
    i8 3, label %130
    i8 1, label %130
  ], !dbg !1133

; <label>:129:                                    ; preds = %124
  br label %130

; <label>:130:                                    ; preds = %124, %124, %129
  %131 = phi i16 [ 256, %129 ], [ 7168, %124 ], [ 7168, %124 ]
  %132 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 0, !dbg !1135
  store i16 %131, i16* %132, align 2, !dbg !1135, !tbaa !1137
  %133 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 1, !dbg !1139
  store i16 256, i16* %133, align 2, !dbg !1140, !tbaa !1141
  %134 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %85, i8* nonnull %5, i16 zeroext 4, i16 zeroext %126) #8, !dbg !1142
  %135 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 8, !dbg !1143
  %136 = load i8, i8* %135, align 1, !dbg !1143, !tbaa !648
  %137 = load i8, i8* %7, align 1, !dbg !1146, !tbaa !819
  %138 = zext i8 %137 to i64, !dbg !1148
  %139 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %138, !dbg !1148
  %140 = zext i8 %136 to i64, !dbg !1150
  %141 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %140, !dbg !1150
  %142 = load %struct.udp_pcb*, %struct.udp_pcb** %141, align 8, !dbg !1150, !tbaa !514
  %143 = call signext i8 @udp_sendto(%struct.udp_pcb* %142, %struct.pbuf* nonnull %85, %struct.ip_addr* nonnull %139, i16 zeroext 53) #8, !dbg !1151
  %144 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %85) #8, !dbg !1153
  br label %147

; <label>:145:                                    ; preds = %108
  %146 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %85) #8, !dbg !1154
  br label %147, !dbg !1155

; <label>:147:                                    ; preds = %130, %80, %145, %78
  %148 = phi i8 [ 0, %78 ], [ -6, %145 ], [ %143, %130 ], [ -1, %80 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1156
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #7, !dbg !1156
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1156
  ret i8 %148, !dbg !1156

; <label>:149:                                    ; preds = %64
  %150 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %65, i32 3, !dbg !1047
  %151 = load i8, i8* %150, align 2, !dbg !1047, !tbaa !399
  %152 = icmp eq i8 %151, 2, !dbg !1048
  br i1 %152, label %153, label %158, !dbg !1049

; <label>:153:                                    ; preds = %149
  %154 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %65, i32 8, !dbg !1050
  %155 = load i8, i8* %154, align 1, !dbg !1050, !tbaa !648
  %156 = load i8, i8* %36, align 1, !dbg !1051, !tbaa !648
  %157 = icmp eq i8 %155, %156, !dbg !1052
  br i1 %157, label %77, label %158, !dbg !1053

; <label>:158:                                    ; preds = %153, %149, %64
  %159 = add nuw nsw i64 %53, 2, !dbg !1054
  %160 = icmp ult i64 %159, 32, !dbg !1157
  br i1 %160, label %52, label %67, !dbg !1032, !llvm.loop !962
}

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_call_found(i8 zeroext, %struct.ip_addr*) unnamed_addr #1 !dbg !867 {
  %3 = icmp eq %struct.ip_addr* %1, null, !dbg !1160
  br i1 %3, label %4, label %6, !dbg !1162

; <label>:4:                                      ; preds = %2
  %5 = zext i8 %0 to i64
  br label %19, !dbg !1162

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1163
  %8 = load i8, i8* %7, align 4, !dbg !1163, !tbaa !340
  %9 = icmp eq i8 %8, 6, !dbg !1163
  %10 = zext i8 %0 to i64, !dbg !1166
  %11 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %10, i32 10, !dbg !1166
  %12 = load i8, i8* %11, align 4, !dbg !1166, !tbaa !411
  br i1 %9, label %13, label %16, !dbg !1170

; <label>:13:                                     ; preds = %6
  switch i8 %12, label %14 [
    i8 3, label %15
    i8 1, label %15
  ], !dbg !1171

; <label>:14:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1175
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1178
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1178
  unreachable, !dbg !1178

; <label>:15:                                     ; preds = %13, %13
  store i8 1, i8* %11, align 4, !dbg !1182, !tbaa !411
  br label %19, !dbg !1183

; <label>:16:                                     ; preds = %6
  switch i8 %12, label %18 [
    i8 3, label %17
    i8 1, label %17
  ], !dbg !1184

; <label>:17:                                     ; preds = %16, %16
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1185
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1188
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1188
  unreachable, !dbg !1188

; <label>:18:                                     ; preds = %16
  store i8 0, i8* %11, align 4, !dbg !1192, !tbaa !411
  br label %19

; <label>:19:                                     ; preds = %4, %15, %18
  %20 = phi i64 [ %5, %4 ], [ %10, %15 ], [ %10, %18 ]
  %21 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %20, i32 9, i64 0
  br label %24, !dbg !899

; <label>:22:                                     ; preds = %36
  %23 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %20, i32 8
  br label %39, !dbg !963

; <label>:24:                                     ; preds = %36, %19
  %25 = phi i64 [ 0, %19 ], [ %37, %36 ]
  %26 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 0, !dbg !1194
  %27 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %26, align 8, !dbg !1194, !tbaa !420
  %28 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %27, null, !dbg !1195
  br i1 %28, label %36, label %29, !dbg !1196

; <label>:29:                                     ; preds = %24
  %30 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 2, !dbg !1197
  %31 = load i8, i8* %30, align 8, !dbg !1197, !tbaa !433
  %32 = icmp eq i8 %31, %0, !dbg !1198
  br i1 %32, label %33, label %36, !dbg !1199

; <label>:33:                                     ; preds = %29
  %34 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %25, i32 1, !dbg !1200
  %35 = load i8*, i8** %34, align 8, !dbg !1200, !tbaa !430
  tail call void %27(i8* nonnull %21, %struct.ip_addr* %1, i8* %35) #8, !dbg !1201
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %26, align 8, !dbg !1202, !tbaa !420
  br label %36, !dbg !1203

; <label>:36:                                     ; preds = %24, %29, %33
  %37 = add nuw nsw i64 %25, 1, !dbg !1204
  %38 = icmp eq i64 %37, 32, !dbg !1205
  br i1 %38, label %22, label %24, !dbg !899, !llvm.loop !898

; <label>:39:                                     ; preds = %75, %22
  %40 = phi i64 [ 0, %22 ], [ %76, %75 ]
  %41 = icmp eq i64 %40, %20, !dbg !1206
  br i1 %41, label %51, label %42, !dbg !1207

; <label>:42:                                     ; preds = %39
  %43 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %40, i32 3, !dbg !1208
  %44 = load i8, i8* %43, align 2, !dbg !1208, !tbaa !399
  %45 = icmp eq i8 %44, 2, !dbg !1209
  br i1 %45, label %46, label %51, !dbg !1210

; <label>:46:                                     ; preds = %42
  %47 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %40, i32 8, !dbg !1211
  %48 = load i8, i8* %47, align 1, !dbg !1211, !tbaa !648
  %49 = load i8, i8* %23, align 1, !dbg !1212, !tbaa !648
  %50 = icmp eq i8 %48, %49, !dbg !1213
  br i1 %50, label %64, label %51, !dbg !1214

; <label>:51:                                     ; preds = %42, %46, %39
  %52 = or i64 %40, 1, !dbg !1215
  %53 = icmp eq i64 %52, %20, !dbg !1206
  br i1 %53, label %75, label %66, !dbg !1207

; <label>:54:                                     ; preds = %75
  %55 = load i8, i8* %23, align 1, !dbg !1216, !tbaa !648
  %56 = icmp ult i8 %55, 32, !dbg !1217
  br i1 %56, label %57, label %65, !dbg !1218

; <label>:57:                                     ; preds = %54
  %58 = zext i8 %55 to i64, !dbg !1219
  %59 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %58, !dbg !1219
  %60 = load %struct.udp_pcb*, %struct.udp_pcb** %59, align 8, !dbg !1219, !tbaa !514
  tail call void @udp_remove(%struct.udp_pcb* %60) #8, !dbg !1220
  %61 = load i8, i8* %23, align 1, !dbg !1221, !tbaa !648
  %62 = zext i8 %61 to i64, !dbg !1222
  %63 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %62, !dbg !1222
  store %struct.udp_pcb* null, %struct.udp_pcb** %63, align 8, !dbg !1223, !tbaa !514
  br label %64, !dbg !1224

; <label>:64:                                     ; preds = %46, %70, %57
  store i8 32, i8* %23, align 1, !dbg !1225, !tbaa !648
  br label %65, !dbg !1226

; <label>:65:                                     ; preds = %64, %54
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1226
  ret void, !dbg !1226

; <label>:66:                                     ; preds = %51
  %67 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %52, i32 3, !dbg !1208
  %68 = load i8, i8* %67, align 2, !dbg !1208, !tbaa !399
  %69 = icmp eq i8 %68, 2, !dbg !1209
  br i1 %69, label %70, label %75, !dbg !1210

; <label>:70:                                     ; preds = %66
  %71 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %52, i32 8, !dbg !1211
  %72 = load i8, i8* %71, align 1, !dbg !1211, !tbaa !648
  %73 = load i8, i8* %23, align 1, !dbg !1212, !tbaa !648
  %74 = icmp eq i8 %72, %73, !dbg !1213
  br i1 %74, label %64, label %75, !dbg !1214

; <label>:75:                                     ; preds = %70, %66, %51
  %76 = add nuw nsw i64 %40, 2, !dbg !1215
  %77 = icmp ult i64 %76, 32, !dbg !1227
  br i1 %77, label %39, label %54, !dbg !963, !llvm.loop !962
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #5 !dbg !570 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1228
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !1230
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #8, !dbg !1232
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1233
  ret i32 %2, !dbg !1233
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @uk_swrand_randr_r(%struct.uk_swrand*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_take(%struct.pbuf*, i8*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @pbuf_put_at(%struct.pbuf*, i16 zeroext, i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @pbuf_take_at(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @udp_sendto(%struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @udp_remove(%struct.udp_pcb*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @lwip_strnicmp(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local %struct.udp_pcb* @udp_new_ip_type(i8 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local signext i8 @udp_bind(%struct.udp_pcb*, %struct.ip_addr*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local void @udp_recv(%struct.udp_pcb*, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)*, i8*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal void @dns_recv(i8* nocapture readnone, %struct.udp_pcb* nocapture readnone, %struct.pbuf*, %struct.ip_addr* nocapture readonly, i16 zeroext) #1 !dbg !1234 {
  %6 = alloca %struct.dns_hdr, align 2
  %7 = alloca %struct.dns_answer, align 4
  %8 = alloca %struct.dns_query, align 2
  %9 = alloca %struct.ip4_addr, align 4
  %10 = alloca <4 x i32>, align 16
  %11 = bitcast %struct.dns_hdr* %6 to i8*, !dbg !1288
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %11) #7, !dbg !1288
  %12 = bitcast %struct.dns_answer* %7 to i8*, !dbg !1289
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %12) #7, !dbg !1289
  %13 = bitcast %struct.dns_query* %8 to i8*, !dbg !1290
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #7, !dbg !1290
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1291
  %15 = load i16, i16* %14, align 8, !dbg !1291, !tbaa !1293
  %16 = icmp ult i16 %15, 16, !dbg !1295
  br i1 %16, label %421, label %17, !dbg !1296

; <label>:17:                                     ; preds = %5
  %18 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %11, i16 zeroext 12, i16 zeroext 0) #8, !dbg !1297
  %19 = icmp eq i16 %18, 12, !dbg !1298
  br i1 %19, label %20, label %421, !dbg !1299

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 0, !dbg !1300
  %22 = load i16, i16* %21, align 2, !dbg !1300, !tbaa !1081
  %23 = call zeroext i16 @lwip_htons(i16 zeroext %22) #8, !dbg !1301
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
  br label %43, !dbg !1304

; <label>:43:                                     ; preds = %20, %418
  %44 = phi i64 [ 0, %20 ], [ %419, %418 ]
  %45 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 3, !dbg !1305
  %46 = load i8, i8* %45, align 2, !dbg !1305, !tbaa !399
  %47 = icmp eq i8 %46, 2, !dbg !1306
  br i1 %47, label %48, label %418, !dbg !1307

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 2, !dbg !1308
  %50 = load i16, i16* %49, align 4, !dbg !1308, !tbaa !809
  %51 = icmp eq i16 %50, %23, !dbg !1309
  br i1 %51, label %52, label %418, !dbg !1310

; <label>:52:                                     ; preds = %48
  %53 = load i16, i16* %24, align 2, !dbg !1311, !tbaa !1088
  %54 = call zeroext i16 @lwip_htons(i16 zeroext %53) #8, !dbg !1312
  %55 = load i16, i16* %25, align 2, !dbg !1314, !tbaa !1315
  %56 = call zeroext i16 @lwip_htons(i16 zeroext %55) #8, !dbg !1316
  %57 = load i8, i8* %26, align 2, !dbg !1318, !tbaa !1085
  %58 = icmp slt i8 %57, 0, !dbg !1320
  %59 = icmp eq i16 %54, 1, !dbg !1321
  %60 = and i1 %59, %58, !dbg !1323
  br i1 %60, label %61, label %421, !dbg !1323

; <label>:61:                                     ; preds = %52
  %62 = load i8, i8* %27, align 4, !dbg !1324, !tbaa !340
  %63 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 4, !dbg !1324
  %64 = load i8, i8* %63, align 1, !dbg !1324, !tbaa !819
  %65 = zext i8 %64 to i64, !dbg !1324
  %66 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 1, !dbg !1324
  %67 = load i8, i8* %66, align 4, !dbg !1324, !tbaa !340
  %68 = icmp eq i8 %62, %67, !dbg !1324
  br i1 %68, label %69, label %421, !dbg !1327

; <label>:69:                                     ; preds = %61
  %70 = icmp eq i8 %62, 6, !dbg !1324
  %71 = load i32, i32* %28, align 4, !dbg !1324, !tbaa !249
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 0, !dbg !1324
  %73 = load i32, i32* %72, align 8, !dbg !1324, !tbaa !249
  %74 = icmp eq i32 %71, %73, !dbg !1324
  br i1 %70, label %75, label %96, !dbg !1327

; <label>:75:                                     ; preds = %69
  br i1 %74, label %76, label %421, !dbg !1324

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %29, align 4, !dbg !1324, !tbaa !249
  %78 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 1, !dbg !1324
  %79 = load i32, i32* %78, align 4, !dbg !1324, !tbaa !249
  %80 = icmp eq i32 %77, %79, !dbg !1324
  br i1 %80, label %81, label %421, !dbg !1324

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %30, align 4, !dbg !1324, !tbaa !249
  %83 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 2, !dbg !1324
  %84 = load i32, i32* %83, align 8, !dbg !1324, !tbaa !249
  %85 = icmp eq i32 %82, %84, !dbg !1324
  br i1 %85, label %86, label %421, !dbg !1324

; <label>:86:                                     ; preds = %81
  %87 = load i32, i32* %31, align 4, !dbg !1324, !tbaa !249
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 3, !dbg !1324
  %89 = load i32, i32* %88, align 4, !dbg !1324, !tbaa !249
  %90 = icmp eq i32 %87, %89, !dbg !1324
  br i1 %90, label %91, label %421, !dbg !1324

; <label>:91:                                     ; preds = %86
  %92 = load i8, i8* %32, align 4, !dbg !1324, !tbaa !249
  %93 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 1, !dbg !1324
  %94 = load i8, i8* %93, align 8, !dbg !1324, !tbaa !249
  %95 = icmp eq i8 %92, %94, !dbg !1324
  br i1 %95, label %97, label %421, !dbg !1324

; <label>:96:                                     ; preds = %69
  br i1 %74, label %97, label %421, !dbg !1327

; <label>:97:                                     ; preds = %96, %91
  %98 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 9, i64 0, !dbg !1328
  br label %99, !dbg !1353

; <label>:99:                                     ; preds = %158, %97
  %100 = phi i16 [ 12, %97 ], [ %155, %158 ], !dbg !1354
  %101 = phi i8* [ %98, %97 ], [ %159, %158 ]
  %102 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %100) #8, !dbg !1355
  %103 = icmp slt i32 %102, 0, !dbg !1357
  %104 = icmp eq i16 %100, -1, !dbg !1359
  %105 = or i1 %104, %103, !dbg !1360
  %106 = and i32 %102, 192, !dbg !1361
  %107 = icmp eq i32 %106, 192, !dbg !1362
  %108 = or i1 %105, %107, !dbg !1360
  br i1 %108, label %164, label %109, !dbg !1360

; <label>:109:                                    ; preds = %99
  %110 = add i16 %100, 1, !dbg !1363
  %111 = icmp sgt i32 %102, 0, !dbg !1364
  %112 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %110) #8, !dbg !1354
  %113 = icmp slt i32 %112, 0, !dbg !1365
  br i1 %111, label %114, label %152, !dbg !1367

; <label>:114:                                    ; preds = %109, %145
  %115 = phi i1 [ %151, %145 ], [ %113, %109 ]
  %116 = phi i32 [ %150, %145 ], [ %112, %109 ]
  %117 = phi i16 [ %148, %145 ], [ %110, %109 ]
  %118 = phi i8* [ %146, %145 ], [ %101, %109 ]
  %119 = phi i32 [ %147, %145 ], [ %102, %109 ]
  br i1 %115, label %164, label %120, !dbg !1369

; <label>:120:                                    ; preds = %114
  %121 = load i8, i8* %118, align 1, !dbg !1370, !tbaa !249
  %122 = call i8* @__locale_ctype_ptr() #8, !dbg !1370
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1370
  %124 = zext i8 %121 to i32, !dbg !1370
  %125 = zext i8 %121 to i64, !dbg !1370
  %126 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !1370
  %127 = load i8, i8* %126, align 1, !dbg !1370, !tbaa !249
  %128 = and i8 %127, 3, !dbg !1370
  %129 = icmp eq i8 %128, 1, !dbg !1370
  %130 = add nuw nsw i32 %124, 32, !dbg !1370
  %131 = select i1 %129, i32 %130, i32 %124, !dbg !1370
  %132 = call i8* @__locale_ctype_ptr() #8, !dbg !1371
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1371
  %134 = and i32 %116, 255, !dbg !1371
  %135 = zext i32 %134 to i64, !dbg !1371
  %136 = getelementptr inbounds i8, i8* %133, i64 %135, !dbg !1371
  %137 = load i8, i8* %136, align 1, !dbg !1371, !tbaa !249
  %138 = and i8 %137, 3, !dbg !1371
  %139 = icmp eq i8 %138, 1, !dbg !1371
  %140 = add nuw nsw i32 %134, 32, !dbg !1371
  %141 = select i1 %139, i32 %140, i32 %134, !dbg !1371
  %142 = icmp ne i32 %131, %141, !dbg !1372
  %143 = icmp eq i16 %117, -1, !dbg !1373
  %144 = or i1 %143, %142, !dbg !1375
  br i1 %144, label %164, label %145, !dbg !1375

; <label>:145:                                    ; preds = %120
  %146 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1376
  %147 = add nsw i32 %119, -1, !dbg !1377
  %148 = add i16 %117, 1, !dbg !1363
  %149 = icmp sgt i32 %119, 1, !dbg !1364
  %150 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %148) #8, !dbg !1354
  %151 = icmp slt i32 %150, 0, !dbg !1365
  br i1 %149, label %114, label %152, !dbg !1367

; <label>:152:                                    ; preds = %145, %109
  %153 = phi i16 [ %100, %109 ], [ %117, %145 ]
  %154 = phi i8* [ %101, %109 ], [ %146, %145 ]
  %155 = phi i16 [ %110, %109 ], [ %148, %145 ], !dbg !1363
  %156 = phi i32 [ %112, %109 ], [ %150, %145 ], !dbg !1354
  %157 = phi i1 [ %113, %109 ], [ %151, %145 ], !dbg !1365
  br i1 %157, label %164, label %158, !dbg !1378

; <label>:158:                                    ; preds = %152
  %159 = getelementptr inbounds i8, i8* %154, i64 1, !dbg !1379
  %160 = icmp eq i32 %156, 0, !dbg !1380
  br i1 %160, label %161, label %99, !dbg !1381, !llvm.loop !1382

; <label>:161:                                    ; preds = %158
  %162 = icmp eq i16 %155, -1, !dbg !1385
  %163 = add i16 %153, 2, !dbg !1387
  br i1 %162, label %164, label %165

; <label>:164:                                    ; preds = %161, %99, %152, %114, %120
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  br label %421, !dbg !1390

; <label>:165:                                    ; preds = %161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1388
  %166 = zext i16 %163 to i32, !dbg !1391
  %167 = icmp eq i16 %163, -1, !dbg !1393
  br i1 %167, label %421, label %168, !dbg !1390

; <label>:168:                                    ; preds = %165
  %169 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %2, i8* nonnull %13, i16 zeroext 4, i16 zeroext %163) #8, !dbg !1394
  %170 = icmp eq i16 %169, 4, !dbg !1396
  %171 = load i16, i16* %33, align 2, !dbg !1397
  %172 = icmp eq i16 %171, 256, !dbg !1399
  %173 = and i1 %170, %172, !dbg !1400
  br i1 %173, label %174, label %421, !dbg !1400

; <label>:174:                                    ; preds = %168
  %175 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 10, !dbg !1401
  %176 = load i8, i8* %175, align 4, !dbg !1401, !tbaa !411
  switch i8 %176, label %181 [
    i8 3, label %177
    i8 1, label %177
  ], !dbg !1401

; <label>:177:                                    ; preds = %174, %174
  %178 = load i16, i16* %34, align 2, !dbg !1402, !tbaa !1137
  %179 = icmp eq i16 %178, 7168, !dbg !1403
  br i1 %179, label %180, label %421, !dbg !1404

; <label>:180:                                    ; preds = %177
  switch i8 %176, label %421 [
    i8 3, label %184
    i8 1, label %184
  ], !dbg !1405

; <label>:181:                                    ; preds = %174
  %182 = load i16, i16* %34, align 2, !dbg !1406, !tbaa !1137
  %183 = icmp eq i16 %182, 256, !dbg !1407
  br i1 %183, label %184, label %421, !dbg !1408

; <label>:184:                                    ; preds = %180, %180, %181
  %185 = add nuw nsw i32 %166, 4, !dbg !1409
  %186 = icmp ugt i32 %185, 65535, !dbg !1411
  br i1 %186, label %421, label %187, !dbg !1412

; <label>:187:                                    ; preds = %184
  %188 = load i8, i8* %35, align 1, !dbg !1413, !tbaa !1414
  %189 = and i8 %188, 15, !dbg !1415
  %190 = icmp eq i8 %189, 0, !dbg !1415
  br i1 %190, label %191, label %195, !dbg !1416

; <label>:191:                                    ; preds = %187
  %192 = icmp eq i16 %56, 0, !dbg !1417
  br i1 %192, label %360, label %193, !dbg !1418

; <label>:193:                                    ; preds = %191
  %194 = trunc i64 %44 to i8, !dbg !1419
  br label %227, !dbg !1419

; <label>:195:                                    ; preds = %187
  %196 = trunc i64 %44 to i8, !dbg !1303
  %197 = load i8, i8* %63, align 1, !dbg !1424, !tbaa !819
  %198 = zext i8 %197 to i32, !dbg !1425
  %199 = add nuw nsw i32 %198, 1, !dbg !1426
  %200 = icmp ult i32 %199, 2, !dbg !1427
  br i1 %200, label %201, label %223, !dbg !1428

; <label>:201:                                    ; preds = %195
  %202 = zext i32 %199 to i64, !dbg !1429
  %203 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %202, i32 1, !dbg !1429
  %204 = load i8, i8* %203, align 4, !dbg !1429, !tbaa !340
  %205 = icmp eq i8 %204, 6, !dbg !1429
  %206 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %202, i32 0, i32 0, i32 0, i64 0, !dbg !1429
  %207 = load i32, i32* %206, align 8, !dbg !1429, !tbaa !249
  %208 = icmp eq i32 %207, 0, !dbg !1429
  br i1 %205, label %209, label %222, !dbg !1430

; <label>:209:                                    ; preds = %201
  br i1 %208, label %210, label %224, !dbg !1429

; <label>:210:                                    ; preds = %209
  %211 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %202, i32 0, i32 0, i32 0, i64 1, !dbg !1429
  %212 = load i32, i32* %211, align 4, !dbg !1429, !tbaa !249
  %213 = icmp eq i32 %212, 0, !dbg !1429
  br i1 %213, label %214, label %224, !dbg !1429

; <label>:214:                                    ; preds = %210
  %215 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %202, i32 0, i32 0, i32 0, i64 2, !dbg !1429
  %216 = load i32, i32* %215, align 8, !dbg !1429, !tbaa !249
  %217 = icmp eq i32 %216, 0, !dbg !1429
  br i1 %217, label %218, label %224, !dbg !1429

; <label>:218:                                    ; preds = %214
  %219 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %202, i32 0, i32 0, i32 0, i64 3, !dbg !1429
  %220 = load i32, i32* %219, align 4, !dbg !1429, !tbaa !249
  %221 = icmp eq i32 %220, 0, !dbg !1429
  br i1 %221, label %223, label %224, !dbg !1429

; <label>:222:                                    ; preds = %201
  br i1 %208, label %223, label %224, !dbg !1430

; <label>:223:                                    ; preds = %218, %222, %195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br label %369, !dbg !1432

; <label>:224:                                    ; preds = %222, %218, %214, %210, %209
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  %225 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 6, !dbg !1433
  store i8 3, i8* %225, align 1, !dbg !1435, !tbaa !825
  %226 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 5, !dbg !1436
  store i8 1, i8* %226, align 8, !dbg !1437, !tbaa !822
  call fastcc void @dns_check_entry(i8 zeroext %196) #9, !dbg !1438
  br label %421, !dbg !1439

; <label>:227:                                    ; preds = %193, %351
  %228 = phi i16 [ %356, %351 ], [ %56, %193 ]
  %229 = phi i32 [ %355, %351 ], [ %185, %193 ]
  %230 = and i32 %229, 65535, !dbg !1440
  %231 = load i16, i16* %14, align 8, !dbg !1441, !tbaa !1293
  %232 = zext i16 %231 to i32, !dbg !1442
  %233 = icmp ult i32 %230, %232, !dbg !1443
  br i1 %233, label %234, label %358, !dbg !1444

; <label>:234:                                    ; preds = %227
  %235 = trunc i32 %229 to i16, !dbg !1419
  br label %236, !dbg !1445

; <label>:236:                                    ; preds = %234, %256
  %237 = phi i16 [ %253, %256 ], [ %235, %234 ], !dbg !1456
  %238 = add i16 %237, 1, !dbg !1445
  %239 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %237) #8, !dbg !1460
  %240 = icmp slt i32 %239, 0, !dbg !1462
  br i1 %240, label %264, label %241, !dbg !1464

; <label>:241:                                    ; preds = %236
  %242 = zext i16 %238 to i32, !dbg !1465
  %243 = icmp eq i16 %238, 0, !dbg !1466
  br i1 %243, label %264, label %244, !dbg !1467

; <label>:244:                                    ; preds = %241
  %245 = and i32 %239, 192, !dbg !1468
  %246 = icmp eq i32 %245, 192, !dbg !1469
  br i1 %246, label %260, label %247, !dbg !1470

; <label>:247:                                    ; preds = %244
  %248 = add nsw i32 %239, %242, !dbg !1471
  %249 = load i16, i16* %14, align 8, !dbg !1473, !tbaa !1293
  %250 = zext i16 %249 to i32, !dbg !1474
  %251 = icmp slt i32 %248, %250, !dbg !1475
  br i1 %251, label %252, label %264, !dbg !1476

; <label>:252:                                    ; preds = %247
  %253 = trunc i32 %248 to i16, !dbg !1477
  %254 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %253) #8, !dbg !1478
  %255 = icmp slt i32 %254, 0, !dbg !1479
  br i1 %255, label %264, label %256, !dbg !1481

; <label>:256:                                    ; preds = %252
  %257 = icmp eq i32 %254, 0, !dbg !1482
  br i1 %257, label %258, label %236, !dbg !1483, !llvm.loop !1484

; <label>:258:                                    ; preds = %256
  %259 = trunc i32 %248 to i16, !dbg !1477
  br label %260, !dbg !1487

; <label>:260:                                    ; preds = %244, %258
  %261 = phi i16 [ %259, %258 ], [ %238, %244 ], !dbg !1456
  %262 = icmp eq i16 %261, -1, !dbg !1487
  %263 = add i16 %261, 1, !dbg !1489
  br i1 %262, label %264, label %265

; <label>:264:                                    ; preds = %260, %241, %236, %247, %252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  br label %421, !dbg !1491

; <label>:265:                                    ; preds = %260
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  %266 = zext i16 %263 to i32, !dbg !1492
  %267 = icmp eq i16 %263, -1, !dbg !1494
  br i1 %267, label %421, label %268, !dbg !1491

; <label>:268:                                    ; preds = %265
  %269 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %12, i16 zeroext 10, i16 zeroext %263) #8, !dbg !1495
  %270 = icmp eq i16 %269, 10, !dbg !1497
  br i1 %270, label %271, label %421, !dbg !1498

; <label>:271:                                    ; preds = %268
  %272 = add nuw nsw i32 %266, 10, !dbg !1499
  %273 = icmp ugt i32 %272, 65535, !dbg !1501
  br i1 %273, label %421, label %274, !dbg !1502

; <label>:274:                                    ; preds = %271
  %275 = load i16, i16* %36, align 2, !dbg !1503, !tbaa !1504
  %276 = icmp eq i16 %275, 256, !dbg !1506
  br i1 %276, label %277, label %343, !dbg !1507

; <label>:277:                                    ; preds = %274
  %278 = load i16, i16* %37, align 4, !dbg !1508, !tbaa !1509
  switch i16 %278, label %343 [
    i16 256, label %279
    i16 7168, label %312
  ], !dbg !1510

; <label>:279:                                    ; preds = %277
  %280 = load i16, i16* %38, align 4, !dbg !1511, !tbaa !1512
  %281 = icmp eq i16 %280, 1024, !dbg !1513
  br i1 %281, label %282, label %343, !dbg !1514

; <label>:282:                                    ; preds = %279
  %283 = load i8, i8* %175, align 4, !dbg !1515, !tbaa !411
  switch i8 %283, label %284 [
    i8 3, label %343
    i8 1, label %343
  ], !dbg !1515

; <label>:284:                                    ; preds = %282
  %285 = trunc i32 %272 to i16, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #7, !dbg !1517
  %286 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %39, i16 zeroext 4, i16 zeroext %285) #8, !dbg !1518
  %287 = icmp eq i16 %286, 4, !dbg !1520
  br i1 %287, label %288, label %310, !dbg !1521

; <label>:288:                                    ; preds = %284
  %289 = load i32, i32* %41, align 4, !dbg !1522, !tbaa !1524
  %290 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1522
  store i32 %289, i32* %290, align 4, !dbg !1522, !tbaa !249
  %291 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1526
  store i8 0, i8* %291, align 4, !dbg !1526, !tbaa !704
  %292 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1528
  store i32 0, i32* %292, align 4, !dbg !1528, !tbaa !249
  %293 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1528
  store i32 0, i32* %293, align 4, !dbg !1528, !tbaa !249
  %294 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1528
  store i32 0, i32* %294, align 4, !dbg !1528, !tbaa !249
  %295 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1528
  store i8 0, i8* %295, align 4, !dbg !1528, !tbaa !249
  %296 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #8, !dbg !1530
  %297 = load i32, i32* %42, align 4, !dbg !1531, !tbaa !1532
  %298 = call i32 @lwip_htonl(i32 %297) #8, !dbg !1531
  store i8 3, i8* %45, align 2, !dbg !1543, !tbaa !399
  %299 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1544
  %300 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1547
  %301 = icmp ult i32 %298, 604800, !dbg !1548
  %302 = select i1 %301, i32 %298, i32 604800, !dbg !1548
  store i32 %302, i32* %300, align 8, !dbg !1549, !tbaa !938
  call fastcc void @dns_call_found(i8 zeroext %194, %struct.ip_addr* nonnull %299) #8, !dbg !1550
  %303 = load i32, i32* %300, align 8, !dbg !1551, !tbaa !938
  %304 = icmp eq i32 %303, 0, !dbg !1553
  br i1 %304, label %305, label %309, !dbg !1554

; <label>:305:                                    ; preds = %288
  %306 = load i8, i8* %45, align 2, !dbg !1555, !tbaa !399
  %307 = icmp eq i8 %306, 3, !dbg !1558
  br i1 %307, label %308, label %309, !dbg !1559

; <label>:308:                                    ; preds = %305
  store i8 0, i8* %45, align 2, !dbg !1560, !tbaa !399
  br label %309, !dbg !1562

; <label>:309:                                    ; preds = %288, %305, %308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br label %310, !dbg !1564

; <label>:310:                                    ; preds = %284, %309
  %311 = phi i32 [ 1, %309 ], [ 2, %284 ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #7, !dbg !1565
  br label %416

; <label>:312:                                    ; preds = %277
  %313 = load i16, i16* %38, align 4, !dbg !1566, !tbaa !1512
  %314 = icmp eq i16 %313, 4096, !dbg !1567
  br i1 %314, label %315, label %343, !dbg !1568

; <label>:315:                                    ; preds = %312
  %316 = load i8, i8* %175, align 4, !dbg !1569, !tbaa !411
  switch i8 %316, label %343 [
    i8 3, label %317
    i8 1, label %317
  ], !dbg !1569

; <label>:317:                                    ; preds = %315, %315
  %318 = trunc i32 %272 to i16, !dbg !1516
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #7, !dbg !1570
  %319 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %40, i16 zeroext 16, i16 zeroext %318) #8, !dbg !1571
  %320 = icmp eq i16 %319, 16, !dbg !1573
  br i1 %320, label %321, label %341, !dbg !1574

; <label>:321:                                    ; preds = %317
  %322 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1575
  %323 = load <4 x i32>, <4 x i32>* %10, align 16, !dbg !1575, !tbaa !252
  %324 = bitcast i32* %322 to <4 x i32>*, !dbg !1575
  store <4 x i32> %323, <4 x i32>* %324, align 4, !dbg !1575, !tbaa !249
  %325 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1575
  store i8 0, i8* %325, align 4, !dbg !1575, !tbaa !249
  %326 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1578
  store i8 6, i8* %326, align 4, !dbg !1578, !tbaa !704
  %327 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #8, !dbg !1580
  %328 = load i32, i32* %42, align 4, !dbg !1581, !tbaa !1532
  %329 = call i32 @lwip_htonl(i32 %328) #8, !dbg !1581
  store i8 3, i8* %45, align 2, !dbg !1585, !tbaa !399
  %330 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1586
  %331 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1587
  %332 = icmp ult i32 %329, 604800, !dbg !1588
  %333 = select i1 %332, i32 %329, i32 604800, !dbg !1588
  store i32 %333, i32* %331, align 8, !dbg !1589, !tbaa !938
  call fastcc void @dns_call_found(i8 zeroext %194, %struct.ip_addr* nonnull %330) #8, !dbg !1590
  %334 = load i32, i32* %331, align 8, !dbg !1591, !tbaa !938
  %335 = icmp eq i32 %334, 0, !dbg !1592
  br i1 %335, label %336, label %340, !dbg !1593

; <label>:336:                                    ; preds = %321
  %337 = load i8, i8* %45, align 2, !dbg !1594, !tbaa !399
  %338 = icmp eq i8 %337, 3, !dbg !1595
  br i1 %338, label %339, label %340, !dbg !1596

; <label>:339:                                    ; preds = %336
  store i8 0, i8* %45, align 2, !dbg !1597, !tbaa !399
  br label %340, !dbg !1598

; <label>:340:                                    ; preds = %321, %336, %339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1599
  br label %341, !dbg !1600

; <label>:341:                                    ; preds = %317, %340
  %342 = phi i32 [ 1, %340 ], [ 2, %317 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #7, !dbg !1601
  br label %416

; <label>:343:                                    ; preds = %277, %279, %282, %282, %315, %312, %274
  %344 = add i16 %261, 11, !dbg !1602
  %345 = zext i16 %344 to i32, !dbg !1602
  %346 = load i16, i16* %38, align 4, !dbg !1604, !tbaa !1512
  %347 = call zeroext i16 @lwip_htons(i16 zeroext %346) #8, !dbg !1605
  %348 = zext i16 %347 to i32, !dbg !1605
  %349 = add nuw nsw i32 %348, %345, !dbg !1606
  %350 = icmp ugt i32 %349, 65535, !dbg !1607
  br i1 %350, label %421, label %351, !dbg !1608

; <label>:351:                                    ; preds = %343
  %352 = load i16, i16* %38, align 4, !dbg !1609, !tbaa !1512
  %353 = call zeroext i16 @lwip_htons(i16 zeroext %352) #8, !dbg !1610
  %354 = zext i16 %353 to i32, !dbg !1610
  %355 = add nuw nsw i32 %354, %345, !dbg !1611
  %356 = add i16 %228, -1, !dbg !1612
  %357 = icmp eq i16 %356, 0, !dbg !1417
  br i1 %357, label %358, label %227, !dbg !1418, !llvm.loop !1613

; <label>:358:                                    ; preds = %351, %227
  %359 = load i8, i8* %175, align 4, !dbg !1615, !tbaa !411
  br label %360, !dbg !1615

; <label>:360:                                    ; preds = %191, %358
  %361 = phi i8 [ %359, %358 ], [ %176, %191 ], !dbg !1615
  %362 = trunc i64 %44 to i8, !dbg !1419
  %363 = and i8 %361, -2, !dbg !1617
  %364 = icmp eq i8 %363, 2, !dbg !1617
  br i1 %364, label %365, label %369, !dbg !1617

; <label>:365:                                    ; preds = %360
  %366 = icmp eq i8 %361, 2, !dbg !1618
  %367 = zext i1 %366 to i8, !dbg !1621
  store i8 %367, i8* %175, align 4, !dbg !1623, !tbaa !411
  %368 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1624
  store i8 1, i8* %45, align 2, !dbg !1625, !tbaa !399
  call fastcc void @dns_check_entry(i8 zeroext %362) #9, !dbg !1626
  br label %423, !dbg !1627

; <label>:369:                                    ; preds = %223, %360
  %370 = phi i8 [ %196, %223 ], [ %362, %360 ]
  %371 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1628
  br label %374, !dbg !1633

; <label>:372:                                    ; preds = %386
  %373 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 8
  br label %389, !dbg !1634

; <label>:374:                                    ; preds = %386, %369
  %375 = phi i64 [ 0, %369 ], [ %387, %386 ]
  %376 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %375, i32 0, !dbg !1635
  %377 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %376, align 8, !dbg !1635, !tbaa !420
  %378 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %377, null, !dbg !1636
  br i1 %378, label %386, label %379, !dbg !1637

; <label>:379:                                    ; preds = %374
  %380 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %375, i32 2, !dbg !1638
  %381 = load i8, i8* %380, align 8, !dbg !1638, !tbaa !433
  %382 = icmp eq i8 %381, %370, !dbg !1639
  br i1 %382, label %383, label %386, !dbg !1640

; <label>:383:                                    ; preds = %379
  %384 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %375, i32 1, !dbg !1641
  %385 = load i8*, i8** %384, align 8, !dbg !1641, !tbaa !430
  call void %377(i8* nonnull %98, %struct.ip_addr* null, i8* %385) #8, !dbg !1642
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %376, align 8, !dbg !1643, !tbaa !420
  br label %386, !dbg !1644

; <label>:386:                                    ; preds = %383, %379, %374
  %387 = add nuw nsw i64 %375, 1, !dbg !1645
  %388 = icmp eq i64 %387, 32, !dbg !1646
  br i1 %388, label %372, label %374, !dbg !1633, !llvm.loop !898

; <label>:389:                                    ; preds = %433, %372
  %390 = phi i64 [ 0, %372 ], [ %434, %433 ]
  %391 = icmp eq i64 %390, %44, !dbg !1647
  br i1 %391, label %401, label %392, !dbg !1648

; <label>:392:                                    ; preds = %389
  %393 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %390, i32 3, !dbg !1649
  %394 = load i8, i8* %393, align 2, !dbg !1649, !tbaa !399
  %395 = icmp eq i8 %394, 2, !dbg !1650
  br i1 %395, label %396, label %401, !dbg !1651

; <label>:396:                                    ; preds = %392
  %397 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %390, i32 8, !dbg !1652
  %398 = load i8, i8* %397, align 1, !dbg !1652, !tbaa !648
  %399 = load i8, i8* %373, align 1, !dbg !1653, !tbaa !648
  %400 = icmp eq i8 %398, %399, !dbg !1654
  br i1 %400, label %414, label %401, !dbg !1655

; <label>:401:                                    ; preds = %396, %392, %389
  %402 = or i64 %390, 1, !dbg !1656
  %403 = icmp eq i64 %402, %44, !dbg !1647
  br i1 %403, label %433, label %424, !dbg !1648

; <label>:404:                                    ; preds = %433
  %405 = load i8, i8* %373, align 1, !dbg !1657, !tbaa !648
  %406 = icmp ult i8 %405, 32, !dbg !1658
  br i1 %406, label %407, label %415, !dbg !1659

; <label>:407:                                    ; preds = %404
  %408 = zext i8 %405 to i64, !dbg !1660
  %409 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %408, !dbg !1660
  %410 = load %struct.udp_pcb*, %struct.udp_pcb** %409, align 8, !dbg !1660, !tbaa !514
  call void @udp_remove(%struct.udp_pcb* %410) #8, !dbg !1661
  %411 = load i8, i8* %373, align 1, !dbg !1662, !tbaa !648
  %412 = zext i8 %411 to i64, !dbg !1663
  %413 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %412, !dbg !1663
  store %struct.udp_pcb* null, %struct.udp_pcb** %413, align 8, !dbg !1664, !tbaa !514
  br label %414, !dbg !1665

; <label>:414:                                    ; preds = %396, %428, %407
  store i8 32, i8* %373, align 1, !dbg !1666, !tbaa !648
  br label %415, !dbg !1667

; <label>:415:                                    ; preds = %414, %404
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1667
  store i8 0, i8* %45, align 2, !dbg !1668, !tbaa !399
  br label %423, !dbg !1669

; <label>:416:                                    ; preds = %341, %310
  %417 = phi i32 [ %342, %341 ], [ %311, %310 ]
  switch i32 %417, label %423 [
    i32 0, label %418
    i32 2, label %421
  ]

; <label>:418:                                    ; preds = %43, %48, %416
  %419 = add nuw nsw i64 %44, 1, !dbg !1670
  %420 = icmp ult i64 %419, 32, !dbg !1671
  br i1 %420, label %43, label %421, !dbg !1304, !llvm.loop !1672

; <label>:421:                                    ; preds = %180, %184, %181, %177, %168, %165, %75, %76, %81, %86, %91, %96, %61, %52, %418, %416, %343, %271, %268, %265, %264, %164, %224, %17, %5
  %422 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1674
  br label %423, !dbg !1675

; <label>:423:                                    ; preds = %416, %365, %415, %421
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #7, !dbg !1676
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %12) #7, !dbg !1676
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %11) #7, !dbg !1676
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  ret void, !dbg !1676

; <label>:424:                                    ; preds = %401
  %425 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %402, i32 3, !dbg !1649
  %426 = load i8, i8* %425, align 2, !dbg !1649, !tbaa !399
  %427 = icmp eq i8 %426, 2, !dbg !1650
  br i1 %427, label %428, label %433, !dbg !1651

; <label>:428:                                    ; preds = %424
  %429 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %402, i32 8, !dbg !1652
  %430 = load i8, i8* %429, align 1, !dbg !1652, !tbaa !648
  %431 = load i8, i8* %373, align 1, !dbg !1653, !tbaa !648
  %432 = icmp eq i8 %430, %431, !dbg !1654
  br i1 %432, label %414, label %433, !dbg !1655

; <label>:433:                                    ; preds = %428, %424, %401
  %434 = add nuw nsw i64 %390, 2, !dbg !1656
  %435 = icmp ult i64 %434, 32, !dbg !1677
  br i1 %435, label %389, label %404, !dbg !1634, !llvm.loop !962
}

; Function Attrs: noredzone
declare dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf*, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @pbuf_try_get_at(%struct.pbuf*, i16 zeroext) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i8* @__locale_ctype_ptr() local_unnamed_addr #4

; Function Attrs: nounwind readnone speculatable

attributes #0 = { norecurse noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable }
attributes #3 = { argmemonly nounwind }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone }
attributes #10 = { nobuiltin noredzone noreturn nounwind }

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
!279 = !DILocation(line: 1131, column: 1, scope: !271, inlinedAt: !274)
!280 = !DILocation(line: 399, column: 1, scope: !269)
!281 = distinct !DISubprogram(name: "dns_gethostbyname", scope: !3, file: !3, line: 1526, type: !282, isLocal: false, isDefinition: true, scopeLine: 1528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !290)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !138, !289, !207, !61}
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !6, line: 96, baseType: !285)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !63, line: 126, baseType: !286)
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !65, line: 20, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !67, line: 41, baseType: !288)
!288 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!290 = !{!291, !292, !293, !294}
!291 = !DILocalVariable(name: "hostname", arg: 1, scope: !281, file: !3, line: 1526, type: !138)
!292 = !DILocalVariable(name: "addr", arg: 2, scope: !281, file: !3, line: 1526, type: !289)
!293 = !DILocalVariable(name: "found", arg: 3, scope: !281, file: !3, line: 1526, type: !207)
!294 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !281, file: !3, line: 1527, type: !61)
!295 = !DILocation(line: 1526, column: 31, scope: !281)
!296 = !DILocation(line: 1526, column: 52, scope: !281)
!297 = !DILocation(line: 1526, column: 77, scope: !281)
!298 = !DILocation(line: 1527, column: 25, scope: !281)
!299 = !DILocation(line: 1529, column: 10, scope: !281)
!300 = !DILocation(line: 1529, column: 3, scope: !281)
!301 = distinct !DISubprogram(name: "dns_gethostbyname_addrtype", scope: !3, file: !3, line: 1547, type: !302, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{!284, !138, !289, !207, !61, !74}
!304 = !{!305, !306, !307, !308, !309, !310, !315}
!305 = !DILocalVariable(name: "hostname", arg: 1, scope: !301, file: !3, line: 1547, type: !138)
!306 = !DILocalVariable(name: "addr", arg: 2, scope: !301, file: !3, line: 1547, type: !289)
!307 = !DILocalVariable(name: "found", arg: 3, scope: !301, file: !3, line: 1547, type: !207)
!308 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !301, file: !3, line: 1548, type: !61)
!309 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !301, file: !3, line: 1548, type: !74)
!310 = !DILocalVariable(name: "hostnamelen", scope: !301, file: !3, line: 1550, type: !311)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !312, line: 40, baseType: !313)
!312 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !314, line: 129, baseType: !72)
!314 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!315 = !DILocalVariable(name: "fallback", scope: !316, file: !3, line: 1596, type: !74)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 1594, column: 103)
!317 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1594, column: 7)
!318 = !DILocation(line: 1547, column: 40, scope: !301)
!319 = !DILocation(line: 1547, column: 61, scope: !301)
!320 = !DILocation(line: 1547, column: 86, scope: !301)
!321 = !DILocation(line: 1548, column: 34, scope: !301)
!322 = !DILocation(line: 1548, column: 53, scope: !301)
!323 = !DILocation(line: 1556, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1556, column: 7)
!325 = !DILocation(line: 1557, column: 9, scope: !324)
!326 = !DILocation(line: 1556, column: 22, scope: !324)
!327 = !DILocation(line: 1557, column: 24, scope: !324)
!328 = !DILocation(line: 1556, column: 7, scope: !301)
!329 = !DILocation(line: 1565, column: 17, scope: !301)
!330 = !DILocation(line: 1550, column: 10, scope: !301)
!331 = !DILocation(line: 1566, column: 19, scope: !332)
!332 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1566, column: 7)
!333 = !DILocation(line: 1566, column: 7, scope: !301)
!334 = !DILocation(line: 1580, column: 7, scope: !335)
!335 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1580, column: 7)
!336 = !DILocation(line: 1580, column: 7, scope: !301)
!337 = !DILocation(line: 1582, column: 10, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !3, line: 1582, column: 9)
!339 = distinct !DILexicalBlock(scope: !335, file: !3, line: 1580, column: 36)
!340 = !{!341, !250, i64 20}
!341 = !{!"ip_addr", !250, i64 0, !250, i64 20}
!342 = !DILocation(line: 1582, column: 42, scope: !338)
!343 = !DILocation(line: 1582, column: 25, scope: !338)
!344 = !DILocation(line: 1583, column: 10, scope: !338)
!345 = !DILocation(line: 1583, column: 42, scope: !338)
!346 = !DILocation(line: 1583, column: 25, scope: !338)
!347 = !DILocation(line: 1590, column: 7, scope: !348)
!348 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1590, column: 7)
!349 = !DILocation(line: 1590, column: 70, scope: !348)
!350 = !DILocation(line: 1590, column: 7, scope: !301)
!351 = !DILocation(line: 1594, column: 53, scope: !317)
!352 = !DILocation(line: 1594, column: 21, scope: !317)
!353 = !DILocation(line: 1599, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 1597, column: 54)
!355 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1597, column: 9)
!356 = !DILocation(line: 1596, column: 10, scope: !316)
!357 = !DILocation(line: 1602, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !316, file: !3, line: 1602, column: 9)
!359 = !DILocation(line: 1602, column: 68, scope: !358)
!360 = !DILocation(line: 1621, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 1621, column: 9)
!362 = distinct !DILexicalBlock(scope: !301, file: !3, line: 1619, column: 3)
!363 = !DILocation(line: 1621, column: 9, scope: !362)
!364 = !DILocation(line: 1388, column: 23, scope: !365, inlinedAt: !393)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 1388, column: 9)
!366 = distinct !DILexicalBlock(scope: !367, file: !3, line: 1387, column: 40)
!367 = distinct !DILexicalBlock(scope: !368, file: !3, line: 1387, column: 3)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1387, column: 3)
!369 = distinct !DISubprogram(name: "dns_enqueue", scope: !3, file: !3, line: 1375, type: !370, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !372)
!370 = !DISubroutineType(types: !371)
!371 = !{!284, !138, !311, !207, !61, !74}
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !383, !384, !386, !387}
!373 = !DILocalVariable(name: "name", arg: 1, scope: !369, file: !3, line: 1375, type: !138)
!374 = !DILocalVariable(name: "hostnamelen", arg: 2, scope: !369, file: !3, line: 1375, type: !311)
!375 = !DILocalVariable(name: "found", arg: 3, scope: !369, file: !3, line: 1375, type: !207)
!376 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !369, file: !3, line: 1376, type: !61)
!377 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !369, file: !3, line: 1376, type: !74)
!378 = !DILocalVariable(name: "i", scope: !369, file: !3, line: 1378, type: !74)
!379 = !DILocalVariable(name: "lseq", scope: !369, file: !3, line: 1379, type: !74)
!380 = !DILocalVariable(name: "lseqi", scope: !369, file: !3, line: 1379, type: !74)
!381 = !DILocalVariable(name: "entry", scope: !369, file: !3, line: 1380, type: !382)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!383 = !DILocalVariable(name: "namelen", scope: !369, file: !3, line: 1381, type: !311)
!384 = !DILocalVariable(name: "req", scope: !369, file: !3, line: 1382, type: !385)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!386 = !DILocalVariable(name: "r", scope: !369, file: !3, line: 1385, type: !74)
!387 = !DILocalVariable(name: "age", scope: !388, file: !3, line: 1425, type: !74)
!388 = distinct !DILexicalBlock(scope: !389, file: !3, line: 1424, column: 41)
!389 = distinct !DILexicalBlock(scope: !390, file: !3, line: 1424, column: 9)
!390 = distinct !DILexicalBlock(scope: !391, file: !3, line: 1417, column: 40)
!391 = distinct !DILexicalBlock(scope: !392, file: !3, line: 1417, column: 3)
!392 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1417, column: 3)
!393 = distinct !DILocation(line: 1627, column: 10, scope: !301)
!394 = !DILocation(line: 1378, column: 8, scope: !369, inlinedAt: !393)
!395 = !DILocation(line: 1380, column: 27, scope: !369, inlinedAt: !393)
!396 = !DILocation(line: 1379, column: 14, scope: !369, inlinedAt: !393)
!397 = !DILocation(line: 1379, column: 8, scope: !369, inlinedAt: !393)
!398 = !DILocation(line: 1417, column: 3, scope: !392, inlinedAt: !393)
!399 = !{!400, !250, i64 30}
!400 = !{!"dns_table_entry", !253, i64 0, !341, i64 4, !401, i64 28, !250, i64 30, !250, i64 31, !250, i64 32, !250, i64 33, !250, i64 34, !250, i64 35, !250, i64 36, !250, i64 292}
!401 = !{!"short", !250, i64 0}
!402 = !DILocation(line: 1388, column: 29, scope: !365, inlinedAt: !393)
!403 = !DILocation(line: 1388, column: 50, scope: !365, inlinedAt: !393)
!404 = !DILocation(line: 1389, column: 30, scope: !365, inlinedAt: !393)
!405 = !DILocation(line: 1389, column: 10, scope: !365, inlinedAt: !393)
!406 = !DILocation(line: 1389, column: 76, scope: !365, inlinedAt: !393)
!407 = !DILocation(line: 1388, column: 9, scope: !366, inlinedAt: !393)
!408 = !DILocation(line: 1391, column: 24, scope: !409, inlinedAt: !393)
!409 = distinct !DILexicalBlock(scope: !410, file: !3, line: 1391, column: 11)
!410 = distinct !DILexicalBlock(scope: !365, file: !3, line: 1389, column: 83)
!411 = !{!400, !250, i64 292}
!412 = !DILocation(line: 1391, column: 36, scope: !409, inlinedAt: !393)
!413 = !DILocation(line: 1391, column: 11, scope: !410, inlinedAt: !393)
!414 = !DILocation(line: 1385, column: 8, scope: !369, inlinedAt: !393)
!415 = !DILocation(line: 1400, column: 29, scope: !416, inlinedAt: !393)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 1400, column: 13)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 1399, column: 46)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 1399, column: 7)
!419 = distinct !DILexicalBlock(scope: !410, file: !3, line: 1399, column: 7)
!420 = !{!421, !422, i64 0}
!421 = !{!"dns_req_entry", !422, i64 0, !422, i64 8, !250, i64 16, !250, i64 17}
!422 = !{!"any pointer", !250, i64 0}
!423 = !DILocation(line: 1400, column: 35, scope: !416, inlinedAt: !393)
!424 = !DILocation(line: 1399, column: 42, scope: !418, inlinedAt: !393)
!425 = !DILocation(line: 1400, column: 13, scope: !417, inlinedAt: !393)
!426 = !DILocation(line: 1401, column: 33, scope: !427, inlinedAt: !393)
!427 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1400, column: 41)
!428 = !DILocation(line: 1402, column: 27, scope: !427, inlinedAt: !393)
!429 = !DILocation(line: 1402, column: 31, scope: !427, inlinedAt: !393)
!430 = !{!421, !422, i64 8}
!431 = !DILocation(line: 1403, column: 27, scope: !427, inlinedAt: !393)
!432 = !DILocation(line: 1403, column: 41, scope: !427, inlinedAt: !393)
!433 = !{!421, !250, i64 16}
!434 = !DILocation(line: 1404, column: 11, scope: !435, inlinedAt: !393)
!435 = distinct !DILexicalBlock(scope: !427, file: !3, line: 1404, column: 11)
!436 = !{!421, !250, i64 17}
!437 = !DILocation(line: 1406, column: 11, scope: !427, inlinedAt: !393)
!438 = !DILocation(line: 1387, column: 36, scope: !367, inlinedAt: !393)
!439 = !DILocation(line: 1387, column: 17, scope: !367, inlinedAt: !393)
!440 = !DILocation(line: 1387, column: 3, scope: !368, inlinedAt: !393)
!441 = distinct !{!441, !442, !443}
!442 = !DILocation(line: 1387, column: 3, scope: !368)
!443 = !DILocation(line: 1410, column: 3, scope: !368)
!444 = !DILocation(line: 1420, column: 16, scope: !445, inlinedAt: !393)
!445 = distinct !DILexicalBlock(scope: !390, file: !3, line: 1420, column: 9)
!446 = !DILocation(line: 1420, column: 9, scope: !390, inlinedAt: !393)
!447 = !DILocation(line: 1425, column: 44, scope: !388, inlinedAt: !393)
!448 = !{!400, !250, i64 34}
!449 = !DILocation(line: 1425, column: 35, scope: !388, inlinedAt: !393)
!450 = !DILocation(line: 1425, column: 12, scope: !388, inlinedAt: !393)
!451 = !DILocation(line: 1426, column: 15, scope: !452, inlinedAt: !393)
!452 = distinct !DILexicalBlock(scope: !388, file: !3, line: 1426, column: 11)
!453 = !DILocation(line: 1426, column: 11, scope: !388, inlinedAt: !393)
!454 = !DILocation(line: 1430, column: 5, scope: !388, inlinedAt: !393)
!455 = !DILocation(line: 0, scope: !369, inlinedAt: !393)
!456 = !DILocation(line: 1417, column: 35, scope: !391, inlinedAt: !393)
!457 = !DILocation(line: 1418, column: 14, scope: !390, inlinedAt: !393)
!458 = !DILocation(line: 1434, column: 9, scope: !459, inlinedAt: !393)
!459 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1434, column: 7)
!460 = !DILocation(line: 1434, column: 7, scope: !369, inlinedAt: !393)
!461 = !DILocation(line: 1435, column: 16, scope: !462, inlinedAt: !393)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 1435, column: 9)
!463 = distinct !DILexicalBlock(scope: !459, file: !3, line: 1434, column: 28)
!464 = !DILocation(line: 1435, column: 35, scope: !462, inlinedAt: !393)
!465 = !DILocation(line: 1435, column: 39, scope: !462, inlinedAt: !393)
!466 = !DILocation(line: 1435, column: 56, scope: !462, inlinedAt: !393)
!467 = !DILocation(line: 1435, column: 62, scope: !462, inlinedAt: !393)
!468 = !DILocation(line: 1435, column: 9, scope: !463, inlinedAt: !393)
!469 = !DILocation(line: 1444, column: 3, scope: !463, inlinedAt: !393)
!470 = !DILocation(line: 1449, column: 8, scope: !471, inlinedAt: !393)
!471 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1449, column: 3)
!472 = !DILocation(line: 0, scope: !390, inlinedAt: !393)
!473 = !DILocation(line: 0, scope: !392, inlinedAt: !393)
!474 = !DILocation(line: 1382, column: 25, scope: !369, inlinedAt: !393)
!475 = !DILocation(line: 1449, column: 3, scope: !471, inlinedAt: !393)
!476 = !DILocation(line: 1450, column: 25, scope: !477, inlinedAt: !393)
!477 = distinct !DILexicalBlock(scope: !478, file: !3, line: 1450, column: 9)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 1449, column: 42)
!479 = distinct !DILexicalBlock(scope: !471, file: !3, line: 1449, column: 3)
!480 = !DILocation(line: 1450, column: 31, scope: !477, inlinedAt: !393)
!481 = !DILocation(line: 1449, column: 38, scope: !479, inlinedAt: !393)
!482 = !DILocation(line: 1450, column: 9, scope: !478, inlinedAt: !393)
!483 = !DILocation(line: 1460, column: 8, scope: !369, inlinedAt: !393)
!484 = !DILocation(line: 1460, column: 22, scope: !369, inlinedAt: !393)
!485 = !DILocation(line: 1470, column: 10, scope: !369, inlinedAt: !393)
!486 = !DILocation(line: 1470, column: 16, scope: !369, inlinedAt: !393)
!487 = !DILocation(line: 1471, column: 10, scope: !369, inlinedAt: !393)
!488 = !DILocation(line: 1471, column: 16, scope: !369, inlinedAt: !393)
!489 = !DILocation(line: 1472, column: 3, scope: !490, inlinedAt: !393)
!490 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1472, column: 3)
!491 = !DILocation(line: 1473, column: 3, scope: !492, inlinedAt: !393)
!492 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1473, column: 3)
!493 = !DILocation(line: 1474, column: 14, scope: !369, inlinedAt: !393)
!494 = !DILocation(line: 1475, column: 8, scope: !369, inlinedAt: !393)
!495 = !DILocation(line: 1475, column: 14, scope: !369, inlinedAt: !393)
!496 = !DILocation(line: 1476, column: 13, scope: !369, inlinedAt: !393)
!497 = !DILocation(line: 1381, column: 10, scope: !369, inlinedAt: !393)
!498 = !DILocation(line: 1477, column: 3, scope: !369, inlinedAt: !393)
!499 = !DILocation(line: 1478, column: 3, scope: !369, inlinedAt: !393)
!500 = !DILocation(line: 1478, column: 24, scope: !369, inlinedAt: !393)
!501 = !DILocalVariable(name: "i", scope: !502, file: !3, line: 902, type: !74)
!502 = distinct !DISubprogram(name: "dns_alloc_pcb", scope: !3, file: !3, line: 900, type: !503, isLocal: true, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !505)
!503 = !DISubroutineType(types: !504)
!504 = !{!74}
!505 = !{!501, !506}
!506 = !DILocalVariable(name: "idx", scope: !502, file: !3, line: 903, type: !74)
!507 = !DILocation(line: 902, column: 8, scope: !502, inlinedAt: !508)
!508 = distinct !DILocation(line: 1481, column: 20, scope: !369, inlinedAt: !393)
!509 = !DILocation(line: 906, column: 9, scope: !510, inlinedAt: !508)
!510 = distinct !DILexicalBlock(scope: !511, file: !3, line: 906, column: 9)
!511 = distinct !DILexicalBlock(scope: !512, file: !3, line: 905, column: 46)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 905, column: 3)
!513 = distinct !DILexicalBlock(scope: !502, file: !3, line: 905, column: 3)
!514 = !{!422, !422, i64 0}
!515 = !DILocation(line: 906, column: 21, scope: !510, inlinedAt: !508)
!516 = !DILocation(line: 906, column: 9, scope: !511, inlinedAt: !508)
!517 = !DILocation(line: 871, column: 9, scope: !518, inlinedAt: !526)
!518 = distinct !DISubprogram(name: "dns_alloc_random_port", scope: !3, file: !3, line: 866, type: !519, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !521)
!519 = !DISubroutineType(types: !520)
!520 = !{!166}
!521 = !{!522, !523, !524}
!522 = !DILocalVariable(name: "err", scope: !518, file: !3, line: 868, type: !284)
!523 = !DILocalVariable(name: "pcb", scope: !518, file: !3, line: 869, type: !166)
!524 = !DILocalVariable(name: "port", scope: !525, file: !3, line: 877, type: !68)
!525 = distinct !DILexicalBlock(scope: !518, file: !3, line: 876, column: 6)
!526 = distinct !DILocation(line: 911, column: 19, scope: !527, inlinedAt: !508)
!527 = distinct !DILexicalBlock(scope: !528, file: !3, line: 910, column: 33)
!528 = distinct !DILexicalBlock(scope: !502, file: !3, line: 910, column: 7)
!529 = !DILocation(line: 869, column: 19, scope: !518, inlinedAt: !526)
!530 = !DILocation(line: 872, column: 11, scope: !531, inlinedAt: !526)
!531 = distinct !DILexicalBlock(scope: !518, file: !3, line: 872, column: 7)
!532 = !DILocation(line: 872, column: 7, scope: !518, inlinedAt: !526)
!533 = !DILocation(line: 65, column: 2, scope: !534, inlinedAt: !551)
!534 = distinct !DISubprogram(name: "isolated_rand", scope: !535, file: !535, line: 63, type: !536, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !540)
!535 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!536 = !DISubroutineType(types: !537)
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !539, line: 88, baseType: !28)
!539 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!540 = !{!541, !542, !548}
!541 = !DILocalVariable(name: "randn", scope: !534, file: !535, line: 65, type: !538)
!542 = !DILocalVariable(name: "tid", scope: !543, file: !535, line: 66, type: !64)
!543 = distinct !DILexicalBlock(scope: !544, file: !535, line: 66, column: 2)
!544 = distinct !DILexicalBlock(scope: !545, file: !535, line: 66, column: 2)
!545 = distinct !DILexicalBlock(scope: !546, file: !535, line: 66, column: 2)
!546 = distinct !DILexicalBlock(scope: !547, file: !535, line: 66, column: 2)
!547 = distinct !DILexicalBlock(scope: !534, file: !535, line: 66, column: 2)
!548 = !DILocalVariable(name: "_ret", scope: !543, file: !535, line: 66, type: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 60, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 105, baseType: !72)
!551 = distinct !DILocation(line: 877, column: 25, scope: !525, inlinedAt: !526)
!552 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !559)
!553 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !554, file: !554, line: 116, type: !555, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !557)
!554 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!555 = !DISubroutineType(types: !556)
!556 = !{!72}
!557 = !{!558}
!558 = !DILocalVariable(name: "sp", scope: !553, file: !554, line: 118, type: !72)
!559 = distinct !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !551)
!560 = !{i32 567311}
!561 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !559)
!562 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !559)
!563 = !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !551)
!564 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !565)
!565 = distinct !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !551)
!566 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !565)
!567 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !565)
!568 = !DILocation(line: 66, column: 2, scope: !547, inlinedAt: !551)
!569 = !DILocation(line: 65, column: 11, scope: !570, inlinedAt: !575)
!570 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !571, file: !571, line: 60, type: !536, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !572)
!571 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!572 = !{!573, !574}
!573 = !DILocalVariable(name: "iflags", scope: !570, file: !571, line: 62, type: !72)
!574 = !DILocalVariable(name: "ret", scope: !570, file: !571, line: 63, type: !538)
!575 = distinct !DILocation(line: 66, column: 2, scope: !576, inlinedAt: !551)
!576 = distinct !DILexicalBlock(scope: !546, file: !535, line: 66, column: 2)
!577 = !DILocation(line: 62, column: 16, scope: !570, inlinedAt: !575)
!578 = !DILocation(line: 66, column: 8, scope: !570, inlinedAt: !575)
!579 = !DILocation(line: 63, column: 8, scope: !570, inlinedAt: !575)
!580 = !DILocation(line: 67, column: 2, scope: !570, inlinedAt: !575)
!581 = !DILocation(line: 69, column: 2, scope: !570, inlinedAt: !575)
!582 = !DILocation(line: 65, column: 8, scope: !534, inlinedAt: !551)
!583 = !DILocation(line: 66, column: 2, scope: !576, inlinedAt: !551)
!584 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !585)
!585 = distinct !DILocation(line: 49, column: 21, scope: !586, inlinedAt: !592)
!586 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !587, file: !587, line: 47, type: !588, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !590)
!587 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!588 = !DISubroutineType(types: !589)
!589 = !{!7}
!590 = !{!591}
!591 = !DILocalVariable(name: "sp", scope: !586, file: !587, line: 49, type: !72)
!592 = distinct !DILocation(line: 66, column: 2, scope: !543, inlinedAt: !551)
!593 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !585)
!594 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !585)
!595 = !DILocation(line: 49, column: 16, scope: !586, inlinedAt: !592)
!596 = !DILocation(line: 50, column: 19, scope: !586, inlinedAt: !592)
!597 = !DILocation(line: 50, column: 11, scope: !586, inlinedAt: !592)
!598 = !DILocation(line: 50, column: 9, scope: !586, inlinedAt: !592)
!599 = !DILocation(line: 50, column: 2, scope: !586, inlinedAt: !592)
!600 = !DILocation(line: 66, column: 2, scope: !543, inlinedAt: !551)
!601 = !{i32 -2146788971, i32 -2146788958, i32 -2146788933, i32 -2146788909, i32 -2146788884, i32 -2146788809, i32 -2146788784, i32 -2146788640, i32 -2146785547, i32 -2146785458, i32 -2146785337, i32 -2146785242, i32 -2146785141, i32 -2146785114, i32 -2146785031, i32 -2146784942, i32 -2146784821, i32 -2146784721, i32 -2146784615, i32 -2146784507, i32 -2146788357, i32 -2146788304, i32 -2146788273, i32 -2146788242, i32 -2146788221, i32 -2146788199, i32 -2146788150, i32 -2146788129, i32 -2146784424, i32 -2146784335, i32 -2146784214, i32 -2146784115, i32 -2146784009, i32 -2146783907, i32 -2146783874, i32 -2146783801, i32 -2146783733, i32 -2146787827, i32 -2146787768, i32 -2146787715, i32 -2146787684, i32 -2146787653, i32 -2146787632, i32 -2146787610, i32 -2146787561, i32 -2146787540, i32 -2146783682, i32 -2146783593, i32 -2146783472, i32 -2146783373, i32 -2146783267, i32 -2146783165, i32 -2146783132, i32 -2146783049, i32 -2146782960, i32 -2146782839, i32 -2146782739, i32 -2146782713, i32 -2146782610, i32 -2146782584, i32 -2146787282, i32 -2146787215, i32 -2146787190, i32 -2146787126, i32 -2146787044, i32 -2146787021, i32 -2146786996, i32 -2146786971}
!602 = !DILocation(line: 66, column: 2, scope: !603, inlinedAt: !551)
!603 = distinct !DILexicalBlock(scope: !604, file: !535, line: 66, column: 2)
!604 = distinct !DILexicalBlock(scope: !543, file: !535, line: 66, column: 2)
!605 = !{i32 -2146786024, i32 -2146786007}
!606 = !DILocation(line: 67, column: 9, scope: !534, inlinedAt: !551)
!607 = !DILocation(line: 68, column: 1, scope: !534, inlinedAt: !551)
!608 = !DILocation(line: 67, column: 2, scope: !534, inlinedAt: !551)
!609 = !DILocation(line: 878, column: 9, scope: !610, inlinedAt: !526)
!610 = distinct !DILexicalBlock(scope: !525, file: !3, line: 878, column: 9)
!611 = !DILocation(line: 878, column: 9, scope: !525, inlinedAt: !526)
!612 = !DILocation(line: 877, column: 18, scope: !525, inlinedAt: !526)
!613 = !DILocation(line: 877, column: 11, scope: !525, inlinedAt: !526)
!614 = !DILocation(line: 879, column: 13, scope: !615, inlinedAt: !526)
!615 = distinct !DILexicalBlock(scope: !610, file: !3, line: 878, column: 33)
!616 = !DILocation(line: 868, column: 9, scope: !518, inlinedAt: !526)
!617 = !DILocation(line: 880, column: 5, scope: !615, inlinedAt: !526)
!618 = !DILocation(line: 0, scope: !619, inlinedAt: !526)
!619 = distinct !DILexicalBlock(scope: !610, file: !3, line: 880, column: 12)
!620 = !DILocation(line: 884, column: 3, scope: !525, inlinedAt: !526)
!621 = !DILocation(line: 886, column: 5, scope: !622, inlinedAt: !526)
!622 = distinct !DILexicalBlock(scope: !623, file: !3, line: 885, column: 22)
!623 = distinct !DILexicalBlock(scope: !518, file: !3, line: 885, column: 7)
!624 = !DILocation(line: 887, column: 5, scope: !622, inlinedAt: !526)
!625 = !DILocation(line: 891, column: 1, scope: !518, inlinedAt: !526)
!626 = !DILocation(line: 911, column: 17, scope: !527, inlinedAt: !508)
!627 = !DILocation(line: 912, column: 9, scope: !527, inlinedAt: !508)
!628 = !DILocation(line: 920, column: 28, scope: !629, inlinedAt: !508)
!629 = distinct !DILexicalBlock(scope: !502, file: !3, line: 920, column: 3)
!630 = !DILocation(line: 903, column: 8, scope: !502, inlinedAt: !508)
!631 = !DILocation(line: 920, column: 3, scope: !629, inlinedAt: !508)
!632 = !DILocation(line: 0, scope: !633, inlinedAt: !508)
!633 = distinct !DILexicalBlock(scope: !629, file: !3, line: 920, column: 3)
!634 = !DILocation(line: 921, column: 13, scope: !635, inlinedAt: !508)
!635 = distinct !DILexicalBlock(scope: !636, file: !3, line: 921, column: 9)
!636 = distinct !DILexicalBlock(scope: !633, file: !3, line: 920, column: 89)
!637 = !DILocation(line: 921, column: 9, scope: !636, inlinedAt: !508)
!638 = !DILocation(line: 924, column: 9, scope: !639, inlinedAt: !508)
!639 = distinct !DILexicalBlock(scope: !636, file: !3, line: 924, column: 9)
!640 = !DILocation(line: 924, column: 23, scope: !639, inlinedAt: !508)
!641 = !DILocation(line: 920, column: 78, scope: !633, inlinedAt: !508)
!642 = !DILocation(line: 924, column: 9, scope: !636, inlinedAt: !508)
!643 = !DILocation(line: 889, column: 3, scope: !518, inlinedAt: !526)
!644 = !DILocation(line: 1482, column: 7, scope: !369, inlinedAt: !393)
!645 = !DILocation(line: 930, column: 1, scope: !502, inlinedAt: !508)
!646 = !DILocation(line: 1481, column: 10, scope: !369, inlinedAt: !393)
!647 = !DILocation(line: 1481, column: 18, scope: !369, inlinedAt: !393)
!648 = !{!400, !250, i64 35}
!649 = !DILocation(line: 1485, column: 18, scope: !650, inlinedAt: !393)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 1482, column: 47)
!651 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1482, column: 7)
!652 = !DILocation(line: 1486, column: 16, scope: !650, inlinedAt: !393)
!653 = !DILocation(line: 1487, column: 5, scope: !650, inlinedAt: !393)
!654 = !DILocation(line: 1496, column: 12, scope: !369, inlinedAt: !393)
!655 = !DILocation(line: 1499, column: 3, scope: !369, inlinedAt: !393)
!656 = !DILocation(line: 1502, column: 3, scope: !369, inlinedAt: !393)
!657 = !DILocation(line: 1503, column: 1, scope: !369, inlinedAt: !393)
!658 = !DILocation(line: 1627, column: 3, scope: !301)
!659 = !DILocation(line: 0, scope: !660)
!660 = distinct !DILexicalBlock(scope: !324, file: !3, line: 1557, column: 38)
!661 = !DILocation(line: 1629, column: 1, scope: !301)
!662 = !DILocation(line: 920, column: 53, scope: !633, inlinedAt: !508)
!663 = distinct !{!663, !664, !665}
!664 = !DILocation(line: 920, column: 3, scope: !629)
!665 = !DILocation(line: 928, column: 3, scope: !629)
!666 = !DILocation(line: 1449, column: 17, scope: !479, inlinedAt: !393)
!667 = distinct !{!667, !668, !669}
!668 = !DILocation(line: 1449, column: 3, scope: !471)
!669 = !DILocation(line: 1454, column: 3, scope: !471)
!670 = !DILocation(line: 1417, column: 17, scope: !391, inlinedAt: !393)
!671 = distinct !{!671, !672, !673}
!672 = !DILocation(line: 1417, column: 3, scope: !392)
!673 = !DILocation(line: 1431, column: 3, scope: !392)
!674 = !DILocation(line: 1399, column: 21, scope: !418, inlinedAt: !393)
!675 = !DILocation(line: 1399, column: 7, scope: !419, inlinedAt: !393)
!676 = distinct !{!676, !677, !678}
!677 = !DILocation(line: 1399, column: 7, scope: !419)
!678 = !DILocation(line: 1408, column: 7, scope: !419)
!679 = distinct !DISubprogram(name: "dns_lookup", scope: !3, file: !3, line: 602, type: !680, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !682)
!680 = !DISubroutineType(types: !681)
!681 = !{!284, !138, !289, !74}
!682 = !{!683, !684, !685, !686}
!683 = !DILocalVariable(name: "name", arg: 1, scope: !679, file: !3, line: 602, type: !138)
!684 = !DILocalVariable(name: "addr", arg: 2, scope: !679, file: !3, line: 602, type: !289)
!685 = !DILocalVariable(name: "dns_addrtype", arg: 3, scope: !679, file: !3, line: 602, type: !74)
!686 = !DILocalVariable(name: "i", scope: !679, file: !3, line: 604, type: !74)
!687 = !DILocation(line: 602, column: 24, scope: !679)
!688 = !DILocation(line: 602, column: 41, scope: !679)
!689 = !DILocation(line: 602, column: 46, scope: !679)
!690 = !DILocation(line: 604, column: 8, scope: !679)
!691 = !DILocation(line: 617, column: 3, scope: !692)
!692 = distinct !DILexicalBlock(scope: !679, file: !3, line: 617, column: 3)
!693 = !DILocation(line: 618, column: 23, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 618, column: 9)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 617, column: 40)
!696 = distinct !DILexicalBlock(scope: !692, file: !3, line: 617, column: 3)
!697 = !DILocation(line: 618, column: 29, scope: !694)
!698 = !DILocation(line: 618, column: 48, scope: !694)
!699 = !DILocation(line: 619, column: 30, scope: !694)
!700 = !DILocation(line: 619, column: 10, scope: !694)
!701 = !DILocation(line: 619, column: 76, scope: !694)
!702 = !DILocation(line: 619, column: 82, scope: !694)
!703 = !DILocation(line: 620, column: 9, scope: !694)
!704 = !{!400, !250, i64 24}
!705 = !DILocation(line: 618, column: 9, scope: !695)
!706 = !DILocation(line: 624, column: 11, scope: !707)
!707 = distinct !DILexicalBlock(scope: !708, file: !3, line: 624, column: 11)
!708 = distinct !DILexicalBlock(scope: !694, file: !3, line: 620, column: 72)
!709 = !DILocation(line: 624, column: 11, scope: !708)
!710 = !DILocation(line: 625, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !712, file: !3, line: 625, column: 9)
!712 = distinct !DILexicalBlock(scope: !713, file: !3, line: 625, column: 9)
!713 = distinct !DILexicalBlock(scope: !707, file: !3, line: 624, column: 17)
!714 = !DILocation(line: 625, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !712, file: !3, line: 625, column: 9)
!716 = !DILocation(line: 625, column: 9, scope: !717)
!717 = distinct !DILexicalBlock(scope: !718, file: !3, line: 625, column: 9)
!718 = distinct !DILexicalBlock(scope: !715, file: !3, line: 625, column: 9)
!719 = !DILocation(line: 625, column: 9, scope: !712)
!720 = !DILocation(line: 625, column: 9, scope: !718)
!721 = !DILocation(line: 625, column: 9, scope: !722)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 625, column: 9)
!723 = distinct !DILexicalBlock(scope: !715, file: !3, line: 625, column: 9)
!724 = !DILocation(line: 617, column: 35, scope: !696)
!725 = !DILocation(line: 617, column: 17, scope: !696)
!726 = distinct !{!726, !691, !727}
!727 = !DILocation(line: 629, column: 3, scope: !692)
!728 = !DILocation(line: 0, scope: !679)
!729 = !DILocation(line: 632, column: 1, scope: !679)
!730 = distinct !DISubprogram(name: "dns_check_entry", scope: !3, file: !3, line: 1047, type: !731, isLocal: true, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !733)
!731 = !DISubroutineType(types: !732)
!732 = !{null, !74}
!733 = !{!734, !735, !736}
!734 = !DILocalVariable(name: "i", arg: 1, scope: !730, file: !3, line: 1047, type: !74)
!735 = !DILocalVariable(name: "err", scope: !730, file: !3, line: 1049, type: !284)
!736 = !DILocalVariable(name: "entry", scope: !730, file: !3, line: 1050, type: !382)
!737 = !DILocation(line: 1047, column: 22, scope: !730)
!738 = !DILocation(line: 1050, column: 36, scope: !730)
!739 = !DILocation(line: 1052, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 1052, column: 3)
!741 = distinct !DILexicalBlock(scope: !730, file: !3, line: 1052, column: 3)
!742 = !DILocation(line: 1052, column: 3, scope: !741)
!743 = !DILocation(line: 1052, column: 3, scope: !744)
!744 = distinct !DILexicalBlock(scope: !745, file: !3, line: 1052, column: 3)
!745 = distinct !DILexicalBlock(scope: !740, file: !3, line: 1052, column: 3)
!746 = !DILocation(line: 1052, column: 3, scope: !747)
!747 = distinct !DILexicalBlock(scope: !748, file: !3, line: 1052, column: 3)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 1052, column: 3)
!749 = distinct !DILexicalBlock(scope: !744, file: !3, line: 1052, column: 3)
!750 = !DILocation(line: 1054, column: 18, scope: !730)
!751 = !DILocation(line: 1054, column: 3, scope: !730)
!752 = !DILocation(line: 1003, column: 3, scope: !753, inlinedAt: !759)
!753 = distinct !DISubprogram(name: "dns_create_txid", scope: !3, file: !3, line: 1000, type: !754, isLocal: true, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!68}
!756 = !{!757, !758}
!757 = !DILocalVariable(name: "txid", scope: !753, file: !3, line: 1002, type: !68)
!758 = !DILocalVariable(name: "i", scope: !753, file: !3, line: 1003, type: !74)
!759 = distinct !DILocation(line: 1057, column: 21, scope: !760)
!760 = distinct !DILexicalBlock(scope: !730, file: !3, line: 1054, column: 25)
!761 = !DILocation(line: 65, column: 2, scope: !534, inlinedAt: !762)
!762 = distinct !DILocation(line: 1006, column: 17, scope: !753, inlinedAt: !759)
!763 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !764)
!764 = distinct !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !762)
!765 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !764)
!766 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !764)
!767 = !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !762)
!768 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !769)
!769 = distinct !DILocation(line: 66, column: 2, scope: !546, inlinedAt: !762)
!770 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !769)
!771 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !769)
!772 = !DILocation(line: 66, column: 2, scope: !547, inlinedAt: !762)
!773 = !DILocation(line: 65, column: 11, scope: !570, inlinedAt: !774)
!774 = distinct !DILocation(line: 66, column: 2, scope: !576, inlinedAt: !762)
!775 = !DILocation(line: 62, column: 16, scope: !570, inlinedAt: !774)
!776 = !DILocation(line: 66, column: 8, scope: !570, inlinedAt: !774)
!777 = !DILocation(line: 63, column: 8, scope: !570, inlinedAt: !774)
!778 = !DILocation(line: 67, column: 2, scope: !570, inlinedAt: !774)
!779 = !DILocation(line: 69, column: 2, scope: !570, inlinedAt: !774)
!780 = !DILocation(line: 65, column: 8, scope: !534, inlinedAt: !762)
!781 = !DILocation(line: 66, column: 2, scope: !576, inlinedAt: !762)
!782 = !DILocation(line: 120, column: 2, scope: !553, inlinedAt: !783)
!783 = distinct !DILocation(line: 49, column: 21, scope: !586, inlinedAt: !784)
!784 = distinct !DILocation(line: 66, column: 2, scope: !543, inlinedAt: !762)
!785 = !DILocation(line: 118, column: 16, scope: !553, inlinedAt: !783)
!786 = !DILocation(line: 121, column: 2, scope: !553, inlinedAt: !783)
!787 = !DILocation(line: 49, column: 16, scope: !586, inlinedAt: !784)
!788 = !DILocation(line: 50, column: 19, scope: !586, inlinedAt: !784)
!789 = !DILocation(line: 50, column: 11, scope: !586, inlinedAt: !784)
!790 = !DILocation(line: 50, column: 9, scope: !586, inlinedAt: !784)
!791 = !DILocation(line: 50, column: 2, scope: !586, inlinedAt: !784)
!792 = !DILocation(line: 66, column: 2, scope: !543, inlinedAt: !762)
!793 = !DILocation(line: 66, column: 2, scope: !603, inlinedAt: !762)
!794 = !DILocation(line: 67, column: 9, scope: !534, inlinedAt: !762)
!795 = !DILocation(line: 68, column: 1, scope: !534, inlinedAt: !762)
!796 = !DILocation(line: 67, column: 2, scope: !534, inlinedAt: !762)
!797 = !DILocation(line: 1006, column: 10, scope: !753, inlinedAt: !759)
!798 = !DILocation(line: 1002, column: 9, scope: !753, inlinedAt: !759)
!799 = !DILocation(line: 1003, column: 8, scope: !753, inlinedAt: !759)
!800 = !DILocation(line: 1009, column: 3, scope: !801, inlinedAt: !759)
!801 = distinct !DILexicalBlock(scope: !753, file: !3, line: 1009, column: 3)
!802 = !DILocation(line: 1010, column: 23, scope: !803, inlinedAt: !759)
!803 = distinct !DILexicalBlock(scope: !804, file: !3, line: 1010, column: 9)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 1009, column: 40)
!805 = distinct !DILexicalBlock(scope: !801, file: !3, line: 1009, column: 3)
!806 = !DILocation(line: 1010, column: 29, scope: !803, inlinedAt: !759)
!807 = !DILocation(line: 1010, column: 50, scope: !803, inlinedAt: !759)
!808 = !DILocation(line: 1011, column: 23, scope: !803, inlinedAt: !759)
!809 = !{!400, !401, i64 28}
!810 = !DILocation(line: 1011, column: 28, scope: !803, inlinedAt: !759)
!811 = !DILocation(line: 1010, column: 9, scope: !804, inlinedAt: !759)
!812 = !DILocation(line: 1009, column: 36, scope: !805, inlinedAt: !759)
!813 = !DILocation(line: 1017, column: 3, scope: !753, inlinedAt: !759)
!814 = !DILocation(line: 1057, column: 14, scope: !760)
!815 = !DILocation(line: 1057, column: 19, scope: !760)
!816 = !DILocation(line: 1058, column: 20, scope: !760)
!817 = !DILocation(line: 1059, column: 14, scope: !760)
!818 = !DILocation(line: 1059, column: 25, scope: !760)
!819 = !{!400, !250, i64 31}
!820 = !DILocation(line: 1060, column: 14, scope: !760)
!821 = !DILocation(line: 1060, column: 18, scope: !760)
!822 = !{!400, !250, i64 32}
!823 = !DILocation(line: 1061, column: 14, scope: !760)
!824 = !DILocation(line: 1061, column: 22, scope: !760)
!825 = !{!400, !250, i64 33}
!826 = !DILocation(line: 1064, column: 13, scope: !760)
!827 = !DILocation(line: 1049, column: 9, scope: !730)
!828 = !DILocation(line: 1069, column: 7, scope: !760)
!829 = !DILocation(line: 1071, column: 20, scope: !830)
!830 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1071, column: 11)
!831 = !DILocation(line: 1071, column: 11, scope: !830)
!832 = !DILocation(line: 1071, column: 24, scope: !830)
!833 = !DILocation(line: 1071, column: 11, scope: !760)
!834 = !DILocation(line: 1072, column: 22, scope: !835)
!835 = distinct !DILexicalBlock(scope: !836, file: !3, line: 1072, column: 13)
!836 = distinct !DILexicalBlock(scope: !830, file: !3, line: 1071, column: 30)
!837 = !DILocation(line: 1072, column: 13, scope: !835)
!838 = !DILocation(line: 1072, column: 30, scope: !835)
!839 = !DILocation(line: 1072, column: 13, scope: !836)
!840 = !DILocalVariable(name: "ret", scope: !841, file: !3, line: 1026, type: !74)
!841 = distinct !DISubprogram(name: "dns_backupserver_available", scope: !3, file: !3, line: 1024, type: !842, isLocal: true, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !844)
!842 = !DISubroutineType(types: !843)
!843 = !{!74, !382}
!844 = !{!845, !840}
!845 = !DILocalVariable(name: "pentry", arg: 1, scope: !841, file: !3, line: 1024, type: !382)
!846 = !DILocation(line: 1026, column: 8, scope: !841, inlinedAt: !847)
!847 = distinct !DILocation(line: 1073, column: 15, scope: !848)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 1073, column: 15)
!849 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1072, column: 50)
!850 = !DILocation(line: 1029, column: 18, scope: !851, inlinedAt: !847)
!851 = distinct !DILexicalBlock(scope: !852, file: !3, line: 1029, column: 9)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 1028, column: 15)
!853 = distinct !DILexicalBlock(scope: !841, file: !3, line: 1028, column: 7)
!854 = !DILocation(line: 1029, column: 10, scope: !851, inlinedAt: !847)
!855 = !DILocation(line: 1029, column: 29, scope: !851, inlinedAt: !847)
!856 = !DILocation(line: 1029, column: 33, scope: !851, inlinedAt: !847)
!857 = !DILocation(line: 1029, column: 52, scope: !851, inlinedAt: !847)
!858 = !DILocation(line: 1029, column: 56, scope: !851, inlinedAt: !847)
!859 = !DILocation(line: 1029, column: 9, scope: !852, inlinedAt: !847)
!860 = !DILocation(line: 1034, column: 3, scope: !841, inlinedAt: !847)
!861 = !DILocation(line: 1079, column: 30, scope: !862)
!862 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1077, column: 16)
!863 = !DILocation(line: 1080, column: 24, scope: !862)
!864 = !DILocation(line: 1081, column: 28, scope: !862)
!865 = !DILocation(line: 1090, column: 9, scope: !849)
!866 = !DILocalVariable(name: "idx", arg: 1, scope: !867, file: !3, line: 942, type: !74)
!867 = distinct !DISubprogram(name: "dns_call_found", scope: !3, file: !3, line: 942, type: !868, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !870)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !74, !289}
!870 = !{!866, !871, !872}
!871 = !DILocalVariable(name: "addr", arg: 2, scope: !867, file: !3, line: 942, type: !289)
!872 = !DILocalVariable(name: "i", scope: !867, file: !3, line: 945, type: !74)
!873 = !DILocation(line: 942, column: 21, scope: !867, inlinedAt: !874)
!874 = distinct !DILocation(line: 1085, column: 13, scope: !875)
!875 = distinct !DILexicalBlock(scope: !848, file: !3, line: 1082, column: 18)
!876 = !DILocation(line: 942, column: 37, scope: !867, inlinedAt: !874)
!877 = !DILocation(line: 945, column: 8, scope: !867, inlinedAt: !874)
!878 = !DILocation(line: 962, column: 3, scope: !879, inlinedAt: !874)
!879 = distinct !DILexicalBlock(scope: !867, file: !3, line: 962, column: 3)
!880 = !DILocation(line: 977, column: 3, scope: !881, inlinedAt: !874)
!881 = distinct !DILexicalBlock(scope: !867, file: !3, line: 977, column: 3)
!882 = !DILocation(line: 963, column: 25, scope: !883, inlinedAt: !874)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 963, column: 9)
!884 = distinct !DILexicalBlock(scope: !885, file: !3, line: 962, column: 42)
!885 = distinct !DILexicalBlock(scope: !879, file: !3, line: 962, column: 3)
!886 = !DILocation(line: 963, column: 9, scope: !883, inlinedAt: !874)
!887 = !DILocation(line: 963, column: 31, scope: !883, inlinedAt: !874)
!888 = !DILocation(line: 963, column: 51, scope: !883, inlinedAt: !874)
!889 = !DILocation(line: 963, column: 65, scope: !883, inlinedAt: !874)
!890 = !DILocation(line: 963, column: 9, scope: !884, inlinedAt: !874)
!891 = !DILocation(line: 964, column: 75, scope: !892, inlinedAt: !874)
!892 = distinct !DILexicalBlock(scope: !883, file: !3, line: 963, column: 74)
!893 = !DILocation(line: 964, column: 7, scope: !892, inlinedAt: !874)
!894 = !DILocation(line: 966, column: 29, scope: !892, inlinedAt: !874)
!895 = !DILocation(line: 967, column: 5, scope: !892, inlinedAt: !874)
!896 = !DILocation(line: 962, column: 38, scope: !885, inlinedAt: !874)
!897 = !DILocation(line: 962, column: 17, scope: !885, inlinedAt: !874)
!898 = distinct !{!898, !899, !900}
!899 = !DILocation(line: 962, column: 3, scope: !879)
!900 = !DILocation(line: 968, column: 3, scope: !879)
!901 = !DILocation(line: 978, column: 11, scope: !902, inlinedAt: !874)
!902 = distinct !DILexicalBlock(scope: !903, file: !3, line: 978, column: 9)
!903 = distinct !DILexicalBlock(scope: !904, file: !3, line: 977, column: 42)
!904 = distinct !DILexicalBlock(scope: !881, file: !3, line: 977, column: 3)
!905 = !DILocation(line: 978, column: 9, scope: !903, inlinedAt: !874)
!906 = !DILocation(line: 981, column: 22, scope: !907, inlinedAt: !874)
!907 = distinct !DILexicalBlock(scope: !903, file: !3, line: 981, column: 9)
!908 = !DILocation(line: 981, column: 28, scope: !907, inlinedAt: !874)
!909 = !DILocation(line: 981, column: 9, scope: !903, inlinedAt: !874)
!910 = !DILocation(line: 982, column: 24, scope: !911, inlinedAt: !874)
!911 = distinct !DILexicalBlock(scope: !912, file: !3, line: 982, column: 11)
!912 = distinct !DILexicalBlock(scope: !907, file: !3, line: 981, column: 49)
!913 = !DILocation(line: 982, column: 50, scope: !911, inlinedAt: !874)
!914 = !DILocation(line: 982, column: 32, scope: !911, inlinedAt: !874)
!915 = !DILocation(line: 982, column: 11, scope: !912, inlinedAt: !874)
!916 = !DILocation(line: 977, column: 38, scope: !904, inlinedAt: !874)
!917 = !DILocation(line: 989, column: 22, scope: !918, inlinedAt: !874)
!918 = distinct !DILexicalBlock(scope: !867, file: !3, line: 989, column: 7)
!919 = !DILocation(line: 989, column: 30, scope: !918, inlinedAt: !874)
!920 = !DILocation(line: 989, column: 7, scope: !867, inlinedAt: !874)
!921 = !DILocation(line: 991, column: 16, scope: !922, inlinedAt: !874)
!922 = distinct !DILexicalBlock(scope: !918, file: !3, line: 989, column: 54)
!923 = !DILocation(line: 991, column: 5, scope: !922, inlinedAt: !874)
!924 = !DILocation(line: 992, column: 29, scope: !922, inlinedAt: !874)
!925 = !DILocation(line: 992, column: 5, scope: !922, inlinedAt: !874)
!926 = !DILocation(line: 992, column: 38, scope: !922, inlinedAt: !874)
!927 = !DILocation(line: 994, column: 3, scope: !922, inlinedAt: !874)
!928 = !DILocation(line: 0, scope: !875)
!929 = !DILocation(line: 996, column: 1, scope: !867, inlinedAt: !874)
!930 = !DILocation(line: 1087, column: 26, scope: !875)
!931 = !DILocation(line: 1088, column: 13, scope: !875)
!932 = !DILocation(line: 1092, column: 22, scope: !933)
!933 = distinct !DILexicalBlock(scope: !835, file: !3, line: 1090, column: 16)
!934 = !DILocation(line: 1096, column: 15, scope: !836)
!935 = !DILocation(line: 1101, column: 7, scope: !836)
!936 = !DILocation(line: 1105, column: 19, scope: !937)
!937 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1105, column: 11)
!938 = !{!400, !253, i64 0}
!939 = !DILocation(line: 1105, column: 23, scope: !937)
!940 = !DILocation(line: 1105, column: 29, scope: !937)
!941 = !DILocation(line: 1105, column: 33, scope: !937)
!942 = !DILocation(line: 1105, column: 46, scope: !937)
!943 = !DILocation(line: 1105, column: 11, scope: !760)
!944 = !DILocation(line: 1108, column: 22, scope: !945)
!945 = distinct !DILexicalBlock(scope: !937, file: !3, line: 1105, column: 53)
!946 = !DILocation(line: 1109, column: 7, scope: !945)
!947 = !DILocation(line: 1115, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !949, file: !3, line: 1115, column: 7)
!949 = distinct !DILexicalBlock(scope: !950, file: !3, line: 1115, column: 7)
!950 = distinct !DILexicalBlock(scope: !951, file: !3, line: 1115, column: 7)
!951 = distinct !DILexicalBlock(scope: !760, file: !3, line: 1115, column: 7)
!952 = !DILocation(line: 1115, column: 7, scope: !953)
!953 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1115, column: 7)
!954 = distinct !DILexicalBlock(scope: !955, file: !3, line: 1115, column: 7)
!955 = distinct !DILexicalBlock(scope: !948, file: !3, line: 1115, column: 7)
!956 = !DILocation(line: 1118, column: 1, scope: !730)
!957 = !DILocation(line: 1009, column: 17, scope: !805, inlinedAt: !759)
!958 = distinct !{!958, !959, !960}
!959 = !DILocation(line: 1009, column: 3, scope: !801)
!960 = !DILocation(line: 1015, column: 3, scope: !801)
!961 = !DILocation(line: 977, column: 17, scope: !904, inlinedAt: !874)
!962 = distinct !{!962, !963, !964}
!963 = !DILocation(line: 977, column: 3, scope: !881)
!964 = !DILocation(line: 988, column: 3, scope: !881)
!965 = !DILocation(line: 194, column: 43, scope: !134)
!966 = !DILocation(line: 196, column: 2, scope: !134)
!967 = !DILocation(line: 196, column: 10, scope: !134)
!968 = !DILocation(line: 197, column: 2, scope: !134)
!969 = !DILocation(line: 198, column: 2, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !135, line: 198, column: 2)
!971 = distinct !DILexicalBlock(scope: !134, file: !135, line: 198, column: 2)
!972 = !DILocation(line: 199, column: 2, scope: !134)
!973 = !DILocation(line: 200, column: 1, scope: !134)
!974 = distinct !DISubprogram(name: "dns_send", scope: !3, file: !3, line: 748, type: !975, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !977)
!975 = !DISubroutineType(types: !976)
!976 = !{!284, !74}
!977 = !{!978, !979, !980, !991, !996, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1007}
!978 = !DILocalVariable(name: "idx", arg: 1, scope: !974, file: !3, line: 748, type: !74)
!979 = !DILocalVariable(name: "err", scope: !974, file: !3, line: 750, type: !284)
!980 = !DILocalVariable(name: "hdr", scope: !974, file: !3, line: 751, type: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_hdr", file: !982, line: 103, size: 96, elements: !983)
!982 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/dns.h", directory: "/root/.unikraft/apps/redis/build")
!983 = !{!984, !985, !986, !987, !988, !989, !990}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !981, file: !982, line: 104, baseType: !68, size: 16)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "flags1", scope: !981, file: !982, line: 105, baseType: !74, size: 8, offset: 16)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "flags2", scope: !981, file: !982, line: 106, baseType: !74, size: 8, offset: 24)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "numquestions", scope: !981, file: !982, line: 107, baseType: !68, size: 16, offset: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "numanswers", scope: !981, file: !982, line: 108, baseType: !68, size: 16, offset: 48)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "numauthrr", scope: !981, file: !982, line: 109, baseType: !68, size: 16, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "numextrarr", scope: !981, file: !982, line: 110, baseType: !68, size: 16, offset: 80)
!991 = !DILocalVariable(name: "qry", scope: !974, file: !3, line: 752, type: !992)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_query", file: !3, line: 189, size: 32, elements: !993)
!993 = !{!994, !995}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !992, file: !3, line: 192, baseType: !68, size: 16)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !992, file: !3, line: 193, baseType: !68, size: 16, offset: 16)
!996 = !DILocalVariable(name: "p", scope: !974, file: !3, line: 753, type: !188)
!997 = !DILocalVariable(name: "query_idx", scope: !974, file: !3, line: 754, type: !68)
!998 = !DILocalVariable(name: "copy_len", scope: !974, file: !3, line: 754, type: !68)
!999 = !DILocalVariable(name: "hostname", scope: !974, file: !3, line: 755, type: !138)
!1000 = !DILocalVariable(name: "hostname_part", scope: !974, file: !3, line: 755, type: !138)
!1001 = !DILocalVariable(name: "n", scope: !974, file: !3, line: 756, type: !74)
!1002 = !DILocalVariable(name: "pcb_idx", scope: !974, file: !3, line: 757, type: !74)
!1003 = !DILocalVariable(name: "entry", scope: !974, file: !3, line: 758, type: !382)
!1004 = !DILocalVariable(name: "dst", scope: !1005, file: !3, line: 780, type: !199)
!1005 = distinct !DILexicalBlock(scope: !1006, file: !3, line: 779, column: 18)
!1006 = distinct !DILexicalBlock(scope: !974, file: !3, line: 779, column: 7)
!1007 = !DILocalVariable(name: "dst_port", scope: !1005, file: !3, line: 781, type: !68)
!1008 = !DILocation(line: 748, column: 15, scope: !974)
!1009 = !DILocation(line: 751, column: 3, scope: !974)
!1010 = !DILocation(line: 752, column: 3, scope: !974)
!1011 = !DILocation(line: 758, column: 36, scope: !974)
!1012 = !DILocation(line: 762, column: 3, scope: !1013)
!1013 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 762, column: 3)
!1014 = distinct !DILexicalBlock(scope: !974, file: !3, line: 762, column: 3)
!1015 = !DILocation(line: 762, column: 3, scope: !1014)
!1016 = !DILocation(line: 762, column: 3, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 762, column: 3)
!1018 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 762, column: 3)
!1019 = !DILocation(line: 762, column: 3, scope: !1020)
!1020 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 762, column: 3)
!1021 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 762, column: 3)
!1022 = distinct !DILexicalBlock(scope: !1017, file: !3, line: 762, column: 3)
!1023 = !DILocation(line: 763, column: 7, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !974, file: !3, line: 763, column: 7)
!1025 = !DILocation(line: 763, column: 7, scope: !974)
!1026 = !DILocation(line: 942, column: 21, scope: !867, inlinedAt: !1027)
!1027 = distinct !DILocation(line: 770, column: 5, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 767, column: 8)
!1029 = !DILocation(line: 942, column: 37, scope: !867, inlinedAt: !1027)
!1030 = !DILocation(line: 945, column: 8, scope: !867, inlinedAt: !1027)
!1031 = !DILocation(line: 962, column: 3, scope: !879, inlinedAt: !1027)
!1032 = !DILocation(line: 977, column: 3, scope: !881, inlinedAt: !1027)
!1033 = !DILocation(line: 963, column: 25, scope: !883, inlinedAt: !1027)
!1034 = !DILocation(line: 963, column: 9, scope: !883, inlinedAt: !1027)
!1035 = !DILocation(line: 963, column: 31, scope: !883, inlinedAt: !1027)
!1036 = !DILocation(line: 963, column: 51, scope: !883, inlinedAt: !1027)
!1037 = !DILocation(line: 963, column: 65, scope: !883, inlinedAt: !1027)
!1038 = !DILocation(line: 963, column: 9, scope: !884, inlinedAt: !1027)
!1039 = !DILocation(line: 964, column: 75, scope: !892, inlinedAt: !1027)
!1040 = !DILocation(line: 964, column: 7, scope: !892, inlinedAt: !1027)
!1041 = !DILocation(line: 966, column: 29, scope: !892, inlinedAt: !1027)
!1042 = !DILocation(line: 967, column: 5, scope: !892, inlinedAt: !1027)
!1043 = !DILocation(line: 962, column: 38, scope: !885, inlinedAt: !1027)
!1044 = !DILocation(line: 962, column: 17, scope: !885, inlinedAt: !1027)
!1045 = !DILocation(line: 978, column: 11, scope: !902, inlinedAt: !1027)
!1046 = !DILocation(line: 978, column: 9, scope: !903, inlinedAt: !1027)
!1047 = !DILocation(line: 981, column: 22, scope: !907, inlinedAt: !1027)
!1048 = !DILocation(line: 981, column: 28, scope: !907, inlinedAt: !1027)
!1049 = !DILocation(line: 981, column: 9, scope: !903, inlinedAt: !1027)
!1050 = !DILocation(line: 982, column: 24, scope: !911, inlinedAt: !1027)
!1051 = !DILocation(line: 982, column: 50, scope: !911, inlinedAt: !1027)
!1052 = !DILocation(line: 982, column: 32, scope: !911, inlinedAt: !1027)
!1053 = !DILocation(line: 982, column: 11, scope: !912, inlinedAt: !1027)
!1054 = !DILocation(line: 977, column: 38, scope: !904, inlinedAt: !1027)
!1055 = !DILocation(line: 989, column: 22, scope: !918, inlinedAt: !1027)
!1056 = !DILocation(line: 989, column: 30, scope: !918, inlinedAt: !1027)
!1057 = !DILocation(line: 989, column: 7, scope: !867, inlinedAt: !1027)
!1058 = !DILocation(line: 991, column: 16, scope: !922, inlinedAt: !1027)
!1059 = !DILocation(line: 991, column: 5, scope: !922, inlinedAt: !1027)
!1060 = !DILocation(line: 992, column: 29, scope: !922, inlinedAt: !1027)
!1061 = !DILocation(line: 992, column: 5, scope: !922, inlinedAt: !1027)
!1062 = !DILocation(line: 992, column: 38, scope: !922, inlinedAt: !1027)
!1063 = !DILocation(line: 994, column: 3, scope: !922, inlinedAt: !1027)
!1064 = !DILocation(line: 0, scope: !1028)
!1065 = !DILocation(line: 996, column: 1, scope: !867, inlinedAt: !1027)
!1066 = !DILocation(line: 772, column: 12, scope: !1028)
!1067 = !DILocation(line: 772, column: 18, scope: !1028)
!1068 = !DILocation(line: 773, column: 5, scope: !1028)
!1069 = !DILocation(line: 777, column: 66, scope: !974)
!1070 = !DILocation(line: 777, column: 59, scope: !974)
!1071 = !DILocation(line: 777, column: 34, scope: !974)
!1072 = !DILocation(line: 777, column: 7, scope: !974)
!1073 = !DILocation(line: 753, column: 16, scope: !974)
!1074 = !DILocation(line: 779, column: 9, scope: !1006)
!1075 = !DILocation(line: 779, column: 7, scope: !974)
!1076 = !DILocation(line: 783, column: 5, scope: !1005)
!1077 = !DILocation(line: 784, column: 32, scope: !1005)
!1078 = !DILocation(line: 784, column: 14, scope: !1005)
!1079 = !DILocation(line: 784, column: 9, scope: !1005)
!1080 = !DILocation(line: 784, column: 12, scope: !1005)
!1081 = !{!1082, !401, i64 0}
!1082 = !{!"dns_hdr", !401, i64 0, !250, i64 2, !250, i64 3, !401, i64 4, !401, i64 6, !401, i64 8, !401, i64 10}
!1083 = !DILocation(line: 785, column: 9, scope: !1005)
!1084 = !DILocation(line: 785, column: 16, scope: !1005)
!1085 = !{!1082, !250, i64 2}
!1086 = !DILocation(line: 786, column: 9, scope: !1005)
!1087 = !DILocation(line: 786, column: 22, scope: !1005)
!1088 = !{!1082, !401, i64 4}
!1089 = !DILocation(line: 787, column: 5, scope: !1005)
!1090 = !DILocation(line: 755, column: 15, scope: !974)
!1091 = !DILocation(line: 789, column: 5, scope: !1005)
!1092 = !DILocation(line: 754, column: 9, scope: !974)
!1093 = !DILocation(line: 793, column: 5, scope: !1005)
!1094 = !DILocation(line: 0, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 793, column: 8)
!1096 = !DILocation(line: 794, column: 7, scope: !1095)
!1097 = !DILocation(line: 755, column: 26, scope: !974)
!1098 = !DILocation(line: 756, column: 8, scope: !974)
!1099 = !DILocation(line: 796, column: 12, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 796, column: 7)
!1101 = !DILocation(line: 0, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1103, file: !3, line: 796, column: 67)
!1103 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 796, column: 7)
!1104 = !DILocation(line: 0, scope: !1103)
!1105 = !DILocation(line: 796, column: 19, scope: !1103)
!1106 = !DILocation(line: 796, column: 36, scope: !1103)
!1107 = !DILocation(line: 797, column: 9, scope: !1102)
!1108 = !DILocation(line: 796, column: 55, scope: !1103)
!1109 = !DILocation(line: 796, column: 7, scope: !1103)
!1110 = distinct !{!1110, !1111, !1112}
!1111 = !DILocation(line: 796, column: 7, scope: !1100)
!1112 = !DILocation(line: 798, column: 7, scope: !1100)
!1113 = !DILocation(line: 800, column: 11, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 800, column: 11)
!1115 = !DILocation(line: 800, column: 23, scope: !1114)
!1116 = !DILocation(line: 800, column: 21, scope: !1114)
!1117 = !DILocation(line: 800, column: 29, scope: !1114)
!1118 = !DILocation(line: 800, column: 11, scope: !1095)
!1119 = !DILocation(line: 799, column: 35, scope: !1095)
!1120 = !DILocation(line: 799, column: 18, scope: !1095)
!1121 = !DILocation(line: 754, column: 20, scope: !974)
!1122 = !DILocation(line: 804, column: 7, scope: !1095)
!1123 = !DILocation(line: 805, column: 66, scope: !1095)
!1124 = !DILocation(line: 805, column: 7, scope: !1095)
!1125 = !DILocation(line: 806, column: 19, scope: !1095)
!1126 = !DILocation(line: 807, column: 14, scope: !1005)
!1127 = !DILocation(line: 807, column: 24, scope: !1005)
!1128 = !DILocation(line: 807, column: 5, scope: !1095)
!1129 = distinct !{!1129, !1093, !1130}
!1130 = !DILocation(line: 807, column: 28, scope: !1005)
!1131 = !DILocation(line: 808, column: 5, scope: !1005)
!1132 = !DILocation(line: 809, column: 14, scope: !1005)
!1133 = !DILocation(line: 812, column: 9, scope: !1134)
!1134 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 812, column: 9)
!1135 = !DILocation(line: 0, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 814, column: 12)
!1137 = !{!1138, !401, i64 0}
!1138 = !{!"dns_query", !401, i64 0, !401, i64 2}
!1139 = !DILocation(line: 817, column: 9, scope: !1005)
!1140 = !DILocation(line: 817, column: 13, scope: !1005)
!1141 = !{!1138, !401, i64 2}
!1142 = !DILocation(line: 818, column: 5, scope: !1005)
!1143 = !DILocation(line: 821, column: 22, scope: !1005)
!1144 = !DILocation(line: 757, column: 8, scope: !974)
!1145 = !DILocation(line: 781, column: 11, scope: !1005)
!1146 = !DILocation(line: 848, column: 33, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 846, column: 5)
!1148 = !DILocation(line: 848, column: 14, scope: !1147)
!1149 = !DILocation(line: 780, column: 22, scope: !1005)
!1150 = !DILocation(line: 850, column: 22, scope: !1005)
!1151 = !DILocation(line: 850, column: 11, scope: !1005)
!1152 = !DILocation(line: 750, column: 9, scope: !974)
!1153 = !DILocation(line: 853, column: 5, scope: !1005)
!1154 = !DILocation(line: 860, column: 3, scope: !974)
!1155 = !DILocation(line: 861, column: 3, scope: !974)
!1156 = !DILocation(line: 862, column: 1, scope: !974)
!1157 = !DILocation(line: 977, column: 17, scope: !904, inlinedAt: !1027)
!1158 = !DILocation(line: 942, column: 21, scope: !867)
!1159 = !DILocation(line: 942, column: 37, scope: !867)
!1160 = !DILocation(line: 949, column: 12, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !867, file: !3, line: 949, column: 7)
!1162 = !DILocation(line: 949, column: 7, scope: !867)
!1163 = !DILocation(line: 951, column: 9, scope: !1164)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 951, column: 9)
!1165 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 949, column: 21)
!1166 = !DILocation(line: 0, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 955, column: 7)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 955, column: 7)
!1169 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 954, column: 12)
!1170 = !DILocation(line: 951, column: 9, scope: !1165)
!1171 = !DILocation(line: 952, column: 7, scope: !1172)
!1172 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 952, column: 7)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 952, column: 7)
!1174 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 951, column: 30)
!1175 = !DILocation(line: 952, column: 7, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 952, column: 7)
!1177 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 952, column: 7)
!1178 = !DILocation(line: 952, column: 7, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1180, file: !3, line: 952, column: 7)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 952, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1176, file: !3, line: 952, column: 7)
!1182 = !DILocation(line: 953, column: 34, scope: !1174)
!1183 = !DILocation(line: 954, column: 5, scope: !1174)
!1184 = !DILocation(line: 955, column: 7, scope: !1167)
!1185 = !DILocation(line: 955, column: 7, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 955, column: 7)
!1187 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 955, column: 7)
!1188 = !DILocation(line: 955, column: 7, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 955, column: 7)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 955, column: 7)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 955, column: 7)
!1192 = !DILocation(line: 956, column: 34, scope: !1169)
!1193 = !DILocation(line: 945, column: 8, scope: !867)
!1194 = !DILocation(line: 963, column: 25, scope: !883)
!1195 = !DILocation(line: 963, column: 9, scope: !883)
!1196 = !DILocation(line: 963, column: 31, scope: !883)
!1197 = !DILocation(line: 963, column: 51, scope: !883)
!1198 = !DILocation(line: 963, column: 65, scope: !883)
!1199 = !DILocation(line: 963, column: 9, scope: !884)
!1200 = !DILocation(line: 964, column: 75, scope: !892)
!1201 = !DILocation(line: 964, column: 7, scope: !892)
!1202 = !DILocation(line: 966, column: 29, scope: !892)
!1203 = !DILocation(line: 967, column: 5, scope: !892)
!1204 = !DILocation(line: 962, column: 38, scope: !885)
!1205 = !DILocation(line: 962, column: 17, scope: !885)
!1206 = !DILocation(line: 978, column: 11, scope: !902)
!1207 = !DILocation(line: 978, column: 9, scope: !903)
!1208 = !DILocation(line: 981, column: 22, scope: !907)
!1209 = !DILocation(line: 981, column: 28, scope: !907)
!1210 = !DILocation(line: 981, column: 9, scope: !903)
!1211 = !DILocation(line: 982, column: 24, scope: !911)
!1212 = !DILocation(line: 982, column: 50, scope: !911)
!1213 = !DILocation(line: 982, column: 32, scope: !911)
!1214 = !DILocation(line: 982, column: 11, scope: !912)
!1215 = !DILocation(line: 977, column: 38, scope: !904)
!1216 = !DILocation(line: 989, column: 22, scope: !918)
!1217 = !DILocation(line: 989, column: 30, scope: !918)
!1218 = !DILocation(line: 989, column: 7, scope: !867)
!1219 = !DILocation(line: 991, column: 16, scope: !922)
!1220 = !DILocation(line: 991, column: 5, scope: !922)
!1221 = !DILocation(line: 992, column: 29, scope: !922)
!1222 = !DILocation(line: 992, column: 5, scope: !922)
!1223 = !DILocation(line: 992, column: 38, scope: !922)
!1224 = !DILocation(line: 994, column: 3, scope: !922)
!1225 = !DILocation(line: 0, scope: !922)
!1226 = !DILocation(line: 996, column: 1, scope: !867)
!1227 = !DILocation(line: 977, column: 17, scope: !904)
!1228 = !DILocation(line: 65, column: 11, scope: !570)
!1229 = !DILocation(line: 62, column: 16, scope: !570)
!1230 = !DILocation(line: 66, column: 8, scope: !570)
!1231 = !DILocation(line: 63, column: 8, scope: !570)
!1232 = !DILocation(line: 67, column: 2, scope: !570)
!1233 = !DILocation(line: 69, column: 2, scope: !570)
!1234 = distinct !DISubprogram(name: "dns_recv", scope: !3, file: !3, line: 1170, type: !186, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1235)
!1235 = !{!1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1252, !1253, !1254, !1255, !1261, !1273}
!1236 = !DILocalVariable(name: "arg", arg: 1, scope: !1234, file: !3, line: 1170, type: !61)
!1237 = !DILocalVariable(name: "pcb", arg: 2, scope: !1234, file: !3, line: 1170, type: !166)
!1238 = !DILocalVariable(name: "p", arg: 3, scope: !1234, file: !3, line: 1170, type: !188)
!1239 = !DILocalVariable(name: "addr", arg: 4, scope: !1234, file: !3, line: 1170, type: !199)
!1240 = !DILocalVariable(name: "port", arg: 5, scope: !1234, file: !3, line: 1170, type: !68)
!1241 = !DILocalVariable(name: "i", scope: !1234, file: !3, line: 1172, type: !74)
!1242 = !DILocalVariable(name: "txid", scope: !1234, file: !3, line: 1173, type: !68)
!1243 = !DILocalVariable(name: "res_idx", scope: !1234, file: !3, line: 1174, type: !68)
!1244 = !DILocalVariable(name: "hdr", scope: !1234, file: !3, line: 1175, type: !981)
!1245 = !DILocalVariable(name: "ans", scope: !1234, file: !3, line: 1176, type: !1246)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_answer", file: !3, line: 199, size: 96, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1246, file: !3, line: 202, baseType: !68, size: 16)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1246, file: !3, line: 203, baseType: !68, size: 16, offset: 16)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1246, file: !3, line: 204, baseType: !62, size: 32, offset: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1246, file: !3, line: 205, baseType: !68, size: 16, offset: 64)
!1252 = !DILocalVariable(name: "qry", scope: !1234, file: !3, line: 1177, type: !992)
!1253 = !DILocalVariable(name: "nquestions", scope: !1234, file: !3, line: 1178, type: !68)
!1254 = !DILocalVariable(name: "nanswers", scope: !1234, file: !3, line: 1178, type: !68)
!1255 = !DILocalVariable(name: "entry", scope: !1256, file: !3, line: 1196, type: !382)
!1256 = distinct !DILexicalBlock(scope: !1257, file: !3, line: 1195, column: 42)
!1257 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 1195, column: 5)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1195, column: 5)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1192, column: 72)
!1260 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1192, column: 7)
!1261 = !DILocalVariable(name: "ip4addr", scope: !1262, file: !3, line: 1291, type: !99)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 1290, column: 17)
!1263 = distinct !DILexicalBlock(scope: !1264, file: !3, line: 1288, column: 21)
!1264 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1286, column: 102)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1286, column: 19)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1284, column: 54)
!1267 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1284, column: 17)
!1268 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1268, column: 60)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1267, column: 16)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1251, column: 13)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !3, line: 1198, column: 34)
!1272 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1197, column: 11)
!1273 = !DILocalVariable(name: "ip6addr", scope: !1274, file: !3, line: 1310, type: !1278)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1309, column: 17)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 1307, column: 21)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1305, column: 107)
!1277 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1305, column: 19)
!1278 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !1279, line: 60, baseType: !1280)
!1279 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!1280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !1279, line: 53, size: 128, elements: !1281)
!1281 = !{!1282}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1280, file: !1279, line: 54, baseType: !94, size: 128)
!1283 = !DILocation(line: 1170, column: 16, scope: !1234)
!1284 = !DILocation(line: 1170, column: 37, scope: !1234)
!1285 = !DILocation(line: 1170, column: 55, scope: !1234)
!1286 = !DILocation(line: 1170, column: 75, scope: !1234)
!1287 = !DILocation(line: 1170, column: 87, scope: !1234)
!1288 = !DILocation(line: 1175, column: 3, scope: !1234)
!1289 = !DILocation(line: 1176, column: 3, scope: !1234)
!1290 = !DILocation(line: 1177, column: 3, scope: !1234)
!1291 = !DILocation(line: 1185, column: 10, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1185, column: 7)
!1293 = !{!1294, !401, i64 16}
!1294 = !{!"pbuf", !422, i64 0, !422, i64 8, !401, i64 16, !401, i64 18, !250, i64 20, !250, i64 21, !250, i64 22, !250, i64 23}
!1295 = !DILocation(line: 1185, column: 18, scope: !1292)
!1296 = !DILocation(line: 1185, column: 7, scope: !1234)
!1297 = !DILocation(line: 1192, column: 7, scope: !1260)
!1298 = !DILocation(line: 1192, column: 53, scope: !1260)
!1299 = !DILocation(line: 1192, column: 7, scope: !1234)
!1300 = !DILocation(line: 1194, column: 27, scope: !1259)
!1301 = !DILocation(line: 1194, column: 12, scope: !1259)
!1302 = !DILocation(line: 1173, column: 9, scope: !1234)
!1303 = !DILocation(line: 1172, column: 8, scope: !1234)
!1304 = !DILocation(line: 1195, column: 5, scope: !1258)
!1305 = !DILocation(line: 1197, column: 19, scope: !1272)
!1306 = !DILocation(line: 1197, column: 25, scope: !1272)
!1307 = !DILocation(line: 1197, column: 46, scope: !1272)
!1308 = !DILocation(line: 1198, column: 19, scope: !1272)
!1309 = !DILocation(line: 1198, column: 24, scope: !1272)
!1310 = !DILocation(line: 1197, column: 11, scope: !1256)
!1311 = !DILocation(line: 1202, column: 37, scope: !1271)
!1312 = !DILocation(line: 1202, column: 22, scope: !1271)
!1313 = !DILocation(line: 1178, column: 9, scope: !1234)
!1314 = !DILocation(line: 1203, column: 37, scope: !1271)
!1315 = !{!1082, !401, i64 6}
!1316 = !DILocation(line: 1203, column: 22, scope: !1271)
!1317 = !DILocation(line: 1178, column: 21, scope: !1234)
!1318 = !DILocation(line: 1206, column: 18, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1206, column: 13)
!1320 = !DILocation(line: 1206, column: 47, scope: !1319)
!1321 = !DILocation(line: 1210, column: 24, scope: !1322)
!1322 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1210, column: 13)
!1323 = !DILocation(line: 1206, column: 13, scope: !1271)
!1324 = !DILocation(line: 1221, column: 16, scope: !1325)
!1325 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1221, column: 15)
!1326 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1218, column: 9)
!1327 = !DILocation(line: 1221, column: 15, scope: !1326)
!1328 = !DILocation(line: 1228, column: 36, scope: !1271)
!1329 = !DILocalVariable(name: "query", arg: 1, scope: !1330, file: !3, line: 651, type: !138)
!1330 = distinct !DISubprogram(name: "dns_compare_name", scope: !3, file: !3, line: 651, type: !1331, isLocal: true, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1333)
!1331 = !DISubroutineType(types: !1332)
!1332 = !{!68, !138, !188, !68}
!1333 = !{!1329, !1334, !1335, !1336, !1337, !1338, !1343, !1346}
!1334 = !DILocalVariable(name: "p", arg: 2, scope: !1330, file: !3, line: 651, type: !188)
!1335 = !DILocalVariable(name: "start_offset", arg: 3, scope: !1330, file: !3, line: 651, type: !68)
!1336 = !DILocalVariable(name: "n", scope: !1330, file: !3, line: 653, type: !7)
!1337 = !DILocalVariable(name: "response_offset", scope: !1330, file: !3, line: 654, type: !68)
!1338 = !DILocalVariable(name: "c", scope: !1339, file: !3, line: 670, type: !7)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 669, column: 21)
!1340 = distinct !DILexicalBlock(scope: !1341, file: !3, line: 667, column: 12)
!1341 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 664, column: 9)
!1342 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 656, column: 6)
!1343 = !DILocalVariable(name: "__x", scope: !1344, file: !3, line: 674, type: !77)
!1344 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 674, column: 13)
!1345 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 674, column: 13)
!1346 = !DILocalVariable(name: "__x", scope: !1347, file: !3, line: 674, type: !77)
!1347 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 674, column: 39)
!1348 = !DILocation(line: 651, column: 30, scope: !1330, inlinedAt: !1349)
!1349 = distinct !DILocation(line: 1228, column: 19, scope: !1271)
!1350 = !DILocation(line: 651, column: 50, scope: !1330, inlinedAt: !1349)
!1351 = !DILocation(line: 651, column: 59, scope: !1330, inlinedAt: !1349)
!1352 = !DILocation(line: 654, column: 9, scope: !1330, inlinedAt: !1349)
!1353 = !DILocation(line: 656, column: 3, scope: !1330, inlinedAt: !1349)
!1354 = !DILocation(line: 0, scope: !1342, inlinedAt: !1349)
!1355 = !DILocation(line: 657, column: 9, scope: !1342, inlinedAt: !1349)
!1356 = !DILocation(line: 653, column: 7, scope: !1330, inlinedAt: !1349)
!1357 = !DILocation(line: 658, column: 12, scope: !1358, inlinedAt: !1349)
!1358 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 658, column: 9)
!1359 = !DILocation(line: 658, column: 37, scope: !1358, inlinedAt: !1349)
!1360 = !DILocation(line: 658, column: 17, scope: !1358, inlinedAt: !1349)
!1361 = !DILocation(line: 664, column: 12, scope: !1341, inlinedAt: !1349)
!1362 = !DILocation(line: 664, column: 20, scope: !1341, inlinedAt: !1349)
!1363 = !DILocation(line: 662, column: 20, scope: !1342, inlinedAt: !1349)
!1364 = !DILocation(line: 669, column: 16, scope: !1340, inlinedAt: !1349)
!1365 = !DILocation(line: 0, scope: !1366, inlinedAt: !1349)
!1366 = distinct !DILexicalBlock(scope: !1342, file: !3, line: 688, column: 9)
!1367 = !DILocation(line: 669, column: 7, scope: !1340, inlinedAt: !1349)
!1368 = !DILocation(line: 670, column: 13, scope: !1339, inlinedAt: !1349)
!1369 = !DILocation(line: 671, column: 13, scope: !1339, inlinedAt: !1349)
!1370 = !DILocation(line: 674, column: 13, scope: !1344, inlinedAt: !1349)
!1371 = !DILocation(line: 674, column: 39, scope: !1347, inlinedAt: !1349)
!1372 = !DILocation(line: 674, column: 36, scope: !1345, inlinedAt: !1349)
!1373 = !DILocation(line: 677, column: 29, scope: !1374, inlinedAt: !1349)
!1374 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 677, column: 13)
!1375 = !DILocation(line: 674, column: 13, scope: !1339, inlinedAt: !1349)
!1376 = !DILocation(line: 682, column: 9, scope: !1339, inlinedAt: !1349)
!1377 = !DILocation(line: 683, column: 9, scope: !1339, inlinedAt: !1349)
!1378 = !DILocation(line: 688, column: 9, scope: !1342, inlinedAt: !1349)
!1379 = !DILocation(line: 685, column: 7, scope: !1340, inlinedAt: !1349)
!1380 = !DILocation(line: 691, column: 14, scope: !1330, inlinedAt: !1349)
!1381 = !DILocation(line: 691, column: 3, scope: !1342, inlinedAt: !1349)
!1382 = distinct !{!1382, !1383, !1384}
!1383 = !DILocation(line: 656, column: 3, scope: !1330)
!1384 = !DILocation(line: 691, column: 18, scope: !1330)
!1385 = !DILocation(line: 693, column: 23, scope: !1386, inlinedAt: !1349)
!1386 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 693, column: 7)
!1387 = !DILocation(line: 697, column: 34, scope: !1330, inlinedAt: !1349)
!1388 = !DILocation(line: 698, column: 1, scope: !1330, inlinedAt: !1349)
!1389 = !DILocation(line: 1174, column: 9, scope: !1234)
!1390 = !DILocation(line: 1229, column: 13, scope: !1271)
!1391 = !DILocation(line: 1229, column: 13, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1229, column: 13)
!1393 = !DILocation(line: 1229, column: 21, scope: !1392)
!1394 = !DILocation(line: 1235, column: 13, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1235, column: 13)
!1396 = !DILocation(line: 1235, column: 67, scope: !1395)
!1397 = !DILocation(line: 1238, column: 18, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1238, column: 13)
!1399 = !DILocation(line: 1238, column: 22, scope: !1398)
!1400 = !DILocation(line: 1235, column: 13, scope: !1271)
!1401 = !DILocation(line: 1239, column: 14, scope: !1398)
!1402 = !DILocation(line: 1239, column: 68, scope: !1398)
!1403 = !DILocation(line: 1239, column: 73, scope: !1398)
!1404 = !DILocation(line: 1239, column: 104, scope: !1398)
!1405 = !DILocation(line: 1240, column: 15, scope: !1398)
!1406 = !DILocation(line: 1240, column: 69, scope: !1398)
!1407 = !DILocation(line: 1240, column: 74, scope: !1398)
!1408 = !DILocation(line: 1238, column: 13, scope: !1271)
!1409 = !DILocation(line: 1245, column: 21, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1245, column: 13)
!1411 = !DILocation(line: 1245, column: 40, scope: !1410)
!1412 = !DILocation(line: 1245, column: 13, scope: !1271)
!1413 = !DILocation(line: 1251, column: 17, scope: !1270)
!1414 = !{!1082, !250, i64 3}
!1415 = !DILocation(line: 1251, column: 24, scope: !1270)
!1416 = !DILocation(line: 1251, column: 13, scope: !1271)
!1417 = !DILocation(line: 1268, column: 28, scope: !1269)
!1418 = !DILocation(line: 1268, column: 33, scope: !1269)
!1419 = !DILocation(line: 0, scope: !1268)
!1420 = !DILocation(line: 1026, column: 8, scope: !841, inlinedAt: !1421)
!1421 = distinct !DILocation(line: 1257, column: 15, scope: !1422)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1257, column: 15)
!1423 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1251, column: 46)
!1424 = !DILocation(line: 1029, column: 18, scope: !851, inlinedAt: !1421)
!1425 = !DILocation(line: 1029, column: 10, scope: !851, inlinedAt: !1421)
!1426 = !DILocation(line: 1029, column: 29, scope: !851, inlinedAt: !1421)
!1427 = !DILocation(line: 1029, column: 33, scope: !851, inlinedAt: !1421)
!1428 = !DILocation(line: 1029, column: 52, scope: !851, inlinedAt: !1421)
!1429 = !DILocation(line: 1029, column: 56, scope: !851, inlinedAt: !1421)
!1430 = !DILocation(line: 1029, column: 9, scope: !852, inlinedAt: !1421)
!1431 = !DILocation(line: 1034, column: 3, scope: !841, inlinedAt: !1421)
!1432 = !DILocation(line: 1257, column: 15, scope: !1423)
!1433 = !DILocation(line: 1259, column: 20, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1422, file: !3, line: 1257, column: 50)
!1435 = !DILocation(line: 1259, column: 28, scope: !1434)
!1436 = !DILocation(line: 1260, column: 20, scope: !1434)
!1437 = !DILocation(line: 1260, column: 28, scope: !1434)
!1438 = !DILocation(line: 1263, column: 13, scope: !1434)
!1439 = !DILocation(line: 1265, column: 13, scope: !1434)
!1440 = !DILocation(line: 1268, column: 37, scope: !1269)
!1441 = !DILocation(line: 1268, column: 50, scope: !1269)
!1442 = !DILocation(line: 1268, column: 47, scope: !1269)
!1443 = !DILocation(line: 1268, column: 45, scope: !1269)
!1444 = !DILocation(line: 1268, column: 11, scope: !1269)
!1445 = !DILocation(line: 714, column: 34, scope: !1446, inlinedAt: !1455)
!1446 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 713, column: 6)
!1447 = distinct !DISubprogram(name: "dns_skip_name", scope: !3, file: !3, line: 708, type: !1448, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1450)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!68, !188, !68}
!1450 = !{!1451, !1452, !1453, !1454}
!1451 = !DILocalVariable(name: "p", arg: 1, scope: !1447, file: !3, line: 708, type: !188)
!1452 = !DILocalVariable(name: "query_idx", arg: 2, scope: !1447, file: !3, line: 708, type: !68)
!1453 = !DILocalVariable(name: "n", scope: !1447, file: !3, line: 710, type: !7)
!1454 = !DILocalVariable(name: "offset", scope: !1447, file: !3, line: 711, type: !68)
!1455 = distinct !DILocation(line: 1270, column: 23, scope: !1268)
!1456 = !DILocation(line: 0, scope: !1457, inlinedAt: !1455)
!1457 = distinct !DILexicalBlock(scope: !1458, file: !3, line: 722, column: 12)
!1458 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 719, column: 9)
!1459 = !DILocation(line: 711, column: 9, scope: !1447, inlinedAt: !1455)
!1460 = !DILocation(line: 714, column: 9, scope: !1446, inlinedAt: !1455)
!1461 = !DILocation(line: 710, column: 7, scope: !1447, inlinedAt: !1455)
!1462 = !DILocation(line: 715, column: 12, scope: !1463, inlinedAt: !1455)
!1463 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 715, column: 9)
!1464 = !DILocation(line: 715, column: 17, scope: !1463, inlinedAt: !1455)
!1465 = !DILocation(line: 715, column: 21, scope: !1463, inlinedAt: !1455)
!1466 = !DILocation(line: 715, column: 28, scope: !1463, inlinedAt: !1455)
!1467 = !DILocation(line: 715, column: 9, scope: !1446, inlinedAt: !1455)
!1468 = !DILocation(line: 719, column: 12, scope: !1458, inlinedAt: !1455)
!1469 = !DILocation(line: 719, column: 20, scope: !1458, inlinedAt: !1455)
!1470 = !DILocation(line: 719, column: 9, scope: !1446, inlinedAt: !1455)
!1471 = !DILocation(line: 724, column: 18, scope: !1472, inlinedAt: !1455)
!1472 = distinct !DILexicalBlock(scope: !1457, file: !3, line: 724, column: 11)
!1473 = !DILocation(line: 724, column: 28, scope: !1472, inlinedAt: !1455)
!1474 = !DILocation(line: 724, column: 25, scope: !1472, inlinedAt: !1455)
!1475 = !DILocation(line: 724, column: 22, scope: !1472, inlinedAt: !1455)
!1476 = !DILocation(line: 724, column: 11, scope: !1457, inlinedAt: !1455)
!1477 = !DILocation(line: 727, column: 16, scope: !1457, inlinedAt: !1455)
!1478 = !DILocation(line: 729, column: 9, scope: !1446, inlinedAt: !1455)
!1479 = !DILocation(line: 730, column: 11, scope: !1480, inlinedAt: !1455)
!1480 = distinct !DILexicalBlock(scope: !1446, file: !3, line: 730, column: 9)
!1481 = !DILocation(line: 730, column: 9, scope: !1446, inlinedAt: !1455)
!1482 = !DILocation(line: 733, column: 14, scope: !1447, inlinedAt: !1455)
!1483 = !DILocation(line: 733, column: 3, scope: !1446, inlinedAt: !1455)
!1484 = distinct !{!1484, !1485, !1486}
!1485 = !DILocation(line: 713, column: 3, scope: !1447)
!1486 = !DILocation(line: 733, column: 18, scope: !1447)
!1487 = !DILocation(line: 735, column: 14, scope: !1488, inlinedAt: !1455)
!1488 = distinct !DILexicalBlock(scope: !1447, file: !3, line: 735, column: 7)
!1489 = !DILocation(line: 738, column: 25, scope: !1447, inlinedAt: !1455)
!1490 = !DILocation(line: 739, column: 1, scope: !1447, inlinedAt: !1455)
!1491 = !DILocation(line: 1271, column: 17, scope: !1268)
!1492 = !DILocation(line: 1271, column: 17, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1271, column: 17)
!1494 = !DILocation(line: 1271, column: 25, scope: !1493)
!1495 = !DILocation(line: 1276, column: 17, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1276, column: 17)
!1497 = !DILocation(line: 1276, column: 72, scope: !1496)
!1498 = !DILocation(line: 1276, column: 17, scope: !1268)
!1499 = !DILocation(line: 1279, column: 25, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1279, column: 17)
!1501 = !DILocation(line: 1279, column: 45, scope: !1500)
!1502 = !DILocation(line: 1279, column: 17, scope: !1268)
!1503 = !DILocation(line: 1284, column: 21, scope: !1267)
!1504 = !{!1505, !401, i64 2}
!1505 = !{!"dns_answer", !401, i64 0, !401, i64 2, !253, i64 4, !401, i64 8}
!1506 = !DILocation(line: 1284, column: 25, scope: !1267)
!1507 = !DILocation(line: 1284, column: 17, scope: !1268)
!1508 = !DILocation(line: 1286, column: 24, scope: !1265)
!1509 = !{!1505, !401, i64 0}
!1510 = !DILocation(line: 1286, column: 56, scope: !1265)
!1511 = !DILocation(line: 1286, column: 64, scope: !1265)
!1512 = !{!1505, !401, i64 8}
!1513 = !DILocation(line: 1286, column: 68, scope: !1265)
!1514 = !DILocation(line: 1286, column: 19, scope: !1266)
!1515 = !DILocation(line: 1288, column: 22, scope: !1263)
!1516 = !DILocation(line: 1282, column: 23, scope: !1268)
!1517 = !DILocation(line: 1291, column: 19, scope: !1262)
!1518 = !DILocation(line: 1293, column: 23, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1293, column: 23)
!1520 = !DILocation(line: 1293, column: 83, scope: !1519)
!1521 = !DILocation(line: 1293, column: 23, scope: !1262)
!1522 = !DILocation(line: 1296, column: 19, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1296, column: 19)
!1524 = !{!1525, !253, i64 0}
!1525 = !{!"ip4_addr", !253, i64 0}
!1526 = !DILocation(line: 1296, column: 19, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1296, column: 19)
!1528 = !DILocation(line: 1296, column: 19, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1523, file: !3, line: 1296, column: 19)
!1530 = !DILocation(line: 1297, column: 19, scope: !1262)
!1531 = !DILocation(line: 1299, column: 43, scope: !1262)
!1532 = !{!1505, !253, i64 4}
!1533 = !DILocalVariable(name: "idx", arg: 1, scope: !1534, file: !3, line: 1137, type: !74)
!1534 = distinct !DISubprogram(name: "dns_correct_response", scope: !3, file: !3, line: 1137, type: !1535, isLocal: true, isDefinition: true, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1537)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !74, !62}
!1537 = !{!1533, !1538, !1539}
!1538 = !DILocalVariable(name: "ttl", arg: 2, scope: !1534, file: !3, line: 1137, type: !62)
!1539 = !DILocalVariable(name: "entry", scope: !1534, file: !3, line: 1139, type: !382)
!1540 = !DILocation(line: 1137, column: 27, scope: !1534, inlinedAt: !1541)
!1541 = distinct !DILocation(line: 1299, column: 19, scope: !1262)
!1542 = !DILocation(line: 1137, column: 38, scope: !1534, inlinedAt: !1541)
!1543 = !DILocation(line: 1141, column: 16, scope: !1534, inlinedAt: !1541)
!1544 = !DILocation(line: 1144, column: 3, scope: !1545, inlinedAt: !1541)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !3, line: 1144, column: 3)
!1546 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1144, column: 3)
!1547 = !DILocation(line: 1148, column: 10, scope: !1534, inlinedAt: !1541)
!1548 = !DILocation(line: 1149, column: 7, scope: !1534, inlinedAt: !1541)
!1549 = !DILocation(line: 0, scope: !1534, inlinedAt: !1541)
!1550 = !DILocation(line: 1152, column: 3, scope: !1534, inlinedAt: !1541)
!1551 = !DILocation(line: 1154, column: 14, scope: !1552, inlinedAt: !1541)
!1552 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1154, column: 7)
!1553 = !DILocation(line: 1154, column: 18, scope: !1552, inlinedAt: !1541)
!1554 = !DILocation(line: 1154, column: 7, scope: !1534, inlinedAt: !1541)
!1555 = !DILocation(line: 1160, column: 16, scope: !1556, inlinedAt: !1541)
!1556 = distinct !DILexicalBlock(scope: !1557, file: !3, line: 1160, column: 9)
!1557 = distinct !DILexicalBlock(scope: !1552, file: !3, line: 1154, column: 24)
!1558 = !DILocation(line: 1160, column: 22, scope: !1556, inlinedAt: !1541)
!1559 = !DILocation(line: 1160, column: 9, scope: !1557, inlinedAt: !1541)
!1560 = !DILocation(line: 1161, column: 20, scope: !1561, inlinedAt: !1541)
!1561 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1160, column: 41)
!1562 = !DILocation(line: 1162, column: 5, scope: !1561, inlinedAt: !1541)
!1563 = !DILocation(line: 1164, column: 1, scope: !1534, inlinedAt: !1541)
!1564 = !DILocation(line: 1300, column: 19, scope: !1262)
!1565 = !DILocation(line: 1301, column: 17, scope: !1263)
!1566 = !DILocation(line: 1305, column: 67, scope: !1277)
!1567 = !DILocation(line: 1305, column: 71, scope: !1277)
!1568 = !DILocation(line: 1305, column: 19, scope: !1266)
!1569 = !DILocation(line: 1307, column: 21, scope: !1275)
!1570 = !DILocation(line: 1310, column: 19, scope: !1274)
!1571 = !DILocation(line: 1312, column: 23, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1312, column: 23)
!1573 = !DILocation(line: 1312, column: 85, scope: !1572)
!1574 = !DILocation(line: 1312, column: 23, scope: !1274)
!1575 = !DILocation(line: 1316, column: 19, scope: !1576)
!1576 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1316, column: 19)
!1577 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1316, column: 19)
!1578 = !DILocation(line: 1316, column: 19, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1577, file: !3, line: 1316, column: 19)
!1580 = !DILocation(line: 1317, column: 19, scope: !1274)
!1581 = !DILocation(line: 1319, column: 43, scope: !1274)
!1582 = !DILocation(line: 1137, column: 27, scope: !1534, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 1319, column: 19, scope: !1274)
!1584 = !DILocation(line: 1137, column: 38, scope: !1534, inlinedAt: !1583)
!1585 = !DILocation(line: 1141, column: 16, scope: !1534, inlinedAt: !1583)
!1586 = !DILocation(line: 1144, column: 3, scope: !1545, inlinedAt: !1583)
!1587 = !DILocation(line: 1148, column: 10, scope: !1534, inlinedAt: !1583)
!1588 = !DILocation(line: 1149, column: 7, scope: !1534, inlinedAt: !1583)
!1589 = !DILocation(line: 0, scope: !1534, inlinedAt: !1583)
!1590 = !DILocation(line: 1152, column: 3, scope: !1534, inlinedAt: !1583)
!1591 = !DILocation(line: 1154, column: 14, scope: !1552, inlinedAt: !1583)
!1592 = !DILocation(line: 1154, column: 18, scope: !1552, inlinedAt: !1583)
!1593 = !DILocation(line: 1154, column: 7, scope: !1534, inlinedAt: !1583)
!1594 = !DILocation(line: 1160, column: 16, scope: !1556, inlinedAt: !1583)
!1595 = !DILocation(line: 1160, column: 22, scope: !1556, inlinedAt: !1583)
!1596 = !DILocation(line: 1160, column: 9, scope: !1557, inlinedAt: !1583)
!1597 = !DILocation(line: 1161, column: 20, scope: !1561, inlinedAt: !1583)
!1598 = !DILocation(line: 1162, column: 5, scope: !1561, inlinedAt: !1583)
!1599 = !DILocation(line: 1164, column: 1, scope: !1534, inlinedAt: !1583)
!1600 = !DILocation(line: 1320, column: 19, scope: !1274)
!1601 = !DILocation(line: 1321, column: 17, scope: !1275)
!1602 = !DILocation(line: 1326, column: 23, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1268, file: !3, line: 1326, column: 17)
!1604 = !DILocation(line: 1326, column: 48, scope: !1603)
!1605 = !DILocation(line: 1326, column: 33, scope: !1603)
!1606 = !DILocation(line: 1326, column: 31, scope: !1603)
!1607 = !DILocation(line: 1326, column: 54, scope: !1603)
!1608 = !DILocation(line: 1326, column: 17, scope: !1268)
!1609 = !DILocation(line: 1329, column: 56, scope: !1268)
!1610 = !DILocation(line: 1329, column: 41, scope: !1268)
!1611 = !DILocation(line: 1329, column: 39, scope: !1268)
!1612 = !DILocation(line: 1330, column: 13, scope: !1268)
!1613 = distinct !{!1613, !1444, !1614}
!1614 = !DILocation(line: 1331, column: 11, scope: !1269)
!1615 = !DILocation(line: 1333, column: 23, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1333, column: 15)
!1617 = !DILocation(line: 1333, column: 67, scope: !1616)
!1618 = !DILocation(line: 1335, column: 36, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1335, column: 17)
!1620 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1334, column: 68)
!1621 = !DILocation(line: 1338, column: 13, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1619, file: !3, line: 1335, column: 68)
!1623 = !DILocation(line: 0, scope: !1622)
!1624 = !DILocation(line: 1342, column: 13, scope: !1620)
!1625 = !DILocation(line: 1343, column: 32, scope: !1620)
!1626 = !DILocation(line: 1344, column: 13, scope: !1620)
!1627 = !DILocation(line: 1345, column: 13, scope: !1620)
!1628 = !DILocation(line: 1351, column: 9, scope: !1271)
!1629 = !DILocation(line: 942, column: 21, scope: !867, inlinedAt: !1630)
!1630 = distinct !DILocation(line: 1352, column: 9, scope: !1271)
!1631 = !DILocation(line: 942, column: 37, scope: !867, inlinedAt: !1630)
!1632 = !DILocation(line: 945, column: 8, scope: !867, inlinedAt: !1630)
!1633 = !DILocation(line: 962, column: 3, scope: !879, inlinedAt: !1630)
!1634 = !DILocation(line: 977, column: 3, scope: !881, inlinedAt: !1630)
!1635 = !DILocation(line: 963, column: 25, scope: !883, inlinedAt: !1630)
!1636 = !DILocation(line: 963, column: 9, scope: !883, inlinedAt: !1630)
!1637 = !DILocation(line: 963, column: 31, scope: !883, inlinedAt: !1630)
!1638 = !DILocation(line: 963, column: 51, scope: !883, inlinedAt: !1630)
!1639 = !DILocation(line: 963, column: 65, scope: !883, inlinedAt: !1630)
!1640 = !DILocation(line: 963, column: 9, scope: !884, inlinedAt: !1630)
!1641 = !DILocation(line: 964, column: 75, scope: !892, inlinedAt: !1630)
!1642 = !DILocation(line: 964, column: 7, scope: !892, inlinedAt: !1630)
!1643 = !DILocation(line: 966, column: 29, scope: !892, inlinedAt: !1630)
!1644 = !DILocation(line: 967, column: 5, scope: !892, inlinedAt: !1630)
!1645 = !DILocation(line: 962, column: 38, scope: !885, inlinedAt: !1630)
!1646 = !DILocation(line: 962, column: 17, scope: !885, inlinedAt: !1630)
!1647 = !DILocation(line: 978, column: 11, scope: !902, inlinedAt: !1630)
!1648 = !DILocation(line: 978, column: 9, scope: !903, inlinedAt: !1630)
!1649 = !DILocation(line: 981, column: 22, scope: !907, inlinedAt: !1630)
!1650 = !DILocation(line: 981, column: 28, scope: !907, inlinedAt: !1630)
!1651 = !DILocation(line: 981, column: 9, scope: !903, inlinedAt: !1630)
!1652 = !DILocation(line: 982, column: 24, scope: !911, inlinedAt: !1630)
!1653 = !DILocation(line: 982, column: 50, scope: !911, inlinedAt: !1630)
!1654 = !DILocation(line: 982, column: 32, scope: !911, inlinedAt: !1630)
!1655 = !DILocation(line: 982, column: 11, scope: !912, inlinedAt: !1630)
!1656 = !DILocation(line: 977, column: 38, scope: !904, inlinedAt: !1630)
!1657 = !DILocation(line: 989, column: 22, scope: !918, inlinedAt: !1630)
!1658 = !DILocation(line: 989, column: 30, scope: !918, inlinedAt: !1630)
!1659 = !DILocation(line: 989, column: 7, scope: !867, inlinedAt: !1630)
!1660 = !DILocation(line: 991, column: 16, scope: !922, inlinedAt: !1630)
!1661 = !DILocation(line: 991, column: 5, scope: !922, inlinedAt: !1630)
!1662 = !DILocation(line: 992, column: 29, scope: !922, inlinedAt: !1630)
!1663 = !DILocation(line: 992, column: 5, scope: !922, inlinedAt: !1630)
!1664 = !DILocation(line: 992, column: 38, scope: !922, inlinedAt: !1630)
!1665 = !DILocation(line: 994, column: 3, scope: !922, inlinedAt: !1630)
!1666 = !DILocation(line: 0, scope: !1271)
!1667 = !DILocation(line: 996, column: 1, scope: !867, inlinedAt: !1630)
!1668 = !DILocation(line: 1353, column: 28, scope: !1271)
!1669 = !DILocation(line: 1354, column: 9, scope: !1271)
!1670 = !DILocation(line: 1195, column: 38, scope: !1257)
!1671 = !DILocation(line: 1195, column: 19, scope: !1257)
!1672 = distinct !{!1672, !1304, !1673}
!1673 = !DILocation(line: 1356, column: 5, scope: !1258)
!1674 = !DILocation(line: 1361, column: 3, scope: !1234)
!1675 = !DILocation(line: 1362, column: 3, scope: !1234)
!1676 = !DILocation(line: 1363, column: 1, scope: !1234)
!1677 = !DILocation(line: 977, column: 17, scope: !904, inlinedAt: !1630)
