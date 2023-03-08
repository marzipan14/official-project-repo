; ModuleID = '/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/memp.c'
source_filename = "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/memp.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.memp_desc = type { i16 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@memp_UDP_PCB = dso_local constant %struct.memp_desc { i16 96 }, align 2, !dbg !0
@memp_TCP_PCB = dso_local constant %struct.memp_desc { i16 280 }, align 2, !dbg !78
@memp_TCP_PCB_LISTEN = dso_local constant %struct.memp_desc { i16 88 }, align 2, !dbg !81
@memp_TCP_SEG = dso_local constant %struct.memp_desc { i16 32 }, align 2, !dbg !83
@memp_REASSDATA = dso_local constant %struct.memp_desc { i16 40 }, align 2, !dbg !85
@memp_FRAG_PBUF = dso_local constant %struct.memp_desc { i16 40 }, align 2, !dbg !87
@memp_NETBUF = dso_local constant %struct.memp_desc { i16 48 }, align 2, !dbg !89
@memp_NETCONN = dso_local constant %struct.memp_desc { i16 128 }, align 2, !dbg !91
@memp_TCPIP_MSG_API = dso_local constant %struct.memp_desc { i16 32 }, align 2, !dbg !93
@memp_TCPIP_MSG_INPKT = dso_local constant %struct.memp_desc { i16 32 }, align 2, !dbg !95
@memp_SYS_TIMEOUT = dso_local constant %struct.memp_desc { i16 32 }, align 2, !dbg !97
@memp_NETDB = dso_local constant %struct.memp_desc { i16 333 }, align 2, !dbg !99
@memp_ND6_QUEUE = dso_local constant %struct.memp_desc { i16 16 }, align 2, !dbg !101
@memp_IP6_REASSDATA = dso_local constant %struct.memp_desc { i16 88 }, align 2, !dbg !103
@memp_MLD6_GROUP = dso_local constant %struct.memp_desc { i16 40 }, align 2, !dbg !105
@memp_PBUF = dso_local constant %struct.memp_desc { i16 24 }, align 2, !dbg !107
@memp_PBUF_POOL = dso_local constant %struct.memp_desc { i16 1538 }, align 2, !dbg !109
@memp_pools = dso_local local_unnamed_addr constant [17 x %struct.memp_desc*] [%struct.memp_desc* @memp_UDP_PCB, %struct.memp_desc* @memp_TCP_PCB, %struct.memp_desc* @memp_TCP_PCB_LISTEN, %struct.memp_desc* @memp_TCP_SEG, %struct.memp_desc* @memp_REASSDATA, %struct.memp_desc* @memp_FRAG_PBUF, %struct.memp_desc* @memp_NETBUF, %struct.memp_desc* @memp_NETCONN, %struct.memp_desc* @memp_TCPIP_MSG_API, %struct.memp_desc* @memp_TCPIP_MSG_INPKT, %struct.memp_desc* @memp_SYS_TIMEOUT, %struct.memp_desc* @memp_NETDB, %struct.memp_desc* @memp_ND6_QUEUE, %struct.memp_desc* @memp_IP6_REASSDATA, %struct.memp_desc* @memp_MLD6_GROUP, %struct.memp_desc* @memp_PBUF, %struct.memp_desc* @memp_PBUF_POOL], align 16, !dbg !111
@.str = private unnamed_addr constant [18 x i8] c"invalid pool desc\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"!(1)\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"memp_malloc: type < MEMP_MAX\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"memp_free: type < MEMP_MAX\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !117
@uk_pr_crit.__str.5 = internal global [7 x i8] c"memp.c\00", section ".data_shared", align 1, !dbg !144
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local void @memp_init_pool(%struct.memp_desc* nocapture readnone) local_unnamed_addr #0 !dbg !153 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !159
  ret void, !dbg !159
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: noredzone nounwind
define dso_local void @memp_init() local_unnamed_addr #0 !dbg !160 {
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !170
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !168
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !169
  ret void, !dbg !172
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @memp_malloc_pool(%struct.memp_desc* readonly) local_unnamed_addr #0 !dbg !173 {
  %2 = icmp eq %struct.memp_desc* %0, null, !dbg !177
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !180
  br i1 %2, label %3, label %4, !dbg !180

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !181
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !184
  tail call void @ukplat_terminate(i32 3) #8, !dbg !184
  unreachable

