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
	movq	(%rsi), %rbx
	testq	%rbx, %rbx
	je	.LBB0_37
# %bb.1:
	movq	%rsi, %r12
	movl	%edi, %r14d
	movq	environ(%rip), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	(%rbx,%rax), %r15
	addq	$1, %r15
	movslq	%r14d, %r13
	movq	(%r12), %rbx
	testl	%r13d, %r13d
	jg	.LBB0_3
# %bb.2:
	testq	%rbx, %rbx
	je	.LBB0_9
.LBB0_3:                                # %.preheader5
	movl	$1, %r14d
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	cmpq	%r15, %rbx
	jb	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	leaq	(%rbx,%rax), %r15
	addq	$1, %r15
.LBB0_7:                                #   in Loop: Header=BB0_4 Depth=1
	movq	(%r12,%r14,8), %rbx
	cmpq	%r13, %r14
	leaq	1(%r14), %r14
	jl	.LBB0_4
# %bb.8:                                #   in Loop: Header=BB0_4 Depth=1
	testq	%rbx, %rbx
	jne	.LBB0_4
.LBB0_9:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %r14
	testq	%r14, %r14
	je	.LBB0_14
# %bb.10:                               # %.preheader3
	leaq	8(%rax), %rbx
	jmp	.LBB0_11
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_11 Depth=1
	movq	(%rbx), %r14
	addq	$8, %rbx
	testq	%r14, %r14
	je	.LBB0_14
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	cmpq	%r15, %r14
	jb	.LBB0_13
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=1
	movq	%r14, %rdi
	callq	strlen
	leaq	(%r14,%rax), %r15
	addq	$1, %r15
	jmp	.LBB0_13
.LBB0_14:
	movq	(%r12), %rdi
	callq	strdup
	movq	%rax, SPT.0(%rip)
	testq	%rax, %rax
	je	.LBB0_35
# %bb.15:
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmpq	%rax, environ(%rip)
	je	.LBB0_16
.LBB0_26:
	movq	-64(%rbp), %r14         # 8-byte Reload
	addq	%r14, -56(%rbp)         # 8-byte Folded Spill
	movl	$1, %ebx
	jmp	.LBB0_27
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_27 Depth=1
	addq	$1, %rbx
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12,%rbx,8), %rdi
	cmpq	%r13, %rbx
	jge	.LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	testq	%rdi, %rdi
	jne	.LBB0_30
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_27 Depth=1
	testq	%rdi, %rdi
	je	.LBB0_34
.LBB0_30:                               #   in Loop: Header=BB0_27 Depth=1
	callq	strdup
	testq	%rax, %rax
	je	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_27 Depth=1
	movq	%rax, (%r12,%rbx,8)
	jmp	.LBB0_32
.LBB0_35:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	__errno                 # TAILCALL
.LBB0_33:
	callq	__errno
	cmpl	$0, (%rax)
	jne	.LBB0_37
.LBB0_34:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, SPT.3(%rip)
	movq	%r14, SPT.1(%rip)
	movq	%r15, SPT.2(%rip)
	jmp	.LBB0_37
.LBB0_16:
	movl	$8, %edi
	callq	malloc
	movq	%rax, spt_clearenv.tmp(%rip)
	testq	%rax, %rax
	je	.LBB0_18
# %bb.17:
	movq	$0, (%rax)
	movq	%rax, environ(%rip)
	jmp	.LBB0_19
.LBB0_18:
	callq	__errno
	cmpl	$0, (%rax)
	jne	.LBB0_36
.LBB0_19:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	testq	%rdi, %rdi
	je	.LBB0_26
# %bb.20:                               # %.preheader
	movq	-48(%rbp), %rax         # 8-byte Reload
	leaq	8(%rax), %r14
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_23:                               #   in Loop: Header=BB0_21 Depth=1
	movb	$61, (%rbx)
.LBB0_25:                               #   in Loop: Header=BB0_21 Depth=1
	movq	(%r14), %rdi
	addq	$8, %r14
	testq	%rdi, %rdi
	je	.LBB0_26
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	$61, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_25
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rax, %rbx
	movb	$0, (%rax)
	movq	-8(%r14), %rdi
	movq	%rax, %rsi
	addq	$1, %rsi
	movl	$1, %edx
	callq	setenv
	testl	%eax, %eax
	je	.LBB0_23
# %bb.24:                               #   in Loop: Header=BB0_21 Depth=1
	callq	__errno
	cmpl	$0, (%rax)
	movb	$61, (%rbx)
	je	.LBB0_25
.LBB0_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, environ(%rip)
.LBB0_37:
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
	pushq	%rbx
	subq	$456, %rsp              # imm = 0x1C8
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	cmpq	$0, SPT.1(%rip)
	je	.LBB1_16
# %bb.3:
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.4:
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-464(%rbp), %rdi
	leaq	-32(%rbp), %rcx
	movl	$256, %esi              # imm = 0x100
	movq	%rbx, %rdx
	callq	vsnprintf
	jmp	.LBB1_6
.LBB1_5:
	movq	SPT.0(%rip), %rcx
	leaq	-464(%rbp), %rdi
	movl	$256, %esi              # imm = 0x100
	movl	$.L.str, %edx
	xorl	%eax, %eax
	callq	snprintf
.LBB1_6:
	movl	%eax, %ebx
	testl	%eax, %eax
	jle	.LBB1_7
# %bb.8:
	movq	SPT.1(%rip), %rdi
	movq	SPT.2(%rip), %rdx
	subq	%rdi, %rdx
	cmpb	$0, SPT.4(%rip)
	je	.LBB1_9
# %bb.10:
	cmpq	$256, %rdx              # imm = 0x100
	movl	$256, %eax              # imm = 0x100
	cmovbq	%rdx, %rax
	xorl	%esi, %esi
	movq	%rax, %rdx
	callq	memset
	jmp	.LBB1_11
.LBB1_7:
	callq	__errno
	jmp	.LBB1_16
.LBB1_9:
	xorl	%esi, %esi
	callq	memset
	movb	$1, SPT.4(%rip)
.LBB1_11:
	movslq	%ebx, %rax
	movq	SPT.2(%rip), %rcx
	movq	SPT.1(%rip), %rdi
	subq	%rdi, %rcx
	cmpq	$256, %rcx              # imm = 0x100
	movl	$256, %ebx              # imm = 0x100
	cmovbq	%rcx, %rbx
	addq	$-1, %rbx
	cmpq	%rax, %rbx
	cmovaq	%rax, %rbx
	leaq	-464(%rbp), %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	SPT.1(%rip), %rbx
	movq	SPT.3(%rip), %rax
	cmpq	%rax, %rbx
	jae	.LBB1_13
# %bb.12:
	movb	$46, (%rax)
	jmp	.LBB1_16
.LBB1_13:
	jne	.LBB1_16
# %bb.14:
	leaq	1(%rbx), %rax
	cmpq	SPT.2(%rip), %rax
	jae	.LBB1_16
# %bb.15:
	movw	$32, (%rbx)
.LBB1_16:
	addq	$456, %rsp              # imm = 0x1C8
	popq	%rbx
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
