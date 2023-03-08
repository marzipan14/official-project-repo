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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  br i1 %3, label %4, label %13, !dbg !238

; <label>:4:                                      ; preds = %2
  %5 = icmp eq %struct.ip_addr* %1, null, !dbg !239
  %6 = zext i8 %0 to i64, !dbg !242
  %7 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %6, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  %8 = bitcast %struct.ip_addr* %7 to i8*, !dbg !245
  br i1 %5, label %11, label %9, !dbg !244

; <label>:9:                                      ; preds = %4
  %10 = bitcast %struct.ip_addr* %1 to i8*, !dbg !247
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* align 4 %10, i64 24, i1 false), !dbg !247, !tbaa.struct !248
  br label %12, !dbg !254

; <label>:11:                                     ; preds = %4
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %8, i8* align 4 bitcast (%struct.ip_addr* @ip_addr_any to i8*), i64 24, i1 false), !dbg !255, !tbaa.struct !248
  br label %12

; <label>:12:                                     ; preds = %11, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %13, !dbg !256

; <label>:13:                                     ; preds = %12, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !256
  ret void, !dbg !256
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #3

; Function Attrs: noredzone nounwind
define dso_local nonnull %struct.ip_addr* @dns_getserver(i8 zeroext) local_unnamed_addr #1 !dbg !257 {
  %2 = icmp ult i8 %0, 2, !dbg !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  %3 = zext i8 %0 to i64, !dbg !266
  %4 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %3, !dbg !266
  %5 = select i1 %2, %struct.ip_addr* %4, %struct.ip_addr* @ip_addr_any, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !268
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !269
  ret %struct.ip_addr* %5, !dbg !269
}

; Function Attrs: noredzone nounwind
define dso_local void @dns_tmr() local_unnamed_addr #1 !dbg !270 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !276
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br label %1, !dbg !278

; <label>:1:                                      ; preds = %1, %0
  %2 = phi i8 [ 0, %0 ], [ %3, %1 ]
  tail call fastcc void @dns_check_entry(i8 zeroext %2) #8, !dbg !279
  %3 = add nuw nsw i8 %2, 1, !dbg !282
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !283
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  %4 = icmp eq i8 %3, 32, !dbg !284
  br i1 %4, label %5, label %1, !dbg !278, !llvm.loop !285

; <label>:5:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !288
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  ret void, !dbg !289
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*) local_unnamed_addr #1 !dbg !290 {
  %5 = tail call signext i8 @dns_gethostbyname_addrtype(i8* %0, %struct.ip_addr* %1, void (i8*, %struct.ip_addr*, i8*)* %2, i8* %3, i8 zeroext 2) #9, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  ret i8 %5, !dbg !309
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @dns_gethostbyname_addrtype(i8*, %struct.ip_addr*, void (i8*, %struct.ip_addr*, i8*)*, i8*, i8 zeroext) local_unnamed_addr #1 !dbg !310 {
  %6 = alloca i32, align 4
  %7 = icmp ne %struct.ip_addr* %1, null, !dbg !332
  %8 = icmp ne i8* %0, null, !dbg !334
  %9 = and i1 %8, %7, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %9, label %10, label %239, !dbg !335

; <label>:10:                                     ; preds = %5
  %11 = load i8, i8* %0, align 1, !dbg !336, !tbaa !249
  %12 = icmp eq i8 %11, 0, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %12, label %239, label %13, !dbg !337

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 @strlen(i8* nonnull %0) #8, !dbg !338
  %15 = icmp ugt i64 %14, 255, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !342
  br i1 %15, label %239, label %16, !dbg !342

; <label>:16:                                     ; preds = %13
  %17 = tail call i32 @ipaddr_aton(i8* nonnull %0, %struct.ip_addr* nonnull %1) #8, !dbg !343
  %18 = icmp eq i32 %17, 0, !dbg !343
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %18, label %30, label %19, !dbg !345

; <label>:19:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  %20 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !346
  %21 = load i8, i8* %20, align 4, !dbg !346, !tbaa !349
  %22 = icmp eq i8 %21, 6, !dbg !346
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  br i1 %22, label %23, label %26, !dbg !351

; <label>:23:                                     ; preds = %19
  %24 = icmp eq i8 %4, 0, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %24, label %25, label %239, !dbg !353

; <label>:25:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br label %30, !dbg !355

; <label>:26:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  %27 = icmp eq i8 %21, 0, !dbg !354
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %27, label %28, label %30, !dbg !355

; <label>:28:                                     ; preds = %26
  %29 = icmp eq i8 %4, 1, !dbg !356
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !357
  br i1 %29, label %30, label %239, !dbg !357

; <label>:30:                                     ; preds = %25, %28, %16, %26
  %31 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %4) #9, !dbg !358
  %32 = icmp eq i8 %31, 0, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !361
  br i1 %32, label %239, label %33, !dbg !361

; <label>:33:                                     ; preds = %30
  %34 = icmp eq i8 %4, 2, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  br i1 %34, label %37, label %35, !dbg !363

; <label>:35:                                     ; preds = %33
  %36 = icmp eq i8 %4, 3, !dbg !364
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br i1 %36, label %37, label %41, !dbg !365

; <label>:37:                                     ; preds = %35, %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !366
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = zext i1 %34 to i8, !dbg !367
  %39 = tail call fastcc signext i8 @dns_lookup(i8* nonnull %0, %struct.ip_addr* nonnull %1, i8 zeroext %38) #9, !dbg !371
  %40 = icmp eq i8 %39, 0, !dbg !373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %40, label %241, label %41, !dbg !374

; <label>:41:                                     ; preds = %37, %35
  %42 = load i8, i8* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 1), align 4, !dbg !376, !tbaa !349
  %43 = icmp eq i8 %42, 6, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  %44 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 0), align 16, !dbg !376, !tbaa !249
  br i1 %43, label %45, label %53, !dbg !379

; <label>:45:                                     ; preds = %41
  %46 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !376
  %47 = or i32 %46, %44, !dbg !376
  %48 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 2), align 8, !dbg !376
  %49 = or i32 %47, %48, !dbg !376
  %50 = load i32, i32* getelementptr inbounds ([2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 0, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !376
  %51 = or i32 %49, %50, !dbg !376
  %52 = icmp eq i32 %51, 0, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !376
  br i1 %52, label %239, label %55, !dbg !376

; <label>:53:                                     ; preds = %41
  %54 = icmp eq i32 %44, 0, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %54, label %239, label %55, !dbg !379

; <label>:55:                                     ; preds = %53, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br label %56, !dbg !414

; <label>:56:                                     ; preds = %87, %55
  %57 = phi i64 [ 0, %55 ], [ %88, %87 ]
  %58 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %57, i32 3, !dbg !415
  %59 = load i8, i8* %58, align 2, !dbg !415, !tbaa !419
  %60 = icmp eq i8 %59, 2, !dbg !422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %60, label %61, label %87, !dbg !423

; <label>:61:                                     ; preds = %56
  %62 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %57, i32 9, i64 0, !dbg !424
  %63 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %62, i64 256) #8, !dbg !425
  %64 = icmp eq i32 %63, 0, !dbg !426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %64, label %65, label %87, !dbg !427

; <label>:65:                                     ; preds = %61
  %66 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %57, i32 10, !dbg !428
  %67 = load i8, i8* %66, align 4, !dbg !428, !tbaa !431
  %68 = icmp eq i8 %67, %4, !dbg !432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !433
  br i1 %68, label %69, label %87, !dbg !433

; <label>:69:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br label %70, !dbg !437

; <label>:70:                                     ; preds = %249, %69
  %71 = phi i64 [ 0, %69 ], [ %250, %249 ]
  %72 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %71, i32 0, !dbg !438
  %73 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %72, align 16, !dbg !438, !tbaa !442
  %74 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %73, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %74, label %75, label %82, !dbg !446

; <label>:75:                                     ; preds = %82, %70
  %76 = phi i64 [ %71, %70 ], [ %83, %82 ]
  %77 = phi void (i8*, %struct.ip_addr*, i8*)** [ %72, %70 ], [ %84, %82 ], !dbg !438
  %78 = trunc i64 %57 to i8, !dbg !411
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %77, align 8, !dbg !447, !tbaa !442
  %79 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %76, i32 1, !dbg !449
  store i8* %3, i8** %79, align 8, !dbg !450, !tbaa !451
  %80 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %76, i32 2, !dbg !452
  store i8 %78, i8* %80, align 8, !dbg !453, !tbaa !454
  %81 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %76, i32 3, !dbg !455
  store i8 %4, i8* %81, align 1, !dbg !455, !tbaa !457
  br label %237, !dbg !458

; <label>:82:                                     ; preds = %70
  %83 = or i64 %71, 1, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  %84 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %83, i32 0, !dbg !438
  %85 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %84, align 8, !dbg !438, !tbaa !442
  %86 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %85, null, !dbg !445
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !446
  br i1 %86, label %75, label %249, !dbg !446

; <label>:87:                                     ; preds = %249, %65, %61, %56
  %88 = add nuw nsw i64 %57, 1, !dbg !461
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  %89 = icmp ult i64 %88, 32, !dbg !463
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !414
  br i1 %89, label %56, label %90, !dbg !414, !llvm.loop !464

; <label>:90:                                     ; preds = %87
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  %91 = load i8, i8* @dns_seqno, align 1
  br label %92, !dbg !470

; <label>:92:                                     ; preds = %113, %90
  %93 = phi i64 [ %116, %113 ], [ 0, %90 ]
  %94 = phi i8 [ %115, %113 ], [ 32, %90 ]
  %95 = phi i8 [ %114, %113 ], [ 0, %90 ]
  %96 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %93, i32 3, !dbg !471
  %97 = load i8, i8* %96, align 2, !dbg !471, !tbaa !419
  %98 = icmp eq i8 %97, 0, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !474
  br i1 %98, label %99, label %101, !dbg !474

; <label>:99:                                     ; preds = %92
  %100 = trunc i64 %93 to i8, !dbg !411
  br label %128, !dbg !475

; <label>:101:                                    ; preds = %92
  %102 = icmp eq i8 %97, 3, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %102, label %103, label %113, !dbg !477

; <label>:103:                                    ; preds = %101
  %104 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %93, i32 7, !dbg !478
  %105 = load i8, i8* %104, align 2, !dbg !478, !tbaa !479
  %106 = sub i8 %91, %105, !dbg !480
  %107 = icmp ugt i8 %106, %95, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %107, label %108, label %110, !dbg !484

; <label>:108:                                    ; preds = %103
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !485
  %109 = trunc i64 %93 to i8, !dbg !485
  br label %110, !dbg !485

; <label>:110:                                    ; preds = %108, %103
  %111 = phi i8 [ %106, %108 ], [ %95, %103 ], !dbg !487
  %112 = phi i8 [ %109, %108 ], [ %94, %103 ], !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !488
  br label %113, !dbg !488

; <label>:113:                                    ; preds = %110, %101
  %114 = phi i8 [ %111, %110 ], [ %95, %101 ], !dbg !487
  %115 = phi i8 [ %112, %110 ], [ %94, %101 ], !dbg !487
  %116 = add nuw nsw i64 %93, 1, !dbg !489
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  %117 = icmp ult i64 %116, 32, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !470
  br i1 %117, label %92, label %118, !dbg !470, !llvm.loop !492

; <label>:118:                                    ; preds = %113
  %119 = trunc i64 %116 to i8, !dbg !468
  %120 = icmp eq i8 %119, 32, !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %120, label %121, label %131, !dbg !475

; <label>:121:                                    ; preds = %118
  %122 = icmp ugt i8 %115, 31, !dbg !497
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %122, label %237, label %123, !dbg !500

; <label>:123:                                    ; preds = %121
  %124 = zext i8 %115 to i64, !dbg !501
  %125 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %124, i32 3, !dbg !502
  %126 = load i8, i8* %125, align 2, !dbg !502, !tbaa !419
  %127 = icmp eq i8 %126, 3, !dbg !503
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !504
  br i1 %127, label %128, label %237, !dbg !504

; <label>:128:                                    ; preds = %123, %99
  %129 = phi i64 [ %93, %99 ], [ %124, %123 ]
  %130 = phi i8 [ %100, %99 ], [ %115, %123 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br label %131, !dbg !506

; <label>:131:                                    ; preds = %128, %118
  %132 = phi i64 [ %93, %118 ], [ %129, %128 ]
  %133 = phi i8 [ %119, %118 ], [ %130, %128 ], !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !506
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br label %134, !dbg !510

; <label>:134:                                    ; preds = %246, %131
  %135 = phi i64 [ 0, %131 ], [ %247, %246 ]
  %136 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %135, i32 0, !dbg !511
  %137 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %136, align 16, !dbg !511, !tbaa !442
  %138 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %137, null, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %138, label %145, label %139, !dbg !516

; <label>:139:                                    ; preds = %134
  %140 = or i64 %135, 1, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  %141 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %140, i32 0, !dbg !511
  %142 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %141, align 8, !dbg !511, !tbaa !442
  %143 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %142, null, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %143, label %145, label %246, !dbg !516

; <label>:144:                                    ; preds = %246
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  br label %237, !dbg !520

; <label>:145:                                    ; preds = %139, %134
  %146 = phi i64 [ %135, %134 ], [ %140, %139 ]
  %147 = phi void (i8*, %struct.ip_addr*, i8*)** [ %136, %134 ], [ %141, %139 ], !dbg !511
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !519
  %148 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %146, i32 2, !dbg !525
  store i8 %133, i8* %148, align 8, !dbg !526, !tbaa !454
  %149 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 3, !dbg !527
  store i8 1, i8* %149, align 2, !dbg !528, !tbaa !419
  %150 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 7, !dbg !529
  store i8 %91, i8* %150, align 2, !dbg !530, !tbaa !479
  %151 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 10, !dbg !531
  store i8 %4, i8* %151, align 4, !dbg !531, !tbaa !431
  %152 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %146, i32 3, !dbg !533
  store i8 %4, i8* %152, align 1, !dbg !533, !tbaa !457
  store void (i8*, %struct.ip_addr*, i8*)* %2, void (i8*, %struct.ip_addr*, i8*)** %147, align 8, !dbg !535, !tbaa !442
  %153 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %146, i32 1, !dbg !536
  store i8* %3, i8** %153, align 8, !dbg !537, !tbaa !451
  %154 = icmp ult i64 %14, 255, !dbg !538
  %155 = select i1 %154, i64 %14, i64 255, !dbg !538
  %156 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 9, i64 0, !dbg !540
  %157 = tail call i8* @memcpy(i8* nonnull %156, i8* %0, i64 %155) #8, !dbg !540
  %158 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 9, i64 %155, !dbg !541
  store i8 0, i8* %158, align 1, !dbg !542, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br label %159, !dbg !553

; <label>:159:                                    ; preds = %243, %145
  %160 = phi i64 [ 0, %145 ], [ %244, %243 ]
  %161 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %160, !dbg !554
  %162 = load %struct.udp_pcb*, %struct.udp_pcb** %161, align 16, !dbg !554, !tbaa !558
  %163 = icmp eq %struct.udp_pcb* %162, null, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %163, label %169, label %164, !dbg !560

; <label>:164:                                    ; preds = %159
  %165 = or i64 %160, 1, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  %166 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %165, !dbg !554
  %167 = load %struct.udp_pcb*, %struct.udp_pcb** %166, align 8, !dbg !554, !tbaa !558
  %168 = icmp eq %struct.udp_pcb* %167, null, !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  br i1 %168, label %169, label %243, !dbg !560

; <label>:169:                                    ; preds = %164, %159
  %170 = phi i64 [ %160, %159 ], [ %165, %164 ]
  %171 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %170, !dbg !554
  %172 = trunc i64 %170 to i8, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  %173 = tail call %struct.udp_pcb* @udp_new_ip_type(i8 zeroext 46) #8, !dbg !564
  %174 = icmp eq %struct.udp_pcb* %173, null, !dbg !577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !579
  br i1 %174, label %208, label %175, !dbg !579

; <label>:175:                                    ; preds = %169
  %176 = bitcast i32* %6 to i8*
  br label %177, !dbg !580

; <label>:177:                                    ; preds = %202, %175
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %176) #7, !dbg !580
  %178 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !599, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !609
  %179 = icmp ult i64 %178, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %179, label %186, label %180, !dbg !610

; <label>:180:                                    ; preds = %177
  %181 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !611, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  %182 = icmp ugt i64 %181, ptrtoint ([0 x i8]* @_end to i64), !dbg !610
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !615
  br i1 %182, label %186, label %183, !dbg !615

; <label>:183:                                    ; preds = %180
  %184 = call i64 @ukplat_lcpu_save_irqf() #8, !dbg !616
  %185 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !625
  call void @ukplat_lcpu_restore_irqf(i64 %184) #8, !dbg !627
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !628
  store i32 %185, i32* %6, align 4, !dbg !630, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !630
  br label %195, !dbg !630

; <label>:186:                                    ; preds = %180, %177
  %187 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !631, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  %188 = and i64 %187, -65536, !dbg !643
  %189 = or i64 %188, 4097, !dbg !643
  %190 = add nsw i64 %189, -1, !dbg !643
  %191 = inttoptr i64 %190 to i32*, !dbg !644
  %192 = load i32, i32* %191, align 4096, !dbg !645, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  %193 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %192, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !647, !srcloc !648
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %6, i64 %193) #7, !dbg !649, !srcloc !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %194 = load i32, i32* %6, align 4, !dbg !653, !tbaa !252
  br label %195

; <label>:195:                                    ; preds = %186, %183
  %196 = phi i32 [ %194, %186 ], [ %185, %183 ], !dbg !653
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %176) #7, !dbg !654
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !655
  %197 = and i32 %196, 64512, !dbg !656
  %198 = icmp eq i32 %197, 0, !dbg !656
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !658
  br i1 %198, label %202, label %199, !dbg !658

; <label>:199:                                    ; preds = %195
  %200 = trunc i32 %196 to i16, !dbg !659
  %201 = call signext i8 @udp_bind(%struct.udp_pcb* nonnull %173, %struct.ip_addr* nonnull @ip_addr_any_type, i16 zeroext %200) #8, !dbg !661
  br label %202, !dbg !664

; <label>:202:                                    ; preds = %195, %199
  %203 = phi i8 [ %201, %199 ], [ -8, %195 ], !dbg !665
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %204 = icmp eq i8 %203, -8, !dbg !667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !668
  br i1 %204, label %177, label %205, !dbg !668, !llvm.loop !669

; <label>:205:                                    ; preds = %202
  %206 = icmp eq i8 %203, 0, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %206, label %230, label %207, !dbg !674

; <label>:207:                                    ; preds = %205
  call void @udp_remove(%struct.udp_pcb* nonnull %173) #8, !dbg !675
  br label %208, !dbg !677

; <label>:208:                                    ; preds = %169, %207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !678
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store %struct.udp_pcb* null, %struct.udp_pcb** %171, align 8, !dbg !680, !tbaa !558
  br label %209, !dbg !681

; <label>:209:                                    ; preds = %243, %208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  %210 = load i8, i8* @dns_last_pcb_idx, align 1, !dbg !682, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !685
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br label %211, !dbg !686

; <label>:211:                                    ; preds = %225, %209
  %212 = phi i8 [ %210, %209 ], [ %218, %225 ]
  %213 = phi i8 [ 0, %209 ], [ %226, %225 ]
  %214 = add i8 %212, 1, !dbg !687
  %215 = icmp ugt i8 %214, 31, !dbg !689
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br i1 %215, label %216, label %217, !dbg !692

; <label>:216:                                    ; preds = %211
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br label %217, !dbg !693

; <label>:217:                                    ; preds = %216, %211
  %218 = phi i8 [ 0, %216 ], [ %214, %211 ], !dbg !695
  %219 = zext i8 %218 to i64, !dbg !696
  %220 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %219, !dbg !696
  %221 = load %struct.udp_pcb*, %struct.udp_pcb** %220, align 8, !dbg !696, !tbaa !558
  %222 = icmp eq %struct.udp_pcb* %221, null, !dbg !698
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %222, label %225, label %223, !dbg !699

; <label>:223:                                    ; preds = %217
  store i8 %218, i8* @dns_last_pcb_idx, align 1, !dbg !700, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %224 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 8, !dbg !704
  store i8 %218, i8* %224, align 1, !dbg !705, !tbaa !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %234, !dbg !707

; <label>:225:                                    ; preds = %217
  %226 = add nuw nsw i8 %213, 1, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  %227 = icmp ult i8 %226, 32, !dbg !710
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !686
  br i1 %227, label %211, label %228, !dbg !686, !llvm.loop !711

; <label>:228:                                    ; preds = %225
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %229 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 8, !dbg !704
  store i8 32, i8* %229, align 1, !dbg !705, !tbaa !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br label %233, !dbg !707

; <label>:230:                                    ; preds = %205
  call void @udp_recv(%struct.udp_pcb* nonnull %173, void (i8*, %struct.udp_pcb*, %struct.pbuf*, %struct.ip_addr*, i16)* nonnull @dns_recv, i8* null) #8, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !679
  store %struct.udp_pcb* %173, %struct.udp_pcb** %171, align 8, !dbg !680, !tbaa !558
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !681
  store i8 %172, i8* @dns_last_pcb_idx, align 1, !dbg !717, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  %231 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %132, i32 8, !dbg !704
  store i8 %172, i8* %231, align 1, !dbg !705, !tbaa !706
  %232 = icmp ugt i8 %172, 31, !dbg !721
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !707
  br i1 %232, label %233, label %234, !dbg !707

; <label>:233:                                    ; preds = %230, %228
  store i8 0, i8* %149, align 2, !dbg !723, !tbaa !419
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %147, align 8, !dbg !725, !tbaa !442
  br label %237, !dbg !726

; <label>:234:                                    ; preds = %230, %223
  %235 = load i8, i8* @dns_seqno, align 1, !dbg !727, !tbaa !249
  %236 = add i8 %235, 1, !dbg !727
  store i8 %236, i8* @dns_seqno, align 1, !dbg !727, !tbaa !249
  call fastcc void @dns_check_entry(i8 zeroext %133) #8, !dbg !728
  br label %237, !dbg !729

; <label>:237:                                    ; preds = %121, %123, %75, %144, %233, %234
  %238 = phi i8 [ -5, %75 ], [ -1, %144 ], [ -1, %233 ], [ -5, %234 ], [ -1, %123 ], [ -1, %121 ], !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !730
  br label %239, !dbg !731

