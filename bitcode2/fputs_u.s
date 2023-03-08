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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%r15, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movzwl	16(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_5
# %bb.4:
	cmpq	$0, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_6
.LBB0_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_17
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_7 Depth=1
	movq	%r15, %rdi
	movq	%r14, %rdx
	callq	__swbuf_r
.LBB0_15:                               #   in Loop: Header=BB0_7 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_16
.LBB0_7:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB0_8
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=1
	movl	12(%r14), %eax
	leal	-1(%rax), %ecx
	movl	%ecx, 12(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	%sil, %eax
.LBB0_13:                               #   in Loop: Header=BB0_7 Depth=1
	movq	(%r14), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%r14)
	movb	%sil, (%rcx)
	jmp	.LBB0_15
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=1
	cmpl	40(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_14
# %bb.12:                               #   in Loop: Header=BB0_7 Depth=1
	movzbl	%sil, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$10, %eax
	je	.LBB0_14
	jmp	.LBB0_13
.LBB0_16:
	movl	$-1, %eax
	jmp	.LBB0_17
.LBB0_8:
	xorl	%eax, %eax
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
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
