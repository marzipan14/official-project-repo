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
	movq	%rdx, %r14
	movq	%rsi, %r12
	movl	8(%rdx), %eax
	testl	%eax, %eax
	je	.LBB0_1
# %bb.2:
	movq	%rdi, %r15
	cmpl	$3, %eax
	jne	.LBB0_4
# %bb.3:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %ebx
	cvtsi2sd	%ebx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_4
	jnp	.LBB0_11
.LBB0_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB0_5:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	mainposition
	movq	%rax, %rbx
	jmp	.LBB0_6
	.p2align	4, 0x90
.LBB0_14:                               #   in Loop: Header=BB0_6 Depth=1
	movq	32(%rbx), %rbx
	testq	%rbx, %rbx
	je	.LBB0_15
.LBB0_6:                                # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %r13
	movq	%r13, %rdi
	movq	%r14, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	jne	.LBB0_10
# %bb.7:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$11, 24(%rbx)
	jne	.LBB0_14
# %bb.8:                                #   in Loop: Header=BB0_6 Depth=1
	cmpl	$4, 8(%r14)
	jl	.LBB0_14
# %bb.9:                                #   in Loop: Header=BB0_6 Depth=1
	movq	(%r13), %rax
	cmpq	(%r14), %rax
	jne	.LBB0_14
.LBB0_10:
	subq	32(%r12), %rbx
	shrq	$3, %rbx
	imull	$-858993459, %ebx, %ebx # imm = 0xCCCCCCCD
	addl	56(%r12), %ebx
	jmp	.LBB0_16
.LBB0_1:
	movl	$-1, %ebx
	jmp	.LBB0_16
.LBB0_15:
	xorl	%ebx, %ebx
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB0_16:
	movl	$42, __A_VARIABLE(%rip)
	movslq	56(%r12), %rax
	movslq	%ebx, %rdx
	movq	%rdx, %rcx
	shlq	$4, %rcx
	addq	$1, %rdx
	.p2align	4, 0x90
.LBB0_17:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rdx
	jge	.LBB0_20
# %bb.18:                               #   in Loop: Header=BB0_17 Depth=1
	movq	24(%r12), %rsi
	addq	$1, %rdx
	cmpl	$0, 24(%rsi,%rcx)
	leaq	16(%rcx), %rcx
	je	.LBB0_17
# %bb.19:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%r14)
	movl	$3, 8(%r14)
	movq	24(%r12), %rax
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 16(%r14)
	movl	8(%rax,%rcx), %eax
	jmp	.LBB0_25
.LBB0_20:
	movb	11(%r12), %cl
	movl	$1, %edi
	shll	%cl, %edi
	subl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.LBB0_26
# %bb.21:
	movq	32(%r12), %rcx
	movslq	%edx, %rsi
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	.p2align	4, 0x90
.LBB0_23:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	jne	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_23 Depth=1
	addq	$1, %rsi
	addq	$40, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB0_23
	jmp	.LBB0_26
.LBB0_24:
	movq	16(%rcx,%rdx), %rax
	movq	%rax, (%r14)
	movl	24(%rcx,%rdx), %eax
	movl	%eax, 8(%r14)
	movq	32(%r12), %rax
	movq	(%rax,%rdx), %rcx
	movq	%rcx, 16(%r14)
	movl	8(%rax,%rdx), %eax
.LBB0_25:
	movl	%eax, 24(%r14)
	movl	$1, %eax
.LBB0_26:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_11:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	jle	.LBB0_5
# %bb.12:
	cmpl	%ebx, 56(%r12)
	jl	.LBB0_5
# %bb.13:
	addl	$-1, %ebx
	jmp	.LBB0_16
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
	je	.LBB1_1
# %bb.2:
	movb	11(%rsi), %cl
	movl	$1, %eax
	shll	%cl, %eax
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
	subq	$56, %rsp
	movl	%edx, %r12d
	movq	%rsi, %r13
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movslq	56(%rsi), %rbx
	movzbl	11(%rsi), %r14d
	movq	32(%rsi), %rdx
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	cmpl	%r12d, %ebx
	movq	%r12, -64(%rbp)         # 8-byte Spill
	jge	.LBB2_13
# %bb.1:
	movl	%ecx, -72(%rbp)         # 4-byte Spill
	cmpl	$-1, %r12d
	jl	.LBB2_3
# %bb.2:
	movq	24(%r13), %rsi
	movq	%rbx, %rdx
	shlq	$4, %rdx
	movslq	%r12d, %rcx
	shlq	$4, %rcx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_realloc_
	jmp	.LBB2_4
.LBB2_3:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_toobig
.LBB2_4:
	movq	%rax, 24(%r13)
	movslq	56(%r13), %rdx
	cmpl	%r12d, %edx
	jge	.LBB2_12
