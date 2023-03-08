	.text
	.file	"e_sqrt.c"
	.globl	__ieee754_sqrt          # -- Begin function __ieee754_sqrt
	.p2align	4, 0x90
	.type	__ieee754_sqrt,@function
__ieee754_sqrt:                         # @__ieee754_sqrt
# %bb.0:
	pushq	%r14
	pushq	%rbx
	movq	%xmm0, %r10
	movq	%r10, %rdi
	shrq	$32, %rdi
	movl	%edi, %eax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jne	.LBB0_2
# %bb.1:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	addsd	%xmm1, %xmm0
	jmp	.LBB0_25
.LBB0_2:
	testl	%edi, %edi
	jle	.LBB0_3
.LBB0_6:
	movq	%r10, %r8
	shrq	$52, %r8
	testl	%r8d, %r8d
	jne	.LBB0_15
# %bb.7:
	movl	$1, %r8d
	testl	%edi, %edi
	jne	.LBB0_10
# %bb.8:                                # %.preheader1
	movl	$1, %r8d
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	movl	%r10d, %edi
	shrl	$11, %edi
	shll	$21, %r10d
	addl	$-21, %r8d
	testl	%edi, %edi
	je	.LBB0_9
.LBB0_10:
	xorl	%eax, %eax
	testl	$1048576, %edi          # imm = 0x100000
	jne	.LBB0_11
# %bb.12:                               # %.preheader
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdi,%rdi), %esi
	addl	$1, %eax
	testl	$524288, %edi           # imm = 0x80000
	movl	%esi, %edi
	je	.LBB0_13
	jmp	.LBB0_14
.LBB0_3:
	movl	%edi, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%r10d, %eax
	je	.LBB0_25
# %bb.4:
	testl	%edi, %edi
	jns	.LBB0_6
# %bb.5:
	subsd	%xmm0, %xmm0
	divsd	%xmm0, %xmm0
	jmp	.LBB0_25
.LBB0_11:
	movl	%edi, %esi
.LBB0_14:
	subl	%eax, %r8d
	movl	%eax, %ecx
	negb	%cl
	movl	%r10d, %edi
	shrl	%cl, %edi
	orl	%esi, %edi
	movl	%eax, %ecx
	shll	%cl, %r10d
.LBB0_15:
	addl	$-1023, %r8d            # imm = 0xFC01
	andl	$1048575, %edi          # imm = 0xFFFFF
	orl	$1048576, %edi          # imm = 0x100000
	testb	$1, %r8b
	je	.LBB0_17
# %bb.16:
	shldl	$1, %r10d, %edi
	addl	%r10d, %r10d
.LBB0_17:
	shldl	$1, %r10d, %edi
	leal	(%r10,%r10), %ecx
	movl	$2097152, %eax          # imm = 0x200000
	xorl	%r9d, %r9d
	xorl	%r11d, %r11d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_18 Depth=1
	addl	%edx, %edi
	addl	%edx, %r9d
	movl	%edi, %r11d
.LBB0_27:                               #   in Loop: Header=BB0_18 Depth=1
	leal	(%rcx,%rcx), %r10d
	movl	%ecx, %edx
	shrl	$30, %edx
	andl	$1, %edx
	leal	(%rdx,%rsi,2), %edi
	shrl	$2, %eax
	shll	$2, %ecx
	testl	%eax, %eax
	je	.LBB0_28
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	leal	(%r11,%rax), %edx
	movl	%edi, %esi
	subl	%edx, %esi
	jge	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%edi, %esi
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_18 Depth=1
	addl	%eax, %edx
	addl	%eax, %r9d
	movl	%edx, %r11d
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	shrl	$30, %r10d
	andl	$1, %r10d
	leal	(%r10,%rsi,2), %r10d
	movl	%eax, %edx
	shrl	%edx
	leal	(%r11,%rdx), %edi
	movl	%r10d, %esi
	subl	%edi, %esi
	jge	.LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%r10d, %esi
	jmp	.LBB0_27
.LBB0_28:
	shrl	%r8d
	movl	$-2147483648, %eax      # imm = 0x80000000
	xorl	%r10d, %r10d
	xorl	%r14d, %r14d
	jmp	.LBB0_29
	.p2align	4, 0x90
.LBB0_32:                               #   in Loop: Header=BB0_29 Depth=1
	testl	%esi, %esi
	sets	%bl
	movl	%esi, %r14d
	addl	%eax, %r14d
	setns	%dl
	andb	%bl, %dl
	movzbl	%dl, %edx
	addl	%r11d, %edx
	subl	%esi, %ecx
	sbbl	$0, %edi
	subl	%r11d, %edi
	addl	%eax, %r10d
	movl	%edx, %r11d
.LBB0_33:                               #   in Loop: Header=BB0_29 Depth=1
	shldl	$1, %ecx, %edi
	addl	%ecx, %ecx
	shrl	%eax
	je	.LBB0_34
.LBB0_29:                               # =>This Inner Loop Header: Depth=1
	leal	(%r14,%rax), %esi
	cmpl	%r11d, %edi
	jg	.LBB0_32
# %bb.30:                               #   in Loop: Header=BB0_29 Depth=1
	cmpl	%esi, %ecx
	jb	.LBB0_33
# %bb.31:                               #   in Loop: Header=BB0_29 Depth=1
	cmpl	%r11d, %edi
	je	.LBB0_32
	jmp	.LBB0_33
.LBB0_34:
	orl	%ecx, %edi
	je	.LBB0_24
# %bb.35:
	cmpl	$-1, %r10d
	je	.LBB0_36
# %bb.23:
	movl	%r10d, %eax
	andl	$1, %eax
	addl	%r10d, %eax
	movl	%eax, %r10d
	jmp	.LBB0_24
.LBB0_36:
	addl	$1, %r9d
	xorl	%r10d, %r10d
.LBB0_24:
	movl	%r9d, %eax
	sarl	%eax
	shrdl	$1, %r9d, %r10d
	shll	$20, %r8d
	addl	%r8d, %eax
	addl	$1071644672, %eax       # imm = 0x3FE00000
	shlq	$32, %rax
	orq	%rax, %r10
	movq	%r10, %xmm0
.LBB0_25:
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
