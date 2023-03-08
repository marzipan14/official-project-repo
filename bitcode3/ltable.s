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
	subq	$24, %rsp
	movq	%rdx, %r12
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	8(%rdx), %eax
	cmpq	$4, %rax
	ja	.LBB0_3
# %bb.1:
	movl	$-1, %ebx
	jmpq	*.LJTI0_0(,%rax,8)
.LBB0_2:
	movb	11(%r14), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	(%r12), %eax
	cltq
	jmp	.LBB0_11
.LBB0_3:
	movl	(%r12), %eax
.LBB0_4:
	movb	11(%r14), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %r13
	jmp	.LBB0_12
.LBB0_5:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %ebx
	testl	%ebx, %ebx
	jle	.LBB0_8
# %bb.6:
	cvtsi2sd	%ebx, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_8
	jp	.LBB0_8
# %bb.7:
	cmpl	%ebx, 56(%r14)
	jge	.LBB0_32
.LBB0_8:
	movsd	%xmm0, -56(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB0_31
	jp	.LBB0_31
# %bb.9:
	movq	32(%r14), %r13
	jmp	.LBB0_14
.LBB0_10:
	movq	(%r12), %rax
	movb	11(%r14), %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	12(%rax), %edx
	movslq	%edx, %rax
.LBB0_11:
	leaq	(%rax,%rax,4), %r13
.LBB0_12:
	shlq	$3, %r13
	addq	32(%r14), %r13
	jmp	.LBB0_14
	.p2align	4, 0x90
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	movq	32(%r13), %r13
	testq	%r13, %r13
	je	.LBB0_19
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	leaq	16(%r13), %rbx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	jne	.LBB0_18
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	cmpl	$11, 24(%r13)
	jne	.LBB0_13
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	cmpl	$4, 8(%r12)
	jl	.LBB0_13
# %bb.17:                               #   in Loop: Header=BB0_14 Depth=1
	movq	(%rbx), %rax
	cmpq	(%r12), %rax
	jne	.LBB0_13
.LBB0_18:
	subq	32(%r14), %r13
	shrq	$3, %r13
	imull	$-858993459, %r13d, %ebx # imm = 0xCCCCCCCD
	addl	56(%r14), %ebx
	jmp	.LBB0_20
.LBB0_19:
	xorl	%ebx, %ebx
	movl	$.L.str.2, %esi
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
.LBB0_20:
	movslq	56(%r14), %rax
	movslq	%ebx, %rdx
	movq	%rdx, %rcx
	shlq	$4, %rcx
	addq	$1, %rdx
	.p2align	4, 0x90
.LBB0_21:                               # =>This Inner Loop Header: Depth=1
	cmpq	%rax, %rdx
	jge	.LBB0_24
# %bb.22:                               #   in Loop: Header=BB0_21 Depth=1
	movq	24(%r14), %rsi
	addq	$1, %rdx
	cmpl	$0, 24(%rsi,%rcx)
	leaq	16(%rcx), %rcx
	je	.LBB0_21
# %bb.23:
	xorps	%xmm0, %xmm0
	cvtsi2sd	%edx, %xmm0
	movsd	%xmm0, (%r12)
	movl	$3, 8(%r12)
	movq	24(%r14), %rax
	movq	(%rax,%rcx), %rdx
	movq	%rdx, 16(%r12)
	movl	8(%rax,%rcx), %eax
	jmp	.LBB0_29
.LBB0_24:
	movb	11(%r14), %cl
	movl	$1, %edi
	shll	%cl, %edi
	subl	%eax, %edx
	xorl	%eax, %eax
	cmpl	%edi, %edx
	jge	.LBB0_30
# %bb.25:
	movq	32(%r14), %rcx
	movslq	%edx, %rsi
	movslq	%edi, %rdi
	movslq	%edx, %rdx
	shlq	$3, %rdx
	leaq	(%rdx,%rdx,4), %rdx
	.p2align	4, 0x90
.LBB0_26:                               # =>This Inner Loop Header: Depth=1
	cmpl	$0, 8(%rcx,%rdx)
	jne	.LBB0_28
# %bb.27:                               #   in Loop: Header=BB0_26 Depth=1
	addq	$1, %rsi
	addq	$40, %rdx
	cmpq	%rdi, %rsi
	jl	.LBB0_26
	jmp	.LBB0_30
.LBB0_28:
	movq	16(%rcx,%rdx), %rax
	movq	%rax, (%r12)
	movl	24(%rcx,%rdx), %eax
	movl	%eax, 8(%r12)
	movq	32(%r14), %rax
	movq	(%rax,%rdx), %rcx
	movq	%rcx, 16(%r12)
	movl	8(%rax,%rdx), %eax
.LBB0_29:
	movl	%eax, 24(%r12)
	movl	$1, %eax
.LBB0_30:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_31:
	leaq	-48(%rbp), %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
	addl	-44(%rbp), %eax
	movl	%eax, -48(%rbp)
	jmp	.LBB0_4
.LBB0_32:
	addl	$-1, %ebx
	jmp	.LBB0_20
.Lfunc_end0:
	.size	luaH_next, .Lfunc_end0-luaH_next
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI0_0:
	.quad	.LBB0_20
	.quad	.LBB0_2
	.quad	.LBB0_3
	.quad	.LBB0_5
	.quad	.LBB0_10
                                        # -- End function
	.text
	.hidden	luaH_resizearray        # -- Begin function luaH_resizearray
	.globl	luaH_resizearray
	.p2align	4, 0x90
	.type	luaH_resizearray,@function
luaH_resizearray:                       # @luaH_resizearray
# %bb.0:
	movl	$dummynode_, %eax
	cmpq	%rax, 32(%rsi)
	je	.LBB1_1
# %bb.2:
	movb	11(%rsi), %cl
	movl	$1, %eax
	shll	%cl, %eax
	movl	%eax, %ecx
	jmp	resize                  # TAILCALL
.LBB1_1:
	xorl	%ecx, %ecx
	jmp	resize                  # TAILCALL
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
	je	.LBB2_36
# %bb.37:
	shlq	$3, %r15
	leaq	(%r15,%r15,4), %rdx
	movq	-48(%rbp), %rdi         # 8-byte Reload
	xorl	%ecx, %ecx
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	luaM_realloc_           # TAILCALL
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
.LBB2_36:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	movq	%r15, %rdi
	movq	%r13, %rsi
	movl	%r14d, %edx
	callq	setnodevector
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
	popq	%rbx
	popq	%r14
	popq	%rbp
	jmp	luaM_realloc_           # TAILCALL
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
	jmp	.LBB6_9
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
	jmp	.LBB6_5
	.p2align	4, 0x90
.LBB6_7:                                #   in Loop: Header=BB6_5 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB6_8
.LBB6_5:                                # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	jne	.LBB6_7
# %bb.6:                                #   in Loop: Header=BB6_5 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB6_7
	jp	.LBB6_7
	jmp	.LBB6_9
.LBB6_8:
	movl	$luaO_nilobject_, %eax
.LBB6_9:
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
	retq
.LBB7_4:
	movl	$luaO_nilobject_, %eax
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
	movq	%rsi, %r12
	movq	%rdi, %r15
	movl	8(%rsi), %eax
	movl	$luaO_nilobject_, %r14d
	cmpq	$4, %rax
	ja	.LBB8_21
# %bb.1:
	jmpq	*.LJTI8_0(,%rax,8)
.LBB8_20:
	movb	11(%r15), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	(%r12), %eax
	cltq
	leaq	(%rax,%rax,4), %rbx
	jmp	.LBB8_23
.LBB8_21:
	movl	(%r12), %eax
.LBB8_22:
	movb	11(%r15), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rbx
.LBB8_23:
	shlq	$3, %rbx
	addq	32(%r15), %rbx
	.p2align	4, 0x90
.LBB8_24:                               # =>This Inner Loop Header: Depth=1
	leaq	16(%rbx), %rdi
	movq	%r12, %rsi
	callq	luaO_rawequalObj
	testl	%eax, %eax
	jne	.LBB8_25
# %bb.26:                               #   in Loop: Header=BB8_24 Depth=1
	movq	32(%rbx), %rbx
	testq	%rbx, %rbx
	jne	.LBB8_24
	jmp	.LBB8_27
.LBB8_25:
	movq	%rbx, %r14
.LBB8_27:
	movq	%r14, %rax
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_7:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %eax
	cvtsi2sd	%eax, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_17
	jp	.LBB8_17
# %bb.8:
	leal	-1(%rax), %ecx
	cmpl	56(%r15), %ecx
	jae	.LBB8_10
# %bb.9:
	movslq	%ecx, %r14
	shlq	$4, %r14
	addq	24(%r15), %r14
	jmp	.LBB8_27
.LBB8_2:
	movq	(%r12), %rax
	movb	11(%r15), %cl
	movl	$-1, %edx
	shll	%cl, %edx
	notl	%edx
	andl	12(%rax), %edx
	movslq	%edx, %rcx
	leaq	(%rcx,%rcx,4), %rcx
	shlq	$3, %rcx
	addq	32(%r15), %rcx
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_6:                                #   in Loop: Header=BB8_3 Depth=1
	movq	32(%rcx), %rcx
	testq	%rcx, %rcx
	je	.LBB8_27
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rcx)
	jne	.LBB8_6
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	cmpq	%rax, 16(%rcx)
	jne	.LBB8_6
