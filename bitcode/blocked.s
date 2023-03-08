	.text
	.file	"blocked.c"
	.globl	getTimeoutFromObjectOrReply # -- Begin function getTimeoutFromObjectOrReply
	.p2align	4, 0x90
	.type	getTimeoutFromObjectOrReply,@function
getTimeoutFromObjectOrReply:            # @getTimeoutFromObjectOrReply
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%ecx, %r15d
	movq	%rdx, %r14
	movq	%rdi, %rbx
	leaq	-40(%rbp), %rdx
	movl	$.L.str, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$-1, %r12d
	testl	%eax, %eax
	jne	.LBB0_9
# %bb.1:
	movq	-40(%rbp), %rax
	testq	%rax, %rax
	js	.LBB0_2
# %bb.3:
	xorl	%r12d, %r12d
	testq	%rax, %rax
	je	.LBB0_4
# %bb.5:
	testl	%r15d, %r15d
	jne	.LBB0_7
# %bb.6:
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, -40(%rbp)
.LBB0_7:
	callq	mstime
	addq	-40(%rbp), %rax
	movq	%rax, -40(%rbp)
	jmp	.LBB0_8
.LBB0_2:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB0_9
.LBB0_4:
	xorl	%eax, %eax
.LBB0_8:
	movq	%rax, (%r14)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getTimeoutFromObjectOrReply, .Lfunc_end0-getTimeoutFromObjectOrReply
                                        # -- End function
	.globl	blockClient             # -- Begin function blockClient
	.p2align	4, 0x90
	.type	blockClient,@function
blockClient:                            # @blockClient
# %bb.0:
	orb	$16, 160(%rdi)
	movl	%esi, 384(%rdi)
	addl	$1, server+2736(%rip)
	movslq	%esi, %rax
	addl	$1, server+2740(,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	blockClient, .Lfunc_end1-blockClient
                                        # -- End function
	.globl	processUnblockedClients # -- Begin function processUnblockedClients
	.p2align	4, 0x90
	.type	processUnblockedClients,@function
processUnblockedClients:                # @processUnblockedClients
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	jmp	.LBB2_1
.LBB2_7:                                #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movq	server+2768(%rip), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB2_15
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%rdi), %rsi
	testq	%rsi, %rsi
	je	.LBB2_16
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	16(%rsi), %rbx
	callq	listDelNode
	movl	160(%rbx), %eax
	movl	%eax, %ecx
	andl	$-129, %ecx
	movl	%ecx, 160(%rbx)
	testb	$16, %al
	jne	.LBB2_1
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	movq	32(%rbx), %rcx
	testq	%rcx, %rcx
	je	.LBB2_1
# %bb.5:                                #   in Loop: Header=BB2_1 Depth=1
	movzbl	-1(%rcx), %eax
	movl	%eax, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_1 Depth=1
	movl	%eax, %edx
	andl	$7, %edx
	jmpq	*.LJTI2_0(,%rdx,8)
.LBB2_8:                                #   in Loop: Header=BB2_1 Depth=1
	shrq	$3, %rax
	jmp	.LBB2_13
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movq	-17(%rcx), %rax
	jmp	.LBB2_13
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movzbl	-3(%rcx), %eax
	jmp	.LBB2_13
.LBB2_10:                               #   in Loop: Header=BB2_1 Depth=1
	movzwl	-5(%rcx), %eax
	jmp	.LBB2_13
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movl	-9(%rcx), %eax
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.14:                               #   in Loop: Header=BB2_1 Depth=1
	movq	%rbx, %rdi
	callq	processInputBufferAndReplicate
	jmp	.LBB2_1
.LBB2_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB2_16:
	movl	$.L.str.2, %edi
	movl	$.L.str.3, %esi
	movl	$118, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end2:
	.size	processUnblockedClients, .Lfunc_end2-processUnblockedClients
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI2_0:
	.quad	.LBB2_8
	.quad	.LBB2_9
	.quad	.LBB2_10
	.quad	.LBB2_11
	.quad	.LBB2_12
                                        # -- End function
	.text
	.globl	queueClientForReprocessing # -- Begin function queueClientForReprocessing
	.p2align	4, 0x90
	.type	queueClientForReprocessing,@function
