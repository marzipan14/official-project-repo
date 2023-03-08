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
	cmpl	$3, %eax
	je	.LBB0_1
# %bb.2:
	cmpl	$4, %eax
	jne	.LBB0_5
# %bb.3:
	movq	%rsi, %rbx
	movq	(%rdi), %rdi
	addq	$24, %rdi
	leaq	-16(%rbp), %rsi
	callq	luaO_str2d
	testl	%eax, %eax
	je	.LBB0_5
# %bb.4:
	movq	-16(%rbp), %rax
	movq	%rax, (%rbx)
	movl	$3, 8(%rbx)
	jmp	.LBB0_6
.LBB0_5:
	xorl	%ebx, %ebx
	jmp	.LBB0_6
.LBB0_1:
	movq	%rdi, %rbx
.LBB0_6:
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
	movl	8(%rsi), %eax
	xorl	%r15d, %r15d
	.p2align	4, 0x90
.LBB2_2:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, %eax
	jne	.LBB2_8
# %bb.3:                                #   in Loop: Header=BB2_2 Depth=1
	movq	(%r13), %rbx
	movq	%rbx, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	luaH_get
	movq	%rax, %r14
	cmpl	$0, 8(%rax)
	jne	.LBB2_16
# %bb.4:                                #   in Loop: Header=BB2_2 Depth=1
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB2_16
# %bb.5:                                #   in Loop: Header=BB2_2 Depth=1
	testb	$1, 10(%rdi)
	jne	.LBB2_16
# %bb.6:                                #   in Loop: Header=BB2_2 Depth=1
	movq	32(%r12), %rax
	movq	296(%rax), %rdx
	xorl	%esi, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB2_16
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rax, %rbx
	movq	%rax, %r14
	addq	$8, %r14
	jmp	.LBB2_10
	.p2align	4, 0x90
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%r12, %rdi
	movq	%r13, %rsi
	xorl	%edx, %edx
	callq	luaT_gettmbyobj
	movq	%rax, %rbx
	movl	8(%rax), %eax
	movq	%rbx, %r14
	addq	$8, %r14
	testl	%eax, %eax
	jne	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$.L.str.1, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaG_typeerror
.LBB2_10:                               #   in Loop: Header=BB2_2 Depth=1
	movl	8(%rbx), %eax
.LBB2_11:                               #   in Loop: Header=BB2_2 Depth=1
	cmpl	$6, %eax
	je	.LBB2_12
# %bb.1:                                #   in Loop: Header=BB2_2 Depth=1
	addl	$1, %r15d
	movq	%rbx, %r13
	cmpl	$99, %r15d
	jbe	.LBB2_2
# %bb.15:
	movl	$.L.str.2, %esi
	movq	%r12, %rdi
	xorl	%eax, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaG_runerror           # TAILCALL
.LBB2_16:
	movq	(%r14), %rax
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movl	8(%r14), %eax
	movl	%eax, 8(%rcx)
	jmp	.LBB2_17
.LBB2_12:
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
	cmpq	$48, %rax
	jg	.LBB2_14
# %bb.13:
	movq	%r12, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movq	16(%r12), %rsi
.LBB2_14:
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
.LBB2_17:
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
	movl	8(%rsi), %eax
	xorl	%r12d, %r12d
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB3_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$5, %eax
	jne	.LBB3_11
# %bb.2:                                #   in Loop: Header=BB3_1 Depth=1
	movq	(%r13), %rbx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	-64(%rbp), %rdx         # 8-byte Reload
	callq	luaH_set
	movq	%rax, %r15
	cmpl	$0, 8(%rax)
	jne	.LBB3_7
# %bb.3:                                #   in Loop: Header=BB3_1 Depth=1
	movq	16(%rbx), %rdi
	testq	%rdi, %rdi
	je	.LBB3_7
# %bb.4:                                #   in Loop: Header=BB3_1 Depth=1
	testb	$2, 10(%rdi)
	jne	.LBB3_7
# %bb.5:                                #   in Loop: Header=BB3_1 Depth=1
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %rax
	movq	304(%rax), %rdx
	movl	$1, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB3_7
# %bb.6:                                #   in Loop: Header=BB3_1 Depth=1
	movq	%rax, %r14
	movq	%rax, %rbx
	addq	$8, %rbx
	movq	-48(%rbp), %r15         # 8-byte Reload
	jmp	.LBB3_13
	.p2align	4, 0x90
.LBB3_11:                               #   in Loop: Header=BB3_1 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	$1, %edx
	callq	luaT_gettmbyobj
	movq	%rax, %r14
	movl	8(%rax), %eax
	movq	%r14, %rbx
	addq	$8, %rbx
	testl	%eax, %eax
	jne	.LBB3_14
# %bb.12:                               #   in Loop: Header=BB3_1 Depth=1
	movl	$.L.str.1, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	luaG_typeerror
.LBB3_13:                               #   in Loop: Header=BB3_1 Depth=1
	movl	8(%r14), %eax
.LBB3_14:                               #   in Loop: Header=BB3_1 Depth=1
	cmpl	$6, %eax
	je	.LBB3_15
# %bb.18:                               #   in Loop: Header=BB3_1 Depth=1
	movq	(%r14), %rcx
	movq	%rcx, -80(%rbp)
	movl	%eax, -72(%rbp)
	addl	$1, %r12d
	leaq	-80(%rbp), %r13
	cmpl	$100, %r12d
	jb	.LBB3_1
# %bb.19:
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB3_20
.LBB3_7:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rax
	movq	%rax, (%r15)
	movl	8(%rcx), %eax
	movl	%eax, 8(%r15)
	movb	$0, 10(%rbx)
	cmpl	$4, 8(%rcx)
	jl	.LBB3_20
# %bb.8:
	movq	(%rcx), %rax
	testb	$3, 9(%rax)
	je	.LBB3_20
# %bb.9:
	testb	$4, 9(%rbx)
	je	.LBB3_20
# %bb.10:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaC_barrierback
	jmp	.LBB3_20
.LBB3_15:
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
	cmpq	$64, %rax
	jg	.LBB3_17
# %bb.16:
	movq	%r15, %rdi
	movl	$4, %esi
	callq	luaD_growstack
	movq	16(%r15), %rsi
.LBB3_17:
	leaq	64(%rsi), %rax
	movq	%rax, 16(%r15)
	movq	%r15, %rdi
	xorl	%edx, %edx
	callq	luaD_call
.LBB3_20:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	8(%rsi), %eax
	cmpl	8(%rdx), %eax
	jne	.LBB4_16
# %bb.1:
	cmpl	$4, %eax
	je	.LBB4_4
# %bb.2:
	cmpl	$3, %eax
	jne	.LBB4_9
# %bb.3:
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	xorl	%eax, %eax
	ucomisd	(%rbx), %xmm0
	seta	%al
	jmp	.LBB4_20
.LBB4_4:
	movq	(%rbx), %rbx
	movq	(%r15), %r14
	movq	16(%rbx), %r15
	addq	$24, %rbx
	movq	16(%r14), %r12
	addq	$24, %r14
.LBB4_5:                                # =>This Inner Loop Header: Depth=1
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	strcoll
	testl	%eax, %eax
	jne	.LBB4_19
# %bb.6:                                #   in Loop: Header=BB4_5 Depth=1
	movq	%rbx, %rdi
	callq	strlen
	cmpq	%r12, %rax
	je	.LBB4_17
# %bb.7:                                #   in Loop: Header=BB4_5 Depth=1
	cmpq	%r15, %rax
	je	.LBB4_18
# %bb.8:                                #   in Loop: Header=BB4_5 Depth=1
	leaq	1(%rax), %rcx
	addq	%rax, %rbx
	addq	$1, %rbx
	subq	%rcx, %r15
	addq	%rax, %r14
	addq	$1, %r14
	subq	%rcx, %r12
	jmp	.LBB4_5
.LBB4_9:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movl	$13, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB4_16
# %bb.10:
	movq	%rax, %r12
	movq	%r14, %rdi
	movq	%r15, %rsi
	movl	$13, %edx
	callq	luaT_gettmbyobj
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	je	.LBB4_16
# %bb.11:
	movq	16(%r14), %rax
	movq	%rax, %r13
	subq	64(%r14), %r13
	movq	(%r12), %rcx
	movq	%rcx, (%rax)
	movl	8(%r12), %ecx
	movl	%ecx, 8(%rax)
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
	cmpq	$48, %rax
	jg	.LBB4_13
# %bb.12:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movq	16(%r14), %rsi
.LBB4_13:
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
	movq	16(%r14), %rcx
	movl	8(%rcx), %eax
	testl	%eax, %eax
	je	.LBB4_20
# %bb.14:
	cmpl	$1, %eax
	jne	.LBB4_21
# %bb.15:
	xorl	%eax, %eax
	cmpl	$0, (%rcx)
	setne	%al
	jmp	.LBB4_20
.LBB4_16:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaG_ordererror         # TAILCALL
.LBB4_17:
	xorl	%eax, %eax
	jmp	.LBB4_19
.LBB4_18:
	movl	$-1, %eax
.LBB4_19:
	shrl	$31, %eax
.LBB4_20:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_21:
	movl	$1, %eax
	jmp	.LBB4_20
.Lfunc_end4:
	.size	luaV_lessthan, .Lfunc_end4-luaV_lessthan
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
	cmpq	$7, %rax
	ja	.LBB5_2
# %bb.1:
	movq	%rdi, %r14
	movb	$1, %r12b
	jmpq	*.LJTI5_0(,%rax,8)
