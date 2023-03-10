; ModuleID = '/root/.unikraft/libs/lwip/netbuf.c'
source_filename = "/root/.unikraft/libs/lwip/netbuf.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_netbuf = type { %struct.uk_netbuf*, %struct.uk_netbuf*, i8*, i16, %struct.__atomic, i8*, i8*, i64, void (%struct.uk_netbuf*)*, %struct.uk_alloc*, i8* }
%struct.__atomic = type { i32 }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.pbuf = type { %struct.pbuf*, i8*, i16, i16, i8, i8, i8, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.2 = internal global [9 x i8] c"netbuf.c\00", section ".data_shared", align 1, !dbg !168
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str.3 = private unnamed_addr constant [2 x i8] c"p\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"p->flags & 0x02U\00", align 1
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_netbuf* @lwip_alloc_netbuf(%struct.uk_alloc*, i64, i64, i16 zeroext) local_unnamed_addr #0 !dbg !195 {
  %5 = tail call %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc* %0, i64 %1, i64 %2, i16 zeroext %3, i64 40, void (%struct.uk_netbuf*)* null) #7, !dbg !209
  %6 = icmp eq %struct.uk_netbuf* %5, null, !dbg !211
  br i1 %6, label %28, label %7, !dbg !213, !prof !214

; <label>:7:                                      ; preds = %4
  %8 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %5, i64 0, i32 5, !dbg !222
  %9 = load i8*, i8** %8, align 8, !dbg !222, !tbaa !223
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !232
  %10 = tail call i8* @memset(i8* %9, i32 0, i64 40) #7, !dbg !234
  %11 = getelementptr inbounds i8, i8* %9, i64 20, !dbg !235
  store i8 1, i8* %11, align 4, !dbg !236, !tbaa !237
  %12 = getelementptr inbounds i8, i8* %9, i64 21, !dbg !241
  store i8 2, i8* %12, align 1, !dbg !242, !tbaa !243
  %13 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %5, i64 0, i32 2, !dbg !244
  %14 = bitcast i8** %13 to i64*, !dbg !244
  %15 = load i64, i64* %14, align 8, !dbg !244, !tbaa !245
  %16 = getelementptr inbounds i8, i8* %9, i64 8, !dbg !246
  %17 = bitcast i8* %16 to i64*, !dbg !247
  store i64 %15, i64* %17, align 8, !dbg !247, !tbaa !248
  %18 = getelementptr inbounds i8, i8* %9, i64 22, !dbg !249
  store i8 1, i8* %18, align 2, !dbg !250, !tbaa !251
  %19 = getelementptr inbounds i8, i8* %9, i64 24, !dbg !252
  %20 = bitcast i8* %19 to void (%struct.pbuf*)**, !dbg !252
  store void (%struct.pbuf*)* @_netbuf_free, void (%struct.pbuf*)** %20, align 8, !dbg !253, !tbaa !254
  %21 = getelementptr inbounds i8, i8* %9, i64 32, !dbg !255
  %22 = bitcast i8* %21 to %struct.uk_netbuf**, !dbg !255
  store %struct.uk_netbuf* %5, %struct.uk_netbuf** %22, align 8, !dbg !256, !tbaa !257
  %23 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %5, i64 0, i32 7, !dbg !258
  %24 = load i64, i64* %23, align 8, !dbg !258, !tbaa !259
  %25 = trunc i64 %24 to i16, !dbg !260
  %26 = sub i16 %25, %3, !dbg !260
  %27 = getelementptr inbounds %struct.uk_netbuf, %struct.uk_netbuf* %5, i64 0, i32 3, !dbg !261
  store i16 %26, i16* %27, align 8, !dbg !262, !tbaa !263
  br label %28, !dbg !264

; <label>:28:                                     ; preds = %4, %7
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !265
  ret %struct.uk_netbuf* %5, !dbg !265
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: noredzone
declare dso_local %struct.uk_netbuf* @uk_netbuf_alloc_buf(%struct.uk_alloc*, i64, i64, i16 zeroext, i64, void (%struct.uk_netbuf*)*) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local i8* @memset(i8*, i32, i64) local_unnamed_addr #3

