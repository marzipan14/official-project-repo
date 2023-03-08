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
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	8(%rax), %r14
	testb	$1, %bl
	jne	.LBB1_7
# %bb.3:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	jne	.LBB1_7
# %bb.4:
	testb	$2, server+2712(%rip)
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
	jmp	.LBB1_7
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
	cmpl	$1, %eax
	jne	.LBB2_6
# %bb.1:
	movl	$server+1064, %ecx
	cmpq	$0, server+2464(%rip)
	je	.LBB2_9
# %bb.2:
	movq	server+552(%rip), %rax
	testq	%rax, %rax
	je	.LBB2_6
# %bb.3:
	cmpq	server+2480(%rip), %rax
	je	.LBB2_6
# %bb.4:
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB2_6
# %bb.5:
	testb	$2, 32(%rax)
	jne	.LBB2_9
.LBB2_6:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	lookupKey
	testq	%rax, %rax
	movl	$server+1064, %edx
	movl	$server+1056, %ecx
	cmoveq	%rdx, %rcx
	jmp	.LBB2_7
.LBB2_9:
	xorl	%eax, %eax
.LBB2_7:
	addq	$1, (%rcx)
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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	keyIsExpired
	testl	%eax, %eax
	je	.LBB3_1
# %bb.2:
	movl	$1, %ebx
	cmpq	$0, server+2464(%rip)
	jne	.LBB3_11
# %bb.3:
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
	je	.LBB3_5
# %bb.4:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	dbAsyncDelete
	movl	%eax, %ebx
	jmp	.LBB3_11
.LBB3_1:
	xorl	%ebx, %ebx
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_5:
	movq	8(%r15), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB3_7
# %bb.6:
	movq	8(%r14), %rsi
	callq	dictDelete
.LBB3_7:
	movq	(%r15), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB3_10
# %bb.8:
	movl	$1, %ebx
	cmpl	$0, server+2924(%rip)
	je	.LBB3_10
# %bb.9:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_11
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
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	expireIfNeeded
	cmpl	$1, %eax
	jne	.LBB4_6
# %bb.1:
	movl	$server+1064, %ecx
	cmpq	$0, server+2464(%rip)
	je	.LBB4_9
# %bb.2:
	movq	server+552(%rip), %rax
	testq	%rax, %rax
	je	.LBB4_6
# %bb.3:
	cmpq	server+2480(%rip), %rax
	je	.LBB4_6
# %bb.4:
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_6
# %bb.5:
	testb	$2, 32(%rax)
	jne	.LBB4_9
.LBB4_6:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	testq	%rax, %rax
	movl	$server+1064, %edx
	movl	$server+1056, %ecx
	cmoveq	%rdx, %rcx
	jmp	.LBB4_7
.LBB4_9:
	xorl	%eax, %eax
.LBB4_7:
	addq	$1, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
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
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	movq	16(%rdi), %rbx
	movq	%rbx, %rdi
	callq	expireIfNeeded
	cmpl	$1, %eax
	jne	.LBB6_6
# %bb.1:
	cmpq	$0, server+2464(%rip)
	je	.LBB6_8
# %bb.2:
	movq	server+552(%rip), %rax
	testq	%rax, %rax
	je	.LBB6_6
# %bb.3:
	cmpq	server+2480(%rip), %rax
	je	.LBB6_6
# %bb.4:
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_6
# %bb.5:
	testb	$2, 32(%rax)
	jne	.LBB6_8
.LBB6_6:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	testq	%rax, %rax
	je	.LBB6_8
