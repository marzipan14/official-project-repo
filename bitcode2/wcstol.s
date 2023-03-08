	.text
	.file	"wcstol.c"
	.globl	_wcstol_r               # -- Begin function _wcstol_r
	.p2align	4, 0x90
	.type	_wcstol_r,@function
_wcstol_r:                              # @_wcstol_r
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
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstol_r, .Lfunc_end0-_wcstol_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _wcstol_l
	.type	_wcstol_l,@function
_wcstol_l:                              # @_wcstol_l
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
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	%ebx, %edi
	movq	%r15, %rsi
	callq	iswspace_l
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB1_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB1_4
# %bb.3:
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$43, %ebx
	jne	.LBB1_5
.LBB1_4:
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	%r13d, %eax
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB1_10
# %bb.6:
	cmpl	$48, %ebx
	jne	.LBB1_10
# %bb.7:
	movl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	je	.LBB1_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$88, %eax
	jne	.LBB1_10
.LBB1_9:
	movl	4(%r12), %ebx
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB1_12
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB1_13
# %bb.11:
	xorl	%eax, %eax
	cmpl	$48, %ebx
	setne	%al
	leal	(%rax,%rax), %r13d
	addl	$8, %r13d
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
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
	jmp	.LBB1_14
.LBB1_25:                               #   in Loop: Header=BB1_14 Depth=1
	imulq	%r10, %rax
	movslq	%ecx, %rcx
	addq	%rcx, %rax
	movl	$1, %edi
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r12), %ebx
	addq	$4, %r12
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %ecx
	jb	.LBB1_20
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	leal	-65(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %ecx
	ja	.LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_14 Depth=1
	addl	$-55, %ebx
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=1
	leal	-97(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %ecx
	ja	.LBB1_27
# %bb.18:                               #   in Loop: Header=BB1_14 Depth=1
	addl	$-87, %ebx
.LBB1_19:                               #   in Loop: Header=BB1_14 Depth=1
	movl	%ebx, %ecx
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %ecx
	jge	.LBB1_27
# %bb.21:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movl	$-1, %edi
	js	.LBB1_26
# %bb.22:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	ja	.LBB1_26
# %bb.23:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ecx
	jle	.LBB1_25
	jmp	.LBB1_26
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_28
# %bb.29:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB1_30
# %bb.31:
	negq	%rax
	jmp	.LBB1_32
.LBB1_28:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movq	%r9, %rax
.LBB1_32:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_33
.LBB1_30:
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_35
# %bb.34:
	testl	%edi, %edi
	cmoveq	%r14, %r12
	movq	%r12, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_35:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcstol_l, .Lfunc_end1-_wcstol_l
                                        # -- End function
	.globl	wcstol_l                # -- Begin function wcstol_l
	.p2align	4, 0x90
	.type	wcstol_l,@function
wcstol_l:                               # @wcstol_l
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
	callq	_wcstol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcstol_l, .Lfunc_end2-wcstol_l
                                        # -- End function
	.globl	wcstol                  # -- Begin function wcstol
	.p2align	4, 0x90
	.type	wcstol,@function
wcstol:                                 # @wcstol
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
	callq	_wcstol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstol, .Lfunc_end3-wcstol
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
