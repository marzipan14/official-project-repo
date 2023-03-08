	.text
	.file	"wcstoul.c"
	.globl	_wcstoul_l              # -- Begin function _wcstoul_l
	.p2align	4, 0x90
	.type	_wcstoul_l,@function
_wcstoul_l:                             # @_wcstoul_l
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
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	(%r12), %ebx
	addq	$4, %r12
	movl	%ebx, %edi
	movq	%r15, %rsi
	callq	iswspace_l
	testl	%eax, %eax
	jne	.LBB0_1
# %bb.2:
	cmpl	$43, %ebx
	je	.LBB0_5
# %bb.3:
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB0_6
# %bb.4:                                # %._crit_edge
	xorl	%r8d, %r8d
	jmp	.LBB0_7
.LBB0_5:
	xorl	%r8d, %r8d
.LBB0_6:
	movl	(%r12), %ebx
	addq	$4, %r12
.LBB0_7:
	movl	%r13d, %eax
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_11
# %bb.8:
	cmpl	$48, %ebx
	jne	.LBB0_11
# %bb.9:
	movl	(%r12), %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_12
# %bb.10:
	movl	4(%r12), %ebx
	addq	$8, %r12
	movl	$16, %r13d
	jmp	.LBB0_15
.LBB0_11:
	testl	%r13d, %r13d
	sete	%al
	movl	$10, %ecx
	cmpl	$48, %ebx
	je	.LBB0_13
	jmp	.LBB0_14
.LBB0_12:
	testl	%r13d, %r13d
	sete	%al
.LBB0_13:
	movl	$8, %ecx
	movl	$48, %ebx
.LBB0_14:
	testb	%al, %al
	cmovnel	%ecx, %r13d
.LBB0_15:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	xorl	%r11d, %r11d
	addq	$-4, %r12
	xorl	%r10d, %r10d
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_30:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%r11, %rdi
.LBB0_17:                               #   in Loop: Header=BB0_18 Depth=1
	movl	4(%r12), %ebx
	addq	$4, %r12
	movq	%rdi, %r11
	movl	%ecx, %r10d
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rbx), %esi
	cmpl	$10, %esi
	jb	.LBB0_24
# %bb.19:                               #   in Loop: Header=BB0_18 Depth=1
	leal	-65(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_18 Depth=1
	addl	$-55, %ebx
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_18 Depth=1
	leal	-97(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB0_31
# %bb.22:                               #   in Loop: Header=BB0_18 Depth=1
	addl	$-87, %ebx
.LBB0_23:                               #   in Loop: Header=BB0_18 Depth=1
	movl	%ebx, %esi
.LBB0_24:                               #   in Loop: Header=BB0_18 Depth=1
	cmpl	%r13d, %esi
	jge	.LBB0_31
# %bb.25:                               #   in Loop: Header=BB0_18 Depth=1
	movl	$-1, %ecx
	cmpq	%rax, %r11
	ja	.LBB0_30
# %bb.26:                               #   in Loop: Header=BB0_18 Depth=1
	testl	%r10d, %r10d
	js	.LBB0_30
# %bb.27:                               #   in Loop: Header=BB0_18 Depth=1
	cmpq	%rax, %r11
	jne	.LBB0_16
# %bb.28:                               #   in Loop: Header=BB0_18 Depth=1
	movq	%rax, %rdi
	cmpl	%edx, %esi
	jg	.LBB0_17
.LBB0_16:                               #   in Loop: Header=BB0_18 Depth=1
	imulq	%r9, %r11
	movslq	%esi, %rdi
	addq	%r11, %rdi
	movl	$1, %ecx
	jmp	.LBB0_17
.LBB0_31:
	testl	%r10d, %r10d
	js	.LBB0_33
# %bb.32:
	movq	%r11, %rax
	negq	%rax
	testl	%r8d, %r8d
	cmoveq	%r11, %rax
	jmp	.LBB0_34
.LBB0_33:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movq	$-1, %rax
.LBB0_34:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_36
# %bb.35:
	testl	%r10d, %r10d
	cmoveq	%r14, %r12
	movq	%r12, (%rcx)
.LBB0_36:
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
	.size	_wcstoul_l, .Lfunc_end0-_wcstoul_l
                                        # -- End function
	.globl	_wcstoul_r              # -- Begin function _wcstoul_r
	.p2align	4, 0x90
	.type	_wcstoul_r,@function
_wcstoul_r:                             # @_wcstoul_r
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
	testq	%r8, %r8
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcstoul_r, .Lfunc_end1-_wcstoul_r
                                        # -- End function
	.globl	wcstoul_l               # -- Begin function wcstoul_l
	.p2align	4, 0x90
	.type	wcstoul_l,@function
wcstoul_l:                              # @wcstoul_l
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
	callq	_wcstoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcstoul_l, .Lfunc_end2-wcstoul_l
                                        # -- End function
	.globl	wcstoul                 # -- Begin function wcstoul
	.p2align	4, 0x90
	.type	wcstoul,@function
wcstoul:                                # @wcstoul
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
	testq	%r8, %r8
	jne	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstoul, .Lfunc_end3-wcstoul
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
