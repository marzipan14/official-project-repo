; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/pbuf.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/pbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.tcp_pcb = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb*, i8*, i32, i8, i16, i16, i16, i8, i8, i8, i32, i32, i32, i32, i32, i16, i16, i32, i32, i16, i16, i16, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i32, %struct.tcp_seg*, %struct.tcp_seg*, %struct.tcp_seg*, %struct.pbuf*, %struct.tcp_pcb_listen*, i8 (i8*, %struct.tcp_pcb*, i16)*, i8 (i8*, %struct.tcp_pcb*, %struct.pbuf*, i8)*, i8 (i8*, %struct.tcp_pcb*, i8)*, i8 (i8*, %struct.tcp_pcb*)*, void (i8*, i8)*, i32, i8, i8, i8, i8, i8, i8 }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.tcp_seg = type { %struct.tcp_seg*, %struct.pbuf*, i16, i8, %struct.tcp_hdr* }
%struct.tcp_hdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.tcp_pcb_listen = type { %struct.ip_addr, %struct.ip_addr, i8, i8, i8, i8, %struct.tcp_pcb_listen*, i8*, i32, i8, i16, i8 (i8*, %struct.tcp_pcb*, i8)* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.pbuf_custom = type { %struct.pbuf, void (%struct.pbuf*)* }

@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"PBUF_POOL_BUFSIZE must be bigger than MEM_ALIGNMENT\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"pbuf_alloc: erroneous type\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"invalid pbuf_type\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"pbuf_realloc: p != NULL\00", align 1
@.str.8 = private unnamed_addr constant [24 x i8] c"pbuf_realloc: q != NULL\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"mem_trim returned q == NULL\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"p != NULL\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"increment_magnitude <= p->len\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"pbuf_free: p->ref > 0\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"pc->custom_free_function != NULL\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"invalid pbuf type\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"pbuf ref overflow\00", align 1
@.str.16 = private unnamed_addr constant [53 x i8] c"(h != NULL) && (t != NULL) (programmer violates API)\00", align 1
@.str.17 = private unnamed_addr constant [45 x i8] c"p->tot_len == p->len (of last pbuf in chain)\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"p->tot_len == p->len + q->tot_len\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"p->tot_len == p->len\00", align 1
@.str.21 = private unnamed_addr constant [48 x i8] c"pbuf_copy: target not big enough to hold source\00", align 1
@.str.22 = private unnamed_addr constant [23 x i8] c"offset_to <= p_to->len\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"offset_from <= p_from->len\00", align 1
@.str.24 = private unnamed_addr constant [13 x i8] c"p_to != NULL\00", align 1
@.str.25 = private unnamed_addr constant [42 x i8] c"pbuf_copy() does not allow packet queues!\00", align 1
@.str.26 = private unnamed_addr constant [31 x i8] c"pbuf_copy_partial: invalid buf\00", align 1
@.str.27 = private unnamed_addr constant [35 x i8] c"pbuf_copy_partial: invalid dataptr\00", align 1
@.str.28 = private unnamed_addr constant [33 x i8] c"pbuf_get_contiguous: invalid buf\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"pbuf_get_contiguous: invalid dataptr\00", align 1
@.str.30 = private unnamed_addr constant [34 x i8] c"tot_len/len mismatch in last pbuf\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"pbuf_take: invalid buf\00", align 1
@.str.32 = private unnamed_addr constant [27 x i8] c"pbuf_take: invalid dataptr\00", align 1
@.str.33 = private unnamed_addr constant [32 x i8] c"pbuf_take: buf not large enough\00", align 1
@.str.34 = private unnamed_addr constant [24 x i8] c"pbuf_take: invalid pbuf\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"did not copy all data\00", align 1
@pbuf_free_ooseq_pending = common dso_local global i8 0, align 1, !dbg !0
@tcp_active_pcbs = external dso_local local_unnamed_addr global %struct.tcp_pcb*, align 8
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !137
@uk_pr_crit.__str.38 = internal global [7 x i8] c"pbuf.c\00", section ".data_shared", align 1, !dbg !161

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #0 !dbg !171 {
  switch i32 %2, label %105 [
    i32 65, label %4
    i32 1, label %4
    i32 386, label %25
    i32 640, label %76
  ], !dbg !195

; <label>:4:                                      ; preds = %3, %3
  %5 = or i32 %2, 64, !dbg !208
  %6 = icmp eq i32 %5, 65, !dbg !208
  br i1 %6, label %8, label %7, !dbg !208

; <label>:7:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #8, !dbg !211
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !214
  tail call void @ukplat_terminate(i32 3) #9, !dbg !214
  unreachable, !dbg !214

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @memp_malloc(i32 15) #8, !dbg !218
  %10 = icmp eq i8* %9, null, !dbg !219
  br i1 %10, label %106, label %11, !dbg !221

; <label>:11:                                     ; preds = %8
  %12 = bitcast i8* %9 to %struct.pbuf*, !dbg !222
  %13 = bitcast i8* %9 to %struct.pbuf**, !dbg !241
  store %struct.pbuf* null, %struct.pbuf** %13, align 8, !dbg !242, !tbaa !243
  %14 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !249
  %15 = bitcast i8* %14 to i8**, !dbg !249
  store i8* null, i8** %15, align 8, !dbg !250, !tbaa !251
  %16 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !252
  %17 = bitcast i8* %16 to i16*, !dbg !252
  store i16 %1, i16* %17, align 8, !dbg !253, !tbaa !254
  %18 = getelementptr inbounds i8, i8* %9, i64 18, !dbg !255
  %19 = bitcast i8* %18 to i16*, !dbg !255
  store i16 %1, i16* %19, align 2, !dbg !256, !tbaa !257
  %20 = trunc i32 %2 to i8, !dbg !258
  %21 = getelementptr inbounds i8, i8* %9, i64 20, !dbg !259
  store i8 %20, i8* %21, align 4, !dbg !260, !tbaa !261
  %22 = getelementptr inbounds i8, i8* %9, i64 21, !dbg !262
  store i8 0, i8* %22, align 1, !dbg !263, !tbaa !264
  %23 = getelementptr inbounds i8, i8* %9, i64 22, !dbg !265
  store i8 1, i8* %23, align 2, !dbg !266, !tbaa !267
  %24 = getelementptr inbounds i8, i8* %9, i64 23, !dbg !268
  store i8 0, i8* %24, align 1, !dbg !269, !tbaa !270
  br label %106, !dbg !271

; <label>:25:                                     ; preds = %3
  %26 = trunc i32 %0 to i16, !dbg !272
  br label %27, !dbg !277

; <label>:27:                                     ; preds = %72, %25
  %28 = phi %struct.pbuf* [ null, %25 ], [ %33, %72 ], !dbg !278
  %29 = phi i16 [ %1, %25 ], [ %74, %72 ], !dbg !279
  %30 = phi i16 [ %26, %25 ], [ 0, %72 ], !dbg !273
  %31 = phi %struct.pbuf* [ null, %25 ], [ %73, %72 ], !dbg !280
  %32 = tail call i8* @memp_malloc(i32 16) #8, !dbg !281
  %33 = bitcast i8* %32 to %struct.pbuf*, !dbg !282
  %34 = icmp eq i8* %32, null, !dbg !284
  br i1 %34, label %35, label %48, !dbg !286

; <label>:35:                                     ; preds = %27
  %36 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !287
  %37 = load volatile i8, i8* @pbuf_free_ooseq_pending, align 1, !dbg !298, !tbaa !299
  store volatile i8 1, i8* @pbuf_free_ooseq_pending, align 1, !dbg !301, !tbaa !299
  tail call void @ukplat_lcpu_restore_irqf(i64 %36) #8, !dbg !302
  %38 = icmp eq i8 %37, 0, !dbg !303
  br i1 %38, label %39, label %44, !dbg !305

; <label>:39:                                     ; preds = %35
  %40 = tail call signext i8 @tcpip_try_callback(void (i8*)* nonnull @pbuf_free_ooseq_callback, i8* null) #8, !dbg !306
  %41 = icmp eq i8 %40, 0, !dbg !306
  br i1 %41, label %44, label %42, !dbg !310

; <label>:42:                                     ; preds = %39
  %43 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !311
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !314, !tbaa !299
  tail call void @ukplat_lcpu_restore_irqf(i64 %43) #8, !dbg !314
  br label %44, !dbg !314

; <label>:44:                                     ; preds = %35, %39, %42
  %45 = icmp eq %struct.pbuf* %31, null, !dbg !315
  br i1 %45, label %106, label %46, !dbg !317

; <label>:46:                                     ; preds = %44
  %47 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %31) #10, !dbg !318
  br label %106, !dbg !320

; <label>:48:                                     ; preds = %27
  %49 = sub i16 1514, %30, !dbg !321
  %50 = icmp ult i16 %29, %49, !dbg !321
  %51 = select i1 %50, i16 %29, i16 %49, !dbg !321
  %52 = getelementptr inbounds i8, i8* %32, i64 24, !dbg !323
  %53 = zext i16 %30 to i64, !dbg !323
  %54 = getelementptr inbounds i8, i8* %52, i64 %53, !dbg !323
  %55 = bitcast i8* %32 to %struct.pbuf**, !dbg !331
  store %struct.pbuf* null, %struct.pbuf** %55, align 8, !dbg !332, !tbaa !243
  %56 = getelementptr inbounds i8, i8* %32, i64 8, !dbg !333
  %57 = bitcast i8* %56 to i8**, !dbg !333
  store i8* %54, i8** %57, align 8, !dbg !334, !tbaa !251
  %58 = getelementptr inbounds i8, i8* %32, i64 16, !dbg !335
  %59 = bitcast i8* %58 to i16*, !dbg !335
  store i16 %29, i16* %59, align 8, !dbg !336, !tbaa !254
  %60 = getelementptr inbounds i8, i8* %32, i64 18, !dbg !337
  %61 = bitcast i8* %60 to i16*, !dbg !337
  store i16 %51, i16* %61, align 2, !dbg !338, !tbaa !257
  %62 = getelementptr inbounds i8, i8* %32, i64 20, !dbg !339
  store i8 -126, i8* %62, align 4, !dbg !340, !tbaa !261
  %63 = getelementptr inbounds i8, i8* %32, i64 21, !dbg !341
  store i8 0, i8* %63, align 1, !dbg !342, !tbaa !264
  %64 = getelementptr inbounds i8, i8* %32, i64 22, !dbg !343
  store i8 1, i8* %64, align 2, !dbg !344, !tbaa !267
  %65 = getelementptr inbounds i8, i8* %32, i64 23, !dbg !345
  store i8 0, i8* %65, align 1, !dbg !346, !tbaa !270
  %66 = icmp eq i16 %30, 1514, !dbg !347
  br i1 %66, label %67, label %68, !dbg !350

; <label>:67:                                     ; preds = %48
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #10, !dbg !351
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !354
  tail call void @ukplat_terminate(i32 3) #9, !dbg !354
  unreachable, !dbg !354

; <label>:68:                                     ; preds = %48
  %69 = icmp eq %struct.pbuf* %31, null, !dbg !358
  br i1 %69, label %72, label %70, !dbg !360

; <label>:70:                                     ; preds = %68
  %71 = bitcast %struct.pbuf* %28 to i8**, !dbg !361
  store i8* %32, i8** %71, align 8, !dbg !361, !tbaa !243
  br label %72

; <label>:72:                                     ; preds = %68, %70
  %73 = phi %struct.pbuf* [ %31, %70 ], [ %33, %68 ], !dbg !363
  %74 = sub i16 %29, %51, !dbg !364
  %75 = icmp eq i16 %74, 0, !dbg !365
  br i1 %75, label %106, label %27, !dbg !366, !llvm.loop !367

; <label>:76:                                     ; preds = %3
  %77 = and i32 %0, 65535, !dbg !369
  %78 = trunc i32 %0 to i16, !dbg !370
  %79 = add i16 %78, %1, !dbg !370
  %80 = zext i16 %79 to i64, !dbg !372
  %81 = add nuw nsw i64 %80, 24, !dbg !373
  %82 = icmp ult i16 %79, %1, !dbg !375
  %83 = zext i16 %1 to i64, !dbg !377
  %84 = icmp ult i64 %81, %83, !dbg !378
  %85 = or i1 %82, %84, !dbg !379
  br i1 %85, label %106, label %86, !dbg !379

; <label>:86:                                     ; preds = %76
  %87 = tail call i8* @mem_malloc(i64 %81) #8, !dbg !380
  %88 = icmp eq i8* %87, null, !dbg !381
  br i1 %88, label %106, label %89, !dbg !383

; <label>:89:                                     ; preds = %86
  %90 = bitcast i8* %87 to %struct.pbuf*, !dbg !384
  %91 = getelementptr inbounds i8, i8* %87, i64 24, !dbg !385
  %92 = zext i32 %77 to i64, !dbg !385
  %93 = getelementptr inbounds i8, i8* %91, i64 %92, !dbg !385
  %94 = bitcast i8* %87 to %struct.pbuf**, !dbg !393
  store %struct.pbuf* null, %struct.pbuf** %94, align 8, !dbg !394, !tbaa !243
  %95 = getelementptr inbounds i8, i8* %87, i64 8, !dbg !395
  %96 = bitcast i8* %95 to i8**, !dbg !395
  store i8* %93, i8** %96, align 8, !dbg !396, !tbaa !251
  %97 = getelementptr inbounds i8, i8* %87, i64 16, !dbg !397
  %98 = bitcast i8* %97 to i16*, !dbg !397
  store i16 %1, i16* %98, align 8, !dbg !398, !tbaa !254
  %99 = getelementptr inbounds i8, i8* %87, i64 18, !dbg !399
  %100 = bitcast i8* %99 to i16*, !dbg !399
  store i16 %1, i16* %100, align 2, !dbg !400, !tbaa !257
  %101 = getelementptr inbounds i8, i8* %87, i64 20, !dbg !401
  store i8 -128, i8* %101, align 4, !dbg !402, !tbaa !261
  %102 = getelementptr inbounds i8, i8* %87, i64 21, !dbg !403
  store i8 0, i8* %102, align 1, !dbg !404, !tbaa !264
  %103 = getelementptr inbounds i8, i8* %87, i64 22, !dbg !405
  store i8 1, i8* %103, align 2, !dbg !406, !tbaa !267
  %104 = getelementptr inbounds i8, i8* %87, i64 23, !dbg !407
  store i8 0, i8* %104, align 1, !dbg !408, !tbaa !270
  br label %106

; <label>:105:                                    ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #10, !dbg !409
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !414
  tail call void @ukplat_terminate(i32 3) #9, !dbg !414
  unreachable, !dbg !414

; <label>:106:                                    ; preds = %72, %86, %76, %8, %11, %89, %46, %44
  %107 = phi %struct.pbuf* [ null, %44 ], [ null, %46 ], [ %90, %89 ], [ %12, %11 ], [ null, %8 ], [ null, %76 ], [ null, %86 ], [ %73, %72 ], !dbg !418
  ret %struct.pbuf* %107, !dbg !419
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloc_reference(i8*, i16 zeroext, i32) local_unnamed_addr #0 !dbg !197 {
  %4 = or i32 %2, 64, !dbg !423
  %5 = icmp eq i32 %4, 65, !dbg !423
  br i1 %5, label %7, label %6, !dbg !423

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #10, !dbg !424
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !425
  tail call void @ukplat_terminate(i32 3) #9, !dbg !425
  unreachable, !dbg !425

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @memp_malloc(i32 15) #8, !dbg !426
  %9 = icmp eq i8* %8, null, !dbg !427
  br i1 %9, label %24, label %10, !dbg !428

; <label>:10:                                     ; preds = %7
  %11 = bitcast i8* %8 to %struct.pbuf*, !dbg !429
  %12 = bitcast i8* %8 to %struct.pbuf**, !dbg !438
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !439, !tbaa !243
  %13 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !440
  %14 = bitcast i8* %13 to i8**, !dbg !440
  store i8* %0, i8** %14, align 8, !dbg !441, !tbaa !251
  %15 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !442
  %16 = bitcast i8* %15 to i16*, !dbg !442
  store i16 %1, i16* %16, align 8, !dbg !443, !tbaa !254
  %17 = getelementptr inbounds i8, i8* %8, i64 18, !dbg !444
  %18 = bitcast i8* %17 to i16*, !dbg !444
  store i16 %1, i16* %18, align 2, !dbg !445, !tbaa !257
  %19 = trunc i32 %2 to i8, !dbg !446
  %20 = getelementptr inbounds i8, i8* %8, i64 20, !dbg !447
  store i8 %19, i8* %20, align 4, !dbg !448, !tbaa !261
  %21 = getelementptr inbounds i8, i8* %8, i64 21, !dbg !449
  store i8 0, i8* %21, align 1, !dbg !450, !tbaa !264
  %22 = getelementptr inbounds i8, i8* %8, i64 22, !dbg !451
  store i8 1, i8* %22, align 2, !dbg !452, !tbaa !267
  %23 = getelementptr inbounds i8, i8* %8, i64 23, !dbg !453
  store i8 0, i8* %23, align 1, !dbg !454, !tbaa !270
  br label %24, !dbg !455

; <label>:24:                                     ; preds = %7, %10
  %25 = phi %struct.pbuf* [ %11, %10 ], [ null, %7 ], !dbg !456
  ret %struct.pbuf* %25, !dbg !457
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #0 !dbg !458 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !475
  br i1 %2, label %3, label %4, !dbg !477

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !478
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !484
  tail call void @ukplat_terminate(i32 3) #9, !dbg !484
  unreachable, !dbg !484

; <label>:4:                                      ; preds = %1, %40
  %5 = phi %struct.pbuf* [ %17, %40 ], [ %0, %1 ]
  %6 = phi i8 [ %41, %40 ], [ 0, %1 ]
  %7 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !489
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 6, !dbg !492
  %9 = load i8, i8* %8, align 2, !dbg !492, !tbaa !267
  %10 = icmp eq i8 %9, 0, !dbg !492
  br i1 %10, label %11, label %12, !dbg !495

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0)) #10, !dbg !496
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !499
  tail call void @ukplat_terminate(i32 3) #9, !dbg !499
  unreachable, !dbg !499

; <label>:12:                                     ; preds = %4
  %13 = add i8 %9, -1, !dbg !503
  store i8 %13, i8* %8, align 2, !dbg !503, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %7) #8, !dbg !505
  %14 = icmp eq i8 %13, 0, !dbg !506
  br i1 %14, label %15, label %43, !dbg !507

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !508
  %17 = load %struct.pbuf*, %struct.pbuf** %16, align 8, !dbg !508, !tbaa !243
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 5, !dbg !510
  %19 = load i8, i8* %18, align 1, !dbg !510, !tbaa !264
  %20 = and i8 %19, 2, !dbg !511
  %21 = icmp eq i8 %20, 0, !dbg !512
  br i1 %21, label %29, label %22, !dbg !513

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 1, !dbg !515
  %24 = bitcast %struct.pbuf* %23 to void (%struct.pbuf*)**, !dbg !515
  %25 = load void (%struct.pbuf*)*, void (%struct.pbuf*)** %24, align 8, !dbg !515, !tbaa !518
  %26 = icmp eq void (%struct.pbuf*)* %25, null, !dbg !515
  br i1 %26, label %27, label %28, !dbg !520

; <label>:27:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #10, !dbg !521
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !524
  tail call void @ukplat_terminate(i32 3) #9, !dbg !524
  unreachable, !dbg !524

; <label>:28:                                     ; preds = %22
  tail call void %25(%struct.pbuf* nonnull %5) #8, !dbg !528
  br label %40, !dbg !529

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 4, !dbg !530
  %31 = load i8, i8* %30, align 4, !dbg !530, !tbaa !261
  %32 = trunc i8 %31 to i4, !dbg !532
  switch i4 %32, label %39 [
    i4 2, label %33
    i4 1, label %35
    i4 0, label %37
  ], !dbg !532

; <label>:33:                                     ; preds = %29
  %34 = bitcast %struct.pbuf* %5 to i8*, !dbg !534
  tail call void @memp_free(i32 16, i8* %34) #8, !dbg !537
  br label %40, !dbg !538

; <label>:35:                                     ; preds = %29
  %36 = bitcast %struct.pbuf* %5 to i8*, !dbg !539
  tail call void @memp_free(i32 15, i8* %36) #8, !dbg !542
  br label %40, !dbg !543

; <label>:37:                                     ; preds = %29
  %38 = bitcast %struct.pbuf* %5 to i8*, !dbg !544
  tail call void @mem_free(i8* %38) #8, !dbg !547
  br label %40

; <label>:39:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #10, !dbg !548
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !554
  tail call void @ukplat_terminate(i32 3) #9, !dbg !554
  unreachable, !dbg !554

; <label>:40:                                     ; preds = %28, %35, %37, %33
  %41 = add i8 %6, 1, !dbg !558
  %42 = icmp eq %struct.pbuf* %17, null, !dbg !559
  br i1 %42, label %43, label %4, !dbg !560, !llvm.loop !561

; <label>:43:                                     ; preds = %12, %40
  %44 = phi i8 [ %41, %40 ], [ %6, %12 ]
  ret i8 %44, !dbg !563
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !139 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !565
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !565
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !567
  call void @llvm.va_start(i8* nonnull %3), !dbg !567
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.38, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #8, !dbg !568
  call void @llvm.va_end(i8* nonnull %3), !dbg !571
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !572
  ret void, !dbg !572
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @mem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloced_custom(i32, i16 zeroext, i32, %struct.pbuf_custom*, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !573 {
  %7 = and i32 %0, 65535, !dbg !592
  %8 = zext i16 %1 to i32, !dbg !594
  %9 = add nuw nsw i32 %7, %8, !dbg !595
  %10 = zext i16 %5 to i32, !dbg !596
  %11 = icmp ugt i32 %9, %10, !dbg !597
  br i1 %11, label %27, label %12, !dbg !598

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i8* %4, null, !dbg !599
  %14 = zext i32 %7 to i64, !dbg !601
  %15 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !601
  %16 = select i1 %13, i8* null, i8* %15, !dbg !604
  %17 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, !dbg !605
  %18 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 0, !dbg !613
  store %struct.pbuf* null, %struct.pbuf** %18, align 8, !dbg !614, !tbaa !243
  %19 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 1, !dbg !615
  store i8* %16, i8** %19, align 8, !dbg !616, !tbaa !251
  %20 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 2, !dbg !617
  store i16 %1, i16* %20, align 8, !dbg !618, !tbaa !254
  %21 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 3, !dbg !619
  store i16 %1, i16* %21, align 2, !dbg !620, !tbaa !257
  %22 = trunc i32 %2 to i8, !dbg !621
  %23 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 4, !dbg !622
  store i8 %22, i8* %23, align 4, !dbg !623, !tbaa !261
  %24 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 5, !dbg !624
  store i8 2, i8* %24, align 1, !dbg !625, !tbaa !264
  %25 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 6, !dbg !626
  store i8 1, i8* %25, align 2, !dbg !627, !tbaa !267
  %26 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 7, !dbg !628
  store i8 0, i8* %26, align 1, !dbg !629, !tbaa !270
  br label %27, !dbg !630

; <label>:27:                                     ; preds = %6, %12
  %28 = phi %struct.pbuf* [ %17, %12 ], [ null, %6 ], !dbg !631
  ret %struct.pbuf* %28, !dbg !632
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !633 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !644
  br i1 %3, label %4, label %5, !dbg !647

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #10, !dbg !648
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !651
  tail call void @ukplat_terminate(i32 3) #9, !dbg !651
  unreachable, !dbg !651

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !655
  %7 = load i16, i16* %6, align 8, !dbg !655, !tbaa !254
  %8 = icmp ugt i16 %7, %1, !dbg !657
  br i1 %8, label %9, label %65, !dbg !658

; <label>:9:                                      ; preds = %5
  %10 = sub i16 %1, %7
  br label %11, !dbg !659

; <label>:11:                                     ; preds = %9, %17
  %12 = phi i16 [ %18, %17 ], [ %1, %9 ], !dbg !660
  %13 = phi %struct.pbuf* [ %23, %17 ], [ %0, %9 ], !dbg !660
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !659
  %15 = load i16, i16* %14, align 2, !dbg !659, !tbaa !257
  %16 = icmp ugt i16 %12, %15, !dbg !664
  br i1 %16, label %17, label %26, !dbg !665

; <label>:17:                                     ; preds = %11
  %18 = sub i16 %12, %15, !dbg !666
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 2, !dbg !667
  %20 = load i16, i16* %19, align 8, !dbg !667, !tbaa !254
  %21 = add i16 %10, %20, !dbg !668
  store i16 %21, i16* %19, align 8, !dbg !669, !tbaa !254
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 0, !dbg !670
  %23 = load %struct.pbuf*, %struct.pbuf** %22, align 8, !dbg !670, !tbaa !243
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !671
  br i1 %24, label %25, label %11, !dbg !674, !llvm.loop !675

; <label>:25:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #10, !dbg !677
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !680
  tail call void @ukplat_terminate(i32 3) #9, !dbg !680
  unreachable, !dbg !680

; <label>:26:                                     ; preds = %11
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !659
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 4, !dbg !684
  %29 = load i8, i8* %28, align 4, !dbg !684, !tbaa !261
  %30 = and i8 %29, 15, !dbg !684
  %31 = icmp ne i8 %30, 0, !dbg !684
  %32 = icmp eq i16 %12, %15, !dbg !686
  %33 = or i1 %32, %31, !dbg !687
  br i1 %33, label %55, label %34, !dbg !687

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 5, !dbg !688
  %36 = load i8, i8* %35, align 1, !dbg !688, !tbaa !264
  %37 = and i8 %36, 2, !dbg !689
  %38 = icmp eq i8 %37, 0, !dbg !690
  br i1 %38, label %39, label %55, !dbg !691

; <label>:39:                                     ; preds = %34
  %40 = bitcast %struct.pbuf* %13 to i8*, !dbg !692
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 1, !dbg !694
  %42 = bitcast i8** %41 to i64*, !dbg !694
  %43 = load i64, i64* %42, align 8, !dbg !694, !tbaa !251
  %44 = ptrtoint %struct.pbuf* %13 to i64, !dbg !695
  %45 = zext i16 %12 to i64, !dbg !696
  %46 = sub i64 %45, %44, !dbg !695
  %47 = add i64 %46, %43, !dbg !697
  %48 = tail call i8* @mem_trim(i8* %40, i64 %47) #8, !dbg !698
  %49 = icmp eq i8* %48, null, !dbg !699
  br i1 %49, label %54, label %50, !dbg !702

; <label>:50:                                     ; preds = %39
  %51 = bitcast i8* %48 to %struct.pbuf*, !dbg !703
  %52 = getelementptr inbounds i8, i8* %48, i64 18, !dbg !704
  %53 = bitcast i8* %52 to i16*, !dbg !704
  br label %55, !dbg !702

; <label>:54:                                     ; preds = %39
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)) #10, !dbg !705
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !708
  tail call void @ukplat_terminate(i32 3) #9, !dbg !708
  unreachable, !dbg !708

; <label>:55:                                     ; preds = %50, %26, %34
  %56 = phi i16* [ %53, %50 ], [ %27, %26 ], [ %27, %34 ], !dbg !704
  %57 = phi %struct.pbuf* [ %51, %50 ], [ %13, %26 ], [ %13, %34 ], !dbg !712
  store i16 %12, i16* %56, align 2, !dbg !713, !tbaa !257
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 2, !dbg !714
  store i16 %12, i16* %58, align 8, !dbg !715, !tbaa !254
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 0, !dbg !716
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 8, !dbg !716, !tbaa !243
  %61 = icmp eq %struct.pbuf* %60, null, !dbg !718
  br i1 %61, label %64, label %62, !dbg !719

; <label>:62:                                     ; preds = %55
  %63 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %60) #10, !dbg !720
  br label %64, !dbg !722

; <label>:64:                                     ; preds = %55, %62
  store %struct.pbuf* null, %struct.pbuf** %59, align 8, !dbg !723, !tbaa !243
  br label %65, !dbg !724

; <label>:65:                                     ; preds = %5, %64
  ret void, !dbg !724
}

; Function Attrs: noredzone
declare dso_local i8* @mem_trim(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !725 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !747
  br i1 %3, label %4, label %5, !dbg !750

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !751
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !754
  tail call void @ukplat_terminate(i32 3) #9, !dbg !754
  unreachable, !dbg !754

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !758
  br i1 %6, label %34, label %7, !dbg !760

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !761
  br i1 %8, label %34, label %9, !dbg !763

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !764
  %11 = and i32 %10, 65535, !dbg !765
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !768
  %13 = load i16, i16* %12, align 8, !dbg !768, !tbaa !254
  %14 = trunc i64 %1 to i16, !dbg !769
  %15 = add i16 %13, %14, !dbg !769
  %16 = zext i16 %15 to i32, !dbg !769
  %17 = icmp ugt i32 %11, %16, !dbg !770
  br i1 %17, label %34, label %18, !dbg !771

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !772
  %20 = load i8, i8* %19, align 4, !dbg !772, !tbaa !261
  %21 = icmp slt i8 %20, 0, !dbg !773
  br i1 %21, label %22, label %34, !dbg !775

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !776
  %24 = load i8*, i8** %23, align 8, !dbg !776, !tbaa !251
  %25 = sub i64 0, %1, !dbg !778
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !778
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !780
  %28 = bitcast %struct.pbuf* %27 to i8*, !dbg !780
  %29 = icmp ult i8* %26, %28, !dbg !782
  br i1 %29, label %34, label %30, !dbg !783

; <label>:30:                                     ; preds = %22
  store i8* %26, i8** %23, align 8, !dbg !784, !tbaa !251
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !785
  %32 = load i16, i16* %31, align 2, !dbg !785, !tbaa !257
  %33 = add i16 %32, %14, !dbg !786
  store i16 %33, i16* %31, align 2, !dbg !787, !tbaa !257
  store i16 %15, i16* %12, align 8, !dbg !788, !tbaa !254
  br label %34, !dbg !789

; <label>:34:                                     ; preds = %18, %5, %7, %9, %22, %30
  %35 = phi i8 [ 0, %30 ], [ 1, %5 ], [ 0, %7 ], [ 1, %9 ], [ 1, %22 ], [ 1, %18 ], !dbg !790
  ret i8 %35, !dbg !794
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header_force(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !795 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !805
  br i1 %3, label %4, label %5, !dbg !806

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !807
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !808
  tail call void @ukplat_terminate(i32 3) #9, !dbg !808
  unreachable, !dbg !808

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !809
  br i1 %6, label %34, label %7, !dbg !810

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !811
  br i1 %8, label %34, label %9, !dbg !812

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !813
  %11 = and i32 %10, 65535, !dbg !814
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !816
  %13 = load i16, i16* %12, align 8, !dbg !816, !tbaa !254
  %14 = trunc i64 %1 to i16, !dbg !817
  %15 = add i16 %13, %14, !dbg !817
  %16 = zext i16 %15 to i32, !dbg !817
  %17 = icmp ugt i32 %11, %16, !dbg !818
  br i1 %17, label %34, label %18, !dbg !819

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !820
  %20 = load i8, i8* %19, align 4, !dbg !820, !tbaa !261
  %21 = icmp slt i8 %20, 0, !dbg !821
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !822
  %23 = load i8*, i8** %22, align 8, !dbg !822, !tbaa !251
  %24 = sub i64 0, %1, !dbg !822
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !822
  br i1 %21, label %26, label %30, !dbg !824

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !825
  %28 = bitcast %struct.pbuf* %27 to i8*, !dbg !825
  %29 = icmp ult i8* %25, %28, !dbg !826
  br i1 %29, label %34, label %30, !dbg !827

; <label>:30:                                     ; preds = %18, %26
  store i8* %25, i8** %22, align 8, !dbg !828, !tbaa !251
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !829
  %32 = load i16, i16* %31, align 2, !dbg !829, !tbaa !257
  %33 = add i16 %32, %14, !dbg !830
  store i16 %33, i16* %31, align 2, !dbg !831, !tbaa !257
  store i16 %15, i16* %12, align 8, !dbg !832, !tbaa !254
  br label %34, !dbg !833

; <label>:34:                                     ; preds = %5, %7, %9, %26, %30
  %35 = phi i8 [ 0, %30 ], [ 1, %5 ], [ 0, %7 ], [ 1, %9 ], [ 1, %26 ], !dbg !834
  ret i8 %35, !dbg !835
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !836 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !844
  br i1 %3, label %4, label %5, !dbg !847

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #10, !dbg !848
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !851
  tail call void @ukplat_terminate(i32 3) #9, !dbg !851
  unreachable, !dbg !851

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !855
  br i1 %6, label %26, label %7, !dbg !857

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !858
  br i1 %8, label %26, label %9, !dbg !860

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !861
  %11 = and i32 %10, 65535, !dbg !862
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !862
  %13 = load i16, i16* %12, align 2, !dbg !862, !tbaa !257
  %14 = zext i16 %13 to i32, !dbg !862
  %15 = icmp ugt i32 %11, %14, !dbg !862
  br i1 %15, label %16, label %17, !dbg !866

; <label>:16:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #10, !dbg !867
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !870
  tail call void @ukplat_terminate(i32 3) #9, !dbg !870
  unreachable, !dbg !870

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !874
  %19 = load i8*, i8** %18, align 8, !dbg !876, !tbaa !251
  %20 = getelementptr inbounds i8, i8* %19, i64 %1, !dbg !877
  store i8* %20, i8** %18, align 8, !dbg !878, !tbaa !251
  %21 = trunc i64 %1 to i16, !dbg !879
  %22 = sub i16 %13, %21, !dbg !879
  store i16 %22, i16* %12, align 2, !dbg !880, !tbaa !257
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !881
  %24 = load i16, i16* %23, align 8, !dbg !881, !tbaa !254
  %25 = sub i16 %24, %21, !dbg !882
  store i16 %25, i16* %23, align 8, !dbg !883, !tbaa !254
  br label %26, !dbg !884

; <label>:26:                                     ; preds = %7, %5, %17
  %27 = phi i8 [ 0, %17 ], [ 1, %5 ], [ 0, %7 ], !dbg !885
  ret i8 %27, !dbg !886
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !887 {
  %3 = tail call fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf* %0, i16 signext %1, i8 zeroext 0) #10, !dbg !899
  ret i8 %3, !dbg !900
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf*, i16 signext, i8 zeroext) unnamed_addr #0 !dbg !901 {
  %4 = icmp slt i16 %1, 0, !dbg !911
  %5 = sext i16 %1 to i64, !dbg !913
  br i1 %4, label %6, label %9, !dbg !915

; <label>:6:                                      ; preds = %3
  %7 = sub nsw i64 0, %5, !dbg !916
  %8 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 %7) #10, !dbg !918
  br label %44, !dbg !919

