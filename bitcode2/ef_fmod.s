	.text
	.file	"ef_fmod.c"
	.globl	__ieee754_fmodf         # -- Begin function __ieee754_fmodf
	.p2align	4, 0x90
	.type	__ieee754_fmodf,@function
__ieee754_fmodf:                        # @__ieee754_fmodf
# %bb.0:
	pushq	%rbx
	movd	%xmm1, %r11d
	movl	%r11d, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	je	.LBB0_3
# %bb.1:
	movd	%xmm0, %r10d
	movl	%r10d, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095039, %esi       # imm = 0x7F7FFFFF
	ja	.LBB0_3
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %eax       # imm = 0x7F800001
	jb	.LBB0_4
.LBB0_3:
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	retq
.LBB0_4:
	movl	%r10d, %r8d
	andl	$-2147483648, %r8d      # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %esi
	jb	.LBB0_31
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %esi          # imm = 0x7FFFFF
	ja	.LBB0_11
# %bb.8:
	movl	%r10d, %ecx
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-126, %edi
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_10 Depth=1
	addl	$-1, %edi
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
.LBB0_11:
	movl	%esi, %edi
	shrl	$23, %edi
	addl	$-127, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	ja	.LBB0_15
# %bb.13:
	movl	%r11d, %ecx
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-126, %ebx
	js	.LBB0_16
	.p2align	4, 0x90
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	addl	$-1, %ebx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jns	.LBB0_14
	jmp	.LBB0_16
.LBB0_15:
	movl	%eax, %ebx
	shrl	$23, %ebx
	addl	$-127, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movl	%r10d, %edx
	andl	$8388607, %edx          # imm = 0x7FFFFF
	orl	$8388608, %edx          # imm = 0x800000
	movb	$-126, %r9b
	movb	$-126, %cl
	subb	%dil, %cl
	shll	%cl, %esi
	cmpl	$-127, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	andl	$8388607, %r11d         # imm = 0x7FFFFF
	orl	$8388608, %r11d         # imm = 0x800000
	subb	%bl, %r9b
	movl	%r9d, %ecx
	shll	%cl, %eax
	cmpl	$-127, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%r11d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %edi
	je	.LBB0_21
# %bb.17:                               # %.preheader1
	movl	%ebx, %edx
	subl	%edi, %edx
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %ecx
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	incl	%edx
	je	.LBB0_21
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
	jne	.LBB0_20
	jmp	.LBB0_6
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	js	.LBB0_23
# %bb.22:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_6
# %bb.24:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %esi          # imm = 0x7FFFFF
	jg	.LBB0_25
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	leal	(%rsi,%rsi), %eax
	addl	$-1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4194304, %esi          # imm = 0x400000
	movl	%eax, %esi
	jl	.LBB0_26
	jmp	.LBB0_27
.LBB0_6:
	shrl	$31, %r10d
	movss	Zero(,%r10,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
	jmp	.LBB0_31
.LBB0_25:
	movl	%esi, %eax
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-126, %ebx
	jl	.LBB0_29
# %bb.28:
	addl	$-8388608, %eax         # imm = 0xFF800000
	shll	$23, %ebx
	addl	$1065353216, %ebx       # imm = 0x3F800000
	orl	%eax, %ebx
	jmp	.LBB0_30
.LBB0_29:
	movb	$-126, %cl
	subb	%bl, %cl
	shrl	%cl, %eax
	movl	%eax, %ebx
.LBB0_30:
	orl	%r8d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movd	%ebx, %xmm0
	jmp	.LBB0_31
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
