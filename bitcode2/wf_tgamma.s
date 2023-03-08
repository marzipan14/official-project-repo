	.text
	.file	"wf_tgamma.c"
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function tgammaf
.LCPI0_0:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	tgammaf
	.p2align	4, 0x90
	.type	tgammaf,@function
tgammaf:                                # @tgammaf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	leaq	-8(%rbp), %rdi
	movss	%xmm0, -4(%rbp)         # 4-byte Spill
	callq	__ieee754_gammaf_r
	cmpl	$0, -8(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_2
# %bb.1:
	xorps	.LCPI0_0(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
.LBB0_2:
	cmpl	$-1, __fdlib_version(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_11
# %bb.3:
	movaps	%xmm0, -32(%rbp)        # 16-byte Spill
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_11
.LBB0_5:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	finitef
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	je	.LBB0_11
# %bb.6:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	floorf
	movaps	%xmm0, %xmm1
	xorps	%xmm0, %xmm0
	movss	-4(%rbp), %xmm2         # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm0
	xorps	%xmm0, %xmm0
	cvtss2sd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_9
# %bb.7:
	ucomiss	%xmm2, %xmm1
	jne	.LBB0_9
	jp	.LBB0_9
# %bb.8:
	movaps	%xmm0, %xmm1
	movl	$141, %edi
	jmp	.LBB0_10
.LBB0_9:
	movaps	%xmm0, %xmm1
	movl	$140, %edi
.LBB0_10:
	callq	__kernel_standard
	cvtsd2ss	%xmm0, %xmm0
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	tgammaf, .Lfunc_end0-tgammaf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