# %bb.7:
	addq	$1, server+1056(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_9
.LBB6_8:
	addq	$1, server+1064(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReply
	xorl	%eax, %eax
.LBB6_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
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
	testq	%rax, %rax
	jne	.LBB7_2
# %bb.1:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	addReply
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
	testl	%eax, %eax
	jne	.LBB8_6
# %bb.1:
	movb	(%rbx), %al
	orb	$2, %al
	andb	$15, %al
	cmpb	$3, %al
	jne	.LBB8_3
# %bb.2:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	signalKeyAsReady
.LBB8_3:
	cmpl	$0, server+2924(%rip)
	je	.LBB8_5
# %bb.4:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB8_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_6:
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
	testq	%rax, %rax
	je	.LBB10_13
# %bb.1:
	movq	%rax, %rbx
	movq	8(%rax), %r14
	testb	$2, server+2712(%rip)
	je	.LBB10_3
# %bb.2:
	movl	$-256, %eax
	andl	(%r14), %eax
	movzbl	(%r12), %ecx
	orl	%eax, %ecx
	movl	%ecx, (%r12)
.LBB10_3:
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	16(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_5
# %bb.4:
	movq	8(%rcx), %rdi
	movq	%r12, %rsi
	callq	*%rax
	movq	%rax, 8(%rbx)
	cmpl	$0, server+3088(%rip)
	jne	.LBB10_7
	jmp	.LBB10_10
.LBB10_5:
	movq	%r12, 8(%rbx)
	cmpl	$0, server+3088(%rip)
	je	.LBB10_10
.LBB10_7:
	movq	%r14, %rdi
	callq	freeObjAsync
	movq	(%r15), %rax
	movq	(%rax), %rcx
	movq	16(%rcx), %rcx
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
	movq	(%r15), %rcx
	movq	(%rcx), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB10_12
# %bb.11:
	movq	8(%rcx), %rdi
	movq	%r14, %rsi
	callq	*%rax
.LBB10_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_13:
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
	movq	%r15, %rdi
	callq	incrRefCount
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictFind
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
	movq	72(%rdi), %rax
	addq	40(%rdi), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	8(%r14), %rax
	movq	72(%rax), %r13
	addq	40(%rax), %r13
	callq	dictGetRandomKey
	testq	%rax, %rax
	je	.LBB15_16
# %bb.1:                                # %.preheader
	movl	$100, %r12d
	.p2align	4, 0x90
.LBB15_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r15
	movzbl	-1(%r15), %esi
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
	movq	%r15, %rdi
	callq	createStringObject
	movq	%rax, %rbx
	movq	8(%r14), %rdi
	movq	%r15, %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB15_17
# %bb.11:                               #   in Loop: Header=BB15_2 Depth=1
	cmpq	%r13, -48(%rbp)         # 8-byte Folded Reload
	jne	.LBB15_14
# %bb.12:                               #   in Loop: Header=BB15_2 Depth=1
	cmpq	$0, server+2464(%rip)
	je	.LBB15_14
# %bb.13:                               #   in Loop: Header=BB15_2 Depth=1
	addl	$-1, %r12d
	je	.LBB15_17
.LBB15_14:                              #   in Loop: Header=BB15_2 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	expireIfNeeded
	testl	%eax, %eax
	je	.LBB15_17
# %bb.15:                               #   in Loop: Header=BB15_2 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	(%r14), %rdi
	callq	dictGetRandomKey
	testq	%rax, %rax
	jne	.LBB15_2
.LBB15_16:
	xorl	%ebx, %ebx
.LBB15_17:
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
	je	.LBB16_2
# %bb.1:
	movq	8(%r14), %rsi
	callq	dictDelete
.LBB16_2:
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB16_5
# %bb.3:
	movl	$1, %ebx
	cmpl	$0, server+2924(%rip)
	je	.LBB16_5
# %bb.4:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB16_5:
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
	je	.LBB18_4
# %bb.3:
	movq	8(%r14), %rsi
	callq	dictDelete
.LBB18_4:
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictDelete
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB18_7
# %bb.5:
	movl	$1, %ebx
	cmpl	$0, server+2924(%rip)
	je	.LBB18_7
# %bb.6:
	movq	%r14, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB18_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB18_8:
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
	testb	$15, %al
	jne	.LBB19_13
# %bb.1:
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	testb	$-16, %al
	jne	.LBB19_3
# %bb.2:
	cmpl	$1, 4(%rbx)
	je	.LBB19_12
.LBB19_3:
	movq	%rbx, %rdi
	callq	getDecodedObject
	movq	%rax, %r12
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
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
.LBB19_7:
	movzbl	-3(%rdi), %esi
	jmp	.LBB19_11
.LBB19_9:
	movl	-9(%rdi), %esi
	jmp	.LBB19_11
.LBB19_4:
	xorl	%esi, %esi
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	callq	createRawStringObject
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	decrRefCount
	movq	%r15, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	dbOverwrite
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
	cmpl	$-1, %edi
	jl	.LBB20_2
# %bb.1:
	movl	server+1792(%rip), %eax
	cmpl	%edi, %eax
	jle	.LBB20_2
# %bb.3:
	addl	$-1, %eax
	xorl	%r13d, %r13d
	cmpl	$-1, %edi
	movl	%edi, %ecx
	cmovel	%r13d, %ecx
	cmovnel	%edi, %eax
	cmpl	%eax, %ecx
	movl	%edi, -48(%rbp)         # 4-byte Spill
	jle	.LBB20_4
.LBB20_9:
	cmpl	$0, server+2924(%rip)
	movl	-48(%rbp), %ebx         # 4-byte Reload
	je	.LBB20_13
# %bb.10:
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	jne	.LBB20_11
# %bb.12:
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
.LBB20_13:
	cmpl	$-1, %ebx
	jne	.LBB20_15
	jmp	.LBB20_14
.LBB20_2:
	callq	__errno
	movl	$22, (%rax)
	movq	$-1, %r13
.LBB20_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_4:
	movq	%rdx, %r12
	movslq	%ecx, %rbx
	movslq	%eax, %r14
	leaq	-1(%rbx), %r15
	shlq	$6, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB20_5
	.p2align	4, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_5 Depth=1
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	dictEmpty
	movq	server+48(%rip), %rax
	movq	8(%rax,%rbx), %rdi
	movq	%r12, %rsi
	callq	dictEmpty
.LBB20_8:                               #   in Loop: Header=BB20_5 Depth=1
	addq	$1, %r15
	addq	$64, %rbx
	cmpq	%r14, %r15
	jge	.LBB20_9
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	movq	server+48(%rip), %rdi
	movq	(%rdi,%rbx), %rax
	addq	40(%rax), %r13
	addq	72(%rax), %r13
	testb	$1, -44(%rbp)           # 1-byte Folded Reload
	je	.LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	addq	%rbx, %rdi
	callq	emptyDbAsync
	jmp	.LBB20_8
.LBB20_11:
	callq	slotToKeyFlushAsync
	cmpl	$-1, %ebx
	jne	.LBB20_15
.LBB20_14:
	callq	flushSlaveKeysWithExpireList
	jmp	.LBB20_15
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
	movl	$-1, %eax
	testl	%esi, %esi
	js	.LBB22_3
# %bb.1:
	cmpl	%esi, server+1792(%rip)
	jle	.LBB22_3
# %bb.2:
	movslq	%esi, %rax
	shlq	$6, %rax
	addq	server+48(%rip), %rax
	movq	%rax, 16(%rdi)
	xorl	%eax, %eax
.LBB22_3:
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
	movl	$0, %eax
	jl	.LBB24_4
# %bb.1:
	movq	%rdi, %rbx
	jne	.LBB24_6
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
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
.LBB24_5:
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
	jl	.LBB25_4
# %bb.1:
	jne	.LBB25_6
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB25_3
.LBB25_6:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_5
.LBB25_3:
	movl	$1, %r14d
.LBB25_4:
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
	jl	.LBB26_4
# %bb.1:
	jne	.LBB26_10
# %bb.2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.4, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB26_3
.LBB26_10:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_9
.LBB26_3:
	movl	$1, %r14d
.LBB26_4:
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
	cmpl	$-1, %edi
	je	.LBB26_6
# %bb.5:
	movl	$10, %esi
	callq	kill
	movl	server+2096(%rip), %edi
	callq	rdbRemoveTempFile
.LBB26_6:
	cmpl	$0, server+2112(%rip)
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
.LBB26_8:
	addq	$1, %rbx
	movq	%rbx, server+2080(%rip)
.LBB26_9:
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
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpl	$2, 64(%rdi)
	jl	.LBB27_13
# %bb.1:
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$1, %r14d
	jmp	.LBB27_2
	.p2align	4, 0x90
.LBB27_12:                              #   in Loop: Header=BB27_2 Depth=1
	addq	$1, %r14
	movslq	64(%r13), %rax
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
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB27_4
# %bb.3:                                #   in Loop: Header=BB27_2 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	dbAsyncDelete
	movl	%eax, %r12d
	testl	%r12d, %r12d
	jne	.LBB27_11
	jmp	.LBB27_12
	.p2align	4, 0x90
.LBB27_4:                               #   in Loop: Header=BB27_2 Depth=1
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB27_6
# %bb.5:                                #   in Loop: Header=BB27_2 Depth=1
	movq	8(%r15), %rsi
	callq	dictDelete
.LBB27_6:                               #   in Loop: Header=BB27_2 Depth=1
	movq	(%rbx), %rdi
	movq	8(%r15), %rsi
	callq	dictDelete
	xorl	%r12d, %r12d
	testl	%eax, %eax
	jne	.LBB27_9
# %bb.7:                                #   in Loop: Header=BB27_2 Depth=1
	movl	$1, %r12d
	cmpl	$0, server+2924(%rip)
	je	.LBB27_9
# %bb.8:                                #   in Loop: Header=BB27_2 Depth=1
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB27_9:                               #   in Loop: Header=BB27_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB27_12
.LBB27_11:                              #   in Loop: Header=BB27_2 Depth=1
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	cmpl	$2, 64(%rdi)
	jl	.LBB30_12
# %bb.1:
	movl	$1, %ebx
	xorl	%r13d, %r13d
	jmp	.LBB30_4
	.p2align	4, 0x90
.LBB30_2:                               #   in Loop: Header=BB30_4 Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	testq	%rax, %rax
	movl	$server+1056, %ecx
	movl	$server+1064, %edx
	cmoveq	%rdx, %rcx
.LBB30_3:                               #   in Loop: Header=BB30_4 Depth=1
	addq	$1, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$1, %rax
	sbbq	$-1, %r13
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movslq	64(%r14), %rax
	cmpq	%rax, %rbx
	jge	.LBB30_13
.LBB30_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %r15
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	expireIfNeeded
	cmpl	$1, %eax
	jne	.LBB30_2
# %bb.5:                                #   in Loop: Header=BB30_4 Depth=1
	movl	$server+1064, %ecx
	cmpq	$0, server+2464(%rip)
	je	.LBB30_11
# %bb.6:                                #   in Loop: Header=BB30_4 Depth=1
	movq	server+552(%rip), %rax
	testq	%rax, %rax
	je	.LBB30_2
# %bb.7:                                #   in Loop: Header=BB30_4 Depth=1
	cmpq	server+2480(%rip), %rax
	je	.LBB30_2
# %bb.8:                                #   in Loop: Header=BB30_4 Depth=1
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB30_2
# %bb.9:                                #   in Loop: Header=BB30_4 Depth=1
	testb	$2, 32(%rax)
	je	.LBB30_2
.LBB30_11:                              #   in Loop: Header=BB30_4 Depth=1
	xorl	%eax, %eax
	jmp	.LBB30_3
.LBB30_12:
	xorl	%r13d, %r13d
.LBB30_13:
	movq	%r14, %rdi
	movq	%r13, %rsi
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
	testl	%eax, %eax
	jne	.LBB31_9
# %bb.1:
	cmpl	$0, server+2924(%rip)
	movq	-16(%rbp), %rax
	je	.LBB31_5
# %bb.2:
	testq	%rax, %rax
	je	.LBB31_5
# %bb.3:
	movl	$.L.str.7, %esi
	jmp	.LBB31_4
.LBB31_5:
	testl	%eax, %eax
	js	.LBB31_7
# %bb.6:
	cmpl	%eax, server+1792(%rip)
	jle	.LBB31_7
# %bb.8:
	cltq
	shlq	$6, %rax
	addq	server+48(%rip), %rax
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB31_9
.LBB31_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.8, %esi
.LBB31_4:
	movq	%rbx, %rdi
	callq	addReplyError
.LBB31_9:
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
	movq	%rdi, %r13
	movq	72(%rdi), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rbx
	movzbl	-1(%rbx), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_1
# %bb.2:
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_0(,%rax,8)
.LBB33_3:
	shrq	$3, %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	jmp	.LBB33_9
.LBB33_1:
	xorl	%eax, %eax
	jmp	.LBB33_8
.LBB33_4:
	movzbl	-3(%rbx), %eax
	jmp	.LBB33_8
.LBB33_5:
	movzwl	-5(%rbx), %eax
	jmp	.LBB33_8
.LBB33_6:
	movl	-9(%rbx), %eax
	jmp	.LBB33_8
.LBB33_7:
	movq	-17(%rbx), %rax
.LBB33_8:
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB33_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	16(%r13), %rax
	movq	(%rax), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r15
	cmpb	$42, (%rbx)
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	jne	.LBB33_10
# %bb.11:
	cmpb	$0, 1(%rbx)
	sete	%r12b
	jmp	.LBB33_12
.LBB33_10:
	xorl	%r12d, %r12d
.LBB33_12:
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB33_13
# %bb.14:                               # %.preheader
	xorl	%ecx, %ecx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB33_15
.LBB33_32:                              #   in Loop: Header=BB33_15 Depth=1
	movq	-17(%r14), %rsi
	.p2align	4, 0x90
.LBB33_33:                              #   in Loop: Header=BB33_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	createStringObject
	movq	%rax, %rbx
	movq	16(%r13), %rdi
	movq	%rax, %rsi
	callq	keyIsExpired
	testl	%eax, %eax
	je	.LBB33_34
.LBB33_35:                              #   in Loop: Header=BB33_15 Depth=1
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB33_36:                              #   in Loop: Header=BB33_15 Depth=1
	movq	%r15, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB33_37
.LBB33_15:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r14
	testb	%r12b, %r12b
	jne	.LBB33_25
# %bb.16:                               #   in Loop: Header=BB33_15 Depth=1
	movzbl	-1(%r14), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-48(%rbp), %rsi         # 8-byte Reload
	ja	.LBB33_17
# %bb.18:                               #   in Loop: Header=BB33_15 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_1(,%rax,8)
.LBB33_19:                              #   in Loop: Header=BB33_15 Depth=1
	shrq	$3, %rcx
	jmp	.LBB33_24
	.p2align	4, 0x90
.LBB33_34:                              #   in Loop: Header=BB33_15 Depth=1
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulk
	addq	$1, -56(%rbp)           # 8-byte Folded Spill
	jmp	.LBB33_35
.LBB33_20:                              #   in Loop: Header=BB33_15 Depth=1
	movzbl	-3(%r14), %ecx
	jmp	.LBB33_24
.LBB33_21:                              #   in Loop: Header=BB33_15 Depth=1
	movzwl	-5(%r14), %ecx
	jmp	.LBB33_24
.LBB33_22:                              #   in Loop: Header=BB33_15 Depth=1
	movl	-9(%r14), %ecx
	jmp	.LBB33_24
.LBB33_23:                              #   in Loop: Header=BB33_15 Depth=1
	movq	-17(%r14), %rcx
	jmp	.LBB33_24
.LBB33_17:                              #   in Loop: Header=BB33_15 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB33_24:                              #   in Loop: Header=BB33_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%r14, %rdx
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	testl	%eax, %eax
	je	.LBB33_36
.LBB33_25:                              #   in Loop: Header=BB33_15 Depth=1
	movzbl	-1(%r14), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB33_26
# %bb.27:                               #   in Loop: Header=BB33_15 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI33_2(,%rax,8)
.LBB33_28:                              #   in Loop: Header=BB33_15 Depth=1
	shrq	$3, %rsi
	jmp	.LBB33_33
.LBB33_29:                              #   in Loop: Header=BB33_15 Depth=1
	movzbl	-3(%r14), %esi
	jmp	.LBB33_33
.LBB33_30:                              #   in Loop: Header=BB33_15 Depth=1
	movzwl	-5(%r14), %esi
	jmp	.LBB33_33
.LBB33_31:                              #   in Loop: Header=BB33_15 Depth=1
	movl	-9(%r14), %esi
	jmp	.LBB33_33
.LBB33_26:                              #   in Loop: Header=BB33_15 Depth=1
	xorl	%esi, %esi
	jmp	.LBB33_33
.LBB33_13:
	xorl	%eax, %eax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB33_37:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
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
	.quad	.LBB33_19
	.quad	.LBB33_20
	.quad	.LBB33_21
	.quad	.LBB33_22
	.quad	.LBB33_23
.LJTI33_2:
	.quad	.LBB33_28
	.quad	.LBB33_29
	.quad	.LBB33_30
	.quad	.LBB33_31
	.quad	.LBB33_32
                                        # -- End function
	.text
	.globl	keyIsExpired            # -- Begin function keyIsExpired
	.p2align	4, 0x90
	.type	keyIsExpired,@function
keyIsExpired:                           # @keyIsExpired
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB34_4
# %bb.1:
	movq	%rsi, %r14
	movq	8(%rsi), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB34_4
# %bb.2:
	movq	%rax, %r15
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB34_3
# %bb.5:
	movq	8(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testq	%rbx, %rbx
	js	.LBB34_11
# %bb.6:
	cmpl	$0, server+860(%rip)
	jne	.LBB34_11
# %bb.7:
	cmpq	$0, server+3008(%rip)
	je	.LBB34_9
# %bb.8:
	movq	server+3040(%rip), %rcx
	jmp	.LBB34_10
.LBB34_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB34_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB34_9:
	callq	mstime
	movq	%rax, %rcx
.LBB34_10:
	xorl	%eax, %eax
	cmpq	%rbx, %rcx
	setg	%al
	jmp	.LBB34_11
.LBB34_3:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r14, %rsi
	movl	$1101, %r8d             # imm = 0x44D
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
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
	testq	%rax, %rax
	je	.LBB35_7
# %bb.1:
	movb	(%rax), %al
	andb	$15, %al
	cmpb	$4, %al
	je	.LBB35_13
# %bb.2:
	cmpb	$3, %al
	je	.LBB35_10
# %bb.3:
	cmpb	$2, %al
	jne	.LBB35_50
# %bb.4:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_27
# %bb.5:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_3(,%rax,8)
.LBB35_7:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_27
# %bb.8:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_4(,%rax,8)
.LBB35_9:
	shrq	$3, %rsi
	jmp	.LBB35_28
.LBB35_10:
	movq	(%rbx), %rdi
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_29
# %bb.11:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_0(,%rax,8)
.LBB35_12:
	shrq	$3, %rsi
	jmp	.LBB35_32
.LBB35_13:
	movq	(%rbx), %rdi
	movq	8(%rbx), %r14
	movzbl	-1(%rdi), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_36
# %bb.14:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_1(,%rax,8)
.LBB35_15:
	shrq	$3, %rsi
	jmp	.LBB35_37
.LBB35_16:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_28
.LBB35_17:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_28
.LBB35_19:
	movl	-9(%rdi), %esi
	jmp	.LBB35_28
.LBB35_18:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_28
.LBB35_27:
	xorl	%esi, %esi
.LBB35_28:
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%r15, %rdi
	movq	%rax, %rsi
	jmp	.LBB35_48
.LBB35_22:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_32
.LBB35_25:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_32
.LBB35_26:
	movq	-17(%rdi), %rsi
	jmp	.LBB35_37
.LBB35_29:
	xorl	%esi, %esi
	jmp	.LBB35_32
.LBB35_30:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_32
.LBB35_31:
	movl	-9(%rdi), %esi
.LBB35_32:
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %r12
	movq	8(%rbx), %rax
	fldl	(%rax)
	fstpt	(%rsp)
	xorl	%edi, %edi
	callq	createStringObjectFromLongDouble
	jmp	.LBB35_46
.LBB35_33:
	movzbl	-3(%rdi), %esi
	jmp	.LBB35_37
.LBB35_34:
	movzwl	-5(%rdi), %esi
	jmp	.LBB35_37
.LBB35_35:
	movl	-9(%rdi), %esi
	jmp	.LBB35_37
.LBB35_36:
	xorl	%esi, %esi
.LBB35_37:
	movl	$42, __A_VARIABLE(%rip)
	callq	createStringObject
	movq	%rax, %r12
	movzbl	-1(%r14), %esi
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB35_44
# %bb.38:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI35_2(,%rax,8)
.LBB35_39:
	shrq	$3, %rsi
	jmp	.LBB35_45
.LBB35_40:
	movq	-17(%r14), %rsi
	jmp	.LBB35_45
.LBB35_41:
	movzbl	-3(%r14), %esi
	jmp	.LBB35_45
.LBB35_42:
	movzwl	-5(%r14), %esi
	jmp	.LBB35_45
.LBB35_43:
	movl	-9(%r14), %esi
	jmp	.LBB35_45
.LBB35_44:
	xorl	%esi, %esi
.LBB35_45:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	createStringObject
.LBB35_46:
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	listAddNodeTail
	testq	%rbx, %rbx
	je	.LBB35_49
# %bb.47:
	movq	%r15, %rdi
	movq	%rbx, %rsi
.LBB35_48:
	callq	listAddNodeTail
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
	.quad	.LBB35_12
	.quad	.LBB35_30
	.quad	.LBB35_25
	.quad	.LBB35_31
	.quad	.LBB35_22
.LJTI35_1:
	.quad	.LBB35_15
	.quad	.LBB35_33
	.quad	.LBB35_34
	.quad	.LBB35_35
	.quad	.LBB35_26
.LJTI35_2:
	.quad	.LBB35_39
	.quad	.LBB35_41
	.quad	.LBB35_42
	.quad	.LBB35_43
	.quad	.LBB35_40
.LJTI35_3:
	.quad	.LBB35_9
	.quad	.LBB35_18
	.quad	.LBB35_17
	.quad	.LBB35_19
	.quad	.LBB35_16
.LJTI35_4:
	.quad	.LBB35_9
	.quad	.LBB35_18
	.quad	.LBB35_17
	.quad	.LBB35_19
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
	jne	.LBB36_3
# %bb.1:
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB36_3
# %bb.2:
	callq	__errno
	movq	%rax, %rcx
	xorl	%eax, %eax
	cmpl	$34, (%rcx)
	jne	.LBB36_4
.LBB36_3:
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	callq	addReplyError
	movl	$-1, %eax
.LBB36_4:
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
	subq	$120, %rsp
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	listCreate
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	$10, -80(%rbp)
	testq	%r14, %r14
	je	.LBB37_2
# %bb.1:
	movl	(%r14), %eax
	andl	$15, %eax
	addl	$-2, %eax
	cmpl	$3, %eax
	jae	.LBB37_85
.LBB37_2:
	movq	%r14, -104(%rbp)        # 8-byte Spill
	cmpq	$1, %r14
	movl	$3, %r13d
	sbbl	$0, %r13d
	movl	64(%rbx), %ecx
	cmpl	%r13d, %ecx
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jle	.LBB37_21
# %bb.3:
	movl	%r13d, %r14d
	negl	%r13d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movl	$10, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	jmp	.LBB37_7
.LBB37_4:                               #   in Loop: Header=BB37_7 Depth=1
	movq	-17(%rcx), %rdx
	.p2align	4, 0x90
.LBB37_5:                               #   in Loop: Header=BB37_7 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	cmpb	$42, (%rcx)
	setne	%al
	cmpl	$1, %edx
	setne	%cl
	orb	%al, %cl
	movzbl	%cl, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	-152(%rbp), %rcx        # 8-byte Reload
.LBB37_6:                               #   in Loop: Header=BB37_7 Depth=1
	addq	$2, %r14
	addl	$-2, %r13d
	cmpl	%r14d, %ecx
	jle	.LBB37_22
.LBB37_7:                               # =>This Inner Loop Header: Depth=1
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	leal	(%rcx,%r13), %r12d
	movq	72(%rbx), %r15
	movq	(%r15,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r12d
	jl	.LBB37_12
# %bb.8:                                #   in Loop: Header=BB37_7 Depth=1
	testl	%eax, %eax
	jne	.LBB37_12
# %bb.9:                                #   in Loop: Header=BB37_7 Depth=1
	movq	8(%r15,%r14,8), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-80(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB37_35
# %bb.10:                               #   in Loop: Header=BB37_7 Depth=1
	movq	-80(%rbp), %rax
	testq	%rax, %rax
	jle	.LBB37_34
# %bb.11:                               #   in Loop: Header=BB37_7 Depth=1
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	64(%rbx), %ecx
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB37_6
	.p2align	4, 0x90
.LBB37_12:                              #   in Loop: Header=BB37_7 Depth=1
	movl	$.L.str.13, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$2, %r12d
	jl	.LBB37_34
# %bb.13:                               #   in Loop: Header=BB37_7 Depth=1
	testl	%eax, %eax
	jne	.LBB37_34
# %bb.14:                               #   in Loop: Header=BB37_7 Depth=1
	movq	8(%r15,%r14,8), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	movq	-56(%rbp), %rbx         # 8-byte Reload
	ja	.LBB37_20
# %bb.15:                               #   in Loop: Header=BB37_7 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI37_0(,%rax,8)
.LBB37_16:                              #   in Loop: Header=BB37_7 Depth=1
	shrq	$3, %rdx
	jmp	.LBB37_5
.LBB37_17:                              #   in Loop: Header=BB37_7 Depth=1
	movzwl	-5(%rcx), %edx
	jmp	.LBB37_5
.LBB37_18:                              #   in Loop: Header=BB37_7 Depth=1
	movl	-9(%rcx), %edx
	jmp	.LBB37_5
.LBB37_19:                              #   in Loop: Header=BB37_7 Depth=1
	movzbl	-3(%rcx), %edx
	jmp	.LBB37_5
.LBB37_20:                              #   in Loop: Header=BB37_7 Depth=1
	xorl	%edx, %edx
	jmp	.LBB37_5
.LBB37_21:
	xorl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movl	$10, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	xorl	%edx, %edx
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB37_22:
	movq	-104(%rbp), %r13        # 8-byte Reload
	testq	%r13, %r13
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	je	.LBB37_27
# %bb.23:
	movl	(%r13), %eax
	cmpb	$115, %al
	je	.LBB37_37
# %bb.24:
	cmpb	$36, %al
	je	.LBB37_36
# %bb.25:
	cmpb	$34, %al
	jne	.LBB37_40
# %bb.26:
	movq	8(%r13), %r12
	jmp	.LBB37_28
.LBB37_27:
	movq	16(%rbx), %rax
	movq	(%rax), %r12
.LBB37_28:
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%r12, %r12
	je	.LBB37_39
.LBB37_29:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, -144(%rbp)
	movq	%r13, -136(%rbp)
	addq	%rax, %rax
	leaq	(%rax,%rax,4), %rbx
	negq	%rbx
	leaq	-144(%rbp), %r14
	movq	-72(%rbp), %rsi         # 8-byte Reload
	.p2align	4, 0x90
.LBB37_30:                              # =>This Inner Loop Header: Depth=1
	movl	$scanCallback, %edx
	movq	%r12, %rdi
	xorl	%ecx, %ecx
	movq	%r14, %r8
	callq	dictScan
	movq	%rax, %rsi
	testq	%rbx, %rbx
	je	.LBB37_33
# %bb.31:                               #   in Loop: Header=BB37_30 Depth=1
	testq	%rsi, %rsi
	je	.LBB37_33
# %bb.32:                               #   in Loop: Header=BB37_30 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	40(%rax), %rax
	addq	$1, %rbx
	cmpq	-80(%rbp), %rax
	jb	.LBB37_30
.LBB37_33:
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	jmp	.LBB37_52
.LBB37_34:
	movq	shared+128(%rip), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	addReply
	jmp	.LBB37_35
.LBB37_36:
	movq	8(%r13), %r12
	jmp	.LBB37_38
.LBB37_37:
	movq	8(%r13), %rax
	movq	(%rax), %r12
.LBB37_38:
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%rax, %rax
	movq	%rax, -80(%rbp)
	testq	%r12, %r12
	jne	.LBB37_29
.LBB37_39:
	movl	(%r13), %eax
.LBB37_40:
	andb	$15, %al
	leal	-3(%rax), %ecx
	cmpb	$2, %cl
	jae	.LBB37_47
# %bb.41:
	movq	8(%r13), %rdi
	xorl	%esi, %esi
	callq	ziplistIndex
	testq	%rax, %rax
	je	.LBB37_51
# %bb.42:                               # %.preheader4
	movq	%rax, %rbx
	leaq	-144(%rbp), %r14
	leaq	-116(%rbp), %r12
	leaq	-160(%rbp), %r13
	jmp	.LBB37_45
	.p2align	4, 0x90
.LBB37_43:                              #   in Loop: Header=BB37_45 Depth=1
	movq	-160(%rbp), %rdi
	callq	createStringObjectFromLongLong
.LBB37_44:                              #   in Loop: Header=BB37_45 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	listAddNodeTail
	movq	-104(%rbp), %rax        # 8-byte Reload
	movq	8(%rax), %rdi
	movq	%rbx, %rsi
	callq	ziplistNext
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB37_51
.LBB37_45:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	movq	%r13, %rcx
	callq	ziplistGet
	movq	-144(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB37_43
# %bb.46:                               #   in Loop: Header=BB37_45 Depth=1
	movl	-116(%rbp), %esi
	callq	createStringObject
	jmp	.LBB37_44
.LBB37_47:
	cmpb	$2, %al
	jne	.LBB37_86
# %bb.48:
	movq	8(%r13), %rdi
	leaq	-144(%rbp), %rdx
	xorl	%esi, %esi
	callq	intsetGet
	testb	%al, %al
	je	.LBB37_51
# %bb.49:                               # %.preheader2
	movl	$1, %ebx
	leaq	-144(%rbp), %r14
	.p2align	4, 0x90
.LBB37_50:                              # =>This Inner Loop Header: Depth=1
	movq	-144(%rbp), %rdi
	callq	createStringObjectFromLongLong
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, %rsi
	callq	listAddNodeTail
	movq	8(%r13), %rdi
	movl	%ebx, %esi
	movq	%r14, %rdx
	callq	intsetGet
	addl	$1, %ebx
	testb	%al, %al
	jne	.LBB37_50
.LBB37_51:
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
.LBB37_52:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r13
	jmp	.LBB37_54
	.p2align	4, 0x90
.LBB37_53:                              #   in Loop: Header=BB37_54 Depth=1
	movq	%r15, %r13
.LBB37_54:                              # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB37_81
# %bb.55:                               #   in Loop: Header=BB37_54 Depth=1
	movq	8(%r13), %r15
	movq	16(%r13), %r12
	cmpl	$0, -112(%rbp)          # 4-byte Folded Reload
	je	.LBB37_60
# %bb.56:                               #   in Loop: Header=BB37_54 Depth=1
	movl	(%r12), %eax
	movl	%eax, %ecx
	shrb	$4, %cl
	orb	$8, %cl
	cmpb	$8, %cl
	jne	.LBB37_61
# %bb.57:                               #   in Loop: Header=BB37_54 Depth=1
	movq	8(%r12), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB37_67
# %bb.58:                               #   in Loop: Header=BB37_54 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI37_1(,%rax,8)
.LBB37_59:                              #   in Loop: Header=BB37_54 Depth=1
	shrq	$3, %rcx
	jmp	.LBB37_68
	.p2align	4, 0x90
.LBB37_60:                              #   in Loop: Header=BB37_54 Depth=1
	xorl	%eax, %eax
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	je	.LBB37_70
	jmp	.LBB37_73
.LBB37_61:                              #   in Loop: Header=BB37_54 Depth=1
	andl	$240, %eax
	cmpl	$16, %eax
	jne	.LBB37_83
# %bb.62:                               #   in Loop: Header=BB37_54 Depth=1
	movq	8(%r12), %rdx
	movl	$21, %esi
	leaq	-144(%rbp), %rbx
	movq	%rbx, %rdi
	callq	ll2string
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
	movq	%rbx, %rdx
	movl	%eax, %ecx
	jmp	.LBB37_69
.LBB37_63:                              #   in Loop: Header=BB37_54 Depth=1
	movq	-17(%rdx), %rcx
	jmp	.LBB37_68
.LBB37_64:                              #   in Loop: Header=BB37_54 Depth=1
	movzwl	-5(%rdx), %ecx
	jmp	.LBB37_68
.LBB37_65:                              #   in Loop: Header=BB37_54 Depth=1
	movl	-9(%rdx), %ecx
	jmp	.LBB37_68
.LBB37_66:                              #   in Loop: Header=BB37_54 Depth=1
	movzbl	-3(%rdx), %ecx
	jmp	.LBB37_68
.LBB37_67:                              #   in Loop: Header=BB37_54 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB37_68:                              #   in Loop: Header=BB37_54 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-88(%rbp), %rdi         # 8-byte Reload
	movq	-96(%rbp), %rsi         # 8-byte Reload
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $ecx killed $ecx killed $rcx
.LBB37_69:                              #   in Loop: Header=BB37_54 Depth=1
	xorl	%r8d, %r8d
	callq	stringmatchlen
	testl	%eax, %eax
	sete	%al
	cmpq	$0, -104(%rbp)          # 8-byte Folded Reload
	jne	.LBB37_73
.LBB37_70:                              #   in Loop: Header=BB37_54 Depth=1
	testb	%al, %al
	jne	.LBB37_73
# %bb.71:                               #   in Loop: Header=BB37_54 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	callq	expireIfNeeded
	testl	%eax, %eax
	je	.LBB37_75
.LBB37_74:                              #   in Loop: Header=BB37_54 Depth=1
	movq	%r12, %rdi
	callq	decrRefCount
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	listDelNode
	movb	$1, %al
	jmp	.LBB37_76
	.p2align	4, 0x90
.LBB37_73:                              #   in Loop: Header=BB37_54 Depth=1
	testb	%al, %al
	jne	.LBB37_74
.LBB37_75:                              #   in Loop: Header=BB37_54 Depth=1
	xorl	%eax, %eax
.LBB37_76:                              #   in Loop: Header=BB37_54 Depth=1
	movq	-104(%rbp), %rcx        # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB37_53
# %bb.77:                               #   in Loop: Header=BB37_54 Depth=1
	movl	(%rcx), %ecx
	andl	$15, %ecx
	addl	$-3, %ecx
	cmpl	$1, %ecx
	ja	.LBB37_80
# %bb.78:                               #   in Loop: Header=BB37_54 Depth=1
	movq	8(%r15), %r13
	testb	%al, %al
	je	.LBB37_54
# %bb.79:                               #   in Loop: Header=BB37_54 Depth=1
	movq	16(%r15), %rdi
	callq	decrRefCount
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	listDelNode
	jmp	.LBB37_54
	.p2align	4, 0x90
.LBB37_80:                              #   in Loop: Header=BB37_54 Depth=1
	movq	%r15, %r13
	jmp	.LBB37_54
.LBB37_81:
	movl	$2, %esi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	%r12, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	addReplyBulkLongLong
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	40(%rbx), %rsi
	movq	%r12, %rdi
	callq	addReplyMultiBulkLen
	movq	(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB37_35
	.p2align	4, 0x90
.LBB37_82:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rbx), %r14
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	%r14, %rdi
	callq	decrRefCount
	movq	-48(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	listDelNode
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	jne	.LBB37_82
.LBB37_35:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	$decrRefCountVoid, 24(%rdi)
	callq	listRelease
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_83:
	movl	$.L.str.15, %edi
	movl	$.L.str.1, %esi
	movl	$754, %edx              # imm = 0x2F2
.LBB37_84:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB37_85:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$636, %edx              # imm = 0x27C
	jmp	.LBB37_84
.LBB37_86:
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
	.quad	.LBB37_16
	.quad	.LBB37_19
	.quad	.LBB37_17
	.quad	.LBB37_18
	.quad	.LBB37_4
.LJTI37_1:
	.quad	.LBB37_59
	.quad	.LBB37_66
	.quad	.LBB37_64
	.quad	.LBB37_65
	.quad	.LBB37_63
                                        # -- End function
	.text
	.globl	scanCommand             # -- Begin function scanCommand
	.p2align	4, 0x90
	.type	scanCommand,@function
scanCommand:                            # @scanCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	callq	__errno
	movl	$0, (%rax)
	movq	8(%rbx), %rdi
	leaq	-32(%rbp), %rsi
	movl	$10, %edx
	callq	strtoul
	movq	%rax, %r14
	callq	__locale_ctype_ptr
	movq	8(%rbx), %rcx
	movsbq	(%rcx), %rcx
	testb	$8, 1(%rax,%rcx)
	jne	.LBB38_3
# %bb.1:
	movq	-32(%rbp), %rax
	cmpb	$0, (%rax)
	jne	.LBB38_3
# %bb.2:
	callq	__errno
	cmpl	$34, (%rax)
	jne	.LBB38_4
.LBB38_3:
	movl	$.L.str.10, %esi
	movq	%r15, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
.LBB38_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB38_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	xorl	%esi, %esi
	movq	%r14, %rdx
	callq	scanGenericCommand
	jmp	.LBB38_5
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
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	movq	16(%rdi), %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	expireIfNeeded
	cmpl	$1, %eax
	jne	.LBB41_6
# %bb.1:
	cmpq	$0, server+2464(%rip)
	je	.LBB41_9
# %bb.2:
	movq	server+552(%rip), %rax
	testq	%rax, %rax
	je	.LBB41_6
# %bb.3:
	cmpq	server+2480(%rip), %rax
	je	.LBB41_6
# %bb.4:
	movq	80(%rax), %rax
	testq	%rax, %rax
	je	.LBB41_6
# %bb.5:
	testb	$2, 32(%rax)
	jne	.LBB41_9
.LBB41_6:
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB41_7
# %bb.8:
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB41_9
# %bb.10:
	addq	$1, server+1056(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andb	$15, %dl
	cmpb	$6, %dl
	ja	.LBB41_18
# %bb.11:
	movl	$.L.str.17, %esi
	andl	$15, %ecx
	jmpq	*.LJTI41_0(,%rcx,8)
.LBB41_12:
	movl	$.L.str.18, %esi
	jmp	.LBB41_19
.LBB41_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB41_9:
	addq	$1, server+1064(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.16, %esi
.LBB41_19:
	movq	%r14, %rdi
	callq	addReplyStatus
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB41_18:
	movl	$.L.str.23, %esi
	jmp	.LBB41_19
.LBB41_13:
	movl	$.L.str.19, %esi
	jmp	.LBB41_19
.LBB41_14:
	movl	$.L.str.20, %esi
	jmp	.LBB41_19
.LBB41_15:
	movl	$.L.str.21, %esi
	jmp	.LBB41_19
.LBB41_17:
	movq	8(%rax), %rax
	movq	(%rax), %rsi
	addq	$84, %rsi
	jmp	.LBB41_19
.LBB41_16:
	movl	$.L.str.22, %esi
	jmp	.LBB41_19
.Lfunc_end41:
	.size	typeCommand, .Lfunc_end41-typeCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI41_0:
	.quad	.LBB41_19
	.quad	.LBB41_12
	.quad	.LBB41_13
	.quad	.LBB41_14
	.quad	.LBB41_15
	.quad	.LBB41_17
	.quad	.LBB41_16
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
	movl	64(%rdi), %ecx
	cmpl	$3, %ecx
	jl	.LBB42_2
.LBB42_1:
	movq	shared+128(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB42_9
.LBB42_2:
	xorl	%eax, %eax
	cmpl	$2, %ecx
	jne	.LBB42_7
# %bb.3:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r14
	movl	$.L.str.24, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB42_4
# %bb.5:
	movl	$.L.str.25, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB42_1
# %bb.6:
	movl	$1, %eax
	jmp	.LBB42_7
.LBB42_4:
	movl	$2, %eax
.LBB42_7:
	movl	server+164(%rip), %ecx
	orl	server+860(%rip), %ecx
	movl	$2, %edi
	cmovel	%eax, %edi
	xorl	%eax, %eax
	callq	prepareForShutdown
	testl	%eax, %eax
	je	.LBB42_10
# %bb.8:
	movl	$.L.str.26, %esi
	movq	%rbx, %rdi
	callq	addReplyError
.LBB42_9:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB42_10:
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
	subq	$24, %rsp
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	8(%rax), %rcx
	movq	16(%rax), %rax
	movq	8(%rcx), %rdi
	movq	8(%rax), %rsi
	callq	sdscmp
	movl	%eax, %r13d
	movq	16(%r14), %r15
	movq	72(%r14), %rax
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
	testq	%rax, %rax
	je	.LBB43_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB43_3
# %bb.4:
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	incrRefCount
	movq	16(%r14), %r12
	movq	8(%r12), %rdi
	movq	40(%rdi), %rax
	movq	$-1, -56(%rbp)          # 8-byte Folded Spill
	addq	72(%rdi), %rax
	je	.LBB43_8
# %bb.5:
	movq	72(%r14), %rax
	movq	8(%rax), %r13
	movq	8(%r13), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB43_8
# %bb.6:
	movq	%rax, %rbx
	movq	(%r12), %rdi
	movq	8(%r13), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB43_34
# %bb.7:
	movq	8(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
.LBB43_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %r13
	movq	72(%r14), %rax
	movq	16(%rax), %rbx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	expireIfNeeded
	movq	%r13, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	lookupKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movl	-44(%rbp), %r12d        # 4-byte Reload
	je	.LBB43_20
# %bb.9:
	testl	%r12d, %r12d
	je	.LBB43_11
# %bb.10:
	movq	%r15, %rdi
	callq	decrRefCount
	movq	shared+32(%rip), %rsi
	jmp	.LBB43_32
.LBB43_1:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB43_33
.LBB43_3:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movl	$shared+8, %eax
	movl	$shared+32, %ecx
	jmp	.LBB43_31
.LBB43_11:
	movq	16(%r14), %rbx
	movq	72(%r14), %rax
	movq	16(%rax), %r13
	cmpl	$0, server+3088(%rip)
	je	.LBB43_13
# %bb.12:
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	dbAsyncDelete
	jmp	.LBB43_19
.LBB43_13:
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB43_15
# %bb.14:
	movq	8(%r13), %rsi
	callq	dictDelete
.LBB43_15:
	movq	(%rbx), %rdi
	movq	8(%r13), %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB43_18
# %bb.16:
	cmpl	$0, server+2924(%rip)
	je	.LBB43_18
# %bb.17:
	movq	%r13, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB43_18:
	movl	$42, __A_VARIABLE(%rip)
.LBB43_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB43_20:
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
	movq	-56(%rbp), %rcx         # 8-byte Reload
	cmpq	$-1, %rcx
	je	.LBB43_22
# %bb.21:
	movq	16(%r14), %rsi
	movq	72(%r14), %rax
	movq	16(%rax), %rdx
	movq	%r14, %rdi
	callq	setExpire
.LBB43_22:
	movq	16(%r14), %rbx
	movq	72(%r14), %rax
	movq	8(%rax), %r15
	cmpl	$0, server+3088(%rip)
	je	.LBB43_24
# %bb.23:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	dbAsyncDelete
	jmp	.LBB43_30
.LBB43_24:
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB43_26
# %bb.25:
	movq	8(%r15), %rsi
	callq	dictDelete
.LBB43_26:
	movq	(%rbx), %rdi
	movq	8(%r15), %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB43_29
# %bb.27:
	cmpl	$0, server+2924(%rip)
	je	.LBB43_29
# %bb.28:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB43_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB43_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	callq	touchWatchedKey
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.27, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	16(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.28, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	testl	%r12d, %r12d
	movl	$shared+8, %eax
	movl	$shared+40, %ecx
.LBB43_31:
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
.LBB43_32:
	movq	%r14, %rdi
	callq	addReply
.LBB43_33:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB43_34:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r13, %rsi
	movl	$1101, %r8d             # imm = 0x44D
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
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
	je	.LBB44_4
# %bb.1:
	movq	%rsi, %r14
	movq	8(%rsi), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB44_4
# %bb.2:
	movq	%rax, %r12
	movq	(%rbx), %rdi
	movq	8(%r14), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB44_5
# %bb.3:
	movq	8(%r12), %r15
.LBB44_4:
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
	testq	%rax, %rax
	je	.LBB45_7
# %bb.1:
	movq	8(%rbx), %rdi
	movq	(%rax), %rsi
	callq	dictAddOrFind
	movq	%r12, 8(%rax)
	testq	%r15, %r15
	je	.LBB45_6
# %bb.2:
	cmpq	$0, server+2464(%rip)
	je	.LBB45_6
# %bb.3:
	cmpl	$0, server+2556(%rip)
	jne	.LBB45_6
# %bb.4:
	testb	$2, 160(%r15)
	jne	.LBB45_6
# %bb.5:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	rememberSlaveKeyWithExpire
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
	je	.LBB48_2
# %bb.1:
	movl	$.L.str.29, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB48_32
.LBB48_2:
	movq	16(%rbx), %r14
	movq	72(%rbx), %rax
	movslq	40(%r14), %r13
	movq	16(%rax), %rdi
	leaq	-64(%rbp), %rsi
	callq	getLongLongFromObject
	cmpl	$-1, %eax
	je	.LBB48_7
# %bb.3:
	movq	-64(%rbp), %rcx
	movq	%rcx, %rax
	subq	$-2147483648, %rax      # imm = 0x80000000
	shrq	$32, %rax
	jne	.LBB48_7
# %bb.4:
	testl	%ecx, %ecx
	js	.LBB48_6
# %bb.5:
	cmpl	%ecx, server+1792(%rip)
	jle	.LBB48_6
# %bb.8:
	movq	server+48(%rip), %rax
	movslq	%ecx, %r15
	shlq	$6, %r15
	addq	%rax, %r15
	movq	%r15, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r12
	testl	%r13d, %r13d
	js	.LBB48_11
# %bb.9:
	movq	%r15, %r12
	cmpl	%r13d, server+1792(%rip)
	jle	.LBB48_11
# %bb.10:
	shlq	$6, %r13
	addq	%r13, %rax
	movq	%rax, 16(%rbx)
	movq	%rax, %r12
.LBB48_11:
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
	testq	%rax, %rax
	je	.LBB48_14
# %bb.15:
	movq	%rax, %r12
	movq	16(%rbx), %r13
	movq	8(%r13), %rdi
	movq	40(%rdi), %rax
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
	addq	72(%rdi), %rax
	je	.LBB48_19
# %bb.16:
	movq	72(%rbx), %rax
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	8(%rax), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB48_19
# %bb.17:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%r13), %rdi
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	8(%r13), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB48_33
# %bb.18:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB48_19:
	movl	$42, __A_VARIABLE(%rip)
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
	testq	%rax, %rax
	je	.LBB48_20
.LBB48_14:
	movq	shared+32(%rip), %rsi
	jmp	.LBB48_31
.LBB48_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB48_7:
	movq	shared+144(%rip), %rsi
.LBB48_31:
	movq	%rbx, %rdi
	callq	addReply
.LBB48_32:
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
	jmp	.LBB48_31
.LBB48_20:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	dbAdd
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	$-1, %rcx
	je	.LBB48_22
# %bb.21:
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	setExpire
.LBB48_22:
	movq	%r12, %rdi
	callq	incrRefCount
	movq	72(%rbx), %rax
	movq	8(%rax), %r15
	cmpl	$0, server+3088(%rip)
	je	.LBB48_24
# %bb.23:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	dbAsyncDelete
	jmp	.LBB48_30
.LBB48_24:
	movq	8(%r14), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB48_26
# %bb.25:
	movq	8(%r15), %rsi
	callq	dictDelete
.LBB48_26:
	movq	(%r14), %rdi
	movq	8(%r15), %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB48_29
# %bb.27:
	cmpl	$0, server+2924(%rip)
	je	.LBB48_29
# %bb.28:
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB48_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB48_30:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, server+2080(%rip)
	movq	shared+40(%rip), %rsi
	jmp	.LBB48_31
.LBB48_33:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movq	%r13, %rsi
	movl	$1101, %r8d             # imm = 0x44D
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
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
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movq	16(%rdi), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB49_9
# %bb.1:
	movl	$74, %r12d
	jmp	.LBB49_2
	.p2align	4, 0x90
.LBB49_3:                               #   in Loop: Header=BB49_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB49_8:                               #   in Loop: Header=BB49_2 Depth=1
	movq	%r14, %rdi
	callq	dictNext
	testq	%rax, %rax
	je	.LBB49_9
.LBB49_2:                               # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rbx
	movq	(%r15), %rdi
	movq	8(%rbx), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB49_3
# %bb.4:                                #   in Loop: Header=BB49_2 Depth=1
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB49_8
# %bb.5:                                #   in Loop: Header=BB49_2 Depth=1
	movzbl	(%rax), %eax
	andb	$15, %al
	cmpb	$6, %al
	ja	.LBB49_8
# %bb.6:                                #   in Loop: Header=BB49_2 Depth=1
	movzbl	%al, %eax
	btl	%eax, %r12d
	jae	.LBB49_8
# %bb.7:                                #   in Loop: Header=BB49_2 Depth=1
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	signalKeyAsReady
	jmp	.LBB49_8
.LBB49_9:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
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
	movl	$-1, %ebx
	testl	%edi, %edi
	js	.LBB50_6
# %bb.1:
	movl	server+1792(%rip), %eax
	cmpl	%esi, %eax
	jle	.LBB50_6
# %bb.2:
	testl	%esi, %esi
	js	.LBB50_6
# %bb.3:
	cmpl	%edi, %eax
	jle	.LBB50_6
# %bb.4:
	xorl	%ebx, %ebx
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
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	cmpl	$0, server+2924(%rip)
	je	.LBB51_3
# %bb.1:
	movl	$.L.str.30, %esi
.LBB51_2:
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB51_12
.LBB51_3:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movl	$.L.str.31, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB51_12
# %bb.4:
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	leaq	-24(%rbp), %rdx
	movl	$.L.str.32, %ecx
	movq	%rbx, %rdi
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	je	.LBB51_5
.LBB51_12:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB51_5:
	movq	-32(%rbp), %rcx
	testl	%ecx, %ecx
	js	.LBB51_13
# %bb.6:
	movq	-24(%rbp), %rax
	movl	server+1792(%rip), %edx
	cmpl	%eax, %edx
	jle	.LBB51_13
# %bb.7:
	testl	%eax, %eax
	js	.LBB51_13
# %bb.8:
	cmpl	%ecx, %edx
	jle	.LBB51_13
# %bb.9:
	cmpl	%eax, %ecx
	je	.LBB51_11
# %bb.10:
	movq	server+48(%rip), %rdx
	movslq	%ecx, %rcx
	shlq	$6, %rcx
	leaq	(%rdx,%rcx), %rdi
	movups	(%rdx,%rcx), %xmm0
	movq	48(%rdx,%rcx), %r8
	cltq
	shlq	$6, %rax
	leaq	(%rdx,%rax), %r14
	movups	(%rdx,%rax), %xmm1
	movups	%xmm1, (%rdx,%rcx)
	movq	48(%rdx,%rax), %rsi
	movq	%rsi, 48(%rdx,%rcx)
	movups	%xmm0, (%rdx,%rax)
	movq	%r8, 48(%rdx,%rax)
	callq	scanDatabaseForReadyLists
	movq	%r14, %rdi
	callq	scanDatabaseForReadyLists
.LBB51_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, server+2080(%rip)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB51_12
.LBB51_13:
	movl	$42, __A_VARIABLE(%rip)
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
	je	.LBB52_1
# %bb.2:
	movq	server+896(%rip), %rdi
	movl	40(%r14), %esi
	addq	$40, %r14
	leaq	-32(%rbp), %rdx
	movl	$2, %ecx
	callq	feedAppendOnlyFile
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
	testl	%eax, %eax
	je	.LBB53_9
# %bb.1:
	movl	%edx, %r15d
	movq	%rdi, %r12
	movl	52(%rdi), %ecx
	movl	%ecx, %r13d
	sarl	$31, %r13d
	andl	%edx, %r13d
	addl	%ecx, %r13d
	movl	%r13d, %ecx
	subl	%eax, %ecx
	addl	$1, %ecx
	movslq	%ecx, %rdi
	shlq	$2, %rdi
	callq	zmalloc
	movl	48(%r12), %ecx
	cmpl	%r13d, %ecx
	jg	.LBB53_10
# %bb.2:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB53_3:                               # =>This Inner Loop Header: Depth=1
	cmpl	%r15d, %ecx
	jge	.LBB53_6
# %bb.4:                                #   in Loop: Header=BB53_3 Depth=1
	movl	%ecx, (%rax,%rbx,4)
	addq	$1, %rbx
	addl	56(%r12), %ecx
	cmpl	%r13d, %ecx
	jle	.LBB53_3
	jmp	.LBB53_10
.LBB53_6:
	testb	$8, 32(%r12)
	jne	.LBB53_8
# %bb.7:
	cmpl	$0, 16(%r12)
	jns	.LBB53_11
.LBB53_8:
	movq	%rax, %rdi
	callq	zfree
	xorl	%ebx, %ebx
.LBB53_9:
	xorl	%eax, %eax
.LBB53_10:
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB53_11:
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
	testl	$16384, %eax            # imm = 0x4000
	jne	.LBB54_1
# %bb.2:
	testb	$8, %al
	jne	.LBB54_5
# %bb.3:
	movq	40(%rdi), %rax
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function zunionInterGetKeys
.LCPI56_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI56_1:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI56_2:
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
.LCPI56_3:
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
.LCPI56_4:
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	15                      # 0xf
.LCPI56_5:
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	19                      # 0x13
.LCPI56_6:
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
.LCPI56_7:
	.long	27                      # 0x1b
	.long	27                      # 0x1b
	.long	27                      # 0x1b
	.long	27                      # 0x1b
.LCPI56_8:
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	31                      # 0x1f
.LCPI56_9:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
.LCPI56_10:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	zunionInterGetKeys
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
	movl	%eax, %r15d
	xorl	%ecx, %ecx
	movl	$0, %eax
	testl	%r15d, %r15d
	jle	.LBB56_14
# %bb.1:
	addl	$-3, %ebx
	cmpl	%ebx, %r15d
	jg	.LBB56_14
# %bb.2:
	movslq	%r15d, %r12
	leaq	4(,%r12,4), %rdi
	callq	zmalloc
	movl	%r15d, %ecx
	cmpl	$8, %r15d
	jae	.LBB56_4
# %bb.3:
	xorl	%edx, %edx
	jmp	.LBB56_12
.LBB56_4:
	movl	%ecx, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rsi
	movq	%rsi, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %ebx
	andl	$3, %ebx
	cmpq	$24, %rsi
	jae	.LBB56_6
# %bb.5:
	movdqa	.LCPI56_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	xorl	%edi, %edi
	jmp	.LBB56_8
.LBB56_6:
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	movdqa	.LCPI56_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	xorl	%edi, %edi
	movdqa	.LCPI56_1(%rip), %xmm8  # xmm8 = [3,3,3,3]
	movdqa	.LCPI56_2(%rip), %xmm9  # xmm9 = [7,7,7,7]
	movdqa	.LCPI56_3(%rip), %xmm10 # xmm10 = [11,11,11,11]
	movdqa	.LCPI56_4(%rip), %xmm11 # xmm11 = [15,15,15,15]
	movdqa	.LCPI56_5(%rip), %xmm5  # xmm5 = [19,19,19,19]
	movdqa	.LCPI56_6(%rip), %xmm6  # xmm6 = [23,23,23,23]
	movdqa	.LCPI56_7(%rip), %xmm7  # xmm7 = [27,27,27,27]
	movdqa	.LCPI56_8(%rip), %xmm1  # xmm1 = [31,31,31,31]
	movdqa	.LCPI56_9(%rip), %xmm2  # xmm2 = [32,32,32,32]
	.p2align	4, 0x90
.LBB56_7:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm3
	paddd	%xmm8, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	movdqu	%xmm3, (%rax,%rdi,4)
	movdqu	%xmm4, 16(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm10, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm11, %xmm4
	movdqu	%xmm3, 32(%rax,%rdi,4)
	movdqu	%xmm4, 48(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm5, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm6, %xmm4
	movdqu	%xmm3, 64(%rax,%rdi,4)
	movdqu	%xmm4, 80(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm1, %xmm4
	movdqu	%xmm3, 96(%rax,%rdi,4)
	movdqu	%xmm4, 112(%rax,%rdi,4)
	addq	$32, %rdi
	paddd	%xmm2, %xmm0
	addq	$4, %rsi
	jne	.LBB56_7
.LBB56_8:
	testq	%rbx, %rbx
	je	.LBB56_11
# %bb.9:                                # %.preheader
	leaq	(%rax,%rdi,4), %rsi
	addq	$16, %rsi
	negq	%rbx
	movdqa	.LCPI56_1(%rip), %xmm1  # xmm1 = [3,3,3,3]
	movdqa	.LCPI56_2(%rip), %xmm2  # xmm2 = [7,7,7,7]
	movdqa	.LCPI56_10(%rip), %xmm3 # xmm3 = [8,8,8,8]
	.p2align	4, 0x90
.LBB56_10:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm4
	paddd	%xmm1, %xmm4
	movdqa	%xmm0, %xmm5
	paddd	%xmm2, %xmm5
	movdqu	%xmm4, -16(%rsi)
	movdqu	%xmm5, (%rsi)
	paddd	%xmm3, %xmm0
	addq	$32, %rsi
	incq	%rbx
	jne	.LBB56_10
.LBB56_11:
	cmpq	%rcx, %rdx
	je	.LBB56_13
	.p2align	4, 0x90
.LBB56_12:                              # =>This Inner Loop Header: Depth=1
	leal	3(%rdx), %esi
	movl	%esi, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB56_12
.LBB56_13:
	addl	$1, %r15d
	movl	$1, (%rax,%r12,4)
	movl	%r15d, %ecx
.LBB56_14:
	movl	%ecx, (%r14)
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function evalGetKeys
.LCPI57_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI57_1:
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
.LCPI57_2:
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
.LCPI57_3:
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
	.long	11                      # 0xb
.LCPI57_4:
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	15                      # 0xf
	.long	15                      # 0xf
.LCPI57_5:
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	19                      # 0x13
	.long	19                      # 0x13
.LCPI57_6:
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
	.long	23                      # 0x17
.LCPI57_7:
	.long	27                      # 0x1b
	.long	27                      # 0x1b
	.long	27                      # 0x1b
	.long	27                      # 0x1b
.LCPI57_8:
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	31                      # 0x1f
	.long	31                      # 0x1f
.LCPI57_9:
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
	.long	32                      # 0x20
.LCPI57_10:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	evalGetKeys
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
	testl	%eax, %eax
	jle	.LBB57_2
# %bb.1:
	movl	%eax, %ebx
	addl	$-3, %r15d
	cmpl	%r15d, %eax
	jg	.LBB57_2
# %bb.3:
	movslq	%ebx, %rdi
	shlq	$2, %rdi
	callq	zmalloc
	movl	%ebx, (%r14)
	movl	%ebx, %ecx
	cmpl	$8, %ebx
	jae	.LBB57_5
# %bb.4:
	xorl	%edx, %edx
	jmp	.LBB57_13
.LBB57_2:
	movl	$0, (%r14)
	xorl	%eax, %eax
	jmp	.LBB57_14
.LBB57_5:
	movl	%ecx, %edx
	andl	$-8, %edx
	leaq	-8(%rdx), %rsi
	movq	%rsi, %rdi
	shrq	$3, %rdi
	addq	$1, %rdi
	movl	%edi, %ebx
	andl	$3, %ebx
	cmpq	$24, %rsi
	jae	.LBB57_7
# %bb.6:
	movdqa	.LCPI57_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	xorl	%edi, %edi
	jmp	.LBB57_9
.LBB57_7:
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	movdqa	.LCPI57_0(%rip), %xmm0  # xmm0 = [0,1,2,3]
	xorl	%edi, %edi
	movdqa	.LCPI57_1(%rip), %xmm8  # xmm8 = [3,3,3,3]
	movdqa	.LCPI57_2(%rip), %xmm9  # xmm9 = [7,7,7,7]
	movdqa	.LCPI57_3(%rip), %xmm10 # xmm10 = [11,11,11,11]
	movdqa	.LCPI57_4(%rip), %xmm11 # xmm11 = [15,15,15,15]
	movdqa	.LCPI57_5(%rip), %xmm5  # xmm5 = [19,19,19,19]
	movdqa	.LCPI57_6(%rip), %xmm6  # xmm6 = [23,23,23,23]
	movdqa	.LCPI57_7(%rip), %xmm7  # xmm7 = [27,27,27,27]
	movdqa	.LCPI57_8(%rip), %xmm1  # xmm1 = [31,31,31,31]
	movdqa	.LCPI57_9(%rip), %xmm2  # xmm2 = [32,32,32,32]
	.p2align	4, 0x90
.LBB57_8:                               # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm3
	paddd	%xmm8, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm9, %xmm4
	movdqu	%xmm3, (%rax,%rdi,4)
	movdqu	%xmm4, 16(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm10, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm11, %xmm4
	movdqu	%xmm3, 32(%rax,%rdi,4)
	movdqu	%xmm4, 48(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm5, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm6, %xmm4
	movdqu	%xmm3, 64(%rax,%rdi,4)
	movdqu	%xmm4, 80(%rax,%rdi,4)
	movdqa	%xmm0, %xmm3
	paddd	%xmm7, %xmm3
	movdqa	%xmm0, %xmm4
	paddd	%xmm1, %xmm4
	movdqu	%xmm3, 96(%rax,%rdi,4)
	movdqu	%xmm4, 112(%rax,%rdi,4)
	addq	$32, %rdi
	paddd	%xmm2, %xmm0
	addq	$4, %rsi
	jne	.LBB57_8
.LBB57_9:
	testq	%rbx, %rbx
	je	.LBB57_12
# %bb.10:                               # %.preheader
	leaq	(%rax,%rdi,4), %rsi
	addq	$16, %rsi
	negq	%rbx
	movdqa	.LCPI57_1(%rip), %xmm1  # xmm1 = [3,3,3,3]
	movdqa	.LCPI57_2(%rip), %xmm2  # xmm2 = [7,7,7,7]
	movdqa	.LCPI57_10(%rip), %xmm3 # xmm3 = [8,8,8,8]
	.p2align	4, 0x90
.LBB57_11:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm0, %xmm4
	paddd	%xmm1, %xmm4
	movdqa	%xmm0, %xmm5
	paddd	%xmm2, %xmm5
	movdqu	%xmm4, -16(%rsi)
	movdqu	%xmm5, (%rsi)
	paddd	%xmm3, %xmm0
	addq	$32, %rsi
	incq	%rbx
	jne	.LBB57_11
.LBB57_12:
	cmpq	%rcx, %rdx
	je	.LBB57_14
	.p2align	4, 0x90
.LBB57_13:                              # =>This Inner Loop Header: Depth=1
	leal	3(%rdx), %esi
	movl	%esi, (%rax,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB57_13
.LBB57_14:
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
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	cmpl	$3, %r13d
	jl	.LBB58_10
# %bb.1:
	movl	$2, %r15d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB58_2
	.p2align	4, 0x90
.LBB58_4:                               #   in Loop: Header=BB58_2 Depth=1
	addl	-8(%r12), %r15d
.LBB58_9:                               #   in Loop: Header=BB58_2 Depth=1
	addl	$1, %r15d
	cmpl	%r13d, %r15d
	jge	.LBB58_10
.LBB58_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_3 Depth 2
	movslq	%r15d, %r14
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r14,8), %rax
	movq	8(%rax), %rbx
	addl	$1, %r14d
	movl	$.L.str.37, %esi
	leaq	-128(%rbp), %r12
	jmp	.LBB58_3
	.p2align	4, 0x90
.LBB58_8:                               #   in Loop: Header=BB58_3 Depth=2
	movq	(%r12), %rsi
	addq	$16, %r12
	testq	%rsi, %rsi
	je	.LBB58_9
.LBB58_3:                               #   Parent Loop BB58_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB58_4
# %bb.5:                                #   in Loop: Header=BB58_3 Depth=2
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB58_8
# %bb.6:                                #   in Loop: Header=BB58_3 Depth=2
	cmpl	%r13d, %r14d
	jge	.LBB58_8
# %bb.7:                                #   in Loop: Header=BB58_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%r14d, 4(%rax)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB58_9
.LBB58_10:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function migrateGetKeys
.LCPI59_0:
	.quad	2                       # 0x2
	.quad	3                       # 0x3
.LCPI59_1:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI59_2:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI59_3:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
.LCPI59_4:
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
	.long	12                      # 0xc
.LCPI59_5:
	.quad	16                      # 0x10
	.quad	16                      # 0x10
	.text
	.globl	migrateGetKeys
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
	movq	%rcx, %r12
	cmpl	$7, %edx
	jl	.LBB59_14
# %bb.1:
	movl	%edx, %r15d
	movq	%rsi, %r13
	movslq	%edx, %r14
	movl	$7, %ebx
	jmp	.LBB59_2
.LBB59_10:                              #   in Loop: Header=BB59_2 Depth=1
	movq	-17(%rcx), %rax
	.p2align	4, 0x90
.LBB59_11:                              #   in Loop: Header=BB59_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB59_12
.LBB59_13:                              #   in Loop: Header=BB59_2 Depth=1
	cmpq	%r14, %rbx
	leaq	1(%rbx), %rbx
	jge	.LBB59_14
.LBB59_2:                               # =>This Inner Loop Header: Depth=1
	movq	-8(%r13,%rbx,8), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.41, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB59_13
# %bb.3:                                #   in Loop: Header=BB59_2 Depth=1
	movq	24(%r13), %rax
	movq	8(%rax), %rcx
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB59_5
# %bb.4:                                #   in Loop: Header=BB59_2 Depth=1
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI59_0(,%rdx,8)
.LBB59_6:                               #   in Loop: Header=BB59_2 Depth=1
	shrq	$3, %rax
	jmp	.LBB59_11
.LBB59_7:                               #   in Loop: Header=BB59_2 Depth=1
	movzbl	-3(%rcx), %eax
	jmp	.LBB59_11
.LBB59_8:                               #   in Loop: Header=BB59_2 Depth=1
	movzwl	-5(%rcx), %eax
	jmp	.LBB59_11
.LBB59_9:                               #   in Loop: Header=BB59_2 Depth=1
	movl	-9(%rcx), %eax
	jmp	.LBB59_11
.LBB59_14:
	movl	$3, %ebx
	movl	$1, %r15d
.LBB59_15:
	movslq	%r15d, %r14
	leaq	(,%r14,4), %rdi
	callq	zmalloc
	testl	%r14d, %r14d
	jle	.LBB59_27
# %bb.16:
	movl	%r15d, %ecx
	cmpl	$8, %r15d
	jae	.LBB59_18
# %bb.17:
	xorl	%edx, %edx
	jmp	.LBB59_25
.LBB59_18:
	movl	%ecx, %edx
	andl	$-8, %edx
	movq	%rbx, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	leaq	-8(%rdx), %rdi
	movq	%rdi, %rsi
	shrq	$3, %rsi
	addq	$1, %rsi
	movl	%esi, %r8d
	andl	$1, %r8d
	testq	%rdi, %rdi
	je	.LBB59_19
# %bb.20:
	movq	%r8, %rdi
	subq	%rsi, %rdi
	movdqa	.LCPI59_0(%rip), %xmm3  # xmm3 = [2,3]
	movdqa	.LCPI59_1(%rip), %xmm1  # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%esi, %esi
	movdqa	.LCPI59_2(%rip), %xmm8  # xmm8 = [4,4,4,4]
	movdqa	.LCPI59_3(%rip), %xmm4  # xmm4 = [8,8,8,8]
	movdqa	.LCPI59_4(%rip), %xmm5  # xmm5 = [12,12,12,12]
	movdqa	.LCPI59_5(%rip), %xmm6  # xmm6 = [16,16]
	.p2align	4, 0x90
.LBB59_21:                              # =>This Inner Loop Header: Depth=1
	movdqa	%xmm1, %xmm7
	paddq	%xmm0, %xmm7
	movdqa	%xmm3, %xmm2
	paddq	%xmm0, %xmm2
	shufps	$136, %xmm2, %xmm7      # xmm7 = xmm7[0,2],xmm2[0,2]
	movaps	%xmm7, %xmm2
	paddd	%xmm8, %xmm2
	movups	%xmm7, (%rax,%rsi,4)
	movdqu	%xmm2, 16(%rax,%rsi,4)
	movaps	%xmm7, %xmm2
	paddd	%xmm4, %xmm2
	paddd	%xmm5, %xmm7
	movdqu	%xmm2, 32(%rax,%rsi,4)
	movdqu	%xmm7, 48(%rax,%rsi,4)
	addq	$16, %rsi
	paddq	%xmm6, %xmm1
	paddq	%xmm6, %xmm3
	addq	$2, %rdi
	jne	.LBB59_21
# %bb.22:
	testq	%r8, %r8
	je	.LBB59_24
.LBB59_23:
	paddq	%xmm0, %xmm1
	paddq	%xmm0, %xmm3
	shufps	$136, %xmm3, %xmm1      # xmm1 = xmm1[0,2],xmm3[0,2]
	movdqa	.LCPI59_2(%rip), %xmm0  # xmm0 = [4,4,4,4]
	paddd	%xmm1, %xmm0
	movups	%xmm1, (%rax,%rsi,4)
	movdqu	%xmm0, 16(%rax,%rsi,4)
.LBB59_24:
	cmpq	%rcx, %rdx
	je	.LBB59_27
.LBB59_25:
	subq	%rdx, %rcx
	leaq	(%rax,%rdx,4), %rsi
	addq	%rdx, %rbx
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB59_26:                              # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rdx), %edi
	movl	%edi, (%rsi,%rdx,4)
	addq	$1, %rdx
	cmpq	%rdx, %rcx
	jne	.LBB59_26
.LBB59_27:
	movl	%r15d, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB59_12:
	subl	%ebx, %r15d
	jmp	.LBB59_15
.LBB59_5:
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %r15d
	jmp	.LBB59_15
.LBB59_19:
	movdqa	.LCPI59_0(%rip), %xmm3  # xmm3 = [2,3]
	movdqa	.LCPI59_1(%rip), %xmm1  # xmm1 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	xorl	%esi, %esi
	testq	%r8, %r8
	jne	.LBB59_23
	jmp	.LBB59_24
.Lfunc_end59:
	.size	migrateGetKeys, .Lfunc_end59-migrateGetKeys
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI59_0:
	.quad	.LBB59_6
	.quad	.LBB59_7
	.quad	.LBB59_8
	.quad	.LBB59_9
	.quad	.LBB59_10
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
	movl	$-1, %r13d
	cmpl	$6, %edx
	jl	.LBB60_6
# %bb.1:                                # %.preheader
	movl	%edx, %r12d
	movq	%rsi, %r15
	movl	$-1, %r13d
	movl	$5, %r14d
	jmp	.LBB60_2
	.p2align	4, 0x90
.LBB60_4:                               #   in Loop: Header=BB60_2 Depth=1
	leal	1(%r14), %eax
	cmpl	%r12d, %eax
	cmovll	%eax, %r13d
	cmovll	%eax, %r14d
.LBB60_5:                               #   in Loop: Header=BB60_2 Depth=1
	addl	$1, %r14d
	cmpl	%r12d, %r14d
	jge	.LBB60_6
.LBB60_2:                               # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %rax
	movq	(%r15,%rax,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.40, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB60_4
# %bb.3:                                #   in Loop: Header=BB60_2 Depth=1
	movl	$.L.str.42, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB60_5
	jmp	.LBB60_4
.LBB60_6:
	xorl	%eax, %eax
	cmpl	$-1, %r13d
	sete	%al
	movl	$2, %ebx
	subl	%eax, %ebx
	leal	(,%rbx,4), %edi
	callq	zmalloc
	movl	$1, (%rax)
	cmpl	$-1, %r13d
	je	.LBB60_8
# %bb.7:
	movl	%r13d, 4(%rax)
.LBB60_8:
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
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function xreadGetKeys
.LCPI61_0:
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	3                       # 0x3
.LCPI61_1:
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
.LCPI61_2:
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.long	8                       # 0x8
	.text
	.globl	xreadGetKeys
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
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%edx, %r15d
	movl	$-1, %r13d
	cmpl	$2, %edx
	jl	.LBB61_11
# %bb.1:                                # %.preheader2
	movq	%rsi, %r12
	movl	$1, %r14d
	jmp	.LBB61_4
	.p2align	4, 0x90
.LBB61_2:                               #   in Loop: Header=BB61_4 Depth=1
	addl	$1, %r14d
.LBB61_3:                               #   in Loop: Header=BB61_4 Depth=1
	addl	$1, %r14d
	cmpl	%r15d, %r14d
	jge	.LBB61_11
.LBB61_4:                               # =>This Inner Loop Header: Depth=1
	movslq	%r14d, %rax
	movq	(%r12,%rax,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.43, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB61_2
# %bb.5:                                #   in Loop: Header=BB61_4 Depth=1
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB61_2
# %bb.6:                                #   in Loop: Header=BB61_4 Depth=1
	movl	$.L.str.44, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB61_9
# %bb.7:                                #   in Loop: Header=BB61_4 Depth=1
	movl	$.L.str.45, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB61_3
	jmp	.LBB61_10
.LBB61_9:                               #   in Loop: Header=BB61_4 Depth=1
	addl	$2, %r14d
	jmp	.LBB61_3
.LBB61_10:
	movl	$.L.str.46, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%r13d, %r13d
	cmpl	$1, %eax
	sbbl	%r13d, %r13d
	notl	%r13d
	orl	%r14d, %r13d
.LBB61_11:
	movq	-48(%rbp), %r12         # 8-byte Reload
	movl	%r13d, %ecx
	notl	%ecx
	addl	%r15d, %ecx
	xorl	%r14d, %r14d
	cmpl	$-1, %r13d
	cmovel	%r14d, %ecx
	testb	$1, %cl
	jne	.LBB61_18
# %bb.12:
	cmpl	$-1, %r13d
	je	.LBB61_18
# %bb.13:
	movl	$0, %eax
	testl	%ecx, %ecx
	je	.LBB61_31
# %bb.14:
	movl	%ecx, %r14d
	shrl	$31, %r14d
	addl	%ecx, %r14d
	sarl	%r14d
	movslq	%r14d, %rbx
	leaq	(,%rbx,4), %rdi
	callq	zmalloc
	leal	1(%r13), %r10d
	movl	%r15d, %edx
	subl	%ebx, %edx
	cmpl	%edx, %r10d
	jge	.LBB61_31
# %bb.15:
	movslq	%r10d, %r8
	movl	%edx, %esi
	subl	%r13d, %esi
	leal	-2(%rsi), %edi
	leaq	1(%rdi), %rcx
	cmpq	$8, %rcx
	jb	.LBB61_23
# %bb.19:
	addl	$-2, %esi
	js	.LBB61_23
# %bb.20:
	leal	1(%rdi), %r9d
	andl	$7, %r9d
	subq	%r9, %rcx
	addq	%rcx, %r8
	addl	%r13d, %ecx
	movd	%r10d, %xmm0
	pshufd	$0, %xmm0, %xmm0        # xmm0 = xmm0[0,0,0,0]
	paddd	.LCPI61_0(%rip), %xmm0
	subq	%r9, %rdi
	addq	$1, %rdi
	xorl	%ebx, %ebx
	movdqa	.LCPI61_1(%rip), %xmm1  # xmm1 = [4,4,4,4]
	movdqa	.LCPI61_2(%rip), %xmm2  # xmm2 = [8,8,8,8]
	movabsq	$34359738368, %r10      # imm = 0x800000000
	.p2align	4, 0x90
.LBB61_21:                              # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	sarq	$30, %rsi
	movdqa	%xmm0, %xmm3
	paddd	%xmm1, %xmm3
	movdqu	%xmm0, (%rax,%rsi)
	movdqu	%xmm3, 16(%rax,%rsi)
	paddd	%xmm2, %xmm0
	addq	%r10, %rbx
	addq	$-8, %rdi
	jne	.LBB61_21
# %bb.22:
	testl	%r9d, %r9d
	jne	.LBB61_24
	jmp	.LBB61_31
.LBB61_18:
	xorl	%eax, %eax
	jmp	.LBB61_31
.LBB61_23:
	movl	%r13d, %ecx
.LBB61_24:
	subl	%r8d, %edx
	movl	%r14d, %r9d
	notl	%r9d
	addl	%r15d, %r9d
	subl	%r8d, %r9d
	andl	$3, %edx
	je	.LBB61_28
# %bb.25:                               # %.preheader1
	negl	%edx
	xorl	%esi, %esi
	movq	%r8, %rdi
	.p2align	4, 0x90
.LBB61_26:                              # =>This Inner Loop Header: Depth=1
	subl	%r13d, %ecx
	movslq	%ecx, %rbx
	movl	%edi, %ecx
	movl	%edi, (%rax,%rbx,4)
	addq	$1, %rdi
	addl	$-1, %esi
	cmpl	%esi, %edx
	jne	.LBB61_26
# %bb.27:
	notl	%esi
	addl	%r8d, %esi
	movl	%esi, %ecx
	cmpl	$3, %r9d
	jae	.LBB61_29
	jmp	.LBB61_31
.LBB61_28:
	movq	%r8, %rdi
	cmpl	$3, %r9d
	jb	.LBB61_31
.LBB61_29:                              # %.preheader
	movl	%r14d, %edx
	subl	%r15d, %edx
	addl	$3, %edi
	movl	%r13d, %esi
	negl	%esi
	.p2align	4, 0x90
.LBB61_30:                              # =>This Inner Loop Header: Depth=1
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	subl	%r13d, %ecx
	movslq	%ecx, %rcx
	leal	-3(%rdi), %ebx
	movl	%ebx, (%rax,%rcx,4)
	leal	(%rsi,%rdi), %ecx
	addl	$-3, %ecx
	movslq	%ecx, %rcx
	leal	-2(%rdi), %ebx
	movl	%ebx, (%rax,%rcx,4)
	leal	-2(%rsi,%rdi), %ecx
	movslq	%ecx, %rcx
	leal	-1(%rdi), %ebx
	movl	%ebx, (%rax,%rcx,4)
	leal	-1(%rsi,%rdi), %ecx
	movslq	%ecx, %rcx
	movl	%edi, (%rax,%rcx,4)
	leal	(%rdx,%rdi), %ebx
	addl	$4, %ebx
	movl	%edi, %ecx
	addl	$4, %edi
	cmpl	$3, %ebx
	jne	.LBB61_30
.LBB61_31:
	movl	%r14d, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
                                        # kill: def $esi killed $esi killed $rsi
	callq	keyHashSlot
	movl	%eax, %r12d
	movq	8(%rbx), %rax
	movzbl	-1(%rax), %r13d
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
	xorl	%eax, %eax
	movl	%r14d, %r15d
	testl	%r14d, %r14d
	setne	%al
	movq	server+2944(%rip), %rcx
	movl	%r12d, %edx
	movq	393256(%rcx,%rdx,8), %rsi
	leaq	(%rsi,%rax,2), %rax
	addq	$-1, %rax
	movq	%rax, 393256(%rcx,%rdx,8)
	leaq	2(%r13), %r14
	cmpq	$65, %r14
	jb	.LBB62_17
# %bb.18:
	movq	%r14, %rdi
	callq	zmalloc
	movq	%rax, %rbx
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
	leaq	-112(%rbp), %rax
	cmpq	%rax, %rbx
	je	.LBB62_24
# %bb.23:
	movq	%rbx, %rdi
	callq	zfree
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
	testl	%eax, %eax
	je	.LBB63_7
# %bb.4:                                #   in Loop: Header=BB63_3 Depth=1
	movq	-504(%rbp), %rdi
	movzbl	(%rdi), %eax
	cmpb	-34(%rbp), %al
	jne	.LBB63_7
# %bb.5:                                #   in Loop: Header=BB63_3 Depth=1
	movzbl	1(%rdi), %eax
	cmpb	-33(%rbp), %al
	jne	.LBB63_7
# %bb.6:                                #   in Loop: Header=BB63_3 Depth=1
	addq	$2, %rdi
	movq	-488(%rbp), %rsi
	addq	$-2, %rsi
	callq	createStringObject
	movq	%rax, (%r14,%rbx,8)
	addq	$1, %rbx
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
	movq	server+2944(%rip), %rax
	movl	%ebx, %r15d
	cmpq	$0, 393256(%rax,%r15,8)
	je	.LBB64_1
# %bb.2:
	xorl	%r13d, %r13d
	leaq	-528(%rbp), %r14
	jmp	.LBB64_3
	.p2align	4, 0x90
.LBB64_4:                               #   in Loop: Header=BB64_3 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	dbAsyncDelete
.LBB64_11:                              #   in Loop: Header=BB64_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	decrRefCount
	addl	$1, %r13d
	movq	server+2944(%rip), %rax
	cmpq	$0, 393256(%rax,%r15,8)
	je	.LBB64_12
.LBB64_3:                               # =>This Inner Loop Header: Depth=1
	movl	$.L.str.47, %esi
	movl	$2, %ecx
	movq	%r14, %rdi
	leaq	-42(%rbp), %rdx
	callq	raxSeek
	movq	%r14, %rdi
	callq	raxNext
	movq	-512(%rbp), %rdi
	movq	-496(%rbp), %rsi
	addq	$2, %rdi
	addq	$-2, %rsi
	callq	createStringObject
	movq	%rax, %r12
	movq	server+48(%rip), %rbx
	cmpl	$0, server+3088(%rip)
	jne	.LBB64_4
# %bb.5:                                #   in Loop: Header=BB64_3 Depth=1
	movq	8(%rbx), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB64_7
# %bb.6:                                #   in Loop: Header=BB64_3 Depth=1
	movq	8(%r12), %rsi
	callq	dictDelete
.LBB64_7:                               #   in Loop: Header=BB64_3 Depth=1
	movq	(%rbx), %rdi
	movq	8(%r12), %rsi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB64_10
# %bb.8:                                #   in Loop: Header=BB64_3 Depth=1
	cmpl	$0, server+2924(%rip)
	je	.LBB64_10
# %bb.9:                                #   in Loop: Header=BB64_3 Depth=1
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	slotToKeyUpdateKey
	movl	$42, __A_VARIABLE(%rip)
.LBB64_10:                              #   in Loop: Header=BB64_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB64_11
.LBB64_1:
	xorl	%r13d, %r13d
.LBB64_12:
	leaq	-528(%rbp), %rdi
	callq	raxStop
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
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
