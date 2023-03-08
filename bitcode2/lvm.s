	.text
	.file	"lvm.c"
	.hidden	luaV_tonumber           # -- Begin function luaV_tonumber
	.globl	luaV_tonumber
	.p2align	4, 0x90
	.type	luaV_tonumber,@function
luaV_tonumber:                          # @luaV_tonumber
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	8(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB0_2
# %bb.1:
	movq	%rdi, %rbx
	jmp	.LBB0_7
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB0_6
# %bb.3:
	movq	%rsi, %rbx
	movq	(%rdi), %rdi
	addq	$24, %rdi
	leaq	-16(%rbp), %rsi
	callq	luaO_str2d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_6
# %bb.4:
	movq	-16(%rbp), %rax
	movq	%rax, (%rbx)
	movl	$3, 8(%rbx)
	jmp	.LBB0_7
.LBB0_6:
	xorl	%ebx, %ebx
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	luaV_tonumber, .Lfunc_end0-luaV_tonumber
                                        # -- End function
	.hidden	luaV_tostring           # -- Begin function luaV_tostring
	.globl	luaV_tostring
	.p2align	4, 0x90
	.type	luaV_tostring,@function
luaV_tostring:                          # @luaV_tostring
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$40, %rsp
	xorl	%eax, %eax
	cmpl	$3, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_2
# %bb.1:
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	leaq	-64(%rbp), %r15
	movl	$.L.str, %esi
	movq	%r15, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r15, %rdi
	callq	strlen
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	movl	$1, %eax
.LBB1_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaV_tostring, .Lfunc_end1-luaV_tostring
                                        # -- End function
	.hidden	luaV_gettable           # -- Begin function luaV_gettable
	.globl	luaV_gettable
	.p2align	4, 0x90
	.type	luaV_gettable,@function
luaV_gettable:                          # @luaV_gettable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rsi), %eax
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB2_9
# %bb.2:                                #   in Loop: Header=BB2_1 Depth=1
	movq	(%r13), %rbx
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	luaH_get
	movq	%rax, %r14
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_6
# %bb.3:                                #   in Loop: Header=BB2_1 Depth=1
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_1 Depth=1
	testb	$1, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_5
# %bb.7:                                #   in Loop: Header=BB2_1 Depth=1
	movq	32(%r12), %rax
	movq	296(%rax), %rdx
	xorl	%esi, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_6
# %bb.8:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r14
	addq	$8, %r14
	jmp	.LBB2_11
	.p2align	4, 0x90
.LBB2_9:                                #   in Loop: Header=BB2_1 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	luaT_gettmbyobj
	movq	%rax, %rbx
	movl	8(%rax), %eax
	movq	%rbx, %r14
	addq	$8, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_12
# %bb.10:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaG_typeerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_11:                               #   in Loop: Header=BB2_1 Depth=1
	movl	8(%rbx), %eax
.LBB2_12:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB2_13
# %bb.17:                               #   in Loop: Header=BB2_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	cmpl	$100, %r15d
	jb	.LBB2_1
# %bb.18:
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB2_19
.LBB2_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_6:
	movq	(%r14), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	8(%r14), %eax
	movl	%eax, 8(%rcx)
	jmp	.LBB2_16
.LBB2_13:
	movq	-48(%rbp), %r15         # 8-byte Reload
	subq	64(%r12), %r15
	movq	16(%r12), %rax
	movq	(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	(%r14), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r12), %rax
	movq	(%r13), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r13), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%r12), %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%rdx), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%r12), %rsi
	movq	56(%r12), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rax
	jg	.LBB2_15
# %bb.14:
	movq	%r12, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r12), %rsi
.LBB2_15:
	leaq	48(%rsi), %rax
	movq	%rax, 16(%r12)
	movq	%r12, %rdi
	movl	$1, %edx
	callq	luaD_call
	movq	16(%r12), %rax
	movq	64(%r12), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%r12)
	movq	-16(%rax), %rdx
	movq	%rdx, (%rcx,%r15)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r15)
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:
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
.Lfunc_end2:
	.size	luaV_gettable, .Lfunc_end2-luaV_gettable
                                        # -- End function
	.hidden	luaV_settable           # -- Begin function luaV_settable
	.globl	luaV_settable
	.p2align	4, 0x90
	.type	luaV_settable,@function
luaV_settable:                          # @luaV_settable
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, %r13
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rsi), %eax
	xorl	%r12d, %r12d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$5, %eax
	jne	.LBB3_12
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	(%r13), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	luaH_set
	movq	%rax, %r15
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_7
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rbx), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB3_5
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	testb	$2, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_5
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movq	304(%rax), %rdx
	movl	$1, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_7
# %bb.11:                               #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rbx
	addq	$8, %rbx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_12:                               #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	luaT_gettmbyobj
	movq	%rax, %r14
	movl	8(%rax), %eax
	movq	%r14, %rbx
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_15
# %bb.13:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaG_typeerror
	movl	$42, __A_VARIABLE(%rip)
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	movl	8(%r14), %eax
.LBB3_15:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$6, %eax
	je	.LBB3_16
# %bb.20:                               #   in Loop: Header=BB3_1 Depth=1
	movq	(%r14), %rcx
	movq	%rcx, -80(%rbp)
	movl	%eax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	-80(%rbp), %r13
	cmpl	$100, %r12d
	jb	.LBB3_1
# %bb.21:
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB3_22
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, (%r15)
	movl	8(%rcx), %eax
	movl	%eax, 8(%r15)
	movb	$0, 10(%rbx)
	cmpl	$4, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB3_19
# %bb.8:
	movq	(%rcx), %rax
	testb	$3, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_19
# %bb.9:
	testb	$4, 9(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_19
# %bb.10:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaC_barrierback
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_19
.LBB3_16:
	movq	16(%r15), %rax
	movq	(%r14), %rcx
	movq	%rcx, (%rax)
	movl	(%rbx), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r15), %rax
	movq	(%r13), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r13), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%r15), %rax
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%rdx), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%r15), %rax
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rcx
	movq	%rcx, 48(%rax)
	movl	8(%rdx), %ecx
	movl	%ecx, 56(%rax)
	movq	16(%r15), %rsi
	movq	56(%r15), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$64, %rax
	jg	.LBB3_18
# %bb.17:
	movq	%r15, %rdi
	movl	$4, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r15), %rsi
.LBB3_18:
	leaq	64(%rsi), %rax
	movq	%rax, 16(%r15)
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	luaD_call
.LBB3_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_22:
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
.Lfunc_end3:
	.size	luaV_settable, .Lfunc_end3-luaV_settable
                                        # -- End function
	.hidden	luaV_lessthan           # -- Begin function luaV_lessthan
	.globl	luaV_lessthan
	.p2align	4, 0x90
	.type	luaV_lessthan,@function
luaV_lessthan:                          # @luaV_lessthan
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movl	8(%rsi), %eax
	cmpl	8(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_6
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB4_3
# %bb.2:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	xorl	%eax, %eax
	ucomisd	(%rbx), %xmm0
	seta	%al
	jmp	.LBB4_7
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB4_5
# %bb.4:
	movq	(%rbx), %rdi
	movq	(%r14), %rsi
	callq	l_strcmp
	shrl	$31, %eax
	jmp	.LBB4_7
.LBB4_5:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	movl	$13, %ecx
	callq	call_orderTM
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	jne	.LBB4_7
.LBB4_6:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	luaG_ordererror
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	luaV_lessthan, .Lfunc_end4-luaV_lessthan
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function l_strcmp
	.type	l_strcmp,@function
l_strcmp:                               # @l_strcmp
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	16(%rdi), %r15
	addq	$24, %rbx
	movq	16(%rsi), %r12
	addq	$24, %r14
.LBB5_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcoll
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB5_7
# %bb.2:                                #   in Loop: Header=BB5_1 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	je	.LBB5_3
# %bb.4:                                #   in Loop: Header=BB5_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rcx
	je	.LBB5_5
# %bb.8:                                #   in Loop: Header=BB5_1 Depth=1
	leaq	1(%rcx), %rax
	addq	%rcx, %rbx
	addq	$1, %rbx
	subq	%rax, %r15
	addq	%rcx, %r14
	addq	$1, %r14
	subq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_1
.LBB5_3:
	xorl	%eax, %eax
	cmpq	%r15, %rcx
	setne	%al
	jmp	.LBB5_6
.LBB5_5:
	movl	$-1, %eax
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	l_strcmp, .Lfunc_end5-l_strcmp
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function call_orderTM
	.type	call_orderTM,@function
call_orderTM:                           # @call_orderTM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r14d
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	%ecx, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	je	.LBB6_8
# %bb.1:
	movq	%rax, %r13
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	luaT_gettmbyobj
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	movl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB6_8
# %bb.2:
	movq	16(%rbx), %rax
	movq	%rax, %r14
	subq	64(%rbx), %r14
	movq	(%r13), %rcx
	movq	%rcx, (%rax)
	movl	8(%r13), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%rbx), %rax
	movq	(%r12), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r12), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	(%r15), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rax
	jg	.LBB6_4
