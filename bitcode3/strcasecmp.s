	.text
	.file	"strcasecmp.c"
	.globl	strcasecmp              # -- Begin function strcasecmp
	.p2align	4, 0x90
	.type	strcasecmp,@function
strcasecmp:                             # @strcasecmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%r12), %rbx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_3
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$32, %ebx
.LBB0_3:                                #   in Loop: Header=BB0_1 Depth=1
	movsbq	(%r14,%r12), %r13
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r13), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_1 Depth=1
	addl	$32, %r13d
.LBB0_5:                                #   in Loop: Header=BB0_1 Depth=1
	subl	%r13d, %ebx
	testl	%r13d, %r13d
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_1 Depth=1
	addq	$1, %r12
	testl	%ebx, %ebx
	je	.LBB0_1
.LBB0_7:
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	strcasecmp, .Lfunc_end0-strcasecmp
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
