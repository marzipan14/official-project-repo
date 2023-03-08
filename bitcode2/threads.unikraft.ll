; ModuleID = '/root/.unikraft/libs/lwip/threads.c'
source_filename = "/root/.unikraft/libs/lwip/threads.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_thread_status_block = type { i64, i64 }
%struct.uk_thread = type { i8*, i8*, i8*, i8*, %struct.anon, i32, i64, i8, %struct.uk_waitq, %struct.uk_sched*, i8*, i32, %struct._reent*, %struct.uk_thread_sig* }
%struct.anon = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.uk_waitq = type { %struct.uk_waitq_entry*, %struct.uk_waitq_entry** }
%struct.uk_waitq_entry = type { i32, %struct.uk_thread*, %struct.anon.0 }
%struct.anon.0 = type { %struct.uk_waitq_entry* }
%struct.uk_sched = type { void (%struct.uk_sched*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, %struct.uk_thread_attr*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, void (%struct.uk_sched*, %struct.uk_thread*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32)*, i32 (%struct.uk_sched*, %struct.uk_thread*, i32*)*, i8, %struct.uk_thread, %struct.uk_thread_list, %struct.ukplat_ctx_callbacks, %struct.uk_alloc*, %struct.uk_sched*, i8* }
%struct.uk_thread_attr = type { i8, i32, i64 }
%struct.uk_thread_list = type { %struct.uk_thread*, %struct.uk_thread** }
%struct.ukplat_ctx_callbacks = type { i8* (%struct.uk_alloc*, i64, i64)*, void (i8*)*, void (i8*, i8*)* }
%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, {}*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, {}*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct._reent = type { i32, %struct.__sFILE*, %struct.__sFILE*, %struct.__sFILE*, i32, [25 x i8], i32, %struct.__locale_t*, i32, void (%struct._reent*)*, %struct._Bigint*, i32, %struct._Bigint*, %struct._Bigint**, i32, i8*, %union.anon.1, %struct._atexit*, %struct._atexit, void (i32)**, %struct._glue, [3 x %struct.__sFILE] }
%struct.__sFILE = type { i8*, i32, i32, i16, i16, %struct.__sbuf, i32, i8*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i8*, i32)*, i64 (%struct._reent*, i8*, i64, i32)*, i32 (%struct._reent*, i8*)*, %struct.__sbuf, i8*, i32, [3 x i8], [1 x i8], %struct.__sbuf, i32, i64, %struct._reent*, i32, %struct._mbstate_t, i32 }
%struct.__sbuf = type { i8*, i32 }
%struct._mbstate_t = type { i32, %union.anon }
%union.anon = type { i32 }
%struct.__locale_t = type opaque
%struct._Bigint = type { %struct._Bigint*, i32, i32, i32, i32, [1 x i32] }
%union.anon.1 = type { %struct.anon.3 }
%struct.anon.3 = type { [30 x i8*], [30 x i32] }
%struct._atexit = type { %struct._atexit*, i32, [32 x void ()*], %struct._on_exit_args }
%struct._on_exit_args = type { [32 x i8*], [32 x i8*], i32, i32 }
%struct._glue = type { %struct._glue*, i32, %struct.__sFILE* }
%struct.uk_thread_sig = type { i64, i64, %struct.uk_list_head, %struct.uk_thread_sig_wait, %struct.uk_list_head }
%struct.uk_thread_sig_wait = type { i32, i64, %struct.siginfo_t }
%struct.siginfo_t = type { i32, i32, i32 }
%struct.uk_list_head = type { %struct.uk_list_head*, %struct.uk_list_head* }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [73 x i8] c"Can't create lwIP thread: stack size %u is too large (> %llu). Dying...\0A\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !0
@uk_pr_crit.__str.1 = internal global [10 x i8] c"threads.c\00", section ".data_shared", align 1, !dbg !40
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local %struct.uk_thread* @sys_thread_new(i8*, void (i8*)*, i8*, i32, i32) local_unnamed_addr #0 !dbg !68 {
  %6 = alloca %struct.uk_thread*, align 8
  %7 = bitcast %struct.uk_thread** %6 to i8*, !dbg !520
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #5, !dbg !520
  %8 = icmp sgt i32 %3, 65536, !dbg !521
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  br i1 %8, label %9, label %10, !dbg !523

; <label>:9:                                      ; preds = %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i32 %3, i64 65536) #7, !dbg !524
  tail call void @ukplat_terminate(i32 3) #8, !dbg !524
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !527, !srcloc !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !537
  %12 = icmp ult i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !538
  br i1 %12, label %19, label %13, !dbg !538

; <label>:13:                                     ; preds = %10
  %14 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !539, !srcloc !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !542
  %15 = icmp ugt i64 %14, ptrtoint ([0 x i8]* @_end to i64), !dbg !538
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !543
  br i1 %15, label %19, label %16, !dbg !543

; <label>:16:                                     ; preds = %13
  %17 = tail call %struct.uk_sched* @uk_sched_get_default() #9, !dbg !569
  %18 = tail call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %17, i8* %0, %struct.uk_thread_attr* null, void (i8*)* %1, i8* %2) #9, !dbg !570
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !571
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  store %struct.uk_thread* %18, %struct.uk_thread** %6, align 8, !dbg !574, !tbaa !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !574
  br label %31, !dbg !574

