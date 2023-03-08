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
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloc(i32, i16 zeroext, i32) local_unnamed_addr #0 !dbg !171 {
  switch i32 %2, label %107 [
    i32 65, label %4
    i32 1, label %4
    i32 386, label %27
    i32 640, label %78
  ], !dbg !195

; <label>:4:                                      ; preds = %3, %3
  %5 = or i32 %2, 64, !dbg !208
  %6 = icmp eq i32 %5, 65, !dbg !208
  br i1 %6, label %8, label %7, !dbg !208

; <label>:7:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !211
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !214
  tail call void @ukplat_terminate(i32 3) #8, !dbg !214
  unreachable, !dbg !214

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @memp_malloc(i32 15) #7, !dbg !218
  %10 = icmp eq i8* %9, null, !dbg !219
  br i1 %10, label %25, label %11, !dbg !221

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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !271
  br label %25, !dbg !272

; <label>:25:                                     ; preds = %8, %11
  %26 = phi %struct.pbuf* [ %12, %11 ], [ null, %8 ], !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %108, !dbg !276

; <label>:27:                                     ; preds = %3
  %28 = trunc i32 %0 to i16, !dbg !277
  br label %29, !dbg !281

; <label>:29:                                     ; preds = %74, %27
  %30 = phi %struct.pbuf* [ null, %27 ], [ %35, %74 ], !dbg !282
  %31 = phi i16 [ %1, %27 ], [ %76, %74 ], !dbg !283
  %32 = phi i16 [ %28, %27 ], [ 0, %74 ], !dbg !278
  %33 = phi %struct.pbuf* [ null, %27 ], [ %75, %74 ], !dbg !284
  %34 = tail call i8* @memp_malloc(i32 16) #7, !dbg !285
  %35 = bitcast i8* %34 to %struct.pbuf*, !dbg !286
  %36 = icmp eq i8* %34, null, !dbg !288
  br i1 %36, label %37, label %50, !dbg !290

; <label>:37:                                     ; preds = %29
  %38 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !291
  %39 = load volatile i8, i8* @pbuf_free_ooseq_pending, align 1, !dbg !302, !tbaa !303
  store volatile i8 1, i8* @pbuf_free_ooseq_pending, align 1, !dbg !305, !tbaa !303
  tail call void @ukplat_lcpu_restore_irqf(i64 %38) #7, !dbg !306
  %40 = icmp eq i8 %39, 0, !dbg !307
  br i1 %40, label %41, label %46, !dbg !309

; <label>:41:                                     ; preds = %37
  %42 = tail call signext i8 @tcpip_try_callback(void (i8*)* nonnull @pbuf_free_ooseq_callback, i8* null) #7, !dbg !310
  %43 = icmp eq i8 %42, 0, !dbg !310
  br i1 %43, label %46, label %44, !dbg !314

; <label>:44:                                     ; preds = %41
  %45 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !315
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !318, !tbaa !303
  tail call void @ukplat_lcpu_restore_irqf(i64 %45) #7, !dbg !318
  br label %46, !dbg !318

; <label>:46:                                     ; preds = %37, %41, %44
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !319
  %47 = icmp eq %struct.pbuf* %33, null, !dbg !320
  br i1 %47, label %108, label %48, !dbg !322

; <label>:48:                                     ; preds = %46
  %49 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %33) #9, !dbg !323
  br label %108, !dbg !325

; <label>:50:                                     ; preds = %29
  %51 = sub i16 1514, %32, !dbg !326
  %52 = icmp ult i16 %31, %51, !dbg !326
  %53 = select i1 %52, i16 %31, i16 %51, !dbg !326
  %54 = getelementptr inbounds i8, i8* %34, i64 24, !dbg !328
  %55 = zext i16 %32 to i64, !dbg !328
  %56 = getelementptr inbounds i8, i8* %54, i64 %55, !dbg !328
  %57 = bitcast i8* %34 to %struct.pbuf**, !dbg !336
  store %struct.pbuf* null, %struct.pbuf** %57, align 8, !dbg !337, !tbaa !243
  %58 = getelementptr inbounds i8, i8* %34, i64 8, !dbg !338
  %59 = bitcast i8* %58 to i8**, !dbg !338
  store i8* %56, i8** %59, align 8, !dbg !339, !tbaa !251
  %60 = getelementptr inbounds i8, i8* %34, i64 16, !dbg !340
  %61 = bitcast i8* %60 to i16*, !dbg !340
  store i16 %31, i16* %61, align 8, !dbg !341, !tbaa !254
  %62 = getelementptr inbounds i8, i8* %34, i64 18, !dbg !342
  %63 = bitcast i8* %62 to i16*, !dbg !342
  store i16 %53, i16* %63, align 2, !dbg !343, !tbaa !257
  %64 = getelementptr inbounds i8, i8* %34, i64 20, !dbg !344
  store i8 -126, i8* %64, align 4, !dbg !345, !tbaa !261
  %65 = getelementptr inbounds i8, i8* %34, i64 21, !dbg !346
  store i8 0, i8* %65, align 1, !dbg !347, !tbaa !264
  %66 = getelementptr inbounds i8, i8* %34, i64 22, !dbg !348
  store i8 1, i8* %66, align 2, !dbg !349, !tbaa !267
  %67 = getelementptr inbounds i8, i8* %34, i64 23, !dbg !350
  store i8 0, i8* %67, align 1, !dbg !351, !tbaa !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  %68 = icmp eq i16 %32, 1514, !dbg !353
  br i1 %68, label %69, label %70, !dbg !356

; <label>:69:                                     ; preds = %50
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !357
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !360
  tail call void @ukplat_terminate(i32 3) #8, !dbg !360
  unreachable, !dbg !360

; <label>:70:                                     ; preds = %50
  %71 = icmp eq %struct.pbuf* %33, null, !dbg !364
  br i1 %71, label %74, label %72, !dbg !366

; <label>:72:                                     ; preds = %70
  %73 = bitcast %struct.pbuf* %30 to i8**, !dbg !367
  store i8* %34, i8** %73, align 8, !dbg !367, !tbaa !243
  br label %74

; <label>:74:                                     ; preds = %70, %72
  %75 = phi %struct.pbuf* [ %33, %72 ], [ %35, %70 ], !dbg !369
  %76 = sub i16 %31, %53, !dbg !370
  %77 = icmp eq i16 %76, 0, !dbg !371
  br i1 %77, label %108, label %29, !dbg !372, !llvm.loop !373

; <label>:78:                                     ; preds = %3
  %79 = and i32 %0, 65535, !dbg !375
  %80 = trunc i32 %0 to i16, !dbg !376
  %81 = add i16 %80, %1, !dbg !376
  %82 = zext i16 %81 to i64, !dbg !378
  %83 = add nuw nsw i64 %82, 24, !dbg !379
  %84 = icmp ult i16 %81, %1, !dbg !381
  %85 = zext i16 %1 to i64, !dbg !383
  %86 = icmp ult i64 %83, %85, !dbg !384
  %87 = or i1 %84, %86, !dbg !385
  br i1 %87, label %108, label %88, !dbg !385

; <label>:88:                                     ; preds = %78
  %89 = tail call i8* @mem_malloc(i64 %83) #7, !dbg !386
  %90 = icmp eq i8* %89, null, !dbg !387
  br i1 %90, label %108, label %91, !dbg !389

; <label>:91:                                     ; preds = %88
  %92 = bitcast i8* %89 to %struct.pbuf*, !dbg !390
  %93 = getelementptr inbounds i8, i8* %89, i64 24, !dbg !391
  %94 = zext i32 %79 to i64, !dbg !391
  %95 = getelementptr inbounds i8, i8* %93, i64 %94, !dbg !391
  %96 = bitcast i8* %89 to %struct.pbuf**, !dbg !399
  store %struct.pbuf* null, %struct.pbuf** %96, align 8, !dbg !400, !tbaa !243
  %97 = getelementptr inbounds i8, i8* %89, i64 8, !dbg !401
  %98 = bitcast i8* %97 to i8**, !dbg !401
  store i8* %95, i8** %98, align 8, !dbg !402, !tbaa !251
  %99 = getelementptr inbounds i8, i8* %89, i64 16, !dbg !403
  %100 = bitcast i8* %99 to i16*, !dbg !403
  store i16 %1, i16* %100, align 8, !dbg !404, !tbaa !254
  %101 = getelementptr inbounds i8, i8* %89, i64 18, !dbg !405
  %102 = bitcast i8* %101 to i16*, !dbg !405
  store i16 %1, i16* %102, align 2, !dbg !406, !tbaa !257
  %103 = getelementptr inbounds i8, i8* %89, i64 20, !dbg !407
  store i8 -128, i8* %103, align 4, !dbg !408, !tbaa !261
  %104 = getelementptr inbounds i8, i8* %89, i64 21, !dbg !409
  store i8 0, i8* %104, align 1, !dbg !410, !tbaa !264
  %105 = getelementptr inbounds i8, i8* %89, i64 22, !dbg !411
  store i8 1, i8* %105, align 2, !dbg !412, !tbaa !267
  %106 = getelementptr inbounds i8, i8* %89, i64 23, !dbg !413
  store i8 0, i8* %106, align 1, !dbg !414, !tbaa !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  br label %108

; <label>:107:                                    ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !416
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !421
  tail call void @ukplat_terminate(i32 3) #8, !dbg !421
  unreachable, !dbg !421

; <label>:108:                                    ; preds = %74, %88, %78, %25, %91, %48, %46
  %109 = phi %struct.pbuf* [ null, %46 ], [ null, %48 ], [ %92, %91 ], [ %26, %25 ], [ null, %78 ], [ null, %88 ], [ %75, %74 ], !dbg !425
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !426
  ret %struct.pbuf* %109, !dbg !426
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloc_reference(i8*, i16 zeroext, i32) local_unnamed_addr #0 !dbg !197 {
  %4 = or i32 %2, 64, !dbg !430
  %5 = icmp eq i32 %4, 65, !dbg !430
  br i1 %5, label %7, label %6, !dbg !430

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !431
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !432
  tail call void @ukplat_terminate(i32 3) #8, !dbg !432
  unreachable, !dbg !432

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @memp_malloc(i32 15) #7, !dbg !433
  %9 = icmp eq i8* %8, null, !dbg !434
  br i1 %9, label %24, label %10, !dbg !435

; <label>:10:                                     ; preds = %7
  %11 = bitcast i8* %8 to %struct.pbuf*, !dbg !436
  %12 = bitcast i8* %8 to %struct.pbuf**, !dbg !445
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !446, !tbaa !243
  %13 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !447
  %14 = bitcast i8* %13 to i8**, !dbg !447
  store i8* %0, i8** %14, align 8, !dbg !448, !tbaa !251
  %15 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !449
  %16 = bitcast i8* %15 to i16*, !dbg !449
  store i16 %1, i16* %16, align 8, !dbg !450, !tbaa !254
  %17 = getelementptr inbounds i8, i8* %8, i64 18, !dbg !451
  %18 = bitcast i8* %17 to i16*, !dbg !451
  store i16 %1, i16* %18, align 2, !dbg !452, !tbaa !257
  %19 = trunc i32 %2 to i8, !dbg !453
  %20 = getelementptr inbounds i8, i8* %8, i64 20, !dbg !454
  store i8 %19, i8* %20, align 4, !dbg !455, !tbaa !261
  %21 = getelementptr inbounds i8, i8* %8, i64 21, !dbg !456
  store i8 0, i8* %21, align 1, !dbg !457, !tbaa !264
  %22 = getelementptr inbounds i8, i8* %8, i64 22, !dbg !458
  store i8 1, i8* %22, align 2, !dbg !459, !tbaa !267
  %23 = getelementptr inbounds i8, i8* %8, i64 23, !dbg !460
  store i8 0, i8* %23, align 1, !dbg !461, !tbaa !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !462
  br label %24, !dbg !463

; <label>:24:                                     ; preds = %7, %10
  %25 = phi %struct.pbuf* [ %11, %10 ], [ null, %7 ], !dbg !464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !465
  ret %struct.pbuf* %25, !dbg !465
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #0 !dbg !466 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !483
  br i1 %2, label %3, label %4, !dbg !485

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !486
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !492
  tail call void @ukplat_terminate(i32 3) #8, !dbg !492
  unreachable, !dbg !492

; <label>:4:                                      ; preds = %1, %40
  %5 = phi %struct.pbuf* [ %17, %40 ], [ %0, %1 ]
  %6 = phi i8 [ %41, %40 ], [ 0, %1 ]
  %7 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !497
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 6, !dbg !500
  %9 = load i8, i8* %8, align 2, !dbg !500, !tbaa !267
  %10 = icmp eq i8 %9, 0, !dbg !500
  br i1 %10, label %11, label %12, !dbg !503

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !504
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !507
  tail call void @ukplat_terminate(i32 3) #8, !dbg !507
  unreachable, !dbg !507

; <label>:12:                                     ; preds = %4
  %13 = add i8 %9, -1, !dbg !511
  store i8 %13, i8* %8, align 2, !dbg !511, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %7) #7, !dbg !513
  %14 = icmp eq i8 %13, 0, !dbg !514
  br i1 %14, label %15, label %43, !dbg !515

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !516
  %17 = load %struct.pbuf*, %struct.pbuf** %16, align 8, !dbg !516, !tbaa !243
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 5, !dbg !518
  %19 = load i8, i8* %18, align 1, !dbg !518, !tbaa !264
  %20 = and i8 %19, 2, !dbg !519
  %21 = icmp eq i8 %20, 0, !dbg !520
  br i1 %21, label %29, label %22, !dbg !521

; <label>:22:                                     ; preds = %15
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 1, !dbg !523
  %24 = bitcast %struct.pbuf* %23 to void (%struct.pbuf*)**, !dbg !523
  %25 = load void (%struct.pbuf*)*, void (%struct.pbuf*)** %24, align 8, !dbg !523, !tbaa !526
  %26 = icmp eq void (%struct.pbuf*)* %25, null, !dbg !523
  br i1 %26, label %27, label %28, !dbg !528

; <label>:27:                                     ; preds = %22
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !529
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !532
  tail call void @ukplat_terminate(i32 3) #8, !dbg !532
  unreachable, !dbg !532

; <label>:28:                                     ; preds = %22
  tail call void %25(%struct.pbuf* nonnull %5) #7, !dbg !536
  br label %40, !dbg !537

; <label>:29:                                     ; preds = %15
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 4, !dbg !538
  %31 = load i8, i8* %30, align 4, !dbg !538, !tbaa !261
  %32 = trunc i8 %31 to i4, !dbg !540
  switch i4 %32, label %39 [
    i4 2, label %33
    i4 1, label %35
    i4 0, label %37
  ], !dbg !540

; <label>:33:                                     ; preds = %29
  %34 = bitcast %struct.pbuf* %5 to i8*, !dbg !542
  tail call void @memp_free(i32 16, i8* %34) #7, !dbg !545
  br label %40, !dbg !546

; <label>:35:                                     ; preds = %29
  %36 = bitcast %struct.pbuf* %5 to i8*, !dbg !547
  tail call void @memp_free(i32 15, i8* %36) #7, !dbg !550
  br label %40, !dbg !551

; <label>:37:                                     ; preds = %29
  %38 = bitcast %struct.pbuf* %5 to i8*, !dbg !552
  tail call void @mem_free(i8* %38) #7, !dbg !555
  br label %40

; <label>:39:                                     ; preds = %29
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !556
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !562
  tail call void @ukplat_terminate(i32 3) #8, !dbg !562
  unreachable, !dbg !562

; <label>:40:                                     ; preds = %28, %35, %37, %33
  %41 = add i8 %6, 1, !dbg !566
  %42 = icmp eq %struct.pbuf* %17, null, !dbg !567
  br i1 %42, label %43, label %4, !dbg !568, !llvm.loop !569

