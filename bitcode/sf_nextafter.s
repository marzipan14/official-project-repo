	.text
	.file	"sf_nextafter.c"
	.globl	nextafterf              # -- Begin function nextafterf
	.p2align	4, 0x90
	.type	nextafterf,@function
nextafterf:                             # @nextafterf
# %bb.0:
	movd	%xmm0, %eax
	movl	%eax, %edx
	andl	$2147483647, %edx       # imm = 0x7FFFFFFF
	cmpl	$2139095040, %edx       # imm = 0x7F800000
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %ecx
	movl	%ecx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	cmpl	$2139095041, %esi       # imm = 0x7F800001
	jae	.LBB0_2
# %bb.3:
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_4
	jp	.LBB0_4
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_2:
	addss	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_4:
	testl	%edx, %edx
	je	.LBB0_5
# %bb.6:
	testl	%eax, %eax
	js	.LBB0_8
# %bb.7:
	cmpl	%ecx, %eax
	setg	%cl
	jmp	.LBB0_9
.LBB0_5:
	andl	$-2147483648, %ecx      # imm = 0x80000000
	orl	$1, %ecx
	movd	%ecx, %xmm1
	movdqa	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movaps	%xmm2, %xmm0
	cmpeqss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_8:
	testl	%ecx, %ecx
	setns	%dl
	cmpl	%ecx, %eax
	setg	%cl
	orb	%dl, %cl
.LBB0_9:
	xorb	$1, %cl
	movzbl	%cl, %ecx
	leal	(%rax,%rcx,2), %eax
	addl	$-1, %eax
	movl	%eax, %ecx
	andl	$2139095040, %ecx       # imm = 0x7F800000
	je	.LBB0_12
# %bb.10:
	cmpl	$2139095040, %ecx       # imm = 0x7F800000
	jne	.LBB0_13
# %bb.11:
	addss	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_12:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	ucomiss	%xmm0, %xmm1
.LBB0_13:
	movd	%eax, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	nextafterf, .Lfunc_end0-nextafterf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
