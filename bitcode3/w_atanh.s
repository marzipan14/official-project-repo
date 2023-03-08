	.text
	.file	"w_atanh.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function atanh
.LCPI0_0:
	.quad	4607182418800017408     # double 1
	.text
	.globl	atanh
	.p2align	4, 0x90
	.type	atanh,@function
atanh:                                  # @atanh
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_atanh
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_13
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	ucomisd	.LCPI0_0(%rip), %xmm0
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jb	.LBB0_13
# %bb.4:
	jbe	.LBB0_6
# %bb.5:
	movl	$1, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movsd	%xmm0, -56(%rbp)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB0_13
.LBB0_6:
	movl	$2, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	movsd	-16(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movsd	%xmm1, -48(%rbp)
	movsd	%xmm1, -56(%rbp)
	xorpd	%xmm0, %xmm0
	divsd	%xmm0, %xmm1
	movsd	%xmm1, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_9
.LBB0_8:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_10
.LBB0_9:
	callq	__errno
	movl	$33, (%rax)
.LBB0_10:
	movl	-32(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_12
# %bb.11:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_12:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB0_13:
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atanh, .Lfunc_end0-atanh
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"atanh"
	.size	.L.str, 6

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
