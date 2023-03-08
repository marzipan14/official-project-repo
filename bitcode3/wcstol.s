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
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %r8d
	cmovneq	%rax, %r8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_wcstol_l               # TAILCALL
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
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	%ebx, %edi
	movq	%r15, %rsi
	callq	iswspace_l
	testl	%eax, %eax
	jne	.LBB1_1
# %bb.2:
	cmpl	$43, %ebx
	je	.LBB1_5
# %bb.3:
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB1_6
# %bb.4:                                # %._crit_edge
	xorl	%r8d, %r8d
	jmp	.LBB1_7
.LBB1_5:
	xorl	%r8d, %r8d
.LBB1_6:
	movl	(%r12), %ebx
	addq	$4, %r12
.LBB1_7:
	movl	%r13d, %eax
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB1_11
# %bb.8:
	cmpl	$48, %ebx
	jne	.LBB1_11
# %bb.9:
	movl	(%r12), %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB1_12
# %bb.10:
	movl	4(%r12), %ebx
	addq	$8, %r12
	movl	$16, %r13d
	jmp	.LBB1_15
.LBB1_11:
	testl	%r13d, %r13d
	sete	%al
	movl	$10, %ecx
	cmpl	$48, %ebx
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:
	testl	%r13d, %r13d
	sete	%al
.LBB1_13:
	movl	$8, %ecx
	movl	$48, %ebx
.LBB1_14:
	testb	%al, %al
	cmovnel	%ecx, %r13d
.LBB1_15:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rax), %r9
	testl	%r8d, %r8d
	cmoveq	%rax, %r9
	movslq	%r13d, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	xorl	%r15d, %r15d
	addq	$-4, %r12
	xorl	%r11d, %r11d
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%r15, %rcx
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=1
	movl	4(%r12), %ebx
	addq	$4, %r12
	movq	%rcx, %r15
	movl	%esi, %r11d
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rbx), %edi
	cmpl	$10, %edi
	jb	.LBB1_24
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	leal	-65(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	addl	$-55, %ebx
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_18 Depth=1
	leal	-97(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_31
# %bb.22:                               #   in Loop: Header=BB1_18 Depth=1
	addl	$-87, %ebx
.LBB1_23:                               #   in Loop: Header=BB1_18 Depth=1
	movl	%ebx, %edi
.LBB1_24:                               #   in Loop: Header=BB1_18 Depth=1
	cmpl	%r13d, %edi
	jge	.LBB1_31
# %bb.25:                               #   in Loop: Header=BB1_18 Depth=1
	movl	$-1, %esi
	cmpq	%rax, %r15
	ja	.LBB1_30
# %bb.26:                               #   in Loop: Header=BB1_18 Depth=1
	testl	%r11d, %r11d
	js	.LBB1_30
# %bb.27:                               #   in Loop: Header=BB1_18 Depth=1
	cmpq	%rax, %r15
	jne	.LBB1_16
# %bb.28:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rax, %rcx
	cmpl	%edx, %edi
	jg	.LBB1_17
.LBB1_16:                               #   in Loop: Header=BB1_18 Depth=1
	imulq	%r10, %r15
	movslq	%edi, %rcx
	addq	%r15, %rcx
	movl	$1, %esi
	jmp	.LBB1_17
.LBB1_31:
	testl	%r11d, %r11d
	js	.LBB1_33
# %bb.32:
	movq	%r15, %r9
	negq	%r9
	testl	%r8d, %r8d
	cmoveq	%r15, %r9
	jmp	.LBB1_34
.LBB1_33:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
.LBB1_34:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_36
# %bb.35:
	testl	%r11d, %r11d
	cmoveq	%r14, %r12
	movq	%r12, (%rax)
.LBB1_36:
	movq	%r9, %rax
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_wcstol_l               # TAILCALL
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
	movq	72(%rax), %rax
	testq	%rax, %rax
	movl	$__global_locale, %r8d
	cmovneq	%rax, %r8
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_wcstol_l               # TAILCALL
.Lfunc_end3:
	.size	wcstol, .Lfunc_end3-wcstol
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
