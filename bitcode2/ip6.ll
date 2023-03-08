; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.netif = type { %struct.netif*, %struct.ip_addr, %struct.ip_addr, %struct.ip_addr, [3 x %struct.ip_addr], [3 x i8], [3 x i32], [3 x i32], i8 (%struct.pbuf*, %struct.netif*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip4_addr*)*, i8 (%struct.netif*, %struct.pbuf*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, void (%struct.netif*)*, void (%struct.netif*)*, i8*, [1 x i8*], i16, i16, i16, [6 x i8], i8, i8, [2 x i8], i8, i8, i8, i8 (%struct.netif*, %struct.ip6_addr*, i32)* }
%struct.ip_addr = type { %union.anon, i8 }
%union.anon = type { %struct.ip6_addr }
%struct.ip6_addr = type { [4 x i32], i8 }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.ip4_addr = type { i32 }
%struct.stats_ = type { %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_sys, %struct.stats_proto, %struct.stats_proto, %struct.stats_proto, %struct.stats_igmp, %struct.stats_proto }
%struct.stats_sys = type { %struct.stats_syselem, %struct.stats_syselem, %struct.stats_syselem }
%struct.stats_syselem = type { i16, i16, i16 }
%struct.stats_igmp = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.stats_proto = type { i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16 }
%struct.ip_globals = type { %struct.netif*, %struct.netif*, %struct.ip_hdr*, %struct.ip6_hdr*, i16, %struct.ip_addr, %struct.ip_addr }
%struct.ip_hdr = type { i8, i8, i16, i16, i16, i8, i8, i16, %struct.ip4_addr_packed, %struct.ip4_addr_packed }
%struct.ip4_addr_packed = type { i32 }
%struct.ip6_hdr = type { i32, i16, i8, i8, %struct.ip6_addr_packed, %struct.ip6_addr_packed }
%struct.ip6_addr_packed = type { [4 x i32] }
%struct.mld_group = type { %struct.mld_group*, %struct.ip6_addr, i8, i8, i16, i8 }
%struct.ip6_rout_hdr = type { i8, i8, i8, i8 }
%struct.ip6_frag_hdr = type { i8, i8, i16, i32 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@netif_list = external dso_local local_unnamed_addr global %struct.netif*, align 8
@netif_default = external dso_local local_unnamed_addr global %struct.netif*, align 8
@lwip_stats = external dso_local local_unnamed_addr global %struct.stats_, align 2
@ip_data = external dso_local global %struct.ip_globals, align 8
@.str = private unnamed_addr constant [12 x i8] c"p->ref == 1\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"check that first pbuf can hold struct ip6_hdr\00", align 1
@ip6_addr_any = external dso_local local_unnamed_addr constant %struct.ip_addr, align 4
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.4 = internal global [6 x i8] c"ip6.c\00", section ".data_shared", align 1, !dbg !151
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.netif* @ip6_route(%struct.ip6_addr* readonly, %struct.ip6_addr*) local_unnamed_addr #0 !dbg !178 {
  %3 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !271, !tbaa !273
  %4 = icmp eq %struct.netif* %3, null, !dbg !277
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !278
  br i1 %4, label %28, label %5, !dbg !278

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 0, !dbg !279
  %7 = load %struct.netif*, %struct.netif** %6, align 8, !dbg !279, !tbaa !280
  %8 = icmp eq %struct.netif* %7, null, !dbg !284
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !285
  br i1 %8, label %9, label %28, !dbg !285

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 21, !dbg !286
  %11 = load i8, i8* %10, align 1, !dbg !286, !tbaa !289
  %12 = zext i8 %11 to i32, !dbg !286
  %13 = and i32 %12, 1, !dbg !286
  %14 = icmp eq i32 %13, 0, !dbg !286
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !290
  br i1 %14, label %301, label %15, !dbg !290

; <label>:15:                                     ; preds = %9
  %16 = and i32 %12, 4, !dbg !291
  %17 = icmp eq i32 %16, 0, !dbg !291
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !292
  br i1 %17, label %301, label %18, !dbg !292

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !293
  %20 = load i8, i8* %19, align 4, !dbg !293, !tbaa !294
  %21 = icmp eq i8 %20, 0, !dbg !293
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !296
  br i1 %21, label %27, label %22, !dbg !296

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 23, !dbg !297
  %24 = load i8, i8* %23, align 8, !dbg !297, !tbaa !298
  %25 = add i8 %24, 1, !dbg !297
  %26 = icmp eq i8 %20, %25, !dbg !297
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  br i1 %26, label %27, label %301, !dbg !299

; <label>:27:                                     ; preds = %18, %22
  br label %301, !dbg !300

; <label>:28:                                     ; preds = %2, %5
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !301
  %30 = load i8, i8* %29, align 4, !dbg !301, !tbaa !294
  %31 = icmp eq i8 %30, 0, !dbg !301
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  br i1 %31, label %52, label %32, !dbg !303

; <label>:32:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %4, label %301, label %33, !dbg !305

; <label>:33:                                     ; preds = %32, %48
  %34 = phi %struct.netif* [ %50, %48 ], [ %3, %32 ]
  %35 = getelementptr inbounds %struct.netif, %struct.netif* %34, i64 0, i32 23, !dbg !308
  %36 = load i8, i8* %35, align 8, !dbg !308, !tbaa !298
  %37 = add i8 %36, 1, !dbg !308
  %38 = icmp eq i8 %30, %37, !dbg !308
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %38, label %39, label %48, !dbg !312

; <label>:39:                                     ; preds = %33
  %40 = getelementptr inbounds %struct.netif, %struct.netif* %34, i64 0, i32 21, !dbg !313
  %41 = load i8, i8* %40, align 1, !dbg !313, !tbaa !289
  %42 = zext i8 %41 to i32, !dbg !313
  %43 = and i32 %42, 1, !dbg !313
  %44 = icmp eq i32 %43, 0, !dbg !313
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  br i1 %44, label %48, label %45, !dbg !314

; <label>:45:                                     ; preds = %39
  %46 = and i32 %42, 4, !dbg !315
  %47 = icmp eq i32 %46, 0, !dbg !315
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !316
  br i1 %47, label %48, label %301, !dbg !316

; <label>:48:                                     ; preds = %45, %39, %33
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %34, i64 0, i32 0, !dbg !317
  %50 = load %struct.netif*, %struct.netif** %49, align 8, !dbg !317, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !317
  %51 = icmp eq %struct.netif* %50, null, !dbg !317
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !305
  br i1 %51, label %301, label %33, !dbg !305, !llvm.loop !318

; <label>:52:                                     ; preds = %28
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !320
  %54 = load i32, i32* %53, align 4, !dbg !320, !tbaa !322
  %55 = zext i32 %54 to i64, !dbg !320
  %56 = and i64 %55, 49407, !dbg !320
  %57 = icmp eq i64 %56, 33022, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %57, label %82, label %58, !dbg !320

; <label>:58:                                     ; preds = %52
  %59 = and i64 %55, 36863, !dbg !320
  %60 = icmp eq i64 %59, 511, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !320
  br i1 %60, label %82, label %61, !dbg !320

; <label>:61:                                     ; preds = %58
  %62 = icmp eq i64 %59, 767, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !324
  br i1 %62, label %82, label %63, !dbg !324

; <label>:63:                                     ; preds = %61
  %64 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !325
  %65 = load i32, i32* %64, align 4, !dbg !325, !tbaa !322
  %66 = and i32 %65, 49407, !dbg !325
  %67 = icmp eq i32 %66, 33022, !dbg !325
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  br i1 %67, label %82, label %68, !dbg !326

; <label>:68:                                     ; preds = %63
  %69 = icmp eq i32 %65, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %69, label %70, label %156, !dbg !327

; <label>:70:                                     ; preds = %68
  %71 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !327
  %72 = load i32, i32* %71, align 4, !dbg !327, !tbaa !322
  %73 = icmp eq i32 %72, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %73, label %74, label %156, !dbg !327

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !327
  %76 = load i32, i32* %75, align 4, !dbg !327, !tbaa !322
  %77 = icmp eq i32 %76, 0, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !327
  br i1 %77, label %78, label %156, !dbg !327

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !327
  %80 = load i32, i32* %79, align 4, !dbg !327, !tbaa !322
  %81 = icmp eq i32 %80, 16777216, !dbg !327
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !328
  br i1 %81, label %82, label %156, !dbg !328

; <label>:82:                                     ; preds = %78, %63, %61, %58, %52
  %83 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !329
  %84 = load i8, i8* %83, align 4, !dbg !329, !tbaa !294
  %85 = icmp eq i8 %84, 0, !dbg !329
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br i1 %85, label %87, label %86, !dbg !332

; <label>:86:                                     ; preds = %82
  br i1 %4, label %301, label %93, !dbg !336

; <label>:87:                                     ; preds = %82
  br i1 %4, label %301, label %88, !dbg !337

; <label>:88:                                     ; preds = %87
  %89 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %90 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %91 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %92 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %112, !dbg !337

; <label>:93:                                     ; preds = %86, %108
  %94 = phi %struct.netif* [ %110, %108 ], [ %3, %86 ]
  %95 = getelementptr inbounds %struct.netif, %struct.netif* %94, i64 0, i32 21, !dbg !340
  %96 = load i8, i8* %95, align 1, !dbg !340, !tbaa !289
  %97 = zext i8 %96 to i32, !dbg !340
  %98 = and i32 %97, 1, !dbg !340
  %99 = icmp eq i32 %98, 0, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !344
  br i1 %99, label %108, label %100, !dbg !344

; <label>:100:                                    ; preds = %93
  %101 = and i32 %97, 4, !dbg !345
  %102 = icmp eq i32 %101, 0, !dbg !345
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !346
  br i1 %102, label %108, label %103, !dbg !346

; <label>:103:                                    ; preds = %100
  %104 = getelementptr inbounds %struct.netif, %struct.netif* %94, i64 0, i32 23, !dbg !347
  %105 = load i8, i8* %104, align 8, !dbg !347, !tbaa !298
  %106 = add i8 %105, 1, !dbg !347
  %107 = icmp eq i8 %84, %106, !dbg !347
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %107, label %301, label %108, !dbg !348

; <label>:108:                                    ; preds = %100, %93, %103
  %109 = getelementptr inbounds %struct.netif, %struct.netif* %94, i64 0, i32 0, !dbg !349
  %110 = load %struct.netif*, %struct.netif** %109, align 8, !dbg !349, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !349
  %111 = icmp eq %struct.netif* %110, null, !dbg !349
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  br i1 %111, label %301, label %93, !dbg !336, !llvm.loop !350

; <label>:112:                                    ; preds = %88, %152
  %113 = phi %struct.netif* [ %3, %88 ], [ %154, %152 ]
  %114 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 21, !dbg !352
  %115 = load i8, i8* %114, align 1, !dbg !352, !tbaa !289
  %116 = zext i8 %115 to i32, !dbg !352
  %117 = and i32 %116, 1, !dbg !352
  %118 = icmp eq i32 %117, 0, !dbg !352
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !356
  br i1 %118, label %152, label %119, !dbg !356

; <label>:119:                                    ; preds = %112
  %120 = and i32 %116, 4, !dbg !357
  %121 = icmp eq i32 %120, 0, !dbg !357
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  br i1 %121, label %152, label %122, !dbg !358

; <label>:122:                                    ; preds = %119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %123 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 5, i64 0, !dbg !363
  %124 = load i8, i8* %123, align 1, !dbg !363, !tbaa !367
  %125 = and i8 %124, 16, !dbg !363
  %126 = icmp eq i8 %125, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %126, label %147, label %127, !dbg !368

; <label>:127:                                    ; preds = %122
  %128 = load i32, i32* %89, align 4, !dbg !369, !tbaa !322
  %129 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !369
  %130 = load i32, i32* %129, align 8, !dbg !369, !tbaa !367
  %131 = icmp eq i32 %128, %130, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %131, label %132, label %147, !dbg !369

; <label>:132:                                    ; preds = %127
  %133 = load i32, i32* %90, align 4, !dbg !369, !tbaa !322
  %134 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !369
  %135 = load i32, i32* %134, align 4, !dbg !369, !tbaa !367
  %136 = icmp eq i32 %133, %135, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %136, label %137, label %147, !dbg !369

; <label>:137:                                    ; preds = %132
  %138 = load i32, i32* %91, align 4, !dbg !369, !tbaa !322
  %139 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !369
  %140 = load i32, i32* %139, align 8, !dbg !369, !tbaa !367
  %141 = icmp eq i32 %138, %140, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %141, label %142, label %147, !dbg !369

; <label>:142:                                    ; preds = %137
  %143 = load i32, i32* %92, align 4, !dbg !369, !tbaa !322
  %144 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !369
  %145 = load i32, i32* %144, align 4, !dbg !369, !tbaa !367
  %146 = icmp eq i32 %143, %145, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %146, label %301, label %147, !dbg !370

; <label>:147:                                    ; preds = %122, %127, %132, %137, %142
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %148 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 5, i64 1, !dbg !363
  %149 = load i8, i8* %148, align 1, !dbg !363, !tbaa !367
  %150 = and i8 %149, 16, !dbg !363
  %151 = icmp eq i8 %150, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %151, label %323, label %303, !dbg !368

; <label>:152:                                    ; preds = %348, %119, %112
  %153 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 0, !dbg !372
  %154 = load %struct.netif*, %struct.netif** %153, align 8, !dbg !372, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  %155 = icmp eq %struct.netif* %154, null, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %155, label %301, label %112, !dbg !337, !llvm.loop !373

; <label>:156:                                    ; preds = %78, %74, %70, %68
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %4, label %212, label %157, !dbg !375

; <label>:157:                                    ; preds = %156
  %158 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %159 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %160 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  br label %161, !dbg !375

; <label>:161:                                    ; preds = %157, %208
  %162 = phi %struct.netif* [ %3, %157 ], [ %210, %208 ]
  %163 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 21, !dbg !377
  %164 = load i8, i8* %163, align 1, !dbg !377, !tbaa !289
  %165 = zext i8 %164 to i32, !dbg !377
  %166 = and i32 %165, 1, !dbg !377
  %167 = icmp eq i32 %166, 0, !dbg !377
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %167, label %208, label %168, !dbg !381

; <label>:168:                                    ; preds = %161
  %169 = and i32 %165, 4, !dbg !382
  %170 = icmp eq i32 %169, 0, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  br i1 %170, label %208, label %171, !dbg !383

; <label>:171:                                    ; preds = %168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %172 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 5, i64 0, !dbg !387
  %173 = load i8, i8* %172, align 1, !dbg !387, !tbaa !367
  %174 = and i8 %173, 16, !dbg !387
  %175 = icmp eq i8 %174, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %175, label %203, label %176, !dbg !391

; <label>:176:                                    ; preds = %171
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !392
  %178 = load i32, i32* %177, align 8, !dbg !392, !tbaa !367
  %179 = icmp eq i32 %54, %178, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %179, label %180, label %203, !dbg !392

; <label>:180:                                    ; preds = %176
  %181 = load i32, i32* %158, align 4, !dbg !392, !tbaa !322
  %182 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !392
  %183 = load i32, i32* %182, align 4, !dbg !392, !tbaa !367
  %184 = icmp eq i32 %181, %183, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %184, label %185, label %203, !dbg !392

; <label>:185:                                    ; preds = %180
  %186 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !392
  %187 = load i8, i8* %186, align 8, !dbg !392, !tbaa !367
  %188 = icmp eq i8 %187, 0, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %188, label %189, label %203, !dbg !393

; <label>:189:                                    ; preds = %185
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %190 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 6, i64 0, !dbg !394
  %191 = load i32, i32* %190, align 4, !dbg !394, !tbaa !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %192 = icmp eq i32 %191, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %192, label %301, label %193, !dbg !395

; <label>:193:                                    ; preds = %189
  %194 = load i32, i32* %159, align 4, !dbg !396, !tbaa !322
  %195 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !396
  %196 = load i32, i32* %195, align 8, !dbg !396, !tbaa !367
  %197 = icmp eq i32 %194, %196, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %197, label %198, label %203, !dbg !396

; <label>:198:                                    ; preds = %193
  %199 = load i32, i32* %160, align 4, !dbg !396, !tbaa !322
  %200 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !396
  %201 = load i32, i32* %200, align 4, !dbg !396, !tbaa !367
  %202 = icmp eq i32 %199, %201, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %202, label %301, label %203, !dbg !397

; <label>:203:                                    ; preds = %171, %176, %180, %185, %193, %198
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %204 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 5, i64 1, !dbg !387
  %205 = load i8, i8* %204, align 1, !dbg !387, !tbaa !367
  %206 = and i8 %205, 16, !dbg !387
  %207 = icmp eq i8 %206, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %207, label %430, label %403, !dbg !391

; <label>:208:                                    ; preds = %462, %168, %161
  %209 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 0, !dbg !399
  %210 = load %struct.netif*, %struct.netif** %209, align 8, !dbg !399, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !399
  %211 = icmp eq %struct.netif* %210, null, !dbg !399
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !375
  br i1 %211, label %212, label %161, !dbg !375, !llvm.loop !400

; <label>:212:                                    ; preds = %208, %156
  %213 = tail call %struct.netif* @nd6_find_route(%struct.ip6_addr* %1) #7, !dbg !402
  %214 = icmp eq %struct.netif* %213, null, !dbg !403
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !405
  br i1 %214, label %215, label %301, !dbg !405

; <label>:215:                                    ; preds = %212
  %216 = icmp eq %struct.ip6_addr* %0, null, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %216, label %288, label %217, !dbg !406

; <label>:217:                                    ; preds = %215
  %218 = load i32, i32* %64, align 4, !dbg !406, !tbaa !322
  %219 = icmp eq i32 %218, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %219, label %220, label %232, !dbg !406

; <label>:220:                                    ; preds = %217
  %221 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !406
  %222 = load i32, i32* %221, align 4, !dbg !406, !tbaa !322
  %223 = icmp eq i32 %222, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %223, label %224, label %232, !dbg !406

; <label>:224:                                    ; preds = %220
  %225 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !406
  %226 = load i32, i32* %225, align 4, !dbg !406, !tbaa !322
  %227 = icmp eq i32 %226, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !406
  br i1 %227, label %228, label %232, !dbg !406

; <label>:228:                                    ; preds = %224
  %229 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !406
  %230 = load i32, i32* %229, align 4, !dbg !406, !tbaa !322
  %231 = icmp eq i32 %230, 0, !dbg !406
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !408
  br i1 %231, label %288, label %232, !dbg !408

; <label>:232:                                    ; preds = %228, %224, %220, %217
  %233 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !409, !tbaa !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  %234 = icmp eq %struct.netif* %233, null, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %234, label %288, label %235, !dbg !409

; <label>:235:                                    ; preds = %232
  %236 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %237 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %238 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  %239 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  br label %240, !dbg !409

; <label>:240:                                    ; preds = %235, %284
  %241 = phi %struct.netif* [ %233, %235 ], [ %286, %284 ]
  %242 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 21, !dbg !414
  %243 = load i8, i8* %242, align 1, !dbg !414, !tbaa !289
  %244 = zext i8 %243 to i32, !dbg !414
  %245 = and i32 %244, 1, !dbg !414
  %246 = icmp eq i32 %245, 0, !dbg !414
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !417
  br i1 %246, label %284, label %247, !dbg !417

; <label>:247:                                    ; preds = %240
  %248 = and i32 %244, 4, !dbg !418
  %249 = icmp eq i32 %248, 0, !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !419
  br i1 %249, label %284, label %250, !dbg !419

; <label>:250:                                    ; preds = %247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !420
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %251 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 5, i64 0, !dbg !423
  %252 = load i8, i8* %251, align 1, !dbg !423, !tbaa !367
  %253 = and i8 %252, 16, !dbg !423
  %254 = icmp eq i8 %253, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %254, label %279, label %255, !dbg !427

; <label>:255:                                    ; preds = %250
  %256 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !428
  %257 = load i32, i32* %256, align 8, !dbg !428, !tbaa !367
  %258 = icmp eq i32 %218, %257, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %258, label %259, label %279, !dbg !428

; <label>:259:                                    ; preds = %255
  %260 = load i32, i32* %236, align 4, !dbg !428, !tbaa !322
  %261 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !428
  %262 = load i32, i32* %261, align 4, !dbg !428, !tbaa !367
  %263 = icmp eq i32 %260, %262, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %263, label %264, label %279, !dbg !428

; <label>:264:                                    ; preds = %259
  %265 = load i32, i32* %237, align 4, !dbg !428, !tbaa !322
  %266 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !428
  %267 = load i32, i32* %266, align 8, !dbg !428, !tbaa !367
  %268 = icmp eq i32 %265, %267, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %268, label %269, label %279, !dbg !428

; <label>:269:                                    ; preds = %264
  %270 = load i32, i32* %238, align 4, !dbg !428, !tbaa !322
  %271 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !428
  %272 = load i32, i32* %271, align 4, !dbg !428, !tbaa !367
  %273 = icmp eq i32 %270, %272, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %273, label %274, label %279, !dbg !428

; <label>:274:                                    ; preds = %269
  %275 = load i8, i8* %239, align 4, !dbg !428, !tbaa !294
  %276 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !428
  %277 = load i8, i8* %276, align 8, !dbg !428, !tbaa !367
  %278 = icmp eq i8 %275, %277, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %278, label %301, label %279, !dbg !429

; <label>:279:                                    ; preds = %250, %255, %259, %264, %269, %274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %280 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 5, i64 1, !dbg !423
  %281 = load i8, i8* %280, align 1, !dbg !423, !tbaa !367
  %282 = and i8 %281, 16, !dbg !423
  %283 = icmp eq i8 %282, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %283, label %373, label %349, !dbg !427

; <label>:284:                                    ; preds = %402, %247, %240
  %285 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 0, !dbg !412
  %286 = load %struct.netif*, %struct.netif** %285, align 8, !dbg !412, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !412
  %287 = icmp eq %struct.netif* %286, null, !dbg !412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  br i1 %287, label %288, label %240, !dbg !409, !llvm.loop !431

; <label>:288:                                    ; preds = %284, %232, %228, %215
  %289 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !433, !tbaa !273
  %290 = icmp eq %struct.netif* %289, null, !dbg !435
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !436
  br i1 %290, label %301, label %291, !dbg !436

; <label>:291:                                    ; preds = %288
  %292 = getelementptr inbounds %struct.netif, %struct.netif* %289, i64 0, i32 21, !dbg !437
  %293 = load i8, i8* %292, align 1, !dbg !437, !tbaa !289
  %294 = zext i8 %293 to i32, !dbg !437
  %295 = and i32 %294, 1, !dbg !437
  %296 = icmp eq i32 %295, 0, !dbg !437
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  br i1 %296, label %301, label %297, !dbg !438

; <label>:297:                                    ; preds = %291
  %298 = and i32 %294, 4, !dbg !439
  %299 = icmp eq i32 %298, 0, !dbg !439
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !440
  %300 = select i1 %299, %struct.netif* null, %struct.netif* %289, !dbg !440
  br label %301, !dbg !440

; <label>:301:                                    ; preds = %48, %45, %189, %198, %416, %425, %448, %457, %274, %368, %397, %108, %103, %152, %142, %318, %343, %297, %288, %291, %212, %87, %86, %32, %22, %9, %15, %27
  %302 = phi %struct.netif* [ %3, %27 ], [ null, %15 ], [ null, %9 ], [ null, %22 ], [ null, %32 ], [ null, %86 ], [ null, %87 ], [ %213, %212 ], [ null, %291 ], [ null, %288 ], [ %300, %297 ], [ null, %152 ], [ %113, %142 ], [ %113, %318 ], [ %113, %343 ], [ null, %108 ], [ %94, %103 ], [ %241, %397 ], [ %241, %368 ], [ %241, %274 ], [ %162, %457 ], [ %162, %448 ], [ %162, %425 ], [ %162, %416 ], [ %162, %198 ], [ %162, %189 ], [ null, %48 ], [ %34, %45 ], !dbg !441
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !443
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !445
  ret %struct.netif* %302, !dbg !445

; <label>:303:                                    ; preds = %147
  %304 = load i32, i32* %89, align 4, !dbg !369, !tbaa !322
  %305 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !369
  %306 = load i32, i32* %305, align 8, !dbg !369, !tbaa !367
  %307 = icmp eq i32 %304, %306, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %307, label %308, label %323, !dbg !369

; <label>:308:                                    ; preds = %303
  %309 = load i32, i32* %90, align 4, !dbg !369, !tbaa !322
  %310 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !369
  %311 = load i32, i32* %310, align 4, !dbg !369, !tbaa !367
  %312 = icmp eq i32 %309, %311, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %312, label %313, label %323, !dbg !369

; <label>:313:                                    ; preds = %308
  %314 = load i32, i32* %91, align 4, !dbg !369, !tbaa !322
  %315 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !369
  %316 = load i32, i32* %315, align 8, !dbg !369, !tbaa !367
  %317 = icmp eq i32 %314, %316, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %317, label %318, label %323, !dbg !369

; <label>:318:                                    ; preds = %313
  %319 = load i32, i32* %92, align 4, !dbg !369, !tbaa !322
  %320 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !369
  %321 = load i32, i32* %320, align 4, !dbg !369, !tbaa !367
  %322 = icmp eq i32 %319, %321, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %322, label %301, label %323, !dbg !370

; <label>:323:                                    ; preds = %318, %313, %308, %303, %147
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  %324 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 5, i64 2, !dbg !363
  %325 = load i8, i8* %324, align 1, !dbg !363, !tbaa !367
  %326 = and i8 %325, 16, !dbg !363
  %327 = icmp eq i8 %326, 0, !dbg !363
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !368
  br i1 %327, label %348, label %328, !dbg !368

; <label>:328:                                    ; preds = %323
  %329 = load i32, i32* %89, align 4, !dbg !369, !tbaa !322
  %330 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !369
  %331 = load i32, i32* %330, align 8, !dbg !369, !tbaa !367
  %332 = icmp eq i32 %329, %331, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %332, label %333, label %348, !dbg !369

; <label>:333:                                    ; preds = %328
  %334 = load i32, i32* %90, align 4, !dbg !369, !tbaa !322
  %335 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !369
  %336 = load i32, i32* %335, align 4, !dbg !369, !tbaa !367
  %337 = icmp eq i32 %334, %336, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %337, label %338, label %348, !dbg !369

; <label>:338:                                    ; preds = %333
  %339 = load i32, i32* %91, align 4, !dbg !369, !tbaa !322
  %340 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !369
  %341 = load i32, i32* %340, align 8, !dbg !369, !tbaa !367
  %342 = icmp eq i32 %339, %341, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  br i1 %342, label %343, label %348, !dbg !369

; <label>:343:                                    ; preds = %338
  %344 = load i32, i32* %92, align 4, !dbg !369, !tbaa !322
  %345 = getelementptr inbounds %struct.netif, %struct.netif* %113, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !369
  %346 = load i32, i32* %345, align 4, !dbg !369, !tbaa !367
  %347 = icmp eq i32 %344, %346, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  br i1 %347, label %301, label %348, !dbg !370

; <label>:348:                                    ; preds = %343, %338, %333, %328, %323
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !371
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  br label %152, !dbg !372

; <label>:349:                                    ; preds = %279
  %350 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !428
  %351 = load i32, i32* %350, align 8, !dbg !428, !tbaa !367
  %352 = icmp eq i32 %218, %351, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %352, label %353, label %373, !dbg !428

; <label>:353:                                    ; preds = %349
  %354 = load i32, i32* %236, align 4, !dbg !428, !tbaa !322
  %355 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !428
  %356 = load i32, i32* %355, align 4, !dbg !428, !tbaa !367
  %357 = icmp eq i32 %354, %356, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %357, label %358, label %373, !dbg !428

; <label>:358:                                    ; preds = %353
  %359 = load i32, i32* %237, align 4, !dbg !428, !tbaa !322
  %360 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !428
  %361 = load i32, i32* %360, align 8, !dbg !428, !tbaa !367
  %362 = icmp eq i32 %359, %361, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %362, label %363, label %373, !dbg !428

; <label>:363:                                    ; preds = %358
  %364 = load i32, i32* %238, align 4, !dbg !428, !tbaa !322
  %365 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !428
  %366 = load i32, i32* %365, align 4, !dbg !428, !tbaa !367
  %367 = icmp eq i32 %364, %366, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %367, label %368, label %373, !dbg !428

; <label>:368:                                    ; preds = %363
  %369 = load i8, i8* %239, align 4, !dbg !428, !tbaa !294
  %370 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !428
  %371 = load i8, i8* %370, align 8, !dbg !428, !tbaa !367
  %372 = icmp eq i8 %369, %371, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %372, label %301, label %373, !dbg !429

; <label>:373:                                    ; preds = %368, %363, %358, %353, %349, %279
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %374 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 5, i64 2, !dbg !423
  %375 = load i8, i8* %374, align 1, !dbg !423, !tbaa !367
  %376 = and i8 %375, 16, !dbg !423
  %377 = icmp eq i8 %376, 0, !dbg !423
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !427
  br i1 %377, label %402, label %378, !dbg !427

; <label>:378:                                    ; preds = %373
  %379 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !428
  %380 = load i32, i32* %379, align 8, !dbg !428, !tbaa !367
  %381 = icmp eq i32 %218, %380, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %381, label %382, label %402, !dbg !428

; <label>:382:                                    ; preds = %378
  %383 = load i32, i32* %236, align 4, !dbg !428, !tbaa !322
  %384 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !428
  %385 = load i32, i32* %384, align 4, !dbg !428, !tbaa !367
  %386 = icmp eq i32 %383, %385, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %386, label %387, label %402, !dbg !428

; <label>:387:                                    ; preds = %382
  %388 = load i32, i32* %237, align 4, !dbg !428, !tbaa !322
  %389 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !428
  %390 = load i32, i32* %389, align 8, !dbg !428, !tbaa !367
  %391 = icmp eq i32 %388, %390, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %391, label %392, label %402, !dbg !428

; <label>:392:                                    ; preds = %387
  %393 = load i32, i32* %238, align 4, !dbg !428, !tbaa !322
  %394 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !428
  %395 = load i32, i32* %394, align 4, !dbg !428, !tbaa !367
  %396 = icmp eq i32 %393, %395, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !428
  br i1 %396, label %397, label %402, !dbg !428

; <label>:397:                                    ; preds = %392
  %398 = load i8, i8* %239, align 4, !dbg !428, !tbaa !294
  %399 = getelementptr inbounds %struct.netif, %struct.netif* %241, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !428
  %400 = load i8, i8* %399, align 8, !dbg !428, !tbaa !367
  %401 = icmp eq i8 %398, %400, !dbg !428
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  br i1 %401, label %301, label %402, !dbg !429

; <label>:402:                                    ; preds = %397, %392, %387, %382, %378, %373
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  br label %284, !dbg !412

; <label>:403:                                    ; preds = %203
  %404 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !392
  %405 = load i32, i32* %404, align 8, !dbg !392, !tbaa !367
  %406 = icmp eq i32 %54, %405, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %406, label %407, label %430, !dbg !392

; <label>:407:                                    ; preds = %403
  %408 = load i32, i32* %158, align 4, !dbg !392, !tbaa !322
  %409 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !392
  %410 = load i32, i32* %409, align 4, !dbg !392, !tbaa !367
  %411 = icmp eq i32 %408, %410, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %411, label %412, label %430, !dbg !392

; <label>:412:                                    ; preds = %407
  %413 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !392
  %414 = load i8, i8* %413, align 8, !dbg !392, !tbaa !367
  %415 = icmp eq i8 %414, 0, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %415, label %416, label %430, !dbg !393

; <label>:416:                                    ; preds = %412
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %417 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 6, i64 1, !dbg !394
  %418 = load i32, i32* %417, align 4, !dbg !394, !tbaa !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %419 = icmp eq i32 %418, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %419, label %301, label %420, !dbg !395

; <label>:420:                                    ; preds = %416
  %421 = load i32, i32* %159, align 4, !dbg !396, !tbaa !322
  %422 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !396
  %423 = load i32, i32* %422, align 8, !dbg !396, !tbaa !367
  %424 = icmp eq i32 %421, %423, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %424, label %425, label %430, !dbg !396

; <label>:425:                                    ; preds = %420
  %426 = load i32, i32* %160, align 4, !dbg !396, !tbaa !322
  %427 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !396
  %428 = load i32, i32* %427, align 4, !dbg !396, !tbaa !367
  %429 = icmp eq i32 %426, %428, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %429, label %301, label %430, !dbg !397

; <label>:430:                                    ; preds = %425, %420, %412, %407, %403, %203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  %431 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 5, i64 2, !dbg !387
  %432 = load i8, i8* %431, align 1, !dbg !387, !tbaa !367
  %433 = and i8 %432, 16, !dbg !387
  %434 = icmp eq i8 %433, 0, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !391
  br i1 %434, label %462, label %435, !dbg !391

; <label>:435:                                    ; preds = %430
  %436 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !392
  %437 = load i32, i32* %436, align 8, !dbg !392, !tbaa !367
  %438 = icmp eq i32 %54, %437, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %438, label %439, label %462, !dbg !392

; <label>:439:                                    ; preds = %435
  %440 = load i32, i32* %158, align 4, !dbg !392, !tbaa !322
  %441 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !392
  %442 = load i32, i32* %441, align 4, !dbg !392, !tbaa !367
  %443 = icmp eq i32 %440, %442, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !392
  br i1 %443, label %444, label %462, !dbg !392

; <label>:444:                                    ; preds = %439
  %445 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !392
  %446 = load i8, i8* %445, align 8, !dbg !392, !tbaa !367
  %447 = icmp eq i8 %446, 0, !dbg !392
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !393
  br i1 %447, label %448, label %462, !dbg !393

; <label>:448:                                    ; preds = %444
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %449 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 6, i64 2, !dbg !394
  %450 = load i32, i32* %449, align 4, !dbg !394, !tbaa !322
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %451 = icmp eq i32 %450, 0, !dbg !394
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !395
  br i1 %451, label %301, label %452, !dbg !395

; <label>:452:                                    ; preds = %448
  %453 = load i32, i32* %159, align 4, !dbg !396, !tbaa !322
  %454 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !396
  %455 = load i32, i32* %454, align 8, !dbg !396, !tbaa !367
  %456 = icmp eq i32 %453, %455, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  br i1 %456, label %457, label %462, !dbg !396

; <label>:457:                                    ; preds = %452
  %458 = load i32, i32* %160, align 4, !dbg !396, !tbaa !322
  %459 = getelementptr inbounds %struct.netif, %struct.netif* %162, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !396
  %460 = load i32, i32* %459, align 4, !dbg !396, !tbaa !367
  %461 = icmp eq i32 %458, %460, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %461, label %301, label %462, !dbg !397

; <label>:462:                                    ; preds = %457, %452, %444, %439, %435, %430
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !386
  br label %208, !dbg !399
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.netif* @nd6_find_route(%struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif* readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !446 {
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !467
  %4 = load i32, i32* %3, align 4, !dbg !467, !tbaa !322
  %5 = zext i32 %4 to i64, !dbg !467
  %6 = and i64 %5, 224, !dbg !467
  %7 = icmp eq i64 %6, 32, !dbg !467
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !469
  br i1 %7, label %8, label %9, !dbg !469

; <label>:8:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !471
  br label %42, !dbg !471

; <label>:9:                                      ; preds = %2
  %10 = and i64 %5, 49407, !dbg !473
  %11 = icmp eq i64 %10, 33022, !dbg !473
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !475
  br i1 %11, label %26, label %12, !dbg !475

; <label>:12:                                     ; preds = %9
  %13 = icmp eq i32 %4, 0, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %13, label %14, label %28, !dbg !476

; <label>:14:                                     ; preds = %12
  %15 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !476
  %16 = load i32, i32* %15, align 4, !dbg !476, !tbaa !322
  %17 = icmp eq i32 %16, 0, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %17, label %18, label %27, !dbg !476

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !476
  %20 = load i32, i32* %19, align 4, !dbg !476, !tbaa !322
  %21 = icmp eq i32 %20, 0, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %21, label %22, label %27, !dbg !476

; <label>:22:                                     ; preds = %18
  %23 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !476
  %24 = load i32, i32* %23, align 4, !dbg !476, !tbaa !322
  %25 = icmp eq i32 %24, 16777216, !dbg !476
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !477
  br i1 %25, label %26, label %27, !dbg !477

; <label>:26:                                     ; preds = %22, %9
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !478
  br label %42, !dbg !478

; <label>:27:                                     ; preds = %14, %18, %22
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br label %39, !dbg !481

; <label>:28:                                     ; preds = %12
  %29 = and i64 %5, 254, !dbg !483
  %30 = icmp eq i64 %29, 252, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !480
  br i1 %30, label %31, label %32, !dbg !480

; <label>:31:                                     ; preds = %28
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %42, !dbg !484

; <label>:32:                                     ; preds = %28
  %33 = and i64 %5, 255, !dbg !486
  %34 = icmp eq i64 %33, 255, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %34, label %35, label %39, !dbg !481

; <label>:35:                                     ; preds = %32
  %36 = tail call i32 @lwip_htonl(i32 %4) #7, !dbg !488
  %37 = lshr i32 %36, 16, !dbg !488
  %38 = and i32 %37, 15, !dbg !488
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !490
  br label %42, !dbg !490

; <label>:39:                                     ; preds = %27, %32
  %40 = icmp eq i64 %10, 49406, !dbg !491
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !493
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %41 = select i1 %40, i32 5, i32 14, !dbg !494
  br label %42, !dbg !494

; <label>:42:                                     ; preds = %39, %26, %35, %31, %8
  %43 = phi i32 [ 14, %8 ], [ 2, %26 ], [ 8, %31 ], [ %38, %35 ], [ %41, %39 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !498
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  %44 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %46 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  br label %47, !dbg !500

; <label>:47:                                     ; preds = %42, %124
  %48 = phi i64 [ 0, %42 ], [ %129, %124 ]
  %49 = phi i8 [ 0, %42 ], [ %128, %124 ]
  %50 = phi i8 [ 0, %42 ], [ %127, %124 ]
  %51 = phi %struct.ip_addr* [ null, %42 ], [ %126, %124 ]
  %52 = phi i8 [ 0, %42 ], [ %125, %124 ]
  %53 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 %48, !dbg !501
  %54 = load i8, i8* %53, align 1, !dbg !501, !tbaa !367
  %55 = and i8 %54, 16, !dbg !501
  %56 = icmp eq i8 %55, 0, !dbg !501
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  br i1 %56, label %124, label %57, !dbg !505

; <label>:57:                                     ; preds = %47
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %48, !dbg !506
  %59 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %58, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !508
  %60 = load i32, i32* %59, align 4, !dbg !508, !tbaa !322
  %61 = zext i32 %60 to i64, !dbg !508
  %62 = and i64 %61, 224, !dbg !508
  %63 = icmp eq i64 %62, 32, !dbg !508
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !510
  br i1 %63, label %64, label %65, !dbg !510

; <label>:64:                                     ; preds = %57
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !512
  br label %76, !dbg !512

; <label>:65:                                     ; preds = %57
  %66 = and i64 %61, 49407, !dbg !514
  %67 = icmp eq i64 %66, 33022, !dbg !514
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !516
  br i1 %67, label %68, label %69, !dbg !516

; <label>:68:                                     ; preds = %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !517
  br label %76, !dbg !517

; <label>:69:                                     ; preds = %65
  %70 = and i64 %61, 254, !dbg !519
  %71 = icmp eq i64 %70, 252, !dbg !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !521
  br i1 %71, label %72, label %73, !dbg !521

; <label>:72:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  br label %76, !dbg !522

; <label>:73:                                     ; preds = %69
  %74 = icmp eq i64 %66, 49406, !dbg !524
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !526
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %75 = select i1 %74, i8 5, i8 15, !dbg !527
  br label %76, !dbg !527

; <label>:76:                                     ; preds = %73, %68, %72, %64
  %77 = phi i8 [ 14, %64 ], [ 2, %68 ], [ 8, %72 ], [ %75, %73 ], !dbg !529
  %78 = icmp eq i8 %54, 48, !dbg !531
  %79 = zext i1 %78 to i8, !dbg !531
  %80 = load i32, i32* %3, align 4, !dbg !533, !tbaa !322
  %81 = icmp eq i32 %60, %80, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !533
  br i1 %81, label %83, label %82, !dbg !533

; <label>:82:                                     ; preds = %76
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br label %98, !dbg !534

; <label>:83:                                     ; preds = %76
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %48, i32 0, i32 0, i32 0, i64 1, !dbg !533
  %85 = load i32, i32* %84, align 4, !dbg !533, !tbaa !322
  %86 = load i32, i32* %44, align 4, !dbg !533, !tbaa !322
  %87 = icmp eq i32 %85, %86, !dbg !533
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !534
  br i1 %87, label %88, label %98, !dbg !534

; <label>:88:                                     ; preds = %83
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %48, i32 0, i32 0, i32 0, i64 2, !dbg !536
  %90 = load i32, i32* %89, align 4, !dbg !536, !tbaa !322
  %91 = load i32, i32* %45, align 4, !dbg !536, !tbaa !322
  %92 = icmp eq i32 %90, %91, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %92, label %93, label %98, !dbg !536

; <label>:93:                                     ; preds = %88
  %94 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 %48, i32 0, i32 0, i32 0, i64 3, !dbg !536
  %95 = load i32, i32* %94, align 4, !dbg !536, !tbaa !322
  %96 = load i32, i32* %46, align 4, !dbg !536, !tbaa !322
  %97 = icmp eq i32 %95, %96, !dbg !536
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  br i1 %97, label %131, label %98, !dbg !537

; <label>:98:                                     ; preds = %82, %93, %88, %83
  %99 = phi i32 [ 0, %82 ], [ 1, %93 ], [ 1, %88 ], [ 0, %83 ]
  %100 = phi i8 [ 0, %82 ], [ 1, %93 ], [ 1, %88 ], [ 0, %83 ]
  %101 = icmp eq %struct.ip_addr* %51, null, !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !540
  br i1 %101, label %123, label %102, !dbg !540

; <label>:102:                                    ; preds = %98
  %103 = zext i8 %77 to i32, !dbg !541
  %104 = sext i8 %52 to i32, !dbg !542
  %105 = icmp slt i32 %103, %104, !dbg !543
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !544
  br i1 %105, label %106, label %108, !dbg !544

; <label>:106:                                    ; preds = %102
  %107 = icmp ugt i32 %43, %103, !dbg !545
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  br i1 %107, label %108, label %123, !dbg !546

; <label>:108:                                    ; preds = %106, %102
  %109 = icmp sgt i32 %103, %104, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %109, label %110, label %112, !dbg !548

; <label>:110:                                    ; preds = %108
  %111 = icmp sgt i32 %43, %104, !dbg !549
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !550
  br i1 %111, label %123, label %112, !dbg !550

; <label>:112:                                    ; preds = %110, %108
  %113 = icmp eq i32 %103, %104, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !552
  br i1 %113, label %114, label %124, !dbg !552

; <label>:114:                                    ; preds = %112
  %115 = zext i1 %78 to i32, !dbg !553
  %116 = zext i8 %50 to i32, !dbg !554
  %117 = icmp ugt i32 %115, %116, !dbg !555
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !556
  br i1 %117, label %123, label %118, !dbg !556

; <label>:118:                                    ; preds = %114
  %119 = icmp eq i32 %115, %116, !dbg !557
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  br i1 %119, label %120, label %124, !dbg !558

; <label>:120:                                    ; preds = %118
  %121 = zext i8 %49 to i32, !dbg !559
  %122 = icmp ugt i32 %99, %121, !dbg !560
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !561
  br i1 %122, label %123, label %124, !dbg !561

; <label>:123:                                    ; preds = %106, %120, %114, %110, %98
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !562
  br label %124, !dbg !562

; <label>:124:                                    ; preds = %47, %112, %118, %120, %123
  %125 = phi i8 [ %77, %123 ], [ %52, %120 ], [ %52, %118 ], [ %52, %112 ], [ %52, %47 ], !dbg !564
  %126 = phi %struct.ip_addr* [ %58, %123 ], [ %51, %120 ], [ %51, %118 ], [ %51, %112 ], [ %51, %47 ], !dbg !564
  %127 = phi i8 [ %79, %123 ], [ %50, %120 ], [ %50, %118 ], [ %50, %112 ], [ %50, %47 ], !dbg !564
  %128 = phi i8 [ %100, %123 ], [ %49, %120 ], [ %49, %118 ], [ %49, %112 ], [ %49, %47 ], !dbg !564
  %129 = add nuw nsw i64 %48, 1, !dbg !565
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !566
  %130 = icmp ult i64 %129, 3, !dbg !567
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %130, label %47, label %131, !dbg !500, !llvm.loop !568

; <label>:131:                                    ; preds = %124, %93
  %132 = phi %struct.ip_addr* [ %58, %93 ], [ %126, %124 ], !dbg !564
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  ret %struct.ip_addr* %132, !dbg !572
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !573 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 1), align 2, !dbg !607, !tbaa !608
  %4 = add i16 %3, 1, !dbg !607
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 1), align 2, !dbg !607, !tbaa !608
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !614
  %6 = bitcast i8** %5 to %struct.ip6_hdr**, !dbg !614
  %7 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8, !dbg !614, !tbaa !615
  %8 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 0, !dbg !618
  %9 = load i32, i32* %8, align 1, !dbg !618, !tbaa !620
  %10 = tail call i32 @lwip_htonl(i32 %9) #7, !dbg !618
  %11 = and i32 %10, -268435456, !dbg !623
  %12 = icmp eq i32 %11, 1610612736, !dbg !623
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !624
  br i1 %12, label %19, label %13, !dbg !624

; <label>:13:                                     ; preds = %2
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !625
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !627, !tbaa !628
  %16 = add i16 %15, 1, !dbg !627
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !627, !tbaa !628
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !629, !tbaa !630
  %18 = add i16 %17, 1, !dbg !629
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !629, !tbaa !630
  br label %466, !dbg !631

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !632
  %21 = load i16, i16* %20, align 2, !dbg !632, !tbaa !634
  %22 = icmp ult i16 %21, 40, !dbg !635
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !636
  %23 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 1, !dbg !637
  br i1 %22, label %33, label %24, !dbg !636

; <label>:24:                                     ; preds = %19
  %25 = load i16, i16* %23, align 1, !dbg !638, !tbaa !639
  %26 = tail call zeroext i16 @lwip_htons(i16 zeroext %25) #7, !dbg !638
  %27 = zext i16 %26 to i32, !dbg !638
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !640
  %29 = load i16, i16* %28, align 8, !dbg !640, !tbaa !641
  %30 = zext i16 %29 to i32, !dbg !642
  %31 = add nsw i32 %30, -40, !dbg !643
  %32 = icmp slt i32 %31, %27, !dbg !644
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !645
  br i1 %32, label %33, label %41, !dbg !645

; <label>:33:                                     ; preds = %19, %24
  %34 = load i16, i16* %23, align 1, !dbg !646, !tbaa !639
  %35 = tail call zeroext i16 @lwip_htons(i16 zeroext %34) #7, !dbg !646
  %36 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !649
  %37 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !650, !tbaa !651
  %38 = add i16 %37, 1, !dbg !650
  store i16 %38, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !650, !tbaa !651
  %39 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !652, !tbaa !630
  %40 = add i16 %39, 1, !dbg !652
  store i16 %40, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !652, !tbaa !630
  br label %466, !dbg !653

; <label>:41:                                     ; preds = %24
  %42 = load i16, i16* %23, align 1, !dbg !654, !tbaa !639
  %43 = tail call zeroext i16 @lwip_htons(i16 zeroext %42) #7, !dbg !654
  %44 = add i16 %43, 40, !dbg !655
  tail call void @pbuf_realloc(%struct.pbuf* nonnull %0, i16 zeroext %44) #7, !dbg !656
  %45 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 0, !dbg !657
  %46 = load i32, i32* %45, align 1, !dbg !657, !tbaa !322
  store i32 %46, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !657, !tbaa !367
  %47 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 1, !dbg !657
  %48 = load i32, i32* %47, align 1, !dbg !657, !tbaa !322
  store i32 %48, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !657, !tbaa !367
  %49 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 2, !dbg !657
  %50 = load i32, i32* %49, align 1, !dbg !657, !tbaa !322
  store i32 %50, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !657, !tbaa !367
  %51 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 3, !dbg !657
  %52 = load i32, i32* %51, align 1, !dbg !657, !tbaa !322
  store i32 %52, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !657, !tbaa !367
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !657, !tbaa !367
  store i8 6, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !660, !tbaa !662
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 0, !dbg !664
  %54 = load i32, i32* %53, align 1, !dbg !664, !tbaa !322
  store i32 %54, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !664, !tbaa !367
  %55 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 1, !dbg !664
  %56 = load i32, i32* %55, align 1, !dbg !664, !tbaa !322
  store i32 %56, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !664, !tbaa !367
  %57 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 2, !dbg !664
  %58 = load i32, i32* %57, align 1, !dbg !664, !tbaa !322
  store i32 %58, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !664, !tbaa !367
  %59 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 3, !dbg !664
  %60 = load i32, i32* %59, align 1, !dbg !664, !tbaa !322
  store i32 %60, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !664, !tbaa !367
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !664, !tbaa !367
  store i8 6, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !667, !tbaa !669
  %61 = or i32 %48, %46, !dbg !670
  %62 = icmp eq i32 %61, 0, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !670
  br i1 %62, label %63, label %65, !dbg !670

; <label>:63:                                     ; preds = %41
  %64 = icmp eq i32 %50, -65536, !dbg !670
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !672
  br i1 %64, label %73, label %65, !dbg !672

; <label>:65:                                     ; preds = %63, %41
  %66 = or i32 %56, %54, !dbg !673
  %67 = icmp eq i32 %66, 0, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !673
  br i1 %67, label %68, label %70, !dbg !673

; <label>:68:                                     ; preds = %65
  %69 = icmp eq i32 %58, -65536, !dbg !673
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !674
  br i1 %69, label %73, label %70, !dbg !674

; <label>:70:                                     ; preds = %68, %65
  %71 = and i32 %54, 255, !dbg !675
  %72 = icmp eq i32 %71, 255, !dbg !675
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !676
  br i1 %72, label %73, label %79, !dbg !676

; <label>:73:                                     ; preds = %70, %68, %63
  %74 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !677
  %75 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !679, !tbaa !628
  %76 = add i16 %75, 1, !dbg !679
  store i16 %76, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !679, !tbaa !628
  %77 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !680, !tbaa !630
  %78 = add i16 %77, 1, !dbg !680
  store i16 %78, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !680, !tbaa !630
  br label %466, !dbg !681

; <label>:79:                                     ; preds = %70
  %80 = zext i32 %46 to i64, !dbg !682
  %81 = and i64 %80, 49407, !dbg !682
  %82 = icmp eq i64 %81, 33022, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %82, label %88, label %83, !dbg !682

; <label>:83:                                     ; preds = %79
  %84 = and i64 %80, 36863, !dbg !682
  %85 = icmp eq i64 %84, 511, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %85, label %88, label %86, !dbg !682

; <label>:86:                                     ; preds = %83
  %87 = icmp eq i64 %84, 767, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br i1 %87, label %88, label %92, !dbg !682

; <label>:88:                                     ; preds = %86, %83, %79
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !682
  %90 = load i8, i8* %89, align 8, !dbg !682, !tbaa !298
  %91 = add i8 %90, 1, !dbg !682
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  br label %92, !dbg !682

; <label>:92:                                     ; preds = %86, %88
  %93 = phi i8 [ %91, %88 ], [ 0, %86 ], !dbg !682
  store i8 %93, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !682, !tbaa !367
  %94 = and i32 %54, 49407, !dbg !683
  %95 = icmp eq i32 %94, 33022, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br i1 %95, label %96, label %100, !dbg !683

; <label>:96:                                     ; preds = %92
  %97 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !683
  %98 = load i8, i8* %97, align 8, !dbg !683, !tbaa !298
  %99 = add i8 %98, 1, !dbg !683
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !683
  br label %100, !dbg !683

; <label>:100:                                    ; preds = %92, %96
  %101 = phi i8 [ %99, %96 ], [ 0, %92 ], !dbg !683
  store i8 %101, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !683, !tbaa !367
  store %struct.ip6_hdr* %7, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !684, !tbaa !685
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !686, !tbaa !687
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !688, !tbaa !689
  %102 = and i32 %46, 255, !dbg !690
  %103 = icmp eq i32 %102, 255, !dbg !690
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !692
  br i1 %103, label %104, label %126, !dbg !692

; <label>:104:                                    ; preds = %100
  %105 = icmp eq i32 %46, 511, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %105, label %106, label %113, !dbg !693

; <label>:106:                                    ; preds = %104
  %107 = icmp eq i32 %48, 0, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %107, label %108, label %112, !dbg !693

; <label>:108:                                    ; preds = %106
  %109 = icmp eq i32 %50, 0, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  br i1 %109, label %110, label %112, !dbg !693

; <label>:110:                                    ; preds = %108
  %111 = icmp eq i32 %52, 16777216, !dbg !693
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !696
  br i1 %111, label %121, label %112, !dbg !696

; <label>:112:                                    ; preds = %110, %108, %106
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br label %122, !dbg !697

; <label>:113:                                    ; preds = %104
  %114 = icmp eq i32 %46, 767, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %114, label %115, label %122, !dbg !697

; <label>:115:                                    ; preds = %113
  %116 = icmp eq i32 %48, 0, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %116, label %117, label %122, !dbg !697

; <label>:117:                                    ; preds = %115
  %118 = icmp eq i32 %50, 0, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !697
  br i1 %118, label %119, label %122, !dbg !697

; <label>:119:                                    ; preds = %117
  %120 = icmp eq i32 %52, 16777216, !dbg !697
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  br i1 %120, label %121, label %122, !dbg !698

; <label>:121:                                    ; preds = %119, %110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !700
  br label %173, !dbg !700

; <label>:122:                                    ; preds = %112, %119, %117, %115, %113
  %123 = tail call %struct.mld_group* @mld6_lookfor_group(%struct.netif* %1, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !702
  %124 = icmp eq %struct.mld_group* %123, null, !dbg !702
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !704
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %125 = select i1 %124, %struct.netif* null, %struct.netif* %1
  br label %173

; <label>:126:                                    ; preds = %100
  %127 = tail call fastcc i32 @ip6_input_accept(%struct.netif* %1) #8, !dbg !705
  %128 = icmp eq i32 %127, 0, !dbg !705
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !708
  br i1 %128, label %130, label %129, !dbg !708

; <label>:129:                                    ; preds = %126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !709
  br label %173, !dbg !709

; <label>:130:                                    ; preds = %126
  %131 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !711, !tbaa !367
  %132 = and i32 %131, 49407, !dbg !711
  %133 = icmp eq i32 %132, 33022, !dbg !711
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !714
  br i1 %133, label %173, label %134, !dbg !714

; <label>:134:                                    ; preds = %130
  %135 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !715, !tbaa !367
  %136 = and i32 %135, 49407, !dbg !715
  %137 = icmp eq i32 %136, 33022, !dbg !715
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !716
  br i1 %137, label %173, label %138, !dbg !716

; <label>:138:                                    ; preds = %134
  %139 = icmp eq i32 %131, 0, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %139, label %140, label %149, !dbg !717

; <label>:140:                                    ; preds = %138
  %141 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !717, !tbaa !367
  %142 = icmp eq i32 %141, 0, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %142, label %143, label %149, !dbg !717

; <label>:143:                                    ; preds = %140
  %144 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !717, !tbaa !367
  %145 = icmp eq i32 %144, 0, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  br i1 %145, label %146, label %149, !dbg !717

; <label>:146:                                    ; preds = %143
  %147 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !717, !tbaa !367
  %148 = icmp eq i32 %147, 16777216, !dbg !717
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !719
  br i1 %148, label %173, label %149, !dbg !719

; <label>:149:                                    ; preds = %146, %143, %140, %138
  %150 = icmp eq i32 %135, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %150, label %151, label %160, !dbg !720

; <label>:151:                                    ; preds = %149
  %152 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !720, !tbaa !367
  %153 = icmp eq i32 %152, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %153, label %154, label %160, !dbg !720

; <label>:154:                                    ; preds = %151
  %155 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !720, !tbaa !367
  %156 = icmp eq i32 %155, 0, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  br i1 %156, label %157, label %160, !dbg !720

; <label>:157:                                    ; preds = %154
  %158 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !720, !tbaa !367
  %159 = icmp eq i32 %158, 16777216, !dbg !720
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !721
  br i1 %159, label %173, label %160, !dbg !721

; <label>:160:                                    ; preds = %157, %154, %151, %149
  %161 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !722, !tbaa !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %162 = icmp eq %struct.netif* %161, null, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %162, label %173, label %163, !dbg !722

; <label>:163:                                    ; preds = %160, %169
  %164 = phi %struct.netif* [ %171, %169 ], [ %161, %160 ]
  %165 = icmp eq %struct.netif* %164, %1, !dbg !726
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !729
  br i1 %165, label %169, label %166, !dbg !729

; <label>:166:                                    ; preds = %163
  %167 = tail call fastcc i32 @ip6_input_accept(%struct.netif* nonnull %164) #8, !dbg !730
  %168 = icmp eq i32 %167, 0, !dbg !730
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !732
  br i1 %168, label %169, label %173, !dbg !732

; <label>:169:                                    ; preds = %166, %163
  %170 = getelementptr inbounds %struct.netif, %struct.netif* %164, i64 0, i32 0, !dbg !724
  %171 = load %struct.netif*, %struct.netif** %170, align 8, !dbg !724, !tbaa !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  %172 = icmp eq %struct.netif* %171, null, !dbg !724
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  br i1 %172, label %173, label %163, !dbg !722, !llvm.loop !733

; <label>:173:                                    ; preds = %169, %166, %160, %122, %134, %130, %157, %146, %129, %121
  %174 = phi %struct.netif* [ %1, %121 ], [ %1, %129 ], [ null, %130 ], [ null, %134 ], [ null, %146 ], [ null, %157 ], [ %125, %122 ], [ null, %160 ], [ null, %169 ], [ %164, %166 ], !dbg !735
  %175 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !736, !tbaa !367
  %176 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !736
  %177 = or i32 %176, %175, !dbg !736
  %178 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !736
  %179 = or i32 %177, %178, !dbg !736
  %180 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !736
  %181 = or i32 %179, %180, !dbg !736
  %182 = icmp eq i32 %181, 0, !dbg !736
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  br i1 %182, label %183, label %197, !dbg !736

; <label>:183:                                    ; preds = %173
  %184 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !738, !tbaa !367
  %185 = icmp eq i32 %184, 767, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %185, label %186, label %193, !dbg !738

; <label>:186:                                    ; preds = %183
  %187 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !738, !tbaa !367
  %188 = icmp eq i32 %187, 16777216, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !738
  br i1 %188, label %189, label %193, !dbg !738

; <label>:189:                                    ; preds = %186
  %190 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !738, !tbaa !367
  %191 = and i32 %190, 255, !dbg !738
  %192 = icmp eq i32 %191, 255, !dbg !738
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !739
  br i1 %192, label %197, label %193, !dbg !739

; <label>:193:                                    ; preds = %189, %186, %183
  %194 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !740
  %195 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !742, !tbaa !630
  %196 = add i16 %195, 1, !dbg !742
  store i16 %196, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !742, !tbaa !630
  br label %465, !dbg !743

; <label>:197:                                    ; preds = %189, %173
  %198 = icmp eq %struct.netif* %174, null, !dbg !744
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !746
  br i1 %198, label %199, label %201, !dbg !746

; <label>:199:                                    ; preds = %197
  %200 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !747
  br label %465, !dbg !749

; <label>:201:                                    ; preds = %197
  store %struct.netif* %174, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !750, !tbaa !687
  %202 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 2, !dbg !751
  %203 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 40) #7, !dbg !755
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  %204 = load i8, i8* %202, align 1, !dbg !757, !tbaa !367
  %205 = icmp eq i8 %204, 59, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %205, label %437, label %208, !dbg !756

; <label>:206:                                    ; preds = %426
  %207 = icmp eq i8 %431, 59, !dbg !758
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !756
  br i1 %207, label %437, label %208, !dbg !756, !llvm.loop !759

; <label>:208:                                    ; preds = %201, %206
  %209 = phi %struct.pbuf* [ %430, %206 ], [ %0, %201 ]
  %210 = phi %struct.ip6_hdr* [ %429, %206 ], [ %7, %201 ]
  %211 = phi i8* [ %428, %206 ], [ %202, %201 ]
  %212 = phi i16 [ %427, %206 ], [ 40, %201 ]
  %213 = phi i8 [ %431, %206 ], [ %204, %201 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  switch i8 %213, label %437 [
    i8 0, label %214
    i8 60, label %271
    i8 43, label %328
    i8 44, label %372
  ], !dbg !761

; <label>:214:                                    ; preds = %208
  %215 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 1, !dbg !762
  %216 = load i8*, i8** %215, align 8, !dbg !762, !tbaa !615
  %217 = getelementptr inbounds i8, i8* %216, i64 1, !dbg !764
  %218 = load i8, i8* %217, align 1, !dbg !764, !tbaa !765
  %219 = zext i8 %218 to i16, !dbg !767
  %220 = shl nuw nsw i16 %219, 3, !dbg !768
  %221 = add nuw nsw i16 %220, 8, !dbg !768
  %222 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 3, !dbg !769
  %223 = load i16, i16* %222, align 2, !dbg !769, !tbaa !634
  %224 = icmp ult i16 %223, 8, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !772
  br i1 %224, label %228, label %225, !dbg !772

; <label>:225:                                    ; preds = %214
  %226 = zext i16 %221 to i32, !dbg !773
  %227 = icmp ugt i16 %221, %223, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !775
  br i1 %227, label %228, label %234, !dbg !775

; <label>:228:                                    ; preds = %225, %214
  %229 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !776
  %230 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !778, !tbaa !651
  %231 = add i16 %230, 1, !dbg !778
  store i16 %231, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !778, !tbaa !651
  %232 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !779, !tbaa !630
  %233 = add i16 %232, 1, !dbg !779
  store i16 %233, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !779, !tbaa !630
  br label %267, !dbg !780

; <label>:234:                                    ; preds = %225
  %235 = add i16 %221, %212, !dbg !781
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br label %236, !dbg !783

; <label>:236:                                    ; preds = %234, %262
  %237 = phi i32 [ 2, %234 ], [ %265, %262 ]
  %238 = sext i32 %237 to i64, !dbg !785
  %239 = getelementptr inbounds i8, i8* %216, i64 %238, !dbg !785
  %240 = load i8, i8* %239, align 1, !dbg !787, !tbaa !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !790
  switch i8 %240, label %241 [
    i8 0, label %262
    i8 1, label %258
    i8 5, label %258
    i8 -62, label %258
  ], !dbg !790

; <label>:241:                                    ; preds = %236
  %242 = lshr i8 %240, 6, !dbg !791
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !793
  %243 = trunc i8 %242 to i2, !dbg !793
  switch i2 %243, label %258 [
    i2 1, label %244
    i2 -2, label %246
    i2 -1, label %248
  ], !dbg !793

; <label>:244:                                    ; preds = %241
  %245 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !794
  br label %255, !dbg !796

; <label>:246:                                    ; preds = %241
  tail call void @icmp6_param_problem(%struct.pbuf* %209, i32 2, i8* %239) #7, !dbg !797
  %247 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !798
  br label %255, !dbg !799

; <label>:248:                                    ; preds = %241
  %249 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !800, !tbaa !367
  %250 = and i32 %249, 255, !dbg !800
  %251 = icmp eq i32 %250, 255, !dbg !800
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %251, label %253, label %252, !dbg !802

; <label>:252:                                    ; preds = %248
  tail call void @icmp6_param_problem(%struct.pbuf* %209, i32 2, i8* %239) #7, !dbg !803
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !805
  br label %253, !dbg !805

; <label>:253:                                    ; preds = %252, %248
  %254 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !806
  br label %255, !dbg !807

; <label>:255:                                    ; preds = %253, %246, %244
  %256 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !808, !tbaa !630
  %257 = add i16 %256, 1, !dbg !808
  store i16 %257, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !808, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !808
  br label %267

; <label>:258:                                    ; preds = %241, %236, %236, %236
  %259 = getelementptr inbounds i8, i8* %239, i64 1, !dbg !808
  %260 = load i8, i8* %259, align 1, !dbg !808, !tbaa !809
  %261 = zext i8 %260 to i32, !dbg !808
  br label %262, !dbg !810

; <label>:262:                                    ; preds = %258, %236
  %263 = phi i32 [ -1, %236 ], [ %261, %258 ], !dbg !810
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !810
  %264 = add nsw i32 %237, 2, !dbg !811
  %265 = add nsw i32 %264, %263, !dbg !812
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !813
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %266 = icmp slt i32 %265, %226, !dbg !814
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !783
  br i1 %266, label %236, label %268, !dbg !783

; <label>:267:                                    ; preds = %228, %255
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %465

; <label>:268:                                    ; preds = %262
  %269 = zext i16 %221 to i64, !dbg !815
  %270 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %209, i64 %269) #7, !dbg !816
  br label %426

; <label>:271:                                    ; preds = %208
  %272 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 1, !dbg !817
  %273 = load i8*, i8** %272, align 8, !dbg !817, !tbaa !615
  %274 = getelementptr inbounds i8, i8* %273, i64 1, !dbg !819
  %275 = load i8, i8* %274, align 1, !dbg !819, !tbaa !820
  %276 = zext i8 %275 to i16, !dbg !822
  %277 = shl nuw nsw i16 %276, 3, !dbg !823
  %278 = add nuw nsw i16 %277, 8, !dbg !823
  %279 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 3, !dbg !824
  %280 = load i16, i16* %279, align 2, !dbg !824, !tbaa !634
  %281 = icmp ult i16 %280, 8, !dbg !826
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !827
  br i1 %281, label %285, label %282, !dbg !827

; <label>:282:                                    ; preds = %271
  %283 = zext i16 %278 to i32, !dbg !828
  %284 = icmp ugt i16 %278, %280, !dbg !829
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %284, label %285, label %291, !dbg !830

; <label>:285:                                    ; preds = %282, %271
  %286 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !831
  %287 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !833, !tbaa !651
  %288 = add i16 %287, 1, !dbg !833
  store i16 %288, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !833, !tbaa !651
  %289 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !834, !tbaa !630
  %290 = add i16 %289, 1, !dbg !834
  store i16 %290, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !834, !tbaa !630
  br label %324, !dbg !835

; <label>:291:                                    ; preds = %282
  %292 = add i16 %278, %212, !dbg !836
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br label %293, !dbg !838

; <label>:293:                                    ; preds = %291, %319
  %294 = phi i32 [ 2, %291 ], [ %322, %319 ]
  %295 = sext i32 %294 to i64, !dbg !840
  %296 = getelementptr inbounds i8, i8* %273, i64 %295, !dbg !840
  %297 = load i8, i8* %296, align 1, !dbg !842, !tbaa !788
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  switch i8 %297, label %298 [
    i8 0, label %319
    i8 1, label %315
    i8 5, label %315
    i8 -62, label %315
    i8 -55, label %315
  ], !dbg !843

; <label>:298:                                    ; preds = %293
  %299 = lshr i8 %297, 6, !dbg !844
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !846
  %300 = trunc i8 %299 to i2, !dbg !846
  switch i2 %300, label %315 [
    i2 1, label %301
    i2 -2, label %303
    i2 -1, label %305
  ], !dbg !846

; <label>:301:                                    ; preds = %298
  %302 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !847
  br label %312, !dbg !849

; <label>:303:                                    ; preds = %298
  tail call void @icmp6_param_problem(%struct.pbuf* %209, i32 2, i8* %296) #7, !dbg !850
  %304 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !851
  br label %312, !dbg !852

; <label>:305:                                    ; preds = %298
  %306 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !853, !tbaa !367
  %307 = and i32 %306, 255, !dbg !853
  %308 = icmp eq i32 %307, 255, !dbg !853
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !855
  br i1 %308, label %310, label %309, !dbg !855

; <label>:309:                                    ; preds = %305
  tail call void @icmp6_param_problem(%struct.pbuf* %209, i32 2, i8* %296) #7, !dbg !856
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br label %310, !dbg !858

; <label>:310:                                    ; preds = %309, %305
  %311 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %209) #7, !dbg !859
  br label %312, !dbg !860

; <label>:312:                                    ; preds = %310, %303, %301
  %313 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !861, !tbaa !630
  %314 = add i16 %313, 1, !dbg !861
  store i16 %314, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !861, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br label %324

; <label>:315:                                    ; preds = %298, %293, %293, %293, %293
  %316 = getelementptr inbounds i8, i8* %296, i64 1, !dbg !861
  %317 = load i8, i8* %316, align 1, !dbg !861, !tbaa !809
  %318 = zext i8 %317 to i32, !dbg !861
  br label %319, !dbg !862

; <label>:319:                                    ; preds = %315, %293
  %320 = phi i32 [ -1, %293 ], [ %318, %315 ], !dbg !862
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !862
  %321 = add nsw i32 %294, 2, !dbg !863
  %322 = add nsw i32 %321, %320, !dbg !864
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %323 = icmp slt i32 %322, %283, !dbg !866
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !838
  br i1 %323, label %293, label %325, !dbg !838

; <label>:324:                                    ; preds = %285, %312
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %465

; <label>:325:                                    ; preds = %319
  %326 = zext i16 %278 to i64, !dbg !867
  %327 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %209, i64 %326) #7, !dbg !868
  br label %426

; <label>:328:                                    ; preds = %208
  %329 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 1, !dbg !869
  %330 = bitcast i8** %329 to %struct.ip6_rout_hdr**, !dbg !869
  %331 = load %struct.ip6_rout_hdr*, %struct.ip6_rout_hdr** %330, align 8, !dbg !869, !tbaa !615
  %332 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 0, !dbg !871
  %333 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 1, !dbg !872
  %334 = load i8, i8* %333, align 1, !dbg !872, !tbaa !873
  %335 = zext i8 %334 to i16, !dbg !875
  %336 = shl nuw nsw i16 %335, 3, !dbg !875
  %337 = add nuw nsw i16 %336, 8, !dbg !875
  %338 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 3, !dbg !876
  %339 = load i16, i16* %338, align 2, !dbg !876, !tbaa !634
  %340 = icmp ult i16 %339, 8, !dbg !878
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !879
  br i1 %340, label %343, label %341, !dbg !879

; <label>:341:                                    ; preds = %328
  %342 = icmp ugt i16 %337, %339, !dbg !880
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !881
  br i1 %342, label %343, label %347, !dbg !881

; <label>:343:                                    ; preds = %341, %328
  %344 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !882
  %345 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !884, !tbaa !651
  %346 = add i16 %345, 1, !dbg !884
  store i16 %346, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !884, !tbaa !651
  br label %366, !dbg !885

; <label>:347:                                    ; preds = %341
  %348 = add i16 %337, %212, !dbg !886
  %349 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 3, !dbg !887
  %350 = load i8, i8* %349, align 1, !dbg !887, !tbaa !889
  %351 = icmp eq i8 %350, 0, !dbg !887
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !890
  br i1 %351, label %369, label %352, !dbg !890

; <label>:352:                                    ; preds = %347
  %353 = and i8 %334, 1, !dbg !891
  %354 = icmp eq i8 %353, 0, !dbg !891
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !894
  br i1 %354, label %358, label %355, !dbg !894

; <label>:355:                                    ; preds = %352
  %356 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 1, !dbg !872
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %209, i32 0, i8* nonnull %356) #7, !dbg !895
  %357 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !897
  br label %366, !dbg !898

