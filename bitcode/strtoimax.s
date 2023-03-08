	.text
	.file	"strtoimax.c"
	.globl	_strtoimax_r            # -- Begin function _strtoimax_r
	.p2align	4, 0x90
	.type	_strtoimax_r,@function
_strtoimax_r:                           # @_strtoimax_r
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
	callq	_strtoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_strtoimax_r, .Lfunc_end0-_strtoimax_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _strtoimax_l
	.type	_strtoimax_l,@function
_strtoimax_l:                           # @_strtoimax_l
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
	jne	.LBB1_12
# %bb.10:
	movb	1(%r12), %r14b
	addq	$2, %r12
	movl	$16, %r13d
	jmp	.LBB1_15
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
.LBB1_15:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rax), %r9
	testl	%r8d, %r8d
	cmoveq	%rax, %r9
	movslq	%r13d, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	addq	$-1, %r12
                                        # implicit-def: $rbx
                                        # implicit-def: $ecx
	jmp	.LBB1_18
	.p2align	4, 0x90
.LBB1_30:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rbx, %rcx
.LBB1_17:                               #   in Loop: Header=BB1_18 Depth=1
	movzbl	1(%r12), %r14d
	addq	$1, %r12
	movq	%rcx, %rbx
	movl	%esi, %ecx
.LBB1_18:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%r14), %esi
	cmpb	$10, %sil
	jb	.LBB1_24
# %bb.19:                               #   in Loop: Header=BB1_18 Depth=1
	leal	-65(%r14), %esi
	cmpb	$25, %sil
	ja	.LBB1_21
# %bb.20:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$-55, %r14b
	jmp	.LBB1_23
	.p2align	4, 0x90
.LBB1_21:                               #   in Loop: Header=BB1_18 Depth=1
	leal	-97(%r14), %esi
	cmpb	$25, %sil
	ja	.LBB1_31
# %bb.22:                               #   in Loop: Header=BB1_18 Depth=1
	addb	$-87, %r14b
.LBB1_23:                               #   in Loop: Header=BB1_18 Depth=1
	movl	%r14d, %esi
.LBB1_24:                               #   in Loop: Header=BB1_18 Depth=1
	movsbl	%sil, %edi
	cmpl	%edi, %r13d
	jle	.LBB1_31
# %bb.25:                               #   in Loop: Header=BB1_18 Depth=1
	movl	$-1, %esi
	cmpq	%rax, %rbx
	ja	.LBB1_30
# %bb.26:                               #   in Loop: Header=BB1_18 Depth=1
	testl	%ecx, %ecx
	js	.LBB1_30
# %bb.27:                               #   in Loop: Header=BB1_18 Depth=1
	cmpq	%rax, %rbx
	jne	.LBB1_16
# %bb.28:                               #   in Loop: Header=BB1_18 Depth=1
	movq	%rax, %rcx
	cmpl	%edx, %edi
	jg	.LBB1_17
.LBB1_16:                               #   in Loop: Header=BB1_18 Depth=1
	imulq	%r10, %rbx
	movslq	%edi, %rcx
	addq	%rbx, %rcx
	movl	$1, %esi
	jmp	.LBB1_17
.LBB1_31:
	testl	%ecx, %ecx
	js	.LBB1_34
# %bb.32:
	je	.LBB1_35
# %bb.33:
	movq	%rbx, %r9
	negq	%r9
	testl	%r8d, %r8d
	cmoveq	%rbx, %r9
	jmp	.LBB1_36
.LBB1_34:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	jmp	.LBB1_36
.LBB1_35:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$22, (%rax)
	movq	%rbx, %r9
.LBB1_36:
	movq	-48(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB1_38
# %bb.37:
	testl	%ecx, %ecx
	cmoveq	%r15, %r12
	movq	%r12, (%rax)
.LBB1_38:
	movl	$42, __A_VARIABLE(%rip)
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
	.size	_strtoimax_l, .Lfunc_end1-_strtoimax_l
                                        # -- End function
	.globl	strtoimax_l             # -- Begin function strtoimax_l
	.p2align	4, 0x90
	.type	strtoimax_l,@function
strtoimax_l:                            # @strtoimax_l
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
	callq	_strtoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtoimax_l, .Lfunc_end2-strtoimax_l
                                        # -- End function
	.globl	strtoimax               # -- Begin function strtoimax
	.p2align	4, 0x90
	.type	strtoimax,@function
strtoimax:                              # @strtoimax
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
	callq	_strtoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtoimax, .Lfunc_end3-strtoimax
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
