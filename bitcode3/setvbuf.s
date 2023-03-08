	.text
	.file	"setvbuf.c"
	.globl	setvbuf                 # -- Begin function setvbuf
	.p2align	4, 0x90
	.type	setvbuf,@function
setvbuf:                                # @setvbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %r15
	movl	%edx, %r14d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r12
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r12)
	je	.LBB0_2
.LBB0_3:
	cmpl	$2, %r14d
	je	.LBB0_6
.LBB0_4:
	movl	$-1, %r13d
	cmpl	$1, %r14d
	ja	.LBB0_33
# %bb.5:
	testl	%r15d, %r15d
	jns	.LBB0_6
	jmp	.LBB0_33
.LBB0_2:
	movq	%r12, %rdi
	callq	__sinit
	cmpl	$2, %r14d
	jne	.LBB0_4
.LBB0_6:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.7:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_9
# %bb.8:
	callq	free
.LBB0_9:
	movq	$0, 88(%rbx)
.LBB0_10:
	movl	$0, 40(%rbx)
	movl	$0, 8(%rbx)
	movzwl	16(%rbx), %eax
	testb	%al, %al
	jns	.LBB0_12
# %bb.11:
	movq	24(%rbx), %rdi
	callq	free
	movzwl	16(%rbx), %eax
.LBB0_12:
	andl	$62300, %eax            # imm = 0xF35C
	xorl	%r13d, %r13d
	movw	%ax, 16(%rbx)
	cmpl	$2, %r14d
	jne	.LBB0_13
.LBB0_30:
	orb	$2, 16(%rbx)
	movl	$0, 12(%rbx)
	leaq	119(%rbx), %rax
	movq	%rax, (%rbx)
	movq	%rax, 24(%rbx)
	movl	$1, 32(%rbx)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	jmp	.LBB0_33
.LBB0_13:
	leaq	-56(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__swhatbuf_r
	orw	%ax, 16(%rbx)
	testq	%r15, %r15
	jne	.LBB0_14
# %bb.15:
	movq	-56(%rbp), %r13
	testq	%r15, %r15
	je	.LBB0_17
.LBB0_22:
	cmpl	$0, 80(%r12)
	jne	.LBB0_24
.LBB0_23:
	movq	%r12, %rdi
	callq	__sinit
.LBB0_24:
	movzwl	16(%rbx), %eax
	cmpl	$1, %r14d
	jne	.LBB0_26
# %bb.25:
	orl	$1, %eax
	movw	%ax, 16(%rbx)
.LBB0_26:
	movq	%r15, (%rbx)
	movq	%r15, 24(%rbx)
	movl	%r13d, 32(%rbx)
	cwtl
	testb	$8, %al
	jne	.LBB0_27
# %bb.29:
	movl	$0, 12(%rbx)
	jmp	.LBB0_32
.LBB0_14:
	movq	%r15, %r13
	movq	-64(%rbp), %r15         # 8-byte Reload
	testq	%r15, %r15
	jne	.LBB0_22
.LBB0_17:
	movq	%r13, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_19
# %bb.18:
	movq	%rax, %r15
	movq	%r13, %rcx
.LBB0_21:
	orb	$-128, 16(%rbx)
	movq	%rcx, %r13
	cmpl	$0, 80(%r12)
	jne	.LBB0_24
	jmp	.LBB0_23
.LBB0_27:
	testb	$1, %al
	jne	.LBB0_28
# %bb.31:
	movl	%r13d, 12(%rbx)
	jmp	.LBB0_32
.LBB0_28:
	movl	$0, 12(%rbx)
	negl	%r13d
	movl	%r13d, 40(%rbx)
.LBB0_32:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	xorl	%r13d, %r13d
.LBB0_33:
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_19:
	movq	-56(%rbp), %r15
	movq	%r13, %rax
	movl	$-1, %r13d
	cmpq	%r15, %rax
	je	.LBB0_30
# %bb.20:
	movq	%r15, %rdi
	callq	malloc
	movq	%r15, %rcx
	movq	%rax, %r15
	testq	%rax, %rax
	jne	.LBB0_21
	jmp	.LBB0_30
.Lfunc_end0:
	.size	setvbuf, .Lfunc_end0-setvbuf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
