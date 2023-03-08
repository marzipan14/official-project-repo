	.text
	.file	"if_api.c"
	.globl	lwip_if_indextoname     # -- Begin function lwip_if_indextoname
	.p2align	4, 0x90
	.type	lwip_if_indextoname,@function
lwip_if_indextoname:                    # @lwip_if_indextoname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	__errno
	movl	$6, (%rax)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lwip_if_indextoname, .Lfunc_end0-lwip_if_indextoname
                                        # -- End function
	.globl	lwip_if_nametoindex     # -- Begin function lwip_if_nametoindex
	.p2align	4, 0x90
	.type	lwip_if_nametoindex,@function
lwip_if_nametoindex:                    # @lwip_if_nametoindex
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end1:
	.size	lwip_if_nametoindex, .Lfunc_end1-lwip_if_nametoindex
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
