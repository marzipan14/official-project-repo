	.text
	.file	"slowlog.c"
	.globl	slowlogCreateEntry      # -- Begin function slowlogCreateEntry
	.p2align	4, 0x90
	.type	slowlogCreateEntry,@function
slowlogCreateEntry:                     # @slowlogCreateEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	$56, %edi
	callq	zmalloc
	cmpl	$32, %r12d
	movl	$32, %r14d
	cmovlel	%r12d, %r14d
	movq	%rax, %rbx
	movl	%r14d, 8(%rax)
	movslq	%r14d, %r15
	leaq	(,%r15,8), %rdi
	callq	zmalloc
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jle	.LBB0_30
# %bb.1:
	movl	%r12d, %eax
	subl	%r14d, %eax
	addl	$-1, %r14d
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rax
	movq	%rdi, (%rax,%r13,8)
.LBB0_29:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %r13
	jge	.LBB0_30
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %r12d
	jl	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	callq	sdsempty
	movl	$.L.str, %esi
	movq	%rax, %rdi
	movl	-44(%rbp), %edx         # 4-byte Reload
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	(%rbx), %rcx
	movq	%rax, (%rcx,%r14,8)
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax,%r13,8), %rdi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$15, %al
	je	.LBB0_6
.LBB0_25:                               #   in Loop: Header=BB0_2 Depth=1
	cmpl	$2147483647, 4(%rdi)    # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_26
# %bb.27:                               #   in Loop: Header=BB0_2 Depth=1
	callq	dupStringObject
.LBB0_28:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rcx
	movq	%rax, (%rcx,%r13,8)
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	shrl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$15, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB0_25
.LBB0_8:                                #   in Loop: Header=BB0_2 Depth=1
	movq	8(%rdi), %rax
	movzbl	-1(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	andb	$7, %cl
	addb	$-1, %cl
	cmpb	$3, %cl
	ja	.LBB0_24
# %bb.9:                                #   in Loop: Header=BB0_2 Depth=1
	movzbl	%cl, %ecx
	jmpq	*.LJTI0_0(,%rcx,8)
.LBB0_13:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	-3(%rax), %ecx
	jmp	.LBB0_14
.LBB0_10:                               #   in Loop: Header=BB0_2 Depth=1
	movzwl	-5(%rax), %ecx
	jmp	.LBB0_14
.LBB0_11:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-9(%rax), %ecx
	jmp	.LBB0_14
.LBB0_12:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-17(%rax), %rcx
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$129, %rcx
	jb	.LBB0_25
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$128, %esi
	movq	%rax, %rdi
	callq	sdsnewlen
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%r13,8), %rcx
	movq	8(%rcx), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB0_16
# %bb.17:                               #   in Loop: Header=BB0_2 Depth=1
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI0_1(,%rcx,8)
.LBB0_18:                               #   in Loop: Header=BB0_2 Depth=1
	shrq	$3, %rdx
	jmp	.LBB0_23
.LBB0_24:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_25
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	xorl	%edx, %edx
	jmp	.LBB0_23
.LBB0_19:                               #   in Loop: Header=BB0_2 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB0_23
.LBB0_20:                               #   in Loop: Header=BB0_2 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB0_23
.LBB0_21:                               #   in Loop: Header=BB0_2 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB0_23
.LBB0_22:                               #   in Loop: Header=BB0_2 Depth=1
	movq	-17(%rsi), %rdx
