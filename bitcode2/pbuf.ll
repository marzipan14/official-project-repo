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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !195
  switch i32 %2, label %96 [
    i32 65, label %4
    i32 1, label %4
    i32 386, label %20
    i32 640, label %72
  ], !dbg !195

; <label>:4:                                      ; preds = %3, %3
  %5 = or i32 %2, 64, !dbg !208
  %6 = icmp eq i32 %5, 65, !dbg !208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %6, label %8, label %7, !dbg !208

; <label>:7:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #7, !dbg !211
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !214
  tail call void @ukplat_terminate(i32 3) #8, !dbg !214
  unreachable

; <label>:8:                                      ; preds = %4
  %9 = tail call i8* @memp_malloc(i32 15) #7, !dbg !218
  %10 = icmp eq i8* %9, null, !dbg !219
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !221
  br i1 %10, label %105, label %11, !dbg !221

; <label>:11:                                     ; preds = %8
  %12 = bitcast i8* %9 to %struct.pbuf**, !dbg !240
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !241, !tbaa !242
  %13 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !248
  %14 = bitcast i8* %13 to i8**, !dbg !248
  store i8* null, i8** %14, align 8, !dbg !249, !tbaa !250
  %15 = getelementptr inbounds i8, i8* %9, i64 16, !dbg !251
  %16 = bitcast i8* %15 to i16*, !dbg !251
  store i16 %1, i16* %16, align 8, !dbg !252, !tbaa !253
  %17 = getelementptr inbounds i8, i8* %9, i64 18, !dbg !254
  %18 = bitcast i8* %17 to i16*, !dbg !254
  store i16 %1, i16* %18, align 2, !dbg !255, !tbaa !256
  %19 = trunc i32 %2 to i8, !dbg !257
  br label %97, !dbg !258

; <label>:20:                                     ; preds = %3
  %21 = trunc i32 %0 to i16, !dbg !259
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  br label %22, !dbg !264

; <label>:22:                                     ; preds = %67, %20
  %23 = phi %struct.pbuf* [ null, %20 ], [ %28, %67 ], !dbg !265
  %24 = phi i16 [ %1, %20 ], [ %69, %67 ], !dbg !266
  %25 = phi i16 [ %21, %20 ], [ 0, %67 ], !dbg !260
  %26 = phi %struct.pbuf* [ null, %20 ], [ %68, %67 ], !dbg !267
  %27 = tail call i8* @memp_malloc(i32 16) #7, !dbg !268
  %28 = bitcast i8* %27 to %struct.pbuf*, !dbg !269
  %29 = icmp eq i8* %27, null, !dbg !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !273
  br i1 %29, label %30, label %43, !dbg !273

; <label>:30:                                     ; preds = %22
  %31 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !274
  %32 = load volatile i8, i8* @pbuf_free_ooseq_pending, align 1, !dbg !285, !tbaa !286
  store volatile i8 1, i8* @pbuf_free_ooseq_pending, align 1, !dbg !288, !tbaa !286
  tail call void @ukplat_lcpu_restore_irqf(i64 %31) #7, !dbg !289
  %33 = icmp eq i8 %32, 0, !dbg !290
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %33, label %34, label %39, !dbg !292

; <label>:34:                                     ; preds = %30
  %35 = tail call signext i8 @tcpip_try_callback(void (i8*)* nonnull @pbuf_free_ooseq_callback, i8* null) #7, !dbg !293
  %36 = icmp eq i8 %35, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !297
  br i1 %36, label %39, label %37, !dbg !297

; <label>:37:                                     ; preds = %34
  %38 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !298
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !301, !tbaa !286
  tail call void @ukplat_lcpu_restore_irqf(i64 %38) #7, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !301
  br label %39, !dbg !301

; <label>:39:                                     ; preds = %30, %34, %37
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  %40 = icmp eq %struct.pbuf* %26, null, !dbg !303
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %40, label %71, label %41, !dbg !305

; <label>:41:                                     ; preds = %39
  %42 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %26) #9, !dbg !306
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !308
  br label %71, !dbg !308

; <label>:43:                                     ; preds = %22
  %44 = sub i16 1514, %25, !dbg !309
  %45 = icmp ult i16 %24, %44, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !309
  %46 = select i1 %45, i16 %24, i16 %44, !dbg !309
  %47 = getelementptr inbounds i8, i8* %27, i64 24, !dbg !311
  %48 = zext i16 %25 to i64, !dbg !311
  %49 = getelementptr inbounds i8, i8* %47, i64 %48, !dbg !311
  %50 = bitcast i8* %27 to %struct.pbuf**, !dbg !319
  store %struct.pbuf* null, %struct.pbuf** %50, align 8, !dbg !320, !tbaa !242
  %51 = getelementptr inbounds i8, i8* %27, i64 8, !dbg !321
  %52 = bitcast i8* %51 to i8**, !dbg !321
  store i8* %49, i8** %52, align 8, !dbg !322, !tbaa !250
  %53 = getelementptr inbounds i8, i8* %27, i64 16, !dbg !323
  %54 = bitcast i8* %53 to i16*, !dbg !323
  store i16 %24, i16* %54, align 8, !dbg !324, !tbaa !253
  %55 = getelementptr inbounds i8, i8* %27, i64 18, !dbg !325
  %56 = bitcast i8* %55 to i16*, !dbg !325
  store i16 %46, i16* %56, align 2, !dbg !326, !tbaa !256
  %57 = getelementptr inbounds i8, i8* %27, i64 20, !dbg !327
  store i8 -126, i8* %57, align 4, !dbg !328, !tbaa !329
  %58 = getelementptr inbounds i8, i8* %27, i64 21, !dbg !330
  store i8 0, i8* %58, align 1, !dbg !331, !tbaa !332
  %59 = getelementptr inbounds i8, i8* %27, i64 22, !dbg !333
  store i8 1, i8* %59, align 2, !dbg !334, !tbaa !335
  %60 = getelementptr inbounds i8, i8* %27, i64 23, !dbg !336
  store i8 0, i8* %60, align 1, !dbg !337, !tbaa !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  %61 = icmp eq i16 %25, 1514, !dbg !342
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  br i1 %61, label %62, label %63, !dbg !345

; <label>:62:                                     ; preds = %43
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !346
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !349
  tail call void @ukplat_terminate(i32 3) #8, !dbg !349
  unreachable

; <label>:63:                                     ; preds = %43
  %64 = icmp eq %struct.pbuf* %26, null, !dbg !353
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !355
  br i1 %64, label %67, label %65, !dbg !355

; <label>:65:                                     ; preds = %63
  %66 = bitcast %struct.pbuf* %23 to i8**, !dbg !356
  store i8* %27, i8** %66, align 8, !dbg !356, !tbaa !242
  br label %67

; <label>:67:                                     ; preds = %63, %65
  %68 = phi %struct.pbuf* [ %26, %65 ], [ %28, %63 ], !dbg !358
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %69 = sub i16 %24, %46, !dbg !359
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %70 = icmp eq i16 %69, 0, !dbg !361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br i1 %70, label %107, label %22, !dbg !362, !llvm.loop !363

; <label>:71:                                     ; preds = %39, %41
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  br label %109

; <label>:72:                                     ; preds = %3
  %73 = and i32 %0, 65535, !dbg !366
  %74 = trunc i32 %0 to i16, !dbg !367
  %75 = add i16 %74, %1, !dbg !367
  %76 = zext i16 %75 to i64, !dbg !369
  %77 = add nuw nsw i64 %76, 24, !dbg !370
  %78 = icmp ult i16 %75, %1, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !374
  br i1 %78, label %109, label %79, !dbg !374

; <label>:79:                                     ; preds = %72
  %80 = zext i16 %1 to i64, !dbg !375
  %81 = icmp ult i64 %77, %80, !dbg !376
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !377
  br i1 %81, label %109, label %82, !dbg !377

; <label>:82:                                     ; preds = %79
  %83 = tail call i8* @mem_malloc(i64 %77) #7, !dbg !378
  %84 = icmp eq i8* %83, null, !dbg !379
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %84, label %109, label %85, !dbg !381

; <label>:85:                                     ; preds = %82
  %86 = getelementptr inbounds i8, i8* %83, i64 24, !dbg !382
  %87 = zext i32 %73 to i64, !dbg !382
  %88 = getelementptr inbounds i8, i8* %86, i64 %87, !dbg !382
  %89 = bitcast i8* %83 to %struct.pbuf**, !dbg !390
  store %struct.pbuf* null, %struct.pbuf** %89, align 8, !dbg !391, !tbaa !242
  %90 = getelementptr inbounds i8, i8* %83, i64 8, !dbg !392
  %91 = bitcast i8* %90 to i8**, !dbg !392
  store i8* %88, i8** %91, align 8, !dbg !393, !tbaa !250
  %92 = getelementptr inbounds i8, i8* %83, i64 16, !dbg !394
  %93 = bitcast i8* %92 to i16*, !dbg !394
  store i16 %1, i16* %93, align 8, !dbg !395, !tbaa !253
  %94 = getelementptr inbounds i8, i8* %83, i64 18, !dbg !396
  %95 = bitcast i8* %94 to i16*, !dbg !396
  store i16 %1, i16* %95, align 2, !dbg !397, !tbaa !256
  br label %97

; <label>:96:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0)) #9, !dbg !398
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !403
  tail call void @ukplat_terminate(i32 3) #8, !dbg !403
  unreachable

; <label>:97:                                     ; preds = %85, %11
  %98 = phi i8* [ %9, %11 ], [ %83, %85 ]
  %99 = phi i8 [ %19, %11 ], [ -128, %85 ]
  %100 = bitcast i8* %98 to %struct.pbuf*, !dbg !407
  %101 = getelementptr inbounds i8, i8* %98, i64 20, !dbg !408
  store i8 %99, i8* %101, align 4, !dbg !409, !tbaa !329
  %102 = getelementptr inbounds i8, i8* %98, i64 21, !dbg !410
  store i8 0, i8* %102, align 1, !dbg !411, !tbaa !332
  %103 = getelementptr inbounds i8, i8* %98, i64 22, !dbg !412
  store i8 1, i8* %103, align 2, !dbg !413, !tbaa !335
  %104 = getelementptr inbounds i8, i8* %98, i64 23, !dbg !414
  store i8 0, i8* %104, align 1, !dbg !415, !tbaa !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  br label %105, !dbg !417

; <label>:105:                                    ; preds = %97, %8
  %106 = phi %struct.pbuf* [ null, %8 ], [ %100, %97 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br label %107, !dbg !417

; <label>:107:                                    ; preds = %67, %105
  %108 = phi %struct.pbuf* [ %106, %105 ], [ %68, %67 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br label %109, !dbg !418

; <label>:109:                                    ; preds = %79, %72, %82, %71, %107
  %110 = phi %struct.pbuf* [ %108, %107 ], [ null, %71 ], [ null, %82 ], [ null, %72 ], [ null, %79 ], !dbg !419
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  ret %struct.pbuf* %110, !dbg !420
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloc_reference(i8*, i16 zeroext, i32) local_unnamed_addr #0 !dbg !197 {
  %4 = or i32 %2, 64, !dbg !424
  %5 = icmp eq i32 %4, 65, !dbg !424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  br i1 %5, label %7, label %6, !dbg !424

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0)) #9, !dbg !425
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !426
  tail call void @ukplat_terminate(i32 3) #8, !dbg !426
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = tail call i8* @memp_malloc(i32 15) #7, !dbg !427
  %9 = icmp eq i8* %8, null, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %9, label %24, label %10, !dbg !429

; <label>:10:                                     ; preds = %7
  %11 = bitcast i8* %8 to %struct.pbuf*, !dbg !430
  %12 = bitcast i8* %8 to %struct.pbuf**, !dbg !439
  store %struct.pbuf* null, %struct.pbuf** %12, align 8, !dbg !440, !tbaa !242
  %13 = getelementptr inbounds i8, i8* %8, i64 8, !dbg !441
  %14 = bitcast i8* %13 to i8**, !dbg !441
  store i8* %0, i8** %14, align 8, !dbg !442, !tbaa !250
  %15 = getelementptr inbounds i8, i8* %8, i64 16, !dbg !443
  %16 = bitcast i8* %15 to i16*, !dbg !443
  store i16 %1, i16* %16, align 8, !dbg !444, !tbaa !253
  %17 = getelementptr inbounds i8, i8* %8, i64 18, !dbg !445
  %18 = bitcast i8* %17 to i16*, !dbg !445
  store i16 %1, i16* %18, align 2, !dbg !446, !tbaa !256
  %19 = trunc i32 %2 to i8, !dbg !447
  %20 = getelementptr inbounds i8, i8* %8, i64 20, !dbg !448
  store i8 %19, i8* %20, align 4, !dbg !449, !tbaa !329
  %21 = getelementptr inbounds i8, i8* %8, i64 21, !dbg !450
  store i8 0, i8* %21, align 1, !dbg !451, !tbaa !332
  %22 = getelementptr inbounds i8, i8* %8, i64 22, !dbg !452
  store i8 1, i8* %22, align 2, !dbg !453, !tbaa !335
  %23 = getelementptr inbounds i8, i8* %8, i64 23, !dbg !454
  store i8 0, i8* %23, align 1, !dbg !455, !tbaa !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !456
  br label %24, !dbg !457

; <label>:24:                                     ; preds = %7, %10
  %25 = phi %struct.pbuf* [ %11, %10 ], [ null, %7 ], !dbg !458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !461
  ret %struct.pbuf* %25, !dbg !461
}

; Function Attrs: noredzone
declare dso_local i8* @memp_malloc(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #0 !dbg !462 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  br i1 %2, label %4, label %3, !dbg !481

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %5, !dbg !484

; <label>:4:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !485
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !491
  tail call void @ukplat_terminate(i32 3) #8, !dbg !491
  unreachable

; <label>:5:                                      ; preds = %3, %47
  %6 = phi %struct.pbuf* [ %0, %3 ], [ %18, %47 ]
  %7 = phi i8 [ 0, %3 ], [ %48, %47 ]
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !495
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 6, !dbg !498
  %10 = load i8, i8* %9, align 2, !dbg !498, !tbaa !335
  %11 = icmp eq i8 %10, 0, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br i1 %11, label %12, label %13, !dbg !501

; <label>:12:                                     ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i64 0, i64 0)) #9, !dbg !502
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !505
  tail call void @ukplat_terminate(i32 3) #8, !dbg !505
  unreachable

; <label>:13:                                     ; preds = %5
  %14 = add i8 %10, -1, !dbg !509
  store i8 %14, i8* %9, align 2, !dbg !509, !tbaa !335
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #7, !dbg !511
  %15 = icmp eq i8 %14, 0, !dbg !512
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  br i1 %15, label %16, label %46, !dbg !513

; <label>:16:                                     ; preds = %13
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !514
  %18 = load %struct.pbuf*, %struct.pbuf** %17, align 8, !dbg !514, !tbaa !242
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 4, !dbg !516
  %20 = load i8, i8* %19, align 4, !dbg !516, !tbaa !329
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 5, !dbg !517
  %22 = load i8, i8* %21, align 1, !dbg !517, !tbaa !332
  %23 = and i8 %22, 2, !dbg !518
  %24 = icmp eq i8 %23, 0, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !520
  br i1 %24, label %32, label %25, !dbg !520

; <label>:25:                                     ; preds = %16
  %26 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 1, !dbg !522
  %27 = bitcast %struct.pbuf* %26 to void (%struct.pbuf*)**, !dbg !522
  %28 = load void (%struct.pbuf*)*, void (%struct.pbuf*)** %27, align 8, !dbg !522, !tbaa !525
  %29 = icmp eq void (%struct.pbuf*)* %28, null, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !527
  br i1 %29, label %30, label %31, !dbg !527

; <label>:30:                                     ; preds = %25
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i64 0, i64 0)) #9, !dbg !528
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !531
  tail call void @ukplat_terminate(i32 3) #8, !dbg !531
  unreachable

; <label>:31:                                     ; preds = %25
  tail call void %28(%struct.pbuf* nonnull %6) #7, !dbg !535
  br label %47, !dbg !536

; <label>:32:                                     ; preds = %16
  %33 = and i8 %20, 15, !dbg !516
  %34 = icmp eq i8 %33, 2, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !541
  br i1 %34, label %35, label %37, !dbg !541

; <label>:35:                                     ; preds = %32
  %36 = bitcast %struct.pbuf* %6 to i8*, !dbg !542
  tail call void @memp_free(i32 16, i8* %36) #7, !dbg !544
  br label %47, !dbg !545

; <label>:37:                                     ; preds = %32
  %38 = icmp eq i8 %33, 1, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %38, label %39, label %41, !dbg !548

; <label>:39:                                     ; preds = %37
  %40 = bitcast %struct.pbuf* %6 to i8*, !dbg !549
  tail call void @memp_free(i32 15, i8* %40) #7, !dbg !551
  br label %47, !dbg !552

; <label>:41:                                     ; preds = %37
  %42 = icmp eq i8 %33, 0, !dbg !553
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !555
  br i1 %42, label %43, label %45, !dbg !555

; <label>:43:                                     ; preds = %41
  %44 = bitcast %struct.pbuf* %6 to i8*, !dbg !556
  tail call void @mem_free(i8* %44) #7, !dbg !558
  br label %47

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.14, i64 0, i64 0)) #9, !dbg !559
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !565
  tail call void @ukplat_terminate(i32 3) #8, !dbg !565
  unreachable

; <label>:46:                                     ; preds = %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %50, !dbg !484

; <label>:47:                                     ; preds = %31, %39, %43, %35
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %48 = add i8 %7, 1, !dbg !569
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  %49 = icmp eq %struct.pbuf* %18, null, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %49, label %50, label %5, !dbg !484, !llvm.loop !572

; <label>:50:                                     ; preds = %47, %46
  %51 = phi i8 [ %7, %46 ], [ %48, %47 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  ret i8 %51, !dbg !575
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !139 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !577
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !579
  call void @llvm.va_start(i8* nonnull %3), !dbg !579
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.38, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !580
  call void @llvm.va_end(i8* nonnull %3), !dbg !583
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !584
  ret void, !dbg !584
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local i8* @mem_malloc(i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_alloced_custom(i32, i16 zeroext, i32, %struct.pbuf_custom*, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !585 {
  %7 = and i32 %0, 65535, !dbg !604
  %8 = zext i16 %1 to i32, !dbg !606
  %9 = add nuw nsw i32 %7, %8, !dbg !607
  %10 = zext i16 %5 to i32, !dbg !608
  %11 = icmp ugt i32 %9, %10, !dbg !609
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !610
  br i1 %11, label %27, label %12, !dbg !610

; <label>:12:                                     ; preds = %6
  %13 = icmp eq i8* %4, null, !dbg !611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !613
  %14 = zext i32 %7 to i64, !dbg !614
  %15 = getelementptr inbounds i8, i8* %4, i64 %14, !dbg !614
  %16 = select i1 %13, i8* null, i8* %15, !dbg !613
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %17 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, !dbg !617
  %18 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 0, !dbg !625
  store %struct.pbuf* null, %struct.pbuf** %18, align 8, !dbg !626, !tbaa !242
  %19 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 1, !dbg !627
  store i8* %16, i8** %19, align 8, !dbg !628, !tbaa !250
  %20 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 2, !dbg !629
  store i16 %1, i16* %20, align 8, !dbg !630, !tbaa !253
  %21 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 3, !dbg !631
  store i16 %1, i16* %21, align 2, !dbg !632, !tbaa !256
  %22 = trunc i32 %2 to i8, !dbg !633
  %23 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 4, !dbg !634
  store i8 %22, i8* %23, align 4, !dbg !635, !tbaa !329
  %24 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 5, !dbg !636
  store i8 2, i8* %24, align 1, !dbg !637, !tbaa !332
  %25 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 6, !dbg !638
  store i8 1, i8* %25, align 2, !dbg !639, !tbaa !335
  %26 = getelementptr inbounds %struct.pbuf_custom, %struct.pbuf_custom* %3, i64 0, i32 0, i32 7, !dbg !640
  store i8 0, i8* %26, align 1, !dbg !641, !tbaa !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !642
  br label %27, !dbg !643

; <label>:27:                                     ; preds = %6, %12
  %28 = phi %struct.pbuf* [ %17, %12 ], [ null, %6 ], !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  ret %struct.pbuf* %28, !dbg !647
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !648 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !659
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !662
  br i1 %3, label %4, label %5, !dbg !662

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0)) #9, !dbg !663
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !666
  tail call void @ukplat_terminate(i32 3) #8, !dbg !666
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !670
  %7 = load i16, i16* %6, align 8, !dbg !670, !tbaa !253
  %8 = icmp ugt i16 %7, %1, !dbg !672
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %8, label %9, label %65, !dbg !673

; <label>:9:                                      ; preds = %5
  %10 = sub i16 %1, %7
  br label %11, !dbg !676

; <label>:11:                                     ; preds = %9, %17
  %12 = phi i16 [ %18, %17 ], [ %1, %9 ], !dbg !677
  %13 = phi %struct.pbuf* [ %23, %17 ], [ %0, %9 ], !dbg !677
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !676
  %15 = load i16, i16* %14, align 2, !dbg !676, !tbaa !256
  %16 = icmp ugt i16 %12, %15, !dbg !681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %16, label %17, label %26, !dbg !682

; <label>:17:                                     ; preds = %11
  %18 = sub i16 %12, %15, !dbg !683
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 2, !dbg !684
  %20 = load i16, i16* %19, align 8, !dbg !684, !tbaa !253
  %21 = add i16 %10, %20, !dbg !685
  store i16 %21, i16* %19, align 8, !dbg !686, !tbaa !253
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 0, !dbg !687
  %23 = load %struct.pbuf*, %struct.pbuf** %22, align 8, !dbg !687, !tbaa !242
  %24 = icmp eq %struct.pbuf* %23, null, !dbg !688
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !691
  br i1 %24, label %25, label %11, !dbg !691, !llvm.loop !692

; <label>:25:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0)) #9, !dbg !694
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !697
  tail call void @ukplat_terminate(i32 3) #8, !dbg !697
  unreachable

; <label>:26:                                     ; preds = %11
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 3, !dbg !676
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 4, !dbg !701
  %29 = load i8, i8* %28, align 4, !dbg !701, !tbaa !329
  %30 = and i8 %29, 15, !dbg !701
  %31 = icmp eq i8 %30, 0, !dbg !701
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !703
  br i1 %31, label %32, label %55, !dbg !703

; <label>:32:                                     ; preds = %26
  %33 = icmp eq i16 %12, %15, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !705
  br i1 %33, label %55, label %34, !dbg !705

; <label>:34:                                     ; preds = %32
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 5, !dbg !706
  %36 = load i8, i8* %35, align 1, !dbg !706, !tbaa !332
  %37 = and i8 %36, 2, !dbg !707
  %38 = icmp eq i8 %37, 0, !dbg !708
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br i1 %38, label %39, label %55, !dbg !709

; <label>:39:                                     ; preds = %34
  %40 = bitcast %struct.pbuf* %13 to i8*, !dbg !710
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %13, i64 0, i32 1, !dbg !712
  %42 = bitcast i8** %41 to i64*, !dbg !712
  %43 = load i64, i64* %42, align 8, !dbg !712, !tbaa !250
  %44 = ptrtoint %struct.pbuf* %13 to i64, !dbg !713
  %45 = zext i16 %12 to i64, !dbg !714
  %46 = sub i64 %45, %44, !dbg !713
  %47 = add i64 %46, %43, !dbg !715
  %48 = tail call i8* @mem_trim(i8* %40, i64 %47) #7, !dbg !716
  %49 = icmp eq i8* %48, null, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %49, label %54, label %50, !dbg !720

; <label>:50:                                     ; preds = %39
  %51 = bitcast i8* %48 to %struct.pbuf*, !dbg !721
  %52 = getelementptr inbounds i8, i8* %48, i64 18, !dbg !722
  %53 = bitcast i8* %52 to i16*, !dbg !722
  br label %55, !dbg !720

; <label>:54:                                     ; preds = %39
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0)) #9, !dbg !723
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !726
  tail call void @ukplat_terminate(i32 3) #8, !dbg !726
  unreachable

; <label>:55:                                     ; preds = %50, %32, %34, %26
  %56 = phi i16* [ %53, %50 ], [ %27, %32 ], [ %27, %34 ], [ %27, %26 ], !dbg !722
  %57 = phi %struct.pbuf* [ %51, %50 ], [ %13, %32 ], [ %13, %34 ], [ %13, %26 ], !dbg !730
  store i16 %12, i16* %56, align 2, !dbg !731, !tbaa !256
  %58 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 2, !dbg !732
  store i16 %12, i16* %58, align 8, !dbg !733, !tbaa !253
  %59 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %57, i64 0, i32 0, !dbg !734
  %60 = load %struct.pbuf*, %struct.pbuf** %59, align 8, !dbg !734, !tbaa !242
  %61 = icmp eq %struct.pbuf* %60, null, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  br i1 %61, label %64, label %62, !dbg !737

; <label>:62:                                     ; preds = %55
  %63 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %60) #9, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !740
  br label %64, !dbg !740

; <label>:64:                                     ; preds = %55, %62
  store %struct.pbuf* null, %struct.pbuf** %59, align 8, !dbg !741, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  br label %65, !dbg !742

; <label>:65:                                     ; preds = %5, %64
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !742
  ret void, !dbg !742
}

; Function Attrs: noredzone
declare dso_local i8* @mem_trim(i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !743 {
  %3 = tail call fastcc zeroext i8 @pbuf_add_header_impl(%struct.pbuf* %0, i64 %1, i8 zeroext 0) #9, !dbg !751
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !752
  ret i8 %3, !dbg !752
}

; Function Attrs: noredzone nounwind
define internal fastcc zeroext i8 @pbuf_add_header_impl(%struct.pbuf*, i64, i8 zeroext) unnamed_addr #0 !dbg !753 {
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !766
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !769
  br i1 %4, label %5, label %6, !dbg !769

; <label>:5:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !770
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !773
  tail call void @ukplat_terminate(i32 3) #8, !dbg !773
  unreachable

; <label>:6:                                      ; preds = %3
  %7 = icmp ugt i64 %1, 65535, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %7, label %44, label %8, !dbg !779

; <label>:8:                                      ; preds = %6
  %9 = icmp eq i64 %1, 0, !dbg !780
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br i1 %9, label %44, label %10, !dbg !782

; <label>:10:                                     ; preds = %8
  %11 = trunc i64 %1 to i32, !dbg !783
  %12 = and i32 %11, 65535, !dbg !784
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !787
  %14 = load i16, i16* %13, align 8, !dbg !787, !tbaa !253
  %15 = trunc i64 %1 to i16, !dbg !788
  %16 = add i16 %14, %15, !dbg !788
  %17 = zext i16 %16 to i32, !dbg !788
  %18 = icmp ugt i32 %12, %17, !dbg !789
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  br i1 %18, label %44, label %19, !dbg !790

; <label>:19:                                     ; preds = %10
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 4, !dbg !791
  %21 = load i8, i8* %20, align 4, !dbg !791, !tbaa !329
  %22 = icmp slt i8 %21, 0, !dbg !792
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !794
  br i1 %22, label %23, label %31, !dbg !794

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !795
  %25 = load i8*, i8** %24, align 8, !dbg !795, !tbaa !250
  %26 = sub i64 0, %1, !dbg !797
  %27 = getelementptr inbounds i8, i8* %25, i64 %26, !dbg !797
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, !dbg !799
  %29 = bitcast %struct.pbuf* %28 to i8*, !dbg !799
  %30 = icmp ult i8* %27, %29, !dbg !801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %30, label %44, label %38, !dbg !802

; <label>:31:                                     ; preds = %19
  %32 = icmp eq i8 %2, 0, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !806
  br i1 %32, label %44, label %33, !dbg !806

; <label>:33:                                     ; preds = %31
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !807
  %35 = load i8*, i8** %34, align 8, !dbg !807, !tbaa !250
  %36 = sub i64 0, %1, !dbg !809
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !809
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %38

; <label>:38:                                     ; preds = %23, %33
  %39 = phi i8** [ %24, %23 ], [ %34, %33 ], !dbg !810
  %40 = phi i8* [ %27, %23 ], [ %37, %33 ], !dbg !811
  store i8* %40, i8** %39, align 8, !dbg !812, !tbaa !250
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !813
  %42 = load i16, i16* %41, align 2, !dbg !813, !tbaa !256
  %43 = add i16 %42, %15, !dbg !814
  store i16 %43, i16* %41, align 2, !dbg !815, !tbaa !256
  store i16 %16, i16* %13, align 8, !dbg !816, !tbaa !253
  br label %44, !dbg !817

; <label>:44:                                     ; preds = %31, %23, %10, %8, %6, %38
  %45 = phi i8 [ 0, %38 ], [ 1, %6 ], [ 0, %8 ], [ 1, %10 ], [ 1, %23 ], [ 1, %31 ], !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !822
  ret i8 %45, !dbg !822
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_add_header_force(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !823 {
  %3 = tail call fastcc zeroext i8 @pbuf_add_header_impl(%struct.pbuf* %0, i64 %1, i8 zeroext 1) #9, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  ret i8 %3, !dbg !830
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #0 !dbg !831 {
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !839
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !842
  br i1 %3, label %4, label %5, !dbg !842

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0)) #9, !dbg !843
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !846
  tail call void @ukplat_terminate(i32 3) #8, !dbg !846
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp ugt i64 %1, 65535, !dbg !850
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !852
  br i1 %6, label %26, label %7, !dbg !852

; <label>:7:                                      ; preds = %5
  %8 = icmp eq i64 %1, 0, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %8, label %26, label %9, !dbg !855

; <label>:9:                                      ; preds = %7
  %10 = trunc i64 %1 to i32, !dbg !856
  %11 = and i32 %10, 65535, !dbg !857
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !857
  %13 = load i16, i16* %12, align 2, !dbg !857, !tbaa !256
  %14 = zext i16 %13 to i32, !dbg !857
  %15 = icmp ugt i32 %11, %14, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %15, label %16, label %17, !dbg !861

; <label>:16:                                     ; preds = %9
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0)) #9, !dbg !862
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !865
  tail call void @ukplat_terminate(i32 3) #8, !dbg !865
  unreachable

; <label>:17:                                     ; preds = %9
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !869
  %19 = load i8*, i8** %18, align 8, !dbg !871, !tbaa !250
  %20 = getelementptr inbounds i8, i8* %19, i64 %1, !dbg !872
  store i8* %20, i8** %18, align 8, !dbg !873, !tbaa !250
  %21 = trunc i64 %1 to i16, !dbg !874
  %22 = sub i16 %13, %21, !dbg !874
  store i16 %22, i16* %12, align 2, !dbg !875, !tbaa !256
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !876
  %24 = load i16, i16* %23, align 8, !dbg !876, !tbaa !253
  %25 = sub i16 %24, %21, !dbg !877
  store i16 %25, i16* %23, align 8, !dbg !878, !tbaa !253
  br label %26, !dbg !879

; <label>:26:                                     ; preds = %7, %5, %17
  %27 = phi i8 [ 0, %17 ], [ 1, %5 ], [ 0, %7 ], !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !883
  ret i8 %27, !dbg !883
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !884 {
  %3 = icmp slt i16 %1, 0, !dbg !907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !909
  %4 = sext i16 %1 to i64, !dbg !910
  br i1 %3, label %5, label %8, !dbg !909

; <label>:5:                                      ; preds = %2
  %6 = sub nsw i64 0, %4, !dbg !912
  %7 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 %6) #7, !dbg !914
  br label %10, !dbg !915

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc zeroext i8 @pbuf_add_header_impl(%struct.pbuf* %0, i64 %4, i8 zeroext 0) #7, !dbg !916
  br label %10, !dbg !917

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i8 [ %7, %5 ], [ %9, %8 ], !dbg !910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !918
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !919
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !920
  ret i8 %11, !dbg !920
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_header_force(%struct.pbuf*, i16 signext) local_unnamed_addr #0 !dbg !921 {
  %3 = icmp slt i16 %1, 0, !dbg !931
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !932
  %4 = sext i16 %1 to i64, !dbg !933
  br i1 %3, label %5, label %8, !dbg !932

