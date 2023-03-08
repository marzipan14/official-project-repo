	.text
	.file	"ldebug.c"
	.globl	lua_sethook             # -- Begin function lua_sethook
	.p2align	4, 0x90
	.type	lua_sethook,@function
lua_sethook:                            # @lua_sethook
# %bb.0:
	testq	%rsi, %rsi
	sete	%r8b
	testl	%edx, %edx
	sete	%al
	xorl	%r9d, %r9d
	orb	%r8b, %al
	movl	$0, %eax
	cmoveq	%rsi, %rax
	movq	%rax, 112(%rdi)
	movl	%ecx, 104(%rdi)
	cmovnel	%r9d, %edx
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
	movq	40(%rdi), %rcx
	testl	%esi, %esi
	jle	.LBB4_7
# %bb.1:
	movq	80(%rdi), %r8
	jmp	.LBB4_2
	.p2align	4, 0x90
.LBB4_6:                                #   in Loop: Header=BB4_2 Depth=1
	addq	$-40, %rcx
	testl	%esi, %esi
	jle	.LBB4_7
.LBB4_2:                                # =>This Inner Loop Header: Depth=1
	cmpq	%r8, %rcx
	jbe	.LBB4_3
# %bb.4:                                #   in Loop: Header=BB4_2 Depth=1
	addl	$-1, %esi
	movq	8(%rcx), %rax
	movq	(%rax), %rax
	cmpb	$0, 10(%rax)
	jne	.LBB4_6
# %bb.5:                                #   in Loop: Header=BB4_2 Depth=1
	subl	36(%rcx), %esi
	jmp	.LBB4_6
.LBB4_7:
	testl	%esi, %esi
	je	.LBB4_8
# %bb.10:
	movl	$0, 116(%rdx)
	jmp	.LBB4_11
.LBB4_3:
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB4_8:
	xorl	%eax, %eax
	subq	80(%rdi), %rcx
	jbe	.LBB4_12
# %bb.9:
	shrq	$3, %rcx
	imull	$-858993459, %ecx, %eax # imm = 0xCCCCCCCD
	movl	%eax, 116(%rdx)
.LBB4_11:
	movl	$1, %eax
.LBB4_12:
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
	movslq	%edx, %r12
	jne	.LBB5_2
# %bb.1:
	movq	(%rsi), %r8
	cmpb	$0, 10(%r8)
	je	.LBB5_6
.LBB5_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	leaq	16(%r15), %rcx
	cmpq	%rbx, 40(%r15)
	leaq	48(%rbx), %rax
	cmoveq	%rcx, %rax
	testl	%r14d, %r14d
	jle	.LBB5_14
# %bb.4:
	movq	(%rax), %rcx
	movq	(%rbx), %rax
	subq	%rax, %rcx
	sarq	$4, %rcx
	cmpq	%r12, %rcx
	jl	.LBB5_14
# %bb.5:
	movl	$.L.str.6, %r13d
.LBB5_12:
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
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.7:
	cmpq	%rbx, 40(%r15)
	je	.LBB5_9
# %bb.8:
	movq	24(%rax,%rcx,8), %rdx
	jmp	.LBB5_10
.LBB5_9:
	movq	48(%r15), %rdx
	movq	%rdx, 24(%rax,%rcx,8)
	movq	(%rsi), %r8
.LBB5_10:
	movq	32(%r8), %rax
	subq	24(%rax), %rdx
	shrq	$2, %rdx
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaF_getlocalname
	testq	%rax, %rax
	je	.LBB5_3
# %bb.11:
	movq	%rax, %r13
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
	movslq	%edx, %r15
	jne	.LBB6_2
# %bb.1:
	movq	(%rsi), %r8
	cmpb	$0, 10(%r8)
	je	.LBB6_6
.LBB6_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_3:
	leaq	48(%r12), %rax
	cmpq	%r12, 40(%rbx)
	leaq	16(%rbx), %rbx
	cmoveq	%rbx, %rax
	testl	%r14d, %r14d
	jle	.LBB6_14
# %bb.4:
	movq	(%rax), %rax
	movq	(%r12), %rcx
	subq	%rcx, %rax
	sarq	$4, %rax
	cmpq	%r15, %rax
	jl	.LBB6_14
# %bb.5:
	movl	$.L.str.6, %eax
.LBB6_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	(%rbx), %rdx
	shlq	$4, %r15
	movq	-16(%rdx), %rsi
	movq	%rsi, -16(%r15,%rcx)
	movl	-8(%rdx), %edx
	movl	%edx, -8(%r15,%rcx)
	jmp	.LBB6_13
.LBB6_14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB6_13:
	addq	$-16, (%rbx)
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
	testq	%rdi, %rdi
	je	.LBB6_3
# %bb.7:
	cmpq	%r12, 40(%rbx)
	je	.LBB6_9
# %bb.8:
	movq	24(%rax,%rcx,8), %rdx
	jmp	.LBB6_10
.LBB6_9:
	movq	48(%rbx), %rdx
	movq	%rdx, 24(%rax,%rcx,8)
	movq	(%rsi), %r8
.LBB6_10:
	movq	32(%r8), %rax
	subq	24(%rax), %rdx
	shrq	$2, %rdx
	addl	$-1, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
                                        # kill: def $edx killed $edx killed $rdx
	callq	luaF_getlocalname
	testq	%rax, %rax
	je	.LBB6_3
