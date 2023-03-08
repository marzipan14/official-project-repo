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
	jmp	_strtol_l               # TAILCALL
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
	movzbl	1(%r12), %ebx
	addq	$2, %r12
	movl	$16, %r13d
	jmp	.LBB1_16
.LBB1_11:
	testl	%r13d, %r13d
	sete	%al
	cmpb	$48, %r14b
	je	.LBB1_14
# %bb.12:
	movzbl	%r14b, %ebx
	movl	$10, %ecx
	jmp	.LBB1_15
.LBB1_13:
	testl	%r13d, %r13d
	sete	%al
.LBB1_14:
	movl	$8, %ecx
	movl	$48, %ebx
.LBB1_15:
	testb	%al, %al
	cmovnel	%ecx, %r13d
.LBB1_16:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rax), %r9
	testl	%r8d, %r8d
	cmoveq	%rax, %r9
	movslq	%r13d, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	xorl	%r14d, %r14d
	addq	$-1, %r12
	xorl	%r11d, %r11d
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%r14, %rcx
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=1
	movzbl	1(%r12), %ebx
	addq	$1, %r12
	movq	%rcx, %r14
	movl	%esi, %r11d
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rbx), %edi
	cmpl	$10, %edi
	jb	.LBB1_25
# %bb.20:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-65(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_22
# %bb.21:                               #   in Loop: Header=BB1_19 Depth=1
	addl	$-55, %ebx
	jmp	.LBB1_24
	.p2align	4, 0x90
.LBB1_22:                               #   in Loop: Header=BB1_19 Depth=1
	leal	-97(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB1_32
# %bb.23:                               #   in Loop: Header=BB1_19 Depth=1
	addl	$-87, %ebx
.LBB1_24:                               #   in Loop: Header=BB1_19 Depth=1
	movl	%ebx, %edi
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=1
	cmpl	%r13d, %edi
	jge	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_19 Depth=1
	movl	$-1, %esi
	cmpq	%rax, %r14
	ja	.LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_19 Depth=1
	testl	%r11d, %r11d
	js	.LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_19 Depth=1
	cmpq	%rax, %r14
	jne	.LBB1_17
# %bb.29:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%rax, %rcx
	cmpl	%edx, %edi
	jg	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_19 Depth=1
	imulq	%r10, %r14
	movslq	%edi, %rcx
	addq	%r14, %rcx
	movl	$1, %esi
	jmp	.LBB1_18
.LBB1_32:
	testl	%r11d, %r11d
	js	.LBB1_34
# %bb.33:
	movq	%r14, %r9
	negq	%r9
	testl	%r8d, %r8d
	cmoveq	%r14, %r9
	jmp	.LBB1_35
.LBB1_34:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
.LBB1_35:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_37
# %bb.36:
	testl	%r11d, %r11d
	cmoveq	%r15, %r12
	movq	%r12, (%rax)
.LBB1_37:
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_strtol_l               # TAILCALL
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
	jmp	_strtol_l               # TAILCALL
.Lfunc_end3:
	.size	strtol, .Lfunc_end3-strtol
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
