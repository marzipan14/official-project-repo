	.text
	.file	"srand48.c"
	.globl	_srand48_r              # -- Begin function _srand48_r
	.p2align	4, 0x90
	.type	_srand48_r,@function
_srand48_r:                             # @_srand48_r
# %bb.0:
	movw	$13070, 240(%rdi)       # imm = 0x330E
	movw	%si, 242(%rdi)
	shrq	$16, %rsi
	movw	%si, 244(%rdi)
	movabsq	$3096249958721133, %rax # imm = 0xB0005DEECE66D
	movq	%rax, 246(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	_srand48_r, .Lfunc_end0-_srand48_r
                                        # -- End function
	.globl	srand48                 # -- Begin function srand48
	.p2align	4, 0x90
	.type	srand48,@function
srand48:                                # @srand48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movw	$13070, 240(%rax)       # imm = 0x330E
	movw	%bx, 242(%rax)
	shrq	$16, %rbx
	movw	%bx, 244(%rax)
	movabsq	$3096249958721133, %rcx # imm = 0xB0005DEECE66D
	movq	%rcx, 246(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	srand48, .Lfunc_end1-srand48
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
