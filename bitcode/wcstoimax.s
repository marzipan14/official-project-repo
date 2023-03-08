	.text
	.file	"wcstoimax.c"
	.globl	_wcstoimax_r            # -- Begin function _wcstoimax_r
	.p2align	4, 0x90
	.type	_wcstoimax_r,@function
_wcstoimax_r:                           # @_wcstoimax_r
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
	callq	_wcstoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstoimax_r, .Lfunc_end0-_wcstoimax_r
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _wcstoimax_l
	.type	_wcstoimax_l,@function
_wcstoimax_l:                           # @_wcstoimax_l
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
# %bb.4:                                # %._crit_edge1
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
	jmp	.LBB1_16
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
	leal	-2(%r13), %eax
	cmpl	$34, %eax
	jbe	.LBB1_16
# %bb.15:
	xorl	%r15d, %r15d
	jmp	.LBB1_35
.LBB1_16:
	movabsq	$9223372036854775807, %rax # imm = 0x7FFFFFFFFFFFFFFF
	leaq	1(%rax), %r9
	testl	%r8d, %r8d
	cmoveq	%rax, %r9
	movslq	%r13d, %r10
	movq	%r9, %rax
	xorl	%edx, %edx
	divq	%r10
	xorl	%r15d, %r15d
	xorl	%r11d, %r11d
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_31:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%r15, %rdi
.LBB1_18:                               #   in Loop: Header=BB1_19 Depth=1
	movl	(%r12), %ebx
	addq	$4, %r12
	movq	%rdi, %r15
	movl	%ecx, %r11d
.LBB1_19:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rbx), %esi
	cmpl	$10, %esi
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
	movl	%ebx, %esi
.LBB1_25:                               #   in Loop: Header=BB1_19 Depth=1
	cmpl	%r13d, %esi
	jge	.LBB1_32
# %bb.26:                               #   in Loop: Header=BB1_19 Depth=1
	movl	$-1, %ecx
	cmpq	%rax, %r15
	ja	.LBB1_31
# %bb.27:                               #   in Loop: Header=BB1_19 Depth=1
	testl	%r11d, %r11d
	js	.LBB1_31
# %bb.28:                               #   in Loop: Header=BB1_19 Depth=1
	cmpq	%rax, %r15
	jne	.LBB1_17
# %bb.29:                               #   in Loop: Header=BB1_19 Depth=1
	movq	%rax, %rdi
	cmpl	%edx, %esi
	jg	.LBB1_18
.LBB1_17:                               #   in Loop: Header=BB1_19 Depth=1
	imulq	%r10, %r15
	movslq	%esi, %rdi
	addq	%r15, %rdi
	movl	$1, %ecx
	jmp	.LBB1_18
.LBB1_32:
	testl	%r11d, %r11d
	js	.LBB1_36
# %bb.33:
	je	.LBB1_35
# %bb.34:
	movq	%r15, %r9
	negq	%r9
	testl	%r8d, %r8d
	cmoveq	%r15, %r9
	jmp	.LBB1_37
.LBB1_35:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$22, (%rax)
	xorl	%eax, %eax
	movq	%r15, %r9
	jmp	.LBB1_38
.LBB1_36:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$34, (%rax)
.LBB1_37:
	movl	$-1, %eax
.LBB1_38:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB1_40
# %bb.39:
	addq	$-4, %r12
	testl	%eax, %eax
	cmoveq	%r14, %r12
	movq	%r12, (%rcx)
.LBB1_40:
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
	.size	_wcstoimax_l, .Lfunc_end1-_wcstoimax_l
                                        # -- End function
	.globl	wcstoimax_l             # -- Begin function wcstoimax_l
	.p2align	4, 0x90
	.type	wcstoimax_l,@function
wcstoimax_l:                            # @wcstoimax_l
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
	callq	_wcstoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcstoimax_l, .Lfunc_end2-wcstoimax_l
                                        # -- End function
	.globl	wcstoimax               # -- Begin function wcstoimax
	.p2align	4, 0x90
	.type	wcstoimax,@function
wcstoimax:                              # @wcstoimax
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
	callq	_wcstoimax_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstoimax, .Lfunc_end3-wcstoimax
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
