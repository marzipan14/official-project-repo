	.text
	.file	"serv.c"
	.globl	getservbyname           # -- Begin function getservbyname
	.p2align	4, 0x90
	.type	getservbyname,@function
getservbyname:                          # @getservbyname
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	getservbyname, .Lfunc_end0-getservbyname
                                        # -- End function
	.globl	getservbyport           # -- Begin function getservbyport
	.p2align	4, 0x90
	.type	getservbyport,@function
getservbyport:                          # @getservbyport
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	getservbyport, .Lfunc_end1-getservbyport
                                        # -- End function
	.globl	getservbyport_r         # -- Begin function getservbyport_r
	.p2align	4, 0x90
	.type	getservbyport_r,@function
getservbyport_r:                        # @getservbyport_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$88, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-11, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	getservbyport_r, .Lfunc_end2-getservbyport_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
