	.text
	.file	"ef_sqrt.c"
	.globl	__ieee754_sqrtf         # -- Begin function __ieee754_sqrtf
	.p2align	4, 0x90
	.type	__ieee754_sqrtf,@function
__ieee754_sqrtf:                        # @__ieee754_sqrtf
# %bb.0:
	movd	%xmm0, %ecx
	movl	%ecx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_21
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_4
# %bb.5:
	movl	%ecx, %r8d
	shrl	$23, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	ja	.LBB0_11
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$8388608, %ecx          # imm = 0x800000
	jne	.LBB0_7
# %bb.8:                                # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%rcx), %edx
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$4194304, %ecx          # imm = 0x400000
	movl	%edx, %ecx
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_1:
	movdqa	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	addss	%xmm1, %xmm0
	jmp	.LBB0_21
.LBB0_4:
	subss	%xmm0, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_21
.LBB0_7:
	movl	%ecx, %edx
.LBB0_10:
	subl	%eax, %r8d
	addl	$1, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
.LBB0_11:
	addl	$-127, %r8d
	andl	$8388607, %ecx          # imm = 0x7FFFFF
	orl	$8388608, %ecx          # imm = 0x800000
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r8b
	je	.LBB0_13
# %bb.12:
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r9d, %r9d
	movl	$16777216, %edx         # imm = 0x1000000
	xorl	%r10d, %r10d
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_14 Depth=1
	addl	%esi, %edi
	addl	%esi, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r10d
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=1
	shrl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	addl	%ecx, %ecx
	leal	(%rdx,%r10), %esi
	movl	%ecx, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%esi, %eax
	jge	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%ecx, %eax
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_16:                               #   in Loop: Header=BB0_14 Depth=1
	addl	%edx, %esi
	addl	%edx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %r10d
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%edx, %esi
	shrl	%esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_18
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=1
	addl	%eax, %eax
	leal	(%rsi,%r10), %edi
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%edi, %ecx
	jge	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%eax, %ecx
	jmp	.LBB0_25
.LBB0_18:
	shrl	%r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_20
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %eax
	andl	$1, %eax
	addl	%r9d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %r9d
.LBB0_20:
	sarl	%r9d
	shll	$23, %r8d
	leal	(%r8,%r9), %eax
	addl	$1056964608, %eax       # imm = 0x3F000000
	movd	%eax, %xmm0
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
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
