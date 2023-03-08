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
  br i1 %4, label %24, label %5, !dbg !278

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 0, !dbg !279
  %7 = load %struct.netif*, %struct.netif** %6, align 8, !dbg !279, !tbaa !280
  %8 = icmp eq %struct.netif* %7, null, !dbg !284
  br i1 %8, label %9, label %24, !dbg !285

; <label>:9:                                      ; preds = %5
  %10 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 21, !dbg !286
  %11 = load i8, i8* %10, align 1, !dbg !286, !tbaa !289
  %12 = and i8 %11, 5, !dbg !290
  %13 = icmp eq i8 %12, 5, !dbg !290
  br i1 %13, label %14, label %270, !dbg !290

; <label>:14:                                     ; preds = %9
  %15 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !291
  %16 = load i8, i8* %15, align 4, !dbg !291, !tbaa !292
  %17 = icmp eq i8 %16, 0, !dbg !291
  br i1 %17, label %23, label %18, !dbg !294

; <label>:18:                                     ; preds = %14
  %19 = getelementptr inbounds %struct.netif, %struct.netif* %3, i64 0, i32 23, !dbg !295
  %20 = load i8, i8* %19, align 8, !dbg !295, !tbaa !296
  %21 = add i8 %20, 1, !dbg !295
  %22 = icmp eq i8 %16, %21, !dbg !295
  br i1 %22, label %23, label %270, !dbg !297

; <label>:23:                                     ; preds = %14, %18
  br label %270, !dbg !298

; <label>:24:                                     ; preds = %2, %5
  %25 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 1, !dbg !299
  %26 = load i8, i8* %25, align 4, !dbg !299, !tbaa !292
  %27 = icmp eq i8 %26, 0, !dbg !299
  br i1 %27, label %44, label %28, !dbg !301

; <label>:28:                                     ; preds = %24
  br i1 %4, label %270, label %29, !dbg !303

; <label>:29:                                     ; preds = %28, %40
  %30 = phi %struct.netif* [ %42, %40 ], [ %3, %28 ]
  %31 = getelementptr inbounds %struct.netif, %struct.netif* %30, i64 0, i32 23, !dbg !306
  %32 = load i8, i8* %31, align 8, !dbg !306, !tbaa !296
  %33 = add i8 %32, 1, !dbg !306
  %34 = icmp eq i8 %26, %33, !dbg !306
  br i1 %34, label %35, label %40, !dbg !310

; <label>:35:                                     ; preds = %29
  %36 = getelementptr inbounds %struct.netif, %struct.netif* %30, i64 0, i32 21, !dbg !311
  %37 = load i8, i8* %36, align 1, !dbg !311, !tbaa !289
  %38 = and i8 %37, 5, !dbg !312
  %39 = icmp eq i8 %38, 5, !dbg !312
  br i1 %39, label %270, label %40, !dbg !312

; <label>:40:                                     ; preds = %35, %29
  %41 = getelementptr inbounds %struct.netif, %struct.netif* %30, i64 0, i32 0, !dbg !313
  %42 = load %struct.netif*, %struct.netif** %41, align 8, !dbg !303, !tbaa !273
  %43 = icmp eq %struct.netif* %42, null, !dbg !313
  br i1 %43, label %270, label %29, !dbg !303, !llvm.loop !314

; <label>:44:                                     ; preds = %24
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !316
  %46 = load i32, i32* %45, align 4, !dbg !316, !tbaa !318
  %47 = and i32 %46, 49407, !dbg !316
  %48 = icmp eq i32 %47, 33022, !dbg !316
  br i1 %48, label %71, label %49, !dbg !316

; <label>:49:                                     ; preds = %44
  %50 = trunc i32 %46 to i16, !dbg !316
  %51 = and i16 %50, -28673, !dbg !316
  switch i16 %51, label %52 [
    i16 511, label %71
    i16 767, label %71
  ], !dbg !316

; <label>:52:                                     ; preds = %49
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0, !dbg !320
  %54 = load i32, i32* %53, align 4, !dbg !320, !tbaa !318
  %55 = and i32 %54, 49407, !dbg !320
  %56 = icmp eq i32 %55, 33022, !dbg !320
  br i1 %56, label %71, label %57, !dbg !321

; <label>:57:                                     ; preds = %52
  %58 = icmp eq i32 %54, 0, !dbg !322
  br i1 %58, label %59, label %137, !dbg !322

; <label>:59:                                     ; preds = %57
  %60 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !322
  %61 = load i32, i32* %60, align 4, !dbg !322, !tbaa !318
  %62 = icmp eq i32 %61, 0, !dbg !322
  br i1 %62, label %63, label %137, !dbg !322

; <label>:63:                                     ; preds = %59
  %64 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !322
  %65 = load i32, i32* %64, align 4, !dbg !322, !tbaa !318
  %66 = icmp eq i32 %65, 0, !dbg !322
  br i1 %66, label %67, label %137, !dbg !322

; <label>:67:                                     ; preds = %63
  %68 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !322
  %69 = load i32, i32* %68, align 4, !dbg !322, !tbaa !318
  %70 = icmp eq i32 %69, 16777216, !dbg !322
  br i1 %70, label %71, label %137, !dbg !323

; <label>:71:                                     ; preds = %49, %49, %67, %52, %44
  %72 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1, !dbg !324
  %73 = load i8, i8* %72, align 4, !dbg !324, !tbaa !292
  %74 = icmp eq i8 %73, 0, !dbg !324
  br i1 %74, label %76, label %75, !dbg !327

; <label>:75:                                     ; preds = %71
  br i1 %4, label %270, label %82, !dbg !328

; <label>:76:                                     ; preds = %71
  br i1 %4, label %270, label %77, !dbg !331

; <label>:77:                                     ; preds = %76
  %78 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 0
  %79 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %80 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %81 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  br label %97, !dbg !331

; <label>:82:                                     ; preds = %75, %93
  %83 = phi %struct.netif* [ %95, %93 ], [ %3, %75 ]
  %84 = getelementptr inbounds %struct.netif, %struct.netif* %83, i64 0, i32 21, !dbg !334
  %85 = load i8, i8* %84, align 1, !dbg !334, !tbaa !289
  %86 = and i8 %85, 5, !dbg !338
  %87 = icmp eq i8 %86, 5, !dbg !338
  br i1 %87, label %88, label %93, !dbg !338

; <label>:88:                                     ; preds = %82
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %83, i64 0, i32 23, !dbg !339
  %90 = load i8, i8* %89, align 8, !dbg !339, !tbaa !296
  %91 = add i8 %90, 1, !dbg !339
  %92 = icmp eq i8 %73, %91, !dbg !339
  br i1 %92, label %270, label %93, !dbg !340

; <label>:93:                                     ; preds = %82, %88
  %94 = getelementptr inbounds %struct.netif, %struct.netif* %83, i64 0, i32 0, !dbg !341
  %95 = load %struct.netif*, %struct.netif** %94, align 8, !dbg !341, !tbaa !280
  %96 = icmp eq %struct.netif* %95, null, !dbg !341
  br i1 %96, label %270, label %82, !dbg !328, !llvm.loop !342

; <label>:97:                                     ; preds = %77, %133
  %98 = phi %struct.netif* [ %3, %77 ], [ %135, %133 ]
  %99 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 21, !dbg !344
  %100 = load i8, i8* %99, align 1, !dbg !344, !tbaa !289
  %101 = and i8 %100, 5, !dbg !348
  %102 = icmp eq i8 %101, 5, !dbg !348
  br i1 %102, label %103, label %133, !dbg !348

; <label>:103:                                    ; preds = %97
  %104 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 5, i64 0, !dbg !350
  %105 = load i8, i8* %104, align 1, !dbg !350, !tbaa !355
  %106 = and i8 %105, 16, !dbg !350
  %107 = icmp eq i8 %106, 0, !dbg !350
  br i1 %107, label %128, label %108, !dbg !356

; <label>:108:                                    ; preds = %103
  %109 = load i32, i32* %78, align 4, !dbg !357, !tbaa !318
  %110 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !357
  %111 = load i32, i32* %110, align 8, !dbg !357, !tbaa !355
  %112 = icmp eq i32 %109, %111, !dbg !357
  br i1 %112, label %113, label %128, !dbg !357

; <label>:113:                                    ; preds = %108
  %114 = load i32, i32* %79, align 4, !dbg !357, !tbaa !318
  %115 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !357
  %116 = load i32, i32* %115, align 4, !dbg !357, !tbaa !355
  %117 = icmp eq i32 %114, %116, !dbg !357
  br i1 %117, label %118, label %128, !dbg !357

; <label>:118:                                    ; preds = %113
  %119 = load i32, i32* %80, align 4, !dbg !357, !tbaa !318
  %120 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !357
  %121 = load i32, i32* %120, align 8, !dbg !357, !tbaa !355
  %122 = icmp eq i32 %119, %121, !dbg !357
  br i1 %122, label %123, label %128, !dbg !357

; <label>:123:                                    ; preds = %118
  %124 = load i32, i32* %81, align 4, !dbg !357, !tbaa !318
  %125 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !357
  %126 = load i32, i32* %125, align 4, !dbg !357, !tbaa !355
  %127 = icmp eq i32 %124, %126, !dbg !357
  br i1 %127, label %270, label %128, !dbg !358

; <label>:128:                                    ; preds = %103, %108, %113, %118, %123
  %129 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 5, i64 1, !dbg !350
  %130 = load i8, i8* %129, align 1, !dbg !350, !tbaa !355
  %131 = and i8 %130, 16, !dbg !350
  %132 = icmp eq i8 %131, 0, !dbg !350
  br i1 %132, label %292, label %272, !dbg !356

; <label>:133:                                    ; preds = %292, %297, %302, %307, %312, %97
  %134 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 0, !dbg !359
  %135 = load %struct.netif*, %struct.netif** %134, align 8, !dbg !359, !tbaa !280
  %136 = icmp eq %struct.netif* %135, null, !dbg !359
  br i1 %136, label %270, label %97, !dbg !331, !llvm.loop !360

; <label>:137:                                    ; preds = %67, %63, %59, %57
  br i1 %4, label %189, label %138, !dbg !362

; <label>:138:                                    ; preds = %137
  %139 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %140 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %141 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  br label %142, !dbg !362

; <label>:142:                                    ; preds = %138, %185
  %143 = phi %struct.netif* [ %3, %138 ], [ %187, %185 ]
  %144 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 21, !dbg !364
  %145 = load i8, i8* %144, align 1, !dbg !364, !tbaa !289
  %146 = and i8 %145, 5, !dbg !368
  %147 = icmp eq i8 %146, 5, !dbg !368
  br i1 %147, label %148, label %185, !dbg !368

; <label>:148:                                    ; preds = %142
  %149 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 5, i64 0, !dbg !369
  %150 = load i8, i8* %149, align 1, !dbg !369, !tbaa !355
  %151 = and i8 %150, 16, !dbg !369
  %152 = icmp eq i8 %151, 0, !dbg !369
  br i1 %152, label %180, label %153, !dbg !374

; <label>:153:                                    ; preds = %148
  %154 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !375
  %155 = load i32, i32* %154, align 8, !dbg !375, !tbaa !355
  %156 = icmp eq i32 %46, %155, !dbg !375
  br i1 %156, label %157, label %180, !dbg !375

; <label>:157:                                    ; preds = %153
  %158 = load i32, i32* %139, align 4, !dbg !375, !tbaa !318
  %159 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !375
  %160 = load i32, i32* %159, align 4, !dbg !375, !tbaa !355
  %161 = icmp eq i32 %158, %160, !dbg !375
  br i1 %161, label %162, label %180, !dbg !375

; <label>:162:                                    ; preds = %157
  %163 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !375
  %164 = load i8, i8* %163, align 8, !dbg !375, !tbaa !355
  %165 = icmp eq i8 %164, 0, !dbg !375
  br i1 %165, label %166, label %180, !dbg !376

; <label>:166:                                    ; preds = %162
  %167 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 6, i64 0, !dbg !377
  %168 = load i32, i32* %167, align 4, !dbg !377, !tbaa !318
  %169 = icmp eq i32 %168, 0, !dbg !377
  br i1 %169, label %270, label %170, !dbg !378

; <label>:170:                                    ; preds = %166
  %171 = load i32, i32* %140, align 4, !dbg !379, !tbaa !318
  %172 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !379
  %173 = load i32, i32* %172, align 8, !dbg !379, !tbaa !355
  %174 = icmp eq i32 %171, %173, !dbg !379
  br i1 %174, label %175, label %180, !dbg !379

; <label>:175:                                    ; preds = %170
  %176 = load i32, i32* %141, align 4, !dbg !379, !tbaa !318
  %177 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !379
  %178 = load i32, i32* %177, align 4, !dbg !379, !tbaa !355
  %179 = icmp eq i32 %176, %178, !dbg !379
  br i1 %179, label %270, label %180, !dbg !380

; <label>:180:                                    ; preds = %148, %153, %157, %162, %170, %175
  %181 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 5, i64 1, !dbg !369
  %182 = load i8, i8* %181, align 1, !dbg !369, !tbaa !355
  %183 = and i8 %182, 16, !dbg !369
  %184 = icmp eq i8 %183, 0, !dbg !369
  br i1 %184, label %397, label %370, !dbg !374

; <label>:185:                                    ; preds = %397, %402, %406, %411, %419, %424, %142
  %186 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 0, !dbg !381
  %187 = load %struct.netif*, %struct.netif** %186, align 8, !dbg !362, !tbaa !273
  %188 = icmp eq %struct.netif* %187, null, !dbg !381
  br i1 %188, label %189, label %142, !dbg !362, !llvm.loop !382

; <label>:189:                                    ; preds = %185, %137
  %190 = tail call %struct.netif* @nd6_find_route(%struct.ip6_addr* %1) #7, !dbg !384
  %191 = icmp eq %struct.netif* %190, null, !dbg !385
  br i1 %191, label %192, label %270, !dbg !387

; <label>:192:                                    ; preds = %189
  %193 = icmp eq %struct.ip6_addr* %0, null, !dbg !388
  br i1 %193, label %261, label %194, !dbg !388

; <label>:194:                                    ; preds = %192
  %195 = load i32, i32* %53, align 4, !dbg !388, !tbaa !318
  %196 = icmp eq i32 %195, 0, !dbg !388
  br i1 %196, label %197, label %209, !dbg !388

; <label>:197:                                    ; preds = %194
  %198 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1, !dbg !388
  %199 = load i32, i32* %198, align 4, !dbg !388, !tbaa !318
  %200 = icmp eq i32 %199, 0, !dbg !388
  br i1 %200, label %201, label %209, !dbg !388

; <label>:201:                                    ; preds = %197
  %202 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2, !dbg !388
  %203 = load i32, i32* %202, align 4, !dbg !388, !tbaa !318
  %204 = icmp eq i32 %203, 0, !dbg !388
  br i1 %204, label %205, label %209, !dbg !388

; <label>:205:                                    ; preds = %201
  %206 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3, !dbg !388
  %207 = load i32, i32* %206, align 4, !dbg !388, !tbaa !318
  %208 = icmp eq i32 %207, 0, !dbg !388
  br i1 %208, label %261, label %209, !dbg !390

; <label>:209:                                    ; preds = %205, %201, %197, %194
  %210 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !391, !tbaa !273
  %211 = icmp eq %struct.netif* %210, null, !dbg !394
  br i1 %211, label %261, label %212, !dbg !391

; <label>:212:                                    ; preds = %209
  %213 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 1
  %214 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 2
  %215 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 0, i64 3
  %216 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %0, i64 0, i32 1
  br label %217, !dbg !391

; <label>:217:                                    ; preds = %212, %257
  %218 = phi %struct.netif* [ %210, %212 ], [ %259, %257 ]
  %219 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 21, !dbg !396
  %220 = load i8, i8* %219, align 1, !dbg !396, !tbaa !289
  %221 = and i8 %220, 5, !dbg !399
  %222 = icmp eq i8 %221, 5, !dbg !399
  br i1 %222, label %223, label %257, !dbg !399

; <label>:223:                                    ; preds = %217
  %224 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 5, i64 0, !dbg !400
  %225 = load i8, i8* %224, align 1, !dbg !400, !tbaa !355
  %226 = and i8 %225, 16, !dbg !400
  %227 = icmp eq i8 %226, 0, !dbg !400
  br i1 %227, label %252, label %228, !dbg !405

; <label>:228:                                    ; preds = %223
  %229 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !406
  %230 = load i32, i32* %229, align 8, !dbg !406, !tbaa !355
  %231 = icmp eq i32 %195, %230, !dbg !406
  br i1 %231, label %232, label %252, !dbg !406

; <label>:232:                                    ; preds = %228
  %233 = load i32, i32* %213, align 4, !dbg !406, !tbaa !318
  %234 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !406
  %235 = load i32, i32* %234, align 4, !dbg !406, !tbaa !355
  %236 = icmp eq i32 %233, %235, !dbg !406
  br i1 %236, label %237, label %252, !dbg !406

; <label>:237:                                    ; preds = %232
  %238 = load i32, i32* %214, align 4, !dbg !406, !tbaa !318
  %239 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !406
  %240 = load i32, i32* %239, align 8, !dbg !406, !tbaa !355
  %241 = icmp eq i32 %238, %240, !dbg !406
  br i1 %241, label %242, label %252, !dbg !406

; <label>:242:                                    ; preds = %237
  %243 = load i32, i32* %215, align 4, !dbg !406, !tbaa !318
  %244 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !406
  %245 = load i32, i32* %244, align 4, !dbg !406, !tbaa !355
  %246 = icmp eq i32 %243, %245, !dbg !406
  br i1 %246, label %247, label %252, !dbg !406

; <label>:247:                                    ; preds = %242
  %248 = load i8, i8* %216, align 4, !dbg !406, !tbaa !292
  %249 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !406
  %250 = load i8, i8* %249, align 8, !dbg !406, !tbaa !355
  %251 = icmp eq i8 %248, %250, !dbg !406
  br i1 %251, label %270, label %252, !dbg !407

; <label>:252:                                    ; preds = %223, %228, %232, %237, %242, %247
  %253 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 5, i64 1, !dbg !400
  %254 = load i8, i8* %253, align 1, !dbg !400, !tbaa !355
  %255 = and i8 %254, 16, !dbg !400
  %256 = icmp eq i8 %255, 0, !dbg !400
  br i1 %256, label %341, label %317, !dbg !405

; <label>:257:                                    ; preds = %341, %346, %350, %355, %360, %365, %217
  %258 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 0, !dbg !394
  %259 = load %struct.netif*, %struct.netif** %258, align 8, !dbg !391, !tbaa !273
  %260 = icmp eq %struct.netif* %259, null, !dbg !394
  br i1 %260, label %261, label %217, !dbg !391, !llvm.loop !408

; <label>:261:                                    ; preds = %257, %209, %205, %192
  %262 = load %struct.netif*, %struct.netif** @netif_default, align 8, !dbg !410, !tbaa !273
  %263 = icmp eq %struct.netif* %262, null, !dbg !412
  br i1 %263, label %270, label %264, !dbg !413

; <label>:264:                                    ; preds = %261
  %265 = getelementptr inbounds %struct.netif, %struct.netif* %262, i64 0, i32 21, !dbg !414
  %266 = load i8, i8* %265, align 1, !dbg !414, !tbaa !289
  %267 = and i8 %266, 5, !dbg !415
  %268 = icmp eq i8 %267, 5, !dbg !415
  %269 = select i1 %268, %struct.netif* %262, %struct.netif* null, !dbg !415
  br label %270, !dbg !415

; <label>:270:                                    ; preds = %40, %35, %166, %175, %383, %392, %415, %424, %247, %336, %365, %88, %93, %133, %123, %287, %312, %28, %75, %76, %9, %264, %261, %189, %18, %23
  %271 = phi %struct.netif* [ %3, %23 ], [ null, %9 ], [ null, %18 ], [ %190, %189 ], [ null, %261 ], [ %269, %264 ], [ null, %76 ], [ null, %75 ], [ null, %28 ], [ null, %133 ], [ %98, %123 ], [ %98, %287 ], [ %98, %312 ], [ %83, %88 ], [ null, %93 ], [ %218, %365 ], [ %218, %336 ], [ %218, %247 ], [ %143, %424 ], [ %143, %415 ], [ %143, %392 ], [ %143, %383 ], [ %143, %175 ], [ %143, %166 ], [ null, %40 ], [ %30, %35 ], !dbg !416
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !418
  ret %struct.netif* %271, !dbg !418

; <label>:272:                                    ; preds = %128
  %273 = load i32, i32* %78, align 4, !dbg !357, !tbaa !318
  %274 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !357
  %275 = load i32, i32* %274, align 8, !dbg !357, !tbaa !355
  %276 = icmp eq i32 %273, %275, !dbg !357
  br i1 %276, label %277, label %292, !dbg !357

; <label>:277:                                    ; preds = %272
  %278 = load i32, i32* %79, align 4, !dbg !357, !tbaa !318
  %279 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !357
  %280 = load i32, i32* %279, align 4, !dbg !357, !tbaa !355
  %281 = icmp eq i32 %278, %280, !dbg !357
  br i1 %281, label %282, label %292, !dbg !357

; <label>:282:                                    ; preds = %277
  %283 = load i32, i32* %80, align 4, !dbg !357, !tbaa !318
  %284 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !357
  %285 = load i32, i32* %284, align 8, !dbg !357, !tbaa !355
  %286 = icmp eq i32 %283, %285, !dbg !357
  br i1 %286, label %287, label %292, !dbg !357

; <label>:287:                                    ; preds = %282
  %288 = load i32, i32* %81, align 4, !dbg !357, !tbaa !318
  %289 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !357
  %290 = load i32, i32* %289, align 4, !dbg !357, !tbaa !355
  %291 = icmp eq i32 %288, %290, !dbg !357
  br i1 %291, label %270, label %292, !dbg !358

; <label>:292:                                    ; preds = %287, %282, %277, %272, %128
  %293 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 5, i64 2, !dbg !350
  %294 = load i8, i8* %293, align 1, !dbg !350, !tbaa !355
  %295 = and i8 %294, 16, !dbg !350
  %296 = icmp eq i8 %295, 0, !dbg !350
  br i1 %296, label %133, label %297, !dbg !356

; <label>:297:                                    ; preds = %292
  %298 = load i32, i32* %78, align 4, !dbg !357, !tbaa !318
  %299 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !357
  %300 = load i32, i32* %299, align 8, !dbg !357, !tbaa !355
  %301 = icmp eq i32 %298, %300, !dbg !357
  br i1 %301, label %302, label %133, !dbg !357

; <label>:302:                                    ; preds = %297
  %303 = load i32, i32* %79, align 4, !dbg !357, !tbaa !318
  %304 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !357
  %305 = load i32, i32* %304, align 4, !dbg !357, !tbaa !355
  %306 = icmp eq i32 %303, %305, !dbg !357
  br i1 %306, label %307, label %133, !dbg !357

; <label>:307:                                    ; preds = %302
  %308 = load i32, i32* %80, align 4, !dbg !357, !tbaa !318
  %309 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !357
  %310 = load i32, i32* %309, align 8, !dbg !357, !tbaa !355
  %311 = icmp eq i32 %308, %310, !dbg !357
  br i1 %311, label %312, label %133, !dbg !357

; <label>:312:                                    ; preds = %307
  %313 = load i32, i32* %81, align 4, !dbg !357, !tbaa !318
  %314 = getelementptr inbounds %struct.netif, %struct.netif* %98, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !357
  %315 = load i32, i32* %314, align 4, !dbg !357, !tbaa !355
  %316 = icmp eq i32 %313, %315, !dbg !357
  br i1 %316, label %270, label %133, !dbg !358

; <label>:317:                                    ; preds = %252
  %318 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !406
  %319 = load i32, i32* %318, align 8, !dbg !406, !tbaa !355
  %320 = icmp eq i32 %195, %319, !dbg !406
  br i1 %320, label %321, label %341, !dbg !406