# %bb.3:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rsi
.LBB6_4:
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rbx)
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	luaD_call
	movq	16(%rbx), %rax
	movq	64(%rbx), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movq	-16(%rax), %rdx
	movq	%rdx, (%rcx,%r14)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rax
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB6_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	movl	$1, %ecx
	jne	.LBB6_8
# %bb.7:
	xorl	%ecx, %ecx
	cmpl	$0, (%rax)
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_8
.LBB6_5:
	xorl	%ecx, %ecx
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	call_orderTM, .Lfunc_end6-call_orderTM
                                        # -- End function
	.hidden	luaV_equalval           # -- Begin function luaV_equalval
	.globl	luaV_equalval
	.p2align	4, 0x90
	.type	luaV_equalval,@function
luaV_equalval:                          # @luaV_equalval
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movl	8(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$7, %rax
	ja	.LBB7_9
# %bb.1:
	movq	%rdi, %r14
	movb	$1, %r12b
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_2:
	movq	(%rbx), %rax
	movq	(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	je	.LBB7_14
# %bb.3:
	addq	$16, %rax
	addq	$16, %rcx
	movq	(%rax), %rsi
	movq	(%rcx), %rdx
	movq	%r14, %rdi
	callq	get_compTM
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_13
# %bb.4:
	movq	16(%r14), %rcx
	movq	%rcx, %r13
	subq	64(%r14), %r13
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%r14), %rax
	movq	(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%r14), %rax
	movq	(%r15), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%r14), %rsi
	movq	56(%r14), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rax
	jg	.LBB7_6