; Function Attrs: noredzone nounwind
define internal void @_netbuf_free(%struct.pbuf* readonly) #0 !dbg !266 {
  %2 = icmp eq %struct.pbuf* %0, null, !dbg !298
  br i1 %2, label %3, label %4, !dbg !301, !prof !214

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !302
  tail call void @ukplat_terminate(i32 3) #8, !dbg !302
  unreachable, !dbg !302

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 0, i32 5, !dbg !304
  %6 = load i8, i8* %5, align 1, !dbg !304, !tbaa !307
  %7 = and i8 %6, 2, !dbg !304
  %8 = icmp eq i8 %7, 0, !dbg !304
  br i1 %8, label %9, label %10, !dbg !308, !prof !214

; <label>:9:                                      ; preds = %4
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0)) #7, !dbg !309
  tail call void @ukplat_terminate(i32 3) #8, !dbg !309
  unreachable, !dbg !309

; <label>:10:                                     ; preds = %4
  %11 = getelementptr inbounds %struct.pbuf, %struct.pbuf* %0, i64 1, i32 1, !dbg !313
  %12 = bitcast i8** %11 to %struct.uk_netbuf**, !dbg !313
  %13 = load %struct.uk_netbuf*, %struct.uk_netbuf** %12, align 8, !dbg !313, !tbaa !257
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !314
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !316, !srcloc !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !326
  %15 = icmp ult i64 %14, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !327
  br i1 %15, label %20, label %16, !dbg !327

; <label>:16:                                     ; preds = %10
  %17 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !328, !srcloc !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !331
  %18 = icmp ugt i64 %17, ptrtoint ([0 x i8]* @_end to i64), !dbg !327
  br i1 %18, label %20, label %19, !dbg !332

; <label>:19:                                     ; preds = %16
  tail call void @uk_netbuf_free_single(%struct.uk_netbuf* %13) #7, !dbg !333
  br label %28, !dbg !333

; <label>:20:                                     ; preds = %16, %10
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !335, !srcloc !324
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %22 = and i64 %21, -65536, !dbg !347
  %23 = or i64 %22, 4097, !dbg !347
  %24 = add nsw i64 %23, -1, !dbg !347
  %25 = inttoptr i64 %24 to i32*, !dbg !348
  %26 = load i32, i32* %25, align 4096, !dbg !349, !tbaa !350
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !351
  %27 = ptrtoint %struct.uk_netbuf* %13 to i64, !dbg !352
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_netbuf_free_single\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %27, i32 %26, void (%struct.uk_netbuf*)* nonnull @uk_netbuf_free_single) #6, !dbg !352, !srcloc !353
  br label %28

; <label>:28:                                     ; preds = %20, %19
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !354
  ret void, !dbg !354
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #4 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !355
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !355
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !357
  call void @llvm.va_start(i8* nonnull %3), !dbg !357
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @uk_pr_crit.__str.2, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #7, !dbg !358
  call void @llvm.va_end(i8* nonnull %3), !dbg !361
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !362
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !362
  ret void, !dbg !362
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: noredzone
declare dso_local void @uk_netbuf_free_single(%struct.uk_netbuf*) #3

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