; <label>:358:                                    ; preds = %352
  %359 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 2, !dbg !899
  %360 = load i8, i8* %359, align 1, !dbg !899, !tbaa !900
  %361 = and i8 %360, -2, !dbg !901
  %362 = icmp eq i8 %361, 2, !dbg !901
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !901
  br i1 %362, label %369, label %363, !dbg !901

; <label>:363:                                    ; preds = %358
  %364 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %331, i64 0, i32 2, !dbg !899
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %209, i32 0, i8* nonnull %364) #7, !dbg !902
  %365 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !904
  br label %366, !dbg !905

; <label>:366:                                    ; preds = %343, %355, %363
  %367 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !906, !tbaa !630
  %368 = add i16 %367, 1, !dbg !906
  store i16 %368, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !906, !tbaa !630
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !906
  br label %465

; <label>:369:                                    ; preds = %358, %347
  %370 = zext i16 %337 to i64, !dbg !907
  %371 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %209, i64 %370) #7, !dbg !908
  br label %426

; <label>:372:                                    ; preds = %208
  %373 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 1, !dbg !909
  %374 = bitcast i8** %373 to %struct.ip6_frag_hdr**, !dbg !909
  %375 = load %struct.ip6_frag_hdr*, %struct.ip6_frag_hdr** %374, align 8, !dbg !909, !tbaa !615
  %376 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %375, i64 0, i32 0, !dbg !911
  %377 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %209, i64 0, i32 3, !dbg !912
  %378 = load i16, i16* %377, align 2, !dbg !912, !tbaa !634
  %379 = icmp ult i16 %378, 8, !dbg !914
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !915
  br i1 %379, label %380, label %384, !dbg !915

