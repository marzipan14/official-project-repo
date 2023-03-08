	.text
	.file	"networking.c"
	.globl	sdsZmallocSize          # -- Begin function sdsZmallocSize
	.p2align	4, 0x90
	.type	sdsZmallocSize,@function
sdsZmallocSize:                         # @sdsZmallocSize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	sdsAllocPtr
	movq	%rax, %rdi
	popq	%rbp
	jmp	zmalloc_size            # TAILCALL
.Lfunc_end0:
	.size	sdsZmallocSize, .Lfunc_end0-sdsZmallocSize
                                        # -- End function
	.globl	getStringObjectSdsUsedMemory # -- Begin function getStringObjectSdsUsedMemory
	.p2align	4, 0x90
	.type	getStringObjectSdsUsedMemory,@function
getStringObjectSdsUsedMemory:           # @getStringObjectSdsUsedMemory
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movl	(%rdi), %eax
	testb	$15, %al
	jne	.LBB1_7
# %bb.1:
	shrb	$4, %al
	cmpb	$8, %al
	je	.LBB1_5
# %bb.2:
	testb	%al, %al
	jne	.LBB1_3
# %bb.4:
	movq	8(%rsi), %rdi
	callq	sdsAllocPtr
	movq	%rax, %rdi
	popq	%rbp
	jmp	zmalloc_size            # TAILCALL
.LBB1_5:
	movq	%rsi, %rdi
	callq	zmalloc_size
	addq	$-16, %rax
	popq	%rbp
	retq
.LBB1_3:
	xorl	%eax, %eax
	popq	%rbp
	retq
.LBB1_7:
	movl	$.L.str, %edx
	movl	$.L.str.1, %ecx
	xorl	%edi, %edi
	movl	$52, %r8d
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	getStringObjectSdsUsedMemory, .Lfunc_end1-getStringObjectSdsUsedMemory
                                        # -- End function
	.globl	dupClientReplyValue     # -- Begin function dupClientReplyValue
	.p2align	4, 0x90
	.type	dupClientReplyValue,@function
dupClientReplyValue:                    # @dupClientReplyValue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	addq	$16, %rdi
	callq	zmalloc
	movq	%rax, %r14
	movq	(%rbx), %rdx
	addq	$16, %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	dupClientReplyValue, .Lfunc_end2-dupClientReplyValue
                                        # -- End function
	.globl	freeClientReplyValue    # -- Begin function freeClientReplyValue
	.p2align	4, 0x90
	.type	freeClientReplyValue,@function
freeClientReplyValue:                   # @freeClientReplyValue
# %bb.0:
	jmp	zfree                   # TAILCALL
.Lfunc_end3:
	.size	freeClientReplyValue, .Lfunc_end3-freeClientReplyValue
                                        # -- End function
	.globl	listMatchObjects        # -- Begin function listMatchObjects
	.p2align	4, 0x90
	.type	listMatchObjects,@function
listMatchObjects:                       # @listMatchObjects
# %bb.0:
	jmp	equalStringObjects      # TAILCALL
.Lfunc_end4:
	.size	listMatchObjects, .Lfunc_end4-listMatchObjects
                                        # -- End function
	.globl	linkClient              # -- Begin function linkClient
	.p2align	4, 0x90
	.type	linkClient,@function
