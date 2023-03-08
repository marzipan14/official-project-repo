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

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_new(%struct.sys_mbox_t*, i32) local_unnamed_addr #0 !dbg !185 {
  %3 = icmp slt i32 %1, 1, !dbg !202
  %4 = select i1 %3, i32 32, i32 %1, !dbg !204
  %5 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !205
  br i1 %5, label %6, label %7, !dbg !208, !prof !209

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !210
  tail call void @ukplat_terminate(i32 3) #9, !dbg !210
  unreachable, !dbg !210

; <label>:7:                                      ; preds = %2
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !212, !tbaa !213
  %9 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !217
  store %struct.uk_alloc* %8, %struct.uk_alloc** %9, align 8, !dbg !218, !tbaa !219
  %10 = icmp eq %struct.uk_alloc* %8, null, !dbg !222
  br i1 %10, label %11, label %12, !dbg !225, !prof !209

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !226
  tail call void @ukplat_terminate(i32 3) #9, !dbg !226
  unreachable, !dbg !226

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !228, !srcloc !236
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !238
  br i1 %14, label %23, label %15, !dbg !238

; <label>:15:                                     ; preds = %12
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !239, !srcloc !236
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !238
  br i1 %17, label %23, label %18, !dbg !242

; <label>:18:                                     ; preds = %15
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** %9, align 8, !dbg !243, !tbaa !219
  %20 = sext i32 %4 to i64, !dbg !243
  %21 = tail call %struct.uk_mbox* @uk_mbox_create(%struct.uk_alloc* %19, i64 %20) #10, !dbg !243
  %22 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !243
  store %struct.uk_mbox* %21, %struct.uk_mbox** %22, align 8, !dbg !243, !tbaa !245
  br label %36, !dbg !243

; <label>:23:                                     ; preds = %15, %12
  %24 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !246, !srcloc !236
  %25 = and i64 %24, -65536, !dbg !257
  %26 = or i64 %25, 4097, !dbg !257
  %27 = add nsw i64 %26, -1, !dbg !257
  %28 = inttoptr i64 %27 to i32*, !dbg !258
  %29 = load i32, i32* %28, align 4096, !dbg !259, !tbaa !260
  %30 = bitcast %struct.sys_mbox_t* %0 to i64*, !dbg !261
  %31 = load i64, i64* %30, align 8, !dbg !261, !tbaa !219
  %32 = sext i32 %4 to i64, !dbg !261
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_create\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %29, %struct.uk_mbox* (%struct.uk_alloc*, i64)* nonnull @uk_mbox_create) #7, !dbg !261, !srcloc !262
  %34 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !263
  tail call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(%struct.uk_mbox** nonnull %34, i64 %33) #7, !dbg !263, !srcloc !267
  %35 = load %struct.uk_mbox*, %struct.uk_mbox** %34, align 8, !dbg !268, !tbaa !245
  br label %36

; <label>:36:                                     ; preds = %18, %23
  %37 = phi %struct.uk_mbox* [ %21, %18 ], [ %35, %23 ], !dbg !268
  %38 = icmp eq %struct.uk_mbox* %37, null, !dbg !270
  br i1 %38, label %41, label %39, !dbg !271

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !272
  store i32 1, i32* %40, align 8, !dbg !273, !tbaa !274
  br label %41, !dbg !275

; <label>:41:                                     ; preds = %36, %39
  %42 = phi i8 [ 0, %39 ], [ -1, %36 ], !dbg !276
  ret i8 %42, !dbg !277
}

; Function Attrs: nounwind readnone speculatable

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_crit(i8* nocapture readnone, ...) unnamed_addr #2 !dbg !135 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !278
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #7, !dbg !278
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %2, i64 0, i64 0, !dbg !280
  call void @llvm.va_start(i8* nonnull %3), !dbg !280
  call void @_uk_vprintk(i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @uk_pr_crit.__str, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @uk_pr_crit.__str.5, i64 0, i64 0), i32 198, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.__va_list_tag* nonnull %4) #10, !dbg !281
  call void @llvm.va_end(i8* nonnull %3), !dbg !284
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #7, !dbg !285
  ret void, !dbg !285
}

; Function Attrs: noredzone noreturn
declare dso_local void @ukplat_terminate(i32) local_unnamed_addr #3

; Function Attrs: noredzone
declare dso_local %struct.uk_mbox* @uk_mbox_create(%struct.uk_alloc*, i64) #4

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.start.p0i8(i64, i8* nocapture) #5

; Function Attrs: argmemonly nounwind
declare void @llvm.lifetime.end.p0i8(i64, i8* nocapture) #5

; Function Attrs: noredzone nounwind readonly
define dso_local i32 @sys_mbox_valid(%struct.sys_mbox_t* readonly) local_unnamed_addr #6 !dbg !286 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !292
  br i1 %2, label %8, label %3, !dbg !294

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !295
  %5 = load i32, i32* %4, align 8, !dbg !295, !tbaa !274
  %6 = icmp eq i32 %5, 1, !dbg !296
  %7 = zext i1 %6 to i32, !dbg !296
  br label %8, !dbg !297

; <label>:8:                                      ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ], !dbg !298
  ret i32 %9, !dbg !299
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_set_invalid(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !300 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !306
  br i1 %2, label %3, label %4, !dbg !309, !prof !209

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !310
  tail call void @ukplat_terminate(i32 3) #9, !dbg !310
  unreachable, !dbg !310

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !312
  store i32 0, i32* %5, align 8, !dbg !313, !tbaa !274
  ret void, !dbg !314
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_free(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !315 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !329
  br i1 %2, label %7, label %3, !dbg !330

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !331
  %5 = load i32, i32* %4, align 8, !dbg !331, !tbaa !274
  %6 = icmp eq i32 %5, 1, !dbg !332
  br i1 %6, label %8, label %7, !dbg !333, !prof !334

; <label>:7:                                      ; preds = %3, %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !335
  tail call void @ukplat_terminate(i32 3) #9, !dbg !335
  unreachable, !dbg !335

; <label>:8:                                      ; preds = %3
  %9 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !337, !srcloc !236
  %10 = icmp ult i64 %9, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !340
  br i1 %10, label %19, label %11, !dbg !340

; <label>:11:                                     ; preds = %8
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !341, !srcloc !236
  %13 = icmp ugt i64 %12, ptrtoint ([0 x i8]* @_end to i64), !dbg !340
  br i1 %13, label %19, label %14, !dbg !344

; <label>:14:                                     ; preds = %11
  %15 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !345
  %16 = load %struct.uk_alloc*, %struct.uk_alloc** %15, align 8, !dbg !345, !tbaa !219
  %17 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !345
  %18 = load %struct.uk_mbox*, %struct.uk_mbox** %17, align 8, !dbg !345, !tbaa !245
  tail call void @uk_mbox_free(%struct.uk_alloc* %16, %struct.uk_mbox* %18) #10, !dbg !345
  br label %31, !dbg !345

; <label>:19:                                     ; preds = %11, %8
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !347, !srcloc !236
  %21 = and i64 %20, -65536, !dbg !352
  %22 = or i64 %21, 4097, !dbg !352
  %23 = add nsw i64 %22, -1, !dbg !352
  %24 = inttoptr i64 %23 to i32*, !dbg !353
  %25 = load i32, i32* %24, align 4096, !dbg !354, !tbaa !260
  %26 = bitcast %struct.sys_mbox_t* %0 to i64*, !dbg !355
  %27 = load i64, i64* %26, align 8, !dbg !355, !tbaa !219
  %28 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !355
  %29 = bitcast %struct.uk_mbox** %28 to i64*, !dbg !355
  %30 = load i64, i64* %29, align 8, !dbg !355, !tbaa !245
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_free\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %27, i64 %30, i32 %25, void (%struct.uk_alloc*, %struct.uk_mbox*)* nonnull @uk_mbox_free) #7, !dbg !355, !srcloc !356
  br label %31

; <label>:31:                                     ; preds = %19, %14
  store i32 0, i32* %4, align 8, !dbg !359, !tbaa !274
  ret void, !dbg !360
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_free(%struct.uk_alloc*, %struct.uk_mbox*) #4

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_post(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !2 {
  %3 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !367
  br i1 %3, label %8, label %4, !dbg !368

; <label>:4:                                      ; preds = %2
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !369
  %6 = load i32, i32* %5, align 8, !dbg !369, !tbaa !274
  %7 = icmp eq i32 %6, 1, !dbg !370
  br i1 %7, label %9, label %8, !dbg !371, !prof !334

; <label>:8:                                      ; preds = %4, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !372
  tail call void @ukplat_terminate(i32 3) #9, !dbg !372
  unreachable, !dbg !372

; <label>:9:                                      ; preds = %4
  %10 = icmp eq i8* %1, null, !dbg !374
  %11 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !375, !srcloc !236
  %12 = icmp uge i64 %11, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !378
  br i1 %10, label %13, label %24, !dbg !379

; <label>:13:                                     ; preds = %9
  br i1 %12, label %14, label %17, !dbg !380

; <label>:14:                                     ; preds = %13
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !381, !srcloc !236
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !380
  br i1 %16, label %17, label %42, !dbg !384

; <label>:17:                                     ; preds = %14, %13
  %18 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !385, !srcloc !236
  %19 = and i64 %18, -65536, !dbg !390
  %20 = or i64 %19, 4097, !dbg !390
  %21 = add nsw i64 %20, -1, !dbg !390
  %22 = inttoptr i64 %21 to i32*, !dbg !391
  %23 = load i32, i32* %22, align 4096, !dbg !392, !tbaa !260
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_debug\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([29 x i8]* @sys_mbox_post.__str.4 to i64), i32 %23, void (i8*, ...)* nonnull @uk_pr_debug) #7, !dbg !393, !srcloc !394
  br label %42

; <label>:24:                                     ; preds = %9
  br i1 %12, label %25, label %31, !dbg !395

; <label>:25:                                     ; preds = %24
  %26 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !396, !srcloc !236
  %27 = icmp ugt i64 %26, ptrtoint ([0 x i8]* @_end to i64), !dbg !395
  br i1 %27, label %31, label %28, !dbg !399

; <label>:28:                                     ; preds = %25
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !400
  %30 = load %struct.uk_mbox*, %struct.uk_mbox** %29, align 8, !dbg !400, !tbaa !245
  tail call void @uk_mbox_post(%struct.uk_mbox* %30, i8* nonnull %1) #10, !dbg !400
  br label %42, !dbg !400

; <label>:31:                                     ; preds = %25, %24
  %32 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !402, !srcloc !236
  %33 = and i64 %32, -65536, !dbg !407
  %34 = or i64 %33, 4097, !dbg !407
  %35 = add nsw i64 %34, -1, !dbg !407
  %36 = inttoptr i64 %35 to i32*, !dbg !408
  %37 = load i32, i32* %36, align 4096, !dbg !409, !tbaa !260
  %38 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !410
  %39 = bitcast %struct.uk_mbox** %38 to i64*, !dbg !410
  %40 = load i64, i64* %39, align 8, !dbg !410, !tbaa !245
  %41 = ptrtoint i8* %1 to i64, !dbg !410
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %40, i64 %41, i32 %37, void (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post) #7, !dbg !410, !srcloc !411
  br label %42

; <label>:42:                                     ; preds = %14, %28, %31, %17
  ret void, !dbg !412
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) #2 !dbg !413 {
  ret void, !dbg !418
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_post(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !419 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !439
  br i1 %4, label %9, label %5, !dbg !440

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !441
  %7 = load i32, i32* %6, align 8, !dbg !441, !tbaa !274
  %8 = icmp eq i32 %7, 1, !dbg !442
  br i1 %8, label %10, label %9, !dbg !443, !prof !334

; <label>:9:                                      ; preds = %5, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !444
  tail call void @ukplat_terminate(i32 3) #9, !dbg !444
  unreachable, !dbg !444

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %3 to i8*, !dbg !446
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7, !dbg !446
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !447, !srcloc !236
  %13 = icmp ult i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !450
  br i1 %13, label %21, label %14, !dbg !450

; <label>:14:                                     ; preds = %10
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !451, !srcloc !236
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !450
  br i1 %16, label %21, label %17, !dbg !454

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !455
  %19 = load %struct.uk_mbox*, %struct.uk_mbox** %18, align 8, !dbg !455, !tbaa !245
  %20 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %19, i8* %1) #10, !dbg !455
  store i32 %20, i32* %3, align 4, !dbg !455, !tbaa !260
  br label %34, !dbg !455

; <label>:21:                                     ; preds = %14, %10
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !458, !srcloc !236
  %23 = and i64 %22, -65536, !dbg !463
  %24 = or i64 %23, 4097, !dbg !463
  %25 = add nsw i64 %24, -1, !dbg !463
  %26 = inttoptr i64 %25 to i32*, !dbg !464
  %27 = load i32, i32* %26, align 4096, !dbg !465, !tbaa !260
  %28 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !466
  %29 = bitcast %struct.uk_mbox** %28 to i64*, !dbg !466
  %30 = load i64, i64* %29, align 8, !dbg !466, !tbaa !245
  %31 = ptrtoint i8* %1 to i64, !dbg !466
  %32 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %30, i64 %31, i32 %27, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #7, !dbg !466, !srcloc !467
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %32) #7, !dbg !468, !srcloc !471
  %33 = load i32, i32* %3, align 4, !dbg !472, !tbaa !260
  br label %34