; <label>:9:                                      ; preds = %3
  %10 = icmp eq %struct.pbuf* %0, null, !dbg !924
  br i1 %10, label %11, label %12, !dbg !925

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #8, !dbg !926
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !927
  tail call void @ukplat_terminate(i32 3) #9, !dbg !927
  unreachable, !dbg !927

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i16 %1, 0, !dbg !928
  br i1 %13, label %44, label %14, !dbg !929

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !930
  %16 = load i16, i16* %15, align 8, !dbg !930, !tbaa !254
  %17 = add i16 %16, %1, !dbg !931
  %18 = icmp ult i16 %17, %1, !dbg !932
  br i1 %18, label %44, label %19, !dbg !933

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !934
  %21 = load i8, i8* %20, align 4, !dbg !934, !tbaa !261
  %22 = icmp slt i8 %21, 0, !dbg !935
  br i1 %22, label %23, label %31, !dbg !936

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !937
  %25 = load i8*, i8** %24, align 8, !dbg !937, !tbaa !251
  %26 = sub nsw i64 0, %5, !dbg !938
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !938
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !940
  %29 = bitcast %struct.pbuf* %28 to i8*, !dbg !940
  %30 = icmp ult i8* %27, %29, !dbg !941
  br i1 %30, label %44, label %38, !dbg !942

; <label>:31:                                     ; preds = %19
  %32 = icmp eq i8 %2, 0, !dbg !943
  br i1 %32, label %44, label %33, !dbg !944

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !945
  %35 = load i8*, i8** %34, align 8, !dbg !945, !tbaa !251
  %36 = sub nsw i64 0, %5, !dbg !947
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !947
  br label %38

; <label>:38:                                     ; preds = %33, %23
  %39 = phi i8** [ %24, %23 ], [ %34, %33 ], !dbg !948
  %40 = phi i8* [ %27, %23 ], [ %37, %33 ], !dbg !949
  store i8* %40, i8** %39, align 8, !dbg !950, !tbaa !251
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !951
  %42 = load i16, i16* %41, align 2, !dbg !951, !tbaa !257
  %43 = add i16 %42, %1, !dbg !952
  store i16 %43, i16* %41, align 2, !dbg !953, !tbaa !257
  store i16 %17, i16* %15, align 8, !dbg !954, !tbaa !254
  br label %44, !dbg !955

; <label>:44:                                     ; preds = %38, %31, %23, %14, %12, %6
  %45 = phi i8 [ %8, %6 ], [ 0, %38 ], [ 0, %12 ], [ 1, %14 ], [ 1, %23 ], [ 1, %31 ], !dbg !913
  ret i8 %45, !dbg !956
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !957 {
  %3 = tail call fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf* %0, i16 signext %1, i8 zeroext 1) #10, !dbg !963
  ret i8 %3, !dbg !964
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_free_header(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !965 {
  %3 = icmp ne i16 %1, 0, !dbg !981
  %4 = icmp ne %struct.pbuf* %0, null, !dbg !982
  %5 = and i1 %3, %4, !dbg !982
  br i1 %5, label %6, label %23, !dbg !983

; <label>:6:                                      ; preds = %2, %15
  %7 = phi %struct.pbuf* [ %18, %15 ], [ %0, %2 ]
  %8 = phi i16 [ %16, %15 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !984
  %10 = load i16, i16* %9, align 2, !dbg !984, !tbaa !257
  %11 = icmp ult i16 %8, %10, !dbg !985
  br i1 %11, label %12, label %15, !dbg !986

; <label>:12:                                     ; preds = %6
  %13 = zext i16 %8 to i64, !dbg !987
  %14 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %7, i64 %13) #10, !dbg !989
  br label %23, !dbg !983

; <label>:15:                                     ; preds = %6
  %16 = sub i16 %8, %10, !dbg !991
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !992
  %18 = load %struct.pbuf*, %struct.pbuf** %17, align 8, !dbg !992, !tbaa !243
  store %struct.pbuf* null, %struct.pbuf** %17, align 8, !dbg !993, !tbaa !243
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #10, !dbg !994
  %20 = icmp ne i16 %16, 0, !dbg !981
  %21 = icmp ne %struct.pbuf* %18, null, !dbg !982
  %22 = and i1 %20, %21, !dbg !982
  br i1 %22, label %6, label %23, !dbg !983, !llvm.loop !995

; <label>:23:                                     ; preds = %15, %12, %2
  %24 = phi %struct.pbuf* [ %0, %2 ], [ %7, %12 ], [ %18, %15 ], !dbg !997
  ret %struct.pbuf* %24, !dbg !998
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @pbuf_clen(%struct.pbuf* readonly) local_unnamed_addr #6 !dbg !999 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1009
  br i1 %2, label %10, label %3, !dbg !1010

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i16 [ %6, %3 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %8, %3 ], [ %0, %1 ]
  %6 = add i16 %4, 1, !dbg !1011
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1013
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1013, !tbaa !243
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1009
  br i1 %9, label %10, label %3, !dbg !1010, !llvm.loop !1014

; <label>:10:                                     ; preds = %3, %1
  %11 = phi i16 [ 0, %1 ], [ %6, %3 ], !dbg !1016
  ret i16 %11, !dbg !1017
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #0 !dbg !1018 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1026
  br i1 %2, label %11, label %3, !dbg !1027

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1028
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1030
  %6 = load i8, i8* %5, align 2, !dbg !1030, !tbaa !267
  %7 = add i8 %6, 1, !dbg !1030
  store i8 %7, i8* %5, align 2, !dbg !1030, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #8, !dbg !1030
  %8 = load i8, i8* %5, align 2, !dbg !1031, !tbaa !267
  %9 = icmp eq i8 %8, 0, !dbg !1031
  br i1 %9, label %10, label %11, !dbg !1034

; <label>:10:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #10, !dbg !1035
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1038
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1038
  unreachable, !dbg !1038

; <label>:11:                                     ; preds = %3, %1
  ret void, !dbg !1042
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1043 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1052
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1052
  %5 = and i1 %3, %4, !dbg !1052
  br i1 %5, label %6, label %14, !dbg !1052

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1056
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1056, !tbaa !243
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1059
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1060
  %11 = load i16, i16* %10, align 8, !dbg !1060, !tbaa !254
  br i1 %9, label %28, label %12, !dbg !1063

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2
  br label %15, !dbg !1063

; <label>:14:                                     ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0)) #10, !dbg !1064
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1067
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1067
  unreachable, !dbg !1067

; <label>:15:                                     ; preds = %12, %15
  %16 = phi i16 [ %11, %12 ], [ %25, %15 ]
  %17 = phi i16* [ %10, %12 ], [ %24, %15 ]
  %18 = phi %struct.pbuf* [ %8, %12 ], [ %22, %15 ]
  %19 = load i16, i16* %13, align 8, !dbg !1071, !tbaa !254
  %20 = add i16 %19, %16, !dbg !1073
  store i16 %20, i16* %17, align 8, !dbg !1074, !tbaa !254
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1056
  %22 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !1056, !tbaa !243
  %23 = icmp eq %struct.pbuf* %22, null, !dbg !1059
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !1060
  %25 = load i16, i16* %24, align 8, !dbg !1060, !tbaa !254
  br i1 %23, label %26, label %15, !dbg !1063, !llvm.loop !1075

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1056
  br label %28, !dbg !1077

; <label>:28:                                     ; preds = %26, %6
  %29 = phi %struct.pbuf* [ %0, %6 ], [ %18, %26 ], !dbg !1078
  %30 = phi %struct.pbuf** [ %7, %6 ], [ %27, %26 ], !dbg !1056
  %31 = phi i16* [ %10, %6 ], [ %24, %26 ], !dbg !1060
  %32 = phi i16 [ %11, %6 ], [ %25, %26 ], !dbg !1060
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i64 0, i32 3, !dbg !1077
  %34 = load i16, i16* %33, align 2, !dbg !1077, !tbaa !257
  %35 = icmp eq i16 %32, %34, !dbg !1077
  br i1 %35, label %37, label %36, !dbg !1079

; <label>:36:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0)) #10, !dbg !1080
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1083
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1083
  unreachable, !dbg !1083

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1087
  %39 = load i16, i16* %38, align 8, !dbg !1087, !tbaa !254
  %40 = add i16 %39, %32, !dbg !1088
  store i16 %40, i16* %31, align 8, !dbg !1089, !tbaa !254
  store %struct.pbuf* %1, %struct.pbuf** %30, align 8, !dbg !1090, !tbaa !243
  ret void, !dbg !1091
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_chain(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1092 {
  tail call void @pbuf_cat(%struct.pbuf* %0, %struct.pbuf* %1) #10, !dbg !1098
  %3 = icmp eq %struct.pbuf* %1, null, !dbg !1101
  br i1 %3, label %12, label %4, !dbg !1102

; <label>:4:                                      ; preds = %2
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !1103
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 6, !dbg !1104
  %7 = load i8, i8* %6, align 2, !dbg !1104, !tbaa !267
  %8 = add i8 %7, 1, !dbg !1104
  store i8 %8, i8* %6, align 2, !dbg !1104, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #8, !dbg !1104
  %9 = load i8, i8* %6, align 2, !dbg !1105, !tbaa !267
  %10 = icmp eq i8 %9, 0, !dbg !1105
  br i1 %10, label %11, label %12, !dbg !1106

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #8, !dbg !1107
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1108
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1108
  unreachable, !dbg !1108

; <label>:12:                                     ; preds = %2, %4
  ret void, !dbg !1109
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_dechain(%struct.pbuf* nocapture) local_unnamed_addr #0 !dbg !1110 {
  %2 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1119
  %3 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !1119, !tbaa !243
  %4 = icmp eq %struct.pbuf* %3, null, !dbg !1121
  br i1 %4, label %5, label %8, !dbg !1123

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1124
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1124
  br label %24, !dbg !1123

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %3, i64 0, i32 2, !dbg !1127
  %10 = load i16, i16* %9, align 8, !dbg !1127, !tbaa !254
  %11 = zext i16 %10 to i32, !dbg !1127
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1127
  %13 = load i16, i16* %12, align 8, !dbg !1127, !tbaa !254
  %14 = zext i16 %13 to i32, !dbg !1127
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1127
  %16 = load i16, i16* %15, align 2, !dbg !1127, !tbaa !257
  %17 = zext i16 %16 to i32, !dbg !1127
  %18 = sub nsw i32 %14, %17, !dbg !1127
  %19 = icmp eq i32 %18, %11, !dbg !1127
  br i1 %19, label %21, label %20, !dbg !1131

; <label>:20:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0)) #10, !dbg !1132
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1135
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1135
  unreachable, !dbg !1135

; <label>:21:                                     ; preds = %8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8, !dbg !1139, !tbaa !243
  store i16 %16, i16* %12, align 8, !dbg !1140, !tbaa !254
  %22 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %3) #10, !dbg !1141
  %23 = zext i8 %22 to i32, !dbg !1142
  br label %24, !dbg !1142

; <label>:24:                                     ; preds = %5, %21
  %25 = phi i16* [ %7, %5 ], [ %15, %21 ], !dbg !1124
  %26 = phi i16* [ %6, %5 ], [ %12, %21 ], !dbg !1124
  %27 = phi i32 [ 1, %5 ], [ %23, %21 ]
  %28 = load i16, i16* %26, align 8, !dbg !1124, !tbaa !254
  %29 = load i16, i16* %25, align 2, !dbg !1124, !tbaa !257
  %30 = icmp eq i16 %28, %29, !dbg !1124
  br i1 %30, label %32, label %31, !dbg !1143

; <label>:31:                                     ; preds = %24
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #10, !dbg !1144
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1147
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1147
  unreachable, !dbg !1147

; <label>:32:                                     ; preds = %24
  %33 = icmp eq i32 %27, 0, !dbg !1151
  %34 = select i1 %33, %struct.pbuf* %3, %struct.pbuf* null, !dbg !1152
  ret %struct.pbuf* %34, !dbg !1153
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_copy(%struct.pbuf* readonly, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1154 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1172
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1172
  %5 = and i1 %3, %4, !dbg !1172
  br i1 %5, label %6, label %12, !dbg !1172

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1172
  %8 = load i16, i16* %7, align 8, !dbg !1172, !tbaa !254
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1172
  %10 = load i16, i16* %9, align 8, !dbg !1172, !tbaa !254
  %11 = icmp ult i16 %8, %10, !dbg !1172
  br i1 %11, label %12, label %13, !dbg !1175

; <label>:12:                                     ; preds = %6, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0)) #10, !dbg !1176
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1179
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1179
  unreachable, !dbg !1179

; <label>:13:                                     ; preds = %6, %90
  %14 = phi %struct.pbuf* [ %52, %90 ], [ %1, %6 ]
  %15 = phi i64 [ %63, %90 ], [ 0, %6 ], !dbg !1183
  %16 = phi i64 [ %53, %90 ], [ 0, %6 ], !dbg !1187
  %17 = phi %struct.pbuf* [ %64, %90 ], [ %0, %6 ]
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 3, !dbg !1190
  %19 = load i16, i16* %18, align 2, !dbg !1190, !tbaa !257
  %20 = zext i16 %19 to i64, !dbg !1192
  %21 = sub i64 %20, %15, !dbg !1193
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !1194
  %23 = load i16, i16* %22, align 2, !dbg !1194, !tbaa !257
  %24 = zext i16 %23 to i64, !dbg !1195
  %25 = sub i64 %24, %16, !dbg !1196
  %26 = icmp ult i64 %21, %25, !dbg !1197
  %27 = select i1 %26, i64 %21, i64 %25
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 1, !dbg !1199
  %29 = load i8*, i8** %28, align 8, !dbg !1199, !tbaa !251
  %30 = getelementptr inbounds i8, i8* %29, i64 %15, !dbg !1199
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !1199
  %32 = load i8*, i8** %31, align 8, !dbg !1199, !tbaa !251
  %33 = getelementptr inbounds i8, i8* %32, i64 %16, !dbg !1199
  %34 = tail call i8* @memcpy(i8* %30, i8* %33, i64 %27) #8, !dbg !1199
  %35 = add i64 %27, %15, !dbg !1200
  %36 = add i64 %27, %16, !dbg !1201
  %37 = load i16, i16* %18, align 2, !dbg !1202, !tbaa !257
  %38 = zext i16 %37 to i64, !dbg !1202
  %39 = icmp ugt i64 %35, %38, !dbg !1202
  br i1 %39, label %40, label %41, !dbg !1205

; <label>:40:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #10, !dbg !1206
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1209
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1209
  unreachable, !dbg !1209

; <label>:41:                                     ; preds = %13
  %42 = load i16, i16* %22, align 2, !dbg !1213, !tbaa !257
  %43 = zext i16 %42 to i64, !dbg !1213
  %44 = icmp ugt i64 %36, %43, !dbg !1213
  br i1 %44, label %45, label %46, !dbg !1216

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #10, !dbg !1217
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1220
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1220
  unreachable, !dbg !1220

; <label>:46:                                     ; preds = %41
  %47 = icmp ult i64 %36, %43, !dbg !1224
  br i1 %47, label %51, label %48, !dbg !1225

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !1226
  %50 = load %struct.pbuf*, %struct.pbuf** %49, align 8, !dbg !1226, !tbaa !243
  br label %51, !dbg !1227

; <label>:51:                                     ; preds = %46, %48
  %52 = phi %struct.pbuf* [ %50, %48 ], [ %14, %46 ]
  %53 = phi i64 [ 0, %48 ], [ %36, %46 ], !dbg !1228
  %54 = icmp eq i64 %35, %38, !dbg !1229
  br i1 %54, label %55, label %62, !dbg !1230

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 0, !dbg !1231
  %57 = load %struct.pbuf*, %struct.pbuf** %56, align 8, !dbg !1231, !tbaa !243
  %58 = icmp ne %struct.pbuf* %57, null, !dbg !1232
  %59 = icmp eq %struct.pbuf* %52, null, !dbg !1232
  %60 = or i1 %59, %58, !dbg !1232
  br i1 %60, label %62, label %61, !dbg !1232

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0)) #10, !dbg !1235
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1238
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1238
  unreachable, !dbg !1238

; <label>:62:                                     ; preds = %55, %51
  %63 = phi i64 [ 0, %55 ], [ %35, %51 ], !dbg !1228
  %64 = phi %struct.pbuf* [ %57, %55 ], [ %17, %51 ]
  %65 = icmp ne %struct.pbuf* %52, null, !dbg !1242
  br i1 %65, label %66, label %77, !dbg !1244

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 3, !dbg !1245
  %68 = load i16, i16* %67, align 2, !dbg !1245, !tbaa !257
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 2, !dbg !1246
  %70 = load i16, i16* %69, align 8, !dbg !1246, !tbaa !254
  %71 = icmp eq i16 %68, %70, !dbg !1247
  br i1 %71, label %72, label %77, !dbg !1248

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 0, !dbg !1249
  %74 = load %struct.pbuf*, %struct.pbuf** %73, align 8, !dbg !1249, !tbaa !243
  %75 = icmp eq %struct.pbuf* %74, null, !dbg !1249
  br i1 %75, label %77, label %76, !dbg !1253

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1254
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1257
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1257
  unreachable, !dbg !1257

; <label>:77:                                     ; preds = %72, %66, %62
  %78 = icmp eq %struct.pbuf* %64, null, !dbg !1261
  br i1 %78, label %90, label %79, !dbg !1263

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 3, !dbg !1264
  %81 = load i16, i16* %80, align 2, !dbg !1264, !tbaa !257
  %82 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 2, !dbg !1265
  %83 = load i16, i16* %82, align 8, !dbg !1265, !tbaa !254
  %84 = icmp eq i16 %81, %83, !dbg !1266
  br i1 %84, label %85, label %90, !dbg !1267

; <label>:85:                                     ; preds = %79
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 0, !dbg !1268
  %87 = load %struct.pbuf*, %struct.pbuf** %86, align 8, !dbg !1268, !tbaa !243
  %88 = icmp eq %struct.pbuf* %87, null, !dbg !1268
  br i1 %88, label %90, label %89, !dbg !1272

; <label>:89:                                     ; preds = %85
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #10, !dbg !1273
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1276
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1276
  unreachable, !dbg !1276

; <label>:90:                                     ; preds = %77, %79, %85
  br i1 %65, label %13, label %91, !dbg !1280, !llvm.loop !1281

; <label>:91:                                     ; preds = %90
  ret i8 0, !dbg !1284
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1285 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1303
  br i1 %5, label %6, label %7, !dbg !1306

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0)) #10, !dbg !1307
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1310
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1310
  unreachable, !dbg !1310

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i8* %1, null, !dbg !1314
  br i1 %8, label %11, label %9, !dbg !1317

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i16 %2, 0, !dbg !1319
  br i1 %10, label %50, label %12, !dbg !1322

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0)) #10, !dbg !1323
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1326
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1326
  unreachable, !dbg !1326

; <label>:12:                                     ; preds = %9, %40
  %13 = phi i16 [ %44, %40 ], [ %2, %9 ]
  %14 = phi i16 [ %43, %40 ], [ 0, %9 ]
  %15 = phi i16 [ %42, %40 ], [ 0, %9 ]
  %16 = phi %struct.pbuf* [ %46, %40 ], [ %0, %9 ]
  %17 = phi i16 [ %41, %40 ], [ %3, %9 ]
  %18 = icmp eq i16 %17, 0, !dbg !1330
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 3
  %20 = load i16, i16* %19, align 2, !dbg !1333, !tbaa !257
  %21 = icmp ult i16 %17, %20, !dbg !1334
  %22 = or i1 %18, %21, !dbg !1335
  br i1 %22, label %25, label %23, !dbg !1335

; <label>:23:                                     ; preds = %12
  %24 = sub i16 %17, %20, !dbg !1336
  br label %40, !dbg !1338

; <label>:25:                                     ; preds = %12
  %26 = sub i16 %20, %17, !dbg !1339
  %27 = icmp ugt i16 %26, %13, !dbg !1342
  %28 = select i1 %27, i16 %13, i16 %26, !dbg !1344
  %29 = zext i16 %15 to i64, !dbg !1345
  %30 = getelementptr inbounds i8, i8* %1, i64 %29, !dbg !1345
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 1, !dbg !1345
  %32 = load i8*, i8** %31, align 8, !dbg !1345, !tbaa !251
  %33 = zext i16 %17 to i64, !dbg !1345
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1345
  %35 = zext i16 %28 to i64, !dbg !1345
  %36 = tail call i8* @memcpy(i8* nonnull %30, i8* %34, i64 %35) #8, !dbg !1345
  %37 = add i16 %28, %14, !dbg !1346
  %38 = add i16 %28, %15, !dbg !1347
  %39 = sub i16 %13, %28, !dbg !1348
  br label %40

; <label>:40:                                     ; preds = %23, %25
  %41 = phi i16 [ %24, %23 ], [ 0, %25 ], !dbg !1349
  %42 = phi i16 [ %15, %23 ], [ %38, %25 ], !dbg !1349
  %43 = phi i16 [ %14, %23 ], [ %37, %25 ], !dbg !1349
  %44 = phi i16 [ %13, %23 ], [ %39, %25 ]
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 0, !dbg !1350
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !1350, !tbaa !243
  %47 = icmp ne i16 %44, 0, !dbg !1319
  %48 = icmp ne %struct.pbuf* %46, null, !dbg !1351
  %49 = and i1 %48, %47, !dbg !1352
  br i1 %49, label %12, label %50, !dbg !1322, !llvm.loop !1353

; <label>:50:                                     ; preds = %40, %9
  %51 = phi i16 [ 0, %9 ], [ %43, %40 ], !dbg !1302
  ret i16 %51, !dbg !1355
}

; Function Attrs: noredzone nounwind
define dso_local i8* @pbuf_get_contiguous(%struct.pbuf* readonly, i8*, i64, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1356 {
  %6 = icmp eq %struct.pbuf* %0, null, !dbg !1372
  br i1 %6, label %7, label %8, !dbg !1375

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0)) #10, !dbg !1376
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1379
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1379
  unreachable, !dbg !1379

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8* %1, null, !dbg !1383
  br i1 %9, label %10, label %11, !dbg !1386

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !1387
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1390
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1390
  unreachable, !dbg !1390

; <label>:11:                                     ; preds = %8
  %12 = zext i16 %3 to i64, !dbg !1394
  %13 = icmp ugt i64 %12, %2, !dbg !1394
  br i1 %13, label %14, label %15, !dbg !1397

; <label>:14:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #10, !dbg !1398
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1401
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1401
  unreachable, !dbg !1401

; <label>:15:                                     ; preds = %11, %21
  %16 = phi %struct.pbuf* [ %24, %21 ], [ %0, %11 ]
  %17 = phi i16 [ %22, %21 ], [ %4, %11 ]
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 3, !dbg !1418
  %19 = load i16, i16* %18, align 2, !dbg !1418, !tbaa !257
  %20 = icmp ult i16 %17, %19, !dbg !1419
  br i1 %20, label %26, label %21, !dbg !1420

; <label>:21:                                     ; preds = %15
  %22 = sub i16 %17, %19, !dbg !1421
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 0, !dbg !1423
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !1423, !tbaa !243
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !1424
  br i1 %25, label %83, label %15, !dbg !1425, !llvm.loop !1426

; <label>:26:                                     ; preds = %15
  %27 = zext i16 %19 to i32, !dbg !1430
  %28 = zext i16 %17 to i32, !dbg !1435
  %29 = zext i16 %3 to i32, !dbg !1436
  %30 = add nuw nsw i32 %28, %29, !dbg !1437
  %31 = icmp ugt i32 %30, %27, !dbg !1438
  br i1 %31, label %37, label %32, !dbg !1439

; <label>:32:                                     ; preds = %26
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 1, !dbg !1440
  %34 = load i8*, i8** %33, align 8, !dbg !1440, !tbaa !251
  %35 = zext i16 %17 to i64, !dbg !1442
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !1442
  br label %83, !dbg !1443

; <label>:37:                                     ; preds = %26
  %38 = icmp eq i16 %3, 0, !dbg !1453
  br i1 %38, label %79, label %39, !dbg !1454

; <label>:39:                                     ; preds = %37, %76
  %40 = phi i16 [ %78, %76 ], [ %19, %37 ], !dbg !1455
  %41 = phi i16 [ %70, %76 ], [ %3, %37 ]
  %42 = phi i16 [ %69, %76 ], [ 0, %37 ]
  %43 = phi i16 [ %68, %76 ], [ 0, %37 ]
  %44 = phi %struct.pbuf* [ %72, %76 ], [ %16, %37 ]
  %45 = phi i16 [ %67, %76 ], [ %17, %37 ]
  %46 = icmp eq i16 %45, 0, !dbg !1456
  %47 = icmp ult i16 %45, %40, !dbg !1457
  %48 = or i1 %46, %47, !dbg !1458
  br i1 %48, label %51, label %49, !dbg !1458

; <label>:49:                                     ; preds = %39
  %50 = sub i16 %45, %40, !dbg !1459
  br label %66, !dbg !1460

; <label>:51:                                     ; preds = %39
  %52 = sub i16 %40, %45, !dbg !1461
  %53 = icmp ugt i16 %52, %41, !dbg !1463
  %54 = select i1 %53, i16 %41, i16 %52, !dbg !1464
  %55 = zext i16 %43 to i64, !dbg !1465
  %56 = getelementptr inbounds i8, i8* %1, i64 %55, !dbg !1465
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i64 0, i32 1, !dbg !1465
  %58 = load i8*, i8** %57, align 8, !dbg !1465, !tbaa !251
  %59 = zext i16 %45 to i64, !dbg !1465
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !1465
  %61 = zext i16 %54 to i64, !dbg !1465
  %62 = tail call i8* @memcpy(i8* nonnull %56, i8* %60, i64 %61) #8, !dbg !1465
  %63 = add i16 %54, %42, !dbg !1466
  %64 = add i16 %54, %43, !dbg !1467
  %65 = sub i16 %41, %54, !dbg !1468
  br label %66

; <label>:66:                                     ; preds = %51, %49
  %67 = phi i16 [ %50, %49 ], [ 0, %51 ], !dbg !1469
  %68 = phi i16 [ %43, %49 ], [ %64, %51 ], !dbg !1469
  %69 = phi i16 [ %42, %49 ], [ %63, %51 ], !dbg !1469
  %70 = phi i16 [ %41, %49 ], [ %65, %51 ]
  %71 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %44, i64 0, i32 0, !dbg !1470
  %72 = load %struct.pbuf*, %struct.pbuf** %71, align 8, !dbg !1470, !tbaa !243
  %73 = icmp ne i16 %70, 0, !dbg !1453
  %74 = icmp ne %struct.pbuf* %72, null, !dbg !1471
  %75 = and i1 %73, %74, !dbg !1472
  br i1 %75, label %76, label %79, !dbg !1454, !llvm.loop !1353

; <label>:76:                                     ; preds = %66
  %77 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %72, i64 0, i32 3
  %78 = load i16, i16* %77, align 2, !dbg !1455, !tbaa !257
  br label %39, !dbg !1454

; <label>:79:                                     ; preds = %66, %37
  %80 = phi i16 [ 0, %37 ], [ %69, %66 ], !dbg !1451
  %81 = icmp eq i16 %80, %3, !dbg !1473
  %82 = select i1 %81, i8* %1, i8* null, !dbg !1474
  br label %83, !dbg !1474

; <label>:83:                                     ; preds = %21, %79, %32
  %84 = phi i8* [ %36, %32 ], [ %82, %79 ], [ null, %21 ], !dbg !1475
  ret i8* %84, !dbg !1476
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf** nocapture) local_unnamed_addr #0 !dbg !1477 {
  store %struct.pbuf* null, %struct.pbuf** %1, align 8, !dbg !1491, !tbaa !1492
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1493
  br i1 %3, label %57, label %4, !dbg !1494

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1495
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !1495, !tbaa !243
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1496
  br i1 %7, label %57, label %8, !dbg !1497

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1498
  %10 = load i16, i16* %9, align 2, !dbg !1498, !tbaa !257
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1502
  %12 = load i16, i16* %11, align 2, !dbg !1502, !tbaa !257
  %13 = add i16 %12, %10, !dbg !1503
  %14 = icmp ult i16 %13, %10, !dbg !1504
  br i1 %14, label %26, label %20, !dbg !1505

; <label>:15:                                     ; preds = %20
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i64 0, i32 3, !dbg !1502
  %17 = load i16, i16* %16, align 2, !dbg !1502, !tbaa !257
  %18 = add i16 %17, %21, !dbg !1503
  %19 = icmp ult i16 %18, %21, !dbg !1504
  br i1 %19, label %26, label %20, !dbg !1505, !llvm.loop !1506

; <label>:20:                                     ; preds = %8, %15
  %21 = phi i16 [ %18, %15 ], [ %13, %8 ]
  %22 = phi %struct.pbuf* [ %24, %15 ], [ %6, %8 ]
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1508
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !1508, !tbaa !243
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !1510
  br i1 %25, label %55, label %15, !dbg !1511, !llvm.loop !1506

; <label>:26:                                     ; preds = %15, %8
  %27 = phi %struct.pbuf* [ %6, %8 ], [ %24, %15 ]
  %28 = phi %struct.pbuf* [ %0, %8 ], [ %22, %15 ]
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i64 0, i32 0, !dbg !1512
  store %struct.pbuf* null, %struct.pbuf** %29, align 8, !dbg !1513, !tbaa !243
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 2
  br label %31, !dbg !1514

