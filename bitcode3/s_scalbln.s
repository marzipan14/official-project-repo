	.text
	.file	"s_scalbln.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function scalbln
.LCPI0_0:
	.quad	4850376798678024192     # double 18014398509481984
.LCPI0_1:
	.quad	4363988038922010624     # double 5.5511151231257827E-17
.LCPI0_2:
	.quad	118622047889322841      # double 1.0E-300
.LCPI0_3:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
	.text
	.globl	scalbln
	.p2align	4, 0x90
	.type	scalbln,@function
scalbln:                                # @scalbln
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movdqa	%xmm0, %xmm1
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	cmpl	$2047, %eax             # imm = 0x7FF
	je	.LBB0_14
# %bb.1:
	movq	%rdx, %rcx
	shrq	$32, %rcx
	testw	%ax, %ax
	jne	.LBB0_4
# %bb.2:
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	orl	%edx, %ecx
	je	.LBB0_13
# %bb.3:
	mulsd	.LCPI0_0(%rip), %xmm1
	movq	%xmm1, %rax
	movq	%rax, %rcx
	shrq	$32, %rcx
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	addl	$-54, %eax
.LBB0_4:
	cmpq	$50000, %rdi            # imm = 0xC350
	jg	.LBB0_6
# %bb.5:
	addl	%edi, %eax
	cmpl	$2047, %eax             # imm = 0x7FF
	jge	.LBB0_6
# %bb.7:
	cmpq	$-50001, %rdi           # imm = 0xFFFF3CAF
	jg	.LBB0_9
.LBB0_8:
	movsd	.LCPI0_2(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	copysign
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_2(%rip), %xmm1
	jmp	.LBB0_13
.LBB0_14:
	addsd	%xmm1, %xmm1
	jmp	.LBB0_13
.LBB0_6:
	movsd	.LCPI0_3(%rip), %xmm0   # xmm0 = mem[0],zero
	callq	copysign
	movapd	%xmm0, %xmm1
	mulsd	.LCPI0_3(%rip), %xmm1
	jmp	.LBB0_13
.LBB0_9:
	testl	%eax, %eax
	jle	.LBB0_11
# %bb.10:
	andl	$-2146435073, %ecx      # imm = 0x800FFFFF
	shll	$20, %eax
	orl	%ecx, %eax
	movq	%xmm1, %rcx
	shlq	$32, %rax
	movl	%ecx, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm1
	jmp	.LBB0_13
.LBB0_11:
	cmpl	$-54, %eax
	jle	.LBB0_8
# %bb.12:
	andl	$-2146435073, %ecx      # imm = 0x800FFFFF
	shll	$20, %eax
	addl	$56623104, %eax         # imm = 0x3600000
	orl	%ecx, %eax
	movq	%xmm1, %rcx
	shlq	$32, %rax
	movl	%ecx, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm1
	mulsd	.LCPI0_1(%rip), %xmm1
.LBB0_13:
	movapd	%xmm1, %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	scalbln, .Lfunc_end0-scalbln
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
