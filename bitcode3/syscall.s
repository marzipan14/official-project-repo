	.text
	.file	"syscall.c"
	.globl	syscall                 # -- Begin function syscall
	.p2align	4, 0x90
	.type	syscall,@function
syscall:                                # @syscall
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rsi
	xorl	%eax, %eax
	callq	uk_pr_err
	movq	$-88, %rax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	syscall, .Lfunc_end0-syscall
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_err
	.type	uk_pr_err,@function
uk_pr_err:                              # @uk_pr_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
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
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_err.__str, %esi
	movl	$uk_pr_err.__str.1, %edx
	movl	$.L.str, %r8d
	movl	$1, %edi
	movl	$190, %ecx
	callq	_uk_vprintk
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_err, .Lfunc_end1-uk_pr_err
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"No such system call %lu\n"
	.size	.L.str, 25

	.type	uk_pr_err.__str,@object # @uk_pr_err.__str
	.section	.data_shared,"aw",@progbits
uk_pr_err.__str:
	.asciz	"libnewlibglue"
	.size	uk_pr_err.__str, 14

	.type	uk_pr_err.__str.1,@object # @uk_pr_err.__str.1
uk_pr_err.__str.1:
	.asciz	"syscall.c"
	.size	uk_pr_err.__str.1, 10

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