; <label>:380:                                    ; preds = %372
  %381 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !916
  %382 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 5), align 2, !dbg !918, !tbaa !919
  %383 = add i16 %382, 1, !dbg !918
  store i16 %383, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 5), align 2, !dbg !918, !tbaa !919
  br label %416, !dbg !920

; <label>:384:                                    ; preds = %372
  %385 = add i16 %212, 8, !dbg !921
  %386 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %375, i64 0, i32 2, !dbg !922
  %387 = load i16, i16* %386, align 1, !dbg !922, !tbaa !924
  %388 = tail call zeroext i16 @lwip_htons(i16 zeroext %387) #7, !dbg !922
  %389 = and i16 %388, 1, !dbg !922
  %390 = icmp eq i16 %389, 0, !dbg !922
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !926
  br i1 %390, label %401, label %391, !dbg !926

; <label>:391:                                    ; preds = %384
  %392 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %210, i64 0, i32 1, !dbg !927
  %393 = load i16, i16* %392, align 1, !dbg !927, !tbaa !639
  %394 = tail call zeroext i16 @lwip_htons(i16 zeroext %393) #7, !dbg !927
  %395 = and i16 %394, 7, !dbg !928
  %396 = icmp eq i16 %395, 0, !dbg !928
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !929
  br i1 %396, label %401, label %397, !dbg !929

