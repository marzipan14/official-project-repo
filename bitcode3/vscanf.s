	.text
	.file	"vscanf.c"
	.globl	vscanf                  # -- Begin function vscanf
	.p2align	4, 0x90
	.type	vscanf,@function
vscanf:                                 # @vscanf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	callq	__getreent
	movq	8(%rax), %rsi
	movq	%rax, %rdi
	movq	%rbx, %rdx
	movq	%r14, %rcx
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	__svfscanf_r            # TAILCALL
.Lfunc_end0:
	.size	vscanf, .Lfunc_end0-vscanf
                                        # -- End function
	.globl	_vscanf_r               # -- Begin function _vscanf_r
	.p2align	4, 0x90
	.type	_vscanf_r,@function
_vscanf_r:                              # @_vscanf_r
# %bb.0:
	movq	%rdx, %rcx
	movq	%rsi, %rdx
	movq	8(%rdi), %rsi
	jmp	__svfscanf_r            # TAILCALL
.Lfunc_end1:
	.size	_vscanf_r, .Lfunc_end1-_vscanf_r
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
