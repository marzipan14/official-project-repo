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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_10
# %bb.1:
	movsd	%xmm0, -24(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	fabs
	ucomisd	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.5:
	leaq	-72(%rbp), %rdi
	callq	matherr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_7
.LBB0_6:
	callq	__errno
	movl	$34, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	-32(%rbp), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB0_9
# %bb.8:
	callq	__errno
	movl	%ebx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:
	movsd	-40(%rbp), %xmm0        # xmm0 = mem[0],zero
	jmp	.LBB0_10
.LBB0_2:
	movsd	-24(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	jn, .Lfunc_end0-jn
                                        # -- End function
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function yn
.LCPI1_0:
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_17
# %bb.1:
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	__fpclassifyd
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_2
# %bb.3:
	xorpd	%xmm0, %xmm0
	ucomisd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_4
# %bb.9:
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	ucomisd	.LCPI1_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jbe	.LBB1_17
# %bb.10:
	movl	$5, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
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
	movsd	-72(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
	jmp	.LBB1_17
.LBB1_4:
	movl	$1, -64(%rbp)
	movq	$.L.str.1, -56(%rbp)
	movl	$0, -24(%rbp)
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -48(%rbp)
	movsd	-16(%rbp), %xmm0        # 8-byte Reload
                                        # xmm0 = mem[0],zero
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
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
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
