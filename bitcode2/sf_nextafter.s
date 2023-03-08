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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %edx       # imm = 0x7F800000
	ja	.LBB0_2
# %bb.1:
	movd	%xmm1, %ecx
	movl	%ecx, %esi
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095041, %esi       # imm = 0x7F800001
	jb	.LBB0_3
.LBB0_2:
	addss	%xmm1, %xmm0
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	ucomiss	%xmm1, %xmm0
	jne	.LBB0_4
	jnp	.LBB0_14
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB0_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_7
.LBB0_8:
	xorl	%edx, %edx
	cmpl	%ecx, %eax
	setle	%dl
	movl	$42, __A_VARIABLE(%rip)
	addl	%edx, %edx
	addl	$-1, %edx
	jmp	.LBB0_9
.LBB0_5:
	andl	$-2147483648, %ecx      # imm = 0x80000000
	orl	$1, %ecx
	movd	%ecx, %xmm1
	movdqa	%xmm1, %xmm2
	mulss	%xmm1, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movaps	%xmm2, %xmm0
	cmpeqss	%xmm1, %xmm0
	andps	%xmm0, %xmm2
	andnps	%xmm1, %xmm0
	orps	%xmm2, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %edx
	testl	%ecx, %ecx
	js	.LBB0_8
.LBB0_9:
	addl	%eax, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %eax
	andl	$2139095040, %eax       # imm = 0x7F800000
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2139095040, %eax       # imm = 0x7F800000
	jne	.LBB0_11
# %bb.10:
	addss	%xmm0, %xmm0
	jmp	.LBB0_14
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_13
# %bb.12:
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ucomiss	%xmm0, %xmm1
.LBB0_13:
	movd	%edx, %xmm0
	jmp	.LBB0_14
.Lfunc_end0:
	.size	nextafterf, .Lfunc_end0-nextafterf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
