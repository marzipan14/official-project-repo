	.text
	.file	"pubsub.c"
	.globl	freePubsubPattern       # -- Begin function freePubsubPattern
	.p2align	4, 0x90
	.type	freePubsubPattern,@function
freePubsubPattern:                      # @freePubsubPattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	8(%rdi), %rdi
	callq	decrRefCount
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	freePubsubPattern, .Lfunc_end0-freePubsubPattern
                                        # -- End function
	.globl	listMatchPubsubPattern  # -- Begin function listMatchPubsubPattern
	.p2align	4, 0x90
	.type	listMatchPubsubPattern,@function
listMatchPubsubPattern:                 # @listMatchPubsubPattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rcx
	xorl	%eax, %eax
	cmpq	(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
# %bb.1:
	movq	8(%rdi), %rdi
	movq	8(%rsi), %rsi
	callq	equalStringObjects
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	listMatchPubsubPattern, .Lfunc_end1-listMatchPubsubPattern
                                        # -- End function
	.globl	clientSubscriptionsCount # -- Begin function clientSubscriptionsCount
	.p2align	4, 0x90
	.type	clientSubscriptionsCount,@function
clientSubscriptionsCount:               # @clientSubscriptionsCount
# %bb.0:
	movq	496(%rdi), %rcx
	movl	72(%rcx), %eax
	addl	40(%rcx), %eax
	movq	504(%rdi), %rcx
	addl	40(%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	clientSubscriptionsCount, .Lfunc_end2-clientSubscriptionsCount
                                        # -- End function
	.globl	pubsubSubscribeChannel  # -- Begin function pubsubSubscribeChannel
	.p2align	4, 0x90
	.type	pubsubSubscribeChannel,@function
pubsubSubscribeChannel:                 # @pubsubSubscribeChannel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	496(%rdi), %rdi
	xorl	%r15d, %r15d
	xorl	%edx, %edx
	callq	dictAdd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_5
# %bb.1:
	movq	%r14, %rdi
	callq	incrRefCount
	movq	server+2904(%rip), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_2
# %bb.3:
	movq	8(%rax), %r15
	jmp	.LBB3_4
.LBB3_2:
	callq	listCreate
	movq	%rax, %r15
	movq	server+2904(%rip), %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	dictAdd
	movq	%r14, %rdi
	callq	incrRefCount
.LBB3_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB3_5:
	movq	shared+80472(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	shared+264(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	496(%rbx), %rax
	movq	504(%rbx), %rcx
	movl	72(%rax), %edx
	addl	40(%rax), %edx
	addl	40(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	pubsubSubscribeChannel, .Lfunc_end3-pubsubSubscribeChannel
                                        # -- End function
	.globl	pubsubUnsubscribeChannel # -- Begin function pubsubUnsubscribeChannel
	.p2align	4, 0x90
	.type	pubsubUnsubscribeChannel,@function
pubsubUnsubscribeChannel:               # @pubsubUnsubscribeChannel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	incrRefCount
	movq	496(%rbx), %rdi
	movq	%r14, %rsi
	callq	dictDelete
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB4_8
# %bb.1:
	movq	server+2904(%rip), %rdi
	movq	%r14, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_2
# %bb.4:
	movq	8(%rax), %r12
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_5
# %bb.6:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	cmpq	$0, 40(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jne	.LBB4_8
# %bb.7:
	movq	server+2904(%rip), %rdi
	movq	%r14, %rsi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB4_10
# %bb.9:
	movq	shared+80472(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	shared+272(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	496(%rbx), %rax
	movq	504(%rbx), %rcx
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	addq	40(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB4_10:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_2:
	movl	$.L.str, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$101, %r8d
	jmp	.LBB4_3
.LBB4_5:
	movl	$.L.str.2, %edx
	movl	$.L.str.1, %ecx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$104, %r8d
.LBB4_3:
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	pubsubUnsubscribeChannel, .Lfunc_end4-pubsubUnsubscribeChannel
                                        # -- End function
	.globl	pubsubSubscribePattern  # -- Begin function pubsubSubscribePattern
	.p2align	4, 0x90
	.type	pubsubSubscribePattern,@function
pubsubSubscribePattern:                 # @pubsubSubscribePattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	504(%rdi), %rdi
	callq	listSearchKey
	xorl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB5_2
# %bb.1:
	movq	504(%rbx), %rdi
	movq	%r14, %rsi
	callq	listAddNodeTail
	movq	%r14, %rdi
	callq	incrRefCount
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	getDecodedObject
	movq	%rax, 8(%r15)
	movq	%rbx, (%r15)
	movq	server+2912(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
.LBB5_2:
	movq	shared+80472(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	shared+280(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	496(%rbx), %rax
	movq	504(%rbx), %rcx
	movl	72(%rax), %edx
	addl	40(%rax), %edx
	addl	40(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	pubsubSubscribePattern, .Lfunc_end5-pubsubSubscribePattern
                                        # -- End function
	.globl	pubsubUnsubscribePattern # -- Begin function pubsubUnsubscribePattern
	.p2align	4, 0x90
	.type	pubsubUnsubscribePattern,@function
pubsubUnsubscribePattern:               # @pubsubUnsubscribePattern
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	callq	incrRefCount
	movq	504(%rbx), %rdi
	movq	%r14, %rsi
	callq	listSearchKey
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:
	movq	504(%rbx), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movq	%rbx, -48(%rbp)
	movq	%r14, -40(%rbp)
	movq	server+2912(%rip), %rdi
	leaq	-48(%rbp), %rsi
	callq	listSearchKey
	movq	server+2912(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
	jmp	.LBB6_3
.LBB6_1:
	xorl	%r12d, %r12d
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB6_5
# %bb.4:
	movq	shared+80472(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	shared+288(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	movq	496(%rbx), %rax
	movq	504(%rbx), %rcx
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	addq	40(%rcx), %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB6_5:
	movq	%r14, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	pubsubUnsubscribePattern, .Lfunc_end6-pubsubUnsubscribePattern
                                        # -- End function
	.globl	pubsubUnsubscribeAllChannels # -- Begin function pubsubUnsubscribeAllChannels
	.p2align	4, 0x90
	.type	pubsubUnsubscribeAllChannels,@function
pubsubUnsubscribeAllChannels:           # @pubsubUnsubscribeAllChannels
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%esi, %r12d
	movq	%rdi, %r15
	movq	496(%rdi), %rdi
	callq	dictGetSafeIterator
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB7_3
	.p2align	4, 0x90
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rsi
	movq	%r15, %rdi
	movl	%r12d, %edx
	callq	pubsubUnsubscribeChannel
	addl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_1
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB7_6
# %bb.4:
	testl	%ebx, %ebx
	jne	.LBB7_6
# %bb.5:
	movq	shared+80472(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movq	shared+272(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movq	shared+80(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
	movq	496(%r15), %rax
	movq	504(%r15), %rcx
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	addq	40(%rcx), %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB7_6:
	movq	%r14, %rdi
	callq	dictReleaseIterator
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	pubsubUnsubscribeAllChannels, .Lfunc_end7-pubsubUnsubscribeAllChannels
                                        # -- End function
	.globl	pubsubUnsubscribeAllPatterns # -- Begin function pubsubUnsubscribeAllPatterns
	.p2align	4, 0x90
	.type	pubsubUnsubscribeAllPatterns,@function
pubsubUnsubscribeAllPatterns:           # @pubsubUnsubscribeAllPatterns
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movl	%esi, %r15d
	movq	%rdi, %r14
	movq	504(%rdi), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB8_3
# %bb.1:                                # %.preheader
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rsi
	movq	%r14, %rdi
	movl	%r15d, %edx
	callq	pubsubUnsubscribePattern
	addl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_2
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB8_6
# %bb.4:
	testl	%ebx, %ebx
	jne	.LBB8_6
# %bb.5:
	movq	shared+80472(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movq	shared+288(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movq	496(%r14), %rax
	movq	504(%r14), %rcx
	movq	72(%rax), %rsi
	addq	40(%rax), %rsi
	addq	40(%rcx), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	pubsubUnsubscribeAllPatterns, .Lfunc_end8-pubsubUnsubscribeAllPatterns
                                        # -- End function
	.globl	pubsubPublishMessage    # -- Begin function pubsubPublishMessage
	.p2align	4, 0x90
	.type	pubsubPublishMessage,@function
pubsubPublishMessage:                   # @pubsubPublishMessage
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
	movq	server+2904(%rip), %rdi
	movq	%r15, %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_1
# %bb.2:
	movq	8(%rax), %rdi
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB9_5
# %bb.3:                                # %.preheader
	leaq	-56(%rbp), %r12
	.p2align	4, 0x90
.LBB9_4:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	shared+80472(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	shared+248(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	addReplyBulk
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB9_4
.LBB9_5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_6
.LBB9_1:
	xorl	%r13d, %r13d
.LBB9_6:
	movq	server+2912(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_29
# %bb.7:
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%r15, %rdi
	callq	getDecodedObject
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_28
# %bb.8:
	leaq	-56(%rbp), %r12
	jmp	.LBB9_9
	.p2align	4, 0x90
.LBB9_27:                               #   in Loop: Header=BB9_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_28
.LBB9_9:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %rdi
	movzbl	-1(%rdi), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB9_10
# %bb.11:                               #   in Loop: Header=BB9_9 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_12:                               #   in Loop: Header=BB9_9 Depth=1
	shrq	$3, %rsi
	jmp	.LBB9_17
.LBB9_10:                               #   in Loop: Header=BB9_9 Depth=1
	xorl	%esi, %esi
	jmp	.LBB9_17
.LBB9_13:                               #   in Loop: Header=BB9_9 Depth=1
	movzbl	-3(%rdi), %esi
	jmp	.LBB9_17
.LBB9_14:                               #   in Loop: Header=BB9_9 Depth=1
	movzwl	-5(%rdi), %esi
	jmp	.LBB9_17
.LBB9_15:                               #   in Loop: Header=BB9_9 Depth=1
	movl	-9(%rdi), %esi
	jmp	.LBB9_17
.LBB9_16:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-17(%rdi), %rsi
	.p2align	4, 0x90
.LBB9_17:                               #   in Loop: Header=BB9_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r15), %rdx
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB9_18
# %bb.19:                               #   in Loop: Header=BB9_9 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI9_1(,%rax,8)
.LBB9_20:                               #   in Loop: Header=BB9_9 Depth=1
	shrq	$3, %rcx
	jmp	.LBB9_25
.LBB9_18:                               #   in Loop: Header=BB9_9 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB9_25
.LBB9_21:                               #   in Loop: Header=BB9_9 Depth=1
	movzbl	-3(%rdx), %ecx
	jmp	.LBB9_25
.LBB9_22:                               #   in Loop: Header=BB9_9 Depth=1
	movzwl	-5(%rdx), %ecx
	jmp	.LBB9_25
.LBB9_23:                               #   in Loop: Header=BB9_9 Depth=1
	movl	-9(%rdx), %ecx
	jmp	.LBB9_25
.LBB9_24:                               #   in Loop: Header=BB9_9 Depth=1
	movq	-17(%rdx), %rcx
	.p2align	4, 0x90
.LBB9_25:                               #   in Loop: Header=BB9_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_27
# %bb.26:                               #   in Loop: Header=BB9_9 Depth=1
	movq	(%rbx), %rdi
	movq	shared+80480(%rip), %rsi
	callq	addReply
	movq	(%rbx), %rdi
	movq	shared+256(%rip), %rsi
	callq	addReply
	movq	(%rbx), %rdi
	movq	8(%rbx), %rsi
	callq	addReplyBulk
	movq	(%rbx), %rdi
	movq	%r15, %rsi
	callq	addReplyBulk
	movq	(%rbx), %rdi
	movq	%r14, %rsi
	callq	addReplyBulk
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_27
.LBB9_28:
	movq	%r15, %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB9_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	pubsubPublishMessage, .Lfunc_end9-pubsubPublishMessage
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_12
	.quad	.LBB9_13
	.quad	.LBB9_14
	.quad	.LBB9_15
	.quad	.LBB9_16
.LJTI9_1:
	.quad	.LBB9_20
	.quad	.LBB9_21
	.quad	.LBB9_22
	.quad	.LBB9_23
	.quad	.LBB9_24
                                        # -- End function
	.text
	.globl	subscribeCommand        # -- Begin function subscribeCommand
	.p2align	4, 0x90
	.type	subscribeCommand,@function
subscribeCommand:                       # @subscribeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_3
# %bb.1:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	pubsubSubscribeChannel
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB10_2
.LBB10_3:
	orb	$4, 162(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	subscribeCommand, .Lfunc_end10-subscribeCommand
                                        # -- End function
	.globl	unsubscribeCommand      # -- Begin function unsubscribeCommand
	.p2align	4, 0x90
	.type	unsubscribeCommand,@function
unsubscribeCommand:                     # @unsubscribeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_2
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	pubsubUnsubscribeAllChannels
	jmp	.LBB11_5
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jl	.LBB11_5
# %bb.3:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	pubsubUnsubscribeChannel
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB11_4
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	496(%r14), %rax
	movq	504(%r14), %rcx
	movl	72(%rax), %edx
	addl	40(%rax), %edx
	addl	40(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_7
# %bb.6:
	andb	$-5, 162(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	unsubscribeCommand, .Lfunc_end11-unsubscribeCommand
                                        # -- End function
	.globl	psubscribeCommand       # -- Begin function psubscribeCommand
	.p2align	4, 0x90
	.type	psubscribeCommand,@function
psubscribeCommand:                      # @psubscribeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB12_3
# %bb.1:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB12_2:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	pubsubSubscribePattern
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB12_2
.LBB12_3:
	orb	$4, 162(%r14)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	psubscribeCommand, .Lfunc_end12-psubscribeCommand
                                        # -- End function
	.globl	punsubscribeCommand     # -- Begin function punsubscribeCommand
	.p2align	4, 0x90
	.type	punsubscribeCommand,@function
punsubscribeCommand:                    # @punsubscribeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB13_2
# %bb.1:
	movq	%r14, %rdi
	movl	$1, %esi
	callq	pubsubUnsubscribeAllPatterns
	jmp	.LBB13_5
.LBB13_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jl	.LBB13_5
# %bb.3:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	movl	$1, %edx
	callq	pubsubUnsubscribePattern
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB13_4
.LBB13_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	496(%r14), %rax
	movq	504(%r14), %rcx
	movl	72(%rax), %edx
	addl	40(%rax), %edx
	addl	40(%rcx), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_7
# %bb.6:
	andb	$-5, 162(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	punsubscribeCommand, .Lfunc_end13-punsubscribeCommand
                                        # -- End function
	.globl	publishCommand          # -- Begin function publishCommand
	.p2align	4, 0x90
	.type	publishCommand,@function
publishCommand:                         # @publishCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	pubsubPublishMessage
	movl	%eax, %r14d
	cmpl	$0, server+2924(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_2
# %bb.1:
	movq	72(%rbx), %rax
	movq	8(%rax), %rdi
	movq	16(%rax), %rsi
	callq	clusterPropagatePublish
	jmp	.LBB14_3
.LBB14_2:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	forceCommandPropagation
.LBB14_3:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rsi
	movq	%rbx, %rdi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end14:
	.size	publishCommand, .Lfunc_end14-publishCommand
                                        # -- End function
	.globl	pubsubCommand           # -- Begin function pubsubCommand
	.p2align	4, 0x90
	.type	pubsubCommand,@function
pubsubCommand:                          # @pubsubCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r14
	movl	64(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rdi), %r12
	movq	8(%r12), %rax
	movq	8(%rax), %rbx
	cmpl	$2, %r15d
	jne	.LBB15_3
# %bb.1:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_2
.LBB15_3:
	movl	$.L.str.7, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_4
.LBB15_32:
	movl	$.L.str.8, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_40
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB15_40
# %bb.34:
	leal	(%r15,%r15), %eax
	addl	$-4, %eax
	movslq	%eax, %rsi
	movq	%r14, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB15_44
# %bb.35:                               # %.preheader
	movl	$2, %ebx
	jmp	.LBB15_36
	.p2align	4, 0x90
.LBB15_38:                              #   in Loop: Header=BB15_36 Depth=1
	movq	40(%r15), %rsi
	movl	$42, __A_VARIABLE(%rip)
.LBB15_39:                              #   in Loop: Header=BB15_36 Depth=1
	movq	%r14, %rdi
	callq	addReplyLongLong
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB15_44
.LBB15_36:                              # =>This Inner Loop Header: Depth=1
	movq	server+2904(%rip), %rdi
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	addReplyBulk
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB15_38
# %bb.37:                               #   in Loop: Header=BB15_36 Depth=1
	xorl	%esi, %esi
	jmp	.LBB15_39
.LBB15_40:
	movl	$.L.str.9, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB15_43
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB15_43
# %bb.42:
	movq	server+2912(%rip), %rax
	movq	40(%rax), %rsi
	movq	%r14, %rdi
	callq	addReplyLongLong
	jmp	.LBB15_44
.LBB15_43:
	movq	%r14, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB15_44
.LBB15_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jne	.LBB15_6
# %bb.5:
	xorl	%ebx, %ebx
	jmp	.LBB15_8
.LBB15_2:
	movaps	.LpubsubCommand.help+16(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movaps	.LpubsubCommand.help(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	leaq	-80(%rbp), %rsi
	movq	%r14, %rdi
	callq	addReplyHelp
	jmp	.LBB15_44
.LBB15_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %r15d
	jne	.LBB15_32
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
	movq	8(%rax), %rbx
.LBB15_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	server+2904(%rip), %rdi
	callq	dictGetIterator
	movq	%rax, %r15
	movq	%r14, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, -48(%rbp)         # 8-byte Spill
	je	.LBB15_9
# %bb.10:
	xorl	%r13d, %r13d
	jmp	.LBB15_11
.LBB15_27:                              #   in Loop: Header=BB15_11 Depth=1
	movq	-17(%rdx), %rcx
	.p2align	4, 0x90
.LBB15_28:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
                                        # kill: def $esi killed $esi killed $rsi
                                        # kill: def $ecx killed $ecx killed $rcx
	xorl	%r8d, %r8d
	callq	stringmatchlen
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB15_30
.LBB15_29:                              #   in Loop: Header=BB15_11 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	addReplyBulk
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB15_30:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	dictNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_31
.LBB15_11:                              # =>This Inner Loop Header: Depth=1
	movq	(%rax), %r12
	movq	8(%r12), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB15_29
# %bb.12:                               #   in Loop: Header=BB15_11 Depth=1
	movzbl	-1(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_13
# %bb.14:                               #   in Loop: Header=BB15_11 Depth=1
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_0(,%rax,8)
.LBB15_15:                              #   in Loop: Header=BB15_11 Depth=1
	shrq	$3, %rsi
	jmp	.LBB15_20
.LBB15_13:                              #   in Loop: Header=BB15_11 Depth=1
	xorl	%esi, %esi
	jmp	.LBB15_20
.LBB15_16:                              #   in Loop: Header=BB15_11 Depth=1
	movzbl	-3(%rbx), %esi
	jmp	.LBB15_20
.LBB15_17:                              #   in Loop: Header=BB15_11 Depth=1
	movzwl	-5(%rbx), %esi
	jmp	.LBB15_20
.LBB15_18:                              #   in Loop: Header=BB15_11 Depth=1
	movl	-9(%rbx), %esi
	jmp	.LBB15_20
.LBB15_19:                              #   in Loop: Header=BB15_11 Depth=1
	movq	-17(%rbx), %rsi
	.p2align	4, 0x90
.LBB15_20:                              #   in Loop: Header=BB15_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-1(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB15_21
# %bb.22:                               #   in Loop: Header=BB15_11 Depth=1
	movl	%ecx, %eax
	andl	$7, %eax
	jmpq	*.LJTI15_1(,%rax,8)
.LBB15_23:                              #   in Loop: Header=BB15_11 Depth=1
	shrq	$3, %rcx
	jmp	.LBB15_28
.LBB15_21:                              #   in Loop: Header=BB15_11 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB15_28
.LBB15_24:                              #   in Loop: Header=BB15_11 Depth=1
	movzbl	-3(%rdx), %ecx
	jmp	.LBB15_28
.LBB15_25:                              #   in Loop: Header=BB15_11 Depth=1
	movzwl	-5(%rdx), %ecx
	jmp	.LBB15_28
.LBB15_26:                              #   in Loop: Header=BB15_11 Depth=1
	movl	-9(%rdx), %ecx
	jmp	.LBB15_28
.LBB15_9:
	xorl	%r13d, %r13d
.LBB15_31:
	movq	%r15, %rdi
	callq	dictReleaseIterator
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	callq	setDeferredMultiBulkLength
.LBB15_44:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	pubsubCommand, .Lfunc_end15-pubsubCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI15_0:
	.quad	.LBB15_15
	.quad	.LBB15_16
	.quad	.LBB15_17
	.quad	.LBB15_18
	.quad	.LBB15_19
.LJTI15_1:
	.quad	.LBB15_23
	.quad	.LBB15_24
	.quad	.LBB15_25
	.quad	.LBB15_26
	.quad	.LBB15_27
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"de != NULL"
	.size	.L.str, 11

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/pubsub.c"
	.size	.L.str.1, 74

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"ln != NULL"
	.size	.L.str.2, 11

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"help"
	.size	.L.str.3, 5

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"CHANNELS [<pattern>] -- Return the currently active channels matching a pattern (default: all)."
	.size	.L.str.4, 96

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"NUMPAT -- Return number of subscriptions to patterns."
	.size	.L.str.5, 54

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"NUMSUB [channel-1 .. channel-N] -- Returns the number of subscribers for the specified channels (excluding patterns, default: none)."
	.size	.L.str.6, 133

	.type	.LpubsubCommand.help,@object # @pubsubCommand.help
	.section	.rodata,"a",@progbits
	.p2align	4
.LpubsubCommand.help:
	.quad	.L.str.4
	.quad	.L.str.5
	.quad	.L.str.6
	.quad	0
	.size	.LpubsubCommand.help, 32

	.type	.L.str.7,@object        # @.str.7
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.7:
	.asciz	"channels"
	.size	.L.str.7, 9

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"numsub"
	.size	.L.str.8, 7

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"numpat"
	.size	.L.str.9, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
