	.text
	.file	"wf_j0.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function j0f
.LCPI0_0:
	.long	1514737627              # float 1.41484759E+16
	.text
	.globl	j0f
	.p2align	4, 0x90
	.type	j0f,@function
j0f:                                    # @j0f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_j0f
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_10
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
	jbe	.LBB0_10
# %bb.4:
	movl	$5, -64(%rbp)
	movq	$.L.str, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
.LBB0_7:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB0_9
# %bb.8:
	callq	__errno
	movl	%ebx, (%rax)
.LBB0_9:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
	jmp	.LBB0_10
.LBB0_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_10:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	j0f, .Lfunc_end0-j0f
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function y0f
.LCPI1_0:
	.quad	-4503599627370496       # double -Inf
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI1_1:
	.long	1514737627              # float 1.41484759E+16
	.text
	.globl	y0f
	.p2align	4, 0x90
	.type	y0f,@function
y0f:                                    # @y0f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$56, %rsp
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__ieee754_y0f
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB1_14
# %bb.1:
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB1_2
# %bb.3:
	xorps	%xmm0, %xmm0
	ucomiss	-12(%rbp), %xmm0        # 4-byte Folded Reload
	jae	.LBB1_4
# %bb.7:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	ucomiss	.LCPI1_1(%rip), %xmm0
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jbe	.LBB1_14
# %bb.8:
	movl	$5, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movq	$0, -32(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB1_10
# %bb.9:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB1_11
.LBB1_10:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB1_11
.LBB1_2:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB1_14
.LBB1_4:
	movl	$1, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	movl	$0, -24(%rbp)
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	cvtss2sd	%xmm0, %xmm0
	movsd	%xmm0, -40(%rbp)
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI1_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -32(%rbp)
	cmpl	$2, %eax
	je	.LBB1_6
# %bb.5:
	leaq	-64(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB1_11
.LBB1_6:
	callq	__errno
	movl	$33, (%rax)
.LBB1_11:
	movl	-24(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB1_13
# %bb.12:
	callq	__errno
	movl	%ebx, (%rax)
.LBB1_13:
	movsd	-32(%rbp), %xmm0        # xmm0 = mem[0],zero
	cvtsd2ss	%xmm0, %xmm0
.LBB1_14:
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	y0f, .Lfunc_end1-y0f
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"j0f"
	.size	.L.str, 4

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"y0f"
	.size	.L.str.1, 4

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
