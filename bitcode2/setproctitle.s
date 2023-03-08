	.text
	.file	"setproctitle.c"
	.globl	spt_init                # -- Begin function spt_init
	.p2align	4, 0x90
	.type	spt_init,@function
spt_init:                               # @spt_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	environ(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	(%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_38
# %bb.1:
	movq	%rsi, %r15
	movl	%edi, %r14d
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rbx,%rax), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	leaq	(%rbx,%rax), %r13
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %r12
	xorl	%r14d, %r14d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_2 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jge	.LBB0_3
# %bb.13:                               #   in Loop: Header=BB0_2 Depth=1
	movq	(%r15,%r14,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_14
	jmp	.LBB0_16
	.p2align	4, 0x90
.LBB0_3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r15,%r14,8), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_4
.LBB0_14:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	jb	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_2 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rbx,%rax), %r13
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_16
.LBB0_4:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_9
# %bb.5:                                # %.preheader2
	leaq	8(%rax), %rbx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %r14
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_9
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r14
	jb	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movq	%r14, %rdi
	callq	strlen
	leaq	(%r14,%rax), %r13
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_9:
	movq	(%r15), %rdi
	callq	strdup
	movq	%rax, SPT.0(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_36
# %bb.10:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, environ(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r15), %rbx
	movl	$1, %r14d
	movq	%r15, -48(%rbp)         # 8-byte Spill
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_26 Depth=1
	addq	$1, %r14
	addq	$8, %rbx
	movq	-48(%rbp), %r15         # 8-byte Reload
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jge	.LBB0_27
# %bb.30:                               #   in Loop: Header=BB0_26 Depth=1
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	testq	%rdi, %rdi
	jne	.LBB0_31
	jmp	.LBB0_33
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_29
# %bb.28:                               #   in Loop: Header=BB0_26 Depth=1
	leaq	(%r15,%r14,8), %r15
.LBB0_31:                               #   in Loop: Header=BB0_26 Depth=1
	callq	strdup
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_34
# %bb.32:                               #   in Loop: Header=BB0_26 Depth=1
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_33
.LBB0_36:
	callq	__errno
	jmp	.LBB0_37
.LBB0_34:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	jne	.LBB0_38
	jmp	.LBB0_35
.LBB0_11:
	movl	$8, %edi
	callq	malloc
	movq	%rax, spt_clearenv.tmp(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_17
# %bb.12:
	movq	$0, (%rax)
	movq	%rax, environ(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
.LBB0_35:
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%rcx, SPT.3(%rip)
	movq	%rax, SPT.1(%rip)
	movq	%r13, SPT.2(%rip)
	jmp	.LBB0_38
.LBB0_17:
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_39
.LBB0_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_25
# %bb.19:                               # %.preheader
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %r14
	jmp	.LBB0_20
	.p2align	4, 0x90
.LBB0_22:                               #   in Loop: Header=BB0_20 Depth=1
	movb	$61, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_24:                               #   in Loop: Header=BB0_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rdi
	addq	$8, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_25
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	$61, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	-8(%r14), %rdi
	movq	%rax, %rsi
	addq	$1, %rsi
	movl	$1, %edx
	callq	setenv
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_22
# %bb.23:                               #   in Loop: Header=BB0_20 Depth=1
	callq	__errno
	cmpl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movb	$61, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_24
.LBB0_39:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, environ(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_38:
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
.Lfunc_end0:
	.size	spt_init, .Lfunc_end0-spt_init
                                        # -- End function
	.globl	setproctitle            # -- Begin function setproctitle
	.p2align	4, 0x90
	.type	setproctitle,@function
setproctitle:                           # @setproctitle
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$464, %rsp              # imm = 0x1D0
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -176(%rbp)
	movaps	%xmm1, -160(%rbp)
	movaps	%xmm2, -144(%rbp)
	movaps	%xmm3, -128(%rbp)
	movaps	%xmm4, -112(%rbp)
	movaps	%xmm5, -96(%rbp)
	movaps	%xmm6, -80(%rbp)
	movaps	%xmm7, -64(%rbp)
.LBB1_2:
	movq	%rsi, -216(%rbp)
	movq	%rdx, -208(%rbp)
	movq	%rcx, -200(%rbp)
	movq	%r8, -192(%rbp)
	movq	%r9, -184(%rbp)
	cmpq	$0, SPT.1(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_17
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.4:
	leaq	-224(%rbp), %rax
	movq	%rax, -32(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -40(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -48(%rbp)
	leaq	-480(%rbp), %rdi
	leaq	-48(%rbp), %rcx
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdx
	callq	vsnprintf
	jmp	.LBB1_6
.LBB1_5:
	movq	SPT.0(%rip), %rcx
	leaq	-480(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str, %edx
	xorl	%eax, %eax
	callq	snprintf
.LBB1_6:
	movl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_7
# %bb.8:
	movq	SPT.1(%rip), %rdi
	movq	SPT.2(%rip), %rdx
	subq	%rdi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, SPT.4(%rip)
	je	.LBB1_9
# %bb.10:
	cmpq	$256, %rdx              # imm = 0x100
	movl	$256, %eax              # imm = 0x100
	cmovbq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB1_11
.LBB1_7:
	callq	__errno
	jmp	.LBB1_17
.LBB1_9:
	xorl	%esi, %esi
	callq	memset
	movb	$1, SPT.4(%rip)
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
	movq	SPT.2(%rip), %rax
	movq	SPT.1(%rip), %rdi
	subq	%rdi, %rax
	cmpq	$256, %rax              # imm = 0x100
	movl	$256, %ebx              # imm = 0x100
	cmovbq	%rax, %rbx
	movslq	%r14d, %rax
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	cmpq	%rax, %rbx
	cmovaq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-480(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	SPT.1(%rip), %rbx
	movq	SPT.3(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jae	.LBB1_13
# %bb.12:
	movb	$46, (%rax)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_17
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_17
# %bb.14:
	leaq	1(%rbx), %rax
	cmpq	SPT.2(%rip), %rax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_17
# %bb.15:
	movw	$32, (%rbx)
	jmp	.LBB1_16
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$464, %rsp              # imm = 0x1D0
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	setproctitle, .Lfunc_end1-setproctitle
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%s"
	.size	.L.str, 3

	.type	spt_clearenv.tmp,@object # @spt_clearenv.tmp
	.local	spt_clearenv.tmp
	.comm	spt_clearenv.tmp,8,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.type	SPT.0,@object           # @SPT.0
	.local	SPT.0
	.comm	SPT.0,8,8
	.type	SPT.1,@object           # @SPT.1
	.local	SPT.1
	.comm	SPT.1,8,8
	.type	SPT.2,@object           # @SPT.2
	.local	SPT.2
	.comm	SPT.2,8,8
	.type	SPT.3,@object           # @SPT.3
	.local	SPT.3
	.comm	SPT.3,8,8
	.type	SPT.4,@object           # @SPT.4
	.local	SPT.4
	.comm	SPT.4,1,8
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
