	.text
	.file	"s_nextafter.c"
	.globl	nextafter               # -- Begin function nextafter
	.p2align	4, 0x90
	.type	nextafter,@function
nextafter:                              # @nextafter
# %bb.0:
	movq	%xmm0, %r8
	movq	%r8, %rcx
	shrq	$32, %rcx
	movl	%ecx, %edi
	andl	$2147483647, %edi       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %edi       # imm = 0x7FF00000
	jb	.LBB0_2
# %bb.1:
	leal	-2146435072(%rdi), %eax
	orl	%r8d, %eax
	jne	.LBB0_4
.LBB0_2:
	movq	%xmm1, %rsi
	movq	%rsi, %rdx
	shrq	$32, %rdx
	movl	%edx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jb	.LBB0_5
# %bb.3:
	addl	$-2146435072, %eax      # imm = 0x80100000
	orl	%esi, %eax
	je	.LBB0_5
.LBB0_4:
	addsd	%xmm1, %xmm0
	retq
.LBB0_5:
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_6
	jp	.LBB0_6
# %bb.20:
	retq
.LBB0_6:
	orl	%r8d, %edi
	je	.LBB0_7
# %bb.8:
	testl	%ecx, %ecx
	jns	.LBB0_9
# %bb.13:
	testl	%edx, %edx
	jns	.LBB0_12
.LBB0_9:
	cmpl	%edx, %ecx
	jg	.LBB0_12
# %bb.10:
	cmpl	%esi, %r8d
	jbe	.LBB0_14
# %bb.11:
	cmpl	%edx, %ecx
	jne	.LBB0_14
.LBB0_12:
	subl	$1, %r8d
	sbbl	%edx, %edx
	jmp	.LBB0_15
.LBB0_7:
	movabsq	$-9223372036854775808, %rax # imm = 0x8000000000000000
	andq	%rax, %rsi
	orq	$1, %rsi
	movq	%rsi, %xmm1
	movdqa	%xmm1, %xmm2
	mulsd	%xmm1, %xmm2
	movapd	%xmm2, %xmm0
	cmpeqsd	%xmm1, %xmm0
	andpd	%xmm0, %xmm2
	andnpd	%xmm1, %xmm0
	orpd	%xmm2, %xmm0
	retq
.LBB0_14:
	xorl	%edx, %edx
	incl	%r8d
	sete	%dl
.LBB0_15:
	addl	%ecx, %edx
	movl	%edx, %eax
	andl	$2146435072, %eax       # imm = 0x7FF00000
	je	.LBB0_18
# %bb.16:
	cmpl	$2146435072, %eax       # imm = 0x7FF00000
	jne	.LBB0_19
# %bb.17:
	addsd	%xmm0, %xmm0
	retq
.LBB0_18:
	movapd	%xmm0, %xmm1
	mulsd	%xmm0, %xmm1
	ucomisd	%xmm0, %xmm1
.LBB0_19:
	shlq	$32, %rdx
	movl	%r8d, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm0
	retq
.Lfunc_end0:
	.size	nextafter, .Lfunc_end0-nextafter
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
