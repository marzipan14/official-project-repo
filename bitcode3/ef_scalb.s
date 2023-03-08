	.text
	.file	"ef_scalb.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_scalbf
.LCPI0_0:
	.long	1199433728              # float 65000
.LCPI0_1:
	.long	3346917376              # float -65000
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_2:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_scalbf
	.p2align	4, 0x90
	.type	__ieee754_scalbf,@function
__ieee754_scalbf:                       # @__ieee754_scalbf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	movaps	%xmm1, -32(%rbp)        # 16-byte Spill
	movss	%xmm0, -4(%rbp)         # 4-byte Spill
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_2
# %bb.1:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	__fpclassifyf
	testl	%eax, %eax
	je	.LBB0_2
# %bb.3:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	finitef
	testl	%eax, %eax
	je	.LBB0_4
# %bb.6:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	callq	rintf
	ucomiss	-32(%rbp), %xmm0        # 16-byte Folded Reload
	jne	.LBB0_7
	jnp	.LBB0_9
.LBB0_7:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_8
.LBB0_4:
	xorps	%xmm0, %xmm0
	movaps	-32(%rbp), %xmm1        # 16-byte Reload
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_5
.LBB0_2:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	mulss	-32(%rbp), %xmm0        # 16-byte Folded Reload
.LBB0_8:
	addq	$32, %rsp
	popq	%rbp
	retq
.LBB0_9:
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	ucomiss	.LCPI0_0(%rip), %xmm0
	jbe	.LBB0_12
# %bb.10:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$65000, %edi            # imm = 0xFDE8
	jmp	.LBB0_11
.LBB0_5:
	movaps	-32(%rbp), %xmm1        # 16-byte Reload
	xorps	.LCPI0_2(%rip), %xmm1
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	divss	%xmm1, %xmm0
	jmp	.LBB0_8
.LBB0_12:
	movss	.LCPI0_1(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	ucomiss	-32(%rbp), %xmm0        # 16-byte Folded Reload
	jbe	.LBB0_14
# %bb.13:
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	movl	$-65000, %edi           # imm = 0xFFFF0218
	jmp	.LBB0_11
.LBB0_14:
	cvttss2si	-32(%rbp), %edi # 16-byte Folded Reload
	movss	-4(%rbp), %xmm0         # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
.LBB0_11:
	addq	$32, %rsp
	popq	%rbp
	jmp	scalbnf                 # TAILCALL
.Lfunc_end0:
	.size	__ieee754_scalbf, .Lfunc_end0-__ieee754_scalbf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
