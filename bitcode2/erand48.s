	.text
	.file	"erand48.c"
	.globl	_erand48_r              # -- Begin function _erand48_r
	.p2align	4, 0x90
	.type	_erand48_r,@function
_erand48_r:                             # @_erand48_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	callq	__dorand48
	movzwl	(%rbx), %eax
	cvtsi2sd	%eax, %xmm0
	movl	$-48, %edi
	callq	ldexp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movzwl	2(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	$-32, %edi
	callq	ldexp
	addsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movzwl	4(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	$-16, %edi
	callq	ldexp
	addsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_erand48_r, .Lfunc_end0-_erand48_r
                                        # -- End function
	.globl	erand48                 # -- Begin function erand48
	.p2align	4, 0x90
	.type	erand48,@function
erand48:                                # @erand48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	__dorand48
	movzwl	(%rbx), %eax
	cvtsi2sd	%eax, %xmm0
	movl	$-48, %edi
	callq	ldexp
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movzwl	2(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	$-32, %edi
	callq	ldexp
	addsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	%xmm0, -16(%rbp)        # 8-byte Spill
	movzwl	4(%rbx), %eax
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movl	$-16, %edi
	callq	ldexp
	addsd	-16(%rbp), %xmm0        # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	erand48, .Lfunc_end1-erand48
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