.LBB5_5:
	movq	(%rbx), %rcx
	movq	(%r15), %rax
	cmpq	%rax, %rcx
	je	.LBB5_21
# %bb.6:
	movq	16(%rcx), %r13
	testq	%r13, %r13
	je	.LBB5_14
# %bb.7:
	testb	$16, 10(%r13)
	jne	.LBB5_14
# %bb.8:
	movq	16(%rax), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	32(%r14), %rax
	movq	328(%rax), %rdx
	movq	%r13, %rdi
	movl	$4, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB5_14
# %bb.9:
	movq	%rax, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	cmpq	%rdi, %r13
	je	.LBB5_16
# %bb.10:
	testq	%rdi, %rdi
	je	.LBB5_14
# %bb.11:
	testb	$16, 10(%rdi)
	jne	.LBB5_14
# %bb.12:
	movq	%rdx, %r13
	movq	32(%r14), %rax
	movq	328(%rax), %rdx
	movl	$4, %esi
	callq	luaT_gettm
	testq	%rax, %rax
	je	.LBB5_14
# %bb.13:
	movq	%r13, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	movq	%r13, %rdx
	testl	%eax, %eax
	je	.LBB5_14
.LBB5_16:
	movq	16(%r14), %rax
	movq	%rax, %r13
	subq	64(%r14), %r13
	movq	(%rdx), %rcx
	movq	%rcx, (%rax)
	movl	8(%rdx), %ecx
	movl	%ecx, 8(%rax)
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
	cmpq	$48, %rax
	jg	.LBB5_18
# %bb.17:
	movq	%r14, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movq	16(%r14), %rsi
.LBB5_18:
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
	movq	16(%r14), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	je	.LBB5_14
# %bb.19:
	cmpl	$1, %ecx
	jne	.LBB5_21
# %bb.20:
	cmpl	$0, (%rax)
	setne	%r12b
	jmp	.LBB5_21
.LBB5_2:
	movq	(%rbx), %rax
	cmpq	(%r15), %rax
	sete	%r12b
	jmp	.LBB5_21
.LBB5_14:
	xorl	%r12d, %r12d
	jmp	.LBB5_21
.LBB5_3:
	movl	(%rbx), %eax
	cmpl	(%r15), %eax
	sete	%r12b
	jmp	.LBB5_21
.LBB5_4:
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	cmpeqsd	(%rbx), %xmm0
	movq	%xmm0, %r12
	andl	$1, %r12d
.LBB5_21:
	movzbl	%r12b, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaV_equalval, .Lfunc_end5-luaV_equalval
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI5_0:
	.quad	.LBB5_21
	.quad	.LBB5_3
	.quad	.LBB5_2
	.quad	.LBB5_4
	.quad	.LBB5_2
	.quad	.LBB5_5
	.quad	.LBB5_2
	.quad	.LBB5_5
                                        # -- End function
	.text
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
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	jmp	.LBB6_4
	.p2align	4, 0x90
.LBB6_1:                                #   in Loop: Header=BB6_4 Depth=1
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
	movq	%rdx, (%rcx,%r15)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r15)
.LBB6_2:                                #   in Loop: Header=BB6_4 Depth=1
	movl	$2, %r15d
.LBB6_3:                                #   in Loop: Header=BB6_4 Depth=1
	addl	$-1, %r15d
	subl	%r15d, %r14d
	subl	%r15d, -52(%rbp)        # 4-byte Folded Spill
	cmpl	$1, %r14d
	jle	.LBB6_29
.LBB6_4:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB6_12 Depth 2
                                        #     Child Loop BB6_25 Depth 2
	movq	24(%rbx), %r13
	movslq	-52(%rbp), %rax         # 4-byte Folded Reload
	movq	%rax, -64(%rbp)         # 8-byte Spill
	shlq	$4, %rax
	leaq	(%rax,%r13), %r12
	leaq	(%rax,%r13), %rcx
	addq	$16, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	leaq	(%rax,%r13), %r15
	addq	$-16, %r15
	movl	-8(%r13,%rax), %eax
	addl	$-3, %eax
	cmpl	$1, %eax
	ja	.LBB6_17
# %bb.5:                                #   in Loop: Header=BB6_4 Depth=1
	movl	8(%r12), %eax
	cmpl	$4, %eax
	je	.LBB6_8
# %bb.6:                                #   in Loop: Header=BB6_4 Depth=1
	cmpl	$3, %eax
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jne	.LBB6_17
# %bb.7:                                #   in Loop: Header=BB6_4 Depth=1
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	leaq	-128(%rbp), %rdi
	movb	$1, %al
	callq	sprintf
	leaq	-128(%rbp), %rdi
	callq	strlen
	movq	%rbx, %rdi
	leaq	-128(%rbp), %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r12)
	movl	$4, 8(%r12)
.LBB6_8:                                #   in Loop: Header=BB6_4 Depth=1
	movq	(%r12), %rax
	movq	16(%rax), %r12
	testq	%r12, %r12
	je	.LBB6_21
# %bb.9:                                #   in Loop: Header=BB6_4 Depth=1
	cmpl	$2, %r14d
	movl	%r14d, -76(%rbp)        # 4-byte Spill
	movq	%r13, -96(%rbp)         # 8-byte Spill
	jl	.LBB6_23
# %bb.10:                               #   in Loop: Header=BB6_4 Depth=1
	movslq	%r14d, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$1, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB6_12
	.p2align	4, 0x90
.LBB6_11:                               #   in Loop: Header=BB6_12 Depth=2
	addq	%rbx, %r12
	movq	%r13, %rax
	addq	$1, %rax
	addq	$-16, %r15
	movq	%rax, %r13
	cmpq	-72(%rbp), %rax         # 8-byte Folded Reload
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jge	.LBB6_24
.LBB6_12:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	8(%r15), %eax
	cmpl	$4, %eax
	je	.LBB6_15
# %bb.13:                               #   in Loop: Header=BB6_12 Depth=2
	cmpl	$3, %eax
	jne	.LBB6_24
# %bb.14:                               #   in Loop: Header=BB6_12 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	leaq	-128(%rbp), %r14
	movq	%r14, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r14, %rdi
	callq	strlen
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, 8(%r15)
.LBB6_15:                               #   in Loop: Header=BB6_12 Depth=2
	movq	(%r15), %rax
	movq	16(%rax), %rbx
	movq	$-3, %rax
	subq	%r12, %rax
	cmpq	%rax, %rbx
	jb	.LBB6_11
# %bb.16:                               #   in Loop: Header=BB6_12 Depth=2
	movl	$.L.str.4, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB6_11
	.p2align	4, 0x90
.LBB6_17:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movl	$15, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB6_19
# %bb.18:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movl	$15, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB6_27
.LBB6_19:                               #   in Loop: Header=BB6_4 Depth=1
	subq	64(%rbx), %r15
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%rbx), %rax
	movq	-88(%rbp), %rdx         # 8-byte Reload
	movq	-32(%rdx), %rcx
	movq	%rcx, 16(%rax)
	movl	-24(%rdx), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	-16(%rdx), %rcx
	movq	%rcx, 32(%rax)
	movl	-8(%rdx), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	jg	.LBB6_1
# %bb.20:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbx, %rdi
	movl	$3, %esi
	callq	luaD_growstack
	movq	16(%rbx), %rsi
	jmp	.LBB6_1
.LBB6_21:                               #   in Loop: Header=BB6_4 Depth=1
	cmpl	$3, 8(%r15)
	jne	.LBB6_28
