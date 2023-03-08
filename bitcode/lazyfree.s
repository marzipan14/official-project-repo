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
	movl	%ecx, %eax
	andb	$15, %al
	cmpb	$2, %al
	je	.LBB1_3
# %bb.1:
	cmpb	$1, %al
	jne	.LBB1_5
# %bb.2:
	movq	8(%rdi), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_3:
	andl	$240, %ecx
	movl	$1, %eax
	cmpl	$32, %ecx
	je	.LBB1_4
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_5:
	cmpb	$36, %cl
	je	.LBB1_4
# %bb.6:
	movl	$1, %eax
	cmpb	$115, %cl
	jne	.LBB1_8
# %bb.7:
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB1_4:
	movq	8(%rdi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
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
	je	.LBB2_2
# %bb.1:
	movq	8(%r14), %rsi
	callq	dictDelete
.LBB2_2:
	movq	(%r15), %rdi
	movq	8(%r14), %rsi
	callq	dictUnlink
	testq	%rax, %rax
	je	.LBB2_3
# %bb.4:
	movq	%rax, %rbx
	movq	8(%rax), %rsi
	movl	(%rsi), %eax
	movl	%eax, %ecx
	andb	$15, %cl
	cmpb	$2, %cl
	je	.LBB2_7
# %bb.5:
	cmpb	$1, %cl
	jne	.LBB2_9
# %bb.6:
	movq	8(%rsi), %rax
	movq	24(%rax), %rax
	jmp	.LBB2_12
.LBB2_3:
	xorl	%ebx, %ebx
	jmp	.LBB2_19
.LBB2_7:
	andl	$240, %eax
	cmpl	$32, %eax
	je	.LBB2_8
	jmp	.LBB2_20
.LBB2_9:
	cmpb	$36, %al
	je	.LBB2_8
# %bb.10:
	cmpb	$115, %al
	jne	.LBB2_20
# %bb.11:
	movq	8(%rsi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB2_12
.LBB2_8:
	movq	8(%rsi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rax
	jb	.LBB2_17
# %bb.13:
	cmpl	$1, 4(%rsi)
	jne	.LBB2_17
# %bb.14:
	lock		addq	$1, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_16
# %bb.15:
	movq	8(%rcx), %rdi
	xorl	%esi, %esi
	callq	*%rax
	movq	%rax, 8(%rbx)
	jmp	.LBB2_17
.LBB2_20:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_17
.LBB2_16:
	movq	$0, 8(%rbx)
.LBB2_17:
	movq	(%r15), %rdi
	movq	%rbx, %rsi
	callq	dictFreeUnlinkedEntry
	movl	$1, %ebx
	cmpl	$0, server+2924(%rip)
	je	.LBB2_19
# %bb.18:
	movq	%r14, %rdi
	callq	slotToKeyDel
.LBB2_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	andb	$15, %cl
	cmpb	$2, %cl
	je	.LBB3_3
# %bb.1:
	cmpb	$1, %cl
	jne	.LBB3_5
# %bb.2:
	movq	8(%rsi), %rax
	movq	24(%rax), %rax
	jmp	.LBB3_8
.LBB3_3:
	andl	$240, %eax
	cmpl	$32, %eax
	je	.LBB3_4
	jmp	.LBB3_11
.LBB3_5:
	cmpb	$36, %al
	je	.LBB3_4
# %bb.6:
	cmpb	$115, %al
	jne	.LBB3_11
# %bb.7:
	movq	8(%rsi), %rax
	movq	8(%rax), %rax
	movq	16(%rax), %rax
	jmp	.LBB3_8
.LBB3_4:
	movq	8(%rsi), %rcx
	movq	72(%rcx), %rax
	addq	40(%rcx), %rax
.LBB3_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %rax
	jb	.LBB3_12
# %bb.9:
	cmpl	$1, 4(%rsi)
	jne	.LBB3_12
# %bb.10:
	lock		addq	$1, lazyfree_objects(%rip)
	movl	$2, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	bioCreateBackgroundJob
	jmp	.LBB3_13
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:
	movq	%rsi, %rdi
	callq	decrRefCount
.LBB3_13:
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
