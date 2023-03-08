	.text
	.file	"s_floor.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function floor
.LCPI0_0:
	.quad	9094988921128908188     # double 1.0000000000000001E+300
	.text
	.globl	floor
	.p2align	4, 0x90
	.type	floor,@function
floor:                                  # @floor
# %bb.0:
	movq	%xmm0, %rdx
	movq	%rdx, %rax
	shrq	$32, %rax
	movq	%rdx, %rsi
	shrq	$52, %rsi
	andl	$2047, %esi             # imm = 0x7FF
	leal	-1023(%rsi), %r8d
	cmpl	$1042, %esi             # imm = 0x412
	ja	.LBB0_8
# %bb.1:
	cmpl	$1022, %esi             # imm = 0x3FE
	ja	.LBB0_5
# %bb.2:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_13
# %bb.3:
	xorl	%edi, %edi
	movl	$0, %esi
	testl	%eax, %eax
	jns	.LBB0_20
# %bb.4:
	movl	%eax, %ecx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	xorl	%edi, %edi
	orl	%edx, %ecx
	cmovel	%edx, %edi
	movl	$-1074790400, %esi      # imm = 0xBFF00000
	cmovel	%eax, %esi
	jmp	.LBB0_20
.LBB0_8:
	cmpl	$1075, %esi             # imm = 0x433
	jb	.LBB0_11
# %bb.9:
	cmpl	$1024, %r8d             # imm = 0x400
	jne	.LBB0_21
# %bb.10:
	addsd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_5:
	movl	$1048575, %esi          # imm = 0xFFFFF
	movl	%r8d, %ecx
	shrl	%cl, %esi
	andl	%eax, %esi
	orl	%edx, %esi
	je	.LBB0_21
# %bb.6:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_13
# %bb.7:
	movl	$1048576, %edx          # imm = 0x100000
	movl	%r8d, %ecx
	shrl	%cl, %edx
	movl	%eax, %edi
	sarl	$31, %edi
	movl	$-1048576, %esi         # imm = 0xFFF00000
	sarl	%cl, %esi
	andl	%edx, %edi
	addl	%eax, %edi
	andl	%edi, %esi
	xorl	%edi, %edi
	jmp	.LBB0_20
.LBB0_11:
	leal	-19(%rsi), %ecx
	movl	$-1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	testl	%edx, %edi
	je	.LBB0_21
# %bb.12:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jbe	.LBB0_13
# %bb.14:
	testl	%eax, %eax
	jns	.LBB0_18
# %bb.15:
	cmpl	$20, %r8d
	jne	.LBB0_17
# %bb.16:
	addl	$1, %eax
	jmp	.LBB0_18
.LBB0_13:
	movl	%edx, %edi
	jmp	.LBB0_19
.LBB0_17:
	movb	$51, %cl
	subb	%sil, %cl
	movl	$1, %esi
	shll	%cl, %esi
	addl	%edx, %esi
	adcl	$0, %eax
	movl	%esi, %edx
.LBB0_18:
	notl	%edi
	andl	%edx, %edi
.LBB0_19:
	movl	%eax, %esi
.LBB0_20:
	shlq	$32, %rsi
	movl	%edi, %eax
	orq	%rsi, %rax
	movq	%rax, %xmm0
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	floor, .Lfunc_end0-floor
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