; <label>:5:                                      ; preds = %2
  %6 = sub nsw i64 0, %4, !dbg !934
  %7 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 %6) #7, !dbg !935
  br label %10, !dbg !936

; <label>:8:                                      ; preds = %2
  %9 = tail call fastcc zeroext i8 @pbuf_add_header_impl(%struct.pbuf* %0, i64 %4, i8 zeroext 1) #7, !dbg !937
  br label %10, !dbg !938

; <label>:10:                                     ; preds = %5, %8
  %11 = phi i8 [ %7, %5 ], [ %9, %8 ], !dbg !933
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !940
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !941
  ret i8 %11, !dbg !941
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_free_header(%struct.pbuf*, i16 zeroext) local_unnamed_addr #0 !dbg !942 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  %3 = icmp ne i16 %1, 0, !dbg !959
  %4 = icmp ne %struct.pbuf* %0, null, !dbg !960
  %5 = and i1 %3, %4, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %5, label %6, label %23, !dbg !958

; <label>:6:                                      ; preds = %2, %15
  %7 = phi %struct.pbuf* [ %18, %15 ], [ %0, %2 ]
  %8 = phi i16 [ %16, %15 ], [ %1, %2 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !961
  %10 = load i16, i16* %9, align 2, !dbg !961, !tbaa !256
  %11 = icmp ult i16 %8, %10, !dbg !962
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !963
  br i1 %11, label %12, label %15, !dbg !963

; <label>:12:                                     ; preds = %6
  %13 = zext i16 %8 to i64, !dbg !964
  %14 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %7, i64 %13) #9, !dbg !966
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br label %23, !dbg !958

; <label>:15:                                     ; preds = %6
  %16 = sub i16 %8, %10, !dbg !968
  %17 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !969
  %18 = load %struct.pbuf*, %struct.pbuf** %17, align 8, !dbg !969, !tbaa !242
  store %struct.pbuf* null, %struct.pbuf** %17, align 8, !dbg !970, !tbaa !242
  %19 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %7) #9, !dbg !971
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !972
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  %20 = icmp ne i16 %16, 0, !dbg !959
  %21 = icmp ne %struct.pbuf* %18, null, !dbg !960
  %22 = and i1 %20, %21, !dbg !960
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !958
  br i1 %22, label %6, label %23, !dbg !958, !llvm.loop !973

; <label>:23:                                     ; preds = %15, %12, %2
  %24 = phi %struct.pbuf* [ %0, %2 ], [ %7, %12 ], [ %18, %15 ], !dbg !975
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !976
  ret %struct.pbuf* %24, !dbg !976
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
define dso_local zeroext i16 @pbuf_clen(%struct.pbuf* readonly) local_unnamed_addr #0 !dbg !977 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %2, label %10, label %3, !dbg !987

; <label>:3:                                      ; preds = %1, %3
  %4 = phi i16 [ %6, %3 ], [ 0, %1 ]
  %5 = phi %struct.pbuf* [ %8, %3 ], [ %0, %1 ]
  %6 = add i16 %4, 1, !dbg !989
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !991
  %8 = load %struct.pbuf*, %struct.pbuf** %7, align 8, !dbg !991, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  %9 = icmp eq %struct.pbuf* %8, null, !dbg !988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !987
  br i1 %9, label %10, label %3, !dbg !987, !llvm.loop !992

; <label>:10:                                     ; preds = %3, %1
  %11 = phi i16 [ 0, %1 ], [ %6, %3 ], !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !995
  ret i16 %11, !dbg !995
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_ref(%struct.pbuf*) local_unnamed_addr #0 !dbg !996 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !1004
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1005
  br i1 %2, label %11, label %3, !dbg !1005

; <label>:3:                                      ; preds = %1
  %4 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1006
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1008
  %6 = load i8, i8* %5, align 2, !dbg !1008, !tbaa !335
  %7 = add i8 %6, 1, !dbg !1008
  store i8 %7, i8* %5, align 2, !dbg !1008, !tbaa !335
  tail call void @ukplat_lcpu_restore_irqf(i64 %4) #7, !dbg !1008
  %8 = load i8, i8* %5, align 2, !dbg !1009, !tbaa !335
  %9 = icmp eq i8 %8, 0, !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  br i1 %9, label %10, label %11, !dbg !1012

; <label>:10:                                     ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #9, !dbg !1013
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1016
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1016
  unreachable

; <label>:11:                                     ; preds = %3, %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1020
  ret void, !dbg !1020
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_cat(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1021 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1030
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1030
  %5 = and i1 %3, %4, !dbg !1030
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1030
  br i1 %5, label %7, label %6, !dbg !1030

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.16, i64 0, i64 0)) #9, !dbg !1033
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1036
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1036
  unreachable

; <label>:7:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1041
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1043
  %9 = load %struct.pbuf*, %struct.pbuf** %8, align 8, !dbg !1043, !tbaa !242
  %10 = icmp eq %struct.pbuf* %9, null, !dbg !1045
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1046
  %12 = load i16, i16* %11, align 8, !dbg !1046, !tbaa !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %10, label %28, label %13, !dbg !1049

; <label>:13:                                     ; preds = %7
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2
  br label %15, !dbg !1049

; <label>:15:                                     ; preds = %13, %15
  %16 = phi i16 [ %12, %13 ], [ %25, %15 ]
  %17 = phi i16* [ %11, %13 ], [ %24, %15 ]
  %18 = phi %struct.pbuf* [ %9, %13 ], [ %22, %15 ]
  %19 = load i16, i16* %14, align 8, !dbg !1050, !tbaa !253
  %20 = add i16 %19, %16, !dbg !1052
  store i16 %20, i16* %17, align 8, !dbg !1053, !tbaa !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1054
  %21 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1043
  %22 = load %struct.pbuf*, %struct.pbuf** %21, align 8, !dbg !1043, !tbaa !242
  %23 = icmp eq %struct.pbuf* %22, null, !dbg !1045
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 2, !dbg !1046
  %25 = load i16, i16* %24, align 8, !dbg !1046, !tbaa !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1049
  br i1 %23, label %26, label %15, !dbg !1049, !llvm.loop !1055

; <label>:26:                                     ; preds = %15
  %27 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %18, i64 0, i32 0, !dbg !1043
  br label %28, !dbg !1057

; <label>:28:                                     ; preds = %26, %7
  %29 = phi %struct.pbuf* [ %0, %7 ], [ %18, %26 ], !dbg !1058
  %30 = phi %struct.pbuf** [ %8, %7 ], [ %27, %26 ], !dbg !1043
  %31 = phi i16* [ %11, %7 ], [ %24, %26 ], !dbg !1046
  %32 = phi i16 [ %12, %7 ], [ %25, %26 ], !dbg !1046
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %29, i64 0, i32 3, !dbg !1057
  %34 = load i16, i16* %33, align 2, !dbg !1057, !tbaa !256
  %35 = icmp eq i16 %32, %34, !dbg !1057
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1059
  br i1 %35, label %37, label %36, !dbg !1059

; <label>:36:                                     ; preds = %28
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !1060
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1063
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1063
  unreachable

; <label>:37:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1067
  %38 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1069
  %39 = load i16, i16* %38, align 8, !dbg !1069, !tbaa !253
  %40 = add i16 %39, %32, !dbg !1070
  store i16 %40, i16* %31, align 8, !dbg !1071, !tbaa !253
  store %struct.pbuf* %1, %struct.pbuf** %30, align 8, !dbg !1072, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  ret void, !dbg !1073
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_chain(%struct.pbuf*, %struct.pbuf*) local_unnamed_addr #0 !dbg !1074 {
  tail call void @pbuf_cat(%struct.pbuf* %0, %struct.pbuf* %1) #9, !dbg !1080
  %3 = icmp eq %struct.pbuf* %1, null, !dbg !1083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1084
  br i1 %3, label %12, label %4, !dbg !1084

; <label>:4:                                      ; preds = %2
  %5 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !1085
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 6, !dbg !1086
  %7 = load i8, i8* %6, align 2, !dbg !1086, !tbaa !335
  %8 = add i8 %7, 1, !dbg !1086
  store i8 %8, i8* %6, align 2, !dbg !1086, !tbaa !335
  tail call void @ukplat_lcpu_restore_irqf(i64 %5) #7, !dbg !1086
  %9 = load i8, i8* %6, align 2, !dbg !1087, !tbaa !335
  %10 = icmp eq i8 %9, 0, !dbg !1087
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1088
  br i1 %10, label %11, label %12, !dbg !1088

; <label>:11:                                     ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.15, i64 0, i64 0)) #7, !dbg !1089
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !1090
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1090
  unreachable

; <label>:12:                                     ; preds = %2, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1091
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1092
  ret void, !dbg !1092
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_dechain(%struct.pbuf* nocapture) local_unnamed_addr #0 !dbg !1093 {
  %2 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1102
  %3 = load %struct.pbuf*, %struct.pbuf** %2, align 8, !dbg !1102, !tbaa !242
  %4 = icmp eq %struct.pbuf* %3, null, !dbg !1104
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %4, label %5, label %8, !dbg !1106

; <label>:5:                                      ; preds = %1
  %6 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1107
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1107
  br label %24, !dbg !1106

; <label>:8:                                      ; preds = %1
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %3, i64 0, i32 2, !dbg !1110
  %10 = load i16, i16* %9, align 8, !dbg !1110, !tbaa !253
  %11 = zext i16 %10 to i32, !dbg !1110
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1110
  %13 = load i16, i16* %12, align 8, !dbg !1110, !tbaa !253
  %14 = zext i16 %13 to i32, !dbg !1110
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1110
  %16 = load i16, i16* %15, align 2, !dbg !1110, !tbaa !256
  %17 = zext i16 %16 to i32, !dbg !1110
  %18 = sub nsw i32 %14, %17, !dbg !1110
  %19 = icmp eq i32 %18, %11, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1114
  br i1 %19, label %21, label %20, !dbg !1114

; <label>:20:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !1115
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1118
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1118
  unreachable

; <label>:21:                                     ; preds = %8
  store %struct.pbuf* null, %struct.pbuf** %2, align 8, !dbg !1122, !tbaa !242
  store i16 %16, i16* %12, align 8, !dbg !1123, !tbaa !253
  %22 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %3) #9, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  %23 = zext i8 %22 to i32, !dbg !1125
  br label %24, !dbg !1125

; <label>:24:                                     ; preds = %5, %21
  %25 = phi i16* [ %7, %5 ], [ %15, %21 ], !dbg !1107
  %26 = phi i16* [ %6, %5 ], [ %12, %21 ], !dbg !1107
  %27 = phi i32 [ 1, %5 ], [ %23, %21 ]
  %28 = load i16, i16* %26, align 8, !dbg !1107, !tbaa !253
  %29 = load i16, i16* %25, align 2, !dbg !1107, !tbaa !256
  %30 = icmp eq i16 %28, %29, !dbg !1107
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1126
  br i1 %30, label %32, label %31, !dbg !1126

; <label>:31:                                     ; preds = %24
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i64 0, i64 0)) #9, !dbg !1127
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1130
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1130
  unreachable

; <label>:32:                                     ; preds = %24
  %33 = icmp eq i32 %27, 0, !dbg !1134
  %34 = select i1 %33, %struct.pbuf* %3, %struct.pbuf* null, !dbg !1135
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1136
  ret %struct.pbuf* %34, !dbg !1136
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_copy(%struct.pbuf* readonly, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1137 {
  %3 = icmp ne %struct.pbuf* %0, null, !dbg !1155
  %4 = icmp ne %struct.pbuf* %1, null, !dbg !1155
  %5 = and i1 %3, %4, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br i1 %5, label %6, label %12, !dbg !1155

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1155
  %8 = load i16, i16* %7, align 8, !dbg !1155, !tbaa !253
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %1, i64 0, i32 2, !dbg !1155
  %10 = load i16, i16* %9, align 8, !dbg !1155, !tbaa !253
  %11 = icmp ult i16 %8, %10, !dbg !1155
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1158
  br i1 %11, label %12, label %13, !dbg !1158

; <label>:12:                                     ; preds = %6, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.21, i64 0, i64 0)) #9, !dbg !1159
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1162
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1162
  unreachable

; <label>:13:                                     ; preds = %6, %90
  %14 = phi %struct.pbuf* [ %52, %90 ], [ %1, %6 ]
  %15 = phi i64 [ %63, %90 ], [ 0, %6 ], !dbg !1166
  %16 = phi i64 [ %53, %90 ], [ 0, %6 ], !dbg !1170
  %17 = phi %struct.pbuf* [ %64, %90 ], [ %0, %6 ]
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 3, !dbg !1173
  %19 = load i16, i16* %18, align 2, !dbg !1173, !tbaa !256
  %20 = zext i16 %19 to i64, !dbg !1175
  %21 = sub i64 %20, %15, !dbg !1176
  %22 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !1177
  %23 = load i16, i16* %22, align 2, !dbg !1177, !tbaa !256
  %24 = zext i16 %23 to i64, !dbg !1178
  %25 = sub i64 %24, %16, !dbg !1179
  %26 = icmp ult i64 %21, %25, !dbg !1180
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1181
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %27 = select i1 %26, i64 %21, i64 %25
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 1, !dbg !1183
  %29 = load i8*, i8** %28, align 8, !dbg !1183, !tbaa !250
  %30 = getelementptr inbounds i8, i8* %29, i64 %15, !dbg !1183
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 1, !dbg !1183
  %32 = load i8*, i8** %31, align 8, !dbg !1183, !tbaa !250
  %33 = getelementptr inbounds i8, i8* %32, i64 %16, !dbg !1183
  %34 = tail call i8* @memcpy(i8* %30, i8* %33, i64 %27) #7, !dbg !1183
  %35 = add i64 %27, %15, !dbg !1184
  %36 = add i64 %27, %16, !dbg !1185
  %37 = load i16, i16* %18, align 2, !dbg !1186, !tbaa !256
  %38 = zext i16 %37 to i64, !dbg !1186
  %39 = icmp ugt i64 %35, %38, !dbg !1186
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1189
  br i1 %39, label %40, label %41, !dbg !1189

; <label>:40:                                     ; preds = %13
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.22, i64 0, i64 0)) #9, !dbg !1190
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1193
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1193
  unreachable

; <label>:41:                                     ; preds = %13
  %42 = load i16, i16* %22, align 2, !dbg !1197, !tbaa !256
  %43 = zext i16 %42 to i64, !dbg !1197
  %44 = icmp ugt i64 %36, %43, !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br i1 %44, label %45, label %46, !dbg !1200

; <label>:45:                                     ; preds = %41
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i64 0, i64 0)) #9, !dbg !1201
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1204
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1204
  unreachable

; <label>:46:                                     ; preds = %41
  %47 = icmp ult i64 %36, %43, !dbg !1208
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1209
  br i1 %47, label %51, label %48, !dbg !1209

; <label>:48:                                     ; preds = %46
  %49 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !1210
  %50 = load %struct.pbuf*, %struct.pbuf** %49, align 8, !dbg !1210, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1211
  br label %51, !dbg !1211

; <label>:51:                                     ; preds = %46, %48
  %52 = phi %struct.pbuf* [ %50, %48 ], [ %14, %46 ]
  %53 = phi i64 [ 0, %48 ], [ %36, %46 ], !dbg !1212
  %54 = icmp eq i64 %35, %38, !dbg !1213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1214
  br i1 %54, label %55, label %62, !dbg !1214

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 0, !dbg !1215
  %57 = load %struct.pbuf*, %struct.pbuf** %56, align 8, !dbg !1215, !tbaa !242
  %58 = icmp ne %struct.pbuf* %57, null, !dbg !1216
  %59 = icmp eq %struct.pbuf* %52, null, !dbg !1216
  %60 = or i1 %59, %58, !dbg !1216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1216
  br i1 %60, label %62, label %61, !dbg !1216

; <label>:61:                                     ; preds = %55
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.24, i64 0, i64 0)) #9, !dbg !1219
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1222
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1222
  unreachable

; <label>:62:                                     ; preds = %55, %51
  %63 = phi i64 [ 0, %55 ], [ %35, %51 ], !dbg !1212
  %64 = phi %struct.pbuf* [ %57, %55 ], [ %17, %51 ]
  %65 = icmp ne %struct.pbuf* %52, null, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %65, label %66, label %77, !dbg !1228

; <label>:66:                                     ; preds = %62
  %67 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 3, !dbg !1229
  %68 = load i16, i16* %67, align 2, !dbg !1229, !tbaa !256
  %69 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 2, !dbg !1230
  %70 = load i16, i16* %69, align 8, !dbg !1230, !tbaa !253
  %71 = icmp eq i16 %68, %70, !dbg !1231
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1232
  br i1 %71, label %72, label %77, !dbg !1232

; <label>:72:                                     ; preds = %66
  %73 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %52, i64 0, i32 0, !dbg !1233
  %74 = load %struct.pbuf*, %struct.pbuf** %73, align 8, !dbg !1233, !tbaa !242
  %75 = icmp eq %struct.pbuf* %74, null, !dbg !1233
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1237
  br i1 %75, label %77, label %76, !dbg !1237

; <label>:76:                                     ; preds = %72
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1238
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1241
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1241
  unreachable

; <label>:77:                                     ; preds = %72, %66, %62
  %78 = icmp eq %struct.pbuf* %64, null, !dbg !1245
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1247
  br i1 %78, label %90, label %79, !dbg !1247

; <label>:79:                                     ; preds = %77
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 3, !dbg !1248
  %81 = load i16, i16* %80, align 2, !dbg !1248, !tbaa !256
  %82 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 2, !dbg !1249
  %83 = load i16, i16* %82, align 8, !dbg !1249, !tbaa !253
  %84 = icmp eq i16 %81, %83, !dbg !1250
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1251
  br i1 %84, label %85, label %90, !dbg !1251

; <label>:85:                                     ; preds = %79
  %86 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %64, i64 0, i32 0, !dbg !1252
  %87 = load %struct.pbuf*, %struct.pbuf** %86, align 8, !dbg !1252, !tbaa !242
  %88 = icmp eq %struct.pbuf* %87, null, !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1256
  br i1 %88, label %90, label %89, !dbg !1256

; <label>:89:                                     ; preds = %85
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.25, i64 0, i64 0)) #9, !dbg !1257
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1260
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1260
  unreachable

; <label>:90:                                     ; preds = %77, %79, %85
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1264
  br i1 %65, label %13, label %91, !dbg !1264, !llvm.loop !1265

; <label>:91:                                     ; preds = %90
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1268
  ret i8 0, !dbg !1268
}

; Function Attrs: noredzone
declare dso_local i8* @memcpy(i8*, i8*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_copy_partial(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1269 {
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1287
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1290
  br i1 %5, label %6, label %7, !dbg !1290

; <label>:6:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.26, i64 0, i64 0)) #9, !dbg !1291
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1294
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1294
  unreachable

; <label>:7:                                      ; preds = %4
  %8 = icmp eq i8* %1, null, !dbg !1298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  br i1 %8, label %9, label %10, !dbg !1301

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.27, i64 0, i64 0)) #9, !dbg !1302
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1305
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1305
  unreachable

; <label>:10:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1310
  %11 = icmp eq i16 %2, 0, !dbg !1312
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %11, label %52, label %12, !dbg !1314

; <label>:12:                                     ; preds = %10, %42
  %13 = phi i16 [ %46, %42 ], [ %2, %10 ]
  %14 = phi i16 [ %45, %42 ], [ 0, %10 ]
  %15 = phi i16 [ %44, %42 ], [ 0, %10 ]
  %16 = phi %struct.pbuf* [ %48, %42 ], [ %0, %10 ]
  %17 = phi i16 [ %43, %42 ], [ %3, %10 ]
  %18 = icmp eq i16 %17, 0, !dbg !1315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1318
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 3
  %20 = load i16, i16* %19, align 2, !dbg !1319, !tbaa !256
  br i1 %18, label %25, label %21, !dbg !1318

; <label>:21:                                     ; preds = %12
  %22 = icmp ult i16 %17, %20, !dbg !1320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1321
  br i1 %22, label %25, label %23, !dbg !1321

; <label>:23:                                     ; preds = %21
  %24 = sub i16 %17, %20, !dbg !1322
  br label %42, !dbg !1324

; <label>:25:                                     ; preds = %12, %21
  %26 = sub i16 %20, %17, !dbg !1325
  %27 = icmp ugt i16 %26, %13, !dbg !1328
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1330
  br i1 %27, label %28, label %29, !dbg !1330

; <label>:28:                                     ; preds = %25
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1331
  br label %29, !dbg !1331

; <label>:29:                                     ; preds = %28, %25
  %30 = phi i16 [ %13, %28 ], [ %26, %25 ], !dbg !1333
  %31 = zext i16 %15 to i64, !dbg !1334
  %32 = getelementptr inbounds i8, i8* %1, i64 %31, !dbg !1334
  %33 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 1, !dbg !1334
  %34 = load i8*, i8** %33, align 8, !dbg !1334, !tbaa !250
  %35 = zext i16 %17 to i64, !dbg !1334
  %36 = getelementptr inbounds i8, i8* %34, i64 %35, !dbg !1334
  %37 = zext i16 %30 to i64, !dbg !1334
  %38 = tail call i8* @memcpy(i8* nonnull %32, i8* %36, i64 %37) #7, !dbg !1334
  %39 = add i16 %30, %14, !dbg !1335
  %40 = add i16 %30, %15, !dbg !1336
  %41 = sub i16 %13, %30, !dbg !1337
  br label %42

; <label>:42:                                     ; preds = %23, %29
  %43 = phi i16 [ %24, %23 ], [ 0, %29 ], !dbg !1333
  %44 = phi i16 [ %15, %23 ], [ %40, %29 ], !dbg !1333
  %45 = phi i16 [ %14, %23 ], [ %39, %29 ], !dbg !1333
  %46 = phi i16 [ %13, %23 ], [ %41, %29 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %47 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %16, i64 0, i32 0, !dbg !1338
  %48 = load %struct.pbuf*, %struct.pbuf** %47, align 8, !dbg !1338, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1339
  %49 = icmp ne i16 %46, 0, !dbg !1312
  %50 = icmp ne %struct.pbuf* %48, null, !dbg !1340
  %51 = and i1 %50, %49, !dbg !1341
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1314
  br i1 %51, label %12, label %52, !dbg !1314, !llvm.loop !1342

; <label>:52:                                     ; preds = %42, %10
  %53 = phi i16 [ 0, %10 ], [ %45, %42 ], !dbg !1286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1344
  ret i16 %53, !dbg !1344
}

; Function Attrs: noredzone nounwind
define dso_local i8* @pbuf_get_contiguous(%struct.pbuf* readonly, i8*, i64, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1345 {
  %6 = icmp eq %struct.pbuf* %0, null, !dbg !1361
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1364
  br i1 %6, label %7, label %8, !dbg !1364

; <label>:7:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.28, i64 0, i64 0)) #9, !dbg !1365
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1368
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1368
  unreachable

; <label>:8:                                      ; preds = %5
  %9 = icmp eq i8* %1, null, !dbg !1372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1375
  br i1 %9, label %10, label %11, !dbg !1375

; <label>:10:                                     ; preds = %8
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !1376
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1379
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1379
  unreachable

; <label>:11:                                     ; preds = %8
  %12 = zext i16 %3 to i64, !dbg !1383
  %13 = icmp ugt i64 %12, %2, !dbg !1383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1386
  br i1 %13, label %14, label %15, !dbg !1386

; <label>:14:                                     ; preds = %11
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.29, i64 0, i64 0)) #9, !dbg !1387
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1390
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1390
  unreachable

; <label>:15:                                     ; preds = %11
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br label %16, !dbg !1410

; <label>:16:                                     ; preds = %15, %22
  %17 = phi %struct.pbuf* [ %25, %22 ], [ %0, %15 ]
  %18 = phi i16 [ %23, %22 ], [ %4, %15 ]
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 3, !dbg !1411
  %20 = load i16, i16* %19, align 2, !dbg !1411, !tbaa !256
  %21 = icmp ult i16 %18, %20, !dbg !1412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  br i1 %21, label %27, label %22, !dbg !1409

; <label>:22:                                     ; preds = %16
  %23 = sub i16 %18, %20, !dbg !1413
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 0, !dbg !1415
  %25 = load %struct.pbuf*, %struct.pbuf** %24, align 8, !dbg !1415, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1409
  %26 = icmp eq %struct.pbuf* %25, null, !dbg !1416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1410
  br i1 %26, label %86, label %16, !dbg !1410, !llvm.loop !1417

; <label>:27:                                     ; preds = %16
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  %28 = zext i16 %20 to i32, !dbg !1427
  %29 = zext i16 %18 to i32, !dbg !1432
  %30 = zext i16 %3 to i32, !dbg !1433
  %31 = add nuw nsw i32 %29, %30, !dbg !1434
  %32 = icmp ugt i32 %31, %28, !dbg !1435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1436
  br i1 %32, label %38, label %33, !dbg !1436

; <label>:33:                                     ; preds = %27
  %34 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %17, i64 0, i32 1, !dbg !1437
  %35 = load i8*, i8** %34, align 8, !dbg !1437, !tbaa !250
  %36 = zext i16 %18 to i64, !dbg !1439
  %37 = getelementptr inbounds i8, i8* %35, i64 %36, !dbg !1439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1440
  br label %87, !dbg !1440

; <label>:38:                                     ; preds = %27
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1449
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1450
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1452
  %39 = icmp eq i16 %3, 0, !dbg !1453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %39, label %82, label %40, !dbg !1454

; <label>:40:                                     ; preds = %38, %79
  %41 = phi i16 [ %81, %79 ], [ %20, %38 ], !dbg !1455
  %42 = phi i16 [ %73, %79 ], [ %3, %38 ]
  %43 = phi i16 [ %72, %79 ], [ 0, %38 ]
  %44 = phi i16 [ %71, %79 ], [ 0, %38 ]
  %45 = phi %struct.pbuf* [ %75, %79 ], [ %17, %38 ]
  %46 = phi i16 [ %70, %79 ], [ %18, %38 ]
  %47 = icmp eq i16 %46, 0, !dbg !1456
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1457
  br i1 %47, label %52, label %48, !dbg !1457

; <label>:48:                                     ; preds = %40
  %49 = icmp ult i16 %46, %41, !dbg !1458
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1459
  br i1 %49, label %52, label %50, !dbg !1459

; <label>:50:                                     ; preds = %48
  %51 = sub i16 %46, %41, !dbg !1460
  br label %69, !dbg !1461

; <label>:52:                                     ; preds = %48, %40
  %53 = sub i16 %41, %46, !dbg !1462
  %54 = icmp ugt i16 %53, %42, !dbg !1464
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1465
  br i1 %54, label %55, label %56, !dbg !1465

; <label>:55:                                     ; preds = %52
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1466
  br label %56, !dbg !1466

; <label>:56:                                     ; preds = %55, %52
  %57 = phi i16 [ %42, %55 ], [ %53, %52 ], !dbg !1467
  %58 = zext i16 %44 to i64, !dbg !1468
  %59 = getelementptr inbounds i8, i8* %1, i64 %58, !dbg !1468
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i64 0, i32 1, !dbg !1468
  %61 = load i8*, i8** %60, align 8, !dbg !1468, !tbaa !250
  %62 = zext i16 %46 to i64, !dbg !1468
  %63 = getelementptr inbounds i8, i8* %61, i64 %62, !dbg !1468
  %64 = zext i16 %57 to i64, !dbg !1468
  %65 = tail call i8* @memcpy(i8* nonnull %59, i8* %63, i64 %64) #7, !dbg !1468
  %66 = add i16 %57, %43, !dbg !1469
  %67 = add i16 %57, %44, !dbg !1470
  %68 = sub i16 %42, %57, !dbg !1471
  br label %69

; <label>:69:                                     ; preds = %56, %50
  %70 = phi i16 [ %51, %50 ], [ 0, %56 ], !dbg !1467
  %71 = phi i16 [ %44, %50 ], [ %67, %56 ], !dbg !1467
  %72 = phi i16 [ %43, %50 ], [ %66, %56 ], !dbg !1467
  %73 = phi i16 [ %42, %50 ], [ %68, %56 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %74 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %45, i64 0, i32 0, !dbg !1472
  %75 = load %struct.pbuf*, %struct.pbuf** %74, align 8, !dbg !1472, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1473
  %76 = icmp ne i16 %73, 0, !dbg !1453
  %77 = icmp ne %struct.pbuf* %75, null, !dbg !1474
  %78 = and i1 %76, %77, !dbg !1475
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1454
  br i1 %78, label %79, label %82, !dbg !1454, !llvm.loop !1342

; <label>:79:                                     ; preds = %69
  %80 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %75, i64 0, i32 3
  %81 = load i16, i16* %80, align 2, !dbg !1455, !tbaa !256
  br label %40, !dbg !1454

; <label>:82:                                     ; preds = %69, %38
  %83 = phi i16 [ 0, %38 ], [ %72, %69 ], !dbg !1448
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1476
  %84 = icmp eq i16 %83, %3, !dbg !1477
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1478
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1479
  %85 = select i1 %84, i8* %1, i8* null, !dbg !1481
  br label %87, !dbg !1481

; <label>:86:                                     ; preds = %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1421
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1424
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1426
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1482
  br label %87, !dbg !1482

; <label>:87:                                     ; preds = %82, %86, %33
  %88 = phi i8* [ %37, %33 ], [ null, %86 ], [ %85, %82 ], !dbg !1483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1484
  ret i8* %88, !dbg !1484
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_split_64k(%struct.pbuf*, %struct.pbuf** nocapture) local_unnamed_addr #0 !dbg !1485 {
  store %struct.pbuf* null, %struct.pbuf** %1, align 8, !dbg !1499, !tbaa !1500
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1502
  br i1 %3, label %67, label %4, !dbg !1502

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1503
  %6 = load %struct.pbuf*, %struct.pbuf** %5, align 8, !dbg !1503, !tbaa !242
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1504
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1505
  br i1 %7, label %67, label %8, !dbg !1505

; <label>:8:                                      ; preds = %4
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1506
  %10 = load i16, i16* %9, align 2, !dbg !1506, !tbaa !256
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1512
  %12 = load i16, i16* %11, align 2, !dbg !1512, !tbaa !256
  %13 = add i16 %12, %10, !dbg !1513
  %14 = icmp ult i16 %13, %10, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br i1 %14, label %26, label %20, !dbg !1510

; <label>:15:                                     ; preds = %20
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %24, i64 0, i32 3, !dbg !1512
  %17 = load i16, i16* %16, align 2, !dbg !1512, !tbaa !256
  %18 = add i16 %17, %21, !dbg !1513
  %19 = icmp ult i16 %18, %21, !dbg !1514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  br i1 %19, label %26, label %20, !dbg !1510, !llvm.loop !1515

; <label>:20:                                     ; preds = %8, %15
  %21 = phi i16 [ %18, %15 ], [ %13, %8 ]
  %22 = phi %struct.pbuf* [ %24, %15 ], [ %6, %8 ]
  %23 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1517
  %24 = load %struct.pbuf*, %struct.pbuf** %23, align 8, !dbg !1517, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1510
  %25 = icmp eq %struct.pbuf* %24, null, !dbg !1519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1511
  br i1 %25, label %64, label %15, !dbg !1511, !llvm.loop !1515

; <label>:26:                                     ; preds = %15, %8
  %27 = phi %struct.pbuf* [ %6, %8 ], [ %24, %15 ]
  %28 = phi %struct.pbuf* [ %0, %8 ], [ %22, %15 ]
  %29 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %28, i64 0, i32 0, !dbg !1520
  store %struct.pbuf* null, %struct.pbuf** %29, align 8, !dbg !1521, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1523
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  %30 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 2
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1528
  %32 = load i16, i16* %31, align 8, !dbg !1528, !tbaa !253
  %33 = load i16, i16* %30, align 8, !dbg !1531, !tbaa !253
  %34 = sub i16 %32, %33, !dbg !1532
  store i16 %34, i16* %31, align 8, !dbg !1533, !tbaa !253
  %35 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1534
  %36 = load %struct.pbuf*, %struct.pbuf** %35, align 8, !dbg !1534, !tbaa !242
  %37 = icmp eq %struct.pbuf* %36, null, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  br i1 %37, label %38, label %45, !dbg !1534

; <label>:38:                                     ; preds = %45, %26
  %39 = phi %struct.pbuf* [ %0, %26 ], [ %46, %45 ]
  %40 = phi i16 [ %34, %26 ], [ %50, %45 ], !dbg !1532
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %39, i64 0, i32 3, !dbg !1534
  %42 = load i16, i16* %41, align 2, !dbg !1534, !tbaa !256
  %43 = icmp eq i16 %40, %42, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1537
  br i1 %43, label %54, label %44, !dbg !1537

; <label>:44:                                     ; preds = %38
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.30, i64 0, i64 0)) #9, !dbg !1538
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1541
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1541
  unreachable

