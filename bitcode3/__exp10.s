	.text
	.file	"__exp10.c"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3               # -- Begin function __exp10
.LCPI0_0:
	.quad	4621819117588971520     # double 10
	.text
	.globl	__exp10
	.p2align	4, 0x90
	.type	__exp10,@function
__exp10:                                # @__exp10
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpl	$4, %edi
	ja	.LBB0_1
# %bb.3:
	movl	%edi, %eax
	movsd	__exp10.powtab(,%rax,8), %xmm0 # xmm0 = mem[0],zero
	popq	%rbp
	retq
.LBB0_1:
	testb	$1, %dil
	jne	.LBB0_4
# %bb.2:
	shrl	%edi
	callq	__exp10
	mulsd	%xmm0, %xmm0
	popq	%rbp
	retq
.LBB0_4:
	addl	$-1, %edi
	callq	__exp10
	mulsd	.LCPI0_0(%rip), %xmm0
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__exp10, .Lfunc_end0-__exp10
                                        # -- End function
	.type	__exp10.powtab,@object  # @__exp10.powtab
	.section	.rodata,"a",@progbits
	.p2align	4
__exp10.powtab:
	.quad	4607182418800017408     # double 1
	.quad	4621819117588971520     # double 10
	.quad	4636737291354636288     # double 100
	.quad	4652007308841189376     # double 1000
	.quad	4666723172467343360     # double 1.0E+4
	.size	__exp10.powtab, 40

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
