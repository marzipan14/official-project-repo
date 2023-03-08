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
	movq	%xmm0, %rdi
	movq	%rdi, %rdx
	shrq	$32, %rdx
	movq	%rdi, %rsi
	shrq	$52, %rsi
	andl	$2047, %esi             # imm = 0x7FF
	leal	-1023(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1042, %esi             # imm = 0x412
	ja	.LBB0_12
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1022, %esi             # imm = 0x3FE
	ja	.LBB0_7
# %bb.2:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_24
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	js	.LBB0_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	xorl	%edx, %edx
	jmp	.LBB0_24
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1075, %esi             # imm = 0x433
	jb	.LBB0_15
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1024, %eax             # imm = 0x400
	jne	.LBB0_25
# %bb.14:
	addsd	%xmm0, %xmm0
	jmp	.LBB0_25
.LBB0_7:
	movl	$1048575, %esi          # imm = 0xFFFFF
	movl	%eax, %ecx
	shrl	%cl, %esi
	andl	%edx, %esi
	orl	%edi, %esi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_25
# %bb.8:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_24
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_11
# %bb.10:
	movl	$1048576, %esi          # imm = 0x100000
	movl	%eax, %ecx
	shrl	%cl, %esi
	addl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %edx
.LBB0_11:
	movl	$-1048576, %esi         # imm = 0xFFF00000
	movl	%eax, %ecx
	sarl	%cl, %esi
	andl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movl	%esi, %edx
	jmp	.LBB0_24
.LBB0_15:
	leal	-19(%rsi), %ecx
	movl	$-1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %r8d
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %r8d
	je	.LBB0_25
# %bb.16:
	addsd	.LCPI0_0(%rip), %xmm0
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB0_24
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jns	.LBB0_23
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$20, %eax
	jne	.LBB0_20
# %bb.19:
	addl	$1, %edx
	jmp	.LBB0_22
.LBB0_5:
	movl	%edx, %eax
	andl	$2147483647, %eax       # imm = 0x7FFFFFFF
	orl	%edi, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_24
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1074790400, %edx      # imm = 0xBFF00000
	xorl	%edi, %edi
	jmp	.LBB0_24
.LBB0_20:
	movb	$51, %cl
	subb	%sil, %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %edi
	jae	.LBB0_22
# %bb.21:
	addl	$1, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:
	notl	%r8d
	andl	%r8d, %edi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_24:
	shlq	$32, %rdx
	movl	%edi, %eax
	orq	%rdx, %rax
	movq	%rax, %xmm0
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
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
