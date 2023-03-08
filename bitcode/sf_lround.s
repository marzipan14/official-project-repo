	.text
	.file	"sf_lround.c"
	.globl	lroundf                 # -- Begin function lroundf
	.p2align	4, 0x90
	.type	lroundf,@function
lroundf:                                # @lroundf
# %bb.0:
	movd	%xmm0, %esi
	movl	%esi, %ecx
	shrl	$23, %ecx
	movzbl	%cl, %edx
	cmpl	$189, %edx
	ja	.LBB0_5
# %bb.1:
	movl	%esi, %eax
	notl	%eax
	shrl	$31, %eax
	addl	%eax, %eax
	addl	$-1, %eax
	cmpl	$126, %edx
	ja	.LBB0_3
# %bb.2:
	xorl	%ecx, %ecx
	cmpl	$126, %edx
	cmovel	%eax, %ecx
	movslq	%ecx, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_5:
	cvttss2si	%xmm0, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB0_3:
	andl	$8388607, %esi          # imm = 0x7FFFFF
	orl	$8388608, %esi          # imm = 0x800000
	cmpl	$150, %edx
	jb	.LBB0_6
# %bb.4:
	movl	%esi, %edi
	addb	$106, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shlq	%cl, %rdi
	jmp	.LBB0_7
.LBB0_6:
	leal	-127(%rdx), %ecx
	movl	$4194304, %edi          # imm = 0x400000
                                        # kill: def $cl killed $cl killed $ecx
	shrl	%cl, %edi
	addl	%esi, %edi
	movb	$-106, %cl
	subb	%dl, %cl
	shrl	%cl, %edi
.LBB0_7:
	cltq
	imulq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	lroundf, .Lfunc_end0-lroundf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
