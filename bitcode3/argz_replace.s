	.text
	.file	"argz_replace.c"
	.globl	argz_replace            # -- Begin function argz_replace
	.p2align	4, 0x90
	.type	argz_replace,@function
argz_replace:                           # @argz_replace
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%r8, %r12
	movq	%rcx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r15
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rdx
	movq	(%r15), %rax
	movq	%rax, -48(%rbp)
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	(%r13), %rcx
	movq	%rcx, -56(%rbp)
	movl	$0, (%r12)
	xorl	%eax, %eax
	testq	%rcx, %rcx
	je	.LBB0_19
# %bb.1:
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movq	%rdx, %rax
	movq	%rdx, -104(%rbp)        # 8-byte Spill
	subl	%r14d, %eax
	movslq	%eax, %r15
	leaq	-48(%rbp), %rbx
	leaq	-56(%rbp), %r13
	movq	%r14, %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rax
	cmpq	$0, -56(%rbp)
	je	.LBB0_5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r13, %rdx
	callq	_buf_findstr
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$1, (%r12)
	addq	%r15, -72(%rbp)         # 8-byte Folded Spill
	jmp	.LBB0_4
.LBB0_5:
	cmpl	$0, (%r12)
	movl	$0, %eax
	je	.LBB0_19
# %bb.6:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	malloc
	movq	%rax, %r12
	movl	$12, %eax
	testq	%r12, %r12
	je	.LBB0_19
# %bb.7:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	%rax, -48(%rbp)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	testq	%rcx, %rcx
	movq	%r12, -80(%rbp)         # 8-byte Spill
	je	.LBB0_8
# %bb.9:
	movslq	%r14d, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movslq	-104(%rbp), %r14        # 4-byte Folded Reload
	movq	%rax, %r13
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	cmpq	$0, -56(%rbp)
	je	.LBB0_13
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	_buf_findstr
	testl	%eax, %eax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r13), %r15
	subq	%r15, %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	-48(%rbp), %rbx
	subq	%r15, %rbx
	addq	%r12, %rbx
	movq	%rbx, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%r14, %r15
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movq	-48(%rbp), %r13
	movq	%rbx, %r12
	jmp	.LBB0_12
.LBB0_13:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	jmp	.LBB0_14
.LBB0_8:
	xorl	%edx, %edx
	movq	%rax, %r13
.LBB0_14:
	addq	%rax, %rdx
	subq	%r13, %rdx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	(%rbx), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	realloc
	testq	%rax, %rax
	je	.LBB0_15
# %bb.16:
	movq	%rax, (%rbx)
	movq	%rax, %rdi
	movq	-80(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%r14, (%rax)
	testq	%r14, %r14
	jne	.LBB0_18
# %bb.17:
	movq	(%rbx), %rdi
	callq	free
	movq	$0, (%rbx)
.LBB0_18:
	movq	%r15, %rdi
	callq	free
	xorl	%eax, %eax
	jmp	.LBB0_19
.LBB0_15:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	free
	movl	$12, %eax
.LBB0_19:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	argz_replace, .Lfunc_end0-argz_replace
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
