	.text
	.file	"sf_asinh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function asinhf
.LCPI0_0:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_1:
	.long	1065353216              # float 1
.LCPI0_2:
	.long	1060205080              # float 0.693147182
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	asinhf
	.p2align	4, 0x90
	.type	asinhf,@function
asinhf:                                 # @asinhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	ucomiss	.LCPI0_1(%rip), %xmm1
	jbe	.LBB0_4
# %bb.3:
	cmpl	$830472192, %eax        # imm = 0x31800000
	jb	.LBB0_11
.LBB0_4:
	cmpl	$1300234241, %eax       # imm = 0x4D800001
	jb	.LBB0_6
# %bb.5:
	callq	fabsf
	callq	__ieee754_logf
	addss	.LCPI0_2(%rip), %xmm0
	testl	%ebx, %ebx
	jg	.LBB0_11
	jmp	.LBB0_10
.LBB0_1:
	addss	%xmm0, %xmm0
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_6:
	cmpl	$1073741825, %eax       # imm = 0x40000001
	jb	.LBB0_8
# %bb.7:
	movaps	%xmm0, -32(%rbp)        # 16-byte Spill
	callq	fabsf
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movaps	%xmm0, %xmm1
	addss	%xmm0, %xmm1
	movss	%xmm1, -12(%rbp)        # 4-byte Spill
	movaps	-32(%rbp), %xmm0        # 16-byte Reload
	mulss	%xmm0, %xmm0
	addss	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_sqrtf
	addss	-16(%rbp), %xmm0        # 4-byte Folded Reload
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	callq	__ieee754_logf
	testl	%ebx, %ebx
	jg	.LBB0_11
	jmp	.LBB0_10
.LBB0_8:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	%xmm1, -12(%rbp)        # 4-byte Spill
	callq	fabsf
	movss	%xmm0, -16(%rbp)        # 4-byte Spill
	movss	-12(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	.LCPI0_1(%rip), %xmm0
	callq	__ieee754_sqrtf
	addss	.LCPI0_1(%rip), %xmm0
	movss	-12(%rbp), %xmm1        # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	divss	%xmm0, %xmm1
	movss	-16(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	addss	%xmm1, %xmm0
	callq	log1pf
	testl	%ebx, %ebx
	jg	.LBB0_11
.LBB0_10:
	xorps	.LCPI0_3(%rip), %xmm0
	jmp	.LBB0_11
.Lfunc_end0:
	.size	asinhf, .Lfunc_end0-asinhf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
