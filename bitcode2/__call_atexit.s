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
	movl	$42, __A_VARIABLE(%rip)
	movq	_global_impure_ptr(%rip), %r12
	movq	504(%r12), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB0_20
# %bb.1:
	movq	%rsi, %r15
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_4 Depth 2
	movslq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jle	.LBB0_20
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movl	%eax, %r14d
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_18:                               #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
.LBB0_19:                               #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	addq	$1, %rcx
	movq	%rbx, %rax
	cmpq	$1, %rcx
	jle	.LBB0_20
.LBB0_4:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-1(%rax), %rbx
	movl	$1, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, 520(%r13,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_18
.LBB0_6:                                #   in Loop: Header=BB0_4 Depth=2
	movq	8(%r13,%rax,8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jne	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=2
	movl	%ebx, 8(%r13)
	movl	%ebx, %r14d
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=2
	movq	$0, 8(%r13,%rax,8)
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_19
# %bb.10:                               #   in Loop: Header=BB0_4 Depth=2
	movl	784(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	andl	%edx, %esi
	je	.LBB0_11
# %bb.12:                               #   in Loop: Header=BB0_4 Depth=2
	andl	788(%r13), %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
# %bb.14:                               #   in Loop: Header=BB0_4 Depth=2
	movq	264(%r13,%rax,8), %rdi
	callq	*%rcx
	jmp	.LBB0_15
.LBB0_11:                               #   in Loop: Header=BB0_4 Depth=2
	callq	*%rcx
	jmp	.LBB0_15
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=2
	movq	264(%r13,%rax,8), %rsi
	movl	-44(%rbp), %edi         # 4-byte Reload
	callq	*%rcx
.LBB0_15:                               #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	8(%r13), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	504(%r12), %rax
	jne	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_4 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rax
	je	.LBB0_18
.LBB0_17:                               #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r13
	testq	%rax, %rax
	jne	.LBB0_2
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
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
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
