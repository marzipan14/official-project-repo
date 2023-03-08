	.text
	.file	"iconv.c"
	.globl	iconv_open              # -- Begin function iconv_open
	.p2align	4, 0x90
	.type	iconv_open,@function
iconv_open:                             # @iconv_open
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	_iconv_open_r           # TAILCALL
.Lfunc_end0:
	.size	iconv_open, .Lfunc_end0-iconv_open
                                        # -- End function
	.globl	_iconv_open_r           # -- Begin function _iconv_open_r
	.p2align	4, 0x90
	.type	_iconv_open_r,@function
_iconv_open_r:                          # @_iconv_open_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	$-1, %r15
	testq	%rsi, %rsi
	je	.LBB1_15
# %bb.1:
	movq	%rdx, %rbx
	testq	%rdx, %rdx
	je	.LBB1_15
# %bb.2:
	cmpb	$0, (%rsi)
	je	.LBB1_15
# %bb.3:
	cmpb	$0, (%rbx)
	je	.LBB1_15
# %bb.4:
	movq	%rdi, %r13
	callq	_iconv_resolve_encoding_name
	testq	%rax, %rax
	je	.LBB1_15
# %bb.5:
	movq	%rax, %r14
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	_iconv_resolve_encoding_name
	testq	%rax, %rax
	je	.LBB1_6
# %bb.7:
	movq	%rax, %r12
	movl	$16, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB1_15
# %bb.8:
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_9
# %bb.10:
	movq	$_iconv_ucs_conversion_handlers, (%rbx)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*_iconv_ucs_conversion_handlers(%rip)
	jmp	.LBB1_11
.LBB1_6:
	movq	%r14, %rdi
	jmp	.LBB1_14
.LBB1_9:
	movq	$_iconv_null_conversion_handlers, (%rbx)
	movq	%r13, %rdi
	movq	%r14, %rsi
	movq	%r12, %rdx
	callq	*_iconv_null_conversion_handlers(%rip)
.LBB1_11:
	movq	%rbx, %rcx
	addq	$8, %rbx
	movq	%rcx, %r13
	movq	%rax, 8(%rcx)
	movq	%r14, %rdi
	callq	free
	movq	%r12, %rdi
	callq	free
	cmpq	$0, (%rbx)
	je	.LBB1_13
# %bb.12:
	movq	%r13, %r15
	jmp	.LBB1_15
.LBB1_13:
	movq	%r13, %rdi
.LBB1_14:
	callq	free
.LBB1_15:
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_iconv_open_r, .Lfunc_end1-_iconv_open_r
                                        # -- End function
	.globl	iconv                   # -- Begin function iconv
	.p2align	4, 0x90
	.type	iconv,@function
iconv:                                  # @iconv
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%r8, %r14
	movq	%rcx, %r15
	movq	%rdx, %r12
	movq	%rsi, %r13
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movq	%r12, %rcx
	movq	%r15, %r8
	movq	%r14, %r9
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_iconv_r                # TAILCALL
.Lfunc_end2:
	.size	iconv, .Lfunc_end2-iconv
                                        # -- End function
	.globl	_iconv_r                # -- Begin function _iconv_r
	.p2align	4, 0x90
	.type	_iconv_r,@function
_iconv_r:                               # @_iconv_r
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
	leaq	1(%rsi), %rax
	cmpq	$2, %rax
	jae	.LBB3_4
.LBB3_1:
	movl	$9, (%r12)
.LBB3_2:
	movq	$-1, %rax
.LBB3_3:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_4:
	movq	%rsi, %rbx
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB3_1
# %bb.5:
	movq	%r9, %r14
	movq	%r8, %r15
	movq	(%rbx), %r10
	movl	$_iconv_null_conversion_handlers, %eax
	cmpq	%rax, %r10
	je	.LBB3_7
# %bb.6:
	movl	$_iconv_ucs_conversion_handlers, %eax
	cmpq	%rax, %r10
	jne	.LBB3_1
.LBB3_7:
	testq	%rdx, %rdx
	je	.LBB3_13
# %bb.8:
	cmpq	$0, (%rdx)
	je	.LBB3_13
# %bb.9:
	cmpq	$0, (%rcx)
	je	.LBB3_22
# %bb.10:
	cmpq	$0, (%r14)
	je	.LBB3_19
