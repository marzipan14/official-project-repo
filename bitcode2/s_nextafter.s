	.text
	.file	"s_nextafter.c"
	.globl	nextafter               # -- Begin function nextafter
	.p2align	4, 0x90
	.type	nextafter,@function
nextafter:                              # @nextafter
# %bb.0:
	movq	%xmm0, %r8
	movq	%r8, %rax
	shrq	$32, %rax
	movl	%eax, %edi
	andl	$2147483647, %edi       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %edi       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	leal	-2146435072(%rdi), %ecx
	orl	%r8d, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_4
.LBB0_2:
	movq	%xmm1, %rdx
	movq	%rdx, %rsi
	shrq	$32, %rsi
	movl	%esi, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %ecx       # imm = 0x7FF00000
	jb	.LBB0_5
# %bb.3:
	addl	$-2146435072, %ecx      # imm = 0x80100000
	orl	%edx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
.LBB0_4:
	addsd	%xmm1, %xmm0
	jmp	.LBB0_24
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_6:
	orl	%r8d, %edi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_16
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jg	.LBB0_17
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r8d
	ja	.LBB0_19
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	incl	%r8d
	jne	.LBB0_14
# %bb.13:
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r8d, %r8d
	jmp	.LBB0_14
.LBB0_7:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	andq	%rax, %rdx
	orq	$1, %rdx
	movq	%rdx, %xmm1
	movdqa	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movapd	%xmm2, %xmm0
	cmpeqsd	%xmm1, %xmm0
	andpd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	js	.LBB0_9
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jne	.LBB0_20
# %bb.18:
	addl	$-1, %eax
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	addl	$-1, %r8d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	movl	%eax, %ecx
	andl	$2146435072, %ecx       # imm = 0x7FF00000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2146435072, %ecx       # imm = 0x7FF00000
	jne	.LBB0_21
# %bb.15:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_24
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jne	.LBB0_23
# %bb.22:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm0, %xmm1
.LBB0_23:
	shlq	$32, %rax
	movl	%r8d, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm0
	jmp	.LBB0_24
.Lfunc_end0:
	.size	nextafter, .Lfunc_end0-nextafter
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