# %bb.22:                               #   in Loop: Header=BB6_4 Depth=1
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	movl	$.L.str, %esi
	leaq	-128(%rbp), %r12
	movq	%r12, %rdi
	movb	$1, %al
	callq	sprintf
	movq	%r12, %rdi
	callq	strlen
	movq	-48(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	movq	%r12, %rsi
	movq	%rax, %rdx
	callq	luaS_newlstr
	movq	%rax, (%r15)
	movl	$4, 8(%r15)
	jmp	.LBB6_2
.LBB6_23:                               #   in Loop: Header=BB6_4 Depth=1
	movl	$1, %r13d
	movq	-48(%rbp), %rbx         # 8-byte Reload
.LBB6_24:                               # %.loopexit
                                        #   in Loop: Header=BB6_4 Depth=1
	movq	-64(%rbp), %r14         # 8-byte Reload
	movq	32(%rbx), %rsi
	addq	$88, %rsi
	movq	%rbx, %rdi
	movq	%r12, %rdx
	callq	luaZ_openspace
	movq	%rax, %r12
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movslq	%r13d, %r15
	subq	%r15, %r14
	addq	$1, %r15
	shlq	$4, %r14
	movq	-96(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r14), %r13
	addq	$16, %r13
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB6_25:                               #   Parent Loop BB6_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%rbx, %r14
	movq	(%r13), %rsi
	movq	16(%rsi), %rbx
	leaq	(%r12,%r14), %rdi
	addq	$24, %rsi
	movq	%rbx, %rdx
	callq	memcpy
	addq	%r14, %rbx
	addq	$-1, %r15
	addq	$16, %r13
	cmpq	$1, %r15
	jg	.LBB6_25
# %bb.26:                               #   in Loop: Header=BB6_4 Depth=1
	movq	-72(%rbp), %r15         # 8-byte Reload
	movl	%r15d, %eax
	shlq	$4, %rax
	movq	-88(%rbp), %r14         # 8-byte Reload
	subq	%rax, %r14
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	movq	%rbx, %rdx
	movq	%rdi, %rbx
	callq	luaS_newlstr
	movq	%rax, (%r14)
	movl	$4, 8(%r14)
	movl	-76(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB6_3
.LBB6_27:                               #   in Loop: Header=BB6_4 Depth=1
	movq	%rbx, %rdi
	movq	%r15, %rsi
	movq	%r12, %rdx
	callq	luaG_concaterror
	jmp	.LBB6_2
.LBB6_28:                               #   in Loop: Header=BB6_4 Depth=1
	movl	$2, %r15d
	movq	-48(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB6_3
.LBB6_29:
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaV_concat, .Lfunc_end6-luaV_concat
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function luaV_execute
.LCPI7_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI7_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
.LCPI7_2:
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
	subq	$104, %rsp
	movl	%esi, -132(%rbp)        # 4-byte Spill
	movq	%rdi, -48(%rbp)         # 8-byte Spill
.LBB7_1:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB7_5 Depth 2
                                        #       Child Loop BB7_111 Depth 3
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_174 Depth 3
                                        #       Child Loop BB7_273 Depth 3
                                        #       Child Loop BB7_73 Depth 3
                                        #     Child Loop BB7_318 Depth 2
	movq	48(%rdi), %r9
	movq	24(%rdi), %r11
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movq	32(%rax), %rax
	movq	16(%rax), %rax
	movq	%rax, -96(%rbp)         # 8-byte Spill
	jmp	.LBB7_5
.LBB7_2:                                #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rsi         # 8-byte Reload
	addq	%rsi, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %ecx
	shrl	$14, %ecx
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rsi, %rax
	andl	$511, %ecx              # imm = 0x1FF
	shlq	$4, %rcx
	addq	%r11, %rcx
	testl	$4194304, %r13d         # imm = 0x400000
	cmovneq	%rax, %rcx
	movq	%r10, %rsi
.LBB7_3:                                #   in Loop: Header=BB7_5 Depth=2
	callq	luaV_settable
.LBB7_4:                                #   in Loop: Header=BB7_5 Depth=2
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	24(%rdi), %r11
	.p2align	4, 0x90
.LBB7_5:                                #   Parent Loop BB7_1 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB7_111 Depth 3
                                        #       Child Loop BB7_29 Depth 3
                                        #       Child Loop BB7_174 Depth 3
                                        #       Child Loop BB7_273 Depth 3
                                        #       Child Loop BB7_73 Depth 3
	movq	%r9, %r12
	addq	$4, %r9
	movl	(%r12), %r13d
	movzbl	100(%rdi), %ebx
	testb	$12, %bl
	movq	%r9, -56(%rbp)          # 8-byte Spill
	je	.LBB7_21
# %bb.6:                                #   in Loop: Header=BB7_5 Depth=2
	movl	108(%rdi), %eax
	addl	$-1, %eax
	movl	%eax, 108(%rdi)
	testb	$4, %bl
	jne	.LBB7_8
# %bb.7:                                #   in Loop: Header=BB7_5 Depth=2
	testl	%eax, %eax
	jne	.LBB7_21
.LBB7_8:                                #   in Loop: Header=BB7_5 Depth=2
	movq	48(%rdi), %r14
	movq	%r9, 48(%rdi)
	testb	$8, %bl
	je	.LBB7_11
# %bb.9:                                #   in Loop: Header=BB7_5 Depth=2
	testl	%eax, %eax
	jne	.LBB7_11
# %bb.10:                               #   in Loop: Header=BB7_5 Depth=2
	movl	104(%rdi), %eax
	movl	%eax, 108(%rdi)
	movl	$3, %esi
	movl	$-1, %edx
	callq	luaD_callhook
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_11:                               #   in Loop: Header=BB7_5 Depth=2
	testb	$4, %bl
	je	.LBB7_19
# %bb.12:                               #   in Loop: Header=BB7_5 Depth=2
	movq	40(%rdi), %rax
	movq	8(%rax), %rax
	movq	(%rax), %rax
	movq	32(%rax), %rax
	movq	24(%rax), %rcx
	movq	40(%rax), %rax
	movq	%r9, %rsi
	subq	%rcx, %rsi
	shrq	$2, %rsi
	addl	$-1, %esi
	testq	%rax, %rax
	je	.LBB7_14
# %bb.13:                               #   in Loop: Header=BB7_5 Depth=2
	movslq	%esi, %rdx
	movl	(%rax,%rdx,4), %edx
	cmpq	%r9, %r14
	jb	.LBB7_15
	jmp	.LBB7_18
.LBB7_14:                               #   in Loop: Header=BB7_5 Depth=2
	xorl	%edx, %edx
	cmpq	%r9, %r14
	jae	.LBB7_18
.LBB7_15:                               #   in Loop: Header=BB7_5 Depth=2
	testl	%esi, %esi
	je	.LBB7_18
# %bb.16:                               #   in Loop: Header=BB7_5 Depth=2
	testq	%rax, %rax
	je	.LBB7_24
# %bb.17:                               #   in Loop: Header=BB7_5 Depth=2
	subq	%rcx, %r14
	shlq	$30, %r14
	movabsq	$-4294967296, %rcx      # imm = 0xFFFFFFFF00000000
	addq	%rcx, %r14
	sarq	$30, %r14
	movl	(%rax,%r14), %eax
	cmpl	%eax, %edx
	je	.LBB7_19
.LBB7_18:                               #   in Loop: Header=BB7_5 Depth=2
	movl	$2, %esi
	callq	luaD_callhook
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_19:                               #   in Loop: Header=BB7_5 Depth=2
	cmpb	$1, 10(%rdi)
	je	.LBB7_320
# %bb.20:                               #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
.LBB7_21:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	andb	$63, %al
	cmpb	$37, %al
	ja	.LBB7_5
# %bb.22:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	shrl	$6, %eax
	movzbl	%al, %r14d
	movq	%r14, %r15
	shlq	$4, %r15
	leaq	(%r11,%r15), %r10
	movl	%r13d, %eax
	andl	$63, %eax
	jmpq	*.LJTI7_0(,%rax,8)
.LBB7_23:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$19, %r13
	andl	$-16, %r13d
	movq	(%r11,%r13), %rax
	movq	%rax, (%r10)
	movl	8(%r11,%r13), %eax
	movl	%eax, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_24:                               #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
	cmpl	%eax, %edx
	jne	.LBB7_18
	jmp	.LBB7_19
.LBB7_25:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movq	%r10, -64(%rbp)         # 8-byte Spill
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	24(%rax), %rdx
	movq	32(%rax), %rax
	movq	32(%rax), %rax
	shrl	$14, %r13d
	movq	(%rax,%r13,8), %rbx
	movzbl	112(%rbx), %r12d
	movl	%r12d, %esi
	callq	luaF_newLclosure
	movq	%rax, %r14
	movq	%rbx, 32(%rax)
	testl	%r12d, %r12d
	je	.LBB7_163
# %bb.26:                               #   in Loop: Header=BB7_5 Depth=2
	shlq	$2, %r12
	xorl	%ebx, %ebx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-120(%rbp), %r13        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB7_29
	.p2align	4, 0x90
.LBB7_27:                               #   in Loop: Header=BB7_29 Depth=3
	shlq	$4, %rsi
	addq	%rdx, %rsi
	callq	luaF_findupval
	movq	-128(%rbp), %rdx        # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_28:                               #   in Loop: Header=BB7_29 Depth=3
	movq	%rax, 40(%r14,%rbx,2)
	addq	$4, %rbx
	cmpq	%rbx, %r12
	je	.LBB7_131
.LBB7_29:                               #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	(%r9,%rbx), %esi
	movl	%esi, %eax
	andl	$63, %eax
	shrq	$23, %rsi
	cmpl	$4, %eax
	jne	.LBB7_27
# %bb.30:                               #   in Loop: Header=BB7_29 Depth=3
	movq	40(%r13,%rsi,8), %rax
	jmp	.LBB7_28
.LBB7_31:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %ecx
	shrl	$23, %ecx
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	testl	%ecx, %ecx
	je	.LBB7_167
# %bb.32:                               #   in Loop: Header=BB7_5 Depth=2
	testl	%r13d, %r13d
	je	.LBB7_168
.LBB7_33:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$5, 8(%r11,%r15)
	jne	.LBB7_5
	jmp	.LBB7_169
.LBB7_34:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	shrl	$23, %eax
	shlq	$4, %rax
	leaq	(%r11,%rax), %rcx
	movl	8(%r11,%rax), %eax
	testl	%eax, %eax
	je	.LBB7_186
# %bb.35:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$1, %eax
	jne	.LBB7_187
# %bb.36:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, (%rcx)
	sete	%dl
	jmp	.LBB7_188
.LBB7_37:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	16(%r10), %xmm1         # xmm1 = mem[0],zero
	movsd	32(%r10), %xmm2         # xmm2 = mem[0],zero
	movsd	(%r10), %xmm0           # xmm0 = mem[0],zero
	addsd	%xmm2, %xmm0
	xorpd	%xmm3, %xmm3
	ucomisd	%xmm3, %xmm2
	jbe	.LBB7_132
# %bb.38:                               #   in Loop: Header=BB7_5 Depth=2
	ucomisd	%xmm0, %xmm1
	jb	.LBB7_5
	jmp	.LBB7_133
.LBB7_39:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_134
# %bb.40:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_206
# %bb.41:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	divsd	%xmm1, %xmm0
	movq	%r10, %r14
	movq	%r11, %rbx
	callq	floor
	movq	%rbx, %r11
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	mulsd	-144(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r14)
	movl	$3, 8(%rbx,%r15)
	jmp	.LBB7_5
.LBB7_42:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_137
# %bb.43:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_214
# %bb.44:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%r14), %xmm0
	jmp	.LBB7_94
.LBB7_45:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	andl	$-16, %eax
	leaq	(%r11,%rax), %rsi
	movq	(%r11,%rax), %rcx
	movq	%rcx, 16(%r10)
	movl	8(%r11,%rax), %eax
	movl	%eax, 24(%r10)
	movq	%r9, 48(%rdi)
	jmp	.LBB7_89
.LBB7_46:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$23, %r13
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	40(%rax,%r13,8), %rax
	movq	16(%rax), %rax
	movq	(%rax), %rcx
	movq	%rcx, (%r10)
	movl	8(%rax), %eax
	movl	%eax, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_47:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_140
# %bb.48:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_220
# %bb.49:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	addsd	(%r14), %xmm0
	jmp	.LBB7_94
.LBB7_50:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movl	%r13d, %esi
	shrl	$23, %esi
	movzbl	%sil, %eax
	shlq	$4, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	shlq	$4, %rsi
	addq	%r11, %rsi
	testl	%r13d, %r13d
	cmovsq	%rax, %rsi
	movl	%r13d, %edx
	shrl	$14, %edx
	movzbl	%dl, %eax
	shlq	$4, %rax
	addq	%rcx, %rax
	andl	$511, %edx              # imm = 0x1FF
	shlq	$4, %rdx
	addq	%r11, %rdx
	testl	$4194304, %r13d         # imm = 0x400000
	cmovneq	%rax, %rdx
	movq	%r9, %rbx
	callq	luaV_lessthan
	cmpl	%r14d, %eax
	jne	.LBB7_143
# %bb.51:                               #   in Loop: Header=BB7_5 Depth=2
	movl	(%rbx), %eax
	shrl	$14, %eax
	leaq	(%rbx,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
	jmp	.LBB7_303
.LBB7_52:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %ebx
	shrl	$23, %ebx
	movzbl	%bl, %eax
	shlq	$4, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	shlq	$4, %rbx
	addq	%r11, %rbx
	testl	%r13d, %r13d
	cmovsq	%rax, %rbx
	movl	%r13d, %r15d
	shrl	$14, %r15d
	movzbl	%r15b, %eax
	shlq	$4, %rax
	addq	%rcx, %rax
	andl	$511, %r15d             # imm = 0x1FF
	shlq	$4, %r15
	addq	%r11, %r15
	testl	$4194304, %r13d         # imm = 0x400000
	cmovneq	%rax, %r15
	movq	%r9, 48(%rdi)
	movl	8(%rbx), %eax
	cmpl	8(%r15), %eax
	jne	.LBB7_144
# %bb.53:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$4, %eax
	je	.LBB7_272
# %bb.54:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, %eax
	jne	.LBB7_277
# %bb.55:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	xorl	%r15d, %r15d
	ucomisd	(%rbx), %xmm0
	setae	%r15b
	jmp	.LBB7_301
.LBB7_56:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	leaq	(%r11,%r15), %r14
	addq	$8, %r14
	movl	8(%r11,%r15), %eax
	cmpl	$3, %eax
	je	.LBB7_60
# %bb.57:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %r15
	cmpl	$4, %eax
	jne	.LBB7_179
# %bb.58:                               #   in Loop: Header=BB7_5 Depth=2
	movq	(%r10), %rdi
	addq	$24, %rdi
	leaq	-88(%rbp), %rsi
	movq	%r10, %rbx
	callq	luaO_str2d
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_179
# %bb.59:                               #   in Loop: Header=BB7_5 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, (%r10)
	movl	$3, (%r14)
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r15, %r11
.LBB7_60:                               #   in Loop: Header=BB7_5 Depth=2
	movl	24(%r10), %eax
	cmpl	$3, %eax
	je	.LBB7_64
# %bb.61:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %r15
	cmpl	$4, %eax
	jne	.LBB7_244
# %bb.62:                               #   in Loop: Header=BB7_5 Depth=2
	movq	16(%r10), %rdi
	addq	$24, %rdi
	leaq	-88(%rbp), %rsi
	movq	%r10, %rbx
	callq	luaO_str2d
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_244
# %bb.63:                               #   in Loop: Header=BB7_5 Depth=2
	movq	-88(%rbp), %rax
	movq	%rax, 16(%r10)
	movl	$3, 24(%r10)
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r15, %r11
.LBB7_64:                               #   in Loop: Header=BB7_5 Depth=2
	movl	40(%r10), %eax
	cmpl	$3, %eax
	je	.LBB7_246
# %bb.65:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$4, %eax
	jne	.LBB7_322
# %bb.66:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %rbx
	movq	32(%r10), %rdi
	addq	$24, %rdi
	leaq	-88(%rbp), %rsi
	movq	%r10, %r15
	callq	luaO_str2d
	testl	%eax, %eax
	je	.LBB7_322
# %bb.67:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r15, %r10
	movq	-88(%rbp), %rax
	movq	%rax, 32(%r15)
	movl	$3, 40(%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%rbx, %r11
	jmp	.LBB7_246
.LBB7_68:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	shrl	$23, %eax
	movl	%eax, (%r10)
	movl	$1, 8(%r11,%r15)
	addq	$8, %r12
	testl	$8372224, %r13d         # imm = 0x7FC000
	cmovneq	%r12, %r9
	jmp	.LBB7_5
.LBB7_69:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_145
# %bb.70:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_226
# %bb.71:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	divsd	(%r14), %xmm0
	jmp	.LBB7_94
.LBB7_72:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$19, %r13
	andl	$-16, %r13d
	addq	%r11, %r13
	.p2align	4, 0x90
.LBB7_73:                               #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, 8(%r13)
	addq	$-16, %r13
	cmpq	%r10, %r13
	jae	.LBB7_73
	jmp	.LBB7_5
.LBB7_74:                               #   in Loop: Header=BB7_5 Depth=2
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$5, -80(%rbp)
	movq	%r9, 48(%rdi)
	shrq	$10, %r13
	andl	$-16, %r13d
	addq	-96(%rbp), %r13         # 8-byte Folded Reload
	leaq	-88(%rbp), %rsi
	movq	%r13, %rdx
	movq	%r10, %rcx
	jmp	.LBB7_3
.LBB7_75:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$10, %r13
	andl	$-16, %r13d
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx,%r13), %rax
	movq	%rax, (%r10)
	movl	8(%rcx,%r13), %eax
	movl	%eax, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_76:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_148
# %bb.77:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_232
# %bb.78:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movq	%r10, %r14
	movq	%r11, %rbx
	callq	pow
	movq	%rbx, %r11
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movsd	%xmm0, (%r14)
	movl	$3, 8(%rbx,%r15)
	jmp	.LBB7_5
.LBB7_79:                               #   in Loop: Header=BB7_5 Depth=2
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
	movl	8(%r11,%r15), %eax
	movl	%eax, 56(%r10)
	addq	$96, %r10
	movq	%r10, 16(%rdi)
	movq	%r9, 48(%rdi)
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	movl	%r13d, %edx
	movq	%r9, %rbx
	callq	luaD_call
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	24(%rdi), %r11
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	movl	56(%r11,%r15), %eax
	testl	%eax, %eax
	je	.LBB7_178
# %bb.80:                               #   in Loop: Header=BB7_5 Depth=2
	leaq	(%r11,%r15), %rcx
	addq	$48, %rcx
	movq	(%rcx), %rdx
	movq	%rdx, -16(%rcx)
	movl	%eax, -8(%rcx)
	movl	(%rbx), %eax
	shrl	$14, %eax
	leaq	(%rbx,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
	addq	$4, %r9
	jmp	.LBB7_5
.LBB7_81:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$10, %r13
	andl	$-16, %r13d
	addq	-96(%rbp), %r13         # 8-byte Folded Reload
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	24(%rax), %rax
	movq	%rax, -88(%rbp)
	movl	$5, -80(%rbp)
	movq	%r9, 48(%rdi)
	leaq	-88(%rbp), %rsi
	movq	%r13, %rdx
	jmp	.LBB7_90
.LBB7_82:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$19, %r13
	andl	$-16, %r13d
	leaq	(%r11,%r13), %r14
	movl	8(%r11,%r13), %eax
	cmpl	$4, %eax
	je	.LBB7_191
# %bb.83:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %r12
	movq	%r10, -64(%rbp)         # 8-byte Spill
	cmpl	$5, %eax
	jne	.LBB7_192
# %bb.84:                               #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	callq	luaH_getn
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorps	%xmm0, %xmm0
	cvtsi2sd	%eax, %xmm0
	movq	-64(%rbp), %rax         # 8-byte Reload
	movsd	%xmm0, (%rax)
	movq	%r12, %r11
	movl	$3, 8(%r12,%r15)
	jmp	.LBB7_5
.LBB7_85:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %ebx
	shrl	$23, %ebx
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	movq	%r9, 48(%rdi)
	movl	%r13d, %esi
	subl	%ebx, %esi
	addl	$1, %esi
	movl	%r13d, %edx
	callq	luaV_concat
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_87
# %bb.86:                               #   in Loop: Header=BB7_5 Depth=2
	callq	luaC_step
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_87:                               #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	movl	%ebx, %eax
	shlq	$4, %rax
	movq	(%r11,%rax), %rcx
	movq	%rcx, (%r11,%r15)
	movl	8(%r11,%rax), %eax
	movl	%eax, 8(%r11,%r15)
	movq	-56(%rbp), %r9          # 8-byte Reload
	jmp	.LBB7_5
.LBB7_88:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, %rsi
	shrq	$19, %rsi
	andl	$-16, %esi
	addq	%r11, %rsi
.LBB7_89:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %edx
	shrl	$14, %edx
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	-96(%rbp), %rax         # 8-byte Folded Reload
	andl	$511, %edx              # imm = 0x1FF
	shlq	$4, %rdx
	addq	%r11, %rdx
	testl	$4194304, %r13d         # imm = 0x400000
	cmovneq	%rax, %rdx
.LBB7_90:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %rcx
	callq	luaV_gettable
	jmp	.LBB7_4
.LBB7_91:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rax
	shrq	$19, %rax
	movl	%eax, %edx
	andl	$-16, %edx
	andl	$4080, %eax             # imm = 0xFF0
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	addq	%r11, %rdx
	testl	%r13d, %r13d
	cmovsq	%rax, %rdx
	movl	%r13d, %r14d
	shrl	$14, %r14d
	movq	%r13, %rax
	shrq	$10, %rax
	andl	$4080, %eax             # imm = 0xFF0
	addq	%rcx, %rax
	andl	$511, %r14d             # imm = 0x1FF
	shlq	$4, %r14
	addq	%r11, %r14
	testl	$4194304, %r13d         # imm = 0x400000
	movq	%rdx, %r13
	cmovneq	%rax, %r14
	movl	8(%rdx), %eax
	cmpl	$3, %eax
	jne	.LBB7_151
# %bb.92:                               #   in Loop: Header=BB7_5 Depth=2
	cmpl	$3, 8(%r14)
	jne	.LBB7_237
# %bb.93:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
.LBB7_94:                               #   in Loop: Header=BB7_5 Depth=2
	movsd	%xmm0, (%r10)
	movl	$3, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_95:                               #   in Loop: Header=BB7_5 Depth=2
	shrq	$23, %r13
	movq	-120(%rbp), %rax        # 8-byte Reload
	movq	40(%rax,%r13,8), %rsi
	movq	16(%rsi), %rax
	movq	(%r10), %rcx
	movq	%rcx, (%rax)
	movl	8(%r11,%r15), %ecx
	movl	%ecx, 8(%rax)
	cmpl	$4, 8(%r11,%r15)
	jl	.LBB7_5
# %bb.96:                               #   in Loop: Header=BB7_5 Depth=2
	movq	(%r10), %rdx
	testb	$3, 9(%rdx)
	je	.LBB7_5
# %bb.97:                               #   in Loop: Header=BB7_5 Depth=2
	testb	$4, 9(%rsi)
	je	.LBB7_5
# %bb.98:                               #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %rbx
	callq	luaC_barrierf
	jmp	.LBB7_130
.LBB7_99:                               #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %edi
	shrl	$23, %edi
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	movq	%r10, %rbx
	movq	%r11, %r12
	callq	luaO_fb2int
	movl	%eax, %r14d
	movl	%r13d, %edi
	callq	luaO_fb2int
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	%r14d, %esi
	movl	%eax, %edx
	callq	luaH_new
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, (%rbx)
	movl	$5, 8(%r12,%r15)
	movq	%r9, 48(%rdi)
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_101
# %bb.100:                              #   in Loop: Header=BB7_5 Depth=2
	callq	luaC_step
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_101:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	jmp	.LBB7_5
.LBB7_102:                              #   in Loop: Header=BB7_5 Depth=2
	shrq	$19, %r13
	andl	$-16, %r13d
	leaq	(%r11,%r13), %r14
	movl	8(%r11,%r13), %eax
	cmpl	$3, %eax
	jne	.LBB7_154
# %bb.103:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	xorpd	.LCPI7_2(%rip), %xmm0
	movlpd	%xmm0, (%r10)
	movl	$3, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_104:                              #   in Loop: Header=BB7_5 Depth=2
	shrl	$23, %r13d
	movq	40(%rdi), %r12
	movq	(%r12), %rax
	subq	8(%r12), %rax
	shrq	$4, %rax
	movq	-120(%rbp), %rcx        # 8-byte Reload
	movq	32(%rcx), %rcx
	movzbl	113(%rcx), %r14d
	notl	%r14d
	addl	%eax, %r14d
	subl	$1, %r13d
	jae	.LBB7_108
# %bb.105:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	56(%rdi), %rax
	subq	16(%rdi), %rax
	movl	%r14d, %ecx
	shll	$4, %ecx
	movslq	%ecx, %rcx
	cmpq	%rcx, %rax
	jg	.LBB7_107
# %bb.106:                              #   in Loop: Header=BB7_5 Depth=2
	movl	%r14d, %esi
	callq	luaD_growstack
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_107:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	addq	%r11, %r15
	movslq	%r14d, %rax
	shlq	$4, %rax
	addq	%r15, %rax
	movq	%rax, 16(%rdi)
	movl	%r14d, %r13d
	movq	%r15, %r10
.LBB7_108:                              #   in Loop: Header=BB7_5 Depth=2
	testl	%r13d, %r13d
	jle	.LBB7_5
# %bb.109:                              #   in Loop: Header=BB7_5 Depth=2
	movslq	%r14d, %rax
	movl	%r13d, %r8d
	addq	$8, %r10
	movq	%rax, %rsi
	shlq	$4, %rsi
	movl	$8, %edx
	subq	%rsi, %rdx
	xorl	%esi, %esi
	jmp	.LBB7_111
	.p2align	4, 0x90
.LBB7_110:                              #   in Loop: Header=BB7_111 Depth=3
	movl	%ebx, (%r10)
	addq	$1, %rsi
	addq	$16, %r10
	addq	$16, %rdx
	cmpq	%rsi, %r8
	je	.LBB7_5
.LBB7_111:                              #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movl	$0, %ebx
	cmpq	%rax, %rsi
	jge	.LBB7_110
# %bb.112:                              #   in Loop: Header=BB7_111 Depth=3
	movq	(%r12), %rcx
	movq	-8(%rcx,%rdx), %rbx
	movq	%rbx, -8(%r10)
	movl	(%rcx,%rdx), %ebx
	jmp	.LBB7_110
.LBB7_113:                              #   in Loop: Header=BB7_5 Depth=2
	shrq	$23, %r13
	shlq	$4, %r13
	movl	8(%r11,%r13), %eax
	testl	%eax, %eax
	je	.LBB7_197
# %bb.114:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$1, %eax
	jne	.LBB7_198
# %bb.115:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, (%r11,%r13)
	sete	%al
	jmp	.LBB7_199
.LBB7_116:                              #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %esi
	shrl	$23, %esi
	movzbl	%sil, %eax
	shlq	$4, %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	addq	%rcx, %rax
	shlq	$4, %rsi
	addq	%r11, %rsi
	testl	%r13d, %r13d
	cmovsq	%rax, %rsi
	movl	%r13d, %edx
	shrl	$14, %edx
	movzbl	%dl, %eax
	shlq	$4, %rax
	addq	%rcx, %rax
	andl	$511, %edx              # imm = 0x1FF
	shlq	$4, %rdx
	addq	%r11, %rdx
	testl	$4194304, %r13d         # imm = 0x400000
	cmovneq	%rax, %rdx
	movq	%r9, 48(%rdi)
	movl	8(%rsi), %eax
	cmpl	8(%rdx), %eax
	jne	.LBB7_160
# %bb.117:                              #   in Loop: Header=BB7_5 Depth=2
	callq	luaV_equalval
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	setne	%al
	jmp	.LBB7_161
.LBB7_118:                              #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	shrl	$23, %eax
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	leal	-1(%r13), %edx
	testl	%eax, %eax
	je	.LBB7_120
# %bb.119:                              #   in Loop: Header=BB7_5 Depth=2
	movl	%eax, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	movq	%rax, 16(%rdi)
.LBB7_120:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r10, %rsi
	callq	luaD_precall
	cmpl	$1, %eax
	jne	.LBB7_312
# %bb.121:                              #   in Loop: Header=BB7_5 Depth=2
	testl	%r13d, %r13d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB7_268
# %bb.122:                              #   in Loop: Header=BB7_5 Depth=2
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	jmp	.LBB7_268
.LBB7_123:                              #   in Loop: Header=BB7_5 Depth=2
	shrl	$23, %r13d
	je	.LBB7_125
# %bb.124:                              #   in Loop: Header=BB7_5 Depth=2
	movl	%r13d, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	movq	%rax, 16(%rdi)
.LBB7_125:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r10, %rsi
	movl	$-1, %edx
	movq	%rdi, %rbx
	callq	luaD_precall
	cmpl	$1, %eax
	je	.LBB7_271
	jmp	.LBB7_314
.LBB7_126:                              #   in Loop: Header=BB7_5 Depth=2
	movl	8(%r11,%r15), %eax
	testl	%eax, %eax
	je	.LBB7_200
# %bb.127:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$1, %eax
	jne	.LBB7_201
# %bb.128:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, (%r10)
	sete	%al
	jmp	.LBB7_202
.LBB7_129:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %rsi
	movq	%r11, %rbx
	callq	luaF_close
.LBB7_130:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_5
.LBB7_131:                              #   in Loop: Header=BB7_5 Depth=2
	addq	%rbx, %r9
	jmp	.LBB7_164
.LBB7_132:                              #   in Loop: Header=BB7_5 Depth=2
	ucomisd	%xmm1, %xmm0
	jb	.LBB7_5
.LBB7_133:                              #   in Loop: Header=BB7_5 Depth=2
	shrl	$14, %r13d
	leaq	(%r9,%r13,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
	movsd	%xmm0, (%r10)
	movl	$3, 8(%r11,%r15)
	movsd	%xmm0, 48(%r10)
	movl	$3, 56(%r10)
	jmp	.LBB7_5
.LBB7_134:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_212
# %bb.135:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_212
# %bb.136:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %rbx
	movq	%r12, %r10
	jmp	.LBB7_207
.LBB7_137:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_249
# %bb.138:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_249
# %bb.139:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %r13
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
	jmp	.LBB7_215
.LBB7_140:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_252
# %bb.141:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_252
# %bb.142:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %r13
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
	jmp	.LBB7_221
.LBB7_143:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r9
	jmp	.LBB7_303
.LBB7_144:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaG_ordererror
	movq	-56(%rbp), %r9          # 8-byte Reload
	movl	%eax, %r15d
	jmp	.LBB7_301
.LBB7_145:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_255
# %bb.146:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_255
# %bb.147:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %r13
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
	jmp	.LBB7_227
.LBB7_148:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_258
# %bb.149:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_258
# %bb.150:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	%r13, %rbx
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %rcx
	movq	%r12, %r10
	jmp	.LBB7_233
.LBB7_151:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_261
# %bb.152:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r13), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_261
# %bb.153:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	leaq	-88(%rbp), %r13
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
	jmp	.LBB7_238
.LBB7_154:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	(%r11,%r13), %r12
	addq	$8, %r12
	movq	%r9, 48(%rdi)
	cmpl	$4, %eax
	jne	.LBB7_180
# %bb.155:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-112(%rbp), %rsi
	movq	%r10, %r13
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	%r13, %r10
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_180
# %bb.156:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rcx
	movq	-112(%rbp), %rax
	movq	%rax, -88(%rbp)
	movl	$3, -80(%rbp)
	movl	(%r12), %eax
	cmpl	$3, %eax
	je	.LBB7_159
# %bb.157:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$4, %eax
	jne	.LBB7_181
# %bb.158:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-112(%rbp), %rsi
	callq	luaO_str2d
	movq	%rbx, %rcx
	movq	%r13, %r10
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_181
.LBB7_159:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	-88(%rbp), %xmm0        # xmm0 = mem[0],zero
	xorpd	.LCPI7_2(%rip), %xmm0
	movlpd	%xmm0, (%r10)
	movl	$3, 8(%rcx,%r15)
	movq	24(%rdi), %r11
	jmp	.LBB7_5
.LBB7_160:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
.LBB7_161:                              #   in Loop: Header=BB7_5 Depth=2
	movzbl	%al, %eax
	cmpl	%eax, %r14d
	jne	.LBB7_304
# %bb.162:                              #   in Loop: Header=BB7_5 Depth=2
	movl	(%r9), %eax
	shrl	$14, %eax
	leaq	(%r9,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
	jmp	.LBB7_304
.LBB7_163:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-128(%rbp), %rdx        # 8-byte Reload
.LBB7_164:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r14, (%rcx)
	movl	$6, 8(%rdx,%r15)
	movq	%r9, 48(%rdi)
	movq	32(%rdi), %rax
	movq	120(%rax), %rcx
	cmpq	112(%rax), %rcx
	jb	.LBB7_166
# %bb.165:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, %rbx
	callq	luaC_step
	movq	%rbx, %r9
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_166:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	jmp	.LBB7_5
.LBB7_167:                              #   in Loop: Header=BB7_5 Depth=2
	movq	16(%rdi), %rcx
	movq	40(%rdi), %rax
	subq	%r10, %rcx
	shrq	$4, %rcx
	addl	$-1, %ecx
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	testl	%r13d, %r13d
	jne	.LBB7_33
.LBB7_168:                              #   in Loop: Header=BB7_5 Depth=2
	movl	4(%r12), %r13d
	addq	$8, %r12
	movq	%r12, %r9
	cmpl	$5, 8(%r11,%r15)
	jne	.LBB7_5
.LBB7_169:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r10), %r15
	imull	$50, %r13d, %eax
	leal	(%rcx,%rax), %r12d
	addl	$-50, %r12d
	cmpl	56(%r15), %r12d
	jle	.LBB7_171
# %bb.170:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r15, %rsi
	movl	%r12d, %edx
	movq	%r9, %rbx
	movq	%r11, -128(%rbp)        # 8-byte Spill
	movq	%rcx, %r13
	callq	luaH_resizearray
	movq	%r13, %rcx
	movq	-128(%rbp), %r11        # 8-byte Reload
	movq	%rbx, %r9
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_171:                              #   in Loop: Header=BB7_5 Depth=2
	testl	%ecx, %ecx
	jle	.LBB7_5
# %bb.172:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, -56(%rbp)          # 8-byte Spill
	movslq	%ecx, %r13
	leaq	(,%r14,4), %rax
	leaq	(%rax,%r13,4), %rax
	addq	$1, %r13
	movq	%r11, %r14
	leaq	(%r11,%rax,4), %rbx
	addq	$8, %rbx
	jmp	.LBB7_174
	.p2align	4, 0x90
.LBB7_173:                              #   in Loop: Header=BB7_174 Depth=3
	addl	$-1, %r12d
	addq	$-1, %r13
	addq	$-16, %rbx
	cmpq	$1, %r13
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jle	.LBB7_205
.LBB7_174:                              #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%r15, %rsi
	movl	%r12d, %edx
	callq	luaH_setnum
	movq	-8(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	(%rbx), %ecx
	movl	%ecx, 8(%rax)
	cmpl	$4, (%rbx)
	jl	.LBB7_173
# %bb.175:                              #   in Loop: Header=BB7_174 Depth=3
	movq	-8(%rbx), %rax
	testb	$3, 9(%rax)
	je	.LBB7_173
# %bb.176:                              #   in Loop: Header=BB7_174 Depth=3
	testb	$4, 9(%r15)
	je	.LBB7_173
# %bb.177:                              #   in Loop: Header=BB7_174 Depth=3
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	luaC_barrierback
	jmp	.LBB7_173
.LBB7_178:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r9
	addq	$4, %r9
	jmp	.LBB7_5
.LBB7_179:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$.L.str.6, %esi
	jmp	.LBB7_245
.LBB7_180:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r13
.LBB7_181:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r14, %rsi
	movl	$11, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_183
# %bb.182:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$11, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB7_294
.LBB7_183:                              #   in Loop: Header=BB7_5 Depth=2
	subq	64(%rbx), %r13
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%rbx), %rax
	movq	(%r14), %rcx
	movq	%rcx, 16(%rax)
	movl	(%r12), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	(%r14), %rcx
	movq	%rcx, 32(%rax)
	movl	(%r12), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	movq	%rbx, %rdi
	jg	.LBB7_185
# %bb.184:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %esi
	callq	luaD_growstack
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rsi
.LBB7_185:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, %edx
	callq	luaD_call
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	64(%rdi), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rdi)
	movq	-16(%rax), %rdx
	movq	%rdx, (%rcx,%r13)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r13)
	jmp	.LBB7_268
.LBB7_186:                              #   in Loop: Header=BB7_5 Depth=2
	movb	$1, %dl
	jmp	.LBB7_188
.LBB7_187:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%edx, %edx
.LBB7_188:                              #   in Loop: Header=BB7_5 Depth=2
	movzbl	%dl, %edx
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	cmpl	%edx, %r13d
	je	.LBB7_190
# %bb.189:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%rcx), %rcx
	movq	%rcx, (%r10)
	movl	%eax, 8(%r11,%r15)
	movl	(%r9), %eax
	shrl	$14, %eax
	leaq	(%r9,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
.LBB7_190:                              #   in Loop: Header=BB7_5 Depth=2
	addq	$4, %r9
	jmp	.LBB7_5
.LBB7_191:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rax
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	unpcklps	.LCPI7_0(%rip), %xmm0 # xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	.LCPI7_1(%rip), %xmm0
	movapd	%xmm0, %xmm1
	unpckhpd	%xmm0, %xmm1    # xmm1 = xmm1[1],xmm0[1]
	addsd	%xmm0, %xmm1
	movsd	%xmm1, (%r10)
	movl	$3, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_192:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r14, %rsi
	movl	$12, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_194
# %bb.193:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$luaO_nilobject_, %esi
	movq	%rbx, %rdi
	movl	$12, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB7_295
.LBB7_194:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	(%r12,%r13), %rcx
	addq	$8, %rcx
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subq	64(%rbx), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	16(%rbx), %rdx
	movq	(%rax), %rsi
	movq	%rsi, (%rdx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rdx)
	movq	16(%rbx), %rax
	movq	(%r14), %rdx
	movq	%rdx, 16(%rax)
	movl	(%rcx), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	luaO_nilobject_(%rip), %rcx
	movq	%rcx, 32(%rax)
	movl	luaO_nilobject_+8(%rip), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	movq	%rbx, %rdi
	jg	.LBB7_196
# %bb.195:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %esi
	callq	luaD_growstack
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rsi
.LBB7_196:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, %edx
	callq	luaD_call
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	64(%rdi), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rdi)
	movq	-16(%rax), %rdx
	movq	-64(%rbp), %r12         # 8-byte Reload
	jmp	.LBB7_267
.LBB7_197:                              #   in Loop: Header=BB7_5 Depth=2
	movb	$1, %al
	jmp	.LBB7_199
.LBB7_198:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
.LBB7_199:                              #   in Loop: Header=BB7_5 Depth=2
	movzbl	%al, %eax
	movl	%eax, (%r10)
	movl	$1, 8(%r11,%r15)
	jmp	.LBB7_5
.LBB7_200:                              #   in Loop: Header=BB7_5 Depth=2
	movb	$1, %al
	jmp	.LBB7_202
.LBB7_201:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
.LBB7_202:                              #   in Loop: Header=BB7_5 Depth=2
	movzbl	%al, %eax
	shrl	$14, %r13d
	andl	$511, %r13d             # imm = 0x1FF
	cmpl	%eax, %r13d
	je	.LBB7_204
# %bb.203:                              #   in Loop: Header=BB7_5 Depth=2
	movl	(%r9), %eax
	shrl	$14, %eax
	leaq	(%r9,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
.LBB7_204:                              #   in Loop: Header=BB7_5 Depth=2
	addq	$4, %r9
	jmp	.LBB7_5
.LBB7_205:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r14, %r11
	jmp	.LBB7_5
.LBB7_206:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, %rbx
.LBB7_207:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movl	8(%r14), %eax
	cmpl	$3, %eax
	movq	%r11, -128(%rbp)        # 8-byte Spill
	je	.LBB7_211
# %bb.208:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$4, %eax
	jne	.LBB7_212
# %bb.209:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_212
# %bb.210:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
.LBB7_211:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -64(%rbp)        # 8-byte Spill
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	movsd	%xmm1, -144(%rbp)       # 8-byte Spill
	divsd	%xmm1, %xmm0
	callq	floor
	mulsd	-144(%rbp), %xmm0       # 8-byte Folded Reload
	movsd	-64(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	subsd	%xmm0, %xmm1
	movsd	%xmm1, (%r12)
	movq	-128(%rbp), %rax        # 8-byte Reload
	movl	$3, 8(%rax,%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_268
.LBB7_212:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$9, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.213:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$9, %edx
	jmp	.LBB7_263
.LBB7_214:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB7_215:                              #   in Loop: Header=BB7_5 Depth=2
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB7_219
# %bb.216:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	cmpl	$4, %eax
	jne	.LBB7_248
# %bb.217:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_248
# %bb.218:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
.LBB7_219:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	mulsd	(%r14), %xmm0
	jmp	.LBB7_243
.LBB7_220:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB7_221:                              #   in Loop: Header=BB7_5 Depth=2
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB7_225
# %bb.222:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	cmpl	$4, %eax
	jne	.LBB7_251
# %bb.223:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_251
# %bb.224:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
.LBB7_225:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	addsd	(%r14), %xmm0
	jmp	.LBB7_243
.LBB7_226:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB7_227:                              #   in Loop: Header=BB7_5 Depth=2
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB7_231
# %bb.228:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	cmpl	$4, %eax
	jne	.LBB7_254
# %bb.229:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_254
# %bb.230:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
.LBB7_231:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	divsd	(%r14), %xmm0
	jmp	.LBB7_243
.LBB7_232:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, %rbx
	movq	%r13, %rcx
.LBB7_233:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB7_284
# %bb.234:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$4, %eax
	jne	.LBB7_257
# %bb.235:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %r13
	movq	(%r14), %rdi
	addq	$24, %rdi
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	-72(%rbp), %rsi
	callq	luaO_str2d
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_257
# %bb.236:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
	jmp	.LBB7_285
.LBB7_237:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r9, 48(%rdi)
	movq	%r13, -64(%rbp)         # 8-byte Spill
.LBB7_238:                              #   in Loop: Header=BB7_5 Depth=2
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB7_242
# %bb.239:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r10, %r12
	cmpl	$4, %eax
	jne	.LBB7_260
# %bb.240:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%r14), %rdi
	addq	$24, %rdi
	leaq	-72(%rbp), %rsi
	movq	%r11, %rbx
	callq	luaO_str2d
	movq	-48(%rbp), %rdi         # 8-byte Reload
	testl	%eax, %eax
	je	.LBB7_260
# %bb.241:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r11
	movq	-72(%rbp), %rax
	movq	%rax, -112(%rbp)
	movl	$3, -104(%rbp)
	leaq	-112(%rbp), %r14
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r12, %r10
.LBB7_242:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r13), %xmm0           # xmm0 = mem[0],zero
	subsd	(%r14), %xmm0
.LBB7_243:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	%xmm0, (%r10)
	movl	$3, 8(%r11,%r15)
	movq	24(%rdi), %r11
	jmp	.LBB7_5
.LBB7_244:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$.L.str.7, %esi
.LBB7_245:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
	movq	%r10, %rbx
	callq	luaG_runerror
	movq	%rbx, %r10
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	%r15, %r11
.LBB7_246:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%r10), %xmm0           # xmm0 = mem[0],zero
	subsd	32(%r10), %xmm0
	movsd	%xmm0, (%r10)
	movl	$3, (%r14)
.LBB7_247:                              #   in Loop: Header=BB7_5 Depth=2
	shrl	$14, %r13d
	leaq	(%r9,%r13,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
	jmp	.LBB7_5
.LBB7_248:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB7_249:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$7, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.250:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$7, %edx
	jmp	.LBB7_263
.LBB7_251:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB7_252:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$5, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.253:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$5, %edx
	jmp	.LBB7_263
.LBB7_254:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB7_255:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$8, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.256:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$8, %edx
	jmp	.LBB7_263
.LBB7_257:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %r13
.LBB7_258:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$10, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.259:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$10, %edx
	jmp	.LBB7_263
.LBB7_260:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-64(%rbp), %r13         # 8-byte Reload
.LBB7_261:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rsi
	movl	$6, %edx
	movq	%rdi, %rbx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	jne	.LBB7_264
# %bb.262:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movl	$6, %edx
.LBB7_263:                              #   in Loop: Header=BB7_5 Depth=2
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB7_269
.LBB7_264:                              #   in Loop: Header=BB7_5 Depth=2
	subq	64(%rbx), %r12
	movq	16(%rbx), %rcx
	movq	(%rax), %rdx
	movq	%rdx, (%rcx)
	movl	8(%rax), %eax
	movl	%eax, 8(%rcx)
	movq	16(%rbx), %rax
	movq	(%r13), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r13), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%rbx), %rax
	movq	(%r14), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%r14), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%rbx), %rsi
	movq	56(%rbx), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	movq	%rbx, %rdi
	jg	.LBB7_266
# %bb.265:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %esi
	callq	luaD_growstack
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rsi
.LBB7_266:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, %edx
	callq	luaD_call
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rax
	movq	64(%rdi), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rdi)
	movq	-16(%rax), %rdx
.LBB7_267:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rdx, (%rcx,%r12)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%r12)
.LBB7_268:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	movq	-56(%rbp), %r9          # 8-byte Reload
	jmp	.LBB7_5
