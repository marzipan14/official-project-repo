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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	cmpl	$0, 80(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_3
# %bb.2:
	movq	%rax, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movzwl	16(%rbx), %eax
	movswl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %cl
	jne	.LBB0_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testb	$16, %cl
	jne	.LBB0_6
# %bb.5:
	movl	$9, (%r14)
	orl	$64, %eax
	movw	%ax, 16(%rbx)
	jmp	.LBB0_25
.LBB0_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB0_12
# %bb.7:
	movq	88(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB0_11
# %bb.8:
	leaq	116(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	je	.LBB0_10
# %bb.9:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
.LBB0_10:
	movq	$0, 88(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_11:
	andl	$65499, %eax            # imm = 0xFFDB
	movw	%ax, 16(%rbx)
	movl	$0, 8(%rbx)
	movq	24(%rbx), %rcx
	movq	%rcx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	orl	$8, %eax
	movw	%ax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_17
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testl	$512, %eax              # imm = 0x200
	je	.LBB0_16
# %bb.15:
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	jns	.LBB0_17
.LBB0_16:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__smakebuf_r
	movl	$42, __A_VARIABLE(%rip)
	movzwl	16(%rbx), %eax
.LBB0_17:
	movswl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB0_18
# %bb.19:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB0_21
# %bb.20:
	movl	32(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
.LBB0_21:
	movl	%eax, 12(%rbx)
	jmp	.LBB0_22
.LBB0_18:
	movl	$0, 12(%rbx)
	xorl	%eax, %eax
	subl	32(%rbx), %eax
	movl	%eax, 40(%rbx)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	cmpq	$0, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_26
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jns	.LBB0_26
# %bb.24:
	orl	$64, %ecx
	movw	%cx, 16(%rbx)
.LBB0_25:
	movl	$-1, %eax
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
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
