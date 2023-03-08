	.text
	.file	"hash_buf.c"
	.globl	__get_buf               # -- Begin function __get_buf
	.p2align	4, 0x90
	.type	__get_buf,@function
__get_buf:                              # @__get_buf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r14
	movl	%esi, %r8d
	movq	%rdi, %rbx
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.1:
	movq	16(%r14), %r13
	testq	%r13, %r13
	je	.LBB0_3
# %bb.2:
	cmpl	%r8d, 24(%r13)
	je	.LBB0_4
.LBB0_3:
	xorl	%r13d, %r13d
.LBB0_4:
	xorl	%r12d, %r12d
	testl	%ecx, %ecx
	sete	%r12b
	addl	%r12d, %r12d
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%ecx, %ecx
	testq	%r13, %r13
	je	.LBB0_9
.LBB0_5:
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%r13), %rcx
	movq	%rax, (%rcx)
	leaq	600(%rbx), %rax
	movq	608(%rbx), %rcx
	movq	%rcx, 8(%r13)
	movq	%rax, (%r13)
	movq	%r13, 608(%rbx)
	movq	8(%r13), %rax
	movq	%r13, (%rax)
	jmp	.LBB0_30
.LBB0_6:
	movslq	24(%rbx), %rsi
	addq	$-1, %rsi
	movslq	%r8d, %rax
	andq	%rax, %rsi
	movq	648(%rbx), %rdx
	movb	28(%rbx), %cl
	movl	%eax, %eax
	shrq	%cl, %rax
	movq	(%rdx,%rax,8), %rcx
	movq	(%rcx,%rsi,8), %rax
	movq	%rax, %r13
	andq	$-4, %r13
	movl	$1, %r12d
	andl	$2, %eax
	jne	.LBB0_8
# %bb.7:
	xorl	%r12d, %r12d
	cmpl	$0, 324(%rbx)
	sete	%r12b
.LBB0_8:
	movl	%eax, %edx
	testq	%r13, %r13
	jne	.LBB0_5
