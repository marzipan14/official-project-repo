	.text
	.file	"e_sqrt.c"
	.globl	__ieee754_sqrt          # -- Begin function __ieee754_sqrt
	.p2align	4, 0x90
	.type	__ieee754_sqrt,@function
__ieee754_sqrt:                         # @__ieee754_sqrt
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%xmm0, %rdi
	movq	%rdi, %rsi
	shrq	$32, %rsi
	movl	%esi, %eax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jne	.LBB0_2
# %bb.1:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_42
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB0_3
.LBB0_6:
	movq	%rdi, %r8
	shrq	$52, %r8
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jne	.LBB0_15
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	testl	%esi, %esi
	jne	.LBB0_10
# %bb.8:                                # %.preheader1
	movl	$1, %r8d
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	%edi, %esi
	shrl	$11, %esi
	shll	$21, %edi
	movl	$42, __A_VARIABLE(%rip)
	addl	$-21, %r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_9
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	$1048576, %esi          # imm = 0x100000
	jne	.LBB0_11
# %bb.12:                               # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leal	(%rsi,%rsi), %edx
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	$524288, %esi           # imm = 0x80000
	movl	%edx, %esi
	je	.LBB0_13
	jmp	.LBB0_14
.LBB0_3:
	movl	%esi, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_42
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jns	.LBB0_6
# %bb.5:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	jmp	.LBB0_42
.LBB0_11:
	movl	%esi, %edx
.LBB0_14:
	subl	%eax, %r8d
	movl	%eax, %ecx
	negb	%cl
	movl	%edi, %esi
	shrl	%cl, %esi
	orl	%edx, %esi
	movl	%eax, %ecx
	shll	%cl, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	addl	$-1023, %r8d            # imm = 0xFC01
	andl	$1048575, %esi          # imm = 0xFFFFF
	orl	$1048576, %esi          # imm = 0x100000
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r8b
	je	.LBB0_17
# %bb.16:
	shldl	$1, %edi, %esi
	addl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	shldl	$1, %edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rdi,%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$2097152, %ecx          # imm = 0x200000
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	addl	%ecx, %ebx
	addl	%ecx, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r14d
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	shrl	$30, %edi
	andl	$1, %edi
	leal	(%rdi,%rax,2), %esi
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rdx,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %edi
	testl	%ecx, %ecx
	je	.LBB0_22
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, %edx
	leal	(%r14,%rcx), %ebx
	movl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %eax
	jge	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%esi, %eax
	jmp	.LBB0_21
.LBB0_22:
	shrl	%r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2147483648, %edi      # imm = 0x80000000
	xorl	%r10d, %r10d
	xorl	%r11d, %r11d
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_23 Depth=1
	addl	%edi, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %esi
.LBB0_33:                               #   in Loop: Header=BB0_23 Depth=1
	shldl	$1, %eax, %esi
	addl	%eax, %eax
	shrl	%edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_34
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	leal	(%r11,%rdi), %edx
	movl	%esi, %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %ecx
	jle	.LBB0_24
.LBB0_27:                               #   in Loop: Header=BB0_23 Depth=1
	leal	(%rdx,%rdi), %r11d
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_30
# %bb.28:                               #   in Loop: Header=BB0_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r11d, %r11d
	js	.LBB0_30
# %bb.29:                               #   in Loop: Header=BB0_23 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:                               #   in Loop: Header=BB0_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %eax
	jae	.LBB0_32
# %bb.31:                               #   in Loop: Header=BB0_23 Depth=1
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_32
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_33
# %bb.25:                               #   in Loop: Header=BB0_23 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %eax
	jae	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_23 Depth=1
	movl	%r14d, %esi
	jmp	.LBB0_33
.LBB0_34:
	orl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_39
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r10d
	je	.LBB0_36
# %bb.37:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %eax
	andl	$1, %eax
	addl	%eax, %r10d
	jmp	.LBB0_38
.LBB0_36:
	addl	$1, %r9d
	xorl	%r10d, %r10d
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:
	movl	%r9d, %eax
	sarl	%eax
	shrl	%r10d
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r9b
	je	.LBB0_41
# %bb.40:
	orl	$-2147483648, %r10d     # imm = 0x80000000
	movl	$42, __A_VARIABLE(%rip)
.LBB0_41:
	shll	$20, %r8d
	addl	%r8d, %eax
	addl	$1071644672, %eax       # imm = 0x3FE00000
	shlq	$32, %rax
	movl	%r10d, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm0
.LBB0_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end0:
	.size	__ieee754_sqrt, .Lfunc_end0-__ieee754_sqrt
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