; <label>:239:                                    ; preds = %53, %45, %30, %28, %23, %13, %5, %10, %237
  %240 = phi i8 [ %238, %237 ], [ -16, %10 ], [ -16, %5 ], [ -16, %13 ], [ 0, %23 ], [ 0, %28 ], [ 0, %30 ], [ -6, %45 ], [ -6, %53 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br label %241, !dbg !734

; <label>:241:                                    ; preds = %239, %37
  %242 = phi i8 [ 0, %37 ], [ %240, %239 ], !dbg !732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !734
  ret i8 %242, !dbg !734

; <label>:243:                                    ; preds = %164
  %244 = add nuw nsw i64 %160, 2, !dbg !561
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  %245 = icmp ult i64 %244, 32, !dbg !735
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !553
  br i1 %245, label %159, label %209, !dbg !553, !llvm.loop !736

; <label>:246:                                    ; preds = %139
  %247 = add nuw nsw i64 %135, 2, !dbg !517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !518
  %248 = icmp ult i64 %247, 32, !dbg !739
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %248, label %134, label %144, !dbg !510, !llvm.loop !740

; <label>:249:                                    ; preds = %82
  %250 = add nuw nsw i64 %71, 2, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !460
  %251 = icmp ult i64 %250, 32, !dbg !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !437
  br i1 %251, label %70, label %87, !dbg !437, !llvm.loop !744
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #4

; Function Attrs: noredzone
declare dso_local i32 @ipaddr_aton(i8*, %struct.ip_addr*) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_lookup(i8*, %struct.ip_addr*, i8 zeroext) unnamed_addr #1 !dbg !747 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !759
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  %4 = icmp eq i8 %2, 3
  %5 = icmp eq i8 %2, 1
  br label %6, !dbg !761

; <label>:6:                                      ; preds = %3, %51
  %7 = phi i64 [ 0, %3 ], [ %52, %51 ]
  %8 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 3, !dbg !762
  %9 = load i8, i8* %8, align 2, !dbg !762, !tbaa !419
  %10 = icmp eq i8 %9, 3, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !767
  br i1 %10, label %11, label %51, !dbg !767

; <label>:11:                                     ; preds = %6
  %12 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 9, i64 0, !dbg !768
  %13 = tail call i32 @lwip_strnicmp(i8* %0, i8* nonnull %12, i64 256) #8, !dbg !769
  %14 = icmp eq i32 %13, 0, !dbg !770
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  br i1 %14, label %15, label %51, !dbg !771

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 1, !dbg !772
  %17 = load i8, i8* %16, align 4, !dbg !772, !tbaa !773
  %18 = icmp eq i8 %17, 6, !dbg !772
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %18, label %19, label %21, !dbg !774

; <label>:19:                                     ; preds = %15
  br i1 %4, label %23, label %20, !dbg !772

; <label>:20:                                     ; preds = %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %5, label %23, label %51, !dbg !772

; <label>:21:                                     ; preds = %15
  br i1 %4, label %51, label %22, !dbg !772

; <label>:22:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !774
  br i1 %5, label %51, label %23, !dbg !774

; <label>:23:                                     ; preds = %22, %20, %19
  %24 = icmp eq %struct.ip_addr* %1, null, !dbg !775
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !778
  br i1 %24, label %54, label %25, !dbg !778

; <label>:25:                                     ; preds = %23
  %26 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !779
  store i8 %17, i8* %26, align 4, !dbg !779, !tbaa !349
  %27 = load i8, i8* %16, align 4, !dbg !783, !tbaa !773
  %28 = icmp eq i8 %27, 6, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !785
  %29 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !786
  %30 = load i32, i32* %29, align 4, !dbg !786, !tbaa !249
  %31 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !786
  store i32 %30, i32* %31, align 4, !dbg !786, !tbaa !249
  br i1 %28, label %32, label %44, !dbg !785

; <label>:32:                                     ; preds = %25
  %33 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !786
  %34 = load i32, i32* %33, align 4, !dbg !786, !tbaa !249
  %35 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !786
  store i32 %34, i32* %35, align 4, !dbg !786, !tbaa !249
  %36 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !786
  %37 = load i32, i32* %36, align 4, !dbg !786, !tbaa !249
  %38 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !786
  store i32 %37, i32* %38, align 4, !dbg !786, !tbaa !249
  %39 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !786
  %40 = load i32, i32* %39, align 4, !dbg !786, !tbaa !249
  %41 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !786
  store i32 %40, i32* %41, align 4, !dbg !786, !tbaa !249
  %42 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %7, i32 1, i32 0, i32 0, i32 1, !dbg !786
  %43 = load i8, i8* %42, align 4, !dbg !786, !tbaa !249
  br label %48, !dbg !789

; <label>:44:                                     ; preds = %25
  %45 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !790
  store i32 0, i32* %45, align 4, !dbg !790, !tbaa !249
  %46 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !790
  store i32 0, i32* %46, align 4, !dbg !790, !tbaa !249
  %47 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !790
  store i32 0, i32* %47, align 4, !dbg !790, !tbaa !249
  br label %48

; <label>:48:                                     ; preds = %44, %32
  %49 = phi i8 [ %43, %32 ], [ 0, %44 ]
  %50 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 0, i32 0, i32 1, !dbg !786
  store i8 %49, i8* %50, align 4, !dbg !786, !tbaa !249
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %54, !dbg !793

; <label>:51:                                     ; preds = %6, %11, %20, %21, %22
  %52 = add nuw nsw i64 %7, 1, !dbg !794
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !795
  %53 = icmp ult i64 %52, 32, !dbg !796
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  br i1 %53, label %6, label %54, !dbg !761, !llvm.loop !797

; <label>:54:                                     ; preds = %51, %23, %48
  %55 = phi i8 [ 0, %48 ], [ 0, %23 ], [ -16, %51 ], !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !801
  ret i8 %55, !dbg !801
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #3

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_check_entry(i8 zeroext) unnamed_addr #1 !dbg !802 {
  %2 = alloca i32, align 4
  %3 = zext i8 %0 to i64, !dbg !810
  %4 = icmp ult i8 %0, 32, !dbg !811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !814
  br i1 %4, label %6, label %5, !dbg !814

; <label>:5:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0)) #9, !dbg !815
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !818
  tail call void @ukplat_terminate(i32 3) #10, !dbg !818
  unreachable

; <label>:6:                                      ; preds = %1
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 3, !dbg !822
  %8 = load i8, i8* %7, align 2, !dbg !822, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  switch i8 %8, label %106 [
    i8 1, label %9
    i8 2, label %54
    i8 3, label %98
    i8 0, label %107
  ], !dbg !823

; <label>:9:                                      ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !824
  %10 = bitcast i32* %2 to i8*
  br label %12, !dbg !824

; <label>:11:                                     ; preds = %108, %38
  br label %12, !dbg !833

; <label>:12:                                     ; preds = %11, %9
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %10) #7, !dbg !833
  %13 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !835, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !839
  br i1 %14, label %21, label %15, !dbg !839

; <label>:15:                                     ; preds = %12
  %16 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !840, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !844
  br i1 %17, label %21, label %18, !dbg !844

; <label>:18:                                     ; preds = %15
  %19 = call i64 @ukplat_lcpu_save_irqf() #8, !dbg !845
  %20 = call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !848
  call void @ukplat_lcpu_restore_irqf(i64 %19) #8, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !851
  store i32 %20, i32* %2, align 4, !dbg !853, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !853
  br label %30, !dbg !853

; <label>:21:                                     ; preds = %15, %12
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !854, !srcloc !607
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  %23 = and i64 %22, -65536, !dbg !860
  %24 = or i64 %23, 4097, !dbg !860
  %25 = add nsw i64 %24, -1, !dbg !860
  %26 = inttoptr i64 %25 to i32*, !dbg !861
  %27 = load i32, i32* %26, align 4096, !dbg !862, !tbaa !252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !863
  %28 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_swrand_randr\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %27, i32 ()* nonnull @uk_swrand_randr) #7, !dbg !864, !srcloc !648
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %2, i64 %28) #7, !dbg !865, !srcloc !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %29 = load i32, i32* %2, align 4, !dbg !866, !tbaa !252
  br label %30

; <label>:30:                                     ; preds = %21, %18
  %31 = phi i32 [ %29, %21 ], [ %20, %18 ], !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %10) #7, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !868
  %32 = trunc i32 %31 to i16, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br label %33, !dbg !874

; <label>:33:                                     ; preds = %112, %30
  %34 = phi i64 [ 0, %30 ], [ %113, %112 ]
  %35 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 3, !dbg !875
  %36 = load i8, i8* %35, align 2, !dbg !875, !tbaa !419
  %37 = icmp eq i8 %36, 2, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %37, label %38, label %42, !dbg !880

; <label>:38:                                     ; preds = %33
  %39 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %34, i32 2, !dbg !881
  %40 = load i16, i16* %39, align 4, !dbg !881, !tbaa !882
  %41 = icmp eq i16 %40, %32, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %41, label %11, label %42, !dbg !884

; <label>:42:                                     ; preds = %38, %33
  %43 = or i64 %34, 1, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  %44 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 3, !dbg !875
  %45 = load i8, i8* %44, align 2, !dbg !875, !tbaa !419
  %46 = icmp eq i8 %45, 2, !dbg !879
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !880
  br i1 %46, label %108, label %112, !dbg !880

; <label>:47:                                     ; preds = %112
  %48 = trunc i32 %31 to i16, !dbg !869
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !887
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 2, !dbg !888
  store i16 %48, i16* %49, align 4, !dbg !889, !tbaa !882
  store i8 2, i8* %7, align 2, !dbg !890, !tbaa !419
  %50 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !891
  store i8 0, i8* %50, align 1, !dbg !892, !tbaa !893
  %51 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !894
  store i8 1, i8* %51, align 8, !dbg !895, !tbaa !896
  %52 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !897
  store i8 0, i8* %52, align 1, !dbg !898, !tbaa !899
  %53 = call fastcc signext i8 @dns_send(i8 zeroext %0) #9, !dbg !900
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !902
  br label %107, !dbg !902

; <label>:54:                                     ; preds = %6
  %55 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 5, !dbg !903
  %56 = load i8, i8* %55, align 8, !dbg !905, !tbaa !896
  %57 = add i8 %56, -1, !dbg !905
  store i8 %57, i8* %55, align 8, !dbg !905, !tbaa !896
  %58 = icmp eq i8 %57, 0, !dbg !906
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !907
  br i1 %58, label %59, label %107, !dbg !907

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 6, !dbg !908
  %61 = load i8, i8* %60, align 1, !dbg !911, !tbaa !899
  %62 = add i8 %61, 1, !dbg !911
  store i8 %62, i8* %60, align 1, !dbg !911, !tbaa !899
  %63 = icmp eq i8 %62, 4, !dbg !912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !913
  br i1 %63, label %64, label %95, !dbg !913

; <label>:64:                                     ; preds = %59
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !924
  %65 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 4, !dbg !925
  %66 = load i8, i8* %65, align 1, !dbg !925, !tbaa !893
  %67 = zext i8 %66 to i32, !dbg !929
  %68 = add nuw nsw i32 %67, 1, !dbg !930
  %69 = icmp ult i32 %68, 2, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  br i1 %69, label %70, label %94, !dbg !932

; <label>:70:                                     ; preds = %64
  %71 = zext i32 %68 to i64, !dbg !933
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 1, !dbg !933
  %73 = load i8, i8* %72, align 4, !dbg !933, !tbaa !349
  %74 = icmp eq i8 %73, 6, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !934
  %75 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 0, !dbg !933
  %76 = load i32, i32* %75, align 8, !dbg !933, !tbaa !249
  %77 = icmp eq i32 %76, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !935
  br i1 %74, label %78, label %91, !dbg !934

; <label>:78:                                     ; preds = %70
  br i1 %77, label %79, label %92, !dbg !933

; <label>:79:                                     ; preds = %78
  %80 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 1, !dbg !933
  %81 = load i32, i32* %80, align 4, !dbg !933, !tbaa !249
  %82 = icmp eq i32 %81, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %82, label %83, label %92, !dbg !933

; <label>:83:                                     ; preds = %79
  %84 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 2, !dbg !933
  %85 = load i32, i32* %84, align 8, !dbg !933, !tbaa !249
  %86 = icmp eq i32 %85, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %86, label %87, label %92, !dbg !933

; <label>:87:                                     ; preds = %83
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %71, i32 0, i32 0, i32 0, i64 3, !dbg !933
  %89 = load i32, i32* %88, align 4, !dbg !933, !tbaa !249
  %90 = icmp eq i32 %89, 0, !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !933
  br i1 %90, label %94, label %92, !dbg !933

; <label>:91:                                     ; preds = %70
  br i1 %77, label %94, label %92, !dbg !934

; <label>:92:                                     ; preds = %91, %87, %83, %79, %78
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !936
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  %93 = add i8 %66, 1, !dbg !940
  store i8 %93, i8* %65, align 1, !dbg !940, !tbaa !893
  store i8 1, i8* %55, align 8, !dbg !942, !tbaa !896
  store i8 0, i8* %60, align 1, !dbg !943, !tbaa !899
  br label %96, !dbg !944

; <label>:94:                                     ; preds = %87, %91, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  tail call fastcc void @dns_call_found(i8 zeroext %0, %struct.ip_addr* null) #9, !dbg !945
  store i8 0, i8* %7, align 2, !dbg !947, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !948
  br label %107, !dbg !948

; <label>:95:                                     ; preds = %59
  store i8 %62, i8* %55, align 8, !dbg !949, !tbaa !896
  br label %96

; <label>:96:                                     ; preds = %95, %92
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %97 = tail call fastcc signext i8 @dns_send(i8 zeroext %0) #9, !dbg !951
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !952
  br label %107, !dbg !952

; <label>:98:                                     ; preds = %6
  %99 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %3, i32 0, !dbg !953
  %100 = load i32, i32* %99, align 8, !dbg !953, !tbaa !955
  %101 = icmp eq i32 %100, 0, !dbg !956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !957
  br i1 %101, label %105, label %102, !dbg !957

; <label>:102:                                    ; preds = %98
  %103 = add i32 %100, -1, !dbg !958
  store i32 %103, i32* %99, align 8, !dbg !958, !tbaa !955
  %104 = icmp eq i32 %103, 0, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !960
  br i1 %104, label %105, label %107, !dbg !960

; <label>:105:                                    ; preds = %102, %98
  store i8 0, i8* %7, align 2, !dbg !961, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br label %107, !dbg !963

; <label>:106:                                    ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !964
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !969
  tail call void @ukplat_terminate(i32 3) #10, !dbg !969
  unreachable

; <label>:107:                                    ; preds = %102, %105, %54, %96, %6, %94, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !973
  ret void, !dbg !973

; <label>:108:                                    ; preds = %42
  %109 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %43, i32 2, !dbg !881
  %110 = load i16, i16* %109, align 4, !dbg !881, !tbaa !882
  %111 = icmp eq i16 %110, %32, !dbg !883
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !884
  br i1 %111, label %11, label %112, !dbg !884

; <label>:112:                                    ; preds = %108, %42
  %113 = add nuw nsw i64 %34, 2, !dbg !885
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !886
  %114 = icmp ult i64 %113, 32, !dbg !974
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !874
  br i1 %114, label %33, label %47, !dbg !874, !llvm.loop !975
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #5 !dbg !134 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !979
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !979
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !981
  call void @llvm.va_start(i8* nonnull %3), !dbg !981
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !982
  call void @llvm.va_end(i8* nonnull %3), !dbg !985
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !986
  ret void, !dbg !986
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #6

; Function Attrs: noredzone nounwind
define internal fastcc signext i8 @dns_send(i8 zeroext) unnamed_addr #1 !dbg !987 {
  %2 = alloca %struct.dns_hdr, align 2
  %3 = alloca %struct.dns_query, align 2
  %4 = bitcast %struct.dns_hdr* %2 to i8*, !dbg !1022
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %4) #7, !dbg !1022
  %5 = bitcast %struct.dns_query* %3 to i8*, !dbg !1023
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1023
  %6 = zext i8 %0 to i64, !dbg !1024
  %7 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 4, !dbg !1025
  %8 = load i8, i8* %7, align 1, !dbg !1025, !tbaa !893
  %9 = icmp ult i8 %8, 2, !dbg !1025
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1028
  br i1 %9, label %11, label %10, !dbg !1028

; <label>:10:                                     ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !1029
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1032
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1032
  unreachable

; <label>:11:                                     ; preds = %1
  %12 = zext i8 %8 to i64, !dbg !1036
  %13 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 1, !dbg !1036
  %14 = load i8, i8* %13, align 4, !dbg !1036, !tbaa !349
  %15 = icmp eq i8 %14, 6, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  %16 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 0, !dbg !1036
  %17 = load i32, i32* %16, align 8, !dbg !1036, !tbaa !249
  %18 = icmp eq i32 %17, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %15, label %19, label %32, !dbg !1038

; <label>:19:                                     ; preds = %11
  br i1 %18, label %20, label %35, !dbg !1036

; <label>:20:                                     ; preds = %19
  %21 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 1, !dbg !1036
  %22 = load i32, i32* %21, align 4, !dbg !1036, !tbaa !249
  %23 = icmp eq i32 %22, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %23, label %24, label %35, !dbg !1036

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 2, !dbg !1036
  %26 = load i32, i32* %25, align 8, !dbg !1036, !tbaa !249
  %27 = icmp eq i32 %26, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %27, label %28, label %35, !dbg !1036

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %12, i32 0, i32 0, i32 0, i64 3, !dbg !1036
  %30 = load i32, i32* %29, align 4, !dbg !1036, !tbaa !249
  %31 = icmp eq i32 %30, 0, !dbg !1036
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1036
  br i1 %31, label %33, label %35, !dbg !1036

; <label>:32:                                     ; preds = %11
  br i1 %18, label %33, label %35, !dbg !1038

; <label>:33:                                     ; preds = %32, %28
  tail call fastcc void @dns_call_found(i8 zeroext %0, %struct.ip_addr* null) #9, !dbg !1039
  %34 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 3, !dbg !1041
  store i8 0, i8* %34, align 2, !dbg !1042, !tbaa !419
  br label %114, !dbg !1043

; <label>:35:                                     ; preds = %32, %28, %24, %20, %19
  %36 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 0, !dbg !1044
  %37 = tail call i64 @strlen(i8* nonnull %36) #8, !dbg !1045
  %38 = trunc i64 %37 to i16, !dbg !1046
  %39 = add i16 %38, 18, !dbg !1046
  %40 = tail call %struct.pbuf* @pbuf_alloc(i32 74, i16 zeroext %39, i32 640) #8, !dbg !1047
  %41 = icmp eq %struct.pbuf* %40, null, !dbg !1049
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1050
  br i1 %41, label %110, label %42, !dbg !1050

; <label>:42:                                     ; preds = %35
  %43 = call i8* @memset(i8* nonnull %4, i32 0, i64 12) #8, !dbg !1051
  %44 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 2, !dbg !1052
  %45 = load i16, i16* %44, align 4, !dbg !1052, !tbaa !882
  %46 = call zeroext i16 @lwip_htons(i16 zeroext %45) #8, !dbg !1053
  %47 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 0, !dbg !1054
  store i16 %46, i16* %47, align 2, !dbg !1055, !tbaa !1056
  %48 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 1, !dbg !1058
  store i8 1, i8* %48, align 2, !dbg !1059, !tbaa !1060
  %49 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %2, i64 0, i32 3, !dbg !1061
  store i16 256, i16* %49, align 2, !dbg !1062, !tbaa !1063
  %50 = call signext i8 @pbuf_take(%struct.pbuf* nonnull %40, i8* nonnull %4, i16 zeroext 12) #8, !dbg !1064
  %51 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 9, i64 -1, !dbg !1066
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1068
  br label %52, !dbg !1068

; <label>:52:                                     ; preds = %75, %42
  %53 = phi i8* [ %51, %42 ], [ %70, %75 ], !dbg !1069
  %54 = phi i16 [ 12, %42 ], [ %83, %75 ], !dbg !1069
  %55 = getelementptr inbounds i8, i8* %53, i64 1, !dbg !1071
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1074
  %56 = load i8, i8* %55, align 1, !dbg !1076, !tbaa !249
  %57 = icmp eq i8 %56, 46, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %57, label %68, label %58, !dbg !1079

; <label>:58:                                     ; preds = %52, %63
  %59 = phi i8 [ %66, %63 ], [ %56, %52 ]
  %60 = phi i8* [ %65, %63 ], [ %55, %52 ]
  %61 = phi i8 [ %64, %63 ], [ 0, %52 ]
  %62 = icmp eq i8 %59, 0, !dbg !1080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  br i1 %62, label %68, label %63, !dbg !1081

; <label>:63:                                     ; preds = %58
  %64 = add i8 %61, 1, !dbg !1082
  %65 = getelementptr inbounds i8, i8* %60, i64 1, !dbg !1084
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1085
  %66 = load i8, i8* %65, align 1, !dbg !1076, !tbaa !249
  %67 = icmp eq i8 %66, 46, !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1079
  br i1 %67, label %68, label %58, !dbg !1079, !llvm.loop !1086

; <label>:68:                                     ; preds = %63, %58, %52
  %69 = phi i8 [ 0, %52 ], [ %61, %58 ], [ %64, %63 ], !dbg !1088
  %70 = phi i8* [ %55, %52 ], [ %60, %58 ], [ %65, %63 ], !dbg !1089
  %71 = zext i16 %54 to i32, !dbg !1090
  %72 = zext i8 %69 to i32, !dbg !1092
  %73 = add nuw nsw i32 %72, %71, !dbg !1093
  %74 = icmp ugt i32 %73, 65534, !dbg !1094
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1095
  br i1 %74, label %112, label %75, !dbg !1095

; <label>:75:                                     ; preds = %68
  %76 = ptrtoint i8* %70 to i64, !dbg !1096
  %77 = ptrtoint i8* %55 to i64, !dbg !1096
  %78 = sub i64 %76, %77, !dbg !1096
  %79 = trunc i64 %78 to i16, !dbg !1097
  call void @pbuf_put_at(%struct.pbuf* nonnull %40, i16 zeroext %54, i8 zeroext %69) #8, !dbg !1099
  %80 = add i16 %54, 1, !dbg !1100
  %81 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %40, i8* nonnull %55, i16 zeroext %79, i16 zeroext %80) #8, !dbg !1101
  %82 = trunc i32 %73 to i16, !dbg !1102
  %83 = add i16 %82, 1, !dbg !1102
  %84 = load i8, i8* %70, align 1, !dbg !1103, !tbaa !249
  %85 = icmp eq i8 %84, 0, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  br i1 %85, label %86, label %52, !dbg !1105, !llvm.loop !1106

; <label>:86:                                     ; preds = %75
  %87 = trunc i32 %73 to i16, !dbg !1102
  call void @pbuf_put_at(%struct.pbuf* nonnull %40, i16 zeroext %83, i8 zeroext 0) #8, !dbg !1108
  %88 = add i16 %87, 2, !dbg !1109
  %89 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 10, !dbg !1110
  %90 = load i8, i8* %89, align 4, !dbg !1110, !tbaa !431
  %91 = icmp eq i8 %90, 3, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  br i1 %91, label %95, label %92, !dbg !1110

; <label>:92:                                     ; preds = %86
  %93 = icmp eq i8 %90, 1, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1112
  %94 = select i1 %93, i16 7168, i16 256, !dbg !1112
  br label %95, !dbg !1112

; <label>:95:                                     ; preds = %92, %86
  %96 = phi i16 [ 7168, %86 ], [ %94, %92 ]
  %97 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 0, !dbg !1113
  store i16 %96, i16* %97, align 2, !dbg !1113, !tbaa !1115
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %98 = getelementptr inbounds %struct.dns_query, %struct.dns_query* %3, i64 0, i32 1, !dbg !1117
  store i16 256, i16* %98, align 2, !dbg !1118, !tbaa !1119
  %99 = call signext i8 @pbuf_take_at(%struct.pbuf* nonnull %40, i8* nonnull %5, i16 zeroext 4, i16 zeroext %88) #8, !dbg !1120
  %100 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %6, i32 8, !dbg !1121
  %101 = load i8, i8* %100, align 1, !dbg !1121, !tbaa !706
  %102 = load i8, i8* %7, align 1, !dbg !1124, !tbaa !893
  %103 = zext i8 %102 to i64, !dbg !1126
  %104 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %103, !dbg !1126
  %105 = zext i8 %101 to i64, !dbg !1128
  %106 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %105, !dbg !1128
  %107 = load %struct.udp_pcb*, %struct.udp_pcb** %106, align 8, !dbg !1128, !tbaa !558
  %108 = call signext i8 @udp_sendto(%struct.udp_pcb* %107, %struct.pbuf* nonnull %40, %struct.ip_addr* nonnull %104, i16 zeroext 53) #8, !dbg !1129
  %109 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %40) #8, !dbg !1131
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1132
  br label %110

; <label>:110:                                    ; preds = %35, %95
  %111 = phi i8 [ %108, %95 ], [ -1, %35 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %114, !dbg !1133

; <label>:112:                                    ; preds = %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %113 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %40) #8, !dbg !1136
  br label %114, !dbg !1137

; <label>:114:                                    ; preds = %112, %110, %33
  %115 = phi i8 [ 0, %33 ], [ -6, %112 ], [ %111, %110 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1138
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %5) #7, !dbg !1139
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %4) #7, !dbg !1139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1139
  ret i8 %115, !dbg !1139
}

; Function Attrs: noredzone nounwind
define internal fastcc void @dns_call_found(i8 zeroext, %struct.ip_addr*) unnamed_addr #1 !dbg !1140 {
  %3 = icmp eq %struct.ip_addr* %1, null, !dbg !1149
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1151
  br i1 %3, label %4, label %6, !dbg !1151

; <label>:4:                                      ; preds = %2
  %5 = zext i8 %0 to i64
  br label %24, !dbg !1151

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %1, i64 0, i32 1, !dbg !1152
  %8 = load i8, i8* %7, align 4, !dbg !1152, !tbaa !349
  %9 = icmp eq i8 %8, 6, !dbg !1152
  %10 = zext i8 %0 to i64, !dbg !1155
  %11 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %10, i32 10, !dbg !1155
  %12 = load i8, i8* %11, align 4, !dbg !1155, !tbaa !431
  %13 = icmp eq i8 %12, 3, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1159
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %9, label %14, label %19, !dbg !1159

; <label>:14:                                     ; preds = %6
  br i1 %13, label %18, label %15, !dbg !1160

; <label>:15:                                     ; preds = %14
  %16 = icmp eq i8 %12, 1, !dbg !1160
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %16, label %18, label %17, !dbg !1164

; <label>:17:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1165
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1168
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1168
  unreachable

; <label>:18:                                     ; preds = %15, %14
  store i8 1, i8* %11, align 4, !dbg !1172, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1173
  br label %24, !dbg !1173

; <label>:19:                                     ; preds = %6
  br i1 %13, label %22, label %20, !dbg !1174