; <label>:34:                                     ; preds = %21, %17
  %35 = phi i32 [ %33, %21 ], [ %20, %17 ], !dbg !472
  %36 = ashr i32 %35, 31, !dbg !474
  %37 = trunc i32 %36 to i8, !dbg !474
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !475
  ret i8 %37, !dbg !475
}

; Function Attrs: noredzone
declare dso_local i32 @uk_mbox_post_try(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost_fromisr(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !476 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !494
  br i1 %4, label %9, label %5, !dbg !495

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !496
  %7 = load i32, i32* %6, align 8, !dbg !496, !tbaa !274
  %8 = icmp eq i32 %7, 1, !dbg !497
  br i1 %8, label %10, label %9, !dbg !498, !prof !334

; <label>:9:                                      ; preds = %5, %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !499
  tail call void @ukplat_terminate(i32 3) #9, !dbg !499
  unreachable, !dbg !499

; <label>:10:                                     ; preds = %5
  %11 = bitcast i32* %3 to i8*, !dbg !501
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #7, !dbg !501
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !502, !srcloc !236
  %13 = icmp ult i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !505
  br i1 %13, label %21, label %14, !dbg !505

; <label>:14:                                     ; preds = %10
  %15 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !506, !srcloc !236
  %16 = icmp ugt i64 %15, ptrtoint ([0 x i8]* @_end to i64), !dbg !505
  br i1 %16, label %21, label %17, !dbg !509

; <label>:17:                                     ; preds = %14
  %18 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !510
  %19 = load %struct.uk_mbox*, %struct.uk_mbox** %18, align 8, !dbg !510, !tbaa !245
  %20 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %19, i8* %1) #10, !dbg !510
  store i32 %20, i32* %3, align 4, !dbg !510, !tbaa !260
  br label %34, !dbg !510

; <label>:21:                                     ; preds = %14, %10
  %22 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !513, !srcloc !236
  %23 = and i64 %22, -65536, !dbg !518
  %24 = or i64 %23, 4097, !dbg !518
  %25 = add nsw i64 %24, -1, !dbg !518
  %26 = inttoptr i64 %25 to i32*, !dbg !519
  %27 = load i32, i32* %26, align 4096, !dbg !520, !tbaa !260
  %28 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !521
  %29 = bitcast %struct.uk_mbox** %28 to i64*, !dbg !521
  %30 = load i64, i64* %29, align 8, !dbg !521, !tbaa !245
  %31 = ptrtoint i8* %1 to i64, !dbg !521
  %32 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %30, i64 %31, i32 %27, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #7, !dbg !521, !srcloc !522
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %32) #7, !dbg !523, !srcloc !526
  %33 = load i32, i32* %3, align 4, !dbg !527, !tbaa !260
  br label %34

; <label>:34:                                     ; preds = %21, %17
  %35 = phi i32 [ %33, %21 ], [ %20, %17 ], !dbg !527
  %36 = ashr i32 %35, 31, !dbg !529
  %37 = trunc i32 %36 to i8, !dbg !529
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #7, !dbg !530
  ret i8 %37, !dbg !530
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* readonly, i8**, i32) local_unnamed_addr #0 !dbg !531 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast i64* %4 to i8*, !dbg !576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #7, !dbg !576
  %8 = bitcast i64* %5 to i8*, !dbg !576
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #7, !dbg !576
  %9 = bitcast i8** %6 to i8*, !dbg !577
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #7, !dbg !577
  %10 = ptrtoint i8** %6 to i64, !dbg !578
  %11 = add i64 %10, 65536, !dbg !579
  %12 = inttoptr i64 %11 to i8**, !dbg !580
  %13 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !586
  br i1 %13, label %18, label %14, !dbg !587

; <label>:14:                                     ; preds = %3
  %15 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !588
  %16 = load i32, i32* %15, align 8, !dbg !588, !tbaa !274
  %17 = icmp eq i32 %16, 1, !dbg !589
  br i1 %17, label %19, label %18, !dbg !590, !prof !334

; <label>:18:                                     ; preds = %14, %3
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !591
  call void @ukplat_terminate(i32 3) #9, !dbg !591
  unreachable, !dbg !591

; <label>:19:                                     ; preds = %14
  %20 = icmp eq i32 %2, 0, !dbg !593
  %21 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !594, !srcloc !236
  %22 = icmp uge i64 %21, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !597
  br i1 %20, label %23, label %77, !dbg !598

; <label>:23:                                     ; preds = %19
  br i1 %22, label %24, label %29, !dbg !599

; <label>:24:                                     ; preds = %23
  %25 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !600, !srcloc !236
  %26 = icmp ugt i64 %25, ptrtoint ([0 x i8]* @_end to i64), !dbg !599
  br i1 %26, label %29, label %27, !dbg !603

; <label>:27:                                     ; preds = %24
  %28 = call i64 @ukplat_monotonic_clock() #10, !dbg !604
  store i64 %28, i64* %4, align 8, !dbg !604, !tbaa !607
  br label %37, !dbg !604

; <label>:29:                                     ; preds = %24, %23
  %30 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !609, !srcloc !236
  %31 = and i64 %30, -65536, !dbg !614
  %32 = or i64 %31, 4097, !dbg !614
  %33 = add nsw i64 %32, -1, !dbg !614
  %34 = inttoptr i64 %33 to i32*, !dbg !615
  %35 = load i32, i32* %34, align 4096, !dbg !616, !tbaa !260
  %36 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %35, i64 ()* nonnull @ukplat_monotonic_clock) #7, !dbg !617, !srcloc !618
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %36) #7, !dbg !619, !srcloc !623
  br label %37

; <label>:37:                                     ; preds = %27, %29
  %38 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !624, !srcloc !236
  %39 = icmp ult i64 %38, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !627
  br i1 %39, label %46, label %40, !dbg !627

; <label>:40:                                     ; preds = %37
  %41 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !628, !srcloc !236
  %42 = icmp ugt i64 %41, ptrtoint ([0 x i8]* @_end to i64), !dbg !627
  br i1 %42, label %46, label %43, !dbg !631

; <label>:43:                                     ; preds = %40
  %44 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !632
  %45 = load %struct.uk_mbox*, %struct.uk_mbox** %44, align 8, !dbg !632, !tbaa !245
  call void @uk_mbox_recv(%struct.uk_mbox* %45, i8** %12) #10, !dbg !632
  br label %56, !dbg !632

; <label>:46:                                     ; preds = %40, %37
  %47 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !634, !srcloc !236
  %48 = and i64 %47, -65536, !dbg !639
  %49 = or i64 %48, 4097, !dbg !639
  %50 = add nsw i64 %49, -1, !dbg !639
  %51 = inttoptr i64 %50 to i32*, !dbg !640
  %52 = load i32, i32* %51, align 4096, !dbg !641, !tbaa !260
  %53 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !642
  %54 = bitcast %struct.uk_mbox** %53 to i64*, !dbg !642
  %55 = load i64, i64* %54, align 8, !dbg !642, !tbaa !245
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %55, i64 %11, i32 %52, void (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv) #7, !dbg !642, !srcloc !643
  br label %56

