	.text
	.file	"wcstoll.c"
	.globl	_wcstoll_l              # -- Begin function _wcstoll_l
	.p2align	4, 0x90
	.type	_wcstoll_l,@function
_wcstoll_l:                             # @_wcstoll_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %r15
	movl	%ecx, %r13d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r14
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	%ebx, %edi
	movq	%r15, %rsi
	callq	iswspace_l
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB0_4
# %bb.3:
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$43, %ebx
	jne	.LBB0_5
.LBB0_4:
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movl	%r13d, %eax
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB0_10
# %bb.6:
	cmpl	$48, %ebx
	jne	.LBB0_10
# %bb.7:
	movl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	je	.LBB0_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$88, %eax
	jne	.LBB0_10
.LBB0_9:
	movl	4(%r12), %ebx
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB0_12
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB0_13
# %bb.11:
	xorl	%eax, %eax
	cmpl	$48, %ebx
	setne	%al
	leal	(%rax,%rax), %r13d
	addl	$8, %r13d
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rax), %r9
	testl	%r8d, %r8d
	cmoveq	%rax, %r9
	movslq	%r13d, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	movq	%rax, %rsi
	xorl	%eax, %eax
	addq	$-4, %r12
	xorl	%edi, %edi
	jmp	.LBB0_14
.LBB0_25:                               #   in Loop: Header=BB0_14 Depth=1
	imulq	%r10, %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movl	$1, %edi
	.p2align	4, 0x90
.LBB0_26:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r12), %ebx
	addq	$4, %r12
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB0_20
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	leal	-65(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %ecx
	ja	.LBB0_17
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addl	$-55, %ebx
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	leal	-97(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %ecx
	ja	.LBB0_27
# %bb.18:                               #   in Loop: Header=BB0_14 Depth=1
	addl	$-87, %ebx
.LBB0_19:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%ebx, %ecx
.LBB0_20:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jge	.LBB0_27
# %bb.21:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movl	$-1, %edi
	js	.LBB0_26
# %bb.22:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	ja	.LBB0_26
# %bb.23:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jle	.LBB0_25
	jmp	.LBB0_26
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB0_28
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_30
# %bb.31:
	negq	%rax
	jmp	.LBB0_32
.LBB0_28:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movq	%r9, %rax
.LBB0_32:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_33
.LBB0_30:
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_33:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_35
# %bb.34:
	testl	%edi, %edi
	cmoveq	%r14, %r12
	movq	%r12, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstoll_l, .Lfunc_end0-_wcstoll_l
                                        # -- End function
	.globl	_wcstoll_r              # -- Begin function _wcstoll_r
	.p2align	4, 0x90
	.type	_wcstoll_r,@function
_wcstoll_r:                             # @_wcstoll_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstoll_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcstoll_r, .Lfunc_end1-_wcstoll_r
                                        # -- End function
	.globl	wcstoll_l               # -- Begin function wcstoll_l
	.p2align	4, 0x90
	.type	wcstoll_l,@function
wcstoll_l:                              # @wcstoll_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rcx, %r14
	movl	%edx, %r15d
	movq	%rsi, %r12
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	%r14, %r8
	callq	_wcstoll_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcstoll_l, .Lfunc_end2-wcstoll_l
                                        # -- End function
	.globl	wcstoll                 # -- Begin function wcstoll
	.p2align	4, 0x90
	.type	wcstoll,@function
wcstoll:                                # @wcstoll
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %r12
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstoll_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstoll, .Lfunc_end3-wcstoll
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
