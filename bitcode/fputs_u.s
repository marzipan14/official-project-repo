	.text
	.file	"fputs_u.c"
	.globl	_fputs_unlocked_r       # -- Begin function _fputs_unlocked_r
	.p2align	4, 0x90
	.type	_fputs_unlocked_r,@function
_fputs_unlocked_r:                      # @_fputs_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r15)
	je	.LBB0_2
.LBB0_3:
	testb	$8, 16(%r14)
	jne	.LBB0_4
	jmp	.LBB0_5
.LBB0_2:
	movq	%r15, %rdi
	callq	__sinit
	testb	$8, 16(%r14)
	je	.LBB0_5
.LBB0_4:
	cmpq	$0, 24(%r14)
	jne	.LBB0_6
.LBB0_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_15
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_6 Depth=1
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%sil, (%rcx)
.LBB0_13:                               #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_14
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %esi
	testl	%esi, %esi
	je	.LBB0_7
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	movl	12(%r14), %ecx
	leal	-1(%rcx), %eax
	movl	%eax, 12(%r14)
	movzbl	%sil, %eax
	testl	%ecx, %ecx
	jg	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$10, %eax
	je	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	40(%r14), %ecx
	jg	.LBB0_11
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	__swbuf_r
	jmp	.LBB0_13
.LBB0_14:
	movl	$-1, %eax
	jmp	.LBB0_15
.LBB0_7:
	xorl	%eax, %eax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fputs_unlocked_r, .Lfunc_end0-_fputs_unlocked_r
                                        # -- End function
	.globl	fputs_unlocked          # -- Begin function fputs_unlocked
	.p2align	4, 0x90
	.type	fputs_unlocked,@function
fputs_unlocked:                         # @fputs_unlocked
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
	callq	_fputs_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fputs_unlocked, .Lfunc_end1-fputs_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