.LBB7_269:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r13, %rsi
.LBB7_270:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r14, %rdx
	callq	luaG_aritherror
.LBB7_271:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rbx), %r11
	movq	%rbx, %rdi
	movq	-56(%rbp), %r9          # 8-byte Reload
	jmp	.LBB7_5
.LBB7_272:                              #   in Loop: Header=BB7_5 Depth=2
	movq	(%rbx), %rbx
	movq	(%r15), %r15
	movq	16(%rbx), %r12
	addq	$24, %rbx
	movq	16(%r15), %r13
	addq	$24, %r15
.LBB7_273:                              #   Parent Loop BB7_1 Depth=1
                                        #     Parent Loop BB7_5 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rbx, %rdi
	movq	%r15, %rsi
	callq	strcoll
	testl	%eax, %eax
	jne	.LBB7_299
# %bb.274:                              #   in Loop: Header=BB7_273 Depth=3
	movq	%rbx, %rdi
	callq	strlen
	movq	%rax, %rcx
	cmpq	%r13, %rax
	je	.LBB7_297
# %bb.275:                              #   in Loop: Header=BB7_273 Depth=3
	cmpq	%r12, %rcx
	je	.LBB7_298
# %bb.276:                              #   in Loop: Header=BB7_273 Depth=3
	leaq	1(%rcx), %rax
	addq	%rcx, %rbx
	addq	$1, %rbx
	subq	%rax, %r12
	addq	%rcx, %r15
	addq	$1, %r15
	subq	%rax, %r13
	jmp	.LBB7_273
