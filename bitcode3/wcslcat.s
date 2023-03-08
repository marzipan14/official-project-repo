	.text
	.file	"wcslcat.c"
	.globl	wcslcat                 # -- Begin function wcslcat
	.p2align	4, 0x90
	.type	wcslcat,@function
wcslcat:                                # @wcslcat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	(%rdi), %ebx
	testl	%ebx, %ebx
	sete	%al
	movq	%rdi, %r8
	testq	%rdx, %rdx
	je	.LBB0_5
# %bb.1:
	movq	%rdi, %r8
	testl	%ebx, %ebx
	je	.LBB0_5
# %bb.2:                                # %.preheader1
	movq	%rdx, %rbx
	movq	%rdi, %r8
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	notb	%al
	movzbl	%al, %r9d
	andl	$1, %r9d
	movl	4(%r8), %ecx
	addq	$4, %r8
	testl	%ecx, %ecx
	sete	%al
	subq	%r9, %rbx
	je	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testl	%ecx, %ecx
	jne	.LBB0_3
.LBB0_5:
	movq	%r8, %rbx
	subq	%rdi, %rbx
	sarq	$2, %rbx
	subq	%rbx, %rdx
	je	.LBB0_14
# %bb.6:
	movl	(%rsi), %edi
	movq	%rsi, %rax
	testl	%edi, %edi
	je	.LBB0_12
# %bb.7:
	movl	$1, %ecx
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	movl	%edi, (%r8)
	addq	$4, %r8
	addq	$-1, %rdx
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	movl	4(%rax), %edi
	addq	$4, %rax
	testl	%edi, %edi
	je	.LBB0_12
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	cmpq	$1, %rdx
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movq	%rcx, %rdx
	jmp	.LBB0_11
.LBB0_12:
	movl	$0, (%r8)
	subq	%rsi, %rax
	sarq	$2, %rax
	jmp	.LBB0_13
.LBB0_14:
	movq	%rsi, %rdi
	callq	wcslen
.LBB0_13:
	addq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	wcslcat, .Lfunc_end0-wcslcat
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
