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
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !166
  ret void, !dbg !167
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone nounwind
define dso_local i8* @memp_malloc_pool(%struct.memp_desc* readonly) local_unnamed_addr #0 !dbg !168 {
  %2 = icmp eq %struct.memp_desc* %0, null, !dbg !172
  br i1 %2, label %3, label %4, !dbg !175

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !176
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !179
  tail call void @ukplat_terminate(i32 3) #8, !dbg !179
  unreachable, !dbg !179

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.memp_desc, %struct.memp_desc* %0, i64 0, i32 0, !dbg !185
  %6 = load i16, i16* %5, align 2, !dbg !185, !tbaa !186
  %7 = zext i16 %6 to i64, !dbg !191
  %8 = tail call i8* @mem_malloc(i64 %7) #9, !dbg !192
  %9 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !194
  tail call void @ukplat_lcpu_restore_irqf(i64 %9) #9, !dbg !197
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !200
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !201
  ret i8* %8, !dbg !201
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8*, ...) unnamed_addr #3 !dbg !119 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !203
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !203
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !205
  call void @llvm.va_start(i8* nonnull %3), !dbg !205
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* %0, %struct.__va_list_tag* nonnull %4) #9, !dbg !206
  call void @llvm.va_end(i8* nonnull %3), !dbg !209
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !210
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !210
  ret void, !dbg !210
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: noredzone nounwind
define dso_local i8* @memp_malloc(i32) local_unnamed_addr #0 !dbg !211 {
  %2 = icmp ult i32 %0, 17, !dbg !219
  br i1 %2, label %4, label %3, !dbg !222

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !223
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !226
  tail call void @ukplat_terminate(i32 3) #8, !dbg !226
  unreachable, !dbg !226

; <label>:4:                                      ; preds = %1
  %5 = zext i32 %0 to i64, !dbg !230
  %6 = getelementptr inbounds [17 x %struct.memp_desc*], [17 x %struct.memp_desc*]* @memp_pools, i64 0, i64 %5, !dbg !230
  %7 = load %struct.memp_desc*, %struct.memp_desc** %6, align 8, !dbg !230, !tbaa !231
  %8 = getelementptr inbounds %struct.memp_desc, %struct.memp_desc* %7, i64 0, i32 0, !dbg !235
  %9 = load i16, i16* %8, align 2, !dbg !235, !tbaa !186
  %10 = zext i16 %9 to i64, !dbg !236
  %11 = tail call i8* @mem_malloc(i64 %10) #9, !dbg !237
  %12 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !239
  tail call void @ukplat_lcpu_restore_irqf(i64 %12) #9, !dbg !241
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !242
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  ret i8* %11, !dbg !244
}

; Function Attrs: noredzone nounwind
define dso_local void @memp_free_pool(%struct.memp_desc* readnone, i8*) local_unnamed_addr #0 !dbg !245 {
  %3 = icmp eq %struct.memp_desc* %0, null, !dbg !251
  br i1 %3, label %4, label %5, !dbg !254

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)) #7, !dbg !255
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !258
  tail call void @ukplat_terminate(i32 3) #8, !dbg !258
  unreachable, !dbg !258

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %1, null, !dbg !262
  br i1 %6, label %9, label %7, !dbg !264

; <label>:7:                                      ; preds = %5
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !269
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #9, !dbg !272
  tail call void @mem_free(i8* nonnull %1) #9, !dbg !273
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !274
  br label %9, !dbg !275

; <label>:9:                                      ; preds = %5, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  ret void, !dbg !275
}

; Function Attrs: noredzone nounwind
define dso_local void @memp_free(i32, i8*) local_unnamed_addr #0 !dbg !276 {
  %3 = icmp ult i32 %0, 17, !dbg !284
  br i1 %3, label %5, label %4, !dbg !287

