	.text
	.file	"ef_log10.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function __ieee754_log10f
.LCPI0_0:
	.long	4286578688              # float -Inf
.LCPI0_1:
	.long	1275068416              # float 33554432
.LCPI0_2:
	.long	894707675               # float 7.90341517E-7
.LCPI0_3:
	.long	1054759897              # float 0.434294492
.LCPI0_4:
	.long	1050288256              # float 0.301029205
	.text
	.globl	__ieee754_log10f
	.p2align	4, 0x90
	.type	__ieee754_log10f,@function
__ieee754_log10f:                       # @__ieee754_log10f
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movd	%xmm0, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB0_1
# %bb.2:
	movdqa	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jge	.LBB0_5
# %bb.6:
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB0_8
# %bb.7:
	mulss	.LCPI0_1(%rip), %xmm1
	movd	%xmm1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-25, %ecx
.LBB0_8:
	movl	%eax, %edx
	sarl	$23, %edx
	leal	(%rdx,%rcx), %esi
	addl	%edx, %ecx
	addl	$-127, %ecx
	shrl	$31, %ecx
	andl	$8388607, %eax          # imm = 0x7FFFFF
	leal	(%rcx,%rsi), %edx
	addl	$-127, %edx
                                        # kill: def $ecx killed $ecx killed $rcx
	shll	$23, %ecx
	orl	%eax, %ecx
	cvtsi2ss	%edx, %xmm2
	movss	%xmm2, -4(%rbp)         # 4-byte Spill
	xorl	$1065353216, %ecx       # imm = 0x3F800000
	movd	%ecx, %xmm0
	movss	.LCPI0_2(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm2, %xmm1
	movss	%xmm1, -8(%rbp)         # 4-byte Spill
	callq	__ieee754_logf
	movss	-4(%rbp), %xmm1         # 4-byte Reload
                                        # xmm1 = mem[0],zero,zero,zero
	mulss	.LCPI0_3(%rip), %xmm0
	addss	-8(%rbp), %xmm0         # 4-byte Folded Reload
	mulss	.LCPI0_4(%rip), %xmm1
	addss	%xmm0, %xmm1
	jmp	.LBB0_9
.LBB0_1:
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	jmp	.LBB0_9
.LBB0_3:
	subss	%xmm1, %xmm1
	pxor	%xmm0, %xmm0
	divss	%xmm0, %xmm1
	jmp	.LBB0_9
.LBB0_5:
	addss	%xmm1, %xmm1
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm1, %xmm0
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__ieee754_log10f, .Lfunc_end0-__ieee754_log10f
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
