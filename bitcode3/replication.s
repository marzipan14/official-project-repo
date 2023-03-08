	.text
	.file	"replication.c"
	.globl	replicationGetSlaveName # -- Begin function replicationGetSlaveName
	.p2align	4, 0x90
	.type	replicationGetSlaveName,@function
replicationGetSlaveName:                # @replicationGetSlaveName
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$48, %rsp
	movq	%rdi, %rbx
	movb	$0, -64(%rbp)
	movb	$0, replicationGetSlaveName.buf(%rip)
	leaq	296(%rdi), %r14
	cmpb	$0, 296(%rdi)
	je	.LBB0_1
.LBB0_3:
	leaq	-64(%rbp), %rdi
	movl	$46, %edx
	movq	%r14, %rsi
	callq	memcpy
.LBB0_4:
	movl	292(%rbx), %ecx
	testl	%ecx, %ecx
	je	.LBB0_6
# %bb.5:
	leaq	-64(%rbp), %rdx
	movl	$replicationGetSlaveName.buf, %edi
	movl	$78, %esi
	callq	anetFormatAddr
	jmp	.LBB0_9
.LBB0_1:
	movl	8(%rbx), %edi
	leaq	-64(%rbp), %rsi
	movl	$46, %edx
	xorl	%ecx, %ecx
	callq	anetPeerToString
	cmpl	$-1, %eax
	je	.LBB0_7
# %bb.2:
	cmpb	$0, (%r14)
	jne	.LBB0_3
	jmp	.LBB0_4
.LBB0_6:
	leaq	-64(%rbp), %rcx
	movl	$replicationGetSlaveName.buf, %edi
	movl	$78, %esi
	movl	$.L.str, %edx
	jmp	.LBB0_8
.LBB0_7:
	movq	(%rbx), %rcx
	movl	$replicationGetSlaveName.buf, %edi
	movl	$78, %esi
	movl	$.L.str.1, %edx
.LBB0_8:
	xorl	%eax, %eax
	callq	snprintf
.LBB0_9:
	movl	$replicationGetSlaveName.buf, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	replicationGetSlaveName, .Lfunc_end0-replicationGetSlaveName
                                        # -- End function
	.globl	createReplicationBacklog # -- Begin function createReplicationBacklog
	.p2align	4, 0x90
	.type	createReplicationBacklog,@function
createReplicationBacklog:               # @createReplicationBacklog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, server+2376(%rip)
	jne	.LBB1_2
