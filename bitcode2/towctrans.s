	.text
	.file	"towctrans.c"
	.globl	_towctrans_r            # -- Begin function _towctrans_r
	.p2align	4, 0x90
	.type	_towctrans_r,@function
_towctrans_r:                           # @_towctrans_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB0_2
# %bb.1:
	movl	%eax, %edi
	callq	towlower
	jmp	.LBB0_5
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %edx
	jne	.LBB0_4
# %bb.3:
	movl	%eax, %edi
	callq	towupper
	jmp	.LBB0_5
.LBB0_4:
	movl	$22, (%rdi)
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
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
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB1_2
# %bb.1:
	movl	%r14d, %edi
	callq	towlower
	movl	%eax, %r14d
	jmp	.LBB1_5
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebx
	jne	.LBB1_4
# %bb.3:
	movl	%r14d, %edi
	callq	towupper
	movl	%eax, %r14d
	jmp	.LBB1_5
.LBB1_4:
	movl	$22, (%rax)
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	towctrans, .Lfunc_end1-towctrans
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