linkClient:                             # @linkClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	server+512(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	server+512(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, 520(%rbx)
	movq	(%rbx), %rdi
	callq	intrev64
	movq	%rax, -16(%rbp)
	movq	server+560(%rip), %rdi
	leaq	-16(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	linkClient, .Lfunc_end5-linkClient
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function createClient
.LCPI6_0:
	.zero	16
	.text
	.globl	createClient
	.p2align	4, 0x90
	.type	createClient,@function
createClient:                           # @createClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movl	%edi, %r14d
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB6_1
# %bb.2:
	movl	$16920, %esi            # imm = 0x4218
	callq	*(%rdi)
	movq	%rax, %rbx
	cmpl	$-1, %r14d
	je	.LBB6_8
.LBB6_4:
	xorl	%edi, %edi
	movl	%r14d, %esi
	callq	anetNonBlock
	xorl	%edi, %edi
	movl	%r14d, %esi
	callq	anetEnableTcpNoDelay
	movl	server+1736(%rip), %edx
	testl	%edx, %edx
	je	.LBB6_6
# %bb.5:
	xorl	%edi, %edi
	movl	%r14d, %esi
	callq	anetKeepAlive
.LBB6_6:
	movq	server+72(%rip), %rdi
	movl	$readQueryFromClient, %ecx
	movl	%r14d, %esi
	movl	$1, %edx
	movq	%rbx, %r8
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB6_7
.LBB6_8:
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	selectDb
	movl	$1, %eax
	lock		xaddq	%rax, server+848(%rip)
	movq	%rax, (%rbx)
	movl	%r14d, 8(%rbx)
	movq	$0, 24(%rbx)
	movl	$0, 528(%rbx)
	movq	$0, 40(%rbx)
	callq	sdsempty
	movq	%rax, 32(%rbx)
	callq	sdsempty
	movq	%rax, 48(%rbx)
	movq	$0, 56(%rbx)
	movq	$0, 96(%rbx)
	movl	$0, 64(%rbx)
	movq	$0, 72(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 80(%rbx)
	movq	$-1, 104(%rbx)
	movq	$0, 128(%rbx)
	movq	server+2872(%rip), %rax
	movq	%rax, 144(%rbx)
	movq	%rax, 136(%rbx)
	movups	%xmm0, 160(%rbx)
	movups	%xmm0, 208(%rbx)
	movups	%xmm0, 224(%rbx)
	movl	$0, 292(%rbx)
	movb	$0, 296(%rbx)
	movl	$0, 344(%rbx)
	callq	listCreate
	movq	%rax, 112(%rbx)
	movq	$0, 120(%rbx)
	movq	$0, 152(%rbx)
	movq	$freeClientReplyValue, 24(%rax)
	movq	$dupClientReplyValue, 16(%rax)
	movl	$0, 384(%rbx)
	movq	$0, 392(%rbx)
	movl	$objectKeyHeapPointerValueDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 400(%rbx)
	movq	$0, 408(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 424(%rbx)
	movups	%xmm0, 456(%rbx)
	movq	$0, 480(%rbx)
	callq	listCreate
	movq	%rax, 488(%rbx)
	movl	$objectKeyPointerValueDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, 496(%rbx)
	callq	listCreate
	movq	%rax, 504(%rbx)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 512(%rbx)
	movq	$decrRefCountVoid, 24(%rax)
	movq	$listMatchObjects, 32(%rax)
	cmpl	$-1, %r14d
	je	.LBB6_10
# %bb.9:
	movq	server+512(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	server+512(%rip), %rax
	movq	8(%rax), %rax
	movq	%rax, 520(%rbx)
	movq	(%rbx), %rdi
	callq	intrev64
	movq	%rax, -24(%rbp)
	movq	server+560(%rip), %rdi
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rcx
	xorl	%r8d, %r8d
	callq	raxInsert
.LBB6_10:
	movq	%rbx, %rdi
	callq	initClientMultiState
	jmp	.LBB6_11
.LBB6_7:
	movl	%r14d, %edi
	callq	close
	movq	%rbx, %rdi
	callq	zfree
	xorl	%ebx, %ebx
.LBB6_11:
	movq	%rbx, %rax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%ebx, %ebx
	cmpl	$-1, %r14d
	jne	.LBB6_4
	jmp	.LBB6_8
.Lfunc_end6:
	.size	createClient, .Lfunc_end6-createClient
                                        # -- End function
	.globl	readQueryFromClient     # -- Begin function readQueryFromClient
	.p2align	4, 0x90
	.type	readQueryFromClient,@function
readQueryFromClient:                    # @readQueryFromClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movl	$16384, %r12d           # imm = 0x4000
	cmpl	$2, 96(%rdx)
	jne	.LBB7_12
# %bb.1:
	cmpl	$0, 100(%r15)
	je	.LBB7_12
# %bb.2:
	movq	104(%r15), %rax
	cmpq	$32768, %rax            # imm = 0x8000
	jl	.LBB7_12
# %bb.3:
	addq	$2, %rax
	movq	32(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB7_4
# %bb.5:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI7_0(,%rsi,8)
.LBB7_6:
	shrq	$3, %rcx
	jmp	.LBB7_11
.LBB7_4:
	xorl	%ecx, %ecx
	jmp	.LBB7_11
.LBB7_7:
	movzbl	-3(%rdx), %ecx
	jmp	.LBB7_11
.LBB7_8:
	movzwl	-5(%rdx), %ecx
	jmp	.LBB7_11
.LBB7_9:
	movl	-9(%rdx), %ecx
	jmp	.LBB7_11
.LBB7_10:
	movq	-17(%rdx), %rcx
.LBB7_11:
	subq	%rcx, %rax
	leaq	-1(%rax), %rcx
	cmpq	$16383, %rcx            # imm = 0x3FFF
	cltq
	movl	$16384, %r12d           # imm = 0x4000
	cmovbq	%rax, %r12
.LBB7_12:
	movq	32(%r15), %rdi
	movzbl	-1(%rdi), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB7_13
# %bb.14:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI7_1(,%rax,8)
.LBB7_15:
	shrq	$3, %rbx
	cmpq	%rbx, 56(%r15)
	jb	.LBB7_21
	jmp	.LBB7_22
.LBB7_13:
	xorl	%ebx, %ebx
	jmp	.LBB7_22
.LBB7_16:
	movzbl	-3(%rdi), %ebx
	cmpq	%rbx, 56(%r15)
	jb	.LBB7_21
	jmp	.LBB7_22
.LBB7_17:
	movzwl	-5(%rdi), %ebx
	cmpq	%rbx, 56(%r15)
	jb	.LBB7_21
	jmp	.LBB7_22
.LBB7_18:
	movl	-9(%rdi), %ebx
	cmpq	%rbx, 56(%r15)
	jb	.LBB7_21
	jmp	.LBB7_22
.LBB7_19:
	movq	-17(%rdi), %rbx
	cmpq	%rbx, 56(%r15)
	jae	.LBB7_22
.LBB7_21:
	movq	%rbx, 56(%r15)
.LBB7_22:
	movq	%r12, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, 32(%r15)
	leaq	(%rax,%rbx), %rsi
	movl	%r14d, %edi
	movq	%r12, %rdx
	callq	read
	testl	%eax, %eax
	je	.LBB7_26
# %bb.23:
	cmpl	$-1, %eax
	jne	.LBB7_28
# %bb.24:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB7_25
.LBB7_44:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_26:
	movl	$.L.str.45, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB7_27
.LBB7_28:
	testb	$2, 160(%r15)
	jne	.LBB7_30
# %bb.29:
	movslq	%eax, %r14
	jmp	.LBB7_31
.LBB7_25:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.44, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB7_27
.LBB7_30:
	movq	48(%r15), %rdi
	addq	32(%r15), %rbx
	movslq	%eax, %r14
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	sdscatlen
	movq	%rax, 48(%r15)
.LBB7_31:
	movq	32(%r15), %rdi
	movq	%r14, %rsi
	callq	sdsIncrLen
	movq	server+2872(%rip), %rax
	movq	%rax, 144(%r15)
	movl	160(%r15), %eax
	testb	$2, %al
	je	.LBB7_33
# %bb.32:
	addq	%r14, 208(%r15)
.LBB7_33:
	addq	%r14, server+1240(%rip)
	movq	32(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	%ecx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB7_42
# %bb.34:
	movl	%ecx, %esi
	andl	$7, %esi
	jmpq	*.LJTI7_2(,%rsi,8)
.LBB7_35:
	shrq	$3, %rcx
	cmpq	server+1784(%rip), %rcx
	jbe	.LBB7_42
	jmp	.LBB7_41
.LBB7_36:
	movzbl	-3(%rdx), %ecx
	cmpq	server+1784(%rip), %rcx
	jbe	.LBB7_42
	jmp	.LBB7_41
.LBB7_37:
	movzwl	-5(%rdx), %ecx
	cmpq	server+1784(%rip), %rcx
	jbe	.LBB7_42
	jmp	.LBB7_41
.LBB7_38:
	movl	-9(%rdx), %ecx
	cmpq	server+1784(%rip), %rcx
	ja	.LBB7_41
.LBB7_42:
	testb	$2, %al
	jne	.LBB7_43
# %bb.45:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	processInputBuffer      # TAILCALL
.LBB7_43:
	movq	216(%r15), %r14
	movq	%r15, %rdi
	callq	processInputBuffer
	movq	216(%r15), %rbx
	subq	%r14, %rbx
	je	.LBB7_44
# %bb.46:
	movq	server+536(%rip), %rdi
	movq	48(%r15), %rsi
	movq	%rbx, %rdx
	callq	replicationFeedSlavesFromMasterStream
	movq	48(%r15), %rdi
	movq	%rbx, %rsi
	movq	$-1, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsrange                # TAILCALL
.LBB7_39:
	movq	-17(%rdx), %rcx
	cmpq	server+1784(%rip), %rcx
	jbe	.LBB7_42
.LBB7_41:
	callq	sdsempty
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	catClientInfoString
	movq	%rax, %r14
	callq	sdsempty
	movq	32(%r15), %rsi
	movl	$64, %edx
	movq	%rax, %rdi
	callq	sdscatrepr
	movq	%rax, %rbx
	movl	$.L.str.46, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsfree
.LBB7_27:
	movq	%r15, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	freeClient              # TAILCALL
.Lfunc_end7:
	.size	readQueryFromClient, .Lfunc_end7-readQueryFromClient
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_9
	.quad	.LBB7_10
.LJTI7_1:
	.quad	.LBB7_15
	.quad	.LBB7_16
	.quad	.LBB7_17
	.quad	.LBB7_18
	.quad	.LBB7_19
.LJTI7_2:
	.quad	.LBB7_35
	.quad	.LBB7_36
	.quad	.LBB7_37
	.quad	.LBB7_38
	.quad	.LBB7_39
                                        # -- End function
	.text
	.globl	clientInstallWriteHandler # -- Begin function clientInstallWriteHandler
	.p2align	4, 0x90
	.type	clientInstallWriteHandler,@function
clientInstallWriteHandler:              # @clientInstallWriteHandler
# %bb.0:
	movl	160(%rdi), %eax
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB8_4
# %bb.1:
	movq	%rdi, %rsi
	movl	168(%rdi), %ecx
	testl	%ecx, %ecx
	je	.LBB8_5
# %bb.2:
	cmpl	$9, %ecx
	jne	.LBB8_4
# %bb.3:
	cmpl	$0, 172(%rsi)
	je	.LBB8_5
.LBB8_4:
	retq
.LBB8_5:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%rsi)
	movq	server+528(%rip), %rdi
	jmp	listAddNodeHead         # TAILCALL
.Lfunc_end8:
	.size	clientInstallWriteHandler, .Lfunc_end8-clientInstallWriteHandler
                                        # -- End function
	.globl	prepareClientToWrite    # -- Begin function prepareClientToWrite
	.p2align	4, 0x90
	.type	prepareClientToWrite,@function
prepareClientToWrite:                   # @prepareClientToWrite
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	160(%rdi), %ecx
	testl	$134217984, %ecx        # imm = 0x8000100
	je	.LBB9_1
.LBB9_11:
	xorl	%eax, %eax
.LBB9_12:
	popq	%rbp
	retq
.LBB9_1:
	movl	$-1, %eax
	testl	$20971520, %ecx         # imm = 0x1400000
	jne	.LBB9_12
# %bb.2:
	movl	%ecx, %edx
	andl	$8194, %edx             # imm = 0x2002
	cmpl	$2, %edx
	je	.LBB9_12
# %bb.3:
	movq	%rdi, %rsi
	cmpl	$0, 8(%rdi)
	jle	.LBB9_12
# %bb.4:
	cmpl	$0, 528(%rsi)
	jne	.LBB9_11
# %bb.5:
	testl	$2097152, %ecx          # imm = 0x200000
	jne	.LBB9_11
# %bb.6:
	movq	112(%rsi), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB9_11
# %bb.7:
	movl	168(%rsi), %eax
	testl	%eax, %eax
	je	.LBB9_10
# %bb.8:
	cmpl	$9, %eax
	jne	.LBB9_11
# %bb.9:
	cmpl	$0, 172(%rsi)
	jne	.LBB9_11
.LBB9_10:
	orl	$2097152, %ecx          # imm = 0x200000
	movl	%ecx, 160(%rsi)
	movq	server+528(%rip), %rdi
	callq	listAddNodeHead
	jmp	.LBB9_11
.Lfunc_end9:
	.size	prepareClientToWrite, .Lfunc_end9-prepareClientToWrite
                                        # -- End function
	.globl	clientHasPendingReplies # -- Begin function clientHasPendingReplies
	.p2align	4, 0x90
	.type	clientHasPendingReplies,@function
clientHasPendingReplies:                # @clientHasPendingReplies
# %bb.0:
	movl	$1, %eax
	cmpl	$0, 528(%rdi)
	je	.LBB10_1
# %bb.2:
	retq
.LBB10_1:
	movq	112(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	$0, 40(%rcx)
	setne	%al
	retq
.Lfunc_end10:
	.size	clientHasPendingReplies, .Lfunc_end10-clientHasPendingReplies
                                        # -- End function
	.globl	_addReplyToBuffer       # -- Begin function _addReplyToBuffer
	.p2align	4, 0x90
	.type	_addReplyToBuffer,@function
_addReplyToBuffer:                      # @_addReplyToBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	xorl	%eax, %eax
	testb	$64, 160(%rdi)
	jne	.LBB11_4
# %bb.1:
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movslq	528(%rdi), %rcx
	movl	$16384, %edx            # imm = 0x4000
	subq	%rcx, %rdx
	movl	$-1, %eax
	cmpq	%r14, %rdx
	jb	.LBB11_4
# %bb.2:
	movq	112(%rbx), %rdx
	cmpq	$0, 40(%rdx)
	jne	.LBB11_4
# %bb.3:
	leaq	(%rbx,%rcx), %rdi
	addq	$532, %rdi              # imm = 0x214
	movq	%r14, %rdx
	callq	memcpy
	addl	%r14d, 528(%rbx)
	xorl	%eax, %eax
.LBB11_4:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	_addReplyToBuffer, .Lfunc_end11-_addReplyToBuffer
                                        # -- End function
	.globl	_addReplyStringToList   # -- Begin function _addReplyStringToList
	.p2align	4, 0x90
	.type	_addReplyStringToList,@function
_addReplyStringToList:                  # @_addReplyStringToList
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	testb	$64, 160(%rdi)
	jne	.LBB12_7
# %bb.1:
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	112(%rdi), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_4
# %bb.2:
	movq	16(%rax), %r13
	testq	%r13, %r13
	je	.LBB12_4
# %bb.3:
	movq	(%r13), %rbx
	movq	8(%r13), %rax
	subq	%rax, %rbx
	cmpq	%r12, %rbx
	cmovaeq	%r12, %rbx
	leaq	(%rax,%r13), %rdi
	addq	$16, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, 8(%r13)
	addq	%rbx, %r15
	subq	%rbx, %r12
.LBB12_4:
	testq	%r12, %r12
	je	.LBB12_6
# %bb.5:
	cmpq	$16384, %r12            # imm = 0x4000
	movl	$16384, %edi            # imm = 0x4000
	cmovaq	%r12, %rdi
	addq	$16, %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zmalloc_usable
	addq	$-16, %rax
	movq	%rax, (%rbx)
	movq	%r12, 8(%rbx)
	leaq	16(%rbx), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movq	112(%r14), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	(%rbx), %rax
	addq	%rax, 120(%r14)
.LBB12_6:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	asyncCloseClientOnOutputBufferLimitReached # TAILCALL
.LBB12_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	_addReplyStringToList, .Lfunc_end12-_addReplyStringToList
                                        # -- End function
	.globl	asyncCloseClientOnOutputBufferLimitReached # -- Begin function asyncCloseClientOnOutputBufferLimitReached
	.p2align	4, 0x90
	.type	asyncCloseClientOnOutputBufferLimitReached,@function
asyncCloseClientOnOutputBufferLimitReached: # @asyncCloseClientOnOutputBufferLimitReached
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	cmpl	$-1, 8(%rdi)
	je	.LBB13_18
# %bb.1:
	movq	%rdi, %rbx
	movq	120(%rdi), %rcx
	cmpq	$-65537, %rcx           # imm = 0xFFFEFFFF
	jae	.LBB13_19
# %bb.2:
	testq	%rcx, %rcx
	je	.LBB13_18
# %bb.3:
	movl	160(%rbx), %eax
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB13_18
# %bb.4:
	movq	112(%rbx), %rdx
	movq	40(%rdx), %rdx
	leaq	(%rdx,%rdx,4), %rdx
	leaq	(%rcx,%rdx,8), %rcx
	testb	$2, %al
	jne	.LBB13_5
# %bb.6:
	movl	%eax, %esi
	andl	$5, %esi
	movl	$1, %edx
	cmpl	$1, %esi
	je	.LBB13_8
# %bb.7:
	shrq	$17, %rax
	andl	$2, %eax
	movq	%rax, %rdx
	jmp	.LBB13_8
.LBB13_5:
	xorl	%edx, %edx
.LBB13_8:
	leaq	(,%rdx,8), %rsi
	movq	server+1808(%rsi,%rsi,2), %rdi
	addq	$-1, %rdi
	xorl	%eax, %eax
	cmpq	%rcx, %rdi
	setb	%al
	movq	server+1816(%rsi,%rsi,2), %rsi
	addq	$-1, %rsi
	cmpq	%rcx, %rsi
	setb	%cl
	jb	.LBB13_9
# %bb.12:
	movq	$0, 152(%rbx)
	jmp	.LBB13_13
.LBB13_9:
	movq	152(%rbx), %rdi
	movq	server+2872(%rip), %rsi
	testq	%rdi, %rdi
	je	.LBB13_10
# %bb.11:
	subq	%rdi, %rsi
	leaq	(%rdx,%rdx,2), %rdx
	cmpq	server+1824(,%rdx,8), %rsi
	setg	%dl
	andb	%cl, %dl
	movzbl	%dl, %ecx
	orl	%eax, %ecx
	jne	.LBB13_15
.LBB13_18:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB13_10:
	movq	%rsi, 152(%rbx)
.LBB13_13:
	xorl	%ecx, %ecx
	orl	%eax, %ecx
	je	.LBB13_18
.LBB13_15:
	callq	sdsempty
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	catClientInfoString
	movq	%rax, %r14
	movl	160(%rbx), %eax
	testl	$1280, %eax             # imm = 0x500
	jne	.LBB13_17
# %bb.16:
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 160(%rbx)
	movq	server+520(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
.LBB13_17:
	movl	$.L.str.96, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.LBB13_19:
	movl	$.L.str.95, %edi
	movl	$.L.str.1, %esi
	movl	$2130, %edx             # imm = 0x852
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end13:
	.size	asyncCloseClientOnOutputBufferLimitReached, .Lfunc_end13-asyncCloseClientOnOutputBufferLimitReached
                                        # -- End function
	.globl	addReply                # -- Begin function addReply
	.p2align	4, 0x90
	.type	addReply,@function
addReply:                               # @addReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$32, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	160(%rdi), %eax
	testl	$134217984, %eax        # imm = 0x8000100
	je	.LBB14_1
.LBB14_11:
	movb	(%rbx), %al
	shrb	$4, %al
	cmpb	$8, %al
	je	.LBB14_14
# %bb.12:
	cmpb	$1, %al
	je	.LBB14_36
# %bb.13:
	testb	%al, %al
	jne	.LBB14_42
.LBB14_14:
	movq	8(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB14_15
# %bb.16:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI14_0(,%rax,8)
.LBB14_17:
	movq	%rdx, %rbx
	shrq	$3, %rbx
	testb	$64, 160(%r14)
	je	.LBB14_23
	jmp	.LBB14_41
.LBB14_1:
	testl	$20971520, %eax         # imm = 0x1400000
	jne	.LBB14_41
# %bb.2:
	movl	%eax, %ecx
	andl	$8194, %ecx             # imm = 0x2002
	cmpl	$2, %ecx
	je	.LBB14_41
# %bb.3:
	cmpl	$0, 8(%r14)
	jle	.LBB14_41
# %bb.4:
	cmpl	$0, 528(%r14)
	jne	.LBB14_11
# %bb.5:
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB14_11
# %bb.6:
	movq	112(%r14), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB14_11
# %bb.7:
	movl	168(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB14_10
# %bb.8:
	cmpl	$9, %ecx
	jne	.LBB14_11
# %bb.9:
	cmpl	$0, 172(%r14)
	jne	.LBB14_11
.LBB14_10:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%r14)
	movq	server+528(%rip), %rdi
	movq	%r14, %rsi
	callq	listAddNodeHead
	jmp	.LBB14_11
.LBB14_36:
	movq	8(%rbx), %rdx
	leaq	-48(%rbp), %rdi
	movl	$32, %esi
	callq	ll2string
	testb	$64, 160(%r14)
	jne	.LBB14_41
# %bb.37:
	movslq	%eax, %rbx
	movslq	528(%r14), %rax
	movl	$16384, %ecx            # imm = 0x4000
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB14_40
# %bb.38:
	movq	112(%r14), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB14_40
# %bb.39:
	leaq	(%r14,%rax), %rdi
	addq	$532, %rdi              # imm = 0x214
	leaq	-48(%rbp), %rsi
	jmp	.LBB14_26
.LBB14_21:
	movq	-17(%rsi), %rbx
	testb	$64, 160(%r14)
	je	.LBB14_23
	jmp	.LBB14_41
.LBB14_19:
	movzwl	-5(%rsi), %ebx
	testb	$64, 160(%r14)
	je	.LBB14_23
	jmp	.LBB14_41
.LBB14_20:
	movl	-9(%rsi), %ebx
	testb	$64, 160(%r14)
	je	.LBB14_23
	jmp	.LBB14_41
.LBB14_18:
	movzbl	-3(%rsi), %ebx
	testb	$64, 160(%r14)
	je	.LBB14_23
	jmp	.LBB14_41
.LBB14_15:
	xorl	%ebx, %ebx
	testb	$64, 160(%r14)
	jne	.LBB14_41
.LBB14_23:
	movslq	528(%r14), %rax
	movl	$16384, %ecx            # imm = 0x4000
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB14_27
# %bb.24:
	movq	112(%r14), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB14_27
# %bb.25:
	leaq	(%r14,%rax), %rdi
	addq	$532, %rdi              # imm = 0x214
.LBB14_26:
	movq	%rbx, %rdx
	callq	memcpy
	addl	%ebx, 528(%r14)
	jmp	.LBB14_41
.LBB14_27:
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB14_28
# %bb.29:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI14_1(,%rax,8)
.LBB14_30:
	shrq	$3, %rdx
	jmp	.LBB14_35
.LBB14_40:
	leaq	-48(%rbp), %rsi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	_addReplyStringToList
.LBB14_41:
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB14_34:
	movq	-17(%rsi), %rdx
	jmp	.LBB14_35
.LBB14_28:
	xorl	%edx, %edx
	jmp	.LBB14_35
.LBB14_31:
	movzbl	-3(%rsi), %edx
	jmp	.LBB14_35
.LBB14_32:
	movzwl	-5(%rsi), %edx
	jmp	.LBB14_35
.LBB14_33:
	movl	-9(%rsi), %edx
.LBB14_35:
	movq	%r14, %rdi
	addq	$32, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_addReplyStringToList   # TAILCALL
.LBB14_42:
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %edx
	movl	$318, %esi              # imm = 0x13E
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end14:
	.size	addReply, .Lfunc_end14-addReply
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI14_0:
	.quad	.LBB14_17
	.quad	.LBB14_18
	.quad	.LBB14_19
	.quad	.LBB14_20
	.quad	.LBB14_21
.LJTI14_1:
	.quad	.LBB14_30
	.quad	.LBB14_31
	.quad	.LBB14_32
	.quad	.LBB14_33
	.quad	.LBB14_34
                                        # -- End function
	.text
	.globl	addReplySds             # -- Begin function addReplySds
	.p2align	4, 0x90
	.type	addReplySds,@function
addReplySds:                            # @addReplySds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	160(%rdi), %eax
	testl	$134217984, %eax        # imm = 0x8000100
	je	.LBB15_1
.LBB15_11:
	movzbl	-1(%r14), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_12
# %bb.13:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_14:
	movq	%rdx, %rbx
	shrq	$3, %rbx
	testb	$64, 160(%r15)
	je	.LBB15_20
	jmp	.LBB15_32
.LBB15_1:
	testl	$20971520, %eax         # imm = 0x1400000
	jne	.LBB15_32
# %bb.2:
	movl	%eax, %ecx
	andl	$8194, %ecx             # imm = 0x2002
	cmpl	$2, %ecx
	je	.LBB15_32
# %bb.3:
	cmpl	$0, 8(%r15)
	jle	.LBB15_32
# %bb.4:
	cmpl	$0, 528(%r15)
	jne	.LBB15_11
# %bb.5:
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB15_11
# %bb.6:
	movq	112(%r15), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB15_11
# %bb.7:
	movl	168(%r15), %ecx
	testl	%ecx, %ecx
	je	.LBB15_10
# %bb.8:
	cmpl	$9, %ecx
	jne	.LBB15_11
# %bb.9:
	cmpl	$0, 172(%r15)
	jne	.LBB15_11
.LBB15_10:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%r15)
	movq	server+528(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeHead
	jmp	.LBB15_11
.LBB15_12:
	xorl	%ebx, %ebx
	testb	$64, 160(%r15)
	je	.LBB15_20
	jmp	.LBB15_32
.LBB15_15:
	movzbl	-3(%r14), %ebx
	testb	$64, 160(%r15)
	je	.LBB15_20
	jmp	.LBB15_32
.LBB15_16:
	movzwl	-5(%r14), %ebx
	testb	$64, 160(%r15)
	je	.LBB15_20
	jmp	.LBB15_32
.LBB15_17:
	movl	-9(%r14), %ebx
	testb	$64, 160(%r15)
	je	.LBB15_20
	jmp	.LBB15_32
.LBB15_18:
	movq	-17(%r14), %rbx
	testb	$64, 160(%r15)
	jne	.LBB15_32
.LBB15_20:
	movslq	528(%r15), %rax
	movl	$16384, %ecx            # imm = 0x4000
	subq	%rax, %rcx
	cmpq	%rbx, %rcx
	jb	.LBB15_23
# %bb.21:
	movq	112(%r15), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB15_23
# %bb.22:
	leaq	(%r15,%rax), %rdi
	addq	$532, %rdi              # imm = 0x214
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addl	%ebx, 528(%r15)
	jmp	.LBB15_32
.LBB15_23:
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_24
# %bb.25:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_1(,%rax,8)
.LBB15_26:
	shrq	$3, %rdx
	jmp	.LBB15_31
.LBB15_24:
	xorl	%edx, %edx
	jmp	.LBB15_31
.LBB15_27:
	movzbl	-3(%r14), %edx
	jmp	.LBB15_31
.LBB15_28:
	movzwl	-5(%r14), %edx
	jmp	.LBB15_31
.LBB15_29:
	movl	-9(%r14), %edx
	jmp	.LBB15_31
.LBB15_30:
	movq	-17(%r14), %rdx
.LBB15_31:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	_addReplyStringToList
.LBB15_32:
	movq	%r14, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.Lfunc_end15:
	.size	addReplySds, .Lfunc_end15-addReplySds
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_14
	.quad	.LBB15_15
	.quad	.LBB15_16
	.quad	.LBB15_17
	.quad	.LBB15_18
.LJTI15_1:
	.quad	.LBB15_26
	.quad	.LBB15_27
	.quad	.LBB15_28
	.quad	.LBB15_29
	.quad	.LBB15_30
                                        # -- End function
	.text
	.globl	addReplyString          # -- Begin function addReplyString
	.p2align	4, 0x90
	.type	addReplyString,@function
addReplyString:                         # @addReplyString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	160(%rdi), %eax
	testl	$134217984, %eax        # imm = 0x8000100
	je	.LBB16_2
# %bb.1:
	leaq	528(%rbx), %r12
.LBB16_12:
	testb	$64, %al
	jne	.LBB16_16
# %bb.13:
	movslq	(%r12), %rax
	movl	$16384, %ecx            # imm = 0x4000
	subq	%rax, %rcx
	cmpq	%r14, %rcx
	jb	.LBB16_17
# %bb.14:
	movq	112(%rbx), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB16_17
# %bb.15:
	leaq	(%rbx,%rax), %rdi
	addq	$532, %rdi              # imm = 0x214
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	addl	%r14d, 528(%rbx)
	jmp	.LBB16_16
.LBB16_2:
	testl	$20971520, %eax         # imm = 0x1400000
	jne	.LBB16_16
# %bb.3:
	movl	%eax, %ecx
	andl	$8194, %ecx             # imm = 0x2002
	cmpl	$2, %ecx
	je	.LBB16_16
# %bb.4:
	cmpl	$0, 8(%rbx)
	jle	.LBB16_16
# %bb.5:
	leaq	528(%rbx), %r12
	cmpl	$0, 528(%rbx)
	jne	.LBB16_12
# %bb.6:
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB16_12
# %bb.7:
	movq	112(%rbx), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB16_12
# %bb.8:
	movl	168(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB16_11
# %bb.9:
	cmpl	$9, %ecx
	jne	.LBB16_12
# %bb.10:
	cmpl	$0, 172(%rbx)
	jne	.LBB16_12
.LBB16_11:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%rbx)
	movq	server+528(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeHead
	movl	160(%rbx), %eax
	jmp	.LBB16_12
.LBB16_16:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_17:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_addReplyStringToList   # TAILCALL
.Lfunc_end16:
	.size	addReplyString, .Lfunc_end16-addReplyString
                                        # -- End function
	.globl	addReplyErrorLength     # -- Begin function addReplyErrorLength
	.p2align	4, 0x90
	.type	addReplyErrorLength,@function
addReplyErrorLength:                    # @addReplyErrorLength
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
	testq	%rdx, %rdx
	je	.LBB17_2
# %bb.1:
	cmpb	$45, (%r14)
	je	.LBB17_3
.LBB17_2:
	movl	$.L.str.3, %esi
	movl	$5, %edx
	movq	%rbx, %rdi
	callq	addReplyString
.LBB17_3:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	addReplyString
	movl	$.L.str.4, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	callq	addReplyString
	movl	160(%rbx), %eax
	testb	$3, %al
	je	.LBB17_9
# %bb.4:
	movl	%eax, %ecx
	andl	$4, %ecx
	jne	.LBB17_9
# %bb.5:
	movl	$.L.str.5, %edx
	movl	$.L.str.6, %esi
	testb	$2, %al
	movl	$.L.str.6, %ecx
	cmovneq	%rdx, %rcx
	cmovneq	%rsi, %rdx
	movq	88(%rbx), %rax
	testq	%rax, %rax
	je	.LBB17_6
# %bb.7:
	movq	(%rax), %r9
	jmp	.LBB17_8
.LBB17_9:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB17_6:
	movl	$.L.str.7, %r9d
.LBB17_8:
	movl	$.L.str.8, %esi
	movl	$3, %edi
	movq	%r14, %r8
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	serverLog               # TAILCALL
.Lfunc_end17:
	.size	addReplyErrorLength, .Lfunc_end17-addReplyErrorLength
                                        # -- End function
	.globl	addReplyError           # -- Begin function addReplyError
	.p2align	4, 0x90
	.type	addReplyError,@function
addReplyError:                          # @addReplyError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	%rsi, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyErrorLength     # TAILCALL
.Lfunc_end18:
	.size	addReplyError, .Lfunc_end18-addReplyError
                                        # -- End function
	.globl	addReplyErrorFormat     # -- Begin function addReplyErrorFormat
	.p2align	4, 0x90
	.type	addReplyErrorFormat,@function
addReplyErrorFormat:                    # @addReplyErrorFormat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$208, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB19_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB19_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	callq	sdsempty
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	sdscatvprintf
	movq	%rax, %rbx
	movzbl	-1(%rax), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB19_19
# %bb.3:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI19_0(,%rcx,8)
.LBB19_4:
	movq	%rax, %rsi
	shrq	$3, %rsi
	testq	%rsi, %rsi
	jne	.LBB19_10
	jmp	.LBB19_19
.LBB19_5:
	movzbl	-3(%rbx), %esi
	testq	%rsi, %rsi
	jne	.LBB19_10
	jmp	.LBB19_19
.LBB19_6:
	movzwl	-5(%rbx), %esi
	testq	%rsi, %rsi
	jne	.LBB19_10
	jmp	.LBB19_19
.LBB19_7:
	movl	-9(%rbx), %esi
	testq	%rsi, %rsi
	jne	.LBB19_10
	jmp	.LBB19_19
.LBB19_8:
	movq	-17(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB19_19
.LBB19_10:
	leaq	-1(%rsi), %rax
	movl	%esi, %edi
	andl	$3, %edi
	cmpq	$3, %rax
	jae	.LBB19_21
# %bb.11:
	xorl	%edx, %edx
.LBB19_12:
	testq	%rdi, %rdi
	je	.LBB19_18
# %bb.13:                               # %.preheader
	movq	%rbx, %rcx
	addq	%rdx, %rcx
	xorl	%edx, %edx
	jmp	.LBB19_14
	.p2align	4, 0x90
.LBB19_16:                              #   in Loop: Header=BB19_14 Depth=1
	movb	$32, (%rcx,%rdx)
.LBB19_17:                              #   in Loop: Header=BB19_14 Depth=1
	addq	$1, %rdx
	cmpq	%rdx, %rdi
	je	.LBB19_18
.LBB19_14:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rcx,%rdx), %eax
	cmpb	$13, %al
	je	.LBB19_16
# %bb.15:                               #   in Loop: Header=BB19_14 Depth=1
	cmpb	$10, %al
	je	.LBB19_16
	jmp	.LBB19_17
.LBB19_18:
	movb	-1(%rbx), %al
.LBB19_19:
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB19_20
# %bb.35:
	movzbl	%al, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI19_1(,%rcx,8)
.LBB19_36:
	shrb	$3, %al
	movzbl	%al, %edx
	jmp	.LBB19_41
.LBB19_21:
	subq	%rdi, %rsi
	xorl	%edx, %edx
	jmp	.LBB19_22
	.p2align	4, 0x90
.LBB19_33:                              #   in Loop: Header=BB19_22 Depth=1
	movb	$32, 3(%rbx,%rdx)
.LBB19_34:                              #   in Loop: Header=BB19_22 Depth=1
	addq	$4, %rdx
	cmpq	%rdx, %rsi
	je	.LBB19_12
.LBB19_22:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rbx,%rdx), %ecx
	cmpb	$13, %cl
	je	.LBB19_24
# %bb.23:                               #   in Loop: Header=BB19_22 Depth=1
	cmpb	$10, %cl
	jne	.LBB19_25
.LBB19_24:                              #   in Loop: Header=BB19_22 Depth=1
	movb	$32, (%rbx,%rdx)
.LBB19_25:                              #   in Loop: Header=BB19_22 Depth=1
	movzbl	1(%rbx,%rdx), %ecx
	cmpb	$10, %cl
	je	.LBB19_27
# %bb.26:                               #   in Loop: Header=BB19_22 Depth=1
	cmpb	$13, %cl
	jne	.LBB19_28
.LBB19_27:                              #   in Loop: Header=BB19_22 Depth=1
	movb	$32, 1(%rbx,%rdx)
.LBB19_28:                              #   in Loop: Header=BB19_22 Depth=1
	movzbl	2(%rbx,%rdx), %ecx
	cmpb	$13, %cl
	je	.LBB19_30
# %bb.29:                               #   in Loop: Header=BB19_22 Depth=1
	cmpb	$10, %cl
	jne	.LBB19_31
.LBB19_30:                              #   in Loop: Header=BB19_22 Depth=1
	movb	$32, 2(%rbx,%rdx)
.LBB19_31:                              #   in Loop: Header=BB19_22 Depth=1
	movzbl	3(%rbx,%rdx), %ecx
	cmpb	$13, %cl
	je	.LBB19_33
# %bb.32:                               #   in Loop: Header=BB19_22 Depth=1
	cmpb	$10, %cl
	je	.LBB19_33
	jmp	.LBB19_34
.LBB19_20:
	xorl	%edx, %edx
	jmp	.LBB19_41
.LBB19_37:
	movzbl	-3(%rbx), %edx
	jmp	.LBB19_41
.LBB19_38:
	movzwl	-5(%rbx), %edx
	jmp	.LBB19_41
.LBB19_39:
	movl	-9(%rbx), %edx
	jmp	.LBB19_41
.LBB19_40:
	movq	-17(%rbx), %rdx
.LBB19_41:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyErrorLength
	movq	%rbx, %rdi
	callq	sdsfree
	addq	$208, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end19:
	.size	addReplyErrorFormat, .Lfunc_end19-addReplyErrorFormat
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_4
	.quad	.LBB19_5
	.quad	.LBB19_6
	.quad	.LBB19_7
	.quad	.LBB19_8
.LJTI19_1:
	.quad	.LBB19_36
	.quad	.LBB19_37
	.quad	.LBB19_38
	.quad	.LBB19_39
	.quad	.LBB19_40
                                        # -- End function
	.text
	.globl	addReplyStatusLength    # -- Begin function addReplyStatusLength
	.p2align	4, 0x90
	.type	addReplyStatusLength,@function
addReplyStatusLength:                   # @addReplyStatusLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movl	$.L.str.9, %esi
	movl	$1, %edx
	callq	addReplyString
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	addReplyString
	movl	$.L.str.4, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyString          # TAILCALL
.Lfunc_end20:
	.size	addReplyStatusLength, .Lfunc_end20-addReplyStatusLength
                                        # -- End function
	.globl	addReplyStatus          # -- Begin function addReplyStatus
	.p2align	4, 0x90
	.type	addReplyStatus,@function
addReplyStatus:                         # @addReplyStatus
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	strlen
	movq	%rax, %r15
	movl	$.L.str.9, %esi
	movl	$1, %edx
	movq	%rbx, %rdi
	callq	addReplyString
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	addReplyString
	movl	$.L.str.4, %esi
	movl	$2, %edx
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyString          # TAILCALL
.Lfunc_end21:
	.size	addReplyStatus, .Lfunc_end21-addReplyStatus
                                        # -- End function
	.globl	addReplyStatusFormat    # -- Begin function addReplyStatusFormat
	.p2align	4, 0x90
	.type	addReplyStatusFormat,@function
addReplyStatusFormat:                   # @addReplyStatusFormat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$200, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	testb	%al, %al
	je	.LBB22_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB22_2:
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -48(%rbp)
	callq	sdsempty
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	sdscatvprintf
	movq	%rax, %r15
	movzbl	-1(%rax), %ebx
	movl	%ebx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB22_3
# %bb.4:
	movl	%ebx, %eax
	andl	$7, %eax
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_5:
	shrq	$3, %rbx
	jmp	.LBB22_10
.LBB22_3:
	xorl	%ebx, %ebx
	jmp	.LBB22_10
.LBB22_6:
	movzbl	-3(%r15), %ebx
	jmp	.LBB22_10
.LBB22_7:
	movzwl	-5(%r15), %ebx
	jmp	.LBB22_10
.LBB22_8:
	movl	-9(%r15), %ebx
	jmp	.LBB22_10
.LBB22_9:
	movq	-17(%r15), %rbx
.LBB22_10:
	movl	$.L.str.9, %esi
	movl	$1, %edx
	movq	%r14, %rdi
	callq	addReplyString
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	addReplyString
	movl	$.L.str.4, %esi
	movl	$2, %edx
	movq	%r14, %rdi
	callq	addReplyString
	movq	%r15, %rdi
	callq	sdsfree
	addq	$200, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end22:
	.size	addReplyStatusFormat, .Lfunc_end22-addReplyStatusFormat
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI22_0:
	.quad	.LBB22_5
	.quad	.LBB22_6
	.quad	.LBB22_7
	.quad	.LBB22_8
	.quad	.LBB22_9
                                        # -- End function
	.text
	.globl	addDeferredMultiBulkLength # -- Begin function addDeferredMultiBulkLength
	.p2align	4, 0x90
	.type	addDeferredMultiBulkLength,@function
addDeferredMultiBulkLength:             # @addDeferredMultiBulkLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	160(%rdi), %ecx
	testl	$134217984, %ecx        # imm = 0x8000100
	je	.LBB23_1
.LBB23_12:
	movq	112(%rbx), %rdi
	xorl	%esi, %esi
	callq	listAddNodeTail
	movq	112(%rbx), %rax
	movq	8(%rax), %rax
.LBB23_13:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB23_1:
	xorl	%eax, %eax
	testl	$20971520, %ecx         # imm = 0x1400000
	jne	.LBB23_13
# %bb.2:
	movl	%ecx, %edx
	andl	$8194, %edx             # imm = 0x2002
	cmpl	$2, %edx
	je	.LBB23_13
# %bb.3:
	cmpl	$0, 8(%rbx)
	jle	.LBB23_4
# %bb.5:
	cmpl	$0, 528(%rbx)
	jne	.LBB23_12
# %bb.6:
	testl	$2097152, %ecx          # imm = 0x200000
	jne	.LBB23_12
# %bb.7:
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB23_12
# %bb.8:
	movl	168(%rbx), %eax
	testl	%eax, %eax
	je	.LBB23_11
# %bb.9:
	cmpl	$9, %eax
	jne	.LBB23_12
# %bb.10:
	cmpl	$0, 172(%rbx)
	jne	.LBB23_12
.LBB23_11:
	orl	$2097152, %ecx          # imm = 0x200000
	movl	%ecx, 160(%rbx)
	movq	server+528(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeHead
	jmp	.LBB23_12
.LBB23_4:
	xorl	%eax, %eax
	jmp	.LBB23_13
.Lfunc_end23:
	.size	addDeferredMultiBulkLength, .Lfunc_end23-addDeferredMultiBulkLength
                                        # -- End function
	.globl	setDeferredMultiBulkLength # -- Begin function setDeferredMultiBulkLength
	.p2align	4, 0x90
	.type	setDeferredMultiBulkLength,@function
setDeferredMultiBulkLength:             # @setDeferredMultiBulkLength
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %r13
	movq	%rdi, %r14
	leaq	-176(%rbp), %rdi
	movl	$.L.str.10, %esi
	xorl	%eax, %eax
	callq	sprintf
	testq	%r13, %r13
	je	.LBB24_9
# %bb.1:
	cmpq	$0, 16(%r13)
	jne	.LBB24_10
# %bb.2:
	movslq	%eax, %r15
	movq	8(%r13), %rax
	testq	%rax, %rax
	je	.LBB24_7
# %bb.3:
	movq	16(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB24_7
# %bb.4:
	movq	8(%rbx), %rdx
	cmpq	$65535, %rdx            # imm = 0xFFFF
	ja	.LBB24_7
# %bb.5:
	movq	(%rbx), %rax
	subq	%rdx, %rax
	cmpq	%r15, %rax
	jb	.LBB24_7
# %bb.6:
	leaq	16(%rbx), %r12
	leaq	(%rbx,%r15), %rdi
	addq	$16, %rdi
	movq	%r12, %rsi
	callq	memmove
	leaq	-176(%rbp), %rsi
	movq	%r12, %rdi
	movq	%r15, %rdx
	callq	memcpy
	addq	%r15, 8(%rbx)
	movq	112(%r14), %rdi
	movq	%r13, %rsi
	callq	listDelNode
	jmp	.LBB24_8
.LBB24_7:
	leaq	16(%r15), %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	zmalloc_usable
	addq	$-16, %rax
	movq	%rax, (%rbx)
	movq	%r15, 8(%rbx)
	leaq	16(%rbx), %rdi
	leaq	-176(%rbp), %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	%rbx, 16(%r13)
	movq	(%rbx), %rax
	addq	%rax, 120(%r14)
.LBB24_8:
	movq	%r14, %rdi
	callq	asyncCloseClientOnOutputBufferLimitReached
.LBB24_9:
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_10:
	movl	$.L.str.11, %edi
	movl	$.L.str.1, %esi
	movl	$444, %edx              # imm = 0x1BC
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end24:
	.size	setDeferredMultiBulkLength, .Lfunc_end24-setDeferredMultiBulkLength
                                        # -- End function
	.globl	addReplyDouble          # -- Begin function addReplyDouble
	.p2align	4, 0x90
	.type	addReplyDouble,@function
addReplyDouble:                         # @addReplyDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movq	%rdi, %r14
	movsd	%xmm0, -32(%rbp)        # 8-byte Spill
	callq	__fpclassifyd
	cmpl	$1, %eax
	jne	.LBB25_2
# %bb.1:
	xorpd	%xmm0, %xmm0
	movsd	-32(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm0, %xmm1
	movl	$.L.str.12, %eax
	movl	$.L.str.13, %ebx
	cmovaq	%rax, %rbx
	movq	%rbx, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	callq	addReplyBulkCBuffer
	jmp	.LBB25_3
.LBB25_2:
	leaq	-288(%rbp), %r15
	movl	$128, %esi
	movl	$.L.str.14, %edx
	movq	%r15, %rdi
	movsd	-32(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movb	$1, %al
	callq	snprintf
	leaq	-160(%rbp), %rbx
	movl	$128, %esi
	movl	$.L.str.15, %edx
	movq	%rbx, %rdi
	movl	%eax, %ecx
	movq	%r15, %r8
	xorl	%eax, %eax
	callq	snprintf
	movslq	%eax, %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReplyString
.LBB25_3:
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	addReplyDouble, .Lfunc_end25-addReplyDouble
                                        # -- End function
	.globl	addReplyBulkCString     # -- Begin function addReplyBulkCString
	.p2align	4, 0x90
	.type	addReplyBulkCString,@function
addReplyBulkCString:                    # @addReplyBulkCString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	testq	%rsi, %rsi
	je	.LBB26_1
# %bb.2:
	movq	%rsi, %rbx
	movq	%rsi, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%rax, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReplyBulkCBuffer     # TAILCALL
.LBB26_1:
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end26:
	.size	addReplyBulkCString, .Lfunc_end26-addReplyBulkCString
                                        # -- End function
	.globl	addReplyHumanLongDouble # -- Begin function addReplyHumanLongDouble
	.p2align	4, 0x90
	.type	addReplyHumanLongDouble,@function
addReplyHumanLongDouble:                # @addReplyHumanLongDouble
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	fldt	16(%rbp)
	fstpt	(%rsp)
	movl	$1, %edi
	callq	createStringObjectFromLongDouble
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulkLen
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	addReply
	movq	shared(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movq	%rbx, %rdi
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	decrRefCount            # TAILCALL
.Lfunc_end27:
	.size	addReplyHumanLongDouble, .Lfunc_end27-addReplyHumanLongDouble
                                        # -- End function
	.globl	addReplyBulk            # -- Begin function addReplyBulk
	.p2align	4, 0x90
	.type	addReplyBulk,@function
addReplyBulk:                           # @addReplyBulk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	addReplyBulkLen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReply
	movq	shared(%rip), %rsi
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	addReply                # TAILCALL
.Lfunc_end28:
	.size	addReplyBulk, .Lfunc_end28-addReplyBulk
                                        # -- End function
	.globl	addReplyLongLongWithPrefix # -- Begin function addReplyLongLongWithPrefix
	.p2align	4, 0x90
	.type	addReplyLongLongWithPrefix,@function
addReplyLongLongWithPrefix:             # @addReplyLongLongWithPrefix
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %rax
	movq	%rdi, %rbx
	cmpq	$31, %rsi
	ja	.LBB29_4
# %bb.1:
	cmpb	$42, %dl
	jne	.LBB29_4
# %bb.2:
	movq	shared+80448(,%rax,8), %rsi
	jmp	.LBB29_3
.LBB29_4:
	cmpq	$31, %rax
	ja	.LBB29_7
# %bb.5:
	cmpb	$36, %dl
	jne	.LBB29_7
# %bb.6:
	movq	shared+80704(,%rax,8), %rsi
.LBB29_3:
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB29_8
.LBB29_7:
	movb	%dl, -144(%rbp)
	leaq	-143(%rbp), %rdi
	movl	$127, %esi
	movq	%rax, %rdx
	callq	ll2string
	cltq
	leaq	-144(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	addReplyString
.LBB29_8:
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end29:
	.size	addReplyLongLongWithPrefix, .Lfunc_end29-addReplyLongLongWithPrefix
                                        # -- End function
	.globl	addReplyLongLong        # -- Begin function addReplyLongLong
	.p2align	4, 0x90
	.type	addReplyLongLong,@function
addReplyLongLong:                       # @addReplyLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %rbx
	cmpq	$1, %rsi
	je	.LBB30_4
# %bb.1:
	movq	%rsi, %rdx
	testq	%rsi, %rsi
	jne	.LBB30_5
# %bb.2:
	movq	shared+32(%rip), %rsi
	jmp	.LBB30_3
.LBB30_4:
	movq	shared+40(%rip), %rsi
.LBB30_3:
	movq	%rbx, %rdi
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB30_5:
	movb	$58, -144(%rbp)
	leaq	-143(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	leaq	-144(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	addReplyString
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end30:
	.size	addReplyLongLong, .Lfunc_end30-addReplyLongLong
                                        # -- End function
	.globl	addReplyMultiBulkLen    # -- Begin function addReplyMultiBulkLen
	.p2align	4, 0x90
	.type	addReplyMultiBulkLen,@function
addReplyMultiBulkLen:                   # @addReplyMultiBulkLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	cmpq	$31, %rsi
	jg	.LBB31_1
# %bb.2:
	movq	shared+80448(,%rdx,8), %rsi
	movq	%rbx, %rdi
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB31_1:
	movb	$42, -144(%rbp)
	leaq	-143(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	leaq	-144(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	addReplyString
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	addReplyMultiBulkLen, .Lfunc_end31-addReplyMultiBulkLen
                                        # -- End function
	.globl	addReplyBulkLen         # -- Begin function addReplyBulkLen
	.p2align	4, 0x90
	.type	addReplyBulkLen,@function
addReplyBulkLen:                        # @addReplyBulkLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdi, %rbx
	movb	(%rsi), %al
	shrb	$4, %al
	orb	$8, %al
	cmpb	$8, %al
	jne	.LBB32_10
# %bb.1:
	movq	8(%rsi), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB32_2
# %bb.3:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI32_0(,%rdx,8)
.LBB32_4:
	shrq	$3, %rcx
	jmp	.LBB32_5
.LBB32_10:
	movq	8(%rsi), %rdx
	movq	%rdx, %rcx
	shrq	$63, %rcx
	addq	$1, %rcx
	movq	%rdx, %rax
	negq	%rax
	cmovlq	%rdx, %rax
	leaq	9(%rax), %rdx
	cmpq	$19, %rdx
	jb	.LBB32_5
# %bb.11:                               # %.preheader
	movabsq	$7378697629483820647, %rsi # imm = 0x6666666666666667
	.p2align	4, 0x90
.LBB32_12:                              # =>This Inner Loop Header: Depth=1
	imulq	%rsi
	movq	%rdx, %rdi
	shrq	$63, %rdi
	sarq	$2, %rdx
	leaq	(%rdx,%rdi), %rax
	addq	$1, %rcx
	addq	%rdi, %rdx
	addq	$9, %rdx
	cmpq	$18, %rdx
	ja	.LBB32_12
	jmp	.LBB32_13
.LBB32_2:
	xorl	%ecx, %ecx
	jmp	.LBB32_5
.LBB32_6:
	movzbl	-3(%rax), %ecx
	cmpq	$31, %rcx
	jbe	.LBB32_5
	jmp	.LBB32_14
.LBB32_7:
	movzwl	-5(%rax), %ecx
	cmpq	$31, %rcx
	jbe	.LBB32_5
	jmp	.LBB32_14
.LBB32_8:
	movl	-9(%rax), %ecx
.LBB32_13:
	cmpq	$31, %rcx
	ja	.LBB32_14
.LBB32_5:
	movq	shared+80704(,%rcx,8), %rsi
	movq	%rbx, %rdi
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB32_9:
	movq	-17(%rax), %rcx
	cmpq	$31, %rcx
	jbe	.LBB32_5
.LBB32_14:
	movb	$36, -144(%rbp)
	leaq	-143(%rbp), %rdi
	movl	$127, %esi
	movq	%rcx, %rdx
	callq	ll2string
	cltq
	leaq	-144(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	callq	addReplyString
	addq	$136, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end32:
	.size	addReplyBulkLen, .Lfunc_end32-addReplyBulkLen
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_4
	.quad	.LBB32_6
	.quad	.LBB32_7
	.quad	.LBB32_8
	.quad	.LBB32_9
                                        # -- End function
	.text
	.globl	addReplyBulkCBuffer     # -- Begin function addReplyBulkCBuffer
	.p2align	4, 0x90
	.type	addReplyBulkCBuffer,@function
addReplyBulkCBuffer:                    # @addReplyBulkCBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, %rbx
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpq	$31, %rdx
	ja	.LBB33_2
# %bb.1:
	movq	shared+80704(,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB33_3
.LBB33_2:
	movb	$36, -160(%rbp)
	leaq	-159(%rbp), %rdi
	movl	$127, %esi
	movq	%rbx, %rdx
	callq	ll2string
	cltq
	leaq	-160(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%r14, %rdi
	callq	addReplyString
.LBB33_3:
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	callq	addReplyString
	movq	shared(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	addReplyBulkCBuffer, .Lfunc_end33-addReplyBulkCBuffer
                                        # -- End function
	.globl	addReplyBulkSds         # -- Begin function addReplyBulkSds
	.p2align	4, 0x90
	.type	addReplyBulkSds,@function
addReplyBulkSds:                        # @addReplyBulkSds
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$136, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB34_1
# %bb.2:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI34_0(,%rax,8)
.LBB34_6:
	shrq	$3, %rdx
	jmp	.LBB34_9
.LBB34_1:
	xorl	%edx, %edx
	jmp	.LBB34_9
.LBB34_7:
	movzbl	-3(%r14), %edx
	cmpq	$31, %rdx
	ja	.LBB34_10
	jmp	.LBB34_9
.LBB34_3:
	movzwl	-5(%r14), %edx
	cmpq	$31, %rdx
	ja	.LBB34_10
	jmp	.LBB34_9
.LBB34_4:
	movl	-9(%r14), %edx
	cmpq	$31, %rdx
	jbe	.LBB34_9
.LBB34_10:
	leaq	-160(%rbp), %r15
	movb	$36, -160(%rbp)
	leaq	-159(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	movw	$2573, 1(%rax,%r15)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyString
	jmp	.LBB34_11
.LBB34_5:
	movq	-17(%r14), %rdx
	cmpq	$31, %rdx
	ja	.LBB34_10
.LBB34_9:
	movq	shared+80704(,%rdx,8), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB34_11:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplySds
	movq	shared(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	addq	$136, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	addReplyBulkSds, .Lfunc_end34-addReplyBulkSds
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI34_0:
	.quad	.LBB34_6
	.quad	.LBB34_7
	.quad	.LBB34_3
	.quad	.LBB34_4
	.quad	.LBB34_5
                                        # -- End function
	.text
	.globl	addReplyBulkLongLong    # -- Begin function addReplyBulkLongLong
	.p2align	4, 0x90
	.type	addReplyBulkLongLong,@function
addReplyBulkLongLong:                   # @addReplyBulkLongLong
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$64, %rsp
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	leaq	-80(%rbp), %r14
	movl	$64, %esi
	movq	%r14, %rdi
	callq	ll2string
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	addq	$64, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end35:
	.size	addReplyBulkLongLong, .Lfunc_end35-addReplyBulkLongLong
                                        # -- End function
	.globl	addReplyHelp            # -- Begin function addReplyHelp
	.p2align	4, 0x90
	.type	addReplyHelp,@function
addReplyHelp:                           # @addReplyHelp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r12
	movq	72(%rdi), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	sdstoupper
	movl	$.L.str.16, %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	addReplyStatusFormat
	movq	%rbx, %rdi
	callq	sdsfree
	movq	(%r14), %rbx
	testq	%rbx, %rbx
	je	.LBB36_1
# %bb.2:                                # %.preheader
	movq	%r15, -48(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	.p2align	4, 0x90
.LBB36_3:                               # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %r13
	movl	$.L.str.9, %esi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	addReplyString
	movq	%r12, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	addReplyString
	movl	$.L.str.4, %esi
	movl	$2, %edx
	movq	%r12, %rdi
	callq	addReplyString
	movq	(%r14,%r15,8), %rbx
	addq	$1, %r15
	testq	%rbx, %rbx
	jne	.LBB36_3
# %bb.4:
	movl	%r15d, %edx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB36_5
.LBB36_1:
	movl	$1, %edx
.LBB36_5:
	movq	%r12, %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	setDeferredMultiBulkLength # TAILCALL
.Lfunc_end36:
	.size	addReplyHelp, .Lfunc_end36-addReplyHelp
                                        # -- End function
	.globl	addReplySubcommandSyntaxError # -- Begin function addReplySubcommandSyntaxError
	.p2align	4, 0x90
	.type	addReplySubcommandSyntaxError,@function
addReplySubcommandSyntaxError:          # @addReplySubcommandSyntaxError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movq	72(%rdi), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	sdsnew
	movq	%rax, %rbx
	movq	%rax, %rdi
	callq	sdstoupper
	movq	72(%r14), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rdx
	movl	$.L.str.17, %esi
	movq	%r14, %rdi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movq	%rbx, %rdi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	sdsfree                 # TAILCALL
.Lfunc_end37:
	.size	addReplySubcommandSyntaxError, .Lfunc_end37-addReplySubcommandSyntaxError
                                        # -- End function
	.globl	AddReplyFromClient      # -- Begin function AddReplyFromClient
	.p2align	4, 0x90
	.type	AddReplyFromClient,@function
AddReplyFromClient:                     # @AddReplyFromClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	160(%rdi), %eax
	testl	$134217984, %eax        # imm = 0x8000100
	je	.LBB38_1
.LBB38_11:
	leaq	532(%rbx), %rsi
	movslq	528(%rbx), %rdx
	movq	%r14, %rdi
	callq	addReplyString
	movq	112(%rbx), %rsi
	cmpq	$0, 40(%rsi)
	je	.LBB38_13
# %bb.12:
	movq	112(%r14), %rdi
	callq	listJoin
.LBB38_13:
	movq	120(%rbx), %rax
	addq	%rax, 120(%r14)
	movq	$0, 120(%rbx)
	movl	$0, 528(%rbx)
.LBB38_14:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB38_1:
	testl	$20971520, %eax         # imm = 0x1400000
	jne	.LBB38_14
# %bb.2:
	movl	%eax, %ecx
	andl	$8194, %ecx             # imm = 0x2002
	cmpl	$2, %ecx
	je	.LBB38_14
# %bb.3:
	cmpl	$0, 8(%r14)
	jle	.LBB38_14
# %bb.4:
	cmpl	$0, 528(%r14)
	jne	.LBB38_11
# %bb.5:
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB38_11
# %bb.6:
	movq	112(%r14), %rcx
	cmpq	$0, 40(%rcx)
	jne	.LBB38_11
# %bb.7:
	movl	168(%r14), %ecx
	testl	%ecx, %ecx
	je	.LBB38_10
# %bb.8:
	cmpl	$9, %ecx
	jne	.LBB38_11
# %bb.9:
	cmpl	$0, 172(%r14)
	jne	.LBB38_11
.LBB38_10:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%r14)
	movq	server+528(%rip), %rdi
	movq	%r14, %rsi
	callq	listAddNodeHead
	jmp	.LBB38_11
.Lfunc_end38:
	.size	AddReplyFromClient, .Lfunc_end38-AddReplyFromClient
                                        # -- End function
	.globl	copyClientOutputBuffer  # -- Begin function copyClientOutputBuffer
	.p2align	4, 0x90
	.type	copyClientOutputBuffer,@function
copyClientOutputBuffer:                 # @copyClientOutputBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	112(%rdi), %rdi
	callq	listRelease
	movq	$0, 128(%rbx)
	movq	112(%r14), %rdi
	callq	listDup
	movq	%rax, 112(%rbx)
	leaq	532(%rbx), %rdi
	leaq	532(%r14), %rsi
	movslq	528(%r14), %rdx
	callq	memcpy
	movl	528(%r14), %eax
	movl	%eax, 528(%rbx)
	movq	120(%r14), %rax
	movq	%rax, 120(%rbx)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end39:
	.size	copyClientOutputBuffer, .Lfunc_end39-copyClientOutputBuffer
                                        # -- End function
	.globl	acceptTcpHandler        # -- Begin function acceptTcpHandler
	.p2align	4, 0x90
	.type	acceptTcpHandler,@function
acceptTcpHandler:                       # @acceptTcpHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	%esi, %r14d
	movl	$-1000, %r13d           # imm = 0xFC18
	leaq	-96(%rbp), %r12
	leaq	-44(%rbp), %r15
	.p2align	4, 0x90
.LBB40_1:                               # =>This Inner Loop Header: Depth=1
	movl	$server+584, %edi
	movl	$46, %ecx
	movl	%r14d, %esi
	movq	%r12, %rdx
	movq	%r15, %r8
	callq	anetTcpAccept
	cmpl	$-1, %eax
	je	.LBB40_2
# %bb.4:                                #   in Loop: Header=BB40_1 Depth=1
	movl	%eax, %ebx
	movl	-44(%rbp), %ecx
	movl	$.L.str.19, %esi
	movl	$1, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movl	%ebx, %edi
	xorl	%esi, %esi
	movq	%r12, %rdx
	callq	acceptCommonHandler
	incl	%r13d
	jne	.LBB40_1
	jmp	.LBB40_5
.LBB40_2:
	callq	__errno
	cmpl	$11, (%rax)
	je	.LBB40_5
# %bb.3:
	movl	$.L.str.18, %esi
	movl	$server+584, %edx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB40_5:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	acceptTcpHandler, .Lfunc_end40-acceptTcpHandler
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function acceptCommonHandler
	.type	acceptCommonHandler,@function
acceptCommonHandler:                    # @acceptCommonHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movl	%edi, %ebx
	callq	createClient
	testq	%rax, %rax
	je	.LBB41_13
# %bb.1:
	movq	%rax, %r12
	movq	server+512(%rip), %rax
	movl	server+2700(%rip), %ecx
	cmpq	%rcx, 40(%rax)
	jbe	.LBB41_4
# %bb.2:
	movl	8(%r12), %ebx
	movl	$.L.str.101, %edi
	callq	strlen
	movl	$.L.str.101, %esi
.LBB41_3:
	movl	%ebx, %edi
	movq	%rax, %rdx
	callq	write
	addq	$1, server+1136(%rip)
	movq	%r12, %rdi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	freeClient              # TAILCALL
.LBB41_13:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.100, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	serverLog
	movl	%ebx, %edi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	close                   # TAILCALL
.LBB41_4:
	cmpl	$0, server+856(%rip)
	je	.LBB41_12
# %bb.5:
	cmpl	$0, server+352(%rip)
	jne	.LBB41_12
# %bb.6:
	cmpq	$0, server+96(%rip)
	jne	.LBB41_12
# %bb.7:
	testl	$2048, %r14d            # imm = 0x800
	jne	.LBB41_12
# %bb.8:
	testq	%r15, %r15
	je	.LBB41_12
# %bb.9:
	movl	$.L.str.102, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB41_12
# %bb.10:
	movl	$.L.str.103, %esi
	movq	%r15, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB41_12
# %bb.11:
	movl	8(%r12), %ebx
	movl	$err, %edi
	callq	strlen
	movl	$err, %esi
	jmp	.LBB41_3
.LBB41_12:
	addq	$1, server+1016(%rip)
	orl	%r14d, 160(%r12)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end41:
	.size	acceptCommonHandler, .Lfunc_end41-acceptCommonHandler
                                        # -- End function
	.globl	acceptUnixHandler       # -- Begin function acceptUnixHandler
	.p2align	4, 0x90
	.type	acceptUnixHandler,@function
acceptUnixHandler:                      # @acceptUnixHandler
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r14d
	movl	$-1000, %r15d           # imm = 0xFC18
	.p2align	4, 0x90
.LBB42_1:                               # =>This Inner Loop Header: Depth=1
	movl	$server+584, %edi
	movl	%r14d, %esi
	callq	anetUnixAccept
	cmpl	$-1, %eax
	je	.LBB42_2
# %bb.4:                                #   in Loop: Header=BB42_1 Depth=1
	movl	%eax, %ebx
	movq	server+360(%rip), %rdx
	movl	$.L.str.20, %esi
	movl	$1, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	%ebx, %edi
	movl	$2048, %esi             # imm = 0x800
	xorl	%edx, %edx
	callq	acceptCommonHandler
	incl	%r15d
	jne	.LBB42_1
	jmp	.LBB42_5
.LBB42_2:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB42_3
.LBB42_5:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB42_3:
	movl	$.L.str.18, %esi
	movl	$server+584, %edx
	movl	$3, %edi
	xorl	%eax, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	serverLog               # TAILCALL
.Lfunc_end42:
	.size	acceptUnixHandler, .Lfunc_end42-acceptUnixHandler
                                        # -- End function
	.globl	disconnectSlaves        # -- Begin function disconnectSlaves
	.p2align	4, 0x90
	.type	disconnectSlaves,@function
disconnectSlaves:                       # @disconnectSlaves
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	.p2align	4, 0x90
.LBB43_2:                               # =>This Inner Loop Header: Depth=1
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB43_3
# %bb.1:                                #   in Loop: Header=BB43_2 Depth=1
	movq	(%rax), %rax
	movq	16(%rax), %rdi
	callq	freeClient
	jmp	.LBB43_2
.LBB43_3:
	popq	%rbp
	retq
.Lfunc_end43:
	.size	disconnectSlaves, .Lfunc_end43-disconnectSlaves
                                        # -- End function
	.globl	freeClient              # -- Begin function freeClient
	.p2align	4, 0x90
	.type	freeClient,@function
freeClient:                             # @freeClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	160(%rdi), %eax
	testl	$268435456, %eax        # imm = 0x10000000
	jne	.LBB44_1
# %bb.3:
	testb	$2, %al
	je	.LBB44_6
# %bb.4:
	cmpq	$0, server+2480(%rip)
	je	.LBB44_6
# %bb.5:
	movl	$.L.str.22, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	160(%r15), %eax
	testl	$1104, %eax             # imm = 0x450
	je	.LBB44_37
.LBB44_6:
	andl	$5, %eax
	cmpl	$1, %eax
	jne	.LBB44_8
# %bb.7:
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.23, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB44_8:
	movq	32(%r15), %rdi
	callq	sdsfree
	movq	48(%r15), %rdi
	callq	sdsfree
	movq	$0, 32(%r15)
	testb	$16, 160(%r15)
	je	.LBB44_10
# %bb.9:
	movq	%r15, %rdi
	callq	unblockClient
.LBB44_10:
	movq	400(%r15), %rdi
	callq	dictRelease
	movq	%r15, %rdi
	callq	unwatchAllKeys
	movq	488(%r15), %rdi
	callq	listRelease
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pubsubUnsubscribeAllChannels
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	pubsubUnsubscribeAllPatterns
	movq	496(%r15), %rdi
	callq	dictRelease
	movq	504(%r15), %rdi
	callq	listRelease
	movq	112(%r15), %rdi
	callq	listRelease
	cmpl	$0, 64(%r15)
	jle	.LBB44_13
# %bb.11:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB44_12:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB44_12
.LBB44_13:
	movl	$0, 64(%r15)
	movq	$0, 80(%r15)
	movq	%r15, %rdi
	callq	unlinkClient
	movl	160(%r15), %eax
	testb	$1, %al
	je	.LBB44_26
# %bb.14:
	cmpl	$8, 168(%r15)
	jne	.LBB44_19
# %bb.15:
	movl	176(%r15), %edi
	cmpl	$-1, %edi
	je	.LBB44_17
# %bb.16:
	callq	close
.LBB44_17:
	movq	200(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB44_19
# %bb.18:
	callq	sdsfree
.LBB44_19:
	testb	$4, 160(%r15)
	movl	$server+536, %eax
	movl	$server+544, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB44_20
# %bb.22:
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	testb	$1, 160(%r15)
	je	.LBB44_25
# %bb.23:
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB44_25
# %bb.24:
	movq	server+2872(%rip), %rax
	movq	%rax, server+2424(%rip)
.LBB44_25:
	callq	refreshGoodSlavesCount
	movl	160(%r15), %eax
.LBB44_26:
	testb	$2, %al
	je	.LBB44_28
# %bb.27:
	callq	replicationHandleMasterDisconnection
	movl	160(%r15), %eax
.LBB44_28:
	testl	$1024, %eax             # imm = 0x400
	je	.LBB44_32
# %bb.29:
	movq	server+520(%rip), %rdi
	movq	%r15, %rsi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB44_30
# %bb.31:
	movq	server+520(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
.LBB44_32:
	movq	24(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB44_34
# %bb.33:
	callq	decrRefCount
.LBB44_34:
	movq	72(%r15), %rdi
	callq	zfree
	movq	%r15, %rdi
	callq	freeClientMultiState
	movq	512(%r15), %rdi
	callq	sdsfree
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB44_38
# %bb.35:
	movq	40(%rdi), %rax
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmpq	*%rax                   # TAILCALL
.LBB44_1:
	testl	$1280, %eax             # imm = 0x500
	je	.LBB44_2
# %bb.36:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB44_2:
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 160(%r15)
	movq	server+520(%rip), %rdi
	movq	%r15, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	listAddNodeTail         # TAILCALL
.LBB44_37:
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	replicationCacheMaster  # TAILCALL
.LBB44_38:
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB44_20:
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$922, %edx              # imm = 0x39A
	jmp	.LBB44_21
.LBB44_30:
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$940, %edx              # imm = 0x3AC
.LBB44_21:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end44:
	.size	freeClient, .Lfunc_end44-freeClient
                                        # -- End function
	.globl	unlinkClient            # -- Begin function unlinkClient
	.p2align	4, 0x90
	.type	unlinkClient,@function
unlinkClient:                           # @unlinkClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	cmpq	%rdi, server+552(%rip)
	je	.LBB45_1
# %bb.2:
	cmpl	$-1, 8(%rbx)
	je	.LBB45_3
.LBB45_4:
	cmpq	$0, 520(%rbx)
	je	.LBB45_6
# %bb.5:
	movq	(%rbx), %rdi
	callq	intrev64
	movq	%rax, -24(%rbp)
	movq	server+560(%rip), %rdi
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	xorl	%ecx, %ecx
	callq	raxRemove
	movq	server+512(%rip), %rdi
	movq	520(%rbx), %rsi
	callq	listDelNode
	movq	$0, 520(%rbx)
.LBB45_6:
	testb	$1, 160(%rbx)
	je	.LBB45_9
# %bb.7:
	cmpl	$7, 168(%rbx)
	jne	.LBB45_9
# %bb.8:
	movl	8(%rbx), %edi
	movl	$2, %esi
	callq	shutdown
.LBB45_9:
	leaq	160(%rbx), %r14
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	8(%rbx), %edi
	callq	close
	movl	$-1, 8(%rbx)
	jmp	.LBB45_10
.LBB45_1:
	movq	$0, server+552(%rip)
	cmpl	$-1, 8(%rbx)
	jne	.LBB45_4
.LBB45_3:
	leaq	160(%rbx), %r14
.LBB45_10:
	movl	(%r14), %eax
	testl	$2097152, %eax          # imm = 0x200000
	je	.LBB45_15
# %bb.11:
	movq	server+528(%rip), %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB45_12
# %bb.14:
	movq	server+528(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movl	$-2097153, %eax         # imm = 0xFFDFFFFF
	andl	(%r14), %eax
	movl	%eax, (%r14)
.LBB45_15:
	testb	%al, %al
	jns	.LBB45_19
# %bb.16:
	movq	server+2768(%rip), %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB45_17
# %bb.18:
	movq	server+2768(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	andb	$127, (%r14)
.LBB45_19:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB45_12:
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$838, %edx              # imm = 0x346
	jmp	.LBB45_13
.LBB45_17:
	movl	$.L.str.21, %edi
	movl	$.L.str.1, %esi
	movl	$847, %edx              # imm = 0x34F
.LBB45_13:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end45:
	.size	unlinkClient, .Lfunc_end45-unlinkClient
                                        # -- End function
	.globl	freeClientAsync         # -- Begin function freeClientAsync
	.p2align	4, 0x90
	.type	freeClientAsync,@function
freeClientAsync:                        # @freeClientAsync
# %bb.0:
	movl	160(%rdi), %eax
	testl	$1280, %eax             # imm = 0x500
	je	.LBB46_2
# %bb.1:
	retq
.LBB46_2:
	movq	%rdi, %rsi
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 160(%rdi)
	movq	server+520(%rip), %rdi
	jmp	listAddNodeTail         # TAILCALL
.Lfunc_end46:
	.size	freeClientAsync, .Lfunc_end46-freeClientAsync
                                        # -- End function
	.globl	freeClientsInAsyncFreeQueue # -- Begin function freeClientsInAsyncFreeQueue
	.p2align	4, 0x90
	.type	freeClientsInAsyncFreeQueue,@function
freeClientsInAsyncFreeQueue:            # @freeClientsInAsyncFreeQueue
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	.p2align	4, 0x90
.LBB47_2:                               # =>This Inner Loop Header: Depth=1
	movq	server+520(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB47_3
# %bb.1:                                #   in Loop: Header=BB47_2 Depth=1
	movq	(%rax), %rbx
	movq	16(%rbx), %rdi
	andl	$-1025, 160(%rdi)       # imm = 0xFBFF
	callq	freeClient
	movq	server+520(%rip), %rdi
	movq	%rbx, %rsi
	callq	listDelNode
	jmp	.LBB47_2
.LBB47_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end47:
	.size	freeClientsInAsyncFreeQueue, .Lfunc_end47-freeClientsInAsyncFreeQueue
                                        # -- End function
	.globl	lookupClientByID        # -- Begin function lookupClientByID
	.p2align	4, 0x90
	.type	lookupClientByID,@function
lookupClientByID:                       # @lookupClientByID
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	callq	intrev64
	movq	%rax, -8(%rbp)
	movq	server+560(%rip), %rdi
	leaq	-8(%rbp), %rsi
	movl	$8, %edx
	callq	raxFind
	xorl	%ecx, %ecx
	cmpq	%rax, raxNotFound(%rip)
	cmoveq	%rcx, %rax
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end48:
	.size	lookupClientByID, .Lfunc_end48-lookupClientByID
                                        # -- End function
	.globl	writeToClient           # -- Begin function writeToClient
	.p2align	4, 0x90
	.type	writeToClient,@function
writeToClient:                          # @writeToClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rsi, %rbx
	movl	%edi, -44(%rbp)         # 4-byte Spill
	xorl	%r13d, %r13d
	xorl	%r12d, %r12d
	jmp	.LBB49_1
	.p2align	4, 0x90
.LBB49_2:                               #   in Loop: Header=BB49_1 Depth=1
	movq	112(%rbx), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB49_3
.LBB49_8:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%rdi), %rsi
	movq	16(%rsi), %r14
	movq	8(%r14), %r15
	testq	%r15, %r15
	jne	.LBB49_13
# %bb.9:                                #   in Loop: Header=BB49_1 Depth=1
	movq	(%r14), %rax
	subq	%rax, 120(%rbx)
	callq	listDelNode
.LBB49_1:                               # =>This Inner Loop Header: Depth=1
	movslq	528(%rbx), %rdx
	testq	%rdx, %rdx
	je	.LBB49_2
# %bb.6:                                #   in Loop: Header=BB49_1 Depth=1
	testl	%edx, %edx
	jg	.LBB49_10
# %bb.7:                                #   in Loop: Header=BB49_1 Depth=1
	movq	112(%rbx), %rdi
	jmp	.LBB49_8
.LBB49_13:                              #   in Loop: Header=BB49_1 Depth=1
	movq	128(%rbx), %rax
	leaq	(%r14,%rax), %rsi
	addq	$16, %rsi
	movq	%r15, %rdx
	subq	%rax, %rdx
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	write
	movq	%rax, %r12
	testq	%rax, %rax
	jle	.LBB49_3
# %bb.14:                               #   in Loop: Header=BB49_1 Depth=1
	movq	128(%rbx), %rax
	addq	%r12, %rax
	movq	%rax, 128(%rbx)
	addq	%r12, %r13
	cmpq	%r15, %rax
	jne	.LBB49_17
# %bb.15:                               #   in Loop: Header=BB49_1 Depth=1
	movq	(%r14), %rax
	subq	%rax, 120(%rbx)
	movq	112(%rbx), %rdi
	movq	(%rdi), %rsi
	callq	listDelNode
	movq	$0, 128(%rbx)
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB49_17
# %bb.16:                               #   in Loop: Header=BB49_1 Depth=1
	cmpq	$0, 120(%rbx)
	je	.LBB49_17
	jmp	.LBB49_33
.LBB49_10:                              #   in Loop: Header=BB49_1 Depth=1
	movq	128(%rbx), %rax
	leaq	(%rbx,%rax), %rsi
	addq	$532, %rsi              # imm = 0x214
	subq	%rax, %rdx
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	write
	movq	%rax, %r12
	testq	%rax, %rax
	jle	.LBB49_3
# %bb.11:                               #   in Loop: Header=BB49_1 Depth=1
	movq	128(%rbx), %rax
	addq	%r12, %rax
	movq	%rax, 128(%rbx)
	addq	%r12, %r13
	cmpl	%eax, 528(%rbx)
	jne	.LBB49_17
# %bb.12:                               #   in Loop: Header=BB49_1 Depth=1
	movl	$0, 528(%rbx)
	movq	$0, 128(%rbx)
.LBB49_17:                              #   in Loop: Header=BB49_1 Depth=1
	cmpq	$65537, %r13            # imm = 0x10001
	jl	.LBB49_1
# %bb.18:                               #   in Loop: Header=BB49_1 Depth=1
	cmpq	$0, server+2704(%rip)
	je	.LBB49_20
# %bb.19:                               #   in Loop: Header=BB49_1 Depth=1
	callq	zmalloc_used_memory
	cmpq	server+2704(%rip), %rax
	jae	.LBB49_1
.LBB49_20:                              #   in Loop: Header=BB49_1 Depth=1
	movl	160(%rbx), %eax
	testb	$1, %al
	jne	.LBB49_1
# %bb.21:
	addq	%r13, server+1248(%rip)
	jmp	.LBB49_24
.LBB49_3:
	addq	%r13, server+1248(%rip)
	cmpq	$-1, %r12
	jne	.LBB49_22
# %bb.4:
	callq	__errno
	cmpl	$11, (%rax)
	jne	.LBB49_5
.LBB49_22:
	testq	%r13, %r13
	jle	.LBB49_26
# %bb.23:
	movl	160(%rbx), %eax
.LBB49_24:
	testb	$2, %al
	jne	.LBB49_26
# %bb.25:
	movq	server+2872(%rip), %rax
	movq	%rax, 144(%rbx)
.LBB49_26:
	xorl	%r15d, %r15d
	cmpl	$0, 528(%rbx)
	jne	.LBB49_32
# %bb.27:
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB49_32
# %bb.28:
	movq	$0, 128(%rbx)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB49_30
# %bb.29:
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
.LBB49_30:
	testb	$64, 160(%rbx)
	jne	.LBB49_31
	jmp	.LBB49_32
.LBB49_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.25, %esi
	movl	$1, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB49_31:
	movq	%rbx, %rdi
	callq	freeClient
	movl	$-1, %r15d
.LBB49_32:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB49_33:
	movl	$.L.str.24, %edi
	movl	$.L.str.1, %esi
	movl	$1026, %edx             # imm = 0x402
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end49:
	.size	writeToClient, .Lfunc_end49-writeToClient
                                        # -- End function
	.globl	sendReplyToClient       # -- Begin function sendReplyToClient
	.p2align	4, 0x90
	.type	sendReplyToClient,@function
sendReplyToClient:                      # @sendReplyToClient
# %bb.0:
	movl	%esi, %edi
	movq	%rdx, %rsi
	movl	$1, %edx
	jmp	writeToClient           # TAILCALL
.Lfunc_end50:
	.size	sendReplyToClient, .Lfunc_end50-sendReplyToClient
                                        # -- End function
	.globl	handleClientsWithPendingWrites # -- Begin function handleClientsWithPendingWrites
	.p2align	4, 0x90
	.type	handleClientsWithPendingWrites,@function
handleClientsWithPendingWrites:         # @handleClientsWithPendingWrites
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	server+528(%rip), %rdi
	movl	40(%rdi), %r14d
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB51_10
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB51_2
	.p2align	4, 0x90
.LBB51_9:                               #   in Loop: Header=BB51_2 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB51_10
.LBB51_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	andl	$-2097153, 160(%rbx)    # imm = 0xFFDFFFFF
	movq	server+528(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	testb	$16, 163(%rbx)
	jne	.LBB51_9
# %bb.3:                                #   in Loop: Header=BB51_2 Depth=1
	movl	8(%rbx), %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	writeToClient
	cmpl	$-1, %eax
	je	.LBB51_9
# %bb.4:                                #   in Loop: Header=BB51_2 Depth=1
	cmpl	$0, 528(%rbx)
	jne	.LBB51_6
# %bb.5:                                #   in Loop: Header=BB51_2 Depth=1
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	je	.LBB51_9
.LBB51_6:                               #   in Loop: Header=BB51_2 Depth=1
	movl	server+1880(%rip), %eax
	xorl	$1, %eax
	movl	server+1884(%rip), %ecx
	xorl	$1, %ecx
	xorl	%edx, %edx
	orl	%eax, %ecx
	sete	%dl
	leal	2(,%rdx,4), %edx
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$sendReplyToClient, %ecx
	movq	%rbx, %r8
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	jne	.LBB51_9
# %bb.7:                                #   in Loop: Header=BB51_2 Depth=1
	movl	160(%rbx), %eax
	testl	$1280, %eax             # imm = 0x500
	jne	.LBB51_9
# %bb.8:                                #   in Loop: Header=BB51_2 Depth=1
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 160(%rbx)
	movq	server+520(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	jmp	.LBB51_9
.LBB51_10:
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	handleClientsWithPendingWrites, .Lfunc_end51-handleClientsWithPendingWrites
                                        # -- End function
	.globl	resetClient             # -- Begin function resetClient
	.p2align	4, 0x90
	.type	resetClient,@function
resetClient:                            # @resetClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	80(%rdi), %rax
	testq	%rax, %rax
	je	.LBB52_1
# %bb.2:
	movl	$askingCommand, %ecx
	cmpq	%rcx, 8(%rax)
	setne	%r14b
	cmpl	$0, 64(%r15)
	jg	.LBB52_4
	jmp	.LBB52_6
.LBB52_1:
	movb	$1, %r14b
	cmpl	$0, 64(%r15)
	jle	.LBB52_6
.LBB52_4:
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB52_5:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	64(%r15), %rax
	cmpq	%rax, %rbx
	jl	.LBB52_5
.LBB52_6:
	movl	$0, 64(%r15)
	movq	$0, 80(%r15)
	movq	$0, 96(%r15)
	movq	$-1, 104(%r15)
	movl	160(%r15), %eax
	movl	%eax, %ecx
	andl	$8, %ecx
	shrl	$3, %ecx
	xorb	$1, %r14b
	orb	%cl, %r14b
	jne	.LBB52_8
# %bb.7:
	andl	$-513, %eax             # imm = 0xFDFF
	movl	%eax, 160(%r15)
.LBB52_8:
	movl	%eax, %ecx
	andl	$-16777217, %ecx        # imm = 0xFEFFFFFF
	movl	%eax, %edx
	andl	$-25165825, %edx        # imm = 0xFE7FFFFF
	orl	$16777216, %edx         # imm = 0x1000000
	testl	$8388608, %eax          # imm = 0x800000
	cmovel	%ecx, %edx
	movl	%edx, 160(%r15)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	resetClient, .Lfunc_end52-resetClient
                                        # -- End function
	.globl	protectClient           # -- Begin function protectClient
	.p2align	4, 0x90
	.type	protectClient,@function
protectClient:                          # @protectClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	orb	$16, 163(%rdi)
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	aeDeleteFileEvent       # TAILCALL
.Lfunc_end53:
	.size	protectClient, .Lfunc_end53-protectClient
                                        # -- End function
	.globl	unprotectClient         # -- Begin function unprotectClient
	.p2align	4, 0x90
	.type	unprotectClient,@function
unprotectClient:                        # @unprotectClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	160(%rdi), %eax
	testl	$268435456, %eax        # imm = 0x10000000
	je	.LBB54_7
# %bb.1:
	movq	%rdi, %rbx
	andl	$-268435457, %eax       # imm = 0xEFFFFFFF
	movl	%eax, 160(%rdi)
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$readQueryFromClient, %ecx
	movl	$1, %edx
	movq	%rbx, %r8
	callq	aeCreateFileEvent
	cmpl	$0, 528(%rbx)
	jne	.LBB54_3
# %bb.2:
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	je	.LBB54_7
.LBB54_3:
	movl	160(%rbx), %eax
	testl	$2097152, %eax          # imm = 0x200000
	jne	.LBB54_7
# %bb.4:
	movl	168(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB54_8
# %bb.5:
	cmpl	$9, %ecx
	jne	.LBB54_7
# %bb.6:
	cmpl	$0, 172(%rbx)
	je	.LBB54_8
.LBB54_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB54_8:
	orl	$2097152, %eax          # imm = 0x200000
	movl	%eax, 160(%rbx)
	movq	server+528(%rip), %rdi
	movq	%rbx, %rsi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	listAddNodeHead         # TAILCALL
.Lfunc_end54:
	.size	unprotectClient, .Lfunc_end54-unprotectClient
                                        # -- End function
	.globl	processInlineBuffer     # -- Begin function processInlineBuffer
	.p2align	4, 0x90
	.type	processInlineBuffer,@function
processInlineBuffer:                    # @processInlineBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movq	32(%rdi), %rdi
	addq	40(%r15), %rdi
	movl	$10, %esi
	callq	strchr
	movq	32(%r15), %rdi
	testq	%rax, %rax
	je	.LBB55_1
# %bb.11:
	movq	%rax, %rbx
	addq	40(%r15), %rdi
	cmpq	%rdi, %rax
	je	.LBB55_12
# %bb.13:
	leaq	-1(%rbx), %rax
	xorl	%r13d, %r13d
	cmpb	$13, -1(%rbx)
	sete	%r13b
	cmoveq	%rax, %rbx
	addq	$1, %r13
	jmp	.LBB55_14
.LBB55_1:
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB55_2
# %bb.3:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI55_1(,%rcx,8)
.LBB55_4:
	shrq	$3, %rax
	jmp	.LBB55_9
.LBB55_12:
	movl	$1, %r13d
.LBB55_14:
	subq	%rdi, %rbx
	movq	%rbx, %rsi
	callq	sdsnewlen
	movq	%rax, %r12
	leaq	-44(%rbp), %rsi
	movq	%rax, %rdi
	callq	sdssplitargs
	movq	%rax, %r14
	movq	%r12, %rdi
	callq	sdsfree
	testq	%r14, %r14
	je	.LBB55_15
# %bb.16:
	testq	%rbx, %rbx
	jne	.LBB55_19
# %bb.17:
	testb	$1, 160(%r15)
	je	.LBB55_19
# %bb.18:
	movq	server+2872(%rip), %rax
	movq	%rax, 232(%r15)
.LBB55_19:
	addq	%r13, %rbx
	addq	%rbx, 40(%r15)
	movl	-44(%rbp), %eax
	testl	%eax, %eax
	je	.LBB55_20
# %bb.21:
	movq	72(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB55_23
# %bb.22:
	callq	zfree
	movl	-44(%rbp), %eax
.LBB55_23:
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, 72(%r15)
	cmpl	$0, -44(%rbp)
	movl	$0, 64(%r15)
	jle	.LBB55_36
# %bb.24:
	xorl	%ebx, %ebx
	jmp	.LBB55_25
	.p2align	4, 0x90
.LBB55_34:                              #   in Loop: Header=BB55_25 Depth=1
	movq	%rsi, %rdi
	callq	sdsfree
.LBB55_35:                              #   in Loop: Header=BB55_25 Depth=1
	addq	$1, %rbx
	movslq	-44(%rbp), %rax
	cmpq	%rax, %rbx
	jge	.LBB55_36
.LBB55_25:                              # =>This Inner Loop Header: Depth=1
	movq	(%r14,%rbx,8), %rsi
	movzbl	-1(%rsi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB55_34
# %bb.26:                               #   in Loop: Header=BB55_25 Depth=1
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI55_0(,%rcx,8)
.LBB55_27:                              #   in Loop: Header=BB55_25 Depth=1
	shrq	$3, %rax
	testq	%rax, %rax
	jne	.LBB55_33
	jmp	.LBB55_34
.LBB55_31:                              #   in Loop: Header=BB55_25 Depth=1
	movq	-17(%rsi), %rax
	testq	%rax, %rax
	jne	.LBB55_33
	jmp	.LBB55_34
.LBB55_29:                              #   in Loop: Header=BB55_25 Depth=1
	movzwl	-5(%rsi), %eax
	testq	%rax, %rax
	jne	.LBB55_33
	jmp	.LBB55_34
.LBB55_30:                              #   in Loop: Header=BB55_25 Depth=1
	movl	-9(%rsi), %eax
	testq	%rax, %rax
	jne	.LBB55_33
	jmp	.LBB55_34
.LBB55_28:                              #   in Loop: Header=BB55_25 Depth=1
	movzbl	-3(%rsi), %eax
	testq	%rax, %rax
	je	.LBB55_34
	.p2align	4, 0x90
.LBB55_33:                              #   in Loop: Header=BB55_25 Depth=1
	xorl	%edi, %edi
	callq	createObject
	movq	72(%r15), %rcx
	movslq	64(%r15), %rdx
	movq	%rax, (%rcx,%rdx,8)
	leal	1(%rdx), %eax
	movl	%eax, 64(%r15)
	jmp	.LBB55_35
.LBB55_15:
	movl	$.L.str.28, %edi
	callq	strlen
	movl	$.L.str.28, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.29, %edi
	movq	%r15, %rsi
	callq	setProtocolError
	movl	$-1, %ebx
	jmp	.LBB55_38
.LBB55_20:
	movl	$0, 64(%r15)
.LBB55_36:
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB55_39
# %bb.37:
	movq	%r14, %rsi
	callq	*40(%rdi)
	xorl	%ebx, %ebx
	jmp	.LBB55_38
.LBB55_8:
	movq	-17(%rdi), %rax
	jmp	.LBB55_9
.LBB55_6:
	movzwl	-5(%rdi), %eax
	jmp	.LBB55_9
.LBB55_7:
	movl	-9(%rdi), %eax
	jmp	.LBB55_9
.LBB55_5:
	movzbl	-3(%rdi), %eax
	jmp	.LBB55_9
.LBB55_2:
	xorl	%eax, %eax
.LBB55_9:
	subq	40(%r15), %rax
	movl	$-1, %ebx
	cmpq	$65537, %rax            # imm = 0x10001
	jb	.LBB55_38
# %bb.10:
	movl	$.L.str.26, %edi
	callq	strlen
	movl	$.L.str.26, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.27, %edi
	movq	%r15, %rsi
	callq	setProtocolError
.LBB55_38:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB55_39:
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end55:
	.size	processInlineBuffer, .Lfunc_end55-processInlineBuffer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI55_0:
	.quad	.LBB55_27
	.quad	.LBB55_28
	.quad	.LBB55_29
	.quad	.LBB55_30
	.quad	.LBB55_31
.LJTI55_1:
	.quad	.LBB55_4
	.quad	.LBB55_5
	.quad	.LBB55_6
	.quad	.LBB55_7
	.quad	.LBB55_8
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function setProtocolError
	.type	setProtocolError,@function
setProtocolError:                       # @setProtocolError
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$256, %rsp              # imm = 0x100
	movq	%rsi, %r12
	cmpl	$1, server+1728(%rip)
	jg	.LBB56_26
# %bb.1:
	movq	%rdi, %r14
	callq	sdsempty
	movq	%rax, %rdi
	movq	%r12, %rsi
	callq	catClientInfoString
	movq	%rax, %r15
	movq	32(%r12), %rax
	movzbl	-1(%rax), %r9d
	movl	%r9d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB56_2
# %bb.3:
	movl	%r9d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI56_0(,%rcx,8)
.LBB56_4:
	movq	%r9, %rdx
	shrq	$3, %rdx
	jmp	.LBB56_9
.LBB56_5:
	movzbl	-3(%rax), %edx
	jmp	.LBB56_9
.LBB56_6:
	movzwl	-5(%rax), %edx
	jmp	.LBB56_9
.LBB56_7:
	movl	-9(%rax), %edx
	jmp	.LBB56_9
.LBB56_8:
	movq	-17(%rax), %rdx
	jmp	.LBB56_9
.LBB56_2:
	xorl	%edx, %edx
.LBB56_9:
	movq	40(%r12), %rcx
	subq	%rcx, %rdx
	leaq	(%rax,%rcx), %r8
	cmpq	$127, %rdx
	ja	.LBB56_11
# %bb.10:
	leaq	-288(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.104, %edx
	movq	%r8, %rcx
	xorl	%eax, %eax
	callq	snprintf
	cmpb	$0, -288(%rbp)
	jne	.LBB56_21
	jmp	.LBB56_25
.LBB56_11:
	movl	%r9d, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB56_12
# %bb.13:
	movl	%r9d, %edx
	andl	$7, %edx
	jmpq	*.LJTI56_1(,%rdx,8)
.LBB56_14:
	shrq	$3, %r9
	jmp	.LBB56_19
.LBB56_12:
	xorl	%r9d, %r9d
	jmp	.LBB56_19
.LBB56_15:
	movzbl	-3(%rax), %r9d
	jmp	.LBB56_19
.LBB56_16:
	movzwl	-5(%rax), %r9d
	jmp	.LBB56_19
.LBB56_17:
	movl	-9(%rax), %r9d
	jmp	.LBB56_19
.LBB56_18:
	movq	-17(%rax), %r9
.LBB56_19:
	leaq	(%rax,%r9), %rbx
	addq	$-64, %rbx
	subq	%rcx, %r9
	addq	$-128, %r9
	leaq	-288(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.105, %edx
	movl	$64, %ecx
	xorl	%eax, %eax
	pushq	%rbx
	pushq	$64
	callq	snprintf
	addq	$16, %rsp
	cmpb	$0, -288(%rbp)
	je	.LBB56_25
.LBB56_21:                              # %.preheader
	leaq	-288(%rbp), %rbx
	jmp	.LBB56_22
	.p2align	4, 0x90
.LBB56_24:                              #   in Loop: Header=BB56_22 Depth=1
	cmpb	$0, 1(%rbx)
	leaq	1(%rbx), %rbx
	je	.LBB56_25
.LBB56_22:                              # =>This Inner Loop Header: Depth=1
	callq	__locale_ctype_ptr
	movsbq	(%rbx), %rcx
	testb	$-105, 1(%rax,%rcx)
	jne	.LBB56_24
# %bb.23:                               #   in Loop: Header=BB56_22 Depth=1
	movb	$46, (%rbx)
	jmp	.LBB56_24
.LBB56_25:
	leaq	-288(%rbp), %r8
	movl	$.L.str.106, %esi
	movl	$1, %edi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r15, %rdi
	callq	sdsfree
.LBB56_26:
	orb	$64, 160(%r12)
	addq	$256, %rsp              # imm = 0x100
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end56:
	.size	setProtocolError, .Lfunc_end56-setProtocolError
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI56_0:
	.quad	.LBB56_4
	.quad	.LBB56_5
	.quad	.LBB56_6
	.quad	.LBB56_7
	.quad	.LBB56_8
.LJTI56_1:
	.quad	.LBB56_14
	.quad	.LBB56_15
	.quad	.LBB56_16
	.quad	.LBB56_17
	.quad	.LBB56_18
                                        # -- End function
	.text
	.globl	processMultibulkBuffer  # -- Begin function processMultibulkBuffer
	.p2align	4, 0x90
	.type	processMultibulkBuffer,@function
processMultibulkBuffer:                 # @processMultibulkBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	100(%rdi), %eax
	testl	%eax, %eax
	je	.LBB57_1
# %bb.35:
	testl	%eax, %eax
	jle	.LBB57_36
.LBB57_37:
	movq	104(%r15), %rsi
	leaq	-32(%rbp), %r14
	jmp	.LBB57_38
	.p2align	4, 0x90
.LBB57_99:                              #   in Loop: Header=BB57_38 Depth=1
	addq	%rdx, %rax
	movq	%rax, %rdi
	callq	createStringObject
	movq	72(%r15), %rcx
	movslq	64(%r15), %rdx
	leal	1(%rdx), %esi
	movl	%esi, 64(%r15)
	movq	%rax, (%rcx,%rdx,8)
	movq	40(%r15), %rax
	movq	104(%r15), %rcx
	addq	%rcx, %rax
	addq	$2, %rax
	movq	%rax, 40(%r15)
.LBB57_100:                             #   in Loop: Header=BB57_38 Depth=1
	movq	$-1, 104(%r15)
	addl	$-1, 100(%r15)
	movq	$-1, %rsi
	je	.LBB57_101
.LBB57_38:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r15), %rax
	cmpq	$-1, %rsi
	jne	.LBB57_78
# %bb.39:                               #   in Loop: Header=BB57_38 Depth=1
	addq	40(%r15), %rax
	movq	%rax, %rdi
	movl	$13, %esi
	callq	strchr
	movq	32(%r15), %rdx
	testq	%rax, %rax
	je	.LBB57_40
# %bb.50:                               #   in Loop: Header=BB57_38 Depth=1
	movq	%rax, %rbx
	movq	40(%r15), %r8
	leaq	(%rdx,%r8), %rdi
	subq	%rdi, %rax
	movzbl	-1(%rdx), %esi
	movl	%esi, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB57_51
# %bb.52:                               #   in Loop: Header=BB57_38 Depth=1
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI57_1(,%rcx,8)
.LBB57_53:                              #   in Loop: Header=BB57_38 Depth=1
	shrq	$3, %rsi
	jmp	.LBB57_58
.LBB57_57:                              #   in Loop: Header=BB57_38 Depth=1
	movq	-17(%rdx), %rsi
	jmp	.LBB57_58
.LBB57_55:                              #   in Loop: Header=BB57_38 Depth=1
	movzwl	-5(%rdx), %esi
	jmp	.LBB57_58
.LBB57_56:                              #   in Loop: Header=BB57_38 Depth=1
	movl	-9(%rdx), %esi
	jmp	.LBB57_58
.LBB57_54:                              #   in Loop: Header=BB57_38 Depth=1
	movzbl	-3(%rdx), %esi
	jmp	.LBB57_58
.LBB57_51:                              #   in Loop: Header=BB57_38 Depth=1
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB57_58:                              #   in Loop: Header=BB57_38 Depth=1
	subq	%r8, %rsi
	addq	$-2, %rsi
	cmpq	%rsi, %rax
	jg	.LBB57_101
# %bb.59:                               #   in Loop: Header=BB57_38 Depth=1
	movsbl	(%rdi), %edx
	cmpl	$36, %edx
	jne	.LBB57_60
# %bb.62:                               #   in Loop: Header=BB57_38 Depth=1
	addq	$1, %rdi
	movq	%rbx, %rsi
	subq	%rdi, %rsi
	movq	%r14, %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB57_65
# %bb.63:                               #   in Loop: Header=BB57_38 Depth=1
	movq	-32(%rbp), %rsi
	testq	%rsi, %rsi
	js	.LBB57_65
# %bb.64:                               #   in Loop: Header=BB57_38 Depth=1
	cmpq	server+2728(%rip), %rsi
	jg	.LBB57_65
# %bb.66:                               #   in Loop: Header=BB57_38 Depth=1
	movq	32(%r15), %rax
	subq	%rax, %rbx
	addq	$2, %rbx
	movq	%rbx, 40(%r15)
	cmpq	$32768, %rsi            # imm = 0x8000
	jl	.LBB57_77
# %bb.67:                               #   in Loop: Header=BB57_38 Depth=1
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB57_68
# %bb.69:                               #   in Loop: Header=BB57_38 Depth=1
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI57_2(,%rdx,8)
.LBB57_70:                              #   in Loop: Header=BB57_38 Depth=1
	shrq	$3, %rcx
	jmp	.LBB57_75
.LBB57_74:                              #   in Loop: Header=BB57_38 Depth=1
	movq	-17(%rax), %rcx
	jmp	.LBB57_75
.LBB57_72:                              #   in Loop: Header=BB57_38 Depth=1
	movzwl	-5(%rax), %ecx
	jmp	.LBB57_75
.LBB57_73:                              #   in Loop: Header=BB57_38 Depth=1
	movl	-9(%rax), %ecx
	jmp	.LBB57_75
.LBB57_71:                              #   in Loop: Header=BB57_38 Depth=1
	movzbl	-3(%rax), %ecx
	jmp	.LBB57_75
.LBB57_68:                              #   in Loop: Header=BB57_38 Depth=1
	xorl	%ecx, %ecx
.LBB57_75:                              #   in Loop: Header=BB57_38 Depth=1
	subq	%rbx, %rcx
	leaq	2(%rsi), %rdx
	cmpq	%rdx, %rcx
	ja	.LBB57_77
# %bb.76:                               #   in Loop: Header=BB57_38 Depth=1
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	$-1, %rdx
	callq	sdsrange
	movq	$0, 40(%r15)
	movq	32(%r15), %rdi
	movq	-32(%rbp), %rsi
	addq	$2, %rsi
	callq	sdsMakeRoomFor
	movq	%rax, 32(%r15)
	movq	-32(%rbp), %rsi
.LBB57_77:                              #   in Loop: Header=BB57_38 Depth=1
	movq	%rsi, 104(%r15)
.LBB57_78:                              #   in Loop: Header=BB57_38 Depth=1
	movzbl	-1(%rax), %ebx
	movl	%ebx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB57_79
# %bb.80:                               #   in Loop: Header=BB57_38 Depth=1
	movl	%ebx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI57_3(,%rcx,8)
.LBB57_81:                              #   in Loop: Header=BB57_38 Depth=1
	movq	%rbx, %rcx
	shrq	$3, %rcx
	jmp	.LBB57_86
.LBB57_85:                              #   in Loop: Header=BB57_38 Depth=1
	movq	-17(%rax), %rcx
	jmp	.LBB57_86
.LBB57_83:                              #   in Loop: Header=BB57_38 Depth=1
	movzwl	-5(%rax), %ecx
	jmp	.LBB57_86
.LBB57_84:                              #   in Loop: Header=BB57_38 Depth=1
	movl	-9(%rax), %ecx
	jmp	.LBB57_86
.LBB57_82:                              #   in Loop: Header=BB57_38 Depth=1
	movzbl	-3(%rax), %ecx
	jmp	.LBB57_86
.LBB57_79:                              #   in Loop: Header=BB57_38 Depth=1
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB57_86:                              #   in Loop: Header=BB57_38 Depth=1
	movq	40(%r15), %rdx
	subq	%rdx, %rcx
	leaq	2(%rsi), %rdi
	cmpq	%rdi, %rcx
	jb	.LBB57_101
# %bb.87:                               #   in Loop: Header=BB57_38 Depth=1
	testq	%rdx, %rdx
	jne	.LBB57_99
# %bb.88:                               #   in Loop: Header=BB57_38 Depth=1
	cmpq	$32768, %rsi            # imm = 0x8000
	jl	.LBB57_99
# %bb.89:                               #   in Loop: Header=BB57_38 Depth=1
	movl	%ebx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB57_90
# %bb.91:                               #   in Loop: Header=BB57_38 Depth=1
	movl	%ebx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI57_4(,%rcx,8)
.LBB57_92:                              #   in Loop: Header=BB57_38 Depth=1
	shrq	$3, %rbx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	jmp	.LBB57_98
.LBB57_96:                              #   in Loop: Header=BB57_38 Depth=1
	movq	-17(%rax), %rbx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	jmp	.LBB57_98
.LBB57_94:                              #   in Loop: Header=BB57_38 Depth=1
	movzwl	-5(%rax), %ebx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	jmp	.LBB57_98
.LBB57_95:                              #   in Loop: Header=BB57_38 Depth=1
	movl	-9(%rax), %ebx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	jmp	.LBB57_98
.LBB57_93:                              #   in Loop: Header=BB57_38 Depth=1
	movzbl	-3(%rax), %ebx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	jmp	.LBB57_98
.LBB57_90:                              #   in Loop: Header=BB57_38 Depth=1
	xorl	%ebx, %ebx
	cmpq	%rdi, %rbx
	jne	.LBB57_99
	.p2align	4, 0x90
.LBB57_98:                              #   in Loop: Header=BB57_38 Depth=1
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	72(%r15), %rcx
	movslq	64(%r15), %rdx
	leal	1(%rdx), %esi
	movl	%esi, 64(%r15)
	movq	%rax, (%rcx,%rdx,8)
	movq	32(%r15), %rdi
	movq	$-2, %rsi
	callq	sdsIncrLen
	movq	SDS_NOINIT(%rip), %rdi
	movq	104(%r15), %rsi
	addq	$2, %rsi
	callq	sdsnewlen
	movq	%rax, 32(%r15)
	movq	%rax, %rdi
	callq	sdsclear
	jmp	.LBB57_100
.LBB57_1:
	cmpl	$0, 64(%r15)
	jne	.LBB57_2
# %bb.4:
	movq	32(%r15), %rdi
	addq	40(%r15), %rdi
	movl	$13, %esi
	callq	strchr
	movq	%rax, %r14
	movq	32(%r15), %rax
	testq	%r14, %r14
	je	.LBB57_5
# %bb.16:
	movq	40(%r15), %rcx
	leaq	(%rax,%rcx), %r8
	movq	%r14, %rsi
	subq	%r8, %rsi
	movzbl	-1(%rax), %edx
	movl	%edx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB57_17
# %bb.18:
	movl	%edx, %edi
	andl	$7, %edi
	jmpq	*.LJTI57_0(,%rdi,8)
.LBB57_19:
	shrq	$3, %rdx
	jmp	.LBB57_24
.LBB57_5:
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB57_6
# %bb.7:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI57_6(,%rdx,8)
.LBB57_8:
	shrq	$3, %rcx
	jmp	.LBB57_13
.LBB57_40:
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB57_41
# %bb.42:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI57_5(,%rcx,8)
.LBB57_43:
	shrq	$3, %rax
	jmp	.LBB57_48
.LBB57_60:
	movl	$.L.str.39, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	movl	$.L.str.40, %edi
	jmp	.LBB57_61
.LBB57_65:
	movl	$.L.str.41, %edi
	callq	strlen
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.42, %edi
	jmp	.LBB57_61
.LBB57_23:
	movq	-17(%rax), %rdx
	jmp	.LBB57_24
.LBB57_21:
	movzwl	-5(%rax), %edx
	jmp	.LBB57_24
.LBB57_22:
	movl	-9(%rax), %edx
	jmp	.LBB57_24
.LBB57_20:
	movzbl	-3(%rax), %edx
	jmp	.LBB57_24
.LBB57_17:
	xorl	%edx, %edx
.LBB57_24:
	subq	%rcx, %rdx
	addq	$-2, %rdx
	movl	$-1, %ebx
	cmpq	%rdx, %rsi
	jg	.LBB57_102
# %bb.25:
	cmpb	$42, (%r8)
	jne	.LBB57_26
# %bb.27:
	leaq	(%rax,%rcx), %rdi
	addq	$1, %rdi
	movq	%r14, %rsi
	subq	%rdi, %rsi
	leaq	-32(%rbp), %rdx
	callq	string2ll
	testl	%eax, %eax
	je	.LBB57_29
# %bb.28:
	movq	-32(%rbp), %rax
	cmpq	$1048577, %rax          # imm = 0x100001
	jge	.LBB57_29
# %bb.30:
	subq	32(%r15), %r14
	addq	$2, %r14
	movq	%r14, 40(%r15)
	testq	%rax, %rax
	jle	.LBB57_31
# %bb.32:
	movl	%eax, 100(%r15)
	movq	72(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB57_34
# %bb.33:
	callq	zfree
	movl	100(%r15), %eax
.LBB57_34:
	movslq	%eax, %rdi
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, 72(%r15)
	movl	100(%r15), %eax
	testl	%eax, %eax
	jg	.LBB57_37
.LBB57_36:
	movl	$.L.str.36, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1335, %r8d             # imm = 0x537
	jmp	.LBB57_3
.LBB57_29:
	movl	$.L.str.34, %edi
	callq	strlen
	movl	$.L.str.34, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.35, %edi
	jmp	.LBB57_15
.LBB57_12:
	movq	-17(%rax), %rcx
	jmp	.LBB57_13
.LBB57_10:
	movzwl	-5(%rax), %ecx
	jmp	.LBB57_13
.LBB57_11:
	movl	-9(%rax), %ecx
	jmp	.LBB57_13
.LBB57_9:
	movzbl	-3(%rax), %ecx
	jmp	.LBB57_13
.LBB57_6:
	xorl	%ecx, %ecx
.LBB57_13:
	subq	40(%r15), %rcx
	movl	$-1, %ebx
	cmpq	$65537, %rcx            # imm = 0x10001
	jb	.LBB57_102
# %bb.14:
	movl	$.L.str.31, %edi
	callq	strlen
	movl	$.L.str.31, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.32, %edi
.LBB57_15:
	movq	%r15, %rsi
	callq	setProtocolError
	jmp	.LBB57_102
.LBB57_31:
	xorl	%ebx, %ebx
	jmp	.LBB57_102
.LBB57_47:
	movq	-17(%rdx), %rax
	jmp	.LBB57_48
.LBB57_45:
	movzwl	-5(%rdx), %eax
	jmp	.LBB57_48
.LBB57_46:
	movl	-9(%rdx), %eax
	jmp	.LBB57_48
.LBB57_44:
	movzbl	-3(%rdx), %eax
	jmp	.LBB57_48
.LBB57_41:
	xorl	%eax, %eax
.LBB57_48:
	subq	40(%r15), %rax
	cmpq	$65537, %rax            # imm = 0x10001
	jb	.LBB57_101
# %bb.49:
	movl	$.L.str.37, %edi
	callq	strlen
	movl	$.L.str.37, %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	movl	$.L.str.38, %edi
.LBB57_61:
	movq	%r15, %rsi
	callq	setProtocolError
	movl	$-1, %ebx
	jmp	.LBB57_102
.LBB57_101:
	xorl	%eax, %eax
	cmpl	100(%r15), %eax
	sbbl	%ebx, %ebx
.LBB57_102:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB57_2:
	movl	$.L.str.30, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1298, %r8d             # imm = 0x512
	jmp	.LBB57_3
.LBB57_26:
	movl	$.L.str.33, %edx
	movl	$.L.str.1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$1316, %r8d             # imm = 0x524
.LBB57_3:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end57:
	.size	processMultibulkBuffer, .Lfunc_end57-processMultibulkBuffer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI57_0:
	.quad	.LBB57_19
	.quad	.LBB57_20
	.quad	.LBB57_21
	.quad	.LBB57_22
	.quad	.LBB57_23
.LJTI57_1:
	.quad	.LBB57_53
	.quad	.LBB57_54
	.quad	.LBB57_55
	.quad	.LBB57_56
	.quad	.LBB57_57
.LJTI57_2:
	.quad	.LBB57_70
	.quad	.LBB57_71
	.quad	.LBB57_72
	.quad	.LBB57_73
	.quad	.LBB57_74
.LJTI57_3:
	.quad	.LBB57_81
	.quad	.LBB57_82
	.quad	.LBB57_83
	.quad	.LBB57_84
	.quad	.LBB57_85
.LJTI57_4:
	.quad	.LBB57_92
	.quad	.LBB57_93
	.quad	.LBB57_94
	.quad	.LBB57_95
	.quad	.LBB57_96
.LJTI57_5:
	.quad	.LBB57_43
	.quad	.LBB57_44
	.quad	.LBB57_45
	.quad	.LBB57_46
	.quad	.LBB57_47
.LJTI57_6:
	.quad	.LBB57_8
	.quad	.LBB57_9
	.quad	.LBB57_10
	.quad	.LBB57_11
	.quad	.LBB57_12
                                        # -- End function
	.text
	.globl	processInputBuffer      # -- Begin function processInputBuffer
	.p2align	4, 0x90
	.type	processInputBuffer,@function
processInputBuffer:                     # @processInputBuffer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r13
	movq	%rdi, server+552(%rip)
	movl	$askingCommand, %r15d
	leaq	-56(%rbp), %r14
	jmp	.LBB58_1
.LBB58_60:                              #   in Loop: Header=BB58_1 Depth=1
	movl	%eax, %ecx
	andl	$-16777217, %ecx        # imm = 0xFEFFFFFF
	movl	%eax, %edx
	andl	$-25165825, %edx        # imm = 0xFE7FFFFF
	orl	$16777216, %edx         # imm = 0x1000000
	testl	$8388608, %eax          # imm = 0x800000
	cmovel	%ecx, %edx
	movl	%edx, 160(%r13)
.LBB58_61:                              #   in Loop: Header=BB58_1 Depth=1
	cmpq	$0, server+552(%rip)
	je	.LBB58_65
.LBB58_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB58_13 Depth 2
                                        #     Child Loop BB58_56 Depth 2
	movq	32(%r13), %rdx
	movzbl	-1(%rdx), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB58_62
# %bb.2:                                #   in Loop: Header=BB58_1 Depth=1
	movq	40(%r13), %rcx
	movl	%eax, %esi
	andl	$7, %esi
	jmpq	*.LJTI58_0(,%rsi,8)
.LBB58_3:                               #   in Loop: Header=BB58_1 Depth=1
	shrq	$3, %rax
	cmpq	%rax, %rcx
	jb	.LBB58_9
	jmp	.LBB58_62
.LBB58_7:                               #   in Loop: Header=BB58_1 Depth=1
	movq	-17(%rdx), %rax
	cmpq	%rax, %rcx
	jb	.LBB58_9
	jmp	.LBB58_62
.LBB58_5:                               #   in Loop: Header=BB58_1 Depth=1
	movzwl	-5(%rdx), %eax
	cmpq	%rax, %rcx
	jb	.LBB58_9
	jmp	.LBB58_62
.LBB58_6:                               #   in Loop: Header=BB58_1 Depth=1
	movl	-9(%rdx), %eax
	cmpq	%rax, %rcx
	jb	.LBB58_9
	jmp	.LBB58_62
.LBB58_4:                               #   in Loop: Header=BB58_1 Depth=1
	movzbl	-3(%rdx), %eax
	cmpq	%rax, %rcx
	jae	.LBB58_62
	.p2align	4, 0x90
.LBB58_9:                               #   in Loop: Header=BB58_1 Depth=1
	movl	160(%r13), %eax
	testb	$1, %al
	jne	.LBB58_18
# %bb.10:                               #   in Loop: Header=BB58_1 Depth=1
	cmpl	$0, server+568(%rip)
	je	.LBB58_18
# %bb.11:                               #   in Loop: Header=BB58_1 Depth=1
	movq	server+576(%rip), %rax
	cmpq	server+2896(%rip), %rax
	jge	.LBB58_62
# %bb.12:                               #   in Loop: Header=BB58_1 Depth=1
	movl	$0, server+568(%rip)
	movq	server+512(%rip), %rdi
	movq	%r14, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB58_13:                              #   Parent Loop BB58_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB58_16
# %bb.14:                               #   in Loop: Header=BB58_13 Depth=2
	movq	16(%rax), %rdi
	testb	$17, 160(%rdi)
	jne	.LBB58_13
# %bb.15:                               #   in Loop: Header=BB58_13 Depth=2
	callq	queueClientForReprocessing
	jmp	.LBB58_13
	.p2align	4, 0x90
.LBB58_16:                              #   in Loop: Header=BB58_1 Depth=1
	cmpl	$0, server+568(%rip)
	jne	.LBB58_62
# %bb.17:                               #   in Loop: Header=BB58_1 Depth=1
	movl	160(%r13), %eax
.LBB58_18:                              #   in Loop: Header=BB58_1 Depth=1
	testb	$16, %al
	jne	.LBB58_62
# %bb.19:                               #   in Loop: Header=BB58_1 Depth=1
	cmpl	$0, server+3068(%rip)
	sete	%cl
	testb	$2, %al
	sete	%dl
	testl	$1088, %eax             # imm = 0x440
	jne	.LBB58_62
# %bb.20:                               #   in Loop: Header=BB58_1 Depth=1
	orb	%cl, %dl
	je	.LBB58_62
# %bb.21:                               #   in Loop: Header=BB58_1 Depth=1
	movl	96(%r13), %eax
	cmpl	$2, %eax
	je	.LBB58_26
# %bb.22:                               #   in Loop: Header=BB58_1 Depth=1
	cmpl	$1, %eax
	je	.LBB58_28
# %bb.23:                               #   in Loop: Header=BB58_1 Depth=1
	testl	%eax, %eax
	jne	.LBB58_66
# %bb.24:                               #   in Loop: Header=BB58_1 Depth=1
	movq	32(%r13), %rax
	movq	40(%r13), %rcx
	cmpb	$42, (%rax,%rcx)
	jne	.LBB58_27
# %bb.25:                               #   in Loop: Header=BB58_1 Depth=1
	movl	$2, 96(%r13)
.LBB58_26:                              #   in Loop: Header=BB58_1 Depth=1
	movq	%r13, %rdi
	callq	processMultibulkBuffer
	testl	%eax, %eax
	je	.LBB58_30
	jmp	.LBB58_62
.LBB58_27:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$1, 96(%r13)
.LBB58_28:                              #   in Loop: Header=BB58_1 Depth=1
	movq	%r13, %rdi
	callq	processInlineBuffer
	testl	%eax, %eax
	jne	.LBB58_62
.LBB58_30:                              #   in Loop: Header=BB58_1 Depth=1
	cmpl	$0, 64(%r13)
	je	.LBB58_31
# %bb.38:                               #   in Loop: Header=BB58_1 Depth=1
	movq	%r13, %rdi
	callq	processCommand
	testl	%eax, %eax
	jne	.LBB58_61
# %bb.39:                               #   in Loop: Header=BB58_1 Depth=1
	movl	160(%r13), %eax
	movl	%eax, %ecx
	andl	$10, %ecx
	cmpl	$2, %ecx
	jne	.LBB58_49
# %bb.40:                               #   in Loop: Header=BB58_1 Depth=1
	movq	32(%r13), %rsi
	movq	208(%r13), %rcx
	movzbl	-1(%rsi), %edx
	movl	%edx, %ebx
	andb	$7, %bl
	cmpb	$4, %bl
	ja	.LBB58_41
# %bb.42:                               #   in Loop: Header=BB58_1 Depth=1
	movl	%edx, %edi
	andl	$7, %edi
	jmpq	*.LJTI58_1(,%rdi,8)
.LBB58_43:                              #   in Loop: Header=BB58_1 Depth=1
	shrq	$3, %rdx
	jmp	.LBB58_48
	.p2align	4, 0x90
.LBB58_31:                              #   in Loop: Header=BB58_1 Depth=1
	movq	80(%r13), %rax
	testq	%rax, %rax
	je	.LBB58_32
# %bb.33:                               #   in Loop: Header=BB58_1 Depth=1
	cmpq	%r15, 8(%rax)
	setne	%cl
	jmp	.LBB58_34
.LBB58_32:                              #   in Loop: Header=BB58_1 Depth=1
	movb	$1, %cl
.LBB58_34:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$0, 64(%r13)
	movq	$0, 80(%r13)
	movq	$0, 96(%r13)
	movq	$-1, 104(%r13)
	movl	160(%r13), %eax
	testb	%cl, %cl
	je	.LBB58_37
# %bb.35:                               #   in Loop: Header=BB58_1 Depth=1
	movl	%eax, %ecx
	andl	$8, %ecx
	jne	.LBB58_37
# %bb.36:                               #   in Loop: Header=BB58_1 Depth=1
	andl	$-513, %eax             # imm = 0xFDFF
	movl	%eax, 160(%r13)
.LBB58_37:                              #   in Loop: Header=BB58_1 Depth=1
	movl	%eax, %ecx
	andl	$-16777217, %ecx        # imm = 0xFEFFFFFF
	movl	%eax, %edx
	andl	$-25165825, %edx        # imm = 0xFE7FFFFF
	orl	$16777216, %edx         # imm = 0x1000000
	testl	$8388608, %eax          # imm = 0x800000
	cmovel	%ecx, %edx
	movl	%edx, 160(%r13)
	jmp	.LBB58_1
.LBB58_44:                              #   in Loop: Header=BB58_1 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB58_48
.LBB58_45:                              #   in Loop: Header=BB58_1 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB58_48
.LBB58_46:                              #   in Loop: Header=BB58_1 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB58_48
.LBB58_47:                              #   in Loop: Header=BB58_1 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB58_48
.LBB58_41:                              #   in Loop: Header=BB58_1 Depth=1
	xorl	%edx, %edx
.LBB58_48:                              #   in Loop: Header=BB58_1 Depth=1
	subq	%rdx, %rcx
	addq	40(%r13), %rcx
	movq	%rcx, 216(%r13)
.LBB58_49:                              #   in Loop: Header=BB58_1 Depth=1
	testb	$16, %al
	je	.LBB58_51
# %bb.50:                               #   in Loop: Header=BB58_1 Depth=1
	cmpl	$3, 384(%r13)
	je	.LBB58_61
.LBB58_51:                              #   in Loop: Header=BB58_1 Depth=1
	movq	80(%r13), %rcx
	testq	%rcx, %rcx
	je	.LBB58_52
# %bb.53:                               #   in Loop: Header=BB58_1 Depth=1
	cmpq	%r15, 8(%rcx)
	setne	%r12b
	cmpl	$0, 64(%r13)
	jg	.LBB58_55
	jmp	.LBB58_58
.LBB58_52:                              #   in Loop: Header=BB58_1 Depth=1
	movb	$1, %r12b
	cmpl	$0, 64(%r13)
	jle	.LBB58_58
.LBB58_55:                              # %.preheader
                                        #   in Loop: Header=BB58_1 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB58_56:                              #   Parent Loop BB58_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	72(%r13), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	64(%r13), %rax
	cmpq	%rax, %rbx
	jl	.LBB58_56
# %bb.57:                               #   in Loop: Header=BB58_1 Depth=1
	movl	160(%r13), %eax
.LBB58_58:                              #   in Loop: Header=BB58_1 Depth=1
	movl	$0, 64(%r13)
	movq	$0, 80(%r13)
	movq	$0, 96(%r13)
	movq	$-1, 104(%r13)
	movl	%eax, %ecx
	andl	$8, %ecx
	shrl	$3, %ecx
	xorb	$1, %r12b
	orb	%cl, %r12b
	jne	.LBB58_60
# %bb.59:                               #   in Loop: Header=BB58_1 Depth=1
	andl	$-513, %eax             # imm = 0xFDFF
	movl	%eax, 160(%r13)
	jmp	.LBB58_60
.LBB58_62:
	cmpq	$0, server+552(%rip)
	je	.LBB58_65
# %bb.63:
	movq	40(%r13), %rsi
	testq	%rsi, %rsi
	je	.LBB58_65
# %bb.64:
	movq	32(%r13), %rdi
	movq	$-1, %rdx
	callq	sdsrange
	movq	$0, 40(%r13)
.LBB58_65:
	movq	$0, server+552(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB58_66:
	movl	$.L.str.1, %edi
	movl	$.L.str.43, %edx
	movl	$1468, %esi             # imm = 0x5BC
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end58:
	.size	processInputBuffer, .Lfunc_end58-processInputBuffer
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI58_0:
	.quad	.LBB58_3
	.quad	.LBB58_4
	.quad	.LBB58_5
	.quad	.LBB58_6
	.quad	.LBB58_7
.LJTI58_1:
	.quad	.LBB58_43
	.quad	.LBB58_44
	.quad	.LBB58_45
	.quad	.LBB58_46
	.quad	.LBB58_47
                                        # -- End function
	.text
	.globl	clientsArePaused        # -- Begin function clientsArePaused
	.p2align	4, 0x90
	.type	clientsArePaused,@function
clientsArePaused:                       # @clientsArePaused
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movl	server+568(%rip), %eax
	testl	%eax, %eax
	je	.LBB59_1
# %bb.2:
	movq	server+576(%rip), %rcx
	cmpq	server+2896(%rip), %rcx
	jge	.LBB59_9
# %bb.3:
	movl	$0, server+568(%rip)
	movq	server+512(%rip), %rdi
	leaq	-24(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB59_8
# %bb.4:                                # %.preheader
	leaq	-24(%rbp), %rbx
	jmp	.LBB59_5
	.p2align	4, 0x90
.LBB59_7:                               #   in Loop: Header=BB59_5 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB59_8
.LBB59_5:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	testb	$17, 160(%rdi)
	jne	.LBB59_7
# %bb.6:                                #   in Loop: Header=BB59_5 Depth=1
	callq	queueClientForReprocessing
	jmp	.LBB59_7
.LBB59_1:
	xorl	%eax, %eax
	jmp	.LBB59_9
.LBB59_8:
	movl	server+568(%rip), %eax
.LBB59_9:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end59:
	.size	clientsArePaused, .Lfunc_end59-clientsArePaused
                                        # -- End function
	.globl	processInputBufferAndReplicate # -- Begin function processInputBufferAndReplicate
	.p2align	4, 0x90
	.type	processInputBufferAndReplicate,@function
processInputBufferAndReplicate:         # @processInputBufferAndReplicate
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	testb	$2, 160(%rdi)
	jne	.LBB60_1
# %bb.3:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	processInputBuffer      # TAILCALL
.LBB60_1:
	movq	216(%rbx), %r15
	movq	%rbx, %rdi
	callq	processInputBuffer
	movq	216(%rbx), %r14
	subq	%r15, %r14
	je	.LBB60_2
# %bb.4:
	movq	server+536(%rip), %rdi
	movq	48(%rbx), %rsi
	movq	%r14, %rdx
	callq	replicationFeedSlavesFromMasterStream
	movq	48(%rbx), %rdi
	movq	%r14, %rsi
	movq	$-1, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	sdsrange                # TAILCALL
.LBB60_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end60:
	.size	processInputBufferAndReplicate, .Lfunc_end60-processInputBufferAndReplicate
                                        # -- End function
	.globl	catClientInfoString     # -- Begin function catClientInfoString
	.p2align	4, 0x90
	.type	catClientInfoString,@function
catClientInfoString:                    # @catClientInfoString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$168, %rsp
	movq	%rsi, %rbx
	movq	%rdi, -120(%rbp)        # 8-byte Spill
	movl	160(%rsi), %eax
	testb	$1, %al
	jne	.LBB61_2
# %bb.1:
	xorl	%ecx, %ecx
	testb	$2, %al
	jne	.LBB61_4
	jmp	.LBB61_5
.LBB61_2:
	testb	$4, %al
	sete	%cl
	shlb	$2, %cl
	addb	$79, %cl
	movb	%cl, -64(%rbp)
	movl	$1, %ecx
	testb	$2, %al
	je	.LBB61_5
.LBB61_4:
	movb	$77, -64(%rbp,%rcx)
	addq	$1, %rcx
.LBB61_5:
	testl	$262144, %eax           # imm = 0x40000
	jne	.LBB61_6
# %bb.7:
	testb	$8, %al
	jne	.LBB61_8
.LBB61_9:
	testb	$16, %al
	jne	.LBB61_10
.LBB61_11:
	testb	$32, %al
	jne	.LBB61_12
.LBB61_13:
	testb	$64, %al
	jne	.LBB61_14
.LBB61_15:
	testb	%al, %al
	js	.LBB61_16
.LBB61_17:
	testl	$1024, %eax             # imm = 0x400
	jne	.LBB61_18
.LBB61_19:
	testl	$2048, %eax             # imm = 0x800
	jne	.LBB61_20
.LBB61_21:
	testl	$131072, %eax           # imm = 0x20000
	jne	.LBB61_22
.LBB61_23:
	leaq	(%rcx,%rbp), %rax
	addq	$-64, %rax
	testq	%rcx, %rcx
	jne	.LBB61_25
# %bb.24:
	movb	$78, (%rax)
	addq	$1, %rax
	jmp	.LBB61_25
.LBB61_6:
	movb	$80, -64(%rbp,%rcx)
	addq	$1, %rcx
	testb	$8, %al
	je	.LBB61_9
.LBB61_8:
	movb	$120, -64(%rbp,%rcx)
	addq	$1, %rcx
	testb	$16, %al
	je	.LBB61_11
.LBB61_10:
	movb	$98, -64(%rbp,%rcx)
	addq	$1, %rcx
	testb	$32, %al
	je	.LBB61_13
.LBB61_12:
	movb	$100, -64(%rbp,%rcx)
	addq	$1, %rcx
	testb	$64, %al
	je	.LBB61_15
.LBB61_14:
	movb	$99, -64(%rbp,%rcx)
	addq	$1, %rcx
	testb	%al, %al
	jns	.LBB61_17
.LBB61_16:
	movb	$117, -64(%rbp,%rcx)
	addq	$1, %rcx
	testl	$1024, %eax             # imm = 0x400
	je	.LBB61_19
.LBB61_18:
	movb	$65, -64(%rbp,%rcx)
	addq	$1, %rcx
	testl	$2048, %eax             # imm = 0x800
	je	.LBB61_21
.LBB61_20:
	movb	$85, -64(%rbp,%rcx)
	addq	$1, %rcx
	testl	$131072, %eax           # imm = 0x20000
	je	.LBB61_23
.LBB61_22:
	movb	$114, -64(%rbp,%rcx)
	leaq	(%rcx,%rbp), %rax
	addq	$-63, %rax
.LBB61_25:
	movb	$0, (%rax)
	movl	8(%rbx), %esi
	cmpl	$-1, %esi
	je	.LBB61_26
# %bb.27:
	movq	server+72(%rip), %rdi
	callq	aeGetFileEvents
	testb	$1, %al
	jne	.LBB61_29
# %bb.28:
	leaq	-43(%rbp), %rcx
	testb	$2, %al
	jne	.LBB61_31
	jmp	.LBB61_32
.LBB61_26:
	leaq	-43(%rbp), %rcx
	jmp	.LBB61_32
.LBB61_29:
	leaq	-42(%rbp), %rcx
	movb	$114, -43(%rbp)
	testb	$2, %al
	je	.LBB61_32
.LBB61_31:
	movb	$119, (%rcx)
	addq	$1, %rcx
.LBB61_32:
	movb	$0, (%rcx)
	movq	(%rbx), %rax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	512(%rbx), %rcx
	testq	%rcx, %rcx
	jne	.LBB61_37
# %bb.33:
	testb	$8, 161(%rbx)
	jne	.LBB61_34
# %bb.35:
	movl	8(%rbx), %edi
	leaq	-208(%rbp), %rsi
	movl	$78, %edx
	callq	anetFormatPeer
	jmp	.LBB61_36
.LBB61_34:
	movq	server+360(%rip), %rcx
	leaq	-208(%rbp), %rdi
	movl	$78, %esi
	movl	$.L.str.47, %edx
	xorl	%eax, %eax
	callq	snprintf
.LBB61_36:
	leaq	-208(%rbp), %rdi
	callq	sdsnew
	movq	%rax, %rcx
	movq	%rax, 512(%rbx)
.LBB61_37:
	movl	8(%rbx), %r8d
	movq	24(%rbx), %rax
	testq	%rax, %rax
	je	.LBB61_38
# %bb.39:
	movq	8(%rax), %r9
	jmp	.LBB61_40
.LBB61_38:
	movl	$.L.str.49, %r9d
.LBB61_40:
	movq	server+2872(%rip), %r11
	movq	%r11, %rax
	subq	136(%rbx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	subq	144(%rbx), %r11
	movq	16(%rbx), %rax
	movq	496(%rbx), %rdx
	movl	40(%rax), %eax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movl	72(%rdx), %esi
	movq	504(%rbx), %rax
	movl	40(%rax), %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$-1, %eax
	addl	40(%rdx), %esi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	testb	$8, 160(%rbx)
	je	.LBB61_42
# %bb.41:
	movl	360(%rbx), %eax
.LBB61_42:
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	32(%rbx), %rax
	movzbl	-1(%rax), %r12d
	movl	%r12d, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB61_43
# %bb.44:
	movl	%r12d, %edx
	andl	$7, %edx
	jmpq	*.LJTI61_0(,%rdx,8)
.LBB61_45:
	shrq	$3, %r12
	xorl	%r14d, %r14d
	jmp	.LBB61_51
.LBB61_43:
	xorl	%r12d, %r12d
	xorl	%r14d, %r14d
	jmp	.LBB61_51
.LBB61_46:
	movzbl	-3(%rax), %r12d
	movzbl	-2(%rax), %r14d
	jmp	.LBB61_50
.LBB61_47:
	movzwl	-5(%rax), %r12d
	movzwl	-3(%rax), %r14d
	jmp	.LBB61_50
.LBB61_48:
	movl	-9(%rax), %r12d
	movl	-5(%rax), %r14d
	subl	%r12d, %r14d
	jmp	.LBB61_51
.LBB61_49:
	movq	-17(%rax), %r12
	movq	-9(%rax), %r14
.LBB61_50:
	subq	%r12, %r14
.LBB61_51:
	movslq	528(%rbx), %r15
	movq	88(%rbx), %rax
	movq	112(%rbx), %rdx
	movq	40(%rdx), %r10
	leaq	(%r10,%r10,4), %r13
	shlq	$3, %r13
	addq	120(%rbx), %r13
	testq	%rax, %rax
	je	.LBB61_52
# %bb.53:
	movq	(%rax), %rbx
	jmp	.LBB61_54
.LBB61_52:
	movl	$.L.str.50, %ebx
.LBB61_54:
	movl	$.L.str.48, %esi
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movl	$0, %eax
	pushq	%rbx
	leaq	-43(%rbp), %rbx
	pushq	%rbx
	pushq	%r13
	pushq	%r10
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	-72(%rbp)               # 8-byte Folded Reload
	pushq	-80(%rbp)               # 8-byte Folded Reload
	pushq	-88(%rbp)               # 8-byte Folded Reload
	pushq	-96(%rbp)               # 8-byte Folded Reload
	leaq	-64(%rbp), %rbx
	pushq	%rbx
	pushq	%r11
	pushq	-104(%rbp)              # 8-byte Folded Reload
	callq	sdscatfmt
	addq	$280, %rsp              # imm = 0x118
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end61:
	.size	catClientInfoString, .Lfunc_end61-catClientInfoString
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI61_0:
	.quad	.LBB61_45
	.quad	.LBB61_46
	.quad	.LBB61_47
	.quad	.LBB61_48
	.quad	.LBB61_49
                                        # -- End function
	.text
	.globl	getClientsMaxBuffers    # -- Begin function getClientsMaxBuffers
	.p2align	4, 0x90
	.type	getClientsMaxBuffers,@function
getClientsMaxBuffers:                   # @getClientsMaxBuffers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	server+512(%rip), %rdi
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB62_1
# %bb.2:                                # %.preheader
	xorl	%r13d, %r13d
	leaq	-56(%rbp), %r12
	xorl	%ebx, %ebx
	jmp	.LBB62_3
.LBB62_18:                              #   in Loop: Header=BB62_3 Depth=1
	movq	-17(%rax), %r13
	.p2align	4, 0x90
.LBB62_19:                              #   in Loop: Header=BB62_3 Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB62_20
.LBB62_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	112(%rax), %rcx
	movq	40(%rcx), %rcx
	cmpq	%rbx, %rcx
	cmovaq	%rcx, %rbx
	movq	32(%rax), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB62_19
# %bb.4:                                #   in Loop: Header=BB62_3 Depth=1
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI62_0(,%rdx,8)
.LBB62_5:                               #   in Loop: Header=BB62_3 Depth=1
	movq	%rcx, %rdx
	shrq	$3, %rdx
	cmpq	%r13, %rdx
	jbe	.LBB62_19
	jmp	.LBB62_11
.LBB62_6:                               #   in Loop: Header=BB62_3 Depth=1
	movzbl	-3(%rax), %edx
	cmpq	%r13, %rdx
	jbe	.LBB62_19
	jmp	.LBB62_11
.LBB62_7:                               #   in Loop: Header=BB62_3 Depth=1
	movzwl	-5(%rax), %edx
	cmpq	%r13, %rdx
	jbe	.LBB62_19
	jmp	.LBB62_11
.LBB62_8:                               #   in Loop: Header=BB62_3 Depth=1
	movl	-9(%rax), %edx
	cmpq	%r13, %rdx
	jbe	.LBB62_19
	jmp	.LBB62_11
.LBB62_9:                               #   in Loop: Header=BB62_3 Depth=1
	movq	-17(%rax), %rdx
	cmpq	%r13, %rdx
	jbe	.LBB62_19
	.p2align	4, 0x90
.LBB62_11:                              #   in Loop: Header=BB62_3 Depth=1
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB62_12
# %bb.13:                               #   in Loop: Header=BB62_3 Depth=1
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI62_1(,%rdx,8)
.LBB62_14:                              #   in Loop: Header=BB62_3 Depth=1
	shrq	$3, %rcx
	movq	%rcx, %r13
	jmp	.LBB62_19
.LBB62_12:                              #   in Loop: Header=BB62_3 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB62_19
.LBB62_15:                              #   in Loop: Header=BB62_3 Depth=1
	movzbl	-3(%rax), %r13d
	jmp	.LBB62_19
.LBB62_16:                              #   in Loop: Header=BB62_3 Depth=1
	movzwl	-5(%rax), %r13d
	jmp	.LBB62_19
.LBB62_17:                              #   in Loop: Header=BB62_3 Depth=1
	movl	-9(%rax), %r13d
	jmp	.LBB62_19
.LBB62_1:
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB62_20:
	movq	%rbx, (%r15)
	movq	%r13, (%r14)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end62:
	.size	getClientsMaxBuffers, .Lfunc_end62-getClientsMaxBuffers
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI62_0:
	.quad	.LBB62_5
	.quad	.LBB62_6
	.quad	.LBB62_7
	.quad	.LBB62_8
	.quad	.LBB62_9
.LJTI62_1:
	.quad	.LBB62_14
	.quad	.LBB62_15
	.quad	.LBB62_16
	.quad	.LBB62_17
	.quad	.LBB62_18
                                        # -- End function
	.text
	.globl	genClientPeerId         # -- Begin function genClientPeerId
	.p2align	4, 0x90
	.type	genClientPeerId,@function
genClientPeerId:                        # @genClientPeerId
# %bb.0:
	movq	%rdx, %rax
	testb	$8, 161(%rdi)
	jne	.LBB63_1
# %bb.2:
	movl	8(%rdi), %edi
	movq	%rax, %rdx
	jmp	anetFormatPeer          # TAILCALL
.LBB63_1:
	movq	server+360(%rip), %rcx
	movl	$.L.str.47, %edx
	movq	%rsi, %rdi
	movq	%rax, %rsi
	xorl	%eax, %eax
	jmp	snprintf                # TAILCALL
.Lfunc_end63:
	.size	genClientPeerId, .Lfunc_end63-genClientPeerId
                                        # -- End function
	.globl	getClientPeerId         # -- Begin function getClientPeerId
	.p2align	4, 0x90
	.type	getClientPeerId,@function
getClientPeerId:                        # @getClientPeerId
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	movq	512(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB64_5
# %bb.1:
	movq	%rdi, %rbx
	testb	$8, 161(%rdi)
	jne	.LBB64_2
# %bb.3:
	movl	8(%rbx), %edi
	leaq	-96(%rbp), %rsi
	movl	$78, %edx
	callq	anetFormatPeer
	jmp	.LBB64_4
.LBB64_2:
	movq	server+360(%rip), %rcx
	leaq	-96(%rbp), %rdi
	movl	$78, %esi
	movl	$.L.str.47, %edx
	xorl	%eax, %eax
	callq	snprintf
.LBB64_4:
	leaq	-96(%rbp), %rdi
	callq	sdsnew
	movq	%rax, 512(%rbx)
.LBB64_5:
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end64:
	.size	getClientPeerId, .Lfunc_end64-getClientPeerId
                                        # -- End function
	.globl	getClientOutputBufferMemoryUsage # -- Begin function getClientOutputBufferMemoryUsage
	.p2align	4, 0x90
	.type	getClientOutputBufferMemoryUsage,@function
getClientOutputBufferMemoryUsage:       # @getClientOutputBufferMemoryUsage
# %bb.0:
	movq	112(%rdi), %rax
	movq	40(%rax), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	120(%rdi), %rax
	retq
.Lfunc_end65:
	.size	getClientOutputBufferMemoryUsage, .Lfunc_end65-getClientOutputBufferMemoryUsage
                                        # -- End function
	.globl	getAllClientsInfoString # -- Begin function getAllClientsInfoString
	.p2align	4, 0x90
	.type	getAllClientsInfoString,@function
getAllClientsInfoString:                # @getAllClientsInfoString
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	%edi, %ebx
	movq	SDS_NOINIT(%rip), %rdi
	movq	server+512(%rip), %rax
	imulq	$200, 40(%rax), %rsi
	callq	sdsnewlen
	movq	%rax, %r15
	movq	%rax, %rdi
	callq	sdsclear
	movq	server+512(%rip), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	jmp	.LBB66_1
	.p2align	4, 0x90
.LBB66_6:                               #   in Loop: Header=BB66_1 Depth=1
	cmpl	%ebx, %ecx
	je	.LBB66_7
.LBB66_1:                               # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB66_8
# %bb.2:                                #   in Loop: Header=BB66_1 Depth=1
	movq	16(%rax), %rsi
	cmpl	$-1, %ebx
	je	.LBB66_7
# %bb.3:                                #   in Loop: Header=BB66_1 Depth=1
	movl	160(%rsi), %eax
	movl	$3, %ecx
	testb	$2, %al
	jne	.LBB66_6
# %bb.4:                                #   in Loop: Header=BB66_1 Depth=1
	movl	%eax, %edx
	andl	$5, %edx
	movl	$1, %ecx
	cmpl	$1, %edx
	je	.LBB66_6
# %bb.5:                                #   in Loop: Header=BB66_1 Depth=1
	shrl	$17, %eax
	andl	$2, %eax
	movl	%eax, %ecx
	jmp	.LBB66_6
.LBB66_7:                               #   in Loop: Header=BB66_1 Depth=1
	movq	%r15, %rdi
	callq	catClientInfoString
	movl	$.L.str.51, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	movq	%rax, %r15
	jmp	.LBB66_1
.LBB66_8:
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end66:
	.size	getAllClientsInfoString, .Lfunc_end66-getAllClientsInfoString
                                        # -- End function
	.globl	getClientType           # -- Begin function getClientType
	.p2align	4, 0x90
	.type	getClientType,@function
getClientType:                          # @getClientType
# %bb.0:
	movl	160(%rdi), %ecx
	movl	$3, %eax
	testb	$2, %cl
	jne	.LBB67_3
# %bb.1:
	movl	%ecx, %edx
	andl	$5, %edx
	movl	$1, %eax
	cmpl	$1, %edx
	je	.LBB67_3
# %bb.2:
	shrl	$17, %ecx
	andl	$2, %ecx
	movl	%ecx, %eax
.LBB67_3:
	retq
.Lfunc_end67:
	.size	getClientType, .Lfunc_end67-getClientType
                                        # -- End function
	.globl	clientCommand           # -- Begin function clientCommand
	.p2align	4, 0x90
	.type	clientCommand,@function
clientCommand:                          # @clientCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movq	%rdi, %r13
	movl	64(%rdi), %r15d
	movq	72(%rdi), %r14
	movq	8(%r14), %rax
	movq	8(%rax), %rbx
	cmpl	$2, %r15d
	jne	.LBB68_2
# %bb.1:
	movl	$.L.str.52, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_15
.LBB68_2:
	cmpl	$2, %r15d
	setne	%r12b
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB68_7
# %bb.3:
	testb	%r12b, %r12b
	jne	.LBB68_7
# %bb.4:
	movq	(%r13), %rdx
	cmpq	$1, %rdx
	je	.LBB68_159
# %bb.5:
	testq	%rdx, %rdx
	jne	.LBB68_22
.LBB68_6:
	movq	shared+32(%rip), %rsi
	jmp	.LBB68_160
.LBB68_7:
	movl	$.L.str.67, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_16
# %bb.8:
	movl	$.L.str.70, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB68_23
# %bb.9:
	testl	%eax, %eax
	jne	.LBB68_23
# %bb.10:
	movq	16(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.71, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_30
# %bb.11:
	movl	$.L.str.72, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_62
# %bb.12:
	movl	$.L.str.73, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB68_94
# %bb.13:
	movl	160(%r13), %eax
	testl	$4194304, %eax          # imm = 0x400000
	jne	.LBB68_162
# %bb.14:
	orl	$8388608, %eax          # imm = 0x800000
	movl	%eax, 160(%r13)
	jmp	.LBB68_162
.LBB68_15:
	movaps	.LclientCommand.help+96(%rip), %xmm0
	movaps	%xmm0, -128(%rbp)
	movaps	.LclientCommand.help+80(%rip), %xmm0
	movaps	%xmm0, -144(%rbp)
	movaps	.LclientCommand.help+64(%rip), %xmm0
	movaps	%xmm0, -160(%rbp)
	movaps	.LclientCommand.help+48(%rip), %xmm0
	movaps	%xmm0, -176(%rbp)
	movaps	.LclientCommand.help+32(%rip), %xmm0
	movaps	%xmm0, -192(%rbp)
	movaps	.LclientCommand.help+16(%rip), %xmm0
	movaps	%xmm0, -208(%rbp)
	movaps	.LclientCommand.help(%rip), %xmm0
	movaps	%xmm0, -224(%rbp)
	leaq	-224(%rbp), %rsi
	movq	%r13, %rdi
	callq	addReplyHelp
	jmp	.LBB68_162
.LBB68_16:
	cmpl	$4, %r15d
	jne	.LBB68_18
# %bb.17:
	movq	16(%r14), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.68, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_63
.LBB68_18:
	movl	$-1, %ebx
	cmpl	$2, %r15d
	jne	.LBB68_94
.LBB68_19:
	movl	%ebx, %edi
	callq	getAllClientsInfoString
	movq	%rax, %rbx
	movzbl	-1(%rax), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB68_104
# %bb.20:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI68_1(,%rax,8)
.LBB68_21:
	shrq	$3, %rdx
	jmp	.LBB68_109
.LBB68_22:
	movb	$58, -224(%rbp)
	leaq	-223(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	leaq	-224(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%r13, %rdi
	callq	addReplyString
	jmp	.LBB68_162
.LBB68_23:
	movl	$.L.str.74, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_31
# %bb.24:
	movl	$.L.str.80, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	leal	-3(%r15), %ecx
	cmpl	$1, %ecx
	ja	.LBB68_57
# %bb.25:
	testl	%eax, %eax
	jne	.LBB68_57
# %bb.26:
	xorl	%r12d, %r12d
	cmpl	$4, %r15d
	jne	.LBB68_130
# %bb.27:
	movq	24(%r14), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.81, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_130
# %bb.28:
	movl	$.L.str.82, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_129
# %bb.29:
	movl	$.L.str.83, %edi
	callq	strlen
	movl	$.L.str.83, %esi
	jmp	.LBB68_154
.LBB68_30:
	andl	$-20971521, 160(%r13)   # imm = 0xFEBFFFFF
	movq	shared+8(%rip), %rsi
	jmp	.LBB68_160
.LBB68_31:
	cmpl	$3, %r15d
	jne	.LBB68_69
# %bb.32:
	movq	16(%r14), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$-1, -44(%rbp)          # 4-byte Folded Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
.LBB68_33:
	movq	server+512(%rip), %rdi
	leaq	-96(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB68_110
# %bb.34:
	leaq	-96(%rbp), %r15
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
.LBB68_35:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB68_37 Depth 2
	movl	%ebx, -60(%rbp)         # 4-byte Spill
	jmp	.LBB68_37
	.p2align	4, 0x90
.LBB68_36:                              #   in Loop: Header=BB68_37 Depth=2
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB68_103
.LBB68_37:                              #   Parent Loop BB68_35 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	16(%rax), %rbx
	cmpq	$0, -80(%rbp)           # 8-byte Folded Reload
	je	.LBB68_44
# %bb.38:                               #   in Loop: Header=BB68_37 Depth=2
	movq	512(%rbx), %rdi
	testq	%rdi, %rdi
	jne	.LBB68_43
# %bb.39:                               #   in Loop: Header=BB68_37 Depth=2
	testb	$8, 161(%rbx)
	leaq	-224(%rbp), %rax
	jne	.LBB68_41
# %bb.40:                               #   in Loop: Header=BB68_37 Depth=2
	movl	8(%rbx), %edi
	movl	$78, %edx
	movq	%rax, %rsi
	movq	%rax, %r14
	callq	anetFormatPeer
	jmp	.LBB68_42
.LBB68_41:                              #   in Loop: Header=BB68_37 Depth=2
	movq	server+360(%rip), %rcx
	movl	$78, %esi
	movl	$.L.str.47, %edx
	movq	%rax, %rdi
	movq	%rax, %r14
	xorl	%eax, %eax
	callq	snprintf
.LBB68_42:                              #   in Loop: Header=BB68_37 Depth=2
	movq	%r14, %rdi
	callq	sdsnew
	movq	%rax, %rdi
	movq	%rax, 512(%rbx)
.LBB68_43:                              #   in Loop: Header=BB68_37 Depth=2
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	strcmp
	testl	%eax, %eax
	jne	.LBB68_36
.LBB68_44:                              #   in Loop: Header=BB68_37 Depth=2
	cmpl	$-1, -44(%rbp)          # 4-byte Folded Reload
	je	.LBB68_49
# %bb.45:                               #   in Loop: Header=BB68_37 Depth=2
	movl	160(%rbx), %eax
	movl	$3, %ecx
	testb	$2, %al
	jne	.LBB68_48
# %bb.46:                               #   in Loop: Header=BB68_37 Depth=2
	movl	%eax, %edx
	andl	$5, %edx
	movl	$1, %ecx
	cmpl	$1, %edx
	je	.LBB68_48
# %bb.47:                               #   in Loop: Header=BB68_37 Depth=2
	shrl	$17, %eax
	andl	$2, %eax
	movl	%eax, %ecx
.LBB68_48:                              #   in Loop: Header=BB68_37 Depth=2
	cmpl	-44(%rbp), %ecx         # 4-byte Folded Reload
	jne	.LBB68_36
.LBB68_49:                              #   in Loop: Header=BB68_37 Depth=2
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB68_51
# %bb.50:                               #   in Loop: Header=BB68_37 Depth=2
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, (%rbx)
	jne	.LBB68_36
.LBB68_51:                              #   in Loop: Header=BB68_37 Depth=2
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB68_53
# %bb.52:                               #   in Loop: Header=BB68_37 Depth=2
	cmpq	%r13, %rbx
	je	.LBB68_36
.LBB68_53:                              #   in Loop: Header=BB68_35 Depth=1
	cmpq	%r13, %rbx
	je	.LBB68_55
# %bb.54:                               #   in Loop: Header=BB68_35 Depth=1
	movq	%rbx, %rdi
	callq	freeClient
	movl	-60(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB68_56
.LBB68_55:                              #   in Loop: Header=BB68_35 Depth=1
	movl	$1, %ebx
.LBB68_56:                              #   in Loop: Header=BB68_35 Depth=1
	addl	$1, %r12d
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	jne	.LBB68_35
	jmp	.LBB68_111
.LBB68_57:
	movl	$.L.str.85, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB68_95
# %bb.58:
	testl	%eax, %eax
	jne	.LBB68_95
# %bb.59:
	movq	16(%r14), %rdi
	movq	8(%rdi), %rax
	movzbl	-1(%rax), %ecx
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB68_150
# %bb.60:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI68_0(,%rdx,8)
.LBB68_61:
	shrq	$3, %rcx
	jmp	.LBB68_141
.LBB68_62:
	orb	$64, 162(%r13)
	jmp	.LBB68_162
.LBB68_63:
	movq	24(%r14), %rax
	movq	8(%rax), %r14
	movl	$.L.str.92, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_117
# %bb.64:
	movl	$.L.str.93, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$1, %ebx
	testl	%eax, %eax
	je	.LBB68_19
# %bb.65:
	movl	$.L.str.6, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_19
# %bb.66:
	movl	$.L.str.94, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_155
# %bb.67:
	movl	$.L.str.5, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_156
# %bb.68:
	movl	$.L.str.69, %esi
	movq	%r13, %rdi
	movq	%r14, %rdx
	jmp	.LBB68_128
.LBB68_69:
	cmpl	$4, %r15d
	jl	.LBB68_94
# %bb.70:
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	movl	$2, %r12d
	movl	$-1, -44(%rbp)          # 4-byte Folded Spill
	movl	$3, %r14d
	xorl	%eax, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%r13, -56(%rbp)         # 8-byte Spill
	jmp	.LBB68_74
.LBB68_71:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
.LBB68_72:                              #   in Loop: Header=BB68_74 Depth=1
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB68_73:                              #   in Loop: Header=BB68_74 Depth=1
	addl	$2, %r12d
	movl	64(%r13), %r15d
	addq	$2, %r14
	cmpl	%r15d, %r12d
	jge	.LBB68_33
.LBB68_74:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r13), %r13
	movq	-8(%r13,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.66, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	%r14d, %r15d
	jle	.LBB68_78
# %bb.75:                               #   in Loop: Header=BB68_74 Depth=1
	testl	%eax, %eax
	jne	.LBB68_78
# %bb.76:                               #   in Loop: Header=BB68_74 Depth=1
	movq	(%r13,%r14,8), %rsi
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	%r13, %rdi
	leaq	-224(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB68_162
# %bb.77:                               #   in Loop: Header=BB68_74 Depth=1
	movq	-224(%rbp), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB68_73
.LBB68_78:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.68, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	%r14d, %r15d
	jle	.LBB68_85
# %bb.79:                               #   in Loop: Header=BB68_74 Depth=1
	testl	%eax, %eax
	jne	.LBB68_85
# %bb.80:                               #   in Loop: Header=BB68_74 Depth=1
	movq	(%r13,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.92, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_71
# %bb.81:                               #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB68_73
# %bb.82:                               #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_73
# %bb.83:                               #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_93
# %bb.84:                               #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$3, -44(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	je	.LBB68_73
	jmp	.LBB68_164
.LBB68_85:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.75, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	%r14d, %r15d
	jle	.LBB68_88
# %bb.86:                               #   in Loop: Header=BB68_74 Depth=1
	testl	%eax, %eax
	jne	.LBB68_88
# %bb.87:                               #   in Loop: Header=BB68_74 Depth=1
	movq	(%r13,%r14,8), %rax
	movq	8(%rax), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	jmp	.LBB68_72
.LBB68_88:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.76, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	%r14d, %r15d
	jle	.LBB68_163
# %bb.89:                               #   in Loop: Header=BB68_74 Depth=1
	testl	%eax, %eax
	jne	.LBB68_163
# %bb.90:                               #   in Loop: Header=BB68_74 Depth=1
	movq	(%r13,%r14,8), %rax
	movq	8(%rax), %rbx
	movl	$.L.str.77, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB68_92
# %bb.91:                               #   in Loop: Header=BB68_74 Depth=1
	movl	$.L.str.78, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	testl	%eax, %eax
	movq	-56(%rbp), %r13         # 8-byte Reload
	je	.LBB68_73
	jmp	.LBB68_94
.LBB68_92:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$1, -48(%rbp)           # 4-byte Folded Spill
	jmp	.LBB68_72
.LBB68_93:                              #   in Loop: Header=BB68_74 Depth=1
	movl	$2, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB68_73
.LBB68_94:
	movq	shared+128(%rip), %rsi
	jmp	.LBB68_160
.LBB68_95:
	movl	$.L.str.87, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	setne	%al
	orb	%r12b, %al
	je	.LBB68_118
# %bb.96:
	movl	$.L.str.88, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	cmpl	$3, %r15d
	jne	.LBB68_126
# %bb.97:
	testl	%eax, %eax
	jne	.LBB68_126
# %bb.98:
	movq	16(%r14), %rsi
	leaq	-224(%rbp), %rdx
	movq	%r13, %rdi
	movl	$1, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB68_162
# %bb.99:
	movq	-224(%rbp), %rax
	cmpl	$0, server+568(%rip)
	je	.LBB68_101
# %bb.100:
	cmpq	%rax, server+576(%rip)
	jge	.LBB68_102
.LBB68_101:
	movq	%rax, server+576(%rip)
.LBB68_102:
	movl	$1, server+568(%rip)
	movq	shared+8(%rip), %rsi
	jmp	.LBB68_160
.LBB68_103:
	movl	-60(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB68_111
.LBB68_104:
	xorl	%edx, %edx
	jmp	.LBB68_109
.LBB68_105:
	movzbl	-3(%rbx), %edx
	jmp	.LBB68_109
.LBB68_106:
	movzwl	-5(%rbx), %edx
	jmp	.LBB68_109
.LBB68_107:
	movl	-9(%rbx), %edx
	jmp	.LBB68_109
.LBB68_108:
	movq	-17(%rbx), %rdx
.LBB68_109:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCBuffer
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB68_162
.LBB68_110:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
.LBB68_111:
	cmpl	$3, 64(%r13)
	jne	.LBB68_114
# %bb.112:
	testl	%r12d, %r12d
	je	.LBB68_120
# %bb.113:
	movq	shared+8(%rip), %rsi
	jmp	.LBB68_122
.LBB68_114:
	movslq	%r12d, %rdx
	cmpq	$1, %rdx
	je	.LBB68_121
# %bb.115:
	testq	%rdx, %rdx
	jne	.LBB68_123
# %bb.116:
	movq	shared+32(%rip), %rsi
	jmp	.LBB68_122
.LBB68_117:
	xorl	%ebx, %ebx
	jmp	.LBB68_19
.LBB68_118:
	movq	24(%r13), %rbx
	testq	%rbx, %rbx
	je	.LBB68_136
# %bb.119:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkLen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReply
	movq	shared(%rip), %rsi
	jmp	.LBB68_160
.LBB68_120:
	movl	$.L.str.79, %edi
	callq	strlen
	movl	$.L.str.79, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	jmp	.LBB68_124
.LBB68_121:
	movq	shared+40(%rip), %rsi
.LBB68_122:
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB68_124
.LBB68_123:
	movb	$58, -224(%rbp)
	leaq	-223(%rbp), %rdi
	movl	$127, %esi
	callq	ll2string
	cltq
	leaq	-224(%rbp), %rsi
	movw	$2573, 1(%rax,%rsi)     # imm = 0xA0D
	addl	$3, %eax
	movslq	%eax, %rdx
	movq	%r13, %rdi
	callq	addReplyString
.LBB68_124:
	testl	%ebx, %ebx
	je	.LBB68_162
# %bb.125:
	orb	$64, 160(%r13)
	jmp	.LBB68_162
.LBB68_126:
	movl	$.L.str.89, %esi
.LBB68_127:
	movq	%r13, %rdi
	movq	%rbx, %rdx
.LBB68_128:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB68_162
.LBB68_129:
	movl	$1, %r12d
.LBB68_130:
	movq	16(%r14), %rsi
	leaq	-96(%rbp), %rdx
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB68_162
# %bb.131:
	movq	-96(%rbp), %rdi
	callq	intrev64
	movq	%rax, -224(%rbp)
	movq	server+560(%rip), %rdi
	leaq	-224(%rbp), %rsi
	movl	$8, %edx
	callq	raxFind
	testq	%rax, %rax
	je	.LBB68_6
# %bb.132:
	movq	%rax, %rbx
	cmpq	%rax, raxNotFound(%rip)
	je	.LBB68_6
# %bb.133:
	testb	$16, 160(%rbx)
	je	.LBB68_6
# %bb.134:
	testl	%r12d, %r12d
	je	.LBB68_157
# %bb.135:
	movl	$.L.str.84, %edi
	callq	strlen
	movl	$.L.str.84, %esi
	movq	%rbx, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	jmp	.LBB68_158
.LBB68_136:
	movq	shared+80(%rip), %rsi
	jmp	.LBB68_160
.LBB68_137:
	movzbl	-3(%rax), %ecx
	jmp	.LBB68_141
.LBB68_138:
	movzwl	-5(%rax), %ecx
	jmp	.LBB68_141
.LBB68_139:
	movl	-9(%rax), %ecx
	jmp	.LBB68_141
.LBB68_140:
	movq	-17(%rax), %rcx
.LBB68_141:
	testl	%ecx, %ecx
	je	.LBB68_150
# %bb.142:
	jle	.LBB68_147
# %bb.143:
	movslq	%ecx, %rcx
	xorl	%edx, %edx
.LBB68_144:                             # =>This Inner Loop Header: Depth=1
	movzbl	(%rax,%rdx), %ebx
	cmpb	$33, %bl
	jl	.LBB68_153
# %bb.145:                              #   in Loop: Header=BB68_144 Depth=1
	cmpb	$127, %bl
	je	.LBB68_153
# %bb.146:                              #   in Loop: Header=BB68_144 Depth=1
	addq	$1, %rdx
	cmpq	%rcx, %rdx
	jl	.LBB68_144
.LBB68_147:
	movq	24(%r13), %rax
	testq	%rax, %rax
	je	.LBB68_149
# %bb.148:
	movq	%rax, %rdi
	callq	decrRefCount
	movq	72(%r13), %rax
	movq	16(%rax), %rdi
.LBB68_149:
	movq	%rdi, 24(%r13)
	callq	incrRefCount
	movq	shared+8(%rip), %rsi
	jmp	.LBB68_160
.LBB68_150:
	movq	24(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB68_152
# %bb.151:
	callq	decrRefCount
.LBB68_152:
	movq	$0, 24(%r13)
	movq	shared+8(%rip), %rsi
	jmp	.LBB68_160
.LBB68_153:
	movl	$.L.str.86, %edi
	callq	strlen
	movl	$.L.str.86, %esi
.LBB68_154:
	movq	%r13, %rdi
	movq	%rax, %rdx
	callq	addReplyErrorLength
	jmp	.LBB68_162
.LBB68_155:
	movl	$2, %ebx
	jmp	.LBB68_19
.LBB68_156:
	movl	$3, %ebx
	jmp	.LBB68_19
.LBB68_157:
	movq	%rbx, %rdi
	callq	replyToBlockedClientTimedOut
.LBB68_158:
	movq	%rbx, %rdi
	callq	unblockClient
.LBB68_159:
	movq	shared+40(%rip), %rsi
.LBB68_160:
	movq	%r13, %rdi
.LBB68_161:
	callq	addReply
.LBB68_162:
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB68_163:
	movq	shared+128(%rip), %rsi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB68_161
.LBB68_164:
	movl	$.L.str.69, %esi
	jmp	.LBB68_127
.Lfunc_end68:
	.size	clientCommand, .Lfunc_end68-clientCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI68_0:
	.quad	.LBB68_61
	.quad	.LBB68_137
	.quad	.LBB68_138
	.quad	.LBB68_139
	.quad	.LBB68_140
.LJTI68_1:
	.quad	.LBB68_21
	.quad	.LBB68_105
	.quad	.LBB68_106
	.quad	.LBB68_107
	.quad	.LBB68_108
                                        # -- End function
	.text
	.globl	getClientTypeByName     # -- Begin function getClientTypeByName
	.p2align	4, 0x90
	.type	getClientTypeByName,@function
getClientTypeByName:                    # @getClientTypeByName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movl	$.L.str.92, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB69_1
# %bb.2:
	movl	$.L.str.93, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$1, %r14d
	testl	%eax, %eax
	je	.LBB69_7
# %bb.3:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB69_7
# %bb.4:
	movl	$.L.str.94, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB69_5
# %bb.6:
	movl	$.L.str.5, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	leal	-1(,%rcx,4), %r14d
	jmp	.LBB69_7
.LBB69_1:
	xorl	%r14d, %r14d
	jmp	.LBB69_7
.LBB69_5:
	movl	$2, %r14d
.LBB69_7:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end69:
	.size	getClientTypeByName, .Lfunc_end69-getClientTypeByName
                                        # -- End function
	.globl	pauseClients            # -- Begin function pauseClients
	.p2align	4, 0x90
	.type	pauseClients,@function
pauseClients:                           # @pauseClients
# %bb.0:
	cmpl	$0, server+568(%rip)
	je	.LBB70_2
# %bb.1:
	cmpq	%rdi, server+576(%rip)
	jl	.LBB70_2
# %bb.3:
	movl	$1, server+568(%rip)
	retq
.LBB70_2:
	movq	%rdi, server+576(%rip)
	movl	$1, server+568(%rip)
	retq
.Lfunc_end70:
	.size	pauseClients, .Lfunc_end70-pauseClients
                                        # -- End function
	.globl	securityWarningCommand  # -- Begin function securityWarningCommand
	.p2align	4, 0x90
	.type	securityWarningCommand,@function
securityWarningCommand:                 # @securityWarningCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	xorl	%edi, %edi
	callq	time
	movq	%rax, %rbx
	movq	%rax, %rdi
	subq	securityWarningCommand.logged_time(%rip), %rdi
	callq	labs
	cmpq	$61, %rax
	jl	.LBB71_2
# %bb.1:
	movl	$.L.str.90, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, securityWarningCommand.logged_time(%rip)
.LBB71_2:
	movl	160(%r14), %eax
	testl	$1280, %eax             # imm = 0x500
	je	.LBB71_4
# %bb.3:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB71_4:
	orl	$1024, %eax             # imm = 0x400
	movl	%eax, 160(%r14)
	movq	server+520(%rip), %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	listAddNodeTail         # TAILCALL
.Lfunc_end71:
	.size	securityWarningCommand, .Lfunc_end71-securityWarningCommand
                                        # -- End function
	.globl	rewriteClientCommandVector # -- Begin function rewriteClientCommandVector
	.p2align	4, 0x90
	.type	rewriteClientCommandVector,@function
rewriteClientCommandVector:             # @rewriteClientCommandVector
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$200, %rsp
	movl	%esi, %r14d
	movq	%rdi, %r12
	testb	%al, %al
	je	.LBB72_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB72_2:
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	movslq	%r14d, %rbx
	leaq	(,%rbx,8), %rdi
	callq	zmalloc
	movq	%rax, %r15
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -64(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	testl	%ebx, %ebx
	jle	.LBB72_6
# %bb.3:
	movl	%r14d, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB72_4
	.p2align	4, 0x90
.LBB72_11:                              #   in Loop: Header=BB72_4 Depth=1
	movq	-56(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -56(%rbp)
.LBB72_12:                              #   in Loop: Header=BB72_4 Depth=1
	movq	(%rax), %rdi
	movq	%rdi, (%r15,%rbx,8)
	callq	incrRefCount
	addq	$1, %rbx
	cmpq	%rbx, %r13
	je	.LBB72_6
.LBB72_4:                               # =>This Inner Loop Header: Depth=1
	movslq	-64(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB72_11
# %bb.5:                                #   in Loop: Header=BB72_4 Depth=1
	movq	%rcx, %rax
	addq	-48(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -64(%rbp)
	jmp	.LBB72_12
.LBB72_6:
	cmpl	$0, 64(%r12)
	movq	72(%r12), %rdi
	jle	.LBB72_9
# %bb.7:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB72_8:                               # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	64(%r12), %rax
	movq	72(%r12), %rdi
	cmpq	%rax, %rbx
	jl	.LBB72_8
.LBB72_9:
	callq	zfree
	movq	%r15, 72(%r12)
	movl	%r14d, 64(%r12)
	movq	(%r15), %rax
	movq	8(%rax), %rdi
	callq	lookupCommandOrOriginal
	movq	%rax, 80(%r12)
	testq	%rax, %rax
	je	.LBB72_10
# %bb.13:
	addq	$200, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB72_10:
	movl	$.L.str.91, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	$1985, %r8d             # imm = 0x7C1
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end72:
	.size	rewriteClientCommandVector, .Lfunc_end72-rewriteClientCommandVector
                                        # -- End function
	.globl	replaceClientCommandVector # -- Begin function replaceClientCommandVector
	.p2align	4, 0x90
	.type	replaceClientCommandVector,@function
replaceClientCommandVector:             # @replaceClientCommandVector
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	cmpl	$0, 64(%rdi)
	jle	.LBB73_3
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB73_2:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movslq	64(%r12), %rax
	cmpq	%rax, %rbx
	jl	.LBB73_2
.LBB73_3:
	movl	$0, 64(%r12)
	movq	$0, 80(%r12)
	movq	flexos_shared_alloc(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB73_6
# %bb.4:
	movq	72(%r12), %rsi
	callq	*40(%rdi)
	movq	%r14, 72(%r12)
	movl	%r15d, 64(%r12)
	movq	(%r14), %rax
	movq	8(%rax), %rdi
	callq	lookupCommandOrOriginal
	movq	%rax, 80(%r12)
	testq	%rax, %rax
	je	.LBB73_7
# %bb.5:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB73_6:
	movl	$.L.str.98, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.LBB73_7:
	movl	$.L.str.91, %edx
	movl	$.L.str.1, %ecx
	movq	%r12, %rdi
	xorl	%esi, %esi
	movl	$1996, %r8d             # imm = 0x7CC
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end73:
	.size	replaceClientCommandVector, .Lfunc_end73-replaceClientCommandVector
                                        # -- End function
	.globl	rewriteClientCommandArgument # -- Begin function rewriteClientCommandArgument
	.p2align	4, 0x90
	.type	rewriteClientCommandArgument,@function
rewriteClientCommandArgument:           # @rewriteClientCommandArgument
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movl	%esi, %r12d
	movq	%rdi, %r14
	cmpl	%esi, 64(%rdi)
	jle	.LBB74_2
# %bb.1:
	movslq	%r12d, %rbx
	jmp	.LBB74_3
.LBB74_2:
	movq	72(%r14), %rdi
	leal	1(%r12), %r13d
	movslq	%r12d, %rbx
	leaq	8(,%rbx,8), %rsi
	callq	zrealloc
	movq	%rax, 72(%r14)
	movl	%r13d, 64(%r14)
	movq	$0, (%rax,%rbx,8)
.LBB74_3:
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %r13
	movq	%r15, (%rax,%rbx,8)
	movq	%r15, %rdi
	callq	incrRefCount
	testq	%r13, %r13
	je	.LBB74_5
# %bb.4:
	movq	%r13, %rdi
	callq	decrRefCount
.LBB74_5:
	testl	%r12d, %r12d
	jne	.LBB74_7
# %bb.6:
	movq	72(%r14), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	callq	lookupCommandOrOriginal
	movq	%rax, 80(%r14)
	testq	%rax, %rax
	je	.LBB74_8
.LBB74_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB74_8:
	movl	$.L.str.91, %edx
	movl	$.L.str.1, %ecx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$2026, %r8d             # imm = 0x7EA
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end74:
	.size	rewriteClientCommandArgument, .Lfunc_end74-rewriteClientCommandArgument
                                        # -- End function
	.globl	getClientTypeName       # -- Begin function getClientTypeName
	.p2align	4, 0x90
	.type	getClientTypeName,@function
getClientTypeName:                      # @getClientTypeName
# %bb.0:
	cmpl	$3, %edi
	ja	.LBB75_2
# %bb.1:
	movslq	%edi, %rax
	movq	.Lswitch.table.getClientTypeName(,%rax,8), %rax
	retq
.LBB75_2:
	xorl	%eax, %eax
	retq
.Lfunc_end75:
	.size	getClientTypeName, .Lfunc_end75-getClientTypeName
                                        # -- End function
	.globl	checkClientOutputBufferLimits # -- Begin function checkClientOutputBufferLimits
	.p2align	4, 0x90
	.type	checkClientOutputBufferLimits,@function
checkClientOutputBufferLimits:          # @checkClientOutputBufferLimits
# %bb.0:
	movq	112(%rdi), %rax
	movq	40(%rax), %rax
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	120(%rdi), %rax
	movl	160(%rdi), %ecx
	testb	$2, %cl
	jne	.LBB76_1
# %bb.2:
	movl	%ecx, %esi
	andl	$5, %esi
	movl	$1, %r9d
	cmpl	$1, %esi
	je	.LBB76_4
# %bb.3:
	shrq	$17, %rcx
	andl	$2, %ecx
	movq	%rcx, %r9
	jmp	.LBB76_4
.LBB76_1:
	xorl	%r9d, %r9d
.LBB76_4:
	leaq	(,%r9,8), %rsi
	movq	server+1808(%rsi,%rsi,2), %rdx
	addq	$-1, %rdx
	xorl	%ecx, %ecx
	cmpq	%rax, %rdx
	setb	%cl
	movq	server+1816(%rsi,%rsi,2), %rdx
	addq	$-1, %rdx
	cmpq	%rax, %rdx
	setb	%r8b
	jb	.LBB76_5
# %bb.8:
	movq	$0, 152(%rdi)
	jmp	.LBB76_9
.LBB76_5:
	movq	152(%rdi), %rax
	movq	server+2872(%rip), %rsi
	testq	%rax, %rax
	je	.LBB76_6
# %bb.7:
	subq	%rax, %rsi
	leaq	(%r9,%r9,2), %rax
	cmpq	server+1824(,%rax,8), %rsi
	setg	%al
	andb	%r8b, %al
	movzbl	%al, %eax
	orl	%ecx, %eax
	retq
.LBB76_6:
	movq	%rsi, 152(%rdi)
.LBB76_9:
	xorl	%eax, %eax
	orl	%ecx, %eax
	retq
.Lfunc_end76:
	.size	checkClientOutputBufferLimits, .Lfunc_end76-checkClientOutputBufferLimits
                                        # -- End function
	.globl	flushSlavesOutputBuffers # -- Begin function flushSlavesOutputBuffers
	.p2align	4, 0x90
	.type	flushSlavesOutputBuffers,@function
flushSlavesOutputBuffers:               # @flushSlavesOutputBuffers
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	server+536(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB77_11
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %r14
	jmp	.LBB77_2
.LBB77_9:                               #   in Loop: Header=BB77_2 Depth=1
	movl	8(%rbx), %edi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	writeToClient
	.p2align	4, 0x90
.LBB77_10:                              #   in Loop: Header=BB77_2 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB77_11
.LBB77_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	callq	aeGetFileEvents
	movb	$1, %cl
	testb	$2, %al
	jne	.LBB77_4
# %bb.3:                                #   in Loop: Header=BB77_2 Depth=1
	movzbl	162(%rbx), %ecx
	andb	$32, %cl
	shrb	$5, %cl
.LBB77_4:                               #   in Loop: Header=BB77_2 Depth=1
	testb	%cl, %cl
	je	.LBB77_10
# %bb.5:                                #   in Loop: Header=BB77_2 Depth=1
	cmpl	$9, 168(%rbx)
	jne	.LBB77_10
# %bb.6:                                #   in Loop: Header=BB77_2 Depth=1
	cmpl	$0, 172(%rbx)
	jne	.LBB77_10
# %bb.7:                                #   in Loop: Header=BB77_2 Depth=1
	cmpl	$0, 528(%rbx)
	jne	.LBB77_9
# %bb.8:                                #   in Loop: Header=BB77_2 Depth=1
	movq	112(%rbx), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB77_9
	jmp	.LBB77_10
.LBB77_11:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end77:
	.size	flushSlavesOutputBuffers, .Lfunc_end77-flushSlavesOutputBuffers
                                        # -- End function
	.globl	processEventsWhileBlocked # -- Begin function processEventsWhileBlocked
	.p2align	4, 0x90
	.type	processEventsWhileBlocked,@function
processEventsWhileBlocked:              # @processEventsWhileBlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	xorl	%r15d, %r15d
	movl	$-5, %ebx
	.p2align	4, 0x90
.LBB78_1:                               # =>This Inner Loop Header: Depth=1
	incl	%ebx
	je	.LBB78_3
# %bb.2:                                #   in Loop: Header=BB78_1 Depth=1
	movq	server+72(%rip), %rdi
	movl	$5, %esi
	callq	aeProcessEvents
	movl	%eax, %r14d
	callq	handleClientsWithPendingWrites
	addl	%r14d, %eax
	addl	%eax, %r15d
	testl	%eax, %eax
	jne	.LBB78_1
.LBB78_3:
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end78:
	.size	processEventsWhileBlocked, .Lfunc_end78-processEventsWhileBlocked
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB79_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB79_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.99, %edx
	movl	$.L.str.97, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end79:
	.size	uk_pr_crit, .Lfunc_end79-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"o->type == OBJ_STRING"
	.size	.L.str, 22

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/networking.c"
	.size	.L.str.1, 78

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"Wrong obj->encoding in addReply()"
	.size	.L.str.2, 34

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"-ERR "
	.size	.L.str.3, 6

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"\r\n"
	.size	.L.str.4, 3

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"master"
	.size	.L.str.5, 7

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"replica"
	.size	.L.str.6, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"<unknown>"
	.size	.L.str.7, 10

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"== CRITICAL == This %s is sending an error to its %s: '%s' after processing the command '%s'"
	.size	.L.str.8, 93

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"+"
	.size	.L.str.9, 2

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"*%ld\r\n"
	.size	.L.str.10, 7

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"!listNodeValue(ln)"
	.size	.L.str.11, 19

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"inf"
	.size	.L.str.12, 4

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"-inf"
	.size	.L.str.13, 5

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%.17g"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"$%d\r\n%s\r\n"
	.size	.L.str.15, 10

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"%s <subcommand> arg arg ... arg. Subcommands are:"
	.size	.L.str.16, 50

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"Unknown subcommand or wrong number of arguments for '%s'. Try %s HELP."
	.size	.L.str.17, 71

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"Accepting client connection: %s"
	.size	.L.str.18, 32

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"Accepted %s:%d"
	.size	.L.str.19, 15

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"Accepted connection to %s"
	.size	.L.str.20, 26

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"ln != NULL"
	.size	.L.str.21, 11

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"Connection with master lost."
	.size	.L.str.22, 29

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"Connection with replica %s lost."
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"c->reply_bytes == 0"
	.size	.L.str.24, 20

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"Error writing to client: %s"
	.size	.L.str.25, 28

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Protocol error: too big inline request"
	.size	.L.str.26, 39

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"too big inline request"
	.size	.L.str.27, 23

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Protocol error: unbalanced quotes in request"
	.size	.L.str.28, 45

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"unbalanced quotes in inline request"
	.size	.L.str.29, 36

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"c->argc == 0"
	.size	.L.str.30, 13

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"Protocol error: too big mbulk count string"
	.size	.L.str.31, 43

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"too big mbulk count string"
	.size	.L.str.32, 27

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"c->querybuf[c->qb_pos] == '*'"
	.size	.L.str.33, 30

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Protocol error: invalid multibulk length"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"invalid mbulk count"
	.size	.L.str.35, 20

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"c->multibulklen > 0"
	.size	.L.str.36, 20

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"Protocol error: too big bulk count string"
	.size	.L.str.37, 42

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"too big bulk count string"
	.size	.L.str.38, 26

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"Protocol error: expected '$', got '%c'"
	.size	.L.str.39, 39

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"expected $ but got something else"
	.size	.L.str.40, 34

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"Protocol error: invalid bulk length"
	.size	.L.str.41, 36

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"invalid bulk length"
	.size	.L.str.42, 20

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"Unknown request type"
	.size	.L.str.43, 21

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Reading from client: %s"
	.size	.L.str.44, 24

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Client closed connection"
	.size	.L.str.45, 25

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Closing client that reached max query buffer length: %s (qbuf initial bytes: %s)"
	.size	.L.str.46, 81

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"%s:0"
	.size	.L.str.47, 5

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"id=%U addr=%s fd=%i name=%s age=%I idle=%I flags=%s db=%i sub=%i psub=%i multi=%i qbuf=%U qbuf-free=%U obl=%U oll=%U omem=%U events=%s cmd=%s"
	.size	.L.str.48, 142

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.zero	1
	.size	.L.str.49, 1

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"NULL"
	.size	.L.str.50, 5

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"\n"
	.size	.L.str.51, 2

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"help"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"id                     -- Return the ID of the current connection."
	.size	.L.str.53, 67

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"getname                -- Return the name of the current connection."
	.size	.L.str.54, 69

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"kill <ip:port>         -- Kill connection made from <ip:port>."
	.size	.L.str.55, 63

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"kill <option> <value> [option value ...] -- Kill connections. Options are:"
	.size	.L.str.56, 75

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"     addr <ip:port>                      -- Kill connection made from <ip:port>"
	.size	.L.str.57, 80

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"     type (normal|master|replica|pubsub) -- Kill connections by type."
	.size	.L.str.58, 70

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"     skipme (yes|no)   -- Skip killing current connection (default: yes)."
	.size	.L.str.59, 74

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"list [options ...]     -- Return information about client connections. Options:"
	.size	.L.str.60, 80

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"     type (normal|master|replica|pubsub) -- Return clients of specified type."
	.size	.L.str.61, 78

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"pause <timeout>        -- Suspend all Redis clients for <timout> milliseconds."
	.size	.L.str.62, 79

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"reply (on|off|skip)    -- Control the replies sent to the current connection."
	.size	.L.str.63, 78

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"setname <name>         -- Assign the name <name> to the current connection."
	.size	.L.str.64, 76

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"unblock <clientid> [TIMEOUT|ERROR] -- Unblock the specified blocked client."
	.size	.L.str.65, 76

	.type	.LclientCommand.help,@object # @clientCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LclientCommand.help:
	.quad	.L.str.53
	.quad	.L.str.54
	.quad	.L.str.55
	.quad	.L.str.56
	.quad	.L.str.57
	.quad	.L.str.58
	.quad	.L.str.59
	.quad	.L.str.60
	.quad	.L.str.61
	.quad	.L.str.62
	.quad	.L.str.63
	.quad	.L.str.64
	.quad	.L.str.65
	.quad	0
	.size	.LclientCommand.help, 112

	.type	.L.str.66,@object       # @.str.66
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.66:
	.asciz	"id"
	.size	.L.str.66, 3

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"list"
	.size	.L.str.67, 5

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"type"
	.size	.L.str.68, 5

	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"Unknown client type '%s'"
	.size	.L.str.69, 25

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"reply"
	.size	.L.str.70, 6

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"on"
	.size	.L.str.71, 3

	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"off"
	.size	.L.str.72, 4

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"skip"
	.size	.L.str.73, 5

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"kill"
	.size	.L.str.74, 5

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"addr"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"skipme"
	.size	.L.str.76, 7

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"yes"
	.size	.L.str.77, 4

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"no"
	.size	.L.str.78, 3

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"No such client"
	.size	.L.str.79, 15

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"unblock"
	.size	.L.str.80, 8

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"timeout"
	.size	.L.str.81, 8

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"error"
	.size	.L.str.82, 6

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"CLIENT UNBLOCK reason should be TIMEOUT or ERROR"
	.size	.L.str.83, 49

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"-UNBLOCKED client unblocked via CLIENT UNBLOCK"
	.size	.L.str.84, 47

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"setname"
	.size	.L.str.85, 8

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"Client names cannot contain spaces, newlines or special characters."
	.size	.L.str.86, 68

	.type	.L.str.87,@object       # @.str.87
.L.str.87:
	.asciz	"getname"
	.size	.L.str.87, 8

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"pause"
	.size	.L.str.88, 6

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"Unknown subcommand or wrong number of arguments for '%s'. Try CLIENT HELP"
	.size	.L.str.89, 74

	.type	securityWarningCommand.logged_time,@object # @securityWarningCommand.logged_time
	.local	securityWarningCommand.logged_time
	.comm	securityWarningCommand.logged_time,8,8
	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"Possible SECURITY ATTACK detected. It looks like somebody is sending POST or Host: commands to Redis. This is likely due to an attacker attempting to use Cross Protocol Scripting to compromise your Redis instance. Connection aborted."
	.size	.L.str.90, 234

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"c->cmd != NULL"
	.size	.L.str.91, 15

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"normal"
	.size	.L.str.92, 7

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"slave"
	.size	.L.str.93, 6

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"pubsub"
	.size	.L.str.94, 7

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"c->reply_bytes < SIZE_MAX-(1024*64)"
	.size	.L.str.95, 36

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"Client %s scheduled to be closed ASAP for overcoming of output buffer limits."
	.size	.L.str.96, 78

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.97, 23

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"a"
	.size	.L.str.98, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
	.p2align	4
uk_pr_crit.__str:
	.asciz	"libredis_server"
	.size	uk_pr_crit.__str, 16

	.type	uk_pr_crit.__str.99,@object # @uk_pr_crit.__str.99
uk_pr_crit.__str.99:
	.asciz	"networking.c"
	.size	uk_pr_crit.__str.99, 13

	.type	.L.str.100,@object      # @.str.100
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.100:
	.asciz	"Error registering fd event for the new client: %s (fd=%d)"
	.size	.L.str.100, 58

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"-ERR max number of clients reached\r\n"
	.size	.L.str.101, 37

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"127.0.0.1"
	.size	.L.str.102, 10

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"::1"
	.size	.L.str.103, 4

	.type	err,@object             # @err
	.section	.data_shared,"aw",@progbits
	.p2align	4
err:
	.asciz	"-DENIED Redis is running in protected mode because protected mode is enabled, no bind address was specified, no authentication password is requested to clients. In this mode connections are only accepted from the loopback interface. If you want to connect from external computers to Redis you may adopt one of the following solutions: 1) Just disable protected mode sending the command 'CONFIG SET protected-mode no' from the loopback interface by connecting to Redis from the same host the server is running, however MAKE SURE Redis is not publicly accessible from internet if you do so. Use CONFIG REWRITE to make this change permanent. 2) Alternatively you can just disable the protected mode by editing the Redis configuration file, and setting the protected mode option to 'no', and then restarting the server. 3) If you started the server manually just for testing, restart it with the '--protected-mode no' option. 4) Setup a bind address or an authentication password. NOTE: You only need to do one of the above things in order for the server to start accepting connections from the outside.\r\n"
	.size	err, 1102

	.type	.L.str.104,@object      # @.str.104
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.104:
	.asciz	"Query buffer during protocol error: '%s'"
	.size	.L.str.104, 41

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Query buffer during protocol error: '%.*s' (... more %zu bytes ...) '%.*s'"
	.size	.L.str.105, 75

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"Protocol error (%s) from client: %s. %s"
	.size	.L.str.106, 40

	.type	.Lswitch.table.getClientTypeName,@object # @switch.table.getClientTypeName
	.section	.rodata,"a",@progbits
	.p2align	4
.Lswitch.table.getClientTypeName:
	.quad	.L.str.92
	.quad	.L.str.93
	.quad	.L.str.94
	.quad	.L.str.5
	.size	.Lswitch.table.getClientTypeName, 32

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
