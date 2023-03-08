	.text
	.file	"fgetws.c"
	.globl	_fgetws_r               # -- Begin function _fgetws_r
	.p2align	4, 0x90
	.type	_fgetws_r,@function
_fgetws_r:                              # @_fgetws_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, %rbx
	movl	%edx, %r15d
	movq	%rsi, %r14
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	leaq	-44(%rbp), %rsi
	movl	$1, %edi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB0_1
# %bb.3:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	cmpl	$0, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB0_4
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	164(%rbx), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	-56(%rbp), %r12         # 8-byte Reload
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	(%rbx), %rdi
	movq	%rdi, -72(%rbp)
	movslq	8(%rbx), %rdx
	movl	$10, %esi
	callq	memchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	subq	(%rbx), %rax
	addq	$1, %rax
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_8:                                #   in Loop: Header=BB0_6 Depth=1
	movslq	8(%rbx), %rax
.LBB0_9:                                #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	-1(%r15), %ecx
	movslq	%ecx, %r8
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	leaq	-72(%rbp), %rdx
	movq	%rax, %rcx
	movq	-80(%rbp), %r9          # 8-byte Reload
	callq	_mbsnrtowcs_r
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_2
# %bb.10:                               #   in Loop: Header=BB0_6 Depth=1
	movq	%rax, %r13
	movq	-72(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_12
# %bb.11:                               #   in Loop: Header=BB0_6 Depth=1
	addq	$1, %r13
	movq	(%rbx), %rdi
	movslq	8(%rbx), %rdx
	xorl	%esi, %esi
	callq	memchr
	addq	$1, %rax
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_12:                               #   in Loop: Header=BB0_6 Depth=1
	movl	(%rbx), %ecx
	subl	%eax, %ecx
	addl	8(%rbx), %ecx
	movl	%ecx, 8(%rbx)
	movq	%rax, (%rbx)
	subl	%r13d, %r15d
	leaq	(%r12,%r13,4), %r14
	movl	-4(%r12,%r13,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r15d
	jl	.LBB0_16
# %bb.13:                               #   in Loop: Header=BB0_6 Depth=1
	cmpl	$10, %eax
	je	.LBB0_16
# %bb.14:                               #   in Loop: Header=BB0_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	testl	%ecx, %ecx
	jg	.LBB0_6
# %bb.15:                               #   in Loop: Header=BB0_6 Depth=1
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %r12
	testl	%eax, %eax
	je	.LBB0_6
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-56(%rbp), %r14         # 8-byte Folded Reload
	je	.LBB0_2
# %bb.17:
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	mbsinit
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_2
# %bb.18:
	movl	$0, (%r14)
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	jmp	.LBB0_19
.LBB0_1:
	callq	__errno
	movl	$22, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_2
.LBB0_4:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__srefill_r
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_5
.LBB0_2:
	movl	-44(%rbp), %edi
	leaq	-44(%rbp), %rsi
	callq	pthread_setcancelstate
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB0_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	_fgetws_r, .Lfunc_end0-_fgetws_r
                                        # -- End function
	.globl	fgetws                  # -- Begin function fgetws
	.p2align	4, 0x90
	.type	fgetws,@function
fgetws:                                 # @fgetws
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movl	%esi, %r15d
	movq	%rdi, %r12
	callq	__getreent
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.1:
	cmpl	$0, 80(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_3
# %bb.2:
	movq	%rbx, %rdi
	callq	__sinit
	movl	$42, __A_VARIABLE(%rip)
.LBB1_3:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	%r15d, %edx
	movq	%r14, %rcx
	callq	_fgetws_r
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	fgetws, .Lfunc_end1-fgetws
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
