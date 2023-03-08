	.text
	.file	"s_ceil.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function ceil
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
	.text
	.globl	ceil
	.p2align	4, 0x90
	.type	ceil,@function
ceil:                                   # @ceil
# %bb.0:
	movq	%xmm0, %rdi
	movq	%rdi, %rdx
	shrq	$32, %rdx
	movq	%rdi, %rsi
	shrq	$52, %rsi
	andl	$2047, %esi             # imm = 0x7FF
	leal	-1023(%rsi), %eax
	cmpl	$1042, %esi             # imm = 0x412
	ja	.LBB0_9
# %bb.1:
	cmpl	$1022, %esi             # imm = 0x3FE
	ja	.LBB0_6
# %bb.2:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.3:
	testl	%edx, %edx
	js	.LBB0_4
# %bb.5:
	xorl	%eax, %eax
	movl	%edx, %ecx
	orl	%edi, %ecx
	cmovel	%edi, %eax
	movl	$1072693248, %ecx       # imm = 0x3FF00000
	cmovel	%edx, %ecx
	movl	%eax, %edi
	movl	%ecx, %edx
	jmp	.LBB0_20
.LBB0_9:
	cmpl	$1075, %esi             # imm = 0x433
	jb	.LBB0_13
# %bb.10:
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_12
# %bb.11:
	addsd	%xmm0, %xmm0
.LBB0_12:
	retq
.LBB0_6:
	movl	$1048575, %esi          # imm = 0xFFFFF
	movl	%eax, %ecx
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%edi, %esi
	je	.LBB0_21
# %bb.7:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.8:
	movl	$1048576, %esi          # imm = 0x100000
	movl	%eax, %ecx
	shrl	%cl, %esi
	xorl	%edi, %edi
	testl	%edx, %edx
	cmovlel	%edi, %esi
	addl	%edx, %esi
	movl	$-1048576, %edx         # imm = 0xFFF00000
	sarl	%cl, %edx
	andl	%esi, %edx
	jmp	.LBB0_20
.LBB0_13:
	leal	-19(%rsi), %ecx
	movl	$-1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r8d
	testl	%edi, %r8d
	je	.LBB0_21
# %bb.14:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_20
# %bb.15:
	testl	%edx, %edx
	jle	.LBB0_19
# %bb.16:
	cmpl	$20, %eax
	jne	.LBB0_18
# %bb.17:
	addl	$1, %edx
	jmp	.LBB0_19
.LBB0_4:
	movl	$-2147483648, %edx      # imm = 0x80000000
	xorl	%edi, %edi
	jmp	.LBB0_20
.LBB0_18:
	movb	$51, %cl
	subb	%sil, %cl
	movl	$1, %eax
	shll	%cl, %eax
	addl	%edi, %eax
	adcl	$0, %edx
	movl	%eax, %edi
.LBB0_19:
	notl	%r8d
	andl	%edi, %r8d
	movl	%r8d, %edi
.LBB0_20:
	shlq	$32, %rdx
	movl	%edi, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm0
.LBB0_21:
	retq
.Lfunc_end0:
	.size	ceil, .Lfunc_end0-ceil
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
