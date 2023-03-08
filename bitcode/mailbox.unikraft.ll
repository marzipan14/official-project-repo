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
  br i1 %5, label %6, label %7, !dbg !208, !prof !209

; <label>:6:                                      ; preds = %2
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !210
  tail call void @ukplat_terminate(i32 3) #8, !dbg !210
  unreachable, !dbg !210

; <label>:7:                                      ; preds = %2
  %8 = load %struct.uk_alloc*, %struct.uk_alloc** @flexos_shared_alloc, align 8, !dbg !212, !tbaa !213
  %9 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !217
  store %struct.uk_alloc* %8, %struct.uk_alloc** %9, align 8, !dbg !218, !tbaa !219
  %10 = icmp eq %struct.uk_alloc* %8, null, !dbg !222
  br i1 %10, label %11, label %12, !dbg !225, !prof !209

; <label>:11:                                     ; preds = %7
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)) #7, !dbg !226
  tail call void @ukplat_terminate(i32 3) #8, !dbg !226
  unreachable, !dbg !226

; <label>:12:                                     ; preds = %7
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !228, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !238
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !239
  br i1 %14, label %23, label %15, !dbg !239

; <label>:15:                                     ; preds = %12
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !240, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !243
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !239
  br i1 %17, label %23, label %18, !dbg !244

; <label>:18:                                     ; preds = %15
  %19 = load %struct.uk_alloc*, %struct.uk_alloc** %9, align 8, !dbg !245, !tbaa !219
  %20 = sext i32 %4 to i64, !dbg !245
  %21 = tail call %struct.uk_mbox* @uk_mbox_create(%struct.uk_alloc* %19, i64 %20) #9, !dbg !245
  %22 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !245
  store %struct.uk_mbox* %21, %struct.uk_mbox** %22, align 8, !dbg !245, !tbaa !247
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
  %35 = load %struct.uk_mbox*, %struct.uk_mbox** %34, align 8, !dbg !272, !tbaa !247
  br label %36

; <label>:36:                                     ; preds = %18, %23
  %37 = phi %struct.uk_mbox* [ %21, %18 ], [ %35, %23 ], !dbg !272
  %38 = icmp eq %struct.uk_mbox* %37, null, !dbg !274
  br i1 %38, label %41, label %39, !dbg !275

; <label>:39:                                     ; preds = %36
  %40 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !276
  store i32 1, i32* %40, align 8, !dbg !277, !tbaa !278
  br label %41, !dbg !279

; <label>:41:                                     ; preds = %36, %39
  %42 = phi i8 [ 0, %39 ], [ -1, %36 ], !dbg !280
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
  br i1 %2, label %8, label %3, !dbg !298

; <label>:3:                                      ; preds = %1
  %4 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !299
  %5 = load i32, i32* %4, align 8, !dbg !299, !tbaa !278
  %6 = icmp eq i32 %5, 1, !dbg !300
  %7 = zext i1 %6 to i32, !dbg !300
  br label %8, !dbg !301

; <label>:8:                                      ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ], !dbg !302
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !303
  ret i32 %9, !dbg !303
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_set_invalid(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !304 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !310
  br i1 %2, label %3, label %4, !dbg !313, !prof !209

; <label>:3:                                      ; preds = %1
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)) #7, !dbg !314
  tail call void @ukplat_terminate(i32 3) #8, !dbg !314
  unreachable, !dbg !314

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !316
  store i32 0, i32* %5, align 8, !dbg !317, !tbaa !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !318
  ret void, !dbg !318
}

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_free(%struct.sys_mbox_t*) local_unnamed_addr #0 !dbg !319 {
  %2 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !333
  br i1 %2, label %3, label %4, !dbg !334

; <label>:3:                                      ; preds = %1
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br label %8, !dbg !336

; <label>:4:                                      ; preds = %1
  %5 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !337
  %6 = load i32, i32* %5, align 8, !dbg !337, !tbaa !278
  %7 = icmp eq i32 %6, 1, !dbg !338
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !335
  br i1 %7, label %9, label %8, !dbg !336, !prof !339

; <label>:8:                                      ; preds = %4, %3
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !340
  tail call void @ukplat_terminate(i32 3) #8, !dbg !340
  unreachable, !dbg !340

; <label>:9:                                      ; preds = %4
  %10 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !342, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !345
  %11 = icmp ult i64 %10, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !346
  br i1 %11, label %20, label %12, !dbg !346

; <label>:12:                                     ; preds = %9
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !347, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !350
  %14 = icmp ugt i64 %13, ptrtoint ([0 x i8]* @_end to i64), !dbg !346
  br i1 %14, label %20, label %15, !dbg !351

; <label>:15:                                     ; preds = %12
  %16 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 0, !dbg !352
  %17 = load %struct.uk_alloc*, %struct.uk_alloc** %16, align 8, !dbg !352, !tbaa !219
  %18 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !352
  %19 = load %struct.uk_mbox*, %struct.uk_mbox** %18, align 8, !dbg !352, !tbaa !247
  tail call void @uk_mbox_free(%struct.uk_alloc* %17, %struct.uk_mbox* %19) #9, !dbg !352
  br label %32, !dbg !352

; <label>:20:                                     ; preds = %12, %9
  %21 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !354, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !358
  %22 = and i64 %21, -65536, !dbg !360
  %23 = or i64 %22, 4097, !dbg !360
  %24 = add nsw i64 %23, -1, !dbg !360
  %25 = inttoptr i64 %24 to i32*, !dbg !361
  %26 = load i32, i32* %25, align 4096, !dbg !362, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !363
  %27 = bitcast %struct.sys_mbox_t* %0 to i64*, !dbg !364
  %28 = load i64, i64* %27, align 8, !dbg !364, !tbaa !219
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !364
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !364
  %31 = load i64, i64* %30, align 8, !dbg !364, !tbaa !247
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_free\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %28, i64 %31, i32 %26, void (%struct.uk_alloc*, %struct.uk_mbox*)* nonnull @uk_mbox_free) #6, !dbg !364, !srcloc !365
  br label %32

; <label>:32:                                     ; preds = %20, %15
  store i32 0, i32* %5, align 8, !dbg !368, !tbaa !278
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !369
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !370
  ret void, !dbg !370
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_free(%struct.uk_alloc*, %struct.uk_mbox*) #4

; Function Attrs: noredzone nounwind
define dso_local void @sys_mbox_post(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !2 {
  %3 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !377
  br i1 %3, label %4, label %5, !dbg !378

; <label>:4:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br label %9, !dbg !380

; <label>:5:                                      ; preds = %2
  %6 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !381
  %7 = load i32, i32* %6, align 8, !dbg !381, !tbaa !278
  %8 = icmp eq i32 %7, 1, !dbg !382
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !379
  br i1 %8, label %10, label %9, !dbg !380, !prof !339

; <label>:9:                                      ; preds = %5, %4
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !383
  tail call void @ukplat_terminate(i32 3) #8, !dbg !383
  unreachable, !dbg !383

; <label>:10:                                     ; preds = %5
  %11 = icmp eq i8* %1, null, !dbg !385
  %12 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !386, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !389
  %13 = icmp uge i64 %12, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !390
  br i1 %11, label %14, label %26, !dbg !391

; <label>:14:                                     ; preds = %10
  br i1 %13, label %15, label %19, !dbg !392

; <label>:15:                                     ; preds = %14
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !393, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !396
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !392
  br i1 %17, label %19, label %18, !dbg !397

; <label>:18:                                     ; preds = %15
  tail call void (i8*, ...) @uk_pr_debug(i8* undef) #7, !dbg !398
  br label %44, !dbg !398

; <label>:19:                                     ; preds = %15, %14
  %20 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !400, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !404
  %21 = and i64 %20, -65536, !dbg !406
  %22 = or i64 %21, 4097, !dbg !406
  %23 = add nsw i64 %22, -1, !dbg !406
  %24 = inttoptr i64 %23 to i32*, !dbg !407
  %25 = load i32, i32* %24, align 4096, !dbg !408, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !409
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_pr_debug\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 ptrtoint ([29 x i8]* @sys_mbox_post.__str.4 to i64), i32 %25, void (i8*, ...)* nonnull @uk_pr_debug) #6, !dbg !410, !srcloc !411
  br label %44

; <label>:26:                                     ; preds = %10
  br i1 %13, label %27, label %33, !dbg !412

; <label>:27:                                     ; preds = %26
  %28 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !413, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !416
  %29 = icmp ugt i64 %28, ptrtoint ([0 x i8]* @_end to i64), !dbg !412
  br i1 %29, label %33, label %30, !dbg !417

; <label>:30:                                     ; preds = %27
  %31 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !418
  %32 = load %struct.uk_mbox*, %struct.uk_mbox** %31, align 8, !dbg !418, !tbaa !247
  tail call void @uk_mbox_post(%struct.uk_mbox* %32, i8* nonnull %1) #9, !dbg !418
  br label %44, !dbg !418

; <label>:33:                                     ; preds = %27, %26
  %34 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !420, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !424
  %35 = and i64 %34, -65536, !dbg !426
  %36 = or i64 %35, 4097, !dbg !426
  %37 = add nsw i64 %36, -1, !dbg !426
  %38 = inttoptr i64 %37 to i32*, !dbg !427
  %39 = load i32, i32* %38, align 4096, !dbg !428, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !429
  %40 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !430
  %41 = bitcast %struct.uk_mbox** %40 to i64*, !dbg !430
  %42 = load i64, i64* %41, align 8, !dbg !430, !tbaa !247
  %43 = ptrtoint i8* %1 to i64, !dbg !430
  tail call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %42, i64 %43, i32 %39, void (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post) #6, !dbg !430, !srcloc !431
  br label %44

; <label>:44:                                     ; preds = %30, %33, %19, %18
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !432
  ret void, !dbg !432
}

; Function Attrs: inlinehint noredzone nounwind
define internal void @uk_pr_debug(i8* nocapture readnone, ...) #2 !dbg !433 {
  %2 = alloca [1 x %struct.__va_list_tag], align 16
  %3 = bitcast [1 x %struct.__va_list_tag]* %2 to i8*, !dbg !438
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %3) #6, !dbg !438
  call void @llvm.va_start(i8* nonnull %3), !dbg !440
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !451
  call void @llvm.va_end(i8* nonnull %3), !dbg !452
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %3) #6, !dbg !453
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !453
  ret void, !dbg !453
}