.LBB0_9:
	movq	%rsi, -80(%rbp)         # 8-byte Spill
	leaq	600(%rbx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	cmpl	$0, 596(%rbx)
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	jne	.LBB0_15
# %bb.10:
	movq	600(%rbx), %r15
	movsbl	40(%r15), %eax
	testb	$8, %al
	jne	.LBB0_15
# %bb.11:
	movq	(%r15), %rcx
	movq	8(%r15), %rdx
	movq	%rdx, 8(%rcx)
	movq	8(%r15), %rdx
	movq	%rcx, (%rdx)
	movl	24(%r15), %edx
	testb	$4, %al
	jne	.LBB0_13
# %bb.12:
	testl	%edx, %edx
	je	.LBB0_22
.LBB0_13:
	movq	32(%r15), %rsi
	movzwl	(%rsi), %ecx
	testq	%rcx, %rcx
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	je	.LBB0_31
# %bb.14:
	movzwl	-2(%rsi,%rcx,2), %edi
	testb	$1, %al
	jne	.LBB0_32
	jmp	.LBB0_34
.LBB0_15:
	movl	%r8d, %r13d
	movl	$48, %edi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_20
# %bb.16:
	movq	%rax, %r15
	movslq	12(%rbx), %rdi
	callq	malloc
	movq	%rax, 32(%r15)
	testq	%rax, %rax
	je	.LBB0_19
# %bb.17:
	movl	596(%rbx), %eax
	testl	%eax, %eax
	je	.LBB0_21
# %bb.18:
	addl	$-1, %eax
	movl	%eax, 596(%rbx)
.LBB0_21:
	movl	%r13d, %r8d
.LBB0_22:
	movl	%r8d, 24(%r15)
	movq	$0, 16(%r15)
	testq	%r14, %r14
	je	.LBB0_24
# %bb.23:
	movq	%r15, 16(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_25
.LBB0_19:
	movq	%r15, %rdi
	callq	free
.LBB0_20:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_29
.LBB0_24:
	movb	$4, %al
.LBB0_25:
	movb	%al, 40(%r15)
	movq	608(%rbx), %rax
	movq	%rax, 8(%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%r15)
	movq	%r15, 608(%rbx)
	movq	8(%r15), %rax
	movq	%r15, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB0_29
# %bb.26:
	xorl	%ecx, %ecx
	testq	%r14, %r14
	sete	%cl
	movq	32(%r15), %rsi
	xorl	%r13d, %r13d
	movq	%rbx, %rdi
	movl	%r8d, %edx
	movl	%r12d, %r8d
	xorl	%r9d, %r9d
	callq	__get_page
	testl	%eax, %eax
	cmoveq	%r15, %r13
	testq	%r14, %r14
	jne	.LBB0_30
# %bb.27:
	testl	%eax, %eax
	jne	.LBB0_30
# %bb.28:
	movq	-64(%rbp), %rdx         # 8-byte Reload
	orq	%r15, %rdx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rdx, (%rcx,%rax,8)
	movq	%r15, %r13
	jmp	.LBB0_30
.LBB0_29:
	xorl	%r13d, %r13d
.LBB0_30:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_31:
	xorl	%edi, %edi
	testb	$1, %al
	je	.LBB0_34
.LBB0_32:
	andl	$4, %eax
	movl	%edi, %r13d
	movq	%rbx, %rdi
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	callq	__put_page
	testl	%eax, %eax
	jne	.LBB0_20
# %bb.33:
	movl	%r13d, %edi
	movsbl	40(%r15), %eax
.LBB0_34:
	movl	-44(%rbp), %r8d         # 4-byte Reload
	testb	$4, %al
	je	.LBB0_41
# %bb.35:
	movslq	24(%r15), %rcx
	movl	%ecx, %esi
	movslq	24(%rbx), %rdx
	addq	$-1, %rdx
	andq	%rcx, %rdx
	movb	28(%rbx), %cl
	shrq	%cl, %rsi
	movq	648(%rbx), %rcx
	movq	(%rcx,%rsi,8), %rcx
	cmpl	$0, 324(%rbx)
	je	.LBB0_39
# %bb.36:
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,8), %rcx
	testb	$1, %al
	jne	.LBB0_38
# %bb.37:
	testb	$2, (%rcx)
	je	.LBB0_40
.LBB0_38:
	movq	$2, (%rcx)
	jmp	.LBB0_41
.LBB0_39:
	leaq	(%rcx,%rdx,8), %rcx
.LBB0_40:
	movq	$0, (%rcx)
.LBB0_41:
	movq	16(%r15), %r13
	testq	%r13, %r13
	je	.LBB0_22
# %bb.42:                               # %.preheader
	leaq	16(%r15), %rax
	jmp	.LBB0_44
.LBB0_43:                               #   in Loop: Header=BB0_44 Depth=1
	movl	$0, 24(%r13)
	movb	$0, 40(%r13)
	movq	(%r13), %rax
	movq	8(%r13), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%r13), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 8(%r13)
	movq	%rax, (%r13)
	movq	(%rdx), %rax
	movq	%r13, 8(%rax)
	movq	8(%r13), %rax
	movq	%r13, (%rax)
	movq	%r13, %rax
	movq	16(%r13), %rcx
	addq	$16, %rax
	movq	%rcx, %r13
	testq	%rcx, %rcx
	movl	-44(%rbp), %r8d         # 4-byte Reload
	je	.LBB0_22
.LBB0_44:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movzbl	40(%r13), %eax
	testb	$4, %al
	jne	.LBB0_22
# %bb.45:                               #   in Loop: Header=BB0_44 Depth=1
	movzwl	%di, %edx
	cmpl	%edx, 24(%r13)
	jne	.LBB0_22
# %bb.46:                               #   in Loop: Header=BB0_44 Depth=1
	movq	32(%r13), %rsi
	movzwl	(%rsi), %ecx
	testq	%rcx, %rcx
	je	.LBB0_48
# %bb.47:                               #   in Loop: Header=BB0_44 Depth=1
	movzwl	-2(%rsi,%rcx,2), %edi
.LBB0_48:                               #   in Loop: Header=BB0_44 Depth=1
	testb	$1, %al
	je	.LBB0_43
