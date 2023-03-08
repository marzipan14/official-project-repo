	.text
	.file	"buf_findstr.c"
	.globl	_buf_findstr            # -- Begin function _buf_findstr
	.p2align	4, 0x90
	.type	_buf_findstr,@function
_buf_findstr:                           # @_buf_findstr
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	(%rdx), %r9
	xorl	%r8d, %r8d
	testq	%r9, %r9
	je	.LBB0_1
# %bb.2:
	movabsq	$4294967296, %r10       # imm = 0x100000000
	movb	(%rdi), %r11b
	movq	(%rsi), %r12
	movl	$1, %r14d
	xorl	%r15d, %r15d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r15
	addq	$1, %r14
	cmpq	%r15, %r9
	jbe	.LBB0_9
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	cmpb	(%r12,%r15), %r11b
	jne	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	testb	%r11b, %r11b
	je	.LBB0_11
# %bb.5:                                # %.preheader
                                        #   in Loop: Header=BB0_3 Depth=1
	movq	%r10, %rcx
	movq	%r14, %rbx
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rcx, %rax
	sarq	$32, %rax
	movzbl	(%rdi,%rax), %eax
	testb	%al, %al
	je	.LBB0_12
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=2
	addq	%r10, %rcx
	cmpb	(%r12,%rbx), %al
	leaq	1(%rbx), %rbx
	je	.LBB0_6
	jmp	.LBB0_8
.LBB0_12:                               # %.loopexit
	addq	%rbx, %r12
	movq	%rbx, %r15
.LBB0_13:
	movl	%r15d, %eax
	movq	%r12, (%rsi)
	subq	%rax, %r9
	movl	$1, %r8d
	jmp	.LBB0_14
.LBB0_1:
	xorl	%ecx, %ecx
.LBB0_10:
	addq	%rcx, (%rsi)
	xorl	%r9d, %r9d
.LBB0_14:
	movq	%r9, (%rdx)
	movl	%r8d, %eax
.LBB0_15:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	retq
.LBB0_9:
	movl	%r15d, %ecx
	xorl	%eax, %eax
	cmpq	%rcx, %r9
	je	.LBB0_10
	jmp	.LBB0_15
.LBB0_11:
	addq	%r15, %r12
	jmp	.LBB0_13
.Lfunc_end0:
	.size	_buf_findstr, .Lfunc_end0-_buf_findstr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