; <label>:4:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !188
  %5 = getelementptr inbounds %struct.memp_desc, %struct.memp_desc* %0, i64 0, i32 0, !dbg !191
  %6 = load i16, i16* %5, align 2, !dbg !191, !tbaa !192
  %7 = zext i16 %6 to i64, !dbg !197
  %8 = tail call i8* @mem_malloc(i64 %7) #9, !dbg !198
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !200
  %10 = icmp eq i8* %8, null, !dbg !203
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !205
  br i1 %10, label %12, label %11, !dbg !205

; <label>:11:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !206
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #9, !dbg !209
  br label %13, !dbg !210

; <label>:12:                                     ; preds = %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #9, !dbg !211
  br label %13, !dbg !213

; <label>:13:                                     ; preds = %11, %12
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !214
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !215
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !216
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !217
  ret i8* %8, !dbg !217
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !119 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !219
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !219
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !221
  call void @llvm.va_start(i8* nonnull %3), !dbg !221
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !222
  call void @llvm.va_end(i8* nonnull %3), !dbg !225
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !226
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !226
  ret void, !dbg !226
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @memp_malloc(i32) local_unnamed_addr #0 !dbg !227 {
  %2 = icmp ult i32 %0, 17, !dbg !235
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  br i1 %2, label %4, label %3, !dbg !238

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !239
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !242
  tail call void @ukplat_terminate(i32 3) #8, !dbg !242
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = zext i32 %0 to i64, !dbg !246
  %6 = getelementptr inbounds [17 x %struct.memp_desc*], [17 x %struct.memp_desc*]* @memp_pools, i64 0, i64 %5, !dbg !246
  %7 = load %struct.memp_desc*, %struct.memp_desc** %6, align 8, !dbg !246, !tbaa !247
  %8 = getelementptr inbounds %struct.memp_desc, %struct.memp_desc* %7, i64 0, i32 0, !dbg !251
  %9 = load i16, i16* %8, align 2, !dbg !251, !tbaa !192
  %10 = zext i16 %9 to i64, !dbg !252
  %11 = tail call i8* @mem_malloc(i64 %10) #9, !dbg !253
  %12 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !255
  %13 = icmp eq i8* %11, null, !dbg !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  br i1 %13, label %15, label %14, !dbg !258

; <label>:14:                                     ; preds = %4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !259
  tail call void @ukplat_lcpu_restore_irqf(i64 %12) #9, !dbg !260
  br label %16, !dbg !261

; <label>:15:                                     ; preds = %4
  tail call void @ukplat_lcpu_restore_irqf(i64 %12) #9, !dbg !262
  br label %16, !dbg !263

; <label>:16:                                     ; preds = %14, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !267
  ret i8* %11, !dbg !267
}

; Function Attrs: noredzone nounwind
define dso_local void @memp_free_pool(%struct.memp_desc* readnone, i8*) local_unnamed_addr #0 !dbg !268 {
  %3 = icmp eq %struct.memp_desc* %0, null, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !277
  br i1 %3, label %4, label %5, !dbg !277

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !278
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !281
  tail call void @ukplat_terminate(i32 3) #8, !dbg !281
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %1, null, !dbg !285
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !287
  br i1 %6, label %9, label %7, !dbg !287

; <label>:7:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !291
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !294
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #9, !dbg !297
  tail call void @mem_free(i8* nonnull %1) #9, !dbg !298
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !299
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  br label %9, !dbg !300

; <label>:9:                                      ; preds = %5, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !300
  ret void, !dbg !300
}