; Function Attrs: noredzone
declare dso_local void @uk_mbox_post(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !454 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !474
  br i1 %4, label %5, label %6, !dbg !475

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br label %10, !dbg !477

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !478
  %8 = load i32, i32* %7, align 8, !dbg !478, !tbaa !278
  %9 = icmp eq i32 %8, 1, !dbg !479
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !476
  br i1 %9, label %11, label %10, !dbg !477, !prof !339

; <label>:10:                                     ; preds = %6, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !480
  tail call void @ukplat_terminate(i32 3) #8, !dbg !480
  unreachable, !dbg !480

; <label>:11:                                     ; preds = %6
  %12 = bitcast i32* %3 to i8*, !dbg !482
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !482
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !483, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !486
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !487
  br i1 %14, label %22, label %15, !dbg !487

; <label>:15:                                     ; preds = %11
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !488, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !491
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !487
  br i1 %17, label %22, label %18, !dbg !492

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !493
  %20 = load %struct.uk_mbox*, %struct.uk_mbox** %19, align 8, !dbg !493, !tbaa !247
  %21 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %20, i8* %1) #9, !dbg !493
  store i32 %21, i32* %3, align 4, !dbg !493, !tbaa !263
  br label %35, !dbg !493

; <label>:22:                                     ; preds = %15, %11
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !496, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !500
  %24 = and i64 %23, -65536, !dbg !502
  %25 = or i64 %24, 4097, !dbg !502
  %26 = add nsw i64 %25, -1, !dbg !502
  %27 = inttoptr i64 %26 to i32*, !dbg !503
  %28 = load i32, i32* %27, align 4096, !dbg !504, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !505
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !506
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !506
  %31 = load i64, i64* %30, align 8, !dbg !506, !tbaa !247
  %32 = ptrtoint i8* %1 to i64, !dbg !506
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %28, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #6, !dbg !506, !srcloc !507
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %33) #6, !dbg !508, !srcloc !511
  %34 = load i32, i32* %3, align 4, !dbg !512, !tbaa !263
  br label %35

; <label>:35:                                     ; preds = %22, %18
  %36 = phi i32 [ %34, %22 ], [ %21, %18 ], !dbg !512
  %37 = ashr i32 %36, 31, !dbg !514
  %38 = trunc i32 %37 to i8, !dbg !514
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !515
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !515
  ret i8 %38, !dbg !515
}

; Function Attrs: noredzone
declare dso_local i32 @uk_mbox_post_try(%struct.uk_mbox*, i8*) #4

; Function Attrs: noredzone nounwind
define dso_local signext i8 @sys_mbox_trypost_fromisr(%struct.sys_mbox_t* readonly, i8*) local_unnamed_addr #0 !dbg !516 {
  %3 = alloca i32, align 4
  %4 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !534
  br i1 %4, label %5, label %6, !dbg !535

; <label>:5:                                      ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br label %10, !dbg !537

; <label>:6:                                      ; preds = %2
  %7 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !538
  %8 = load i32, i32* %7, align 8, !dbg !538, !tbaa !278
  %9 = icmp eq i32 %8, 1, !dbg !539
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !536
  br i1 %9, label %11, label %10, !dbg !537, !prof !339

; <label>:10:                                     ; preds = %6, %5
  tail call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !540
  tail call void @ukplat_terminate(i32 3) #8, !dbg !540
  unreachable, !dbg !540

; <label>:11:                                     ; preds = %6
  %12 = bitcast i32* %3 to i8*, !dbg !542
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %12) #6, !dbg !542
  %13 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !543, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !546
  %14 = icmp ult i64 %13, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !547
  br i1 %14, label %22, label %15, !dbg !547

; <label>:15:                                     ; preds = %11
  %16 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !548, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !551
  %17 = icmp ugt i64 %16, ptrtoint ([0 x i8]* @_end to i64), !dbg !547
  br i1 %17, label %22, label %18, !dbg !552

; <label>:18:                                     ; preds = %15
  %19 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !553
  %20 = load %struct.uk_mbox*, %struct.uk_mbox** %19, align 8, !dbg !553, !tbaa !247
  %21 = tail call i32 @uk_mbox_post_try(%struct.uk_mbox* %20, i8* %1) #9, !dbg !553
  store i32 %21, i32* %3, align 4, !dbg !553, !tbaa !263
  br label %35, !dbg !553

; <label>:22:                                     ; preds = %15, %11
  %23 = tail call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !556, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !560
  %24 = and i64 %23, -65536, !dbg !562
  %25 = or i64 %24, 4097, !dbg !562
  %26 = add nsw i64 %25, -1, !dbg !562
  %27 = inttoptr i64 %26 to i32*, !dbg !563
  %28 = load i32, i32* %27, align 4096, !dbg !564, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !565
  %29 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !566
  %30 = bitcast %struct.uk_mbox** %29 to i64*, !dbg !566
  %31 = load i64, i64* %30, align 8, !dbg !566, !tbaa !247
  %32 = ptrtoint i8* %1 to i64, !dbg !566
  %33 = tail call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_post_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %31, i64 %32, i32 %28, i32 (%struct.uk_mbox*, i8*)* nonnull @uk_mbox_post_try) #6, !dbg !566, !srcloc !567
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %3, i64 %33) #6, !dbg !568, !srcloc !571
  %34 = load i32, i32* %3, align 4, !dbg !572, !tbaa !263
  br label %35

; <label>:35:                                     ; preds = %22, %18
  %36 = phi i32 [ %34, %22 ], [ %21, %18 ], !dbg !572
  %37 = ashr i32 %36, 31, !dbg !574
  %38 = trunc i32 %37 to i8, !dbg !574
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %12) #6, !dbg !575
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !575
  ret i8 %38, !dbg !575
}

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_fetch(%struct.sys_mbox_t* readonly, i8**, i32) local_unnamed_addr #0 !dbg !576 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = bitcast i64* %4 to i8*, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #6, !dbg !621
  %8 = bitcast i64* %5 to i8*, !dbg !621
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #6, !dbg !621
  %9 = bitcast i8** %6 to i8*, !dbg !622
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #6, !dbg !622
  %10 = ptrtoint i8** %6 to i64, !dbg !623
  %11 = add i64 %10, 65536, !dbg !624
  %12 = inttoptr i64 %11 to i8**, !dbg !625
  %13 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !631
  br i1 %13, label %14, label %15, !dbg !632

; <label>:14:                                     ; preds = %3
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br label %19, !dbg !634

; <label>:15:                                     ; preds = %3
  %16 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !635
  %17 = load i32, i32* %16, align 8, !dbg !635, !tbaa !278
  %18 = icmp eq i32 %17, 1, !dbg !636
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !633
  br i1 %18, label %20, label %19, !dbg !634, !prof !339

; <label>:19:                                     ; preds = %15, %14
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !637
  call void @ukplat_terminate(i32 3) #8, !dbg !637
  unreachable, !dbg !637

; <label>:20:                                     ; preds = %15
  %21 = icmp eq i32 %2, 0, !dbg !639
  %22 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !640, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !643
  %23 = icmp uge i64 %22, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !644
  br i1 %21, label %24, label %78, !dbg !645

; <label>:24:                                     ; preds = %20
  br i1 %23, label %25, label %30, !dbg !646

; <label>:25:                                     ; preds = %24
  %26 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !647, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !650
  %27 = icmp ugt i64 %26, ptrtoint ([0 x i8]* @_end to i64), !dbg !646
  br i1 %27, label %30, label %28, !dbg !651

; <label>:28:                                     ; preds = %25
  %29 = call i64 @ukplat_monotonic_clock() #9, !dbg !652
  store i64 %29, i64* %4, align 8, !dbg !652, !tbaa !655
  br label %38, !dbg !652

; <label>:30:                                     ; preds = %25, %24
  %31 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !657, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !661
  %32 = and i64 %31, -65536, !dbg !663
  %33 = or i64 %32, 4097, !dbg !663
  %34 = add nsw i64 %33, -1, !dbg !663
  %35 = inttoptr i64 %34 to i32*, !dbg !664
  %36 = load i32, i32* %35, align 4096, !dbg !665, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !666
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %36, i64 ()* nonnull @ukplat_monotonic_clock) #6, !dbg !667, !srcloc !668
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %37) #6, !dbg !669, !srcloc !673
  br label %38

; <label>:38:                                     ; preds = %28, %30
  %39 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !674, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !677
  %40 = icmp ult i64 %39, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !678
  br i1 %40, label %47, label %41, !dbg !678

; <label>:41:                                     ; preds = %38
  %42 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !679, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !682
  %43 = icmp ugt i64 %42, ptrtoint ([0 x i8]* @_end to i64), !dbg !678
  br i1 %43, label %47, label %44, !dbg !683

; <label>:44:                                     ; preds = %41
  %45 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !684
  %46 = load %struct.uk_mbox*, %struct.uk_mbox** %45, align 8, !dbg !684, !tbaa !247
  call void @uk_mbox_recv(%struct.uk_mbox* %46, i8** %12) #9, !dbg !684
  br label %57, !dbg !684

; <label>:47:                                     ; preds = %41, %38
  %48 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !686, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !690
  %49 = and i64 %48, -65536, !dbg !692
  %50 = or i64 %49, 4097, !dbg !692
  %51 = add nsw i64 %50, -1, !dbg !692
  %52 = inttoptr i64 %51 to i32*, !dbg !693
  %53 = load i32, i32* %52, align 4096, !dbg !694, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !695
  %54 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !696
  %55 = bitcast %struct.uk_mbox** %54 to i64*, !dbg !696
  %56 = load i64, i64* %55, align 8, !dbg !696, !tbaa !247
  call void asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv\0A\092:\0A\09movq $2, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $2, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %56, i64 %11, i32 %53, void (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv) #6, !dbg !696, !srcloc !697
  br label %57