queueClientForReprocessing:             # @queueClientForReprocessing
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	160(%rdi), %eax
	testb	%al, %al
	js	.LBB3_2
# %bb.1:
	movq	%rdi, %rsi
	orl	$128, %eax
	movl	%eax, 160(%rdi)
	movq	server+2768(%rip), %rdi
	callq	listAddNodeTail
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	queueClientForReprocessing, .Lfunc_end3-queueClientForReprocessing
                                        # -- End function
	.globl	unblockClient           # -- Begin function unblockClient
	.p2align	4, 0x90
	.type	unblockClient,@function
unblockClient:                          # @unblockClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	384(%rdi), %eax
	addl	$-1, %eax
	cmpl	$4, %eax
	ja	.LBB4_4
# %bb.1:
	movq	%rdi, %rbx
	jmpq	*.LJTI4_0(,%rax,8)
.LBB4_5:
	movq	%rbx, %rdi
	callq	unblockClientWaitingData
	jmp	.LBB4_6
.LBB4_3:
	movq	%rbx, %rdi
	callq	unblockClientFromModule
	jmp	.LBB4_6
.LBB4_2:
	movq	%rbx, %rdi
	callq	unblockClientWaitingReplicas
.LBB4_6:
	addl	$-1, server+2736(%rip)
	movslq	384(%rbx), %rax
	addl	$-1, server+2740(,%rax,4)
	movl	160(%rbx), %ecx
	movl	%ecx, %eax
	andl	$-17, %eax
	movl	%eax, 160(%rbx)
	movl	$0, 384(%rbx)
	testb	%cl, %cl
	js	.LBB4_8
