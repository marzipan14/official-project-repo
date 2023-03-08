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
	testq	%rax, %rax
	je	.LBB0_24
# %bb.1:
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	_iconv_to_ucs_ces(%rip), %rbx
	movl	$_iconv_to_ucs_ces, %r13d
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_2 Depth=1
	movq	16(%r13), %rbx
	addq	$16, %r13
.LBB0_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	testq	%rbx, %rbx
	je	.LBB0_7
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_27
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_2 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r15, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_6 Depth=2
	movq	(%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_6
	jmp	.LBB0_27
.LBB0_7:
	movq	_iconv_from_ucs_ces(%rip), %rbx
	movl	$_iconv_from_ucs_ces, %r14d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_28:                               #   in Loop: Header=BB0_8 Depth=1
	movq	16(%r14), %rbx
	addq	$16, %r14
.LBB0_8:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_12 Depth 2
	testq	%rbx, %rbx
	je	.LBB0_13
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_28
	.p2align	4, 0x90
.LBB0_12:                               #   Parent Loop BB0_8 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r12, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_13
# %bb.10:                               #   in Loop: Header=BB0_12 Depth=2
	movq	(%rbx), %rdi
	addq	$8, %rbx
	testq	%rdi, %rdi
	jne	.LBB0_12
	jmp	.LBB0_28
.LBB0_13:
	cmpq	$0, (%r13)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB0_20
# %bb.14:
	cmpq	$0, (%r14)
	je	.LBB0_20
# %bb.15:
	movq	8(%r13), %rax
	movq	%rax, (%rbx)
	movq	8(%r14), %rcx
	movq	%rcx, 16(%rbx)
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_17
# %bb.16:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	*%rax
	movq	%rax, 8(%rbx)
	testq	%rax, %rax
	jne	.LBB0_18
	jmp	.LBB0_20
.LBB0_17:
	movq	$fake_data, 8(%rbx)
.LBB0_18:
	movq	8(%r14), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_26
# %bb.19:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	*%rax
	movq	%rax, 24(%rbx)
	testq	%rax, %rax
	jne	.LBB0_25
.LBB0_20:
	movq	8(%rbx), %rsi
	testq	%rsi, %rsi
	je	.LBB0_23
# %bb.21:
	movq	(%rbx), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB0_23
# %bb.22:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	*%rax
.LBB0_23:
	movq	%rbx, %rdi
	callq	free
.LBB0_24:
	xorl	%ebx, %ebx
.LBB0_25:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_26:
	movq	$fake_data, 24(%rbx)
	jmp	.LBB0_25
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
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	movq	24(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rax
	movq	%rax, %r14
	jmp	.LBB1_3
.LBB1_1:
	xorl	%r14d, %r14d
.LBB1_3:
	movq	(%rbx), %rax
	movq	8(%rax), %rcx
	testq	%rcx, %rcx
	je	.LBB1_5
# %bb.4:
	movq	8(%rbx), %rsi
	movq	%r15, %rdi
	callq	*%rcx
	orq	%rax, %r14
.LBB1_5:
	movq	%rbx, %rdi
	callq	free
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
	subq	$56, %rsp
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movq	(%rcx), %r14
	testq	%r14, %r14
	je	.LBB2_13
# %bb.1:
	movq	%rcx, %r12
	movq	%rsi, %r15
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_5
	.p2align	4, 0x90
.LBB2_2:                                #   in Loop: Header=BB2_5 Depth=1
	movq	16(%r15), %rbx
	movq	24(%r15), %rdi
	movl	%eax, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*48(%rbx)
	cmpq	$-1, %rax
	je	.LBB2_10
# %bb.3:                                #   in Loop: Header=BB2_5 Depth=1
	testq	%rax, %rax
	je	.LBB2_14
.LBB2_4:                                #   in Loop: Header=BB2_5 Depth=1
	movq	(%r12), %r14
	testq	%r14, %r14
	je	.LBB2_19
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	cmpq	$0, (%rax)
	je	.LBB2_15
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	(%rsi), %r13
	movq	(%r15), %rax
	movq	8(%r15), %rdi
	movq	%r12, %rdx
	callq	*48(%rax)
	cmpl	$-1, %eax
	je	.LBB2_16
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	cmpl	$-2, %eax
	je	.LBB2_17
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	movl	16(%rbp), %ecx
	testb	$1, %cl
	je	.LBB2_2
# %bb.9:                                #   in Loop: Header=BB2_5 Depth=1
	leaq	-94(%rbp), %rcx
	movq	%rcx, -88(%rbp)
	leaq	-88(%rbp), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jmp	.LBB2_2
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	movl	16(%rbp), %eax
	testb	$2, %al
	jne	.LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_5 Depth=1
	movq	16(%r15), %rax
	movq	24(%r15), %rdi
	movl	$63, %esi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*48(%rax)
	testl	%eax, %eax
	js	.LBB2_15
# %bb.12:                               #   in Loop: Header=BB2_5 Depth=1
	addq	$1, -48(%rbp)           # 8-byte Folded Spill
	jmp	.LBB2_4
.LBB2_13:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB2_19
.LBB2_14:
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%r13, (%rax)
	movq	%r14, (%r12)
.LBB2_15:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$7, (%rax)
	jmp	.LBB2_18
.LBB2_16:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	jmp	.LBB2_18
.LBB2_17:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$22, (%rax)
.LBB2_18:
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
.LBB2_19:
	movq	-48(%rbp), %rax         # 8-byte Reload
	addq	$56, %rsp
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
	testl	%edx, %edx
	je	.LBB3_1
# %bb.3:
	movq	16(%rdi), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_4
# %bb.5:
	movq	24(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB3_1:
	movq	(%rdi), %rax
	movq	24(%rax), %rax
	testq	%rax, %rax
	je	.LBB3_4
# %bb.2:
	movq	8(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB3_4:
	movq	$0, (%rsi)
	retq
.Lfunc_end3:
	.size	ucs_based_conversion_get_state, .Lfunc_end3-ucs_based_conversion_get_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_set_state
	.type	ucs_based_conversion_set_state,@function
ucs_based_conversion_set_state:         # @ucs_based_conversion_set_state
# %bb.0:
	testl	%edx, %edx
	je	.LBB4_1
# %bb.3:
	movq	16(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_4
# %bb.5:
	movq	24(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB4_1:
	movq	(%rdi), %rax
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB4_4
# %bb.2:
	movq	8(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB4_4:
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	ucs_based_conversion_set_state, .Lfunc_end4-ucs_based_conversion_set_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_get_mb_cur_max
	.type	ucs_based_conversion_get_mb_cur_max,@function
ucs_based_conversion_get_mb_cur_max:    # @ucs_based_conversion_get_mb_cur_max
# %bb.0:
	testl	%esi, %esi
	je	.LBB5_1
# %bb.2:
	movq	16(%rdi), %rax
	movq	24(%rdi), %rdi
	jmpq	*16(%rax)               # TAILCALL
.LBB5_1:
	movq	(%rdi), %rax
	movq	8(%rdi), %rdi
	jmpq	*16(%rax)               # TAILCALL
.Lfunc_end5:
	.size	ucs_based_conversion_get_mb_cur_max, .Lfunc_end5-ucs_based_conversion_get_mb_cur_max
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function ucs_based_conversion_is_stateful
	.type	ucs_based_conversion_is_stateful,@function
ucs_based_conversion_is_stateful:       # @ucs_based_conversion_is_stateful
# %bb.0:
	testl	%esi, %esi
	je	.LBB6_1
# %bb.3:
	movq	16(%rdi), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_4
# %bb.5:
	movq	24(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB6_1:
	movq	(%rdi), %rax
	movq	40(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_4
# %bb.2:
	movq	8(%rdi), %rdi
	jmpq	*%rax                   # TAILCALL
.LBB6_4:
	xorl	%eax, %eax
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
