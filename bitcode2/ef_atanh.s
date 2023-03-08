	.text
	.file	"ef_atanh.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_atanhf
.LCPI0_0:
	.long	1065353216              # float 1
.LCPI0_1:
	.long	1900671690              # float 1.00000002E+30
.LCPI0_2:
	.long	1056964608              # float 0.5
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
.LCPI0_3:
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.long	2147483648              # float -0
	.text
	.globl	__ieee754_atanhf
	.p2align	4, 0x90
	.type	__ieee754_atanhf,@function
__ieee754_atanhf:                       # @__ieee754_atanhf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movd	%xmm0, %ebx
	movl	%ebx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353217, %eax       # imm = 0x3F800001
	jb	.LBB0_2
# %bb.1:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_12
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1065353216, %eax       # imm = 0x3F800000
	jne	.LBB0_4
# %bb.3:
	xorps	%xmm1, %xmm1
	divss	%xmm1, %xmm0
	jmp	.LBB0_12
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$830472191, %eax        # imm = 0x317FFFFF
	ja	.LBB0_7
# %bb.5:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	addss	%xmm0, %xmm1
	xorps	%xmm2, %xmm2
	ucomiss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_12
# %bb.6:
	movd	%eax, %xmm2
	movdqa	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_8
.LBB0_7:
	movd	%eax, %xmm2
	movdqa	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1056964607, %eax       # imm = 0x3EFFFFFF
	ja	.LBB0_9
.LBB0_8:
	movaps	%xmm1, %xmm0
	mulss	%xmm2, %xmm0
	movss	.LCPI0_0(%rip), %xmm3   # xmm3 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm3
	divss	%xmm3, %xmm0
	addss	%xmm1, %xmm0
	jmp	.LBB0_10
.LBB0_9:
	movss	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero,zero,zero
	subss	%xmm2, %xmm0
	divss	%xmm0, %xmm1
	movaps	%xmm1, %xmm0
.LBB0_10:
	callq	log1pf
	movl	$42, __A_VARIABLE(%rip)
	mulss	.LCPI0_2(%rip), %xmm0
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jns	.LBB0_12
# %bb.11:
	xorps	.LCPI0_3(%rip), %xmm0
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_atanhf, .Lfunc_end0-__ieee754_atanhf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
