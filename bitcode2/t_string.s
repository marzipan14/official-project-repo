	.text
	.file	"t_string.c"
	.globl	setGenericCommand       # -- Begin function setGenericCommand
	.p2align	4, 0x90
	.type	setGenericCommand,@function
setGenericCommand:                      # @setGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %rbx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %r14
	movl	%esi, %r13d
	movq	%rdi, %r15
	movq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB0_6
# %bb.1:
	movl	%r9d, %r12d
	leaq	-48(%rbp), %rdx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.2:
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	jne	.LBB0_6
# %bb.5:
	imulq	$1000, %rax, %rax       # imm = 0x3E8
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB0_8
# %bb.7:
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_10
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r13b
	je	.LBB0_13
# %bb.9:
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_10
.LBB0_13:
	movq	16(%rbp), %r13
	movq	16(%r15), %rdi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	setKey
	addq	$1, server+2080(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %r12
	testq	%rbx, %rbx
	je	.LBB0_15
# %bb.14:
	callq	mstime
	addq	-48(%rbp), %rax
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	movq	%rax, %rcx
	callq	setExpire
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.1, %esi
	movl	$8, %edi
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rax
	movl	40(%rax), %ecx
	movl	$.L.str.2, %esi
	movl	$4, %edi
	jmp	.LBB0_16
.LBB0_10:
	movq	24(%rbp), %rsi
	testq	%rsi, %rsi
	jne	.LBB0_12
# %bb.11:
	movq	shared+80(%rip), %rsi
.LBB0_12:
	movq	%r15, %rdi
	jmp	.LBB0_19
.LBB0_15:
	movl	40(%r12), %ecx
	movl	$.L.str.1, %esi
	movl	$8, %edi
.LBB0_16:
	movq	%r14, %rdx
	callq	notifyKeyspaceEvent
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	jne	.LBB0_18
# %bb.17:
	movq	shared+8(%rip), %r13
.LBB0_18:
	movq	%r15, %rdi
	movq	%r13, %rsi
.LBB0_19:
	callq	addReply
.LBB0_20:
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
.LBB0_3:
	movq	80(%r15), %rax
	movq	(%rax), %rdx
	movl	$.L.str, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	addReplyErrorFormat
	jmp	.LBB0_20
.Lfunc_end0:
	.size	setGenericCommand, .Lfunc_end0-setGenericCommand
                                        # -- End function
	.globl	setCommand              # -- Begin function setCommand
	.p2align	4, 0x90
	.type	setCommand,@function
setCommand:                             # @setCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%rdi), %r9d
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rdi), %r10
	cmpl	$4, %r9d
	jl	.LBB1_1
# %bb.2:
	leal	-1(%r9), %r8d
	xorl	%r12d, %r12d
	movl	$3, %esi
	xorl	%ebx, %ebx
	xorl	%r15d, %r15d
	jmp	.LBB1_3
.LBB1_1:
	xorl	%r15d, %r15d
	xorl	%ebx, %ebx
	xorl	%r12d, %r12d
.LBB1_40:
	movq	16(%r10), %rdi
	callq	tryObjectEncoding
	movq	72(%r14), %rcx
	movq	%rax, 16(%rcx)
	movq	72(%r14), %rax
	movq	8(%rax), %rdx
	movq	16(%rax), %rcx
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	%r14, %rdi
	movl	%ebx, %esi
	movq	%r12, %r8
	movl	%r15d, %r9d
	callq	setGenericCommand
	jmp	.LBB1_41
.LBB1_12:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$1, %ebx
	.p2align	4, 0x90
