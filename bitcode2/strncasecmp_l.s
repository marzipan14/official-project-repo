	.text
	.file	"strncasecmp_l.c"
	.globl	strncasecmp_l           # -- Begin function strncasecmp_l
	.p2align	4, 0x90
	.type	strncasecmp_l,@function
strncasecmp_l:                          # @strncasecmp_l
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
	je	.LBB0_5
# %bb.1:                                # %.preheader
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rdi, %r12
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movsbl	(%r12,%r15), %edi
	movq	%r13, %rsi
	callq	tolower_l
	movl	%eax, %ebx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movsbl	(%rax,%r15), %edi
	movq	%r13, %rsi
	callq	tolower_l
	subl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_6
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	testl	%ebx, %ebx
	jne	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r15
	cmpq	%r15, %r14
	jne	.LBB0_2
.LBB0_5:
	xorl	%ebx, %ebx
.LBB0_6:
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
	.size	strncasecmp_l, .Lfunc_end0-strncasecmp_l
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