# %bb.11:
	cmpq	$0, (%r15)
	je	.LBB3_19
# %bb.12:
	movl	$0, (%rsp)
	movq	%r12, %rdi
	movq	%r15, %r8
	movq	%r14, %r9
	callq	*16(%r10)
	jmp	.LBB3_3
.LBB3_13:
	movq	$0, -48(%rbp)
	movq	%rsi, %rdi
	movl	$1, %esi
	callq	*48(%r10)
	testl	%eax, %eax
	je	.LBB3_20
# %bb.14:
	testq	%r15, %r15
	je	.LBB3_21
# %bb.15:
	cmpq	$0, (%r15)
	je	.LBB3_21
# %bb.16:
	testq	%r14, %r14
	je	.LBB3_19
# %bb.17:
	movq	$0, -56(%rbp)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	callq	*24(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-48(%rbp), %r13
	movq	%r13, %rsi
	movl	$1, %edx
	callq	*32(%rax)
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	*24(%rax)
	movslq	-48(%rbp), %rdx
	cmpq	%rdx, (%r14)
	jae	.LBB3_23
# %bb.18:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-56(%rbp), %rsi
	movl	$1, %edx
	callq	*32(%rax)
.LBB3_19:
	movl	$7, (%r12)
	jmp	.LBB3_2
.LBB3_20:
	xorl	%eax, %eax
	jmp	.LBB3_3
.LBB3_21:
	movq	(%rbx), %rax
	movq	8(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$1, %edx
	callq	*32(%rax)
	xorl	%eax, %eax
	jmp	.LBB3_3
.LBB3_22:
	movl	$22, (%r12)
	jmp	.LBB3_2
.LBB3_23:
	movq	(%r15), %rdi
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movslq	-48(%rbp), %rax
	addq	%rax, (%r15)
	subq	%rax, (%r14)
	xorl	%eax, %eax
	jmp	.LBB3_3
.Lfunc_end3:
	.size	_iconv_r, .Lfunc_end3-_iconv_r
                                        # -- End function
	.globl	iconv_close             # -- Begin function iconv_close
	.p2align	4, 0x90
	.type	iconv_close,@function
iconv_close:                            # @iconv_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	callq	__getreent
	leaq	1(%r14), %rcx
	cmpq	$2, %rcx
	jae	.LBB4_1
.LBB4_4:
	movl	$9, (%rax)
	movl	$-1, %ebx
.LBB4_6:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB4_1:
	movq	8(%r14), %rsi
	testq	%rsi, %rsi
	je	.LBB4_4
# %bb.2:
	movq	(%r14), %rcx
	movl	$_iconv_null_conversion_handlers, %edx
	cmpq	%rdx, %rcx
	je	.LBB4_5
# %bb.3:
	movl	$_iconv_ucs_conversion_handlers, %edx
	cmpq	%rdx, %rcx
	jne	.LBB4_4
.LBB4_5:
	movq	%rax, %rdi
	callq	*8(%rcx)
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	free
	jmp	.LBB4_6
.Lfunc_end4:
	.size	iconv_close, .Lfunc_end4-iconv_close
                                        # -- End function
	.globl	_iconv_close_r          # -- Begin function _iconv_close_r
	.p2align	4, 0x90
	.type	_iconv_close_r,@function
_iconv_close_r:                         # @_iconv_close_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	leaq	1(%rsi), %rax
	cmpq	$2, %rax
	jae	.LBB5_1
.LBB5_4:
	movl	$9, (%rdi)
	movl	$-1, %ebx
.LBB5_6:
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB5_1:
	movq	%rsi, %r14
	movq	8(%rsi), %rsi
	testq	%rsi, %rsi
	je	.LBB5_4
# %bb.2:
	movq	(%r14), %rax
	movl	$_iconv_null_conversion_handlers, %ecx
	cmpq	%rcx, %rax
	je	.LBB5_5
# %bb.3:
	movl	$_iconv_ucs_conversion_handlers, %ecx
	cmpq	%rcx, %rax
	jne	.LBB5_4
.LBB5_5:
	callq	*8(%rax)
	movq	%rax, %rbx
	movq	%r14, %rdi
	callq	free
	jmp	.LBB5_6
.Lfunc_end5:
	.size	_iconv_close_r, .Lfunc_end5-_iconv_close_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
