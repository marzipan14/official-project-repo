	.text
	.file	"w_jn.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function jn
.LCPI0_0:
	.quad	4848443837175311640     # double 14148475504056880
	.text
	.globl	jn
	.p2align	4, 0x90
	.type	jn,@function
jn:                                     # @jn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movl	%edi, %ebx
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_jn
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB0_10
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
	jbe	.LBB0_10
# %bb.4:
	movl	$5, -72(%rbp)
	movq	$.L.str, -64(%rbp)
	movl	$0, -32(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
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
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jn, .Lfunc_end0-jn
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	3               # -- Begin function yn
.LCPI1_0:
	.quad	-4503599627370496       # double -Inf
	.quad	-4039728866288205824    # double -3.4028234663852886E+38
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI1_1:
	.quad	4848443837175311640     # double 14148475504056880
	.text
	.globl	yn
	.p2align	4, 0x90
	.type	yn,@function
yn:                                     # @yn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$72, %rsp
	movl	%edi, %ebx
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	callq	__ieee754_yn
	cmpl	$-1, __fdlib_version(%rip)
	je	.LBB1_14
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	testl	%eax, %eax
	je	.LBB1_2
# %bb.3:
	xorpd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	jae	.LBB1_4
# %bb.7:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_1(%rip), %xmm0
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB1_14
# %bb.8:
	movl	$5, -72(%rbp)
	movq	$.L.str.1, -64(%rbp)
	movl	$0, -32(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movq	$0, -40(%rbp)
	cmpl	$2, __fdlib_version(%rip)
	je	.LBB1_10
# %bb.9:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB1_11
.LBB1_10:
	callq	__errno
	movl	$34, (%rax)
	jmp	.LBB1_11
.LBB1_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB1_14
.LBB1_4:
	movl	$1, -72(%rbp)
	movq	$.L.str.1, -64(%rbp)
	movl	$0, -32(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -56(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	movl	__fdlib_version(%rip), %eax
	xorl	%ecx, %ecx
	testl	%eax, %eax
	sete	%cl
	movsd	.LCPI1_0(,%rcx,8), %xmm0 # xmm0 = mem[0],zero
	movsd	%xmm0, -40(%rbp)
	cmpl	$2, %eax
	je	.LBB1_6
# %bb.5:
	leaq	-72(%rbp), %rdi
	callq	matherr
	testl	%eax, %eax
	jne	.LBB1_11
.LBB1_6:
	callq	__errno
	movl	$33, (%rax)
.LBB1_11:
	movl	-32(%rbp), %ebx
	testl	%ebx, %ebx
	je	.LBB1_13
# %bb.12:
	callq	__errno
	movl	%ebx, (%rax)
.LBB1_13:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	yn, .Lfunc_end1-yn
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"jn"
	.size	.L.str, 3

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"yn"
	.size	.L.str.1, 3

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
