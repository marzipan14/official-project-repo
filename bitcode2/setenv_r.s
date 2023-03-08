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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
	jmp	.LBB0_30
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_7
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB0_29
# %bb.4:
	movq	%rax, %r12
	movq	%rax, %rdi
	callq	strlen
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movslq	%edx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jb	.LBB0_17
# %bb.5:                                # %.preheader6
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rax), %ecx
	movb	%cl, (%r12,%rax)
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_6
	jmp	.LBB0_29
.LBB0_7:
	movq	environ(%rip), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	je	.LBB0_8
# %bb.9:                                # %.preheader4
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, 8(%rdi,%rbx,8)
	leaq	1(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_10
	jmp	.LBB0_11
.LBB0_8:
	xorl	%ebx, %ebx
.LBB0_11:
	movb	_setenv_r.alloced(%rip), %al
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r13d
	cmpb	$1, %al
	jne	.LBB0_14
# %bb.12:
	leaq	16(,%r13,8), %rsi
	callq	realloc
	movq	%rax, %r12
	movq	%rax, environ(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB0_16
	jmp	.LBB0_13
.LBB0_14:
	movb	$1, _setenv_r.alloced(%rip)
	leaq	16(,%r13,8), %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_13
# %bb.15:
	movq	%rax, %r12
	movq	environ(%rip), %rsi
	leaq	(,%r13,8), %rdx
	movq	%rax, %rdi
	callq	memcpy
	movq	%r12, environ(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_16:
	movq	$0, 8(%r12,%r13,8)
	movl	%ebx, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	-64(%rbp), %rdx         # 8-byte Reload
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r14), %cl
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	testb	%cl, %cl
	je	.LBB0_21
# %bb.18:                               # %.preheader1
	movq	%r14, %rax
	.p2align	4, 0x90
.LBB0_19:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	je	.LBB0_21
# %bb.20:                               #   in Loop: Header=BB0_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax), %ecx
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_19
.LBB0_21:
	subl	%r14d, %edx
	addl	%edx, %eax
	addl	$2, %eax
	movslq	%eax, %rdi
	callq	malloc
	movq	environ(%rip), %rdx
	movslq	-44(%rbp), %rcx
	movq	%rax, (%rdx,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.23:
	movq	environ(%rip), %rax
	movq	(%rax,%rcx,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movb	(%r14), %cl
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB0_27
# %bb.24:                               # %.preheader
	addq	$1, %r14
	.p2align	4, 0x90
.LBB0_25:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	je	.LBB0_27
# %bb.26:                               #   in Loop: Header=BB0_25 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r14), %ecx
	movb	%cl, 1(%rax)
	addq	$1, %rax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB0_25
.LBB0_27:
	movb	$61, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB0_28:                               # =>This Inner Loop Header: Depth=1
	movzbl	(%r15,%rcx), %edx
	movb	%dl, 1(%rax,%rcx)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	%dl, %dl
	jne	.LBB0_28
.LBB0_29:
	movq	%rbx, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
.LBB0_30:
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
.LBB0_22:
	movq	%rbx, %rdi
	callq	__env_unlock
	movl	$-1, %eax
	jmp	.LBB0_30
.LBB0_13:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	callq	__env_unlock
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB0_30
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
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB1_3
# %bb.1:
	movq	%rsi, %rbx
	cmpb	$0, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_3
# %bb.2:
	movq	%rdi, %r14
	movq	%rbx, %rdi
	movl	$61, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_4
.LBB1_3:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %eax
.LBB1_11:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	leaq	-28(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	_findenv_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_10
# %bb.5:
	leaq	-28(%rbp), %r15
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_6:                                #   in Loop: Header=BB1_7 Depth=1
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	_findenv_r
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_10
.LBB1_7:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_9 Depth 2
	movq	environ(%rip), %rax
	movslq	-28(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rax,%rcx,8), %rdx
	movq	%rdx, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB1_6
# %bb.8:                                # %.preheader
                                        #   in Loop: Header=BB1_7 Depth=1
	leaq	(%rax,%rcx,8), %rax
	addq	$16, %rax
	.p2align	4, 0x90
.LBB1_9:                                #   Parent Loop BB1_7 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movq	%rcx, -8(%rax)
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB1_9
	jmp	.LBB1_6
.LBB1_10:
	movq	%r14, %rdi
	callq	__env_unlock
	xorl	%eax, %eax
	jmp	.LBB1_11
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
