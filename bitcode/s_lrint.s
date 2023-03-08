	.text
	.file	"s_lrint.c"
	.globl	lrint                   # -- Begin function lrint
	.p2align	4, 0x90
	.type	lrint,@function
lrint:                                  # @lrint
# %bb.0:
	pushq	%rax
	movq	%xmm0, %rsi
	movq	%rsi, %rdx
	shrq	$63, %rdx
	movq	%rsi, %rax
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	cmpl	$1042, %eax             # imm = 0x412
	ja	.LBB0_3
# %bb.1:
	cmpl	$1022, %eax             # imm = 0x3FE
	jb	.LBB0_11
# %bb.6:
	movsd	TWO52(,%rdx,8), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rax
	movq	%rax, %rcx
	sarq	$32, %rcx
	movabsq	$-2147483649, %rsi      # imm = 0xFFFFFFFF7FFFFFFF
	testq	%rsi, %rcx
	je	.LBB0_11
# %bb.7:
	movq	%rax, %rsi
	shrq	$32, %rsi
	shrq	$52, %rax
	andl	$1048575, %esi          # imm = 0xFFFFF
	orl	$1048576, %esi          # imm = 0x100000
	movb	$19, %cl
	subb	%al, %cl
	shrl	%cl, %esi
	jmp	.LBB0_10
.LBB0_3:
	cmpl	$1085, %eax             # imm = 0x43D
	ja	.LBB0_8
# %bb.4:
	cmpl	$1075, %eax             # imm = 0x433
	jb	.LBB0_9
# %bb.5:
	movq	%rsi, %rdi
	shrq	$32, %rdi
	andl	$983039, %edi           # imm = 0xEFFFF
	orq	$65536, %rdi            # imm = 0x10000
	leal	-19(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdi
	addb	$-51, %al
	movl	%eax, %ecx
	shll	%cl, %esi
	orq	%rdi, %rsi
	jmp	.LBB0_10
.LBB0_11:
	xorl	%eax, %eax
	jmp	.LBB0_12
.LBB0_8:
	cvttsd2si	%xmm0, %rax
	jmp	.LBB0_12
.LBB0_9:
	movsd	TWO52(,%rdx,8), %xmm1   # xmm1 = mem[0],zero
	addsd	%xmm1, %xmm0
	movsd	%xmm0, (%rsp)
	movsd	(%rsp), %xmm0           # xmm0 = mem[0],zero
	subsd	%xmm1, %xmm0
	movq	%xmm0, %rdi
	movq	%rdi, %rax
	shrq	$32, %rax
	movq	%rdi, %rcx
	shrq	$52, %rcx
	movl	%ecx, %esi
	andl	$1048575, %eax          # imm = 0xFFFFF
	orq	$1048576, %rax          # imm = 0x100000
	addb	$-19, %cl
                                        # kill: def $cl killed $cl killed $rcx
	shlq	%cl, %rax
	andl	$2047, %esi             # imm = 0x7FF
	movl	$1075, %ecx             # imm = 0x433
	subl	%esi, %ecx
	shrl	%cl, %edi
	xorl	%esi, %esi
	cmpl	$32, %ecx
	cmovbl	%edi, %esi
	orq	%rax, %rsi
.LBB0_10:
	movq	%rsi, %rax
	negq	%rax
	testq	%rdx, %rdx
	cmoveq	%rsi, %rax
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rcx
	retq
.Lfunc_end0:
	.size	lrint, .Lfunc_end0-lrint
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
