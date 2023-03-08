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
	cmpl	$36, %ecx
	ja	.LBB0_7
# %bb.1:
	movl	%ecx, %r13d
	cmpl	$1, %ecx
	je	.LBB0_7
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
	testl	%eax, %eax
	jne	.LBB0_3
# %bb.4:
	cmpl	$43, %ebx
	je	.LBB0_8
# %bb.5:
	movl	$1, %r8d
	cmpl	$45, %ebx
	je	.LBB0_9
# %bb.6:                                # %._crit_edge
	xorl	%r8d, %r8d
	jmp	.LBB0_10
.LBB0_7:
	movl	$22, (%r12)
	xorl	%eax, %eax
	jmp	.LBB0_39
.LBB0_8:
	xorl	%r8d, %r8d
.LBB0_9:
	movl	(%r15), %ebx
	addq	$4, %r15
.LBB0_10:
	movl	%r13d, %eax
	orl	$16, %eax
	cmpl	$16, %eax
	jne	.LBB0_14
# %bb.11:
	cmpl	$48, %ebx
	jne	.LBB0_14
# %bb.12:
	movl	(%r15), %eax
	orl	$32, %eax
	cmpl	$120, %eax
	jne	.LBB0_15
# %bb.13:
	movl	4(%r15), %ebx
	addq	$8, %r15
	movl	$16, %r13d
	jmp	.LBB0_18
.LBB0_14:
	testl	%r13d, %r13d
	sete	%al
	movl	$10, %ecx
	cmpl	$48, %ebx
	je	.LBB0_16
	jmp	.LBB0_17
.LBB0_15:
	testl	%r13d, %r13d
	sete	%al
.LBB0_16:
	movl	$8, %ecx
	movl	$48, %ebx
.LBB0_17:
	testb	%al, %al
	cmovnel	%ecx, %r13d
.LBB0_18:
	movslq	%r13d, %r9
	movq	$-1, %rax
	xorl	%edx, %edx
	divq	%r9
	xorl	%r11d, %r11d
	addq	$-4, %r15
	xorl	%r10d, %r10d
	jmp	.LBB0_21
	.p2align	4, 0x90
.LBB0_33:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%r11, %rdi
.LBB0_20:                               #   in Loop: Header=BB0_21 Depth=1
	movl	4(%r15), %ebx
	addq	$4, %r15
	movq	%rdi, %r11
	movl	%ecx, %r10d
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	leal	-48(%rbx), %esi
	cmpl	$10, %esi
	jb	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	leal	-65(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB0_24
# %bb.23:                               #   in Loop: Header=BB0_21 Depth=1
	addl	$-55, %ebx
	jmp	.LBB0_26
	.p2align	4, 0x90
.LBB0_24:                               #   in Loop: Header=BB0_21 Depth=1
	leal	-97(%rbx), %ecx
	cmpl	$25, %ecx
	ja	.LBB0_34
# %bb.25:                               #   in Loop: Header=BB0_21 Depth=1
	addl	$-87, %ebx
.LBB0_26:                               #   in Loop: Header=BB0_21 Depth=1
	movl	%ebx, %esi
.LBB0_27:                               #   in Loop: Header=BB0_21 Depth=1
	cmpl	%r13d, %esi
	jge	.LBB0_34
# %bb.28:                               #   in Loop: Header=BB0_21 Depth=1
	movl	$-1, %ecx
	cmpq	%rax, %r11
	ja	.LBB0_33
# %bb.29:                               #   in Loop: Header=BB0_21 Depth=1
	testl	%r10d, %r10d
	js	.LBB0_33
# %bb.30:                               #   in Loop: Header=BB0_21 Depth=1
	cmpq	%rax, %r11
	jne	.LBB0_19
# %bb.31:                               #   in Loop: Header=BB0_21 Depth=1
	movq	%rax, %rdi
	cmpl	%edx, %esi
	jg	.LBB0_20
.LBB0_19:                               #   in Loop: Header=BB0_21 Depth=1
	imulq	%r9, %r11
	movslq	%esi, %rdi
	addq	%r11, %rdi
	movl	$1, %ecx
	jmp	.LBB0_20
.LBB0_34:
	testl	%r10d, %r10d
	js	.LBB0_36
# %bb.35:
	movq	%r11, %rax
	negq	%rax
	testl	%r8d, %r8d
	cmoveq	%r11, %rax
	jmp	.LBB0_37
.LBB0_36:
	movl	$34, (%r12)
	movq	$-1, %rax
.LBB0_37:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB0_39
# %bb.38:
	testl	%r10d, %r10d
	cmoveq	-56(%rbp), %r15         # 8-byte Folded Reload
	movq	%r15, (%rcx)
.LBB0_39:
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
	jmp	_wcstoull_l             # TAILCALL
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
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_wcstoull_l             # TAILCALL
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
	jmp	_wcstoull_l             # TAILCALL
.Lfunc_end3:
	.size	wcstoull, .Lfunc_end3-wcstoull
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
