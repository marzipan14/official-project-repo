	.text
	.file	"ltable.c"
	.hidden	luaH_next               # -- Begin function luaH_next
	.globl	luaH_next
	.p2align	4, 0x90
	.type	luaH_next,@function
luaH_next:                              # @luaH_next
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
	movq	%rsi, %r14
	movl	8(%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB0_4
# %bb.3:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %ebx
	cvtsi2sd	%ebx, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_4
	jnp	.LBB0_11
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	mainposition
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB0_15
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %r13
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	luaO_rawequalObj
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$11, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$4, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%r13), %rax
	cmpq	(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_14
.LBB0_10:
	subq	32(%r14), %rbx
	shrq	$3, %rbx
	imull	$-858993459, %ebx, %ebx # imm = 0xCCCCCCCD
	addl	56(%r14), %ebx
	jmp	.LBB0_16
.LBB0_1:
	movl	$-1, %ebx
	jmp	.LBB0_17
.LBB0_15:
	xorl	%ebx, %ebx
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rbx), %edx
	movslq	56(%r14), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jge	.LBB0_25
# %bb.18:
	movq	24(%r14), %rsi
	movslq	%edx, %rcx
	movq	%rcx, %rdx
	shlq	$4, %rdx
	cmpl	$0, 8(%rsi,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_22
# %bb.19:                               # %.preheader
	addq	%rsi, %rdx
	addq	$24, %rdx
	.p2align	4, 0x90
.LBB0_20:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jge	.LBB0_24
# %bb.21:                               #   in Loop: Header=BB0_20 Depth=1
	addl	$1, %ebx
	cmpl	$0, (%rdx)
	leaq	16(%rdx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB0_20
.LBB0_22:
	addl	$2, %ebx
	xorps	%xmm0, %xmm0
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, (%r12)
	movl	$3, 8(%r12)
	movq	24(%r14), %rax
	shlq	$4, %rcx
	jmp	.LBB0_23
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_5
# %bb.12:
	cmpl	%ebx, 56(%r14)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB0_5
# %bb.13:
	addl	$-1, %ebx
	jmp	.LBB0_17
.LBB0_24:
	addl	$2, %ebx
	movl	%ebx, %edx
.LBB0_25:
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%r14), %cl
	movl	$1, %edi
	shll	%cl, %edi
	subl	%eax, %edx
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	jge	.LBB0_30
# %bb.26:
	movq	32(%r14), %rsi
	movslq	%edx, %rdx
	movslq	%edi, %rdi
	leaq	(,%rdx,8), %rcx
	leaq	(%rcx,%rcx,4), %rcx
	.p2align	4, 0x90
.LBB0_27:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%rsi,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_28
# %bb.29:                               #   in Loop: Header=BB0_27 Depth=1
	addq	$1, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rcx
	cmpq	%rdi, %rdx
	jl	.LBB0_27
	jmp	.LBB0_30
.LBB0_28:
	movq	16(%rsi,%rcx), %rax
	movq	%rax, (%r12)
	movl	24(%rsi,%rcx), %eax
	movl	%eax, 8(%r12)
	movq	32(%r14), %rax
.LBB0_23:
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 16(%r12)
	movl	8(%rax,%rcx), %eax
	movl	%eax, 24(%r12)
	movl	$1, %eax
.LBB0_30:
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
.Lfunc_end0:
	.size	luaH_next, .Lfunc_end0-luaH_next
                                        # -- End function
	.hidden	luaH_resizearray        # -- Begin function luaH_resizearray
	.globl	luaH_resizearray
	.p2align	4, 0x90
	.type	luaH_resizearray,@function
luaH_resizearray:                       # @luaH_resizearray
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$dummynode_, %eax
	cmpq	%rax, 32(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_1
# %bb.2:
	movb	11(%rsi), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
	movl	%eax, %ecx
	callq	resize
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end1:
	.size	luaH_resizearray, .Lfunc_end1-luaH_resizearray
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function resize
	.type	resize,@function
resize:                                 # @resize
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movl	%ecx, %r14d
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movslq	56(%rsi), %r13
	movzbl	11(%rsi), %r12d
	movq	32(%rsi), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %r13d
	jge	.LBB2_13
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %ebx
	jl	.LBB2_3
# %bb.2:
	movq	24(%r15), %rsi
	movq	%r13, %rdx
	shlq	$4, %rdx
	movslq	%ebx, %rcx
	shlq	$4, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_realloc_
	jmp	.LBB2_4
.LBB2_3:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_toobig
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	movslq	56(%r15), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %ecx
	jge	.LBB2_12
# %bb.5:
	movl	%ebx, %esi
	subl	%ecx, %esi
	movl	%ecx, %edx
	notl	%edx
	addl	%ebx, %edx
	andl	$3, %esi
	je	.LBB2_9
# %bb.6:                                # %.preheader2
	movq	%rbx, %r8
	movq	%rcx, %rdi
	shlq	$4, %rdi
	addq	%rax, %rdi
	addq	$8, %rdi
	negl	%esi
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	addq	$16, %rdi
	cmpl	%ebx, %esi
	jne	.LBB2_7
# %bb.8:                                # %.loopexit3
	subq	%rbx, %rcx
	movq	%r8, %rbx
.LBB2_9:
	cmpl	$3, %edx
	jb	.LBB2_12
# %bb.10:                               # %.preheader
	movl	%ebx, %edx
	subl	%ecx, %edx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$56, %rax
	.p2align	4, 0x90
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rax
	addl	$-4, %edx
	jne	.LBB2_11
.LBB2_12:
	movl	%ebx, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r15, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rsi
	movl	%r14d, %edx
	callq	setnodevector
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %r13d
	jle	.LBB2_24
# %bb.14:
	movl	%r12d, -60(%rbp)        # 4-byte Spill
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	%ebx, 56(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	24(%rax), %r15
	movslq	%ebx, %rax
	shlq	$4, %rax
	movq	%rbx, %rcx
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leaq	8(%rax), %rbx
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movl	%r13d, %r14d
	negl	%r14d
	movq	%rcx, %rax
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	leal	1(%rcx), %r13d
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_18:                               #   in Loop: Header=BB2_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%r12,%rbx), %rcx
	movq	%rcx, (%rax)
	movl	(%r12,%rbx), %ecx
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_19:                               #   in Loop: Header=BB2_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rbx
	leal	(%r14,%r13), %eax
	addl	$1, %eax
	movl	%r13d, %ecx
	addl	$1, %ecx
	movl	%ecx, %r13d
	cmpl	$1, %eax
	je	.LBB2_20
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	movq	(%r15), %r12
	cmpl	$0, (%r12,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_19
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	%r13d, %esi
	callq	luaH_getnum
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB2_18
# %bb.17:                               #   in Loop: Header=BB2_15 Depth=1
	xorps	%xmm0, %xmm0
	cvtsi2sd	%r13d, %xmm0
	movsd	%xmm0, -112(%rbp)
	movl	$3, -104(%rbp)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	leaq	-112(%rbp), %rdx
	callq	newkey
	jmp	.LBB2_18
.LBB2_20:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, -72(%rbp)          # 4-byte Folded Reload
	jl	.LBB2_22
# %bb.21:
	movq	(%r15), %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	shlq	$4, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	luaM_realloc_
	jmp	.LBB2_23
.LBB2_22:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_toobig
.LBB2_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	-60(%rbp), %r12d        # 4-byte Reload
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_24:
	movl	$1, %eax
	movl	%r12d, %ecx
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cltq
	movq	%rax, -72(%rbp)         # 8-byte Spill
	cmpb	$31, %r12b
	jne	.LBB2_25
.LBB2_37:
	movl	$dummynode_, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_39
# %bb.38:
	movq	-72(%rbp), %rax         # 8-byte Reload
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
.LBB2_39:
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_25:
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	1(%rax), %rbx
	leaq	(%rax,%rax,4), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %r14
	addq	$-16, %r14
	movl	$luaO_nilobject_, %r15d
	movq	-56(%rbp), %r12         # 8-byte Reload
	jmp	.LBB2_26
.LBB2_29:                               #   in Loop: Header=BB2_26 Depth=1
	movl	$.L.str, %esi
.LBB2_33:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
.LBB2_34:                               #   in Loop: Header=BB2_26 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r13, %rdx
	callq	newkey
.LBB2_35:                               #   in Loop: Header=BB2_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%r14), %rcx
	movq	%rcx, (%rax)
	movl	-16(%r14), %ecx
	movl	%ecx, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:                               #   in Loop: Header=BB2_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rbx
	addq	$-40, %r14
	cmpq	$1, %rbx
	jle	.LBB2_37
.LBB2_26:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_36
# %bb.27:                               #   in Loop: Header=BB2_26 Depth=1
	leaq	-8(%r14), %r13
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	luaH_get
	movb	$0, 10(%r12)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jne	.LBB2_35
# %bb.28:                               #   in Loop: Header=BB2_26 Depth=1
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_29
# %bb.30:                               #   in Loop: Header=BB2_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB2_34
# %bb.31:                               #   in Loop: Header=BB2_26 Depth=1
	movsd	-8(%r14), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jnp	.LBB2_34
# %bb.32:                               #   in Loop: Header=BB2_26 Depth=1
	movl	$.L.str.1, %esi
	jmp	.LBB2_33
.Lfunc_end2:
	.size	resize, .Lfunc_end2-resize
                                        # -- End function
	.hidden	luaH_new                # -- Begin function luaH_new
	.globl	luaH_new
	.p2align	4, 0x90
	.type	luaH_new,@function
luaH_new:                               # @luaH_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %r15
	movl	$64, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %rbx
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$5, %edx
	callq	luaC_link
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movw	$255, 10(%rbx)
	movl	$0, 56(%rbx)
	movq	$dummynode_, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	jl	.LBB3_2
# %bb.1:
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	jmp	.LBB3_3
.LBB3_2:
	movq	%r15, %rdi
	callq	luaM_toobig
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%rbx)
	movslq	56(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ecx
	jge	.LBB3_11
# %bb.4:
	movl	%r12d, %esi
	subl	%ecx, %esi
	movl	%ecx, %r8d
	notl	%r8d
	addl	%r12d, %r8d
	andl	$3, %esi
	je	.LBB3_8
# %bb.5:                                # %.preheader1
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%rax), %rdi
	addq	$8, %rdi
	negl	%esi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	addq	$16, %rdi
	cmpl	%edx, %esi
	jne	.LBB3_6
# %bb.7:                                # %.loopexit2
	subq	%rdx, %rcx
.LBB3_8:
	cmpl	$3, %r8d
	jb	.LBB3_11
# %bb.9:                                # %.preheader
	movl	%r12d, %edx
	subl	%ecx, %edx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$56, %rax
	.p2align	4, 0x90
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -32(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$64, %rax
	addl	$-4, %edx
	jne	.LBB3_10
.LBB3_11:
	movl	%r12d, 56(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movl	%r14d, %edx
	callq	setnodevector
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	luaH_new, .Lfunc_end3-luaH_new
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function setnodevector
	.type	setnodevector,@function
setnodevector:                          # @setnodevector
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB4_1
# %bb.2:
	movq	%rdi, %r15
	addl	$-1, %edx
	movl	%edx, %edi
	callq	luaO_log2
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$26, %eax
	jl	.LBB4_4
# %bb.3:
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
.LBB4_4:
	movl	$1, %r12d
	movl	%r14d, %ecx
	shll	%cl, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	jl	.LBB4_6
# %bb.5:
	movslq	%r12d, %rax
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rcx
	movq	%r15, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	jmp	.LBB4_7
.LBB4_1:
	movq	$dummynode_, 32(%rbx)
	movl	$dummynode_, %eax
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.LBB4_12
.LBB4_6:
	movq	%r15, %rdi
	callq	luaM_toobig
.LBB4_7:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 32(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %r14d
	jne	.LBB4_9
# %bb.8:
	movq	$-2147483648, %rcx      # imm = 0x80000000
	jmp	.LBB4_11
.LBB4_9:
	movslq	%r12d, %rcx
	movl	$32, %edx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_10:                               # =>This Inner Loop Header: Depth=1
	movq	$0, (%rax,%rdx)
	movl	$0, -8(%rax,%rdx)
	movl	$0, -24(%rax,%rdx)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %rax
	addq	$40, %rdx
	cmpq	%rcx, %rsi
	jl	.LBB4_10
.LBB4_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB4_12:
	movb	%r14b, 11(%rbx)
	leaq	(%rcx,%rcx,4), %rcx
	leaq	(%rax,%rcx,8), %rax
	movq	%rax, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end4:
	.size	setnodevector, .Lfunc_end4-setnodevector
                                        # -- End function
	.hidden	luaH_free               # -- Begin function luaH_free
	.globl	luaH_free
	.p2align	4, 0x90
	.type	luaH_free,@function
luaH_free:                              # @luaH_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movq	32(%rsi), %rsi
	movl	$dummynode_, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	je	.LBB5_2
# %bb.1:
	movb	11(%rbx), %cl
	movl	$1, %eax
	shll	%cl, %eax
	cltq
	shlq	$3, %rax
	leaq	(%rax,%rax,4), %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
.LBB5_2:
	movq	24(%rbx), %rsi
	movslq	56(%rbx), %rdx
	shlq	$4, %rdx
	movq	%r14, %rdi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$64, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	xorl	%ecx, %ecx
	callq	luaM_realloc_
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end5:
	.size	luaH_free, .Lfunc_end5-luaH_free
                                        # -- End function
	.hidden	luaH_getnum             # -- Begin function luaH_getnum
	.globl	luaH_getnum
	.p2align	4, 0x90
	.type	luaH_getnum,@function
luaH_getnum:                            # @luaH_getnum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
                                        # kill: def $esi killed $esi def $rsi
	movq	%rdi, %rbx
	leal	-1(%rsi), %eax
	cmpl	56(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB6_2
# %bb.1:
	cltq
	shlq	$4, %rax
	addq	24(%rbx), %rax
	jmp	.LBB6_11
.LBB6_2:
	cvtsi2sd	%esi, %xmm1
	movsd	%xmm1, -32(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB6_3
# %bb.4:
	leaq	-16(%rbp), %rdi
	leaq	-32(%rbp), %rsi
	movl	$8, %edx
	movsd	%xmm1, -24(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-24(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%rbx), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$3, %rax
	addq	32(%rbx), %rax
	jmp	.LBB6_5
.LBB6_3:
	movq	32(%rbx), %rax
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_6 Depth=1
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_9
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_8
	jp	.LBB6_8
	jmp	.LBB6_10
.LBB6_9:
	movl	$luaO_nilobject_, %eax
.LBB6_10:
	movl	$42, __A_VARIABLE(%rip)
.LBB6_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	luaH_getnum, .Lfunc_end6-luaH_getnum
                                        # -- End function
	.hidden	luaH_getstr             # -- Begin function luaH_getstr
	.globl	luaH_getstr
	.p2align	4, 0x90
	.type	luaH_getstr,@function
luaH_getstr:                            # @luaH_getstr
# %bb.0:
	movb	11(%rdi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	12(%rsi), %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	32(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_4
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	cmpq	%rsi, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_3
	jmp	.LBB7_5
.LBB7_4:
	movl	$luaO_nilobject_, %eax
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	luaH_getstr, .Lfunc_end7-luaH_getstr
                                        # -- End function
	.hidden	luaH_get                # -- Begin function luaH_get
	.globl	luaH_get
	.p2align	4, 0x90
	.type	luaH_get,@function
luaH_get:                               # @luaH_get
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movl	8(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_1
# %bb.2:
	movq	%rsi, %r14
	cmpl	$3, %eax
	je	.LBB8_10
# %bb.3:
	cmpl	$4, %eax
	jne	.LBB8_12
# %bb.4:
	movq	(%r14), %rax
	movb	11(%rdi), %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	12(%rax), %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %rbx
	shlq	$3, %rbx
	addq	32(%rdi), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_5
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_5 Depth=1
	movq	32(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB8_8
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	cmpq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_7
	jmp	.LBB8_9
.LBB8_1:
	movl	$luaO_nilobject_, %ebx
	jmp	.LBB8_17
.LBB8_10:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %esi
	cvtsi2sd	%esi, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_11
	jp	.LBB8_11
# %bb.18:
	callq	luaH_getnum
	movq	%rax, %rbx
	jmp	.LBB8_16
.LBB8_8:
	movl	$luaO_nilobject_, %ebx
.LBB8_9:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_16
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_12:
	movq	%r14, %rsi
	callq	mainposition
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %rdi
	movq	%r14, %rsi
	callq	luaO_rawequalObj
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB8_16
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=1
	movq	32(%rbx), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	jne	.LBB8_13
# %bb.15:
	movl	$luaO_nilobject_, %ebx
.LBB8_16:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	luaH_get, .Lfunc_end8-luaH_get
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function mainposition
	.type	mainposition,@function
mainposition:                           # @mainposition
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	8(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %eax
	cmpl	$3, %eax
	ja	.LBB9_3
# %bb.1:
	jmpq	*.LJTI9_0(,%rax,8)
.LBB9_2:
	movb	11(%rbx), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	(%rsi), %eax
	cltq
	jmp	.LBB9_7
.LBB9_3:
	movl	(%rsi), %eax
	movb	11(%rbx), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	jmp	.LBB9_8
.LBB9_4:
	movsd	(%rsi), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -24(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_10
	jp	.LBB9_10
# %bb.5:
	movq	32(%rbx), %rax
	jmp	.LBB9_11
.LBB9_6:
	movq	(%rsi), %rax
	movb	11(%rbx), %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	12(%rax), %edx
	movslq	%edx, %rax
.LBB9_7:
	leaq	(%rax,%rax,4), %rax
.LBB9_8:
	shlq	$3, %rax
	addq	32(%rbx), %rax
.LBB9_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB9_10:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%rbx), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$3, %rax
	addq	32(%rbx), %rax
.LBB9_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_9
.Lfunc_end9:
	.size	mainposition, .Lfunc_end9-mainposition
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI9_0:
	.quad	.LBB9_2
	.quad	.LBB9_3
	.quad	.LBB9_4
	.quad	.LBB9_6
                                        # -- End function
	.text
	.hidden	luaH_set                # -- Begin function luaH_set
	.globl	luaH_set
	.p2align	4, 0x90
	.type	luaH_set,@function
luaH_set:                               # @luaH_set
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
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	luaH_get
	movb	$0, 10(%rbx)
	movl	$luaO_nilobject_, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB10_8
# %bb.1:
	movl	8(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB10_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB10_7
# %bb.4:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jnp	.LBB10_7
# %bb.5:
	movl	$.L.str.1, %esi
	jmp	.LBB10_6
.LBB10_2:
	movl	$.L.str, %esi
.LBB10_6:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	newkey
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	luaH_set, .Lfunc_end10-luaH_set
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function newkey
	.type	newkey,@function
newkey:                                 # @newkey
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movq	%rdx, %r12
	movq	%rdi, %r15
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rdi
	movq	%rdx, %rsi
	callq	mainposition
	movq	%rax, %r14
	movl	8(%rax), %eax
	movl	$dummynode_, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r14
	je	.LBB11_3
# %bb.1:
	testl	%eax, %eax
	jne	.LBB11_3
# %bb.2:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB11_52
.LBB11_3:
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	32(%r10), %rax
	movq	40(%r10), %rcx
	.p2align	4, 0x90
.LBB11_4:                               # =>This Inner Loop Header: Depth=1
	leaq	-40(%rcx), %rbx
	movq	%rbx, 40(%r10)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jbe	.LBB11_10
# %bb.5:                                #   in Loop: Header=BB11_4 Depth=1
	cmpl	$0, -16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	jne	.LBB11_4
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r14), %rsi
	movq	%r10, %rdi
	callq	mainposition
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rax
	je	.LBB11_50
# %bb.7:
	movq	32(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	movq	-48(%rbp), %rsi         # 8-byte Reload
	je	.LBB11_9
	.p2align	4, 0x90
.LBB11_8:                               # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rcx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rcx
	jne	.LBB11_8
.LBB11_9:
	addq	$32, %rax
	movq	%rbx, (%rax)
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movupd	(%r14), %xmm0
	movupd	16(%r14), %xmm1
	movupd	%xmm1, 16(%rbx)
	movupd	%xmm0, (%rbx)
	movq	$0, 32(%r14)
	movl	$0, 8(%r14)
	jmp	.LBB11_51
.LBB11_10:
	movq	%r12, -176(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -160(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorpd	%xmm0, %xmm0
	movupd	%xmm0, -152(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -136(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -132(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -128(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -124(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -120(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -116(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -112(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -108(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -100(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -96(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -92(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -84(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -76(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -68(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -60(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	56(%r10), %r8d
	xorl	%r9d, %r9d
	movl	$1, %edx
	xorl	%r13d, %r13d
	movl	$1, %esi
	jmp	.LBB11_11
	.p2align	4, 0x90
.LBB11_18:                              #   in Loop: Header=BB11_11 Depth=1
	addl	%edi, -160(%rbp,%r9,4)
	addl	%edi, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %r9
	addl	%esi, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$27, %r9
	jae	.LBB11_19
.LBB11_11:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	cmpl	%r8d, %esi
	jle	.LBB11_13
# %bb.12:                               #   in Loop: Header=BB11_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %eax
	cmpl	%r8d, %edx
	jg	.LBB11_58
.LBB11_13:                              #   in Loop: Header=BB11_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edi, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edx
	jg	.LBB11_18
# %bb.14:                               #   in Loop: Header=BB11_11 Depth=1
	movq	24(%r10), %rcx
	movslq	%edx, %rdi
	cltq
	leaq	-1(%rdi), %rbx
	shlq	$4, %rdi
	addq	%rdi, %rcx
	addq	$-8, %rcx
	xorl	%edi, %edi
	jmp	.LBB11_15
	.p2align	4, 0x90
.LBB11_17:                              #   in Loop: Header=BB11_15 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, %rbx
	addl	$1, %edx
	addq	$16, %rcx
	cmpq	%rax, %rbx
	jge	.LBB11_18
.LBB11_15:                              #   Parent Loop BB11_11 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$0, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_17
# %bb.16:                               #   in Loop: Header=BB11_15 Depth=2
	addl	$1, %edi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB11_17
.LBB11_50:
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movq	%rbx, 32(%r14)
	movq	%rbx, %r14
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB11_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_52:
	movq	(%r12), %rax
	movq	%rax, 16(%r14)
	movl	8(%r12), %eax
	movl	%eax, 24(%r14)
	cmpl	$4, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB11_57
# %bb.53:
	movq	(%r12), %rax
	testb	$3, 9(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_57
# %bb.54:
	testb	$4, 9(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_57
# %bb.55:
	movq	%r15, %rdi
	callq	luaC_barrierback
	jmp	.LBB11_56
.LBB11_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_19:
	movq	%r15, -168(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%r10), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movl	$42, __A_VARIABLE(%rip)
	cltq
	leaq	(%rax,%rax,4), %rcx
	leaq	1(%rax), %r15
	leaq	24(,%rcx,8), %r12
	xorl	%r9d, %r9d
	xorl	%r14d, %r14d
	jmp	.LBB11_20
	.p2align	4, 0x90
.LBB11_23:                              #   in Loop: Header=BB11_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB11_26:                              #   in Loop: Header=BB11_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r14d
	addl	$1, %r9d
	movl	$42, __A_VARIABLE(%rip)
.LBB11_27:                              #   in Loop: Header=BB11_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-40, %r12
	addq	$-1, %r15
	je	.LBB11_28
.LBB11_20:                              # =>This Inner Loop Header: Depth=1
	movq	32(%r10), %rax
	cmpl	$0, -16(%rax,%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB11_27
# %bb.21:                               #   in Loop: Header=BB11_20 Depth=1
	cmpl	$3, (%rax,%r12)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB11_23
# %bb.22:                               #   in Loop: Header=BB11_20 Depth=1
	movsd	-8(%rax,%r12), %xmm0    # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_23
	jp	.LBB11_23
# %bb.24:                               #   in Loop: Header=BB11_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	ja	.LBB11_26
# %bb.25:                               #   in Loop: Header=BB11_20 Depth=1
	movl	%r9d, %ebx
	callq	luaO_log2
	movl	%ebx, %r9d
	movq	-48(%rbp), %r10         # 8-byte Reload
	cltq
	addl	$1, -156(%rbp,%rax,4)
	movl	$1, %eax
	jmp	.LBB11_26
.LBB11_28:
	addl	%r13d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %r12        # 8-byte Reload
	cmpl	$3, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	-168(%rbp), %r15        # 8-byte Reload
	jne	.LBB11_30
# %bb.29:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_30
	jnp	.LBB11_31
.LBB11_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB11_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r14d
	jle	.LBB11_34
# %bb.35:                               # %.preheader1
	movl	$1, %esi
	xorl	%eax, %eax
	leaq	-160(%rbp), %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB11_36:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB11_39
# %bb.37:                               #   in Loop: Header=BB11_36 Depth=1
	addl	%ebx, %edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %edi
	jle	.LBB11_39
# %bb.38:                               #   in Loop: Header=BB11_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %r8d
	movl	%esi, %edx
.LBB11_39:                              #   in Loop: Header=BB11_36 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r14d, %edi
	je	.LBB11_41
# %bb.40:                               #   in Loop: Header=BB11_36 Depth=1
	leal	(%rsi,%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, %eax
	cmpl	%r14d, %esi
	movl	%ebx, %esi
	jl	.LBB11_36
	jmp	.LBB11_41
.LBB11_34:
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB11_41:
	movl	$42, __A_VARIABLE(%rip)
	addl	%r9d, %r13d
	subl	%r8d, %r13d
	addl	$1, %r13d
	movq	%r15, %rdi
	movq	%r10, %rsi
	movl	%r13d, %ecx
	callq	resize
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r12, %rsi
	callq	luaH_get
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r14
	movb	$0, 10(%rsi)
	movl	$luaO_nilobject_, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jne	.LBB11_49
# %bb.42:
	movl	8(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB11_43
# %bb.44:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jne	.LBB11_48
# %bb.45:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	movl	$42, __A_VARIABLE(%rip)
	jnp	.LBB11_48
# %bb.46:
	movl	$.L.str.1, %esi
	jmp	.LBB11_47
.LBB11_31:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	ja	.LBB11_33
# %bb.32:
	movl	%r9d, %ebx
	callq	luaO_log2
	movl	%ebx, %r9d
	movq	-48(%rbp), %r10         # 8-byte Reload
	cltq
	addl	$1, -156(%rbp,%rax,4)
	movl	$1, %eax
	jmp	.LBB11_33
.LBB11_43:
	movl	$.L.str, %esi
.LBB11_47:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
.LBB11_48:
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	newkey
	movq	%rax, %r14
.LBB11_49:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB11_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_57:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	newkey, .Lfunc_end11-newkey
                                        # -- End function
	.hidden	luaH_setnum             # -- Begin function luaH_setnum
	.globl	luaH_setnum
	.p2align	4, 0x90
	.type	luaH_setnum,@function
luaH_setnum:                            # @luaH_setnum
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	%rsi, %rdi
	movl	%edx, %esi
	callq	luaH_getnum
	movl	$luaO_nilobject_, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB12_2
# %bb.1:
	cvtsi2sd	%ebx, %xmm0
	movsd	%xmm0, -40(%rbp)
	movl	$3, -32(%rbp)
	leaq	-40(%rbp), %rdx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	newkey
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaH_setnum, .Lfunc_end12-luaH_setnum
                                        # -- End function
	.hidden	luaH_setstr             # -- Begin function luaH_setstr
	.globl	luaH_setstr
	.p2align	4, 0x90
	.type	luaH_setstr,@function
luaH_setstr:                            # @luaH_setstr
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	12(%rdx), %eax
	cltq
	leaq	(%rax,%rax,4), %rax
	shlq	$3, %rax
	addq	32(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB13_4
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_3
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	cmpq	%rdx, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB13_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jne	.LBB13_7
	jmp	.LBB13_6
.LBB13_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	movq	%rdx, -16(%rbp)
	movl	$4, -8(%rbp)
	leaq	-16(%rbp), %rdx
	callq	newkey
.LBB13_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaH_setstr, .Lfunc_end13-luaH_setstr
                                        # -- End function
	.hidden	luaH_getn               # -- Begin function luaH_getn
	.globl	luaH_getn
	.p2align	4, 0x90
	.type	luaH_getn,@function
luaH_getn:                              # @luaH_getn
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdi, %r14
	movl	56(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB14_7
# %bb.1:
	movq	24(%r14), %rax
	leal	-1(%r12), %ecx
	shlq	$4, %rcx
	cmpl	$0, 8(%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_2
.LBB14_7:
	movl	$dummynode_, %eax
	cmpq	%rax, 32(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_8
# %bb.9:
	leal	1(%r12), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaH_getnum
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_10
	.p2align	4, 0x90
.LBB14_14:                              # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%rbx), %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2147483646, %r15d      # imm = 0x7FFFFFFE
	jae	.LBB14_15
# %bb.11:                               #   in Loop: Header=BB14_14 Depth=1
	movq	%r14, %rdi
	movl	%r15d, %esi
	callq	luaH_getnum
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r12d
	movl	%r15d, %ebx
	jne	.LBB14_14
	jmp	.LBB14_12
.LBB14_8:
	movl	%r12d, %ebx
	jmp	.LBB14_23
.LBB14_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jb	.LBB14_23
# %bb.3:                                # %.preheader5
	xorl	%ecx, %ecx
	jmp	.LBB14_4
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %edx
	subl	%ebx, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %ecx
	cmpl	$1, %edx
	jbe	.LBB14_23
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	leal	(%rcx,%r12), %ebx
	shrl	%ebx
	leal	-1(%rbx), %edx
	shlq	$4, %rdx
	cmpl	$0, 8(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	movl	%ebx, %r12d
	movl	%ecx, %ebx
	jmp	.LBB14_6
.LBB14_10:
	movl	%ebx, %r15d
.LBB14_12:
	movl	%r15d, %eax
	subl	%r12d, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %eax
	jae	.LBB14_19
# %bb.13:
	movl	%r12d, %ebx
	jmp	.LBB14_22
	.p2align	4, 0x90
.LBB14_21:                              #   in Loop: Header=BB14_19 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %eax
	subl	%ebx, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %r12d
	cmpl	$1, %eax
	jbe	.LBB14_22
.LBB14_19:                              # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %ebx
	shrl	%ebx
	movq	%r14, %rdi
	movl	%ebx, %esi
	callq	luaH_getnum
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_21
# %bb.20:                               #   in Loop: Header=BB14_19 Depth=1
	movl	%ebx, %r15d
	movl	%r12d, %ebx
	jmp	.LBB14_21
.LBB14_15:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movl	$1, %esi
	callq	luaH_getnum
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_16
# %bb.17:                               # %.preheader1
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB14_18:                              # =>This Inner Loop Header: Depth=1
	leal	2(%rbx), %esi
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	callq	luaH_getnum
	addl	$1, %ebx
	cmpl	$0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_18
	jmp	.LBB14_22
.LBB14_16:
	xorl	%ebx, %ebx
.LBB14_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB14_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	luaH_getn, .Lfunc_end14-luaH_getn
                                        # -- End function
	.type	dummynode_,@object      # @dummynode_
	.section	.rodata,"a",@progbits
	.p2align	3
dummynode_:
	.zero	40
	.size	dummynode_, 40

	.hidden	luaO_nilobject_
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"table index is nil"
	.size	.L.str, 19

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"table index is NaN"
	.size	.L.str.1, 19

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"invalid key to 'next'"
	.size	.L.str.2, 22

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"table overflow"
	.size	.L.str.3, 15

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.hidden	luaM_realloc_
	.hidden	luaC_link
	.hidden	luaO_rawequalObj
	.hidden	luaG_runerror
	.hidden	luaM_toobig
	.hidden	luaO_log2
	.hidden	luaC_barrierback
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