# %bb.11:
	movq	(%r12), %rcx
	addq	$16, %rbx
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
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_2
# %bb.1:
	movq	16(%rdi), %rax
	addq	$1, %rbx
	movq	-16(%rax), %r13
	addq	$-16, %rax
	movq	%rax, 16(%rdi)
	xorl	%r14d, %r14d
	testq	%r13, %r13
	jne	.LBB7_4
	jmp	.LBB7_45
.LBB7_2:
	movslq	116(%r12), %rax
	testq	%rax, %rax
	je	.LBB7_45
# %bb.3:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	80(%rcx), %rcx
	leaq	(%rax,%rax,4), %rax
	leaq	(%rcx,%rax,8), %r14
	movq	8(%rcx,%rax,8), %rax
	movq	(%rax), %r13
	testq	%r13, %r13
	je	.LBB7_45
.LBB7_4:
	movq	%rbx, %rcx
	movb	(%rbx), %al
	testb	%al, %al
	je	.LBB7_47
# %bb.5:
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
	jmp	.LBB7_8
.LBB7_6:                                #   in Loop: Header=BB7_8 Depth=1
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	.p2align	4, 0x90
.LBB7_7:                                #   in Loop: Header=BB7_8 Depth=1
	movzbl	(%r15), %eax
	addq	$1, %r15
	testb	%al, %al
	je	.LBB7_46
.LBB7_8:                                # =>This Inner Loop Header: Depth=1
	movsbl	%al, %eax
	addl	$-76, %eax
	cmpl	$41, %eax
	ja	.LBB7_6
# %bb.9:                                #   in Loop: Header=BB7_8 Depth=1
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_10:                               #   in Loop: Header=BB7_8 Depth=1
	cmpb	$0, 10(%r13)
	je	.LBB7_26
# %bb.11:                               #   in Loop: Header=BB7_8 Depth=1
	movq	$.L.str.10, 32(%r12)
	movl	$.L.str.10, %esi
	movl	$-1, 48(%r12)
	movl	$.L.str.11, %ecx
	movl	$-1, %eax
	jmp	.LBB7_27
.LBB7_12:                               #   in Loop: Header=BB7_8 Depth=1
	testq	%r14, %r14
	je	.LBB7_28
# %bb.13:                               #   in Loop: Header=BB7_8 Depth=1
	movq	8(%r14), %rdx
	cmpl	$6, 8(%rdx)
	jne	.LBB7_15
# %bb.14:                               #   in Loop: Header=BB7_8 Depth=1
	movq	(%rdx), %rcx
	cmpb	$0, 10(%rcx)
	je	.LBB7_29
.LBB7_15:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB7_16:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$-1, %eax
.LBB7_17:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, 40(%r12)
	jmp	.LBB7_7
.LBB7_18:                               #   in Loop: Header=BB7_8 Depth=1
	testq	%r14, %r14
	je	.LBB7_33
# %bb.19:                               #   in Loop: Header=BB7_8 Depth=1
	movq	8(%r14), %rax
	cmpl	$6, 8(%rax)
	jne	.LBB7_21
# %bb.20:                               #   in Loop: Header=BB7_8 Depth=1
	movq	(%rax), %rax
	cmpb	$0, 10(%rax)
	je	.LBB7_31
.LBB7_21:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-32(%r14), %rsi
	cmpl	$6, 8(%rsi)
	jne	.LBB7_32
# %bb.22:                               #   in Loop: Header=BB7_8 Depth=1
	movq	(%rsi), %rax
	cmpb	$0, 10(%rax)
	jne	.LBB7_32
# %bb.23:                               #   in Loop: Header=BB7_8 Depth=1
	movq	32(%rax), %rdx
	movq	24(%rdx), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-64(%rbp), %rdi         # 8-byte Reload
	cmpq	%rdi, 40(%rcx)
	je	.LBB7_40
# %bb.24:                               #   in Loop: Header=BB7_8 Depth=1
	addq	$24, %rdx
	movq	-16(%r14), %rcx
	jmp	.LBB7_41
.LBB7_25:                               #   in Loop: Header=BB7_8 Depth=1
	movzbl	11(%r13), %eax
	movl	%eax, 44(%r12)
	jmp	.LBB7_7
.LBB7_26:                               #   in Loop: Header=BB7_8 Depth=1
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
.LBB7_27:                               #   in Loop: Header=BB7_8 Depth=1
	movl	%eax, 52(%r12)
	movq	%rcx, 24(%r12)
	movl	$60, %edx
	movq	-80(%rbp), %rdi         # 8-byte Reload
	callq	luaO_chunkid
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_7
.LBB7_28:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$-1, %eax
	movl	%eax, 40(%r12)
	jmp	.LBB7_7
.LBB7_29:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpq	%r14, 40(%rax)
	je	.LBB7_35
# %bb.30:                               #   in Loop: Header=BB7_8 Depth=1
	movq	24(%r14), %rax
	jmp	.LBB7_36
.LBB7_31:                               #   in Loop: Header=BB7_8 Depth=1
	cmpl	$0, 36(%r14)
	jle	.LBB7_21
.LBB7_32:                               #   in Loop: Header=BB7_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB7_33:                               #   in Loop: Header=BB7_8 Depth=1
	movq	$0, 16(%r12)
.LBB7_34:                               #   in Loop: Header=BB7_8 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movdqa	-96(%rbp), %xmm0        # 16-byte Reload
	movdqu	%xmm0, (%rax)
	jmp	.LBB7_7