; <label>:56:                                     ; preds = %43, %46
  %57 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !644, !srcloc !236
  %58 = icmp ult i64 %57, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !647
  br i1 %58, label %64, label %59, !dbg !647

; <label>:59:                                     ; preds = %56
  %60 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !648, !srcloc !236
  %61 = icmp ugt i64 %60, ptrtoint ([0 x i8]* @_end to i64), !dbg !647
  br i1 %61, label %64, label %62, !dbg !651

; <label>:62:                                     ; preds = %59
  %63 = call i64 @ukplat_monotonic_clock() #10, !dbg !652
  store i64 %63, i64* %5, align 8, !dbg !652, !tbaa !607
  br label %73, !dbg !652

; <label>:64:                                     ; preds = %59, %56
  %65 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !655, !srcloc !236
  %66 = and i64 %65, -65536, !dbg !660
  %67 = or i64 %66, 4097, !dbg !660
  %68 = add nsw i64 %67, -1, !dbg !660
  %69 = inttoptr i64 %68 to i32*, !dbg !661
  %70 = load i32, i32* %69, align 4096, !dbg !662, !tbaa !260
  %71 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %70, i64 ()* nonnull @ukplat_monotonic_clock) #7, !dbg !663, !srcloc !664
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %5, i64 %71) #7, !dbg !665, !srcloc !669
  %72 = load i64, i64* %5, align 8, !dbg !670, !tbaa !607
  br label %73

; <label>:73:                                     ; preds = %64, %62
  %74 = phi i64 [ %72, %64 ], [ %63, %62 ], !dbg !670
  %75 = load i64, i64* %4, align 8, !dbg !671, !tbaa !607
  %76 = sub i64 %74, %75, !dbg !672
  store i64 %76, i64* %4, align 8, !dbg !673, !tbaa !607
  br label %104, !dbg !674

; <label>:77:                                     ; preds = %19
  br i1 %22, label %78, label %87, !dbg !675

; <label>:78:                                     ; preds = %77
  %79 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !676, !srcloc !236
  %80 = icmp ugt i64 %79, ptrtoint ([0 x i8]* @_end to i64), !dbg !675
  br i1 %80, label %87, label %81, !dbg !679

; <label>:81:                                     ; preds = %78
  %82 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !680
  %83 = load %struct.uk_mbox*, %struct.uk_mbox** %82, align 8, !dbg !680, !tbaa !245
  %84 = zext i32 %2 to i64, !dbg !680
  %85 = mul nuw nsw i64 %84, 1000000, !dbg !680
  %86 = call i64 @uk_mbox_recv_to(%struct.uk_mbox* %83, i8** %12, i64 %85) #10, !dbg !680
  store i64 %86, i64* %4, align 8, !dbg !680, !tbaa !607
  br label %101, !dbg !680

; <label>:87:                                     ; preds = %78, %77
  %88 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !682, !srcloc !236
  %89 = and i64 %88, -65536, !dbg !687
  %90 = or i64 %89, 4097, !dbg !687
  %91 = add nsw i64 %90, -1, !dbg !687
  %92 = inttoptr i64 %91 to i32*, !dbg !688
  %93 = load i32, i32* %92, align 4096, !dbg !689, !tbaa !260
  %94 = zext i32 %2 to i64, !dbg !690
  %95 = mul nuw nsw i64 %94, 1000000, !dbg !690
  %96 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !690
  %97 = bitcast %struct.uk_mbox** %96 to i64*, !dbg !690
  %98 = load i64, i64* %97, align 8, !dbg !690, !tbaa !245
  %99 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_to\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %98, i64 %11, i64 %95, i32 %93, i64 (%struct.uk_mbox*, i8**, i64)* nonnull @uk_mbox_recv_to) #7, !dbg !690, !srcloc !691
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %99) #7, !dbg !692, !srcloc !696
  %100 = load i64, i64* %4, align 8, !dbg !697, !tbaa !607
  br label %101

; <label>:101:                                    ; preds = %87, %81
  %102 = phi i64 [ %100, %87 ], [ %86, %81 ], !dbg !697
  %103 = icmp eq i64 %102, -1, !dbg !697
  br i1 %103, label %114, label %104, !dbg !699, !prof !209

; <label>:104:                                    ; preds = %101, %73
  %105 = phi i64 [ %102, %101 ], [ %76, %73 ]
  %106 = icmp eq i8** %1, null, !dbg !700
  br i1 %106, label %111, label %107, !dbg !702

; <label>:107:                                    ; preds = %104
  %108 = inttoptr i64 %11 to i64*, !dbg !703
  %109 = load i64, i64* %108, align 8, !dbg !703, !tbaa !213
  %110 = bitcast i8** %1 to i64*, !dbg !704
  store i64 %109, i64* %110, align 8, !dbg !704, !tbaa !213
  br label %111, !dbg !705

; <label>:111:                                    ; preds = %104, %107
  %112 = udiv i64 %105, 1000000, !dbg !706
  %113 = trunc i64 %112 to i32, !dbg !707
  br label %114, !dbg !708

; <label>:114:                                    ; preds = %101, %111
  %115 = phi i32 [ %113, %111 ], [ -1, %101 ], !dbg !709
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #7, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #7, !dbg !710
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #7, !dbg !710
  ret i32 %115, !dbg !710
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() #4

; Function Attrs: noredzone
declare dso_local void @uk_mbox_recv(%struct.uk_mbox*, i8**) #4

; Function Attrs: noredzone
declare dso_local i64 @uk_mbox_recv_to(%struct.uk_mbox*, i8**, i64) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* readonly, i8**) local_unnamed_addr #0 !dbg !711 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i8** %3 to i8*, !dbg !729
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #7, !dbg !729
  %6 = ptrtoint i8** %3 to i64, !dbg !730
  %7 = add i64 %6, 65536, !dbg !731
  %8 = inttoptr i64 %7 to i8**, !dbg !732
  %9 = bitcast i32* %4 to i8*, !dbg !734
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #7, !dbg !734
  %10 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !739
  br i1 %10, label %15, label %11, !dbg !740

; <label>:11:                                     ; preds = %2
  %12 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !741
  %13 = load i32, i32* %12, align 8, !dbg !741, !tbaa !274
  %14 = icmp eq i32 %13, 1, !dbg !742
  br i1 %14, label %16, label %15, !dbg !743, !prof !334

; <label>:15:                                     ; preds = %11, %2
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !744
  call void @ukplat_terminate(i32 3) #9, !dbg !744
  unreachable, !dbg !744

; <label>:16:                                     ; preds = %11
  %17 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !746, !srcloc !236
  %18 = icmp ult i64 %17, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !749
  br i1 %18, label %26, label %19, !dbg !749

; <label>:19:                                     ; preds = %16
  %20 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !750, !srcloc !236
  %21 = icmp ugt i64 %20, ptrtoint ([0 x i8]* @_end to i64), !dbg !749
  br i1 %21, label %26, label %22, !dbg !753

; <label>:22:                                     ; preds = %19
  %23 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !754
  %24 = load %struct.uk_mbox*, %struct.uk_mbox** %23, align 8, !dbg !754, !tbaa !245
  %25 = call i32 @uk_mbox_recv_try(%struct.uk_mbox* %24, i8** %8) #10, !dbg !754
  store i32 %25, i32* %4, align 4, !dbg !754, !tbaa !260
  br label %38, !dbg !754

; <label>:26:                                     ; preds = %19, %16
  %27 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #7, !dbg !757, !srcloc !236
  %28 = and i64 %27, -65536, !dbg !762
  %29 = or i64 %28, 4097, !dbg !762
  %30 = add nsw i64 %29, -1, !dbg !762
  %31 = inttoptr i64 %30 to i32*, !dbg !763
  %32 = load i32, i32* %31, align 4096, !dbg !764, !tbaa !260
  %33 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !765
  %34 = bitcast %struct.uk_mbox** %33 to i64*, !dbg !765
  %35 = load i64, i64* %34, align 8, !dbg !765, !tbaa !245
  %36 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %35, i64 %7, i32 %32, i32 (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv_try) #7, !dbg !765, !srcloc !766
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %36) #7, !dbg !767, !srcloc !770
  %37 = load i32, i32* %4, align 4, !dbg !771, !tbaa !260
  br label %38

; <label>:38:                                     ; preds = %26, %22
  %39 = phi i32 [ %37, %26 ], [ %25, %22 ], !dbg !771
  %40 = icmp slt i32 %39, 0, !dbg !773
  br i1 %40, label %47, label %41, !dbg !774

; <label>:41:                                     ; preds = %38
  %42 = icmp eq i8** %1, null, !dbg !775
  br i1 %42, label %47, label %43, !dbg !777

; <label>:43:                                     ; preds = %41
  %44 = inttoptr i64 %7 to i64*, !dbg !778
  %45 = load i64, i64* %44, align 8, !dbg !778, !tbaa !213
  %46 = bitcast i8** %1 to i64*, !dbg !779
  store i64 %45, i64* %46, align 8, !dbg !779, !tbaa !213
  br label %47, !dbg !780

; <label>:47:                                     ; preds = %43, %41, %38
  %48 = phi i32 [ -1, %38 ], [ 0, %41 ], [ 0, %43 ], !dbg !781
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #7, !dbg !782
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #7, !dbg !782
  ret i32 %48, !dbg !782
}

; Function Attrs: noredzone
declare dso_local i32 @uk_mbox_recv_try(%struct.uk_mbox*, i8**) #4

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #7

; Function Attrs: noredzone
declare dso_local void @_uk_vprintk(i32, i8*, i8*, i32, i8*, %struct.__va_list_tag*) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #7

; Function Attrs: nounwind readnone speculatable

