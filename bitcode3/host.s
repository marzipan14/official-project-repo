	.text
	.file	"host.c"
	.globl	gethostbyname           # -- Begin function gethostbyname
	.p2align	4, 0x90
	.type	gethostbyname,@function
gethostbyname:                          # @gethostbyname
# %bb.0:
	jmp	lwip_gethostbyname      # TAILCALL
.Lfunc_end0:
	.size	gethostbyname, .Lfunc_end0-gethostbyname
                                        # -- End function
	.globl	gethostbyname_r         # -- Begin function gethostbyname_r
	.p2align	4, 0x90
	.type	gethostbyname_r,@function
gethostbyname_r:                        # @gethostbyname_r
# %bb.0:
	jmp	lwip_gethostbyname_r    # TAILCALL
.Lfunc_end1:
	.size	gethostbyname_r, .Lfunc_end1-gethostbyname_r
                                        # -- End function
	.globl	gethostbyaddr           # -- Begin function gethostbyaddr
	.p2align	4, 0x90
	.type	gethostbyaddr,@function
gethostbyaddr:                          # @gethostbyaddr
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end2:
	.size	gethostbyaddr, .Lfunc_end2-gethostbyaddr
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
