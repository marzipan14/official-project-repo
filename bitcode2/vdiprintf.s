	.text
	.file	"vdiprintf.c"
	.globl	_vdiprintf_r            # -- Begin function _vdiprintf_r
	.p2align	4, 0x90
	.type	_vdiprintf_r,@function
_vdiprintf_r:                           # @_vdiprintf_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$528, %rsp              # imm = 0x210
	movq	%rcx, %r8
	movq	%rdx, %rcx
	movl	%esi, %r15d
	movq	%rdi, %r12
	movq	$512, -40(%rbp)         # imm = 0x200
	leaq	-560(%rbp), %r14
	leaq	-40(%rbp), %rdx
	movq	%r14, %rsi
	callq	_vasniprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rax, %rbx
	movq	-40(%rbp), %rcx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	_write_r
	movq	%rax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB0_4
# %bb.3:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movq	-40(%rbp), %rax
	jmp	.LBB0_4
.LBB0_1:
	movl	$-1, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$528, %rsp              # imm = 0x210
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_vdiprintf_r, .Lfunc_end0-_vdiprintf_r
                                        # -- End function
	.globl	vdiprintf               # -- Begin function vdiprintf
	.p2align	4, 0x90
	.type	vdiprintf,@function
vdiprintf:                              # @vdiprintf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$520, %rsp              # imm = 0x208
	movq	%rdx, %r13
	movq	%rsi, %rbx
	movl	%edi, %r15d
	callq	__getreent
	movq	%rax, %r12
	movq	$512, -48(%rbp)         # imm = 0x200
	leaq	-560(%rbp), %r14
	leaq	-48(%rbp), %rdx
	movq	%rax, %rdi
	movq	%r14, %rsi
	movq	%rbx, %rcx
	movq	%r13, %r8
	callq	_vasniprintf_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	%rax, %rbx
	movq	-48(%rbp), %rcx
	movq	%r12, %rdi
	movl	%r15d, %esi
	movq	%rax, %rdx
	callq	_write_r
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB1_4
# %bb.3:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
	jmp	.LBB1_4
.LBB1_1:
	movl	$-1, %eax
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $eax killed $eax killed $rax
	addq	$520, %rsp              # imm = 0x208
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	vdiprintf, .Lfunc_end1-vdiprintf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