# %bb.1:
	movq	server+2384(%rip), %rdi
	callq	zmalloc
	movq	%rax, server+2376(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2392(%rip)
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	popq	%rbp
	retq
.LBB1_2:
	movl	$.L.str.2, %edi
	movl	$.L.str.3, %esi
	movl	$79, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end1:
	.size	createReplicationBacklog, .Lfunc_end1-createReplicationBacklog
                                        # -- End function
	.globl	resizeReplicationBacklog # -- Begin function resizeReplicationBacklog
	.p2align	4, 0x90
	.type	resizeReplicationBacklog,@function
resizeReplicationBacklog:               # @resizeReplicationBacklog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$16383, %rdi            # imm = 0x3FFF
	movl	$16384, %eax            # imm = 0x4000
	cmovgq	%rdi, %rax
	cmpq	%rax, server+2384(%rip)
	je	.LBB2_3
# %bb.1:
	movq	%rax, server+2384(%rip)
	movq	server+2376(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB2_3
# %bb.2:
	callq	zfree
	movq	server+2384(%rip), %rdi
	callq	zmalloc
	movq	%rax, server+2376(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2392(%rip)
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
.LBB2_3:
	popq	%rbp
	retq
.Lfunc_end2:
	.size	resizeReplicationBacklog, .Lfunc_end2-resizeReplicationBacklog
                                        # -- End function
	.globl	freeReplicationBacklog  # -- Begin function freeReplicationBacklog
	.p2align	4, 0x90
	.type	freeReplicationBacklog,@function
freeReplicationBacklog:                 # @freeReplicationBacklog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB3_2
# %bb.1:
	movq	server+2376(%rip), %rdi
	callq	zfree
	movq	$0, server+2376(%rip)
	popq	%rbp
	retq
.LBB3_2:
	movl	$.L.str.4, %edi
	movl	$.L.str.3, %esi
	movl	$118, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end3:
	.size	freeReplicationBacklog, .Lfunc_end3-freeReplicationBacklog
                                        # -- End function
	.globl	feedReplicationBacklog  # -- Begin function feedReplicationBacklog
	.p2align	4, 0x90
	.type	feedReplicationBacklog,@function
feedReplicationBacklog:                 # @feedReplicationBacklog
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	addq	%rsi, server+2352(%rip)
	testq	%rsi, %rsi
	je	.LBB4_1
# %bb.2:
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	server+2384(%rip), %rbx
	movq	server+2400(%rip), %rdi
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB4_3:                                # =>This Inner Loop Header: Depth=1
	subq	%rdi, %rbx
	cmpq	%r15, %rbx
	cmovaq	%r15, %rbx
	addq	server+2376(%rip), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rdi
	addq	%rbx, %rdi
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rdi
	cmoveq	%r12, %rdi
	movq	%rdi, server+2400(%rip)
	addq	%rbx, %r14
	movq	server+2392(%rip), %rcx
	addq	%rbx, %rcx
	movq	%rcx, server+2392(%rip)
	subq	%rbx, %r15
	movq	%rax, %rbx
	jne	.LBB4_3
# %bb.4:
	cmpq	%rax, %rcx
	jle	.LBB4_6
.LBB4_5:
	movq	%rax, server+2392(%rip)
	movq	%rax, %rcx
.LBB4_6:
	movq	server+2352(%rip), %rax
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_1:
	movq	server+2392(%rip), %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	jg	.LBB4_5
	jmp	.LBB4_6
.Lfunc_end4:
	.size	feedReplicationBacklog, .Lfunc_end4-feedReplicationBacklog
                                        # -- End function
	.globl	feedReplicationBacklogWithObject # -- Begin function feedReplicationBacklogWithObject
	.p2align	4, 0x90
	.type	feedReplicationBacklogWithObject,@function
feedReplicationBacklogWithObject:       # @feedReplicationBacklogWithObject
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	$240, %eax
	andl	(%rdi), %eax
	cmpl	$16, %eax
	jne	.LBB5_2
# %bb.1:
	leaq	-64(%rbp), %r14
	movq	8(%rdi), %rdx
	movl	$21, %esi
	movq	%r14, %rdi
	callq	ll2string
	movslq	%eax, %r15
.LBB5_9:
	addq	%r15, server+2352(%rip)
	testq	%r15, %r15
	je	.LBB5_10
# %bb.11:
	movq	server+2384(%rip), %rbx
	movq	server+2400(%rip), %rdi
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB5_12:                               # =>This Inner Loop Header: Depth=1
	subq	%rdi, %rbx
	cmpq	%r15, %rbx
	cmovaq	%r15, %rbx
	addq	server+2376(%rip), %rdi
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rdi
	addq	%rbx, %rdi
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rdi
	cmoveq	%r12, %rdi
	movq	%rdi, server+2400(%rip)
	addq	%rbx, %r14
	movq	server+2392(%rip), %rcx
	addq	%rbx, %rcx
	movq	%rcx, server+2392(%rip)
	subq	%rbx, %r15
	movq	%rax, %rbx
	jne	.LBB5_12
# %bb.13:
	cmpq	%rax, %rcx
	jle	.LBB5_15
.LBB5_14:
	movq	%rax, server+2392(%rip)
	movq	%rax, %rcx
.LBB5_15:
	movq	server+2352(%rip), %rax
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_2:
	movq	8(%rdi), %r14
	movzbl	-1(%r14), %r15d
	movl	%r15d, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB5_10
# %bb.3:
	movl	%r15d, %eax
	andl	$7, %eax
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_4:
	shrq	$3, %r15
	jmp	.LBB5_9
.LBB5_10:
	movq	server+2392(%rip), %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	jg	.LBB5_14
	jmp	.LBB5_15
.LBB5_5:
	movzbl	-3(%r14), %r15d
	jmp	.LBB5_9
.LBB5_6:
	movzwl	-5(%r14), %r15d
	jmp	.LBB5_9
.LBB5_7:
	movl	-9(%r14), %r15d
	jmp	.LBB5_9
.LBB5_8:
	movq	-17(%r14), %r15
	jmp	.LBB5_9
.Lfunc_end5:
	.size	feedReplicationBacklogWithObject, .Lfunc_end5-feedReplicationBacklogWithObject
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_4
	.quad	.LBB5_5
	.quad	.LBB5_6
	.quad	.LBB5_7
	.quad	.LBB5_8
                                        # -- End function
	.text
	.globl	replicationFeedSlaves   # -- Begin function replicationFeedSlaves
	.p2align	4, 0x90
	.type	replicationFeedSlaves,@function
replicationFeedSlaves:                  # @replicationFeedSlaves
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$104, %rsp
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	cmpq	$0, server+2464(%rip)
	je	.LBB6_1
.LBB6_45:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_1:
	movq	%rdi, %r14
	cmpq	$0, server+2376(%rip)
	je	.LBB6_2
# %bb.4:
	movq	%rdx, %r15
	movl	%esi, %r13d
	movl	-44(%rbp), %eax         # 4-byte Reload
	movslq	%eax, %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	%eax, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	cmpl	%esi, server+2368(%rip)
	jne	.LBB6_6
# %bb.5:
	movl	%r13d, server+2368(%rip)
	jmp	.LBB6_18
.LBB6_2:
	cmpq	$0, 40(%r14)
	je	.LBB6_45
# %bb.3:
	movl	$.L.str.5, %edi
	movl	$.L.str.3, %esi
	movl	$192, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.LBB6_6:
	movslq	%r13d, %rdx
	cmpl	$9, %r13d
	ja	.LBB6_8
# %bb.7:
	movq	shared+368(,%rdx,8), %r12
	jmp	.LBB6_9
.LBB6_8:
	leaq	-144(%rbp), %r12
	movl	$21, %esi
	movq	%r12, %rdi
	callq	ll2string
	movl	%eax, %ebx
	callq	sdsempty
	movl	$.L.str.6, %esi
	movq	%rax, %rdi
	movl	%ebx, %edx
	movq	%r12, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r12
	cmpq	$0, server+2376(%rip)
	je	.LBB6_10
.LBB6_9:
	movq	%r12, %rdi
	callq	feedReplicationBacklogWithObject
.LBB6_10:
	leaq	-120(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB6_15
# %bb.11:                               # %.preheader5
	leaq	-120(%rbp), %rbx
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_14:                               #   in Loop: Header=BB6_12 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB6_15
.LBB6_12:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	cmpl	$6, 168(%rdi)
	je	.LBB6_14
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=1
	movq	%r12, %rsi
	callq	addReply
	jmp	.LBB6_14
.LBB6_15:
	cmpl	$10, %r13d
	jb	.LBB6_17
# %bb.16:
	movq	%r12, %rdi
	callq	decrRefCount
.LBB6_17:
	movl	%r13d, server+2368(%rip)
	cmpq	$0, server+2376(%rip)
	je	.LBB6_38
.LBB6_18:
	movq	%r14, -104(%rbp)        # 8-byte Spill
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movb	$42, -96(%rbp)
	leaq	-95(%rbp), %rdi
	movl	$23, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	ll2string
	cltq
	leaq	-96(%rbp), %r12
	movw	$2573, 1(%rax,%r12)     # imm = 0xA0D
	leaq	3(%rax), %r14
	addq	%r14, server+2352(%rip)
	cmpl	$-3, %eax
	je	.LBB6_19
# %bb.20:
	movq	server+2384(%rip), %rbx
	movq	server+2400(%rip), %rdi
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB6_21:                               # =>This Inner Loop Header: Depth=1
	subq	%rdi, %rbx
	cmpq	%r14, %rbx
	cmovaq	%r14, %rbx
	addq	server+2376(%rip), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rdi
	addq	%rbx, %rdi
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rdi
	cmoveq	%r15, %rdi
	movq	%rdi, server+2400(%rip)
	addq	%rbx, %r12
	movq	server+2392(%rip), %rcx
	addq	%rbx, %rcx
	movq	%rcx, server+2392(%rip)
	subq	%rbx, %r14
	movq	%rax, %rbx
	jne	.LBB6_21
# %bb.22:
	cmpq	%rax, %rcx
	jle	.LBB6_24
.LBB6_23:
	movq	%rax, server+2392(%rip)
	movq	%rax, %rcx
.LBB6_24:
	movq	server+2352(%rip), %rax
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	movq	-64(%rbp), %r15         # 8-byte Reload
	jle	.LBB6_37
# %bb.25:
	xorl	%r13d, %r13d
	leaq	-96(%rbp), %r12
	jmp	.LBB6_26
	.p2align	4, 0x90
.LBB6_36:                               #   in Loop: Header=BB6_26 Depth=1
	movq	server+2352(%rip), %rax
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	addq	$1, %r13
	cmpq	-72(%rbp), %r13         # 8-byte Folded Reload
	leaq	-96(%rbp), %r12
	je	.LBB6_37
.LBB6_26:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_29 Depth 2
                                        #     Child Loop BB6_33 Depth 2
	movq	(%r15,%r13,8), %rdi
	callq	stringObjectLen
	movb	$36, -96(%rbp)
	movl	$23, %esi
	leaq	-95(%rbp), %rdi
	movq	%rax, %rdx
	callq	ll2string
	movslq	%eax, %r14
	movw	$2573, 1(%r14,%r12)     # imm = 0xA0D
	leaq	3(%r14), %r15
	addq	%r15, server+2352(%rip)
	cmpl	$-3, %r14d
	je	.LBB6_27
# %bb.28:                               #   in Loop: Header=BB6_26 Depth=1
	movq	server+2384(%rip), %rbx
	movq	server+2400(%rip), %rdi
	.p2align	4, 0x90
.LBB6_29:                               #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	%rdi, %rbx
	cmpq	%r15, %rbx
	cmovaq	%r15, %rbx
	addq	server+2376(%rip), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rcx
	addq	%rbx, %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	movl	$0, %edi
	cmovneq	%rcx, %rdi
	movq	%rdi, server+2400(%rip)
	addq	%rbx, %r12
	movq	server+2392(%rip), %rcx
	addq	%rbx, %rcx
	movq	%rcx, server+2392(%rip)
	subq	%rbx, %r15
	movq	%rax, %rbx
	jne	.LBB6_29
# %bb.30:                               #   in Loop: Header=BB6_26 Depth=1
	cmpq	%rax, %rcx
	jle	.LBB6_32
.LBB6_31:                               #   in Loop: Header=BB6_26 Depth=1
	movq	%rax, server+2392(%rip)
	movq	%rax, %rcx
.LBB6_32:                               #   in Loop: Header=BB6_26 Depth=1
	movq	server+2352(%rip), %rax
	subq	%rcx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	movq	-64(%rbp), %r15         # 8-byte Reload
	movq	(%r15,%r13,8), %rdi
	callq	feedReplicationBacklogWithObject
	addq	$2, server+2352(%rip)
	leaq	(%r14,%rbp), %r12
	addq	$-95, %r12
	movq	server+2384(%rip), %rax
	movl	$2, %r14d
	movq	server+2400(%rip), %rdi
	.p2align	4, 0x90
.LBB6_33:                               #   Parent Loop BB6_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	subq	%rdi, %rax
	cmpq	%r14, %rax
	movq	%rax, %rbx
	cmovaq	%r14, %rbx
	addq	server+2376(%rip), %rdi
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rcx
	addq	%rbx, %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	movl	$0, %edi
	cmovneq	%rcx, %rdi
	movq	%rdi, server+2400(%rip)
	addq	%rbx, %r12
	movq	server+2392(%rip), %rcx
	addq	%rbx, %rcx
	movq	%rcx, server+2392(%rip)
	subq	%rbx, %r14
	jne	.LBB6_33
# %bb.34:                               #   in Loop: Header=BB6_26 Depth=1
	cmpq	%rax, %rcx
	jle	.LBB6_36
# %bb.35:                               #   in Loop: Header=BB6_26 Depth=1
	movq	%rax, server+2392(%rip)
	movq	%rax, %rcx
	jmp	.LBB6_36
	.p2align	4, 0x90
.LBB6_27:                               #   in Loop: Header=BB6_26 Depth=1
	movq	server+2392(%rip), %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	jg	.LBB6_31
	jmp	.LBB6_32
.LBB6_37:
	movq	-104(%rbp), %r14        # 8-byte Reload
.LBB6_38:
	leaq	-120(%rbp), %rbx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB6_45
# %bb.39:
	leaq	-120(%rbp), %r12
	movq	-72(%rbp), %r13         # 8-byte Reload
	jmp	.LBB6_40
	.p2align	4, 0x90
.LBB6_44:                               #   in Loop: Header=BB6_40 Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB6_45
.LBB6_40:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_43 Depth 2
	movq	16(%rax), %r14
	cmpl	$6, 168(%r14)
	je	.LBB6_44
# %bb.41:                               #   in Loop: Header=BB6_40 Depth=1
	movq	%r14, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	addReplyMultiBulkLen
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	jle	.LBB6_44
# %bb.42:                               # %.preheader
                                        #   in Loop: Header=BB6_40 Depth=1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB6_43:                               #   Parent Loop BB6_40 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%r15,%rbx,8), %rsi
	movq	%r14, %rdi
	callq	addReplyBulk
	addq	$1, %rbx
	cmpq	%rbx, %r13
	jne	.LBB6_43
	jmp	.LBB6_44
.LBB6_19:
	movq	server+2392(%rip), %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	jg	.LBB6_23
	jmp	.LBB6_24
.Lfunc_end6:
	.size	replicationFeedSlaves, .Lfunc_end6-replicationFeedSlaves
                                        # -- End function
	.globl	replicationFeedSlavesFromMasterStream # -- Begin function replicationFeedSlavesFromMasterStream
	.p2align	4, 0x90
	.type	replicationFeedSlavesFromMasterStream,@function
replicationFeedSlavesFromMasterStream:  # @replicationFeedSlavesFromMasterStream
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movq	%rsi, %r13
	movq	%rdi, %rcx
	movq	server+2376(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB7_9
# %bb.1:
	addq	%r14, server+2352(%rip)
	testq	%r14, %r14
	je	.LBB7_2
# %bb.3:
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	server+2384(%rip), %rax
	movq	server+2400(%rip), %rcx
	xorl	%r15d, %r15d
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%r14, %r12
	.p2align	4, 0x90
.LBB7_4:                                # =>This Inner Loop Header: Depth=1
	subq	%rcx, %rax
	cmpq	%r12, %rax
	movq	%rax, %rbx
	cmovaq	%r12, %rbx
	addq	%rcx, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	server+2400(%rip), %rcx
	addq	%rbx, %rcx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rcx
	cmoveq	%r15, %rcx
	movq	%rcx, server+2400(%rip)
	movq	server+2392(%rip), %rdx
	addq	%rbx, %rdx
	movq	%rdx, server+2392(%rip)
	subq	%rbx, %r12
	je	.LBB7_5
# %bb.15:                               #   in Loop: Header=BB7_4 Depth=1
	addq	%rbx, %r13
	movq	server+2376(%rip), %rdi
	jmp	.LBB7_4
.LBB7_5:
	movq	-56(%rbp), %r13         # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	cmpq	%rax, %rdx
	jle	.LBB7_8
.LBB7_7:
	movq	%rax, server+2392(%rip)
	movq	%rax, %rdx
.LBB7_8:
	movq	server+2352(%rip), %rax
	subq	%rdx, %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
.LBB7_9:
	leaq	-72(%rbp), %rbx
	movq	%rcx, %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB7_14
# %bb.10:                               # %.preheader
	leaq	-72(%rbp), %rbx
	jmp	.LBB7_11
	.p2align	4, 0x90
.LBB7_13:                               #   in Loop: Header=BB7_11 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB7_14
.LBB7_11:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	cmpl	$6, 168(%rdi)
	je	.LBB7_13
# %bb.12:                               #   in Loop: Header=BB7_11 Depth=1
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	addReplyString
	jmp	.LBB7_13
.LBB7_14:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_2:
	movq	server+2392(%rip), %rdx
	movq	server+2384(%rip), %rax
	cmpq	%rax, %rdx
	jg	.LBB7_7
	jmp	.LBB7_8
.Lfunc_end7:
	.size	replicationFeedSlavesFromMasterStream, .Lfunc_end7-replicationFeedSlavesFromMasterStream
                                        # -- End function
	.globl	replicationFeedMonitors # -- Begin function replicationFeedMonitors
	.p2align	4, 0x90
	.type	replicationFeedMonitors,@function
replicationFeedMonitors:                # @replicationFeedMonitors
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r8d, %r15d
	movq	%rcx, %r12
	movl	%edx, %ebx
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rdi, %r13
	movl	$.L.str.7, %edi
	callq	sdsnew
	movq	%rax, %r14
	leaq	-64(%rbp), %rdi
	xorl	%esi, %esi
	callq	gettimeofday
	movq	-64(%rbp), %rdx
	movq	-56(%rbp), %rcx
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r14
	movl	160(%r13), %eax
	testl	$256, %eax              # imm = 0x100
	jne	.LBB8_1
# %bb.2:
	testl	$2048, %eax             # imm = 0x800
	jne	.LBB8_3
# %bb.4:
	movq	%r13, %rdi
	callq	getClientPeerId
	movl	$.L.str.11, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	movq	%rax, %rcx
	jmp	.LBB8_5
.LBB8_1:
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
	xorl	%eax, %eax
	callq	sdscatprintf
	testl	%r15d, %r15d
	jg	.LBB8_7
	jmp	.LBB8_22
.LBB8_3:
	movq	server+360(%rip), %rcx
	movl	$.L.str.10, %esi
	movq	%r14, %rdi
	movl	%ebx, %edx
.LBB8_5:
	xorl	%eax, %eax
	callq	sdscatprintf
	testl	%r15d, %r15d
	jle	.LBB8_22
.LBB8_7:
	leal	-1(%r15), %r14d
	movl	%r15d, %r13d
	movl	$240, %r15d
	xorl	%ebx, %ebx
	jmp	.LBB8_8
	.p2align	4, 0x90
.LBB8_21:                               #   in Loop: Header=BB8_8 Depth=1
	addq	$1, %rbx
	cmpq	%rbx, %r13
	je	.LBB8_22
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rcx
	movl	(%rcx), %esi
	andl	%r15d, %esi
	movq	8(%rcx), %rdx
	cmpl	$16, %esi
	jne	.LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	movl	$.L.str.12, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	cmpq	%rbx, %r14
	je	.LBB8_21
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=1
	movzbl	-1(%rdx), %r8d
	movl	%r8d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_11
# %bb.12:                               #   in Loop: Header=BB8_8 Depth=1
	movl	%r8d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_0(,%rcx,8)
.LBB8_13:                               #   in Loop: Header=BB8_8 Depth=1
	shrq	$3, %r8
	jmp	.LBB8_18
.LBB8_11:                               #   in Loop: Header=BB8_8 Depth=1
	xorl	%r8d, %r8d
	jmp	.LBB8_18
.LBB8_14:                               #   in Loop: Header=BB8_8 Depth=1
	movzbl	-3(%rdx), %r8d
	jmp	.LBB8_18
.LBB8_15:                               #   in Loop: Header=BB8_8 Depth=1
	movzwl	-5(%rdx), %r8d
	jmp	.LBB8_18
.LBB8_16:                               #   in Loop: Header=BB8_8 Depth=1
	movl	-9(%rdx), %r8d
	jmp	.LBB8_18
.LBB8_17:                               #   in Loop: Header=BB8_8 Depth=1
	movq	-17(%rdx), %r8
	.p2align	4, 0x90
.LBB8_18:                               #   in Loop: Header=BB8_8 Depth=1
	movq	%rax, %rdi
	movq	%rdx, %rsi
	movq	%r8, %rdx
	callq	sdscatrepr
	cmpq	%rbx, %r14
	je	.LBB8_21
.LBB8_20:                               #   in Loop: Header=BB8_8 Depth=1
	movl	$.L.str.13, %esi
	movl	$1, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	jmp	.LBB8_21
.LBB8_22:
	movl	$.L.str.14, %esi
	movl	$2, %edx
	movq	%rax, %rdi
	callq	sdscatlen
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %rbx
	leaq	-80(%rbp), %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	listRewind
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB8_25
# %bb.23:                               # %.preheader
	leaq	-80(%rbp), %r14
	.p2align	4, 0x90
.LBB8_24:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rdi
	movq	%rbx, %rsi
	callq	addReply
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	jne	.LBB8_24
.LBB8_25:
	movq	%rbx, %rdi
	callq	decrRefCount
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end8:
	.size	replicationFeedMonitors, .Lfunc_end8-replicationFeedMonitors
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_13
	.quad	.LBB8_14
	.quad	.LBB8_15
	.quad	.LBB8_16
	.quad	.LBB8_17
                                        # -- End function
	.text
	.globl	addReplyReplicationBacklog # -- Begin function addReplyReplicationBacklog
	.p2align	4, 0x90
	.type	addReplyReplicationBacklog,@function
addReplyReplicationBacklog:             # @addReplyReplicationBacklog
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
	movl	$.L.str.15, %esi
	xorl	%edi, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	cmpq	$0, server+2392(%rip)
	je	.LBB9_1
# %bb.2:
	movq	server+2384(%rip), %rdx
	movl	$.L.str.17, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2408(%rip), %rdx
	movl	$.L.str.18, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2392(%rip), %rdx
	movl	$.L.str.19, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2400(%rip), %rdx
	movl	$.L.str.20, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	subq	server+2408(%rip), %r14
	movl	$.L.str.21, %esi
	xorl	%edi, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2384(%rip), %rcx
	movq	server+2400(%rip), %rax
	addq	%rcx, %rax
	subq	server+2392(%rip), %rax
	cqto
	idivq	%rcx
	movq	%rdx, %r15
	movl	$.L.str.22, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2384(%rip), %rbx
	movq	server+2392(%rip), %r13
	movq	%r13, %rdx
	subq	%r14, %rdx
	movl	$.L.str.23, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
	subq	%r14, %r13
	je	.LBB9_6
# %bb.3:
	addq	%r14, %r15
	movq	%r15, %rax
	cqto
	idivq	%rbx
	movq	%rdx, %r15
	movq	server+2384(%rip), %rbx
	subq	%rdx, %rbx
	cmpq	%r13, %rbx
	cmovgq	%r13, %rbx
	movl	$.L.str.24, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	addq	server+2376(%rip), %r15
	movq	%r15, %rdi
	.p2align	4, 0x90
.LBB9_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rsi
	callq	sdsnewlen
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	subq	%rbx, %r13
	je	.LBB9_6
# %bb.4:                                #   in Loop: Header=BB9_5 Depth=1
	movq	server+2384(%rip), %rbx
	cmpq	%r13, %rbx
	cmovgq	%r13, %rbx
	movl	$.L.str.24, %esi
	xorl	%edi, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2376(%rip), %rdi
	jmp	.LBB9_5
.LBB9_6:
	movq	server+2392(%rip), %rbx
	subq	%r14, %rbx
	jmp	.LBB9_7
.LBB9_1:
	xorl	%ebx, %ebx
	movl	$.L.str.16, %esi
	xorl	%edi, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB9_7:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	addReplyReplicationBacklog, .Lfunc_end9-addReplyReplicationBacklog
                                        # -- End function
	.globl	getPsyncInitialOffset   # -- Begin function getPsyncInitialOffset
	.p2align	4, 0x90
	.type	getPsyncInitialOffset,@function
getPsyncInitialOffset:                  # @getPsyncInitialOffset
# %bb.0:
	movq	server+2352(%rip), %rax
	retq
.Lfunc_end10:
	.size	getPsyncInitialOffset, .Lfunc_end10-getPsyncInitialOffset
                                        # -- End function
	.globl	replicationSetupSlaveForFullResync # -- Begin function replicationSetupSlaveForFullResync
	.p2align	4, 0x90
	.type	replicationSetupSlaveForFullResync,@function
replicationSetupSlaveForFullResync:     # @replicationSetupSlaveForFullResync
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$128, %rsp
	movq	%rsi, 240(%rdi)
	movl	$7, 168(%rdi)
	movl	$-1, server+2368(%rip)
	xorl	%r14d, %r14d
	testb	$1, 162(%rdi)
	jne	.LBB11_3
# %bb.1:
	movq	%rsi, %r8
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	leaq	-160(%rbp), %r15
	movl	$128, %esi
	movl	$.L.str.25, %edx
	movl	$server+2268, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	8(%rbx), %edi
	movslq	%eax, %r12
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	write
	cmpq	%r12, %rax
	je	.LBB11_3
# %bb.2:
	movq	%rbx, %rdi
	callq	freeClientAsync
	movl	$-1, %r14d
.LBB11_3:
	movl	%r14d, %eax
	addq	$128, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	replicationSetupSlaveForFullResync, .Lfunc_end11-replicationSetupSlaveForFullResync
                                        # -- End function
	.globl	masterTryPartialResynchronization # -- Begin function masterTryPartialResynchronization
	.p2align	4, 0x90
	.type	masterTryPartialResynchronization,@function
masterTryPartialResynchronization:      # @masterTryPartialResynchronization
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	movq	%rdi, %r15
	movq	72(%rdi), %rax
	movq	8(%rax), %rcx
	movq	8(%rcx), %rbx
	movq	16(%rax), %rsi
	leaq	-32(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$-1, %r14d
	testl	%eax, %eax
	jne	.LBB12_28
# %bb.1:
	movl	$server+2268, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB12_10
# %bb.2:
	movl	$server+2309, %esi
	movq	%rbx, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB12_4
# %bb.3:
	movq	-32(%rbp), %rcx
	cmpq	server+2360(%rip), %rcx
	jle	.LBB12_10
.LBB12_4:
	cmpb	$63, (%rbx)
	jne	.LBB12_5
# %bb.8:
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.28, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	jmp	.LBB12_9
.LBB12_10:
	cmpq	$0, server+2376(%rip)
	je	.LBB12_13
# %bb.11:
	movq	-32(%rbp), %rax
	movq	server+2408(%rip), %rcx
	cmpq	%rcx, %rax
	jl	.LBB12_13
# %bb.12:
	addq	server+2392(%rip), %rcx
	cmpq	%rcx, %rax
	jle	.LBB12_15
.LBB12_13:
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movq	-32(%rbp), %rcx
	movl	$.L.str.29, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	-32(%rbp), %rax
	cmpq	server+2352(%rip), %rax
	jle	.LBB12_28
# %bb.14:
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.30, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$3, %edi
.LBB12_9:
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB12_28
.LBB12_5:
	testl	%eax, %eax
	je	.LBB12_7
# %bb.6:
	movl	$.L.str.26, %esi
	movl	$server+2268, %ecx
	movl	$server+2309, %r8d
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB12_28
.LBB12_7:
	movq	-32(%rbp), %rdx
	movq	server+2360(%rip), %rcx
	movl	$.L.str.27, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB12_28
.LBB12_15:
	orb	$1, 160(%r15)
	movl	$9, 168(%r15)
	movq	server+2872(%rip), %rax
	movq	%rax, 232(%r15)
	movl	$0, 172(%r15)
	movq	server+536(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	testb	$2, 344(%r15)
	jne	.LBB12_16
# %bb.17:
	leaq	-176(%rbp), %rdi
	movl	$128, %esi
	movl	$.L.str.32, %edx
	xorl	%eax, %eax
	callq	snprintf
	jmp	.LBB12_18
.LBB12_16:
	leaq	-176(%rbp), %rdi
	movl	$128, %esi
	movl	$.L.str.31, %edx
	movl	$server+2268, %ecx
	xorl	%eax, %eax
	callq	snprintf
.LBB12_18:
	movl	8(%r15), %edi
	movslq	%eax, %rbx
	leaq	-176(%rbp), %rsi
	movq	%rbx, %rdx
	callq	write
	cmpq	%rbx, %rax
	jne	.LBB12_19
# %bb.20:
	movq	-32(%rbp), %rsi
	movq	%r15, %rdi
	callq	addReplyReplicationBacklog
	movq	%rax, %rbx
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movq	-32(%rbp), %r8
	xorl	%r14d, %r14d
	movl	$.L.str.33, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	serverLog
	cmpl	$0, server+2432(%rip)
	je	.LBB12_28
# %bb.21:
	cmpl	$0, server+2436(%rip)
	je	.LBB12_28
# %bb.22:
	movq	server+536(%rip), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB12_27
# %bb.23:                               # %.preheader
	leaq	-48(%rbp), %r15
	jmp	.LBB12_24
.LBB12_26:                              #   in Loop: Header=BB12_24 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB12_27
.LBB12_24:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB12_26
# %bb.25:                               #   in Loop: Header=BB12_24 Depth=1
	movq	server+2872(%rip), %rcx
	subq	232(%rax), %rcx
	movslq	server+2436(%rip), %rax
	xorl	%edx, %edx
	cmpq	%rax, %rcx
	setle	%dl
	addl	%edx, %ebx
	jmp	.LBB12_26
.LBB12_19:
	movq	%r15, %rdi
	callq	freeClientAsync
	xorl	%r14d, %r14d
	jmp	.LBB12_28
.LBB12_27:
	movl	%ebx, server+2440(%rip)
.LBB12_28:
	movl	%r14d, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	masterTryPartialResynchronization, .Lfunc_end12-masterTryPartialResynchronization
                                        # -- End function
	.globl	refreshGoodSlavesCount  # -- Begin function refreshGoodSlavesCount
	.p2align	4, 0x90
	.type	refreshGoodSlavesCount,@function
refreshGoodSlavesCount:                 # @refreshGoodSlavesCount
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	cmpl	$0, server+2432(%rip)
	je	.LBB13_8
# %bb.1:
	cmpl	$0, server+2436(%rip)
	je	.LBB13_8
# %bb.2:
	movq	server+536(%rip), %rdi
	leaq	-32(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB13_7
# %bb.3:                                # %.preheader
	leaq	-32(%rbp), %r14
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB13_7
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	movq	server+2872(%rip), %rcx
	subq	232(%rax), %rcx
	movslq	server+2436(%rip), %rax
	xorl	%edx, %edx
	cmpq	%rax, %rcx
	setle	%dl
	addl	%edx, %ebx
	jmp	.LBB13_6
.LBB13_7:
	movl	%ebx, server+2440(%rip)
.LBB13_8:
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end13:
	.size	refreshGoodSlavesCount, .Lfunc_end13-refreshGoodSlavesCount
                                        # -- End function
	.globl	startBgsaveForReplication # -- Begin function startBgsaveForReplication
	.p2align	4, 0x90
	.type	startBgsaveForReplication,@function
startBgsaveForReplication:              # @startBgsaveForReplication
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$216, %rsp
	movl	%edi, %ebx
	cmpl	$0, server+2444(%rip)
	setne	%al
	andb	%al, %bl
	movl	$.L.str.35, %eax
	movl	$.L.str.36, %edx
	cmovneq	%rax, %rdx
	movl	$.L.str.34, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	-120(%rbp), %rdi
	callq	rdbPopulateSaveInfo
	testq	%rax, %rax
	je	.LBB14_3
# %bb.1:
	testb	%bl, %bl
	je	.LBB14_4
# %bb.2:
	movq	%rax, %rdi
	callq	rdbSaveToSlavesSockets
	jmp	.LBB14_5
.LBB14_3:
	movl	$.L.str.37, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB14_6
.LBB14_4:
	movq	server+2120(%rip), %rdi
	movq	%rax, %rsi
	callq	rdbSaveBackground
.LBB14_5:
	movl	%eax, %r14d
	cmpl	$-1, %eax
	je	.LBB14_6
# %bb.11:
	testb	%bl, %bl
	jne	.LBB14_19
# %bb.12:
	movq	server+536(%rip), %rdi
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB14_19
# %bb.13:
	leaq	-256(%rbp), %r15
	leaq	-56(%rbp), %r12
	jmp	.LBB14_14
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_14 Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB14_19
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpl	$6, 168(%rbx)
	jne	.LBB14_18
# %bb.15:                               #   in Loop: Header=BB14_14 Depth=1
	movq	server+2352(%rip), %r8
	movq	%r8, 240(%rbx)
	movl	$7, 168(%rbx)
	movl	$-1, server+2368(%rip)
	testb	$1, 162(%rbx)
	jne	.LBB14_18
# %bb.16:                               #   in Loop: Header=BB14_14 Depth=1
	movl	$128, %esi
	movl	$.L.str.25, %edx
	movl	$server+2268, %ecx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	8(%rbx), %edi
	movslq	%eax, %r13
	movq	%r15, %rsi
	movq	%r13, %rdx
	callq	write
	cmpq	%r13, %rax
	je	.LBB14_18
# %bb.17:                               #   in Loop: Header=BB14_14 Depth=1
	movq	%rbx, %rdi
	callq	freeClientAsync
	jmp	.LBB14_18
.LBB14_6:
	movl	$.L.str.38, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+536(%rip), %rdi
	leaq	-56(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	movl	$-1, %r14d
	testq	%rax, %rax
	je	.LBB14_21
# %bb.7:                                # %.preheader
	leaq	-56(%rbp), %r15
	jmp	.LBB14_8
	.p2align	4, 0x90
.LBB14_10:                              #   in Loop: Header=BB14_8 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB14_21
.LBB14_8:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpl	$6, 168(%rbx)
	jne	.LBB14_10
# %bb.9:                                #   in Loop: Header=BB14_8 Depth=1
	movl	$0, 168(%rbx)
	andb	$-2, 160(%rbx)
	movq	server+536(%rip), %rdi
	movq	%rax, %rsi
	callq	listDelNode
	movl	$.L.str.39, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	orb	$64, 160(%rbx)
	jmp	.LBB14_10
.LBB14_19:
	testl	%r14d, %r14d
	jne	.LBB14_21
# %bb.20:
	movq	server+2664(%rip), %rdi
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	callq	dictEmpty
	movq	server+2672(%rip), %rdi
	callq	listRelease
	callq	listCreate
	movq	%rax, server+2672(%rip)
.LBB14_21:
	movl	%r14d, %eax
	addq	$216, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	startBgsaveForReplication, .Lfunc_end14-startBgsaveForReplication
                                        # -- End function
	.globl	replicationScriptCacheFlush # -- Begin function replicationScriptCacheFlush
	.p2align	4, 0x90
	.type	replicationScriptCacheFlush,@function
replicationScriptCacheFlush:            # @replicationScriptCacheFlush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2664(%rip), %rdi
	xorl	%esi, %esi
	callq	dictEmpty
	movq	server+2672(%rip), %rdi
	callq	listRelease
	callq	listCreate
	movq	%rax, server+2672(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	replicationScriptCacheFlush, .Lfunc_end15-replicationScriptCacheFlush
                                        # -- End function
	.globl	syncCommand             # -- Begin function syncCommand
	.p2align	4, 0x90
	.type	syncCommand,@function
syncCommand:                            # @syncCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$152, %rsp
	testb	$1, 160(%rdi)
	jne	.LBB16_7
# %bb.1:
	movq	%rdi, %r15
	cmpq	$0, server+2464(%rip)
	je	.LBB16_3
# %bb.2:
	cmpl	$15, server+2500(%rip)
	je	.LBB16_3
# %bb.39:
	movl	$.L.str.40, %edi
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplySds             # TAILCALL
.LBB16_3:
	movq	%r15, %rdi
	callq	clientHasPendingReplies
	testl	%eax, %eax
	je	.LBB16_4
# %bb.40:
	movl	$.L.str.41, %esi
	movq	%r15, %rdi
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB16_4:
	movq	%r15, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.42, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	72(%r15), %rax
	movq	(%rax), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.43, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB16_5
# %bb.10:
	orb	$1, 162(%r15)
.LBB16_11:
	addq	$1, server+1144(%rip)
	movl	$6, 168(%r15)
	cmpl	$0, server+2576(%rip)
	je	.LBB16_13
# %bb.12:
	movl	8(%r15), %esi
	xorl	%edi, %edi
	callq	anetDisableTcpNoDelay
.LBB16_13:
	movl	$-1, 176(%r15)
	orb	$1, 160(%r15)
	movq	server+536(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeTail
	movq	server+536(%rip), %rax
	cmpq	$1, 40(%rax)
	jne	.LBB16_17
# %bb.14:
	cmpq	$0, server+2376(%rip)
	jne	.LBB16_17
# %bb.15:
	movl	$server+2268, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+2308(%rip)
	movl	$server+2309, %edi
	movl	$41, %edx
	movl	$48, %esi
	callq	memset
	movb	$0, server+2349(%rip)
	movq	$-1, server+2360(%rip)
	cmpq	$0, server+2376(%rip)
	jne	.LBB16_41
# %bb.16:
	movq	server+2384(%rip), %rdi
	callq	zmalloc
	movq	%rax, server+2376(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2392(%rip)
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
.LBB16_17:
	movl	server+2096(%rip), %ecx
	movl	server+2172(%rip), %eax
	cmpl	$-1, %ecx
	je	.LBB16_29
# %bb.18:
	cmpl	$1, %eax
	jne	.LBB16_29
# %bb.19:
	movq	server+536(%rip), %rdi
	leaq	-40(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	.p2align	4, 0x90
.LBB16_20:                              # =>This Inner Loop Header: Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB16_28
# %bb.21:                               #   in Loop: Header=BB16_20 Depth=1
	movq	16(%rax), %rbx
	cmpl	$7, 168(%rbx)
	jne	.LBB16_20
# %bb.22:
	movl	344(%rbx), %eax
	movl	344(%r15), %ecx
	andl	%eax, %ecx
	cmpl	%eax, %ecx
	jne	.LBB16_28
# %bb.23:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	copyClientOutputBuffer
	movq	240(%rbx), %r8
	movq	%r8, 240(%r15)
	movl	$7, 168(%r15)
	movl	$-1, server+2368(%rip)
	testb	$1, 162(%r15)
	jne	.LBB16_26
# %bb.24:
	leaq	-176(%rbp), %r14
	movl	$128, %esi
	movl	$.L.str.25, %edx
	movl	$server+2268, %ecx
	movq	%r14, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	8(%r15), %edi
	movslq	%eax, %rbx
	movq	%r14, %rsi
	movq	%rbx, %rdx
	callq	write
	cmpq	%rbx, %rax
	je	.LBB16_26
# %bb.25:
	movq	%r15, %rdi
	callq	freeClientAsync
.LBB16_26:
	movl	$.L.str.44, %esi
	jmp	.LBB16_27
.LBB16_29:
	cmpl	$-1, %ecx
	je	.LBB16_33
# %bb.30:
	cmpl	$2, %eax
	jne	.LBB16_33
# %bb.31:
	movl	$.L.str.46, %esi
	jmp	.LBB16_32
.LBB16_5:
	movq	%r15, %rdi
	callq	masterTryPartialResynchronization
	testl	%eax, %eax
	je	.LBB16_6
# %bb.8:
	movq	72(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %rax
	cmpb	$63, (%rax)
	je	.LBB16_11
# %bb.9:
	addq	$1, server+1160(%rip)
	jmp	.LBB16_11
.LBB16_28:
	movl	$.L.str.45, %esi
.LBB16_27:
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB16_7
.LBB16_33:
	cmpl	$0, server+2444(%rip)
	je	.LBB16_37
# %bb.34:
	testb	$1, 344(%r15)
	jne	.LBB16_35
.LBB16_37:
	cmpl	$-1, server+1940(%rip)
	je	.LBB16_42
# %bb.38:
	movl	$.L.str.48, %esi
	jmp	.LBB16_32
.LBB16_6:
	addq	$1, server+1152(%rip)
.LBB16_7:
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB16_35:
	cmpl	$0, server+2448(%rip)
	je	.LBB16_7
# %bb.36:
	movl	$.L.str.47, %esi
.LBB16_32:
	movl	$2, %edi
	xorl	%eax, %eax
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	serverLog               # TAILCALL
.LBB16_42:
	movl	344(%r15), %edi
	addq	$152, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	startBgsaveForReplication # TAILCALL
.LBB16_41:
	movl	$.L.str.2, %edi
	movl	$.L.str.3, %esi
	movl	$79, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end16:
	.size	syncCommand, .Lfunc_end16-syncCommand
                                        # -- End function
	.globl	changeReplicationId     # -- Begin function changeReplicationId
	.p2align	4, 0x90
	.type	changeReplicationId,@function
changeReplicationId:                    # @changeReplicationId
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$server+2268, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+2308(%rip)
	popq	%rbp
	retq
.Lfunc_end17:
	.size	changeReplicationId, .Lfunc_end17-changeReplicationId
                                        # -- End function
	.globl	clearReplicationId2     # -- Begin function clearReplicationId2
	.p2align	4, 0x90
	.type	clearReplicationId2,@function
clearReplicationId2:                    # @clearReplicationId2
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$server+2309, %edi
	movl	$41, %edx
	movl	$48, %esi
	callq	memset
	movb	$0, server+2349(%rip)
	movq	$-1, server+2360(%rip)
	popq	%rbp
	retq
.Lfunc_end18:
	.size	clearReplicationId2, .Lfunc_end18-clearReplicationId2
                                        # -- End function
	.globl	replconfCommand         # -- Begin function replconfCommand
	.p2align	4, 0x90
	.type	replconfCommand,@function
replconfCommand:                        # @replconfCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r12
	movl	64(%rdi), %eax
	testb	$1, %al
	jne	.LBB19_2
# %bb.1:
	movq	shared+128(%rip), %rsi
	movq	%r12, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReply                # TAILCALL
.LBB19_2:
	cmpl	$2, %eax
	jl	.LBB19_31
# %bb.3:
	leaq	296(%r12), %r14
	movl	$2, %ebx
	jmp	.LBB19_7
.LBB19_19:                              #   in Loop: Header=BB19_7 Depth=1
	xorl	%edx, %edx
.LBB19_5:                               #   in Loop: Header=BB19_7 Depth=1
	addq	$1, %rdx
	movq	%r14, %rdi
	callq	memcpy
.LBB19_6:                               #   in Loop: Header=BB19_7 Depth=1
	addq	$2, %rbx
	leal	-1(%rbx), %eax
	cmpl	%eax, 64(%r12)
	jle	.LBB19_31
.LBB19_7:                               # =>This Inner Loop Header: Depth=1
	movq	72(%r12), %r15
	movq	-8(%r15,%rbx,8), %rax
	movq	8(%rax), %r13
	movl	$.L.str.49, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB19_13
# %bb.8:                                #   in Loop: Header=BB19_7 Depth=1
	movl	$.L.str.50, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB19_15
# %bb.9:                                #   in Loop: Header=BB19_7 Depth=1
	movl	$.L.str.52, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB19_33
# %bb.10:                               #   in Loop: Header=BB19_7 Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %r13
	movl	$.L.str.53, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB19_18
# %bb.11:                               #   in Loop: Header=BB19_7 Depth=1
	movl	$.L.str.54, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB19_6
# %bb.12:                               #   in Loop: Header=BB19_7 Depth=1
	orb	$2, 344(%r12)
	jmp	.LBB19_6
	.p2align	4, 0x90
.LBB19_13:                              #   in Loop: Header=BB19_7 Depth=1
	movq	(%r15,%rbx,8), %rsi
	movq	%r12, %rdi
	leaq	-48(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB19_32
# %bb.14:                               #   in Loop: Header=BB19_7 Depth=1
	movl	-48(%rbp), %eax
	movl	%eax, 292(%r12)
	jmp	.LBB19_6
	.p2align	4, 0x90
.LBB19_15:                              #   in Loop: Header=BB19_7 Depth=1
	movq	(%r15,%rbx,8), %rax
	movq	8(%rax), %rsi
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB19_19
# %bb.16:                               #   in Loop: Header=BB19_7 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI19_0(,%rax,8)
.LBB19_4:                               #   in Loop: Header=BB19_7 Depth=1
	shrq	$3, %rdx
	jmp	.LBB19_5
.LBB19_18:                              #   in Loop: Header=BB19_7 Depth=1
	orb	$1, 344(%r12)
	jmp	.LBB19_6
.LBB19_17:                              #   in Loop: Header=BB19_7 Depth=1
	movzbl	-3(%rsi), %eax
	jmp	.LBB19_23
.LBB19_20:                              #   in Loop: Header=BB19_7 Depth=1
	movzwl	-5(%rsi), %eax
	jmp	.LBB19_23
.LBB19_21:                              #   in Loop: Header=BB19_7 Depth=1
	movl	-9(%rsi), %eax
	jmp	.LBB19_23
.LBB19_22:                              #   in Loop: Header=BB19_7 Depth=1
	movq	-17(%rsi), %rax
.LBB19_23:                              #   in Loop: Header=BB19_7 Depth=1
	andb	$7, %dl
	addb	$-1, %dl
	cmpq	$45, %rax
	ja	.LBB19_36
# %bb.24:                               #   in Loop: Header=BB19_7 Depth=1
	cmpb	$3, %dl
	ja	.LBB19_19
# %bb.25:                               #   in Loop: Header=BB19_7 Depth=1
	movzbl	%dl, %eax
	jmpq	*.LJTI19_2(,%rax,8)
.LBB19_26:                              #   in Loop: Header=BB19_7 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB19_5
.LBB19_28:                              #   in Loop: Header=BB19_7 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB19_5
.LBB19_29:                              #   in Loop: Header=BB19_7 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB19_5
.LBB19_30:                              #   in Loop: Header=BB19_7 Depth=1
	movq	-17(%rsi), %rdx
	jmp	.LBB19_5
.LBB19_31:
	movq	shared+8(%rip), %rsi
	movq	%r12, %rdi
	callq	addReply
.LBB19_32:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB19_33:
	movl	$.L.str.55, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB19_39
# %bb.34:
	movl	$.L.str.56, %esi
	movq	%r13, %rdi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB19_46
# %bb.35:
	movl	$.L.str.57, %esi
	movq	%r12, %rdi
	movq	%r13, %rdx
	jmp	.LBB19_54
.LBB19_36:
	cmpb	$3, %dl
	ja	.LBB19_49
# %bb.37:
	movzbl	%dl, %eax
	jmpq	*.LJTI19_1(,%rax,8)
.LBB19_38:
	movzbl	-3(%rsi), %edx
	jmp	.LBB19_53
.LBB19_39:
	testb	$1, 160(%r12)
	je	.LBB19_32
# %bb.40:
	movl	%ebx, %eax
	movq	(%r15,%rax,8), %rdi
	leaq	-48(%rbp), %rsi
	callq	getLongLongFromObject
	testl	%eax, %eax
	jne	.LBB19_32
# %bb.41:
	movq	-48(%rbp), %rax
	cmpq	224(%r12), %rax
	jle	.LBB19_43
# %bb.42:
	movq	%rax, 224(%r12)
.LBB19_43:
	movq	server+2872(%rip), %rax
	movq	%rax, 232(%r12)
	cmpl	$0, 172(%r12)
	je	.LBB19_32
# %bb.44:
	cmpl	$9, 168(%r12)
	jne	.LBB19_32
# %bb.45:
	movq	%r12, %rdi
	callq	putSlaveOnline
	jmp	.LBB19_32
.LBB19_46:
	cmpq	$0, server+2464(%rip)
	je	.LBB19_32
# %bb.47:
	movq	server+2480(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB19_32
# %bb.48:
	orb	$32, 161(%rbx)
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.155, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	216(%rbx), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	andb	$-33, 161(%rbx)
	jmp	.LBB19_32
.LBB19_49:
	xorl	%edx, %edx
	jmp	.LBB19_53
.LBB19_50:
	movzwl	-5(%rsi), %edx
	jmp	.LBB19_53
.LBB19_51:
	movl	-9(%rsi), %edx
	jmp	.LBB19_53
.LBB19_52:
	movq	-17(%rsi), %rdx
.LBB19_53:
	movl	$.L.str.51, %esi
	movq	%r12, %rdi
.LBB19_54:
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB19_32
.Lfunc_end19:
	.size	replconfCommand, .Lfunc_end19-replconfCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI19_0:
	.quad	.LBB19_4
	.quad	.LBB19_17
	.quad	.LBB19_20
	.quad	.LBB19_21
	.quad	.LBB19_22
.LJTI19_1:
	.quad	.LBB19_38
	.quad	.LBB19_50
	.quad	.LBB19_51
	.quad	.LBB19_52
.LJTI19_2:
	.quad	.LBB19_26
	.quad	.LBB19_28
	.quad	.LBB19_29
	.quad	.LBB19_30
                                        # -- End function
	.text
	.globl	putSlaveOnline          # -- Begin function putSlaveOnline
	.p2align	4, 0x90
	.type	putSlaveOnline,@function
putSlaveOnline:                         # @putSlaveOnline
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	$9, 168(%rdi)
	movq	server+2872(%rip), %rax
	movq	%rax, 232(%rdi)
	movq	server+72(%rip), %rdi
	movl	8(%r14), %esi
	movl	$sendReplyToClient, %ecx
	movl	$2, %edx
	movq	%r14, %r8
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB20_10
# %bb.1:
	cmpl	$0, server+2432(%rip)
	je	.LBB20_9
# %bb.2:
	cmpl	$0, server+2436(%rip)
	je	.LBB20_9
# %bb.3:
	movq	server+536(%rip), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB20_8
# %bb.4:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB20_5
	.p2align	4, 0x90
.LBB20_7:                               #   in Loop: Header=BB20_5 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB20_8
.LBB20_5:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB20_7
# %bb.6:                                #   in Loop: Header=BB20_5 Depth=1
	movq	server+2872(%rip), %rcx
	subq	232(%rax), %rcx
	movslq	server+2436(%rip), %rax
	xorl	%edx, %edx
	cmpq	%rax, %rcx
	setle	%dl
	addl	%edx, %ebx
	jmp	.LBB20_7
.LBB20_10:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.58, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	freeClient              # TAILCALL
.LBB20_8:
	movl	%ebx, server+2440(%rip)
.LBB20_9:
	movq	%r14, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.59, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	putSlaveOnline, .Lfunc_end20-putSlaveOnline
                                        # -- End function
	.globl	replicationSendAck      # -- Begin function replicationSendAck
	.p2align	4, 0x90
	.type	replicationSendAck,@function
replicationSendAck:                     # @replicationSendAck
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2480(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB21_2
# %bb.1:
	orb	$32, 161(%rbx)
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.155, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	216(%rbx), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	andb	$-33, 161(%rbx)
.LBB21_2:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end21:
	.size	replicationSendAck, .Lfunc_end21-replicationSendAck
                                        # -- End function
	.globl	sendBulkToSlave         # -- Begin function sendBulkToSlave
	.p2align	4, 0x90
	.type	sendBulkToSlave,@function
sendBulkToSlave:                        # @sendBulkToSlave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16384, %rsp            # imm = 0x4000
	movq	%rdx, %rbx
	movl	%esi, %r14d
	movq	200(%rdx), %rsi
	testq	%rsi, %rsi
	je	.LBB22_22
# %bb.1:
	movzbl	-1(%rsi), %edx
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB22_2
# %bb.3:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI22_0(,%rax,8)
.LBB22_4:
	shrq	$3, %rdx
	jmp	.LBB22_9
.LBB22_2:
	xorl	%edx, %edx
	jmp	.LBB22_9
.LBB22_5:
	movzbl	-3(%rsi), %edx
	jmp	.LBB22_9
.LBB22_6:
	movzwl	-5(%rsi), %edx
	jmp	.LBB22_9
.LBB22_7:
	movl	-9(%rsi), %edx
	jmp	.LBB22_9
.LBB22_8:
	movq	-17(%rsi), %rdx
.LBB22_9:
	movl	%r14d, %edi
	callq	write
	cmpq	$-1, %rax
	je	.LBB22_10
# %bb.13:
	addq	%rax, server+1248(%rip)
	movq	200(%rbx), %rdi
	movq	%rax, %rsi
	movq	$-1, %rdx
	callq	sdsrange
	movq	200(%rbx), %rdi
	movzbl	-1(%rdi), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB22_21
# %bb.14:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI22_1(,%rcx,8)
.LBB22_15:
	shrq	$3, %rax
	testq	%rax, %rax
	jne	.LBB22_32
	jmp	.LBB22_21
.LBB22_10:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.60, %esi
	movl	$1, %edi
	jmp	.LBB22_11
.LBB22_16:
	movzbl	-3(%rdi), %eax
	testq	%rax, %rax
	jne	.LBB22_32
	jmp	.LBB22_21
.LBB22_17:
	movzwl	-5(%rdi), %eax
	testq	%rax, %rax
	jne	.LBB22_32
	jmp	.LBB22_21
.LBB22_18:
	movl	-9(%rdi), %eax
	testq	%rax, %rax
	jne	.LBB22_32
	jmp	.LBB22_21
.LBB22_19:
	movq	-17(%rdi), %rax
	testq	%rax, %rax
	jne	.LBB22_32
.LBB22_21:
	callq	sdsfree
	movq	$0, 200(%rbx)
.LBB22_22:
	movl	176(%rbx), %edi
	movq	184(%rbx), %rsi
	xorl	%edx, %edx
	callq	lseek
	movl	176(%rbx), %edi
	leaq	-16400(%rbp), %rsi
	movl	$16384, %edx            # imm = 0x4000
	callq	read
	testq	%rax, %rax
	jle	.LBB22_23
# %bb.27:
	leaq	-16400(%rbp), %rsi
	movl	%r14d, %edi
	movq	%rax, %rdx
	callq	write
	cmpq	$-1, %rax
	je	.LBB22_28
# %bb.30:
	movq	184(%rbx), %rcx
	addq	%rax, %rcx
	movq	%rcx, 184(%rbx)
	addq	%rax, server+1248(%rip)
	cmpq	192(%rbx), %rcx
	jne	.LBB22_32
# %bb.31:
	movl	176(%rbx), %edi
	callq	close
	movl	$-1, 176(%rbx)
	movq	server+72(%rip), %rdi
	movl	8(%rbx), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movq	%rbx, %rdi
	callq	putSlaveOnline
	jmp	.LBB22_32
.LBB22_23:
	je	.LBB22_24
# %bb.25:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
	jmp	.LBB22_26
.LBB22_28:
	callq	__errno
	cmpl	$11, (%rax)
	je	.LBB22_32
# %bb.29:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.63, %esi
	movl	$3, %edi
.LBB22_11:
	movq	%rax, %rdx
	jmp	.LBB22_12
.LBB22_24:
	movl	$.L.str.62, %edx
.LBB22_26:
	movl	$.L.str.61, %esi
	movl	$3, %edi
.LBB22_12:
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	freeClient
.LBB22_32:
	addq	$16384, %rsp            # imm = 0x4000
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end22:
	.size	sendBulkToSlave, .Lfunc_end22-sendBulkToSlave
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI22_0:
	.quad	.LBB22_4
	.quad	.LBB22_5
	.quad	.LBB22_6
	.quad	.LBB22_7
	.quad	.LBB22_8
.LJTI22_1:
	.quad	.LBB22_15
	.quad	.LBB22_16
	.quad	.LBB22_17
	.quad	.LBB22_18
	.quad	.LBB22_19
                                        # -- End function
	.text
	.globl	updateSlavesWaitingBgsave # -- Begin function updateSlavesWaitingBgsave
	.p2align	4, 0x90
	.type	updateSlavesWaitingBgsave,@function
updateSlavesWaitingBgsave:              # @updateSlavesWaitingBgsave
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$120, %rsp
	movl	%esi, %r15d
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	server+536(%rip), %rdi
	leaq	-64(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB23_17
# %bb.1:
	movl	$-1, %ebx
	leaq	-64(%rbp), %r13
	xorl	%r14d, %r14d
	jmp	.LBB23_2
.LBB23_6:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.64, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movabsq	$4294967305, %rax       # imm = 0x100000009
	movq	%rax, 168(%r12)
	movq	server+2872(%rip), %rax
	movq	%rax, 232(%r12)
	.p2align	4, 0x90
.LBB23_14:                              #   in Loop: Header=BB23_2 Depth=1
	movq	%r13, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB23_15
.LBB23_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %r12
	movl	168(%r12), %eax
	cmpl	$7, %eax
	je	.LBB23_5
# %bb.3:                                #   in Loop: Header=BB23_2 Depth=1
	cmpl	$6, %eax
	jne	.LBB23_14
# %bb.4:                                #   in Loop: Header=BB23_2 Depth=1
	andl	344(%r12), %ebx
	movl	$1, %r14d
	jmp	.LBB23_14
	.p2align	4, 0x90
.LBB23_5:                               #   in Loop: Header=BB23_2 Depth=1
	cmpl	$2, %r15d
	je	.LBB23_6
# %bb.7:                                #   in Loop: Header=BB23_2 Depth=1
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB23_9
# %bb.8:                                #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, %rdi
	callq	freeClient
	movl	$.L.str.65, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB23_14
.LBB23_9:                               #   in Loop: Header=BB23_2 Depth=1
	movq	server+2120(%rip), %rdi
	xorl	%esi, %esi
	xorl	%eax, %eax
	callq	open
	movl	%eax, 176(%r12)
	cmpl	$-1, %eax
	je	.LBB23_11
# %bb.10:                               #   in Loop: Header=BB23_2 Depth=1
	movl	%eax, %edi
	leaq	-152(%rbp), %rsi
	callq	fstat
	cmpl	$-1, %eax
	je	.LBB23_11
# %bb.12:                               #   in Loop: Header=BB23_2 Depth=1
	movq	$0, 184(%r12)
	movq	-136(%rbp), %rax
	movq	%rax, 192(%r12)
	movl	$8, 168(%r12)
	callq	sdsempty
	movq	192(%r12), %rdx
	movl	$.L.str.67, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, 200(%r12)
	movq	server+72(%rip), %rdi
	movl	8(%r12), %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movq	server+72(%rip), %rdi
	movl	8(%r12), %esi
	movl	$sendBulkToSlave, %ecx
	movl	$2, %edx
	movq	%r12, %r8
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	jne	.LBB23_14
# %bb.13:                               #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, %rdi
	callq	freeClient
	jmp	.LBB23_14
.LBB23_11:                              #   in Loop: Header=BB23_2 Depth=1
	movq	%r12, %rdi
	callq	freeClient
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.66, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB23_14
.LBB23_15:
	testl	%r14d, %r14d
	je	.LBB23_17
# %bb.16:
	movl	%ebx, %edi
	callq	startBgsaveForReplication
.LBB23_17:
	addq	$120, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	updateSlavesWaitingBgsave, .Lfunc_end23-updateSlavesWaitingBgsave
                                        # -- End function
	.globl	shiftReplicationId      # -- Begin function shiftReplicationId
	.p2align	4, 0x90
	.type	shiftReplicationId,@function
shiftReplicationId:                     # @shiftReplicationId
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$server+2309, %edi
	movl	$server+2268, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2360(%rip)
	movl	$server+2268, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+2308(%rip)
	movq	server+2360(%rip), %rcx
	movl	$.L.str.68, %esi
	movl	$server+2309, %edx
	movl	$server+2268, %r8d
	movl	$3, %edi
	xorl	%eax, %eax
	popq	%rbp
	jmp	serverLog               # TAILCALL
.Lfunc_end24:
	.size	shiftReplicationId, .Lfunc_end24-shiftReplicationId
                                        # -- End function
	.globl	slaveIsInHandshakeState # -- Begin function slaveIsInHandshakeState
	.p2align	4, 0x90
	.type	slaveIsInHandshakeState,@function
slaveIsInHandshakeState:                # @slaveIsInHandshakeState
# %bb.0:
	movl	server+2500(%rip), %ecx
	addl	$-3, %ecx
	xorl	%eax, %eax
	cmpl	$11, %ecx
	setb	%al
	retq
.Lfunc_end25:
	.size	slaveIsInHandshakeState, .Lfunc_end25-slaveIsInHandshakeState
                                        # -- End function
	.globl	replicationSendNewlineToMaster # -- Begin function replicationSendNewlineToMaster
	.p2align	4, 0x90
	.type	replicationSendNewlineToMaster,@function
replicationSendNewlineToMaster:         # @replicationSendNewlineToMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edi, %edi
	callq	time
	cmpq	replicationSendNewlineToMaster.newline_sent(%rip), %rax
	jne	.LBB26_2
# %bb.1:
	popq	%rbp
	retq
.LBB26_2:
	xorl	%edi, %edi
	callq	time
	movq	%rax, replicationSendNewlineToMaster.newline_sent(%rip)
	movl	server+2528(%rip), %edi
	movl	$.L.str.69, %esi
	movl	$1, %edx
	popq	%rbp
	jmp	write                   # TAILCALL
.Lfunc_end26:
	.size	replicationSendNewlineToMaster, .Lfunc_end26-replicationSendNewlineToMaster
                                        # -- End function
	.globl	replicationEmptyDbCallback # -- Begin function replicationEmptyDbCallback
	.p2align	4, 0x90
	.type	replicationEmptyDbCallback,@function
replicationEmptyDbCallback:             # @replicationEmptyDbCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%edi, %edi
	callq	time
	cmpq	replicationSendNewlineToMaster.newline_sent(%rip), %rax
	jne	.LBB27_2
# %bb.1:
	popq	%rbp
	retq
.LBB27_2:
	xorl	%edi, %edi
	callq	time
	movq	%rax, replicationSendNewlineToMaster.newline_sent(%rip)
	movl	server+2528(%rip), %edi
	movl	$.L.str.69, %esi
	movl	$1, %edx
	popq	%rbp
	jmp	write                   # TAILCALL
.Lfunc_end27:
	.size	replicationEmptyDbCallback, .Lfunc_end27-replicationEmptyDbCallback
                                        # -- End function
	.globl	replicationCreateMasterClient # -- Begin function replicationCreateMasterClient
	.p2align	4, 0x90
	.type	replicationCreateMasterClient,@function
replicationCreateMasterClient:          # @replicationCreateMasterClient
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%esi, %ebx
	callq	createClient
	movq	%rax, server+2480(%rip)
	orb	$2, 160(%rax)
	movl	$1, 164(%rax)
	movq	server+2648(%rip), %rcx
	movq	%rcx, 216(%rax)
	movq	%rcx, 208(%rax)
	leaq	248(%rax), %rdi
	movl	$server+2600, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2480(%rip), %rdi
	cmpq	$-1, 216(%rdi)
	je	.LBB28_1
# %bb.2:
	cmpl	$-1, %ebx
	je	.LBB28_3
.LBB28_4:
	movl	%ebx, %esi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	selectDb                # TAILCALL
.LBB28_1:
	orb	$1, 162(%rdi)
	cmpl	$-1, %ebx
	jne	.LBB28_4
.LBB28_3:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	replicationCreateMasterClient, .Lfunc_end28-replicationCreateMasterClient
                                        # -- End function
	.globl	restartAOFAfterSYNC     # -- Begin function restartAOFAfterSYNC
	.p2align	4, 0x90
	.type	restartAOFAfterSYNC,@function
restartAOFAfterSYNC:                    # @restartAOFAfterSYNC
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.1:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.2:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.3:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.4:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.5:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.6:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.7:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.8:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	je	.LBB29_10
# %bb.9:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	callq	startAppendOnly
	testl	%eax, %eax
	jne	.LBB29_11
.LBB29_10:
	popq	%rbp
	retq
.LBB29_11:
	movl	$.L.str.70, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	sleep
	movl	$.L.str.71, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$1, %edi
	callq	exit
.Lfunc_end29:
	.size	restartAOFAfterSYNC, .Lfunc_end29-restartAOFAfterSYNC
                                        # -- End function
	.globl	readSyncBulkPayload     # -- Begin function readSyncBulkPayload
	.p2align	4, 0x90
	.type	readSyncBulkPayload,@function
readSyncBulkPayload:                    # @readSyncBulkPayload
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$4168, %rsp             # imm = 0x1048
	movl	%esi, %edi
	movq	server+2504(%rip), %rax
	cmpq	$-1, %rax
	je	.LBB30_7
# %bb.1:
	movl	$4096, %edx             # imm = 0x1000
	cmpb	$0, readSyncBulkPayload.usemark(%rip)
	jne	.LBB30_3
# %bb.2:
	subq	server+2512(%rip), %rax
	cmpq	$4097, %rax             # imm = 0x1001
	movl	$4096, %edx             # imm = 0x1000
	cmovlq	%rax, %rdx
.LBB30_3:
	leaq	-4192(%rbp), %rsi
	callq	read
	movq	%rax, %rbx
	testq	%rax, %rax
	jle	.LBB30_12
# %bb.4:
	addq	%rbx, server+1240(%rip)
	xorl	%r15d, %r15d
	cmpb	$1, readSyncBulkPayload.usemark(%rip)
	jne	.LBB30_21
# %bb.5:
	cmpq	$40, %rbx
	jl	.LBB30_19
# %bb.6:
	leaq	(%rbx,%rbp), %rsi
	addq	$-4232, %rsi            # imm = 0xEF78
	movl	$readSyncBulkPayload.lastbytes, %edi
	movl	$40, %edx
	jmp	.LBB30_20
.LBB30_7:
	movslq	server+2496(%rip), %rax
	imulq	$1000, %rax, %rcx       # imm = 0x3E8
	leaq	-4192(%rbp), %rsi
	movl	$1024, %edx             # imm = 0x400
	callq	syncReadLine
	cmpq	$-1, %rax
	je	.LBB30_18
# %bb.8:
	movb	-4192(%rbp), %al
	testb	%al, %al
	je	.LBB30_44
# %bb.9:
	cmpb	$36, %al
	je	.LBB30_45
# %bb.10:
	cmpb	$45, %al
	jne	.LBB30_48
# %bb.11:
	leaq	-4191(%rbp), %rdx
	movl	$.L.str.73, %esi
	jmp	.LBB30_49
.LBB30_12:
	movl	$.L.str.79, %edx
	cmpq	$-1, %rbx
	jne	.LBB30_14
# %bb.13:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
.LBB30_14:
	movl	$.L.str.78, %esi
	movl	$3, %edi
.LBB30_15:
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB30_57
# %bb.16:
	cmpl	$14, %eax
	je	.LBB30_17
.LBB30_56:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB30_59
	jmp	.LBB30_57
.LBB30_18:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.72, %esi
	jmp	.LBB30_52
.LBB30_19:
	leaq	readSyncBulkPayload.lastbytes(%rbx), %rsi
	movq	%rbx, %rax
	shlq	$32, %rax
	movabsq	$171798691840, %r14     # imm = 0x2800000000
	subq	%rax, %r14
	sarq	$32, %r14
	movl	$readSyncBulkPayload.lastbytes, %edi
	movq	%r14, %rdx
	callq	memmove
	leaq	readSyncBulkPayload.lastbytes(%r14), %rdi
	leaq	-4192(%rbp), %rsi
	movq	%rbx, %rdx
.LBB30_20:
	callq	memcpy
	movl	$readSyncBulkPayload.lastbytes, %edi
	movl	$readSyncBulkPayload.eofmark, %esi
	movl	$40, %edx
	callq	memcmp
	xorl	%r15d, %r15d
	testl	%eax, %eax
	sete	%r15b
.LBB30_21:
	movq	server+2872(%rip), %rax
	movq	%rax, server+2544(%rip)
	movl	server+2532(%rip), %edi
	leaq	-4192(%rbp), %rsi
	movq	%rbx, %rdx
	callq	write
	cmpq	%rbx, %rax
	jne	.LBB30_30
# %bb.22:
	movq	server+2512(%rip), %r14
	addq	%rbx, %r14
	movq	%r14, server+2512(%rip)
	testl	%r15d, %r15d
	je	.LBB30_26
# %bb.23:
	testb	$1, readSyncBulkPayload.usemark(%rip)
	je	.LBB30_26
# %bb.24:
	movl	server+2532(%rip), %edi
	addq	$-40, %r14
	movq	%r14, %rsi
	callq	ftruncate
	cmpl	$-1, %eax
	je	.LBB30_51
# %bb.25:
	movq	server+2512(%rip), %r14
.LBB30_26:
	movq	server+2520(%rip), %rax
	leaq	8388608(%rax), %rcx
	cmpq	%rcx, %r14
	jl	.LBB30_28
# %bb.27:
	subq	%rax, %r14
	movl	server+2532(%rip), %edi
	callq	fsync
	addq	%r14, server+2520(%rip)
.LBB30_28:
	cmpb	$0, readSyncBulkPayload.usemark(%rip)
	je	.LBB30_33
# %bb.29:
	testl	%r15d, %r15d
	jne	.LBB30_35
	jmp	.LBB30_59
.LBB30_30:
	movl	$.L.str.81, %edx
	cmpq	$-1, %rax
	jne	.LBB30_32
# %bb.31:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movq	%rax, %rdx
.LBB30_32:
	movl	$.L.str.80, %esi
	jmp	.LBB30_49
.LBB30_33:
	testl	%r15d, %r15d
	jne	.LBB30_35
# %bb.34:
	movq	server+2504(%rip), %rax
	cmpq	%rax, server+2512(%rip)
	jne	.LBB30_59
.LBB30_35:
	movl	server+1880(%rip), %r14d
	movslq	server+2096(%rip), %rdx
	cmpq	$-1, %rdx
	je	.LBB30_37
# %bb.36:
	movl	$.L.str.83, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2096(%rip), %edi
	movl	$10, %esi
	callq	kill
	movl	server+2096(%rip), %edi
	callq	rdbRemoveTempFile
.LBB30_37:
	movq	server+2536(%rip), %rdi
	movq	server+2120(%rip), %rsi
	callq	rename
	cmpl	$-1, %eax
	je	.LBB30_60
# %bb.38:
	movl	$.L.str.85, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	testl	%r14d, %r14d
	je	.LBB30_40
# %bb.39:
	callq	stopAppendOnly
.LBB30_40:
	movl	$-1, %edi
	callq	signalFlushedDb
	xorl	%esi, %esi
	cmpl	$0, server+2656(%rip)
	setne	%sil
	movl	$replicationEmptyDbCallback, %edx
	movl	$-1, %edi
	callq	emptyDb
	movq	server+72(%rip), %rdi
	movl	server+2528(%rip), %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movl	$.L.str.86, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movups	.LreadSyncBulkPayload.rsi+48(%rip), %xmm0
	movaps	%xmm0, -48(%rbp)
	movups	.LreadSyncBulkPayload.rsi+32(%rip), %xmm0
	movaps	%xmm0, -64(%rbp)
	movups	.LreadSyncBulkPayload.rsi+16(%rip), %xmm0
	movaps	%xmm0, -80(%rbp)
	movups	.LreadSyncBulkPayload.rsi(%rip), %xmm0
	movaps	%xmm0, -96(%rbp)
	movq	server+2120(%rip), %rdi
	leaq	-96(%rbp), %rsi
	callq	rdbLoad
	testl	%eax, %eax
	je	.LBB30_61
# %bb.41:
	movl	$.L.str.87, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB30_69
# %bb.42:
	cmpl	$14, %eax
	jne	.LBB30_68
# %bb.43:
	callq	replicationAbortSyncTransfer
	jmp	.LBB30_70
.LBB30_44:
	movq	server+2872(%rip), %rax
	movq	%rax, server+2544(%rip)
	jmp	.LBB30_59
.LBB30_45:
	leaq	-4191(%rbp), %rbx
	movl	$.L.str.75, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	strncmp
	testl	%eax, %eax
	jne	.LBB30_50
# %bb.46:
	leaq	-4187(%rbp), %r14
	movq	%r14, %rdi
	callq	strlen
	cmpq	$40, %rax
	jb	.LBB30_50
# %bb.47:
	movb	$1, readSyncBulkPayload.usemark(%rip)
	movl	$readSyncBulkPayload.eofmark, %edi
	movl	$40, %edx
	movq	%r14, %rsi
	callq	memcpy
	movl	$readSyncBulkPayload.lastbytes, %edi
	movl	$40, %edx
	xorl	%esi, %esi
	callq	memset
	movq	$0, server+2504(%rip)
	movl	$.L.str.76, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB30_59
.LBB30_48:
	leaq	-4192(%rbp), %rdx
	movl	$.L.str.74, %esi
.LBB30_49:
	movl	$3, %edi
	jmp	.LBB30_53
.LBB30_50:
	movb	$0, readSyncBulkPayload.usemark(%rip)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtol
	movq	%rax, server+2504(%rip)
	movl	$.L.str.77, %esi
	movl	$2, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB30_59
.LBB30_51:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.82, %esi
.LBB30_52:
	movl	$3, %edi
	movq	%rax, %rdx
.LBB30_53:
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB30_57
# %bb.54:
	cmpl	$14, %eax
	jne	.LBB30_56
.LBB30_17:
	callq	replicationAbortSyncTransfer
	jmp	.LBB30_58
.LBB30_57:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB30_58:
	movl	$1, server+2500(%rip)
.LBB30_59:
	addq	$4168, %rsp             # imm = 0x1048
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB30_60:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.84, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	jmp	.LBB30_15
.LBB30_61:
	movq	server+2536(%rip), %rdi
	callq	zfree
	movl	server+2532(%rip), %edi
	callq	close
	movl	server+2528(%rip), %edi
	movl	-96(%rbp), %ebx
	callq	createClient
	movq	%rax, server+2480(%rip)
	orb	$2, 160(%rax)
	movl	$1, 164(%rax)
	movq	server+2648(%rip), %rcx
	movq	%rcx, 216(%rax)
	movq	%rcx, 208(%rax)
	leaq	248(%rax), %rdi
	movl	$server+2600, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2480(%rip), %rsi
	cmpq	$-1, 216(%rsi)
	jne	.LBB30_63
# %bb.62:
	orb	$1, 162(%rsi)
.LBB30_63:
	cmpl	$-1, %ebx
	je	.LBB30_65
# %bb.64:
	movq	%rsi, %rdi
	movl	%ebx, %esi
	callq	selectDb
	movq	server+2480(%rip), %rsi
.LBB30_65:
	movl	$15, server+2500(%rip)
	movq	$0, server+2568(%rip)
	addq	$248, %rsi
	movl	$server+2268, %edi
	movl	$41, %edx
	callq	memcpy
	movq	server+2480(%rip), %rax
	movq	216(%rax), %rax
	movq	%rax, server+2352(%rip)
	movl	$server+2309, %edi
	movl	$41, %edx
	movl	$48, %esi
	callq	memset
	movb	$0, server+2349(%rip)
	movq	$-1, server+2360(%rip)
	cmpq	$0, server+2376(%rip)
	jne	.LBB30_67
# %bb.66:
	movq	server+2384(%rip), %rdi
	callq	zmalloc
	movq	%rax, server+2376(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2392(%rip)
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
.LBB30_67:
	movl	$.L.str.88, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB30_71
.LBB30_68:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB30_71
.LBB30_69:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB30_70:
	movl	$1, server+2500(%rip)
.LBB30_71:
	testl	%r14d, %r14d
	je	.LBB30_59
# %bb.72:
	callq	restartAOFAfterSYNC
	jmp	.LBB30_59
.Lfunc_end30:
	.size	readSyncBulkPayload, .Lfunc_end30-readSyncBulkPayload
                                        # -- End function
	.globl	cancelReplicationHandshake # -- Begin function cancelReplicationHandshake
	.p2align	4, 0x90
	.type	cancelReplicationHandshake,@function
cancelReplicationHandshake:             # @cancelReplicationHandshake
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	server+2500(%rip), %ecx
	cmpl	$2, %ecx
	je	.LBB31_4
# %bb.1:
	cmpl	$14, %ecx
	jne	.LBB31_3
# %bb.2:
	callq	replicationAbortSyncTransfer
	jmp	.LBB31_5
.LBB31_3:
	addl	$-3, %ecx
	xorl	%eax, %eax
	cmpl	$10, %ecx
	ja	.LBB31_6
.LBB31_4:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB31_5:
	movl	$1, server+2500(%rip)
	movl	$1, %eax
.LBB31_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	cancelReplicationHandshake, .Lfunc_end31-cancelReplicationHandshake
                                        # -- End function
	.globl	sendSynchronousCommand  # -- Begin function sendSynchronousCommand
	.p2align	4, 0x90
	.type	sendSynchronousCommand,@function
sendSynchronousCommand:                 # @sendSynchronousCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
	movl	%esi, %r13d
	movl	%edi, %r15d
	testb	%al, %al
	je	.LBB32_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB32_2:
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	testb	$2, %r15b
	je	.LBB32_20
# %bb.3:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	callq	sdsempty
	movq	%rax, -56(%rbp)         # 8-byte Spill
	callq	sdsempty
	movq	%rax, %r13
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -496(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -488(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -480(%rbp)
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB32_4:                               # =>This Inner Loop Header: Depth=1
	movslq	-496(%rbp), %rcx
	cmpq	$40, %rcx
	ja	.LBB32_6
# %bb.5:                                #   in Loop: Header=BB32_4 Depth=1
	movq	%rcx, %rax
	addq	-480(%rbp), %rax
	addl	$8, %ecx
	movl	%ecx, -496(%rbp)
	jmp	.LBB32_7
	.p2align	4, 0x90
.LBB32_6:                               #   in Loop: Header=BB32_4 Depth=1
	movq	-488(%rbp), %rax
	leaq	8(%rax), %rcx
	movq	%rcx, -488(%rbp)
.LBB32_7:                               #   in Loop: Header=BB32_4 Depth=1
	movq	(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB32_9
# %bb.8:                                #   in Loop: Header=BB32_4 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movl	$.L.str.89, %esi
	movq	%r13, %rdi
	movq	%rax, %rdx
	movq	%rbx, %rcx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %r13
	addq	$1, %r12
	jmp	.LBB32_4
.LBB32_9:
	xorl	%r14d, %r14d
	movl	$.L.str.90, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	sdscatsds
	movq	%rax, %r12
	movq	%r13, %rdi
	callq	sdsfree
	movzbl	-1(%r12), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB32_10
# %bb.11:
	movl	%eax, %ecx
	andl	$7, %ecx
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmpq	*.LJTI32_0(,%rcx,8)
.LBB32_12:
	shrq	$3, %rax
	movq	%rax, %r14
	jmp	.LBB32_17
.LBB32_10:
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB32_17
.LBB32_13:
	movzbl	-3(%r12), %r14d
	jmp	.LBB32_17
.LBB32_14:
	movzwl	-5(%r12), %r14d
	jmp	.LBB32_17
.LBB32_15:
	movl	-9(%r12), %r14d
	jmp	.LBB32_17
.LBB32_16:
	movq	-17(%r12), %r14
.LBB32_17:
	movslq	server+2496(%rip), %rax
	imulq	$1000, %rax, %rcx       # imm = 0x3E8
	movl	%r13d, %edi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	syncWrite
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	sdsfree
	cmpq	$-1, %rbx
	je	.LBB32_18
.LBB32_20:
	testb	$1, %r15b
	jne	.LBB32_22
# %bb.21:
	xorl	%eax, %eax
	jmp	.LBB32_25
.LBB32_22:
	movslq	server+2496(%rip), %rax
	imulq	$1000, %rax, %rcx       # imm = 0x3E8
	leaq	-496(%rbp), %rsi
	movl	$256, %edx              # imm = 0x100
	movl	%r13d, %edi
	callq	syncReadLine
	cmpq	$-1, %rax
	je	.LBB32_23
# %bb.24:
	movq	server+2872(%rip), %rax
	movq	%rax, server+2544(%rip)
	leaq	-496(%rbp), %rdi
	callq	sdsnew
	jmp	.LBB32_25
.LBB32_18:
	callq	sdsempty
	movq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.91, %esi
	jmp	.LBB32_19
.LBB32_23:
	callq	sdsempty
	movq	%rax, %rbx
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.92, %esi
.LBB32_19:
	movq	%rbx, %rdi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	sdscatprintf
.LBB32_25:
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end32:
	.size	sendSynchronousCommand, .Lfunc_end32-sendSynchronousCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI32_0:
	.quad	.LBB32_12
	.quad	.LBB32_13
	.quad	.LBB32_14
	.quad	.LBB32_15
	.quad	.LBB32_16
                                        # -- End function
	.text
	.globl	slaveTryPartialResynchronization # -- Begin function slaveTryPartialResynchronization
	.p2align	4, 0x90
	.type	slaveTryPartialResynchronization,@function
slaveTryPartialResynchronization:       # @slaveTryPartialResynchronization
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	movl	%edi, %r14d
	testl	%esi, %esi
	je	.LBB33_1
# %bb.7:
	movl	$1, %r12d
	movl	$1, %edi
	movl	%r14d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %r15
	movzbl	-1(%rax), %eax
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB33_15
# %bb.8:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI33_0(,%rcx,8)
.LBB33_9:
	shrq	$3, %rax
	testq	%rax, %rax
	jne	.LBB33_16
	jmp	.LBB33_15
.LBB33_1:
	movq	$-1, server+2648(%rip)
	movq	server+2488(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB33_3
# %bb.2:
	movq	216(%rbx), %rcx
	addq	$248, %rbx
	addq	$1, %rcx
	leaq	-80(%rbp), %r15
	movl	$32, %esi
	movl	$.L.str.93, %edx
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	snprintf
	movl	$.L.str.94, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB33_4
.LBB33_3:
	movl	$.L.str.95, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	-80(%rbp), %rdi
	movl	$.L.str.97, %esi
	movl	$3, %edx
	callq	memcpy
	movl	$.L.str.96, %ebx
.LBB33_4:
	xorl	%r12d, %r12d
	leaq	-80(%rbp), %r8
	movl	$.L.str.98, %edx
	movl	$2, %edi
	movl	%r14d, %esi
	movq	%rbx, %rcx
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	testq	%rax, %rax
	je	.LBB33_5
# %bb.6:
	movq	%rax, %rbx
	movl	$.L.str.99, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	sdsfree
	movq	server+72(%rip), %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	jmp	.LBB33_43
.LBB33_5:
	movl	$1, %r12d
	jmp	.LBB33_43
.LBB33_10:
	movzbl	-3(%r15), %eax
	testq	%rax, %rax
	jne	.LBB33_16
	jmp	.LBB33_15
.LBB33_11:
	movzwl	-5(%r15), %eax
	testq	%rax, %rax
	jne	.LBB33_16
	jmp	.LBB33_15
.LBB33_12:
	movl	-9(%r15), %eax
	testq	%rax, %rax
	je	.LBB33_15
.LBB33_16:
	movq	server+72(%rip), %rdi
	movl	%r14d, %esi
	movl	$1, %edx
	callq	aeDeleteFileEvent
	movl	$.L.str.100, %esi
	movl	$11, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_17
# %bb.25:
	movl	$.L.str.103, %esi
	movl	$9, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_26
# %bb.35:
	movl	$.L.str.106, %esi
	movl	$13, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_37
# %bb.36:
	movl	$.L.str.107, %esi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_37
# %bb.38:
	movl	$.L.str.109, %esi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB33_40
# %bb.39:
	movl	$.L.str.110, %esi
	movl	$3, %edi
	jmp	.LBB33_41
.LBB33_17:
	movq	%r15, %rdi
	movl	$32, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB33_20
# %bb.18:
	movq	%rax, %rbx
	addq	$1, %rbx
	movq	%rbx, %rdi
	movl	$32, %esi
	callq	strchr
	leaq	1(%rax), %r14
	testq	%rax, %rax
	cmoveq	%rax, %r14
	je	.LBB33_20
# %bb.19:
	movq	%rbx, %rax
	notq	%rax
	addq	%r14, %rax
	cmpq	$40, %rax
	jne	.LBB33_20
# %bb.21:
	movl	$server+2600, %edi
	movl	$40, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movb	$0, server+2640(%rip)
	movq	%r14, %rdi
	xorl	%esi, %esi
	movl	$10, %edx
	callq	strtoll
	movq	%rax, server+2648(%rip)
	movl	$.L.str.102, %esi
	movl	$server+2600, %edx
	movl	$2, %edi
	movq	%rax, %rcx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB33_22
.LBB33_13:
	movq	-17(%r15), %rax
	testq	%rax, %rax
	jne	.LBB33_16
.LBB33_15:
	movq	%r15, %rdi
	callq	sdsfree
	jmp	.LBB33_43
.LBB33_20:
	movl	$.L.str.101, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$server+2600, %edi
	movl	$41, %edx
	xorl	%esi, %esi
	callq	memset
.LBB33_22:
	cmpq	$0, server+2488(%rip)
	je	.LBB33_24
# %bb.23:
	movl	$.L.str.159, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2488(%rip), %rdi
	andl	$-3, 160(%rdi)
	callq	freeClient
	movq	$0, server+2488(%rip)
.LBB33_24:
	movq	%r15, %rdi
	callq	sdsfree
	movl	$3, %r12d
	jmp	.LBB33_43
.LBB33_37:
	movl	$.L.str.108, %esi
	movl	$2, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r15, %rdi
	callq	sdsfree
	movl	$5, %r12d
	jmp	.LBB33_43
.LBB33_26:
	movl	$.L.str.104, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	leaq	10(%r15), %rsi
	movq	%r15, %rax
	addq	$9, %rax
	movl	$9217, %ecx             # imm = 0x2401
	jmp	.LBB33_27
	.p2align	4, 0x90
.LBB33_29:                              #   in Loop: Header=BB33_27 Depth=1
	addq	$1, %rax
.LBB33_27:                              # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpq	$13, %rdx
	ja	.LBB33_29
# %bb.28:                               #   in Loop: Header=BB33_27 Depth=1
	btq	%rdx, %rcx
	jae	.LBB33_29
# %bb.30:
	subq	%rsi, %rax
	cmpq	$40, %rax
	jne	.LBB33_33
# %bb.31:
	leaq	-80(%rbp), %r12
	movl	$40, %edx
	movq	%r12, %rdi
	callq	memcpy
	movb	$0, -40(%rbp)
	movl	$248, %ebx
	movq	server+2488(%rip), %rsi
	addq	%rbx, %rsi
	movq	%r12, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB33_33
# %bb.32:
	leaq	-80(%rbp), %r12
	movl	$.L.str.105, %esi
	movl	$3, %edi
	movq	%r12, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2488(%rip), %rsi
	addq	%rbx, %rsi
	movl	$server+2309, %edi
	movl	$41, %edx
	callq	memcpy
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2360(%rip)
	movl	$server+2268, %edi
	movl	$41, %edx
	movq	%r12, %rsi
	callq	memcpy
	addq	server+2488(%rip), %rbx
	movl	$41, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	callq	disconnectSlaves
.LBB33_33:
	movq	%r15, %rdi
	callq	sdsfree
	movl	%r14d, %edi
	callq	replicationResurrectCachedMaster
	movl	$2, %r12d
	cmpq	$0, server+2376(%rip)
	jne	.LBB33_43
# %bb.34:
	movq	server+2384(%rip), %rdi
	callq	zmalloc
	movq	%rax, server+2376(%rip)
	xorps	%xmm0, %xmm0
	movups	%xmm0, server+2392(%rip)
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2408(%rip)
	jmp	.LBB33_43
.LBB33_40:
	movl	$.L.str.111, %esi
	movl	$2, %edi
.LBB33_41:
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r15, %rdi
	callq	sdsfree
	movl	$4, %r12d
	cmpq	$0, server+2488(%rip)
	je	.LBB33_43
# %bb.42:
	movl	$.L.str.159, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2488(%rip), %rdi
	andl	$-3, 160(%rdi)
	callq	freeClient
	movq	$0, server+2488(%rip)
.LBB33_43:
	movl	%r12d, %eax
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	slaveTryPartialResynchronization, .Lfunc_end33-slaveTryPartialResynchronization
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI33_0:
	.quad	.LBB33_9
	.quad	.LBB33_10
	.quad	.LBB33_11
	.quad	.LBB33_12
	.quad	.LBB33_13
                                        # -- End function
	.text
	.globl	replicationDiscardCachedMaster # -- Begin function replicationDiscardCachedMaster
	.p2align	4, 0x90
	.type	replicationDiscardCachedMaster,@function
replicationDiscardCachedMaster:         # @replicationDiscardCachedMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpq	$0, server+2488(%rip)
	je	.LBB34_2
# %bb.1:
	movl	$.L.str.159, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2488(%rip), %rdi
	andl	$-3, 160(%rdi)
	callq	freeClient
	movq	$0, server+2488(%rip)
.LBB34_2:
	popq	%rbp
	retq
.Lfunc_end34:
	.size	replicationDiscardCachedMaster, .Lfunc_end34-replicationDiscardCachedMaster
                                        # -- End function
	.globl	replicationResurrectCachedMaster # -- Begin function replicationResurrectCachedMaster
	.p2align	4, 0x90
	.type	replicationResurrectCachedMaster,@function
replicationResurrectCachedMaster:       # @replicationResurrectCachedMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	%edi, %ebx
	movq	server+2488(%rip), %rdi
	movq	%rdi, server+2480(%rip)
	movq	$0, server+2488(%rip)
	movl	%ebx, 8(%rdi)
	andl	$-1089, 160(%rdi)       # imm = 0xFBBF
	movl	$1, 164(%rdi)
	movq	server+2872(%rip), %rax
	movq	%rax, 144(%rdi)
	movl	$15, server+2500(%rip)
	movq	$0, server+2568(%rip)
	callq	linkClient
	movq	server+72(%rip), %rdi
	movq	server+2480(%rip), %r8
	movl	$readQueryFromClient, %ecx
	movl	%ebx, %esi
	movl	$1, %edx
	callq	aeCreateFileEvent
	testl	%eax, %eax
	je	.LBB35_2
# %bb.1:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.160, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2480(%rip), %rdi
	callq	freeClientAsync
.LBB35_2:
	movq	server+2480(%rip), %rdi
	callq	clientHasPendingReplies
	testl	%eax, %eax
	je	.LBB35_4
# %bb.3:
	movq	server+72(%rip), %rdi
	movq	server+2480(%rip), %r8
	movl	$sendReplyToClient, %ecx
	movl	%ebx, %esi
	movl	$2, %edx
	callq	aeCreateFileEvent
	testl	%eax, %eax
	je	.LBB35_4
# %bb.5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.161, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2480(%rip), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	freeClientAsync         # TAILCALL
.LBB35_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end35:
	.size	replicationResurrectCachedMaster, .Lfunc_end35-replicationResurrectCachedMaster
                                        # -- End function
	.globl	syncWithMaster          # -- Begin function syncWithMaster
	.p2align	4, 0x90
	.type	syncWithMaster,@function
syncWithMaster:                         # @syncWithMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$264, %rsp              # imm = 0x108
	movl	%esi, %r15d
	movl	$0, -28(%rbp)
	movl	$4, -32(%rbp)
	cmpl	$0, server+2500(%rip)
	je	.LBB36_5
# %bb.1:
	leaq	-28(%rbp), %rcx
	leaq	-32(%rbp), %r8
	movl	%r15d, %edi
	movl	$4095, %esi             # imm = 0xFFF
	movl	$4103, %edx             # imm = 0x1007
	callq	getsockopt
	cmpl	$-1, %eax
	je	.LBB36_6
# %bb.2:
	movl	-28(%rbp), %edi
	testl	%edi, %edi
	je	.LBB36_7
.LBB36_3:
	callq	strerror
	movl	$.L.str.112, %esi
.LBB36_4:
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB36_40
.LBB36_5:
	movl	%r15d, %edi
	callq	close
	jmp	.LBB36_42
.LBB36_6:
	callq	__errno
	movl	(%rax), %edi
	movl	%edi, -28(%rbp)
	testl	%edi, %edi
	jne	.LBB36_3
.LBB36_7:
	movl	server+2500(%rip), %edx
	leal	-2(%rdx), %eax
	cmpl	$5, %eax
	ja	.LBB36_19
# %bb.8:
	jmpq	*.LJTI36_0(,%rax,8)
.LBB36_9:
	movl	$.L.str.113, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+72(%rip), %rdi
	movl	%r15d, %esi
	movl	$2, %edx
	callq	aeDeleteFileEvent
	movl	$3, server+2500(%rip)
	movl	$.L.str.114, %edx
	movl	$2, %edi
	movl	%r15d, %esi
	xorl	%ecx, %ecx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB36_37
	jmp	.LBB36_42
.LBB36_10:
	movl	$1, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	cmpb	$45, (%rax)
	jne	.LBB36_32
# %bb.11:
	movl	$.L.str.120, %esi
	jmp	.LBB36_38
.LBB36_12:
	movl	$1, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %r14
	cmpb	$43, (%rax)
	je	.LBB36_28
# %bb.13:
	movl	$.L.str.115, %esi
	movl	$7, %edx
	movq	%r14, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB36_28
# %bb.14:
	movl	$.L.str.116, %esi
	movl	$28, %edx
	movq	%r14, %rdi
	callq	strncmp
	testl	%eax, %eax
	je	.LBB36_28
# %bb.15:
	movl	$.L.str.117, %esi
	movl	$3, %edi
	movq	%r14, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	jmp	.LBB36_39
.LBB36_16:
	movl	$1, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	cmpb	$45, (%rax)
	jne	.LBB36_18
# %bb.17:
	movl	$.L.str.122, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB36_18:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$8, server+2500(%rip)
	movl	$8, %edx
.LBB36_19:
	movq	server+2592(%rip), %r8
	cmpl	$8, %edx
	jne	.LBB36_24
# %bb.20:
	testq	%r8, %r8
	jne	.LBB36_24
.LBB36_21:
	movl	$10, server+2500(%rip)
.LBB36_22:
	movl	$.L.str.121, %edx
	movl	$.L.str.52, %ecx
	movl	$.L.str.53, %r8d
	movl	$.L.str.52, %r9d
	movl	$2, %edi
	movl	%r15d, %esi
	xorl	%eax, %eax
	pushq	$0
	pushq	$.L.str.54
	callq	sendSynchronousCommand
	addq	$16, %rsp
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB36_37
# %bb.23:
	xorl	%edi, %edi
	callq	sdsfree
	movl	$11, server+2500(%rip)
	jmp	.LBB36_42
.LBB36_24:
	leal	-8(%rdx), %eax
	cmpl	$5, %eax
	ja	.LBB36_56
# %bb.25:
	jmpq	*.LJTI36_1(,%rax,8)
.LBB36_26:
	movl	$.L.str.121, %edx
	movl	$.L.str.50, %ecx
	movl	$2, %edi
	movl	%r15d, %esi
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB36_37
# %bb.27:
	xorl	%edi, %edi
	callq	sdsfree
	movl	$9, server+2500(%rip)
	jmp	.LBB36_42
.LBB36_28:
	movl	$.L.str.118, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%r14, %rdi
	callq	sdsfree
	movl	$4, server+2500(%rip)
.LBB36_29:
	movq	server+2456(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB36_33
# %bb.30:
	movl	$.L.str.119, %edx
	movl	$2, %edi
	movl	%r15d, %esi
	xorl	%r8d, %r8d
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	testq	%rax, %rax
	jne	.LBB36_37
# %bb.31:
	movl	$5, server+2500(%rip)
	jmp	.LBB36_42
.LBB36_32:
	movq	%rbx, %rdi
	callq	sdsfree
.LBB36_33:
	movl	$6, server+2500(%rip)
.LBB36_34:
	movl	server+2584(%rip), %eax
	testl	%eax, %eax
	jne	.LBB36_36
# %bb.35:
	movl	server+216(%rip), %eax
.LBB36_36:
	movslq	%eax, %rdi
	callq	sdsfromlonglong
	movq	%rax, %r14
	movl	$.L.str.121, %edx
	movl	$.L.str.49, %ecx
	movl	$2, %edi
	movl	%r15d, %esi
	movq	%rax, %r8
	xorl	%r9d, %r9d
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	sdsfree
	testq	%rbx, %rbx
	je	.LBB36_43
.LBB36_37:
	movl	$.L.str.134, %esi
.LBB36_38:
	movl	$3, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
.LBB36_39:
	callq	sdsfree
.LBB36_40:
	movq	server+72(%rip), %rdi
	movl	%r15d, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
.LBB36_41:
	movl	%r15d, %edi
	callq	close
	movl	$-1, server+2528(%rip)
	movl	$1, server+2500(%rip)
.LBB36_42:
	addq	$264, %rsp              # imm = 0x108
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_43:
	xorl	%edi, %edi
	callq	sdsfree
	movl	$7, server+2500(%rip)
	jmp	.LBB36_42
.LBB36_44:
	movl	$1, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	cmpb	$45, (%rax)
	jne	.LBB36_46
# %bb.45:
	movl	$.L.str.124, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB36_46:
	movq	%rbx, %rdi
	callq	sdsfree
	movl	$12, server+2500(%rip)
.LBB36_47:
	movl	%r15d, %edi
	xorl	%esi, %esi
	callq	slaveTryPartialResynchronization
	testl	%eax, %eax
	je	.LBB36_57
# %bb.48:
	movl	$13, server+2500(%rip)
	jmp	.LBB36_42
.LBB36_49:
	movl	$1, %edi
	movl	%r15d, %esi
	xorl	%edx, %edx
	xorl	%eax, %eax
	callq	sendSynchronousCommand
	movq	%rax, %rbx
	cmpb	$45, (%rax)
	jne	.LBB36_51
# %bb.50:
	movl	$.L.str.123, %esi
	movl	$2, %edi
	movq	%rbx, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB36_51:
	movq	%rbx, %rdi
	callq	sdsfree
	jmp	.LBB36_21
.LBB36_52:
	movl	%r15d, %edi
	movl	$1, %esi
	callq	slaveTryPartialResynchronization
	cmpl	$1, %eax
	je	.LBB36_42
# %bb.53:
	movl	%eax, %ebx
	cmpl	$5, %eax
	je	.LBB36_40
# %bb.54:
	cmpl	$2, %ebx
	jne	.LBB36_58
# %bb.55:
	movl	$.L.str.127, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB36_42
.LBB36_56:
	movl	$.L.str.126, %esi
	movl	$3, %edi
                                        # kill: def $edx killed $edx killed $rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB36_40
.LBB36_57:
	movl	$.L.str.125, %edi
	callq	sdsnew
	movq	%rax, %rbx
	jmp	.LBB36_37
.LBB36_58:
	callq	disconnectSlaves
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB36_71
# %bb.59:
	movq	server+2376(%rip), %rdi
	callq	zfree
	movq	$0, server+2376(%rip)
	cmpl	$4, %ebx
	jne	.LBB36_61
# %bb.60:
	movl	$.L.str.128, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movslq	server+2496(%rip), %rax
	imulq	$1000, %rax, %rcx       # imm = 0x3E8
	movl	$.L.str.129, %esi
	movl	$6, %edx
	movl	%r15d, %edi
	callq	syncWrite
	cmpq	$-1, %rax
	je	.LBB36_69
.LBB36_61:
	movl	server+2872(%rip), %ebx
	callq	getpid
	movslq	%eax, %r8
	leaq	-288(%rbp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.131, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2561, %esi             # imm = 0xA01
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	cmpl	$-1, %eax
	jne	.LBB36_66
# %bb.62:
	movl	$1, %edi
	callq	sleep
	movl	server+2872(%rip), %ebx
	callq	getpid
	movslq	%eax, %r8
	leaq	-288(%rbp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.131, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2561, %esi             # imm = 0xA01
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	cmpl	$-1, %eax
	jne	.LBB36_66
# %bb.63:
	movl	$1, %edi
	callq	sleep
	movl	server+2872(%rip), %ebx
	callq	getpid
	movslq	%eax, %r8
	leaq	-288(%rbp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.131, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2561, %esi             # imm = 0xA01
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	cmpl	$-1, %eax
	jne	.LBB36_66
# %bb.64:
	movl	$1, %edi
	callq	sleep
	movl	server+2872(%rip), %ebx
	callq	getpid
	movslq	%eax, %r8
	leaq	-288(%rbp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.131, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2561, %esi             # imm = 0xA01
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	cmpl	$-1, %eax
	jne	.LBB36_66
# %bb.65:
	movl	$1, %edi
	callq	sleep
	movl	server+2872(%rip), %ebx
	callq	getpid
	movslq	%eax, %r8
	leaq	-288(%rbp), %r14
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str.131, %edx
	movq	%r14, %rdi
	movl	%ebx, %ecx
	xorl	%eax, %eax
	callq	snprintf
	movq	%r14, %rdi
	movl	$2561, %esi             # imm = 0xA01
	movl	$420, %edx              # imm = 0x1A4
	xorl	%eax, %eax
	callq	open
	movl	%eax, %r14d
	cmpl	$-1, %eax
	je	.LBB36_70
.LBB36_66:
	movq	server+72(%rip), %rdi
	movl	$readSyncBulkPayload, %ecx
	movl	%r15d, %esi
	movl	$1, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB36_68
# %bb.67:
	movl	$14, server+2500(%rip)
	movq	$-1, %rax
	movq	%rax, %xmm0
	movdqu	%xmm0, server+2504(%rip)
	movq	$0, server+2520(%rip)
	movl	%r14d, server+2532(%rip)
	movq	server+2872(%rip), %rax
	movq	%rax, server+2544(%rip)
	leaq	-288(%rbp), %rdi
	callq	zstrdup
	movq	%rax, server+2536(%rip)
	jmp	.LBB36_42
.LBB36_68:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.133, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	movl	%r15d, %ecx
	xorl	%eax, %eax
	callq	serverLog
	movq	server+72(%rip), %rdi
	movl	%r15d, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%r14d, %edi
	callq	close
	jmp	.LBB36_41
.LBB36_69:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.130, %esi
	jmp	.LBB36_4
.LBB36_70:
	movl	$1, %edi
	callq	sleep
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.132, %esi
	jmp	.LBB36_4
.LBB36_71:
	movl	$.L.str.4, %edi
	movl	$.L.str.3, %esi
	movl	$118, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end36:
	.size	syncWithMaster, .Lfunc_end36-syncWithMaster
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI36_0:
	.quad	.LBB36_9
	.quad	.LBB36_12
	.quad	.LBB36_29
	.quad	.LBB36_10
	.quad	.LBB36_34
	.quad	.LBB36_16
.LJTI36_1:
	.quad	.LBB36_26
	.quad	.LBB36_49
	.quad	.LBB36_22
	.quad	.LBB36_44
	.quad	.LBB36_47
	.quad	.LBB36_52
                                        # -- End function
	.text
	.globl	connectWithMaster       # -- Begin function connectWithMaster
	.p2align	4, 0x90
	.type	connectWithMaster,@function
connectWithMaster:                      # @connectWithMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	server+2464(%rip), %rsi
	movl	server+2472(%rip), %edx
	cmpl	$0, server+352(%rip)
	movl	$0, %ecx
	je	.LBB37_2
# %bb.1:
	movq	server+224(%rip), %rcx
.LBB37_2:
	xorl	%edi, %edi
	callq	anetTcpNonBlockBestEffortBindConnect
	cmpl	$-1, %eax
	je	.LBB37_5
# %bb.3:
	movl	%eax, %ebx
	movq	server+72(%rip), %rdi
	xorl	%r14d, %r14d
	movl	$syncWithMaster, %ecx
	movl	%eax, %esi
	movl	$3, %edx
	xorl	%r8d, %r8d
	callq	aeCreateFileEvent
	cmpl	$-1, %eax
	je	.LBB37_6
# %bb.4:
	movq	server+2872(%rip), %rax
	movq	%rax, server+2544(%rip)
	movl	%ebx, server+2528(%rip)
	movl	$2, server+2500(%rip)
	jmp	.LBB37_8
.LBB37_5:
	callq	__errno
	movl	(%rax), %edi
	callq	strerror
	movl	$.L.str.135, %esi
	movl	$3, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB37_7
.LBB37_6:
	movl	%ebx, %edi
	callq	close
	movl	$.L.str.136, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB37_7:
	movl	$-1, %r14d
.LBB37_8:
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end37:
	.size	connectWithMaster, .Lfunc_end37-connectWithMaster
                                        # -- End function
	.globl	undoConnectWithMaster   # -- Begin function undoConnectWithMaster
	.p2align	4, 0x90
	.type	undoConnectWithMaster,@function
undoConnectWithMaster:                  # @undoConnectWithMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end38:
	.size	undoConnectWithMaster, .Lfunc_end38-undoConnectWithMaster
                                        # -- End function
	.globl	replicationAbortSyncTransfer # -- Begin function replicationAbortSyncTransfer
	.p2align	4, 0x90
	.type	replicationAbortSyncTransfer,@function
replicationAbortSyncTransfer:           # @replicationAbortSyncTransfer
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpl	$14, server+2500(%rip)
	jne	.LBB39_1
# %bb.2:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
	movl	server+2532(%rip), %edi
	callq	close
	movq	server+2536(%rip), %rdi
	callq	unlink
	movq	server+2536(%rip), %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.LBB39_1:
	movl	$.L.str.137, %edi
	movl	$.L.str.3, %esi
	movl	$1951, %edx             # imm = 0x79F
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end39:
	.size	replicationAbortSyncTransfer, .Lfunc_end39-replicationAbortSyncTransfer
                                        # -- End function
	.globl	replicationSetMaster    # -- Begin function replicationSetMaster
	.p2align	4, 0x90
	.type	replicationSetMaster,@function
replicationSetMaster:                   # @replicationSetMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%esi, %r15d
	movq	%rdi, %rbx
	movq	server+2464(%rip), %r14
	movq	%r14, %rdi
	callq	sdsfree
	movq	%rbx, %rdi
	callq	sdsnew
	movq	%rax, server+2464(%rip)
	movl	%r15d, server+2472(%rip)
	movq	server+2480(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB40_2
# %bb.1:
	callq	freeClient
.LBB40_2:
	callq	disconnectAllBlockedClients
	callq	disconnectSlaves
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB40_6
# %bb.3:
	cmpl	$14, %eax
	jne	.LBB40_5
# %bb.4:
	callq	replicationAbortSyncTransfer
	jmp	.LBB40_7
.LBB40_5:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB40_8
.LBB40_6:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB40_7:
	movl	$1, server+2500(%rip)
.LBB40_8:
	testq	%r14, %r14
	jne	.LBB40_10
# %bb.9:
	callq	replicationCacheMasterUsingMyself
.LBB40_10:
	movl	$1, server+2500(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end40:
	.size	replicationSetMaster, .Lfunc_end40-replicationSetMaster
                                        # -- End function
	.globl	replicationCacheMasterUsingMyself # -- Begin function replicationCacheMasterUsingMyself
	.p2align	4, 0x90
	.type	replicationCacheMasterUsingMyself,@function
replicationCacheMasterUsingMyself:      # @replicationCacheMasterUsingMyself
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	server+2352(%rip), %rax
	movq	%rax, server+2648(%rip)
	movl	$-1, %edi
	callq	createClient
	movq	%rax, server+2480(%rip)
	orb	$2, 160(%rax)
	movl	$1, 164(%rax)
	movq	server+2648(%rip), %rcx
	movq	%rcx, 216(%rax)
	movq	%rcx, 208(%rax)
	leaq	248(%rax), %rdi
	movl	$server+2600, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2480(%rip), %rdi
	cmpq	$-1, 216(%rdi)
	jne	.LBB41_2
# %bb.1:
	orb	$1, 162(%rdi)
.LBB41_2:
	addq	$248, %rdi
	movl	$server+2268, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2480(%rip), %rdi
	callq	unlinkClient
	movq	server+2480(%rip), %rax
	movq	%rax, server+2488(%rip)
	movq	$0, server+2480(%rip)
	movl	$.L.str.158, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	popq	%rbp
	jmp	serverLog               # TAILCALL
.Lfunc_end41:
	.size	replicationCacheMasterUsingMyself, .Lfunc_end41-replicationCacheMasterUsingMyself
                                        # -- End function
	.globl	replicationUnsetMaster  # -- Begin function replicationUnsetMaster
	.p2align	4, 0x90
	.type	replicationUnsetMaster,@function
replicationUnsetMaster:                 # @replicationUnsetMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+2464(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB42_12
# %bb.1:
	callq	sdsfree
	movq	$0, server+2464(%rip)
	movl	$server+2309, %edi
	movl	$server+2268, %esi
	movl	$41, %edx
	callq	memcpy
	movq	server+2352(%rip), %rax
	addq	$1, %rax
	movq	%rax, server+2360(%rip)
	movl	$server+2268, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+2308(%rip)
	movq	server+2360(%rip), %rcx
	movl	$.L.str.68, %esi
	movl	$server+2309, %edx
	movl	$server+2268, %r8d
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2480(%rip), %rdi
	testq	%rdi, %rdi
	je	.LBB42_3
# %bb.2:
	callq	freeClient
.LBB42_3:
	cmpq	$0, server+2488(%rip)
	je	.LBB42_5
# %bb.4:
	movl	$.L.str.159, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2488(%rip), %rdi
	andl	$-3, 160(%rdi)
	callq	freeClient
	movq	$0, server+2488(%rip)
.LBB42_5:
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB42_9
# %bb.6:
	cmpl	$14, %eax
	jne	.LBB42_8
# %bb.7:
	callq	replicationAbortSyncTransfer
	jmp	.LBB42_10
.LBB42_8:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB42_11
.LBB42_9:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB42_10:
	movl	$1, server+2500(%rip)
.LBB42_11:
	callq	disconnectSlaves
	movl	$0, server+2500(%rip)
	movl	$-1, server+2368(%rip)
	movq	server+2872(%rip), %rax
	movq	%rax, server+2424(%rip)
.LBB42_12:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end42:
	.size	replicationUnsetMaster, .Lfunc_end42-replicationUnsetMaster
                                        # -- End function
	.globl	replicationHandleMasterDisconnection # -- Begin function replicationHandleMasterDisconnection
	.p2align	4, 0x90
	.type	replicationHandleMasterDisconnection,@function
replicationHandleMasterDisconnection:   # @replicationHandleMasterDisconnection
# %bb.0:
	movq	$0, server+2480(%rip)
	movl	$1, server+2500(%rip)
	movq	server+2872(%rip), %rax
	movq	%rax, server+2568(%rip)
	retq
.Lfunc_end43:
	.size	replicationHandleMasterDisconnection, .Lfunc_end43-replicationHandleMasterDisconnection
                                        # -- End function
	.globl	replicaofCommand        # -- Begin function replicaofCommand
	.p2align	4, 0x90
	.type	replicaofCommand,@function
replicaofCommand:                       # @replicaofCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	cmpl	$0, server+2924(%rip)
	je	.LBB44_1
# %bb.15:
	movl	$.L.str.138, %esi
	movq	%r15, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyError           # TAILCALL
.LBB44_1:
	movq	72(%r15), %rbx
	movq	8(%rbx), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.139, %esi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_7
# %bb.2:
	movq	16(%rbx), %rax
	movq	8(%rax), %rdi
	movl	$.L.str.140, %esi
	callq	strcasecmp
	testl	%eax, %eax
	je	.LBB44_3
.LBB44_7:
	testb	$1, 160(%r15)
	jne	.LBB44_8
# %bb.9:
	movq	16(%rbx), %rsi
	leaq	-32(%rbp), %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB44_14
# %bb.10:
	movq	server+2464(%rip), %rdi
	movq	72(%r15), %rax
	movq	8(%rax), %rax
	movq	8(%rax), %r14
	testq	%rdi, %rdi
	je	.LBB44_16
# %bb.11:
	movq	%r14, %rsi
	callq	strcasecmp
	testl	%eax, %eax
	jne	.LBB44_16
# %bb.12:
	movslq	server+2472(%rip), %rax
	cmpq	%rax, -32(%rbp)
	jne	.LBB44_16
# %bb.13:
	movl	$.L.str.143, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	$.L.str.144, %edi
	callq	sdsnew
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	addReplySds
	jmp	.LBB44_14
.LBB44_8:
	movl	$.L.str.142, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB44_14
.LBB44_16:
	movl	-32(%rbp), %esi
	movq	%r14, %rdi
	callq	replicationSetMaster
	callq	sdsempty
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	catClientInfoString
	movq	%rax, %r14
	movq	server+2464(%rip), %rdx
	movl	server+2472(%rip), %ecx
	movl	$.L.str.145, %esi
	movl	$2, %edi
	movq	%rax, %r8
	xorl	%eax, %eax
	callq	serverLog
	jmp	.LBB44_5
.LBB44_3:
	cmpq	$0, server+2464(%rip)
	je	.LBB44_6
# %bb.4:
	callq	replicationUnsetMaster
	callq	sdsempty
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	catClientInfoString
	movq	%rax, %r14
	movl	$.L.str.141, %esi
	movl	$2, %edi
	movq	%rax, %rdx
	xorl	%eax, %eax
	callq	serverLog
.LBB44_5:
	movq	%r14, %rdi
	callq	sdsfree
.LBB44_6:
	movq	shared+8(%rip), %rsi
	movq	%r15, %rdi
	callq	addReply
.LBB44_14:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end44:
	.size	replicaofCommand, .Lfunc_end44-replicaofCommand
                                        # -- End function
	.globl	roleCommand             # -- Begin function roleCommand
	.p2align	4, 0x90
	.type	roleCommand,@function
roleCommand:                            # @roleCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r13
	cmpq	$0, server+2464(%rip)
	je	.LBB45_1
# %bb.10:
	movl	$5, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.147, %esi
	movl	$5, %edx
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movq	server+2464(%rip), %rsi
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movslq	server+2472(%rip), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movl	server+2500(%rip), %eax
	leal	-3(%rax), %ecx
	movl	$.L.str.148, %esi
	cmpl	$11, %ecx
	jb	.LBB45_18
# %bb.11:
	cmpl	$15, %eax
	ja	.LBB45_17
# %bb.12:
	movl	$.L.str.149, %esi
	movl	%eax, %eax
	jmpq	*.LJTI45_0(,%rax,8)
.LBB45_13:
	movl	$.L.str.150, %esi
	jmp	.LBB45_18
.LBB45_1:
	movl	$3, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.146, %esi
	movl	$6, %edx
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movq	server+2352(%rip), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	server+536(%rip), %rdi
	leaq	-64(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%r14d, %r14d
	testq	%rax, %rax
	je	.LBB45_9
# %bb.2:
	leaq	-64(%rbp), %r12
	jmp	.LBB45_3
	.p2align	4, 0x90
.LBB45_8:                               #   in Loop: Header=BB45_3 Depth=1
	movq	%r12, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB45_9
.LBB45_3:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %r15
	cmpb	$0, 296(%r15)
	je	.LBB45_5
# %bb.4:                                #   in Loop: Header=BB45_3 Depth=1
	leaq	296(%r15), %rbx
	jmp	.LBB45_6
	.p2align	4, 0x90
.LBB45_5:                               #   in Loop: Header=BB45_3 Depth=1
	movl	8(%r15), %edi
	movl	$46, %edx
	leaq	-112(%rbp), %rbx
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	anetPeerToString
	cmpl	$-1, %eax
	je	.LBB45_8
.LBB45_6:                               #   in Loop: Header=BB45_3 Depth=1
	cmpl	$9, 168(%r15)
	jne	.LBB45_8
# %bb.7:                                #   in Loop: Header=BB45_3 Depth=1
	movl	$3, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	addReplyBulkCString
	movslq	292(%r15), %rsi
	movq	%r13, %rdi
	callq	addReplyBulkLongLong
	movq	224(%r15), %rsi
	movq	%r13, %rdi
	callq	addReplyBulkLongLong
	addl	$1, %r14d
	jmp	.LBB45_8
.LBB45_9:
	movslq	%r14d, %rdx
	movq	%r13, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	setDeferredMultiBulkLength
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB45_14:
	movl	$.L.str.151, %esi
	jmp	.LBB45_18
.LBB45_17:
	movl	$.L.str.154, %esi
	jmp	.LBB45_18
.LBB45_15:
	movl	$.L.str.152, %esi
	jmp	.LBB45_18
.LBB45_16:
	movl	$.L.str.153, %esi
.LBB45_18:
	movq	%r13, %rdi
	callq	addReplyBulkCString
	movq	server+2480(%rip), %rax
	testq	%rax, %rax
	je	.LBB45_19
# %bb.20:
	movq	216(%rax), %rsi
	jmp	.LBB45_21
.LBB45_19:
	movq	$-1, %rsi
.LBB45_21:
	movq	%r13, %rdi
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	addReplyLongLong        # TAILCALL
.Lfunc_end45:
	.size	roleCommand, .Lfunc_end45-roleCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI45_0:
	.quad	.LBB45_18
	.quad	.LBB45_13
	.quad	.LBB45_14
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_17
	.quad	.LBB45_15
	.quad	.LBB45_16
                                        # -- End function
	.text
	.globl	replicationCacheMaster  # -- Begin function replicationCacheMaster
	.p2align	4, 0x90
	.type	replicationCacheMaster,@function
replicationCacheMaster:                 # @replicationCacheMaster
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpq	$0, server+2480(%rip)
	je	.LBB46_7
# %bb.1:
	cmpq	$0, server+2488(%rip)
	jne	.LBB46_7
# %bb.2:
	movq	%rdi, %rbx
	movl	$.L.str.157, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	unlinkClient
	movq	server+2480(%rip), %rax
	movq	32(%rax), %rdi
	callq	sdsclear
	movq	server+2480(%rip), %rax
	movq	48(%rax), %rdi
	callq	sdsclear
	movq	server+2480(%rip), %rax
	movq	216(%rax), %rcx
	movq	%rcx, 208(%rax)
	testb	$8, 160(%rbx)
	je	.LBB46_4
# %bb.3:
	movq	%rbx, %rdi
	callq	discardTransaction
.LBB46_4:
	movq	112(%rbx), %rdi
	callq	listEmpty
	xorps	%xmm0, %xmm0
	movups	%xmm0, 120(%rbx)
	movl	$0, 528(%rbx)
	movq	%rbx, %rdi
	callq	resetClient
	movq	server+2480(%rip), %rax
	movq	%rax, server+2488(%rip)
	movq	512(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB46_6
# %bb.5:
	callq	sdsfree
	movq	$0, 512(%rbx)
.LBB46_6:
	movq	$0, server+2480(%rip)
	movl	$1, server+2500(%rip)
	movq	server+2872(%rip), %rax
	movq	%rax, server+2568(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB46_7:
	movl	$.L.str.156, %edi
	movl	$.L.str.3, %esi
	movl	$2192, %edx             # imm = 0x890
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end46:
	.size	replicationCacheMaster, .Lfunc_end46-replicationCacheMaster
                                        # -- End function
	.globl	replicationScriptCacheInit # -- Begin function replicationScriptCacheInit
	.p2align	4, 0x90
	.type	replicationScriptCacheInit,@function
replicationScriptCacheInit:             # @replicationScriptCacheInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$10000, server+2680(%rip) # imm = 0x2710
	movl	$replScriptCacheDictType, %edi
	xorl	%esi, %esi
	callq	dictCreate
	movq	%rax, server+2664(%rip)
	callq	listCreate
	movq	%rax, server+2672(%rip)
	popq	%rbp
	retq
.Lfunc_end47:
	.size	replicationScriptCacheInit, .Lfunc_end47-replicationScriptCacheInit
                                        # -- End function
	.globl	replicationScriptCacheAdd # -- Begin function replicationScriptCacheAdd
	.p2align	4, 0x90
	.type	replicationScriptCacheAdd,@function
replicationScriptCacheAdd:              # @replicationScriptCacheAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	callq	sdsdup
	movq	%rax, %r15
	movq	server+2672(%rip), %rax
	movl	server+2680(%rip), %ecx
	cmpq	%rcx, 40(%rax)
	jne	.LBB48_5
# %bb.1:
	movq	8(%rax), %r14
	movq	16(%r14), %rsi
	movq	server+2664(%rip), %rdi
	callq	dictDelete
	testl	%eax, %eax
	jne	.LBB48_2
# %bb.4:
	movq	server+2672(%rip), %rdi
	movq	%r14, %rsi
	callq	listDelNode
.LBB48_5:
	movq	server+2664(%rip), %rdi
	movq	%r15, %rsi
	xorl	%edx, %edx
	callq	dictAdd
	movl	%eax, %ebx
	movq	server+2672(%rip), %rdi
	movq	%r15, %rsi
	callq	listAddNodeHead
	testl	%ebx, %ebx
	jne	.LBB48_6
# %bb.7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB48_6:
	movl	$.L.str.162, %edi
	movl	$.L.str.3, %esi
	movl	$2398, %edx             # imm = 0x95E
	jmp	.LBB48_3
.LBB48_2:
	movl	$.L.str.162, %edi
	movl	$.L.str.3, %esi
	movl	$2391, %edx             # imm = 0x957
.LBB48_3:
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end48:
	.size	replicationScriptCacheAdd, .Lfunc_end48-replicationScriptCacheAdd
                                        # -- End function
	.globl	replicationScriptCacheExists # -- Begin function replicationScriptCacheExists
	.p2align	4, 0x90
	.type	replicationScriptCacheExists,@function
replicationScriptCacheExists:           # @replicationScriptCacheExists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	server+2664(%rip), %rdi
	callq	dictFind
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end49:
	.size	replicationScriptCacheExists, .Lfunc_end49-replicationScriptCacheExists
                                        # -- End function
	.globl	replicationRequestAckFromSlaves # -- Begin function replicationRequestAckFromSlaves
	.p2align	4, 0x90
	.type	replicationRequestAckFromSlaves,@function
replicationRequestAckFromSlaves:        # @replicationRequestAckFromSlaves
# %bb.0:
	movl	$1, server+2696(%rip)
	retq
.Lfunc_end50:
	.size	replicationRequestAckFromSlaves, .Lfunc_end50-replicationRequestAckFromSlaves
                                        # -- End function
	.globl	replicationCountAcksByOffset # -- Begin function replicationCountAcksByOffset
	.p2align	4, 0x90
	.type	replicationCountAcksByOffset,@function
replicationCountAcksByOffset:           # @replicationCountAcksByOffset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movq	server+536(%rip), %rdi
	leaq	-40(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB51_5
# %bb.1:                                # %.preheader
	leaq	-40(%rbp), %r15
	jmp	.LBB51_2
	.p2align	4, 0x90
.LBB51_4:                               #   in Loop: Header=BB51_2 Depth=1
	movq	%r15, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB51_5
.LBB51_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB51_4
# %bb.3:                                #   in Loop: Header=BB51_2 Depth=1
	xorl	%ecx, %ecx
	cmpq	%r14, 224(%rax)
	setge	%cl
	addl	%ecx, %ebx
	jmp	.LBB51_4
.LBB51_5:
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end51:
	.size	replicationCountAcksByOffset, .Lfunc_end51-replicationCountAcksByOffset
                                        # -- End function
	.globl	waitCommand             # -- Begin function waitCommand
	.p2align	4, 0x90
	.type	waitCommand,@function
waitCommand:                            # @waitCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %rbx
	cmpq	$0, server+2464(%rip)
	je	.LBB52_2
# %bb.1:
	movl	$.L.str.163, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB52_13
.LBB52_2:
	movq	480(%rbx), %r15
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	leaq	-48(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB52_13
# %bb.3:
	movq	72(%rbx), %rax
	movq	16(%rax), %rsi
	leaq	-56(%rbp), %rdx
	movq	%rbx, %rdi
	movl	$1, %ecx
	callq	getTimeoutFromObjectOrReply
	testl	%eax, %eax
	jne	.LBB52_13
# %bb.4:
	movq	480(%rbx), %r12
	movq	server+536(%rip), %rdi
	leaq	-72(%rbp), %r14
	movq	%r14, %rsi
	callq	listRewind
	movq	%r14, %rdi
	callq	listNext
	xorl	%r13d, %r13d
	testq	%rax, %rax
	je	.LBB52_9
# %bb.5:                                # %.preheader
	leaq	-72(%rbp), %r14
	jmp	.LBB52_6
	.p2align	4, 0x90
.LBB52_8:                               #   in Loop: Header=BB52_6 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB52_9
.LBB52_6:                               # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB52_8
# %bb.7:                                #   in Loop: Header=BB52_6 Depth=1
	xorl	%ecx, %ecx
	cmpq	%r12, 224(%rax)
	setge	%cl
	addl	%ecx, %r13d
	jmp	.LBB52_8
.LBB52_9:
	movslq	%r13d, %rsi
	movq	-48(%rbp), %rax
	cmpq	%rsi, %rax
	jle	.LBB52_11
# %bb.10:
	testb	$8, 160(%rbx)
	jne	.LBB52_11
# %bb.12:
	movq	-56(%rbp), %rcx
	movq	%rcx, 392(%rbx)
	movq	%r15, 464(%rbx)
	movl	%eax, 460(%rbx)
	movq	server+2688(%rip), %rdi
	movq	%rbx, %rsi
	callq	listAddNodeTail
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	blockClient
	movl	$1, server+2696(%rip)
	jmp	.LBB52_13
.LBB52_11:
	movq	%rbx, %rdi
	callq	addReplyLongLong
.LBB52_13:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end52:
	.size	waitCommand, .Lfunc_end52-waitCommand
                                        # -- End function
	.globl	unblockClientWaitingReplicas # -- Begin function unblockClientWaitingReplicas
	.p2align	4, 0x90
	.type	unblockClientWaitingReplicas,@function
unblockClientWaitingReplicas:           # @unblockClientWaitingReplicas
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	movq	server+2688(%rip), %rdi
	callq	listSearchKey
	testq	%rax, %rax
	je	.LBB53_1
# %bb.2:
	movq	server+2688(%rip), %rdi
	movq	%rax, %rsi
	popq	%rbp
	jmp	listDelNode             # TAILCALL
.LBB53_1:
	movl	$.L.str.164, %edi
	movl	$.L.str.3, %esi
	movl	$2502, %edx             # imm = 0x9C6
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end53:
	.size	unblockClientWaitingReplicas, .Lfunc_end53-unblockClientWaitingReplicas
                                        # -- End function
	.globl	processClientsWaitingReplicas # -- Begin function processClientsWaitingReplicas
	.p2align	4, 0x90
	.type	processClientsWaitingReplicas,@function
processClientsWaitingReplicas:          # @processClientsWaitingReplicas
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	server+2688(%rip), %rdi
	leaq	-64(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB54_14
# %bb.1:
	xorl	%r12d, %r12d
	leaq	-80(%rbp), %rbx
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB54_2
	.p2align	4, 0x90
.LBB54_5:                               #   in Loop: Header=BB54_2 Depth=1
	movq	%r15, %rdi
	callq	unblockClient
	movslq	-44(%rbp), %rsi         # 4-byte Folded Reload
	movq	%r15, %rdi
	callq	addReplyLongLong
.LBB54_13:                              #   in Loop: Header=BB54_2 Depth=1
	leaq	-64(%rbp), %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB54_14
.LBB54_2:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB54_7 Depth 2
	movq	16(%rax), %r15
	movq	464(%r15), %r14
	testq	%r12, %r12
	je	.LBB54_6
# %bb.3:                                #   in Loop: Header=BB54_2 Depth=1
	cmpq	%r14, %r12
	jle	.LBB54_6
# %bb.4:                                #   in Loop: Header=BB54_2 Depth=1
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	460(%r15), %eax
	jg	.LBB54_5
.LBB54_6:                               #   in Loop: Header=BB54_2 Depth=1
	movq	server+536(%rip), %rdi
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%r13d, %r13d
	jmp	.LBB54_7
	.p2align	4, 0x90
.LBB54_10:                              #   in Loop: Header=BB54_7 Depth=2
	movq	%rbx, %rdi
	callq	listNext
.LBB54_7:                               #   Parent Loop BB54_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	testq	%rax, %rax
	je	.LBB54_11
# %bb.8:                                #   in Loop: Header=BB54_7 Depth=2
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB54_10
# %bb.9:                                #   in Loop: Header=BB54_7 Depth=2
	xorl	%ecx, %ecx
	cmpq	%r14, 224(%rax)
	setge	%cl
	addl	%ecx, %r13d
	jmp	.LBB54_10
	.p2align	4, 0x90
.LBB54_11:                              #   in Loop: Header=BB54_2 Depth=1
	cmpl	460(%r15), %r13d
	jl	.LBB54_13
# %bb.12:                               #   in Loop: Header=BB54_2 Depth=1
	movq	464(%r15), %r12
	movq	%r15, %rdi
	callq	unblockClient
	movslq	%r13d, %rsi
	movq	%r15, %rdi
	callq	addReplyLongLong
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	jmp	.LBB54_13
.LBB54_14:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end54:
	.size	processClientsWaitingReplicas, .Lfunc_end54-processClientsWaitingReplicas
                                        # -- End function
	.globl	replicationGetSlaveOffset # -- Begin function replicationGetSlaveOffset
	.p2align	4, 0x90
	.type	replicationGetSlaveOffset,@function
replicationGetSlaveOffset:              # @replicationGetSlaveOffset
# %bb.0:
	cmpq	$0, server+2464(%rip)
	je	.LBB55_4
# %bb.1:
	movq	server+2480(%rip), %rax
	testq	%rax, %rax
	jne	.LBB55_3
# %bb.2:
	movq	server+2488(%rip), %rax
	testq	%rax, %rax
	je	.LBB55_4
.LBB55_3:
	movq	216(%rax), %rcx
	xorl	%eax, %eax
	testq	%rcx, %rcx
	cmovnsq	%rcx, %rax
	retq
.LBB55_4:
	xorl	%eax, %eax
	retq
.Lfunc_end55:
	.size	replicationGetSlaveOffset, .Lfunc_end55-replicationGetSlaveOffset
                                        # -- End function
	.globl	replicationCron         # -- Begin function replicationCron
	.p2align	4, 0x90
	.type	replicationCron,@function
replicationCron:                        # @replicationCron
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$48, %rsp
	cmpq	$0, server+2464(%rip)
	je	.LBB56_10
# %bb.1:
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB56_3
# %bb.2:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB56_10
.LBB56_3:
	xorl	%edi, %edi
	callq	time
	subq	server+2544(%rip), %rax
	movslq	server+2476(%rip), %rcx
	cmpq	%rcx, %rax
	jle	.LBB56_10
# %bb.4:
	movl	$.L.str.165, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB56_8
# %bb.5:
	cmpl	$14, %eax
	jne	.LBB56_7
# %bb.6:
	callq	replicationAbortSyncTransfer
	jmp	.LBB56_9
.LBB56_7:
	addl	$-3, %eax
	cmpl	$10, %eax
	ja	.LBB56_10
.LBB56_8:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB56_9:
	movl	$1, server+2500(%rip)
.LBB56_10:
	cmpq	$0, server+2464(%rip)
	movl	server+2500(%rip), %eax
	je	.LBB56_14
# %bb.11:
	cmpl	$14, %eax
	jne	.LBB56_14
# %bb.12:
	xorl	%edi, %edi
	callq	time
	subq	server+2544(%rip), %rax
	movslq	server+2476(%rip), %rcx
	cmpq	%rcx, %rax
	jle	.LBB56_13
# %bb.20:
	movl	$.L.str.166, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movl	server+2500(%rip), %eax
	cmpl	$2, %eax
	je	.LBB56_24
# %bb.21:
	cmpl	$14, %eax
	jne	.LBB56_23
# %bb.22:
	callq	replicationAbortSyncTransfer
	jmp	.LBB56_25
.LBB56_13:
	movl	server+2500(%rip), %eax
.LBB56_14:
	cmpq	$0, server+2464(%rip)
	je	.LBB56_19
# %bb.15:
	cmpl	$15, %eax
	jne	.LBB56_19
# %bb.16:
	xorl	%edi, %edi
	callq	time
	movq	server+2480(%rip), %rcx
	subq	144(%rcx), %rax
	movslq	server+2476(%rip), %rcx
	cmpq	%rcx, %rax
	jle	.LBB56_18
# %bb.17:
	movl	$.L.str.167, %esi
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+2480(%rip), %rdi
	callq	freeClient
.LBB56_18:
	movl	server+2500(%rip), %eax
.LBB56_19:
	cmpl	$1, %eax
	je	.LBB56_26
	jmp	.LBB56_28
.LBB56_23:
	leal	-3(%rax), %ecx
	cmpl	$10, %ecx
	ja	.LBB56_14
.LBB56_24:
	movl	server+2528(%rip), %ebx
	movq	server+72(%rip), %rdi
	movl	%ebx, %esi
	movl	$3, %edx
	callq	aeDeleteFileEvent
	movl	%ebx, %edi
	callq	close
	movl	$-1, server+2528(%rip)
.LBB56_25:
	movl	$1, server+2500(%rip)
.LBB56_26:
	movq	server+2464(%rip), %rdx
	movl	server+2472(%rip), %ecx
	movl	$.L.str.168, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	callq	connectWithMaster
	testl	%eax, %eax
	jne	.LBB56_28
# %bb.27:
	movl	$.L.str.169, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
.LBB56_28:
	cmpq	$0, server+2464(%rip)
	je	.LBB56_32
# %bb.29:
	movq	server+2480(%rip), %rbx
	testq	%rbx, %rbx
	je	.LBB56_32
# %bb.30:
	movl	160(%rbx), %eax
	testl	$65536, %eax            # imm = 0x10000
	jne	.LBB56_32
# %bb.31:
	orl	$8192, %eax             # imm = 0x2000
	movl	%eax, 160(%rbx)
	movl	$3, %esi
	movq	%rbx, %rdi
	callq	addReplyMultiBulkLen
	movl	$.L.str.121, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movl	$.L.str.155, %esi
	movq	%rbx, %rdi
	callq	addReplyBulkCString
	movq	216(%rbx), %rsi
	movq	%rbx, %rdi
	callq	addReplyBulkLongLong
	andb	$-33, 161(%rbx)
.LBB56_32:
	movq	replicationCron.replication_cron_loops(%rip), %rax
	movslq	server+2372(%rip), %rcx
	cqto
	idivq	%rcx
	testq	%rdx, %rdx
	jne	.LBB56_38
# %bb.33:
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB56_38
# %bb.34:
	cmpl	$0, server+2924(%rip)
	je	.LBB56_37
# %bb.35:
	movq	server+2944(%rip), %rax
	cmpq	$0, 524376(%rax)
	je	.LBB56_37
# %bb.36:
	callq	clientsArePaused
	testl	%eax, %eax
	jne	.LBB56_38
.LBB56_37:
	movl	$.L.str.114, %edi
	movl	$4, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%rax, -56(%rbp)
	movq	server+536(%rip), %rdi
	movl	server+2368(%rip), %esi
	leaq	-56(%rbp), %rdx
	movl	$1, %ecx
	callq	replicationFeedSlaves
	movq	%rbx, %rdi
	callq	decrRefCount
.LBB56_38:
	movq	server+536(%rip), %rdi
	leaq	-72(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_45
# %bb.39:                               # %.preheader4
	leaq	-72(%rbp), %rbx
	jmp	.LBB56_40
	.p2align	4, 0x90
.LBB56_43:                              #   in Loop: Header=BB56_40 Depth=1
	movl	8(%rax), %edi
	movl	$.L.str.69, %esi
	movl	$1, %edx
	callq	write
.LBB56_44:                              #   in Loop: Header=BB56_40 Depth=1
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_45
.LBB56_40:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	movl	168(%rax), %ecx
	cmpl	$6, %ecx
	je	.LBB56_43
# %bb.41:                               #   in Loop: Header=BB56_40 Depth=1
	cmpl	$7, %ecx
	jne	.LBB56_44
# %bb.42:                               #   in Loop: Header=BB56_40 Depth=1
	cmpl	$2, server+2172(%rip)
	jne	.LBB56_43
	jmp	.LBB56_44
.LBB56_45:
	movq	server+536(%rip), %rdi
	cmpq	$0, 40(%rdi)
	je	.LBB56_46
# %bb.47:
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_54
# %bb.48:                               # %.preheader2
	leaq	-48(%rbp), %r14
	jmp	.LBB56_49
	.p2align	4, 0x90
.LBB56_53:                              #   in Loop: Header=BB56_49 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_54
.LBB56_49:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rbx
	cmpl	$9, 168(%rbx)
	jne	.LBB56_53
# %bb.50:                               #   in Loop: Header=BB56_49 Depth=1
	testb	$1, 162(%rbx)
	jne	.LBB56_53
# %bb.51:                               #   in Loop: Header=BB56_49 Depth=1
	movq	server+2872(%rip), %rax
	subq	232(%rbx), %rax
	movslq	server+2476(%rip), %rcx
	cmpq	%rcx, %rax
	jle	.LBB56_53
# %bb.52:                               #   in Loop: Header=BB56_49 Depth=1
	movq	%rbx, %rdi
	callq	replicationGetSlaveName
	movl	$.L.str.170, %esi
	movl	$replicationGetSlaveName.buf, %edx
	movl	$3, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	%rbx, %rdi
	callq	freeClient
	jmp	.LBB56_53
.LBB56_54:
	movq	server+536(%rip), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB56_56
	jmp	.LBB56_63
.LBB56_46:
	xorl	%eax, %eax
	testq	%rax, %rax
	jne	.LBB56_63
.LBB56_56:
	movq	server+2416(%rip), %rcx
	testq	%rcx, %rcx
	je	.LBB56_63
# %bb.57:
	cmpq	$0, server+2376(%rip)
	je	.LBB56_63
# %bb.58:
	cmpq	$0, server+2464(%rip)
	jne	.LBB56_63
# %bb.59:
	movq	server+2872(%rip), %rax
	subq	server+2424(%rip), %rax
	cmpq	%rcx, %rax
	jle	.LBB56_60
# %bb.61:
	movl	$server+2268, %edi
	movl	$40, %esi
	callq	getRandomHexChars
	movb	$0, server+2308(%rip)
	movl	$server+2309, %edi
	movl	$41, %edx
	movl	$48, %esi
	callq	memset
	movb	$0, server+2349(%rip)
	movq	$-1, server+2360(%rip)
	movq	server+536(%rip), %rax
	cmpq	$0, 40(%rax)
	jne	.LBB56_86
# %bb.62:
	movq	server+2376(%rip), %rdi
	callq	zfree
	movq	$0, server+2376(%rip)
	movl	server+2416(%rip), %edx
	movl	$.L.str.171, %esi
	movl	$2, %edi
	xorl	%eax, %eax
	callq	serverLog
	movq	server+536(%rip), %rax
	movq	40(%rax), %rax
.LBB56_63:
	testq	%rax, %rax
	jne	.LBB56_67
.LBB56_64:
	cmpl	$0, server+1880(%rip)
	jne	.LBB56_67
# %bb.65:
	movq	server+2672(%rip), %rax
	cmpq	$0, 40(%rax)
	je	.LBB56_67
# %bb.66:
	movq	server+2664(%rip), %rdi
	xorl	%esi, %esi
	callq	dictEmpty
	movq	server+2672(%rip), %rdi
	callq	listRelease
	callq	listCreate
	movq	%rax, server+2672(%rip)
.LBB56_67:
	movl	server+1940(%rip), %eax
	andl	server+2096(%rip), %eax
	cmpl	$-1, %eax
	je	.LBB56_68
.LBB56_77:
	cmpl	$0, server+2432(%rip)
	je	.LBB56_85
# %bb.78:
	cmpl	$0, server+2436(%rip)
	je	.LBB56_85
# %bb.79:
	movq	server+536(%rip), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	xorl	%ebx, %ebx
	testq	%rax, %rax
	je	.LBB56_84
# %bb.80:                               # %.preheader
	leaq	-48(%rbp), %r14
	jmp	.LBB56_81
	.p2align	4, 0x90
.LBB56_83:                              #   in Loop: Header=BB56_81 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_84
.LBB56_81:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$9, 168(%rax)
	jne	.LBB56_83
# %bb.82:                               #   in Loop: Header=BB56_81 Depth=1
	movq	server+2872(%rip), %rcx
	subq	232(%rax), %rcx
	movslq	server+2436(%rip), %rax
	xorl	%edx, %edx
	cmpq	%rax, %rcx
	setle	%dl
	addl	%edx, %ebx
	jmp	.LBB56_83
.LBB56_84:
	movl	%ebx, server+2440(%rip)
.LBB56_85:
	addq	$1, replicationCron.replication_cron_loops(%rip)
	addq	$48, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB56_68:
	movq	server+536(%rip), %rdi
	leaq	-48(%rbp), %rbx
	movq	%rbx, %rsi
	callq	listRewind
	movq	%rbx, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_77
# %bb.69:                               # %.preheader1
	xorl	%ebx, %ebx
	movl	$-1, %r15d
	leaq	-48(%rbp), %r14
	xorl	%r12d, %r12d
	jmp	.LBB56_70
	.p2align	4, 0x90
.LBB56_72:                              #   in Loop: Header=BB56_70 Depth=1
	movq	%r14, %rdi
	callq	listNext
	testq	%rax, %rax
	je	.LBB56_73
.LBB56_70:                              # =>This Inner Loop Header: Depth=1
	movq	16(%rax), %rax
	cmpl	$6, 168(%rax)
	jne	.LBB56_72
# %bb.71:                               #   in Loop: Header=BB56_70 Depth=1
	movq	server+2872(%rip), %rcx
	subq	144(%rax), %rcx
	cmpq	%rbx, %rcx
	cmovgeq	%rcx, %rbx
	addl	$1, %r12d
	andl	344(%rax), %r15d
	jmp	.LBB56_72
.LBB56_60:
	xorl	%eax, %eax
	testq	%rax, %rax
	je	.LBB56_64
	jmp	.LBB56_67
.LBB56_73:
	testl	%r12d, %r12d
	je	.LBB56_77
# %bb.74:
	cmpl	$0, server+2444(%rip)
	je	.LBB56_76
# %bb.75:
	movslq	server+2448(%rip), %rax
	cmpq	%rax, %rbx
	jle	.LBB56_77
.LBB56_76:
	movl	%r15d, %edi
	callq	startBgsaveForReplication
	jmp	.LBB56_77
.LBB56_86:
	movl	$.L.str.4, %edi
	movl	$.L.str.3, %esi
	movl	$118, %edx
	callq	_serverAssert
	movl	$1, %edi
	callq	_exit
.Lfunc_end56:
	.size	replicationCron, .Lfunc_end56-replicationCron
                                        # -- End function
	.type	replicationGetSlaveName.buf,@object # @replicationGetSlaveName.buf
	.local	replicationGetSlaveName.buf
	.comm	replicationGetSlaveName.buf,78,16
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s:<unknown-replica-port>"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"client id #%llu"
	.size	.L.str.1, 16

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"server.repl_backlog == NULL"
	.size	.L.str.2, 28

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/replication.c"
	.size	.L.str.3, 79

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"listLength(server.slaves) == 0"
	.size	.L.str.4, 31

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"!(listLength(slaves) != 0 && server.repl_backlog == NULL)"
	.size	.L.str.5, 58

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"*2\r\n$6\r\nSELECT\r\n$%d\r\n%s\r\n"
	.size	.L.str.6, 26

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"+"
	.size	.L.str.7, 2

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%ld.%06ld "
	.size	.L.str.8, 11

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"[%d lua] "
	.size	.L.str.9, 10

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"[%d unix:%s] "
	.size	.L.str.10, 14

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"[%d %s] "
	.size	.L.str.11, 9

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"\"%ld\""
	.size	.L.str.12, 6

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	" "
	.size	.L.str.13, 2

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"\r\n"
	.size	.L.str.14, 3

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"[PSYNC] Replica request offset: %lld"
	.size	.L.str.15, 37

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"[PSYNC] Backlog history len is zero"
	.size	.L.str.16, 36

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"[PSYNC] Backlog size: %lld"
	.size	.L.str.17, 27

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"[PSYNC] First byte: %lld"
	.size	.L.str.18, 25

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"[PSYNC] History len: %lld"
	.size	.L.str.19, 26

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"[PSYNC] Current index: %lld"
	.size	.L.str.20, 28

	.type	.L.str.21,@object       # @.str.21
.L.str.21:
	.asciz	"[PSYNC] Skipping: %lld"
	.size	.L.str.21, 23

	.type	.L.str.22,@object       # @.str.22
.L.str.22:
	.asciz	"[PSYNC] Index of first byte: %lld"
	.size	.L.str.22, 34

	.type	.L.str.23,@object       # @.str.23
.L.str.23:
	.asciz	"[PSYNC] Reply total length: %lld"
	.size	.L.str.23, 33

	.type	.L.str.24,@object       # @.str.24
.L.str.24:
	.asciz	"[PSYNC] addReply() length: %lld"
	.size	.L.str.24, 32

	.type	.L.str.25,@object       # @.str.25
.L.str.25:
	.asciz	"+FULLRESYNC %s %lld\r\n"
	.size	.L.str.25, 22

	.type	.L.str.26,@object       # @.str.26
.L.str.26:
	.asciz	"Partial resynchronization not accepted: Replication ID mismatch (Replica asked for '%s', my replication IDs are '%s' and '%s')"
	.size	.L.str.26, 127

	.type	.L.str.27,@object       # @.str.27
.L.str.27:
	.asciz	"Partial resynchronization not accepted: Requested offset for second ID was %lld, but I can reply up to %lld"
	.size	.L.str.27, 108

	.type	.L.str.28,@object       # @.str.28
.L.str.28:
	.asciz	"Full resync requested by replica %s"
	.size	.L.str.28, 36

	.type	.L.str.29,@object       # @.str.29
.L.str.29:
	.asciz	"Unable to partial resync with replica %s for lack of backlog (Replica request was: %lld)."
	.size	.L.str.29, 90

	.type	.L.str.30,@object       # @.str.30
.L.str.30:
	.asciz	"Warning: replica %s tried to PSYNC with an offset that is greater than the master replication offset."
	.size	.L.str.30, 102

	.type	.L.str.31,@object       # @.str.31
.L.str.31:
	.asciz	"+CONTINUE %s\r\n"
	.size	.L.str.31, 15

	.type	.L.str.32,@object       # @.str.32
.L.str.32:
	.asciz	"+CONTINUE\r\n"
	.size	.L.str.32, 12

	.type	.L.str.33,@object       # @.str.33
.L.str.33:
	.asciz	"Partial resynchronization request from %s accepted. Sending %lld bytes of backlog starting from offset %lld."
	.size	.L.str.33, 109

	.type	.L.str.34,@object       # @.str.34
.L.str.34:
	.asciz	"Starting BGSAVE for SYNC with target: %s"
	.size	.L.str.34, 41

	.type	.L.str.35,@object       # @.str.35
.L.str.35:
	.asciz	"replicas sockets"
	.size	.L.str.35, 17

	.type	.L.str.36,@object       # @.str.36
.L.str.36:
	.asciz	"disk"
	.size	.L.str.36, 5

	.type	.L.str.37,@object       # @.str.37
.L.str.37:
	.asciz	"BGSAVE for replication: replication information not available, can't generate the RDB file right now. Try later."
	.size	.L.str.37, 113

	.type	.L.str.38,@object       # @.str.38
.L.str.38:
	.asciz	"BGSAVE for replication failed"
	.size	.L.str.38, 30

	.type	.L.str.39,@object       # @.str.39
.L.str.39:
	.asciz	"BGSAVE failed, replication can't continue"
	.size	.L.str.39, 42

	.type	.L.str.40,@object       # @.str.40
.L.str.40:
	.asciz	"-NOMASTERLINK Can't SYNC while not connected with my master\r\n"
	.size	.L.str.40, 62

	.type	.L.str.41,@object       # @.str.41
.L.str.41:
	.asciz	"SYNC and PSYNC are invalid with pending output"
	.size	.L.str.41, 47

	.type	.L.str.42,@object       # @.str.42
.L.str.42:
	.asciz	"Replica %s asks for synchronization"
	.size	.L.str.42, 36

	.type	.L.str.43,@object       # @.str.43
.L.str.43:
	.asciz	"psync"
	.size	.L.str.43, 6

	.type	.L.str.44,@object       # @.str.44
.L.str.44:
	.asciz	"Waiting for end of BGSAVE for SYNC"
	.size	.L.str.44, 35

	.type	.L.str.45,@object       # @.str.45
.L.str.45:
	.asciz	"Can't attach the replica to the current BGSAVE. Waiting for next BGSAVE for SYNC"
	.size	.L.str.45, 81

	.type	.L.str.46,@object       # @.str.46
.L.str.46:
	.asciz	"Current BGSAVE has socket target. Waiting for next BGSAVE for SYNC"
	.size	.L.str.46, 67

	.type	.L.str.47,@object       # @.str.47
.L.str.47:
	.asciz	"Delay next BGSAVE for diskless SYNC"
	.size	.L.str.47, 36

	.type	.L.str.48,@object       # @.str.48
.L.str.48:
	.asciz	"No BGSAVE in progress, but an AOF rewrite is active. BGSAVE for replication delayed"
	.size	.L.str.48, 84

	.type	.L.str.49,@object       # @.str.49
.L.str.49:
	.asciz	"listening-port"
	.size	.L.str.49, 15

	.type	.L.str.50,@object       # @.str.50
.L.str.50:
	.asciz	"ip-address"
	.size	.L.str.50, 11

	.type	.L.str.51,@object       # @.str.51
.L.str.51:
	.asciz	"REPLCONF ip-address provided by replica instance is too long: %zd bytes"
	.size	.L.str.51, 72

	.type	.L.str.52,@object       # @.str.52
.L.str.52:
	.asciz	"capa"
	.size	.L.str.52, 5

	.type	.L.str.53,@object       # @.str.53
.L.str.53:
	.asciz	"eof"
	.size	.L.str.53, 4

	.type	.L.str.54,@object       # @.str.54
.L.str.54:
	.asciz	"psync2"
	.size	.L.str.54, 7

	.type	.L.str.55,@object       # @.str.55
.L.str.55:
	.asciz	"ack"
	.size	.L.str.55, 4

	.type	.L.str.56,@object       # @.str.56
.L.str.56:
	.asciz	"getack"
	.size	.L.str.56, 7

	.type	.L.str.57,@object       # @.str.57
.L.str.57:
	.asciz	"Unrecognized REPLCONF option: %s"
	.size	.L.str.57, 33

	.type	.L.str.58,@object       # @.str.58
.L.str.58:
	.asciz	"Unable to register writable event for replica bulk transfer: %s"
	.size	.L.str.58, 64

	.type	.L.str.59,@object       # @.str.59
.L.str.59:
	.asciz	"Synchronization with replica %s succeeded"
	.size	.L.str.59, 42

	.type	.L.str.60,@object       # @.str.60
.L.str.60:
	.asciz	"Write error sending RDB preamble to replica: %s"
	.size	.L.str.60, 48

	.type	.L.str.61,@object       # @.str.61
.L.str.61:
	.asciz	"Read error sending DB to replica: %s"
	.size	.L.str.61, 37

	.type	.L.str.62,@object       # @.str.62
.L.str.62:
	.asciz	"premature EOF"
	.size	.L.str.62, 14

	.type	.L.str.63,@object       # @.str.63
.L.str.63:
	.asciz	"Write error sending DB to replica: %s"
	.size	.L.str.63, 38

	.type	.L.str.64,@object       # @.str.64
.L.str.64:
	.asciz	"Streamed RDB transfer with replica %s succeeded (socket). Waiting for REPLCONF ACK from slave to enable streaming"
	.size	.L.str.64, 114

	.type	.L.str.65,@object       # @.str.65
.L.str.65:
	.asciz	"SYNC failed. BGSAVE child returned an error"
	.size	.L.str.65, 44

	.type	.L.str.66,@object       # @.str.66
.L.str.66:
	.asciz	"SYNC failed. Can't open/stat DB after BGSAVE: %s"
	.size	.L.str.66, 49

	.type	.L.str.67,@object       # @.str.67
.L.str.67:
	.asciz	"$%lld\r\n"
	.size	.L.str.67, 8

	.type	.L.str.68,@object       # @.str.68
.L.str.68:
	.asciz	"Setting secondary replication ID to %s, valid up to offset: %lld. New replication ID is %s"
	.size	.L.str.68, 91

	.type	replicationSendNewlineToMaster.newline_sent,@object # @replicationSendNewlineToMaster.newline_sent
	.local	replicationSendNewlineToMaster.newline_sent
	.comm	replicationSendNewlineToMaster.newline_sent,8,8
	.type	.L.str.69,@object       # @.str.69
.L.str.69:
	.asciz	"\n"
	.size	.L.str.69, 2

	.type	.L.str.70,@object       # @.str.70
.L.str.70:
	.asciz	"Failed enabling the AOF after successful master synchronization! Trying it again in one second."
	.size	.L.str.70, 96

	.type	.L.str.71,@object       # @.str.71
.L.str.71:
	.asciz	"FATAL: this replica instance finished the synchronization with its master, but the AOF can't be turned on. Exiting now."
	.size	.L.str.71, 120

	.type	readSyncBulkPayload.eofmark,@object # @readSyncBulkPayload.eofmark
	.local	readSyncBulkPayload.eofmark
	.comm	readSyncBulkPayload.eofmark,40,16
	.type	readSyncBulkPayload.lastbytes,@object # @readSyncBulkPayload.lastbytes
	.local	readSyncBulkPayload.lastbytes
	.comm	readSyncBulkPayload.lastbytes,40,16
	.type	readSyncBulkPayload.usemark,@object # @readSyncBulkPayload.usemark
	.local	readSyncBulkPayload.usemark
	.comm	readSyncBulkPayload.usemark,1,4
	.type	.L.str.72,@object       # @.str.72
.L.str.72:
	.asciz	"I/O error reading bulk count from MASTER: %s"
	.size	.L.str.72, 45

	.type	.L.str.73,@object       # @.str.73
.L.str.73:
	.asciz	"MASTER aborted replication with an error: %s"
	.size	.L.str.73, 45

	.type	.L.str.74,@object       # @.str.74
.L.str.74:
	.asciz	"Bad protocol from MASTER, the first byte is not '$' (we received '%s'), are you sure the host and port are right?"
	.size	.L.str.74, 114

	.type	.L.str.75,@object       # @.str.75
.L.str.75:
	.asciz	"EOF:"
	.size	.L.str.75, 5

	.type	.L.str.76,@object       # @.str.76
.L.str.76:
	.asciz	"MASTER <-> REPLICA sync: receiving streamed RDB from master"
	.size	.L.str.76, 60

	.type	.L.str.77,@object       # @.str.77
.L.str.77:
	.asciz	"MASTER <-> REPLICA sync: receiving %lld bytes from master"
	.size	.L.str.77, 58

	.type	.L.str.78,@object       # @.str.78
.L.str.78:
	.asciz	"I/O error trying to sync with MASTER: %s"
	.size	.L.str.78, 41

	.type	.L.str.79,@object       # @.str.79
.L.str.79:
	.asciz	"connection lost"
	.size	.L.str.79, 16

	.type	.L.str.80,@object       # @.str.80
.L.str.80:
	.asciz	"Write error or short write writing to the DB dump file needed for MASTER <-> REPLICA synchronization: %s"
	.size	.L.str.80, 105

	.type	.L.str.81,@object       # @.str.81
.L.str.81:
	.asciz	"short write"
	.size	.L.str.81, 12

	.type	.L.str.82,@object       # @.str.82
.L.str.82:
	.asciz	"Error truncating the RDB file received from the master for SYNC: %s"
	.size	.L.str.82, 68

	.type	.L.str.83,@object       # @.str.83
.L.str.83:
	.asciz	"Replica is about to load the RDB file received from the master, but there is a pending RDB child running. Killing process %ld and removing its temp file to avoid any race"
	.size	.L.str.83, 171

	.type	.L.str.84,@object       # @.str.84
.L.str.84:
	.asciz	"Failed trying to rename the temp DB into dump.rdb in MASTER <-> REPLICA synchronization: %s"
	.size	.L.str.84, 92

	.type	.L.str.85,@object       # @.str.85
.L.str.85:
	.asciz	"MASTER <-> REPLICA sync: Flushing old data"
	.size	.L.str.85, 43

	.type	.L.str.86,@object       # @.str.86
.L.str.86:
	.asciz	"MASTER <-> REPLICA sync: Loading DB in memory"
	.size	.L.str.86, 46

	.type	.LreadSyncBulkPayload.rsi,@object # @readSyncBulkPayload.rsi
	.section	.rodata,"a",@progbits
	.p2align	3
.LreadSyncBulkPayload.rsi:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.asciz	"000000000000000000000000000000\000\000\000\000\000\000\000\000\000\000"
	.zero	7
	.quad	-1                      # 0xffffffffffffffff
	.size	.LreadSyncBulkPayload.rsi, 64

	.type	.L.str.87,@object       # @.str.87
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.87:
	.asciz	"Failed trying to load the MASTER synchronization DB from disk"
	.size	.L.str.87, 62

	.type	.L.str.88,@object       # @.str.88
.L.str.88:
	.asciz	"MASTER <-> REPLICA sync: Finished with success"
	.size	.L.str.88, 47

	.type	.L.str.89,@object       # @.str.89
.L.str.89:
	.asciz	"$%zu\r\n%s\r\n"
	.size	.L.str.89, 11

	.type	.L.str.90,@object       # @.str.90
.L.str.90:
	.asciz	"*%zu\r\n"
	.size	.L.str.90, 7

	.type	.L.str.91,@object       # @.str.91
.L.str.91:
	.asciz	"-Writing to master: %s"
	.size	.L.str.91, 23

	.type	.L.str.92,@object       # @.str.92
.L.str.92:
	.asciz	"-Reading from master: %s"
	.size	.L.str.92, 25

	.type	.L.str.93,@object       # @.str.93
.L.str.93:
	.asciz	"%lld"
	.size	.L.str.93, 5

	.type	.L.str.94,@object       # @.str.94
.L.str.94:
	.asciz	"Trying a partial resynchronization (request %s:%s)."
	.size	.L.str.94, 52

	.type	.L.str.95,@object       # @.str.95
.L.str.95:
	.asciz	"Partial resynchronization not possible (no cached master)"
	.size	.L.str.95, 58

	.type	.L.str.96,@object       # @.str.96
.L.str.96:
	.asciz	"?"
	.size	.L.str.96, 2

	.type	.L.str.97,@object       # @.str.97
.L.str.97:
	.asciz	"-1"
	.size	.L.str.97, 3

	.type	.L.str.98,@object       # @.str.98
.L.str.98:
	.asciz	"PSYNC"
	.size	.L.str.98, 6

	.type	.L.str.99,@object       # @.str.99
.L.str.99:
	.asciz	"Unable to send PSYNC to master: %s"
	.size	.L.str.99, 35

	.type	.L.str.100,@object      # @.str.100
.L.str.100:
	.asciz	"+FULLRESYNC"
	.size	.L.str.100, 12

	.type	.L.str.101,@object      # @.str.101
.L.str.101:
	.asciz	"Master replied with wrong +FULLRESYNC syntax."
	.size	.L.str.101, 46

	.type	.L.str.102,@object      # @.str.102
.L.str.102:
	.asciz	"Full resync from master: %s:%lld"
	.size	.L.str.102, 33

	.type	.L.str.103,@object      # @.str.103
.L.str.103:
	.asciz	"+CONTINUE"
	.size	.L.str.103, 10

	.type	.L.str.104,@object      # @.str.104
.L.str.104:
	.asciz	"Successful partial resynchronization with master."
	.size	.L.str.104, 50

	.type	.L.str.105,@object      # @.str.105
.L.str.105:
	.asciz	"Master replication ID changed to %s"
	.size	.L.str.105, 36

	.type	.L.str.106,@object      # @.str.106
.L.str.106:
	.asciz	"-NOMASTERLINK"
	.size	.L.str.106, 14

	.type	.L.str.107,@object      # @.str.107
.L.str.107:
	.asciz	"-LOADING"
	.size	.L.str.107, 9

	.type	.L.str.108,@object      # @.str.108
.L.str.108:
	.asciz	"Master is currently unable to PSYNC but should be in the future: %s"
	.size	.L.str.108, 68

	.type	.L.str.109,@object      # @.str.109
.L.str.109:
	.asciz	"-ERR"
	.size	.L.str.109, 5

	.type	.L.str.110,@object      # @.str.110
.L.str.110:
	.asciz	"Unexpected reply to PSYNC from master: %s"
	.size	.L.str.110, 42

	.type	.L.str.111,@object      # @.str.111
.L.str.111:
	.asciz	"Master does not support PSYNC or is in error state (reply: %s)"
	.size	.L.str.111, 63

	.type	.L.str.112,@object      # @.str.112
.L.str.112:
	.asciz	"Error condition on socket for SYNC: %s"
	.size	.L.str.112, 39

	.type	.L.str.113,@object      # @.str.113
.L.str.113:
	.asciz	"Non blocking connect for SYNC fired the event."
	.size	.L.str.113, 47

	.type	.L.str.114,@object      # @.str.114
.L.str.114:
	.asciz	"PING"
	.size	.L.str.114, 5

	.type	.L.str.115,@object      # @.str.115
.L.str.115:
	.asciz	"-NOAUTH"
	.size	.L.str.115, 8

	.type	.L.str.116,@object      # @.str.116
.L.str.116:
	.asciz	"-ERR operation not permitted"
	.size	.L.str.116, 29

	.type	.L.str.117,@object      # @.str.117
.L.str.117:
	.asciz	"Error reply to PING from master: '%s'"
	.size	.L.str.117, 38

	.type	.L.str.118,@object      # @.str.118
.L.str.118:
	.asciz	"Master replied to PING, replication can continue..."
	.size	.L.str.118, 52

	.type	.L.str.119,@object      # @.str.119
.L.str.119:
	.asciz	"AUTH"
	.size	.L.str.119, 5

	.type	.L.str.120,@object      # @.str.120
.L.str.120:
	.asciz	"Unable to AUTH to MASTER: %s"
	.size	.L.str.120, 29

	.type	.L.str.121,@object      # @.str.121
.L.str.121:
	.asciz	"REPLCONF"
	.size	.L.str.121, 9

	.type	.L.str.122,@object      # @.str.122
.L.str.122:
	.asciz	"(Non critical) Master does not understand REPLCONF listening-port: %s"
	.size	.L.str.122, 70

	.type	.L.str.123,@object      # @.str.123
.L.str.123:
	.asciz	"(Non critical) Master does not understand REPLCONF ip-address: %s"
	.size	.L.str.123, 66

	.type	.L.str.124,@object      # @.str.124
.L.str.124:
	.asciz	"(Non critical) Master does not understand REPLCONF capa: %s"
	.size	.L.str.124, 60

	.type	.L.str.125,@object      # @.str.125
.L.str.125:
	.asciz	"Write error sending the PSYNC command."
	.size	.L.str.125, 39

	.type	.L.str.126,@object      # @.str.126
.L.str.126:
	.asciz	"syncWithMaster(): state machine error, state should be RECEIVE_PSYNC but is %d"
	.size	.L.str.126, 79

	.type	.L.str.127,@object      # @.str.127
.L.str.127:
	.asciz	"MASTER <-> REPLICA sync: Master accepted a Partial Resynchronization."
	.size	.L.str.127, 70

	.type	.L.str.128,@object      # @.str.128
.L.str.128:
	.asciz	"Retrying with SYNC..."
	.size	.L.str.128, 22

	.type	.L.str.129,@object      # @.str.129
.L.str.129:
	.asciz	"SYNC\r\n"
	.size	.L.str.129, 7

	.type	.L.str.130,@object      # @.str.130
.L.str.130:
	.asciz	"I/O error writing to MASTER: %s"
	.size	.L.str.130, 32

	.type	.L.str.131,@object      # @.str.131
.L.str.131:
	.asciz	"temp-%d.%ld.rdb"
	.size	.L.str.131, 16

	.type	.L.str.132,@object      # @.str.132
.L.str.132:
	.asciz	"Opening the temp file needed for MASTER <-> REPLICA synchronization: %s"
	.size	.L.str.132, 72

	.type	.L.str.133,@object      # @.str.133
.L.str.133:
	.asciz	"Can't create readable event for SYNC: %s (fd=%d)"
	.size	.L.str.133, 49

	.type	.L.str.134,@object      # @.str.134
.L.str.134:
	.asciz	"Sending command to master in replication handshake: %s"
	.size	.L.str.134, 55

	.type	.L.str.135,@object      # @.str.135
.L.str.135:
	.asciz	"Unable to connect to MASTER: %s"
	.size	.L.str.135, 32

	.type	.L.str.136,@object      # @.str.136
.L.str.136:
	.asciz	"Can't create readable event for SYNC"
	.size	.L.str.136, 37

	.type	.L.str.137,@object      # @.str.137
.L.str.137:
	.asciz	"server.repl_state == REPL_STATE_TRANSFER"
	.size	.L.str.137, 41

	.type	.L.str.138,@object      # @.str.138
.L.str.138:
	.asciz	"REPLICAOF not allowed in cluster mode."
	.size	.L.str.138, 39

	.type	.L.str.139,@object      # @.str.139
.L.str.139:
	.asciz	"no"
	.size	.L.str.139, 3

	.type	.L.str.140,@object      # @.str.140
.L.str.140:
	.asciz	"one"
	.size	.L.str.140, 4

	.type	.L.str.141,@object      # @.str.141
.L.str.141:
	.asciz	"MASTER MODE enabled (user request from '%s')"
	.size	.L.str.141, 45

	.type	.L.str.142,@object      # @.str.142
.L.str.142:
	.asciz	"Command is not valid when client is a replica."
	.size	.L.str.142, 47

	.type	.L.str.143,@object      # @.str.143
.L.str.143:
	.asciz	"REPLICAOF would result into synchronization with the master we are already connected with. No operation performed."
	.size	.L.str.143, 115

	.type	.L.str.144,@object      # @.str.144
.L.str.144:
	.asciz	"+OK Already connected to specified master\r\n"
	.size	.L.str.144, 44

	.type	.L.str.145,@object      # @.str.145
.L.str.145:
	.asciz	"REPLICAOF %s:%d enabled (user request from '%s')"
	.size	.L.str.145, 49

	.type	.L.str.146,@object      # @.str.146
.L.str.146:
	.asciz	"master"
	.size	.L.str.146, 7

	.type	.L.str.147,@object      # @.str.147
.L.str.147:
	.asciz	"slave"
	.size	.L.str.147, 6

	.type	.L.str.148,@object      # @.str.148
.L.str.148:
	.asciz	"handshake"
	.size	.L.str.148, 10

	.type	.L.str.149,@object      # @.str.149
.L.str.149:
	.asciz	"none"
	.size	.L.str.149, 5

	.type	.L.str.150,@object      # @.str.150
.L.str.150:
	.asciz	"connect"
	.size	.L.str.150, 8

	.type	.L.str.151,@object      # @.str.151
.L.str.151:
	.asciz	"connecting"
	.size	.L.str.151, 11

	.type	.L.str.152,@object      # @.str.152
.L.str.152:
	.asciz	"sync"
	.size	.L.str.152, 5

	.type	.L.str.153,@object      # @.str.153
.L.str.153:
	.asciz	"connected"
	.size	.L.str.153, 10

	.type	.L.str.154,@object      # @.str.154
.L.str.154:
	.asciz	"unknown"
	.size	.L.str.154, 8

	.type	.L.str.155,@object      # @.str.155
.L.str.155:
	.asciz	"ACK"
	.size	.L.str.155, 4

	.type	.L.str.156,@object      # @.str.156
.L.str.156:
	.asciz	"server.master != NULL && server.cached_master == NULL"
	.size	.L.str.156, 54

	.type	.L.str.157,@object      # @.str.157
.L.str.157:
	.asciz	"Caching the disconnected master state."
	.size	.L.str.157, 39

	.type	.L.str.158,@object      # @.str.158
.L.str.158:
	.asciz	"Before turning into a replica, using my master parameters to synthesize a cached master: I may be able to synchronize with the new master with just a partial transfer."
	.size	.L.str.158, 168

	.type	.L.str.159,@object      # @.str.159
.L.str.159:
	.asciz	"Discarding previously cached master state."
	.size	.L.str.159, 43

	.type	.L.str.160,@object      # @.str.160
.L.str.160:
	.asciz	"Error resurrecting the cached master, impossible to add the readable handler: %s"
	.size	.L.str.160, 81

	.type	.L.str.161,@object      # @.str.161
.L.str.161:
	.asciz	"Error resurrecting the cached master, impossible to add the writable handler: %s"
	.size	.L.str.161, 81

	.type	.L.str.162,@object      # @.str.162
.L.str.162:
	.asciz	"retval == DICT_OK"
	.size	.L.str.162, 18

	.type	.L.str.163,@object      # @.str.163
.L.str.163:
	.asciz	"WAIT cannot be used with replica instances. Please also note that since Redis 4.0 if a replica is configured to be writable (which is not the default) writes to replicas are just local and are not propagated."
	.size	.L.str.163, 209

	.type	.L.str.164,@object      # @.str.164
.L.str.164:
	.asciz	"ln != NULL"
	.size	.L.str.164, 11

	.type	replicationCron.replication_cron_loops,@object # @replicationCron.replication_cron_loops
	.local	replicationCron.replication_cron_loops
	.comm	replicationCron.replication_cron_loops,8,8
	.type	.L.str.165,@object      # @.str.165
.L.str.165:
	.asciz	"Timeout connecting to the MASTER..."
	.size	.L.str.165, 36

	.type	.L.str.166,@object      # @.str.166
.L.str.166:
	.asciz	"Timeout receiving bulk data from MASTER... If the problem persists try to set the 'repl-timeout' parameter in redis.conf to a larger value."
	.size	.L.str.166, 140

	.type	.L.str.167,@object      # @.str.167
.L.str.167:
	.asciz	"MASTER timeout: no data nor PING received..."
	.size	.L.str.167, 45

	.type	.L.str.168,@object      # @.str.168
.L.str.168:
	.asciz	"Connecting to MASTER %s:%d"
	.size	.L.str.168, 27

	.type	.L.str.169,@object      # @.str.169
.L.str.169:
	.asciz	"MASTER <-> REPLICA sync started"
	.size	.L.str.169, 32

	.type	.L.str.170,@object      # @.str.170
.L.str.170:
	.asciz	"Disconnecting timedout replica: %s"
	.size	.L.str.170, 35

	.type	.L.str.171,@object      # @.str.171
.L.str.171:
	.asciz	"Replication backlog freed after %d seconds without connected replicas."
	.size	.L.str.171, 71

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
