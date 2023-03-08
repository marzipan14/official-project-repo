	.text
	.file	"ef_sqrt.c"
	.globl	__ieee754_sqrtf         # -- Begin function __ieee754_sqrtf
	.p2align	4, 0x90
	.type	__ieee754_sqrtf,@function
__ieee754_sqrtf:                        # @__ieee754_sqrtf
# %bb.0:
	movd	%xmm0, %edx
	movl	%edx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	testl	%eax, %eax
	je	.LBB0_17
# %bb.3:
	testl	%edx, %edx
	js	.LBB0_4
# %bb.5:
	movl	%edx, %r8d
	shrl	$23, %r8d
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	ja	.LBB0_11
# %bb.6:
	xorl	%eax, %eax
	testl	$8388608, %edx          # imm = 0x800000
	jne	.LBB0_7
# %bb.8:                                # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdx), %ecx
	addl	$1, %eax
	testl	$4194304, %edx          # imm = 0x400000
	movl	%ecx, %edx
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_1:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_7:
	movl	%edx, %ecx
.LBB0_10:
	subl	%eax, %r8d
	addl	$1, %r8d
	movl	%ecx, %edx
.LBB0_11:
	addl	$-127, %r8d
	andl	$8388607, %edx          # imm = 0x7FFFFF
	orl	$8388608, %edx          # imm = 0x800000
	movl	%r8d, %ecx
	andb	$1, %cl
	shll	%cl, %edx
	xorl	%r9d, %r9d
	movl	$16777216, %ecx         # imm = 0x1000000
	xorl	%r10d, %r10d
	jmp	.LBB0_12
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%eax, %edx
	shrl	$2, %ecx
.LBB0_12:                               # =>This Inner Loop Header: Depth=1
	addl	%edx, %edx
	leal	(%rcx,%r10), %esi
	movl	%edx, %eax
	subl	%esi, %eax
	jge	.LBB0_14
# %bb.13:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%edx, %eax
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_12 Depth=1
	addl	%ecx, %esi
	addl	%ecx, %r9d
	movl	%esi, %r10d
.LBB0_15:                               #   in Loop: Header=BB0_12 Depth=1
	movl	%ecx, %esi
	shrl	%esi
	je	.LBB0_16
# %bb.18:                               #   in Loop: Header=BB0_12 Depth=1
	addl	%eax, %eax
	leal	(%rsi,%r10), %edi
	movl	%eax, %edx
	subl	%edi, %edx
	jl	.LBB0_19
# %bb.20:                               #   in Loop: Header=BB0_12 Depth=1
	addl	%esi, %edi
	addl	%esi, %r9d
	movl	%edi, %r10d
	shrl	$2, %ecx
	jmp	.LBB0_12
.LBB0_16:
	andl	$-2, %r8d
	shll	$22, %r8d
	movl	%r9d, %ecx
	andl	$1, %ecx
	testl	%eax, %eax
	cmovel	%eax, %ecx
	addl	%r9d, %ecx
	sarl	%ecx
	leal	(%r8,%rcx), %eax
	addl	$1056964608, %eax       # imm = 0x3F000000
	movd	%eax, %xmm0
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	__ieee754_sqrtf, .Lfunc_end0-__ieee754_sqrtf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
