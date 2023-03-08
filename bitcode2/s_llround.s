	.text
	.file	"s_llround.c"
	.globl	llround                 # -- Begin function llround
	.p2align	4, 0x90
	.type	llround,@function
llround:                                # @llround
# %bb.0:
	movq	%xmm0, %rsi
	movq	%rsi, %rdi
	shrq	$32, %rdi
	movl	%edi, %eax
	notl	%eax
	shrl	$31, %eax
	leal	(%rax,%rax), %r8d
	addl	$-1, %r8d
	movq	%rsi, %rax
	shrq	$52, %rax
	andl	$2047, %eax             # imm = 0x7FF
	leal	-1023(%rax), %ecx
	andl	$1048575, %edi          # imm = 0xFFFFF
	orl	$1048576, %edi          # imm = 0x100000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1042, %eax             # imm = 0x412
	ja	.LBB0_3
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1022, %eax             # imm = 0x3FE
	ja	.LBB0_6
# %bb.2:
	xorl	%ecx, %ecx
	cmpl	$1022, %eax             # imm = 0x3FE
	movl	$42, __A_VARIABLE(%rip)
	cmovel	%r8d, %ecx
	movslq	%ecx, %rax
	jmp	.LBB0_15
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$62, %ecx
	ja	.LBB0_7
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075, %eax             # imm = 0x433
	jb	.LBB0_8
# %bb.5:
	movl	%edi, %edx
	leal	-19(%rax), %ecx
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdx
	addb	$-51, %al
	movl	%eax, %ecx
	shll	%cl, %esi
	orq	%rdx, %rsi
	jmp	.LBB0_14
.LBB0_6:
	movl	$524288, %esi           # imm = 0x80000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %esi
	addl	%edi, %esi
	movb	$19, %cl
	subb	%al, %cl
	shrl	%cl, %esi
	jmp	.LBB0_14
.LBB0_7:
	cvttsd2si	%xmm0, %rax
	jmp	.LBB0_15
.LBB0_8:
	leal	-1043(%rax), %ecx
	movl	$-2147483648, %edx      # imm = 0x80000000
	shrl	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %edx
	jae	.LBB0_10
# %bb.9:
	addl	$1, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_10:
	movl	%edi, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdi
	movl	$1075, %ecx             # imm = 0x433
	subl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %ecx
	ja	.LBB0_12
# %bb.11:
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
	jmp	.LBB0_13
.LBB0_12:
	xorl	%esi, %esi
.LBB0_13:
	orq	%rdi, %rsi
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r8d, %rax
	imulq	%rsi, %rax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	llround, .Lfunc_end0-llround
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
