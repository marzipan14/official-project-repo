	.text
	.file	"wcstoull.c"
	.globl	_wcstoull_l             # -- Begin function _wcstoull_l
	.p2align	4, 0x90
	.type	_wcstoull_l,@function
_wcstoull_l:                            # @_wcstoull_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$36, %ecx
	ja	.LBB0_38
# %bb.1:
	movl	%ecx, %r13d
	cmpl	$1, %ecx
	je	.LBB0_38
# %bb.2:
	movq	%r8, %r14
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movl	(%r15), %ebx
	addq	$4, %r15
	movl	%ebx, %edi
	movq	%r14, %rsi
	callq	iswspace_l
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB0_6
# %bb.5:
	xorl	%r8d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$43, %ebx
	jne	.LBB0_7
.LBB0_6:
	movl	(%r15), %ebx
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB0_7:
	movl	%r13d, %eax
	orl	$16, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$16, %eax
	jne	.LBB0_12
# %bb.8:
	cmpl	$48, %ebx
	jne	.LBB0_12
# %bb.9:
	movl	(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$120, %eax
	je	.LBB0_11
# %bb.10:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$88, %eax
	jne	.LBB0_12
.LBB0_11:
	movl	4(%r15), %ebx
	addq	$8, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r13d
	jmp	.LBB0_14
.LBB0_38:
	movl	$22, (%r12)
	xorl	%eax, %eax
	jmp	.LBB0_37
.LBB0_12:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jne	.LBB0_15
# %bb.13:
	xorl	%eax, %eax
	cmpl	$48, %ebx
	setne	%al
	leal	(%rax,%rax), %r13d
	addl	$8, %r13d
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_15:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	movq	%rax, %rcx
	xorl	%eax, %eax
	addq	$-4, %r15
	xorl	%edi, %edi
	jmp	.LBB0_16
.LBB0_27:                               #   in Loop: Header=BB0_16 Depth=1
	imulq	%r9, %rax
	movslq	%esi, %rsi
	addq	%rsi, %rax
	movl	$1, %edi
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	4(%r15), %ebx
	addq	$4, %r15
.LBB0_16:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-48(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %esi
	jb	.LBB0_22
# %bb.17:                               #   in Loop: Header=BB0_16 Depth=1
	leal	-65(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %esi
	ja	.LBB0_19
# %bb.18:                               #   in Loop: Header=BB0_16 Depth=1
	addl	$-55, %ebx
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_16 Depth=1
	leal	-97(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$25, %esi
	ja	.LBB0_29
# %bb.20:                               #   in Loop: Header=BB0_16 Depth=1
	addl	$-87, %ebx
.LBB0_21:                               #   in Loop: Header=BB0_16 Depth=1
	movl	%ebx, %esi
.LBB0_22:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %esi
	jge	.LBB0_29
# %bb.23:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	movl	$-1, %edi
	js	.LBB0_28
# %bb.24:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	ja	.LBB0_28
# %bb.25:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	jle	.LBB0_27
	jmp	.LBB0_28
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edi, %edi
	js	.LBB0_30
# %bb.31:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_32
# %bb.33:
	negq	%rax
	jmp	.LBB0_34
.LBB0_30:
	movl	$34, (%r12)
	movq	$-1, %rax
.LBB0_34:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_35
.LBB0_32:
	movq	-48(%rbp), %rcx         # 8-byte Reload
.LBB0_35:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_37
# %bb.36:
	testl	%edi, %edi
	cmoveq	-56(%rbp), %r15         # 8-byte Folded Reload
	movq	%r15, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_37:
	movl	$42, __A_VARIABLE(%rip)
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
	.size	_wcstoull_l, .Lfunc_end0-_wcstoull_l
                                        # -- End function
	.globl	_wcstoull_r             # -- Begin function _wcstoull_r
	.p2align	4, 0x90
	.type	_wcstoull_r,@function
_wcstoull_r:                            # @_wcstoull_r
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
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %r8d
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movl	%r14d, %ecx
	callq	_wcstoull_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_wcstoull_r, .Lfunc_end1-_wcstoull_r
                                        # -- End function
	.globl	wcstoull_l              # -- Begin function wcstoull_l
	.p2align	4, 0x90
	.type	wcstoull_l,@function
wcstoull_l:                             # @wcstoull_l
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
	callq	_wcstoull_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	wcstoull_l, .Lfunc_end2-wcstoull_l
                                        # -- End function
	.globl	wcstoull                # -- Begin function wcstoull
	.p2align	4, 0x90
	.type	wcstoull,@function
wcstoull:                               # @wcstoull
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
	callq	_wcstoull_l
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	wcstoull, .Lfunc_end3-wcstoull
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
