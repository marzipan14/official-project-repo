	.text
	.file	"s_frexp.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function frexp
.LCPI0_0:
	.quad	4850376798678024192     # double 18014398509481984
	.text
	.globl	frexp
	.p2align	4, 0x90
	.type	frexp,@function
frexp:                                  # @frexp
# %bb.0:
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movl	$0, (%rdi)
	cmpl	$2146435071, %edx       # imm = 0x7FEFFFFF
	ja	.LBB0_5
# %bb.1:
	movl	%edx, %esi
	orl	%ecx, %esi
	je	.LBB0_5
# %bb.2:
	xorl	%esi, %esi
	cmpl	$1048575, %edx          # imm = 0xFFFFF
	ja	.LBB0_4
# %bb.3:
	mulsd	.LCPI0_0(%rip), %xmm0
	movq	%xmm0, %rcx
	movq	%rcx, %rax
	shrq	$32, %rax
	movl	%eax, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	movl	$-54, (%rdi)
	movl	$-54, %esi
.LBB0_4:
	shrl	$20, %edx
	addl	%esi, %edx
	addl	$-1022, %edx            # imm = 0xFC02
	movl	%edx, (%rdi)
	andl	$-2146435073, %eax      # imm = 0x800FFFFF
	shlq	$32, %rax
	movl	%ecx, %ecx
	orq	%rax, %rcx
	movabsq	$4602678819172646912, %rax # imm = 0x3FE0000000000000
	orq	%rcx, %rax
	movq	%rax, %xmm0
.LBB0_5:
	retq
.Lfunc_end0:
	.size	frexp, .Lfunc_end0-frexp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