# %bb.5:
	movq	%rcx, %r14
	jmp	.LBB8_27
.LBB8_17:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -48(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_19
	jp	.LBB8_19
# %bb.18:
	movq	32(%r15), %rbx
	jmp	.LBB8_24
.LBB8_10:
	movsd	%xmm1, -48(%rbp)
	testl	%eax, %eax
	je	.LBB8_11
# %bb.12:
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	movsd	%xmm1, -56(%rbp)        # 8-byte Spill
	callq	memcpy
	movsd	-56(%rbp), %xmm1        # 8-byte Reload
                                        # xmm1 = mem[0],zero
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	movb	11(%r15), %cl
	movl	$-1, %esi
	shll	%cl, %esi
	orl	$1, %esi
	xorl	$-2, %esi
	xorl	%edx, %edx
	divl	%esi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	shlq	$3, %rax
	addq	32(%r15), %rax
	jmp	.LBB8_13
.LBB8_19:
	leaq	-40(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	-40(%rbp), %eax
	addl	-36(%rbp), %eax
	movl	%eax, -40(%rbp)
	jmp	.LBB8_22
.LBB8_11:
	movq	32(%r15), %rax
	jmp	.LBB8_13
	.p2align	4, 0x90
.LBB8_16:                               #   in Loop: Header=BB8_13 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB8_27
.LBB8_13:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	jne	.LBB8_16
# %bb.14:                               #   in Loop: Header=BB8_13 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB8_16
	jp	.LBB8_16
# %bb.15:
	movq	%rax, %r14
	jmp	.LBB8_27
.Lfunc_end8:
	.size	luaH_get, .Lfunc_end8-luaH_get
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI8_0:
	.quad	.LBB8_27
	.quad	.LBB8_20
	.quad	.LBB8_21
	.quad	.LBB8_7
	.quad	.LBB8_2
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
	je	.LBB9_1
# %bb.8:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB9_1:
	movl	8(%r14), %eax
	cmpl	$3, %eax
	je	.LBB9_4
# %bb.2:
	testl	%eax, %eax
	jne	.LBB9_7
# %bb.3:
	movl	$.L.str, %esi
.LBB9_6:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	jmp	.LBB9_7
.LBB9_4:
	movsd	(%r14), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jp	.LBB9_5
.LBB9_7:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	movq	%r14, %rdx
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	newkey                  # TAILCALL
.LBB9_5:
	movl	$.L.str.1, %esi
	jmp	.LBB9_6
.Lfunc_end9:
	.size	luaH_set, .Lfunc_end9-luaH_set
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
	subq	$152, %rsp
	movq	%rdx, %r12
	movq	%rdi, %r15
	movl	8(%rdx), %eax
	addl	$-1, %eax
	cmpl	$3, %eax
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	ja	.LBB10_8
# %bb.1:
	jmpq	*.LJTI10_0(,%rax,8)
.LBB10_6:
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	(%r12), %eax
	jmp	.LBB10_7
.LBB10_8:
	movb	11(%rsi), %cl
	movl	$-1, %edi
	shll	%cl, %edi
	movq	32(%rsi), %r11
	movl	(%r12), %eax
.LBB10_9:
	orl	$1, %edi
	xorl	$-2, %edi
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	jmp	.LBB10_10
.LBB10_2:
	movsd	(%r12), %xmm0           # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_4
	jp	.LBB10_4
# %bb.3:
	movq	32(%rsi), %r11
	movq	%r11, %r14
	jmp	.LBB10_11
.LBB10_5:
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	movq	(%r12), %rcx
	notl	%eax
	andl	12(%rcx), %eax
.LBB10_7:
	movq	32(%rsi), %r11
	cltq
	leaq	(%rax,%rax,4), %rax
.LBB10_10:
	leaq	(%r11,%rax,8), %r14
.LBB10_11:
	movl	$dummynode_, %eax
	cmpq	%rax, %r14
	je	.LBB10_13
# %bb.12:
	cmpl	$0, 8(%r14)
	je	.LBB10_69
.LBB10_13:
	movq	40(%rsi), %rax
	.p2align	4, 0x90
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	leaq	-40(%rax), %rbx
	movq	%rbx, 40(%rsi)
	cmpq	%r11, %rax
	jbe	.LBB10_18
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=1
	cmpl	$0, -16(%rax)
	movq	%rbx, %rax
	jne	.LBB10_14
# %bb.16:
	movl	24(%r14), %eax
	addl	$-1, %eax
	cmpl	$3, %eax
	ja	.LBB10_63
# %bb.17:
	jmpq	*.LJTI10_1(,%rax,8)
.LBB10_61:
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	andl	16(%r14), %eax
	jmp	.LBB10_62
.LBB10_18:
	movq	%r12, -64(%rbp)         # 8-byte Spill
	movq	%r15, -72(%rbp)         # 8-byte Spill
	xorpd	%xmm0, %xmm0
	movapd	%xmm0, -192(%rbp)
	movapd	%xmm0, -176(%rbp)
	movapd	%xmm0, -160(%rbp)
	movapd	%xmm0, -144(%rbp)
	movapd	%xmm0, -128(%rbp)
	movapd	%xmm0, -112(%rbp)
	movq	$0, -96(%rbp)
	movl	$0, -88(%rbp)
	movl	56(%rsi), %r9d
	xorl	%r14d, %r14d
	movl	$1, %edi
	movl	$8, %r8d
	pcmpeqd	%xmm1, %xmm1
	xorl	%r12d, %r12d
	movl	$1, %r15d
	jmp	.LBB10_19
	.p2align	4, 0x90
.LBB10_30:                              #   in Loop: Header=BB10_19 Depth=1
	addl	%edx, -192(%rbp,%r14,4)
	addl	%edx, %r12d
	addq	$1, %r14
	addl	%r15d, %r15d
	cmpq	$27, %r14
	jae	.LBB10_31
.LBB10_19:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB10_25 Depth 2
                                        #     Child Loop BB10_28 Depth 2
	movl	%r15d, %eax
	cmpl	%r9d, %r15d
	jle	.LBB10_21
# %bb.20:                               #   in Loop: Header=BB10_19 Depth=1
	movl	%r9d, %eax
	cmpl	%r9d, %edi
	jg	.LBB10_31
.LBB10_21:                              #   in Loop: Header=BB10_19 Depth=1
	xorl	%edx, %edx
	cmpl	%eax, %edi
	jg	.LBB10_30
# %bb.22:                               #   in Loop: Header=BB10_19 Depth=1
	movq	24(%rsi), %r10
	movslq	%edi, %rcx
	cltq
	cmpq	%rcx, %rax
	movq	%rcx, %rbx
	cmovgeq	%rax, %rbx
	movq	%rbx, %rdi
	subq	%rcx, %rdi
	addq	$1, %rdi
	xorl	%edx, %edx
	cmpq	$9, %rdi
	jae	.LBB10_24
# %bb.23:                               #   in Loop: Header=BB10_19 Depth=1
	movq	%rcx, %rdi
	jmp	.LBB10_27
	.p2align	4, 0x90
.LBB10_24:                              #   in Loop: Header=BB10_19 Depth=1
	movl	%edi, %esi
	andl	$7, %esi
	testq	%rsi, %rsi
	cmoveq	%r8, %rsi
	subq	%rsi, %rdi
	addq	%rcx, %rdi
	addq	%rcx, %rsi
	notq	%rbx
	addq	%rsi, %rbx
	shlq	$4, %rcx
	leaq	(%r10,%rcx), %rsi
	addq	$56, %rsi
	pxor	%xmm2, %xmm2
	pxor	%xmm3, %xmm3
	.p2align	4, 0x90
.LBB10_25:                              #   Parent Loop BB10_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movdqu	-64(%rsi), %xmm4
	movdqu	-48(%rsi), %xmm5
	punpckldq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0],xmm4[1],xmm5[1]
	movdqu	-32(%rsi), %xmm5
	movdqu	-16(%rsi), %xmm6
	punpckldq	%xmm6, %xmm5    # xmm5 = xmm5[0],xmm6[0],xmm5[1],xmm6[1]
	punpcklqdq	%xmm5, %xmm4    # xmm4 = xmm4[0],xmm5[0]
	movdqu	16(%rsi), %xmm5
	movdqu	(%rsi), %xmm6
	punpckldq	%xmm5, %xmm6    # xmm6 = xmm6[0],xmm5[0],xmm6[1],xmm5[1]
	movdqu	48(%rsi), %xmm5
	movdqu	32(%rsi), %xmm7
	punpckldq	%xmm5, %xmm7    # xmm7 = xmm7[0],xmm5[0],xmm7[1],xmm5[1]
	punpcklqdq	%xmm7, %xmm6    # xmm6 = xmm6[0],xmm7[0]
	pcmpeqd	%xmm0, %xmm4
	paddd	%xmm4, %xmm2
	pcmpeqd	%xmm0, %xmm6
	paddd	%xmm6, %xmm3
	psubd	%xmm1, %xmm2
	psubd	%xmm1, %xmm3
	subq	$-128, %rsi
	addq	$8, %rbx
	jne	.LBB10_25
# %bb.26:                               #   in Loop: Header=BB10_19 Depth=1
	paddd	%xmm2, %xmm3
	pshufd	$78, %xmm3, %xmm2       # xmm2 = xmm3[2,3,0,1]
	paddd	%xmm3, %xmm2
	pshufd	$229, %xmm2, %xmm3      # xmm3 = xmm2[1,1,2,3]
	paddd	%xmm2, %xmm3
	movd	%xmm3, %edx
.LBB10_27:                              #   in Loop: Header=BB10_19 Depth=1
	movq	%rdi, %rcx
	shlq	$4, %rcx
	addq	%r10, %rcx
	addq	$-8, %rcx
	.p2align	4, 0x90
.LBB10_28:                              #   Parent Loop BB10_19 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$1, (%rcx)
	sbbl	$-1, %edx
	addq	$16, %rcx
	cmpq	%rax, %rdi
	leaq	1(%rdi), %rdi
	jl	.LBB10_28
# %bb.29:                               #   in Loop: Header=BB10_19 Depth=1
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB10_30
.LBB10_31:
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	notl	%eax
	movslq	%eax, %r15
	leaq	(%r15,%r15,4), %rax
	leaq	24(,%rax,8), %rbx
	xorl	%r13d, %r13d
	xorl	%r14d, %r14d
	cmpl	$0, -16(%r11,%rbx)
	je	.LBB10_38
	.p2align	4, 0x90
.LBB10_33:
	xorl	%eax, %eax
	cmpl	$3, (%r11,%rbx)
	jne	.LBB10_37
# %bb.34:
	movsd	-8(%r11,%rbx), %xmm0    # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_37
	jp	.LBB10_37
# %bb.35:
	addl	$-1, %edi
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	ja	.LBB10_37
# %bb.36:
	callq	luaO_log2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cltq
	addl	$1, -188(%rbp,%rax,4)
	movl	$1, %eax
	.p2align	4, 0x90
.LBB10_37:
	addl	%eax, %r14d
	addl	$1, %r13d
.LBB10_38:                              # =>This Inner Loop Header: Depth=1
	testq	%r15, %r15
	je	.LBB10_40
# %bb.39:                               #   in Loop: Header=BB10_38 Depth=1
	addq	$-1, %r15
	movq	32(%rsi), %r11
	addq	$-40, %rbx
	cmpl	$0, -16(%r11,%rbx)
	jne	.LBB10_33
	jmp	.LBB10_38
.LBB10_40:
	addl	%r12d, %r14d
	xorl	%r15d, %r15d
	movq	-64(%rbp), %rax         # 8-byte Reload
	cmpl	$3, 8(%rax)
	movl	$0, %eax
	jne	.LBB10_44
# %bb.41:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movsd	(%rax), %xmm0           # xmm0 = mem[0],zero
	cvttsd2si	%xmm0, %edi
	xorps	%xmm1, %xmm1
	cvtsi2sd	%edi, %xmm1
	ucomisd	%xmm1, %xmm0
	movl	$0, %eax
	jne	.LBB10_44
	jp	.LBB10_44
# %bb.42:
	addl	$-1, %edi
	movl	$0, %eax
	cmpl	$67108863, %edi         # imm = 0x3FFFFFF
	ja	.LBB10_44
# %bb.43:
	callq	luaO_log2
	movq	-48(%rbp), %rsi         # 8-byte Reload
	cltq
	addl	$1, -188(%rbp,%rax,4)
	movl	$1, %eax
.LBB10_44:
	movl	$0, %edx
	addl	%eax, %r14d
	jle	.LBB10_50
# %bb.45:                               # %.preheader1
	movl	$1, %ecx
	xorl	%edi, %edi
	leaq	-192(%rbp), %rax
	xorl	%edx, %edx
	xorl	%r15d, %r15d
	xorl	%r8d, %r8d
	.p2align	4, 0x90
.LBB10_46:                              # =>This Inner Loop Header: Depth=1
	movl	(%rax), %ebx
	testl	%ebx, %ebx
	jle	.LBB10_48
# %bb.47:                               #   in Loop: Header=BB10_46 Depth=1
	addl	%ebx, %r8d
	cmpl	%edi, %r8d
	cmovgl	%r8d, %r15d
	cmovgl	%ecx, %edx
.LBB10_48:                              #   in Loop: Header=BB10_46 Depth=1
	cmpl	%r14d, %r8d
	je	.LBB10_50
# %bb.49:                               #   in Loop: Header=BB10_46 Depth=1
	leal	(%rcx,%rcx), %ebx
	andl	$2147483647, %ecx       # imm = 0x7FFFFFFF
	addq	$4, %rax
	movl	%ecx, %edi
	cmpl	%r14d, %ecx
	movl	%ebx, %ecx
	jl	.LBB10_46
.LBB10_50:
	addl	%r13d, %r12d
	subl	%r15d, %r12d
	addl	$1, %r12d
	movq	-72(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rdi
	movl	%r12d, %ecx
	callq	resize
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rsi
	callq	luaH_get
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movq	%rax, %r14
	movb	$0, 10(%rsi)
	movl	$luaO_nilobject_, %eax
	cmpq	%rax, %r14
	jne	.LBB10_73
# %bb.51:
	movl	8(%rbx), %eax
	cmpl	$3, %eax
	je	.LBB10_54
# %bb.52:
	testl	%eax, %eax
	jne	.LBB10_57
# %bb.53:
	movl	$.L.str, %esi
.LBB10_56:
	movq	%r15, %rdi
	xorl	%eax, %eax
	callq	luaG_runerror
	movq	-48(%rbp), %rsi         # 8-byte Reload
	jmp	.LBB10_57
.LBB10_63:
	movb	11(%rsi), %cl
	movl	$-1, %edi
	shll	%cl, %edi
	movl	16(%r14), %eax
	orl	$1, %edi
	xorl	$-2, %edi
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %rax
	jmp	.LBB10_64
.LBB10_4:
	leaq	-56(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-56(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movb	11(%rsi), %cl
	movl	$-1, %edi
	shll	%cl, %edi
	movq	32(%rsi), %r11
	jmp	.LBB10_9
.LBB10_58:
	movsd	16(%r14), %xmm0         # xmm0 = mem[0],zero
	movsd	%xmm0, -192(%rbp)
	xorpd	%xmm1, %xmm1
	ucomisd	%xmm1, %xmm0
	jne	.LBB10_59
	jnp	.LBB10_65
.LBB10_59:
	leaq	-56(%rbp), %rdi
	leaq	-192(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rsi         # 8-byte Reload
	movl	-56(%rbp), %eax
	addl	-52(%rbp), %eax
	movl	%eax, -56(%rbp)
	movb	11(%rsi), %cl
	movl	$-1, %edi
	shll	%cl, %edi
	orl	$1, %edi
	xorl	$-2, %edi
	xorl	%edx, %edx
	divl	%edi
                                        # kill: def $edx killed $edx def $rdx
	leaq	(%rdx,%rdx,4), %r11
	shlq	$3, %r11
	addq	32(%rsi), %r11
	jmp	.LBB10_65
.LBB10_60:
	movb	11(%rsi), %cl
	movl	$-1, %eax
	shll	%cl, %eax
	movq	16(%r14), %rcx
	notl	%eax
	andl	12(%rcx), %eax
.LBB10_62:
	cltq
	leaq	(%rax,%rax,4), %rax
.LBB10_64:
	leaq	(%r11,%rax,8), %r11
.LBB10_65:
	cmpq	%r14, %r11
	je	.LBB10_68
	.p2align	4, 0x90
.LBB10_66:                              # =>This Inner Loop Header: Depth=1
	movq	%r11, %rax
	movq	32(%r11), %r11
	cmpq	%r14, %r11
	jne	.LBB10_66
# %bb.67:
	movq	%rbx, 32(%rax)
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movupd	(%r14), %xmm0
	movupd	16(%r14), %xmm1
	movupd	%xmm1, 16(%rbx)
	movupd	%xmm0, (%rbx)
	movq	$0, 32(%r14)
	movl	$0, 8(%r14)
	jmp	.LBB10_69
.LBB10_68:
	movq	32(%r14), %rax
	movq	%rax, 32(%rbx)
	movq	%rbx, 32(%r14)
	movq	%rbx, %r14
.LBB10_69:
	movq	(%r12), %rax
	movq	%rax, 16(%r14)
	movl	8(%r12), %eax
	movl	%eax, 24(%r14)
	cmpl	$4, 8(%r12)
	jl	.LBB10_73
# %bb.70:
	movq	(%r12), %rax
	testb	$3, 9(%rax)
	je	.LBB10_73
# %bb.71:
	testb	$4, 9(%rsi)
	je	.LBB10_73
# %bb.72:
	movq	%r15, %rdi
	callq	luaC_barrierback
	jmp	.LBB10_73
.LBB10_54:
	movsd	(%rbx), %xmm0           # xmm0 = mem[0],zero
	ucomisd	%xmm0, %xmm0
	jp	.LBB10_55
.LBB10_57:
	movq	%r15, %rdi
	movq	%rbx, %rdx
	callq	newkey
	movq	%rax, %r14
.LBB10_73:
	movq	%r14, %rax
	addq	$152, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_55:
	movl	$.L.str.1, %esi
	jmp	.LBB10_56
.Lfunc_end10:
	.size	newkey, .Lfunc_end10-newkey
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI10_0:
	.quad	.LBB10_6
	.quad	.LBB10_8
	.quad	.LBB10_2
	.quad	.LBB10_5
.LJTI10_1:
	.quad	.LBB10_61
	.quad	.LBB10_63
	.quad	.LBB10_58
	.quad	.LBB10_60
                                        # -- End function
	.text
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
	jae	.LBB11_4
# %bb.1:
	cltq
	shlq	$4, %rax
	addq	24(%rbx), %rax
	jmp	.LBB11_2
.LBB11_4:
	cvtsi2sd	%r15d, %xmm1
	movsd	%xmm1, -48(%rbp)
	testl	%r15d, %r15d
	je	.LBB11_5
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
	jmp	.LBB11_7
.LBB11_5:
	movq	32(%rbx), %rax
	jmp	.LBB11_7
	.p2align	4, 0x90
.LBB11_9:                               #   in Loop: Header=BB11_7 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB11_10
.LBB11_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	$3, 24(%rax)
	jne	.LBB11_9
# %bb.8:                                #   in Loop: Header=BB11_7 Depth=1
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB11_9
	jp	.LBB11_9
.LBB11_2:
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB11_11
# %bb.3:
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
.LBB11_10:
	movsd	%xmm1, -48(%rbp)
	movl	$3, -40(%rbp)
	leaq	-48(%rbp), %rdx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	newkey
.LBB11_11:
	addq	$40, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end11:
	.size	luaH_setnum, .Lfunc_end11-luaH_setnum
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
	jmp	.LBB12_1
	.p2align	4, 0x90
.LBB12_3:                               #   in Loop: Header=BB12_1 Depth=1
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB12_5
.LBB12_1:                               # =>This Inner Loop Header: Depth=1
	cmpl	$4, 24(%rax)
	jne	.LBB12_3
# %bb.2:                                #   in Loop: Header=BB12_1 Depth=1
	cmpq	%rdx, 16(%rax)
	jne	.LBB12_3
# %bb.4:
	movl	$luaO_nilobject_, %ecx
	cmpq	%rcx, %rax
	jne	.LBB12_6
.LBB12_5:
	movq	%rdx, -16(%rbp)
	movl	$4, -8(%rbp)
	leaq	-16(%rbp), %rdx
	callq	newkey
.LBB12_6:
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end12:
	.size	luaH_setstr, .Lfunc_end12-luaH_setstr
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
	je	.LBB13_7
# %bb.1:
	movq	24(%r14), %rcx
	leal	-1(%rax), %edx
	shlq	$4, %rdx
	cmpl	$0, 8(%rcx,%rdx)
	je	.LBB13_2
.LBB13_7:
	movq	32(%r14), %rcx
	movl	$dummynode_, %edx
	cmpq	%rdx, %rcx
	je	.LBB13_8
# %bb.9:
	leal	1(%rax), %edx
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	movl	%eax, %r13d
	.p2align	4, 0x90
.LBB13_10:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_14 Depth 2
	movl	%edx, %ebx
	leal	-1(%rbx), %edx
	cmpl	%eax, %edx
	jae	.LBB13_12
# %bb.11:                               #   in Loop: Header=BB13_10 Depth=1
	movslq	%edx, %rax
	shlq	$4, %rax
	addq	24(%r14), %rax
	jmp	.LBB13_18
	.p2align	4, 0x90
.LBB13_12:                              #   in Loop: Header=BB13_10 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%ebx, %ebx
	je	.LBB13_14
# %bb.13:                               #   in Loop: Header=BB13_10 Depth=1
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
	jmp	.LBB13_14
	.p2align	4, 0x90
.LBB13_16:                              #   in Loop: Header=BB13_14 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_17
.LBB13_14:                              #   Parent Loop BB13_10 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB13_16
# %bb.15:                               #   in Loop: Header=BB13_14 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_16
	jp	.LBB13_16
	jmp	.LBB13_18
	.p2align	4, 0x90
.LBB13_17:                              #   in Loop: Header=BB13_10 Depth=1
	movl	$luaO_nilobject_, %eax
.LBB13_18:                              #   in Loop: Header=BB13_10 Depth=1
	cmpl	$0, 8(%rax)
	je	.LBB13_19
# %bb.23:                               #   in Loop: Header=BB13_10 Depth=1
	leal	(%rbx,%rbx), %edx
	cmpl	$2147483645, %edx       # imm = 0x7FFFFFFD
	ja	.LBB13_25
# %bb.24:                               #   in Loop: Header=BB13_10 Depth=1
	movl	56(%r14), %eax
	movl	%ebx, %r13d
	jmp	.LBB13_10
.LBB13_8:
	movl	%eax, %r13d
	jmp	.LBB13_42
.LBB13_2:
	xorl	%r13d, %r13d
	cmpl	$2, %eax
	jb	.LBB13_42
# %bb.3:                                # %.preheader
	xorl	%edx, %edx
	jmp	.LBB13_4
	.p2align	4, 0x90
.LBB13_6:                               #   in Loop: Header=BB13_4 Depth=1
	movl	%eax, %esi
	subl	%r13d, %esi
	movl	%r13d, %edx
	cmpl	$1, %esi
	jbe	.LBB13_42
.LBB13_4:                               # =>This Inner Loop Header: Depth=1
	leal	(%rdx,%rax), %r13d
	shrl	%r13d
	leal	-1(%r13), %esi
	shlq	$4, %rsi
	cmpl	$0, 8(%rcx,%rsi)
	jne	.LBB13_6
# %bb.5:                                #   in Loop: Header=BB13_4 Depth=1
	movl	%r13d, %eax
	movl	%edx, %r13d
	jmp	.LBB13_6
.LBB13_19:
	movl	%ebx, %eax
	subl	%r13d, %eax
	cmpl	$2, %eax
	jb	.LBB13_42
# %bb.20:
	leaq	-64(%rbp), %r12
	jmp	.LBB13_21
	.p2align	4, 0x90
.LBB13_22:                              #   in Loop: Header=BB13_21 Depth=1
	cltq
	shlq	$4, %rax
	addq	24(%r14), %rax
.LBB13_41:                              #   in Loop: Header=BB13_21 Depth=1
	cmpl	$0, 8(%rax)
	cmovel	%r15d, %ebx
	cmovnel	%r15d, %r13d
	movl	%ebx, %eax
	subl	%r13d, %eax
	cmpl	$1, %eax
	jbe	.LBB13_42
.LBB13_21:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_37 Depth 2
	leal	(%rbx,%r13), %r15d
	shrl	%r15d
	leal	-1(%r15), %eax
	cmpl	56(%r14), %eax
	jb	.LBB13_22
# %bb.35:                               #   in Loop: Header=BB13_21 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%r15d, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%r15d, %r15d
	je	.LBB13_37
# %bb.36:                               #   in Loop: Header=BB13_21 Depth=1
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
	jmp	.LBB13_37
	.p2align	4, 0x90
.LBB13_39:                              #   in Loop: Header=BB13_37 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_40
.LBB13_37:                              #   Parent Loop BB13_21 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB13_39
# %bb.38:                               #   in Loop: Header=BB13_37 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_39
	jp	.LBB13_39
	jmp	.LBB13_41
	.p2align	4, 0x90
.LBB13_40:                              #   in Loop: Header=BB13_21 Depth=1
	movl	$luaO_nilobject_, %eax
	jmp	.LBB13_41
.LBB13_25:
	movl	$1, %ebx
	leaq	-48(%rbp), %r15
	leaq	-64(%rbp), %r12
	jmp	.LBB13_26
	.p2align	4, 0x90
.LBB13_27:                              #   in Loop: Header=BB13_26 Depth=1
	movslq	%r13d, %rax
	shlq	$4, %rax
	addq	24(%r14), %rax
.LBB13_34:                              #   in Loop: Header=BB13_26 Depth=1
	addl	$1, %ebx
	cmpl	$0, 8(%rax)
	je	.LBB13_42
.LBB13_26:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_30 Depth 2
	leal	-1(%rbx), %r13d
	cmpl	56(%r14), %r13d
	jb	.LBB13_27
# %bb.28:                               #   in Loop: Header=BB13_26 Depth=1
	xorps	%xmm1, %xmm1
	cvtsi2sd	%ebx, %xmm1
	movsd	%xmm1, -64(%rbp)
	movq	%rcx, %rax
	testl	%ebx, %ebx
	je	.LBB13_30
# %bb.29:                               #   in Loop: Header=BB13_26 Depth=1
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
	jmp	.LBB13_30
	.p2align	4, 0x90
.LBB13_32:                              #   in Loop: Header=BB13_30 Depth=2
	movq	32(%rax), %rax
	testq	%rax, %rax
	je	.LBB13_33
.LBB13_30:                              #   Parent Loop BB13_26 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpl	$3, 24(%rax)
	jne	.LBB13_32
# %bb.31:                               #   in Loop: Header=BB13_30 Depth=2
	movsd	16(%rax), %xmm0         # xmm0 = mem[0],zero
	ucomisd	%xmm1, %xmm0
	jne	.LBB13_32
	jp	.LBB13_32
	jmp	.LBB13_34
	.p2align	4, 0x90
.LBB13_33:                              #   in Loop: Header=BB13_26 Depth=1
	movl	$luaO_nilobject_, %eax
	jmp	.LBB13_34
.LBB13_42:
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end13:
	.size	luaH_getn, .Lfunc_end13-luaH_getn
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

	.hidden	luaM_realloc_
	.hidden	luaC_link
	.hidden	luaO_rawequalObj
	.hidden	luaG_runerror
	.hidden	luaM_toobig
	.hidden	luaO_log2
	.hidden	luaC_barrierback
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
