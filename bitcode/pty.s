	.text
	.file	"pty.c"
	.globl	openpty                 # -- Begin function openpty
	.p2align	4, 0x90
	.type	openpty,@function
openpty:                                # @openpty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	openpty, .Lfunc_end0-openpty
                                        # -- End function
	.globl	forkpty                 # -- Begin function forkpty
	.p2align	4, 0x90
	.type	forkpty,@function
forkpty:                                # @forkpty
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end1:
	.size	forkpty, .Lfunc_end1-forkpty
                                        # -- End function
	.globl	ptsname                 # -- Begin function ptsname
	.p2align	4, 0x90
	.type	ptsname,@function
ptsname:                                # @ptsname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$25, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	ptsname, .Lfunc_end2-ptsname
                                        # -- End function
	.globl	ttyname_r               # -- Begin function ttyname_r
	.p2align	4, 0x90
	.type	ttyname_r,@function
ttyname_r:                              # @ttyname_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$25, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	popq	%rbp
	retq
.Lfunc_end3:
	.size	ttyname_r, .Lfunc_end3-ttyname_r
                                        # -- End function
	.globl	cfmakeraw               # -- Begin function cfmakeraw
	.p2align	4, 0x90
	.type	cfmakeraw,@function
cfmakeraw:                              # @cfmakeraw
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	cfmakeraw, .Lfunc_end4-cfmakeraw
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
