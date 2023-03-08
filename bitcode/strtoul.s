	.text
	.file	"strtoul.c"
	.globl	_strtoul_r              # -- Begin function _strtoul_r
	.p2align	4, 0x90
	.type	_strtoul_r,@function
_strtoul_r:                             # @_strtoul_r
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
	jne	.LBB0_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_strtoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strtoul_r, .Lfunc_end0-_strtoul_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _strtoul_l
	.type	_strtoul_l,@function
_strtoul_l:                             # @_strtoul_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %rbx
	movl	%ecx, %r13d
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r12), %r14d
	addq	$1, %r12
	movq	%rbx, %rdi
	callq	__locale_ctype_ptr_l
	testb	$8, 1(%rax,%r14)
	jne	.LBB1_1
# %bb.2:
	cmpb	$43, %r14b
	je	.LBB1_5
# %bb.3:
	movl	$1, %r8d
	cmpb	$45, %r14b
	je	.LBB1_6
# %bb.4:                                # %._crit_edge
	xorl	%r8d, %r8d
	jmp	.LBB1_7
.LBB1_5:
	xorl	%r8d, %r8d
.LBB1_6:
	movb	(%r12), %r14b
	addq	$1, %r12
.LBB1_7:
	movl	%r13d, %eax
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB1_11
# %bb.8:
	cmpb	$48, %r14b
	jne	.LBB1_11
# %bb.9:
	movb	(%r12), %al
	orb	$32, %al
	cmpb	$120, %al
	jne	.LBB1_13
# %bb.10:
	movzbl	1(%r12), %edi
	addq	$2, %r12
	movl	$16, %r13d
	jmp	.LBB1_16
.LBB1_11:
	testl	%r13d, %r13d
	sete	%al
	cmpb	$48, %r14b
	je	.LBB1_14
# %bb.12:
	movzbl	%r14b, %edi
	movl	$10, %ecx
	jmp	.LBB1_15
.LBB1_13:
	testl	%r13d, %r13d
	sete	%al
.LBB1_14:
	movl	$8, %ecx
	movl	$48, %edi
.LBB1_15:
	testb	%al, %al
	cmovnel	%ecx, %r13d
.LBB1_16:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	xorl	%r11d, %r11d
	addq	$-1, %r12
	xorl	%r10d, %r10d
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%r11, %rbx
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=1
	movzbl	1(%r12), %edi
	addq	$1, %r12
	movq	%rbx, %r11
	movl	%ecx, %r10d
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rdi), %esi
	cmpl	$10, %esi
	jb	.LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-65(%rdi), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	addl	$-55, %edi
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-97(%rdi), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_32
# %bb.23:                               #   in Loop: Header=BB1_19 Depth=1
	addl	$-87, %edi
.LBB1_24:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%edi, %esi
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=1
	cmpl	%r13d, %esi
	jge	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_19 Depth=1
	movl	$-1, %ecx
	cmpq	%rax, %r11
	ja	.LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_19 Depth=1
	testl	%r10d, %r10d
	js	.LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_19 Depth=1
	cmpq	%rax, %r11
	jne	.LBB1_17
# %bb.29:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%rax, %rbx
	cmpl	%edx, %esi
	jg	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_19 Depth=1
	imulq	%r9, %r11
	movslq	%esi, %rbx
	addq	%r11, %rbx
	movl	$1, %ecx
	jmp	.LBB1_18
.LBB1_32:
	testl	%r10d, %r10d
	js	.LBB1_34
# %bb.33:
	movq	%r11, %rax
	negq	%rax
	testl	%r8d, %r8d
	cmoveq	%r11, %rax
	jmp	.LBB1_35
.LBB1_34:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movq	$-1, %rax
.LBB1_35:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_37
# %bb.36:
	testl	%r10d, %r10d
	cmoveq	%r15, %r12
	movq	%r12, (%rcx)
.LBB1_37:
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
	.size	_strtoul_l, .Lfunc_end1-_strtoul_l
                                        # -- End function
	.globl	strtoul_l               # -- Begin function strtoul_l
	.p2align	4, 0x90
	.type	strtoul_l,@function
strtoul_l:                              # @strtoul_l
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
	callq	_strtoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtoul_l, .Lfunc_end2-strtoul_l
                                        # -- End function
	.globl	strtoul                 # -- Begin function strtoul
	.p2align	4, 0x90
	.type	strtoul,@function
strtoul:                                # @strtoul
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
	callq	_strtoul_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtoul, .Lfunc_end3-strtoul
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
