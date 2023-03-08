	.text
	.file	"towctrans.c"
	.globl	_towctrans_r            # -- Begin function _towctrans_r
	.p2align	4, 0x90
	.type	_towctrans_r,@function
_towctrans_r:                           # @_towctrans_r
# %bb.0:
	cmpl	$2, %edx
	je	.LBB0_3
# %bb.1:
	cmpl	$1, %edx
	jne	.LBB0_4
# %bb.2:
	movl	%esi, %edi
	jmp	towlower                # TAILCALL
.LBB0_3:
	movl	%esi, %edi
	jmp	towupper                # TAILCALL
.LBB0_4:
	movl	$22, (%rdi)
	movl	%esi, %eax
	retq
.Lfunc_end0:
	.size	_towctrans_r, .Lfunc_end0-_towctrans_r
                                        # -- End function
	.globl	towctrans               # -- Begin function towctrans
	.p2align	4, 0x90
	.type	towctrans,@function
towctrans:                              # @towctrans
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	%esi, %ebx
	movl	%edi, %r14d
	callq	__getreent
	cmpl	$2, %ebx
	je	.LBB1_3
# %bb.1:
	cmpl	$1, %ebx
	jne	.LBB1_4
# %bb.2:
	movl	%r14d, %edi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	towlower                # TAILCALL
.LBB1_3:
	movl	%r14d, %edi
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	towupper                # TAILCALL
.LBB1_4:
	movl	$22, (%rax)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	towctrans, .Lfunc_end1-towctrans
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