; <label>:31:                                     ; preds = %31, %26
  %32 = phi %struct.pbuf* [ %0, %26 ], [ %38, %31 ]
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 2, !dbg !1518
  %34 = load i16, i16* %33, align 8, !dbg !1518, !tbaa !254
  %35 = load i16, i16* %30, align 8, !dbg !1521, !tbaa !254
  %36 = sub i16 %34, %35, !dbg !1522
  store i16 %36, i16* %33, align 8, !dbg !1523, !tbaa !254
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 0, !dbg !1524
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8, !dbg !1524, !tbaa !243
  %39 = icmp eq %struct.pbuf* %38, null, !dbg !1524
  br i1 %39, label %40, label %31, !dbg !1524, !llvm.loop !1527

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 3, !dbg !1524
  %42 = load i16, i16* %41, align 2, !dbg !1524, !tbaa !257
  %43 = icmp eq i16 %36, %42, !dbg !1524
  br i1 %43, label %45, label %44, !dbg !1529

; <label>:44:                                     ; preds = %40
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0)) #10, !dbg !1530
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1533
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1533
  unreachable, !dbg !1533

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !1537
  %47 = load i8, i8* %46, align 1, !dbg !1537, !tbaa !264
  %48 = and i8 %47, 32, !dbg !1539
  %49 = icmp eq i8 %48, 0, !dbg !1539
  br i1 %49, label %54, label %50, !dbg !1540

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 5, !dbg !1541
  %52 = load i8, i8* %51, align 1, !dbg !1543, !tbaa !264
  %53 = or i8 %52, 32, !dbg !1543
  store i8 %53, i8* %51, align 1, !dbg !1543, !tbaa !264
  br label %54, !dbg !1544

; <label>:54:                                     ; preds = %45, %50
  store %struct.pbuf* %27, %struct.pbuf** %1, align 8, !dbg !1545, !tbaa !1492
  br label %57, !dbg !1546

; <label>:55:                                     ; preds = %20
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1508
  store %struct.pbuf* null, %struct.pbuf** %56, align 8, !dbg !1513, !tbaa !243
  br label %57

; <label>:57:                                     ; preds = %54, %55, %4, %2
  ret void, !dbg !1547
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_skip(%struct.pbuf* readonly, i16 zeroext, i16*) local_unnamed_addr #0 !dbg !1548 {
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1565
  br i1 %4, label %16, label %5, !dbg !1566

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1567
  %9 = load i16, i16* %8, align 2, !dbg !1567, !tbaa !257
  %10 = icmp ult i16 %7, %9, !dbg !1568
  br i1 %10, label %16, label %11, !dbg !1569

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1570
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1571
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1571, !tbaa !243
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1565
  br i1 %15, label %16, label %5, !dbg !1566, !llvm.loop !1426

; <label>:16:                                     ; preds = %11, %5, %3
  %17 = phi i16 [ %1, %3 ], [ %12, %11 ], [ %7, %5 ], !dbg !1572
  %18 = phi %struct.pbuf* [ null, %3 ], [ null, %11 ], [ %6, %5 ], !dbg !1572
  %19 = icmp eq i16* %2, null, !dbg !1573
  br i1 %19, label %21, label %20, !dbg !1575

; <label>:20:                                     ; preds = %16
  store i16 %17, i16* %2, align 2, !dbg !1576, !tbaa !1578
  br label %21, !dbg !1579

; <label>:21:                                     ; preds = %16, %20
  ret %struct.pbuf* %18, !dbg !1581
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take(%struct.pbuf* readonly, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1582 {
  %4 = zext i16 %2 to i64, !dbg !1598
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1601
  br i1 %5, label %6, label %7, !dbg !1604

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #10, !dbg !1605
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1608
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1608
  unreachable, !dbg !1608

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !1612
  br i1 %8, label %9, label %10, !dbg !1615

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #10, !dbg !1616
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1619
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1619
  unreachable, !dbg !1619

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1623
  %12 = load i16, i16* %11, align 8, !dbg !1623, !tbaa !254
  %13 = icmp ult i16 %12, %2, !dbg !1623
  br i1 %13, label %16, label %14, !dbg !1626

; <label>:14:                                     ; preds = %10
  %15 = icmp eq i16 %2, 0, !dbg !1628
  br i1 %15, label %38, label %17, !dbg !1631

; <label>:16:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0)) #10, !dbg !1632
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1635
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1635
  unreachable, !dbg !1635

; <label>:17:                                     ; preds = %14, %23
  %18 = phi i64 [ %34, %23 ], [ 0, %14 ]
  %19 = phi i64 [ %33, %23 ], [ %4, %14 ]
  %20 = phi %struct.pbuf* [ %36, %23 ], [ %0, %14 ]
  %21 = icmp eq %struct.pbuf* %20, null, !dbg !1639
  br i1 %21, label %22, label %23, !dbg !1643

; <label>:22:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #10, !dbg !1644
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1647
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1647
  unreachable, !dbg !1647

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 3, !dbg !1652
  %25 = load i16, i16* %24, align 2, !dbg !1652, !tbaa !257
  %26 = zext i16 %25 to i64, !dbg !1654
  %27 = icmp ugt i64 %19, %26, !dbg !1655
  %28 = select i1 %27, i64 %26, i64 %19, !dbg !1656
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 1, !dbg !1657
  %30 = load i8*, i8** %29, align 8, !dbg !1657, !tbaa !251
  %31 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !1657
  %32 = tail call i8* @memcpy(i8* %30, i8* nonnull %31, i64 %28) #8, !dbg !1657
  %33 = sub i64 %19, %28, !dbg !1658
  %34 = add i64 %28, %18, !dbg !1659
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 0, !dbg !1660
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8, !dbg !1660, !tbaa !243
  %37 = icmp eq i64 %33, 0, !dbg !1628
  br i1 %37, label %38, label %17, !dbg !1631, !llvm.loop !1661

; <label>:38:                                     ; preds = %23, %14
  %39 = phi i64 [ 0, %14 ], [ %34, %23 ], !dbg !1663
  %40 = icmp eq i64 %39, %4, !dbg !1664
  br i1 %40, label %42, label %41, !dbg !1667

; <label>:41:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #10, !dbg !1668
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #10, !dbg !1671
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1671
  unreachable, !dbg !1671

; <label>:42:                                     ; preds = %38
  ret i8 0, !dbg !1675
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take_at(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1676 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1703
  br i1 %5, label %45, label %6, !dbg !1704

; <label>:6:                                      ; preds = %4, %12
  %7 = phi %struct.pbuf* [ %15, %12 ], [ %0, %4 ]
  %8 = phi i16 [ %13, %12 ], [ %3, %4 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !1705
  %10 = load i16, i16* %9, align 2, !dbg !1705, !tbaa !257
  %11 = icmp ult i16 %8, %10, !dbg !1706
  br i1 %11, label %17, label %12, !dbg !1707

; <label>:12:                                     ; preds = %6
  %13 = sub i16 %8, %10, !dbg !1708
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1709
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !1709, !tbaa !243
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !1703
  br i1 %16, label %45, label %6, !dbg !1704, !llvm.loop !1426

; <label>:17:                                     ; preds = %6
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 2, !dbg !1712
  %19 = load i16, i16* %18, align 8, !dbg !1712, !tbaa !254
  %20 = zext i16 %19 to i32, !dbg !1713
  %21 = zext i16 %8 to i32, !dbg !1715
  %22 = zext i16 %2 to i32, !dbg !1716
  %23 = add nuw nsw i32 %21, %22, !dbg !1717
  %24 = icmp ugt i32 %23, %20, !dbg !1718
  br i1 %24, label %45, label %25, !dbg !1719

; <label>:25:                                     ; preds = %17
  %26 = zext i16 %10 to i32, !dbg !1722
  %27 = sub nsw i32 %26, %21, !dbg !1725
  %28 = icmp slt i32 %27, %22, !dbg !1725
  %29 = select i1 %28, i32 %27, i32 %22, !dbg !1725
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 1, !dbg !1726
  %31 = load i8*, i8** %30, align 8, !dbg !1726, !tbaa !251
  %32 = zext i16 %8 to i64, !dbg !1726
  %33 = getelementptr inbounds i8, i8* %31, i64 %32, !dbg !1726
  %34 = and i32 %29, 65535, !dbg !1726
  %35 = zext i32 %34 to i64, !dbg !1726
  %36 = tail call i8* @memcpy(i8* %33, i8* %1, i64 %35) #8, !dbg !1726
  %37 = trunc i32 %29 to i16, !dbg !1727
  %38 = sub i16 %2, %37, !dbg !1727
  %39 = icmp eq i16 %38, 0, !dbg !1728
  br i1 %39, label %45, label %40, !dbg !1730

; <label>:40:                                     ; preds = %25
  %41 = getelementptr inbounds i8, i8* %1, i64 %35, !dbg !1731
  %42 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1732
  %43 = load %struct.pbuf*, %struct.pbuf** %42, align 8, !dbg !1732, !tbaa !243
  %44 = tail call signext i8 @pbuf_take(%struct.pbuf* %43, i8* %41, i16 zeroext %38) #10, !dbg !1734
  br label %45, !dbg !1735

; <label>:45:                                     ; preds = %12, %4, %17, %40, %25
  %46 = phi i8 [ %44, %40 ], [ 0, %25 ], [ -1, %17 ], [ -1, %4 ], [ -1, %12 ], !dbg !1736
  ret i8 %46, !dbg !1737
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_coalesce(%struct.pbuf*, i32) local_unnamed_addr #0 !dbg !1738 {
  %3 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1747
  %4 = load %struct.pbuf*, %struct.pbuf** %3, align 8, !dbg !1747, !tbaa !243
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !1749
  br i1 %5, label %39, label %6, !dbg !1750

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1764
  %8 = load i16, i16* %7, align 8, !dbg !1764, !tbaa !254
  %9 = and i32 %1, 65535, !dbg !1769
  %10 = trunc i32 %1 to i16, !dbg !1770
  %11 = add i16 %8, %10, !dbg !1770
  %12 = zext i16 %11 to i64, !dbg !1772
  %13 = add nuw nsw i64 %12, 24, !dbg !1773
  %14 = icmp ult i16 %11, %8, !dbg !1775
  %15 = zext i16 %8 to i64, !dbg !1776
  %16 = icmp ult i64 %13, %15, !dbg !1777
  %17 = or i1 %14, %16, !dbg !1778
  br i1 %17, label %39, label %18, !dbg !1778

; <label>:18:                                     ; preds = %6
  %19 = tail call i8* @mem_malloc(i64 %13) #8, !dbg !1779
  %20 = icmp eq i8* %19, null, !dbg !1780
  br i1 %20, label %39, label %21, !dbg !1781

; <label>:21:                                     ; preds = %18
  %22 = bitcast i8* %19 to %struct.pbuf*, !dbg !1782
  %23 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1784
  %24 = zext i32 %9 to i64, !dbg !1784
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !1784
  %26 = bitcast i8* %19 to %struct.pbuf**, !dbg !1792
  store %struct.pbuf* null, %struct.pbuf** %26, align 8, !dbg !1793, !tbaa !243
  %27 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1794
  %28 = bitcast i8* %27 to i8**, !dbg !1794
  store i8* %25, i8** %28, align 8, !dbg !1795, !tbaa !251
  %29 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !1796
  %30 = bitcast i8* %29 to i16*, !dbg !1796
  store i16 %8, i16* %30, align 8, !dbg !1797, !tbaa !254
  %31 = getelementptr inbounds i8, i8* %19, i64 18, !dbg !1798
  %32 = bitcast i8* %31 to i16*, !dbg !1798
  store i16 %8, i16* %32, align 2, !dbg !1799, !tbaa !257
  %33 = getelementptr inbounds i8, i8* %19, i64 20, !dbg !1800
  store i8 -128, i8* %33, align 4, !dbg !1801, !tbaa !261
  %34 = getelementptr inbounds i8, i8* %19, i64 21, !dbg !1802
  store i8 0, i8* %34, align 1, !dbg !1803, !tbaa !264
  %35 = getelementptr inbounds i8, i8* %19, i64 22, !dbg !1804
  store i8 1, i8* %35, align 2, !dbg !1805, !tbaa !267
  %36 = getelementptr inbounds i8, i8* %19, i64 23, !dbg !1806
  store i8 0, i8* %36, align 1, !dbg !1807, !tbaa !270
  %37 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %22, %struct.pbuf* nonnull %0) #8, !dbg !1809
  %38 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #10, !dbg !1812
  br label %39, !dbg !1813

; <label>:39:                                     ; preds = %18, %6, %2, %21
  %40 = phi %struct.pbuf* [ %22, %21 ], [ %0, %2 ], [ %0, %6 ], [ %0, %18 ], !dbg !1814
  ret %struct.pbuf* %40, !dbg !1815
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_clone(i32, i32, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1752 {
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1819
  %5 = load i16, i16* %4, align 8, !dbg !1819, !tbaa !254
  %6 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %5, i32 %1) #10, !dbg !1820
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1822
  br i1 %7, label %10, label %8, !dbg !1824

; <label>:8:                                      ; preds = %3
  %9 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %6, %struct.pbuf* nonnull %2) #10, !dbg !1825
  br label %10, !dbg !1827

; <label>:10:                                     ; preds = %3, %8
  ret %struct.pbuf* %6, !dbg !1828
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i8 @pbuf_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #6 !dbg !1829 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1854
  br i1 %3, label %21, label %4, !dbg !1855

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1856
  %8 = load i16, i16* %7, align 2, !dbg !1856, !tbaa !257
  %9 = icmp ult i16 %6, %8, !dbg !1857
  br i1 %9, label %15, label %10, !dbg !1858

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1859
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1860
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1860, !tbaa !243
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1854
  br i1 %14, label %21, label %4, !dbg !1855, !llvm.loop !1426

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1863
  %17 = load i8*, i8** %16, align 8, !dbg !1863, !tbaa !251
  %18 = zext i16 %6 to i64, !dbg !1866
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1866
  %20 = load i8, i8* %19, align 1, !dbg !1866, !tbaa !299
  ret i8 %20, !dbg !1868

; <label>:21:                                     ; preds = %10, %2
  ret i8 0, !dbg !1869
}

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @pbuf_try_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #6 !dbg !1839 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1877
  br i1 %3, label %22, label %4, !dbg !1878

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1879
  %8 = load i16, i16* %7, align 2, !dbg !1879, !tbaa !257
  %9 = icmp ult i16 %6, %8, !dbg !1880
  br i1 %9, label %15, label %10, !dbg !1881

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1882
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1883
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1883, !tbaa !243
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1877
  br i1 %14, label %22, label %4, !dbg !1878, !llvm.loop !1426

; <label>:15:                                     ; preds = %4
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1886
  %17 = load i8*, i8** %16, align 8, !dbg !1886, !tbaa !251
  %18 = zext i16 %6 to i64, !dbg !1887
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1887
  %20 = load i8, i8* %19, align 1, !dbg !1887, !tbaa !299
  %21 = zext i8 %20 to i32, !dbg !1887
  br label %22, !dbg !1888

