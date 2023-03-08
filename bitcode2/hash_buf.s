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
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB0_6
# %bb.1:
	movq	16(%r14), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_3
# %bb.2:
	cmpl	%r8d, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_4
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB0_4:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB0_9
# %bb.5:
	xorl	%edx, %edx
	jmp	.LBB0_10
.LBB0_6:
	movslq	24(%r15), %r13
	addq	$-1, %r13
	movslq	%r8d, %rax
	movb	28(%r15), %cl
	movl	%eax, %edx
	shrq	%cl, %rdx
	andq	%rax, %r13
	movq	648(%r15), %rax
	movq	(%rax,%rdx,8), %rcx
	movq	(%rcx,%r13,8), %rax
	movq	%rax, %rbx
	andq	$-4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	andl	$2, %eax
	jne	.LBB0_8
# %bb.7:
	xorl	%edx, %edx
	cmpl	$0, 324(%r15)
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %eax
	jmp	.LBB0_11
.LBB0_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %edx
	xorl	%eax, %eax
.LBB0_10:
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_14
# %bb.12:
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	leaq	600(%r15), %rax
	movq	608(%r15), %rcx
	movq	%rcx, 8(%rbx)
	movq	%rax, (%rbx)
	movq	%rbx, 608(%r15)
	movq	8(%rbx), %rax
	movq	%rbx, (%rax)
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_57
.LBB0_14:
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	leaq	600(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	600(%r15), %rbx
	cmpl	$0, 596(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_20
# %bb.15:
	movsbl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %al
	jne	.LBB0_20
# %bb.16:
	movq	(%rbx), %rcx
	movq	8(%rbx), %rdx
	movq	%rdx, 8(%rcx)
	movq	8(%rbx), %rdx
	movq	%rcx, (%rdx)
	movl	24(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB0_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB0_49
.LBB0_18:
	movq	32(%rbx), %rsi
	movzwl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_26
# %bb.19:
	movzwl	-2(%rsi,%rcx,2), %r9d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_27
.LBB0_20:
	movl	%r8d, %r12d
	movl	$48, %edi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_29
# %bb.21:
	movq	%rax, %rbx
	movslq	12(%r15), %rdi
	callq	malloc
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_24
# %bb.22:
	movl	596(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_25
# %bb.23:
	addl	$-1, %eax
	movl	%eax, 596(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r8d
	jmp	.LBB0_49
.LBB0_24:
	movq	%rbx, %rdi
	callq	free
	jmp	.LBB0_29
.LBB0_25:
	movl	%r12d, %r8d
	jmp	.LBB0_49
.LBB0_26:
	xorl	%r9d, %r9d
.LBB0_27:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	je	.LBB0_31
# %bb.28:
	andl	$4, %eax
	movq	%r15, %rdi
	movl	%eax, %ecx
	xorl	%r8d, %r8d
	movl	%r9d, %r12d
	callq	__put_page
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_30
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	jmp	.LBB0_57
.LBB0_30:
	movl	%r12d, %r9d
	movsbl	40(%rbx), %eax
.LBB0_31:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB0_39
# %bb.32:
	movslq	24(%rbx), %rcx
	movl	%ecx, %esi
	movslq	24(%r15), %rdx
	addq	$-1, %rdx
	andq	%rcx, %rdx
	movq	648(%r15), %rdi
	movb	28(%r15), %cl
	shrq	%cl, %rsi
	movq	(%rdi,%rsi,8), %rcx
	cmpl	$0, 324(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_36
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %rdx
	leaq	(%rcx,%rdx,8), %rcx
	testb	$1, %al
	jne	.LBB0_35
# %bb.34:
	testb	$2, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_37
.LBB0_35:
	movq	$2, (%rcx)
	jmp	.LBB0_38
.LBB0_36:
	leaq	(%rcx,%rdx,8), %rcx
.LBB0_37:
	movq	$0, (%rcx)
.LBB0_38:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_39:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB0_48
# %bb.40:                               # %.preheader
	leaq	16(%rbx), %rax
	movq	%r13, -64(%rbp)         # 8-byte Spill
	jmp	.LBB0_42
	.p2align	4, 0x90
.LBB0_41:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$0, 24(%r12)
	movb	$0, 40(%r12)
	movq	(%r12), %rax
	movq	8(%r12), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%r12), %rcx
	movq	%rax, (%rcx)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rax
	movq	8(%rax), %rcx
	movq	%rcx, 8(%r12)
	movq	%rax, (%r12)
	movq	(%rdx), %rax
	movq	%r12, 8(%rax)
	movq	8(%r12), %rax
	movq	%r12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	movq	16(%r12), %rcx
	addq	$16, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r12
	testq	%rcx, %rcx
	je	.LBB0_48
.LBB0_42:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax)
	movzbl	40(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB0_48
# %bb.43:                               #   in Loop: Header=BB0_42 Depth=1
	movzwl	%r9w, %edx
	cmpl	%edx, 24(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_48
# %bb.44:                               #   in Loop: Header=BB0_42 Depth=1
	movq	32(%r12), %rsi
	movzwl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_46
# %bb.45:                               #   in Loop: Header=BB0_42 Depth=1
	movzwl	-2(%rsi,%rcx,2), %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB0_46:                               #   in Loop: Header=BB0_42 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB0_41
# %bb.47:                               #   in Loop: Header=BB0_42 Depth=1
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	movq	%r14, %r13
	movl	%r9d, %r14d
	callq	__put_page
	movl	%r14d, %r9d
	movq	%r13, %r14
	movq	-64(%rbp), %r13         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_41
	jmp	.LBB0_29
.LBB0_48:
	movl	-44(%rbp), %r8d         # 4-byte Reload
.LBB0_49:
	movl	%r8d, 24(%rbx)
	movq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB0_51
# %bb.50:
	movq	%rbx, 16(%r14)
	xorl	%eax, %eax
	jmp	.LBB0_52
.LBB0_51:
	movb	$4, %al
.LBB0_52:
	movl	$42, __A_VARIABLE(%rip)
	movb	%al, 40(%rbx)
	movq	608(%r15), %rax
	movq	%rax, 8(%rbx)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rbx)
	movq	%rbx, 608(%r15)
	movq	8(%rbx), %rax
	movq	%rbx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_55
# %bb.53:
	xorl	%ecx, %ecx
	testq	%r14, %r14
	sete	%cl
	movq	32(%rbx), %rsi
	movq	%r15, %rdi
	movl	%r8d, %edx
	movl	-48(%rbp), %r8d         # 4-byte Reload
	xorl	%r9d, %r9d
	callq	__get_page
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_56
.LBB0_55:
	xorl	%ebx, %ebx
.LBB0_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_56:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB0_57
# %bb.58:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	orq	%rbx, %rcx
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax,%r13,8)
	jmp	.LBB0_13
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB2_1
# %bb.2:
	movq	%rdi, %r15
	leaq	600(%rdi), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	je	.LBB2_12
# %bb.3:
	movl	%edx, %r12d
	movl	%esi, %r14d
	jmp	.LBB2_4
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_4 Depth=1
	movq	(%rbx), %rax
	movq	8(%rbx), %rcx
	movq	%rcx, 8(%rax)
	movq	8(%rbx), %rcx
	movq	%rax, (%rcx)
	movq	%rbx, %rdi
	callq	free
	movq	%r13, %rbx
.LBB2_11:                               #   in Loop: Header=BB2_4 Depth=1
	movq	(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %rbx
	je	.LBB2_12
.LBB2_4:                                # =>This Inner Loop Header: Depth=1
	movl	24(%rbx), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB2_5
# %bb.13:                               #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB2_7
# %bb.14:                               #   in Loop: Header=BB2_4 Depth=1
	movzbl	40(%rbx), %eax
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_4 Depth=1
	movzbl	40(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB2_7
# %bb.6:                                #   in Loop: Header=BB2_4 Depth=1
	movl	%eax, %ecx
	andb	$4, %cl
	je	.LBB2_7
.LBB2_15:                               #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB2_7
# %bb.16:                               #   in Loop: Header=BB2_4 Depth=1
	movsbl	%al, %ecx
	movq	32(%rbx), %rsi
	andl	$4, %ecx
	movq	%r15, %rdi
	xorl	%r8d, %r8d
	callq	__put_page
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_17
.LBB2_7:                                #   in Loop: Header=BB2_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_4 Depth=1
	movq	32(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_10
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=1
	callq	free
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_10
.LBB2_12:
	xorl	%eax, %eax
.LBB2_18:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_19
.LBB2_1:
	xorl	%eax, %eax
.LBB2_19:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_17:
	movl	$-1, %eax
	jmp	.LBB2_18
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