!llvm.module.flags = !{!191, !192, !193}
!llvm.ident = !{!194}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !188, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !173)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !27, globals: !167)
!10 = !DIFile(filename: "/root/.unikraft/libs/lwip/netbuf.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !20}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 145, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/pbuf.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19}
!16 = !DIEnumerator(name: "PBUF_RAM", value: 640, isUnsigned: true)
!17 = !DIEnumerator(name: "PBUF_ROM", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "PBUF_REF", value: 65, isUnsigned: true)
!19 = !DIEnumerator(name: "PBUF_POOL", value: 386, isUnsigned: true)
!20 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !21, line: 68, baseType: !14, size: 32, elements: !22)
!21 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!22 = !{!23, !24, !25, !26}
!23 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!24 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!25 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!26 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!27 = !{!28, !87, !156, !158, !159, !160, !163, !166}
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_netbuf_pbuf", file: !30, line: 50, size: 320, elements: !31)
!30 = !DIFile(filename: "/root/.unikraft/libs/lwip/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!31 = !{!32, !64}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf_custom", scope: !29, file: !30, line: 51, baseType: !33, size: 256)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf_custom", file: !13, line: 242, size: 256, elements: !34)
!34 = !{!35, !59}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "pbuf", scope: !33, file: !13, line: 244, baseType: !36, size: 192)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pbuf", file: !13, line: 186, size: 192, elements: !37)
!37 = !{!38, !40, !42, !50, !51, !56, !57, !58}
!38 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !13, line: 188, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "payload", scope: !36, file: !13, line: 191, baseType: !41, size: 64, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "tot_len", scope: !36, file: !13, line: 200, baseType: !43, size: 16, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16_t", file: !44, line: 127, baseType: !45)
!44 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !46, line: 36, baseType: !47)
!46 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !48, line: 57, baseType: !49)
!48 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!49 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !36, file: !13, line: 203, baseType: !43, size: 16, offset: 144)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "type_internal", scope: !36, file: !13, line: 208, baseType: !52, size: 8, offset: 160)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8_t", file: !44, line: 125, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !46, line: 24, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !48, line: 43, baseType: !55)
!55 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !36, file: !13, line: 211, baseType: !52, size: 8, offset: 168)
!57 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !36, file: !13, line: 218, baseType: !52, size: 8, offset: 176)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "if_idx", scope: !36, file: !13, line: 221, baseType: !52, size: 8, offset: 184)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "custom_free_function", scope: !33, file: !13, line: 246, baseType: !60, size: 64, offset: 192)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "pbuf_free_custom_fn", file: !13, line: 239, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !39}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "netbuf", scope: !29, file: !30, line: 52, baseType: !65, size: 64, offset: 256)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_netbuf", file: !67, line: 104, size: 640, elements: !68)
!67 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uknetdev/include/uk/netbuf.h", directory: "/root/.unikraft/apps/redis/build")
!68 = !{!69, !70, !71, !72, !73, !80, !81, !82, !88, !93, !155}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !66, file: !67, line: 105, baseType: !65, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !66, file: !67, line: 106, baseType: !65, size: 64, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !66, file: !67, line: 108, baseType: !41, size: 64, offset: 128)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !66, file: !67, line: 109, baseType: !45, size: 16, offset: 192)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !66, file: !67, line: 110, baseType: !74, size: 32, offset: 224)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic", file: !75, line: 253, baseType: !76)
!75 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !75, line: 251, size: 32, elements: !77)
!77 = !{!78}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !76, file: !75, line: 252, baseType: !79, size: 32)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !75, line: 88, baseType: !14)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !66, file: !67, line: 112, baseType: !41, size: 64, offset: 256)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !66, file: !67, line: 114, baseType: !41, size: 64, offset: 320)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !66, file: !67, line: 115, baseType: !83, size: 64, offset: 384)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !84, line: 40, baseType: !85)
!84 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/strings.h", directory: "/root/.unikraft/apps/redis/build")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "__size_t", file: !86, line: 129, baseType: !87)
!86 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "dtor", scope: !66, file: !67, line: 117, baseType: !89, size: 64, offset: 448)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_netbuf_dtor_t", file: !67, line: 51, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !65}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "_a", scope: !66, file: !67, line: 118, baseType: !94, size: 64, offset: 512)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !96, line: 77, size: 832, elements: !97)
!96 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!97 = !{!98, !105, !110, !115, !122, !124, !129, !130, !131, !136, !141, !146, !147, !148}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !95, file: !96, line: 79, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !96, line: 54, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DISubroutineType(types: !102)
!102 = !{!41, !94, !103}
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 58, baseType: !87)
!104 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!105 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !95, file: !96, line: 80, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !96, line: 56, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!41, !94, !103, !103}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !95, file: !96, line: 81, baseType: !111, size: 64, offset: 128)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !96, line: 62, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!41, !94, !41, !103}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !95, file: !96, line: 82, baseType: !116, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !96, line: 58, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!120, !94, !121, !103, !103}
!120 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !95, file: !96, line: 83, baseType: !123, size: 64, offset: 256)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !96, line: 60, baseType: !107)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !95, file: !96, line: 84, baseType: !125, size: 64, offset: 320)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !96, line: 64, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{null, !94, !41}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !95, file: !96, line: 87, baseType: !125, size: 64, offset: 384)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !95, file: !96, line: 88, baseType: !99, size: 64, offset: 448)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !95, file: !96, line: 92, baseType: !132, size: 64, offset: 512)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !96, line: 66, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!41, !94, !87}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !95, file: !96, line: 93, baseType: !137, size: 64, offset: 576)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !96, line: 68, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DISubroutineType(types: !140)
!140 = !{null, !94, !41, !87}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !95, file: !96, line: 99, baseType: !142, size: 64, offset: 640)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !96, line: 70, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!120, !94, !41, !103}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !95, file: !96, line: 100, baseType: !103, size: 64, offset: 704)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !95, file: !96, line: 103, baseType: !94, size: 64, offset: 768)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !95, file: !96, line: 104, baseType: !149, offset: 832)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !150, elements: !153)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !46, line: 20, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !48, line: 41, baseType: !152)
!152 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!153 = !{!154}
!154 = !DISubrange(count: -1)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "_b", scope: !66, file: !67, line: 119, baseType: !41, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !46, line: 60, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !48, line: 105, baseType: !87)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !48, line: 232, baseType: !87)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !8)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!167 = !{!0, !168}
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 72, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 9)
!173 = !{!174, !175}
!174 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!175 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !177, line: 32, baseType: !178)
!177 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !179)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !180, size: 192, elements: !186)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !181)
!181 = !{!182, !183, !184, !185}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !180, file: !10, line: 196, baseType: !14, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !180, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !180, file: !10, line: 196, baseType: !41, size: 64, offset: 64)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !180, file: !10, line: 196, baseType: !41, size: 64, offset: 128)
!186 = !{!187}
!187 = !DISubrange(count: 1)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 8)
!191 = !{i32 2, !"Dwarf Version", i32 4}
!192 = !{i32 2, !"Debug Info Version", i32 3}
!193 = !{i32 1, !"wchar_size", i32 4}
!194 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!195 = distinct !DISubprogram(name: "lwip_alloc_netbuf", scope: !10, file: !10, line: 53, type: !196, isLocal: false, isDefinition: true, scopeLine: 55, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !198)
!196 = !DISubroutineType(types: !197)
!197 = !{!65, !94, !83, !83, !45}
!198 = !{!199, !200, !201, !202, !203, !204}
!199 = !DILocalVariable(name: "a", arg: 1, scope: !195, file: !10, line: 53, type: !94)
!200 = !DILocalVariable(name: "alloc_size", arg: 2, scope: !195, file: !10, line: 53, type: !83)
!201 = !DILocalVariable(name: "alloc_align", arg: 3, scope: !195, file: !10, line: 54, type: !83)
!202 = !DILocalVariable(name: "headroom", arg: 4, scope: !195, file: !10, line: 54, type: !45)
!203 = !DILocalVariable(name: "b", scope: !195, file: !10, line: 56, type: !65)
!204 = !DILocalVariable(name: "np", scope: !195, file: !10, line: 57, type: !28)
!205 = !DILocation(line: 53, column: 54, scope: !195)
!206 = !DILocation(line: 53, column: 64, scope: !195)
!207 = !DILocation(line: 54, column: 16, scope: !195)
!208 = !DILocation(line: 54, column: 38, scope: !195)
!209 = !DILocation(line: 59, column: 6, scope: !195)
!210 = !DILocation(line: 56, column: 20, scope: !195)
!211 = !DILocation(line: 61, column: 6, scope: !212)
!212 = distinct !DILexicalBlock(scope: !195, file: !10, line: 61, column: 6)
!213 = !DILocation(line: 61, column: 6, scope: !195)
!214 = !{!"branch_weights", i32 1, i32 2000}
!215 = !DILocalVariable(name: "m", arg: 1, scope: !216, file: !67, line: 337, type: !65)
!216 = distinct !DISubprogram(name: "uk_netbuf_get_priv", scope: !67, file: !67, line: 337, type: !217, isLocal: true, isDefinition: true, scopeLine: 338, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !219)
!217 = !DISubroutineType(types: !218)
!218 = !{!41, !65}
!219 = !{!215}
!220 = !DILocation(line: 337, column: 58, scope: !216, inlinedAt: !221)
!221 = distinct !DILocation(line: 69, column: 31, scope: !195)
!222 = !DILocation(line: 341, column: 14, scope: !216, inlinedAt: !221)
!223 = !{!224, !225, i64 32}
!224 = !{!"uk_netbuf", !225, i64 0, !225, i64 8, !225, i64 16, !228, i64 24, !229, i64 28, !225, i64 32, !225, i64 40, !231, i64 48, !225, i64 56, !225, i64 64, !225, i64 72}
!225 = !{!"any pointer", !226, i64 0}
!226 = !{!"omnipotent char", !227, i64 0}
!227 = !{!"Simple C/C++ TBAA"}
!228 = !{!"short", !226, i64 0}
!229 = !{!"", !230, i64 0}
!230 = !{!"int", !226, i64 0}
!231 = !{!"long", !226, i64 0}
!232 = !DILocation(line: 341, column: 2, scope: !216, inlinedAt: !221)
!233 = !DILocation(line: 57, column: 23, scope: !195)
!234 = !DILocation(line: 70, column: 2, scope: !195)
!235 = !DILocation(line: 71, column: 23, scope: !195)
!236 = !DILocation(line: 71, column: 39, scope: !195)
!237 = !{!238, !226, i64 20}
!238 = !{!"_netbuf_pbuf", !239, i64 0, !225, i64 32}
!239 = !{!"pbuf_custom", !240, i64 0, !225, i64 24}
!240 = !{!"pbuf", !225, i64 0, !225, i64 8, !228, i64 16, !228, i64 18, !226, i64 20, !226, i64 21, !226, i64 22, !226, i64 23}
!241 = !DILocation(line: 72, column: 23, scope: !195)
!242 = !DILocation(line: 72, column: 39, scope: !195)
!243 = !{!238, !226, i64 21}
!244 = !DILocation(line: 73, column: 44, scope: !195)
!245 = !{!224, !225, i64 16}
!246 = !DILocation(line: 73, column: 23, scope: !195)
!247 = !DILocation(line: 73, column: 39, scope: !195)
!248 = !{!238, !225, i64 8}
!249 = !DILocation(line: 74, column: 23, scope: !195)
!250 = !DILocation(line: 74, column: 39, scope: !195)
!251 = !{!238, !226, i64 22}
!252 = !DILocation(line: 75, column: 18, scope: !195)
!253 = !DILocation(line: 75, column: 39, scope: !195)
!254 = !{!238, !225, i64 24}
!255 = !DILocation(line: 76, column: 6, scope: !195)
!256 = !DILocation(line: 76, column: 13, scope: !195)
!257 = !{!238, !225, i64 32}
!258 = !DILocation(line: 82, column: 14, scope: !195)
!259 = !{!224, !231, i64 48}
!260 = !DILocation(line: 82, column: 11, scope: !195)
!261 = !DILocation(line: 82, column: 5, scope: !195)
!262 = !DILocation(line: 82, column: 9, scope: !195)
!263 = !{!224, !228, i64 24}
!264 = !DILocation(line: 87, column: 2, scope: !195)
!265 = !DILocation(line: 91, column: 1, scope: !195)
!266 = distinct !DISubprogram(name: "_netbuf_free", scope: !10, file: !10, line: 45, type: !62, isLocal: true, isDefinition: true, scopeLine: 46, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !267)
!267 = !{!268, !269, !270}
!268 = !DILocalVariable(name: "p", arg: 1, scope: !266, file: !10, line: 45, type: !39)
!269 = !DILocalVariable(name: "nb", scope: !266, file: !10, line: 47, type: !65)
!270 = !DILocalVariable(name: "tid", scope: !271, file: !10, line: 50, type: !276)
!271 = distinct !DILexicalBlock(scope: !272, file: !10, line: 50, column: 2)
!272 = distinct !DILexicalBlock(scope: !273, file: !10, line: 50, column: 2)
!273 = distinct !DILexicalBlock(scope: !274, file: !10, line: 50, column: 2)
!274 = distinct !DILexicalBlock(scope: !275, file: !10, line: 50, column: 2)
!275 = distinct !DILexicalBlock(scope: !266, file: !10, line: 50, column: 2)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !46, line: 48, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !48, line: 79, baseType: !14)
!278 = !DILocation(line: 45, column: 39, scope: !266)
!279 = !DILocalVariable(name: "p", arg: 1, scope: !280, file: !30, line: 90, type: !39)
!280 = distinct !DISubprogram(name: "lwip_pbuf_to_netbuf", scope: !30, file: !30, line: 90, type: !281, isLocal: true, isDefinition: true, scopeLine: 91, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !283)
!281 = !DISubroutineType(types: !282)
!282 = !{!65, !39}
!283 = !{!279, !284, !285, !286, !291}
!284 = !DILocalVariable(name: "pc", scope: !280, file: !30, line: 92, type: !158)
!285 = !DILocalVariable(name: "np", scope: !280, file: !30, line: 93, type: !28)
!286 = !DILocalVariable(name: "__x", scope: !287, file: !30, line: 98, type: !288)
!287 = distinct !DILexicalBlock(scope: !280, file: !30, line: 98, column: 30)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !36)
!291 = !DILocalVariable(name: "__x", scope: !292, file: !30, line: 100, type: !293)
!292 = distinct !DILexicalBlock(scope: !280, file: !30, line: 100, column: 32)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !33)
!296 = !DILocation(line: 90, column: 66, scope: !280, inlinedAt: !297)
!297 = distinct !DILocation(line: 49, column: 7, scope: !266)
!298 = !DILocation(line: 95, column: 2, scope: !299, inlinedAt: !297)
!299 = distinct !DILexicalBlock(scope: !300, file: !30, line: 95, column: 2)
!300 = distinct !DILexicalBlock(scope: !280, file: !30, line: 95, column: 2)
!301 = !DILocation(line: 95, column: 2, scope: !300, inlinedAt: !297)
!302 = !DILocation(line: 95, column: 2, scope: !303, inlinedAt: !297)
!303 = distinct !DILexicalBlock(scope: !299, file: !30, line: 95, column: 2)
!304 = !DILocation(line: 96, column: 2, scope: !305, inlinedAt: !297)
!305 = distinct !DILexicalBlock(scope: !306, file: !30, line: 96, column: 2)
!306 = distinct !DILexicalBlock(scope: !280, file: !30, line: 96, column: 2)
!307 = !{!240, !226, i64 21}
!308 = !DILocation(line: 96, column: 2, scope: !306, inlinedAt: !297)
!309 = !DILocation(line: 96, column: 2, scope: !310, inlinedAt: !297)
!310 = distinct !DILexicalBlock(scope: !305, file: !30, line: 96, column: 2)
!311 = !DILocation(line: 93, column: 23, scope: !280, inlinedAt: !297)
!312 = !DILocation(line: 92, column: 22, scope: !280, inlinedAt: !297)
!313 = !DILocation(line: 103, column: 13, scope: !280, inlinedAt: !297)
!314 = !DILocation(line: 103, column: 2, scope: !280, inlinedAt: !297)
!315 = !DILocation(line: 47, column: 20, scope: !266)
!316 = !DILocation(line: 120, column: 2, scope: !317, inlinedAt: !323)
!317 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !318, file: !318, line: 116, type: !319, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !321)
!318 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!319 = !DISubroutineType(types: !320)
!320 = !{!87}
!321 = !{!322}
!322 = !DILocalVariable(name: "sp", scope: !317, file: !318, line: 118, type: !87)
!323 = distinct !DILocation(line: 50, column: 2, scope: !274)
!324 = !{i32 422527}
!325 = !DILocation(line: 118, column: 16, scope: !317, inlinedAt: !323)
!326 = !DILocation(line: 121, column: 2, scope: !317, inlinedAt: !323)
!327 = !DILocation(line: 50, column: 2, scope: !274)
!328 = !DILocation(line: 120, column: 2, scope: !317, inlinedAt: !329)
!329 = distinct !DILocation(line: 50, column: 2, scope: !274)
!330 = !DILocation(line: 118, column: 16, scope: !317, inlinedAt: !329)
!331 = !DILocation(line: 121, column: 2, scope: !317, inlinedAt: !329)
!332 = !DILocation(line: 50, column: 2, scope: !275)
!333 = !DILocation(line: 50, column: 2, scope: !334)
!334 = distinct !DILexicalBlock(scope: !274, file: !10, line: 50, column: 2)
!335 = !DILocation(line: 120, column: 2, scope: !317, inlinedAt: !336)
!336 = distinct !DILocation(line: 49, column: 21, scope: !337, inlinedAt: !343)
!337 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !338, file: !338, line: 47, type: !339, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !341)
!338 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!339 = !DISubroutineType(types: !340)
!340 = !{!120}
!341 = !{!342}
!342 = !DILocalVariable(name: "sp", scope: !337, file: !338, line: 49, type: !87)
!343 = distinct !DILocation(line: 50, column: 2, scope: !271)
!344 = !DILocation(line: 118, column: 16, scope: !317, inlinedAt: !336)
!345 = !DILocation(line: 121, column: 2, scope: !317, inlinedAt: !336)
!346 = !DILocation(line: 49, column: 16, scope: !337, inlinedAt: !343)
!347 = !DILocation(line: 50, column: 19, scope: !337, inlinedAt: !343)
!348 = !DILocation(line: 50, column: 11, scope: !337, inlinedAt: !343)
!349 = !DILocation(line: 50, column: 9, scope: !337, inlinedAt: !343)
!350 = !{!230, !230, i64 0}
!351 = !DILocation(line: 50, column: 2, scope: !337, inlinedAt: !343)
!352 = !DILocation(line: 50, column: 2, scope: !271)
!353 = !{i32 -2146594127, i32 -2146594114, i32 -2146594089, i32 -2146594065, i32 -2146594040, i32 -2146593965, i32 -2146593940, i32 -2146593796, i32 -2146591575, i32 -2146591486, i32 -2146591365, i32 -2146591270, i32 -2146591169, i32 -2146591142, i32 -2146591059, i32 -2146590970, i32 -2146590849, i32 -2146590749, i32 -2146590643, i32 -2146590535, i32 -2146593508, i32 -2146593455, i32 -2146593424, i32 -2146593393, i32 -2146593372, i32 -2146593350, i32 -2146593301, i32 -2146593280, i32 -2146590452, i32 -2146590363, i32 -2146590242, i32 -2146590143, i32 -2146590037, i32 -2146589935, i32 -2146589902, i32 -2146589829, i32 -2146589761, i32 -2146592906, i32 -2146592853, i32 -2146592822, i32 -2146592791, i32 -2146592770, i32 -2146592748, i32 -2146592699, i32 -2146592678, i32 -2146589704, i32 -2146589615, i32 -2146589494, i32 -2146589395, i32 -2146589289, i32 -2146589187, i32 -2146589154, i32 -2146589071, i32 -2146588982, i32 -2146588861, i32 -2146588761, i32 -2146588735, i32 -2146588632, i32 -2146588606, i32 -2146592420, i32 -2146592353, i32 -2146592328, i32 -2146592264, i32 -2146592148, i32 -2146592123, i32 -2146592098}
!354 = !DILocation(line: 51, column: 1, scope: !266)
!355 = !DILocation(line: 196, column: 2, scope: !2)
!356 = !DILocation(line: 196, column: 10, scope: !2)
!357 = !DILocation(line: 197, column: 2, scope: !2)
!358 = !DILocation(line: 198, column: 2, scope: !359)
!359 = distinct !DILexicalBlock(scope: !360, file: !3, line: 198, column: 2)
!360 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!361 = !DILocation(line: 199, column: 2, scope: !2)
!362 = !DILocation(line: 200, column: 1, scope: !2)
