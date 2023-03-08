	.text
	.file	"wcstombs_r.c"
	.globl	_wcstombs_r             # -- Begin function _wcstombs_r
	.p2align	4, 0x90
	.type	_wcstombs_r,@function
_wcstombs_r:                            # @_wcstombs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, %r13
	movq	%rdx, %r12
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_17
# %bb.1:
	movq	%rcx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB0_29
# %bb.2:
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%r14, %r13
	.p2align	4, 0x90
.LBB0_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_10 Depth 2
                                        #     Child Loop BB0_13 Depth 2
	callq	__getreent
	movq	72(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_5
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ebx
.LBB0_5:                                #   in Loop: Header=BB0_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r12), %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	leaq	-48(%rbp), %rsi
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	*224(%rbx)
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_24
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	%eax, %r9
	cmpq	%r9, %r13
	cmovbel	%r13d, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_15
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	leal	-1(%rax), %r8d
	movl	%eax, %esi
	leaq	-1(%rsi), %rdi
	movl	%esi, %edx
	andl	$3, %edx
	cmpq	$3, %rdi
	jae	.LBB0_9
# %bb.8:                                #   in Loop: Header=BB0_3 Depth=1
	xorl	%edi, %edi
	movq	%r15, %rsi
	testq	%rdx, %rdx
	jne	.LBB0_12
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	subq	%rdx, %rsi
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB0_10:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	-48(%rbp,%rdi), %ebx
	movb	%bl, (%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-47(%rbp,%rdi), %ebx
	movb	%bl, 1(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-46(%rbp,%rdi), %ebx
	movb	%bl, 2(%r15,%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	-45(%rbp,%rdi), %ebx
	movb	%bl, 3(%r15,%rdi)
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, %rsi
	jne	.LBB0_10
# %bb.11:                               # %.loopexit3
                                        #   in Loop: Header=BB0_3 Depth=1
	leaq	(%r15,%rdi), %rsi
	testq	%rdx, %rdx
	je	.LBB0_14
.LBB0_12:                               # %.preheader1
                                        #   in Loop: Header=BB0_3 Depth=1
	addq	%rbp, %rdi
	addq	$-48, %rdi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_13:                               #   Parent Loop BB0_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	(%rdi,%rbx), %ecx
	movb	%cl, (%rsi,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbx, %rdx
	jne	.LBB0_13
.LBB0_14:                               #   in Loop: Header=BB0_3 Depth=1
	addq	%r8, %r15
	addq	$1, %r15
.LBB0_15:                               #   in Loop: Header=BB0_3 Depth=1
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_25
# %bb.16:                               #   in Loop: Header=BB0_3 Depth=1
	addq	$4, %r12
	cltq
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	%rax, %r13
	jne	.LBB0_3
	jmp	.LBB0_29
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_26
# %bb.18:                               # %.preheader
	addq	$4, %r12
	xorl	%r14d, %r14d
	leaq	-48(%rbp), %r15
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	callq	__getreent
	movq	72(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$__global_locale, %ebx
.LBB0_21:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	-4(%r12), %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	movq	%r13, %rcx
	callq	*224(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB0_27
# %bb.22:                               #   in Loop: Header=BB0_19 Depth=1
	cltq
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, (%r12)
	leaq	4(%r12), %r12
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_19
	jmp	.LBB0_28
.LBB0_24:
	movq	$-1, %r14
	jmp	.LBB0_29
.LBB0_25:
	xorl	%eax, %eax
	cmpq	%r9, %r13
	setae	%al
	addq	-64(%rbp), %rax         # 8-byte Folded Reload
	subq	%rax, %r15
	movq	%r15, %r14
	jmp	.LBB0_29
.LBB0_26:
	xorl	%r14d, %r14d
	jmp	.LBB0_28
.LBB0_27:
	movq	$-1, %r14
.LBB0_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_wcstombs_r, .Lfunc_end0-_wcstombs_r
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
