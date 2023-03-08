	.text
	.file	"strrchr.c"
	.globl	strrchr                 # -- Begin function strrchr
	.p2align	4, 0x90
	.type	strrchr,@function
strrchr:                                # @strrchr
# %bb.0:
	testl	%esi, %esi
	je	.LBB0_4
# %bb.1:                                # %.preheader
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %r14d
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %rbx
	movl	%r14d, %esi
	callq	strchr
	leaq	1(%rax), %rdi
	testq	%rax, %rax
	jne	.LBB0_2
# %bb.3:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB0_4:
	xorl	%esi, %esi
	jmp	strchr                  # TAILCALL
.Lfunc_end0:
	.size	strrchr, .Lfunc_end0-strrchr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
