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
	subq	$1048, %rsp             # imm = 0x418
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movq	%rsi, -48(%rbp)
	testb	$8, 16(%rdx)
	je	.LBB0_2
# %bb.1:
	cmpq	$0, 24(%rbx)
	jne	.LBB0_3
.LBB0_2:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__swsetup_r
	movl	$-1, %r12d
	testl	%eax, %eax
	jne	.LBB0_15
.LBB0_3:
	leaq	164(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$-1, %r12d
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_4 Depth=1
	cmpq	$0, -48(%rbp)
	je	.LBB0_14
.LBB0_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_7 Depth 2
	movl	$1024, %ecx             # imm = 0x400
	movq	%r14, %rdi
	leaq	-1088(%rbp), %rsi
	leaq	-48(%rbp), %rdx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	_wcsrtombs_r
	testq	%rax, %rax
	je	.LBB0_13
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %r13
	cmpq	$-1, %rax
	je	.LBB0_15
# %bb.6:                                # %.preheader
                                        #   in Loop: Header=BB0_4 Depth=1
	xorl	%r15d, %r15d
	jmp	.LBB0_7
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_7 Depth=2
	movq	(%rbx), %rcx
	leaq	1(%rcx), %rdx
	movq	%rdx, (%rbx)
	movb	%al, (%rcx)
.LBB0_12:                               #   in Loop: Header=BB0_7 Depth=2
	addq	$1, %r15
	cmpq	%r13, %r15
	jae	.LBB0_13
.LBB0_7:                                #   Parent Loop BB0_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-1088(%rbp,%r15), %eax
	movl	12(%rbx), %ecx
	leal	-1(%rcx), %edx
	movl	%edx, 12(%rbx)
	testl	%ecx, %ecx
	jg	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_7 Depth=2
	cmpb	$10, %al
	je	.LBB0_11
# %bb.9:                                #   in Loop: Header=BB0_7 Depth=2
	cmpl	40(%rbx), %ecx
	jg	.LBB0_10
.LBB0_11:                               #   in Loop: Header=BB0_7 Depth=2
	movsbl	%al, %esi
	movq	%r14, %rdi
	movq	%rbx, %rdx
	callq	__swbuf_r
	cmpl	$-1, %eax
	jne	.LBB0_12
	jmp	.LBB0_15
.LBB0_14:
	xorl	%r12d, %r12d
.LBB0_15:
	movl	%r12d, %eax
	addq	$1048, %rsp             # imm = 0x418
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	_fputws_unlocked_r      # TAILCALL
.Lfunc_end1:
	.size	fputws_unlocked, .Lfunc_end1-fputws_unlocked
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
