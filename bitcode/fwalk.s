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
	movq	%rdi, %r15
	addq	$1312, %r15             # imm = 0x520
	xorl	%r12d, %r12d
	jmp	.LBB0_1
	.p2align	4, 0x90
.LBB0_7:                                #   in Loop: Header=BB0_1 Depth=1
	movq	(%r15), %r15
	testq	%r15, %r15
	je	.LBB0_8
.LBB0_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_3 Depth 2
	movl	8(%r15), %r13d
	testl	%r13d, %r13d
	jle	.LBB0_7
# %bb.2:                                #   in Loop: Header=BB0_1 Depth=1
	movq	16(%r15), %rbx
	addl	$1, %r13d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_6:                                #   in Loop: Header=BB0_3 Depth=2
	addq	$176, %rbx
	addl	$-1, %r13d
	cmpl	$1, %r13d
	jle	.LBB0_7
.LBB0_3:                                #   Parent Loop BB0_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	$2, 16(%rbx)
	jb	.LBB0_6
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=2
	cmpw	$-1, 18(%rbx)
	je	.LBB0_6
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=2
	movq	%rbx, %rdi
	callq	*%r14
	orl	%eax, %r12d
	jmp	.LBB0_6
.LBB0_8:
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
	xorl	%r12d, %r12d
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movq	(%r13), %r13
	testq	%r13, %r13
	je	.LBB1_8
.LBB1_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_3 Depth 2
	movl	8(%r13), %r14d
	testl	%r14d, %r14d
	jle	.LBB1_7
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movq	16(%r13), %rbx
	addl	$1, %r14d
	jmp	.LBB1_3
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_3 Depth=2
	addq	$176, %rbx
	addl	$-1, %r14d
	cmpl	$1, %r14d
	jle	.LBB1_7
.LBB1_3:                                #   Parent Loop BB1_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpw	$2, 16(%rbx)
	jb	.LBB1_6
# %bb.4:                                #   in Loop: Header=BB1_3 Depth=2
	cmpw	$-1, 18(%rbx)
	je	.LBB1_6
# %bb.5:                                #   in Loop: Header=BB1_3 Depth=2
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	*-48(%rbp)              # 8-byte Folded Reload
	orl	%eax, %r12d
	jmp	.LBB1_6
.LBB1_8:
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
