	.text
	.file	"lfunc.c"
	.hidden	luaF_newCclosure        # -- Begin function luaF_newCclosure
	.globl	luaF_newCclosure
	.p2align	4, 0x90
	.type	luaF_newCclosure,@function
luaF_newCclosure:                       # @luaF_newCclosure
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
	movl	%esi, %eax
	shll	$4, %eax
	addl	$40, %eax
	movslq	%eax, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	luaC_link
	movb	$1, 10(%rbx)
	movq	%r14, 24(%rbx)
	movb	%r15b, 11(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaF_newCclosure, .Lfunc_end0-luaF_newCclosure
                                        # -- End function
	.hidden	luaF_newLclosure        # -- Begin function luaF_newLclosure
	.globl	luaF_newLclosure
	.p2align	4, 0x90
	.type	luaF_newLclosure,@function
luaF_newLclosure:                       # @luaF_newLclosure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r15
	movl	%esi, %r14d
	movq	%rdi, %r12
	leal	40(,%r14,8), %eax
	movslq	%eax, %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	$6, %edx
	callq	luaC_link
	movb	$0, 10(%rbx)
	movq	%r15, 24(%rbx)
	movb	%r14b, 11(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB1_5
# %bb.1:
	movslq	%r14d, %rax
	leaq	-1(%rax), %rcx
	movq	%rax, %rdx
	andq	$3, %rdx
	je	.LBB1_3
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	$0, 32(%rbx,%rax,8)
	addq	$-1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jne	.LBB1_2
.LBB1_3:
	cmpq	$3, %rcx
	jb	.LBB1_5
	.p2align	4, 0x90
.LBB1_4:                                # =>This Inner Loop Header: Depth=1
	movq	$0, 32(%rbx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 24(%rbx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%rbx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 8(%rbx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-4, %rax
	jne	.LBB1_4
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaF_newLclosure, .Lfunc_end1-luaF_newLclosure
                                        # -- End function
	.hidden	luaF_newupval           # -- Begin function luaF_newupval
	.globl	luaF_newupval
	.p2align	4, 0x90
	.type	luaF_newupval,@function
luaF_newupval:                          # @luaF_newupval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$40, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$10, %edx
	callq	luaC_link
	leaq	24(%rbx), %rax
	movq	%rax, 16(%rbx)
	movl	$0, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end2:
	.size	luaF_newupval, .Lfunc_end2-luaF_newupval
                                        # -- End function
	.hidden	luaF_findupval          # -- Begin function luaF_findupval
	.globl	luaF_findupval
	.p2align	4, 0x90
	.type	luaF_findupval,@function
luaF_findupval:                         # @luaF_findupval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	32(%rdi), %r15
	leaq	152(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	152(%rdi), %rax
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_5
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jb	.LBB3_5
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	je	.LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	jmp	.LBB3_1
.LBB3_5:
	movl	$40, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movb	$10, 8(%rax)
	movb	32(%r15), %cl
	andb	$3, %cl
	movb	%cl, 9(%rax)
	movq	%r14, 16(%rax)
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	movq	%rax, (%rbx)
	leaq	184(%r15), %rcx
	movq	%rcx, 24(%rax)
	movq	216(%r15), %rcx
	movq	%rcx, 32(%rax)
	movq	%rax, 24(%rcx)
	movq	%rax, 216(%r15)
.LBB3_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_7:
	movb	9(%rbx), %al
	movb	32(%r15), %cl
	notb	%cl
	andb	%al, %cl
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %cl
	je	.LBB3_9
# %bb.8:
	xorb	$3, %al
	movb	%al, 9(%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:
	movq	%rbx, %rax
	jmp	.LBB3_6
.Lfunc_end3:
	.size	luaF_findupval, .Lfunc_end3-luaF_findupval
                                        # -- End function
	.hidden	luaF_freeupval          # -- Begin function luaF_freeupval
	.globl	luaF_freeupval
	.p2align	4, 0x90
	.type	luaF_freeupval,@function
luaF_freeupval:                         # @luaF_freeupval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	leaq	24(%rsi), %rax
	cmpq	%rax, 16(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_2
# %bb.1:
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	movq	%rax, 24(%rcx)
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	movq	%rcx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_2:
	movl	$40, %edx
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaF_freeupval, .Lfunc_end4-luaF_freeupval
                                        # -- End function
	.hidden	luaF_close              # -- Begin function luaF_close
	.globl	luaF_close
	.p2align	4, 0x90
	.type	luaF_close,@function
luaF_close:                             # @luaF_close
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	32(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	152(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB5_9
# %bb.1:
	movq	%rdi, %rbx
	jmp	.LBB5_2
	.p2align	4, 0x90
.LBB5_7:                                #   in Loop: Header=BB5_2 Depth=1
	movq	24(%rsi), %rcx
	movq	32(%rsi), %rdx
	movq	%rcx, 24(%rdx)
	movq	24(%rsi), %rcx
	movq	32(%rsi), %rdx
	movq	%rdx, 32(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rsi), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, 24(%rsi)
	movl	8(%rcx), %ecx
	movl	%ecx, 32(%rsi)
	movq	%rax, 16(%rsi)
	movq	%rbx, %rdi
	callq	luaC_linkupval
.LBB5_8:                                #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	152(%rbx), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB5_9
.LBB5_2:                                # =>This Inner Loop Header: Depth=1
	movq	16(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jb	.LBB5_9
# %bb.3:                                #   in Loop: Header=BB5_2 Depth=1
	movq	(%rsi), %rax
	movq	%rax, 152(%rbx)
	movzbl	32(%r15), %edx
	notb	%dl
	andb	9(%rsi), %dl
	leaq	24(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$3, %dl
	je	.LBB5_7
# %bb.4:                                #   in Loop: Header=BB5_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	je	.LBB5_6
# %bb.5:                                #   in Loop: Header=BB5_2 Depth=1
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	movq	%rax, 24(%rcx)
	movq	24(%rsi), %rax
	movq	32(%rsi), %rcx
	movq	%rcx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_6:                                #   in Loop: Header=BB5_2 Depth=1
	movl	$40, %edx
	movq	%rbx, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_8
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaF_close, .Lfunc_end5-luaF_close
                                        # -- End function
	.hidden	luaF_newproto           # -- Begin function luaF_newproto
	.globl	luaF_newproto
	.p2align	4, 0x90
	.type	luaF_newproto,@function
luaF_newproto:                          # @luaF_newproto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rdi, %r14
	movl	$120, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	$9, %edx
	callq	luaC_link
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movq	$0, 32(%rbx)
	movups	%xmm0, 88(%rbx)
	movups	%xmm0, 72(%rbx)
	movb	$0, 112(%rbx)
	movups	%xmm0, 56(%rbx)
	movw	$0, 113(%rbx)
	movb	$0, 115(%rbx)
	movups	%xmm0, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaF_newproto, .Lfunc_end6-luaF_newproto
                                        # -- End function
	.hidden	luaF_freeproto          # -- Begin function luaF_freeproto
	.globl	luaF_freeproto
	.p2align	4, 0x90
	.type	luaF_freeproto,@function
luaF_freeproto:                         # @luaF_freeproto
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	24(%rsi), %rsi
	movslq	80(%rbx), %rdx
	shlq	$2, %rdx
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	32(%rbx), %rsi
	movslq	88(%rbx), %rdx
	shlq	$3, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	16(%rbx), %rsi
	movslq	76(%rbx), %rdx
	shlq	$4, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	40(%rbx), %rsi
	movslq	84(%rbx), %rdx
	shlq	$2, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	48(%rbx), %rsi
	movslq	92(%rbx), %rdx
	shlq	$4, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movq	56(%rbx), %rsi
	movslq	72(%rbx), %rdx
	shlq	$3, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$120, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaF_freeproto, .Lfunc_end7-luaF_freeproto
                                        # -- End function
	.hidden	luaF_freeclosure        # -- Begin function luaF_freeclosure
	.globl	luaF_freeclosure
	.p2align	4, 0x90
	.type	luaF_freeclosure,@function
luaF_freeclosure:                       # @luaF_freeclosure
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	cmpb	$1, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movb	$4, %cl
	sbbb	$0, %cl
	movzbl	11(%rsi), %edx
	shlq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rdx
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaF_freeclosure, .Lfunc_end8-luaF_freeclosure
                                        # -- End function
	.hidden	luaF_getlocalname       # -- Begin function luaF_getlocalname
	.globl	luaF_getlocalname
	.p2align	4, 0x90
	.type	luaF_getlocalname,@function
luaF_getlocalname:                      # @luaF_getlocalname
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	movslq	92(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
	testq	%r8, %r8
	jle	.LBB9_1
# %bb.2:
	movq	48(%rdi), %rdi
	addq	$12, %rdi
	xorl	%eax, %eax
	xorl	%ecx, %ecx
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rdi
	cmpq	%r8, %rcx
	jge	.LBB9_8
.LBB9_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	%edx, -4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB9_8
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	cmpl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB9_7
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %esi
	jne	.LBB9_7
# %bb.6:
	movq	-12(%rdi), %rax
	addq	$24, %rax
	jmp	.LBB9_8
.LBB9_1:
	xorl	%eax, %eax
.LBB9_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end9:
	.size	luaF_getlocalname, .Lfunc_end9-luaF_getlocalname
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaM_realloc_
	.hidden	luaC_link
	.hidden	luaC_linkupval
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
