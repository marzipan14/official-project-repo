	.text
	.file	"ef_remainder.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_remainderf
.LCPI0_0:
	.long	1056964608              # float 0.5
	.text
	.globl	__ieee754_remainderf
	.p2align	4, 0x90
	.type	__ieee754_remainderf,@function
__ieee754_remainderf:                   # @__ieee754_remainderf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	cmpl	$2139095039, %ebx       # imm = 0x7F7FFFFF
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %r15d
	andl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	leal	-1(%r15), %eax
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_2
# %bb.3:
	cmpl	$2130706431, %r15d      # imm = 0x7EFFFFFF
	movd	%xmm1, -28(%rbp)        # 4-byte Folded Spill
	ja	.LBB0_5
# %bb.4:
	addss	%xmm1, %xmm1
	callq	__ieee754_fmodf
.LBB0_5:
	cmpl	%r15d, %ebx
	jne	.LBB0_7
# %bb.6:
	xorps	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	jmp	.LBB0_14
.LBB0_2:
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_7:
	andl	$-2147483648, %r14d     # imm = 0x80000000
	callq	fabsf
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	fabsf
	cmpl	$16777215, %r15d        # imm = 0xFFFFFF
	ja	.LBB0_10
# %bb.8:
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jbe	.LBB0_13
# %bb.9:
	subss	%xmm0, %xmm2
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jae	.LBB0_12
	jmp	.LBB0_13
.LBB0_10:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	ucomiss	%xmm1, %xmm2
	jbe	.LBB0_13
# %bb.11:
	subss	%xmm0, %xmm2
	ucomiss	%xmm1, %xmm2
	jb	.LBB0_13
.LBB0_12:
	subss	%xmm0, %xmm2
.LBB0_13:
	movd	%r14d, %xmm0
	pxor	%xmm2, %xmm0
.LBB0_14:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_remainderf, .Lfunc_end0-__ieee754_remainderf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
