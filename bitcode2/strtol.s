	.text
	.file	"strtol.c"
	.globl	_strtol_r               # -- Begin function _strtol_r
	.p2align	4, 0x90
	.type	_strtol_r,@function
_strtol_r:                              # @_strtol_r
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
	callq	_strtol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strtol_r, .Lfunc_end0-_strtol_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _strtol_l
	.type	_strtol_l,@function
_strtol_l:                              # @_strtol_l
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
	movzbl	(%r12), %r14d
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
	jne	.LBB1_10
# %bb.6:
	cmpb	$48, %r14b
	jne	.LBB1_10
# %bb.7:
	movb	(%r12), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$120, %al
	je	.LBB1_9
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$88, %al
	jne	.LBB1_10
.LBB1_9:
	movzbl	1(%r12), %ecx
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB1_12
.LBB1_10:
	movzbl	%r14b, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB1_13
# %bb.11:
	xorl	%eax, %eax
	cmpb	$48, %r14b
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
	addq	$-1, %r12
	xorl	%ebx, %ebx
	jmp	.LBB1_14
.LBB1_25:                               #   in Loop: Header=BB1_14 Depth=1
	imulq	%r10, %rax
	movslq	%edi, %rcx
	addq	%rcx, %rax
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB1_26:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%r12), %ecx
	addq	$1, %r12
.LBB1_14:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %edi
	jb	.LBB1_20
# %bb.15:                               #   in Loop: Header=BB1_14 Depth=1
	leal	-65(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %edi
	ja	.LBB1_17
# %bb.16:                               #   in Loop: Header=BB1_14 Depth=1
	addl	$-55, %ecx
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_14 Depth=1
	leal	-97(%rcx), %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %edi
	ja	.LBB1_27
# %bb.18:                               #   in Loop: Header=BB1_14 Depth=1
	addl	$-87, %ecx
.LBB1_19:                               #   in Loop: Header=BB1_14 Depth=1
	movl	%ecx, %edi
.LBB1_20:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %edi
	jge	.LBB1_27
# %bb.21:                               #   in Loop: Header=BB1_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	$-1, %ebx
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
	cmpl	%edx, %edi
	jle	.LBB1_25
	jmp	.LBB1_26
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
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
	testl	%ebx, %ebx
	cmoveq	%r15, %r12
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
	.size	_strtol_l, .Lfunc_end1-_strtol_l
                                        # -- End function
	.globl	strtol_l                # -- Begin function strtol_l
	.p2align	4, 0x90
	.type	strtol_l,@function
strtol_l:                               # @strtol_l
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
	callq	_strtol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtol_l, .Lfunc_end2-strtol_l
                                        # -- End function
	.globl	strtol                  # -- Begin function strtol
	.p2align	4, 0x90
	.type	strtol,@function
strtol:                                 # @strtol
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
	callq	_strtol_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtol, .Lfunc_end3-strtol
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