.LBB7_277:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rsi
	movl	$14, %edx
	movq	%rdi, %r13
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB7_286
# %bb.278:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$14, %edx
	callq	luaT_gettmbyobj
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	je	.LBB7_286
# %bb.279:                              #   in Loop: Header=BB7_5 Depth=2
	movq	16(%r13), %rax
	movq	%rax, %rcx
	subq	64(%r13), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	(%r12), %rcx
	movq	%rcx, (%rax)
	movl	8(%r12), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r13), %rax
	movq	(%rbx), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%r13), %rax
	movq	(%r15), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%r13), %rsi
	movq	56(%r13), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	movq	%r13, %rdi
	jg	.LBB7_281
# %bb.280:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %esi
	callq	luaD_growstack
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rsi
.LBB7_281:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, %edx
	callq	luaD_call
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	16(%rsi), %rax
	movq	64(%rsi), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rsi)
	movq	-16(%rax), %rdx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%rdx, (%rcx,%rdi)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%rdi)
	movq	16(%rsi), %rax
	movl	8(%rax), %r15d
	testl	%r15d, %r15d
	je	.LBB7_300
# %bb.282:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$1, %r15d
	movq	-56(%rbp), %r9          # 8-byte Reload
	jne	.LBB7_296
# %bb.283:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%r15d, %r15d
	cmpl	$0, (%rax)
	setne	%r15b
	jmp	.LBB7_301
