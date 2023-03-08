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
	movq	%r8, %r15
	movq	%rcx, %rbx
	movq	%rsi, %r13
	movq	%rdi, %r12
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	movq	%rdx, %rdi
	callq	strlen
	movq	%rax, %r14
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %rdi
	callq	strlen
	movq	(%r12), %rcx
	movq	%rcx, -48(%rbp)
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	(%r13), %rcx
	movq	%rcx, -56(%rbp)
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	testq	%rcx, %rcx
	je	.LBB0_19
# %bb.1:
	movq	%r12, -88(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	movq	%rax, -104(%rbp)        # 8-byte Spill
                                        # kill: def $eax killed $eax killed $rax
	subl	%r14d, %eax
	movslq	%eax, %r13
	leaq	-48(%rbp), %rbx
	leaq	-56(%rbp), %r12
	movq	%r14, %rax
	jmp	.LBB0_2
	.p2align	4, 0x90
.LBB0_4:                                #   in Loop: Header=BB0_2 Depth=1
	movq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_5
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	movq	%rax, %r14
	movq	-96(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	_buf_findstr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_4
# %bb.3:                                #   in Loop: Header=BB0_2 Depth=1
	addl	$1, (%r15)
	addq	%r13, -72(%rbp)         # 8-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_4
.LBB0_5:
	cmpl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_20
# %bb.6:
	movq	-72(%rbp), %rdi         # 8-byte Reload
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$12, %ecx
	testq	%rax, %rax
	je	.LBB0_21
# %bb.7:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rsi
	movq	%rsi, -48(%rbp)
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rcx
	movq	%rcx, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	movq	%rax, -80(%rbp)         # 8-byte Spill
	je	.LBB0_8
# %bb.9:
	movslq	%r14d, %rcx
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movslq	-104(%rbp), %r14        # 4-byte Folded Reload
	movq	%rax, %r15
	movq	%rsi, %r12
	jmp	.LBB0_10
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_13
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movq	-96(%rbp), %rdi         # 8-byte Reload
	leaq	-48(%rbp), %rsi
	leaq	-56(%rbp), %rdx
	callq	_buf_findstr
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_10 Depth=1
	movq	-48(%rbp), %rdx
	movq	-112(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r12), %r13
	subq	%r13, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	-48(%rbp), %rbx
	subq	%r13, %rbx
	addq	%r15, %rbx
	movq	%rbx, %rdi
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movq	%r14, %r15
	movq	%r14, %rdx
	callq	memcpy
	addq	%r14, %rbx
	movq	-48(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	jmp	.LBB0_12
.LBB0_13:
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	(%rbx), %rsi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rdx
	jmp	.LBB0_14
.LBB0_8:
	xorl	%edx, %edx
	movq	%rsi, %r12
	movq	%rax, %r15
.LBB0_14:
	addq	%rsi, %rdx
	subq	%r12, %rdx
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	(%rbx), %rdi
	movq	-72(%rbp), %r14         # 8-byte Reload
	movq	%r14, %rsi
	callq	realloc
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_18
# %bb.17:
	movq	(%rbx), %rdi
	callq	free
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_18:
	movq	%r15, %rdi
	callq	free
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_20:
	xorl	%ecx, %ecx
.LBB0_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_15:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	free
	movl	$12, %ecx
	jmp	.LBB0_21
.Lfunc_end0:
	.size	argz_replace, .Lfunc_end0-argz_replace
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