; <label>:321:                                    ; preds = %317
  %322 = load i32, i32* %213, align 4, !dbg !406, !tbaa !318
  %323 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !406
  %324 = load i32, i32* %323, align 4, !dbg !406, !tbaa !355
  %325 = icmp eq i32 %322, %324, !dbg !406
  br i1 %325, label %326, label %341, !dbg !406

; <label>:326:                                    ; preds = %321
  %327 = load i32, i32* %214, align 4, !dbg !406, !tbaa !318
  %328 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !406
  %329 = load i32, i32* %328, align 8, !dbg !406, !tbaa !355
  %330 = icmp eq i32 %327, %329, !dbg !406
  br i1 %330, label %331, label %341, !dbg !406

; <label>:331:                                    ; preds = %326
  %332 = load i32, i32* %215, align 4, !dbg !406, !tbaa !318
  %333 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !406
  %334 = load i32, i32* %333, align 4, !dbg !406, !tbaa !355
  %335 = icmp eq i32 %332, %334, !dbg !406
  br i1 %335, label %336, label %341, !dbg !406

; <label>:336:                                    ; preds = %331
  %337 = load i8, i8* %216, align 4, !dbg !406, !tbaa !292
  %338 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !406
  %339 = load i8, i8* %338, align 8, !dbg !406, !tbaa !355
  %340 = icmp eq i8 %337, %339, !dbg !406
  br i1 %340, label %270, label %341, !dbg !407

; <label>:341:                                    ; preds = %336, %331, %326, %321, %317, %252
  %342 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 5, i64 2, !dbg !400
  %343 = load i8, i8* %342, align 1, !dbg !400, !tbaa !355
  %344 = and i8 %343, 16, !dbg !400
  %345 = icmp eq i8 %344, 0, !dbg !400
  br i1 %345, label %257, label %346, !dbg !405

; <label>:346:                                    ; preds = %341
  %347 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !406
  %348 = load i32, i32* %347, align 8, !dbg !406, !tbaa !355
  %349 = icmp eq i32 %195, %348, !dbg !406
  br i1 %349, label %350, label %257, !dbg !406

; <label>:350:                                    ; preds = %346
  %351 = load i32, i32* %213, align 4, !dbg !406, !tbaa !318
  %352 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !406
  %353 = load i32, i32* %352, align 4, !dbg !406, !tbaa !355
  %354 = icmp eq i32 %351, %353, !dbg !406
  br i1 %354, label %355, label %257, !dbg !406

; <label>:355:                                    ; preds = %350
  %356 = load i32, i32* %214, align 4, !dbg !406, !tbaa !318
  %357 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !406
  %358 = load i32, i32* %357, align 8, !dbg !406, !tbaa !355
  %359 = icmp eq i32 %356, %358, !dbg !406
  br i1 %359, label %360, label %257, !dbg !406

; <label>:360:                                    ; preds = %355
  %361 = load i32, i32* %215, align 4, !dbg !406, !tbaa !318
  %362 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !406
  %363 = load i32, i32* %362, align 4, !dbg !406, !tbaa !355
  %364 = icmp eq i32 %361, %363, !dbg !406
  br i1 %364, label %365, label %257, !dbg !406

; <label>:365:                                    ; preds = %360
  %366 = load i8, i8* %216, align 4, !dbg !406, !tbaa !292
  %367 = getelementptr inbounds %struct.netif, %struct.netif* %218, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !406
  %368 = load i8, i8* %367, align 8, !dbg !406, !tbaa !355
  %369 = icmp eq i8 %366, %368, !dbg !406
  br i1 %369, label %270, label %257, !dbg !407

; <label>:370:                                    ; preds = %180
  %371 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !375
  %372 = load i32, i32* %371, align 8, !dbg !375, !tbaa !355
  %373 = icmp eq i32 %46, %372, !dbg !375
  br i1 %373, label %374, label %397, !dbg !375

; <label>:374:                                    ; preds = %370
  %375 = load i32, i32* %139, align 4, !dbg !375, !tbaa !318
  %376 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !375
  %377 = load i32, i32* %376, align 4, !dbg !375, !tbaa !355
  %378 = icmp eq i32 %375, %377, !dbg !375
  br i1 %378, label %379, label %397, !dbg !375

; <label>:379:                                    ; preds = %374
  %380 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !375
  %381 = load i8, i8* %380, align 8, !dbg !375, !tbaa !355
  %382 = icmp eq i8 %381, 0, !dbg !375
  br i1 %382, label %383, label %397, !dbg !376

; <label>:383:                                    ; preds = %379
  %384 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 6, i64 1, !dbg !377
  %385 = load i32, i32* %384, align 4, !dbg !377, !tbaa !318
  %386 = icmp eq i32 %385, 0, !dbg !377
  br i1 %386, label %270, label %387, !dbg !378

; <label>:387:                                    ; preds = %383
  %388 = load i32, i32* %140, align 4, !dbg !379, !tbaa !318
  %389 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !379
  %390 = load i32, i32* %389, align 8, !dbg !379, !tbaa !355
  %391 = icmp eq i32 %388, %390, !dbg !379
  br i1 %391, label %392, label %397, !dbg !379

; <label>:392:                                    ; preds = %387
  %393 = load i32, i32* %141, align 4, !dbg !379, !tbaa !318
  %394 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !379
  %395 = load i32, i32* %394, align 4, !dbg !379, !tbaa !355
  %396 = icmp eq i32 %393, %395, !dbg !379
  br i1 %396, label %270, label %397, !dbg !380

; <label>:397:                                    ; preds = %392, %387, %379, %374, %370, %180
  %398 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 5, i64 2, !dbg !369
  %399 = load i8, i8* %398, align 1, !dbg !369, !tbaa !355
  %400 = and i8 %399, 16, !dbg !369
  %401 = icmp eq i8 %400, 0, !dbg !369
  br i1 %401, label %185, label %402, !dbg !374

; <label>:402:                                    ; preds = %397
  %403 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !375
  %404 = load i32, i32* %403, align 8, !dbg !375, !tbaa !355
  %405 = icmp eq i32 %46, %404, !dbg !375
  br i1 %405, label %406, label %185, !dbg !375

; <label>:406:                                    ; preds = %402
  %407 = load i32, i32* %139, align 4, !dbg !375, !tbaa !318
  %408 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !375
  %409 = load i32, i32* %408, align 4, !dbg !375, !tbaa !355
  %410 = icmp eq i32 %407, %409, !dbg !375
  br i1 %410, label %411, label %185, !dbg !375

; <label>:411:                                    ; preds = %406
  %412 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !375
  %413 = load i8, i8* %412, align 8, !dbg !375, !tbaa !355
  %414 = icmp eq i8 %413, 0, !dbg !375
  br i1 %414, label %415, label %185, !dbg !376

; <label>:415:                                    ; preds = %411
  %416 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 6, i64 2, !dbg !377
  %417 = load i32, i32* %416, align 4, !dbg !377, !tbaa !318
  %418 = icmp eq i32 %417, 0, !dbg !377
  br i1 %418, label %270, label %419, !dbg !378

; <label>:419:                                    ; preds = %415
  %420 = load i32, i32* %140, align 4, !dbg !379, !tbaa !318
  %421 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !379
  %422 = load i32, i32* %421, align 8, !dbg !379, !tbaa !355
  %423 = icmp eq i32 %420, %422, !dbg !379
  br i1 %423, label %424, label %185, !dbg !379

; <label>:424:                                    ; preds = %419
  %425 = load i32, i32* %141, align 4, !dbg !379, !tbaa !318
  %426 = getelementptr inbounds %struct.netif, %struct.netif* %143, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !379
  %427 = load i32, i32* %426, align 4, !dbg !379, !tbaa !355
  %428 = icmp eq i32 %425, %427, !dbg !379
  br i1 %428, label %270, label %185, !dbg !380
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.netif* @nd6_find_route(%struct.ip6_addr*) local_unnamed_addr #3

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local %struct.ip_addr* @ip6_select_source_address(%struct.netif* readonly, %struct.ip6_addr* nocapture readonly) local_unnamed_addr #0 !dbg !419 {
  %3 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !440
  %4 = load i32, i32* %3, align 4, !dbg !440, !tbaa !318
  %5 = zext i32 %4 to i64, !dbg !440
  %6 = and i64 %5, 224, !dbg !440
  %7 = icmp eq i64 %6, 32, !dbg !440
  br i1 %7, label %38, label %8, !dbg !442

; <label>:8:                                      ; preds = %2
  %9 = and i64 %5, 49407, !dbg !443
  %10 = icmp eq i64 %9, 33022, !dbg !443
  br i1 %10, label %38, label %11, !dbg !445

; <label>:11:                                     ; preds = %8
  %12 = icmp eq i32 %4, 0, !dbg !446
  br i1 %12, label %13, label %25, !dbg !446

; <label>:13:                                     ; preds = %11
  %14 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !446
  %15 = load i32, i32* %14, align 4, !dbg !446, !tbaa !318
  %16 = icmp eq i32 %15, 0, !dbg !446
  br i1 %16, label %17, label %35, !dbg !446

; <label>:17:                                     ; preds = %13
  %18 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !446
  %19 = load i32, i32* %18, align 4, !dbg !446, !tbaa !318
  %20 = icmp eq i32 %19, 0, !dbg !446
  br i1 %20, label %21, label %35, !dbg !446

; <label>:21:                                     ; preds = %17
  %22 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !446
  %23 = load i32, i32* %22, align 4, !dbg !446, !tbaa !318
  %24 = icmp eq i32 %23, 16777216, !dbg !446
  br i1 %24, label %38, label %35, !dbg !447

; <label>:25:                                     ; preds = %11
  %26 = and i64 %5, 254, !dbg !448
  %27 = icmp eq i64 %26, 252, !dbg !448
  br i1 %27, label %38, label %28, !dbg !450

; <label>:28:                                     ; preds = %25
  %29 = and i64 %5, 255, !dbg !451
  %30 = icmp eq i64 %29, 255, !dbg !451
  br i1 %30, label %31, label %35, !dbg !453

; <label>:31:                                     ; preds = %28
  %32 = tail call i32 @lwip_htonl(i32 %4) #7, !dbg !454
  %33 = lshr i32 %32, 16, !dbg !454
  %34 = and i32 %33, 15, !dbg !454
  br label %38, !dbg !457

; <label>:35:                                     ; preds = %21, %17, %13, %28
  %36 = icmp eq i64 %9, 49406, !dbg !458
  %37 = select i1 %36, i32 5, i32 14, !dbg !460
  br label %38, !dbg !460

; <label>:38:                                     ; preds = %35, %25, %8, %21, %2, %31
  %39 = phi i32 [ %34, %31 ], [ 14, %2 ], [ 2, %21 ], [ 2, %8 ], [ 8, %25 ], [ %37, %35 ]
  %40 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1
  %41 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2
  %42 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3
  %43 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !464
  %44 = load i8, i8* %43, align 1, !dbg !464, !tbaa !355
  %45 = and i8 %44, 16, !dbg !464
  %46 = icmp eq i8 %45, 0, !dbg !464
  br i1 %46, label %84, label %47, !dbg !469

; <label>:47:                                     ; preds = %38
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, !dbg !470
  %49 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %48, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !472
  %50 = load i32, i32* %49, align 4, !dbg !472, !tbaa !318
  %51 = zext i32 %50 to i64, !dbg !472
  %52 = and i64 %51, 224, !dbg !472
  %53 = icmp eq i64 %52, 32, !dbg !472
  br i1 %53, label %63, label %54, !dbg !474

; <label>:54:                                     ; preds = %47
  %55 = and i64 %51, 49407, !dbg !475
  %56 = icmp eq i64 %55, 33022, !dbg !475
  br i1 %56, label %63, label %57, !dbg !477

; <label>:57:                                     ; preds = %54
  %58 = and i64 %51, 254, !dbg !478
  %59 = icmp eq i64 %58, 252, !dbg !478
  br i1 %59, label %63, label %60, !dbg !480

; <label>:60:                                     ; preds = %57
  %61 = icmp eq i64 %55, 49406, !dbg !481
  %62 = select i1 %61, i8 5, i8 15, !dbg !483
  br label %63, !dbg !483

; <label>:63:                                     ; preds = %60, %57, %54, %47
  %64 = phi i8 [ 14, %47 ], [ 2, %54 ], [ 8, %57 ], [ %62, %60 ], !dbg !485
  %65 = icmp eq i8 %44, 48, !dbg !488
  %66 = zext i1 %65 to i8, !dbg !488
  %67 = load i32, i32* %3, align 4, !dbg !490, !tbaa !318
  %68 = icmp eq i32 %50, %67, !dbg !490
  br i1 %68, label %69, label %84, !dbg !490

; <label>:69:                                     ; preds = %63
  %70 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !490
  %71 = load i32, i32* %70, align 4, !dbg !490, !tbaa !318
  %72 = load i32, i32* %40, align 4, !dbg !490, !tbaa !318
  %73 = icmp eq i32 %71, %72, !dbg !490
  br i1 %73, label %74, label %84, !dbg !491

; <label>:74:                                     ; preds = %69
  %75 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !493
  %76 = load i32, i32* %75, align 4, !dbg !493, !tbaa !318
  %77 = load i32, i32* %41, align 4, !dbg !493, !tbaa !318
  %78 = icmp eq i32 %76, %77, !dbg !493
  br i1 %78, label %79, label %84, !dbg !493

; <label>:79:                                     ; preds = %74
  %80 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !493
  %81 = load i32, i32* %80, align 4, !dbg !493, !tbaa !318
  %82 = load i32, i32* %42, align 4, !dbg !493, !tbaa !318
  %83 = icmp eq i32 %81, %82, !dbg !493
  br i1 %83, label %93, label %84, !dbg !494

; <label>:84:                                     ; preds = %63, %79, %74, %69, %38
  %85 = phi i8 [ 0, %38 ], [ %64, %69 ], [ %64, %74 ], [ %64, %79 ], [ %64, %63 ], !dbg !495
  %86 = phi %struct.ip_addr* [ null, %38 ], [ %48, %69 ], [ %48, %74 ], [ %48, %79 ], [ %48, %63 ], !dbg !495
  %87 = phi i8 [ 0, %38 ], [ %66, %69 ], [ %66, %74 ], [ %66, %79 ], [ %66, %63 ], !dbg !495
  %88 = phi i8 [ 0, %38 ], [ 0, %69 ], [ 1, %74 ], [ 1, %79 ], [ 0, %63 ], !dbg !495
  %89 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !464
  %90 = load i8, i8* %89, align 1, !dbg !464, !tbaa !355
  %91 = and i8 %90, 16, !dbg !464
  %92 = icmp eq i8 %91, 0, !dbg !464
  br i1 %92, label %158, label %95, !dbg !469

; <label>:93:                                     ; preds = %158, %215, %221, %226, %198, %127, %79
  %94 = phi %struct.ip_addr* [ %48, %79 ], [ %96, %127 ], [ %168, %198 ], [ %168, %226 ], [ %160, %221 ], [ %160, %215 ], [ %160, %158 ], !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !496
  ret %struct.ip_addr* %94, !dbg !496

; <label>:95:                                     ; preds = %84
  %96 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, !dbg !470
  %97 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %96, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !472
  %98 = load i32, i32* %97, align 4, !dbg !472, !tbaa !318
  %99 = zext i32 %98 to i64, !dbg !472
  %100 = and i64 %99, 224, !dbg !472
  %101 = icmp eq i64 %100, 32, !dbg !472
  br i1 %101, label %111, label %102, !dbg !474

; <label>:102:                                    ; preds = %95
  %103 = and i64 %99, 49407, !dbg !475
  %104 = icmp eq i64 %103, 33022, !dbg !475
  br i1 %104, label %111, label %105, !dbg !477

; <label>:105:                                    ; preds = %102
  %106 = and i64 %99, 254, !dbg !478
  %107 = icmp eq i64 %106, 252, !dbg !478
  br i1 %107, label %111, label %108, !dbg !480

; <label>:108:                                    ; preds = %105
  %109 = icmp eq i64 %103, 49406, !dbg !481
  %110 = select i1 %109, i8 5, i8 15, !dbg !483
  br label %111, !dbg !483

; <label>:111:                                    ; preds = %108, %105, %102, %95
  %112 = phi i8 [ 14, %95 ], [ 2, %102 ], [ 8, %105 ], [ %110, %108 ], !dbg !485
  %113 = icmp eq i8 %90, 48, !dbg !488
  %114 = zext i1 %113 to i8, !dbg !488
  %115 = load i32, i32* %3, align 4, !dbg !490, !tbaa !318
  %116 = icmp eq i32 %98, %115, !dbg !490
  br i1 %116, label %117, label %132, !dbg !490

; <label>:117:                                    ; preds = %111
  %118 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !490
  %119 = load i32, i32* %118, align 4, !dbg !490, !tbaa !318
  %120 = load i32, i32* %40, align 4, !dbg !490, !tbaa !318
  %121 = icmp eq i32 %119, %120, !dbg !490
  br i1 %121, label %122, label %132, !dbg !491

; <label>:122:                                    ; preds = %117
  %123 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !493
  %124 = load i32, i32* %123, align 4, !dbg !493, !tbaa !318
  %125 = load i32, i32* %41, align 4, !dbg !493, !tbaa !318
  %126 = icmp eq i32 %124, %125, !dbg !493
  br i1 %126, label %127, label %132, !dbg !493

; <label>:127:                                    ; preds = %122
  %128 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !493
  %129 = load i32, i32* %128, align 4, !dbg !493, !tbaa !318
  %130 = load i32, i32* %42, align 4, !dbg !493, !tbaa !318
  %131 = icmp eq i32 %129, %130, !dbg !493
  br i1 %131, label %93, label %132, !dbg !494

; <label>:132:                                    ; preds = %127, %122, %117, %111
  %133 = phi i32 [ 1, %127 ], [ 1, %122 ], [ 0, %117 ], [ 0, %111 ]
  %134 = phi i8 [ 1, %127 ], [ 1, %122 ], [ 0, %117 ], [ 0, %111 ]
  %135 = icmp eq %struct.ip_addr* %86, null, !dbg !497
  br i1 %135, label %157, label %136, !dbg !499

; <label>:136:                                    ; preds = %132
  %137 = zext i8 %112 to i32, !dbg !500
  %138 = sext i8 %85 to i32, !dbg !501
  %139 = icmp sge i32 %137, %138, !dbg !502
  %140 = icmp ugt i32 %39, %137, !dbg !503
  %141 = or i1 %139, %140, !dbg !504
  br i1 %141, label %142, label %157, !dbg !504

; <label>:142:                                    ; preds = %136
  %143 = icmp sgt i32 %137, %138, !dbg !505
  %144 = icmp sgt i32 %39, %138, !dbg !506
  %145 = and i1 %144, %143, !dbg !507
  br i1 %145, label %157, label %146, !dbg !507

; <label>:146:                                    ; preds = %142
  %147 = icmp eq i32 %137, %138, !dbg !508
  br i1 %147, label %148, label %158, !dbg !509

; <label>:148:                                    ; preds = %146
  %149 = zext i1 %113 to i32, !dbg !510
  %150 = zext i8 %87 to i32, !dbg !511
  %151 = icmp ugt i32 %149, %150, !dbg !512
  br i1 %151, label %157, label %152, !dbg !513

; <label>:152:                                    ; preds = %148
  %153 = icmp eq i32 %149, %150, !dbg !514
  %154 = zext i8 %88 to i32, !dbg !515
  %155 = icmp ugt i32 %133, %154, !dbg !516
  %156 = and i1 %153, %155, !dbg !517
  br i1 %156, label %157, label %158, !dbg !517

; <label>:157:                                    ; preds = %152, %148, %142, %136, %132
  br label %158, !dbg !518

; <label>:158:                                    ; preds = %157, %152, %146, %84
  %159 = phi i8 [ %112, %157 ], [ %85, %152 ], [ %85, %146 ], [ %85, %84 ], !dbg !495
  %160 = phi %struct.ip_addr* [ %96, %157 ], [ %86, %152 ], [ %86, %146 ], [ %86, %84 ], !dbg !495
  %161 = phi i8 [ %114, %157 ], [ %87, %152 ], [ %87, %146 ], [ %87, %84 ], !dbg !495
  %162 = phi i8 [ %134, %157 ], [ %88, %152 ], [ %88, %146 ], [ %88, %84 ], !dbg !495
  %163 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !464
  %164 = load i8, i8* %163, align 1, !dbg !464, !tbaa !355
  %165 = and i8 %164, 16, !dbg !464
  %166 = icmp eq i8 %165, 0, !dbg !464
  br i1 %166, label %93, label %167, !dbg !469

; <label>:167:                                    ; preds = %158
  %168 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, !dbg !470
  %169 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %168, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !472
  %170 = load i32, i32* %169, align 4, !dbg !472, !tbaa !318
  %171 = zext i32 %170 to i64, !dbg !472
  %172 = and i64 %171, 224, !dbg !472
  %173 = icmp eq i64 %172, 32, !dbg !472
  br i1 %173, label %183, label %174, !dbg !474

; <label>:174:                                    ; preds = %167
  %175 = and i64 %171, 49407, !dbg !475
  %176 = icmp eq i64 %175, 33022, !dbg !475
  br i1 %176, label %183, label %177, !dbg !477

; <label>:177:                                    ; preds = %174
  %178 = and i64 %171, 254, !dbg !478
  %179 = icmp eq i64 %178, 252, !dbg !478
  br i1 %179, label %183, label %180, !dbg !480

; <label>:180:                                    ; preds = %177
  %181 = icmp eq i64 %175, 49406, !dbg !481
  %182 = select i1 %181, i32 5, i32 15, !dbg !483
  br label %183, !dbg !483

; <label>:183:                                    ; preds = %180, %177, %174, %167
  %184 = phi i32 [ 14, %167 ], [ 2, %174 ], [ 8, %177 ], [ %182, %180 ]
  %185 = icmp eq i8 %164, 48, !dbg !488
  %186 = load i32, i32* %3, align 4, !dbg !490, !tbaa !318
  %187 = icmp eq i32 %170, %186, !dbg !490
  br i1 %187, label %188, label %203, !dbg !490

; <label>:188:                                    ; preds = %183
  %189 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !490
  %190 = load i32, i32* %189, align 4, !dbg !490, !tbaa !318
  %191 = load i32, i32* %40, align 4, !dbg !490, !tbaa !318
  %192 = icmp eq i32 %190, %191, !dbg !490
  br i1 %192, label %193, label %203, !dbg !491

; <label>:193:                                    ; preds = %188
  %194 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !493
  %195 = load i32, i32* %194, align 4, !dbg !493, !tbaa !318
  %196 = load i32, i32* %41, align 4, !dbg !493, !tbaa !318
  %197 = icmp eq i32 %195, %196, !dbg !493
  br i1 %197, label %198, label %203, !dbg !493

; <label>:198:                                    ; preds = %193
  %199 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !493
  %200 = load i32, i32* %199, align 4, !dbg !493, !tbaa !318
  %201 = load i32, i32* %42, align 4, !dbg !493, !tbaa !318
  %202 = icmp eq i32 %200, %201, !dbg !493
  br i1 %202, label %93, label %203, !dbg !494

; <label>:203:                                    ; preds = %198, %193, %188, %183
  %204 = phi i32 [ 1, %198 ], [ 1, %193 ], [ 0, %188 ], [ 0, %183 ]
  %205 = icmp eq %struct.ip_addr* %160, null, !dbg !497
  br i1 %205, label %226, label %206, !dbg !499

; <label>:206:                                    ; preds = %203
  %207 = sext i8 %159 to i32, !dbg !501
  %208 = icmp sge i32 %184, %207, !dbg !502
  %209 = icmp ugt i32 %39, %184, !dbg !503
  %210 = or i1 %208, %209, !dbg !504
  br i1 %210, label %211, label %226, !dbg !504