# %bb.5:
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movslq	%edi, %rcx
                                        # kill: def $edi killed $edi killed $rdi def $rdi
	subl	%edx, %edi
	movq	%rdx, %r8
	notq	%r8
	addq	%rcx, %r8
	andq	$3, %rdi
	je	.LBB2_9
# %bb.6:                                # %.preheader2
	movq	%rbx, %r9
	movq	%rdx, %rsi
	shlq	$4, %rsi
	leaq	(%rsi,%rax), %rbx
	addq	$8, %rbx
	negq	%rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB2_7:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rbx)
	addq	$-1, %rsi
	addq	$16, %rbx
	cmpq	%rsi, %rdi
	jne	.LBB2_7
# %bb.8:                                # %.loopexit3
	subq	%rsi, %rdx
	movq	%r9, %rbx
.LBB2_9:
	cmpq	$3, %r8
	jb	.LBB2_12
# %bb.10:                               # %.preheader
	subq	%rdx, %rcx
	shlq	$4, %rdx
	addq	%rdx, %rax
	addq	$56, %rax
	.p2align	4, 0x90
.LBB2_11:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rax)
	movl	$0, -32(%rax)
	movl	$0, -16(%rax)
	movl	$0, (%rax)
	addq	$64, %rax
	addq	$-4, %rcx
	jne	.LBB2_11