; <label>:20:                                     ; preds = %19
  %21 = icmp eq i8 %12, 1, !dbg !1174
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1175
  br i1 %21, label %22, label %23, !dbg !1175

; <label>:22:                                     ; preds = %19, %20
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !1176
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1179
  tail call void @ukplat_terminate(i32 3) #10, !dbg !1179
  unreachable

; <label>:23:                                     ; preds = %20
  store i8 0, i8* %11, align 4, !dbg !1183, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %24

; <label>:24:                                     ; preds = %4, %18, %23
  %25 = phi i64 [ %5, %4 ], [ %10, %18 ], [ %10, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %26 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %25, i32 9, i64 0
  br label %27, !dbg !1187

; <label>:27:                                     ; preds = %39, %24
  %28 = phi i64 [ 0, %24 ], [ %40, %39 ]
  %29 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %28, i32 0, !dbg !1188
  %30 = load void (i8*, %struct.ip_addr*, i8*)*, void (i8*, %struct.ip_addr*, i8*)** %29, align 8, !dbg !1188, !tbaa !442
  %31 = icmp eq void (i8*, %struct.ip_addr*, i8*)* %30, null, !dbg !1192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  br i1 %31, label %39, label %32, !dbg !1193

; <label>:32:                                     ; preds = %27
  %33 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %28, i32 2, !dbg !1194
  %34 = load i8, i8* %33, align 8, !dbg !1194, !tbaa !454
  %35 = icmp eq i8 %34, %0, !dbg !1195
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1196
  br i1 %35, label %36, label %39, !dbg !1196

; <label>:36:                                     ; preds = %32
  %37 = getelementptr inbounds [32 x %struct.dns_req_entry], [32 x %struct.dns_req_entry]* @dns_requests, i64 0, i64 %28, i32 1, !dbg !1197
  %38 = load i8*, i8** %37, align 8, !dbg !1197, !tbaa !451
  tail call void %30(i8* nonnull %26, %struct.ip_addr* %1, i8* %38) #8, !dbg !1199
  store void (i8*, %struct.ip_addr*, i8*)* null, void (i8*, %struct.ip_addr*, i8*)** %29, align 8, !dbg !1200, !tbaa !442
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1201
  br label %39, !dbg !1201

; <label>:39:                                     ; preds = %27, %32, %36
  %40 = add nuw nsw i64 %28, 1, !dbg !1202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1187
  %41 = icmp eq i64 %40, 32, !dbg !1204
  br i1 %41, label %42, label %27, !dbg !1187, !llvm.loop !1205

; <label>:42:                                     ; preds = %39
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1207
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  %43 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %25, i32 8
  br label %44, !dbg !1209

; <label>:44:                                     ; preds = %42, %57
  %45 = phi i64 [ 0, %42 ], [ %58, %57 ]
  %46 = icmp eq i64 %45, %25, !dbg !1210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %46, label %57, label %47, !dbg !1214

; <label>:47:                                     ; preds = %44
  %48 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %45, i32 3, !dbg !1215
  %49 = load i8, i8* %48, align 2, !dbg !1215, !tbaa !419
  %50 = icmp eq i8 %49, 2, !dbg !1217
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %50, label %51, label %57, !dbg !1218

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %45, i32 8, !dbg !1219
  %53 = load i8, i8* %52, align 1, !dbg !1219, !tbaa !706
  %54 = load i8, i8* %43, align 1, !dbg !1222, !tbaa !706
  %55 = icmp eq i8 %53, %54, !dbg !1223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1224
  br i1 %55, label %56, label %57, !dbg !1224

; <label>:56:                                     ; preds = %51
  store i8 32, i8* %43, align 1, !dbg !1225, !tbaa !706
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1227
  br label %70, !dbg !1228

; <label>:57:                                     ; preds = %47, %51, %44
  %58 = add nuw nsw i64 %45, 1, !dbg !1229
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1230
  %59 = icmp ult i64 %58, 32, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %59, label %44, label %60, !dbg !1209, !llvm.loop !1232

; <label>:60:                                     ; preds = %57
  %61 = load i8, i8* %43, align 1, !dbg !1234, !tbaa !706
  %62 = icmp ult i8 %61, 32, !dbg !1236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %62, label %63, label %71, !dbg !1228

; <label>:63:                                     ; preds = %60
  %64 = zext i8 %61 to i64, !dbg !1237
  %65 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %64, !dbg !1237
  %66 = load %struct.udp_pcb*, %struct.udp_pcb** %65, align 8, !dbg !1237, !tbaa !558
  tail call void @udp_remove(%struct.udp_pcb* %66) #8, !dbg !1239
  %67 = load i8, i8* %43, align 1, !dbg !1240, !tbaa !706
  %68 = zext i8 %67 to i64, !dbg !1241
  %69 = getelementptr inbounds [32 x %struct.udp_pcb*], [32 x %struct.udp_pcb*]* @dns_pcbs, i64 0, i64 %68, !dbg !1241
  store %struct.udp_pcb* null, %struct.udp_pcb** %69, align 8, !dbg !1242, !tbaa !558
  store i8 32, i8* %43, align 1, !dbg !1243, !tbaa !706
  br label %70, !dbg !1244

; <label>:70:                                     ; preds = %63, %56
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1245
  br label %71, !dbg !1246

; <label>:71:                                     ; preds = %70, %60
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  ret void, !dbg !1246
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: inlinehint noredzone nounwind
define internal i32 @uk_swrand_randr() #5 !dbg !617 {
  %1 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1247
  %2 = tail call i32 @uk_swrand_randr_r(%struct.uk_swrand* nonnull @uk_swrand_def) #8, !dbg !1249
  tail call void @ukplat_lcpu_restore_irqf(i64 %1) #8, !dbg !1251
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1252
  ret i32 %2, !dbg !1252
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
define internal void @dns_recv(i8* nocapture readnone, %struct.udp_pcb* nocapture readnone, %struct.pbuf*, %struct.ip_addr* nocapture readonly, i16 zeroext) #1 !dbg !1253 {
  %6 = alloca %struct.dns_hdr, align 2
  %7 = alloca %struct.dns_answer, align 4
  %8 = alloca %struct.dns_query, align 2
  %9 = alloca %struct.ip4_addr, align 4
  %10 = alloca <4 x i32>, align 16
  %11 = bitcast %struct.dns_hdr* %6 to i8*, !dbg !1307
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %11) #7, !dbg !1307
  %12 = bitcast %struct.dns_answer* %7 to i8*, !dbg !1308
  call void @llvm.lifetime.start.p0i8(i64 12, i8* nonnull %12) #7, !dbg !1308
  %13 = bitcast %struct.dns_query* %8 to i8*, !dbg !1309
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %13) #7, !dbg !1309
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1310
  %15 = load i16, i16* %14, align 8, !dbg !1310, !tbaa !1312
  %16 = icmp ult i16 %15, 16, !dbg !1314
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1315
  br i1 %16, label %399, label %17, !dbg !1315

; <label>:17:                                     ; preds = %5
  %18 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %11, i16 zeroext 12, i16 zeroext 0) #8, !dbg !1316
  %19 = icmp eq i16 %18, 12, !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  br i1 %19, label %20, label %399, !dbg !1318

; <label>:20:                                     ; preds = %17
  %21 = getelementptr inbounds %struct.dns_hdr, %struct.dns_hdr* %6, i64 0, i32 0, !dbg !1319
  %22 = load i16, i16* %21, align 2, !dbg !1319, !tbaa !1056
  %23 = call zeroext i16 @lwip_htons(i16 zeroext %22) #8, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
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
  br label %43, !dbg !1324

; <label>:43:                                     ; preds = %20, %396
  %44 = phi i64 [ 0, %20 ], [ %397, %396 ]
  %45 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 3, !dbg !1325
  %46 = load i8, i8* %45, align 2, !dbg !1325, !tbaa !419
  %47 = icmp eq i8 %46, 2, !dbg !1326
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1327
  br i1 %47, label %48, label %391, !dbg !1327

; <label>:48:                                     ; preds = %43
  %49 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 2, !dbg !1328
  %50 = load i16, i16* %49, align 4, !dbg !1328, !tbaa !882
  %51 = icmp eq i16 %50, %23, !dbg !1329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br i1 %51, label %52, label %391, !dbg !1330

; <label>:52:                                     ; preds = %48
  %53 = load i16, i16* %24, align 2, !dbg !1331, !tbaa !1063
  %54 = call zeroext i16 @lwip_htons(i16 zeroext %53) #8, !dbg !1332
  %55 = load i16, i16* %25, align 2, !dbg !1334, !tbaa !1335
  %56 = call zeroext i16 @lwip_htons(i16 zeroext %55) #8, !dbg !1336
  %57 = load i8, i8* %26, align 2, !dbg !1338, !tbaa !1060
  %58 = icmp sgt i8 %57, -1, !dbg !1340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1341
  br i1 %58, label %392, label %59, !dbg !1341

; <label>:59:                                     ; preds = %52
  %60 = icmp eq i16 %54, 1, !dbg !1342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  br i1 %60, label %61, label %392, !dbg !1344

; <label>:61:                                     ; preds = %59
  %62 = load i8, i8* %27, align 4, !dbg !1345, !tbaa !349
  %63 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 4, !dbg !1345
  %64 = load i8, i8* %63, align 1, !dbg !1345, !tbaa !893
  %65 = zext i8 %64 to i64, !dbg !1345
  %66 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 1, !dbg !1345
  %67 = load i8, i8* %66, align 4, !dbg !1345, !tbaa !349
  %68 = icmp eq i8 %62, %67, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  br i1 %68, label %69, label %392, !dbg !1348

; <label>:69:                                     ; preds = %61
  %70 = icmp eq i8 %62, 6, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1348
  %71 = load i32, i32* %28, align 4, !dbg !1345, !tbaa !249
  %72 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 0, !dbg !1345
  %73 = load i32, i32* %72, align 8, !dbg !1345, !tbaa !249
  %74 = icmp eq i32 %71, %73, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1349
  br i1 %70, label %75, label %96, !dbg !1348

; <label>:75:                                     ; preds = %69
  br i1 %74, label %76, label %392, !dbg !1345

; <label>:76:                                     ; preds = %75
  %77 = load i32, i32* %29, align 4, !dbg !1345, !tbaa !249
  %78 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 1, !dbg !1345
  %79 = load i32, i32* %78, align 4, !dbg !1345, !tbaa !249
  %80 = icmp eq i32 %77, %79, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %80, label %81, label %392, !dbg !1345

; <label>:81:                                     ; preds = %76
  %82 = load i32, i32* %30, align 4, !dbg !1345, !tbaa !249
  %83 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 2, !dbg !1345
  %84 = load i32, i32* %83, align 8, !dbg !1345, !tbaa !249
  %85 = icmp eq i32 %82, %84, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %85, label %86, label %392, !dbg !1345

; <label>:86:                                     ; preds = %81
  %87 = load i32, i32* %31, align 4, !dbg !1345, !tbaa !249
  %88 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 0, i64 3, !dbg !1345
  %89 = load i32, i32* %88, align 4, !dbg !1345, !tbaa !249
  %90 = icmp eq i32 %87, %89, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %90, label %91, label %392, !dbg !1345

; <label>:91:                                     ; preds = %86
  %92 = load i8, i8* %32, align 4, !dbg !1345, !tbaa !249
  %93 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %65, i32 0, i32 0, i32 1, !dbg !1345
  %94 = load i8, i8* %93, align 8, !dbg !1345, !tbaa !249
  %95 = icmp eq i8 %92, %94, !dbg !1345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1345
  br i1 %95, label %97, label %392, !dbg !1345

; <label>:96:                                     ; preds = %69
  br i1 %74, label %97, label %392, !dbg !1348

; <label>:97:                                     ; preds = %96, %91
  %98 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 9, i64 0, !dbg !1350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br label %99, !dbg !1375

; <label>:99:                                     ; preds = %159, %97
  %100 = phi i16 [ 12, %97 ], [ %156, %159 ], !dbg !1376
  %101 = phi i8* [ %98, %97 ], [ %160, %159 ]
  %102 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %100) #8, !dbg !1377
  %103 = icmp slt i32 %102, 0, !dbg !1379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1381
  br i1 %103, label %164, label %104, !dbg !1381

; <label>:104:                                    ; preds = %99
  %105 = icmp eq i16 %100, -1, !dbg !1382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1383
  br i1 %105, label %164, label %106, !dbg !1383

; <label>:106:                                    ; preds = %104
  %107 = and i32 %102, 192, !dbg !1384
  %108 = icmp eq i32 %107, 192, !dbg !1385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %108, label %164, label %109, !dbg !1386

; <label>:109:                                    ; preds = %106
  %110 = add i16 %100, 1, !dbg !1387
  %111 = icmp sgt i32 %102, 0, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  %112 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %110) #8, !dbg !1376
  %113 = icmp slt i32 %112, 0, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  br i1 %111, label %114, label %153, !dbg !1389

; <label>:114:                                    ; preds = %109, %146
  %115 = phi i1 [ %152, %146 ], [ %113, %109 ]
  %116 = phi i32 [ %151, %146 ], [ %112, %109 ]
  %117 = phi i16 [ %149, %146 ], [ %110, %109 ]
  %118 = phi i8* [ %147, %146 ], [ %101, %109 ]
  %119 = phi i32 [ %148, %146 ], [ %102, %109 ]
  br i1 %115, label %145, label %120, !dbg !1393

; <label>:120:                                    ; preds = %114
  %121 = load i8, i8* %118, align 1, !dbg !1394, !tbaa !249
  %122 = call i8* @__locale_ctype_ptr() #8, !dbg !1394
  %123 = getelementptr inbounds i8, i8* %122, i64 1, !dbg !1394
  %124 = zext i8 %121 to i32, !dbg !1394
  %125 = zext i8 %121 to i64, !dbg !1394
  %126 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !1394
  %127 = load i8, i8* %126, align 1, !dbg !1394, !tbaa !249
  %128 = and i8 %127, 3, !dbg !1394
  %129 = icmp eq i8 %128, 1, !dbg !1394
  %130 = add nuw nsw i32 %124, 32, !dbg !1394
  %131 = select i1 %129, i32 %130, i32 %124, !dbg !1394
  %132 = call i8* @__locale_ctype_ptr() #8, !dbg !1395
  %133 = getelementptr inbounds i8, i8* %132, i64 1, !dbg !1395
  %134 = and i32 %116, 255, !dbg !1395
  %135 = zext i32 %134 to i64, !dbg !1395
  %136 = getelementptr inbounds i8, i8* %133, i64 %135, !dbg !1395
  %137 = load i8, i8* %136, align 1, !dbg !1395, !tbaa !249
  %138 = and i8 %137, 3, !dbg !1395
  %139 = icmp eq i8 %138, 1, !dbg !1395
  %140 = add nuw nsw i32 %134, 32, !dbg !1395
  %141 = select i1 %139, i32 %140, i32 %134, !dbg !1395
  %142 = icmp eq i32 %131, %141, !dbg !1396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1397
  br i1 %142, label %143, label %145, !dbg !1397

; <label>:143:                                    ; preds = %120
  %144 = icmp eq i16 %117, -1, !dbg !1398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1400
  br i1 %144, label %145, label %146, !dbg !1400

; <label>:145:                                    ; preds = %143, %120, %114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1401
  br label %164

; <label>:146:                                    ; preds = %143
  %147 = getelementptr inbounds i8, i8* %118, i64 1, !dbg !1402
  %148 = add nsw i32 %119, -1, !dbg !1403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1404
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %149 = add i16 %117, 1, !dbg !1387
  %150 = icmp sgt i32 %119, 1, !dbg !1388
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1389
  %151 = call i32 @pbuf_try_get_at(%struct.pbuf* %2, i16 zeroext %149) #8, !dbg !1376
  %152 = icmp slt i32 %151, 0, !dbg !1390
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1376
  br i1 %150, label %114, label %153, !dbg !1389

; <label>:153:                                    ; preds = %146, %109
  %154 = phi i16 [ %100, %109 ], [ %117, %146 ]
  %155 = phi i8* [ %101, %109 ], [ %147, %146 ]
  %156 = phi i16 [ %110, %109 ], [ %149, %146 ], !dbg !1387
  %157 = phi i32 [ %112, %109 ], [ %151, %146 ], !dbg !1376
  %158 = phi i1 [ %113, %109 ], [ %152, %146 ], !dbg !1390
  br i1 %158, label %164, label %159, !dbg !1405

; <label>:159:                                    ; preds = %153
  %160 = getelementptr inbounds i8, i8* %155, i64 1, !dbg !1406
  %161 = icmp eq i32 %157, 0, !dbg !1407
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1408
  br i1 %161, label %162, label %99, !dbg !1408, !llvm.loop !1409

; <label>:162:                                    ; preds = %159
  %163 = icmp eq i16 %156, -1, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1414
  br i1 %163, label %164, label %165, !dbg !1414

; <label>:164:                                    ; preds = %162, %153, %106, %99, %104, %145
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br label %392, !dbg !1417

; <label>:165:                                    ; preds = %162
  %166 = add i16 %154, 2, !dbg !1418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1415
  %167 = zext i16 %166 to i32, !dbg !1420
  %168 = icmp eq i16 %166, -1, !dbg !1422
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1417
  br i1 %168, label %392, label %169, !dbg !1417

; <label>:169:                                    ; preds = %165
  %170 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* %2, i8* nonnull %13, i16 zeroext 4, i16 zeroext %166) #8, !dbg !1423
  %171 = icmp eq i16 %170, 4, !dbg !1425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  br i1 %171, label %172, label %392, !dbg !1426

; <label>:172:                                    ; preds = %169
  %173 = load i16, i16* %33, align 2, !dbg !1427, !tbaa !1119
  %174 = icmp eq i16 %173, 256, !dbg !1429
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1430
  br i1 %174, label %175, label %392, !dbg !1430

; <label>:175:                                    ; preds = %172
  %176 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 10, !dbg !1431
  %177 = load i8, i8* %176, align 4, !dbg !1431, !tbaa !431
  %178 = icmp eq i8 %177, 3, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1431
  br i1 %178, label %182, label %179, !dbg !1431

; <label>:179:                                    ; preds = %175
  %180 = icmp eq i8 %177, 1, !dbg !1431
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1432
  br i1 %180, label %182, label %181, !dbg !1432

; <label>:181:                                    ; preds = %179
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br label %186, !dbg !1433

; <label>:182:                                    ; preds = %179, %175
  %183 = load i16, i16* %34, align 2, !dbg !1434, !tbaa !1115
  %184 = icmp eq i16 %183, 7168, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %184, label %185, label %392, !dbg !1436

; <label>:185:                                    ; preds = %182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1433
  br i1 %178, label %191, label %186, !dbg !1433

; <label>:186:                                    ; preds = %181, %185
  %187 = icmp eq i8 %177, 1, !dbg !1433
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1437
  br i1 %187, label %191, label %188, !dbg !1437

; <label>:188:                                    ; preds = %186
  %189 = load i16, i16* %34, align 2, !dbg !1438, !tbaa !1115
  %190 = icmp eq i16 %189, 256, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br i1 %190, label %191, label %392, !dbg !1440

; <label>:191:                                    ; preds = %188, %186, %185
  %192 = add nuw nsw i32 %167, 4, !dbg !1441
  %193 = icmp ugt i32 %192, 65535, !dbg !1443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br i1 %193, label %392, label %194, !dbg !1444

; <label>:194:                                    ; preds = %191
  %195 = load i8, i8* %35, align 1, !dbg !1445, !tbaa !1446
  %196 = and i8 %195, 15, !dbg !1447
  %197 = icmp eq i8 %196, 0, !dbg !1447
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1448
  br i1 %197, label %198, label %202, !dbg !1448

; <label>:198:                                    ; preds = %194
  %199 = icmp eq i16 %56, 0, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %199, label %379, label %200, !dbg !1450

; <label>:200:                                    ; preds = %198
  %201 = trunc i64 %44 to i8, !dbg !1451
  br label %234, !dbg !1451

; <label>:202:                                    ; preds = %194
  %203 = trunc i64 %44 to i8, !dbg !1322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1456
  %204 = load i8, i8* %63, align 1, !dbg !1457, !tbaa !893
  %205 = zext i8 %204 to i32, !dbg !1458
  %206 = add nuw nsw i32 %205, 1, !dbg !1459
  %207 = icmp ult i32 %206, 2, !dbg !1460
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1461
  br i1 %207, label %208, label %230, !dbg !1461

; <label>:208:                                    ; preds = %202
  %209 = zext i32 %206 to i64, !dbg !1462
  %210 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %209, i32 1, !dbg !1462
  %211 = load i8, i8* %210, align 4, !dbg !1462, !tbaa !349
  %212 = icmp eq i8 %211, 6, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1463
  %213 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %209, i32 0, i32 0, i32 0, i64 0, !dbg !1462
  %214 = load i32, i32* %213, align 8, !dbg !1462, !tbaa !249
  %215 = icmp eq i32 %214, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1464
  br i1 %212, label %216, label %229, !dbg !1463

; <label>:216:                                    ; preds = %208
  br i1 %215, label %217, label %231, !dbg !1462

; <label>:217:                                    ; preds = %216
  %218 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %209, i32 0, i32 0, i32 0, i64 1, !dbg !1462
  %219 = load i32, i32* %218, align 4, !dbg !1462, !tbaa !249
  %220 = icmp eq i32 %219, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %220, label %221, label %231, !dbg !1462

; <label>:221:                                    ; preds = %217
  %222 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %209, i32 0, i32 0, i32 0, i64 2, !dbg !1462
  %223 = load i32, i32* %222, align 8, !dbg !1462, !tbaa !249
  %224 = icmp eq i32 %223, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %224, label %225, label %231, !dbg !1462

; <label>:225:                                    ; preds = %221
  %226 = getelementptr inbounds [2 x %struct.ip_addr], [2 x %struct.ip_addr]* @dns_servers, i64 0, i64 %209, i32 0, i32 0, i32 0, i64 3, !dbg !1462
  %227 = load i32, i32* %226, align 4, !dbg !1462, !tbaa !249
  %228 = icmp eq i32 %227, 0, !dbg !1462
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1462
  br i1 %228, label %230, label %231, !dbg !1462

; <label>:229:                                    ; preds = %208
  br i1 %215, label %230, label %231, !dbg !1463

; <label>:230:                                    ; preds = %225, %229, %202
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br label %388, !dbg !1466

; <label>:231:                                    ; preds = %229, %225, %221, %217, %216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  %232 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 6, !dbg !1468
  store i8 3, i8* %232, align 1, !dbg !1470, !tbaa !899
  %233 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 5, !dbg !1471
  store i8 1, i8* %233, align 8, !dbg !1472, !tbaa !896
  call fastcc void @dns_check_entry(i8 zeroext %203) #9, !dbg !1473
  br label %392, !dbg !1474

; <label>:234:                                    ; preds = %200, %370
  %235 = phi i32 [ %374, %370 ], [ %192, %200 ]
  %236 = phi i16 [ %375, %370 ], [ %56, %200 ]
  %237 = and i32 %235, 65535, !dbg !1451
  %238 = load i16, i16* %14, align 8, !dbg !1475, !tbaa !1312
  %239 = zext i16 %238 to i32, !dbg !1476
  %240 = icmp ult i32 %237, %239, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  br i1 %240, label %241, label %377, !dbg !1478

; <label>:241:                                    ; preds = %234
  %242 = trunc i32 %235 to i16, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1492
  br label %243, !dbg !1492

; <label>:243:                                    ; preds = %263, %241
  %244 = phi i16 [ %242, %241 ], [ %260, %263 ], !dbg !1493
  %245 = add i16 %244, 1, !dbg !1497
  %246 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %244) #8, !dbg !1498
  %247 = icmp slt i32 %246, 0, !dbg !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %247, label %270, label %248, !dbg !1502

; <label>:248:                                    ; preds = %243
  %249 = zext i16 %245 to i32, !dbg !1503
  %250 = icmp eq i16 %245, 0, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br i1 %250, label %270, label %251, !dbg !1505

; <label>:251:                                    ; preds = %248
  %252 = and i32 %246, 192, !dbg !1506
  %253 = icmp eq i32 %252, 192, !dbg !1507
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1508
  br i1 %253, label %267, label %254, !dbg !1508

; <label>:254:                                    ; preds = %251
  %255 = add nsw i32 %246, %249, !dbg !1509
  %256 = load i16, i16* %14, align 8, !dbg !1511, !tbaa !1312
  %257 = zext i16 %256 to i32, !dbg !1512
  %258 = icmp slt i32 %255, %257, !dbg !1513
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1514
  br i1 %258, label %259, label %270, !dbg !1514

