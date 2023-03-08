	.text
	.file	"console.c"
	.globl	isatty                  # -- Begin function isatty
	.p2align	4, 0x90
	.type	isatty,@function
isatty:                                 # @isatty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$88, %rsp
	leaq	65440(%rbp), %rsi
	callq	fstat
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	js	.LBB0_1
# %bb.2:
	movl	$61440, %ecx            # imm = 0xF000
	andl	65444(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$25, %ebx
	movl	$1, %eax
	cmpl	$8192, %ecx             # imm = 0x2000
	jne	.LBB0_3
	jmp	.LBB0_4
.LBB0_1:
	movl	$9, %ebx
.LBB0_3:
	callq	__errno
	movl	%ebx, (%rax)
	xorl	%eax, %eax
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	isatty, .Lfunc_end0-isatty
                                        # -- End function
	.globl	ttyname                 # -- Begin function ttyname
	.p2align	4, 0x90
	.type	ttyname,@function
ttyname:                                # @ttyname
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	ttyname, .Lfunc_end1-ttyname
                                        # -- End function
	.globl	ctermid                 # -- Begin function ctermid
	.p2align	4, 0x90
	.type	ctermid,@function
ctermid:                                # @ctermid
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	ctermid, .Lfunc_end2-ctermid
                                        # -- End function
	.globl	grantpt                 # -- Begin function grantpt
	.p2align	4, 0x90
	.type	grantpt,@function
grantpt:                                # @grantpt
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, grantpt._x(%rip)
	jne	.LBB3_2
# %bb.1:
	movb	$1, grantpt._x(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_2:
	callq	__errno
	movl	$134, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	grantpt, .Lfunc_end3-grantpt
                                        # -- End function
	.type	grantpt._x,@object      # @grantpt._x
	.local	grantpt._x
	.comm	grantpt._x,1,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