attributes #0 = { noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable }
attributes #2 = { inlinehint noredzone nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { noredzone nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { nobuiltin noredzone }
attributes #9 = { nobuiltin noredzone noreturn nounwind }
attributes #10 = { nobuiltin noredzone nounwind }

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
!238 = !DILocation(line: 50, column: 2, scope: !197)
!239 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !240)
!240 = distinct !DILocation(line: 50, column: 2, scope: !197)
!241 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !240)
!242 = !DILocation(line: 50, column: 2, scope: !198)
!243 = !DILocation(line: 50, column: 2, scope: !244)
!244 = distinct !DILexicalBlock(scope: !197, file: !3, line: 50, column: 2)
!245 = !{!220, !214, i64 8}
!246 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !247)
!247 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !254)
!248 = distinct !DISubprogram(name: "uk_thread_get_tid", scope: !249, file: !249, line: 47, type: !250, isLocal: true, isDefinition: true, scopeLine: 48, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !252)
!249 = !DIFile(filename: "/root/.unikraft/unikraft/lib/flexos-core/include/flexos/impl/intelpku-impl.h", directory: "/root/.unikraft/apps/redis/build")
!250 = !DISubroutineType(types: !251)
!251 = !{!40}
!252 = !{!253}
!253 = !DILocalVariable(name: "sp", scope: !248, file: !249, line: 49, type: !24)
!254 = distinct !DILocation(line: 50, column: 2, scope: !194)
!255 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !247)
!256 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !254)
!257 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !254)
!258 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !254)
!259 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !254)
!260 = !{!221, !221, i64 0}
!261 = !DILocation(line: 50, column: 2, scope: !194)
!262 = !{i32 -2146442727, i32 -2146442714, i32 -2146442689, i32 -2146442665, i32 -2146442640, i32 -2146442565, i32 -2146442540, i32 -2146442396, i32 -2146439170, i32 -2146439081, i32 -2146438960, i32 -2146438865, i32 -2146438764, i32 -2146438737, i32 -2146438654, i32 -2146438565, i32 -2146438444, i32 -2146438344, i32 -2146438238, i32 -2146438130, i32 -2146442104, i32 -2146442051, i32 -2146442020, i32 -2146441989, i32 -2146441968, i32 -2146441946, i32 -2146441897, i32 -2146441876, i32 -2146438047, i32 -2146437958, i32 -2146437837, i32 -2146437738, i32 -2146437632, i32 -2146437530, i32 -2146437497, i32 -2146437424, i32 -2146437356, i32 -2146441569, i32 -2146441510, i32 -2146441457, i32 -2146441426, i32 -2146441395, i32 -2146441374, i32 -2146441352, i32 -2146441303, i32 -2146441282, i32 -2146437306, i32 -2146437217, i32 -2146437096, i32 -2146436997, i32 -2146436891, i32 -2146436789, i32 -2146436756, i32 -2146436673, i32 -2146436584, i32 -2146436463, i32 -2146436363, i32 -2146436337, i32 -2146436234, i32 -2146436208, i32 -2146441024, i32 -2146440957, i32 -2146440932, i32 -2146440868, i32 -2146440786, i32 -2146440763, i32 -2146440738, i32 -2146440713}
!263 = !DILocation(line: 50, column: 2, scope: !264)
!264 = distinct !DILexicalBlock(scope: !265, file: !3, line: 50, column: 2)
!265 = distinct !DILexicalBlock(scope: !266, file: !3, line: 50, column: 2)
!266 = distinct !DILexicalBlock(scope: !194, file: !3, line: 50, column: 2)
!267 = !{i32 -2146439491, i32 -2146439475}
!268 = !DILocation(line: 52, column: 13, scope: !269)
!269 = distinct !DILexicalBlock(scope: !185, file: !3, line: 52, column: 6)
!270 = !DILocation(line: 52, column: 7, scope: !269)
!271 = !DILocation(line: 52, column: 6, scope: !185)
!272 = !DILocation(line: 54, column: 8, scope: !185)
!273 = !DILocation(line: 54, column: 14, scope: !185)
!274 = !{!220, !221, i64 16}
!275 = !DILocation(line: 55, column: 2, scope: !185)
!276 = !DILocation(line: 0, scope: !269)
!277 = !DILocation(line: 56, column: 1, scope: !185)
!278 = !DILocation(line: 196, column: 2, scope: !135)
!279 = !DILocation(line: 196, column: 10, scope: !135)
!280 = !DILocation(line: 197, column: 2, scope: !135)
!281 = !DILocation(line: 198, column: 2, scope: !282)
!282 = distinct !DILexicalBlock(scope: !283, file: !136, line: 198, column: 2)
!283 = distinct !DILexicalBlock(scope: !135, file: !136, line: 198, column: 2)
!284 = !DILocation(line: 199, column: 2, scope: !135)
!285 = !DILocation(line: 200, column: 1, scope: !135)
!286 = distinct !DISubprogram(name: "sys_mbox_valid", scope: !3, file: !3, line: 58, type: !287, isLocal: false, isDefinition: true, scopeLine: 59, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !289)
!287 = !DISubroutineType(types: !288)
!288 = !{!40, !6}
!289 = !{!290}
!290 = !DILocalVariable(name: "mbox", arg: 1, scope: !286, file: !3, line: 58, type: !6)
!291 = !DILocation(line: 58, column: 32, scope: !286)
!292 = !DILocation(line: 60, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !286, file: !3, line: 60, column: 6)
!294 = !DILocation(line: 60, column: 6, scope: !286)
!295 = !DILocation(line: 62, column: 16, scope: !286)
!296 = !DILocation(line: 62, column: 22, scope: !286)
!297 = !DILocation(line: 62, column: 2, scope: !286)
!298 = !DILocation(line: 0, scope: !293)
!299 = !DILocation(line: 63, column: 1, scope: !286)
!300 = distinct !DISubprogram(name: "sys_mbox_set_invalid", scope: !3, file: !3, line: 65, type: !301, isLocal: false, isDefinition: true, scopeLine: 66, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !303)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !6}
!303 = !{!304}
!304 = !DILocalVariable(name: "mbox", arg: 1, scope: !300, file: !3, line: 65, type: !6)
!305 = !DILocation(line: 65, column: 39, scope: !300)
!306 = !DILocation(line: 67, column: 2, scope: !307)
!307 = distinct !DILexicalBlock(scope: !308, file: !3, line: 67, column: 2)
!308 = distinct !DILexicalBlock(scope: !300, file: !3, line: 67, column: 2)
!309 = !DILocation(line: 67, column: 2, scope: !308)
!310 = !DILocation(line: 67, column: 2, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !3, line: 67, column: 2)
!312 = !DILocation(line: 68, column: 8, scope: !300)
!313 = !DILocation(line: 68, column: 14, scope: !300)
!314 = !DILocation(line: 69, column: 1, scope: !300)
!315 = distinct !DISubprogram(name: "sys_mbox_free", scope: !3, file: !3, line: 76, type: !301, isLocal: false, isDefinition: true, scopeLine: 77, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !316)
!316 = !{!317, !318}
!317 = !DILocalVariable(name: "mbox", arg: 1, scope: !315, file: !3, line: 76, type: !6)
!318 = !DILocalVariable(name: "tid", scope: !319, file: !3, line: 80, type: !123)
!319 = distinct !DILexicalBlock(scope: !320, file: !3, line: 80, column: 2)
!320 = distinct !DILexicalBlock(scope: !321, file: !3, line: 80, column: 2)
!321 = distinct !DILexicalBlock(scope: !322, file: !3, line: 80, column: 2)
!322 = distinct !DILexicalBlock(scope: !323, file: !3, line: 80, column: 2)
!323 = distinct !DILexicalBlock(scope: !315, file: !3, line: 80, column: 2)
!324 = !DILocation(line: 76, column: 32, scope: !315)
!325 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !326)
!326 = distinct !DILocation(line: 78, column: 2, scope: !327)
!327 = distinct !DILexicalBlock(scope: !328, file: !3, line: 78, column: 2)
!328 = distinct !DILexicalBlock(scope: !315, file: !3, line: 78, column: 2)
!329 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !326)
!330 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !326)
!331 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !326)
!332 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !326)
!333 = !DILocation(line: 78, column: 2, scope: !328)
!334 = !{!"branch_weights", i32 2000, i32 1}
!335 = !DILocation(line: 78, column: 2, scope: !336)
!336 = distinct !DILexicalBlock(scope: !327, file: !3, line: 78, column: 2)
!337 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !338)
!338 = distinct !DILocation(line: 80, column: 2, scope: !322)
!339 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !338)
!340 = !DILocation(line: 80, column: 2, scope: !322)
!341 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !342)
!342 = distinct !DILocation(line: 80, column: 2, scope: !322)
!343 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !342)
!344 = !DILocation(line: 80, column: 2, scope: !323)
!345 = !DILocation(line: 80, column: 2, scope: !346)
!346 = distinct !DILexicalBlock(scope: !322, file: !3, line: 80, column: 2)
!347 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !348)
!348 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !349)
!349 = distinct !DILocation(line: 80, column: 2, scope: !319)
!350 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !348)
!351 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !349)
!352 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !349)
!353 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !349)
!354 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !349)
!355 = !DILocation(line: 80, column: 2, scope: !319)
!356 = !{i32 -2146433600, i32 -2146433587, i32 -2146433562, i32 -2146433538, i32 -2146433513, i32 -2146433438, i32 -2146433413, i32 -2146433269, i32 -2146431026, i32 -2146430937, i32 -2146430816, i32 -2146430721, i32 -2146430620, i32 -2146430593, i32 -2146430510, i32 -2146430421, i32 -2146430300, i32 -2146430200, i32 -2146430094, i32 -2146429986, i32 -2146432977, i32 -2146432924, i32 -2146432893, i32 -2146432862, i32 -2146432841, i32 -2146432819, i32 -2146432770, i32 -2146432749, i32 -2146429903, i32 -2146429814, i32 -2146429693, i32 -2146429594, i32 -2146429488, i32 -2146429386, i32 -2146429353, i32 -2146429280, i32 -2146429212, i32 -2146432372, i32 -2146432319, i32 -2146432288, i32 -2146432257, i32 -2146432236, i32 -2146432214, i32 -2146432165, i32 -2146432144, i32 -2146429164, i32 -2146429075, i32 -2146428954, i32 -2146428855, i32 -2146428749, i32 -2146428647, i32 -2146428614, i32 -2146428531, i32 -2146428442, i32 -2146428321, i32 -2146428221, i32 -2146428195, i32 -2146428092, i32 -2146428066, i32 -2146431886, i32 -2146431819, i32 -2146431794, i32 -2146431730, i32 -2146431614, i32 -2146431589, i32 -2146431564}
!357 = !DILocation(line: 65, column: 39, scope: !300, inlinedAt: !358)
!358 = distinct !DILocation(line: 81, column: 2, scope: !315)
!359 = !DILocation(line: 68, column: 14, scope: !300, inlinedAt: !358)
!360 = !DILocation(line: 82, column: 1, scope: !315)
!361 = !DILocation(line: 85, column: 32, scope: !2)
!362 = !DILocation(line: 85, column: 44, scope: !2)
!363 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !364)
!364 = distinct !DILocation(line: 87, column: 2, scope: !365)
!365 = distinct !DILexicalBlock(scope: !366, file: !3, line: 87, column: 2)
!366 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 2)
!367 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !364)
!368 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !364)
!369 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !364)
!370 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !364)
!371 = !DILocation(line: 87, column: 2, scope: !366)
!372 = !DILocation(line: 87, column: 2, scope: !373)
!373 = distinct !DILexicalBlock(scope: !365, file: !3, line: 87, column: 2)
!374 = !DILocation(line: 89, column: 7, scope: !174)
!375 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !376)
!376 = distinct !DILocation(line: 0, scope: !171)
!377 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !376)
!378 = !DILocation(line: 0, scope: !171)
!379 = !DILocation(line: 89, column: 6, scope: !2)
!380 = !DILocation(line: 90, column: 3, scope: !171)
!381 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !382)
!382 = distinct !DILocation(line: 90, column: 3, scope: !171)
!383 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !382)
!384 = !DILocation(line: 90, column: 3, scope: !172)
!385 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !386)
!386 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !387)
!387 = distinct !DILocation(line: 90, column: 3, scope: !168)
!388 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !386)
!389 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !387)
!390 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !387)
!391 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !387)
!392 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !387)
!393 = !DILocation(line: 90, column: 3, scope: !168)
!394 = !{i32 -2146425093, i32 -2146425080, i32 -2146425055, i32 -2146425031, i32 -2146425006, i32 -2146424931, i32 -2146424906, i32 -2146424762, i32 -2146422253, i32 -2146422164, i32 -2146422043, i32 -2146421948, i32 -2146421847, i32 -2146421820, i32 -2146421737, i32 -2146421648, i32 -2146421527, i32 -2146421427, i32 -2146421321, i32 -2146421213, i32 -2146424474, i32 -2146424421, i32 -2146424390, i32 -2146424359, i32 -2146424338, i32 -2146424316, i32 -2146424267, i32 -2146424246, i32 -2146421130, i32 -2146421041, i32 -2146420920, i32 -2146420821, i32 -2146420715, i32 -2146420613, i32 -2146420580, i32 -2146420507, i32 -2146420439, i32 -2146423872, i32 -2146423819, i32 -2146423788, i32 -2146423757, i32 -2146423736, i32 -2146423714, i32 -2146423665, i32 -2146423644, i32 -2146420392, i32 -2146420303, i32 -2146420182, i32 -2146420083, i32 -2146419977, i32 -2146419875, i32 -2146419842, i32 -2146419759, i32 -2146419670, i32 -2146419549, i32 -2146419449, i32 -2146419423, i32 -2146419320, i32 -2146419294, i32 -2146423386, i32 -2146423319, i32 -2146423294, i32 -2146423230, i32 -2146423114, i32 -2146423089, i32 -2146423064}
!395 = !DILocation(line: 95, column: 2, scope: !179)
!396 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !397)
!397 = distinct !DILocation(line: 95, column: 2, scope: !179)
!398 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !397)
!399 = !DILocation(line: 95, column: 2, scope: !180)
!400 = !DILocation(line: 95, column: 2, scope: !401)
!401 = distinct !DILexicalBlock(scope: !179, file: !3, line: 95, column: 2)
!402 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !403)
!403 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !404)
!404 = distinct !DILocation(line: 95, column: 2, scope: !176)
!405 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !403)
!406 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !404)
!407 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !404)
!408 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !404)
!409 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !404)
!410 = !DILocation(line: 95, column: 2, scope: !176)
!411 = !{i32 -2146417372, i32 -2146417359, i32 -2146417334, i32 -2146417310, i32 -2146417285, i32 -2146417210, i32 -2146417185, i32 -2146417041, i32 -2146414802, i32 -2146414713, i32 -2146414592, i32 -2146414497, i32 -2146414396, i32 -2146414369, i32 -2146414286, i32 -2146414197, i32 -2146414076, i32 -2146413976, i32 -2146413870, i32 -2146413762, i32 -2146416749, i32 -2146416696, i32 -2146416665, i32 -2146416634, i32 -2146416613, i32 -2146416591, i32 -2146416542, i32 -2146416521, i32 -2146413679, i32 -2146413590, i32 -2146413469, i32 -2146413370, i32 -2146413264, i32 -2146413162, i32 -2146413129, i32 -2146413056, i32 -2146412988, i32 -2146416144, i32 -2146416091, i32 -2146416060, i32 -2146416029, i32 -2146416008, i32 -2146415986, i32 -2146415937, i32 -2146415916, i32 -2146412940, i32 -2146412851, i32 -2146412730, i32 -2146412631, i32 -2146412525, i32 -2146412423, i32 -2146412390, i32 -2146412307, i32 -2146412218, i32 -2146412097, i32 -2146411997, i32 -2146411971, i32 -2146411868, i32 -2146411842, i32 -2146415658, i32 -2146415591, i32 -2146415566, i32 -2146415502, i32 -2146415386, i32 -2146415361, i32 -2146415336}
!412 = !DILocation(line: 96, column: 1, scope: !2)
!413 = distinct !DISubprogram(name: "uk_pr_debug", scope: !136, file: !136, line: 162, type: !137, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !414)
!414 = !{!415, !416}
!415 = !DILocalVariable(name: "fmt", arg: 1, scope: !413, file: !136, line: 162, type: !139)
!416 = !DILocalVariable(name: "argp", scope: !413, file: !136, line: 164, type: !144)
!417 = !DILocation(line: 162, column: 44, scope: !413)
!418 = !DILocation(line: 168, column: 1, scope: !413)
!419 = distinct !DISubprogram(name: "sys_mbox_trypost", scope: !3, file: !3, line: 99, type: !420, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !422)
!420 = !DISubroutineType(types: !421)
!421 = !{!188, !6, !21}
!422 = !{!423, !424, !425, !426, !432}
!423 = !DILocalVariable(name: "mbox", arg: 1, scope: !419, file: !3, line: 99, type: !6)
!424 = !DILocalVariable(name: "msg", arg: 2, scope: !419, file: !3, line: 99, type: !21)
!425 = !DILocalVariable(name: "ret", scope: !419, file: !3, line: 102, type: !40)
!426 = !DILocalVariable(name: "tid", scope: !427, file: !3, line: 104, type: !123)
!427 = distinct !DILexicalBlock(scope: !428, file: !3, line: 104, column: 2)
!428 = distinct !DILexicalBlock(scope: !429, file: !3, line: 104, column: 2)
!429 = distinct !DILexicalBlock(scope: !430, file: !3, line: 104, column: 2)
!430 = distinct !DILexicalBlock(scope: !431, file: !3, line: 104, column: 2)
!431 = distinct !DILexicalBlock(scope: !419, file: !3, line: 104, column: 2)
!432 = !DILocalVariable(name: "_ret", scope: !427, file: !3, line: 104, type: !113)
!433 = !DILocation(line: 99, column: 36, scope: !419)
!434 = !DILocation(line: 99, column: 48, scope: !419)
!435 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !436)
!436 = distinct !DILocation(line: 101, column: 2, scope: !437)
!437 = distinct !DILexicalBlock(scope: !438, file: !3, line: 101, column: 2)
!438 = distinct !DILexicalBlock(scope: !419, file: !3, line: 101, column: 2)
!439 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !436)
!440 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !436)
!441 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !436)
!442 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !436)
!443 = !DILocation(line: 101, column: 2, scope: !438)
!444 = !DILocation(line: 101, column: 2, scope: !445)
!445 = distinct !DILexicalBlock(scope: !437, file: !3, line: 101, column: 2)
!446 = !DILocation(line: 102, column: 2, scope: !419)
!447 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !448)
!448 = distinct !DILocation(line: 104, column: 2, scope: !430)
!449 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !448)
!450 = !DILocation(line: 104, column: 2, scope: !430)
!451 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !452)
!452 = distinct !DILocation(line: 104, column: 2, scope: !430)
!453 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !452)
!454 = !DILocation(line: 104, column: 2, scope: !431)
!455 = !DILocation(line: 104, column: 2, scope: !456)
!456 = distinct !DILexicalBlock(scope: !430, file: !3, line: 104, column: 2)
!457 = !DILocation(line: 102, column: 6, scope: !419)
!458 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !459)
!459 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !460)
!460 = distinct !DILocation(line: 104, column: 2, scope: !427)
!461 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !459)
!462 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !460)
!463 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !460)
!464 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !460)
!465 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !460)
!466 = !DILocation(line: 104, column: 2, scope: !427)
!467 = !{i32 -2146409425, i32 -2146409412, i32 -2146409387, i32 -2146409363, i32 -2146409338, i32 -2146409263, i32 -2146409238, i32 -2146409094, i32 -2146405918, i32 -2146405829, i32 -2146405708, i32 -2146405613, i32 -2146405512, i32 -2146405485, i32 -2146405402, i32 -2146405313, i32 -2146405192, i32 -2146405092, i32 -2146404986, i32 -2146404878, i32 -2146408802, i32 -2146408749, i32 -2146408718, i32 -2146408687, i32 -2146408666, i32 -2146408644, i32 -2146408595, i32 -2146408574, i32 -2146404795, i32 -2146404706, i32 -2146404585, i32 -2146404486, i32 -2146404380, i32 -2146404278, i32 -2146404245, i32 -2146404172, i32 -2146404104, i32 -2146408267, i32 -2146408208, i32 -2146408155, i32 -2146408124, i32 -2146408093, i32 -2146408072, i32 -2146408050, i32 -2146408001, i32 -2146407980, i32 -2146404052, i32 -2146403963, i32 -2146403842, i32 -2146403743, i32 -2146403637, i32 -2146403535, i32 -2146403502, i32 -2146403419, i32 -2146403330, i32 -2146403209, i32 -2146403109, i32 -2146403083, i32 -2146402980, i32 -2146402954, i32 -2146407722, i32 -2146407655, i32 -2146407630, i32 -2146407566, i32 -2146407484, i32 -2146407461, i32 -2146407436, i32 -2146407411}
!468 = !DILocation(line: 104, column: 2, scope: !469)
!469 = distinct !DILexicalBlock(scope: !470, file: !3, line: 104, column: 2)
!470 = distinct !DILexicalBlock(scope: !427, file: !3, line: 104, column: 2)
!471 = !{i32 -2146406396, i32 -2146406379}
!472 = !DILocation(line: 106, column: 6, scope: !473)
!473 = distinct !DILexicalBlock(scope: !419, file: !3, line: 106, column: 6)
!474 = !DILocation(line: 107, column: 3, scope: !473)
!475 = !DILocation(line: 109, column: 1, scope: !419)
!476 = distinct !DISubprogram(name: "sys_mbox_trypost_fromisr", scope: !3, file: !3, line: 112, type: !420, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !477)
!477 = !{!478, !479, !480, !481, !487}
!478 = !DILocalVariable(name: "mbox", arg: 1, scope: !476, file: !3, line: 112, type: !6)
!479 = !DILocalVariable(name: "msg", arg: 2, scope: !476, file: !3, line: 112, type: !21)
!480 = !DILocalVariable(name: "ret", scope: !476, file: !3, line: 115, type: !40)
!481 = !DILocalVariable(name: "tid", scope: !482, file: !3, line: 117, type: !123)
!482 = distinct !DILexicalBlock(scope: !483, file: !3, line: 117, column: 2)
!483 = distinct !DILexicalBlock(scope: !484, file: !3, line: 117, column: 2)
!484 = distinct !DILexicalBlock(scope: !485, file: !3, line: 117, column: 2)
!485 = distinct !DILexicalBlock(scope: !486, file: !3, line: 117, column: 2)
!486 = distinct !DILexicalBlock(scope: !476, file: !3, line: 117, column: 2)
!487 = !DILocalVariable(name: "_ret", scope: !482, file: !3, line: 117, type: !113)
!488 = !DILocation(line: 112, column: 44, scope: !476)
!489 = !DILocation(line: 112, column: 56, scope: !476)
!490 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !491)
!491 = distinct !DILocation(line: 114, column: 2, scope: !492)
!492 = distinct !DILexicalBlock(scope: !493, file: !3, line: 114, column: 2)
!493 = distinct !DILexicalBlock(scope: !476, file: !3, line: 114, column: 2)
!494 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !491)
!495 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !491)
!496 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !491)
!497 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !491)
!498 = !DILocation(line: 114, column: 2, scope: !493)
!499 = !DILocation(line: 114, column: 2, scope: !500)
!500 = distinct !DILexicalBlock(scope: !492, file: !3, line: 114, column: 2)
!501 = !DILocation(line: 115, column: 2, scope: !476)
!502 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !503)
!503 = distinct !DILocation(line: 117, column: 2, scope: !485)
!504 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !503)
!505 = !DILocation(line: 117, column: 2, scope: !485)
!506 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !507)
!507 = distinct !DILocation(line: 117, column: 2, scope: !485)
!508 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !507)
!509 = !DILocation(line: 117, column: 2, scope: !486)
!510 = !DILocation(line: 117, column: 2, scope: !511)
!511 = distinct !DILexicalBlock(scope: !485, file: !3, line: 117, column: 2)
!512 = !DILocation(line: 115, column: 6, scope: !476)
!513 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !514)
!514 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !515)
!515 = distinct !DILocation(line: 117, column: 2, scope: !482)
!516 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !514)
!517 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !515)
!518 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !515)
!519 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !515)
!520 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !515)
!521 = !DILocation(line: 117, column: 2, scope: !482)
!522 = !{i32 -2146400537, i32 -2146400524, i32 -2146400499, i32 -2146400475, i32 -2146400450, i32 -2146400375, i32 -2146400350, i32 -2146400206, i32 -2146397030, i32 -2146396941, i32 -2146396820, i32 -2146396725, i32 -2146396624, i32 -2146396597, i32 -2146396514, i32 -2146396425, i32 -2146396304, i32 -2146396204, i32 -2146396098, i32 -2146395990, i32 -2146399914, i32 -2146399861, i32 -2146399830, i32 -2146399799, i32 -2146399778, i32 -2146399756, i32 -2146399707, i32 -2146399686, i32 -2146395907, i32 -2146395818, i32 -2146395697, i32 -2146395598, i32 -2146395492, i32 -2146395390, i32 -2146395357, i32 -2146395284, i32 -2146395216, i32 -2146399379, i32 -2146399320, i32 -2146399267, i32 -2146399236, i32 -2146399205, i32 -2146399184, i32 -2146399162, i32 -2146399113, i32 -2146399092, i32 -2146395164, i32 -2146395075, i32 -2146394954, i32 -2146394855, i32 -2146394749, i32 -2146394647, i32 -2146394614, i32 -2146394531, i32 -2146394442, i32 -2146394321, i32 -2146394221, i32 -2146394195, i32 -2146394092, i32 -2146394066, i32 -2146398834, i32 -2146398767, i32 -2146398742, i32 -2146398678, i32 -2146398596, i32 -2146398573, i32 -2146398548, i32 -2146398523}
!523 = !DILocation(line: 117, column: 2, scope: !524)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 117, column: 2)
!525 = distinct !DILexicalBlock(scope: !482, file: !3, line: 117, column: 2)
!526 = !{i32 -2146397508, i32 -2146397491}
!527 = !DILocation(line: 119, column: 6, scope: !528)
!528 = distinct !DILexicalBlock(scope: !476, file: !3, line: 119, column: 6)
!529 = !DILocation(line: 120, column: 3, scope: !528)
!530 = !DILocation(line: 122, column: 1, scope: !476)
!531 = distinct !DISubprogram(name: "sys_arch_mbox_fetch", scope: !3, file: !3, line: 136, type: !532, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !534)
!532 = !DISubroutineType(types: !533)
!533 = !{!121, !6, !41, !121}
!534 = !{!535, !536, !537, !538, !539, !540, !541, !542, !550, !551, !557, !563, !564, !571, !572}
!535 = !DILocalVariable(name: "mbox", arg: 1, scope: !531, file: !3, line: 136, type: !6)
!536 = !DILocalVariable(name: "msg", arg: 2, scope: !531, file: !3, line: 136, type: !41)
!537 = !DILocalVariable(name: "timeout", arg: 3, scope: !531, file: !3, line: 136, type: !121)
!538 = !DILocalVariable(name: "nsret", scope: !531, file: !3, line: 138, type: !117)
!539 = !DILocalVariable(name: "nsret2", scope: !531, file: !3, line: 138, type: !117)
!540 = !DILocalVariable(name: "msg_cpy", scope: !531, file: !3, line: 139, type: !21)
!541 = !DILocalVariable(name: "_dss_msg_cpy", scope: !531, file: !3, line: 140, type: !41)
!542 = !DILocalVariable(name: "tid", scope: !543, file: !3, line: 145, type: !123)
!543 = distinct !DILexicalBlock(scope: !544, file: !3, line: 145, column: 3)
!544 = distinct !DILexicalBlock(scope: !545, file: !3, line: 145, column: 3)
!545 = distinct !DILexicalBlock(scope: !546, file: !3, line: 145, column: 3)
!546 = distinct !DILexicalBlock(scope: !547, file: !3, line: 145, column: 3)
!547 = distinct !DILexicalBlock(scope: !548, file: !3, line: 145, column: 3)
!548 = distinct !DILexicalBlock(scope: !549, file: !3, line: 144, column: 20)
!549 = distinct !DILexicalBlock(scope: !531, file: !3, line: 144, column: 6)
!550 = !DILocalVariable(name: "_ret", scope: !543, file: !3, line: 145, type: !113)
!551 = !DILocalVariable(name: "tid", scope: !552, file: !3, line: 146, type: !123)
!552 = distinct !DILexicalBlock(scope: !553, file: !3, line: 146, column: 3)
!553 = distinct !DILexicalBlock(scope: !554, file: !3, line: 146, column: 3)
!554 = distinct !DILexicalBlock(scope: !555, file: !3, line: 146, column: 3)
!555 = distinct !DILexicalBlock(scope: !556, file: !3, line: 146, column: 3)
!556 = distinct !DILexicalBlock(scope: !548, file: !3, line: 146, column: 3)
!557 = !DILocalVariable(name: "tid", scope: !558, file: !3, line: 148, type: !123)
!558 = distinct !DILexicalBlock(scope: !559, file: !3, line: 148, column: 3)
!559 = distinct !DILexicalBlock(scope: !560, file: !3, line: 148, column: 3)
!560 = distinct !DILexicalBlock(scope: !561, file: !3, line: 148, column: 3)
!561 = distinct !DILexicalBlock(scope: !562, file: !3, line: 148, column: 3)
!562 = distinct !DILexicalBlock(scope: !548, file: !3, line: 148, column: 3)
!563 = !DILocalVariable(name: "_ret", scope: !558, file: !3, line: 148, type: !113)
!564 = !DILocalVariable(name: "tid", scope: !565, file: !3, line: 151, type: !123)
!565 = distinct !DILexicalBlock(scope: !566, file: !3, line: 151, column: 3)
!566 = distinct !DILexicalBlock(scope: !567, file: !3, line: 151, column: 3)
!567 = distinct !DILexicalBlock(scope: !568, file: !3, line: 151, column: 3)
!568 = distinct !DILexicalBlock(scope: !569, file: !3, line: 151, column: 3)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 151, column: 3)
!570 = distinct !DILexicalBlock(scope: !549, file: !3, line: 150, column: 9)
!571 = !DILocalVariable(name: "_ret", scope: !565, file: !3, line: 151, type: !113)
!572 = !DILocalVariable(name: "_arg3", scope: !565, file: !3, line: 151, type: !113)
!573 = !DILocation(line: 136, column: 39, scope: !531)
!574 = !DILocation(line: 136, column: 52, scope: !531)
!575 = !DILocation(line: 136, column: 63, scope: !531)
!576 = !DILocation(line: 138, column: 2, scope: !531)
!577 = !DILocation(line: 139, column: 2, scope: !531)
!578 = !DILocation(line: 140, column: 35, scope: !531)
!579 = !DILocation(line: 140, column: 58, scope: !531)
!580 = !DILocation(line: 140, column: 24, scope: !531)
!581 = !DILocation(line: 140, column: 9, scope: !531)
!582 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !583)
!583 = distinct !DILocation(line: 142, column: 2, scope: !584)
!584 = distinct !DILexicalBlock(scope: !585, file: !3, line: 142, column: 2)
!585 = distinct !DILexicalBlock(scope: !531, file: !3, line: 142, column: 2)
!586 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !583)
!587 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !583)
!588 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !583)
!589 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !583)
!590 = !DILocation(line: 142, column: 2, scope: !585)
!591 = !DILocation(line: 142, column: 2, scope: !592)
!592 = distinct !DILexicalBlock(scope: !584, file: !3, line: 142, column: 2)
!593 = !DILocation(line: 144, column: 14, scope: !549)
!594 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !595)
!595 = distinct !DILocation(line: 0, scope: !568)
!596 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !595)
!597 = !DILocation(line: 0, scope: !568)
!598 = !DILocation(line: 144, column: 6, scope: !531)
!599 = !DILocation(line: 145, column: 3, scope: !546)
!600 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !601)
!601 = distinct !DILocation(line: 145, column: 3, scope: !546)
!602 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !601)
!603 = !DILocation(line: 145, column: 3, scope: !547)
!604 = !DILocation(line: 145, column: 3, scope: !605)
!605 = distinct !DILexicalBlock(scope: !546, file: !3, line: 145, column: 3)
!606 = !DILocation(line: 138, column: 9, scope: !531)
!607 = !{!608, !608, i64 0}
!608 = !{!"long", !215, i64 0}
!609 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !610)
!610 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !611)
!611 = distinct !DILocation(line: 145, column: 3, scope: !543)
!612 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !610)
!613 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !611)
!614 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !611)
!615 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !611)
!616 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !611)
!617 = !DILocation(line: 145, column: 3, scope: !543)
!618 = !{i32 -2146391590, i32 -2146391577, i32 -2146391552, i32 -2146391528, i32 -2146391503, i32 -2146391428, i32 -2146391403, i32 -2146391259, i32 -2146388152, i32 -2146388063, i32 -2146387942, i32 -2146387847, i32 -2146387746, i32 -2146387719, i32 -2146387636, i32 -2146387547, i32 -2146387426, i32 -2146387326, i32 -2146387220, i32 -2146387112, i32 -2146390976, i32 -2146390923, i32 -2146390892, i32 -2146390861, i32 -2146390840, i32 -2146390818, i32 -2146390769, i32 -2146390748, i32 -2146387029, i32 -2146386940, i32 -2146386819, i32 -2146386720, i32 -2146386614, i32 -2146386512, i32 -2146386479, i32 -2146386406, i32 -2146386338, i32 -2146390446, i32 -2146390387, i32 -2146390334, i32 -2146390303, i32 -2146390272, i32 -2146390251, i32 -2146390229, i32 -2146390180, i32 -2146390159, i32 -2146386280, i32 -2146386191, i32 -2146386070, i32 -2146385971, i32 -2146385865, i32 -2146385763, i32 -2146385730, i32 -2146385647, i32 -2146385558, i32 -2146385437, i32 -2146385337, i32 -2146385311, i32 -2146385208, i32 -2146385182, i32 -2146389901, i32 -2146389834, i32 -2146389809, i32 -2146389745, i32 -2146389663, i32 -2146389640, i32 -2146389615, i32 -2146389590}
!619 = !DILocation(line: 145, column: 3, scope: !620)
!620 = distinct !DILexicalBlock(scope: !621, file: !3, line: 145, column: 3)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 145, column: 3)
!622 = distinct !DILexicalBlock(scope: !543, file: !3, line: 145, column: 3)
!623 = !{i32 -2146388436, i32 -2146388420}
!624 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !625)
!625 = distinct !DILocation(line: 146, column: 3, scope: !555)
!626 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !625)
!627 = !DILocation(line: 146, column: 3, scope: !555)
!628 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !629)
!629 = distinct !DILocation(line: 146, column: 3, scope: !555)
!630 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !629)
!631 = !DILocation(line: 146, column: 3, scope: !556)
!632 = !DILocation(line: 146, column: 3, scope: !633)
!633 = distinct !DILexicalBlock(scope: !555, file: !3, line: 146, column: 3)
!634 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !635)
!635 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !636)
!636 = distinct !DILocation(line: 146, column: 3, scope: !552)
!637 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !635)
!638 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !636)
!639 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !636)
!640 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !636)
!641 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !636)
!642 = !DILocation(line: 146, column: 3, scope: !552)
!643 = !{i32 -2146383124, i32 -2146383111, i32 -2146383086, i32 -2146383062, i32 -2146383037, i32 -2146382962, i32 -2146382937, i32 -2146382793, i32 -2146380541, i32 -2146380452, i32 -2146380331, i32 -2146380236, i32 -2146380135, i32 -2146380108, i32 -2146380025, i32 -2146379936, i32 -2146379815, i32 -2146379715, i32 -2146379609, i32 -2146379501, i32 -2146382501, i32 -2146382448, i32 -2146382417, i32 -2146382386, i32 -2146382365, i32 -2146382343, i32 -2146382294, i32 -2146382273, i32 -2146379418, i32 -2146379329, i32 -2146379208, i32 -2146379109, i32 -2146379003, i32 -2146378901, i32 -2146378868, i32 -2146378795, i32 -2146378727, i32 -2146381896, i32 -2146381843, i32 -2146381812, i32 -2146381781, i32 -2146381760, i32 -2146381738, i32 -2146381689, i32 -2146381668, i32 -2146378679, i32 -2146378590, i32 -2146378469, i32 -2146378370, i32 -2146378264, i32 -2146378162, i32 -2146378129, i32 -2146378046, i32 -2146377957, i32 -2146377836, i32 -2146377736, i32 -2146377710, i32 -2146377607, i32 -2146377581, i32 -2146381410, i32 -2146381343, i32 -2146381318, i32 -2146381254, i32 -2146381138, i32 -2146381113, i32 -2146381088}
!644 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !645)
!645 = distinct !DILocation(line: 148, column: 3, scope: !561)
!646 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !645)
!647 = !DILocation(line: 148, column: 3, scope: !561)
!648 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !649)
!649 = distinct !DILocation(line: 148, column: 3, scope: !561)
!650 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !649)
!651 = !DILocation(line: 148, column: 3, scope: !562)
!652 = !DILocation(line: 148, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !561, file: !3, line: 148, column: 3)
!654 = !DILocation(line: 138, column: 16, scope: !531)
!655 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !656)
!656 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !657)
!657 = distinct !DILocation(line: 148, column: 3, scope: !558)
!658 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !656)
!659 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !657)
!660 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !657)
!661 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !657)
!662 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !657)
!663 = !DILocation(line: 148, column: 3, scope: !558)
!664 = !{i32 -2146375589, i32 -2146375576, i32 -2146375551, i32 -2146375527, i32 -2146375502, i32 -2146375427, i32 -2146375402, i32 -2146375258, i32 -2146372143, i32 -2146372054, i32 -2146371933, i32 -2146371838, i32 -2146371737, i32 -2146371710, i32 -2146371627, i32 -2146371538, i32 -2146371417, i32 -2146371317, i32 -2146371211, i32 -2146371103, i32 -2146374975, i32 -2146374922, i32 -2146374891, i32 -2146374860, i32 -2146374839, i32 -2146374817, i32 -2146374768, i32 -2146374747, i32 -2146371020, i32 -2146370931, i32 -2146370810, i32 -2146370711, i32 -2146370605, i32 -2146370503, i32 -2146370470, i32 -2146370397, i32 -2146370329, i32 -2146374445, i32 -2146374386, i32 -2146374333, i32 -2146374302, i32 -2146374271, i32 -2146374250, i32 -2146374228, i32 -2146374179, i32 -2146374158, i32 -2146370271, i32 -2146370182, i32 -2146370061, i32 -2146369962, i32 -2146369856, i32 -2146369754, i32 -2146369721, i32 -2146369638, i32 -2146369549, i32 -2146369428, i32 -2146369328, i32 -2146369302, i32 -2146369199, i32 -2146369173, i32 -2146373900, i32 -2146373833, i32 -2146373808, i32 -2146373744, i32 -2146373662, i32 -2146373639, i32 -2146373614, i32 -2146373589}
!665 = !DILocation(line: 148, column: 3, scope: !666)
!666 = distinct !DILexicalBlock(scope: !667, file: !3, line: 148, column: 3)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 148, column: 3)
!668 = distinct !DILexicalBlock(scope: !558, file: !3, line: 148, column: 3)
!669 = !{i32 -2146372435, i32 -2146372419}
!670 = !DILocation(line: 149, column: 11, scope: !548)
!671 = !DILocation(line: 149, column: 20, scope: !548)
!672 = !DILocation(line: 149, column: 18, scope: !548)
!673 = !DILocation(line: 149, column: 9, scope: !548)
!674 = !DILocation(line: 150, column: 2, scope: !548)
!675 = !DILocation(line: 151, column: 3, scope: !568)
!676 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !677)
!677 = distinct !DILocation(line: 151, column: 3, scope: !568)
!678 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !677)
!679 = !DILocation(line: 151, column: 3, scope: !569)
!680 = !DILocation(line: 151, column: 3, scope: !681)
!681 = distinct !DILexicalBlock(scope: !568, file: !3, line: 151, column: 3)
!682 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !683)
!683 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !684)
!684 = distinct !DILocation(line: 151, column: 3, scope: !565)
!685 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !683)
!686 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !684)
!687 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !684)
!688 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !684)
!689 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !684)
!690 = !DILocation(line: 151, column: 3, scope: !565)
!691 = !{i32 -2146366590, i32 -2146366577, i32 -2146366552, i32 -2146366528, i32 -2146366503, i32 -2146366428, i32 -2146366403, i32 -2146366259, i32 -2146362938, i32 -2146362849, i32 -2146362728, i32 -2146362633, i32 -2146362532, i32 -2146362505, i32 -2146362422, i32 -2146362333, i32 -2146362212, i32 -2146362112, i32 -2146362006, i32 -2146361898, i32 -2146365929, i32 -2146365876, i32 -2146365845, i32 -2146365814, i32 -2146365793, i32 -2146365771, i32 -2146365722, i32 -2146365701, i32 -2146365598, i32 -2146361815, i32 -2146361726, i32 -2146361605, i32 -2146361506, i32 -2146361400, i32 -2146361298, i32 -2146361265, i32 -2146361192, i32 -2146361124, i32 -2146365408, i32 -2146365349, i32 -2146365296, i32 -2146365265, i32 -2146365234, i32 -2146365213, i32 -2146365191, i32 -2146365142, i32 -2146365121, i32 -2146361073, i32 -2146360984, i32 -2146360863, i32 -2146360764, i32 -2146360658, i32 -2146360556, i32 -2146360523, i32 -2146360440, i32 -2146360351, i32 -2146360230, i32 -2146360130, i32 -2146360104, i32 -2146360001, i32 -2146359975, i32 -2146364863, i32 -2146364796, i32 -2146364771, i32 -2146364707, i32 -2146364625, i32 -2146364602, i32 -2146364577, i32 -2146364552}
!692 = !DILocation(line: 151, column: 3, scope: !693)
!693 = distinct !DILexicalBlock(scope: !694, file: !3, line: 151, column: 3)
!694 = distinct !DILexicalBlock(scope: !695, file: !3, line: 151, column: 3)
!695 = distinct !DILexicalBlock(scope: !565, file: !3, line: 151, column: 3)
!696 = !{i32 -2146363307, i32 -2146363291}
!697 = !DILocation(line: 154, column: 7, scope: !698)
!698 = distinct !DILexicalBlock(scope: !570, file: !3, line: 154, column: 7)
!699 = !DILocation(line: 154, column: 7, scope: !570)
!700 = !DILocation(line: 157, column: 6, scope: !701)
!701 = distinct !DILexicalBlock(scope: !531, file: !3, line: 157, column: 6)
!702 = !DILocation(line: 157, column: 6, scope: !531)
!703 = !DILocation(line: 158, column: 11, scope: !701)
!704 = !DILocation(line: 158, column: 8, scope: !701)
!705 = !DILocation(line: 158, column: 3, scope: !701)
!706 = !DILocation(line: 159, column: 17, scope: !531)
!707 = !DILocation(line: 159, column: 9, scope: !531)
!708 = !DILocation(line: 159, column: 2, scope: !531)
!709 = !DILocation(line: 0, scope: !698)
!710 = !DILocation(line: 160, column: 1, scope: !531)
!711 = distinct !DISubprogram(name: "sys_arch_mbox_tryfetch", scope: !3, file: !3, line: 174, type: !712, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !714)
!712 = !DISubroutineType(types: !713)
!713 = !{!121, !6, !41}
!714 = !{!715, !716, !717, !718, !719, !720, !726}
!715 = !DILocalVariable(name: "mbox", arg: 1, scope: !711, file: !3, line: 174, type: !6)
!716 = !DILocalVariable(name: "msg", arg: 2, scope: !711, file: !3, line: 174, type: !41)
!717 = !DILocalVariable(name: "rmsg", scope: !711, file: !3, line: 176, type: !21)
!718 = !DILocalVariable(name: "_dss_rmsg", scope: !711, file: !3, line: 177, type: !41)
!719 = !DILocalVariable(name: "ret", scope: !711, file: !3, line: 178, type: !40)
!720 = !DILocalVariable(name: "tid", scope: !721, file: !3, line: 182, type: !123)
!721 = distinct !DILexicalBlock(scope: !722, file: !3, line: 182, column: 2)
!722 = distinct !DILexicalBlock(scope: !723, file: !3, line: 182, column: 2)
!723 = distinct !DILexicalBlock(scope: !724, file: !3, line: 182, column: 2)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 182, column: 2)
!725 = distinct !DILexicalBlock(scope: !711, file: !3, line: 182, column: 2)
!726 = !DILocalVariable(name: "_ret", scope: !721, file: !3, line: 182, type: !113)
!727 = !DILocation(line: 174, column: 42, scope: !711)
!728 = !DILocation(line: 174, column: 55, scope: !711)
!729 = !DILocation(line: 176, column: 2, scope: !711)
!730 = !DILocation(line: 177, column: 32, scope: !711)
!731 = !DILocation(line: 177, column: 52, scope: !711)
!732 = !DILocation(line: 177, column: 21, scope: !711)
!733 = !DILocation(line: 177, column: 9, scope: !711)
!734 = !DILocation(line: 178, column: 2, scope: !711)
!735 = !DILocation(line: 58, column: 32, scope: !286, inlinedAt: !736)
!736 = distinct !DILocation(line: 180, column: 2, scope: !737)
!737 = distinct !DILexicalBlock(scope: !738, file: !3, line: 180, column: 2)
!738 = distinct !DILexicalBlock(scope: !711, file: !3, line: 180, column: 2)
!739 = !DILocation(line: 60, column: 7, scope: !293, inlinedAt: !736)
!740 = !DILocation(line: 60, column: 6, scope: !286, inlinedAt: !736)
!741 = !DILocation(line: 62, column: 16, scope: !286, inlinedAt: !736)
!742 = !DILocation(line: 62, column: 22, scope: !286, inlinedAt: !736)
!743 = !DILocation(line: 180, column: 2, scope: !738)
!744 = !DILocation(line: 180, column: 2, scope: !745)
!745 = distinct !DILexicalBlock(scope: !737, file: !3, line: 180, column: 2)
!746 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !747)
!747 = distinct !DILocation(line: 182, column: 2, scope: !724)
!748 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !747)
!749 = !DILocation(line: 182, column: 2, scope: !724)
!750 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !751)
!751 = distinct !DILocation(line: 182, column: 2, scope: !724)
!752 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !751)
!753 = !DILocation(line: 182, column: 2, scope: !725)
!754 = !DILocation(line: 182, column: 2, scope: !755)
!755 = distinct !DILexicalBlock(scope: !724, file: !3, line: 182, column: 2)
!756 = !DILocation(line: 178, column: 6, scope: !711)
!757 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !758)
!758 = distinct !DILocation(line: 49, column: 21, scope: !248, inlinedAt: !759)
!759 = distinct !DILocation(line: 182, column: 2, scope: !721)
!760 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !758)
!761 = !DILocation(line: 49, column: 16, scope: !248, inlinedAt: !759)
!762 = !DILocation(line: 50, column: 19, scope: !248, inlinedAt: !759)
!763 = !DILocation(line: 50, column: 11, scope: !248, inlinedAt: !759)
!764 = !DILocation(line: 50, column: 9, scope: !248, inlinedAt: !759)
!765 = !DILocation(line: 182, column: 2, scope: !721)
!766 = !{i32 -2146357167, i32 -2146357154, i32 -2146357129, i32 -2146357105, i32 -2146357080, i32 -2146357005, i32 -2146356980, i32 -2146356836, i32 -2146353650, i32 -2146353561, i32 -2146353440, i32 -2146353345, i32 -2146353244, i32 -2146353217, i32 -2146353134, i32 -2146353045, i32 -2146352924, i32 -2146352824, i32 -2146352718, i32 -2146352610, i32 -2146356544, i32 -2146356491, i32 -2146356460, i32 -2146356429, i32 -2146356408, i32 -2146356386, i32 -2146356337, i32 -2146356316, i32 -2146352527, i32 -2146352438, i32 -2146352317, i32 -2146352218, i32 -2146352112, i32 -2146352010, i32 -2146351977, i32 -2146351904, i32 -2146351836, i32 -2146356009, i32 -2146355950, i32 -2146355897, i32 -2146355866, i32 -2146355835, i32 -2146355814, i32 -2146355792, i32 -2146355743, i32 -2146355722, i32 -2146351784, i32 -2146351695, i32 -2146351574, i32 -2146351475, i32 -2146351369, i32 -2146351267, i32 -2146351234, i32 -2146351151, i32 -2146351062, i32 -2146350941, i32 -2146350841, i32 -2146350815, i32 -2146350712, i32 -2146350686, i32 -2146355464, i32 -2146355397, i32 -2146355372, i32 -2146355308, i32 -2146355226, i32 -2146355203, i32 -2146355178, i32 -2146355153}
!767 = !DILocation(line: 182, column: 2, scope: !768)
!768 = distinct !DILexicalBlock(scope: !769, file: !3, line: 182, column: 2)
!769 = distinct !DILexicalBlock(scope: !721, file: !3, line: 182, column: 2)
!770 = !{i32 -2146354138, i32 -2146354121}
!771 = !DILocation(line: 185, column: 6, scope: !772)
!772 = distinct !DILexicalBlock(scope: !711, file: !3, line: 185, column: 6)
!773 = !DILocation(line: 185, column: 10, scope: !772)
!774 = !DILocation(line: 185, column: 6, scope: !711)
!775 = !DILocation(line: 188, column: 6, scope: !776)
!776 = distinct !DILexicalBlock(scope: !711, file: !3, line: 188, column: 6)
!777 = !DILocation(line: 188, column: 6, scope: !711)
!778 = !DILocation(line: 189, column: 11, scope: !776)
!779 = !DILocation(line: 189, column: 8, scope: !776)
!780 = !DILocation(line: 189, column: 3, scope: !776)
!781 = !DILocation(line: 0, scope: !711)
!782 = !DILocation(line: 191, column: 1, scope: !711)
