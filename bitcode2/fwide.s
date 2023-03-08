	.text
	.file	"fwide.c"
	.globl	_fwide_r                # -- Begin function _fwide_r
	.p2align	4, 0x90
	.type	_fwide_r,@function
_fwide_r:                               # @_fwide_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	leaq	-12(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	172(%rbx), %eax
	movzwl	16(%rbx), %ecx
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$8192, %ecx             # imm = 0x2000
	je	.LBB0_5
# %bb.4:
	shrl	$12, %eax
	andl	$2, %eax
	addl	$-1, %eax
	movl	%eax, %ebx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %edi
	leaq	-12(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fwide_r, .Lfunc_end0-_fwide_r
                                        # -- End function
	.globl	fwide                   # -- Begin function fwide
	.p2align	4, 0x90
	.type	fwide,@function
fwide:                                  # @fwide
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	leaq	-12(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	172(%rbx), %eax
	movzwl	16(%rbx), %ecx
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	$8192, %ecx             # imm = 0x2000
	je	.LBB1_5
# %bb.4:
	shrl	$12, %eax
	andl	$2, %eax
	addl	$-1, %eax
	movl	%eax, %ebx
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	-12(%rbp), %edi
	leaq	-12(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fwide, .Lfunc_end1-fwide
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
