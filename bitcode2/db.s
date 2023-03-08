	.text
	.file	"db.c"
	.globl	updateLFU               # -- Begin function updateLFU
	.p2align	4, 0x90
	.type	updateLFU,@function
updateLFU:                              # @updateLFU
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	LFUDecrAndReturn
	movzbl	%al, %edi
	callq	LFULogIncr
	movl	%eax, %r14d
	callq	LFUGetTimeInMinutes
	shll	$8, %eax
	movzbl	%r14b, %ecx
	orl	%eax, %ecx
	movzbl	(%rbx), %eax
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	updateLFU, .Lfunc_end0-updateLFU
                                        # -- End function
	.globl	lookupKey               # -- Begin function lookupKey
	.p2align	4, 0x90
	.type	lookupKey,@function
lookupKey:                              # @lookupKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%edx, %ebx
	movq	(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	8(%rax), %r14
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB1_8
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB1_8
# %bb.4:
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_5
# %bb.6:
	callq	LRU_CLOCK
	movzbl	(%r14), %ecx
	shll	$8, %eax
	orl	%ecx, %eax
	movl	%eax, (%r14)
	jmp	.LBB1_7
.LBB1_1:
	xorl	%r14d, %r14d
	jmp	.LBB1_8
.LBB1_5:
	movq	%r14, %rdi
	callq	LFUDecrAndReturn
	movzbl	%al, %edi
	callq	LFULogIncr
	movl	%eax, %ebx
	callq	LFUGetTimeInMinutes
	shll	$8, %eax
	movzbl	%bl, %ecx
	orl	%eax, %ecx
	movzbl	(%r14), %eax
	shll	$8, %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	lookupKey, .Lfunc_end1-lookupKey
                                        # -- End function
	.globl	lookupKeyReadWithFlags  # -- Begin function lookupKeyReadWithFlags
	.p2align	4, 0x90
	.type	lookupKeyReadWithFlags,@function
lookupKeyReadWithFlags:                 # @lookupKeyReadWithFlags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	expireIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB2_7
# %bb.1:
	cmpq	$0, server+2464(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_2
# %bb.3:
	movq	server+552(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_7
# %bb.4:
	cmpq	server+2480(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_7
# %bb.5:
	movq	80(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_7
# %bb.6:
	testb	$2, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_2
.LBB2_7:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	lookupKey
	xorl	%ecx, %ecx
	testq	%rax, %rax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$server+1064, %edx
	movl	$server+1056, %esi
	cmoveq	%rdx, %rsi
	movq	(%rsi), %rdx
	addq	$1, %rdx
	movq	%rdx, server+1056(,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_8
.LBB2_2:
	addq	$1, server+1064(%rip)
	xorl	%eax, %eax
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	lookupKeyReadWithFlags, .Lfunc_end2-lookupKeyReadWithFlags
                                        # -- End function
	.globl	expireIfNeeded          # -- Begin function expireIfNeeded
	.p2align	4, 0x90
	.type	expireIfNeeded,@function
expireIfNeeded:                         # @expireIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	getExpire
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB3_4
# %bb.1:
	cmpl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_2
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_2:
	movq	%rax, %rbx
	cmpq	$0, server+3008(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_5
# %bb.3:
	movq	server+3040(%rip), %rax
	jmp	.LBB3_6
.LBB3_5:
	callq	mstime
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jle	.LBB3_17
# %bb.7:
	cmpq	$0, server+2464(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jne	.LBB3_17
# %bb.8:
	addq	$1, server+1024(%rip)
	movl	server+3084(%rip), %edx
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	propagateExpire
	movl	40(%r15), %ecx
	movl	$.L.str.35, %esi
	movl	$256, %edi              # imm = 0x100
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	cmpl	$0, server+3084(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_10
# %bb.9:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	dbAsyncDelete
	movl	%eax, %r12d
	jmp	.LBB3_16
.LBB3_10:
	movq	8(%r15), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_12
# %bb.11:
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:
	movq	(%r15), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_15
# %bb.13:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	je	.LBB3_15
# %bb.14:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_17
.Lfunc_end3:
	.size	expireIfNeeded, .Lfunc_end3-expireIfNeeded
                                        # -- End function
	.globl	lookupKeyRead           # -- Begin function lookupKeyRead
	.p2align	4, 0x90
	.type	lookupKeyRead,@function
lookupKeyRead:                          # @lookupKeyRead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edx, %edx
	callq	lookupKeyReadWithFlags
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	lookupKeyRead, .Lfunc_end4-lookupKeyRead
                                        # -- End function
	.globl	lookupKeyWrite          # -- Begin function lookupKeyWrite
	.p2align	4, 0x90
	.type	lookupKeyWrite,@function
lookupKeyWrite:                         # @lookupKeyWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	expireIfNeeded
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	lookupKeyWrite, .Lfunc_end5-lookupKeyWrite
                                        # -- End function
	.globl	lookupKeyReadOrReply    # -- Begin function lookupKeyReadOrReply
	.p2align	4, 0x90
	.type	lookupKeyReadOrReply,@function
lookupKeyReadOrReply:                   # @lookupKeyReadOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	xorl	%edx, %edx
	callq	lookupKeyReadWithFlags
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB6_2
# %bb.1:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	lookupKeyReadOrReply, .Lfunc_end6-lookupKeyReadOrReply
                                        # -- End function
	.globl	lookupKeyWriteOrReply   # -- Begin function lookupKeyWriteOrReply
	.p2align	4, 0x90
	.type	lookupKeyWriteOrReply,@function
lookupKeyWriteOrReply:                  # @lookupKeyWriteOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	16(%rdi), %rbx
	movq	%rbx, %rdi
	callq	expireIfNeeded
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_2
# %bb.1:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB7_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	lookupKeyWriteOrReply, .Lfunc_end7-lookupKeyWriteOrReply
                                        # -- End function
	.globl	dbAdd                   # -- Begin function dbAdd
	.p2align	4, 0x90
	.type	dbAdd,@function
dbAdd:                                  # @dbAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	8(%rsi), %rdi
	callq	sdsdup
	movq	(%r15), %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_7
# %bb.1:
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB8_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB8_4
.LBB8_3:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	signalKeyAsReady
	movl	$42, __A_VARIABLE(%rip)
.LBB8_4:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_6
# %bb.5:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_7:
	movl	$.L.str, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$177, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end8:
	.size	dbAdd, .Lfunc_end8-dbAdd
                                        # -- End function
	.globl	slotToKeyAdd            # -- Begin function slotToKeyAdd
	.p2align	4, 0x90
	.type	slotToKeyAdd,@function
slotToKeyAdd:                           # @slotToKeyAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end9:
	.size	slotToKeyAdd, .Lfunc_end9-slotToKeyAdd
                                        # -- End function
	.globl	dbOverwrite             # -- Begin function dbOverwrite
	.p2align	4, 0x90
	.type	dbOverwrite,@function
dbOverwrite:                            # @dbOverwrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_14
# %bb.1:
	movq	%rax, %rbx
	movq	8(%rax), %r14
	testb	$2, server+2712(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_3
# %bb.2:
	movl	$-256, %eax
	andl	(%r14), %eax
	movzbl	(%r12), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_3:
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_5
# %bb.4:
	movq	8(%rcx), %rdi
	movq	%r12, %rsi
	callq	*%rax
	movq	%rax, 8(%rbx)
	jmp	.LBB10_6
.LBB10_5:
	movq	%r12, 8(%rbx)
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, server+3088(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_11
# %bb.7:
	movq	%r14, %rdi
	callq	freeObjAsync
	movq	(%r15), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_8
# %bb.9:
	movq	8(%rax), %rdi
	xorl	%esi, %esi
	callq	*%rcx
	movq	%rax, %r14
	jmp	.LBB10_10
.LBB10_8:
	xorl	%r14d, %r14d
.LBB10_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_11:
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	40(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_13
# %bb.12:
	movq	8(%rcx), %rdi
	movq	%r14, %rsi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB10_13:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_14:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$192, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	dbOverwrite, .Lfunc_end10-dbOverwrite
                                        # -- End function
	.globl	setKey                  # -- Begin function setKey
	.p2align	4, 0x90
	.type	setKey,@function
setKey:                                 # @setKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	expireIfNeeded
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	testq	%rax, %rax
	je	.LBB11_1
# %bb.2:
	callq	dbOverwrite
	jmp	.LBB11_3
.LBB11_1:
	callq	dbAdd
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	incrRefCount
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.4:
	movq	8(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_5:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1068, %r8d             # imm = 0x42C
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end11:
	.size	setKey, .Lfunc_end11-setKey
                                        # -- End function
	.globl	removeExpire            # -- Begin function removeExpire
	.p2align	4, 0x90
	.type	removeExpire,@function
removeExpire:                           # @removeExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_2
# %bb.1:
	movq	8(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB12_2:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1068, %r8d             # imm = 0x42C
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end12:
	.size	removeExpire, .Lfunc_end12-removeExpire
                                        # -- End function
	.globl	signalModifiedKey       # -- Begin function signalModifiedKey
	.p2align	4, 0x90
	.type	signalModifiedKey,@function
signalModifiedKey:                      # @signalModifiedKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	signalModifiedKey, .Lfunc_end13-signalModifiedKey
                                        # -- End function
	.globl	dbExists                # -- Begin function dbExists
	.p2align	4, 0x90
	.type	dbExists,@function
dbExists:                               # @dbExists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	dictFind
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end14:
	.size	dbExists, .Lfunc_end14-dbExists
                                        # -- End function
	.globl	dbRandomKey             # -- Begin function dbRandomKey
	.p2align	4, 0x90
	.type	dbRandomKey,@function
dbRandomKey:                            # @dbRandomKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	(%rdi), %rdi
	movq	8(%r14), %rax
	movq	72(%rdi), %rcx
	addq	40(%rdi), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	72(%rax), %r13
	addq	40(%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	callq	dictGetRandomKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_16
# %bb.1:                                # %.preheader
	movl	$100, %r12d
	.p2align	4, 0x90
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r15
	movzbl	-1(%r15), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_3
# %bb.4:                                #   in Loop: Header=BB15_2 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_5:                               #   in Loop: Header=BB15_2 Depth=1
	shrq	$3, %rsi
	jmp	.LBB15_10
.LBB15_3:                               #   in Loop: Header=BB15_2 Depth=1
	xorl	%esi, %esi
	jmp	.LBB15_10
.LBB15_6:                               #   in Loop: Header=BB15_2 Depth=1
	movzbl	-3(%r15), %esi
	jmp	.LBB15_10
.LBB15_7:                               #   in Loop: Header=BB15_2 Depth=1
	movzwl	-5(%r15), %esi
	jmp	.LBB15_10
.LBB15_8:                               #   in Loop: Header=BB15_2 Depth=1
	movl	-9(%r15), %esi
	jmp	.LBB15_10
.LBB15_9:                               #   in Loop: Header=BB15_2 Depth=1
	movq	-17(%r15), %rsi
	.p2align	4, 0x90
.LBB15_10:                              #   in Loop: Header=BB15_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	createStringObject
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_17
# %bb.11:                               #   in Loop: Header=BB15_2 Depth=1
	movq	server+2464(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, -48(%rbp)         # 8-byte Folded Reload
	jne	.LBB15_14
# %bb.12:                               #   in Loop: Header=BB15_2 Depth=1
	testq	%rax, %rax
	je	.LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r12d
	je	.LBB15_17
.LBB15_14:                              #   in Loop: Header=BB15_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expireIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_17
# %bb.15:                               #   in Loop: Header=BB15_2 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	callq	dictGetRandomKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_2
.LBB15_16:
	xorl	%ebx, %ebx
.LBB15_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	dbRandomKey, .Lfunc_end15-dbRandomKey
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_5
	.quad	.LBB15_6
	.quad	.LBB15_7
	.quad	.LBB15_8
	.quad	.LBB15_9
                                        # -- End function
	.text
	.globl	dbSyncDelete            # -- Begin function dbSyncDelete
	.p2align	4, 0x90
	.type	dbSyncDelete,@function
dbSyncDelete:                           # @dbSyncDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB16_2
# %bb.1:
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB16_2:
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB16_5
# %bb.3:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	je	.LBB16_5
# %bb.4:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB16_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end16:
	.size	dbSyncDelete, .Lfunc_end16-dbSyncDelete
                                        # -- End function
	.globl	slotToKeyDel            # -- Begin function slotToKeyDel
	.p2align	4, 0x90
	.type	slotToKeyDel,@function
slotToKeyDel:                           # @slotToKeyDel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	slotToKeyDel, .Lfunc_end17-slotToKeyDel
                                        # -- End function
	.globl	dbDelete                # -- Begin function dbDelete
	.p2align	4, 0x90
	.type	dbDelete,@function
dbDelete:                               # @dbDelete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpl	$0, server+3088(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	dbAsyncDelete
	movl	%eax, %ebx
	jmp	.LBB18_8
.LBB18_2:
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB18_4
# %bb.3:
	movq	8(%r14), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB18_4:
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_7
# %bb.5:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	je	.LBB18_7
# %bb.6:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB18_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end18:
	.size	dbDelete, .Lfunc_end18-dbDelete
                                        # -- End function
	.globl	dbUnshareStringValue    # -- Begin function dbUnshareStringValue
	.p2align	4, 0x90
	.type	dbUnshareStringValue,@function
dbUnshareStringValue:                   # @dbUnshareStringValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	jne	.LBB19_13
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	cmpl	$1, 4(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB19_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$-16, %al
	je	.LBB19_12
.LBB19_3:
	movq	%rbx, %rdi
	callq	getDecodedObject
	movq	%rax, %r12
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_4
# %bb.5:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_6:
	shrq	$3, %rsi
	jmp	.LBB19_11
.LBB19_10:
	movq	-17(%rdi), %rsi
	jmp	.LBB19_11
.LBB19_8:
	movzwl	-5(%rdi), %esi
	jmp	.LBB19_11
.LBB19_9:
	movl	-9(%rdi), %esi
	jmp	.LBB19_11
.LBB19_7:
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_11
.LBB19_4:
	xorl	%esi, %esi
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createRawStringObject
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dbOverwrite
	movl	$42, __A_VARIABLE(%rip)
.LBB19_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_13:
	movl	$.L.str.3, %edi
	movl	$.L.str.1, %esi
	movl	$318, %edx              # imm = 0x13E
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end19:
	.size	dbUnshareStringValue, .Lfunc_end19-dbUnshareStringValue
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_6
	.quad	.LBB19_7
	.quad	.LBB19_8
	.quad	.LBB19_9
	.quad	.LBB19_10
                                        # -- End function
	.text
	.globl	emptyDb                 # -- Begin function emptyDb
	.p2align	4, 0x90
	.type	emptyDb,@function
emptyDb:                                # @emptyDb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	jl	.LBB20_2
# %bb.1:
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %eax
	jle	.LBB20_2
# %bb.3:
	movq	%rdx, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	movl	%edi, -48(%rbp)         # 4-byte Spill
	je	.LBB20_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edi, %r15
	movl	%edi, %eax
	jmp	.LBB20_7
.LBB20_2:
	callq	__errno
	movl	$22, (%rax)
	movq	$-1, %r15
.LBB20_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB20_12
# %bb.6:
	addl	$-1, %eax
.LBB20_7:
	movslq	%eax, %r13
	leaq	-1(%r15), %r14
	shlq	$6, %r15
	movq	%r15, %rbx
	xorl	%r15d, %r15d
	jmp	.LBB20_8
	.p2align	4, 0x90
.LBB20_10:                              #   in Loop: Header=BB20_8 Depth=1
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	dictEmpty
	movq	server+48(%rip), %rax
	movq	8(%rax,%rbx), %rdi
	movq	%r12, %rsi
	callq	dictEmpty
.LBB20_11:                              #   in Loop: Header=BB20_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r14
	addq	$64, %rbx
	cmpq	%r13, %r14
	jge	.LBB20_12
.LBB20_8:                               # =>This Inner Loop Header: Depth=1
	movq	server+48(%rip), %rdi
	movq	(%rdi,%rbx), %rax
	addq	40(%rax), %r15
	addq	72(%rax), %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB20_10
# %bb.9:                                #   in Loop: Header=BB20_8 Depth=1
	addq	%rbx, %rdi
	callq	emptyDbAsync
	jmp	.LBB20_11
.LBB20_12:
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %ebx         # 4-byte Reload
	je	.LBB20_17
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB20_14
# %bb.15:
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rdi
	callq	raxFree
	callq	raxNew
	movq	server+2944(%rip), %rdi
	movq	%rax, 524328(%rdi)
	addq	$393256, %rdi           # imm = 0x60028
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_16
.LBB20_14:
	callq	slotToKeyFlushAsync
.LBB20_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB20_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	jne	.LBB20_19
# %bb.18:
	callq	flushSlaveKeysWithExpireList
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_19
.Lfunc_end20:
	.size	emptyDb, .Lfunc_end20-emptyDb
                                        # -- End function
	.globl	slotToKeyFlush          # -- Begin function slotToKeyFlush
	.p2align	4, 0x90
	.type	slotToKeyFlush,@function
slotToKeyFlush:                         # @slotToKeyFlush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rdi
	callq	raxFree
	callq	raxNew
	movq	server+2944(%rip), %rdi
	movq	%rax, 524328(%rdi)
	addq	$393256, %rdi           # imm = 0x60028
	movl	$131072, %edx           # imm = 0x20000
	xorl	%esi, %esi
	callq	memset
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end21:
	.size	slotToKeyFlush, .Lfunc_end21-slotToKeyFlush
                                        # -- End function
	.globl	selectDb                # -- Begin function selectDb
	.p2align	4, 0x90
	.type	selectDb,@function
selectDb:                               # @selectDb
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%esi, %esi
	js	.LBB22_3
# %bb.1:
	cmpl	%esi, server+1792(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB22_3
# %bb.2:
	movslq	%esi, %rax
	shlq	$6, %rax
	addq	server+48(%rip), %rax
	movq	%rax, 16(%rdi)
	xorl	%eax, %eax
.LBB22_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end22:
	.size	selectDb, .Lfunc_end22-selectDb
                                        # -- End function
	.globl	signalFlushedDb         # -- Begin function signalFlushedDb
	.p2align	4, 0x90
	.type	signalFlushedDb,@function
signalFlushedDb:                        # @signalFlushedDb
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	touchWatchedKeysOnFlush
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end23:
	.size	signalFlushedDb, .Lfunc_end23-signalFlushedDb
                                        # -- End function
	.globl	getFlushCommandFlags    # -- Begin function getFlushCommandFlags
	.p2align	4, 0x90
	.type	getFlushCommandFlags,@function
getFlushCommandFlags:                   # @getFlushCommandFlags
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	xorl	%r15d, %r15d
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %eax
	jl	.LBB24_4
# %bb.1:
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_6
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_3
.LBB24_6:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$-1, %r15d
	jmp	.LBB24_5
.LBB24_3:
	movl	$1, %eax
.LBB24_4:
	movl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB24_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end24:
	.size	getFlushCommandFlags, .Lfunc_end24-getFlushCommandFlags
                                        # -- End function
	.globl	flushdbCommand          # -- Begin function flushdbCommand
	.p2align	4, 0x90
	.type	flushdbCommand,@function
flushdbCommand:                         # @flushdbCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB25_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB25_6
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_3
.LBB25_6:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_5
.LBB25_3:
	movl	$1, %r14d
.LBB25_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
	movl	40(%rax), %edi
	callq	touchWatchedKeysOnFlush
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
	movl	40(%rax), %edi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	emptyDb
	addq	%rax, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB25_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end25:
	.size	flushdbCommand, .Lfunc_end25-flushdbCommand
                                        # -- End function
	.globl	flushallCommand         # -- Begin function flushallCommand
	.p2align	4, 0x90
	.type	flushallCommand,@function
flushallCommand:                        # @flushallCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB26_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_10
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_3
.LBB26_10:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_9
.LBB26_3:
	movl	$1, %r14d
.LBB26_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edi
	callq	touchWatchedKeysOnFlush
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edi
	movl	%r14d, %esi
	xorl	%edx, %edx
	callq	emptyDb
	addq	%rax, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	server+2096(%rip), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %edi
	je	.LBB26_6
# %bb.5:
	movl	$10, %esi
	callq	kill
	movl	server+2096(%rip), %edi
	callq	rdbRemoveTempFile
	movl	$42, __A_VARIABLE(%rip)
.LBB26_6:
	cmpl	$0, server+2112(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2080(%rip), %rbx
	jle	.LBB26_8
# %bb.7:
	leaq	-80(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSave
	movslq	%ebx, %rbx
	movq	%rbx, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_8:
	addq	$1, %rbx
	movq	%rbx, server+2080(%rip)
.LBB26_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end26:
	.size	flushallCommand, .Lfunc_end26-flushallCommand
                                        # -- End function
	.globl	delGenericCommand       # -- Begin function delGenericCommand
	.p2align	4, 0x90
	.type	delGenericCommand,@function
delGenericCommand:                      # @delGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB27_13
# %bb.1:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$1, %r14d
	jmp	.LBB27_2
	.p2align	4, 0x90
.LBB27_12:                              #   in Loop: Header=BB27_2 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jge	.LBB27_13
.LBB27_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	callq	expireIfNeeded
	movq	16(%r13), %rbx
	movq	72(%r13), %rax
	movq	(%rax,%r14,8), %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB27_4
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	dbAsyncDelete
	movl	%eax, %r12d
	jmp	.LBB27_10
	.p2align	4, 0x90
.LBB27_4:                               #   in Loop: Header=BB27_2 Depth=1
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_2 Depth=1
	movq	8(%r15), %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB27_6:                               #   in Loop: Header=BB27_2 Depth=1
	movq	(%rbx), %rdi
	movq	8(%r15), %rsi
	callq	dictDelete
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB27_9
# %bb.7:                                #   in Loop: Header=BB27_2 Depth=1
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	je	.LBB27_9
# %bb.8:                                #   in Loop: Header=BB27_2 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_9:                               #   in Loop: Header=BB27_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB27_10:                              #   in Loop: Header=BB27_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB27_12
# %bb.11:                               #   in Loop: Header=BB27_2 Depth=1
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	(%rax,%r14,8), %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	(%rcx,%r14,8), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.5, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	addl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB27_12
.LBB27_13:
	movslq	-44(%rbp), %rsi         # 4-byte Folded Reload
	movq	%r13, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end27:
	.size	delGenericCommand, .Lfunc_end27-delGenericCommand
                                        # -- End function
	.globl	delCommand              # -- Begin function delCommand
	.p2align	4, 0x90
	.type	delCommand,@function
delCommand:                             # @delCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	delGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end28:
	.size	delCommand, .Lfunc_end28-delCommand
                                        # -- End function
	.globl	unlinkCommand           # -- Begin function unlinkCommand
	.p2align	4, 0x90
	.type	unlinkCommand,@function
unlinkCommand:                          # @unlinkCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	delGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end29:
	.size	unlinkCommand, .Lfunc_end29-unlinkCommand
                                        # -- End function
	.globl	existsCommand           # -- Begin function existsCommand
	.p2align	4, 0x90
	.type	existsCommand,@function
existsCommand:                          # @existsCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB30_1
# %bb.2:
	movl	$1, %ebx
	xorl	%r14d, %r14d
	jmp	.LBB30_3
	.p2align	4, 0x90
.LBB30_5:                               #   in Loop: Header=BB30_3 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB30_6
.LBB30_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	xorl	%edx, %edx
	callq	lookupKeyReadWithFlags
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB30_5
# %bb.4:                                #   in Loop: Header=BB30_3 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_5
.LBB30_1:
	xorl	%r14d, %r14d
.LBB30_6:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	existsCommand, .Lfunc_end30-existsCommand
                                        # -- End function
	.globl	selectCommand           # -- Begin function selectCommand
	.p2align	4, 0x90
	.type	selectCommand,@function
selectCommand:                          # @selectCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	leaq	-16(%rbp), %rdx
	movl	$.L.str.6, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB31_9
# %bb.1:
	cmpl	$0, server+2924(%rip)
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB31_4
# %bb.2:
	testq	%rax, %rax
	je	.LBB31_4
# %bb.3:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB31_9
.LBB31_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB31_6
# %bb.5:
	cmpl	%eax, server+1792(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB31_6
# %bb.7:
	cltq
	shlq	$6, %rax
	addq	server+48(%rip), %rax
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB31_8
.LBB31_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	addReplyError
.LBB31_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB31_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	selectCommand, .Lfunc_end31-selectCommand
                                        # -- End function
	.globl	randomkeyCommand        # -- Begin function randomkeyCommand
	.p2align	4, 0x90
	.type	randomkeyCommand,@function
randomkeyCommand:                       # @randomkeyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	callq	dbRandomKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB32_1
# %bb.2:
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	callq	decrRefCount
	jmp	.LBB32_3
.LBB32_1:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB32_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end32:
	.size	randomkeyCommand, .Lfunc_end32-randomkeyCommand
                                        # -- End function
	.globl	keysCommand             # -- Begin function keysCommand
	.p2align	4, 0x90
	.type	keysCommand,@function
keysCommand:                            # @keysCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r14
	movzbl	-1(%r14), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_1
# %bb.2:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_0(,%rax,8)
.LBB33_3:
	shrq	$3, %rbx
	jmp	.LBB33_8
.LBB33_1:
	xorl	%ebx, %ebx
	jmp	.LBB33_8
.LBB33_4:
	movzbl	-3(%r14), %ebx
	jmp	.LBB33_8
.LBB33_5:
	movzwl	-5(%r14), %ebx
	jmp	.LBB33_8
.LBB33_6:
	movl	-9(%r14), %ebx
	jmp	.LBB33_8
.LBB33_7:
	movq	-17(%r14), %rbx
.LBB33_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	16(%r15), %rax
	movq	(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r13
	cmpb	$42, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_9
# %bb.10:
	cmpb	$0, 1(%r14)
	sete	%al
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB33_11
.LBB33_9:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB33_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_12
# %bb.13:                               # %.preheader
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	jmp	.LBB33_14
	.p2align	4, 0x90
.LBB33_38:                              #   in Loop: Header=BB33_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB33_39:                              #   in Loop: Header=BB33_14 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulk
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB33_40:                              #   in Loop: Header=BB33_14 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB33_41:                              #   in Loop: Header=BB33_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB33_42
.LBB33_14:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB33_24
# %bb.15:                               #   in Loop: Header=BB33_14 Depth=1
	movzbl	-1(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_16
# %bb.17:                               #   in Loop: Header=BB33_14 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_1(,%rax,8)
.LBB33_18:                              #   in Loop: Header=BB33_14 Depth=1
	shrq	$3, %rcx
	jmp	.LBB33_23
.LBB33_19:                              #   in Loop: Header=BB33_14 Depth=1
	movzbl	-3(%r14), %ecx
	jmp	.LBB33_23
.LBB33_20:                              #   in Loop: Header=BB33_14 Depth=1
	movzwl	-5(%r14), %ecx
	jmp	.LBB33_23
.LBB33_21:                              #   in Loop: Header=BB33_14 Depth=1
	movl	-9(%r14), %ecx
	jmp	.LBB33_23
.LBB33_22:                              #   in Loop: Header=BB33_14 Depth=1
	movq	-17(%r14), %rcx
	jmp	.LBB33_23
.LBB33_16:                              #   in Loop: Header=BB33_14 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB33_23:                              #   in Loop: Header=BB33_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r14, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB33_41
.LBB33_24:                              #   in Loop: Header=BB33_14 Depth=1
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_25
# %bb.26:                               #   in Loop: Header=BB33_14 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_2(,%rax,8)
.LBB33_27:                              #   in Loop: Header=BB33_14 Depth=1
	shrq	$3, %rsi
	jmp	.LBB33_32
.LBB33_28:                              #   in Loop: Header=BB33_14 Depth=1
	movzbl	-3(%r14), %esi
	jmp	.LBB33_32
.LBB33_29:                              #   in Loop: Header=BB33_14 Depth=1
	movzwl	-5(%r14), %esi
	jmp	.LBB33_32
.LBB33_30:                              #   in Loop: Header=BB33_14 Depth=1
	movl	-9(%r14), %esi
	jmp	.LBB33_32
.LBB33_31:                              #   in Loop: Header=BB33_14 Depth=1
	movq	-17(%r14), %rsi
	jmp	.LBB33_32
.LBB33_25:                              #   in Loop: Header=BB33_14 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB33_32:                              #   in Loop: Header=BB33_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	createStringObject
	movq	%rax, %rbx
	movq	16(%r15), %rdi
	movq	%rax, %rsi
	callq	getExpire
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB33_38
# %bb.33:                               #   in Loop: Header=BB33_14 Depth=1
	cmpl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB33_38
# %bb.34:                               #   in Loop: Header=BB33_14 Depth=1
	movq	%rax, %r14
	cmpq	$0, server+3008(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB33_36
# %bb.35:                               #   in Loop: Header=BB33_14 Depth=1
	movq	server+3040(%rip), %rax
	jmp	.LBB33_37
.LBB33_36:                              #   in Loop: Header=BB33_14 Depth=1
	callq	mstime
.LBB33_37:                              #   in Loop: Header=BB33_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	jle	.LBB33_39
	jmp	.LBB33_40
.LBB33_12:
	xorl	%r12d, %r12d
.LBB33_42:
	movq	%r13, %rdi
	callq	dictReleaseIterator
	movq	%r15, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	setDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	keysCommand, .Lfunc_end33-keysCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI33_0:
	.quad	.LBB33_3
	.quad	.LBB33_4
	.quad	.LBB33_5
	.quad	.LBB33_6
	.quad	.LBB33_7
.LJTI33_1:
	.quad	.LBB33_18
	.quad	.LBB33_19
	.quad	.LBB33_20
	.quad	.LBB33_21
	.quad	.LBB33_22
.LJTI33_2:
	.quad	.LBB33_27
	.quad	.LBB33_28
	.quad	.LBB33_29
	.quad	.LBB33_30
	.quad	.LBB33_31
                                        # -- End function
	.text
	.globl	keyIsExpired            # -- Begin function keyIsExpired
	.p2align	4, 0x90
	.type	keyIsExpired,@function
keyIsExpired:                           # @keyIsExpired
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	getExpire
	movq	%rax, %rbx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	js	.LBB34_6
# %bb.1:
	cmpl	$0, server+860(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB34_6
# %bb.2:
	cmpq	$0, server+3008(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB34_4
# %bb.3:
	movq	server+3040(%rip), %rcx
	jmp	.LBB34_5
.LBB34_4:
	callq	mstime
	movq	%rax, %rcx
.LBB34_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	setg	%al
.LBB34_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end34:
	.size	keyIsExpired, .Lfunc_end34-keyIsExpired
                                        # -- End function
	.globl	scanCallback            # -- Begin function scanCallback
	.p2align	4, 0x90
	.type	scanCallback,@function
scanCallback:                           # @scanCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	(%rdi), %r15
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB35_5
# %bb.1:
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB35_8
# %bb.2:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_24
# %bb.3:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_3(,%rax,8)
.LBB35_5:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_24
# %bb.6:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_4(,%rax,8)
.LBB35_7:
	shrq	$3, %rsi
	jmp	.LBB35_25
.LBB35_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB35_12
# %bb.9:
	movq	(%rbx), %rdi
	movq	8(%rbx), %r14
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_33
# %bb.10:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_1(,%rax,8)
.LBB35_11:
	shrq	$3, %rsi
	jmp	.LBB35_34
.LBB35_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB35_50
# %bb.13:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_44
# %bb.14:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_0(,%rax,8)
.LBB35_15:
	shrq	$3, %rsi
	jmp	.LBB35_45
.LBB35_16:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_25
.LBB35_18:
	movl	-9(%rdi), %esi
	jmp	.LBB35_25
.LBB35_17:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_25
.LBB35_19:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_25
.LBB35_24:
	xorl	%esi, %esi
.LBB35_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rax, %rsi
	jmp	.LBB35_48
.LBB35_26:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_34
.LBB35_27:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_45
.LBB35_28:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_34
.LBB35_29:
	movl	-9(%rdi), %esi
	jmp	.LBB35_34
.LBB35_30:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_45
.LBB35_31:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_34
.LBB35_32:
	movl	-9(%rdi), %esi
	jmp	.LBB35_45
.LBB35_33:
	xorl	%esi, %esi
.LBB35_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %r12
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_42
# %bb.35:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_2(,%rax,8)
.LBB35_36:
	shrq	$3, %rsi
	jmp	.LBB35_43
.LBB35_37:
	movq	-17(%r14), %rsi
	jmp	.LBB35_43
.LBB35_38:
	movzwl	-5(%r14), %esi
	jmp	.LBB35_43
.LBB35_39:
	movl	-9(%r14), %esi
	jmp	.LBB35_43
.LBB35_40:
	movzbl	-3(%r14), %esi
	jmp	.LBB35_43
.LBB35_41:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_45
.LBB35_42:
	xorl	%esi, %esi
.LBB35_43:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	createStringObject
	jmp	.LBB35_46
.LBB35_44:
	xorl	%esi, %esi
.LBB35_45:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %r12
	movq	8(%rbx), %rax
	fldl	(%rax)
	fstpt	(%rsp)
	xorl	%edi, %edi
	callq	createStringObjectFromLongDouble
.LBB35_46:
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB35_49
# %bb.47:
	movq	%r15, %rdi
	movq	%rbx, %rsi
.LBB35_48:
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
.LBB35_49:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB35_50:
	movl	$.L.str.1, %edi
	movl	$.L.str.9, %edx
	movl	$587, %esi              # imm = 0x24B
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end35:
	.size	scanCallback, .Lfunc_end35-scanCallback
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI35_0:
	.quad	.LBB35_15
	.quad	.LBB35_41
	.quad	.LBB35_30
	.quad	.LBB35_32
	.quad	.LBB35_27
.LJTI35_1:
	.quad	.LBB35_11
	.quad	.LBB35_31
	.quad	.LBB35_28
	.quad	.LBB35_29
	.quad	.LBB35_26
.LJTI35_2:
	.quad	.LBB35_36
	.quad	.LBB35_40
	.quad	.LBB35_38
	.quad	.LBB35_39
	.quad	.LBB35_37
.LJTI35_3:
	.quad	.LBB35_7
	.quad	.LBB35_19
	.quad	.LBB35_17
	.quad	.LBB35_18
	.quad	.LBB35_16
.LJTI35_4:
	.quad	.LBB35_7
	.quad	.LBB35_19
	.quad	.LBB35_17
	.quad	.LBB35_18
	.quad	.LBB35_16
                                        # -- End function
	.text
	.globl	parseScanCursorOrReply  # -- Begin function parseScanCursorOrReply
	.p2align	4, 0x90
	.type	parseScanCursorOrReply,@function
parseScanCursorOrReply:                 # @parseScanCursorOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__errno
	movl	$0, (%rax)
	movq	8(%rbx), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul
	movq	%rax, (%r15)
	callq	__locale_ctype_ptr
	movq	8(%rbx), %rcx
	movsbq	(%rcx), %rcx
	testb	$8, 1(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB36_3
# %bb.1:
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB36_3
# %bb.2:
	callq	__errno
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpl	$34, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB36_4
.LBB36_3:
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB36_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	parseScanCursorOrReply, .Lfunc_end36-parseScanCursorOrReply
                                        # -- End function
	.globl	scanGenericCommand      # -- Begin function scanGenericCommand
	.p2align	4, 0x90
	.type	scanGenericCommand,@function
scanGenericCommand:                     # @scanGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	movq	%rsi, %rbx
	movq	%rdi, %r12
	callq	listCreate
	movq	%rax, %r15
	movq	$10, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB37_6
# %bb.1:
	movl	(%rbx), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	je	.LBB37_6
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB37_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB37_4
.LBB37_6:
	movq	%rbx, -104(%rbp)        # 8-byte Spill
	cmpq	$1, %rbx
	movl	$3, %r14d
	sbbl	$0, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -48(%rbp)         # 8-byte Spill
	movl	64(%r12), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %esi
	jle	.LBB37_7
# %bb.8:
	movl	%r14d, %r12d
	negl	%r14d
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$10, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%r15, -56(%rbp)         # 8-byte Spill
	jmp	.LBB37_9
.LBB37_23:                              #   in Loop: Header=BB37_9 Depth=1
	movq	-17(%rcx), %rdx
.LBB37_24:                              #   in Loop: Header=BB37_9 Depth=1
	movq	-56(%rbp), %r15         # 8-byte Reload
.LBB37_25:                              #   in Loop: Header=BB37_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	cmpb	$42, (%rcx)
	setne	%al
	cmpl	$1, %edx
	setne	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB37_28:                              #   in Loop: Header=BB37_9 Depth=1
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-2, %r14d
	cmpl	%r12d, %esi
	jle	.LBB37_29
.LBB37_9:                               # =>This Inner Loop Header: Depth=1
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	leal	(%rsi,%r14), %r13d
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	72(%rax), %r15
	movq	(%r15,%r12,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	jl	.LBB37_14
# %bb.10:                               #   in Loop: Header=BB37_9 Depth=1
	testl	%eax, %eax
	jne	.LBB37_14
# %bb.11:                               #   in Loop: Header=BB37_9 Depth=1
	movq	8(%r15,%r12,8), %rsi
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-56(%rbp), %r15         # 8-byte Reload
	jne	.LBB37_101
# %bb.12:                               #   in Loop: Header=BB37_9 Depth=1
	movq	-80(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB37_13
# %bb.27:                               #   in Loop: Header=BB37_9 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rbx), %esi
	movq	-72(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB37_28
	.p2align	4, 0x90
.LBB37_14:                              #   in Loop: Header=BB37_9 Depth=1
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r13d
	jl	.LBB37_26
# %bb.15:                               #   in Loop: Header=BB37_9 Depth=1
	testl	%eax, %eax
	jne	.LBB37_26
# %bb.16:                               #   in Loop: Header=BB37_9 Depth=1
	movq	8(%r15,%r12,8), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB37_17
# %bb.18:                               #   in Loop: Header=BB37_9 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jmpq	*.LJTI37_0(,%rax,8)
.LBB37_19:                              #   in Loop: Header=BB37_9 Depth=1
	shrq	$3, %rdx
	jmp	.LBB37_24
.LBB37_21:                              #   in Loop: Header=BB37_9 Depth=1
	movzwl	-5(%rcx), %edx
	jmp	.LBB37_24
.LBB37_22:                              #   in Loop: Header=BB37_9 Depth=1
	movl	-9(%rcx), %edx
	jmp	.LBB37_24
.LBB37_20:                              #   in Loop: Header=BB37_9 Depth=1
	movzbl	-3(%rcx), %edx
	jmp	.LBB37_24
.LBB37_17:                              #   in Loop: Header=BB37_9 Depth=1
	xorl	%edx, %edx
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	-88(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB37_25
.LBB37_7:
	xorl	%eax, %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	$10, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
.LBB37_29:
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r12        # 8-byte Reload
	testq	%r12, %r12
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	je	.LBB37_30
# %bb.31:
	movl	(%r12), %eax
	movl	%eax, %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ecx
	movq	-48(%rbp), %r13         # 8-byte Reload
	jne	.LBB37_41
# %bb.32:
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB37_33
# %bb.48:
	movq	8(%r12), %r14
	jmp	.LBB37_49
.LBB37_30:
	movq	-48(%rbp), %r13         # 8-byte Reload
	movq	16(%r13), %rax
	movq	(%rax), %r14
	jmp	.LBB37_49
.LBB37_41:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB37_45
# %bb.42:
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %ecx
	jne	.LBB37_34
# %bb.43:
	movq	8(%r12), %r14
	jmp	.LBB37_44
.LBB37_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB37_34:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB37_35
.LBB37_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	jne	.LBB37_35
# %bb.46:
	movl	%eax, %ecx
	andl	$240, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$112, %ecx
	jne	.LBB37_35
# %bb.47:
	movq	8(%r12), %rax
	movq	(%rax), %r14
.LBB37_44:
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%rax, -80(%rbp)
.LBB37_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	-112(%rbp), %rsi        # 8-byte Reload
	je	.LBB37_50
# %bb.51:
	movq	%r15, -160(%rbp)
	movq	%r12, -152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rbx
	notq	%rbx
	leaq	-160(%rbp), %r12
	.p2align	4, 0x90
.LBB37_52:                              # =>This Inner Loop Header: Depth=1
	movl	$scanCallback, %edx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	movq	%r12, %r8
	callq	dictScan
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB37_64
# %bb.53:                               #   in Loop: Header=BB37_52 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	incq	%rbx
	je	.LBB37_64
# %bb.54:                               #   in Loop: Header=BB37_52 Depth=1
	movq	40(%r15), %rax
	cmpq	-80(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB37_52
	jmp	.LBB37_64
.LBB37_35:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB37_36
.LBB37_50:
	movl	(%r12), %eax
.LBB37_36:
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB37_55
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rdi
	leaq	-160(%rbp), %rdx
	xorl	%esi, %esi
	callq	intsetGet
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB37_40
# %bb.38:                               # %.preheader2
	movl	$1, %ebx
	leaq	-160(%rbp), %r14
	.p2align	4, 0x90
.LBB37_39:                              # =>This Inner Loop Header: Depth=1
	movq	-160(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	intsetGet
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jne	.LBB37_39
.LBB37_40:
	xorl	%esi, %esi
	jmp	.LBB37_64
.LBB37_55:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB37_57
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB37_102
.LBB37_57:
	movq	8(%r12), %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB37_63
# %bb.58:                               # %.preheader4
	movq	%rax, %rbx
	leaq	-160(%rbp), %r14
	leaq	-124(%rbp), %r12
	leaq	-168(%rbp), %r13
	jmp	.LBB37_59
	.p2align	4, 0x90
.LBB37_61:                              #   in Loop: Header=BB37_59 Depth=1
	movq	-168(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB37_62:                              #   in Loop: Header=BB37_59 Depth=1
	movq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listAddNodeTail
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB37_63
.LBB37_59:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	ziplistGet
	movq	-160(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB37_61
# %bb.60:                               #   in Loop: Header=BB37_59 Depth=1
	movl	-124(%rbp), %esi
	callq	createStringObject
	jmp	.LBB37_62
.LBB37_63:
	xorl	%esi, %esi
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB37_64:
	movq	%rsi, -112(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %r12
	jmp	.LBB37_65
	.p2align	4, 0x90
.LBB37_92:                              #   in Loop: Header=BB37_65 Depth=1
	movq	%r13, %r12
	movq	-48(%rbp), %r13         # 8-byte Reload
.LBB37_65:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB37_98
# %bb.66:                               #   in Loop: Header=BB37_65 Depth=1
	movq	8(%r12), %r13
	movq	16(%r12), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %ebx
	cmpl	$0, -120(%rbp)          # 4-byte Folded Reload
	je	.LBB37_86
# %bb.67:                               #   in Loop: Header=BB37_65 Depth=1
	movl	(%r14), %eax
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB37_69
# %bb.68:                               #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB37_81
.LBB37_69:                              #   in Loop: Header=BB37_65 Depth=1
	movq	8(%r14), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB37_70
# %bb.71:                               #   in Loop: Header=BB37_65 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	movq	-72(%rbp), %rsi         # 8-byte Reload
	jmpq	*.LJTI37_1(,%rax,8)
.LBB37_72:                              #   in Loop: Header=BB37_65 Depth=1
	shrq	$3, %rcx
	jmp	.LBB37_77
.LBB37_81:                              #   in Loop: Header=BB37_65 Depth=1
	movq	%r13, -88(%rbp)         # 8-byte Spill
	movl	(%r14), %eax
	movl	$240, %ecx
	andl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB37_82
# %bb.83:                               #   in Loop: Header=BB37_65 Depth=1
	movq	%r15, %r13
	movq	8(%r14), %rdx
	movl	$21, %esi
	leaq	-160(%rbp), %r15
	movq	%r15, %rdi
	callq	ll2string
	xorl	%ebx, %ebx
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r15, %rdx
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB37_85
# %bb.84:                               #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
.LBB37_85:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %r15
	movq	-88(%rbp), %r13         # 8-byte Reload
	jmp	.LBB37_86
.LBB37_76:                              #   in Loop: Header=BB37_65 Depth=1
	movq	-17(%rdx), %rcx
	jmp	.LBB37_77
.LBB37_74:                              #   in Loop: Header=BB37_65 Depth=1
	movzwl	-5(%rdx), %ecx
	jmp	.LBB37_77
.LBB37_75:                              #   in Loop: Header=BB37_65 Depth=1
	movl	-9(%rdx), %ecx
	jmp	.LBB37_77
.LBB37_73:                              #   in Loop: Header=BB37_65 Depth=1
	movzbl	-3(%rdx), %ecx
	jmp	.LBB37_77
.LBB37_70:                              #   in Loop: Header=BB37_65 Depth=1
	xorl	%ecx, %ecx
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB37_77:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movq	-96(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB37_78
.LBB37_86:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB37_89
# %bb.87:                               #   in Loop: Header=BB37_65 Depth=1
	testl	%ebx, %ebx
	jne	.LBB37_89
# %bb.88:                               #   in Loop: Header=BB37_65 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r14, %rsi
	callq	expireIfNeeded
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB37_79
	jmp	.LBB37_90
	.p2align	4, 0x90
.LBB37_89:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB37_80
.LBB37_90:                              #   in Loop: Header=BB37_65 Depth=1
	xorl	%eax, %eax
	jmp	.LBB37_91
.LBB37_78:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB37_79:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB37_80:                              #   in Loop: Header=BB37_65 Depth=1
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %al
.LBB37_91:                              #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB37_92
# %bb.93:                               #   in Loop: Header=BB37_65 Depth=1
	movl	(%rcx), %ecx
	andl	$15, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ecx
	je	.LBB37_95
# %bb.94:                               #   in Loop: Header=BB37_65 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB37_92
.LBB37_95:                              #   in Loop: Header=BB37_65 Depth=1
	movq	8(%r13), %r12
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB37_97
# %bb.96:                               #   in Loop: Header=BB37_65 Depth=1
	movq	16(%r13), %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
.LBB37_97:                              #   in Loop: Header=BB37_65 Depth=1
	movq	-48(%rbp), %r13         # 8-byte Reload
	jmp	.LBB37_65
.LBB37_98:
	movl	$2, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	%r13, %rdi
	movq	-112(%rbp), %rsi        # 8-byte Reload
	callq	addReplyBulkLongLong
	movq	40(%r15), %rsi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	.p2align	4, 0x90
.LBB37_100:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB37_101
# %bb.99:                               #   in Loop: Header=BB37_100 Depth=1
	movq	16(%rbx), %r14
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	%r14, %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	listDelNode
	jmp	.LBB37_100
.LBB37_26:
	movq	shared+128(%rip), %rsi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r15         # 8-byte Reload
	jmp	.LBB37_101
.LBB37_13:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB37_101:
	movq	$decrRefCountVoid, 24(%r15)
	movq	%r15, %rdi
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_82:
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$754, %edx              # imm = 0x2F2
.LBB37_5:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB37_4:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$636, %edx              # imm = 0x27C
	jmp	.LBB37_5
.LBB37_102:
	movl	$.L.str.1, %edi
	movl	$.L.str.14, %edx
	movl	$735, %esi              # imm = 0x2DF
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end37:
	.size	scanGenericCommand, .Lfunc_end37-scanGenericCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI37_0:
	.quad	.LBB37_19
	.quad	.LBB37_20
	.quad	.LBB37_21
	.quad	.LBB37_22
	.quad	.LBB37_23
.LJTI37_1:
	.quad	.LBB37_72
	.quad	.LBB37_73
	.quad	.LBB37_74
	.quad	.LBB37_75
	.quad	.LBB37_76
                                        # -- End function
	.text
	.globl	scanCommand             # -- Begin function scanCommand
	.p2align	4, 0x90
	.type	scanCommand,@function
scanCommand:                            # @scanCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	leaq	-16(%rbp), %rdx
	callq	parseScanCursorOrReply
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB38_2
# %bb.1:
	movq	-16(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	scanGenericCommand
.LBB38_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	scanCommand, .Lfunc_end38-scanCommand
                                        # -- End function
	.globl	dbsizeCommand           # -- Begin function dbsizeCommand
	.p2align	4, 0x90
	.type	dbsizeCommand,@function
dbsizeCommand:                          # @dbsizeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	16(%rdi), %rax
	movq	(%rax), %rax
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end39:
	.size	dbsizeCommand, .Lfunc_end39-dbsizeCommand
                                        # -- End function
	.globl	lastsaveCommand         # -- Begin function lastsaveCommand
	.p2align	4, 0x90
	.type	lastsaveCommand,@function
lastsaveCommand:                        # @lastsaveCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2136(%rip), %rsi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end40:
	.size	lastsaveCommand, .Lfunc_end40-lastsaveCommand
                                        # -- End function
	.globl	typeCommand             # -- Begin function typeCommand
	.p2align	4, 0x90
	.type	typeCommand,@function
typeCommand:                            # @typeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movl	$1, %edx
	callq	lookupKeyReadWithFlags
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_1
# %bb.2:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$15, %dl
	cmpb	$6, %dl
	ja	.LBB41_10
# %bb.3:
	movl	$.L.str.17, %esi
	andl	$15, %ecx
	jmpq	*.LJTI41_0(,%rcx,8)
.LBB41_4:
	movl	$.L.str.18, %esi
	jmp	.LBB41_11
.LBB41_1:
	movl	$.L.str.16, %esi
.LBB41_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyStatus
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB41_10:
	movl	$.L.str.23, %esi
	jmp	.LBB41_11
.LBB41_5:
	movl	$.L.str.19, %esi
	jmp	.LBB41_11
.LBB41_6:
	movl	$.L.str.20, %esi
	jmp	.LBB41_11
.LBB41_7:
	movl	$.L.str.21, %esi
	jmp	.LBB41_11
.LBB41_9:
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	addq	$84, %rsi
	jmp	.LBB41_11
.LBB41_8:
	movl	$.L.str.22, %esi
	jmp	.LBB41_11
.Lfunc_end41:
	.size	typeCommand, .Lfunc_end41-typeCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI41_0:
	.quad	.LBB41_11
	.quad	.LBB41_4
	.quad	.LBB41_5
	.quad	.LBB41_6
	.quad	.LBB41_7
	.quad	.LBB41_9
	.quad	.LBB41_8
                                        # -- End function
	.text
	.globl	shutdownCommand         # -- Begin function shutdownCommand
	.p2align	4, 0x90
	.type	shutdownCommand,@function
shutdownCommand:                        # @shutdownCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jl	.LBB42_2
.LBB42_1:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB42_12
.LBB42_2:
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB42_8
# %bb.3:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r14
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB42_4
# %bb.5:
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB42_1
# %bb.6:
	movl	$1, %edi
	jmp	.LBB42_7
.LBB42_4:
	movl	$2, %edi
.LBB42_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB42_8:
	movl	server+164(%rip), %eax
	orl	server+860(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB42_10
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edi
.LBB42_10:
	xorl	%eax, %eax
	callq	prepareForShutdown
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB42_13
# %bb.11:
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	addReplyError
.LBB42_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB42_13:
	xorl	%edi, %edi
	callq	exit
.Lfunc_end42:
	.size	shutdownCommand, .Lfunc_end42-shutdownCommand
                                        # -- End function
	.globl	renameGenericCommand    # -- Begin function renameGenericCommand
	.p2align	4, 0x90
	.type	renameGenericCommand,@function
renameGenericCommand:                   # @renameGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rax
	movq	8(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	sdscmp
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB43_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
.LBB43_2:
	movq	16(%r13), %r15
	movq	72(%r13), %rax
	movq	8(%rax), %rbx
	movq	shared+120(%rip), %r12
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	expireIfNeeded
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB43_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB43_6
# %bb.5:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movl	$shared+8, %eax
	movl	$shared+32, %ecx
	jmp	.LBB43_13
.LBB43_3:
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB43_15
.LBB43_6:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	incrRefCount
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	getExpire
	movq	%rax, %r14
	movq	16(%r13), %rbx
	movq	72(%r13), %rax
	movq	16(%rax), %r12
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	expireIfNeeded
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	-44(%rbp), %ebx         # 4-byte Reload
	je	.LBB43_10
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB43_9
# %bb.8:
	movq	%r15, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	jmp	.LBB43_14
.LBB43_9:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	16(%rax), %rsi
	callq	dbDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB43_10:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	16(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %r14
	je	.LBB43_12
# %bb.11:
	movq	16(%r13), %rsi
	movq	72(%r13), %rax
	movq	16(%rax), %rdx
	movq	%r13, %rdi
	movq	%r14, %rcx
	callq	setExpire
	movl	$42, __A_VARIABLE(%rip)
.LBB43_12:
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	dbDelete
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	8(%rax), %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rdi
	movq	72(%r13), %rax
	movq	16(%rax), %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.27, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movq	16(%r13), %rax
	movq	72(%r13), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.28, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	testl	%ebx, %ebx
	movl	$shared+8, %eax
	movl	$shared+40, %ecx
.LBB43_13:
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
.LBB43_14:
	movq	%r13, %rdi
	callq	addReply
.LBB43_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end43:
	.size	renameGenericCommand, .Lfunc_end43-renameGenericCommand
                                        # -- End function
	.globl	getExpire               # -- Begin function getExpire
	.p2align	4, 0x90
	.type	getExpire,@function
getExpire:                              # @getExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movq	40(%rdi), %rax
	movq	$-1, %r15
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB44_4
# %bb.1:
	movq	%rsi, %r14
	movq	8(%rsi), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB44_4
# %bb.2:
	movq	%rax, %r12
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB44_5
# %bb.3:
	movq	8(%r12), %r15
.LBB44_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_5:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1101, %r8d             # imm = 0x44D
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end44:
	.size	getExpire, .Lfunc_end44-getExpire
                                        # -- End function
	.globl	setExpire               # -- Begin function setExpire
	.p2align	4, 0x90
	.type	setExpire,@function
setExpire:                              # @setExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r12
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	(%rsi), %rdi
	movq	8(%rdx), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB45_7
# %bb.1:
	movq	8(%rbx), %rdi
	movq	(%rax), %rsi
	callq	dictAddOrFind
	movq	%r12, 8(%rax)
	movq	server+2464(%rip), %rcx
	movl	server+2556(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB45_6
# %bb.2:
	testq	%rcx, %rcx
	je	.LBB45_6
# %bb.3:
	testl	%eax, %eax
	jne	.LBB45_6
# %bb.4:
	testb	$2, 160(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB45_6
# %bb.5:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	rememberSlaveKeyWithExpire
	movl	$42, __A_VARIABLE(%rip)
.LBB45_6:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_7:
	movl	$.L.str.34, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1081, %r8d             # imm = 0x439
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end45:
	.size	setExpire, .Lfunc_end45-setExpire
                                        # -- End function
	.globl	renameCommand           # -- Begin function renameCommand
	.p2align	4, 0x90
	.type	renameCommand,@function
renameCommand:                          # @renameCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	renameGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end46:
	.size	renameCommand, .Lfunc_end46-renameCommand
                                        # -- End function
	.globl	renamenxCommand         # -- Begin function renamenxCommand
	.p2align	4, 0x90
	.type	renamenxCommand,@function
renamenxCommand:                        # @renamenxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	renameGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end47:
	.size	renamenxCommand, .Lfunc_end47-renamenxCommand
                                        # -- End function
	.globl	moveCommand             # -- Begin function moveCommand
	.p2align	4, 0x90
	.type	moveCommand,@function
moveCommand:                            # @moveCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB48_2
# %bb.1:
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB48_20
.LBB48_2:
	movq	16(%rbx), %r14
	movq	72(%rbx), %rax
	movslq	40(%r14), %r13
	movq	16(%rax), %rdi
	leaq	-56(%rbp), %rsi
	callq	getLongLongFromObject
	movq	-56(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB48_7
# %bb.3:
	movq	%rcx, %rax
	subq	$-2147483648, %rax      # imm = 0x80000000
	shrq	$32, %rax
	jne	.LBB48_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB48_6
# %bb.5:
	movl	server+1792(%rip), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edx
	jle	.LBB48_6
# %bb.8:
	movq	server+48(%rip), %rax
	movslq	%ecx, %r15
	shlq	$6, %r15
	addq	%rax, %r15
	movq	%r15, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	testl	%r13d, %r13d
	js	.LBB48_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	cmpl	%r13d, %edx
	jle	.LBB48_11
# %bb.10:
	shlq	$6, %r13
	addq	%r13, %rax
	movq	%rax, 16(%rbx)
	movq	%rax, %r12
.LBB48_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r14
	je	.LBB48_12
# %bb.13:
	movq	72(%rbx), %rax
	movq	8(%rax), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	expireIfNeeded
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB48_14
# %bb.15:
	movq	%rax, %r12
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	getExpire
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	72(%rbx), %rax
	movq	8(%rax), %r13
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	expireIfNeeded
	movq	%r15, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB48_16
.LBB48_14:
	movq	shared+32(%rip), %rsi
	jmp	.LBB48_19
.LBB48_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB48_7:
	movq	shared+144(%rip), %rsi
.LBB48_19:
	movq	%rbx, %rdi
	callq	addReply
.LBB48_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_12:
	movq	shared+136(%rip), %rsi
	jmp	.LBB48_19
.LBB48_16:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	dbAdd
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	$-1, %rcx
	je	.LBB48_18
# %bb.17:
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	setExpire
	movl	$42, __A_VARIABLE(%rip)
.LBB48_18:
	movq	%r12, %rdi
	callq	incrRefCount
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	dbDelete
	addq	$1, server+2080(%rip)
	movq	shared+40(%rip), %rsi
	jmp	.LBB48_19
.Lfunc_end48:
	.size	moveCommand, .Lfunc_end48-moveCommand
                                        # -- End function
	.globl	scanDatabaseForReadyLists # -- Begin function scanDatabaseForReadyLists
	.p2align	4, 0x90
	.type	scanDatabaseForReadyLists,@function
scanDatabaseForReadyLists:              # @scanDatabaseForReadyLists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB49_1
	.p2align	4, 0x90
.LBB49_13:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB49_10:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB49_11:                              #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB49_12
# %bb.2:                                #   in Loop: Header=BB49_1 Depth=1
	movq	(%rax), %rbx
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB49_13
# %bb.3:                                #   in Loop: Header=BB49_1 Depth=1
	movq	8(%rax), %rax
	movl	server+1940(%rip), %ecx
	andl	server+2096(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ecx
	jne	.LBB49_5
# %bb.4:                                #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB49_5:                               #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB49_11
# %bb.6:                                #   in Loop: Header=BB49_1 Depth=1
	movl	(%rax), %eax
	andl	$15, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB49_9
# %bb.7:                                #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB49_9
# %bb.8:                                #   in Loop: Header=BB49_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB49_11
	.p2align	4, 0x90
.LBB49_9:                               #   in Loop: Header=BB49_1 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	signalKeyAsReady
	jmp	.LBB49_10
.LBB49_12:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end49:
	.size	scanDatabaseForReadyLists, .Lfunc_end49-scanDatabaseForReadyLists
                                        # -- End function
	.globl	dbSwapDatabases         # -- Begin function dbSwapDatabases
	.p2align	4, 0x90
	.type	dbSwapDatabases,@function
dbSwapDatabases:                        # @dbSwapDatabases
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	testl	%edi, %edi
	js	.LBB50_6
# %bb.1:
	movl	server+1792(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB50_6
# %bb.2:
	cmpl	%edi, %eax
	jle	.LBB50_6
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jle	.LBB50_6
# %bb.4:
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %edi
	je	.LBB50_6
# %bb.5:
	movq	server+48(%rip), %rax
	movslq	%edi, %rcx
	shlq	$6, %rcx
	leaq	(%rax,%rcx), %rdi
	movups	(%rax,%rcx), %xmm0
	movq	48(%rax,%rcx), %r8
	movslq	%esi, %rsi
	shlq	$6, %rsi
	leaq	(%rax,%rsi), %r14
	movups	(%rax,%rsi), %xmm1
	movups	%xmm1, (%rax,%rcx)
	movq	48(%rax,%rsi), %rdx
	movq	%rdx, 48(%rax,%rcx)
	movups	%xmm0, (%rax,%rsi)
	movq	%r8, 48(%rax,%rsi)
	callq	scanDatabaseForReadyLists
	movq	%r14, %rdi
	callq	scanDatabaseForReadyLists
.LBB50_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end50:
	.size	dbSwapDatabases, .Lfunc_end50-dbSwapDatabases
                                        # -- End function
	.globl	swapdbCommand           # -- Begin function swapdbCommand
	.p2align	4, 0x90
	.type	swapdbCommand,@function
swapdbCommand:                          # @swapdbCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB51_3
# %bb.1:
	movl	$.L.str.30, %esi
.LBB51_2:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB51_8
.LBB51_3:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movl	$.L.str.31, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB51_8
# %bb.4:
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	leaq	-16(%rbp), %rdx
	movl	$.L.str.32, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB51_8
# %bb.5:
	movl	-24(%rbp), %edi
	movl	-16(%rbp), %esi
	callq	dbSwapDatabases
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB51_6
# %bb.7:
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB51_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB51_6:
	movl	$.L.str.8, %esi
	jmp	.LBB51_2
.Lfunc_end51:
	.size	swapdbCommand, .Lfunc_end51-swapdbCommand
                                        # -- End function
	.globl	propagateExpire         # -- Begin function propagateExpire
	.p2align	4, 0x90
	.type	propagateExpire,@function
propagateExpire:                        # @propagateExpire
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	testl	%edx, %edx
	movl	$shared+296, %eax
	movl	$shared+304, %ecx
	cmoveq	%rax, %rcx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	(%rcx), %rdi
	movq	%rdi, -32(%rbp)
	movq	%rsi, -24(%rbp)
	callq	incrRefCount
	movq	%rbx, %rdi
	callq	incrRefCount
	cmpl	$0, server+1880(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB52_1
# %bb.2:
	movq	server+896(%rip), %rdi
	movl	40(%r14), %esi
	addq	$40, %r14
	leaq	-32(%rbp), %rdx
	movl	$2, %ecx
	callq	feedAppendOnlyFile
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB52_3
.LBB52_1:
	addq	$40, %r14
.LBB52_3:
	movq	server+536(%rip), %rdi
	movl	(%r14), %esi
	leaq	-32(%rbp), %rdx
	movl	$2, %ecx
	callq	replicationFeedSlaves
	movq	-32(%rbp), %rdi
	callq	decrRefCount
	movq	-24(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end52:
	.size	propagateExpire, .Lfunc_end52-propagateExpire
                                        # -- End function
	.globl	getKeysUsingCommandTable # -- Begin function getKeysUsingCommandTable
	.p2align	4, 0x90
	.type	getKeysUsingCommandTable,@function
getKeysUsingCommandTable:               # @getKeysUsingCommandTable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movl	48(%rdi), %eax
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB53_11
# %bb.1:
	movl	%edx, %r15d
	movq	%rdi, %r12
	movl	52(%rdi), %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jns	.LBB53_3
# %bb.2:
	addl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB53_3:
	movl	%r13d, %ecx
	subl	%eax, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	callq	zmalloc
	movl	48(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jg	.LBB53_12
# %bb.4:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB53_5:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ecx
	jge	.LBB53_8
# %bb.6:                                #   in Loop: Header=BB53_5 Depth=1
	movl	%ecx, (%rax,%rbx,4)
	addl	56(%r12), %ecx
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jle	.LBB53_5
	jmp	.LBB53_12
.LBB53_8:
	testb	$8, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB53_10
# %bb.9:
	cmpl	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB53_13
.LBB53_10:
	movq	%rax, %rdi
	callq	zfree
	xorl	%ebx, %ebx
.LBB53_11:
	xorl	%eax, %eax
.LBB53_12:
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB53_13:
	movl	$.L.str.1, %edi
	movl	$.L.str.36, %edx
	movl	$1220, %esi             # imm = 0x4C4
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end53:
	.size	getKeysUsingCommandTable, .Lfunc_end53-getKeysUsingCommandTable
                                        # -- End function
	.globl	getKeysFromCommand      # -- Begin function getKeysFromCommand
	.p2align	4, 0x90
	.type	getKeysFromCommand,@function
getKeysFromCommand:                     # @getKeysFromCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	32(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB54_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB54_5
# %bb.3:
	movq	40(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB54_5
# %bb.4:
	callq	*%rax
	jmp	.LBB54_6
.LBB54_1:
	callq	moduleGetCommandKeysViaAPI
	jmp	.LBB54_6
.LBB54_5:
	callq	getKeysUsingCommandTable
.LBB54_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end54:
	.size	getKeysFromCommand, .Lfunc_end54-getKeysFromCommand
                                        # -- End function
	.globl	getKeysFreeResult       # -- Begin function getKeysFreeResult
	.p2align	4, 0x90
	.type	getKeysFreeResult,@function
getKeysFreeResult:                      # @getKeysFreeResult
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end55:
	.size	getKeysFreeResult, .Lfunc_end55-getKeysFreeResult
                                        # -- End function
	.globl	zunionInterGetKeys      # -- Begin function zunionInterGetKeys
	.p2align	4, 0x90
	.type	zunionInterGetKeys,@function
zunionInterGetKeys:                     # @zunionInterGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %ebx
	movq	16(%rsi), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB56_1
# %bb.2:
	movl	%eax, %r15d
	addl	$-3, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jle	.LBB56_3
.LBB56_1:
	xorl	%r15d, %r15d
	xorl	%eax, %eax
	jmp	.LBB56_11
.LBB56_3:
	movslq	%r15d, %r12
	leaq	4(,%r12,4), %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB56_5
# %bb.4:
	xorl	%esi, %esi
	jmp	.LBB56_7
.LBB56_5:
	subq	%rcx, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB56_6:                               # =>This Inner Loop Header: Depth=1
	leal	3(%rdi), %esi
	movl	%esi, (%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rdi), %rsi
	movl	%esi, 4(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	5(%rdi), %ebx
	movl	%ebx, 8(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	6(%rdi), %ebx
	movl	%ebx, 12(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	cmpq	%rsi, %rdx
	jne	.LBB56_6
.LBB56_7:
	testq	%rcx, %rcx
	je	.LBB56_10
# %bb.8:                                # %.preheader
	leal	3(%rsi), %edx
	leaq	(%rax,%rsi,4), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB56_9:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdi), %ebx
	movl	%ebx, (%rsi,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB56_9
.LBB56_10:
	addl	$1, %r15d
	movl	$1, (%rax,%r12,4)
.LBB56_11:
	movl	%r15d, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	zunionInterGetKeys, .Lfunc_end56-zunionInterGetKeys
                                        # -- End function
	.globl	evalGetKeys             # -- Begin function evalGetKeys
	.p2align	4, 0x90
	.type	evalGetKeys,@function
evalGetKeys:                            # @evalGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	16(%rsi), %rax
	movq	8(%rax), %rdi
	callq	atoi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB57_2
# %bb.1:
	movl	%eax, %ebx
	addl	$-3, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jle	.LBB57_3
.LBB57_2:
	movl	$0, (%r14)
	xorl	%eax, %eax
	jmp	.LBB57_10
.LBB57_3:
	movslq	%ebx, %rdi
	shlq	$2, %rdi
	callq	zmalloc
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB57_5
# %bb.4:
	xorl	%esi, %esi
	jmp	.LBB57_7
.LBB57_5:
	subq	%rcx, %rdx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB57_6:                               # =>This Inner Loop Header: Depth=1
	leal	3(%rdi), %esi
	movl	%esi, (%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rdi), %rsi
	movl	%esi, 4(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	5(%rdi), %ebx
	movl	%ebx, 8(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	6(%rdi), %ebx
	movl	%ebx, 12(%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rdi
	cmpq	%rsi, %rdx
	jne	.LBB57_6
.LBB57_7:
	testq	%rcx, %rcx
	je	.LBB57_10
# %bb.8:                                # %.preheader
	leal	3(%rsi), %edx
	leaq	(%rax,%rsi,4), %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB57_9:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdi), %ebx
	movl	%ebx, (%rsi,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdi
	cmpq	%rdi, %rcx
	jne	.LBB57_9
.LBB57_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end57:
	.size	evalGetKeys, .Lfunc_end57-evalGetKeys
                                        # -- End function
	.globl	sortGetKeys             # -- Begin function sortGetKeys
	.p2align	4, 0x90
	.type	sortGetKeys,@function
sortGetKeys:                            # @sortGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%edx, %r13d
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	movl	$8, %edi
	callq	zmalloc
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$1, (%rax)
	xorps	%xmm0, %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	%xmm0, -128(%rbp)
	movaps	%xmm0, -112(%rbp)
	movaps	%xmm0, -96(%rbp)
	movq	$.L.str.37, -144(%rbp)
	movl	$2, -136(%rbp)
	movq	$.L.str.38, -128(%rbp)
	movl	$1, -120(%rbp)
	movq	$.L.str.39, -112(%rbp)
	movl	$1, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r13d
	jl	.LBB58_11
# %bb.1:
	movl	$2, %r15d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB58_5
	.p2align	4, 0x90
.LBB58_2:                               #   in Loop: Header=BB58_5 Depth=1
	addl	-8(%r12), %r15d
.LBB58_3:                               #   in Loop: Header=BB58_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB58_4:                               #   in Loop: Header=BB58_5 Depth=1
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r15d
	jge	.LBB58_11
.LBB58_5:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_7 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r15d, %rax
	leal	1(%rax), %r14d
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%rax,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.37, %esi
	leaq	-128(%rbp), %r12
	jmp	.LBB58_7
	.p2align	4, 0x90
.LBB58_6:                               #   in Loop: Header=BB58_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rsi
	addq	$16, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB58_4
.LBB58_7:                               #   Parent Loop BB58_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB58_2
# %bb.8:                                #   in Loop: Header=BB58_7 Depth=2
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB58_6
# %bb.9:                                #   in Loop: Header=BB58_7 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %r14d
	jge	.LBB58_6
# %bb.10:                               #   in Loop: Header=BB58_5 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r14d, 4(%rax)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB58_3
.LBB58_11:
	movl	-44(%rbp), %ecx         # 4-byte Reload
	addl	$1, %ecx
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%ecx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end58:
	.size	sortGetKeys, .Lfunc_end58-sortGetKeys
                                        # -- End function
	.globl	migrateGetKeys          # -- Begin function migrateGetKeys
	.p2align	4, 0x90
	.type	migrateGetKeys,@function
migrateGetKeys:                         # @migrateGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	cmpl	$7, %edx
	jl	.LBB59_14
# %bb.1:
	movl	%edx, %r15d
	movq	%rsi, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %r14
	movl	$7, %ebx
	jmp	.LBB59_2
.LBB59_10:                              #   in Loop: Header=BB59_2 Depth=1
	shrq	$3, %rax
	.p2align	4, 0x90
.LBB59_11:                              #   in Loop: Header=BB59_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_12
.LBB59_13:                              #   in Loop: Header=BB59_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	leaq	1(%rbx), %rbx
	jge	.LBB59_14
.LBB59_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r13,%rbx,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.41, %esi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB59_13
# %bb.3:                                #   in Loop: Header=BB59_2 Depth=1
	movq	24(%r13), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB59_9
# %bb.4:                                #   in Loop: Header=BB59_2 Depth=1
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI59_0(,%rdx,8)
.LBB59_5:                               #   in Loop: Header=BB59_2 Depth=1
	movzbl	-3(%rcx), %eax
	jmp	.LBB59_11
.LBB59_6:                               #   in Loop: Header=BB59_2 Depth=1
	movzwl	-5(%rcx), %eax
	jmp	.LBB59_11
.LBB59_7:                               #   in Loop: Header=BB59_2 Depth=1
	movl	-9(%rcx), %eax
	jmp	.LBB59_11
.LBB59_8:                               #   in Loop: Header=BB59_2 Depth=1
	movq	-17(%rcx), %rax
	jmp	.LBB59_11
.LBB59_14:
	movl	$3, %ebx
	jmp	.LBB59_15
.LBB59_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB59_12:
	subl	%ebx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r12d
.LBB59_15:
	movq	-48(%rbp), %r15         # 8-byte Reload
	movslq	%r12d, %r14
	leaq	(,%r14,4), %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB59_23
# %bb.16:
	movl	%r12d, %edx
	leaq	-1(%rdx), %rsi
	movl	%edx, %ecx
	andl	$3, %ecx
	cmpq	$3, %rsi
	jae	.LBB59_18
# %bb.17:
	xorl	%esi, %esi
	jmp	.LBB59_20
.LBB59_18:
	subq	%rcx, %rdx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB59_19:                              # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rsi), %edi
	movl	%edi, (%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rbx,%rsi), %edi
	addl	$1, %edi
	movl	%edi, 4(%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%rbx,%rsi), %edi
	movl	%edi, 8(%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rbx,%rsi), %edi
	addl	$3, %edi
	movl	%edi, 12(%rax,%rsi,4)
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rdx
	jne	.LBB59_19
.LBB59_20:
	testq	%rcx, %rcx
	je	.LBB59_23
# %bb.21:                               # %.preheader
	leaq	(%rax,%rsi,4), %rdx
	addq	%rsi, %rbx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB59_22:                              # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rsi), %edi
	movl	%edi, (%rdx,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB59_22
.LBB59_23:
	movl	%r12d, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end59:
	.size	migrateGetKeys, .Lfunc_end59-migrateGetKeys
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI59_0:
	.quad	.LBB59_10
	.quad	.LBB59_5
	.quad	.LBB59_6
	.quad	.LBB59_7
	.quad	.LBB59_8
                                        # -- End function
	.text
	.globl	georadiusGetKeys        # -- Begin function georadiusGetKeys
	.p2align	4, 0x90
	.type	georadiusGetKeys,@function
georadiusGetKeys:                       # @georadiusGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	cmpl	$6, %edx
	jl	.LBB60_7
# %bb.1:                                # %.preheader
	movl	%edx, %r12d
	movq	%rsi, %r15
	movl	$-1, %r13d
	movl	$5, %r14d
	jmp	.LBB60_2
	.p2align	4, 0x90
.LBB60_6:                               #   in Loop: Header=BB60_2 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %r14d
	jge	.LBB60_7
.LBB60_2:                               # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %rax
	movq	(%r15,%rax,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB60_4
# %bb.3:                                #   in Loop: Header=BB60_2 Depth=1
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB60_6
.LBB60_4:                               #   in Loop: Header=BB60_2 Depth=1
	leal	1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %eax
	jge	.LBB60_6
# %bb.5:                                #   in Loop: Header=BB60_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r13d
	movl	%eax, %r14d
	jmp	.LBB60_6
.LBB60_7:
	xorl	%eax, %eax
	cmpl	$-1, %r13d
	sete	%al
	movl	$2, %ebx
	subl	%eax, %ebx
	leal	(,%rbx,4), %edi
	callq	zmalloc
	movl	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	je	.LBB60_9
# %bb.8:
	movl	%r13d, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB60_9:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	%ebx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	georadiusGetKeys, .Lfunc_end60-georadiusGetKeys
                                        # -- End function
	.globl	xreadGetKeys            # -- Begin function xreadGetKeys
	.p2align	4, 0x90
	.type	xreadGetKeys,@function
xreadGetKeys:                           # @xreadGetKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jl	.LBB61_16
# %bb.1:                                # %.preheader1
	movl	%edx, %r15d
	movq	%rsi, %r12
	movl	$1, %r13d
	jmp	.LBB61_5
.LBB61_2:                               #   in Loop: Header=BB61_5 Depth=1
	movl	$2, %ecx
	.p2align	4, 0x90
.LBB61_3:                               #   in Loop: Header=BB61_5 Depth=1
	addl	%ecx, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB61_4:                               #   in Loop: Header=BB61_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %r13d
	jge	.LBB61_16
.LBB61_5:                               # =>This Inner Loop Header: Depth=1
	movslq	%r13d, %rax
	movq	(%r12,%rax,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB61_3
# %bb.6:                                #   in Loop: Header=BB61_5 Depth=1
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testl	%eax, %eax
	je	.LBB61_3
# %bb.7:                                #   in Loop: Header=BB61_5 Depth=1
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB61_2
# %bb.8:                                #   in Loop: Header=BB61_5 Depth=1
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB61_4
# %bb.9:
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	je	.LBB61_17
# %bb.10:
	testl	%eax, %eax
	jne	.LBB61_17
# %bb.11:
	movl	%r13d, %r12d
	notl	%r12d
	movl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%r15d, %eax
	je	.LBB61_18
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB61_18
# %bb.13:
	movl	%eax, %ebx
	shrl	$31, %ebx
	addl	%eax, %ebx
	sarl	%ebx
	movslq	%ebx, %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(,%rax,4), %rdi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r13), %esi
	movl	%r15d, %ecx
	subl	-48(%rbp), %ecx         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jge	.LBB61_19
# %bb.14:
	movslq	%esi, %rdx
	movl	%ebx, %edi
	notl	%edi
	addl	%r15d, %edi
	subl	%r13d, %edi
	leal	-2(%rcx), %r8d
	testb	$1, %dil
	jne	.LBB61_21
# %bb.15:
	movl	%r13d, %esi
	jmp	.LBB61_22
.LBB61_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_17:
	movl	$42, __A_VARIABLE(%rip)
.LBB61_18:
	xorl	%ebx, %ebx
	xorl	%eax, %eax
.LBB61_19:
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB61_21:
	movl	%esi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
.LBB61_22:
	cmpl	%r13d, %r8d
	je	.LBB61_19
# %bb.23:                               # %.preheader
	addl	$1, %r12d
.LBB61_24:                              # =>This Inner Loop Header: Depth=1
	subl	%r13d, %esi
	movslq	%esi, %rsi
	movl	%edx, (%rax,%rsi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%r12,%rdx), %esi
	movslq	%esi, %rdi
	leal	1(%rdx), %esi
	movl	%esi, (%rax,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %edx
	cmpl	%edx, %ecx
	jne	.LBB61_24
	jmp	.LBB61_19
.Lfunc_end61:
	.size	xreadGetKeys, .Lfunc_end61-xreadGetKeys
                                        # -- End function
	.globl	slotToKeyUpdateKey      # -- Begin function slotToKeyUpdateKey
	.p2align	4, 0x90
	.type	slotToKeyUpdateKey,@function
slotToKeyUpdateKey:                     # @slotToKeyUpdateKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB62_1
# %bb.2:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI62_0(,%rax,8)
.LBB62_3:
	shrq	$3, %rsi
	jmp	.LBB62_8
.LBB62_1:
	xorl	%esi, %esi
	jmp	.LBB62_8
.LBB62_4:
	movzbl	-3(%rdi), %esi
	jmp	.LBB62_8
.LBB62_5:
	movzwl	-5(%rdi), %esi
	jmp	.LBB62_8
.LBB62_6:
	movl	-9(%rdi), %esi
	jmp	.LBB62_8
.LBB62_7:
	movq	-17(%rdi), %rsi
.LBB62_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %r12d
	movq	8(%rbx), %rax
	movzbl	-1(%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	ja	.LBB62_9
# %bb.10:
	movl	%r13d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI62_1(,%rcx,8)
.LBB62_11:
	shrq	$3, %r13
	jmp	.LBB62_16
.LBB62_9:
	xorl	%r13d, %r13d
	jmp	.LBB62_16
.LBB62_12:
	movzbl	-3(%rax), %r13d
	jmp	.LBB62_16
.LBB62_13:
	movzwl	-5(%rax), %r13d
	jmp	.LBB62_16
.LBB62_14:
	movl	-9(%rax), %r13d
	jmp	.LBB62_16
.LBB62_15:
	movq	-17(%rax), %r13
.LBB62_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	%r14d, %r15d
	testl	%r14d, %r14d
	setne	%al
	movq	server+2944(%rip), %rcx
	movl	%r12d, %edx
	movq	393256(%rcx,%rdx,8), %rsi
	leaq	-1(%rsi,%rax,2), %rax
	movq	%rax, 393256(%rcx,%rdx,8)
	leaq	2(%r13), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$65, %r14
	jb	.LBB62_17
# %bb.18:
	movq	%r14, %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB62_19
.LBB62_17:
	leaq	-112(%rbp), %rbx
.LBB62_19:
	rolw	$8, %r12w
	movw	%r12w, (%rbx)
	leaq	2(%rbx), %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rsi
	movq	%r13, %rdx
	callq	memcpy
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	testl	%r15d, %r15d
	je	.LBB62_21
# %bb.20:
	xorl	%r8d, %r8d
	callq	raxInsert
	jmp	.LBB62_22
.LBB62_21:
	callq	raxRemove
.LBB62_22:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-112(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	je	.LBB62_24
# %bb.23:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB62_24:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	slotToKeyUpdateKey, .Lfunc_end62-slotToKeyUpdateKey
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI62_0:
	.quad	.LBB62_3
	.quad	.LBB62_4
	.quad	.LBB62_5
	.quad	.LBB62_6
	.quad	.LBB62_7
.LJTI62_1:
	.quad	.LBB62_11
	.quad	.LBB62_12
	.quad	.LBB62_13
	.quad	.LBB62_14
	.quad	.LBB62_15
                                        # -- End function
	.text
	.globl	getKeysInSlot           # -- Begin function getKeysInSlot
	.p2align	4, 0x90
	.type	getKeysInSlot,@function
getKeysInSlot:                          # @getKeysInSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$496, %rsp              # imm = 0x1F0
	rolw	$8, %di
	movl	%edx, %ebx
	movq	%rsi, %r14
	movw	%di, -34(%rbp)
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rsi
	leaq	-520(%rbp), %r15
	movq	%r15, %rdi
	callq	raxStart
	leaq	-34(%rbp), %rdx
	movl	$.L.str.47, %esi
	movl	$2, %ecx
	movq	%r15, %rdi
	callq	raxSeek
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB63_1
# %bb.2:
	movl	%ebx, %r12d
	xorl	%ebx, %ebx
	leaq	-520(%rbp), %r15
	.p2align	4, 0x90
.LBB63_3:                               # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	callq	raxNext
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB63_7
# %bb.4:                                #   in Loop: Header=BB63_3 Depth=1
	movq	-504(%rbp), %rdi
	movzbl	(%rdi), %eax
	cmpb	-34(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB63_7
# %bb.5:                                #   in Loop: Header=BB63_3 Depth=1
	movzbl	1(%rdi), %eax
	cmpb	-33(%rbp), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB63_7
# %bb.6:                                #   in Loop: Header=BB63_3 Depth=1
	addq	$2, %rdi
	movq	-488(%rbp), %rsi
	addq	$-2, %rsi
	callq	createStringObject
	movq	%rax, (%r14,%rbx,8)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r12d
	jne	.LBB63_3
	jmp	.LBB63_7
.LBB63_1:
	xorl	%ebx, %ebx
.LBB63_7:
	leaq	-520(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$496, %rsp              # imm = 0x1F0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end63:
	.size	getKeysInSlot, .Lfunc_end63-getKeysInSlot
                                        # -- End function
	.globl	delKeysInSlot           # -- Begin function delKeysInSlot
	.p2align	4, 0x90
	.type	delKeysInSlot,@function
delKeysInSlot:                          # @delKeysInSlot
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$488, %rsp              # imm = 0x1E8
	movl	%edi, %ebx
	movl	%ebx, %eax
	rolw	$8, %ax
	movw	%ax, -42(%rbp)
	movq	server+2944(%rip), %rax
	movq	524328(%rax), %rsi
	leaq	-528(%rbp), %rdi
	callq	raxStart
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	movl	%ebx, %r13d
	cmpq	$0, 393256(%rax,%r13,8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB64_1
# %bb.2:
	xorl	%r12d, %r12d
	leaq	-528(%rbp), %r14
	leaq	-42(%rbp), %r15
	.p2align	4, 0x90
.LBB64_3:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.47, %esi
	movl	$2, %ecx
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	raxSeek
	movq	%r14, %rdi
	callq	raxNext
	movq	-512(%rbp), %rdi
	movq	-496(%rbp), %rsi
	addq	$2, %rdi
	addq	$-2, %rsi
	callq	createStringObject
	movq	%rax, %rbx
	movq	server+48(%rip), %rdi
	movq	%rax, %rsi
	callq	dbDelete
	movq	%rbx, %rdi
	callq	decrRefCount
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2944(%rip), %rax
	cmpq	$0, 393256(%rax,%r13,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB64_3
	jmp	.LBB64_4
.LBB64_1:
	xorl	%r12d, %r12d
.LBB64_4:
	leaq	-528(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$488, %rsp              # imm = 0x1E8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end64:
	.size	delKeysInSlot, .Lfunc_end64-delKeysInSlot
                                        # -- End function
	.globl	countKeysInSlot         # -- Begin function countKeysInSlot
	.p2align	4, 0x90
	.type	countKeysInSlot,@function
countKeysInSlot:                        # @countKeysInSlot
# %bb.0:
	movq	server+2944(%rip), %rax
	movl	%edi, %ecx
	movl	393256(%rax,%rcx,8), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end65:
	.size	countKeysInSlot, .Lfunc_end65-countKeysInSlot
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"retval == DICT_OK"
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/db.c"
	.size	.L.str.1, 70

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"de != NULL"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"o->type == OBJ_STRING"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"async"
	.size	.L.str.4, 6

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"del"
	.size	.L.str.5, 4

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"invalid DB index"
	.size	.L.str.6, 17

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"SELECT is not allowed in cluster mode"
	.size	.L.str.7, 38

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"DB index is out of range"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"Type not handled in SCAN callback."
	.size	.L.str.9, 35

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"invalid cursor"
	.size	.L.str.10, 15

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"o == NULL || o->type == OBJ_SET || o->type == OBJ_HASH || o->type == OBJ_ZSET"
	.size	.L.str.11, 78

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"count"
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"match"
	.size	.L.str.13, 6

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"Not handled encoding in SCAN."
	.size	.L.str.14, 30

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"kobj->encoding == OBJ_ENCODING_INT"
	.size	.L.str.15, 35

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"none"
	.size	.L.str.16, 5

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"string"
	.size	.L.str.17, 7

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"list"
	.size	.L.str.18, 5

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"set"
	.size	.L.str.19, 4

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"zset"
	.size	.L.str.20, 5

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"hash"
	.size	.L.str.21, 5

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"stream"
	.size	.L.str.22, 7

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"unknown"
	.size	.L.str.23, 8

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"nosave"
	.size	.L.str.24, 7

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"save"
	.size	.L.str.25, 5

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Errors trying to SHUTDOWN. Check logs."
	.size	.L.str.26, 39

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"rename_from"
	.size	.L.str.27, 12

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"rename_to"
	.size	.L.str.28, 10

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"MOVE is not allowed in cluster mode"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"SWAPDB is not allowed in cluster mode"
	.size	.L.str.30, 38

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"invalid first DB index"
	.size	.L.str.31, 23

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"invalid second DB index"
	.size	.L.str.32, 24

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"dictFind(db->dict,key->ptr) != NULL"
	.size	.L.str.33, 36

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"kde != NULL"
	.size	.L.str.34, 12

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"expired"
	.size	.L.str.35, 8

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"Redis built-in command declared keys positions not matching the arity requirements."
	.size	.L.str.36, 84

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"limit"
	.size	.L.str.37, 6

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"get"
	.size	.L.str.38, 4

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"by"
	.size	.L.str.39, 3

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"store"
	.size	.L.str.40, 6

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"keys"
	.size	.L.str.41, 5

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"storedist"
	.size	.L.str.42, 10

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"block"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"group"
	.size	.L.str.44, 6

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"noack"
	.size	.L.str.45, 6

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"streams"
	.size	.L.str.46, 8

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	">="
	.size	.L.str.47, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