; <label>:211:                                    ; preds = %206
  %212 = icmp sgt i32 %184, %207, !dbg !505
  %213 = icmp sgt i32 %39, %207, !dbg !506
  %214 = and i1 %213, %212, !dbg !507
  br i1 %214, label %226, label %215, !dbg !507

; <label>:215:                                    ; preds = %211
  %216 = icmp eq i32 %184, %207, !dbg !508
  br i1 %216, label %217, label %93, !dbg !509

; <label>:217:                                    ; preds = %215
  %218 = zext i1 %185 to i32, !dbg !510
  %219 = zext i8 %161 to i32, !dbg !511
  %220 = icmp ugt i32 %218, %219, !dbg !512
  br i1 %220, label %226, label %221, !dbg !513

; <label>:221:                                    ; preds = %217
  %222 = icmp eq i32 %218, %219, !dbg !514
  %223 = zext i8 %162 to i32, !dbg !515
  %224 = icmp ugt i32 %204, %223, !dbg !516
  %225 = and i1 %222, %224, !dbg !517
  br i1 %225, label %226, label %93, !dbg !517

; <label>:226:                                    ; preds = %221, %217, %211, %206, %203
  br label %93, !dbg !518
}

; Function Attrs: noredzone
declare dso_local i32 @lwip_htonl(i32) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_input(%struct.pbuf*, %struct.netif*) local_unnamed_addr #0 !dbg !520 {
  %3 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 1), align 2, !dbg !554, !tbaa !555
  %4 = add i16 %3, 1, !dbg !554
  store i16 %4, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 1), align 2, !dbg !554, !tbaa !555
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !561
  %6 = bitcast i8** %5 to %struct.ip6_hdr**, !dbg !561
  %7 = load %struct.ip6_hdr*, %struct.ip6_hdr** %6, align 8, !dbg !561, !tbaa !562
  %8 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 0, !dbg !565
  %9 = load i32, i32* %8, align 1, !dbg !565, !tbaa !567
  %10 = tail call i32 @lwip_htonl(i32 %9) #7, !dbg !565
  %11 = and i32 %10, -268435456, !dbg !570
  %12 = icmp eq i32 %11, 1610612736, !dbg !570
  br i1 %12, label %19, label %13, !dbg !571

; <label>:13:                                     ; preds = %2
  %14 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !572
  %15 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !574, !tbaa !575
  %16 = add i16 %15, 1, !dbg !574
  store i16 %16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !574, !tbaa !575
  %17 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !576, !tbaa !577
  %18 = add i16 %17, 1, !dbg !576
  store i16 %18, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !576, !tbaa !577
  br label %445, !dbg !578

; <label>:19:                                     ; preds = %2
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !579
  %21 = load i16, i16* %20, align 2, !dbg !579, !tbaa !581
  %22 = icmp ult i16 %21, 40, !dbg !582
  %23 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 1, !dbg !583
  br i1 %22, label %33, label %24, !dbg !584

; <label>:24:                                     ; preds = %19
  %25 = load i16, i16* %23, align 1, !dbg !585, !tbaa !586
  %26 = tail call zeroext i16 @lwip_htons(i16 zeroext %25) #7, !dbg !585
  %27 = zext i16 %26 to i32, !dbg !585
  %28 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !587
  %29 = load i16, i16* %28, align 8, !dbg !587, !tbaa !588
  %30 = zext i16 %29 to i32, !dbg !589
  %31 = add nsw i32 %30, -40, !dbg !590
  %32 = icmp slt i32 %31, %27, !dbg !591
  br i1 %32, label %33, label %41, !dbg !592

; <label>:33:                                     ; preds = %19, %24
  %34 = load i16, i16* %23, align 1, !dbg !593, !tbaa !586
  %35 = tail call zeroext i16 @lwip_htons(i16 zeroext %34) #7, !dbg !593
  %36 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !596
  %37 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !597, !tbaa !598
  %38 = add i16 %37, 1, !dbg !597
  store i16 %38, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !597, !tbaa !598
  %39 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !599, !tbaa !577
  %40 = add i16 %39, 1, !dbg !599
  store i16 %40, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !599, !tbaa !577
  br label %445, !dbg !600

; <label>:41:                                     ; preds = %24
  %42 = load i16, i16* %23, align 1, !dbg !601, !tbaa !586
  %43 = tail call zeroext i16 @lwip_htons(i16 zeroext %42) #7, !dbg !601
  %44 = add i16 %43, 40, !dbg !602
  tail call void @pbuf_realloc(%struct.pbuf* nonnull %0, i16 zeroext %44) #7, !dbg !603
  %45 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 0, !dbg !604
  %46 = load i32, i32* %45, align 1, !dbg !604, !tbaa !318
  store i32 %46, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !604, !tbaa !355
  %47 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 1, !dbg !604
  %48 = load i32, i32* %47, align 1, !dbg !604, !tbaa !318
  store i32 %48, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !604, !tbaa !355
  %49 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 2, !dbg !604
  %50 = load i32, i32* %49, align 1, !dbg !604, !tbaa !318
  store i32 %50, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !604, !tbaa !355
  %51 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 5, i32 0, i64 3, !dbg !604
  %52 = load i32, i32* %51, align 1, !dbg !604, !tbaa !318
  store i32 %52, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !604, !tbaa !355
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !604, !tbaa !355
  store i8 6, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 1), align 4, !dbg !607, !tbaa !609
  %53 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 0, !dbg !611
  %54 = load i32, i32* %53, align 1, !dbg !611, !tbaa !318
  store i32 %54, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !611, !tbaa !355
  %55 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 1, !dbg !611
  %56 = load i32, i32* %55, align 1, !dbg !611, !tbaa !318
  store i32 %56, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !611, !tbaa !355
  %57 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 2, !dbg !611
  %58 = load i32, i32* %57, align 1, !dbg !611, !tbaa !318
  store i32 %58, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !611, !tbaa !355
  %59 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 4, i32 0, i64 3, !dbg !611
  %60 = load i32, i32* %59, align 1, !dbg !611, !tbaa !318
  store i32 %60, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !611, !tbaa !355
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !611, !tbaa !355
  store i8 6, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 1), align 4, !dbg !614, !tbaa !616
  %61 = or i32 %48, %46, !dbg !617
  %62 = icmp eq i32 %61, 0, !dbg !617
  %63 = icmp eq i32 %50, -65536, !dbg !617
  %64 = and i1 %62, %63, !dbg !617
  br i1 %64, label %73, label %65, !dbg !617

; <label>:65:                                     ; preds = %41
  %66 = or i32 %56, %54, !dbg !619
  %67 = icmp eq i32 %66, 0, !dbg !619
  %68 = icmp eq i32 %58, -65536, !dbg !619
  %69 = and i1 %67, %68, !dbg !619
  %70 = and i32 %54, 255, !dbg !620
  %71 = icmp eq i32 %70, 255, !dbg !620
  %72 = or i1 %71, %69, !dbg !619
  br i1 %72, label %73, label %79, !dbg !619

; <label>:73:                                     ; preds = %65, %41
  %74 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %0) #7, !dbg !621
  %75 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !623, !tbaa !575
  %76 = add i16 %75, 1, !dbg !623
  store i16 %76, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !623, !tbaa !575
  %77 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !624, !tbaa !577
  %78 = add i16 %77, 1, !dbg !624
  store i16 %78, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !624, !tbaa !577
  br label %445, !dbg !625

; <label>:79:                                     ; preds = %65
  %80 = and i32 %46, 49407, !dbg !626
  %81 = icmp eq i32 %80, 33022, !dbg !626
  br i1 %81, label %85, label %82, !dbg !626

; <label>:82:                                     ; preds = %79
  %83 = trunc i32 %46 to i16, !dbg !626
  %84 = and i16 %83, -28673, !dbg !626
  switch i16 %84, label %89 [
    i16 511, label %85
    i16 767, label %85
  ], !dbg !626

; <label>:85:                                     ; preds = %82, %82, %79
  %86 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !626
  %87 = load i8, i8* %86, align 8, !dbg !626, !tbaa !296
  %88 = add i8 %87, 1, !dbg !626
  br label %89, !dbg !626

; <label>:89:                                     ; preds = %82, %85
  %90 = phi i8 [ %88, %85 ], [ 0, %82 ], !dbg !626
  store i8 %90, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !626, !tbaa !355
  %91 = and i32 %54, 49407, !dbg !627
  %92 = icmp eq i32 %91, 33022, !dbg !627
  br i1 %92, label %93, label %97, !dbg !627

; <label>:93:                                     ; preds = %89
  %94 = getelementptr inbounds %struct.netif, %struct.netif* %1, i64 0, i32 23, !dbg !627
  %95 = load i8, i8* %94, align 8, !dbg !627, !tbaa !296
  %96 = add i8 %95, 1, !dbg !627
  br label %97, !dbg !627

; <label>:97:                                     ; preds = %89, %93
  %98 = phi i8 [ %96, %93 ], [ 0, %89 ], !dbg !627
  store i8 %98, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !627, !tbaa !355
  store %struct.ip6_hdr* %7, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !628, !tbaa !629
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !630, !tbaa !631
  store %struct.netif* %1, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 1), align 8, !dbg !632, !tbaa !633
  %99 = and i32 %46, 255, !dbg !634
  %100 = icmp eq i32 %99, 255, !dbg !634
  br i1 %100, label %101, label %116, !dbg !636

; <label>:101:                                    ; preds = %97
  %102 = icmp eq i32 %46, 511, !dbg !637
  %103 = or i32 %50, %48, !dbg !637
  %104 = icmp eq i32 %103, 0, !dbg !637
  %105 = and i1 %102, %104, !dbg !637
  %106 = icmp eq i32 %52, 16777216, !dbg !637
  %107 = and i1 %105, %106, !dbg !637
  br i1 %107, label %158, label %108, !dbg !637

; <label>:108:                                    ; preds = %101
  %109 = icmp eq i32 %46, 767, !dbg !640
  %110 = and i1 %109, %104, !dbg !640
  %111 = and i1 %110, %106, !dbg !640
  br i1 %111, label %158, label %112, !dbg !640

; <label>:112:                                    ; preds = %108
  %113 = tail call %struct.mld_group* @mld6_lookfor_group(%struct.netif* %1, %struct.ip6_addr* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0)) #7, !dbg !641
  %114 = icmp eq %struct.mld_group* %113, null, !dbg !641
  %115 = select i1 %114, %struct.netif* null, %struct.netif* %1
  br label %158

; <label>:116:                                    ; preds = %97
  %117 = tail call fastcc i32 @ip6_input_accept(%struct.netif* %1) #8, !dbg !643
  %118 = icmp eq i32 %117, 0, !dbg !643
  br i1 %118, label %119, label %158, !dbg !646

; <label>:119:                                    ; preds = %116
  %120 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !648, !tbaa !355
  %121 = and i32 %120, 49407, !dbg !648
  %122 = icmp eq i32 %121, 33022, !dbg !648
  br i1 %122, label %158, label %123, !dbg !651

; <label>:123:                                    ; preds = %119
  %124 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !652, !tbaa !355
  %125 = and i32 %124, 49407, !dbg !652
  %126 = icmp eq i32 %125, 33022, !dbg !652
  br i1 %126, label %158, label %127, !dbg !653

; <label>:127:                                    ; preds = %123
  %128 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !654
  %129 = or i32 %128, %120, !dbg !654
  %130 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !654
  %131 = or i32 %129, %130, !dbg !654
  %132 = icmp eq i32 %131, 0, !dbg !654
  %133 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !654
  %134 = icmp eq i32 %133, 16777216, !dbg !654
  %135 = and i1 %132, %134, !dbg !654
  br i1 %135, label %158, label %136, !dbg !654

; <label>:136:                                    ; preds = %127
  %137 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !656
  %138 = or i32 %137, %124, !dbg !656
  %139 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !656
  %140 = or i32 %138, %139, !dbg !656
  %141 = icmp eq i32 %140, 0, !dbg !656
  %142 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !656
  %143 = icmp eq i32 %142, 16777216, !dbg !656
  %144 = and i1 %141, %143, !dbg !656
  br i1 %144, label %158, label %145, !dbg !656

; <label>:145:                                    ; preds = %136
  %146 = load %struct.netif*, %struct.netif** @netif_list, align 8, !dbg !657, !tbaa !273
  %147 = icmp eq %struct.netif* %146, null, !dbg !659
  br i1 %147, label %158, label %148, !dbg !657

; <label>:148:                                    ; preds = %145, %154
  %149 = phi %struct.netif* [ %156, %154 ], [ %146, %145 ]
  %150 = icmp eq %struct.netif* %149, %1, !dbg !661
  br i1 %150, label %154, label %151, !dbg !664

; <label>:151:                                    ; preds = %148
  %152 = tail call fastcc i32 @ip6_input_accept(%struct.netif* nonnull %149) #8, !dbg !665
  %153 = icmp eq i32 %152, 0, !dbg !665
  br i1 %153, label %154, label %158, !dbg !667

; <label>:154:                                    ; preds = %151, %148
  %155 = getelementptr inbounds %struct.netif, %struct.netif* %149, i64 0, i32 0, !dbg !659
  %156 = load %struct.netif*, %struct.netif** %155, align 8, !dbg !657, !tbaa !273
  %157 = icmp eq %struct.netif* %156, null, !dbg !659
  br i1 %157, label %158, label %148, !dbg !657, !llvm.loop !668

; <label>:158:                                    ; preds = %154, %151, %145, %136, %127, %116, %112, %101, %108, %123, %119
  %159 = phi %struct.netif* [ null, %119 ], [ null, %123 ], [ %1, %108 ], [ %1, %101 ], [ %115, %112 ], [ %1, %116 ], [ null, %127 ], [ null, %136 ], [ null, %145 ], [ null, %154 ], [ %149, %151 ], !dbg !670
  %160 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !671, !tbaa !355
  %161 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 1), align 4, !dbg !671
  %162 = or i32 %161, %160, !dbg !671
  %163 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !671
  %164 = or i32 %162, %163, !dbg !671
  %165 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !671
  %166 = or i32 %164, %165, !dbg !671
  %167 = icmp eq i32 %166, 0, !dbg !671
  br i1 %167, label %168, label %182, !dbg !671

; <label>:168:                                    ; preds = %158
  %169 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !673, !tbaa !355
  %170 = icmp eq i32 %169, 767, !dbg !673
  %171 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4, !dbg !673
  %172 = icmp eq i32 %171, 16777216, !dbg !673
  %173 = and i1 %170, %172, !dbg !673
  br i1 %173, label %174, label %178, !dbg !673

; <label>:174:                                    ; preds = %168
  %175 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4, !dbg !673, !tbaa !355
  %176 = and i32 %175, 255, !dbg !673
  %177 = icmp eq i32 %176, 255, !dbg !673
  br i1 %177, label %182, label %178, !dbg !674

; <label>:178:                                    ; preds = %174, %168
  %179 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !675
  %180 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !677, !tbaa !577
  %181 = add i16 %180, 1, !dbg !677
  store i16 %181, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !677, !tbaa !577
  br label %444, !dbg !678

; <label>:182:                                    ; preds = %174, %158
  %183 = icmp eq %struct.netif* %159, null, !dbg !679
  br i1 %183, label %184, label %186, !dbg !681

; <label>:184:                                    ; preds = %182
  %185 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %0) #7, !dbg !682
  br label %444, !dbg !684

; <label>:186:                                    ; preds = %182
  store %struct.netif* %159, %struct.netif** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 0), align 8, !dbg !685, !tbaa !631
  %187 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %7, i64 0, i32 2, !dbg !686
  %188 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %0, i64 40) #7, !dbg !690
  %189 = load i8, i8* %187, align 1, !dbg !691, !tbaa !355
  br label %190, !dbg !692

; <label>:190:                                    ; preds = %409, %186
  %191 = phi i8 [ %414, %409 ], [ %189, %186 ], !dbg !691
  %192 = phi i16 [ %410, %409 ], [ 40, %186 ], !dbg !693
  %193 = phi i8* [ %411, %409 ], [ %187, %186 ], !dbg !694
  %194 = phi %struct.ip6_hdr* [ %412, %409 ], [ %7, %186 ], !dbg !695
  %195 = phi %struct.pbuf* [ %413, %409 ], [ %0, %186 ]
  switch i8 %191, label %420 [
    i8 44, label %361
    i8 0, label %196
    i8 60, label %255
    i8 43, label %314
  ], !dbg !692

; <label>:196:                                    ; preds = %190
  %197 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 1, !dbg !696
  %198 = load i8*, i8** %197, align 8, !dbg !696, !tbaa !562
  %199 = getelementptr inbounds i8, i8* %198, i64 1, !dbg !698
  %200 = load i8, i8* %199, align 1, !dbg !698, !tbaa !699
  %201 = zext i8 %200 to i16, !dbg !701
  %202 = shl nuw nsw i16 %201, 3, !dbg !702
  %203 = add nuw nsw i16 %202, 8, !dbg !702
  %204 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 3, !dbg !703
  %205 = load i16, i16* %204, align 2, !dbg !703, !tbaa !581
  %206 = icmp ult i16 %205, 8, !dbg !705
  br i1 %206, label %210, label %207, !dbg !706

; <label>:207:                                    ; preds = %196
  %208 = zext i16 %203 to i32, !dbg !707
  %209 = icmp ugt i16 %203, %205, !dbg !708
  br i1 %209, label %210, label %216, !dbg !709

; <label>:210:                                    ; preds = %207, %196
  %211 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !710
  %212 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !712, !tbaa !598
  %213 = add i16 %212, 1, !dbg !712
  store i16 %213, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !712, !tbaa !598
  %214 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !713, !tbaa !577
  %215 = add i16 %214, 1, !dbg !713
  store i16 %215, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !713, !tbaa !577
  br label %444, !dbg !714

; <label>:216:                                    ; preds = %207
  %217 = add i16 %203, %192, !dbg !715
  br label %218, !dbg !717

; <label>:218:                                    ; preds = %216, %247
  %219 = phi i32 [ 2, %216 ], [ %250, %247 ]
  %220 = sext i32 %219 to i64, !dbg !719
  %221 = getelementptr inbounds i8, i8* %198, i64 %220, !dbg !719
  %222 = load i8, i8* %221, align 1, !dbg !721, !tbaa !722
  switch i8 %222, label %223 [
    i8 0, label %247
    i8 1, label %243
    i8 5, label %243
    i8 -62, label %243
  ], !dbg !724

; <label>:223:                                    ; preds = %218
  %224 = lshr i8 %222, 6, !dbg !725
  %225 = trunc i8 %224 to i2, !dbg !727
  switch i2 %225, label %243 [
    i2 1, label %226
    i2 -2, label %230
    i2 -1, label %234
  ], !dbg !727

; <label>:226:                                    ; preds = %223
  %227 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !728
  %228 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !730, !tbaa !577
  %229 = add i16 %228, 1, !dbg !730
  store i16 %229, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !730, !tbaa !577
  br label %444, !dbg !731

; <label>:230:                                    ; preds = %223
  tail call void @icmp6_param_problem(%struct.pbuf* %195, i32 2, i8* %221) #7, !dbg !732
  %231 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !733
  %232 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !734, !tbaa !577
  %233 = add i16 %232, 1, !dbg !734
  store i16 %233, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !734, !tbaa !577
  br label %444, !dbg !735

; <label>:234:                                    ; preds = %223
  %235 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !736, !tbaa !355
  %236 = and i32 %235, 255, !dbg !736
  %237 = icmp eq i32 %236, 255, !dbg !736
  br i1 %237, label %239, label %238, !dbg !738

; <label>:238:                                    ; preds = %234
  tail call void @icmp6_param_problem(%struct.pbuf* %195, i32 2, i8* %221) #7, !dbg !739
  br label %239, !dbg !741

; <label>:239:                                    ; preds = %238, %234
  %240 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !742
  %241 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !743, !tbaa !577
  %242 = add i16 %241, 1, !dbg !743
  store i16 %242, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !743, !tbaa !577
  br label %444, !dbg !744

; <label>:243:                                    ; preds = %223, %218, %218, %218
  %244 = getelementptr inbounds i8, i8* %221, i64 1, !dbg !745
  %245 = load i8, i8* %244, align 1, !dbg !745, !tbaa !746
  %246 = zext i8 %245 to i32, !dbg !745
  br label %247, !dbg !747

; <label>:247:                                    ; preds = %243, %218
  %248 = phi i32 [ -1, %218 ], [ %246, %243 ], !dbg !748
  %249 = add nsw i32 %219, 2, !dbg !747
  %250 = add nsw i32 %249, %248, !dbg !749
  %251 = icmp slt i32 %250, %208, !dbg !750
  br i1 %251, label %218, label %252, !dbg !717

; <label>:252:                                    ; preds = %247
  %253 = zext i16 %203 to i64, !dbg !751
  %254 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %195, i64 %253) #7, !dbg !752
  br label %409

; <label>:255:                                    ; preds = %190
  %256 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 1, !dbg !753
  %257 = load i8*, i8** %256, align 8, !dbg !753, !tbaa !562
  %258 = getelementptr inbounds i8, i8* %257, i64 1, !dbg !755
  %259 = load i8, i8* %258, align 1, !dbg !755, !tbaa !756
  %260 = zext i8 %259 to i16, !dbg !758
  %261 = shl nuw nsw i16 %260, 3, !dbg !759
  %262 = add nuw nsw i16 %261, 8, !dbg !759
  %263 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 3, !dbg !760
  %264 = load i16, i16* %263, align 2, !dbg !760, !tbaa !581
  %265 = icmp ult i16 %264, 8, !dbg !762
  br i1 %265, label %269, label %266, !dbg !763

; <label>:266:                                    ; preds = %255
  %267 = zext i16 %262 to i32, !dbg !764
  %268 = icmp ugt i16 %262, %264, !dbg !765
  br i1 %268, label %269, label %275, !dbg !766

; <label>:269:                                    ; preds = %266, %255
  %270 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !767
  %271 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !769, !tbaa !598
  %272 = add i16 %271, 1, !dbg !769
  store i16 %272, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !769, !tbaa !598
  %273 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !770, !tbaa !577
  %274 = add i16 %273, 1, !dbg !770
  store i16 %274, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !770, !tbaa !577
  br label %444, !dbg !771

; <label>:275:                                    ; preds = %266
  %276 = add i16 %262, %192, !dbg !772
  br label %277, !dbg !774

; <label>:277:                                    ; preds = %275, %306
  %278 = phi i32 [ 2, %275 ], [ %309, %306 ]
  %279 = sext i32 %278 to i64, !dbg !776
  %280 = getelementptr inbounds i8, i8* %257, i64 %279, !dbg !776
  %281 = load i8, i8* %280, align 1, !dbg !778, !tbaa !722
  switch i8 %281, label %282 [
    i8 0, label %306
    i8 1, label %302
    i8 5, label %302
    i8 -62, label %302
    i8 -55, label %302
  ], !dbg !779

; <label>:282:                                    ; preds = %277
  %283 = lshr i8 %281, 6, !dbg !780
  %284 = trunc i8 %283 to i2, !dbg !782
  switch i2 %284, label %302 [
    i2 1, label %285
    i2 -2, label %289
    i2 -1, label %293
  ], !dbg !782

; <label>:285:                                    ; preds = %282
  %286 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !783
  %287 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !785, !tbaa !577
  %288 = add i16 %287, 1, !dbg !785
  store i16 %288, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !785, !tbaa !577
  br label %444, !dbg !786

; <label>:289:                                    ; preds = %282
  tail call void @icmp6_param_problem(%struct.pbuf* %195, i32 2, i8* %280) #7, !dbg !787
  %290 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !788
  %291 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !789, !tbaa !577
  %292 = add i16 %291, 1, !dbg !789
  store i16 %292, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !789, !tbaa !577
  br label %444, !dbg !790