; <label>:19:                                     ; preds = %13, %10
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #5, !dbg !579, !srcloc !535
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  %21 = and i64 %20, -65536, !dbg !591
  %22 = or i64 %21, 4097, !dbg !591
  %23 = add nsw i64 %22, -1, !dbg !591
  %24 = inttoptr i64 %23 to i32*, !dbg !592
  %25 = load i32, i32* %24, align 4096, !dbg !593, !tbaa !594
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !596
  %26 = ptrtoint i8* %2 to i64, !dbg !597
  %27 = ptrtoint i8* %0 to i64, !dbg !597
  %28 = ptrtoint void (i8*)* %1 to i64, !dbg !597
  %29 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_thread_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %27, i64 %28, i64 %26, i32 %25, %struct.uk_thread* (i8*, void (i8*)*, i8*)* nonnull @uk_thread_create) #5, !dbg !597, !srcloc !598
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_thread** nonnull %6, i64 %29) #5, !dbg !599, !srcloc !603
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %30 = load %struct.uk_thread*, %struct.uk_thread** %6, align 8, !dbg !604, !tbaa !575
  br label %31

; <label>:31:                                     ; preds = %19, %16
  %32 = phi %struct.uk_thread* [ %30, %19 ], [ %18, %16 ], !dbg !604
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #5, !dbg !605
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !606
  ret %struct.uk_thread* %32, !dbg !606
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #2

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #3 !dbg !2 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !607
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #5, !dbg !607
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !609
  call void @llvm.va_start(i8* nonnull %3), !dbg !609
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.1, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !610
  call void @llvm.va_end(i8* nonnull %3), !dbg !613
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #5, !dbg !614
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !614
  ret void, !dbg !614
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #4

; Function Attrs: inlinehint noredzone nounwind
define internal %struct.uk_thread* @uk_thread_create(i8*, void (i8*)*, i8*) #3 !dbg !545 {
  %4 = tail call %struct.uk_sched* @uk_sched_get_default() #9, !dbg !623
  %5 = tail call %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched* %4, i8* %0, %struct.uk_thread_attr* null, void (i8*)* %1, i8* %2) #9, !dbg !624
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !625
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !626
  ret %struct.uk_thread* %5, !dbg !626
}

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #5

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #5

; Function Attrs: noredzone
declare dso_local %struct.uk_thread* @uk_sched_thread_create(%struct.uk_sched*, i8*, %struct.uk_thread_attr*, void (i8*)*, i8*) local_unnamed_addr #6

; Function Attrs: noredzone
declare dso_local %struct.uk_sched* @uk_sched_get_default() local_unnamed_addr #6

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

