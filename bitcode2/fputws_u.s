	.text
	.file	"fputws_u.c"
	.globl	_fputws_unlocked_r      # -- Begin function _fputws_unlocked_r
	.p2align	4, 0x90
	.type	_fputws_unlocked_r,@function
_fputws_unlocked_r:                     # @_fputws_unlocked_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$1032, %rsp             # imm = 0x408
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%rsi, -48(%rbp)
	movzwl	16(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	je	.LBB0_2
# %bb.1:
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	movl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	testl	%ecx, %ecx
	jne	.LBB0_16
.LBB0_4:
	leaq	164(%rbx), %r15
	jmp	.LBB0_5
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_15
.LBB0_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_8 Depth 2
	movl	$1024, %ecx             # imm = 0x400
	movq	%r14, %rdi
	leaq	-1072(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	%r15, %r8
	callq	_wcsrtombs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_17
# %bb.6:                                #   in Loop: Header=BB0_5 Depth=1
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_14
# %bb.7:                                # %.preheader
                                        #   in Loop: Header=BB0_5 Depth=1
	xorl	%r13d, %r13d
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=2
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%al, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:                               #   in Loop: Header=BB0_8 Depth=2
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %r13
	jae	.LBB0_14
.LBB0_8:                                #   Parent Loop BB0_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1072(%rbp,%r13), %eax
	movl	12(%rbx), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 12(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	jg	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=2
	cmpl	40(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_12
# %bb.10:                               #   in Loop: Header=BB0_8 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$10, %al
	jne	.LBB0_11
.LBB0_12:                               #   in Loop: Header=BB0_8 Depth=2
	movsbl	%al, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	__swbuf_r
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB0_13
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1032, %rsp             # imm = 0x408
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:
	xorl	%eax, %eax
	jmp	.LBB0_16
.Lfunc_end0:
	.size	_fputws_unlocked_r, .Lfunc_end0-_fputws_unlocked_r
                                        # -- End function
	.globl	fputws_unlocked         # -- Begin function fputws_unlocked
	.p2align	4, 0x90
	.type	fputws_unlocked,@function
fputws_unlocked:                        # @fputws_unlocked
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_fputws_unlocked_r
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fputws_unlocked, .Lfunc_end1-fputws_unlocked
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
