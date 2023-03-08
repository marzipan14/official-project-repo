	.text
	.file	"wsetup.c"
	.globl	__swsetup_r             # -- Begin function __swsetup_r
	.p2align	4, 0x90
	.type	__swsetup_r,@function
__swsetup_r:                            # @__swsetup_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	callq	__getreent
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
.LBB0_3:
	movzwl	16(%rbx), %ecx
	movswl	%cx, %eax
	testb	$8, %al
	jne	.LBB0_13
# %bb.4:
	testb	$16, %al
	jne	.LBB0_6
# %bb.5:
	movl	$9, (%r14)
	jmp	.LBB0_23
.LBB0_6:
	testb	$4, %al
	je	.LBB0_12
# %bb.7:
	movq	88(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.8:
	leaq	116(%rbx), %rax
	cmpq	%rax, %rdi
	je	.LBB0_10
# %bb.9:
	callq	free
	movzwl	16(%rbx), %ecx
.LBB0_10:
	movq	$0, 88(%rbx)
.LBB0_11:
	andl	$65499, %ecx            # imm = 0xFFDB
	movw	%cx, 16(%rbx)
	movl	$0, 8(%rbx)
	movq	24(%rbx), %rax
	movq	%rax, (%rbx)
.LBB0_12:
	orl	$8, %ecx
	movw	%cx, 16(%rbx)
.LBB0_13:
	cmpq	$0, 24(%rbx)
	jne	.LBB0_16
# %bb.14:
	movl	%ecx, %eax
	andl	$640, %eax              # imm = 0x280
	movzwl	%ax, %eax
	cmpl	$512, %eax              # imm = 0x200
	je	.LBB0_16
# %bb.15:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__smakebuf_r
	movzwl	16(%rbx), %ecx
.LBB0_16:
	movswl	%cx, %edx
	testb	$1, %dl
	jne	.LBB0_17
# %bb.18:
	xorl	%eax, %eax
	testb	$2, %dl
	jne	.LBB0_20
# %bb.19:
	movl	32(%rbx), %eax
.LBB0_20:
	movl	%eax, 12(%rbx)
	jmp	.LBB0_21
.LBB0_17:
	movl	$0, 12(%rbx)
	xorl	%eax, %eax
	subl	32(%rbx), %eax
	movl	%eax, 40(%rbx)
.LBB0_21:
	xorl	%eax, %eax
	testb	%cl, %cl
	jns	.LBB0_24
# %bb.22:
	cmpq	$0, 24(%rbx)
	jne	.LBB0_24
.LBB0_23:
	orl	$64, %ecx
	movw	%cx, 16(%rbx)
	movl	$-1, %eax
.LBB0_24:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__swsetup_r, .Lfunc_end0-__swsetup_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