; <label>:293:                                    ; preds = %282
  %294 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !791, !tbaa !355
  %295 = and i32 %294, 255, !dbg !791
  %296 = icmp eq i32 %295, 255, !dbg !791
  br i1 %296, label %298, label %297, !dbg !793

; <label>:297:                                    ; preds = %293
  tail call void @icmp6_param_problem(%struct.pbuf* %195, i32 2, i8* %280) #7, !dbg !794
  br label %298, !dbg !796

; <label>:298:                                    ; preds = %297, %293
  %299 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !797
  %300 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !798, !tbaa !577
  %301 = add i16 %300, 1, !dbg !798
  store i16 %301, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !798, !tbaa !577
  br label %444, !dbg !799

; <label>:302:                                    ; preds = %282, %277, %277, %277, %277
  %303 = getelementptr inbounds i8, i8* %280, i64 1, !dbg !800
  %304 = load i8, i8* %303, align 1, !dbg !800, !tbaa !746
  %305 = zext i8 %304 to i32, !dbg !800
  br label %306, !dbg !801

; <label>:306:                                    ; preds = %302, %277
  %307 = phi i32 [ -1, %277 ], [ %305, %302 ], !dbg !802
  %308 = add nsw i32 %278, 2, !dbg !801
  %309 = add nsw i32 %308, %307, !dbg !803
  %310 = icmp slt i32 %309, %267, !dbg !804
  br i1 %310, label %277, label %311, !dbg !774

; <label>:311:                                    ; preds = %306
  %312 = zext i16 %262 to i64, !dbg !805
  %313 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* %195, i64 %312) #7, !dbg !806
  br label %409

; <label>:314:                                    ; preds = %190
  %315 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 1, !dbg !807
  %316 = bitcast i8** %315 to %struct.ip6_rout_hdr**, !dbg !807
  %317 = load %struct.ip6_rout_hdr*, %struct.ip6_rout_hdr** %316, align 8, !dbg !807, !tbaa !562
  %318 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 0, !dbg !809
  %319 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 1, !dbg !810
  %320 = load i8, i8* %319, align 1, !dbg !810, !tbaa !811
  %321 = zext i8 %320 to i16, !dbg !813
  %322 = shl nuw nsw i16 %321, 3, !dbg !813
  %323 = add nuw nsw i16 %322, 8, !dbg !813
  %324 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 3, !dbg !814
  %325 = load i16, i16* %324, align 2, !dbg !814, !tbaa !581
  %326 = icmp ult i16 %325, 8, !dbg !816
  %327 = icmp ugt i16 %323, %325, !dbg !817
  %328 = or i1 %326, %327, !dbg !818
  br i1 %328, label %329, label %335, !dbg !818

; <label>:329:                                    ; preds = %314
  %330 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !819
  %331 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !821, !tbaa !598
  %332 = add i16 %331, 1, !dbg !821
  store i16 %332, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 5), align 2, !dbg !821, !tbaa !598
  %333 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !822, !tbaa !577
  %334 = add i16 %333, 1, !dbg !822
  store i16 %334, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !822, !tbaa !577
  br label %444, !dbg !823

; <label>:335:                                    ; preds = %314
  %336 = add i16 %323, %192, !dbg !824
  %337 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 3, !dbg !825
  %338 = load i8, i8* %337, align 1, !dbg !825, !tbaa !827
  %339 = icmp eq i8 %338, 0, !dbg !825
  br i1 %339, label %358, label %340, !dbg !828

; <label>:340:                                    ; preds = %335
  %341 = and i8 %320, 1, !dbg !829
  %342 = icmp eq i8 %341, 0, !dbg !829
  br i1 %342, label %348, label %343, !dbg !832

; <label>:343:                                    ; preds = %340
  %344 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 1, !dbg !810
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %195, i32 0, i8* nonnull %344) #7, !dbg !833
  %345 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !835
  %346 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !836, !tbaa !577
  %347 = add i16 %346, 1, !dbg !836
  store i16 %347, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !836, !tbaa !577
  br label %444, !dbg !837

; <label>:348:                                    ; preds = %340
  %349 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 2, !dbg !838
  %350 = load i8, i8* %349, align 1, !dbg !838, !tbaa !839
  %351 = and i8 %350, -2, !dbg !840
  %352 = icmp eq i8 %351, 2, !dbg !840
  br i1 %352, label %358, label %353, !dbg !840

; <label>:353:                                    ; preds = %348
  %354 = getelementptr inbounds %struct.ip6_rout_hdr, %struct.ip6_rout_hdr* %317, i64 0, i32 2, !dbg !838
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %195, i32 0, i8* nonnull %354) #7, !dbg !841
  %355 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !843
  %356 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !844, !tbaa !577
  %357 = add i16 %356, 1, !dbg !844
  store i16 %357, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !844, !tbaa !577
  br label %444, !dbg !845

; <label>:358:                                    ; preds = %348, %335
  %359 = zext i16 %323 to i64, !dbg !846
  %360 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %195, i64 %359) #7, !dbg !847
  br label %409

; <label>:361:                                    ; preds = %190
  %362 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 1, !dbg !848
  %363 = bitcast i8** %362 to %struct.ip6_frag_hdr**, !dbg !848
  %364 = load %struct.ip6_frag_hdr*, %struct.ip6_frag_hdr** %363, align 8, !dbg !848, !tbaa !562
  %365 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %364, i64 0, i32 0, !dbg !850
  %366 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %195, i64 0, i32 3, !dbg !851
  %367 = load i16, i16* %366, align 2, !dbg !851, !tbaa !581
  %368 = icmp ult i16 %367, 8, !dbg !853
  br i1 %368, label %369, label %375, !dbg !854

; <label>:369:                                    ; preds = %361
  %370 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !855
  %371 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 5), align 2, !dbg !857, !tbaa !858
  %372 = add i16 %371, 1, !dbg !857
  store i16 %372, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 5), align 2, !dbg !857, !tbaa !858
  %373 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !859, !tbaa !860
  %374 = add i16 %373, 1, !dbg !859
  store i16 %374, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 10, i32 3), align 2, !dbg !859, !tbaa !860
  br label %444, !dbg !861

; <label>:375:                                    ; preds = %361
  %376 = add i16 %192, 8, !dbg !862
  %377 = getelementptr inbounds %struct.ip6_frag_hdr, %struct.ip6_frag_hdr* %364, i64 0, i32 2, !dbg !863
  %378 = load i16, i16* %377, align 1, !dbg !863, !tbaa !865
  %379 = tail call zeroext i16 @lwip_htons(i16 zeroext %378) #7, !dbg !863
  %380 = and i16 %379, 1, !dbg !863
  %381 = icmp eq i16 %380, 0, !dbg !863
  br i1 %381, label %394, label %382, !dbg !867

; <label>:382:                                    ; preds = %375
  %383 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %194, i64 0, i32 1, !dbg !868
  %384 = load i16, i16* %383, align 1, !dbg !868, !tbaa !586
  %385 = tail call zeroext i16 @lwip_htons(i16 zeroext %384) #7, !dbg !868
  %386 = and i16 %385, 7, !dbg !869
  %387 = icmp eq i16 %386, 0, !dbg !869
  br i1 %387, label %394, label %388, !dbg !870

; <label>:388:                                    ; preds = %382
  %389 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %194, i64 0, i32 1, !dbg !868
  %390 = bitcast i16* %389 to i8*, !dbg !871
  tail call void @icmp6_param_problem(%struct.pbuf* nonnull %195, i32 0, i8* nonnull %390) #7, !dbg !873
  %391 = tail call zeroext i8 @pbuf_free(%struct.pbuf* nonnull %195) #7, !dbg !874
  %392 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !875, !tbaa !577
  %393 = add i16 %392, 1, !dbg !875
  store i16 %393, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !875, !tbaa !577
  br label %444, !dbg !876

; <label>:394:                                    ; preds = %382, %375
  %395 = load i16, i16* %377, align 1, !dbg !877, !tbaa !865
  %396 = and i16 %395, -1537, !dbg !879
  %397 = icmp eq i16 %396, 0, !dbg !880
  br i1 %397, label %398, label %400, !dbg !881

; <label>:398:                                    ; preds = %394
  %399 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %195, i64 8) #7, !dbg !882
  br label %409, !dbg !884

; <label>:400:                                    ; preds = %394
  store i16 %376, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !885, !tbaa !887
  %401 = tail call %struct.pbuf* @ip6_reass(%struct.pbuf* nonnull %195) #7, !dbg !888
  %402 = icmp eq %struct.pbuf* %401, null, !dbg !889
  br i1 %402, label %444, label %403, !dbg !891

; <label>:403:                                    ; preds = %400
  %404 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %401, i64 0, i32 1, !dbg !892
  %405 = bitcast i8** %404 to %struct.ip6_hdr**, !dbg !892
  %406 = load %struct.ip6_hdr*, %struct.ip6_hdr** %405, align 8, !dbg !892, !tbaa !562
  %407 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %406, i64 0, i32 2, !dbg !893
  %408 = tail call zeroext i8 @pbuf_remove_header(%struct.pbuf* nonnull %401, i64 40) #7, !dbg !894
  br label %409

; <label>:409:                                    ; preds = %403, %398, %358, %311, %252
  %410 = phi i16 [ %336, %358 ], [ %276, %311 ], [ %217, %252 ], [ %376, %398 ], [ 40, %403 ], !dbg !693
  %411 = phi i8* [ %318, %358 ], [ %257, %311 ], [ %198, %252 ], [ %365, %398 ], [ %407, %403 ], !dbg !895
  %412 = phi %struct.ip6_hdr* [ %194, %358 ], [ %194, %311 ], [ %194, %252 ], [ %194, %398 ], [ %406, %403 ], !dbg !695
  %413 = phi %struct.pbuf* [ %195, %358 ], [ %195, %311 ], [ %195, %252 ], [ %195, %398 ], [ %401, %403 ]
  %414 = load i8, i8* %411, align 1, !dbg !896, !tbaa !355
  %415 = icmp eq i8 %414, 0, !dbg !898
  br i1 %415, label %416, label %190, !dbg !899, !llvm.loop !900

; <label>:416:                                    ; preds = %409
  tail call void @icmp6_param_problem(%struct.pbuf* %413, i32 1, i8* nonnull %411) #7, !dbg !902
  %417 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %413) #7, !dbg !904
  %418 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !905, !tbaa !577
  %419 = add i16 %418, 1, !dbg !905
  store i16 %419, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !905, !tbaa !577
  br label %444, !dbg !906

; <label>:420:                                    ; preds = %190
  store i16 %192, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !907, !tbaa !887
  %421 = load i8, i8* %193, align 1, !dbg !908, !tbaa !355
  switch i8 %421, label %427 [
    i8 59, label %422
    i8 17, label %424
    i8 6, label %425
    i8 58, label %426
  ], !dbg !910

; <label>:422:                                    ; preds = %420
  %423 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !911
  br label %444, !dbg !913

; <label>:424:                                    ; preds = %420
  tail call void @udp_input(%struct.pbuf* %195, %struct.netif* %1) #7, !dbg !914
  br label %444, !dbg !915

; <label>:425:                                    ; preds = %420
  tail call void @tcp_input(%struct.pbuf* %195, %struct.netif* %1) #7, !dbg !916
  br label %444, !dbg !917

; <label>:426:                                    ; preds = %420
  tail call void @icmp6_input(%struct.pbuf* %195, %struct.netif* %1) #7, !dbg !918
  br label %444, !dbg !919

; <label>:427:                                    ; preds = %420
  %428 = zext i16 %192 to i64, !dbg !920
  %429 = tail call zeroext i8 @pbuf_add_header_force(%struct.pbuf* %195, i64 %428) #7, !dbg !922
  %430 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4, !dbg !923, !tbaa !355
  %431 = and i32 %430, 255, !dbg !923
  %432 = icmp eq i32 %431, 255, !dbg !923
  br i1 %432, label %438, label %433, !dbg !925

; <label>:433:                                    ; preds = %427
  %434 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %194, i64 0, i32 2, !dbg !926
  %435 = load i8, i8* %434, align 1, !dbg !926, !tbaa !927
  %436 = icmp eq i8 %435, 58, !dbg !928
  br i1 %436, label %438, label %437, !dbg !929

; <label>:437:                                    ; preds = %433
  tail call void @icmp6_param_problem(%struct.pbuf* %195, i32 1, i8* nonnull %193) #7, !dbg !930
  br label %438, !dbg !932

; <label>:438:                                    ; preds = %433, %437, %427
  %439 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 8), align 2, !dbg !933, !tbaa !934
  %440 = add i16 %439, 1, !dbg !933
  store i16 %440, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 8), align 2, !dbg !933, !tbaa !934
  %441 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !935, !tbaa !577
  %442 = add i16 %441, 1, !dbg !935
  store i16 %442, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 3), align 2, !dbg !935, !tbaa !577
  %443 = tail call zeroext i8 @pbuf_free(%struct.pbuf* %195) #7, !dbg !936
  br label %444, !dbg !937

; <label>:444:                                    ; preds = %400, %388, %369, %353, %343, %329, %285, %289, %298, %269, %226, %230, %239, %210, %422, %424, %425, %426, %438, %416, %184, %178
  store <2 x %struct.netif*> zeroinitializer, <2 x %struct.netif*>* bitcast (%struct.ip_globals* @ip_data to <2 x %struct.netif*>*), align 8, !dbg !938, !tbaa !273
  store %struct.ip6_hdr* null, %struct.ip6_hdr** getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 3), align 8, !dbg !939, !tbaa !629
  store i16 0, i16* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 4), align 8, !dbg !940, !tbaa !887
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !941, !tbaa !355
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 5, i32 0, i32 0, i32 1), align 4, !dbg !941, !tbaa !355
  store <4 x i32> zeroinitializer, <4 x i32>* bitcast (i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0) to <4 x i32>*), align 4, !dbg !943, !tbaa !355
  store i8 0, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4, !dbg !943, !tbaa !355
  br label %445, !dbg !945

; <label>:445:                                    ; preds = %444, %73, %33, %13
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !946
  ret i8 0, !dbg !946
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
define internal fastcc i32 @ip6_input_accept(%struct.netif* nocapture readonly) unnamed_addr #0 !dbg !947 {
  %2 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 21, !dbg !956
  %3 = load i8, i8* %2, align 1, !dbg !956, !tbaa !289
  %4 = and i8 %3, 1, !dbg !956
  %5 = icmp eq i8 %4, 0, !dbg !956
  br i1 %5, label %41, label %6, !dbg !957

; <label>:6:                                      ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 0), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 1), align 4
  %9 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 2), align 4
  %10 = load i32, i32* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 0, i64 3), align 4
  %11 = load i8, i8* getelementptr inbounds (%struct.ip_globals, %struct.ip_globals* @ip_data, i64 0, i32 6, i32 0, i32 0, i32 1), align 4
  %12 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 0, !dbg !959
  %13 = load i8, i8* %12, align 1, !dbg !959, !tbaa !355
  %14 = and i8 %13, 16, !dbg !959
  %15 = icmp eq i8 %14, 0, !dbg !959
  br i1 %15, label %36, label %16, !dbg !964

; <label>:16:                                     ; preds = %6
  %17 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !965
  %18 = load i32, i32* %17, align 8, !dbg !965, !tbaa !355
  %19 = icmp eq i32 %7, %18, !dbg !965
  br i1 %19, label %20, label %36, !dbg !965

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !965
  %22 = load i32, i32* %21, align 4, !dbg !965, !tbaa !355
  %23 = icmp eq i32 %8, %22, !dbg !965
  br i1 %23, label %24, label %36, !dbg !965

; <label>:24:                                     ; preds = %20
  %25 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !965
  %26 = load i32, i32* %25, align 8, !dbg !965, !tbaa !355
  %27 = icmp eq i32 %9, %26, !dbg !965
  br i1 %27, label %28, label %36, !dbg !965

; <label>:28:                                     ; preds = %24
  %29 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !965
  %30 = load i32, i32* %29, align 4, !dbg !965, !tbaa !355
  %31 = icmp eq i32 %10, %30, !dbg !965
  br i1 %31, label %32, label %36, !dbg !965

; <label>:32:                                     ; preds = %28
  %33 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 0, i32 0, i32 0, i32 1, !dbg !965
  %34 = load i8, i8* %33, align 8, !dbg !965, !tbaa !355
  %35 = icmp eq i8 %11, %34, !dbg !965
  br i1 %35, label %41, label %36, !dbg !966

; <label>:36:                                     ; preds = %6, %16, %20, %24, %28, %32
  %37 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 1, !dbg !959
  %38 = load i8, i8* %37, align 1, !dbg !959, !tbaa !355
  %39 = and i8 %38, 16, !dbg !959
  %40 = icmp eq i8 %39, 0, !dbg !959
  br i1 %40, label %63, label %43, !dbg !964

; <label>:41:                                     ; preds = %32, %59, %84, %88, %1
  %42 = phi i32 [ 0, %1 ], [ 1, %32 ], [ 1, %59 ], [ 1, %84 ], [ 0, %88 ], !dbg !967
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !969
  ret i32 %42, !dbg !969

; <label>:43:                                     ; preds = %36
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 0, !dbg !965
  %45 = load i32, i32* %44, align 8, !dbg !965, !tbaa !355
  %46 = icmp eq i32 %7, %45, !dbg !965
  br i1 %46, label %47, label %63, !dbg !965

; <label>:47:                                     ; preds = %43
  %48 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 1, !dbg !965
  %49 = load i32, i32* %48, align 4, !dbg !965, !tbaa !355
  %50 = icmp eq i32 %8, %49, !dbg !965
  br i1 %50, label %51, label %63, !dbg !965

; <label>:51:                                     ; preds = %47
  %52 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 2, !dbg !965
  %53 = load i32, i32* %52, align 8, !dbg !965, !tbaa !355
  %54 = icmp eq i32 %9, %53, !dbg !965
  br i1 %54, label %55, label %63, !dbg !965

; <label>:55:                                     ; preds = %51
  %56 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 0, i64 3, !dbg !965
  %57 = load i32, i32* %56, align 4, !dbg !965, !tbaa !355
  %58 = icmp eq i32 %10, %57, !dbg !965
  br i1 %58, label %59, label %63, !dbg !965

; <label>:59:                                     ; preds = %55
  %60 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 1, i32 0, i32 0, i32 1, !dbg !965
  %61 = load i8, i8* %60, align 8, !dbg !965, !tbaa !355
  %62 = icmp eq i8 %11, %61, !dbg !965
  br i1 %62, label %41, label %63, !dbg !966

; <label>:63:                                     ; preds = %59, %55, %51, %47, %43, %36
  %64 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 5, i64 2, !dbg !959
  %65 = load i8, i8* %64, align 1, !dbg !959, !tbaa !355
  %66 = and i8 %65, 16, !dbg !959
  %67 = icmp eq i8 %66, 0, !dbg !959
  br i1 %67, label %88, label %68, !dbg !964

; <label>:68:                                     ; preds = %63
  %69 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 0, !dbg !965
  %70 = load i32, i32* %69, align 8, !dbg !965, !tbaa !355
  %71 = icmp eq i32 %7, %70, !dbg !965
  br i1 %71, label %72, label %88, !dbg !965

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 1, !dbg !965
  %74 = load i32, i32* %73, align 4, !dbg !965, !tbaa !355
  %75 = icmp eq i32 %8, %74, !dbg !965
  br i1 %75, label %76, label %88, !dbg !965

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 2, !dbg !965
  %78 = load i32, i32* %77, align 8, !dbg !965, !tbaa !355
  %79 = icmp eq i32 %9, %78, !dbg !965
  br i1 %79, label %80, label %88, !dbg !965

; <label>:80:                                     ; preds = %76
  %81 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 0, i64 3, !dbg !965
  %82 = load i32, i32* %81, align 4, !dbg !965, !tbaa !355
  %83 = icmp eq i32 %10, %82, !dbg !965
  br i1 %83, label %84, label %88, !dbg !965

; <label>:84:                                     ; preds = %80
  %85 = getelementptr inbounds %struct.netif, %struct.netif* %0, i64 0, i32 4, i64 2, i32 0, i32 0, i32 1, !dbg !965
  %86 = load i8, i8* %85, align 8, !dbg !965, !tbaa !355
  %87 = icmp eq i8 %11, %86, !dbg !965
  br i1 %87, label %41, label %88, !dbg !966