# %bb.5:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rsi
.LBB7_6:
	leaq	48(%rsi), %rax
	movq	%rax, 16(%r14)
	movq	%r14, %rdi
	movl	$1, %edx
	callq	luaD_call
	movq	16(%r14), %rax
	movq	64(%r14), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%r14)
	movq	-16(%rax), %rdx
	movq	%rdx, (%rcx,%r13)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%r14), %rax
	movl	8(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB7_13
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ecx
	jne	.LBB7_14
# %bb.8:
	cmpl	$0, (%rax)
	setne	%r12b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_14
.LBB7_9:
	movq	(%rbx), %rax
	cmpq	(%r15), %rax
	sete	%r12b
	jmp	.LBB7_14
.LBB7_10:
	movl	(%rbx), %eax
	cmpl	(%r15), %eax
	sete	%r12b
	jmp	.LBB7_14
.LBB7_11:
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	cmpeqsd	(%rbx), %xmm0
	movq	%xmm0, %r12
	andl	$1, %r12d
	jmp	.LBB7_14
.LBB7_13:
	xorl	%r12d, %r12d
.LBB7_14:
	movzbl	%r12b, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	luaV_equalval, .Lfunc_end7-luaV_equalval
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_14
	.quad	.LBB7_10
	.quad	.LBB7_9
	.quad	.LBB7_11
	.quad	.LBB7_9
	.quad	.LBB7_2
	.quad	.LBB7_9
	.quad	.LBB7_2
                                        # -- End function
	.text
	.p2align	4, 0x90         # -- Begin function get_compTM
	.type	get_compTM,@function
get_compTM:                             # @get_compTM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB8_8
# %bb.1:
	movq	%rsi, %rbx
	testb	$16, 10(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_8
# %bb.2:
	movq	%rdx, %r14
	movq	%rdi, %r15
	movq	32(%rdi), %rax
	movq	328(%rax), %rdx
	movq	%rbx, %rdi
	movl	$4, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_9
# %bb.3:
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	je	.LBB8_12
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB8_8
# %bb.5:
	testb	$16, 10(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_8
# %bb.6:
	movq	32(%r15), %rax
	movq	328(%rax), %rdx
	movq	%r14, %rdi
	movl	$4, %esi
	callq	luaT_gettm
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_9
# %bb.7:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	xorl	%ecx, %ecx
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%rcx, %r12
	jmp	.LBB8_10
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB8_10:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_12:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_10
.Lfunc_end8:
	.size	get_compTM, .Lfunc_end8-get_compTM
                                        # -- End function
	.hidden	luaV_concat             # -- Begin function luaV_concat
	.globl	luaV_concat
	.p2align	4, 0x90
	.type	luaV_concat,@function
luaV_concat:                            # @luaV_concat
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movl	%edx, %r13d
	movl	%esi, %r14d
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_5
.LBB9_1:                                #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_2:                                #   in Loop: Header=BB9_5 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
.LBB9_3:                                #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB9_4:                                #   in Loop: Header=BB9_5 Depth=1
	addl	$-1, %r15d
	subl	%r15d, %r14d
	subl	%r15d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r14d
	jle	.LBB9_32
.LBB9_5:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_14 Depth 2
                                        #     Child Loop BB9_30 Depth 2
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %r15
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	movslq	%r13d, %rcx
	movq	%rcx, %rax
	shlq	$4, %rax
	leaq	(%r15,%rax), %r13
	addq	$16, %r13
	leaq	(%r15,%rax), %rbx
	addq	$-16, %rbx
	movl	-8(%r15,%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB9_7
# %bb.6:                                #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB9_19
.LBB9_7:                                #   in Loop: Header=BB9_5 Depth=1
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	leaq	-16(%r13), %r12
	movl	-8(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB9_10
# %bb.8:                                #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB9_22
# %bb.9:                                #   in Loop: Header=BB9_5 Depth=1
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	movq	%r13, -64(%rbp)         # 8-byte Spill
	leaq	-128(%rbp), %r13
	movq	%r13, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r13, %rdi
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	-64(%rbp), %r13         # 8-byte Reload
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r12)
	movl	$4, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_10:                               #   in Loop: Header=BB9_5 Depth=1
	movq	(%r12), %rax
	movq	16(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	je	.LBB9_20
# %bb.11:                               #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r14d
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	%r15, -80(%rbp)         # 8-byte Spill
	jl	.LBB9_25
# %bb.12:                               #   in Loop: Header=BB9_5 Depth=1
	movslq	%r14d, %r13
	movl	$1, %r15d
	jmp	.LBB9_14
	.p2align	4, 0x90
.LBB9_13:                               #   in Loop: Header=BB9_14 Depth=2
	addq	%r14, %r12
	movq	%r15, %rax
	addq	$1, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-16, %rbx
	movq	%rax, %r15
	cmpq	%r13, %rax
	jge	.LBB9_29
.LBB9_14:                               #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB9_17
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB9_28
# %bb.16:                               #   in Loop: Header=BB9_14 Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	leaq	-128(%rbp), %r14
	movq	%r14, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_17:                               #   in Loop: Header=BB9_14 Depth=2
	movq	(%rbx), %rax
	movq	16(%rax), %r14
	movq	$-3, %rax
	subq	%r12, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jb	.LBB9_13
# %bb.18:                               #   in Loop: Header=BB9_14 Depth=2
	movl	$.L.str.4, %esi
	movq	-56(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_13
	.p2align	4, 0x90
.LBB9_19:                               #   in Loop: Header=BB9_5 Depth=1
	addq	$-16, %r13
	movq	%r13, %r12
	jmp	.LBB9_23
	.p2align	4, 0x90
.LBB9_20:                               #   in Loop: Header=BB9_5 Depth=1
	movl	8(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r15d
	cmpl	$4, %eax
	je	.LBB9_2
# %bb.26:                               #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB9_1
# %bb.27:                               #   in Loop: Header=BB9_5 Depth=1
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	leaq	-128(%rbp), %r12
	movq	%r12, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%rbx)
	movl	$4, 8(%rbx)
	jmp	.LBB9_1
.LBB9_22:                               #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_23:                               #   in Loop: Header=BB9_5 Depth=1
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	movq	%rbx, %rcx
	movl	$15, %r8d
	callq	call_binTM
	movl	$42, __A_VARIABLE(%rip)
	movl	$2, %r15d
	testl	%eax, %eax
	jne	.LBB9_4
# %bb.24:                               #   in Loop: Header=BB9_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	movq	%r12, %rdx
	callq	luaG_concaterror
	movl	$2, %r15d
	jmp	.LBB9_3
.LBB9_25:                               #   in Loop: Header=BB9_5 Depth=1
	movl	$1, %r15d
	jmp	.LBB9_29
.LBB9_28:                               #   in Loop: Header=BB9_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB9_29:                               #   in Loop: Header=BB9_5 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	32(%rdi), %rsi
	addq	$88, %rsi
	movq	%r12, %rdx
	callq	luaZ_openspace
	movq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, -88(%rbp)         # 8-byte Spill
	movslq	%r15d, %r13
	movq	-96(%rbp), %rcx         # 8-byte Reload
	subq	%r13, %rcx
	addq	$1, %r13
	shlq	$4, %rcx
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%rcx), %r14
	addq	$16, %r14
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB9_30:                               #   Parent Loop BB9_5 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r15
	movq	(%r14), %rsi
	movq	16(%rsi), %rbx
	leaq	(%r12,%r15), %rdi
	addq	$24, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%r15, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r13
	addq	$16, %r14
	cmpq	$1, %r13
	jg	.LBB9_30
# %bb.31:                               #   in Loop: Header=BB9_5 Depth=1
	movq	-88(%rbp), %r15         # 8-byte Reload
	movl	%r15d, %eax
	shlq	$4, %rax
	movq	-64(%rbp), %r14         # 8-byte Reload
	subq	%rax, %r14
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movl	-44(%rbp), %r13d        # 4-byte Reload
	movl	-68(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB9_3
.LBB9_32:
	movl	$42, __A_VARIABLE(%rip)
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	luaV_concat, .Lfunc_end9-luaV_concat
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function call_binTM
	.type	call_binTM,@function
call_binTM:                             # @call_binTM
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%r8d, %r13d
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	%r8d, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_5
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_2
.LBB10_5:
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	%r13d, %edx
	callq	luaT_gettmbyobj
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_6
.LBB10_2:
	subq	64(%rbx), %r14
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%rbx), %rax
	movq	(%r12), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r12), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	(%r15), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$48, %rax
	jg	.LBB10_4
# %bb.3:
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbx), %rsi
.LBB10_4:
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rbx)
	movl	$1, %r15d
	movq	%rbx, %rdi
	movl	$1, %edx
	callq	luaD_call
	movq	16(%rbx), %rax
	movq	64(%rbx), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movq	-16(%rax), %rdx
	movq	%rdx, (%rcx,%r14)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_6:
	xorl	%r15d, %r15d
	jmp	.LBB10_7
.Lfunc_end10:
	.size	call_binTM, .Lfunc_end10-call_binTM
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function luaV_execute
.LCPI11_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI11_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI11_2:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.hidden	luaV_execute
	.globl	luaV_execute
	.p2align	4, 0x90
	.type	luaV_execute,@function
luaV_execute:                           # @luaV_execute
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%esi, -76(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB11_1:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_2 Depth 2
                                        #       Child Loop BB11_7 Depth 3
                                        #         Child Loop BB11_126 Depth 4
                                        #         Child Loop BB11_87 Depth 4
                                        #         Child Loop BB11_138 Depth 4
                                        #         Child Loop BB11_77 Depth 4
                                        #       Child Loop BB11_224 Depth 3
	movq	48(%rdi), %rdx
	movq	24(%rdi), %r9
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %r12
	movq	32(%r12), %rax
	movq	16(%rax), %rax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -88(%rbp)         # 8-byte Spill
.LBB11_2:                               #   Parent Loop BB11_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB11_7 Depth 3
                                        #         Child Loop BB11_126 Depth 4
                                        #         Child Loop BB11_87 Depth 4
                                        #         Child Loop BB11_138 Depth 4
                                        #         Child Loop BB11_77 Depth 4
                                        #       Child Loop BB11_224 Depth 3
	movq	%rdx, %r12
	jmp	.LBB11_7
.LBB11_3:                               #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$9, %r8d
.LBB11_4:                               #   in Loop: Header=BB11_7 Depth=3
	callq	Arith
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	24(%rdi), %r9
.LBB11_5:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB11_6:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %r12
.LBB11_7:                               #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        # =>    This Loop Header: Depth=3
                                        #         Child Loop BB11_126 Depth 4
                                        #         Child Loop BB11_87 Depth 4
                                        #         Child Loop BB11_138 Depth 4
                                        #         Child Loop BB11_77 Depth 4
	leaq	4(%r12), %r8
	movl	(%r12), %r15d
	movzbl	100(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$12, %bl
	movq	%r8, -56(%rbp)          # 8-byte Spill
	je	.LBB11_27
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=3
	movl	108(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 108(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_10
# %bb.9:                                #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	je	.LBB11_27
.LBB11_10:                              #   in Loop: Header=BB11_7 Depth=3
	movq	48(%rdi), %r14
	movq	%r8, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testb	$8, %bl
	je	.LBB11_13
# %bb.11:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_7 Depth=3
	movl	104(%rdi), %eax
	movl	%eax, 108(%rdi)
	movl	$3, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB11_13:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	je	.LBB11_25
# %bb.14:                               #   in Loop: Header=BB11_7 Depth=3
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rcx
	movq	40(%rax), %rax
	movq	%r8, %rsi
	subq	%rcx, %rsi
	shrq	$2, %rsi
	addl	$-1, %esi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_16
# %bb.15:                               #   in Loop: Header=BB11_7 Depth=3
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_17
.LBB11_16:                              #   in Loop: Header=BB11_7 Depth=3
	xorl	%edx, %edx
.LBB11_17:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB11_23
# %bb.18:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r8, %r14
	jae	.LBB11_23
# %bb.19:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB11_21
# %bb.20:                               #   in Loop: Header=BB11_7 Depth=3
	subq	%rcx, %r14
	shlq	$30, %r14
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	addq	%rcx, %r14
	sarq	$30, %r14
	movl	(%rax,%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_22
.LBB11_21:                              #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
.LBB11_22:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	je	.LBB11_24
.LBB11_23:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$2, %esi
	callq	luaD_callhook
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_24:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB11_25:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$1, 10(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_236
# %bb.26:                               #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rdi), %r9
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	andb	$63, %al
	cmpb	$37, %al
	ja	.LBB11_6
# %bb.28:                               #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %eax
	shrl	$6, %eax
	movzbl	%al, %r14d
	movq	%r14, %r13
	shlq	$4, %r13
	leaq	(%r9,%r13), %r10
	movl	%r15d, %eax
	andl	$63, %eax
	jmpq	*.LJTI11_0(,%rax,8)
.LBB11_29:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$19, %r15
	andl	$-16, %r15d
	movq	(%r9,%r15), %rax
	movq	%rax, (%r10)
	movl	8(%r9,%r15), %eax
	movl	%eax, 8(%r9,%r13)
	jmp	.LBB11_6
.LBB11_30:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %eax
	shrl	$23, %eax
	shlq	$4, %rax
	leaq	(%r9,%rax), %rcx
	movl	8(%r9,%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB11_165
# %bb.31:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB11_177
# %bb.32:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$0, (%rcx)
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_178
.LBB11_33:                              #   in Loop: Header=BB11_7 Depth=3
	movsd	16(%r10), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%r10), %xmm2         # xmm2 = mem[0],zero
	movsd	(%r10), %xmm0           # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm2
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB11_156
# %bb.34:                               #   in Loop: Header=BB11_7 Depth=3
	ucomisd	%xmm0, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_6
	jmp	.LBB11_157
.LBB11_35:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_3
# %bb.36:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_3
# %bb.37:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -72(%rbp)        # 8-byte Spill
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -96(%rbp)        # 8-byte Spill
	divsd	%xmm1, %xmm0
	movq	%r9, %rbx
	movq	%r10, %r14
	callq	floor
	movq	%rbx, %r9
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	mulsd	-96(%rbp), %xmm0        # 8-byte Folded Reload
	movsd	-72(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	jmp	.LBB11_101
.LBB11_38:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	leaq	(%r9,%r13), %r14
	addq	$8, %r14
	cmpl	$3, 8(%r9,%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_44
# %bb.39:                               #   in Loop: Header=BB11_7 Depth=3
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB11_43
# %bb.40:                               #   in Loop: Header=BB11_7 Depth=3
	movq	%r9, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB11_188
# %bb.41:                               #   in Loop: Header=BB11_7 Depth=3
	movq	(%r10), %rdi
	addq	$24, %rdi
	leaq	-112(%rbp), %rsi
	movq	%r10, %rbx
	callq	luaO_str2d
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_188
# %bb.42:                               #   in Loop: Header=BB11_7 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, (%r10)
	movl	$3, (%r14)
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r9
.LBB11_43:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_44:                              #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 24(%r10)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_50
# %bb.45:                               #   in Loop: Header=BB11_7 Depth=3
	movl	24(%r10), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB11_49
# %bb.46:                               #   in Loop: Header=BB11_7 Depth=3
	movq	%r9, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB11_189
# %bb.47:                               #   in Loop: Header=BB11_7 Depth=3
	movq	16(%r10), %rdi
	addq	$24, %rdi
	leaq	-112(%rbp), %rsi
	movq	%r10, %rbx
	callq	luaO_str2d
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_189
# %bb.48:                               #   in Loop: Header=BB11_7 Depth=3
	movq	-112(%rbp), %rax
	movq	%rax, 16(%r10)
	movl	$3, 24(%r10)
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r9
.LBB11_49:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_50:                              #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 40(%r10)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_192
# %bb.51:                               #   in Loop: Header=BB11_7 Depth=3
	movl	40(%r10), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB11_55
# %bb.52:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB11_238
# %bb.53:                               #   in Loop: Header=BB11_7 Depth=3
	movq	%r9, %rbx
	movq	32(%r10), %rdi
	addq	$24, %rdi
	leaq	-112(%rbp), %rsi
	movq	%r10, %r12
	callq	luaO_str2d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_238
# %bb.54:                               #   in Loop: Header=BB11_7 Depth=3
	movq	%r12, %r10
	movq	-112(%rbp), %rax
	movq	%rax, 32(%r12)
	movl	$3, 40(%r12)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%rbx, %r9
.LBB11_55:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_191
.LBB11_56:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_150
# %bb.57:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_150
# %bb.58:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%rcx), %xmm0
	jmp	.LBB11_96
.LBB11_59:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r10, %rsi
	movq	%r9, %rbx
	callq	luaF_close
	movq	%rbx, %r9
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB11_6
.LBB11_60:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r15, %rax
	shrq	$19, %rax
	andl	$-16, %eax
	leaq	(%r9,%rax), %rsi
	movq	(%r9,%rax), %rcx
	movq	%rcx, 16(%r10)
	movl	8(%r9,%rax), %eax
	movl	%eax, 24(%r10)
	movq	%r8, 48(%rdi)
	jmp	.LBB11_106
.LBB11_61:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$23, %r15
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	40(%rax,%r15,8), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%r10)
	movl	8(%rax), %eax
	movl	%eax, 8(%r9,%r13)
	jmp	.LBB11_6
.LBB11_62:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_151
# %bb.63:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_151
# %bb.64:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	addsd	(%rcx), %xmm0
	jmp	.LBB11_96
.LBB11_65:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movl	%r15d, %eax
	shrl	$23, %eax
	testl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %edx
	cmovnsl	%eax, %edx
	movq	%r9, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmovsq	%rcx, %rax
	shlq	$4, %rdx
	addq	%rax, %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%al
	cmovneq	%rcx, %r9
	movl	$42, __A_VARIABLE(%rip)
	shll	$8, %eax
	orl	$255, %eax
	shrl	$14, %r15d
	andl	%eax, %r15d
	shlq	$4, %r15
	addq	%r9, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%r10, %rsi
	movq	%r15, %rcx
	jmp	.LBB11_79
.LBB11_66:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rcx
	movq	-64(%rbp), %rbx         # 8-byte Reload
	cmovsq	%rbx, %rcx
	shlq	$4, %rax
	leaq	(%rcx,%rax), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %edx
	shrl	$14, %edx
	xorl	%esi, %esi
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%sil
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rbx, %r9
	shll	$8, %esi
	orl	$255, %esi
	andl	%edx, %esi
	shlq	$4, %rsi
	leaq	(%r9,%rsi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%rcx,%rax), %eax
	cmpl	8(%r9,%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_198
# %bb.67:                               #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB11_186
# %bb.68:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	xorl	%eax, %eax
	ucomisd	(%r13), %xmm0
	setae	%al
	jmp	.LBB11_200
.LBB11_69:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movl	%r15d, %eax
	shrl	$23, %eax
	testl	%r15d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movzbl	%al, %esi
	cmovnsl	%eax, %esi
	movq	%r9, %rax
	movq	-64(%rbp), %rcx         # 8-byte Reload
	cmovsq	%rcx, %rax
	shlq	$4, %rsi
	addq	%rax, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	shrl	$14, %eax
	xorl	%edx, %edx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%dl
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rcx, %r9
	shll	$8, %edx
	orl	$255, %edx
	andl	%eax, %edx
	shlq	$4, %rdx
	addq	%r9, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, %rbx
	callq	luaV_lessthan
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jne	.LBB11_158
# %bb.70:                               #   in Loop: Header=BB11_7 Depth=3
	movl	(%rbx), %eax
	shrl	$14, %eax
	leaq	(%rbx,%rax,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	jmp	.LBB11_202
.LBB11_71:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %eax
	shrl	$23, %eax
	movl	%eax, (%r10)
	movl	$1, 8(%r9,%r13)
	movl	$42, __A_VARIABLE(%rip)
	testl	$8372224, %r15d         # imm = 0x7FC000
	je	.LBB11_6
# %bb.72:                               #   in Loop: Header=BB11_7 Depth=3
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r8
	jmp	.LBB11_6
.LBB11_73:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_152
# %bb.74:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_152
# %bb.75:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	divsd	(%rcx), %xmm0
	jmp	.LBB11_96
.LBB11_76:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$19, %r15
	andl	$-16, %r15d
	addq	%r9, %r15
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB11_77:                              #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$0, 8(%r15)
	addq	$-16, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r10, %r15
	jae	.LBB11_77
	jmp	.LBB11_6
.LBB11_78:                              #   in Loop: Header=BB11_7 Depth=3
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$5, -104(%rbp)
	movq	%r8, 48(%rdi)
	shrq	$10, %r15
	andl	$-16, %r15d
	addq	-64(%rbp), %r15         # 8-byte Folded Reload
	leaq	-112(%rbp), %rsi
	movq	%r15, %rdx
	movq	%r10, %rcx
.LBB11_79:                              #   in Loop: Header=BB11_7 Depth=3
	callq	luaV_settable
	jmp	.LBB11_108
.LBB11_80:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$10, %r15
	andl	$-16, %r15d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%r15), %rax
	movq	%rax, (%r10)
	movl	8(%rcx,%r15), %eax
	movl	%eax, 8(%r9,%r13)
	jmp	.LBB11_6
.LBB11_81:                              #   in Loop: Header=BB11_7 Depth=3
	leaq	48(%r10), %rsi
	movq	32(%r10), %rax
	movq	%rax, 80(%r10)
	movl	40(%r10), %eax
	movl	%eax, 88(%r10)
	movq	(%r10), %rax
	movq	16(%r10), %rcx
	movq	%rcx, 64(%r10)
	movl	24(%r10), %ecx
	movl	%ecx, 72(%r10)
	movq	%rax, 48(%r10)
	movl	8(%r9,%r13), %eax
	movl	%eax, 56(%r10)
	addq	$96, %r10
	movq	%r10, 16(%rdi)
	movq	%r8, 48(%rdi)
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	movl	%r15d, %edx
	movq	%r8, %rbx
	callq	luaD_call
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	24(%rdi), %r9
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	movl	56(%r9,%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_166
# %bb.82:                               #   in Loop: Header=BB11_7 Depth=3
	leaq	(%r9,%r13), %rcx
	addq	$48, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	(%rbx), %eax
	shrl	$14, %eax
	leaq	(%rbx,%rax,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %r8
	jmp	.LBB11_6
.LBB11_83:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r10, -96(%rbp)         # 8-byte Spill
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	-88(%rbp), %r12         # 8-byte Reload
	movq	24(%r12), %rdx
	movq	32(%r12), %rax
	movq	32(%rax), %rax
	shrl	$14, %r15d
	movq	(%rax,%r15,8), %rbx
	movzbl	112(%rbx), %r14d
	movl	%r14d, %esi
	callq	luaF_newLclosure
	movq	%rax, %r15
	movq	%rbx, 32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB11_167
# %bb.84:                               #   in Loop: Header=BB11_7 Depth=3
	shlq	$2, %r14
	xorl	%ebx, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
	jmp	.LBB11_87
	.p2align	4, 0x90
.LBB11_85:                              #   in Loop: Header=BB11_87 Depth=4
	shlq	$4, %rsi
	addq	%rcx, %rsi
	callq	luaF_findupval
	movq	-96(%rbp), %rdx         # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB11_86:                              #   in Loop: Header=BB11_87 Depth=4
	movq	%rax, 40(%r15,%rbx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rbx
	cmpq	%rbx, %r14
	je	.LBB11_155
.LBB11_87:                              #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	(%r8,%rbx), %esi
	movl	%esi, %eax
	andl	$63, %eax
	shrq	$23, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB11_85
# %bb.88:                               #   in Loop: Header=BB11_87 Depth=4
	movq	40(%r12,%rsi,8), %rax
	jmp	.LBB11_86
.LBB11_89:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_153
# %bb.90:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_153
# %bb.91:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%rcx), %xmm1           # xmm1 = mem[0],zero
	movq	%r9, %rbx
	movq	%r10, %r14
	callq	pow
	movq	%rbx, %r9
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB11_100
.LBB11_92:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$10, %r15
	andl	$-16, %r15d
	addq	-64(%rbp), %r15         # 8-byte Folded Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, -112(%rbp)
	movl	$5, -104(%rbp)
	movq	%r8, 48(%rdi)
	leaq	-112(%rbp), %rsi
	jmp	.LBB11_107
.LBB11_93:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rbx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	cmovsq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rax
	leaq	(%rbx,%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmoveq	%r9, %rsi
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	shlq	$4, %r15
	leaq	(%rsi,%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, 8(%rbx,%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_154
# %bb.94:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$3, 8(%rsi,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_154
# %bb.95:                               #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rdx), %xmm0           # xmm0 = mem[0],zero
	subsd	(%rcx), %xmm0
.LBB11_96:                              #   in Loop: Header=BB11_7 Depth=3
	movsd	%xmm0, (%r10)
	jmp	.LBB11_173
.LBB11_97:                              #   in Loop: Header=BB11_7 Depth=3
	shrq	$19, %r15
	andl	$-16, %r15d
	leaq	(%r9,%r15), %r14
	movl	8(%r9,%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	je	.LBB11_172
# %bb.98:                               #   in Loop: Header=BB11_7 Depth=3
	cmpl	$5, %eax
	jne	.LBB11_174
# %bb.99:                               #   in Loop: Header=BB11_7 Depth=3
	movq	(%r14), %rdi
	movq	%r9, %rbx
	movq	%r10, %r14
	callq	luaH_getn
	movq	%rbx, %r9
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
.LBB11_100:                             #   in Loop: Header=BB11_7 Depth=3
	movsd	%xmm0, (%r14)
.LBB11_101:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$3, 8(%rbx,%r13)
	jmp	.LBB11_5
.LBB11_102:                             #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %edx
	shrq	$23, %r15
	shrl	$14, %edx
	andl	$511, %edx              # imm = 0x1FF
	movq	%r8, 48(%rdi)
	movl	%edx, %esi
	subl	%r15d, %esi
	addl	$1, %esi
	callq	luaV_concat
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_104
# %bb.103:                              #   in Loop: Header=BB11_7 Depth=3
	callq	luaC_step
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_104:                             #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rdi), %r9
	shlq	$4, %r15
	movq	(%r9,%r15), %rax
	movq	%rax, (%r9,%r13)
	movl	8(%r9,%r15), %eax
	movl	%eax, 8(%r9,%r13)
	movq	-56(%rbp), %r8          # 8-byte Reload
	jmp	.LBB11_6
.LBB11_105:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r15, %rsi
	shrq	$19, %rsi
	andl	$-16, %esi
	addq	%r9, %rsi
.LBB11_106:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%al
	cmovneq	-64(%rbp), %r9          # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	shll	$8, %eax
	orl	$255, %eax
	shrl	$14, %r15d
	andl	%eax, %r15d
	shlq	$4, %r15
	addq	%r9, %r15
	movl	$42, __A_VARIABLE(%rip)
.LBB11_107:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r15, %rdx
	movq	%r10, %rcx
	callq	luaV_gettable
.LBB11_108:                             #   in Loop: Header=BB11_7 Depth=3
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	24(%rdi), %r9
	jmp	.LBB11_6
.LBB11_109:                             #   in Loop: Header=BB11_7 Depth=3
	shrq	$23, %r15
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	40(%rax,%r15,8), %rsi
	movq	16(%rsi), %rax
	movq	(%r10), %rcx
	movq	%rcx, (%rax)
	movl	8(%r9,%r13), %ecx
	movl	%ecx, 8(%rax)
	cmpl	$4, 8(%r9,%r13)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB11_6
# %bb.110:                              #   in Loop: Header=BB11_7 Depth=3
	movq	(%r10), %rdx
	testb	$3, 9(%rdx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_6
# %bb.111:                              #   in Loop: Header=BB11_7 Depth=3
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_6
# %bb.112:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r9, %rbx
	callq	luaC_barrierf
	movq	%rbx, %r9
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB11_5
.LBB11_113:                             #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %edi
	shrl	$23, %edi
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	movq	%r9, %r12
	movq	%r10, %rbx
	callq	luaO_fb2int
	movl	%eax, %r14d
	movl	%r15d, %edi
	callq	luaO_fb2int
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	%eax, %edx
	callq	luaH_new
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, (%rbx)
	movl	$5, 8(%r12,%r13)
	movq	%r8, 48(%rdi)
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_116
# %bb.114:                              #   in Loop: Header=BB11_7 Depth=3
	callq	luaC_step
	movq	-56(%rbp), %r8          # 8-byte Reload
	jmp	.LBB11_115
.LBB11_117:                             #   in Loop: Header=BB11_7 Depth=3
	shrq	$19, %r15
	andl	$-16, %r15d
	leaq	(%r9,%r15), %rcx
	cmpl	$3, 8(%r9,%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_159
# %bb.118:                              #   in Loop: Header=BB11_7 Depth=3
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	xorpd	.LCPI11_2(%rip), %xmm0
	movlpd	%xmm0, (%r10)
	jmp	.LBB11_173
.LBB11_119:                             #   in Loop: Header=BB11_7 Depth=3
	shrl	$23, %r15d
	movq	40(%rdi), %r11
	movq	(%r11), %rax
	subq	8(%r11), %rax
	shrq	$4, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	32(%rcx), %rcx
	movzbl	113(%rcx), %r14d
	notl	%r14d
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %r12
	subl	$1, %r15d
	jae	.LBB11_123
# %bb.120:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	56(%rdi), %rax
	subq	16(%rdi), %rax
	movl	%r14d, %ecx
	shll	$4, %ecx
	movslq	%ecx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jg	.LBB11_122
# %bb.121:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r14d, %esi
	movq	%r11, %rbx
	callq	luaD_growstack
	movq	%rbx, %r11
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_122:                             #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rdi), %r9
	addq	%r9, %r13
	movq	%r12, %rax
	shlq	$4, %rax
	addq	%r13, %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
	movq	%r13, %r10
.LBB11_123:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jle	.LBB11_6
# %bb.124:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %eax
	addq	$8, %r10
	movq	%r12, %rdx
	shlq	$4, %rdx
	movl	$8, %ecx
	subq	%rdx, %rcx
	xorl	%edx, %edx
	jmp	.LBB11_126
	.p2align	4, 0x90
.LBB11_125:                             #   in Loop: Header=BB11_126 Depth=4
	movl	%esi, (%r10)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r10
	addq	$16, %rcx
	cmpq	%rdx, %rax
	je	.LBB11_6
.LBB11_126:                             #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %esi
	cmpq	%r12, %rdx
	jge	.LBB11_125
# %bb.127:                              #   in Loop: Header=BB11_126 Depth=4
	movq	(%r11), %rsi
	movq	-8(%rsi,%rcx), %rbx
	movq	%rbx, -8(%r10)
	movl	(%rsi,%rcx), %esi
	jmp	.LBB11_125
.LBB11_128:                             #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ebx
	shrl	$23, %ebx
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jne	.LBB11_130
# %bb.129:                              #   in Loop: Header=BB11_7 Depth=3
	movq	16(%rdi), %rbx
	movq	40(%rdi), %rax
	subq	%r10, %rbx
	shrq	$4, %rbx
	addl	$-1, %ebx
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_130:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	jne	.LBB11_132
# %bb.131:                              #   in Loop: Header=BB11_7 Depth=3
	movl	4(%r12), %r15d
	addq	$8, %r12
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %r8
.LBB11_132:                             #   in Loop: Header=BB11_7 Depth=3
	cmpl	$5, 8(%r9,%r13)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_160
# %bb.133:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r9, -72(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	(%r10), %r13
	imull	$50, %r15d, %eax
	leal	(%rbx,%rax), %r15d
	addl	$-50, %r15d
	cmpl	56(%r13), %r15d
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB11_135
# %bb.134:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	luaH_resizearray
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_135:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB11_161
# %bb.136:                              #   in Loop: Header=BB11_7 Depth=3
	movslq	%ebx, %r12
	leaq	(,%r14,4), %rax
	leaq	(%rax,%r12,4), %rax
	addq	$1, %r12
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rbx
	addq	$8, %rbx
	jmp	.LBB11_138
	.p2align	4, 0x90
.LBB11_137:                             #   in Loop: Header=BB11_138 Depth=4
	addl	$-1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %r12
	addq	$-16, %rbx
	cmpq	$1, %r12
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jle	.LBB11_161
.LBB11_138:                             #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        #       Parent Loop BB11_7 Depth=3
                                        # =>      This Inner Loop Header: Depth=4
	movq	%r13, %rsi
	movl	%r15d, %edx
	callq	luaH_setnum
	movq	-8(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	(%rbx), %ecx
	movl	%ecx, 8(%rax)
	cmpl	$4, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB11_137
# %bb.139:                              #   in Loop: Header=BB11_138 Depth=4
	movq	-8(%rbx), %rax
	testb	$3, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_137
# %bb.140:                              #   in Loop: Header=BB11_138 Depth=4
	testb	$4, 9(%r13)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_137
# %bb.141:                              #   in Loop: Header=BB11_138 Depth=4
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	luaC_barrierback
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_137
.LBB11_142:                             #   in Loop: Header=BB11_7 Depth=3
	shrq	$23, %r15
	shlq	$4, %r15
	movl	8(%r9,%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_170
# %bb.143:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_180
# %bb.144:                              #   in Loop: Header=BB11_7 Depth=3
	cmpl	$0, (%r9,%r15)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_181
.LBB11_145:                             #   in Loop: Header=BB11_7 Depth=3
	movl	%r15d, %ecx
	shrl	$23, %ecx
	testl	%r15d, %r15d
	movzbl	%cl, %eax
	cmovnsl	%ecx, %eax
	movq	%r9, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	cmovsq	%rdx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	testl	$4194304, %r15d         # imm = 0x400000
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
	cmovneq	%rdx, %r9
	shll	$8, %ecx
	orl	$255, %ecx
	shrl	$14, %r15d
	andl	%ecx, %r15d
	movl	$42, __A_VARIABLE(%rip)
	movq	%r8, 48(%rdi)
	shlq	$4, %rax
	movl	8(%rsi,%rax), %ecx
	shlq	$4, %r15
	cmpl	8(%r9,%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_162
# %bb.146:                              #   in Loop: Header=BB11_7 Depth=3
	addq	%r15, %r9
	addq	%rax, %rsi
	movq	%r9, %rdx
	callq	luaV_equalval
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_163
.LBB11_147:                             #   in Loop: Header=BB11_7 Depth=3
	movl	8(%r9,%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_171
# %bb.148:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB11_182
# %bb.149:                              #   in Loop: Header=BB11_7 Depth=3
	cmpl	$0, (%r10)
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_183
.LBB11_150:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$7, %r8d
	jmp	.LBB11_4
.LBB11_151:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$5, %r8d
	jmp	.LBB11_4
.LBB11_152:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$8, %r8d
	jmp	.LBB11_4
.LBB11_153:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$10, %r8d
	jmp	.LBB11_4
.LBB11_154:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$6, %r8d
	jmp	.LBB11_4
.LBB11_155:                             #   in Loop: Header=BB11_7 Depth=3
	addq	%rbx, %r8
	jmp	.LBB11_168
.LBB11_156:                             #   in Loop: Header=BB11_7 Depth=3
	ucomisd	%xmm1, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_6
.LBB11_157:                             #   in Loop: Header=BB11_7 Depth=3
	shrl	$14, %r15d
	leaq	(%r8,%r15,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	movsd	%xmm0, (%r10)
	movl	$3, 8(%r9,%r13)
	movsd	%xmm0, 48(%r10)
	movl	$3, 56(%r10)
	jmp	.LBB11_5
.LBB11_158:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%rbx, %r8
	jmp	.LBB11_203
.LBB11_159:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movq	%rcx, %rdx
	movl	$11, %r8d
	jmp	.LBB11_4
.LBB11_160:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_5
.LBB11_161:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %r9          # 8-byte Reload
	jmp	.LBB11_6
.LBB11_162:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
.LBB11_163:                             #   in Loop: Header=BB11_7 Depth=3
	movzbl	%al, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r14d
	jne	.LBB11_204
# %bb.164:                              #   in Loop: Header=BB11_7 Depth=3
	movl	(%r8), %eax
	shrl	$14, %eax
	leaq	(%r8,%rax,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_204
.LBB11_165:                             #   in Loop: Header=BB11_7 Depth=3
	movb	$1, %dl
	jmp	.LBB11_178
.LBB11_166:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%rbx, %r8
	addq	$4, %r8
	jmp	.LBB11_6
.LBB11_167:                             #   in Loop: Header=BB11_7 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	-96(%rbp), %rdx         # 8-byte Reload
.LBB11_168:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r15, (%rdx)
	movl	$6, 8(%rcx,%r13)
	movq	%r8, 48(%rdi)
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_116
# %bb.169:                              #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, %rbx
	callq	luaC_step
	movq	%rbx, %r8
.LBB11_115:                             #   in Loop: Header=BB11_7 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_116:                             #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rdi), %r9
	jmp	.LBB11_6
.LBB11_170:                             #   in Loop: Header=BB11_7 Depth=3
	movb	$1, %al
	jmp	.LBB11_181
.LBB11_171:                             #   in Loop: Header=BB11_7 Depth=3
	movb	$1, %al
	jmp	.LBB11_183
.LBB11_172:                             #   in Loop: Header=BB11_7 Depth=3
	movq	(%r14), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	unpcklps	.LCPI11_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI11_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10)
.LBB11_173:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$3, 8(%r9,%r13)
	jmp	.LBB11_5
.LBB11_174:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r8, 48(%rdi)
	movl	$luaO_nilobject_, %edx
	movq	%r14, %rsi
	movq	%r10, %rcx
	movq	%rdi, %rbx
	movl	$12, %r8d
	callq	call_binTM
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB11_176
# %bb.175:                              #   in Loop: Header=BB11_7 Depth=3
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaG_typeerror
	movl	$42, __A_VARIABLE(%rip)
.LBB11_176:                             #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rbx), %r9
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	movq	-56(%rbp), %r8          # 8-byte Reload
	jmp	.LBB11_6
.LBB11_177:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%edx, %edx
.LBB11_178:                             #   in Loop: Header=BB11_7 Depth=3
	movzbl	%dl, %edx
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r15d
	je	.LBB11_185
# %bb.179:                              #   in Loop: Header=BB11_7 Depth=3
	addq	%r9, %rax
	addq	$8, %rax
	movq	(%rcx), %rcx
	movq	%rcx, (%r10)
	movl	(%rax), %eax
	movl	%eax, 8(%r9,%r13)
	jmp	.LBB11_184
.LBB11_180:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
.LBB11_181:                             #   in Loop: Header=BB11_7 Depth=3
	movzbl	%al, %eax
	movl	%eax, (%r10)
	movl	$1, 8(%r9,%r13)
	jmp	.LBB11_6
.LBB11_182:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
.LBB11_183:                             #   in Loop: Header=BB11_7 Depth=3
	movzbl	%al, %eax
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %r15d
	je	.LBB11_185
.LBB11_184:                             #   in Loop: Header=BB11_7 Depth=3
	movl	(%r8), %eax
	shrl	$14, %eax
	leaq	(%r8,%rax,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	movl	$42, __A_VARIABLE(%rip)
.LBB11_185:                             #   in Loop: Header=BB11_7 Depth=3
	addq	$4, %r8
	jmp	.LBB11_6
.LBB11_186:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB11_194
# %bb.187:                              #   in Loop: Header=BB11_7 Depth=3
	movq	(%r13), %rdi
	movq	(%rbx), %rsi
	callq	l_strcmp
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	setle	%al
	jmp	.LBB11_199
.LBB11_188:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.6, %esi
	jmp	.LBB11_190
.LBB11_189:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.7, %esi
.LBB11_190:                             #   in Loop: Header=BB11_7 Depth=3
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	luaG_runerror
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	%r12, %r9
.LBB11_191:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB11_192:                             #   in Loop: Header=BB11_7 Depth=3
	movsd	(%r10), %xmm0           # xmm0 = mem[0],zero
	subsd	32(%r10), %xmm0
	movsd	%xmm0, (%r10)
	movl	$3, (%r14)
.LBB11_193:                             #   in Loop: Header=BB11_7 Depth=3
	shrl	$14, %r15d
	leaq	(%r8,%r15,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
	jmp	.LBB11_6
.LBB11_194:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r13, %rsi
	movq	%rbx, %rdx
	movl	$14, %ecx
	callq	call_orderTM
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	movq	-56(%rbp), %r8          # 8-byte Reload
	jne	.LBB11_200
# %bb.195:                              #   in Loop: Header=BB11_7 Depth=3
	movq	-48(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r13, %rdx
	movl	$13, %ecx
	callq	call_orderTM
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB11_197
# %bb.196:                              #   in Loop: Header=BB11_7 Depth=3
	movl	%eax, %ecx
	xorl	%eax, %eax
	testl	%ecx, %ecx
	sete	%al
	jmp	.LBB11_199
.LBB11_197:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r15, %rdi
.LBB11_198:                             #   in Loop: Header=BB11_7 Depth=3
	movq	%r13, %rsi
	movq	%rbx, %rdx
	callq	luaG_ordererror
.LBB11_199:                             #   in Loop: Header=BB11_7 Depth=3
	movq	-56(%rbp), %r8          # 8-byte Reload
.LBB11_200:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %eax
	jne	.LBB11_203
# %bb.201:                              #   in Loop: Header=BB11_7 Depth=3
	movl	(%r8), %eax
	shrl	$14, %eax
	leaq	(%r8,%rax,4), %r8
	addq	$-524284, %r8           # imm = 0xFFF80004
.LBB11_202:                             #   in Loop: Header=BB11_7 Depth=3
	movl	$42, __A_VARIABLE(%rip)
.LBB11_203:                             #   in Loop: Header=BB11_7 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB11_204:                             #   in Loop: Header=BB11_7 Depth=3
	movq	24(%rdi), %r9
	addq	$4, %r8
	jmp	.LBB11_6
	.p2align	4, 0x90
.LBB11_205:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r9, %rbx
	movl	%r15d, %eax
	shrl	$23, %eax
	shrl	$14, %r15d
	andl	$511, %r15d             # imm = 0x1FF
	leal	-1(%r15), %edx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_207
# %bb.206:                              #   in Loop: Header=BB11_2 Depth=2
	movl	%eax, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_207:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	callq	luaD_precall
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB11_228
# %bb.208:                              #   in Loop: Header=BB11_2 Depth=2
	movb	$1, %cl
	testl	%eax, %eax
	movq	%rbx, %r9
	jne	.LBB11_226
# %bb.209:                              #   in Loop: Header=BB11_2 Depth=2
	addl	$1, -76(%rbp)           # 4-byte Folded Spill
	movb	$2, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB11_232
	.p2align	4, 0x90
.LBB11_210:                             #   in Loop: Header=BB11_2 Depth=2
	shrl	$23, %r15d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_212
# %bb.211:                              #   in Loop: Header=BB11_2 Depth=2
	movl	%r15d, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	addq	$-16, %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_212:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r9, %r14
	cmpq	$0, 152(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_214
# %bb.213:                              #   in Loop: Header=BB11_2 Depth=2
	movq	%r14, %rsi
	movq	%r10, %rbx
	callq	luaF_close
	movq	%rbx, %r10
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_214:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	callq	luaD_poscall
	movl	$42, __A_VARIABLE(%rip)
	movl	-76(%rbp), %ecx         # 4-byte Reload
	addl	$-1, %ecx
	movl	%ecx, -76(%rbp)         # 4-byte Spill
	je	.LBB11_227
# %bb.215:                              #   in Loop: Header=BB11_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movb	$2, %cl
	testl	%eax, %eax
	movq	%r14, %r9
	je	.LBB11_226
# %bb.216:                              #   in Loop: Header=BB11_2 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_232
	.p2align	4, 0x90
.LBB11_217:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r9, %r13
	shrl	$23, %r15d
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_219
# %bb.218:                              #   in Loop: Header=BB11_2 Depth=2
	movl	%r15d, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_219:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r8, 48(%rdi)
	movq	%r10, %rsi
	movl	$-1, %edx
	callq	luaD_precall
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	je	.LBB11_230
# %bb.220:                              #   in Loop: Header=BB11_2 Depth=2
	movb	$1, %cl
	testl	%eax, %eax
	movq	%r13, %r9
	jne	.LBB11_226
# %bb.221:                              #   in Loop: Header=BB11_2 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	40(%rdi), %r14
	movq	-32(%r14), %r15
	movq	8(%r14), %rbx
	cmpq	$0, 152(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	je	.LBB11_223
# %bb.222:                              #   in Loop: Header=BB11_2 Depth=2
	movq	-40(%r14), %rsi
	callq	luaF_close
	movq	%r13, %r9
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movq	-32(%r14), %rax
.LBB11_223:                             #   in Loop: Header=BB11_2 Depth=2
	movq	(%r14), %rcx
	subq	%rbx, %rcx
	addq	%rax, %rcx
	movq	%rcx, -40(%r14)
	movq	%rcx, 24(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	16(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rdx         # 8-byte Reload
	jae	.LBB11_225
	.p2align	4, 0x90
.LBB11_224:                             #   Parent Loop BB11_1 Depth=1
                                        #     Parent Loop BB11_2 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	movl	8(%rbx), %eax
	movl	%eax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %r15
	addq	$16, %rbx
	cmpq	16(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB11_224
.LBB11_225:                             #   in Loop: Header=BB11_2 Depth=2
	movq	%r15, 16(%rdi)
	movq	%r15, -24(%r14)
	movq	48(%rdi), %rax
	movq	%rax, -16(%r14)
	addl	$1, -4(%r14)
	addq	$-40, 40(%rdi)
	movb	$2, %cl
	jmp	.LBB11_233
	.p2align	4, 0x90
.LBB11_226:                             #   in Loop: Header=BB11_2 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB11_232
.LBB11_227:                             #   in Loop: Header=BB11_2 Depth=2
	movb	$1, %cl
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	%r14, %r9
	jmp	.LBB11_233
.LBB11_228:                             #   in Loop: Header=BB11_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB11_231
# %bb.229:                              #   in Loop: Header=BB11_2 Depth=2
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_231
.LBB11_230:                             #   in Loop: Header=BB11_2 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB11_231:                             #   in Loop: Header=BB11_2 Depth=2
	movq	24(%rdi), %r9
	movb	$4, %cl
.LBB11_232:                             #   in Loop: Header=BB11_2 Depth=2
	movq	-56(%rbp), %rdx         # 8-byte Reload
.LBB11_233:                             #   in Loop: Header=BB11_2 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	je	.LBB11_2
# %bb.234:                              #   in Loop: Header=BB11_2 Depth=2
	cmpb	$4, %cl
	je	.LBB11_2
# %bb.235:                              #   in Loop: Header=BB11_1 Depth=1
	cmpb	$2, %cl
	je	.LBB11_1
	jmp	.LBB11_237
.LBB11_236:
	movq	%r12, 48(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_237:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB11_238:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.8, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
.Lfunc_end11:
	.size	luaV_execute, .Lfunc_end11-luaV_execute
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI11_0:
	.quad	.LBB11_29
	.quad	.LBB11_80
	.quad	.LBB11_71
	.quad	.LBB11_76
	.quad	.LBB11_61
	.quad	.LBB11_92
	.quad	.LBB11_105
	.quad	.LBB11_78
	.quad	.LBB11_109
	.quad	.LBB11_65
	.quad	.LBB11_113
	.quad	.LBB11_60
	.quad	.LBB11_62
	.quad	.LBB11_93
	.quad	.LBB11_56
	.quad	.LBB11_73
	.quad	.LBB11_35
	.quad	.LBB11_89
	.quad	.LBB11_117
	.quad	.LBB11_142
	.quad	.LBB11_97
	.quad	.LBB11_102
	.quad	.LBB11_193
	.quad	.LBB11_145
	.quad	.LBB11_69
	.quad	.LBB11_66
	.quad	.LBB11_147
	.quad	.LBB11_30
	.quad	.LBB11_205
	.quad	.LBB11_217
	.quad	.LBB11_210
	.quad	.LBB11_33
	.quad	.LBB11_38
	.quad	.LBB11_81
	.quad	.LBB11_128
	.quad	.LBB11_59
	.quad	.LBB11_83
	.quad	.LBB11_119
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function Arith
.LCPI12_0:
	.quad	-9223372036854775808    # double -0
	.quad	-9223372036854775808    # double -0
	.text
	.p2align	4, 0x90
	.type	Arith,@function
Arith:                                  # @Arith
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%r8d, %r12d
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rsi, %rcx
	movq	%rdi, %r13
	movl	8(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r14
	cmpl	$3, %eax
	je	.LBB12_4
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB12_18
# %bb.2:
	movq	(%rbx), %rdi
	addq	$24, %rdi
	leaq	-80(%rbp), %rsi
	movq	%rcx, %r14
	callq	luaO_str2d
	movq	%r14, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_18
# %bb.3:
	movq	-80(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
.LBB12_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	8(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	je	.LBB12_8
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jne	.LBB12_18
# %bb.6:
	movq	(%r15), %rdi
	addq	$24, %rdi
	leaq	-96(%rbp), %rsi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	callq	luaO_str2d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB12_18
# %bb.7:
	movq	-96(%rbp), %rax
	movq	%rax, -80(%rbp)
	movl	$3, -72(%rbp)
	leaq	-80(%rbp), %r15
.LBB12_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r15), %xmm1           # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	addl	$-5, %r12d
	cmpl	$6, %r12d
	ja	.LBB12_20
# %bb.9:
	jmpq	*.LJTI12_0(,%r12,8)
.LBB12_10:
	addsd	%xmm1, %xmm0
	jmp	.LBB12_17
.LBB12_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	movl	%r12d, %r8d
	callq	call_binTM
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB12_21
# %bb.19:
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaG_aritherror
	jmp	.LBB12_20
.LBB12_11:
	subsd	%xmm1, %xmm0
	jmp	.LBB12_17
.LBB12_12:
	mulsd	%xmm1, %xmm0
	jmp	.LBB12_17
.LBB12_13:
	divsd	%xmm1, %xmm0
	jmp	.LBB12_17
.LBB12_14:
	movapd	%xmm0, -64(%rbp)        # 16-byte Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	divsd	%xmm1, %xmm0
	movq	%rcx, %rbx
	movsd	%xmm1, -88(%rbp)        # 8-byte Spill
	callq	floor
	movq	%rbx, %rcx
	mulsd	-88(%rbp), %xmm0        # 8-byte Folded Reload
	movapd	-64(%rbp), %xmm1        # 16-byte Reload
	subsd	%xmm0, %xmm1
	movapd	%xmm1, -64(%rbp)        # 16-byte Spill
	movapd	-64(%rbp), %xmm0        # 16-byte Reload
	jmp	.LBB12_17
.LBB12_15:
	movq	%rcx, %rbx
	callq	pow
	movq	%rbx, %rcx
	jmp	.LBB12_17
.LBB12_16:
	xorpd	.LCPI12_0(%rip), %xmm0
.LBB12_17:
	movsd	%xmm0, (%rcx)
	movl	$3, 8(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB12_20:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_21:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	Arith, .Lfunc_end12-Arith
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI12_0:
	.quad	.LBB12_10
	.quad	.LBB12_11
	.quad	.LBB12_12
	.quad	.LBB12_13
	.quad	.LBB12_14
	.quad	.LBB12_15
	.quad	.LBB12_16
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"%.14g"
	.size	.L.str, 6

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"index"
	.size	.L.str.1, 6

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"loop in gettable"
	.size	.L.str.2, 17

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"loop in settable"
	.size	.L.str.3, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"string length overflow"
	.size	.L.str.4, 23

	.hidden	luaO_nilobject_
	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"get length of"
	.size	.L.str.5, 14

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"'for' initial value must be a number"
	.size	.L.str.6, 37

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"'for' limit must be a number"
	.size	.L.str.7, 29

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"'for' step must be a number"
	.size	.L.str.8, 28

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaO_str2d
	.hidden	luaS_newlstr
	.hidden	luaH_get
	.hidden	luaT_gettm
	.hidden	luaT_gettmbyobj
	.hidden	luaG_typeerror
	.hidden	luaG_runerror
	.hidden	luaH_set
	.hidden	luaC_barrierback
	.hidden	luaG_ordererror
	.hidden	luaG_concaterror
	.hidden	luaZ_openspace
	.hidden	luaC_barrierf
	.hidden	luaH_new
	.hidden	luaO_fb2int
	.hidden	luaC_step
	.hidden	luaH_getn
	.hidden	luaD_precall
	.hidden	luaF_close
	.hidden	luaD_poscall
	.hidden	luaD_call
	.hidden	luaH_resizearray
	.hidden	luaH_setnum
	.hidden	luaF_newLclosure
	.hidden	luaF_findupval
	.hidden	luaD_growstack
	.hidden	luaO_rawequalObj
	.hidden	luaD_callhook
	.hidden	luaG_aritherror
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
