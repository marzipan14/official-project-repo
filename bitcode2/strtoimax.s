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
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -56(%rbp)         # 8-byte Spill
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
	jne	.LBB1_10
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
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
	movb	1(%r12), %r14b
	addq	$2, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB1_12
.LBB1_10:
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
	leaq	1(%rax), %rsi
	testl	%r8d, %r8d
	cmoveq	%rax, %rsi
	movslq	%r13d, %r9
	movq	%rsi, %rax
	xorl	%edx, %edx
	divq	%r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$48, %r14b
	jl	.LBB1_14
# %bb.19:                               # %.preheader
	movq	%rax, %r10
                                        # implicit-def: $ebx
                                        # implicit-def: $rax
	jmp	.LBB1_20
.LBB1_30:                               #   in Loop: Header=BB1_20 Depth=1
	imulq	%r9, %rax
	movslq	%edi, %rcx
	addq	%rcx, %rax
	movl	$1, %ebx
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r12), %r14d
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$47, %r14b
	jle	.LBB1_15
.LBB1_20:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-48, %cl
	cmpb	$58, %r14b
	jl	.LBB1_25
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$65, %r14b
	jl	.LBB1_16
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-55, %cl
	cmpb	$91, %r14b
	jl	.LBB1_25
# %bb.23:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$97, %r14b
	jl	.LBB1_17
# %bb.24:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movb	$-87, %cl
	cmpb	$122, %r14b
	jg	.LBB1_17
.LBB1_25:                               #   in Loop: Header=BB1_20 Depth=1
	addb	%cl, %r14b
	movl	$42, __A_VARIABLE(%rip)
	movsbl	%r14b, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %r13d
	jle	.LBB1_17
# %bb.26:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movl	$-1, %ebx
	js	.LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %rax
	ja	.LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_30
# %bb.29:                               #   in Loop: Header=BB1_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %edi
	jle	.LBB1_30
	jmp	.LBB1_31
.LBB1_14:
                                        # implicit-def: $rax
                                        # implicit-def: $ebx
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB1_18
# %bb.32:
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_33
# %bb.34:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB1_38
# %bb.35:
	negq	%rax
	jmp	.LBB1_36
.LBB1_18:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
	jmp	.LBB1_37
.LBB1_33:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$22, (%rcx)
.LBB1_36:
	movq	%rax, %rsi
.LBB1_37:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %rax
.LBB1_38:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_40
# %bb.39:
	addq	$-1, %r12
	testl	%ebx, %ebx
	cmoveq	-56(%rbp), %r12         # 8-byte Folded Reload
	movq	%r12, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_40:
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