# %bb.7:
	orl	$128, %eax
	movl	%eax, 160(%rbx)
	movq	server+2768(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB4_4:
	movl	$.L.str.3, %edi
	movl	$.L.str.4, %edx
	movl	$172, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	unblockClient, .Lfunc_end4-unblockClient
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI4_0:
	.quad	.LBB4_5
	.quad	.LBB4_2
	.quad	.LBB4_3
	.quad	.LBB4_5
	.quad	.LBB4_5
                                        # -- End function
	.text
	.globl	unblockClientWaitingData # -- Begin function unblockClientWaitingData
	.p2align	4, 0x90
	.type	unblockClientWaitingData,@function
unblockClientWaitingData:               # @unblockClientWaitingData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r15
	movq	400(%rdi), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	je	.LBB5_1
# %bb.3:
	callq	dictGetIterator
	movq	%rax, %r14
	movq	%rax, %rdi
	jmp	.LBB5_4
	.p2align	4, 0x90
.LBB5_9:                                #   in Loop: Header=BB5_4 Depth=1
	movq	%r14, %rdi
.LBB5_4:                                # =>This Inner Loop Header: Depth=1
	callq	dictNext
	testq	%rax, %rax
	je	.LBB5_10
# %bb.5:                                #   in Loop: Header=BB5_4 Depth=1
	movq	(%rax), %r12
	movq	16(%r15), %rax
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	callq	dictFetchValue
	testq	%rax, %rax
	je	.LBB5_6
# %bb.7:                                #   in Loop: Header=BB5_4 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	listSearchKey
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	cmpq	$0, 40(%rbx)
	jne	.LBB5_9
# %bb.8:                                #   in Loop: Header=BB5_4 Depth=1
	movq	16(%r15), %rax
	movq	16(%rax), %rdi
	movq	%r12, %rsi
	callq	dictDelete
	jmp	.LBB5_9
.LBB5_10:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movq	400(%r15), %rdi
	xorl	%esi, %esi
	callq	dictEmpty
	movq	408(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB5_12
# %bb.11:
	callq	decrRefCount
	movq	$0, 408(%r15)
.LBB5_12:
	movq	424(%r15), %rdi
	testq	%rdi, %rdi
	je	.LBB5_14
# %bb.13:
	callq	decrRefCount
	movq	432(%r15), %rdi
	callq	decrRefCount
	xorps	%xmm0, %xmm0
	movups	%xmm0, 424(%r15)
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_6:
	movl	$.L.str.11, %edx
	movl	$.L.str.3, %ecx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movl	$556, %r8d              # imm = 0x22C
.LBB5_2:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.LBB5_1:
	movl	$.L.str.10, %edx
	movl	$.L.str.3, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$548, %r8d              # imm = 0x224
	jmp	.LBB5_2
.Lfunc_end5:
	.size	unblockClientWaitingData, .Lfunc_end5-unblockClientWaitingData
                                        # -- End function
	.globl	replyToBlockedClientTimedOut # -- Begin function replyToBlockedClientTimedOut
	.p2align	4, 0x90
	.type	replyToBlockedClientTimedOut,@function
replyToBlockedClientTimedOut:           # @replyToBlockedClientTimedOut
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	384(%rdi), %eax
	addl	$-1, %eax
	cmpl	$4, %eax
	ja	.LBB6_4
# %bb.1:
	movq	%rdi, %rbx
	jmpq	*.LJTI6_0(,%rax,8)
.LBB6_5:
	movq	shared+88(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB6_6
.LBB6_3:
	movq	%rbx, %rdi
	callq	moduleBlockedClientTimedOut
	jmp	.LBB6_6
.LBB6_2:
	movq	464(%rbx), %rdi
	callq	replicationCountAcksByOffset
	movslq	%eax, %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB6_4:
	movl	$.L.str.3, %edi
	movl	$.L.str.5, %edx
	movl	$196, %esi
	xorl	%eax, %eax
	callq	_serverPanic
	movl	$1, %edi
	callq	_exit
.Lfunc_end6:
	.size	replyToBlockedClientTimedOut, .Lfunc_end6-replyToBlockedClientTimedOut
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI6_0:
	.quad	.LBB6_5
	.quad	.LBB6_2
	.quad	.LBB6_3
	.quad	.LBB6_5
	.quad	.LBB6_5
                                        # -- End function
	.text
	.globl	disconnectAllBlockedClients # -- Begin function disconnectAllBlockedClients
	.p2align	4, 0x90
	.type	disconnectAllBlockedClients,@function
disconnectAllBlockedClients:            # @disconnectAllBlockedClients
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	server+512(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB7_5
# %bb.1:                                # %.preheader
	leaq	-32(%rbp), %r14
	jmp	.LBB7_2
	.p2align	4, 0x90
.LBB7_4:                                #   in Loop: Header=BB7_2 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB7_5
.LBB7_2:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	testb	$16, 160(%rbx)
	je	.LBB7_4
# %bb.3:                                #   in Loop: Header=BB7_2 Depth=1
	movl	$.L.str.6, %edi
	callq	sdsnew
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	movq	%rbx, %rdi
	callq	unblockClient
	orb	$64, 160(%rbx)
	jmp	.LBB7_4
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	disconnectAllBlockedClients, .Lfunc_end7-disconnectAllBlockedClients
                                        # -- End function
	.globl	handleClientsBlockedOnKeys # -- Begin function handleClientsBlockedOnKeys
	.p2align	4, 0x90
	.type	handleClientsBlockedOnKeys,@function
handleClientsBlockedOnKeys:             # @handleClientsBlockedOnKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movq	server+2776(%rip), %rbx
	cmpq	$0, 40(%rbx)
	je	.LBB8_56
# %bb.1:
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_55:                               #   in Loop: Header=BB8_2 Depth=1
	movq	%rbx, %rdi
	callq	listRelease
	movq	server+2776(%rip), %rbx
	leaq	40(%rbx), %rax
	movq	%rax, -104(%rbp)        # 8-byte Spill
	cmpq	$0, 40(%rbx)
	je	.LBB8_56
.LBB8_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_4 Depth 2
                                        #       Child Loop BB8_10 Depth 3
                                        #       Child Loop BB8_30 Depth 3
                                        #       Child Loop BB8_41 Depth 3
	callq	listCreate
	movq	%rax, server+2776(%rip)
	cmpq	$0, 40(%rbx)
	je	.LBB8_55
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	jmp	.LBB8_4
.LBB8_53:                               #   in Loop: Header=BB8_4 Depth=2
	movq	-64(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB8_54:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%r12), %rdi
	callq	decrRefCount
	movq	%r12, %rdi
	callq	zfree
	movq	-112(%rbp), %rbx        # 8-byte Reload
	movq	%rbx, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	callq	listDelNode
	movq	-104(%rbp), %rax        # 8-byte Reload
	cmpq	$0, (%rax)
	je	.LBB8_55
.LBB8_4:                                #   Parent Loop BB8_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB8_10 Depth 3
                                        #       Child Loop BB8_30 Depth 3
                                        #       Child Loop BB8_41 Depth 3
	movq	(%rbx), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	16(%rax), %r12
	movq	(%r12), %rax
	movq	8(%r12), %rsi
	movq	24(%rax), %rdi
	callq	dictDelete
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	callq	lookupKeyWrite
	testq	%rax, %rax
	je	.LBB8_54
# %bb.5:                                #   in Loop: Header=BB8_4 Depth=2
	movq	%rax, %rbx
	leaq	8(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movb	(%rbx), %al
	andb	$15, %al
	cmpb	$6, %al
	movq	%r12, -64(%rbp)         # 8-byte Spill
	je	.LBB8_38
# %bb.6:                                #   in Loop: Header=BB8_4 Depth=2
	cmpb	$3, %al
	je	.LBB8_26
# %bb.7:                                #   in Loop: Header=BB8_4 Depth=2
	cmpb	$1, %al
	jne	.LBB8_54
# %bb.8:                                #   in Loop: Header=BB8_4 Depth=2
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	(%r12), %rax
	movq	8(%r12), %rsi
	movq	16(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_24
# %bb.9:                                #   in Loop: Header=BB8_4 Depth=2
	movq	8(%rax), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	40(%rax), %r15d
	testl	%r15d, %r15d
	jne	.LBB8_10
.LBB8_24:                               #   in Loop: Header=BB8_4 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	listTypeLength
	testq	%rax, %rax
	movq	-64(%rbp), %r12         # 8-byte Reload
	jne	.LBB8_54
# %bb.25:                               #   in Loop: Header=BB8_4 Depth=2
	movq	(%r12), %rdi
	movq	8(%r12), %rsi
	callq	dbDelete
	movq	(%r12), %rax
	movq	8(%r12), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.7, %esi
	movl	$4, %edi
	callq	notifyKeyspaceEvent
	jmp	.LBB8_54
	.p2align	4, 0x90
.LBB8_11:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%rbx, %rdi
	callq	listDelNode
	movq	%rbx, %rdi
	movq	%r13, %rsi
	callq	listAddNodeTail
	addl	$-1, %r15d
	je	.LBB8_24
.LBB8_10:                               #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rsi
	movq	16(%rsi), %r13
	cmpl	$1, 384(%r13)
	jne	.LBB8_11
# %bb.12:                               #   in Loop: Header=BB8_10 Depth=3
	movq	88(%r13), %rax
	movq	408(%r13), %rbx
	testq	%rax, %rax
	je	.LBB8_13
# %bb.14:                               #   in Loop: Header=BB8_10 Depth=3
	movl	$blpopCommand, %ecx
	cmpq	%rcx, 8(%rax)
	sete	%al
	jmp	.LBB8_15
.LBB8_13:                               #   in Loop: Header=BB8_10 Depth=3
	xorl	%eax, %eax
.LBB8_15:                               #   in Loop: Header=BB8_10 Depth=3
	xorb	$1, %al
	movzbl	%al, %r14d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	callq	listTypePop
	testq	%rax, %rax
	je	.LBB8_24
# %bb.16:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%rax, %r12
	testq	%rbx, %rbx
	je	.LBB8_18
# %bb.17:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%rbx, %rdi
	callq	incrRefCount
.LBB8_18:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%r13, %rdi
	callq	unblockClient
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rcx
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	movq	%r12, %r8
	movl	%r14d, %r9d
	callq	serveClientBlockedOnList
	cmpl	$-1, %eax
	je	.LBB8_19
# %bb.20:                               #   in Loop: Header=BB8_10 Depth=3
	testq	%rbx, %rbx
	je	.LBB8_22
.LBB8_21:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB8_22:                               #   in Loop: Header=BB8_10 Depth=3
	movq	%r12, %rdi
	callq	decrRefCount
	addl	$-1, %r15d
	jne	.LBB8_10
	jmp	.LBB8_24
.LBB8_19:                               #   in Loop: Header=BB8_10 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movl	%r14d, %edx
	callq	listTypePush
	testq	%rbx, %rbx
	jne	.LBB8_21
	jmp	.LBB8_22
.LBB8_26:                               #   in Loop: Header=BB8_4 Depth=2
	movq	(%r12), %rax
	movq	8(%r12), %rsi
	movq	16(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_54
# %bb.27:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%rax), %r15
	movl	40(%r15), %r13d
	movq	%rbx, %rdi
	callq	zsetLength
	testq	%rax, %rax
	je	.LBB8_54
# %bb.28:                               #   in Loop: Header=BB8_4 Depth=2
	testl	%r13d, %r13d
	je	.LBB8_54
# %bb.29:                               #   in Loop: Header=BB8_4 Depth=2
	movq	%rax, %r14
	addl	$-1, %r13d
	movq	%r15, -72(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB8_30:                               #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%r15), %rsi
	movq	16(%rsi), %rbx
	cmpl	$5, 384(%rbx)
	jne	.LBB8_31
# %bb.32:                               #   in Loop: Header=BB8_30 Depth=3
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	88(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_33
# %bb.34:                               #   in Loop: Header=BB8_30 Depth=3
	movl	$bzpopminCommand, %ecx
	cmpq	%rcx, 8(%rax)
	sete	%r15b
	jmp	.LBB8_35
	.p2align	4, 0x90
.LBB8_31:                               #   in Loop: Header=BB8_30 Depth=3
	movq	%r15, %rdi
	callq	listDelNode
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	jmp	.LBB8_36
.LBB8_33:                               #   in Loop: Header=BB8_30 Depth=3
	xorl	%r15d, %r15d
.LBB8_35:                               #   in Loop: Header=BB8_30 Depth=3
	movl	%r15d, %eax
	xorb	$1, %al
	movzbl	%al, %r14d
	movq	%rbx, %rdi
	callq	unblockClient
	movq	%rbx, %rdi
	movq	-56(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rsi
	movl	$1, %edx
	movl	%r14d, %ecx
	movl	$1, %r8d
	xorl	%r9d, %r9d
	callq	genericZpopCommand
	movq	-48(%rbp), %r14         # 8-byte Reload
	addq	$-1, %r14
	testb	%r15b, %r15b
	movl	$server+944, %eax
	movl	$server+936, %ecx
	cmovneq	%rcx, %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rax), %r15
	movq	%r15, %rdi
	callq	strlen
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	createStringObject
	movq	%rax, -96(%rbp)
	movq	(%r12), %rax
	movq	%rax, -88(%rbp)
	movq	(%r12), %rdi
	callq	incrRefCount
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leaq	-96(%rbp), %rdx
	movl	$2, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	-96(%rbp), %rdi
	callq	decrRefCount
	movq	-88(%rbp), %rdi
	callq	decrRefCount
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-72(%rbp), %r15         # 8-byte Reload
.LBB8_36:                               #   in Loop: Header=BB8_30 Depth=3
	addl	$-1, %r13d
	setb	%cl
	testq	%r14, %r14
	je	.LBB8_54
# %bb.37:                               #   in Loop: Header=BB8_30 Depth=3
	testb	%cl, %cl
	jne	.LBB8_30
	jmp	.LBB8_54
.LBB8_38:                               #   in Loop: Header=BB8_4 Depth=2
	movq	(%r12), %rax
	movq	8(%r12), %rsi
	movq	16(%rax), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB8_54
# %bb.39:                               #   in Loop: Header=BB8_4 Depth=2
	movq	8(%rbx), %r14
	movq	8(%rax), %rdi
	leaq	-96(%rbp), %r15
	movq	%r15, %rsi
	callq	listRewind
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB8_53
# %bb.40:                               #   in Loop: Header=BB8_4 Depth=2
	leaq	16(%r14), %rcx
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r14, -72(%rbp)         # 8-byte Spill
	jmp	.LBB8_41
.LBB8_45:                               #   in Loop: Header=BB8_41 Depth=3
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movq	%rbx, %rdi
	callq	unblockClient
	.p2align	4, 0x90
.LBB8_52:                               #   in Loop: Header=BB8_41 Depth=3
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB8_53
.LBB8_41:                               #   Parent Loop BB8_2 Depth=1
                                        #     Parent Loop BB8_4 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	16(%rax), %rbx
	cmpl	$4, 384(%rbx)
	jne	.LBB8_52
# %bb.42:                               #   in Loop: Header=BB8_41 Depth=3
	movq	400(%rbx), %rdi
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	callq	dictFetchValue
	movq	%rax, %r12
	movq	424(%rbx), %rax
	testq	%rax, %rax
	je	.LBB8_43
# %bb.44:                               #   in Loop: Header=BB8_41 Depth=3
	movq	8(%rax), %rsi
	movq	%r14, %rdi
	callq	streamLookupCG
	testq	%rax, %rax
	je	.LBB8_45
# %bb.46:                               #   in Loop: Header=BB8_41 Depth=3
	movq	%rax, %r13
	movups	(%rax), %xmm0
	movups	%xmm0, (%r12)
	jmp	.LBB8_47
.LBB8_43:                               #   in Loop: Header=BB8_41 Depth=3
	xorl	%r13d, %r13d
.LBB8_47:                               #   in Loop: Header=BB8_41 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	streamCompareID
	testl	%eax, %eax
	jle	.LBB8_52
# %bb.48:                               #   in Loop: Header=BB8_41 Depth=3
	movups	(%r12), %xmm0
	movaps	%xmm0, -144(%rbp)
	addq	$1, -136(%rbp)
	testq	%r13, %r13
	je	.LBB8_49
# %bb.50:                               #   in Loop: Header=BB8_41 Depth=3
	movq	432(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r13, %rdi
	movl	$1, %edx
	callq	streamLookupConsumer
	movq	%rax, %r12
	movl	456(%rbx), %r15d
	jmp	.LBB8_51
.LBB8_49:                               #   in Loop: Header=BB8_41 Depth=3
	xorl	%r12d, %r12d
	xorl	%r15d, %r15d
.LBB8_51:                               #   in Loop: Header=BB8_41 Depth=3
	movl	$1, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$2, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movq	-56(%rbp), %r14         # 8-byte Reload
	movq	(%r14), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulk
	movq	(%r14), %rax
	movq	%rax, -160(%rbp)
	movq	424(%rbx), %rax
	movq	%rax, -152(%rbp)
	movq	416(%rbx), %r8
	movq	%rbx, %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	leaq	-144(%rbp), %rdx
	movl	$0, %ecx
	movl	$0, %r9d
	leaq	-160(%rbp), %rax
	pushq	%rax
	pushq	%r15
	pushq	%r12
	pushq	%r13
	callq	streamReplyWithRange
	addq	$32, %rsp
	movq	%rbx, %rdi
	callq	unblockClient
	leaq	-96(%rbp), %r15
	jmp	.LBB8_52
.LBB8_56:
	movl	$42, __A_VARIABLE(%rip)
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	handleClientsBlockedOnKeys, .Lfunc_end8-handleClientsBlockedOnKeys
                                        # -- End function
	.globl	blockForKeys            # -- Begin function blockForKeys
	.p2align	4, 0x90
	.type	blockForKeys,@function
blockForKeys:                           # @blockForKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %ebx
	movq	%rdx, %r12
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movq	%rdi, %r15
	movq	%r8, 392(%rdi)
	movq	%r9, 408(%rdi)
	testq	%r9, %r9
	je	.LBB9_2
# %bb.1:
	movq	%r9, %rdi
	callq	incrRefCount
.LBB9_2:
	testl	%ebx, %ebx
	jle	.LBB9_15
# %bb.3:
	movq	16(%rbp), %r13
	movslq	%ebx, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB9_4
	.p2align	4, 0x90
.LBB9_8:                                #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	callq	zfree
.LBB9_14:                               #   in Loop: Header=BB9_4 Depth=1
	addq	$1, %r14
	addq	$16, %r13
	cmpq	-56(%rbp), %r14         # 8-byte Folded Reload
	jge	.LBB9_15
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, -44(%rbp)           # 4-byte Folded Reload
	jne	.LBB9_5
# %bb.6:                                #   in Loop: Header=BB9_4 Depth=1
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %rbx
	movl	$16, %edx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memcpy
	jmp	.LBB9_7
	.p2align	4, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_4 Depth=1
	xorl	%ebx, %ebx
.LBB9_7:                                #   in Loop: Header=BB9_4 Depth=1
	movq	400(%r15), %rdi
	movq	(%r12,%r14,8), %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB9_8
# %bb.9:                                #   in Loop: Header=BB9_4 Depth=1
	movq	(%r12,%r14,8), %rdi
	callq	incrRefCount
	movq	16(%r15), %rax
	movq	16(%rax), %rdi
	movq	(%r12,%r14,8), %rsi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB9_10
# %bb.12:                               #   in Loop: Header=BB9_4 Depth=1
	movq	8(%rax), %rbx
	jmp	.LBB9_13
.LBB9_10:                               #   in Loop: Header=BB9_4 Depth=1
	callq	listCreate
	movq	%rax, %rbx
	movq	16(%r15), %rax
	movq	16(%rax), %rdi
	movq	(%r12,%r14,8), %rsi
	movq	%rbx, %rdx
	callq	dictAdd
	movl	%eax, -48(%rbp)         # 4-byte Spill
	movq	(%r12,%r14,8), %rdi
	callq	incrRefCount
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	jne	.LBB9_11
.LBB9_13:                               #   in Loop: Header=BB9_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	jmp	.LBB9_14
.LBB9_15:
	orb	$16, 160(%r15)
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 384(%r15)
	addl	$1, server+2736(%rip)
	cltq
	addl	$1, server+2740(,%rax,4)
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
.LBB9_11:
	movq	(%r12,%r14,8), %rsi
	movl	$.L.str.9, %edx
	movl	$.L.str.3, %ecx
	movq	%r15, %rdi
	movl	$532, %r8d              # imm = 0x214
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end9:
	.size	blockForKeys, .Lfunc_end9-blockForKeys
                                        # -- End function
	.globl	signalKeyAsReady        # -- Begin function signalKeyAsReady
	.p2align	4, 0x90
	.type	signalKeyAsReady,@function
signalKeyAsReady:                       # @signalKeyAsReady
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	callq	dictFind
	testq	%rax, %rax
	je	.LBB10_3
# %bb.1:
	movq	24(%r14), %rdi
	movq	%rbx, %rsi
	callq	dictFind
	testq	%rax, %rax
	jne	.LBB10_3
# %bb.2:
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%rbx, 8(%rax)
	movq	%r14, (%rax)
	movq	%rbx, %rdi
	callq	incrRefCount
	movq	server+2776(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	movq	%rbx, %rdi
	callq	incrRefCount
	movq	24(%r14), %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	testl	%eax, %eax
	jne	.LBB10_4
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_4:
	movl	$.L.str.12, %edi
	movl	$.L.str.3, %esi
	movl	$605, %edx              # imm = 0x25D
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end10:
	.size	signalKeyAsReady, .Lfunc_end10-signalKeyAsReady
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"timeout is not an integer or out of range"
	.size	.L.str, 42

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"timeout is negative"
	.size	.L.str.1, 20

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ln != NULL"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/blocked.c"
	.size	.L.str.3, 75

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Unknown btype in unblockClient()."
	.size	.L.str.4, 34

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"Unknown btype in replyToBlockedClientTimedOut()."
	.size	.L.str.5, 49

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"-UNBLOCKED force unblock from blocking operation, instance state changed (master -> replica?)\r\n"
	.size	.L.str.6, 96

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"del"
	.size	.L.str.7, 4

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"-NOGROUP the consumer group this client was blocked on no longer exists"
	.size	.L.str.8, 72

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"retval == DICT_OK"
	.size	.L.str.9, 18

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"dictSize(c->bpop.keys) != 0"
	.size	.L.str.10, 28

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"l != NULL"
	.size	.L.str.11, 10

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"dictAdd(db->ready_keys,key,NULL) == DICT_OK"
	.size	.L.str.12, 44

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