; <label>:57:                                     ; preds = %44, %47
  %58 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !698, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !701
  %59 = icmp ult i64 %58, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !702
  br i1 %59, label %65, label %60, !dbg !702

; <label>:60:                                     ; preds = %57
  %61 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !703, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !706
  %62 = icmp ugt i64 %61, ptrtoint ([0 x i8]* @_end to i64), !dbg !702
  br i1 %62, label %65, label %63, !dbg !707

; <label>:63:                                     ; preds = %60
  %64 = call i64 @ukplat_monotonic_clock() #9, !dbg !708
  store i64 %64, i64* %5, align 8, !dbg !708, !tbaa !655
  br label %74, !dbg !708

; <label>:65:                                     ; preds = %60, %57
  %66 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !711, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !715
  %67 = and i64 %66, -65536, !dbg !717
  %68 = or i64 %67, 4097, !dbg !717
  %69 = add nsw i64 %68, -1, !dbg !717
  %70 = inttoptr i64 %69 to i32*, !dbg !718
  %71 = load i32, i32* %70, align 4096, !dbg !719, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !720
  %72 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call ukplat_monotonic_clock\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i32 %71, i64 ()* nonnull @ukplat_monotonic_clock) #6, !dbg !721, !srcloc !722
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %5, i64 %72) #6, !dbg !723, !srcloc !727
  %73 = load i64, i64* %5, align 8, !dbg !728, !tbaa !655
  br label %74

; <label>:74:                                     ; preds = %65, %63
  %75 = phi i64 [ %73, %65 ], [ %64, %63 ], !dbg !728
  %76 = load i64, i64* %4, align 8, !dbg !729, !tbaa !655
  %77 = sub i64 %75, %76, !dbg !730
  store i64 %77, i64* %4, align 8, !dbg !731, !tbaa !655
  br label %105, !dbg !732

; <label>:78:                                     ; preds = %20
  br i1 %23, label %79, label %88, !dbg !733

; <label>:79:                                     ; preds = %78
  %80 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !734, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !737
  %81 = icmp ugt i64 %80, ptrtoint ([0 x i8]* @_end to i64), !dbg !733
  br i1 %81, label %88, label %82, !dbg !738

; <label>:82:                                     ; preds = %79
  %83 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !739
  %84 = load %struct.uk_mbox*, %struct.uk_mbox** %83, align 8, !dbg !739, !tbaa !247
  %85 = zext i32 %2 to i64, !dbg !739
  %86 = mul nuw nsw i64 %85, 1000000, !dbg !739
  %87 = call i64 @uk_mbox_recv_to(%struct.uk_mbox* %84, i8** %12, i64 %86) #9, !dbg !739
  store i64 %87, i64* %4, align 8, !dbg !739, !tbaa !655
  br label %102, !dbg !739

; <label>:88:                                     ; preds = %79, %78
  %89 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !741, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !745
  %90 = and i64 %89, -65536, !dbg !747
  %91 = or i64 %90, 4097, !dbg !747
  %92 = add nsw i64 %91, -1, !dbg !747
  %93 = inttoptr i64 %92 to i32*, !dbg !748
  %94 = load i32, i32* %93, align 4096, !dbg !749, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !750
  %95 = zext i32 %2 to i64, !dbg !751
  %96 = mul nuw nsw i64 %95, 1000000, !dbg !751
  %97 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !751
  %98 = bitcast %struct.uk_mbox** %97 to i64*, !dbg !751
  %99 = load i64, i64* %98, align 8, !dbg !751, !tbaa !247
  %100 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r12, %rdx\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_to\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r12},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %99, i64 %11, i64 %96, i32 %94, i64 (%struct.uk_mbox*, i8**, i64)* nonnull @uk_mbox_recv_to) #6, !dbg !751, !srcloc !752
  call void asm sideeffect "mov %r11, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i64* nonnull %4, i64 %100) #6, !dbg !753, !srcloc !757
  %101 = load i64, i64* %4, align 8, !dbg !758, !tbaa !655
  br label %102

; <label>:102:                                    ; preds = %88, %82
  %103 = phi i64 [ %101, %88 ], [ %87, %82 ], !dbg !758
  %104 = icmp eq i64 %103, -1, !dbg !758
  br i1 %104, label %115, label %105, !dbg !760, !prof !209

; <label>:105:                                    ; preds = %102, %74
  %106 = phi i64 [ %103, %102 ], [ %77, %74 ]
  %107 = icmp eq i8** %1, null, !dbg !761
  br i1 %107, label %112, label %108, !dbg !763

; <label>:108:                                    ; preds = %105
  %109 = inttoptr i64 %11 to i64*, !dbg !764
  %110 = load i64, i64* %109, align 8, !dbg !764, !tbaa !213
  %111 = bitcast i8** %1 to i64*, !dbg !765
  store i64 %110, i64* %111, align 8, !dbg !765, !tbaa !213
  br label %112, !dbg !766

; <label>:112:                                    ; preds = %105, %108
  %113 = udiv i64 %106, 1000000, !dbg !767
  %114 = trunc i64 %113 to i32, !dbg !768
  br label %115, !dbg !769

; <label>:115:                                    ; preds = %102, %112
  %116 = phi i32 [ %114, %112 ], [ -1, %102 ], !dbg !770
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #6, !dbg !771
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #6, !dbg !771
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #6, !dbg !771
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !771
  ret i32 %116, !dbg !771
}

; Function Attrs: noredzone
declare dso_local i64 @ukplat_monotonic_clock() #4

; Function Attrs: noredzone
declare dso_local void @uk_mbox_recv(%struct.uk_mbox*, i8**) #4

; Function Attrs: noredzone
declare dso_local i64 @uk_mbox_recv_to(%struct.uk_mbox*, i8**, i64) #4

; Function Attrs: noredzone nounwind
define dso_local i32 @sys_arch_mbox_tryfetch(%struct.sys_mbox_t* readonly, i8**) local_unnamed_addr #0 !dbg !772 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = bitcast i8** %3 to i8*, !dbg !790
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #6, !dbg !790
  %6 = ptrtoint i8** %3 to i64, !dbg !791
  %7 = add i64 %6, 65536, !dbg !792
  %8 = inttoptr i64 %7 to i8**, !dbg !793
  %9 = bitcast i32* %4 to i8*, !dbg !795
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %9) #6, !dbg !795
  %10 = icmp eq %struct.sys_mbox_t* %0, null, !dbg !800
  br i1 %10, label %11, label %12, !dbg !801

; <label>:11:                                     ; preds = %2
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br label %16, !dbg !803

; <label>:12:                                     ; preds = %2
  %13 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 2, !dbg !804
  %14 = load i32, i32* %13, align 8, !dbg !804, !tbaa !278
  %15 = icmp eq i32 %14, 1, !dbg !805
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !802
  br i1 %15, label %17, label %16, !dbg !803, !prof !339

