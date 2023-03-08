	.text
	.file	"wf_atanh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function atanhf
.LCPI0_0:
	.long	1065353216              # float 1
	.text
	.globl	atanhf
	.p2align	4, 0x90
	.type	atanhf,@function
atanhf:                                 # @atanhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_atanhf
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_13
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	fabsf
	ucomiss	.LCPI0_0(%rip), %xmm0
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jb	.LBB0_13
# %bb.4:
	jbe	.LBB0_6
# %bb.5:
	movl	$1, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movabsq	$9221120237041090560, %rax # imm = 0x7FF8000000000000
	movq	%rax, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	jne	.LBB0_8
	jmp	.LBB0_9
.LBB0_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_13
.LBB0_6:
	movl	$2, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	xorpd	%xmm1, %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_9
.LBB0_8:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_10
.LBB0_9:
	callq	__errno
	movl	$33, (%rax)
.LBB0_10:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_12
# %bb.11:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_12:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	atanhf, .Lfunc_end0-atanhf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"atanhf"
	.size	.L.str, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
