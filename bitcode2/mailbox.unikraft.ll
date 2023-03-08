; ModuleID = '/root/.unikraft/libs/lwip/mailbox.c'
source_filename = "/root/.unikraft/libs/lwip/mailbox.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uk_alloc = type { i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, i8* (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8**, i64, i64)*, i8* (%struct.uk_alloc*, i64, i64)*, void (%struct.uk_alloc*, i8*)*, void (%struct.uk_alloc*, i8*)*, i8* (%struct.uk_alloc*, i64)*, i8* (%struct.uk_alloc*, i64)*, void (%struct.uk_alloc*, i8*, i64)*, i32 (%struct.uk_alloc*, i8*, i64)*, i64, %struct.uk_alloc*, [0 x i8] }
%struct.uk_thread_status_block = type { i64, i64 }
%struct.sys_mbox_t = type { %struct.uk_alloc*, %struct.uk_mbox*, i32 }
%struct.uk_mbox = type opaque
%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [23 x i8] c"Assertion failure: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"mbox\00", align 1
@flexos_shared_alloc = external dso_local local_unnamed_addr global %struct.uk_alloc*, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"mbox->a\00", align 1
@_intrstack_start = external dso_local global [0 x i8], align 1
@_end = external dso_local global [0 x i8], align 1
@tsb_comp1 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@tsb_comp0 = external dso_local global [32 x %struct.uk_thread_status_block], align 16
@.str.3 = private unnamed_addr constant [21 x i8] c"sys_mbox_valid(mbox)\00", align 1
@sys_mbox_post.__str.4 = internal global [29 x i8] c"Ignored posting NULL message\00", section ".data_shared", align 16, !dbg !0
@uk_pr_crit.__str = internal global [8 x i8] c"liblwip\00", section ".data_shared", align 1, !dbg !133
@uk_pr_crit.__str.5 = internal global [10 x i8] c"mailbox.c\00", section ".data_shared", align 1, !dbg !159
@__A_VARIABLE = internal global i32 0

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_new(%struct.sys_mbox_t*, i32) local_unnamed_addr #0 !dbg !185 {
  %3 = icmp slt i32 %1, 1, !dbg !202
  %4 = select i1 %3, i32 32, i32 %1, !dbg !204
  %5 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !205
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !208
  br i1 %5, label %6, label %7, !dbg !208, !prof !209

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !210
  tail call void @ukplat_terminate(i32 3) #8, !dbg !210
  unreachable

; <label>:7:                                      ; preds = %2
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !212, !tbaa !213
  %9 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !217
  store %struct.uk_alloc* %8, %struct.uk_alloc** %9, align 8, !dbg !218, !tbaa !219
  %10 = icmp eq %struct.uk_alloc* %8, null, !dbg !222
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !225
  br i1 %10, label %11, label %12, !dbg !225, !prof !209

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !226
  tail call void @ukplat_terminate(i32 3) #8, !dbg !226
  unreachable

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !228, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !239
  br i1 %14, label %23, label %15, !dbg !239

; <label>:15:                                     ; preds = %12
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !240, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !239
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !244
  br i1 %17, label %23, label %18, !dbg !244

; <label>:18:                                     ; preds = %15
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** %9, align 8, !dbg !245, !tbaa !219
  %20 = sext i32 %4 to i64, !dbg !245
  %21 = tail call %struct.uk_mbox* @uk_mbox_create(%struct.uk_alloc* %19, i64 %20) #9, !dbg !245
  %22 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !245
  store %struct.uk_mbox* %21, %struct.uk_mbox** %22, align 8, !dbg !245, !tbaa !247
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !245
  br label %36, !dbg !245

; <label>:23:                                     ; preds = %15, %12
  %24 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !248, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !258
  %25 = and i64 %24, -65536, !dbg !260
  %26 = or i64 %25, 4097, !dbg !260
  %27 = add nsw i64 %26, -1, !dbg !260
  %28 = inttoptr i64 %27 to i32*, !dbg !261
  %29 = load i32, i32* %28, align 4096, !dbg !262, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !264
  %30 = bitcast %struct.sys_mbox_t* %0 to i64*, !dbg !265
  %31 = load i64, i64* %30, align 8, !dbg !265, !tbaa !219
  %32 = sext i32 %4 to i64, !dbg !265
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %29, %struct.uk_mbox* (%struct.uk_alloc*, i64)* nonnull @uk_mbox_create) #6, !dbg !265, !srcloc !266
  %34 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !267
  tail call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_mbox** nonnull %34, i64 %33) #6, !dbg !267, !srcloc !271
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %35 = load %struct.uk_mbox*, %struct.uk_mbox** %34, align 8, !dbg !272, !tbaa !247
  br label %36

; <label>:36:                                     ; preds = %18, %23
  %37 = phi %struct.uk_mbox* [ %21, %18 ], [ %35, %23 ], !dbg !272
  %38 = icmp eq %struct.uk_mbox* %37, null, !dbg !274
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !275
  br i1 %38, label %41, label %39, !dbg !275

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !276
  store i32 1, i32* %40, align 8, !dbg !277, !tbaa !278
  br label %41, !dbg !279

; <label>:41:                                     ; preds = %36, %39
  %42 = phi i8 [ 0, %39 ], [ -1, %36 ], !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !280
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !281
  ret i8 %42, !dbg !281
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !135 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !282
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !282
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !284
  call void @llvm.va_start(i8* nonnull %3), !dbg !284
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #9, !dbg !285
  call void @llvm.va_end(i8* nonnull %3), !dbg !288
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !289
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !289
  ret void, !dbg !289
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.uk_mbox* @uk_mbox_create(%struct.uk_alloc*, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t* readonly) local_unnamed_addr #0 !dbg !290 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !296
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !298
  br i1 %2, label %8, label %3, !dbg !298

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !299
  %5 = load i32, i32* %4, align 8, !dbg !299, !tbaa !278
  %6 = icmp eq i32 %5, 1, !dbg !300
  %7 = zext i1 %6 to i32, !dbg !300
  br label %8, !dbg !301

; <label>:8:                                      ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ], !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 %9, !dbg !303
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_set_invalid(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !304 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !310
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !313
  br i1 %2, label %3, label %4, !dbg !313, !prof !209

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !314
  tail call void @ukplat_terminate(i32 3) #8, !dbg !314
  unreachable

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !316
  store i32 0, i32* %5, align 8, !dbg !317, !tbaa !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret void, !dbg !318
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_free(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !319 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !333
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !334
  br i1 %2, label %3, label %4, !dbg !334

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br label %8, !dbg !337

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !338
  %6 = load i32, i32* %5, align 8, !dbg !338, !tbaa !278
  %7 = icmp eq i32 %6, 1, !dbg !339
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !340
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !336
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !337
  br i1 %7, label %9, label %8, !dbg !337, !prof !341

; <label>:8:                                      ; preds = %4, %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !342
  tail call void @ukplat_terminate(i32 3) #8, !dbg !342
  unreachable

; <label>:9:                                      ; preds = %4
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !344, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !347
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !348
  br i1 %11, label %20, label %12, !dbg !348

; <label>:12:                                     ; preds = %9
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !349, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !352
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !348
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !353
  br i1 %14, label %20, label %15, !dbg !353

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !354
  %17 = load %struct.uk_alloc*, %struct.uk_alloc** %16, align 8, !dbg !354, !tbaa !219
  %18 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !354
  %19 = load %struct.uk_mbox*, %struct.uk_mbox** %18, align 8, !dbg !354, !tbaa !247
  tail call void @uk_mbox_free(%struct.uk_alloc* %17, %struct.uk_mbox* %19) #9, !dbg !354
  br label %32, !dbg !354

; <label>:20:                                     ; preds = %12, %9
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !356, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !360
  %22 = and i64 %21, -65536, !dbg !362
  %23 = or i64 %22, 4097, !dbg !362
  %24 = add nsw i64 %23, -1, !dbg !362
  %25 = inttoptr i64 %24 to i32*, !dbg !363
  %26 = load i32, i32* %25, align 4096, !dbg !364, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !365
  %27 = bitcast %struct.sys_mbox_t* %0 to i64*, !dbg !366
  %28 = load i64, i64* %27, align 8, !dbg !366, !tbaa !219
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !366
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !366
  %31 = load i64, i64* %30, align 8, !dbg !366, !tbaa !247
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_free\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %28, i64 %31, i32 %26, void (%struct.uk_alloc*, %struct.uk_mbox*)* nonnull @uk_mbox_free) #6, !dbg !366, !srcloc !367
  br label %32

; <label>:32:                                     ; preds = %20, %15
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  store i32 0, i32* %5, align 8, !dbg !371, !tbaa !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !372
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !373
  ret void, !dbg !373
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_free(%struct.uk_alloc*, %struct.uk_mbox*) #4

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_post(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !2 {
  %3 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !380
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !381
  br i1 %3, label %4, label %5, !dbg !381

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br label %9, !dbg !384

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !385
  %7 = load i32, i32* %6, align 8, !dbg !385, !tbaa !278
  %8 = icmp eq i32 %7, 1, !dbg !386
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !387
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !383
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !384
  br i1 %8, label %10, label %9, !dbg !384, !prof !341

; <label>:9:                                      ; preds = %5, %4
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !388
  tail call void @ukplat_terminate(i32 3) #8, !dbg !388
  unreachable

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8* %1, null, !dbg !390
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !391, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !394
  %13 = icmp uge i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !395
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !397
  br i1 %11, label %14, label %26, !dbg !396

; <label>:14:                                     ; preds = %10
  br i1 %13, label %15, label %19, !dbg !398

; <label>:15:                                     ; preds = %14
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !399, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !402
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !398
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !403
  br i1 %17, label %19, label %18, !dbg !403

; <label>:18:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_debug(i8* undef) #7, !dbg !404
  br label %44, !dbg !404

; <label>:19:                                     ; preds = %15, %14
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !406, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !410
  %21 = and i64 %20, -65536, !dbg !412
  %22 = or i64 %21, 4097, !dbg !412
  %23 = add nsw i64 %22, -1, !dbg !412
  %24 = inttoptr i64 %23 to i32*, !dbg !413
  %25 = load i32, i32* %24, align 4096, !dbg !414, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !415
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_debug\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([29 x i8]* @sys_mbox_post.__str.4 to i64), i32 %25, void (i8*, ...)* nonnull @uk_pr_debug) #6, !dbg !416, !srcloc !417
  br label %44

; <label>:26:                                     ; preds = %10
  br i1 %13, label %27, label %33, !dbg !418

; <label>:27:                                     ; preds = %26
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !419, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !422
  %29 = icmp ugt i64 %28, ptrtoint ([0 x i8]* @_end to i64), !dbg !418
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !423
  br i1 %29, label %33, label %30, !dbg !423

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !424
  %32 = load %struct.uk_mbox*, %struct.uk_mbox** %31, align 8, !dbg !424, !tbaa !247
  tail call void @uk_mbox_post(%struct.uk_mbox* %32, i8* nonnull %1) #9, !dbg !424
  br label %44, !dbg !424

; <label>:33:                                     ; preds = %27, %26
  %34 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !426, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !430
  %35 = and i64 %34, -65536, !dbg !432
  %36 = or i64 %35, 4097, !dbg !432
  %37 = add nsw i64 %36, -1, !dbg !432
  %38 = inttoptr i64 %37 to i32*, !dbg !433
  %39 = load i32, i32* %38, align 4096, !dbg !434, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !435
  %40 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !436
  %41 = bitcast %struct.uk_mbox** %40 to i64*, !dbg !436
  %42 = load i64, i64* %41, align 8, !dbg !436, !tbaa !247
  %43 = ptrtoint i8* %1 to i64, !dbg !436
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %42, i64 %43, i32 %39, void (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post) #6, !dbg !436, !srcloc !437
  br label %44

; <label>:44:                                     ; preds = %30, %33, %19, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !438
  ret void, !dbg !438
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) #2 !dbg !439 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !444
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !444
  call void @llvm.va_start(i8* nonnull %3), !dbg !446
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !457
  call void @llvm.va_end(i8* nonnull %3), !dbg !458
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !459
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !459
  ret void, !dbg !459
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_post(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !460 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !480
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !481
  br i1 %4, label %5, label %6, !dbg !481

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !482
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br label %10, !dbg !484

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !485
  %8 = load i32, i32* %7, align 8, !dbg !485, !tbaa !278
  %9 = icmp eq i32 %8, 1, !dbg !486
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !487
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !483
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !484
  br i1 %9, label %11, label %10, !dbg !484, !prof !341

; <label>:10:                                     ; preds = %6, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !488
  tail call void @ukplat_terminate(i32 3) #8, !dbg !488
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = bitcast i32* %3 to i8*, !dbg !490
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !490
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !491, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !494
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !495
  br i1 %14, label %22, label %15, !dbg !495

; <label>:15:                                     ; preds = %11
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !496, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !499
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !495
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  br i1 %17, label %22, label %18, !dbg !500

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !501
  %20 = load %struct.uk_mbox*, %struct.uk_mbox** %19, align 8, !dbg !501, !tbaa !247
  %21 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %20, i8* %1) #9, !dbg !501
  store i32 %21, i32* %3, align 4, !dbg !501, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !501
  br label %35, !dbg !501

; <label>:22:                                     ; preds = %15, %11
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !504, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !508
  %24 = and i64 %23, -65536, !dbg !510
  %25 = or i64 %24, 4097, !dbg !510
  %26 = add nsw i64 %25, -1, !dbg !510
  %27 = inttoptr i64 %26 to i32*, !dbg !511
  %28 = load i32, i32* %27, align 4096, !dbg !512, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !513
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !514
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !514
  %31 = load i64, i64* %30, align 8, !dbg !514, !tbaa !247
  %32 = ptrtoint i8* %1 to i64, !dbg !514
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %28, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #6, !dbg !514, !srcloc !515
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %33) #6, !dbg !516, !srcloc !519
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = load i32, i32* %3, align 4, !dbg !520, !tbaa !263
  br label %35

