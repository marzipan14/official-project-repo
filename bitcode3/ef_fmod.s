	.text
	.file	"ef_fmod.c"
	.globl	__ieee754_fmodf         # -- Begin function __ieee754_fmodf
	.p2align	4, 0x90
	.type	__ieee754_fmodf,@function
__ieee754_fmodf:                        # @__ieee754_fmodf
# %bb.0:
	movd	%xmm0, %r9d
	movl	%r9d, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$2139095039, %edx       # imm = 0x7F7FFFFF
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %r10d
	movl	%r10d, %r11d
	andl	$2147483647, %r11d      # imm = 0x7FFFFFFF
	leal	-1(%r11), %eax
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jae	.LBB0_2
# %bb.3:
	movl	%r9d, %r8d
	andl	$-2147483648, %r8d      # imm = 0x80000000
	cmpl	%r11d, %edx
	jae	.LBB0_4
# %bb.28:
	retq
.LBB0_2:
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
	retq
.LBB0_4:
	je	.LBB0_5
# %bb.6:
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	ja	.LBB0_10
# %bb.7:
	movl	%r9d, %eax
	shll	$8, %eax
	movl	$-126, %edi
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	testl	%eax, %eax
	jle	.LBB0_11
# %bb.8:                                #   in Loop: Header=BB0_9 Depth=1
	addl	$-1, %edi
	addl	%eax, %eax
	jmp	.LBB0_9
.LBB0_10:
	movl	%edx, %edi
	shrl	$23, %edi
	addl	$-127, %edi
.LBB0_11:
	cmpl	$8388607, %r11d         # imm = 0x7FFFFF
	ja	.LBB0_14
# %bb.12:
	movl	%r10d, %eax
	movl	$-126, %esi
	shll	$8, %eax
	js	.LBB0_15
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %esi
	addl	%eax, %eax
	jns	.LBB0_13
	jmp	.LBB0_15
.LBB0_14:
	movl	%r11d, %esi
	shrl	$23, %esi
	addl	$-127, %esi
.LBB0_15:
	movl	%r9d, %eax
	andl	$8388607, %eax          # imm = 0x7FFFFF
	movb	$-126, %cl
	subb	%dil, %cl
	shll	%cl, %edx
	orl	$8388608, %eax          # imm = 0x800000
	cmpl	$-127, %edi
	cmovgl	%eax, %edx
	movb	$-126, %cl
	andl	$8388607, %r10d         # imm = 0x7FFFFF
	orl	$8388608, %r10d         # imm = 0x800000
	subb	%sil, %cl
	shll	%cl, %r11d
	cmpl	$-127, %esi
	cmovgl	%r10d, %r11d
	movl	%edx, %ecx
	subl	%r11d, %ecx
	cmpl	%esi, %edi
	je	.LBB0_20
# %bb.16:                               # %.preheader1
	movl	%esi, %eax
	subl	%edi, %eax
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_17 Depth=1
	addl	%edx, %edx
	movl	%edx, %ecx
	subl	%r11d, %ecx
	incl	%eax
	je	.LBB0_20
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	js	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movl	%ecx, %edx
	jne	.LBB0_19
	jmp	.LBB0_5
.LBB0_20:
	testl	%ecx, %ecx
	cmovnsl	%ecx, %edx
	testl	%edx, %edx
	je	.LBB0_5
# %bb.21:
	cmpl	$8388607, %edx          # imm = 0x7FFFFF
	jg	.LBB0_22
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rdx), %eax
	addl	$-1, %esi
	cmpl	$4194304, %edx          # imm = 0x400000
	movl	%eax, %edx
	jl	.LBB0_23
# %bb.24:
	cmpl	$-126, %esi
	jl	.LBB0_26
.LBB0_25:
	addl	$-8388608, %eax         # imm = 0xFF800000
	shll	$23, %esi
	addl	$1065353216, %esi       # imm = 0x3F800000
	orl	%eax, %esi
	jmp	.LBB0_27
.LBB0_5:
	shrl	$31, %r9d
	movss	Zero(,%r9,4), %xmm0     # xmm0 = mem[0],zero,zero,zero
	retq
.LBB0_22:
	movl	%edx, %eax
	cmpl	$-126, %esi
	jge	.LBB0_25
.LBB0_26:
	movb	$-126, %cl
	subb	%sil, %cl
	shrl	%cl, %eax
	movl	%eax, %esi
.LBB0_27:
	orl	%r8d, %esi
	movd	%esi, %xmm0
	retq
.Lfunc_end0:
	.size	__ieee754_fmodf, .Lfunc_end0-__ieee754_fmodf
                                        # -- End function
	.type	Zero,@object            # @Zero
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	2
Zero:
	.long	0                       # float 0
	.long	2147483648              # float -0
	.size	Zero, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
