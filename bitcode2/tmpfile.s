	.text
	.file	"tmpfile.c"
	.globl	_tmpfile_r              # -- Begin function _tmpfile_r
	.p2align	4, 0x90
	.type	_tmpfile_r,@function
_tmpfile_r:                             # @_tmpfile_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	leaq	-1072(%rbp), %r12
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	_tmpnam_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$2562, %edx             # imm = 0xA02
	movl	$384, %ecx              # imm = 0x180
	callq	_open_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jns	.LBB0_5
# %bb.3:                                #   in Loop: Header=BB0_1 Depth=1
	cmpl	$17, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_1
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	jmp	.LBB0_8
.LBB0_5:
	movl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str, %edx
	movq	%r15, %rdi
	movl	%eax, %esi
	callq	_fdopen_r
	movq	%rax, %r14
	movl	(%r15), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_7
# %bb.6:
	movq	%r15, %rdi
	movl	%ebx, %esi
	callq	_close_r
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	_remove_r
	movl	%r12d, (%r15)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_tmpfile_r, .Lfunc_end0-_tmpfile_r
                                        # -- End function
	.globl	tmpfile                 # -- Begin function tmpfile
	.p2align	4, 0x90
	.type	tmpfile,@function
tmpfile:                                # @tmpfile
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__getreent
	movq	%rax, %rdi
	callq	_tmpfile_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	tmpfile, .Lfunc_end1-tmpfile
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"wb+"
	.size	.L.str, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
