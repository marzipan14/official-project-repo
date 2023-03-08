	.text
	.file	"wf_sincos.c"
	.globl	sincosf                 # -- Begin function sincosf
	.p2align	4, 0x90
	.type	sincosf,@function
sincosf:                                # @sincosf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	subq	$16, %rsp
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movss	%xmm0, -20(%rbp)        # 4-byte Spill
	callq	sinf
	movss	%xmm0, (%rbx)
	movss	-20(%rbp), %xmm0        # 4-byte Reload
                                        # xmm0 = mem[0],zero,zero,zero
	callq	cosf
	movss	%xmm0, (%r14)
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	sincosf, .Lfunc_end0-sincosf
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
