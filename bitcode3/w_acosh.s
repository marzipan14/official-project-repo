	.text
	.file	"w_acosh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function acosh
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	acosh
	.p2align	4, 0x90
	.type	acosh,@function
acosh:                                  # @acosh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	callq	__ieee754_acosh
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_10
# %bb.1:
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_2
# %bb.3:
	testl	%eax, %eax
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	je	.LBB0_10
# %bb.4:
	movl	$1, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$33, (%rax)
.LBB0_7:
	movl	-32(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_9
# %bb.8:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_9:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB0_10
.LBB0_2:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_10:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	acosh, .Lfunc_end0-acosh
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"acosh"
	.size	.L.str, 6

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
