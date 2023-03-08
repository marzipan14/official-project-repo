	.text
	.file	"pthread_getspecific.c"
	.globl	pthread_getspecific     # -- Begin function pthread_getspecific
	.p2align	4, 0x90
	.type	pthread_getspecific,@function
pthread_getspecific:                    # @pthread_getspecific
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB0_1
# %bb.2:
	movl	(%rdi), %edi
	jmp	pte_osTlsGetValue       # TAILCALL
.LBB0_1:
	xorl	%eax, %eax
	retq
.Lfunc_end0:
	.size	pthread_getspecific, .Lfunc_end0-pthread_getspecific
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
