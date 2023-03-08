	.text
	.file	"wcsstr.c"
	.globl	wcsstr                  # -- Begin function wcsstr
	.p2align	4, 0x90
	.type	wcsstr,@function
wcsstr:                                 # @wcsstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	cmpl	$0, (%rsi)
	je	.LBB0_3
# %bb.1:
	movq	%rsi, %rbx
	movq	%r14, %rdi
	callq	wcslen
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	wcslen
	cmpq	%rax, %r15
	jb	.LBB0_13
# %bb.4:
	movl	(%r14), %esi
	testl	%esi, %esi
	je	.LBB0_13
# %bb.5:
	movl	(%rbx), %ecx
	xorl	%eax, %eax
	movq	%r14, %rdx
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_7 Depth=1
	movl	4(%rdx), %esi
	addq	$4, %rdx
	testl	%esi, %esi
	je	.LBB0_14
.LBB0_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
	testl	%ecx, %ecx
	je	.LBB0_3
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=1
	cmpl	%ecx, %esi
	jne	.LBB0_6
# %bb.9:                                # %.preheader
                                        #   in Loop: Header=BB0_7 Depth=1
	movl	$4, %esi
	.p2align	4, 0x90
.LBB0_10:                               #   Parent Loop BB0_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rbx,%rsi), %edi
	testl	%edi, %edi
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=2
	cmpl	%edi, (%rdx,%rsi)
	leaq	4(%rsi), %rsi
	je	.LBB0_10
	jmp	.LBB0_6
.LBB0_13:
	xorl	%eax, %eax
	jmp	.LBB0_14
.LBB0_3:
	movq	%r14, %rax
	jmp	.LBB0_14
.LBB0_12:
	movq	%rdx, %rax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcsstr, .Lfunc_end0-wcsstr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