; <label>:259:                                    ; preds = %254
  %260 = trunc i32 %255 to i16, !dbg !1515
  %261 = call i32 @pbuf_try_get_at(%struct.pbuf* nonnull %2, i16 zeroext %260) #8, !dbg !1516
  %262 = icmp slt i32 %261, 0, !dbg !1517
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1519
  br i1 %262, label %270, label %263, !dbg !1519

; <label>:263:                                    ; preds = %259
  %264 = icmp eq i32 %261, 0, !dbg !1520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1521
  br i1 %264, label %265, label %243, !dbg !1521, !llvm.loop !1522

; <label>:265:                                    ; preds = %263
  %266 = trunc i32 %255 to i16, !dbg !1515
  br label %267, !dbg !1525

; <label>:267:                                    ; preds = %251, %265
  %268 = phi i16 [ %266, %265 ], [ %245, %251 ], !dbg !1493
  %269 = icmp eq i16 %268, -1, !dbg !1525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  br i1 %269, label %270, label %271, !dbg !1527

; <label>:270:                                    ; preds = %267, %259, %254, %243, %248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  br label %392, !dbg !1529

; <label>:271:                                    ; preds = %267
  %272 = add i16 %268, 1, !dbg !1530
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1531
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1528
  %273 = zext i16 %272 to i32, !dbg !1532
  %274 = icmp eq i16 %272, -1, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1529
  br i1 %274, label %392, label %275, !dbg !1529

; <label>:275:                                    ; preds = %271
  %276 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %12, i16 zeroext 10, i16 zeroext %272) #8, !dbg !1535
  %277 = icmp eq i16 %276, 10, !dbg !1537
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1538
  br i1 %277, label %278, label %392, !dbg !1538

; <label>:278:                                    ; preds = %275
  %279 = add nuw nsw i32 %273, 10, !dbg !1539
  %280 = icmp ugt i32 %279, 65535, !dbg !1541
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1542
  br i1 %280, label %392, label %281, !dbg !1542

; <label>:281:                                    ; preds = %278
  %282 = load i16, i16* %36, align 2, !dbg !1543, !tbaa !1544
  %283 = icmp eq i16 %282, 256, !dbg !1546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1547
  br i1 %283, label %284, label %362, !dbg !1547

; <label>:284:                                    ; preds = %281
  %285 = load i16, i16* %37, align 4, !dbg !1548, !tbaa !1549
  %286 = icmp eq i16 %285, 256, !dbg !1550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1551
  br i1 %286, label %287, label %325, !dbg !1551

; <label>:287:                                    ; preds = %284
  %288 = load i16, i16* %38, align 4, !dbg !1552, !tbaa !1553
  %289 = icmp eq i16 %288, 1024, !dbg !1554
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1555
  br i1 %289, label %290, label %324, !dbg !1555

; <label>:290:                                    ; preds = %287
  %291 = load i8, i8* %176, align 4, !dbg !1556, !tbaa !431
  %292 = icmp eq i8 %291, 3, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  br i1 %292, label %324, label %293, !dbg !1556

; <label>:293:                                    ; preds = %290
  %294 = icmp eq i8 %291, 1, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  br i1 %294, label %324, label %295, !dbg !1557

; <label>:295:                                    ; preds = %293
  %296 = trunc i32 %279 to i16, !dbg !1558
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %39) #7, !dbg !1559
  %297 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %39, i16 zeroext 4, i16 zeroext %296) #8, !dbg !1560
  %298 = icmp eq i16 %297, 4, !dbg !1562
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1563
  br i1 %298, label %299, label %322, !dbg !1563

; <label>:299:                                    ; preds = %295
  %300 = load i32, i32* %41, align 4, !dbg !1564, !tbaa !1566
  %301 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1564
  store i32 %300, i32* %301, align 4, !dbg !1564, !tbaa !249
  %302 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1568
  store i8 0, i8* %302, align 4, !dbg !1568, !tbaa !773
  %303 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 3, !dbg !1570
  store i32 0, i32* %303, align 4, !dbg !1570, !tbaa !249
  %304 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 2, !dbg !1570
  store i32 0, i32* %304, align 4, !dbg !1570, !tbaa !249
  %305 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 1, !dbg !1570
  store i32 0, i32* %305, align 4, !dbg !1570, !tbaa !249
  %306 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1570
  store i8 0, i8* %306, align 4, !dbg !1570, !tbaa !249
  %307 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #8, !dbg !1572
  %308 = load i32, i32* %42, align 4, !dbg !1573, !tbaa !1574
  %309 = call i32 @lwip_htonl(i32 %308) #8, !dbg !1573
  store i8 3, i8* %45, align 2, !dbg !1585, !tbaa !419
  %310 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1586
  %311 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1589
  store i32 %309, i32* %311, align 8, !dbg !1590, !tbaa !955
  %312 = icmp ugt i32 %309, 604800, !dbg !1591
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1593
  br i1 %312, label %313, label %314, !dbg !1593

; <label>:313:                                    ; preds = %299
  store i32 604800, i32* %311, align 8, !dbg !1594, !tbaa !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1596
  br label %314, !dbg !1596

; <label>:314:                                    ; preds = %313, %299
  call fastcc void @dns_call_found(i8 zeroext %201, %struct.ip_addr* nonnull %310) #8, !dbg !1597
  %315 = load i32, i32* %311, align 8, !dbg !1598, !tbaa !955
  %316 = icmp eq i32 %315, 0, !dbg !1600
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1601
  br i1 %316, label %317, label %321, !dbg !1601

; <label>:317:                                    ; preds = %314
  %318 = load i8, i8* %45, align 2, !dbg !1602, !tbaa !419
  %319 = icmp eq i8 %318, 3, !dbg !1605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1606
  br i1 %319, label %320, label %321, !dbg !1606

; <label>:320:                                    ; preds = %317
  store i8 0, i8* %45, align 2, !dbg !1607, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1609
  br label %321, !dbg !1609

; <label>:321:                                    ; preds = %314, %317, %320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1610
  br label %322, !dbg !1611

; <label>:322:                                    ; preds = %295, %321
  %323 = phi i32 [ 1, %321 ], [ 2, %295 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1612
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %39) #7, !dbg !1613
  br label %394

; <label>:324:                                    ; preds = %290, %293, %287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br label %362, !dbg !1614

; <label>:325:                                    ; preds = %284
  %326 = icmp eq i16 %285, 7168, !dbg !1615
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %326, label %327, label %362, !dbg !1614

; <label>:327:                                    ; preds = %325
  %328 = load i16, i16* %38, align 4, !dbg !1616, !tbaa !1553
  %329 = icmp eq i16 %328, 4096, !dbg !1617
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1618
  br i1 %329, label %330, label %362, !dbg !1618

; <label>:330:                                    ; preds = %327
  %331 = load i8, i8* %176, align 4, !dbg !1619, !tbaa !431
  %332 = icmp eq i8 %331, 3, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1619
  br i1 %332, label %335, label %333, !dbg !1619

; <label>:333:                                    ; preds = %330
  %334 = icmp eq i8 %331, 1, !dbg !1619
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1620
  br i1 %334, label %335, label %362, !dbg !1620

; <label>:335:                                    ; preds = %333, %330
  %336 = trunc i32 %279 to i16, !dbg !1558
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %40) #7, !dbg !1621
  %337 = call zeroext i16 @pbuf_copy_partial(%struct.pbuf* nonnull %2, i8* nonnull %40, i16 zeroext 16, i16 zeroext %336) #8, !dbg !1622
  %338 = icmp eq i16 %337, 16, !dbg !1624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %338, label %339, label %360, !dbg !1625

; <label>:339:                                    ; preds = %335
  %340 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 0, i64 0, !dbg !1626
  %341 = load <4 x i32>, <4 x i32>* %10, align 16, !dbg !1626, !tbaa !252
  %342 = bitcast i32* %340 to <4 x i32>*, !dbg !1626
  store <4 x i32> %341, <4 x i32>* %342, align 4, !dbg !1626, !tbaa !249
  %343 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 0, i32 0, i32 1, !dbg !1626
  store i8 0, i8* %343, align 4, !dbg !1626, !tbaa !249
  %344 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, i32 1, !dbg !1629
  store i8 6, i8* %344, align 4, !dbg !1629, !tbaa !773
  %345 = call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %2) #8, !dbg !1631
  %346 = load i32, i32* %42, align 4, !dbg !1632, !tbaa !1574
  %347 = call i32 @lwip_htonl(i32 %346) #8, !dbg !1632
  store i8 3, i8* %45, align 2, !dbg !1636, !tbaa !419
  %348 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 1, !dbg !1637
  %349 = getelementptr inbounds [32 x %struct.dns_table_entry], [32 x %struct.dns_table_entry]* @dns_table, i64 0, i64 %44, i32 0, !dbg !1638
  store i32 %347, i32* %349, align 8, !dbg !1639, !tbaa !955
  %350 = icmp ugt i32 %347, 604800, !dbg !1640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1641
  br i1 %350, label %351, label %352, !dbg !1641

; <label>:351:                                    ; preds = %339
  store i32 604800, i32* %349, align 8, !dbg !1642, !tbaa !955
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1643
  br label %352, !dbg !1643

; <label>:352:                                    ; preds = %351, %339
  call fastcc void @dns_call_found(i8 zeroext %201, %struct.ip_addr* nonnull %348) #8, !dbg !1644
  %353 = load i32, i32* %349, align 8, !dbg !1645, !tbaa !955
  %354 = icmp eq i32 %353, 0, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1647
  br i1 %354, label %355, label %359, !dbg !1647

; <label>:355:                                    ; preds = %352
  %356 = load i8, i8* %45, align 2, !dbg !1648, !tbaa !419
  %357 = icmp eq i8 %356, 3, !dbg !1649
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1650
  br i1 %357, label %358, label %359, !dbg !1650

; <label>:358:                                    ; preds = %355
  store i8 0, i8* %45, align 2, !dbg !1651, !tbaa !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br label %359, !dbg !1652

; <label>:359:                                    ; preds = %352, %355, %358
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1653
  br label %360, !dbg !1654

; <label>:360:                                    ; preds = %335, %359
  %361 = phi i32 [ 1, %359 ], [ 2, %335 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1655
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %40) #7, !dbg !1656
  br label %394

; <label>:362:                                    ; preds = %324, %325, %327, %333, %281
  %363 = add i16 %268, 11, !dbg !1657
  %364 = zext i16 %363 to i32, !dbg !1657
  %365 = load i16, i16* %38, align 4, !dbg !1659, !tbaa !1553
  %366 = call zeroext i16 @lwip_htons(i16 zeroext %365) #8, !dbg !1660
  %367 = zext i16 %366 to i32, !dbg !1660
  %368 = add nuw nsw i32 %367, %364, !dbg !1661
  %369 = icmp ugt i32 %368, 65535, !dbg !1662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1663
  br i1 %369, label %392, label %370, !dbg !1663

; <label>:370:                                    ; preds = %362
  %371 = load i16, i16* %38, align 4, !dbg !1664, !tbaa !1553
  %372 = call zeroext i16 @lwip_htons(i16 zeroext %371) #8, !dbg !1665
  %373 = zext i16 %372 to i32, !dbg !1665
  %374 = add nuw nsw i32 %373, %364, !dbg !1666
  %375 = add i16 %236, -1, !dbg !1667
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  %376 = icmp eq i16 %375, 0, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  br i1 %376, label %377, label %234, !dbg !1450, !llvm.loop !1668

; <label>:377:                                    ; preds = %370, %234
  %378 = load i8, i8* %176, align 4, !dbg !1670, !tbaa !431
  br label %379, !dbg !1670

; <label>:379:                                    ; preds = %198, %377
  %380 = phi i8 [ %378, %377 ], [ %177, %198 ], !dbg !1670
  %381 = trunc i64 %44 to i8, !dbg !1672
  %382 = icmp eq i8 %380, 2, !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1674
  br i1 %382, label %385, label %383, !dbg !1674

; <label>:383:                                    ; preds = %379
  %384 = icmp eq i8 %380, 3, !dbg !1675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1676
  br i1 %384, label %385, label %388, !dbg !1676

