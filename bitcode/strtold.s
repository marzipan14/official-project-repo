	.text
	.file	"strtold.c"
	.globl	__flt_rounds            # -- Begin function __flt_rounds
	.p2align	4, 0x90
	.type	__flt_rounds,@function
__flt_rounds:                           # @__flt_rounds
# %bb.0:
	subq	$4, %rsp
	#APP
	fnstcw	(%rsp)
	#NO_APP
	movl	(%rsp), %eax
	shrq	$8, %rax
	andl	$12, %eax
	movl	map(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rsp
	retq
.Lfunc_end0:
	.size	__flt_rounds, .Lfunc_end0-__flt_rounds
                                        # -- End function
	.globl	_strtold_r              # -- Begin function _strtold_r
	.p2align	4, 0x90
	.type	_strtold_r,@function
_strtold_r:                             # @_strtold_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_strtod_l
	movsd	%xmm0, -32(%rbp)
	fldl	-32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	_strtold_r, .Lfunc_end1-_strtold_r
                                        # -- End function
	.globl	strtold_l               # -- Begin function strtold_l
	.p2align	4, 0x90
	.type	strtold_l,@function
strtold_l:                              # @strtold_l
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	callq	__getreent
	movq	%rax, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	_strtod_l
	movsd	%xmm0, -32(%rbp)
	fldl	-32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	strtold_l, .Lfunc_end2-strtold_l
                                        # -- End function
	.globl	strtold                 # -- Begin function strtold
	.p2align	4, 0x90
	.type	strtold,@function
strtold:                                # @strtold
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, %rbx
	callq	__getreent
	movq	72(%rax), %rcx
	testq	%rcx, %rcx
	jne	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ecx
.LBB3_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	_strtod_l
	movsd	%xmm0, -32(%rbp)
	fldl	-32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	strtold, .Lfunc_end3-strtold
                                        # -- End function
	.type	map,@object             # @map
	.section	.rodata.str4.16,"aMS",@progbits,4
	.p2align	4
map:
	.long	1                       # 0x1
	.long	3                       # 0x3
	.long	2                       # 0x2
	.long	0                       # 0x0
	.size	map, 16

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
