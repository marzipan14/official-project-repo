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
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	232(%rax), %rax
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.4:
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r12, %rcx
	jmp	.LBB0_5
.LBB0_3:
	movl	$.L.str, %edx
	movl	$1, %ecx
	movq	%r15, %rdi
	xorl	%esi, %esi
.LBB0_5:
	movq	%r14, %r8
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB0_6
# %bb.7:
	cltq
	jmp	.LBB0_8
.LBB0_6:
	movl	$0, (%r14)
	movl	$138, (%r15)
	movq	$-1, %rax
.LBB0_8:
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
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r13
	callq	__getreent
	movq	%rax, %r12
	callq	__getreent
	movq	72(%rax), %rax
	testq	%rax, %rax
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	232(%rax), %rax
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.4:
	movq	%r12, %rdi
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movq	%r15, %rcx
	jmp	.LBB1_5
.LBB1_3:
	movl	$.L.str, %edx
	movl	$1, %ecx
	movq	%r12, %rdi
	xorl	%esi, %esi
.LBB1_5:
	movq	%r14, %r8
	callq	*%rax
	cmpl	$-1, %eax
	je	.LBB1_6
# %bb.7:
	cltq
	jmp	.LBB1_8
.LBB1_6:
	movl	$0, (%r14)
	movl	$138, (%r12)
	movq	$-1, %rax
.LBB1_8:
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
