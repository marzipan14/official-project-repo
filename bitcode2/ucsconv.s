	.text
	.file	"ucsconv.c"
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_open
	.type	ucs_based_conversion_open,@function
ucs_based_conversion_open:              # @ucs_based_conversion_open
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$1, %edi
	movl	$32, %esi
	callq	calloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	_iconv_to_ucs_ces(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$_iconv_to_ucs_ces, %r13d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_19:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r13), %rbx
	addq	$16, %r13
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_5 Depth 2
	testq	%rbx, %rbx
	je	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB0_5:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_19
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=2
	movq	%r15, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_7
# %bb.18:                               #   in Loop: Header=BB0_5 Depth=2
	movq	(%rbx), %rdi
	addq	$8, %rbx
	jmp	.LBB0_5
.LBB0_1:
	xorl	%ebx, %ebx
	jmp	.LBB0_30
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movq	_iconv_from_ucs_ces(%rip), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$_iconv_from_ucs_ces, %r14d
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_21:                               #   in Loop: Header=BB0_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rbx
	addq	$16, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB0_9:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_11 Depth 2
	testq	%rbx, %rbx
	je	.LBB0_14
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movq	(%rbx), %rdi
	.p2align	4, 0x90
.LBB0_11:                               #   Parent Loop BB0_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_21
# %bb.12:                               #   in Loop: Header=BB0_11 Depth=2
	movq	%r12, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_13
# %bb.20:                               #   in Loop: Header=BB0_11 Depth=2
	movq	(%rbx), %rdi
	addq	$8, %rbx
	jmp	.LBB0_11
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_14:
	cmpq	$0, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_25
# %bb.15:
	cmpq	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_25
# %bb.16:
	movq	8(%r13), %rax
	movq	%rax, (%rbx)
	movq	8(%r14), %rcx
	movq	%rcx, 16(%rbx)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.17:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	*%rax
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_23
	jmp	.LBB0_25
.LBB0_22:
	movq	$fake_data, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_23:
	movq	8(%r14), %rax
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_31
# %bb.24:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	*%rax
	movq	%rax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_29