!llvm.module.flags = !{!64, !65, !66}
!llvm.ident = !{!67}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !61, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "uk_pr_crit", scope: !3, file: !3, line: 194, type: !4, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !45)
!3 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, null}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !26, globals: !39)
!10 = !DIFile(filename: "/root/.unikraft/libs/lwip/threads.c", directory: "/root/.unikraft/apps/redis/build")
!11 = !{!12, !19}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "uk_sig_waiting", file: !13, line: 92, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksignal/include/uk/uk_signal.h", directory: "/root/.unikraft/apps/redis/build")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "UK_SIG_NOT_WAITING", value: 0, isUnsigned: true)
!17 = !DIEnumerator(name: "UK_SIG_WAITING", value: 1, isUnsigned: true)
!18 = !DIEnumerator(name: "UK_SIG_WAITING_SCHED", value: 2, isUnsigned: true)
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !20, line: 68, baseType: !14, size: 32, elements: !21)
!20 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!21 = !{!22, !23, !24, !25}
!22 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!23 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!24 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!25 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!26 = !{!27, !32, !33, !37}
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssz", file: !28, line: 195, baseType: !29)
!28 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sptr", file: !28, line: 186, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !28, line: 128, baseType: !31)
!31 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!32 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !34, line: 60, baseType: !35)
!34 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !36, line: 105, baseType: !32)
!36 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!39 = !{!0, !40}
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 198, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 80, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 10)
!45 = !{!46, !47}
!46 = !DILocalVariable(name: "fmt", arg: 1, scope: !2, file: !3, line: 194, type: !6)
!47 = !DILocalVariable(name: "argp", scope: !2, file: !3, line: 196, type: !48)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !49, line: 32, baseType: !50)
!49 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!50 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !10, line: 196, baseType: !51)
!51 = !DICompositeType(tag: DW_TAG_array_type, baseType: !52, size: 192, elements: !59)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !10, line: 196, size: 192, elements: !53)
!53 = !{!54, !55, !56, !58}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !52, file: !10, line: 196, baseType: !14, size: 32)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !52, file: !10, line: 196, baseType: !14, size: 32, offset: 32)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !52, file: !10, line: 196, baseType: !57, size: 64, offset: 64)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !52, file: !10, line: 196, baseType: !57, size: 64, offset: 128)
!59 = !{!60}
!60 = !DISubrange(count: 1)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 64, elements: !62)
!62 = !{!63}
!63 = !DISubrange(count: 8)
!64 = !{i32 2, !"Dwarf Version", i32 4}
!65 = !{i32 2, !"Debug Info Version", i32 3}
!66 = !{i32 1, !"wchar_size", i32 4}
!67 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!68 = distinct !DISubprogram(name: "sys_thread_new", scope: !10, file: !10, line: 49, type: !69, isLocal: false, isDefinition: true, scopeLine: 51, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !500)
!69 = !DISubroutineType(types: !70)
!70 = !{!71, !6, !498, !57, !38, !38}
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_thread_t", file: !72, line: 81, baseType: !73)
!72 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread", file: !75, line: 59, size: 1024, elements: !76)
!75 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread.h", directory: "/root/.unikraft/apps/redis/build")
!76 = !{!77, !78, !79, !80, !81, !87, !90, !93, !95, !111, !258, !259, !260, !468}
!77 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !74, file: !75, line: 60, baseType: !6, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !74, file: !75, line: 61, baseType: !57, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "tls", scope: !74, file: !75, line: 62, baseType: !57, size: 64, offset: 128)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !74, file: !75, line: 63, baseType: !57, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !74, file: !75, line: 64, baseType: !82, size: 128, offset: 256)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !74, file: !75, line: 64, size: 128, elements: !83)
!83 = !{!84, !85}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_next", scope: !82, file: !75, line: 64, baseType: !73, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "tqe_prev", scope: !82, file: !75, line: 64, baseType: !86, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !74, file: !75, line: 65, baseType: !88, size: 32, offset: 384)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !34, line: 48, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !36, line: 79, baseType: !14)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_time", scope: !74, file: !75, line: 66, baseType: !91, size: 64, offset: 448)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__snsec", file: !92, line: 49, baseType: !30)
!92 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!93 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !74, file: !75, line: 67, baseType: !94, size: 8, offset: 512)
!94 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "waiting_threads", scope: !74, file: !75, line: 68, baseType: !96, size: 128, offset: 576)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq", file: !97, line: 42, size: 128, elements: !98)
!97 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/wait_types.h", directory: "/root/.unikraft/apps/redis/build")
!98 = !{!99, !109}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_first", scope: !96, file: !97, line: 42, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_waitq_entry", file: !97, line: 35, size: 192, elements: !102)
!102 = !{!103, !104, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "waiting", scope: !101, file: !97, line: 36, baseType: !38, size: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !101, file: !97, line: 37, baseType: !73, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "thread_list", scope: !101, file: !97, line: 38, baseType: !106, size: 64, offset: 128)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !101, file: !97, line: 38, size: 64, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "stqe_next", scope: !106, file: !97, line: 38, baseType: !100, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "stqh_last", scope: !96, file: !97, line: 42, baseType: !110, size: 64, offset: 64)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "sched", scope: !74, file: !75, line: 69, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_sched", file: !114, line: 90, size: 2176, elements: !115)
!114 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/sched.h", directory: "/root/.unikraft/apps/redis/build")
!115 = !{!116, !121, !138, !143, !145, !147, !152, !160, !165, !170, !171, !172, !177, !255, !256, !257}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "yield", scope: !113, file: !114, line: 91, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_yield_func_t", file: !114, line: 68, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !112}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "thread_add", scope: !113, file: !114, line: 93, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_add_func_t", file: !114, line: 71, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!38, !112, !73, !126}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_thread_attr_t", file: !129, line: 62, baseType: !130)
!129 = !DIFile(filename: "/root/.unikraft/unikraft/lib/uksched/include/uk/thread_attr.h", directory: "/root/.unikraft/apps/redis/build")
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_attr", file: !129, line: 55, size: 128, elements: !131)
!131 = !{!132, !133, !135}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !130, file: !129, line: 57, baseType: !94, size: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !130, file: !129, line: 59, baseType: !134, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "prio_t", file: !129, line: 53, baseType: !38)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "timeslice", scope: !130, file: !129, line: 61, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !92, line: 48, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !28, line: 129, baseType: !32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "thread_remove", scope: !113, file: !114, line: 94, baseType: !139, size: 64, offset: 128)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_remove_func_t", file: !114, line: 74, baseType: !140)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{null, !112, !73}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "thread_blocked", scope: !113, file: !114, line: 95, baseType: !144, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_blocked_func_t", file: !114, line: 76, baseType: !140)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "thread_woken", scope: !113, file: !114, line: 96, baseType: !146, size: 64, offset: 256)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_woken_func_t", file: !114, line: 78, baseType: !140)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_prio", scope: !113, file: !114, line: 98, baseType: !148, size: 64, offset: 320)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_prio_func_t", file: !114, line: 81, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!38, !112, !73, !134}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_prio", scope: !113, file: !114, line: 99, baseType: !153, size: 64, offset: 384)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_prio_func_t", file: !114, line: 83, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{!38, !112, !157, !159}
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "thread_set_tslice", scope: !113, file: !114, line: 100, baseType: !161, size: 64, offset: 448)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_set_tslice_func_t", file: !114, line: 85, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!38, !112, !73, !38}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "thread_get_tslice", scope: !113, file: !114, line: 101, baseType: !166, size: 64, offset: 512)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_sched_thread_get_tslice_func_t", file: !114, line: 87, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DISubroutineType(types: !169)
!169 = !{!38, !112, !157, !37}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "threads_started", scope: !113, file: !114, line: 104, baseType: !94, size: 8, offset: 576)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "idle", scope: !113, file: !114, line: 105, baseType: !74, size: 1024, offset: 640)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "exited_threads", scope: !113, file: !114, line: 106, baseType: !173, size: 128, offset: 1664)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_list", file: !75, line: 93, size: 128, elements: !174)
!174 = !{!175, !176}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_first", scope: !173, file: !75, line: 93, baseType: !73, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "tqh_last", scope: !173, file: !75, line: 93, baseType: !86, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "plat_ctx_cbs", scope: !113, file: !114, line: 107, baseType: !178, size: 192, offset: 1792)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ukplat_ctx_callbacks", file: !179, line: 59, size: 192, elements: !180)
!179 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/thread.h", directory: "/root/.unikraft/apps/redis/build")
!180 = !{!181, !246, !250}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "create_cb", scope: !178, file: !179, line: 61, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_create_func_t", file: !179, line: 51, baseType: !183)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{!57, !186, !32, !32}
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !188, line: 77, size: 832, elements: !189)
!188 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!189 = !{!190, !197, !202, !207, !213, !215, !220, !221, !222, !227, !232, !237, !238, !239}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !187, file: !188, line: 79, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !188, line: 54, baseType: !192)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!57, !186, !195}
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !196, line: 58, baseType: !32)
!196 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!197 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !187, file: !188, line: 80, baseType: !198, size: 64, offset: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !188, line: 56, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!57, !186, !195, !195}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !187, file: !188, line: 81, baseType: !203, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !188, line: 62, baseType: !204)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!57, !186, !57, !195}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !187, file: !188, line: 82, baseType: !208, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !188, line: 58, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!38, !186, !212, !195, !195}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !187, file: !188, line: 83, baseType: !214, size: 64, offset: 256)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !188, line: 60, baseType: !199)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !187, file: !188, line: 84, baseType: !216, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !188, line: 64, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !186, !57}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !187, file: !188, line: 87, baseType: !216, size: 64, offset: 384)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !187, file: !188, line: 88, baseType: !191, size: 64, offset: 448)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !187, file: !188, line: 92, baseType: !223, size: 64, offset: 512)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !188, line: 66, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DISubroutineType(types: !226)
!226 = !{!57, !186, !32}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !187, file: !188, line: 93, baseType: !228, size: 64, offset: 576)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !188, line: 68, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !186, !57, !32}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !187, file: !188, line: 99, baseType: !233, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !188, line: 70, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!38, !186, !57, !195}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !187, file: !188, line: 100, baseType: !195, size: 64, offset: 704)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !188, line: 103, baseType: !186, size: 64, offset: 768)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !187, file: !188, line: 104, baseType: !240, offset: 832)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, elements: !244)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !34, line: 20, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !36, line: 41, baseType: !243)
!243 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!244 = !{!245}
!245 = !DISubrange(count: -1)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "start_cb", scope: !178, file: !179, line: 63, baseType: !247, size: 64, offset: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !57}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "switch_cb", scope: !178, file: !179, line: 65, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ukplat_ctx_switch_func_t", file: !179, line: 56, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{null, !57, !57}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "allocator", scope: !113, file: !114, line: 108, baseType: !186, size: 64, offset: 1984)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !113, file: !114, line: 109, baseType: !112, size: 64, offset: 2048)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !113, file: !114, line: 110, baseType: !57, size: 64, offset: 2112)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "prv", scope: !74, file: !75, line: 70, baseType: !57, size: 64, offset: 768)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !74, file: !75, line: 72, baseType: !38, size: 32, offset: 832)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "reent", scope: !74, file: !75, line: 82, baseType: !261, size: 64, offset: 896)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_reent", file: !263, line: 569, size: 14912, elements: !264)
!263 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/reent.h", directory: "/root/.unikraft/apps/redis/build")
!264 = !{!265, !266, !339, !340, !341, !342, !346, !347, !350, !351, !355, !367, !368, !369, !371, !372, !373, !432, !453, !454, !459, !466}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_errno", scope: !262, file: !263, line: 571, baseType: !38, size: 32)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_stdin", scope: !262, file: !263, line: 576, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !263, line: 287, baseType: !269)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sFILE", file: !263, line: 181, size: 1408, elements: !270)
!270 = !{!271, !274, !275, !276, !278, !279, !284, !285, !286, !293, !297, !302, !306, !307, !308, !309, !313, !315, !316, !317, !319, !320, !324, !338}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_p", scope: !269, file: !263, line: 182, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_r", scope: !269, file: !263, line: 183, baseType: !38, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_w", scope: !269, file: !263, line: 184, baseType: !38, size: 32, offset: 96)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !269, file: !263, line: 185, baseType: !277, size: 16, offset: 128)
!277 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_file", scope: !269, file: !263, line: 186, baseType: !277, size: 16, offset: 144)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_bf", scope: !269, file: !263, line: 187, baseType: !280, size: 128, offset: 192)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__sbuf", file: !263, line: 117, size: 128, elements: !281)
!281 = !{!282, !283}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "_base", scope: !280, file: !263, line: 118, baseType: !272, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_size", scope: !280, file: !263, line: 119, baseType: !38, size: 32, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_lbfsize", scope: !269, file: !263, line: 188, baseType: !38, size: 32, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "_cookie", scope: !269, file: !263, line: 195, baseType: !57, size: 64, offset: 384)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !269, file: !263, line: 197, baseType: !287, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !261, !57, !292, !38}
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "_ssize_t", file: !291, line: 145, baseType: !31)
!291 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_types.h", directory: "/root/.unikraft/apps/redis/build")
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !269, file: !263, line: 199, baseType: !294, size: 64, offset: 512)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!290, !261, !57, !6, !38}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_seek", scope: !269, file: !263, line: 202, baseType: !298, size: 64, offset: 576)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!301, !261, !57, !301, !38}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "_fpos_t", file: !291, line: 114, baseType: !31)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_close", scope: !269, file: !263, line: 203, baseType: !303, size: 64, offset: 640)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!38, !261, !57}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_ub", scope: !269, file: !263, line: 206, baseType: !280, size: 128, offset: 704)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_up", scope: !269, file: !263, line: 207, baseType: !272, size: 64, offset: 832)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_ur", scope: !269, file: !263, line: 208, baseType: !38, size: 32, offset: 896)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_ubuf", scope: !269, file: !263, line: 211, baseType: !310, size: 24, offset: 928)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 24, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 3)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_nbuf", scope: !269, file: !263, line: 212, baseType: !314, size: 8, offset: 952)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 8, elements: !59)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_lb", scope: !269, file: !263, line: 215, baseType: !280, size: 128, offset: 960)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "_blksize", scope: !269, file: !263, line: 218, baseType: !38, size: 32, offset: 1088)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !269, file: !263, line: 219, baseType: !318, size: 64, offset: 1152)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "_off_t", file: !291, line: 44, baseType: !31)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "_data", scope: !269, file: !263, line: 222, baseType: !261, size: 64, offset: 1216)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !269, file: !263, line: 226, baseType: !321, size: 32, offset: 1280)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "_flock_t", file: !291, line: 175, baseType: !322)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "_LOCK_RECURSIVE_T", file: !323, line: 12, baseType: !38)
!323 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/lock.h", directory: "/root/.unikraft/apps/redis/build")
!324 = !DIDerivedType(tag: DW_TAG_member, name: "_mbstate", scope: !269, file: !263, line: 228, baseType: !325, size: 64, offset: 1312)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "_mbstate_t", file: !291, line: 171, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !291, line: 163, size: 64, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !326, file: !291, line: 165, baseType: !38, size: 32)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !326, file: !291, line: 170, baseType: !330, size: 32, offset: 32)
!330 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !326, file: !291, line: 166, size: 32, elements: !331)
!331 = !{!332, !334}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !330, file: !291, line: 168, baseType: !333, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !196, line: 124, baseType: !14)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !330, file: !291, line: 169, baseType: !335, size: 32)
!335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 32, elements: !336)
!336 = !{!337}
!337 = !DISubrange(count: 4)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !269, file: !263, line: 229, baseType: !38, size: 32, offset: 1376)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_stdout", scope: !262, file: !263, line: 576, baseType: !267, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_stderr", scope: !262, file: !263, line: 576, baseType: !267, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_inc", scope: !262, file: !263, line: 578, baseType: !38, size: 32, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_emergency", scope: !262, file: !263, line: 579, baseType: !343, size: 200, offset: 288)
!343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 200, elements: !344)
!344 = !{!345}
!345 = !DISubrange(count: 25)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_unspecified_locale_info", scope: !262, file: !263, line: 582, baseType: !38, size: 32, offset: 512)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_locale", scope: !262, file: !263, line: 583, baseType: !348, size: 64, offset: 576)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DICompositeType(tag: DW_TAG_structure_type, name: "__locale_t", file: !263, line: 40, flags: DIFlagFwdDecl)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "__sdidinit", scope: !262, file: !263, line: 585, baseType: !38, size: 32, offset: 640)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__cleanup", scope: !262, file: !263, line: 587, baseType: !352, size: 64, offset: 704)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !261}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "_result", scope: !262, file: !263, line: 590, baseType: !356, size: 64, offset: 768)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Bigint", file: !263, line: 47, size: 256, elements: !358)
!358 = !{!359, !360, !361, !362, !363, !364}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !357, file: !263, line: 49, baseType: !356, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_k", scope: !357, file: !263, line: 50, baseType: !38, size: 32, offset: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "_maxwds", scope: !357, file: !263, line: 50, baseType: !38, size: 32, offset: 96)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_sign", scope: !357, file: !263, line: 50, baseType: !38, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "_wds", scope: !357, file: !263, line: 50, baseType: !38, size: 32, offset: 160)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "_x", scope: !357, file: !263, line: 51, baseType: !365, size: 32, offset: 192)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 32, elements: !59)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ULong", file: !263, line: 25, baseType: !14)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "_result_k", scope: !262, file: !263, line: 591, baseType: !38, size: 32, offset: 832)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_p5s", scope: !262, file: !263, line: 592, baseType: !356, size: 64, offset: 896)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_freelist", scope: !262, file: !263, line: 593, baseType: !370, size: 64, offset: 960)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtlen", scope: !262, file: !263, line: 596, baseType: !38, size: 32, offset: 1024)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_cvtbuf", scope: !262, file: !263, line: 597, baseType: !292, size: 64, offset: 1088)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "_new", scope: !262, file: !263, line: 632, baseType: !374, size: 2880, offset: 1152)
!374 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !262, file: !263, line: 599, size: 2880, elements: !375)
!375 = !{!376, !423}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "_reent", scope: !374, file: !263, line: 622, baseType: !377, size: 1728)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !263, line: 601, size: 1728, elements: !378)
!378 = !{!379, !380, !381, !385, !397, !398, !400, !408, !409, !410, !411, !412, !416, !417, !418, !419, !420, !421, !422}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "_unused_rand", scope: !377, file: !263, line: 603, baseType: !14, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "_strtok_last", scope: !377, file: !263, line: 604, baseType: !292, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "_asctime_buf", scope: !377, file: !263, line: 605, baseType: !382, size: 208, offset: 128)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 208, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 26)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "_localtime_buf", scope: !377, file: !263, line: 606, baseType: !386, size: 288, offset: 352)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__tm", file: !263, line: 55, size: 288, elements: !387)
!387 = !{!388, !389, !390, !391, !392, !393, !394, !395, !396}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_sec", scope: !386, file: !263, line: 57, baseType: !38, size: 32)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_min", scope: !386, file: !263, line: 58, baseType: !38, size: 32, offset: 32)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_hour", scope: !386, file: !263, line: 59, baseType: !38, size: 32, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mday", scope: !386, file: !263, line: 60, baseType: !38, size: 32, offset: 96)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_mon", scope: !386, file: !263, line: 61, baseType: !38, size: 32, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_year", scope: !386, file: !263, line: 62, baseType: !38, size: 32, offset: 160)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_wday", scope: !386, file: !263, line: 63, baseType: !38, size: 32, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_yday", scope: !386, file: !263, line: 64, baseType: !38, size: 32, offset: 224)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "__tm_isdst", scope: !386, file: !263, line: 65, baseType: !38, size: 32, offset: 256)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "_gamma_signgam", scope: !377, file: !263, line: 607, baseType: !38, size: 32, offset: 640)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "_rand_next", scope: !377, file: !263, line: 608, baseType: !399, size: 64, offset: 704)
!399 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "_r48", scope: !377, file: !263, line: 609, baseType: !401, size: 112, offset: 768)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_rand48", file: !263, line: 319, size: 112, elements: !402)
!402 = !{!403, !406, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "_seed", scope: !401, file: !263, line: 320, baseType: !404, size: 48)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 48, elements: !311)
!405 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "_mult", scope: !401, file: !263, line: 321, baseType: !404, size: 48, offset: 48)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "_add", scope: !401, file: !263, line: 322, baseType: !405, size: 16, offset: 96)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "_mblen_state", scope: !377, file: !263, line: 610, baseType: !325, size: 64, offset: 896)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "_mbtowc_state", scope: !377, file: !263, line: 611, baseType: !325, size: 64, offset: 960)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "_wctomb_state", scope: !377, file: !263, line: 612, baseType: !325, size: 64, offset: 1024)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "_l64a_buf", scope: !377, file: !263, line: 613, baseType: !61, size: 64, offset: 1088)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "_signal_buf", scope: !377, file: !263, line: 614, baseType: !413, size: 192, offset: 1152)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 192, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 24)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "_getdate_err", scope: !377, file: !263, line: 615, baseType: !38, size: 32, offset: 1344)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrlen_state", scope: !377, file: !263, line: 616, baseType: !325, size: 64, offset: 1376)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "_mbrtowc_state", scope: !377, file: !263, line: 617, baseType: !325, size: 64, offset: 1440)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "_mbsrtowcs_state", scope: !377, file: !263, line: 618, baseType: !325, size: 64, offset: 1504)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "_wcrtomb_state", scope: !377, file: !263, line: 619, baseType: !325, size: 64, offset: 1568)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "_wcsrtombs_state", scope: !377, file: !263, line: 620, baseType: !325, size: 64, offset: 1632)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "_h_errno", scope: !377, file: !263, line: 621, baseType: !38, size: 32, offset: 1696)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "_unused", scope: !374, file: !263, line: 631, baseType: !424, size: 2880)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !263, line: 626, size: 2880, elements: !425)
!425 = !{!426, !430}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "_nextf", scope: !424, file: !263, line: 629, baseType: !427, size: 1920)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !272, size: 1920, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 30)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "_nmalloc", scope: !424, file: !263, line: 630, baseType: !431, size: 960, offset: 1920)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 960, elements: !428)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit", scope: !262, file: !263, line: 636, baseType: !433, size: 64, offset: 4032)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_atexit", file: !263, line: 93, size: 6336, elements: !435)
!435 = !{!436, !437, !438, !445}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !434, file: !263, line: 94, baseType: !433, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "_ind", scope: !434, file: !263, line: 95, baseType: !38, size: 32, offset: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "_fns", scope: !434, file: !263, line: 97, baseType: !439, size: 2048, offset: 128)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !440, size: 2048, elements: !443)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{null}
!443 = !{!444}
!444 = !DISubrange(count: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "_on_exit_args", scope: !434, file: !263, line: 98, baseType: !446, size: 4160, offset: 2176)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_on_exit_args", file: !263, line: 74, size: 4160, elements: !447)
!447 = !{!448, !450, !451, !452}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "_fnargs", scope: !446, file: !263, line: 75, baseType: !449, size: 2048)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !57, size: 2048, elements: !443)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "_dso_handle", scope: !446, file: !263, line: 76, baseType: !449, size: 2048, offset: 2048)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "_fntypes", scope: !446, file: !263, line: 78, baseType: !366, size: 32, offset: 4096)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "_is_cxa", scope: !446, file: !263, line: 81, baseType: !366, size: 32, offset: 4128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "_atexit0", scope: !262, file: !263, line: 637, baseType: !434, size: 6336, offset: 4096)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "_sig_func", scope: !262, file: !263, line: 641, baseType: !455, size: 64, offset: 10432)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{null, !38}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "__sglue", scope: !262, file: !263, line: 646, baseType: !460, size: 192, offset: 10496)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_glue", file: !263, line: 291, size: 192, elements: !461)
!461 = !{!462, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "_next", scope: !460, file: !263, line: 293, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "_niobs", scope: !460, file: !263, line: 294, baseType: !38, size: 32, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "_iobs", scope: !460, file: !263, line: 295, baseType: !267, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "__sf", scope: !262, file: !263, line: 648, baseType: !467, size: 4224, offset: 10688)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 4224, elements: !311)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "signals_container", scope: !74, file: !75, line: 85, baseType: !469, size: 64, offset: 960)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig", file: !13, line: 114, size: 640, elements: !471)
!471 = !{!472, !476, !477, !484, !497}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !470, file: !13, line: 116, baseType: !473, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !474, line: 64, baseType: !475)
!474 = !DIFile(filename: "/root/.unikraft/libs/newlib/musl-imported/include/signal.h", directory: "/root/.unikraft/apps/redis/build")
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sigset_t", file: !474, line: 63, baseType: !32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !470, file: !13, line: 118, baseType: !473, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pending_signals", scope: !470, file: !13, line: 120, baseType: !478, size: 128, offset: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_list_head", file: !479, line: 51, size: 128, elements: !480)
!479 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/list.h", directory: "/root/.unikraft/apps/redis/build")
!480 = !{!481, !483}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !478, file: !479, line: 52, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !478, file: !479, line: 53, baseType: !482, size: 64, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !470, file: !13, line: 122, baseType: !485, size: 256, offset: 256)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_thread_sig_wait", file: !13, line: 98, size: 256, elements: !486)
!486 = !{!487, !488, !489}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !485, file: !13, line: 107, baseType: !12, size: 32)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "awaited", scope: !485, file: !13, line: 109, baseType: !473, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "received_signal", scope: !485, file: !13, line: 111, baseType: !490, size: 96, offset: 128)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "siginfo_t", file: !474, line: 72, baseType: !491)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 68, size: 96, elements: !492)
!492 = !{!493, !494, !495}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !491, file: !474, line: 69, baseType: !38, size: 32)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !491, file: !474, line: 70, baseType: !38, size: 32, offset: 32)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "si_pid", scope: !491, file: !474, line: 71, baseType: !496, size: 32, offset: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !474, line: 61, baseType: !38)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !470, file: !13, line: 124, baseType: !478, size: 128, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwip_thread_fn", file: !499, line: 98, baseType: !247)
!499 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/sys.h", directory: "/root/.unikraft/apps/redis/build")
!500 = !{!501, !502, !503, !504, !505, !506, !507, !513, !514}
!501 = !DILocalVariable(name: "name", arg: 1, scope: !68, file: !10, line: 49, type: !6)
!502 = !DILocalVariable(name: "thread", arg: 2, scope: !68, file: !10, line: 49, type: !498)
!503 = !DILocalVariable(name: "arg", arg: 3, scope: !68, file: !10, line: 49, type: !57)
!504 = !DILocalVariable(name: "stacksize", arg: 4, scope: !68, file: !10, line: 50, type: !38)
!505 = !DILocalVariable(name: "prio", arg: 5, scope: !68, file: !10, line: 50, type: !38)
!506 = !DILocalVariable(name: "t", scope: !68, file: !10, line: 52, type: !73)
!507 = !DILocalVariable(name: "tid", scope: !508, file: !10, line: 58, type: !88)
!508 = distinct !DILexicalBlock(scope: !509, file: !10, line: 58, column: 2)
!509 = distinct !DILexicalBlock(scope: !510, file: !10, line: 58, column: 2)
!510 = distinct !DILexicalBlock(scope: !511, file: !10, line: 58, column: 2)
!511 = distinct !DILexicalBlock(scope: !512, file: !10, line: 58, column: 2)
!512 = distinct !DILexicalBlock(scope: !68, file: !10, line: 58, column: 2)
!513 = !DILocalVariable(name: "_ret", scope: !508, file: !10, line: 58, type: !33)
!514 = !DILocalVariable(name: "_arg3", scope: !508, file: !10, line: 58, type: !33)
!515 = !DILocation(line: 49, column: 41, scope: !68)
!516 = !DILocation(line: 49, column: 62, scope: !68)
!517 = !DILocation(line: 49, column: 76, scope: !68)
!518 = !DILocation(line: 50, column: 12, scope: !68)
!519 = !DILocation(line: 50, column: 27, scope: !68)
!520 = !DILocation(line: 52, column: 2, scope: !68)
!521 = !DILocation(line: 54, column: 16, scope: !522)
!522 = distinct !DILexicalBlock(scope: !68, file: !10, line: 54, column: 6)
!523 = !DILocation(line: 54, column: 6, scope: !68)
!524 = !DILocation(line: 55, column: 3, scope: !525)
!525 = distinct !DILexicalBlock(scope: !526, file: !10, line: 55, column: 3)
!526 = distinct !DILexicalBlock(scope: !522, file: !10, line: 54, column: 40)
!527 = !DILocation(line: 120, column: 2, scope: !528, inlinedAt: !534)
!528 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !529, file: !529, line: 116, type: !530, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !532)
!529 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!530 = !DISubroutineType(types: !531)
!531 = !{!32}
!532 = !{!533}
!533 = !DILocalVariable(name: "sp", scope: !528, file: !529, line: 118, type: !32)
!534 = distinct !DILocation(line: 58, column: 2, scope: !511)
!535 = !{i32 421685}
!536 = !DILocation(line: 118, column: 16, scope: !528, inlinedAt: !534)
!537 = !DILocation(line: 121, column: 2, scope: !528, inlinedAt: !534)
!538 = !DILocation(line: 58, column: 2, scope: !511)
!539 = !DILocation(line: 120, column: 2, scope: !528, inlinedAt: !540)
!540 = distinct !DILocation(line: 58, column: 2, scope: !511)
!541 = !DILocation(line: 118, column: 16, scope: !528, inlinedAt: !540)
!542 = !DILocation(line: 121, column: 2, scope: !528, inlinedAt: !540)
!543 = !DILocation(line: 58, column: 2, scope: !512)
!544 = !DILocalVariable(name: "name", arg: 1, scope: !545, file: !75, line: 108, type: !6)
!545 = distinct !DISubprogram(name: "uk_thread_create", scope: !75, file: !75, line: 108, type: !546, isLocal: true, isDefinition: true, scopeLine: 110, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !548)
!546 = !DISubroutineType(types: !547)
!547 = !{!73, !6, !247, !57}
!548 = !{!544, !549, !550}
!549 = !DILocalVariable(name: "function", arg: 2, scope: !545, file: !75, line: 109, type: !247)
!550 = !DILocalVariable(name: "arg", arg: 3, scope: !545, file: !75, line: 109, type: !57)
!551 = !DILocation(line: 108, column: 62, scope: !545, inlinedAt: !552)
!552 = distinct !DILocation(line: 58, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !511, file: !10, line: 58, column: 2)
!554 = !DILocation(line: 109, column: 9, scope: !545, inlinedAt: !552)
!555 = !DILocation(line: 109, column: 34, scope: !545, inlinedAt: !552)
!556 = !DILocalVariable(name: "name", arg: 1, scope: !557, file: !75, line: 101, type: !6)
!557 = distinct !DISubprogram(name: "uk_thread_create_attr", scope: !75, file: !75, line: 101, type: !558, isLocal: true, isDefinition: true, scopeLine: 103, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !560)
!558 = !DISubroutineType(types: !559)
!559 = !{!73, !6, !126, !247, !57}
!560 = !{!556, !561, !562, !563}
!561 = !DILocalVariable(name: "attr", arg: 2, scope: !557, file: !75, line: 102, type: !126)
!562 = !DILocalVariable(name: "function", arg: 3, scope: !557, file: !75, line: 102, type: !247)
!563 = !DILocalVariable(name: "arg", arg: 4, scope: !557, file: !75, line: 102, type: !57)
!564 = !DILocation(line: 101, column: 67, scope: !557, inlinedAt: !565)
!565 = distinct !DILocation(line: 111, column: 9, scope: !545, inlinedAt: !552)
!566 = !DILocation(line: 102, column: 26, scope: !557, inlinedAt: !565)
!567 = !DILocation(line: 102, column: 38, scope: !557, inlinedAt: !565)
!568 = !DILocation(line: 102, column: 63, scope: !557, inlinedAt: !565)
!569 = !DILocation(line: 104, column: 32, scope: !557, inlinedAt: !565)
!570 = !DILocation(line: 104, column: 9, scope: !557, inlinedAt: !565)
!571 = !DILocation(line: 104, column: 2, scope: !557, inlinedAt: !565)
!572 = !DILocation(line: 111, column: 2, scope: !545, inlinedAt: !552)
!573 = !DILocation(line: 52, column: 20, scope: !68)
!574 = !DILocation(line: 58, column: 2, scope: !553)
!575 = !{!576, !576, i64 0}
!576 = !{!"any pointer", !577, i64 0}
!577 = !{!"omnipotent char", !578, i64 0}
!578 = !{!"Simple C/C++ TBAA"}
!579 = !DILocation(line: 120, column: 2, scope: !528, inlinedAt: !580)
!580 = distinct !DILocation(line: 49, column: 21, scope: !581, inlinedAt: !587)
!581 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !582, file: !582, line: 47, type: !583, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !9, retainedNodes: !585)
!582 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!583 = !DISubroutineType(types: !584)
!584 = !{!38}
!585 = !{!586}
!586 = !DILocalVariable(name: "sp", scope: !581, file: !582, line: 49, type: !32)
!587 = distinct !DILocation(line: 58, column: 2, scope: !508)
!588 = !DILocation(line: 118, column: 16, scope: !528, inlinedAt: !580)
!589 = !DILocation(line: 121, column: 2, scope: !528, inlinedAt: !580)
!590 = !DILocation(line: 49, column: 16, scope: !581, inlinedAt: !587)
!591 = !DILocation(line: 50, column: 19, scope: !581, inlinedAt: !587)
!592 = !DILocation(line: 50, column: 11, scope: !581, inlinedAt: !587)
!593 = !DILocation(line: 50, column: 9, scope: !581, inlinedAt: !587)
!594 = !{!595, !595, i64 0}
!595 = !{!"int", !577, i64 0}
!596 = !DILocation(line: 50, column: 2, scope: !581, inlinedAt: !587)
!597 = !DILocation(line: 58, column: 2, scope: !508)
!598 = !{i32 -2146446049, i32 -2146446036, i32 -2146446011, i32 -2146445987, i32 -2146445962, i32 -2146445887, i32 -2146445862, i32 -2146445718, i32 -2146442510, i32 -2146442421, i32 -2146442300, i32 -2146442205, i32 -2146442104, i32 -2146442077, i32 -2146441994, i32 -2146441905, i32 -2146441784, i32 -2146441684, i32 -2146441578, i32 -2146441470, i32 -2146445388, i32 -2146445335, i32 -2146445304, i32 -2146445273, i32 -2146445252, i32 -2146445230, i32 -2146445181, i32 -2146445160, i32 -2146445057, i32 -2146441387, i32 -2146441298, i32 -2146441177, i32 -2146441078, i32 -2146440972, i32 -2146440870, i32 -2146440837, i32 -2146440764, i32 -2146440696, i32 -2146444867, i32 -2146444808, i32 -2146444755, i32 -2146444724, i32 -2146444693, i32 -2146444672, i32 -2146444650, i32 -2146444601, i32 -2146444580, i32 -2146440644, i32 -2146440555, i32 -2146440434, i32 -2146440335, i32 -2146440229, i32 -2146440127, i32 -2146440094, i32 -2146440011, i32 -2146439922, i32 -2146439801, i32 -2146439701, i32 -2146439675, i32 -2146439572, i32 -2146439546, i32 -2146444322, i32 -2146444255, i32 -2146444230, i32 -2146444166, i32 -2146444084, i32 -2146444061, i32 -2146444036, i32 -2146444011}
!599 = !DILocation(line: 58, column: 2, scope: !600)
!600 = distinct !DILexicalBlock(scope: !601, file: !10, line: 58, column: 2)
!601 = distinct !DILexicalBlock(scope: !602, file: !10, line: 58, column: 2)
!602 = distinct !DILexicalBlock(scope: !508, file: !10, line: 58, column: 2)
!603 = !{i32 -2146442766, i32 -2146442750}
!604 = !DILocation(line: 59, column: 9, scope: !68)
!605 = !DILocation(line: 60, column: 1, scope: !68)
!606 = !DILocation(line: 59, column: 2, scope: !68)
!607 = !DILocation(line: 196, column: 2, scope: !2)
!608 = !DILocation(line: 196, column: 10, scope: !2)
!609 = !DILocation(line: 197, column: 2, scope: !2)
!610 = !DILocation(line: 198, column: 2, scope: !611)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 198, column: 2)
!612 = distinct !DILexicalBlock(scope: !2, file: !3, line: 198, column: 2)
!613 = !DILocation(line: 199, column: 2, scope: !2)
!614 = !DILocation(line: 200, column: 1, scope: !2)
!615 = !DILocation(line: 108, column: 62, scope: !545)
!616 = !DILocation(line: 109, column: 9, scope: !545)
!617 = !DILocation(line: 109, column: 34, scope: !545)
!618 = !DILocation(line: 101, column: 67, scope: !557, inlinedAt: !619)
!619 = distinct !DILocation(line: 111, column: 9, scope: !545)
!620 = !DILocation(line: 102, column: 26, scope: !557, inlinedAt: !619)
!621 = !DILocation(line: 102, column: 38, scope: !557, inlinedAt: !619)
!622 = !DILocation(line: 102, column: 63, scope: !557, inlinedAt: !619)
!623 = !DILocation(line: 104, column: 32, scope: !557, inlinedAt: !619)
!624 = !DILocation(line: 104, column: 9, scope: !557, inlinedAt: !619)
!625 = !DILocation(line: 104, column: 2, scope: !557, inlinedAt: !619)
!626 = !DILocation(line: 111, column: 2, scope: !545)
