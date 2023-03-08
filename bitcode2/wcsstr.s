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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
# %bb.1:
	movq	%rsi, %rbx
	movq	%r14, %rdi
	callq	wcslen
	movq	%rax, %r15
	movq	%rbx, %rdi
	callq	wcslen
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jb	.LBB0_2
# %bb.3:
	movl	(%r14), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_2
# %bb.4:
	movl	(%rbx), %ecx
	xorl	%eax, %eax
	movq	%r14, %rdx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_5:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%rdx), %esi
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_14
.LBB0_6:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_9 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %esi
	jne	.LBB0_5
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB0_6 Depth=1
	movl	$4, %esi
	.p2align	4, 0x90
.LBB0_9:                                #   Parent Loop BB0_6 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx,%rsi), %edi
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	je	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=2
	cmpl	%edi, (%rdx,%rsi)
	leaq	4(%rsi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_9
	jmp	.LBB0_5
.LBB0_2:
	xorl	%eax, %eax
	jmp	.LBB0_14
.LBB0_11:
	movq	%rdx, %r14
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
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
