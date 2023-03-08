	.text
	.file	"ethip6.c"
	.globl	ethip6_output           # -- Begin function ethip6_output
	.p2align	4, 0x90
	.type	ethip6_output,@function
ethip6_output:                          # @ethip6_output
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	cmpb	$-1, (%rdx)
	jne	.LBB0_2
# %bb.1:
	movw	$13107, -32(%rbp)       # imm = 0x3333
	movb	12(%rdx), %al
	movb	%al, -30(%rbp)
	movb	13(%rdx), %al
	movb	%al, -29(%rbp)
	movb	14(%rdx), %al
	movb	%al, -28(%rbp)
	movb	15(%rdx), %al
	movb	%al, -27(%rbp)
	leaq	254(%rbx), %rdx
	leaq	-32(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
.LBB0_6:
	movl	$34525, %r8d            # imm = 0x86DD
	callq	ethernet_output
                                        # kill: def $al killed $al def $eax
	jmp	.LBB0_7
.LBB0_2:
	leaq	-40(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	nd6_get_next_hop_addr_or_queue
                                        # kill: def $al killed $al def $eax
	testb	%al, %al
	je	.LBB0_3
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_3:
	movq	-40(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB0_4
# %bb.5:
	leaq	-32(%rbp), %r15
	movl	$6, %edx
	movq	%r15, %rdi
	callq	memcpy
	leaq	254(%rbx), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rcx
	jmp	.LBB0_6
.LBB0_4:
	xorl	%eax, %eax
	jmp	.LBB0_7
.Lfunc_end0:
	.size	ethip6_output, .Lfunc_end0-ethip6_output
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