; Function Attrs: noredzone nounwind
define dso_local void @memp_free(i32, i8*) local_unnamed_addr #0 !dbg !301 {
  %3 = icmp ult i32 %0, 17, !dbg !309
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !312
  br i1 %3, label %5, label %4, !dbg !312

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !313
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !316
  tail call void @ukplat_terminate(i32 3) #8, !dbg !316
  unreachable

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %1, null, !dbg !320
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !322
  br i1 %6, label %9, label %7, !dbg !322

; <label>:7:                                      ; preds = %5
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !328
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #9, !dbg !330
  tail call void @mem_free(i8* nonnull %1) #9, !dbg !331
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !332
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  br label %9, !dbg !333

; <label>:9:                                      ; preds = %5, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !333
  ret void, !dbg !333
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone
declare dso_local i8* @mem_malloc(i64) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local i64 @ukplat_lcpu_save_irqf() local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @ukplat_lcpu_restore_irqf(i64) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local void @mem_free(i8*) local_unnamed_addr #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { argmemonly nounwind }
attributes #3 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!149, !150, !151}
!llvm.ident = !{!152}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "memp_UDP_PCB", scope: !2, file: !80, line: 46, type: !42, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !34, globals: !77)
!3 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/core/memp.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !{!5, !13}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !6, line: 68, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!10 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!11 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!12 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !14, line: 52, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/memp.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!16 = !DIEnumerator(name: "MEMP_UDP_PCB", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "MEMP_TCP_PCB", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "MEMP_TCP_PCB_LISTEN", value: 2, isUnsigned: true)
!19 = !DIEnumerator(name: "MEMP_TCP_SEG", value: 3, isUnsigned: true)
!20 = !DIEnumerator(name: "MEMP_REASSDATA", value: 4, isUnsigned: true)
!21 = !DIEnumerator(name: "MEMP_FRAG_PBUF", value: 5, isUnsigned: true)
!22 = !DIEnumerator(name: "MEMP_NETBUF", value: 6, isUnsigned: true)
!23 = !DIEnumerator(name: "MEMP_NETCONN", value: 7, isUnsigned: true)
!24 = !DIEnumerator(name: "MEMP_TCPIP_MSG_API", value: 8, isUnsigned: true)
!25 = !DIEnumerator(name: "MEMP_TCPIP_MSG_INPKT", value: 9, isUnsigned: true)
!26 = !DIEnumerator(name: "MEMP_SYS_TIMEOUT", value: 10, isUnsigned: true)
!27 = !DIEnumerator(name: "MEMP_NETDB", value: 11, isUnsigned: true)
!28 = !DIEnumerator(name: "MEMP_ND6_QUEUE", value: 12, isUnsigned: true)
!29 = !DIEnumerator(name: "MEMP_IP6_REASSDATA", value: 13, isUnsigned: true)
!30 = !DIEnumerator(name: "MEMP_MLD6_GROUP", value: 14, isUnsigned: true)
!31 = !DIEnumerator(name: "MEMP_PBUF", value: 15, isUnsigned: true)
!32 = !DIEnumerator(name: "MEMP_PBUF_POOL", value: 16, isUnsigned: true)
!33 = !DIEnumerator(name: "MEMP_MAX", value: 17, isUnsigned: true)
!34 = !{!35, !36, !59, !62, !67}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "memp", scope: !38, file: !3, line: 250, flags: DIFlagFwdDecl)
!38 = distinct !DISubprogram(name: "do_memp_malloc_pool", scope: !3, file: !3, line: 245, type: !39, isLocal: true, isDefinition: true, scopeLine: 249, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !54)
!39 = !DISubroutineType(types: !40)
!40 = !{!35, !41}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "memp_desc", file: !44, line: 108, size: 16, elements: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/memp_priv.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !44, line: 119, baseType: !47, size: 16)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !48, line: 127, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 36, baseType: !51)
!50 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 57, baseType: !53)
!52 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!53 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!54 = !{!55, !56, !57}
!55 = !DILocalVariable(name: "desc", arg: 1, scope: !38, file: !3, line: 245, type: !41)
!56 = !DILocalVariable(name: "memp", scope: !38, file: !3, line: 250, type: !36)
!57 = !DILocalVariable(name: "old_level", scope: !38, file: !3, line: 251, type: !58)
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !DIDerivedType(tag: DW_TAG_typedef, name: "mem_ptr_t", file: !48, line: 135, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !50, line: 82, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !52, line: 232, baseType: !58)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !48, line: 125, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 43, baseType: !66)
!66 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DICompositeType(tag: DW_TAG_structure_type, name: "memp", scope: !69, file: !3, line: 361, flags: DIFlagFwdDecl)
!69 = distinct !DISubprogram(name: "do_memp_free_pool", scope: !3, file: !3, line: 359, type: !70, isLocal: true, isDefinition: true, scopeLine: 360, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !72)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !41, !35}
!72 = !{!73, !74, !75, !76}
!73 = !DILocalVariable(name: "desc", arg: 1, scope: !69, file: !3, line: 359, type: !41)
!74 = !DILocalVariable(name: "mem", arg: 2, scope: !69, file: !3, line: 359, type: !35)
!75 = !DILocalVariable(name: "memp", scope: !69, file: !3, line: 361, type: !67)
!76 = !DILocalVariable(name: "old_level", scope: !69, file: !3, line: 362, type: !58)
!77 = !{!0, !78, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !117, !144}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "memp_TCP_PCB", scope: !2, file: !80, line: 50, type: !42, isLocal: false, isDefinition: true)
!80 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/priv/memp_std.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(name: "memp_TCP_PCB_LISTEN", scope: !2, file: !80, line: 51, type: !42, isLocal: false, isDefinition: true)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "memp_TCP_SEG", scope: !2, file: !80, line: 52, type: !42, isLocal: false, isDefinition: true)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(name: "memp_REASSDATA", scope: !2, file: !80, line: 60, type: !42, isLocal: false, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(name: "memp_FRAG_PBUF", scope: !2, file: !80, line: 63, type: !42, isLocal: false, isDefinition: true)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(name: "memp_NETBUF", scope: !2, file: !80, line: 67, type: !42, isLocal: false, isDefinition: true)
!91 = !DIGlobalVariableExpression(var: !92, expr: !DIExpression())
!92 = distinct !DIGlobalVariable(name: "memp_NETCONN", scope: !2, file: !80, line: 68, type: !42, isLocal: false, isDefinition: true)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(name: "memp_TCPIP_MSG_API", scope: !2, file: !80, line: 72, type: !42, isLocal: false, isDefinition: true)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "memp_TCPIP_MSG_INPKT", scope: !2, file: !80, line: 89, type: !42, isLocal: false, isDefinition: true)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(name: "memp_SYS_TIMEOUT", scope: !2, file: !80, line: 102, type: !42, isLocal: false, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(name: "memp_NETDB", scope: !2, file: !80, line: 106, type: !42, isLocal: false, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(name: "memp_ND6_QUEUE", scope: !2, file: !80, line: 113, type: !42, isLocal: false, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "memp_IP6_REASSDATA", scope: !2, file: !80, line: 117, type: !42, isLocal: false, isDefinition: true)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "memp_MLD6_GROUP", scope: !2, file: !80, line: 121, type: !42, isLocal: false, isDefinition: true)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "memp_PBUF", scope: !2, file: !80, line: 133, type: !42, isLocal: false, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "memp_PBUF_POOL", scope: !2, file: !80, line: 134, type: !42, isLocal: false, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "memp_pools", scope: !2, file: !3, line: 81, type: !113, isLocal: false, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 1088, elements: !115)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!115 = !{!116}
!116 = !DISubrange(count: 17)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(name: "__str", scope: !119, file: !120, line: 198, type: !141, isLocal: true, isDefinition: true)
!119 = distinct !DISubprogram(name: "uk_pr_crit", scope: !120, file: !120, line: 194, type: !121, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !126)
!120 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DISubroutineType(types: !122)
!122 = !{null, !123, null}
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!126 = !{!127, !128}
!127 = !DILocalVariable(name: "fmt", arg: 1, scope: !119, file: !120, line: 194, type: !123)
!128 = !DILocalVariable(name: "argp", scope: !119, file: !120, line: 196, type: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !130, line: 32, baseType: !131)
!130 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !132)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 192, elements: !139)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !134)
!134 = !{!135, !136, !137, !138}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !133, file: !3, line: 196, baseType: !7, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !133, file: !3, line: 196, baseType: !7, size: 32, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !133, file: !3, line: 196, baseType: !35, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !133, file: !3, line: 196, baseType: !35, size: 64, offset: 128)
!139 = !{!140}
!140 = !DISubrange(count: 1)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 64, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 8)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "__str", scope: !119, file: !120, line: 198, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 56, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 7)
!149 = !{i32 2, !"Dwarf Version", i32 4}
!150 = !{i32 2, !"Debug Info Version", i32 3}
!151 = !{i32 1, !"wchar_size", i32 4}
!152 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!153 = distinct !DISubprogram(name: "memp_init_pool", scope: !3, file: !3, line: 175, type: !154, isLocal: false, isDefinition: true, scopeLine: 176, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !156)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !41}
!156 = !{!157}
!157 = !DILocalVariable(name: "desc", arg: 1, scope: !153, file: !3, line: 175, type: !41)
!158 = !DILocation(line: 175, column: 40, scope: !153)
!159 = !DILocation(line: 215, column: 1, scope: !153)
!160 = distinct !DISubprogram(name: "memp_init", scope: !3, file: !3, line: 224, type: !161, isLocal: false, isDefinition: true, scopeLine: 225, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !163)
!161 = !DISubroutineType(types: !162)
!162 = !{null}
!163 = !{!164}
!164 = !DILocalVariable(name: "i", scope: !160, file: !3, line: 226, type: !47)
!165 = !DILocation(line: 226, column: 9, scope: !160)
!166 = !DILocation(line: 229, column: 8, scope: !167)
!167 = distinct !DILexicalBlock(scope: !160, file: !3, line: 229, column: 3)
!168 = !DILocation(line: 229, column: 3, scope: !167)
!169 = !DILocation(line: 0, scope: !160)
!170 = !DILocation(line: 229, column: 3, scope: !171)
!171 = distinct !DILexicalBlock(scope: !167, file: !3, line: 229, column: 3)
!172 = !DILocation(line: 241, column: 1, scope: !160)
!173 = distinct !DISubprogram(name: "memp_malloc_pool", scope: !3, file: !3, line: 311, type: !39, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !174)
!174 = !{!175}
!175 = !DILocalVariable(name: "desc", arg: 1, scope: !173, file: !3, line: 311, type: !41)
!176 = !DILocation(line: 311, column: 42, scope: !173)
!177 = !DILocation(line: 316, column: 3, scope: !178)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 316, column: 3)
!179 = distinct !DILexicalBlock(scope: !173, file: !3, line: 316, column: 3)
!180 = !DILocation(line: 316, column: 3, scope: !179)
!181 = !DILocation(line: 316, column: 3, scope: !182)
!182 = distinct !DILexicalBlock(scope: !183, file: !3, line: 316, column: 3)
!183 = distinct !DILexicalBlock(scope: !178, file: !3, line: 316, column: 3)
!184 = !DILocation(line: 316, column: 3, scope: !185)
!185 = distinct !DILexicalBlock(scope: !186, file: !3, line: 316, column: 3)
!186 = distinct !DILexicalBlock(scope: !187, file: !3, line: 316, column: 3)
!187 = distinct !DILexicalBlock(scope: !182, file: !3, line: 316, column: 3)
!188 = !DILocation(line: 317, column: 7, scope: !173)
!189 = !DILocation(line: 245, column: 45, scope: !38, inlinedAt: !190)
!190 = distinct !DILocation(line: 322, column: 10, scope: !173)
!191 = !DILocation(line: 254, column: 48, scope: !38, inlinedAt: !190)
!192 = !{!193, !194, i64 0}
!193 = !{!"memp_desc", !194, i64 0}
!194 = !{!"short", !195, i64 0}
!195 = !{!"omnipotent char", !196, i64 0}
!196 = !{!"Simple C/C++ TBAA"}
!197 = !DILocation(line: 254, column: 36, scope: !38, inlinedAt: !190)
!198 = !DILocation(line: 254, column: 25, scope: !38, inlinedAt: !190)
!199 = !DILocation(line: 250, column: 16, scope: !38, inlinedAt: !190)
!200 = !DILocation(line: 255, column: 3, scope: !201, inlinedAt: !190)
!201 = distinct !DILexicalBlock(scope: !38, file: !3, line: 255, column: 3)
!202 = !DILocation(line: 251, column: 3, scope: !38, inlinedAt: !190)
!203 = !DILocation(line: 262, column: 12, scope: !204, inlinedAt: !190)
!204 = distinct !DILexicalBlock(scope: !38, file: !3, line: 262, column: 7)
!205 = !DILocation(line: 262, column: 7, scope: !38, inlinedAt: !190)
!206 = !DILocation(line: 280, column: 5, scope: !207, inlinedAt: !190)
!207 = distinct !DILexicalBlock(scope: !208, file: !3, line: 280, column: 5)
!208 = distinct !DILexicalBlock(scope: !204, file: !3, line: 262, column: 21)
!209 = !DILocation(line: 288, column: 5, scope: !208, inlinedAt: !190)
!210 = !DILocation(line: 290, column: 5, scope: !208, inlinedAt: !190)
!211 = !DILocation(line: 295, column: 5, scope: !212, inlinedAt: !190)
!212 = distinct !DILexicalBlock(scope: !204, file: !3, line: 291, column: 10)
!213 = !DILocation(line: 299, column: 3, scope: !38, inlinedAt: !190)
!214 = !DILocation(line: 0, scope: !173)
!215 = !DILocation(line: 300, column: 1, scope: !38, inlinedAt: !190)
!216 = !DILocation(line: 322, column: 3, scope: !173)
!217 = !DILocation(line: 326, column: 1, scope: !173)
!218 = !DILocation(line: 194, column: 43, scope: !119)
!219 = !DILocation(line: 196, column: 2, scope: !119)
!220 = !DILocation(line: 196, column: 10, scope: !119)
!221 = !DILocation(line: 197, column: 2, scope: !119)
!222 = !DILocation(line: 198, column: 2, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !120, line: 198, column: 2)
!224 = distinct !DILexicalBlock(scope: !119, file: !120, line: 198, column: 2)
!225 = !DILocation(line: 199, column: 2, scope: !119)
!226 = !DILocation(line: 200, column: 1, scope: !119)
!227 = distinct !DISubprogram(name: "memp_malloc", scope: !3, file: !3, line: 337, type: !228, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !231)
!228 = !DISubroutineType(types: !229)
!229 = !{!35, !230}
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "memp_t", file: !14, line: 56, baseType: !13)
!231 = !{!232, !233}
!232 = !DILocalVariable(name: "type", arg: 1, scope: !227, file: !3, line: 337, type: !230)
!233 = !DILocalVariable(name: "memp", scope: !227, file: !3, line: 342, type: !35)
!234 = !DILocation(line: 337, column: 20, scope: !227)
!235 = !DILocation(line: 343, column: 3, scope: !236)
!236 = distinct !DILexicalBlock(scope: !237, file: !3, line: 343, column: 3)
!237 = distinct !DILexicalBlock(scope: !227, file: !3, line: 343, column: 3)
!238 = !DILocation(line: 343, column: 3, scope: !237)
!239 = !DILocation(line: 343, column: 3, scope: !240)
!240 = distinct !DILexicalBlock(scope: !241, file: !3, line: 343, column: 3)
!241 = distinct !DILexicalBlock(scope: !236, file: !3, line: 343, column: 3)
!242 = !DILocation(line: 343, column: 3, scope: !243)
!243 = distinct !DILexicalBlock(scope: !244, file: !3, line: 343, column: 3)
!244 = distinct !DILexicalBlock(scope: !245, file: !3, line: 343, column: 3)
!245 = distinct !DILexicalBlock(scope: !240, file: !3, line: 343, column: 3)
!246 = !DILocation(line: 350, column: 30, scope: !227)
!247 = !{!248, !248, i64 0}
!248 = !{!"any pointer", !195, i64 0}
!249 = !DILocation(line: 245, column: 45, scope: !38, inlinedAt: !250)
!250 = distinct !DILocation(line: 350, column: 10, scope: !227)
!251 = !DILocation(line: 254, column: 48, scope: !38, inlinedAt: !250)
!252 = !DILocation(line: 254, column: 36, scope: !38, inlinedAt: !250)
!253 = !DILocation(line: 254, column: 25, scope: !38, inlinedAt: !250)
!254 = !DILocation(line: 250, column: 16, scope: !38, inlinedAt: !250)
!255 = !DILocation(line: 255, column: 3, scope: !201, inlinedAt: !250)
!256 = !DILocation(line: 251, column: 3, scope: !38, inlinedAt: !250)
!257 = !DILocation(line: 262, column: 12, scope: !204, inlinedAt: !250)
!258 = !DILocation(line: 262, column: 7, scope: !38, inlinedAt: !250)
!259 = !DILocation(line: 280, column: 5, scope: !207, inlinedAt: !250)
!260 = !DILocation(line: 288, column: 5, scope: !208, inlinedAt: !250)
!261 = !DILocation(line: 290, column: 5, scope: !208, inlinedAt: !250)
!262 = !DILocation(line: 295, column: 5, scope: !212, inlinedAt: !250)
!263 = !DILocation(line: 299, column: 3, scope: !38, inlinedAt: !250)
!264 = !DILocation(line: 0, scope: !227)
!265 = !DILocation(line: 300, column: 1, scope: !38, inlinedAt: !250)
!266 = !DILocation(line: 342, column: 9, scope: !227)
!267 = !DILocation(line: 356, column: 1, scope: !227)
!268 = distinct !DISubprogram(name: "memp_free_pool", scope: !3, file: !3, line: 403, type: !70, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !269)
!269 = !{!270, !271}
!270 = !DILocalVariable(name: "desc", arg: 1, scope: !268, file: !3, line: 403, type: !41)
!271 = !DILocalVariable(name: "mem", arg: 2, scope: !268, file: !3, line: 403, type: !35)
!272 = !DILocation(line: 403, column: 40, scope: !268)
!273 = !DILocation(line: 403, column: 52, scope: !268)
!274 = !DILocation(line: 405, column: 3, scope: !275)
!275 = distinct !DILexicalBlock(scope: !276, file: !3, line: 405, column: 3)
!276 = distinct !DILexicalBlock(scope: !268, file: !3, line: 405, column: 3)
!277 = !DILocation(line: 405, column: 3, scope: !276)
!278 = !DILocation(line: 405, column: 3, scope: !279)
!279 = distinct !DILexicalBlock(scope: !280, file: !3, line: 405, column: 3)
!280 = distinct !DILexicalBlock(scope: !275, file: !3, line: 405, column: 3)
!281 = !DILocation(line: 405, column: 3, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !3, line: 405, column: 3)
!283 = distinct !DILexicalBlock(scope: !284, file: !3, line: 405, column: 3)
!284 = distinct !DILexicalBlock(scope: !279, file: !3, line: 405, column: 3)
!285 = !DILocation(line: 406, column: 30, scope: !286)
!286 = distinct !DILexicalBlock(scope: !268, file: !3, line: 406, column: 7)
!287 = !DILocation(line: 406, column: 22, scope: !286)
!288 = !DILocation(line: 359, column: 43, scope: !69, inlinedAt: !289)
!289 = distinct !DILocation(line: 410, column: 3, scope: !268)
!290 = !DILocation(line: 359, column: 55, scope: !69, inlinedAt: !289)
!291 = !DILocation(line: 364, column: 3, scope: !292, inlinedAt: !289)
!292 = distinct !DILexicalBlock(scope: !69, file: !3, line: 364, column: 3)
!293 = !DILocation(line: 361, column: 16, scope: !69, inlinedAt: !289)
!294 = !DILocation(line: 370, column: 3, scope: !295, inlinedAt: !289)
!295 = distinct !DILexicalBlock(scope: !69, file: !3, line: 370, column: 3)
!296 = !DILocation(line: 362, column: 3, scope: !69, inlinedAt: !289)
!297 = !DILocation(line: 382, column: 3, scope: !69, inlinedAt: !289)
!298 = !DILocation(line: 383, column: 3, scope: !69, inlinedAt: !289)
!299 = !DILocation(line: 394, column: 1, scope: !69, inlinedAt: !289)
!300 = !DILocation(line: 411, column: 1, scope: !268)
!301 = distinct !DISubprogram(name: "memp_free", scope: !3, file: !3, line: 420, type: !302, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !304)
!302 = !DISubroutineType(types: !303)
!303 = !{null, !230, !35}
!304 = !{!305, !306}
!305 = !DILocalVariable(name: "type", arg: 1, scope: !301, file: !3, line: 420, type: !230)
!306 = !DILocalVariable(name: "mem", arg: 2, scope: !301, file: !3, line: 420, type: !35)
!307 = !DILocation(line: 420, column: 18, scope: !301)
!308 = !DILocation(line: 420, column: 30, scope: !301)
!309 = !DILocation(line: 426, column: 3, scope: !310)
!310 = distinct !DILexicalBlock(scope: !311, file: !3, line: 426, column: 3)
!311 = distinct !DILexicalBlock(scope: !301, file: !3, line: 426, column: 3)
!312 = !DILocation(line: 426, column: 3, scope: !311)
!313 = !DILocation(line: 426, column: 3, scope: !314)
!314 = distinct !DILexicalBlock(scope: !315, file: !3, line: 426, column: 3)
!315 = distinct !DILexicalBlock(scope: !310, file: !3, line: 426, column: 3)
!316 = !DILocation(line: 426, column: 3, scope: !317)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 426, column: 3)
!318 = distinct !DILexicalBlock(scope: !319, file: !3, line: 426, column: 3)
!319 = distinct !DILexicalBlock(scope: !314, file: !3, line: 426, column: 3)
!320 = !DILocation(line: 428, column: 11, scope: !321)
!321 = distinct !DILexicalBlock(scope: !301, file: !3, line: 428, column: 7)
!322 = !DILocation(line: 428, column: 7, scope: !301)
!323 = !DILocation(line: 359, column: 43, scope: !69, inlinedAt: !324)
!324 = distinct !DILocation(line: 440, column: 3, scope: !301)
!325 = !DILocation(line: 359, column: 55, scope: !69, inlinedAt: !324)
!326 = !DILocation(line: 364, column: 3, scope: !292, inlinedAt: !324)
!327 = !DILocation(line: 361, column: 16, scope: !69, inlinedAt: !324)
!328 = !DILocation(line: 370, column: 3, scope: !295, inlinedAt: !324)
!329 = !DILocation(line: 362, column: 3, scope: !69, inlinedAt: !324)
!330 = !DILocation(line: 382, column: 3, scope: !69, inlinedAt: !324)
!331 = !DILocation(line: 383, column: 3, scope: !69, inlinedAt: !324)
!332 = !DILocation(line: 394, column: 1, scope: !69, inlinedAt: !324)
!333 = !DILocation(line: 447, column: 1, scope: !301)
