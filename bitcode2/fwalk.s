	.text
	.file	"fwalk.c"
	.globl	_fwalk                  # -- Begin function _fwalk
	.p2align	4, 0x90
	.type	_fwalk,@function
_fwalk:                                 # @_fwalk
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
	movq	%rdi, %r12
	addq	$1312, %r12             # imm = 0x520
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_1 Depth=1
	movq	(%r12), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_9
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movq	16(%r12), %rbx
	movl	8(%r12), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	jle	.LBB0_8
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB0_1 Depth=1
	addl	$1, %r13d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_3 Depth=2
	addq	$176, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r13d
	cmpl	$1, %r13d
	jle	.LBB0_8
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB0_7
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %ax
	je	.LBB0_7
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	cmpw	$-1, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_7
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=2
	movq	%rbx, %rdi
	callq	*%r14
	orl	%eax, %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_7
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fwalk, .Lfunc_end0-_fwalk
                                        # -- End function
	.globl	_fwalk_reent            # -- Begin function _fwalk_reent
	.p2align	4, 0x90
	.type	_fwalk_reent,@function
_fwalk_reent:                           # @_fwalk_reent
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
	movq	%rdi, %r15
	leaq	1312(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_8:                                #   in Loop: Header=BB1_1 Depth=1
	movq	(%r13), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB1_9
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movq	16(%r13), %rbx
	movl	8(%r13), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB1_8
# %bb.2:                                # %.preheader
                                        #   in Loop: Header=BB1_1 Depth=1
	addl	$1, %r14d
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_3 Depth=2
	addq	$176, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jle	.LBB1_8
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	16(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB1_7
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %ax
	je	.LBB1_7
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	cmpw	$-1, 18(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_3 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*-48(%rbp)              # 8-byte Folded Reload
	orl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_7
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_fwalk_reent, .Lfunc_end1-_fwalk_reent
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
