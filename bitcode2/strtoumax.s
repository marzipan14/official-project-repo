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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r12
	.p2align	4, 0x90
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movsbq	(%r12), %r14
	addq	$1, %r12
	movq	%rbx, %rdi
	callq	__locale_ctype_ptr_l
	testb	$8, 1(%rax,%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpb	$45, %r14b
	je	.LBB1_4
# %bb.3:
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$43, %r14b
	jne	.LBB1_5
.LBB1_4:
	movb	(%r12), %r14b
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	%r13d, %eax
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB1_12
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %r14b
	jne	.LBB1_12
# %bb.7:
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_12
.LBB1_9:
	movb	1(%r12), %r14b
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB1_10
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB1_14
# %bb.13:
	xorl	%eax, %eax
	cmpb	$48, %r14b
	setne	%al
	leal	(%rax,%rax), %r13d
	addl	$8, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	leal	-2(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %eax
	jbe	.LBB1_10
# %bb.15:
	xorl	%eax, %eax
	jmp	.LBB1_34
.LBB1_10:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %r14b
	jl	.LBB1_11
# %bb.16:                               # %.preheader
	movq	%rax, %rcx
	xorl	%edi, %edi
	xorl	%eax, %eax
	jmp	.LBB1_17
.LBB1_27:                               #   in Loop: Header=BB1_17 Depth=1
	imulq	%r9, %rax
	movslq	%esi, %rsi
	addq	%rsi, %rax
	movl	$1, %edi
	.p2align	4, 0x90
.LBB1_28:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %r14d
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %r14b
	jle	.LBB1_29
.LBB1_17:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-48, %bl
	cmpb	$58, %r14b
	jl	.LBB1_22
# %bb.18:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$65, %r14b
	jl	.LBB1_30
# %bb.19:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-55, %bl
	cmpb	$91, %r14b
	jl	.LBB1_22
# %bb.20:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %r14b
	jl	.LBB1_31
# %bb.21:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-87, %bl
	cmpb	$122, %r14b
	jg	.LBB1_31
.LBB1_22:                               #   in Loop: Header=BB1_17 Depth=1
	addb	%bl, %r14b
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r14b, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r13d
	jle	.LBB1_31
# %bb.23:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movl	$-1, %edi
	js	.LBB1_28
# %bb.24:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	ja	.LBB1_28
# %bb.25:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_27
# %bb.26:                               #   in Loop: Header=BB1_17 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jle	.LBB1_27
	jmp	.LBB1_28
.LBB1_11:
	xorl	%eax, %eax
.LBB1_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_30:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB1_32
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_34
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB1_36
# %bb.37:
	negq	%rax
	movl	$-1, %ecx
	jmp	.LBB1_38
.LBB1_34:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movl	$22, (%rcx)
	xorl	%ecx, %ecx
	jmp	.LBB1_38
.LBB1_32:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	movl	$-1, %ecx
	movq	$-1, %rax
.LBB1_38:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB1_39:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_41
# %bb.40:
	addq	$-1, %r12
	testl	%ecx, %ecx
	cmoveq	%r15, %r12
	movq	%r12, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_41:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_36:
	movl	$-1, %ecx
	movq	-48(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB1_39
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
