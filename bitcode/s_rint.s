	.text
	.file	"s_rint.c"
	.globl	rint                    # -- Begin function rint
	.p2align	4, 0x90
	.type	rint,@function
rint:                                   # @rint
# %bb.0:
	pushq	%rax
	movq	%xmm0, %rdx
	movq	%rdx, %rdi
	shrq	$32, %rdi
	movq	%rdx, %r8
	shrq	$63, %r8
	movq	%rdx, %rax
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	leal	-1023(%rax), %ecx
	cmpl	$1042, %eax             # imm = 0x412
	ja	.LBB0_7
# %bb.1:
	cmpl	$1022, %eax             # imm = 0x3FE
	ja	.LBB0_4
# %bb.2:
	movl	%edi, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edx, %eax
	je	.LBB0_14
# %bb.3:
	movl	%edi, %eax
	andl	$1048575, %eax          # imm = 0xFFFFF
	orl	%edx, %eax
	andl	$-131072, %edi          # imm = 0xFFFE0000
	negl	%eax
	orl	%edx, %eax
	shrl	$12, %eax
	andl	$524288, %eax           # imm = 0x80000
	orl	%edi, %eax
	shlq	$32, %rax
	movl	%edx, %ecx
	orq	%rax, %rcx
	movq	%rcx, %xmm0
	movsd	TWO52(,%r8,8), %xmm1    # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movabsq	$9223372032559808512, %rcx # imm = 0x7FFFFFFF00000000
	andq	%rax, %rcx
	movabsq	$-9223372036854775808, %rsi # imm = 0x8000000000000000
	andq	%rdx, %rsi
	orq	%rcx, %rsi
	movl	%eax, %eax
	orq	%rsi, %rax
	movq	%rax, %xmm0
	jmp	.LBB0_14
.LBB0_7:
	cmpl	$1075, %eax             # imm = 0x433
	jb	.LBB0_10
# %bb.8:
	cmpl	$1024, %ecx             # imm = 0x400
	jne	.LBB0_14
# %bb.9:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_4:
	movl	$1048575, %eax          # imm = 0xFFFFF
	shrl	%cl, %eax
	movl	%eax, %esi
	andl	%edi, %esi
	orl	%edx, %esi
	je	.LBB0_14
# %bb.5:
	shrl	%eax
	movl	%eax, %esi
	andl	%edi, %esi
	orl	%edx, %esi
	je	.LBB0_13
# %bb.6:
	xorl	%edx, %edx
	cmpl	$19, %ecx
	sete	%dl
	shll	$31, %edx
	notl	%eax
	andl	%edi, %eax
	movl	$262144, %edi           # imm = 0x40000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	orl	%eax, %edi
	jmp	.LBB0_13
.LBB0_10:
	addl	$-1043, %eax            # imm = 0xFBED
	movl	$-1, %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	testl	%edx, %esi
	je	.LBB0_14
# %bb.11:
	shrl	%esi
	testl	%edx, %esi
	je	.LBB0_13
# %bb.12:
	notl	%esi
	andl	%edx, %esi
	movl	$1073741824, %edx       # imm = 0x40000000
	movl	%eax, %ecx
	shrl	%cl, %edx
	orl	%esi, %edx
.LBB0_13:
	shlq	$32, %rdi
	movl	%edx, %eax
	orq	%rdi, %rax
	movq	%rax, %xmm0
	movsd	TWO52(,%r8,8), %xmm1    # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rax
	retq
.Lfunc_end0:
	.size	rint, .Lfunc_end0-rint
                                        # -- End function
	.type	TWO52,@object           # @TWO52
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4
TWO52:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	-4382002437431492608    # double -4503599627370496
	.size	TWO52, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
