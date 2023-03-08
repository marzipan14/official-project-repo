	.text
	.file	"mbtowc_r.c"
	.globl	_mbtowc_r               # -- Begin function _mbtowc_r
	.p2align	4, 0x90
	.type	_mbtowc_r,@function
_mbtowc_r:                              # @_mbtowc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, -48(%rbp)          # 8-byte Spill
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %r14
	callq	__getreent
	movq	72(%rax), %rbx
	testq	%rbx, %rbx
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ebx
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%r13, %rsi
	movq	%r12, %rdx
	movq	%r15, %rcx
	movq	-48(%rbp), %r8          # 8-byte Reload
	callq	*232(%rbx)
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
	.size	_mbtowc_r, .Lfunc_end0-_mbtowc_r
                                        # -- End function
	.globl	__ascii_mbtowc          # -- Begin function __ascii_mbtowc
	.p2align	4, 0x90
	.type	__ascii_mbtowc,@function
__ascii_mbtowc:                         # @__ascii_mbtowc
# %bb.0:
	subq	$4, %rsp
	testq	%rsi, %rsi
	movq	%rsp, %rax
	cmovneq	%rsi, %rax
	testq	%rdx, %rdx
	je	.LBB1_1
# %bb.2:
	testq	%rcx, %rcx
	je	.LBB1_3
# %bb.4:
	movzbl	(%rdx), %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
	cmpb	$0, (%rdx)
	setne	%al
	jmp	.LBB1_5
.LBB1_1:
	xorl	%eax, %eax
	jmp	.LBB1_5
.LBB1_3:
	movl	$-2, %eax
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsp
	retq
.Lfunc_end1:
	.size	__ascii_mbtowc, .Lfunc_end1-__ascii_mbtowc
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