; <label>:397:                                    ; preds = %391
  %398 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %210, i64 0, i32 1, !dbg !927
  %399 = bitcast i16* %398 to i8*, !dbg !930
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %209, i32 0, i8* nonnull %399) #7, !dbg !932
  %400 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %209) #7, !dbg !933
  br label %416, !dbg !934

; <label>:401:                                    ; preds = %391, %384
  %402 = load i16, i16* %386, align 1, !dbg !935, !tbaa !924
  %403 = and i16 %402, -1537, !dbg !937
  %404 = icmp eq i16 %403, 0, !dbg !938
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !939
  br i1 %404, label %405, label %407, !dbg !939

; <label>:405:                                    ; preds = %401
  %406 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %209, i64 8) #7, !dbg !940
  br label %421, !dbg !942

; <label>:407:                                    ; preds = %401
  store i16 %385, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !943, !tbaa !945
  %408 = tail call %struct.pbuf* @ip6_reass(%struct.pbuf* nonnull %209) #7, !dbg !946
  %409 = icmp eq %struct.pbuf* %408, null, !dbg !947
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !949
  br i1 %409, label %420, label %410, !dbg !949

; <label>:410:                                    ; preds = %407
  %411 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %408, i64 0, i32 1, !dbg !950
  %412 = bitcast i8** %411 to %struct.ip6_hdr**, !dbg !950
  %413 = load %struct.ip6_hdr*, %struct.ip6_hdr** %412, align 8, !dbg !950, !tbaa !615
  %414 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %413, i64 0, i32 2, !dbg !951
  %415 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %408, i64 40) #7, !dbg !952
  br label %421

; <label>:416:                                    ; preds = %397, %380
  %417 = phi i16* [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), %380 ], [ getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), %397 ]
  %418 = load i16, i16* %417, align 2, !dbg !953, !tbaa !954
  %419 = add i16 %418, 1, !dbg !953
  store i16 %419, i16* %417, align 2, !dbg !953, !tbaa !954
  br label %420, !dbg !955

; <label>:420:                                    ; preds = %407, %416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !955
  br label %465

; <label>:421:                                    ; preds = %405, %410
  %422 = phi i16 [ %385, %405 ], [ 40, %410 ], !dbg !957
  %423 = phi i8* [ %376, %405 ], [ %414, %410 ], !dbg !957
  %424 = phi %struct.ip6_hdr* [ %210, %405 ], [ %413, %410 ], !dbg !957
  %425 = phi %struct.pbuf* [ %209, %405 ], [ %408, %410 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %426

; <label>:426:                                    ; preds = %421, %369, %325, %268
  %427 = phi i16 [ %422, %421 ], [ %348, %369 ], [ %292, %325 ], [ %235, %268 ], !dbg !958
  %428 = phi i8* [ %423, %421 ], [ %332, %369 ], [ %273, %325 ], [ %216, %268 ], !dbg !959
  %429 = phi %struct.ip6_hdr* [ %424, %421 ], [ %210, %369 ], [ %210, %325 ], [ %210, %268 ], !dbg !960
  %430 = phi %struct.pbuf* [ %425, %421 ], [ %209, %369 ], [ %209, %325 ], [ %209, %268 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !959
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %431 = load i8, i8* %428, align 1, !dbg !961, !tbaa !367
  %432 = icmp eq i8 %431, 0, !dbg !963
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !964
  br i1 %432, label %433, label %206, !dbg !964, !llvm.loop !759

; <label>:433:                                    ; preds = %426
  tail call void @icmp6_param_problem(%struct.pbuf* %430, i32 1, i8* nonnull %428) #7, !dbg !965
  %434 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %430) #7, !dbg !967
  %435 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !968, !tbaa !630
  %436 = add i16 %435, 1, !dbg !968
  store i16 %436, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !968, !tbaa !630
  br label %465, !dbg !969

; <label>:437:                                    ; preds = %208, %206, %201
  %438 = phi i16 [ 40, %201 ], [ %212, %208 ], [ %427, %206 ], !dbg !958
  %439 = phi i8* [ %202, %201 ], [ %211, %208 ], [ %428, %206 ], !dbg !970
  %440 = phi %struct.ip6_hdr* [ %7, %201 ], [ %210, %208 ], [ %429, %206 ], !dbg !960
  %441 = phi %struct.pbuf* [ %0, %201 ], [ %209, %208 ], [ %430, %206 ]
  store i16 %438, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !971, !tbaa !945
  %442 = load i8, i8* %439, align 1, !dbg !972, !tbaa !367
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !974
  switch i8 %442, label %448 [
    i8 59, label %443
    i8 17, label %445
    i8 6, label %446
    i8 58, label %447
  ], !dbg !974

; <label>:443:                                    ; preds = %437
  %444 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %441) #7, !dbg !975
  br label %465, !dbg !977

; <label>:445:                                    ; preds = %437
  tail call void @udp_input(%struct.pbuf* %441, %struct.netif* %1) #7, !dbg !978
  br label %465, !dbg !979

; <label>:446:                                    ; preds = %437
  tail call void @tcp_input(%struct.pbuf* %441, %struct.netif* %1) #7, !dbg !980
  br label %465, !dbg !981

; <label>:447:                                    ; preds = %437
  tail call void @icmp6_input(%struct.pbuf* %441, %struct.netif* %1) #7, !dbg !982
  br label %465, !dbg !983

; <label>:448:                                    ; preds = %437
  %449 = zext i16 %438 to i64, !dbg !984
  %450 = tail call zeroext i8 @pbuf_add_header_force(%struct.pbuf* %441, i64 %449) #7, !dbg !986
  %451 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !987, !tbaa !367
  %452 = and i32 %451, 255, !dbg !987
  %453 = icmp eq i32 %452, 255, !dbg !987
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !989
  br i1 %453, label %459, label %454, !dbg !989

; <label>:454:                                    ; preds = %448
  %455 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %440, i64 0, i32 2, !dbg !990
  %456 = load i8, i8* %455, align 1, !dbg !990, !tbaa !991
  %457 = icmp eq i8 %456, 58, !dbg !992
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !993
  br i1 %457, label %459, label %458, !dbg !993

; <label>:458:                                    ; preds = %454
  tail call void @icmp6_param_problem(%struct.pbuf* %441, i32 1, i8* nonnull %439) #7, !dbg !994
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !996
  br label %459, !dbg !996

; <label>:459:                                    ; preds = %454, %458, %448
  %460 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 8), align 2, !dbg !997, !tbaa !998
  %461 = add i16 %460, 1, !dbg !997
  store i16 %461, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 8), align 2, !dbg !997, !tbaa !998
  %462 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !999, !tbaa !630
  %463 = add i16 %462, 1, !dbg !999
  store i16 %463, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !999, !tbaa !630
  %464 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %441) #7, !dbg !1000
  br label %465, !dbg !1001

; <label>:465:                                    ; preds = %420, %366, %324, %267, %443, %445, %446, %447, %459, %433, %199, %193
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store <2 x %struct.netif*> zeroinitializer, <2 x %struct.netif*>* bitcast (%struct.ip_globals* @ip_data to <2 x %struct.netif*>*), align 8, !dbg !1002, !tbaa !273
  store %struct.ip6_hdr* null, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !1003, !tbaa !685
  store i16 0, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !1004, !tbaa !945
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !1005, !tbaa !367
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !1005, !tbaa !367
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !1007, !tbaa !367
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !1007, !tbaa !367
  br label %466, !dbg !1009

