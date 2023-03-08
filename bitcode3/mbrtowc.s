	.text
	.file	"mbrtowc.c"
	.globl	_mbrtowc_r              # -- Begin function _mbrtowc_r
	.p2align	4, 0x90
	.type	_mbrtowc_r,@function
_mbrtowc_r:                             # @_mbrtowc_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r12
	movq	%rdx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r15
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	232(%rcx), %rax
	testq	%rbx, %rbx
	je	.LBB0_1
# %bb.2:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	jmp	.LBB0_3
.LBB0_1:
	movl	$.L.str, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
.LBB0_3:
	movq	%r14, %r8
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB0_4
# %bb.5:
	cltq
	jmp	.LBB0_6
.LBB0_4:
	movl	$0, (%r14)
	movl	$138, (%r15)
	movq	$-1, %rax
.LBB0_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_mbrtowc_r, .Lfunc_end0-_mbrtowc_r
                                        # -- End function
	.globl	mbrtowc                 # -- Begin function mbrtowc
	.p2align	4, 0x90
	.type	mbrtowc,@function
mbrtowc:                                # @mbrtowc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdx, %r12
	movq	%rsi, %rbx
	movq	%rdi, %r13
	callq	__getreent
	movq	%rax, %r15
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %ecx
	cmovneq	%rax, %rcx
	movq	232(%rcx), %rax
	testq	%rbx, %rbx
	je	.LBB1_1
# %bb.2:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	jmp	.LBB1_3
.LBB1_1:
	movl	$.L.str, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
.LBB1_3:
	movq	%r14, %r8
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB1_4
# %bb.5:
	cltq
	jmp	.LBB1_6
.LBB1_4:
	movl	$0, (%r14)
	movl	$138, (%r15)
	movq	$-1, %rax
.LBB1_6:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	mbrtowc, .Lfunc_end1-mbrtowc
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.zero	1
	.size	.L.str, 1

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