; <label>:35:                                     ; preds = %22, %18
  %36 = phi i32 [ %34, %22 ], [ %21, %18 ], !dbg !520
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !522
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !523
  %37 = ashr i32 %36, 31, !dbg !524
  %38 = trunc i32 %37 to i8, !dbg !524
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !525
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !525
  ret i8 %38, !dbg !525
}

; Function Attrs: noredzone
declare dso_local i32 @uk_mbox_post_try(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost_fromisr(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !526 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !544
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !545
  br i1 %4, label %5, label %6, !dbg !545

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br label %10, !dbg !548

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !549
  %8 = load i32, i32* %7, align 8, !dbg !549, !tbaa !278
  %9 = icmp eq i32 %8, 1, !dbg !550
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !547
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !548
  br i1 %9, label %11, label %10, !dbg !548, !prof !341

; <label>:10:                                     ; preds = %6, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !552
  tail call void @ukplat_terminate(i32 3) #8, !dbg !552
  unreachable

; <label>:11:                                     ; preds = %6
  %12 = bitcast i32* %3 to i8*, !dbg !554
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !554
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !555, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !558
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !559
  br i1 %14, label %22, label %15, !dbg !559

; <label>:15:                                     ; preds = %11
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !560, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !563
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !559
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !564
  br i1 %17, label %22, label %18, !dbg !564

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !565
  %20 = load %struct.uk_mbox*, %struct.uk_mbox** %19, align 8, !dbg !565, !tbaa !247
  %21 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %20, i8* %1) #9, !dbg !565
  store i32 %21, i32* %3, align 4, !dbg !565, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  br label %35, !dbg !565

; <label>:22:                                     ; preds = %15, %11
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !568, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !572
  %24 = and i64 %23, -65536, !dbg !574
  %25 = or i64 %24, 4097, !dbg !574
  %26 = add nsw i64 %25, -1, !dbg !574
  %27 = inttoptr i64 %26 to i32*, !dbg !575
  %28 = load i32, i32* %27, align 4096, !dbg !576, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !577
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !578
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !578
  %31 = load i64, i64* %30, align 8, !dbg !578, !tbaa !247
  %32 = ptrtoint i8* %1 to i64, !dbg !578
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %28, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #6, !dbg !578, !srcloc !579
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %33) #6, !dbg !580, !srcloc !583
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %34 = load i32, i32* %3, align 4, !dbg !584, !tbaa !263
  br label %35

; <label>:35:                                     ; preds = %22, %18
  %36 = phi i32 [ %34, %22 ], [ %21, %18 ], !dbg !584
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !586
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !587
  %37 = ashr i32 %36, 31, !dbg !588
  %38 = trunc i32 %37 to i8, !dbg !588
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !589
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !589
  ret i8 %38, !dbg !589
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* readonly, i8**, i32) local_unnamed_addr #0 !dbg !590 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast i64* %4 to i8*, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !635
  %8 = bitcast i64* %5 to i8*, !dbg !635
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6, !dbg !635
  %9 = bitcast i8** %6 to i8*, !dbg !636
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6, !dbg !636
  %10 = ptrtoint i8** %6 to i64, !dbg !637
  %11 = add i64 %10, 65536, !dbg !638
  %12 = inttoptr i64 %11 to i8**, !dbg !639
  %13 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !645
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !646
  br i1 %13, label %14, label %15, !dbg !646

; <label>:14:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !647
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br label %19, !dbg !649

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !650
  %17 = load i32, i32* %16, align 8, !dbg !650, !tbaa !278
  %18 = icmp eq i32 %17, 1, !dbg !651
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !652
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !648
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !649
  br i1 %18, label %20, label %19, !dbg !649, !prof !341

; <label>:19:                                     ; preds = %15, %14
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !653
  call void @ukplat_terminate(i32 3) #8, !dbg !653
  unreachable

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i32 %2, 0, !dbg !655
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !656, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !659
  %23 = icmp uge i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !660
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !660
  br i1 %21, label %24, label %78, !dbg !661

; <label>:24:                                     ; preds = %20
  br i1 %23, label %25, label %30, !dbg !662

; <label>:25:                                     ; preds = %24
  %26 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !663, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  %27 = icmp ugt i64 %26, ptrtoint ([0 x i8]* @_end to i64), !dbg !662
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !667
  br i1 %27, label %30, label %28, !dbg !667

; <label>:28:                                     ; preds = %25
  %29 = call i64 @ukplat_monotonic_clock() #9, !dbg !668
  store i64 %29, i64* %4, align 8, !dbg !668, !tbaa !671
  br label %38, !dbg !668

; <label>:30:                                     ; preds = %25, %24
  %31 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !673, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %32 = and i64 %31, -65536, !dbg !679
  %33 = or i64 %32, 4097, !dbg !679
  %34 = add nsw i64 %33, -1, !dbg !679
  %35 = inttoptr i64 %34 to i32*, !dbg !680
  %36 = load i32, i32* %35, align 4096, !dbg !681, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %36, i64 ()* nonnull @ukplat_monotonic_clock) #6, !dbg !683, !srcloc !684
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %37) #6, !dbg !685, !srcloc !689
  br label %38

; <label>:38:                                     ; preds = %28, %30
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !690, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !693
  %40 = icmp ult i64 %39, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !694
  br i1 %40, label %47, label %41, !dbg !694

; <label>:41:                                     ; preds = %38
  %42 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !695, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !698
  %43 = icmp ugt i64 %42, ptrtoint ([0 x i8]* @_end to i64), !dbg !694
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !699
  br i1 %43, label %47, label %44, !dbg !699

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !700
  %46 = load %struct.uk_mbox*, %struct.uk_mbox** %45, align 8, !dbg !700, !tbaa !247
  call void @uk_mbox_recv(%struct.uk_mbox* %46, i8** %12) #9, !dbg !700
  br label %57, !dbg !700

; <label>:47:                                     ; preds = %41, %38
  %48 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !702, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %49 = and i64 %48, -65536, !dbg !708
  %50 = or i64 %49, 4097, !dbg !708
  %51 = add nsw i64 %50, -1, !dbg !708
  %52 = inttoptr i64 %51 to i32*, !dbg !709
  %53 = load i32, i32* %52, align 4096, !dbg !710, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !711
  %54 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !712
  %55 = bitcast %struct.uk_mbox** %54 to i64*, !dbg !712
  %56 = load i64, i64* %55, align 8, !dbg !712, !tbaa !247
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %56, i64 %11, i32 %53, void (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv) #6, !dbg !712, !srcloc !713
  br label %57

; <label>:57:                                     ; preds = %44, %47
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %58 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !714, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !717
  %59 = icmp ult i64 %58, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !718
  br i1 %59, label %65, label %60, !dbg !718

; <label>:60:                                     ; preds = %57
  %61 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !719, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !722
  %62 = icmp ugt i64 %61, ptrtoint ([0 x i8]* @_end to i64), !dbg !718
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !723
  br i1 %62, label %65, label %63, !dbg !723

; <label>:63:                                     ; preds = %60
  %64 = call i64 @ukplat_monotonic_clock() #9, !dbg !724
  store i64 %64, i64* %5, align 8, !dbg !724, !tbaa !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !724
  br label %74, !dbg !724

; <label>:65:                                     ; preds = %60, %57
  %66 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !727, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !731
  %67 = and i64 %66, -65536, !dbg !733
  %68 = or i64 %67, 4097, !dbg !733
  %69 = add nsw i64 %68, -1, !dbg !733
  %70 = inttoptr i64 %69 to i32*, !dbg !734
  %71 = load i32, i32* %70, align 4096, !dbg !735, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !736
  %72 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %71, i64 ()* nonnull @ukplat_monotonic_clock) #6, !dbg !737, !srcloc !738
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %5, i64 %72) #6, !dbg !739, !srcloc !743
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %73 = load i64, i64* %5, align 8, !dbg !744, !tbaa !671
  br label %74

; <label>:74:                                     ; preds = %65, %63
  %75 = phi i64 [ %73, %65 ], [ %64, %63 ], !dbg !744
  %76 = load i64, i64* %4, align 8, !dbg !745, !tbaa !671
  %77 = sub i64 %75, %76, !dbg !746
  store i64 %77, i64* %4, align 8, !dbg !747, !tbaa !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !748
  br label %105, !dbg !748

; <label>:78:                                     ; preds = %20
  br i1 %23, label %79, label %88, !dbg !749

; <label>:79:                                     ; preds = %78
  %80 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !750, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !753
  %81 = icmp ugt i64 %80, ptrtoint ([0 x i8]* @_end to i64), !dbg !749
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !754
  br i1 %81, label %88, label %82, !dbg !754

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !755
  %84 = load %struct.uk_mbox*, %struct.uk_mbox** %83, align 8, !dbg !755, !tbaa !247
  %85 = zext i32 %2 to i64, !dbg !755
  %86 = mul nuw nsw i64 %85, 1000000, !dbg !755
  %87 = call i64 @uk_mbox_recv_to(%struct.uk_mbox* %84, i8** %12, i64 %86) #9, !dbg !755
  store i64 %87, i64* %4, align 8, !dbg !755, !tbaa !671
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !755
  br label %102, !dbg !755

; <label>:88:                                     ; preds = %79, %78
  %89 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !757, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !761
  %90 = and i64 %89, -65536, !dbg !763
  %91 = or i64 %90, 4097, !dbg !763
  %92 = add nsw i64 %91, -1, !dbg !763
  %93 = inttoptr i64 %92 to i32*, !dbg !764
  %94 = load i32, i32* %93, align 4096, !dbg !765, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !766
  %95 = zext i32 %2 to i64, !dbg !767
  %96 = mul nuw nsw i64 %95, 1000000, !dbg !767
  %97 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !767
  %98 = bitcast %struct.uk_mbox** %97 to i64*, !dbg !767
  %99 = load i64, i64* %98, align 8, !dbg !767, !tbaa !247
  %100 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_to\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %99, i64 %11, i64 %96, i32 %94, i64 (%struct.uk_mbox*, i8**, i64)* nonnull @uk_mbox_recv_to) #6, !dbg !767, !srcloc !768
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %100) #6, !dbg !769, !srcloc !773
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %101 = load i64, i64* %4, align 8, !dbg !774, !tbaa !671
  br label %102

