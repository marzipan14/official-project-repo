	.text
	.file	"strtoumax.c"
	.globl	_strtoumax_r            # -- Begin function _strtoumax_r
	.p2align	4, 0x90
	.type	_strtoumax_r,@function
_strtoumax_r:                           # @_strtoumax_r
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
	callq	_strtoumax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strtoumax_r, .Lfunc_end0-_strtoumax_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _strtoumax_l
	.type	_strtoumax_l,@function
_strtoumax_l:                           # @_strtoumax_l
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
	movsbq	(%r12), %r14
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
# %bb.4:                                # %._crit_edge1
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
	jne	.LBB1_12
# %bb.10:
	movb	1(%r12), %r14b
	addq	$2, %r12
	movl	$16, %r13d
	jmp	.LBB1_16
.LBB1_11:
	testl	%r13d, %r13d
	sete	%al
	movl	$10, %ecx
	cmpb	$48, %r14b
	je	.LBB1_13
	jmp	.LBB1_14
.LBB1_12:
	testl	%r13d, %r13d
	sete	%al
.LBB1_13:
	movl	$8, %ecx
	movb	$48, %r14b
.LBB1_14:
	testb	%al, %al
	cmovnel	%ecx, %r13d
	leal	-2(%r13), %eax
	cmpl	$34, %eax
	jbe	.LBB1_16
# %bb.15:
	xorl	%eax, %eax
	jmp	.LBB1_35
.LBB1_16:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	movq	%rax, %rcx
	xorl	%eax, %eax
	xorl	%esi, %esi
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%rax, %rsi
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=1
	movzbl	(%r12), %r14d
	addq	$1, %r12
	movq	%rsi, %rax
	movl	%ebx, %esi
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%r14), %edi
	cmpb	$10, %dil
	jb	.LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-65(%r14), %edi
	cmpb	$25, %dil
	ja	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	addb	$-55, %r14b
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-97(%r14), %edi
	cmpb	$25, %dil
	ja	.LBB1_32
# %bb.23:                               #   in Loop: Header=BB1_19 Depth=1
	addb	$-87, %r14b
.LBB1_24:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%r14d, %edi
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=1
	movsbl	%dil, %edi
	cmpl	%edi, %r13d
	jle	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_19 Depth=1
	movl	$-1, %ebx
	cmpq	%rcx, %rax
	ja	.LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_19 Depth=1
	testl	%esi, %esi
	js	.LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_19 Depth=1
	cmpq	%rcx, %rax
	jne	.LBB1_17
# %bb.29:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%rcx, %rsi
	cmpl	%edx, %edi
	jg	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_19 Depth=1
	imulq	%r9, %rax
	movslq	%edi, %rsi
	addq	%rax, %rsi
	movl	$1, %ebx
	jmp	.LBB1_18
.LBB1_32:
	testl	%esi, %esi
	js	.LBB1_36
# %bb.33:
	je	.LBB1_35
# %bb.34:
	movq	%rax, %rcx
	negq	%rcx
	testl	%r8d, %r8d
	cmovneq	%rcx, %rax
	movl	$-1, %ecx
	jmp	.LBB1_37
.LBB1_35:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$22, (%rcx)
	xorl	%ecx, %ecx
	jmp	.LBB1_37
.LBB1_36:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movl	$-1, %ecx
	movq	$-1, %rax
.LBB1_37:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	je	.LBB1_39
# %bb.38:
	addq	$-1, %r12
	testl	%ecx, %ecx
	cmoveq	%r15, %r12
	movq	%r12, (%rdx)
.LBB1_39:
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
	.size	_strtoumax_l, .Lfunc_end1-_strtoumax_l
                                        # -- End function
	.globl	strtoumax_l             # -- Begin function strtoumax_l
	.p2align	4, 0x90
	.type	strtoumax_l,@function
strtoumax_l:                            # @strtoumax_l
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
	callq	_strtoumax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtoumax_l, .Lfunc_end2-strtoumax_l
                                        # -- End function
	.globl	strtoumax               # -- Begin function strtoumax
	.p2align	4, 0x90
	.type	strtoumax,@function
strtoumax:                              # @strtoumax
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
	callq	_strtoumax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtoumax, .Lfunc_end3-strtoumax
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
