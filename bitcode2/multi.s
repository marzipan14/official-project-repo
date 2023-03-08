	.text
	.file	"multi.c"
	.globl	initClientMultiState    # -- Begin function initClientMultiState
	.p2align	4, 0x90
	.type	initClientMultiState,@function
initClientMultiState:                   # @initClientMultiState
# %bb.0:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 352(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	initClientMultiState, .Lfunc_end0-initClientMultiState
                                        # -- End function
	.globl	freeClientMultiState    # -- Begin function freeClientMultiState
	.p2align	4, 0x90
	.type	freeClientMultiState,@function
freeClientMultiState:                   # @freeClientMultiState
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 360(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_6
# %bb.1:
	xorl	%r15d, %r15d
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	callq	zfree
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	360(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jge	.LBB1_6
.LBB1_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_4 Depth 2
	movq	352(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%r15,2), %rcx
	cmpl	$0, 8(%rax,%rcx,8)
	movq	(%rax,%rcx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_5
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB1_2 Depth=1
	leaq	(%rax,%rcx,8), %r12
	addq	$8, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_4:                                #   Parent Loop BB1_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r12), %rax
	movq	-8(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB1_4
	jmp	.LBB1_5
.LBB1_6:
	movq	352(%r14), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	freeClientMultiState, .Lfunc_end1-freeClientMultiState
                                        # -- End function
	.globl	queueMultiCommand       # -- Begin function queueMultiCommand
	.p2align	4, 0x90
	.type	queueMultiCommand,@function
queueMultiCommand:                      # @queueMultiCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r12
	movq	352(%rdi), %rdi
	movslq	360(%r12), %rax
	leaq	(%rax,%rax,2), %rax
	leaq	24(,%rax,8), %rsi
	callq	zrealloc
	movq	%rax, %r14
	movq	%rax, 352(%r12)
	movslq	360(%r12), %rax
	movq	80(%r12), %rcx
	leaq	(%rax,%rax,2), %r15
	movq	%rcx, 16(%r14,%r15,8)
	movslq	64(%r12), %rdi
	movl	%edi, 8(%r14,%r15,8)
	shlq	$3, %rdi
	callq	zmalloc
	movq	%rax, (%r14,%r15,8)
	movq	72(%r12), %rsi
	movslq	64(%r12), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 64(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB2_3
# %bb.1:                                # %.preheader
	leaq	(%r14,%r15,8), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%r14), %rax
	movq	(%rax,%rbx,8), %rdi
	callq	incrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB2_2
.LBB2_3:
	addl	$1, 360(%r12)
	movq	80(%r12), %rax
	movl	32(%rax), %eax
	orl	%eax, 364(%r12)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	queueMultiCommand, .Lfunc_end2-queueMultiCommand
                                        # -- End function
	.globl	discardTransaction      # -- Begin function discardTransaction
	.p2align	4, 0x90
	.type	discardTransaction,@function
discardTransaction:                     # @discardTransaction
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 360(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB3_6
# %bb.1:
	xorl	%r15d, %r15d
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_5:                                #   in Loop: Header=BB3_2 Depth=1
	callq	zfree
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	movslq	360(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jge	.LBB3_6
.LBB3_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_4 Depth 2
	movq	352(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r15,%r15,2), %rcx
	cmpl	$0, 8(%rax,%rcx,8)
	movq	(%rax,%rcx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB3_5
# %bb.3:                                # %.preheader
                                        #   in Loop: Header=BB3_2 Depth=1
	leaq	(%rax,%rcx,8), %r12
	addq	$8, %r12
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB3_4:                                #   Parent Loop BB3_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	(%r12), %rax
	movq	-8(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB3_4
	jmp	.LBB3_5
.LBB3_6:
	movq	352(%r14), %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 352(%r14)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-4137, 160(%r14)       # imm = 0xEFD7
	movq	%r14, %rdi
	callq	unwatchAllKeys
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	discardTransaction, .Lfunc_end3-discardTransaction
                                        # -- End function
	.globl	unwatchAllKeys          # -- Begin function unwatchAllKeys
	.p2align	4, 0x90
	.type	unwatchAllKeys,@function
unwatchAllKeys:                         # @unwatchAllKeys
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r15
	movq	488(%rdi), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_7
# %bb.1:
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_7
# %bb.2:
	movq	%rax, %r12
	leaq	-56(%rbp), %r14
	jmp	.LBB4_3
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_3 Depth=1
	movq	488(%r15), %rdi
	movq	%r12, %rsi
	callq	listDelNode
	movq	(%r13), %rdi
	callq	decrRefCount
	movq	%r13, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_7
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	movq	16(%r12), %r13
	movq	(%r13), %rsi
	movq	8(%r13), %rax
	movq	32(%rax), %rdi
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_8
# %bb.4:                                #   in Loop: Header=BB4_3 Depth=1
	movq	%rax, %rbx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	listSearchKey
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	listDelNode
	cmpq	$0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_3 Depth=1
	movq	(%r13), %rsi
	movq	8(%r13), %rax
	movq	32(%rax), %rdi
	callq	dictDelete
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_6
.LBB4_7:
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
.LBB4_8:
	movl	$.L.str.6, %edx
	movl	$.L.str.7, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
	movl	$279, %r8d              # imm = 0x117
	callq	_serverAssertWithInfo
	movl	$1, %edi
	callq	_exit
.Lfunc_end4:
	.size	unwatchAllKeys, .Lfunc_end4-unwatchAllKeys
                                        # -- End function
	.globl	flagTransaction         # -- Begin function flagTransaction
	.p2align	4, 0x90
	.type	flagTransaction,@function
flagTransaction:                        # @flagTransaction
# %bb.0:
	movl	160(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB5_2
# %bb.1:
	orl	$4096, %eax             # imm = 0x1000
	movl	%eax, 160(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	flagTransaction, .Lfunc_end5-flagTransaction
                                        # -- End function
	.globl	multiCommand            # -- Begin function multiCommand
	.p2align	4, 0x90
	.type	multiCommand,@function
multiCommand:                           # @multiCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	160(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB6_1
# %bb.2:
	orl	$8, %eax
	movl	%eax, 160(%rdi)
	movq	shared+8(%rip), %rsi
	callq	addReply
	jmp	.LBB6_3
.LBB6_1:
	movl	$.L.str, %esi
	callq	addReplyError
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	multiCommand, .Lfunc_end6-multiCommand
                                        # -- End function
	.globl	discardCommand          # -- Begin function discardCommand
	.p2align	4, 0x90
	.type	discardCommand,@function
discardCommand:                         # @discardCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	testb	$8, 160(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_2
# %bb.1:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB7_3
.LBB7_2:
	movq	%rbx, %rdi
	callq	discardTransaction
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	discardCommand, .Lfunc_end7-discardCommand
                                        # -- End function
	.globl	execCommandPropagateMulti # -- Begin function execCommandPropagateMulti
	.p2align	4, 0x90
	.type	execCommandPropagateMulti,@function
execCommandPropagateMulti:              # @execCommandPropagateMulti
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movl	$.L.str.2, %edi
	movl	$5, %esi
	callq	createStringObject
	movq	%rax, -16(%rbp)
	movq	server+904(%rip), %rdi
	movq	16(%rbx), %rax
	movl	40(%rax), %esi
	leaq	-16(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	-16(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end8:
	.size	execCommandPropagateMulti, .Lfunc_end8-execCommandPropagateMulti
                                        # -- End function
	.globl	execCommand             # -- Begin function execCommand
	.p2align	4, 0x90
	.type	execCommand,@function
execCommand:                            # @execCommand
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
	movq	server+2464(%rip), %rsi
	movl	160(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB9_2
# %bb.1:
	movl	$.L.str.3, %esi
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB9_27
.LBB9_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	$4128, %eax             # imm = 0x1020
	je	.LBB9_4
# %bb.3:
	testl	$4096, %eax             # imm = 0x1000
	movl	$shared+88, %eax
	movl	$shared+200, %ecx
	cmoveq	%rax, %rcx
	movq	(%rcx), %rsi
	movq	%r13, %rdi
	callq	addReply
.LBB9_10:
	movq	%r13, %rdi
	callq	discardTransaction
.LBB9_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB9_24:
	movq	server+544(%rip), %rsi
	cmpq	$0, 40(%rsi)
	movl	server+860(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_27
# %bb.25:
	testl	%eax, %eax
	jne	.LBB9_27
# %bb.26:
	movq	16(%r13), %rax
	movl	40(%rax), %edx
	movq	72(%r13), %rcx
	movl	64(%r13), %r8d
	movq	%r13, %rdi
	callq	replicationFeedMonitors
	movl	$42, __A_VARIABLE(%rip)
.LBB9_27:
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
.LBB9_4:
	movl	server+860(%rip), %edx
	movl	server+2556(%rip), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB9_11
# %bb.5:
	testl	%edx, %edx
	jne	.LBB9_11
# %bb.6:
	testl	%ecx, %ecx
	je	.LBB9_11
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB9_11
# %bb.8:
	testb	$1, 364(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_9
.LBB9_11:
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r13, %rdi
	callq	unwatchAllKeys
	movl	64(%r13), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movups	72(%r13), %xmm0
	movaps	%xmm0, -80(%rbp)        # 16-byte Spill
	movslq	360(%r13), %rsi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 360(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB9_12
# %bb.13:
	movq	352(%r13), %rax
	xorl	%ebx, %ebx
	movl	$16, %r12d
	movl	$15, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB9_14
	.p2align	4, 0x90
.LBB9_17:                               #   in Loop: Header=BB9_14 Depth=1
	cmpl	$0, server+860(%rip)
	movl	$0, %esi
	cmovel	%r14d, %esi
	movq	%r13, %rdi
	callq	call
	movl	64(%r13), %ecx
	movq	352(%r13), %rax
	movl	%ecx, -8(%rax,%r12)
	movq	72(%r13), %rcx
	movq	%rcx, -16(%rax,%r12)
	movq	80(%r13), %rcx
	movq	%rcx, (%rax,%r12)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	360(%r13), %rcx
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %r12
	cmpq	%rcx, %rbx
	jge	.LBB9_18
.LBB9_14:                               # =>This Inner Loop Header: Depth=1
	movl	-8(%rax,%r12), %ecx
	movl	%ecx, 64(%r13)
	movq	-16(%rax,%r12), %rcx
	movq	%rcx, 72(%r13)
	movq	(%rax,%r12), %rax
	movq	%rax, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB9_17
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=1
	xorl	%r15d, %r15d
	testb	$18, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_17
# %bb.16:                               #   in Loop: Header=BB9_14 Depth=1
	movl	$.L.str.2, %edi
	movl	$5, %esi
	callq	createStringObject
	movq	%rax, -56(%rbp)
	movq	server+904(%rip), %rdi
	movq	16(%r13), %rax
	movl	40(%rax), %esi
	movl	$1, %r15d
	leaq	-56(%rbp), %rdx
	movl	$1, %ecx
	movl	$3, %r8d
	callq	propagate
	movq	-56(%rbp), %rdi
	callq	decrRefCount
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_17
.LBB9_12:
	xorl	%r15d, %r15d
.LBB9_18:
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, 64(%r13)
	movaps	-80(%rbp), %xmm0        # 16-byte Reload
	movups	%xmm0, 72(%r13)
	movq	%r13, %rdi
	callq	discardTransaction
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB9_24
# %bb.19:
	addq	$1, server+2080(%rip)
	cmpq	$0, server+2464(%rip)
	movq	server+2376(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_23
# %bb.20:
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB9_23
# %bb.21:
	testq	%rax, %rax
	je	.LBB9_23
# %bb.22:
	movl	$.L.str.5, %edi
	callq	strlen
	movl	$.L.str.5, %edi
	movq	%rax, %rsi
	callq	feedReplicationBacklog
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_23
.LBB9_9:
	movl	$.L.str.4, %esi
	movq	%r13, %rdi
	callq	addReplyError
	jmp	.LBB9_10
.Lfunc_end9:
	.size	execCommand, .Lfunc_end9-execCommand
                                        # -- End function
	.globl	watchForKey             # -- Begin function watchForKey
	.p2align	4, 0x90
	.type	watchForKey,@function
watchForKey:                            # @watchForKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	488(%rdi), %rdi
	leaq	-40(%rbp), %r15
	movq	%r15, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_5
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_4:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_5
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movq	8(%rax), %rcx
	cmpq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_4
# %bb.3:                                #   in Loop: Header=BB10_2 Depth=1
	movq	(%rax), %rsi
	movq	%r14, %rdi
	callq	equalStringObjects
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_4
	jmp	.LBB10_8
.LBB10_5:
	movq	16(%rbx), %rax
	movq	32(%rax), %rdi
	movq	%r14, %rsi
	callq	dictFetchValue
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB10_7
# %bb.6:
	callq	listCreate
	movq	%rax, %r15
	movq	16(%rbx), %rax
	movq	32(%rax), %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	callq	dictAdd
	movq	%r14, %rdi
	callq	incrRefCount
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movl	$16, %edi
	callq	zmalloc
	movq	%rax, %r15
	movq	%r14, (%rax)
	movq	16(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	%r14, %rdi
	callq	incrRefCount
	movq	488(%rbx), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	watchForKey, .Lfunc_end10-watchForKey
                                        # -- End function
	.globl	touchWatchedKey         # -- Begin function touchWatchedKey
	.p2align	4, 0x90
	.type	touchWatchedKey,@function
touchWatchedKey:                        # @touchWatchedKey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	32(%rdi), %rdi
	movq	40(%rdi), %rax
	addq	72(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_5
# %bb.1:
	callq	dictFetchValue
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.2:
	leaq	-24(%rbp), %rbx
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.3:                                # %.preheader
	leaq	-24(%rbp), %rbx
	.p2align	4, 0x90
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	orl	$32, 160(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB11_4
.LBB11_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end11:
	.size	touchWatchedKey, .Lfunc_end11-touchWatchedKey
                                        # -- End function
	.globl	touchWatchedKeysOnFlush # -- Begin function touchWatchedKeysOnFlush
	.p2align	4, 0x90
	.type	touchWatchedKeysOnFlush,@function
touchWatchedKeysOnFlush:                # @touchWatchedKeysOnFlush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	%edi, %ebx
	movq	server+512(%rip), %rdi
	leaq	-48(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_9
# %bb.1:
	leaq	-64(%rbp), %r14
	leaq	-48(%rbp), %r15
	jmp	.LBB12_2
	.p2align	4, 0x90
.LBB12_8:                               #   in Loop: Header=BB12_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_9
.LBB12_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB12_3 Depth 2
	movq	16(%rax), %r12
	movq	488(%r12), %rdi
	movq	%r14, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB12_3:                               #   Parent Loop BB12_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_8
# %bb.4:                                #   in Loop: Header=BB12_3 Depth=2
	movq	16(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax), %rcx
	cmpl	$-1, %ebx
	je	.LBB12_6
# %bb.5:                                #   in Loop: Header=BB12_3 Depth=2
	cmpl	%ebx, 40(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_3
.LBB12_6:                               #   in Loop: Header=BB12_3 Depth=2
	movq	(%rcx), %rdi
	movq	(%rax), %rax
	movq	8(%rax), %rsi
	callq	dictFind
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB12_3
# %bb.7:                                #   in Loop: Header=BB12_3 Depth=2
	orb	$32, 160(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_3
.LBB12_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	touchWatchedKeysOnFlush, .Lfunc_end12-touchWatchedKeysOnFlush
                                        # -- End function
	.globl	watchCommand            # -- Begin function watchCommand
	.p2align	4, 0x90
	.type	watchCommand,@function
watchCommand:                           # @watchCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	testb	$8, 160(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB13_5
# %bb.3:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	watchForKey
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB13_4
.LBB13_5:
	movq	shared+8(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	jmp	.LBB13_6
.LBB13_1:
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	addReplyError
.LBB13_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	watchCommand, .Lfunc_end13-watchCommand
                                        # -- End function
	.globl	unwatchCommand          # -- Begin function unwatchCommand
	.p2align	4, 0x90
	.type	unwatchCommand,@function
unwatchCommand:                         # @unwatchCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	unwatchAllKeys
	andb	$-33, 160(%rbx)
	movq	shared+8(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end14:
	.size	unwatchCommand, .Lfunc_end14-unwatchCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"MULTI calls can not be nested"
	.size	.L.str, 30

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"DISCARD without MULTI"
	.size	.L.str.1, 22

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"MULTI"
	.size	.L.str.2, 6

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"EXEC without MULTI"
	.size	.L.str.3, 19

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"Transaction contains write commands but instance is now a read-only slave. EXEC aborted."
	.size	.L.str.4, 89

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"*1\r\n$4\r\nEXEC\r\n"
	.size	.L.str.5, 15

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"clients != NULL"
	.size	.L.str.6, 16

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/multi.c"
	.size	.L.str.7, 73

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"WATCH inside MULTI is not allowed"
	.size	.L.str.8, 34

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
