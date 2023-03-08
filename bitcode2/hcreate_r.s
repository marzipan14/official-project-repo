	.text
	.file	"hcreate_r.c"
	.globl	hcreate_r               # -- Begin function hcreate_r
	.p2align	4, 0x90
	.type	hcreate_r,@function
hcreate_r:                              # @hcreate_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	cmpq	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_4
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
.LBB0_2:
	xorl	%eax, %eax
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_4:
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$15, %rdi
	ja	.LBB0_6
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %eax
	jmp	.LBB0_7
.LBB0_6:
	movabsq	$288230376151711744, %rax # imm = 0x400000000000000
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	jbe	.LBB0_8
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
.LBB0_8:
	leaq	-1(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rax
	je	.LBB0_12
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	shrq	%rdi
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB0_10
# %bb.11:
	movl	$2, %eax
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %eax
	movslq	%eax, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:
	movq	%rdi, 8(%rbx)
	shlq	$3, %rdi
	callq	malloc
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_16
# %bb.13:
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testq	%rsi, %rsi
	je	.LBB0_3
# %bb.14:
	leaq	-1(%rsi), %rdi
	movl	%esi, %edx
	andl	$3, %edx
	cmpq	$3, %rdi
	jae	.LBB0_17
# %bb.15:
	xorl	%edi, %edi
	jmp	.LBB0_19
.LBB0_16:
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB0_2
.LBB0_17:
	subq	%rdx, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_18:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 8(%rcx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rcx,%rdi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 24(%rcx,%rdi,8)
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB0_18
.LBB0_19:
	testq	%rdx, %rdx
	je	.LBB0_3
# %bb.20:                               # %.preheader
	leaq	(%rcx,%rdi,8), %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rcx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rsi
	cmpq	%rsi, %rdx
	jne	.LBB0_21
	jmp	.LBB0_3
.Lfunc_end0:
	.size	hcreate_r, .Lfunc_end0-hcreate_r
                                        # -- End function
	.globl	hdestroy_r              # -- Begin function hdestroy_r
	.p2align	4, 0x90
	.type	hdestroy_r,@function
hdestroy_r:                             # @hdestroy_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_2
# %bb.1:
	callq	free
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	hdestroy_r, .Lfunc_end1-hdestroy_r
                                        # -- End function
	.globl	hsearch_r               # -- Begin function hsearch_r
	.p2align	4, 0x90
	.type	hsearch_r,@function
hsearch_r:                              # @hsearch_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%r8, %r13
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movl	%edx, %r12d
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	%rdi, %rbx
	callq	strlen
	movq	%rbx, %rdi
	movq	%rax, %rsi
	callq	*__default_hash(%rip)
	movq	(%r13), %r14
	movl	8(%r13), %r13d
	addl	$-1, %r13d
	andl	%eax, %r13d
	movq	(%r14,%r13,8), %r15
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB2_4
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	8(%r15), %rdi
	movq	%rbx, %rsi
	callq	strcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_10
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%r15), %r15
	jmp	.LBB2_1
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB2_5
# %bb.6:
	movl	$24, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_5
# %bb.7:
	movq	%rax, %rcx
	addq	$8, %rcx
	movq	%rbx, 8(%rax)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, 16(%rax)
	movq	(%r14,%r13,8), %rdx
	movq	%rdx, (%rax)
	movq	%rax, (%r14,%r13,8)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	jmp	.LBB2_8
.LBB2_5:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	$0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB2_9
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%r15, (%rax)
.LBB2_8:
	movl	$1, %eax
.LBB2_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	hsearch_r, .Lfunc_end2-hsearch_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
