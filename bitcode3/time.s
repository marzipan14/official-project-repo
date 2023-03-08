	.text
	.file	"time.c"
	.globl	time                    # -- Begin function time
	.p2align	4, 0x90
	.type	time,@function
time:                                   # @time
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	callq	__getreent
	leaq	-24(%rbp), %rsi
	movq	%rax, %rdi
	xorl	%edx, %edx
	callq	_gettimeofday_r
	testl	%eax, %eax
	jns	.LBB0_2
# %bb.1:
	movq	$-1, -24(%rbp)
.LBB0_2:
	movq	-24(%rbp), %rax
	testq	%rbx, %rbx
	je	.LBB0_4
# %bb.3:
	movq	%rax, (%rbx)
.LBB0_4:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	time, .Lfunc_end0-time
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
