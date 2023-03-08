	.text
	.file	"makebuf.c"
	.globl	__smakebuf_r            # -- Begin function __smakebuf_r
	.p2align	4, 0x90
	.type	__smakebuf_r,@function
__smakebuf_r:                           # @__smakebuf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$96, %rsp
	movq	%rsi, %rbx
	movzwl	16(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB0_1
# %bb.2:
	movq	%rdi, %r14
	movswl	18(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB0_5
# %bb.3:
	leaq	-120(%rbp), %rdx
	movq	%r14, %rdi
	callq	_fstat_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_4
# %bb.6:
	movl	$61440, %eax            # imm = 0xF000
	andl	-116(%rbp), %eax
	xorl	%r12d, %r12d
	cmpl	$8192, %eax             # imm = 0x2000
	sete	%r12b
	movl	$1024, %r15d            # imm = 0x400
	jmp	.LBB0_7
.LBB0_1:
	leaq	119(%rbx), %rax
	movq	%rax, (%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, 32(%rbx)
	jmp	.LBB0_14
.LBB0_4:
	movzwl	16(%rbx), %eax
.LBB0_5:
	testb	%al, %al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$64, %eax
	movl	$1024, %r15d            # imm = 0x400
	cmovsq	%rax, %r15
	xorl	%r12d, %r12d
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.10:
	movq	$_cleanup_r, 88(%r14)
	orb	$-128, 16(%rbx)
	movq	%rax, (%rbx)
	movq	%rax, 24(%rbx)
	movl	%r15d, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB0_13
# %bb.11:
	movswl	18(%rbx), %esi
	movq	%r14, %rdi
	callq	_isatty_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.12:
	movl	16(%rbx), %eax
	andl	$-4, %eax
	orl	$1, %eax
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_13
.LBB0_8:
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %eax              # imm = 0x200
	jne	.LBB0_14
# %bb.9:
	andl	$-4, %eax
	orl	$2, %eax
	movw	%ax, 16(%rbx)
	leaq	119(%rbx), %rax
	movq	%rax, (%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, 32(%rbx)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$96, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__smakebuf_r, .Lfunc_end0-__smakebuf_r
                                        # -- End function
	.globl	__swhatbuf_r            # -- Begin function __swhatbuf_r
	.p2align	4, 0x90
	.type	__swhatbuf_r,@function
__swhatbuf_r:                           # @__swhatbuf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$88, %rsp
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movswl	18(%rsi), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB1_2
# %bb.1:
	leaq	-112(%rbp), %rdx
	callq	_fstat_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB1_2
# %bb.3:
	movl	$61440, %eax            # imm = 0xF000
	andl	-108(%rbp), %eax
	xorl	%ecx, %ecx
	cmpl	$8192, %eax             # imm = 0x2000
	sete	%cl
	movl	%ecx, (%r15)
	movq	$1024, (%r14)           # imm = 0x400
	jmp	.LBB1_4
.LBB1_2:
	movl	$0, (%r15)
	cmpb	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$64, %eax
	movl	$1024, %ecx             # imm = 0x400
	cmovsq	%rax, %rcx
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	__swhatbuf_r, .Lfunc_end1-__swhatbuf_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
