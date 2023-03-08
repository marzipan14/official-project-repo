	.text
	.file	"setenv_r.c"
	.globl	_setenv_r               # -- Begin function _setenv_r
	.p2align	4, 0x90
	.type	_setenv_r,@function
_setenv_r:                              # @_setenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%ecx, %r13d
	movq	%rdx, %r15
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	%rsi, %rdi
	movl	$61, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
.LBB0_31:
	movl	$-1, %eax
	jmp	.LBB0_32
.LBB0_2:
	movq	%rbx, %rdi
	callq	__env_lock
	movq	%r15, %rdi
	callq	strlen
	movq	%rax, -64(%rbp)         # 8-byte Spill
	leaq	-44(%rbp), %rdx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	_findenv_r
	testq	%rax, %rax
	je	.LBB0_7
# %bb.3:
	testl	%r13d, %r13d
	je	.LBB0_27
# %bb.4:
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	strlen
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movslq	%edx, %rcx
	cmpq	%rcx, %rax
	jb	.LBB0_16
# %bb.5:                                # %.preheader1
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rax), %ecx
	movb	%cl, (%r12,%rax)
	addq	$1, %rax
	testb	%cl, %cl
	jne	.LBB0_6
	jmp	.LBB0_27
.LBB0_7:
	movq	environ(%rip), %rdi
	cmpq	$0, (%rdi)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB0_10
# %bb.8:                                # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	cmpq	$0, 8(%rdi,%rbx,8)
	leaq	1(%rbx), %rbx
	jne	.LBB0_9
	jmp	.LBB0_11
.LBB0_10:
	xorl	%ebx, %ebx
.LBB0_11:
	cmpb	$1, _setenv_r.alloced(%rip)
	movl	%ebx, %r13d
	jne	.LBB0_13
# %bb.12:
	leaq	16(,%r13,8), %rsi
	callq	realloc
	movq	%rax, %r12
	movq	%rax, environ(%rip)
	testq	%rax, %rax
	jne	.LBB0_15
	jmp	.LBB0_29
.LBB0_13:
	movb	$1, _setenv_r.alloced(%rip)
	leaq	16(,%r13,8), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB0_29
# %bb.14:
	movq	%rax, %r12
	movq	environ(%rip), %rsi
	leaq	(,%r13,8), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	%r12, environ(%rip)
.LBB0_15:
	movq	$0, 8(%r12,%r13,8)
	movl	%ebx, -44(%rbp)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB0_16:
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%rax), %ecx
	testb	%cl, %cl
	je	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	cmpb	$61, %cl
	je	.LBB0_20
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	addq	$1, %rax
	jmp	.LBB0_17
.LBB0_20:
	subl	%r14d, %edx
	addl	%edx, %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	environ(%rip), %rdx
	movslq	-44(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	testq	%rax, %rax
	je	.LBB0_28
# %bb.21:
	movq	environ(%rip), %rax
	movq	(%rax,%rcx,8), %rax
	.p2align	4, 0x90
.LBB0_22:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r14), %ecx
	movb	%cl, (%rax)
	testb	%cl, %cl
	je	.LBB0_25
# %bb.23:                               #   in Loop: Header=BB0_22 Depth=1
	cmpb	$61, %cl
	je	.LBB0_25
# %bb.24:                               #   in Loop: Header=BB0_22 Depth=1
	addq	$1, %r14
	addq	$1, %rax
	jmp	.LBB0_22
.LBB0_25:
	movb	$61, (%rax)
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	movzbl	-1(%r15,%rcx), %edx
	movb	%dl, (%rax,%rcx)
	addq	$1, %rcx
	testb	%dl, %dl
	jne	.LBB0_26
.LBB0_27:
	movq	%rbx, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
.LBB0_32:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_28:
	movq	%rbx, %rdi
	jmp	.LBB0_30
.LBB0_29:
	movq	-56(%rbp), %rdi         # 8-byte Reload
.LBB0_30:
	callq	__env_unlock
	jmp	.LBB0_31
.Lfunc_end0:
	.size	_setenv_r, .Lfunc_end0-_setenv_r
                                        # -- End function
	.globl	_unsetenv_r             # -- Begin function _unsetenv_r
	.p2align	4, 0x90
	.type	_unsetenv_r,@function
_unsetenv_r:                            # @_unsetenv_r
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rsi, %rsi
	je	.LBB1_3
# %bb.1:
	movq	%rsi, %rbx
	cmpb	$0, (%rsi)
	je	.LBB1_3
# %bb.2:
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movl	$61, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB1_4
.LBB1_3:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
.LBB1_10:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_4:
	movq	%r14, %rdi
	callq	__env_lock
	leaq	-28(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_findenv_r
	testq	%rax, %rax
	je	.LBB1_9
# %bb.5:
	leaq	-28(%rbp), %r15
	.p2align	4, 0x90
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_8 Depth 2
	movq	environ(%rip), %rax
	movslq	-28(%rbp), %rcx
	leaq	(%rax,%rcx,8), %rax
	addq	$8, %rax
	.p2align	4, 0x90
.LBB1_8:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rax), %rcx
	movq	%rcx, -8(%rax)
	addq	$8, %rax
	testq	%rcx, %rcx
	jne	.LBB1_8
# %bb.6:                                #   in Loop: Header=BB1_7 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_findenv_r
	testq	%rax, %rax
	jne	.LBB1_7
.LBB1_9:
	movq	%r14, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
	jmp	.LBB1_10
.Lfunc_end1:
	.size	_unsetenv_r, .Lfunc_end1-_unsetenv_r
                                        # -- End function
	.type	_setenv_r.alloced,@object # @_setenv_r.alloced
	.local	_setenv_r.alloced
	.comm	_setenv_r.alloced,1,4
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