; <label>:466:                                    ; preds = %465, %73, %33, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1010
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1011
  ret i8 0, !dbg !1011
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_free(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @lwip_htons(i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @pbuf_realloc(%struct.pbuf*, i16 zeroext) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.mld_group* @mld6_lookfor_group(%struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal fastcc i32 @ip6_input_accept(%struct.netif* nocapture readonly) unnamed_addr #0 !dbg !1012 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !1021
  %3 = load i8, i8* %2, align 1, !dbg !1021, !tbaa !289
  %4 = and i8 %3, 1, !dbg !1021
  %5 = icmp eq i8 %4, 0, !dbg !1021
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1022
  br i1 %5, label %43, label %6, !dbg !1022

; <label>:6:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1024
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %7 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !1027
  %13 = load i8, i8* %12, align 1, !dbg !1027, !tbaa !367
  %14 = and i8 %13, 16, !dbg !1027
  %15 = icmp eq i8 %14, 0, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %15, label %36, label %16, !dbg !1031

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1032
  %18 = load i32, i32* %17, align 8, !dbg !1032, !tbaa !367
  %19 = icmp eq i32 %7, %18, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %19, label %20, label %36, !dbg !1032

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1032
  %22 = load i32, i32* %21, align 4, !dbg !1032, !tbaa !367
  %23 = icmp eq i32 %8, %22, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %23, label %24, label %36, !dbg !1032

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1032
  %26 = load i32, i32* %25, align 8, !dbg !1032, !tbaa !367
  %27 = icmp eq i32 %9, %26, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %27, label %28, label %36, !dbg !1032

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1032
  %30 = load i32, i32* %29, align 4, !dbg !1032, !tbaa !367
  %31 = icmp eq i32 %10, %30, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %31, label %32, label %36, !dbg !1032

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !1032
  %34 = load i8, i8* %33, align 8, !dbg !1032, !tbaa !367
  %35 = icmp eq i8 %11, %34, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %35, label %41, label %36, !dbg !1033

; <label>:36:                                     ; preds = %6, %16, %20, %24, %28, %32
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !1027
  %38 = load i8, i8* %37, align 1, !dbg !1027, !tbaa !367
  %39 = and i8 %38, 16, !dbg !1027
  %40 = icmp eq i8 %39, 0, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %40, label %65, label %45, !dbg !1031

; <label>:41:                                     ; preds = %32, %61, %86, %90
  %42 = phi i32 [ 0, %90 ], [ 1, %86 ], [ 1, %61 ], [ 1, %32 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  br label %43

; <label>:43:                                     ; preds = %41, %1
  %44 = phi i32 [ 0, %1 ], [ %42, %41 ], !dbg !1035
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1037
  ret i32 %44, !dbg !1037

; <label>:45:                                     ; preds = %36
  %46 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !1032
  %47 = load i32, i32* %46, align 8, !dbg !1032, !tbaa !367
  %48 = icmp eq i32 %7, %47, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %48, label %49, label %65, !dbg !1032

; <label>:49:                                     ; preds = %45
  %50 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !1032
  %51 = load i32, i32* %50, align 4, !dbg !1032, !tbaa !367
  %52 = icmp eq i32 %8, %51, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %52, label %53, label %65, !dbg !1032

; <label>:53:                                     ; preds = %49
  %54 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !1032
  %55 = load i32, i32* %54, align 8, !dbg !1032, !tbaa !367
  %56 = icmp eq i32 %9, %55, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %56, label %57, label %65, !dbg !1032

; <label>:57:                                     ; preds = %53
  %58 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !1032
  %59 = load i32, i32* %58, align 4, !dbg !1032, !tbaa !367
  %60 = icmp eq i32 %10, %59, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %60, label %61, label %65, !dbg !1032

; <label>:61:                                     ; preds = %57
  %62 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !1032
  %63 = load i8, i8* %62, align 8, !dbg !1032, !tbaa !367
  %64 = icmp eq i8 %11, %63, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %64, label %41, label %65, !dbg !1033

; <label>:65:                                     ; preds = %61, %57, %53, %49, %45, %36
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  %66 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !1027
  %67 = load i8, i8* %66, align 1, !dbg !1027, !tbaa !367
  %68 = and i8 %67, 16, !dbg !1027
  %69 = icmp eq i8 %68, 0, !dbg !1027
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1031
  br i1 %69, label %90, label %70, !dbg !1031

; <label>:70:                                     ; preds = %65
  %71 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !1032
  %72 = load i32, i32* %71, align 8, !dbg !1032, !tbaa !367
  %73 = icmp eq i32 %7, %72, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %73, label %74, label %90, !dbg !1032

; <label>:74:                                     ; preds = %70
  %75 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !1032
  %76 = load i32, i32* %75, align 4, !dbg !1032, !tbaa !367
  %77 = icmp eq i32 %8, %76, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %77, label %78, label %90, !dbg !1032

; <label>:78:                                     ; preds = %74
  %79 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !1032
  %80 = load i32, i32* %79, align 8, !dbg !1032, !tbaa !367
  %81 = icmp eq i32 %9, %80, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %81, label %82, label %90, !dbg !1032

; <label>:82:                                     ; preds = %78
  %83 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !1032
  %84 = load i32, i32* %83, align 4, !dbg !1032, !tbaa !367
  %85 = icmp eq i32 %10, %84, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1032
  br i1 %85, label %86, label %90, !dbg !1032

; <label>:86:                                     ; preds = %82
  %87 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !1032
  %88 = load i8, i8* %87, align 8, !dbg !1032, !tbaa !367
  %89 = icmp eq i8 %11, %88, !dbg !1032
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1033
  br i1 %89, label %41, label %90, !dbg !1033

; <label>:90:                                     ; preds = %86, %82, %78, %74, %70, %65
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1034
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1026
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1038
  br label %41
}

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_remove_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @icmp6_param_problem(%struct.pbuf*, i32, i8*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.pbuf* @ip6_reass(%struct.pbuf*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @udp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @tcp_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local void @icmp6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header_force(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr* readonly, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !1039 {
  %8 = icmp ne %struct.ip6_addr* %2, null, !dbg !1059
  %9 = icmp ne %struct.ip6_addr* %1, null, !dbg !1061
  %10 = and i1 %9, %8, !dbg !1064
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1064
  br i1 %10, label %11, label %50, !dbg !1064

; <label>:11:                                     ; preds = %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1065
  %13 = load i32, i32* %12, align 4, !dbg !1065, !tbaa !322
  %14 = icmp eq i32 %13, 0, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %14, label %15, label %50, !dbg !1065

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1065
  %17 = load i32, i32* %16, align 4, !dbg !1065, !tbaa !322
  %18 = icmp eq i32 %17, 0, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %18, label %19, label %50, !dbg !1065

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1065
  %21 = load i32, i32* %20, align 4, !dbg !1065, !tbaa !322
  %22 = icmp eq i32 %21, 0, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1065
  br i1 %22, label %23, label %50, !dbg !1065

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1065
  %25 = load i32, i32* %24, align 4, !dbg !1065, !tbaa !322
  %26 = icmp eq i32 %25, 0, !dbg !1065
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1066
  br i1 %26, label %27, label %50, !dbg !1066

; <label>:27:                                     ; preds = %23
  %28 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* %6, %struct.ip6_addr* nonnull %2) #8, !dbg !1067
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, !dbg !1067
  %30 = icmp eq %struct.ip_addr* %28, null, !dbg !1069
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1071
  br i1 %30, label %47, label %31, !dbg !1071

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1072
  %33 = load i32, i32* %32, align 4, !dbg !1072, !tbaa !322
  %34 = icmp eq i32 %33, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %34, label %35, label %50, !dbg !1072

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1072
  %37 = load i32, i32* %36, align 4, !dbg !1072, !tbaa !322
  %38 = icmp eq i32 %37, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %38, label %39, label %50, !dbg !1072

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1072
  %41 = load i32, i32* %40, align 4, !dbg !1072, !tbaa !322
  %42 = icmp eq i32 %41, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1072
  br i1 %42, label %43, label %50, !dbg !1072

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1072
  %45 = load i32, i32* %44, align 4, !dbg !1072, !tbaa !322
  %46 = icmp eq i32 %45, 0, !dbg !1072
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1073
  br i1 %46, label %47, label %50, !dbg !1073

; <label>:47:                                     ; preds = %43, %27
  %48 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1074, !tbaa !1076
  %49 = add i16 %48, 1, !dbg !1074
  store i16 %49, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1074, !tbaa !1076
  br label %53, !dbg !1077

; <label>:50:                                     ; preds = %11, %15, %19, %23, %43, %39, %35, %31, %7
  %51 = phi %struct.ip6_addr* [ %29, %43 ], [ %29, %39 ], [ %29, %35 ], [ %29, %31 ], [ %1, %23 ], [ %1, %19 ], [ %1, %15 ], [ %1, %11 ], [ %1, %7 ], !dbg !1078
  %52 = tail call signext i8 @ip6_output_if_src(%struct.pbuf* %0, %struct.ip6_addr* %51, %struct.ip6_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* %6) #8, !dbg !1079
  br label %53, !dbg !1080

; <label>:53:                                     ; preds = %50, %47
  %54 = phi i8 [ -4, %47 ], [ %52, %50 ], !dbg !1078
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1081
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1082
  ret i8 %54, !dbg !1082
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_output_if_src(%struct.pbuf*, %struct.ip6_addr* readonly, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !1083 {
  %8 = alloca %struct.ip6_addr, align 16
  %9 = bitcast %struct.ip6_addr* %8 to i8*, !dbg !1101
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1101
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1102
  %11 = load i8, i8* %10, align 2, !dbg !1102, !tbaa !1105
  %12 = icmp eq i8 %11, 1, !dbg !1102
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1106
  br i1 %12, label %14, label %13, !dbg !1106

; <label>:13:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1107
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1110
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1110
  unreachable

; <label>:14:                                     ; preds = %7
  %15 = icmp eq %struct.ip6_addr* %2, null, !dbg !1114
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1116
  br i1 %15, label %110, label %16, !dbg !1116

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !1117
  %18 = load i8, i8* %17, align 4, !dbg !1117, !tbaa !294
  %19 = icmp eq i8 %18, 0, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %19, label %20, label %54, !dbg !1117

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !1117
  %22 = load i32, i32* %21, align 4, !dbg !1117, !tbaa !322
  %23 = zext i32 %22 to i64, !dbg !1117
  %24 = and i64 %23, 49407, !dbg !1117
  %25 = icmp eq i64 %24, 33022, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %25, label %31, label %26, !dbg !1117

; <label>:26:                                     ; preds = %20
  %27 = and i64 %23, 36863, !dbg !1117
  %28 = icmp eq i64 %27, 511, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1117
  br i1 %28, label %31, label %29, !dbg !1117

; <label>:29:                                     ; preds = %26
  %30 = icmp eq i64 %27, 767, !dbg !1117
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1120
  br i1 %30, label %31, label %54, !dbg !1120

; <label>:31:                                     ; preds = %20, %26, %29
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 0, !dbg !1121
  store i32 %22, i32* %32, align 16, !dbg !1121, !tbaa !322
  %33 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1, !dbg !1121
  %34 = load i32, i32* %33, align 4, !dbg !1121, !tbaa !322
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 1, !dbg !1121
  store i32 %34, i32* %35, align 4, !dbg !1121, !tbaa !322
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !1121
  %37 = load i32, i32* %36, align 4, !dbg !1121, !tbaa !322
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 2, !dbg !1121
  store i32 %37, i32* %38, align 8, !dbg !1121, !tbaa !322
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !1121
  %40 = load i32, i32* %39, align 4, !dbg !1121, !tbaa !322
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 3, !dbg !1121
  store i32 %40, i32* %41, align 4, !dbg !1121, !tbaa !322
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1121
  store i8 0, i8* %42, align 16, !dbg !1121, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %25, label %48, label %43, !dbg !1124

; <label>:43:                                     ; preds = %31
  %44 = and i64 %23, 36863, !dbg !1124
  %45 = icmp eq i64 %44, 511, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %45, label %48, label %46, !dbg !1124

; <label>:46:                                     ; preds = %43
  %47 = icmp eq i64 %44, 767, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br i1 %47, label %48, label %52, !dbg !1124

; <label>:48:                                     ; preds = %46, %43, %31
  %49 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 23, !dbg !1124
  %50 = load i8, i8* %49, align 8, !dbg !1124, !tbaa !298
  %51 = add i8 %50, 1, !dbg !1124
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1124
  br label %52, !dbg !1124

; <label>:52:                                     ; preds = %46, %48
  %53 = phi i8 [ %51, %48 ], [ 0, %46 ]
  store i8 %53, i8* %42, align 16, !dbg !1124, !tbaa !294
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1125
  br label %54, !dbg !1125

; <label>:54:                                     ; preds = %16, %52, %29
  %55 = phi %struct.ip6_addr* [ %2, %16 ], [ %8, %52 ], [ %2, %29 ]
  %56 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %0, i64 40) #7, !dbg !1126
  %57 = icmp eq i8 %56, 0, !dbg !1126
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1128
  br i1 %57, label %61, label %58, !dbg !1128

; <label>:58:                                     ; preds = %54
  %59 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1129, !tbaa !628
  %60 = add i16 %59, 1, !dbg !1129
  store i16 %60, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1129, !tbaa !628
  br label %152, !dbg !1131

; <label>:61:                                     ; preds = %54
  %62 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1132
  %63 = bitcast i8** %62 to %struct.ip6_hdr**, !dbg !1132
  %64 = load %struct.ip6_hdr*, %struct.ip6_hdr** %63, align 8, !dbg !1132, !tbaa !615
  %65 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1134
  %66 = load i16, i16* %65, align 2, !dbg !1134, !tbaa !634
  %67 = icmp ugt i16 %66, 39, !dbg !1134
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1137
  br i1 %67, label %69, label %68, !dbg !1137

; <label>:68:                                     ; preds = %61
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1138
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1141
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1141
  unreachable

; <label>:69:                                     ; preds = %61
  %70 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 3, !dbg !1145
  store i8 %3, i8* %70, align 1, !dbg !1145, !tbaa !1146
  %71 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 2, !dbg !1147
  store i8 %5, i8* %71, align 1, !dbg !1147, !tbaa !991
  %72 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %55, i64 0, i32 0, i64 0, !dbg !1148
  %73 = load i32, i32* %72, align 4, !dbg !1148, !tbaa !322
  %74 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 5, i32 0, i64 0, !dbg !1148
  store i32 %73, i32* %74, align 1, !dbg !1148, !tbaa !322
  %75 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %55, i64 0, i32 0, i64 1, !dbg !1148
  %76 = load i32, i32* %75, align 4, !dbg !1148, !tbaa !322
  %77 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 5, i32 0, i64 1, !dbg !1148
  store i32 %76, i32* %77, align 1, !dbg !1148, !tbaa !322
  %78 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %55, i64 0, i32 0, i64 2, !dbg !1148
  %79 = load i32, i32* %78, align 4, !dbg !1148, !tbaa !322
  %80 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 5, i32 0, i64 2, !dbg !1148
  store i32 %79, i32* %80, align 1, !dbg !1148, !tbaa !322
  %81 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %55, i64 0, i32 0, i64 3, !dbg !1148
  %82 = load i32, i32* %81, align 4, !dbg !1148, !tbaa !322
  %83 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 5, i32 0, i64 3, !dbg !1148
  store i32 %82, i32* %83, align 1, !dbg !1148, !tbaa !322
  %84 = zext i8 %4 to i32, !dbg !1150
  %85 = shl nuw nsw i32 %84, 20, !dbg !1150
  %86 = or i32 %85, 1610612736, !dbg !1150
  %87 = tail call i32 @lwip_htonl(i32 %86) #7, !dbg !1150
  %88 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 0, !dbg !1150
  store i32 %87, i32* %88, align 1, !dbg !1150, !tbaa !620
  %89 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1151
  %90 = load i16, i16* %89, align 8, !dbg !1151, !tbaa !641
  %91 = add i16 %90, -40, !dbg !1151
  %92 = tail call zeroext i16 @lwip_htons(i16 zeroext %91) #7, !dbg !1151
  %93 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 1, !dbg !1151
  store i16 %92, i16* %93, align 1, !dbg !1151, !tbaa !639
  %94 = icmp eq %struct.ip6_addr* %1, null, !dbg !1152
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1154
  br i1 %94, label %95, label %96, !dbg !1154

; <label>:95:                                     ; preds = %69
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1155
  br label %96, !dbg !1155

; <label>:96:                                     ; preds = %69, %95
  %97 = phi %struct.ip6_addr* [ getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %95 ], [ %1, %69 ]
  %98 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %97, i64 0, i32 0, i64 0, !dbg !1157
  %99 = load i32, i32* %98, align 4, !dbg !1157, !tbaa !322
  %100 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 4, i32 0, i64 0, !dbg !1157
  store i32 %99, i32* %100, align 1, !dbg !1157, !tbaa !322
  %101 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %97, i64 0, i32 0, i64 1, !dbg !1157
  %102 = load i32, i32* %101, align 4, !dbg !1157, !tbaa !322
  %103 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 4, i32 0, i64 1, !dbg !1157
  store i32 %102, i32* %103, align 1, !dbg !1157, !tbaa !322
  %104 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %97, i64 0, i32 0, i64 2, !dbg !1157
  %105 = load i32, i32* %104, align 4, !dbg !1157, !tbaa !322
  %106 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 4, i32 0, i64 2, !dbg !1157
  store i32 %105, i32* %106, align 1, !dbg !1157, !tbaa !322
  %107 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %97, i64 0, i32 0, i64 3, !dbg !1157
  %108 = load i32, i32* %107, align 4, !dbg !1157, !tbaa !322
  %109 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %64, i64 0, i32 4, i32 0, i64 3, !dbg !1157
  store i32 %108, i32* %109, align 1, !dbg !1157, !tbaa !322
  br label %134, !dbg !1159

; <label>:110:                                    ; preds = %14
  %111 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1160
  %112 = bitcast i8** %111 to %struct.ip6_hdr**, !dbg !1160
  %113 = load %struct.ip6_hdr*, %struct.ip6_hdr** %112, align 8, !dbg !1160, !tbaa !615
  %114 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %113, i64 0, i32 5, i32 0, i64 0, !dbg !1162
  %115 = bitcast i32* %114 to <4 x i32>*, !dbg !1162
  %116 = load <4 x i32>, <4 x i32>* %115, align 1, !dbg !1162, !tbaa !322
  %117 = bitcast %struct.ip6_addr* %8 to <4 x i32>*, !dbg !1162
  store <4 x i32> %116, <4 x i32>* %117, align 16, !dbg !1162, !tbaa !322
  %118 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1162
  store i8 0, i8* %118, align 16, !dbg !1162, !tbaa !294
  %119 = extractelement <4 x i32> %116, i32 0, !dbg !1164
  %120 = zext i32 %119 to i64, !dbg !1164
  %121 = and i64 %120, 49407, !dbg !1164
  %122 = icmp eq i64 %121, 33022, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %122, label %128, label %123, !dbg !1164

; <label>:123:                                    ; preds = %110
  %124 = and i64 %120, 36863, !dbg !1164
  %125 = icmp eq i64 %124, 511, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %125, label %128, label %126, !dbg !1164

; <label>:126:                                    ; preds = %123
  %127 = icmp eq i64 %124, 767, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br i1 %127, label %128, label %132, !dbg !1164

; <label>:128:                                    ; preds = %126, %123, %110
  %129 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 23, !dbg !1164
  %130 = load i8, i8* %129, align 8, !dbg !1164, !tbaa !298
  %131 = add i8 %130, 1, !dbg !1164
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1164
  br label %132, !dbg !1164

; <label>:132:                                    ; preds = %126, %128
  %133 = phi i8 [ %131, %128 ], [ 0, %126 ]
  store i8 %133, i8* %118, align 16, !dbg !1164, !tbaa !294
  br label %134

; <label>:134:                                    ; preds = %132, %96
  %135 = phi %struct.ip6_addr* [ %55, %96 ], [ %8, %132 ]
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %136 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 0), align 2, !dbg !1165, !tbaa !1166
  %137 = add i16 %136, 1, !dbg !1165
  store i16 %137, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 0), align 2, !dbg !1165, !tbaa !1166
  %138 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 18, !dbg !1167
  %139 = load i16, i16* %138, align 4, !dbg !1167, !tbaa !1169
  %140 = icmp eq i16 %139, 0, !dbg !1167
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1170
  br i1 %140, label %148, label %141, !dbg !1170

; <label>:141:                                    ; preds = %134
  %142 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1171
  %143 = load i16, i16* %142, align 8, !dbg !1171, !tbaa !641
  %144 = call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %135, %struct.netif* nonnull %6) #7, !dbg !1172
  %145 = icmp ugt i16 %143, %144, !dbg !1173
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1174
  br i1 %145, label %146, label %148, !dbg !1174

; <label>:146:                                    ; preds = %141
  %147 = call signext i8 @ip6_frag(%struct.pbuf* nonnull %0, %struct.netif* nonnull %6, %struct.ip6_addr* nonnull %135) #7, !dbg !1175
  br label %152, !dbg !1177

; <label>:148:                                    ; preds = %134, %141
  %149 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 11, !dbg !1178
  %150 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %149, align 8, !dbg !1178, !tbaa !1179
  %151 = call signext i8 %150(%struct.netif* nonnull %6, %struct.pbuf* nonnull %0, %struct.ip6_addr* nonnull %135) #7, !dbg !1180
  br label %152, !dbg !1181

; <label>:152:                                    ; preds = %148, %146, %58
  %153 = phi i8 [ -2, %58 ], [ %147, %146 ], [ %151, %148 ], !dbg !1182
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1183
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1184
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1184
  ret i8 %153, !dbg !1184
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1186
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1186
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1188
  call void @llvm.va_start(i8* nonnull %3), !dbg !1188
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !1189
  call void @llvm.va_end(i8* nonnull %3), !dbg !1192
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1193
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1193
  ret void, !dbg !1193
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: noredzone
declare dso_local zeroext i8 @pbuf_add_header(%struct.pbuf*, i64) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr*, %struct.netif*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local signext i8 @ip6_frag(%struct.pbuf*, %struct.netif*, %struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_output(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1194 {
  %7 = alloca %struct.ip6_addr, align 16
  %8 = alloca %struct.ip6_addr, align 16
  %9 = bitcast %struct.ip6_addr* %7 to i8*, !dbg !1214
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1214
  %10 = bitcast %struct.ip6_addr* %8 to i8*, !dbg !1214
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #6, !dbg !1214
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1215
  %12 = load i8, i8* %11, align 2, !dbg !1215, !tbaa !1105
  %13 = icmp eq i8 %12, 1, !dbg !1215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1218
  br i1 %13, label %15, label %14, !dbg !1218

; <label>:14:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1219
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1222
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1222
  unreachable

; <label>:15:                                     ; preds = %6
  %16 = icmp eq %struct.ip6_addr* %2, null, !dbg !1226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1228
  br i1 %16, label %19, label %17, !dbg !1228

; <label>:17:                                     ; preds = %15
  %18 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %1, %struct.ip6_addr* nonnull %2) #8, !dbg !1229
  br label %34, !dbg !1232

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1233
  %21 = bitcast i8** %20 to %struct.ip6_hdr**, !dbg !1233
  %22 = load %struct.ip6_hdr*, %struct.ip6_hdr** %21, align 8, !dbg !1233, !tbaa !615
  %23 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %22, i64 0, i32 4, i32 0, i64 0, !dbg !1236
  %24 = bitcast i32* %23 to <4 x i32>*, !dbg !1236
  %25 = load <4 x i32>, <4 x i32>* %24, align 1, !dbg !1236, !tbaa !322
  %26 = bitcast %struct.ip6_addr* %7 to <4 x i32>*, !dbg !1236
  store <4 x i32> %25, <4 x i32>* %26, align 16, !dbg !1236, !tbaa !322
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %7, i64 0, i32 1, !dbg !1236
  store i8 0, i8* %27, align 16, !dbg !1236, !tbaa !294
  %28 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %22, i64 0, i32 5, i32 0, i64 0, !dbg !1238
  %29 = bitcast i32* %28 to <4 x i32>*, !dbg !1238
  %30 = load <4 x i32>, <4 x i32>* %29, align 1, !dbg !1238, !tbaa !322
  %31 = bitcast %struct.ip6_addr* %8 to <4 x i32>*, !dbg !1238
  store <4 x i32> %30, <4 x i32>* %31, align 16, !dbg !1238, !tbaa !322
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1238
  store i8 0, i8* %32, align 16, !dbg !1238, !tbaa !294
  %33 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %7, %struct.ip6_addr* nonnull %8) #8, !dbg !1242
  br label %34

; <label>:34:                                     ; preds = %19, %17
  %35 = phi %struct.netif* [ %18, %17 ], [ %33, %19 ], !dbg !1243
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %36 = icmp eq %struct.netif* %35, null, !dbg !1244
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1246
  br i1 %36, label %37, label %40, !dbg !1246

; <label>:37:                                     ; preds = %34
  %38 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1247, !tbaa !1076
  %39 = add i16 %38, 1, !dbg !1247
  store i16 %39, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1247, !tbaa !1076
  br label %42, !dbg !1249

; <label>:40:                                     ; preds = %34
  %41 = call signext i8 @ip6_output_if(%struct.pbuf* nonnull %0, %struct.ip6_addr* %1, %struct.ip6_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* nonnull %35) #8, !dbg !1250
  br label %42, !dbg !1251

; <label>:42:                                     ; preds = %40, %37
  %43 = phi i8 [ -4, %37 ], [ %41, %40 ], !dbg !1252
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1253
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #6, !dbg !1254
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1254
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1254
  ret i8 %43, !dbg !1254
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_options_add_hbh_ra(%struct.pbuf*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1255 {
  %4 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* %0, i64 8) #7, !dbg !1272
  %5 = icmp eq i8 %4, 0, !dbg !1272
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1274
  br i1 %5, label %9, label %6, !dbg !1274

; <label>:6:                                      ; preds = %3
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1275, !tbaa !628
  %8 = add i16 %7, 1, !dbg !1275
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1275, !tbaa !628
  br label %19, !dbg !1277

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1278
  %11 = load i8*, i8** %10, align 8, !dbg !1278, !tbaa !615
  store i8 %1, i8* %11, align 1, !dbg !1280, !tbaa !1281
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1282
  store i8 0, i8* %12, align 1, !dbg !1283, !tbaa !765
  %13 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1284
  store i8 5, i8* %13, align 1, !dbg !1286, !tbaa !788
  %14 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !1287
  store i8 2, i8* %14, align 1, !dbg !1288, !tbaa !809
  %15 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1289
  store i8 %2, i8* %15, align 1, !dbg !1291, !tbaa !367
  %16 = getelementptr inbounds i8, i8* %11, i64 5, !dbg !1292
  store i8 0, i8* %16, align 1, !dbg !1293, !tbaa !367
  %17 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !1294
  store i8 1, i8* %17, align 1, !dbg !1295, !tbaa !788
  %18 = getelementptr inbounds i8, i8* %11, i64 7, !dbg !1296
  store i8 0, i8* %18, align 1, !dbg !1297, !tbaa !809
  br label %19, !dbg !1298

; <label>:19:                                     ; preds = %9, %6
  %20 = phi i8 [ -2, %6 ], [ 0, %9 ], !dbg !1299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1300
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1301
  ret i8 %20, !dbg !1301
}

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
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }

!llvm.module.flags = !{!174, !175, !176}
!llvm.ident = !{!177}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !171, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !156)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !58, globals: !150)
!10 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/ipv6/ip6.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !18, !39, !45, !51}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "netif_mac_filter_action", file: !13, line: 156, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/netif.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17}
!16 = !DIEnumerator(name: "NETIF_DEL_MAC_FILTER", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "NETIF_ADD_MAC_FILTER", value: 1, isUnsigned: true)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !19, line: 53, baseType: !20, size: 32, elements: !21)
!19 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38}
!22 = !DIEnumerator(name: "ERR_OK", value: 0)
!23 = !DIEnumerator(name: "ERR_MEM", value: -1)
!24 = !DIEnumerator(name: "ERR_BUF", value: -2)
!25 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!26 = !DIEnumerator(name: "ERR_RTE", value: -4)
!27 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!28 = !DIEnumerator(name: "ERR_VAL", value: -6)
!29 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!30 = !DIEnumerator(name: "ERR_USE", value: -8)
!31 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!32 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!33 = !DIEnumerator(name: "ERR_CONN", value: -11)
!34 = !DIEnumerator(name: "ERR_IF", value: -12)
!35 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!36 = !DIEnumerator(name: "ERR_RST", value: -14)
!37 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!38 = !DIEnumerator(name: "ERR_ARG", value: -16)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "lwip_ip_addr_type", file: !40, line: 54, baseType: !14, size: 32, elements: !41)
!40 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip_addr.h", directory: "/root/.unikraft/apps/redis/build")
!41 = !{!42, !43, !44}
!42 = !DIEnumerator(name: "IPADDR_TYPE_V4", value: 0, isUnsigned: true)
!43 = !DIEnumerator(name: "IPADDR_TYPE_V6", value: 6, isUnsigned: true)
!44 = !DIEnumerator(name: "IPADDR_TYPE_ANY", value: 46, isUnsigned: true)
!45 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "icmp6_pp_code", file: !46, line: 124, baseType: !14, size: 32, elements: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/icmp6.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !{!48, !49, !50}
!48 = !DIEnumerator(name: "ICMP6_PP_FIELD", value: 0, isUnsigned: true)
!49 = !DIEnumerator(name: "ICMP6_PP_HEADER", value: 1, isUnsigned: true)
!50 = !DIEnumerator(name: "ICMP6_PP_OPTION", value: 2, isUnsigned: true)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !52, line: 68, baseType: !14, size: 32, elements: !53)
!52 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !{!54, !55, !56, !57}
!54 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!55 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!56 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!57 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!58 = !{!59, !60, !67, !70, !81, !97, !103, !115, !120, !125, !126, !131, !138, !145, !147}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !61, line: 125, baseType: !62)
!61 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !63, line: 24, baseType: !64)
!63 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !65, line: 43, baseType: !66)
!65 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !61, line: 129, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !63, line: 48, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !65, line: 79, baseType: !14)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_t", file: !73, line: 67, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip6_addr.h", directory: "/root/.unikraft/apps/redis/build")
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr", file: !73, line: 59, size: 160, elements: !75)
!75 = !{!76, !80}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !74, file: !73, line: 60, baseType: !77, size: 128)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 128, elements: !78)
!78 = !{!79}
!79 = !DISubrange(count: 4)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "zone", scope: !74, file: !73, line: 62, baseType: !60, size: 8, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_addr_t", file: !40, line: 76, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_addr", file: !40, line: 69, size: 192, elements: !85)
!85 = !{!86, !96}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "u_addr", scope: !84, file: !40, line: 73, baseType: !87, size: 160)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !40, line: 70, size: 160, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "ip6", scope: !87, file: !40, line: 71, baseType: !72, size: 160)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "ip4", scope: !87, file: !40, line: 72, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip4_addr_t", file: !92, line: 57, baseType: !93)
!92 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/ip4_addr.h", directory: "/root/.unikraft/apps/redis/build")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip4_addr", file: !92, line: 51, size: 32, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !93, file: !92, line: 52, baseType: !67, size: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !84, file: !40, line: 75, baseType: !60, size: 8, offset: 160)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hdr", file: !99, line: 80, size: 320, elements: !100)
!99 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/prot/ip6.h", directory: "/root/.unikraft/apps/redis/build")
!100 = !{!101, !102, !107, !108, !109, !114}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "_v_tc_fl", scope: !98, file: !99, line: 82, baseType: !67, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "_plen", scope: !98, file: !99, line: 84, baseType: !103, size: 16, offset: 32)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !61, line: 127, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !63, line: 36, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !65, line: 57, baseType: !106)
!106 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !98, file: !99, line: 86, baseType: !60, size: 8, offset: 48)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "_hoplim", scope: !98, file: !99, line: 88, baseType: !60, size: 8, offset: 56)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !98, file: !99, line: 90, baseType: !110, size: 128, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip6_addr_p_t", file: !99, line: 60, baseType: !111)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_addr_packed", file: !99, line: 53, size: 128, elements: !112)
!112 = !{!113}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !111, file: !99, line: 54, baseType: !77, size: 128)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "dest", scope: !98, file: !99, line: 91, baseType: !110, size: 128, offset: 192)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_hbh_hdr", file: !99, line: 145, size: 16, elements: !117)
!117 = !{!118, !119}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !116, file: !99, line: 147, baseType: !60, size: 8)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "_hlen", scope: !116, file: !99, line: 149, baseType: !60, size: 8, offset: 8)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_opt_hdr", file: !99, line: 122, size: 16, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "_opt_type", scope: !121, file: !99, line: 124, baseType: !60, size: 8)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "_opt_dlen", scope: !121, file: !99, line: 126, baseType: !60, size: 8, offset: 8)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_dest_hdr", file: !99, line: 164, size: 16, elements: !128)
!128 = !{!129, !130}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !127, file: !99, line: 166, baseType: !60, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "_hlen", scope: !127, file: !99, line: 168, baseType: !60, size: 8, offset: 8)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_rout_hdr", file: !99, line: 184, size: 32, elements: !133)
!133 = !{!134, !135, !136, !137}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !132, file: !99, line: 186, baseType: !60, size: 8)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "_hlen", scope: !132, file: !99, line: 188, baseType: !60, size: 8, offset: 8)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "_routing_type", scope: !132, file: !99, line: 190, baseType: !60, size: 8, offset: 16)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "_segments_left", scope: !132, file: !99, line: 192, baseType: !60, size: 8, offset: 24)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip6_frag_hdr", file: !99, line: 211, size: 64, elements: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "_nexth", scope: !139, file: !99, line: 213, baseType: !60, size: 8)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !139, file: !99, line: 215, baseType: !60, size: 8, offset: 8)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "_fragment_offset", scope: !139, file: !99, line: 217, baseType: !103, size: 16, offset: 16)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "_identification", scope: !139, file: !99, line: 219, baseType: !67, size: 32, offset: 32)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !148, line: 49, baseType: !149)
!148 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!149 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!150 = !{!0, !151}
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 48, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 6)
!156 = !{!157, !158}
!157 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!158 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !160, line: 32, baseType: !161)
!160 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !162)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 192, elements: !169)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !164)
!164 = !{!165, !166, !167, !168}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !163, file: !10, line: 196, baseType: !14, size: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !163, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !163, file: !10, line: 196, baseType: !59, size: 64, offset: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !163, file: !10, line: 196, baseType: !59, size: 64, offset: 128)
!169 = !{!170}
!170 = !DISubrange(count: 1)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 8)
!174 = !{i32 2, !"Dwarf Version", i32 4}
!175 = !{i32 2, !"Debug Info Version", i32 3}
!176 = !{i32 1, !"wchar_size", i32 4}
!177 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!178 = distinct !DISubprogram(name: "ip6_route", scope: !10, file: !10, line: 86, type: !179, isLocal: false, isDefinition: true, scopeLine: 87, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !264)
!179 = !DISubroutineType(types: !180)
!180 = !{!181, !70, !70}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "netif", file: !13, line: 260, size: 2240, elements: !183)
!183 = !{!184, !185, !186, !187, !188, !192, !194, !196, !197, !219, !226, !231, !236, !241, !242, !243, !245, !246, !247, !248, !250, !251, !252, !256, !257, !258, !259}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !182, file: !13, line: 263, baseType: !181, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ip_addr", scope: !182, file: !13, line: 268, baseType: !83, size: 192, offset: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "netmask", scope: !182, file: !13, line: 269, baseType: !83, size: 192, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "gw", scope: !182, file: !13, line: 270, baseType: !83, size: 192, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr", scope: !182, file: !13, line: 274, baseType: !189, size: 576, offset: 640)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 576, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 3)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_state", scope: !182, file: !13, line: 277, baseType: !193, size: 24, offset: 1216)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 24, elements: !190)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_valid_life", scope: !182, file: !13, line: 282, baseType: !195, size: 96, offset: 1248)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 96, elements: !190)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_addr_pref_life", scope: !182, file: !13, line: 283, baseType: !195, size: 96, offset: 1344)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "input", scope: !182, file: !13, line: 288, baseType: !198, size: 64, offset: 1472)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_input_fn", file: !13, line: 178, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!202, !207, !181}
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !19, line: 96, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !61, line: 126, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !63, line: 20, baseType: !205)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !65, line: 41, baseType: !206)
!206 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !209, line: 186, size: 192, elements: !210)
!209 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!210 = !{!211, !212, !213, !214, !215, !216, !217, !218}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !208, file: !209, line: 188, baseType: !207, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !208, file: !209, line: 191, baseType: !59, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !208, file: !209, line: 200, baseType: !103, size: 16, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !208, file: !209, line: 203, baseType: !103, size: 16, offset: 144)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !208, file: !209, line: 208, baseType: !60, size: 8, offset: 160)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !208, file: !209, line: 211, baseType: !60, size: 8, offset: 168)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !208, file: !209, line: 218, baseType: !60, size: 8, offset: 176)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !208, file: !209, line: 221, baseType: !60, size: 8, offset: 184)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "output", scope: !182, file: !13, line: 294, baseType: !220, size: 64, offset: 1536)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_fn", file: !13, line: 189, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!202, !181, !207, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "linkoutput", scope: !182, file: !13, line: 299, baseType: !227, size: 64, offset: 1600)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_linkoutput_fn", file: !13, line: 212, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!202, !181, !207}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "output_ip6", scope: !182, file: !13, line: 305, baseType: !232, size: 64, offset: 1664)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_output_ip6_fn", file: !13, line: 202, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!202, !181, !207, !70}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "status_callback", scope: !182, file: !13, line: 310, baseType: !237, size: 64, offset: 1728)
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_status_callback_fn", file: !13, line: 214, baseType: !238)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !181}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "remove_callback", scope: !182, file: !13, line: 319, baseType: !237, size: 64, offset: 1792)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !182, file: !13, line: 323, baseType: !59, size: 64, offset: 1856)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "client_data", scope: !182, file: !13, line: 325, baseType: !244, size: 64, offset: 1920)
!244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !59, size: 64, elements: !169)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "chksum_flags", scope: !182, file: !13, line: 332, baseType: !103, size: 16, offset: 1984)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "mtu", scope: !182, file: !13, line: 335, baseType: !103, size: 16, offset: 2000)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "mtu6", scope: !182, file: !13, line: 338, baseType: !103, size: 16, offset: 2016)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr", scope: !182, file: !13, line: 341, baseType: !249, size: 48, offset: 2032)
!249 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 48, elements: !154)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "hwaddr_len", scope: !182, file: !13, line: 343, baseType: !60, size: 8, offset: 2080)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !182, file: !13, line: 345, baseType: !60, size: 8, offset: 2088)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !182, file: !13, line: 347, baseType: !253, size: 16, offset: 2096)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 16, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 2)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !182, file: !13, line: 350, baseType: !60, size: 8, offset: 2112)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "ip6_autoconfig_enabled", scope: !182, file: !13, line: 353, baseType: !60, size: 8, offset: 2120)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "rs_count", scope: !182, file: !13, line: 357, baseType: !60, size: 8, offset: 2128)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "mld_mac_filter", scope: !182, file: !13, line: 377, baseType: !260, size: 64, offset: 2176)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "netif_mld_mac_filter_fn", file: !13, line: 222, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!202, !181, !70, !12}
!264 = !{!265, !266, !267, !268}
!265 = !DILocalVariable(name: "src", arg: 1, scope: !178, file: !10, line: 86, type: !70)
!266 = !DILocalVariable(name: "dest", arg: 2, scope: !178, file: !10, line: 86, type: !70)
!267 = !DILocalVariable(name: "netif", scope: !178, file: !10, line: 92, type: !181)
!268 = !DILocalVariable(name: "i", scope: !178, file: !10, line: 93, type: !203)
!269 = !DILocation(line: 86, column: 29, scope: !178)
!270 = !DILocation(line: 86, column: 52, scope: !178)
!271 = !DILocation(line: 98, column: 8, scope: !272)
!272 = distinct !DILexicalBlock(scope: !178, file: !10, line: 98, column: 7)
!273 = !{!274, !274, i64 0}
!274 = !{!"any pointer", !275, i64 0}
!275 = !{!"omnipotent char", !276, i64 0}
!276 = !{!"Simple C/C++ TBAA"}
!277 = !DILocation(line: 98, column: 19, scope: !272)
!278 = !DILocation(line: 98, column: 28, scope: !272)
!279 = !DILocation(line: 98, column: 44, scope: !272)
!280 = !{!281, !274, i64 0}
!281 = !{!"netif", !274, i64 0, !282, i64 8, !282, i64 32, !282, i64 56, !275, i64 80, !275, i64 152, !275, i64 156, !275, i64 168, !274, i64 184, !274, i64 192, !274, i64 200, !274, i64 208, !274, i64 216, !274, i64 224, !274, i64 232, !275, i64 240, !283, i64 248, !283, i64 250, !283, i64 252, !275, i64 254, !275, i64 260, !275, i64 261, !275, i64 262, !275, i64 264, !275, i64 265, !275, i64 266, !274, i64 272}
!282 = !{!"ip_addr", !275, i64 0, !275, i64 20}
!283 = !{!"short", !275, i64 0}
!284 = !DILocation(line: 98, column: 49, scope: !272)
!285 = !DILocation(line: 98, column: 7, scope: !178)
!286 = !DILocation(line: 99, column: 10, scope: !287)
!287 = distinct !DILexicalBlock(scope: !288, file: !10, line: 99, column: 9)
!288 = distinct !DILexicalBlock(scope: !272, file: !10, line: 98, column: 59)
!289 = !{!281, !275, i64 261}
!290 = !DILocation(line: 99, column: 34, scope: !287)
!291 = !DILocation(line: 99, column: 38, scope: !287)
!292 = !DILocation(line: 99, column: 67, scope: !287)
!293 = !DILocation(line: 100, column: 10, scope: !287)
!294 = !{!295, !275, i64 16}
!295 = !{!"ip6_addr", !275, i64 0, !275, i64 16}
!296 = !DILocation(line: 100, column: 34, scope: !287)
!297 = !DILocation(line: 100, column: 38, scope: !287)
!298 = !{!281, !275, i64 264}
!299 = !DILocation(line: 99, column: 9, scope: !288)
!300 = !DILocation(line: 103, column: 5, scope: !288)
!301 = !DILocation(line: 112, column: 7, scope: !302)
!302 = distinct !DILexicalBlock(scope: !178, file: !10, line: 112, column: 7)
!303 = !DILocation(line: 112, column: 7, scope: !178)
!304 = !DILocation(line: 92, column: 17, scope: !178)
!305 = !DILocation(line: 116, column: 5, scope: !306)
!306 = distinct !DILexicalBlock(scope: !307, file: !10, line: 116, column: 5)
!307 = distinct !DILexicalBlock(scope: !302, file: !10, line: 112, column: 32)
!308 = !DILocation(line: 117, column: 11, scope: !309)
!309 = distinct !DILexicalBlock(scope: !310, file: !10, line: 117, column: 11)
!310 = distinct !DILexicalBlock(scope: !311, file: !10, line: 116, column: 26)
!311 = distinct !DILexicalBlock(scope: !306, file: !10, line: 116, column: 5)
!312 = !DILocation(line: 117, column: 43, scope: !309)
!313 = !DILocation(line: 118, column: 11, scope: !309)
!314 = !DILocation(line: 118, column: 30, scope: !309)
!315 = !DILocation(line: 118, column: 33, scope: !309)
!316 = !DILocation(line: 117, column: 11, scope: !310)
!317 = !DILocation(line: 116, column: 5, scope: !311)
!318 = distinct !{!318, !305, !319}
!319 = !DILocation(line: 121, column: 5, scope: !306)
!320 = !DILocation(line: 143, column: 7, scope: !321)
!321 = distinct !DILexicalBlock(scope: !178, file: !10, line: 143, column: 7)
!322 = !{!323, !323, i64 0}
!323 = !{!"int", !275, i64 0}
!324 = !DILocation(line: 143, column: 45, scope: !321)
!325 = !DILocation(line: 144, column: 7, scope: !321)
!326 = !DILocation(line: 144, column: 44, scope: !321)
!327 = !DILocation(line: 149, column: 7, scope: !321)
!328 = !DILocation(line: 143, column: 7, scope: !178)
!329 = !DILocation(line: 151, column: 9, scope: !330)
!330 = distinct !DILexicalBlock(scope: !331, file: !10, line: 151, column: 9)
!331 = distinct !DILexicalBlock(scope: !321, file: !10, line: 149, column: 33)
!332 = !DILocation(line: 151, column: 9, scope: !331)
!333 = !DILocation(line: 0, scope: !334)
!334 = distinct !DILexicalBlock(scope: !335, file: !10, line: 153, column: 7)
!335 = distinct !DILexicalBlock(scope: !330, file: !10, line: 151, column: 33)
!336 = !DILocation(line: 153, column: 7, scope: !334)
!337 = !DILocation(line: 163, column: 7, scope: !338)
!338 = distinct !DILexicalBlock(scope: !339, file: !10, line: 163, column: 7)
!339 = distinct !DILexicalBlock(scope: !330, file: !10, line: 161, column: 5)
!340 = !DILocation(line: 154, column: 13, scope: !341)
!341 = distinct !DILexicalBlock(scope: !342, file: !10, line: 154, column: 13)
!342 = distinct !DILexicalBlock(scope: !343, file: !10, line: 153, column: 28)
!343 = distinct !DILexicalBlock(scope: !334, file: !10, line: 153, column: 7)
!344 = !DILocation(line: 154, column: 32, scope: !341)
!345 = !DILocation(line: 154, column: 35, scope: !341)
!346 = !DILocation(line: 154, column: 59, scope: !341)
!347 = !DILocation(line: 155, column: 13, scope: !341)
!348 = !DILocation(line: 154, column: 13, scope: !342)
!349 = !DILocation(line: 153, column: 7, scope: !343)
!350 = distinct !{!350, !336, !351}
!351 = !DILocation(line: 158, column: 7, scope: !334)
!352 = !DILocation(line: 164, column: 14, scope: !353)
!353 = distinct !DILexicalBlock(scope: !354, file: !10, line: 164, column: 13)
!354 = distinct !DILexicalBlock(scope: !355, file: !10, line: 163, column: 28)
!355 = distinct !DILexicalBlock(scope: !338, file: !10, line: 163, column: 7)
!356 = !DILocation(line: 164, column: 33, scope: !353)
!357 = !DILocation(line: 164, column: 37, scope: !353)
!358 = !DILocation(line: 164, column: 13, scope: !354)
!359 = !DILocation(line: 93, column: 8, scope: !178)
!360 = !DILocation(line: 167, column: 14, scope: !361)
!361 = distinct !DILexicalBlock(scope: !354, file: !10, line: 167, column: 9)
!362 = !DILocation(line: 167, column: 9, scope: !361)
!363 = !DILocation(line: 168, column: 15, scope: !364)
!364 = distinct !DILexicalBlock(scope: !365, file: !10, line: 168, column: 15)
!365 = distinct !DILexicalBlock(scope: !366, file: !10, line: 167, column: 55)
!366 = distinct !DILexicalBlock(scope: !361, file: !10, line: 167, column: 9)
!367 = !{!275, !275, i64 0}
!368 = !DILocation(line: 168, column: 64, scope: !364)
!369 = !DILocation(line: 169, column: 15, scope: !364)
!370 = !DILocation(line: 168, column: 15, scope: !365)
!371 = !DILocation(line: 167, column: 9, scope: !366)
!372 = !DILocation(line: 163, column: 7, scope: !355)
!373 = distinct !{!373, !337, !374}
!374 = !DILocation(line: 173, column: 7, scope: !338)
!375 = !DILocation(line: 196, column: 3, scope: !376)
!376 = distinct !DILexicalBlock(scope: !178, file: !10, line: 196, column: 3)
!377 = !DILocation(line: 197, column: 10, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !10, line: 197, column: 9)
!379 = distinct !DILexicalBlock(scope: !380, file: !10, line: 196, column: 24)
!380 = distinct !DILexicalBlock(scope: !376, file: !10, line: 196, column: 3)
!381 = !DILocation(line: 197, column: 29, scope: !378)
!382 = !DILocation(line: 197, column: 33, scope: !378)
!383 = !DILocation(line: 197, column: 9, scope: !379)
!384 = !DILocation(line: 200, column: 10, scope: !385)
!385 = distinct !DILexicalBlock(scope: !379, file: !10, line: 200, column: 5)
!386 = !DILocation(line: 200, column: 5, scope: !385)
!387 = !DILocation(line: 201, column: 11, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !10, line: 201, column: 11)
!389 = distinct !DILexicalBlock(scope: !390, file: !10, line: 200, column: 51)
!390 = distinct !DILexicalBlock(scope: !385, file: !10, line: 200, column: 5)
!391 = !DILocation(line: 201, column: 60, scope: !388)
!392 = !DILocation(line: 202, column: 11, scope: !388)
!393 = !DILocation(line: 202, column: 59, scope: !388)
!394 = !DILocation(line: 203, column: 12, scope: !388)
!395 = !DILocation(line: 203, column: 46, scope: !388)
!396 = !DILocation(line: 204, column: 11, scope: !388)
!397 = !DILocation(line: 201, column: 11, scope: !389)
!398 = !DILocation(line: 200, column: 5, scope: !390)
!399 = !DILocation(line: 196, column: 3, scope: !380)
!400 = distinct !{!400, !375, !401}
!401 = !DILocation(line: 208, column: 3, scope: !376)
!402 = !DILocation(line: 211, column: 11, scope: !178)
!403 = !DILocation(line: 212, column: 13, scope: !404)
!404 = distinct !DILexicalBlock(scope: !178, file: !10, line: 212, column: 7)
!405 = !DILocation(line: 212, column: 7, scope: !178)
!406 = !DILocation(line: 218, column: 8, scope: !407)
!407 = distinct !DILexicalBlock(scope: !178, file: !10, line: 218, column: 7)
!408 = !DILocation(line: 218, column: 7, scope: !178)
!409 = !DILocation(line: 219, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !10, line: 219, column: 5)
!411 = distinct !DILexicalBlock(scope: !407, file: !10, line: 218, column: 29)
!412 = !DILocation(line: 219, column: 5, scope: !413)
!413 = distinct !DILexicalBlock(scope: !410, file: !10, line: 219, column: 5)
!414 = !DILocation(line: 220, column: 12, scope: !415)
!415 = distinct !DILexicalBlock(scope: !416, file: !10, line: 220, column: 11)
!416 = distinct !DILexicalBlock(scope: !413, file: !10, line: 219, column: 26)
!417 = !DILocation(line: 220, column: 31, scope: !415)
!418 = !DILocation(line: 220, column: 35, scope: !415)
!419 = !DILocation(line: 220, column: 11, scope: !416)
!420 = !DILocation(line: 223, column: 12, scope: !421)
!421 = distinct !DILexicalBlock(scope: !416, file: !10, line: 223, column: 7)
!422 = !DILocation(line: 223, column: 7, scope: !421)
!423 = !DILocation(line: 224, column: 13, scope: !424)
!424 = distinct !DILexicalBlock(scope: !425, file: !10, line: 224, column: 13)
!425 = distinct !DILexicalBlock(scope: !426, file: !10, line: 223, column: 53)
!426 = distinct !DILexicalBlock(scope: !421, file: !10, line: 223, column: 7)
!427 = !DILocation(line: 224, column: 62, scope: !424)
!428 = !DILocation(line: 225, column: 13, scope: !424)
!429 = !DILocation(line: 224, column: 13, scope: !425)
!430 = !DILocation(line: 223, column: 7, scope: !426)
!431 = distinct !{!431, !409, !432}
!432 = !DILocation(line: 229, column: 5, scope: !410)
!433 = !DILocation(line: 251, column: 8, scope: !434)
!434 = distinct !DILexicalBlock(scope: !178, file: !10, line: 251, column: 7)
!435 = !DILocation(line: 251, column: 22, scope: !434)
!436 = !DILocation(line: 251, column: 31, scope: !434)
!437 = !DILocation(line: 251, column: 35, scope: !434)
!438 = !DILocation(line: 251, column: 62, scope: !434)
!439 = !DILocation(line: 251, column: 66, scope: !434)
!440 = !DILocation(line: 251, column: 7, scope: !178)
!441 = !DILocation(line: 0, scope: !442)
!442 = distinct !DILexicalBlock(scope: !424, file: !10, line: 225, column: 58)
!443 = !DILocation(line: 0, scope: !444)
!444 = distinct !DILexicalBlock(scope: !287, file: !10, line: 100, column: 77)
!445 = !DILocation(line: 255, column: 1, scope: !178)
!446 = distinct !DISubprogram(name: "ip6_select_source_address", scope: !10, file: !10, line: 283, type: !447, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !449)
!447 = !DISubroutineType(types: !448)
!448 = !{!81, !181, !70}
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461}
!450 = !DILocalVariable(name: "netif", arg: 1, scope: !446, file: !10, line: 283, type: !181)
!451 = !DILocalVariable(name: "dest", arg: 2, scope: !446, file: !10, line: 283, type: !70)
!452 = !DILocalVariable(name: "best_addr", scope: !446, file: !10, line: 285, type: !81)
!453 = !DILocalVariable(name: "cand_addr", scope: !446, file: !10, line: 286, type: !70)
!454 = !DILocalVariable(name: "dest_scope", scope: !446, file: !10, line: 287, type: !203)
!455 = !DILocalVariable(name: "cand_scope", scope: !446, file: !10, line: 287, type: !203)
!456 = !DILocalVariable(name: "best_scope", scope: !446, file: !10, line: 288, type: !203)
!457 = !DILocalVariable(name: "i", scope: !446, file: !10, line: 289, type: !60)
!458 = !DILocalVariable(name: "cand_pref", scope: !446, file: !10, line: 289, type: !60)
!459 = !DILocalVariable(name: "cand_bits", scope: !446, file: !10, line: 289, type: !60)
!460 = !DILocalVariable(name: "best_pref", scope: !446, file: !10, line: 290, type: !60)
!461 = !DILocalVariable(name: "best_bits", scope: !446, file: !10, line: 291, type: !60)
!462 = !DILocation(line: 283, column: 41, scope: !446)
!463 = !DILocation(line: 283, column: 66, scope: !446)
!464 = !DILocation(line: 288, column: 8, scope: !446)
!465 = !DILocation(line: 290, column: 8, scope: !446)
!466 = !DILocation(line: 291, column: 8, scope: !446)
!467 = !DILocation(line: 295, column: 7, scope: !468)
!468 = distinct !DILexicalBlock(scope: !446, file: !10, line: 295, column: 7)
!469 = !DILocation(line: 295, column: 7, scope: !446)
!470 = !DILocation(line: 287, column: 8, scope: !446)
!471 = !DILocation(line: 297, column: 3, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !10, line: 295, column: 32)
!473 = !DILocation(line: 297, column: 14, scope: !474)
!474 = distinct !DILexicalBlock(scope: !468, file: !10, line: 297, column: 14)
!475 = !DILocation(line: 297, column: 41, scope: !474)
!476 = !DILocation(line: 297, column: 44, scope: !474)
!477 = !DILocation(line: 297, column: 14, scope: !468)
!478 = !DILocation(line: 299, column: 3, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !10, line: 297, column: 71)
!480 = !DILocation(line: 299, column: 14, scope: !474)
!481 = !DILocation(line: 301, column: 14, scope: !482)
!482 = distinct !DILexicalBlock(scope: !474, file: !10, line: 299, column: 14)
!483 = !DILocation(line: 299, column: 14, scope: !482)
!484 = !DILocation(line: 301, column: 3, scope: !485)
!485 = distinct !DILexicalBlock(scope: !482, file: !10, line: 299, column: 44)
!486 = !DILocation(line: 301, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !482, file: !10, line: 301, column: 14)
!488 = !DILocation(line: 302, column: 18, scope: !489)
!489 = distinct !DILexicalBlock(scope: !487, file: !10, line: 301, column: 42)
!490 = !DILocation(line: 303, column: 3, scope: !489)
!491 = !DILocation(line: 303, column: 14, scope: !492)
!492 = distinct !DILexicalBlock(scope: !487, file: !10, line: 303, column: 14)
!493 = !DILocation(line: 303, column: 14, scope: !487)
!494 = !DILocation(line: 305, column: 3, scope: !495)
!495 = distinct !DILexicalBlock(scope: !492, file: !10, line: 303, column: 42)
!496 = !DILocation(line: 285, column: 20, scope: !446)
!497 = !DILocation(line: 289, column: 8, scope: !446)
!498 = !DILocation(line: 312, column: 8, scope: !499)
!499 = distinct !DILexicalBlock(scope: !446, file: !10, line: 312, column: 3)
!500 = !DILocation(line: 312, column: 3, scope: !499)
!501 = !DILocation(line: 314, column: 10, scope: !502)
!502 = distinct !DILexicalBlock(scope: !503, file: !10, line: 314, column: 9)
!503 = distinct !DILexicalBlock(scope: !504, file: !10, line: 312, column: 49)
!504 = distinct !DILexicalBlock(scope: !499, file: !10, line: 312, column: 3)
!505 = !DILocation(line: 314, column: 9, scope: !503)
!506 = !DILocation(line: 318, column: 17, scope: !503)
!507 = !DILocation(line: 286, column: 21, scope: !446)
!508 = !DILocation(line: 319, column: 9, scope: !509)
!509 = distinct !DILexicalBlock(scope: !503, file: !10, line: 319, column: 9)
!510 = !DILocation(line: 319, column: 9, scope: !503)
!511 = !DILocation(line: 287, column: 20, scope: !446)
!512 = !DILocation(line: 321, column: 5, scope: !513)
!513 = distinct !DILexicalBlock(scope: !509, file: !10, line: 319, column: 39)
!514 = !DILocation(line: 321, column: 16, scope: !515)
!515 = distinct !DILexicalBlock(scope: !509, file: !10, line: 321, column: 16)
!516 = !DILocation(line: 321, column: 16, scope: !509)
!517 = !DILocation(line: 323, column: 5, scope: !518)
!518 = distinct !DILexicalBlock(scope: !515, file: !10, line: 321, column: 49)
!519 = !DILocation(line: 323, column: 16, scope: !520)
!520 = distinct !DILexicalBlock(scope: !515, file: !10, line: 323, column: 16)
!521 = !DILocation(line: 323, column: 16, scope: !515)
!522 = !DILocation(line: 325, column: 5, scope: !523)
!523 = distinct !DILexicalBlock(scope: !520, file: !10, line: 323, column: 51)
!524 = !DILocation(line: 325, column: 16, scope: !525)
!525 = distinct !DILexicalBlock(scope: !520, file: !10, line: 325, column: 16)
!526 = !DILocation(line: 325, column: 16, scope: !520)
!527 = !DILocation(line: 327, column: 5, scope: !528)
!528 = distinct !DILexicalBlock(scope: !525, file: !10, line: 325, column: 49)
!529 = !DILocation(line: 0, scope: !530)
!530 = distinct !DILexicalBlock(scope: !525, file: !10, line: 327, column: 12)
!531 = !DILocation(line: 331, column: 17, scope: !503)
!532 = !DILocation(line: 289, column: 11, scope: !446)
!533 = !DILocation(line: 335, column: 17, scope: !503)
!534 = !DILocation(line: 336, column: 19, scope: !535)
!535 = distinct !DILexicalBlock(scope: !503, file: !10, line: 336, column: 9)
!536 = !DILocation(line: 336, column: 22, scope: !535)
!537 = !DILocation(line: 336, column: 9, scope: !503)
!538 = !DILocation(line: 339, column: 20, scope: !539)
!539 = distinct !DILexicalBlock(scope: !503, file: !10, line: 339, column: 9)
!540 = !DILocation(line: 339, column: 29, scope: !539)
!541 = !DILocation(line: 340, column: 11, scope: !539)
!542 = !DILocation(line: 340, column: 24, scope: !539)
!543 = !DILocation(line: 340, column: 22, scope: !539)
!544 = !DILocation(line: 340, column: 36, scope: !539)
!545 = !DILocation(line: 340, column: 51, scope: !539)
!546 = !DILocation(line: 340, column: 67, scope: !539)
!547 = !DILocation(line: 341, column: 22, scope: !539)
!548 = !DILocation(line: 341, column: 36, scope: !539)
!549 = !DILocation(line: 341, column: 51, scope: !539)
!550 = !DILocation(line: 341, column: 66, scope: !539)
!551 = !DILocation(line: 342, column: 22, scope: !539)
!552 = !DILocation(line: 342, column: 37, scope: !539)
!553 = !DILocation(line: 342, column: 42, scope: !539)
!554 = !DILocation(line: 342, column: 54, scope: !539)
!555 = !DILocation(line: 342, column: 52, scope: !539)
!556 = !DILocation(line: 342, column: 65, scope: !539)
!557 = !DILocation(line: 343, column: 21, scope: !539)
!558 = !DILocation(line: 343, column: 35, scope: !539)
!559 = !DILocation(line: 343, column: 51, scope: !539)
!560 = !DILocation(line: 343, column: 49, scope: !539)
!561 = !DILocation(line: 339, column: 9, scope: !503)
!562 = !DILocation(line: 349, column: 5, scope: !563)
!563 = distinct !DILexicalBlock(scope: !539, file: !10, line: 343, column: 66)
!564 = !DILocation(line: 0, scope: !446)
!565 = !DILocation(line: 312, column: 45, scope: !504)
!566 = !DILocation(line: 312, column: 3, scope: !504)
!567 = !DILocation(line: 312, column: 17, scope: !504)
!568 = distinct !{!568, !500, !569}
!569 = !DILocation(line: 350, column: 3, scope: !499)
!570 = !DILocation(line: 0, scope: !571)
!571 = distinct !DILexicalBlock(scope: !535, file: !10, line: 336, column: 60)
!572 = !DILocation(line: 353, column: 1, scope: !446)
!573 = distinct !DISubprogram(name: "ip6_input", scope: !10, file: !10, line: 509, type: !200, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !574)
!574 = !{!575, !576, !577, !578, !579, !582, !583, !584, !591, !592, !593, !595, !597, !598, !599, !601, !603}
!575 = !DILocalVariable(name: "p", arg: 1, scope: !573, file: !10, line: 509, type: !207)
!576 = !DILocalVariable(name: "inp", arg: 2, scope: !573, file: !10, line: 509, type: !181)
!577 = !DILocalVariable(name: "ip6hdr", scope: !573, file: !10, line: 511, type: !97)
!578 = !DILocalVariable(name: "netif", scope: !573, file: !10, line: 512, type: !181)
!579 = !DILocalVariable(name: "nexth", scope: !573, file: !10, line: 513, type: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!582 = !DILocalVariable(name: "hlen", scope: !573, file: !10, line: 514, type: !103)
!583 = !DILocalVariable(name: "hlen_tot", scope: !573, file: !10, line: 514, type: !103)
!584 = !DILocalVariable(name: "opt_offset", scope: !585, file: !10, line: 715, type: !588)
!585 = distinct !DILexicalBlock(scope: !586, file: !10, line: 714, column: 5)
!586 = distinct !DILexicalBlock(scope: !587, file: !10, line: 712, column: 21)
!587 = distinct !DILexicalBlock(scope: !573, file: !10, line: 711, column: 3)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !61, line: 130, baseType: !589)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 44, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !65, line: 77, baseType: !20)
!591 = !DILocalVariable(name: "hbh_hdr", scope: !585, file: !10, line: 716, type: !115)
!592 = !DILocalVariable(name: "opt_hdr", scope: !585, file: !10, line: 717, type: !120)
!593 = !DILocalVariable(name: "opt_dlen", scope: !594, file: !10, line: 746, type: !588)
!594 = distinct !DILexicalBlock(scope: !585, file: !10, line: 745, column: 7)
!595 = !DILocalVariable(name: "opt_offset", scope: !596, file: !10, line: 806, type: !588)
!596 = distinct !DILexicalBlock(scope: !586, file: !10, line: 805, column: 5)
!597 = !DILocalVariable(name: "dest_hdr", scope: !596, file: !10, line: 807, type: !126)
!598 = !DILocalVariable(name: "opt_hdr", scope: !596, file: !10, line: 808, type: !120)
!599 = !DILocalVariable(name: "opt_dlen", scope: !600, file: !10, line: 835, type: !588)
!600 = distinct !DILexicalBlock(scope: !596, file: !10, line: 834, column: 7)
!601 = !DILocalVariable(name: "rout_hdr", scope: !602, file: !10, line: 901, type: !131)
!602 = distinct !DILexicalBlock(scope: !586, file: !10, line: 900, column: 5)
!603 = !DILocalVariable(name: "frag_hdr", scope: !604, file: !10, line: 960, type: !138)
!604 = distinct !DILexicalBlock(scope: !586, file: !10, line: 959, column: 5)
!605 = !DILocation(line: 509, column: 24, scope: !573)
!606 = !DILocation(line: 509, column: 41, scope: !573)
!607 = !DILocation(line: 525, column: 3, scope: !573)
!608 = !{!609, !283, i64 188}
!609 = !{!"stats_", !610, i64 0, !610, i64 24, !610, i64 48, !610, i64 72, !610, i64 96, !610, i64 120, !610, i64 144, !611, i64 168, !610, i64 186, !610, i64 210, !610, i64 234, !613, i64 258, !610, i64 286}
!610 = !{!"stats_proto", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22}
!611 = !{!"stats_sys", !612, i64 0, !612, i64 6, !612, i64 12}
!612 = !{!"stats_syselem", !283, i64 0, !283, i64 2, !283, i64 4}
!613 = !{!"stats_igmp", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22, !283, i64 24, !283, i64 26}
!614 = !DILocation(line: 528, column: 33, scope: !573)
!615 = !{!616, !274, i64 8}
!616 = !{!"pbuf", !274, i64 0, !274, i64 8, !283, i64 16, !283, i64 18, !275, i64 20, !275, i64 21, !275, i64 22, !275, i64 23}
!617 = !DILocation(line: 511, column: 19, scope: !573)
!618 = !DILocation(line: 529, column: 7, scope: !619)
!619 = distinct !DILexicalBlock(scope: !573, file: !10, line: 529, column: 7)
!620 = !{!621, !323, i64 0}
!621 = !{!"ip6_hdr", !323, i64 0, !283, i64 4, !275, i64 6, !275, i64 7, !622, i64 8, !622, i64 24}
!622 = !{!"ip6_addr_packed", !275, i64 0}
!623 = !DILocation(line: 529, column: 22, scope: !619)
!624 = !DILocation(line: 529, column: 7, scope: !573)
!625 = !DILocation(line: 532, column: 5, scope: !626)
!626 = distinct !DILexicalBlock(scope: !619, file: !10, line: 529, column: 28)
!627 = !DILocation(line: 533, column: 5, scope: !626)
!628 = !{!609, !283, i64 206}
!629 = !DILocation(line: 534, column: 5, scope: !626)
!630 = !{!609, !283, i64 192}
!631 = !DILocation(line: 535, column: 5, scope: !626)
!632 = !DILocation(line: 546, column: 22, scope: !633)
!633 = distinct !DILexicalBlock(scope: !573, file: !10, line: 546, column: 7)
!634 = !{!616, !283, i64 18}
!635 = !DILocation(line: 546, column: 17, scope: !633)
!636 = !DILocation(line: 546, column: 27, scope: !633)
!637 = !DILocation(line: 0, scope: !633)
!638 = !DILocation(line: 546, column: 31, scope: !633)
!639 = !{!621, !283, i64 4}
!640 = !DILocation(line: 546, column: 55, scope: !633)
!641 = !{!616, !283, i64 16}
!642 = !DILocation(line: 546, column: 52, scope: !633)
!643 = !DILocation(line: 546, column: 63, scope: !633)
!644 = !DILocation(line: 546, column: 49, scope: !633)
!645 = !DILocation(line: 546, column: 7, scope: !573)
!646 = !DILocation(line: 552, column: 10, scope: !647)
!647 = distinct !DILexicalBlock(scope: !648, file: !10, line: 552, column: 9)
!648 = distinct !DILexicalBlock(scope: !633, file: !10, line: 546, column: 77)
!649 = !DILocation(line: 558, column: 5, scope: !648)
!650 = !DILocation(line: 559, column: 5, scope: !648)
!651 = !{!609, !283, i64 196}
!652 = !DILocation(line: 560, column: 5, scope: !648)
!653 = !DILocation(line: 561, column: 5, scope: !648)
!654 = !DILocation(line: 566, column: 38, scope: !573)
!655 = !DILocation(line: 566, column: 36, scope: !573)
!656 = !DILocation(line: 566, column: 3, scope: !573)
!657 = !DILocation(line: 569, column: 3, scope: !658)
!658 = distinct !DILexicalBlock(scope: !659, file: !10, line: 569, column: 3)
!659 = distinct !DILexicalBlock(scope: !573, file: !10, line: 569, column: 3)
!660 = !DILocation(line: 569, column: 3, scope: !661)
!661 = distinct !DILexicalBlock(scope: !659, file: !10, line: 569, column: 3)
!662 = !{!663, !275, i64 80}
!663 = !{!"ip_globals", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !283, i64 32, !282, i64 36, !282, i64 60}
!664 = !DILocation(line: 570, column: 3, scope: !665)
!665 = distinct !DILexicalBlock(scope: !666, file: !10, line: 570, column: 3)
!666 = distinct !DILexicalBlock(scope: !573, file: !10, line: 570, column: 3)
!667 = !DILocation(line: 570, column: 3, scope: !668)
!668 = distinct !DILexicalBlock(scope: !666, file: !10, line: 570, column: 3)
!669 = !{!663, !275, i64 56}
!670 = !DILocation(line: 574, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !573, file: !10, line: 574, column: 7)
!672 = !DILocation(line: 574, column: 72, scope: !671)
!673 = !DILocation(line: 575, column: 6, scope: !671)
!674 = !DILocation(line: 575, column: 70, scope: !671)
!675 = !DILocation(line: 576, column: 6, scope: !671)
!676 = !DILocation(line: 574, column: 7, scope: !573)
!677 = !DILocation(line: 578, column: 5, scope: !678)
!678 = distinct !DILexicalBlock(scope: !671, file: !10, line: 576, column: 66)
!679 = !DILocation(line: 579, column: 5, scope: !678)
!680 = !DILocation(line: 580, column: 5, scope: !678)
!681 = !DILocation(line: 581, column: 5, scope: !678)
!682 = !DILocation(line: 585, column: 3, scope: !573)
!683 = !DILocation(line: 586, column: 3, scope: !573)
!684 = !DILocation(line: 589, column: 30, scope: !573)
!685 = !{!663, !274, i64 24}
!686 = !DILocation(line: 592, column: 25, scope: !573)
!687 = !{!663, !274, i64 0}
!688 = !DILocation(line: 593, column: 31, scope: !573)
!689 = !{!663, !274, i64 8}
!690 = !DILocation(line: 596, column: 7, scope: !691)
!691 = distinct !DILexicalBlock(scope: !573, file: !10, line: 596, column: 7)
!692 = !DILocation(line: 596, column: 7, scope: !573)
!693 = !DILocation(line: 598, column: 9, scope: !694)
!694 = distinct !DILexicalBlock(scope: !695, file: !10, line: 598, column: 9)
!695 = distinct !DILexicalBlock(scope: !691, file: !10, line: 596, column: 54)
!696 = !DILocation(line: 598, column: 62, scope: !694)
!697 = !DILocation(line: 599, column: 9, scope: !694)
!698 = !DILocation(line: 598, column: 9, scope: !695)
!699 = !DILocation(line: 512, column: 17, scope: !573)
!700 = !DILocation(line: 601, column: 5, scope: !701)
!701 = distinct !DILexicalBlock(scope: !694, file: !10, line: 599, column: 65)
!702 = !DILocation(line: 603, column: 14, scope: !703)
!703 = distinct !DILexicalBlock(scope: !694, file: !10, line: 603, column: 14)
!704 = !DILocation(line: 603, column: 14, scope: !694)
!705 = !DILocation(line: 629, column: 9, scope: !706)
!706 = distinct !DILexicalBlock(scope: !707, file: !10, line: 629, column: 9)
!707 = distinct !DILexicalBlock(scope: !691, file: !10, line: 626, column: 10)
!708 = !DILocation(line: 629, column: 9, scope: !707)
!709 = !DILocation(line: 631, column: 5, scope: !710)
!710 = distinct !DILexicalBlock(scope: !706, file: !10, line: 629, column: 32)
!711 = !DILocation(line: 637, column: 11, scope: !712)
!712 = distinct !DILexicalBlock(scope: !713, file: !10, line: 637, column: 11)
!713 = distinct !DILexicalBlock(scope: !706, file: !10, line: 631, column: 12)
!714 = !DILocation(line: 637, column: 57, scope: !712)
!715 = !DILocation(line: 638, column: 11, scope: !712)
!716 = !DILocation(line: 637, column: 11, scope: !713)
!717 = !DILocation(line: 649, column: 11, scope: !718)
!718 = distinct !DILexicalBlock(scope: !713, file: !10, line: 649, column: 11)
!719 = !DILocation(line: 649, column: 56, scope: !718)
!720 = !DILocation(line: 650, column: 11, scope: !718)
!721 = !DILocation(line: 649, column: 11, scope: !713)
!722 = !DILocation(line: 655, column: 7, scope: !723)
!723 = distinct !DILexicalBlock(scope: !713, file: !10, line: 655, column: 7)
!724 = !DILocation(line: 655, column: 7, scope: !725)
!725 = distinct !DILexicalBlock(scope: !723, file: !10, line: 655, column: 7)
!726 = !DILocation(line: 656, column: 19, scope: !727)
!727 = distinct !DILexicalBlock(scope: !728, file: !10, line: 656, column: 13)
!728 = distinct !DILexicalBlock(scope: !725, file: !10, line: 655, column: 28)
!729 = !DILocation(line: 656, column: 13, scope: !728)
!730 = !DILocation(line: 660, column: 13, scope: !731)
!731 = distinct !DILexicalBlock(scope: !728, file: !10, line: 660, column: 13)
!732 = !DILocation(line: 660, column: 13, scope: !728)
!733 = distinct !{!733, !722, !734}
!734 = !DILocation(line: 663, column: 7, scope: !723)
!735 = !DILocation(line: 0, scope: !723)
!736 = !DILocation(line: 672, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !573, file: !10, line: 672, column: 7)
!738 = !DILocation(line: 673, column: 9, scope: !737)
!739 = !DILocation(line: 672, column: 7, scope: !573)
!740 = !DILocation(line: 677, column: 5, scope: !741)
!741 = distinct !DILexicalBlock(scope: !737, file: !10, line: 673, column: 61)
!742 = !DILocation(line: 678, column: 5, scope: !741)
!743 = !DILocation(line: 679, column: 5, scope: !741)
!744 = !DILocation(line: 683, column: 13, scope: !745)
!745 = distinct !DILexicalBlock(scope: !573, file: !10, line: 683, column: 7)
!746 = !DILocation(line: 683, column: 7, scope: !573)
!747 = !DILocation(line: 693, column: 5, scope: !748)
!748 = distinct !DILexicalBlock(scope: !745, file: !10, line: 683, column: 22)
!749 = !DILocation(line: 694, column: 5, scope: !748)
!750 = !DILocation(line: 698, column: 25, scope: !573)
!751 = !DILocation(line: 701, column: 12, scope: !573)
!752 = !DILocation(line: 513, column: 15, scope: !573)
!753 = !DILocation(line: 514, column: 15, scope: !573)
!754 = !DILocation(line: 514, column: 9, scope: !573)
!755 = !DILocation(line: 707, column: 3, scope: !573)
!756 = !DILocation(line: 710, column: 3, scope: !573)
!757 = !DILocation(line: 710, column: 10, scope: !573)
!758 = !DILocation(line: 710, column: 17, scope: !573)
!759 = distinct !{!759, !756, !760}
!760 = !DILocation(line: 1040, column: 3, scope: !573)
!761 = !DILocation(line: 712, column: 5, scope: !587)
!762 = !DILocation(line: 721, column: 42, scope: !585)
!763 = !DILocation(line: 716, column: 27, scope: !585)
!764 = !DILocation(line: 727, column: 40, scope: !585)
!765 = !{!766, !275, i64 1}
!766 = !{!"ip6_hbh_hdr", !275, i64 0, !275, i64 1}
!767 = !DILocation(line: 727, column: 31, scope: !585)
!768 = !DILocation(line: 727, column: 24, scope: !585)
!769 = !DILocation(line: 729, column: 15, scope: !770)
!770 = distinct !DILexicalBlock(scope: !585, file: !10, line: 729, column: 11)
!771 = !DILocation(line: 729, column: 19, scope: !770)
!772 = !DILocation(line: 729, column: 24, scope: !770)
!773 = !DILocation(line: 729, column: 28, scope: !770)
!774 = !DILocation(line: 729, column: 33, scope: !770)
!775 = !DILocation(line: 729, column: 11, scope: !585)
!776 = !DILocation(line: 734, column: 9, scope: !777)
!777 = distinct !DILexicalBlock(scope: !770, file: !10, line: 729, column: 44)
!778 = !DILocation(line: 735, column: 9, scope: !777)
!779 = !DILocation(line: 736, column: 9, scope: !777)
!780 = !DILocation(line: 737, column: 9, scope: !777)
!781 = !DILocation(line: 740, column: 35, scope: !585)
!782 = !DILocation(line: 715, column: 13, scope: !585)
!783 = !DILocation(line: 744, column: 7, scope: !585)
!784 = !DILocation(line: 746, column: 15, scope: !594)
!785 = !DILocation(line: 748, column: 58, scope: !594)
!786 = !DILocation(line: 717, column: 27, scope: !585)
!787 = !DILocation(line: 750, column: 17, scope: !594)
!788 = !{!789, !275, i64 0}
!789 = !{!"ip6_opt_hdr", !275, i64 0, !275, i64 1}
!790 = !DILocation(line: 750, column: 9, scope: !594)
!791 = !DILocation(line: 767, column: 19, scope: !792)
!792 = distinct !DILexicalBlock(scope: !594, file: !10, line: 750, column: 40)
!793 = !DILocation(line: 767, column: 11, scope: !792)
!794 = !DILocation(line: 771, column: 13, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !10, line: 767, column: 49)
!796 = !DILocation(line: 773, column: 13, scope: !795)
!797 = !DILocation(line: 776, column: 13, scope: !795)
!798 = !DILocation(line: 778, column: 13, scope: !795)
!799 = !DILocation(line: 780, column: 13, scope: !795)
!800 = !DILocation(line: 783, column: 18, scope: !801)
!801 = distinct !DILexicalBlock(scope: !795, file: !10, line: 783, column: 17)
!802 = !DILocation(line: 783, column: 17, scope: !795)
!803 = !DILocation(line: 784, column: 15, scope: !804)
!804 = distinct !DILexicalBlock(scope: !801, file: !10, line: 783, column: 65)
!805 = !DILocation(line: 785, column: 13, scope: !804)
!806 = !DILocation(line: 787, column: 13, scope: !795)
!807 = !DILocation(line: 789, column: 13, scope: !795)
!808 = !DILocation(line: 0, scope: !795)
!809 = !{!789, !275, i64 1}
!810 = !DILocation(line: 0, scope: !792)
!811 = !DILocation(line: 799, column: 33, scope: !594)
!812 = !DILocation(line: 799, column: 48, scope: !594)
!813 = !DILocation(line: 800, column: 7, scope: !585)
!814 = !DILocation(line: 744, column: 25, scope: !585)
!815 = !DILocation(line: 801, column: 29, scope: !585)
!816 = !DILocation(line: 801, column: 7, scope: !585)
!817 = !DILocation(line: 811, column: 44, scope: !596)
!818 = !DILocation(line: 807, column: 28, scope: !596)
!819 = !DILocation(line: 817, column: 33, scope: !596)
!820 = !{!821, !275, i64 1}
!821 = !{!"ip6_dest_hdr", !275, i64 0, !275, i64 1}
!822 = !DILocation(line: 817, column: 23, scope: !596)
!823 = !DILocation(line: 817, column: 16, scope: !596)
!824 = !DILocation(line: 818, column: 15, scope: !825)
!825 = distinct !DILexicalBlock(scope: !596, file: !10, line: 818, column: 11)
!826 = !DILocation(line: 818, column: 19, scope: !825)
!827 = !DILocation(line: 818, column: 24, scope: !825)
!828 = !DILocation(line: 818, column: 28, scope: !825)
!829 = !DILocation(line: 818, column: 33, scope: !825)
!830 = !DILocation(line: 818, column: 11, scope: !596)
!831 = !DILocation(line: 823, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !825, file: !10, line: 818, column: 44)
!833 = !DILocation(line: 824, column: 9, scope: !832)
!834 = !DILocation(line: 825, column: 9, scope: !832)
!835 = !DILocation(line: 826, column: 9, scope: !832)
!836 = !DILocation(line: 829, column: 35, scope: !596)
!837 = !DILocation(line: 806, column: 13, scope: !596)
!838 = !DILocation(line: 833, column: 7, scope: !596)
!839 = !DILocation(line: 835, column: 15, scope: !600)
!840 = !DILocation(line: 837, column: 59, scope: !600)
!841 = !DILocation(line: 808, column: 27, scope: !596)
!842 = !DILocation(line: 839, column: 17, scope: !600)
!843 = !DILocation(line: 839, column: 9, scope: !600)
!844 = !DILocation(line: 860, column: 19, scope: !845)
!845 = distinct !DILexicalBlock(scope: !600, file: !10, line: 840, column: 9)
!846 = !DILocation(line: 860, column: 11, scope: !845)
!847 = !DILocation(line: 865, column: 13, scope: !848)
!848 = distinct !DILexicalBlock(scope: !845, file: !10, line: 861, column: 11)
!849 = !DILocation(line: 867, column: 13, scope: !848)
!850 = !DILocation(line: 870, column: 13, scope: !848)
!851 = !DILocation(line: 872, column: 13, scope: !848)
!852 = !DILocation(line: 874, column: 13, scope: !848)
!853 = !DILocation(line: 877, column: 18, scope: !854)
!854 = distinct !DILexicalBlock(scope: !848, file: !10, line: 877, column: 17)
!855 = !DILocation(line: 877, column: 17, scope: !848)
!856 = !DILocation(line: 878, column: 15, scope: !857)
!857 = distinct !DILexicalBlock(scope: !854, file: !10, line: 877, column: 65)
!858 = !DILocation(line: 879, column: 13, scope: !857)
!859 = !DILocation(line: 881, column: 13, scope: !848)
!860 = !DILocation(line: 883, column: 13, scope: !848)
!861 = !DILocation(line: 0, scope: !848)
!862 = !DILocation(line: 0, scope: !845)
!863 = !DILocation(line: 893, column: 33, scope: !600)
!864 = !DILocation(line: 893, column: 48, scope: !600)
!865 = !DILocation(line: 894, column: 7, scope: !596)
!866 = !DILocation(line: 833, column: 25, scope: !596)
!867 = !DILocation(line: 896, column: 29, scope: !596)
!868 = !DILocation(line: 896, column: 7, scope: !596)
!869 = !DILocation(line: 904, column: 44, scope: !602)
!870 = !DILocation(line: 901, column: 28, scope: !602)
!871 = !DILocation(line: 907, column: 16, scope: !602)
!872 = !DILocation(line: 910, column: 33, scope: !602)
!873 = !{!874, !275, i64 1}
!874 = !{!"ip6_rout_hdr", !275, i64 0, !275, i64 1, !275, i64 2, !275, i64 3}
!875 = !DILocation(line: 910, column: 14, scope: !602)
!876 = !DILocation(line: 912, column: 15, scope: !877)
!877 = distinct !DILexicalBlock(scope: !602, file: !10, line: 912, column: 11)
!878 = !DILocation(line: 912, column: 19, scope: !877)
!879 = !DILocation(line: 912, column: 24, scope: !877)
!880 = !DILocation(line: 912, column: 33, scope: !877)
!881 = !DILocation(line: 912, column: 11, scope: !602)
!882 = !DILocation(line: 917, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !877, file: !10, line: 912, column: 44)
!884 = !DILocation(line: 918, column: 9, scope: !883)
!885 = !DILocation(line: 920, column: 9, scope: !883)
!886 = !DILocation(line: 924, column: 35, scope: !602)
!887 = !DILocation(line: 927, column: 11, scope: !888)
!888 = distinct !DILexicalBlock(scope: !602, file: !10, line: 927, column: 11)
!889 = !{!874, !275, i64 3}
!890 = !DILocation(line: 927, column: 11, scope: !602)
!891 = !DILocation(line: 929, column: 29, scope: !892)
!892 = distinct !DILexicalBlock(scope: !893, file: !10, line: 929, column: 13)
!893 = distinct !DILexicalBlock(scope: !888, file: !10, line: 927, column: 40)
!894 = !DILocation(line: 929, column: 13, scope: !893)
!895 = !DILocation(line: 931, column: 11, scope: !896)
!896 = distinct !DILexicalBlock(scope: !892, file: !10, line: 929, column: 36)
!897 = !DILocation(line: 933, column: 11, scope: !896)
!898 = !DILocation(line: 935, column: 11, scope: !896)
!899 = !DILocation(line: 938, column: 17, scope: !893)
!900 = !{!874, !275, i64 2}
!901 = !DILocation(line: 938, column: 9, scope: !893)
!902 = !DILocation(line: 947, column: 11, scope: !903)
!903 = distinct !DILexicalBlock(scope: !893, file: !10, line: 939, column: 9)
!904 = !DILocation(line: 949, column: 11, scope: !903)
!905 = !DILocation(line: 951, column: 11, scope: !903)
!906 = !DILocation(line: 0, scope: !903)
!907 = !DILocation(line: 955, column: 29, scope: !602)
!908 = !DILocation(line: 955, column: 7, scope: !602)
!909 = !DILocation(line: 963, column: 44, scope: !604)
!910 = !DILocation(line: 960, column: 28, scope: !604)
!911 = !DILocation(line: 966, column: 16, scope: !604)
!912 = !DILocation(line: 972, column: 21, scope: !913)
!913 = distinct !DILexicalBlock(scope: !604, file: !10, line: 972, column: 11)
!914 = !DILocation(line: 972, column: 16, scope: !913)
!915 = !DILocation(line: 972, column: 11, scope: !604)
!916 = !DILocation(line: 977, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !913, file: !10, line: 972, column: 26)
!918 = !DILocation(line: 978, column: 9, scope: !917)
!919 = !{!609, !283, i64 244}
!920 = !DILocation(line: 980, column: 9, scope: !917)
!921 = !DILocation(line: 983, column: 35, scope: !604)
!922 = !DILocation(line: 986, column: 11, scope: !923)
!923 = distinct !DILexicalBlock(scope: !604, file: !10, line: 986, column: 11)
!924 = !{!925, !283, i64 2}
!925 = !{!"ip6_frag_hdr", !275, i64 0, !275, i64 1, !283, i64 2, !323, i64 4}
!926 = !DILocation(line: 986, column: 35, scope: !923)
!927 = !DILocation(line: 986, column: 39, scope: !923)
!928 = !DILocation(line: 986, column: 57, scope: !923)
!929 = !DILocation(line: 986, column: 11, scope: !604)
!930 = !DILocation(line: 988, column: 48, scope: !931)
!931 = distinct !DILexicalBlock(scope: !923, file: !10, line: 986, column: 65)
!932 = !DILocation(line: 988, column: 9, scope: !931)
!933 = !DILocation(line: 990, column: 9, scope: !931)
!934 = !DILocation(line: 992, column: 9, scope: !931)
!935 = !DILocation(line: 996, column: 22, scope: !936)
!936 = distinct !DILexicalBlock(scope: !604, file: !10, line: 996, column: 11)
!937 = !DILocation(line: 996, column: 39, scope: !936)
!938 = !DILocation(line: 997, column: 65, scope: !936)
!939 = !DILocation(line: 996, column: 11, scope: !604)
!940 = !DILocation(line: 999, column: 9, scope: !941)
!941 = distinct !DILexicalBlock(scope: !936, file: !10, line: 997, column: 71)
!942 = !DILocation(line: 1000, column: 7, scope: !941)
!943 = !DILocation(line: 1003, column: 43, scope: !944)
!944 = distinct !DILexicalBlock(scope: !936, file: !10, line: 1000, column: 14)
!945 = !{!663, !283, i64 32}
!946 = !DILocation(line: 1004, column: 13, scope: !944)
!947 = !DILocation(line: 1006, column: 15, scope: !948)
!948 = distinct !DILexicalBlock(scope: !944, file: !10, line: 1006, column: 13)
!949 = !DILocation(line: 1006, column: 13, scope: !944)
!950 = !DILocation(line: 1012, column: 39, scope: !944)
!951 = !DILocation(line: 1013, column: 18, scope: !944)
!952 = !DILocation(line: 1015, column: 9, scope: !944)
!953 = !DILocation(line: 0, scope: !931)
!954 = !{!283, !283, i64 0}
!955 = !DILocation(line: 0, scope: !956)
!956 = distinct !DILexicalBlock(scope: !948, file: !10, line: 1006, column: 24)
!957 = !DILocation(line: 0, scope: !944)
!958 = !DILocation(line: 704, column: 19, scope: !573)
!959 = !DILocation(line: 0, scope: !585)
!960 = !DILocation(line: 528, column: 10, scope: !573)
!961 = !DILocation(line: 1032, column: 9, scope: !962)
!962 = distinct !DILexicalBlock(scope: !587, file: !10, line: 1032, column: 9)
!963 = !DILocation(line: 1032, column: 16, scope: !962)
!964 = !DILocation(line: 1032, column: 9, scope: !587)
!965 = !DILocation(line: 1034, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !962, file: !10, line: 1032, column: 39)
!967 = !DILocation(line: 1036, column: 7, scope: !966)
!968 = !DILocation(line: 1037, column: 7, scope: !966)
!969 = !DILocation(line: 1038, column: 7, scope: !966)
!970 = !DILocation(line: 0, scope: !604)
!971 = !DILocation(line: 1049, column: 37, scope: !573)
!972 = !DILocation(line: 1063, column: 13, scope: !973)
!973 = distinct !DILexicalBlock(scope: !573, file: !10, line: 1061, column: 3)
!974 = !DILocation(line: 1063, column: 5, scope: !973)
!975 = !DILocation(line: 1065, column: 7, scope: !976)
!976 = distinct !DILexicalBlock(scope: !973, file: !10, line: 1063, column: 21)
!977 = !DILocation(line: 1066, column: 7, scope: !976)
!978 = !DILocation(line: 1072, column: 7, scope: !976)
!979 = !DILocation(line: 1073, column: 7, scope: !976)
!980 = !DILocation(line: 1077, column: 7, scope: !976)
!981 = !DILocation(line: 1078, column: 7, scope: !976)
!982 = !DILocation(line: 1082, column: 7, scope: !976)
!983 = !DILocation(line: 1083, column: 7, scope: !976)
!984 = !DILocation(line: 1094, column: 34, scope: !985)
!985 = distinct !DILexicalBlock(scope: !976, file: !10, line: 1091, column: 9)
!986 = !DILocation(line: 1094, column: 9, scope: !985)
!987 = !DILocation(line: 1096, column: 15, scope: !988)
!988 = distinct !DILexicalBlock(scope: !985, file: !10, line: 1096, column: 13)
!989 = !DILocation(line: 1096, column: 62, scope: !988)
!990 = !DILocation(line: 1097, column: 14, scope: !988)
!991 = !{!621, !275, i64 6}
!992 = !DILocation(line: 1097, column: 33, scope: !988)
!993 = !DILocation(line: 1096, column: 13, scope: !985)
!994 = !DILocation(line: 1098, column: 11, scope: !995)
!995 = distinct !DILexicalBlock(scope: !988, file: !10, line: 1097, column: 54)
!996 = !DILocation(line: 1099, column: 9, scope: !995)
!997 = !DILocation(line: 1102, column: 9, scope: !985)
!998 = !{!609, !283, i64 202}
!999 = !DILocation(line: 1103, column: 9, scope: !985)
!1000 = !DILocation(line: 1105, column: 7, scope: !976)
!1001 = !DILocation(line: 1106, column: 7, scope: !976)
!1002 = !DILocation(line: 1111, column: 25, scope: !573)
!1003 = !DILocation(line: 1113, column: 30, scope: !573)
!1004 = !DILocation(line: 1114, column: 37, scope: !573)
!1005 = !DILocation(line: 1115, column: 3, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !573, file: !10, line: 1115, column: 3)
!1007 = !DILocation(line: 1116, column: 3, scope: !1008)
!1008 = distinct !DILexicalBlock(scope: !573, file: !10, line: 1116, column: 3)
!1009 = !DILocation(line: 1118, column: 3, scope: !573)
!1010 = !DILocation(line: 0, scope: !626)
!1011 = !DILocation(line: 1119, column: 1, scope: !573)
!1012 = distinct !DISubprogram(name: "ip6_input_accept", scope: !10, file: !10, line: 469, type: !1013, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1015)
!1013 = !DISubroutineType(types: !1014)
!1014 = !{!20, !181}
!1015 = !{!1016, !1017}
!1016 = !DILocalVariable(name: "netif", arg: 1, scope: !1012, file: !10, line: 469, type: !181)
!1017 = !DILocalVariable(name: "i", scope: !1018, file: !10, line: 473, type: !60)
!1018 = distinct !DILexicalBlock(scope: !1019, file: !10, line: 472, column: 27)
!1019 = distinct !DILexicalBlock(scope: !1012, file: !10, line: 472, column: 7)
!1020 = !DILocation(line: 469, column: 32, scope: !1012)
!1021 = !DILocation(line: 472, column: 7, scope: !1019)
!1022 = !DILocation(line: 472, column: 7, scope: !1012)
!1023 = !DILocation(line: 473, column: 10, scope: !1018)
!1024 = !DILocation(line: 478, column: 10, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !1018, file: !10, line: 478, column: 5)
!1026 = !DILocation(line: 478, column: 5, scope: !1025)
!1027 = !DILocation(line: 479, column: 11, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !10, line: 479, column: 11)
!1029 = distinct !DILexicalBlock(scope: !1030, file: !10, line: 478, column: 51)
!1030 = distinct !DILexicalBlock(scope: !1025, file: !10, line: 478, column: 5)
!1031 = !DILocation(line: 479, column: 60, scope: !1028)
!1032 = !DILocation(line: 480, column: 11, scope: !1028)
!1033 = !DILocation(line: 479, column: 11, scope: !1029)
!1034 = !DILocation(line: 478, column: 5, scope: !1030)
!1035 = !DILocation(line: 0, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1028, file: !10, line: 485, column: 9)
!1037 = !DILocation(line: 492, column: 1, scope: !1012)
!1038 = !DILocation(line: 490, column: 3, scope: !1019)
!1039 = distinct !DISubprogram(name: "ip6_output_if", scope: !10, file: !10, line: 1149, type: !1040, isLocal: false, isDefinition: true, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1042)
!1040 = !DISubroutineType(types: !1041)
!1041 = !{!202, !207, !70, !70, !60, !60, !60, !181}
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050}
!1043 = !DILocalVariable(name: "p", arg: 1, scope: !1039, file: !10, line: 1149, type: !207)
!1044 = !DILocalVariable(name: "src", arg: 2, scope: !1039, file: !10, line: 1149, type: !70)
!1045 = !DILocalVariable(name: "dest", arg: 3, scope: !1039, file: !10, line: 1149, type: !70)
!1046 = !DILocalVariable(name: "hl", arg: 4, scope: !1039, file: !10, line: 1150, type: !60)
!1047 = !DILocalVariable(name: "tc", arg: 5, scope: !1039, file: !10, line: 1150, type: !60)
!1048 = !DILocalVariable(name: "nexth", arg: 6, scope: !1039, file: !10, line: 1151, type: !60)
!1049 = !DILocalVariable(name: "netif", arg: 7, scope: !1039, file: !10, line: 1151, type: !181)
!1050 = !DILocalVariable(name: "src_used", scope: !1039, file: !10, line: 1153, type: !70)
!1051 = !DILocation(line: 1149, column: 28, scope: !1039)
!1052 = !DILocation(line: 1149, column: 49, scope: !1039)
!1053 = !DILocation(line: 1149, column: 72, scope: !1039)
!1054 = !DILocation(line: 1150, column: 19, scope: !1039)
!1055 = !DILocation(line: 1150, column: 28, scope: !1039)
!1056 = !DILocation(line: 1151, column: 19, scope: !1039)
!1057 = !DILocation(line: 1151, column: 40, scope: !1039)
!1058 = !DILocation(line: 1153, column: 21, scope: !1039)
!1059 = !DILocation(line: 1154, column: 12, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1039, file: !10, line: 1154, column: 7)
!1061 = !DILocation(line: 1155, column: 13, scope: !1062)
!1062 = distinct !DILexicalBlock(scope: !1063, file: !10, line: 1155, column: 9)
!1063 = distinct !DILexicalBlock(scope: !1060, file: !10, line: 1154, column: 32)
!1064 = !DILocation(line: 1154, column: 7, scope: !1039)
!1065 = !DILocation(line: 1155, column: 24, scope: !1062)
!1066 = !DILocation(line: 1155, column: 9, scope: !1063)
!1067 = !DILocation(line: 1156, column: 18, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1062, file: !10, line: 1155, column: 45)
!1069 = !DILocation(line: 1157, column: 21, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1068, file: !10, line: 1157, column: 11)
!1071 = !DILocation(line: 1157, column: 30, scope: !1070)
!1072 = !DILocation(line: 1157, column: 33, scope: !1070)
!1073 = !DILocation(line: 1157, column: 11, scope: !1068)
!1074 = !DILocation(line: 1160, column: 9, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1070, file: !10, line: 1157, column: 59)
!1076 = !{!609, !283, i64 200}
!1077 = !DILocation(line: 1161, column: 9, scope: !1075)
!1078 = !DILocation(line: 0, scope: !1039)
!1079 = !DILocation(line: 1165, column: 10, scope: !1039)
!1080 = !DILocation(line: 1165, column: 3, scope: !1039)
!1081 = !DILocation(line: 0, scope: !1075)
!1082 = !DILocation(line: 1166, column: 1, scope: !1039)
!1083 = distinct !DISubprogram(name: "ip6_output_if_src", scope: !10, file: !10, line: 1173, type: !1040, isLocal: false, isDefinition: true, scopeLine: 1176, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1084)
!1084 = !{!1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093}
!1085 = !DILocalVariable(name: "p", arg: 1, scope: !1083, file: !10, line: 1173, type: !207)
!1086 = !DILocalVariable(name: "src", arg: 2, scope: !1083, file: !10, line: 1173, type: !70)
!1087 = !DILocalVariable(name: "dest", arg: 3, scope: !1083, file: !10, line: 1173, type: !70)
!1088 = !DILocalVariable(name: "hl", arg: 4, scope: !1083, file: !10, line: 1174, type: !60)
!1089 = !DILocalVariable(name: "tc", arg: 5, scope: !1083, file: !10, line: 1174, type: !60)
!1090 = !DILocalVariable(name: "nexth", arg: 6, scope: !1083, file: !10, line: 1175, type: !60)
!1091 = !DILocalVariable(name: "netif", arg: 7, scope: !1083, file: !10, line: 1175, type: !181)
!1092 = !DILocalVariable(name: "ip6hdr", scope: !1083, file: !10, line: 1177, type: !97)
!1093 = !DILocalVariable(name: "dest_addr", scope: !1083, file: !10, line: 1178, type: !72)
!1094 = !DILocation(line: 1173, column: 32, scope: !1083)
!1095 = !DILocation(line: 1173, column: 53, scope: !1083)
!1096 = !DILocation(line: 1173, column: 76, scope: !1083)
!1097 = !DILocation(line: 1174, column: 19, scope: !1083)
!1098 = !DILocation(line: 1174, column: 28, scope: !1083)
!1099 = !DILocation(line: 1175, column: 19, scope: !1083)
!1100 = !DILocation(line: 1175, column: 40, scope: !1083)
!1101 = !DILocation(line: 1178, column: 3, scope: !1083)
!1102 = !DILocation(line: 1181, column: 3, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1104, file: !10, line: 1181, column: 3)
!1104 = distinct !DILexicalBlock(scope: !1083, file: !10, line: 1181, column: 3)
!1105 = !{!616, !275, i64 22}
!1106 = !DILocation(line: 1181, column: 3, scope: !1104)
!1107 = !DILocation(line: 1181, column: 3, scope: !1108)
!1108 = distinct !DILexicalBlock(scope: !1109, file: !10, line: 1181, column: 3)
!1109 = distinct !DILexicalBlock(scope: !1103, file: !10, line: 1181, column: 3)
!1110 = !DILocation(line: 1181, column: 3, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1112, file: !10, line: 1181, column: 3)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !10, line: 1181, column: 3)
!1113 = distinct !DILexicalBlock(scope: !1108, file: !10, line: 1181, column: 3)
!1114 = !DILocation(line: 1184, column: 12, scope: !1115)
!1115 = distinct !DILexicalBlock(scope: !1083, file: !10, line: 1184, column: 7)
!1116 = !DILocation(line: 1184, column: 7, scope: !1083)
!1117 = !DILocation(line: 1192, column: 9, scope: !1118)
!1118 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1192, column: 9)
!1119 = distinct !DILexicalBlock(scope: !1115, file: !10, line: 1184, column: 32)
!1120 = !DILocation(line: 1192, column: 9, scope: !1119)
!1121 = !DILocation(line: 1193, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1123, file: !10, line: 1193, column: 7)
!1123 = distinct !DILexicalBlock(scope: !1118, file: !10, line: 1192, column: 49)
!1124 = !DILocation(line: 1194, column: 7, scope: !1123)
!1125 = !DILocation(line: 1196, column: 5, scope: !1123)
!1126 = !DILocation(line: 1200, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1200, column: 9)
!1128 = !DILocation(line: 1200, column: 9, scope: !1119)
!1129 = !DILocation(line: 1202, column: 7, scope: !1130)
!1130 = distinct !DILexicalBlock(scope: !1127, file: !10, line: 1200, column: 39)
!1131 = !DILocation(line: 1203, column: 7, scope: !1130)
!1132 = !DILocation(line: 1206, column: 35, scope: !1119)
!1133 = !DILocation(line: 1177, column: 19, scope: !1083)
!1134 = !DILocation(line: 1207, column: 5, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1136, file: !10, line: 1207, column: 5)
!1136 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1207, column: 5)
!1137 = !DILocation(line: 1207, column: 5, scope: !1136)
!1138 = !DILocation(line: 1207, column: 5, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1140, file: !10, line: 1207, column: 5)
!1140 = distinct !DILexicalBlock(scope: !1135, file: !10, line: 1207, column: 5)
!1141 = !DILocation(line: 1207, column: 5, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !10, line: 1207, column: 5)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !10, line: 1207, column: 5)
!1144 = distinct !DILexicalBlock(scope: !1139, file: !10, line: 1207, column: 5)
!1145 = !DILocation(line: 1210, column: 5, scope: !1119)
!1146 = !{!621, !275, i64 7}
!1147 = !DILocation(line: 1211, column: 5, scope: !1119)
!1148 = !DILocation(line: 1214, column: 5, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1214, column: 5)
!1150 = !DILocation(line: 1216, column: 5, scope: !1119)
!1151 = !DILocation(line: 1217, column: 5, scope: !1119)
!1152 = !DILocation(line: 1219, column: 13, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1219, column: 9)
!1154 = !DILocation(line: 1219, column: 9, scope: !1119)
!1155 = !DILocation(line: 1221, column: 5, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !10, line: 1219, column: 22)
!1157 = !DILocation(line: 1223, column: 5, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1119, file: !10, line: 1223, column: 5)
!1159 = !DILocation(line: 1225, column: 3, scope: !1119)
!1160 = !DILocation(line: 1227, column: 35, scope: !1161)
!1161 = distinct !DILexicalBlock(scope: !1115, file: !10, line: 1225, column: 10)
!1162 = !DILocation(line: 1228, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1161, file: !10, line: 1228, column: 5)
!1164 = !DILocation(line: 1229, column: 5, scope: !1161)
!1165 = !DILocation(line: 1233, column: 3, scope: !1083)
!1166 = !{!609, !283, i64 186}
!1167 = !DILocation(line: 1263, column: 7, scope: !1168)
!1168 = distinct !DILexicalBlock(scope: !1083, file: !10, line: 1263, column: 7)
!1169 = !{!281, !283, i64 252}
!1170 = !DILocation(line: 1263, column: 25, scope: !1168)
!1171 = !DILocation(line: 1263, column: 32, scope: !1168)
!1172 = !DILocation(line: 1263, column: 42, scope: !1168)
!1173 = !DILocation(line: 1263, column: 40, scope: !1168)
!1174 = !DILocation(line: 1263, column: 7, scope: !1083)
!1175 = !DILocation(line: 1264, column: 12, scope: !1176)
!1176 = distinct !DILexicalBlock(scope: !1168, file: !10, line: 1263, column: 81)
!1177 = !DILocation(line: 1264, column: 5, scope: !1176)
!1178 = !DILocation(line: 1269, column: 17, scope: !1083)
!1179 = !{!281, !274, i64 208}
!1180 = !DILocation(line: 1269, column: 10, scope: !1083)
!1181 = !DILocation(line: 1269, column: 3, scope: !1083)
!1182 = !DILocation(line: 0, scope: !1083)
!1183 = !DILocation(line: 0, scope: !1130)
!1184 = !DILocation(line: 1270, column: 1, scope: !1083)
!1185 = !DILocation(line: 194, column: 43, scope: !2)
!1186 = !DILocation(line: 196, column: 2, scope: !2)
!1187 = !DILocation(line: 196, column: 10, scope: !2)
!1188 = !DILocation(line: 197, column: 2, scope: !2)
!1189 = !DILocation(line: 198, column: 2, scope: !1190)
!1190 = distinct !DILexicalBlock(scope: !1191, file: !3, line: 198, column: 2)
!1191 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!1192 = !DILocation(line: 199, column: 2, scope: !2)
!1193 = !DILocation(line: 200, column: 1, scope: !2)
!1194 = distinct !DISubprogram(name: "ip6_output", scope: !10, file: !10, line: 1291, type: !1195, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1197)
!1195 = !DISubroutineType(types: !1196)
!1196 = !{!202, !207, !70, !70, !60, !60, !60}
!1197 = !{!1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207}
!1198 = !DILocalVariable(name: "p", arg: 1, scope: !1194, file: !10, line: 1291, type: !207)
!1199 = !DILocalVariable(name: "src", arg: 2, scope: !1194, file: !10, line: 1291, type: !70)
!1200 = !DILocalVariable(name: "dest", arg: 3, scope: !1194, file: !10, line: 1291, type: !70)
!1201 = !DILocalVariable(name: "hl", arg: 4, scope: !1194, file: !10, line: 1292, type: !60)
!1202 = !DILocalVariable(name: "tc", arg: 5, scope: !1194, file: !10, line: 1292, type: !60)
!1203 = !DILocalVariable(name: "nexth", arg: 6, scope: !1194, file: !10, line: 1292, type: !60)
!1204 = !DILocalVariable(name: "netif", scope: !1194, file: !10, line: 1294, type: !181)
!1205 = !DILocalVariable(name: "ip6hdr", scope: !1194, file: !10, line: 1295, type: !97)
!1206 = !DILocalVariable(name: "src_addr", scope: !1194, file: !10, line: 1296, type: !72)
!1207 = !DILocalVariable(name: "dest_addr", scope: !1194, file: !10, line: 1296, type: !72)
!1208 = !DILocation(line: 1291, column: 25, scope: !1194)
!1209 = !DILocation(line: 1291, column: 46, scope: !1194)
!1210 = !DILocation(line: 1291, column: 69, scope: !1194)
!1211 = !DILocation(line: 1292, column: 16, scope: !1194)
!1212 = !DILocation(line: 1292, column: 25, scope: !1194)
!1213 = !DILocation(line: 1292, column: 34, scope: !1194)
!1214 = !DILocation(line: 1296, column: 3, scope: !1194)
!1215 = !DILocation(line: 1298, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1217, file: !10, line: 1298, column: 3)
!1217 = distinct !DILexicalBlock(scope: !1194, file: !10, line: 1298, column: 3)
!1218 = !DILocation(line: 1298, column: 3, scope: !1217)
!1219 = !DILocation(line: 1298, column: 3, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1221, file: !10, line: 1298, column: 3)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !10, line: 1298, column: 3)
!1222 = !DILocation(line: 1298, column: 3, scope: !1223)
!1223 = distinct !DILexicalBlock(scope: !1224, file: !10, line: 1298, column: 3)
!1224 = distinct !DILexicalBlock(scope: !1225, file: !10, line: 1298, column: 3)
!1225 = distinct !DILexicalBlock(scope: !1220, file: !10, line: 1298, column: 3)
!1226 = !DILocation(line: 1300, column: 12, scope: !1227)
!1227 = distinct !DILexicalBlock(scope: !1194, file: !10, line: 1300, column: 7)
!1228 = !DILocation(line: 1300, column: 7, scope: !1194)
!1229 = !DILocation(line: 1301, column: 13, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1227, file: !10, line: 1300, column: 32)
!1231 = !DILocation(line: 1294, column: 17, scope: !1194)
!1232 = !DILocation(line: 1302, column: 3, scope: !1230)
!1233 = !DILocation(line: 1304, column: 35, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1227, file: !10, line: 1302, column: 10)
!1235 = !DILocation(line: 1295, column: 19, scope: !1194)
!1236 = !DILocation(line: 1305, column: 5, scope: !1237)
!1237 = distinct !DILexicalBlock(scope: !1234, file: !10, line: 1305, column: 5)
!1238 = !DILocation(line: 1306, column: 5, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1234, file: !10, line: 1306, column: 5)
!1240 = !DILocation(line: 1296, column: 14, scope: !1194)
!1241 = !DILocation(line: 1296, column: 24, scope: !1194)
!1242 = !DILocation(line: 1307, column: 13, scope: !1234)
!1243 = !DILocation(line: 0, scope: !1234)
!1244 = !DILocation(line: 1310, column: 13, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1194, file: !10, line: 1310, column: 7)
!1246 = !DILocation(line: 1310, column: 7, scope: !1194)
!1247 = !DILocation(line: 1320, column: 5, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !10, line: 1310, column: 22)
!1249 = !DILocation(line: 1321, column: 5, scope: !1248)
!1250 = !DILocation(line: 1324, column: 10, scope: !1194)
!1251 = !DILocation(line: 1324, column: 3, scope: !1194)
!1252 = !DILocation(line: 0, scope: !1194)
!1253 = !DILocation(line: 0, scope: !1248)
!1254 = !DILocation(line: 1325, column: 1, scope: !1194)
!1255 = distinct !DISubprogram(name: "ip6_options_add_hbh_ra", scope: !10, file: !10, line: 1403, type: !1256, isLocal: false, isDefinition: true, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1258)
!1256 = !DISubroutineType(types: !1257)
!1257 = !{!202, !207, !60, !60}
!1258 = !{!1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266}
!1259 = !DILocalVariable(name: "p", arg: 1, scope: !1255, file: !10, line: 1403, type: !207)
!1260 = !DILocalVariable(name: "nexth", arg: 2, scope: !1255, file: !10, line: 1403, type: !60)
!1261 = !DILocalVariable(name: "value", arg: 3, scope: !1255, file: !10, line: 1403, type: !60)
!1262 = !DILocalVariable(name: "opt_data", scope: !1255, file: !10, line: 1405, type: !125)
!1263 = !DILocalVariable(name: "offset", scope: !1255, file: !10, line: 1406, type: !67)
!1264 = !DILocalVariable(name: "hbh_hdr", scope: !1255, file: !10, line: 1407, type: !115)
!1265 = !DILocalVariable(name: "opt_hdr", scope: !1255, file: !10, line: 1408, type: !120)
!1266 = !DILocalVariable(name: "hlen", scope: !1255, file: !10, line: 1411, type: !581)
!1267 = !DILocation(line: 1403, column: 37, scope: !1255)
!1268 = !DILocation(line: 1403, column: 45, scope: !1255)
!1269 = !DILocation(line: 1403, column: 57, scope: !1255)
!1270 = !DILocation(line: 1406, column: 9, scope: !1255)
!1271 = !DILocation(line: 1411, column: 14, scope: !1255)
!1272 = !DILocation(line: 1413, column: 7, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1255, file: !10, line: 1413, column: 7)
!1274 = !DILocation(line: 1413, column: 7, scope: !1255)
!1275 = !DILocation(line: 1415, column: 5, scope: !1276)
!1276 = distinct !DILexicalBlock(scope: !1273, file: !10, line: 1413, column: 62)
!1277 = !DILocation(line: 1416, column: 5, scope: !1276)
!1278 = !DILocation(line: 1420, column: 38, scope: !1255)
!1279 = !DILocation(line: 1407, column: 23, scope: !1255)
!1280 = !DILocation(line: 1421, column: 26, scope: !1255)
!1281 = !{!766, !275, i64 0}
!1282 = !DILocation(line: 1422, column: 12, scope: !1255)
!1283 = !DILocation(line: 1422, column: 18, scope: !1255)
!1284 = !DILocation(line: 1426, column: 52, scope: !1255)
!1285 = !DILocation(line: 1408, column: 23, scope: !1255)
!1286 = !DILocation(line: 1427, column: 25, scope: !1255)
!1287 = !DILocation(line: 1428, column: 3, scope: !1255)
!1288 = !DILocation(line: 1428, column: 25, scope: !1255)
!1289 = !DILocation(line: 1432, column: 30, scope: !1255)
!1290 = !DILocation(line: 1405, column: 9, scope: !1255)
!1291 = !DILocation(line: 1433, column: 15, scope: !1255)
!1292 = !DILocation(line: 1434, column: 3, scope: !1255)
!1293 = !DILocation(line: 1434, column: 15, scope: !1255)
!1294 = !DILocation(line: 1438, column: 52, scope: !1255)
!1295 = !DILocation(line: 1439, column: 25, scope: !1255)
!1296 = !DILocation(line: 1440, column: 3, scope: !1255)
!1297 = !DILocation(line: 1440, column: 25, scope: !1255)
!1298 = !DILocation(line: 1442, column: 3, scope: !1255)
!1299 = !DILocation(line: 0, scope: !1255)
!1300 = !DILocation(line: 0, scope: !1276)
!1301 = !DILocation(line: 1443, column: 1, scope: !1255)