; <label>:385:                                    ; preds = %383, %379
  %386 = phi i8 [ 1, %379 ], [ 0, %383 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1677
  store i8 %386, i8* %176, align 4, !dbg !1679, !tbaa !431
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %387 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1682
  store i8 1, i8* %45, align 2, !dbg !1683, !tbaa !419
  call fastcc void @dns_check_entry(i8 zeroext %381) #9, !dbg !1684
  br label %393, !dbg !1685

; <label>:388:                                    ; preds = %230, %383
  %389 = phi i8 [ %203, %230 ], [ %381, %383 ]
  %390 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1686
  call fastcc void @dns_call_found(i8 zeroext %389, %struct.ip_addr* null) #9, !dbg !1687
  store i8 0, i8* %45, align 2, !dbg !1688, !tbaa !419
  br label %393, !dbg !1689

; <label>:391:                                    ; preds = %43, %48
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1690
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %396

; <label>:392:                                    ; preds = %191, %172, %188, %182, %169, %165, %75, %76, %81, %86, %91, %96, %61, %59, %52, %362, %278, %275, %271, %270, %164, %231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1691
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %399

; <label>:393:                                    ; preds = %388, %385
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  br label %401

; <label>:394:                                    ; preds = %360, %322
  %395 = phi i32 [ %361, %360 ], [ %323, %322 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  switch i32 %395, label %402 [
    i32 0, label %396
    i32 2, label %399
  ]

; <label>:396:                                    ; preds = %391, %394
  %397 = add nuw nsw i64 %44, 1, !dbg !1694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1695
  %398 = icmp ult i64 %397, 32, !dbg !1696
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1324
  br i1 %398, label %43, label %399, !dbg !1324, !llvm.loop !1697

; <label>:399:                                    ; preds = %396, %394, %392, %17, %5
  %400 = call zeroext i8 @pbuf_free(%struct.pbuf* %2) #8, !dbg !1699
  br label %401, !dbg !1700

; <label>:401:                                    ; preds = %399, %393
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %402, !dbg !1701

; <label>:402:                                    ; preds = %394, %401
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %13) #7, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %12) #7, !dbg !1701
  call void @llvm.lifetime.end.p0i8(i64 12, i8* nonnull %11) #7, !dbg !1701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1701
  ret void, !dbg !1701
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
!244 = !DILocation(line: 364, column: 9, scope: !241)
!245 = !DILocation(line: 0, scope: !246)
!246 = distinct !DILexicalBlock(scope: !240, file: !3, line: 364, column: 28)
!247 = !DILocation(line: 365, column: 30, scope: !246)
!248 = !{i64 0, i64 16, !249, i64 16, i64 1, !249, i64 0, i64 4, !252, i64 20, i64 1, !249}
!249 = !{!250, !250, i64 0}
!250 = !{!"omnipotent char", !251, i64 0}
!251 = !{!"Simple C/C++ TBAA"}
!252 = !{!253, !253, i64 0}
!253 = !{!"int", !250, i64 0}
!254 = !DILocation(line: 366, column: 5, scope: !246)
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
!265 = !DILocation(line: 383, column: 7, scope: !257)
!266 = !DILocation(line: 384, column: 13, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !3, line: 383, column: 33)
!268 = !DILocation(line: 0, scope: !267)
!269 = !DILocation(line: 388, column: 1, scope: !257)
!270 = distinct !DISubprogram(name: "dns_tmr", scope: !3, file: !3, line: 395, type: !224, isLocal: false, isDefinition: true, scopeLine: 396, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !226)
!271 = !DILocalVariable(name: "i", scope: !272, file: !3, line: 1126, type: !74)
!272 = distinct !DISubprogram(name: "dns_check_entries", scope: !3, file: !3, line: 1124, type: !224, isLocal: true, isDefinition: true, scopeLine: 1125, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !273)
!273 = !{!271}
!274 = !DILocation(line: 1126, column: 8, scope: !272, inlinedAt: !275)
!275 = distinct !DILocation(line: 398, column: 3, scope: !270)
!276 = !DILocation(line: 1128, column: 8, scope: !277, inlinedAt: !275)
!277 = distinct !DILexicalBlock(scope: !272, file: !3, line: 1128, column: 3)
!278 = !DILocation(line: 1128, column: 3, scope: !277, inlinedAt: !275)
!279 = !DILocation(line: 1129, column: 5, scope: !280, inlinedAt: !275)
!280 = distinct !DILexicalBlock(scope: !281, file: !3, line: 1128, column: 40)
!281 = distinct !DILexicalBlock(scope: !277, file: !3, line: 1128, column: 3)
!282 = !DILocation(line: 1128, column: 35, scope: !281, inlinedAt: !275)
!283 = !DILocation(line: 1128, column: 3, scope: !281, inlinedAt: !275)
!284 = !DILocation(line: 1128, column: 17, scope: !281, inlinedAt: !275)
!285 = distinct !{!285, !286, !287}
!286 = !DILocation(line: 1128, column: 3, scope: !277)
!287 = !DILocation(line: 1130, column: 3, scope: !277)
!288 = !DILocation(line: 1131, column: 1, scope: !272, inlinedAt: !275)
!289 = !DILocation(line: 399, column: 1, scope: !270)
!290 = distinct !DISubprogram(name: "dns_gethostbyname", scope: !3, file: !3, line: 1526, type: !291, isLocal: false, isDefinition: true, scopeLine: 1528, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !299)
!291 = !DISubroutineType(types: !292)
!292 = !{!293, !138, !298, !207, !61}
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !6, line: 96, baseType: !294)
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !63, line: 126, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !65, line: 20, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !67, line: 41, baseType: !297)
!297 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!299 = !{!300, !301, !302, !303}
!300 = !DILocalVariable(name: "hostname", arg: 1, scope: !290, file: !3, line: 1526, type: !138)
!301 = !DILocalVariable(name: "addr", arg: 2, scope: !290, file: !3, line: 1526, type: !298)
!302 = !DILocalVariable(name: "found", arg: 3, scope: !290, file: !3, line: 1526, type: !207)
!303 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !290, file: !3, line: 1527, type: !61)
!304 = !DILocation(line: 1526, column: 31, scope: !290)
!305 = !DILocation(line: 1526, column: 52, scope: !290)
!306 = !DILocation(line: 1526, column: 77, scope: !290)
!307 = !DILocation(line: 1527, column: 25, scope: !290)
!308 = !DILocation(line: 1529, column: 10, scope: !290)
!309 = !DILocation(line: 1529, column: 3, scope: !290)
!310 = distinct !DISubprogram(name: "dns_gethostbyname_addrtype", scope: !3, file: !3, line: 1547, type: !311, isLocal: false, isDefinition: true, scopeLine: 1549, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !313)
!311 = !DISubroutineType(types: !312)
!312 = !{!293, !138, !298, !207, !61, !74}
!313 = !{!314, !315, !316, !317, !318, !319, !324}
!314 = !DILocalVariable(name: "hostname", arg: 1, scope: !310, file: !3, line: 1547, type: !138)
!315 = !DILocalVariable(name: "addr", arg: 2, scope: !310, file: !3, line: 1547, type: !298)
!316 = !DILocalVariable(name: "found", arg: 3, scope: !310, file: !3, line: 1547, type: !207)
!317 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !310, file: !3, line: 1548, type: !61)
!318 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !310, file: !3, line: 1548, type: !74)
!319 = !DILocalVariable(name: "hostnamelen", scope: !310, file: !3, line: 1550, type: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !321, line: 40, baseType: !322)
!321 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !323, line: 129, baseType: !72)
!323 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !DILocalVariable(name: "fallback", scope: !325, file: !3, line: 1596, type: !74)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 1594, column: 103)
!326 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1594, column: 7)
!327 = !DILocation(line: 1547, column: 40, scope: !310)
!328 = !DILocation(line: 1547, column: 61, scope: !310)
!329 = !DILocation(line: 1547, column: 86, scope: !310)
!330 = !DILocation(line: 1548, column: 34, scope: !310)
!331 = !DILocation(line: 1548, column: 53, scope: !310)
!332 = !DILocation(line: 1556, column: 13, scope: !333)
!333 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1556, column: 7)
!334 = !DILocation(line: 1557, column: 9, scope: !333)
!335 = !DILocation(line: 1556, column: 22, scope: !333)
!336 = !DILocation(line: 1557, column: 24, scope: !333)
!337 = !DILocation(line: 1556, column: 7, scope: !310)
!338 = !DILocation(line: 1565, column: 17, scope: !310)
!339 = !DILocation(line: 1550, column: 10, scope: !310)
!340 = !DILocation(line: 1566, column: 19, scope: !341)
!341 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1566, column: 7)
!342 = !DILocation(line: 1566, column: 7, scope: !310)
!343 = !DILocation(line: 1580, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1580, column: 7)
!345 = !DILocation(line: 1580, column: 7, scope: !310)
!346 = !DILocation(line: 1582, column: 10, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 1582, column: 9)
!348 = distinct !DILexicalBlock(scope: !344, file: !3, line: 1580, column: 36)
!349 = !{!350, !250, i64 20}
!350 = !{!"ip_addr", !250, i64 0, !250, i64 20}
!351 = !DILocation(line: 1582, column: 25, scope: !347)
!352 = !DILocation(line: 1582, column: 42, scope: !347)
!353 = !DILocation(line: 1582, column: 70, scope: !347)
!354 = !DILocation(line: 1583, column: 10, scope: !347)
!355 = !DILocation(line: 1583, column: 25, scope: !347)
!356 = !DILocation(line: 1583, column: 42, scope: !347)
!357 = !DILocation(line: 1582, column: 9, scope: !348)
!358 = !DILocation(line: 1590, column: 7, scope: !359)
!359 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1590, column: 7)
!360 = !DILocation(line: 1590, column: 70, scope: !359)
!361 = !DILocation(line: 1590, column: 7, scope: !310)
!362 = !DILocation(line: 1594, column: 21, scope: !326)
!363 = !DILocation(line: 1594, column: 53, scope: !326)
!364 = !DILocation(line: 1594, column: 70, scope: !326)
!365 = !DILocation(line: 1594, column: 7, scope: !310)
!366 = !DILocation(line: 1597, column: 9, scope: !325)
!367 = !DILocation(line: 1599, column: 5, scope: !368)
!368 = distinct !DILexicalBlock(scope: !369, file: !3, line: 1597, column: 54)
!369 = distinct !DILexicalBlock(scope: !325, file: !3, line: 1597, column: 9)
!370 = !DILocation(line: 1596, column: 10, scope: !325)
!371 = !DILocation(line: 1602, column: 9, scope: !372)
!372 = distinct !DILexicalBlock(scope: !325, file: !3, line: 1602, column: 9)
!373 = !DILocation(line: 1602, column: 68, scope: !372)
!374 = !DILocation(line: 1602, column: 9, scope: !325)
!375 = !DILocation(line: 0, scope: !326)
!376 = !DILocation(line: 1621, column: 9, scope: !377)
!377 = distinct !DILexicalBlock(scope: !378, file: !3, line: 1621, column: 9)
!378 = distinct !DILexicalBlock(scope: !310, file: !3, line: 1619, column: 3)
!379 = !DILocation(line: 1621, column: 9, scope: !378)
!380 = !DILocalVariable(name: "name", arg: 1, scope: !381, file: !3, line: 1375, type: !138)
!381 = distinct !DISubprogram(name: "dns_enqueue", scope: !3, file: !3, line: 1375, type: !382, isLocal: true, isDefinition: true, scopeLine: 1377, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !384)
!382 = !DISubroutineType(types: !383)
!383 = !{!293, !138, !320, !207, !61, !74}
!384 = !{!380, !385, !386, !387, !388, !389, !390, !391, !392, !394, !395, !397, !398}
!385 = !DILocalVariable(name: "hostnamelen", arg: 2, scope: !381, file: !3, line: 1375, type: !320)
!386 = !DILocalVariable(name: "found", arg: 3, scope: !381, file: !3, line: 1375, type: !207)
!387 = !DILocalVariable(name: "callback_arg", arg: 4, scope: !381, file: !3, line: 1376, type: !61)
!388 = !DILocalVariable(name: "dns_addrtype", arg: 5, scope: !381, file: !3, line: 1376, type: !74)
!389 = !DILocalVariable(name: "i", scope: !381, file: !3, line: 1378, type: !74)
!390 = !DILocalVariable(name: "lseq", scope: !381, file: !3, line: 1379, type: !74)
!391 = !DILocalVariable(name: "lseqi", scope: !381, file: !3, line: 1379, type: !74)
!392 = !DILocalVariable(name: "entry", scope: !381, file: !3, line: 1380, type: !393)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!394 = !DILocalVariable(name: "namelen", scope: !381, file: !3, line: 1381, type: !320)
!395 = !DILocalVariable(name: "req", scope: !381, file: !3, line: 1382, type: !396)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!397 = !DILocalVariable(name: "r", scope: !381, file: !3, line: 1385, type: !74)
!398 = !DILocalVariable(name: "age", scope: !399, file: !3, line: 1425, type: !74)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 1424, column: 41)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 1424, column: 9)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 1417, column: 40)
!402 = distinct !DILexicalBlock(scope: !403, file: !3, line: 1417, column: 3)
!403 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1417, column: 3)
!404 = !DILocation(line: 1375, column: 25, scope: !381, inlinedAt: !405)
!405 = distinct !DILocation(line: 1627, column: 10, scope: !310)
!406 = !DILocation(line: 1375, column: 38, scope: !381, inlinedAt: !405)
!407 = !DILocation(line: 1375, column: 70, scope: !381, inlinedAt: !405)
!408 = !DILocation(line: 1376, column: 19, scope: !381, inlinedAt: !405)
!409 = !DILocation(line: 1376, column: 32, scope: !381, inlinedAt: !405)
!410 = !DILocation(line: 1380, column: 27, scope: !381, inlinedAt: !405)
!411 = !DILocation(line: 1378, column: 8, scope: !381, inlinedAt: !405)
!412 = !DILocation(line: 1387, column: 8, scope: !413, inlinedAt: !405)
!413 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1387, column: 3)
!414 = !DILocation(line: 1387, column: 3, scope: !413, inlinedAt: !405)
!415 = !DILocation(line: 1388, column: 23, scope: !416, inlinedAt: !405)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 1388, column: 9)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 1387, column: 40)
!418 = distinct !DILexicalBlock(scope: !413, file: !3, line: 1387, column: 3)
!419 = !{!420, !250, i64 30}
!420 = !{!"dns_table_entry", !253, i64 0, !350, i64 4, !421, i64 28, !250, i64 30, !250, i64 31, !250, i64 32, !250, i64 33, !250, i64 34, !250, i64 35, !250, i64 36, !250, i64 292}
!421 = !{!"short", !250, i64 0}
!422 = !DILocation(line: 1388, column: 29, scope: !416, inlinedAt: !405)
!423 = !DILocation(line: 1388, column: 50, scope: !416, inlinedAt: !405)
!424 = !DILocation(line: 1389, column: 30, scope: !416, inlinedAt: !405)
!425 = !DILocation(line: 1389, column: 10, scope: !416, inlinedAt: !405)
!426 = !DILocation(line: 1389, column: 76, scope: !416, inlinedAt: !405)
!427 = !DILocation(line: 1388, column: 9, scope: !417, inlinedAt: !405)
!428 = !DILocation(line: 1391, column: 24, scope: !429, inlinedAt: !405)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 1391, column: 11)
!430 = distinct !DILexicalBlock(scope: !416, file: !3, line: 1389, column: 83)
!431 = !{!420, !250, i64 292}
!432 = !DILocation(line: 1391, column: 36, scope: !429, inlinedAt: !405)
!433 = !DILocation(line: 1391, column: 11, scope: !430, inlinedAt: !405)
!434 = !DILocation(line: 1385, column: 8, scope: !381, inlinedAt: !405)
!435 = !DILocation(line: 1399, column: 12, scope: !436, inlinedAt: !405)
!436 = distinct !DILexicalBlock(scope: !430, file: !3, line: 1399, column: 7)
!437 = !DILocation(line: 1399, column: 7, scope: !436, inlinedAt: !405)
!438 = !DILocation(line: 1400, column: 29, scope: !439, inlinedAt: !405)
!439 = distinct !DILexicalBlock(scope: !440, file: !3, line: 1400, column: 13)
!440 = distinct !DILexicalBlock(scope: !441, file: !3, line: 1399, column: 46)
!441 = distinct !DILexicalBlock(scope: !436, file: !3, line: 1399, column: 7)
!442 = !{!443, !444, i64 0}
!443 = !{!"dns_req_entry", !444, i64 0, !444, i64 8, !250, i64 16, !250, i64 17}
!444 = !{!"any pointer", !250, i64 0}
!445 = !DILocation(line: 1400, column: 35, scope: !439, inlinedAt: !405)
!446 = !DILocation(line: 1400, column: 13, scope: !440, inlinedAt: !405)
!447 = !DILocation(line: 1401, column: 33, scope: !448, inlinedAt: !405)
!448 = distinct !DILexicalBlock(scope: !439, file: !3, line: 1400, column: 41)
!449 = !DILocation(line: 1402, column: 27, scope: !448, inlinedAt: !405)
!450 = !DILocation(line: 1402, column: 31, scope: !448, inlinedAt: !405)
!451 = !{!443, !444, i64 8}
!452 = !DILocation(line: 1403, column: 27, scope: !448, inlinedAt: !405)
!453 = !DILocation(line: 1403, column: 41, scope: !448, inlinedAt: !405)
!454 = !{!443, !250, i64 16}
!455 = !DILocation(line: 1404, column: 11, scope: !456, inlinedAt: !405)
!456 = distinct !DILexicalBlock(scope: !448, file: !3, line: 1404, column: 11)
!457 = !{!443, !250, i64 17}
!458 = !DILocation(line: 1406, column: 11, scope: !448, inlinedAt: !405)
!459 = !DILocation(line: 1399, column: 42, scope: !441, inlinedAt: !405)
!460 = !DILocation(line: 1399, column: 7, scope: !441, inlinedAt: !405)
!461 = !DILocation(line: 1387, column: 36, scope: !418, inlinedAt: !405)
!462 = !DILocation(line: 1387, column: 3, scope: !418, inlinedAt: !405)
!463 = !DILocation(line: 1387, column: 17, scope: !418, inlinedAt: !405)
!464 = distinct !{!464, !465, !466}
!465 = !DILocation(line: 1387, column: 3, scope: !413)
!466 = !DILocation(line: 1410, column: 3, scope: !413)
!467 = !DILocation(line: 1379, column: 8, scope: !381, inlinedAt: !405)
!468 = !DILocation(line: 1379, column: 14, scope: !381, inlinedAt: !405)
!469 = !DILocation(line: 1417, column: 8, scope: !403, inlinedAt: !405)
!470 = !DILocation(line: 1417, column: 3, scope: !403, inlinedAt: !405)
!471 = !DILocation(line: 1420, column: 16, scope: !472, inlinedAt: !405)
!472 = distinct !DILexicalBlock(scope: !401, file: !3, line: 1420, column: 9)
!473 = !DILocation(line: 1420, column: 22, scope: !472, inlinedAt: !405)
!474 = !DILocation(line: 1420, column: 9, scope: !401, inlinedAt: !405)
!475 = !DILocation(line: 1434, column: 7, scope: !381, inlinedAt: !405)
!476 = !DILocation(line: 1424, column: 22, scope: !400, inlinedAt: !405)
!477 = !DILocation(line: 1424, column: 9, scope: !401, inlinedAt: !405)
!478 = !DILocation(line: 1425, column: 44, scope: !399, inlinedAt: !405)
!479 = !{!420, !250, i64 34}
!480 = !DILocation(line: 1425, column: 35, scope: !399, inlinedAt: !405)
!481 = !DILocation(line: 1425, column: 12, scope: !399, inlinedAt: !405)
!482 = !DILocation(line: 1426, column: 15, scope: !483, inlinedAt: !405)
!483 = distinct !DILexicalBlock(scope: !399, file: !3, line: 1426, column: 11)
!484 = !DILocation(line: 1426, column: 11, scope: !399, inlinedAt: !405)
!485 = !DILocation(line: 1429, column: 7, scope: !486, inlinedAt: !405)
!486 = distinct !DILexicalBlock(scope: !483, file: !3, line: 1426, column: 23)
!487 = !DILocation(line: 0, scope: !381, inlinedAt: !405)
!488 = !DILocation(line: 1430, column: 5, scope: !399, inlinedAt: !405)
!489 = !DILocation(line: 1417, column: 35, scope: !402, inlinedAt: !405)
!490 = !DILocation(line: 1417, column: 3, scope: !402, inlinedAt: !405)
!491 = !DILocation(line: 1417, column: 17, scope: !402, inlinedAt: !405)
!492 = distinct !{!492, !493, !494}
!493 = !DILocation(line: 1417, column: 3, scope: !403)
!494 = !DILocation(line: 1431, column: 3, scope: !403)
!495 = !DILocation(line: 1434, column: 9, scope: !496, inlinedAt: !405)
!496 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1434, column: 7)
!497 = !DILocation(line: 1435, column: 16, scope: !498, inlinedAt: !405)
!498 = distinct !DILexicalBlock(scope: !499, file: !3, line: 1435, column: 9)
!499 = distinct !DILexicalBlock(scope: !496, file: !3, line: 1434, column: 28)
!500 = !DILocation(line: 1435, column: 35, scope: !498, inlinedAt: !405)
!501 = !DILocation(line: 1435, column: 39, scope: !498, inlinedAt: !405)
!502 = !DILocation(line: 1435, column: 56, scope: !498, inlinedAt: !405)
!503 = !DILocation(line: 1435, column: 62, scope: !498, inlinedAt: !405)
!504 = !DILocation(line: 1435, column: 9, scope: !499, inlinedAt: !405)
!505 = !DILocation(line: 0, scope: !310)
!506 = !DILocation(line: 1449, column: 8, scope: !507, inlinedAt: !405)
!507 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1449, column: 3)
!508 = !DILocation(line: 0, scope: !403, inlinedAt: !405)
!509 = !DILocation(line: 1382, column: 25, scope: !381, inlinedAt: !405)
!510 = !DILocation(line: 1449, column: 3, scope: !507, inlinedAt: !405)
!511 = !DILocation(line: 1450, column: 25, scope: !512, inlinedAt: !405)
!512 = distinct !DILexicalBlock(scope: !513, file: !3, line: 1450, column: 9)
!513 = distinct !DILexicalBlock(scope: !514, file: !3, line: 1449, column: 42)
!514 = distinct !DILexicalBlock(scope: !507, file: !3, line: 1449, column: 3)
!515 = !DILocation(line: 1450, column: 31, scope: !512, inlinedAt: !405)
!516 = !DILocation(line: 1450, column: 9, scope: !513, inlinedAt: !405)
!517 = !DILocation(line: 1449, column: 38, scope: !514, inlinedAt: !405)
!518 = !DILocation(line: 1449, column: 3, scope: !514, inlinedAt: !405)
!519 = !DILocation(line: 1455, column: 7, scope: !381, inlinedAt: !405)
!520 = !DILocation(line: 1458, column: 5, scope: !521, inlinedAt: !405)
!521 = distinct !DILexicalBlock(scope: !522, file: !3, line: 1455, column: 20)
!522 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1455, column: 7)
!523 = !DILocation(line: 1452, column: 7, scope: !524, inlinedAt: !405)
!524 = distinct !DILexicalBlock(scope: !512, file: !3, line: 1450, column: 40)
!525 = !DILocation(line: 1460, column: 8, scope: !381, inlinedAt: !405)
!526 = !DILocation(line: 1460, column: 22, scope: !381, inlinedAt: !405)
!527 = !DILocation(line: 1470, column: 10, scope: !381, inlinedAt: !405)
!528 = !DILocation(line: 1470, column: 16, scope: !381, inlinedAt: !405)
!529 = !DILocation(line: 1471, column: 10, scope: !381, inlinedAt: !405)
!530 = !DILocation(line: 1471, column: 16, scope: !381, inlinedAt: !405)
!531 = !DILocation(line: 1472, column: 3, scope: !532, inlinedAt: !405)
!532 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1472, column: 3)
!533 = !DILocation(line: 1473, column: 3, scope: !534, inlinedAt: !405)
!534 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1473, column: 3)
!535 = !DILocation(line: 1474, column: 14, scope: !381, inlinedAt: !405)
!536 = !DILocation(line: 1475, column: 8, scope: !381, inlinedAt: !405)
!537 = !DILocation(line: 1475, column: 14, scope: !381, inlinedAt: !405)
!538 = !DILocation(line: 1476, column: 13, scope: !381, inlinedAt: !405)
!539 = !DILocation(line: 1381, column: 10, scope: !381, inlinedAt: !405)
!540 = !DILocation(line: 1477, column: 3, scope: !381, inlinedAt: !405)
!541 = !DILocation(line: 1478, column: 3, scope: !381, inlinedAt: !405)
!542 = !DILocation(line: 1478, column: 24, scope: !381, inlinedAt: !405)
!543 = !DILocalVariable(name: "i", scope: !544, file: !3, line: 902, type: !74)
!544 = distinct !DISubprogram(name: "dns_alloc_pcb", scope: !3, file: !3, line: 900, type: !545, isLocal: true, isDefinition: true, scopeLine: 901, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !547)
!545 = !DISubroutineType(types: !546)
!546 = !{!74}
!547 = !{!543, !548}
!548 = !DILocalVariable(name: "idx", scope: !544, file: !3, line: 903, type: !74)
!549 = !DILocation(line: 902, column: 8, scope: !544, inlinedAt: !550)
!550 = distinct !DILocation(line: 1481, column: 20, scope: !381, inlinedAt: !405)
!551 = !DILocation(line: 905, column: 8, scope: !552, inlinedAt: !550)
!552 = distinct !DILexicalBlock(scope: !544, file: !3, line: 905, column: 3)
!553 = !DILocation(line: 905, column: 3, scope: !552, inlinedAt: !550)
!554 = !DILocation(line: 906, column: 9, scope: !555, inlinedAt: !550)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 906, column: 9)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 905, column: 46)
!557 = distinct !DILexicalBlock(scope: !552, file: !3, line: 905, column: 3)
!558 = !{!444, !444, i64 0}
!559 = !DILocation(line: 906, column: 21, scope: !555, inlinedAt: !550)
!560 = !DILocation(line: 906, column: 9, scope: !556, inlinedAt: !550)
!561 = !DILocation(line: 905, column: 42, scope: !557, inlinedAt: !550)
!562 = !DILocation(line: 905, column: 3, scope: !557, inlinedAt: !550)
!563 = !DILocation(line: 910, column: 7, scope: !544, inlinedAt: !550)
!564 = !DILocation(line: 871, column: 9, scope: !565, inlinedAt: !573)
!565 = distinct !DISubprogram(name: "dns_alloc_random_port", scope: !3, file: !3, line: 866, type: !566, isLocal: true, isDefinition: true, scopeLine: 867, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !568)
!566 = !DISubroutineType(types: !567)
!567 = !{!166}
!568 = !{!569, !570, !571}
!569 = !DILocalVariable(name: "err", scope: !565, file: !3, line: 868, type: !293)
!570 = !DILocalVariable(name: "pcb", scope: !565, file: !3, line: 869, type: !166)
!571 = !DILocalVariable(name: "port", scope: !572, file: !3, line: 877, type: !68)
!572 = distinct !DILexicalBlock(scope: !565, file: !3, line: 876, column: 6)
!573 = distinct !DILocation(line: 911, column: 19, scope: !574, inlinedAt: !550)
!574 = distinct !DILexicalBlock(scope: !575, file: !3, line: 910, column: 33)
!575 = distinct !DILexicalBlock(scope: !544, file: !3, line: 910, column: 7)
!576 = !DILocation(line: 869, column: 19, scope: !565, inlinedAt: !573)
!577 = !DILocation(line: 872, column: 11, scope: !578, inlinedAt: !573)
!578 = distinct !DILexicalBlock(scope: !565, file: !3, line: 872, column: 7)
!579 = !DILocation(line: 872, column: 7, scope: !565, inlinedAt: !573)
!580 = !DILocation(line: 65, column: 2, scope: !581, inlinedAt: !598)
!581 = distinct !DISubprogram(name: "isolated_rand", scope: !582, file: !582, line: 63, type: !583, isLocal: true, isDefinition: true, scopeLine: 64, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !587)
!582 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/cc.h", directory: "/root/.unikraft/apps/redis/build")
!583 = !DISubroutineType(types: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !586, line: 88, baseType: !28)
!586 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!587 = !{!588, !589, !595}
!588 = !DILocalVariable(name: "randn", scope: !581, file: !582, line: 65, type: !585)
!589 = !DILocalVariable(name: "tid", scope: !590, file: !582, line: 66, type: !64)
!590 = distinct !DILexicalBlock(scope: !591, file: !582, line: 66, column: 2)
!591 = distinct !DILexicalBlock(scope: !592, file: !582, line: 66, column: 2)
!592 = distinct !DILexicalBlock(scope: !593, file: !582, line: 66, column: 2)
!593 = distinct !DILexicalBlock(scope: !594, file: !582, line: 66, column: 2)
!594 = distinct !DILexicalBlock(scope: !581, file: !582, line: 66, column: 2)
!595 = !DILocalVariable(name: "_ret", scope: !590, file: !582, line: 66, type: !596)
!596 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 60, baseType: !597)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !67, line: 105, baseType: !72)
!598 = distinct !DILocation(line: 877, column: 25, scope: !572, inlinedAt: !573)
!599 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !606)
!600 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !601, file: !601, line: 116, type: !602, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !604)
!601 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!602 = !DISubroutineType(types: !603)
!603 = !{!72}
!604 = !{!605}
!605 = !DILocalVariable(name: "sp", scope: !600, file: !601, line: 118, type: !72)
!606 = distinct !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !598)
!607 = !{i32 567325}
!608 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !606)
!609 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !606)
!610 = !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !598)
!611 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !612)
!612 = distinct !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !598)
!613 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !612)
!614 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !612)
!615 = !DILocation(line: 66, column: 2, scope: !594, inlinedAt: !598)
!616 = !DILocation(line: 65, column: 11, scope: !617, inlinedAt: !622)
!617 = distinct !DISubprogram(name: "uk_swrand_randr", scope: !618, file: !618, line: 60, type: !583, isLocal: true, isDefinition: true, scopeLine: 61, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !619)
!618 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukswrand/include/uk/swrand.h", directory: "/root/.unikraft/apps/redis/build")
!619 = !{!620, !621}
!620 = !DILocalVariable(name: "iflags", scope: !617, file: !618, line: 62, type: !72)
!621 = !DILocalVariable(name: "ret", scope: !617, file: !618, line: 63, type: !585)
!622 = distinct !DILocation(line: 66, column: 2, scope: !623, inlinedAt: !598)
!623 = distinct !DILexicalBlock(scope: !593, file: !582, line: 66, column: 2)
!624 = !DILocation(line: 62, column: 16, scope: !617, inlinedAt: !622)
!625 = !DILocation(line: 66, column: 8, scope: !617, inlinedAt: !622)
!626 = !DILocation(line: 63, column: 8, scope: !617, inlinedAt: !622)
!627 = !DILocation(line: 67, column: 2, scope: !617, inlinedAt: !622)
!628 = !DILocation(line: 69, column: 2, scope: !617, inlinedAt: !622)
!629 = !DILocation(line: 65, column: 8, scope: !581, inlinedAt: !598)
!630 = !DILocation(line: 66, column: 2, scope: !623, inlinedAt: !598)
!631 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !632)
!632 = distinct !DILocation(line: 49, column: 21, scope: !633, inlinedAt: !639)
!633 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !634, file: !634, line: 47, type: !635, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !637)
!634 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!635 = !DISubroutineType(types: !636)
!636 = !{!7}
!637 = !{!638}
!638 = !DILocalVariable(name: "sp", scope: !633, file: !634, line: 49, type: !72)
!639 = distinct !DILocation(line: 66, column: 2, scope: !590, inlinedAt: !598)
!640 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !632)
!641 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !632)
!642 = !DILocation(line: 49, column: 16, scope: !633, inlinedAt: !639)
!643 = !DILocation(line: 50, column: 19, scope: !633, inlinedAt: !639)
!644 = !DILocation(line: 50, column: 11, scope: !633, inlinedAt: !639)
!645 = !DILocation(line: 50, column: 9, scope: !633, inlinedAt: !639)
!646 = !DILocation(line: 50, column: 2, scope: !633, inlinedAt: !639)
!647 = !DILocation(line: 66, column: 2, scope: !590, inlinedAt: !598)
!648 = !{i32 -2146788957, i32 -2146788944, i32 -2146788919, i32 -2146788895, i32 -2146788870, i32 -2146788795, i32 -2146788770, i32 -2146788626, i32 -2146785533, i32 -2146785444, i32 -2146785323, i32 -2146785228, i32 -2146785127, i32 -2146785100, i32 -2146785017, i32 -2146784928, i32 -2146784807, i32 -2146784707, i32 -2146784601, i32 -2146784493, i32 -2146788343, i32 -2146788290, i32 -2146788259, i32 -2146788228, i32 -2146788207, i32 -2146788185, i32 -2146788136, i32 -2146788115, i32 -2146784410, i32 -2146784321, i32 -2146784200, i32 -2146784101, i32 -2146783995, i32 -2146783893, i32 -2146783860, i32 -2146783787, i32 -2146783719, i32 -2146787813, i32 -2146787754, i32 -2146787701, i32 -2146787670, i32 -2146787639, i32 -2146787618, i32 -2146787596, i32 -2146787547, i32 -2146787526, i32 -2146783668, i32 -2146783579, i32 -2146783458, i32 -2146783359, i32 -2146783253, i32 -2146783151, i32 -2146783118, i32 -2146783035, i32 -2146782946, i32 -2146782825, i32 -2146782725, i32 -2146782699, i32 -2146782596, i32 -2146782570, i32 -2146787268, i32 -2146787201, i32 -2146787176, i32 -2146787112, i32 -2146787030, i32 -2146787007, i32 -2146786982, i32 -2146786957}
!649 = !DILocation(line: 66, column: 2, scope: !650, inlinedAt: !598)
!650 = distinct !DILexicalBlock(scope: !651, file: !582, line: 66, column: 2)
!651 = distinct !DILexicalBlock(scope: !590, file: !582, line: 66, column: 2)
!652 = !{i32 -2146786010, i32 -2146785993}
!653 = !DILocation(line: 67, column: 9, scope: !581, inlinedAt: !598)
!654 = !DILocation(line: 68, column: 1, scope: !581, inlinedAt: !598)
!655 = !DILocation(line: 67, column: 2, scope: !581, inlinedAt: !598)
!656 = !DILocation(line: 878, column: 9, scope: !657, inlinedAt: !573)
!657 = distinct !DILexicalBlock(scope: !572, file: !3, line: 878, column: 9)
!658 = !DILocation(line: 878, column: 9, scope: !572, inlinedAt: !573)
!659 = !DILocation(line: 877, column: 18, scope: !572, inlinedAt: !573)
!660 = !DILocation(line: 877, column: 11, scope: !572, inlinedAt: !573)
!661 = !DILocation(line: 879, column: 13, scope: !662, inlinedAt: !573)
!662 = distinct !DILexicalBlock(scope: !657, file: !3, line: 878, column: 33)
!663 = !DILocation(line: 868, column: 9, scope: !565, inlinedAt: !573)
!664 = !DILocation(line: 880, column: 5, scope: !662, inlinedAt: !573)
!665 = !DILocation(line: 0, scope: !666, inlinedAt: !573)
!666 = distinct !DILexicalBlock(scope: !657, file: !3, line: 880, column: 12)
!667 = !DILocation(line: 884, column: 16, scope: !565, inlinedAt: !573)
!668 = !DILocation(line: 884, column: 3, scope: !572, inlinedAt: !573)
!669 = distinct !{!669, !670, !671}
!670 = !DILocation(line: 876, column: 3, scope: !565)
!671 = !DILocation(line: 884, column: 26, scope: !565)
!672 = !DILocation(line: 885, column: 11, scope: !673, inlinedAt: !573)
!673 = distinct !DILexicalBlock(scope: !565, file: !3, line: 885, column: 7)
!674 = !DILocation(line: 885, column: 7, scope: !565, inlinedAt: !573)
!675 = !DILocation(line: 886, column: 5, scope: !676, inlinedAt: !573)
!676 = distinct !DILexicalBlock(scope: !673, file: !3, line: 885, column: 22)
!677 = !DILocation(line: 887, column: 5, scope: !676, inlinedAt: !573)
!678 = !DILocation(line: 0, scope: !574, inlinedAt: !550)
!679 = !DILocation(line: 891, column: 1, scope: !565, inlinedAt: !573)
!680 = !DILocation(line: 911, column: 17, scope: !574, inlinedAt: !550)
!681 = !DILocation(line: 912, column: 9, scope: !574, inlinedAt: !550)
!682 = !DILocation(line: 920, column: 28, scope: !683, inlinedAt: !550)
!683 = distinct !DILexicalBlock(scope: !544, file: !3, line: 920, column: 3)
!684 = !DILocation(line: 903, column: 8, scope: !544, inlinedAt: !550)
!685 = !DILocation(line: 920, column: 8, scope: !683, inlinedAt: !550)
!686 = !DILocation(line: 920, column: 3, scope: !683, inlinedAt: !550)
!687 = !DILocation(line: 0, scope: !688, inlinedAt: !550)
!688 = distinct !DILexicalBlock(scope: !683, file: !3, line: 920, column: 3)
!689 = !DILocation(line: 921, column: 13, scope: !690, inlinedAt: !550)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 921, column: 9)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 920, column: 89)
!692 = !DILocation(line: 921, column: 9, scope: !691, inlinedAt: !550)
!693 = !DILocation(line: 923, column: 5, scope: !694, inlinedAt: !550)
!694 = distinct !DILexicalBlock(scope: !690, file: !3, line: 921, column: 38)
!695 = !DILocation(line: 0, scope: !683, inlinedAt: !550)
!696 = !DILocation(line: 924, column: 9, scope: !697, inlinedAt: !550)
!697 = distinct !DILexicalBlock(scope: !691, file: !3, line: 924, column: 9)
!698 = !DILocation(line: 924, column: 23, scope: !697, inlinedAt: !550)
!699 = !DILocation(line: 924, column: 9, scope: !691, inlinedAt: !550)
!700 = !DILocation(line: 925, column: 24, scope: !701, inlinedAt: !550)
!701 = distinct !DILexicalBlock(scope: !697, file: !3, line: 924, column: 32)
!702 = !DILocation(line: 926, column: 7, scope: !701, inlinedAt: !550)
!703 = !DILocation(line: 930, column: 1, scope: !544, inlinedAt: !550)
!704 = !DILocation(line: 1481, column: 10, scope: !381, inlinedAt: !405)
!705 = !DILocation(line: 1481, column: 18, scope: !381, inlinedAt: !405)
!706 = !{!420, !250, i64 35}
!707 = !DILocation(line: 1482, column: 7, scope: !381, inlinedAt: !405)
!708 = !DILocation(line: 920, column: 78, scope: !688, inlinedAt: !550)
!709 = !DILocation(line: 920, column: 3, scope: !688, inlinedAt: !550)
!710 = !DILocation(line: 920, column: 53, scope: !688, inlinedAt: !550)
!711 = distinct !{!711, !712, !713}
!712 = !DILocation(line: 920, column: 3, scope: !683)
!713 = !DILocation(line: 928, column: 3, scope: !683)
!714 = !DILocation(line: 929, column: 3, scope: !544, inlinedAt: !550)
!715 = !DILocation(line: 889, column: 3, scope: !565, inlinedAt: !573)
!716 = !DILocation(line: 890, column: 3, scope: !565, inlinedAt: !573)
!717 = !DILocation(line: 914, column: 24, scope: !718, inlinedAt: !550)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 912, column: 30)
!719 = distinct !DILexicalBlock(scope: !574, file: !3, line: 912, column: 9)
!720 = !DILocation(line: 915, column: 7, scope: !718, inlinedAt: !550)
!721 = !DILocation(line: 1482, column: 22, scope: !722, inlinedAt: !405)
!722 = distinct !DILexicalBlock(scope: !381, file: !3, line: 1482, column: 7)
!723 = !DILocation(line: 1485, column: 18, scope: !724, inlinedAt: !405)
!724 = distinct !DILexicalBlock(scope: !722, file: !3, line: 1482, column: 47)
!725 = !DILocation(line: 1486, column: 16, scope: !724, inlinedAt: !405)
!726 = !DILocation(line: 1487, column: 5, scope: !724, inlinedAt: !405)
!727 = !DILocation(line: 1496, column: 12, scope: !381, inlinedAt: !405)
!728 = !DILocation(line: 1499, column: 3, scope: !381, inlinedAt: !405)
!729 = !DILocation(line: 1502, column: 3, scope: !381, inlinedAt: !405)
!730 = !DILocation(line: 1503, column: 1, scope: !381, inlinedAt: !405)
!731 = !DILocation(line: 1627, column: 3, scope: !310)
!732 = !DILocation(line: 0, scope: !733)
!733 = distinct !DILexicalBlock(scope: !333, file: !3, line: 1557, column: 38)
!734 = !DILocation(line: 1629, column: 1, scope: !310)
!735 = !DILocation(line: 905, column: 17, scope: !557, inlinedAt: !550)
!736 = distinct !{!736, !737, !738}
!737 = !DILocation(line: 905, column: 3, scope: !552)
!738 = !DILocation(line: 909, column: 3, scope: !552)
!739 = !DILocation(line: 1449, column: 17, scope: !514, inlinedAt: !405)
!740 = distinct !{!740, !741, !742}
!741 = !DILocation(line: 1449, column: 3, scope: !507)
!742 = !DILocation(line: 1454, column: 3, scope: !507)
!743 = !DILocation(line: 1399, column: 21, scope: !441, inlinedAt: !405)
!744 = distinct !{!744, !745, !746}
!745 = !DILocation(line: 1399, column: 7, scope: !436)
!746 = !DILocation(line: 1408, column: 7, scope: !436)
!747 = distinct !DISubprogram(name: "dns_lookup", scope: !3, file: !3, line: 602, type: !748, isLocal: true, isDefinition: true, scopeLine: 603, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !750)
!748 = !DISubroutineType(types: !749)
!749 = !{!293, !138, !298, !74}
!750 = !{!751, !752, !753, !754}
!751 = !DILocalVariable(name: "name", arg: 1, scope: !747, file: !3, line: 602, type: !138)
!752 = !DILocalVariable(name: "addr", arg: 2, scope: !747, file: !3, line: 602, type: !298)
!753 = !DILocalVariable(name: "dns_addrtype", arg: 3, scope: !747, file: !3, line: 602, type: !74)
!754 = !DILocalVariable(name: "i", scope: !747, file: !3, line: 604, type: !74)
!755 = !DILocation(line: 602, column: 24, scope: !747)
!756 = !DILocation(line: 602, column: 41, scope: !747)
!757 = !DILocation(line: 602, column: 46, scope: !747)
!758 = !DILocation(line: 604, column: 8, scope: !747)
!759 = !DILocation(line: 617, column: 8, scope: !760)
!760 = distinct !DILexicalBlock(scope: !747, file: !3, line: 617, column: 3)
!761 = !DILocation(line: 617, column: 3, scope: !760)
!762 = !DILocation(line: 618, column: 23, scope: !763)
!763 = distinct !DILexicalBlock(scope: !764, file: !3, line: 618, column: 9)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 617, column: 40)
!765 = distinct !DILexicalBlock(scope: !760, file: !3, line: 617, column: 3)
!766 = !DILocation(line: 618, column: 29, scope: !763)
!767 = !DILocation(line: 618, column: 48, scope: !763)
!768 = !DILocation(line: 619, column: 30, scope: !763)
!769 = !DILocation(line: 619, column: 10, scope: !763)
!770 = !DILocation(line: 619, column: 76, scope: !763)
!771 = !DILocation(line: 619, column: 82, scope: !763)
!772 = !DILocation(line: 620, column: 9, scope: !763)
!773 = !{!420, !250, i64 24}
!774 = !DILocation(line: 618, column: 9, scope: !764)
!775 = !DILocation(line: 624, column: 11, scope: !776)
!776 = distinct !DILexicalBlock(scope: !777, file: !3, line: 624, column: 11)
!777 = distinct !DILexicalBlock(scope: !763, file: !3, line: 620, column: 72)
!778 = !DILocation(line: 624, column: 11, scope: !777)
!779 = !DILocation(line: 625, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !3, line: 625, column: 9)
!781 = distinct !DILexicalBlock(scope: !782, file: !3, line: 625, column: 9)
!782 = distinct !DILexicalBlock(scope: !776, file: !3, line: 624, column: 17)
!783 = !DILocation(line: 625, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !3, line: 625, column: 9)
!785 = !DILocation(line: 625, column: 9, scope: !781)
!786 = !DILocation(line: 625, column: 9, scope: !787)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 625, column: 9)
!788 = distinct !DILexicalBlock(scope: !784, file: !3, line: 625, column: 9)
!789 = !DILocation(line: 625, column: 9, scope: !788)
!790 = !DILocation(line: 625, column: 9, scope: !791)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 625, column: 9)
!792 = distinct !DILexicalBlock(scope: !784, file: !3, line: 625, column: 9)
!793 = !DILocation(line: 627, column: 7, scope: !777)
!794 = !DILocation(line: 617, column: 35, scope: !765)
!795 = !DILocation(line: 617, column: 3, scope: !765)
!796 = !DILocation(line: 617, column: 17, scope: !765)
!797 = distinct !{!797, !761, !798}
!798 = !DILocation(line: 629, column: 3, scope: !760)
!799 = !DILocation(line: 0, scope: !747)
!800 = !DILocation(line: 0, scope: !777)
!801 = !DILocation(line: 632, column: 1, scope: !747)
!802 = distinct !DISubprogram(name: "dns_check_entry", scope: !3, file: !3, line: 1047, type: !803, isLocal: true, isDefinition: true, scopeLine: 1048, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !805)
!803 = !DISubroutineType(types: !804)
!804 = !{null, !74}
!805 = !{!806, !807, !808}
!806 = !DILocalVariable(name: "i", arg: 1, scope: !802, file: !3, line: 1047, type: !74)
!807 = !DILocalVariable(name: "err", scope: !802, file: !3, line: 1049, type: !293)
!808 = !DILocalVariable(name: "entry", scope: !802, file: !3, line: 1050, type: !393)
!809 = !DILocation(line: 1047, column: 22, scope: !802)
!810 = !DILocation(line: 1050, column: 36, scope: !802)
!811 = !DILocation(line: 1052, column: 3, scope: !812)
!812 = distinct !DILexicalBlock(scope: !813, file: !3, line: 1052, column: 3)
!813 = distinct !DILexicalBlock(scope: !802, file: !3, line: 1052, column: 3)
!814 = !DILocation(line: 1052, column: 3, scope: !813)
!815 = !DILocation(line: 1052, column: 3, scope: !816)
!816 = distinct !DILexicalBlock(scope: !817, file: !3, line: 1052, column: 3)
!817 = distinct !DILexicalBlock(scope: !812, file: !3, line: 1052, column: 3)
!818 = !DILocation(line: 1052, column: 3, scope: !819)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 1052, column: 3)
!820 = distinct !DILexicalBlock(scope: !821, file: !3, line: 1052, column: 3)
!821 = distinct !DILexicalBlock(scope: !816, file: !3, line: 1052, column: 3)
!822 = !DILocation(line: 1054, column: 18, scope: !802)
!823 = !DILocation(line: 1054, column: 3, scope: !802)
!824 = !DILocation(line: 1003, column: 3, scope: !825, inlinedAt: !831)
!825 = distinct !DISubprogram(name: "dns_create_txid", scope: !3, file: !3, line: 1000, type: !826, isLocal: true, isDefinition: true, scopeLine: 1001, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !828)
!826 = !DISubroutineType(types: !827)
!827 = !{!68}
!828 = !{!829, !830}
!829 = !DILocalVariable(name: "txid", scope: !825, file: !3, line: 1002, type: !68)
!830 = !DILocalVariable(name: "i", scope: !825, file: !3, line: 1003, type: !74)
!831 = distinct !DILocation(line: 1057, column: 21, scope: !832)
!832 = distinct !DILexicalBlock(scope: !802, file: !3, line: 1054, column: 25)
!833 = !DILocation(line: 65, column: 2, scope: !581, inlinedAt: !834)
!834 = distinct !DILocation(line: 1006, column: 17, scope: !825, inlinedAt: !831)
!835 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !836)
!836 = distinct !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !834)
!837 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !836)
!838 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !836)
!839 = !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !834)
!840 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !841)
!841 = distinct !DILocation(line: 66, column: 2, scope: !593, inlinedAt: !834)
!842 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !841)
!843 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !841)
!844 = !DILocation(line: 66, column: 2, scope: !594, inlinedAt: !834)
!845 = !DILocation(line: 65, column: 11, scope: !617, inlinedAt: !846)
!846 = distinct !DILocation(line: 66, column: 2, scope: !623, inlinedAt: !834)
!847 = !DILocation(line: 62, column: 16, scope: !617, inlinedAt: !846)
!848 = !DILocation(line: 66, column: 8, scope: !617, inlinedAt: !846)
!849 = !DILocation(line: 63, column: 8, scope: !617, inlinedAt: !846)
!850 = !DILocation(line: 67, column: 2, scope: !617, inlinedAt: !846)
!851 = !DILocation(line: 69, column: 2, scope: !617, inlinedAt: !846)
!852 = !DILocation(line: 65, column: 8, scope: !581, inlinedAt: !834)
!853 = !DILocation(line: 66, column: 2, scope: !623, inlinedAt: !834)
!854 = !DILocation(line: 120, column: 2, scope: !600, inlinedAt: !855)
!855 = distinct !DILocation(line: 49, column: 21, scope: !633, inlinedAt: !856)
!856 = distinct !DILocation(line: 66, column: 2, scope: !590, inlinedAt: !834)
!857 = !DILocation(line: 118, column: 16, scope: !600, inlinedAt: !855)
!858 = !DILocation(line: 121, column: 2, scope: !600, inlinedAt: !855)
!859 = !DILocation(line: 49, column: 16, scope: !633, inlinedAt: !856)
!860 = !DILocation(line: 50, column: 19, scope: !633, inlinedAt: !856)
!861 = !DILocation(line: 50, column: 11, scope: !633, inlinedAt: !856)
!862 = !DILocation(line: 50, column: 9, scope: !633, inlinedAt: !856)
!863 = !DILocation(line: 50, column: 2, scope: !633, inlinedAt: !856)
!864 = !DILocation(line: 66, column: 2, scope: !590, inlinedAt: !834)
!865 = !DILocation(line: 66, column: 2, scope: !650, inlinedAt: !834)
!866 = !DILocation(line: 67, column: 9, scope: !581, inlinedAt: !834)
!867 = !DILocation(line: 68, column: 1, scope: !581, inlinedAt: !834)
!868 = !DILocation(line: 67, column: 2, scope: !581, inlinedAt: !834)
!869 = !DILocation(line: 1006, column: 10, scope: !825, inlinedAt: !831)
!870 = !DILocation(line: 1002, column: 9, scope: !825, inlinedAt: !831)
!871 = !DILocation(line: 1003, column: 8, scope: !825, inlinedAt: !831)
!872 = !DILocation(line: 1009, column: 8, scope: !873, inlinedAt: !831)
!873 = distinct !DILexicalBlock(scope: !825, file: !3, line: 1009, column: 3)
!874 = !DILocation(line: 1009, column: 3, scope: !873, inlinedAt: !831)
!875 = !DILocation(line: 1010, column: 23, scope: !876, inlinedAt: !831)
!876 = distinct !DILexicalBlock(scope: !877, file: !3, line: 1010, column: 9)
!877 = distinct !DILexicalBlock(scope: !878, file: !3, line: 1009, column: 40)
!878 = distinct !DILexicalBlock(scope: !873, file: !3, line: 1009, column: 3)
!879 = !DILocation(line: 1010, column: 29, scope: !876, inlinedAt: !831)
!880 = !DILocation(line: 1010, column: 50, scope: !876, inlinedAt: !831)
!881 = !DILocation(line: 1011, column: 23, scope: !876, inlinedAt: !831)
!882 = !{!420, !421, i64 28}
!883 = !DILocation(line: 1011, column: 28, scope: !876, inlinedAt: !831)
!884 = !DILocation(line: 1010, column: 9, scope: !877, inlinedAt: !831)
!885 = !DILocation(line: 1009, column: 36, scope: !878, inlinedAt: !831)
!886 = !DILocation(line: 1009, column: 3, scope: !878, inlinedAt: !831)
!887 = !DILocation(line: 1017, column: 3, scope: !825, inlinedAt: !831)
!888 = !DILocation(line: 1057, column: 14, scope: !832)
!889 = !DILocation(line: 1057, column: 19, scope: !832)
!890 = !DILocation(line: 1058, column: 20, scope: !832)
!891 = !DILocation(line: 1059, column: 14, scope: !832)
!892 = !DILocation(line: 1059, column: 25, scope: !832)
!893 = !{!420, !250, i64 31}
!894 = !DILocation(line: 1060, column: 14, scope: !832)
!895 = !DILocation(line: 1060, column: 18, scope: !832)
!896 = !{!420, !250, i64 32}
!897 = !DILocation(line: 1061, column: 14, scope: !832)
!898 = !DILocation(line: 1061, column: 22, scope: !832)
!899 = !{!420, !250, i64 33}
!900 = !DILocation(line: 1064, column: 13, scope: !832)
!901 = !DILocation(line: 1049, column: 9, scope: !802)
!902 = !DILocation(line: 1069, column: 7, scope: !832)
!903 = !DILocation(line: 1071, column: 20, scope: !904)
!904 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1071, column: 11)
!905 = !DILocation(line: 1071, column: 11, scope: !904)
!906 = !DILocation(line: 1071, column: 24, scope: !904)
!907 = !DILocation(line: 1071, column: 11, scope: !832)
!908 = !DILocation(line: 1072, column: 22, scope: !909)
!909 = distinct !DILexicalBlock(scope: !910, file: !3, line: 1072, column: 13)
!910 = distinct !DILexicalBlock(scope: !904, file: !3, line: 1071, column: 30)
!911 = !DILocation(line: 1072, column: 13, scope: !909)
!912 = !DILocation(line: 1072, column: 30, scope: !909)
!913 = !DILocation(line: 1072, column: 13, scope: !910)
!914 = !DILocalVariable(name: "ret", scope: !915, file: !3, line: 1026, type: !74)
!915 = distinct !DISubprogram(name: "dns_backupserver_available", scope: !3, file: !3, line: 1024, type: !916, isLocal: true, isDefinition: true, scopeLine: 1025, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !918)
!916 = !DISubroutineType(types: !917)
!917 = !{!74, !393}
!918 = !{!919, !914}
!919 = !DILocalVariable(name: "pentry", arg: 1, scope: !915, file: !3, line: 1024, type: !393)
!920 = !DILocation(line: 1026, column: 8, scope: !915, inlinedAt: !921)
!921 = distinct !DILocation(line: 1073, column: 15, scope: !922)
!922 = distinct !DILexicalBlock(scope: !923, file: !3, line: 1073, column: 15)
!923 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1072, column: 50)
!924 = !DILocation(line: 1028, column: 7, scope: !915, inlinedAt: !921)
!925 = !DILocation(line: 1029, column: 18, scope: !926, inlinedAt: !921)
!926 = distinct !DILexicalBlock(scope: !927, file: !3, line: 1029, column: 9)
!927 = distinct !DILexicalBlock(scope: !928, file: !3, line: 1028, column: 15)
!928 = distinct !DILexicalBlock(scope: !915, file: !3, line: 1028, column: 7)
!929 = !DILocation(line: 1029, column: 10, scope: !926, inlinedAt: !921)
!930 = !DILocation(line: 1029, column: 29, scope: !926, inlinedAt: !921)
!931 = !DILocation(line: 1029, column: 33, scope: !926, inlinedAt: !921)
!932 = !DILocation(line: 1029, column: 52, scope: !926, inlinedAt: !921)
!933 = !DILocation(line: 1029, column: 56, scope: !926, inlinedAt: !921)
!934 = !DILocation(line: 1029, column: 9, scope: !927, inlinedAt: !921)
!935 = !DILocation(line: 0, scope: !927, inlinedAt: !921)
!936 = !DILocation(line: 1031, column: 5, scope: !937, inlinedAt: !921)
!937 = distinct !DILexicalBlock(scope: !926, file: !3, line: 1029, column: 112)
!938 = !DILocation(line: 1034, column: 3, scope: !915, inlinedAt: !921)
!939 = !DILocation(line: 1073, column: 15, scope: !923)
!940 = !DILocation(line: 1079, column: 30, scope: !941)
!941 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1077, column: 16)
!942 = !DILocation(line: 1080, column: 24, scope: !941)
!943 = !DILocation(line: 1081, column: 28, scope: !941)
!944 = !DILocation(line: 1090, column: 9, scope: !923)
!945 = !DILocation(line: 1085, column: 13, scope: !946)
!946 = distinct !DILexicalBlock(scope: !922, file: !3, line: 1082, column: 18)
!947 = !DILocation(line: 1087, column: 26, scope: !946)
!948 = !DILocation(line: 1088, column: 13, scope: !946)
!949 = !DILocation(line: 1092, column: 22, scope: !950)
!950 = distinct !DILexicalBlock(scope: !909, file: !3, line: 1090, column: 16)
!951 = !DILocation(line: 1096, column: 15, scope: !910)
!952 = !DILocation(line: 1101, column: 7, scope: !910)
!953 = !DILocation(line: 1105, column: 19, scope: !954)
!954 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1105, column: 11)
!955 = !{!420, !253, i64 0}
!956 = !DILocation(line: 1105, column: 23, scope: !954)
!957 = !DILocation(line: 1105, column: 29, scope: !954)
!958 = !DILocation(line: 1105, column: 33, scope: !954)
!959 = !DILocation(line: 1105, column: 46, scope: !954)
!960 = !DILocation(line: 1105, column: 11, scope: !832)
!961 = !DILocation(line: 1108, column: 22, scope: !962)
!962 = distinct !DILexicalBlock(scope: !954, file: !3, line: 1105, column: 53)
!963 = !DILocation(line: 1109, column: 7, scope: !962)
!964 = !DILocation(line: 1115, column: 7, scope: !965)
!965 = distinct !DILexicalBlock(scope: !966, file: !3, line: 1115, column: 7)
!966 = distinct !DILexicalBlock(scope: !967, file: !3, line: 1115, column: 7)
!967 = distinct !DILexicalBlock(scope: !968, file: !3, line: 1115, column: 7)
!968 = distinct !DILexicalBlock(scope: !832, file: !3, line: 1115, column: 7)
!969 = !DILocation(line: 1115, column: 7, scope: !970)
!970 = distinct !DILexicalBlock(scope: !971, file: !3, line: 1115, column: 7)
!971 = distinct !DILexicalBlock(scope: !972, file: !3, line: 1115, column: 7)
!972 = distinct !DILexicalBlock(scope: !965, file: !3, line: 1115, column: 7)
!973 = !DILocation(line: 1118, column: 1, scope: !802)
!974 = !DILocation(line: 1009, column: 17, scope: !878, inlinedAt: !831)
!975 = distinct !{!975, !976, !977}
!976 = !DILocation(line: 1009, column: 3, scope: !873)
!977 = !DILocation(line: 1015, column: 3, scope: !873)
!978 = !DILocation(line: 194, column: 43, scope: !134)
!979 = !DILocation(line: 196, column: 2, scope: !134)
!980 = !DILocation(line: 196, column: 10, scope: !134)
!981 = !DILocation(line: 197, column: 2, scope: !134)
!982 = !DILocation(line: 198, column: 2, scope: !983)
!983 = distinct !DILexicalBlock(scope: !984, file: !135, line: 198, column: 2)
!984 = distinct !DILexicalBlock(scope: !134, file: !135, line: 198, column: 2)
!985 = !DILocation(line: 199, column: 2, scope: !134)
!986 = !DILocation(line: 200, column: 1, scope: !134)
!987 = distinct !DISubprogram(name: "dns_send", scope: !3, file: !3, line: 748, type: !988, isLocal: true, isDefinition: true, scopeLine: 749, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !990)
!988 = !DISubroutineType(types: !989)
!989 = !{!293, !74}
!990 = !{!991, !992, !993, !1004, !1009, !1010, !1011, !1012, !1013, !1014, !1015, !1016, !1017, !1020}
!991 = !DILocalVariable(name: "idx", arg: 1, scope: !987, file: !3, line: 748, type: !74)
!992 = !DILocalVariable(name: "err", scope: !987, file: !3, line: 750, type: !293)
!993 = !DILocalVariable(name: "hdr", scope: !987, file: !3, line: 751, type: !994)
!994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_hdr", file: !995, line: 103, size: 96, elements: !996)
!995 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/dns.h", directory: "/root/.unikraft/apps/redis/build")
!996 = !{!997, !998, !999, !1000, !1001, !1002, !1003}
!997 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !994, file: !995, line: 104, baseType: !68, size: 16)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "flags1", scope: !994, file: !995, line: 105, baseType: !74, size: 8, offset: 16)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "flags2", scope: !994, file: !995, line: 106, baseType: !74, size: 8, offset: 24)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "numquestions", scope: !994, file: !995, line: 107, baseType: !68, size: 16, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "numanswers", scope: !994, file: !995, line: 108, baseType: !68, size: 16, offset: 48)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "numauthrr", scope: !994, file: !995, line: 109, baseType: !68, size: 16, offset: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "numextrarr", scope: !994, file: !995, line: 110, baseType: !68, size: 16, offset: 80)
!1004 = !DILocalVariable(name: "qry", scope: !987, file: !3, line: 752, type: !1005)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_query", file: !3, line: 189, size: 32, elements: !1006)
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1005, file: !3, line: 192, baseType: !68, size: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1005, file: !3, line: 193, baseType: !68, size: 16, offset: 16)
!1009 = !DILocalVariable(name: "p", scope: !987, file: !3, line: 753, type: !188)
!1010 = !DILocalVariable(name: "query_idx", scope: !987, file: !3, line: 754, type: !68)
!1011 = !DILocalVariable(name: "copy_len", scope: !987, file: !3, line: 754, type: !68)
!1012 = !DILocalVariable(name: "hostname", scope: !987, file: !3, line: 755, type: !138)
!1013 = !DILocalVariable(name: "hostname_part", scope: !987, file: !3, line: 755, type: !138)
!1014 = !DILocalVariable(name: "n", scope: !987, file: !3, line: 756, type: !74)
!1015 = !DILocalVariable(name: "pcb_idx", scope: !987, file: !3, line: 757, type: !74)
!1016 = !DILocalVariable(name: "entry", scope: !987, file: !3, line: 758, type: !393)
!1017 = !DILocalVariable(name: "dst", scope: !1018, file: !3, line: 780, type: !199)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 779, column: 18)
!1019 = distinct !DILexicalBlock(scope: !987, file: !3, line: 779, column: 7)
!1020 = !DILocalVariable(name: "dst_port", scope: !1018, file: !3, line: 781, type: !68)
!1021 = !DILocation(line: 748, column: 15, scope: !987)
!1022 = !DILocation(line: 751, column: 3, scope: !987)
!1023 = !DILocation(line: 752, column: 3, scope: !987)
!1024 = !DILocation(line: 758, column: 36, scope: !987)
!1025 = !DILocation(line: 762, column: 3, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1027, file: !3, line: 762, column: 3)
!1027 = distinct !DILexicalBlock(scope: !987, file: !3, line: 762, column: 3)
!1028 = !DILocation(line: 762, column: 3, scope: !1027)
!1029 = !DILocation(line: 762, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 762, column: 3)
!1031 = distinct !DILexicalBlock(scope: !1026, file: !3, line: 762, column: 3)
!1032 = !DILocation(line: 762, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 762, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 762, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1030, file: !3, line: 762, column: 3)
!1036 = !DILocation(line: 763, column: 7, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !987, file: !3, line: 763, column: 7)
!1038 = !DILocation(line: 763, column: 7, scope: !987)
!1039 = !DILocation(line: 770, column: 5, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 767, column: 8)
!1041 = !DILocation(line: 772, column: 12, scope: !1040)
!1042 = !DILocation(line: 772, column: 18, scope: !1040)
!1043 = !DILocation(line: 773, column: 5, scope: !1040)
!1044 = !DILocation(line: 777, column: 66, scope: !987)
!1045 = !DILocation(line: 777, column: 59, scope: !987)
!1046 = !DILocation(line: 777, column: 34, scope: !987)
!1047 = !DILocation(line: 777, column: 7, scope: !987)
!1048 = !DILocation(line: 753, column: 16, scope: !987)
!1049 = !DILocation(line: 779, column: 9, scope: !1019)
!1050 = !DILocation(line: 779, column: 7, scope: !987)
!1051 = !DILocation(line: 783, column: 5, scope: !1018)
!1052 = !DILocation(line: 784, column: 32, scope: !1018)
!1053 = !DILocation(line: 784, column: 14, scope: !1018)
!1054 = !DILocation(line: 784, column: 9, scope: !1018)
!1055 = !DILocation(line: 784, column: 12, scope: !1018)
!1056 = !{!1057, !421, i64 0}
!1057 = !{!"dns_hdr", !421, i64 0, !250, i64 2, !250, i64 3, !421, i64 4, !421, i64 6, !421, i64 8, !421, i64 10}
!1058 = !DILocation(line: 785, column: 9, scope: !1018)
!1059 = !DILocation(line: 785, column: 16, scope: !1018)
!1060 = !{!1057, !250, i64 2}
!1061 = !DILocation(line: 786, column: 9, scope: !1018)
!1062 = !DILocation(line: 786, column: 22, scope: !1018)
!1063 = !{!1057, !421, i64 4}
!1064 = !DILocation(line: 787, column: 5, scope: !1018)
!1065 = !DILocation(line: 755, column: 15, scope: !987)
!1066 = !DILocation(line: 789, column: 5, scope: !1018)
!1067 = !DILocation(line: 754, column: 9, scope: !987)
!1068 = !DILocation(line: 793, column: 5, scope: !1018)
!1069 = !DILocation(line: 0, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 793, column: 8)
!1071 = !DILocation(line: 794, column: 7, scope: !1070)
!1072 = !DILocation(line: 755, column: 26, scope: !987)
!1073 = !DILocation(line: 756, column: 8, scope: !987)
!1074 = !DILocation(line: 796, column: 12, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 796, column: 7)
!1076 = !DILocation(line: 796, column: 19, scope: !1077)
!1077 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 796, column: 7)
!1078 = !DILocation(line: 796, column: 29, scope: !1077)
!1079 = !DILocation(line: 796, column: 36, scope: !1077)
!1080 = !DILocation(line: 796, column: 49, scope: !1077)
!1081 = !DILocation(line: 796, column: 7, scope: !1075)
!1082 = !DILocation(line: 797, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1077, file: !3, line: 796, column: 67)
!1084 = !DILocation(line: 796, column: 55, scope: !1077)
!1085 = !DILocation(line: 796, column: 7, scope: !1077)
!1086 = distinct !{!1086, !1081, !1087}
!1087 = !DILocation(line: 798, column: 7, scope: !1075)
!1088 = !DILocation(line: 0, scope: !1083)
!1089 = !DILocation(line: 0, scope: !1077)
!1090 = !DILocation(line: 800, column: 11, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 800, column: 11)
!1092 = !DILocation(line: 800, column: 23, scope: !1091)
!1093 = !DILocation(line: 800, column: 21, scope: !1091)
!1094 = !DILocation(line: 800, column: 29, scope: !1091)
!1095 = !DILocation(line: 800, column: 11, scope: !1070)
!1096 = !DILocation(line: 799, column: 35, scope: !1070)
!1097 = !DILocation(line: 799, column: 18, scope: !1070)
!1098 = !DILocation(line: 754, column: 20, scope: !987)
!1099 = !DILocation(line: 804, column: 7, scope: !1070)
!1100 = !DILocation(line: 805, column: 66, scope: !1070)
!1101 = !DILocation(line: 805, column: 7, scope: !1070)
!1102 = !DILocation(line: 806, column: 19, scope: !1070)
!1103 = !DILocation(line: 807, column: 14, scope: !1018)
!1104 = !DILocation(line: 807, column: 24, scope: !1018)
!1105 = !DILocation(line: 807, column: 5, scope: !1070)
!1106 = distinct !{!1106, !1068, !1107}
!1107 = !DILocation(line: 807, column: 28, scope: !1018)
!1108 = !DILocation(line: 808, column: 5, scope: !1018)
!1109 = !DILocation(line: 809, column: 14, scope: !1018)
!1110 = !DILocation(line: 812, column: 9, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 812, column: 9)
!1112 = !DILocation(line: 812, column: 9, scope: !1018)
!1113 = !DILocation(line: 0, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 814, column: 12)
!1115 = !{!1116, !421, i64 0}
!1116 = !{!"dns_query", !421, i64 0, !421, i64 2}
!1117 = !DILocation(line: 817, column: 9, scope: !1018)
!1118 = !DILocation(line: 817, column: 13, scope: !1018)
!1119 = !{!1116, !421, i64 2}
!1120 = !DILocation(line: 818, column: 5, scope: !1018)
!1121 = !DILocation(line: 821, column: 22, scope: !1018)
!1122 = !DILocation(line: 757, column: 8, scope: !987)
!1123 = !DILocation(line: 781, column: 11, scope: !1018)
!1124 = !DILocation(line: 848, column: 33, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 846, column: 5)
!1126 = !DILocation(line: 848, column: 14, scope: !1125)
!1127 = !DILocation(line: 780, column: 22, scope: !1018)
!1128 = !DILocation(line: 850, column: 22, scope: !1018)
!1129 = !DILocation(line: 850, column: 11, scope: !1018)
!1130 = !DILocation(line: 750, column: 9, scope: !987)
!1131 = !DILocation(line: 853, column: 5, scope: !1018)
!1132 = !DILocation(line: 854, column: 3, scope: !1019)
!1133 = !DILocation(line: 858, column: 3, scope: !987)
!1134 = !DILocation(line: 802, column: 9, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1091, file: !3, line: 800, column: 39)
!1136 = !DILocation(line: 860, column: 3, scope: !987)
!1137 = !DILocation(line: 861, column: 3, scope: !987)
!1138 = !DILocation(line: 0, scope: !1040)
!1139 = !DILocation(line: 862, column: 1, scope: !987)
!1140 = distinct !DISubprogram(name: "dns_call_found", scope: !3, file: !3, line: 942, type: !1141, isLocal: true, isDefinition: true, scopeLine: 943, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1143)
!1141 = !DISubroutineType(types: !1142)
!1142 = !{null, !74, !298}
!1143 = !{!1144, !1145, !1146}
!1144 = !DILocalVariable(name: "idx", arg: 1, scope: !1140, file: !3, line: 942, type: !74)
!1145 = !DILocalVariable(name: "addr", arg: 2, scope: !1140, file: !3, line: 942, type: !298)
!1146 = !DILocalVariable(name: "i", scope: !1140, file: !3, line: 945, type: !74)
!1147 = !DILocation(line: 942, column: 21, scope: !1140)
!1148 = !DILocation(line: 942, column: 37, scope: !1140)
!1149 = !DILocation(line: 949, column: 12, scope: !1150)
!1150 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 949, column: 7)
!1151 = !DILocation(line: 949, column: 7, scope: !1140)
!1152 = !DILocation(line: 951, column: 9, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 951, column: 9)
!1154 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 949, column: 21)
!1155 = !DILocation(line: 0, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 955, column: 7)
!1157 = distinct !DILexicalBlock(scope: !1158, file: !3, line: 955, column: 7)
!1158 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 954, column: 12)
!1159 = !DILocation(line: 951, column: 9, scope: !1154)
!1160 = !DILocation(line: 952, column: 7, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1162, file: !3, line: 952, column: 7)
!1162 = distinct !DILexicalBlock(scope: !1163, file: !3, line: 952, column: 7)
!1163 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 951, column: 30)
!1164 = !DILocation(line: 952, column: 7, scope: !1162)
!1165 = !DILocation(line: 952, column: 7, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 952, column: 7)
!1167 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 952, column: 7)
!1168 = !DILocation(line: 952, column: 7, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1170, file: !3, line: 952, column: 7)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 952, column: 7)
!1171 = distinct !DILexicalBlock(scope: !1166, file: !3, line: 952, column: 7)
!1172 = !DILocation(line: 953, column: 34, scope: !1163)
!1173 = !DILocation(line: 954, column: 5, scope: !1163)
!1174 = !DILocation(line: 955, column: 7, scope: !1156)
!1175 = !DILocation(line: 955, column: 7, scope: !1157)
!1176 = !DILocation(line: 955, column: 7, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 955, column: 7)
!1178 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 955, column: 7)
!1179 = !DILocation(line: 955, column: 7, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 955, column: 7)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 955, column: 7)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 955, column: 7)
!1183 = !DILocation(line: 956, column: 34, scope: !1158)
!1184 = !DILocation(line: 945, column: 8, scope: !1140)
!1185 = !DILocation(line: 962, column: 8, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 962, column: 3)
!1187 = !DILocation(line: 962, column: 3, scope: !1186)
!1188 = !DILocation(line: 963, column: 25, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !3, line: 963, column: 9)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 962, column: 42)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 962, column: 3)
!1192 = !DILocation(line: 963, column: 9, scope: !1189)
!1193 = !DILocation(line: 963, column: 31, scope: !1189)
!1194 = !DILocation(line: 963, column: 51, scope: !1189)
!1195 = !DILocation(line: 963, column: 65, scope: !1189)
!1196 = !DILocation(line: 963, column: 9, scope: !1190)
!1197 = !DILocation(line: 964, column: 75, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 963, column: 74)
!1199 = !DILocation(line: 964, column: 7, scope: !1198)
!1200 = !DILocation(line: 966, column: 29, scope: !1198)
!1201 = !DILocation(line: 967, column: 5, scope: !1198)
!1202 = !DILocation(line: 962, column: 38, scope: !1191)
!1203 = !DILocation(line: 962, column: 3, scope: !1191)
!1204 = !DILocation(line: 962, column: 17, scope: !1191)
!1205 = distinct !{!1205, !1187, !1206}
!1206 = !DILocation(line: 968, column: 3, scope: !1186)
!1207 = !DILocation(line: 977, column: 8, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 977, column: 3)
!1209 = !DILocation(line: 977, column: 3, scope: !1208)
!1210 = !DILocation(line: 978, column: 11, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 978, column: 9)
!1212 = distinct !DILexicalBlock(scope: !1213, file: !3, line: 977, column: 42)
!1213 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 977, column: 3)
!1214 = !DILocation(line: 978, column: 9, scope: !1212)
!1215 = !DILocation(line: 981, column: 22, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 981, column: 9)
!1217 = !DILocation(line: 981, column: 28, scope: !1216)
!1218 = !DILocation(line: 981, column: 9, scope: !1212)
!1219 = !DILocation(line: 982, column: 24, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 982, column: 11)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !3, line: 981, column: 49)
!1222 = !DILocation(line: 982, column: 50, scope: !1220)
!1223 = !DILocation(line: 982, column: 32, scope: !1220)
!1224 = !DILocation(line: 982, column: 11, scope: !1221)
!1225 = !DILocation(line: 984, column: 32, scope: !1226)
!1226 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 982, column: 59)
!1227 = !DILocation(line: 985, column: 9, scope: !1226)
!1228 = !DILocation(line: 989, column: 7, scope: !1140)
!1229 = !DILocation(line: 977, column: 38, scope: !1213)
!1230 = !DILocation(line: 977, column: 3, scope: !1213)
!1231 = !DILocation(line: 977, column: 17, scope: !1213)
!1232 = distinct !{!1232, !1209, !1233}
!1233 = !DILocation(line: 988, column: 3, scope: !1208)
!1234 = !DILocation(line: 989, column: 22, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 989, column: 7)
!1236 = !DILocation(line: 989, column: 30, scope: !1235)
!1237 = !DILocation(line: 991, column: 16, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 989, column: 54)
!1239 = !DILocation(line: 991, column: 5, scope: !1238)
!1240 = !DILocation(line: 992, column: 29, scope: !1238)
!1241 = !DILocation(line: 992, column: 5, scope: !1238)
!1242 = !DILocation(line: 992, column: 38, scope: !1238)
!1243 = !DILocation(line: 993, column: 28, scope: !1238)
!1244 = !DILocation(line: 994, column: 3, scope: !1238)
!1245 = !DILocation(line: 0, scope: !1238)
!1246 = !DILocation(line: 996, column: 1, scope: !1140)
!1247 = !DILocation(line: 65, column: 11, scope: !617)
!1248 = !DILocation(line: 62, column: 16, scope: !617)
!1249 = !DILocation(line: 66, column: 8, scope: !617)
!1250 = !DILocation(line: 63, column: 8, scope: !617)
!1251 = !DILocation(line: 67, column: 2, scope: !617)
!1252 = !DILocation(line: 69, column: 2, scope: !617)
!1253 = distinct !DISubprogram(name: "dns_recv", scope: !3, file: !3, line: 1170, type: !186, isLocal: true, isDefinition: true, scopeLine: 1171, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1271, !1272, !1273, !1274, !1280, !1292}
!1255 = !DILocalVariable(name: "arg", arg: 1, scope: !1253, file: !3, line: 1170, type: !61)
!1256 = !DILocalVariable(name: "pcb", arg: 2, scope: !1253, file: !3, line: 1170, type: !166)
!1257 = !DILocalVariable(name: "p", arg: 3, scope: !1253, file: !3, line: 1170, type: !188)
!1258 = !DILocalVariable(name: "addr", arg: 4, scope: !1253, file: !3, line: 1170, type: !199)
!1259 = !DILocalVariable(name: "port", arg: 5, scope: !1253, file: !3, line: 1170, type: !68)
!1260 = !DILocalVariable(name: "i", scope: !1253, file: !3, line: 1172, type: !74)
!1261 = !DILocalVariable(name: "txid", scope: !1253, file: !3, line: 1173, type: !68)
!1262 = !DILocalVariable(name: "res_idx", scope: !1253, file: !3, line: 1174, type: !68)
!1263 = !DILocalVariable(name: "hdr", scope: !1253, file: !3, line: 1175, type: !994)
!1264 = !DILocalVariable(name: "ans", scope: !1253, file: !3, line: 1176, type: !1265)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dns_answer", file: !3, line: 199, size: 96, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1265, file: !3, line: 202, baseType: !68, size: 16)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1265, file: !3, line: 203, baseType: !68, size: 16, offset: 16)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !1265, file: !3, line: 204, baseType: !62, size: 32, offset: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1265, file: !3, line: 205, baseType: !68, size: 16, offset: 64)
!1271 = !DILocalVariable(name: "qry", scope: !1253, file: !3, line: 1177, type: !1005)
!1272 = !DILocalVariable(name: "nquestions", scope: !1253, file: !3, line: 1178, type: !68)
!1273 = !DILocalVariable(name: "nanswers", scope: !1253, file: !3, line: 1178, type: !68)
!1274 = !DILocalVariable(name: "entry", scope: !1275, file: !3, line: 1196, type: !393)
!1275 = distinct !DILexicalBlock(scope: !1276, file: !3, line: 1195, column: 42)
!1276 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1195, column: 5)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1195, column: 5)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1192, column: 72)
!1279 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1192, column: 7)
!1280 = !DILocalVariable(name: "ip4addr", scope: !1281, file: !3, line: 1291, type: !99)
!1281 = distinct !DILexicalBlock(scope: !1282, file: !3, line: 1290, column: 17)
!1282 = distinct !DILexicalBlock(scope: !1283, file: !3, line: 1288, column: 21)
!1283 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1286, column: 102)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1286, column: 19)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 1284, column: 54)
!1286 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1284, column: 17)
!1287 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1268, column: 60)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1267, column: 16)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1251, column: 13)
!1290 = distinct !DILexicalBlock(scope: !1291, file: !3, line: 1198, column: 34)
!1291 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1197, column: 11)
!1292 = !DILocalVariable(name: "ip6addr", scope: !1293, file: !3, line: 1310, type: !1297)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1309, column: 17)
!1294 = distinct !DILexicalBlock(scope: !1295, file: !3, line: 1307, column: 21)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1305, column: 107)
!1296 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1305, column: 19)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !1298, line: 60, baseType: !1299)
!1298 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !1298, line: 53, size: 128, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1299, file: !1298, line: 54, baseType: !94, size: 128)
!1302 = !DILocation(line: 1170, column: 16, scope: !1253)
!1303 = !DILocation(line: 1170, column: 37, scope: !1253)
!1304 = !DILocation(line: 1170, column: 55, scope: !1253)
!1305 = !DILocation(line: 1170, column: 75, scope: !1253)
!1306 = !DILocation(line: 1170, column: 87, scope: !1253)
!1307 = !DILocation(line: 1175, column: 3, scope: !1253)
!1308 = !DILocation(line: 1176, column: 3, scope: !1253)
!1309 = !DILocation(line: 1177, column: 3, scope: !1253)
!1310 = !DILocation(line: 1185, column: 10, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1185, column: 7)
!1312 = !{!1313, !421, i64 16}
!1313 = !{!"pbuf", !444, i64 0, !444, i64 8, !421, i64 16, !421, i64 18, !250, i64 20, !250, i64 21, !250, i64 22, !250, i64 23}
!1314 = !DILocation(line: 1185, column: 18, scope: !1311)
!1315 = !DILocation(line: 1185, column: 7, scope: !1253)
!1316 = !DILocation(line: 1192, column: 7, scope: !1279)
!1317 = !DILocation(line: 1192, column: 53, scope: !1279)
!1318 = !DILocation(line: 1192, column: 7, scope: !1253)
!1319 = !DILocation(line: 1194, column: 27, scope: !1278)
!1320 = !DILocation(line: 1194, column: 12, scope: !1278)
!1321 = !DILocation(line: 1173, column: 9, scope: !1253)
!1322 = !DILocation(line: 1172, column: 8, scope: !1253)
!1323 = !DILocation(line: 1195, column: 10, scope: !1277)
!1324 = !DILocation(line: 1195, column: 5, scope: !1277)
!1325 = !DILocation(line: 1197, column: 19, scope: !1291)
!1326 = !DILocation(line: 1197, column: 25, scope: !1291)
!1327 = !DILocation(line: 1197, column: 46, scope: !1291)
!1328 = !DILocation(line: 1198, column: 19, scope: !1291)
!1329 = !DILocation(line: 1198, column: 24, scope: !1291)
!1330 = !DILocation(line: 1197, column: 11, scope: !1275)
!1331 = !DILocation(line: 1202, column: 37, scope: !1290)
!1332 = !DILocation(line: 1202, column: 22, scope: !1290)
!1333 = !DILocation(line: 1178, column: 9, scope: !1253)
!1334 = !DILocation(line: 1203, column: 37, scope: !1290)
!1335 = !{!1057, !421, i64 6}
!1336 = !DILocation(line: 1203, column: 22, scope: !1290)
!1337 = !DILocation(line: 1178, column: 21, scope: !1253)
!1338 = !DILocation(line: 1206, column: 18, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1206, column: 13)
!1340 = !DILocation(line: 1206, column: 47, scope: !1339)
!1341 = !DILocation(line: 1206, column: 13, scope: !1290)
!1342 = !DILocation(line: 1210, column: 24, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1210, column: 13)
!1344 = !DILocation(line: 1210, column: 13, scope: !1290)
!1345 = !DILocation(line: 1221, column: 16, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 1221, column: 15)
!1347 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1218, column: 9)
!1348 = !DILocation(line: 1221, column: 15, scope: !1347)
!1349 = !DILocation(line: 0, scope: !1347)
!1350 = !DILocation(line: 1228, column: 36, scope: !1290)
!1351 = !DILocalVariable(name: "query", arg: 1, scope: !1352, file: !3, line: 651, type: !138)
!1352 = distinct !DISubprogram(name: "dns_compare_name", scope: !3, file: !3, line: 651, type: !1353, isLocal: true, isDefinition: true, scopeLine: 652, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1355)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{!68, !138, !188, !68}
!1355 = !{!1351, !1356, !1357, !1358, !1359, !1360, !1365, !1368}
!1356 = !DILocalVariable(name: "p", arg: 2, scope: !1352, file: !3, line: 651, type: !188)
!1357 = !DILocalVariable(name: "start_offset", arg: 3, scope: !1352, file: !3, line: 651, type: !68)
!1358 = !DILocalVariable(name: "n", scope: !1352, file: !3, line: 653, type: !7)
!1359 = !DILocalVariable(name: "response_offset", scope: !1352, file: !3, line: 654, type: !68)
!1360 = !DILocalVariable(name: "c", scope: !1361, file: !3, line: 670, type: !7)
!1361 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 669, column: 21)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 667, column: 12)
!1363 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 664, column: 9)
!1364 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 656, column: 6)
!1365 = !DILocalVariable(name: "__x", scope: !1366, file: !3, line: 674, type: !77)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 674, column: 13)
!1367 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 674, column: 13)
!1368 = !DILocalVariable(name: "__x", scope: !1369, file: !3, line: 674, type: !77)
!1369 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 674, column: 39)
!1370 = !DILocation(line: 651, column: 30, scope: !1352, inlinedAt: !1371)
!1371 = distinct !DILocation(line: 1228, column: 19, scope: !1290)
!1372 = !DILocation(line: 651, column: 50, scope: !1352, inlinedAt: !1371)
!1373 = !DILocation(line: 651, column: 59, scope: !1352, inlinedAt: !1371)
!1374 = !DILocation(line: 654, column: 9, scope: !1352, inlinedAt: !1371)
!1375 = !DILocation(line: 656, column: 3, scope: !1352, inlinedAt: !1371)
!1376 = !DILocation(line: 0, scope: !1364, inlinedAt: !1371)
!1377 = !DILocation(line: 657, column: 9, scope: !1364, inlinedAt: !1371)
!1378 = !DILocation(line: 653, column: 7, scope: !1352, inlinedAt: !1371)
!1379 = !DILocation(line: 658, column: 12, scope: !1380, inlinedAt: !1371)
!1380 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 658, column: 9)
!1381 = !DILocation(line: 658, column: 17, scope: !1380, inlinedAt: !1371)
!1382 = !DILocation(line: 658, column: 37, scope: !1380, inlinedAt: !1371)
!1383 = !DILocation(line: 658, column: 9, scope: !1364, inlinedAt: !1371)
!1384 = !DILocation(line: 664, column: 12, scope: !1363, inlinedAt: !1371)
!1385 = !DILocation(line: 664, column: 20, scope: !1363, inlinedAt: !1371)
!1386 = !DILocation(line: 664, column: 9, scope: !1364, inlinedAt: !1371)
!1387 = !DILocation(line: 662, column: 20, scope: !1364, inlinedAt: !1371)
!1388 = !DILocation(line: 669, column: 16, scope: !1362, inlinedAt: !1371)
!1389 = !DILocation(line: 669, column: 7, scope: !1362, inlinedAt: !1371)
!1390 = !DILocation(line: 0, scope: !1391, inlinedAt: !1371)
!1391 = distinct !DILexicalBlock(scope: !1364, file: !3, line: 688, column: 9)
!1392 = !DILocation(line: 670, column: 13, scope: !1361, inlinedAt: !1371)
!1393 = !DILocation(line: 671, column: 13, scope: !1361, inlinedAt: !1371)
!1394 = !DILocation(line: 674, column: 13, scope: !1366, inlinedAt: !1371)
!1395 = !DILocation(line: 674, column: 39, scope: !1369, inlinedAt: !1371)
!1396 = !DILocation(line: 674, column: 36, scope: !1367, inlinedAt: !1371)
!1397 = !DILocation(line: 674, column: 13, scope: !1361, inlinedAt: !1371)
!1398 = !DILocation(line: 677, column: 29, scope: !1399, inlinedAt: !1371)
!1399 = distinct !DILexicalBlock(scope: !1361, file: !3, line: 677, column: 13)
!1400 = !DILocation(line: 677, column: 13, scope: !1361, inlinedAt: !1371)
!1401 = !DILocation(line: 0, scope: !1290)
!1402 = !DILocation(line: 682, column: 9, scope: !1361, inlinedAt: !1371)
!1403 = !DILocation(line: 683, column: 9, scope: !1361, inlinedAt: !1371)
!1404 = !DILocation(line: 684, column: 7, scope: !1362, inlinedAt: !1371)
!1405 = !DILocation(line: 688, column: 9, scope: !1364, inlinedAt: !1371)
!1406 = !DILocation(line: 685, column: 7, scope: !1362, inlinedAt: !1371)
!1407 = !DILocation(line: 691, column: 14, scope: !1352, inlinedAt: !1371)
!1408 = !DILocation(line: 691, column: 3, scope: !1364, inlinedAt: !1371)
!1409 = distinct !{!1409, !1410, !1411}
!1410 = !DILocation(line: 656, column: 3, scope: !1352)
!1411 = !DILocation(line: 691, column: 18, scope: !1352)
!1412 = !DILocation(line: 693, column: 23, scope: !1413, inlinedAt: !1371)
!1413 = distinct !DILexicalBlock(scope: !1352, file: !3, line: 693, column: 7)
!1414 = !DILocation(line: 693, column: 7, scope: !1352, inlinedAt: !1371)
!1415 = !DILocation(line: 698, column: 1, scope: !1352, inlinedAt: !1371)
!1416 = !DILocation(line: 1174, column: 9, scope: !1253)
!1417 = !DILocation(line: 1229, column: 13, scope: !1290)
!1418 = !DILocation(line: 697, column: 34, scope: !1352, inlinedAt: !1371)
!1419 = !DILocation(line: 697, column: 3, scope: !1352, inlinedAt: !1371)
!1420 = !DILocation(line: 1229, column: 13, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1229, column: 13)
!1422 = !DILocation(line: 1229, column: 21, scope: !1421)
!1423 = !DILocation(line: 1235, column: 13, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1235, column: 13)
!1425 = !DILocation(line: 1235, column: 67, scope: !1424)
!1426 = !DILocation(line: 1235, column: 13, scope: !1290)
!1427 = !DILocation(line: 1238, column: 18, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1238, column: 13)
!1429 = !DILocation(line: 1238, column: 22, scope: !1428)
!1430 = !DILocation(line: 1238, column: 51, scope: !1428)
!1431 = !DILocation(line: 1239, column: 14, scope: !1428)
!1432 = !DILocation(line: 1239, column: 60, scope: !1428)
!1433 = !DILocation(line: 1240, column: 15, scope: !1428)
!1434 = !DILocation(line: 1239, column: 68, scope: !1428)
!1435 = !DILocation(line: 1239, column: 73, scope: !1428)
!1436 = !DILocation(line: 1239, column: 104, scope: !1428)
!1437 = !DILocation(line: 1240, column: 61, scope: !1428)
!1438 = !DILocation(line: 1240, column: 69, scope: !1428)
!1439 = !DILocation(line: 1240, column: 74, scope: !1428)
!1440 = !DILocation(line: 1238, column: 13, scope: !1290)
!1441 = !DILocation(line: 1245, column: 21, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1245, column: 13)
!1443 = !DILocation(line: 1245, column: 40, scope: !1442)
!1444 = !DILocation(line: 1245, column: 13, scope: !1290)
!1445 = !DILocation(line: 1251, column: 17, scope: !1289)
!1446 = !{!1057, !250, i64 3}
!1447 = !DILocation(line: 1251, column: 24, scope: !1289)
!1448 = !DILocation(line: 1251, column: 13, scope: !1290)
!1449 = !DILocation(line: 1268, column: 28, scope: !1288)
!1450 = !DILocation(line: 1268, column: 33, scope: !1288)
!1451 = !DILocation(line: 1268, column: 37, scope: !1288)
!1452 = !DILocation(line: 1026, column: 8, scope: !915, inlinedAt: !1453)
!1453 = distinct !DILocation(line: 1257, column: 15, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !1455, file: !3, line: 1257, column: 15)
!1455 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1251, column: 46)
!1456 = !DILocation(line: 1028, column: 7, scope: !915, inlinedAt: !1453)
!1457 = !DILocation(line: 1029, column: 18, scope: !926, inlinedAt: !1453)
!1458 = !DILocation(line: 1029, column: 10, scope: !926, inlinedAt: !1453)
!1459 = !DILocation(line: 1029, column: 29, scope: !926, inlinedAt: !1453)
!1460 = !DILocation(line: 1029, column: 33, scope: !926, inlinedAt: !1453)
!1461 = !DILocation(line: 1029, column: 52, scope: !926, inlinedAt: !1453)
!1462 = !DILocation(line: 1029, column: 56, scope: !926, inlinedAt: !1453)
!1463 = !DILocation(line: 1029, column: 9, scope: !927, inlinedAt: !1453)
!1464 = !DILocation(line: 0, scope: !927, inlinedAt: !1453)
!1465 = !DILocation(line: 1034, column: 3, scope: !915, inlinedAt: !1453)
!1466 = !DILocation(line: 1257, column: 15, scope: !1455)
!1467 = !DILocation(line: 1031, column: 5, scope: !937, inlinedAt: !1453)
!1468 = !DILocation(line: 1259, column: 20, scope: !1469)
!1469 = distinct !DILexicalBlock(scope: !1454, file: !3, line: 1257, column: 50)
!1470 = !DILocation(line: 1259, column: 28, scope: !1469)
!1471 = !DILocation(line: 1260, column: 20, scope: !1469)
!1472 = !DILocation(line: 1260, column: 28, scope: !1469)
!1473 = !DILocation(line: 1263, column: 13, scope: !1469)
!1474 = !DILocation(line: 1265, column: 13, scope: !1469)
!1475 = !DILocation(line: 1268, column: 50, scope: !1288)
!1476 = !DILocation(line: 1268, column: 47, scope: !1288)
!1477 = !DILocation(line: 1268, column: 45, scope: !1288)
!1478 = !DILocation(line: 1268, column: 11, scope: !1288)
!1479 = !DILocation(line: 0, scope: !1287)
!1480 = !DILocalVariable(name: "p", arg: 1, scope: !1481, file: !3, line: 708, type: !188)
!1481 = distinct !DISubprogram(name: "dns_skip_name", scope: !3, file: !3, line: 708, type: !1482, isLocal: true, isDefinition: true, scopeLine: 709, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1484)
!1482 = !DISubroutineType(types: !1483)
!1483 = !{!68, !188, !68}
!1484 = !{!1480, !1485, !1486, !1487}
!1485 = !DILocalVariable(name: "query_idx", arg: 2, scope: !1481, file: !3, line: 708, type: !68)
!1486 = !DILocalVariable(name: "n", scope: !1481, file: !3, line: 710, type: !7)
!1487 = !DILocalVariable(name: "offset", scope: !1481, file: !3, line: 711, type: !68)
!1488 = !DILocation(line: 708, column: 28, scope: !1481, inlinedAt: !1489)
!1489 = distinct !DILocation(line: 1270, column: 23, scope: !1287)
!1490 = !DILocation(line: 708, column: 37, scope: !1481, inlinedAt: !1489)
!1491 = !DILocation(line: 711, column: 9, scope: !1481, inlinedAt: !1489)
!1492 = !DILocation(line: 713, column: 3, scope: !1481, inlinedAt: !1489)
!1493 = !DILocation(line: 0, scope: !1494, inlinedAt: !1489)
!1494 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 722, column: 12)
!1495 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 719, column: 9)
!1496 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 713, column: 6)
!1497 = !DILocation(line: 714, column: 34, scope: !1496, inlinedAt: !1489)
!1498 = !DILocation(line: 714, column: 9, scope: !1496, inlinedAt: !1489)
!1499 = !DILocation(line: 710, column: 7, scope: !1481, inlinedAt: !1489)
!1500 = !DILocation(line: 715, column: 12, scope: !1501, inlinedAt: !1489)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 715, column: 9)
!1502 = !DILocation(line: 715, column: 17, scope: !1501, inlinedAt: !1489)
!1503 = !DILocation(line: 715, column: 21, scope: !1501, inlinedAt: !1489)
!1504 = !DILocation(line: 715, column: 28, scope: !1501, inlinedAt: !1489)
!1505 = !DILocation(line: 715, column: 9, scope: !1496, inlinedAt: !1489)
!1506 = !DILocation(line: 719, column: 12, scope: !1495, inlinedAt: !1489)
!1507 = !DILocation(line: 719, column: 20, scope: !1495, inlinedAt: !1489)
!1508 = !DILocation(line: 719, column: 9, scope: !1496, inlinedAt: !1489)
!1509 = !DILocation(line: 724, column: 18, scope: !1510, inlinedAt: !1489)
!1510 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 724, column: 11)
!1511 = !DILocation(line: 724, column: 28, scope: !1510, inlinedAt: !1489)
!1512 = !DILocation(line: 724, column: 25, scope: !1510, inlinedAt: !1489)
!1513 = !DILocation(line: 724, column: 22, scope: !1510, inlinedAt: !1489)
!1514 = !DILocation(line: 724, column: 11, scope: !1494, inlinedAt: !1489)
!1515 = !DILocation(line: 727, column: 16, scope: !1494, inlinedAt: !1489)
!1516 = !DILocation(line: 729, column: 9, scope: !1496, inlinedAt: !1489)
!1517 = !DILocation(line: 730, column: 11, scope: !1518, inlinedAt: !1489)
!1518 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 730, column: 9)
!1519 = !DILocation(line: 730, column: 9, scope: !1496, inlinedAt: !1489)
!1520 = !DILocation(line: 733, column: 14, scope: !1481, inlinedAt: !1489)
!1521 = !DILocation(line: 733, column: 3, scope: !1496, inlinedAt: !1489)
!1522 = distinct !{!1522, !1523, !1524}
!1523 = !DILocation(line: 713, column: 3, scope: !1481)
!1524 = !DILocation(line: 733, column: 18, scope: !1481)
!1525 = !DILocation(line: 735, column: 14, scope: !1526, inlinedAt: !1489)
!1526 = distinct !DILexicalBlock(scope: !1481, file: !3, line: 735, column: 7)
!1527 = !DILocation(line: 735, column: 7, scope: !1481, inlinedAt: !1489)
!1528 = !DILocation(line: 739, column: 1, scope: !1481, inlinedAt: !1489)
!1529 = !DILocation(line: 1271, column: 17, scope: !1287)
!1530 = !DILocation(line: 738, column: 25, scope: !1481, inlinedAt: !1489)
!1531 = !DILocation(line: 738, column: 3, scope: !1481, inlinedAt: !1489)
!1532 = !DILocation(line: 1271, column: 17, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1271, column: 17)
!1534 = !DILocation(line: 1271, column: 25, scope: !1533)
!1535 = !DILocation(line: 1276, column: 17, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1276, column: 17)
!1537 = !DILocation(line: 1276, column: 72, scope: !1536)
!1538 = !DILocation(line: 1276, column: 17, scope: !1287)
!1539 = !DILocation(line: 1279, column: 25, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1279, column: 17)
!1541 = !DILocation(line: 1279, column: 45, scope: !1540)
!1542 = !DILocation(line: 1279, column: 17, scope: !1287)
!1543 = !DILocation(line: 1284, column: 21, scope: !1286)
!1544 = !{!1545, !421, i64 2}
!1545 = !{!"dns_answer", !421, i64 0, !421, i64 2, !253, i64 4, !421, i64 8}
!1546 = !DILocation(line: 1284, column: 25, scope: !1286)
!1547 = !DILocation(line: 1284, column: 17, scope: !1287)
!1548 = !DILocation(line: 1286, column: 24, scope: !1284)
!1549 = !{!1545, !421, i64 0}
!1550 = !DILocation(line: 1286, column: 29, scope: !1284)
!1551 = !DILocation(line: 1286, column: 56, scope: !1284)
!1552 = !DILocation(line: 1286, column: 64, scope: !1284)
!1553 = !{!1545, !421, i64 8}
!1554 = !DILocation(line: 1286, column: 68, scope: !1284)
!1555 = !DILocation(line: 1286, column: 19, scope: !1285)
!1556 = !DILocation(line: 1288, column: 22, scope: !1282)
!1557 = !DILocation(line: 1288, column: 21, scope: !1283)
!1558 = !DILocation(line: 1282, column: 23, scope: !1287)
!1559 = !DILocation(line: 1291, column: 19, scope: !1281)
!1560 = !DILocation(line: 1293, column: 23, scope: !1561)
!1561 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1293, column: 23)
!1562 = !DILocation(line: 1293, column: 83, scope: !1561)
!1563 = !DILocation(line: 1293, column: 23, scope: !1281)
!1564 = !DILocation(line: 1296, column: 19, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1281, file: !3, line: 1296, column: 19)
!1566 = !{!1567, !253, i64 0}
!1567 = !{!"ip4_addr", !253, i64 0}
!1568 = !DILocation(line: 1296, column: 19, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 1296, column: 19)
!1570 = !DILocation(line: 1296, column: 19, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1565, file: !3, line: 1296, column: 19)
!1572 = !DILocation(line: 1297, column: 19, scope: !1281)
!1573 = !DILocation(line: 1299, column: 43, scope: !1281)
!1574 = !{!1545, !253, i64 4}
!1575 = !DILocalVariable(name: "idx", arg: 1, scope: !1576, file: !3, line: 1137, type: !74)
!1576 = distinct !DISubprogram(name: "dns_correct_response", scope: !3, file: !3, line: 1137, type: !1577, isLocal: true, isDefinition: true, scopeLine: 1138, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1579)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !74, !62}
!1579 = !{!1575, !1580, !1581}
!1580 = !DILocalVariable(name: "ttl", arg: 2, scope: !1576, file: !3, line: 1137, type: !62)
!1581 = !DILocalVariable(name: "entry", scope: !1576, file: !3, line: 1139, type: !393)
!1582 = !DILocation(line: 1137, column: 27, scope: !1576, inlinedAt: !1583)
!1583 = distinct !DILocation(line: 1299, column: 19, scope: !1281)
!1584 = !DILocation(line: 1137, column: 38, scope: !1576, inlinedAt: !1583)
!1585 = !DILocation(line: 1141, column: 16, scope: !1576, inlinedAt: !1583)
!1586 = !DILocation(line: 1144, column: 3, scope: !1587, inlinedAt: !1583)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !3, line: 1144, column: 3)
!1588 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1144, column: 3)
!1589 = !DILocation(line: 1148, column: 10, scope: !1576, inlinedAt: !1583)
!1590 = !DILocation(line: 1148, column: 14, scope: !1576, inlinedAt: !1583)
!1591 = !DILocation(line: 1149, column: 18, scope: !1592, inlinedAt: !1583)
!1592 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1149, column: 7)
!1593 = !DILocation(line: 1149, column: 7, scope: !1576, inlinedAt: !1583)
!1594 = !DILocation(line: 1150, column: 16, scope: !1595, inlinedAt: !1583)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1149, column: 33)
!1596 = !DILocation(line: 1151, column: 3, scope: !1595, inlinedAt: !1583)
!1597 = !DILocation(line: 1152, column: 3, scope: !1576, inlinedAt: !1583)
!1598 = !DILocation(line: 1154, column: 14, scope: !1599, inlinedAt: !1583)
!1599 = distinct !DILexicalBlock(scope: !1576, file: !3, line: 1154, column: 7)
!1600 = !DILocation(line: 1154, column: 18, scope: !1599, inlinedAt: !1583)
!1601 = !DILocation(line: 1154, column: 7, scope: !1576, inlinedAt: !1583)
!1602 = !DILocation(line: 1160, column: 16, scope: !1603, inlinedAt: !1583)
!1603 = distinct !DILexicalBlock(scope: !1604, file: !3, line: 1160, column: 9)
!1604 = distinct !DILexicalBlock(scope: !1599, file: !3, line: 1154, column: 24)
!1605 = !DILocation(line: 1160, column: 22, scope: !1603, inlinedAt: !1583)
!1606 = !DILocation(line: 1160, column: 9, scope: !1604, inlinedAt: !1583)
!1607 = !DILocation(line: 1161, column: 20, scope: !1608, inlinedAt: !1583)
!1608 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1160, column: 41)
!1609 = !DILocation(line: 1162, column: 5, scope: !1608, inlinedAt: !1583)
!1610 = !DILocation(line: 1164, column: 1, scope: !1576, inlinedAt: !1583)
!1611 = !DILocation(line: 1300, column: 19, scope: !1281)
!1612 = !DILocation(line: 0, scope: !1281)
!1613 = !DILocation(line: 1301, column: 17, scope: !1282)
!1614 = !DILocation(line: 1305, column: 59, scope: !1296)
!1615 = !DILocation(line: 1305, column: 29, scope: !1296)
!1616 = !DILocation(line: 1305, column: 67, scope: !1296)
!1617 = !DILocation(line: 1305, column: 71, scope: !1296)
!1618 = !DILocation(line: 1305, column: 19, scope: !1285)
!1619 = !DILocation(line: 1307, column: 21, scope: !1294)
!1620 = !DILocation(line: 1307, column: 21, scope: !1295)
!1621 = !DILocation(line: 1310, column: 19, scope: !1293)
!1622 = !DILocation(line: 1312, column: 23, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1312, column: 23)
!1624 = !DILocation(line: 1312, column: 85, scope: !1623)
!1625 = !DILocation(line: 1312, column: 23, scope: !1293)
!1626 = !DILocation(line: 1316, column: 19, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1316, column: 19)
!1628 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1316, column: 19)
!1629 = !DILocation(line: 1316, column: 19, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1316, column: 19)
!1631 = !DILocation(line: 1317, column: 19, scope: !1293)
!1632 = !DILocation(line: 1319, column: 43, scope: !1293)
!1633 = !DILocation(line: 1137, column: 27, scope: !1576, inlinedAt: !1634)
!1634 = distinct !DILocation(line: 1319, column: 19, scope: !1293)
!1635 = !DILocation(line: 1137, column: 38, scope: !1576, inlinedAt: !1634)
!1636 = !DILocation(line: 1141, column: 16, scope: !1576, inlinedAt: !1634)
!1637 = !DILocation(line: 1144, column: 3, scope: !1587, inlinedAt: !1634)
!1638 = !DILocation(line: 1148, column: 10, scope: !1576, inlinedAt: !1634)
!1639 = !DILocation(line: 1148, column: 14, scope: !1576, inlinedAt: !1634)
!1640 = !DILocation(line: 1149, column: 18, scope: !1592, inlinedAt: !1634)
!1641 = !DILocation(line: 1149, column: 7, scope: !1576, inlinedAt: !1634)
!1642 = !DILocation(line: 1150, column: 16, scope: !1595, inlinedAt: !1634)
!1643 = !DILocation(line: 1151, column: 3, scope: !1595, inlinedAt: !1634)
!1644 = !DILocation(line: 1152, column: 3, scope: !1576, inlinedAt: !1634)
!1645 = !DILocation(line: 1154, column: 14, scope: !1599, inlinedAt: !1634)
!1646 = !DILocation(line: 1154, column: 18, scope: !1599, inlinedAt: !1634)
!1647 = !DILocation(line: 1154, column: 7, scope: !1576, inlinedAt: !1634)
!1648 = !DILocation(line: 1160, column: 16, scope: !1603, inlinedAt: !1634)
!1649 = !DILocation(line: 1160, column: 22, scope: !1603, inlinedAt: !1634)
!1650 = !DILocation(line: 1160, column: 9, scope: !1604, inlinedAt: !1634)
!1651 = !DILocation(line: 1161, column: 20, scope: !1608, inlinedAt: !1634)
!1652 = !DILocation(line: 1162, column: 5, scope: !1608, inlinedAt: !1634)
!1653 = !DILocation(line: 1164, column: 1, scope: !1576, inlinedAt: !1634)
!1654 = !DILocation(line: 1320, column: 19, scope: !1293)
!1655 = !DILocation(line: 0, scope: !1293)
!1656 = !DILocation(line: 1321, column: 17, scope: !1294)
!1657 = !DILocation(line: 1326, column: 23, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1287, file: !3, line: 1326, column: 17)
!1659 = !DILocation(line: 1326, column: 48, scope: !1658)
!1660 = !DILocation(line: 1326, column: 33, scope: !1658)
!1661 = !DILocation(line: 1326, column: 31, scope: !1658)
!1662 = !DILocation(line: 1326, column: 54, scope: !1658)
!1663 = !DILocation(line: 1326, column: 17, scope: !1287)
!1664 = !DILocation(line: 1329, column: 56, scope: !1287)
!1665 = !DILocation(line: 1329, column: 41, scope: !1287)
!1666 = !DILocation(line: 1329, column: 39, scope: !1287)
!1667 = !DILocation(line: 1330, column: 13, scope: !1287)
!1668 = distinct !{!1668, !1478, !1669}
!1669 = !DILocation(line: 1331, column: 11, scope: !1288)
!1670 = !DILocation(line: 1333, column: 23, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1333, column: 15)
!1672 = !DILocation(line: 0, scope: !1288)
!1673 = !DILocation(line: 1333, column: 35, scope: !1671)
!1674 = !DILocation(line: 1333, column: 67, scope: !1671)
!1675 = !DILocation(line: 1334, column: 35, scope: !1671)
!1676 = !DILocation(line: 1333, column: 15, scope: !1288)
!1677 = !DILocation(line: 1335, column: 17, scope: !1678)
!1678 = distinct !DILexicalBlock(scope: !1671, file: !3, line: 1334, column: 68)
!1679 = !DILocation(line: 0, scope: !1680)
!1680 = distinct !DILexicalBlock(scope: !1681, file: !3, line: 1335, column: 68)
!1681 = distinct !DILexicalBlock(scope: !1678, file: !3, line: 1335, column: 17)
!1682 = !DILocation(line: 1342, column: 13, scope: !1678)
!1683 = !DILocation(line: 1343, column: 32, scope: !1678)
!1684 = !DILocation(line: 1344, column: 13, scope: !1678)
!1685 = !DILocation(line: 1345, column: 13, scope: !1678)
!1686 = !DILocation(line: 1351, column: 9, scope: !1290)
!1687 = !DILocation(line: 1352, column: 9, scope: !1290)
!1688 = !DILocation(line: 1353, column: 28, scope: !1290)
!1689 = !DILocation(line: 1354, column: 9, scope: !1290)
!1690 = !DILocation(line: 1356, column: 5, scope: !1276)
!1691 = !DILocation(line: 0, scope: !1692)
!1692 = distinct !DILexicalBlock(scope: !1658, file: !3, line: 1326, column: 64)
!1693 = !DILocation(line: 0, scope: !1678)
!1694 = !DILocation(line: 1195, column: 38, scope: !1276)
!1695 = !DILocation(line: 1195, column: 5, scope: !1276)
!1696 = !DILocation(line: 1195, column: 19, scope: !1276)
!1697 = distinct !{!1697, !1324, !1698}
!1698 = !DILocation(line: 1356, column: 5, scope: !1277)
!1699 = !DILocation(line: 1361, column: 3, scope: !1253)
!1700 = !DILocation(line: 1362, column: 3, scope: !1253)
!1701 = !DILocation(line: 1363, column: 1, scope: !1253)
