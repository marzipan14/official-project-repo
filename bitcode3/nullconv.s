	.text
	.file	"nullconv.c"
	.p2align	4, 0x90         # -- Begin function null_conversion_open
	.type	null_conversion_open,@function
null_conversion_open:                   # @null_conversion_open
# %bb.0:
	movl	$null_conversion_dummy_data, %eax
	retq
.Lfunc_end0:
	.size	null_conversion_open, .Lfunc_end0-null_conversion_open
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_close
	.type	null_conversion_close,@function
null_conversion_close:                  # @null_conversion_close
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	null_conversion_close, .Lfunc_end1-null_conversion_close
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_convert
	.type	null_conversion_convert,@function
null_conversion_convert:                # @null_conversion_convert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r9, %r14
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %r12
	movl	16(%rbp), %ecx
	movq	(%r13), %rdx
	movq	(%r9), %rbx
	cmpq	%rbx, %rdx
	jae	.LBB2_2
# %bb.1:
	xorl	%eax, %eax
	movq	%rdx, %rbx
	testb	$1, %cl
	je	.LBB2_4
	jmp	.LBB2_5
.LBB2_2:
	movl	$7, (%rdi)
	movq	$-1, %rax
	testb	$1, %cl
	jne	.LBB2_5
.LBB2_4:
	movq	(%r15), %rdi
	movq	(%r12), %rsi
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdx
	callq	memcpy
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%r13), %rdx
.LBB2_5:
	addq	%rbx, (%r12)
	addq	%rbx, (%r15)
	subq	%rbx, %rdx
	movq	%rdx, (%r13)
	subq	%rbx, (%r14)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	null_conversion_convert, .Lfunc_end2-null_conversion_convert
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_get_state
	.type	null_conversion_get_state,@function
null_conversion_get_state:              # @null_conversion_get_state
# %bb.0:
	retq
.Lfunc_end3:
	.size	null_conversion_get_state, .Lfunc_end3-null_conversion_get_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_set_state
	.type	null_conversion_set_state,@function
null_conversion_set_state:              # @null_conversion_set_state
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	null_conversion_set_state, .Lfunc_end4-null_conversion_set_state
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_get_mb_cur_max
	.type	null_conversion_get_mb_cur_max,@function
null_conversion_get_mb_cur_max:         # @null_conversion_get_mb_cur_max
# %bb.0:
	movl	$6, %eax
	retq
.Lfunc_end5:
	.size	null_conversion_get_mb_cur_max, .Lfunc_end5-null_conversion_get_mb_cur_max
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function null_conversion_is_stateful
	.type	null_conversion_is_stateful,@function
null_conversion_is_stateful:            # @null_conversion_is_stateful
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end6:
	.size	null_conversion_is_stateful, .Lfunc_end6-null_conversion_is_stateful
                                        # -- End function
	.type	_iconv_null_conversion_handlers,@object # @_iconv_null_conversion_handlers
	.section	.rodata,"a",@progbits
	.globl	_iconv_null_conversion_handlers
	.p2align	3
_iconv_null_conversion_handlers:
	.quad	null_conversion_open
	.quad	null_conversion_close
	.quad	null_conversion_convert
	.quad	null_conversion_get_state
	.quad	null_conversion_set_state
	.quad	null_conversion_get_mb_cur_max
	.quad	null_conversion_is_stateful
	.size	_iconv_null_conversion_handlers, 56

	.type	null_conversion_dummy_data,@object # @null_conversion_dummy_data
	.local	null_conversion_dummy_data
	.comm	null_conversion_dummy_data,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