.LBB7_284:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r11, %r13
.LBB7_285:                              #   in Loop: Header=BB7_5 Depth=2
	movsd	(%rcx), %xmm0           # xmm0 = mem[0],zero
	movsd	(%r14), %xmm1           # xmm1 = mem[0],zero
	callq	pow
	movsd	%xmm0, (%r12)
	movl	$3, 8(%r13,%r15)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_268
.LBB7_286:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$13, %edx
	callq	luaT_gettmbyobj
	cmpl	$0, 8(%rax)
	je	.LBB7_293
# %bb.287:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rax, %r12
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movl	$13, %edx
	callq	luaT_gettmbyobj
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	je	.LBB7_293
# %bb.288:                              #   in Loop: Header=BB7_5 Depth=2
	movq	16(%r13), %rax
	movq	%rax, %rcx
	subq	64(%r13), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	(%r12), %rcx
	movq	%rcx, (%rax)
	movl	8(%r12), %ecx
	movl	%ecx, 8(%rax)
	movq	16(%r13), %rax
	movq	(%r15), %rcx
	movq	%rcx, 16(%rax)
	movl	8(%r15), %ecx
	movl	%ecx, 24(%rax)
	movq	16(%r13), %rax
	movq	(%rbx), %rcx
	movq	%rcx, 32(%rax)
	movl	8(%rbx), %ecx
	movl	%ecx, 40(%rax)
	movq	16(%r13), %rsi
	movq	56(%r13), %rax
	subq	%rsi, %rax
	cmpq	$48, %rax
	movq	%r13, %rdi
	jg	.LBB7_290
