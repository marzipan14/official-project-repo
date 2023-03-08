	.text
	.file	"iconvnls.c"
	.globl	_iconv_nls_construct_filename # -- Begin function _iconv_nls_construct_filename
	.p2align	4, 0x90
	.type	_iconv_nls_construct_filename,@function
_iconv_nls_construct_filename:          # @_iconv_nls_construct_filename
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, %r12
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	_getenv_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	%rax, %r13
	cmpb	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.1, %r13d
.LBB0_3:
	movq	%r13, %rdi
	callq	strlen
	movq	%rax, %r15
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	callq	strlen
	movq	%rax, %rbx
	movq	%r12, %rdi
	callq	strlen
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%rax, %r12
	movq	-72(%rbp), %rax         # 8-byte Reload
	addl	%r15d, %eax
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	addl	%ebx, %eax
	addl	%r12d, %eax
	addl	$3, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_9
# %bb.4:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%r15, %r12
	shlq	$32, %r12
	movslq	%r15d, %rbx
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movabsq	$-4294967296, %rax      # imm = 0xFFFFFFFF00000000
	addq	%r12, %rax
	sarq	$32, %rax
	cmpb	$47, (%r14,%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.5:
	addl	$1, %r15d
	movb	$47, (%r14,%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_6:
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %r13         # 8-byte Reload
	movslq	%r15d, %rbx
	leaq	(%r14,%rbx), %rdi
	movq	-72(%rbp), %r15         # 8-byte Reload
	movslq	%r15d, %rdx
	callq	memcpy
	addl	%r15d, %ebx
	movslq	%ebx, %rbx
	movb	$47, (%r14,%rbx)
	leaq	(%r14,%rbx), %rdi
	addq	$1, %rdi
	movslq	%r13d, %rdx
	movq	-88(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	addl	%r13d, %ebx
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_8
# %bb.7:
	movslq	%ebx, %rbx
	movq	%r14, %rdi
	addq	%rbx, %rdi
	movq	-80(%rbp), %r15         # 8-byte Reload
	movslq	%r15d, %rdx
	movq	%r12, %rsi
	callq	memcpy
	addl	%r15d, %ebx
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movslq	%ebx, %rax
	movb	$0, (%r14,%rax)
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_iconv_nls_construct_filename, .Lfunc_end0-_iconv_nls_construct_filename
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"NLSPATH"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"/usr/locale"
	.size	.L.str.1, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
