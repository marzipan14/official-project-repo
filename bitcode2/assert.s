	.text
	.file	"assert.c"
	.globl	__assert_func           # -- Begin function __assert_func
	.p2align	4, 0x90
	.type	__assert_func,@function
__assert_func:                          # @__assert_func
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movl	%esi, %r15d
	movq	%rdi, %r12
	callq	__getreent
	movq	24(%rax), %rdi
	testq	%rbx, %rbx
	movl	$.L.str.1, %r9d
	movl	$.L.str.2, %eax
	cmoveq	%rax, %r9
	cmovneq	%rbx, %rax
	movq	%rax, (%rsp)
	movl	$.L.str, %esi
	movq	%r14, %rdx
	movq	%r12, %rcx
	movl	%r15d, %r8d
	xorl	%eax, %eax
	callq	fiprintf
	callq	abort
.Lfunc_end0:
	.size	__assert_func, .Lfunc_end0-__assert_func
                                        # -- End function
	.globl	__assert                # -- Begin function __assert
	.p2align	4, 0x90
	.type	__assert,@function
__assert:                               # @__assert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rcx
	xorl	%edx, %edx
	callq	__assert_func
.Lfunc_end1:
	.size	__assert, .Lfunc_end1-__assert
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"assertion \"%s\" failed: file \"%s\", line %d%s%s\n"
	.size	.L.str, 47

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	", function: "
	.size	.L.str.1, 13

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