; <label>:88:                                     ; preds = %84, %80, %76, %72, %68, %63
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
define dso_local signext i8 @ip6_output_if(%struct.pbuf*, %struct.ip6_addr* readonly, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !970 {
  %8 = icmp ne %struct.ip6_addr* %2, null, !dbg !990
  %9 = icmp ne %struct.ip6_addr* %1, null, !dbg !992
  %10 = and i1 %9, %8, !dbg !995
  br i1 %10, label %11, label %50, !dbg !995

; <label>:11:                                     ; preds = %7
  %12 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !996
  %13 = load i32, i32* %12, align 4, !dbg !996, !tbaa !318
  %14 = icmp eq i32 %13, 0, !dbg !996
  br i1 %14, label %15, label %50, !dbg !996

; <label>:15:                                     ; preds = %11
  %16 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !996
  %17 = load i32, i32* %16, align 4, !dbg !996, !tbaa !318
  %18 = icmp eq i32 %17, 0, !dbg !996
  br i1 %18, label %19, label %50, !dbg !996

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !996
  %21 = load i32, i32* %20, align 4, !dbg !996, !tbaa !318
  %22 = icmp eq i32 %21, 0, !dbg !996
  br i1 %22, label %23, label %50, !dbg !996

; <label>:23:                                     ; preds = %19
  %24 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !996
  %25 = load i32, i32* %24, align 4, !dbg !996, !tbaa !318
  %26 = icmp eq i32 %25, 0, !dbg !996
  br i1 %26, label %27, label %50, !dbg !997

; <label>:27:                                     ; preds = %23
  %28 = tail call %struct.ip_addr* @ip6_select_source_address(%struct.netif* %6, %struct.ip6_addr* nonnull %2) #8, !dbg !998
  %29 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, !dbg !998
  %30 = icmp eq %struct.ip_addr* %28, null, !dbg !1000
  br i1 %30, label %47, label %31, !dbg !1002

; <label>:31:                                     ; preds = %27
  %32 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1003
  %33 = load i32, i32* %32, align 4, !dbg !1003, !tbaa !318
  %34 = icmp eq i32 %33, 0, !dbg !1003
  br i1 %34, label %35, label %50, !dbg !1003

; <label>:35:                                     ; preds = %31
  %36 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1003
  %37 = load i32, i32* %36, align 4, !dbg !1003, !tbaa !318
  %38 = icmp eq i32 %37, 0, !dbg !1003
  br i1 %38, label %39, label %50, !dbg !1003

; <label>:39:                                     ; preds = %35
  %40 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1003
  %41 = load i32, i32* %40, align 4, !dbg !1003, !tbaa !318
  %42 = icmp eq i32 %41, 0, !dbg !1003
  br i1 %42, label %43, label %50, !dbg !1003

; <label>:43:                                     ; preds = %39
  %44 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %28, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1003
  %45 = load i32, i32* %44, align 4, !dbg !1003, !tbaa !318
  %46 = icmp eq i32 %45, 0, !dbg !1003
  br i1 %46, label %47, label %50, !dbg !1004

; <label>:47:                                     ; preds = %43, %27
  %48 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1005, !tbaa !1007
  %49 = add i16 %48, 1, !dbg !1005
  store i16 %49, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1005, !tbaa !1007
  br label %53, !dbg !1008

; <label>:50:                                     ; preds = %11, %15, %19, %23, %43, %39, %35, %31, %7
  %51 = phi %struct.ip6_addr* [ %29, %43 ], [ %29, %39 ], [ %29, %35 ], [ %29, %31 ], [ %1, %23 ], [ %1, %19 ], [ %1, %15 ], [ %1, %11 ], [ %1, %7 ], !dbg !1009
  %52 = tail call signext i8 @ip6_output_if_src(%struct.pbuf* %0, %struct.ip6_addr* %51, %struct.ip6_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* %6) #8, !dbg !1010
  br label %53, !dbg !1011

; <label>:53:                                     ; preds = %50, %47
  %54 = phi i8 [ -4, %47 ], [ %52, %50 ], !dbg !1009
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1012
  ret i8 %54, !dbg !1012
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_output_if_src(%struct.pbuf*, %struct.ip6_addr* readonly, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext, %struct.netif*) local_unnamed_addr #0 !dbg !1013 {
  %8 = alloca %struct.ip6_addr, align 16
  %9 = bitcast %struct.ip6_addr* %8 to i8*, !dbg !1031
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1031
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1032
  %11 = load i8, i8* %10, align 2, !dbg !1032, !tbaa !1035
  %12 = icmp eq i8 %11, 1, !dbg !1032
  br i1 %12, label %14, label %13, !dbg !1036

; <label>:13:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1037
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1040
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1040
  unreachable, !dbg !1040

; <label>:14:                                     ; preds = %7
  %15 = icmp eq %struct.ip6_addr* %2, null, !dbg !1044
  br i1 %15, label %103, label %16, !dbg !1046

; <label>:16:                                     ; preds = %14
  %17 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 1, !dbg !1047
  %18 = load i8, i8* %17, align 4, !dbg !1047, !tbaa !292
  %19 = icmp eq i8 %18, 0, !dbg !1047
  br i1 %19, label %20, label %49, !dbg !1047

; <label>:20:                                     ; preds = %16
  %21 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 0, !dbg !1047
  %22 = load i32, i32* %21, align 4, !dbg !1047, !tbaa !318
  %23 = and i32 %22, 49407, !dbg !1047
  %24 = icmp eq i32 %23, 33022, !dbg !1047
  br i1 %24, label %28, label %25, !dbg !1047

; <label>:25:                                     ; preds = %20
  %26 = trunc i32 %22 to i16, !dbg !1047
  %27 = and i16 %26, -28673, !dbg !1047
  switch i16 %27, label %49 [
    i16 511, label %28
    i16 767, label %28
  ], !dbg !1047

; <label>:28:                                     ; preds = %25, %25, %20
  %29 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 0, !dbg !1050
  store i32 %22, i32* %29, align 16, !dbg !1050, !tbaa !318
  %30 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 1, !dbg !1050
  %31 = load i32, i32* %30, align 4, !dbg !1050, !tbaa !318
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 1, !dbg !1050
  store i32 %31, i32* %32, align 4, !dbg !1050, !tbaa !318
  %33 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 2, !dbg !1050
  %34 = load i32, i32* %33, align 4, !dbg !1050, !tbaa !318
  %35 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 2, !dbg !1050
  store i32 %34, i32* %35, align 8, !dbg !1050, !tbaa !318
  %36 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %2, i64 0, i32 0, i64 3, !dbg !1050
  %37 = load i32, i32* %36, align 4, !dbg !1050, !tbaa !318
  %38 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 0, i64 3, !dbg !1050
  store i32 %37, i32* %38, align 4, !dbg !1050, !tbaa !318
  %39 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1050
  store i8 0, i8* %39, align 16, !dbg !1050, !tbaa !292
  br i1 %24, label %43, label %40, !dbg !1053

; <label>:40:                                     ; preds = %28
  %41 = trunc i32 %22 to i16, !dbg !1053
  %42 = and i16 %41, -28673, !dbg !1053
  switch i16 %42, label %47 [
    i16 511, label %43
    i16 767, label %43
  ], !dbg !1053

; <label>:43:                                     ; preds = %40, %40, %28
  %44 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 23, !dbg !1053
  %45 = load i8, i8* %44, align 8, !dbg !1053, !tbaa !296
  %46 = add i8 %45, 1, !dbg !1053
  br label %47, !dbg !1053

; <label>:47:                                     ; preds = %40, %43
  %48 = phi i8 [ %46, %43 ], [ 0, %40 ]
  store i8 %48, i8* %39, align 16, !dbg !1053, !tbaa !292
  br label %49, !dbg !1054

; <label>:49:                                     ; preds = %25, %16, %47
  %50 = phi %struct.ip6_addr* [ %2, %16 ], [ %8, %47 ], [ %2, %25 ]
  %51 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* nonnull %0, i64 40) #7, !dbg !1055
  %52 = icmp eq i8 %51, 0, !dbg !1055
  br i1 %52, label %56, label %53, !dbg !1057

; <label>:53:                                     ; preds = %49
  %54 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1058, !tbaa !575
  %55 = add i16 %54, 1, !dbg !1058
  store i16 %55, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1058, !tbaa !575
  br label %142, !dbg !1060

; <label>:56:                                     ; preds = %49
  %57 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1061
  %58 = bitcast i8** %57 to %struct.ip6_hdr**, !dbg !1061
  %59 = load %struct.ip6_hdr*, %struct.ip6_hdr** %58, align 8, !dbg !1061, !tbaa !562
  %60 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 3, !dbg !1063
  %61 = load i16, i16* %60, align 2, !dbg !1063, !tbaa !581
  %62 = icmp ugt i16 %61, 39, !dbg !1063
  br i1 %62, label %64, label %63, !dbg !1066

; <label>:63:                                     ; preds = %56
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !1067
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1070
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1070
  unreachable, !dbg !1070

; <label>:64:                                     ; preds = %56
  %65 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 3, !dbg !1074
  store i8 %3, i8* %65, align 1, !dbg !1074, !tbaa !1075
  %66 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 2, !dbg !1076
  store i8 %5, i8* %66, align 1, !dbg !1076, !tbaa !927
  %67 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %50, i64 0, i32 0, i64 0, !dbg !1077
  %68 = load i32, i32* %67, align 4, !dbg !1077, !tbaa !318
  %69 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 5, i32 0, i64 0, !dbg !1077
  store i32 %68, i32* %69, align 1, !dbg !1077, !tbaa !318
  %70 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %50, i64 0, i32 0, i64 1, !dbg !1077
  %71 = load i32, i32* %70, align 4, !dbg !1077, !tbaa !318
  %72 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 5, i32 0, i64 1, !dbg !1077
  store i32 %71, i32* %72, align 1, !dbg !1077, !tbaa !318
  %73 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %50, i64 0, i32 0, i64 2, !dbg !1077
  %74 = load i32, i32* %73, align 4, !dbg !1077, !tbaa !318
  %75 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 5, i32 0, i64 2, !dbg !1077
  store i32 %74, i32* %75, align 1, !dbg !1077, !tbaa !318
  %76 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %50, i64 0, i32 0, i64 3, !dbg !1077
  %77 = load i32, i32* %76, align 4, !dbg !1077, !tbaa !318
  %78 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 5, i32 0, i64 3, !dbg !1077
  store i32 %77, i32* %78, align 1, !dbg !1077, !tbaa !318
  %79 = zext i8 %4 to i32, !dbg !1079
  %80 = shl nuw nsw i32 %79, 20, !dbg !1079
  %81 = or i32 %80, 1610612736, !dbg !1079
  %82 = tail call i32 @lwip_htonl(i32 %81) #7, !dbg !1079
  %83 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 0, !dbg !1079
  store i32 %82, i32* %83, align 1, !dbg !1079, !tbaa !567
  %84 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1080
  %85 = load i16, i16* %84, align 8, !dbg !1080, !tbaa !588
  %86 = add i16 %85, -40, !dbg !1080
  %87 = tail call zeroext i16 @lwip_htons(i16 zeroext %86) #7, !dbg !1080
  %88 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 1, !dbg !1080
  store i16 %87, i16* %88, align 1, !dbg !1080, !tbaa !586
  %89 = icmp eq %struct.ip6_addr* %1, null, !dbg !1081
  %90 = select i1 %89, %struct.ip6_addr* getelementptr inbounds (%struct.ip_addr, %struct.ip_addr* @ip6_addr_any, i64 0, i32 0, i32 0), %struct.ip6_addr* %1, !dbg !1083
  %91 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %90, i64 0, i32 0, i64 0, !dbg !1084
  %92 = load i32, i32* %91, align 4, !dbg !1084, !tbaa !318
  %93 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 4, i32 0, i64 0, !dbg !1084
  store i32 %92, i32* %93, align 1, !dbg !1084, !tbaa !318
  %94 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %90, i64 0, i32 0, i64 1, !dbg !1084
  %95 = load i32, i32* %94, align 4, !dbg !1084, !tbaa !318
  %96 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 4, i32 0, i64 1, !dbg !1084
  store i32 %95, i32* %96, align 1, !dbg !1084, !tbaa !318
  %97 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %90, i64 0, i32 0, i64 2, !dbg !1084
  %98 = load i32, i32* %97, align 4, !dbg !1084, !tbaa !318
  %99 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 4, i32 0, i64 2, !dbg !1084
  store i32 %98, i32* %99, align 1, !dbg !1084, !tbaa !318
  %100 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %90, i64 0, i32 0, i64 3, !dbg !1084
  %101 = load i32, i32* %100, align 4, !dbg !1084, !tbaa !318
  %102 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %59, i64 0, i32 4, i32 0, i64 3, !dbg !1084
  store i32 %101, i32* %102, align 1, !dbg !1084, !tbaa !318
  br label %124, !dbg !1086

; <label>:103:                                    ; preds = %14
  %104 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1087
  %105 = bitcast i8** %104 to %struct.ip6_hdr**, !dbg !1087
  %106 = load %struct.ip6_hdr*, %struct.ip6_hdr** %105, align 8, !dbg !1087, !tbaa !562
  %107 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %106, i64 0, i32 5, i32 0, i64 0, !dbg !1089
  %108 = bitcast i32* %107 to <4 x i32>*, !dbg !1089
  %109 = load <4 x i32>, <4 x i32>* %108, align 1, !dbg !1089, !tbaa !318
  %110 = bitcast %struct.ip6_addr* %8 to <4 x i32>*, !dbg !1089
  store <4 x i32> %109, <4 x i32>* %110, align 16, !dbg !1089, !tbaa !318
  %111 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1089
  store i8 0, i8* %111, align 16, !dbg !1089, !tbaa !292
  %112 = extractelement <4 x i32> %109, i32 0, !dbg !1091
  %113 = and i32 %112, 49407, !dbg !1091
  %114 = icmp eq i32 %113, 33022, !dbg !1091
  br i1 %114, label %118, label %115, !dbg !1091

; <label>:115:                                    ; preds = %103
  %116 = trunc i32 %112 to i16, !dbg !1091
  %117 = and i16 %116, -28673, !dbg !1091
  switch i16 %117, label %122 [
    i16 511, label %118
    i16 767, label %118
  ], !dbg !1091

; <label>:118:                                    ; preds = %115, %115, %103
  %119 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 23, !dbg !1091
  %120 = load i8, i8* %119, align 8, !dbg !1091, !tbaa !296
  %121 = add i8 %120, 1, !dbg !1091
  br label %122, !dbg !1091

; <label>:122:                                    ; preds = %115, %118
  %123 = phi i8 [ %121, %118 ], [ 0, %115 ]
  store i8 %123, i8* %111, align 16, !dbg !1091, !tbaa !292
  br label %124

; <label>:124:                                    ; preds = %122, %64
  %125 = phi %struct.ip6_addr* [ %50, %64 ], [ %8, %122 ]
  %126 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 0), align 2, !dbg !1092, !tbaa !1093
  %127 = add i16 %126, 1, !dbg !1092
  store i16 %127, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 0), align 2, !dbg !1092, !tbaa !1093
  %128 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 18, !dbg !1094
  %129 = load i16, i16* %128, align 4, !dbg !1094, !tbaa !1096
  %130 = icmp eq i16 %129, 0, !dbg !1094
  br i1 %130, label %138, label %131, !dbg !1097

; <label>:131:                                    ; preds = %124
  %132 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 2, !dbg !1098
  %133 = load i16, i16* %132, align 8, !dbg !1098, !tbaa !588
  %134 = call zeroext i16 @nd6_get_destination_mtu(%struct.ip6_addr* nonnull %125, %struct.netif* nonnull %6) #7, !dbg !1099
  %135 = icmp ugt i16 %133, %134, !dbg !1100
  br i1 %135, label %136, label %138, !dbg !1101

; <label>:136:                                    ; preds = %131
  %137 = call signext i8 @ip6_frag(%struct.pbuf* nonnull %0, %struct.netif* nonnull %6, %struct.ip6_addr* nonnull %125) #7, !dbg !1102
  br label %142, !dbg !1104

; <label>:138:                                    ; preds = %124, %131
  %139 = getelementptr inbounds %struct.netif, %struct.netif* %6, i64 0, i32 11, !dbg !1105
  %140 = load i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)*, i8 (%struct.netif*, %struct.pbuf*, %struct.ip6_addr*)** %139, align 8, !dbg !1105, !tbaa !1106
  %141 = call signext i8 %140(%struct.netif* nonnull %6, %struct.pbuf* nonnull %0, %struct.ip6_addr* nonnull %125) #7, !dbg !1107
  br label %142, !dbg !1108

; <label>:142:                                    ; preds = %138, %136, %53
  %143 = phi i8 [ -2, %53 ], [ %137, %136 ], [ %141, %138 ], !dbg !1109
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1110
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1110
  ret i8 %143, !dbg !1110
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !1112
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1112
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !1114
  call void @llvm.va_start(i8* nonnull %3), !dbg !1114
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @uk_pr_crit.__str.4, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #7, !dbg !1115
  call void @llvm.va_end(i8* nonnull %3), !dbg !1118
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !1119
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1119
  ret void, !dbg !1119
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
define dso_local signext i8 @ip6_output(%struct.pbuf*, %struct.ip6_addr*, %struct.ip6_addr*, i8 zeroext, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1120 {
  %7 = alloca %struct.ip6_addr, align 16
  %8 = alloca %struct.ip6_addr, align 16
  %9 = bitcast %struct.ip6_addr* %7 to i8*, !dbg !1140
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1140
  %10 = bitcast %struct.ip6_addr* %8 to i8*, !dbg !1140
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %10) #6, !dbg !1140
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 6, !dbg !1141
  %12 = load i8, i8* %11, align 2, !dbg !1141, !tbaa !1035
  %13 = icmp eq i8 %12, 1, !dbg !1141
  br i1 %13, label %15, label %14, !dbg !1144

; <label>:14:                                     ; preds = %6
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)) #8, !dbg !1145
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !1148
  tail call void @ukplat_terminate(i32 3) #9, !dbg !1148
  unreachable, !dbg !1148

; <label>:15:                                     ; preds = %6
  %16 = icmp eq %struct.ip6_addr* %2, null, !dbg !1152
  br i1 %16, label %19, label %17, !dbg !1154

; <label>:17:                                     ; preds = %15
  %18 = tail call %struct.netif* @ip6_route(%struct.ip6_addr* %1, %struct.ip6_addr* nonnull %2) #8, !dbg !1155
  br label %34, !dbg !1158

; <label>:19:                                     ; preds = %15
  %20 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1159
  %21 = bitcast i8** %20 to %struct.ip6_hdr**, !dbg !1159
  %22 = load %struct.ip6_hdr*, %struct.ip6_hdr** %21, align 8, !dbg !1159, !tbaa !562
  %23 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %22, i64 0, i32 4, i32 0, i64 0, !dbg !1162
  %24 = bitcast i32* %23 to <4 x i32>*, !dbg !1162
  %25 = load <4 x i32>, <4 x i32>* %24, align 1, !dbg !1162, !tbaa !318
  %26 = bitcast %struct.ip6_addr* %7 to <4 x i32>*, !dbg !1162
  store <4 x i32> %25, <4 x i32>* %26, align 16, !dbg !1162, !tbaa !318
  %27 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %7, i64 0, i32 1, !dbg !1162
  store i8 0, i8* %27, align 16, !dbg !1162, !tbaa !292
  %28 = getelementptr inbounds %struct.ip6_hdr, %struct.ip6_hdr* %22, i64 0, i32 5, i32 0, i64 0, !dbg !1164
  %29 = bitcast i32* %28 to <4 x i32>*, !dbg !1164
  %30 = load <4 x i32>, <4 x i32>* %29, align 1, !dbg !1164, !tbaa !318
  %31 = bitcast %struct.ip6_addr* %8 to <4 x i32>*, !dbg !1164
  store <4 x i32> %30, <4 x i32>* %31, align 16, !dbg !1164, !tbaa !318
  %32 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %8, i64 0, i32 1, !dbg !1164
  store i8 0, i8* %32, align 16, !dbg !1164, !tbaa !292
  %33 = call %struct.netif* @ip6_route(%struct.ip6_addr* nonnull %7, %struct.ip6_addr* nonnull %8) #8, !dbg !1168
  br label %34

; <label>:34:                                     ; preds = %19, %17
  %35 = phi %struct.netif* [ %18, %17 ], [ %33, %19 ], !dbg !1169
  %36 = icmp eq %struct.netif* %35, null, !dbg !1170
  br i1 %36, label %37, label %40, !dbg !1172

; <label>:37:                                     ; preds = %34
  %38 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1173, !tbaa !1007
  %39 = add i16 %38, 1, !dbg !1173
  store i16 %39, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1173, !tbaa !1007
  br label %88, !dbg !1175

; <label>:40:                                     ; preds = %34
  %41 = icmp ne %struct.ip6_addr* %2, null, !dbg !1185
  %42 = icmp ne %struct.ip6_addr* %1, null, !dbg !1186
  %43 = and i1 %42, %41, !dbg !1187
  br i1 %43, label %44, label %83, !dbg !1187

; <label>:44:                                     ; preds = %40
  %45 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 0, !dbg !1188
  %46 = load i32, i32* %45, align 4, !dbg !1188, !tbaa !318
  %47 = icmp eq i32 %46, 0, !dbg !1188
  br i1 %47, label %48, label %83, !dbg !1188

; <label>:48:                                     ; preds = %44
  %49 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 1, !dbg !1188
  %50 = load i32, i32* %49, align 4, !dbg !1188, !tbaa !318
  %51 = icmp eq i32 %50, 0, !dbg !1188
  br i1 %51, label %52, label %83, !dbg !1188

; <label>:52:                                     ; preds = %48
  %53 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 2, !dbg !1188
  %54 = load i32, i32* %53, align 4, !dbg !1188, !tbaa !318
  %55 = icmp eq i32 %54, 0, !dbg !1188
  br i1 %55, label %56, label %83, !dbg !1188

; <label>:56:                                     ; preds = %52
  %57 = getelementptr inbounds %struct.ip6_addr, %struct.ip6_addr* %1, i64 0, i32 0, i64 3, !dbg !1188
  %58 = load i32, i32* %57, align 4, !dbg !1188, !tbaa !318
  %59 = icmp eq i32 %58, 0, !dbg !1188
  br i1 %59, label %60, label %83, !dbg !1189

; <label>:60:                                     ; preds = %56
  %61 = call %struct.ip_addr* @ip6_select_source_address(%struct.netif* nonnull %35, %struct.ip6_addr* nonnull %2) #7, !dbg !1190
  %62 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, !dbg !1190
  %63 = icmp eq %struct.ip_addr* %61, null, !dbg !1191
  br i1 %63, label %80, label %64, !dbg !1192

; <label>:64:                                     ; preds = %60
  %65 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 0, !dbg !1193
  %66 = load i32, i32* %65, align 4, !dbg !1193, !tbaa !318
  %67 = icmp eq i32 %66, 0, !dbg !1193
  br i1 %67, label %68, label %83, !dbg !1193

; <label>:68:                                     ; preds = %64
  %69 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 1, !dbg !1193
  %70 = load i32, i32* %69, align 4, !dbg !1193, !tbaa !318
  %71 = icmp eq i32 %70, 0, !dbg !1193
  br i1 %71, label %72, label %83, !dbg !1193

; <label>:72:                                     ; preds = %68
  %73 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 2, !dbg !1193
  %74 = load i32, i32* %73, align 4, !dbg !1193, !tbaa !318
  %75 = icmp eq i32 %74, 0, !dbg !1193
  br i1 %75, label %76, label %83, !dbg !1193

; <label>:76:                                     ; preds = %72
  %77 = getelementptr inbounds %struct.ip_addr, %struct.ip_addr* %61, i64 0, i32 0, i32 0, i32 0, i64 3, !dbg !1193
  %78 = load i32, i32* %77, align 4, !dbg !1193, !tbaa !318
  %79 = icmp eq i32 %78, 0, !dbg !1193
  br i1 %79, label %80, label %83, !dbg !1194

; <label>:80:                                     ; preds = %76, %60
  %81 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1195, !tbaa !1007
  %82 = add i16 %81, 1, !dbg !1195
  store i16 %82, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 7), align 2, !dbg !1195, !tbaa !1007
  br label %86, !dbg !1196

; <label>:83:                                     ; preds = %76, %72, %68, %64, %56, %52, %48, %44, %40
  %84 = phi %struct.ip6_addr* [ %62, %76 ], [ %62, %72 ], [ %62, %68 ], [ %62, %64 ], [ %1, %56 ], [ %1, %52 ], [ %1, %48 ], [ %1, %44 ], [ %1, %40 ], !dbg !1197
  %85 = call signext i8 @ip6_output_if_src(%struct.pbuf* nonnull %0, %struct.ip6_addr* %84, %struct.ip6_addr* %2, i8 zeroext %3, i8 zeroext %4, i8 zeroext %5, %struct.netif* nonnull %35) #7, !dbg !1198
  br label %86, !dbg !1199

; <label>:86:                                     ; preds = %80, %83
  %87 = phi i8 [ -4, %80 ], [ %85, %83 ], !dbg !1197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1200
  br label %88, !dbg !1201

; <label>:88:                                     ; preds = %86, %37
  %89 = phi i8 [ -4, %37 ], [ %87, %86 ], !dbg !1202
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %10) #6, !dbg !1203
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %9) #6, !dbg !1203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1203
  ret i8 %89, !dbg !1203
}

; Function Attrs: noredzone nounwind
define dso_local signext i8 @ip6_options_add_hbh_ra(%struct.pbuf*, i8 zeroext, i8 zeroext) local_unnamed_addr #0 !dbg !1204 {
  %4 = tail call zeroext i8 @pbuf_add_header(%struct.pbuf* %0, i64 8) #7, !dbg !1221
  %5 = icmp eq i8 %4, 0, !dbg !1221
  br i1 %5, label %9, label %6, !dbg !1223

; <label>:6:                                      ; preds = %3
  %7 = load i16, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1224, !tbaa !575
  %8 = add i16 %7, 1, !dbg !1224
  store i16 %8, i16* getelementptr inbounds (%struct.stats_, %struct.stats_* @lwip_stats, i64 0, i32 8, i32 10), align 2, !dbg !1224, !tbaa !575
  br label %19, !dbg !1226

; <label>:9:                                      ; preds = %3
  %10 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 1, !dbg !1227
  %11 = load i8*, i8** %10, align 8, !dbg !1227, !tbaa !562
  store i8 %1, i8* %11, align 1, !dbg !1229, !tbaa !1230
  %12 = getelementptr inbounds i8, i8* %11, i64 1, !dbg !1231
  store i8 0, i8* %12, align 1, !dbg !1232, !tbaa !699
  %13 = getelementptr inbounds i8, i8* %11, i64 2, !dbg !1233
  store i8 5, i8* %13, align 1, !dbg !1235, !tbaa !722
  %14 = getelementptr inbounds i8, i8* %11, i64 3, !dbg !1236
  store i8 2, i8* %14, align 1, !dbg !1237, !tbaa !746
  %15 = getelementptr inbounds i8, i8* %11, i64 4, !dbg !1238
  store i8 %2, i8* %15, align 1, !dbg !1240, !tbaa !355
  %16 = getelementptr inbounds i8, i8* %11, i64 5, !dbg !1241
  store i8 0, i8* %16, align 1, !dbg !1242, !tbaa !355
  %17 = getelementptr inbounds i8, i8* %11, i64 6, !dbg !1243
  store i8 1, i8* %17, align 1, !dbg !1244, !tbaa !722
  %18 = getelementptr inbounds i8, i8* %11, i64 7, !dbg !1245
  store i8 0, i8* %18, align 1, !dbg !1246, !tbaa !746
  br label %19, !dbg !1247

