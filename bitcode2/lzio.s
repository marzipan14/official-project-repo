	.text
	.file	"lzio.c"
	.hidden	luaZ_fill               # -- Begin function luaZ_fill
	.globl	luaZ_fill
	.p2align	4, 0x90
	.type	luaZ_fill,@function
luaZ_fill:                              # @luaZ_fill
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	24(%rdi), %rsi
	movq	32(%rdi), %rdi
	leaq	-16(%rbp), %rdx
	callq	*16(%rbx)
	movq	-16(%rbp), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB0_3
# %bb.1:
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.2:
	addq	$-1, %rdx
	movq	%rdx, (%rbx)
	movq	%rax, %rcx
	addq	$1, %rcx
	movq	%rcx, 8(%rbx)
	movzbl	(%rax), %ecx
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaZ_fill, .Lfunc_end0-luaZ_fill
                                        # -- End function
	.hidden	luaZ_lookahead          # -- Begin function luaZ_lookahead
	.globl	luaZ_lookahead
	.p2align	4, 0x90
	.type	luaZ_lookahead,@function
luaZ_lookahead:                         # @luaZ_lookahead
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	cmpq	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_2
# %bb.1:
	movq	8(%rbx), %rax
	jmp	.LBB1_6
.LBB1_2:
	movq	24(%rbx), %rsi
	movq	32(%rbx), %rdi
	leaq	-16(%rbp), %rdx
	callq	*16(%rbx)
	movq	-16(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
# %bb.3:
	testq	%rcx, %rcx
	je	.LBB1_4
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rbx)
	movq	%rax, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_6:
	movzbl	(%rax), %eax
	jmp	.LBB1_7
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
.LBB1_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaZ_lookahead, .Lfunc_end1-luaZ_lookahead
                                        # -- End function
	.hidden	luaZ_init               # -- Begin function luaZ_init
	.globl	luaZ_init
	.p2align	4, 0x90
	.type	luaZ_init,@function
luaZ_init:                              # @luaZ_init
# %bb.0:
	movq	%rdi, 32(%rsi)
	movq	%rdx, 16(%rsi)
	movq	%rcx, 24(%rsi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	luaZ_init, .Lfunc_end2-luaZ_init
                                        # -- End function
	.hidden	luaZ_read               # -- Begin function luaZ_read
	.globl	luaZ_read
	.p2align	4, 0x90
	.type	luaZ_read,@function
luaZ_read:                              # @luaZ_read
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB3_9
# %bb.1:
	movq	%rdx, %r13
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rdi), %rbx
	leaq	-48(%rbp), %r12
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_3:                                #   in Loop: Header=BB3_2 Depth=1
	movq	8(%r15), %rax
.LBB3_8:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovbeq	%r13, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	movq	(%r15), %rax
	subq	%rbx, %rax
	movq	%rax, (%r15)
	addq	%rbx, 8(%r15)
	addq	%rbx, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rbx, %r13
	movq	%rax, %rbx
	je	.LBB3_9
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB3_3
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	movq	24(%r15), %rsi
	movq	32(%r15), %rdi
	movq	%r12, %rdx
	callq	*16(%r15)
	movq	-48(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	testq	%rbx, %rbx
	je	.LBB3_6
# %bb.7:                                #   in Loop: Header=BB3_2 Depth=1
	movq	%rbx, (%r15)
	movq	%rax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_8
.LBB3_9:
	xorl	%r13d, %r13d
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_10
.Lfunc_end3:
	.size	luaZ_read, .Lfunc_end3-luaZ_read
                                        # -- End function
	.hidden	luaZ_openspace          # -- Begin function luaZ_openspace
	.globl	luaZ_openspace
	.p2align	4, 0x90
	.type	luaZ_openspace,@function
luaZ_openspace:                         # @luaZ_openspace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdx, %rbx
	movq	%rsi, %r14
	movq	16(%rsi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdx
	jae	.LBB4_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$31, %rbx
	ja	.LBB4_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$32, %ebx
	jmp	.LBB4_5
.LBB4_1:
	movq	(%r14), %rax
	jmp	.LBB4_8
.LBB4_4:
	leaq	1(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-3, %rax
	ja	.LBB4_6
.LBB4_5:
	movq	(%r14), %rsi
	movq	%rbx, %rcx
	callq	luaM_realloc_
	jmp	.LBB4_7
.LBB4_6:
	callq	luaM_toobig
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r14)
	movq	%rbx, 16(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaZ_openspace, .Lfunc_end4-luaZ_openspace
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
