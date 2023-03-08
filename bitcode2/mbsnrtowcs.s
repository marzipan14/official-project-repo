	.text
	.file	"mbsnrtowcs.c"
	.globl	_mbsnrtowcs_r           # -- Begin function _mbsnrtowcs_r
	.p2align	4, 0x90
	.type	_mbsnrtowcs_r,@function
_mbsnrtowcs_r:                          # @_mbsnrtowcs_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	testq	%rsi, %rsi
	je	.LBB0_1
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jne	.LBB0_2
# %bb.7:
	xorl	%ebx, %ebx
	jmp	.LBB0_13
.LBB0_1:
	movq	(%r15), %rax
	leaq	-72(%rbp), %r15
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %r8
.LBB0_2:
	movq	(%r15), %rdx
	xorl	%ebx, %ebx
	movq	-64(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movq	%r8, %r12
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%r13, %rcx
	movq	-56(%rbp), %r8          # 8-byte Reload
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB0_8
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	movslq	%eax, %rdx
	subq	%rdx, %r13
	addq	(%r15), %rdx
	addq	$1, %rbx
	addq	$4, %r14
	movq	-64(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	cmoveq	%rcx, %r14
	movq	%rdx, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r8
	cmpq	%rbx, %r12
	jne	.LBB0_3
# %bb.5:
	movq	%r8, %rbx
	jmp	.LBB0_13
.LBB0_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %eax
	jne	.LBB0_10
# %bb.9:
	addq	%r13, (%r15)
	jmp	.LBB0_13
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_11
# %bb.12:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	$-1, %rbx
	jmp	.LBB0_13
.LBB0_11:
	movq	$0, (%r15)
.LBB0_13:
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
.Lfunc_end0:
	.size	_mbsnrtowcs_r, .Lfunc_end0-_mbsnrtowcs_r
                                        # -- End function
	.globl	mbsnrtowcs              # -- Begin function mbsnrtowcs
	.p2align	4, 0x90
	.type	mbsnrtowcs,@function
mbsnrtowcs:                             # @mbsnrtowcs
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r8, -64(%rbp)          # 8-byte Spill
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rsi, %r12
	movq	%rdi, %r15
	callq	__getreent
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_3
# %bb.4:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	(%r12), %rdx
	jmp	.LBB1_5
.LBB1_1:
	movq	(%r12), %rdx
	leaq	-72(%rbp), %r12
	movq	%rdx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, -48(%rbp)          # 8-byte Folded Spill
.LBB1_5:
	xorl	%r14d, %r14d
	movq	%r15, %r13
	.p2align	4, 0x90
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%rbx, %rcx
	movq	-64(%rbp), %r8          # 8-byte Reload
	callq	_mbrtowc_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jle	.LBB1_9
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movslq	%eax, %rdx
	subq	%rdx, %rbx
	addq	(%r12), %rdx
	addq	$1, %r14
	addq	$4, %r13
	testq	%r15, %r15
	cmoveq	%r15, %r13
	movq	%rdx, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, -48(%rbp)         # 8-byte Folded Reload
	jne	.LBB1_6
# %bb.8:
	movq	-48(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_14
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-2, %eax
	jne	.LBB1_11
# %bb.10:
	addq	%rbx, (%r12)
	jmp	.LBB1_14
.LBB1_3:
	xorl	%r14d, %r14d
	jmp	.LBB1_14
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB1_12
# %bb.13:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	$0, (%rax)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	$138, (%rax)
	movq	$-1, %r14
	jmp	.LBB1_14
.LBB1_12:
	movq	$0, (%r12)
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end1:
	.size	mbsnrtowcs, .Lfunc_end1-mbsnrtowcs
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