# %bb.49:                               #   in Loop: Header=BB0_44 Depth=1
	movl	%edi, -48(%rbp)         # 4-byte Spill
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	__put_page
	movl	-48(%rbp), %edi         # 4-byte Reload
	testl	%eax, %eax
	je	.LBB0_43
	jmp	.LBB0_20
.Lfunc_end0:
	.size	__get_buf, .Lfunc_end0-__get_buf
                                        # -- End function
	.globl	__buf_init              # -- Begin function __buf_init
	.p2align	4, 0x90
	.type	__buf_init,@function
__buf_init:                             # @__buf_init
# %bb.0:
                                        # kill: def $esi killed $esi def $rsi
	leaq	600(%rdi), %rax
	movl	12(%rdi), %ecx
	leal	(%rsi,%rcx), %edx
	addl	$-1, %edx
	movb	16(%rdi), %cl
	sarl	%cl, %edx
	cmpl	$5, %edx
	movl	$6, %ecx
	cmovgl	%edx, %ecx
	movl	%ecx, 596(%rdi)
	movq	%rax, 608(%rdi)
	movq	%rax, 600(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	__buf_init, .Lfunc_end1-__buf_init
                                        # -- End function
	.globl	__buf_free              # -- Begin function __buf_free
	.p2align	4, 0x90
	.type	__buf_free,@function
__buf_free:                             # @__buf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	600(%rdi), %rbx
	xorl	%eax, %eax
	testq	%rbx, %rbx
	je	.LBB2_17
# %bb.1:
	movq	%rdi, %r15
	leaq	600(%rdi), %r13
	cmpq	%r13, %rbx
	je	.LBB2_17
# %bb.2:
	movl	%edx, %r12d
	movl	%esi, %r14d
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	%rbx, %rdi
	callq	free
	movq	%r13, %rbx
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=1
	movq	(%rbx), %rbx
	cmpq	%r13, %rbx
	je	.LBB2_11
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %edx
	testl	%edx, %edx
	je	.LBB2_4
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	testl	%r12d, %r12d
	je	.LBB2_6
# %bb.13:                               #   in Loop: Header=BB2_3 Depth=1
	movzbl	40(%rbx), %eax
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_4:                                #   in Loop: Header=BB2_3 Depth=1
	testl	%r12d, %r12d
	je	.LBB2_6
# %bb.5:                                #   in Loop: Header=BB2_3 Depth=1
	movzbl	40(%rbx), %eax
	movl	%eax, %ecx
	andb	$4, %cl
	je	.LBB2_6
.LBB2_14:                               #   in Loop: Header=BB2_3 Depth=1
	testb	$1, %al
	je	.LBB2_6
# %bb.15:                               #   in Loop: Header=BB2_3 Depth=1
	movsbl	%al, %ecx
	movq	32(%rbx), %rsi
	andl	$4, %ecx
	movq	%r15, %rdi
	xorl	%r8d, %r8d
	callq	__put_page
	testl	%eax, %eax
	jne	.LBB2_16
.LBB2_6:                                #   in Loop: Header=BB2_3 Depth=1
	testl	%r14d, %r14d
	je	.LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movq	32(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_9
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	callq	free
	jmp	.LBB2_9
.LBB2_11:
	xorl	%eax, %eax
	jmp	.LBB2_17
.LBB2_16:
	movl	$-1, %eax
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__buf_free, .Lfunc_end2-__buf_free
                                        # -- End function
	.globl	__reclaim_buf           # -- Begin function __reclaim_buf
	.p2align	4, 0x90
	.type	__reclaim_buf,@function
__reclaim_buf:                          # @__reclaim_buf
# %bb.0:
	movq	$0, 16(%rsi)
	movl	$0, 24(%rsi)
	movb	$0, 40(%rsi)
	movq	(%rsi), %rax
	movq	8(%rsi), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rsi), %rcx
	movq	%rax, (%rcx)
	movq	600(%rdi), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 8(%rsi)
	movq	%rax, (%rsi)
	movq	600(%rdi), %rax
	movq	%rsi, 8(%rax)
	movq	8(%rsi), %rax
	movq	%rsi, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	__reclaim_buf, .Lfunc_end3-__reclaim_buf
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