.LBB1_39:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %esi
	jge	.LBB1_40
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movslq	%esi, %rcx
	movq	(%r10,%rcx,8), %rax
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %ecx
	jne	.LBB1_5
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=1
	xorl	%edi, %edi
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_3 Depth=1
	movq	8(%r10,%rcx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=1
	movzbl	(%rdx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$110, %cl
	je	.LBB1_8
# %bb.7:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$78, %cl
	jne	.LBB1_14
.LBB1_8:                                #   in Loop: Header=BB1_3 Depth=1
	movzbl	1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_13
.LBB1_10:                               #   in Loop: Header=BB1_3 Depth=1
	cmpb	$0, 2(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %bl
	je	.LBB1_12
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_15:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %cl
	je	.LBB1_16
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_14:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %cl
	jne	.LBB1_15
.LBB1_16:                               #   in Loop: Header=BB1_3 Depth=1
	movzbl	1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_18
# %bb.17:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_21
.LBB1_18:                               #   in Loop: Header=BB1_3 Depth=1
	cmpb	$0, 2(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_21
# %bb.19:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	jne	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$2, %ebx
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$101, %cl
	je	.LBB1_23
# %bb.22:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$69, %cl
	jne	.LBB1_30
.LBB1_23:                               #   in Loop: Header=BB1_3 Depth=1
	movzbl	1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_29
.LBB1_25:                               #   in Loop: Header=BB1_3 Depth=1
	cmpb	$0, 2(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_26
.LBB1_29:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB1_31:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$80, %cl
	jne	.LBB1_42
.LBB1_32:                               #   in Loop: Header=BB1_3 Depth=1
	movzbl	1(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_34
# %bb.33:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_42
.LBB1_34:                               #   in Loop: Header=BB1_3 Depth=1
	cmpb	$0, 2(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_42
# %bb.35:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	jne	.LBB1_42
# %bb.36:                               #   in Loop: Header=BB1_3 Depth=1
	testq	%rdi, %rdi
	je	.LBB1_42
# %bb.37:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$8, %ebx
	addl	$1, %esi
	movl	$1, %r15d
.LBB1_38:                               #   in Loop: Header=BB1_3 Depth=1
	movq	%rdi, %r12
	jmp	.LBB1_39
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$112, %cl
	jne	.LBB1_31
	jmp	.LBB1_32
.LBB1_26:                               #   in Loop: Header=BB1_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	jne	.LBB1_29
# %bb.27:                               #   in Loop: Header=BB1_3 Depth=1
	testq	%rdi, %rdi
	je	.LBB1_29
# %bb.28:                               #   in Loop: Header=BB1_3 Depth=1
	orl	$4, %ebx
	addl	$1, %esi
	xorl	%r15d, %r15d
	jmp	.LBB1_38
.LBB1_42:
	movq	shared+128(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	setCommand, .Lfunc_end1-setCommand
                                        # -- End function
	.globl	setnxCommand            # -- Begin function setnxCommand
	.p2align	4, 0x90
	.type	setnxCommand,@function
setnxCommand:                           # @setnxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rdi
	callq	tryObjectEncoding
	movq	72(%rbx), %rcx
	movq	%rax, 16(%rcx)
	movq	72(%rbx), %rax
	movq	8(%rax), %rdx
	movq	16(%rax), %rcx
	movq	%rbx, %rdi
	movl	$1, %esi
	xorl	%r8d, %r8d
	xorl	%r9d, %r9d
	pushq	shared+32(%rip)
	pushq	shared+40(%rip)
	callq	setGenericCommand
	addq	$16, %rsp
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	setnxCommand, .Lfunc_end2-setnxCommand
                                        # -- End function
	.globl	setexCommand            # -- Begin function setexCommand
	.p2align	4, 0x90
	.type	setexCommand,@function
setexCommand:                           # @setexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	24(%rax), %rdi
	callq	tryObjectEncoding
	movq	72(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	72(%rbx), %rax
	movq	24(%rax), %rcx
	movq	8(%rax), %rdx
	movq	16(%rax), %r8
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%r9d, %r9d
	callq	setGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	setexCommand, .Lfunc_end3-setexCommand
                                        # -- End function
	.globl	psetexCommand           # -- Begin function psetexCommand
	.p2align	4, 0x90
	.type	psetexCommand,@function
psetexCommand:                          # @psetexCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	24(%rax), %rdi
	callq	tryObjectEncoding
	movq	72(%rbx), %rcx
	movq	%rax, 24(%rcx)
	movq	72(%rbx), %rax
	movq	24(%rax), %rcx
	movq	8(%rax), %rdx
	movq	16(%rax), %r8
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsp)
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movl	$1, %r9d
	callq	setGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	psetexCommand, .Lfunc_end4-psetexCommand
                                        # -- End function
	.globl	getGenericCommand       # -- Begin function getGenericCommand
	.p2align	4, 0x90
	.type	getGenericCommand,@function
getGenericCommand:                      # @getGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_4
# %bb.1:
	testb	$15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_3
# %bb.2:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$-1, %r14d
	jmp	.LBB5_4
.LBB5_3:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
.LBB5_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	getGenericCommand, .Lfunc_end5-getGenericCommand
                                        # -- End function
	.globl	getCommand              # -- Begin function getCommand
	.p2align	4, 0x90
	.type	getCommand,@function
getCommand:                             # @getCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_4
# %bb.1:
	testb	$15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_3
# %bb.2:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB6_4
.LBB6_3:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
.LBB6_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	getCommand, .Lfunc_end6-getCommand
                                        # -- End function
	.globl	getsetCommand           # -- Begin function getsetCommand
	.p2align	4, 0x90
	.type	getsetCommand,@function
getsetCommand:                          # @getsetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+80(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_3
# %bb.1:
	testb	$15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_2
# %bb.5:
	movq	shared+112(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_4
.LBB7_2:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	72(%rbx), %rax
	movq	16(%rax), %rdi
	callq	tryObjectEncoding
	movq	72(%rbx), %rcx
	movq	%rax, 16(%rcx)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdx
	callq	setKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.1, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB7_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end7:
	.size	getsetCommand, .Lfunc_end7-getsetCommand
                                        # -- End function
	.globl	setrangeCommand         # -- Begin function setrangeCommand
	.p2align	4, 0x90
	.type	setrangeCommand,@function
setrangeCommand:                        # @setrangeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	movq	24(%rax), %rax
	movq	8(%rax), %r14
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_1
.LBB8_92:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_1:
	cmpq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB8_2
# %bb.3:
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_4
# %bb.33:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_34
.LBB8_54:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_92
.LBB8_2:
	movl	$.L.str.3, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB8_92
.LBB8_4:
	movzbl	-1(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_10
# %bb.5:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_2(,%rax,8)
.LBB8_11:
	movq	%rsi, %rax
	shrq	$3, %rax
	jmp	.LBB8_12
.LBB8_34:
	movq	%r15, %rdi
	callq	stringObjectLen
	movzbl	-1(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB8_40
# %bb.35:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI8_0(,%rdx,8)
.LBB8_41:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	jmp	.LBB8_42
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_13
.LBB8_6:
	movzbl	-3(%r14), %eax
	jmp	.LBB8_12
.LBB8_7:
	movzwl	-5(%r14), %eax
	jmp	.LBB8_12
.LBB8_8:
	movl	-9(%r14), %eax
	jmp	.LBB8_12
.LBB8_9:
	movq	-17(%r14), %rax
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_13
# %bb.14:
	movl	%esi, %ecx
	andb	$7, %cl
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB8_15
# %bb.16:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_3(,%rcx,8)
.LBB8_17:
	movq	%rsi, %rcx
	shrq	$3, %rcx
	jmp	.LBB8_22
.LBB8_13:
	movq	shared+32(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB8_92
.LBB8_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_43
.LBB8_36:
	movzbl	-3(%r14), %edx
	jmp	.LBB8_42
.LBB8_37:
	movzwl	-5(%r14), %edx
	jmp	.LBB8_42
.LBB8_38:
	movl	-9(%r14), %edx
	jmp	.LBB8_42
.LBB8_39:
	movq	-17(%r14), %rdx
.LBB8_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB8_43
# %bb.44:
	movl	%ecx, %edx
	andb	$7, %dl
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %dl
	ja	.LBB8_45
# %bb.46:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI8_1(,%rdx,8)
.LBB8_47:
	shrq	$3, %rcx
	jmp	.LBB8_52
.LBB8_43:
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_92
.LBB8_15:
	xorl	%ecx, %ecx
	jmp	.LBB8_22
.LBB8_18:
	movzbl	-3(%r14), %ecx
	jmp	.LBB8_22
.LBB8_19:
	movzwl	-5(%r14), %ecx
	jmp	.LBB8_22
.LBB8_20:
	movl	-9(%r14), %ecx
	jmp	.LBB8_22
.LBB8_21:
	movq	-17(%r14), %rcx
.LBB8_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870913, %rcx        # imm = 0x20000001
	jl	.LBB8_24
# %bb.23:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_92
.LBB8_24:
	movl	%esi, %ecx
	andb	$7, %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB8_25
# %bb.26:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_4(,%rcx,8)
.LBB8_27:
	shrq	$3, %rsi
	jmp	.LBB8_32
.LBB8_45:
	xorl	%ecx, %ecx
	jmp	.LBB8_52
.LBB8_48:
	movzbl	-3(%r14), %ecx
	jmp	.LBB8_52
.LBB8_49:
	movzwl	-5(%r14), %ecx
	jmp	.LBB8_52
.LBB8_50:
	movl	-9(%r14), %ecx
	jmp	.LBB8_52
.LBB8_51:
	movq	-17(%r14), %rcx
.LBB8_52:
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870913, %rcx        # imm = 0x20000001
	jl	.LBB8_55
# %bb.53:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_54
.LBB8_55:
	leaq	-1(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_56
.LBB8_25:
	xorl	%esi, %esi
	jmp	.LBB8_32
.LBB8_28:
	movzbl	-3(%r14), %esi
	jmp	.LBB8_32
.LBB8_29:
	movzwl	-5(%r14), %esi
	jmp	.LBB8_32
.LBB8_30:
	movl	-9(%r14), %esi
	jmp	.LBB8_32
.LBB8_31:
	movq	-17(%r14), %rsi
.LBB8_32:
	leaq	-1(%r14), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rsi
	xorl	%edi, %edi
	callq	sdsnewlen
	xorl	%edi, %edi
	movq	%rax, %rsi
	callq	createObject
	movq	%rax, %r15
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r15, %rdx
	callq	dbAdd
.LBB8_56:
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB8_62
# %bb.57:
	movl	%esi, %eax
	andl	$7, %eax
	jmpq	*.LJTI8_5(,%rax,8)
.LBB8_63:
	movq	%rsi, %rax
	shrq	$3, %rax
	jmp	.LBB8_64
.LBB8_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_82
.LBB8_58:
	movzbl	-3(%r14), %eax
	jmp	.LBB8_64
.LBB8_59:
	movzwl	-5(%r14), %eax
	jmp	.LBB8_64
.LBB8_60:
	movl	-9(%r14), %eax
	jmp	.LBB8_64
.LBB8_61:
	movq	-17(%r14), %rax
.LBB8_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_83
# %bb.65:
	movl	%esi, %ecx
	andb	$7, %cl
	movq	8(%r15), %rdi
	movq	-40(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	ja	.LBB8_66
# %bb.67:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_6(,%rcx,8)
.LBB8_68:
	shrq	$3, %rsi
	jmp	.LBB8_73
.LBB8_66:
	xorl	%esi, %esi
	jmp	.LBB8_73
.LBB8_69:
	movzbl	-3(%r14), %esi
	jmp	.LBB8_73
.LBB8_70:
	movzwl	-5(%r14), %esi
	jmp	.LBB8_73
.LBB8_71:
	movl	-9(%r14), %esi
	jmp	.LBB8_73
.LBB8_72:
	movq	-17(%r14), %rsi
.LBB8_73:
	addq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdsgrowzero
	movq	%rax, 8(%r15)
	addq	-40(%rbp), %rax
	movzbl	(%r12), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_74
# %bb.75:
	movl	%edx, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_7(,%rcx,8)
.LBB8_76:
	shrq	$3, %rdx
	jmp	.LBB8_81
.LBB8_74:
	xorl	%edx, %edx
	jmp	.LBB8_81
.LBB8_77:
	movzbl	-3(%r14), %edx
	jmp	.LBB8_81
.LBB8_78:
	movzwl	-5(%r14), %edx
	jmp	.LBB8_81
.LBB8_79:
	movl	-9(%r14), %edx
	jmp	.LBB8_81
.LBB8_80:
	movq	-17(%r14), %rdx
.LBB8_81:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r14, %rsi
	callq	memcpy
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.4, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
.LBB8_82:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_83:
	movq	8(%r15), %rax
	movzbl	-1(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB8_84
# %bb.85:
	movl	%esi, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI8_8(,%rcx,8)
.LBB8_86:
	shrq	$3, %rsi
	jmp	.LBB8_91
.LBB8_84:
	xorl	%esi, %esi
	jmp	.LBB8_91
.LBB8_87:
	movzbl	-3(%rax), %esi
	jmp	.LBB8_91
.LBB8_88:
	movzwl	-5(%rax), %esi
	jmp	.LBB8_91
.LBB8_89:
	movl	-9(%rax), %esi
	jmp	.LBB8_91
.LBB8_90:
	movq	-17(%rax), %rsi
.LBB8_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	addReplyLongLong
	jmp	.LBB8_92
.Lfunc_end8:
	.size	setrangeCommand, .Lfunc_end8-setrangeCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_41
	.quad	.LBB8_36
	.quad	.LBB8_37
	.quad	.LBB8_38
	.quad	.LBB8_39
.LJTI8_1:
	.quad	.LBB8_47
	.quad	.LBB8_48
	.quad	.LBB8_49
	.quad	.LBB8_50
	.quad	.LBB8_51
.LJTI8_2:
	.quad	.LBB8_11
	.quad	.LBB8_6
	.quad	.LBB8_7
	.quad	.LBB8_8
	.quad	.LBB8_9
.LJTI8_3:
	.quad	.LBB8_17
	.quad	.LBB8_18
	.quad	.LBB8_19
	.quad	.LBB8_20
	.quad	.LBB8_21
.LJTI8_4:
	.quad	.LBB8_27
	.quad	.LBB8_28
	.quad	.LBB8_29
	.quad	.LBB8_30
	.quad	.LBB8_31
.LJTI8_5:
	.quad	.LBB8_63
	.quad	.LBB8_58
	.quad	.LBB8_59
	.quad	.LBB8_60
	.quad	.LBB8_61
.LJTI8_6:
	.quad	.LBB8_68
	.quad	.LBB8_69
	.quad	.LBB8_70
	.quad	.LBB8_71
	.quad	.LBB8_72
.LJTI8_7:
	.quad	.LBB8_76
	.quad	.LBB8_77
	.quad	.LBB8_78
	.quad	.LBB8_79
	.quad	.LBB8_80
.LJTI8_8:
	.quad	.LBB8_86
	.quad	.LBB8_87
	.quad	.LBB8_88
	.quad	.LBB8_89
	.quad	.LBB8_90
                                        # -- End function
	.text
	.globl	getrangeCommand         # -- Begin function getrangeCommand
	.p2align	4, 0x90
	.type	getrangeCommand,@function
getrangeCommand:                        # @getrangeCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-40(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_33
# %bb.1:
	movq	72(%rbx), %rax
	movq	24(%rax), %rsi
	leaq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB9_2
.LBB9_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_2:
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	shared+24(%rip), %rdx
	movq	%rbx, %rdi
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_33
# %bb.3:
	movq	%rax, %r15
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB9_33
# %bb.4:
	movl	$240, %eax
	andl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB9_6
# %bb.5:
	leaq	-80(%rbp), %r14
	movq	8(%r15), %rdx
	movl	$32, %esi
	movq	%r14, %rdi
	callq	ll2string
	cltq
	jmp	.LBB9_15
.LBB9_6:
	movq	8(%r15), %r14
	movzbl	-1(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB9_7
# %bb.8:
	movl	%eax, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI9_0(,%rcx,8)
.LBB9_9:
	shrq	$3, %rax
	jmp	.LBB9_14
.LBB9_7:
	xorl	%eax, %eax
	jmp	.LBB9_14
.LBB9_10:
	movzbl	-3(%r14), %eax
	jmp	.LBB9_14
.LBB9_11:
	movzwl	-5(%r14), %eax
	jmp	.LBB9_14
.LBB9_12:
	movl	-9(%r14), %eax
	jmp	.LBB9_14
.LBB9_13:
	movq	-17(%r14), %rax
.LBB9_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rcx
	movq	-32(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rdx
	jns	.LBB9_18
# %bb.16:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rcx
	jle	.LBB9_18
# %bb.17:
	movq	shared+24(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	jmp	.LBB9_33
.LBB9_18:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB9_20
# %bb.19:
	addq	%rax, %rcx
	movq	%rcx, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_20:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB9_22
# %bb.21:
	addq	%rax, %rdx
	movq	%rdx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_22:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jns	.LBB9_24
# %bb.23:
	movq	$0, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB9_24:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jns	.LBB9_26
# %bb.25:
	movq	$0, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
.LBB9_26:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	jb	.LBB9_28
# %bb.27:
	leaq	-1(%rax), %rdx
	movq	%rdx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_28:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_30
# %bb.29:
	subq	%rcx, %rdx
	jl	.LBB9_30
# %bb.31:
	addq	%rcx, %r14
	addq	$1, %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyBulkCBuffer
	jmp	.LBB9_32
.LBB9_30:
	movq	shared+24(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB9_32:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_33
.Lfunc_end9:
	.size	getrangeCommand, .Lfunc_end9-getrangeCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_9
	.quad	.LBB9_10
	.quad	.LBB9_11
	.quad	.LBB9_12
	.quad	.LBB9_13
                                        # -- End function
	.text
	.globl	mgetCommand             # -- Begin function mgetCommand
	.p2align	4, 0x90
	.type	mgetCommand,@function
mgetCommand:                            # @mgetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movslq	64(%rdi), %rsi
	addq	$-1, %rsi
	callq	addReplyMultiBulkLen
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, 64(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_7
# %bb.1:
	movl	$1, %ebx
	jmp	.LBB10_2
	.p2align	4, 0x90
.LBB10_3:                               #   in Loop: Header=BB10_2 Depth=1
	movq	shared+80(%rip), %rsi
	movq	%r14, %rdi
	callq	addReply
.LBB10_6:                               #   in Loop: Header=BB10_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movslq	64(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jge	.LBB10_7
.LBB10_2:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyRead
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_3
# %bb.4:                                #   in Loop: Header=BB10_2 Depth=1
	testb	$15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_3
# %bb.5:                                #   in Loop: Header=BB10_2 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	addReplyBulk
	jmp	.LBB10_6
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end10:
	.size	mgetCommand, .Lfunc_end10-mgetCommand
                                        # -- End function
	.globl	msetGenericCommand      # -- Begin function msetGenericCommand
	.p2align	4, 0x90
	.type	msetGenericCommand,@function
msetGenericCommand:                     # @msetGenericCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	64(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB11_2
# %bb.1:
	movl	$.L.str.5, %esi
	movq	%r15, %rdi
	callq	addReplyError
	jmp	.LBB11_14
.LBB11_2:
	movl	%esi, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB11_9
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jle	.LBB11_4
# %bb.5:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB11_7
# %bb.8:                                #   in Loop: Header=BB11_6 Depth=1
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jg	.LBB11_6
.LBB11_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jl	.LBB11_12
# %bb.10:
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB11_11:                              # =>This Inner Loop Header: Depth=1
	movq	72(%r15), %rax
	movq	8(%rax,%rbx,8), %rdi
	callq	tryObjectEncoding
	movq	72(%r15), %rcx
	movq	%rax, 8(%rcx,%rbx,8)
	movq	16(%r15), %rdi
	movq	72(%r15), %rax
	movq	(%rax,%rbx,8), %rsi
	movq	8(%rax,%rbx,8), %rdx
	callq	setKey
	movq	16(%r15), %rax
	movq	72(%r15), %rcx
	movq	(%rcx,%rbx,8), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.1, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$2, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	64(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jg	.LBB11_11
	jmp	.LBB11_12
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_12:
	movl	%eax, %ecx
	addl	$-1, %ecx
	shrl	$31, %ecx
	addl	%ecx, %eax
	addl	$-1, %eax
	sarl	%eax
	cltq
	addq	%rax, server+2080(%rip)
	testl	%r14d, %r14d
	movl	$shared+40, %eax
	movl	$shared+8, %ecx
	cmovneq	%rax, %rcx
	movq	(%rcx), %rsi
.LBB11_13:
	movq	%r15, %rdi
	callq	addReply
.LBB11_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_7:
	movq	shared+32(%rip), %rsi
	jmp	.LBB11_13
.Lfunc_end11:
	.size	msetGenericCommand, .Lfunc_end11-msetGenericCommand
                                        # -- End function
	.globl	msetCommand             # -- Begin function msetCommand
	.p2align	4, 0x90
	.type	msetCommand,@function
msetCommand:                            # @msetCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%esi, %esi
	callq	msetGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	msetCommand, .Lfunc_end12-msetCommand
                                        # -- End function
	.globl	msetnxCommand           # -- Begin function msetnxCommand
	.p2align	4, 0x90
	.type	msetnxCommand,@function
msetnxCommand:                          # @msetnxCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	msetGenericCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end13:
	.size	msetnxCommand, .Lfunc_end13-msetnxCommand
                                        # -- End function
	.globl	incrDecrCommand         # -- Begin function incrDecrCommand
	.p2align	4, 0x90
	.type	incrDecrCommand,@function
incrDecrCommand:                        # @incrDecrCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB14_2
# %bb.1:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB14_18
.LBB14_2:
	leaq	-32(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB14_18
# %bb.3:
	movq	-32(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %rdi
	jns	.LBB14_5
# %bb.4:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	subq	%rdi, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jg	.LBB14_8
.LBB14_5:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jle	.LBB14_9
# %bb.6:
	testq	%rdi, %rdi
	jle	.LBB14_9
# %bb.7:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	subq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jge	.LBB14_9
.LBB14_8:
	movl	$.L.str.6, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	jmp	.LBB14_18
.LBB14_9:
	addq	%r15, %rdi
	movq	%rdi, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB14_14
# %bb.10:
	cmpl	$1, 4(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_14
# %bb.11:
	movl	$240, %eax
	andl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB14_14
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$10000, %rdi            # imm = 0x2710
	jb	.LBB14_14
# %bb.13:
	movq	%rdi, 8(%r14)
	jmp	.LBB14_17
.LBB14_14:
	callq	createStringObjectFromLongLongForValue
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	movq	%rax, %r14
	movq	%rax, %rdx
	je	.LBB14_16
# %bb.15:
	callq	dbOverwrite
	jmp	.LBB14_17
.LBB14_16:
	callq	dbAdd
.LBB14_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.7, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	shared+72(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReply
	movq	shared(%rip), %rsi
	movq	%rbx, %rdi
	callq	addReply
.LBB14_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	incrDecrCommand, .Lfunc_end14-incrDecrCommand
                                        # -- End function
	.globl	incrCommand             # -- Begin function incrCommand
	.p2align	4, 0x90
	.type	incrCommand,@function
incrCommand:                            # @incrCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %esi
	callq	incrDecrCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end15:
	.size	incrCommand, .Lfunc_end15-incrCommand
                                        # -- End function
	.globl	decrCommand             # -- Begin function decrCommand
	.p2align	4, 0x90
	.type	decrCommand,@function
decrCommand:                            # @decrCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	$-1, %rsi
	callq	incrDecrCommand
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end16:
	.size	decrCommand, .Lfunc_end16-decrCommand
                                        # -- End function
	.globl	incrbyCommand           # -- Begin function incrbyCommand
	.p2align	4, 0x90
	.type	incrbyCommand,@function
incrbyCommand:                          # @incrbyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-16(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB17_2
# %bb.1:
	movq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	incrDecrCommand
.LBB17_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end17:
	.size	incrbyCommand, .Lfunc_end17-incrbyCommand
                                        # -- End function
	.globl	decrbyCommand           # -- Begin function decrbyCommand
	.p2align	4, 0x90
	.type	decrbyCommand,@function
decrbyCommand:                          # @decrbyCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	16(%rax), %rsi
	leaq	-16(%rbp), %rdx
	xorl	%ecx, %ecx
	callq	getLongLongFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB18_2
# %bb.1:
	xorl	%esi, %esi
	subq	-16(%rbp), %rsi
	movq	%rbx, %rdi
	callq	incrDecrCommand
.LBB18_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end18:
	.size	decrbyCommand, .Lfunc_end18-decrbyCommand
                                        # -- End function
	.globl	incrbyfloatCommand      # -- Begin function incrbyfloatCommand
	.p2align	4, 0x90
	.type	incrbyfloatCommand,@function
incrbyfloatCommand:                     # @incrbyfloatCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$72, %rsp
	movq	%rdi, %r14
	movq	16(%rdi), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB19_2
# %bb.1:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_11
.LBB19_2:
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	getLongDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_11
# %bb.3:
	movq	72(%r14), %rax
	movq	16(%rax), %rsi
	leaq	-80(%rbp), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	getLongDoubleFromObjectOrReply
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB19_11
# %bb.4:
	fldt	-80(%rbp)
	fldt	-48(%rbp)
	faddp	%st, %st(1)
	fld	%st(0)
	fstpt	-48(%rbp)
	fstpl	-64(%rbp)
	movsd	-64(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB19_6
# %bb.5:
	fldt	-48(%rbp)
	fstpl	-56(%rbp)
	movsd	-56(%rbp), %xmm0        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB19_7
.LBB19_6:
	movl	$.L.str.8, %esi
	movq	%r14, %rdi
	callq	addReplyError
	jmp	.LBB19_11
.LBB19_7:
	fldt	-48(%rbp)
	fstpt	(%rsp)
	movl	$1, %edi
	callq	createStringObjectFromLongDouble
	movq	%rax, %r15
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdx
	testq	%rbx, %rbx
	je	.LBB19_9
# %bb.8:
	callq	dbOverwrite
	jmp	.LBB19_10
.LBB19_9:
	callq	dbAdd
.LBB19_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rdi
	movq	72(%r14), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%r14), %rax
	movq	72(%r14), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.9, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	addReplyBulk
	movl	$.L.str.10, %edi
	movl	$3, %esi
	callq	createStringObject
	movq	%rax, %rbx
	movq	%r14, %rdi
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	rewriteClientCommandArgument
	movq	%rbx, %rdi
	callq	decrRefCount
	movq	%r14, %rdi
	movl	$2, %esi
	movq	%r15, %rdx
	callq	rewriteClientCommandArgument
.LBB19_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end19:
	.size	incrbyfloatCommand, .Lfunc_end19-incrbyfloatCommand
                                        # -- End function
	.globl	appendCommand           # -- Begin function appendCommand
	.p2align	4, 0x90
	.type	appendCommand,@function
appendCommand:                          # @appendCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	lookupKeyWrite
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_1
# %bb.2:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB20_31
# %bb.3:
	movq	72(%rbx), %rax
	movq	16(%rax), %r15
	movq	%r14, %rdi
	callq	stringObjectLen
	movq	8(%r15), %rsi
	movzbl	-1(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	andb	$7, %dl
	cmpb	$4, %dl
	ja	.LBB20_4
# %bb.5:
	movl	%ecx, %edx
	andl	$7, %edx
	jmpq	*.LJTI20_0(,%rdx,8)
.LBB20_6:
	shrq	$3, %rcx
	jmp	.LBB20_11
.LBB20_1:
	movq	72(%rbx), %rax
	movq	16(%rax), %rdi
	callq	tryObjectEncoding
	movq	72(%rbx), %rcx
	movq	%rax, 16(%rcx)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	16(%rax), %rdx
	callq	dbAdd
	movq	72(%rbx), %rax
	movq	16(%rax), %rdi
	callq	incrRefCount
	movq	72(%rbx), %rax
	movq	16(%rax), %rdi
	callq	stringObjectLen
	movq	%rax, %r14
	jmp	.LBB20_30
.LBB20_7:
	movzbl	-3(%rsi), %ecx
	jmp	.LBB20_11
.LBB20_8:
	movzwl	-5(%rsi), %ecx
	jmp	.LBB20_11
.LBB20_9:
	movl	-9(%rsi), %ecx
	jmp	.LBB20_11
.LBB20_10:
	movq	-17(%rsi), %rcx
	jmp	.LBB20_11
.LBB20_4:
	xorl	%ecx, %ecx
.LBB20_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870913, %rcx        # imm = 0x20000001
	jl	.LBB20_13
# %bb.12:
	movl	$.L.str.12, %esi
	movq	%rbx, %rdi
	callq	addReplyError
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_31
.LBB20_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	movq	%r14, %rdx
	callq	dbUnshareStringValue
	movq	%rax, %r14
	movq	8(%rax), %rdi
	movq	8(%r15), %rsi
	movzbl	-1(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andb	$7, %al
	cmpb	$4, %al
	ja	.LBB20_14
# %bb.15:
	movl	%edx, %eax
	andl	$7, %eax
	jmpq	*.LJTI20_1(,%rax,8)
.LBB20_16:
	shrq	$3, %rdx
	jmp	.LBB20_21
.LBB20_14:
	xorl	%edx, %edx
	jmp	.LBB20_21
.LBB20_17:
	movzbl	-3(%rsi), %edx
	jmp	.LBB20_21
.LBB20_18:
	movzwl	-5(%rsi), %edx
	jmp	.LBB20_21
.LBB20_19:
	movl	-9(%rsi), %edx
	jmp	.LBB20_21
.LBB20_20:
	movq	-17(%rsi), %rdx
.LBB20_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	sdscatlen
	movq	%rax, 8(%r14)
	movzbl	-1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ecx
	andb	$7, %cl
	cmpb	$4, %cl
	ja	.LBB20_22
# %bb.23:
	movl	%r14d, %ecx
	andl	$7, %ecx
	jmpq	*.LJTI20_2(,%rcx,8)
.LBB20_24:
	shrq	$3, %r14
	jmp	.LBB20_29
.LBB20_22:
	xorl	%r14d, %r14d
	jmp	.LBB20_29
.LBB20_25:
	movzbl	-3(%rax), %r14d
	jmp	.LBB20_29
.LBB20_26:
	movzwl	-5(%rax), %r14d
	jmp	.LBB20_29
.LBB20_27:
	movl	-9(%rax), %r14d
	jmp	.LBB20_29
.LBB20_28:
	movq	-17(%rax), %r14
.LBB20_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB20_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdi
	movq	72(%rbx), %rax
	movq	8(%rax), %rsi
	callq	signalModifiedKey
	movq	16(%rbx), %rax
	movq	72(%rbx), %rcx
	movq	8(%rcx), %rdx
	movl	40(%rax), %ecx
	movl	$.L.str.11, %esi
	movl	$8, %edi
	callq	notifyKeyspaceEvent
	addq	$1, server+2080(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	addReplyLongLong
.LBB20_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end20:
	.size	appendCommand, .Lfunc_end20-appendCommand
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI20_0:
	.quad	.LBB20_6
	.quad	.LBB20_7
	.quad	.LBB20_8
	.quad	.LBB20_9
	.quad	.LBB20_10
.LJTI20_1:
	.quad	.LBB20_16
	.quad	.LBB20_17
	.quad	.LBB20_18
	.quad	.LBB20_19
	.quad	.LBB20_20
.LJTI20_2:
	.quad	.LBB20_24
	.quad	.LBB20_25
	.quad	.LBB20_26
	.quad	.LBB20_27
	.quad	.LBB20_28
                                        # -- End function
	.text
	.globl	strlenCommand           # -- Begin function strlenCommand
	.p2align	4, 0x90
	.type	strlenCommand,@function
strlenCommand:                          # @strlenCommand
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	movq	72(%rdi), %rax
	movq	8(%rax), %rsi
	movq	shared+32(%rip), %rdx
	callq	lookupKeyReadOrReply
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB21_3
# %bb.1:
	movq	%rax, %r14
	movq	%rbx, %rdi
	movq	%rax, %rsi
	xorl	%edx, %edx
	callq	checkType
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB21_3
# %bb.2:
	movq	%r14, %rdi
	callq	stringObjectLen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	addReplyLongLong
.LBB21_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end21:
	.size	strlenCommand, .Lfunc_end21-strlenCommand
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"invalid expire time in %s"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"set"
	.size	.L.str.1, 4

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"expire"
	.size	.L.str.2, 7

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"offset is out of range"
	.size	.L.str.3, 23

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"setrange"
	.size	.L.str.4, 9

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"wrong number of arguments for MSET"
	.size	.L.str.5, 35

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"increment or decrement would overflow"
	.size	.L.str.6, 38

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"incrby"
	.size	.L.str.7, 7

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"increment would produce NaN or Infinity"
	.size	.L.str.8, 40

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"incrbyfloat"
	.size	.L.str.9, 12

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"SET"
	.size	.L.str.10, 4

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"append"
	.size	.L.str.11, 7

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"string exceeds maximum allowed size (512MB)"
	.size	.L.str.12, 44

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
