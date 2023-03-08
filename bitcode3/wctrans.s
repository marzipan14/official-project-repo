	.text
	.file	"wctrans.c"
	.globl	_wctrans_r              # -- Begin function _wctrans_r
	.p2align	4, 0x90
	.type	_wctrans_r,@function
_wctrans_r:                             # @_wctrans_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB0_3
# %bb.4:
	movl	$22, (%r14)
	xorl	%eax, %eax
	jmp	.LBB0_5
.LBB0_1:
	movl	$1, %eax
	jmp	.LBB0_5
.LBB0_3:
	movl	$2, %eax
.LBB0_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wctrans_r, .Lfunc_end0-_wctrans_r
                                        # -- End function
	.globl	wctrans                 # -- Begin function wctrans
	.p2align	4, 0x90
	.type	wctrans,@function
wctrans:                                # @wctrans
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %r14
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_1
# %bb.2:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	callq	strcmp
	testl	%eax, %eax
	je	.LBB1_3
# %bb.4:
	movl	$22, (%r14)
	xorl	%eax, %eax
	jmp	.LBB1_5
.LBB1_1:
	movl	$1, %eax
	jmp	.LBB1_5
.LBB1_3:
	movl	$2, %eax
.LBB1_5:
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end1:
	.size	wctrans, .Lfunc_end1-wctrans
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"tolower"
	.size	.L.str, 8

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"toupper"
	.size	.L.str.1, 8

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
