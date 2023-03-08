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
	movd	%xmm1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	andl	$2147483647, %r15d      # imm = 0x7FFFFFFF
	je	.LBB0_3
# %bb.1:
	movd	%xmm0, %r14d
	movl	%r14d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095039, %ebx       # imm = 0x7F7FFFFF
	ja	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %r15d      # imm = 0x7F800001
	jb	.LBB0_4
.LBB0_3:
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2130706431, %r15d      # imm = 0x7EFFFFFF
	movd	%xmm1, -28(%rbp)        # 4-byte Folded Spill
	ja	.LBB0_6
# %bb.5:
	addss	%xmm1, %xmm1
	callq	__ieee754_fmodf
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebx
	jne	.LBB0_8
# %bb.7:
	xorps	%xmm1, %xmm1
	mulss	%xmm1, %xmm0
	jmp	.LBB0_16
.LBB0_8:
	andl	$-2147483648, %r14d     # imm = 0x80000000
	callq	fabsf
	movdqa	%xmm0, -48(%rbp)        # 16-byte Spill
	movss	-28(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	fabsf
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16777215, %r15d        # imm = 0xFFFFFF
	ja	.LBB0_11
# %bb.9:
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_15
# %bb.10:
	subss	%xmm0, %xmm2
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	jmp	.LBB0_13
.LBB0_11:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movaps	-48(%rbp), %xmm2        # 16-byte Reload
	ucomiss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_15
# %bb.12:
	subss	%xmm0, %xmm2
	ucomiss	%xmm1, %xmm2
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB0_15
# %bb.14:
	subss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movd	%r14d, %xmm0
	pxor	%xmm2, %xmm0
	jmp	.LBB0_16
.Lfunc_end0:
	.size	__ieee754_remainderf, .Lfunc_end0-__ieee754_remainderf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