; <label>:16:                                     ; preds = %12, %11
  call void (i8*, ...) @uk_pr_crit(i8* undef, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !806
  call void @ukplat_terminate(i32 3) #8, !dbg !806
  unreachable, !dbg !806

; <label>:17:                                     ; preds = %12
  %18 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !808, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !811
  %19 = icmp ult i64 %18, ptrtoint ([0 x i8]* @_intrstack_start to i64), !dbg !812
  br i1 %19, label %27, label %20, !dbg !812

; <label>:20:                                     ; preds = %17
  %21 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !813, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !816
  %22 = icmp ugt i64 %21, ptrtoint ([0 x i8]* @_end to i64), !dbg !812
  br i1 %22, label %27, label %23, !dbg !817

; <label>:23:                                     ; preds = %20
  %24 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !818
  %25 = load %struct.uk_mbox*, %struct.uk_mbox** %24, align 8, !dbg !818, !tbaa !247
  %26 = call i32 @uk_mbox_recv_try(%struct.uk_mbox* %25, i8** %8) #9, !dbg !818
  store i32 %26, i32* %4, align 4, !dbg !818, !tbaa !263
  br label %39, !dbg !818

; <label>:27:                                     ; preds = %20, %17
  %28 = call i64 asm sideeffect "mov %rsp, $0", "=r,~{dirflag},~{fpsr},~{flags}"() #6, !dbg !821, !srcloc !236
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !825
  %29 = and i64 %28, -65536, !dbg !827
  %30 = or i64 %29, 4097, !dbg !827
  %31 = add nsw i64 %30, -1, !dbg !827
  %32 = inttoptr i64 %31 to i32*, !dbg !828
  %33 = load i32, i32* %32, align 4096, !dbg !829, !tbaa !263
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !830
  %34 = getelementptr inbounds %struct.sys_mbox_t, %struct.sys_mbox_t* %0, i64 0, i32 1, !dbg !831
  %35 = bitcast %struct.uk_mbox** %34 to i64*, !dbg !831
  %36 = load i64, i64* %35, align 8, !dbg !831, !tbaa !247
  %37 = call i64 asm sideeffect "push %rsi\0A\09push %rdi\0A\09push %r8\0A\09push %r9\0A\09push %r10\0A\09push %r11\0A\09push %r12\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09push (%r11)\0A\09addq $$0x8,%r11\0A\09push (%r11)\0A\09movq %r15,%r11\0A\09shl $$0x4,%r11\0A\09addq $$tsb_comp1,%r11\0A\09lea (%r11),%rcx\0A\09movq %rsp,(%r11)\0A\09movq %rbp,0x8(%rcx)\0A\091:\0A\09movq $4, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $4, %rax\0A\09jne 1b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp0,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09andq $$-16, %rsp\0A\09call uk_mbox_recv_try\0A\09movq %rax, %rsi\0A\092:\0A\09movq $3, %rax\0A\09xor %rcx, %rcx\0A\09xor %rdx, %rdx\0A\09wrpkru\0A\09lfence\0A\09cmpq $3, %rax\0A\09jne 2b\0A\09movq %r15,%rsp\0A\09shl $$0x4,%rsp\0A\09addq $$tsb_comp1,%rsp\0A\09movq %rsp,%rbp\0A\09movq (%rsp),%rsp\0A\09addq $$0x8,%rbp\0A\09movq (%rbp),%rbp\0A\09movq %r15,%r12\0A\09shl $$0x4,%r12\0A\09addq $$tsb_comp1,%r12\0A\09addq $$0x8,%r12\0A\09pop (%r12)\0A\09subq $$0x8,%r12\0A\09pop (%r12)\0A\09pop %r12\0A\09pop %r11\0A\09pop %r10\0A\09pop %r9\0A\09movq %rsi, %r11\0A\09pop %r8\0A\09pop %rdi\0A\09pop %rsi\0A\09", "={r11},=*m,=*m,i,i,{di},{si},{r15},i,~{rax},~{rcx},~{rdx},~{memory},~{dirflag},~{fpsr},~{flags}"([32 x %struct.uk_thread_status_block]* nonnull @tsb_comp1, [32 x %struct.uk_thread_status_block]* nonnull @tsb_comp0, i64 1073741811, i64 1073741820, i64 %36, i64 %7, i32 %33, i32 (%struct.uk_mbox*, i8**)* nonnull @uk_mbox_recv_try) #6, !dbg !831, !srcloc !832
  call void asm sideeffect "mov %r11d, $0\0A\09", "=*m,{r11},~{dirflag},~{fpsr},~{flags}"(i32* nonnull %4, i64 %37) #6, !dbg !833, !srcloc !836
  %38 = load i32, i32* %4, align 4, !dbg !837, !tbaa !263
  br label %39

; <label>:39:                                     ; preds = %27, %23
  %40 = phi i32 [ %38, %27 ], [ %26, %23 ], !dbg !837
  %41 = icmp slt i32 %40, 0, !dbg !839
  br i1 %41, label %48, label %42, !dbg !840

; <label>:42:                                     ; preds = %39
  %43 = icmp eq i8** %1, null, !dbg !841
  br i1 %43, label %48, label %44, !dbg !843

; <label>:44:                                     ; preds = %42
  %45 = inttoptr i64 %7 to i64*, !dbg !844
  %46 = load i64, i64* %45, align 8, !dbg !844, !tbaa !213
  %47 = bitcast i8** %1 to i64*, !dbg !845
  store i64 %46, i64* %47, align 8, !dbg !845, !tbaa !213
  br label %48, !dbg !846

; <label>:48:                                     ; preds = %44, %42, %39
  %49 = phi i32 [ -1, %39 ], [ 0, %42 ], [ 0, %44 ], !dbg !847
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %9) #6, !dbg !848
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #6, !dbg !848
  store volatile i32 42, i32* @__A_VARIABLE, align 4, !dbg !848
  ret i32 %49, !dbg !848
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
!236 = !{i32 424966}
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
!266 = !{i32 -2146442747, i32 -2146442734, i32 -2146442709, i32 -2146442685, i32 -2146442660, i32 -2146442585, i32 -2146442560, i32 -2146442416, i32 -2146439190, i32 -2146439101, i32 -2146438980, i32 -2146438885, i32 -2146438784, i32 -2146438757, i32 -2146438674, i32 -2146438585, i32 -2146438464, i32 -2146438364, i32 -2146438258, i32 -2146438150, i32 -2146442124, i32 -2146442071, i32 -2146442040, i32 -2146442009, i32 -2146441988, i32 -2146441966, i32 -2146441917, i32 -2146441896, i32 -2146438067, i32 -2146437978, i32 -2146437857, i32 -2146437758, i32 -2146437652, i32 -2146437550, i32 -2146437517, i32 -2146437444, i32 -2146437376, i32 -2146441589, i32 -2146441530, i32 -2146441477, i32 -2146441446, i32 -2146441415, i32 -2146441394, i32 -2146441372, i32 -2146441323, i32 -2146441302, i32 -2146437326, i32 -2146437237, i32 -2146437116, i32 -2146437017, i32 -2146436911, i32 -2146436809, i32 -2146436776, i32 -2146436693, i32 -2146436604, i32 -2146436483, i32 -2146436383, i32 -2146436357, i32 -2146436254, i32 -2146436228, i32 -2146441044, i32 -2146440977, i32 -2146440952, i32 -2146440888, i32 -2146440806, i32 -2146440783, i32 -2146440758, i32 -2146440733}
!267 = !DILocation(line: 50, column: 2, scope: !268)
!268 = distinct !DILexicalBlock(scope: !269, file: !3, line: 50, column: 2)
!269 = distinct !DILexicalBlock(scope: !270, file: !3, line: 50, column: 2)
!270 = distinct !DILexicalBlock(scope: !194, file: !3, line: 50, column: 2)
!271 = !{i32 -2146439511, i32 -2146439495}
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
!335 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !330)
!336 = !DILocation(line: 78, column: 2, scope: !332)
!337 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !330)
!338 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !330)
!339 = !{!"branch_weights", i32 2000, i32 1}
!340 = !DILocation(line: 78, column: 2, scope: !341)
!341 = distinct !DILexicalBlock(scope: !331, file: !3, line: 78, column: 2)
!342 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !343)
!343 = distinct !DILocation(line: 80, column: 2, scope: !326)
!344 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !343)
!345 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !343)
!346 = !DILocation(line: 80, column: 2, scope: !326)
!347 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !348)
!348 = distinct !DILocation(line: 80, column: 2, scope: !326)
!349 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !348)
!350 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !348)
!351 = !DILocation(line: 80, column: 2, scope: !327)
!352 = !DILocation(line: 80, column: 2, scope: !353)
!353 = distinct !DILexicalBlock(scope: !326, file: !3, line: 80, column: 2)
!354 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !355)
!355 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !356)
!356 = distinct !DILocation(line: 80, column: 2, scope: !323)
!357 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !355)
!358 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !355)
!359 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !356)
!360 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !356)
!361 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !356)
!362 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !356)
!363 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !356)
!364 = !DILocation(line: 80, column: 2, scope: !323)
!365 = !{i32 -2146433620, i32 -2146433607, i32 -2146433582, i32 -2146433558, i32 -2146433533, i32 -2146433458, i32 -2146433433, i32 -2146433289, i32 -2146431046, i32 -2146430957, i32 -2146430836, i32 -2146430741, i32 -2146430640, i32 -2146430613, i32 -2146430530, i32 -2146430441, i32 -2146430320, i32 -2146430220, i32 -2146430114, i32 -2146430006, i32 -2146432997, i32 -2146432944, i32 -2146432913, i32 -2146432882, i32 -2146432861, i32 -2146432839, i32 -2146432790, i32 -2146432769, i32 -2146429923, i32 -2146429834, i32 -2146429713, i32 -2146429614, i32 -2146429508, i32 -2146429406, i32 -2146429373, i32 -2146429300, i32 -2146429232, i32 -2146432392, i32 -2146432339, i32 -2146432308, i32 -2146432277, i32 -2146432256, i32 -2146432234, i32 -2146432185, i32 -2146432164, i32 -2146429184, i32 -2146429095, i32 -2146428974, i32 -2146428875, i32 -2146428769, i32 -2146428667, i32 -2146428634, i32 -2146428551, i32 -2146428462, i32 -2146428341, i32 -2146428241, i32 -2146428215, i32 -2146428112, i32 -2146428086, i32 -2146431906, i32 -2146431839, i32 -2146431814, i32 -2146431750, i32 -2146431634, i32 -2146431609, i32 -2146431584}
!366 = !DILocation(line: 65, column: 39, scope: !304, inlinedAt: !367)
!367 = distinct !DILocation(line: 81, column: 2, scope: !319)
!368 = !DILocation(line: 68, column: 14, scope: !304, inlinedAt: !367)
!369 = !DILocation(line: 69, column: 1, scope: !304, inlinedAt: !367)
!370 = !DILocation(line: 82, column: 1, scope: !319)
!371 = !DILocation(line: 85, column: 32, scope: !2)
!372 = !DILocation(line: 85, column: 44, scope: !2)
!373 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !374)
!374 = distinct !DILocation(line: 87, column: 2, scope: !375)
!375 = distinct !DILexicalBlock(scope: !376, file: !3, line: 87, column: 2)
!376 = distinct !DILexicalBlock(scope: !2, file: !3, line: 87, column: 2)
!377 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !374)
!378 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !374)
!379 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !374)
!380 = !DILocation(line: 87, column: 2, scope: !376)
!381 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !374)
!382 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !374)
!383 = !DILocation(line: 87, column: 2, scope: !384)
!384 = distinct !DILexicalBlock(scope: !375, file: !3, line: 87, column: 2)
!385 = !DILocation(line: 89, column: 7, scope: !174)
!386 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !387)
!387 = distinct !DILocation(line: 0, scope: !171)
!388 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !387)
!389 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !387)
!390 = !DILocation(line: 0, scope: !171)
!391 = !DILocation(line: 89, column: 6, scope: !2)
!392 = !DILocation(line: 90, column: 3, scope: !171)
!393 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !394)
!394 = distinct !DILocation(line: 90, column: 3, scope: !171)
!395 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !394)
!396 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !394)
!397 = !DILocation(line: 90, column: 3, scope: !172)
!398 = !DILocation(line: 90, column: 3, scope: !399)
!399 = distinct !DILexicalBlock(scope: !171, file: !3, line: 90, column: 3)
!400 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !401)
!401 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !402)
!402 = distinct !DILocation(line: 90, column: 3, scope: !168)
!403 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !401)
!404 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !401)
!405 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !402)
!406 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !402)
!407 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !402)
!408 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !402)
!409 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !402)
!410 = !DILocation(line: 90, column: 3, scope: !168)
!411 = !{i32 -2146425113, i32 -2146425100, i32 -2146425075, i32 -2146425051, i32 -2146425026, i32 -2146424951, i32 -2146424926, i32 -2146424782, i32 -2146422273, i32 -2146422184, i32 -2146422063, i32 -2146421968, i32 -2146421867, i32 -2146421840, i32 -2146421757, i32 -2146421668, i32 -2146421547, i32 -2146421447, i32 -2146421341, i32 -2146421233, i32 -2146424494, i32 -2146424441, i32 -2146424410, i32 -2146424379, i32 -2146424358, i32 -2146424336, i32 -2146424287, i32 -2146424266, i32 -2146421150, i32 -2146421061, i32 -2146420940, i32 -2146420841, i32 -2146420735, i32 -2146420633, i32 -2146420600, i32 -2146420527, i32 -2146420459, i32 -2146423892, i32 -2146423839, i32 -2146423808, i32 -2146423777, i32 -2146423756, i32 -2146423734, i32 -2146423685, i32 -2146423664, i32 -2146420412, i32 -2146420323, i32 -2146420202, i32 -2146420103, i32 -2146419997, i32 -2146419895, i32 -2146419862, i32 -2146419779, i32 -2146419690, i32 -2146419569, i32 -2146419469, i32 -2146419443, i32 -2146419340, i32 -2146419314, i32 -2146423406, i32 -2146423339, i32 -2146423314, i32 -2146423250, i32 -2146423134, i32 -2146423109, i32 -2146423084}
!412 = !DILocation(line: 95, column: 2, scope: !179)
!413 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !414)
!414 = distinct !DILocation(line: 95, column: 2, scope: !179)
!415 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !414)
!416 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !414)
!417 = !DILocation(line: 95, column: 2, scope: !180)
!418 = !DILocation(line: 95, column: 2, scope: !419)
!419 = distinct !DILexicalBlock(scope: !179, file: !3, line: 95, column: 2)
!420 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !421)
!421 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !422)
!422 = distinct !DILocation(line: 95, column: 2, scope: !176)
!423 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !421)
!424 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !421)
!425 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !422)
!426 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !422)
!427 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !422)
!428 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !422)
!429 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !422)
!430 = !DILocation(line: 95, column: 2, scope: !176)
!431 = !{i32 -2146417392, i32 -2146417379, i32 -2146417354, i32 -2146417330, i32 -2146417305, i32 -2146417230, i32 -2146417205, i32 -2146417061, i32 -2146414822, i32 -2146414733, i32 -2146414612, i32 -2146414517, i32 -2146414416, i32 -2146414389, i32 -2146414306, i32 -2146414217, i32 -2146414096, i32 -2146413996, i32 -2146413890, i32 -2146413782, i32 -2146416769, i32 -2146416716, i32 -2146416685, i32 -2146416654, i32 -2146416633, i32 -2146416611, i32 -2146416562, i32 -2146416541, i32 -2146413699, i32 -2146413610, i32 -2146413489, i32 -2146413390, i32 -2146413284, i32 -2146413182, i32 -2146413149, i32 -2146413076, i32 -2146413008, i32 -2146416164, i32 -2146416111, i32 -2146416080, i32 -2146416049, i32 -2146416028, i32 -2146416006, i32 -2146415957, i32 -2146415936, i32 -2146412960, i32 -2146412871, i32 -2146412750, i32 -2146412651, i32 -2146412545, i32 -2146412443, i32 -2146412410, i32 -2146412327, i32 -2146412238, i32 -2146412117, i32 -2146412017, i32 -2146411991, i32 -2146411888, i32 -2146411862, i32 -2146415678, i32 -2146415611, i32 -2146415586, i32 -2146415522, i32 -2146415406, i32 -2146415381, i32 -2146415356}
!432 = !DILocation(line: 96, column: 1, scope: !2)
!433 = distinct !DISubprogram(name: "uk_pr_debug", scope: !136, file: !136, line: 162, type: !137, isLocal: true, isDefinition: true, scopeLine: 163, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !434)
!434 = !{!435, !436}
!435 = !DILocalVariable(name: "fmt", arg: 1, scope: !433, file: !136, line: 162, type: !139)
!436 = !DILocalVariable(name: "argp", scope: !433, file: !136, line: 164, type: !144)
!437 = !DILocation(line: 162, column: 44, scope: !433)
!438 = !DILocation(line: 164, column: 2, scope: !433)
!439 = !DILocation(line: 164, column: 10, scope: !433)
!440 = !DILocation(line: 165, column: 2, scope: !433)
!441 = !DILocalVariable(name: "fmt", arg: 1, scope: !442, file: !136, line: 97, type: !139)
!442 = distinct !DISubprogram(name: "uk_vprintd", scope: !136, file: !136, line: 97, type: !443, isLocal: true, isDefinition: true, scopeLine: 98, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !446)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !139, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!446 = !{!441, !447}
!447 = !DILocalVariable(name: "ap", arg: 2, scope: !442, file: !136, line: 97, type: !445)
!448 = !DILocation(line: 97, column: 43, scope: !442, inlinedAt: !449)
!449 = distinct !DILocation(line: 166, column: 2, scope: !433)
!450 = !DILocation(line: 97, column: 65, scope: !442, inlinedAt: !449)
!451 = !DILocation(line: 98, column: 2, scope: !442, inlinedAt: !449)
!452 = !DILocation(line: 167, column: 2, scope: !433)
!453 = !DILocation(line: 168, column: 1, scope: !433)
!454 = distinct !DISubprogram(name: "sys_mbox_trypost", scope: !3, file: !3, line: 99, type: !455, isLocal: false, isDefinition: true, scopeLine: 100, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !457)
!455 = !DISubroutineType(types: !456)
!456 = !{!188, !6, !21}
!457 = !{!458, !459, !460, !461, !467}
!458 = !DILocalVariable(name: "mbox", arg: 1, scope: !454, file: !3, line: 99, type: !6)
!459 = !DILocalVariable(name: "msg", arg: 2, scope: !454, file: !3, line: 99, type: !21)
!460 = !DILocalVariable(name: "ret", scope: !454, file: !3, line: 102, type: !40)
!461 = !DILocalVariable(name: "tid", scope: !462, file: !3, line: 104, type: !123)
!462 = distinct !DILexicalBlock(scope: !463, file: !3, line: 104, column: 2)
!463 = distinct !DILexicalBlock(scope: !464, file: !3, line: 104, column: 2)
!464 = distinct !DILexicalBlock(scope: !465, file: !3, line: 104, column: 2)
!465 = distinct !DILexicalBlock(scope: !466, file: !3, line: 104, column: 2)
!466 = distinct !DILexicalBlock(scope: !454, file: !3, line: 104, column: 2)
!467 = !DILocalVariable(name: "_ret", scope: !462, file: !3, line: 104, type: !113)
!468 = !DILocation(line: 99, column: 36, scope: !454)
!469 = !DILocation(line: 99, column: 48, scope: !454)
!470 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !471)
!471 = distinct !DILocation(line: 101, column: 2, scope: !472)
!472 = distinct !DILexicalBlock(scope: !473, file: !3, line: 101, column: 2)
!473 = distinct !DILexicalBlock(scope: !454, file: !3, line: 101, column: 2)
!474 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !471)
!475 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !471)
!476 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !471)
!477 = !DILocation(line: 101, column: 2, scope: !473)
!478 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !471)
!479 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !471)
!480 = !DILocation(line: 101, column: 2, scope: !481)
!481 = distinct !DILexicalBlock(scope: !472, file: !3, line: 101, column: 2)
!482 = !DILocation(line: 102, column: 2, scope: !454)
!483 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !484)
!484 = distinct !DILocation(line: 104, column: 2, scope: !465)
!485 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !484)
!486 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !484)
!487 = !DILocation(line: 104, column: 2, scope: !465)
!488 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !489)
!489 = distinct !DILocation(line: 104, column: 2, scope: !465)
!490 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !489)
!491 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !489)
!492 = !DILocation(line: 104, column: 2, scope: !466)
!493 = !DILocation(line: 104, column: 2, scope: !494)
!494 = distinct !DILexicalBlock(scope: !465, file: !3, line: 104, column: 2)
!495 = !DILocation(line: 102, column: 6, scope: !454)
!496 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !497)
!497 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !498)
!498 = distinct !DILocation(line: 104, column: 2, scope: !462)
!499 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !497)
!500 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !497)
!501 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !498)
!502 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !498)
!503 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !498)
!504 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !498)
!505 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !498)
!506 = !DILocation(line: 104, column: 2, scope: !462)
!507 = !{i32 -2146409445, i32 -2146409432, i32 -2146409407, i32 -2146409383, i32 -2146409358, i32 -2146409283, i32 -2146409258, i32 -2146409114, i32 -2146405938, i32 -2146405849, i32 -2146405728, i32 -2146405633, i32 -2146405532, i32 -2146405505, i32 -2146405422, i32 -2146405333, i32 -2146405212, i32 -2146405112, i32 -2146405006, i32 -2146404898, i32 -2146408822, i32 -2146408769, i32 -2146408738, i32 -2146408707, i32 -2146408686, i32 -2146408664, i32 -2146408615, i32 -2146408594, i32 -2146404815, i32 -2146404726, i32 -2146404605, i32 -2146404506, i32 -2146404400, i32 -2146404298, i32 -2146404265, i32 -2146404192, i32 -2146404124, i32 -2146408287, i32 -2146408228, i32 -2146408175, i32 -2146408144, i32 -2146408113, i32 -2146408092, i32 -2146408070, i32 -2146408021, i32 -2146408000, i32 -2146404072, i32 -2146403983, i32 -2146403862, i32 -2146403763, i32 -2146403657, i32 -2146403555, i32 -2146403522, i32 -2146403439, i32 -2146403350, i32 -2146403229, i32 -2146403129, i32 -2146403103, i32 -2146403000, i32 -2146402974, i32 -2146407742, i32 -2146407675, i32 -2146407650, i32 -2146407586, i32 -2146407504, i32 -2146407481, i32 -2146407456, i32 -2146407431}
!508 = !DILocation(line: 104, column: 2, scope: !509)
!509 = distinct !DILexicalBlock(scope: !510, file: !3, line: 104, column: 2)
!510 = distinct !DILexicalBlock(scope: !462, file: !3, line: 104, column: 2)
!511 = !{i32 -2146406416, i32 -2146406399}
!512 = !DILocation(line: 106, column: 6, scope: !513)
!513 = distinct !DILexicalBlock(scope: !454, file: !3, line: 106, column: 6)
!514 = !DILocation(line: 107, column: 3, scope: !513)
!515 = !DILocation(line: 109, column: 1, scope: !454)
!516 = distinct !DISubprogram(name: "sys_mbox_trypost_fromisr", scope: !3, file: !3, line: 112, type: !455, isLocal: false, isDefinition: true, scopeLine: 113, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !517)
!517 = !{!518, !519, !520, !521, !527}
!518 = !DILocalVariable(name: "mbox", arg: 1, scope: !516, file: !3, line: 112, type: !6)
!519 = !DILocalVariable(name: "msg", arg: 2, scope: !516, file: !3, line: 112, type: !21)
!520 = !DILocalVariable(name: "ret", scope: !516, file: !3, line: 115, type: !40)
!521 = !DILocalVariable(name: "tid", scope: !522, file: !3, line: 117, type: !123)
!522 = distinct !DILexicalBlock(scope: !523, file: !3, line: 117, column: 2)
!523 = distinct !DILexicalBlock(scope: !524, file: !3, line: 117, column: 2)
!524 = distinct !DILexicalBlock(scope: !525, file: !3, line: 117, column: 2)
!525 = distinct !DILexicalBlock(scope: !526, file: !3, line: 117, column: 2)
!526 = distinct !DILexicalBlock(scope: !516, file: !3, line: 117, column: 2)
!527 = !DILocalVariable(name: "_ret", scope: !522, file: !3, line: 117, type: !113)
!528 = !DILocation(line: 112, column: 44, scope: !516)
!529 = !DILocation(line: 112, column: 56, scope: !516)
!530 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !531)
!531 = distinct !DILocation(line: 114, column: 2, scope: !532)
!532 = distinct !DILexicalBlock(scope: !533, file: !3, line: 114, column: 2)
!533 = distinct !DILexicalBlock(scope: !516, file: !3, line: 114, column: 2)
!534 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !531)
!535 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !531)
!536 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !531)
!537 = !DILocation(line: 114, column: 2, scope: !533)
!538 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !531)
!539 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !531)
!540 = !DILocation(line: 114, column: 2, scope: !541)
!541 = distinct !DILexicalBlock(scope: !532, file: !3, line: 114, column: 2)
!542 = !DILocation(line: 115, column: 2, scope: !516)
!543 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !544)
!544 = distinct !DILocation(line: 117, column: 2, scope: !525)
!545 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !544)
!546 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !544)
!547 = !DILocation(line: 117, column: 2, scope: !525)
!548 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !549)
!549 = distinct !DILocation(line: 117, column: 2, scope: !525)
!550 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !549)
!551 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !549)
!552 = !DILocation(line: 117, column: 2, scope: !526)
!553 = !DILocation(line: 117, column: 2, scope: !554)
!554 = distinct !DILexicalBlock(scope: !525, file: !3, line: 117, column: 2)
!555 = !DILocation(line: 115, column: 6, scope: !516)
!556 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !557)
!557 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !558)
!558 = distinct !DILocation(line: 117, column: 2, scope: !522)
!559 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !557)
!560 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !557)
!561 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !558)
!562 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !558)
!563 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !558)
!564 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !558)
!565 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !558)
!566 = !DILocation(line: 117, column: 2, scope: !522)
!567 = !{i32 -2146400557, i32 -2146400544, i32 -2146400519, i32 -2146400495, i32 -2146400470, i32 -2146400395, i32 -2146400370, i32 -2146400226, i32 -2146397050, i32 -2146396961, i32 -2146396840, i32 -2146396745, i32 -2146396644, i32 -2146396617, i32 -2146396534, i32 -2146396445, i32 -2146396324, i32 -2146396224, i32 -2146396118, i32 -2146396010, i32 -2146399934, i32 -2146399881, i32 -2146399850, i32 -2146399819, i32 -2146399798, i32 -2146399776, i32 -2146399727, i32 -2146399706, i32 -2146395927, i32 -2146395838, i32 -2146395717, i32 -2146395618, i32 -2146395512, i32 -2146395410, i32 -2146395377, i32 -2146395304, i32 -2146395236, i32 -2146399399, i32 -2146399340, i32 -2146399287, i32 -2146399256, i32 -2146399225, i32 -2146399204, i32 -2146399182, i32 -2146399133, i32 -2146399112, i32 -2146395184, i32 -2146395095, i32 -2146394974, i32 -2146394875, i32 -2146394769, i32 -2146394667, i32 -2146394634, i32 -2146394551, i32 -2146394462, i32 -2146394341, i32 -2146394241, i32 -2146394215, i32 -2146394112, i32 -2146394086, i32 -2146398854, i32 -2146398787, i32 -2146398762, i32 -2146398698, i32 -2146398616, i32 -2146398593, i32 -2146398568, i32 -2146398543}
!568 = !DILocation(line: 117, column: 2, scope: !569)
!569 = distinct !DILexicalBlock(scope: !570, file: !3, line: 117, column: 2)
!570 = distinct !DILexicalBlock(scope: !522, file: !3, line: 117, column: 2)
!571 = !{i32 -2146397528, i32 -2146397511}
!572 = !DILocation(line: 119, column: 6, scope: !573)
!573 = distinct !DILexicalBlock(scope: !516, file: !3, line: 119, column: 6)
!574 = !DILocation(line: 120, column: 3, scope: !573)
!575 = !DILocation(line: 122, column: 1, scope: !516)
!576 = distinct !DISubprogram(name: "sys_arch_mbox_fetch", scope: !3, file: !3, line: 136, type: !577, isLocal: false, isDefinition: true, scopeLine: 137, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !579)
!577 = !DISubroutineType(types: !578)
!578 = !{!121, !6, !41, !121}
!579 = !{!580, !581, !582, !583, !584, !585, !586, !587, !595, !596, !602, !608, !609, !616, !617}
!580 = !DILocalVariable(name: "mbox", arg: 1, scope: !576, file: !3, line: 136, type: !6)
!581 = !DILocalVariable(name: "msg", arg: 2, scope: !576, file: !3, line: 136, type: !41)
!582 = !DILocalVariable(name: "timeout", arg: 3, scope: !576, file: !3, line: 136, type: !121)
!583 = !DILocalVariable(name: "nsret", scope: !576, file: !3, line: 138, type: !117)
!584 = !DILocalVariable(name: "nsret2", scope: !576, file: !3, line: 138, type: !117)
!585 = !DILocalVariable(name: "msg_cpy", scope: !576, file: !3, line: 139, type: !21)
!586 = !DILocalVariable(name: "_dss_msg_cpy", scope: !576, file: !3, line: 140, type: !41)
!587 = !DILocalVariable(name: "tid", scope: !588, file: !3, line: 145, type: !123)
!588 = distinct !DILexicalBlock(scope: !589, file: !3, line: 145, column: 3)
!589 = distinct !DILexicalBlock(scope: !590, file: !3, line: 145, column: 3)
!590 = distinct !DILexicalBlock(scope: !591, file: !3, line: 145, column: 3)
!591 = distinct !DILexicalBlock(scope: !592, file: !3, line: 145, column: 3)
!592 = distinct !DILexicalBlock(scope: !593, file: !3, line: 145, column: 3)
!593 = distinct !DILexicalBlock(scope: !594, file: !3, line: 144, column: 20)
!594 = distinct !DILexicalBlock(scope: !576, file: !3, line: 144, column: 6)
!595 = !DILocalVariable(name: "_ret", scope: !588, file: !3, line: 145, type: !113)
!596 = !DILocalVariable(name: "tid", scope: !597, file: !3, line: 146, type: !123)
!597 = distinct !DILexicalBlock(scope: !598, file: !3, line: 146, column: 3)
!598 = distinct !DILexicalBlock(scope: !599, file: !3, line: 146, column: 3)
!599 = distinct !DILexicalBlock(scope: !600, file: !3, line: 146, column: 3)
!600 = distinct !DILexicalBlock(scope: !601, file: !3, line: 146, column: 3)
!601 = distinct !DILexicalBlock(scope: !593, file: !3, line: 146, column: 3)
!602 = !DILocalVariable(name: "tid", scope: !603, file: !3, line: 148, type: !123)
!603 = distinct !DILexicalBlock(scope: !604, file: !3, line: 148, column: 3)
!604 = distinct !DILexicalBlock(scope: !605, file: !3, line: 148, column: 3)
!605 = distinct !DILexicalBlock(scope: !606, file: !3, line: 148, column: 3)
!606 = distinct !DILexicalBlock(scope: !607, file: !3, line: 148, column: 3)
!607 = distinct !DILexicalBlock(scope: !593, file: !3, line: 148, column: 3)
!608 = !DILocalVariable(name: "_ret", scope: !603, file: !3, line: 148, type: !113)
!609 = !DILocalVariable(name: "tid", scope: !610, file: !3, line: 151, type: !123)
!610 = distinct !DILexicalBlock(scope: !611, file: !3, line: 151, column: 3)
!611 = distinct !DILexicalBlock(scope: !612, file: !3, line: 151, column: 3)
!612 = distinct !DILexicalBlock(scope: !613, file: !3, line: 151, column: 3)
!613 = distinct !DILexicalBlock(scope: !614, file: !3, line: 151, column: 3)
!614 = distinct !DILexicalBlock(scope: !615, file: !3, line: 151, column: 3)
!615 = distinct !DILexicalBlock(scope: !594, file: !3, line: 150, column: 9)
!616 = !DILocalVariable(name: "_ret", scope: !610, file: !3, line: 151, type: !113)
!617 = !DILocalVariable(name: "_arg3", scope: !610, file: !3, line: 151, type: !113)
!618 = !DILocation(line: 136, column: 39, scope: !576)
!619 = !DILocation(line: 136, column: 52, scope: !576)
!620 = !DILocation(line: 136, column: 63, scope: !576)
!621 = !DILocation(line: 138, column: 2, scope: !576)
!622 = !DILocation(line: 139, column: 2, scope: !576)
!623 = !DILocation(line: 140, column: 35, scope: !576)
!624 = !DILocation(line: 140, column: 58, scope: !576)
!625 = !DILocation(line: 140, column: 24, scope: !576)
!626 = !DILocation(line: 140, column: 9, scope: !576)
!627 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !628)
!628 = distinct !DILocation(line: 142, column: 2, scope: !629)
!629 = distinct !DILexicalBlock(scope: !630, file: !3, line: 142, column: 2)
!630 = distinct !DILexicalBlock(scope: !576, file: !3, line: 142, column: 2)
!631 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !628)
!632 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !628)
!633 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !628)
!634 = !DILocation(line: 142, column: 2, scope: !630)
!635 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !628)
!636 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !628)
!637 = !DILocation(line: 142, column: 2, scope: !638)
!638 = distinct !DILexicalBlock(scope: !629, file: !3, line: 142, column: 2)
!639 = !DILocation(line: 144, column: 14, scope: !594)
!640 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !641)
!641 = distinct !DILocation(line: 0, scope: !613)
!642 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !641)
!643 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !641)
!644 = !DILocation(line: 0, scope: !613)
!645 = !DILocation(line: 144, column: 6, scope: !576)
!646 = !DILocation(line: 145, column: 3, scope: !591)
!647 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !648)
!648 = distinct !DILocation(line: 145, column: 3, scope: !591)
!649 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !648)
!650 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !648)
!651 = !DILocation(line: 145, column: 3, scope: !592)
!652 = !DILocation(line: 145, column: 3, scope: !653)
!653 = distinct !DILexicalBlock(scope: !591, file: !3, line: 145, column: 3)
!654 = !DILocation(line: 138, column: 9, scope: !576)
!655 = !{!656, !656, i64 0}
!656 = !{!"long", !215, i64 0}
!657 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !658)
!658 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !659)
!659 = distinct !DILocation(line: 145, column: 3, scope: !588)
!660 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !658)
!661 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !658)
!662 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !659)
!663 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !659)
!664 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !659)
!665 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !659)
!666 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !659)
!667 = !DILocation(line: 145, column: 3, scope: !588)
!668 = !{i32 -2146391610, i32 -2146391597, i32 -2146391572, i32 -2146391548, i32 -2146391523, i32 -2146391448, i32 -2146391423, i32 -2146391279, i32 -2146388172, i32 -2146388083, i32 -2146387962, i32 -2146387867, i32 -2146387766, i32 -2146387739, i32 -2146387656, i32 -2146387567, i32 -2146387446, i32 -2146387346, i32 -2146387240, i32 -2146387132, i32 -2146390996, i32 -2146390943, i32 -2146390912, i32 -2146390881, i32 -2146390860, i32 -2146390838, i32 -2146390789, i32 -2146390768, i32 -2146387049, i32 -2146386960, i32 -2146386839, i32 -2146386740, i32 -2146386634, i32 -2146386532, i32 -2146386499, i32 -2146386426, i32 -2146386358, i32 -2146390466, i32 -2146390407, i32 -2146390354, i32 -2146390323, i32 -2146390292, i32 -2146390271, i32 -2146390249, i32 -2146390200, i32 -2146390179, i32 -2146386300, i32 -2146386211, i32 -2146386090, i32 -2146385991, i32 -2146385885, i32 -2146385783, i32 -2146385750, i32 -2146385667, i32 -2146385578, i32 -2146385457, i32 -2146385357, i32 -2146385331, i32 -2146385228, i32 -2146385202, i32 -2146389921, i32 -2146389854, i32 -2146389829, i32 -2146389765, i32 -2146389683, i32 -2146389660, i32 -2146389635, i32 -2146389610}
!669 = !DILocation(line: 145, column: 3, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !3, line: 145, column: 3)
!671 = distinct !DILexicalBlock(scope: !672, file: !3, line: 145, column: 3)
!672 = distinct !DILexicalBlock(scope: !588, file: !3, line: 145, column: 3)
!673 = !{i32 -2146388456, i32 -2146388440}
!674 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !675)
!675 = distinct !DILocation(line: 146, column: 3, scope: !600)
!676 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !675)
!677 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !675)
!678 = !DILocation(line: 146, column: 3, scope: !600)
!679 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !680)
!680 = distinct !DILocation(line: 146, column: 3, scope: !600)
!681 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !680)
!682 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !680)
!683 = !DILocation(line: 146, column: 3, scope: !601)
!684 = !DILocation(line: 146, column: 3, scope: !685)
!685 = distinct !DILexicalBlock(scope: !600, file: !3, line: 146, column: 3)
!686 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !687)
!687 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !688)
!688 = distinct !DILocation(line: 146, column: 3, scope: !597)
!689 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !687)
!690 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !687)
!691 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !688)
!692 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !688)
!693 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !688)
!694 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !688)
!695 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !688)
!696 = !DILocation(line: 146, column: 3, scope: !597)
!697 = !{i32 -2146383144, i32 -2146383131, i32 -2146383106, i32 -2146383082, i32 -2146383057, i32 -2146382982, i32 -2146382957, i32 -2146382813, i32 -2146380561, i32 -2146380472, i32 -2146380351, i32 -2146380256, i32 -2146380155, i32 -2146380128, i32 -2146380045, i32 -2146379956, i32 -2146379835, i32 -2146379735, i32 -2146379629, i32 -2146379521, i32 -2146382521, i32 -2146382468, i32 -2146382437, i32 -2146382406, i32 -2146382385, i32 -2146382363, i32 -2146382314, i32 -2146382293, i32 -2146379438, i32 -2146379349, i32 -2146379228, i32 -2146379129, i32 -2146379023, i32 -2146378921, i32 -2146378888, i32 -2146378815, i32 -2146378747, i32 -2146381916, i32 -2146381863, i32 -2146381832, i32 -2146381801, i32 -2146381780, i32 -2146381758, i32 -2146381709, i32 -2146381688, i32 -2146378699, i32 -2146378610, i32 -2146378489, i32 -2146378390, i32 -2146378284, i32 -2146378182, i32 -2146378149, i32 -2146378066, i32 -2146377977, i32 -2146377856, i32 -2146377756, i32 -2146377730, i32 -2146377627, i32 -2146377601, i32 -2146381430, i32 -2146381363, i32 -2146381338, i32 -2146381274, i32 -2146381158, i32 -2146381133, i32 -2146381108}
!698 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !699)
!699 = distinct !DILocation(line: 148, column: 3, scope: !606)
!700 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !699)
!701 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !699)
!702 = !DILocation(line: 148, column: 3, scope: !606)
!703 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !704)
!704 = distinct !DILocation(line: 148, column: 3, scope: !606)
!705 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !704)
!706 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !704)
!707 = !DILocation(line: 148, column: 3, scope: !607)
!708 = !DILocation(line: 148, column: 3, scope: !709)
!709 = distinct !DILexicalBlock(scope: !606, file: !3, line: 148, column: 3)
!710 = !DILocation(line: 138, column: 16, scope: !576)
!711 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !712)
!712 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !713)
!713 = distinct !DILocation(line: 148, column: 3, scope: !603)
!714 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !712)
!715 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !712)
!716 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !713)
!717 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !713)
!718 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !713)
!719 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !713)
!720 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !713)
!721 = !DILocation(line: 148, column: 3, scope: !603)
!722 = !{i32 -2146375609, i32 -2146375596, i32 -2146375571, i32 -2146375547, i32 -2146375522, i32 -2146375447, i32 -2146375422, i32 -2146375278, i32 -2146372163, i32 -2146372074, i32 -2146371953, i32 -2146371858, i32 -2146371757, i32 -2146371730, i32 -2146371647, i32 -2146371558, i32 -2146371437, i32 -2146371337, i32 -2146371231, i32 -2146371123, i32 -2146374995, i32 -2146374942, i32 -2146374911, i32 -2146374880, i32 -2146374859, i32 -2146374837, i32 -2146374788, i32 -2146374767, i32 -2146371040, i32 -2146370951, i32 -2146370830, i32 -2146370731, i32 -2146370625, i32 -2146370523, i32 -2146370490, i32 -2146370417, i32 -2146370349, i32 -2146374465, i32 -2146374406, i32 -2146374353, i32 -2146374322, i32 -2146374291, i32 -2146374270, i32 -2146374248, i32 -2146374199, i32 -2146374178, i32 -2146370291, i32 -2146370202, i32 -2146370081, i32 -2146369982, i32 -2146369876, i32 -2146369774, i32 -2146369741, i32 -2146369658, i32 -2146369569, i32 -2146369448, i32 -2146369348, i32 -2146369322, i32 -2146369219, i32 -2146369193, i32 -2146373920, i32 -2146373853, i32 -2146373828, i32 -2146373764, i32 -2146373682, i32 -2146373659, i32 -2146373634, i32 -2146373609}
!723 = !DILocation(line: 148, column: 3, scope: !724)
!724 = distinct !DILexicalBlock(scope: !725, file: !3, line: 148, column: 3)
!725 = distinct !DILexicalBlock(scope: !726, file: !3, line: 148, column: 3)
!726 = distinct !DILexicalBlock(scope: !603, file: !3, line: 148, column: 3)
!727 = !{i32 -2146372455, i32 -2146372439}
!728 = !DILocation(line: 149, column: 11, scope: !593)
!729 = !DILocation(line: 149, column: 20, scope: !593)
!730 = !DILocation(line: 149, column: 18, scope: !593)
!731 = !DILocation(line: 149, column: 9, scope: !593)
!732 = !DILocation(line: 150, column: 2, scope: !593)
!733 = !DILocation(line: 151, column: 3, scope: !613)
!734 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !735)
!735 = distinct !DILocation(line: 151, column: 3, scope: !613)
!736 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !735)
!737 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !735)
!738 = !DILocation(line: 151, column: 3, scope: !614)
!739 = !DILocation(line: 151, column: 3, scope: !740)
!740 = distinct !DILexicalBlock(scope: !613, file: !3, line: 151, column: 3)
!741 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !742)
!742 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !743)
!743 = distinct !DILocation(line: 151, column: 3, scope: !610)
!744 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !742)
!745 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !742)
!746 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !743)
!747 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !743)
!748 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !743)
!749 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !743)
!750 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !743)
!751 = !DILocation(line: 151, column: 3, scope: !610)
!752 = !{i32 -2146366610, i32 -2146366597, i32 -2146366572, i32 -2146366548, i32 -2146366523, i32 -2146366448, i32 -2146366423, i32 -2146366279, i32 -2146362958, i32 -2146362869, i32 -2146362748, i32 -2146362653, i32 -2146362552, i32 -2146362525, i32 -2146362442, i32 -2146362353, i32 -2146362232, i32 -2146362132, i32 -2146362026, i32 -2146361918, i32 -2146365949, i32 -2146365896, i32 -2146365865, i32 -2146365834, i32 -2146365813, i32 -2146365791, i32 -2146365742, i32 -2146365721, i32 -2146365618, i32 -2146361835, i32 -2146361746, i32 -2146361625, i32 -2146361526, i32 -2146361420, i32 -2146361318, i32 -2146361285, i32 -2146361212, i32 -2146361144, i32 -2146365428, i32 -2146365369, i32 -2146365316, i32 -2146365285, i32 -2146365254, i32 -2146365233, i32 -2146365211, i32 -2146365162, i32 -2146365141, i32 -2146361093, i32 -2146361004, i32 -2146360883, i32 -2146360784, i32 -2146360678, i32 -2146360576, i32 -2146360543, i32 -2146360460, i32 -2146360371, i32 -2146360250, i32 -2146360150, i32 -2146360124, i32 -2146360021, i32 -2146359995, i32 -2146364883, i32 -2146364816, i32 -2146364791, i32 -2146364727, i32 -2146364645, i32 -2146364622, i32 -2146364597, i32 -2146364572}
!753 = !DILocation(line: 151, column: 3, scope: !754)
!754 = distinct !DILexicalBlock(scope: !755, file: !3, line: 151, column: 3)
!755 = distinct !DILexicalBlock(scope: !756, file: !3, line: 151, column: 3)
!756 = distinct !DILexicalBlock(scope: !610, file: !3, line: 151, column: 3)
!757 = !{i32 -2146363327, i32 -2146363311}
!758 = !DILocation(line: 154, column: 7, scope: !759)
!759 = distinct !DILexicalBlock(scope: !615, file: !3, line: 154, column: 7)
!760 = !DILocation(line: 154, column: 7, scope: !615)
!761 = !DILocation(line: 157, column: 6, scope: !762)
!762 = distinct !DILexicalBlock(scope: !576, file: !3, line: 157, column: 6)
!763 = !DILocation(line: 157, column: 6, scope: !576)
!764 = !DILocation(line: 158, column: 11, scope: !762)
!765 = !DILocation(line: 158, column: 8, scope: !762)
!766 = !DILocation(line: 158, column: 3, scope: !762)
!767 = !DILocation(line: 159, column: 17, scope: !576)
!768 = !DILocation(line: 159, column: 9, scope: !576)
!769 = !DILocation(line: 159, column: 2, scope: !576)
!770 = !DILocation(line: 0, scope: !759)
!771 = !DILocation(line: 160, column: 1, scope: !576)
!772 = distinct !DISubprogram(name: "sys_arch_mbox_tryfetch", scope: !3, file: !3, line: 174, type: !773, isLocal: false, isDefinition: true, scopeLine: 175, flags: DIFlagPrototyped, isOptimized: true, unit: !82, retainedNodes: !775)
!773 = !DISubroutineType(types: !774)
!774 = !{!121, !6, !41}
!775 = !{!776, !777, !778, !779, !780, !781, !787}
!776 = !DILocalVariable(name: "mbox", arg: 1, scope: !772, file: !3, line: 174, type: !6)
!777 = !DILocalVariable(name: "msg", arg: 2, scope: !772, file: !3, line: 174, type: !41)
!778 = !DILocalVariable(name: "rmsg", scope: !772, file: !3, line: 176, type: !21)
!779 = !DILocalVariable(name: "_dss_rmsg", scope: !772, file: !3, line: 177, type: !41)
!780 = !DILocalVariable(name: "ret", scope: !772, file: !3, line: 178, type: !40)
!781 = !DILocalVariable(name: "tid", scope: !782, file: !3, line: 182, type: !123)
!782 = distinct !DILexicalBlock(scope: !783, file: !3, line: 182, column: 2)
!783 = distinct !DILexicalBlock(scope: !784, file: !3, line: 182, column: 2)
!784 = distinct !DILexicalBlock(scope: !785, file: !3, line: 182, column: 2)
!785 = distinct !DILexicalBlock(scope: !786, file: !3, line: 182, column: 2)
!786 = distinct !DILexicalBlock(scope: !772, file: !3, line: 182, column: 2)
!787 = !DILocalVariable(name: "_ret", scope: !782, file: !3, line: 182, type: !113)
!788 = !DILocation(line: 174, column: 42, scope: !772)
!789 = !DILocation(line: 174, column: 55, scope: !772)
!790 = !DILocation(line: 176, column: 2, scope: !772)
!791 = !DILocation(line: 177, column: 32, scope: !772)
!792 = !DILocation(line: 177, column: 52, scope: !772)
!793 = !DILocation(line: 177, column: 21, scope: !772)
!794 = !DILocation(line: 177, column: 9, scope: !772)
!795 = !DILocation(line: 178, column: 2, scope: !772)
!796 = !DILocation(line: 58, column: 32, scope: !290, inlinedAt: !797)
!797 = distinct !DILocation(line: 180, column: 2, scope: !798)
!798 = distinct !DILexicalBlock(scope: !799, file: !3, line: 180, column: 2)
!799 = distinct !DILexicalBlock(scope: !772, file: !3, line: 180, column: 2)
!800 = !DILocation(line: 60, column: 7, scope: !297, inlinedAt: !797)
!801 = !DILocation(line: 60, column: 6, scope: !290, inlinedAt: !797)
!802 = !DILocation(line: 63, column: 1, scope: !290, inlinedAt: !797)
!803 = !DILocation(line: 180, column: 2, scope: !799)
!804 = !DILocation(line: 62, column: 16, scope: !290, inlinedAt: !797)
!805 = !DILocation(line: 62, column: 22, scope: !290, inlinedAt: !797)
!806 = !DILocation(line: 180, column: 2, scope: !807)
!807 = distinct !DILexicalBlock(scope: !798, file: !3, line: 180, column: 2)
!808 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !809)
!809 = distinct !DILocation(line: 182, column: 2, scope: !785)
!810 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !809)
!811 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !809)
!812 = !DILocation(line: 182, column: 2, scope: !785)
!813 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !814)
!814 = distinct !DILocation(line: 182, column: 2, scope: !785)
!815 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !814)
!816 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !814)
!817 = !DILocation(line: 182, column: 2, scope: !786)
!818 = !DILocation(line: 182, column: 2, scope: !819)
!819 = distinct !DILexicalBlock(scope: !785, file: !3, line: 182, column: 2)
!820 = !DILocation(line: 178, column: 6, scope: !772)
!821 = !DILocation(line: 120, column: 2, scope: !229, inlinedAt: !822)
!822 = distinct !DILocation(line: 49, column: 21, scope: !250, inlinedAt: !823)
!823 = distinct !DILocation(line: 182, column: 2, scope: !782)
!824 = !DILocation(line: 118, column: 16, scope: !229, inlinedAt: !822)
!825 = !DILocation(line: 121, column: 2, scope: !229, inlinedAt: !822)
!826 = !DILocation(line: 49, column: 16, scope: !250, inlinedAt: !823)
!827 = !DILocation(line: 50, column: 19, scope: !250, inlinedAt: !823)
!828 = !DILocation(line: 50, column: 11, scope: !250, inlinedAt: !823)
!829 = !DILocation(line: 50, column: 9, scope: !250, inlinedAt: !823)
!830 = !DILocation(line: 50, column: 2, scope: !250, inlinedAt: !823)
!831 = !DILocation(line: 182, column: 2, scope: !782)
!832 = !{i32 -2146357187, i32 -2146357174, i32 -2146357149, i32 -2146357125, i32 -2146357100, i32 -2146357025, i32 -2146357000, i32 -2146356856, i32 -2146353670, i32 -2146353581, i32 -2146353460, i32 -2146353365, i32 -2146353264, i32 -2146353237, i32 -2146353154, i32 -2146353065, i32 -2146352944, i32 -2146352844, i32 -2146352738, i32 -2146352630, i32 -2146356564, i32 -2146356511, i32 -2146356480, i32 -2146356449, i32 -2146356428, i32 -2146356406, i32 -2146356357, i32 -2146356336, i32 -2146352547, i32 -2146352458, i32 -2146352337, i32 -2146352238, i32 -2146352132, i32 -2146352030, i32 -2146351997, i32 -2146351924, i32 -2146351856, i32 -2146356029, i32 -2146355970, i32 -2146355917, i32 -2146355886, i32 -2146355855, i32 -2146355834, i32 -2146355812, i32 -2146355763, i32 -2146355742, i32 -2146351804, i32 -2146351715, i32 -2146351594, i32 -2146351495, i32 -2146351389, i32 -2146351287, i32 -2146351254, i32 -2146351171, i32 -2146351082, i32 -2146350961, i32 -2146350861, i32 -2146350835, i32 -2146350732, i32 -2146350706, i32 -2146355484, i32 -2146355417, i32 -2146355392, i32 -2146355328, i32 -2146355246, i32 -2146355223, i32 -2146355198, i32 -2146355173}
!833 = !DILocation(line: 182, column: 2, scope: !834)
!834 = distinct !DILexicalBlock(scope: !835, file: !3, line: 182, column: 2)
!835 = distinct !DILexicalBlock(scope: !782, file: !3, line: 182, column: 2)
!836 = !{i32 -2146354158, i32 -2146354141}
!837 = !DILocation(line: 185, column: 6, scope: !838)
!838 = distinct !DILexicalBlock(scope: !772, file: !3, line: 185, column: 6)
!839 = !DILocation(line: 185, column: 10, scope: !838)
!840 = !DILocation(line: 185, column: 6, scope: !772)
!841 = !DILocation(line: 188, column: 6, scope: !842)
!842 = distinct !DILexicalBlock(scope: !772, file: !3, line: 188, column: 6)
!843 = !DILocation(line: 188, column: 6, scope: !772)
!844 = !DILocation(line: 189, column: 11, scope: !842)
!845 = !DILocation(line: 189, column: 8, scope: !842)
!846 = !DILocation(line: 189, column: 3, scope: !842)
!847 = !DILocation(line: 0, scope: !772)
!848 = !DILocation(line: 191, column: 1, scope: !772)
