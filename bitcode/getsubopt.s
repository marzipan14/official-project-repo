	.text
	.file	"getsubopt.c"
	.globl	getsubopt               # -- Begin function getsubopt
	.p2align	4, 0x90
	.type	getsubopt,@function
getsubopt:                              # @getsubopt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	$0, (%rdx)
	movq	$0, suboptarg(%rip)
	movl	$-1, %r14d
	testq	%rdi, %rdi
	je	.LBB0_36
# %bb.1:
	movq	(%rdi), %rax
	testq	%rax, %rax
	je	.LBB0_36
# %bb.2:                                # %.preheader4
	movq	%rsi, %r15
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$9, %cl
	jne	.LBB0_5
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %rax
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpb	$31, %cl
	jle	.LBB0_4
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$44, %cl
	je	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	cmpb	$32, %cl
	je	.LBB0_9
	jmp	.LBB0_10
.LBB0_5:
	testb	%cl, %cl
	jne	.LBB0_10
# %bb.6:
	movq	%rax, (%rdi)
	jmp	.LBB0_36
.LBB0_10:
	movq	%rax, suboptarg(%rip)
	addq	$1, %rax
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	addq	$1, %rax
	cmpb	$31, %cl
	jle	.LBB0_12
# %bb.15:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$32, %cl
	je	.LBB0_14
# %bb.16:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$44, %cl
	je	.LBB0_14
# %bb.17:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$61, %cl
	jne	.LBB0_11
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_11 Depth=1
	testb	%cl, %cl
	je	.LBB0_30
# %bb.13:                               #   in Loop: Header=BB0_11 Depth=1
	cmpb	$9, %cl
	jne	.LBB0_11
.LBB0_14:
	leaq	-1(%rax), %rcx
	movb	$0, (%rcx)
.LBB0_23:
	movabsq	$17596481012224, %rcx   # imm = 0x100100000200
	.p2align	4, 0x90
.LBB0_24:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %edx
	cmpq	$44, %rdx
	ja	.LBB0_31
# %bb.25:                               #   in Loop: Header=BB0_24 Depth=1
	btq	%rdx, %rcx
	jae	.LBB0_31
# %bb.26:                               #   in Loop: Header=BB0_24 Depth=1
	addq	$1, %rax
	jmp	.LBB0_24
.LBB0_18:
	movb	$0, -1(%rax)
	movq	%rax, (%rdx)
	jmp	.LBB0_19
	.p2align	4, 0x90
.LBB0_29:                               #   in Loop: Header=BB0_19 Depth=1
	addq	$1, %rax
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	cmpb	$31, %cl
	jg	.LBB0_27
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	testb	%cl, %cl
	je	.LBB0_23
# %bb.21:                               #   in Loop: Header=BB0_19 Depth=1
	cmpb	$9, %cl
	jne	.LBB0_29
	jmp	.LBB0_22
	.p2align	4, 0x90
.LBB0_27:                               #   in Loop: Header=BB0_19 Depth=1
	cmpb	$32, %cl
	je	.LBB0_22
# %bb.28:                               #   in Loop: Header=BB0_19 Depth=1
	cmpb	$44, %cl
	jne	.LBB0_29
.LBB0_22:
	movb	$0, (%rax)
	addq	$1, %rax
	jmp	.LBB0_23
.LBB0_30:                               # %.loopexit3
	addq	$-1, %rax
.LBB0_31:
	movq	%rax, (%rdi)
	movq	(%r15), %rsi
	testq	%rsi, %rsi
	je	.LBB0_36
# %bb.32:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_33:                               # =>This Inner Loop Header: Depth=1
	movq	suboptarg(%rip), %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_35
# %bb.34:                               #   in Loop: Header=BB0_33 Depth=1
	movq	8(%r15,%rbx,8), %rsi
	addq	$1, %rbx
	testq	%rsi, %rsi
	jne	.LBB0_33
	jmp	.LBB0_36
.LBB0_35:                               # %..loopexit_crit_edge
	movl	%ebx, %r14d
.LBB0_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	getsubopt, .Lfunc_end0-getsubopt
                                        # -- End function
	.type	suboptarg,@object       # @suboptarg
	.comm	suboptarg,8,8
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