; <label>:45:                                     ; preds = %26, %45
  %46 = phi %struct.pbuf* [ %52, %45 ], [ %36, %26 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  %47 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 2, !dbg !1528
  %48 = load i16, i16* %47, align 8, !dbg !1528, !tbaa !253
  %49 = load i16, i16* %30, align 8, !dbg !1531, !tbaa !253
  %50 = sub i16 %48, %49, !dbg !1532
  store i16 %50, i16* %47, align 8, !dbg !1533, !tbaa !253
  %51 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %46, i64 0, i32 0, !dbg !1534
  %52 = load %struct.pbuf*, %struct.pbuf** %51, align 8, !dbg !1534, !tbaa !242
  %53 = icmp eq %struct.pbuf* %52, null, !dbg !1534
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1534
  br i1 %53, label %38, label %45, !dbg !1534

; <label>:54:                                     ; preds = %38
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1527
  %55 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !1546
  %56 = load i8, i8* %55, align 1, !dbg !1546, !tbaa !332
  %57 = and i8 %56, 32, !dbg !1548
  %58 = icmp eq i8 %57, 0, !dbg !1548
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1549
  br i1 %58, label %63, label %59, !dbg !1549

; <label>:59:                                     ; preds = %54
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %27, i64 0, i32 5, !dbg !1550
  %61 = load i8, i8* %60, align 1, !dbg !1552, !tbaa !332
  %62 = or i8 %61, 32, !dbg !1552
  store i8 %62, i8* %60, align 1, !dbg !1552, !tbaa !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1553
  br label %63, !dbg !1553

; <label>:63:                                     ; preds = %54, %59
  store %struct.pbuf* %27, %struct.pbuf** %1, align 8, !dbg !1554, !tbaa !1500
  br label %66, !dbg !1555

; <label>:64:                                     ; preds = %20
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %22, i64 0, i32 0, !dbg !1517
  store %struct.pbuf* null, %struct.pbuf** %65, align 8, !dbg !1521, !tbaa !242
  br label %66

; <label>:66:                                     ; preds = %64, %63
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1556
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1557
  br label %67, !dbg !1557

; <label>:67:                                     ; preds = %4, %2, %66
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1558
  ret void, !dbg !1558
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_skip(%struct.pbuf* readonly, i16 zeroext, i16*) local_unnamed_addr #0 !dbg !1559 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %4, label %16, label %5, !dbg !1578

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1579
  %9 = load i16, i16* %8, align 2, !dbg !1579, !tbaa !256
  %10 = icmp ult i16 %7, %9, !dbg !1580
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  br i1 %10, label %16, label %11, !dbg !1576

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1581
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1582
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1582, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1576
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1577
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1578
  br i1 %15, label %16, label %5, !dbg !1578, !llvm.loop !1417

; <label>:16:                                     ; preds = %11, %5, %3
  %17 = phi i16 [ %1, %3 ], [ %12, %11 ], [ %7, %5 ], !dbg !1583
  %18 = phi %struct.pbuf* [ null, %3 ], [ null, %11 ], [ %6, %5 ], !dbg !1583
  %19 = icmp eq i16* %2, null, !dbg !1584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1585
  br i1 %19, label %21, label %20, !dbg !1585

; <label>:20:                                     ; preds = %16
  store i16 %17, i16* %2, align 2, !dbg !1586, !tbaa !1587
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1588
  br label %21, !dbg !1588

; <label>:21:                                     ; preds = %16, %20
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1591
  ret %struct.pbuf* %18, !dbg !1591
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take(%struct.pbuf* readonly, i8*, i16 zeroext) local_unnamed_addr #0 !dbg !1592 {
  %4 = zext i16 %2 to i64, !dbg !1608
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1611
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1614
  br i1 %5, label %6, label %7, !dbg !1614

; <label>:6:                                      ; preds = %3
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.31, i64 0, i64 0)) #9, !dbg !1615
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1618
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1618
  unreachable

; <label>:7:                                      ; preds = %3
  %8 = icmp eq i8* %1, null, !dbg !1622
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1625
  br i1 %8, label %9, label %10, !dbg !1625

; <label>:9:                                      ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.32, i64 0, i64 0)) #9, !dbg !1626
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1629
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1629
  unreachable

; <label>:10:                                     ; preds = %7
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1633
  %12 = load i16, i16* %11, align 8, !dbg !1633, !tbaa !253
  %13 = icmp ult i16 %12, %2, !dbg !1633
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1636
  br i1 %13, label %14, label %15, !dbg !1636

; <label>:14:                                     ; preds = %10
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.33, i64 0, i64 0)) #9, !dbg !1637
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1640
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1640
  unreachable

; <label>:15:                                     ; preds = %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1646
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1648
  %16 = icmp eq i16 %2, 0, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br i1 %16, label %40, label %17, !dbg !1652

; <label>:17:                                     ; preds = %15, %29
  %18 = phi i64 [ %36, %29 ], [ 0, %15 ]
  %19 = phi i64 [ %35, %29 ], [ %4, %15 ]
  %20 = phi %struct.pbuf* [ %38, %29 ], [ %0, %15 ]
  %21 = icmp eq %struct.pbuf* %20, null, !dbg !1653
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1657
  br i1 %21, label %22, label %23, !dbg !1657

; <label>:22:                                     ; preds = %17
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.34, i64 0, i64 0)) #9, !dbg !1658
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1661
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1661
  unreachable

; <label>:23:                                     ; preds = %17
  %24 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 3, !dbg !1666
  %25 = load i16, i16* %24, align 2, !dbg !1666, !tbaa !256
  %26 = zext i16 %25 to i64, !dbg !1668
  %27 = icmp ugt i64 %19, %26, !dbg !1669
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1670
  br i1 %27, label %28, label %29, !dbg !1670

; <label>:28:                                     ; preds = %23
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1671
  br label %29, !dbg !1671

; <label>:29:                                     ; preds = %28, %23
  %30 = phi i64 [ %26, %28 ], [ %19, %23 ], !dbg !1673
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 1, !dbg !1674
  %32 = load i8*, i8** %31, align 8, !dbg !1674, !tbaa !250
  %33 = getelementptr inbounds i8, i8* %1, i64 %18, !dbg !1674
  %34 = tail call i8* @memcpy(i8* %32, i8* nonnull %33, i64 %30) #7, !dbg !1674
  %35 = sub i64 %19, %30, !dbg !1675
  %36 = add i64 %30, %18, !dbg !1676
  %37 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %20, i64 0, i32 0, !dbg !1677
  %38 = load %struct.pbuf*, %struct.pbuf** %37, align 8, !dbg !1677, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1678
  %39 = icmp eq i64 %35, 0, !dbg !1650
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1652
  br i1 %39, label %40, label %17, !dbg !1652, !llvm.loop !1679

; <label>:40:                                     ; preds = %29, %15
  %41 = phi i64 [ 0, %15 ], [ %36, %29 ], !dbg !1673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1681
  %42 = icmp eq i64 %41, %4, !dbg !1681
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1684
  br i1 %42, label %44, label %43, !dbg !1684

; <label>:43:                                     ; preds = %40
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i64 0, i64 0)) #9, !dbg !1685
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #9, !dbg !1688
  tail call void @ukplat_terminate(i32 3) #8, !dbg !1688
  unreachable

; <label>:44:                                     ; preds = %40
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1692
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1693
  ret i8 0, !dbg !1693
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @pbuf_take_at(%struct.pbuf* readonly, i8*, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !1694 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  %5 = icmp eq %struct.pbuf* %0, null, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %5, label %17, label %6, !dbg !1723

; <label>:6:                                      ; preds = %4, %12
  %7 = phi %struct.pbuf* [ %15, %12 ], [ %0, %4 ]
  %8 = phi i16 [ %13, %12 ], [ %3, %4 ]
  %9 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 3, !dbg !1724
  %10 = load i16, i16* %9, align 2, !dbg !1724, !tbaa !256
  %11 = icmp ult i16 %8, %10, !dbg !1725
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  br i1 %11, label %18, label %12, !dbg !1721

; <label>:12:                                     ; preds = %6
  %13 = sub i16 %8, %10, !dbg !1726
  %14 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1727
  %15 = load %struct.pbuf*, %struct.pbuf** %14, align 8, !dbg !1727, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1721
  %16 = icmp eq %struct.pbuf* %15, null, !dbg !1722
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1723
  br i1 %16, label %17, label %6, !dbg !1723, !llvm.loop !1417

; <label>:17:                                     ; preds = %12, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  br label %46, !dbg !1734

; <label>:18:                                     ; preds = %6
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1728
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1729
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1732
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1734
  %19 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 2, !dbg !1735
  %20 = load i16, i16* %19, align 8, !dbg !1735, !tbaa !253
  %21 = zext i16 %20 to i32, !dbg !1736
  %22 = zext i16 %8 to i32, !dbg !1738
  %23 = zext i16 %2 to i32, !dbg !1739
  %24 = add nuw nsw i32 %22, %23, !dbg !1740
  %25 = icmp ugt i32 %24, %21, !dbg !1741
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1742
  br i1 %25, label %48, label %26, !dbg !1742

; <label>:26:                                     ; preds = %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1745
  %27 = zext i16 %10 to i32, !dbg !1747
  %28 = sub nsw i32 %27, %22, !dbg !1749
  %29 = icmp slt i32 %28, %23, !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1749
  %30 = select i1 %29, i32 %28, i32 %23, !dbg !1749
  %31 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 1, !dbg !1750
  %32 = load i8*, i8** %31, align 8, !dbg !1750, !tbaa !250
  %33 = zext i16 %8 to i64, !dbg !1750
  %34 = getelementptr inbounds i8, i8* %32, i64 %33, !dbg !1750
  %35 = and i32 %30, 65535, !dbg !1750
  %36 = zext i32 %35 to i64, !dbg !1750
  %37 = tail call i8* @memcpy(i8* %34, i8* %1, i64 %36) #7, !dbg !1750
  %38 = trunc i32 %30 to i16, !dbg !1751
  %39 = sub i16 %2, %38, !dbg !1751
  %40 = icmp eq i16 %39, 0, !dbg !1752
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1754
  br i1 %40, label %46, label %41, !dbg !1754

; <label>:41:                                     ; preds = %26
  %42 = getelementptr inbounds i8, i8* %1, i64 %36, !dbg !1755
  %43 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %7, i64 0, i32 0, !dbg !1756
  %44 = load %struct.pbuf*, %struct.pbuf** %43, align 8, !dbg !1756, !tbaa !242
  %45 = tail call signext i8 @pbuf_take(%struct.pbuf* %44, i8* %42, i16 zeroext %39) #9, !dbg !1758
  br label %46, !dbg !1759

; <label>:46:                                     ; preds = %41, %26, %17
  %47 = phi i8 [ -1, %17 ], [ %45, %41 ], [ 0, %26 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1760
  br label %48

; <label>:48:                                     ; preds = %46, %18
  %49 = phi i8 [ -1, %18 ], [ %47, %46 ], !dbg !1761
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1762
  ret i8 %49, !dbg !1762
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_coalesce(%struct.pbuf*, i32) local_unnamed_addr #0 !dbg !1763 {
  %3 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 0, !dbg !1772
  %4 = load %struct.pbuf*, %struct.pbuf** %3, align 8, !dbg !1772, !tbaa !242
  %5 = icmp eq %struct.pbuf* %4, null, !dbg !1774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1775
  br i1 %5, label %40, label %6, !dbg !1775

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1789
  %8 = load i16, i16* %7, align 8, !dbg !1789, !tbaa !253
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1794
  %9 = and i32 %1, 65535, !dbg !1795
  %10 = trunc i32 %1 to i16, !dbg !1796
  %11 = add i16 %8, %10, !dbg !1796
  %12 = zext i16 %11 to i64, !dbg !1798
  %13 = add nuw nsw i64 %12, 24, !dbg !1799
  %14 = icmp ult i16 %11, %8, !dbg !1801
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1802
  br i1 %14, label %21, label %15, !dbg !1802

; <label>:15:                                     ; preds = %6
  %16 = zext i16 %8 to i64, !dbg !1803
  %17 = icmp ult i64 %13, %16, !dbg !1804
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1805
  br i1 %17, label %21, label %18, !dbg !1805

; <label>:18:                                     ; preds = %15
  %19 = tail call i8* @mem_malloc(i64 %13) #7, !dbg !1806
  %20 = icmp eq i8* %19, null, !dbg !1807
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1808
  br i1 %20, label %21, label %22, !dbg !1808

; <label>:21:                                     ; preds = %18, %6, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1809
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  br label %40, !dbg !1820

; <label>:22:                                     ; preds = %18
  %23 = bitcast i8* %19 to %struct.pbuf*, !dbg !1823
  %24 = getelementptr inbounds i8, i8* %19, i64 24, !dbg !1824
  %25 = zext i32 %9 to i64, !dbg !1824
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !1824
  %27 = bitcast i8* %19 to %struct.pbuf**, !dbg !1832
  store %struct.pbuf* null, %struct.pbuf** %27, align 8, !dbg !1833, !tbaa !242
  %28 = getelementptr inbounds i8, i8* %19, i64 8, !dbg !1834
  %29 = bitcast i8* %28 to i8**, !dbg !1834
  store i8* %26, i8** %29, align 8, !dbg !1835, !tbaa !250
  %30 = getelementptr inbounds i8, i8* %19, i64 16, !dbg !1836
  %31 = bitcast i8* %30 to i16*, !dbg !1836
  store i16 %8, i16* %31, align 8, !dbg !1837, !tbaa !253
  %32 = getelementptr inbounds i8, i8* %19, i64 18, !dbg !1838
  %33 = bitcast i8* %32 to i16*, !dbg !1838
  store i16 %8, i16* %33, align 2, !dbg !1839, !tbaa !256
  %34 = getelementptr inbounds i8, i8* %19, i64 20, !dbg !1840
  store i8 -128, i8* %34, align 4, !dbg !1841, !tbaa !329
  %35 = getelementptr inbounds i8, i8* %19, i64 21, !dbg !1842
  store i8 0, i8* %35, align 1, !dbg !1843, !tbaa !332
  %36 = getelementptr inbounds i8, i8* %19, i64 22, !dbg !1844
  store i8 1, i8* %36, align 2, !dbg !1845, !tbaa !335
  %37 = getelementptr inbounds i8, i8* %19, i64 23, !dbg !1846
  store i8 0, i8* %37, align 1, !dbg !1847, !tbaa !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1849
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1851
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1852
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1811
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1813
  %38 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %23, %struct.pbuf* nonnull %0) #7, !dbg !1853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1855
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1817
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1819
  %39 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #9, !dbg !1858
  br label %40, !dbg !1859

; <label>:40:                                     ; preds = %2, %22, %21
  %41 = phi %struct.pbuf* [ %0, %21 ], [ %23, %22 ], [ %0, %2 ], !dbg !1860
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1861
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1863
  ret %struct.pbuf* %41, !dbg !1863
}

; Function Attrs: noredzone nounwind
define dso_local %struct.pbuf* @pbuf_clone(i32, i32, %struct.pbuf* readonly) local_unnamed_addr #0 !dbg !1777 {
  %4 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %2, i64 0, i32 2, !dbg !1867
  %5 = load i16, i16* %4, align 8, !dbg !1867, !tbaa !253
  %6 = tail call %struct.pbuf* @pbuf_alloc(i32 %0, i16 zeroext %5, i32 %1) #9, !dbg !1868
  %7 = icmp eq %struct.pbuf* %6, null, !dbg !1870
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1871
  br i1 %7, label %10, label %8, !dbg !1871

; <label>:8:                                      ; preds = %3
  %9 = tail call signext i8 @pbuf_copy(%struct.pbuf* nonnull %6, %struct.pbuf* nonnull %2) #9, !dbg !1872
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1874
  br label %10, !dbg !1875

; <label>:10:                                     ; preds = %3, %8
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1876
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1877
  ret %struct.pbuf* %6, !dbg !1877
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i8 @pbuf_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1878 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %3, label %21, label %4, !dbg !1905

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1906
  %8 = load i16, i16* %7, align 2, !dbg !1906, !tbaa !256
  %9 = icmp ult i16 %6, %8, !dbg !1907
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  br i1 %9, label %15, label %10, !dbg !1903

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1908
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1909
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1909, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1903
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1904
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1905
  br i1 %14, label %21, label %4, !dbg !1905, !llvm.loop !1417

; <label>:15:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1917
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1918
  %17 = load i8*, i8** %16, align 8, !dbg !1918, !tbaa !250
  %18 = zext i16 %6 to i64, !dbg !1920
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1920
  %20 = load i8, i8* %19, align 1, !dbg !1920, !tbaa !286
  br label %22, !dbg !1922

; <label>:21:                                     ; preds = %10, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1910
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1911
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1912
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1914
  br label %22, !dbg !1925

; <label>:22:                                     ; preds = %21, %15
  %23 = phi i8 [ %20, %15 ], [ 0, %21 ], !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1926
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1927
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1929
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1930
  ret i8 %23, !dbg !1930
}

; Function Attrs: noredzone nounwind
define dso_local i32 @pbuf_try_get_at(%struct.pbuf* readonly, i16 zeroext) local_unnamed_addr #0 !dbg !1888 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  %3 = icmp eq %struct.pbuf* %0, null, !dbg !1939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %3, label %22, label %4, !dbg !1940

; <label>:4:                                      ; preds = %2, %10
  %5 = phi %struct.pbuf* [ %13, %10 ], [ %0, %2 ]
  %6 = phi i16 [ %11, %10 ], [ %1, %2 ]
  %7 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 3, !dbg !1941
  %8 = load i16, i16* %7, align 2, !dbg !1941, !tbaa !256
  %9 = icmp ult i16 %6, %8, !dbg !1942
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  br i1 %9, label %15, label %10, !dbg !1938

; <label>:10:                                     ; preds = %4
  %11 = sub i16 %6, %8, !dbg !1943
  %12 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 0, !dbg !1944
  %13 = load %struct.pbuf*, %struct.pbuf** %12, align 8, !dbg !1944, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1938
  %14 = icmp eq %struct.pbuf* %13, null, !dbg !1939
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1940
  br i1 %14, label %22, label %4, !dbg !1940, !llvm.loop !1417

; <label>:15:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1951
  %16 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %5, i64 0, i32 1, !dbg !1952
  %17 = load i8*, i8** %16, align 8, !dbg !1952, !tbaa !250
  %18 = zext i16 %6 to i64, !dbg !1953
  %19 = getelementptr inbounds i8, i8* %17, i64 %18, !dbg !1953
  %20 = load i8, i8* %19, align 1, !dbg !1953, !tbaa !286
  %21 = zext i8 %20 to i32, !dbg !1953
  br label %23, !dbg !1954

; <label>:22:                                     ; preds = %10, %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1945
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1946
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1949
  br label %23, !dbg !1955

; <label>:23:                                     ; preds = %22, %15
  %24 = phi i32 [ %21, %15 ], [ -1, %22 ], !dbg !1956
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1957
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1958
  ret i32 %24, !dbg !1958
}

