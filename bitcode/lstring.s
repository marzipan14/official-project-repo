	.text
	.file	"lstring.c"
	.hidden	luaS_resize             # -- Begin function luaS_resize
	.globl	luaS_resize
	.p2align	4, 0x90
	.type	luaS_resize,@function
luaS_resize:                            # @luaS_resize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	32(%rdi), %rax
	cmpb	$2, 33(%rax)
	je	.LBB0_22
# %bb.1:
	movl	%esi, %r14d
	movq	%rdi, %r15
	movslq	%esi, %r12
	cmpl	$-2, %esi
	jle	.LBB0_2
# %bb.3:
	leaq	(,%r12,8), %rcx
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	32(%r15), %r13
	testl	%r12d, %r12d
	jle	.LBB0_15
# %bb.4:
	movl	%r14d, %eax
	cmpl	$3, %r14d
	ja	.LBB0_7
# %bb.5:
	xorl	%ecx, %ecx
	jmp	.LBB0_6
.LBB0_2:
	movq	%r15, %rdi
	callq	luaM_toobig
	movq	%rax, %rbx
	movq	32(%r15), %r13
	jmp	.LBB0_15
.LBB0_7:
	movl	%eax, %ecx
	andl	$-4, %ecx
	leaq	-4(%rcx), %rdi
	movq	%rdi, %rsi
	shrq	$2, %rsi
	addq	$1, %rsi
	movl	%esi, %edx
	andl	$7, %edx
	cmpq	$28, %rdi
	jae	.LBB0_9
# %bb.8:
	xorl	%esi, %esi
	jmp	.LBB0_11
.LBB0_9:
	movq	%rdx, %rdi
	subq	%rsi, %rdi
	xorl	%esi, %esi
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_10:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, (%rbx,%rsi,8)
	movups	%xmm0, 16(%rbx,%rsi,8)
	movups	%xmm0, 32(%rbx,%rsi,8)
	movups	%xmm0, 48(%rbx,%rsi,8)
	movups	%xmm0, 64(%rbx,%rsi,8)
	movups	%xmm0, 80(%rbx,%rsi,8)
	movups	%xmm0, 96(%rbx,%rsi,8)
	movups	%xmm0, 112(%rbx,%rsi,8)
	movups	%xmm0, 128(%rbx,%rsi,8)
	movups	%xmm0, 144(%rbx,%rsi,8)
	movups	%xmm0, 160(%rbx,%rsi,8)
	movups	%xmm0, 176(%rbx,%rsi,8)
	movups	%xmm0, 192(%rbx,%rsi,8)
	movups	%xmm0, 208(%rbx,%rsi,8)
	movups	%xmm0, 224(%rbx,%rsi,8)
	movups	%xmm0, 240(%rbx,%rsi,8)
	addq	$32, %rsi
	addq	$8, %rdi
	jne	.LBB0_10
.LBB0_11:
	testq	%rdx, %rdx
	je	.LBB0_14
# %bb.12:                               # %.preheader2
	leaq	(%rbx,%rsi,8), %rsi
	addq	$16, %rsi
	negq	%rdx
	xorps	%xmm0, %xmm0
	.p2align	4, 0x90
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	movups	%xmm0, -16(%rsi)
	movups	%xmm0, (%rsi)
	addq	$32, %rsi
	incq	%rdx
	jne	.LBB0_13
.LBB0_14:
	cmpq	%rax, %rcx
	je	.LBB0_15
	.p2align	4, 0x90
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	movq	$0, (%rbx,%rcx,8)
	addq	$1, %rcx
	cmpq	%rcx, %rax
	jne	.LBB0_6
.LBB0_15:
	movslq	12(%r13), %rdx
	testq	%rdx, %rdx
	jle	.LBB0_21
# %bb.16:
	addq	$-1, %r12
	xorl	%eax, %eax
	movl	%edx, %ecx
	jmp	.LBB0_17
	.p2align	4, 0x90
.LBB0_20:                               #   in Loop: Header=BB0_17 Depth=1
	addq	$1, %rax
	movslq	%ecx, %rdx
	cmpq	%rdx, %rax
	jge	.LBB0_21
.LBB0_17:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB0_18 Depth 2
	movq	(%r13), %rdx
	movq	(%rdx,%rax,8), %rdx
	testq	%rdx, %rdx
	je	.LBB0_20
	.p2align	4, 0x90
.LBB0_18:                               #   Parent Loop BB0_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rdx), %rcx
	movslq	12(%rdx), %rsi
	andq	%r12, %rsi
	movq	(%rbx,%rsi,8), %rdi
	movq	%rdi, (%rdx)
	movq	%rdx, (%rbx,%rsi,8)
	movq	%rcx, %rdx
	testq	%rcx, %rcx
	jne	.LBB0_18
# %bb.19:                               #   in Loop: Header=BB0_17 Depth=1
	movl	12(%r13), %ecx
	jmp	.LBB0_20
.LBB0_21:
	movq	(%r13), %rsi
	shlq	$3, %rdx
	movq	%r15, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	%r14d, 12(%r13)
	movq	%rbx, (%r13)
