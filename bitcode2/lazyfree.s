	.text
	.file	"lazyfree.c"
	.globl	lazyfreeGetPendingObjectsCount # -- Begin function lazyfreeGetPendingObjectsCount
	.p2align	4, 0x90
	.type	lazyfreeGetPendingObjectsCount,@function
lazyfreeGetPendingObjectsCount:         # @lazyfreeGetPendingObjectsCount
# %bb.0:
	movq	lazyfree_objects(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	lazyfreeGetPendingObjectsCount, .Lfunc_end0-lazyfreeGetPendingObjectsCount
                                        # -- End function
	.globl	lazyfreeGetFreeEffort   # -- Begin function lazyfreeGetFreeEffort
	.p2align	4, 0x90
	.type	lazyfreeGetFreeEffort,@function
lazyfreeGetFreeEffort:                  # @lazyfreeGetFreeEffort
# %bb.0:
	movl	(%rdi), %ecx
	movl	%ecx, %edx
	andl	$15, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB1_2
# %bb.1:
	movq	8(%rdi), %rax
	movq	24(%rax), %rax
	jmp	.LBB1_12
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB1_6
# %bb.3:
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	je	.LBB1_11
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_5
.LBB1_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %edx
	jne	.LBB1_9
# %bb.7:
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112, %ecx
	jne	.LBB1_5
# %bb.8:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB1_12
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	jmp	.LBB1_12
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	cmpl	$4, %edx
	jne	.LBB1_12
# %bb.10:
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB1_12
.LBB1_11:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	lazyfreeGetFreeEffort, .Lfunc_end1-lazyfreeGetFreeEffort
                                        # -- End function
	.globl	dbAsyncDelete           # -- Begin function dbAsyncDelete
	.p2align	4, 0x90
	.type	dbAsyncDelete,@function
dbAsyncDelete:                          # @dbAsyncDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%rdi), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_2
# %bb.1:
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB2_2:
	movq	(%r15), %rdi
	movq	8(%r14), %rsi
	callq	dictUnlink
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_3
# %bb.4:
	movq	%rax, %rbx
	movq	8(%rax), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB2_6
# %bb.5:
	movq	8(%rsi), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_17
.LBB2_3:
	xorl	%eax, %eax
	jmp	.LBB2_26
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB2_11
# %bb.7:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	je	.LBB2_16
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_9
.LBB2_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB2_14
# %bb.12:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112, %eax
	jne	.LBB2_9
# %bb.13:
	movq	8(%rsi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB2_17
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_10
.LBB2_14:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB2_10
# %bb.15:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB2_10
.LBB2_16:
	movq	8(%rsi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rax
	jb	.LBB2_23
# %bb.18:
	cmpl	$1, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_23
# %bb.19:
	lock		addq	$1, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_21
# %bb.20:
	movq	8(%rcx), %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	%rax, 8(%rbx)
	jmp	.LBB2_22
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	callq	dictFreeUnlinkedEntry
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_24
# %bb.25:
	movq	%r14, %rdi
	callq	slotToKeyDel
	movl	$1, %eax
.LBB2_26:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_27
.LBB2_24:
	movl	$1, %eax
.LBB2_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_21:
	movq	$0, 8(%rbx)
	jmp	.LBB2_22
.Lfunc_end2:
	.size	dbAsyncDelete, .Lfunc_end2-dbAsyncDelete
                                        # -- End function
	.globl	freeObjAsync            # -- Begin function freeObjAsync
	.p2align	4, 0x90
	.type	freeObjAsync,@function
freeObjAsync:                           # @freeObjAsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB3_2
# %bb.1:
	movq	8(%rsi), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_14
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	jne	.LBB3_8
# %bb.3:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	je	.LBB3_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_5
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB3_11
# %bb.9:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112, %eax
	jne	.LBB3_5
# %bb.10:
	movq	8(%rsi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB3_14
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_6
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB3_6
# %bb.12:
	andl	$240, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB3_6
.LBB3_13:
	movq	8(%rsi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB3_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rax
	jb	.LBB3_7
# %bb.15:
	cmpl	$1, 4(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.16:
	lock		addq	$1, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	jmp	.LBB3_17
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movq	%rsi, %rdi
	callq	decrRefCount
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	freeObjAsync, .Lfunc_end3-freeObjAsync
                                        # -- End function
	.globl	emptyDbAsync            # -- Begin function emptyDbAsync
	.p2align	4, 0x90
	.type	emptyDbAsync,@function
emptyDbAsync:                           # @emptyDbAsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %r14
	movq	8(%rdi), %r15
	movl	$dbDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, (%rbx)
	movl	$keyptrDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 8(%rbx)
	movq	72(%r14), %rax
	addq	40(%r14), %rax
	lock		addq	%rax, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%esi, %esi
	movq	%r14, %rdx
	movq	%r15, %rcx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	emptyDbAsync, .Lfunc_end4-emptyDbAsync
                                        # -- End function
	.globl	slotToKeyFlushAsync     # -- Begin function slotToKeyFlushAsync
	.p2align	4, 0x90
	.type	slotToKeyFlushAsync,@function
slotToKeyFlushAsync:                    # @slotToKeyFlushAsync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rbx
	callq	raxNew
	movq	server+2944(%rip), %rdi
	movq	%rax, 524328(%rdi)
	addq	$393256, %rdi           # imm = 0x60028
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movq	8(%rbx), %rax
	lock		addq	%rax, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%esi, %esi
	xorl	%edx, %edx
	movq	%rbx, %rcx
	callq	bioCreateBackgroundJob
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	slotToKeyFlushAsync, .Lfunc_end5-slotToKeyFlushAsync
                                        # -- End function
	.globl	lazyfreeFreeObjectFromBioThread # -- Begin function lazyfreeFreeObjectFromBioThread
	.p2align	4, 0x90
	.type	lazyfreeFreeObjectFromBioThread,@function
lazyfreeFreeObjectFromBioThread:        # @lazyfreeFreeObjectFromBioThread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	decrRefCount
	lock		subq	$1, lazyfree_objects(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lazyfreeFreeObjectFromBioThread, .Lfunc_end6-lazyfreeFreeObjectFromBioThread
                                        # -- End function
	.globl	lazyfreeFreeDatabaseFromBioThread # -- Begin function lazyfreeFreeDatabaseFromBioThread
	.p2align	4, 0x90
	.type	lazyfreeFreeDatabaseFromBioThread,@function
lazyfreeFreeDatabaseFromBioThread:      # @lazyfreeFreeDatabaseFromBioThread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	72(%rdi), %rbx
	addq	40(%rdi), %rbx
	callq	dictRelease
	movq	%r14, %rdi
	callq	dictRelease
	lock		subq	%rbx, lazyfree_objects(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lazyfreeFreeDatabaseFromBioThread, .Lfunc_end7-lazyfreeFreeDatabaseFromBioThread
                                        # -- End function
	.globl	lazyfreeFreeSlotsMapFromBioThread # -- Begin function lazyfreeFreeSlotsMapFromBioThread
	.p2align	4, 0x90
	.type	lazyfreeFreeSlotsMapFromBioThread,@function
lazyfreeFreeSlotsMapFromBioThread:      # @lazyfreeFreeSlotsMapFromBioThread
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	8(%rdi), %rbx
	callq	raxFree
	lock		subq	%rbx, lazyfree_objects(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	lazyfreeFreeSlotsMapFromBioThread, .Lfunc_end8-lazyfreeFreeSlotsMapFromBioThread
                                        # -- End function
	.type	lazyfree_objects_mutex,@object # @lazyfree_objects_mutex
	.data
	.globl	lazyfree_objects_mutex
	.p2align	3
lazyfree_objects_mutex:
	.quad	-1
	.size	lazyfree_objects_mutex, 8

	.type	lazyfree_objects,@object # @lazyfree_objects
	.local	lazyfree_objects
	.comm	lazyfree_objects,8,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