; <label>:102:                                    ; preds = %88, %82
  %103 = phi i64 [ %101, %88 ], [ %87, %82 ], !dbg !774
  %104 = icmp eq i64 %103, -1, !dbg !774
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !776
  br i1 %104, label %115, label %105, !dbg !776, !prof !209

; <label>:105:                                    ; preds = %102, %74
  %106 = phi i64 [ %103, %102 ], [ %77, %74 ]
  %107 = icmp eq i8** %1, null, !dbg !777
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !779
  br i1 %107, label %112, label %108, !dbg !779

; <label>:108:                                    ; preds = %105
  %109 = inttoptr i64 %11 to i64*, !dbg !780
  %110 = load i64, i64* %109, align 8, !dbg !780, !tbaa !213
  %111 = bitcast i8** %1 to i64*, !dbg !781
  store i64 %110, i64* %111, align 8, !dbg !781, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !782
  br label %112, !dbg !782

; <label>:112:                                    ; preds = %105, %108
  %113 = udiv i64 %106, 1000000, !dbg !783
  %114 = trunc i64 %113 to i32, !dbg !784
  br label %115, !dbg !785

; <label>:115:                                    ; preds = %102, %112
  %116 = phi i32 [ %114, %112 ], [ -1, %102 ], !dbg !786
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !786
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !787
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6, !dbg !787
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !787
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !787
  ret i32 %116, !dbg !787
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() #4

; Function Attrs: noredzone
declare dso_local void @uk_mbox_recv(%struct.uk_mbox*, i8**) #4

; Function Attrs: noredzone
declare dso_local i64 @uk_mbox_recv_to(%struct.uk_mbox*, i8**, i64) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* readonly, i8**) local_unnamed_addr #0 !dbg !788 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i8** %3 to i8*, !dbg !806
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !806
  %6 = ptrtoint i8** %3 to i64, !dbg !807
  %7 = add i64 %6, 65536, !dbg !808
  %8 = inttoptr i64 %7 to i8**, !dbg !809
  %9 = bitcast i32* %4 to i8*, !dbg !811
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !811
  %10 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !816
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !817
  br i1 %10, label %11, label %12, !dbg !817

; <label>:11:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !818
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br label %16, !dbg !820

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !821
  %14 = load i32, i32* %13, align 8, !dbg !821, !tbaa !278
  %15 = icmp eq i32 %14, 1, !dbg !822
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !823
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !819
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !820
  br i1 %15, label %17, label %16, !dbg !820, !prof !341

; <label>:16:                                     ; preds = %12, %11
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !824
  call void @ukplat_terminate(i32 3) #8, !dbg !824
  unreachable

; <label>:17:                                     ; preds = %12
  %18 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !826, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !829
  %19 = icmp ult i64 %18, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  br i1 %19, label %27, label %20, !dbg !830

; <label>:20:                                     ; preds = %17
  %21 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !831, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !834
  %22 = icmp ugt i64 %21, ptrtoint ([0 x i8]* @_end to i64), !dbg !830
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !835
  br i1 %22, label %27, label %23, !dbg !835

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !836
  %25 = load %struct.uk_mbox*, %struct.uk_mbox** %24, align 8, !dbg !836, !tbaa !247
  %26 = call i32 @uk_mbox_recv_try(%struct.uk_mbox* %25, i8** %8) #9, !dbg !836
  store i32 %26, i32* %4, align 4, !dbg !836, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !836
  br label %39, !dbg !836

; <label>:27:                                     ; preds = %20, %17
  %28 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !839, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !843
  %29 = and i64 %28, -65536, !dbg !845
  %30 = or i64 %29, 4097, !dbg !845
  %31 = add nsw i64 %30, -1, !dbg !845
  %32 = inttoptr i64 %31 to i32*, !dbg !846
  %33 = load i32, i32* %32, align 4096, !dbg !847, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  %34 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !849
  %35 = bitcast %struct.uk_mbox** %34 to i64*, !dbg !849
  %36 = load i64, i64* %35, align 8, !dbg !849, !tbaa !247
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %36, i64 %7, i32 %33, i32 (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv_try) #6, !dbg !849, !srcloc !850
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %37) #6, !dbg !851, !srcloc !854
  store volatile i32 42, i32* @__A_VARIABLE, align 4
  %38 = load i32, i32* %4, align 4, !dbg !855, !tbaa !263
  br label %39

; <label>:39:                                     ; preds = %27, %23
  %40 = phi i32 [ %38, %27 ], [ %26, %23 ], !dbg !855
  %41 = icmp slt i32 %40, 0, !dbg !857
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !858
  br i1 %41, label %48, label %42, !dbg !858

; <label>:42:                                     ; preds = %39
  %43 = icmp eq i8** %1, null, !dbg !859
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !861
  br i1 %43, label %48, label %44, !dbg !861

; <label>:44:                                     ; preds = %42
  %45 = inttoptr i64 %7 to i64*, !dbg !862
  %46 = load i64, i64* %45, align 8, !dbg !862, !tbaa !213
  %47 = bitcast i8** %1 to i64*, !dbg !863
  store i64 %46, i64* %47, align 8, !dbg !863, !tbaa !213
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !864
  br label %48, !dbg !864

; <label>:48:                                     ; preds = %44, %42, %39
  %49 = phi i32 [ -1, %39 ], [ 0, %42 ], [ 0, %44 ], !dbg !865
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !866
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !867
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !867
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !867
  ret i32 %49, !dbg !867
}

; Function Attrs: noredzone
declare dso_local i32 @uk_mbox_recv_try(%struct.uk_mbox*, i8**) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #6

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #6

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { nounwind }
attributes #7 = { nobuiltin noredzone }
attributes #8 = { nobuiltin noredzone noreturn nounwind }
attributes #9 = { nobuiltin noredzone nounwind }