; <label>:43:                                     ; preds = %12, %40
  %44 = phi i8 [ %41, %40 ], [ %6, %12 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  ret i8 %44, !dbg !571
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !139 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !573
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !573
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !575
  call void @llvm.va_start(i8* nonnull %3), !dbg !575
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.38, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !576
  call void @llvm.va_end(i8* nonnull %3), !dbg !579
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !580
  ret void, !dbg !580
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @mem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloced_custom(i32, i16 zeroext, i32, %struct.pbuf_custom*, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !581 {
  %7 = and i32 %0, 65535, !dbg !600
  %8 = zext i16 %1 to i32, !dbg !602
  %9 = add nuw nsw i32 %7, %8, !dbg !603
  %10 = zext i16 %5 to i32, !dbg !604
  %11 = icmp ugt i32 %9, %10, !dbg !605
  br i1 %11, label %27, label %12, !dbg !606

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i8* %4, null, !dbg !607
  %14 = zext i32 %7 to i64, !dbg !609
  %15 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !609
  %16 = select i1 %13, i8* null, i8* %15, !dbg !612
  %17 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, !dbg !613
  %18 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 0, !dbg !621
  store %struct.pbuf* null, %struct.pbuf** %18, align 8, !dbg !622, !tbaa !243
  %19 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 1, !dbg !623
  store i8* %16, i8** %19, align 8, !dbg !624, !tbaa !251
  %20 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 2, !dbg !625
  store i16 %1, i16* %20, align 8, !dbg !626, !tbaa !254
  %21 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 3, !dbg !627
  store i16 %1, i16* %21, align 2, !dbg !628, !tbaa !257
  %22 = trunc i32 %2 to i8, !dbg !629
  %23 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 4, !dbg !630
  store i8 %22, i8* %23, align 4, !dbg !631, !tbaa !261
  %24 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 5, !dbg !632
  store i8 2, i8* %24, align 1, !dbg !633, !tbaa !264
  %25 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 6, !dbg !634
  store i8 1, i8* %25, align 2, !dbg !635, !tbaa !267
  %26 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 7, !dbg !636
  store i8 0, i8* %26, align 1, !dbg !637, !tbaa !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !638
  br label %27, !dbg !639

; <label>:27:                                     ; preds = %6, %12
  %28 = phi %struct.pbuf* [ %17, %12 ], [ null, %6 ], !dbg !640
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !641
  ret %struct.pbuf* %28, !dbg !641
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !642 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !653
  br i1 %3, label %4, label %5, !dbg !656

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !657
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !660
  tail call void @ukplat_terminate(i32 3) #8, !dbg !660
  unreachable, !dbg !660

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !664
  %7 = load i16, i16* %6, align 8, !dbg !664, !tbaa !254
  %8 = icmp ugt i16 %7, %1, !dbg !666
  br i1 %8, label %9, label %65, !dbg !667

; <label>:9:                                      ; preds = %5
  %10 = sub i16 %1, %7
  br label %11, !dbg !668

; <label>:11:                                     ; preds = %9, %17
  %12 = phi i16 [ %18, %17 ], [ %1, %9 ], !dbg !669
  %13 = phi %struct.pbuf* [ %23, %17 ], [ %0, %9 ], !dbg !669
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !668
  %15 = load i16, i16* %14, align 2, !dbg !668, !tbaa !257
  %16 = icmp ugt i16 %12, %15, !dbg !673
  br i1 %16, label %17, label %26, !dbg !674

; <label>:17:                                     ; preds = %11
  %18 = sub i16 %12, %15, !dbg !675
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 2, !dbg !676
  %20 = load i16, i16* %19, align 8, !dbg !676, !tbaa !254
  %21 = add i16 %10, %20, !dbg !677
  store i16 %21, i16* %19, align 8, !dbg !678, !tbaa !254
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 0, !dbg !679
  %23 = load %struct.pbuf*, %struct.pbuf** %22, align 8, !dbg !679, !tbaa !243
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !680
  br i1 %24, label %25, label %11, !dbg !683, !llvm.loop !684

; <label>:25:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !686
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !689
  tail call void @ukplat_terminate(i32 3) #8, !dbg !689
  unreachable, !dbg !689

; <label>:26:                                     ; preds = %11
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !668
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 4, !dbg !693
  %29 = load i8, i8* %28, align 4, !dbg !693, !tbaa !261
  %30 = and i8 %29, 15, !dbg !693
  %31 = icmp ne i8 %30, 0, !dbg !693
  %32 = icmp eq i16 %12, %15, !dbg !695
  %33 = or i1 %32, %31, !dbg !696
  br i1 %33, label %55, label %34, !dbg !696

; <label>:34:                                     ; preds = %26
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 5, !dbg !697
  %36 = load i8, i8* %35, align 1, !dbg !697, !tbaa !264
  %37 = and i8 %36, 2, !dbg !698
  %38 = icmp eq i8 %37, 0, !dbg !699
  br i1 %38, label %39, label %55, !dbg !700

; <label>:39:                                     ; preds = %34
  %40 = bitcast %struct.pbuf* %13 to i8*, !dbg !701
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 1, !dbg !703
  %42 = bitcast i8** %41 to i64*, !dbg !703
  %43 = load i64, i64* %42, align 8, !dbg !703, !tbaa !251
  %44 = ptrtoint %struct.pbuf* %13 to i64, !dbg !704
  %45 = zext i16 %12 to i64, !dbg !705
  %46 = sub i64 %45, %44, !dbg !704
  %47 = add i64 %46, %43, !dbg !706
  %48 = tail call i8* @mem_trim(i8* %40, i64 %47) #7, !dbg !707
  %49 = icmp eq i8* %48, null, !dbg !708
  br i1 %49, label %54, label %50, !dbg !711

; <label>:50:                                     ; preds = %39
  %51 = bitcast i8* %48 to %struct.pbuf*, !dbg !712
  %52 = getelementptr inbounds i8, i8* %48, i64 18, !dbg !713
  %53 = bitcast i8* %52 to i16*, !dbg !713
  br label %55, !dbg !711

; <label>:54:                                     ; preds = %39
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !714
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !717
  tail call void @ukplat_terminate(i32 3) #8, !dbg !717
  unreachable, !dbg !717

; <label>:55:                                     ; preds = %50, %26, %34
  %56 = phi i16* [ %53, %50 ], [ %27, %26 ], [ %27, %34 ], !dbg !713
  %57 = phi %struct.pbuf* [ %51, %50 ], [ %13, %26 ], [ %13, %34 ], !dbg !721
  store i16 %12, i16* %56, align 2, !dbg !722, !tbaa !257
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 2, !dbg !723
  store i16 %12, i16* %58, align 8, !dbg !724, !tbaa !254
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 0, !dbg !725
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 8, !dbg !725, !tbaa !243
  %61 = icmp eq %struct.pbuf* %60, null, !dbg !727
  br i1 %61, label %64, label %62, !dbg !728

; <label>:62:                                     ; preds = %55
  %63 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %60) #9, !dbg !729
  br label %64, !dbg !731

; <label>:64:                                     ; preds = %55, %62
  store %struct.pbuf* null, %struct.pbuf** %59, align 8, !dbg !732, !tbaa !243
  br label %65, !dbg !733

; <label>:65:                                     ; preds = %5, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !733
  ret void, !dbg !733
}

; Function Attrs: noredzone
declare dso_local i8* @mem_trim(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !734 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !756
  br i1 %3, label %4, label %5, !dbg !759

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !760
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !763
  tail call void @ukplat_terminate(i32 3) #8, !dbg !763
  unreachable, !dbg !763

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !767
  br i1 %6, label %34, label %7, !dbg !769

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !770
  br i1 %8, label %34, label %9, !dbg !772

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !773
  %11 = and i32 %10, 65535, !dbg !774
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !777
  %13 = load i16, i16* %12, align 8, !dbg !777, !tbaa !254
  %14 = trunc i64 %1 to i16, !dbg !778
  %15 = add i16 %13, %14, !dbg !778
  %16 = zext i16 %15 to i32, !dbg !778
  %17 = icmp ugt i32 %11, %16, !dbg !779
  br i1 %17, label %34, label %18, !dbg !780

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !781
  %20 = load i8, i8* %19, align 4, !dbg !781, !tbaa !261
  %21 = icmp slt i8 %20, 0, !dbg !782
  br i1 %21, label %22, label %34, !dbg !784

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !785
  %24 = load i8*, i8** %23, align 8, !dbg !785, !tbaa !251
  %25 = sub i64 0, %1, !dbg !787
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !787
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !789
  %28 = bitcast %struct.pbuf* %27 to i8*, !dbg !789
  %29 = icmp ult i8* %26, %28, !dbg !791
  br i1 %29, label %34, label %30, !dbg !792

; <label>:30:                                     ; preds = %22
  store i8* %26, i8** %23, align 8, !dbg !793, !tbaa !251
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !794
  %32 = load i16, i16* %31, align 2, !dbg !794, !tbaa !257
  %33 = add i16 %32, %14, !dbg !795
  store i16 %33, i16* %31, align 2, !dbg !796, !tbaa !257
  store i16 %15, i16* %12, align 8, !dbg !797, !tbaa !254
  br label %34, !dbg !798

; <label>:34:                                     ; preds = %18, %5, %7, %9, %22, %30
  %35 = phi i8 [ 0, %30 ], [ 1, %5 ], [ 0, %7 ], [ 1, %9 ], [ 1, %22 ], [ 1, %18 ], !dbg !799
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !804
  ret i8 %35, !dbg !804
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header_force(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !805 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !815
  br i1 %3, label %4, label %5, !dbg !816

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !817
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !818
  tail call void @ukplat_terminate(i32 3) #8, !dbg !818
  unreachable, !dbg !818

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !819
  br i1 %6, label %34, label %7, !dbg !820

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !821
  br i1 %8, label %34, label %9, !dbg !822

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !823
  %11 = and i32 %10, 65535, !dbg !824
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !826
  %13 = load i16, i16* %12, align 8, !dbg !826, !tbaa !254
  %14 = trunc i64 %1 to i16, !dbg !827
  %15 = add i16 %13, %14, !dbg !827
  %16 = zext i16 %15 to i32, !dbg !827
  %17 = icmp ugt i32 %11, %16, !dbg !828
  br i1 %17, label %34, label %18, !dbg !829

; <label>:18:                                     ; preds = %9
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !830
  %20 = load i8, i8* %19, align 4, !dbg !830, !tbaa !261
  %21 = icmp slt i8 %20, 0, !dbg !831
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !832
  %23 = load i8*, i8** %22, align 8, !dbg !832, !tbaa !251
  %24 = sub i64 0, %1, !dbg !832
  %25 = getelementptr inbounds i8, i8* %23, i64 %24, !dbg !832
  br i1 %21, label %26, label %30, !dbg !834

; <label>:26:                                     ; preds = %18
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !835
  %28 = bitcast %struct.pbuf* %27 to i8*, !dbg !835
  %29 = icmp ult i8* %25, %28, !dbg !836
  br i1 %29, label %34, label %30, !dbg !837

; <label>:30:                                     ; preds = %18, %26
  store i8* %25, i8** %22, align 8, !dbg !838, !tbaa !251
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !839
  %32 = load i16, i16* %31, align 2, !dbg !839, !tbaa !257
  %33 = add i16 %32, %14, !dbg !840
  store i16 %33, i16* %31, align 2, !dbg !841, !tbaa !257
  store i16 %15, i16* %12, align 8, !dbg !842, !tbaa !254
  br label %34, !dbg !843

; <label>:34:                                     ; preds = %5, %7, %9, %26, %30
  %35 = phi i8 [ 0, %30 ], [ 1, %5 ], [ 0, %7 ], [ 1, %9 ], [ 1, %26 ], !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !845
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  ret i8 %35, !dbg !846
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !847 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !855
  br i1 %3, label %4, label %5, !dbg !858

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !859
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !862
  tail call void @ukplat_terminate(i32 3) #8, !dbg !862
  unreachable, !dbg !862

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !866
  br i1 %6, label %26, label %7, !dbg !868

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !869
  br i1 %8, label %26, label %9, !dbg !871

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !872
  %11 = and i32 %10, 65535, !dbg !873
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !873
  %13 = load i16, i16* %12, align 2, !dbg !873, !tbaa !257
  %14 = zext i16 %13 to i32, !dbg !873
  %15 = icmp ugt i32 %11, %14, !dbg !873
  br i1 %15, label %16, label %17, !dbg !877

; <label>:16:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !878
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !881
  tail call void @ukplat_terminate(i32 3) #8, !dbg !881
  unreachable, !dbg !881

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !885
  %19 = load i8*, i8** %18, align 8, !dbg !887, !tbaa !251
  %20 = getelementptr inbounds i8, i8* %19, i64 %1, !dbg !888
  store i8* %20, i8** %18, align 8, !dbg !889, !tbaa !251
  %21 = trunc i64 %1 to i16, !dbg !890
  %22 = sub i16 %13, %21, !dbg !890
  store i16 %22, i16* %12, align 2, !dbg !891, !tbaa !257
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !892
  %24 = load i16, i16* %23, align 8, !dbg !892, !tbaa !254
  %25 = sub i16 %24, %21, !dbg !893
  store i16 %25, i16* %23, align 8, !dbg !894, !tbaa !254
  br label %26, !dbg !895

; <label>:26:                                     ; preds = %7, %5, %17
  %27 = phi i8 [ 0, %17 ], [ 1, %5 ], [ 0, %7 ], !dbg !896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !897
  ret i8 %27, !dbg !897
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !898 {
  %3 = tail call fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf* %0, i16 signext %1, i8 zeroext 0) #9, !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !911
  ret i8 %3, !dbg !911
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf*, i16 signext, i8 zeroext) unnamed_addr #0 !dbg !912 {
  %4 = icmp slt i16 %1, 0, !dbg !922
  %5 = sext i16 %1 to i64, !dbg !924
  br i1 %4, label %6, label %9, !dbg !926

; <label>:6:                                      ; preds = %3
  %7 = sub nsw i64 0, %5, !dbg !927
  %8 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 %7) #9, !dbg !929
  br label %46, !dbg !930

; <label>:9:                                      ; preds = %3
  %10 = icmp eq %struct.pbuf* %0, null, !dbg !935
  br i1 %10, label %11, label %12, !dbg !936

; <label>:11:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #7, !dbg !937
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !938
  tail call void @ukplat_terminate(i32 3) #8, !dbg !938
  unreachable, !dbg !938

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i16 %1, 0, !dbg !939
  br i1 %13, label %44, label %14, !dbg !940

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !941
  %16 = load i16, i16* %15, align 8, !dbg !941, !tbaa !254
  %17 = add i16 %16, %1, !dbg !942
  %18 = icmp ult i16 %17, %1, !dbg !943
  br i1 %18, label %44, label %19, !dbg !944

; <label>:19:                                     ; preds = %14
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !945
  %21 = load i8, i8* %20, align 4, !dbg !945, !tbaa !261
  %22 = icmp slt i8 %21, 0, !dbg !946
  br i1 %22, label %23, label %31, !dbg !947

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !948
  %25 = load i8*, i8** %24, align 8, !dbg !948, !tbaa !251
  %26 = sub nsw i64 0, %5, !dbg !949
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !949
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !951
  %29 = bitcast %struct.pbuf* %28 to i8*, !dbg !951
  %30 = icmp ult i8* %27, %29, !dbg !952
  br i1 %30, label %44, label %38, !dbg !953

; <label>:31:                                     ; preds = %19
  %32 = icmp eq i8 %2, 0, !dbg !954
  br i1 %32, label %44, label %33, !dbg !955

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !956
  %35 = load i8*, i8** %34, align 8, !dbg !956, !tbaa !251
  %36 = sub nsw i64 0, %5, !dbg !958
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !958
  br label %38

; <label>:38:                                     ; preds = %33, %23
  %39 = phi i8** [ %24, %23 ], [ %34, %33 ], !dbg !959
  %40 = phi i8* [ %27, %23 ], [ %37, %33 ], !dbg !960
  store i8* %40, i8** %39, align 8, !dbg !961, !tbaa !251
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !962
  %42 = load i16, i16* %41, align 2, !dbg !962, !tbaa !257
  %43 = add i16 %42, %1, !dbg !963
  store i16 %43, i16* %41, align 2, !dbg !964, !tbaa !257
  store i16 %17, i16* %15, align 8, !dbg !965, !tbaa !254
  br label %44, !dbg !966

; <label>:44:                                     ; preds = %12, %14, %23, %31, %38
  %45 = phi i8 [ 0, %38 ], [ 0, %12 ], [ 1, %14 ], [ 1, %23 ], [ 1, %31 ], !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !968
  br label %46, !dbg !969

; <label>:46:                                     ; preds = %44, %6
  %47 = phi i8 [ %8, %6 ], [ %45, %44 ], !dbg !924
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !970
  ret i8 %47, !dbg !970
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !971 {
  %3 = tail call fastcc zeroext i8 @pbuf_header_impl(%struct.pbuf* %0, i16 signext %1, i8 zeroext 1) #9, !dbg !977
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !978
  ret i8 %3, !dbg !978
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_free_header(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !979 {
  %3 = icmp ne i16 %1, 0, !dbg !995
  %4 = icmp ne %struct.pbuf* %0, null, !dbg !996
  %5 = and i1 %3, %4, !dbg !996
  br i1 %5, label %6, label %23, !dbg !997

; <label>:6:                                      ; preds = %2, %15
  %7 = phi %struct.pbuf* [ %18, %15 ], [ %0, %2 ]
  %8 = phi i16 [ %16, %15 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !998
  %10 = load i16, i16* %9, align 2, !dbg !998, !tbaa !257
  %11 = icmp ult i16 %8, %10, !dbg !999
  br i1 %11, label %12, label %15, !dbg !1000

; <label>:12:                                     ; preds = %6
  %13 = zext i16 %8 to i64, !dbg !1001
  %14 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %7, i64 %13) #9, !dbg !1003
  br label %23, !dbg !997

; <label>:15:                                     ; preds = %6
  %16 = sub i16 %8, %10, !dbg !1005
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1006
  %18 = load %struct.pbuf*, %struct.pbuf** %17, align 8, !dbg !1006, !tbaa !243
  store %struct.pbuf* null, %struct.pbuf** %17, align 8, !dbg !1007, !tbaa !243
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #9, !dbg !1008
  %20 = icmp ne i16 %16, 0, !dbg !995
  %21 = icmp ne %struct.pbuf* %18, null, !dbg !996
  %22 = and i1 %20, %21, !dbg !996
  br i1 %22, label %6, label %23, !dbg !997, !llvm.loop !1009

; <label>:23:                                     ; preds = %15, %12, %2
  %24 = phi %struct.pbuf* [ %0, %2 ], [ %7, %12 ], [ %18, %15 ], !dbg !1011
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  ret %struct.pbuf* %24, !dbg !1012
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @memp_free(i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_clen(%struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1013 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1023
  br i1 %2, label %10, label %3, !dbg !1024

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i16 [ %6, %3 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %8, %3 ], [ %0, %1 ]
  %6 = add i16 %4, 1, !dbg !1025
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1027
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1027, !tbaa !243
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1023
  br i1 %9, label %10, label %3, !dbg !1024, !llvm.loop !1028

; <label>:10:                                     ; preds = %3, %1
  %11 = phi i16 [ 0, %1 ], [ %6, %3 ], !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  ret i16 %11, !dbg !1031
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #0 !dbg !1032 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1040
  br i1 %2, label %11, label %3, !dbg !1041

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1042
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1044
  %6 = load i8, i8* %5, align 2, !dbg !1044, !tbaa !267
  %7 = add i8 %6, 1, !dbg !1044
  store i8 %7, i8* %5, align 2, !dbg !1044, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #7, !dbg !1044
  %8 = load i8, i8* %5, align 2, !dbg !1045, !tbaa !267
  %9 = icmp eq i8 %8, 0, !dbg !1045
  br i1 %9, label %10, label %11, !dbg !1048

; <label>:10:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !1049
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1052
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1052
  unreachable, !dbg !1052

; <label>:11:                                     ; preds = %3, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1056
  ret void, !dbg !1056
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1057 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1066
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1066
  %5 = and i1 %3, %4, !dbg !1066
  br i1 %5, label %6, label %14, !dbg !1066

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1070
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !1070, !tbaa !243
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !1073
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1074
  %11 = load i16, i16* %10, align 8, !dbg !1074, !tbaa !254
  br i1 %9, label %28, label %12, !dbg !1077

; <label>:12:                                     ; preds = %6
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2
  br label %15, !dbg !1077

; <label>:14:                                     ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !1078
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1081
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1081
  unreachable, !dbg !1081

; <label>:15:                                     ; preds = %12, %15
  %16 = phi i16 [ %11, %12 ], [ %25, %15 ]
  %17 = phi i16* [ %10, %12 ], [ %24, %15 ]
  %18 = phi %struct.pbuf* [ %8, %12 ], [ %22, %15 ]
  %19 = load i16, i16* %13, align 8, !dbg !1085, !tbaa !254
  %20 = add i16 %19, %16, !dbg !1087
  store i16 %20, i16* %17, align 8, !dbg !1088, !tbaa !254
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1070
  %22 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !1070, !tbaa !243
  %23 = icmp eq %struct.pbuf* %22, null, !dbg !1073
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !1074
  %25 = load i16, i16* %24, align 8, !dbg !1074, !tbaa !254
  br i1 %23, label %26, label %15, !dbg !1077, !llvm.loop !1089

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1070
  br label %28, !dbg !1091

; <label>:28:                                     ; preds = %26, %6
  %29 = phi %struct.pbuf* [ %0, %6 ], [ %18, %26 ], !dbg !1092
  %30 = phi %struct.pbuf** [ %7, %6 ], [ %27, %26 ], !dbg !1070
  %31 = phi i16* [ %10, %6 ], [ %24, %26 ], !dbg !1074
  %32 = phi i16 [ %11, %6 ], [ %25, %26 ], !dbg !1074
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i64 0, i32 3, !dbg !1091
  %34 = load i16, i16* %33, align 2, !dbg !1091, !tbaa !257
  %35 = icmp eq i16 %32, %34, !dbg !1091
  br i1 %35, label %37, label %36, !dbg !1093

; <label>:36:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !1094
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1097
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1097
  unreachable, !dbg !1097

; <label>:37:                                     ; preds = %28
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1101
  %39 = load i16, i16* %38, align 8, !dbg !1101, !tbaa !254
  %40 = add i16 %39, %32, !dbg !1102
  store i16 %40, i16* %31, align 8, !dbg !1103, !tbaa !254
  store %struct.pbuf* %1, %struct.pbuf** %30, align 8, !dbg !1104, !tbaa !243
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1105
  ret void, !dbg !1105
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_chain(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1106 {
  tail call void @pbuf_cat(%struct.pbuf* %0, %struct.pbuf* %1) #9, !dbg !1112
  %3 = icmp eq %struct.pbuf* %1, null, !dbg !1115
  br i1 %3, label %12, label %4, !dbg !1116

; <label>:4:                                      ; preds = %2
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1117
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 6, !dbg !1118
  %7 = load i8, i8* %6, align 2, !dbg !1118, !tbaa !267
  %8 = add i8 %7, 1, !dbg !1118
  store i8 %8, i8* %6, align 2, !dbg !1118, !tbaa !267
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #7, !dbg !1118
  %9 = load i8, i8* %6, align 2, !dbg !1119, !tbaa !267
  %10 = icmp eq i8 %9, 0, !dbg !1119
  br i1 %10, label %11, label %12, !dbg !1120

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1121
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1122
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1122
  unreachable, !dbg !1122

; <label>:12:                                     ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1123
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  ret void, !dbg !1124
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_dechain(%struct.pbuf* nocapture) local_unnamed_addr #0 !dbg !1125 {
  %2 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1134
  %3 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !1134, !tbaa !243
  %4 = icmp eq %struct.pbuf* %3, null, !dbg !1136
  br i1 %4, label %5, label %8, !dbg !1138

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1139
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1139
  br label %24, !dbg !1138

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %3, i64 0, i32 2, !dbg !1142
  %10 = load i16, i16* %9, align 8, !dbg !1142, !tbaa !254
  %11 = zext i16 %10 to i32, !dbg !1142
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1142
  %13 = load i16, i16* %12, align 8, !dbg !1142, !tbaa !254
  %14 = zext i16 %13 to i32, !dbg !1142
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1142
  %16 = load i16, i16* %15, align 2, !dbg !1142, !tbaa !257
  %17 = zext i16 %16 to i32, !dbg !1142
  %18 = sub nsw i32 %14, %17, !dbg !1142
  %19 = icmp eq i32 %18, %11, !dbg !1142
  br i1 %19, label %21, label %20, !dbg !1146

; <label>:20:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1147
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1150
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1150
  unreachable, !dbg !1150

; <label>:21:                                     ; preds = %8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8, !dbg !1154, !tbaa !243
  store i16 %16, i16* %12, align 8, !dbg !1155, !tbaa !254
  %22 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %3) #9, !dbg !1156
  %23 = zext i8 %22 to i32, !dbg !1157
  br label %24, !dbg !1157

; <label>:24:                                     ; preds = %5, %21
  %25 = phi i16* [ %7, %5 ], [ %15, %21 ], !dbg !1139
  %26 = phi i16* [ %6, %5 ], [ %12, %21 ], !dbg !1139
  %27 = phi i32 [ 1, %5 ], [ %23, %21 ]
  %28 = load i16, i16* %26, align 8, !dbg !1139, !tbaa !254
  %29 = load i16, i16* %25, align 2, !dbg !1139, !tbaa !257
  %30 = icmp eq i16 %28, %29, !dbg !1139
  br i1 %30, label %32, label %31, !dbg !1158

; <label>:31:                                     ; preds = %24
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1162
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1162
  unreachable, !dbg !1162

; <label>:32:                                     ; preds = %24
  %33 = icmp eq i32 %27, 0, !dbg !1166
  %34 = select i1 %33, %struct.pbuf* %3, %struct.pbuf* null, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1168
  ret %struct.pbuf* %34, !dbg !1168
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_copy(%struct.pbuf* readonly, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1169 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1187
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1187
  %5 = and i1 %3, %4, !dbg !1187
  br i1 %5, label %6, label %12, !dbg !1187

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1187
  %8 = load i16, i16* %7, align 8, !dbg !1187, !tbaa !254
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1187
  %10 = load i16, i16* %9, align 8, !dbg !1187, !tbaa !254
  %11 = icmp ult i16 %8, %10, !dbg !1187
  br i1 %11, label %12, label %13, !dbg !1190

; <label>:12:                                     ; preds = %6, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !1191
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1194
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1194
  unreachable, !dbg !1194

; <label>:13:                                     ; preds = %6, %90
  %14 = phi %struct.pbuf* [ %52, %90 ], [ %1, %6 ]
  %15 = phi i64 [ %63, %90 ], [ 0, %6 ], !dbg !1198
  %16 = phi i64 [ %53, %90 ], [ 0, %6 ], !dbg !1202
  %17 = phi %struct.pbuf* [ %64, %90 ], [ %0, %6 ]
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 3, !dbg !1205
  %19 = load i16, i16* %18, align 2, !dbg !1205, !tbaa !257
  %20 = zext i16 %19 to i64, !dbg !1207
  %21 = sub i64 %20, %15, !dbg !1208
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !1209
  %23 = load i16, i16* %22, align 2, !dbg !1209, !tbaa !257
  %24 = zext i16 %23 to i64, !dbg !1210
  %25 = sub i64 %24, %16, !dbg !1211
  %26 = icmp ult i64 %21, %25, !dbg !1212
  %27 = select i1 %26, i64 %21, i64 %25
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 1, !dbg !1214
  %29 = load i8*, i8** %28, align 8, !dbg !1214, !tbaa !251
  %30 = getelementptr inbounds i8, i8* %29, i64 %15, !dbg !1214
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !1214
  %32 = load i8*, i8** %31, align 8, !dbg !1214, !tbaa !251
  %33 = getelementptr inbounds i8, i8* %32, i64 %16, !dbg !1214
  %34 = tail call i8* @memcpy(i8* %30, i8* %33, i64 %27) #7, !dbg !1214
  %35 = add i64 %27, %15, !dbg !1215
  %36 = add i64 %27, %16, !dbg !1216
  %37 = load i16, i16* %18, align 2, !dbg !1217, !tbaa !257
  %38 = zext i16 %37 to i64, !dbg !1217
  %39 = icmp ugt i64 %35, %38, !dbg !1217
  br i1 %39, label %40, label %41, !dbg !1220

; <label>:40:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !1221
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1224
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1224
  unreachable, !dbg !1224

; <label>:41:                                     ; preds = %13
  %42 = load i16, i16* %22, align 2, !dbg !1228, !tbaa !257
  %43 = zext i16 %42 to i64, !dbg !1228
  %44 = icmp ugt i64 %36, %43, !dbg !1228
  br i1 %44, label %45, label %46, !dbg !1231

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !1232
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1235
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1235
  unreachable, !dbg !1235

; <label>:46:                                     ; preds = %41
  %47 = icmp ult i64 %36, %43, !dbg !1239
  br i1 %47, label %51, label %48, !dbg !1240

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !1241
  %50 = load %struct.pbuf*, %struct.pbuf** %49, align 8, !dbg !1241, !tbaa !243
  br label %51, !dbg !1242

; <label>:51:                                     ; preds = %46, %48
  %52 = phi %struct.pbuf* [ %50, %48 ], [ %14, %46 ]
  %53 = phi i64 [ 0, %48 ], [ %36, %46 ], !dbg !1243
  %54 = icmp eq i64 %35, %38, !dbg !1244
  br i1 %54, label %55, label %62, !dbg !1245

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 0, !dbg !1246
  %57 = load %struct.pbuf*, %struct.pbuf** %56, align 8, !dbg !1246, !tbaa !243
  %58 = icmp ne %struct.pbuf* %57, null, !dbg !1247
  %59 = icmp eq %struct.pbuf* %52, null, !dbg !1247
  %60 = or i1 %59, %58, !dbg !1247
  br i1 %60, label %62, label %61, !dbg !1247

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1250
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1253
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1253
  unreachable, !dbg !1253

; <label>:62:                                     ; preds = %55, %51
  %63 = phi i64 [ 0, %55 ], [ %35, %51 ], !dbg !1243
  %64 = phi %struct.pbuf* [ %57, %55 ], [ %17, %51 ]
  %65 = icmp ne %struct.pbuf* %52, null, !dbg !1257
  br i1 %65, label %66, label %77, !dbg !1259

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 3, !dbg !1260
  %68 = load i16, i16* %67, align 2, !dbg !1260, !tbaa !257
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 2, !dbg !1261
  %70 = load i16, i16* %69, align 8, !dbg !1261, !tbaa !254
  %71 = icmp eq i16 %68, %70, !dbg !1262
  br i1 %71, label %72, label %77, !dbg !1263

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 0, !dbg !1264
  %74 = load %struct.pbuf*, %struct.pbuf** %73, align 8, !dbg !1264, !tbaa !243
  %75 = icmp eq %struct.pbuf* %74, null, !dbg !1264
  br i1 %75, label %77, label %76, !dbg !1268

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1269
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1272
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1272
  unreachable, !dbg !1272

; <label>:77:                                     ; preds = %72, %66, %62
  %78 = icmp eq %struct.pbuf* %64, null, !dbg !1276
  br i1 %78, label %90, label %79, !dbg !1278

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 3, !dbg !1279
  %81 = load i16, i16* %80, align 2, !dbg !1279, !tbaa !257
  %82 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 2, !dbg !1280
  %83 = load i16, i16* %82, align 8, !dbg !1280, !tbaa !254
  %84 = icmp eq i16 %81, %83, !dbg !1281
  br i1 %84, label %85, label %90, !dbg !1282

; <label>:85:                                     ; preds = %79
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 0, !dbg !1283
  %87 = load %struct.pbuf*, %struct.pbuf** %86, align 8, !dbg !1283, !tbaa !243
  %88 = icmp eq %struct.pbuf* %87, null, !dbg !1283
  br i1 %88, label %90, label %89, !dbg !1287

; <label>:89:                                     ; preds = %85
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1288
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1291
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1291
  unreachable, !dbg !1291

; <label>:90:                                     ; preds = %77, %79, %85
  br i1 %65, label %13, label %91, !dbg !1295, !llvm.loop !1296

; <label>:91:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1299
  ret i8 0, !dbg !1299
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1300 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1318
  br i1 %5, label %6, label %7, !dbg !1321

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1322
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1325
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1325
  unreachable, !dbg !1325

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i8* %1, null, !dbg !1329
  br i1 %8, label %11, label %9, !dbg !1332

; <label>:9:                                      ; preds = %7
  %10 = icmp eq i16 %2, 0, !dbg !1334
  br i1 %10, label %50, label %12, !dbg !1337

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !1338
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1341
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1341
  unreachable, !dbg !1341

; <label>:12:                                     ; preds = %9, %40
  %13 = phi i16 [ %44, %40 ], [ %2, %9 ]
  %14 = phi i16 [ %43, %40 ], [ 0, %9 ]
  %15 = phi i16 [ %42, %40 ], [ 0, %9 ]
  %16 = phi %struct.pbuf* [ %46, %40 ], [ %0, %9 ]
  %17 = phi i16 [ %41, %40 ], [ %3, %9 ]
  %18 = icmp eq i16 %17, 0, !dbg !1345
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 3
  %20 = load i16, i16* %19, align 2, !dbg !1348, !tbaa !257
  %21 = icmp ult i16 %17, %20, !dbg !1349
  %22 = or i1 %18, %21, !dbg !1350
  br i1 %22, label %25, label %23, !dbg !1350

; <label>:23:                                     ; preds = %12
  %24 = sub i16 %17, %20, !dbg !1351
  br label %40, !dbg !1353

; <label>:25:                                     ; preds = %12
  %26 = sub i16 %20, %17, !dbg !1354
  %27 = icmp ugt i16 %26, %13, !dbg !1357
  %28 = select i1 %27, i16 %13, i16 %26, !dbg !1359
  %29 = zext i16 %15 to i64, !dbg !1360
  %30 = getelementptr inbounds i8, i8* %1, i64 %29, !dbg !1360
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 1, !dbg !1360
  %32 = load i8*, i8** %31, align 8, !dbg !1360, !tbaa !251
  %33 = zext i16 %17 to i64, !dbg !1360
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1360
  %35 = zext i16 %28 to i64, !dbg !1360
  %36 = tail call i8* @memcpy(i8* nonnull %30, i8* %34, i64 %35) #7, !dbg !1360
  %37 = add i16 %28, %14, !dbg !1361
  %38 = add i16 %28, %15, !dbg !1362
  %39 = sub i16 %13, %28, !dbg !1363
  br label %40

; <label>:40:                                     ; preds = %23, %25
  %41 = phi i16 [ %24, %23 ], [ 0, %25 ], !dbg !1364
  %42 = phi i16 [ %15, %23 ], [ %38, %25 ], !dbg !1364
  %43 = phi i16 [ %14, %23 ], [ %37, %25 ], !dbg !1364
  %44 = phi i16 [ %13, %23 ], [ %39, %25 ]
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 0, !dbg !1365
  %46 = load %struct.pbuf*, %struct.pbuf** %45, align 8, !dbg !1365, !tbaa !243
  %47 = icmp ne i16 %44, 0, !dbg !1334
  %48 = icmp ne %struct.pbuf* %46, null, !dbg !1366
  %49 = and i1 %48, %47, !dbg !1367
  br i1 %49, label %12, label %50, !dbg !1337, !llvm.loop !1368

; <label>:50:                                     ; preds = %40, %9
  %51 = phi i16 [ 0, %9 ], [ %43, %40 ], !dbg !1317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1370
  ret i16 %51, !dbg !1370
}

; Function Attrs: noredzone nounwind
define dso_local i8* @pbuf_get_contiguous(%struct.pbuf* readonly, i8*, i64, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1371 {
  %6 = icmp eq %struct.pbuf* %0, null, !dbg !1387
  br i1 %6, label %7, label %8, !dbg !1390

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !1391
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1394
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1394
  unreachable, !dbg !1394

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8* %1, null, !dbg !1398
  br i1 %9, label %10, label %11, !dbg !1401

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !1402
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1405
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1405
  unreachable, !dbg !1405

; <label>:11:                                     ; preds = %8
  %12 = zext i16 %3 to i64, !dbg !1409
  %13 = icmp ugt i64 %12, %2, !dbg !1409
  br i1 %13, label %14, label %15, !dbg !1412

; <label>:14:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !1413
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1416
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1416
  unreachable, !dbg !1416

; <label>:15:                                     ; preds = %11, %21
  %16 = phi %struct.pbuf* [ %24, %21 ], [ %0, %11 ]
  %17 = phi i16 [ %22, %21 ], [ %4, %11 ]
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 3, !dbg !1433
  %19 = load i16, i16* %18, align 2, !dbg !1433, !tbaa !257
  %20 = icmp ult i16 %17, %19, !dbg !1434
  br i1 %20, label %27, label %21, !dbg !1435

; <label>:21:                                     ; preds = %15
  %22 = sub i16 %17, %19, !dbg !1436
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 0, !dbg !1438
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !1438, !tbaa !243
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !1439
  br i1 %25, label %26, label %15, !dbg !1440, !llvm.loop !1441

; <label>:26:                                     ; preds = %21
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  br label %84, !dbg !1445

; <label>:27:                                     ; preds = %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1444
  %28 = zext i16 %19 to i32, !dbg !1447
  %29 = zext i16 %17 to i32, !dbg !1452
  %30 = zext i16 %3 to i32, !dbg !1453
  %31 = add nuw nsw i32 %29, %30, !dbg !1454
  %32 = icmp ugt i32 %31, %28, !dbg !1455
  br i1 %32, label %38, label %33, !dbg !1456

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 1, !dbg !1457
  %35 = load i8*, i8** %34, align 8, !dbg !1457, !tbaa !251
  %36 = zext i16 %17 to i64, !dbg !1459
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1459
  br label %84, !dbg !1460

; <label>:38:                                     ; preds = %27
  %39 = icmp eq i16 %3, 0, !dbg !1470
  br i1 %39, label %80, label %40, !dbg !1471

; <label>:40:                                     ; preds = %38, %77
  %41 = phi i16 [ %79, %77 ], [ %19, %38 ], !dbg !1472
  %42 = phi i16 [ %71, %77 ], [ %3, %38 ]
  %43 = phi i16 [ %70, %77 ], [ 0, %38 ]
  %44 = phi i16 [ %69, %77 ], [ 0, %38 ]
  %45 = phi %struct.pbuf* [ %73, %77 ], [ %16, %38 ]
  %46 = phi i16 [ %68, %77 ], [ %17, %38 ]
  %47 = icmp eq i16 %46, 0, !dbg !1473
  %48 = icmp ult i16 %46, %41, !dbg !1474
  %49 = or i1 %47, %48, !dbg !1475
  br i1 %49, label %52, label %50, !dbg !1475

; <label>:50:                                     ; preds = %40
  %51 = sub i16 %46, %41, !dbg !1476
  br label %67, !dbg !1477

; <label>:52:                                     ; preds = %40
  %53 = sub i16 %41, %46, !dbg !1478
  %54 = icmp ugt i16 %53, %42, !dbg !1480
  %55 = select i1 %54, i16 %42, i16 %53, !dbg !1481
  %56 = zext i16 %44 to i64, !dbg !1482
  %57 = getelementptr inbounds i8, i8* %1, i64 %56, !dbg !1482
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i64 0, i32 1, !dbg !1482
  %59 = load i8*, i8** %58, align 8, !dbg !1482, !tbaa !251
  %60 = zext i16 %46 to i64, !dbg !1482
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !1482
  %62 = zext i16 %55 to i64, !dbg !1482
  %63 = tail call i8* @memcpy(i8* nonnull %57, i8* %61, i64 %62) #7, !dbg !1482
  %64 = add i16 %55, %43, !dbg !1483
  %65 = add i16 %55, %44, !dbg !1484
  %66 = sub i16 %42, %55, !dbg !1485
  br label %67

; <label>:67:                                     ; preds = %52, %50
  %68 = phi i16 [ %51, %50 ], [ 0, %52 ], !dbg !1486
  %69 = phi i16 [ %44, %50 ], [ %65, %52 ], !dbg !1486
  %70 = phi i16 [ %43, %50 ], [ %64, %52 ], !dbg !1486
  %71 = phi i16 [ %42, %50 ], [ %66, %52 ]
  %72 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i64 0, i32 0, !dbg !1487
  %73 = load %struct.pbuf*, %struct.pbuf** %72, align 8, !dbg !1487, !tbaa !243
  %74 = icmp ne i16 %71, 0, !dbg !1470
  %75 = icmp ne %struct.pbuf* %73, null, !dbg !1488
  %76 = and i1 %74, %75, !dbg !1489
  br i1 %76, label %77, label %80, !dbg !1471, !llvm.loop !1368

; <label>:77:                                     ; preds = %67
  %78 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %73, i64 0, i32 3
  %79 = load i16, i16* %78, align 2, !dbg !1472, !tbaa !257
  br label %40, !dbg !1471

; <label>:80:                                     ; preds = %67, %38
  %81 = phi i16 [ 0, %38 ], [ %70, %67 ], !dbg !1468
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1490
  %82 = icmp eq i16 %81, %3, !dbg !1491
  %83 = select i1 %82, i8* %1, i8* null, !dbg !1492
  br label %84, !dbg !1492

; <label>:84:                                     ; preds = %26, %80, %33
  %85 = phi i8* [ %37, %33 ], [ %83, %80 ], [ null, %26 ], !dbg !1493
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1494
  ret i8* %85, !dbg !1494
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf** nocapture) local_unnamed_addr #0 !dbg !1495 {
  store %struct.pbuf* null, %struct.pbuf** %1, align 8, !dbg !1509, !tbaa !1510
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1511
  br i1 %3, label %57, label %4, !dbg !1512

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1513
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !1513, !tbaa !243
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1514
  br i1 %7, label %57, label %8, !dbg !1515

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1516
  %10 = load i16, i16* %9, align 2, !dbg !1516, !tbaa !257
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1520
  %12 = load i16, i16* %11, align 2, !dbg !1520, !tbaa !257
  %13 = add i16 %12, %10, !dbg !1521
  %14 = icmp ult i16 %13, %10, !dbg !1522
  br i1 %14, label %26, label %20, !dbg !1523

; <label>:15:                                     ; preds = %20
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i64 0, i32 3, !dbg !1520
  %17 = load i16, i16* %16, align 2, !dbg !1520, !tbaa !257
  %18 = add i16 %17, %21, !dbg !1521
  %19 = icmp ult i16 %18, %21, !dbg !1522
  br i1 %19, label %26, label %20, !dbg !1523, !llvm.loop !1524

; <label>:20:                                     ; preds = %8, %15
  %21 = phi i16 [ %18, %15 ], [ %13, %8 ]
  %22 = phi %struct.pbuf* [ %24, %15 ], [ %6, %8 ]
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1526
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !1526, !tbaa !243
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !1528
  br i1 %25, label %55, label %15, !dbg !1529, !llvm.loop !1524

; <label>:26:                                     ; preds = %15, %8
  %27 = phi %struct.pbuf* [ %6, %8 ], [ %24, %15 ]
  %28 = phi %struct.pbuf* [ %0, %8 ], [ %22, %15 ]
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i64 0, i32 0, !dbg !1530
  store %struct.pbuf* null, %struct.pbuf** %29, align 8, !dbg !1531, !tbaa !243
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 2
  br label %31, !dbg !1532

; <label>:31:                                     ; preds = %31, %26
  %32 = phi %struct.pbuf* [ %0, %26 ], [ %38, %31 ]
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 2, !dbg !1536
  %34 = load i16, i16* %33, align 8, !dbg !1536, !tbaa !254
  %35 = load i16, i16* %30, align 8, !dbg !1539, !tbaa !254
  %36 = sub i16 %34, %35, !dbg !1540
  store i16 %36, i16* %33, align 8, !dbg !1541, !tbaa !254
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 0, !dbg !1542
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8, !dbg !1542, !tbaa !243
  %39 = icmp eq %struct.pbuf* %38, null, !dbg !1542
  br i1 %39, label %40, label %31, !dbg !1542, !llvm.loop !1545

; <label>:40:                                     ; preds = %31
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 3, !dbg !1542
  %42 = load i16, i16* %41, align 2, !dbg !1542, !tbaa !257
  %43 = icmp eq i16 %36, %42, !dbg !1542
  br i1 %43, label %45, label %44, !dbg !1547

; <label>:44:                                     ; preds = %40
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !1548
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1551
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1551
  unreachable, !dbg !1551

; <label>:45:                                     ; preds = %40
  %46 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !1555
  %47 = load i8, i8* %46, align 1, !dbg !1555, !tbaa !264
  %48 = and i8 %47, 32, !dbg !1557
  %49 = icmp eq i8 %48, 0, !dbg !1557
  br i1 %49, label %54, label %50, !dbg !1558

; <label>:50:                                     ; preds = %45
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 5, !dbg !1559
  %52 = load i8, i8* %51, align 1, !dbg !1561, !tbaa !264
  %53 = or i8 %52, 32, !dbg !1561
  store i8 %53, i8* %51, align 1, !dbg !1561, !tbaa !264
  br label %54, !dbg !1562

; <label>:54:                                     ; preds = %45, %50
  store %struct.pbuf* %27, %struct.pbuf** %1, align 8, !dbg !1563, !tbaa !1510
  br label %57, !dbg !1564

; <label>:55:                                     ; preds = %20
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1526
  store %struct.pbuf* null, %struct.pbuf** %56, align 8, !dbg !1531, !tbaa !243
  br label %57

; <label>:57:                                     ; preds = %54, %55, %4, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1565
  ret void, !dbg !1565
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_skip(%struct.pbuf* readonly, i16 zeroext, i16*) local_unnamed_addr #0 !dbg !1566 {
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1583
  br i1 %4, label %16, label %5, !dbg !1584

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1585
  %9 = load i16, i16* %8, align 2, !dbg !1585, !tbaa !257
  %10 = icmp ult i16 %7, %9, !dbg !1586
  br i1 %10, label %16, label %11, !dbg !1587

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1588
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1589
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1589, !tbaa !243
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1583
  br i1 %15, label %16, label %5, !dbg !1584, !llvm.loop !1441

; <label>:16:                                     ; preds = %11, %5, %3
  %17 = phi i16 [ %1, %3 ], [ %12, %11 ], [ %7, %5 ], !dbg !1590
  %18 = phi %struct.pbuf* [ null, %3 ], [ null, %11 ], [ %6, %5 ], !dbg !1590
  %19 = icmp eq i16* %2, null, !dbg !1591
  br i1 %19, label %21, label %20, !dbg !1593

; <label>:20:                                     ; preds = %16
  store i16 %17, i16* %2, align 2, !dbg !1594, !tbaa !1596
  br label %21, !dbg !1597

; <label>:21:                                     ; preds = %16, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1598
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1600
  ret %struct.pbuf* %18, !dbg !1600
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take(%struct.pbuf* readonly, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1601 {
  %4 = zext i16 %2 to i64, !dbg !1617
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1620
  br i1 %5, label %6, label %7, !dbg !1623

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !1624
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1627
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1627
  unreachable, !dbg !1627

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !1631
  br i1 %8, label %9, label %10, !dbg !1634

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !1635
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1638
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1638
  unreachable, !dbg !1638

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1642
  %12 = load i16, i16* %11, align 8, !dbg !1642, !tbaa !254
  %13 = icmp ult i16 %12, %2, !dbg !1642
  br i1 %13, label %16, label %14, !dbg !1645

; <label>:14:                                     ; preds = %10
  %15 = icmp eq i16 %2, 0, !dbg !1647
  br i1 %15, label %38, label %17, !dbg !1650

; <label>:16:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !1651
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1654
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1654
  unreachable, !dbg !1654

; <label>:17:                                     ; preds = %14, %23
  %18 = phi i64 [ %34, %23 ], [ 0, %14 ]
  %19 = phi i64 [ %33, %23 ], [ %4, %14 ]
  %20 = phi %struct.pbuf* [ %36, %23 ], [ %0, %14 ]
  %21 = icmp eq %struct.pbuf* %20, null, !dbg !1658
  br i1 %21, label %22, label %23, !dbg !1662

; <label>:22:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !1663
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1666
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1666
  unreachable, !dbg !1666

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 3, !dbg !1671
  %25 = load i16, i16* %24, align 2, !dbg !1671, !tbaa !257
  %26 = zext i16 %25 to i64, !dbg !1673
  %27 = icmp ugt i64 %19, %26, !dbg !1674
  %28 = select i1 %27, i64 %26, i64 %19, !dbg !1675
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 1, !dbg !1676
  %30 = load i8*, i8** %29, align 8, !dbg !1676, !tbaa !251
  %31 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !1676
  %32 = tail call i8* @memcpy(i8* %30, i8* nonnull %31, i64 %28) #7, !dbg !1676
  %33 = sub i64 %19, %28, !dbg !1677
  %34 = add i64 %28, %18, !dbg !1678
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 0, !dbg !1679
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8, !dbg !1679, !tbaa !243
  %37 = icmp eq i64 %33, 0, !dbg !1647
  br i1 %37, label %38, label %17, !dbg !1650, !llvm.loop !1680

; <label>:38:                                     ; preds = %23, %14
  %39 = phi i64 [ 0, %14 ], [ %34, %23 ], !dbg !1682
  %40 = icmp eq i64 %39, %4, !dbg !1683
  br i1 %40, label %42, label %41, !dbg !1686

; <label>:41:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !1687
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1690
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1690
  unreachable, !dbg !1690

; <label>:42:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1694
  ret i8 0, !dbg !1694
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take_at(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1695 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1722
  br i1 %5, label %17, label %6, !dbg !1723

; <label>:6:                                      ; preds = %4, %12
  %7 = phi %struct.pbuf* [ %15, %12 ], [ %0, %4 ]
  %8 = phi i16 [ %13, %12 ], [ %3, %4 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !1724
  %10 = load i16, i16* %9, align 2, !dbg !1724, !tbaa !257
  %11 = icmp ult i16 %8, %10, !dbg !1725
  br i1 %11, label %18, label %12, !dbg !1726

; <label>:12:                                     ; preds = %6
  %13 = sub i16 %8, %10, !dbg !1727
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1728
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !1728, !tbaa !243
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !1722
  br i1 %16, label %17, label %6, !dbg !1723, !llvm.loop !1441

; <label>:17:                                     ; preds = %12, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  br label %46, !dbg !1733

; <label>:18:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1731
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 2, !dbg !1734
  %20 = load i16, i16* %19, align 8, !dbg !1734, !tbaa !254
  %21 = zext i16 %20 to i32, !dbg !1735
  %22 = zext i16 %8 to i32, !dbg !1737
  %23 = zext i16 %2 to i32, !dbg !1738
  %24 = add nuw nsw i32 %22, %23, !dbg !1739
  %25 = icmp ugt i32 %24, %21, !dbg !1740
  br i1 %25, label %46, label %26, !dbg !1741

; <label>:26:                                     ; preds = %18
  %27 = zext i16 %10 to i32, !dbg !1744
  %28 = sub nsw i32 %27, %22, !dbg !1747
  %29 = icmp slt i32 %28, %23, !dbg !1747
  %30 = select i1 %29, i32 %28, i32 %23, !dbg !1747
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 1, !dbg !1748
  %32 = load i8*, i8** %31, align 8, !dbg !1748, !tbaa !251
  %33 = zext i16 %8 to i64, !dbg !1748
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1748
  %35 = and i32 %30, 65535, !dbg !1748
  %36 = zext i32 %35 to i64, !dbg !1748
  %37 = tail call i8* @memcpy(i8* %34, i8* %1, i64 %36) #7, !dbg !1748
  %38 = trunc i32 %30 to i16, !dbg !1749
  %39 = sub i16 %2, %38, !dbg !1749
  %40 = icmp eq i16 %39, 0, !dbg !1750
  br i1 %40, label %46, label %41, !dbg !1752

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds i8, i8* %1, i64 %36, !dbg !1753
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1754
  %44 = load %struct.pbuf*, %struct.pbuf** %43, align 8, !dbg !1754, !tbaa !243
  %45 = tail call signext i8 @pbuf_take(%struct.pbuf* %44, i8* %42, i16 zeroext %39) #9, !dbg !1756
  br label %46, !dbg !1757

; <label>:46:                                     ; preds = %17, %18, %41, %26
  %47 = phi i8 [ %45, %41 ], [ 0, %26 ], [ -1, %18 ], [ -1, %17 ], !dbg !1758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1759
  ret i8 %47, !dbg !1759
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_coalesce(%struct.pbuf*, i32) local_unnamed_addr #0 !dbg !1760 {
  %3 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1769
  %4 = load %struct.pbuf*, %struct.pbuf** %3, align 8, !dbg !1769, !tbaa !243
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !1771
  br i1 %5, label %40, label %6, !dbg !1772

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1786
  %8 = load i16, i16* %7, align 8, !dbg !1786, !tbaa !254
  %9 = and i32 %1, 65535, !dbg !1791
  %10 = trunc i32 %1 to i16, !dbg !1792
  %11 = add i16 %8, %10, !dbg !1792
  %12 = zext i16 %11 to i64, !dbg !1794
  %13 = add nuw nsw i64 %12, 24, !dbg !1795
  %14 = icmp ult i16 %11, %8, !dbg !1797
  %15 = zext i16 %8 to i64, !dbg !1798
  %16 = icmp ult i64 %13, %15, !dbg !1799
  %17 = or i1 %14, %16, !dbg !1800
  br i1 %17, label %21, label %18, !dbg !1800

; <label>:18:                                     ; preds = %6
  %19 = tail call i8* @mem_malloc(i64 %13) #7, !dbg !1801
  %20 = icmp eq i8* %19, null, !dbg !1802
  br i1 %20, label %21, label %22, !dbg !1803

; <label>:21:                                     ; preds = %6, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  br label %40, !dbg !1808

; <label>:22:                                     ; preds = %18
  %23 = bitcast i8* %19 to %struct.pbuf*, !dbg !1809
  %24 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1811
  %25 = zext i32 %9 to i64, !dbg !1811
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !1811
  %27 = bitcast i8* %19 to %struct.pbuf**, !dbg !1819
  store %struct.pbuf* null, %struct.pbuf** %27, align 8, !dbg !1820, !tbaa !243
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1821
  %29 = bitcast i8* %28 to i8**, !dbg !1821
  store i8* %26, i8** %29, align 8, !dbg !1822, !tbaa !251
  %30 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !1823
  %31 = bitcast i8* %30 to i16*, !dbg !1823
  store i16 %8, i16* %31, align 8, !dbg !1824, !tbaa !254
  %32 = getelementptr inbounds i8, i8* %19, i64 18, !dbg !1825
  %33 = bitcast i8* %32 to i16*, !dbg !1825
  store i16 %8, i16* %33, align 2, !dbg !1826, !tbaa !257
  %34 = getelementptr inbounds i8, i8* %19, i64 20, !dbg !1827
  store i8 -128, i8* %34, align 4, !dbg !1828, !tbaa !261
  %35 = getelementptr inbounds i8, i8* %19, i64 21, !dbg !1829
  store i8 0, i8* %35, align 1, !dbg !1830, !tbaa !264
  %36 = getelementptr inbounds i8, i8* %19, i64 22, !dbg !1831
  store i8 1, i8* %36, align 2, !dbg !1832, !tbaa !267
  %37 = getelementptr inbounds i8, i8* %19, i64 23, !dbg !1833
  store i8 0, i8* %37, align 1, !dbg !1834, !tbaa !270
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1835
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1804
  %38 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %23, %struct.pbuf* nonnull %0) #7, !dbg !1836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1806
  %39 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #9, !dbg !1838
  br label %40, !dbg !1839

; <label>:40:                                     ; preds = %21, %2, %22
  %41 = phi %struct.pbuf* [ %23, %22 ], [ %0, %2 ], [ %0, %21 ], !dbg !1840
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1841
  ret %struct.pbuf* %41, !dbg !1841
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_clone(i32, i32, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1774 {
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1845
  %5 = load i16, i16* %4, align 8, !dbg !1845, !tbaa !254
  %6 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %5, i32 %1) #9, !dbg !1846
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1848
  br i1 %7, label %10, label %8, !dbg !1850

; <label>:8:                                      ; preds = %3
  %9 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %6, %struct.pbuf* nonnull %2) #9, !dbg !1851
  br label %10, !dbg !1853

; <label>:10:                                     ; preds = %3, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1854
  ret %struct.pbuf* %6, !dbg !1854
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1855 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1880
  br i1 %3, label %15, label %4, !dbg !1881

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1882
  %8 = load i16, i16* %7, align 2, !dbg !1882, !tbaa !257
  %9 = icmp ult i16 %6, %8, !dbg !1883
  br i1 %9, label %16, label %10, !dbg !1884

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1885
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1886
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1886, !tbaa !243
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1880
  br i1 %14, label %15, label %4, !dbg !1881, !llvm.loop !1441

; <label>:15:                                     ; preds = %10, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  br label %22, !dbg !1890

; <label>:16:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1887
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1892
  %18 = load i8*, i8** %17, align 8, !dbg !1892, !tbaa !251
  %19 = zext i16 %6 to i64, !dbg !1895
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1895
  %21 = load i8, i8* %20, align 1, !dbg !1895, !tbaa !303
  br label %22, !dbg !1890

; <label>:22:                                     ; preds = %15, %16
  %23 = phi i8 [ %21, %16 ], [ 0, %15 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1896
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1897
  ret i8 %23, !dbg !1897
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pbuf_try_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1865 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1905
  br i1 %3, label %15, label %4, !dbg !1906

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1907
  %8 = load i16, i16* %7, align 2, !dbg !1907, !tbaa !257
  %9 = icmp ult i16 %6, %8, !dbg !1908
  br i1 %9, label %16, label %10, !dbg !1909

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1910
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1911
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1911, !tbaa !243
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1905
  br i1 %14, label %15, label %4, !dbg !1906, !llvm.loop !1441

; <label>:15:                                     ; preds = %10, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  br label %23, !dbg !1914

; <label>:16:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1916
  %18 = load i8*, i8** %17, align 8, !dbg !1916, !tbaa !251
  %19 = zext i16 %6 to i64, !dbg !1917
  %20 = getelementptr inbounds i8, i8* %18, i64 %19, !dbg !1917
  %21 = load i8, i8* %20, align 1, !dbg !1917, !tbaa !303
  %22 = zext i8 %21 to i32, !dbg !1917
  br label %23, !dbg !1918

; <label>:23:                                     ; preds = %15, %16
  %24 = phi i32 [ %22, %16 ], [ -1, %15 ], !dbg !1919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1920
  ret i32 %24, !dbg !1920
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_put_at(%struct.pbuf* readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1921 {
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1941
  br i1 %4, label %16, label %5, !dbg !1942

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1943
  %9 = load i16, i16* %8, align 2, !dbg !1943, !tbaa !257
  %10 = icmp ult i16 %7, %9, !dbg !1944
  br i1 %10, label %17, label %11, !dbg !1945

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1946
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1947
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1947, !tbaa !243
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1941
  br i1 %15, label %16, label %5, !dbg !1942, !llvm.loop !1441

; <label>:16:                                     ; preds = %11, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  br label %22, !dbg !1952

; <label>:17:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1948
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1950
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 1, !dbg !1955
  %19 = load i8*, i8** %18, align 8, !dbg !1955, !tbaa !251
  %20 = zext i16 %7 to i64, !dbg !1957
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !1957
  store i8 %2, i8* %21, align 1, !dbg !1958, !tbaa !303
  br label %22, !dbg !1959

; <label>:22:                                     ; preds = %16, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1960
  ret void, !dbg !1960
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_memcmp(%struct.pbuf* readonly, i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1961 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1983
  %6 = load i16, i16* %5, align 8, !dbg !1983, !tbaa !254
  %7 = zext i16 %6 to i32, !dbg !1985
  %8 = zext i16 %1 to i32, !dbg !1986
  %9 = zext i16 %3 to i32, !dbg !1987
  %10 = add nuw nsw i32 %9, %8, !dbg !1988
  %11 = icmp ugt i32 %10, %7, !dbg !1989
  br i1 %11, label %66, label %12, !dbg !1990

; <label>:12:                                     ; preds = %4, %18
  %13 = phi i16 [ %19, %18 ], [ %1, %4 ]
  %14 = phi %struct.pbuf* [ %21, %18 ], [ %0, %4 ]
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !1991
  %16 = load i16, i16* %15, align 2, !dbg !1991, !tbaa !257
  %17 = icmp ult i16 %13, %16, !dbg !1992
  br i1 %17, label %23, label %18, !dbg !1993

; <label>:18:                                     ; preds = %12
  %19 = sub i16 %13, %16, !dbg !1994
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !1996
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !1996, !tbaa !243
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !1997
  br i1 %22, label %23, label %12, !dbg !1998, !llvm.loop !1999

; <label>:23:                                     ; preds = %18, %12
  %24 = phi %struct.pbuf* [ null, %18 ], [ %14, %12 ], !dbg !2001
  %25 = phi i16 [ %19, %18 ], [ %13, %12 ], !dbg !2001
  %26 = phi i1 [ true, %18 ], [ false, %12 ], !dbg !1997
  %27 = icmp eq i16 %3, 0, !dbg !2003
  br i1 %27, label %66, label %31, !dbg !2004

; <label>:28:                                     ; preds = %54
  %29 = zext i16 %60 to i32, !dbg !2005
  %30 = icmp ult i16 %60, %3, !dbg !2003
  br i1 %30, label %31, label %66, !dbg !2004, !llvm.loop !2006

; <label>:31:                                     ; preds = %23, %28
  %32 = phi i32 [ %29, %28 ], [ 0, %23 ]
  %33 = phi i16 [ %60, %28 ], [ 0, %23 ]
  br i1 %26, label %47, label %34, !dbg !2015

; <label>:34:                                     ; preds = %31
  %35 = add i16 %33, %25, !dbg !2016
  br label %36, !dbg !2021

; <label>:36:                                     ; preds = %34, %42
  %37 = phi %struct.pbuf* [ %45, %42 ], [ %24, %34 ]
  %38 = phi i16 [ %43, %42 ], [ %35, %34 ]
  %39 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 3, !dbg !2021
  %40 = load i16, i16* %39, align 2, !dbg !2021, !tbaa !257
  %41 = icmp ult i16 %38, %40, !dbg !2022
  br i1 %41, label %48, label %42, !dbg !2023

; <label>:42:                                     ; preds = %36
  %43 = sub i16 %38, %40, !dbg !2024
  %44 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 0, !dbg !2025
  %45 = load %struct.pbuf*, %struct.pbuf** %44, align 8, !dbg !2025, !tbaa !243
  %46 = icmp eq %struct.pbuf* %45, null, !dbg !2026
  br i1 %46, label %47, label %36, !dbg !2015, !llvm.loop !1441

; <label>:47:                                     ; preds = %42, %31
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  br label %54, !dbg !2030

; <label>:48:                                     ; preds = %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2027
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %37, i64 0, i32 1, !dbg !2032
  %50 = load i8*, i8** %49, align 8, !dbg !2032, !tbaa !251
  %51 = zext i16 %38 to i64, !dbg !2033
  %52 = getelementptr inbounds i8, i8* %50, i64 %51, !dbg !2033
  %53 = load i8, i8* %52, align 1, !dbg !2033, !tbaa !303
  br label %54, !dbg !2030

; <label>:54:                                     ; preds = %47, %48
  %55 = phi i8 [ %53, %48 ], [ 0, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2035
  %56 = zext i16 %33 to i64, !dbg !2037
  %57 = getelementptr inbounds i8, i8* %2, i64 %56, !dbg !2037
  %58 = load i8, i8* %57, align 1, !dbg !2037, !tbaa !303
  %59 = icmp eq i8 %55, %58, !dbg !2039
  %60 = add nuw i16 %33, 1, !dbg !2041
  br i1 %59, label %28, label %61, !dbg !2042

; <label>:61:                                     ; preds = %54
  %62 = add nuw nsw i32 %32, 1, !dbg !2043
  %63 = icmp ult i32 %62, 65535, !dbg !2043
  %64 = select i1 %63, i32 %62, i32 65535, !dbg !2043
  %65 = trunc i32 %64 to i16, !dbg !2045
  br label %66

; <label>:66:                                     ; preds = %28, %23, %61, %4
  %67 = phi i16 [ %65, %61 ], [ -1, %4 ], [ 0, %23 ], [ 0, %28 ], !dbg !2046
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2047
  ret i16 %67, !dbg !2047
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_memfind(%struct.pbuf* nocapture readonly, i8* nocapture readonly, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2048 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2068
  %6 = load i16, i16* %5, align 8, !dbg !2068, !tbaa !254
  %7 = zext i16 %6 to i32, !dbg !2069
  %8 = zext i16 %2 to i32, !dbg !2070
  %9 = sub i16 %6, %2, !dbg !2071
  %10 = zext i16 %3 to i32, !dbg !2073
  %11 = add nuw nsw i32 %10, %8, !dbg !2074
  %12 = icmp ugt i32 %11, %7, !dbg !2075
  %13 = icmp ult i16 %9, %3, !dbg !2076
  %14 = or i1 %12, %13, !dbg !2077
  br i1 %14, label %73, label %15, !dbg !2077

; <label>:15:                                     ; preds = %4
  %16 = icmp eq i16 %2, 0
  %17 = zext i16 %2 to i64, !dbg !2079
  br label %18, !dbg !2079

; <label>:18:                                     ; preds = %15, %70
  %19 = phi i16 [ %3, %15 ], [ %71, %70 ]
  %20 = zext i16 %19 to i32, !dbg !2087
  %21 = add nuw nsw i32 %20, %8, !dbg !2088
  %22 = icmp ugt i32 %21, %7, !dbg !2089
  br i1 %22, label %70, label %23, !dbg !2090

; <label>:23:                                     ; preds = %18, %29
  %24 = phi i16 [ %30, %29 ], [ %19, %18 ]
  %25 = phi %struct.pbuf* [ %32, %29 ], [ %0, %18 ]
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i64 0, i32 3, !dbg !2091
  %27 = load i16, i16* %26, align 2, !dbg !2091, !tbaa !257
  %28 = icmp ult i16 %24, %27, !dbg !2092
  br i1 %28, label %34, label %29, !dbg !2093

; <label>:29:                                     ; preds = %23
  %30 = sub i16 %24, %27, !dbg !2094
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %25, i64 0, i32 0, !dbg !2095
  %32 = load %struct.pbuf*, %struct.pbuf** %31, align 8, !dbg !2095, !tbaa !243
  %33 = icmp eq %struct.pbuf* %32, null, !dbg !2096
  br i1 %33, label %34, label %23, !dbg !2097, !llvm.loop !1999

; <label>:34:                                     ; preds = %29, %23
  %35 = phi %struct.pbuf* [ null, %29 ], [ %25, %23 ], !dbg !2098
  %36 = phi i16 [ %30, %29 ], [ %24, %23 ], !dbg !2098
  %37 = phi i1 [ true, %29 ], [ false, %23 ], !dbg !2096
  br i1 %16, label %69, label %40, !dbg !2100

; <label>:38:                                     ; preds = %63
  %39 = icmp ult i64 %68, %17, !dbg !2101
  br i1 %39, label %40, label %69, !dbg !2100, !llvm.loop !2006

; <label>:40:                                     ; preds = %34, %38
  %41 = phi i64 [ %68, %38 ], [ 0, %34 ]
  br i1 %37, label %56, label %42, !dbg !2109

; <label>:42:                                     ; preds = %40
  %43 = trunc i64 %41 to i16, !dbg !2110
  %44 = add i16 %36, %43, !dbg !2110
  br label %45, !dbg !2115

; <label>:45:                                     ; preds = %51, %42
  %46 = phi %struct.pbuf* [ %54, %51 ], [ %35, %42 ]
  %47 = phi i16 [ %52, %51 ], [ %44, %42 ]
  %48 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 3, !dbg !2115
  %49 = load i16, i16* %48, align 2, !dbg !2115, !tbaa !257
  %50 = icmp ult i16 %47, %49, !dbg !2116
  br i1 %50, label %57, label %51, !dbg !2117

; <label>:51:                                     ; preds = %45
  %52 = sub i16 %47, %49, !dbg !2118
  %53 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 0, !dbg !2119
  %54 = load %struct.pbuf*, %struct.pbuf** %53, align 8, !dbg !2119, !tbaa !243
  %55 = icmp eq %struct.pbuf* %54, null, !dbg !2120
  br i1 %55, label %56, label %45, !dbg !2109, !llvm.loop !1441

; <label>:56:                                     ; preds = %51, %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  br label %63, !dbg !2124

; <label>:57:                                     ; preds = %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2121
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 1, !dbg !2126
  %59 = load i8*, i8** %58, align 8, !dbg !2126, !tbaa !251
  %60 = zext i16 %47 to i64, !dbg !2127
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !2127
  %62 = load i8, i8* %61, align 1, !dbg !2127, !tbaa !303
  br label %63, !dbg !2124

; <label>:63:                                     ; preds = %57, %56
  %64 = phi i8 [ %62, %57 ], [ 0, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2128
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2129
  %65 = getelementptr inbounds i8, i8* %1, i64 %41, !dbg !2131
  %66 = load i8, i8* %65, align 1, !dbg !2131, !tbaa !303
  %67 = icmp eq i8 %64, %66, !dbg !2133
  %68 = add nuw nsw i64 %41, 1, !dbg !2134
  br i1 %67, label %38, label %70, !dbg !2135

; <label>:69:                                     ; preds = %34, %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  br label %73

; <label>:70:                                     ; preds = %63, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2136
  %71 = add i16 %19, 1, !dbg !2137
  %72 = icmp ugt i16 %71, %9, !dbg !2076
  br i1 %72, label %73, label %18, !dbg !2079, !llvm.loop !2138

; <label>:73:                                     ; preds = %70, %69, %4
  %74 = phi i16 [ -1, %4 ], [ %19, %69 ], [ -1, %70 ], !dbg !2140
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2141
  ret i16 %74, !dbg !2141
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_strstr(%struct.pbuf* nocapture readonly, i8*) local_unnamed_addr #0 !dbg !2142 {
  %3 = icmp eq i8* %1, null, !dbg !2151
  br i1 %3, label %82, label %4, !dbg !2153

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1, !dbg !2154, !tbaa !303
  %6 = icmp eq i8 %5, 0, !dbg !2155
  br i1 %6, label %82, label %7, !dbg !2156

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2157
  %9 = load i16, i16* %8, align 8, !dbg !2157, !tbaa !254
  %10 = icmp eq i16 %9, -1, !dbg !2158
  br i1 %10, label %82, label %11, !dbg !2159

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @strlen(i8* nonnull %1) #7, !dbg !2160
  %13 = icmp ugt i64 %12, 65534, !dbg !2162
  br i1 %13, label %82, label %14, !dbg !2164

; <label>:14:                                     ; preds = %11
  %15 = trunc i64 %12 to i16, !dbg !2165
  %16 = load i16, i16* %8, align 8, !dbg !2171, !tbaa !254
  %17 = zext i16 %16 to i32, !dbg !2172
  %18 = trunc i64 %12 to i32, !dbg !2173
  %19 = and i32 %18, 65535, !dbg !2173
  %20 = sub i16 %16, %15, !dbg !2174
  %21 = icmp ugt i32 %19, %17, !dbg !2176
  br i1 %21, label %80, label %22, !dbg !2178

; <label>:22:                                     ; preds = %14
  %23 = icmp eq i16 %15, 0
  %24 = and i64 %12, 65535, !dbg !2179
  br label %25, !dbg !2179

; <label>:25:                                     ; preds = %77, %22
  %26 = phi i16 [ 0, %22 ], [ %78, %77 ]
  %27 = zext i16 %26 to i32, !dbg !2187
  %28 = add nuw nsw i32 %19, %27, !dbg !2188
  %29 = icmp ugt i32 %28, %17, !dbg !2189
  br i1 %29, label %77, label %30, !dbg !2190

; <label>:30:                                     ; preds = %25, %36
  %31 = phi i16 [ %37, %36 ], [ %26, %25 ]
  %32 = phi %struct.pbuf* [ %39, %36 ], [ %0, %25 ]
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 3, !dbg !2191
  %34 = load i16, i16* %33, align 2, !dbg !2191, !tbaa !257
  %35 = icmp ult i16 %31, %34, !dbg !2192
  br i1 %35, label %41, label %36, !dbg !2193

; <label>:36:                                     ; preds = %30
  %37 = sub i16 %31, %34, !dbg !2194
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %32, i64 0, i32 0, !dbg !2195
  %39 = load %struct.pbuf*, %struct.pbuf** %38, align 8, !dbg !2195, !tbaa !243
  %40 = icmp eq %struct.pbuf* %39, null, !dbg !2196
  br i1 %40, label %41, label %30, !dbg !2197, !llvm.loop !1999

; <label>:41:                                     ; preds = %36, %30
  %42 = phi %struct.pbuf* [ null, %36 ], [ %32, %30 ], !dbg !2198
  %43 = phi i16 [ %37, %36 ], [ %31, %30 ], !dbg !2198
  %44 = phi i1 [ true, %36 ], [ false, %30 ], !dbg !2196
  br i1 %23, label %76, label %47, !dbg !2200

; <label>:45:                                     ; preds = %70
  %46 = icmp ult i64 %75, %24, !dbg !2201
  br i1 %46, label %47, label %76, !dbg !2200, !llvm.loop !2006

; <label>:47:                                     ; preds = %41, %45
  %48 = phi i64 [ %75, %45 ], [ 0, %41 ]
  br i1 %44, label %63, label %49, !dbg !2209

; <label>:49:                                     ; preds = %47
  %50 = trunc i64 %48 to i16, !dbg !2210
  %51 = add i16 %43, %50, !dbg !2210
  br label %52, !dbg !2215

; <label>:52:                                     ; preds = %58, %49
  %53 = phi %struct.pbuf* [ %61, %58 ], [ %42, %49 ]
  %54 = phi i16 [ %59, %58 ], [ %51, %49 ]
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 3, !dbg !2215
  %56 = load i16, i16* %55, align 2, !dbg !2215, !tbaa !257
  %57 = icmp ult i16 %54, %56, !dbg !2216
  br i1 %57, label %64, label %58, !dbg !2217

; <label>:58:                                     ; preds = %52
  %59 = sub i16 %54, %56, !dbg !2218
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 0, !dbg !2219
  %61 = load %struct.pbuf*, %struct.pbuf** %60, align 8, !dbg !2219, !tbaa !243
  %62 = icmp eq %struct.pbuf* %61, null, !dbg !2220
  br i1 %62, label %63, label %52, !dbg !2209, !llvm.loop !1441

; <label>:63:                                     ; preds = %58, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  br label %70, !dbg !2224

; <label>:64:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2221
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %53, i64 0, i32 1, !dbg !2226
  %66 = load i8*, i8** %65, align 8, !dbg !2226, !tbaa !251
  %67 = zext i16 %54 to i64, !dbg !2227
  %68 = getelementptr inbounds i8, i8* %66, i64 %67, !dbg !2227
  %69 = load i8, i8* %68, align 1, !dbg !2227, !tbaa !303
  br label %70, !dbg !2224

; <label>:70:                                     ; preds = %64, %63
  %71 = phi i8 [ %69, %64 ], [ 0, %63 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2228
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2229
  %72 = getelementptr inbounds i8, i8* %1, i64 %48, !dbg !2231
  %73 = load i8, i8* %72, align 1, !dbg !2231, !tbaa !303
  %74 = icmp eq i8 %71, %73, !dbg !2233
  %75 = add nuw nsw i64 %48, 1, !dbg !2234
  br i1 %74, label %45, label %77, !dbg !2235

; <label>:76:                                     ; preds = %41, %45
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  br label %80

; <label>:77:                                     ; preds = %70, %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2236
  %78 = add i16 %26, 1, !dbg !2237
  %79 = icmp ugt i16 %78, %20, !dbg !2238
  br i1 %79, label %80, label %25, !dbg !2179, !llvm.loop !2138

; <label>:80:                                     ; preds = %77, %14, %76
  %81 = phi i16 [ -1, %14 ], [ %26, %76 ], [ -1, %77 ], !dbg !2239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2240
  br label %82, !dbg !2241

; <label>:82:                                     ; preds = %11, %2, %4, %7, %80
  %83 = phi i16 [ %81, %80 ], [ -1, %7 ], [ -1, %4 ], [ -1, %2 ], [ -1, %11 ], !dbg !2242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2243
  ret i16 %83, !dbg !2243
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_try_callback(void (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @pbuf_free_ooseq_callback(i8* nocapture readnone) #0 !dbg !2244 {
  %2 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !2250
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !2409, !tbaa !303
  tail call void @ukplat_lcpu_restore_irqf(i64 %2) #7, !dbg !2409
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2411, !tbaa !1510
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !2414
  br i1 %4, label %15, label %5, !dbg !2415

; <label>:5:                                      ; preds = %1, %11
  %6 = phi %struct.tcp_pcb* [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 46, !dbg !2416
  %8 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8, !dbg !2416, !tbaa !2419
  %9 = icmp eq %struct.tcp_seg* %8, null, !dbg !2423
  br i1 %9, label %11, label %10, !dbg !2424

; <label>:10:                                     ; preds = %5
  tail call void @tcp_free_ooseq(%struct.tcp_pcb* nonnull %6) #7, !dbg !2425
  br label %15, !dbg !2427

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 6, !dbg !2428
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !2411, !tbaa !1510
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !2414
  br i1 %14, label %15, label %5, !dbg !2415, !llvm.loop !2429

; <label>:15:                                     ; preds = %11, %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2432
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2433
  ret void, !dbg !2433
}

; Function Attrs: noredzone
declare dso_local void @tcp_free_ooseq(%struct.tcp_pcb*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone nounwind }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone }

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
!271 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !235)
!272 = !DILocation(line: 340, column: 3, scope: !197, inlinedAt: !205)
!273 = !DILocation(line: 0, scope: !197, inlinedAt: !205)
!274 = !DILocation(line: 341, column: 1, scope: !197, inlinedAt: !205)
!275 = !DILocation(line: 226, column: 16, scope: !171)
!276 = !DILocation(line: 234, column: 7, scope: !184)
!277 = !DILocation(line: 227, column: 18, scope: !171)
!278 = !DILocation(line: 227, column: 9, scope: !171)
!279 = !DILocation(line: 236, column: 24, scope: !183)
!280 = !DILocation(line: 237, column: 13, scope: !183)
!281 = !DILocation(line: 241, column: 7, scope: !183)
!282 = !DILocation(line: 239, column: 12, scope: !183)
!283 = !DILocation(line: 240, column: 15, scope: !183)
!284 = !DILocation(line: 238, column: 9, scope: !183)
!285 = !DILocation(line: 243, column: 28, scope: !188)
!286 = !DILocation(line: 243, column: 13, scope: !188)
!287 = !DILocation(line: 236, column: 20, scope: !183)
!288 = !DILocation(line: 244, column: 15, scope: !289)
!289 = distinct !DILexicalBlock(scope: !188, file: !3, line: 244, column: 13)
!290 = !DILocation(line: 244, column: 13, scope: !188)
!291 = !DILocation(line: 164, column: 3, scope: !292, inlinedAt: !299)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 164, column: 3)
!293 = distinct !DISubprogram(name: "pbuf_pool_is_empty", scope: !3, file: !3, line: 157, type: !294, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !296)
!294 = !DISubroutineType(types: !295)
!295 = !{null}
!296 = !{!297, !298}
!297 = !DILocalVariable(name: "queued", scope: !293, file: !3, line: 162, type: !100)
!298 = !DILocalVariable(name: "old_level", scope: !293, file: !3, line: 163, type: !110)
!299 = distinct !DILocation(line: 245, column: 11, scope: !300)
!300 = distinct !DILexicalBlock(scope: !289, file: !3, line: 244, column: 24)
!301 = !DILocation(line: 163, column: 3, scope: !293, inlinedAt: !299)
!302 = !DILocation(line: 165, column: 12, scope: !293, inlinedAt: !299)
!303 = !{!246, !246, i64 0}
!304 = !DILocation(line: 162, column: 8, scope: !293, inlinedAt: !299)
!305 = !DILocation(line: 166, column: 27, scope: !293, inlinedAt: !299)
!306 = !DILocation(line: 167, column: 3, scope: !293, inlinedAt: !299)
!307 = !DILocation(line: 169, column: 8, scope: !308, inlinedAt: !299)
!308 = distinct !DILexicalBlock(scope: !293, file: !3, line: 169, column: 7)
!309 = !DILocation(line: 169, column: 7, scope: !293, inlinedAt: !299)
!310 = !DILocation(line: 171, column: 5, scope: !311, inlinedAt: !299)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 171, column: 5)
!312 = distinct !DILexicalBlock(scope: !313, file: !3, line: 171, column: 5)
!313 = distinct !DILexicalBlock(scope: !308, file: !3, line: 169, column: 16)
!314 = !DILocation(line: 171, column: 5, scope: !312, inlinedAt: !299)
!315 = !DILocation(line: 171, column: 5, scope: !316, inlinedAt: !299)
!316 = distinct !DILexicalBlock(scope: !317, file: !3, line: 171, column: 5)
!317 = distinct !DILexicalBlock(scope: !311, file: !3, line: 171, column: 5)
!318 = !DILocation(line: 171, column: 5, scope: !317, inlinedAt: !299)
!319 = !DILocation(line: 174, column: 1, scope: !293, inlinedAt: !299)
!320 = !DILocation(line: 247, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !300, file: !3, line: 247, column: 15)
!322 = !DILocation(line: 247, column: 15, scope: !300)
!323 = !DILocation(line: 248, column: 13, scope: !324)
!324 = distinct !DILexicalBlock(scope: !321, file: !3, line: 247, column: 18)
!325 = !DILocation(line: 249, column: 11, scope: !324)
!326 = !DILocation(line: 253, column: 16, scope: !188)
!327 = !DILocation(line: 242, column: 15, scope: !188)
!328 = !DILocation(line: 254, column: 35, scope: !188)
!329 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !330)
!330 = distinct !DILocation(line: 254, column: 9, scope: !188)
!331 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !330)
!332 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !330)
!333 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !330)
!334 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !330)
!335 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !330)
!336 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !330)
!337 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !330)
!338 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !330)
!339 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !330)
!340 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !330)
!341 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !330)
!342 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !330)
!343 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !330)
!344 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !330)
!345 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !330)
!346 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !330)
!347 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !330)
!348 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !330)
!349 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !330)
!350 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !330)
!351 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !330)
!352 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !330)
!353 = !DILocation(line: 258, column: 9, scope: !354)
!354 = distinct !DILexicalBlock(scope: !355, file: !3, line: 258, column: 9)
!355 = distinct !DILexicalBlock(scope: !188, file: !3, line: 258, column: 9)
!356 = !DILocation(line: 258, column: 9, scope: !355)
!357 = !DILocation(line: 258, column: 9, scope: !358)
!358 = distinct !DILexicalBlock(scope: !359, file: !3, line: 258, column: 9)
!359 = distinct !DILexicalBlock(scope: !354, file: !3, line: 258, column: 9)
!360 = !DILocation(line: 258, column: 9, scope: !361)
!361 = distinct !DILexicalBlock(scope: !362, file: !3, line: 258, column: 9)
!362 = distinct !DILexicalBlock(scope: !363, file: !3, line: 258, column: 9)
!363 = distinct !DILexicalBlock(scope: !358, file: !3, line: 258, column: 9)
!364 = !DILocation(line: 260, column: 15, scope: !365)
!365 = distinct !DILexicalBlock(scope: !188, file: !3, line: 260, column: 13)
!366 = !DILocation(line: 260, column: 13, scope: !188)
!367 = !DILocation(line: 265, column: 22, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 263, column: 16)
!369 = !DILocation(line: 0, scope: !183)
!370 = !DILocation(line: 268, column: 35, scope: !188)
!371 = !DILocation(line: 270, column: 24, scope: !183)
!372 = !DILocation(line: 270, column: 7, scope: !188)
!373 = distinct !{!373, !281, !374}
!374 = !DILocation(line: 270, column: 27, scope: !183)
!375 = !DILocation(line: 274, column: 35, scope: !190)
!376 = !DILocation(line: 274, column: 27, scope: !190)
!377 = !DILocation(line: 274, column: 13, scope: !190)
!378 = !DILocation(line: 275, column: 85, scope: !190)
!379 = !DILocation(line: 275, column: 83, scope: !190)
!380 = !DILocation(line: 275, column: 18, scope: !190)
!381 = !DILocation(line: 278, column: 24, scope: !382)
!382 = distinct !DILexicalBlock(scope: !190, file: !3, line: 278, column: 11)
!383 = !DILocation(line: 279, column: 24, scope: !382)
!384 = !DILocation(line: 279, column: 22, scope: !382)
!385 = !DILocation(line: 278, column: 55, scope: !382)
!386 = !DILocation(line: 284, column: 26, scope: !190)
!387 = !DILocation(line: 285, column: 13, scope: !388)
!388 = distinct !DILexicalBlock(scope: !190, file: !3, line: 285, column: 11)
!389 = !DILocation(line: 285, column: 11, scope: !190)
!390 = !DILocation(line: 284, column: 11, scope: !190)
!391 = !DILocation(line: 288, column: 33, scope: !190)
!392 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !393)
!393 = distinct !DILocation(line: 288, column: 7, scope: !190)
!394 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !393)
!395 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !393)
!396 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !393)
!397 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !393)
!398 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !393)
!399 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !393)
!400 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !393)
!401 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !393)
!402 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !393)
!403 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !393)
!404 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !393)
!405 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !393)
!406 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !393)
!407 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !393)
!408 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !393)
!409 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !393)
!410 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !393)
!411 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !393)
!412 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !393)
!413 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !393)
!414 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !393)
!415 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !393)
!416 = !DILocation(line: 295, column: 7, scope: !417)
!417 = distinct !DILexicalBlock(scope: !418, file: !3, line: 295, column: 7)
!418 = distinct !DILexicalBlock(scope: !419, file: !3, line: 295, column: 7)
!419 = distinct !DILexicalBlock(scope: !420, file: !3, line: 295, column: 7)
!420 = distinct !DILexicalBlock(scope: !184, file: !3, line: 295, column: 7)
!421 = !DILocation(line: 295, column: 7, scope: !422)
!422 = distinct !DILexicalBlock(scope: !423, file: !3, line: 295, column: 7)
!423 = distinct !DILexicalBlock(scope: !424, file: !3, line: 295, column: 7)
!424 = distinct !DILexicalBlock(scope: !417, file: !3, line: 295, column: 7)
!425 = !DILocation(line: 0, scope: !300)
!426 = !DILocation(line: 300, column: 1, scope: !171)
!427 = !DILocation(line: 327, column: 28, scope: !197)
!428 = !DILocation(line: 327, column: 43, scope: !197)
!429 = !DILocation(line: 327, column: 61, scope: !197)
!430 = !DILocation(line: 330, column: 3, scope: !209)
!431 = !DILocation(line: 330, column: 3, scope: !212)
!432 = !DILocation(line: 330, column: 3, scope: !215)
!433 = !DILocation(line: 332, column: 22, scope: !197)
!434 = !DILocation(line: 333, column: 9, scope: !220)
!435 = !DILocation(line: 333, column: 7, scope: !197)
!436 = !DILocation(line: 332, column: 7, scope: !197)
!437 = !DILocation(line: 329, column: 16, scope: !197)
!438 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !439)
!439 = distinct !DILocation(line: 339, column: 3, scope: !197)
!440 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !439)
!441 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !439)
!442 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !439)
!443 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !439)
!444 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !439)
!445 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !439)
!446 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !439)
!447 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !439)
!448 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !439)
!449 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !439)
!450 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !439)
!451 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !439)
!452 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !439)
!453 = !DILocation(line: 185, column: 22, scope: !225, inlinedAt: !439)
!454 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !439)
!455 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !439)
!456 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !439)
!457 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !439)
!458 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !439)
!459 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !439)
!460 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !439)
!461 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !439)
!462 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !439)
!463 = !DILocation(line: 340, column: 3, scope: !197)
!464 = !DILocation(line: 0, scope: !197)
!465 = !DILocation(line: 341, column: 1, scope: !197)
!466 = distinct !DISubprogram(name: "pbuf_free", scope: !3, file: !3, line: 725, type: !467, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !469)
!467 = !DISubroutineType(types: !468)
!468 = !{!100, !92}
!469 = !{!470, !471, !472, !473, !474, !476, !477}
!470 = !DILocalVariable(name: "p", arg: 1, scope: !466, file: !3, line: 725, type: !92)
!471 = !DILocalVariable(name: "alloc_src", scope: !466, file: !3, line: 727, type: !100)
!472 = !DILocalVariable(name: "q", scope: !466, file: !3, line: 728, type: !92)
!473 = !DILocalVariable(name: "count", scope: !466, file: !3, line: 729, type: !100)
!474 = !DILocalVariable(name: "ref", scope: !475, file: !3, line: 746, type: !100)
!475 = distinct !DILexicalBlock(scope: !466, file: !3, line: 745, column: 21)
!476 = !DILocalVariable(name: "old_level", scope: !475, file: !3, line: 747, type: !110)
!477 = !DILocalVariable(name: "pc", scope: !478, file: !3, line: 766, type: !118)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 765, column: 50)
!479 = distinct !DILexicalBlock(scope: !480, file: !3, line: 765, column: 11)
!480 = distinct !DILexicalBlock(scope: !481, file: !3, line: 758, column: 19)
!481 = distinct !DILexicalBlock(scope: !475, file: !3, line: 758, column: 9)
!482 = !DILocation(line: 725, column: 24, scope: !466)
!483 = !DILocation(line: 731, column: 9, scope: !484)
!484 = distinct !DILexicalBlock(scope: !466, file: !3, line: 731, column: 7)
!485 = !DILocation(line: 731, column: 7, scope: !466)
!486 = !DILocation(line: 732, column: 5, scope: !487)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 732, column: 5)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 732, column: 5)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 732, column: 5)
!490 = distinct !DILexicalBlock(scope: !491, file: !3, line: 732, column: 5)
!491 = distinct !DILexicalBlock(scope: !484, file: !3, line: 731, column: 18)
!492 = !DILocation(line: 732, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 732, column: 5)
!494 = distinct !DILexicalBlock(scope: !495, file: !3, line: 732, column: 5)
!495 = distinct !DILexicalBlock(scope: !487, file: !3, line: 732, column: 5)
!496 = !DILocation(line: 729, column: 8, scope: !466)
!497 = !DILocation(line: 751, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !475, file: !3, line: 751, column: 5)
!499 = !DILocation(line: 747, column: 5, scope: !475)
!500 = !DILocation(line: 753, column: 5, scope: !501)
!501 = distinct !DILexicalBlock(scope: !502, file: !3, line: 753, column: 5)
!502 = distinct !DILexicalBlock(scope: !475, file: !3, line: 753, column: 5)
!503 = !DILocation(line: 753, column: 5, scope: !502)
!504 = !DILocation(line: 753, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !506, file: !3, line: 753, column: 5)
!506 = distinct !DILexicalBlock(scope: !501, file: !3, line: 753, column: 5)
!507 = !DILocation(line: 753, column: 5, scope: !508)
!508 = distinct !DILexicalBlock(scope: !509, file: !3, line: 753, column: 5)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 753, column: 5)
!510 = distinct !DILexicalBlock(scope: !505, file: !3, line: 753, column: 5)
!511 = !DILocation(line: 755, column: 11, scope: !475)
!512 = !DILocation(line: 746, column: 21, scope: !475)
!513 = !DILocation(line: 756, column: 5, scope: !475)
!514 = !DILocation(line: 758, column: 13, scope: !481)
!515 = !DILocation(line: 758, column: 9, scope: !475)
!516 = !DILocation(line: 760, column: 14, scope: !480)
!517 = !DILocation(line: 728, column: 16, scope: !466)
!518 = !DILocation(line: 765, column: 15, scope: !479)
!519 = !DILocation(line: 765, column: 21, scope: !479)
!520 = !DILocation(line: 765, column: 44, scope: !479)
!521 = !DILocation(line: 765, column: 11, scope: !480)
!522 = !DILocation(line: 766, column: 29, scope: !478)
!523 = !DILocation(line: 767, column: 9, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 767, column: 9)
!525 = distinct !DILexicalBlock(scope: !478, file: !3, line: 767, column: 9)
!526 = !{!527, !245, i64 24}
!527 = !{!"pbuf_custom", !244, i64 0, !245, i64 24}
!528 = !DILocation(line: 767, column: 9, scope: !525)
!529 = !DILocation(line: 767, column: 9, scope: !530)
!530 = distinct !DILexicalBlock(scope: !531, file: !3, line: 767, column: 9)
!531 = distinct !DILexicalBlock(scope: !524, file: !3, line: 767, column: 9)
!532 = !DILocation(line: 767, column: 9, scope: !533)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 767, column: 9)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 767, column: 9)
!535 = distinct !DILexicalBlock(scope: !530, file: !3, line: 767, column: 9)
!536 = !DILocation(line: 768, column: 9, scope: !478)
!537 = !DILocation(line: 769, column: 7, scope: !478)
!538 = !DILocation(line: 762, column: 19, scope: !480)
!539 = !DILocation(line: 727, column: 8, scope: !466)
!540 = !DILocation(line: 773, column: 13, scope: !541)
!541 = distinct !DILexicalBlock(scope: !479, file: !3, line: 771, column: 7)
!542 = !DILocation(line: 774, column: 37, scope: !543)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 773, column: 71)
!544 = distinct !DILexicalBlock(scope: !541, file: !3, line: 773, column: 13)
!545 = !DILocation(line: 774, column: 11, scope: !543)
!546 = !DILocation(line: 776, column: 9, scope: !543)
!547 = !DILocation(line: 777, column: 32, scope: !548)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 776, column: 73)
!549 = distinct !DILexicalBlock(scope: !544, file: !3, line: 776, column: 20)
!550 = !DILocation(line: 777, column: 11, scope: !548)
!551 = !DILocation(line: 779, column: 9, scope: !548)
!552 = !DILocation(line: 780, column: 20, scope: !553)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 779, column: 68)
!554 = distinct !DILexicalBlock(scope: !549, file: !3, line: 779, column: 20)
!555 = !DILocation(line: 780, column: 11, scope: !553)
!556 = !DILocation(line: 783, column: 11, scope: !557)
!557 = distinct !DILexicalBlock(scope: !558, file: !3, line: 783, column: 11)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 783, column: 11)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 783, column: 11)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 783, column: 11)
!561 = distinct !DILexicalBlock(scope: !554, file: !3, line: 781, column: 16)
!562 = !DILocation(line: 783, column: 11, scope: !563)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 783, column: 11)
!564 = distinct !DILexicalBlock(scope: !565, file: !3, line: 783, column: 11)
!565 = distinct !DILexicalBlock(scope: !557, file: !3, line: 783, column: 11)
!566 = !DILocation(line: 786, column: 12, scope: !480)
!567 = !DILocation(line: 745, column: 12, scope: !466)
!568 = !DILocation(line: 745, column: 3, scope: !466)
!569 = distinct !{!569, !568, !570}
!570 = !DILocation(line: 796, column: 3, scope: !466)
!571 = !DILocation(line: 800, column: 1, scope: !466)
!572 = !DILocation(line: 194, column: 43, scope: !139)
!573 = !DILocation(line: 196, column: 2, scope: !139)
!574 = !DILocation(line: 196, column: 10, scope: !139)
!575 = !DILocation(line: 197, column: 2, scope: !139)
!576 = !DILocation(line: 198, column: 2, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !140, line: 198, column: 2)
!578 = distinct !DILexicalBlock(scope: !139, file: !140, line: 198, column: 2)
!579 = !DILocation(line: 199, column: 2, scope: !139)
!580 = !DILocation(line: 200, column: 1, scope: !139)
!581 = distinct !DISubprogram(name: "pbuf_alloced_custom", scope: !3, file: !3, line: 363, type: !582, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !584)
!582 = !DISubroutineType(types: !583)
!583 = !{!92, !174, !84, !175, !118, !91, !84}
!584 = !{!585, !586, !587, !588, !589, !590, !591, !592}
!585 = !DILocalVariable(name: "l", arg: 1, scope: !581, file: !3, line: 363, type: !174)
!586 = !DILocalVariable(name: "length", arg: 2, scope: !581, file: !3, line: 363, type: !84)
!587 = !DILocalVariable(name: "type", arg: 3, scope: !581, file: !3, line: 363, type: !175)
!588 = !DILocalVariable(name: "p", arg: 4, scope: !581, file: !3, line: 363, type: !118)
!589 = !DILocalVariable(name: "payload_mem", arg: 5, scope: !581, file: !3, line: 364, type: !91)
!590 = !DILocalVariable(name: "payload_mem_len", arg: 6, scope: !581, file: !3, line: 364, type: !84)
!591 = !DILocalVariable(name: "offset", scope: !581, file: !3, line: 366, type: !84)
!592 = !DILocalVariable(name: "payload", scope: !581, file: !3, line: 367, type: !91)
!593 = !DILocation(line: 363, column: 32, scope: !581)
!594 = !DILocation(line: 363, column: 41, scope: !581)
!595 = !DILocation(line: 363, column: 59, scope: !581)
!596 = !DILocation(line: 363, column: 85, scope: !581)
!597 = !DILocation(line: 364, column: 27, scope: !581)
!598 = !DILocation(line: 364, column: 46, scope: !581)
!599 = !DILocation(line: 366, column: 9, scope: !581)
!600 = !DILocation(line: 370, column: 7, scope: !601)
!601 = distinct !DILexicalBlock(scope: !581, file: !3, line: 370, column: 7)
!602 = !DILocation(line: 370, column: 37, scope: !601)
!603 = !DILocation(line: 370, column: 35, scope: !601)
!604 = !DILocation(line: 370, column: 46, scope: !601)
!605 = !DILocation(line: 370, column: 44, scope: !601)
!606 = !DILocation(line: 370, column: 7, scope: !581)
!607 = !DILocation(line: 375, column: 19, scope: !608)
!608 = distinct !DILexicalBlock(scope: !581, file: !3, line: 375, column: 7)
!609 = !DILocation(line: 376, column: 35, scope: !610)
!610 = distinct !DILexicalBlock(scope: !608, file: !3, line: 375, column: 28)
!611 = !DILocation(line: 367, column: 9, scope: !581)
!612 = !DILocation(line: 375, column: 7, scope: !581)
!613 = !DILocation(line: 380, column: 30, scope: !581)
!614 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !615)
!615 = distinct !DILocation(line: 380, column: 3, scope: !581)
!616 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !615)
!617 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !615)
!618 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !615)
!619 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !615)
!620 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !615)
!621 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !615)
!622 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !615)
!623 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !615)
!624 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !615)
!625 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !615)
!626 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !615)
!627 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !615)
!628 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !615)
!629 = !DILocation(line: 185, column: 22, scope: !225, inlinedAt: !615)
!630 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !615)
!631 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !615)
!632 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !615)
!633 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !615)
!634 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !615)
!635 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !615)
!636 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !615)
!637 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !615)
!638 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !615)
!639 = !DILocation(line: 381, column: 3, scope: !581)
!640 = !DILocation(line: 0, scope: !581)
!641 = !DILocation(line: 382, column: 1, scope: !581)
!642 = distinct !DISubprogram(name: "pbuf_realloc", scope: !3, file: !3, line: 402, type: !643, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !645)
!643 = !DISubroutineType(types: !644)
!644 = !{null, !92, !84}
!645 = !{!646, !647, !648, !649, !650}
!646 = !DILocalVariable(name: "p", arg: 1, scope: !642, file: !3, line: 402, type: !92)
!647 = !DILocalVariable(name: "new_len", arg: 2, scope: !642, file: !3, line: 402, type: !84)
!648 = !DILocalVariable(name: "q", scope: !642, file: !3, line: 404, type: !92)
!649 = !DILocalVariable(name: "rem_len", scope: !642, file: !3, line: 405, type: !84)
!650 = !DILocalVariable(name: "shrink", scope: !642, file: !3, line: 406, type: !84)
!651 = !DILocation(line: 402, column: 27, scope: !642)
!652 = !DILocation(line: 402, column: 36, scope: !642)
!653 = !DILocation(line: 408, column: 3, scope: !654)
!654 = distinct !DILexicalBlock(scope: !655, file: !3, line: 408, column: 3)
!655 = distinct !DILexicalBlock(scope: !642, file: !3, line: 408, column: 3)
!656 = !DILocation(line: 408, column: 3, scope: !655)
!657 = !DILocation(line: 408, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !3, line: 408, column: 3)
!659 = distinct !DILexicalBlock(scope: !654, file: !3, line: 408, column: 3)
!660 = !DILocation(line: 408, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !662, file: !3, line: 408, column: 3)
!662 = distinct !DILexicalBlock(scope: !663, file: !3, line: 408, column: 3)
!663 = distinct !DILexicalBlock(scope: !658, file: !3, line: 408, column: 3)
!664 = !DILocation(line: 411, column: 21, scope: !665)
!665 = distinct !DILexicalBlock(scope: !642, file: !3, line: 411, column: 7)
!666 = !DILocation(line: 411, column: 15, scope: !665)
!667 = !DILocation(line: 411, column: 7, scope: !642)
!668 = !DILocation(line: 424, column: 23, scope: !642)
!669 = !DILocation(line: 0, scope: !670)
!670 = distinct !DILexicalBlock(scope: !642, file: !3, line: 424, column: 28)
!671 = !DILocation(line: 404, column: 16, scope: !642)
!672 = !DILocation(line: 405, column: 9, scope: !642)
!673 = !DILocation(line: 424, column: 18, scope: !642)
!674 = !DILocation(line: 424, column: 3, scope: !642)
!675 = !DILocation(line: 426, column: 31, scope: !670)
!676 = !DILocation(line: 428, column: 29, scope: !670)
!677 = !DILocation(line: 428, column: 37, scope: !670)
!678 = !DILocation(line: 428, column: 16, scope: !670)
!679 = !DILocation(line: 430, column: 12, scope: !670)
!680 = !DILocation(line: 431, column: 5, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 431, column: 5)
!682 = distinct !DILexicalBlock(scope: !670, file: !3, line: 431, column: 5)
!683 = !DILocation(line: 431, column: 5, scope: !682)
!684 = distinct !{!684, !674, !685}
!685 = !DILocation(line: 432, column: 3, scope: !642)
!686 = !DILocation(line: 431, column: 5, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 431, column: 5)
!688 = distinct !DILexicalBlock(scope: !681, file: !3, line: 431, column: 5)
!689 = !DILocation(line: 431, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !691, file: !3, line: 431, column: 5)
!691 = distinct !DILexicalBlock(scope: !692, file: !3, line: 431, column: 5)
!692 = distinct !DILexicalBlock(scope: !687, file: !3, line: 431, column: 5)
!693 = !DILocation(line: 438, column: 7, scope: !694)
!694 = distinct !DILexicalBlock(scope: !642, file: !3, line: 438, column: 7)
!695 = !DILocation(line: 438, column: 77, scope: !694)
!696 = !DILocation(line: 438, column: 65, scope: !694)
!697 = !DILocation(line: 440, column: 15, scope: !694)
!698 = !DILocation(line: 440, column: 21, scope: !694)
!699 = !DILocation(line: 440, column: 44, scope: !694)
!700 = !DILocation(line: 438, column: 7, scope: !642)
!701 = !DILocation(line: 444, column: 33, scope: !702)
!702 = distinct !DILexicalBlock(scope: !694, file: !3, line: 442, column: 8)
!703 = !DILocation(line: 444, column: 61, scope: !702)
!704 = !DILocation(line: 444, column: 69, scope: !702)
!705 = !DILocation(line: 444, column: 84, scope: !702)
!706 = !DILocation(line: 444, column: 82, scope: !702)
!707 = !DILocation(line: 444, column: 24, scope: !702)
!708 = !DILocation(line: 445, column: 5, scope: !709)
!709 = distinct !DILexicalBlock(scope: !710, file: !3, line: 445, column: 5)
!710 = distinct !DILexicalBlock(scope: !702, file: !3, line: 445, column: 5)
!711 = !DILocation(line: 445, column: 5, scope: !710)
!712 = !DILocation(line: 444, column: 9, scope: !702)
!713 = !DILocation(line: 448, column: 6, scope: !642)
!714 = !DILocation(line: 445, column: 5, scope: !715)
!715 = distinct !DILexicalBlock(scope: !716, file: !3, line: 445, column: 5)
!716 = distinct !DILexicalBlock(scope: !709, file: !3, line: 445, column: 5)
!717 = !DILocation(line: 445, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 445, column: 5)
!719 = distinct !DILexicalBlock(scope: !720, file: !3, line: 445, column: 5)
!720 = distinct !DILexicalBlock(scope: !715, file: !3, line: 445, column: 5)
!721 = !DILocation(line: 0, scope: !642)
!722 = !DILocation(line: 448, column: 10, scope: !642)
!723 = !DILocation(line: 449, column: 6, scope: !642)
!724 = !DILocation(line: 449, column: 14, scope: !642)
!725 = !DILocation(line: 452, column: 10, scope: !726)
!726 = distinct !DILexicalBlock(scope: !642, file: !3, line: 452, column: 7)
!727 = !DILocation(line: 452, column: 15, scope: !726)
!728 = !DILocation(line: 452, column: 7, scope: !642)
!729 = !DILocation(line: 454, column: 5, scope: !730)
!730 = distinct !DILexicalBlock(scope: !726, file: !3, line: 452, column: 24)
!731 = !DILocation(line: 455, column: 3, scope: !730)
!732 = !DILocation(line: 457, column: 11, scope: !642)
!733 = !DILocation(line: 459, column: 1, scope: !642)
!734 = distinct !DISubprogram(name: "pbuf_add_header", scope: !3, file: !3, line: 551, type: !735, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !737)
!735 = !DISubroutineType(types: !736)
!736 = !{!100, !92, !114}
!737 = !{!738, !739}
!738 = !DILocalVariable(name: "p", arg: 1, scope: !734, file: !3, line: 551, type: !92)
!739 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !734, file: !3, line: 551, type: !114)
!740 = !DILocation(line: 551, column: 30, scope: !734)
!741 = !DILocation(line: 551, column: 40, scope: !734)
!742 = !DILocalVariable(name: "p", arg: 1, scope: !743, file: !3, line: 473, type: !92)
!743 = distinct !DISubprogram(name: "pbuf_add_header_impl", scope: !3, file: !3, line: 473, type: !744, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{!100, !92, !114, !100}
!746 = !{!742, !747, !748, !749, !750, !751}
!747 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !743, file: !3, line: 473, type: !114)
!748 = !DILocalVariable(name: "force", arg: 3, scope: !743, file: !3, line: 473, type: !100)
!749 = !DILocalVariable(name: "type_internal", scope: !743, file: !3, line: 475, type: !84)
!750 = !DILocalVariable(name: "payload", scope: !743, file: !3, line: 476, type: !91)
!751 = !DILocalVariable(name: "increment_magnitude", scope: !743, file: !3, line: 477, type: !84)
!752 = !DILocation(line: 473, column: 35, scope: !743, inlinedAt: !753)
!753 = distinct !DILocation(line: 553, column: 10, scope: !734)
!754 = !DILocation(line: 473, column: 45, scope: !743, inlinedAt: !753)
!755 = !DILocation(line: 473, column: 73, scope: !743, inlinedAt: !753)
!756 = !DILocation(line: 479, column: 3, scope: !757, inlinedAt: !753)
!757 = distinct !DILexicalBlock(scope: !758, file: !3, line: 479, column: 3)
!758 = distinct !DILexicalBlock(scope: !743, file: !3, line: 479, column: 3)
!759 = !DILocation(line: 479, column: 3, scope: !758, inlinedAt: !753)
!760 = !DILocation(line: 479, column: 3, scope: !761, inlinedAt: !753)
!761 = distinct !DILexicalBlock(scope: !762, file: !3, line: 479, column: 3)
!762 = distinct !DILexicalBlock(scope: !757, file: !3, line: 479, column: 3)
!763 = !DILocation(line: 479, column: 3, scope: !764, inlinedAt: !753)
!764 = distinct !DILexicalBlock(scope: !765, file: !3, line: 479, column: 3)
!765 = distinct !DILexicalBlock(scope: !766, file: !3, line: 479, column: 3)
!766 = distinct !DILexicalBlock(scope: !761, file: !3, line: 479, column: 3)
!767 = !DILocation(line: 480, column: 45, scope: !768, inlinedAt: !753)
!768 = distinct !DILexicalBlock(scope: !743, file: !3, line: 480, column: 7)
!769 = !DILocation(line: 480, column: 19, scope: !768, inlinedAt: !753)
!770 = !DILocation(line: 483, column: 29, scope: !771, inlinedAt: !753)
!771 = distinct !DILexicalBlock(scope: !743, file: !3, line: 483, column: 7)
!772 = !DILocation(line: 483, column: 7, scope: !743, inlinedAt: !753)
!773 = !DILocation(line: 487, column: 25, scope: !743, inlinedAt: !753)
!774 = !DILocation(line: 489, column: 15, scope: !775, inlinedAt: !753)
!775 = distinct !DILexicalBlock(scope: !743, file: !3, line: 489, column: 7)
!776 = !DILocation(line: 477, column: 9, scope: !743, inlinedAt: !753)
!777 = !DILocation(line: 489, column: 40, scope: !775, inlinedAt: !753)
!778 = !DILocation(line: 489, column: 7, scope: !775, inlinedAt: !753)
!779 = !DILocation(line: 489, column: 49, scope: !775, inlinedAt: !753)
!780 = !DILocation(line: 489, column: 7, scope: !743, inlinedAt: !753)
!781 = !DILocation(line: 493, column: 22, scope: !743, inlinedAt: !753)
!782 = !DILocation(line: 496, column: 21, scope: !783, inlinedAt: !753)
!783 = distinct !DILexicalBlock(scope: !743, file: !3, line: 496, column: 7)
!784 = !DILocation(line: 496, column: 7, scope: !743, inlinedAt: !753)
!785 = !DILocation(line: 498, column: 26, scope: !786, inlinedAt: !753)
!786 = distinct !DILexicalBlock(scope: !783, file: !3, line: 496, column: 62)
!787 = !DILocation(line: 498, column: 34, scope: !786, inlinedAt: !753)
!788 = !DILocation(line: 476, column: 9, scope: !743, inlinedAt: !753)
!789 = !DILocation(line: 500, column: 37, scope: !790, inlinedAt: !753)
!790 = distinct !DILexicalBlock(scope: !786, file: !3, line: 500, column: 9)
!791 = !DILocation(line: 500, column: 25, scope: !790, inlinedAt: !753)
!792 = !DILocation(line: 500, column: 9, scope: !786, inlinedAt: !753)
!793 = !DILocation(line: 522, column: 14, scope: !743, inlinedAt: !753)
!794 = !DILocation(line: 523, column: 23, scope: !743, inlinedAt: !753)
!795 = !DILocation(line: 523, column: 12, scope: !743, inlinedAt: !753)
!796 = !DILocation(line: 523, column: 10, scope: !743, inlinedAt: !753)
!797 = !DILocation(line: 524, column: 14, scope: !743, inlinedAt: !753)
!798 = !DILocation(line: 527, column: 3, scope: !743, inlinedAt: !753)
!799 = !DILocation(line: 0, scope: !800, inlinedAt: !753)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 512, column: 12)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 510, column: 9)
!802 = distinct !DILexicalBlock(scope: !783, file: !3, line: 508, column: 10)
!803 = !DILocation(line: 528, column: 1, scope: !743, inlinedAt: !753)
!804 = !DILocation(line: 553, column: 3, scope: !734)
!805 = distinct !DISubprogram(name: "pbuf_add_header_force", scope: !3, file: !3, line: 561, type: !735, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !806)
!806 = !{!807, !808}
!807 = !DILocalVariable(name: "p", arg: 1, scope: !805, file: !3, line: 561, type: !92)
!808 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !805, file: !3, line: 561, type: !114)
!809 = !DILocation(line: 561, column: 36, scope: !805)
!810 = !DILocation(line: 561, column: 46, scope: !805)
!811 = !DILocation(line: 473, column: 35, scope: !743, inlinedAt: !812)
!812 = distinct !DILocation(line: 563, column: 10, scope: !805)
!813 = !DILocation(line: 473, column: 45, scope: !743, inlinedAt: !812)
!814 = !DILocation(line: 473, column: 73, scope: !743, inlinedAt: !812)
!815 = !DILocation(line: 479, column: 3, scope: !757, inlinedAt: !812)
!816 = !DILocation(line: 479, column: 3, scope: !758, inlinedAt: !812)
!817 = !DILocation(line: 479, column: 3, scope: !761, inlinedAt: !812)
!818 = !DILocation(line: 479, column: 3, scope: !764, inlinedAt: !812)
!819 = !DILocation(line: 480, column: 45, scope: !768, inlinedAt: !812)
!820 = !DILocation(line: 480, column: 19, scope: !768, inlinedAt: !812)
!821 = !DILocation(line: 483, column: 29, scope: !771, inlinedAt: !812)
!822 = !DILocation(line: 483, column: 7, scope: !743, inlinedAt: !812)
!823 = !DILocation(line: 487, column: 25, scope: !743, inlinedAt: !812)
!824 = !DILocation(line: 489, column: 15, scope: !775, inlinedAt: !812)
!825 = !DILocation(line: 477, column: 9, scope: !743, inlinedAt: !812)
!826 = !DILocation(line: 489, column: 40, scope: !775, inlinedAt: !812)
!827 = !DILocation(line: 489, column: 7, scope: !775, inlinedAt: !812)
!828 = !DILocation(line: 489, column: 49, scope: !775, inlinedAt: !812)
!829 = !DILocation(line: 489, column: 7, scope: !743, inlinedAt: !812)
!830 = !DILocation(line: 493, column: 22, scope: !743, inlinedAt: !812)
!831 = !DILocation(line: 496, column: 21, scope: !783, inlinedAt: !812)
!832 = !DILocation(line: 0, scope: !805)
!833 = !DILocation(line: 476, column: 9, scope: !743, inlinedAt: !812)
!834 = !DILocation(line: 496, column: 7, scope: !743, inlinedAt: !812)
!835 = !DILocation(line: 500, column: 37, scope: !790, inlinedAt: !812)
!836 = !DILocation(line: 500, column: 25, scope: !790, inlinedAt: !812)
!837 = !DILocation(line: 500, column: 9, scope: !786, inlinedAt: !812)
!838 = !DILocation(line: 522, column: 14, scope: !743, inlinedAt: !812)
!839 = !DILocation(line: 523, column: 23, scope: !743, inlinedAt: !812)
!840 = !DILocation(line: 523, column: 12, scope: !743, inlinedAt: !812)
!841 = !DILocation(line: 523, column: 10, scope: !743, inlinedAt: !812)
!842 = !DILocation(line: 524, column: 14, scope: !743, inlinedAt: !812)
!843 = !DILocation(line: 527, column: 3, scope: !743, inlinedAt: !812)
!844 = !DILocation(line: 0, scope: !800, inlinedAt: !812)
!845 = !DILocation(line: 528, column: 1, scope: !743, inlinedAt: !812)
!846 = !DILocation(line: 563, column: 3, scope: !805)
!847 = distinct !DISubprogram(name: "pbuf_remove_header", scope: !3, file: !3, line: 582, type: !735, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !848)
!848 = !{!849, !850, !851, !852}
!849 = !DILocalVariable(name: "p", arg: 1, scope: !847, file: !3, line: 582, type: !92)
!850 = !DILocalVariable(name: "header_size_decrement", arg: 2, scope: !847, file: !3, line: 582, type: !114)
!851 = !DILocalVariable(name: "payload", scope: !847, file: !3, line: 584, type: !91)
!852 = !DILocalVariable(name: "increment_magnitude", scope: !847, file: !3, line: 585, type: !84)
!853 = !DILocation(line: 582, column: 33, scope: !847)
!854 = !DILocation(line: 582, column: 43, scope: !847)
!855 = !DILocation(line: 587, column: 3, scope: !856)
!856 = distinct !DILexicalBlock(scope: !857, file: !3, line: 587, column: 3)
!857 = distinct !DILexicalBlock(scope: !847, file: !3, line: 587, column: 3)
!858 = !DILocation(line: 587, column: 3, scope: !857)
!859 = !DILocation(line: 587, column: 3, scope: !860)
!860 = distinct !DILexicalBlock(scope: !861, file: !3, line: 587, column: 3)
!861 = distinct !DILexicalBlock(scope: !856, file: !3, line: 587, column: 3)
!862 = !DILocation(line: 587, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 587, column: 3)
!864 = distinct !DILexicalBlock(scope: !865, file: !3, line: 587, column: 3)
!865 = distinct !DILexicalBlock(scope: !860, file: !3, line: 587, column: 3)
!866 = !DILocation(line: 588, column: 45, scope: !867)
!867 = distinct !DILexicalBlock(scope: !847, file: !3, line: 588, column: 7)
!868 = !DILocation(line: 588, column: 19, scope: !867)
!869 = !DILocation(line: 591, column: 29, scope: !870)
!870 = distinct !DILexicalBlock(scope: !847, file: !3, line: 591, column: 7)
!871 = !DILocation(line: 591, column: 7, scope: !847)
!872 = !DILocation(line: 595, column: 25, scope: !847)
!873 = !DILocation(line: 597, column: 3, scope: !874)
!874 = distinct !DILexicalBlock(scope: !875, file: !3, line: 597, column: 3)
!875 = distinct !DILexicalBlock(scope: !847, file: !3, line: 597, column: 3)
!876 = !DILocation(line: 585, column: 9, scope: !847)
!877 = !DILocation(line: 597, column: 3, scope: !875)
!878 = !DILocation(line: 597, column: 3, scope: !879)
!879 = distinct !DILexicalBlock(scope: !880, file: !3, line: 597, column: 3)
!880 = distinct !DILexicalBlock(scope: !874, file: !3, line: 597, column: 3)
!881 = !DILocation(line: 597, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !883, file: !3, line: 597, column: 3)
!883 = distinct !DILexicalBlock(scope: !884, file: !3, line: 597, column: 3)
!884 = distinct !DILexicalBlock(scope: !879, file: !3, line: 597, column: 3)
!885 = !DILocation(line: 600, column: 16, scope: !847)
!886 = !DILocation(line: 584, column: 9, scope: !847)
!887 = !DILocation(line: 604, column: 27, scope: !847)
!888 = !DILocation(line: 604, column: 35, scope: !847)
!889 = !DILocation(line: 604, column: 14, scope: !847)
!890 = !DILocation(line: 606, column: 12, scope: !847)
!891 = !DILocation(line: 606, column: 10, scope: !847)
!892 = !DILocation(line: 607, column: 27, scope: !847)
!893 = !DILocation(line: 607, column: 16, scope: !847)
!894 = !DILocation(line: 607, column: 14, scope: !847)
!895 = !DILocation(line: 612, column: 3, scope: !847)
!896 = !DILocation(line: 0, scope: !847)
!897 = !DILocation(line: 613, column: 1, scope: !847)
!898 = distinct !DISubprogram(name: "pbuf_header", scope: !3, file: !3, line: 646, type: !899, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !905)
!899 = !DISubroutineType(types: !900)
!900 = !{!100, !92, !901}
!901 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !85, line: 128, baseType: !902)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !87, line: 32, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !89, line: 55, baseType: !904)
!904 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!905 = !{!906, !907}
!906 = !DILocalVariable(name: "p", arg: 1, scope: !898, file: !3, line: 646, type: !92)
!907 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !898, file: !3, line: 646, type: !901)
!908 = !DILocation(line: 646, column: 26, scope: !898)
!909 = !DILocation(line: 646, column: 35, scope: !898)
!910 = !DILocation(line: 648, column: 10, scope: !898)
!911 = !DILocation(line: 648, column: 3, scope: !898)
!912 = distinct !DISubprogram(name: "pbuf_header_impl", scope: !3, file: !3, line: 616, type: !913, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !915)
!913 = !DISubroutineType(types: !914)
!914 = !{!100, !92, !901, !100}
!915 = !{!916, !917, !918}
!916 = !DILocalVariable(name: "p", arg: 1, scope: !912, file: !3, line: 616, type: !92)
!917 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !912, file: !3, line: 616, type: !901)
!918 = !DILocalVariable(name: "force", arg: 3, scope: !912, file: !3, line: 616, type: !100)
!919 = !DILocation(line: 616, column: 31, scope: !912)
!920 = !DILocation(line: 616, column: 40, scope: !912)
!921 = !DILocation(line: 616, column: 68, scope: !912)
!922 = !DILocation(line: 618, column: 29, scope: !923)
!923 = distinct !DILexicalBlock(scope: !912, file: !3, line: 618, column: 7)
!924 = !DILocation(line: 0, scope: !925)
!925 = distinct !DILexicalBlock(scope: !923, file: !3, line: 620, column: 10)
!926 = !DILocation(line: 618, column: 7, scope: !912)
!927 = !DILocation(line: 619, column: 43, scope: !928)
!928 = distinct !DILexicalBlock(scope: !923, file: !3, line: 618, column: 34)
!929 = !DILocation(line: 619, column: 12, scope: !928)
!930 = !DILocation(line: 619, column: 5, scope: !928)
!931 = !DILocation(line: 473, column: 35, scope: !743, inlinedAt: !932)
!932 = distinct !DILocation(line: 621, column: 12, scope: !925)
!933 = !DILocation(line: 473, column: 45, scope: !743, inlinedAt: !932)
!934 = !DILocation(line: 473, column: 73, scope: !743, inlinedAt: !932)
!935 = !DILocation(line: 479, column: 3, scope: !757, inlinedAt: !932)
!936 = !DILocation(line: 479, column: 3, scope: !758, inlinedAt: !932)
!937 = !DILocation(line: 479, column: 3, scope: !761, inlinedAt: !932)
!938 = !DILocation(line: 479, column: 3, scope: !764, inlinedAt: !932)
!939 = !DILocation(line: 483, column: 29, scope: !771, inlinedAt: !932)
!940 = !DILocation(line: 483, column: 7, scope: !743, inlinedAt: !932)
!941 = !DILocation(line: 489, column: 40, scope: !775, inlinedAt: !932)
!942 = !DILocation(line: 489, column: 7, scope: !775, inlinedAt: !932)
!943 = !DILocation(line: 489, column: 49, scope: !775, inlinedAt: !932)
!944 = !DILocation(line: 489, column: 7, scope: !743, inlinedAt: !932)
!945 = !DILocation(line: 493, column: 22, scope: !743, inlinedAt: !932)
!946 = !DILocation(line: 496, column: 21, scope: !783, inlinedAt: !932)
!947 = !DILocation(line: 496, column: 7, scope: !743, inlinedAt: !932)
!948 = !DILocation(line: 498, column: 26, scope: !786, inlinedAt: !932)
!949 = !DILocation(line: 498, column: 34, scope: !786, inlinedAt: !932)
!950 = !DILocation(line: 476, column: 9, scope: !743, inlinedAt: !932)
!951 = !DILocation(line: 500, column: 37, scope: !790, inlinedAt: !932)
!952 = !DILocation(line: 500, column: 25, scope: !790, inlinedAt: !932)
!953 = !DILocation(line: 500, column: 9, scope: !786, inlinedAt: !932)
!954 = !DILocation(line: 510, column: 9, scope: !801, inlinedAt: !932)
!955 = !DILocation(line: 510, column: 9, scope: !802, inlinedAt: !932)
!956 = !DILocation(line: 511, column: 28, scope: !957, inlinedAt: !932)
!957 = distinct !DILexicalBlock(scope: !801, file: !3, line: 510, column: 16)
!958 = !DILocation(line: 511, column: 36, scope: !957, inlinedAt: !932)
!959 = !DILocation(line: 522, column: 6, scope: !743, inlinedAt: !932)
!960 = !DILocation(line: 0, scope: !957, inlinedAt: !932)
!961 = !DILocation(line: 522, column: 14, scope: !743, inlinedAt: !932)
!962 = !DILocation(line: 523, column: 23, scope: !743, inlinedAt: !932)
!963 = !DILocation(line: 523, column: 12, scope: !743, inlinedAt: !932)
!964 = !DILocation(line: 523, column: 10, scope: !743, inlinedAt: !932)
!965 = !DILocation(line: 524, column: 14, scope: !743, inlinedAt: !932)
!966 = !DILocation(line: 527, column: 3, scope: !743, inlinedAt: !932)
!967 = !DILocation(line: 0, scope: !800, inlinedAt: !932)
!968 = !DILocation(line: 528, column: 1, scope: !743, inlinedAt: !932)
!969 = !DILocation(line: 621, column: 5, scope: !925)
!970 = !DILocation(line: 623, column: 1, scope: !912)
!971 = distinct !DISubprogram(name: "pbuf_header_force", scope: !3, file: !3, line: 656, type: !899, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !972)
!972 = !{!973, !974}
!973 = !DILocalVariable(name: "p", arg: 1, scope: !971, file: !3, line: 656, type: !92)
!974 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !971, file: !3, line: 656, type: !901)
!975 = !DILocation(line: 656, column: 32, scope: !971)
!976 = !DILocation(line: 656, column: 41, scope: !971)
!977 = !DILocation(line: 658, column: 10, scope: !971)
!978 = !DILocation(line: 658, column: 3, scope: !971)
!979 = distinct !DISubprogram(name: "pbuf_free_header", scope: !3, file: !3, line: 671, type: !980, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !982)
!980 = !DISubroutineType(types: !981)
!981 = !{!92, !92, !84}
!982 = !{!983, !984, !985, !986, !987}
!983 = !DILocalVariable(name: "q", arg: 1, scope: !979, file: !3, line: 671, type: !92)
!984 = !DILocalVariable(name: "size", arg: 2, scope: !979, file: !3, line: 671, type: !84)
!985 = !DILocalVariable(name: "p", scope: !979, file: !3, line: 673, type: !92)
!986 = !DILocalVariable(name: "free_left", scope: !979, file: !3, line: 674, type: !84)
!987 = !DILocalVariable(name: "f", scope: !988, file: !3, line: 677, type: !92)
!988 = distinct !DILexicalBlock(scope: !989, file: !3, line: 676, column: 30)
!989 = distinct !DILexicalBlock(scope: !990, file: !3, line: 676, column: 9)
!990 = distinct !DILexicalBlock(scope: !979, file: !3, line: 675, column: 26)
!991 = !DILocation(line: 671, column: 31, scope: !979)
!992 = !DILocation(line: 671, column: 40, scope: !979)
!993 = !DILocation(line: 673, column: 16, scope: !979)
!994 = !DILocation(line: 674, column: 9, scope: !979)
!995 = !DILocation(line: 675, column: 10, scope: !979)
!996 = !DILocation(line: 675, column: 20, scope: !979)
!997 = !DILocation(line: 675, column: 3, scope: !979)
!998 = !DILocation(line: 676, column: 25, scope: !989)
!999 = !DILocation(line: 676, column: 19, scope: !989)
!1000 = !DILocation(line: 676, column: 9, scope: !990)
!1001 = !DILocation(line: 683, column: 29, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !989, file: !3, line: 682, column: 12)
!1003 = !DILocation(line: 683, column: 7, scope: !1002)
!1004 = !DILocation(line: 677, column: 20, scope: !988)
!1005 = !DILocation(line: 678, column: 37, scope: !988)
!1006 = !DILocation(line: 679, column: 14, scope: !988)
!1007 = !DILocation(line: 680, column: 15, scope: !988)
!1008 = !DILocation(line: 681, column: 7, scope: !988)
!1009 = distinct !{!1009, !997, !1010}
!1010 = !DILocation(line: 686, column: 3, scope: !979)
!1011 = !DILocation(line: 0, scope: !988)
!1012 = !DILocation(line: 687, column: 3, scope: !979)
!1013 = distinct !DISubprogram(name: "pbuf_clen", scope: !3, file: !3, line: 809, type: !1014, isLocal: false, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1018)
!1014 = !DISubroutineType(types: !1015)
!1015 = !{!84, !1016}
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!1018 = !{!1019, !1020}
!1019 = !DILocalVariable(name: "p", arg: 1, scope: !1013, file: !3, line: 809, type: !1016)
!1020 = !DILocalVariable(name: "len", scope: !1013, file: !3, line: 811, type: !84)
!1021 = !DILocation(line: 809, column: 30, scope: !1013)
!1022 = !DILocation(line: 811, column: 9, scope: !1013)
!1023 = !DILocation(line: 814, column: 12, scope: !1013)
!1024 = !DILocation(line: 814, column: 3, scope: !1013)
!1025 = !DILocation(line: 815, column: 5, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1013, file: !3, line: 814, column: 21)
!1027 = !DILocation(line: 816, column: 12, scope: !1026)
!1028 = distinct !{!1028, !1024, !1029}
!1029 = !DILocation(line: 817, column: 3, scope: !1013)
!1030 = !DILocation(line: 0, scope: !1026)
!1031 = !DILocation(line: 818, column: 3, scope: !1013)
!1032 = distinct !DISubprogram(name: "pbuf_ref", scope: !3, file: !3, line: 829, type: !125, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1033)
!1033 = !{!1034, !1035}
!1034 = !DILocalVariable(name: "p", arg: 1, scope: !1032, file: !3, line: 829, type: !92)
!1035 = !DILocalVariable(name: "old_level", scope: !1036, file: !3, line: 833, type: !110)
!1036 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 833, column: 5)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 832, column: 18)
!1038 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 832, column: 7)
!1039 = !DILocation(line: 829, column: 23, scope: !1032)
!1040 = !DILocation(line: 832, column: 9, scope: !1038)
!1041 = !DILocation(line: 832, column: 7, scope: !1032)
!1042 = !DILocation(line: 833, column: 5, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1036, file: !3, line: 833, column: 5)
!1044 = !DILocation(line: 833, column: 5, scope: !1036)
!1045 = !DILocation(line: 834, column: 5, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 834, column: 5)
!1047 = distinct !DILexicalBlock(scope: !1037, file: !3, line: 834, column: 5)
!1048 = !DILocation(line: 834, column: 5, scope: !1047)
!1049 = !DILocation(line: 834, column: 5, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1051, file: !3, line: 834, column: 5)
!1051 = distinct !DILexicalBlock(scope: !1046, file: !3, line: 834, column: 5)
!1052 = !DILocation(line: 834, column: 5, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1054, file: !3, line: 834, column: 5)
!1054 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 834, column: 5)
!1055 = distinct !DILexicalBlock(scope: !1050, file: !3, line: 834, column: 5)
!1056 = !DILocation(line: 836, column: 1, scope: !1032)
!1057 = distinct !DISubprogram(name: "pbuf_cat", scope: !3, file: !3, line: 853, type: !1058, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1060)
!1058 = !DISubroutineType(types: !1059)
!1059 = !{null, !92, !92}
!1060 = !{!1061, !1062, !1063}
!1061 = !DILocalVariable(name: "h", arg: 1, scope: !1057, file: !3, line: 853, type: !92)
!1062 = !DILocalVariable(name: "t", arg: 2, scope: !1057, file: !3, line: 853, type: !92)
!1063 = !DILocalVariable(name: "p", scope: !1057, file: !3, line: 855, type: !92)
!1064 = !DILocation(line: 853, column: 23, scope: !1057)
!1065 = !DILocation(line: 853, column: 39, scope: !1057)
!1066 = !DILocation(line: 857, column: 3, scope: !1067)
!1067 = distinct !DILexicalBlock(scope: !1068, file: !3, line: 857, column: 3)
!1068 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 857, column: 3)
!1069 = !DILocation(line: 855, column: 16, scope: !1057)
!1070 = !DILocation(line: 861, column: 18, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !3, line: 861, column: 3)
!1072 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 861, column: 3)
!1073 = !DILocation(line: 861, column: 23, scope: !1071)
!1074 = !DILocation(line: 0, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1076, file: !3, line: 866, column: 3)
!1076 = distinct !DILexicalBlock(scope: !1057, file: !3, line: 866, column: 3)
!1077 = !DILocation(line: 861, column: 3, scope: !1072)
!1078 = !DILocation(line: 857, column: 3, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1080, file: !3, line: 857, column: 3)
!1080 = distinct !DILexicalBlock(scope: !1067, file: !3, line: 857, column: 3)
!1081 = !DILocation(line: 857, column: 3, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1083, file: !3, line: 857, column: 3)
!1083 = distinct !DILexicalBlock(scope: !1084, file: !3, line: 857, column: 3)
!1084 = distinct !DILexicalBlock(scope: !1079, file: !3, line: 857, column: 3)
!1085 = !DILocation(line: 863, column: 42, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1071, file: !3, line: 861, column: 45)
!1087 = !DILocation(line: 863, column: 37, scope: !1086)
!1088 = !DILocation(line: 863, column: 16, scope: !1086)
!1089 = distinct !{!1089, !1077, !1090}
!1090 = !DILocation(line: 864, column: 3, scope: !1072)
!1091 = !DILocation(line: 866, column: 3, scope: !1075)
!1092 = !DILocation(line: 0, scope: !1071)
!1093 = !DILocation(line: 866, column: 3, scope: !1076)
!1094 = !DILocation(line: 866, column: 3, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1096, file: !3, line: 866, column: 3)
!1096 = distinct !DILexicalBlock(scope: !1075, file: !3, line: 866, column: 3)
!1097 = !DILocation(line: 866, column: 3, scope: !1098)
!1098 = distinct !DILexicalBlock(scope: !1099, file: !3, line: 866, column: 3)
!1099 = distinct !DILexicalBlock(scope: !1100, file: !3, line: 866, column: 3)
!1100 = distinct !DILexicalBlock(scope: !1095, file: !3, line: 866, column: 3)
!1101 = !DILocation(line: 869, column: 40, scope: !1057)
!1102 = !DILocation(line: 869, column: 35, scope: !1057)
!1103 = !DILocation(line: 869, column: 14, scope: !1057)
!1104 = !DILocation(line: 871, column: 11, scope: !1057)
!1105 = !DILocation(line: 875, column: 1, scope: !1057)
!1106 = distinct !DISubprogram(name: "pbuf_chain", scope: !3, file: !3, line: 895, type: !1058, isLocal: false, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1107)
!1107 = !{!1108, !1109}
!1108 = !DILocalVariable(name: "h", arg: 1, scope: !1106, file: !3, line: 895, type: !92)
!1109 = !DILocalVariable(name: "t", arg: 2, scope: !1106, file: !3, line: 895, type: !92)
!1110 = !DILocation(line: 895, column: 25, scope: !1106)
!1111 = !DILocation(line: 895, column: 41, scope: !1106)
!1112 = !DILocation(line: 897, column: 3, scope: !1106)
!1113 = !DILocation(line: 829, column: 23, scope: !1032, inlinedAt: !1114)
!1114 = distinct !DILocation(line: 899, column: 3, scope: !1106)
!1115 = !DILocation(line: 832, column: 9, scope: !1038, inlinedAt: !1114)
!1116 = !DILocation(line: 832, column: 7, scope: !1032, inlinedAt: !1114)
!1117 = !DILocation(line: 833, column: 5, scope: !1043, inlinedAt: !1114)
!1118 = !DILocation(line: 833, column: 5, scope: !1036, inlinedAt: !1114)
!1119 = !DILocation(line: 834, column: 5, scope: !1046, inlinedAt: !1114)
!1120 = !DILocation(line: 834, column: 5, scope: !1047, inlinedAt: !1114)
!1121 = !DILocation(line: 834, column: 5, scope: !1050, inlinedAt: !1114)
!1122 = !DILocation(line: 834, column: 5, scope: !1053, inlinedAt: !1114)
!1123 = !DILocation(line: 836, column: 1, scope: !1032, inlinedAt: !1114)
!1124 = !DILocation(line: 901, column: 1, scope: !1106)
!1125 = distinct !DISubprogram(name: "pbuf_dechain", scope: !3, file: !3, line: 912, type: !1126, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1128)
!1126 = !DISubroutineType(types: !1127)
!1127 = !{!92, !92}
!1128 = !{!1129, !1130, !1131}
!1129 = !DILocalVariable(name: "p", arg: 1, scope: !1125, file: !3, line: 912, type: !92)
!1130 = !DILocalVariable(name: "q", scope: !1125, file: !3, line: 914, type: !92)
!1131 = !DILocalVariable(name: "tail_gone", scope: !1125, file: !3, line: 915, type: !100)
!1132 = !DILocation(line: 912, column: 27, scope: !1125)
!1133 = !DILocation(line: 915, column: 8, scope: !1125)
!1134 = !DILocation(line: 917, column: 10, scope: !1125)
!1135 = !DILocation(line: 914, column: 16, scope: !1125)
!1136 = !DILocation(line: 919, column: 9, scope: !1137)
!1137 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 919, column: 7)
!1138 = !DILocation(line: 919, column: 7, scope: !1125)
!1139 = !DILocation(line: 938, column: 3, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1141, file: !3, line: 938, column: 3)
!1141 = distinct !DILexicalBlock(scope: !1125, file: !3, line: 938, column: 3)
!1142 = !DILocation(line: 921, column: 5, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !3, line: 921, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1145, file: !3, line: 921, column: 5)
!1145 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 919, column: 18)
!1146 = !DILocation(line: 921, column: 5, scope: !1144)
!1147 = !DILocation(line: 921, column: 5, scope: !1148)
!1148 = distinct !DILexicalBlock(scope: !1149, file: !3, line: 921, column: 5)
!1149 = distinct !DILexicalBlock(scope: !1143, file: !3, line: 921, column: 5)
!1150 = !DILocation(line: 921, column: 5, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1152, file: !3, line: 921, column: 5)
!1152 = distinct !DILexicalBlock(scope: !1153, file: !3, line: 921, column: 5)
!1153 = distinct !DILexicalBlock(scope: !1148, file: !3, line: 921, column: 5)
!1154 = !DILocation(line: 925, column: 13, scope: !1145)
!1155 = !DILocation(line: 927, column: 16, scope: !1145)
!1156 = !DILocation(line: 930, column: 17, scope: !1145)
!1157 = !DILocation(line: 936, column: 3, scope: !1145)
!1158 = !DILocation(line: 938, column: 3, scope: !1141)
!1159 = !DILocation(line: 938, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 938, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1140, file: !3, line: 938, column: 3)
!1162 = !DILocation(line: 938, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 938, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 938, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 938, column: 3)
!1166 = !DILocation(line: 939, column: 22, scope: !1125)
!1167 = !DILocation(line: 939, column: 11, scope: !1125)
!1168 = !DILocation(line: 939, column: 3, scope: !1125)
!1169 = distinct !DISubprogram(name: "pbuf_copy", scope: !3, file: !3, line: 961, type: !1170, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1177)
!1170 = !DISubroutineType(types: !1171)
!1171 = !{!1172, !92, !1016}
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !49, line: 96, baseType: !1173)
!1173 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !85, line: 126, baseType: !1174)
!1174 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !87, line: 20, baseType: !1175)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !89, line: 41, baseType: !1176)
!1176 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1177 = !{!1178, !1179, !1180, !1181, !1182}
!1178 = !DILocalVariable(name: "p_to", arg: 1, scope: !1169, file: !3, line: 961, type: !92)
!1179 = !DILocalVariable(name: "p_from", arg: 2, scope: !1169, file: !3, line: 961, type: !1016)
!1180 = !DILocalVariable(name: "offset_to", scope: !1169, file: !3, line: 963, type: !114)
!1181 = !DILocalVariable(name: "offset_from", scope: !1169, file: !3, line: 963, type: !114)
!1182 = !DILocalVariable(name: "len", scope: !1169, file: !3, line: 963, type: !114)
!1183 = !DILocation(line: 961, column: 24, scope: !1169)
!1184 = !DILocation(line: 961, column: 49, scope: !1169)
!1185 = !DILocation(line: 963, column: 10, scope: !1169)
!1186 = !DILocation(line: 963, column: 25, scope: !1169)
!1187 = !DILocation(line: 969, column: 3, scope: !1188)
!1188 = distinct !DILexicalBlock(scope: !1189, file: !3, line: 969, column: 3)
!1189 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 969, column: 3)
!1190 = !DILocation(line: 969, column: 3, scope: !1189)
!1191 = !DILocation(line: 969, column: 3, scope: !1192)
!1192 = distinct !DILexicalBlock(scope: !1193, file: !3, line: 969, column: 3)
!1193 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 969, column: 3)
!1194 = !DILocation(line: 969, column: 3, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 969, column: 3)
!1196 = distinct !DILexicalBlock(scope: !1197, file: !3, line: 969, column: 3)
!1197 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 969, column: 3)
!1198 = !DILocation(line: 0, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1200, file: !3, line: 992, column: 33)
!1200 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 992, column: 9)
!1201 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 973, column: 6)
!1202 = !DILocation(line: 0, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1204, file: !3, line: 987, column: 37)
!1204 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 987, column: 9)
!1205 = !DILocation(line: 975, column: 16, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 975, column: 9)
!1207 = !DILocation(line: 975, column: 10, scope: !1206)
!1208 = !DILocation(line: 975, column: 20, scope: !1206)
!1209 = !DILocation(line: 975, column: 45, scope: !1206)
!1210 = !DILocation(line: 975, column: 37, scope: !1206)
!1211 = !DILocation(line: 975, column: 49, scope: !1206)
!1212 = !DILocation(line: 975, column: 33, scope: !1206)
!1213 = !DILocation(line: 963, column: 42, scope: !1169)
!1214 = !DILocation(line: 982, column: 5, scope: !1201)
!1215 = !DILocation(line: 983, column: 15, scope: !1201)
!1216 = !DILocation(line: 984, column: 17, scope: !1201)
!1217 = !DILocation(line: 985, column: 5, scope: !1218)
!1218 = distinct !DILexicalBlock(scope: !1219, file: !3, line: 985, column: 5)
!1219 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 985, column: 5)
!1220 = !DILocation(line: 985, column: 5, scope: !1219)
!1221 = !DILocation(line: 985, column: 5, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1223, file: !3, line: 985, column: 5)
!1223 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 985, column: 5)
!1224 = !DILocation(line: 985, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1226, file: !3, line: 985, column: 5)
!1226 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 985, column: 5)
!1227 = distinct !DILexicalBlock(scope: !1222, file: !3, line: 985, column: 5)
!1228 = !DILocation(line: 986, column: 5, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1230, file: !3, line: 986, column: 5)
!1230 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 986, column: 5)
!1231 = !DILocation(line: 986, column: 5, scope: !1230)
!1232 = !DILocation(line: 986, column: 5, scope: !1233)
!1233 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 986, column: 5)
!1234 = distinct !DILexicalBlock(scope: !1229, file: !3, line: 986, column: 5)
!1235 = !DILocation(line: 986, column: 5, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1237, file: !3, line: 986, column: 5)
!1237 = distinct !DILexicalBlock(scope: !1238, file: !3, line: 986, column: 5)
!1238 = distinct !DILexicalBlock(scope: !1233, file: !3, line: 986, column: 5)
!1239 = !DILocation(line: 987, column: 21, scope: !1204)
!1240 = !DILocation(line: 987, column: 9, scope: !1201)
!1241 = !DILocation(line: 990, column: 24, scope: !1203)
!1242 = !DILocation(line: 991, column: 5, scope: !1203)
!1243 = !DILocation(line: 0, scope: !1201)
!1244 = !DILocation(line: 992, column: 19, scope: !1200)
!1245 = !DILocation(line: 992, column: 9, scope: !1201)
!1246 = !DILocation(line: 995, column: 20, scope: !1199)
!1247 = !DILocation(line: 996, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1249, file: !3, line: 996, column: 7)
!1249 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 996, column: 7)
!1250 = !DILocation(line: 996, column: 7, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !3, line: 996, column: 7)
!1252 = distinct !DILexicalBlock(scope: !1248, file: !3, line: 996, column: 7)
!1253 = !DILocation(line: 996, column: 7, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 996, column: 7)
!1255 = distinct !DILexicalBlock(scope: !1256, file: !3, line: 996, column: 7)
!1256 = distinct !DILexicalBlock(scope: !1251, file: !3, line: 996, column: 7)
!1257 = !DILocation(line: 999, column: 17, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 999, column: 9)
!1259 = !DILocation(line: 999, column: 26, scope: !1258)
!1260 = !DILocation(line: 999, column: 38, scope: !1258)
!1261 = !DILocation(line: 999, column: 53, scope: !1258)
!1262 = !DILocation(line: 999, column: 42, scope: !1258)
!1263 = !DILocation(line: 999, column: 9, scope: !1201)
!1264 = !DILocation(line: 1001, column: 7, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1266, file: !3, line: 1001, column: 7)
!1266 = distinct !DILexicalBlock(scope: !1267, file: !3, line: 1001, column: 7)
!1267 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 999, column: 63)
!1268 = !DILocation(line: 1001, column: 7, scope: !1266)
!1269 = !DILocation(line: 1001, column: 7, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !3, line: 1001, column: 7)
!1271 = distinct !DILexicalBlock(scope: !1265, file: !3, line: 1001, column: 7)
!1272 = !DILocation(line: 1001, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !3, line: 1001, column: 7)
!1274 = distinct !DILexicalBlock(scope: !1275, file: !3, line: 1001, column: 7)
!1275 = distinct !DILexicalBlock(scope: !1270, file: !3, line: 1001, column: 7)
!1276 = !DILocation(line: 1004, column: 15, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1201, file: !3, line: 1004, column: 9)
!1278 = !DILocation(line: 1004, column: 24, scope: !1277)
!1279 = !DILocation(line: 1004, column: 34, scope: !1277)
!1280 = !DILocation(line: 1004, column: 47, scope: !1277)
!1281 = !DILocation(line: 1004, column: 38, scope: !1277)
!1282 = !DILocation(line: 1004, column: 9, scope: !1201)
!1283 = !DILocation(line: 1006, column: 7, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1285, file: !3, line: 1006, column: 7)
!1285 = distinct !DILexicalBlock(scope: !1286, file: !3, line: 1006, column: 7)
!1286 = distinct !DILexicalBlock(scope: !1277, file: !3, line: 1004, column: 57)
!1287 = !DILocation(line: 1006, column: 7, scope: !1285)
!1288 = !DILocation(line: 1006, column: 7, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1290, file: !3, line: 1006, column: 7)
!1290 = distinct !DILexicalBlock(scope: !1284, file: !3, line: 1006, column: 7)
!1291 = !DILocation(line: 1006, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1006, column: 7)
!1293 = distinct !DILexicalBlock(scope: !1294, file: !3, line: 1006, column: 7)
!1294 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1006, column: 7)
!1295 = !DILocation(line: 1009, column: 3, scope: !1201)
!1296 = distinct !{!1296, !1297, !1298}
!1297 = !DILocation(line: 973, column: 3, scope: !1169)
!1298 = !DILocation(line: 1009, column: 18, scope: !1169)
!1299 = !DILocation(line: 1012, column: 1, scope: !1169)
!1300 = distinct !DISubprogram(name: "pbuf_copy_partial", scope: !3, file: !3, line: 1027, type: !1301, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1303)
!1301 = !DISubroutineType(types: !1302)
!1302 = !{!84, !1016, !91, !84, !84}
!1303 = !{!1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311}
!1304 = !DILocalVariable(name: "buf", arg: 1, scope: !1300, file: !3, line: 1027, type: !1016)
!1305 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1300, file: !3, line: 1027, type: !91)
!1306 = !DILocalVariable(name: "len", arg: 3, scope: !1300, file: !3, line: 1027, type: !84)
!1307 = !DILocalVariable(name: "offset", arg: 4, scope: !1300, file: !3, line: 1027, type: !84)
!1308 = !DILocalVariable(name: "p", scope: !1300, file: !3, line: 1029, type: !1016)
!1309 = !DILocalVariable(name: "left", scope: !1300, file: !3, line: 1030, type: !84)
!1310 = !DILocalVariable(name: "buf_copy_len", scope: !1300, file: !3, line: 1031, type: !84)
!1311 = !DILocalVariable(name: "copied_total", scope: !1300, file: !3, line: 1032, type: !84)
!1312 = !DILocation(line: 1027, column: 38, scope: !1300)
!1313 = !DILocation(line: 1027, column: 49, scope: !1300)
!1314 = !DILocation(line: 1027, column: 64, scope: !1300)
!1315 = !DILocation(line: 1027, column: 75, scope: !1300)
!1316 = !DILocation(line: 1030, column: 9, scope: !1300)
!1317 = !DILocation(line: 1032, column: 9, scope: !1300)
!1318 = !DILocation(line: 1034, column: 3, scope: !1319)
!1319 = distinct !DILexicalBlock(scope: !1320, file: !3, line: 1034, column: 3)
!1320 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1034, column: 3)
!1321 = !DILocation(line: 1034, column: 3, scope: !1320)
!1322 = !DILocation(line: 1034, column: 3, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1324, file: !3, line: 1034, column: 3)
!1324 = distinct !DILexicalBlock(scope: !1319, file: !3, line: 1034, column: 3)
!1325 = !DILocation(line: 1034, column: 3, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1327, file: !3, line: 1034, column: 3)
!1327 = distinct !DILexicalBlock(scope: !1328, file: !3, line: 1034, column: 3)
!1328 = distinct !DILexicalBlock(scope: !1323, file: !3, line: 1034, column: 3)
!1329 = !DILocation(line: 1035, column: 3, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1331, file: !3, line: 1035, column: 3)
!1331 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1035, column: 3)
!1332 = !DILocation(line: 1035, column: 3, scope: !1331)
!1333 = !DILocation(line: 1029, column: 22, scope: !1300)
!1334 = !DILocation(line: 1038, column: 21, scope: !1335)
!1335 = distinct !DILexicalBlock(scope: !1336, file: !3, line: 1038, column: 3)
!1336 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1038, column: 3)
!1337 = !DILocation(line: 1038, column: 3, scope: !1336)
!1338 = !DILocation(line: 1035, column: 3, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1340, file: !3, line: 1035, column: 3)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !3, line: 1035, column: 3)
!1341 = !DILocation(line: 1035, column: 3, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1343, file: !3, line: 1035, column: 3)
!1343 = distinct !DILexicalBlock(scope: !1344, file: !3, line: 1035, column: 3)
!1344 = distinct !DILexicalBlock(scope: !1339, file: !3, line: 1035, column: 3)
!1345 = !DILocation(line: 1039, column: 17, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1347, file: !3, line: 1039, column: 9)
!1347 = distinct !DILexicalBlock(scope: !1335, file: !3, line: 1038, column: 53)
!1348 = !DILocation(line: 0, scope: !1346)
!1349 = !DILocation(line: 1039, column: 34, scope: !1346)
!1350 = !DILocation(line: 1039, column: 23, scope: !1346)
!1351 = !DILocation(line: 1041, column: 31, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1039, column: 46)
!1353 = !DILocation(line: 1042, column: 5, scope: !1352)
!1354 = !DILocation(line: 1044, column: 37, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1346, file: !3, line: 1042, column: 12)
!1356 = !DILocation(line: 1031, column: 9, scope: !1300)
!1357 = !DILocation(line: 1045, column: 24, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 1045, column: 11)
!1359 = !DILocation(line: 1045, column: 11, scope: !1355)
!1360 = !DILocation(line: 1050, column: 7, scope: !1355)
!1361 = !DILocation(line: 1051, column: 43, scope: !1355)
!1362 = !DILocation(line: 1052, column: 27, scope: !1355)
!1363 = !DILocation(line: 1053, column: 25, scope: !1355)
!1364 = !DILocation(line: 0, scope: !1355)
!1365 = !DILocation(line: 1038, column: 47, scope: !1335)
!1366 = !DILocation(line: 1038, column: 31, scope: !1335)
!1367 = !DILocation(line: 1038, column: 26, scope: !1335)
!1368 = distinct !{!1368, !1337, !1369}
!1369 = !DILocation(line: 1056, column: 3, scope: !1336)
!1370 = !DILocation(line: 1058, column: 1, scope: !1300)
!1371 = distinct !DISubprogram(name: "pbuf_get_contiguous", scope: !3, file: !3, line: 1075, type: !1372, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1374)
!1372 = !DISubroutineType(types: !1373)
!1373 = !{!91, !1016, !91, !114, !84, !84}
!1374 = !{!1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1375 = !DILocalVariable(name: "p", arg: 1, scope: !1371, file: !3, line: 1075, type: !1016)
!1376 = !DILocalVariable(name: "buffer", arg: 2, scope: !1371, file: !3, line: 1075, type: !91)
!1377 = !DILocalVariable(name: "bufsize", arg: 3, scope: !1371, file: !3, line: 1075, type: !114)
!1378 = !DILocalVariable(name: "len", arg: 4, scope: !1371, file: !3, line: 1075, type: !84)
!1379 = !DILocalVariable(name: "offset", arg: 5, scope: !1371, file: !3, line: 1075, type: !84)
!1380 = !DILocalVariable(name: "q", scope: !1371, file: !3, line: 1077, type: !1016)
!1381 = !DILocalVariable(name: "out_offset", scope: !1371, file: !3, line: 1078, type: !84)
!1382 = !DILocation(line: 1075, column: 40, scope: !1371)
!1383 = !DILocation(line: 1075, column: 49, scope: !1371)
!1384 = !DILocation(line: 1075, column: 64, scope: !1371)
!1385 = !DILocation(line: 1075, column: 79, scope: !1371)
!1386 = !DILocation(line: 1075, column: 90, scope: !1371)
!1387 = !DILocation(line: 1080, column: 3, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1080, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1080, column: 3)
!1390 = !DILocation(line: 1080, column: 3, scope: !1389)
!1391 = !DILocation(line: 1080, column: 3, scope: !1392)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1080, column: 3)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1080, column: 3)
!1394 = !DILocation(line: 1080, column: 3, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1396, file: !3, line: 1080, column: 3)
!1396 = distinct !DILexicalBlock(scope: !1397, file: !3, line: 1080, column: 3)
!1397 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1080, column: 3)
!1398 = !DILocation(line: 1081, column: 3, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1400, file: !3, line: 1081, column: 3)
!1400 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1081, column: 3)
!1401 = !DILocation(line: 1081, column: 3, scope: !1400)
!1402 = !DILocation(line: 1081, column: 3, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1404, file: !3, line: 1081, column: 3)
!1404 = distinct !DILexicalBlock(scope: !1399, file: !3, line: 1081, column: 3)
!1405 = !DILocation(line: 1081, column: 3, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !3, line: 1081, column: 3)
!1407 = distinct !DILexicalBlock(scope: !1408, file: !3, line: 1081, column: 3)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !3, line: 1081, column: 3)
!1409 = !DILocation(line: 1082, column: 3, scope: !1410)
!1410 = distinct !DILexicalBlock(scope: !1411, file: !3, line: 1082, column: 3)
!1411 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1082, column: 3)
!1412 = !DILocation(line: 1082, column: 3, scope: !1411)
!1413 = !DILocation(line: 1082, column: 3, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1415, file: !3, line: 1082, column: 3)
!1415 = distinct !DILexicalBlock(scope: !1410, file: !3, line: 1082, column: 3)
!1416 = !DILocation(line: 1082, column: 3, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !3, line: 1082, column: 3)
!1418 = distinct !DILexicalBlock(scope: !1419, file: !3, line: 1082, column: 3)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !3, line: 1082, column: 3)
!1420 = !DILocalVariable(name: "q", scope: !1421, file: !3, line: 1156, type: !1016)
!1421 = distinct !DISubprogram(name: "pbuf_skip_const", scope: !3, file: !3, line: 1153, type: !1422, isLocal: true, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1425)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1016, !1016, !84, !1424}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1425 = !{!1426, !1427, !1428, !1429, !1420}
!1426 = !DILocalVariable(name: "in", arg: 1, scope: !1421, file: !3, line: 1153, type: !1016)
!1427 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1421, file: !3, line: 1153, type: !84)
!1428 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1421, file: !3, line: 1153, type: !1424)
!1429 = !DILocalVariable(name: "offset_left", scope: !1421, file: !3, line: 1155, type: !84)
!1430 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1431)
!1431 = distinct !DILocation(line: 1084, column: 7, scope: !1371)
!1432 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1431)
!1433 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1431)
!1434 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1431)
!1435 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1431)
!1436 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1431)
!1437 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1159, column: 50)
!1438 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1431)
!1439 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1431)
!1440 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1431)
!1441 = distinct !{!1441, !1442, !1443}
!1442 = !DILocation(line: 1159, column: 3, scope: !1421)
!1443 = !DILocation(line: 1162, column: 3, scope: !1421)
!1444 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1431)
!1445 = !DILocation(line: 1085, column: 7, scope: !1371)
!1446 = !DILocation(line: 1077, column: 22, scope: !1371)
!1447 = !DILocation(line: 1086, column: 9, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1086, column: 9)
!1449 = distinct !DILexicalBlock(scope: !1450, file: !3, line: 1085, column: 18)
!1450 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1085, column: 7)
!1451 = !DILocation(line: 1078, column: 9, scope: !1371)
!1452 = !DILocation(line: 1086, column: 20, scope: !1448)
!1453 = !DILocation(line: 1086, column: 33, scope: !1448)
!1454 = !DILocation(line: 1086, column: 31, scope: !1448)
!1455 = !DILocation(line: 1086, column: 16, scope: !1448)
!1456 = !DILocation(line: 1086, column: 9, scope: !1449)
!1457 = !DILocation(line: 1088, column: 25, scope: !1458)
!1458 = distinct !DILexicalBlock(scope: !1448, file: !3, line: 1086, column: 39)
!1459 = !DILocation(line: 1088, column: 33, scope: !1458)
!1460 = !DILocation(line: 1088, column: 7, scope: !1458)
!1461 = !DILocation(line: 1027, column: 38, scope: !1300, inlinedAt: !1462)
!1462 = distinct !DILocation(line: 1091, column: 9, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1449, file: !3, line: 1091, column: 9)
!1464 = !DILocation(line: 1027, column: 49, scope: !1300, inlinedAt: !1462)
!1465 = !DILocation(line: 1027, column: 64, scope: !1300, inlinedAt: !1462)
!1466 = !DILocation(line: 1027, column: 75, scope: !1300, inlinedAt: !1462)
!1467 = !DILocation(line: 1030, column: 9, scope: !1300, inlinedAt: !1462)
!1468 = !DILocation(line: 1032, column: 9, scope: !1300, inlinedAt: !1462)
!1469 = !DILocation(line: 1029, column: 22, scope: !1300, inlinedAt: !1462)
!1470 = !DILocation(line: 1038, column: 21, scope: !1335, inlinedAt: !1462)
!1471 = !DILocation(line: 1038, column: 3, scope: !1336, inlinedAt: !1462)
!1472 = !DILocation(line: 0, scope: !1346, inlinedAt: !1462)
!1473 = !DILocation(line: 1039, column: 17, scope: !1346, inlinedAt: !1462)
!1474 = !DILocation(line: 1039, column: 34, scope: !1346, inlinedAt: !1462)
!1475 = !DILocation(line: 1039, column: 23, scope: !1346, inlinedAt: !1462)
!1476 = !DILocation(line: 1041, column: 31, scope: !1352, inlinedAt: !1462)
!1477 = !DILocation(line: 1042, column: 5, scope: !1352, inlinedAt: !1462)
!1478 = !DILocation(line: 1044, column: 37, scope: !1355, inlinedAt: !1462)
!1479 = !DILocation(line: 1031, column: 9, scope: !1300, inlinedAt: !1462)
!1480 = !DILocation(line: 1045, column: 24, scope: !1358, inlinedAt: !1462)
!1481 = !DILocation(line: 1045, column: 11, scope: !1355, inlinedAt: !1462)
!1482 = !DILocation(line: 1050, column: 7, scope: !1355, inlinedAt: !1462)
!1483 = !DILocation(line: 1051, column: 43, scope: !1355, inlinedAt: !1462)
!1484 = !DILocation(line: 1052, column: 27, scope: !1355, inlinedAt: !1462)
!1485 = !DILocation(line: 1053, column: 25, scope: !1355, inlinedAt: !1462)
!1486 = !DILocation(line: 0, scope: !1355, inlinedAt: !1462)
!1487 = !DILocation(line: 1038, column: 47, scope: !1335, inlinedAt: !1462)
!1488 = !DILocation(line: 1038, column: 31, scope: !1335, inlinedAt: !1462)
!1489 = !DILocation(line: 1038, column: 26, scope: !1335, inlinedAt: !1462)
!1490 = !DILocation(line: 1058, column: 1, scope: !1300, inlinedAt: !1462)
!1491 = !DILocation(line: 1091, column: 55, scope: !1463)
!1492 = !DILocation(line: 1095, column: 5, scope: !1449)
!1493 = !DILocation(line: 0, scope: !1371)
!1494 = !DILocation(line: 1099, column: 1, scope: !1371)
!1495 = distinct !DISubprogram(name: "pbuf_split_64k", scope: !3, file: !3, line: 1114, type: !1496, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1499)
!1496 = !DISubroutineType(types: !1497)
!1497 = !{null, !92, !1498}
!1498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1499 = !{!1500, !1501, !1502, !1505, !1506}
!1500 = !DILocalVariable(name: "p", arg: 1, scope: !1495, file: !3, line: 1114, type: !92)
!1501 = !DILocalVariable(name: "rest", arg: 2, scope: !1495, file: !3, line: 1114, type: !1498)
!1502 = !DILocalVariable(name: "tot_len_front", scope: !1503, file: !3, line: 1118, type: !84)
!1503 = distinct !DILexicalBlock(scope: !1504, file: !3, line: 1117, column: 41)
!1504 = distinct !DILexicalBlock(scope: !1495, file: !3, line: 1117, column: 7)
!1505 = !DILocalVariable(name: "i", scope: !1503, file: !3, line: 1119, type: !92)
!1506 = !DILocalVariable(name: "r", scope: !1503, file: !3, line: 1120, type: !92)
!1507 = !DILocation(line: 1114, column: 34, scope: !1495)
!1508 = !DILocation(line: 1114, column: 51, scope: !1495)
!1509 = !DILocation(line: 1116, column: 9, scope: !1495)
!1510 = !{!245, !245, i64 0}
!1511 = !DILocation(line: 1117, column: 10, scope: !1504)
!1512 = !DILocation(line: 1117, column: 19, scope: !1504)
!1513 = !DILocation(line: 1117, column: 26, scope: !1504)
!1514 = !DILocation(line: 1117, column: 31, scope: !1504)
!1515 = !DILocation(line: 1117, column: 7, scope: !1495)
!1516 = !DILocation(line: 1118, column: 30, scope: !1503)
!1517 = !DILocation(line: 1118, column: 11, scope: !1503)
!1518 = !DILocation(line: 1119, column: 18, scope: !1503)
!1519 = !DILocation(line: 1120, column: 18, scope: !1503)
!1520 = !DILocation(line: 1123, column: 55, scope: !1503)
!1521 = !DILocation(line: 1123, column: 50, scope: !1503)
!1522 = !DILocation(line: 1123, column: 60, scope: !1503)
!1523 = !DILocation(line: 1123, column: 5, scope: !1503)
!1524 = distinct !{!1524, !1523, !1525}
!1525 = !DILocation(line: 1127, column: 5, scope: !1503)
!1526 = !DILocation(line: 1126, column: 14, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 1123, column: 79)
!1528 = !DILocation(line: 1123, column: 15, scope: !1503)
!1529 = !DILocation(line: 1123, column: 24, scope: !1503)
!1530 = !DILocation(line: 1130, column: 8, scope: !1503)
!1531 = !DILocation(line: 1130, column: 13, scope: !1503)
!1532 = !DILocation(line: 1134, column: 7, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1134, column: 7)
!1534 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1132, column: 20)
!1535 = distinct !DILexicalBlock(scope: !1503, file: !3, line: 1132, column: 9)
!1536 = !DILocation(line: 1135, column: 33, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !3, line: 1134, column: 43)
!1538 = distinct !DILexicalBlock(scope: !1533, file: !3, line: 1134, column: 7)
!1539 = !DILocation(line: 1135, column: 46, scope: !1537)
!1540 = !DILocation(line: 1135, column: 41, scope: !1537)
!1541 = !DILocation(line: 1135, column: 20, scope: !1537)
!1542 = !DILocation(line: 1136, column: 9, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1136, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1537, file: !3, line: 1136, column: 9)
!1545 = distinct !{!1545, !1532, !1546}
!1546 = !DILocation(line: 1138, column: 7, scope: !1533)
!1547 = !DILocation(line: 1136, column: 9, scope: !1544)
!1548 = !DILocation(line: 1136, column: 9, scope: !1549)
!1549 = distinct !DILexicalBlock(scope: !1550, file: !3, line: 1136, column: 9)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1136, column: 9)
!1551 = !DILocation(line: 1136, column: 9, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 1136, column: 9)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !3, line: 1136, column: 9)
!1554 = distinct !DILexicalBlock(scope: !1549, file: !3, line: 1136, column: 9)
!1555 = !DILocation(line: 1139, column: 14, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1534, file: !3, line: 1139, column: 11)
!1557 = !DILocation(line: 1139, column: 20, scope: !1556)
!1558 = !DILocation(line: 1139, column: 11, scope: !1534)
!1559 = !DILocation(line: 1140, column: 12, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1556, file: !3, line: 1139, column: 41)
!1561 = !DILocation(line: 1140, column: 18, scope: !1560)
!1562 = !DILocation(line: 1141, column: 7, scope: !1560)
!1563 = !DILocation(line: 1145, column: 13, scope: !1534)
!1564 = !DILocation(line: 1146, column: 5, scope: !1534)
!1565 = !DILocation(line: 1148, column: 1, scope: !1495)
!1566 = distinct !DISubprogram(name: "pbuf_skip", scope: !3, file: !3, line: 1179, type: !1567, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1569)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!92, !92, !84, !1424}
!1569 = !{!1570, !1571, !1572, !1573}
!1570 = !DILocalVariable(name: "in", arg: 1, scope: !1566, file: !3, line: 1179, type: !92)
!1571 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1566, file: !3, line: 1179, type: !84)
!1572 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1566, file: !3, line: 1179, type: !1424)
!1573 = !DILocalVariable(name: "out", scope: !1566, file: !3, line: 1181, type: !1016)
!1574 = !DILocation(line: 1179, column: 24, scope: !1566)
!1575 = !DILocation(line: 1179, column: 34, scope: !1566)
!1576 = !DILocation(line: 1179, column: 52, scope: !1566)
!1577 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !1578)
!1578 = distinct !DILocation(line: 1181, column: 28, scope: !1566)
!1579 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !1578)
!1580 = !DILocation(line: 1153, column: 64, scope: !1421, inlinedAt: !1578)
!1581 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1578)
!1582 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1578)
!1583 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1578)
!1584 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1578)
!1585 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1578)
!1586 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1578)
!1587 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1578)
!1588 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1578)
!1589 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1578)
!1590 = !DILocation(line: 0, scope: !1437, inlinedAt: !1578)
!1591 = !DILocation(line: 1163, column: 18, scope: !1592, inlinedAt: !1578)
!1592 = distinct !DILexicalBlock(scope: !1421, file: !3, line: 1163, column: 7)
!1593 = !DILocation(line: 1163, column: 7, scope: !1421, inlinedAt: !1578)
!1594 = !DILocation(line: 1164, column: 17, scope: !1595, inlinedAt: !1578)
!1595 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1163, column: 27)
!1596 = !{!248, !248, i64 0}
!1597 = !DILocation(line: 1165, column: 3, scope: !1595, inlinedAt: !1578)
!1598 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1578)
!1599 = !DILocation(line: 1181, column: 22, scope: !1566)
!1600 = !DILocation(line: 1182, column: 3, scope: !1566)
!1601 = distinct !DISubprogram(name: "pbuf_take", scope: !3, file: !3, line: 1197, type: !1602, isLocal: false, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1606)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!1172, !92, !1604, !84}
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1606 = !{!1607, !1608, !1609, !1610, !1611, !1612, !1613}
!1607 = !DILocalVariable(name: "buf", arg: 1, scope: !1601, file: !3, line: 1197, type: !92)
!1608 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1601, file: !3, line: 1197, type: !1604)
!1609 = !DILocalVariable(name: "len", arg: 3, scope: !1601, file: !3, line: 1197, type: !84)
!1610 = !DILocalVariable(name: "p", scope: !1601, file: !3, line: 1199, type: !92)
!1611 = !DILocalVariable(name: "buf_copy_len", scope: !1601, file: !3, line: 1200, type: !114)
!1612 = !DILocalVariable(name: "total_copy_len", scope: !1601, file: !3, line: 1201, type: !114)
!1613 = !DILocalVariable(name: "copied_total", scope: !1601, file: !3, line: 1202, type: !114)
!1614 = !DILocation(line: 1197, column: 24, scope: !1601)
!1615 = !DILocation(line: 1197, column: 41, scope: !1601)
!1616 = !DILocation(line: 1197, column: 56, scope: !1601)
!1617 = !DILocation(line: 1201, column: 27, scope: !1601)
!1618 = !DILocation(line: 1201, column: 10, scope: !1601)
!1619 = !DILocation(line: 1202, column: 10, scope: !1601)
!1620 = !DILocation(line: 1204, column: 3, scope: !1621)
!1621 = distinct !DILexicalBlock(scope: !1622, file: !3, line: 1204, column: 3)
!1622 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1204, column: 3)
!1623 = !DILocation(line: 1204, column: 3, scope: !1622)
!1624 = !DILocation(line: 1204, column: 3, scope: !1625)
!1625 = distinct !DILexicalBlock(scope: !1626, file: !3, line: 1204, column: 3)
!1626 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 1204, column: 3)
!1627 = !DILocation(line: 1204, column: 3, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1629, file: !3, line: 1204, column: 3)
!1629 = distinct !DILexicalBlock(scope: !1630, file: !3, line: 1204, column: 3)
!1630 = distinct !DILexicalBlock(scope: !1625, file: !3, line: 1204, column: 3)
!1631 = !DILocation(line: 1205, column: 3, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1633, file: !3, line: 1205, column: 3)
!1633 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1205, column: 3)
!1634 = !DILocation(line: 1205, column: 3, scope: !1633)
!1635 = !DILocation(line: 1205, column: 3, scope: !1636)
!1636 = distinct !DILexicalBlock(scope: !1637, file: !3, line: 1205, column: 3)
!1637 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1205, column: 3)
!1638 = !DILocation(line: 1205, column: 3, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1640, file: !3, line: 1205, column: 3)
!1640 = distinct !DILexicalBlock(scope: !1641, file: !3, line: 1205, column: 3)
!1641 = distinct !DILexicalBlock(scope: !1636, file: !3, line: 1205, column: 3)
!1642 = !DILocation(line: 1206, column: 3, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1644, file: !3, line: 1206, column: 3)
!1644 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1206, column: 3)
!1645 = !DILocation(line: 1206, column: 3, scope: !1644)
!1646 = !DILocation(line: 1199, column: 16, scope: !1601)
!1647 = !DILocation(line: 1213, column: 32, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1213, column: 3)
!1649 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1213, column: 3)
!1650 = !DILocation(line: 1213, column: 3, scope: !1649)
!1651 = !DILocation(line: 1206, column: 3, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1653, file: !3, line: 1206, column: 3)
!1653 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 1206, column: 3)
!1654 = !DILocation(line: 1206, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1206, column: 3)
!1656 = distinct !DILexicalBlock(scope: !1657, file: !3, line: 1206, column: 3)
!1657 = distinct !DILexicalBlock(scope: !1652, file: !3, line: 1206, column: 3)
!1658 = !DILocation(line: 1214, column: 5, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 1214, column: 5)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1214, column: 5)
!1661 = distinct !DILexicalBlock(scope: !1648, file: !3, line: 1213, column: 51)
!1662 = !DILocation(line: 1214, column: 5, scope: !1660)
!1663 = !DILocation(line: 1214, column: 5, scope: !1664)
!1664 = distinct !DILexicalBlock(scope: !1665, file: !3, line: 1214, column: 5)
!1665 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 1214, column: 5)
!1666 = !DILocation(line: 1214, column: 5, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1668, file: !3, line: 1214, column: 5)
!1668 = distinct !DILexicalBlock(scope: !1669, file: !3, line: 1214, column: 5)
!1669 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1214, column: 5)
!1670 = !DILocation(line: 1200, column: 10, scope: !1601)
!1671 = !DILocation(line: 1216, column: 27, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1661, file: !3, line: 1216, column: 9)
!1673 = !DILocation(line: 1216, column: 24, scope: !1672)
!1674 = !DILocation(line: 1216, column: 22, scope: !1672)
!1675 = !DILocation(line: 1216, column: 9, scope: !1661)
!1676 = !DILocation(line: 1221, column: 5, scope: !1661)
!1677 = !DILocation(line: 1222, column: 20, scope: !1661)
!1678 = !DILocation(line: 1223, column: 18, scope: !1661)
!1679 = !DILocation(line: 1213, column: 45, scope: !1648)
!1680 = distinct !{!1680, !1650, !1681}
!1681 = !DILocation(line: 1224, column: 3, scope: !1649)
!1682 = !DILocation(line: 0, scope: !1661)
!1683 = !DILocation(line: 1225, column: 3, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 1225, column: 3)
!1685 = distinct !DILexicalBlock(scope: !1601, file: !3, line: 1225, column: 3)
!1686 = !DILocation(line: 1225, column: 3, scope: !1685)
!1687 = !DILocation(line: 1225, column: 3, scope: !1688)
!1688 = distinct !DILexicalBlock(scope: !1689, file: !3, line: 1225, column: 3)
!1689 = distinct !DILexicalBlock(scope: !1684, file: !3, line: 1225, column: 3)
!1690 = !DILocation(line: 1225, column: 3, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !3, line: 1225, column: 3)
!1692 = distinct !DILexicalBlock(scope: !1693, file: !3, line: 1225, column: 3)
!1693 = distinct !DILexicalBlock(scope: !1688, file: !3, line: 1225, column: 3)
!1694 = !DILocation(line: 1227, column: 1, scope: !1601)
!1695 = distinct !DISubprogram(name: "pbuf_take_at", scope: !3, file: !3, line: 1241, type: !1696, isLocal: false, isDefinition: true, scopeLine: 1242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1698)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1172, !92, !1604, !84, !84}
!1698 = !{!1699, !1700, !1701, !1702, !1703, !1704, !1705, !1708, !1709}
!1699 = !DILocalVariable(name: "buf", arg: 1, scope: !1695, file: !3, line: 1241, type: !92)
!1700 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1695, file: !3, line: 1241, type: !1604)
!1701 = !DILocalVariable(name: "len", arg: 3, scope: !1695, file: !3, line: 1241, type: !84)
!1702 = !DILocalVariable(name: "offset", arg: 4, scope: !1695, file: !3, line: 1241, type: !84)
!1703 = !DILocalVariable(name: "target_offset", scope: !1695, file: !3, line: 1243, type: !84)
!1704 = !DILocalVariable(name: "q", scope: !1695, file: !3, line: 1244, type: !92)
!1705 = !DILocalVariable(name: "remaining_len", scope: !1706, file: !3, line: 1248, type: !84)
!1706 = distinct !DILexicalBlock(scope: !1707, file: !3, line: 1247, column: 59)
!1707 = distinct !DILexicalBlock(scope: !1695, file: !3, line: 1247, column: 7)
!1708 = !DILocalVariable(name: "src_ptr", scope: !1706, file: !3, line: 1249, type: !134)
!1709 = !DILocalVariable(name: "first_copy_len", scope: !1706, file: !3, line: 1251, type: !84)
!1710 = !DILocation(line: 1241, column: 27, scope: !1695)
!1711 = !DILocation(line: 1241, column: 44, scope: !1695)
!1712 = !DILocation(line: 1241, column: 59, scope: !1695)
!1713 = !DILocation(line: 1241, column: 70, scope: !1695)
!1714 = !DILocation(line: 1179, column: 24, scope: !1566, inlinedAt: !1715)
!1715 = distinct !DILocation(line: 1244, column: 20, scope: !1695)
!1716 = !DILocation(line: 1179, column: 34, scope: !1566, inlinedAt: !1715)
!1717 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !1718)
!1718 = distinct !DILocation(line: 1181, column: 28, scope: !1566, inlinedAt: !1715)
!1719 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !1718)
!1720 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1718)
!1721 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1718)
!1722 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1718)
!1723 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1718)
!1724 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1718)
!1725 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1718)
!1726 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1718)
!1727 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1718)
!1728 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1718)
!1729 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1718)
!1730 = !DILocation(line: 1181, column: 22, scope: !1566, inlinedAt: !1715)
!1731 = !DILocation(line: 1182, column: 3, scope: !1566, inlinedAt: !1715)
!1732 = !DILocation(line: 1244, column: 16, scope: !1695)
!1733 = !DILocation(line: 1247, column: 19, scope: !1707)
!1734 = !DILocation(line: 1247, column: 26, scope: !1707)
!1735 = !DILocation(line: 1247, column: 23, scope: !1707)
!1736 = !DILocation(line: 1243, column: 9, scope: !1695)
!1737 = !DILocation(line: 1247, column: 37, scope: !1707)
!1738 = !DILocation(line: 1247, column: 53, scope: !1707)
!1739 = !DILocation(line: 1247, column: 51, scope: !1707)
!1740 = !DILocation(line: 1247, column: 34, scope: !1707)
!1741 = !DILocation(line: 1247, column: 7, scope: !1695)
!1742 = !DILocation(line: 1248, column: 11, scope: !1706)
!1743 = !DILocation(line: 1249, column: 17, scope: !1706)
!1744 = !DILocation(line: 1252, column: 5, scope: !1745)
!1745 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1252, column: 5)
!1746 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1252, column: 5)
!1747 = !DILocation(line: 1253, column: 29, scope: !1706)
!1748 = !DILocation(line: 1254, column: 5, scope: !1706)
!1749 = !DILocation(line: 1255, column: 21, scope: !1706)
!1750 = !DILocation(line: 1257, column: 23, scope: !1751)
!1751 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1257, column: 9)
!1752 = !DILocation(line: 1257, column: 9, scope: !1706)
!1753 = !DILocation(line: 1256, column: 13, scope: !1706)
!1754 = !DILocation(line: 1258, column: 27, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1751, file: !3, line: 1257, column: 28)
!1756 = !DILocation(line: 1258, column: 14, scope: !1755)
!1757 = !DILocation(line: 1258, column: 7, scope: !1755)
!1758 = !DILocation(line: 0, scope: !1695)
!1759 = !DILocation(line: 1263, column: 1, scope: !1695)
!1760 = distinct !DISubprogram(name: "pbuf_coalesce", scope: !3, file: !3, line: 1279, type: !1761, isLocal: false, isDefinition: true, scopeLine: 1280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1763)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!92, !92, !174}
!1763 = !{!1764, !1765, !1766}
!1764 = !DILocalVariable(name: "p", arg: 1, scope: !1760, file: !3, line: 1279, type: !92)
!1765 = !DILocalVariable(name: "layer", arg: 2, scope: !1760, file: !3, line: 1279, type: !174)
!1766 = !DILocalVariable(name: "q", scope: !1760, file: !3, line: 1281, type: !92)
!1767 = !DILocation(line: 1279, column: 28, scope: !1760)
!1768 = !DILocation(line: 1279, column: 42, scope: !1760)
!1769 = !DILocation(line: 1282, column: 10, scope: !1770)
!1770 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 1282, column: 7)
!1771 = !DILocation(line: 1282, column: 15, scope: !1770)
!1772 = !DILocation(line: 1282, column: 7, scope: !1760)
!1773 = !DILocalVariable(name: "layer", arg: 1, scope: !1774, file: !3, line: 1307, type: !174)
!1774 = distinct !DISubprogram(name: "pbuf_clone", scope: !3, file: !3, line: 1307, type: !1775, isLocal: false, isDefinition: true, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1777)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!92, !174, !175, !92}
!1777 = !{!1773, !1778, !1779, !1780, !1781}
!1778 = !DILocalVariable(name: "type", arg: 2, scope: !1774, file: !3, line: 1307, type: !175)
!1779 = !DILocalVariable(name: "p", arg: 3, scope: !1774, file: !3, line: 1307, type: !92)
!1780 = !DILocalVariable(name: "q", scope: !1774, file: !3, line: 1309, type: !92)
!1781 = !DILocalVariable(name: "err", scope: !1774, file: !3, line: 1310, type: !1172)
!1782 = !DILocation(line: 1307, column: 23, scope: !1774, inlinedAt: !1783)
!1783 = distinct !DILocation(line: 1285, column: 7, scope: !1760)
!1784 = !DILocation(line: 1307, column: 40, scope: !1774, inlinedAt: !1783)
!1785 = !DILocation(line: 1307, column: 59, scope: !1774, inlinedAt: !1783)
!1786 = !DILocation(line: 1311, column: 28, scope: !1774, inlinedAt: !1783)
!1787 = !DILocation(line: 224, column: 23, scope: !171, inlinedAt: !1788)
!1788 = distinct !DILocation(line: 1311, column: 7, scope: !1774, inlinedAt: !1783)
!1789 = !DILocation(line: 224, column: 36, scope: !171, inlinedAt: !1788)
!1790 = !DILocation(line: 224, column: 54, scope: !171, inlinedAt: !1788)
!1791 = !DILocation(line: 274, column: 35, scope: !190, inlinedAt: !1788)
!1792 = !DILocation(line: 274, column: 27, scope: !190, inlinedAt: !1788)
!1793 = !DILocation(line: 274, column: 13, scope: !190, inlinedAt: !1788)
!1794 = !DILocation(line: 275, column: 85, scope: !190, inlinedAt: !1788)
!1795 = !DILocation(line: 275, column: 83, scope: !190, inlinedAt: !1788)
!1796 = !DILocation(line: 275, column: 18, scope: !190, inlinedAt: !1788)
!1797 = !DILocation(line: 278, column: 24, scope: !382, inlinedAt: !1788)
!1798 = !DILocation(line: 279, column: 24, scope: !382, inlinedAt: !1788)
!1799 = !DILocation(line: 279, column: 22, scope: !382, inlinedAt: !1788)
!1800 = !DILocation(line: 278, column: 55, scope: !382, inlinedAt: !1788)
!1801 = !DILocation(line: 284, column: 26, scope: !190, inlinedAt: !1788)
!1802 = !DILocation(line: 285, column: 13, scope: !388, inlinedAt: !1788)
!1803 = !DILocation(line: 285, column: 11, scope: !190, inlinedAt: !1788)
!1804 = !DILocation(line: 300, column: 1, scope: !171, inlinedAt: !1788)
!1805 = !DILocation(line: 1309, column: 16, scope: !1774, inlinedAt: !1783)
!1806 = !DILocation(line: 1319, column: 1, scope: !1774, inlinedAt: !1783)
!1807 = !DILocation(line: 1281, column: 16, scope: !1760)
!1808 = !DILocation(line: 1286, column: 7, scope: !1760)
!1809 = !DILocation(line: 284, column: 11, scope: !190, inlinedAt: !1788)
!1810 = !DILocation(line: 226, column: 16, scope: !171, inlinedAt: !1788)
!1811 = !DILocation(line: 288, column: 33, scope: !190, inlinedAt: !1788)
!1812 = !DILocation(line: 179, column: 37, scope: !225, inlinedAt: !1813)
!1813 = distinct !DILocation(line: 288, column: 7, scope: !190, inlinedAt: !1788)
!1814 = !DILocation(line: 179, column: 46, scope: !225, inlinedAt: !1813)
!1815 = !DILocation(line: 179, column: 61, scope: !225, inlinedAt: !1813)
!1816 = !DILocation(line: 179, column: 76, scope: !225, inlinedAt: !1813)
!1817 = !DILocation(line: 179, column: 91, scope: !225, inlinedAt: !1813)
!1818 = !DILocation(line: 179, column: 102, scope: !225, inlinedAt: !1813)
!1819 = !DILocation(line: 181, column: 6, scope: !225, inlinedAt: !1813)
!1820 = !DILocation(line: 181, column: 11, scope: !225, inlinedAt: !1813)
!1821 = !DILocation(line: 182, column: 6, scope: !225, inlinedAt: !1813)
!1822 = !DILocation(line: 182, column: 14, scope: !225, inlinedAt: !1813)
!1823 = !DILocation(line: 183, column: 6, scope: !225, inlinedAt: !1813)
!1824 = !DILocation(line: 183, column: 14, scope: !225, inlinedAt: !1813)
!1825 = !DILocation(line: 184, column: 6, scope: !225, inlinedAt: !1813)
!1826 = !DILocation(line: 184, column: 10, scope: !225, inlinedAt: !1813)
!1827 = !DILocation(line: 185, column: 6, scope: !225, inlinedAt: !1813)
!1828 = !DILocation(line: 185, column: 20, scope: !225, inlinedAt: !1813)
!1829 = !DILocation(line: 186, column: 6, scope: !225, inlinedAt: !1813)
!1830 = !DILocation(line: 186, column: 12, scope: !225, inlinedAt: !1813)
!1831 = !DILocation(line: 187, column: 6, scope: !225, inlinedAt: !1813)
!1832 = !DILocation(line: 187, column: 10, scope: !225, inlinedAt: !1813)
!1833 = !DILocation(line: 188, column: 6, scope: !225, inlinedAt: !1813)
!1834 = !DILocation(line: 188, column: 13, scope: !225, inlinedAt: !1813)
!1835 = !DILocation(line: 189, column: 1, scope: !225, inlinedAt: !1813)
!1836 = !DILocation(line: 1315, column: 9, scope: !1774, inlinedAt: !1783)
!1837 = !DILocation(line: 1310, column: 9, scope: !1774, inlinedAt: !1783)
!1838 = !DILocation(line: 1290, column: 3, scope: !1760)
!1839 = !DILocation(line: 1291, column: 3, scope: !1760)
!1840 = !DILocation(line: 0, scope: !1760)
!1841 = !DILocation(line: 1292, column: 1, scope: !1760)
!1842 = !DILocation(line: 1307, column: 23, scope: !1774)
!1843 = !DILocation(line: 1307, column: 40, scope: !1774)
!1844 = !DILocation(line: 1307, column: 59, scope: !1774)
!1845 = !DILocation(line: 1311, column: 28, scope: !1774)
!1846 = !DILocation(line: 1311, column: 7, scope: !1774)
!1847 = !DILocation(line: 1309, column: 16, scope: !1774)
!1848 = !DILocation(line: 1312, column: 9, scope: !1849)
!1849 = distinct !DILexicalBlock(scope: !1774, file: !3, line: 1312, column: 7)
!1850 = !DILocation(line: 1312, column: 7, scope: !1774)
!1851 = !DILocation(line: 1315, column: 9, scope: !1774)
!1852 = !DILocation(line: 1310, column: 9, scope: !1774)
!1853 = !DILocation(line: 1318, column: 3, scope: !1774)
!1854 = !DILocation(line: 1319, column: 1, scope: !1774)
!1855 = distinct !DISubprogram(name: "pbuf_get_at", scope: !3, file: !3, line: 1372, type: !1856, isLocal: false, isDefinition: true, scopeLine: 1373, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1858)
!1856 = !DISubroutineType(types: !1857)
!1857 = !{!100, !1016, !84}
!1858 = !{!1859, !1860, !1861}
!1859 = !DILocalVariable(name: "p", arg: 1, scope: !1855, file: !3, line: 1372, type: !1016)
!1860 = !DILocalVariable(name: "offset", arg: 2, scope: !1855, file: !3, line: 1372, type: !84)
!1861 = !DILocalVariable(name: "ret", scope: !1855, file: !3, line: 1374, type: !50)
!1862 = !DILocation(line: 1372, column: 32, scope: !1855)
!1863 = !DILocation(line: 1372, column: 41, scope: !1855)
!1864 = !DILocalVariable(name: "p", arg: 1, scope: !1865, file: !3, line: 1390, type: !1016)
!1865 = distinct !DISubprogram(name: "pbuf_try_get_at", scope: !3, file: !3, line: 1390, type: !1866, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1868)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{!50, !1016, !84}
!1868 = !{!1864, !1869, !1870, !1871}
!1869 = !DILocalVariable(name: "offset", arg: 2, scope: !1865, file: !3, line: 1390, type: !84)
!1870 = !DILocalVariable(name: "q_idx", scope: !1865, file: !3, line: 1392, type: !84)
!1871 = !DILocalVariable(name: "q", scope: !1865, file: !3, line: 1393, type: !1016)
!1872 = !DILocation(line: 1390, column: 36, scope: !1865, inlinedAt: !1873)
!1873 = distinct !DILocation(line: 1374, column: 13, scope: !1855)
!1874 = !DILocation(line: 1390, column: 45, scope: !1865, inlinedAt: !1873)
!1875 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !1876)
!1876 = distinct !DILocation(line: 1393, column: 26, scope: !1865, inlinedAt: !1873)
!1877 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !1876)
!1878 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1876)
!1879 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1876)
!1880 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1876)
!1881 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1876)
!1882 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1876)
!1883 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1876)
!1884 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1876)
!1885 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1876)
!1886 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1876)
!1887 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1876)
!1888 = !DILocation(line: 1393, column: 22, scope: !1865, inlinedAt: !1873)
!1889 = !DILocation(line: 1374, column: 7, scope: !1855)
!1890 = !DILocation(line: 1375, column: 7, scope: !1855)
!1891 = !DILocation(line: 1392, column: 9, scope: !1865, inlinedAt: !1873)
!1892 = !DILocation(line: 1397, column: 24, scope: !1893, inlinedAt: !1873)
!1893 = distinct !DILexicalBlock(scope: !1894, file: !3, line: 1396, column: 40)
!1894 = distinct !DILexicalBlock(scope: !1865, file: !3, line: 1396, column: 7)
!1895 = !DILocation(line: 1397, column: 12, scope: !1893, inlinedAt: !1873)
!1896 = !DILocation(line: 1400, column: 1, scope: !1865, inlinedAt: !1873)
!1897 = !DILocation(line: 1379, column: 1, scope: !1855)
!1898 = !DILocation(line: 1390, column: 36, scope: !1865)
!1899 = !DILocation(line: 1390, column: 45, scope: !1865)
!1900 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !1901)
!1901 = distinct !DILocation(line: 1393, column: 26, scope: !1865)
!1902 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !1901)
!1903 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1901)
!1904 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1901)
!1905 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1901)
!1906 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1901)
!1907 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1901)
!1908 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1901)
!1909 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1901)
!1910 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1901)
!1911 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1901)
!1912 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1901)
!1913 = !DILocation(line: 1393, column: 22, scope: !1865)
!1914 = !DILocation(line: 1396, column: 19, scope: !1894)
!1915 = !DILocation(line: 1392, column: 9, scope: !1865)
!1916 = !DILocation(line: 1397, column: 24, scope: !1893)
!1917 = !DILocation(line: 1397, column: 12, scope: !1893)
!1918 = !DILocation(line: 1397, column: 5, scope: !1893)
!1919 = !DILocation(line: 0, scope: !1865)
!1920 = !DILocation(line: 1400, column: 1, scope: !1865)
!1921 = distinct !DISubprogram(name: "pbuf_put_at", scope: !3, file: !3, line: 1412, type: !1922, isLocal: false, isDefinition: true, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1924)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{null, !92, !84, !100}
!1924 = !{!1925, !1926, !1927, !1928, !1929}
!1925 = !DILocalVariable(name: "p", arg: 1, scope: !1921, file: !3, line: 1412, type: !92)
!1926 = !DILocalVariable(name: "offset", arg: 2, scope: !1921, file: !3, line: 1412, type: !84)
!1927 = !DILocalVariable(name: "data", arg: 3, scope: !1921, file: !3, line: 1412, type: !100)
!1928 = !DILocalVariable(name: "q_idx", scope: !1921, file: !3, line: 1414, type: !84)
!1929 = !DILocalVariable(name: "q", scope: !1921, file: !3, line: 1415, type: !92)
!1930 = !DILocation(line: 1412, column: 26, scope: !1921)
!1931 = !DILocation(line: 1412, column: 35, scope: !1921)
!1932 = !DILocation(line: 1412, column: 48, scope: !1921)
!1933 = !DILocation(line: 1179, column: 24, scope: !1566, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 1415, column: 20, scope: !1921)
!1935 = !DILocation(line: 1179, column: 34, scope: !1566, inlinedAt: !1934)
!1936 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !1937)
!1937 = distinct !DILocation(line: 1181, column: 28, scope: !1566, inlinedAt: !1934)
!1938 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !1937)
!1939 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !1937)
!1940 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !1937)
!1941 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !1937)
!1942 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !1937)
!1943 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !1937)
!1944 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !1937)
!1945 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !1937)
!1946 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !1937)
!1947 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !1937)
!1948 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !1937)
!1949 = !DILocation(line: 1181, column: 22, scope: !1566, inlinedAt: !1934)
!1950 = !DILocation(line: 1182, column: 3, scope: !1566, inlinedAt: !1934)
!1951 = !DILocation(line: 1415, column: 16, scope: !1921)
!1952 = !DILocation(line: 1418, column: 19, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 1418, column: 7)
!1954 = !DILocation(line: 1414, column: 9, scope: !1921)
!1955 = !DILocation(line: 1419, column: 17, scope: !1956)
!1956 = distinct !DILexicalBlock(scope: !1953, file: !3, line: 1418, column: 40)
!1957 = !DILocation(line: 1419, column: 5, scope: !1956)
!1958 = !DILocation(line: 1419, column: 33, scope: !1956)
!1959 = !DILocation(line: 1420, column: 3, scope: !1956)
!1960 = !DILocation(line: 1421, column: 1, scope: !1921)
!1961 = distinct !DISubprogram(name: "pbuf_memcmp", scope: !3, file: !3, line: 1435, type: !1962, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1964)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!84, !1016, !84, !1604, !84}
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1976}
!1965 = !DILocalVariable(name: "p", arg: 1, scope: !1961, file: !3, line: 1435, type: !1016)
!1966 = !DILocalVariable(name: "offset", arg: 2, scope: !1961, file: !3, line: 1435, type: !84)
!1967 = !DILocalVariable(name: "s2", arg: 3, scope: !1961, file: !3, line: 1435, type: !1604)
!1968 = !DILocalVariable(name: "n", arg: 4, scope: !1961, file: !3, line: 1435, type: !84)
!1969 = !DILocalVariable(name: "start", scope: !1961, file: !3, line: 1437, type: !84)
!1970 = !DILocalVariable(name: "q", scope: !1961, file: !3, line: 1438, type: !1016)
!1971 = !DILocalVariable(name: "i", scope: !1961, file: !3, line: 1439, type: !84)
!1972 = !DILocalVariable(name: "a", scope: !1973, file: !3, line: 1455, type: !100)
!1973 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 1453, column: 27)
!1974 = distinct !DILexicalBlock(scope: !1975, file: !3, line: 1453, column: 3)
!1975 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1453, column: 3)
!1976 = !DILocalVariable(name: "b", scope: !1973, file: !3, line: 1456, type: !100)
!1977 = !DILocation(line: 1435, column: 32, scope: !1961)
!1978 = !DILocation(line: 1435, column: 41, scope: !1961)
!1979 = !DILocation(line: 1435, column: 61, scope: !1961)
!1980 = !DILocation(line: 1435, column: 71, scope: !1961)
!1981 = !DILocation(line: 1437, column: 9, scope: !1961)
!1982 = !DILocation(line: 1438, column: 22, scope: !1961)
!1983 = !DILocation(line: 1442, column: 10, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1442, column: 7)
!1985 = !DILocation(line: 1442, column: 7, scope: !1984)
!1986 = !DILocation(line: 1442, column: 21, scope: !1984)
!1987 = !DILocation(line: 1442, column: 30, scope: !1984)
!1988 = !DILocation(line: 1442, column: 28, scope: !1984)
!1989 = !DILocation(line: 1442, column: 18, scope: !1984)
!1990 = !DILocation(line: 1442, column: 7, scope: !1961)
!1991 = !DILocation(line: 1447, column: 29, scope: !1961)
!1992 = !DILocation(line: 1447, column: 33, scope: !1961)
!1993 = !DILocation(line: 1447, column: 3, scope: !1961)
!1994 = !DILocation(line: 1448, column: 27, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1961, file: !3, line: 1447, column: 44)
!1996 = !DILocation(line: 1449, column: 12, scope: !1995)
!1997 = !DILocation(line: 1447, column: 13, scope: !1961)
!1998 = !DILocation(line: 1447, column: 22, scope: !1961)
!1999 = distinct !{!1999, !1993, !2000}
!2000 = !DILocation(line: 1450, column: 3, scope: !1961)
!2001 = !DILocation(line: 0, scope: !1995)
!2002 = !DILocation(line: 1439, column: 9, scope: !1961)
!2003 = !DILocation(line: 1453, column: 17, scope: !1974)
!2004 = !DILocation(line: 1453, column: 3, scope: !1975)
!2005 = !DILocation(line: 1453, column: 15, scope: !1974)
!2006 = distinct !{!2006, !2004, !2007}
!2007 = !DILocation(line: 1460, column: 3, scope: !1975)
!2008 = !DILocation(line: 1372, column: 32, scope: !1855, inlinedAt: !2009)
!2009 = distinct !DILocation(line: 1455, column: 14, scope: !1973)
!2010 = !DILocation(line: 1390, column: 36, scope: !1865, inlinedAt: !2011)
!2011 = distinct !DILocation(line: 1374, column: 13, scope: !1855, inlinedAt: !2009)
!2012 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !2013)
!2013 = distinct !DILocation(line: 1393, column: 26, scope: !1865, inlinedAt: !2011)
!2014 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !2013)
!2015 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !2013)
!2016 = !DILocation(line: 1455, column: 43, scope: !1973)
!2017 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !2013)
!2018 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !2013)
!2019 = !DILocation(line: 1390, column: 45, scope: !1865, inlinedAt: !2011)
!2020 = !DILocation(line: 1372, column: 41, scope: !1855, inlinedAt: !2009)
!2021 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !2013)
!2022 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !2013)
!2023 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !2013)
!2024 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !2013)
!2025 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !2013)
!2026 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !2013)
!2027 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !2013)
!2028 = !DILocation(line: 1393, column: 22, scope: !1865, inlinedAt: !2011)
!2029 = !DILocation(line: 1374, column: 7, scope: !1855, inlinedAt: !2009)
!2030 = !DILocation(line: 1375, column: 7, scope: !1855, inlinedAt: !2009)
!2031 = !DILocation(line: 1392, column: 9, scope: !1865, inlinedAt: !2011)
!2032 = !DILocation(line: 1397, column: 24, scope: !1893, inlinedAt: !2011)
!2033 = !DILocation(line: 1397, column: 12, scope: !1893, inlinedAt: !2011)
!2034 = !DILocation(line: 1400, column: 1, scope: !1865, inlinedAt: !2011)
!2035 = !DILocation(line: 1379, column: 1, scope: !1855, inlinedAt: !2009)
!2036 = !DILocation(line: 1455, column: 10, scope: !1973)
!2037 = !DILocation(line: 1456, column: 14, scope: !1973)
!2038 = !DILocation(line: 1456, column: 10, scope: !1973)
!2039 = !DILocation(line: 1457, column: 11, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1973, file: !3, line: 1457, column: 9)
!2041 = !DILocation(line: 1453, column: 23, scope: !1974)
!2042 = !DILocation(line: 1457, column: 9, scope: !1973)
!2043 = !DILocation(line: 1458, column: 21, scope: !2044)
!2044 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 1457, column: 17)
!2045 = !DILocation(line: 1458, column: 14, scope: !2044)
!2046 = !DILocation(line: 0, scope: !1961)
!2047 = !DILocation(line: 1462, column: 1, scope: !1961)
!2048 = distinct !DISubprogram(name: "pbuf_memfind", scope: !3, file: !3, line: 1477, type: !2049, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2051)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{!84, !1016, !1604, !84, !84}
!2051 = !{!2052, !2053, !2054, !2055, !2056, !2057, !2058}
!2052 = !DILocalVariable(name: "p", arg: 1, scope: !2048, file: !3, line: 1477, type: !1016)
!2053 = !DILocalVariable(name: "mem", arg: 2, scope: !2048, file: !3, line: 1477, type: !1604)
!2054 = !DILocalVariable(name: "mem_len", arg: 3, scope: !2048, file: !3, line: 1477, type: !84)
!2055 = !DILocalVariable(name: "start_offset", arg: 4, scope: !2048, file: !3, line: 1477, type: !84)
!2056 = !DILocalVariable(name: "i", scope: !2048, file: !3, line: 1479, type: !84)
!2057 = !DILocalVariable(name: "max_cmp_start", scope: !2048, file: !3, line: 1480, type: !84)
!2058 = !DILocalVariable(name: "plus", scope: !2059, file: !3, line: 1483, type: !84)
!2059 = distinct !DILexicalBlock(scope: !2060, file: !3, line: 1482, column: 53)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !3, line: 1482, column: 5)
!2061 = distinct !DILexicalBlock(scope: !2062, file: !3, line: 1482, column: 5)
!2062 = distinct !DILexicalBlock(scope: !2063, file: !3, line: 1481, column: 45)
!2063 = distinct !DILexicalBlock(scope: !2048, file: !3, line: 1481, column: 7)
!2064 = !DILocation(line: 1477, column: 33, scope: !2048)
!2065 = !DILocation(line: 1477, column: 48, scope: !2048)
!2066 = !DILocation(line: 1477, column: 59, scope: !2048)
!2067 = !DILocation(line: 1477, column: 74, scope: !2048)
!2068 = !DILocation(line: 1480, column: 36, scope: !2048)
!2069 = !DILocation(line: 1480, column: 33, scope: !2048)
!2070 = !DILocation(line: 1480, column: 46, scope: !2048)
!2071 = !DILocation(line: 1480, column: 44, scope: !2048)
!2072 = !DILocation(line: 1480, column: 9, scope: !2048)
!2073 = !DILocation(line: 1481, column: 31, scope: !2063)
!2074 = !DILocation(line: 1481, column: 29, scope: !2063)
!2075 = !DILocation(line: 1481, column: 18, scope: !2063)
!2076 = !DILocation(line: 1482, column: 30, scope: !2060)
!2077 = !DILocation(line: 1481, column: 7, scope: !2048)
!2078 = !DILocation(line: 1479, column: 9, scope: !2048)
!2079 = !DILocation(line: 1482, column: 5, scope: !2061)
!2080 = !DILocation(line: 1435, column: 32, scope: !1961, inlinedAt: !2081)
!2081 = distinct !DILocation(line: 1483, column: 20, scope: !2059)
!2082 = !DILocation(line: 1435, column: 41, scope: !1961, inlinedAt: !2081)
!2083 = !DILocation(line: 1435, column: 61, scope: !1961, inlinedAt: !2081)
!2084 = !DILocation(line: 1435, column: 71, scope: !1961, inlinedAt: !2081)
!2085 = !DILocation(line: 1437, column: 9, scope: !1961, inlinedAt: !2081)
!2086 = !DILocation(line: 1438, column: 22, scope: !1961, inlinedAt: !2081)
!2087 = !DILocation(line: 1442, column: 21, scope: !1984, inlinedAt: !2081)
!2088 = !DILocation(line: 1442, column: 28, scope: !1984, inlinedAt: !2081)
!2089 = !DILocation(line: 1442, column: 18, scope: !1984, inlinedAt: !2081)
!2090 = !DILocation(line: 1442, column: 7, scope: !1961, inlinedAt: !2081)
!2091 = !DILocation(line: 1447, column: 29, scope: !1961, inlinedAt: !2081)
!2092 = !DILocation(line: 1447, column: 33, scope: !1961, inlinedAt: !2081)
!2093 = !DILocation(line: 1447, column: 3, scope: !1961, inlinedAt: !2081)
!2094 = !DILocation(line: 1448, column: 27, scope: !1995, inlinedAt: !2081)
!2095 = !DILocation(line: 1449, column: 12, scope: !1995, inlinedAt: !2081)
!2096 = !DILocation(line: 1447, column: 13, scope: !1961, inlinedAt: !2081)
!2097 = !DILocation(line: 1447, column: 22, scope: !1961, inlinedAt: !2081)
!2098 = !DILocation(line: 0, scope: !1995, inlinedAt: !2081)
!2099 = !DILocation(line: 1439, column: 9, scope: !1961, inlinedAt: !2081)
!2100 = !DILocation(line: 1453, column: 3, scope: !1975, inlinedAt: !2081)
!2101 = !DILocation(line: 1453, column: 17, scope: !1974, inlinedAt: !2081)
!2102 = !DILocation(line: 1372, column: 32, scope: !1855, inlinedAt: !2103)
!2103 = distinct !DILocation(line: 1455, column: 14, scope: !1973, inlinedAt: !2081)
!2104 = !DILocation(line: 1390, column: 36, scope: !1865, inlinedAt: !2105)
!2105 = distinct !DILocation(line: 1374, column: 13, scope: !1855, inlinedAt: !2103)
!2106 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !2107)
!2107 = distinct !DILocation(line: 1393, column: 26, scope: !1865, inlinedAt: !2105)
!2108 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !2107)
!2109 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !2107)
!2110 = !DILocation(line: 1455, column: 43, scope: !1973, inlinedAt: !2081)
!2111 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !2107)
!2112 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !2107)
!2113 = !DILocation(line: 1390, column: 45, scope: !1865, inlinedAt: !2105)
!2114 = !DILocation(line: 1372, column: 41, scope: !1855, inlinedAt: !2103)
!2115 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !2107)
!2116 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !2107)
!2117 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !2107)
!2118 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !2107)
!2119 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !2107)
!2120 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !2107)
!2121 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !2107)
!2122 = !DILocation(line: 1393, column: 22, scope: !1865, inlinedAt: !2105)
!2123 = !DILocation(line: 1374, column: 7, scope: !1855, inlinedAt: !2103)
!2124 = !DILocation(line: 1375, column: 7, scope: !1855, inlinedAt: !2103)
!2125 = !DILocation(line: 1392, column: 9, scope: !1865, inlinedAt: !2105)
!2126 = !DILocation(line: 1397, column: 24, scope: !1893, inlinedAt: !2105)
!2127 = !DILocation(line: 1397, column: 12, scope: !1893, inlinedAt: !2105)
!2128 = !DILocation(line: 1400, column: 1, scope: !1865, inlinedAt: !2105)
!2129 = !DILocation(line: 1379, column: 1, scope: !1855, inlinedAt: !2103)
!2130 = !DILocation(line: 1455, column: 10, scope: !1973, inlinedAt: !2081)
!2131 = !DILocation(line: 1456, column: 14, scope: !1973, inlinedAt: !2081)
!2132 = !DILocation(line: 1456, column: 10, scope: !1973, inlinedAt: !2081)
!2133 = !DILocation(line: 1457, column: 11, scope: !2040, inlinedAt: !2081)
!2134 = !DILocation(line: 1453, column: 23, scope: !1974, inlinedAt: !2081)
!2135 = !DILocation(line: 1457, column: 9, scope: !1973, inlinedAt: !2081)
!2136 = !DILocation(line: 1462, column: 1, scope: !1961, inlinedAt: !2081)
!2137 = !DILocation(line: 1482, column: 49, scope: !2060)
!2138 = distinct !{!2138, !2079, !2139}
!2139 = !DILocation(line: 1487, column: 5, scope: !2061)
!2140 = !DILocation(line: 0, scope: !2048)
!2141 = !DILocation(line: 1490, column: 1, scope: !2048)
!2142 = distinct !DISubprogram(name: "pbuf_strstr", scope: !3, file: !3, line: 1504, type: !2143, isLocal: false, isDefinition: true, scopeLine: 1505, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2145)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!84, !1016, !132}
!2145 = !{!2146, !2147, !2148}
!2146 = !DILocalVariable(name: "p", arg: 1, scope: !2142, file: !3, line: 1504, type: !1016)
!2147 = !DILocalVariable(name: "substr", arg: 2, scope: !2142, file: !3, line: 1504, type: !132)
!2148 = !DILocalVariable(name: "substr_len", scope: !2142, file: !3, line: 1506, type: !114)
!2149 = !DILocation(line: 1504, column: 32, scope: !2142)
!2150 = !DILocation(line: 1504, column: 47, scope: !2142)
!2151 = !DILocation(line: 1507, column: 15, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1507, column: 7)
!2153 = !DILocation(line: 1507, column: 24, scope: !2152)
!2154 = !DILocation(line: 1507, column: 28, scope: !2152)
!2155 = !DILocation(line: 1507, column: 38, scope: !2152)
!2156 = !DILocation(line: 1507, column: 44, scope: !2152)
!2157 = !DILocation(line: 1507, column: 51, scope: !2152)
!2158 = !DILocation(line: 1507, column: 59, scope: !2152)
!2159 = !DILocation(line: 1507, column: 7, scope: !2142)
!2160 = !DILocation(line: 1510, column: 16, scope: !2142)
!2161 = !DILocation(line: 1506, column: 10, scope: !2142)
!2162 = !DILocation(line: 1511, column: 18, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 1511, column: 7)
!2164 = !DILocation(line: 1511, column: 7, scope: !2142)
!2165 = !DILocation(line: 1514, column: 34, scope: !2142)
!2166 = !DILocation(line: 1477, column: 33, scope: !2048, inlinedAt: !2167)
!2167 = distinct !DILocation(line: 1514, column: 10, scope: !2142)
!2168 = !DILocation(line: 1477, column: 48, scope: !2048, inlinedAt: !2167)
!2169 = !DILocation(line: 1477, column: 59, scope: !2048, inlinedAt: !2167)
!2170 = !DILocation(line: 1477, column: 74, scope: !2048, inlinedAt: !2167)
!2171 = !DILocation(line: 1480, column: 36, scope: !2048, inlinedAt: !2167)
!2172 = !DILocation(line: 1480, column: 33, scope: !2048, inlinedAt: !2167)
!2173 = !DILocation(line: 1480, column: 46, scope: !2048, inlinedAt: !2167)
!2174 = !DILocation(line: 1480, column: 44, scope: !2048, inlinedAt: !2167)
!2175 = !DILocation(line: 1480, column: 9, scope: !2048, inlinedAt: !2167)
!2176 = !DILocation(line: 1481, column: 18, scope: !2063, inlinedAt: !2167)
!2177 = !DILocation(line: 1479, column: 9, scope: !2048, inlinedAt: !2167)
!2178 = !DILocation(line: 1481, column: 7, scope: !2048, inlinedAt: !2167)
!2179 = !DILocation(line: 1482, column: 5, scope: !2061, inlinedAt: !2167)
!2180 = !DILocation(line: 1435, column: 32, scope: !1961, inlinedAt: !2181)
!2181 = distinct !DILocation(line: 1483, column: 20, scope: !2059, inlinedAt: !2167)
!2182 = !DILocation(line: 1435, column: 41, scope: !1961, inlinedAt: !2181)
!2183 = !DILocation(line: 1435, column: 61, scope: !1961, inlinedAt: !2181)
!2184 = !DILocation(line: 1435, column: 71, scope: !1961, inlinedAt: !2181)
!2185 = !DILocation(line: 1437, column: 9, scope: !1961, inlinedAt: !2181)
!2186 = !DILocation(line: 1438, column: 22, scope: !1961, inlinedAt: !2181)
!2187 = !DILocation(line: 1442, column: 21, scope: !1984, inlinedAt: !2181)
!2188 = !DILocation(line: 1442, column: 28, scope: !1984, inlinedAt: !2181)
!2189 = !DILocation(line: 1442, column: 18, scope: !1984, inlinedAt: !2181)
!2190 = !DILocation(line: 1442, column: 7, scope: !1961, inlinedAt: !2181)
!2191 = !DILocation(line: 1447, column: 29, scope: !1961, inlinedAt: !2181)
!2192 = !DILocation(line: 1447, column: 33, scope: !1961, inlinedAt: !2181)
!2193 = !DILocation(line: 1447, column: 3, scope: !1961, inlinedAt: !2181)
!2194 = !DILocation(line: 1448, column: 27, scope: !1995, inlinedAt: !2181)
!2195 = !DILocation(line: 1449, column: 12, scope: !1995, inlinedAt: !2181)
!2196 = !DILocation(line: 1447, column: 13, scope: !1961, inlinedAt: !2181)
!2197 = !DILocation(line: 1447, column: 22, scope: !1961, inlinedAt: !2181)
!2198 = !DILocation(line: 0, scope: !1995, inlinedAt: !2181)
!2199 = !DILocation(line: 1439, column: 9, scope: !1961, inlinedAt: !2181)
!2200 = !DILocation(line: 1453, column: 3, scope: !1975, inlinedAt: !2181)
!2201 = !DILocation(line: 1453, column: 17, scope: !1974, inlinedAt: !2181)
!2202 = !DILocation(line: 1372, column: 32, scope: !1855, inlinedAt: !2203)
!2203 = distinct !DILocation(line: 1455, column: 14, scope: !1973, inlinedAt: !2181)
!2204 = !DILocation(line: 1390, column: 36, scope: !1865, inlinedAt: !2205)
!2205 = distinct !DILocation(line: 1374, column: 13, scope: !1855, inlinedAt: !2203)
!2206 = !DILocation(line: 1153, column: 36, scope: !1421, inlinedAt: !2207)
!2207 = distinct !DILocation(line: 1393, column: 26, scope: !1865, inlinedAt: !2205)
!2208 = !DILocation(line: 1156, column: 22, scope: !1421, inlinedAt: !2207)
!2209 = !DILocation(line: 1159, column: 22, scope: !1421, inlinedAt: !2207)
!2210 = !DILocation(line: 1455, column: 43, scope: !1973, inlinedAt: !2181)
!2211 = !DILocation(line: 1155, column: 9, scope: !1421, inlinedAt: !2207)
!2212 = !DILocation(line: 1153, column: 46, scope: !1421, inlinedAt: !2207)
!2213 = !DILocation(line: 1390, column: 45, scope: !1865, inlinedAt: !2205)
!2214 = !DILocation(line: 1372, column: 41, scope: !1855, inlinedAt: !2203)
!2215 = !DILocation(line: 1159, column: 29, scope: !1421, inlinedAt: !2207)
!2216 = !DILocation(line: 1159, column: 33, scope: !1421, inlinedAt: !2207)
!2217 = !DILocation(line: 1159, column: 3, scope: !1421, inlinedAt: !2207)
!2218 = !DILocation(line: 1160, column: 39, scope: !1437, inlinedAt: !2207)
!2219 = !DILocation(line: 1161, column: 12, scope: !1437, inlinedAt: !2207)
!2220 = !DILocation(line: 1159, column: 13, scope: !1421, inlinedAt: !2207)
!2221 = !DILocation(line: 1166, column: 3, scope: !1421, inlinedAt: !2207)
!2222 = !DILocation(line: 1393, column: 22, scope: !1865, inlinedAt: !2205)
!2223 = !DILocation(line: 1374, column: 7, scope: !1855, inlinedAt: !2203)
!2224 = !DILocation(line: 1375, column: 7, scope: !1855, inlinedAt: !2203)
!2225 = !DILocation(line: 1392, column: 9, scope: !1865, inlinedAt: !2205)
!2226 = !DILocation(line: 1397, column: 24, scope: !1893, inlinedAt: !2205)
!2227 = !DILocation(line: 1397, column: 12, scope: !1893, inlinedAt: !2205)
!2228 = !DILocation(line: 1400, column: 1, scope: !1865, inlinedAt: !2205)
!2229 = !DILocation(line: 1379, column: 1, scope: !1855, inlinedAt: !2203)
!2230 = !DILocation(line: 1455, column: 10, scope: !1973, inlinedAt: !2181)
!2231 = !DILocation(line: 1456, column: 14, scope: !1973, inlinedAt: !2181)
!2232 = !DILocation(line: 1456, column: 10, scope: !1973, inlinedAt: !2181)
!2233 = !DILocation(line: 1457, column: 11, scope: !2040, inlinedAt: !2181)
!2234 = !DILocation(line: 1453, column: 23, scope: !1974, inlinedAt: !2181)
!2235 = !DILocation(line: 1457, column: 9, scope: !1973, inlinedAt: !2181)
!2236 = !DILocation(line: 1462, column: 1, scope: !1961, inlinedAt: !2181)
!2237 = !DILocation(line: 1482, column: 49, scope: !2060, inlinedAt: !2167)
!2238 = !DILocation(line: 1482, column: 30, scope: !2060, inlinedAt: !2167)
!2239 = !DILocation(line: 0, scope: !2048, inlinedAt: !2167)
!2240 = !DILocation(line: 1490, column: 1, scope: !2048, inlinedAt: !2167)
!2241 = !DILocation(line: 1514, column: 3, scope: !2142)
!2242 = !DILocation(line: 0, scope: !2142)
!2243 = !DILocation(line: 1515, column: 1, scope: !2142)
!2244 = distinct !DISubprogram(name: "pbuf_free_ooseq_callback", scope: !3, file: !3, line: 148, type: !2245, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !91}
!2247 = !{!2248}
!2248 = !DILocalVariable(name: "arg", arg: 1, scope: !2244, file: !3, line: 148, type: !91)
!2249 = !DILocation(line: 148, column: 32, scope: !2244)
!2250 = !DILocation(line: 131, column: 3, scope: !2251, inlinedAt: !2408)
!2251 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 131, column: 3)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 131, column: 3)
!2253 = distinct !DISubprogram(name: "pbuf_free_ooseq", scope: !3, file: !3, line: 128, type: !294, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2254)
!2254 = !{!2255, !2407}
!2255 = !DILocalVariable(name: "pcb", scope: !2253, file: !3, line: 130, type: !2256)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !2258, line: 242, size: 2240, elements: !2259)
!2258 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2259 = !{!2260, !2288, !2289, !2290, !2291, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2299, !2301, !2302, !2303, !2304, !2305, !2306, !2308, !2309, !2310, !2311, !2312, !2313, !2314, !2315, !2316, !2317, !2318, !2319, !2320, !2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332, !2333, !2355, !2356, !2357, !2358, !2378, !2383, !2388, !2390, !2395, !2400, !2401, !2402, !2403, !2404, !2405, !2406}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2257, file: !2258, line: 244, baseType: !2261, size: 192)
!2261 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !2262, line: 76, baseType: !2263)
!2262 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !2262, line: 69, size: 192, elements: !2264)
!2264 = !{!2265, !2287}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !2263, file: !2262, line: 73, baseType: !2266, size: 160)
!2266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2263, file: !2262, line: 70, size: 160, elements: !2267)
!2267 = !{!2268, !2281}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !2266, file: !2262, line: 71, baseType: !2269, size: 160)
!2269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !2270, line: 67, baseType: !2271)
!2270 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !2270, line: 59, size: 160, elements: !2272)
!2272 = !{!2273, !2280}
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2271, file: !2270, line: 60, baseType: !2274, size: 128)
!2274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2275, size: 128, elements: !2278)
!2275 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !85, line: 129, baseType: !2276)
!2276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 48, baseType: !2277)
!2277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !89, line: 79, baseType: !7)
!2278 = !{!2279}
!2279 = !DISubrange(count: 4)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2271, file: !2270, line: 62, baseType: !100, size: 8, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !2266, file: !2262, line: 72, baseType: !2282, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !2283, line: 57, baseType: !2284)
!2283 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !2283, line: 51, size: 32, elements: !2285)
!2285 = !{!2286}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2284, file: !2283, line: 52, baseType: !2275, size: 32)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2263, file: !2262, line: 75, baseType: !100, size: 8, offset: 160)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2257, file: !2258, line: 244, baseType: !2261, size: 192, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2257, file: !2258, line: 244, baseType: !100, size: 8, offset: 384)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2257, file: !2258, line: 244, baseType: !100, size: 8, offset: 392)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2257, file: !2258, line: 244, baseType: !100, size: 8, offset: 400)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2257, file: !2258, line: 244, baseType: !100, size: 8, offset: 408)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2257, file: !2258, line: 246, baseType: !2256, size: 64, offset: 448)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2257, file: !2258, line: 246, baseType: !91, size: 64, offset: 512)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2257, file: !2258, line: 246, baseType: !69, size: 32, offset: 576)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2257, file: !2258, line: 246, baseType: !100, size: 8, offset: 608)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2257, file: !2258, line: 246, baseType: !84, size: 16, offset: 624)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !2257, file: !2258, line: 249, baseType: !84, size: 16, offset: 640)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2257, file: !2258, line: 251, baseType: !2300, size: 16, offset: 656)
!2300 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !2258, line: 206, baseType: !84)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !2257, file: !2258, line: 278, baseType: !100, size: 8, offset: 672)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !2257, file: !2258, line: 278, baseType: !100, size: 8, offset: 680)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !2257, file: !2258, line: 279, baseType: !100, size: 8, offset: 688)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !2257, file: !2258, line: 280, baseType: !2275, size: 32, offset: 704)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !2257, file: !2258, line: 283, baseType: !2275, size: 32, offset: 736)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !2257, file: !2258, line: 284, baseType: !2307, size: 32, offset: 768)
!2307 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !70, line: 51, baseType: !2275)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !2257, file: !2258, line: 285, baseType: !2307, size: 32, offset: 800)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !2257, file: !2258, line: 286, baseType: !2275, size: 32, offset: 832)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !2257, file: !2258, line: 295, baseType: !901, size: 16, offset: 864)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !2257, file: !2258, line: 297, baseType: !84, size: 16, offset: 880)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !2257, file: !2258, line: 300, baseType: !2275, size: 32, offset: 896)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !2257, file: !2258, line: 301, baseType: !2275, size: 32, offset: 928)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2257, file: !2258, line: 302, baseType: !901, size: 16, offset: 960)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !2257, file: !2258, line: 302, baseType: !901, size: 16, offset: 976)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !2257, file: !2258, line: 304, baseType: !901, size: 16, offset: 992)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !2257, file: !2258, line: 305, baseType: !100, size: 8, offset: 1008)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !2257, file: !2258, line: 308, baseType: !100, size: 8, offset: 1016)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !2257, file: !2258, line: 309, baseType: !2275, size: 32, offset: 1024)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !2257, file: !2258, line: 312, baseType: !2307, size: 32, offset: 1056)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !2257, file: !2258, line: 313, baseType: !2307, size: 32, offset: 1088)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !2257, file: !2258, line: 316, baseType: !2275, size: 32, offset: 1120)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !2257, file: !2258, line: 319, baseType: !2275, size: 32, offset: 1152)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !2257, file: !2258, line: 320, baseType: !2275, size: 32, offset: 1184)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !2257, file: !2258, line: 320, baseType: !2275, size: 32, offset: 1216)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !2257, file: !2258, line: 322, baseType: !2275, size: 32, offset: 1248)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !2257, file: !2258, line: 323, baseType: !2307, size: 32, offset: 1280)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !2257, file: !2258, line: 324, baseType: !2307, size: 32, offset: 1312)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !2257, file: !2258, line: 326, baseType: !2307, size: 32, offset: 1344)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !2257, file: !2258, line: 328, baseType: !84, size: 16, offset: 1376)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !2257, file: !2258, line: 332, baseType: !84, size: 16, offset: 1392)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !2257, file: !2258, line: 335, baseType: !2307, size: 32, offset: 1408)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !2257, file: !2258, line: 338, baseType: !2334, size: 64, offset: 1472)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !2336, line: 253, size: 256, elements: !2337)
!2336 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!2337 = !{!2338, !2339, !2340, !2341, !2342}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2335, file: !2336, line: 254, baseType: !2334, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2335, file: !2336, line: 255, baseType: !92, size: 64, offset: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2335, file: !2336, line: 256, baseType: !84, size: 16, offset: 128)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2335, file: !2336, line: 266, baseType: !100, size: 8, offset: 144)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !2335, file: !2336, line: 273, baseType: !2343, size: 64, offset: 192)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !2345, line: 56, size: 160, elements: !2346)
!2345 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2346 = !{!2347, !2348, !2349, !2350, !2351, !2352, !2353, !2354}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2344, file: !2345, line: 57, baseType: !84, size: 16)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2344, file: !2345, line: 58, baseType: !84, size: 16, offset: 16)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !2344, file: !2345, line: 59, baseType: !2275, size: 32, offset: 32)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !2344, file: !2345, line: 60, baseType: !2275, size: 32, offset: 64)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !2344, file: !2345, line: 61, baseType: !84, size: 16, offset: 96)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !2344, file: !2345, line: 62, baseType: !84, size: 16, offset: 112)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !2344, file: !2345, line: 63, baseType: !84, size: 16, offset: 128)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !2344, file: !2345, line: 64, baseType: !84, size: 16, offset: 144)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !2257, file: !2258, line: 339, baseType: !2334, size: 64, offset: 1536)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !2257, file: !2258, line: 341, baseType: !2334, size: 64, offset: 1600)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !2257, file: !2258, line: 344, baseType: !92, size: 64, offset: 1664)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !2257, file: !2258, line: 347, baseType: !2359, size: 64, offset: 1728)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !2258, line: 223, size: 704, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366, !2367, !2368, !2369, !2370, !2371, !2372, !2373}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2360, file: !2258, line: 225, baseType: !2261, size: 192)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2360, file: !2258, line: 225, baseType: !2261, size: 192, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2360, file: !2258, line: 225, baseType: !100, size: 8, offset: 384)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2360, file: !2258, line: 225, baseType: !100, size: 8, offset: 392)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2360, file: !2258, line: 225, baseType: !100, size: 8, offset: 400)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2360, file: !2258, line: 225, baseType: !100, size: 8, offset: 408)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2360, file: !2258, line: 227, baseType: !2359, size: 64, offset: 448)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2360, file: !2258, line: 227, baseType: !91, size: 64, offset: 512)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2360, file: !2258, line: 227, baseType: !69, size: 32, offset: 576)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2360, file: !2258, line: 227, baseType: !100, size: 8, offset: 608)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2360, file: !2258, line: 227, baseType: !84, size: 16, offset: 624)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !2360, file: !2258, line: 231, baseType: !2374, size: 64, offset: 640)
!2374 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !2258, line: 70, baseType: !2375)
!2375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2376, size: 64)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!1172, !91, !2256, !1172}
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !2257, file: !2258, line: 352, baseType: !2379, size: 64, offset: 1792)
!2379 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !2258, line: 96, baseType: !2380)
!2380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2381, size: 64)
!2381 = !DISubroutineType(types: !2382)
!2382 = !{!1172, !91, !2256, !84}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !2257, file: !2258, line: 354, baseType: !2384, size: 64, offset: 1856)
!2384 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !2258, line: 82, baseType: !2385)
!2385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2386, size: 64)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!1172, !91, !2256, !92, !1172}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !2257, file: !2258, line: 356, baseType: !2389, size: 64, offset: 1920)
!2389 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !2258, line: 134, baseType: !2375)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2257, file: !2258, line: 358, baseType: !2391, size: 64, offset: 1984)
!2391 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !2258, line: 108, baseType: !2392)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!1172, !91, !2256}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !2257, file: !2258, line: 360, baseType: !2396, size: 64, offset: 2048)
!2396 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !2258, line: 120, baseType: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{null, !91, !1172}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !2257, file: !2258, line: 369, baseType: !2275, size: 32, offset: 2112)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !2257, file: !2258, line: 376, baseType: !100, size: 8, offset: 2144)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !2257, file: !2258, line: 378, baseType: !100, size: 8, offset: 2152)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !2257, file: !2258, line: 380, baseType: !100, size: 8, offset: 2160)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !2257, file: !2258, line: 383, baseType: !100, size: 8, offset: 2168)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !2257, file: !2258, line: 386, baseType: !100, size: 8, offset: 2176)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !2257, file: !2258, line: 387, baseType: !100, size: 8, offset: 2184)
!2407 = !DILocalVariable(name: "old_level", scope: !2252, file: !3, line: 131, type: !110)
!2408 = distinct !DILocation(line: 151, column: 3, scope: !2244)
!2409 = !DILocation(line: 131, column: 3, scope: !2252, inlinedAt: !2408)
!2410 = !DILocation(line: 130, column: 19, scope: !2253, inlinedAt: !2408)
!2411 = !DILocation(line: 0, scope: !2412, inlinedAt: !2408)
!2412 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 133, column: 3)
!2413 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 133, column: 3)
!2414 = !DILocation(line: 133, column: 36, scope: !2412, inlinedAt: !2408)
!2415 = !DILocation(line: 133, column: 3, scope: !2413, inlinedAt: !2408)
!2416 = !DILocation(line: 134, column: 14, scope: !2417, inlinedAt: !2408)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 134, column: 9)
!2418 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 133, column: 61)
!2419 = !{!2420, !245, i64 200}
!2420 = !{!"tcp_pcb", !2421, i64 0, !2421, i64 24, !246, i64 48, !246, i64 49, !246, i64 50, !246, i64 51, !245, i64 56, !245, i64 64, !246, i64 72, !246, i64 76, !248, i64 78, !248, i64 80, !248, i64 82, !246, i64 84, !246, i64 85, !246, i64 86, !2422, i64 88, !2422, i64 92, !2422, i64 96, !2422, i64 100, !2422, i64 104, !248, i64 108, !248, i64 110, !2422, i64 112, !2422, i64 116, !248, i64 120, !248, i64 122, !248, i64 124, !246, i64 126, !246, i64 127, !2422, i64 128, !2422, i64 132, !2422, i64 136, !2422, i64 140, !2422, i64 144, !2422, i64 148, !2422, i64 152, !2422, i64 156, !2422, i64 160, !2422, i64 164, !2422, i64 168, !248, i64 172, !248, i64 174, !2422, i64 176, !245, i64 184, !245, i64 192, !245, i64 200, !245, i64 208, !245, i64 216, !245, i64 224, !245, i64 232, !245, i64 240, !245, i64 248, !245, i64 256, !2422, i64 264, !246, i64 268, !246, i64 269, !246, i64 270, !246, i64 271, !246, i64 272, !246, i64 273}
!2421 = !{!"ip_addr", !246, i64 0, !246, i64 20}
!2422 = !{!"int", !246, i64 0}
!2423 = !DILocation(line: 134, column: 20, scope: !2417, inlinedAt: !2408)
!2424 = !DILocation(line: 134, column: 9, scope: !2418, inlinedAt: !2408)
!2425 = !DILocation(line: 137, column: 7, scope: !2426, inlinedAt: !2408)
!2426 = distinct !DILexicalBlock(scope: !2417, file: !3, line: 134, column: 29)
!2427 = !DILocation(line: 138, column: 7, scope: !2426, inlinedAt: !2408)
!2428 = !DILocation(line: 133, column: 55, scope: !2412, inlinedAt: !2408)
!2429 = distinct !{!2429, !2430, !2431}
!2430 = !DILocation(line: 133, column: 3, scope: !2413)
!2431 = !DILocation(line: 140, column: 3, scope: !2413)
!2432 = !DILocation(line: 141, column: 1, scope: !2253, inlinedAt: !2408)
!2433 = !DILocation(line: 152, column: 1, scope: !2244)