.LBB7_35:                               #   in Loop: Header=BB7_8 Depth=1
	movq	48(%rax), %rax
	movq	%rax, 24(%r14)
	movq	(%rdx), %rcx
.LBB7_36:                               #   in Loop: Header=BB7_8 Depth=1
	movq	32(%rcx), %rcx
	subq	24(%rcx), %rax
	movq	%rax, %rdx
	shrq	$2, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jle	.LBB7_16
# %bb.37:                               #   in Loop: Header=BB7_8 Depth=1
	movq	40(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB7_44
# %bb.38:                               #   in Loop: Header=BB7_8 Depth=1
	shlq	$30, %rax
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rax
	sarq	$30, %rax
	movl	(%rcx,%rax), %eax
	jmp	.LBB7_17
.LBB7_40:                               #   in Loop: Header=BB7_8 Depth=1
	movq	48(%rcx), %rcx
	movq	%rcx, -16(%r14)
	movq	(%rsi), %rdx
	movq	32(%rdx), %rdx
	addq	$24, %rdx
.LBB7_41:                               #   in Loop: Header=BB7_8 Depth=1
	subq	(%rdx), %rcx
	shlq	$30, %rcx
	movabsq	$-4294967296, %rdx      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rcx
	sarq	$30, %rcx
	movl	(%rax,%rcx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	andb	$63, %cl
	cmpb	$33, %cl
	ja	.LBB7_32
# %bb.42:                               #   in Loop: Header=BB7_8 Depth=1
	movl	%eax, %ecx
	andl	$63, %ecx
	movabsq	$9395240960, %rdx       # imm = 0x230000000
	btq	%rcx, %rdx
	jae	.LBB7_32
# %bb.43:                               #   in Loop: Header=BB7_8 Depth=1
	shrl	$6, %eax
	movzbl	%al, %edx
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	callq	getobjname
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 16(%r12)
	testq	%rax, %rax
	jne	.LBB7_7
	jmp	.LBB7_34
.LBB7_44:                               #   in Loop: Header=BB7_8 Depth=1
	xorl	%eax, %eax
	jmp	.LBB7_17
.LBB7_45:
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
	jmp	.LBB7_48
.LBB7_46:
	xorl	%r14d, %r14d
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB7_48
.LBB7_47:
	movl	$1, %r15d
	xorl	%r14d, %r14d
	movq	%rcx, %rbx
.LBB7_48:
	movq	-56(%rbp), %r12         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movl	$102, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB7_54
# %bb.49:
	movq	16(%r12), %rax
	xorl	%ecx, %ecx
	testb	%r14b, %r14b
	jne	.LBB7_51
# %bb.50:
	movq	%r13, (%rax)
	movl	$6, %ecx
.LBB7_51:
	movl	%ecx, 8(%rax)
	movq	16(%r12), %rax
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB7_53
# %bb.52:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r12), %rax
.LBB7_53:
	addq	$16, %rax
	movq	%rax, 16(%r12)
.LBB7_54:
	movq	%rbx, %rdi
	movl	$76, %esi
	callq	strchr
	testq	%rax, %rax
	je	.LBB7_61
# %bb.55:
	testb	%r14b, %r14b
	jne	.LBB7_57
# %bb.56:
	cmpb	$0, 10(%r13)
	je	.LBB7_62
.LBB7_57:
	leaq	16(%r12), %r14
	movq	16(%r12), %rax
	movl	$0, 8(%rax)
.LBB7_58:
	movq	56(%r12), %rcx
	subq	%rax, %rcx
	cmpq	$16, %rcx
	jg	.LBB7_60
# %bb.59:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%r12), %rax
.LBB7_60:
	addq	$16, %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_61:
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
.LBB7_62:
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	movq	%r12, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaH_new
	movq	%rax, %r15
	movq	32(%r13), %rax
	cmpl	$0, 84(%rax)
	jle	.LBB7_65
# %bb.63:                               # %.preheader
	movq	40(%rax), %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB7_64:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rbx,4), %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	luaH_setnum
	movl	$1, (%rax)
	movl	$1, 8(%rax)
	addq	$1, %rbx
	movq	32(%r13), %rax
	movslq	84(%rax), %rax
	cmpq	%rax, %rbx
	jl	.LBB7_64
.LBB7_65:
	leaq	16(%r12), %r14
	movq	16(%r12), %rax
	movq	%r15, (%rax)
	movl	$5, 8(%rax)
	movq	16(%r12), %rax
	movl	-44(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB7_58
.Lfunc_end7:
	.size	lua_getinfo, .Lfunc_end7-lua_getinfo
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_7
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_10
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_7
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_12
	.quad	.LBB7_6
	.quad	.LBB7_18
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_6
	.quad	.LBB7_25
                                        # -- End function
	.text
	.hidden	luaG_checkopenop        # -- Begin function luaG_checkopenop
	.globl	luaG_checkopenop
	.p2align	4, 0x90
	.type	luaG_checkopenop,@function
luaG_checkopenop:                       # @luaG_checkopenop
# %bb.0:
                                        # kill: def $edi killed $edi def $rdi
	movl	%edi, %ecx
	andb	$63, %cl
	xorl	%eax, %eax
	cmpb	$34, %cl
	ja	.LBB8_3
# %bb.1:
	movl	%edi, %ecx
	andl	$63, %ecx
	movabsq	$19058917376, %rdx      # imm = 0x470000000
	btq	%rcx, %rdx
	jae	.LBB8_3
# %bb.2:
	xorl	%eax, %eax
	cmpl	$8388608, %edi          # imm = 0x800000
	setb	%al
.LBB8_3:
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
	subq	$56, %rsp
	movzbl	115(%rdi), %r10d
	cmpl	$250, %r10d
	ja	.LBB10_89
# %bb.1:
	movzbl	114(%rdi), %r8d
	movl	%r8d, %eax
	andl	$5, %eax
	cmpl	$4, %eax
	je	.LBB10_89
# %bb.2:
	movzbl	113(%rdi), %eax
	movl	%r8d, %ecx
	andl	$1, %ecx
	addl	%eax, %ecx
	cmpl	%r10d, %ecx
	ja	.LBB10_89
# %bb.3:
	movzbl	112(%rdi), %ebp
	cmpl	%ebp, 72(%rdi)
	jg	.LBB10_89
# %bb.4:
	movslq	80(%rdi), %rbx
	movl	84(%rdi), %ecx
	cmpl	%ebx, %ecx
	sete	%al
	testl	%ecx, %ecx
	sete	%cl
	testl	%ebx, %ebx
	jle	.LBB10_89
# %bb.5:
	orb	%al, %cl
	je	.LBB10_89
# %bb.6:
	movl	%ebp, 36(%rsp)          # 4-byte Spill
	movq	24(%rdi), %rax
	movq	%rbx, 8(%rsp)           # 8-byte Spill
	movq	%rax, (%rsp)            # 8-byte Spill
	movl	-4(%rax,%rbx,4), %ebp
	movl	%ebp, %ecx
	andl	$63, %ecx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$30, %ecx
	jne	.LBB10_91
# %bb.7:
	movl	%esi, %r15d
	movl	%ebp, %eax
	testl	%esi, %esi
	jle	.LBB10_91
# %bb.8:
	movq	8(%rsp), %rax           # 8-byte Reload
	leaq	-1(%rax), %rcx
	andb	$6, %r8b
	movq	(%rsp), %rax            # 8-byte Reload
	addq	$4, %rax
	movq	%rax, 48(%rsp)          # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rcx, %rax
	movq	%rcx, 40(%rsp)          # 8-byte Spill
	movl	%ecx, %r11d
	jmp	.LBB10_11
.LBB10_9:                               #   in Loop: Header=BB10_11 Depth=1
	movq	16(%rdi), %rax
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	cmpl	$4, 8(%rax,%rcx)
	jne	.LBB10_90
.LBB10_10:                              #   in Loop: Header=BB10_11 Depth=1
	addl	$1, %r13d
	cmpl	%r15d, %r13d
	jge	.LBB10_92
.LBB10_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_25 Depth 2
                                        #     Child Loop BB10_75 Depth 2
	movslq	%r13d, %rcx
	movq	(%rsp), %rax            # 8-byte Reload
	movq	%rcx, 16(%rsp)          # 8-byte Spill
	movl	(%rax,%rcx,4), %ebx
	movl	%ebx, %eax
	andl	$63, %eax
	cmpl	$37, %eax
	ja	.LBB10_90
# %bb.12:                               #   in Loop: Header=BB10_11 Depth=1
	movl	%ebx, %ecx
	shrl	$6, %ecx
	movzbl	%cl, %esi
	cmpl	%r10d, %esi
	jae	.LBB10_90
# %bb.13:                               #   in Loop: Header=BB10_11 Depth=1
	movl	%r11d, %r14d
	movzbl	luaP_opmodes(%rax), %r9d
	movl	%r9d, %eax
	andb	$3, %al
	xorl	%ecx, %ecx
	cmpb	$2, %al
	je	.LBB10_20
# %bb.14:                               #   in Loop: Header=BB10_11 Depth=1
	cmpb	$1, %al
	je	.LBB10_28
# %bb.15:                               #   in Loop: Header=BB10_11 Depth=1
	movl	$0, %r12d
	testb	%al, %al
	jne	.LBB10_41
# %bb.16:                               #   in Loop: Header=BB10_11 Depth=1
	movl	%ebx, %r12d
	shrl	$23, %r12d
	movl	%r9d, %eax
	shrb	$4, %al
	andb	$3, %al
	cmpb	$3, %al
	je	.LBB10_30
# %bb.17:                               #   in Loop: Header=BB10_11 Depth=1
	cmpb	$2, %al
	je	.LBB10_31
# %bb.18:                               #   in Loop: Header=BB10_11 Depth=1
	testb	%al, %al
	jne	.LBB10_32
# %bb.19:                               #   in Loop: Header=BB10_11 Depth=1
	testl	%r12d, %r12d
	je	.LBB10_32
	jmp	.LBB10_89
.LBB10_20:                              #   in Loop: Header=BB10_11 Depth=1
	movl	%ebx, %r12d
	shrl	$14, %r12d
	addl	$-131071, %r12d         # imm = 0xFFFE0001
	movl	%r9d, %eax
	andl	$48, %eax
	cmpl	$32, %eax
	jne	.LBB10_41
# %bb.21:                               #   in Loop: Header=BB10_11 Depth=1
	leal	(%r12,%r13), %ebp
	xorl	%eax, %eax
	movl	%ebp, %ecx
	incl	%ecx
	js	.LBB10_91
# %bb.22:                               #   in Loop: Header=BB10_11 Depth=1
	cmpl	8(%rsp), %ecx           # 4-byte Folded Reload
	jge	.LBB10_91
# %bb.23:                               #   in Loop: Header=BB10_11 Depth=1
	testl	%ecx, %ecx
	jle	.LBB10_38
# %bb.24:                               #   in Loop: Header=BB10_11 Depth=1
	movl	%edx, 32(%rsp)          # 4-byte Spill
	movl	%r15d, 28(%rsp)         # 4-byte Spill
	movslq	%ecx, %r11
	xorl	%ecx, %ecx
.LBB10_25:                              #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movslq	%ebp, %rax
	movq	(%rsp), %r15            # 8-byte Reload
	movl	(%r15,%rax,4), %eax
	movl	$8372287, %edx          # imm = 0x7FC03F
	andl	%edx, %eax
	cmpl	$34, %eax
	jne	.LBB10_27
# %bb.26:                               #   in Loop: Header=BB10_25 Depth=2
	addq	$1, %rcx
	addl	$-1, %ebp
	cmpq	%r11, %rcx
	jl	.LBB10_25
.LBB10_27:                              #   in Loop: Header=BB10_11 Depth=1
	movl	$0, %eax
	testb	$1, %cl
	movl	$0, %ecx
	movl	28(%rsp), %r15d         # 4-byte Reload
	movl	32(%rsp), %edx          # 4-byte Reload
	je	.LBB10_41
	jmp	.LBB10_91
.LBB10_28:                              #   in Loop: Header=BB10_11 Depth=1
	movl	%ebx, %r12d
	shrl	$14, %r12d
	movl	%r9d, %eax
	andl	$48, %eax
	cmpl	$48, %eax
	jne	.LBB10_41
# %bb.29:                               #   in Loop: Header=BB10_11 Depth=1
	xorl	%ecx, %ecx
	movl	$0, %eax
	cmpl	76(%rdi), %r12d
	jl	.LBB10_41
	jmp	.LBB10_91
.LBB10_30:                              #   in Loop: Header=BB10_11 Depth=1
	testl	%ebx, %ebx
	js	.LBB10_88
.LBB10_31:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	%r10d, %r12d
	jae	.LBB10_89
.LBB10_32:                              #   in Loop: Header=BB10_11 Depth=1
	movl	%ebx, %eax
	shrl	$14, %eax
	movl	%eax, %ebp
	andl	$511, %ebp              # imm = 0x1FF
	movl	$42, __A_VARIABLE(%rip)
	movl	%r9d, %ecx
	shrb	$2, %cl
	andb	$3, %cl
	cmpb	$3, %cl
	je	.LBB10_36
# %bb.33:                               #   in Loop: Header=BB10_11 Depth=1
	cmpb	$2, %cl
	je	.LBB10_37
# %bb.34:                               #   in Loop: Header=BB10_11 Depth=1
	testb	%cl, %cl
	movq	%rbp, %rcx
	jne	.LBB10_40
# %bb.35:                               #   in Loop: Header=BB10_11 Depth=1
	testl	%ecx, %ecx
	je	.LBB10_40
	jmp	.LBB10_89
.LBB10_36:                              #   in Loop: Header=BB10_11 Depth=1
	testl	$4194304, %ebx          # imm = 0x400000
	jne	.LBB10_39
.LBB10_37:                              #   in Loop: Header=BB10_11 Depth=1
	movq	%rbp, %rcx
	cmpl	%r10d, %ecx
	jb	.LBB10_40
	jmp	.LBB10_89
.LBB10_38:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB10_41
.LBB10_39:                              #   in Loop: Header=BB10_11 Depth=1
	movzbl	%al, %eax
	cmpl	76(%rdi), %eax
	movq	%rbp, %rcx
	jge	.LBB10_89
.LBB10_40:                              #   in Loop: Header=BB10_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB10_41:                              #   in Loop: Header=BB10_11 Depth=1
	testb	$64, %r9b
	movl	%r14d, %r11d
	cmovnel	%r13d, %r11d
	cmpl	%edx, %esi
	cmovnel	%r14d, %r11d
	testb	%r9b, %r9b
	jns	.LBB10_44
# %bb.42:                               #   in Loop: Header=BB10_11 Depth=1
	movq	%rsi, %r9
	movq	%rcx, %rsi
	leal	2(%r13), %ecx
	xorl	%eax, %eax
	cmpl	8(%rsp), %ecx           # 4-byte Folded Reload
	jge	.LBB10_91
# %bb.43:                               #   in Loop: Header=BB10_11 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	4(%rcx,%rbp,4), %ecx
	andl	$63, %ecx
	cmpl	$22, %ecx
	movq	%rsi, %rcx
	movq	%r9, %rsi
	jne	.LBB10_91
.LBB10_44:                              #   in Loop: Header=BB10_11 Depth=1
	andb	$63, %bl
	addb	$-2, %bl
	cmpb	$35, %bl
	ja	.LBB10_10
# %bb.45:                               #   in Loop: Header=BB10_11 Depth=1
	movzbl	%bl, %eax
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_46:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	36(%rsp), %r12d         # 4-byte Folded Reload
	jl	.LBB10_10
	jmp	.LBB10_90
.LBB10_47:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	testl	%r12d, %r12d
	je	.LBB10_49
# %bb.48:                               #   in Loop: Header=BB10_11 Depth=1
	addl	%esi, %r12d
	cmpl	%r10d, %r12d
	jg	.LBB10_91
.LBB10_49:                              #   in Loop: Header=BB10_11 Depth=1
	subl	$1, %ecx
	jae	.LBB10_84
# %bb.50:                               #   in Loop: Header=BB10_11 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	4(%rcx,%rbp,4), %ecx
	movl	%ecx, %ebp
	andb	$63, %bpl
	leal	-28(%rbp), %ebx
	cmpb	$3, %bl
	jb	.LBB10_52
# %bb.51:                               #   in Loop: Header=BB10_11 Depth=1
	cmpb	$34, %bpl
	jne	.LBB10_100
.LBB10_52:                              #   in Loop: Header=BB10_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jbe	.LBB10_86
	jmp	.LBB10_91
.LBB10_53:                              #   in Loop: Header=BB10_11 Depth=1
	addl	$3, %esi
	cmpl	%r10d, %esi
	jae	.LBB10_90
.LBB10_54:                              #   in Loop: Header=BB10_11 Depth=1
	leal	(%r12,%r13), %eax
	addl	$1, %eax
	cmpl	%eax, %r13d
	movl	$0, %ecx
	cmovgel	%ecx, %r12d
	cmpl	$255, %edx
	cmovel	%ecx, %r12d
	cmpl	%r15d, %eax
	cmovgl	%ecx, %r12d
	addl	%r13d, %r12d
	movl	%r12d, %r13d
	jmp	.LBB10_10
.LBB10_55:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	$1, %ecx
	jne	.LBB10_10
# %bb.56:                               #   in Loop: Header=BB10_11 Depth=1
	leal	2(%r13), %ecx
	xorl	%eax, %eax
	cmpl	8(%rsp), %ecx           # 4-byte Folded Reload
	jge	.LBB10_91
# %bb.57:                               #   in Loop: Header=BB10_11 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	movl	4(%rcx,%rsi,4), %ecx
	movl	$8372287, %esi          # imm = 0x7FC03F
	andl	%esi, %ecx
	cmpl	$34, %ecx
	jne	.LBB10_10
	jmp	.LBB10_91
.LBB10_58:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	%edx, %r12d
	movl	%r13d, %eax
	cmovll	%r11d, %eax
	cmpl	%edx, %esi
	cmovlel	%eax, %r11d
	jmp	.LBB10_10
.LBB10_59:                              #   in Loop: Header=BB10_11 Depth=1
	addl	$1, %esi
	cmpl	%r10d, %esi
	jae	.LBB10_90
# %bb.60:                               #   in Loop: Header=BB10_11 Depth=1
	cmpl	%edx, %esi
	cmovel	%r13d, %r11d
	jmp	.LBB10_10
.LBB10_61:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	%ecx, %r12d
	jl	.LBB10_10
	jmp	.LBB10_90
.LBB10_62:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	$2, %r12d
	jl	.LBB10_10
# %bb.63:                               #   in Loop: Header=BB10_11 Depth=1
	leal	(%r12,%rsi), %eax
	addl	$-1, %eax
	cmpl	%r10d, %eax
	jle	.LBB10_10
	jmp	.LBB10_90
.LBB10_64:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	testl	%ecx, %ecx
	je	.LBB10_91
# %bb.65:                               #   in Loop: Header=BB10_11 Depth=1
	addl	%esi, %ecx
	addl	$2, %ecx
	cmpl	%r10d, %ecx
	jae	.LBB10_91
# %bb.66:                               #   in Loop: Header=BB10_11 Depth=1
	addl	$2, %esi
	jmp	.LBB10_86
.LBB10_67:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	testl	%r12d, %r12d
	jle	.LBB10_69
# %bb.68:                               #   in Loop: Header=BB10_11 Depth=1
	addl	%esi, %r12d
	cmpl	%r10d, %r12d
	jge	.LBB10_91
.LBB10_69:                              #   in Loop: Header=BB10_11 Depth=1
	testl	%ecx, %ecx
	jne	.LBB10_10
# %bb.70:                               #   in Loop: Header=BB10_11 Depth=1
	addl	$1, %r13d
	cmpl	40(%rsp), %r13d         # 4-byte Folded Reload
	jl	.LBB10_10
	jmp	.LBB10_91
.LBB10_71:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	cmpl	88(%rdi), %r12d
	jge	.LBB10_91
# %bb.72:                               #   in Loop: Header=BB10_11 Depth=1
	movq	32(%rdi), %rcx
	movslq	%r12d, %rbp
	movq	(%rcx,%rbp,8), %rcx
	movzbl	112(%rcx), %ebp
	leal	(%r13,%rbp), %r9d
	cmpl	8(%rsp), %r9d           # 4-byte Folded Reload
	jge	.LBB10_91
# %bb.73:                               #   in Loop: Header=BB10_11 Depth=1
	testb	%bpl, %bpl
	je	.LBB10_77
# %bb.74:                               #   in Loop: Header=BB10_11 Depth=1
	movq	48(%rsp), %rcx          # 8-byte Reload
	movq	16(%rsp), %rsi          # 8-byte Reload
	leaq	(%rcx,%rsi,4), %r14
	xorl	%ecx, %ecx
.LBB10_75:                              #   Parent Loop BB10_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%r14,%rcx,4), %ebx
	andl	$59, %ebx
	orl	$4, %ebx
	cmpl	$4, %ebx
	jne	.LBB10_91
# %bb.76:                               #   in Loop: Header=BB10_75 Depth=2
	addq	$1, %rcx
	cmpq	%rbp, %rcx
	jb	.LBB10_75
.LBB10_77:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	$255, %edx
	cmovel	%r13d, %r9d
	movl	%r9d, %r13d
	jmp	.LBB10_10
.LBB10_78:                              #   in Loop: Header=BB10_11 Depth=1
	xorl	%eax, %eax
	cmpb	$2, %r8b
	jne	.LBB10_91
# %bb.79:                               #   in Loop: Header=BB10_11 Depth=1
	subl	$1, %r12d
	jae	.LBB10_87
# %bb.80:                               #   in Loop: Header=BB10_11 Depth=1
	movq	(%rsp), %rcx            # 8-byte Reload
	movq	16(%rsp), %rbp          # 8-byte Reload
	movl	4(%rcx,%rbp,4), %ecx
	movl	%ecx, %ebp
	andb	$63, %bpl
	leal	-28(%rbp), %ebx
	cmpb	$3, %bl
	jb	.LBB10_82
# %bb.81:                               #   in Loop: Header=BB10_11 Depth=1
	cmpb	$34, %bpl
	jne	.LBB10_100
.LBB10_82:                              #   in Loop: Header=BB10_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	%esi, %r12d
	cmpl	%r10d, %r12d
	jg	.LBB10_91
# %bb.83:                               #   in Loop: Header=BB10_11 Depth=1
	cmpl	$8388607, %ecx          # imm = 0x7FFFFF
	jbe	.LBB10_10
	jmp	.LBB10_91
.LBB10_84:                              #   in Loop: Header=BB10_11 Depth=1
	testl	%ecx, %ecx
	je	.LBB10_86
# %bb.85:                               #   in Loop: Header=BB10_11 Depth=1
	addl	%esi, %ecx
	cmpl	%r10d, %ecx
	jg	.LBB10_91
.LBB10_86:                              #   in Loop: Header=BB10_11 Depth=1
	cmpl	%edx, %esi
	cmovlel	%r13d, %r11d
	jmp	.LBB10_10
.LBB10_87:                              #   in Loop: Header=BB10_11 Depth=1
	addl	%esi, %r12d
	cmpl	%r10d, %r12d
	jle	.LBB10_10
	jmp	.LBB10_91
.LBB10_88:                              #   in Loop: Header=BB10_11 Depth=1
	movzbl	%r12b, %eax
	cmpl	76(%rdi), %eax
	jl	.LBB10_32
.LBB10_89:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_90:
	xorl	%eax, %eax
.LBB10_91:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_92:
	movslq	%r11d, %rax
	movq	(%rsp), %rcx            # 8-byte Reload
	movl	(%rcx,%rax,4), %eax
	jmp	.LBB10_91
.LBB10_100:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_91
.Lfunc_end10:
	.size	symbexec, .Lfunc_end10-symbexec
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_55
	.quad	.LBB10_58
	.quad	.LBB10_46
	.quad	.LBB10_9
	.quad	.LBB10_10
	.quad	.LBB10_9
	.quad	.LBB10_46
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_59
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_61
	.quad	.LBB10_54
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_10
	.quad	.LBB10_47
	.quad	.LBB10_47
	.quad	.LBB10_62
	.quad	.LBB10_53
	.quad	.LBB10_53
	.quad	.LBB10_64
	.quad	.LBB10_67
	.quad	.LBB10_10
	.quad	.LBB10_71
	.quad	.LBB10_78
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
	movq	16(%rsi), %rcx
	cmpq	%rcx, %rax
	jae	.LBB11_2
	.p2align	4, 0x90
.LBB11_5:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rdx
	je	.LBB11_6
# %bb.4:                                #   in Loop: Header=BB11_5 Depth=1
	addq	$16, %rax
	cmpq	%rcx, %rax
	jb	.LBB11_5
.LBB11_2:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_3:
	movl	$.L.str.1, %esi
	movq	%rbx, %rdi
	movq	%r14, %rdx
	movq	%r15, %rcx
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB11_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_6:
	movl	$42, __A_VARIABLE(%rip)
	subq	24(%rbx), %rdx
	shrq	$4, %rdx
	leaq	-32(%rbp), %rcx
	movq	%rbx, %rdi
                                        # kill: def $edx killed $edx killed $rdx
	callq	getobjname
	testq	%rax, %rax
	je	.LBB11_3
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
	jne	.LBB12_3
# %bb.1:
	movq	(%rdx), %rax
	cmpb	$0, 10(%rax)
	je	.LBB12_5
.LBB12_3:
	xorl	%edi, %edi
.LBB12_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB12_5:
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	32(%rax), %r14
	cmpq	%rsi, 40(%rdi)
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	je	.LBB12_7
# %bb.6:
	movq	24(%rbx), %r12
	jmp	.LBB12_8
.LBB12_7:
	movq	48(%r15), %r12
	movq	%r12, 24(%rbx)
	movq	(%rdx), %rax
.LBB12_8:
	movq	32(%rax), %rax
	subq	24(%rax), %r12
	shrq	$2, %r12
	addl	$-1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%r13), %esi
	movq	%r14, %rdi
	movl	%r12d, %edx
	callq	luaF_getlocalname
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	$.L.str.14, %edi
	testq	%rax, %rax
	jne	.LBB12_4
# %bb.9:
	movq	%r14, -48(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movl	%r12d, %esi
	movl	%r13d, %edx
	callq	symbexec
                                        # kill: def $eax killed $eax def $rax
	movl	%eax, %edx
	andb	$63, %dl
	xorl	%edi, %edi
	cmpb	$11, %dl
	ja	.LBB12_4
# %bb.10:
	movl	%eax, %edx
	andl	$63, %edx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	jmpq	*.LJTI12_0(,%rdx,8)
.LBB12_11:
	movl	%eax, %edx
	shrl	$6, %edx
	movzbl	%dl, %edx
	shrl	$23, %eax
	cmpl	%edx, %eax
	jae	.LBB12_3
# %bb.12:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%eax, %edx
	callq	getobjname
	movq	%rax, %rdi
	jmp	.LBB12_4
.LBB12_13:
	movq	56(%rsi), %rdx
	testq	%rdx, %rdx
	je	.LBB12_25
# %bb.14:
	shrl	$23, %eax
	movq	(%rdx,%rax,8), %rax
	addq	$24, %rax
	jmp	.LBB12_26
.LBB12_15:
	shrl	$14, %eax
	movq	16(%rsi), %rdx
	shlq	$4, %rax
	movq	(%rdx,%rax), %rax
	addq	$24, %rax
	movq	%rax, (%rcx)
	movl	$.L.str.15, %edi
	jmp	.LBB12_4
.LBB12_16:
	movl	$.L.str.17, %esi
	testl	$4194304, %eax          # imm = 0x400000
	je	.LBB12_19
# %bb.17:
	shrl	$14, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	16(%rdx), %rdx
	movzbl	%al, %eax
	shlq	$4, %rax
	cmpl	$4, 8(%rdx,%rax)
	jne	.LBB12_19
# %bb.18:
	movq	(%rdx,%rax), %rsi
	addq	$24, %rsi
.LBB12_19:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, (%rcx)
	movl	$.L.str.16, %edi
	jmp	.LBB12_4
.LBB12_20:
	movl	$.L.str.17, %esi
	testl	$4194304, %eax          # imm = 0x400000
	je	.LBB12_23
# %bb.21:
	shrl	$14, %eax
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	16(%rdx), %rdx
	movzbl	%al, %eax
	shlq	$4, %rax
	cmpl	$4, 8(%rdx,%rax)
	jne	.LBB12_23
# %bb.22:
	movq	(%rdx,%rax), %rsi
	addq	$24, %rsi
.LBB12_23:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, (%rcx)
	movl	$.L.str.19, %edi
	jmp	.LBB12_4
.LBB12_25:
	movl	$.L.str.17, %eax
.LBB12_26:
	movq	%rax, (%rcx)
	movl	$.L.str.18, %edi
	jmp	.LBB12_4
.Lfunc_end12:
	.size	getobjname, .Lfunc_end12-getobjname
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_11
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_13
	.quad	.LBB12_15
	.quad	.LBB12_16
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_4
	.quad	.LBB12_20
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
	movq	40(%rbx), %rax
	movq	8(%rax), %rcx
	cmpl	$6, 8(%rcx)
	jne	.LBB13_10
# %bb.3:
	movq	(%rcx), %rdx
	cmpb	$0, 10(%rdx)
	jne	.LBB13_10
# %bb.4:
	movq	48(%rbx), %rdx
	movq	%rdx, 24(%rax)
	movq	(%rcx), %rcx
	movq	32(%rcx), %rax
	subq	24(%rax), %rdx
	movq	%rdx, %rsi
	shrq	$2, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jle	.LBB13_5
# %bb.6:
	movq	40(%rax), %rsi
	testq	%rsi, %rsi
	je	.LBB13_7
# %bb.8:
	shlq	$30, %rdx
	movabsq	$-4294967296, %rdi      # imm = 0xFFFFFFFF00000000
	addq	%rdx, %rdi
	sarq	$30, %rdi
	movl	(%rsi,%rdi), %r15d
	jmp	.LBB13_9
.LBB13_5:
	movl	$-1, %r15d
	jmp	.LBB13_9
.LBB13_7:
	xorl	%r15d, %r15d
.LBB13_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpb	$0, 10(%rcx)
	cmovneq	%rdx, %rax
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
.LBB13_10:
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
	addl	$-3, %eax
	cmpl	$2, %eax
	cmovbq	%rdx, %rsi
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
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	leaq	-40(%rbp), %rsi
	movq	%rbx, %rdi
	callq	luaV_tonumber
	testq	%rax, %rax
	cmovneq	%r14, %rbx
	movl	$.L.str.3, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
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
	testq	%r14, %r14
	je	.LBB17_6
# %bb.1:
	movq	64(%rbx), %r15
	cmpl	$6, 8(%r15,%r14)
	je	.LBB17_3
# %bb.2:
	movq	%rbx, %rdi
	movl	$5, %esi
	callq	luaD_throw
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
	cmpq	$16, %rax
	jg	.LBB17_5
# %bb.4:
	movq	%rbx, %rdi
	movl	$1, %esi
	callq	luaD_growstack
	movq	16(%rbx), %rsi
.LBB17_5:
	leaq	16(%rsi), %rax
	movq	%rax, 16(%rbx)
	addq	$-16, %rsi
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	luaD_call
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
