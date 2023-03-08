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
	pushq	%rax
	movss	%xmm1, -12(%rbp)        # 4-byte Spill
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	%eax, %ebx
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	__fpclassifyf
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movss	-12(%rbp), %xmm2        # 4-byte Reload
                                        # xmm2 = mem[0],zero,zero,zero
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB0_6
# %bb.5:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_8
.LBB0_1:
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_8
.LBB0_3:
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_8
.LBB0_6:
	movss	-16(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	xorps	%xmm0, %xmm0
	jbe	.LBB0_8
# %bb.7:
	subss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
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