; <label>:19:                                     ; preds = %9, %6
  %20 = phi i8 [ -2, %6 ], [ 0, %9 ], !dbg !1248
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !1249
  ret i8 %20, !dbg !1249
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
!291 = !DILocation(line: 100, column: 10, scope: !287)
!292 = !{!293, !275, i64 16}
!293 = !{!"ip6_addr", !275, i64 0, !275, i64 16}
!294 = !DILocation(line: 100, column: 34, scope: !287)
!295 = !DILocation(line: 100, column: 38, scope: !287)
!296 = !{!281, !275, i64 264}
!297 = !DILocation(line: 99, column: 9, scope: !288)
!298 = !DILocation(line: 103, column: 5, scope: !288)
!299 = !DILocation(line: 112, column: 7, scope: !300)
!300 = distinct !DILexicalBlock(scope: !178, file: !10, line: 112, column: 7)
!301 = !DILocation(line: 112, column: 7, scope: !178)
!302 = !DILocation(line: 92, column: 17, scope: !178)
!303 = !DILocation(line: 116, column: 5, scope: !304)
!304 = distinct !DILexicalBlock(scope: !305, file: !10, line: 116, column: 5)
!305 = distinct !DILexicalBlock(scope: !300, file: !10, line: 112, column: 32)
!306 = !DILocation(line: 117, column: 11, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !10, line: 117, column: 11)
!308 = distinct !DILexicalBlock(scope: !309, file: !10, line: 116, column: 26)
!309 = distinct !DILexicalBlock(scope: !304, file: !10, line: 116, column: 5)
!310 = !DILocation(line: 117, column: 43, scope: !307)
!311 = !DILocation(line: 118, column: 11, scope: !307)
!312 = !DILocation(line: 118, column: 30, scope: !307)
!313 = !DILocation(line: 116, column: 5, scope: !309)
!314 = distinct !{!314, !303, !315}
!315 = !DILocation(line: 121, column: 5, scope: !304)
!316 = !DILocation(line: 143, column: 7, scope: !317)
!317 = distinct !DILexicalBlock(scope: !178, file: !10, line: 143, column: 7)
!318 = !{!319, !319, i64 0}
!319 = !{!"int", !275, i64 0}
!320 = !DILocation(line: 144, column: 7, scope: !317)
!321 = !DILocation(line: 144, column: 44, scope: !317)
!322 = !DILocation(line: 149, column: 7, scope: !317)
!323 = !DILocation(line: 143, column: 7, scope: !178)
!324 = !DILocation(line: 151, column: 9, scope: !325)
!325 = distinct !DILexicalBlock(scope: !326, file: !10, line: 151, column: 9)
!326 = distinct !DILexicalBlock(scope: !317, file: !10, line: 149, column: 33)
!327 = !DILocation(line: 151, column: 9, scope: !326)
!328 = !DILocation(line: 153, column: 7, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !10, line: 153, column: 7)
!330 = distinct !DILexicalBlock(scope: !325, file: !10, line: 151, column: 33)
!331 = !DILocation(line: 163, column: 7, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !10, line: 163, column: 7)
!333 = distinct !DILexicalBlock(scope: !325, file: !10, line: 161, column: 5)
!334 = !DILocation(line: 154, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !10, line: 154, column: 13)
!336 = distinct !DILexicalBlock(scope: !337, file: !10, line: 153, column: 28)
!337 = distinct !DILexicalBlock(scope: !329, file: !10, line: 153, column: 7)
!338 = !DILocation(line: 154, column: 32, scope: !335)
!339 = !DILocation(line: 155, column: 13, scope: !335)
!340 = !DILocation(line: 154, column: 13, scope: !336)
!341 = !DILocation(line: 153, column: 7, scope: !337)
!342 = distinct !{!342, !328, !343}
!343 = !DILocation(line: 158, column: 7, scope: !329)
!344 = !DILocation(line: 164, column: 14, scope: !345)
!345 = distinct !DILexicalBlock(scope: !346, file: !10, line: 164, column: 13)
!346 = distinct !DILexicalBlock(scope: !347, file: !10, line: 163, column: 28)
!347 = distinct !DILexicalBlock(scope: !332, file: !10, line: 163, column: 7)
!348 = !DILocation(line: 164, column: 33, scope: !345)
!349 = !DILocation(line: 93, column: 8, scope: !178)
!350 = !DILocation(line: 168, column: 15, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !10, line: 168, column: 15)
!352 = distinct !DILexicalBlock(scope: !353, file: !10, line: 167, column: 55)
!353 = distinct !DILexicalBlock(scope: !354, file: !10, line: 167, column: 9)
!354 = distinct !DILexicalBlock(scope: !346, file: !10, line: 167, column: 9)
!355 = !{!275, !275, i64 0}
!356 = !DILocation(line: 168, column: 64, scope: !351)
!357 = !DILocation(line: 169, column: 15, scope: !351)
!358 = !DILocation(line: 168, column: 15, scope: !352)
!359 = !DILocation(line: 163, column: 7, scope: !347)
!360 = distinct !{!360, !331, !361}
!361 = !DILocation(line: 173, column: 7, scope: !332)
!362 = !DILocation(line: 196, column: 3, scope: !363)
!363 = distinct !DILexicalBlock(scope: !178, file: !10, line: 196, column: 3)
!364 = !DILocation(line: 197, column: 10, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !10, line: 197, column: 9)
!366 = distinct !DILexicalBlock(scope: !367, file: !10, line: 196, column: 24)
!367 = distinct !DILexicalBlock(scope: !363, file: !10, line: 196, column: 3)
!368 = !DILocation(line: 197, column: 29, scope: !365)
!369 = !DILocation(line: 201, column: 11, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !10, line: 201, column: 11)
!371 = distinct !DILexicalBlock(scope: !372, file: !10, line: 200, column: 51)
!372 = distinct !DILexicalBlock(scope: !373, file: !10, line: 200, column: 5)
!373 = distinct !DILexicalBlock(scope: !366, file: !10, line: 200, column: 5)
!374 = !DILocation(line: 201, column: 60, scope: !370)
!375 = !DILocation(line: 202, column: 11, scope: !370)
!376 = !DILocation(line: 202, column: 59, scope: !370)
!377 = !DILocation(line: 203, column: 12, scope: !370)
!378 = !DILocation(line: 203, column: 46, scope: !370)
!379 = !DILocation(line: 204, column: 11, scope: !370)
!380 = !DILocation(line: 201, column: 11, scope: !371)
!381 = !DILocation(line: 196, column: 3, scope: !367)
!382 = distinct !{!382, !362, !383}
!383 = !DILocation(line: 208, column: 3, scope: !363)
!384 = !DILocation(line: 211, column: 11, scope: !178)
!385 = !DILocation(line: 212, column: 13, scope: !386)
!386 = distinct !DILexicalBlock(scope: !178, file: !10, line: 212, column: 7)
!387 = !DILocation(line: 212, column: 7, scope: !178)
!388 = !DILocation(line: 218, column: 8, scope: !389)
!389 = distinct !DILexicalBlock(scope: !178, file: !10, line: 218, column: 7)
!390 = !DILocation(line: 218, column: 7, scope: !178)
!391 = !DILocation(line: 219, column: 5, scope: !392)
!392 = distinct !DILexicalBlock(scope: !393, file: !10, line: 219, column: 5)
!393 = distinct !DILexicalBlock(scope: !389, file: !10, line: 218, column: 29)
!394 = !DILocation(line: 219, column: 5, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !10, line: 219, column: 5)
!396 = !DILocation(line: 220, column: 12, scope: !397)
!397 = distinct !DILexicalBlock(scope: !398, file: !10, line: 220, column: 11)
!398 = distinct !DILexicalBlock(scope: !395, file: !10, line: 219, column: 26)
!399 = !DILocation(line: 220, column: 31, scope: !397)
!400 = !DILocation(line: 224, column: 13, scope: !401)
!401 = distinct !DILexicalBlock(scope: !402, file: !10, line: 224, column: 13)
!402 = distinct !DILexicalBlock(scope: !403, file: !10, line: 223, column: 53)
!403 = distinct !DILexicalBlock(scope: !404, file: !10, line: 223, column: 7)
!404 = distinct !DILexicalBlock(scope: !398, file: !10, line: 223, column: 7)
!405 = !DILocation(line: 224, column: 62, scope: !401)
!406 = !DILocation(line: 225, column: 13, scope: !401)
!407 = !DILocation(line: 224, column: 13, scope: !402)
!408 = distinct !{!408, !391, !409}
!409 = !DILocation(line: 229, column: 5, scope: !392)
!410 = !DILocation(line: 251, column: 8, scope: !411)
!411 = distinct !DILexicalBlock(scope: !178, file: !10, line: 251, column: 7)
!412 = !DILocation(line: 251, column: 22, scope: !411)
!413 = !DILocation(line: 251, column: 31, scope: !411)
!414 = !DILocation(line: 251, column: 35, scope: !411)
!415 = !DILocation(line: 251, column: 62, scope: !411)
!416 = !DILocation(line: 0, scope: !417)
!417 = distinct !DILexicalBlock(scope: !401, file: !10, line: 225, column: 58)
!418 = !DILocation(line: 255, column: 1, scope: !178)
!419 = distinct !DISubprogram(name: "ip6_select_source_address", scope: !10, file: !10, line: 283, type: !420, isLocal: false, isDefinition: true, scopeLine: 284, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!81, !181, !70}
!422 = !{!423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434}
!423 = !DILocalVariable(name: "netif", arg: 1, scope: !419, file: !10, line: 283, type: !181)
!424 = !DILocalVariable(name: "dest", arg: 2, scope: !419, file: !10, line: 283, type: !70)
!425 = !DILocalVariable(name: "best_addr", scope: !419, file: !10, line: 285, type: !81)
!426 = !DILocalVariable(name: "cand_addr", scope: !419, file: !10, line: 286, type: !70)
!427 = !DILocalVariable(name: "dest_scope", scope: !419, file: !10, line: 287, type: !203)
!428 = !DILocalVariable(name: "cand_scope", scope: !419, file: !10, line: 287, type: !203)
!429 = !DILocalVariable(name: "best_scope", scope: !419, file: !10, line: 288, type: !203)
!430 = !DILocalVariable(name: "i", scope: !419, file: !10, line: 289, type: !60)
!431 = !DILocalVariable(name: "cand_pref", scope: !419, file: !10, line: 289, type: !60)
!432 = !DILocalVariable(name: "cand_bits", scope: !419, file: !10, line: 289, type: !60)
!433 = !DILocalVariable(name: "best_pref", scope: !419, file: !10, line: 290, type: !60)
!434 = !DILocalVariable(name: "best_bits", scope: !419, file: !10, line: 291, type: !60)
!435 = !DILocation(line: 283, column: 41, scope: !419)
!436 = !DILocation(line: 283, column: 66, scope: !419)
!437 = !DILocation(line: 288, column: 8, scope: !419)
!438 = !DILocation(line: 290, column: 8, scope: !419)
!439 = !DILocation(line: 291, column: 8, scope: !419)
!440 = !DILocation(line: 295, column: 7, scope: !441)
!441 = distinct !DILexicalBlock(scope: !419, file: !10, line: 295, column: 7)
!442 = !DILocation(line: 295, column: 7, scope: !419)
!443 = !DILocation(line: 297, column: 14, scope: !444)
!444 = distinct !DILexicalBlock(scope: !441, file: !10, line: 297, column: 14)
!445 = !DILocation(line: 297, column: 41, scope: !444)
!446 = !DILocation(line: 297, column: 44, scope: !444)
!447 = !DILocation(line: 297, column: 14, scope: !441)
!448 = !DILocation(line: 299, column: 14, scope: !449)
!449 = distinct !DILexicalBlock(scope: !444, file: !10, line: 299, column: 14)
!450 = !DILocation(line: 299, column: 14, scope: !444)
!451 = !DILocation(line: 301, column: 14, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !10, line: 301, column: 14)
!453 = !DILocation(line: 301, column: 14, scope: !449)
!454 = !DILocation(line: 302, column: 18, scope: !455)
!455 = distinct !DILexicalBlock(scope: !452, file: !10, line: 301, column: 42)
!456 = !DILocation(line: 287, column: 8, scope: !419)
!457 = !DILocation(line: 303, column: 3, scope: !455)
!458 = !DILocation(line: 303, column: 14, scope: !459)
!459 = distinct !DILexicalBlock(scope: !452, file: !10, line: 303, column: 14)
!460 = !DILocation(line: 305, column: 3, scope: !461)
!461 = distinct !DILexicalBlock(scope: !459, file: !10, line: 303, column: 42)
!462 = !DILocation(line: 285, column: 20, scope: !419)
!463 = !DILocation(line: 289, column: 8, scope: !419)
!464 = !DILocation(line: 314, column: 10, scope: !465)
!465 = distinct !DILexicalBlock(scope: !466, file: !10, line: 314, column: 9)
!466 = distinct !DILexicalBlock(scope: !467, file: !10, line: 312, column: 49)
!467 = distinct !DILexicalBlock(scope: !468, file: !10, line: 312, column: 3)
!468 = distinct !DILexicalBlock(scope: !419, file: !10, line: 312, column: 3)
!469 = !DILocation(line: 314, column: 9, scope: !466)
!470 = !DILocation(line: 318, column: 17, scope: !466)
!471 = !DILocation(line: 286, column: 21, scope: !419)
!472 = !DILocation(line: 319, column: 9, scope: !473)
!473 = distinct !DILexicalBlock(scope: !466, file: !10, line: 319, column: 9)
!474 = !DILocation(line: 319, column: 9, scope: !466)
!475 = !DILocation(line: 321, column: 16, scope: !476)
!476 = distinct !DILexicalBlock(scope: !473, file: !10, line: 321, column: 16)
!477 = !DILocation(line: 321, column: 16, scope: !473)
!478 = !DILocation(line: 323, column: 16, scope: !479)
!479 = distinct !DILexicalBlock(scope: !476, file: !10, line: 323, column: 16)
!480 = !DILocation(line: 323, column: 16, scope: !476)
!481 = !DILocation(line: 325, column: 16, scope: !482)
!482 = distinct !DILexicalBlock(scope: !479, file: !10, line: 325, column: 16)
!483 = !DILocation(line: 327, column: 5, scope: !484)
!484 = distinct !DILexicalBlock(scope: !482, file: !10, line: 325, column: 49)
!485 = !DILocation(line: 0, scope: !486)
!486 = distinct !DILexicalBlock(scope: !482, file: !10, line: 327, column: 12)
!487 = !DILocation(line: 287, column: 20, scope: !419)
!488 = !DILocation(line: 331, column: 17, scope: !466)
!489 = !DILocation(line: 289, column: 11, scope: !419)
!490 = !DILocation(line: 335, column: 17, scope: !466)
!491 = !DILocation(line: 336, column: 19, scope: !492)
!492 = distinct !DILexicalBlock(scope: !466, file: !10, line: 336, column: 9)
!493 = !DILocation(line: 336, column: 22, scope: !492)
!494 = !DILocation(line: 336, column: 9, scope: !466)
!495 = !DILocation(line: 0, scope: !419)
!496 = !DILocation(line: 353, column: 1, scope: !419)
!497 = !DILocation(line: 339, column: 20, scope: !498)
!498 = distinct !DILexicalBlock(scope: !466, file: !10, line: 339, column: 9)
!499 = !DILocation(line: 339, column: 29, scope: !498)
!500 = !DILocation(line: 340, column: 11, scope: !498)
!501 = !DILocation(line: 340, column: 24, scope: !498)
!502 = !DILocation(line: 340, column: 22, scope: !498)
!503 = !DILocation(line: 340, column: 51, scope: !498)
!504 = !DILocation(line: 340, column: 36, scope: !498)
!505 = !DILocation(line: 341, column: 22, scope: !498)
!506 = !DILocation(line: 341, column: 51, scope: !498)
!507 = !DILocation(line: 341, column: 36, scope: !498)
!508 = !DILocation(line: 342, column: 22, scope: !498)
!509 = !DILocation(line: 342, column: 37, scope: !498)
!510 = !DILocation(line: 342, column: 42, scope: !498)
!511 = !DILocation(line: 342, column: 54, scope: !498)
!512 = !DILocation(line: 342, column: 52, scope: !498)
!513 = !DILocation(line: 342, column: 65, scope: !498)
!514 = !DILocation(line: 343, column: 21, scope: !498)
!515 = !DILocation(line: 343, column: 51, scope: !498)
!516 = !DILocation(line: 343, column: 49, scope: !498)
!517 = !DILocation(line: 343, column: 35, scope: !498)
!518 = !DILocation(line: 349, column: 5, scope: !519)
!519 = distinct !DILexicalBlock(scope: !498, file: !10, line: 343, column: 66)
!520 = distinct !DISubprogram(name: "ip6_input", scope: !10, file: !10, line: 509, type: !200, isLocal: false, isDefinition: true, scopeLine: 510, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !521)
!521 = !{!522, !523, !524, !525, !526, !529, !530, !531, !538, !539, !540, !542, !544, !545, !546, !548, !550}
!522 = !DILocalVariable(name: "p", arg: 1, scope: !520, file: !10, line: 509, type: !207)
!523 = !DILocalVariable(name: "inp", arg: 2, scope: !520, file: !10, line: 509, type: !181)
!524 = !DILocalVariable(name: "ip6hdr", scope: !520, file: !10, line: 511, type: !97)
!525 = !DILocalVariable(name: "netif", scope: !520, file: !10, line: 512, type: !181)
!526 = !DILocalVariable(name: "nexth", scope: !520, file: !10, line: 513, type: !527)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!529 = !DILocalVariable(name: "hlen", scope: !520, file: !10, line: 514, type: !103)
!530 = !DILocalVariable(name: "hlen_tot", scope: !520, file: !10, line: 514, type: !103)
!531 = !DILocalVariable(name: "opt_offset", scope: !532, file: !10, line: 715, type: !535)
!532 = distinct !DILexicalBlock(scope: !533, file: !10, line: 714, column: 5)
!533 = distinct !DILexicalBlock(scope: !534, file: !10, line: 712, column: 21)
!534 = distinct !DILexicalBlock(scope: !520, file: !10, line: 711, column: 3)
!535 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32_t", file: !61, line: 130, baseType: !536)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !63, line: 44, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !65, line: 77, baseType: !20)
!538 = !DILocalVariable(name: "hbh_hdr", scope: !532, file: !10, line: 716, type: !115)
!539 = !DILocalVariable(name: "opt_hdr", scope: !532, file: !10, line: 717, type: !120)
!540 = !DILocalVariable(name: "opt_dlen", scope: !541, file: !10, line: 746, type: !535)
!541 = distinct !DILexicalBlock(scope: !532, file: !10, line: 745, column: 7)
!542 = !DILocalVariable(name: "opt_offset", scope: !543, file: !10, line: 806, type: !535)
!543 = distinct !DILexicalBlock(scope: !533, file: !10, line: 805, column: 5)
!544 = !DILocalVariable(name: "dest_hdr", scope: !543, file: !10, line: 807, type: !126)
!545 = !DILocalVariable(name: "opt_hdr", scope: !543, file: !10, line: 808, type: !120)
!546 = !DILocalVariable(name: "opt_dlen", scope: !547, file: !10, line: 835, type: !535)
!547 = distinct !DILexicalBlock(scope: !543, file: !10, line: 834, column: 7)
!548 = !DILocalVariable(name: "rout_hdr", scope: !549, file: !10, line: 901, type: !131)
!549 = distinct !DILexicalBlock(scope: !533, file: !10, line: 900, column: 5)
!550 = !DILocalVariable(name: "frag_hdr", scope: !551, file: !10, line: 960, type: !138)
!551 = distinct !DILexicalBlock(scope: !533, file: !10, line: 959, column: 5)
!552 = !DILocation(line: 509, column: 24, scope: !520)
!553 = !DILocation(line: 509, column: 41, scope: !520)
!554 = !DILocation(line: 525, column: 3, scope: !520)
!555 = !{!556, !283, i64 188}
!556 = !{!"stats_", !557, i64 0, !557, i64 24, !557, i64 48, !557, i64 72, !557, i64 96, !557, i64 120, !557, i64 144, !558, i64 168, !557, i64 186, !557, i64 210, !557, i64 234, !560, i64 258, !557, i64 286}
!557 = !{!"stats_proto", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22}
!558 = !{!"stats_sys", !559, i64 0, !559, i64 6, !559, i64 12}
!559 = !{!"stats_syselem", !283, i64 0, !283, i64 2, !283, i64 4}
!560 = !{!"stats_igmp", !283, i64 0, !283, i64 2, !283, i64 4, !283, i64 6, !283, i64 8, !283, i64 10, !283, i64 12, !283, i64 14, !283, i64 16, !283, i64 18, !283, i64 20, !283, i64 22, !283, i64 24, !283, i64 26}
!561 = !DILocation(line: 528, column: 33, scope: !520)
!562 = !{!563, !274, i64 8}
!563 = !{!"pbuf", !274, i64 0, !274, i64 8, !283, i64 16, !283, i64 18, !275, i64 20, !275, i64 21, !275, i64 22, !275, i64 23}
!564 = !DILocation(line: 511, column: 19, scope: !520)
!565 = !DILocation(line: 529, column: 7, scope: !566)
!566 = distinct !DILexicalBlock(scope: !520, file: !10, line: 529, column: 7)
!567 = !{!568, !319, i64 0}
!568 = !{!"ip6_hdr", !319, i64 0, !283, i64 4, !275, i64 6, !275, i64 7, !569, i64 8, !569, i64 24}
!569 = !{!"ip6_addr_packed", !275, i64 0}
!570 = !DILocation(line: 529, column: 22, scope: !566)
!571 = !DILocation(line: 529, column: 7, scope: !520)
!572 = !DILocation(line: 532, column: 5, scope: !573)
!573 = distinct !DILexicalBlock(scope: !566, file: !10, line: 529, column: 28)
!574 = !DILocation(line: 533, column: 5, scope: !573)
!575 = !{!556, !283, i64 206}
!576 = !DILocation(line: 534, column: 5, scope: !573)
!577 = !{!556, !283, i64 192}
!578 = !DILocation(line: 535, column: 5, scope: !573)
!579 = !DILocation(line: 546, column: 22, scope: !580)
!580 = distinct !DILexicalBlock(scope: !520, file: !10, line: 546, column: 7)
!581 = !{!563, !283, i64 18}
!582 = !DILocation(line: 546, column: 17, scope: !580)
!583 = !DILocation(line: 0, scope: !580)
!584 = !DILocation(line: 546, column: 27, scope: !580)
!585 = !DILocation(line: 546, column: 31, scope: !580)
!586 = !{!568, !283, i64 4}
!587 = !DILocation(line: 546, column: 55, scope: !580)
!588 = !{!563, !283, i64 16}
!589 = !DILocation(line: 546, column: 52, scope: !580)
!590 = !DILocation(line: 546, column: 63, scope: !580)
!591 = !DILocation(line: 546, column: 49, scope: !580)
!592 = !DILocation(line: 546, column: 7, scope: !520)
!593 = !DILocation(line: 552, column: 10, scope: !594)
!594 = distinct !DILexicalBlock(scope: !595, file: !10, line: 552, column: 9)
!595 = distinct !DILexicalBlock(scope: !580, file: !10, line: 546, column: 77)
!596 = !DILocation(line: 558, column: 5, scope: !595)
!597 = !DILocation(line: 559, column: 5, scope: !595)
!598 = !{!556, !283, i64 196}
!599 = !DILocation(line: 560, column: 5, scope: !595)
!600 = !DILocation(line: 561, column: 5, scope: !595)
!601 = !DILocation(line: 566, column: 38, scope: !520)
!602 = !DILocation(line: 566, column: 36, scope: !520)
!603 = !DILocation(line: 566, column: 3, scope: !520)
!604 = !DILocation(line: 569, column: 3, scope: !605)
!605 = distinct !DILexicalBlock(scope: !606, file: !10, line: 569, column: 3)
!606 = distinct !DILexicalBlock(scope: !520, file: !10, line: 569, column: 3)
!607 = !DILocation(line: 569, column: 3, scope: !608)
!608 = distinct !DILexicalBlock(scope: !606, file: !10, line: 569, column: 3)
!609 = !{!610, !275, i64 80}
!610 = !{!"ip_globals", !274, i64 0, !274, i64 8, !274, i64 16, !274, i64 24, !283, i64 32, !282, i64 36, !282, i64 60}
!611 = !DILocation(line: 570, column: 3, scope: !612)
!612 = distinct !DILexicalBlock(scope: !613, file: !10, line: 570, column: 3)
!613 = distinct !DILexicalBlock(scope: !520, file: !10, line: 570, column: 3)
!614 = !DILocation(line: 570, column: 3, scope: !615)
!615 = distinct !DILexicalBlock(scope: !613, file: !10, line: 570, column: 3)
!616 = !{!610, !275, i64 56}
!617 = !DILocation(line: 574, column: 7, scope: !618)
!618 = distinct !DILexicalBlock(scope: !520, file: !10, line: 574, column: 7)
!619 = !DILocation(line: 575, column: 6, scope: !618)
!620 = !DILocation(line: 576, column: 6, scope: !618)
!621 = !DILocation(line: 578, column: 5, scope: !622)
!622 = distinct !DILexicalBlock(scope: !618, file: !10, line: 576, column: 66)
!623 = !DILocation(line: 579, column: 5, scope: !622)
!624 = !DILocation(line: 580, column: 5, scope: !622)
!625 = !DILocation(line: 581, column: 5, scope: !622)
!626 = !DILocation(line: 585, column: 3, scope: !520)
!627 = !DILocation(line: 586, column: 3, scope: !520)
!628 = !DILocation(line: 589, column: 30, scope: !520)
!629 = !{!610, !274, i64 24}
!630 = !DILocation(line: 592, column: 25, scope: !520)
!631 = !{!610, !274, i64 0}
!632 = !DILocation(line: 593, column: 31, scope: !520)
!633 = !{!610, !274, i64 8}
!634 = !DILocation(line: 596, column: 7, scope: !635)
!635 = distinct !DILexicalBlock(scope: !520, file: !10, line: 596, column: 7)
!636 = !DILocation(line: 596, column: 7, scope: !520)
!637 = !DILocation(line: 598, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !10, line: 598, column: 9)
!639 = distinct !DILexicalBlock(scope: !635, file: !10, line: 596, column: 54)
!640 = !DILocation(line: 599, column: 9, scope: !638)
!641 = !DILocation(line: 603, column: 14, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !10, line: 603, column: 14)
!643 = !DILocation(line: 629, column: 9, scope: !644)
!644 = distinct !DILexicalBlock(scope: !645, file: !10, line: 629, column: 9)
!645 = distinct !DILexicalBlock(scope: !635, file: !10, line: 626, column: 10)
!646 = !DILocation(line: 629, column: 9, scope: !645)
!647 = !DILocation(line: 512, column: 17, scope: !520)
!648 = !DILocation(line: 637, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !650, file: !10, line: 637, column: 11)
!650 = distinct !DILexicalBlock(scope: !644, file: !10, line: 631, column: 12)
!651 = !DILocation(line: 637, column: 57, scope: !649)
!652 = !DILocation(line: 638, column: 11, scope: !649)
!653 = !DILocation(line: 637, column: 11, scope: !650)
!654 = !DILocation(line: 649, column: 11, scope: !655)
!655 = distinct !DILexicalBlock(scope: !650, file: !10, line: 649, column: 11)
!656 = !DILocation(line: 650, column: 11, scope: !655)
!657 = !DILocation(line: 655, column: 7, scope: !658)
!658 = distinct !DILexicalBlock(scope: !650, file: !10, line: 655, column: 7)
!659 = !DILocation(line: 655, column: 7, scope: !660)
!660 = distinct !DILexicalBlock(scope: !658, file: !10, line: 655, column: 7)
!661 = !DILocation(line: 656, column: 19, scope: !662)
!662 = distinct !DILexicalBlock(scope: !663, file: !10, line: 656, column: 13)
!663 = distinct !DILexicalBlock(scope: !660, file: !10, line: 655, column: 28)
!664 = !DILocation(line: 656, column: 13, scope: !663)
!665 = !DILocation(line: 660, column: 13, scope: !666)
!666 = distinct !DILexicalBlock(scope: !663, file: !10, line: 660, column: 13)
!667 = !DILocation(line: 660, column: 13, scope: !663)
!668 = distinct !{!668, !657, !669}
!669 = !DILocation(line: 663, column: 7, scope: !658)
!670 = !DILocation(line: 0, scope: !658)
!671 = !DILocation(line: 672, column: 7, scope: !672)
!672 = distinct !DILexicalBlock(scope: !520, file: !10, line: 672, column: 7)
!673 = !DILocation(line: 673, column: 9, scope: !672)
!674 = !DILocation(line: 672, column: 7, scope: !520)
!675 = !DILocation(line: 677, column: 5, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !10, line: 673, column: 61)
!677 = !DILocation(line: 678, column: 5, scope: !676)
!678 = !DILocation(line: 679, column: 5, scope: !676)
!679 = !DILocation(line: 683, column: 13, scope: !680)
!680 = distinct !DILexicalBlock(scope: !520, file: !10, line: 683, column: 7)
!681 = !DILocation(line: 683, column: 7, scope: !520)
!682 = !DILocation(line: 693, column: 5, scope: !683)
!683 = distinct !DILexicalBlock(scope: !680, file: !10, line: 683, column: 22)
!684 = !DILocation(line: 694, column: 5, scope: !683)
!685 = !DILocation(line: 698, column: 25, scope: !520)
!686 = !DILocation(line: 701, column: 12, scope: !520)
!687 = !DILocation(line: 513, column: 15, scope: !520)
!688 = !DILocation(line: 514, column: 15, scope: !520)
!689 = !DILocation(line: 514, column: 9, scope: !520)
!690 = !DILocation(line: 707, column: 3, scope: !520)
!691 = !DILocation(line: 710, column: 10, scope: !520)
!692 = !DILocation(line: 710, column: 3, scope: !520)
!693 = !DILocation(line: 704, column: 19, scope: !520)
!694 = !DILocation(line: 0, scope: !551)
!695 = !DILocation(line: 528, column: 10, scope: !520)
!696 = !DILocation(line: 721, column: 42, scope: !532)
!697 = !DILocation(line: 716, column: 27, scope: !532)
!698 = !DILocation(line: 727, column: 40, scope: !532)
!699 = !{!700, !275, i64 1}
!700 = !{!"ip6_hbh_hdr", !275, i64 0, !275, i64 1}
!701 = !DILocation(line: 727, column: 31, scope: !532)
!702 = !DILocation(line: 727, column: 24, scope: !532)
!703 = !DILocation(line: 729, column: 15, scope: !704)
!704 = distinct !DILexicalBlock(scope: !532, file: !10, line: 729, column: 11)
!705 = !DILocation(line: 729, column: 19, scope: !704)
!706 = !DILocation(line: 729, column: 24, scope: !704)
!707 = !DILocation(line: 729, column: 28, scope: !704)
!708 = !DILocation(line: 729, column: 33, scope: !704)
!709 = !DILocation(line: 729, column: 11, scope: !532)
!710 = !DILocation(line: 734, column: 9, scope: !711)
!711 = distinct !DILexicalBlock(scope: !704, file: !10, line: 729, column: 44)
!712 = !DILocation(line: 735, column: 9, scope: !711)
!713 = !DILocation(line: 736, column: 9, scope: !711)
!714 = !DILocation(line: 737, column: 9, scope: !711)
!715 = !DILocation(line: 740, column: 35, scope: !532)
!716 = !DILocation(line: 715, column: 13, scope: !532)
!717 = !DILocation(line: 744, column: 7, scope: !532)
!718 = !DILocation(line: 746, column: 15, scope: !541)
!719 = !DILocation(line: 748, column: 58, scope: !541)
!720 = !DILocation(line: 717, column: 27, scope: !532)
!721 = !DILocation(line: 750, column: 17, scope: !541)
!722 = !{!723, !275, i64 0}
!723 = !{!"ip6_opt_hdr", !275, i64 0, !275, i64 1}
!724 = !DILocation(line: 750, column: 9, scope: !541)
!725 = !DILocation(line: 767, column: 19, scope: !726)
!726 = distinct !DILexicalBlock(scope: !541, file: !10, line: 750, column: 40)
!727 = !DILocation(line: 767, column: 11, scope: !726)
!728 = !DILocation(line: 771, column: 13, scope: !729)
!729 = distinct !DILexicalBlock(scope: !726, file: !10, line: 767, column: 49)
!730 = !DILocation(line: 772, column: 13, scope: !729)
!731 = !DILocation(line: 773, column: 13, scope: !729)
!732 = !DILocation(line: 776, column: 13, scope: !729)
!733 = !DILocation(line: 778, column: 13, scope: !729)
!734 = !DILocation(line: 779, column: 13, scope: !729)
!735 = !DILocation(line: 780, column: 13, scope: !729)
!736 = !DILocation(line: 783, column: 18, scope: !737)
!737 = distinct !DILexicalBlock(scope: !729, file: !10, line: 783, column: 17)
!738 = !DILocation(line: 783, column: 17, scope: !729)
!739 = !DILocation(line: 784, column: 15, scope: !740)
!740 = distinct !DILexicalBlock(scope: !737, file: !10, line: 783, column: 65)
!741 = !DILocation(line: 785, column: 13, scope: !740)
!742 = !DILocation(line: 787, column: 13, scope: !729)
!743 = !DILocation(line: 788, column: 13, scope: !729)
!744 = !DILocation(line: 789, column: 13, scope: !729)
!745 = !DILocation(line: 0, scope: !729)
!746 = !{!723, !275, i64 1}
!747 = !DILocation(line: 799, column: 33, scope: !541)
!748 = !DILocation(line: 0, scope: !726)
!749 = !DILocation(line: 799, column: 48, scope: !541)
!750 = !DILocation(line: 744, column: 25, scope: !532)
!751 = !DILocation(line: 801, column: 29, scope: !532)
!752 = !DILocation(line: 801, column: 7, scope: !532)
!753 = !DILocation(line: 811, column: 44, scope: !543)
!754 = !DILocation(line: 807, column: 28, scope: !543)
!755 = !DILocation(line: 817, column: 33, scope: !543)
!756 = !{!757, !275, i64 1}
!757 = !{!"ip6_dest_hdr", !275, i64 0, !275, i64 1}
!758 = !DILocation(line: 817, column: 23, scope: !543)
!759 = !DILocation(line: 817, column: 16, scope: !543)
!760 = !DILocation(line: 818, column: 15, scope: !761)
!761 = distinct !DILexicalBlock(scope: !543, file: !10, line: 818, column: 11)
!762 = !DILocation(line: 818, column: 19, scope: !761)
!763 = !DILocation(line: 818, column: 24, scope: !761)
!764 = !DILocation(line: 818, column: 28, scope: !761)
!765 = !DILocation(line: 818, column: 33, scope: !761)
!766 = !DILocation(line: 818, column: 11, scope: !543)
!767 = !DILocation(line: 823, column: 9, scope: !768)
!768 = distinct !DILexicalBlock(scope: !761, file: !10, line: 818, column: 44)
!769 = !DILocation(line: 824, column: 9, scope: !768)
!770 = !DILocation(line: 825, column: 9, scope: !768)
!771 = !DILocation(line: 826, column: 9, scope: !768)
!772 = !DILocation(line: 829, column: 35, scope: !543)
!773 = !DILocation(line: 806, column: 13, scope: !543)
!774 = !DILocation(line: 833, column: 7, scope: !543)
!775 = !DILocation(line: 835, column: 15, scope: !547)
!776 = !DILocation(line: 837, column: 59, scope: !547)
!777 = !DILocation(line: 808, column: 27, scope: !543)
!778 = !DILocation(line: 839, column: 17, scope: !547)
!779 = !DILocation(line: 839, column: 9, scope: !547)
!780 = !DILocation(line: 860, column: 19, scope: !781)
!781 = distinct !DILexicalBlock(scope: !547, file: !10, line: 840, column: 9)
!782 = !DILocation(line: 860, column: 11, scope: !781)
!783 = !DILocation(line: 865, column: 13, scope: !784)
!784 = distinct !DILexicalBlock(scope: !781, file: !10, line: 861, column: 11)
!785 = !DILocation(line: 866, column: 13, scope: !784)
!786 = !DILocation(line: 867, column: 13, scope: !784)
!787 = !DILocation(line: 870, column: 13, scope: !784)
!788 = !DILocation(line: 872, column: 13, scope: !784)
!789 = !DILocation(line: 873, column: 13, scope: !784)
!790 = !DILocation(line: 874, column: 13, scope: !784)
!791 = !DILocation(line: 877, column: 18, scope: !792)
!792 = distinct !DILexicalBlock(scope: !784, file: !10, line: 877, column: 17)
!793 = !DILocation(line: 877, column: 17, scope: !784)
!794 = !DILocation(line: 878, column: 15, scope: !795)
!795 = distinct !DILexicalBlock(scope: !792, file: !10, line: 877, column: 65)
!796 = !DILocation(line: 879, column: 13, scope: !795)
!797 = !DILocation(line: 881, column: 13, scope: !784)
!798 = !DILocation(line: 882, column: 13, scope: !784)
!799 = !DILocation(line: 883, column: 13, scope: !784)
!800 = !DILocation(line: 0, scope: !784)
!801 = !DILocation(line: 893, column: 33, scope: !547)
!802 = !DILocation(line: 0, scope: !781)
!803 = !DILocation(line: 893, column: 48, scope: !547)
!804 = !DILocation(line: 833, column: 25, scope: !543)
!805 = !DILocation(line: 896, column: 29, scope: !543)
!806 = !DILocation(line: 896, column: 7, scope: !543)
!807 = !DILocation(line: 904, column: 44, scope: !549)
!808 = !DILocation(line: 901, column: 28, scope: !549)
!809 = !DILocation(line: 907, column: 16, scope: !549)
!810 = !DILocation(line: 910, column: 33, scope: !549)
!811 = !{!812, !275, i64 1}
!812 = !{!"ip6_rout_hdr", !275, i64 0, !275, i64 1, !275, i64 2, !275, i64 3}
!813 = !DILocation(line: 910, column: 14, scope: !549)
!814 = !DILocation(line: 912, column: 15, scope: !815)
!815 = distinct !DILexicalBlock(scope: !549, file: !10, line: 912, column: 11)
!816 = !DILocation(line: 912, column: 19, scope: !815)
!817 = !DILocation(line: 912, column: 33, scope: !815)
!818 = !DILocation(line: 912, column: 24, scope: !815)
!819 = !DILocation(line: 917, column: 9, scope: !820)
!820 = distinct !DILexicalBlock(scope: !815, file: !10, line: 912, column: 44)
!821 = !DILocation(line: 918, column: 9, scope: !820)
!822 = !DILocation(line: 919, column: 9, scope: !820)
!823 = !DILocation(line: 920, column: 9, scope: !820)
!824 = !DILocation(line: 924, column: 35, scope: !549)
!825 = !DILocation(line: 927, column: 11, scope: !826)
!826 = distinct !DILexicalBlock(scope: !549, file: !10, line: 927, column: 11)
!827 = !{!812, !275, i64 3}
!828 = !DILocation(line: 927, column: 11, scope: !549)
!829 = !DILocation(line: 929, column: 29, scope: !830)
!830 = distinct !DILexicalBlock(scope: !831, file: !10, line: 929, column: 13)
!831 = distinct !DILexicalBlock(scope: !826, file: !10, line: 927, column: 40)
!832 = !DILocation(line: 929, column: 13, scope: !831)
!833 = !DILocation(line: 931, column: 11, scope: !834)
!834 = distinct !DILexicalBlock(scope: !830, file: !10, line: 929, column: 36)
!835 = !DILocation(line: 933, column: 11, scope: !834)
!836 = !DILocation(line: 934, column: 11, scope: !834)
!837 = !DILocation(line: 935, column: 11, scope: !834)
!838 = !DILocation(line: 938, column: 17, scope: !831)
!839 = !{!812, !275, i64 2}
!840 = !DILocation(line: 938, column: 9, scope: !831)
!841 = !DILocation(line: 947, column: 11, scope: !842)
!842 = distinct !DILexicalBlock(scope: !831, file: !10, line: 939, column: 9)
!843 = !DILocation(line: 949, column: 11, scope: !842)
!844 = !DILocation(line: 950, column: 11, scope: !842)
!845 = !DILocation(line: 951, column: 11, scope: !842)
!846 = !DILocation(line: 955, column: 29, scope: !549)
!847 = !DILocation(line: 955, column: 7, scope: !549)
!848 = !DILocation(line: 963, column: 44, scope: !551)
!849 = !DILocation(line: 960, column: 28, scope: !551)
!850 = !DILocation(line: 966, column: 16, scope: !551)
!851 = !DILocation(line: 972, column: 21, scope: !852)
!852 = distinct !DILexicalBlock(scope: !551, file: !10, line: 972, column: 11)
!853 = !DILocation(line: 972, column: 16, scope: !852)
!854 = !DILocation(line: 972, column: 11, scope: !551)
!855 = !DILocation(line: 977, column: 9, scope: !856)
!856 = distinct !DILexicalBlock(scope: !852, file: !10, line: 972, column: 26)
!857 = !DILocation(line: 978, column: 9, scope: !856)
!858 = !{!556, !283, i64 244}
!859 = !DILocation(line: 979, column: 9, scope: !856)
!860 = !{!556, !283, i64 240}
!861 = !DILocation(line: 980, column: 9, scope: !856)
!862 = !DILocation(line: 983, column: 35, scope: !551)
!863 = !DILocation(line: 986, column: 11, scope: !864)
!864 = distinct !DILexicalBlock(scope: !551, file: !10, line: 986, column: 11)
!865 = !{!866, !283, i64 2}
!866 = !{!"ip6_frag_hdr", !275, i64 0, !275, i64 1, !283, i64 2, !319, i64 4}
!867 = !DILocation(line: 986, column: 35, scope: !864)
!868 = !DILocation(line: 986, column: 39, scope: !864)
!869 = !DILocation(line: 986, column: 57, scope: !864)
!870 = !DILocation(line: 986, column: 11, scope: !551)
!871 = !DILocation(line: 988, column: 48, scope: !872)
!872 = distinct !DILexicalBlock(scope: !864, file: !10, line: 986, column: 65)
!873 = !DILocation(line: 988, column: 9, scope: !872)
!874 = !DILocation(line: 990, column: 9, scope: !872)
!875 = !DILocation(line: 991, column: 9, scope: !872)
!876 = !DILocation(line: 992, column: 9, scope: !872)
!877 = !DILocation(line: 996, column: 22, scope: !878)
!878 = distinct !DILexicalBlock(scope: !551, file: !10, line: 996, column: 11)
!879 = !DILocation(line: 996, column: 39, scope: !878)
!880 = !DILocation(line: 997, column: 65, scope: !878)
!881 = !DILocation(line: 996, column: 11, scope: !551)
!882 = !DILocation(line: 999, column: 9, scope: !883)
!883 = distinct !DILexicalBlock(scope: !878, file: !10, line: 997, column: 71)
!884 = !DILocation(line: 1000, column: 7, scope: !883)
!885 = !DILocation(line: 1003, column: 43, scope: !886)
!886 = distinct !DILexicalBlock(scope: !878, file: !10, line: 1000, column: 14)
!887 = !{!610, !283, i64 32}
!888 = !DILocation(line: 1004, column: 13, scope: !886)
!889 = !DILocation(line: 1006, column: 15, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !10, line: 1006, column: 13)
!891 = !DILocation(line: 1006, column: 13, scope: !886)
!892 = !DILocation(line: 1012, column: 39, scope: !886)
!893 = !DILocation(line: 1013, column: 18, scope: !886)
!894 = !DILocation(line: 1015, column: 9, scope: !886)
!895 = !DILocation(line: 0, scope: !532)
!896 = !DILocation(line: 1032, column: 9, scope: !897)
!897 = distinct !DILexicalBlock(scope: !534, file: !10, line: 1032, column: 9)
!898 = !DILocation(line: 1032, column: 16, scope: !897)
!899 = !DILocation(line: 1032, column: 9, scope: !534)
!900 = distinct !{!900, !692, !901}
!901 = !DILocation(line: 1040, column: 3, scope: !520)
!902 = !DILocation(line: 1034, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !897, file: !10, line: 1032, column: 39)
!904 = !DILocation(line: 1036, column: 7, scope: !903)
!905 = !DILocation(line: 1037, column: 7, scope: !903)
!906 = !DILocation(line: 1038, column: 7, scope: !903)
!907 = !DILocation(line: 1049, column: 37, scope: !520)
!908 = !DILocation(line: 1063, column: 13, scope: !909)
!909 = distinct !DILexicalBlock(scope: !520, file: !10, line: 1061, column: 3)
!910 = !DILocation(line: 1063, column: 5, scope: !909)
!911 = !DILocation(line: 1065, column: 7, scope: !912)
!912 = distinct !DILexicalBlock(scope: !909, file: !10, line: 1063, column: 21)
!913 = !DILocation(line: 1066, column: 7, scope: !912)
!914 = !DILocation(line: 1072, column: 7, scope: !912)
!915 = !DILocation(line: 1073, column: 7, scope: !912)
!916 = !DILocation(line: 1077, column: 7, scope: !912)
!917 = !DILocation(line: 1078, column: 7, scope: !912)
!918 = !DILocation(line: 1082, column: 7, scope: !912)
!919 = !DILocation(line: 1083, column: 7, scope: !912)
!920 = !DILocation(line: 1094, column: 34, scope: !921)
!921 = distinct !DILexicalBlock(scope: !912, file: !10, line: 1091, column: 9)
!922 = !DILocation(line: 1094, column: 9, scope: !921)
!923 = !DILocation(line: 1096, column: 15, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !10, line: 1096, column: 13)
!925 = !DILocation(line: 1096, column: 62, scope: !924)
!926 = !DILocation(line: 1097, column: 14, scope: !924)
!927 = !{!568, !275, i64 6}
!928 = !DILocation(line: 1097, column: 33, scope: !924)
!929 = !DILocation(line: 1096, column: 13, scope: !921)
!930 = !DILocation(line: 1098, column: 11, scope: !931)
!931 = distinct !DILexicalBlock(scope: !924, file: !10, line: 1097, column: 54)
!932 = !DILocation(line: 1099, column: 9, scope: !931)
!933 = !DILocation(line: 1102, column: 9, scope: !921)
!934 = !{!556, !283, i64 202}
!935 = !DILocation(line: 1103, column: 9, scope: !921)
!936 = !DILocation(line: 1105, column: 7, scope: !912)
!937 = !DILocation(line: 1106, column: 7, scope: !912)
!938 = !DILocation(line: 1111, column: 25, scope: !520)
!939 = !DILocation(line: 1113, column: 30, scope: !520)
!940 = !DILocation(line: 1114, column: 37, scope: !520)
!941 = !DILocation(line: 1115, column: 3, scope: !942)
!942 = distinct !DILexicalBlock(scope: !520, file: !10, line: 1115, column: 3)
!943 = !DILocation(line: 1116, column: 3, scope: !944)
!944 = distinct !DILexicalBlock(scope: !520, file: !10, line: 1116, column: 3)
!945 = !DILocation(line: 1118, column: 3, scope: !520)
!946 = !DILocation(line: 1119, column: 1, scope: !520)
!947 = distinct !DISubprogram(name: "ip6_input_accept", scope: !10, file: !10, line: 469, type: !948, isLocal: true, isDefinition: true, scopeLine: 470, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !950)
!948 = !DISubroutineType(types: !949)
!949 = !{!20, !181}
!950 = !{!951, !952}
!951 = !DILocalVariable(name: "netif", arg: 1, scope: !947, file: !10, line: 469, type: !181)
!952 = !DILocalVariable(name: "i", scope: !953, file: !10, line: 473, type: !60)
!953 = distinct !DILexicalBlock(scope: !954, file: !10, line: 472, column: 27)
!954 = distinct !DILexicalBlock(scope: !947, file: !10, line: 472, column: 7)
!955 = !DILocation(line: 469, column: 32, scope: !947)
!956 = !DILocation(line: 472, column: 7, scope: !954)
!957 = !DILocation(line: 472, column: 7, scope: !947)
!958 = !DILocation(line: 473, column: 10, scope: !953)
!959 = !DILocation(line: 479, column: 11, scope: !960)
!960 = distinct !DILexicalBlock(scope: !961, file: !10, line: 479, column: 11)
!961 = distinct !DILexicalBlock(scope: !962, file: !10, line: 478, column: 51)
!962 = distinct !DILexicalBlock(scope: !963, file: !10, line: 478, column: 5)
!963 = distinct !DILexicalBlock(scope: !953, file: !10, line: 478, column: 5)
!964 = !DILocation(line: 479, column: 60, scope: !960)
!965 = !DILocation(line: 480, column: 11, scope: !960)
!966 = !DILocation(line: 479, column: 11, scope: !961)
!967 = !DILocation(line: 0, scope: !968)
!968 = distinct !DILexicalBlock(scope: !960, file: !10, line: 485, column: 9)
!969 = !DILocation(line: 492, column: 1, scope: !947)
!970 = distinct !DISubprogram(name: "ip6_output_if", scope: !10, file: !10, line: 1149, type: !971, isLocal: false, isDefinition: true, scopeLine: 1152, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !973)
!971 = !DISubroutineType(types: !972)
!972 = !{!202, !207, !70, !70, !60, !60, !60, !181}
!973 = !{!974, !975, !976, !977, !978, !979, !980, !981}
!974 = !DILocalVariable(name: "p", arg: 1, scope: !970, file: !10, line: 1149, type: !207)
!975 = !DILocalVariable(name: "src", arg: 2, scope: !970, file: !10, line: 1149, type: !70)
!976 = !DILocalVariable(name: "dest", arg: 3, scope: !970, file: !10, line: 1149, type: !70)
!977 = !DILocalVariable(name: "hl", arg: 4, scope: !970, file: !10, line: 1150, type: !60)
!978 = !DILocalVariable(name: "tc", arg: 5, scope: !970, file: !10, line: 1150, type: !60)
!979 = !DILocalVariable(name: "nexth", arg: 6, scope: !970, file: !10, line: 1151, type: !60)
!980 = !DILocalVariable(name: "netif", arg: 7, scope: !970, file: !10, line: 1151, type: !181)
!981 = !DILocalVariable(name: "src_used", scope: !970, file: !10, line: 1153, type: !70)
!982 = !DILocation(line: 1149, column: 28, scope: !970)
!983 = !DILocation(line: 1149, column: 49, scope: !970)
!984 = !DILocation(line: 1149, column: 72, scope: !970)
!985 = !DILocation(line: 1150, column: 19, scope: !970)
!986 = !DILocation(line: 1150, column: 28, scope: !970)
!987 = !DILocation(line: 1151, column: 19, scope: !970)
!988 = !DILocation(line: 1151, column: 40, scope: !970)
!989 = !DILocation(line: 1153, column: 21, scope: !970)
!990 = !DILocation(line: 1154, column: 12, scope: !991)
!991 = distinct !DILexicalBlock(scope: !970, file: !10, line: 1154, column: 7)
!992 = !DILocation(line: 1155, column: 13, scope: !993)
!993 = distinct !DILexicalBlock(scope: !994, file: !10, line: 1155, column: 9)
!994 = distinct !DILexicalBlock(scope: !991, file: !10, line: 1154, column: 32)
!995 = !DILocation(line: 1154, column: 7, scope: !970)
!996 = !DILocation(line: 1155, column: 24, scope: !993)
!997 = !DILocation(line: 1155, column: 9, scope: !994)
!998 = !DILocation(line: 1156, column: 18, scope: !999)
!999 = distinct !DILexicalBlock(scope: !993, file: !10, line: 1155, column: 45)
!1000 = !DILocation(line: 1157, column: 21, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !999, file: !10, line: 1157, column: 11)
!1002 = !DILocation(line: 1157, column: 30, scope: !1001)
!1003 = !DILocation(line: 1157, column: 33, scope: !1001)
!1004 = !DILocation(line: 1157, column: 11, scope: !999)
!1005 = !DILocation(line: 1160, column: 9, scope: !1006)
!1006 = distinct !DILexicalBlock(scope: !1001, file: !10, line: 1157, column: 59)
!1007 = !{!556, !283, i64 200}
!1008 = !DILocation(line: 1161, column: 9, scope: !1006)
!1009 = !DILocation(line: 0, scope: !970)
!1010 = !DILocation(line: 1165, column: 10, scope: !970)
!1011 = !DILocation(line: 1165, column: 3, scope: !970)
!1012 = !DILocation(line: 1166, column: 1, scope: !970)
!1013 = distinct !DISubprogram(name: "ip6_output_if_src", scope: !10, file: !10, line: 1173, type: !971, isLocal: false, isDefinition: true, scopeLine: 1176, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1014)
!1014 = !{!1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022, !1023}
!1015 = !DILocalVariable(name: "p", arg: 1, scope: !1013, file: !10, line: 1173, type: !207)
!1016 = !DILocalVariable(name: "src", arg: 2, scope: !1013, file: !10, line: 1173, type: !70)
!1017 = !DILocalVariable(name: "dest", arg: 3, scope: !1013, file: !10, line: 1173, type: !70)
!1018 = !DILocalVariable(name: "hl", arg: 4, scope: !1013, file: !10, line: 1174, type: !60)
!1019 = !DILocalVariable(name: "tc", arg: 5, scope: !1013, file: !10, line: 1174, type: !60)
!1020 = !DILocalVariable(name: "nexth", arg: 6, scope: !1013, file: !10, line: 1175, type: !60)
!1021 = !DILocalVariable(name: "netif", arg: 7, scope: !1013, file: !10, line: 1175, type: !181)
!1022 = !DILocalVariable(name: "ip6hdr", scope: !1013, file: !10, line: 1177, type: !97)
!1023 = !DILocalVariable(name: "dest_addr", scope: !1013, file: !10, line: 1178, type: !72)
!1024 = !DILocation(line: 1173, column: 32, scope: !1013)
!1025 = !DILocation(line: 1173, column: 53, scope: !1013)
!1026 = !DILocation(line: 1173, column: 76, scope: !1013)
!1027 = !DILocation(line: 1174, column: 19, scope: !1013)
!1028 = !DILocation(line: 1174, column: 28, scope: !1013)
!1029 = !DILocation(line: 1175, column: 19, scope: !1013)
!1030 = !DILocation(line: 1175, column: 40, scope: !1013)
!1031 = !DILocation(line: 1178, column: 3, scope: !1013)
!1032 = !DILocation(line: 1181, column: 3, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1034, file: !10, line: 1181, column: 3)
!1034 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 1181, column: 3)
!1035 = !{!563, !275, i64 22}
!1036 = !DILocation(line: 1181, column: 3, scope: !1034)
!1037 = !DILocation(line: 1181, column: 3, scope: !1038)
!1038 = distinct !DILexicalBlock(scope: !1039, file: !10, line: 1181, column: 3)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !10, line: 1181, column: 3)
!1040 = !DILocation(line: 1181, column: 3, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1042, file: !10, line: 1181, column: 3)
!1042 = distinct !DILexicalBlock(scope: !1043, file: !10, line: 1181, column: 3)
!1043 = distinct !DILexicalBlock(scope: !1038, file: !10, line: 1181, column: 3)
!1044 = !DILocation(line: 1184, column: 12, scope: !1045)
!1045 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 1184, column: 7)
!1046 = !DILocation(line: 1184, column: 7, scope: !1013)
!1047 = !DILocation(line: 1192, column: 9, scope: !1048)
!1048 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1192, column: 9)
!1049 = distinct !DILexicalBlock(scope: !1045, file: !10, line: 1184, column: 32)
!1050 = !DILocation(line: 1193, column: 7, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !10, line: 1193, column: 7)
!1052 = distinct !DILexicalBlock(scope: !1048, file: !10, line: 1192, column: 49)
!1053 = !DILocation(line: 1194, column: 7, scope: !1052)
!1054 = !DILocation(line: 1196, column: 5, scope: !1052)
!1055 = !DILocation(line: 1200, column: 9, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1200, column: 9)
!1057 = !DILocation(line: 1200, column: 9, scope: !1049)
!1058 = !DILocation(line: 1202, column: 7, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1056, file: !10, line: 1200, column: 39)
!1060 = !DILocation(line: 1203, column: 7, scope: !1059)
!1061 = !DILocation(line: 1206, column: 35, scope: !1049)
!1062 = !DILocation(line: 1177, column: 19, scope: !1013)
!1063 = !DILocation(line: 1207, column: 5, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !10, line: 1207, column: 5)
!1065 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1207, column: 5)
!1066 = !DILocation(line: 1207, column: 5, scope: !1065)
!1067 = !DILocation(line: 1207, column: 5, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !10, line: 1207, column: 5)
!1069 = distinct !DILexicalBlock(scope: !1064, file: !10, line: 1207, column: 5)
!1070 = !DILocation(line: 1207, column: 5, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1072, file: !10, line: 1207, column: 5)
!1072 = distinct !DILexicalBlock(scope: !1073, file: !10, line: 1207, column: 5)
!1073 = distinct !DILexicalBlock(scope: !1068, file: !10, line: 1207, column: 5)
!1074 = !DILocation(line: 1210, column: 5, scope: !1049)
!1075 = !{!568, !275, i64 7}
!1076 = !DILocation(line: 1211, column: 5, scope: !1049)
!1077 = !DILocation(line: 1214, column: 5, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1214, column: 5)
!1079 = !DILocation(line: 1216, column: 5, scope: !1049)
!1080 = !DILocation(line: 1217, column: 5, scope: !1049)
!1081 = !DILocation(line: 1219, column: 13, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1219, column: 9)
!1083 = !DILocation(line: 1219, column: 9, scope: !1049)
!1084 = !DILocation(line: 1223, column: 5, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1049, file: !10, line: 1223, column: 5)
!1086 = !DILocation(line: 1225, column: 3, scope: !1049)
!1087 = !DILocation(line: 1227, column: 35, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1045, file: !10, line: 1225, column: 10)
!1089 = !DILocation(line: 1228, column: 5, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1088, file: !10, line: 1228, column: 5)
!1091 = !DILocation(line: 1229, column: 5, scope: !1088)
!1092 = !DILocation(line: 1233, column: 3, scope: !1013)
!1093 = !{!556, !283, i64 186}
!1094 = !DILocation(line: 1263, column: 7, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1013, file: !10, line: 1263, column: 7)
!1096 = !{!281, !283, i64 252}
!1097 = !DILocation(line: 1263, column: 25, scope: !1095)
!1098 = !DILocation(line: 1263, column: 32, scope: !1095)
!1099 = !DILocation(line: 1263, column: 42, scope: !1095)
!1100 = !DILocation(line: 1263, column: 40, scope: !1095)
!1101 = !DILocation(line: 1263, column: 7, scope: !1013)
!1102 = !DILocation(line: 1264, column: 12, scope: !1103)
!1103 = distinct !DILexicalBlock(scope: !1095, file: !10, line: 1263, column: 81)
!1104 = !DILocation(line: 1264, column: 5, scope: !1103)
!1105 = !DILocation(line: 1269, column: 17, scope: !1013)
!1106 = !{!281, !274, i64 208}
!1107 = !DILocation(line: 1269, column: 10, scope: !1013)
!1108 = !DILocation(line: 1269, column: 3, scope: !1013)
!1109 = !DILocation(line: 0, scope: !1013)
!1110 = !DILocation(line: 1270, column: 1, scope: !1013)
!1111 = !DILocation(line: 194, column: 43, scope: !2)
!1112 = !DILocation(line: 196, column: 2, scope: !2)
!1113 = !DILocation(line: 196, column: 10, scope: !2)
!1114 = !DILocation(line: 197, column: 2, scope: !2)
!1115 = !DILocation(line: 198, column: 2, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1117, file: !3, line: 198, column: 2)
!1117 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!1118 = !DILocation(line: 199, column: 2, scope: !2)
!1119 = !DILocation(line: 200, column: 1, scope: !2)
!1120 = distinct !DISubprogram(name: "ip6_output", scope: !10, file: !10, line: 1291, type: !1121, isLocal: false, isDefinition: true, scopeLine: 1293, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1123)
!1121 = !DISubroutineType(types: !1122)
!1122 = !{!202, !207, !70, !70, !60, !60, !60}
!1123 = !{!1124, !1125, !1126, !1127, !1128, !1129, !1130, !1131, !1132, !1133}
!1124 = !DILocalVariable(name: "p", arg: 1, scope: !1120, file: !10, line: 1291, type: !207)
!1125 = !DILocalVariable(name: "src", arg: 2, scope: !1120, file: !10, line: 1291, type: !70)
!1126 = !DILocalVariable(name: "dest", arg: 3, scope: !1120, file: !10, line: 1291, type: !70)
!1127 = !DILocalVariable(name: "hl", arg: 4, scope: !1120, file: !10, line: 1292, type: !60)
!1128 = !DILocalVariable(name: "tc", arg: 5, scope: !1120, file: !10, line: 1292, type: !60)
!1129 = !DILocalVariable(name: "nexth", arg: 6, scope: !1120, file: !10, line: 1292, type: !60)
!1130 = !DILocalVariable(name: "netif", scope: !1120, file: !10, line: 1294, type: !181)
!1131 = !DILocalVariable(name: "ip6hdr", scope: !1120, file: !10, line: 1295, type: !97)
!1132 = !DILocalVariable(name: "src_addr", scope: !1120, file: !10, line: 1296, type: !72)
!1133 = !DILocalVariable(name: "dest_addr", scope: !1120, file: !10, line: 1296, type: !72)
!1134 = !DILocation(line: 1291, column: 25, scope: !1120)
!1135 = !DILocation(line: 1291, column: 46, scope: !1120)
!1136 = !DILocation(line: 1291, column: 69, scope: !1120)
!1137 = !DILocation(line: 1292, column: 16, scope: !1120)
!1138 = !DILocation(line: 1292, column: 25, scope: !1120)
!1139 = !DILocation(line: 1292, column: 34, scope: !1120)
!1140 = !DILocation(line: 1296, column: 3, scope: !1120)
!1141 = !DILocation(line: 1298, column: 3, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1143, file: !10, line: 1298, column: 3)
!1143 = distinct !DILexicalBlock(scope: !1120, file: !10, line: 1298, column: 3)
!1144 = !DILocation(line: 1298, column: 3, scope: !1143)
!1145 = !DILocation(line: 1298, column: 3, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1147, file: !10, line: 1298, column: 3)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !10, line: 1298, column: 3)
!1148 = !DILocation(line: 1298, column: 3, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1150, file: !10, line: 1298, column: 3)
!1150 = distinct !DILexicalBlock(scope: !1151, file: !10, line: 1298, column: 3)
!1151 = distinct !DILexicalBlock(scope: !1146, file: !10, line: 1298, column: 3)
!1152 = !DILocation(line: 1300, column: 12, scope: !1153)
!1153 = distinct !DILexicalBlock(scope: !1120, file: !10, line: 1300, column: 7)
!1154 = !DILocation(line: 1300, column: 7, scope: !1120)
!1155 = !DILocation(line: 1301, column: 13, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1153, file: !10, line: 1300, column: 32)
!1157 = !DILocation(line: 1294, column: 17, scope: !1120)
!1158 = !DILocation(line: 1302, column: 3, scope: !1156)
!1159 = !DILocation(line: 1304, column: 35, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1153, file: !10, line: 1302, column: 10)
!1161 = !DILocation(line: 1295, column: 19, scope: !1120)
!1162 = !DILocation(line: 1305, column: 5, scope: !1163)
!1163 = distinct !DILexicalBlock(scope: !1160, file: !10, line: 1305, column: 5)
!1164 = !DILocation(line: 1306, column: 5, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1160, file: !10, line: 1306, column: 5)
!1166 = !DILocation(line: 1296, column: 14, scope: !1120)
!1167 = !DILocation(line: 1296, column: 24, scope: !1120)
!1168 = !DILocation(line: 1307, column: 13, scope: !1160)
!1169 = !DILocation(line: 0, scope: !1160)
!1170 = !DILocation(line: 1310, column: 13, scope: !1171)
!1171 = distinct !DILexicalBlock(scope: !1120, file: !10, line: 1310, column: 7)
!1172 = !DILocation(line: 1310, column: 7, scope: !1120)
!1173 = !DILocation(line: 1320, column: 5, scope: !1174)
!1174 = distinct !DILexicalBlock(scope: !1171, file: !10, line: 1310, column: 22)
!1175 = !DILocation(line: 1321, column: 5, scope: !1174)
!1176 = !DILocation(line: 1149, column: 28, scope: !970, inlinedAt: !1177)
!1177 = distinct !DILocation(line: 1324, column: 10, scope: !1120)
!1178 = !DILocation(line: 1149, column: 49, scope: !970, inlinedAt: !1177)
!1179 = !DILocation(line: 1149, column: 72, scope: !970, inlinedAt: !1177)
!1180 = !DILocation(line: 1150, column: 19, scope: !970, inlinedAt: !1177)
!1181 = !DILocation(line: 1150, column: 28, scope: !970, inlinedAt: !1177)
!1182 = !DILocation(line: 1151, column: 19, scope: !970, inlinedAt: !1177)
!1183 = !DILocation(line: 1151, column: 40, scope: !970, inlinedAt: !1177)
!1184 = !DILocation(line: 1153, column: 21, scope: !970, inlinedAt: !1177)
!1185 = !DILocation(line: 1154, column: 12, scope: !991, inlinedAt: !1177)
!1186 = !DILocation(line: 1155, column: 13, scope: !993, inlinedAt: !1177)
!1187 = !DILocation(line: 1154, column: 7, scope: !970, inlinedAt: !1177)
!1188 = !DILocation(line: 1155, column: 24, scope: !993, inlinedAt: !1177)
!1189 = !DILocation(line: 1155, column: 9, scope: !994, inlinedAt: !1177)
!1190 = !DILocation(line: 1156, column: 18, scope: !999, inlinedAt: !1177)
!1191 = !DILocation(line: 1157, column: 21, scope: !1001, inlinedAt: !1177)
!1192 = !DILocation(line: 1157, column: 30, scope: !1001, inlinedAt: !1177)
!1193 = !DILocation(line: 1157, column: 33, scope: !1001, inlinedAt: !1177)
!1194 = !DILocation(line: 1157, column: 11, scope: !999, inlinedAt: !1177)
!1195 = !DILocation(line: 1160, column: 9, scope: !1006, inlinedAt: !1177)
!1196 = !DILocation(line: 1161, column: 9, scope: !1006, inlinedAt: !1177)
!1197 = !DILocation(line: 0, scope: !970, inlinedAt: !1177)
!1198 = !DILocation(line: 1165, column: 10, scope: !970, inlinedAt: !1177)
!1199 = !DILocation(line: 1165, column: 3, scope: !970, inlinedAt: !1177)
!1200 = !DILocation(line: 1166, column: 1, scope: !970, inlinedAt: !1177)
!1201 = !DILocation(line: 1324, column: 3, scope: !1120)
!1202 = !DILocation(line: 0, scope: !1120)
!1203 = !DILocation(line: 1325, column: 1, scope: !1120)
!1204 = distinct !DISubprogram(name: "ip6_options_add_hbh_ra", scope: !10, file: !10, line: 1403, type: !1205, isLocal: false, isDefinition: true, scopeLine: 1404, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !1207)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!202, !207, !60, !60}
!1207 = !{!1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215}
!1208 = !DILocalVariable(name: "p", arg: 1, scope: !1204, file: !10, line: 1403, type: !207)
!1209 = !DILocalVariable(name: "nexth", arg: 2, scope: !1204, file: !10, line: 1403, type: !60)
!1210 = !DILocalVariable(name: "value", arg: 3, scope: !1204, file: !10, line: 1403, type: !60)
!1211 = !DILocalVariable(name: "opt_data", scope: !1204, file: !10, line: 1405, type: !125)
!1212 = !DILocalVariable(name: "offset", scope: !1204, file: !10, line: 1406, type: !67)
!1213 = !DILocalVariable(name: "hbh_hdr", scope: !1204, file: !10, line: 1407, type: !115)
!1214 = !DILocalVariable(name: "opt_hdr", scope: !1204, file: !10, line: 1408, type: !120)
!1215 = !DILocalVariable(name: "hlen", scope: !1204, file: !10, line: 1411, type: !528)
!1216 = !DILocation(line: 1403, column: 37, scope: !1204)
!1217 = !DILocation(line: 1403, column: 45, scope: !1204)
!1218 = !DILocation(line: 1403, column: 57, scope: !1204)
!1219 = !DILocation(line: 1406, column: 9, scope: !1204)
!1220 = !DILocation(line: 1411, column: 14, scope: !1204)
!1221 = !DILocation(line: 1413, column: 7, scope: !1222)
!1222 = distinct !DILexicalBlock(scope: !1204, file: !10, line: 1413, column: 7)
!1223 = !DILocation(line: 1413, column: 7, scope: !1204)
!1224 = !DILocation(line: 1415, column: 5, scope: !1225)
!1225 = distinct !DILexicalBlock(scope: !1222, file: !10, line: 1413, column: 62)
!1226 = !DILocation(line: 1416, column: 5, scope: !1225)
!1227 = !DILocation(line: 1420, column: 38, scope: !1204)
!1228 = !DILocation(line: 1407, column: 23, scope: !1204)
!1229 = !DILocation(line: 1421, column: 26, scope: !1204)
!1230 = !{!700, !275, i64 0}
!1231 = !DILocation(line: 1422, column: 12, scope: !1204)
!1232 = !DILocation(line: 1422, column: 18, scope: !1204)
!1233 = !DILocation(line: 1426, column: 52, scope: !1204)
!1234 = !DILocation(line: 1408, column: 23, scope: !1204)
!1235 = !DILocation(line: 1427, column: 25, scope: !1204)
!1236 = !DILocation(line: 1428, column: 3, scope: !1204)
!1237 = !DILocation(line: 1428, column: 25, scope: !1204)
!1238 = !DILocation(line: 1432, column: 30, scope: !1204)
!1239 = !DILocation(line: 1405, column: 9, scope: !1204)
!1240 = !DILocation(line: 1433, column: 15, scope: !1204)
!1241 = !DILocation(line: 1434, column: 3, scope: !1204)
!1242 = !DILocation(line: 1434, column: 15, scope: !1204)
!1243 = !DILocation(line: 1438, column: 52, scope: !1204)
!1244 = !DILocation(line: 1439, column: 25, scope: !1204)
!1245 = !DILocation(line: 1440, column: 3, scope: !1204)
!1246 = !DILocation(line: 1440, column: 25, scope: !1204)
!1247 = !DILocation(line: 1442, column: 3, scope: !1204)
!1248 = !DILocation(line: 0, scope: !1204)
!1249 = !DILocation(line: 1443, column: 1, scope: !1204)