.LBB0_23:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-128, %rdx
	movl	$.L.str.1, %esi
	movq	%rax, %rdi
	xorl	%eax, %eax
	callq	sdscatprintf
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	jmp	.LBB0_28
.LBB0_30:
	xorl	%edi, %edi
	callq	time
	movq	%rax, 32(%rbx)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 24(%rbx)
	movq	server+1176(%rip), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, server+1176(%rip)
	movq	%rax, 16(%rbx)
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rdi
	callq	getClientPeerId
	movq	%rax, %rdi
	callq	sdsnew
	movq	%rax, 48(%rbx)
	movq	24(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_32
# %bb.31:
	movq	8(%rax), %rdi
	callq	sdsnew
	jmp	.LBB0_33
.LBB0_32:
	callq	sdsempty
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	slowlogCreateEntry, .Lfunc_end0-slowlogCreateEntry
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_13
	.quad	.LBB0_10
	.quad	.LBB0_11
	.quad	.LBB0_12
.LJTI0_1:
	.quad	.LBB0_18
	.quad	.LBB0_19
	.quad	.LBB0_20
	.quad	.LBB0_21
	.quad	.LBB0_22
                                        # -- End function
	.text
	.globl	slowlogFreeEntry        # -- Begin function slowlogFreeEntry
	.p2align	4, 0x90
	.type	slowlogFreeEntry,@function
slowlogFreeEntry:                       # @slowlogFreeEntry
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rdi)
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB1_3
# %bb.1:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdi,%rbx,8), %rdi
	callq	decrRefCount
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%r14), %rax
	movq	(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB1_2
.LBB1_3:
	callq	zfree
	movq	48(%r14), %rdi
	callq	sdsfree
	movq	40(%r14), %rdi
	callq	sdsfree
	movq	%r14, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	slowlogFreeEntry, .Lfunc_end1-slowlogFreeEntry
                                        # -- End function
	.globl	slowlogInit             # -- Begin function slowlogInit
	.p2align	4, 0x90
	.type	slowlogInit,@function
slowlogInit:                            # @slowlogInit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	listCreate
	movq	%rax, server+1168(%rip)
	movq	$0, server+1176(%rip)
	movq	$slowlogFreeEntry, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	slowlogInit, .Lfunc_end2-slowlogInit
                                        # -- End function
	.globl	slowlogPushEntryIfNeeded # -- Begin function slowlogPushEntryIfNeeded
	.p2align	4, 0x90
	.type	slowlogPushEntryIfNeeded,@function
slowlogPushEntryIfNeeded:               # @slowlogPushEntryIfNeeded
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	server+1184(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	js	.LBB3_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jg	.LBB3_4
# %bb.2:
	movq	server+1168(%rip), %rbx
	callq	slowlogCreateEntry
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	listAddNodeHead
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_4
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_4 Depth=1
	movq	8(%rdi), %rsi
	callq	listDelNode
.LBB3_4:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1168(%rip), %rdi
	movq	40(%rdi), %rax
	cmpq	server+1192(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB3_3
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	slowlogPushEntryIfNeeded, .Lfunc_end3-slowlogPushEntryIfNeeded
                                        # -- End function
	.globl	slowlogReset            # -- Begin function slowlogReset
	.p2align	4, 0x90
	.type	slowlogReset,@function
slowlogReset:                           # @slowlogReset
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	.p2align	4, 0x90
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	server+1168(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_3
# %bb.1:                                #   in Loop: Header=BB4_2 Depth=1
	movq	8(%rdi), %rsi
	callq	listDelNode
	jmp	.LBB4_2
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	slowlogReset, .Lfunc_end4-slowlogReset
                                        # -- End function
	.globl	slowlogCommand          # -- Begin function slowlogCommand
	.p2align	4, 0x90
	.type	slowlogCommand,@function
slowlogCommand:                         # @slowlogCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r13
	movl	64(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB5_10
# %bb.1:
	movq	72(%r13), %r15
	movq	8(%r15), %rax
	movq	8(%rax), %r14
	movl	$.L.str.2, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.7, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_7
# %bb.4:
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_9
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_12
	.p2align	4, 0x90
.LBB5_6:                                #   in Loop: Header=BB5_7 Depth=1
	movq	8(%rdi), %rsi
	callq	listDelNode
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:                                # =>This Inner Loop Header: Depth=1
	movq	server+1168(%rip), %rdi
	cmpq	$0, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_6
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	movq	shared+8(%rip), %rsi
	movq	%r13, %rdi
	callq	addReply
	jmp	.LBB5_40
.LBB5_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ebx
	jne	.LBB5_41
# %bb.11:
	movq	72(%r13), %r15
	movq	8(%r15), %rax
	movq	8(%rax), %r14
.LBB5_12:
	movl	$.L.str.9, %esi
	movq	%r14, %rdi
	callq	strcasecmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB5_13
.LBB5_41:
	movq	%r13, %rdi
	callq	addReplySubcommandSyntaxError
	jmp	.LBB5_40
.LBB5_2:
	movq	$0, -64(%rbp)
	movl	$.L.str.4, %eax
	movq	%rax, %xmm0
	movl	$.L.str.3, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -96(%rbp)
	movl	$.L.str.6, %eax
	movq	%rax, %xmm0
	movl	$.L.str.5, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqa	%xmm1, -80(%rbp)
	leaq	-96(%rbp), %rsi
	movq	%r13, %rdi
	callq	addReplyHelp
	jmp	.LBB5_40
.LBB5_13:
	movq	$10, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %ebx
	jne	.LBB5_15
# %bb.14:
	movq	16(%r15), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r13, %rdi
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB5_40
.LBB5_15:
	movq	server+1168(%rip), %rdi
	leaq	-96(%rbp), %rsi
	callq	listRewind
	movq	%r13, %rdi
	callq	addDeferredMultiBulkLength
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -56(%rbp)         # 8-byte Spill
	jae	.LBB5_17
# %bb.16:
	xorl	%r15d, %r15d
.LBB5_39:
	movq	%r13, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	setDeferredMultiBulkLength
	jmp	.LBB5_40
.LBB5_9:
	movq	server+1168(%rip), %rax
	movq	40(%rax), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
.LBB5_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_17:                               # %.preheader2
	xorl	%r15d, %r15d
	leaq	-96(%rbp), %r12
	jmp	.LBB5_18
.LBB5_37:                               #   in Loop: Header=BB5_18 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB5_38:                               #   in Loop: Header=BB5_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	subq	$1, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB5_39
.LBB5_18:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_21 Depth 2
	movq	%r12, %rdi
	callq	listNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_39
# %bb.19:                               #   in Loop: Header=BB5_18 Depth=1
	movq	16(%rax), %rbx
	movl	$6, %esi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movq	16(%rbx), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	32(%rbx), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movq	24(%rbx), %rsi
	movq	%r13, %rdi
	callq	addReplyLongLong
	movslq	8(%rbx), %rsi
	movq	%r13, %rdi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB5_22
# %bb.20:                               #   in Loop: Header=BB5_18 Depth=1
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB5_21:                               #   Parent Loop BB5_18 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	(%rax,%r14,8), %rsi
	movq	%r13, %rdi
	callq	addReplyBulk
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movslq	8(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jl	.LBB5_21
.LBB5_22:                               #   in Loop: Header=BB5_18 Depth=1
	movq	48(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB5_23
# %bb.24:                               #   in Loop: Header=BB5_18 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_25:                               #   in Loop: Header=BB5_18 Depth=1
	shrq	$3, %rdx
	jmp	.LBB5_30
.LBB5_23:                               #   in Loop: Header=BB5_18 Depth=1
	xorl	%edx, %edx
	jmp	.LBB5_30
.LBB5_26:                               #   in Loop: Header=BB5_18 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB5_30
.LBB5_27:                               #   in Loop: Header=BB5_18 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB5_30
.LBB5_28:                               #   in Loop: Header=BB5_18 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB5_30
.LBB5_29:                               #   in Loop: Header=BB5_18 Depth=1
	movq	-17(%rsi), %rdx
	.p2align	4, 0x90
.LBB5_30:                               #   in Loop: Header=BB5_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	callq	addReplyBulkCBuffer
	movq	40(%rbx), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB5_31
# %bb.32:                               #   in Loop: Header=BB5_18 Depth=1
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI5_1(,%rax,8)
.LBB5_33:                               #   in Loop: Header=BB5_18 Depth=1
	shrq	$3, %rdx
	jmp	.LBB5_38
.LBB5_31:                               #   in Loop: Header=BB5_18 Depth=1
	xorl	%edx, %edx
	jmp	.LBB5_38
.LBB5_34:                               #   in Loop: Header=BB5_18 Depth=1
	movzbl	-3(%rsi), %edx
	jmp	.LBB5_38
.LBB5_35:                               #   in Loop: Header=BB5_18 Depth=1
	movzwl	-5(%rsi), %edx
	jmp	.LBB5_38
.LBB5_36:                               #   in Loop: Header=BB5_18 Depth=1
	movl	-9(%rsi), %edx
	jmp	.LBB5_38
.Lfunc_end5:
	.size	slowlogCommand, .Lfunc_end5-slowlogCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_25
	.quad	.LBB5_26
	.quad	.LBB5_27
	.quad	.LBB5_28
	.quad	.LBB5_29
.LJTI5_1:
	.quad	.LBB5_33
	.quad	.LBB5_34
	.quad	.LBB5_35
	.quad	.LBB5_36
	.quad	.LBB5_37
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"... (%d more arguments)"
	.size	.L.str, 24

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"... (%lu more bytes)"
	.size	.L.str.1, 21

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"help"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GET [count] -- Return top entries from the slowlog (default: 10).    Entries are made of:"
	.size	.L.str.3, 90

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"    id, timestamp, time in microseconds, arguments array, client IP and port, client name"
	.size	.L.str.4, 90

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"LEN -- Return the length of the slowlog."
	.size	.L.str.5, 41

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"RESET -- Reset the slowlog."
	.size	.L.str.6, 28

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"reset"
	.size	.L.str.7, 6

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"len"
	.size	.L.str.8, 4

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"get"
	.size	.L.str.9, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