.LBB0_25:
	movq	8(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_28
# %bb.26:
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_28
# %bb.27:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_28:
	movq	%rbx, %rdi
	callq	free
	xorl	%ebx, %ebx
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_31:
	movq	$fake_data, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.Lfunc_end0:
	.size	ucs_based_conversion_open, .Lfunc_end0-ucs_based_conversion_open
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_close
	.type	ucs_based_conversion_close,@function
ucs_based_conversion_close:             # @ucs_based_conversion_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	16(%rsi), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	24(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%r14d, %r14d
.LBB1_3:
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_5
# %bb.4:
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rcx
	orq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movq	%rbx, %rdi
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	ucs_based_conversion_close, .Lfunc_end1-ucs_based_conversion_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_convert
	.type	ucs_based_conversion_convert,@function
ucs_based_conversion_convert:           # @ucs_based_conversion_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -88(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rcx), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_1
# %bb.2:
	movq	%rcx, %rbx
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_16:                               #   in Loop: Header=BB2_3 Depth=1
	movq	%r14, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB2_17
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movq	(%rdx), %r15
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$7, %r12d
	je	.LBB2_11
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	8(%rcx), %rdi
	movq	%rdx, %r14
	movq	%rdx, %rsi
	movq	%rbx, %rdx
	callq	*48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %eax
	je	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$138, %r12d
	cmpl	$-1, %eax
	je	.LBB2_11
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rbp), %ecx
	testb	$1, %cl
	je	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	leaq	-102(%rbp), %rcx
	movq	%rcx, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-96(%rbp), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rbx
	movq	24(%rcx), %rdi
	movl	%eax, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*48(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_10
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	jne	.LBB2_16
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	16(%rbp), %eax
	testb	$2, %al
	jne	.LBB2_11
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rax
	movq	24(%rcx), %rdi
	movl	$63, %esi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$7, %r12d
	testl	%eax, %eax
	js	.LBB2_11
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_16
.LBB2_1:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_17
.LBB2_5:
	movl	$22, %r12d
	jmp	.LBB2_11
.LBB2_10:
	movq	%r15, (%r14)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r13, (%rax)
	movl	$7, %r12d
.LBB2_11:
	movq	-88(%rbp), %rax         # 8-byte Reload
	movl	%r12d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ucs_based_conversion_convert, .Lfunc_end2-ucs_based_conversion_convert
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_get_state
	.type	ucs_based_conversion_get_state,@function
ucs_based_conversion_get_state:         # @ucs_based_conversion_get_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB3_1
# %bb.3:
	movq	16(%rdi), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_5
# %bb.4:
	movq	24(%rdi), %rdi
	callq	*%rax
	jmp	.LBB3_6
.LBB3_1:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_5
# %bb.2:
	movq	8(%rdi), %rdi
	callq	*%rax
	jmp	.LBB3_6
.LBB3_5:
	movq	$0, (%rsi)
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ucs_based_conversion_get_state, .Lfunc_end3-ucs_based_conversion_get_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_set_state
	.type	ucs_based_conversion_set_state,@function
ucs_based_conversion_set_state:         # @ucs_based_conversion_set_state
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB4_3
# %bb.1:
	movq	16(%rdi), %rax
	movq	32(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB4_6
# %bb.2:
	movq	24(%rdi), %rdi
	callq	*%rcx
	jmp	.LBB4_7
.LBB4_3:
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_6
# %bb.4:
	movq	8(%rdi), %rdi
	callq	*%rax
	jmp	.LBB4_7
.LBB4_6:
	xorl	%eax, %eax
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	ucs_based_conversion_set_state, .Lfunc_end4-ucs_based_conversion_set_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_get_mb_cur_max
	.type	ucs_based_conversion_get_mb_cur_max,@function
ucs_based_conversion_get_mb_cur_max:    # @ucs_based_conversion_get_mb_cur_max
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB5_1
# %bb.2:
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	jmp	.LBB5_3
.LBB5_1:
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
.LBB5_3:
	callq	*16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	ucs_based_conversion_get_mb_cur_max, .Lfunc_end5-ucs_based_conversion_get_mb_cur_max
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_is_stateful
	.type	ucs_based_conversion_is_stateful,@function
ucs_based_conversion_is_stateful:       # @ucs_based_conversion_is_stateful
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB6_3
# %bb.1:
	movq	16(%rdi), %rax
	movq	40(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB6_6
# %bb.2:
	movq	24(%rdi), %rdi
	callq	*%rcx
	jmp	.LBB6_7
.LBB6_3:
	movq	(%rdi), %rax
	movq	40(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_6
# %bb.4:
	movq	8(%rdi), %rdi
	callq	*%rax
	jmp	.LBB6_7
.LBB6_6:
	xorl	%eax, %eax
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end6:
	.size	ucs_based_conversion_is_stateful, .Lfunc_end6-ucs_based_conversion_is_stateful
                                        # -- End function
	.type	_iconv_ucs_conversion_handlers,@object # @_iconv_ucs_conversion_handlers
	.section	.rodata,"a",@progbits
	.globl	_iconv_ucs_conversion_handlers
	.p2align	3
_iconv_ucs_conversion_handlers:
	.quad	ucs_based_conversion_open
	.quad	ucs_based_conversion_close
	.quad	ucs_based_conversion_convert
	.quad	ucs_based_conversion_get_state
	.quad	ucs_based_conversion_set_state
	.quad	ucs_based_conversion_get_mb_cur_max
	.quad	ucs_based_conversion_is_stateful
	.size	_iconv_ucs_conversion_handlers, 56

	.type	fake_data,@object       # @fake_data
	.local	fake_data
	.comm	fake_data,4,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
