	.text
	.file	"lmem.c"
	.hidden	luaM_growaux_           # -- Begin function luaM_growaux_
	.globl	luaM_growaux_
	.p2align	4, 0x90
	.type	luaM_growaux_,@function
luaM_growaux_:                          # @luaM_growaux_
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r13
	movq	%rdx, %r14
	movq	%rsi, %r12
	movl	(%rdx), %eax
	movl	%r8d, %ecx
	shrl	$31, %ecx
	addl	%r8d, %ecx
	sarl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jge	.LBB0_1
# %bb.3:
	addl	%eax, %eax
	cmpl	$3, %eax
	movl	$4, %ebx
	cmovgl	%eax, %ebx
	jmp	.LBB0_4
.LBB0_1:
	movl	%r8d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %eax
	jl	.LBB0_4
# %bb.2:
	movq	%rdi, %r15
	movq	%r9, %rsi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	%r15, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %eax
	movslq	%eax, %rcx
	movq	$-3, %rax
	xorl	%edx, %edx
	divq	%r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB0_5
# %bb.9:
	xorl	%r12d, %r12d
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB0_10
.LBB0_5:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movslq	(%r14), %r15
	imulq	%r13, %r15
	movslq	%ebx, %r14
	imulq	%r13, %r14
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movq	32(%rdi), %r13
	movq	24(%r13), %rdi
	movq	%r12, %rsi
	movq	%r15, %rdx
	movq	%r14, %rcx
	callq	*16(%r13)
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_8
# %bb.6:
	testq	%r12, %r12
	jne	.LBB0_8
# %bb.7:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$4, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	subq	%r15, %r14
	addq	%r14, 120(%r13)
	movq	-56(%rbp), %r14         # 8-byte Reload
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaM_growaux_, .Lfunc_end0-luaM_growaux_
                                        # -- End function
	.hidden	luaM_realloc_           # -- Begin function luaM_realloc_
	.globl	luaM_realloc_
	.p2align	4, 0x90
	.type	luaM_realloc_,@function
luaM_realloc_:                          # @luaM_realloc_
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %rbx
	movq	%rdx, %r14
	movq	%rdi, %r12
	movq	32(%rdi), %r13
	movq	24(%r13), %rdi
	callq	*16(%r13)
	movq	%rax, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB1_3
# %bb.1:
	testq	%r15, %r15
	jne	.LBB1_3
# %bb.2:
	movq	%r12, %rdi
	movl	$4, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	subq	%r14, %rbx
	addq	%rbx, 120(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaM_realloc_, .Lfunc_end1-luaM_realloc_
                                        # -- End function
	.hidden	luaM_toobig             # -- Begin function luaM_toobig
	.globl	luaM_toobig
	.p2align	4, 0x90
	.type	luaM_toobig,@function
luaM_toobig:                            # @luaM_toobig
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$.L.str, %esi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaM_toobig, .Lfunc_end2-luaM_toobig
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"memory allocation error: block too big"
	.size	.L.str, 39

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaG_runerror
	.hidden	luaD_throw
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
