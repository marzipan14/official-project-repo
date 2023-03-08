	.text
	.file	"sf_fdim.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function fdimf
.LCPI0_0:
	.long	2139095040              # float +Inf
	.text
	.globl	fdimf
	.p2align	4, 0x90
	.type	fdimf,@function
fdimf:                                  # @fdimf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movaps	%xmm1, -32(%rbp)        # 16-byte Spill
	movss	%xmm0, -12(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	%eax, %ebx
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movaps	-32(%rbp), %xmm2        # 16-byte Reload
	cmpl	$1, %ebx
	jne	.LBB0_6
# %bb.5:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_7
.LBB0_1:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_7
.LBB0_3:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB0_7
.LBB0_6:
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	movaps	%xmm1, %xmm0
	subss	%xmm2, %xmm0
	cmpltss	%xmm1, %xmm2
	andps	%xmm0, %xmm2
	movaps	%xmm2, %xmm0
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	fdimf, .Lfunc_end0-fdimf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
