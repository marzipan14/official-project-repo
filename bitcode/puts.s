	.text
	.file	"puts.c"
	.globl	_puts_r                 # -- Begin function _puts_r
	.p2align	4, 0x90
	.type	_puts_r,@function
_puts_r:                                # @_puts_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	16(%rdi), %r15
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r14)
	jne	.LBB0_3
# %bb.2:
	movq	%r14, %rdi
	callq	__sinit
.LBB0_3:
	leaq	-36(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	testb	$8, 16(%r15)
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 24(%r15)
	jne	.LBB0_6
.LBB0_5:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__swsetup_r
	movl	$-1, %r12d
	testl	%eax, %eax
	jne	.LBB0_17
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_6 Depth=1
	movq	(%r15), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r15)
	movb	%sil, (%rcx)
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_13
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %esi
	testl	%esi, %esi
	je	.LBB0_14
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	movl	12(%r15), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 12(%r15)
	movzbl	%sil, %eax
	testl	%ecx, %ecx
	jg	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$10, %eax
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	40(%r15), %ecx
	jg	.LBB0_10
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rdx
	callq	__swbuf_r
	jmp	.LBB0_12
.LBB0_14:
	movl	12(%r15), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%r15)
	testl	%eax, %eax
	jle	.LBB0_16
# %bb.15:
	movq	(%r15), %rax
	leaq	1(%rax), %rcx
	movq	%rcx, (%r15)
	movb	$10, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$10, %r12d
	jmp	.LBB0_17
.LBB0_13:
	movl	$-1, %r12d
	jmp	.LBB0_17
.LBB0_16:
	movl	$10, %r12d
	movq	%r14, %rdi
	movl	$10, %esi
	movq	%r15, %rdx
	callq	__swbuf_r
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	cmovel	%eax, %r12d
.LBB0_17:
	movl	-36(%rbp), %edi
	leaq	-36(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_puts_r, .Lfunc_end0-_puts_r
                                        # -- End function
	.globl	puts                    # -- Begin function puts
	.p2align	4, 0x90
	.type	puts,@function
puts:                                   # @puts
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	_puts_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	puts, .Lfunc_end1-puts
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