; <label>:22:                                     ; preds = %10, %2, %15
  %23 = phi i32 [ %21, %15 ], [ -1, %2 ], [ -1, %10 ], !dbg !1889
  ret i32 %23, !dbg !1890
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_put_at(%struct.pbuf* readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1891 {
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1911
  br i1 %4, label %21, label %5, !dbg !1912

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1913
  %9 = load i16, i16* %8, align 2, !dbg !1913, !tbaa !257
  %10 = icmp ult i16 %7, %9, !dbg !1914
  br i1 %10, label %16, label %11, !dbg !1915

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1916
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1917
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1917, !tbaa !243
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1911
  br i1 %15, label %21, label %5, !dbg !1912, !llvm.loop !1426

; <label>:16:                                     ; preds = %5
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 1, !dbg !1921
  %18 = load i8*, i8** %17, align 8, !dbg !1921, !tbaa !251
  %19 = zext i16 %7 to i64, !dbg !1924
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1924
  store i8 %2, i8* %20, align 1, !dbg !1925, !tbaa !299
  br label %21, !dbg !1926

; <label>:21:                                     ; preds = %11, %3, %16
  ret void, !dbg !1927
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @pbuf_memcmp(%struct.pbuf* readonly, i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #6 !dbg !1928 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1950
  %6 = load i16, i16* %5, align 8, !dbg !1950, !tbaa !254
  %7 = zext i16 %6 to i32, !dbg !1952
  %8 = zext i16 %1 to i32, !dbg !1953
  %9 = zext i16 %3 to i32, !dbg !1954
  %10 = add nuw nsw i32 %9, %8, !dbg !1955
  %11 = icmp ugt i32 %10, %7, !dbg !1956
  br i1 %11, label %65, label %12, !dbg !1957

; <label>:12:                                     ; preds = %4, %18
  %13 = phi i16 [ %19, %18 ], [ %1, %4 ]
  %14 = phi %struct.pbuf* [ %21, %18 ], [ %0, %4 ]
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !1958
  %16 = load i16, i16* %15, align 2, !dbg !1958, !tbaa !257
  %17 = icmp ult i16 %13, %16, !dbg !1959
  br i1 %17, label %23, label %18, !dbg !1960

; <label>:18:                                     ; preds = %12
  %19 = sub i16 %13, %16, !dbg !1961
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !1963
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !1963, !tbaa !243
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !1964
  br i1 %22, label %23, label %12, !dbg !1965, !llvm.loop !1966

; <label>:23:                                     ; preds = %18, %12
  %24 = phi %struct.pbuf* [ null, %18 ], [ %14, %12 ], !dbg !1968
  %25 = phi i16 [ %19, %18 ], [ %13, %12 ], !dbg !1968
  %26 = phi i1 [ true, %18 ], [ false, %12 ], !dbg !1964
  %27 = icmp eq i16 %3, 0, !dbg !1970
  br i1 %27, label %65, label %31, !dbg !1971

; <label>:28:                                     ; preds = %53
  %29 = zext i16 %59 to i32, !dbg !1972
  %30 = icmp ult i16 %59, %3, !dbg !1970
  br i1 %30, label %31, label %65, !dbg !1971, !llvm.loop !1973

; <label>:31:                                     ; preds = %23, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %23 ]
  %33 = phi i16 [ %59, %28 ], [ 0, %23 ]
  br i1 %26, label %53, label %34, !dbg !1982

; <label>:34:                                     ; preds = %31
  %35 = add i16 %33, %25, !dbg !1983
  br label %36, !dbg !1988

; <label>:36:                                     ; preds = %34, %42
  %37 = phi %struct.pbuf* [ %45, %42 ], [ %24, %34 ]
  %38 = phi i16 [ %43, %42 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 3, !dbg !1988
  %40 = load i16, i16* %39, align 2, !dbg !1988, !tbaa !257
  %41 = icmp ult i16 %38, %40, !dbg !1989
  br i1 %41, label %47, label %42, !dbg !1990

; <label>:42:                                     ; preds = %36
  %43 = sub i16 %38, %40, !dbg !1991
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 0, !dbg !1992
  %45 = load %struct.pbuf*, %struct.pbuf** %44, align 8, !dbg !1992, !tbaa !243
  %46 = icmp eq %struct.pbuf* %45, null, !dbg !1993
  br i1 %46, label %53, label %36, !dbg !1982, !llvm.loop !1426

; <label>:47:                                     ; preds = %36
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 1, !dbg !1996
  %49 = load i8*, i8** %48, align 8, !dbg !1996, !tbaa !251
  %50 = zext i16 %38 to i64, !dbg !1997
  %51 = getelementptr inbounds i8, i8* %49, i64 %50, !dbg !1997
  %52 = load i8, i8* %51, align 1, !dbg !1997, !tbaa !299
  br label %53, !dbg !1999

; <label>:53:                                     ; preds = %42, %31, %47
  %54 = phi i8 [ %52, %47 ], [ 0, %31 ], [ 0, %42 ]
  %55 = zext i16 %33 to i64, !dbg !2001
  %56 = getelementptr inbounds i8, i8* %2, i64 %55, !dbg !2001
  %57 = load i8, i8* %56, align 1, !dbg !2001, !tbaa !299
  %58 = icmp eq i8 %54, %57, !dbg !2003
  %59 = add nuw i16 %33, 1, !dbg !2005
  br i1 %58, label %28, label %60, !dbg !2006

; <label>:60:                                     ; preds = %53
  %61 = add nuw nsw i32 %32, 1, !dbg !2007
  %62 = icmp ult i32 %61, 65535, !dbg !2007
  %63 = select i1 %62, i32 %61, i32 65535, !dbg !2007
  %64 = trunc i32 %63 to i16, !dbg !2009
  br label %65

; <label>:65:                                     ; preds = %28, %23, %60, %4
  %66 = phi i16 [ %64, %60 ], [ -1, %4 ], [ 0, %23 ], [ 0, %28 ], !dbg !2010
  ret i16 %66, !dbg !2011
}

; Function Attrs: noredzone nounwind readonly
define dso_local zeroext i16 @pbuf_memfind(%struct.pbuf* nocapture readonly, i8* nocapture readonly, i16 zeroext, i16 zeroext) local_unnamed_addr #6 !dbg !2012 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2032
  %6 = load i16, i16* %5, align 8, !dbg !2032, !tbaa !254
  %7 = zext i16 %6 to i32, !dbg !2033
  %8 = zext i16 %2 to i32, !dbg !2034
  %9 = sub i16 %6, %2, !dbg !2035
  %10 = zext i16 %3 to i32, !dbg !2037
  %11 = add nuw nsw i32 %10, %8, !dbg !2038
  %12 = icmp ugt i32 %11, %7, !dbg !2039
  %13 = icmp ult i16 %9, %3, !dbg !2040
  %14 = or i1 %12, %13, !dbg !2041
  br i1 %14, label %71, label %15, !dbg !2041

; <label>:15:                                     ; preds = %4
  %16 = icmp eq i16 %2, 0
  %17 = zext i16 %2 to i64, !dbg !2043
  br label %18, !dbg !2043

; <label>:18:                                     ; preds = %15, %68
  %19 = phi i16 [ %3, %15 ], [ %69, %68 ]
  %20 = zext i16 %19 to i32, !dbg !2051
  %21 = add nuw nsw i32 %20, %8, !dbg !2052
  %22 = icmp ugt i32 %21, %7, !dbg !2053
  br i1 %22, label %68, label %23, !dbg !2054

; <label>:23:                                     ; preds = %18, %29
  %24 = phi i16 [ %30, %29 ], [ %19, %18 ]
  %25 = phi %struct.pbuf* [ %32, %29 ], [ %0, %18 ]
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i64 0, i32 3, !dbg !2055
  %27 = load i16, i16* %26, align 2, !dbg !2055, !tbaa !257
  %28 = icmp ult i16 %24, %27, !dbg !2056
  br i1 %28, label %34, label %29, !dbg !2057

; <label>:29:                                     ; preds = %23
  %30 = sub i16 %24, %27, !dbg !2058
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i64 0, i32 0, !dbg !2059
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8, !dbg !2059, !tbaa !243
  %33 = icmp eq %struct.pbuf* %32, null, !dbg !2060
  br i1 %33, label %34, label %23, !dbg !2061, !llvm.loop !1966

; <label>:34:                                     ; preds = %29, %23
  %35 = phi %struct.pbuf* [ null, %29 ], [ %25, %23 ], !dbg !2062
  %36 = phi i16 [ %30, %29 ], [ %24, %23 ], !dbg !2062
  %37 = phi i1 [ true, %29 ], [ false, %23 ], !dbg !2060
  br i1 %16, label %71, label %40, !dbg !2064

; <label>:38:                                     ; preds = %62
  %39 = icmp ult i64 %67, %17, !dbg !2065
  br i1 %39, label %40, label %71, !dbg !2064, !llvm.loop !1973

; <label>:40:                                     ; preds = %34, %38
  %41 = phi i64 [ %67, %38 ], [ 0, %34 ]
  br i1 %37, label %62, label %42, !dbg !2073

; <label>:42:                                     ; preds = %40
  %43 = trunc i64 %41 to i16, !dbg !2074
  %44 = add i16 %36, %43, !dbg !2074
  br label %45, !dbg !2079

; <label>:45:                                     ; preds = %51, %42
  %46 = phi %struct.pbuf* [ %54, %51 ], [ %35, %42 ]
  %47 = phi i16 [ %52, %51 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 3, !dbg !2079
  %49 = load i16, i16* %48, align 2, !dbg !2079, !tbaa !257
  %50 = icmp ult i16 %47, %49, !dbg !2080
  br i1 %50, label %56, label %51, !dbg !2081

; <label>:51:                                     ; preds = %45
  %52 = sub i16 %47, %49, !dbg !2082
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 0, !dbg !2083
  %54 = load %struct.pbuf*, %struct.pbuf** %53, align 8, !dbg !2083, !tbaa !243
  %55 = icmp eq %struct.pbuf* %54, null, !dbg !2084
  br i1 %55, label %62, label %45, !dbg !2073, !llvm.loop !1426

; <label>:56:                                     ; preds = %45
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 1, !dbg !2087
  %58 = load i8*, i8** %57, align 8, !dbg !2087, !tbaa !251
  %59 = zext i16 %47 to i64, !dbg !2088
  %60 = getelementptr inbounds i8, i8* %58, i64 %59, !dbg !2088
  %61 = load i8, i8* %60, align 1, !dbg !2088, !tbaa !299
  br label %62, !dbg !2090

; <label>:62:                                     ; preds = %51, %56, %40
  %63 = phi i8 [ %61, %56 ], [ 0, %40 ], [ 0, %51 ]
  %64 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !2092
  %65 = load i8, i8* %64, align 1, !dbg !2092, !tbaa !299
  %66 = icmp eq i8 %63, %65, !dbg !2094
  %67 = add nuw nsw i64 %41, 1, !dbg !2095
  br i1 %66, label %38, label %68, !dbg !2096

; <label>:68:                                     ; preds = %62, %18
  %69 = add i16 %19, 1, !dbg !2097
  %70 = icmp ugt i16 %69, %9, !dbg !2040
  br i1 %70, label %71, label %18, !dbg !2043, !llvm.loop !2098

; <label>:71:                                     ; preds = %68, %34, %38, %4
  %72 = phi i16 [ -1, %4 ], [ %19, %38 ], [ -1, %68 ], [ %19, %34 ], !dbg !2100
  ret i16 %72, !dbg !2101
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_strstr(%struct.pbuf* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !2102 {
  %3 = icmp eq i8* %1, null, !dbg !2111
  br i1 %3, label %78, label %4, !dbg !2113

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1, !dbg !2114, !tbaa !299
  %6 = icmp eq i8 %5, 0, !dbg !2115
  br i1 %6, label %78, label %7, !dbg !2116

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2117
  %9 = load i16, i16* %8, align 8, !dbg !2117, !tbaa !254
  %10 = icmp eq i16 %9, -1, !dbg !2118
  br i1 %10, label %78, label %11, !dbg !2119

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @strlen(i8* nonnull %1) #8, !dbg !2120
  %13 = icmp ugt i64 %12, 65534, !dbg !2122
  br i1 %13, label %78, label %14, !dbg !2124

; <label>:14:                                     ; preds = %11
  %15 = trunc i64 %12 to i16, !dbg !2125
  %16 = load i16, i16* %8, align 8, !dbg !2131, !tbaa !254
  %17 = zext i16 %16 to i32, !dbg !2132
  %18 = trunc i64 %12 to i32, !dbg !2133
  %19 = and i32 %18, 65535, !dbg !2133
  %20 = sub i16 %16, %15, !dbg !2134
  %21 = icmp ugt i32 %19, %17, !dbg !2136
  br i1 %21, label %78, label %22, !dbg !2138

; <label>:22:                                     ; preds = %14
  %23 = icmp eq i16 %15, 0
  %24 = and i64 %12, 65535, !dbg !2139
  br label %25, !dbg !2139

; <label>:25:                                     ; preds = %75, %22
  %26 = phi i16 [ 0, %22 ], [ %76, %75 ]
  %27 = zext i16 %26 to i32, !dbg !2147
  %28 = add nuw nsw i32 %19, %27, !dbg !2148
  %29 = icmp ugt i32 %28, %17, !dbg !2149
  br i1 %29, label %75, label %30, !dbg !2150

; <label>:30:                                     ; preds = %25, %36
  %31 = phi i16 [ %37, %36 ], [ %26, %25 ]
  %32 = phi %struct.pbuf* [ %39, %36 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 3, !dbg !2151
  %34 = load i16, i16* %33, align 2, !dbg !2151, !tbaa !257
  %35 = icmp ult i16 %31, %34, !dbg !2152
  br i1 %35, label %41, label %36, !dbg !2153

; <label>:36:                                     ; preds = %30
  %37 = sub i16 %31, %34, !dbg !2154
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 0, !dbg !2155
  %39 = load %struct.pbuf*, %struct.pbuf** %38, align 8, !dbg !2155, !tbaa !243
  %40 = icmp eq %struct.pbuf* %39, null, !dbg !2156
  br i1 %40, label %41, label %30, !dbg !2157, !llvm.loop !1966

; <label>:41:                                     ; preds = %36, %30
  %42 = phi %struct.pbuf* [ null, %36 ], [ %32, %30 ], !dbg !2158
  %43 = phi i16 [ %37, %36 ], [ %31, %30 ], !dbg !2158
  %44 = phi i1 [ true, %36 ], [ false, %30 ], !dbg !2156
  br i1 %23, label %78, label %47, !dbg !2160

; <label>:45:                                     ; preds = %69
  %46 = icmp ult i64 %74, %24, !dbg !2161
  br i1 %46, label %47, label %78, !dbg !2160, !llvm.loop !1973

; <label>:47:                                     ; preds = %41, %45
  %48 = phi i64 [ %74, %45 ], [ 0, %41 ]
  br i1 %44, label %69, label %49, !dbg !2169

; <label>:49:                                     ; preds = %47
  %50 = trunc i64 %48 to i16, !dbg !2170
  %51 = add i16 %43, %50, !dbg !2170
  br label %52, !dbg !2175

; <label>:52:                                     ; preds = %58, %49
  %53 = phi %struct.pbuf* [ %61, %58 ], [ %42, %49 ]
  %54 = phi i16 [ %59, %58 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 3, !dbg !2175
  %56 = load i16, i16* %55, align 2, !dbg !2175, !tbaa !257
  %57 = icmp ult i16 %54, %56, !dbg !2176
  br i1 %57, label %63, label %58, !dbg !2177

; <label>:58:                                     ; preds = %52
  %59 = sub i16 %54, %56, !dbg !2178
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 0, !dbg !2179
  %61 = load %struct.pbuf*, %struct.pbuf** %60, align 8, !dbg !2179, !tbaa !243
  %62 = icmp eq %struct.pbuf* %61, null, !dbg !2180
  br i1 %62, label %69, label %52, !dbg !2169, !llvm.loop !1426

; <label>:63:                                     ; preds = %52
  %64 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 1, !dbg !2183
  %65 = load i8*, i8** %64, align 8, !dbg !2183, !tbaa !251
  %66 = zext i16 %54 to i64, !dbg !2184
  %67 = getelementptr inbounds i8, i8* %65, i64 %66, !dbg !2184
  %68 = load i8, i8* %67, align 1, !dbg !2184, !tbaa !299
  br label %69, !dbg !2186

; <label>:69:                                     ; preds = %58, %63, %47
  %70 = phi i8 [ %68, %63 ], [ 0, %47 ], [ 0, %58 ]
  %71 = getelementptr inbounds i8, i8* %1, i64 %48, !dbg !2188
  %72 = load i8, i8* %71, align 1, !dbg !2188, !tbaa !299
  %73 = icmp eq i8 %70, %72, !dbg !2190
  %74 = add nuw nsw i64 %48, 1, !dbg !2191
  br i1 %73, label %45, label %75, !dbg !2192

; <label>:75:                                     ; preds = %69, %25
  %76 = add i16 %26, 1, !dbg !2193
  %77 = icmp ugt i16 %76, %20, !dbg !2194
  br i1 %77, label %78, label %25, !dbg !2139, !llvm.loop !2098

; <label>:78:                                     ; preds = %75, %41, %45, %14, %11, %2, %4, %7
  %79 = phi i16 [ -1, %7 ], [ -1, %4 ], [ -1, %2 ], [ -1, %11 ], [ -1, %14 ], [ %26, %45 ], [ %26, %41 ], [ -1, %75 ], !dbg !2195
  ret i16 %79, !dbg !2196
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_try_callback(void (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @pbuf_free_ooseq_callback(i8* nocapture readnone) #0 !dbg !2197 {
  %2 = tail call i64 @ukplat_lcpu_save_irqf() #8, !dbg !2203
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !2362, !tbaa !299
  tail call void @ukplat_lcpu_restore_irqf(i64 %2) #8, !dbg !2362
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2364, !tbaa !1492
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !2367
  br i1 %4, label %15, label %5, !dbg !2368

; <label>:5:                                      ; preds = %1, %11
  %6 = phi %struct.tcp_pcb* [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 46, !dbg !2369
  %8 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8, !dbg !2369, !tbaa !2372
  %9 = icmp eq %struct.tcp_seg* %8, null, !dbg !2376
  br i1 %9, label %11, label %10, !dbg !2377

; <label>:10:                                     ; preds = %5
  tail call void @tcp_free_ooseq(%struct.tcp_pcb* nonnull %6) #8, !dbg !2378
  br label %15, !dbg !2380

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 6, !dbg !2381
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !2364, !tbaa !1492
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !2367
  br i1 %14, label %15, label %5, !dbg !2368, !llvm.loop !2382

; <label>:15:                                     ; preds = %11, %1, %10
  ret void, !dbg !2385
}

; Function Attrs: noredzone
declare dso_local void @tcp_free_ooseq(%struct.tcp_pcb*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone nounwind }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone }

!llvm.module.flags = !{!167, !168, !169}
!llvm.ident = !{!170}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "pbuf_free_ooseq_pending", scope: !2, file: !3, line: 113, type: !166, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !83, globals: !136)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/pbuf.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !14, !20, !41, !48, !69}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 89, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "PBUF_TRANSPORT", value: 74, isUnsigned: true)
!10 = !DIEnumerator(name: "PBUF_IP", value: 54, isUnsigned: true)
!11 = !DIEnumerator(name: "PBUF_LINK", value: 14, isUnsigned: true)
!12 = !DIEnumerator(name: "PBUF_RAW_TX", value: 0, isUnsigned: true)
!13 = !DIEnumerator(name: "PBUF_RAW", value: 0, isUnsigned: true)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 145, baseType: !7, size: 32, elements: !15)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!17 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!19 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !21, line: 52, baseType: !7, size: 32, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40}
!23 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!27 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!34 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!35 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!36 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!37 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!38 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!39 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!40 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !42, line: 68, baseType: !7, size: 32, elements: !43)
!42 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!45 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!46 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!47 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !49, line: 53, baseType: !50, size: 32, elements: !51)
!49 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68}
!52 = !DIEnumerator(name: "ERR_OK", value: 0)
!53 = !DIEnumerator(name: "ERR_MEM", value: -1)
!54 = !DIEnumerator(name: "ERR_BUF", value: -2)
!55 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!56 = !DIEnumerator(name: "ERR_RTE", value: -4)
!57 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!58 = !DIEnumerator(name: "ERR_VAL", value: -6)
!59 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!60 = !DIEnumerator(name: "ERR_USE", value: -8)
!61 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!62 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!63 = !DIEnumerator(name: "ERR_CONN", value: -11)
!64 = !DIEnumerator(name: "ERR_IF", value: -12)
!65 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!66 = !DIEnumerator(name: "ERR_RST", value: -14)
!67 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!68 = !DIEnumerator(name: "ERR_ARG", value: -16)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "tcp_state", file: !70, line: 56, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcpbase.h", directory: "/root/.unikraft/apps/redis/build")
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82}
!72 = !DIEnumerator(name: "CLOSED", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "LISTEN", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "SYN_SENT", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "SYN_RCVD", value: 3, isUnsigned: true)
!76 = !DIEnumerator(name: "ESTABLISHED", value: 4, isUnsigned: true)
!77 = !DIEnumerator(name: "FIN_WAIT_1", value: 5, isUnsigned: true)
!78 = !DIEnumerator(name: "FIN_WAIT_2", value: 6, isUnsigned: true)
!79 = !DIEnumerator(name: "CLOSE_WAIT", value: 7, isUnsigned: true)
!80 = !DIEnumerator(name: "CLOSING", value: 8, isUnsigned: true)
!81 = !DIEnumerator(name: "LAST_ACK", value: 9, isUnsigned: true)
!82 = !DIEnumerator(name: "TIME_WAIT", value: 10, isUnsigned: true)
!83 = !{!84, !91, !92, !107, !111, !112, !118, !100, !127, !129, !132, !134, !114}
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !85, line: 127, baseType: !86)
!85 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !87, line: 36, baseType: !88)
!87 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !89, line: 57, baseType: !90)
!89 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!90 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !6, line: 186, size: 192, elements: !94)
!94 = !{!95, !96, !97, !98, !99, !104, !105, !106}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !93, file: !6, line: 188, baseType: !92, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !93, file: !6, line: 191, baseType: !91, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !93, file: !6, line: 200, baseType: !84, size: 16, offset: 128)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !93, file: !6, line: 203, baseType: !84, size: 16, offset: 144)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !93, file: !6, line: 208, baseType: !100, size: 8, offset: 160)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !85, line: 125, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !87, line: 24, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !89, line: 43, baseType: !103)
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !93, file: !6, line: 211, baseType: !100, size: 8, offset: 168)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !93, file: !6, line: 218, baseType: !100, size: 8, offset: 176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !93, file: !6, line: 221, baseType: !100, size: 8, offset: 184)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !85, line: 135, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !87, line: 82, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !89, line: 232, baseType: !110)
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_size_t", file: !113, line: 50, baseType: !114)
!113 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/mem.h", directory: "/root/.unikraft/apps/redis/build")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !115, line: 40, baseType: !116)
!115 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !117, line: 129, baseType: !110)
!117 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_custom", file: !6, line: 242, size: 256, elements: !120)
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !119, file: !6, line: 244, baseType: !93, size: 192)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "custom_free_function", scope: !119, file: !6, line: 246, baseType: !123, size: 64, offset: 192)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_free_custom_fn", file: !6, line: 239, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !92}
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !130, line: 49, baseType: !131)
!130 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!136 = !{!0, !137, !161}
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(name: "__str", scope: !139, file: !140, line: 198, type: !158, isLocal: true, isDefinition: true)
!139 = distinct !DISubprogram(name: "uk_pr_crit", scope: !140, file: !140, line: 194, type: !141, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !143)
!140 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!141 = !DISubroutineType(types: !142)
!142 = !{null, !132, null}
!143 = !{!144, !145}
!144 = !DILocalVariable(name: "fmt", arg: 1, scope: !139, file: !140, line: 194, type: !132)
!145 = !DILocalVariable(name: "argp", scope: !139, file: !140, line: 196, type: !146)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !147, line: 32, baseType: !148)
!147 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !149)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, size: 192, elements: !156)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !151)
!151 = !{!152, !153, !154, !155}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !150, file: !3, line: 196, baseType: !7, size: 32)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !150, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !150, file: !3, line: 196, baseType: !91, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !150, file: !3, line: 196, baseType: !91, size: 64, offset: 128)
!156 = !{!157}
!157 = !DISubrange(count: 1)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 8)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(name: "__str", scope: !139, file: !140, line: 198, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 56, elements: !164)
!164 = !{!165}
!165 = !DISubrange(count: 7)
!166 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !100)
!167 = !{i32 2, !"Dwarf Version", i32 4}
!168 = !{i32 2, !"Debug Info Version", i32 3}
!169 = !{i32 1, !"wchar_size", i32 4}
!170 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!171 = distinct !DISubprogram(name: "pbuf_alloc", scope: !3, file: !3, line: 224, type: !172, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !176)
!172 = !DISubroutineType(types: !173)
!173 = !{!92, !174, !84, !175}
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_layer", file: !6, line: 112, baseType: !5)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_type", file: !6, line: 168, baseType: !14)
!176 = !{!177, !178, !179, !180, !181, !182, !185, !186, !187, !189, !191}
!177 = !DILocalVariable(name: "layer", arg: 1, scope: !171, file: !3, line: 224, type: !174)
!178 = !DILocalVariable(name: "length", arg: 2, scope: !171, file: !3, line: 224, type: !84)
!179 = !DILocalVariable(name: "type", arg: 3, scope: !171, file: !3, line: 224, type: !175)
!180 = !DILocalVariable(name: "p", scope: !171, file: !3, line: 226, type: !92)
!181 = !DILocalVariable(name: "offset", scope: !171, file: !3, line: 227, type: !84)
!182 = !DILocalVariable(name: "q", scope: !183, file: !3, line: 236, type: !92)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 235, column: 21)
!184 = distinct !DILexicalBlock(scope: !171, file: !3, line: 230, column: 17)
!185 = !DILocalVariable(name: "last", scope: !183, file: !3, line: 236, type: !92)
!186 = !DILocalVariable(name: "rem_len", scope: !183, file: !3, line: 237, type: !84)
!187 = !DILocalVariable(name: "qlen", scope: !188, file: !3, line: 242, type: !84)
!188 = distinct !DILexicalBlock(scope: !183, file: !3, line: 241, column: 10)
!189 = !DILocalVariable(name: "payload_len", scope: !190, file: !3, line: 274, type: !84)
!190 = distinct !DILexicalBlock(scope: !184, file: !3, line: 273, column: 20)
!191 = !DILocalVariable(name: "alloc_len", scope: !190, file: !3, line: 275, type: !112)
!192 = !DILocation(line: 224, column: 23, scope: !171)
!193 = !DILocation(line: 224, column: 36, scope: !171)
!194 = !DILocation(line: 224, column: 54, scope: !171)
!195 = !DILocation(line: 230, column: 3, scope: !171)
!196 = !DILocalVariable(name: "payload", arg: 1, scope: !197, file: !3, line: 327, type: !91)
!197 = distinct !DISubprogram(name: "pbuf_alloc_reference", scope: !3, file: !3, line: 327, type: !198, isLocal: false, isDefinition: true, scopeLine: 328, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !200)
!198 = !DISubroutineType(types: !199)
!199 = !{!92, !91, !84, !175}
!200 = !{!196, !201, !202, !203}
!201 = !DILocalVariable(name: "length", arg: 2, scope: !197, file: !3, line: 327, type: !84)
!202 = !DILocalVariable(name: "type", arg: 3, scope: !197, file: !3, line: 327, type: !175)
!203 = !DILocalVariable(name: "p", scope: !197, file: !3, line: 329, type: !92)
!204 = !DILocation(line: 327, column: 28, scope: !197, inlinedAt: !205)
!205 = distinct !DILocation(line: 233, column: 11, scope: !184)
!206 = !DILocation(line: 327, column: 43, scope: !197, inlinedAt: !205)
!207 = !DILocation(line: 327, column: 61, scope: !197, inlinedAt: !205)
!208 = !DILocation(line: 330, column: 3, scope: !209, inlinedAt: !205)
!209 = distinct !DILexicalBlock(scope: !210, file: !3, line: 330, column: 3)
!210 = distinct !DILexicalBlock(scope: !197, file: !3, line: 330, column: 3)
!211 = !DILocation(line: 330, column: 3, scope: !212, inlinedAt: !205)
!212 = distinct !DILexicalBlock(scope: !213, file: !3, line: 330, column: 3)
!213 = distinct !DILexicalBlock(scope: !209, file: !3, line: 330, column: 3)
!214 = !DILocation(line: 330, column: 3, scope: !215, inlinedAt: !205)
!215 = distinct !DILexicalBlock(scope: !216, file: !3, line: 330, column: 3)
!216 = distinct !DILexicalBlock(scope: !217, file: !3, line: 330, column: 3)
!217 = distinct !DILexicalBlock(scope: !212, file: !3, line: 330, column: 3)
!218 = !DILocation(line: 332, column: 22, scope: !197, inlinedAt: !205)
!219 = !DILocation(line: 333, column: 9, scope: !220, inlinedAt: !205)
!220 = distinct !DILexicalBlock(scope: !197, file: !3, line: 333, column: 7)
!221 = !DILocation(line: 333, column: 7, scope: !197, inlinedAt: !205)
!222 = !DILocation(line: 332, column: 7, scope: !197, inlinedAt: !205)
!223 = !DILocation(line: 329, column: 16, scope: !197, inlinedAt: !205)
!224 = !DILocalVariable(name: "p", arg: 1, scope: !225, file: !3, line: 179, type: !92)
!225 = distinct !DISubprogram(name: "pbuf_init_alloced_pbuf", scope: !3, file: !3, line: 179, type: !226, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !228)
!226 = !DISubroutineType(types: !227)
!227 = !{null, !92, !91, !84, !84, !175, !100}
!228 = !{!224, !229, !230, !231, !232, !233}
!229 = !DILocalVariable(name: "payload", arg: 2, scope: !225, file: !3, line: 179, type: !91)
!230 = !DILocalVariable(name: "tot_len", arg: 3, scope: !225, file: !3, line: 179, type: !84)
!231 = !DILocalVariable(name: "len", arg: 4, scope: !225, file: !3, line: 179, type: !84)
!232 = !DILocalVariable(name: "type", arg: 5, scope: !225, file: !3, line: 179, type: !175)
!233 = !DILocalVariable(name: "flags", arg: 6, scope: !225, file: !3, line: 179, type: !100)
!234 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !235)
!235 = distinct !DILocation(line: 339, column: 3, scope: !197, inlinedAt: !205)
!236 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !235)
!237 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !235)
!238 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !235)
!239 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !235)
!240 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !235)
!241 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !235)
!242 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !235)
!243 = !{!244, !245, i64 0}
!244 = !{!"pbuf", !245, i64 0, !245, i64 8, !248, i64 16, !248, i64 18, !246, i64 20, !246, i64 21, !246, i64 22, !246, i64 23}
!245 = !{!"any pointer", !246, i64 0}
!246 = !{!"omnipotent char", !247, i64 0}
!247 = !{!"Simple C/C++ TBAA"}
!248 = !{!"short", !246, i64 0}
!249 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !235)
!250 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !235)
!251 = !{!244, !245, i64 8}
!252 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !235)
!253 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !235)
!254 = !{!244, !248, i64 16}
!255 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !235)
!256 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !235)
!257 = !{!244, !248, i64 18}
!258 = !DILocation(line: 185, column: 22, scope: !225, inlinedAt: !235)
!259 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !235)
!260 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !235)
!261 = !{!244, !246, i64 20}
!262 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !235)
!263 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !235)
!264 = !{!244, !246, i64 21}
!265 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !235)
!266 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !235)
!267 = !{!244, !246, i64 22}
!268 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !235)
!269 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !235)
!270 = !{!244, !246, i64 23}
!271 = !DILocation(line: 340, column: 3, scope: !197, inlinedAt: !205)
!272 = !DILocation(line: 227, column: 18, scope: !171)
!273 = !DILocation(line: 227, column: 9, scope: !171)
!274 = !DILocation(line: 226, column: 16, scope: !171)
!275 = !DILocation(line: 236, column: 24, scope: !183)
!276 = !DILocation(line: 237, column: 13, scope: !183)
!277 = !DILocation(line: 241, column: 7, scope: !183)
!278 = !DILocation(line: 239, column: 12, scope: !183)
!279 = !DILocation(line: 240, column: 15, scope: !183)
!280 = !DILocation(line: 238, column: 9, scope: !183)
!281 = !DILocation(line: 243, column: 28, scope: !188)
!282 = !DILocation(line: 243, column: 13, scope: !188)
!283 = !DILocation(line: 236, column: 20, scope: !183)
!284 = !DILocation(line: 244, column: 15, scope: !285)
!285 = distinct !DILexicalBlock(scope: !188, file: !3, line: 244, column: 13)
!286 = !DILocation(line: 244, column: 13, scope: !188)
!287 = !DILocation(line: 164, column: 3, scope: !288, inlinedAt: !295)
!288 = distinct !DILexicalBlock(scope: !289, file: !3, line: 164, column: 3)
!289 = distinct !DISubprogram(name: "pbuf_pool_is_empty", scope: !3, file: !3, line: 157, type: !290, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !292)
!290 = !DISubroutineType(types: !291)
!291 = !{null}
!292 = !{!293, !294}
!293 = !DILocalVariable(name: "queued", scope: !289, file: !3, line: 162, type: !100)
!294 = !DILocalVariable(name: "old_level", scope: !289, file: !3, line: 163, type: !110)
!295 = distinct !DILocation(line: 245, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !285, file: !3, line: 244, column: 24)
!297 = !DILocation(line: 163, column: 3, scope: !289, inlinedAt: !295)
!298 = !DILocation(line: 165, column: 12, scope: !289, inlinedAt: !295)
!299 = !{!246, !246, i64 0}
!300 = !DILocation(line: 162, column: 8, scope: !289, inlinedAt: !295)
!301 = !DILocation(line: 166, column: 27, scope: !289, inlinedAt: !295)
!302 = !DILocation(line: 167, column: 3, scope: !289, inlinedAt: !295)
!303 = !DILocation(line: 169, column: 8, scope: !304, inlinedAt: !295)
!304 = distinct !DILexicalBlock(scope: !289, file: !3, line: 169, column: 7)
!305 = !DILocation(line: 169, column: 7, scope: !289, inlinedAt: !295)
!306 = !DILocation(line: 171, column: 5, scope: !307, inlinedAt: !295)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 171, column: 5)
!308 = distinct !DILexicalBlock(scope: !309, file: !3, line: 171, column: 5)
!309 = distinct !DILexicalBlock(scope: !304, file: !3, line: 169, column: 16)
!310 = !DILocation(line: 171, column: 5, scope: !308, inlinedAt: !295)
!311 = !DILocation(line: 171, column: 5, scope: !312, inlinedAt: !295)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 171, column: 5)
!313 = distinct !DILexicalBlock(scope: !307, file: !3, line: 171, column: 5)
!314 = !DILocation(line: 171, column: 5, scope: !313, inlinedAt: !295)
!315 = !DILocation(line: 247, column: 15, scope: !316)
!316 = distinct !DILexicalBlock(scope: !296, file: !3, line: 247, column: 15)
!317 = !DILocation(line: 247, column: 15, scope: !296)
!318 = !DILocation(line: 248, column: 13, scope: !319)
!319 = distinct !DILexicalBlock(scope: !316, file: !3, line: 247, column: 18)
!320 = !DILocation(line: 249, column: 11, scope: !319)
!321 = !DILocation(line: 253, column: 16, scope: !188)
!322 = !DILocation(line: 242, column: 15, scope: !188)
!323 = !DILocation(line: 254, column: 35, scope: !188)
!324 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !325)
!325 = distinct !DILocation(line: 254, column: 9, scope: !188)
!326 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !325)
!327 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !325)
!328 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !325)
!329 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !325)
!330 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !325)
!331 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !325)
!332 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !325)
!333 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !325)
!334 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !325)
!335 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !325)
!336 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !325)
!337 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !325)
!338 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !325)
!339 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !325)
!340 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !325)
!341 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !325)
!342 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !325)
!343 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !325)
!344 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !325)
!345 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !325)
!346 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !325)
!347 = !DILocation(line: 258, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 258, column: 9)
!349 = distinct !DILexicalBlock(scope: !188, file: !3, line: 258, column: 9)
!350 = !DILocation(line: 258, column: 9, scope: !349)
!351 = !DILocation(line: 258, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !3, line: 258, column: 9)
!353 = distinct !DILexicalBlock(scope: !348, file: !3, line: 258, column: 9)
!354 = !DILocation(line: 258, column: 9, scope: !355)
!355 = distinct !DILexicalBlock(scope: !356, file: !3, line: 258, column: 9)
!356 = distinct !DILexicalBlock(scope: !357, file: !3, line: 258, column: 9)
!357 = distinct !DILexicalBlock(scope: !352, file: !3, line: 258, column: 9)
!358 = !DILocation(line: 260, column: 15, scope: !359)
!359 = distinct !DILexicalBlock(scope: !188, file: !3, line: 260, column: 13)
!360 = !DILocation(line: 260, column: 13, scope: !188)
!361 = !DILocation(line: 265, column: 22, scope: !362)
!362 = distinct !DILexicalBlock(scope: !359, file: !3, line: 263, column: 16)
!363 = !DILocation(line: 0, scope: !183)
!364 = !DILocation(line: 268, column: 35, scope: !188)
!365 = !DILocation(line: 270, column: 24, scope: !183)
!366 = !DILocation(line: 270, column: 7, scope: !188)
!367 = distinct !{!367, !277, !368}
!368 = !DILocation(line: 270, column: 27, scope: !183)
!369 = !DILocation(line: 274, column: 35, scope: !190)
!370 = !DILocation(line: 274, column: 27, scope: !190)
!371 = !DILocation(line: 274, column: 13, scope: !190)
!372 = !DILocation(line: 275, column: 85, scope: !190)
!373 = !DILocation(line: 275, column: 83, scope: !190)
!374 = !DILocation(line: 275, column: 18, scope: !190)
!375 = !DILocation(line: 278, column: 24, scope: !376)
!376 = distinct !DILexicalBlock(scope: !190, file: !3, line: 278, column: 11)
!377 = !DILocation(line: 279, column: 24, scope: !376)
!378 = !DILocation(line: 279, column: 22, scope: !376)
!379 = !DILocation(line: 278, column: 55, scope: !376)
!380 = !DILocation(line: 284, column: 26, scope: !190)
!381 = !DILocation(line: 285, column: 13, scope: !382)
!382 = distinct !DILexicalBlock(scope: !190, file: !3, line: 285, column: 11)
!383 = !DILocation(line: 285, column: 11, scope: !190)
!384 = !DILocation(line: 284, column: 11, scope: !190)
!385 = !DILocation(line: 288, column: 33, scope: !190)
!386 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !387)
!387 = distinct !DILocation(line: 288, column: 7, scope: !190)
!388 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !387)
!389 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !387)
!390 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !387)
!391 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !387)
!392 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !387)
!393 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !387)
!394 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !387)
!395 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !387)
!396 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !387)
!397 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !387)
!398 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !387)
!399 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !387)
!400 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !387)
!401 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !387)
!402 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !387)
!403 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !387)
!404 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !387)
!405 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !387)
!406 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !387)
!407 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !387)
!408 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !387)
!409 = !DILocation(line: 295, column: 7, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !3, line: 295, column: 7)
!411 = distinct !DILexicalBlock(scope: !412, file: !3, line: 295, column: 7)
!412 = distinct !DILexicalBlock(scope: !413, file: !3, line: 295, column: 7)
!413 = distinct !DILexicalBlock(scope: !184, file: !3, line: 295, column: 7)
!414 = !DILocation(line: 295, column: 7, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !3, line: 295, column: 7)
!416 = distinct !DILexicalBlock(scope: !417, file: !3, line: 295, column: 7)
!417 = distinct !DILexicalBlock(scope: !410, file: !3, line: 295, column: 7)
!418 = !DILocation(line: 0, scope: !296)
!419 = !DILocation(line: 300, column: 1, scope: !171)
!420 = !DILocation(line: 327, column: 28, scope: !197)
!421 = !DILocation(line: 327, column: 43, scope: !197)
!422 = !DILocation(line: 327, column: 61, scope: !197)
!423 = !DILocation(line: 330, column: 3, scope: !209)
!424 = !DILocation(line: 330, column: 3, scope: !212)
!425 = !DILocation(line: 330, column: 3, scope: !215)
!426 = !DILocation(line: 332, column: 22, scope: !197)
!427 = !DILocation(line: 333, column: 9, scope: !220)
!428 = !DILocation(line: 333, column: 7, scope: !197)
!429 = !DILocation(line: 332, column: 7, scope: !197)
!430 = !DILocation(line: 329, column: 16, scope: !197)
!431 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !432)
!432 = distinct !DILocation(line: 339, column: 3, scope: !197)
!433 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !432)
!434 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !432)
!435 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !432)
!436 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !432)
!437 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !432)
!438 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !432)
!439 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !432)
!440 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !432)
!441 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !432)
!442 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !432)
!443 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !432)
!444 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !432)
!445 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !432)
!446 = !DILocation(line: 185, column: 22, scope: !225, inlinedAt: !432)
!447 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !432)
!448 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !432)
!449 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !432)
!450 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !432)
!451 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !432)
!452 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !432)
!453 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !432)
!454 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !432)
!455 = !DILocation(line: 340, column: 3, scope: !197)
!456 = !DILocation(line: 0, scope: !197)
!457 = !DILocation(line: 341, column: 1, scope: !197)
!458 = distinct !DISubprogram(name: "pbuf_free", scope: !3, file: !3, line: 725, type: !459, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !461)
!459 = !DISubroutineType(types: !460)
!460 = !{!100, !92}
!461 = !{!462, !463, !464, !465, !466, !468, !469}
!462 = !DILocalVariable(name: "p", arg: 1, scope: !458, file: !3, line: 725, type: !92)
!463 = !DILocalVariable(name: "alloc_src", scope: !458, file: !3, line: 727, type: !100)
!464 = !DILocalVariable(name: "q", scope: !458, file: !3, line: 728, type: !92)
!465 = !DILocalVariable(name: "count", scope: !458, file: !3, line: 729, type: !100)
!466 = !DILocalVariable(name: "ref", scope: !467, file: !3, line: 746, type: !100)
!467 = distinct !DILexicalBlock(scope: !458, file: !3, line: 745, column: 21)
!468 = !DILocalVariable(name: "old_level", scope: !467, file: !3, line: 747, type: !110)
!469 = !DILocalVariable(name: "pc", scope: !470, file: !3, line: 766, type: !118)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 765, column: 50)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 765, column: 11)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 758, column: 19)
!473 = distinct !DILexicalBlock(scope: !467, file: !3, line: 758, column: 9)
!474 = !DILocation(line: 725, column: 24, scope: !458)
!475 = !DILocation(line: 731, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !458, file: !3, line: 731, column: 7)
!477 = !DILocation(line: 731, column: 7, scope: !458)
!478 = !DILocation(line: 732, column: 5, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 732, column: 5)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 732, column: 5)
!481 = distinct !DILexicalBlock(scope: !482, file: !3, line: 732, column: 5)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 732, column: 5)
!483 = distinct !DILexicalBlock(scope: !476, file: !3, line: 731, column: 18)
!484 = !DILocation(line: 732, column: 5, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 732, column: 5)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 732, column: 5)
!487 = distinct !DILexicalBlock(scope: !479, file: !3, line: 732, column: 5)
!488 = !DILocation(line: 729, column: 8, scope: !458)
!489 = !DILocation(line: 751, column: 5, scope: !490)
!490 = distinct !DILexicalBlock(scope: !467, file: !3, line: 751, column: 5)
!491 = !DILocation(line: 747, column: 5, scope: !467)
!492 = !DILocation(line: 753, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 753, column: 5)
!494 = distinct !DILexicalBlock(scope: !467, file: !3, line: 753, column: 5)
!495 = !DILocation(line: 753, column: 5, scope: !494)
!496 = !DILocation(line: 753, column: 5, scope: !497)
!497 = distinct !DILexicalBlock(scope: !498, file: !3, line: 753, column: 5)
!498 = distinct !DILexicalBlock(scope: !493, file: !3, line: 753, column: 5)
!499 = !DILocation(line: 753, column: 5, scope: !500)
!500 = distinct !DILexicalBlock(scope: !501, file: !3, line: 753, column: 5)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 753, column: 5)
!502 = distinct !DILexicalBlock(scope: !497, file: !3, line: 753, column: 5)
!503 = !DILocation(line: 755, column: 11, scope: !467)
!504 = !DILocation(line: 746, column: 21, scope: !467)
!505 = !DILocation(line: 756, column: 5, scope: !467)
!506 = !DILocation(line: 758, column: 13, scope: !473)
!507 = !DILocation(line: 758, column: 9, scope: !467)
!508 = !DILocation(line: 760, column: 14, scope: !472)
!509 = !DILocation(line: 728, column: 16, scope: !458)
!510 = !DILocation(line: 765, column: 15, scope: !471)
!511 = !DILocation(line: 765, column: 21, scope: !471)
!512 = !DILocation(line: 765, column: 44, scope: !471)
!513 = !DILocation(line: 765, column: 11, scope: !472)
!514 = !DILocation(line: 766, column: 29, scope: !470)
!515 = !DILocation(line: 767, column: 9, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !3, line: 767, column: 9)
!517 = distinct !DILexicalBlock(scope: !470, file: !3, line: 767, column: 9)
!518 = !{!519, !245, i64 24}
!519 = !{!"pbuf_custom", !244, i64 0, !245, i64 24}
!520 = !DILocation(line: 767, column: 9, scope: !517)
!521 = !DILocation(line: 767, column: 9, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 767, column: 9)
!523 = distinct !DILexicalBlock(scope: !516, file: !3, line: 767, column: 9)
!524 = !DILocation(line: 767, column: 9, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 767, column: 9)
!526 = distinct !DILexicalBlock(scope: !527, file: !3, line: 767, column: 9)
!527 = distinct !DILexicalBlock(scope: !522, file: !3, line: 767, column: 9)
!528 = !DILocation(line: 768, column: 9, scope: !470)
!529 = !DILocation(line: 769, column: 7, scope: !470)
!530 = !DILocation(line: 762, column: 19, scope: !472)
!531 = !DILocation(line: 727, column: 8, scope: !458)
!532 = !DILocation(line: 773, column: 13, scope: !533)
!533 = distinct !DILexicalBlock(scope: !471, file: !3, line: 771, column: 7)
!534 = !DILocation(line: 774, column: 37, scope: !535)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 773, column: 71)
!536 = distinct !DILexicalBlock(scope: !533, file: !3, line: 773, column: 13)
!537 = !DILocation(line: 774, column: 11, scope: !535)
!538 = !DILocation(line: 776, column: 9, scope: !535)
!539 = !DILocation(line: 777, column: 32, scope: !540)
!540 = distinct !DILexicalBlock(scope: !541, file: !3, line: 776, column: 73)
!541 = distinct !DILexicalBlock(scope: !536, file: !3, line: 776, column: 20)
!542 = !DILocation(line: 777, column: 11, scope: !540)
!543 = !DILocation(line: 779, column: 9, scope: !540)
!544 = !DILocation(line: 780, column: 20, scope: !545)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 779, column: 68)
!546 = distinct !DILexicalBlock(scope: !541, file: !3, line: 779, column: 20)
!547 = !DILocation(line: 780, column: 11, scope: !545)
!548 = !DILocation(line: 783, column: 11, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !3, line: 783, column: 11)
!550 = distinct !DILexicalBlock(scope: !551, file: !3, line: 783, column: 11)
!551 = distinct !DILexicalBlock(scope: !552, file: !3, line: 783, column: 11)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 783, column: 11)
!553 = distinct !DILexicalBlock(scope: !546, file: !3, line: 781, column: 16)
!554 = !DILocation(line: 783, column: 11, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 783, column: 11)
!556 = distinct !DILexicalBlock(scope: !557, file: !3, line: 783, column: 11)
!557 = distinct !DILexicalBlock(scope: !549, file: !3, line: 783, column: 11)
!558 = !DILocation(line: 786, column: 12, scope: !472)
!559 = !DILocation(line: 745, column: 12, scope: !458)
!560 = !DILocation(line: 745, column: 3, scope: !458)
!561 = distinct !{!561, !560, !562}
!562 = !DILocation(line: 796, column: 3, scope: !458)
!563 = !DILocation(line: 800, column: 1, scope: !458)
!564 = !DILocation(line: 194, column: 43, scope: !139)
!565 = !DILocation(line: 196, column: 2, scope: !139)
!566 = !DILocation(line: 196, column: 10, scope: !139)
!567 = !DILocation(line: 197, column: 2, scope: !139)
!568 = !DILocation(line: 198, column: 2, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !140, line: 198, column: 2)
!570 = distinct !DILexicalBlock(scope: !139, file: !140, line: 198, column: 2)
!571 = !DILocation(line: 199, column: 2, scope: !139)
!572 = !DILocation(line: 200, column: 1, scope: !139)
!573 = distinct !DISubprogram(name: "pbuf_alloced_custom", scope: !3, file: !3, line: 363, type: !574, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !576)
!574 = !DISubroutineType(types: !575)
!575 = !{!92, !174, !84, !175, !118, !91, !84}
!576 = !{!577, !578, !579, !580, !581, !582, !583, !584}
!577 = !DILocalVariable(name: "l", arg: 1, scope: !573, file: !3, line: 363, type: !174)
!578 = !DILocalVariable(name: "length", arg: 2, scope: !573, file: !3, line: 363, type: !84)
!579 = !DILocalVariable(name: "type", arg: 3, scope: !573, file: !3, line: 363, type: !175)
!580 = !DILocalVariable(name: "p", arg: 4, scope: !573, file: !3, line: 363, type: !118)
!581 = !DILocalVariable(name: "payload_mem", arg: 5, scope: !573, file: !3, line: 364, type: !91)
!582 = !DILocalVariable(name: "payload_mem_len", arg: 6, scope: !573, file: !3, line: 364, type: !84)
!583 = !DILocalVariable(name: "offset", scope: !573, file: !3, line: 366, type: !84)
!584 = !DILocalVariable(name: "payload", scope: !573, file: !3, line: 367, type: !91)
!585 = !DILocation(line: 363, column: 32, scope: !573)
!586 = !DILocation(line: 363, column: 41, scope: !573)
!587 = !DILocation(line: 363, column: 59, scope: !573)
!588 = !DILocation(line: 363, column: 85, scope: !573)
!589 = !DILocation(line: 364, column: 27, scope: !573)
!590 = !DILocation(line: 364, column: 46, scope: !573)
!591 = !DILocation(line: 366, column: 9, scope: !573)
!592 = !DILocation(line: 370, column: 7, scope: !593)
!593 = distinct !DILexicalBlock(scope: !573, file: !3, line: 370, column: 7)
!594 = !DILocation(line: 370, column: 37, scope: !593)
!595 = !DILocation(line: 370, column: 35, scope: !593)
!596 = !DILocation(line: 370, column: 46, scope: !593)
!597 = !DILocation(line: 370, column: 44, scope: !593)
!598 = !DILocation(line: 370, column: 7, scope: !573)
!599 = !DILocation(line: 375, column: 19, scope: !600)
!600 = distinct !DILexicalBlock(scope: !573, file: !3, line: 375, column: 7)
!601 = !DILocation(line: 376, column: 35, scope: !602)
!602 = distinct !DILexicalBlock(scope: !600, file: !3, line: 375, column: 28)
!603 = !DILocation(line: 367, column: 9, scope: !573)
!604 = !DILocation(line: 375, column: 7, scope: !573)
!605 = !DILocation(line: 380, column: 30, scope: !573)
!606 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !607)
!607 = distinct !DILocation(line: 380, column: 3, scope: !573)
!608 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !607)
!609 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !607)
!610 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !607)
!611 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !607)
!612 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !607)
!613 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !607)
!614 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !607)
!615 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !607)
!616 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !607)
!617 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !607)
!618 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !607)
!619 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !607)
!620 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !607)
!621 = !DILocation(line: 185, column: 22, scope: !225, inlinedAt: !607)
!622 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !607)
!623 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !607)
!624 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !607)
!625 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !607)
!626 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !607)
!627 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !607)
!628 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !607)
!629 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !607)
!630 = !DILocation(line: 381, column: 3, scope: !573)
!631 = !DILocation(line: 0, scope: !573)
!632 = !DILocation(line: 382, column: 1, scope: !573)
!633 = distinct !DISubprogram(name: "pbuf_realloc", scope: !3, file: !3, line: 402, type: !634, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !636)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !92, !84}
!636 = !{!637, !638, !639, !640, !641}
!637 = !DILocalVariable(name: "p", arg: 1, scope: !633, file: !3, line: 402, type: !92)
!638 = !DILocalVariable(name: "new_len", arg: 2, scope: !633, file: !3, line: 402, type: !84)
!639 = !DILocalVariable(name: "q", scope: !633, file: !3, line: 404, type: !92)
!640 = !DILocalVariable(name: "rem_len", scope: !633, file: !3, line: 405, type: !84)
!641 = !DILocalVariable(name: "shrink", scope: !633, file: !3, line: 406, type: !84)
!642 = !DILocation(line: 402, column: 27, scope: !633)
!643 = !DILocation(line: 402, column: 36, scope: !633)
!644 = !DILocation(line: 408, column: 3, scope: !645)
!645 = distinct !DILexicalBlock(scope: !646, file: !3, line: 408, column: 3)
!646 = distinct !DILexicalBlock(scope: !633, file: !3, line: 408, column: 3)
!647 = !DILocation(line: 408, column: 3, scope: !646)
!648 = !DILocation(line: 408, column: 3, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !3, line: 408, column: 3)
!650 = distinct !DILexicalBlock(scope: !645, file: !3, line: 408, column: 3)
!651 = !DILocation(line: 408, column: 3, scope: !652)
!652 = distinct !DILexicalBlock(scope: !653, file: !3, line: 408, column: 3)
!653 = distinct !DILexicalBlock(scope: !654, file: !3, line: 408, column: 3)
!654 = distinct !DILexicalBlock(scope: !649, file: !3, line: 408, column: 3)
!655 = !DILocation(line: 411, column: 21, scope: !656)
!656 = distinct !DILexicalBlock(scope: !633, file: !3, line: 411, column: 7)
!657 = !DILocation(line: 411, column: 15, scope: !656)
!658 = !DILocation(line: 411, column: 7, scope: !633)
!659 = !DILocation(line: 424, column: 23, scope: !633)
!660 = !DILocation(line: 0, scope: !661)
!661 = distinct !DILexicalBlock(scope: !633, file: !3, line: 424, column: 28)
!662 = !DILocation(line: 404, column: 16, scope: !633)
!663 = !DILocation(line: 405, column: 9, scope: !633)
!664 = !DILocation(line: 424, column: 18, scope: !633)
!665 = !DILocation(line: 424, column: 3, scope: !633)
!666 = !DILocation(line: 426, column: 31, scope: !661)
!667 = !DILocation(line: 428, column: 29, scope: !661)
!668 = !DILocation(line: 428, column: 37, scope: !661)
!669 = !DILocation(line: 428, column: 16, scope: !661)
!670 = !DILocation(line: 430, column: 12, scope: !661)
!671 = !DILocation(line: 431, column: 5, scope: !672)
!672 = distinct !DILexicalBlock(scope: !673, file: !3, line: 431, column: 5)
!673 = distinct !DILexicalBlock(scope: !661, file: !3, line: 431, column: 5)
!674 = !DILocation(line: 431, column: 5, scope: !673)
!675 = distinct !{!675, !665, !676}
!676 = !DILocation(line: 432, column: 3, scope: !633)
!677 = !DILocation(line: 431, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !679, file: !3, line: 431, column: 5)
!679 = distinct !DILexicalBlock(scope: !672, file: !3, line: 431, column: 5)
!680 = !DILocation(line: 431, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 431, column: 5)
!682 = distinct !DILexicalBlock(scope: !683, file: !3, line: 431, column: 5)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 431, column: 5)
!684 = !DILocation(line: 438, column: 7, scope: !685)
!685 = distinct !DILexicalBlock(scope: !633, file: !3, line: 438, column: 7)
!686 = !DILocation(line: 438, column: 77, scope: !685)
!687 = !DILocation(line: 438, column: 65, scope: !685)
!688 = !DILocation(line: 440, column: 15, scope: !685)
!689 = !DILocation(line: 440, column: 21, scope: !685)
!690 = !DILocation(line: 440, column: 44, scope: !685)
!691 = !DILocation(line: 438, column: 7, scope: !633)
!692 = !DILocation(line: 444, column: 33, scope: !693)
!693 = distinct !DILexicalBlock(scope: !685, file: !3, line: 442, column: 8)
!694 = !DILocation(line: 444, column: 61, scope: !693)
!695 = !DILocation(line: 444, column: 69, scope: !693)
!696 = !DILocation(line: 444, column: 84, scope: !693)
!697 = !DILocation(line: 444, column: 82, scope: !693)
!698 = !DILocation(line: 444, column: 24, scope: !693)
!699 = !DILocation(line: 445, column: 5, scope: !700)
!700 = distinct !DILexicalBlock(scope: !701, file: !3, line: 445, column: 5)
!701 = distinct !DILexicalBlock(scope: !693, file: !3, line: 445, column: 5)
!702 = !DILocation(line: 445, column: 5, scope: !701)
!703 = !DILocation(line: 444, column: 9, scope: !693)
!704 = !DILocation(line: 448, column: 6, scope: !633)
!705 = !DILocation(line: 445, column: 5, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !3, line: 445, column: 5)
!707 = distinct !DILexicalBlock(scope: !700, file: !3, line: 445, column: 5)
!708 = !DILocation(line: 445, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 445, column: 5)
!710 = distinct !DILexicalBlock(scope: !711, file: !3, line: 445, column: 5)
!711 = distinct !DILexicalBlock(scope: !706, file: !3, line: 445, column: 5)
!712 = !DILocation(line: 0, scope: !633)
!713 = !DILocation(line: 448, column: 10, scope: !633)
!714 = !DILocation(line: 449, column: 6, scope: !633)
!715 = !DILocation(line: 449, column: 14, scope: !633)
!716 = !DILocation(line: 452, column: 10, scope: !717)
!717 = distinct !DILexicalBlock(scope: !633, file: !3, line: 452, column: 7)
!718 = !DILocation(line: 452, column: 15, scope: !717)
!719 = !DILocation(line: 452, column: 7, scope: !633)
!720 = !DILocation(line: 454, column: 5, scope: !721)
!721 = distinct !DILexicalBlock(scope: !717, file: !3, line: 452, column: 24)
!722 = !DILocation(line: 455, column: 3, scope: !721)
!723 = !DILocation(line: 457, column: 11, scope: !633)
!724 = !DILocation(line: 459, column: 1, scope: !633)
!725 = distinct !DISubprogram(name: "pbuf_add_header", scope: !3, file: !3, line: 551, type: !726, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !728)
!726 = !DISubroutineType(types: !727)
!727 = !{!100, !92, !114}
!728 = !{!729, !730}
!729 = !DILocalVariable(name: "p", arg: 1, scope: !725, file: !3, line: 551, type: !92)
!730 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !725, file: !3, line: 551, type: !114)
!731 = !DILocation(line: 551, column: 30, scope: !725)
!732 = !DILocation(line: 551, column: 40, scope: !725)
!733 = !DILocalVariable(name: "p", arg: 1, scope: !734, file: !3, line: 473, type: !92)
!734 = distinct !DISubprogram(name: "pbuf_add_header_impl", scope: !3, file: !3, line: 473, type: !735, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!100, !92, !114, !100}
!737 = !{!733, !738, !739, !740, !741, !742}
!738 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !734, file: !3, line: 473, type: !114)
!739 = !DILocalVariable(name: "force", arg: 3, scope: !734, file: !3, line: 473, type: !100)
!740 = !DILocalVariable(name: "type_internal", scope: !734, file: !3, line: 475, type: !84)
!741 = !DILocalVariable(name: "payload", scope: !734, file: !3, line: 476, type: !91)
!742 = !DILocalVariable(name: "increment_magnitude", scope: !734, file: !3, line: 477, type: !84)
!743 = !DILocation(line: 473, column: 35, scope: !734, inlinedAt: !744)
!744 = distinct !DILocation(line: 553, column: 10, scope: !725)
!745 = !DILocation(line: 473, column: 45, scope: !734, inlinedAt: !744)
!746 = !DILocation(line: 473, column: 73, scope: !734, inlinedAt: !744)
!747 = !DILocation(line: 479, column: 3, scope: !748, inlinedAt: !744)
!748 = distinct !DILexicalBlock(scope: !749, file: !3, line: 479, column: 3)
!749 = distinct !DILexicalBlock(scope: !734, file: !3, line: 479, column: 3)
!750 = !DILocation(line: 479, column: 3, scope: !749, inlinedAt: !744)
!751 = !DILocation(line: 479, column: 3, scope: !752, inlinedAt: !744)
!752 = distinct !DILexicalBlock(scope: !753, file: !3, line: 479, column: 3)
!753 = distinct !DILexicalBlock(scope: !748, file: !3, line: 479, column: 3)
!754 = !DILocation(line: 479, column: 3, scope: !755, inlinedAt: !744)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 479, column: 3)
!756 = distinct !DILexicalBlock(scope: !757, file: !3, line: 479, column: 3)
!757 = distinct !DILexicalBlock(scope: !752, file: !3, line: 479, column: 3)
!758 = !DILocation(line: 480, column: 45, scope: !759, inlinedAt: !744)
!759 = distinct !DILexicalBlock(scope: !734, file: !3, line: 480, column: 7)
!760 = !DILocation(line: 480, column: 19, scope: !759, inlinedAt: !744)
!761 = !DILocation(line: 483, column: 29, scope: !762, inlinedAt: !744)
!762 = distinct !DILexicalBlock(scope: !734, file: !3, line: 483, column: 7)
!763 = !DILocation(line: 483, column: 7, scope: !734, inlinedAt: !744)
!764 = !DILocation(line: 487, column: 25, scope: !734, inlinedAt: !744)
!765 = !DILocation(line: 489, column: 15, scope: !766, inlinedAt: !744)
!766 = distinct !DILexicalBlock(scope: !734, file: !3, line: 489, column: 7)
!767 = !DILocation(line: 477, column: 9, scope: !734, inlinedAt: !744)
!768 = !DILocation(line: 489, column: 40, scope: !766, inlinedAt: !744)
!769 = !DILocation(line: 489, column: 7, scope: !766, inlinedAt: !744)
!770 = !DILocation(line: 489, column: 49, scope: !766, inlinedAt: !744)
!771 = !DILocation(line: 489, column: 7, scope: !734, inlinedAt: !744)
!772 = !DILocation(line: 493, column: 22, scope: !734, inlinedAt: !744)
!773 = !DILocation(line: 496, column: 21, scope: !774, inlinedAt: !744)
!774 = distinct !DILexicalBlock(scope: !734, file: !3, line: 496, column: 7)
!775 = !DILocation(line: 496, column: 7, scope: !734, inlinedAt: !744)
!776 = !DILocation(line: 498, column: 26, scope: !777, inlinedAt: !744)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 496, column: 62)
!778 = !DILocation(line: 498, column: 34, scope: !777, inlinedAt: !744)
!779 = !DILocation(line: 476, column: 9, scope: !734, inlinedAt: !744)
!780 = !DILocation(line: 500, column: 37, scope: !781, inlinedAt: !744)
!781 = distinct !DILexicalBlock(scope: !777, file: !3, line: 500, column: 9)
!782 = !DILocation(line: 500, column: 25, scope: !781, inlinedAt: !744)
!783 = !DILocation(line: 500, column: 9, scope: !777, inlinedAt: !744)
!784 = !DILocation(line: 522, column: 14, scope: !734, inlinedAt: !744)
!785 = !DILocation(line: 523, column: 23, scope: !734, inlinedAt: !744)
!786 = !DILocation(line: 523, column: 12, scope: !734, inlinedAt: !744)
!787 = !DILocation(line: 523, column: 10, scope: !734, inlinedAt: !744)
!788 = !DILocation(line: 524, column: 14, scope: !734, inlinedAt: !744)
!789 = !DILocation(line: 527, column: 3, scope: !734, inlinedAt: !744)
!790 = !DILocation(line: 0, scope: !791, inlinedAt: !744)
!791 = distinct !DILexicalBlock(scope: !792, file: !3, line: 512, column: 12)
!792 = distinct !DILexicalBlock(scope: !793, file: !3, line: 510, column: 9)
!793 = distinct !DILexicalBlock(scope: !774, file: !3, line: 508, column: 10)
!794 = !DILocation(line: 553, column: 3, scope: !725)
!795 = distinct !DISubprogram(name: "pbuf_add_header_force", scope: !3, file: !3, line: 561, type: !726, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !796)
!796 = !{!797, !798}
!797 = !DILocalVariable(name: "p", arg: 1, scope: !795, file: !3, line: 561, type: !92)
!798 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !795, file: !3, line: 561, type: !114)
!799 = !DILocation(line: 561, column: 36, scope: !795)
!800 = !DILocation(line: 561, column: 46, scope: !795)
!801 = !DILocation(line: 473, column: 35, scope: !734, inlinedAt: !802)
!802 = distinct !DILocation(line: 563, column: 10, scope: !795)
!803 = !DILocation(line: 473, column: 45, scope: !734, inlinedAt: !802)
!804 = !DILocation(line: 473, column: 73, scope: !734, inlinedAt: !802)
!805 = !DILocation(line: 479, column: 3, scope: !748, inlinedAt: !802)
!806 = !DILocation(line: 479, column: 3, scope: !749, inlinedAt: !802)
!807 = !DILocation(line: 479, column: 3, scope: !752, inlinedAt: !802)
!808 = !DILocation(line: 479, column: 3, scope: !755, inlinedAt: !802)
!809 = !DILocation(line: 480, column: 45, scope: !759, inlinedAt: !802)
!810 = !DILocation(line: 480, column: 19, scope: !759, inlinedAt: !802)
!811 = !DILocation(line: 483, column: 29, scope: !762, inlinedAt: !802)
!812 = !DILocation(line: 483, column: 7, scope: !734, inlinedAt: !802)
!813 = !DILocation(line: 487, column: 25, scope: !734, inlinedAt: !802)
!814 = !DILocation(line: 489, column: 15, scope: !766, inlinedAt: !802)
!815 = !DILocation(line: 477, column: 9, scope: !734, inlinedAt: !802)
!816 = !DILocation(line: 489, column: 40, scope: !766, inlinedAt: !802)
!817 = !DILocation(line: 489, column: 7, scope: !766, inlinedAt: !802)
!818 = !DILocation(line: 489, column: 49, scope: !766, inlinedAt: !802)
!819 = !DILocation(line: 489, column: 7, scope: !734, inlinedAt: !802)
!820 = !DILocation(line: 493, column: 22, scope: !734, inlinedAt: !802)
!821 = !DILocation(line: 496, column: 21, scope: !774, inlinedAt: !802)
!822 = !DILocation(line: 0, scope: !795)
!823 = !DILocation(line: 476, column: 9, scope: !734, inlinedAt: !802)
!824 = !DILocation(line: 496, column: 7, scope: !734, inlinedAt: !802)
!825 = !DILocation(line: 500, column: 37, scope: !781, inlinedAt: !802)
!826 = !DILocation(line: 500, column: 25, scope: !781, inlinedAt: !802)
!827 = !DILocation(line: 500, column: 9, scope: !777, inlinedAt: !802)
!828 = !DILocation(line: 522, column: 14, scope: !734, inlinedAt: !802)
!829 = !DILocation(line: 523, column: 23, scope: !734, inlinedAt: !802)
!830 = !DILocation(line: 523, column: 12, scope: !734, inlinedAt: !802)
!831 = !DILocation(line: 523, column: 10, scope: !734, inlinedAt: !802)
!832 = !DILocation(line: 524, column: 14, scope: !734, inlinedAt: !802)
!833 = !DILocation(line: 527, column: 3, scope: !734, inlinedAt: !802)
!834 = !DILocation(line: 0, scope: !791, inlinedAt: !802)
!835 = !DILocation(line: 563, column: 3, scope: !795)
!836 = distinct !DISubprogram(name: "pbuf_remove_header", scope: !3, file: !3, line: 582, type: !726, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !837)
!837 = !{!838, !839, !840, !841}
!838 = !DILocalVariable(name: "p", arg: 1, scope: !836, file: !3, line: 582, type: !92)
!839 = !DILocalVariable(name: "header_size_decrement", arg: 2, scope: !836, file: !3, line: 582, type: !114)
!840 = !DILocalVariable(name: "payload", scope: !836, file: !3, line: 584, type: !91)
!841 = !DILocalVariable(name: "increment_magnitude", scope: !836, file: !3, line: 585, type: !84)
!842 = !DILocation(line: 582, column: 33, scope: !836)
!843 = !DILocation(line: 582, column: 43, scope: !836)
!844 = !DILocation(line: 587, column: 3, scope: !845)
!845 = distinct !DILexicalBlock(scope: !846, file: !3, line: 587, column: 3)
!846 = distinct !DILexicalBlock(scope: !836, file: !3, line: 587, column: 3)
!847 = !DILocation(line: 587, column: 3, scope: !846)
!848 = !DILocation(line: 587, column: 3, scope: !849)
!849 = distinct !DILexicalBlock(scope: !850, file: !3, line: 587, column: 3)
!850 = distinct !DILexicalBlock(scope: !845, file: !3, line: 587, column: 3)
!851 = !DILocation(line: 587, column: 3, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 587, column: 3)
!853 = distinct !DILexicalBlock(scope: !854, file: !3, line: 587, column: 3)
!854 = distinct !DILexicalBlock(scope: !849, file: !3, line: 587, column: 3)
!855 = !DILocation(line: 588, column: 45, scope: !856)
!856 = distinct !DILexicalBlock(scope: !836, file: !3, line: 588, column: 7)
!857 = !DILocation(line: 588, column: 19, scope: !856)
!858 = !DILocation(line: 591, column: 29, scope: !859)
!859 = distinct !DILexicalBlock(scope: !836, file: !3, line: 591, column: 7)
!860 = !DILocation(line: 591, column: 7, scope: !836)
!861 = !DILocation(line: 595, column: 25, scope: !836)
!862 = !DILocation(line: 597, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 597, column: 3)
!864 = distinct !DILexicalBlock(scope: !836, file: !3, line: 597, column: 3)
!865 = !DILocation(line: 585, column: 9, scope: !836)
!866 = !DILocation(line: 597, column: 3, scope: !864)
!867 = !DILocation(line: 597, column: 3, scope: !868)
!868 = distinct !DILexicalBlock(scope: !869, file: !3, line: 597, column: 3)
!869 = distinct !DILexicalBlock(scope: !863, file: !3, line: 597, column: 3)
!870 = !DILocation(line: 597, column: 3, scope: !871)
!871 = distinct !DILexicalBlock(scope: !872, file: !3, line: 597, column: 3)
!872 = distinct !DILexicalBlock(scope: !873, file: !3, line: 597, column: 3)
!873 = distinct !DILexicalBlock(scope: !868, file: !3, line: 597, column: 3)
!874 = !DILocation(line: 600, column: 16, scope: !836)
!875 = !DILocation(line: 584, column: 9, scope: !836)
!876 = !DILocation(line: 604, column: 27, scope: !836)
!877 = !DILocation(line: 604, column: 35, scope: !836)
!878 = !DILocation(line: 604, column: 14, scope: !836)
!879 = !DILocation(line: 606, column: 12, scope: !836)
!880 = !DILocation(line: 606, column: 10, scope: !836)
!881 = !DILocation(line: 607, column: 27, scope: !836)
!882 = !DILocation(line: 607, column: 16, scope: !836)
!883 = !DILocation(line: 607, column: 14, scope: !836)
!884 = !DILocation(line: 612, column: 3, scope: !836)
!885 = !DILocation(line: 0, scope: !836)
!886 = !DILocation(line: 613, column: 1, scope: !836)
!887 = distinct !DISubprogram(name: "pbuf_header", scope: !3, file: !3, line: 646, type: !888, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !894)
!888 = !DISubroutineType(types: !889)
!889 = !{!100, !92, !890}
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !85, line: 128, baseType: !891)
!891 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !87, line: 32, baseType: !892)
!892 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !89, line: 55, baseType: !893)
!893 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!894 = !{!895, !896}
!895 = !DILocalVariable(name: "p", arg: 1, scope: !887, file: !3, line: 646, type: !92)
!896 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !887, file: !3, line: 646, type: !890)
!897 = !DILocation(line: 646, column: 26, scope: !887)
!898 = !DILocation(line: 646, column: 35, scope: !887)
!899 = !DILocation(line: 648, column: 10, scope: !887)
!900 = !DILocation(line: 648, column: 3, scope: !887)
!901 = distinct !DISubprogram(name: "pbuf_header_impl", scope: !3, file: !3, line: 616, type: !902, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !904)
!902 = !DISubroutineType(types: !903)
!903 = !{!100, !92, !890, !100}
!904 = !{!905, !906, !907}
!905 = !DILocalVariable(name: "p", arg: 1, scope: !901, file: !3, line: 616, type: !92)
!906 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !901, file: !3, line: 616, type: !890)
!907 = !DILocalVariable(name: "force", arg: 3, scope: !901, file: !3, line: 616, type: !100)
!908 = !DILocation(line: 616, column: 31, scope: !901)
!909 = !DILocation(line: 616, column: 40, scope: !901)
!910 = !DILocation(line: 616, column: 68, scope: !901)
!911 = !DILocation(line: 618, column: 29, scope: !912)
!912 = distinct !DILexicalBlock(scope: !901, file: !3, line: 618, column: 7)
!913 = !DILocation(line: 0, scope: !914)
!914 = distinct !DILexicalBlock(scope: !912, file: !3, line: 620, column: 10)
!915 = !DILocation(line: 618, column: 7, scope: !901)
!916 = !DILocation(line: 619, column: 43, scope: !917)
!917 = distinct !DILexicalBlock(scope: !912, file: !3, line: 618, column: 34)
!918 = !DILocation(line: 619, column: 12, scope: !917)
!919 = !DILocation(line: 619, column: 5, scope: !917)
!920 = !DILocation(line: 473, column: 35, scope: !734, inlinedAt: !921)
!921 = distinct !DILocation(line: 621, column: 12, scope: !914)
!922 = !DILocation(line: 473, column: 45, scope: !734, inlinedAt: !921)
!923 = !DILocation(line: 473, column: 73, scope: !734, inlinedAt: !921)
!924 = !DILocation(line: 479, column: 3, scope: !748, inlinedAt: !921)
!925 = !DILocation(line: 479, column: 3, scope: !749, inlinedAt: !921)
!926 = !DILocation(line: 479, column: 3, scope: !752, inlinedAt: !921)
!927 = !DILocation(line: 479, column: 3, scope: !755, inlinedAt: !921)
!928 = !DILocation(line: 483, column: 29, scope: !762, inlinedAt: !921)
!929 = !DILocation(line: 483, column: 7, scope: !734, inlinedAt: !921)
!930 = !DILocation(line: 489, column: 40, scope: !766, inlinedAt: !921)
!931 = !DILocation(line: 489, column: 7, scope: !766, inlinedAt: !921)
!932 = !DILocation(line: 489, column: 49, scope: !766, inlinedAt: !921)
!933 = !DILocation(line: 489, column: 7, scope: !734, inlinedAt: !921)
!934 = !DILocation(line: 493, column: 22, scope: !734, inlinedAt: !921)
!935 = !DILocation(line: 496, column: 21, scope: !774, inlinedAt: !921)
!936 = !DILocation(line: 496, column: 7, scope: !734, inlinedAt: !921)
!937 = !DILocation(line: 498, column: 26, scope: !777, inlinedAt: !921)
!938 = !DILocation(line: 498, column: 34, scope: !777, inlinedAt: !921)
!939 = !DILocation(line: 476, column: 9, scope: !734, inlinedAt: !921)
!940 = !DILocation(line: 500, column: 37, scope: !781, inlinedAt: !921)
!941 = !DILocation(line: 500, column: 25, scope: !781, inlinedAt: !921)
!942 = !DILocation(line: 500, column: 9, scope: !777, inlinedAt: !921)
!943 = !DILocation(line: 510, column: 9, scope: !792, inlinedAt: !921)
!944 = !DILocation(line: 510, column: 9, scope: !793, inlinedAt: !921)
!945 = !DILocation(line: 511, column: 28, scope: !946, inlinedAt: !921)
!946 = distinct !DILexicalBlock(scope: !792, file: !3, line: 510, column: 16)
!947 = !DILocation(line: 511, column: 36, scope: !946, inlinedAt: !921)
!948 = !DILocation(line: 522, column: 6, scope: !734, inlinedAt: !921)
!949 = !DILocation(line: 0, scope: !946, inlinedAt: !921)
!950 = !DILocation(line: 522, column: 14, scope: !734, inlinedAt: !921)
!951 = !DILocation(line: 523, column: 23, scope: !734, inlinedAt: !921)
!952 = !DILocation(line: 523, column: 12, scope: !734, inlinedAt: !921)
!953 = !DILocation(line: 523, column: 10, scope: !734, inlinedAt: !921)
!954 = !DILocation(line: 524, column: 14, scope: !734, inlinedAt: !921)
!955 = !DILocation(line: 527, column: 3, scope: !734, inlinedAt: !921)
!956 = !DILocation(line: 623, column: 1, scope: !901)
!957 = distinct !DISubprogram(name: "pbuf_header_force", scope: !3, file: !3, line: 656, type: !888, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !958)
!958 = !{!959, !960}
!959 = !DILocalVariable(name: "p", arg: 1, scope: !957, file: !3, line: 656, type: !92)
!960 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !957, file: !3, line: 656, type: !890)
!961 = !DILocation(line: 656, column: 32, scope: !957)
!962 = !DILocation(line: 656, column: 41, scope: !957)
!963 = !DILocation(line: 658, column: 10, scope: !957)
!964 = !DILocation(line: 658, column: 3, scope: !957)
!965 = distinct !DISubprogram(name: "pbuf_free_header", scope: !3, file: !3, line: 671, type: !966, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !968)
!966 = !DISubroutineType(types: !967)
!967 = !{!92, !92, !84}
!968 = !{!969, !970, !971, !972, !973}
!969 = !DILocalVariable(name: "q", arg: 1, scope: !965, file: !3, line: 671, type: !92)
!970 = !DILocalVariable(name: "size", arg: 2, scope: !965, file: !3, line: 671, type: !84)
!971 = !DILocalVariable(name: "p", scope: !965, file: !3, line: 673, type: !92)
!972 = !DILocalVariable(name: "free_left", scope: !965, file: !3, line: 674, type: !84)
!973 = !DILocalVariable(name: "f", scope: !974, file: !3, line: 677, type: !92)
!974 = distinct !DILexicalBlock(scope: !975, file: !3, line: 676, column: 30)
!975 = distinct !DILexicalBlock(scope: !976, file: !3, line: 676, column: 9)
!976 = distinct !DILexicalBlock(scope: !965, file: !3, line: 675, column: 26)
!977 = !DILocation(line: 671, column: 31, scope: !965)
!978 = !DILocation(line: 671, column: 40, scope: !965)
!979 = !DILocation(line: 673, column: 16, scope: !965)
!980 = !DILocation(line: 674, column: 9, scope: !965)
!981 = !DILocation(line: 675, column: 10, scope: !965)
!982 = !DILocation(line: 675, column: 20, scope: !965)
!983 = !DILocation(line: 675, column: 3, scope: !965)
!984 = !DILocation(line: 676, column: 25, scope: !975)
!985 = !DILocation(line: 676, column: 19, scope: !975)
!986 = !DILocation(line: 676, column: 9, scope: !976)
!987 = !DILocation(line: 683, column: 29, scope: !988)
!988 = distinct !DILexicalBlock(scope: !975, file: !3, line: 682, column: 12)
!989 = !DILocation(line: 683, column: 7, scope: !988)
!990 = !DILocation(line: 677, column: 20, scope: !974)
!991 = !DILocation(line: 678, column: 37, scope: !974)
!992 = !DILocation(line: 679, column: 14, scope: !974)
!993 = !DILocation(line: 680, column: 15, scope: !974)
!994 = !DILocation(line: 681, column: 7, scope: !974)
!995 = distinct !{!995, !983, !996}
!996 = !DILocation(line: 686, column: 3, scope: !965)
!997 = !DILocation(line: 0, scope: !974)
!998 = !DILocation(line: 687, column: 3, scope: !965)
!999 = distinct !DISubprogram(name: "pbuf_clen", scope: !3, file: !3, line: 809, type: !1000, isLocal: false, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1004)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!84, !1002}
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!1004 = !{!1005, !1006}
!1005 = !DILocalVariable(name: "p", arg: 1, scope: !999, file: !3, line: 809, type: !1002)
!1006 = !DILocalVariable(name: "len", scope: !999, file: !3, line: 811, type: !84)
!1007 = !DILocation(line: 809, column: 30, scope: !999)
!1008 = !DILocation(line: 811, column: 9, scope: !999)
!1009 = !DILocation(line: 814, column: 12, scope: !999)
!1010 = !DILocation(line: 814, column: 3, scope: !999)
!1011 = !DILocation(line: 815, column: 5, scope: !1012)
!1012 = distinct !DILexicalBlock(scope: !999, file: !3, line: 814, column: 21)
!1013 = !DILocation(line: 816, column: 12, scope: !1012)
!1014 = distinct !{!1014, !1010, !1015}
!1015 = !DILocation(line: 817, column: 3, scope: !999)
!1016 = !DILocation(line: 0, scope: !1012)
!1017 = !DILocation(line: 818, column: 3, scope: !999)
!1018 = distinct !DISubprogram(name: "pbuf_ref", scope: !3, file: !3, line: 829, type: !125, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1019)
!1019 = !{!1020, !1021}
!1020 = !DILocalVariable(name: "p", arg: 1, scope: !1018, file: !3, line: 829, type: !92)
!1021 = !DILocalVariable(name: "old_level", scope: !1022, file: !3, line: 833, type: !110)
!1022 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 833, column: 5)
!1023 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 832, column: 18)
!1024 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 832, column: 7)
!1025 = !DILocation(line: 829, column: 23, scope: !1018)
!1026 = !DILocation(line: 832, column: 9, scope: !1024)
!1027 = !DILocation(line: 832, column: 7, scope: !1018)
!1028 = !DILocation(line: 833, column: 5, scope: !1029)
!1029 = distinct !DILexicalBlock(scope: !1022, file: !3, line: 833, column: 5)
!1030 = !DILocation(line: 833, column: 5, scope: !1022)
!1031 = !DILocation(line: 834, column: 5, scope: !1032)
!1032 = distinct !DILexicalBlock(scope: !1033, file: !3, line: 834, column: 5)
!1033 = distinct !DILexicalBlock(scope: !1023, file: !3, line: 834, column: 5)
!1034 = !DILocation(line: 834, column: 5, scope: !1033)
!1035 = !DILocation(line: 834, column: 5, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 834, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 834, column: 5)
!1038 = !DILocation(line: 834, column: 5, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1040, file: !3, line: 834, column: 5)
!1040 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 834, column: 5)
!1041 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 834, column: 5)
!1042 = !DILocation(line: 836, column: 1, scope: !1018)
!1043 = distinct !DISubprogram(name: "pbuf_cat", scope: !3, file: !3, line: 853, type: !1044, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1046)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !92, !92}
!1046 = !{!1047, !1048, !1049}
!1047 = !DILocalVariable(name: "h", arg: 1, scope: !1043, file: !3, line: 853, type: !92)
!1048 = !DILocalVariable(name: "t", arg: 2, scope: !1043, file: !3, line: 853, type: !92)
!1049 = !DILocalVariable(name: "p", scope: !1043, file: !3, line: 855, type: !92)
!1050 = !DILocation(line: 853, column: 23, scope: !1043)
!1051 = !DILocation(line: 853, column: 39, scope: !1043)
!1052 = !DILocation(line: 857, column: 3, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 857, column: 3)
!1054 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 857, column: 3)
!1055 = !DILocation(line: 855, column: 16, scope: !1043)
!1056 = !DILocation(line: 861, column: 18, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1058, file: !3, line: 861, column: 3)
!1058 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 861, column: 3)
!1059 = !DILocation(line: 861, column: 23, scope: !1057)
!1060 = !DILocation(line: 0, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 866, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1043, file: !3, line: 866, column: 3)
!1063 = !DILocation(line: 861, column: 3, scope: !1058)
!1064 = !DILocation(line: 857, column: 3, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 857, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1053, file: !3, line: 857, column: 3)
!1067 = !DILocation(line: 857, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !3, line: 857, column: 3)
!1069 = distinct !DILexicalBlock(scope: !1070, file: !3, line: 857, column: 3)
!1070 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 857, column: 3)
!1071 = !DILocation(line: 863, column: 42, scope: !1072)
!1072 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 861, column: 45)
!1073 = !DILocation(line: 863, column: 37, scope: !1072)
!1074 = !DILocation(line: 863, column: 16, scope: !1072)
!1075 = distinct !{!1075, !1063, !1076}
!1076 = !DILocation(line: 864, column: 3, scope: !1058)
!1077 = !DILocation(line: 866, column: 3, scope: !1061)
!1078 = !DILocation(line: 0, scope: !1057)
!1079 = !DILocation(line: 866, column: 3, scope: !1062)
!1080 = !DILocation(line: 866, column: 3, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1082, file: !3, line: 866, column: 3)
!1082 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 866, column: 3)
!1083 = !DILocation(line: 866, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1085, file: !3, line: 866, column: 3)
!1085 = distinct !DILexicalBlock(scope: !1086, file: !3, line: 866, column: 3)
!1086 = distinct !DILexicalBlock(scope: !1081, file: !3, line: 866, column: 3)
!1087 = !DILocation(line: 869, column: 40, scope: !1043)
!1088 = !DILocation(line: 869, column: 35, scope: !1043)
!1089 = !DILocation(line: 869, column: 14, scope: !1043)
!1090 = !DILocation(line: 871, column: 11, scope: !1043)
!1091 = !DILocation(line: 875, column: 1, scope: !1043)
!1092 = distinct !DISubprogram(name: "pbuf_chain", scope: !3, file: !3, line: 895, type: !1044, isLocal: false, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1093)
!1093 = !{!1094, !1095}
!1094 = !DILocalVariable(name: "h", arg: 1, scope: !1092, file: !3, line: 895, type: !92)
!1095 = !DILocalVariable(name: "t", arg: 2, scope: !1092, file: !3, line: 895, type: !92)
!1096 = !DILocation(line: 895, column: 25, scope: !1092)
!1097 = !DILocation(line: 895, column: 41, scope: !1092)
!1098 = !DILocation(line: 897, column: 3, scope: !1092)
!1099 = !DILocation(line: 829, column: 23, scope: !1018, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 899, column: 3, scope: !1092)
!1101 = !DILocation(line: 832, column: 9, scope: !1024, inlinedAt: !1100)
!1102 = !DILocation(line: 832, column: 7, scope: !1018, inlinedAt: !1100)
!1103 = !DILocation(line: 833, column: 5, scope: !1029, inlinedAt: !1100)
!1104 = !DILocation(line: 833, column: 5, scope: !1022, inlinedAt: !1100)
!1105 = !DILocation(line: 834, column: 5, scope: !1032, inlinedAt: !1100)
!1106 = !DILocation(line: 834, column: 5, scope: !1033, inlinedAt: !1100)
!1107 = !DILocation(line: 834, column: 5, scope: !1036, inlinedAt: !1100)
!1108 = !DILocation(line: 834, column: 5, scope: !1039, inlinedAt: !1100)
!1109 = !DILocation(line: 901, column: 1, scope: !1092)
!1110 = distinct !DISubprogram(name: "pbuf_dechain", scope: !3, file: !3, line: 912, type: !1111, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1113)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!92, !92}
!1113 = !{!1114, !1115, !1116}
!1114 = !DILocalVariable(name: "p", arg: 1, scope: !1110, file: !3, line: 912, type: !92)
!1115 = !DILocalVariable(name: "q", scope: !1110, file: !3, line: 914, type: !92)
!1116 = !DILocalVariable(name: "tail_gone", scope: !1110, file: !3, line: 915, type: !100)
!1117 = !DILocation(line: 912, column: 27, scope: !1110)
!1118 = !DILocation(line: 915, column: 8, scope: !1110)
!1119 = !DILocation(line: 917, column: 10, scope: !1110)
!1120 = !DILocation(line: 914, column: 16, scope: !1110)
!1121 = !DILocation(line: 919, column: 9, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 919, column: 7)
!1123 = !DILocation(line: 919, column: 7, scope: !1110)
!1124 = !DILocation(line: 938, column: 3, scope: !1125)
!1125 = distinct !DILexicalBlock(scope: !1126, file: !3, line: 938, column: 3)
!1126 = distinct !DILexicalBlock(scope: !1110, file: !3, line: 938, column: 3)
!1127 = !DILocation(line: 921, column: 5, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 921, column: 5)
!1129 = distinct !DILexicalBlock(scope: !1130, file: !3, line: 921, column: 5)
!1130 = distinct !DILexicalBlock(scope: !1122, file: !3, line: 919, column: 18)
!1131 = !DILocation(line: 921, column: 5, scope: !1129)
!1132 = !DILocation(line: 921, column: 5, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1134, file: !3, line: 921, column: 5)
!1134 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 921, column: 5)
!1135 = !DILocation(line: 921, column: 5, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 921, column: 5)
!1137 = distinct !DILexicalBlock(scope: !1138, file: !3, line: 921, column: 5)
!1138 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 921, column: 5)
!1139 = !DILocation(line: 925, column: 13, scope: !1130)
!1140 = !DILocation(line: 927, column: 16, scope: !1130)
!1141 = !DILocation(line: 930, column: 17, scope: !1130)
!1142 = !DILocation(line: 936, column: 3, scope: !1130)
!1143 = !DILocation(line: 938, column: 3, scope: !1126)
!1144 = !DILocation(line: 938, column: 3, scope: !1145)
!1145 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 938, column: 3)
!1146 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 938, column: 3)
!1147 = !DILocation(line: 938, column: 3, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 938, column: 3)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !3, line: 938, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 938, column: 3)
!1151 = !DILocation(line: 939, column: 22, scope: !1110)
!1152 = !DILocation(line: 939, column: 11, scope: !1110)
!1153 = !DILocation(line: 939, column: 3, scope: !1110)
!1154 = distinct !DISubprogram(name: "pbuf_copy", scope: !3, file: !3, line: 961, type: !1155, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1162)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!1157, !92, !1002}
!1157 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !49, line: 96, baseType: !1158)
!1158 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !85, line: 126, baseType: !1159)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !87, line: 20, baseType: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !89, line: 41, baseType: !1161)
!1161 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1162 = !{!1163, !1164, !1165, !1166, !1167}
!1163 = !DILocalVariable(name: "p_to", arg: 1, scope: !1154, file: !3, line: 961, type: !92)
!1164 = !DILocalVariable(name: "p_from", arg: 2, scope: !1154, file: !3, line: 961, type: !1002)
!1165 = !DILocalVariable(name: "offset_to", scope: !1154, file: !3, line: 963, type: !114)
!1166 = !DILocalVariable(name: "offset_from", scope: !1154, file: !3, line: 963, type: !114)
!1167 = !DILocalVariable(name: "len", scope: !1154, file: !3, line: 963, type: !114)
!1168 = !DILocation(line: 961, column: 24, scope: !1154)
!1169 = !DILocation(line: 961, column: 49, scope: !1154)
!1170 = !DILocation(line: 963, column: 10, scope: !1154)
!1171 = !DILocation(line: 963, column: 25, scope: !1154)
!1172 = !DILocation(line: 969, column: 3, scope: !1173)
!1173 = distinct !DILexicalBlock(scope: !1174, file: !3, line: 969, column: 3)
!1174 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 969, column: 3)
!1175 = !DILocation(line: 969, column: 3, scope: !1174)
!1176 = !DILocation(line: 969, column: 3, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !3, line: 969, column: 3)
!1178 = distinct !DILexicalBlock(scope: !1173, file: !3, line: 969, column: 3)
!1179 = !DILocation(line: 969, column: 3, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1181, file: !3, line: 969, column: 3)
!1181 = distinct !DILexicalBlock(scope: !1182, file: !3, line: 969, column: 3)
!1182 = distinct !DILexicalBlock(scope: !1177, file: !3, line: 969, column: 3)
!1183 = !DILocation(line: 0, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1185, file: !3, line: 992, column: 33)
!1185 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 992, column: 9)
!1186 = distinct !DILexicalBlock(scope: !1154, file: !3, line: 973, column: 6)
!1187 = !DILocation(line: 0, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 987, column: 37)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 987, column: 9)
!1190 = !DILocation(line: 975, column: 16, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 975, column: 9)
!1192 = !DILocation(line: 975, column: 10, scope: !1191)
!1193 = !DILocation(line: 975, column: 20, scope: !1191)
!1194 = !DILocation(line: 975, column: 45, scope: !1191)
!1195 = !DILocation(line: 975, column: 37, scope: !1191)
!1196 = !DILocation(line: 975, column: 49, scope: !1191)
!1197 = !DILocation(line: 975, column: 33, scope: !1191)
!1198 = !DILocation(line: 963, column: 42, scope: !1154)
!1199 = !DILocation(line: 982, column: 5, scope: !1186)
!1200 = !DILocation(line: 983, column: 15, scope: !1186)
!1201 = !DILocation(line: 984, column: 17, scope: !1186)
!1202 = !DILocation(line: 985, column: 5, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 985, column: 5)
!1204 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 985, column: 5)
!1205 = !DILocation(line: 985, column: 5, scope: !1204)
!1206 = !DILocation(line: 985, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1208, file: !3, line: 985, column: 5)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 985, column: 5)
!1209 = !DILocation(line: 985, column: 5, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1211, file: !3, line: 985, column: 5)
!1211 = distinct !DILexicalBlock(scope: !1212, file: !3, line: 985, column: 5)
!1212 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 985, column: 5)
!1213 = !DILocation(line: 986, column: 5, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1215, file: !3, line: 986, column: 5)
!1215 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 986, column: 5)
!1216 = !DILocation(line: 986, column: 5, scope: !1215)
!1217 = !DILocation(line: 986, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 986, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1214, file: !3, line: 986, column: 5)
!1220 = !DILocation(line: 986, column: 5, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 986, column: 5)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 986, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 986, column: 5)
!1224 = !DILocation(line: 987, column: 21, scope: !1189)
!1225 = !DILocation(line: 987, column: 9, scope: !1186)
!1226 = !DILocation(line: 990, column: 24, scope: !1188)
!1227 = !DILocation(line: 991, column: 5, scope: !1188)
!1228 = !DILocation(line: 0, scope: !1186)
!1229 = !DILocation(line: 992, column: 19, scope: !1185)
!1230 = !DILocation(line: 992, column: 9, scope: !1186)
!1231 = !DILocation(line: 995, column: 20, scope: !1184)
!1232 = !DILocation(line: 996, column: 7, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 996, column: 7)
!1234 = distinct !DILexicalBlock(scope: !1184, file: !3, line: 996, column: 7)
!1235 = !DILocation(line: 996, column: 7, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 996, column: 7)
!1237 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 996, column: 7)
!1238 = !DILocation(line: 996, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 996, column: 7)
!1240 = distinct !DILexicalBlock(scope: !1241, file: !3, line: 996, column: 7)
!1241 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 996, column: 7)
!1242 = !DILocation(line: 999, column: 17, scope: !1243)
!1243 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 999, column: 9)
!1244 = !DILocation(line: 999, column: 26, scope: !1243)
!1245 = !DILocation(line: 999, column: 38, scope: !1243)
!1246 = !DILocation(line: 999, column: 53, scope: !1243)
!1247 = !DILocation(line: 999, column: 42, scope: !1243)
!1248 = !DILocation(line: 999, column: 9, scope: !1186)
!1249 = !DILocation(line: 1001, column: 7, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 1001, column: 7)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 1001, column: 7)
!1252 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 999, column: 63)
!1253 = !DILocation(line: 1001, column: 7, scope: !1251)
!1254 = !DILocation(line: 1001, column: 7, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 1001, column: 7)
!1256 = distinct !DILexicalBlock(scope: !1250, file: !3, line: 1001, column: 7)
!1257 = !DILocation(line: 1001, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1001, column: 7)
!1259 = distinct !DILexicalBlock(scope: !1260, file: !3, line: 1001, column: 7)
!1260 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1001, column: 7)
!1261 = !DILocation(line: 1004, column: 15, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1186, file: !3, line: 1004, column: 9)
!1263 = !DILocation(line: 1004, column: 24, scope: !1262)
!1264 = !DILocation(line: 1004, column: 34, scope: !1262)
!1265 = !DILocation(line: 1004, column: 47, scope: !1262)
!1266 = !DILocation(line: 1004, column: 38, scope: !1262)
!1267 = !DILocation(line: 1004, column: 9, scope: !1186)
!1268 = !DILocation(line: 1006, column: 7, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1006, column: 7)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1006, column: 7)
!1271 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1004, column: 57)
!1272 = !DILocation(line: 1006, column: 7, scope: !1270)
!1273 = !DILocation(line: 1006, column: 7, scope: !1274)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1006, column: 7)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1006, column: 7)
!1276 = !DILocation(line: 1006, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1278, file: !3, line: 1006, column: 7)
!1278 = distinct !DILexicalBlock(scope: !1279, file: !3, line: 1006, column: 7)
!1279 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1006, column: 7)
!1280 = !DILocation(line: 1009, column: 3, scope: !1186)
!1281 = distinct !{!1281, !1282, !1283}
!1282 = !DILocation(line: 973, column: 3, scope: !1154)
!1283 = !DILocation(line: 1009, column: 18, scope: !1154)
!1284 = !DILocation(line: 1012, column: 1, scope: !1154)
!1285 = distinct !DISubprogram(name: "pbuf_copy_partial", scope: !3, file: !3, line: 1027, type: !1286, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1288)
!1286 = !DISubroutineType(types: !1287)
!1287 = !{!84, !1002, !91, !84, !84}
!1288 = !{!1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1289 = !DILocalVariable(name: "buf", arg: 1, scope: !1285, file: !3, line: 1027, type: !1002)
!1290 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1285, file: !3, line: 1027, type: !91)
!1291 = !DILocalVariable(name: "len", arg: 3, scope: !1285, file: !3, line: 1027, type: !84)
!1292 = !DILocalVariable(name: "offset", arg: 4, scope: !1285, file: !3, line: 1027, type: !84)
!1293 = !DILocalVariable(name: "p", scope: !1285, file: !3, line: 1029, type: !1002)
!1294 = !DILocalVariable(name: "left", scope: !1285, file: !3, line: 1030, type: !84)
!1295 = !DILocalVariable(name: "buf_copy_len", scope: !1285, file: !3, line: 1031, type: !84)
!1296 = !DILocalVariable(name: "copied_total", scope: !1285, file: !3, line: 1032, type: !84)
!1297 = !DILocation(line: 1027, column: 38, scope: !1285)
!1298 = !DILocation(line: 1027, column: 49, scope: !1285)
!1299 = !DILocation(line: 1027, column: 64, scope: !1285)
!1300 = !DILocation(line: 1027, column: 75, scope: !1285)
!1301 = !DILocation(line: 1030, column: 9, scope: !1285)
!1302 = !DILocation(line: 1032, column: 9, scope: !1285)
!1303 = !DILocation(line: 1034, column: 3, scope: !1304)
!1304 = distinct !DILexicalBlock(scope: !1305, file: !3, line: 1034, column: 3)
!1305 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1034, column: 3)
!1306 = !DILocation(line: 1034, column: 3, scope: !1305)
!1307 = !DILocation(line: 1034, column: 3, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1309, file: !3, line: 1034, column: 3)
!1309 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1034, column: 3)
!1310 = !DILocation(line: 1034, column: 3, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1312, file: !3, line: 1034, column: 3)
!1312 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1034, column: 3)
!1313 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1034, column: 3)
!1314 = !DILocation(line: 1035, column: 3, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1035, column: 3)
!1316 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1035, column: 3)
!1317 = !DILocation(line: 1035, column: 3, scope: !1316)
!1318 = !DILocation(line: 1029, column: 22, scope: !1285)
!1319 = !DILocation(line: 1038, column: 21, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1321, file: !3, line: 1038, column: 3)
!1321 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1038, column: 3)
!1322 = !DILocation(line: 1038, column: 3, scope: !1321)
!1323 = !DILocation(line: 1035, column: 3, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1325, file: !3, line: 1035, column: 3)
!1325 = distinct !DILexicalBlock(scope: !1315, file: !3, line: 1035, column: 3)
!1326 = !DILocation(line: 1035, column: 3, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1035, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 1035, column: 3)
!1329 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1035, column: 3)
!1330 = !DILocation(line: 1039, column: 17, scope: !1331)
!1331 = distinct !DILexicalBlock(scope: !1332, file: !3, line: 1039, column: 9)
!1332 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1038, column: 53)
!1333 = !DILocation(line: 0, scope: !1331)
!1334 = !DILocation(line: 1039, column: 34, scope: !1331)
!1335 = !DILocation(line: 1039, column: 23, scope: !1331)
!1336 = !DILocation(line: 1041, column: 31, scope: !1337)
!1337 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 1039, column: 46)
!1338 = !DILocation(line: 1042, column: 5, scope: !1337)
!1339 = !DILocation(line: 1044, column: 37, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 1042, column: 12)
!1341 = !DILocation(line: 1031, column: 9, scope: !1285)
!1342 = !DILocation(line: 1045, column: 24, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1045, column: 11)
!1344 = !DILocation(line: 1045, column: 11, scope: !1340)
!1345 = !DILocation(line: 1050, column: 7, scope: !1340)
!1346 = !DILocation(line: 1051, column: 43, scope: !1340)
!1347 = !DILocation(line: 1052, column: 27, scope: !1340)
!1348 = !DILocation(line: 1053, column: 25, scope: !1340)
!1349 = !DILocation(line: 0, scope: !1340)
!1350 = !DILocation(line: 1038, column: 47, scope: !1320)
!1351 = !DILocation(line: 1038, column: 31, scope: !1320)
!1352 = !DILocation(line: 1038, column: 26, scope: !1320)
!1353 = distinct !{!1353, !1322, !1354}
!1354 = !DILocation(line: 1056, column: 3, scope: !1321)
!1355 = !DILocation(line: 1058, column: 1, scope: !1285)
!1356 = distinct !DISubprogram(name: "pbuf_get_contiguous", scope: !3, file: !3, line: 1075, type: !1357, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1359)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!91, !1002, !91, !114, !84, !84}
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366}
!1360 = !DILocalVariable(name: "p", arg: 1, scope: !1356, file: !3, line: 1075, type: !1002)
!1361 = !DILocalVariable(name: "buffer", arg: 2, scope: !1356, file: !3, line: 1075, type: !91)
!1362 = !DILocalVariable(name: "bufsize", arg: 3, scope: !1356, file: !3, line: 1075, type: !114)
!1363 = !DILocalVariable(name: "len", arg: 4, scope: !1356, file: !3, line: 1075, type: !84)
!1364 = !DILocalVariable(name: "offset", arg: 5, scope: !1356, file: !3, line: 1075, type: !84)
!1365 = !DILocalVariable(name: "q", scope: !1356, file: !3, line: 1077, type: !1002)
!1366 = !DILocalVariable(name: "out_offset", scope: !1356, file: !3, line: 1078, type: !84)
!1367 = !DILocation(line: 1075, column: 40, scope: !1356)
!1368 = !DILocation(line: 1075, column: 49, scope: !1356)
!1369 = !DILocation(line: 1075, column: 64, scope: !1356)
!1370 = !DILocation(line: 1075, column: 79, scope: !1356)
!1371 = !DILocation(line: 1075, column: 90, scope: !1356)
!1372 = !DILocation(line: 1080, column: 3, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1080, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1080, column: 3)
!1375 = !DILocation(line: 1080, column: 3, scope: !1374)
!1376 = !DILocation(line: 1080, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1080, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1080, column: 3)
!1379 = !DILocation(line: 1080, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1080, column: 3)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1080, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1080, column: 3)
!1383 = !DILocation(line: 1081, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 1081, column: 3)
!1385 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1081, column: 3)
!1386 = !DILocation(line: 1081, column: 3, scope: !1385)
!1387 = !DILocation(line: 1081, column: 3, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1081, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1081, column: 3)
!1390 = !DILocation(line: 1081, column: 3, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1081, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1081, column: 3)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1081, column: 3)
!1394 = !DILocation(line: 1082, column: 3, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1082, column: 3)
!1396 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1082, column: 3)
!1397 = !DILocation(line: 1082, column: 3, scope: !1396)
!1398 = !DILocation(line: 1082, column: 3, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1082, column: 3)
!1400 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1082, column: 3)
!1401 = !DILocation(line: 1082, column: 3, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 1082, column: 3)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1082, column: 3)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 1082, column: 3)
!1405 = !DILocalVariable(name: "q", scope: !1406, file: !3, line: 1156, type: !1002)
!1406 = distinct !DISubprogram(name: "pbuf_skip_const", scope: !3, file: !3, line: 1153, type: !1407, isLocal: true, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1410)
!1407 = !DISubroutineType(types: !1408)
!1408 = !{!1002, !1002, !84, !1409}
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1410 = !{!1411, !1412, !1413, !1414, !1405}
!1411 = !DILocalVariable(name: "in", arg: 1, scope: !1406, file: !3, line: 1153, type: !1002)
!1412 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1406, file: !3, line: 1153, type: !84)
!1413 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1406, file: !3, line: 1153, type: !1409)
!1414 = !DILocalVariable(name: "offset_left", scope: !1406, file: !3, line: 1155, type: !84)
!1415 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1416)
!1416 = distinct !DILocation(line: 1084, column: 7, scope: !1356)
!1417 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1416)
!1418 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1416)
!1419 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1416)
!1420 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1416)
!1421 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1416)
!1422 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1159, column: 50)
!1423 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1416)
!1424 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1416)
!1425 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1416)
!1426 = distinct !{!1426, !1427, !1428}
!1427 = !DILocation(line: 1159, column: 3, scope: !1406)
!1428 = !DILocation(line: 1162, column: 3, scope: !1406)
!1429 = !DILocation(line: 1077, column: 22, scope: !1356)
!1430 = !DILocation(line: 1086, column: 9, scope: !1431)
!1431 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1086, column: 9)
!1432 = distinct !DILexicalBlock(scope: !1433, file: !3, line: 1085, column: 18)
!1433 = distinct !DILexicalBlock(scope: !1356, file: !3, line: 1085, column: 7)
!1434 = !DILocation(line: 1078, column: 9, scope: !1356)
!1435 = !DILocation(line: 1086, column: 20, scope: !1431)
!1436 = !DILocation(line: 1086, column: 33, scope: !1431)
!1437 = !DILocation(line: 1086, column: 31, scope: !1431)
!1438 = !DILocation(line: 1086, column: 16, scope: !1431)
!1439 = !DILocation(line: 1086, column: 9, scope: !1432)
!1440 = !DILocation(line: 1088, column: 25, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1431, file: !3, line: 1086, column: 39)
!1442 = !DILocation(line: 1088, column: 33, scope: !1441)
!1443 = !DILocation(line: 1088, column: 7, scope: !1441)
!1444 = !DILocation(line: 1027, column: 38, scope: !1285, inlinedAt: !1445)
!1445 = distinct !DILocation(line: 1091, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1432, file: !3, line: 1091, column: 9)
!1447 = !DILocation(line: 1027, column: 49, scope: !1285, inlinedAt: !1445)
!1448 = !DILocation(line: 1027, column: 64, scope: !1285, inlinedAt: !1445)
!1449 = !DILocation(line: 1027, column: 75, scope: !1285, inlinedAt: !1445)
!1450 = !DILocation(line: 1030, column: 9, scope: !1285, inlinedAt: !1445)
!1451 = !DILocation(line: 1032, column: 9, scope: !1285, inlinedAt: !1445)
!1452 = !DILocation(line: 1029, column: 22, scope: !1285, inlinedAt: !1445)
!1453 = !DILocation(line: 1038, column: 21, scope: !1320, inlinedAt: !1445)
!1454 = !DILocation(line: 1038, column: 3, scope: !1321, inlinedAt: !1445)
!1455 = !DILocation(line: 0, scope: !1331, inlinedAt: !1445)
!1456 = !DILocation(line: 1039, column: 17, scope: !1331, inlinedAt: !1445)
!1457 = !DILocation(line: 1039, column: 34, scope: !1331, inlinedAt: !1445)
!1458 = !DILocation(line: 1039, column: 23, scope: !1331, inlinedAt: !1445)
!1459 = !DILocation(line: 1041, column: 31, scope: !1337, inlinedAt: !1445)
!1460 = !DILocation(line: 1042, column: 5, scope: !1337, inlinedAt: !1445)
!1461 = !DILocation(line: 1044, column: 37, scope: !1340, inlinedAt: !1445)
!1462 = !DILocation(line: 1031, column: 9, scope: !1285, inlinedAt: !1445)
!1463 = !DILocation(line: 1045, column: 24, scope: !1343, inlinedAt: !1445)
!1464 = !DILocation(line: 1045, column: 11, scope: !1340, inlinedAt: !1445)
!1465 = !DILocation(line: 1050, column: 7, scope: !1340, inlinedAt: !1445)
!1466 = !DILocation(line: 1051, column: 43, scope: !1340, inlinedAt: !1445)
!1467 = !DILocation(line: 1052, column: 27, scope: !1340, inlinedAt: !1445)
!1468 = !DILocation(line: 1053, column: 25, scope: !1340, inlinedAt: !1445)
!1469 = !DILocation(line: 0, scope: !1340, inlinedAt: !1445)
!1470 = !DILocation(line: 1038, column: 47, scope: !1320, inlinedAt: !1445)
!1471 = !DILocation(line: 1038, column: 31, scope: !1320, inlinedAt: !1445)
!1472 = !DILocation(line: 1038, column: 26, scope: !1320, inlinedAt: !1445)
!1473 = !DILocation(line: 1091, column: 55, scope: !1446)
!1474 = !DILocation(line: 1095, column: 5, scope: !1432)
!1475 = !DILocation(line: 0, scope: !1356)
!1476 = !DILocation(line: 1099, column: 1, scope: !1356)
!1477 = distinct !DISubprogram(name: "pbuf_split_64k", scope: !3, file: !3, line: 1114, type: !1478, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1481)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !92, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1481 = !{!1482, !1483, !1484, !1487, !1488}
!1482 = !DILocalVariable(name: "p", arg: 1, scope: !1477, file: !3, line: 1114, type: !92)
!1483 = !DILocalVariable(name: "rest", arg: 2, scope: !1477, file: !3, line: 1114, type: !1480)
!1484 = !DILocalVariable(name: "tot_len_front", scope: !1485, file: !3, line: 1118, type: !84)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !3, line: 1117, column: 41)
!1486 = distinct !DILexicalBlock(scope: !1477, file: !3, line: 1117, column: 7)
!1487 = !DILocalVariable(name: "i", scope: !1485, file: !3, line: 1119, type: !92)
!1488 = !DILocalVariable(name: "r", scope: !1485, file: !3, line: 1120, type: !92)
!1489 = !DILocation(line: 1114, column: 34, scope: !1477)
!1490 = !DILocation(line: 1114, column: 51, scope: !1477)
!1491 = !DILocation(line: 1116, column: 9, scope: !1477)
!1492 = !{!245, !245, i64 0}
!1493 = !DILocation(line: 1117, column: 10, scope: !1486)
!1494 = !DILocation(line: 1117, column: 19, scope: !1486)
!1495 = !DILocation(line: 1117, column: 26, scope: !1486)
!1496 = !DILocation(line: 1117, column: 31, scope: !1486)
!1497 = !DILocation(line: 1117, column: 7, scope: !1477)
!1498 = !DILocation(line: 1118, column: 30, scope: !1485)
!1499 = !DILocation(line: 1118, column: 11, scope: !1485)
!1500 = !DILocation(line: 1119, column: 18, scope: !1485)
!1501 = !DILocation(line: 1120, column: 18, scope: !1485)
!1502 = !DILocation(line: 1123, column: 55, scope: !1485)
!1503 = !DILocation(line: 1123, column: 50, scope: !1485)
!1504 = !DILocation(line: 1123, column: 60, scope: !1485)
!1505 = !DILocation(line: 1123, column: 5, scope: !1485)
!1506 = distinct !{!1506, !1505, !1507}
!1507 = !DILocation(line: 1127, column: 5, scope: !1485)
!1508 = !DILocation(line: 1126, column: 14, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1123, column: 79)
!1510 = !DILocation(line: 1123, column: 15, scope: !1485)
!1511 = !DILocation(line: 1123, column: 24, scope: !1485)
!1512 = !DILocation(line: 1130, column: 8, scope: !1485)
!1513 = !DILocation(line: 1130, column: 13, scope: !1485)
!1514 = !DILocation(line: 1134, column: 7, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1134, column: 7)
!1516 = distinct !DILexicalBlock(scope: !1517, file: !3, line: 1132, column: 20)
!1517 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1132, column: 9)
!1518 = !DILocation(line: 1135, column: 33, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1520, file: !3, line: 1134, column: 43)
!1520 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 1134, column: 7)
!1521 = !DILocation(line: 1135, column: 46, scope: !1519)
!1522 = !DILocation(line: 1135, column: 41, scope: !1519)
!1523 = !DILocation(line: 1135, column: 20, scope: !1519)
!1524 = !DILocation(line: 1136, column: 9, scope: !1525)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1136, column: 9)
!1526 = distinct !DILexicalBlock(scope: !1519, file: !3, line: 1136, column: 9)
!1527 = distinct !{!1527, !1514, !1528}
!1528 = !DILocation(line: 1138, column: 7, scope: !1515)
!1529 = !DILocation(line: 1136, column: 9, scope: !1526)
!1530 = !DILocation(line: 1136, column: 9, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !3, line: 1136, column: 9)
!1532 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1136, column: 9)
!1533 = !DILocation(line: 1136, column: 9, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1136, column: 9)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1136, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !3, line: 1136, column: 9)
!1537 = !DILocation(line: 1139, column: 14, scope: !1538)
!1538 = distinct !DILexicalBlock(scope: !1516, file: !3, line: 1139, column: 11)
!1539 = !DILocation(line: 1139, column: 20, scope: !1538)
!1540 = !DILocation(line: 1139, column: 11, scope: !1516)
!1541 = !DILocation(line: 1140, column: 12, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1139, column: 41)
!1543 = !DILocation(line: 1140, column: 18, scope: !1542)
!1544 = !DILocation(line: 1141, column: 7, scope: !1542)
!1545 = !DILocation(line: 1145, column: 13, scope: !1516)
!1546 = !DILocation(line: 1146, column: 5, scope: !1516)
!1547 = !DILocation(line: 1148, column: 1, scope: !1477)
!1548 = distinct !DISubprogram(name: "pbuf_skip", scope: !3, file: !3, line: 1179, type: !1549, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1551)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!92, !92, !84, !1409}
!1551 = !{!1552, !1553, !1554, !1555}
!1552 = !DILocalVariable(name: "in", arg: 1, scope: !1548, file: !3, line: 1179, type: !92)
!1553 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1548, file: !3, line: 1179, type: !84)
!1554 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1548, file: !3, line: 1179, type: !1409)
!1555 = !DILocalVariable(name: "out", scope: !1548, file: !3, line: 1181, type: !1002)
!1556 = !DILocation(line: 1179, column: 24, scope: !1548)
!1557 = !DILocation(line: 1179, column: 34, scope: !1548)
!1558 = !DILocation(line: 1179, column: 52, scope: !1548)
!1559 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1560)
!1560 = distinct !DILocation(line: 1181, column: 28, scope: !1548)
!1561 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1560)
!1562 = !DILocation(line: 1153, column: 64, scope: !1406, inlinedAt: !1560)
!1563 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1560)
!1564 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1560)
!1565 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1560)
!1566 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1560)
!1567 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1560)
!1568 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1560)
!1569 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1560)
!1570 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1560)
!1571 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1560)
!1572 = !DILocation(line: 0, scope: !1422, inlinedAt: !1560)
!1573 = !DILocation(line: 1163, column: 18, scope: !1574, inlinedAt: !1560)
!1574 = distinct !DILexicalBlock(scope: !1406, file: !3, line: 1163, column: 7)
!1575 = !DILocation(line: 1163, column: 7, scope: !1406, inlinedAt: !1560)
!1576 = !DILocation(line: 1164, column: 17, scope: !1577, inlinedAt: !1560)
!1577 = distinct !DILexicalBlock(scope: !1574, file: !3, line: 1163, column: 27)
!1578 = !{!248, !248, i64 0}
!1579 = !DILocation(line: 1165, column: 3, scope: !1577, inlinedAt: !1560)
!1580 = !DILocation(line: 1181, column: 22, scope: !1548)
!1581 = !DILocation(line: 1182, column: 3, scope: !1548)
!1582 = distinct !DISubprogram(name: "pbuf_take", scope: !3, file: !3, line: 1197, type: !1583, isLocal: false, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1587)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!1157, !92, !1585, !84}
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1587 = !{!1588, !1589, !1590, !1591, !1592, !1593, !1594}
!1588 = !DILocalVariable(name: "buf", arg: 1, scope: !1582, file: !3, line: 1197, type: !92)
!1589 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1582, file: !3, line: 1197, type: !1585)
!1590 = !DILocalVariable(name: "len", arg: 3, scope: !1582, file: !3, line: 1197, type: !84)
!1591 = !DILocalVariable(name: "p", scope: !1582, file: !3, line: 1199, type: !92)
!1592 = !DILocalVariable(name: "buf_copy_len", scope: !1582, file: !3, line: 1200, type: !114)
!1593 = !DILocalVariable(name: "total_copy_len", scope: !1582, file: !3, line: 1201, type: !114)
!1594 = !DILocalVariable(name: "copied_total", scope: !1582, file: !3, line: 1202, type: !114)
!1595 = !DILocation(line: 1197, column: 24, scope: !1582)
!1596 = !DILocation(line: 1197, column: 41, scope: !1582)
!1597 = !DILocation(line: 1197, column: 56, scope: !1582)
!1598 = !DILocation(line: 1201, column: 27, scope: !1582)
!1599 = !DILocation(line: 1201, column: 10, scope: !1582)
!1600 = !DILocation(line: 1202, column: 10, scope: !1582)
!1601 = !DILocation(line: 1204, column: 3, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !3, line: 1204, column: 3)
!1603 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1204, column: 3)
!1604 = !DILocation(line: 1204, column: 3, scope: !1603)
!1605 = !DILocation(line: 1204, column: 3, scope: !1606)
!1606 = distinct !DILexicalBlock(scope: !1607, file: !3, line: 1204, column: 3)
!1607 = distinct !DILexicalBlock(scope: !1602, file: !3, line: 1204, column: 3)
!1608 = !DILocation(line: 1204, column: 3, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1610, file: !3, line: 1204, column: 3)
!1610 = distinct !DILexicalBlock(scope: !1611, file: !3, line: 1204, column: 3)
!1611 = distinct !DILexicalBlock(scope: !1606, file: !3, line: 1204, column: 3)
!1612 = !DILocation(line: 1205, column: 3, scope: !1613)
!1613 = distinct !DILexicalBlock(scope: !1614, file: !3, line: 1205, column: 3)
!1614 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1205, column: 3)
!1615 = !DILocation(line: 1205, column: 3, scope: !1614)
!1616 = !DILocation(line: 1205, column: 3, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1618, file: !3, line: 1205, column: 3)
!1618 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1205, column: 3)
!1619 = !DILocation(line: 1205, column: 3, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 1205, column: 3)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1205, column: 3)
!1622 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1205, column: 3)
!1623 = !DILocation(line: 1206, column: 3, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1206, column: 3)
!1625 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1206, column: 3)
!1626 = !DILocation(line: 1206, column: 3, scope: !1625)
!1627 = !DILocation(line: 1199, column: 16, scope: !1582)
!1628 = !DILocation(line: 1213, column: 32, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1213, column: 3)
!1630 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1213, column: 3)
!1631 = !DILocation(line: 1213, column: 3, scope: !1630)
!1632 = !DILocation(line: 1206, column: 3, scope: !1633)
!1633 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1206, column: 3)
!1634 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1206, column: 3)
!1635 = !DILocation(line: 1206, column: 3, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1206, column: 3)
!1637 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1206, column: 3)
!1638 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1206, column: 3)
!1639 = !DILocation(line: 1214, column: 5, scope: !1640)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1214, column: 5)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1214, column: 5)
!1642 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1213, column: 51)
!1643 = !DILocation(line: 1214, column: 5, scope: !1641)
!1644 = !DILocation(line: 1214, column: 5, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1646, file: !3, line: 1214, column: 5)
!1646 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1214, column: 5)
!1647 = !DILocation(line: 1214, column: 5, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1214, column: 5)
!1649 = distinct !DILexicalBlock(scope: !1650, file: !3, line: 1214, column: 5)
!1650 = distinct !DILexicalBlock(scope: !1645, file: !3, line: 1214, column: 5)
!1651 = !DILocation(line: 1200, column: 10, scope: !1582)
!1652 = !DILocation(line: 1216, column: 27, scope: !1653)
!1653 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1216, column: 9)
!1654 = !DILocation(line: 1216, column: 24, scope: !1653)
!1655 = !DILocation(line: 1216, column: 22, scope: !1653)
!1656 = !DILocation(line: 1216, column: 9, scope: !1642)
!1657 = !DILocation(line: 1221, column: 5, scope: !1642)
!1658 = !DILocation(line: 1222, column: 20, scope: !1642)
!1659 = !DILocation(line: 1223, column: 18, scope: !1642)
!1660 = !DILocation(line: 1213, column: 45, scope: !1629)
!1661 = distinct !{!1661, !1631, !1662}
!1662 = !DILocation(line: 1224, column: 3, scope: !1630)
!1663 = !DILocation(line: 0, scope: !1642)
!1664 = !DILocation(line: 1225, column: 3, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1666, file: !3, line: 1225, column: 3)
!1666 = distinct !DILexicalBlock(scope: !1582, file: !3, line: 1225, column: 3)
!1667 = !DILocation(line: 1225, column: 3, scope: !1666)
!1668 = !DILocation(line: 1225, column: 3, scope: !1669)
!1669 = distinct !DILexicalBlock(scope: !1670, file: !3, line: 1225, column: 3)
!1670 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1225, column: 3)
!1671 = !DILocation(line: 1225, column: 3, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1673, file: !3, line: 1225, column: 3)
!1673 = distinct !DILexicalBlock(scope: !1674, file: !3, line: 1225, column: 3)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1225, column: 3)
!1675 = !DILocation(line: 1227, column: 1, scope: !1582)
!1676 = distinct !DISubprogram(name: "pbuf_take_at", scope: !3, file: !3, line: 1241, type: !1677, isLocal: false, isDefinition: true, scopeLine: 1242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1679)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!1157, !92, !1585, !84, !84}
!1679 = !{!1680, !1681, !1682, !1683, !1684, !1685, !1686, !1689, !1690}
!1680 = !DILocalVariable(name: "buf", arg: 1, scope: !1676, file: !3, line: 1241, type: !92)
!1681 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1676, file: !3, line: 1241, type: !1585)
!1682 = !DILocalVariable(name: "len", arg: 3, scope: !1676, file: !3, line: 1241, type: !84)
!1683 = !DILocalVariable(name: "offset", arg: 4, scope: !1676, file: !3, line: 1241, type: !84)
!1684 = !DILocalVariable(name: "target_offset", scope: !1676, file: !3, line: 1243, type: !84)
!1685 = !DILocalVariable(name: "q", scope: !1676, file: !3, line: 1244, type: !92)
!1686 = !DILocalVariable(name: "remaining_len", scope: !1687, file: !3, line: 1248, type: !84)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1247, column: 59)
!1688 = distinct !DILexicalBlock(scope: !1676, file: !3, line: 1247, column: 7)
!1689 = !DILocalVariable(name: "src_ptr", scope: !1687, file: !3, line: 1249, type: !134)
!1690 = !DILocalVariable(name: "first_copy_len", scope: !1687, file: !3, line: 1251, type: !84)
!1691 = !DILocation(line: 1241, column: 27, scope: !1676)
!1692 = !DILocation(line: 1241, column: 44, scope: !1676)
!1693 = !DILocation(line: 1241, column: 59, scope: !1676)
!1694 = !DILocation(line: 1241, column: 70, scope: !1676)
!1695 = !DILocation(line: 1179, column: 24, scope: !1548, inlinedAt: !1696)
!1696 = distinct !DILocation(line: 1244, column: 20, scope: !1676)
!1697 = !DILocation(line: 1179, column: 34, scope: !1548, inlinedAt: !1696)
!1698 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1699)
!1699 = distinct !DILocation(line: 1181, column: 28, scope: !1548, inlinedAt: !1696)
!1700 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1699)
!1701 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1699)
!1702 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1699)
!1703 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1699)
!1704 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1699)
!1705 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1699)
!1706 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1699)
!1707 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1699)
!1708 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1699)
!1709 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1699)
!1710 = !DILocation(line: 1181, column: 22, scope: !1548, inlinedAt: !1696)
!1711 = !DILocation(line: 1244, column: 16, scope: !1676)
!1712 = !DILocation(line: 1247, column: 26, scope: !1688)
!1713 = !DILocation(line: 1247, column: 23, scope: !1688)
!1714 = !DILocation(line: 1243, column: 9, scope: !1676)
!1715 = !DILocation(line: 1247, column: 37, scope: !1688)
!1716 = !DILocation(line: 1247, column: 53, scope: !1688)
!1717 = !DILocation(line: 1247, column: 51, scope: !1688)
!1718 = !DILocation(line: 1247, column: 34, scope: !1688)
!1719 = !DILocation(line: 1247, column: 7, scope: !1676)
!1720 = !DILocation(line: 1248, column: 11, scope: !1687)
!1721 = !DILocation(line: 1249, column: 17, scope: !1687)
!1722 = !DILocation(line: 1252, column: 5, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !3, line: 1252, column: 5)
!1724 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1252, column: 5)
!1725 = !DILocation(line: 1253, column: 29, scope: !1687)
!1726 = !DILocation(line: 1254, column: 5, scope: !1687)
!1727 = !DILocation(line: 1255, column: 21, scope: !1687)
!1728 = !DILocation(line: 1257, column: 23, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1257, column: 9)
!1730 = !DILocation(line: 1257, column: 9, scope: !1687)
!1731 = !DILocation(line: 1256, column: 13, scope: !1687)
!1732 = !DILocation(line: 1258, column: 27, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1729, file: !3, line: 1257, column: 28)
!1734 = !DILocation(line: 1258, column: 14, scope: !1733)
!1735 = !DILocation(line: 1258, column: 7, scope: !1733)
!1736 = !DILocation(line: 0, scope: !1676)
!1737 = !DILocation(line: 1263, column: 1, scope: !1676)
!1738 = distinct !DISubprogram(name: "pbuf_coalesce", scope: !3, file: !3, line: 1279, type: !1739, isLocal: false, isDefinition: true, scopeLine: 1280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1741)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!92, !92, !174}
!1741 = !{!1742, !1743, !1744}
!1742 = !DILocalVariable(name: "p", arg: 1, scope: !1738, file: !3, line: 1279, type: !92)
!1743 = !DILocalVariable(name: "layer", arg: 2, scope: !1738, file: !3, line: 1279, type: !174)
!1744 = !DILocalVariable(name: "q", scope: !1738, file: !3, line: 1281, type: !92)
!1745 = !DILocation(line: 1279, column: 28, scope: !1738)
!1746 = !DILocation(line: 1279, column: 42, scope: !1738)
!1747 = !DILocation(line: 1282, column: 10, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1738, file: !3, line: 1282, column: 7)
!1749 = !DILocation(line: 1282, column: 15, scope: !1748)
!1750 = !DILocation(line: 1282, column: 7, scope: !1738)
!1751 = !DILocalVariable(name: "layer", arg: 1, scope: !1752, file: !3, line: 1307, type: !174)
!1752 = distinct !DISubprogram(name: "pbuf_clone", scope: !3, file: !3, line: 1307, type: !1753, isLocal: false, isDefinition: true, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1755)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!92, !174, !175, !92}
!1755 = !{!1751, !1756, !1757, !1758, !1759}
!1756 = !DILocalVariable(name: "type", arg: 2, scope: !1752, file: !3, line: 1307, type: !175)
!1757 = !DILocalVariable(name: "p", arg: 3, scope: !1752, file: !3, line: 1307, type: !92)
!1758 = !DILocalVariable(name: "q", scope: !1752, file: !3, line: 1309, type: !92)
!1759 = !DILocalVariable(name: "err", scope: !1752, file: !3, line: 1310, type: !1157)
!1760 = !DILocation(line: 1307, column: 23, scope: !1752, inlinedAt: !1761)
!1761 = distinct !DILocation(line: 1285, column: 7, scope: !1738)
!1762 = !DILocation(line: 1307, column: 40, scope: !1752, inlinedAt: !1761)
!1763 = !DILocation(line: 1307, column: 59, scope: !1752, inlinedAt: !1761)
!1764 = !DILocation(line: 1311, column: 28, scope: !1752, inlinedAt: !1761)
!1765 = !DILocation(line: 224, column: 23, scope: !171, inlinedAt: !1766)
!1766 = distinct !DILocation(line: 1311, column: 7, scope: !1752, inlinedAt: !1761)
!1767 = !DILocation(line: 224, column: 36, scope: !171, inlinedAt: !1766)
!1768 = !DILocation(line: 224, column: 54, scope: !171, inlinedAt: !1766)
!1769 = !DILocation(line: 274, column: 35, scope: !190, inlinedAt: !1766)
!1770 = !DILocation(line: 274, column: 27, scope: !190, inlinedAt: !1766)
!1771 = !DILocation(line: 274, column: 13, scope: !190, inlinedAt: !1766)
!1772 = !DILocation(line: 275, column: 85, scope: !190, inlinedAt: !1766)
!1773 = !DILocation(line: 275, column: 83, scope: !190, inlinedAt: !1766)
!1774 = !DILocation(line: 275, column: 18, scope: !190, inlinedAt: !1766)
!1775 = !DILocation(line: 278, column: 24, scope: !376, inlinedAt: !1766)
!1776 = !DILocation(line: 279, column: 24, scope: !376, inlinedAt: !1766)
!1777 = !DILocation(line: 279, column: 22, scope: !376, inlinedAt: !1766)
!1778 = !DILocation(line: 278, column: 55, scope: !376, inlinedAt: !1766)
!1779 = !DILocation(line: 284, column: 26, scope: !190, inlinedAt: !1766)
!1780 = !DILocation(line: 285, column: 13, scope: !382, inlinedAt: !1766)
!1781 = !DILocation(line: 285, column: 11, scope: !190, inlinedAt: !1766)
!1782 = !DILocation(line: 284, column: 11, scope: !190, inlinedAt: !1766)
!1783 = !DILocation(line: 226, column: 16, scope: !171, inlinedAt: !1766)
!1784 = !DILocation(line: 288, column: 33, scope: !190, inlinedAt: !1766)
!1785 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 288, column: 7, scope: !190, inlinedAt: !1766)
!1787 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !1786)
!1788 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !1786)
!1789 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !1786)
!1790 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !1786)
!1791 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !1786)
!1792 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !1786)
!1793 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !1786)
!1794 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !1786)
!1795 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !1786)
!1796 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !1786)
!1797 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !1786)
!1798 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !1786)
!1799 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !1786)
!1800 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !1786)
!1801 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !1786)
!1802 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !1786)
!1803 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !1786)
!1804 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !1786)
!1805 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !1786)
!1806 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !1786)
!1807 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !1786)
!1808 = !DILocation(line: 1309, column: 16, scope: !1752, inlinedAt: !1761)
!1809 = !DILocation(line: 1315, column: 9, scope: !1752, inlinedAt: !1761)
!1810 = !DILocation(line: 1310, column: 9, scope: !1752, inlinedAt: !1761)
!1811 = !DILocation(line: 1281, column: 16, scope: !1738)
!1812 = !DILocation(line: 1290, column: 3, scope: !1738)
!1813 = !DILocation(line: 1291, column: 3, scope: !1738)
!1814 = !DILocation(line: 0, scope: !1738)
!1815 = !DILocation(line: 1292, column: 1, scope: !1738)
!1816 = !DILocation(line: 1307, column: 23, scope: !1752)
!1817 = !DILocation(line: 1307, column: 40, scope: !1752)
!1818 = !DILocation(line: 1307, column: 59, scope: !1752)
!1819 = !DILocation(line: 1311, column: 28, scope: !1752)
!1820 = !DILocation(line: 1311, column: 7, scope: !1752)
!1821 = !DILocation(line: 1309, column: 16, scope: !1752)
!1822 = !DILocation(line: 1312, column: 9, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1752, file: !3, line: 1312, column: 7)
!1824 = !DILocation(line: 1312, column: 7, scope: !1752)
!1825 = !DILocation(line: 1315, column: 9, scope: !1752)
!1826 = !DILocation(line: 1310, column: 9, scope: !1752)
!1827 = !DILocation(line: 1318, column: 3, scope: !1752)
!1828 = !DILocation(line: 1319, column: 1, scope: !1752)
!1829 = distinct !DISubprogram(name: "pbuf_get_at", scope: !3, file: !3, line: 1372, type: !1830, isLocal: false, isDefinition: true, scopeLine: 1373, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1832)
!1830 = !DISubroutineType(types: !1831)
!1831 = !{!100, !1002, !84}
!1832 = !{!1833, !1834, !1835}
!1833 = !DILocalVariable(name: "p", arg: 1, scope: !1829, file: !3, line: 1372, type: !1002)
!1834 = !DILocalVariable(name: "offset", arg: 2, scope: !1829, file: !3, line: 1372, type: !84)
!1835 = !DILocalVariable(name: "ret", scope: !1829, file: !3, line: 1374, type: !50)
!1836 = !DILocation(line: 1372, column: 32, scope: !1829)
!1837 = !DILocation(line: 1372, column: 41, scope: !1829)
!1838 = !DILocalVariable(name: "p", arg: 1, scope: !1839, file: !3, line: 1390, type: !1002)
!1839 = distinct !DISubprogram(name: "pbuf_try_get_at", scope: !3, file: !3, line: 1390, type: !1840, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1842)
!1840 = !DISubroutineType(types: !1841)
!1841 = !{!50, !1002, !84}
!1842 = !{!1838, !1843, !1844, !1845}
!1843 = !DILocalVariable(name: "offset", arg: 2, scope: !1839, file: !3, line: 1390, type: !84)
!1844 = !DILocalVariable(name: "q_idx", scope: !1839, file: !3, line: 1392, type: !84)
!1845 = !DILocalVariable(name: "q", scope: !1839, file: !3, line: 1393, type: !1002)
!1846 = !DILocation(line: 1390, column: 36, scope: !1839, inlinedAt: !1847)
!1847 = distinct !DILocation(line: 1374, column: 13, scope: !1829)
!1848 = !DILocation(line: 1390, column: 45, scope: !1839, inlinedAt: !1847)
!1849 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1850)
!1850 = distinct !DILocation(line: 1393, column: 26, scope: !1839, inlinedAt: !1847)
!1851 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1850)
!1852 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1850)
!1853 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1850)
!1854 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1850)
!1855 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1850)
!1856 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1850)
!1857 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1850)
!1858 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1850)
!1859 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1850)
!1860 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1850)
!1861 = !DILocation(line: 1393, column: 22, scope: !1839, inlinedAt: !1847)
!1862 = !DILocation(line: 1392, column: 9, scope: !1839, inlinedAt: !1847)
!1863 = !DILocation(line: 1397, column: 24, scope: !1864, inlinedAt: !1847)
!1864 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1396, column: 40)
!1865 = distinct !DILexicalBlock(scope: !1839, file: !3, line: 1396, column: 7)
!1866 = !DILocation(line: 1397, column: 12, scope: !1864, inlinedAt: !1847)
!1867 = !DILocation(line: 1374, column: 7, scope: !1829)
!1868 = !DILocation(line: 1375, column: 7, scope: !1829)
!1869 = !DILocation(line: 1379, column: 1, scope: !1829)
!1870 = !DILocation(line: 1390, column: 36, scope: !1839)
!1871 = !DILocation(line: 1390, column: 45, scope: !1839)
!1872 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1393, column: 26, scope: !1839)
!1874 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1873)
!1875 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1873)
!1876 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1873)
!1877 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1873)
!1878 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1873)
!1879 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1873)
!1880 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1873)
!1881 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1873)
!1882 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1873)
!1883 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1873)
!1884 = !DILocation(line: 1393, column: 22, scope: !1839)
!1885 = !DILocation(line: 1392, column: 9, scope: !1839)
!1886 = !DILocation(line: 1397, column: 24, scope: !1864)
!1887 = !DILocation(line: 1397, column: 12, scope: !1864)
!1888 = !DILocation(line: 1397, column: 5, scope: !1864)
!1889 = !DILocation(line: 0, scope: !1839)
!1890 = !DILocation(line: 1400, column: 1, scope: !1839)
!1891 = distinct !DISubprogram(name: "pbuf_put_at", scope: !3, file: !3, line: 1412, type: !1892, isLocal: false, isDefinition: true, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1894)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{null, !92, !84, !100}
!1894 = !{!1895, !1896, !1897, !1898, !1899}
!1895 = !DILocalVariable(name: "p", arg: 1, scope: !1891, file: !3, line: 1412, type: !92)
!1896 = !DILocalVariable(name: "offset", arg: 2, scope: !1891, file: !3, line: 1412, type: !84)
!1897 = !DILocalVariable(name: "data", arg: 3, scope: !1891, file: !3, line: 1412, type: !100)
!1898 = !DILocalVariable(name: "q_idx", scope: !1891, file: !3, line: 1414, type: !84)
!1899 = !DILocalVariable(name: "q", scope: !1891, file: !3, line: 1415, type: !92)
!1900 = !DILocation(line: 1412, column: 26, scope: !1891)
!1901 = !DILocation(line: 1412, column: 35, scope: !1891)
!1902 = !DILocation(line: 1412, column: 48, scope: !1891)
!1903 = !DILocation(line: 1179, column: 24, scope: !1548, inlinedAt: !1904)
!1904 = distinct !DILocation(line: 1415, column: 20, scope: !1891)
!1905 = !DILocation(line: 1179, column: 34, scope: !1548, inlinedAt: !1904)
!1906 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1907)
!1907 = distinct !DILocation(line: 1181, column: 28, scope: !1548, inlinedAt: !1904)
!1908 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1907)
!1909 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1907)
!1910 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1907)
!1911 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1907)
!1912 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1907)
!1913 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1907)
!1914 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1907)
!1915 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1907)
!1916 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1907)
!1917 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1907)
!1918 = !DILocation(line: 1181, column: 22, scope: !1548, inlinedAt: !1904)
!1919 = !DILocation(line: 1415, column: 16, scope: !1891)
!1920 = !DILocation(line: 1414, column: 9, scope: !1891)
!1921 = !DILocation(line: 1419, column: 17, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1923, file: !3, line: 1418, column: 40)
!1923 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 1418, column: 7)
!1924 = !DILocation(line: 1419, column: 5, scope: !1922)
!1925 = !DILocation(line: 1419, column: 33, scope: !1922)
!1926 = !DILocation(line: 1420, column: 3, scope: !1922)
!1927 = !DILocation(line: 1421, column: 1, scope: !1891)
!1928 = distinct !DISubprogram(name: "pbuf_memcmp", scope: !3, file: !3, line: 1435, type: !1929, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1931)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!84, !1002, !84, !1585, !84}
!1931 = !{!1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1943}
!1932 = !DILocalVariable(name: "p", arg: 1, scope: !1928, file: !3, line: 1435, type: !1002)
!1933 = !DILocalVariable(name: "offset", arg: 2, scope: !1928, file: !3, line: 1435, type: !84)
!1934 = !DILocalVariable(name: "s2", arg: 3, scope: !1928, file: !3, line: 1435, type: !1585)
!1935 = !DILocalVariable(name: "n", arg: 4, scope: !1928, file: !3, line: 1435, type: !84)
!1936 = !DILocalVariable(name: "start", scope: !1928, file: !3, line: 1437, type: !84)
!1937 = !DILocalVariable(name: "q", scope: !1928, file: !3, line: 1438, type: !1002)
!1938 = !DILocalVariable(name: "i", scope: !1928, file: !3, line: 1439, type: !84)
!1939 = !DILocalVariable(name: "a", scope: !1940, file: !3, line: 1455, type: !100)
!1940 = distinct !DILexicalBlock(scope: !1941, file: !3, line: 1453, column: 27)
!1941 = distinct !DILexicalBlock(scope: !1942, file: !3, line: 1453, column: 3)
!1942 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 1453, column: 3)
!1943 = !DILocalVariable(name: "b", scope: !1940, file: !3, line: 1456, type: !100)
!1944 = !DILocation(line: 1435, column: 32, scope: !1928)
!1945 = !DILocation(line: 1435, column: 41, scope: !1928)
!1946 = !DILocation(line: 1435, column: 61, scope: !1928)
!1947 = !DILocation(line: 1435, column: 71, scope: !1928)
!1948 = !DILocation(line: 1437, column: 9, scope: !1928)
!1949 = !DILocation(line: 1438, column: 22, scope: !1928)
!1950 = !DILocation(line: 1442, column: 10, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 1442, column: 7)
!1952 = !DILocation(line: 1442, column: 7, scope: !1951)
!1953 = !DILocation(line: 1442, column: 21, scope: !1951)
!1954 = !DILocation(line: 1442, column: 30, scope: !1951)
!1955 = !DILocation(line: 1442, column: 28, scope: !1951)
!1956 = !DILocation(line: 1442, column: 18, scope: !1951)
!1957 = !DILocation(line: 1442, column: 7, scope: !1928)
!1958 = !DILocation(line: 1447, column: 29, scope: !1928)
!1959 = !DILocation(line: 1447, column: 33, scope: !1928)
!1960 = !DILocation(line: 1447, column: 3, scope: !1928)
!1961 = !DILocation(line: 1448, column: 27, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1928, file: !3, line: 1447, column: 44)
!1963 = !DILocation(line: 1449, column: 12, scope: !1962)
!1964 = !DILocation(line: 1447, column: 13, scope: !1928)
!1965 = !DILocation(line: 1447, column: 22, scope: !1928)
!1966 = distinct !{!1966, !1960, !1967}
!1967 = !DILocation(line: 1450, column: 3, scope: !1928)
!1968 = !DILocation(line: 0, scope: !1962)
!1969 = !DILocation(line: 1439, column: 9, scope: !1928)
!1970 = !DILocation(line: 1453, column: 17, scope: !1941)
!1971 = !DILocation(line: 1453, column: 3, scope: !1942)
!1972 = !DILocation(line: 1453, column: 15, scope: !1941)
!1973 = distinct !{!1973, !1971, !1974}
!1974 = !DILocation(line: 1460, column: 3, scope: !1942)
!1975 = !DILocation(line: 1372, column: 32, scope: !1829, inlinedAt: !1976)
!1976 = distinct !DILocation(line: 1455, column: 14, scope: !1940)
!1977 = !DILocation(line: 1390, column: 36, scope: !1839, inlinedAt: !1978)
!1978 = distinct !DILocation(line: 1374, column: 13, scope: !1829, inlinedAt: !1976)
!1979 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !1980)
!1980 = distinct !DILocation(line: 1393, column: 26, scope: !1839, inlinedAt: !1978)
!1981 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !1980)
!1982 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !1980)
!1983 = !DILocation(line: 1455, column: 43, scope: !1940)
!1984 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !1980)
!1985 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !1980)
!1986 = !DILocation(line: 1390, column: 45, scope: !1839, inlinedAt: !1978)
!1987 = !DILocation(line: 1372, column: 41, scope: !1829, inlinedAt: !1976)
!1988 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !1980)
!1989 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !1980)
!1990 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !1980)
!1991 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !1980)
!1992 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !1980)
!1993 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !1980)
!1994 = !DILocation(line: 1393, column: 22, scope: !1839, inlinedAt: !1978)
!1995 = !DILocation(line: 1392, column: 9, scope: !1839, inlinedAt: !1978)
!1996 = !DILocation(line: 1397, column: 24, scope: !1864, inlinedAt: !1978)
!1997 = !DILocation(line: 1397, column: 12, scope: !1864, inlinedAt: !1978)
!1998 = !DILocation(line: 1374, column: 7, scope: !1829, inlinedAt: !1976)
!1999 = !DILocation(line: 1375, column: 7, scope: !1829, inlinedAt: !1976)
!2000 = !DILocation(line: 1455, column: 10, scope: !1940)
!2001 = !DILocation(line: 1456, column: 14, scope: !1940)
!2002 = !DILocation(line: 1456, column: 10, scope: !1940)
!2003 = !DILocation(line: 1457, column: 11, scope: !2004)
!2004 = distinct !DILexicalBlock(scope: !1940, file: !3, line: 1457, column: 9)
!2005 = !DILocation(line: 1453, column: 23, scope: !1941)
!2006 = !DILocation(line: 1457, column: 9, scope: !1940)
!2007 = !DILocation(line: 1458, column: 21, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !2004, file: !3, line: 1457, column: 17)
!2009 = !DILocation(line: 1458, column: 14, scope: !2008)
!2010 = !DILocation(line: 0, scope: !1928)
!2011 = !DILocation(line: 1462, column: 1, scope: !1928)
!2012 = distinct !DISubprogram(name: "pbuf_memfind", scope: !3, file: !3, line: 1477, type: !2013, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2015)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!84, !1002, !1585, !84, !84}
!2015 = !{!2016, !2017, !2018, !2019, !2020, !2021, !2022}
!2016 = !DILocalVariable(name: "p", arg: 1, scope: !2012, file: !3, line: 1477, type: !1002)
!2017 = !DILocalVariable(name: "mem", arg: 2, scope: !2012, file: !3, line: 1477, type: !1585)
!2018 = !DILocalVariable(name: "mem_len", arg: 3, scope: !2012, file: !3, line: 1477, type: !84)
!2019 = !DILocalVariable(name: "start_offset", arg: 4, scope: !2012, file: !3, line: 1477, type: !84)
!2020 = !DILocalVariable(name: "i", scope: !2012, file: !3, line: 1479, type: !84)
!2021 = !DILocalVariable(name: "max_cmp_start", scope: !2012, file: !3, line: 1480, type: !84)
!2022 = !DILocalVariable(name: "plus", scope: !2023, file: !3, line: 1483, type: !84)
!2023 = distinct !DILexicalBlock(scope: !2024, file: !3, line: 1482, column: 53)
!2024 = distinct !DILexicalBlock(scope: !2025, file: !3, line: 1482, column: 5)
!2025 = distinct !DILexicalBlock(scope: !2026, file: !3, line: 1482, column: 5)
!2026 = distinct !DILexicalBlock(scope: !2027, file: !3, line: 1481, column: 45)
!2027 = distinct !DILexicalBlock(scope: !2012, file: !3, line: 1481, column: 7)
!2028 = !DILocation(line: 1477, column: 33, scope: !2012)
!2029 = !DILocation(line: 1477, column: 48, scope: !2012)
!2030 = !DILocation(line: 1477, column: 59, scope: !2012)
!2031 = !DILocation(line: 1477, column: 74, scope: !2012)
!2032 = !DILocation(line: 1480, column: 36, scope: !2012)
!2033 = !DILocation(line: 1480, column: 33, scope: !2012)
!2034 = !DILocation(line: 1480, column: 46, scope: !2012)
!2035 = !DILocation(line: 1480, column: 44, scope: !2012)
!2036 = !DILocation(line: 1480, column: 9, scope: !2012)
!2037 = !DILocation(line: 1481, column: 31, scope: !2027)
!2038 = !DILocation(line: 1481, column: 29, scope: !2027)
!2039 = !DILocation(line: 1481, column: 18, scope: !2027)
!2040 = !DILocation(line: 1482, column: 30, scope: !2024)
!2041 = !DILocation(line: 1481, column: 7, scope: !2012)
!2042 = !DILocation(line: 1479, column: 9, scope: !2012)
!2043 = !DILocation(line: 1482, column: 5, scope: !2025)
!2044 = !DILocation(line: 1435, column: 32, scope: !1928, inlinedAt: !2045)
!2045 = distinct !DILocation(line: 1483, column: 20, scope: !2023)
!2046 = !DILocation(line: 1435, column: 41, scope: !1928, inlinedAt: !2045)
!2047 = !DILocation(line: 1435, column: 61, scope: !1928, inlinedAt: !2045)
!2048 = !DILocation(line: 1435, column: 71, scope: !1928, inlinedAt: !2045)
!2049 = !DILocation(line: 1437, column: 9, scope: !1928, inlinedAt: !2045)
!2050 = !DILocation(line: 1438, column: 22, scope: !1928, inlinedAt: !2045)
!2051 = !DILocation(line: 1442, column: 21, scope: !1951, inlinedAt: !2045)
!2052 = !DILocation(line: 1442, column: 28, scope: !1951, inlinedAt: !2045)
!2053 = !DILocation(line: 1442, column: 18, scope: !1951, inlinedAt: !2045)
!2054 = !DILocation(line: 1442, column: 7, scope: !1928, inlinedAt: !2045)
!2055 = !DILocation(line: 1447, column: 29, scope: !1928, inlinedAt: !2045)
!2056 = !DILocation(line: 1447, column: 33, scope: !1928, inlinedAt: !2045)
!2057 = !DILocation(line: 1447, column: 3, scope: !1928, inlinedAt: !2045)
!2058 = !DILocation(line: 1448, column: 27, scope: !1962, inlinedAt: !2045)
!2059 = !DILocation(line: 1449, column: 12, scope: !1962, inlinedAt: !2045)
!2060 = !DILocation(line: 1447, column: 13, scope: !1928, inlinedAt: !2045)
!2061 = !DILocation(line: 1447, column: 22, scope: !1928, inlinedAt: !2045)
!2062 = !DILocation(line: 0, scope: !1962, inlinedAt: !2045)
!2063 = !DILocation(line: 1439, column: 9, scope: !1928, inlinedAt: !2045)
!2064 = !DILocation(line: 1453, column: 3, scope: !1942, inlinedAt: !2045)
!2065 = !DILocation(line: 1453, column: 17, scope: !1941, inlinedAt: !2045)
!2066 = !DILocation(line: 1372, column: 32, scope: !1829, inlinedAt: !2067)
!2067 = distinct !DILocation(line: 1455, column: 14, scope: !1940, inlinedAt: !2045)
!2068 = !DILocation(line: 1390, column: 36, scope: !1839, inlinedAt: !2069)
!2069 = distinct !DILocation(line: 1374, column: 13, scope: !1829, inlinedAt: !2067)
!2070 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !2071)
!2071 = distinct !DILocation(line: 1393, column: 26, scope: !1839, inlinedAt: !2069)
!2072 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !2071)
!2073 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !2071)
!2074 = !DILocation(line: 1455, column: 43, scope: !1940, inlinedAt: !2045)
!2075 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !2071)
!2076 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !2071)
!2077 = !DILocation(line: 1390, column: 45, scope: !1839, inlinedAt: !2069)
!2078 = !DILocation(line: 1372, column: 41, scope: !1829, inlinedAt: !2067)
!2079 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !2071)
!2080 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !2071)
!2081 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !2071)
!2082 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !2071)
!2083 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !2071)
!2084 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !2071)
!2085 = !DILocation(line: 1393, column: 22, scope: !1839, inlinedAt: !2069)
!2086 = !DILocation(line: 1392, column: 9, scope: !1839, inlinedAt: !2069)
!2087 = !DILocation(line: 1397, column: 24, scope: !1864, inlinedAt: !2069)
!2088 = !DILocation(line: 1397, column: 12, scope: !1864, inlinedAt: !2069)
!2089 = !DILocation(line: 1374, column: 7, scope: !1829, inlinedAt: !2067)
!2090 = !DILocation(line: 1375, column: 7, scope: !1829, inlinedAt: !2067)
!2091 = !DILocation(line: 1455, column: 10, scope: !1940, inlinedAt: !2045)
!2092 = !DILocation(line: 1456, column: 14, scope: !1940, inlinedAt: !2045)
!2093 = !DILocation(line: 1456, column: 10, scope: !1940, inlinedAt: !2045)
!2094 = !DILocation(line: 1457, column: 11, scope: !2004, inlinedAt: !2045)
!2095 = !DILocation(line: 1453, column: 23, scope: !1941, inlinedAt: !2045)
!2096 = !DILocation(line: 1457, column: 9, scope: !1940, inlinedAt: !2045)
!2097 = !DILocation(line: 1482, column: 49, scope: !2024)
!2098 = distinct !{!2098, !2043, !2099}
!2099 = !DILocation(line: 1487, column: 5, scope: !2025)
!2100 = !DILocation(line: 0, scope: !2012)
!2101 = !DILocation(line: 1490, column: 1, scope: !2012)
!2102 = distinct !DISubprogram(name: "pbuf_strstr", scope: !3, file: !3, line: 1504, type: !2103, isLocal: false, isDefinition: true, scopeLine: 1505, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!84, !1002, !132}
!2105 = !{!2106, !2107, !2108}
!2106 = !DILocalVariable(name: "p", arg: 1, scope: !2102, file: !3, line: 1504, type: !1002)
!2107 = !DILocalVariable(name: "substr", arg: 2, scope: !2102, file: !3, line: 1504, type: !132)
!2108 = !DILocalVariable(name: "substr_len", scope: !2102, file: !3, line: 1506, type: !114)
!2109 = !DILocation(line: 1504, column: 32, scope: !2102)
!2110 = !DILocation(line: 1504, column: 47, scope: !2102)
!2111 = !DILocation(line: 1507, column: 15, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1507, column: 7)
!2113 = !DILocation(line: 1507, column: 24, scope: !2112)
!2114 = !DILocation(line: 1507, column: 28, scope: !2112)
!2115 = !DILocation(line: 1507, column: 38, scope: !2112)
!2116 = !DILocation(line: 1507, column: 44, scope: !2112)
!2117 = !DILocation(line: 1507, column: 51, scope: !2112)
!2118 = !DILocation(line: 1507, column: 59, scope: !2112)
!2119 = !DILocation(line: 1507, column: 7, scope: !2102)
!2120 = !DILocation(line: 1510, column: 16, scope: !2102)
!2121 = !DILocation(line: 1506, column: 10, scope: !2102)
!2122 = !DILocation(line: 1511, column: 18, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1511, column: 7)
!2124 = !DILocation(line: 1511, column: 7, scope: !2102)
!2125 = !DILocation(line: 1514, column: 34, scope: !2102)
!2126 = !DILocation(line: 1477, column: 33, scope: !2012, inlinedAt: !2127)
!2127 = distinct !DILocation(line: 1514, column: 10, scope: !2102)
!2128 = !DILocation(line: 1477, column: 48, scope: !2012, inlinedAt: !2127)
!2129 = !DILocation(line: 1477, column: 59, scope: !2012, inlinedAt: !2127)
!2130 = !DILocation(line: 1477, column: 74, scope: !2012, inlinedAt: !2127)
!2131 = !DILocation(line: 1480, column: 36, scope: !2012, inlinedAt: !2127)
!2132 = !DILocation(line: 1480, column: 33, scope: !2012, inlinedAt: !2127)
!2133 = !DILocation(line: 1480, column: 46, scope: !2012, inlinedAt: !2127)
!2134 = !DILocation(line: 1480, column: 44, scope: !2012, inlinedAt: !2127)
!2135 = !DILocation(line: 1480, column: 9, scope: !2012, inlinedAt: !2127)
!2136 = !DILocation(line: 1481, column: 18, scope: !2027, inlinedAt: !2127)
!2137 = !DILocation(line: 1479, column: 9, scope: !2012, inlinedAt: !2127)
!2138 = !DILocation(line: 1481, column: 7, scope: !2012, inlinedAt: !2127)
!2139 = !DILocation(line: 1482, column: 5, scope: !2025, inlinedAt: !2127)
!2140 = !DILocation(line: 1435, column: 32, scope: !1928, inlinedAt: !2141)
!2141 = distinct !DILocation(line: 1483, column: 20, scope: !2023, inlinedAt: !2127)
!2142 = !DILocation(line: 1435, column: 41, scope: !1928, inlinedAt: !2141)
!2143 = !DILocation(line: 1435, column: 61, scope: !1928, inlinedAt: !2141)
!2144 = !DILocation(line: 1435, column: 71, scope: !1928, inlinedAt: !2141)
!2145 = !DILocation(line: 1437, column: 9, scope: !1928, inlinedAt: !2141)
!2146 = !DILocation(line: 1438, column: 22, scope: !1928, inlinedAt: !2141)
!2147 = !DILocation(line: 1442, column: 21, scope: !1951, inlinedAt: !2141)
!2148 = !DILocation(line: 1442, column: 28, scope: !1951, inlinedAt: !2141)
!2149 = !DILocation(line: 1442, column: 18, scope: !1951, inlinedAt: !2141)
!2150 = !DILocation(line: 1442, column: 7, scope: !1928, inlinedAt: !2141)
!2151 = !DILocation(line: 1447, column: 29, scope: !1928, inlinedAt: !2141)
!2152 = !DILocation(line: 1447, column: 33, scope: !1928, inlinedAt: !2141)
!2153 = !DILocation(line: 1447, column: 3, scope: !1928, inlinedAt: !2141)
!2154 = !DILocation(line: 1448, column: 27, scope: !1962, inlinedAt: !2141)
!2155 = !DILocation(line: 1449, column: 12, scope: !1962, inlinedAt: !2141)
!2156 = !DILocation(line: 1447, column: 13, scope: !1928, inlinedAt: !2141)
!2157 = !DILocation(line: 1447, column: 22, scope: !1928, inlinedAt: !2141)
!2158 = !DILocation(line: 0, scope: !1962, inlinedAt: !2141)
!2159 = !DILocation(line: 1439, column: 9, scope: !1928, inlinedAt: !2141)
!2160 = !DILocation(line: 1453, column: 3, scope: !1942, inlinedAt: !2141)
!2161 = !DILocation(line: 1453, column: 17, scope: !1941, inlinedAt: !2141)
!2162 = !DILocation(line: 1372, column: 32, scope: !1829, inlinedAt: !2163)
!2163 = distinct !DILocation(line: 1455, column: 14, scope: !1940, inlinedAt: !2141)
!2164 = !DILocation(line: 1390, column: 36, scope: !1839, inlinedAt: !2165)
!2165 = distinct !DILocation(line: 1374, column: 13, scope: !1829, inlinedAt: !2163)
!2166 = !DILocation(line: 1153, column: 36, scope: !1406, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1393, column: 26, scope: !1839, inlinedAt: !2165)
!2168 = !DILocation(line: 1156, column: 22, scope: !1406, inlinedAt: !2167)
!2169 = !DILocation(line: 1159, column: 22, scope: !1406, inlinedAt: !2167)
!2170 = !DILocation(line: 1455, column: 43, scope: !1940, inlinedAt: !2141)
!2171 = !DILocation(line: 1155, column: 9, scope: !1406, inlinedAt: !2167)
!2172 = !DILocation(line: 1153, column: 46, scope: !1406, inlinedAt: !2167)
!2173 = !DILocation(line: 1390, column: 45, scope: !1839, inlinedAt: !2165)
!2174 = !DILocation(line: 1372, column: 41, scope: !1829, inlinedAt: !2163)
!2175 = !DILocation(line: 1159, column: 29, scope: !1406, inlinedAt: !2167)
!2176 = !DILocation(line: 1159, column: 33, scope: !1406, inlinedAt: !2167)
!2177 = !DILocation(line: 1159, column: 3, scope: !1406, inlinedAt: !2167)
!2178 = !DILocation(line: 1160, column: 39, scope: !1422, inlinedAt: !2167)
!2179 = !DILocation(line: 1161, column: 12, scope: !1422, inlinedAt: !2167)
!2180 = !DILocation(line: 1159, column: 13, scope: !1406, inlinedAt: !2167)
!2181 = !DILocation(line: 1393, column: 22, scope: !1839, inlinedAt: !2165)
!2182 = !DILocation(line: 1392, column: 9, scope: !1839, inlinedAt: !2165)
!2183 = !DILocation(line: 1397, column: 24, scope: !1864, inlinedAt: !2165)
!2184 = !DILocation(line: 1397, column: 12, scope: !1864, inlinedAt: !2165)
!2185 = !DILocation(line: 1374, column: 7, scope: !1829, inlinedAt: !2163)
!2186 = !DILocation(line: 1375, column: 7, scope: !1829, inlinedAt: !2163)
!2187 = !DILocation(line: 1455, column: 10, scope: !1940, inlinedAt: !2141)
!2188 = !DILocation(line: 1456, column: 14, scope: !1940, inlinedAt: !2141)
!2189 = !DILocation(line: 1456, column: 10, scope: !1940, inlinedAt: !2141)
!2190 = !DILocation(line: 1457, column: 11, scope: !2004, inlinedAt: !2141)
!2191 = !DILocation(line: 1453, column: 23, scope: !1941, inlinedAt: !2141)
!2192 = !DILocation(line: 1457, column: 9, scope: !1940, inlinedAt: !2141)
!2193 = !DILocation(line: 1482, column: 49, scope: !2024, inlinedAt: !2127)
!2194 = !DILocation(line: 1482, column: 30, scope: !2024, inlinedAt: !2127)
!2195 = !DILocation(line: 0, scope: !2102)
!2196 = !DILocation(line: 1515, column: 1, scope: !2102)
!2197 = distinct !DISubprogram(name: "pbuf_free_ooseq_callback", scope: !3, file: !3, line: 148, type: !2198, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null, !91}
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "arg", arg: 1, scope: !2197, file: !3, line: 148, type: !91)
!2202 = !DILocation(line: 148, column: 32, scope: !2197)
!2203 = !DILocation(line: 131, column: 3, scope: !2204, inlinedAt: !2361)
!2204 = distinct !DILexicalBlock(scope: !2205, file: !3, line: 131, column: 3)
!2205 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 131, column: 3)
!2206 = distinct !DISubprogram(name: "pbuf_free_ooseq", scope: !3, file: !3, line: 128, type: !290, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2207)
!2207 = !{!2208, !2360}
!2208 = !DILocalVariable(name: "pcb", scope: !2206, file: !3, line: 130, type: !2209)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !2211, line: 242, size: 2240, elements: !2212)
!2211 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2212 = !{!2213, !2241, !2242, !2243, !2244, !2245, !2246, !2247, !2248, !2249, !2250, !2251, !2252, !2254, !2255, !2256, !2257, !2258, !2259, !2261, !2262, !2263, !2264, !2265, !2266, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2308, !2309, !2310, !2311, !2331, !2336, !2341, !2343, !2348, !2353, !2354, !2355, !2356, !2357, !2358, !2359}
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2210, file: !2211, line: 244, baseType: !2214, size: 192)
!2214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !2215, line: 76, baseType: !2216)
!2215 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !2215, line: 69, size: 192, elements: !2217)
!2217 = !{!2218, !2240}
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !2216, file: !2215, line: 73, baseType: !2219, size: 160)
!2219 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2216, file: !2215, line: 70, size: 160, elements: !2220)
!2220 = !{!2221, !2234}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !2219, file: !2215, line: 71, baseType: !2222, size: 160)
!2222 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !2223, line: 67, baseType: !2224)
!2223 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !2223, line: 59, size: 160, elements: !2225)
!2225 = !{!2226, !2233}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2224, file: !2223, line: 60, baseType: !2227, size: 128)
!2227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2228, size: 128, elements: !2231)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !85, line: 129, baseType: !2229)
!2229 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 48, baseType: !2230)
!2230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !89, line: 79, baseType: !7)
!2231 = !{!2232}
!2232 = !DISubrange(count: 4)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2224, file: !2223, line: 62, baseType: !100, size: 8, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !2219, file: !2215, line: 72, baseType: !2235, size: 32)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !2236, line: 57, baseType: !2237)
!2236 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !2236, line: 51, size: 32, elements: !2238)
!2238 = !{!2239}
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2237, file: !2236, line: 52, baseType: !2228, size: 32)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2216, file: !2215, line: 75, baseType: !100, size: 8, offset: 160)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2210, file: !2211, line: 244, baseType: !2214, size: 192, offset: 192)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2210, file: !2211, line: 244, baseType: !100, size: 8, offset: 384)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2210, file: !2211, line: 244, baseType: !100, size: 8, offset: 392)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2210, file: !2211, line: 244, baseType: !100, size: 8, offset: 400)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2210, file: !2211, line: 244, baseType: !100, size: 8, offset: 408)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2210, file: !2211, line: 246, baseType: !2209, size: 64, offset: 448)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2210, file: !2211, line: 246, baseType: !91, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2210, file: !2211, line: 246, baseType: !69, size: 32, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2210, file: !2211, line: 246, baseType: !100, size: 8, offset: 608)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2210, file: !2211, line: 246, baseType: !84, size: 16, offset: 624)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !2210, file: !2211, line: 249, baseType: !84, size: 16, offset: 640)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2210, file: !2211, line: 251, baseType: !2253, size: 16, offset: 656)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !2211, line: 206, baseType: !84)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !2210, file: !2211, line: 278, baseType: !100, size: 8, offset: 672)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !2210, file: !2211, line: 278, baseType: !100, size: 8, offset: 680)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !2210, file: !2211, line: 279, baseType: !100, size: 8, offset: 688)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !2210, file: !2211, line: 280, baseType: !2228, size: 32, offset: 704)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !2210, file: !2211, line: 283, baseType: !2228, size: 32, offset: 736)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !2210, file: !2211, line: 284, baseType: !2260, size: 32, offset: 768)
!2260 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !70, line: 51, baseType: !2228)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !2210, file: !2211, line: 285, baseType: !2260, size: 32, offset: 800)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !2210, file: !2211, line: 286, baseType: !2228, size: 32, offset: 832)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !2210, file: !2211, line: 295, baseType: !890, size: 16, offset: 864)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !2210, file: !2211, line: 297, baseType: !84, size: 16, offset: 880)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !2210, file: !2211, line: 300, baseType: !2228, size: 32, offset: 896)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !2210, file: !2211, line: 301, baseType: !2228, size: 32, offset: 928)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2210, file: !2211, line: 302, baseType: !890, size: 16, offset: 960)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !2210, file: !2211, line: 302, baseType: !890, size: 16, offset: 976)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !2210, file: !2211, line: 304, baseType: !890, size: 16, offset: 992)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !2210, file: !2211, line: 305, baseType: !100, size: 8, offset: 1008)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !2210, file: !2211, line: 308, baseType: !100, size: 8, offset: 1016)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !2210, file: !2211, line: 309, baseType: !2228, size: 32, offset: 1024)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !2210, file: !2211, line: 312, baseType: !2260, size: 32, offset: 1056)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !2210, file: !2211, line: 313, baseType: !2260, size: 32, offset: 1088)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !2210, file: !2211, line: 316, baseType: !2228, size: 32, offset: 1120)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !2210, file: !2211, line: 319, baseType: !2228, size: 32, offset: 1152)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !2210, file: !2211, line: 320, baseType: !2228, size: 32, offset: 1184)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !2210, file: !2211, line: 320, baseType: !2228, size: 32, offset: 1216)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !2210, file: !2211, line: 322, baseType: !2228, size: 32, offset: 1248)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !2210, file: !2211, line: 323, baseType: !2260, size: 32, offset: 1280)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !2210, file: !2211, line: 324, baseType: !2260, size: 32, offset: 1312)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !2210, file: !2211, line: 326, baseType: !2260, size: 32, offset: 1344)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !2210, file: !2211, line: 328, baseType: !84, size: 16, offset: 1376)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !2210, file: !2211, line: 332, baseType: !84, size: 16, offset: 1392)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !2210, file: !2211, line: 335, baseType: !2260, size: 32, offset: 1408)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !2210, file: !2211, line: 338, baseType: !2287, size: 64, offset: 1472)
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !2289, line: 253, size: 256, elements: !2290)
!2289 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!2290 = !{!2291, !2292, !2293, !2294, !2295}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2288, file: !2289, line: 254, baseType: !2287, size: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2288, file: !2289, line: 255, baseType: !92, size: 64, offset: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2288, file: !2289, line: 256, baseType: !84, size: 16, offset: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2288, file: !2289, line: 266, baseType: !100, size: 8, offset: 144)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !2288, file: !2289, line: 273, baseType: !2296, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2297, size: 64)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !2298, line: 56, size: 160, elements: !2299)
!2298 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2299 = !{!2300, !2301, !2302, !2303, !2304, !2305, !2306, !2307}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2297, file: !2298, line: 57, baseType: !84, size: 16)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2297, file: !2298, line: 58, baseType: !84, size: 16, offset: 16)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !2297, file: !2298, line: 59, baseType: !2228, size: 32, offset: 32)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !2297, file: !2298, line: 60, baseType: !2228, size: 32, offset: 64)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !2297, file: !2298, line: 61, baseType: !84, size: 16, offset: 96)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !2297, file: !2298, line: 62, baseType: !84, size: 16, offset: 112)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !2297, file: !2298, line: 63, baseType: !84, size: 16, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !2297, file: !2298, line: 64, baseType: !84, size: 16, offset: 144)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !2210, file: !2211, line: 339, baseType: !2287, size: 64, offset: 1536)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !2210, file: !2211, line: 341, baseType: !2287, size: 64, offset: 1600)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !2210, file: !2211, line: 344, baseType: !92, size: 64, offset: 1664)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !2210, file: !2211, line: 347, baseType: !2312, size: 64, offset: 1728)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !2211, line: 223, size: 704, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2313, file: !2211, line: 225, baseType: !2214, size: 192)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2313, file: !2211, line: 225, baseType: !2214, size: 192, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2313, file: !2211, line: 225, baseType: !100, size: 8, offset: 384)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2313, file: !2211, line: 225, baseType: !100, size: 8, offset: 392)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2313, file: !2211, line: 225, baseType: !100, size: 8, offset: 400)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2313, file: !2211, line: 225, baseType: !100, size: 8, offset: 408)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2313, file: !2211, line: 227, baseType: !2312, size: 64, offset: 448)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2313, file: !2211, line: 227, baseType: !91, size: 64, offset: 512)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2313, file: !2211, line: 227, baseType: !69, size: 32, offset: 576)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2313, file: !2211, line: 227, baseType: !100, size: 8, offset: 608)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2313, file: !2211, line: 227, baseType: !84, size: 16, offset: 624)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !2313, file: !2211, line: 231, baseType: !2327, size: 64, offset: 640)
!2327 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !2211, line: 70, baseType: !2328)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DISubroutineType(types: !2330)
!2330 = !{!1157, !91, !2209, !1157}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !2210, file: !2211, line: 352, baseType: !2332, size: 64, offset: 1792)
!2332 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !2211, line: 96, baseType: !2333)
!2333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2334, size: 64)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{!1157, !91, !2209, !84}
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !2210, file: !2211, line: 354, baseType: !2337, size: 64, offset: 1856)
!2337 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !2211, line: 82, baseType: !2338)
!2338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2339, size: 64)
!2339 = !DISubroutineType(types: !2340)
!2340 = !{!1157, !91, !2209, !92, !1157}
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !2210, file: !2211, line: 356, baseType: !2342, size: 64, offset: 1920)
!2342 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !2211, line: 134, baseType: !2328)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2210, file: !2211, line: 358, baseType: !2344, size: 64, offset: 1984)
!2344 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !2211, line: 108, baseType: !2345)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!1157, !91, !2209}
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !2210, file: !2211, line: 360, baseType: !2349, size: 64, offset: 2048)
!2349 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !2211, line: 120, baseType: !2350)
!2350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2351, size: 64)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{null, !91, !1157}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !2210, file: !2211, line: 369, baseType: !2228, size: 32, offset: 2112)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !2210, file: !2211, line: 376, baseType: !100, size: 8, offset: 2144)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !2210, file: !2211, line: 378, baseType: !100, size: 8, offset: 2152)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !2210, file: !2211, line: 380, baseType: !100, size: 8, offset: 2160)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !2210, file: !2211, line: 383, baseType: !100, size: 8, offset: 2168)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !2210, file: !2211, line: 386, baseType: !100, size: 8, offset: 2176)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !2210, file: !2211, line: 387, baseType: !100, size: 8, offset: 2184)
!2360 = !DILocalVariable(name: "old_level", scope: !2205, file: !3, line: 131, type: !110)
!2361 = distinct !DILocation(line: 151, column: 3, scope: !2197)
!2362 = !DILocation(line: 131, column: 3, scope: !2205, inlinedAt: !2361)
!2363 = !DILocation(line: 130, column: 19, scope: !2206, inlinedAt: !2361)
!2364 = !DILocation(line: 0, scope: !2365, inlinedAt: !2361)
!2365 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 133, column: 3)
!2366 = distinct !DILexicalBlock(scope: !2206, file: !3, line: 133, column: 3)
!2367 = !DILocation(line: 133, column: 36, scope: !2365, inlinedAt: !2361)
!2368 = !DILocation(line: 133, column: 3, scope: !2366, inlinedAt: !2361)
!2369 = !DILocation(line: 134, column: 14, scope: !2370, inlinedAt: !2361)
!2370 = distinct !DILexicalBlock(scope: !2371, file: !3, line: 134, column: 9)
!2371 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 133, column: 61)
!2372 = !{!2373, !245, i64 200}
!2373 = !{!"tcp_pcb", !2374, i64 0, !2374, i64 24, !246, i64 48, !246, i64 49, !246, i64 50, !246, i64 51, !245, i64 56, !245, i64 64, !246, i64 72, !246, i64 76, !248, i64 78, !248, i64 80, !248, i64 82, !246, i64 84, !246, i64 85, !246, i64 86, !2375, i64 88, !2375, i64 92, !2375, i64 96, !2375, i64 100, !2375, i64 104, !248, i64 108, !248, i64 110, !2375, i64 112, !2375, i64 116, !248, i64 120, !248, i64 122, !248, i64 124, !246, i64 126, !246, i64 127, !2375, i64 128, !2375, i64 132, !2375, i64 136, !2375, i64 140, !2375, i64 144, !2375, i64 148, !2375, i64 152, !2375, i64 156, !2375, i64 160, !2375, i64 164, !2375, i64 168, !248, i64 172, !248, i64 174, !2375, i64 176, !245, i64 184, !245, i64 192, !245, i64 200, !245, i64 208, !245, i64 216, !245, i64 224, !245, i64 232, !245, i64 240, !245, i64 248, !245, i64 256, !2375, i64 264, !246, i64 268, !246, i64 269, !246, i64 270, !246, i64 271, !246, i64 272, !246, i64 273}
!2374 = !{!"ip_addr", !246, i64 0, !246, i64 20}
!2375 = !{!"int", !246, i64 0}
!2376 = !DILocation(line: 134, column: 20, scope: !2370, inlinedAt: !2361)
!2377 = !DILocation(line: 134, column: 9, scope: !2371, inlinedAt: !2361)
!2378 = !DILocation(line: 137, column: 7, scope: !2379, inlinedAt: !2361)
!2379 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 134, column: 29)
!2380 = !DILocation(line: 138, column: 7, scope: !2379, inlinedAt: !2361)
!2381 = !DILocation(line: 133, column: 55, scope: !2365, inlinedAt: !2361)
!2382 = distinct !{!2382, !2383, !2384}
!2383 = !DILocation(line: 133, column: 3, scope: !2366)
!2384 = !DILocation(line: 140, column: 3, scope: !2366)
!2385 = !DILocation(line: 152, column: 1, scope: !2197)
