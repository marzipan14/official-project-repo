	.text
	.file	"ldebug.c"
	.globl	lua_sethook             # -- Begin function lua_sethook
	.p2align	4, 0x90
	.type	lua_sethook,@function
lua_sethook:                            # @lua_sethook
# %bb.0:
                                        # kill: def $edx killed $edx def $rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB0_2
# %bb.1:
	testl	%edx, %edx
	jne	.LBB0_3
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB0_3:
	movq	%rsi, 112(%rdi)
	movl	%ecx, 104(%rdi)
	movl	%ecx, 108(%rdi)
	movb	%dl, 100(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	retq
.Lfunc_end0:
	.size	lua_sethook, .Lfunc_end0-lua_sethook
                                        # -- End function
	.globl	lua_gethook             # -- Begin function lua_gethook
	.p2align	4, 0x90
	.type	lua_gethook,@function
lua_gethook:                            # @lua_gethook
# %bb.0:
	movq	112(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	lua_gethook, .Lfunc_end1-lua_gethook
                                        # -- End function
	.globl	lua_gethookmask         # -- Begin function lua_gethookmask
	.p2align	4, 0x90
	.type	lua_gethookmask,@function
lua_gethookmask:                        # @lua_gethookmask
# %bb.0:
	movzbl	100(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end2:
	.size	lua_gethookmask, .Lfunc_end2-lua_gethookmask
                                        # -- End function
	.globl	lua_gethookcount        # -- Begin function lua_gethookcount
	.p2align	4, 0x90
	.type	lua_gethookcount,@function
lua_gethookcount:                       # @lua_gethookcount
# %bb.0:
	movl	104(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end3:
	.size	lua_gethookcount, .Lfunc_end3-lua_gethookcount
                                        # -- End function
	.globl	lua_getstack            # -- Begin function lua_getstack
	.p2align	4, 0x90
	.type	lua_getstack,@function
lua_getstack:                           # @lua_getstack
# %bb.0:
	movq	40(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB4_8
# %bb.1:
	movq	80(%rdi), %r8
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_7:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$-40, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB4_8
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %rax
	jbe	.LBB4_3
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	addl	$-1, %esi
	movq	8(%rax), %rcx
	movq	(%rcx), %rcx
	cmpb	$0, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_7
# %bb.6:                                #   in Loop: Header=BB4_2 Depth=1
	subl	36(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_7
.LBB4_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB4_9
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, 116(%rdx)
	jmp	.LBB4_12
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_4
.LBB4_9:
	subq	80(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB4_4
# %bb.10:
	shrq	$3, %rax
	imull	$-858993459, %eax, %eax # imm = 0xCCCCCCCD
	movl	%eax, 116(%rdx)
.LBB4_12:
	movl	$1, %eax
	jmp	.LBB4_13
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB4_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	lua_getstack, .Lfunc_end4-lua_getstack
                                        # -- End function
	.globl	lua_getlocal            # -- Begin function lua_getlocal
	.p2align	4, 0x90
	.type	lua_getlocal,@function
lua_getlocal:                           # @lua_getlocal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movq	%rdi, %r15
	movq	80(%rdi), %rax
	movslq	116(%rsi), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rbx
	movq	8(%rax,%rcx,8), %rsi
	cmpl	$6, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %r12
	jne	.LBB5_2
# %bb.1:
	movq	(%rsi), %r8
	cmpb	$0, 10(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_6
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	leaq	48(%rbx), %rax
	leaq	16(%r15), %rcx
	cmpq	%rbx, 40(%r15)
	cmoveq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB5_14
# %bb.4:
	subq	%rax, %rcx
	sarq	$4, %rcx
	cmpq	%r12, %rcx
	jl	.LBB5_14
# %bb.5:
	movl	$.L.str.6, %r13d
.LBB5_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %r12
	leaq	(%r12,%rax), %rsi
	addq	$-16, %rsi
	movq	%r15, %rdi
	callq	luaA_pushobject
	jmp	.LBB5_13
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB5_6:
	movq	32(%r8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, 40(%r15)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_9
# %bb.8:
	movq	24(%rax,%rcx,8), %rdx
	jmp	.LBB5_10
.LBB5_9:
	movq	48(%r15), %rdx
	movq	%rdx, 24(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %r8
.LBB5_10:
	movq	32(%r8), %rax
	subq	24(%rax), %rdx
	shrq	$2, %rdx
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaF_getlocalname
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB5_3
# %bb.11:
	movq	%rax, %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rax
	jmp	.LBB5_12
.Lfunc_end5:
	.size	lua_getlocal, .Lfunc_end5-lua_getlocal
                                        # -- End function
	.globl	lua_setlocal            # -- Begin function lua_setlocal
	.p2align	4, 0x90
	.type	lua_setlocal,@function
lua_setlocal:                           # @lua_setlocal
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movq	%rdi, %rbx
	movq	80(%rdi), %rax
	movslq	116(%rsi), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %r12
	movq	8(%rax,%rcx,8), %rsi
	cmpl	$6, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%edx, %r15
	jne	.LBB6_2
# %bb.1:
	movq	(%rsi), %r8
	cmpb	$0, 10(%r8)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_6
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	leaq	48(%r12), %rax
	leaq	16(%rbx), %rdx
	cmpq	%r12, 40(%rbx)
	cmoveq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	jle	.LBB6_14
# %bb.4:
	subq	%rcx, %rax
	sarq	$4, %rax
	cmpq	%r15, %rax
	jl	.LBB6_14
# %bb.5:
	movl	$.L.str.6, %eax
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rdx
	addq	$16, %rbx
	shlq	$4, %r15
	movq	-16(%rdx), %rsi
	movq	%rsi, -16(%r15,%rcx)
	movl	-8(%rdx), %edx
	movl	%edx, -8(%r15,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdx
	jmp	.LBB6_13
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB6_13:
	addq	$-16, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_6:
	movq	32(%r8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB6_3
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB6_9
# %bb.8:
	movq	24(%rax,%rcx,8), %rdx
	jmp	.LBB6_10
.LBB6_9:
	movq	48(%rbx), %rdx
	movq	%rdx, 24(%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rsi), %r8
.LBB6_10:
	movq	32(%r8), %rax
	subq	24(%rax), %rdx
	shrq	$2, %rdx
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaF_getlocalname
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_3
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rcx
	jmp	.LBB6_12
.Lfunc_end6:
	.size	lua_setlocal, .Lfunc_end6-lua_setlocal
                                        # -- End function
	.globl	lua_getinfo             # -- Begin function lua_getinfo
	.p2align	4, 0x90
	.type	lua_getinfo,@function
lua_getinfo:                            # @lua_getinfo
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdx, %r12
	movq	%rsi, %rbx
	cmpb	$62, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_2
# %bb.1:
	movq	16(%rdi), %rax
	addq	$1, %rbx
	movq	-16(%rax), %r13
	addq	$-16, %rax
	movq	%rax, 16(%rdi)
	xorl	%r14d, %r14d
	jmp	.LBB7_4
.LBB7_2:
	movslq	116(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_50
# %bb.3:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	80(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %r14
	movq	8(%rcx,%rax,8), %rax
	movq	(%rax), %r13
.LBB7_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB7_51
# %bb.5:
	movq	%rbx, %rcx
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_49
# %bb.6:
	leaq	56(%r12), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	leaq	8(%r12), %rdx
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	leaq	-40(%r14), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	leaq	1(%rcx), %r15
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	movl	$.L.str.7, %ecx
	movq	%rcx, %xmm0
	pslldq	$8, %xmm0               # xmm0 = zero,zero,zero,zero,zero,zero,zero,zero,xmm0[0,1,2,3,4,5,6,7]
	movdqa	%xmm0, -96(%rbp)        # 16-byte Spill
	jmp	.LBB7_9
.LBB7_7:                                #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB7_8:                                #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15), %eax
	addq	$1, %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB7_48
.LBB7_9:                                # =>This Inner Loop Header: Depth=1
	movsbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-76, %eax
	cmpl	$41, %eax
	ja	.LBB7_7
# %bb.10:                               #   in Loop: Header=BB7_9 Depth=1
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_11:                               #   in Loop: Header=BB7_9 Depth=1
	cmpb	$0, 10(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_27
# %bb.12:                               #   in Loop: Header=BB7_9 Depth=1
	movq	$.L.str.10, 32(%r12)
	movl	$.L.str.10, %esi
	movl	$-1, 48(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.11, %ecx
	movl	$-1, %eax
	jmp	.LBB7_28
.LBB7_13:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_29
# %bb.14:                               #   in Loop: Header=BB7_9 Depth=1
	movq	8(%r14), %rdx
	cmpl	$6, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_16
# %bb.15:                               #   in Loop: Header=BB7_9 Depth=1
	movq	(%rdx), %rcx
	cmpb	$0, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_31
.LBB7_16:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_17:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$-1, %eax
.LBB7_18:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_30
.LBB7_19:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB7_35
# %bb.20:                               #   in Loop: Header=BB7_9 Depth=1
	movq	8(%r14), %rax
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_22
# %bb.21:                               #   in Loop: Header=BB7_9 Depth=1
	movq	(%rax), %rax
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_33
.LBB7_22:                               #   in Loop: Header=BB7_9 Depth=1
	movq	-32(%r14), %rdx
	cmpl	$6, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_34
# %bb.23:                               #   in Loop: Header=BB7_9 Depth=1
	movq	(%rdx), %rax
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_34
# %bb.24:                               #   in Loop: Header=BB7_9 Depth=1
	movq	32(%rax), %rsi
	movq	24(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rdi, 40(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_42
# %bb.25:                               #   in Loop: Header=BB7_9 Depth=1
	addq	$24, %rsi
	movq	-16(%r14), %rcx
	jmp	.LBB7_43
.LBB7_26:                               #   in Loop: Header=BB7_9 Depth=1
	movzbl	11(%r13), %eax
	movl	%eax, 44(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_8
.LBB7_27:                               #   in Loop: Header=BB7_9 Depth=1
	movq	32(%r13), %rax
	movq	64(%rax), %rsi
	addq	$24, %rsi
	movq	%rsi, 32(%r12)
	movq	32(%r13), %rax
	movl	96(%rax), %ecx
	movl	%ecx, 48(%r12)
	movq	32(%r13), %rax
	movl	100(%rax), %eax
	testl	%ecx, %ecx
	movl	$.L.str.13, %ecx
	movl	$.L.str.12, %edx
	cmoveq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_28:                               #   in Loop: Header=BB7_9 Depth=1
	movl	%eax, 52(%r12)
	movq	%rcx, 24(%r12)
	movl	$60, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	luaO_chunkid
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_8
.LBB7_29:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$-1, %eax
.LBB7_30:                               #   in Loop: Header=BB7_9 Depth=1
	movl	%eax, 40(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_8
.LBB7_31:                               #   in Loop: Header=BB7_9 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%r14, 40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_37
# %bb.32:                               #   in Loop: Header=BB7_9 Depth=1
	movq	24(%r14), %rax
	jmp	.LBB7_38
.LBB7_33:                               #   in Loop: Header=BB7_9 Depth=1
	cmpl	$0, 36(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB7_22
.LBB7_34:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_35:                               #   in Loop: Header=BB7_9 Depth=1
	movq	$0, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_36:                               #   in Loop: Header=BB7_9 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_8
.LBB7_37:                               #   in Loop: Header=BB7_9 Depth=1
	movq	48(%rax), %rax
	movq	%rax, 24(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rcx
.LBB7_38:                               #   in Loop: Header=BB7_9 Depth=1
	movq	32(%rcx), %rcx
	subq	24(%rcx), %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB7_17
# %bb.39:                               #   in Loop: Header=BB7_9 Depth=1
	movq	40(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB7_47
# %bb.40:                               #   in Loop: Header=BB7_9 Depth=1
	shlq	$30, %rax
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rax
	sarq	$30, %rax
	movl	(%rcx,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_18
.LBB7_42:                               #   in Loop: Header=BB7_9 Depth=1
	movq	48(%rcx), %rcx
	movq	%rcx, -16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rdx
	movq	32(%rdx), %rsi
	addq	$24, %rsi
.LBB7_43:                               #   in Loop: Header=BB7_9 Depth=1
	subq	(%rsi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$30, %rcx
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rcx
	sarq	$30, %rcx
	movl	(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andl	$63, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$28, %ecx
	je	.LBB7_46
# %bb.44:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$29, %ecx
	je	.LBB7_46
# %bb.45:                               #   in Loop: Header=BB7_9 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$33, %ecx
	jne	.LBB7_34
.LBB7_46:                               #   in Loop: Header=BB7_9 Depth=1
	shrl	$6, %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	getobjname
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB7_8
	jmp	.LBB7_36
.LBB7_47:                               #   in Loop: Header=BB7_9 Depth=1
	xorl	%eax, %eax
	jmp	.LBB7_18
.LBB7_48:
	xorl	%r14d, %r14d
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB7_52
.LBB7_49:
	xorl	%r14d, %r14d
	movl	$1, %r15d
	movq	%rcx, %rbx
	jmp	.LBB7_52
.LBB7_50:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_51:
	movl	$.L.str.7, %eax
	movq	%rax, %xmm0
	pshufd	$68, %xmm0, %xmm0       # xmm0 = xmm0[0,1,0,1]
	movdqu	%xmm0, 8(%r12)
	movl	$-1, 40(%r12)
	movq	$-1, 48(%r12)
	movl	$.L.str.9, %eax
	movq	%rax, %xmm0
	movl	$.L.str.8, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 24(%r12)
	leaq	56(%r12), %rdi
	movl	$.L.str.9, %esi
	movl	$60, %edx
	callq	luaO_chunkid
	movl	$0, 44(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r15d
	movb	$1, %r14b
	xorl	%r13d, %r13d
.LBB7_52:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$102, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_58
# %bb.53:
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
	xorl	%ecx, %ecx
	testb	%r14b, %r14b
	jne	.LBB7_55
# %bb.54:
	movq	%r13, (%rax)
	movl	$6, %ecx
.LBB7_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, 8(%rax)
	movq	16(%r12), %rax
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB7_57
# %bb.56:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
.LBB7_57:
	addq	$16, %rax
	movq	%rax, 16(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_58:
	movq	%rbx, %rdi
	movl	$76, %esi
	callq	strchr
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_65
# %bb.59:
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	jne	.LBB7_61
# %bb.60:
	cmpb	$0, 10(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_66
.LBB7_61:
	leaq	16(%r12), %r14
	movq	16(%r12), %rax
	movl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_62:
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rcx
	jg	.LBB7_64
# %bb.63:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
.LBB7_64:
	addq	$16, %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_65:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_66:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaH_new
	movq	%rax, %r15
	movq	32(%r13), %rax
	movq	40(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 84(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB7_69
# %bb.67:                               # %.preheader
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB7_68:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbx,4), %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	luaH_setnum
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%r13), %rax
	movslq	84(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rbx
	jl	.LBB7_68
.LBB7_69:
	leaq	16(%r12), %r14
	movq	16(%r12), %rax
	movq	%r15, (%rax)
	movl	$5, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rax
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB7_62
.Lfunc_end7:
	.size	lua_getinfo, .Lfunc_end7-lua_getinfo
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_8
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_11
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_8
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_13
	.quad	.LBB7_7
	.quad	.LBB7_19
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_7
	.quad	.LBB7_26
                                        # -- End function
	.text
	.hidden	luaG_checkopenop        # -- Begin function luaG_checkopenop
	.globl	luaG_checkopenop
	.p2align	4, 0x90
	.type	luaG_checkopenop,@function
luaG_checkopenop:                       # @luaG_checkopenop
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %eax
	andb	$63, %al
	cmpb	$34, %al
	ja	.LBB8_3
# %bb.1:
	movl	%edi, %eax
	andl	$63, %eax
	movabsq	$19058917376, %rcx      # imm = 0x470000000
	btq	%rax, %rcx
	jae	.LBB8_3
# %bb.2:
	xorl	%eax, %eax
	cmpl	$8388608, %edi          # imm = 0x800000
	setb	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	luaG_checkopenop, .Lfunc_end8-luaG_checkopenop
                                        # -- End function
	.hidden	luaG_checkcode          # -- Begin function luaG_checkcode
	.globl	luaG_checkcode
	.p2align	4, 0x90
	.type	luaG_checkcode,@function
luaG_checkcode:                         # @luaG_checkcode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	80(%rdi), %esi
	movl	$255, %edx
	callq	symbexec
	xorl	%ecx, %ecx
	testl	%eax, %eax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaG_checkcode, .Lfunc_end9-luaG_checkcode
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function symbexec
	.type	symbexec,@function
symbexec:                               # @symbexec
# %bb.0:
	pushq	%rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$64, %rsp
	movslq	80(%rdi), %r8
	movzbl	115(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$250, %ecx
	ja	.LBB10_105
# %bb.1:
	movzbl	113(%rdi), %ebp
	movzbl	114(%rdi), %r9d
	movl	%r9d, %eax
	andl	$1, %eax
	addl	%eax, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebp
	ja	.LBB10_105
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r9b
	je	.LBB10_4
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_105
.LBB10_4:
	movzbl	112(%rdi), %r15d
	cmpl	%r15d, 72(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB10_105
# %bb.5:
	movl	84(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %eax
	je	.LBB10_7
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB10_105
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jle	.LBB10_105
# %bb.8:
	movq	24(%rdi), %r11
	movl	-4(%r11,%r8,4), %eax
	movl	%eax, %ebp
	andl	$63, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, %ebp
	jne	.LBB10_105
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB10_108
# %bb.10:
	leaq	-1(%r8), %rbp
	leaq	4(%r11), %rax
	movq	%rax, 40(%rsp)          # 8-byte Spill
	xorl	%r10d, %r10d
	movq	%rbp, %rax
	movq	%rbp, 32(%rsp)          # 8-byte Spill
	movl	%eax, 4(%rsp)           # 4-byte Spill
	jmp	.LBB10_13
.LBB10_11:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB10_12:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %r10d
	jge	.LBB10_109
.LBB10_13:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_27 Depth 2
                                        #     Child Loop BB10_87 Depth 2
	movslq	%r10d, %rax
	movq	%rax, 16(%rsp)          # 8-byte Spill
	movl	(%r11,%rax,4), %r13d
	movl	%r13d, %ebp
	andl	$63, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$37, %ebp
	ja	.LBB10_107
# %bb.14:                               #   in Loop: Header=BB10_13 Depth=1
	movl	%r13d, %eax
	shrl	$6, %eax
	movzbl	%al, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jae	.LBB10_107
# %bb.15:                               #   in Loop: Header=BB10_13 Depth=1
	movzbl	luaP_opmodes(%rbp), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %ebx
	andb	$3, %bl
	xorl	%eax, %eax
	cmpb	$2, %bl
	je	.LBB10_22
# %bb.16:                               #   in Loop: Header=BB10_13 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	cmpb	$1, %bl
	je	.LBB10_30
# %bb.17:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$0, %ebp
	testb	%bl, %bl
	jne	.LBB10_45
# %bb.18:                               #   in Loop: Header=BB10_13 Depth=1
	movl	%r13d, %ebp
	shrl	$23, %ebp
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	shrb	$4, %al
	andb	$3, %al
	cmpb	$3, %al
	je	.LBB10_32
# %bb.19:                               #   in Loop: Header=BB10_13 Depth=1
	cmpb	$2, %al
	je	.LBB10_33
# %bb.20:                               #   in Loop: Header=BB10_13 Depth=1
	testb	%al, %al
	jne	.LBB10_34
# %bb.21:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebp, %ebp
	je	.LBB10_34
	jmp	.LBB10_104
.LBB10_22:                              #   in Loop: Header=BB10_13 Depth=1
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	%r13d, %ebp
	shrl	$14, %ebp
	addl	$-131071, %ebp          # imm = 0xFFFE0001
	movl	%r12d, %eax
	andl	$48, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %eax
	jne	.LBB10_45
# %bb.23:                               #   in Loop: Header=BB10_13 Depth=1
	movq	%rbp, %rax
	movq	%r11, %rbp
	movq	%rax, 56(%rsp)          # 8-byte Spill
	leal	(%r10,%rax), %r11d
	movl	%r11d, %ebx
	incl	%ebx
	movl	$42, __A_VARIABLE(%rip)
	js	.LBB10_106
# %bb.24:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %ebx
	jge	.LBB10_106
# %bb.25:                               #   in Loop: Header=BB10_13 Depth=1
	movq	%r10, 48(%rsp)          # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB10_42
# %bb.26:                               #   in Loop: Header=BB10_13 Depth=1
	movl	%r15d, 28(%rsp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %r15
	xorl	%r10d, %r10d
.LBB10_27:                              #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%r11d, %rax
	movl	(%rbp,%rax,4), %eax
	movl	%eax, %ebx
	andl	$63, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %ebx
	jne	.LBB10_40
# %bb.28:                               #   in Loop: Header=BB10_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	$8372224, %eax          # imm = 0x7FC000
	jne	.LBB10_40
# %bb.29:                               #   in Loop: Header=BB10_27 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r10
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r11d
	cmpq	%r15, %r10
	jl	.LBB10_27
	jmp	.LBB10_41
.LBB10_30:                              #   in Loop: Header=BB10_13 Depth=1
	movl	%r13d, %ebp
	shrl	$14, %ebp
	movl	%r12d, %eax
	andl	$48, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$48, %eax
	jne	.LBB10_45
# %bb.31:                               #   in Loop: Header=BB10_13 Depth=1
	cmpl	76(%rdi), %ebp
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_45
	jmp	.LBB10_107
.LBB10_32:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	js	.LBB10_103
.LBB10_33:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebp
	jae	.LBB10_104
.LBB10_34:                              #   in Loop: Header=BB10_13 Depth=1
	movl	%r13d, %ebx
	shrl	$14, %ebx
	movl	%ebx, %eax
	andl	$511, %eax              # imm = 0x1FF
	movq	%rax, 8(%rsp)           # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	shrb	$2, %al
	movl	$42, __A_VARIABLE(%rip)
	andb	$3, %al
	cmpb	$3, %al
	je	.LBB10_38
# %bb.35:                               #   in Loop: Header=BB10_13 Depth=1
	cmpb	$2, %al
	je	.LBB10_39
# %bb.36:                               #   in Loop: Header=BB10_13 Depth=1
	testb	%al, %al
	jne	.LBB10_44
# %bb.37:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB10_44
	jmp	.LBB10_104
.LBB10_38:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$4194304, %r13d         # imm = 0x400000
	jne	.LBB10_43
.LBB10_39:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, 8(%rsp)           # 4-byte Folded Reload
	jb	.LBB10_44
	jmp	.LBB10_104
.LBB10_40:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_41:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r10b
	movl	28(%rsp), %r15d         # 4-byte Reload
	jne	.LBB10_107
.LBB10_42:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbp, %r11
	movq	48(%rsp), %r10          # 8-byte Reload
	movq	56(%rsp), %rbp          # 8-byte Reload
	jmp	.LBB10_45
.LBB10_43:                              #   in Loop: Header=BB10_13 Depth=1
	movzbl	%bl, %eax
	cmpl	76(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB10_104
.LBB10_44:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_45:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$64, %r12b
	je	.LBB10_48
# %bb.46:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r14d
	jne	.LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %eax
	movl	%r10d, 4(%rsp)          # 4-byte Spill
.LBB10_48:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	%r12b, %r12b
	jns	.LBB10_51
# %bb.49:                               #   in Loop: Header=BB10_13 Depth=1
	leal	2(%r10), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %eax
	jge	.LBB10_107
# %bb.50:                               #   in Loop: Header=BB10_13 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%r11,%rax,4), %eax
	andl	$63, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$22, %eax
	jne	.LBB10_107
.LBB10_51:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	andb	$63, %r13b
	addb	$-2, %r13b
	cmpb	$35, %r13b
	ja	.LBB10_12
# %bb.52:                               #   in Loop: Header=BB10_13 Depth=1
	movzbl	%r13b, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_53:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %ebp
	jl	.LBB10_12
	jmp	.LBB10_107
.LBB10_54:                              #   in Loop: Header=BB10_13 Depth=1
	movq	16(%rdi), %rax
	movslq	%ebp, %rbp
	shlq	$4, %rbp
	cmpl	$4, 8(%rax,%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_12
	jmp	.LBB10_107
.LBB10_55:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebp, %ebp
	je	.LBB10_57
# %bb.56:                               #   in Loop: Header=BB10_13 Depth=1
	addl	%r14d, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebp
	jg	.LBB10_107
.LBB10_57:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rsp), %rax           # 8-byte Reload
	subl	$1, %eax
	jae	.LBB10_99
# %bb.58:                               #   in Loop: Header=BB10_13 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%r11,%rax,4), %ebp
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebp, %eax
	andb	$63, %al
	leal	-28(%rax), %ebx
	cmpb	$3, %bl
	jb	.LBB10_60
# %bb.59:                               #   in Loop: Header=BB10_13 Depth=1
	cmpb	$34, %al
	jne	.LBB10_104
.LBB10_60:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %ebp          # imm = 0x7FFFFF
	jbe	.LBB10_101
	jmp	.LBB10_107
.LBB10_61:                              #   in Loop: Header=BB10_13 Depth=1
	addl	$3, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jae	.LBB10_107
.LBB10_62:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %edx
	je	.LBB10_11
# %bb.63:                               #   in Loop: Header=BB10_13 Depth=1
	leal	(%r10,%rbp), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r10d
	jge	.LBB10_11
# %bb.64:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%esi, %eax
	jg	.LBB10_11
# %bb.65:                               #   in Loop: Header=BB10_13 Depth=1
	addl	%r10d, %ebp
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebp, %r10d
	jmp	.LBB10_11
.LBB10_66:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, 8(%rsp)             # 4-byte Folded Reload
	jne	.LBB10_12
# %bb.67:                               #   in Loop: Header=BB10_13 Depth=1
	leal	2(%r10), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %eax
	jge	.LBB10_107
# %bb.68:                               #   in Loop: Header=BB10_13 Depth=1
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%r11,%rax,4), %ebp
	movl	%ebp, %eax
	andl	$63, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$34, %eax
	jne	.LBB10_12
# %bb.69:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	$8372224, %ebp          # imm = 0x7FC000
	jne	.LBB10_12
	jmp	.LBB10_107
.LBB10_70:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r14d
	jg	.LBB10_12
# %bb.71:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %ebp
	jl	.LBB10_12
	jmp	.LBB10_102
.LBB10_72:                              #   in Loop: Header=BB10_13 Depth=1
	addl	$1, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r14d
	jae	.LBB10_107
# %bb.73:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r14d
	jne	.LBB10_12
	jmp	.LBB10_102
.LBB10_74:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	8(%rsp), %ebp           # 4-byte Folded Reload
	jl	.LBB10_12
	jmp	.LBB10_107
.LBB10_75:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %ebp
	jl	.LBB10_12
	jmp	.LBB10_98
.LBB10_76:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	je	.LBB10_107
# %bb.77:                               #   in Loop: Header=BB10_13 Depth=1
	movq	8(%rsp), %rax           # 8-byte Reload
	addl	%r14d, %eax
	addl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jae	.LBB10_107
# %bb.78:                               #   in Loop: Header=BB10_13 Depth=1
	addl	$2, %r14d
	jmp	.LBB10_101
.LBB10_79:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebp, %ebp
	jle	.LBB10_81
# %bb.80:                               #   in Loop: Header=BB10_13 Depth=1
	addl	%r14d, %ebp
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebp
	jge	.LBB10_107
.LBB10_81:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rsp)             # 4-byte Folded Reload
	jne	.LBB10_12
# %bb.82:                               #   in Loop: Header=BB10_13 Depth=1
	addl	$1, %r10d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	32(%rsp), %r10d         # 4-byte Folded Reload
	jl	.LBB10_12
	jmp	.LBB10_107
.LBB10_83:                              #   in Loop: Header=BB10_13 Depth=1
	cmpl	88(%rdi), %ebp
	movl	$42, __A_VARIABLE(%rip)
	jge	.LBB10_106
# %bb.84:                               #   in Loop: Header=BB10_13 Depth=1
	movq	32(%rdi), %rax
	movslq	%ebp, %rbp
	movq	(%rax,%rbp,8), %rax
	movzbl	112(%rax), %ebp
	movq	%r10, %r12
	addl	%ebp, %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %r10d
	jge	.LBB10_107
# %bb.85:                               #   in Loop: Header=BB10_13 Depth=1
	movq	%r11, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	%bpl, %bpl
	je	.LBB10_89
# %bb.86:                               #   in Loop: Header=BB10_13 Depth=1
	movq	40(%rsp), %rax          # 8-byte Reload
	movq	16(%rsp), %rbx          # 8-byte Reload
	leaq	(%rax,%rbx,4), %r11
	xorl	%ebx, %ebx
.LBB10_87:                              #   Parent Loop BB10_13 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r11,%rbx,4), %eax
	andl	$59, %eax
	orl	$4, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB10_107
# %bb.88:                               #   in Loop: Header=BB10_87 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	cmpq	%rbp, %rbx
	jb	.LBB10_87
.LBB10_89:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$255, %edx
	movq	%r14, %r11
	je	.LBB10_91
# %bb.90:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %r12d
.LBB10_91:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r10
	jmp	.LBB10_12
.LBB10_92:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r9b
	je	.LBB10_107
# %bb.93:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r9b
	jne	.LBB10_107
# %bb.94:                               #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebp, %ebp
	jne	.LBB10_98
# %bb.95:                               #   in Loop: Header=BB10_13 Depth=1
	movq	%rbp, %r12
	movq	%r10, %rbp
	movq	16(%rsp), %rax          # 8-byte Reload
	movl	4(%r11,%rax,4), %r10d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %eax
	andb	$63, %al
	leal	-28(%rax), %ebx
	cmpb	$3, %bl
	jb	.LBB10_97
# %bb.96:                               #   in Loop: Header=BB10_13 Depth=1
	cmpb	$34, %al
	jne	.LBB10_104
.LBB10_97:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %r10d         # imm = 0x7FFFFF
	movq	%rbp, %r10
	movq	%r12, %rbp
	ja	.LBB10_107
.LBB10_98:                              #   in Loop: Header=BB10_13 Depth=1
	leal	(%r14,%rbp), %eax
	addl	$-1, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jle	.LBB10_12
	jmp	.LBB10_107
.LBB10_99:                              #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_101
# %bb.100:                              #   in Loop: Header=BB10_13 Depth=1
	movq	%rax, %rbx
	addl	%r14d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %ebx
	jg	.LBB10_107
.LBB10_101:                             #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r14d
	jg	.LBB10_12
.LBB10_102:                             #   in Loop: Header=BB10_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r10d, %eax
	movl	%r10d, 4(%rsp)          # 4-byte Spill
	jmp	.LBB10_12
.LBB10_103:                             #   in Loop: Header=BB10_13 Depth=1
	movzbl	%bpl, %eax
	cmpl	76(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB10_34
.LBB10_104:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_105:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_106:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_107:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB10_108:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_109:
	movslq	4(%rsp), %rax           # 4-byte Folded Reload
	movl	(%r11,%rax,4), %eax
	jmp	.LBB10_108
.Lfunc_end10:
	.size	symbexec, .Lfunc_end10-symbexec
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_66
	.quad	.LBB10_70
	.quad	.LBB10_53
	.quad	.LBB10_54
	.quad	.LBB10_12
	.quad	.LBB10_54
	.quad	.LBB10_53
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_72
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_74
	.quad	.LBB10_62
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_12
	.quad	.LBB10_55
	.quad	.LBB10_55
	.quad	.LBB10_75
	.quad	.LBB10_61
	.quad	.LBB10_61
	.quad	.LBB10_76
	.quad	.LBB10_79
	.quad	.LBB10_12
	.quad	.LBB10_83
	.quad	.LBB10_92
                                        # -- End function
	.text
	.hidden	luaG_typeerror          # -- Begin function luaG_typeerror
	.globl	luaG_typeerror
	.p2align	4, 0x90
	.type	luaG_typeerror,@function
luaG_typeerror:                         # @luaG_typeerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	$0, -32(%rbp)
	movslq	8(%rsi), %rax
	movq	luaT_typenames(,%rax,8), %r15
	movq	40(%rdi), %rsi
	movq	(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rsi), %rcx
	.p2align	4, 0x90
.LBB11_1:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jae	.LBB11_4
# %bb.2:                                #   in Loop: Header=BB11_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdx
	je	.LBB11_6
# %bb.3:                                #   in Loop: Header=BB11_1 Depth=1
	addq	$16, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_1
.LBB11_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_5:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	subq	24(%rbx), %rdx
	shrq	$4, %rdx
	leaq	-32(%rbp), %rcx
	movq	%rbx, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	getobjname
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_5
# %bb.7:
	movq	-32(%rbp), %r8
	movl	$.L.str, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%rax, %rcx
	movq	%r15, %r9
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB11_8
.Lfunc_end11:
	.size	luaG_typeerror, .Lfunc_end11-luaG_typeerror
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function getobjname
	.type	getobjname,@function
getobjname:                             # @getobjname
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %r13d
	movq	8(%rsi), %rdx
	cmpl	$6, 8(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB12_12
# %bb.1:
	movq	(%rdx), %rax
	cmpb	$0, 10(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB12_2
.LBB12_12:
	xorl	%eax, %eax
.LBB12_29:
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
.LBB12_2:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	32(%rax), %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, 40(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	je	.LBB12_4
# %bb.3:
	movq	24(%rbx), %r12
	jmp	.LBB12_5
.LBB12_4:
	movq	48(%r15), %r12
	movq	%r12, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rdx), %rax
.LBB12_5:
	movq	32(%rax), %rax
	subq	24(%rax), %r12
	shrq	$2, %r12
	addl	$-1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r13), %esi
	movq	%r14, %rdi
	movl	%r12d, %edx
	callq	luaF_getlocalname
	movq	%rax, %rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.14, %eax
	testq	%rcx, %rcx
	je	.LBB12_6
.LBB12_28:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_29
.LBB12_6:
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	symbexec
                                        # kill: def $eax killed $eax def $rax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$63, %cl
	cmpb	$11, %cl
	ja	.LBB12_11
# %bb.7:
	movl	%eax, %ecx
	andl	$63, %ecx
	jmpq	*.LJTI12_0(,%rcx,8)
.LBB12_9:
	movl	%eax, %ecx
	shrl	$6, %ecx
	movzbl	%cl, %ecx
	shrl	$23, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jae	.LBB12_10
# %bb.13:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	movq	-48(%rbp), %rcx         # 8-byte Reload
	callq	getobjname
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_28
.LBB12_19:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	56(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB12_20
# %bb.21:
	shrl	$23, %eax
	movq	(%rcx,%rax,8), %rax
	addq	$24, %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_22
.LBB12_8:
	shrl	$14, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	16(%rcx), %rcx
	shlq	$4, %rax
	movq	(%rcx,%rax), %rax
	addq	$24, %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$.L.str.15, %eax
	jmp	.LBB12_28
.LBB12_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.17, %ecx
	testl	$4194304, %eax          # imm = 0x400000
	jne	.LBB12_16
# %bb.15:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB12_18
.LBB12_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.17, %ecx
	testl	$4194304, %eax          # imm = 0x400000
	jne	.LBB12_25
# %bb.24:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB12_27
.LBB12_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_12
.LBB12_16:
	shrl	$14, %eax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	16(%rdx), %rdx
	movzbl	%al, %eax
	shlq	$4, %rax
	cmpl	$4, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB12_18
# %bb.17:
	movq	(%rdx,%rax), %rcx
	addq	$24, %rcx
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rsi)
	movl	$.L.str.16, %eax
	jmp	.LBB12_28
.LBB12_25:
	shrl	$14, %eax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	16(%rdx), %rdx
	movzbl	%al, %eax
	shlq	$4, %rax
	cmpl	$4, 8(%rdx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jne	.LBB12_27
# %bb.26:
	movq	(%rdx,%rax), %rcx
	addq	$24, %rcx
.LBB12_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%rsi)
	movl	$.L.str.19, %eax
	jmp	.LBB12_28
.LBB12_20:
	movl	$.L.str.17, %eax
.LBB12_22:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$.L.str.18, %eax
	jmp	.LBB12_28
.Lfunc_end12:
	.size	getobjname, .Lfunc_end12-getobjname
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_9
	.quad	.LBB12_11
	.quad	.LBB12_11
	.quad	.LBB12_11
	.quad	.LBB12_19
	.quad	.LBB12_8
	.quad	.LBB12_14
	.quad	.LBB12_11
	.quad	.LBB12_11
	.quad	.LBB12_11
	.quad	.LBB12_11
	.quad	.LBB12_23
                                        # -- End function
	.text
	.hidden	luaG_runerror           # -- Begin function luaG_runerror
	.globl	luaG_runerror
	.p2align	4, 0x90
	.type	luaG_runerror,@function
luaG_runerror:                          # @luaG_runerror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$272, %rsp              # imm = 0x110
	movq	%rdi, %rbx
	testb	%al, %al
	je	.LBB13_2
# %bb.1:
	movaps	%xmm0, -192(%rbp)
	movaps	%xmm1, -176(%rbp)
	movaps	%xmm2, -160(%rbp)
	movaps	%xmm3, -144(%rbp)
	movaps	%xmm4, -128(%rbp)
	movaps	%xmm5, -112(%rbp)
	movaps	%xmm6, -96(%rbp)
	movaps	%xmm7, -80(%rbp)
.LBB13_2:
	movq	%rdx, -224(%rbp)
	movq	%rcx, -216(%rbp)
	movq	%r8, -208(%rbp)
	movq	%r9, -200(%rbp)
	leaq	-240(%rbp), %rax
	movq	%rax, -48(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -56(%rbp)
	movabsq	$206158430224, %rax     # imm = 0x3000000010
	movq	%rax, -64(%rbp)
	leaq	-64(%rbp), %rdx
	movq	%rbx, %rdi
	callq	luaO_pushvfstring
	movq	%rax, %r14
	movq	40(%rbx), %rcx
	movq	8(%rcx), %rax
	cmpl	$6, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_13
# %bb.3:
	movq	(%rax), %rdx
	cmpb	$0, 10(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_13
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	48(%rbx), %rdx
	movq	%rdx, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rax), %rcx
	movq	32(%rcx), %rax
	subq	24(%rax), %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB13_5
# %bb.6:
	movq	40(%rax), %rsi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB13_7
# %bb.8:
	shlq	$30, %rdx
	movabsq	$-4294967296, %rdi      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rdi
	sarq	$30, %rdi
	movl	(%rsi,%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_9
.LBB13_5:
	movl	$-1, %r15d
	jmp	.LBB13_9
.LBB13_7:
	xorl	%r15d, %r15d
.LBB13_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$0, 10(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB13_11
# %bb.10:
	xorl	%eax, %eax
	jmp	.LBB13_12
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	64(%rax), %rsi
	addq	$24, %rsi
	leaq	-304(%rbp), %r12
	movl	$60, %edx
	movq	%r12, %rdi
	callq	luaO_chunkid
	movl	$.L.str.20, %esi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	movl	%r15d, %ecx
	movq	%r14, %r8
	xorl	%eax, %eax
	callq	luaO_pushfstring
	movl	$42, __A_VARIABLE(%rip)
.LBB13_13:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	luaG_errormsg
	movl	$42, __A_VARIABLE(%rip)
	addq	$272, %rsp              # imm = 0x110
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaG_runerror, .Lfunc_end13-luaG_runerror
                                        # -- End function
	.hidden	luaG_concaterror        # -- Begin function luaG_concaterror
	.globl	luaG_concaterror
	.p2align	4, 0x90
	.type	luaG_concaterror,@function
luaG_concaterror:                       # @luaG_concaterror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	8(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB14_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB14_3
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rsi
.LBB14_3:
	movl	$.L.str.2, %edx
	callq	luaG_typeerror
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaG_concaterror, .Lfunc_end14-luaG_concaterror
                                        # -- End function
	.hidden	luaG_aritherror         # -- Begin function luaG_aritherror
	.globl	luaG_aritherror
	.p2align	4, 0x90
	.type	luaG_aritherror,@function
luaG_aritherror:                        # @luaG_aritherror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	luaV_tonumber
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB15_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
.LBB15_2:
	movl	$.L.str.3, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	luaG_typeerror
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	luaG_aritherror, .Lfunc_end15-luaG_aritherror
                                        # -- End function
	.hidden	luaG_ordererror         # -- Begin function luaG_ordererror
	.globl	luaG_ordererror
	.p2align	4, 0x90
	.type	luaG_ordererror,@function
luaG_ordererror:                        # @luaG_ordererror
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdx, %rax
	movslq	8(%rsi), %rcx
	movq	luaT_typenames(,%rcx,8), %rdx
	movslq	8(%rax), %rax
	movq	luaT_typenames(,%rax,8), %rcx
	movb	2(%rdx), %al
	cmpb	2(%rcx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB16_2
# %bb.1:
	movl	$.L.str.4, %esi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB16_3
.LBB16_2:
	movl	$.L.str.5, %esi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	popq	%rbp
	retq
.Lfunc_end16:
	.size	luaG_ordererror, .Lfunc_end16-luaG_ordererror
                                        # -- End function
	.hidden	luaG_errormsg           # -- Begin function luaG_errormsg
	.globl	luaG_errormsg
	.p2align	4, 0x90
	.type	luaG_errormsg,@function
luaG_errormsg:                          # @luaG_errormsg
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	176(%rdi), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB17_6
# %bb.1:
	movq	64(%rbx), %r15
	cmpl	$6, 8(%r15,%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB17_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
.LBB17_3:
	movq	16(%rbx), %rax
	movq	-16(%rax), %rcx
	movq	%rcx, (%rax)
	movl	-8(%rax), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%rbx), %rax
	movq	(%r15,%r14), %rcx
	movq	%rcx, -16(%rax)
	movl	8(%r15,%r14), %ecx
	movl	%ecx, -8(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$16, %rax
	jg	.LBB17_5
# %bb.4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rsi
.LBB17_5:
	leaq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
	addq	$-16, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	luaD_call
	movl	$42, __A_VARIABLE(%rip)
.LBB17_6:
	movq	%rbx, %rdi
	movl	$2, %esi
	callq	luaD_throw
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end17:
	.size	luaG_errormsg, .Lfunc_end17-luaG_errormsg
                                        # -- End function
	.hidden	luaT_typenames
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"attempt to %s %s '%s' (a %s value)"
	.size	.L.str, 35

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"attempt to %s a %s value"
	.size	.L.str.1, 25

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"concatenate"
	.size	.L.str.2, 12

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"perform arithmetic on"
	.size	.L.str.3, 22

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"attempt to compare two %s values"
	.size	.L.str.4, 33

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"attempt to compare %s with %s"
	.size	.L.str.5, 30

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"(*temporary)"
	.size	.L.str.6, 13

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.zero	1
	.size	.L.str.7, 1

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"tail"
	.size	.L.str.8, 5

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"=(tail call)"
	.size	.L.str.9, 13

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"=[C]"
	.size	.L.str.10, 5

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"C"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"main"
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"Lua"
	.size	.L.str.13, 4

	.hidden	luaP_opmodes
	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"local"
	.size	.L.str.14, 6

	.type	.L.str.15,@object       # @.str.15
.L.str.15:
	.asciz	"global"
	.size	.L.str.15, 7

	.type	.L.str.16,@object       # @.str.16
.L.str.16:
	.asciz	"field"
	.size	.L.str.16, 6

	.type	.L.str.17,@object       # @.str.17
.L.str.17:
	.asciz	"?"
	.size	.L.str.17, 2

	.type	.L.str.18,@object       # @.str.18
.L.str.18:
	.asciz	"upvalue"
	.size	.L.str.18, 8

	.type	.L.str.19,@object       # @.str.19
.L.str.19:
	.asciz	"method"
	.size	.L.str.19, 7

	.type	.L.str.20,@object       # @.str.20
.L.str.20:
	.asciz	"%s:%d: %s"
	.size	.L.str.20, 10

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaA_pushobject
	.hidden	luaD_growstack
	.hidden	luaV_tonumber
	.hidden	luaD_throw
	.hidden	luaD_call
	.hidden	luaO_pushvfstring
	.hidden	luaF_getlocalname
	.hidden	luaO_chunkid
	.hidden	luaH_new
	.hidden	luaH_setnum
	.hidden	luaO_pushfstring
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