.LBB2_12:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	%eax, 56(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	-72(%rbp), %ecx         # 4-byte Reload
.LBB2_13:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movl	%ecx, %edx
	callq	setnodevector
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	%eax, %ebx
	jle	.LBB2_22
# %bb.14:
	movl	%r14d, -52(%rbp)        # 4-byte Spill
	movl	%eax, 56(%r13)
	movq	%r13, -72(%rbp)         # 8-byte Spill
	leaq	24(%r13), %r12
	movslq	%eax, %rcx
	shlq	$4, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	leaq	8(%rcx), %r14
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	movl	%ebx, %r15d
	negl	%r15d
	leal	1(%rax), %ebx
	jmp	.LBB2_15
	.p2align	4, 0x90
.LBB2_17:                               #   in Loop: Header=BB2_15 Depth=1
	addq	$16, %r14
	leal	(%r15,%rbx), %eax
	addl	$1, %eax
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	%ecx, %ebx
	cmpl	$1, %eax
	je	.LBB2_18
.LBB2_15:                               # =>This Inner Loop Header: Depth=1
	movq	(%r12), %r13
	cmpl	$0, (%r13,%r14)
	je	.LBB2_17
# %bb.16:                               #   in Loop: Header=BB2_15 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	%ebx, %edx
	callq	luaH_setnum
	movq	-8(%r13,%r14), %rcx
	movq	%rcx, (%rax)
	movl	(%r13,%r14), %ecx
	movl	%ecx, 8(%rax)
	jmp	.LBB2_17
.LBB2_18:
	cmpl	$-1, -64(%rbp)          # 4-byte Folded Reload
	jl	.LBB2_20
# %bb.19:
	movq	(%r12), %rsi
	movq	-96(%rbp), %rdx         # 8-byte Reload
	shlq	$4, %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-88(%rbp), %rcx         # 8-byte Reload
	callq	luaM_realloc_
	jmp	.LBB2_21
.LBB2_20:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	callq	luaM_toobig
.LBB2_21:
	movl	-52(%rbp), %r14d        # 4-byte Reload
	movq	%rax, (%r12)
	movq	-72(%rbp), %r13         # 8-byte Reload
.LBB2_22:
	movl	$1, %eax
	movl	%r14d, %ecx
	shll	%cl, %eax
	movslq	%eax, %r15
	cmpb	$31, %r14b
	jne	.LBB2_23
.LBB2_35:
	movl	$dummynode_, %eax
	movq	-80(%rbp), %rsi         # 8-byte Reload
	cmpq	%rax, %rsi
	je	.LBB2_37
# %bb.36:
	shlq	$3, %r15
	leaq	(%r15,%r15,4), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%ecx, %ecx
	callq	luaM_realloc_
.LBB2_37:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB2_23:
	movq	%r15, %rax
	leaq	1(%r15), %rbx
	leaq	(%r15,%r15,4), %rax
	movq	-80(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %r14
	addq	$-16, %r14
	jmp	.LBB2_24
.LBB2_29:                               #   in Loop: Header=BB2_24 Depth=1
	movsd	-8(%r14), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jp	.LBB2_30
.LBB2_32:                               #   in Loop: Header=BB2_24 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	movq	%r12, %rdx
	callq	newkey
.LBB2_33:                               #   in Loop: Header=BB2_24 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	-24(%r14), %rcx
	movq	%rcx, (%rax)
	movl	-16(%r14), %ecx
	movl	%ecx, 8(%rax)
.LBB2_34:                               #   in Loop: Header=BB2_24 Depth=1
	addq	$-1, %rbx
	addq	$-40, %r14
	cmpq	$1, %rbx
	jle	.LBB2_35
.LBB2_24:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, -16(%r14)
	je	.LBB2_34
# %bb.25:                               #   in Loop: Header=BB2_24 Depth=1
	leaq	-8(%r14), %r12
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	luaH_get
	movb	$0, 10(%r13)
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB2_33
# %bb.26:                               #   in Loop: Header=BB2_24 Depth=1
	movl	(%r14), %eax
	cmpl	$3, %eax
	je	.LBB2_29
# %bb.27:                               #   in Loop: Header=BB2_24 Depth=1
	testl	%eax, %eax
	jne	.LBB2_32
# %bb.28:                               #   in Loop: Header=BB2_24 Depth=1
	movl	$.L.str, %esi
.LBB2_31:                               #   in Loop: Header=BB2_24 Depth=1
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB2_32
.LBB2_30:                               #   in Loop: Header=BB2_24 Depth=1
	movl	$.L.str.1, %esi
	jmp	.LBB2_31
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %r14d
	movl	%esi, %r12d
	movq	%rdi, %r15
	movl	$64, %ecx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	luaM_realloc_
	movq	%rax, %r13
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	$5, %edx
	callq	luaC_link
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r13)
	movw	$255, 10(%r13)
	movl	$0, 56(%r13)
	movq	$dummynode_, 32(%r13)
	movslq	%r12d, %rbx
	cmpl	$-1, %r12d
	jl	.LBB3_2
# %bb.1:
	movq	%rbx, %rcx
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
	movq	%rax, 24(%r13)
	movslq	56(%r13), %rcx
	cmpl	%r12d, %ecx
	jge	.LBB3_11
# %bb.4:
	movl	%r12d, %esi
	subl	%ecx, %esi
	movq	%rcx, %r8
	notq	%r8
	addq	%rbx, %r8
	andq	$3, %rsi
	je	.LBB3_8
# %bb.5:                                # %.preheader1
	movq	%rcx, %rdx
	shlq	$4, %rdx
	leaq	(%rdx,%rax), %rdi
	addq	$8, %rdi
	negq	%rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB3_6:                                # =>This Inner Loop Header: Depth=1
	movl	$0, (%rdi)
	addq	$-1, %rdx
	addq	$16, %rdi
	cmpq	%rdx, %rsi
	jne	.LBB3_6
# %bb.7:                                # %.loopexit2
	subq	%rdx, %rcx
.LBB3_8:
	cmpq	$3, %r8
	jb	.LBB3_11
# %bb.9:                                # %.preheader
	subq	%rcx, %rbx
	shlq	$4, %rcx
	addq	%rcx, %rax
	addq	$56, %rax
	.p2align	4, 0x90
.LBB3_10:                               # =>This Inner Loop Header: Depth=1
	movl	$0, -48(%rax)
	movl	$0, -32(%rax)
	movl	$0, -16(%rax)
	movl	$0, (%rax)
	addq	$64, %rax
	addq	$-4, %rbx
	jne	.LBB3_10
.LBB3_11:
	movl	%r12d, 56(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	setnodevector
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
	testl	%edx, %edx
	je	.LBB4_1
# %bb.2:
	movq	%rdi, %r15
	addl	$-1, %edx
	movl	%edx, %edi
	callq	luaO_log2
                                        # kill: def $eax killed $eax def $rax
	leal	1(%rax), %r14d
	cmpl	$26, %eax
	jl	.LBB4_4
# %bb.3:
	movl	$.L.str.3, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB4_4:
	movl	$1, %r12d
	movl	%r14d, %ecx
	shll	%cl, %r12d
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
	xorl	%r14d, %r14d
	xorl	%ecx, %ecx
	jmp	.LBB4_11
.LBB4_6:
	movq	%r15, %rdi
	callq	luaM_toobig
.LBB4_7:
	movq	%rax, 32(%rbx)
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
	movq	32(%rbx), %rax
	addq	$40, %rdx
	cmpq	%rcx, %rsi
	jl	.LBB4_10
.LBB4_11:
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
	jae	.LBB6_2
# %bb.1:
	cltq
	shlq	$4, %rax
	addq	24(%rbx), %rax
	jmp	.LBB6_10
.LBB6_2:
	cvtsi2sd	%esi, %xmm1
	movsd	%xmm1, -32(%rbp)
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
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
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
	jmp	.LBB6_6
	.p2align	4, 0x90
.LBB6_8:                                #   in Loop: Header=BB6_6 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_9
.LBB6_6:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	jne	.LBB6_8
# %bb.7:                                #   in Loop: Header=BB6_6 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_8
	jp	.LBB6_8
	jmp	.LBB6_10
.LBB6_9:
	movl	$luaO_nilobject_, %eax
.LBB6_10:
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
	jmp	.LBB7_1
	.p2align	4, 0x90
.LBB7_3:                                #   in Loop: Header=BB7_1 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB7_4
.LBB7_1:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rax)
	jne	.LBB7_3
# %bb.2:                                #   in Loop: Header=BB7_1 Depth=1
	cmpq	%rsi, 16(%rax)
	jne	.LBB7_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	retq
.LBB7_4:
	movl	$luaO_nilobject_, %eax
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
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	movl	8(%rsi), %eax
	movl	$luaO_nilobject_, %r12d
	testl	%eax, %eax
	je	.LBB8_24
# %bb.1:
	movq	%rsi, %r15
	movq	%rdi, %r14
	cmpl	$3, %eax
	je	.LBB8_7
# %bb.2:
	cmpl	$4, %eax
	jne	.LBB8_10
# %bb.3:
	movq	(%r15), %rax
	movb	11(%r14), %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	12(%rax), %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %r12
	shlq	$3, %r12
	addq	32(%r14), %r12
	jmp	.LBB8_5
	.p2align	4, 0x90
.LBB8_4:                                #   in Loop: Header=BB8_5 Depth=1
	movq	32(%r12), %r12
	testq	%r12, %r12
	je	.LBB8_22
.LBB8_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%r12)
	jne	.LBB8_4