; <label>:4:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !288
  tail call void (i8*, ...) @uk_pr_crit(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !291
  tail call void @ukplat_terminate(i32 3) #8, !dbg !291
  unreachable, !dbg !291

; <label>:5:                                      ; preds = %2
  %6 = icmp eq i8* %1, null, !dbg !295
  br i1 %6, label %9, label %7, !dbg !297

; <label>:7:                                      ; preds = %5
  %8 = tail call i64 @ukplat_lcpu_save_irqf() #9, !dbg !302
  tail call void @ukplat_lcpu_restore_irqf(i64 %8) #9, !dbg !304
  tail call void @mem_free(i8* nonnull %1) #9, !dbg !305
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !306
  br label %9, !dbg !307

; <label>:9:                                      ; preds = %5, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !307
  ret void, !dbg !307
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
!166 = !DILocation(line: 0, scope: !160)
!167 = !DILocation(line: 241, column: 1, scope: !160)
!168 = distinct !DISubprogram(name: "memp_malloc_pool", scope: !3, file: !3, line: 311, type: !39, isLocal: false, isDefinition: true, scopeLine: 315, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !169)
!169 = !{!170}
!170 = !DILocalVariable(name: "desc", arg: 1, scope: !168, file: !3, line: 311, type: !41)
!171 = !DILocation(line: 311, column: 42, scope: !168)
!172 = !DILocation(line: 316, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 316, column: 3)
!174 = distinct !DILexicalBlock(scope: !168, file: !3, line: 316, column: 3)
!175 = !DILocation(line: 316, column: 3, scope: !174)
!176 = !DILocation(line: 316, column: 3, scope: !177)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 316, column: 3)
!178 = distinct !DILexicalBlock(scope: !173, file: !3, line: 316, column: 3)
!179 = !DILocation(line: 316, column: 3, scope: !180)
!180 = distinct !DILexicalBlock(scope: !181, file: !3, line: 316, column: 3)
!181 = distinct !DILexicalBlock(scope: !182, file: !3, line: 316, column: 3)
!182 = distinct !DILexicalBlock(scope: !177, file: !3, line: 316, column: 3)
!183 = !DILocation(line: 245, column: 45, scope: !38, inlinedAt: !184)
!184 = distinct !DILocation(line: 322, column: 10, scope: !168)
!185 = !DILocation(line: 254, column: 48, scope: !38, inlinedAt: !184)
!186 = !{!187, !188, i64 0}
!187 = !{!"memp_desc", !188, i64 0}
!188 = !{!"short", !189, i64 0}
!189 = !{!"omnipotent char", !190, i64 0}
!190 = !{!"Simple C/C++ TBAA"}
!191 = !DILocation(line: 254, column: 36, scope: !38, inlinedAt: !184)
!192 = !DILocation(line: 254, column: 25, scope: !38, inlinedAt: !184)
!193 = !DILocation(line: 250, column: 16, scope: !38, inlinedAt: !184)
!194 = !DILocation(line: 255, column: 3, scope: !195, inlinedAt: !184)
!195 = distinct !DILexicalBlock(scope: !38, file: !3, line: 255, column: 3)
!196 = !DILocation(line: 251, column: 3, scope: !38, inlinedAt: !184)
!197 = !DILocation(line: 0, scope: !198, inlinedAt: !184)
!198 = distinct !DILexicalBlock(scope: !199, file: !3, line: 262, column: 21)
!199 = distinct !DILexicalBlock(scope: !38, file: !3, line: 262, column: 7)
!200 = !DILocation(line: 300, column: 1, scope: !38, inlinedAt: !184)
!201 = !DILocation(line: 326, column: 1, scope: !168)
!202 = !DILocation(line: 194, column: 43, scope: !119)
!203 = !DILocation(line: 196, column: 2, scope: !119)
!204 = !DILocation(line: 196, column: 10, scope: !119)
!205 = !DILocation(line: 197, column: 2, scope: !119)
!206 = !DILocation(line: 198, column: 2, scope: !207)
!207 = distinct !DILexicalBlock(scope: !208, file: !120, line: 198, column: 2)
!208 = distinct !DILexicalBlock(scope: !119, file: !120, line: 198, column: 2)
!209 = !DILocation(line: 199, column: 2, scope: !119)
!210 = !DILocation(line: 200, column: 1, scope: !119)
!211 = distinct !DISubprogram(name: "memp_malloc", scope: !3, file: !3, line: 337, type: !212, isLocal: false, isDefinition: true, scopeLine: 341, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !215)
!212 = !DISubroutineType(types: !213)
!213 = !{!35, !214}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "memp_t", file: !14, line: 56, baseType: !13)
!215 = !{!216, !217}
!216 = !DILocalVariable(name: "type", arg: 1, scope: !211, file: !3, line: 337, type: !214)
!217 = !DILocalVariable(name: "memp", scope: !211, file: !3, line: 342, type: !35)
!218 = !DILocation(line: 337, column: 20, scope: !211)
!219 = !DILocation(line: 343, column: 3, scope: !220)
!220 = distinct !DILexicalBlock(scope: !221, file: !3, line: 343, column: 3)
!221 = distinct !DILexicalBlock(scope: !211, file: !3, line: 343, column: 3)
!222 = !DILocation(line: 343, column: 3, scope: !221)
!223 = !DILocation(line: 343, column: 3, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !3, line: 343, column: 3)
!225 = distinct !DILexicalBlock(scope: !220, file: !3, line: 343, column: 3)
!226 = !DILocation(line: 343, column: 3, scope: !227)
!227 = distinct !DILexicalBlock(scope: !228, file: !3, line: 343, column: 3)
!228 = distinct !DILexicalBlock(scope: !229, file: !3, line: 343, column: 3)
!229 = distinct !DILexicalBlock(scope: !224, file: !3, line: 343, column: 3)
!230 = !DILocation(line: 350, column: 30, scope: !211)
!231 = !{!232, !232, i64 0}
!232 = !{!"any pointer", !189, i64 0}
!233 = !DILocation(line: 245, column: 45, scope: !38, inlinedAt: !234)
!234 = distinct !DILocation(line: 350, column: 10, scope: !211)
!235 = !DILocation(line: 254, column: 48, scope: !38, inlinedAt: !234)
!236 = !DILocation(line: 254, column: 36, scope: !38, inlinedAt: !234)
!237 = !DILocation(line: 254, column: 25, scope: !38, inlinedAt: !234)
!238 = !DILocation(line: 250, column: 16, scope: !38, inlinedAt: !234)
!239 = !DILocation(line: 255, column: 3, scope: !195, inlinedAt: !234)
!240 = !DILocation(line: 251, column: 3, scope: !38, inlinedAt: !234)
!241 = !DILocation(line: 0, scope: !198, inlinedAt: !234)
!242 = !DILocation(line: 300, column: 1, scope: !38, inlinedAt: !234)
!243 = !DILocation(line: 342, column: 9, scope: !211)
!244 = !DILocation(line: 356, column: 1, scope: !211)
!245 = distinct !DISubprogram(name: "memp_free_pool", scope: !3, file: !3, line: 403, type: !70, isLocal: false, isDefinition: true, scopeLine: 404, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !246)
!246 = !{!247, !248}
!247 = !DILocalVariable(name: "desc", arg: 1, scope: !245, file: !3, line: 403, type: !41)
!248 = !DILocalVariable(name: "mem", arg: 2, scope: !245, file: !3, line: 403, type: !35)
!249 = !DILocation(line: 403, column: 40, scope: !245)
!250 = !DILocation(line: 403, column: 52, scope: !245)
!251 = !DILocation(line: 405, column: 3, scope: !252)
!252 = distinct !DILexicalBlock(scope: !253, file: !3, line: 405, column: 3)
!253 = distinct !DILexicalBlock(scope: !245, file: !3, line: 405, column: 3)
!254 = !DILocation(line: 405, column: 3, scope: !253)
!255 = !DILocation(line: 405, column: 3, scope: !256)
!256 = distinct !DILexicalBlock(scope: !257, file: !3, line: 405, column: 3)
!257 = distinct !DILexicalBlock(scope: !252, file: !3, line: 405, column: 3)
!258 = !DILocation(line: 405, column: 3, scope: !259)
!259 = distinct !DILexicalBlock(scope: !260, file: !3, line: 405, column: 3)
!260 = distinct !DILexicalBlock(scope: !261, file: !3, line: 405, column: 3)
!261 = distinct !DILexicalBlock(scope: !256, file: !3, line: 405, column: 3)
!262 = !DILocation(line: 406, column: 30, scope: !263)
!263 = distinct !DILexicalBlock(scope: !245, file: !3, line: 406, column: 7)
!264 = !DILocation(line: 406, column: 22, scope: !263)
!265 = !DILocation(line: 359, column: 43, scope: !69, inlinedAt: !266)
!266 = distinct !DILocation(line: 410, column: 3, scope: !245)
!267 = !DILocation(line: 359, column: 55, scope: !69, inlinedAt: !266)
!268 = !DILocation(line: 361, column: 16, scope: !69, inlinedAt: !266)
!269 = !DILocation(line: 370, column: 3, scope: !270, inlinedAt: !266)
!270 = distinct !DILexicalBlock(scope: !69, file: !3, line: 370, column: 3)
!271 = !DILocation(line: 362, column: 3, scope: !69, inlinedAt: !266)
!272 = !DILocation(line: 382, column: 3, scope: !69, inlinedAt: !266)
!273 = !DILocation(line: 383, column: 3, scope: !69, inlinedAt: !266)
!274 = !DILocation(line: 394, column: 1, scope: !69, inlinedAt: !266)
!275 = !DILocation(line: 411, column: 1, scope: !245)
!276 = distinct !DISubprogram(name: "memp_free", scope: !3, file: !3, line: 420, type: !277, isLocal: false, isDefinition: true, scopeLine: 421, flags: DIFlagPrototyped, isOptimized: true, unit: !2, retainedNodes: !279)
!277 = !DISubroutineType(types: !278)
!278 = !{null, !214, !35}
!279 = !{!280, !281}
!280 = !DILocalVariable(name: "type", arg: 1, scope: !276, file: !3, line: 420, type: !214)
!281 = !DILocalVariable(name: "mem", arg: 2, scope: !276, file: !3, line: 420, type: !35)
!282 = !DILocation(line: 420, column: 18, scope: !276)
!283 = !DILocation(line: 420, column: 30, scope: !276)
!284 = !DILocation(line: 426, column: 3, scope: !285)
!285 = distinct !DILexicalBlock(scope: !286, file: !3, line: 426, column: 3)
!286 = distinct !DILexicalBlock(scope: !276, file: !3, line: 426, column: 3)
!287 = !DILocation(line: 426, column: 3, scope: !286)
!288 = !DILocation(line: 426, column: 3, scope: !289)
!289 = distinct !DILexicalBlock(scope: !290, file: !3, line: 426, column: 3)
!290 = distinct !DILexicalBlock(scope: !285, file: !3, line: 426, column: 3)
!291 = !DILocation(line: 426, column: 3, scope: !292)
!292 = distinct !DILexicalBlock(scope: !293, file: !3, line: 426, column: 3)
!293 = distinct !DILexicalBlock(scope: !294, file: !3, line: 426, column: 3)
!294 = distinct !DILexicalBlock(scope: !289, file: !3, line: 426, column: 3)
!295 = !DILocation(line: 428, column: 11, scope: !296)
!296 = distinct !DILexicalBlock(scope: !276, file: !3, line: 428, column: 7)
!297 = !DILocation(line: 428, column: 7, scope: !276)
!298 = !DILocation(line: 359, column: 43, scope: !69, inlinedAt: !299)
!299 = distinct !DILocation(line: 440, column: 3, scope: !276)
!300 = !DILocation(line: 359, column: 55, scope: !69, inlinedAt: !299)
!301 = !DILocation(line: 361, column: 16, scope: !69, inlinedAt: !299)
!302 = !DILocation(line: 370, column: 3, scope: !270, inlinedAt: !299)
!303 = !DILocation(line: 362, column: 3, scope: !69, inlinedAt: !299)
!304 = !DILocation(line: 382, column: 3, scope: !69, inlinedAt: !299)
!305 = !DILocation(line: 383, column: 3, scope: !69, inlinedAt: !299)
!306 = !DILocation(line: 394, column: 1, scope: !69, inlinedAt: !299)
!307 = !DILocation(line: 447, column: 1, scope: !276)