# %bb.289:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$3, %esi
	callq	luaD_growstack
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	16(%rdi), %rsi
.LBB7_290:                              #   in Loop: Header=BB7_5 Depth=2
	leaq	48(%rsi), %rax
	movq	%rax, 16(%rdi)
	movl	$1, %r15d
	movl	$1, %edx
	movq	%rdi, %rbx
	callq	luaD_call
	movq	16(%rbx), %rax
	movq	64(%rbx), %rcx
	leaq	-16(%rax), %rdx
	movq	%rdx, 16(%rbx)
	movq	-16(%rax), %rdx
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rdx, (%rcx,%rsi)
	movl	-8(%rax), %eax
	movl	%eax, 8(%rcx,%rsi)
	movq	16(%rbx), %rax
	movl	8(%rax), %ecx
	testl	%ecx, %ecx
	movq	-56(%rbp), %r9          # 8-byte Reload
	je	.LBB7_301
# %bb.291:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%r15d, %r15d
	cmpl	$1, %ecx
	jne	.LBB7_301
# %bb.292:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	$0, (%rax)
	sete	%r15b
	jmp	.LBB7_301
.LBB7_293:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%r13, %rdi
	movq	%rbx, %rsi
	movq	%r15, %rdx
	callq	luaG_ordererror
	movl	%eax, %r15d
	jmp	.LBB7_300
