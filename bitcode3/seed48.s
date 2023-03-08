	.text
	.file	"seed48.c"
	.globl	_seed48_r               # -- Begin function _seed48_r
	.p2align	4, 0x90
	.type	_seed48_r,@function
_seed48_r:                              # @_seed48_r
# %bb.0:
	movzwl	240(%rdi), %eax
	movw	%ax, _seed48_r.sseed(%rip)
	movzwl	242(%rdi), %eax
	movw	%ax, _seed48_r.sseed+2(%rip)
	movzwl	244(%rdi), %eax
	movw	%ax, _seed48_r.sseed+4(%rip)
	movzwl	(%rsi), %eax
	movw	%ax, 240(%rdi)
	movzwl	2(%rsi), %eax
	movw	%ax, 242(%rdi)
	movzwl	4(%rsi), %eax
	movw	%ax, 244(%rdi)
	movabsq	$3096249958721133, %rax # imm = 0xB0005DEECE66D
	movq	%rax, 246(%rdi)
	movl	$_seed48_r.sseed, %eax
	retq
.Lfunc_end0:
	.size	_seed48_r, .Lfunc_end0-_seed48_r
                                        # -- End function
	.globl	seed48                  # -- Begin function seed48
	.p2align	4, 0x90
	.type	seed48,@function
seed48:                                 # @seed48
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	__getreent
	movzwl	240(%rax), %ecx
	movw	%cx, _seed48_r.sseed(%rip)
	movzwl	242(%rax), %ecx
	movw	%cx, _seed48_r.sseed+2(%rip)
	movzwl	244(%rax), %ecx
	movw	%cx, _seed48_r.sseed+4(%rip)
	movzwl	(%rbx), %ecx
	movw	%cx, 240(%rax)
	movzwl	2(%rbx), %ecx
	movw	%cx, 242(%rax)
	movzwl	4(%rbx), %ecx
	movw	%cx, 244(%rax)
	movabsq	$3096249958721133, %rcx # imm = 0xB0005DEECE66D
	movq	%rcx, 246(%rax)
	movl	$_seed48_r.sseed, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	seed48, .Lfunc_end1-seed48
                                        # -- End function
	.type	_seed48_r.sseed,@object # @_seed48_r.sseed
	.local	_seed48_r.sseed
	.comm	_seed48_r.sseed,6,2
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
