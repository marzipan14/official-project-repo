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
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r13, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	je	.LBB0_6
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r12d
	cmpl	$1, %r15d
	ja	.LBB0_33
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	js	.LBB0_33
.LBB0_6:
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_fflush_r
	movq	88(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_10
# %bb.7:
	leaq	116(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB0_9
# %bb.8:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movq	$0, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	$0, 40(%rbx)
	movl	$0, 8(%rbx)
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jns	.LBB0_12
# %bb.11:
	movq	24(%rbx), %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
.LBB0_12:
	andl	$62300, %eax            # imm = 0xF35C
	xorl	%r12d, %r12d
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
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
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_33
.LBB0_13:
	leaq	-56(%rbp), %rdx
	leaq	-68(%rbp), %rcx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__swhatbuf_r
	orw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_14
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	jne	.LBB0_19
	jmp	.LBB0_16
.LBB0_14:
	movq	-56(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movq	%r14, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_26
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
.LBB0_18:
	orb	$-128, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r14
.LBB0_19:
	cmpl	$0, 80(%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_21
# %bb.20:
	movq	%r13, %rdi
	movq	%rax, %r12
	callq	__sinit
	movq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %ecx
	cmpl	$1, %r15d
	jne	.LBB0_23
# %bb.22:
	orl	$1, %ecx
	movw	%cx, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:
	movq	%rax, (%rbx)
	movq	%rax, 24(%rbx)
	movl	%r14d, 32(%rbx)
	movswl	%cx, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB0_24
# %bb.34:
	movl	$0, 12(%rbx)
	jmp	.LBB0_32
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB0_25
# %bb.31:
	movl	%r14d, 12(%rbx)
	jmp	.LBB0_32
.LBB0_26:
	movq	-56(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r14
	jne	.LBB0_28
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_25:
	movl	$0, 12(%rbx)
	negl	%r14d
	movl	%r14d, 40(%rbx)
.LBB0_32:
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_28:
	movq	%r12, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_18
.LBB0_29:
	movl	$-1, %r12d
	jmp	.LBB0_30
.Lfunc_end0:
	.size	setvbuf, .Lfunc_end0-setvbuf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
