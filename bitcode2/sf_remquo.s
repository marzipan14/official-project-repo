	.text
	.file	"sf_remquo.c"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2               # -- Begin function remquof
.LCPI0_0:
	.long	16777216                # float 2.3509887E-38
.LCPI0_1:
	.long	1056964608              # float 0.5
	.text
	.globl	remquof
	.p2align	4, 0x90
	.type	remquof,@function
remquof:                                # @remquof
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movd	%xmm0, %r12d
	movl	%r12d, %ebx
	andl	$2147483647, %ebx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095039, %ebx       # imm = 0x7F7FFFFF
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %eax
	movl	%eax, %r9d
	andl	$2147483647, %r9d       # imm = 0x7FFFFFFF
	leal	-1(%r9), %ecx
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jae	.LBB0_2
# %bb.3:
	pxor	%xmm1, %xmm0
	movd	%xmm0, %r15d
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r9d, %ebx
	jae	.LBB0_4
.LBB0_33:
	andl	$-2147483648, %r12d     # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
	movd	%ebx, %xmm0
	movdqa	%xmm0, -64(%rbp)        # 16-byte Spill
	movdqa	%xmm1, %xmm0
	callq	fabsf
	movss	.LCPI0_0(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	ucomiss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_41
# %bb.34:
	movaps	-64(%rbp), %xmm2        # 16-byte Reload
	movaps	%xmm2, %xmm1
	addss	%xmm2, %xmm1
	ucomiss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_38
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_39
	jnp	.LBB0_37
	jmp	.LBB0_39
.LBB0_2:
	movl	$0, (%r14)
	mulss	%xmm1, %xmm0
	divss	%xmm0, %xmm0
	jmp	.LBB0_40
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_7
# %bb.5:
	movl	$1, (%r14)
	jmp	.LBB0_6
.LBB0_41:
	movss	.LCPI0_1(%rip), %xmm1   # xmm1 = mem[0],zero,zero,zero
	mulss	%xmm0, %xmm1
	movaps	-64(%rbp), %xmm2        # 16-byte Reload
	ucomiss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB0_38
# %bb.42:
	movl	$42, __A_VARIABLE(%rip)
	ucomiss	%xmm2, %xmm1
	jne	.LBB0_39
	jp	.LBB0_39
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r13b
	je	.LBB0_39
.LBB0_38:
	addl	$1, %r13d
	subss	%xmm0, %xmm2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:
	movd	%r12d, %xmm0
	pxor	%xmm2, %xmm0
	andl	$2147483647, %r13d      # imm = 0x7FFFFFFF
	movl	%r13d, %eax
	negl	%eax
	testl	$-2147483648, %r15d     # imm = 0x80000000
	cmovel	%r13d, %eax
	movl	%eax, (%r14)
	jmp	.LBB0_40
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %ebx          # imm = 0x7FFFFF
	ja	.LBB0_11
# %bb.8:
	movl	%r12d, %ecx
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-126, %edx
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_12
# %bb.9:                                #   in Loop: Header=BB0_10 Depth=1
	addl	$-1, %edx
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_10
.LBB0_11:
	movl	%ebx, %edx
	shrl	$23, %edx
	addl	$-127, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %r9d          # imm = 0x7FFFFF
	ja	.LBB0_16
# %bb.13:
	movl	%eax, %ecx
	shll	$8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-126, %esi
	.p2align	4, 0x90
.LBB0_15:                               # =>This Inner Loop Header: Depth=1
	testl	%ecx, %ecx
	jle	.LBB0_17
# %bb.14:                               #   in Loop: Header=BB0_15 Depth=1
	addl	$-1, %esi
	addl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_15
.LBB0_16:
	movl	%r9d, %esi
	shrl	$23, %esi
	addl	$-127, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movl	%r12d, %edi
	andl	$8388607, %edi          # imm = 0x7FFFFF
	orl	$8388608, %edi          # imm = 0x800000
	movb	$-126, %r8b
	movb	$-126, %cl
	subb	%dl, %cl
	shll	%cl, %ebx
	cmpl	$-127, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%edi, %ebx
	movl	$42, __A_VARIABLE(%rip)
	subb	%sil, %r8b
	movl	%r8d, %ecx
	shll	%cl, %r9d
	andl	$8388607, %eax          # imm = 0x7FFFFF
	orl	$8388608, %eax          # imm = 0x800000
	cmpl	$-127, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%eax, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	subl	%r9d, %eax
	xorl	%r13d, %r13d
	movl	%edx, %r8d
	movl	$42, __A_VARIABLE(%rip)
	subl	%esi, %r8d
	je	.LBB0_24
# %bb.18:
	andl	$1, %r8d
	leal	1(%rsi), %ecx
	cmpl	%ecx, %edx
	jne	.LBB0_20
# %bb.19:
	xorl	%r13d, %r13d
	jmp	.LBB0_22
.LBB0_20:
	leal	(%rsi,%r8), %ecx
	subl	%edx, %ecx
	xorl	%r13d, %r13d
	movl	%ebx, %edx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %edi
	notl	%edi
	shrl	$31, %edi
	orl	%r13d, %edi
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ebx
	subl	%r9d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	notl	%eax
	shrl	$30, %eax
	andl	$-2, %eax
	testl	%ebx, %ebx
	cmovsl	%edx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %ebx
	leal	(%rax,%rdi,4), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	subl	%r9d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %edx
	addl	$2, %ecx
	jne	.LBB0_21
.LBB0_22:
	testl	%r8d, %r8d
	je	.LBB0_24
# %bb.23:
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmovnsl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	addl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %ecx
	subl	%r9d, %ecx
	notl	%eax
	shrl	$31, %eax
	orl	%eax, %r13d
	addl	%r13d, %r13d
	movl	%ecx, %eax
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_25
# %bb.26:
	orl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_27
.LBB0_25:
	movl	%ebx, %eax
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_43
# %bb.28:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %eax          # imm = 0x7FFFFF
	jg	.LBB0_30
	.p2align	4, 0x90
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	addl	%eax, %eax
	addl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388608, %eax          # imm = 0x800000
	jl	.LBB0_29
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-126, %esi
	jl	.LBB0_32
# %bb.31:
	addl	$-8388608, %eax         # imm = 0xFF800000
	shll	$23, %esi
	addl	$1065353216, %esi       # imm = 0x3F800000
	orl	%eax, %esi
	movl	%esi, %ebx
	jmp	.LBB0_33
.LBB0_43:
	movl	%r13d, %eax
	negl	%eax
	testl	$-2147483648, %r15d     # imm = 0x80000000
	cmovel	%r13d, %eax
	movl	%eax, (%r14)
.LBB0_6:
	shrl	$31, %r12d
	movd	Zero(,%r12,4), %xmm0    # xmm0 = mem[0],zero,zero,zero
.LBB0_40:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_32:
	movb	$-126, %cl
	subb	%sil, %cl
	shrl	%cl, %eax
	movl	%eax, %ebx
	jmp	.LBB0_33
.Lfunc_end0:
	.size	remquof, .Lfunc_end0-remquof
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
