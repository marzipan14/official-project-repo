	.text
	.file	"strncasecmp.c"
	.globl	strncasecmp             # -- Begin function strncasecmp
	.p2align	4, 0x90
	.type	strncasecmp,@function
strncasecmp:                            # @strncasecmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_9
# %bb.1:                                # %.preheader
	movq	%rdx, %r12
	movq	%rdi, %r15
	xorl	%r13d, %r13d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsbq	(%r15,%r13), %rbx
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%rbx), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$32, %ebx
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movsbq	(%rax,%r13), %r14
	callq	__locale_ctype_ptr
	movzbl	1(%rax,%r14), %eax
	andb	$3, %al
	cmpb	$1, %al
	jne	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$32, %r14d
.LBB0_6:                                #   in Loop: Header=BB0_2 Depth=1
	subl	%r14d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ebx, %ebx
	jne	.LBB0_10
# %bb.8:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r13
	cmpq	%r13, %r12
	jne	.LBB0_2
.LBB0_9:
	xorl	%ebx, %ebx
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
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
	.size	strncasecmp, .Lfunc_end0-strncasecmp
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