# %bb.6:                                #   in Loop: Header=BB8_5 Depth=1
	cmpq	%rax, 16(%r12)
	jne	.LBB8_4
	jmp	.LBB8_23
.LBB8_7:
	movsd	(%r15), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	cvtsi2sd	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_10
	jp	.LBB8_10
# %bb.8:
	leal	-1(%rax), %ecx
	cmpl	56(%r14), %ecx
	jae	.LBB8_15
# %bb.9:
	movslq	%ecx, %r12
	shlq	$4, %r12
	addq	24(%r14), %r12
	jmp	.LBB8_23
.LBB8_10:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	mainposition
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB8_11:                               # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %rdi
	movq	%r15, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	jne	.LBB8_13
# %bb.12:                               #   in Loop: Header=BB8_11 Depth=1
	movq	32(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_11
	jmp	.LBB8_24
.LBB8_13:
	movq	%rbx, %r12
	jmp	.LBB8_24
.LBB8_15:
	movsd	%xmm1, -56(%rbp)
	testl	%eax, %eax
	je	.LBB8_17
# %bb.16:
	leaq	-40(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	movsd	%xmm1, -48(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-48(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movb	11(%r14), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %r12
	shlq	$3, %r12
	addq	32(%r14), %r12
	jmp	.LBB8_18
.LBB8_17:
	movq	32(%r14), %r12
.LBB8_18:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_20
	.p2align	4, 0x90
.LBB8_19:                               #   in Loop: Header=BB8_20 Depth=1
	movq	32(%r12), %r12
	testq	%r12, %r12
	je	.LBB8_22
.LBB8_20:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%r12)
	jne	.LBB8_19
# %bb.21:                               #   in Loop: Header=BB8_20 Depth=1
	movsd	16(%r12), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_19
	jp	.LBB8_19
	jmp	.LBB8_23
.LBB8_22:
	movl	$luaO_nilobject_, %r12d
.LBB8_23:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_24:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
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
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB9_10
	jp	.LBB9_10
# %bb.5:
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB9_9
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
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB9_10:
	leaq	-16(%rbp), %rdi
	leaq	-24(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	-16(%rbp), %eax
	addl	-12(%rbp), %eax
	movl	%eax, -16(%rbp)
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
	cmpq	%rcx, %rax
	jne	.LBB10_8
# %bb.1:
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB10_4
# %bb.2:
	testl	%eax, %eax
	jne	.LBB10_7
# %bb.3:
	movl	$.L.str, %esi
.LBB10_6:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB10_7
.LBB10_4:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jp	.LBB10_5
.LBB10_7:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	callq	newkey
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_5:
	movl	$.L.str.1, %esi
	jmp	.LBB10_6
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
	movl	$dummynode_, %eax
	cmpq	%rax, %r14
	je	.LBB11_2
# %bb.1:
	cmpl	$0, 8(%r14)
	je	.LBB11_53
.LBB11_2:
	movq	-48(%rbp), %r10         # 8-byte Reload
	movq	32(%r10), %r11
	movq	40(%r10), %rax
	.p2align	4, 0x90
.LBB11_3:                               # =>This Inner Loop Header: Depth=1
	leaq	-40(%rax), %rbx
	movq	%rbx, 40(%r10)
	cmpq	%r11, %rax
	jbe	.LBB11_8
# %bb.4:                                #   in Loop: Header=BB11_3 Depth=1
	cmpl	$0, -16(%rax)
	movq	%rbx, %rax
	jne	.LBB11_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%r14), %rsi
	movq	%r10, %rdi
	callq	mainposition
	cmpq	%r14, %rax
	je	.LBB11_52
	.p2align	4, 0x90
.LBB11_6:                               # =>This Inner Loop Header: Depth=1
	movq	%rax, %rcx
	movq	32(%rax), %rax
	cmpq	%r14, %rax
	jne	.LBB11_6
# %bb.7:
	movq	%rbx, 32(%rcx)
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movupd	(%r14), %xmm0
	movupd	16(%r14), %xmm1
	movupd	%xmm1, 16(%rbx)
	movupd	%xmm0, (%rbx)
	movq	$0, 32(%r14)
	movl	$0, 8(%r14)
	jmp	.LBB11_53
.LBB11_8:
	movq	%r12, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	pxor	%xmm0, %xmm0
	movdqa	%xmm0, -176(%rbp)
	movdqa	%xmm0, -160(%rbp)
	movdqa	%xmm0, -144(%rbp)
	movdqa	%xmm0, -128(%rbp)
	movdqa	%xmm0, -112(%rbp)
	movdqa	%xmm0, -96(%rbp)
	movq	$0, -80(%rbp)
	movl	$0, -72(%rbp)
	movl	56(%r10), %r9d
	xorl	%r14d, %r14d
	movl	$1, %edi
	movl	$8, %r8d
	pcmpeqd	%xmm1, %xmm1
	xorl	%r12d, %r12d
	movl	$1, %esi
	jmp	.LBB11_9
	.p2align	4, 0x90
.LBB11_20:                              #   in Loop: Header=BB11_9 Depth=1
	addl	%eax, -176(%rbp,%r14,4)
	addl	%eax, %r12d
	addq	$1, %r14
	addl	%esi, %esi
	cmpq	$27, %r14
	jae	.LBB11_21
.LBB11_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB11_15 Depth 2
                                        #     Child Loop BB11_18 Depth 2
	movl	%esi, %ecx
	cmpl	%r9d, %esi
	jle	.LBB11_11
# %bb.10:                               #   in Loop: Header=BB11_9 Depth=1
	movl	%r9d, %ecx
	cmpl	%r9d, %edi
	jg	.LBB11_21
.LBB11_11:                              #   in Loop: Header=BB11_9 Depth=1
	xorl	%eax, %eax
	cmpl	%ecx, %edi
	jg	.LBB11_20
# %bb.12:                               #   in Loop: Header=BB11_9 Depth=1
	movq	24(%r10), %r10
	movslq	%edi, %rdx
	movslq	%ecx, %rcx
	cmpq	%rdx, %rcx
	movq	%rdx, %rbx
	cmovgeq	%rcx, %rbx
	movq	%rbx, %rdi
	subq	%rdx, %rdi
	addq	$1, %rdi
	xorl	%eax, %eax
	cmpq	$9, %rdi
	jae	.LBB11_14
# %bb.13:                               #   in Loop: Header=BB11_9 Depth=1
	movq	%rdx, %rdi
	jmp	.LBB11_17
	.p2align	4, 0x90
.LBB11_14:                              #   in Loop: Header=BB11_9 Depth=1
	movl	%edi, %eax
	andl	$7, %eax
	testq	%rax, %rax
	cmoveq	%r8, %rax
	subq	%rax, %rdi
	addq	%rdx, %rdi
	addq	%rdx, %rax
	notq	%rbx
	addq	%rax, %rbx
	shlq	$4, %rdx
	leaq	(%r10,%rdx), %rax
	addq	$56, %rax
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	.p2align	4, 0x90
.LBB11_15:                              #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-64(%rax), %xmm4
	movdqu	-48(%rax), %xmm5
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqu	-32(%rax), %xmm5
	movdqu	-16(%rax), %xmm6
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	punpcklqdq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0]
	movdqu	16(%rax), %xmm5
	movdqu	(%rax), %xmm6
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqu	48(%rax), %xmm5
	movdqu	32(%rax), %xmm7
	punpckldq	%xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpcklqdq	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0]
	pcmpeqd	%xmm0, %xmm4
	paddd	%xmm4, %xmm2
	pcmpeqd	%xmm0, %xmm6
	paddd	%xmm6, %xmm3
	psubd	%xmm1, %xmm2
	psubd	%xmm1, %xmm3
	subq	$-128, %rax
	addq	$8, %rbx
	jne	.LBB11_15
# %bb.16:                               #   in Loop: Header=BB11_9 Depth=1
	paddd	%xmm2, %xmm3
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	paddd	%xmm3, %xmm2
	pshufd	$229, %xmm2, %xmm3      # xmm3 = xmm2[1,1,2,3]
	paddd	%xmm2, %xmm3
	movd	%xmm3, %eax
.LBB11_17:                              #   in Loop: Header=BB11_9 Depth=1
	movq	%rdi, %rdx
	shlq	$4, %rdx
	addq	%r10, %rdx
	addq	$-8, %rdx
	.p2align	4, 0x90
.LBB11_18:                              #   Parent Loop BB11_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, (%rdx)
	sbbl	$-1, %eax
	addq	$16, %rdx
	cmpq	%rcx, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB11_18
# %bb.19:                               #   in Loop: Header=BB11_9 Depth=1
	movq	-48(%rbp), %r10         # 8-byte Reload
	jmp	.LBB11_20
.LBB11_21:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movb	11(%r10), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movslq	%eax, %r15
	leaq	(%r15,%r15,4), %rax
	leaq	24(,%rax,8), %rbx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	cmpl	$0, -16(%r11,%rbx)
	je	.LBB11_29
	.p2align	4, 0x90
.LBB11_23:
	cmpl	$3, (%r11,%rbx)
	jne	.LBB11_25
# %bb.24:
	movsd	-8(%r11,%rbx), %xmm0    # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_25
	jnp	.LBB11_26
.LBB11_25:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB11_28:
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r14d
	addl	$1, %r13d
.LBB11_29:                              # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB11_31
# %bb.30:                               #   in Loop: Header=BB11_29 Depth=1
	addq	$-1, %r15
	movq	32(%r10), %r11
	addq	$-40, %rbx
	cmpl	$0, -16(%r11,%rbx)
	jne	.LBB11_23
	jmp	.LBB11_29
.LBB11_26:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	xorl	%eax, %eax
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	ja	.LBB11_28
# %bb.27:
	callq	luaO_log2
	movq	-48(%rbp), %r10         # 8-byte Reload
	cltq
	addl	$1, -172(%rbp,%rax,4)
	movl	$1, %eax
	jmp	.LBB11_28
.LBB11_31:
	addl	%r12d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	cmpl	$3, 8(%rax)
	jne	.LBB11_33
# %bb.32:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_33
	jnp	.LBB11_34
.LBB11_33:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movq	-64(%rbp), %r15         # 8-byte Reload
.LBB11_36:
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %r14d
	jle	.LBB11_37
# %bb.38:                               # %.preheader1
	movl	$1, %esi
	xorl	%ebx, %ebx
	leaq	-176(%rbp), %rcx
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB11_39:                              # =>This Inner Loop Header: Depth=1
	movl	(%rcx), %eax
	testl	%eax, %eax
	jle	.LBB11_41
# %bb.40:                               #   in Loop: Header=BB11_39 Depth=1
	addl	%eax, %edi
	cmpl	%ebx, %edi
	cmovgl	%edi, %r8d
	cmovgl	%esi, %edx
.LBB11_41:                              #   in Loop: Header=BB11_39 Depth=1
	cmpl	%r14d, %edi
	je	.LBB11_43
# %bb.42:                               #   in Loop: Header=BB11_39 Depth=1
	leal	(%rsi,%rsi), %eax
	andl	$2147483647, %esi       # imm = 0x7FFFFFFF
	addq	$4, %rcx
	movl	%esi, %ebx
	cmpl	%r14d, %esi
	movl	%eax, %esi
	jl	.LBB11_39
	jmp	.LBB11_43
.LBB11_37:
	xorl	%r8d, %r8d
	xorl	%edx, %edx
.LBB11_43:
	movl	$42, __A_VARIABLE(%rip)
	addl	%r13d, %r12d
	subl	%r8d, %r12d
	addl	$1, %r12d
	movq	%r15, %rdi
	movq	%r10, %rsi
	movl	%r12d, %ecx
	callq	resize
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaH_get
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r14
	movb	$0, 10(%rsi)
	movl	$luaO_nilobject_, %eax
	cmpq	%rax, %r14
	jne	.LBB11_51
# %bb.44:
	movl	8(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB11_47
# %bb.45:
	testl	%eax, %eax
	jne	.LBB11_50
# %bb.46:
	movl	$.L.str, %esi
.LBB11_49:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB11_50
.LBB11_52:
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movq	%rbx, 32(%r14)
	movq	%rbx, %r14
.LBB11_53:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	(%r12), %rax
	movq	%rax, 16(%r14)
	movl	8(%r12), %eax
	movl	%eax, 24(%r14)
	cmpl	$4, 8(%r12)
	jl	.LBB11_57
# %bb.54:
	movq	(%r12), %rax
	testb	$3, 9(%rax)
	je	.LBB11_57
# %bb.55:
	testb	$4, 9(%rsi)
	je	.LBB11_57
# %bb.56:
	movq	%r15, %rdi
	callq	luaC_barrierback
	jmp	.LBB11_57
.LBB11_34:
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %edi
	xorl	%eax, %eax
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	movq	-64(%rbp), %r15         # 8-byte Reload
	ja	.LBB11_36
# %bb.35:
	callq	luaO_log2
	movq	-48(%rbp), %r10         # 8-byte Reload
	cltq
	addl	$1, -172(%rbp,%rax,4)
	movl	$1, %eax
	jmp	.LBB11_36
.LBB11_47:
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jp	.LBB11_48
.LBB11_50:
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	newkey
	movq	%rax, %r14
.LBB11_51:
	movl	$42, __A_VARIABLE(%rip)
.LBB11_57:
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
.LBB11_48:
	movl	$.L.str.1, %esi
	jmp	.LBB11_49
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
	subq	$40, %rsp
	movl	%edx, %r15d
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leal	-1(%r15), %eax
	cmpl	56(%rsi), %eax
	jae	.LBB12_4
# %bb.1:
	cltq
	shlq	$4, %rax
	addq	24(%rbx), %rax
	jmp	.LBB12_2
.LBB12_4:
	cvtsi2sd	%r15d, %xmm1
	movsd	%xmm1, -48(%rbp)
	testl	%r15d, %r15d
	je	.LBB12_5
# %bb.6:
	leaq	-32(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-32(%rbp), %eax
	addl	-28(%rbp), %eax
	movl	%eax, -32(%rbp)
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
	jmp	.LBB12_7
.LBB12_5:
	movq	32(%rbx), %rax
.LBB12_7:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB12_8
	.p2align	4, 0x90
.LBB12_10:                              #   in Loop: Header=BB12_8 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_11
.LBB12_8:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	jne	.LBB12_10
# %bb.9:                                #   in Loop: Header=BB12_8 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB12_10
	jp	.LBB12_10
.LBB12_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB12_13
# %bb.3:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	jmp	.LBB12_12
.LBB12_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB12_12:
	movsd	%xmm1, -48(%rbp)
	movl	$3, -40(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	newkey
.LBB12_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
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
	jmp	.LBB13_1
	.p2align	4, 0x90
.LBB13_3:                               #   in Loop: Header=BB13_1 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_4
.LBB13_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rax)
	jne	.LBB13_3
# %bb.2:                                #   in Loop: Header=BB13_1 Depth=1
	cmpq	%rdx, 16(%rax)
	jne	.LBB13_3
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB13_7
	jmp	.LBB13_6
.LBB13_4:
	movl	$42, __A_VARIABLE(%rip)
.LBB13_6:
	movq	%rdx, -16(%rbp)
	movl	$4, -8(%rbp)
	leaq	-16(%rbp), %rdx
	callq	newkey
.LBB13_7:
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
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r14
	movl	56(%rdi), %eax
	testl	%eax, %eax
	je	.LBB14_7
# %bb.1:
	movq	24(%r14), %rcx
	leal	-1(%rax), %edx
	shlq	$4, %rdx
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB14_2
.LBB14_7:
	movq	32(%r14), %rcx
	movl	$dummynode_, %edx
	cmpq	%rdx, %rcx
	je	.LBB14_8
# %bb.9:
	leal	1(%rax), %edx
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	movl	%eax, %r13d
	.p2align	4, 0x90
.LBB14_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_15 Depth 2
	movl	%edx, %ebx
	leal	-1(%rbx), %edx
	cmpl	%eax, %edx
	jae	.LBB14_12
# %bb.11:                               #   in Loop: Header=BB14_10 Depth=1
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	24(%r14), %rax
	jmp	.LBB14_19
	.p2align	4, 0x90
.LBB14_12:                              #   in Loop: Header=BB14_10 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%ebx, %ebx
	je	.LBB14_14
# %bb.13:                               #   in Loop: Header=BB14_10 Depth=1
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movb	11(%r14), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	movq	32(%r14), %rcx
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rcx,%rax,8), %rax
.LBB14_14:                              #   in Loop: Header=BB14_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_15
	.p2align	4, 0x90
.LBB14_17:                              #   in Loop: Header=BB14_15 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB14_18
.LBB14_15:                              #   Parent Loop BB14_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB14_17
# %bb.16:                               #   in Loop: Header=BB14_15 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_17
	jp	.LBB14_17
	jmp	.LBB14_19
	.p2align	4, 0x90
.LBB14_18:                              #   in Loop: Header=BB14_10 Depth=1
	movl	$luaO_nilobject_, %eax
.LBB14_19:                              #   in Loop: Header=BB14_10 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rax)
	je	.LBB14_20
# %bb.24:                               #   in Loop: Header=BB14_10 Depth=1
	leal	(%rbx,%rbx), %edx
	cmpl	$2147483645, %edx       # imm = 0x7FFFFFFD
	ja	.LBB14_26
# %bb.25:                               #   in Loop: Header=BB14_10 Depth=1
	movl	56(%r14), %eax
	movl	%ebx, %r13d
	jmp	.LBB14_10
.LBB14_8:
	movl	%eax, %r13d
	jmp	.LBB14_46
.LBB14_2:
	xorl	%r13d, %r13d
	cmpl	$2, %eax
	jb	.LBB14_46
# %bb.3:                                # %.preheader
	xorl	%edx, %edx
	jmp	.LBB14_4
	.p2align	4, 0x90
.LBB14_6:                               #   in Loop: Header=BB14_4 Depth=1
	movl	%eax, %esi
	subl	%r13d, %esi
	movl	%r13d, %edx
	cmpl	$1, %esi
	jbe	.LBB14_46
.LBB14_4:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rax), %r13d
	shrl	%r13d
	leal	-1(%r13), %esi
	shlq	$4, %rsi
	cmpl	$0, 8(%rcx,%rsi)
	jne	.LBB14_6
# %bb.5:                                #   in Loop: Header=BB14_4 Depth=1
	movl	%r13d, %eax
	movl	%edx, %r13d
	jmp	.LBB14_6
.LBB14_20:
	movl	%ebx, %eax
	subl	%r13d, %eax
	cmpl	$2, %eax
	jb	.LBB14_45
# %bb.21:
	leaq	-64(%rbp), %r12
	jmp	.LBB14_22
	.p2align	4, 0x90
.LBB14_23:                              #   in Loop: Header=BB14_22 Depth=1
	cltq
	shlq	$4, %rax
	addq	24(%r14), %rax
.LBB14_44:                              #   in Loop: Header=BB14_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 8(%rax)
	cmovel	%r15d, %ebx
	cmovnel	%r15d, %r13d
	movl	%ebx, %eax
	subl	%r13d, %eax
	cmpl	$1, %eax
	jbe	.LBB14_45
.LBB14_22:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_40 Depth 2
	leal	(%rbx,%r13), %r15d
	shrl	%r15d
	leal	-1(%r15), %eax
	cmpl	56(%r14), %eax
	jb	.LBB14_23
# %bb.37:                               #   in Loop: Header=BB14_22 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%r15d, %r15d
	je	.LBB14_39
# %bb.38:                               #   in Loop: Header=BB14_22 Depth=1
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	movq	%r12, %rsi
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movb	11(%r14), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	movq	32(%r14), %rcx
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rcx,%rax,8), %rax
.LBB14_39:                              #   in Loop: Header=BB14_22 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_40
	.p2align	4, 0x90