; Function Attrs: noredzone nounwind
define dso_local void @pbuf_put_at(%struct.pbuf* readonly, i16 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1959 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  %4 = icmp eq %struct.pbuf* %0, null, !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %4, label %16, label %5, !dbg !1981

; <label>:5:                                      ; preds = %3, %11
  %6 = phi %struct.pbuf* [ %14, %11 ], [ %0, %3 ]
  %7 = phi i16 [ %12, %11 ], [ %1, %3 ]
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 3, !dbg !1982
  %9 = load i16, i16* %8, align 2, !dbg !1982, !tbaa !256
  %10 = icmp ult i16 %7, %9, !dbg !1983
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  br i1 %10, label %17, label %11, !dbg !1979

; <label>:11:                                     ; preds = %5
  %12 = sub i16 %7, %9, !dbg !1984
  %13 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 0, !dbg !1985
  %14 = load %struct.pbuf*, %struct.pbuf** %13, align 8, !dbg !1985, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1979
  %15 = icmp eq %struct.pbuf* %14, null, !dbg !1980
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1981
  br i1 %15, label %16, label %5, !dbg !1981, !llvm.loop !1417

; <label>:16:                                     ; preds = %11, %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  br label %22, !dbg !1992

; <label>:17:                                     ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1986
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1988
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1990
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1995
  %18 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %6, i64 0, i32 1, !dbg !1996
  %19 = load i8*, i8** %18, align 8, !dbg !1996, !tbaa !250
  %20 = zext i16 %7 to i64, !dbg !1998
  %21 = getelementptr inbounds i8, i8* %19, i64 %20, !dbg !1998
  store i8 %2, i8* %21, align 1, !dbg !1999, !tbaa !286
  br label %22, !dbg !2000

; <label>:22:                                     ; preds = %16, %17
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2001
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2002
  ret void, !dbg !2002
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_memcmp(%struct.pbuf* readonly, i16 zeroext, i8* nocapture readonly, i16 zeroext) local_unnamed_addr #0 !dbg !2003 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2025
  %6 = load i16, i16* %5, align 8, !dbg !2025, !tbaa !253
  %7 = zext i16 %6 to i32, !dbg !2027
  %8 = zext i16 %1 to i32, !dbg !2028
  %9 = zext i16 %3 to i32, !dbg !2029
  %10 = add nuw nsw i32 %9, %8, !dbg !2030
  %11 = icmp ugt i32 %10, %7, !dbg !2031
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2033
  br i1 %11, label %68, label %12, !dbg !2032

; <label>:12:                                     ; preds = %4, %18
  %13 = phi i16 [ %19, %18 ], [ %1, %4 ]
  %14 = phi %struct.pbuf* [ %21, %18 ], [ %0, %4 ]
  %15 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 3, !dbg !2034
  %16 = load i16, i16* %15, align 2, !dbg !2034, !tbaa !256
  %17 = icmp ult i16 %13, %16, !dbg !2035
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  br i1 %17, label %23, label %18, !dbg !2036

; <label>:18:                                     ; preds = %12
  %19 = sub i16 %13, %16, !dbg !2037
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %14, i64 0, i32 0, !dbg !2039
  %21 = load %struct.pbuf*, %struct.pbuf** %20, align 8, !dbg !2039, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2036
  %22 = icmp eq %struct.pbuf* %21, null, !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2041
  br i1 %22, label %23, label %12, !dbg !2041, !llvm.loop !2042

; <label>:23:                                     ; preds = %18, %12
  %24 = phi %struct.pbuf* [ null, %18 ], [ %14, %12 ], !dbg !2044
  %25 = phi i16 [ %19, %18 ], [ %13, %12 ], !dbg !2044
  %26 = phi i1 [ true, %18 ], [ false, %12 ], !dbg !2040
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2046
  %27 = icmp eq i16 %3, 0, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %27, label %66, label %28, !dbg !2048

; <label>:28:                                     ; preds = %23, %62
  %29 = phi i32 [ %64, %62 ], [ 0, %23 ]
  %30 = phi i16 [ %63, %62 ], [ 0, %23 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %26, label %50, label %31, !dbg !2057

; <label>:31:                                     ; preds = %28
  %32 = add i16 %30, %25, !dbg !2058
  br label %33, !dbg !2063

; <label>:33:                                     ; preds = %31, %39
  %34 = phi %struct.pbuf* [ %42, %39 ], [ %24, %31 ]
  %35 = phi i16 [ %40, %39 ], [ %32, %31 ]
  %36 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i64 0, i32 3, !dbg !2063
  %37 = load i16, i16* %36, align 2, !dbg !2063, !tbaa !256
  %38 = icmp ult i16 %35, %37, !dbg !2064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  br i1 %38, label %44, label %39, !dbg !2056

; <label>:39:                                     ; preds = %33
  %40 = sub i16 %35, %37, !dbg !2065
  %41 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i64 0, i32 0, !dbg !2066
  %42 = load %struct.pbuf*, %struct.pbuf** %41, align 8, !dbg !2066, !tbaa !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2056
  %43 = icmp eq %struct.pbuf* %42, null, !dbg !2067
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2057
  br i1 %43, label %50, label %33, !dbg !2057, !llvm.loop !1417

; <label>:44:                                     ; preds = %33
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2074
  %45 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %34, i64 0, i32 1, !dbg !2075
  %46 = load i8*, i8** %45, align 8, !dbg !2075, !tbaa !250
  %47 = zext i16 %35 to i64, !dbg !2076
  %48 = getelementptr inbounds i8, i8* %46, i64 %47, !dbg !2076
  %49 = load i8, i8* %48, align 1, !dbg !2076, !tbaa !286
  br label %51, !dbg !2078

; <label>:50:                                     ; preds = %39, %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2068
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2070
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2072
  br label %51, !dbg !2079

; <label>:51:                                     ; preds = %44, %50
  %52 = phi i8 [ %49, %44 ], [ 0, %50 ], !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2080
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2082
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2083
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2084
  %53 = zext i16 %30 to i64, !dbg !2086
  %54 = getelementptr inbounds i8, i8* %2, i64 %53, !dbg !2086
  %55 = load i8, i8* %54, align 1, !dbg !2086, !tbaa !286
  %56 = icmp eq i8 %52, %55, !dbg !2088
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2090
  br i1 %56, label %62, label %57, !dbg !2090

; <label>:57:                                     ; preds = %51
  %58 = add nuw nsw i32 %29, 1, !dbg !2091
  %59 = icmp ult i32 %58, 65535, !dbg !2091
  %60 = select i1 %59, i32 %58, i32 65535, !dbg !2091
  %61 = trunc i32 %60 to i16, !dbg !2093
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2094
  br label %66

; <label>:62:                                     ; preds = %51
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2095
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %63 = add nuw i16 %30, 1, !dbg !2096
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2097
  %64 = zext i16 %63 to i32, !dbg !2098
  %65 = icmp ult i16 %63, %3, !dbg !2047
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2048
  br i1 %65, label %28, label %66, !dbg !2048, !llvm.loop !2099

; <label>:66:                                     ; preds = %62, %23, %57
  %67 = phi i16 [ %61, %57 ], [ 0, %23 ], [ 0, %62 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %68, !dbg !2101

; <label>:68:                                     ; preds = %66, %4
  %69 = phi i16 [ -1, %4 ], [ %67, %66 ], !dbg !2033
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2101
  ret i16 %69, !dbg !2101
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_memfind(%struct.pbuf* readonly, i8* nocapture readonly, i16 zeroext, i16 zeroext) local_unnamed_addr #0 !dbg !2102 {
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2122
  %6 = load i16, i16* %5, align 8, !dbg !2122, !tbaa !253
  %7 = zext i16 %6 to i32, !dbg !2123
  %8 = zext i16 %2 to i32, !dbg !2124
  %9 = sub i16 %6, %2, !dbg !2125
  %10 = zext i16 %3 to i32, !dbg !2127
  %11 = add nuw nsw i32 %10, %8, !dbg !2128
  %12 = icmp ugt i32 %11, %7, !dbg !2129
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2130
  br i1 %12, label %22, label %13, !dbg !2130

; <label>:13:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2132
  %14 = icmp ult i16 %9, %3, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %14, label %22, label %15, !dbg !2134

; <label>:15:                                     ; preds = %13, %19
  %16 = phi i16 [ %20, %19 ], [ %3, %13 ]
  %17 = tail call zeroext i16 @pbuf_memcmp(%struct.pbuf* %0, i16 zeroext %16, i8* %1, i16 zeroext %2) #9, !dbg !2135
  %18 = icmp eq i16 %17, 0, !dbg !2137
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2139
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2140
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %18, label %23, label %19

; <label>:19:                                     ; preds = %15
  %20 = add i16 %16, 1, !dbg !2141
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2142
  %21 = icmp ugt i16 %20, %9, !dbg !2133
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2134
  br i1 %21, label %22, label %15, !dbg !2134, !llvm.loop !2143

; <label>:22:                                     ; preds = %19, %13, %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2145
  br label %23, !dbg !2145

; <label>:23:                                     ; preds = %15, %22
  %24 = phi i16 [ -1, %22 ], [ %16, %15 ], !dbg !2146
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2147
  ret i16 %24, !dbg !2147
}

; Function Attrs: noredzone nounwind
define dso_local zeroext i16 @pbuf_strstr(%struct.pbuf* readonly, i8*) local_unnamed_addr #0 !dbg !2148 {
  %3 = icmp eq i8* %1, null, !dbg !2157
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2159
  br i1 %3, label %33, label %4, !dbg !2159

; <label>:4:                                      ; preds = %2
  %5 = load i8, i8* %1, align 1, !dbg !2160, !tbaa !286
  %6 = icmp eq i8 %5, 0, !dbg !2161
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2162
  br i1 %6, label %33, label %7, !dbg !2162

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !2163
  %9 = load i16, i16* %8, align 8, !dbg !2163, !tbaa !253
  %10 = icmp eq i16 %9, -1, !dbg !2164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2165
  br i1 %10, label %33, label %11, !dbg !2165

; <label>:11:                                     ; preds = %7
  %12 = tail call i64 @strlen(i8* nonnull %1) #7, !dbg !2166
  %13 = icmp ugt i64 %12, 65534, !dbg !2168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2170
  br i1 %13, label %33, label %14, !dbg !2170

; <label>:14:                                     ; preds = %11
  %15 = trunc i64 %12 to i16, !dbg !2171
  %16 = load i16, i16* %8, align 8, !dbg !2177, !tbaa !253
  %17 = zext i16 %16 to i32, !dbg !2178
  %18 = trunc i64 %12 to i32, !dbg !2179
  %19 = and i32 %18, 65535, !dbg !2179
  %20 = sub i16 %16, %15, !dbg !2180
  %21 = icmp ugt i32 %19, %17, !dbg !2182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2183
  br i1 %21, label %30, label %22, !dbg !2183

; <label>:22:                                     ; preds = %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  br label %23

; <label>:23:                                     ; preds = %27, %22
  %24 = phi i16 [ %28, %27 ], [ 0, %22 ]
  %25 = tail call zeroext i16 @pbuf_memcmp(%struct.pbuf* %0, i16 zeroext %24, i8* nonnull %1, i16 zeroext %15) #7, !dbg !2187
  %26 = icmp eq i16 %25, 0, !dbg !2189
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2190
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2191
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br i1 %26, label %31, label %27

; <label>:27:                                     ; preds = %23
  %28 = add i16 %24, 1, !dbg !2192
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2193
  %29 = icmp ugt i16 %28, %20, !dbg !2194
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2186
  br i1 %29, label %30, label %23, !dbg !2186, !llvm.loop !2143

; <label>:30:                                     ; preds = %27, %14
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2195
  br label %31, !dbg !2195

; <label>:31:                                     ; preds = %23, %30
  %32 = phi i16 [ -1, %30 ], [ %24, %23 ], !dbg !2196
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2197
  br label %33, !dbg !2198

; <label>:33:                                     ; preds = %11, %2, %4, %7, %31
  %34 = phi i16 [ %32, %31 ], [ -1, %7 ], [ -1, %4 ], [ -1, %2 ], [ -1, %11 ], !dbg !2199
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2202
  ret i16 %34, !dbg !2202
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @tcpip_try_callback(void (i8*)*, i8*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @pbuf_free_ooseq_callback(i8* nocapture readnone) #0 !dbg !2203 {
  %2 = tail call i64 @ukplat_lcpu_save_irqf() #7, !dbg !2209
  store volatile i8 0, i8* @pbuf_free_ooseq_pending, align 1, !dbg !2368, !tbaa !286
  tail call void @ukplat_lcpu_restore_irqf(i64 %2) #7, !dbg !2368
  %3 = load %struct.tcp_pcb*, %struct.tcp_pcb** @tcp_active_pcbs, align 8, !dbg !2369, !tbaa !1500
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2372
  %4 = icmp eq %struct.tcp_pcb* %3, null, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  br i1 %4, label %15, label %5, !dbg !2375

; <label>:5:                                      ; preds = %1, %11
  %6 = phi %struct.tcp_pcb* [ %13, %11 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 46, !dbg !2376
  %8 = load %struct.tcp_seg*, %struct.tcp_seg** %7, align 8, !dbg !2376, !tbaa !2379
  %9 = icmp eq %struct.tcp_seg* %8, null, !dbg !2383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2384
  br i1 %9, label %11, label %10, !dbg !2384

; <label>:10:                                     ; preds = %5
  tail call void @tcp_free_ooseq(%struct.tcp_pcb* nonnull %6) #7, !dbg !2385
  br label %15, !dbg !2387

; <label>:11:                                     ; preds = %5
  %12 = getelementptr inbounds %struct.tcp_pcb, %struct.tcp_pcb* %6, i64 0, i32 6, !dbg !2388
  %13 = load %struct.tcp_pcb*, %struct.tcp_pcb** %12, align 8, !dbg !2388, !tbaa !2389
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2390
  %14 = icmp eq %struct.tcp_pcb* %13, null, !dbg !2373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2375
  br i1 %14, label %15, label %5, !dbg !2375, !llvm.loop !2391

; <label>:15:                                     ; preds = %11, %1, %10
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !2396
  ret void, !dbg !2396
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
!222 = !DILocation(line: 329, column: 16, scope: !197, inlinedAt: !205)
!223 = !DILocalVariable(name: "p", arg: 1, scope: !224, file: !3, line: 179, type: !92)
!224 = distinct !DISubprogram(name: "pbuf_init_alloced_pbuf", scope: !3, file: !3, line: 179, type: !225, isLocal: true, isDefinition: true, scopeLine: 180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !227)
!225 = !DISubroutineType(types: !226)
!226 = !{null, !92, !91, !84, !84, !175, !100}
!227 = !{!223, !228, !229, !230, !231, !232}
!228 = !DILocalVariable(name: "payload", arg: 2, scope: !224, file: !3, line: 179, type: !91)
!229 = !DILocalVariable(name: "tot_len", arg: 3, scope: !224, file: !3, line: 179, type: !84)
!230 = !DILocalVariable(name: "len", arg: 4, scope: !224, file: !3, line: 179, type: !84)
!231 = !DILocalVariable(name: "type", arg: 5, scope: !224, file: !3, line: 179, type: !175)
!232 = !DILocalVariable(name: "flags", arg: 6, scope: !224, file: !3, line: 179, type: !100)
!233 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !234)
!234 = distinct !DILocation(line: 339, column: 3, scope: !197, inlinedAt: !205)
!235 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !234)
!236 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !234)
!237 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !234)
!238 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !234)
!239 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !234)
!240 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !234)
!241 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !234)
!242 = !{!243, !244, i64 0}
!243 = !{!"pbuf", !244, i64 0, !244, i64 8, !247, i64 16, !247, i64 18, !245, i64 20, !245, i64 21, !245, i64 22, !245, i64 23}
!244 = !{!"any pointer", !245, i64 0}
!245 = !{!"omnipotent char", !246, i64 0}
!246 = !{!"Simple C/C++ TBAA"}
!247 = !{!"short", !245, i64 0}
!248 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !234)
!249 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !234)
!250 = !{!243, !244, i64 8}
!251 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !234)
!252 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !234)
!253 = !{!243, !247, i64 16}
!254 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !234)
!255 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !234)
!256 = !{!243, !247, i64 18}
!257 = !DILocation(line: 185, column: 22, scope: !224, inlinedAt: !234)
!258 = !DILocation(line: 340, column: 3, scope: !197, inlinedAt: !205)
!259 = !DILocation(line: 227, column: 18, scope: !171)
!260 = !DILocation(line: 227, column: 9, scope: !171)
!261 = !DILocation(line: 226, column: 16, scope: !171)
!262 = !DILocation(line: 236, column: 24, scope: !183)
!263 = !DILocation(line: 237, column: 13, scope: !183)
!264 = !DILocation(line: 241, column: 7, scope: !183)
!265 = !DILocation(line: 239, column: 12, scope: !183)
!266 = !DILocation(line: 240, column: 15, scope: !183)
!267 = !DILocation(line: 238, column: 9, scope: !183)
!268 = !DILocation(line: 243, column: 28, scope: !188)
!269 = !DILocation(line: 243, column: 13, scope: !188)
!270 = !DILocation(line: 236, column: 20, scope: !183)
!271 = !DILocation(line: 244, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !188, file: !3, line: 244, column: 13)
!273 = !DILocation(line: 244, column: 13, scope: !188)
!274 = !DILocation(line: 164, column: 3, scope: !275, inlinedAt: !282)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 164, column: 3)
!276 = distinct !DISubprogram(name: "pbuf_pool_is_empty", scope: !3, file: !3, line: 157, type: !277, isLocal: true, isDefinition: true, scopeLine: 158, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{null}
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "queued", scope: !276, file: !3, line: 162, type: !100)
!281 = !DILocalVariable(name: "old_level", scope: !276, file: !3, line: 163, type: !110)
!282 = distinct !DILocation(line: 245, column: 11, scope: !283)
!283 = distinct !DILexicalBlock(scope: !272, file: !3, line: 244, column: 24)
!284 = !DILocation(line: 163, column: 3, scope: !276, inlinedAt: !282)
!285 = !DILocation(line: 165, column: 12, scope: !276, inlinedAt: !282)
!286 = !{!245, !245, i64 0}
!287 = !DILocation(line: 162, column: 8, scope: !276, inlinedAt: !282)
!288 = !DILocation(line: 166, column: 27, scope: !276, inlinedAt: !282)
!289 = !DILocation(line: 167, column: 3, scope: !276, inlinedAt: !282)
!290 = !DILocation(line: 169, column: 8, scope: !291, inlinedAt: !282)
!291 = distinct !DILexicalBlock(scope: !276, file: !3, line: 169, column: 7)
!292 = !DILocation(line: 169, column: 7, scope: !276, inlinedAt: !282)
!293 = !DILocation(line: 171, column: 5, scope: !294, inlinedAt: !282)
!294 = distinct !DILexicalBlock(scope: !295, file: !3, line: 171, column: 5)
!295 = distinct !DILexicalBlock(scope: !296, file: !3, line: 171, column: 5)
!296 = distinct !DILexicalBlock(scope: !291, file: !3, line: 169, column: 16)
!297 = !DILocation(line: 171, column: 5, scope: !295, inlinedAt: !282)
!298 = !DILocation(line: 171, column: 5, scope: !299, inlinedAt: !282)
!299 = distinct !DILexicalBlock(scope: !300, file: !3, line: 171, column: 5)
!300 = distinct !DILexicalBlock(scope: !294, file: !3, line: 171, column: 5)
!301 = !DILocation(line: 171, column: 5, scope: !300, inlinedAt: !282)
!302 = !DILocation(line: 174, column: 1, scope: !276, inlinedAt: !282)
!303 = !DILocation(line: 247, column: 15, scope: !304)
!304 = distinct !DILexicalBlock(scope: !283, file: !3, line: 247, column: 15)
!305 = !DILocation(line: 247, column: 15, scope: !283)
!306 = !DILocation(line: 248, column: 13, scope: !307)
!307 = distinct !DILexicalBlock(scope: !304, file: !3, line: 247, column: 18)
!308 = !DILocation(line: 249, column: 11, scope: !307)
!309 = !DILocation(line: 253, column: 16, scope: !188)
!310 = !DILocation(line: 242, column: 15, scope: !188)
!311 = !DILocation(line: 254, column: 35, scope: !188)
!312 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !313)
!313 = distinct !DILocation(line: 254, column: 9, scope: !188)
!314 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !313)
!315 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !313)
!316 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !313)
!317 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !313)
!318 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !313)
!319 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !313)
!320 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !313)
!321 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !313)
!322 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !313)
!323 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !313)
!324 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !313)
!325 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !313)
!326 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !313)
!327 = !DILocation(line: 185, column: 6, scope: !224, inlinedAt: !313)
!328 = !DILocation(line: 185, column: 20, scope: !224, inlinedAt: !313)
!329 = !{!243, !245, i64 20}
!330 = !DILocation(line: 186, column: 6, scope: !224, inlinedAt: !313)
!331 = !DILocation(line: 186, column: 12, scope: !224, inlinedAt: !313)
!332 = !{!243, !245, i64 21}
!333 = !DILocation(line: 187, column: 6, scope: !224, inlinedAt: !313)
!334 = !DILocation(line: 187, column: 10, scope: !224, inlinedAt: !313)
!335 = !{!243, !245, i64 22}
!336 = !DILocation(line: 188, column: 6, scope: !224, inlinedAt: !313)
!337 = !DILocation(line: 188, column: 13, scope: !224, inlinedAt: !313)
!338 = !{!243, !245, i64 23}
!339 = !DILocation(line: 189, column: 1, scope: !224, inlinedAt: !313)
!340 = !DILocation(line: 256, column: 9, scope: !341)
!341 = distinct !DILexicalBlock(scope: !188, file: !3, line: 256, column: 9)
!342 = !DILocation(line: 258, column: 9, scope: !343)
!343 = distinct !DILexicalBlock(scope: !344, file: !3, line: 258, column: 9)
!344 = distinct !DILexicalBlock(scope: !188, file: !3, line: 258, column: 9)
!345 = !DILocation(line: 258, column: 9, scope: !344)
!346 = !DILocation(line: 258, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !348, file: !3, line: 258, column: 9)
!348 = distinct !DILexicalBlock(scope: !343, file: !3, line: 258, column: 9)
!349 = !DILocation(line: 258, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !3, line: 258, column: 9)
!351 = distinct !DILexicalBlock(scope: !352, file: !3, line: 258, column: 9)
!352 = distinct !DILexicalBlock(scope: !347, file: !3, line: 258, column: 9)
!353 = !DILocation(line: 260, column: 15, scope: !354)
!354 = distinct !DILexicalBlock(scope: !188, file: !3, line: 260, column: 13)
!355 = !DILocation(line: 260, column: 13, scope: !188)
!356 = !DILocation(line: 265, column: 22, scope: !357)
!357 = distinct !DILexicalBlock(scope: !354, file: !3, line: 263, column: 16)
!358 = !DILocation(line: 0, scope: !183)
!359 = !DILocation(line: 268, column: 35, scope: !188)
!360 = !DILocation(line: 270, column: 7, scope: !183)
!361 = !DILocation(line: 270, column: 24, scope: !183)
!362 = !DILocation(line: 270, column: 7, scope: !188)
!363 = distinct !{!363, !264, !364}
!364 = !DILocation(line: 270, column: 27, scope: !183)
!365 = !DILocation(line: 251, column: 11, scope: !283)
!366 = !DILocation(line: 274, column: 35, scope: !190)
!367 = !DILocation(line: 274, column: 27, scope: !190)
!368 = !DILocation(line: 274, column: 13, scope: !190)
!369 = !DILocation(line: 275, column: 85, scope: !190)
!370 = !DILocation(line: 275, column: 83, scope: !190)
!371 = !DILocation(line: 275, column: 18, scope: !190)
!372 = !DILocation(line: 278, column: 24, scope: !373)
!373 = distinct !DILexicalBlock(scope: !190, file: !3, line: 278, column: 11)
!374 = !DILocation(line: 278, column: 55, scope: !373)
!375 = !DILocation(line: 279, column: 24, scope: !373)
!376 = !DILocation(line: 279, column: 22, scope: !373)
!377 = !DILocation(line: 278, column: 11, scope: !190)
!378 = !DILocation(line: 284, column: 26, scope: !190)
!379 = !DILocation(line: 285, column: 13, scope: !380)
!380 = distinct !DILexicalBlock(scope: !190, file: !3, line: 285, column: 11)
!381 = !DILocation(line: 285, column: 11, scope: !190)
!382 = !DILocation(line: 288, column: 33, scope: !190)
!383 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !384)
!384 = distinct !DILocation(line: 288, column: 7, scope: !190)
!385 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !384)
!386 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !384)
!387 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !384)
!388 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !384)
!389 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !384)
!390 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !384)
!391 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !384)
!392 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !384)
!393 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !384)
!394 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !384)
!395 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !384)
!396 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !384)
!397 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !384)
!398 = !DILocation(line: 295, column: 7, scope: !399)
!399 = distinct !DILexicalBlock(scope: !400, file: !3, line: 295, column: 7)
!400 = distinct !DILexicalBlock(scope: !401, file: !3, line: 295, column: 7)
!401 = distinct !DILexicalBlock(scope: !402, file: !3, line: 295, column: 7)
!402 = distinct !DILexicalBlock(scope: !184, file: !3, line: 295, column: 7)
!403 = !DILocation(line: 295, column: 7, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !3, line: 295, column: 7)
!405 = distinct !DILexicalBlock(scope: !406, file: !3, line: 295, column: 7)
!406 = distinct !DILexicalBlock(scope: !399, file: !3, line: 295, column: 7)
!407 = !DILocation(line: 0, scope: !190)
!408 = !DILocation(line: 185, column: 6, scope: !224, inlinedAt: !234)
!409 = !DILocation(line: 185, column: 20, scope: !224, inlinedAt: !234)
!410 = !DILocation(line: 186, column: 6, scope: !224, inlinedAt: !234)
!411 = !DILocation(line: 186, column: 12, scope: !224, inlinedAt: !234)
!412 = !DILocation(line: 187, column: 6, scope: !224, inlinedAt: !234)
!413 = !DILocation(line: 187, column: 10, scope: !224, inlinedAt: !234)
!414 = !DILocation(line: 188, column: 6, scope: !224, inlinedAt: !234)
!415 = !DILocation(line: 188, column: 13, scope: !224, inlinedAt: !234)
!416 = !DILocation(line: 189, column: 1, scope: !224, inlinedAt: !234)
!417 = !DILocation(line: 0, scope: !184)
!418 = !DILocation(line: 299, column: 3, scope: !171)
!419 = !DILocation(line: 0, scope: !283)
!420 = !DILocation(line: 300, column: 1, scope: !171)
!421 = !DILocation(line: 327, column: 28, scope: !197)
!422 = !DILocation(line: 327, column: 43, scope: !197)
!423 = !DILocation(line: 327, column: 61, scope: !197)
!424 = !DILocation(line: 330, column: 3, scope: !209)
!425 = !DILocation(line: 330, column: 3, scope: !212)
!426 = !DILocation(line: 330, column: 3, scope: !215)
!427 = !DILocation(line: 332, column: 22, scope: !197)
!428 = !DILocation(line: 333, column: 9, scope: !220)
!429 = !DILocation(line: 333, column: 7, scope: !197)
!430 = !DILocation(line: 332, column: 7, scope: !197)
!431 = !DILocation(line: 329, column: 16, scope: !197)
!432 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !433)
!433 = distinct !DILocation(line: 339, column: 3, scope: !197)
!434 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !433)
!435 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !433)
!436 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !433)
!437 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !433)
!438 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !433)
!439 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !433)
!440 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !433)
!441 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !433)
!442 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !433)
!443 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !433)
!444 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !433)
!445 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !433)
!446 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !433)
!447 = !DILocation(line: 185, column: 22, scope: !224, inlinedAt: !433)
!448 = !DILocation(line: 185, column: 6, scope: !224, inlinedAt: !433)
!449 = !DILocation(line: 185, column: 20, scope: !224, inlinedAt: !433)
!450 = !DILocation(line: 186, column: 6, scope: !224, inlinedAt: !433)
!451 = !DILocation(line: 186, column: 12, scope: !224, inlinedAt: !433)
!452 = !DILocation(line: 187, column: 6, scope: !224, inlinedAt: !433)
!453 = !DILocation(line: 187, column: 10, scope: !224, inlinedAt: !433)
!454 = !DILocation(line: 188, column: 6, scope: !224, inlinedAt: !433)
!455 = !DILocation(line: 188, column: 13, scope: !224, inlinedAt: !433)
!456 = !DILocation(line: 189, column: 1, scope: !224, inlinedAt: !433)
!457 = !DILocation(line: 340, column: 3, scope: !197)
!458 = !DILocation(line: 0, scope: !197)
!459 = !DILocation(line: 0, scope: !460)
!460 = distinct !DILexicalBlock(scope: !220, file: !3, line: 333, column: 18)
!461 = !DILocation(line: 341, column: 1, scope: !197)
!462 = distinct !DISubprogram(name: "pbuf_free", scope: !3, file: !3, line: 725, type: !463, isLocal: false, isDefinition: true, scopeLine: 726, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !465)
!463 = !DISubroutineType(types: !464)
!464 = !{!100, !92}
!465 = !{!466, !467, !468, !469, !470, !472, !473}
!466 = !DILocalVariable(name: "p", arg: 1, scope: !462, file: !3, line: 725, type: !92)
!467 = !DILocalVariable(name: "alloc_src", scope: !462, file: !3, line: 727, type: !100)
!468 = !DILocalVariable(name: "q", scope: !462, file: !3, line: 728, type: !92)
!469 = !DILocalVariable(name: "count", scope: !462, file: !3, line: 729, type: !100)
!470 = !DILocalVariable(name: "ref", scope: !471, file: !3, line: 746, type: !100)
!471 = distinct !DILexicalBlock(scope: !462, file: !3, line: 745, column: 21)
!472 = !DILocalVariable(name: "old_level", scope: !471, file: !3, line: 747, type: !110)
!473 = !DILocalVariable(name: "pc", scope: !474, file: !3, line: 766, type: !118)
!474 = distinct !DILexicalBlock(scope: !475, file: !3, line: 765, column: 50)
!475 = distinct !DILexicalBlock(scope: !476, file: !3, line: 765, column: 11)
!476 = distinct !DILexicalBlock(scope: !477, file: !3, line: 758, column: 19)
!477 = distinct !DILexicalBlock(scope: !471, file: !3, line: 758, column: 9)
!478 = !DILocation(line: 725, column: 24, scope: !462)
!479 = !DILocation(line: 731, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !462, file: !3, line: 731, column: 7)
!481 = !DILocation(line: 731, column: 7, scope: !462)
!482 = !DILocation(line: 0, scope: !462)
!483 = !DILocation(line: 729, column: 8, scope: !462)
!484 = !DILocation(line: 745, column: 3, scope: !462)
!485 = !DILocation(line: 732, column: 5, scope: !486)
!486 = distinct !DILexicalBlock(scope: !487, file: !3, line: 732, column: 5)
!487 = distinct !DILexicalBlock(scope: !488, file: !3, line: 732, column: 5)
!488 = distinct !DILexicalBlock(scope: !489, file: !3, line: 732, column: 5)
!489 = distinct !DILexicalBlock(scope: !490, file: !3, line: 732, column: 5)
!490 = distinct !DILexicalBlock(scope: !480, file: !3, line: 731, column: 18)
!491 = !DILocation(line: 732, column: 5, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 732, column: 5)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 732, column: 5)
!494 = distinct !DILexicalBlock(scope: !486, file: !3, line: 732, column: 5)
!495 = !DILocation(line: 751, column: 5, scope: !496)
!496 = distinct !DILexicalBlock(scope: !471, file: !3, line: 751, column: 5)
!497 = !DILocation(line: 747, column: 5, scope: !471)
!498 = !DILocation(line: 753, column: 5, scope: !499)
!499 = distinct !DILexicalBlock(scope: !500, file: !3, line: 753, column: 5)
!500 = distinct !DILexicalBlock(scope: !471, file: !3, line: 753, column: 5)
!501 = !DILocation(line: 753, column: 5, scope: !500)
!502 = !DILocation(line: 753, column: 5, scope: !503)
!503 = distinct !DILexicalBlock(scope: !504, file: !3, line: 753, column: 5)
!504 = distinct !DILexicalBlock(scope: !499, file: !3, line: 753, column: 5)
!505 = !DILocation(line: 753, column: 5, scope: !506)
!506 = distinct !DILexicalBlock(scope: !507, file: !3, line: 753, column: 5)
!507 = distinct !DILexicalBlock(scope: !508, file: !3, line: 753, column: 5)
!508 = distinct !DILexicalBlock(scope: !503, file: !3, line: 753, column: 5)
!509 = !DILocation(line: 755, column: 11, scope: !471)
!510 = !DILocation(line: 746, column: 21, scope: !471)
!511 = !DILocation(line: 756, column: 5, scope: !471)
!512 = !DILocation(line: 758, column: 13, scope: !477)
!513 = !DILocation(line: 758, column: 9, scope: !471)
!514 = !DILocation(line: 760, column: 14, scope: !476)
!515 = !DILocation(line: 728, column: 16, scope: !462)
!516 = !DILocation(line: 762, column: 19, scope: !476)
!517 = !DILocation(line: 765, column: 15, scope: !475)
!518 = !DILocation(line: 765, column: 21, scope: !475)
!519 = !DILocation(line: 765, column: 44, scope: !475)
!520 = !DILocation(line: 765, column: 11, scope: !476)
!521 = !DILocation(line: 766, column: 29, scope: !474)
!522 = !DILocation(line: 767, column: 9, scope: !523)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 767, column: 9)
!524 = distinct !DILexicalBlock(scope: !474, file: !3, line: 767, column: 9)
!525 = !{!526, !244, i64 24}
!526 = !{!"pbuf_custom", !243, i64 0, !244, i64 24}
!527 = !DILocation(line: 767, column: 9, scope: !524)
!528 = !DILocation(line: 767, column: 9, scope: !529)
!529 = distinct !DILexicalBlock(scope: !530, file: !3, line: 767, column: 9)
!530 = distinct !DILexicalBlock(scope: !523, file: !3, line: 767, column: 9)
!531 = !DILocation(line: 767, column: 9, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 767, column: 9)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 767, column: 9)
!534 = distinct !DILexicalBlock(scope: !529, file: !3, line: 767, column: 9)
!535 = !DILocation(line: 768, column: 9, scope: !474)
!536 = !DILocation(line: 769, column: 7, scope: !474)
!537 = !DILocation(line: 727, column: 8, scope: !462)
!538 = !DILocation(line: 773, column: 23, scope: !539)
!539 = distinct !DILexicalBlock(scope: !540, file: !3, line: 773, column: 13)
!540 = distinct !DILexicalBlock(scope: !475, file: !3, line: 771, column: 7)
!541 = !DILocation(line: 773, column: 13, scope: !540)
!542 = !DILocation(line: 774, column: 37, scope: !543)
!543 = distinct !DILexicalBlock(scope: !539, file: !3, line: 773, column: 71)
!544 = !DILocation(line: 774, column: 11, scope: !543)
!545 = !DILocation(line: 776, column: 9, scope: !543)
!546 = !DILocation(line: 776, column: 30, scope: !547)
!547 = distinct !DILexicalBlock(scope: !539, file: !3, line: 776, column: 20)
!548 = !DILocation(line: 776, column: 20, scope: !539)
!549 = !DILocation(line: 777, column: 32, scope: !550)
!550 = distinct !DILexicalBlock(scope: !547, file: !3, line: 776, column: 73)
!551 = !DILocation(line: 777, column: 11, scope: !550)
!552 = !DILocation(line: 779, column: 9, scope: !550)
!553 = !DILocation(line: 779, column: 30, scope: !554)
!554 = distinct !DILexicalBlock(scope: !547, file: !3, line: 779, column: 20)
!555 = !DILocation(line: 779, column: 20, scope: !547)
!556 = !DILocation(line: 780, column: 20, scope: !557)
!557 = distinct !DILexicalBlock(scope: !554, file: !3, line: 779, column: 68)
!558 = !DILocation(line: 780, column: 11, scope: !557)
!559 = !DILocation(line: 783, column: 11, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 783, column: 11)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 783, column: 11)
!562 = distinct !DILexicalBlock(scope: !563, file: !3, line: 783, column: 11)
!563 = distinct !DILexicalBlock(scope: !564, file: !3, line: 783, column: 11)
!564 = distinct !DILexicalBlock(scope: !554, file: !3, line: 781, column: 16)
!565 = !DILocation(line: 783, column: 11, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 783, column: 11)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 783, column: 11)
!568 = distinct !DILexicalBlock(scope: !560, file: !3, line: 783, column: 11)
!569 = !DILocation(line: 786, column: 12, scope: !476)
!570 = !DILocation(line: 791, column: 5, scope: !476)
!571 = !DILocation(line: 745, column: 12, scope: !462)
!572 = distinct !{!572, !484, !573}
!573 = !DILocation(line: 796, column: 3, scope: !462)
!574 = !DILocation(line: 799, column: 3, scope: !462)
!575 = !DILocation(line: 800, column: 1, scope: !462)
!576 = !DILocation(line: 194, column: 43, scope: !139)
!577 = !DILocation(line: 196, column: 2, scope: !139)
!578 = !DILocation(line: 196, column: 10, scope: !139)
!579 = !DILocation(line: 197, column: 2, scope: !139)
!580 = !DILocation(line: 198, column: 2, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !140, line: 198, column: 2)
!582 = distinct !DILexicalBlock(scope: !139, file: !140, line: 198, column: 2)
!583 = !DILocation(line: 199, column: 2, scope: !139)
!584 = !DILocation(line: 200, column: 1, scope: !139)
!585 = distinct !DISubprogram(name: "pbuf_alloced_custom", scope: !3, file: !3, line: 363, type: !586, isLocal: false, isDefinition: true, scopeLine: 365, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !588)
!586 = !DISubroutineType(types: !587)
!587 = !{!92, !174, !84, !175, !118, !91, !84}
!588 = !{!589, !590, !591, !592, !593, !594, !595, !596}
!589 = !DILocalVariable(name: "l", arg: 1, scope: !585, file: !3, line: 363, type: !174)
!590 = !DILocalVariable(name: "length", arg: 2, scope: !585, file: !3, line: 363, type: !84)
!591 = !DILocalVariable(name: "type", arg: 3, scope: !585, file: !3, line: 363, type: !175)
!592 = !DILocalVariable(name: "p", arg: 4, scope: !585, file: !3, line: 363, type: !118)
!593 = !DILocalVariable(name: "payload_mem", arg: 5, scope: !585, file: !3, line: 364, type: !91)
!594 = !DILocalVariable(name: "payload_mem_len", arg: 6, scope: !585, file: !3, line: 364, type: !84)
!595 = !DILocalVariable(name: "offset", scope: !585, file: !3, line: 366, type: !84)
!596 = !DILocalVariable(name: "payload", scope: !585, file: !3, line: 367, type: !91)
!597 = !DILocation(line: 363, column: 32, scope: !585)
!598 = !DILocation(line: 363, column: 41, scope: !585)
!599 = !DILocation(line: 363, column: 59, scope: !585)
!600 = !DILocation(line: 363, column: 85, scope: !585)
!601 = !DILocation(line: 364, column: 27, scope: !585)
!602 = !DILocation(line: 364, column: 46, scope: !585)
!603 = !DILocation(line: 366, column: 9, scope: !585)
!604 = !DILocation(line: 370, column: 7, scope: !605)
!605 = distinct !DILexicalBlock(scope: !585, file: !3, line: 370, column: 7)
!606 = !DILocation(line: 370, column: 37, scope: !605)
!607 = !DILocation(line: 370, column: 35, scope: !605)
!608 = !DILocation(line: 370, column: 46, scope: !605)
!609 = !DILocation(line: 370, column: 44, scope: !605)
!610 = !DILocation(line: 370, column: 7, scope: !585)
!611 = !DILocation(line: 375, column: 19, scope: !612)
!612 = distinct !DILexicalBlock(scope: !585, file: !3, line: 375, column: 7)
!613 = !DILocation(line: 375, column: 7, scope: !585)
!614 = !DILocation(line: 376, column: 35, scope: !615)
!615 = distinct !DILexicalBlock(scope: !612, file: !3, line: 375, column: 28)
!616 = !DILocation(line: 367, column: 9, scope: !585)
!617 = !DILocation(line: 380, column: 30, scope: !585)
!618 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !619)
!619 = distinct !DILocation(line: 380, column: 3, scope: !585)
!620 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !619)
!621 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !619)
!622 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !619)
!623 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !619)
!624 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !619)
!625 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !619)
!626 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !619)
!627 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !619)
!628 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !619)
!629 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !619)
!630 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !619)
!631 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !619)
!632 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !619)
!633 = !DILocation(line: 185, column: 22, scope: !224, inlinedAt: !619)
!634 = !DILocation(line: 185, column: 6, scope: !224, inlinedAt: !619)
!635 = !DILocation(line: 185, column: 20, scope: !224, inlinedAt: !619)
!636 = !DILocation(line: 186, column: 6, scope: !224, inlinedAt: !619)
!637 = !DILocation(line: 186, column: 12, scope: !224, inlinedAt: !619)
!638 = !DILocation(line: 187, column: 6, scope: !224, inlinedAt: !619)
!639 = !DILocation(line: 187, column: 10, scope: !224, inlinedAt: !619)
!640 = !DILocation(line: 188, column: 6, scope: !224, inlinedAt: !619)
!641 = !DILocation(line: 188, column: 13, scope: !224, inlinedAt: !619)
!642 = !DILocation(line: 189, column: 1, scope: !224, inlinedAt: !619)
!643 = !DILocation(line: 381, column: 3, scope: !585)
!644 = !DILocation(line: 0, scope: !585)
!645 = !DILocation(line: 0, scope: !646)
!646 = distinct !DILexicalBlock(scope: !605, file: !3, line: 370, column: 63)
!647 = !DILocation(line: 382, column: 1, scope: !585)
!648 = distinct !DISubprogram(name: "pbuf_realloc", scope: !3, file: !3, line: 402, type: !649, isLocal: false, isDefinition: true, scopeLine: 403, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !651)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !92, !84}
!651 = !{!652, !653, !654, !655, !656}
!652 = !DILocalVariable(name: "p", arg: 1, scope: !648, file: !3, line: 402, type: !92)
!653 = !DILocalVariable(name: "new_len", arg: 2, scope: !648, file: !3, line: 402, type: !84)
!654 = !DILocalVariable(name: "q", scope: !648, file: !3, line: 404, type: !92)
!655 = !DILocalVariable(name: "rem_len", scope: !648, file: !3, line: 405, type: !84)
!656 = !DILocalVariable(name: "shrink", scope: !648, file: !3, line: 406, type: !84)
!657 = !DILocation(line: 402, column: 27, scope: !648)
!658 = !DILocation(line: 402, column: 36, scope: !648)
!659 = !DILocation(line: 408, column: 3, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !3, line: 408, column: 3)
!661 = distinct !DILexicalBlock(scope: !648, file: !3, line: 408, column: 3)
!662 = !DILocation(line: 408, column: 3, scope: !661)
!663 = !DILocation(line: 408, column: 3, scope: !664)
!664 = distinct !DILexicalBlock(scope: !665, file: !3, line: 408, column: 3)
!665 = distinct !DILexicalBlock(scope: !660, file: !3, line: 408, column: 3)
!666 = !DILocation(line: 408, column: 3, scope: !667)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 408, column: 3)
!668 = distinct !DILexicalBlock(scope: !669, file: !3, line: 408, column: 3)
!669 = distinct !DILexicalBlock(scope: !664, file: !3, line: 408, column: 3)
!670 = !DILocation(line: 411, column: 21, scope: !671)
!671 = distinct !DILexicalBlock(scope: !648, file: !3, line: 411, column: 7)
!672 = !DILocation(line: 411, column: 15, scope: !671)
!673 = !DILocation(line: 411, column: 7, scope: !648)
!674 = !DILocation(line: 0, scope: !675)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 411, column: 30)
!676 = !DILocation(line: 424, column: 23, scope: !648)
!677 = !DILocation(line: 0, scope: !678)
!678 = distinct !DILexicalBlock(scope: !648, file: !3, line: 424, column: 28)
!679 = !DILocation(line: 404, column: 16, scope: !648)
!680 = !DILocation(line: 405, column: 9, scope: !648)
!681 = !DILocation(line: 424, column: 18, scope: !648)
!682 = !DILocation(line: 424, column: 3, scope: !648)
!683 = !DILocation(line: 426, column: 31, scope: !678)
!684 = !DILocation(line: 428, column: 29, scope: !678)
!685 = !DILocation(line: 428, column: 37, scope: !678)
!686 = !DILocation(line: 428, column: 16, scope: !678)
!687 = !DILocation(line: 430, column: 12, scope: !678)
!688 = !DILocation(line: 431, column: 5, scope: !689)
!689 = distinct !DILexicalBlock(scope: !690, file: !3, line: 431, column: 5)
!690 = distinct !DILexicalBlock(scope: !678, file: !3, line: 431, column: 5)
!691 = !DILocation(line: 431, column: 5, scope: !690)
!692 = distinct !{!692, !682, !693}
!693 = !DILocation(line: 432, column: 3, scope: !648)
!694 = !DILocation(line: 431, column: 5, scope: !695)
!695 = distinct !DILexicalBlock(scope: !696, file: !3, line: 431, column: 5)
!696 = distinct !DILexicalBlock(scope: !689, file: !3, line: 431, column: 5)
!697 = !DILocation(line: 431, column: 5, scope: !698)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 431, column: 5)
!699 = distinct !DILexicalBlock(scope: !700, file: !3, line: 431, column: 5)
!700 = distinct !DILexicalBlock(scope: !695, file: !3, line: 431, column: 5)
!701 = !DILocation(line: 438, column: 7, scope: !702)
!702 = distinct !DILexicalBlock(scope: !648, file: !3, line: 438, column: 7)
!703 = !DILocation(line: 438, column: 65, scope: !702)
!704 = !DILocation(line: 438, column: 77, scope: !702)
!705 = !DILocation(line: 440, column: 7, scope: !702)
!706 = !DILocation(line: 440, column: 15, scope: !702)
!707 = !DILocation(line: 440, column: 21, scope: !702)
!708 = !DILocation(line: 440, column: 44, scope: !702)
!709 = !DILocation(line: 438, column: 7, scope: !648)
!710 = !DILocation(line: 444, column: 33, scope: !711)
!711 = distinct !DILexicalBlock(scope: !702, file: !3, line: 442, column: 8)
!712 = !DILocation(line: 444, column: 61, scope: !711)
!713 = !DILocation(line: 444, column: 69, scope: !711)
!714 = !DILocation(line: 444, column: 84, scope: !711)
!715 = !DILocation(line: 444, column: 82, scope: !711)
!716 = !DILocation(line: 444, column: 24, scope: !711)
!717 = !DILocation(line: 445, column: 5, scope: !718)
!718 = distinct !DILexicalBlock(scope: !719, file: !3, line: 445, column: 5)
!719 = distinct !DILexicalBlock(scope: !711, file: !3, line: 445, column: 5)
!720 = !DILocation(line: 445, column: 5, scope: !719)
!721 = !DILocation(line: 444, column: 9, scope: !711)
!722 = !DILocation(line: 448, column: 6, scope: !648)
!723 = !DILocation(line: 445, column: 5, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 445, column: 5)
!725 = distinct !DILexicalBlock(scope: !718, file: !3, line: 445, column: 5)
!726 = !DILocation(line: 445, column: 5, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 445, column: 5)
!728 = distinct !DILexicalBlock(scope: !729, file: !3, line: 445, column: 5)
!729 = distinct !DILexicalBlock(scope: !724, file: !3, line: 445, column: 5)
!730 = !DILocation(line: 0, scope: !648)
!731 = !DILocation(line: 448, column: 10, scope: !648)
!732 = !DILocation(line: 449, column: 6, scope: !648)
!733 = !DILocation(line: 449, column: 14, scope: !648)
!734 = !DILocation(line: 452, column: 10, scope: !735)
!735 = distinct !DILexicalBlock(scope: !648, file: !3, line: 452, column: 7)
!736 = !DILocation(line: 452, column: 15, scope: !735)
!737 = !DILocation(line: 452, column: 7, scope: !648)
!738 = !DILocation(line: 454, column: 5, scope: !739)
!739 = distinct !DILexicalBlock(scope: !735, file: !3, line: 452, column: 24)
!740 = !DILocation(line: 455, column: 3, scope: !739)
!741 = !DILocation(line: 457, column: 11, scope: !648)
!742 = !DILocation(line: 459, column: 1, scope: !648)
!743 = distinct !DISubprogram(name: "pbuf_add_header", scope: !3, file: !3, line: 551, type: !744, isLocal: false, isDefinition: true, scopeLine: 552, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !746)
!744 = !DISubroutineType(types: !745)
!745 = !{!100, !92, !114}
!746 = !{!747, !748}
!747 = !DILocalVariable(name: "p", arg: 1, scope: !743, file: !3, line: 551, type: !92)
!748 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !743, file: !3, line: 551, type: !114)
!749 = !DILocation(line: 551, column: 30, scope: !743)
!750 = !DILocation(line: 551, column: 40, scope: !743)
!751 = !DILocation(line: 553, column: 10, scope: !743)
!752 = !DILocation(line: 553, column: 3, scope: !743)
!753 = distinct !DISubprogram(name: "pbuf_add_header_impl", scope: !3, file: !3, line: 473, type: !754, isLocal: true, isDefinition: true, scopeLine: 474, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !756)
!754 = !DISubroutineType(types: !755)
!755 = !{!100, !92, !114, !100}
!756 = !{!757, !758, !759, !760, !761, !762}
!757 = !DILocalVariable(name: "p", arg: 1, scope: !753, file: !3, line: 473, type: !92)
!758 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !753, file: !3, line: 473, type: !114)
!759 = !DILocalVariable(name: "force", arg: 3, scope: !753, file: !3, line: 473, type: !100)
!760 = !DILocalVariable(name: "type_internal", scope: !753, file: !3, line: 475, type: !84)
!761 = !DILocalVariable(name: "payload", scope: !753, file: !3, line: 476, type: !91)
!762 = !DILocalVariable(name: "increment_magnitude", scope: !753, file: !3, line: 477, type: !84)
!763 = !DILocation(line: 473, column: 35, scope: !753)
!764 = !DILocation(line: 473, column: 45, scope: !753)
!765 = !DILocation(line: 473, column: 73, scope: !753)
!766 = !DILocation(line: 479, column: 3, scope: !767)
!767 = distinct !DILexicalBlock(scope: !768, file: !3, line: 479, column: 3)
!768 = distinct !DILexicalBlock(scope: !753, file: !3, line: 479, column: 3)
!769 = !DILocation(line: 479, column: 3, scope: !768)
!770 = !DILocation(line: 479, column: 3, scope: !771)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 479, column: 3)
!772 = distinct !DILexicalBlock(scope: !767, file: !3, line: 479, column: 3)
!773 = !DILocation(line: 479, column: 3, scope: !774)
!774 = distinct !DILexicalBlock(scope: !775, file: !3, line: 479, column: 3)
!775 = distinct !DILexicalBlock(scope: !776, file: !3, line: 479, column: 3)
!776 = distinct !DILexicalBlock(scope: !771, file: !3, line: 479, column: 3)
!777 = !DILocation(line: 480, column: 45, scope: !778)
!778 = distinct !DILexicalBlock(scope: !753, file: !3, line: 480, column: 7)
!779 = !DILocation(line: 480, column: 19, scope: !778)
!780 = !DILocation(line: 483, column: 29, scope: !781)
!781 = distinct !DILexicalBlock(scope: !753, file: !3, line: 483, column: 7)
!782 = !DILocation(line: 483, column: 7, scope: !753)
!783 = !DILocation(line: 487, column: 25, scope: !753)
!784 = !DILocation(line: 489, column: 15, scope: !785)
!785 = distinct !DILexicalBlock(scope: !753, file: !3, line: 489, column: 7)
!786 = !DILocation(line: 477, column: 9, scope: !753)
!787 = !DILocation(line: 489, column: 40, scope: !785)
!788 = !DILocation(line: 489, column: 7, scope: !785)
!789 = !DILocation(line: 489, column: 49, scope: !785)
!790 = !DILocation(line: 489, column: 7, scope: !753)
!791 = !DILocation(line: 493, column: 22, scope: !753)
!792 = !DILocation(line: 496, column: 21, scope: !793)
!793 = distinct !DILexicalBlock(scope: !753, file: !3, line: 496, column: 7)
!794 = !DILocation(line: 496, column: 7, scope: !753)
!795 = !DILocation(line: 498, column: 26, scope: !796)
!796 = distinct !DILexicalBlock(scope: !793, file: !3, line: 496, column: 62)
!797 = !DILocation(line: 498, column: 34, scope: !796)
!798 = !DILocation(line: 476, column: 9, scope: !753)
!799 = !DILocation(line: 500, column: 37, scope: !800)
!800 = distinct !DILexicalBlock(scope: !796, file: !3, line: 500, column: 9)
!801 = !DILocation(line: 500, column: 25, scope: !800)
!802 = !DILocation(line: 500, column: 9, scope: !796)
!803 = !DILocation(line: 510, column: 9, scope: !804)
!804 = distinct !DILexicalBlock(scope: !805, file: !3, line: 510, column: 9)
!805 = distinct !DILexicalBlock(scope: !793, file: !3, line: 508, column: 10)
!806 = !DILocation(line: 510, column: 9, scope: !805)
!807 = !DILocation(line: 511, column: 28, scope: !808)
!808 = distinct !DILexicalBlock(scope: !804, file: !3, line: 510, column: 16)
!809 = !DILocation(line: 511, column: 36, scope: !808)
!810 = !DILocation(line: 522, column: 6, scope: !753)
!811 = !DILocation(line: 0, scope: !808)
!812 = !DILocation(line: 522, column: 14, scope: !753)
!813 = !DILocation(line: 523, column: 23, scope: !753)
!814 = !DILocation(line: 523, column: 12, scope: !753)
!815 = !DILocation(line: 523, column: 10, scope: !753)
!816 = !DILocation(line: 524, column: 14, scope: !753)
!817 = !DILocation(line: 527, column: 3, scope: !753)
!818 = !DILocation(line: 0, scope: !819)
!819 = distinct !DILexicalBlock(scope: !804, file: !3, line: 512, column: 12)
!820 = !DILocation(line: 0, scope: !821)
!821 = distinct !DILexicalBlock(scope: !778, file: !3, line: 480, column: 56)
!822 = !DILocation(line: 528, column: 1, scope: !753)
!823 = distinct !DISubprogram(name: "pbuf_add_header_force", scope: !3, file: !3, line: 561, type: !744, isLocal: false, isDefinition: true, scopeLine: 562, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !824)
!824 = !{!825, !826}
!825 = !DILocalVariable(name: "p", arg: 1, scope: !823, file: !3, line: 561, type: !92)
!826 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !823, file: !3, line: 561, type: !114)
!827 = !DILocation(line: 561, column: 36, scope: !823)
!828 = !DILocation(line: 561, column: 46, scope: !823)
!829 = !DILocation(line: 563, column: 10, scope: !823)
!830 = !DILocation(line: 563, column: 3, scope: !823)
!831 = distinct !DISubprogram(name: "pbuf_remove_header", scope: !3, file: !3, line: 582, type: !744, isLocal: false, isDefinition: true, scopeLine: 583, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !832)
!832 = !{!833, !834, !835, !836}
!833 = !DILocalVariable(name: "p", arg: 1, scope: !831, file: !3, line: 582, type: !92)
!834 = !DILocalVariable(name: "header_size_decrement", arg: 2, scope: !831, file: !3, line: 582, type: !114)
!835 = !DILocalVariable(name: "payload", scope: !831, file: !3, line: 584, type: !91)
!836 = !DILocalVariable(name: "increment_magnitude", scope: !831, file: !3, line: 585, type: !84)
!837 = !DILocation(line: 582, column: 33, scope: !831)
!838 = !DILocation(line: 582, column: 43, scope: !831)
!839 = !DILocation(line: 587, column: 3, scope: !840)
!840 = distinct !DILexicalBlock(scope: !841, file: !3, line: 587, column: 3)
!841 = distinct !DILexicalBlock(scope: !831, file: !3, line: 587, column: 3)
!842 = !DILocation(line: 587, column: 3, scope: !841)
!843 = !DILocation(line: 587, column: 3, scope: !844)
!844 = distinct !DILexicalBlock(scope: !845, file: !3, line: 587, column: 3)
!845 = distinct !DILexicalBlock(scope: !840, file: !3, line: 587, column: 3)
!846 = !DILocation(line: 587, column: 3, scope: !847)
!847 = distinct !DILexicalBlock(scope: !848, file: !3, line: 587, column: 3)
!848 = distinct !DILexicalBlock(scope: !849, file: !3, line: 587, column: 3)
!849 = distinct !DILexicalBlock(scope: !844, file: !3, line: 587, column: 3)
!850 = !DILocation(line: 588, column: 45, scope: !851)
!851 = distinct !DILexicalBlock(scope: !831, file: !3, line: 588, column: 7)
!852 = !DILocation(line: 588, column: 19, scope: !851)
!853 = !DILocation(line: 591, column: 29, scope: !854)
!854 = distinct !DILexicalBlock(scope: !831, file: !3, line: 591, column: 7)
!855 = !DILocation(line: 591, column: 7, scope: !831)
!856 = !DILocation(line: 595, column: 25, scope: !831)
!857 = !DILocation(line: 597, column: 3, scope: !858)
!858 = distinct !DILexicalBlock(scope: !859, file: !3, line: 597, column: 3)
!859 = distinct !DILexicalBlock(scope: !831, file: !3, line: 597, column: 3)
!860 = !DILocation(line: 585, column: 9, scope: !831)
!861 = !DILocation(line: 597, column: 3, scope: !859)
!862 = !DILocation(line: 597, column: 3, scope: !863)
!863 = distinct !DILexicalBlock(scope: !864, file: !3, line: 597, column: 3)
!864 = distinct !DILexicalBlock(scope: !858, file: !3, line: 597, column: 3)
!865 = !DILocation(line: 597, column: 3, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !3, line: 597, column: 3)
!867 = distinct !DILexicalBlock(scope: !868, file: !3, line: 597, column: 3)
!868 = distinct !DILexicalBlock(scope: !863, file: !3, line: 597, column: 3)
!869 = !DILocation(line: 600, column: 16, scope: !831)
!870 = !DILocation(line: 584, column: 9, scope: !831)
!871 = !DILocation(line: 604, column: 27, scope: !831)
!872 = !DILocation(line: 604, column: 35, scope: !831)
!873 = !DILocation(line: 604, column: 14, scope: !831)
!874 = !DILocation(line: 606, column: 12, scope: !831)
!875 = !DILocation(line: 606, column: 10, scope: !831)
!876 = !DILocation(line: 607, column: 27, scope: !831)
!877 = !DILocation(line: 607, column: 16, scope: !831)
!878 = !DILocation(line: 607, column: 14, scope: !831)
!879 = !DILocation(line: 612, column: 3, scope: !831)
!880 = !DILocation(line: 0, scope: !831)
!881 = !DILocation(line: 0, scope: !882)
!882 = distinct !DILexicalBlock(scope: !851, file: !3, line: 588, column: 56)
!883 = !DILocation(line: 613, column: 1, scope: !831)
!884 = distinct !DISubprogram(name: "pbuf_header", scope: !3, file: !3, line: 646, type: !885, isLocal: false, isDefinition: true, scopeLine: 647, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !891)
!885 = !DISubroutineType(types: !886)
!886 = !{!100, !92, !887}
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16_t", file: !85, line: 128, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !87, line: 32, baseType: !889)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int16_t", file: !89, line: 55, baseType: !890)
!890 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!891 = !{!892, !893}
!892 = !DILocalVariable(name: "p", arg: 1, scope: !884, file: !3, line: 646, type: !92)
!893 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !884, file: !3, line: 646, type: !887)
!894 = !DILocation(line: 646, column: 26, scope: !884)
!895 = !DILocation(line: 646, column: 35, scope: !884)
!896 = !DILocalVariable(name: "p", arg: 1, scope: !897, file: !3, line: 616, type: !92)
!897 = distinct !DISubprogram(name: "pbuf_header_impl", scope: !3, file: !3, line: 616, type: !898, isLocal: true, isDefinition: true, scopeLine: 617, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !900)
!898 = !DISubroutineType(types: !899)
!899 = !{!100, !92, !887, !100}
!900 = !{!896, !901, !902}
!901 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !897, file: !3, line: 616, type: !887)
!902 = !DILocalVariable(name: "force", arg: 3, scope: !897, file: !3, line: 616, type: !100)
!903 = !DILocation(line: 616, column: 31, scope: !897, inlinedAt: !904)
!904 = distinct !DILocation(line: 648, column: 10, scope: !884)
!905 = !DILocation(line: 616, column: 40, scope: !897, inlinedAt: !904)
!906 = !DILocation(line: 616, column: 68, scope: !897, inlinedAt: !904)
!907 = !DILocation(line: 618, column: 29, scope: !908, inlinedAt: !904)
!908 = distinct !DILexicalBlock(scope: !897, file: !3, line: 618, column: 7)
!909 = !DILocation(line: 618, column: 7, scope: !897, inlinedAt: !904)
!910 = !DILocation(line: 0, scope: !911, inlinedAt: !904)
!911 = distinct !DILexicalBlock(scope: !908, file: !3, line: 620, column: 10)
!912 = !DILocation(line: 619, column: 43, scope: !913, inlinedAt: !904)
!913 = distinct !DILexicalBlock(scope: !908, file: !3, line: 618, column: 34)
!914 = !DILocation(line: 619, column: 12, scope: !913, inlinedAt: !904)
!915 = !DILocation(line: 619, column: 5, scope: !913, inlinedAt: !904)
!916 = !DILocation(line: 621, column: 12, scope: !911, inlinedAt: !904)
!917 = !DILocation(line: 621, column: 5, scope: !911, inlinedAt: !904)
!918 = !DILocation(line: 0, scope: !884)
!919 = !DILocation(line: 623, column: 1, scope: !897, inlinedAt: !904)
!920 = !DILocation(line: 648, column: 3, scope: !884)
!921 = distinct !DISubprogram(name: "pbuf_header_force", scope: !3, file: !3, line: 656, type: !885, isLocal: false, isDefinition: true, scopeLine: 657, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !922)
!922 = !{!923, !924}
!923 = !DILocalVariable(name: "p", arg: 1, scope: !921, file: !3, line: 656, type: !92)
!924 = !DILocalVariable(name: "header_size_increment", arg: 2, scope: !921, file: !3, line: 656, type: !887)
!925 = !DILocation(line: 656, column: 32, scope: !921)
!926 = !DILocation(line: 656, column: 41, scope: !921)
!927 = !DILocation(line: 616, column: 31, scope: !897, inlinedAt: !928)
!928 = distinct !DILocation(line: 658, column: 10, scope: !921)
!929 = !DILocation(line: 616, column: 40, scope: !897, inlinedAt: !928)
!930 = !DILocation(line: 616, column: 68, scope: !897, inlinedAt: !928)
!931 = !DILocation(line: 618, column: 29, scope: !908, inlinedAt: !928)
!932 = !DILocation(line: 618, column: 7, scope: !897, inlinedAt: !928)
!933 = !DILocation(line: 0, scope: !911, inlinedAt: !928)
!934 = !DILocation(line: 619, column: 43, scope: !913, inlinedAt: !928)
!935 = !DILocation(line: 619, column: 12, scope: !913, inlinedAt: !928)
!936 = !DILocation(line: 619, column: 5, scope: !913, inlinedAt: !928)
!937 = !DILocation(line: 621, column: 12, scope: !911, inlinedAt: !928)
!938 = !DILocation(line: 621, column: 5, scope: !911, inlinedAt: !928)
!939 = !DILocation(line: 0, scope: !921)
!940 = !DILocation(line: 623, column: 1, scope: !897, inlinedAt: !928)
!941 = !DILocation(line: 658, column: 3, scope: !921)
!942 = distinct !DISubprogram(name: "pbuf_free_header", scope: !3, file: !3, line: 671, type: !943, isLocal: false, isDefinition: true, scopeLine: 672, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !945)
!943 = !DISubroutineType(types: !944)
!944 = !{!92, !92, !84}
!945 = !{!946, !947, !948, !949, !950}
!946 = !DILocalVariable(name: "q", arg: 1, scope: !942, file: !3, line: 671, type: !92)
!947 = !DILocalVariable(name: "size", arg: 2, scope: !942, file: !3, line: 671, type: !84)
!948 = !DILocalVariable(name: "p", scope: !942, file: !3, line: 673, type: !92)
!949 = !DILocalVariable(name: "free_left", scope: !942, file: !3, line: 674, type: !84)
!950 = !DILocalVariable(name: "f", scope: !951, file: !3, line: 677, type: !92)
!951 = distinct !DILexicalBlock(scope: !952, file: !3, line: 676, column: 30)
!952 = distinct !DILexicalBlock(scope: !953, file: !3, line: 676, column: 9)
!953 = distinct !DILexicalBlock(scope: !942, file: !3, line: 675, column: 26)
!954 = !DILocation(line: 671, column: 31, scope: !942)
!955 = !DILocation(line: 671, column: 40, scope: !942)
!956 = !DILocation(line: 673, column: 16, scope: !942)
!957 = !DILocation(line: 674, column: 9, scope: !942)
!958 = !DILocation(line: 675, column: 3, scope: !942)
!959 = !DILocation(line: 675, column: 10, scope: !942)
!960 = !DILocation(line: 675, column: 20, scope: !942)
!961 = !DILocation(line: 676, column: 25, scope: !952)
!962 = !DILocation(line: 676, column: 19, scope: !952)
!963 = !DILocation(line: 676, column: 9, scope: !953)
!964 = !DILocation(line: 683, column: 29, scope: !965)
!965 = distinct !DILexicalBlock(scope: !952, file: !3, line: 682, column: 12)
!966 = !DILocation(line: 683, column: 7, scope: !965)
!967 = !DILocation(line: 677, column: 20, scope: !951)
!968 = !DILocation(line: 678, column: 37, scope: !951)
!969 = !DILocation(line: 679, column: 14, scope: !951)
!970 = !DILocation(line: 680, column: 15, scope: !951)
!971 = !DILocation(line: 681, column: 7, scope: !951)
!972 = !DILocation(line: 682, column: 5, scope: !951)
!973 = distinct !{!973, !958, !974}
!974 = !DILocation(line: 686, column: 3, scope: !942)
!975 = !DILocation(line: 0, scope: !951)
!976 = !DILocation(line: 687, column: 3, scope: !942)
!977 = distinct !DISubprogram(name: "pbuf_clen", scope: !3, file: !3, line: 809, type: !978, isLocal: false, isDefinition: true, scopeLine: 810, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !982)
!978 = !DISubroutineType(types: !979)
!979 = !{!84, !980}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!982 = !{!983, !984}
!983 = !DILocalVariable(name: "p", arg: 1, scope: !977, file: !3, line: 809, type: !980)
!984 = !DILocalVariable(name: "len", scope: !977, file: !3, line: 811, type: !84)
!985 = !DILocation(line: 809, column: 30, scope: !977)
!986 = !DILocation(line: 811, column: 9, scope: !977)
!987 = !DILocation(line: 814, column: 3, scope: !977)
!988 = !DILocation(line: 814, column: 12, scope: !977)
!989 = !DILocation(line: 815, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !977, file: !3, line: 814, column: 21)
!991 = !DILocation(line: 816, column: 12, scope: !990)
!992 = distinct !{!992, !987, !993}
!993 = !DILocation(line: 817, column: 3, scope: !977)
!994 = !DILocation(line: 0, scope: !990)
!995 = !DILocation(line: 818, column: 3, scope: !977)
!996 = distinct !DISubprogram(name: "pbuf_ref", scope: !3, file: !3, line: 829, type: !125, isLocal: false, isDefinition: true, scopeLine: 830, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !997)
!997 = !{!998, !999}
!998 = !DILocalVariable(name: "p", arg: 1, scope: !996, file: !3, line: 829, type: !92)
!999 = !DILocalVariable(name: "old_level", scope: !1000, file: !3, line: 833, type: !110)
!1000 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 833, column: 5)
!1001 = distinct !DILexicalBlock(scope: !1002, file: !3, line: 832, column: 18)
!1002 = distinct !DILexicalBlock(scope: !996, file: !3, line: 832, column: 7)
!1003 = !DILocation(line: 829, column: 23, scope: !996)
!1004 = !DILocation(line: 832, column: 9, scope: !1002)
!1005 = !DILocation(line: 832, column: 7, scope: !996)
!1006 = !DILocation(line: 833, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1000, file: !3, line: 833, column: 5)
!1008 = !DILocation(line: 833, column: 5, scope: !1000)
!1009 = !DILocation(line: 834, column: 5, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1011, file: !3, line: 834, column: 5)
!1011 = distinct !DILexicalBlock(scope: !1001, file: !3, line: 834, column: 5)
!1012 = !DILocation(line: 834, column: 5, scope: !1011)
!1013 = !DILocation(line: 834, column: 5, scope: !1014)
!1014 = distinct !DILexicalBlock(scope: !1015, file: !3, line: 834, column: 5)
!1015 = distinct !DILexicalBlock(scope: !1010, file: !3, line: 834, column: 5)
!1016 = !DILocation(line: 834, column: 5, scope: !1017)
!1017 = distinct !DILexicalBlock(scope: !1018, file: !3, line: 834, column: 5)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !3, line: 834, column: 5)
!1019 = distinct !DILexicalBlock(scope: !1014, file: !3, line: 834, column: 5)
!1020 = !DILocation(line: 836, column: 1, scope: !996)
!1021 = distinct !DISubprogram(name: "pbuf_cat", scope: !3, file: !3, line: 853, type: !1022, isLocal: false, isDefinition: true, scopeLine: 854, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1024)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{null, !92, !92}
!1024 = !{!1025, !1026, !1027}
!1025 = !DILocalVariable(name: "h", arg: 1, scope: !1021, file: !3, line: 853, type: !92)
!1026 = !DILocalVariable(name: "t", arg: 2, scope: !1021, file: !3, line: 853, type: !92)
!1027 = !DILocalVariable(name: "p", scope: !1021, file: !3, line: 855, type: !92)
!1028 = !DILocation(line: 853, column: 23, scope: !1021)
!1029 = !DILocation(line: 853, column: 39, scope: !1021)
!1030 = !DILocation(line: 857, column: 3, scope: !1031)
!1031 = distinct !DILexicalBlock(scope: !1032, file: !3, line: 857, column: 3)
!1032 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 857, column: 3)
!1033 = !DILocation(line: 857, column: 3, scope: !1034)
!1034 = distinct !DILexicalBlock(scope: !1035, file: !3, line: 857, column: 3)
!1035 = distinct !DILexicalBlock(scope: !1031, file: !3, line: 857, column: 3)
!1036 = !DILocation(line: 857, column: 3, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1038, file: !3, line: 857, column: 3)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !3, line: 857, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1034, file: !3, line: 857, column: 3)
!1040 = !DILocation(line: 855, column: 16, scope: !1021)
!1041 = !DILocation(line: 861, column: 8, scope: !1042)
!1042 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 861, column: 3)
!1043 = !DILocation(line: 861, column: 18, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1042, file: !3, line: 861, column: 3)
!1045 = !DILocation(line: 861, column: 23, scope: !1044)
!1046 = !DILocation(line: 0, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1048, file: !3, line: 866, column: 3)
!1048 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 866, column: 3)
!1049 = !DILocation(line: 861, column: 3, scope: !1042)
!1050 = !DILocation(line: 863, column: 42, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 861, column: 45)
!1052 = !DILocation(line: 863, column: 37, scope: !1051)
!1053 = !DILocation(line: 863, column: 16, scope: !1051)
!1054 = !DILocation(line: 861, column: 3, scope: !1044)
!1055 = distinct !{!1055, !1049, !1056}
!1056 = !DILocation(line: 864, column: 3, scope: !1042)
!1057 = !DILocation(line: 866, column: 3, scope: !1047)
!1058 = !DILocation(line: 0, scope: !1044)
!1059 = !DILocation(line: 866, column: 3, scope: !1048)
!1060 = !DILocation(line: 866, column: 3, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1062, file: !3, line: 866, column: 3)
!1062 = distinct !DILexicalBlock(scope: !1047, file: !3, line: 866, column: 3)
!1063 = !DILocation(line: 866, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !3, line: 866, column: 3)
!1065 = distinct !DILexicalBlock(scope: !1066, file: !3, line: 866, column: 3)
!1066 = distinct !DILexicalBlock(scope: !1061, file: !3, line: 866, column: 3)
!1067 = !DILocation(line: 867, column: 3, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1021, file: !3, line: 867, column: 3)
!1069 = !DILocation(line: 869, column: 40, scope: !1021)
!1070 = !DILocation(line: 869, column: 35, scope: !1021)
!1071 = !DILocation(line: 869, column: 14, scope: !1021)
!1072 = !DILocation(line: 871, column: 11, scope: !1021)
!1073 = !DILocation(line: 875, column: 1, scope: !1021)
!1074 = distinct !DISubprogram(name: "pbuf_chain", scope: !3, file: !3, line: 895, type: !1022, isLocal: false, isDefinition: true, scopeLine: 896, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1075)
!1075 = !{!1076, !1077}
!1076 = !DILocalVariable(name: "h", arg: 1, scope: !1074, file: !3, line: 895, type: !92)
!1077 = !DILocalVariable(name: "t", arg: 2, scope: !1074, file: !3, line: 895, type: !92)
!1078 = !DILocation(line: 895, column: 25, scope: !1074)
!1079 = !DILocation(line: 895, column: 41, scope: !1074)
!1080 = !DILocation(line: 897, column: 3, scope: !1074)
!1081 = !DILocation(line: 829, column: 23, scope: !996, inlinedAt: !1082)
!1082 = distinct !DILocation(line: 899, column: 3, scope: !1074)
!1083 = !DILocation(line: 832, column: 9, scope: !1002, inlinedAt: !1082)
!1084 = !DILocation(line: 832, column: 7, scope: !996, inlinedAt: !1082)
!1085 = !DILocation(line: 833, column: 5, scope: !1007, inlinedAt: !1082)
!1086 = !DILocation(line: 833, column: 5, scope: !1000, inlinedAt: !1082)
!1087 = !DILocation(line: 834, column: 5, scope: !1010, inlinedAt: !1082)
!1088 = !DILocation(line: 834, column: 5, scope: !1011, inlinedAt: !1082)
!1089 = !DILocation(line: 834, column: 5, scope: !1014, inlinedAt: !1082)
!1090 = !DILocation(line: 834, column: 5, scope: !1017, inlinedAt: !1082)
!1091 = !DILocation(line: 836, column: 1, scope: !996, inlinedAt: !1082)
!1092 = !DILocation(line: 901, column: 1, scope: !1074)
!1093 = distinct !DISubprogram(name: "pbuf_dechain", scope: !3, file: !3, line: 912, type: !1094, isLocal: false, isDefinition: true, scopeLine: 913, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1096)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!92, !92}
!1096 = !{!1097, !1098, !1099}
!1097 = !DILocalVariable(name: "p", arg: 1, scope: !1093, file: !3, line: 912, type: !92)
!1098 = !DILocalVariable(name: "q", scope: !1093, file: !3, line: 914, type: !92)
!1099 = !DILocalVariable(name: "tail_gone", scope: !1093, file: !3, line: 915, type: !100)
!1100 = !DILocation(line: 912, column: 27, scope: !1093)
!1101 = !DILocation(line: 915, column: 8, scope: !1093)
!1102 = !DILocation(line: 917, column: 10, scope: !1093)
!1103 = !DILocation(line: 914, column: 16, scope: !1093)
!1104 = !DILocation(line: 919, column: 9, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 919, column: 7)
!1106 = !DILocation(line: 919, column: 7, scope: !1093)
!1107 = !DILocation(line: 938, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !3, line: 938, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1093, file: !3, line: 938, column: 3)
!1110 = !DILocation(line: 921, column: 5, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !3, line: 921, column: 5)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !3, line: 921, column: 5)
!1113 = distinct !DILexicalBlock(scope: !1105, file: !3, line: 919, column: 18)
!1114 = !DILocation(line: 921, column: 5, scope: !1112)
!1115 = !DILocation(line: 921, column: 5, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 921, column: 5)
!1117 = distinct !DILexicalBlock(scope: !1111, file: !3, line: 921, column: 5)
!1118 = !DILocation(line: 921, column: 5, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1120, file: !3, line: 921, column: 5)
!1120 = distinct !DILexicalBlock(scope: !1121, file: !3, line: 921, column: 5)
!1121 = distinct !DILexicalBlock(scope: !1116, file: !3, line: 921, column: 5)
!1122 = !DILocation(line: 925, column: 13, scope: !1113)
!1123 = !DILocation(line: 927, column: 16, scope: !1113)
!1124 = !DILocation(line: 930, column: 17, scope: !1113)
!1125 = !DILocation(line: 936, column: 3, scope: !1113)
!1126 = !DILocation(line: 938, column: 3, scope: !1109)
!1127 = !DILocation(line: 938, column: 3, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !3, line: 938, column: 3)
!1129 = distinct !DILexicalBlock(scope: !1108, file: !3, line: 938, column: 3)
!1130 = !DILocation(line: 938, column: 3, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1132, file: !3, line: 938, column: 3)
!1132 = distinct !DILexicalBlock(scope: !1133, file: !3, line: 938, column: 3)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !3, line: 938, column: 3)
!1134 = !DILocation(line: 939, column: 22, scope: !1093)
!1135 = !DILocation(line: 939, column: 11, scope: !1093)
!1136 = !DILocation(line: 939, column: 3, scope: !1093)
!1137 = distinct !DISubprogram(name: "pbuf_copy", scope: !3, file: !3, line: 961, type: !1138, isLocal: false, isDefinition: true, scopeLine: 962, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1145)
!1138 = !DISubroutineType(types: !1139)
!1139 = !{!1140, !92, !980}
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !49, line: 96, baseType: !1141)
!1141 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !85, line: 126, baseType: !1142)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !87, line: 20, baseType: !1143)
!1143 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !89, line: 41, baseType: !1144)
!1144 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1145 = !{!1146, !1147, !1148, !1149, !1150}
!1146 = !DILocalVariable(name: "p_to", arg: 1, scope: !1137, file: !3, line: 961, type: !92)
!1147 = !DILocalVariable(name: "p_from", arg: 2, scope: !1137, file: !3, line: 961, type: !980)
!1148 = !DILocalVariable(name: "offset_to", scope: !1137, file: !3, line: 963, type: !114)
!1149 = !DILocalVariable(name: "offset_from", scope: !1137, file: !3, line: 963, type: !114)
!1150 = !DILocalVariable(name: "len", scope: !1137, file: !3, line: 963, type: !114)
!1151 = !DILocation(line: 961, column: 24, scope: !1137)
!1152 = !DILocation(line: 961, column: 49, scope: !1137)
!1153 = !DILocation(line: 963, column: 10, scope: !1137)
!1154 = !DILocation(line: 963, column: 25, scope: !1137)
!1155 = !DILocation(line: 969, column: 3, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1157, file: !3, line: 969, column: 3)
!1157 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 969, column: 3)
!1158 = !DILocation(line: 969, column: 3, scope: !1157)
!1159 = !DILocation(line: 969, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1161, file: !3, line: 969, column: 3)
!1161 = distinct !DILexicalBlock(scope: !1156, file: !3, line: 969, column: 3)
!1162 = !DILocation(line: 969, column: 3, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1164, file: !3, line: 969, column: 3)
!1164 = distinct !DILexicalBlock(scope: !1165, file: !3, line: 969, column: 3)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !3, line: 969, column: 3)
!1166 = !DILocation(line: 0, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 992, column: 33)
!1168 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 992, column: 9)
!1169 = distinct !DILexicalBlock(scope: !1137, file: !3, line: 973, column: 6)
!1170 = !DILocation(line: 0, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1172, file: !3, line: 987, column: 37)
!1172 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 987, column: 9)
!1173 = !DILocation(line: 975, column: 16, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 975, column: 9)
!1175 = !DILocation(line: 975, column: 10, scope: !1174)
!1176 = !DILocation(line: 975, column: 20, scope: !1174)
!1177 = !DILocation(line: 975, column: 45, scope: !1174)
!1178 = !DILocation(line: 975, column: 37, scope: !1174)
!1179 = !DILocation(line: 975, column: 49, scope: !1174)
!1180 = !DILocation(line: 975, column: 33, scope: !1174)
!1181 = !DILocation(line: 975, column: 9, scope: !1169)
!1182 = !DILocation(line: 963, column: 42, scope: !1137)
!1183 = !DILocation(line: 982, column: 5, scope: !1169)
!1184 = !DILocation(line: 983, column: 15, scope: !1169)
!1185 = !DILocation(line: 984, column: 17, scope: !1169)
!1186 = !DILocation(line: 985, column: 5, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1188, file: !3, line: 985, column: 5)
!1188 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 985, column: 5)
!1189 = !DILocation(line: 985, column: 5, scope: !1188)
!1190 = !DILocation(line: 985, column: 5, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1192, file: !3, line: 985, column: 5)
!1192 = distinct !DILexicalBlock(scope: !1187, file: !3, line: 985, column: 5)
!1193 = !DILocation(line: 985, column: 5, scope: !1194)
!1194 = distinct !DILexicalBlock(scope: !1195, file: !3, line: 985, column: 5)
!1195 = distinct !DILexicalBlock(scope: !1196, file: !3, line: 985, column: 5)
!1196 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 985, column: 5)
!1197 = !DILocation(line: 986, column: 5, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1199, file: !3, line: 986, column: 5)
!1199 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 986, column: 5)
!1200 = !DILocation(line: 986, column: 5, scope: !1199)
!1201 = !DILocation(line: 986, column: 5, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1203, file: !3, line: 986, column: 5)
!1203 = distinct !DILexicalBlock(scope: !1198, file: !3, line: 986, column: 5)
!1204 = !DILocation(line: 986, column: 5, scope: !1205)
!1205 = distinct !DILexicalBlock(scope: !1206, file: !3, line: 986, column: 5)
!1206 = distinct !DILexicalBlock(scope: !1207, file: !3, line: 986, column: 5)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !3, line: 986, column: 5)
!1208 = !DILocation(line: 987, column: 21, scope: !1172)
!1209 = !DILocation(line: 987, column: 9, scope: !1169)
!1210 = !DILocation(line: 990, column: 24, scope: !1171)
!1211 = !DILocation(line: 991, column: 5, scope: !1171)
!1212 = !DILocation(line: 0, scope: !1169)
!1213 = !DILocation(line: 992, column: 19, scope: !1168)
!1214 = !DILocation(line: 992, column: 9, scope: !1169)
!1215 = !DILocation(line: 995, column: 20, scope: !1167)
!1216 = !DILocation(line: 996, column: 7, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !3, line: 996, column: 7)
!1218 = distinct !DILexicalBlock(scope: !1167, file: !3, line: 996, column: 7)
!1219 = !DILocation(line: 996, column: 7, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !3, line: 996, column: 7)
!1221 = distinct !DILexicalBlock(scope: !1217, file: !3, line: 996, column: 7)
!1222 = !DILocation(line: 996, column: 7, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !3, line: 996, column: 7)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !3, line: 996, column: 7)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !3, line: 996, column: 7)
!1226 = !DILocation(line: 999, column: 17, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 999, column: 9)
!1228 = !DILocation(line: 999, column: 26, scope: !1227)
!1229 = !DILocation(line: 999, column: 38, scope: !1227)
!1230 = !DILocation(line: 999, column: 53, scope: !1227)
!1231 = !DILocation(line: 999, column: 42, scope: !1227)
!1232 = !DILocation(line: 999, column: 9, scope: !1169)
!1233 = !DILocation(line: 1001, column: 7, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1235, file: !3, line: 1001, column: 7)
!1235 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 1001, column: 7)
!1236 = distinct !DILexicalBlock(scope: !1227, file: !3, line: 999, column: 63)
!1237 = !DILocation(line: 1001, column: 7, scope: !1235)
!1238 = !DILocation(line: 1001, column: 7, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1240, file: !3, line: 1001, column: 7)
!1240 = distinct !DILexicalBlock(scope: !1234, file: !3, line: 1001, column: 7)
!1241 = !DILocation(line: 1001, column: 7, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1243, file: !3, line: 1001, column: 7)
!1243 = distinct !DILexicalBlock(scope: !1244, file: !3, line: 1001, column: 7)
!1244 = distinct !DILexicalBlock(scope: !1239, file: !3, line: 1001, column: 7)
!1245 = !DILocation(line: 1004, column: 15, scope: !1246)
!1246 = distinct !DILexicalBlock(scope: !1169, file: !3, line: 1004, column: 9)
!1247 = !DILocation(line: 1004, column: 24, scope: !1246)
!1248 = !DILocation(line: 1004, column: 34, scope: !1246)
!1249 = !DILocation(line: 1004, column: 47, scope: !1246)
!1250 = !DILocation(line: 1004, column: 38, scope: !1246)
!1251 = !DILocation(line: 1004, column: 9, scope: !1169)
!1252 = !DILocation(line: 1006, column: 7, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1254, file: !3, line: 1006, column: 7)
!1254 = distinct !DILexicalBlock(scope: !1255, file: !3, line: 1006, column: 7)
!1255 = distinct !DILexicalBlock(scope: !1246, file: !3, line: 1004, column: 57)
!1256 = !DILocation(line: 1006, column: 7, scope: !1254)
!1257 = !DILocation(line: 1006, column: 7, scope: !1258)
!1258 = distinct !DILexicalBlock(scope: !1259, file: !3, line: 1006, column: 7)
!1259 = distinct !DILexicalBlock(scope: !1253, file: !3, line: 1006, column: 7)
!1260 = !DILocation(line: 1006, column: 7, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1262, file: !3, line: 1006, column: 7)
!1262 = distinct !DILexicalBlock(scope: !1263, file: !3, line: 1006, column: 7)
!1263 = distinct !DILexicalBlock(scope: !1258, file: !3, line: 1006, column: 7)
!1264 = !DILocation(line: 1009, column: 3, scope: !1169)
!1265 = distinct !{!1265, !1266, !1267}
!1266 = !DILocation(line: 973, column: 3, scope: !1137)
!1267 = !DILocation(line: 1009, column: 18, scope: !1137)
!1268 = !DILocation(line: 1012, column: 1, scope: !1137)
!1269 = distinct !DISubprogram(name: "pbuf_copy_partial", scope: !3, file: !3, line: 1027, type: !1270, isLocal: false, isDefinition: true, scopeLine: 1028, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1272)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{!84, !980, !91, !84, !84}
!1272 = !{!1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280}
!1273 = !DILocalVariable(name: "buf", arg: 1, scope: !1269, file: !3, line: 1027, type: !980)
!1274 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1269, file: !3, line: 1027, type: !91)
!1275 = !DILocalVariable(name: "len", arg: 3, scope: !1269, file: !3, line: 1027, type: !84)
!1276 = !DILocalVariable(name: "offset", arg: 4, scope: !1269, file: !3, line: 1027, type: !84)
!1277 = !DILocalVariable(name: "p", scope: !1269, file: !3, line: 1029, type: !980)
!1278 = !DILocalVariable(name: "left", scope: !1269, file: !3, line: 1030, type: !84)
!1279 = !DILocalVariable(name: "buf_copy_len", scope: !1269, file: !3, line: 1031, type: !84)
!1280 = !DILocalVariable(name: "copied_total", scope: !1269, file: !3, line: 1032, type: !84)
!1281 = !DILocation(line: 1027, column: 38, scope: !1269)
!1282 = !DILocation(line: 1027, column: 49, scope: !1269)
!1283 = !DILocation(line: 1027, column: 64, scope: !1269)
!1284 = !DILocation(line: 1027, column: 75, scope: !1269)
!1285 = !DILocation(line: 1030, column: 9, scope: !1269)
!1286 = !DILocation(line: 1032, column: 9, scope: !1269)
!1287 = !DILocation(line: 1034, column: 3, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1289, file: !3, line: 1034, column: 3)
!1289 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1034, column: 3)
!1290 = !DILocation(line: 1034, column: 3, scope: !1289)
!1291 = !DILocation(line: 1034, column: 3, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1293, file: !3, line: 1034, column: 3)
!1293 = distinct !DILexicalBlock(scope: !1288, file: !3, line: 1034, column: 3)
!1294 = !DILocation(line: 1034, column: 3, scope: !1295)
!1295 = distinct !DILexicalBlock(scope: !1296, file: !3, line: 1034, column: 3)
!1296 = distinct !DILexicalBlock(scope: !1297, file: !3, line: 1034, column: 3)
!1297 = distinct !DILexicalBlock(scope: !1292, file: !3, line: 1034, column: 3)
!1298 = !DILocation(line: 1035, column: 3, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1300, file: !3, line: 1035, column: 3)
!1300 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1035, column: 3)
!1301 = !DILocation(line: 1035, column: 3, scope: !1300)
!1302 = !DILocation(line: 1035, column: 3, scope: !1303)
!1303 = distinct !DILexicalBlock(scope: !1304, file: !3, line: 1035, column: 3)
!1304 = distinct !DILexicalBlock(scope: !1299, file: !3, line: 1035, column: 3)
!1305 = !DILocation(line: 1035, column: 3, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1307, file: !3, line: 1035, column: 3)
!1307 = distinct !DILexicalBlock(scope: !1308, file: !3, line: 1035, column: 3)
!1308 = distinct !DILexicalBlock(scope: !1303, file: !3, line: 1035, column: 3)
!1309 = !DILocation(line: 1029, column: 22, scope: !1269)
!1310 = !DILocation(line: 1038, column: 8, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1269, file: !3, line: 1038, column: 3)
!1312 = !DILocation(line: 1038, column: 21, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1311, file: !3, line: 1038, column: 3)
!1314 = !DILocation(line: 1038, column: 3, scope: !1311)
!1315 = !DILocation(line: 1039, column: 17, scope: !1316)
!1316 = distinct !DILexicalBlock(scope: !1317, file: !3, line: 1039, column: 9)
!1317 = distinct !DILexicalBlock(scope: !1313, file: !3, line: 1038, column: 53)
!1318 = !DILocation(line: 1039, column: 23, scope: !1316)
!1319 = !DILocation(line: 0, scope: !1316)
!1320 = !DILocation(line: 1039, column: 34, scope: !1316)
!1321 = !DILocation(line: 1039, column: 9, scope: !1317)
!1322 = !DILocation(line: 1041, column: 31, scope: !1323)
!1323 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1039, column: 46)
!1324 = !DILocation(line: 1042, column: 5, scope: !1323)
!1325 = !DILocation(line: 1044, column: 37, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1316, file: !3, line: 1042, column: 12)
!1327 = !DILocation(line: 1031, column: 9, scope: !1269)
!1328 = !DILocation(line: 1045, column: 24, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1326, file: !3, line: 1045, column: 11)
!1330 = !DILocation(line: 1045, column: 11, scope: !1326)
!1331 = !DILocation(line: 1047, column: 7, scope: !1332)
!1332 = distinct !DILexicalBlock(scope: !1329, file: !3, line: 1045, column: 31)
!1333 = !DILocation(line: 0, scope: !1326)
!1334 = !DILocation(line: 1050, column: 7, scope: !1326)
!1335 = !DILocation(line: 1051, column: 43, scope: !1326)
!1336 = !DILocation(line: 1052, column: 27, scope: !1326)
!1337 = !DILocation(line: 1053, column: 25, scope: !1326)
!1338 = !DILocation(line: 1038, column: 47, scope: !1313)
!1339 = !DILocation(line: 1038, column: 3, scope: !1313)
!1340 = !DILocation(line: 1038, column: 31, scope: !1313)
!1341 = !DILocation(line: 1038, column: 26, scope: !1313)
!1342 = distinct !{!1342, !1314, !1343}
!1343 = !DILocation(line: 1056, column: 3, scope: !1311)
!1344 = !DILocation(line: 1058, column: 1, scope: !1269)
!1345 = distinct !DISubprogram(name: "pbuf_get_contiguous", scope: !3, file: !3, line: 1075, type: !1346, isLocal: false, isDefinition: true, scopeLine: 1076, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1348)
!1346 = !DISubroutineType(types: !1347)
!1347 = !{!91, !980, !91, !114, !84, !84}
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355}
!1349 = !DILocalVariable(name: "p", arg: 1, scope: !1345, file: !3, line: 1075, type: !980)
!1350 = !DILocalVariable(name: "buffer", arg: 2, scope: !1345, file: !3, line: 1075, type: !91)
!1351 = !DILocalVariable(name: "bufsize", arg: 3, scope: !1345, file: !3, line: 1075, type: !114)
!1352 = !DILocalVariable(name: "len", arg: 4, scope: !1345, file: !3, line: 1075, type: !84)
!1353 = !DILocalVariable(name: "offset", arg: 5, scope: !1345, file: !3, line: 1075, type: !84)
!1354 = !DILocalVariable(name: "q", scope: !1345, file: !3, line: 1077, type: !980)
!1355 = !DILocalVariable(name: "out_offset", scope: !1345, file: !3, line: 1078, type: !84)
!1356 = !DILocation(line: 1075, column: 40, scope: !1345)
!1357 = !DILocation(line: 1075, column: 49, scope: !1345)
!1358 = !DILocation(line: 1075, column: 64, scope: !1345)
!1359 = !DILocation(line: 1075, column: 79, scope: !1345)
!1360 = !DILocation(line: 1075, column: 90, scope: !1345)
!1361 = !DILocation(line: 1080, column: 3, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1363, file: !3, line: 1080, column: 3)
!1363 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1080, column: 3)
!1364 = !DILocation(line: 1080, column: 3, scope: !1363)
!1365 = !DILocation(line: 1080, column: 3, scope: !1366)
!1366 = distinct !DILexicalBlock(scope: !1367, file: !3, line: 1080, column: 3)
!1367 = distinct !DILexicalBlock(scope: !1362, file: !3, line: 1080, column: 3)
!1368 = !DILocation(line: 1080, column: 3, scope: !1369)
!1369 = distinct !DILexicalBlock(scope: !1370, file: !3, line: 1080, column: 3)
!1370 = distinct !DILexicalBlock(scope: !1371, file: !3, line: 1080, column: 3)
!1371 = distinct !DILexicalBlock(scope: !1366, file: !3, line: 1080, column: 3)
!1372 = !DILocation(line: 1081, column: 3, scope: !1373)
!1373 = distinct !DILexicalBlock(scope: !1374, file: !3, line: 1081, column: 3)
!1374 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1081, column: 3)
!1375 = !DILocation(line: 1081, column: 3, scope: !1374)
!1376 = !DILocation(line: 1081, column: 3, scope: !1377)
!1377 = distinct !DILexicalBlock(scope: !1378, file: !3, line: 1081, column: 3)
!1378 = distinct !DILexicalBlock(scope: !1373, file: !3, line: 1081, column: 3)
!1379 = !DILocation(line: 1081, column: 3, scope: !1380)
!1380 = distinct !DILexicalBlock(scope: !1381, file: !3, line: 1081, column: 3)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !3, line: 1081, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1377, file: !3, line: 1081, column: 3)
!1383 = !DILocation(line: 1082, column: 3, scope: !1384)
!1384 = distinct !DILexicalBlock(scope: !1385, file: !3, line: 1082, column: 3)
!1385 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1082, column: 3)
!1386 = !DILocation(line: 1082, column: 3, scope: !1385)
!1387 = !DILocation(line: 1082, column: 3, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !3, line: 1082, column: 3)
!1389 = distinct !DILexicalBlock(scope: !1384, file: !3, line: 1082, column: 3)
!1390 = !DILocation(line: 1082, column: 3, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !3, line: 1082, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1393, file: !3, line: 1082, column: 3)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !3, line: 1082, column: 3)
!1394 = !DILocalVariable(name: "in", arg: 1, scope: !1395, file: !3, line: 1153, type: !980)
!1395 = distinct !DISubprogram(name: "pbuf_skip_const", scope: !3, file: !3, line: 1153, type: !1396, isLocal: true, isDefinition: true, scopeLine: 1154, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1399)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!980, !980, !84, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!1399 = !{!1394, !1400, !1401, !1402, !1403}
!1400 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1395, file: !3, line: 1153, type: !84)
!1401 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1395, file: !3, line: 1153, type: !1398)
!1402 = !DILocalVariable(name: "offset_left", scope: !1395, file: !3, line: 1155, type: !84)
!1403 = !DILocalVariable(name: "q", scope: !1395, file: !3, line: 1156, type: !980)
!1404 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1405)
!1405 = distinct !DILocation(line: 1084, column: 7, scope: !1345)
!1406 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1405)
!1407 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1405)
!1408 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1405)
!1409 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1405)
!1410 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1405)
!1411 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1405)
!1412 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1405)
!1413 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1405)
!1414 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1159, column: 50)
!1415 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1405)
!1416 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1405)
!1417 = distinct !{!1417, !1418, !1419}
!1418 = !DILocation(line: 1159, column: 3, scope: !1395)
!1419 = !DILocation(line: 1162, column: 3, scope: !1395)
!1420 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1405)
!1421 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1405)
!1422 = distinct !DILexicalBlock(scope: !1423, file: !3, line: 1163, column: 27)
!1423 = distinct !DILexicalBlock(scope: !1395, file: !3, line: 1163, column: 7)
!1424 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1405)
!1425 = !DILocation(line: 1077, column: 22, scope: !1345)
!1426 = !DILocation(line: 1085, column: 7, scope: !1345)
!1427 = !DILocation(line: 1086, column: 9, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1086, column: 9)
!1429 = distinct !DILexicalBlock(scope: !1430, file: !3, line: 1085, column: 18)
!1430 = distinct !DILexicalBlock(scope: !1345, file: !3, line: 1085, column: 7)
!1431 = !DILocation(line: 1078, column: 9, scope: !1345)
!1432 = !DILocation(line: 1086, column: 20, scope: !1428)
!1433 = !DILocation(line: 1086, column: 33, scope: !1428)
!1434 = !DILocation(line: 1086, column: 31, scope: !1428)
!1435 = !DILocation(line: 1086, column: 16, scope: !1428)
!1436 = !DILocation(line: 1086, column: 9, scope: !1429)
!1437 = !DILocation(line: 1088, column: 25, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1428, file: !3, line: 1086, column: 39)
!1439 = !DILocation(line: 1088, column: 33, scope: !1438)
!1440 = !DILocation(line: 1088, column: 7, scope: !1438)
!1441 = !DILocation(line: 1027, column: 38, scope: !1269, inlinedAt: !1442)
!1442 = distinct !DILocation(line: 1091, column: 9, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1429, file: !3, line: 1091, column: 9)
!1444 = !DILocation(line: 1027, column: 49, scope: !1269, inlinedAt: !1442)
!1445 = !DILocation(line: 1027, column: 64, scope: !1269, inlinedAt: !1442)
!1446 = !DILocation(line: 1027, column: 75, scope: !1269, inlinedAt: !1442)
!1447 = !DILocation(line: 1030, column: 9, scope: !1269, inlinedAt: !1442)
!1448 = !DILocation(line: 1032, column: 9, scope: !1269, inlinedAt: !1442)
!1449 = !DILocation(line: 1034, column: 3, scope: !1289, inlinedAt: !1442)
!1450 = !DILocation(line: 1035, column: 3, scope: !1300, inlinedAt: !1442)
!1451 = !DILocation(line: 1029, column: 22, scope: !1269, inlinedAt: !1442)
!1452 = !DILocation(line: 1038, column: 8, scope: !1311, inlinedAt: !1442)
!1453 = !DILocation(line: 1038, column: 21, scope: !1313, inlinedAt: !1442)
!1454 = !DILocation(line: 1038, column: 3, scope: !1311, inlinedAt: !1442)
!1455 = !DILocation(line: 0, scope: !1316, inlinedAt: !1442)
!1456 = !DILocation(line: 1039, column: 17, scope: !1316, inlinedAt: !1442)
!1457 = !DILocation(line: 1039, column: 23, scope: !1316, inlinedAt: !1442)
!1458 = !DILocation(line: 1039, column: 34, scope: !1316, inlinedAt: !1442)
!1459 = !DILocation(line: 1039, column: 9, scope: !1317, inlinedAt: !1442)
!1460 = !DILocation(line: 1041, column: 31, scope: !1323, inlinedAt: !1442)
!1461 = !DILocation(line: 1042, column: 5, scope: !1323, inlinedAt: !1442)
!1462 = !DILocation(line: 1044, column: 37, scope: !1326, inlinedAt: !1442)
!1463 = !DILocation(line: 1031, column: 9, scope: !1269, inlinedAt: !1442)
!1464 = !DILocation(line: 1045, column: 24, scope: !1329, inlinedAt: !1442)
!1465 = !DILocation(line: 1045, column: 11, scope: !1326, inlinedAt: !1442)
!1466 = !DILocation(line: 1047, column: 7, scope: !1332, inlinedAt: !1442)
!1467 = !DILocation(line: 0, scope: !1326, inlinedAt: !1442)
!1468 = !DILocation(line: 1050, column: 7, scope: !1326, inlinedAt: !1442)
!1469 = !DILocation(line: 1051, column: 43, scope: !1326, inlinedAt: !1442)
!1470 = !DILocation(line: 1052, column: 27, scope: !1326, inlinedAt: !1442)
!1471 = !DILocation(line: 1053, column: 25, scope: !1326, inlinedAt: !1442)
!1472 = !DILocation(line: 1038, column: 47, scope: !1313, inlinedAt: !1442)
!1473 = !DILocation(line: 1038, column: 3, scope: !1313, inlinedAt: !1442)
!1474 = !DILocation(line: 1038, column: 31, scope: !1313, inlinedAt: !1442)
!1475 = !DILocation(line: 1038, column: 26, scope: !1313, inlinedAt: !1442)
!1476 = !DILocation(line: 1058, column: 1, scope: !1269, inlinedAt: !1442)
!1477 = !DILocation(line: 1091, column: 55, scope: !1443)
!1478 = !DILocation(line: 1091, column: 9, scope: !1429)
!1479 = !DILocation(line: 0, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1443, file: !3, line: 1091, column: 63)
!1481 = !DILocation(line: 1095, column: 5, scope: !1429)
!1482 = !DILocation(line: 1098, column: 3, scope: !1345)
!1483 = !DILocation(line: 0, scope: !1345)
!1484 = !DILocation(line: 1099, column: 1, scope: !1345)
!1485 = distinct !DISubprogram(name: "pbuf_split_64k", scope: !3, file: !3, line: 1114, type: !1486, isLocal: false, isDefinition: true, scopeLine: 1115, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1489)
!1486 = !DISubroutineType(types: !1487)
!1487 = !{null, !92, !1488}
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!1489 = !{!1490, !1491, !1492, !1495, !1496}
!1490 = !DILocalVariable(name: "p", arg: 1, scope: !1485, file: !3, line: 1114, type: !92)
!1491 = !DILocalVariable(name: "rest", arg: 2, scope: !1485, file: !3, line: 1114, type: !1488)
!1492 = !DILocalVariable(name: "tot_len_front", scope: !1493, file: !3, line: 1118, type: !84)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !3, line: 1117, column: 41)
!1494 = distinct !DILexicalBlock(scope: !1485, file: !3, line: 1117, column: 7)
!1495 = !DILocalVariable(name: "i", scope: !1493, file: !3, line: 1119, type: !92)
!1496 = !DILocalVariable(name: "r", scope: !1493, file: !3, line: 1120, type: !92)
!1497 = !DILocation(line: 1114, column: 34, scope: !1485)
!1498 = !DILocation(line: 1114, column: 51, scope: !1485)
!1499 = !DILocation(line: 1116, column: 9, scope: !1485)
!1500 = !{!244, !244, i64 0}
!1501 = !DILocation(line: 1117, column: 10, scope: !1494)
!1502 = !DILocation(line: 1117, column: 19, scope: !1494)
!1503 = !DILocation(line: 1117, column: 26, scope: !1494)
!1504 = !DILocation(line: 1117, column: 31, scope: !1494)
!1505 = !DILocation(line: 1117, column: 7, scope: !1485)
!1506 = !DILocation(line: 1118, column: 30, scope: !1493)
!1507 = !DILocation(line: 1118, column: 11, scope: !1493)
!1508 = !DILocation(line: 1119, column: 18, scope: !1493)
!1509 = !DILocation(line: 1120, column: 18, scope: !1493)
!1510 = !DILocation(line: 1123, column: 5, scope: !1493)
!1511 = !DILocation(line: 1123, column: 24, scope: !1493)
!1512 = !DILocation(line: 1123, column: 55, scope: !1493)
!1513 = !DILocation(line: 1123, column: 50, scope: !1493)
!1514 = !DILocation(line: 1123, column: 60, scope: !1493)
!1515 = distinct !{!1515, !1510, !1516}
!1516 = !DILocation(line: 1127, column: 5, scope: !1493)
!1517 = !DILocation(line: 1126, column: 14, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1123, column: 79)
!1519 = !DILocation(line: 1123, column: 15, scope: !1493)
!1520 = !DILocation(line: 1130, column: 8, scope: !1493)
!1521 = !DILocation(line: 1130, column: 13, scope: !1493)
!1522 = !DILocation(line: 1132, column: 9, scope: !1493)
!1523 = !DILocation(line: 1134, column: 12, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1134, column: 7)
!1525 = distinct !DILexicalBlock(scope: !1526, file: !3, line: 1132, column: 20)
!1526 = distinct !DILexicalBlock(scope: !1493, file: !3, line: 1132, column: 9)
!1527 = !DILocation(line: 1134, column: 7, scope: !1524)
!1528 = !DILocation(line: 1135, column: 33, scope: !1529)
!1529 = distinct !DILexicalBlock(scope: !1530, file: !3, line: 1134, column: 43)
!1530 = distinct !DILexicalBlock(scope: !1524, file: !3, line: 1134, column: 7)
!1531 = !DILocation(line: 1135, column: 46, scope: !1529)
!1532 = !DILocation(line: 1135, column: 41, scope: !1529)
!1533 = !DILocation(line: 1135, column: 20, scope: !1529)
!1534 = !DILocation(line: 1136, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1536, file: !3, line: 1136, column: 9)
!1536 = distinct !DILexicalBlock(scope: !1529, file: !3, line: 1136, column: 9)
!1537 = !DILocation(line: 1136, column: 9, scope: !1536)
!1538 = !DILocation(line: 1136, column: 9, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1540, file: !3, line: 1136, column: 9)
!1540 = distinct !DILexicalBlock(scope: !1535, file: !3, line: 1136, column: 9)
!1541 = !DILocation(line: 1136, column: 9, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !3, line: 1136, column: 9)
!1543 = distinct !DILexicalBlock(scope: !1544, file: !3, line: 1136, column: 9)
!1544 = distinct !DILexicalBlock(scope: !1539, file: !3, line: 1136, column: 9)
!1545 = !DILocation(line: 1134, column: 7, scope: !1530)
!1546 = !DILocation(line: 1139, column: 14, scope: !1547)
!1547 = distinct !DILexicalBlock(scope: !1525, file: !3, line: 1139, column: 11)
!1548 = !DILocation(line: 1139, column: 20, scope: !1547)
!1549 = !DILocation(line: 1139, column: 11, scope: !1525)
!1550 = !DILocation(line: 1140, column: 12, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1547, file: !3, line: 1139, column: 41)
!1552 = !DILocation(line: 1140, column: 18, scope: !1551)
!1553 = !DILocation(line: 1141, column: 7, scope: !1551)
!1554 = !DILocation(line: 1145, column: 13, scope: !1525)
!1555 = !DILocation(line: 1146, column: 5, scope: !1525)
!1556 = !DILocation(line: 0, scope: !1525)
!1557 = !DILocation(line: 1147, column: 3, scope: !1493)
!1558 = !DILocation(line: 1148, column: 1, scope: !1485)
!1559 = distinct !DISubprogram(name: "pbuf_skip", scope: !3, file: !3, line: 1179, type: !1560, isLocal: false, isDefinition: true, scopeLine: 1180, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1562)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!92, !92, !84, !1398}
!1562 = !{!1563, !1564, !1565, !1566}
!1563 = !DILocalVariable(name: "in", arg: 1, scope: !1559, file: !3, line: 1179, type: !92)
!1564 = !DILocalVariable(name: "in_offset", arg: 2, scope: !1559, file: !3, line: 1179, type: !84)
!1565 = !DILocalVariable(name: "out_offset", arg: 3, scope: !1559, file: !3, line: 1179, type: !1398)
!1566 = !DILocalVariable(name: "out", scope: !1559, file: !3, line: 1181, type: !980)
!1567 = !DILocation(line: 1179, column: 24, scope: !1559)
!1568 = !DILocation(line: 1179, column: 34, scope: !1559)
!1569 = !DILocation(line: 1179, column: 52, scope: !1559)
!1570 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1571)
!1571 = distinct !DILocation(line: 1181, column: 28, scope: !1559)
!1572 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1571)
!1573 = !DILocation(line: 1153, column: 64, scope: !1395, inlinedAt: !1571)
!1574 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1571)
!1575 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1571)
!1576 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1571)
!1577 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1571)
!1578 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1571)
!1579 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1571)
!1580 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1571)
!1581 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1571)
!1582 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1571)
!1583 = !DILocation(line: 0, scope: !1414, inlinedAt: !1571)
!1584 = !DILocation(line: 1163, column: 18, scope: !1423, inlinedAt: !1571)
!1585 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1571)
!1586 = !DILocation(line: 1164, column: 17, scope: !1422, inlinedAt: !1571)
!1587 = !{!247, !247, i64 0}
!1588 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1571)
!1589 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1571)
!1590 = !DILocation(line: 1181, column: 22, scope: !1559)
!1591 = !DILocation(line: 1182, column: 3, scope: !1559)
!1592 = distinct !DISubprogram(name: "pbuf_take", scope: !3, file: !3, line: 1197, type: !1593, isLocal: false, isDefinition: true, scopeLine: 1198, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1597)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!1140, !92, !1595, !84}
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1597 = !{!1598, !1599, !1600, !1601, !1602, !1603, !1604}
!1598 = !DILocalVariable(name: "buf", arg: 1, scope: !1592, file: !3, line: 1197, type: !92)
!1599 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1592, file: !3, line: 1197, type: !1595)
!1600 = !DILocalVariable(name: "len", arg: 3, scope: !1592, file: !3, line: 1197, type: !84)
!1601 = !DILocalVariable(name: "p", scope: !1592, file: !3, line: 1199, type: !92)
!1602 = !DILocalVariable(name: "buf_copy_len", scope: !1592, file: !3, line: 1200, type: !114)
!1603 = !DILocalVariable(name: "total_copy_len", scope: !1592, file: !3, line: 1201, type: !114)
!1604 = !DILocalVariable(name: "copied_total", scope: !1592, file: !3, line: 1202, type: !114)
!1605 = !DILocation(line: 1197, column: 24, scope: !1592)
!1606 = !DILocation(line: 1197, column: 41, scope: !1592)
!1607 = !DILocation(line: 1197, column: 56, scope: !1592)
!1608 = !DILocation(line: 1201, column: 27, scope: !1592)
!1609 = !DILocation(line: 1201, column: 10, scope: !1592)
!1610 = !DILocation(line: 1202, column: 10, scope: !1592)
!1611 = !DILocation(line: 1204, column: 3, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1613, file: !3, line: 1204, column: 3)
!1613 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1204, column: 3)
!1614 = !DILocation(line: 1204, column: 3, scope: !1613)
!1615 = !DILocation(line: 1204, column: 3, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1617, file: !3, line: 1204, column: 3)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !3, line: 1204, column: 3)
!1618 = !DILocation(line: 1204, column: 3, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1620, file: !3, line: 1204, column: 3)
!1620 = distinct !DILexicalBlock(scope: !1621, file: !3, line: 1204, column: 3)
!1621 = distinct !DILexicalBlock(scope: !1616, file: !3, line: 1204, column: 3)
!1622 = !DILocation(line: 1205, column: 3, scope: !1623)
!1623 = distinct !DILexicalBlock(scope: !1624, file: !3, line: 1205, column: 3)
!1624 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1205, column: 3)
!1625 = !DILocation(line: 1205, column: 3, scope: !1624)
!1626 = !DILocation(line: 1205, column: 3, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1628, file: !3, line: 1205, column: 3)
!1628 = distinct !DILexicalBlock(scope: !1623, file: !3, line: 1205, column: 3)
!1629 = !DILocation(line: 1205, column: 3, scope: !1630)
!1630 = distinct !DILexicalBlock(scope: !1631, file: !3, line: 1205, column: 3)
!1631 = distinct !DILexicalBlock(scope: !1632, file: !3, line: 1205, column: 3)
!1632 = distinct !DILexicalBlock(scope: !1627, file: !3, line: 1205, column: 3)
!1633 = !DILocation(line: 1206, column: 3, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !3, line: 1206, column: 3)
!1635 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1206, column: 3)
!1636 = !DILocation(line: 1206, column: 3, scope: !1635)
!1637 = !DILocation(line: 1206, column: 3, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1639, file: !3, line: 1206, column: 3)
!1639 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 1206, column: 3)
!1640 = !DILocation(line: 1206, column: 3, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1642, file: !3, line: 1206, column: 3)
!1642 = distinct !DILexicalBlock(scope: !1643, file: !3, line: 1206, column: 3)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !3, line: 1206, column: 3)
!1644 = !DILocation(line: 1208, column: 21, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1208, column: 7)
!1646 = !DILocation(line: 1208, column: 7, scope: !1592)
!1647 = !DILocation(line: 1199, column: 16, scope: !1592)
!1648 = !DILocation(line: 1213, column: 8, scope: !1649)
!1649 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1213, column: 3)
!1650 = !DILocation(line: 1213, column: 32, scope: !1651)
!1651 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 1213, column: 3)
!1652 = !DILocation(line: 1213, column: 3, scope: !1649)
!1653 = !DILocation(line: 1214, column: 5, scope: !1654)
!1654 = distinct !DILexicalBlock(scope: !1655, file: !3, line: 1214, column: 5)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1214, column: 5)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !3, line: 1213, column: 51)
!1657 = !DILocation(line: 1214, column: 5, scope: !1655)
!1658 = !DILocation(line: 1214, column: 5, scope: !1659)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !3, line: 1214, column: 5)
!1660 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 1214, column: 5)
!1661 = !DILocation(line: 1214, column: 5, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1663, file: !3, line: 1214, column: 5)
!1663 = distinct !DILexicalBlock(scope: !1664, file: !3, line: 1214, column: 5)
!1664 = distinct !DILexicalBlock(scope: !1659, file: !3, line: 1214, column: 5)
!1665 = !DILocation(line: 1200, column: 10, scope: !1592)
!1666 = !DILocation(line: 1216, column: 27, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1656, file: !3, line: 1216, column: 9)
!1668 = !DILocation(line: 1216, column: 24, scope: !1667)
!1669 = !DILocation(line: 1216, column: 22, scope: !1667)
!1670 = !DILocation(line: 1216, column: 9, scope: !1656)
!1671 = !DILocation(line: 1219, column: 5, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1667, file: !3, line: 1216, column: 32)
!1673 = !DILocation(line: 0, scope: !1656)
!1674 = !DILocation(line: 1221, column: 5, scope: !1656)
!1675 = !DILocation(line: 1222, column: 20, scope: !1656)
!1676 = !DILocation(line: 1223, column: 18, scope: !1656)
!1677 = !DILocation(line: 1213, column: 45, scope: !1651)
!1678 = !DILocation(line: 1213, column: 3, scope: !1651)
!1679 = distinct !{!1679, !1652, !1680}
!1680 = !DILocation(line: 1224, column: 3, scope: !1649)
!1681 = !DILocation(line: 1225, column: 3, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1683, file: !3, line: 1225, column: 3)
!1683 = distinct !DILexicalBlock(scope: !1592, file: !3, line: 1225, column: 3)
!1684 = !DILocation(line: 1225, column: 3, scope: !1683)
!1685 = !DILocation(line: 1225, column: 3, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !3, line: 1225, column: 3)
!1687 = distinct !DILexicalBlock(scope: !1682, file: !3, line: 1225, column: 3)
!1688 = !DILocation(line: 1225, column: 3, scope: !1689)
!1689 = distinct !DILexicalBlock(scope: !1690, file: !3, line: 1225, column: 3)
!1690 = distinct !DILexicalBlock(scope: !1691, file: !3, line: 1225, column: 3)
!1691 = distinct !DILexicalBlock(scope: !1686, file: !3, line: 1225, column: 3)
!1692 = !DILocation(line: 1226, column: 3, scope: !1592)
!1693 = !DILocation(line: 1227, column: 1, scope: !1592)
!1694 = distinct !DISubprogram(name: "pbuf_take_at", scope: !3, file: !3, line: 1241, type: !1695, isLocal: false, isDefinition: true, scopeLine: 1242, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1697)
!1695 = !DISubroutineType(types: !1696)
!1696 = !{!1140, !92, !1595, !84, !84}
!1697 = !{!1698, !1699, !1700, !1701, !1702, !1703, !1704, !1707, !1708}
!1698 = !DILocalVariable(name: "buf", arg: 1, scope: !1694, file: !3, line: 1241, type: !92)
!1699 = !DILocalVariable(name: "dataptr", arg: 2, scope: !1694, file: !3, line: 1241, type: !1595)
!1700 = !DILocalVariable(name: "len", arg: 3, scope: !1694, file: !3, line: 1241, type: !84)
!1701 = !DILocalVariable(name: "offset", arg: 4, scope: !1694, file: !3, line: 1241, type: !84)
!1702 = !DILocalVariable(name: "target_offset", scope: !1694, file: !3, line: 1243, type: !84)
!1703 = !DILocalVariable(name: "q", scope: !1694, file: !3, line: 1244, type: !92)
!1704 = !DILocalVariable(name: "remaining_len", scope: !1705, file: !3, line: 1248, type: !84)
!1705 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 1247, column: 59)
!1706 = distinct !DILexicalBlock(scope: !1694, file: !3, line: 1247, column: 7)
!1707 = !DILocalVariable(name: "src_ptr", scope: !1705, file: !3, line: 1249, type: !134)
!1708 = !DILocalVariable(name: "first_copy_len", scope: !1705, file: !3, line: 1251, type: !84)
!1709 = !DILocation(line: 1241, column: 27, scope: !1694)
!1710 = !DILocation(line: 1241, column: 44, scope: !1694)
!1711 = !DILocation(line: 1241, column: 59, scope: !1694)
!1712 = !DILocation(line: 1241, column: 70, scope: !1694)
!1713 = !DILocation(line: 1179, column: 24, scope: !1559, inlinedAt: !1714)
!1714 = distinct !DILocation(line: 1244, column: 20, scope: !1694)
!1715 = !DILocation(line: 1179, column: 34, scope: !1559, inlinedAt: !1714)
!1716 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1717)
!1717 = distinct !DILocation(line: 1181, column: 28, scope: !1559, inlinedAt: !1714)
!1718 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1717)
!1719 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1717)
!1720 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1717)
!1721 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1717)
!1722 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1717)
!1723 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1717)
!1724 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1717)
!1725 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1717)
!1726 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1717)
!1727 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1717)
!1728 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1717)
!1729 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1717)
!1730 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1717)
!1731 = !DILocation(line: 1181, column: 22, scope: !1559, inlinedAt: !1714)
!1732 = !DILocation(line: 1182, column: 3, scope: !1559, inlinedAt: !1714)
!1733 = !DILocation(line: 1244, column: 16, scope: !1694)
!1734 = !DILocation(line: 1247, column: 19, scope: !1706)
!1735 = !DILocation(line: 1247, column: 26, scope: !1706)
!1736 = !DILocation(line: 1247, column: 23, scope: !1706)
!1737 = !DILocation(line: 1243, column: 9, scope: !1694)
!1738 = !DILocation(line: 1247, column: 37, scope: !1706)
!1739 = !DILocation(line: 1247, column: 53, scope: !1706)
!1740 = !DILocation(line: 1247, column: 51, scope: !1706)
!1741 = !DILocation(line: 1247, column: 34, scope: !1706)
!1742 = !DILocation(line: 1247, column: 7, scope: !1694)
!1743 = !DILocation(line: 1248, column: 11, scope: !1705)
!1744 = !DILocation(line: 1249, column: 17, scope: !1705)
!1745 = !DILocation(line: 1252, column: 5, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 1252, column: 5)
!1747 = !DILocation(line: 1252, column: 5, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1746, file: !3, line: 1252, column: 5)
!1749 = !DILocation(line: 1253, column: 29, scope: !1705)
!1750 = !DILocation(line: 1254, column: 5, scope: !1705)
!1751 = !DILocation(line: 1255, column: 21, scope: !1705)
!1752 = !DILocation(line: 1257, column: 23, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1705, file: !3, line: 1257, column: 9)
!1754 = !DILocation(line: 1257, column: 9, scope: !1705)
!1755 = !DILocation(line: 1256, column: 13, scope: !1705)
!1756 = !DILocation(line: 1258, column: 27, scope: !1757)
!1757 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 1257, column: 28)
!1758 = !DILocation(line: 1258, column: 14, scope: !1757)
!1759 = !DILocation(line: 1258, column: 7, scope: !1757)
!1760 = !DILocation(line: 0, scope: !1757)
!1761 = !DILocation(line: 0, scope: !1694)
!1762 = !DILocation(line: 1263, column: 1, scope: !1694)
!1763 = distinct !DISubprogram(name: "pbuf_coalesce", scope: !3, file: !3, line: 1279, type: !1764, isLocal: false, isDefinition: true, scopeLine: 1280, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1766)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!92, !92, !174}
!1766 = !{!1767, !1768, !1769}
!1767 = !DILocalVariable(name: "p", arg: 1, scope: !1763, file: !3, line: 1279, type: !92)
!1768 = !DILocalVariable(name: "layer", arg: 2, scope: !1763, file: !3, line: 1279, type: !174)
!1769 = !DILocalVariable(name: "q", scope: !1763, file: !3, line: 1281, type: !92)
!1770 = !DILocation(line: 1279, column: 28, scope: !1763)
!1771 = !DILocation(line: 1279, column: 42, scope: !1763)
!1772 = !DILocation(line: 1282, column: 10, scope: !1773)
!1773 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1282, column: 7)
!1774 = !DILocation(line: 1282, column: 15, scope: !1773)
!1775 = !DILocation(line: 1282, column: 7, scope: !1763)
!1776 = !DILocalVariable(name: "layer", arg: 1, scope: !1777, file: !3, line: 1307, type: !174)
!1777 = distinct !DISubprogram(name: "pbuf_clone", scope: !3, file: !3, line: 1307, type: !1778, isLocal: false, isDefinition: true, scopeLine: 1308, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1780)
!1778 = !DISubroutineType(types: !1779)
!1779 = !{!92, !174, !175, !92}
!1780 = !{!1776, !1781, !1782, !1783, !1784}
!1781 = !DILocalVariable(name: "type", arg: 2, scope: !1777, file: !3, line: 1307, type: !175)
!1782 = !DILocalVariable(name: "p", arg: 3, scope: !1777, file: !3, line: 1307, type: !92)
!1783 = !DILocalVariable(name: "q", scope: !1777, file: !3, line: 1309, type: !92)
!1784 = !DILocalVariable(name: "err", scope: !1777, file: !3, line: 1310, type: !1140)
!1785 = !DILocation(line: 1307, column: 23, scope: !1777, inlinedAt: !1786)
!1786 = distinct !DILocation(line: 1285, column: 7, scope: !1763)
!1787 = !DILocation(line: 1307, column: 40, scope: !1777, inlinedAt: !1786)
!1788 = !DILocation(line: 1307, column: 59, scope: !1777, inlinedAt: !1786)
!1789 = !DILocation(line: 1311, column: 28, scope: !1777, inlinedAt: !1786)
!1790 = !DILocation(line: 224, column: 23, scope: !171, inlinedAt: !1791)
!1791 = distinct !DILocation(line: 1311, column: 7, scope: !1777, inlinedAt: !1786)
!1792 = !DILocation(line: 224, column: 36, scope: !171, inlinedAt: !1791)
!1793 = !DILocation(line: 224, column: 54, scope: !171, inlinedAt: !1791)
!1794 = !DILocation(line: 230, column: 3, scope: !171, inlinedAt: !1791)
!1795 = !DILocation(line: 274, column: 35, scope: !190, inlinedAt: !1791)
!1796 = !DILocation(line: 274, column: 27, scope: !190, inlinedAt: !1791)
!1797 = !DILocation(line: 274, column: 13, scope: !190, inlinedAt: !1791)
!1798 = !DILocation(line: 275, column: 85, scope: !190, inlinedAt: !1791)
!1799 = !DILocation(line: 275, column: 83, scope: !190, inlinedAt: !1791)
!1800 = !DILocation(line: 275, column: 18, scope: !190, inlinedAt: !1791)
!1801 = !DILocation(line: 278, column: 24, scope: !373, inlinedAt: !1791)
!1802 = !DILocation(line: 278, column: 55, scope: !373, inlinedAt: !1791)
!1803 = !DILocation(line: 279, column: 24, scope: !373, inlinedAt: !1791)
!1804 = !DILocation(line: 279, column: 22, scope: !373, inlinedAt: !1791)
!1805 = !DILocation(line: 278, column: 11, scope: !190, inlinedAt: !1791)
!1806 = !DILocation(line: 284, column: 26, scope: !190, inlinedAt: !1791)
!1807 = !DILocation(line: 285, column: 13, scope: !380, inlinedAt: !1791)
!1808 = !DILocation(line: 285, column: 11, scope: !190, inlinedAt: !1791)
!1809 = !DILocation(line: 0, scope: !1777, inlinedAt: !1786)
!1810 = !DILocation(line: 226, column: 16, scope: !171, inlinedAt: !1791)
!1811 = !DILocation(line: 300, column: 1, scope: !171, inlinedAt: !1791)
!1812 = !DILocation(line: 1309, column: 16, scope: !1777, inlinedAt: !1786)
!1813 = !DILocation(line: 1312, column: 7, scope: !1777, inlinedAt: !1786)
!1814 = !DILocation(line: 1313, column: 5, scope: !1815, inlinedAt: !1786)
!1815 = distinct !DILexicalBlock(scope: !1816, file: !3, line: 1312, column: 18)
!1816 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1312, column: 7)
!1817 = !DILocation(line: 1319, column: 1, scope: !1777, inlinedAt: !1786)
!1818 = !DILocation(line: 1281, column: 16, scope: !1763)
!1819 = !DILocation(line: 1286, column: 7, scope: !1763)
!1820 = !DILocation(line: 1288, column: 5, scope: !1821)
!1821 = distinct !DILexicalBlock(scope: !1822, file: !3, line: 1286, column: 18)
!1822 = distinct !DILexicalBlock(scope: !1763, file: !3, line: 1286, column: 7)
!1823 = !DILocation(line: 284, column: 11, scope: !190, inlinedAt: !1791)
!1824 = !DILocation(line: 288, column: 33, scope: !190, inlinedAt: !1791)
!1825 = !DILocation(line: 179, column: 37, scope: !224, inlinedAt: !1826)
!1826 = distinct !DILocation(line: 288, column: 7, scope: !190, inlinedAt: !1791)
!1827 = !DILocation(line: 179, column: 46, scope: !224, inlinedAt: !1826)
!1828 = !DILocation(line: 179, column: 61, scope: !224, inlinedAt: !1826)
!1829 = !DILocation(line: 179, column: 76, scope: !224, inlinedAt: !1826)
!1830 = !DILocation(line: 179, column: 91, scope: !224, inlinedAt: !1826)
!1831 = !DILocation(line: 179, column: 102, scope: !224, inlinedAt: !1826)
!1832 = !DILocation(line: 181, column: 6, scope: !224, inlinedAt: !1826)
!1833 = !DILocation(line: 181, column: 11, scope: !224, inlinedAt: !1826)
!1834 = !DILocation(line: 182, column: 6, scope: !224, inlinedAt: !1826)
!1835 = !DILocation(line: 182, column: 14, scope: !224, inlinedAt: !1826)
!1836 = !DILocation(line: 183, column: 6, scope: !224, inlinedAt: !1826)
!1837 = !DILocation(line: 183, column: 14, scope: !224, inlinedAt: !1826)
!1838 = !DILocation(line: 184, column: 6, scope: !224, inlinedAt: !1826)
!1839 = !DILocation(line: 184, column: 10, scope: !224, inlinedAt: !1826)
!1840 = !DILocation(line: 185, column: 6, scope: !224, inlinedAt: !1826)
!1841 = !DILocation(line: 185, column: 20, scope: !224, inlinedAt: !1826)
!1842 = !DILocation(line: 186, column: 6, scope: !224, inlinedAt: !1826)
!1843 = !DILocation(line: 186, column: 12, scope: !224, inlinedAt: !1826)
!1844 = !DILocation(line: 187, column: 6, scope: !224, inlinedAt: !1826)
!1845 = !DILocation(line: 187, column: 10, scope: !224, inlinedAt: !1826)
!1846 = !DILocation(line: 188, column: 6, scope: !224, inlinedAt: !1826)
!1847 = !DILocation(line: 188, column: 13, scope: !224, inlinedAt: !1826)
!1848 = !DILocation(line: 189, column: 1, scope: !224, inlinedAt: !1826)
!1849 = !DILocation(line: 290, column: 7, scope: !1850, inlinedAt: !1791)
!1850 = distinct !DILexicalBlock(scope: !190, file: !3, line: 290, column: 7)
!1851 = !DILocation(line: 292, column: 7, scope: !190, inlinedAt: !1791)
!1852 = !DILocation(line: 299, column: 3, scope: !171, inlinedAt: !1791)
!1853 = !DILocation(line: 1315, column: 9, scope: !1777, inlinedAt: !1786)
!1854 = !DILocation(line: 1310, column: 9, scope: !1777, inlinedAt: !1786)
!1855 = !DILocation(line: 1317, column: 3, scope: !1856, inlinedAt: !1786)
!1856 = distinct !DILexicalBlock(scope: !1777, file: !3, line: 1317, column: 3)
!1857 = !DILocation(line: 1318, column: 3, scope: !1777, inlinedAt: !1786)
!1858 = !DILocation(line: 1290, column: 3, scope: !1763)
!1859 = !DILocation(line: 1291, column: 3, scope: !1763)
!1860 = !DILocation(line: 0, scope: !1763)
!1861 = !DILocation(line: 0, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1773, file: !3, line: 1282, column: 24)
!1863 = !DILocation(line: 1292, column: 1, scope: !1763)
!1864 = !DILocation(line: 1307, column: 23, scope: !1777)
!1865 = !DILocation(line: 1307, column: 40, scope: !1777)
!1866 = !DILocation(line: 1307, column: 59, scope: !1777)
!1867 = !DILocation(line: 1311, column: 28, scope: !1777)
!1868 = !DILocation(line: 1311, column: 7, scope: !1777)
!1869 = !DILocation(line: 1309, column: 16, scope: !1777)
!1870 = !DILocation(line: 1312, column: 9, scope: !1816)
!1871 = !DILocation(line: 1312, column: 7, scope: !1777)
!1872 = !DILocation(line: 1315, column: 9, scope: !1777)
!1873 = !DILocation(line: 1310, column: 9, scope: !1777)
!1874 = !DILocation(line: 1317, column: 3, scope: !1856)
!1875 = !DILocation(line: 1318, column: 3, scope: !1777)
!1876 = !DILocation(line: 0, scope: !1815)
!1877 = !DILocation(line: 1319, column: 1, scope: !1777)
!1878 = distinct !DISubprogram(name: "pbuf_get_at", scope: !3, file: !3, line: 1372, type: !1879, isLocal: false, isDefinition: true, scopeLine: 1373, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1881)
!1879 = !DISubroutineType(types: !1880)
!1880 = !{!100, !980, !84}
!1881 = !{!1882, !1883, !1884}
!1882 = !DILocalVariable(name: "p", arg: 1, scope: !1878, file: !3, line: 1372, type: !980)
!1883 = !DILocalVariable(name: "offset", arg: 2, scope: !1878, file: !3, line: 1372, type: !84)
!1884 = !DILocalVariable(name: "ret", scope: !1878, file: !3, line: 1374, type: !50)
!1885 = !DILocation(line: 1372, column: 32, scope: !1878)
!1886 = !DILocation(line: 1372, column: 41, scope: !1878)
!1887 = !DILocalVariable(name: "p", arg: 1, scope: !1888, file: !3, line: 1390, type: !980)
!1888 = distinct !DISubprogram(name: "pbuf_try_get_at", scope: !3, file: !3, line: 1390, type: !1889, isLocal: false, isDefinition: true, scopeLine: 1391, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1891)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{!50, !980, !84}
!1891 = !{!1887, !1892, !1893, !1894}
!1892 = !DILocalVariable(name: "offset", arg: 2, scope: !1888, file: !3, line: 1390, type: !84)
!1893 = !DILocalVariable(name: "q_idx", scope: !1888, file: !3, line: 1392, type: !84)
!1894 = !DILocalVariable(name: "q", scope: !1888, file: !3, line: 1393, type: !980)
!1895 = !DILocation(line: 1390, column: 36, scope: !1888, inlinedAt: !1896)
!1896 = distinct !DILocation(line: 1374, column: 13, scope: !1878)
!1897 = !DILocation(line: 1390, column: 45, scope: !1888, inlinedAt: !1896)
!1898 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1899)
!1899 = distinct !DILocation(line: 1393, column: 26, scope: !1888, inlinedAt: !1896)
!1900 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1899)
!1901 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1899)
!1902 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1899)
!1903 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1899)
!1904 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1899)
!1905 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1899)
!1906 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1899)
!1907 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1899)
!1908 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1899)
!1909 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1899)
!1910 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1899)
!1911 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1899)
!1912 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1899)
!1913 = !DILocation(line: 1393, column: 22, scope: !1888, inlinedAt: !1896)
!1914 = !DILocation(line: 1396, column: 19, scope: !1915, inlinedAt: !1896)
!1915 = distinct !DILexicalBlock(scope: !1888, file: !3, line: 1396, column: 7)
!1916 = !DILocation(line: 1392, column: 9, scope: !1888, inlinedAt: !1896)
!1917 = !DILocation(line: 1396, column: 7, scope: !1888, inlinedAt: !1896)
!1918 = !DILocation(line: 1397, column: 24, scope: !1919, inlinedAt: !1896)
!1919 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 1396, column: 40)
!1920 = !DILocation(line: 1397, column: 12, scope: !1919, inlinedAt: !1896)
!1921 = !DILocation(line: 1374, column: 7, scope: !1878)
!1922 = !DILocation(line: 1376, column: 5, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1924, file: !3, line: 1375, column: 17)
!1924 = distinct !DILexicalBlock(scope: !1878, file: !3, line: 1375, column: 7)
!1925 = !DILocation(line: 1378, column: 3, scope: !1878)
!1926 = !DILocation(line: 0, scope: !1878)
!1927 = !DILocation(line: 1400, column: 1, scope: !1888, inlinedAt: !1896)
!1928 = !DILocation(line: 1375, column: 7, scope: !1878)
!1929 = !DILocation(line: 0, scope: !1923)
!1930 = !DILocation(line: 1379, column: 1, scope: !1878)
!1931 = !DILocation(line: 1390, column: 36, scope: !1888)
!1932 = !DILocation(line: 1390, column: 45, scope: !1888)
!1933 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1934)
!1934 = distinct !DILocation(line: 1393, column: 26, scope: !1888)
!1935 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1934)
!1936 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1934)
!1937 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1934)
!1938 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1934)
!1939 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1934)
!1940 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1934)
!1941 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1934)
!1942 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1934)
!1943 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1934)
!1944 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1934)
!1945 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1934)
!1946 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1934)
!1947 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1934)
!1948 = !DILocation(line: 1393, column: 22, scope: !1888)
!1949 = !DILocation(line: 1396, column: 19, scope: !1915)
!1950 = !DILocation(line: 1392, column: 9, scope: !1888)
!1951 = !DILocation(line: 1396, column: 7, scope: !1888)
!1952 = !DILocation(line: 1397, column: 24, scope: !1919)
!1953 = !DILocation(line: 1397, column: 12, scope: !1919)
!1954 = !DILocation(line: 1397, column: 5, scope: !1919)
!1955 = !DILocation(line: 1399, column: 3, scope: !1888)
!1956 = !DILocation(line: 0, scope: !1888)
!1957 = !DILocation(line: 0, scope: !1919)
!1958 = !DILocation(line: 1400, column: 1, scope: !1888)
!1959 = distinct !DISubprogram(name: "pbuf_put_at", scope: !3, file: !3, line: 1412, type: !1960, isLocal: false, isDefinition: true, scopeLine: 1413, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !1962)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{null, !92, !84, !100}
!1962 = !{!1963, !1964, !1965, !1966, !1967}
!1963 = !DILocalVariable(name: "p", arg: 1, scope: !1959, file: !3, line: 1412, type: !92)
!1964 = !DILocalVariable(name: "offset", arg: 2, scope: !1959, file: !3, line: 1412, type: !84)
!1965 = !DILocalVariable(name: "data", arg: 3, scope: !1959, file: !3, line: 1412, type: !100)
!1966 = !DILocalVariable(name: "q_idx", scope: !1959, file: !3, line: 1414, type: !84)
!1967 = !DILocalVariable(name: "q", scope: !1959, file: !3, line: 1415, type: !92)
!1968 = !DILocation(line: 1412, column: 26, scope: !1959)
!1969 = !DILocation(line: 1412, column: 35, scope: !1959)
!1970 = !DILocation(line: 1412, column: 48, scope: !1959)
!1971 = !DILocation(line: 1179, column: 24, scope: !1559, inlinedAt: !1972)
!1972 = distinct !DILocation(line: 1415, column: 20, scope: !1959)
!1973 = !DILocation(line: 1179, column: 34, scope: !1559, inlinedAt: !1972)
!1974 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !1975)
!1975 = distinct !DILocation(line: 1181, column: 28, scope: !1559, inlinedAt: !1972)
!1976 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !1975)
!1977 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !1975)
!1978 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !1975)
!1979 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !1975)
!1980 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !1975)
!1981 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !1975)
!1982 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !1975)
!1983 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !1975)
!1984 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !1975)
!1985 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !1975)
!1986 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !1975)
!1987 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !1975)
!1988 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !1975)
!1989 = !DILocation(line: 1181, column: 22, scope: !1559, inlinedAt: !1972)
!1990 = !DILocation(line: 1182, column: 3, scope: !1559, inlinedAt: !1972)
!1991 = !DILocation(line: 1415, column: 16, scope: !1959)
!1992 = !DILocation(line: 1418, column: 19, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1959, file: !3, line: 1418, column: 7)
!1994 = !DILocation(line: 1414, column: 9, scope: !1959)
!1995 = !DILocation(line: 1418, column: 7, scope: !1959)
!1996 = !DILocation(line: 1419, column: 17, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !3, line: 1418, column: 40)
!1998 = !DILocation(line: 1419, column: 5, scope: !1997)
!1999 = !DILocation(line: 1419, column: 33, scope: !1997)
!2000 = !DILocation(line: 1420, column: 3, scope: !1997)
!2001 = !DILocation(line: 0, scope: !1997)
!2002 = !DILocation(line: 1421, column: 1, scope: !1959)
!2003 = distinct !DISubprogram(name: "pbuf_memcmp", scope: !3, file: !3, line: 1435, type: !2004, isLocal: false, isDefinition: true, scopeLine: 1436, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2006)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!84, !980, !84, !1595, !84}
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2018}
!2007 = !DILocalVariable(name: "p", arg: 1, scope: !2003, file: !3, line: 1435, type: !980)
!2008 = !DILocalVariable(name: "offset", arg: 2, scope: !2003, file: !3, line: 1435, type: !84)
!2009 = !DILocalVariable(name: "s2", arg: 3, scope: !2003, file: !3, line: 1435, type: !1595)
!2010 = !DILocalVariable(name: "n", arg: 4, scope: !2003, file: !3, line: 1435, type: !84)
!2011 = !DILocalVariable(name: "start", scope: !2003, file: !3, line: 1437, type: !84)
!2012 = !DILocalVariable(name: "q", scope: !2003, file: !3, line: 1438, type: !980)
!2013 = !DILocalVariable(name: "i", scope: !2003, file: !3, line: 1439, type: !84)
!2014 = !DILocalVariable(name: "a", scope: !2015, file: !3, line: 1455, type: !100)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 1453, column: 27)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !3, line: 1453, column: 3)
!2017 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1453, column: 3)
!2018 = !DILocalVariable(name: "b", scope: !2015, file: !3, line: 1456, type: !100)
!2019 = !DILocation(line: 1435, column: 32, scope: !2003)
!2020 = !DILocation(line: 1435, column: 41, scope: !2003)
!2021 = !DILocation(line: 1435, column: 61, scope: !2003)
!2022 = !DILocation(line: 1435, column: 71, scope: !2003)
!2023 = !DILocation(line: 1437, column: 9, scope: !2003)
!2024 = !DILocation(line: 1438, column: 22, scope: !2003)
!2025 = !DILocation(line: 1442, column: 10, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1442, column: 7)
!2027 = !DILocation(line: 1442, column: 7, scope: !2026)
!2028 = !DILocation(line: 1442, column: 21, scope: !2026)
!2029 = !DILocation(line: 1442, column: 30, scope: !2026)
!2030 = !DILocation(line: 1442, column: 28, scope: !2026)
!2031 = !DILocation(line: 1442, column: 18, scope: !2026)
!2032 = !DILocation(line: 1442, column: 7, scope: !2003)
!2033 = !DILocation(line: 0, scope: !2003)
!2034 = !DILocation(line: 1447, column: 29, scope: !2003)
!2035 = !DILocation(line: 1447, column: 33, scope: !2003)
!2036 = !DILocation(line: 1447, column: 3, scope: !2003)
!2037 = !DILocation(line: 1448, column: 27, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2003, file: !3, line: 1447, column: 44)
!2039 = !DILocation(line: 1449, column: 12, scope: !2038)
!2040 = !DILocation(line: 1447, column: 13, scope: !2003)
!2041 = !DILocation(line: 1447, column: 22, scope: !2003)
!2042 = distinct !{!2042, !2036, !2043}
!2043 = !DILocation(line: 1450, column: 3, scope: !2003)
!2044 = !DILocation(line: 0, scope: !2038)
!2045 = !DILocation(line: 1439, column: 9, scope: !2003)
!2046 = !DILocation(line: 1453, column: 8, scope: !2017)
!2047 = !DILocation(line: 1453, column: 17, scope: !2016)
!2048 = !DILocation(line: 1453, column: 3, scope: !2017)
!2049 = !DILocation(line: 1372, column: 32, scope: !1878, inlinedAt: !2050)
!2050 = distinct !DILocation(line: 1455, column: 14, scope: !2015)
!2051 = !DILocation(line: 1390, column: 36, scope: !1888, inlinedAt: !2052)
!2052 = distinct !DILocation(line: 1374, column: 13, scope: !1878, inlinedAt: !2050)
!2053 = !DILocation(line: 1153, column: 36, scope: !1395, inlinedAt: !2054)
!2054 = distinct !DILocation(line: 1393, column: 26, scope: !1888, inlinedAt: !2052)
!2055 = !DILocation(line: 1156, column: 22, scope: !1395, inlinedAt: !2054)
!2056 = !DILocation(line: 1159, column: 3, scope: !1395, inlinedAt: !2054)
!2057 = !DILocation(line: 1159, column: 22, scope: !1395, inlinedAt: !2054)
!2058 = !DILocation(line: 1455, column: 43, scope: !2015)
!2059 = !DILocation(line: 1155, column: 9, scope: !1395, inlinedAt: !2054)
!2060 = !DILocation(line: 1153, column: 46, scope: !1395, inlinedAt: !2054)
!2061 = !DILocation(line: 1390, column: 45, scope: !1888, inlinedAt: !2052)
!2062 = !DILocation(line: 1372, column: 41, scope: !1878, inlinedAt: !2050)
!2063 = !DILocation(line: 1159, column: 29, scope: !1395, inlinedAt: !2054)
!2064 = !DILocation(line: 1159, column: 33, scope: !1395, inlinedAt: !2054)
!2065 = !DILocation(line: 1160, column: 39, scope: !1414, inlinedAt: !2054)
!2066 = !DILocation(line: 1161, column: 12, scope: !1414, inlinedAt: !2054)
!2067 = !DILocation(line: 1159, column: 13, scope: !1395, inlinedAt: !2054)
!2068 = !DILocation(line: 1163, column: 7, scope: !1395, inlinedAt: !2054)
!2069 = !DILocation(line: 1165, column: 3, scope: !1422, inlinedAt: !2054)
!2070 = !DILocation(line: 1166, column: 3, scope: !1395, inlinedAt: !2054)
!2071 = !DILocation(line: 1393, column: 22, scope: !1888, inlinedAt: !2052)
!2072 = !DILocation(line: 1396, column: 19, scope: !1915, inlinedAt: !2052)
!2073 = !DILocation(line: 1392, column: 9, scope: !1888, inlinedAt: !2052)
!2074 = !DILocation(line: 1396, column: 7, scope: !1888, inlinedAt: !2052)
!2075 = !DILocation(line: 1397, column: 24, scope: !1919, inlinedAt: !2052)
!2076 = !DILocation(line: 1397, column: 12, scope: !1919, inlinedAt: !2052)
!2077 = !DILocation(line: 1374, column: 7, scope: !1878, inlinedAt: !2050)
!2078 = !DILocation(line: 1376, column: 5, scope: !1923, inlinedAt: !2050)
!2079 = !DILocation(line: 1378, column: 3, scope: !1878, inlinedAt: !2050)
!2080 = !DILocation(line: 0, scope: !1878, inlinedAt: !2050)
!2081 = !DILocation(line: 1400, column: 1, scope: !1888, inlinedAt: !2052)
!2082 = !DILocation(line: 1375, column: 7, scope: !1878, inlinedAt: !2050)
!2083 = !DILocation(line: 0, scope: !2015)
!2084 = !DILocation(line: 1379, column: 1, scope: !1878, inlinedAt: !2050)
!2085 = !DILocation(line: 1455, column: 10, scope: !2015)
!2086 = !DILocation(line: 1456, column: 14, scope: !2015)
!2087 = !DILocation(line: 1456, column: 10, scope: !2015)
!2088 = !DILocation(line: 1457, column: 11, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 1457, column: 9)
!2090 = !DILocation(line: 1457, column: 9, scope: !2015)
!2091 = !DILocation(line: 1458, column: 21, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !3, line: 1457, column: 17)
!2093 = !DILocation(line: 1458, column: 14, scope: !2092)
!2094 = !DILocation(line: 1458, column: 7, scope: !2092)
!2095 = !DILocation(line: 1460, column: 3, scope: !2016)
!2096 = !DILocation(line: 1453, column: 23, scope: !2016)
!2097 = !DILocation(line: 1453, column: 3, scope: !2016)
!2098 = !DILocation(line: 1453, column: 15, scope: !2016)
!2099 = distinct !{!2099, !2048, !2100}
!2100 = !DILocation(line: 1460, column: 3, scope: !2017)
!2101 = !DILocation(line: 1462, column: 1, scope: !2003)
!2102 = distinct !DISubprogram(name: "pbuf_memfind", scope: !3, file: !3, line: 1477, type: !2103, isLocal: false, isDefinition: true, scopeLine: 1478, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2105)
!2103 = !DISubroutineType(types: !2104)
!2104 = !{!84, !980, !1595, !84, !84}
!2105 = !{!2106, !2107, !2108, !2109, !2110, !2111, !2112}
!2106 = !DILocalVariable(name: "p", arg: 1, scope: !2102, file: !3, line: 1477, type: !980)
!2107 = !DILocalVariable(name: "mem", arg: 2, scope: !2102, file: !3, line: 1477, type: !1595)
!2108 = !DILocalVariable(name: "mem_len", arg: 3, scope: !2102, file: !3, line: 1477, type: !84)
!2109 = !DILocalVariable(name: "start_offset", arg: 4, scope: !2102, file: !3, line: 1477, type: !84)
!2110 = !DILocalVariable(name: "i", scope: !2102, file: !3, line: 1479, type: !84)
!2111 = !DILocalVariable(name: "max_cmp_start", scope: !2102, file: !3, line: 1480, type: !84)
!2112 = !DILocalVariable(name: "plus", scope: !2113, file: !3, line: 1483, type: !84)
!2113 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 1482, column: 53)
!2114 = distinct !DILexicalBlock(scope: !2115, file: !3, line: 1482, column: 5)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !3, line: 1482, column: 5)
!2116 = distinct !DILexicalBlock(scope: !2117, file: !3, line: 1481, column: 45)
!2117 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 1481, column: 7)
!2118 = !DILocation(line: 1477, column: 33, scope: !2102)
!2119 = !DILocation(line: 1477, column: 48, scope: !2102)
!2120 = !DILocation(line: 1477, column: 59, scope: !2102)
!2121 = !DILocation(line: 1477, column: 74, scope: !2102)
!2122 = !DILocation(line: 1480, column: 36, scope: !2102)
!2123 = !DILocation(line: 1480, column: 33, scope: !2102)
!2124 = !DILocation(line: 1480, column: 46, scope: !2102)
!2125 = !DILocation(line: 1480, column: 44, scope: !2102)
!2126 = !DILocation(line: 1480, column: 9, scope: !2102)
!2127 = !DILocation(line: 1481, column: 31, scope: !2117)
!2128 = !DILocation(line: 1481, column: 29, scope: !2117)
!2129 = !DILocation(line: 1481, column: 18, scope: !2117)
!2130 = !DILocation(line: 1481, column: 7, scope: !2102)
!2131 = !DILocation(line: 1479, column: 9, scope: !2102)
!2132 = !DILocation(line: 1482, column: 10, scope: !2115)
!2133 = !DILocation(line: 1482, column: 30, scope: !2114)
!2134 = !DILocation(line: 1482, column: 5, scope: !2115)
!2135 = !DILocation(line: 1483, column: 20, scope: !2113)
!2136 = !DILocation(line: 1483, column: 13, scope: !2113)
!2137 = !DILocation(line: 1484, column: 16, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 1484, column: 11)
!2139 = !DILocation(line: 1484, column: 11, scope: !2113)
!2140 = !DILocation(line: 0, scope: !2114)
!2141 = !DILocation(line: 1482, column: 49, scope: !2114)
!2142 = !DILocation(line: 1482, column: 5, scope: !2114)
!2143 = distinct !{!2143, !2134, !2144}
!2144 = !DILocation(line: 1487, column: 5, scope: !2115)
!2145 = !DILocation(line: 1489, column: 3, scope: !2102)
!2146 = !DILocation(line: 0, scope: !2102)
!2147 = !DILocation(line: 1490, column: 1, scope: !2102)
!2148 = distinct !DISubprogram(name: "pbuf_strstr", scope: !3, file: !3, line: 1504, type: !2149, isLocal: false, isDefinition: true, scopeLine: 1505, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!84, !980, !132}
!2151 = !{!2152, !2153, !2154}
!2152 = !DILocalVariable(name: "p", arg: 1, scope: !2148, file: !3, line: 1504, type: !980)
!2153 = !DILocalVariable(name: "substr", arg: 2, scope: !2148, file: !3, line: 1504, type: !132)
!2154 = !DILocalVariable(name: "substr_len", scope: !2148, file: !3, line: 1506, type: !114)
!2155 = !DILocation(line: 1504, column: 32, scope: !2148)
!2156 = !DILocation(line: 1504, column: 47, scope: !2148)
!2157 = !DILocation(line: 1507, column: 15, scope: !2158)
!2158 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1507, column: 7)
!2159 = !DILocation(line: 1507, column: 24, scope: !2158)
!2160 = !DILocation(line: 1507, column: 28, scope: !2158)
!2161 = !DILocation(line: 1507, column: 38, scope: !2158)
!2162 = !DILocation(line: 1507, column: 44, scope: !2158)
!2163 = !DILocation(line: 1507, column: 51, scope: !2158)
!2164 = !DILocation(line: 1507, column: 59, scope: !2158)
!2165 = !DILocation(line: 1507, column: 7, scope: !2148)
!2166 = !DILocation(line: 1510, column: 16, scope: !2148)
!2167 = !DILocation(line: 1506, column: 10, scope: !2148)
!2168 = !DILocation(line: 1511, column: 18, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2148, file: !3, line: 1511, column: 7)
!2170 = !DILocation(line: 1511, column: 7, scope: !2148)
!2171 = !DILocation(line: 1514, column: 34, scope: !2148)
!2172 = !DILocation(line: 1477, column: 33, scope: !2102, inlinedAt: !2173)
!2173 = distinct !DILocation(line: 1514, column: 10, scope: !2148)
!2174 = !DILocation(line: 1477, column: 48, scope: !2102, inlinedAt: !2173)
!2175 = !DILocation(line: 1477, column: 59, scope: !2102, inlinedAt: !2173)
!2176 = !DILocation(line: 1477, column: 74, scope: !2102, inlinedAt: !2173)
!2177 = !DILocation(line: 1480, column: 36, scope: !2102, inlinedAt: !2173)
!2178 = !DILocation(line: 1480, column: 33, scope: !2102, inlinedAt: !2173)
!2179 = !DILocation(line: 1480, column: 46, scope: !2102, inlinedAt: !2173)
!2180 = !DILocation(line: 1480, column: 44, scope: !2102, inlinedAt: !2173)
!2181 = !DILocation(line: 1480, column: 9, scope: !2102, inlinedAt: !2173)
!2182 = !DILocation(line: 1481, column: 18, scope: !2117, inlinedAt: !2173)
!2183 = !DILocation(line: 1481, column: 7, scope: !2102, inlinedAt: !2173)
!2184 = !DILocation(line: 1479, column: 9, scope: !2102, inlinedAt: !2173)
!2185 = !DILocation(line: 1482, column: 10, scope: !2115, inlinedAt: !2173)
!2186 = !DILocation(line: 1482, column: 5, scope: !2115, inlinedAt: !2173)
!2187 = !DILocation(line: 1483, column: 20, scope: !2113, inlinedAt: !2173)
!2188 = !DILocation(line: 1483, column: 13, scope: !2113, inlinedAt: !2173)
!2189 = !DILocation(line: 1484, column: 16, scope: !2138, inlinedAt: !2173)
!2190 = !DILocation(line: 1484, column: 11, scope: !2113, inlinedAt: !2173)
!2191 = !DILocation(line: 0, scope: !2114, inlinedAt: !2173)
!2192 = !DILocation(line: 1482, column: 49, scope: !2114, inlinedAt: !2173)
!2193 = !DILocation(line: 1482, column: 5, scope: !2114, inlinedAt: !2173)
!2194 = !DILocation(line: 1482, column: 30, scope: !2114, inlinedAt: !2173)
!2195 = !DILocation(line: 1489, column: 3, scope: !2102, inlinedAt: !2173)
!2196 = !DILocation(line: 0, scope: !2102, inlinedAt: !2173)
!2197 = !DILocation(line: 1490, column: 1, scope: !2102, inlinedAt: !2173)
!2198 = !DILocation(line: 1514, column: 3, scope: !2148)
!2199 = !DILocation(line: 0, scope: !2148)
!2200 = !DILocation(line: 0, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2158, file: !3, line: 1507, column: 71)
!2202 = !DILocation(line: 1515, column: 1, scope: !2148)
!2203 = distinct !DISubprogram(name: "pbuf_free_ooseq_callback", scope: !3, file: !3, line: 148, type: !2204, isLocal: true, isDefinition: true, scopeLine: 149, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{null, !91}
!2206 = !{!2207}
!2207 = !DILocalVariable(name: "arg", arg: 1, scope: !2203, file: !3, line: 148, type: !91)
!2208 = !DILocation(line: 148, column: 32, scope: !2203)
!2209 = !DILocation(line: 131, column: 3, scope: !2210, inlinedAt: !2367)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 131, column: 3)
!2211 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 131, column: 3)
!2212 = distinct !DISubprogram(name: "pbuf_free_ooseq", scope: !3, file: !3, line: 128, type: !277, isLocal: true, isDefinition: true, scopeLine: 129, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !2213)
!2213 = !{!2214, !2366}
!2214 = !DILocalVariable(name: "pcb", scope: !2212, file: !3, line: 130, type: !2215)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb", file: !2217, line: 242, size: 2240, elements: !2218)
!2217 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2218 = !{!2219, !2247, !2248, !2249, !2250, !2251, !2252, !2253, !2254, !2255, !2256, !2257, !2258, !2260, !2261, !2262, !2263, !2264, !2265, !2267, !2268, !2269, !2270, !2271, !2272, !2273, !2274, !2275, !2276, !2277, !2278, !2279, !2280, !2281, !2282, !2283, !2284, !2285, !2286, !2287, !2288, !2289, !2290, !2291, !2292, !2314, !2315, !2316, !2317, !2337, !2342, !2347, !2349, !2354, !2359, !2360, !2361, !2362, !2363, !2364, !2365}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2216, file: !2217, line: 244, baseType: !2220, size: 192)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !2221, line: 76, baseType: !2222)
!2221 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !2221, line: 69, size: 192, elements: !2223)
!2223 = !{!2224, !2246}
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !2222, file: !2221, line: 73, baseType: !2225, size: 160)
!2225 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2222, file: !2221, line: 70, size: 160, elements: !2226)
!2226 = !{!2227, !2240}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !2225, file: !2221, line: 71, baseType: !2228, size: 160)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !2229, line: 67, baseType: !2230)
!2229 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !2229, line: 59, size: 160, elements: !2231)
!2231 = !{!2232, !2239}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2230, file: !2229, line: 60, baseType: !2233, size: 128)
!2233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2234, size: 128, elements: !2237)
!2234 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !85, line: 129, baseType: !2235)
!2235 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !87, line: 48, baseType: !2236)
!2236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !89, line: 79, baseType: !7)
!2237 = !{!2238}
!2238 = !DISubrange(count: 4)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !2230, file: !2229, line: 62, baseType: !100, size: 8, offset: 128)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !2225, file: !2221, line: 72, baseType: !2241, size: 32)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !2242, line: 57, baseType: !2243)
!2242 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !2242, line: 51, size: 32, elements: !2244)
!2244 = !{!2245}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2243, file: !2242, line: 52, baseType: !2234, size: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2222, file: !2221, line: 75, baseType: !100, size: 8, offset: 160)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2216, file: !2217, line: 244, baseType: !2220, size: 192, offset: 192)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2216, file: !2217, line: 244, baseType: !100, size: 8, offset: 384)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2216, file: !2217, line: 244, baseType: !100, size: 8, offset: 392)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2216, file: !2217, line: 244, baseType: !100, size: 8, offset: 400)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2216, file: !2217, line: 244, baseType: !100, size: 8, offset: 408)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2216, file: !2217, line: 246, baseType: !2215, size: 64, offset: 448)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2216, file: !2217, line: 246, baseType: !91, size: 64, offset: 512)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2216, file: !2217, line: 246, baseType: !69, size: 32, offset: 576)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2216, file: !2217, line: 246, baseType: !100, size: 8, offset: 608)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2216, file: !2217, line: 246, baseType: !84, size: 16, offset: 624)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "remote_port", scope: !2216, file: !2217, line: 249, baseType: !84, size: 16, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2216, file: !2217, line: 251, baseType: !2259, size: 16, offset: 656)
!2259 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpflags_t", file: !2217, line: 206, baseType: !84)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "polltmr", scope: !2216, file: !2217, line: 278, baseType: !100, size: 8, offset: 672)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "pollinterval", scope: !2216, file: !2217, line: 278, baseType: !100, size: 8, offset: 680)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "last_timer", scope: !2216, file: !2217, line: 279, baseType: !100, size: 8, offset: 688)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "tmr", scope: !2216, file: !2217, line: 280, baseType: !2234, size: 32, offset: 704)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_nxt", scope: !2216, file: !2217, line: 283, baseType: !2234, size: 32, offset: 736)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_wnd", scope: !2216, file: !2217, line: 284, baseType: !2266, size: 32, offset: 768)
!2266 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcpwnd_size_t", file: !70, line: 51, baseType: !2234)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_wnd", scope: !2216, file: !2217, line: 285, baseType: !2266, size: 32, offset: 800)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_ann_right_edge", scope: !2216, file: !2217, line: 286, baseType: !2234, size: 32, offset: 832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "rtime", scope: !2216, file: !2217, line: 295, baseType: !887, size: 16, offset: 864)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "mss", scope: !2216, file: !2217, line: 297, baseType: !84, size: 16, offset: 880)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "rttest", scope: !2216, file: !2217, line: 300, baseType: !2234, size: 32, offset: 896)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "rtseq", scope: !2216, file: !2217, line: 301, baseType: !2234, size: 32, offset: 928)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "sa", scope: !2216, file: !2217, line: 302, baseType: !887, size: 16, offset: 960)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sv", scope: !2216, file: !2217, line: 302, baseType: !887, size: 16, offset: 976)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "rto", scope: !2216, file: !2217, line: 304, baseType: !887, size: 16, offset: 992)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "nrtx", scope: !2216, file: !2217, line: 305, baseType: !100, size: 8, offset: 1008)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dupacks", scope: !2216, file: !2217, line: 308, baseType: !100, size: 8, offset: 1016)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "lastack", scope: !2216, file: !2217, line: 309, baseType: !2234, size: 32, offset: 1024)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "cwnd", scope: !2216, file: !2217, line: 312, baseType: !2266, size: 32, offset: 1056)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "ssthresh", scope: !2216, file: !2217, line: 313, baseType: !2266, size: 32, offset: 1088)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "rto_end", scope: !2216, file: !2217, line: 316, baseType: !2234, size: 32, offset: 1120)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "snd_nxt", scope: !2216, file: !2217, line: 319, baseType: !2234, size: 32, offset: 1152)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl1", scope: !2216, file: !2217, line: 320, baseType: !2234, size: 32, offset: 1184)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wl2", scope: !2216, file: !2217, line: 320, baseType: !2234, size: 32, offset: 1216)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "snd_lbb", scope: !2216, file: !2217, line: 322, baseType: !2234, size: 32, offset: 1248)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd", scope: !2216, file: !2217, line: 323, baseType: !2266, size: 32, offset: 1280)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "snd_wnd_max", scope: !2216, file: !2217, line: 324, baseType: !2266, size: 32, offset: 1312)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "snd_buf", scope: !2216, file: !2217, line: 326, baseType: !2266, size: 32, offset: 1344)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "snd_queuelen", scope: !2216, file: !2217, line: 328, baseType: !84, size: 16, offset: 1376)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "unsent_oversize", scope: !2216, file: !2217, line: 332, baseType: !84, size: 16, offset: 1392)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "bytes_acked", scope: !2216, file: !2217, line: 335, baseType: !2266, size: 32, offset: 1408)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "unsent", scope: !2216, file: !2217, line: 338, baseType: !2293, size: 64, offset: 1472)
!2293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2294, size: 64)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_seg", file: !2295, line: 253, size: 256, elements: !2296)
!2295 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/tcp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!2296 = !{!2297, !2298, !2299, !2300, !2301}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2294, file: !2295, line: 254, baseType: !2293, size: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2294, file: !2295, line: 255, baseType: !92, size: 64, offset: 64)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2294, file: !2295, line: 256, baseType: !84, size: 16, offset: 128)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2294, file: !2295, line: 266, baseType: !100, size: 8, offset: 144)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "tcphdr", scope: !2294, file: !2295, line: 273, baseType: !2302, size: 64, offset: 192)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_hdr", file: !2304, line: 56, size: 160, elements: !2305)
!2304 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/tcp.h", directory: "/root/.unikraft/apps/redis/build")
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !2303, file: !2304, line: 57, baseType: !84, size: 16)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !2303, file: !2304, line: 58, baseType: !84, size: 16, offset: 16)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "seqno", scope: !2303, file: !2304, line: 59, baseType: !2234, size: 32, offset: 32)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ackno", scope: !2303, file: !2304, line: 60, baseType: !2234, size: 32, offset: 64)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "_hdrlen_rsvd_flags", scope: !2303, file: !2304, line: 61, baseType: !84, size: 16, offset: 96)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "wnd", scope: !2303, file: !2304, line: 62, baseType: !84, size: 16, offset: 112)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !2303, file: !2304, line: 63, baseType: !84, size: 16, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "urgp", scope: !2303, file: !2304, line: 64, baseType: !84, size: 16, offset: 144)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "unacked", scope: !2216, file: !2217, line: 339, baseType: !2293, size: 64, offset: 1536)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ooseq", scope: !2216, file: !2217, line: 341, baseType: !2293, size: 64, offset: 1600)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "refused_data", scope: !2216, file: !2217, line: 344, baseType: !92, size: 64, offset: 1664)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !2216, file: !2217, line: 347, baseType: !2318, size: 64, offset: 1728)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tcp_pcb_listen", file: !2217, line: 223, size: 704, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326, !2327, !2328, !2329, !2330, !2331, !2332}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "local_ip", scope: !2319, file: !2217, line: 225, baseType: !2220, size: 192)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "remote_ip", scope: !2319, file: !2217, line: 225, baseType: !2220, size: 192, offset: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "netif_idx", scope: !2319, file: !2217, line: 225, baseType: !100, size: 8, offset: 384)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "so_options", scope: !2319, file: !2217, line: 225, baseType: !100, size: 8, offset: 392)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "tos", scope: !2319, file: !2217, line: 225, baseType: !100, size: 8, offset: 400)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "ttl", scope: !2319, file: !2217, line: 225, baseType: !100, size: 8, offset: 408)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2319, file: !2217, line: 227, baseType: !2318, size: 64, offset: 448)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "callback_arg", scope: !2319, file: !2217, line: 227, baseType: !91, size: 64, offset: 512)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2319, file: !2217, line: 227, baseType: !69, size: 32, offset: 576)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2319, file: !2217, line: 227, baseType: !100, size: 8, offset: 608)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "local_port", scope: !2319, file: !2217, line: 227, baseType: !84, size: 16, offset: 624)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "accept", scope: !2319, file: !2217, line: 231, baseType: !2333, size: 64, offset: 640)
!2333 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_accept_fn", file: !2217, line: 70, baseType: !2334)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DISubroutineType(types: !2336)
!2336 = !{!1140, !91, !2215, !1140}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "sent", scope: !2216, file: !2217, line: 352, baseType: !2338, size: 64, offset: 1792)
!2338 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_sent_fn", file: !2217, line: 96, baseType: !2339)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!1140, !91, !2215, !84}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !2216, file: !2217, line: 354, baseType: !2343, size: 64, offset: 1856)
!2343 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_recv_fn", file: !2217, line: 82, baseType: !2344)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!1140, !91, !2215, !92, !1140}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !2216, file: !2217, line: 356, baseType: !2348, size: 64, offset: 1920)
!2348 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connected_fn", file: !2217, line: 134, baseType: !2334)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !2216, file: !2217, line: 358, baseType: !2350, size: 64, offset: 1984)
!2350 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_poll_fn", file: !2217, line: 108, baseType: !2351)
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!1140, !91, !2215}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "errf", scope: !2216, file: !2217, line: 360, baseType: !2355, size: 64, offset: 2048)
!2355 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_err_fn", file: !2217, line: 120, baseType: !2356)
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !91, !1140}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "keep_idle", scope: !2216, file: !2217, line: 369, baseType: !2234, size: 32, offset: 2112)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "persist_cnt", scope: !2216, file: !2217, line: 376, baseType: !100, size: 8, offset: 2144)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "persist_backoff", scope: !2216, file: !2217, line: 378, baseType: !100, size: 8, offset: 2152)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "persist_probe", scope: !2216, file: !2217, line: 380, baseType: !100, size: 8, offset: 2160)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "keep_cnt_sent", scope: !2216, file: !2217, line: 383, baseType: !100, size: 8, offset: 2168)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "snd_scale", scope: !2216, file: !2217, line: 386, baseType: !100, size: 8, offset: 2176)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "rcv_scale", scope: !2216, file: !2217, line: 387, baseType: !100, size: 8, offset: 2184)
!2366 = !DILocalVariable(name: "old_level", scope: !2211, file: !3, line: 131, type: !110)
!2367 = distinct !DILocation(line: 151, column: 3, scope: !2203)
!2368 = !DILocation(line: 131, column: 3, scope: !2211, inlinedAt: !2367)
!2369 = !DILocation(line: 133, column: 14, scope: !2370, inlinedAt: !2367)
!2370 = distinct !DILexicalBlock(scope: !2212, file: !3, line: 133, column: 3)
!2371 = !DILocation(line: 130, column: 19, scope: !2212, inlinedAt: !2367)
!2372 = !DILocation(line: 133, column: 8, scope: !2370, inlinedAt: !2367)
!2373 = !DILocation(line: 133, column: 36, scope: !2374, inlinedAt: !2367)
!2374 = distinct !DILexicalBlock(scope: !2370, file: !3, line: 133, column: 3)
!2375 = !DILocation(line: 133, column: 3, scope: !2370, inlinedAt: !2367)
!2376 = !DILocation(line: 134, column: 14, scope: !2377, inlinedAt: !2367)
!2377 = distinct !DILexicalBlock(scope: !2378, file: !3, line: 134, column: 9)
!2378 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 133, column: 61)
!2379 = !{!2380, !244, i64 200}
!2380 = !{!"tcp_pcb", !2381, i64 0, !2381, i64 24, !245, i64 48, !245, i64 49, !245, i64 50, !245, i64 51, !244, i64 56, !244, i64 64, !245, i64 72, !245, i64 76, !247, i64 78, !247, i64 80, !247, i64 82, !245, i64 84, !245, i64 85, !245, i64 86, !2382, i64 88, !2382, i64 92, !2382, i64 96, !2382, i64 100, !2382, i64 104, !247, i64 108, !247, i64 110, !2382, i64 112, !2382, i64 116, !247, i64 120, !247, i64 122, !247, i64 124, !245, i64 126, !245, i64 127, !2382, i64 128, !2382, i64 132, !2382, i64 136, !2382, i64 140, !2382, i64 144, !2382, i64 148, !2382, i64 152, !2382, i64 156, !2382, i64 160, !2382, i64 164, !2382, i64 168, !247, i64 172, !247, i64 174, !2382, i64 176, !244, i64 184, !244, i64 192, !244, i64 200, !244, i64 208, !244, i64 216, !244, i64 224, !244, i64 232, !244, i64 240, !244, i64 248, !244, i64 256, !2382, i64 264, !245, i64 268, !245, i64 269, !245, i64 270, !245, i64 271, !245, i64 272, !245, i64 273}
!2381 = !{!"ip_addr", !245, i64 0, !245, i64 20}
!2382 = !{!"int", !245, i64 0}
!2383 = !DILocation(line: 134, column: 20, scope: !2377, inlinedAt: !2367)
!2384 = !DILocation(line: 134, column: 9, scope: !2378, inlinedAt: !2367)
!2385 = !DILocation(line: 137, column: 7, scope: !2386, inlinedAt: !2367)
!2386 = distinct !DILexicalBlock(scope: !2377, file: !3, line: 134, column: 29)
!2387 = !DILocation(line: 138, column: 7, scope: !2386, inlinedAt: !2367)
!2388 = !DILocation(line: 133, column: 55, scope: !2374, inlinedAt: !2367)
!2389 = !{!2380, !244, i64 56}
!2390 = !DILocation(line: 133, column: 3, scope: !2374, inlinedAt: !2367)
!2391 = distinct !{!2391, !2392, !2393}
!2392 = !DILocation(line: 133, column: 3, scope: !2370)
!2393 = !DILocation(line: 140, column: 3, scope: !2370)
!2394 = !DILocation(line: 0, scope: !2203)
!2395 = !DILocation(line: 141, column: 1, scope: !2212, inlinedAt: !2367)
!2396 = !DILocation(line: 152, column: 1, scope: !2203)
