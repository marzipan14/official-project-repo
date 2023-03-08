	.text
	.file	"buf_findstr.c"
	.globl	_buf_findstr            # -- Begin function _buf_findstr
	.p2align	4, 0x90
	.type	_buf_findstr,@function
_buf_findstr:                           # @_buf_findstr
# %bb.0:
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	je	.LBB0_1
# %bb.2:
	movabsq	$4294967296, %r9        # imm = 0x100000000
	movb	(%rdi), %r10b
	movq	(%rsi), %r15
	movl	$1, %r11d
	xorl	%r14d, %r14d
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r11
	cmpq	%r14, %r8
	jbe	.LBB0_12
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_6 Depth 2
	cmpb	(%r15,%r14), %r10b
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_11
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%r10b, %r10b
	je	.LBB0_8
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r9, %rcx
	movq	%r11, %rbx
	.p2align	4, 0x90
.LBB0_6:                                #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
	sarq	$32, %rax
	movzbl	(%rdi,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB0_7
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=2
	addq	%r9, %rcx
	cmpb	(%r15,%rbx), %al
	leaq	1(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_6
# %bb.10:                               #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_11
.LBB0_7:
	movq	%rbx, %r14
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	%rax, %r15
	movq	%r15, (%rsi)
	subq	%rax, %r8
	movq	%r8, (%rdx)
	movl	$1, %eax
	jmp	.LBB0_14
.LBB0_1:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
.LBB0_13:
	addq	%rcx, (%rsi)
	movq	$0, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_12:
	movl	%r14d, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r8
	je	.LBB0_13
	jmp	.LBB0_14
.Lfunc_end0:
	.size	_buf_findstr, .Lfunc_end0-_buf_findstr
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
