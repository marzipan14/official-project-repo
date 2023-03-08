	.text
	.file	"tmpnam.c"
	.globl	_tmpnam_r               # -- Begin function _tmpnam_r
	.p2align	4, 0x90
	.type	_tmpnam_r,@function
_tmpnam_r:                              # @_tmpnam_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	36(%rdi), %r14
	testq	%rsi, %rsi
	cmovneq	%rsi, %r14
	callq	_getpid_r
	movl	%eax, %r15d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	32(%rbx), %eax
	movl	%eax, (%rsp)
	movl	$.L.str.4, %edx
	movl	$.L.str, %ecx
	movl	$.L.str.1, %r8d
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	%r15d, %r9d
	xorl	%eax, %eax
	callq	_sprintf_r
	addl	$1, 32(%rbx)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_open_r
	cmpl	$-1, %eax
	je	.LBB0_2
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_close_r
	jmp	.LBB0_1
.LBB0_2:
	cmpl	$88, (%rbx)
	jne	.LBB0_5
# %bb.3:
	movb	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB0_6
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, 32(%rbx)
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_tmpnam_r, .Lfunc_end0-_tmpnam_r
                                        # -- End function
	.globl	_tempnam_r              # -- Begin function _tempnam_r
	.p2align	4, 0x90
	.type	_tempnam_r,@function
_tempnam_r:                             # @_tempnam_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r15
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	movl	$.L.str.2, %r14d
	cmovneq	%rdx, %r14
	testq	%rsi, %rsi
	jne	.LBB1_2
# %bb.1:
	movl	$.L.str.3, %edi
	callq	getenv
	testq	%rax, %rax
	movl	$.L.str, %r15d
	cmovneq	%rax, %r15
.LBB1_2:
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, %r12
	movq	%r14, %rdi
	callq	strlen
	addl	%r12d, %eax
	addl	$19, %eax
	movslq	%eax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_3
# %bb.4:
	movq	%rax, %r12
	movq	%rbx, %rdi
	callq	_getpid_r
	movl	%ebx, %r13d
	xorl	%eax, %r13d
	.p2align	4, 0x90
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	movl	32(%rbx), %eax
	movl	%eax, (%rsp)
	movl	$.L.str.4, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rcx
	movq	%r14, %r8
	movl	%r13d, %r9d
	xorl	%eax, %eax
	callq	_sprintf_r
	addl	$1, 32(%rbx)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	_open_r
	cmpl	$-1, %eax
	je	.LBB1_6
# %bb.10:                               #   in Loop: Header=BB1_5 Depth=1
	movq	%rbx, %rdi
	movl	%eax, %esi
	callq	_close_r
	jmp	.LBB1_5
.LBB1_6:
	cmpl	$88, (%rbx)
	jne	.LBB1_8
# %bb.7:
	movb	$0, (%r12)
	xorl	%r12d, %r12d
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_9
.LBB1_3:
	xorl	%r12d, %r12d
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_tempnam_r, .Lfunc_end1-_tempnam_r
                                        # -- End function
	.globl	tempnam                 # -- Begin function tempnam
	.p2align	4, 0x90
	.type	tempnam,@function
tempnam:                                # @tempnam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	_tempnam_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	tempnam, .Lfunc_end2-tempnam
                                        # -- End function
	.globl	tmpnam                  # -- Begin function tmpnam
	.p2align	4, 0x90
	.type	tmpnam,@function
tmpnam:                                 # @tmpnam
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_tmpnam_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end3:
	.size	tmpnam, .Lfunc_end3-tmpnam
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"/tmp"
	.size	.L.str, 5

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"t"
	.size	.L.str.1, 2

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.zero	1
	.size	.L.str.2, 1

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"TMPDIR"
	.size	.L.str.3, 7

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"%s/%s%x.%x"
	.size	.L.str.4, 11

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