.LBB7_294:                              #   in Loop: Header=BB7_5 Depth=2
	movq	%rbx, %rdi
	movq	%r14, %rsi
	jmp	.LBB7_270
.LBB7_295:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$.L.str.5, %edx
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	luaG_typeerror
	jmp	.LBB7_271
.LBB7_296:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$1, %r15d
	jmp	.LBB7_301
.LBB7_297:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%eax, %eax
	cmpq	%r12, %rcx
	setne	%al
	jmp	.LBB7_299
.LBB7_298:                              #   in Loop: Header=BB7_5 Depth=2
	movl	$-1, %eax
.LBB7_299:                              #   in Loop: Header=BB7_5 Depth=2
	xorl	%r15d, %r15d
	testl	%eax, %eax
	setle	%r15b
.LBB7_300:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-56(%rbp), %r9          # 8-byte Reload
.LBB7_301:                              #   in Loop: Header=BB7_5 Depth=2
	cmpl	%r14d, %r15d
	jne	.LBB7_303
# %bb.302:                              #   in Loop: Header=BB7_5 Depth=2
	movl	(%r9), %eax
	shrl	$14, %eax
	leaq	(%r9,%rax,4), %r9
	addq	$-524284, %r9           # imm = 0xFFF80004
.LBB7_303:                              #   in Loop: Header=BB7_5 Depth=2
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_304:                              #   in Loop: Header=BB7_5 Depth=2
	movq	24(%rdi), %r11
	addq	$4, %r9
	jmp	.LBB7_5
	.p2align	4, 0x90
.LBB7_305:                              #   in Loop: Header=BB7_1 Depth=1
	shrl	$23, %r13d
	je	.LBB7_307
# %bb.306:                              #   in Loop: Header=BB7_1 Depth=1
	movl	%r13d, %eax
	shlq	$4, %rax
	addq	%r10, %rax
	addq	$-16, %rax
	movq	%rax, 16(%rdi)
.LBB7_307:                              #   in Loop: Header=BB7_1 Depth=1
	cmpq	$0, 152(%rdi)
	je	.LBB7_309
# %bb.308:                              #   in Loop: Header=BB7_1 Depth=1
	movq	%r11, %rsi
	movq	%r10, %rbx
	callq	luaF_close
	movq	%rbx, %r10
	movq	-56(%rbp), %r9          # 8-byte Reload
	movq	-48(%rbp), %rdi         # 8-byte Reload
.LBB7_309:                              #   in Loop: Header=BB7_1 Depth=1
	movq	%r9, 48(%rdi)
	movq	%r10, %rsi
	callq	luaD_poscall
	addl	$-1, -132(%rbp)         # 4-byte Folded Spill
	je	.LBB7_321
# %bb.310:                              #   in Loop: Header=BB7_1 Depth=1
	testl	%eax, %eax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	je	.LBB7_1
# %bb.311:                              #   in Loop: Header=BB7_1 Depth=1
	movq	40(%rdi), %rax
	movq	16(%rax), %rax
	movq	%rax, 16(%rdi)
	jmp	.LBB7_1
.LBB7_312:                              #   in Loop: Header=BB7_1 Depth=1
	testl	%eax, %eax
	jne	.LBB7_321
# %bb.313:                              #   in Loop: Header=BB7_1 Depth=1
	addl	$1, -132(%rbp)          # 4-byte Folded Spill
	movq	-48(%rbp), %rdi         # 8-byte Reload
	jmp	.LBB7_1
.LBB7_314:                              #   in Loop: Header=BB7_1 Depth=1
	testl	%eax, %eax
	jne	.LBB7_321
# %bb.315:                              #   in Loop: Header=BB7_1 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	40(%rdi), %r14
	movq	-32(%r14), %r15
	movq	8(%r14), %rbx
	cmpq	$0, 152(%rdi)
	movq	%r15, %rax
	je	.LBB7_317
# %bb.316:                              #   in Loop: Header=BB7_1 Depth=1
	movq	-40(%r14), %rsi
	callq	luaF_close
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-32(%r14), %rax
.LBB7_317:                              #   in Loop: Header=BB7_1 Depth=1
	movq	(%r14), %rcx
	subq	%rbx, %rcx
	addq	%rax, %rcx
	movq	%rcx, -40(%r14)
	movq	%rcx, 24(%rdi)
	cmpq	16(%rdi), %rbx
	jae	.LBB7_319
	.p2align	4, 0x90
.LBB7_318:                              #   Parent Loop BB7_1 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	(%rbx), %rax
	movq	%rax, (%r15)
	movl	8(%rbx), %eax
	movl	%eax, 8(%r15)
	addq	$16, %r15
	addq	$16, %rbx
	cmpq	16(%rdi), %rbx
	jb	.LBB7_318
.LBB7_319:                              #   in Loop: Header=BB7_1 Depth=1
	movq	%r15, 16(%rdi)
	movq	%r15, -24(%r14)
	movq	48(%rdi), %rax
	movq	%rax, -16(%r14)
	addl	$1, -4(%r14)
	addq	$-40, 40(%rdi)
	jmp	.LBB7_1
.LBB7_320:
	movq	%r12, 48(%rdi)
.LBB7_321:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_322:
	movl	$.L.str.8, %esi
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
.Lfunc_end7:
	.size	luaV_execute, .Lfunc_end7-luaV_execute
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI7_0:
	.quad	.LBB7_23
	.quad	.LBB7_75
	.quad	.LBB7_68
	.quad	.LBB7_72
	.quad	.LBB7_46
	.quad	.LBB7_81
	.quad	.LBB7_88
	.quad	.LBB7_74
	.quad	.LBB7_95
	.quad	.LBB7_2
	.quad	.LBB7_99
	.quad	.LBB7_45
	.quad	.LBB7_47
	.quad	.LBB7_91
	.quad	.LBB7_42
	.quad	.LBB7_69
	.quad	.LBB7_39
	.quad	.LBB7_76
	.quad	.LBB7_102
	.quad	.LBB7_113
	.quad	.LBB7_82
	.quad	.LBB7_85
	.quad	.LBB7_247
	.quad	.LBB7_116
	.quad	.LBB7_50
	.quad	.LBB7_52
	.quad	.LBB7_126
	.quad	.LBB7_34
	.quad	.LBB7_118
	.quad	.LBB7_123
	.quad	.LBB7_305
	.quad	.LBB7_37
	.quad	.LBB7_56
	.quad	.LBB7_79
	.quad	.LBB7_31
	.quad	.LBB7_129
	.quad	.LBB7_25
	.quad	.LBB7_104
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