!llvm.module.flags = !{!181, !182, !183}
!llvm.ident = !{!184}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 90, type: !129, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "sys_mbox_post", scope: !3, file: !3, line: 85, type: !4, isLocal: false, isDefinition: true, scopeLine: 86, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !164)
!3 = !DIFile(filename: "/root/.unikraft/libs/lwip/mailbox.c", directory: "/root/.unikraft/apps/redis/build")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !21}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "sys_mbox_t", file: !8, line: 78, baseType: !9)
!8 = !DIFile(filename: "/root/.unikraft/libs/lwip/include/arch/sys_arch.h", directory: "/root/.unikraft/apps/redis/build")
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !8, line: 74, size: 192, elements: !10)
!10 = !{!11, !77, !81}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !9, file: !8, line: 75, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uk_alloc", file: !14, line: 77, size: 832, elements: !15)
!14 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukalloc/include/uk/alloc.h", directory: "/root/.unikraft/apps/redis/build")
!15 = !{!16, !25, !30, !35, !42, !44, !49, !50, !51, !56, !61, !66, !67, !68}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "malloc", scope: !13, file: !14, line: 79, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_malloc_func_t", file: !14, line: 54, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DISubroutineType(types: !20)
!20 = !{!21, !12, !22}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !23, line: 58, baseType: !24)
!23 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stddef.h", directory: "/root/.unikraft/apps/redis/build")
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "calloc", scope: !13, file: !14, line: 80, baseType: !26, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_calloc_func_t", file: !14, line: 56, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{!21, !12, !22, !22}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "realloc", scope: !13, file: !14, line: 81, baseType: !31, size: 64, offset: 128)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_realloc_func_t", file: !14, line: 62, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DISubroutineType(types: !34)
!34 = !{!21, !12, !21, !22}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "posix_memalign", scope: !13, file: !14, line: 82, baseType: !36, size: 64, offset: 192)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_posix_memalign_func_t", file: !14, line: 58, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DISubroutineType(types: !39)
!39 = !{!40, !12, !41, !22, !22}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "memalign", scope: !13, file: !14, line: 83, baseType: !43, size: 64, offset: 256)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_memalign_func_t", file: !14, line: 60, baseType: !27)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !13, file: !14, line: 84, baseType: !45, size: 64, offset: 320)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_free_func_t", file: !14, line: 64, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !12, !21}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "free_backend", scope: !13, file: !14, line: 87, baseType: !45, size: 64, offset: 384)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "malloc_backend", scope: !13, file: !14, line: 88, baseType: !17, size: 64, offset: 448)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "palloc", scope: !13, file: !14, line: 92, baseType: !52, size: 64, offset: 512)
!52 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_palloc_func_t", file: !14, line: 66, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DISubroutineType(types: !55)
!55 = !{!21, !12, !24}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "pfree", scope: !13, file: !14, line: 93, baseType: !57, size: 64, offset: 576)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_pfree_func_t", file: !14, line: 68, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !12, !21, !24}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "addmem", scope: !13, file: !14, line: 99, baseType: !62, size: 64, offset: 640)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uk_alloc_addmem_func_t", file: !14, line: 70, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{!40, !12, !21, !22}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !13, file: !14, line: 100, baseType: !22, size: 64, offset: 704)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !13, file: !14, line: 103, baseType: !12, size: 64, offset: 768)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !13, file: !14, line: 104, baseType: !69, offset: 832)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !70, elements: !75)
!70 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !71, line: 20, baseType: !72)
!71 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/sys/_stdint.h", directory: "/root/.unikraft/apps/redis/build")
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !73, line: 41, baseType: !74)
!73 = !DIFile(filename: "/root/.unikraft/apps/redis/build/libnewlibc/origin/newlib-2.5.0.20170922/newlib/libc/include/machine/_default_types.h", directory: "/root/.unikraft/apps/redis/build")
!74 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!75 = !{!76}
!76 = !DISubrange(count: -1)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "mbox", scope: !9, file: !8, line: 76, baseType: !78, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "uk_mbox", file: !80, line: 48, flags: DIFlagFwdDecl)
!80 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukmpi/include/uk/mbox.h", directory: "/root/.unikraft/apps/redis/build")
!81 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !9, file: !8, line: 77, baseType: !40, size: 32, offset: 128)
!82 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !83, retainedTypes: !112, globals: !126)
!83 = !{!84, !92}
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ukplat_gstate", file: !85, line: 68, baseType: !86, size: 32, elements: !87)
!85 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/plat/bootstrap.h", directory: "/root/.unikraft/apps/redis/build")
!86 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "UKPLAT_HALT", value: 0, isUnsigned: true)
!89 = !DIEnumerator(name: "UKPLAT_RESTART", value: 1, isUnsigned: true)
!90 = !DIEnumerator(name: "UKPLAT_SUSPEND", value: 2, isUnsigned: true)
!91 = !DIEnumerator(name: "UKPLAT_CRASH", value: 3, isUnsigned: true)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 53, baseType: !40, size: 32, elements: !94)
!93 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/err.h", directory: "/root/.unikraft/apps/redis/build")
!94 = !{!95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111}
!95 = !DIEnumerator(name: "ERR_OK", value: 0)
!96 = !DIEnumerator(name: "ERR_MEM", value: -1)
!97 = !DIEnumerator(name: "ERR_BUF", value: -2)
!98 = !DIEnumerator(name: "ERR_TIMEOUT", value: -3)
!99 = !DIEnumerator(name: "ERR_RTE", value: -4)
!100 = !DIEnumerator(name: "ERR_INPROGRESS", value: -5)
!101 = !DIEnumerator(name: "ERR_VAL", value: -6)
!102 = !DIEnumerator(name: "ERR_WOULDBLOCK", value: -7)
!103 = !DIEnumerator(name: "ERR_USE", value: -8)
!104 = !DIEnumerator(name: "ERR_ALREADY", value: -9)
!105 = !DIEnumerator(name: "ERR_ISCONN", value: -10)
!106 = !DIEnumerator(name: "ERR_CONN", value: -11)
!107 = !DIEnumerator(name: "ERR_IF", value: -12)
!108 = !DIEnumerator(name: "ERR_ABRT", value: -13)
!109 = !DIEnumerator(name: "ERR_RST", value: -14)
!110 = !DIEnumerator(name: "ERR_CLSD", value: -15)
!111 = !DIEnumerator(name: "ERR_ARG", value: -16)
!112 = !{!24, !113, !41, !115, !117, !121, !125}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !71, line: 60, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !73, line: 105, baseType: !24)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !71, line: 82, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uintptr_t", file: !73, line: 232, baseType: !24)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nsec", file: !118, line: 48, baseType: !119)
!118 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/time.h", directory: "/root/.unikraft/apps/redis/build")
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !120, line: 129, baseType: !24)
!120 = !DIFile(filename: "/root/.unikraft/unikraft/include/uk/arch/types.h", directory: "/root/.unikraft/apps/redis/build")
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32_t", file: !122, line: 129, baseType: !123)
!122 = !DIFile(filename: "/root/.unikraft/apps/redis/build/liblwip/origin/lwip-2.1.2/src/include/lwip/arch.h", directory: "/root/.unikraft/apps/redis/build")
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !71, line: 48, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !73, line: 79, baseType: !86)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!126 = !{!127, !0, !133, !159}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__str", scope: !2, file: !3, line: 90, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 232, elements: !131)
!130 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!131 = !{!132}
!132 = !DISubrange(count: 29)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(name: "__str", scope: !135, file: !136, line: 198, type: !156, isLocal: true, isDefinition: true)
!135 = distinct !DISubprogram(name: "uk_pr_crit", scope: !136, file: !136, line: 194, type: !137, isLocal: true, isDefinition: true, scopeLine: 195, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !141)
!136 = !DIFile(filename: "/root/.unikraft/unikraft/lib/ukdebug/include/uk/print.h", directory: "/root/.unikraft/apps/redis/build")
!137 = !DISubroutineType(types: !138)
!138 = !{null, !139, null}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!141 = !{!142, !143}
!142 = !DILocalVariable(name: "fmt", arg: 1, scope: !135, file: !136, line: 194, type: !139)
!143 = !DILocalVariable(name: "argp", scope: !135, file: !136, line: 196, type: !144)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !145, line: 32, baseType: !146)
!145 = !DIFile(filename: "/root/.unikraft/libs/newlib/include/stdarg.h", directory: "/root/.unikraft/apps/redis/build")
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 196, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 192, elements: !154)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 196, size: 192, elements: !149)
!149 = !{!150, !151, !152, !153}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !148, file: !3, line: 196, baseType: !86, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !148, file: !3, line: 196, baseType: !86, size: 32, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !148, file: !3, line: 196, baseType: !21, size: 64, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !148, file: !3, line: 196, baseType: !21, size: 64, offset: 128)
!154 = !{!155}
!155 = !DISubrange(count: 1)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 64, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 8)
!159 = !DIGlobalVariableExpression(var: !160, expr: !DIExpression())
!160 = distinct !DIGlobalVariable(name: "__str", scope: !135, file: !136, line: 198, type: !161, isLocal: true, isDefinition: true)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !130, size: 80, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 10)
!164 = !{!165, !166, !167, !175}
!165 = !DILocalVariable(name: "mbox", arg: 1, scope: !2, file: !3, line: 85, type: !6)
!166 = !DILocalVariable(name: "msg", arg: 2, scope: !2, file: !3, line: 85, type: !21)
!167 = !DILocalVariable(name: "tid", scope: !168, file: !3, line: 90, type: !123)
!168 = distinct !DILexicalBlock(scope: !169, file: !3, line: 90, column: 3)
!169 = distinct !DILexicalBlock(scope: !170, file: !3, line: 90, column: 3)
!170 = distinct !DILexicalBlock(scope: !171, file: !3, line: 90, column: 3)
!171 = distinct !DILexicalBlock(scope: !172, file: !3, line: 90, column: 3)
!172 = distinct !DILexicalBlock(scope: !173, file: !3, line: 90, column: 3)
!173 = distinct !DILexicalBlock(scope: !174, file: !3, line: 89, column: 12)
!174 = distinct !DILexicalBlock(scope: !2, file: !3, line: 89, column: 6)
!175 = !DILocalVariable(name: "tid", scope: !176, file: !3, line: 95, type: !123)
!176 = distinct !DILexicalBlock(scope: !177, file: !3, line: 95, column: 2)
!177 = distinct !DILexicalBlock(scope: !178, file: !3, line: 95, column: 2)
!178 = distinct !DILexicalBlock(scope: !179, file: !3, line: 95, column: 2)
!179 = distinct !DILexicalBlock(scope: !180, file: !3, line: 95, column: 2)
!180 = distinct !DILexicalBlock(scope: !2, file: !3, line: 95, column: 2)
!181 = !{i32 2, !"Dwarf Version", i32 4}
!182 = !{i32 2, !"Debug Info Version", i32 3}
!183 = !{i32 1, !"wchar_size", i32 4}
!184 = !{!"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"}
!185 = distinct !DISubprogram(name: "sys_mbox_new", scope: !3, file: !3, line: 42, type: !186, isLocal: false, isDefinition: true, scopeLine: 43, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !190)
!186 = !DISubroutineType(types: !187)
!187 = !{!188, !6, !40}
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "err_t", file: !93, line: 96, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8_t", file: !122, line: 126, baseType: !70)
!190 = !{!191, !192, !193, !199}
!191 = !DILocalVariable(name: "mbox", arg: 1, scope: !185, file: !3, line: 42, type: !6)
!192 = !DILocalVariable(name: "size", arg: 2, scope: !185, file: !3, line: 42, type: !40)
!193 = !DILocalVariable(name: "tid", scope: !194, file: !3, line: 50, type: !123)
!194 = distinct !DILexicalBlock(scope: !195, file: !3, line: 50, column: 2)
!195 = distinct !DILexicalBlock(scope: !196, file: !3, line: 50, column: 2)
!196 = distinct !DILexicalBlock(scope: !197, file: !3, line: 50, column: 2)
!197 = distinct !DILexicalBlock(scope: !198, file: !3, line: 50, column: 2)
!198 = distinct !DILexicalBlock(scope: !185, file: !3, line: 50, column: 2)
!199 = !DILocalVariable(name: "_ret", scope: !194, file: !3, line: 50, type: !113)
!200 = !DILocation(line: 42, column: 32, scope: !185)
!201 = !DILocation(line: 42, column: 42, scope: !185)
!202 = !DILocation(line: 44, column: 11, scope: !203)
!203 = distinct !DILexicalBlock(scope: !185, file: !3, line: 44, column: 6)
!204 = !DILocation(line: 44, column: 6, scope: !185)
!205 = !DILocation(line: 47, column: 2, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !3, line: 47, column: 2)
!207 = distinct !DILexicalBlock(scope: !185, file: !3, line: 47, column: 2)
!208 = !DILocation(line: 47, column: 2, scope: !207)
!209 = !{!"branch_weights", i32 1, i32 2000}
!210 = !DILocation(line: 47, column: 2, scope: !211)
!211 = distinct !DILexicalBlock(scope: !206, file: !3, line: 47, column: 2)
!212 = !DILocation(line: 48, column: 12, scope: !185)
!213 = !{!214, !214, i64 0}
!214 = !{!"any pointer", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C/C++ TBAA"}
!217 = !DILocation(line: 48, column: 8, scope: !185)
!218 = !DILocation(line: 48, column: 10, scope: !185)
!219 = !{!220, !214, i64 0}
!220 = !{!"", !214, i64 0, !214, i64 8, !221, i64 16}
!221 = !{!"int", !215, i64 0}
!222 = !DILocation(line: 49, column: 2, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !3, line: 49, column: 2)
!224 = distinct !DILexicalBlock(scope: !185, file: !3, line: 49, column: 2)
!225 = !DILocation(line: 49, column: 2, scope: !224)
!226 = !DILocation(line: 49, column: 2, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !3, line: 49, column: 2)
!228 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !235)
!229 = distinct !DISubprogram(name: "ukarch_read_sp", scope: !230, file: !230, line: 116, type: !231, isLocal: true, isDefinition: true, scopeLine: 117, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !233)
!230 = !DIFile(filename: "/root/.unikraft/unikraft/arch/x86/x86_64/include/uk/asm/lcpu.h", directory: "/root/.unikraft/apps/redis/build")
!231 = !DISubroutineType(types: !232)
!232 = !{!24}
!233 = !{!234}
!234 = !DILocalVariable(name: "sp", scope: !229, file: !230, line: 118, type: !24)
!235 = distinct !DILocation(line: 50, column: 2, scope: !197)
!236 = !{i32 424980}
!237 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !235)
!238 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !235)
!239 = !DILocation(line: 50, column: 2, scope: !197)
!240 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !241)
!241 = distinct !DILocation(line: 50, column: 2, scope: !197)
!242 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !241)
!243 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !241)
!244 = !DILocation(line: 50, column: 2, scope: !198)
!245 = !DILocation(line: 50, column: 2, scope: !246)
!246 = distinct !DILexicalBlock(scope: !197, file: !3, line: 50, column: 2)
!247 = !{!220, !214, i64 8}
!248 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !249)
!249 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !256)
!250 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !251, file: !251, line: 47, type: !252, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !254)
!251 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!252 = !DISubroutineType(types: !253)
!253 = !{!40}
!254 = !{!255}
!255 = !DILocalVariable(name: "sp", scope: !250, file: !251, line: 49, type: !24)
!256 = distinct !DILocation(line: 50, column: 2, scope: !194)
!257 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !249)
!258 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !249)
!259 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !256)
!260 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !256)
!261 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !256)
!262 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !256)
!263 = !{!221, !221, i64 0}
!264 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !256)
!265 = !DILocation(line: 50, column: 2, scope: !194)
!266 = !{i32 -2146442721, i32 -2146442708, i32 -2146442683, i32 -2146442659, i32 -2146442634, i32 -2146442559, i32 -2146442534, i32 -2146442390, i32 -2146439164, i32 -2146439075, i32 -2146438954, i32 -2146438859, i32 -2146438758, i32 -2146438731, i32 -2146438648, i32 -2146438559, i32 -2146438438, i32 -2146438338, i32 -2146438232, i32 -2146438124, i32 -2146442098, i32 -2146442045, i32 -2146442014, i32 -2146441983, i32 -2146441962, i32 -2146441940, i32 -2146441891, i32 -2146441870, i32 -2146438041, i32 -2146437952, i32 -2146437831, i32 -2146437732, i32 -2146437626, i32 -2146437524, i32 -2146437491, i32 -2146437418, i32 -2146437350, i32 -2146441563, i32 -2146441504, i32 -2146441451, i32 -2146441420, i32 -2146441389, i32 -2146441368, i32 -2146441346, i32 -2146441297, i32 -2146441276, i32 -2146437300, i32 -2146437211, i32 -2146437090, i32 -2146436991, i32 -2146436885, i32 -2146436783, i32 -2146436750, i32 -2146436667, i32 -2146436578, i32 -2146436457, i32 -2146436357, i32 -2146436331, i32 -2146436228, i32 -2146436202, i32 -2146441018, i32 -2146440951, i32 -2146440926, i32 -2146440862, i32 -2146440780, i32 -2146440757, i32 -2146440732, i32 -2146440707}
!267 = !DILocation(line: 50, column: 2, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 50, column: 2)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 50, column: 2)
!270 = distinct !DILexicalBlock(scope: !194, file: !3, line: 50, column: 2)
!271 = !{i32 -2146439485, i32 -2146439469}
!272 = !DILocation(line: 52, column: 13, scope: !273)
!273 = distinct !DILexicalBlock(scope: !185, file: !3, line: 52, column: 6)
!274 = !DILocation(line: 52, column: 7, scope: !273)
!275 = !DILocation(line: 52, column: 6, scope: !185)
!276 = !DILocation(line: 54, column: 8, scope: !185)
!277 = !DILocation(line: 54, column: 14, scope: !185)
!278 = !{!220, !221, i64 16}
!279 = !DILocation(line: 55, column: 2, scope: !185)
!280 = !DILocation(line: 0, scope: !273)
!281 = !DILocation(line: 56, column: 1, scope: !185)
!282 = !DILocation(line: 196, column: 2, scope: !135)
!283 = !DILocation(line: 196, column: 10, scope: !135)
!284 = !DILocation(line: 197, column: 2, scope: !135)
!285 = !DILocation(line: 198, column: 2, scope: !286)
!286 = distinct !DILexicalBlock(scope: !287, file: !136, line: 198, column: 2)
!287 = distinct !DILexicalBlock(scope: !135, file: !136, line: 198, column: 2)
!288 = !DILocation(line: 199, column: 2, scope: !135)
!289 = !DILocation(line: 200, column: 1, scope: !135)
!290 = distinct !DISubprogram(name: "sys_mbox_valid", scope: !3, file: !3, line: 58, type: !291, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !293)
!291 = !DISubroutineType(types: !292)
!292 = !{!40, !6}
!293 = !{!294}
!294 = !DILocalVariable(name: "mbox", arg: 1, scope: !290, file: !3, line: 58, type: !6)
!295 = !DILocation(line: 58, column: 32, scope: !290)
!296 = !DILocation(line: 60, column: 7, scope: !297)
!297 = distinct !DILexicalBlock(scope: !290, file: !3, line: 60, column: 6)
!298 = !DILocation(line: 60, column: 6, scope: !290)
!299 = !DILocation(line: 62, column: 16, scope: !290)
!300 = !DILocation(line: 62, column: 22, scope: !290)
!301 = !DILocation(line: 62, column: 2, scope: !290)
!302 = !DILocation(line: 0, scope: !297)
!303 = !DILocation(line: 63, column: 1, scope: !290)
!304 = distinct !DISubprogram(name: "sys_mbox_set_invalid", scope: !3, file: !3, line: 65, type: !305, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !307)
!305 = !DISubroutineType(types: !306)
!306 = !{null, !6}
!307 = !{!308}
!308 = !DILocalVariable(name: "mbox", arg: 1, scope: !304, file: !3, line: 65, type: !6)
!309 = !DILocation(line: 65, column: 39, scope: !304)
!310 = !DILocation(line: 67, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !312, file: !3, line: 67, column: 2)
!312 = distinct !DILexicalBlock(scope: !304, file: !3, line: 67, column: 2)
!313 = !DILocation(line: 67, column: 2, scope: !312)
!314 = !DILocation(line: 67, column: 2, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !3, line: 67, column: 2)
!316 = !DILocation(line: 68, column: 8, scope: !304)
!317 = !DILocation(line: 68, column: 14, scope: !304)
!318 = !DILocation(line: 69, column: 1, scope: !304)
!319 = distinct !DISubprogram(name: "sys_mbox_free", scope: !3, file: !3, line: 76, type: !305, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !320)
!320 = !{!321, !322}
!321 = !DILocalVariable(name: "mbox", arg: 1, scope: !319, file: !3, line: 76, type: !6)
!322 = !DILocalVariable(name: "tid", scope: !323, file: !3, line: 80, type: !123)
!323 = distinct !DILexicalBlock(scope: !324, file: !3, line: 80, column: 2)
!324 = distinct !DILexicalBlock(scope: !325, file: !3, line: 80, column: 2)
!325 = distinct !DILexicalBlock(scope: !326, file: !3, line: 80, column: 2)
!326 = distinct !DILexicalBlock(scope: !327, file: !3, line: 80, column: 2)
!327 = distinct !DILexicalBlock(scope: !319, file: !3, line: 80, column: 2)
!328 = !DILocation(line: 76, column: 32, scope: !319)
!329 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !330)
!330 = distinct !DILocation(line: 78, column: 2, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !3, line: 78, column: 2)
!332 = distinct !DILexicalBlock(scope: !319, file: !3, line: 78, column: 2)
!333 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !330)
!334 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !330)
!335 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !330)
!336 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !330)
!337 = !DILocation(line: 78, column: 2, scope: !332)
!338 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !330)
!339 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !330)
!340 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !330)
!341 = !{!"branch_weights", i32 2000, i32 1}
!342 = !DILocation(line: 78, column: 2, scope: !343)
!343 = distinct !DILexicalBlock(scope: !331, file: !3, line: 78, column: 2)
!344 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !345)
!345 = distinct !DILocation(line: 80, column: 2, scope: !326)
!346 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !345)
!347 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !345)
!348 = !DILocation(line: 80, column: 2, scope: !326)
!349 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !350)
!350 = distinct !DILocation(line: 80, column: 2, scope: !326)
!351 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !350)
!352 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !350)
!353 = !DILocation(line: 80, column: 2, scope: !327)
!354 = !DILocation(line: 80, column: 2, scope: !355)
!355 = distinct !DILexicalBlock(scope: !326, file: !3, line: 80, column: 2)
!356 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !357)
!357 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !358)
!358 = distinct !DILocation(line: 80, column: 2, scope: !323)
!359 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !357)
!360 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !357)
!361 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !358)
!362 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !358)
!363 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !358)
!364 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !358)
!365 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !358)
!366 = !DILocation(line: 80, column: 2, scope: !323)
!367 = !{i32 -2146433594, i32 -2146433581, i32 -2146433556, i32 -2146433532, i32 -2146433507, i32 -2146433432, i32 -2146433407, i32 -2146433263, i32 -2146431020, i32 -2146430931, i32 -2146430810, i32 -2146430715, i32 -2146430614, i32 -2146430587, i32 -2146430504, i32 -2146430415, i32 -2146430294, i32 -2146430194, i32 -2146430088, i32 -2146429980, i32 -2146432971, i32 -2146432918, i32 -2146432887, i32 -2146432856, i32 -2146432835, i32 -2146432813, i32 -2146432764, i32 -2146432743, i32 -2146429897, i32 -2146429808, i32 -2146429687, i32 -2146429588, i32 -2146429482, i32 -2146429380, i32 -2146429347, i32 -2146429274, i32 -2146429206, i32 -2146432366, i32 -2146432313, i32 -2146432282, i32 -2146432251, i32 -2146432230, i32 -2146432208, i32 -2146432159, i32 -2146432138, i32 -2146429158, i32 -2146429069, i32 -2146428948, i32 -2146428849, i32 -2146428743, i32 -2146428641, i32 -2146428608, i32 -2146428525, i32 -2146428436, i32 -2146428315, i32 -2146428215, i32 -2146428189, i32 -2146428086, i32 -2146428060, i32 -2146431880, i32 -2146431813, i32 -2146431788, i32 -2146431724, i32 -2146431608, i32 -2146431583, i32 -2146431558}
!368 = !DILocation(line: 65, column: 39, scope: !304, inlinedAt: !369)
!369 = distinct !DILocation(line: 81, column: 2, scope: !319)
!370 = !DILocation(line: 67, column: 2, scope: !312, inlinedAt: !369)
!371 = !DILocation(line: 68, column: 14, scope: !304, inlinedAt: !369)
!372 = !DILocation(line: 69, column: 1, scope: !304, inlinedAt: !369)
!373 = !DILocation(line: 82, column: 1, scope: !319)
!374 = !DILocation(line: 85, column: 32, scope: !2)
!375 = !DILocation(line: 85, column: 44, scope: !2)
!376 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !377)
!377 = distinct !DILocation(line: 87, column: 2, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !3, line: 87, column: 2)
!379 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 2)
!380 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !377)
!381 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !377)
!382 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !377)
!383 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !377)
!384 = !DILocation(line: 87, column: 2, scope: !379)
!385 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !377)
!386 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !377)
!387 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !377)
!388 = !DILocation(line: 87, column: 2, scope: !389)
!389 = distinct !DILexicalBlock(scope: !378, file: !3, line: 87, column: 2)
!390 = !DILocation(line: 89, column: 7, scope: !174)
!391 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !392)
!392 = distinct !DILocation(line: 0, scope: !171)
!393 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !392)
!394 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !392)
!395 = !DILocation(line: 0, scope: !171)
!396 = !DILocation(line: 89, column: 6, scope: !2)
!397 = !DILocation(line: 0, scope: !179)
!398 = !DILocation(line: 90, column: 3, scope: !171)
!399 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !400)
!400 = distinct !DILocation(line: 90, column: 3, scope: !171)
!401 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !400)
!402 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !400)
!403 = !DILocation(line: 90, column: 3, scope: !172)
!404 = !DILocation(line: 90, column: 3, scope: !405)
!405 = distinct !DILexicalBlock(scope: !171, file: !3, line: 90, column: 3)
!406 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !407)
!407 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !408)
!408 = distinct !DILocation(line: 90, column: 3, scope: !168)
!409 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !407)
!410 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !407)
!411 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !408)
!412 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !408)
!413 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !408)
!414 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !408)
!415 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !408)
!416 = !DILocation(line: 90, column: 3, scope: !168)
!417 = !{i32 -2146425087, i32 -2146425074, i32 -2146425049, i32 -2146425025, i32 -2146425000, i32 -2146424925, i32 -2146424900, i32 -2146424756, i32 -2146422247, i32 -2146422158, i32 -2146422037, i32 -2146421942, i32 -2146421841, i32 -2146421814, i32 -2146421731, i32 -2146421642, i32 -2146421521, i32 -2146421421, i32 -2146421315, i32 -2146421207, i32 -2146424468, i32 -2146424415, i32 -2146424384, i32 -2146424353, i32 -2146424332, i32 -2146424310, i32 -2146424261, i32 -2146424240, i32 -2146421124, i32 -2146421035, i32 -2146420914, i32 -2146420815, i32 -2146420709, i32 -2146420607, i32 -2146420574, i32 -2146420501, i32 -2146420433, i32 -2146423866, i32 -2146423813, i32 -2146423782, i32 -2146423751, i32 -2146423730, i32 -2146423708, i32 -2146423659, i32 -2146423638, i32 -2146420386, i32 -2146420297, i32 -2146420176, i32 -2146420077, i32 -2146419971, i32 -2146419869, i32 -2146419836, i32 -2146419753, i32 -2146419664, i32 -2146419543, i32 -2146419443, i32 -2146419417, i32 -2146419314, i32 -2146419288, i32 -2146423380, i32 -2146423313, i32 -2146423288, i32 -2146423224, i32 -2146423108, i32 -2146423083, i32 -2146423058}
!418 = !DILocation(line: 95, column: 2, scope: !179)
!419 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !420)
!420 = distinct !DILocation(line: 95, column: 2, scope: !179)
!421 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !420)
!422 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !420)
!423 = !DILocation(line: 95, column: 2, scope: !180)
!424 = !DILocation(line: 95, column: 2, scope: !425)
!425 = distinct !DILexicalBlock(scope: !179, file: !3, line: 95, column: 2)
!426 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !427)
!427 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !428)
!428 = distinct !DILocation(line: 95, column: 2, scope: !176)
!429 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !427)
!430 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !427)
!431 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !428)
!432 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !428)
!433 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !428)
!434 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !428)
!435 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !428)
!436 = !DILocation(line: 95, column: 2, scope: !176)
!437 = !{i32 -2146417366, i32 -2146417353, i32 -2146417328, i32 -2146417304, i32 -2146417279, i32 -2146417204, i32 -2146417179, i32 -2146417035, i32 -2146414796, i32 -2146414707, i32 -2146414586, i32 -2146414491, i32 -2146414390, i32 -2146414363, i32 -2146414280, i32 -2146414191, i32 -2146414070, i32 -2146413970, i32 -2146413864, i32 -2146413756, i32 -2146416743, i32 -2146416690, i32 -2146416659, i32 -2146416628, i32 -2146416607, i32 -2146416585, i32 -2146416536, i32 -2146416515, i32 -2146413673, i32 -2146413584, i32 -2146413463, i32 -2146413364, i32 -2146413258, i32 -2146413156, i32 -2146413123, i32 -2146413050, i32 -2146412982, i32 -2146416138, i32 -2146416085, i32 -2146416054, i32 -2146416023, i32 -2146416002, i32 -2146415980, i32 -2146415931, i32 -2146415910, i32 -2146412934, i32 -2146412845, i32 -2146412724, i32 -2146412625, i32 -2146412519, i32 -2146412417, i32 -2146412384, i32 -2146412301, i32 -2146412212, i32 -2146412091, i32 -2146411991, i32 -2146411965, i32 -2146411862, i32 -2146411836, i32 -2146415652, i32 -2146415585, i32 -2146415560, i32 -2146415496, i32 -2146415380, i32 -2146415355, i32 -2146415330}
!438 = !DILocation(line: 96, column: 1, scope: !2)
!439 = distinct !DISubprogram(name: "uk_pr_debug", scope: !136, file: !136, line: 162, type: !137, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !440)
!440 = !{!441, !442}
!441 = !DILocalVariable(name: "fmt", arg: 1, scope: !439, file: !136, line: 162, type: !139)
!442 = !DILocalVariable(name: "argp", scope: !439, file: !136, line: 164, type: !144)
!443 = !DILocation(line: 162, column: 44, scope: !439)
!444 = !DILocation(line: 164, column: 2, scope: !439)
!445 = !DILocation(line: 164, column: 10, scope: !439)
!446 = !DILocation(line: 165, column: 2, scope: !439)
!447 = !DILocalVariable(name: "fmt", arg: 1, scope: !448, file: !136, line: 97, type: !139)
!448 = distinct !DISubprogram(name: "uk_vprintd", scope: !136, file: !136, line: 97, type: !449, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !452)
!449 = !DISubroutineType(types: !450)
!450 = !{null, !139, !451}
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!452 = !{!447, !453}
!453 = !DILocalVariable(name: "ap", arg: 2, scope: !448, file: !136, line: 97, type: !451)
!454 = !DILocation(line: 97, column: 43, scope: !448, inlinedAt: !455)
!455 = distinct !DILocation(line: 166, column: 2, scope: !439)
!456 = !DILocation(line: 97, column: 65, scope: !448, inlinedAt: !455)
!457 = !DILocation(line: 98, column: 2, scope: !448, inlinedAt: !455)
!458 = !DILocation(line: 167, column: 2, scope: !439)
!459 = !DILocation(line: 168, column: 1, scope: !439)
!460 = distinct !DISubprogram(name: "sys_mbox_trypost", scope: !3, file: !3, line: 99, type: !461, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !463)
!461 = !DISubroutineType(types: !462)
!462 = !{!188, !6, !21}
!463 = !{!464, !465, !466, !467, !473}
!464 = !DILocalVariable(name: "mbox", arg: 1, scope: !460, file: !3, line: 99, type: !6)
!465 = !DILocalVariable(name: "msg", arg: 2, scope: !460, file: !3, line: 99, type: !21)
!466 = !DILocalVariable(name: "ret", scope: !460, file: !3, line: 102, type: !40)
!467 = !DILocalVariable(name: "tid", scope: !468, file: !3, line: 104, type: !123)
!468 = distinct !DILexicalBlock(scope: !469, file: !3, line: 104, column: 2)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 104, column: 2)
!470 = distinct !DILexicalBlock(scope: !471, file: !3, line: 104, column: 2)
!471 = distinct !DILexicalBlock(scope: !472, file: !3, line: 104, column: 2)
!472 = distinct !DILexicalBlock(scope: !460, file: !3, line: 104, column: 2)
!473 = !DILocalVariable(name: "_ret", scope: !468, file: !3, line: 104, type: !113)
!474 = !DILocation(line: 99, column: 36, scope: !460)
!475 = !DILocation(line: 99, column: 48, scope: !460)
!476 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !477)
!477 = distinct !DILocation(line: 101, column: 2, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 101, column: 2)
!479 = distinct !DILexicalBlock(scope: !460, file: !3, line: 101, column: 2)
!480 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !477)
!481 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !477)
!482 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !477)
!483 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !477)
!484 = !DILocation(line: 101, column: 2, scope: !479)
!485 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !477)
!486 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !477)
!487 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !477)
!488 = !DILocation(line: 101, column: 2, scope: !489)
!489 = distinct !DILexicalBlock(scope: !478, file: !3, line: 101, column: 2)
!490 = !DILocation(line: 102, column: 2, scope: !460)
!491 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !492)
!492 = distinct !DILocation(line: 104, column: 2, scope: !471)
!493 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !492)
!494 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !492)
!495 = !DILocation(line: 104, column: 2, scope: !471)
!496 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !497)
!497 = distinct !DILocation(line: 104, column: 2, scope: !471)
!498 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !497)
!499 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !497)
!500 = !DILocation(line: 104, column: 2, scope: !472)
!501 = !DILocation(line: 104, column: 2, scope: !502)
!502 = distinct !DILexicalBlock(scope: !471, file: !3, line: 104, column: 2)
!503 = !DILocation(line: 102, column: 6, scope: !460)
!504 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !505)
!505 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !506)
!506 = distinct !DILocation(line: 104, column: 2, scope: !468)
!507 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !505)
!508 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !505)
!509 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !506)
!510 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !506)
!511 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !506)
!512 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !506)
!513 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !506)
!514 = !DILocation(line: 104, column: 2, scope: !468)
!515 = !{i32 -2146409419, i32 -2146409406, i32 -2146409381, i32 -2146409357, i32 -2146409332, i32 -2146409257, i32 -2146409232, i32 -2146409088, i32 -2146405912, i32 -2146405823, i32 -2146405702, i32 -2146405607, i32 -2146405506, i32 -2146405479, i32 -2146405396, i32 -2146405307, i32 -2146405186, i32 -2146405086, i32 -2146404980, i32 -2146404872, i32 -2146408796, i32 -2146408743, i32 -2146408712, i32 -2146408681, i32 -2146408660, i32 -2146408638, i32 -2146408589, i32 -2146408568, i32 -2146404789, i32 -2146404700, i32 -2146404579, i32 -2146404480, i32 -2146404374, i32 -2146404272, i32 -2146404239, i32 -2146404166, i32 -2146404098, i32 -2146408261, i32 -2146408202, i32 -2146408149, i32 -2146408118, i32 -2146408087, i32 -2146408066, i32 -2146408044, i32 -2146407995, i32 -2146407974, i32 -2146404046, i32 -2146403957, i32 -2146403836, i32 -2146403737, i32 -2146403631, i32 -2146403529, i32 -2146403496, i32 -2146403413, i32 -2146403324, i32 -2146403203, i32 -2146403103, i32 -2146403077, i32 -2146402974, i32 -2146402948, i32 -2146407716, i32 -2146407649, i32 -2146407624, i32 -2146407560, i32 -2146407478, i32 -2146407455, i32 -2146407430, i32 -2146407405}
!516 = !DILocation(line: 104, column: 2, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 104, column: 2)
!518 = distinct !DILexicalBlock(scope: !468, file: !3, line: 104, column: 2)
!519 = !{i32 -2146406390, i32 -2146406373}
!520 = !DILocation(line: 106, column: 6, scope: !521)
!521 = distinct !DILexicalBlock(scope: !460, file: !3, line: 106, column: 6)
!522 = !DILocation(line: 106, column: 6, scope: !460)
!523 = !DILocation(line: 0, scope: !460)
!524 = !DILocation(line: 107, column: 3, scope: !521)
!525 = !DILocation(line: 109, column: 1, scope: !460)
!526 = distinct !DISubprogram(name: "sys_mbox_trypost_fromisr", scope: !3, file: !3, line: 112, type: !461, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !527)
!527 = !{!528, !529, !530, !531, !537}
!528 = !DILocalVariable(name: "mbox", arg: 1, scope: !526, file: !3, line: 112, type: !6)
!529 = !DILocalVariable(name: "msg", arg: 2, scope: !526, file: !3, line: 112, type: !21)
!530 = !DILocalVariable(name: "ret", scope: !526, file: !3, line: 115, type: !40)
!531 = !DILocalVariable(name: "tid", scope: !532, file: !3, line: 117, type: !123)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 117, column: 2)
!533 = distinct !DILexicalBlock(scope: !534, file: !3, line: 117, column: 2)
!534 = distinct !DILexicalBlock(scope: !535, file: !3, line: 117, column: 2)
!535 = distinct !DILexicalBlock(scope: !536, file: !3, line: 117, column: 2)
!536 = distinct !DILexicalBlock(scope: !526, file: !3, line: 117, column: 2)
!537 = !DILocalVariable(name: "_ret", scope: !532, file: !3, line: 117, type: !113)
!538 = !DILocation(line: 112, column: 44, scope: !526)
!539 = !DILocation(line: 112, column: 56, scope: !526)
!540 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !541)
!541 = distinct !DILocation(line: 114, column: 2, scope: !542)
!542 = distinct !DILexicalBlock(scope: !543, file: !3, line: 114, column: 2)
!543 = distinct !DILexicalBlock(scope: !526, file: !3, line: 114, column: 2)
!544 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !541)
!545 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !541)
!546 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !541)
!547 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !541)
!548 = !DILocation(line: 114, column: 2, scope: !543)
!549 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !541)
!550 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !541)
!551 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !541)
!552 = !DILocation(line: 114, column: 2, scope: !553)
!553 = distinct !DILexicalBlock(scope: !542, file: !3, line: 114, column: 2)
!554 = !DILocation(line: 115, column: 2, scope: !526)
!555 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !556)
!556 = distinct !DILocation(line: 117, column: 2, scope: !535)
!557 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !556)
!558 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !556)
!559 = !DILocation(line: 117, column: 2, scope: !535)
!560 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !561)
!561 = distinct !DILocation(line: 117, column: 2, scope: !535)
!562 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !561)
!563 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !561)
!564 = !DILocation(line: 117, column: 2, scope: !536)
!565 = !DILocation(line: 117, column: 2, scope: !566)
!566 = distinct !DILexicalBlock(scope: !535, file: !3, line: 117, column: 2)
!567 = !DILocation(line: 115, column: 6, scope: !526)
!568 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !569)
!569 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !570)
!570 = distinct !DILocation(line: 117, column: 2, scope: !532)
!571 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !569)
!572 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !569)
!573 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !570)
!574 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !570)
!575 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !570)
!576 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !570)
!577 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !570)
!578 = !DILocation(line: 117, column: 2, scope: !532)
!579 = !{i32 -2146400531, i32 -2146400518, i32 -2146400493, i32 -2146400469, i32 -2146400444, i32 -2146400369, i32 -2146400344, i32 -2146400200, i32 -2146397024, i32 -2146396935, i32 -2146396814, i32 -2146396719, i32 -2146396618, i32 -2146396591, i32 -2146396508, i32 -2146396419, i32 -2146396298, i32 -2146396198, i32 -2146396092, i32 -2146395984, i32 -2146399908, i32 -2146399855, i32 -2146399824, i32 -2146399793, i32 -2146399772, i32 -2146399750, i32 -2146399701, i32 -2146399680, i32 -2146395901, i32 -2146395812, i32 -2146395691, i32 -2146395592, i32 -2146395486, i32 -2146395384, i32 -2146395351, i32 -2146395278, i32 -2146395210, i32 -2146399373, i32 -2146399314, i32 -2146399261, i32 -2146399230, i32 -2146399199, i32 -2146399178, i32 -2146399156, i32 -2146399107, i32 -2146399086, i32 -2146395158, i32 -2146395069, i32 -2146394948, i32 -2146394849, i32 -2146394743, i32 -2146394641, i32 -2146394608, i32 -2146394525, i32 -2146394436, i32 -2146394315, i32 -2146394215, i32 -2146394189, i32 -2146394086, i32 -2146394060, i32 -2146398828, i32 -2146398761, i32 -2146398736, i32 -2146398672, i32 -2146398590, i32 -2146398567, i32 -2146398542, i32 -2146398517}
!580 = !DILocation(line: 117, column: 2, scope: !581)
!581 = distinct !DILexicalBlock(scope: !582, file: !3, line: 117, column: 2)
!582 = distinct !DILexicalBlock(scope: !532, file: !3, line: 117, column: 2)
!583 = !{i32 -2146397502, i32 -2146397485}
!584 = !DILocation(line: 119, column: 6, scope: !585)
!585 = distinct !DILexicalBlock(scope: !526, file: !3, line: 119, column: 6)
!586 = !DILocation(line: 119, column: 6, scope: !526)
!587 = !DILocation(line: 0, scope: !526)
!588 = !DILocation(line: 120, column: 3, scope: !585)
!589 = !DILocation(line: 122, column: 1, scope: !526)
!590 = distinct !DISubprogram(name: "sys_arch_mbox_fetch", scope: !3, file: !3, line: 136, type: !591, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !593)
!591 = !DISubroutineType(types: !592)
!592 = !{!121, !6, !41, !121}
!593 = !{!594, !595, !596, !597, !598, !599, !600, !601, !609, !610, !616, !622, !623, !630, !631}
!594 = !DILocalVariable(name: "mbox", arg: 1, scope: !590, file: !3, line: 136, type: !6)
!595 = !DILocalVariable(name: "msg", arg: 2, scope: !590, file: !3, line: 136, type: !41)
!596 = !DILocalVariable(name: "timeout", arg: 3, scope: !590, file: !3, line: 136, type: !121)
!597 = !DILocalVariable(name: "nsret", scope: !590, file: !3, line: 138, type: !117)
!598 = !DILocalVariable(name: "nsret2", scope: !590, file: !3, line: 138, type: !117)
!599 = !DILocalVariable(name: "msg_cpy", scope: !590, file: !3, line: 139, type: !21)
!600 = !DILocalVariable(name: "_dss_msg_cpy", scope: !590, file: !3, line: 140, type: !41)
!601 = !DILocalVariable(name: "tid", scope: !602, file: !3, line: 145, type: !123)
!602 = distinct !DILexicalBlock(scope: !603, file: !3, line: 145, column: 3)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 145, column: 3)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 145, column: 3)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 145, column: 3)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 145, column: 3)
!607 = distinct !DILexicalBlock(scope: !608, file: !3, line: 144, column: 20)
!608 = distinct !DILexicalBlock(scope: !590, file: !3, line: 144, column: 6)
!609 = !DILocalVariable(name: "_ret", scope: !602, file: !3, line: 145, type: !113)
!610 = !DILocalVariable(name: "tid", scope: !611, file: !3, line: 146, type: !123)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 146, column: 3)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 146, column: 3)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 146, column: 3)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 146, column: 3)
!615 = distinct !DILexicalBlock(scope: !607, file: !3, line: 146, column: 3)
!616 = !DILocalVariable(name: "tid", scope: !617, file: !3, line: 148, type: !123)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 148, column: 3)
!618 = distinct !DILexicalBlock(scope: !619, file: !3, line: 148, column: 3)
!619 = distinct !DILexicalBlock(scope: !620, file: !3, line: 148, column: 3)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 148, column: 3)
!621 = distinct !DILexicalBlock(scope: !607, file: !3, line: 148, column: 3)
!622 = !DILocalVariable(name: "_ret", scope: !617, file: !3, line: 148, type: !113)
!623 = !DILocalVariable(name: "tid", scope: !624, file: !3, line: 151, type: !123)
!624 = distinct !DILexicalBlock(scope: !625, file: !3, line: 151, column: 3)
!625 = distinct !DILexicalBlock(scope: !626, file: !3, line: 151, column: 3)
!626 = distinct !DILexicalBlock(scope: !627, file: !3, line: 151, column: 3)
!627 = distinct !DILexicalBlock(scope: !628, file: !3, line: 151, column: 3)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 151, column: 3)
!629 = distinct !DILexicalBlock(scope: !608, file: !3, line: 150, column: 9)
!630 = !DILocalVariable(name: "_ret", scope: !624, file: !3, line: 151, type: !113)
!631 = !DILocalVariable(name: "_arg3", scope: !624, file: !3, line: 151, type: !113)
!632 = !DILocation(line: 136, column: 39, scope: !590)
!633 = !DILocation(line: 136, column: 52, scope: !590)
!634 = !DILocation(line: 136, column: 63, scope: !590)
!635 = !DILocation(line: 138, column: 2, scope: !590)
!636 = !DILocation(line: 139, column: 2, scope: !590)
!637 = !DILocation(line: 140, column: 35, scope: !590)
!638 = !DILocation(line: 140, column: 58, scope: !590)
!639 = !DILocation(line: 140, column: 24, scope: !590)
!640 = !DILocation(line: 140, column: 9, scope: !590)
!641 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !642)
!642 = distinct !DILocation(line: 142, column: 2, scope: !643)
!643 = distinct !DILexicalBlock(scope: !644, file: !3, line: 142, column: 2)
!644 = distinct !DILexicalBlock(scope: !590, file: !3, line: 142, column: 2)
!645 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !642)
!646 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !642)
!647 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !642)
!648 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !642)
!649 = !DILocation(line: 142, column: 2, scope: !644)
!650 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !642)
!651 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !642)
!652 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !642)
!653 = !DILocation(line: 142, column: 2, scope: !654)
!654 = distinct !DILexicalBlock(scope: !643, file: !3, line: 142, column: 2)
!655 = !DILocation(line: 144, column: 14, scope: !608)
!656 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !657)
!657 = distinct !DILocation(line: 0, scope: !627)
!658 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !657)
!659 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !657)
!660 = !DILocation(line: 0, scope: !627)
!661 = !DILocation(line: 144, column: 6, scope: !590)
!662 = !DILocation(line: 145, column: 3, scope: !605)
!663 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !664)
!664 = distinct !DILocation(line: 145, column: 3, scope: !605)
!665 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !664)
!666 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !664)
!667 = !DILocation(line: 145, column: 3, scope: !606)
!668 = !DILocation(line: 145, column: 3, scope: !669)
!669 = distinct !DILexicalBlock(scope: !605, file: !3, line: 145, column: 3)
!670 = !DILocation(line: 138, column: 9, scope: !590)
!671 = !{!672, !672, i64 0}
!672 = !{!"long", !215, i64 0}
!673 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !674)
!674 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !675)
!675 = distinct !DILocation(line: 145, column: 3, scope: !602)
!676 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !674)
!677 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !674)
!678 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !675)
!679 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !675)
!680 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !675)
!681 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !675)
!682 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !675)
!683 = !DILocation(line: 145, column: 3, scope: !602)
!684 = !{i32 -2146391584, i32 -2146391571, i32 -2146391546, i32 -2146391522, i32 -2146391497, i32 -2146391422, i32 -2146391397, i32 -2146391253, i32 -2146388146, i32 -2146388057, i32 -2146387936, i32 -2146387841, i32 -2146387740, i32 -2146387713, i32 -2146387630, i32 -2146387541, i32 -2146387420, i32 -2146387320, i32 -2146387214, i32 -2146387106, i32 -2146390970, i32 -2146390917, i32 -2146390886, i32 -2146390855, i32 -2146390834, i32 -2146390812, i32 -2146390763, i32 -2146390742, i32 -2146387023, i32 -2146386934, i32 -2146386813, i32 -2146386714, i32 -2146386608, i32 -2146386506, i32 -2146386473, i32 -2146386400, i32 -2146386332, i32 -2146390440, i32 -2146390381, i32 -2146390328, i32 -2146390297, i32 -2146390266, i32 -2146390245, i32 -2146390223, i32 -2146390174, i32 -2146390153, i32 -2146386274, i32 -2146386185, i32 -2146386064, i32 -2146385965, i32 -2146385859, i32 -2146385757, i32 -2146385724, i32 -2146385641, i32 -2146385552, i32 -2146385431, i32 -2146385331, i32 -2146385305, i32 -2146385202, i32 -2146385176, i32 -2146389895, i32 -2146389828, i32 -2146389803, i32 -2146389739, i32 -2146389657, i32 -2146389634, i32 -2146389609, i32 -2146389584}
!685 = !DILocation(line: 145, column: 3, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !3, line: 145, column: 3)
!687 = distinct !DILexicalBlock(scope: !688, file: !3, line: 145, column: 3)
!688 = distinct !DILexicalBlock(scope: !602, file: !3, line: 145, column: 3)
!689 = !{i32 -2146388430, i32 -2146388414}
!690 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !691)
!691 = distinct !DILocation(line: 146, column: 3, scope: !614)
!692 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !691)
!693 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !691)
!694 = !DILocation(line: 146, column: 3, scope: !614)
!695 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !696)
!696 = distinct !DILocation(line: 146, column: 3, scope: !614)
!697 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !696)
!698 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !696)
!699 = !DILocation(line: 146, column: 3, scope: !615)
!700 = !DILocation(line: 146, column: 3, scope: !701)
!701 = distinct !DILexicalBlock(scope: !614, file: !3, line: 146, column: 3)
!702 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !703)
!703 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !704)
!704 = distinct !DILocation(line: 146, column: 3, scope: !611)
!705 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !703)
!706 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !703)
!707 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !704)
!708 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !704)
!709 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !704)
!710 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !704)
!711 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !704)
!712 = !DILocation(line: 146, column: 3, scope: !611)
!713 = !{i32 -2146383118, i32 -2146383105, i32 -2146383080, i32 -2146383056, i32 -2146383031, i32 -2146382956, i32 -2146382931, i32 -2146382787, i32 -2146380535, i32 -2146380446, i32 -2146380325, i32 -2146380230, i32 -2146380129, i32 -2146380102, i32 -2146380019, i32 -2146379930, i32 -2146379809, i32 -2146379709, i32 -2146379603, i32 -2146379495, i32 -2146382495, i32 -2146382442, i32 -2146382411, i32 -2146382380, i32 -2146382359, i32 -2146382337, i32 -2146382288, i32 -2146382267, i32 -2146379412, i32 -2146379323, i32 -2146379202, i32 -2146379103, i32 -2146378997, i32 -2146378895, i32 -2146378862, i32 -2146378789, i32 -2146378721, i32 -2146381890, i32 -2146381837, i32 -2146381806, i32 -2146381775, i32 -2146381754, i32 -2146381732, i32 -2146381683, i32 -2146381662, i32 -2146378673, i32 -2146378584, i32 -2146378463, i32 -2146378364, i32 -2146378258, i32 -2146378156, i32 -2146378123, i32 -2146378040, i32 -2146377951, i32 -2146377830, i32 -2146377730, i32 -2146377704, i32 -2146377601, i32 -2146377575, i32 -2146381404, i32 -2146381337, i32 -2146381312, i32 -2146381248, i32 -2146381132, i32 -2146381107, i32 -2146381082}
!714 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !715)
!715 = distinct !DILocation(line: 148, column: 3, scope: !620)
!716 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !715)
!717 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !715)
!718 = !DILocation(line: 148, column: 3, scope: !620)
!719 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !720)
!720 = distinct !DILocation(line: 148, column: 3, scope: !620)
!721 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !720)
!722 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !720)
!723 = !DILocation(line: 148, column: 3, scope: !621)
!724 = !DILocation(line: 148, column: 3, scope: !725)
!725 = distinct !DILexicalBlock(scope: !620, file: !3, line: 148, column: 3)
!726 = !DILocation(line: 138, column: 16, scope: !590)
!727 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !728)
!728 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !729)
!729 = distinct !DILocation(line: 148, column: 3, scope: !617)
!730 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !728)
!731 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !728)
!732 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !729)
!733 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !729)
!734 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !729)
!735 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !729)
!736 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !729)
!737 = !DILocation(line: 148, column: 3, scope: !617)
!738 = !{i32 -2146375583, i32 -2146375570, i32 -2146375545, i32 -2146375521, i32 -2146375496, i32 -2146375421, i32 -2146375396, i32 -2146375252, i32 -2146372137, i32 -2146372048, i32 -2146371927, i32 -2146371832, i32 -2146371731, i32 -2146371704, i32 -2146371621, i32 -2146371532, i32 -2146371411, i32 -2146371311, i32 -2146371205, i32 -2146371097, i32 -2146374969, i32 -2146374916, i32 -2146374885, i32 -2146374854, i32 -2146374833, i32 -2146374811, i32 -2146374762, i32 -2146374741, i32 -2146371014, i32 -2146370925, i32 -2146370804, i32 -2146370705, i32 -2146370599, i32 -2146370497, i32 -2146370464, i32 -2146370391, i32 -2146370323, i32 -2146374439, i32 -2146374380, i32 -2146374327, i32 -2146374296, i32 -2146374265, i32 -2146374244, i32 -2146374222, i32 -2146374173, i32 -2146374152, i32 -2146370265, i32 -2146370176, i32 -2146370055, i32 -2146369956, i32 -2146369850, i32 -2146369748, i32 -2146369715, i32 -2146369632, i32 -2146369543, i32 -2146369422, i32 -2146369322, i32 -2146369296, i32 -2146369193, i32 -2146369167, i32 -2146373894, i32 -2146373827, i32 -2146373802, i32 -2146373738, i32 -2146373656, i32 -2146373633, i32 -2146373608, i32 -2146373583}
!739 = !DILocation(line: 148, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !741, file: !3, line: 148, column: 3)
!741 = distinct !DILexicalBlock(scope: !742, file: !3, line: 148, column: 3)
!742 = distinct !DILexicalBlock(scope: !617, file: !3, line: 148, column: 3)
!743 = !{i32 -2146372429, i32 -2146372413}
!744 = !DILocation(line: 149, column: 11, scope: !607)
!745 = !DILocation(line: 149, column: 20, scope: !607)
!746 = !DILocation(line: 149, column: 18, scope: !607)
!747 = !DILocation(line: 149, column: 9, scope: !607)
!748 = !DILocation(line: 150, column: 2, scope: !607)
!749 = !DILocation(line: 151, column: 3, scope: !627)
!750 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !751)
!751 = distinct !DILocation(line: 151, column: 3, scope: !627)
!752 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !751)
!753 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !751)
!754 = !DILocation(line: 151, column: 3, scope: !628)
!755 = !DILocation(line: 151, column: 3, scope: !756)
!756 = distinct !DILexicalBlock(scope: !627, file: !3, line: 151, column: 3)
!757 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !758)
!758 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !759)
!759 = distinct !DILocation(line: 151, column: 3, scope: !624)
!760 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !758)
!761 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !758)
!762 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !759)
!763 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !759)
!764 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !759)
!765 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !759)
!766 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !759)
!767 = !DILocation(line: 151, column: 3, scope: !624)
!768 = !{i32 -2146366584, i32 -2146366571, i32 -2146366546, i32 -2146366522, i32 -2146366497, i32 -2146366422, i32 -2146366397, i32 -2146366253, i32 -2146362932, i32 -2146362843, i32 -2146362722, i32 -2146362627, i32 -2146362526, i32 -2146362499, i32 -2146362416, i32 -2146362327, i32 -2146362206, i32 -2146362106, i32 -2146362000, i32 -2146361892, i32 -2146365923, i32 -2146365870, i32 -2146365839, i32 -2146365808, i32 -2146365787, i32 -2146365765, i32 -2146365716, i32 -2146365695, i32 -2146365592, i32 -2146361809, i32 -2146361720, i32 -2146361599, i32 -2146361500, i32 -2146361394, i32 -2146361292, i32 -2146361259, i32 -2146361186, i32 -2146361118, i32 -2146365402, i32 -2146365343, i32 -2146365290, i32 -2146365259, i32 -2146365228, i32 -2146365207, i32 -2146365185, i32 -2146365136, i32 -2146365115, i32 -2146361067, i32 -2146360978, i32 -2146360857, i32 -2146360758, i32 -2146360652, i32 -2146360550, i32 -2146360517, i32 -2146360434, i32 -2146360345, i32 -2146360224, i32 -2146360124, i32 -2146360098, i32 -2146359995, i32 -2146359969, i32 -2146364857, i32 -2146364790, i32 -2146364765, i32 -2146364701, i32 -2146364619, i32 -2146364596, i32 -2146364571, i32 -2146364546}
!769 = !DILocation(line: 151, column: 3, scope: !770)
!770 = distinct !DILexicalBlock(scope: !771, file: !3, line: 151, column: 3)
!771 = distinct !DILexicalBlock(scope: !772, file: !3, line: 151, column: 3)
!772 = distinct !DILexicalBlock(scope: !624, file: !3, line: 151, column: 3)
!773 = !{i32 -2146363301, i32 -2146363285}
!774 = !DILocation(line: 154, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !629, file: !3, line: 154, column: 7)
!776 = !DILocation(line: 154, column: 7, scope: !629)
!777 = !DILocation(line: 157, column: 6, scope: !778)
!778 = distinct !DILexicalBlock(scope: !590, file: !3, line: 157, column: 6)
!779 = !DILocation(line: 157, column: 6, scope: !590)
!780 = !DILocation(line: 158, column: 11, scope: !778)
!781 = !DILocation(line: 158, column: 8, scope: !778)
!782 = !DILocation(line: 158, column: 3, scope: !778)
!783 = !DILocation(line: 159, column: 17, scope: !590)
!784 = !DILocation(line: 159, column: 9, scope: !590)
!785 = !DILocation(line: 159, column: 2, scope: !590)
!786 = !DILocation(line: 0, scope: !775)
!787 = !DILocation(line: 160, column: 1, scope: !590)
!788 = distinct !DISubprogram(name: "sys_arch_mbox_tryfetch", scope: !3, file: !3, line: 174, type: !789, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !791)
!789 = !DISubroutineType(types: !790)
!790 = !{!121, !6, !41}
!791 = !{!792, !793, !794, !795, !796, !797, !803}
!792 = !DILocalVariable(name: "mbox", arg: 1, scope: !788, file: !3, line: 174, type: !6)
!793 = !DILocalVariable(name: "msg", arg: 2, scope: !788, file: !3, line: 174, type: !41)
!794 = !DILocalVariable(name: "rmsg", scope: !788, file: !3, line: 176, type: !21)
!795 = !DILocalVariable(name: "_dss_rmsg", scope: !788, file: !3, line: 177, type: !41)
!796 = !DILocalVariable(name: "ret", scope: !788, file: !3, line: 178, type: !40)
!797 = !DILocalVariable(name: "tid", scope: !798, file: !3, line: 182, type: !123)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 182, column: 2)
!799 = distinct !DILexicalBlock(scope: !800, file: !3, line: 182, column: 2)
!800 = distinct !DILexicalBlock(scope: !801, file: !3, line: 182, column: 2)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 182, column: 2)
!802 = distinct !DILexicalBlock(scope: !788, file: !3, line: 182, column: 2)
!803 = !DILocalVariable(name: "_ret", scope: !798, file: !3, line: 182, type: !113)
!804 = !DILocation(line: 174, column: 42, scope: !788)
!805 = !DILocation(line: 174, column: 55, scope: !788)
!806 = !DILocation(line: 176, column: 2, scope: !788)
!807 = !DILocation(line: 177, column: 32, scope: !788)
!808 = !DILocation(line: 177, column: 52, scope: !788)
!809 = !DILocation(line: 177, column: 21, scope: !788)
!810 = !DILocation(line: 177, column: 9, scope: !788)
!811 = !DILocation(line: 178, column: 2, scope: !788)
!812 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !813)
!813 = distinct !DILocation(line: 180, column: 2, scope: !814)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 180, column: 2)
!815 = distinct !DILexicalBlock(scope: !788, file: !3, line: 180, column: 2)
!816 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !813)
!817 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !813)
!818 = !DILocation(line: 61, column: 3, scope: !297, inlinedAt: !813)
!819 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !813)
!820 = !DILocation(line: 180, column: 2, scope: !815)
!821 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !813)
!822 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !813)
!823 = !DILocation(line: 62, column: 2, scope: !290, inlinedAt: !813)
!824 = !DILocation(line: 180, column: 2, scope: !825)
!825 = distinct !DILexicalBlock(scope: !814, file: !3, line: 180, column: 2)
!826 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !827)
!827 = distinct !DILocation(line: 182, column: 2, scope: !801)
!828 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !827)
!829 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !827)
!830 = !DILocation(line: 182, column: 2, scope: !801)
!831 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !832)
!832 = distinct !DILocation(line: 182, column: 2, scope: !801)
!833 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !832)
!834 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !832)
!835 = !DILocation(line: 182, column: 2, scope: !802)
!836 = !DILocation(line: 182, column: 2, scope: !837)
!837 = distinct !DILexicalBlock(scope: !801, file: !3, line: 182, column: 2)
!838 = !DILocation(line: 178, column: 6, scope: !788)
!839 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !840)
!840 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !841)
!841 = distinct !DILocation(line: 182, column: 2, scope: !798)
!842 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !840)
!843 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !840)
!844 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !841)
!845 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !841)
!846 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !841)
!847 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !841)
!848 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !841)
!849 = !DILocation(line: 182, column: 2, scope: !798)
!850 = !{i32 -2146357161, i32 -2146357148, i32 -2146357123, i32 -2146357099, i32 -2146357074, i32 -2146356999, i32 -2146356974, i32 -2146356830, i32 -2146353644, i32 -2146353555, i32 -2146353434, i32 -2146353339, i32 -2146353238, i32 -2146353211, i32 -2146353128, i32 -2146353039, i32 -2146352918, i32 -2146352818, i32 -2146352712, i32 -2146352604, i32 -2146356538, i32 -2146356485, i32 -2146356454, i32 -2146356423, i32 -2146356402, i32 -2146356380, i32 -2146356331, i32 -2146356310, i32 -2146352521, i32 -2146352432, i32 -2146352311, i32 -2146352212, i32 -2146352106, i32 -2146352004, i32 -2146351971, i32 -2146351898, i32 -2146351830, i32 -2146356003, i32 -2146355944, i32 -2146355891, i32 -2146355860, i32 -2146355829, i32 -2146355808, i32 -2146355786, i32 -2146355737, i32 -2146355716, i32 -2146351778, i32 -2146351689, i32 -2146351568, i32 -2146351469, i32 -2146351363, i32 -2146351261, i32 -2146351228, i32 -2146351145, i32 -2146351056, i32 -2146350935, i32 -2146350835, i32 -2146350809, i32 -2146350706, i32 -2146350680, i32 -2146355458, i32 -2146355391, i32 -2146355366, i32 -2146355302, i32 -2146355220, i32 -2146355197, i32 -2146355172, i32 -2146355147}
!851 = !DILocation(line: 182, column: 2, scope: !852)
!852 = distinct !DILexicalBlock(scope: !853, file: !3, line: 182, column: 2)
!853 = distinct !DILexicalBlock(scope: !798, file: !3, line: 182, column: 2)
!854 = !{i32 -2146354132, i32 -2146354115}
!855 = !DILocation(line: 185, column: 6, scope: !856)
!856 = distinct !DILexicalBlock(scope: !788, file: !3, line: 185, column: 6)
!857 = !DILocation(line: 185, column: 10, scope: !856)
!858 = !DILocation(line: 185, column: 6, scope: !788)
!859 = !DILocation(line: 188, column: 6, scope: !860)
!860 = distinct !DILexicalBlock(scope: !788, file: !3, line: 188, column: 6)
!861 = !DILocation(line: 188, column: 6, scope: !788)
!862 = !DILocation(line: 189, column: 11, scope: !860)
!863 = !DILocation(line: 189, column: 8, scope: !860)
!864 = !DILocation(line: 189, column: 3, scope: !860)
!865 = !DILocation(line: 0, scope: !788)
!866 = !DILocation(line: 0, scope: !856)
!867 = !DILocation(line: 191, column: 1, scope: !788)
