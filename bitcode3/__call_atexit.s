	.text
	.file	"__call_atexit.c"
	.globl	__call_exitprocs        # -- Begin function __call_exitprocs
	.p2align	4, 0x90
	.type	__call_exitprocs,@function
__call_exitprocs:                       # @__call_exitprocs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edi, -44(%rbp)         # 4-byte Spill
	movq	_global_impure_ptr(%rip), %r12
	movq	504(%r12), %rax
	testq	%rax, %rax
	je	.LBB0_19
# %bb.1:
	movq	%rsi, %r15
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	movq	%rax, %r13
	movslq	8(%rax), %rax
	testq	%rax, %rax
	jle	.LBB0_19
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	%eax, %r14d
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_5 Depth=2
	movq	%rbx, %rcx
	addq	$1, %rcx
	movq	%rbx, %rax
	cmpq	$1, %rcx
	jle	.LBB0_19
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rax), %rbx
	movl	$1, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	testq	%r15, %r15
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	cmpq	%r15, 520(%r13,%rax,8)
	jne	.LBB0_18
.LBB0_7:                                #   in Loop: Header=BB0_5 Depth=2
	movq	8(%r13,%rax,8), %rcx
	cmpl	%r14d, %eax
	jne	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_5 Depth=2
	movl	%ebx, 8(%r13)
	movl	%ebx, %r14d
	testq	%rcx, %rcx
	jne	.LBB0_11
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_5 Depth=2
	movq	$0, 8(%r13,%rax,8)
	testq	%rcx, %rcx
	je	.LBB0_18
.LBB0_11:                               #   in Loop: Header=BB0_5 Depth=2
	testl	%edx, 784(%r13)
	je	.LBB0_12
# %bb.13:                               #   in Loop: Header=BB0_5 Depth=2
	testl	%edx, 788(%r13)
	je	.LBB0_14
# %bb.15:                               #   in Loop: Header=BB0_5 Depth=2
	movq	264(%r13,%rax,8), %rdi
	callq	*%rcx
	jmp	.LBB0_16
.LBB0_12:                               #   in Loop: Header=BB0_5 Depth=2
	callq	*%rcx
	jmp	.LBB0_16
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=2
	movq	264(%r13,%rax,8), %rsi
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	*%rcx
.LBB0_16:                               #   in Loop: Header=BB0_5 Depth=2
	movq	504(%r12), %rax
	cmpl	8(%r13), %r14d
	jne	.LBB0_2
# %bb.17:                               #   in Loop: Header=BB0_5 Depth=2
	cmpq	%r13, %rax
	je	.LBB0_18
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	testq	%rax, %rax
	jne	.LBB0_3
.LBB0_19:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__call_exitprocs, .Lfunc_end0-__call_exitprocs
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
