	.text
	.file	"wf_jn.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function jnf
.LCPI0_0:
	.long	1514737627              # float 1.41484759E+16
	.text
	.globl	jnf
	.p2align	4, 0x90
	.type	jnf,@function
jnf:                                    # @jnf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movl	%edi, %ebx
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_jnf
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_10
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	fabsf
	ucomiss	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jbe	.LBB0_10
# %bb.4:
	movl	$5, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movl	$0, -24(%rbp)
	movsd	%xmm0, -48(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	-24(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_9
# %bb.8:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_10
.LBB0_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jnf, .Lfunc_end0-jnf
                                        # -- End function
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function ynf
.LCPI1_0:
	.long	1514737627              # float 1.41484759E+16
	.text
	.globl	ynf
	.p2align	4, 0x90
	.type	ynf,@function
ynf:                                    # @ynf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movl	%edi, %ebx
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_ynf
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_17
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.3:
	xorps	%xmm0, %xmm0
	ucomiss	-12(%rbp), %xmm0        # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_4
# %bb.9:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jbe	.LBB1_17
# %bb.10:
	movl	$5, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movl	$0, -24(%rbp)
	movsd	%xmm0, -48(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_12
# %bb.11:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_14
.LBB1_12:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB1_13
.LBB1_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_17
.LBB1_4:
	movl	$1, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	__fdlib_version(%rip), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_5
# %bb.6:
	movabsq	$-4503599627370496, %rcx # imm = 0xFFF0000000000000
	movq	%rcx, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jne	.LBB1_7
	jmp	.LBB1_8
.LBB1_5:
	movabsq	$-4039728866288205824, %rax # imm = 0xC7EFFFFFE0000000
	movq	%rax, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	leaq	-64(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_14
.LBB1_8:
	callq	__errno
	movl	$33, (%rax)
.LBB1_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	movl	-24(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB1_16
# %bb.15:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ynf, .Lfunc_end1-ynf
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jnf"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"ynf"
	.size	.L.str.1, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