.LBB0_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaS_resize, .Lfunc_end0-luaS_resize
                                        # -- End function
	.hidden	luaS_newlstr            # -- Begin function luaS_newlstr
	.globl	luaS_newlstr
	.p2align	4, 0x90
	.type	luaS_newlstr,@function
luaS_newlstr:                           # @luaS_newlstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r12
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rdx, %rax
	shrq	$5, %rax
	cmpq	%rdx, %rax
	jae	.LBB1_1
# %bb.2:
	movq	%rax, %rcx
	notq	%rcx
	movq	%r12, %rdx
	movl	%r12d, %ebx
	.p2align	4, 0x90
.LBB1_3:                                # =>This Inner Loop Header: Depth=1
	movl	%ebx, %esi
	shll	$5, %esi
	movl	%ebx, %edi
	shrl	$2, %edi
	addl	%esi, %edi
	movzbl	-1(%r15,%rdx), %esi
	addl	%edi, %esi
	xorl	%esi, %ebx
	addq	%rcx, %rdx
	cmpq	%rax, %rdx
	ja	.LBB1_3
	jmp	.LBB1_4
.LBB1_1:
	movl	%r12d, %ebx
.LBB1_4:
	movq	32(%r14), %rax
	movq	(%rax), %rcx
	movslq	12(%rax), %rax
	addq	$-1, %rax
	movslq	%ebx, %rdx
	andq	%rax, %rdx
	movq	(%rcx,%rdx,8), %r13
	jmp	.LBB1_5
	.p2align	4, 0x90
.LBB1_10:                               #   in Loop: Header=BB1_5 Depth=1
	movq	(%r13), %r13
.LBB1_5:                                # =>This Inner Loop Header: Depth=1
	testq	%r13, %r13
	je	.LBB1_11
# %bb.6:                                #   in Loop: Header=BB1_5 Depth=1
	cmpq	%r12, 16(%r13)
	jne	.LBB1_10
# %bb.7:                                #   in Loop: Header=BB1_5 Depth=1
	leaq	24(%r13), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB1_10
# %bb.8:
	movb	9(%r13), %al
	movq	32(%r14), %rcx
	movb	32(%rcx), %cl
	notb	%cl
	andb	%al, %cl
	testb	$3, %cl
	je	.LBB1_17
# %bb.9:
	xorb	$3, %al
	movb	%al, 9(%r13)
	jmp	.LBB1_17
.LBB1_11:
	leaq	1(%r12), %rax
	cmpq	$-26, %rax
	jb	.LBB1_13
# %bb.12:
	movq	%r14, %rdi
	callq	luaM_toobig
.LBB1_13:
	leaq	25(%r12), %rcx
	movq	%r14, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %r13
	movq	%r12, 16(%rax)
	movl	%ebx, 12(%rax)
	movq	32(%r14), %rax
	movb	32(%rax), %al
	andb	$3, %al
	movb	%al, 9(%r13)
	movb	$4, 8(%r13)
	movb	$0, 10(%r13)
	leaq	24(%r13), %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	memcpy
	movb	$0, 24(%r13,%r12)
	movq	32(%r14), %rax
	movl	12(%rax), %ecx
	addl	$-1, %ecx
	andl	%ebx, %ecx
	movq	(%rax), %rdx
	movq	(%rdx,%rcx,8), %rdx
	movq	%rdx, (%r13)
	movq	(%rax), %rdx
	movq	%r13, (%rdx,%rcx,8)
	movl	8(%rax), %ecx
	movl	12(%rax), %esi
	addl	$1, %ecx
	movl	%ecx, 8(%rax)
	cmpl	%esi, %ecx
	jbe	.LBB1_16
# %bb.14:
	cmpl	$1073741822, %esi       # imm = 0x3FFFFFFE
	jg	.LBB1_16
# %bb.15:
	addl	%esi, %esi
	movq	%r14, %rdi
	callq	luaS_resize
.LBB1_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaS_newlstr, .Lfunc_end1-luaS_newlstr
                                        # -- End function
	.hidden	luaS_newudata           # -- Begin function luaS_newudata
	.globl	luaS_newudata
	.p2align	4, 0x90
	.type	luaS_newudata,@function
luaS_newudata:                          # @luaS_newudata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %r15
	movq	%rdi, %rbx
	cmpq	$-42, %rsi
	jb	.LBB2_2
# %bb.1:
	movq	%rbx, %rdi
	callq	luaM_toobig
.LBB2_2:
	leaq	40(%r15), %rcx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	32(%rbx), %rcx
	movb	32(%rcx), %cl
	andb	$3, %cl
	movb	%cl, 9(%rax)
	movb	$7, 8(%rax)
	movq	%r15, 32(%rax)
	movq	$0, 16(%rax)
	movq	%r14, 24(%rax)
	movq	32(%rbx), %rcx
	movq	176(%rcx), %rcx
	movq	(%rcx), %rcx
	movq	%rcx, (%rax)
	movq	32(%rbx), %rcx
	movq	176(%rcx), %rcx
	movq	%rax, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaS_newudata, .Lfunc_end2-luaS_newudata
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaM_realloc_
	.hidden	luaM_toobig
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