.LBB14_42:                              #   in Loop: Header=BB14_40 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB14_43
.LBB14_40:                              #   Parent Loop BB14_22 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB14_42
# %bb.41:                               #   in Loop: Header=BB14_40 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_42
	jp	.LBB14_42
	jmp	.LBB14_44
	.p2align	4, 0x90
.LBB14_43:                              #   in Loop: Header=BB14_22 Depth=1
	movl	$luaO_nilobject_, %eax
	jmp	.LBB14_44
.LBB14_26:
	movl	$1, %ebx
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	jmp	.LBB14_27
	.p2align	4, 0x90
.LBB14_28:                              #   in Loop: Header=BB14_27 Depth=1
	movslq	%r13d, %rax
	shlq	$4, %rax
	addq	24(%r14), %rax
.LBB14_36:                              #   in Loop: Header=BB14_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %ebx
	cmpl	$0, 8(%rax)
	je	.LBB14_45
.LBB14_27:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB14_32 Depth 2
	leal	-1(%rbx), %r13d
	cmpl	56(%r14), %r13d
	jb	.LBB14_28
# %bb.29:                               #   in Loop: Header=BB14_27 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%ebx, %ebx
	je	.LBB14_31
# %bb.30:                               #   in Loop: Header=BB14_27 Depth=1
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%r12, %rsi
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	movb	11(%r14), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	movq	32(%r14), %rcx
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	leaq	(%rcx,%rax,8), %rax
.LBB14_31:                              #   in Loop: Header=BB14_27 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB14_32
	.p2align	4, 0x90
.LBB14_34:                              #   in Loop: Header=BB14_32 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB14_35
.LBB14_32:                              #   Parent Loop BB14_27 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB14_34
# %bb.33:                               #   in Loop: Header=BB14_32 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB14_34
	jp	.LBB14_34
	jmp	.LBB14_36
	.p2align	4, 0x90
.LBB14_35:                              #   in Loop: Header=BB14_27 Depth=1
	movl	$luaO_nilobject_, %eax
	jmp	.LBB14_36
.LBB14_45:
	movl	$42, __A_VARIABLE(%rip)
.LBB14_46:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
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
