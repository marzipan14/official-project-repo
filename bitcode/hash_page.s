	.text
	.file	"hash_page.c"
	.globl	__delpair               # -- Begin function __delpair
	.p2align	4, 0x90
	.type	__delpair,@function
__delpair:                              # @__delpair
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movl	%edx, %ebx
	movq	%rsi, %r15
	movq	32(%rsi), %r12
	movslq	%edx, %rax
	movzwl	2(%r12,%rax,2), %edx
	cmpq	$3, %rdx
	ja	.LBB0_2
# %bb.1:
	movq	%r15, %rsi
	callq	__big_delete
	jmp	.LBB0_13
.LBB0_2:
	movzwl	(%r12), %r13d
	cmpl	$1, %ebx
	jne	.LBB0_3
# %bb.4:
	movzwl	12(%rdi), %r14d
	jmp	.LBB0_5
.LBB0_3:
	movzwl	-2(%r12,%rax,2), %r14d
.LBB0_5:
	subl	%edx, %r14d
	leal	-1(%r13), %eax
	cmpl	%ebx, %eax
	je	.LBB0_12
# %bb.6:
	movzwl	4(%r12,%r13,2), %eax
	leaq	(%r12,%rax), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movzwl	%r14w, %edi
	addq	%rsi, %rdi
	subq	%rax, %rdx
	callq	memmove
	movq	-48(%rbp), %rdi         # 8-byte Reload
	leal	2(%rbx), %eax
	cmpl	%r13d, %eax
	jle	.LBB0_7
.LBB0_12:
	movzwl	(%r12), %eax
	movzwl	4(%r12,%rax,2), %eax
	addw	%r14w, %ax
	movw	%ax, (%r12,%r13,2)
	addw	2(%r12,%r13,2), %r14w
	addl	$4, %r14d
	movw	%r14w, -2(%r12,%r13,2)
	addl	$-2, %r13d
	movw	%r13w, (%r12)
	addl	$-1, 56(%rdi)
	orb	$1, 40(%r15)
	xorl	%eax, %eax
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_7:
	cltq
	jmp	.LBB0_8
	.p2align	4, 0x90
.LBB0_10:                               #   in Loop: Header=BB0_8 Depth=1
	addl	%r14d, %edx
	movslq	%ebx, %rsi
	movw	%dx, (%r12,%rsi,2)
	addl	%r14d, %ecx
.LBB0_11:                               #   in Loop: Header=BB0_8 Depth=1
	leal	1(%rbx), %edx
	movslq	%edx, %rdx
	movw	%cx, (%r12,%rdx,2)
	addq	$2, %rax
	addl	$2, %ebx
	cmpq	%r13, %rax
	jg	.LBB0_12
.LBB0_8:                                # =>This Inner Loop Header: Depth=1
	leal	3(%rbx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r12,%rcx,2), %ecx
	movzwl	(%r12,%rax,2), %edx
	testw	%cx, %cx
	jne	.LBB0_10
# %bb.9:                                #   in Loop: Header=BB0_8 Depth=1
	movslq	%ebx, %rcx
	movw	%dx, (%r12,%rcx,2)
	xorl	%ecx, %ecx
	jmp	.LBB0_11
.Lfunc_end0:
	.size	__delpair, .Lfunc_end0-__delpair
                                        # -- End function
	.globl	__split_page            # -- Begin function __split_page
	.p2align	4, 0x90
	.type	__split_page,@function
__split_page:                           # @__split_page
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$184, %rsp
	movl	%edx, %r14d
	movq	%rdi, %r15
	movzwl	12(%rdi), %r13d
	movl	%esi, -84(%rbp)         # 4-byte Spill
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB1_51
# %bb.1:
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%r15, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$-1, %ecx
	testq	%rax, %rax
	je	.LBB1_51
# %bb.2:
	movq	%rax, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	orb	$9, 40(%rax)
	orb	$9, 40(%rcx)
	movq	32(%rax), %r12
	movzwl	(%r12), %eax
	cmpw	$2, %ax
	movq	%rcx, -152(%rbp)        # 8-byte Spill
	jb	.LBB1_12
# %bb.3:
	movq	%r15, -128(%rbp)        # 8-byte Spill
	movq	32(%rcx), %rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$1, %edx
	movl	$1, %r15d
	movl	$0, -48(%rbp)           # 4-byte Folded Spill
	movl	%r13d, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%r12,%r15,2), %eax
	leaq	(%r12,%rax), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movzwl	(%r12,%r15,2), %ecx
	subq	%rax, %rcx
	movq	%rcx, -168(%rbp)        # 8-byte Spill
	movq	-120(%rbp), %r14        # 8-byte Reload
	movzwl	(%r14), %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movzwl	4(%r14,%rax,2), %ebx
	subl	%r13d, %ebx
	movzwl	%bx, %edi
	addq	%r14, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r13, %rdx
	callq	memmove
	movq	-64(%rbp), %r13         # 8-byte Reload
	leal	1(%r13), %eax
	movzwl	%ax, %eax
	movw	%bx, (%r14,%rax,2)
	movq	-168(%rbp), %rdx        # 8-byte Reload
	subl	%edx, %ebx
	movzwl	%bx, %edi
	addq	%r14, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	movq	%r13, %rdx
	leal	2(%r13), %eax
	movzwl	%ax, %ecx
	movw	%bx, (%r14,%rcx,2)
	movw	%ax, (%r14)
	leal	4(%r13,%r13), %eax
	negl	%eax
	addl	%ebx, %eax
	addl	$-6, %eax
	movw	%ax, 2(%r14,%rcx,2)
	movw	%bx, 4(%r14,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, -48(%rbp)           # 4-byte Folded Spill
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%r12,%r15,2), %r13d
	addq	$2, %r15
	movzwl	(%r12), %eax
	cmpq	%rax, %r15
	jae	.LBB1_15
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	cmpw	$3, 2(%r12,%r15,2)
	jbe	.LBB1_13
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movl	%edx, -80(%rbp)         # 4-byte Spill
	movzwl	(%r12,%r15,2), %eax
	leaq	(%r12,%rax), %rsi
	movzwl	%r13w, %r14d
	movl	%r13d, %ebx
	movq	%r14, %r13
	subq	%rax, %r13
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movl	%r13d, %edx
	callq	__call_hash
	cmpl	-84(%rbp), %eax         # 4-byte Folded Reload
	jne	.LBB1_4
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%r12,%r15,2), %eax
	movq	-72(%rbp), %rcx         # 8-byte Reload
	subw	%bx, %cx
	je	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_6 Depth=1
	movq	%rcx, %r13
	movzwl	%ax, %eax
	addl	%eax, %r13d
	movzwl	%r13w, %edi
	addq	%r12, %rdi
	leaq	(%rax,%r12), %rsi
	subl	%eax, %r14d
	movslq	%r14d, %rdx
	callq	memmove
	movzwl	(%r12,%r15,2), %eax
	addw	%r13w, %ax
	subw	2(%r12,%r15,2), %ax
	movl	-80(%rbp), %edx         # 4-byte Reload
	movslq	%edx, %rcx
	movw	%ax, (%r12,%rcx,2)
	movw	%r13w, 2(%r12,%rcx,2)
	movl	%r13d, %eax
	jmp	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
	movl	-80(%rbp), %edx         # 4-byte Reload
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	addl	$2, %edx
                                        # kill: def $ax killed $ax def $rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	jmp	.LBB1_5
.LBB1_12:
	movl	%r13d, %esi
	xorl	%ecx, %ecx
	jmp	.LBB1_16
.LBB1_13:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	32(%rcx), %rbx
	movzwl	(%rbx), %edi
	testw	%di, %di
	je	.LBB1_17
# %bb.14:
	movq	-152(%rbp), %rdx        # 8-byte Reload
	movq	32(%rdx), %rax
	movq	%rax, -160(%rbp)        # 8-byte Spill
	movzwl	-48(%rbp), %esi         # 2-byte Folded Reload
	movl	%esi, -132(%rbp)        # 4-byte Spill
	leal	-1(%rdi), %r8d
	xorl	%eax, %eax
	movq	%rax, -112(%rbp)        # 8-byte Spill
	movq	%rbx, -120(%rbp)        # 8-byte Spill
	movq	%rbx, %r13
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	-128(%rbp), %r14        # 8-byte Reload
	movq	-72(%rbp), %r12         # 8-byte Reload
	jmp	.LBB1_20
.LBB1_15:
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movl	-48(%rbp), %ecx         # 4-byte Reload
.LBB1_16:
	subl	%ecx, %eax
	movw	%ax, (%r12)
	movzwl	%ax, %ecx
	addl	%eax, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	addl	$-6, %edx
	movw	%dx, 2(%r12,%rcx,2)
	movw	%si, 4(%r12,%rcx,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	andb	$-9, 40(%rax)
	movq	-152(%rbp), %rax        # 8-byte Reload
	andb	$-9, 40(%rax)
	xorl	%ecx, %ecx
	jmp	.LBB1_51
.LBB1_18:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-128(%rbp), %r14        # 8-byte Reload
	.p2align	4, 0x90
.LBB1_19:                               #   in Loop: Header=BB1_20 Depth=1
	cmpw	%di, %r8w
	jae	.LBB1_52
.LBB1_20:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_32 Depth 2
	movzwl	4(%r13), %ecx
	addl	$-1, %ecx
	cmpw	$2, %cx
	jbe	.LBB1_23
# %bb.21:                               #   in Loop: Header=BB1_20 Depth=1
	movzwl	%r8w, %ecx
	cmpw	$0, 2(%r13,%rcx,2)
	je	.LBB1_45
# %bb.22:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-144(%rbp), %rax        # 8-byte Reload
	jmp	.LBB1_29
.LBB1_23:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movl	24(%rcx), %r8d
	leaq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	-84(%rbp), %r9d         # 4-byte Reload
	callq	__big_split
	movl	$-1, %ebx
	testl	%eax, %eax
	jne	.LBB1_49
# %bb.24:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-200(%rbp), %rdx
	testq	%rdx, %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	je	.LBB1_50
# %bb.25:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-208(%rbp), %rsi
	testq	%rsi, %rsi
	je	.LBB1_50
# %bb.26:                               #   in Loop: Header=BB1_20 Depth=1
	movq	-192(%rbp), %rax
	testq	%rax, %rax
	je	.LBB1_17
# %bb.27:                               #   in Loop: Header=BB1_20 Depth=1
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	32(%rdx), %rcx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	32(%rsi), %rcx
	movq	%rcx, -160(%rbp)        # 8-byte Spill
	movq	32(%rax), %r13
.LBB1_28:                               #   in Loop: Header=BB1_20 Depth=1
	movq	%rax, %rcx
	movq	%rax, -112(%rbp)        # 8-byte Spill
.LBB1_29:                               #   in Loop: Header=BB1_20 Depth=1
	movzwl	(%r13), %edi
	movw	$1, %r8w
	cmpw	$2, %di
	movq	%rax, -144(%rbp)        # 8-byte Spill
	jb	.LBB1_19
# %bb.30:                               #   in Loop: Header=BB1_20 Depth=1
	movzwl	4(%r13), %ecx
	cmpw	$4, %cx
	jb	.LBB1_19
# %bb.31:                               #   in Loop: Header=BB1_20 Depth=1
	movzwl	12(%r14), %eax
	movl	$1, %edx
	movw	$3, %si
	movq	%r13, -176(%rbp)        # 8-byte Spill
	movq	%r12, -72(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB1_32:                               #   Parent Loop BB1_20 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	%ax, %r12d
	movl	%ecx, %ebx
	movl	%esi, %eax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movzwl	(%r13,%rdx,2), %r15d
	leaq	(%r15,%r13), %rsi
	subq	%r15, %r12
	movzwl	%cx, %eax
	addq	%rax, %r13
	subq	%rax, %r15
	movq	%r14, %rdi
	movq	%rsi, -96(%rbp)         # 8-byte Spill
	movl	%r12d, %edx
	callq	__call_hash
	cmpl	-84(%rbp), %eax         # 4-byte Folded Reload
	movw	%bx, -168(%rbp)         # 2-byte Spill
	movq	%r13, -104(%rbp)        # 8-byte Spill
	jne	.LBB1_37
# %bb.33:                               #   in Loop: Header=BB1_32 Depth=2
	movq	-120(%rbp), %r13        # 8-byte Reload
	cmpw	$4, 4(%r13)
	jb	.LBB1_35
# %bb.34:                               #   in Loop: Header=BB1_32 Depth=2
	leaq	(%r15,%r12), %rax
	addq	$8, %rax
	movzwl	(%r13), %ebx
	movzwl	2(%r13,%rbx,2), %ecx
	cmpq	%rcx, %rax
	jbe	.LBB1_41
.LBB1_35:                               #   in Loop: Header=BB1_32 Depth=2
	movq	-128(%rbp), %rdi        # 8-byte Reload
	movq	-64(%rbp), %rsi         # 8-byte Reload
	callq	__add_ovflpage
	testq	%rax, %rax
	je	.LBB1_48
# %bb.36:                               #   in Loop: Header=BB1_32 Depth=2
	movq	%rax, %rbx
	movq	32(%rax), %r13
	movzwl	(%r13), %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movzwl	4(%r13,%rax,2), %r14d
	subl	%r12d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	movq	-64(%rbp), %r12         # 8-byte Reload
	leal	1(%r12), %eax
	movzwl	%ax, %eax
	movw	%r14w, (%r13,%rax,2)
	subl	%r15d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
	callq	memmove
	leal	2(%r12), %eax
	movzwl	%ax, %ecx
	movw	%r14w, (%r13,%rcx,2)
	movw	%ax, (%r13)
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movq	%r13, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_43
	.p2align	4, 0x90
.LBB1_37:                               #   in Loop: Header=BB1_32 Depth=2
	movq	-160(%rbp), %r13        # 8-byte Reload
	cmpw	$4, 4(%r13)
	jb	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_32 Depth=2
	leaq	(%r15,%r12), %rax
	addq	$8, %rax
	movzwl	(%r13), %ecx
	movzwl	2(%r13,%rcx,2), %ecx
	cmpq	%rcx, %rax
	jbe	.LBB1_42
.LBB1_39:                               #   in Loop: Header=BB1_32 Depth=2
	movq	%r14, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	__add_ovflpage
	testq	%rax, %rax
	je	.LBB1_48
# %bb.40:                               #   in Loop: Header=BB1_32 Depth=2
	movq	%rax, %rbx
	movq	32(%rax), %r13
	movzwl	(%r13), %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movzwl	4(%r13,%rax,2), %r14d
	subl	%r12d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	movq	-48(%rbp), %r12         # 8-byte Reload
	leal	1(%r12), %eax
	movzwl	%ax, %eax
	movw	%r14w, (%r13,%rax,2)
	subl	%r15d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
	callq	memmove
	leal	2(%r12), %eax
	movzwl	%ax, %ecx
	movw	%r14w, (%r13,%rcx,2)
	movw	%ax, (%r13)
	movq	%rbx, -48(%rbp)         # 8-byte Spill
	movq	%r13, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_43
.LBB1_41:                               #   in Loop: Header=BB1_32 Depth=2
	movzwl	4(%r13,%rbx,2), %r14d
	subl	%r12d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%rbx), %eax
	movzwl	%ax, %eax
	movw	%r14w, (%r13,%rax,2)
	subl	%r15d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
	callq	memmove
	leal	2(%rbx), %eax
	movzwl	%ax, %ecx
	movw	%r14w, (%r13,%rcx,2)
	movw	%ax, (%r13)
	movq	-64(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB1_43
.LBB1_42:                               #   in Loop: Header=BB1_32 Depth=2
	movzwl	(%r13), %ebx
	movzwl	4(%r13,%rbx,2), %r14d
	subl	%r12d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%rbx), %eax
	movzwl	%ax, %eax
	movw	%r14w, (%r13,%rax,2)
	subl	%r15d, %r14d
	movzwl	%r14w, %edi
	addq	%r13, %rdi
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%r15, %rdx
	callq	memmove
	leal	2(%rbx), %eax
	movzwl	%ax, %ecx
	movw	%r14w, (%r13,%rcx,2)
	movw	%ax, (%r13)
	movq	-48(%rbp), %rbx         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_43:                               #   in Loop: Header=BB1_32 Depth=2
	movq	-72(%rbp), %r12         # 8-byte Reload
	movq	-80(%rbp), %r8          # 8-byte Reload
	leal	(%rax,%rax), %ecx
	movl	%r14d, %edx
	subl	%ecx, %edx
	addl	$-6, %edx
	movzwl	%ax, %eax
	movw	%dx, 2(%r13,%rax,2)
	movw	%r14w, 4(%r13,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, 40(%rbx)
	movq	-176(%rbp), %r13        # 8-byte Reload
	movzwl	(%r13), %edi
	cmpw	%di, %r8w
	jae	.LBB1_18
# %bb.44:                               #   in Loop: Header=BB1_32 Depth=2
	movzwl	%r8w, %edx
	movzwl	2(%r13,%rdx,2), %ecx
	leal	2(%r8), %esi
	cmpw	$4, %cx
	movq	-128(%rbp), %r14        # 8-byte Reload
	movzwl	-168(%rbp), %eax        # 2-byte Folded Reload
	jae	.LBB1_32
	jmp	.LBB1_19
.LBB1_45:                               #   in Loop: Header=BB1_20 Depth=1
	movzwl	(%r13,%rcx,2), %esi
	subl	-132(%rbp), %edi        # 4-byte Folded Reload
	leal	-2(%rdi), %ecx
	movw	%cx, (%r13)
	movzwl	%cx, %ecx
	leal	(%rdi,%rdi), %eax
	addl	$-4, %eax
	movl	%r12d, %edx
	subl	%eax, %edx
	addl	$-6, %edx
	movw	%dx, 2(%r13,%rcx,2)
	movw	%r12w, 4(%r13,%rcx,2)
	movq	%r14, %rdi
	movq	-144(%rbp), %rdx        # 8-byte Reload
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB1_48
# %bb.46:                               #   in Loop: Header=BB1_20 Depth=1
	movq	32(%rax), %r13
	movzwl	12(%r14), %r12d
	movl	$0, -132(%rbp)          # 4-byte Folded Spill
	movq	-112(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_28
# %bb.47:                               #   in Loop: Header=BB1_20 Depth=1
	movq	%r14, %rdi
	movq	%rax, %r15
	callq	__free_ovflpage
	movq	%r15, %rax
	movq	%r15, %rcx
	movq	%r15, -112(%rbp)        # 8-byte Spill
	jmp	.LBB1_29
.LBB1_17:
	xorl	%ebx, %ebx
	jmp	.LBB1_50
.LBB1_48:
	movl	$-1, %ebx
.LBB1_49:
	movq	-56(%rbp), %rcx         # 8-byte Reload
.LBB1_50:
	movl	$42, __A_VARIABLE(%rip)
	andb	$-9, 40(%rcx)
	movq	-152(%rbp), %rax        # 8-byte Reload
	andb	$-9, 40(%rax)
	movl	%ebx, %ecx
.LBB1_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_52:
	movq	-112(%rbp), %rsi        # 8-byte Reload
	xorl	%ebx, %ebx
	testq	%rsi, %rsi
	je	.LBB1_49
# %bb.53:
	movq	%r14, %rdi
	callq	__free_ovflpage
	jmp	.LBB1_49
.Lfunc_end1:
	.size	__split_page, .Lfunc_end1-__split_page
                                        # -- End function
	.globl	__addel                 # -- Begin function __addel
	.p2align	4, 0x90
	.type	__addel,@function
__addel:                                # @__addel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rdx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %rax
	movq	%rdi, %r12
	movq	32(%rsi), %r15
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%r15), %ebx
	testw	%bx, %bx
	je	.LBB2_14
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movzwl	4(%r15), %ecx
	movzwl	%bx, %r14d
	cmpw	$4, %cx
	jae	.LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	cmpw	$2, %bx
	jne	.LBB2_1
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	cmpw	$3, %cx
	je	.LBB2_9
.LBB2_1:                                #   in Loop: Header=BB2_5 Depth=1
	cmpw	$0, (%r15,%r14,2)
	je	.LBB2_11
# %bb.2:                                #   in Loop: Header=BB2_5 Depth=1
	movzwl	-2(%r15,%r14,2), %esi
	movq	%r12, %rdi
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	cmpw	$4, (%r15,%r14,2)
	jae	.LBB2_15
.LBB2_11:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r12, %rcx
	movzwl	2(%r15,%r14,2), %r13d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	8(%rsi), %rsi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	%r14d, %r12d
	cmpq	%r13, %rsi
	jb	.LBB2_23
# %bb.12:                               #   in Loop: Header=BB2_5 Depth=1
	movzwl	-2(%r15,%r12,2), %esi
	movq	%rcx, %r12
	movq	%rcx, %rdi
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB2_13
# %bb.4:                                #   in Loop: Header=BB2_5 Depth=1
	movq	32(%rax), %r15
	jmp	.LBB2_5
.LBB2_14:
	xorl	%ebx, %ebx
.LBB2_15:
	cmpw	$4, 4(%r15)
	jb	.LBB2_17
.LBB2_16:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	leaq	(%rdx,%rcx), %rsi
	addq	$8, %rsi
	movzwl	%bx, %ecx
	movzwl	2(%r15,%rcx,2), %ecx
	cmpq	%rcx, %rsi
	jbe	.LBB2_22
.LBB2_17:
	movq	%r12, %rdi
	movq	%rax, %rsi
	callq	__add_ovflpage
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB2_29
# %bb.18:
	movq	32(%rax), %r15
	cmpw	$4, 4(%r15)
	jb	.LBB2_20
# %bb.19:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	leaq	(%rdx,%rcx), %rsi
	addq	$8, %rsi
	movzwl	(%r15), %r14d
	movzwl	2(%r15,%r14,2), %ecx
	cmpq	%rcx, %rsi
	jbe	.LBB2_24
.LBB2_20:
	movq	%r12, %rdi
	movq	%rax, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, %rbx
	callq	__big_insert
	testl	%eax, %eax
	jne	.LBB2_29
# %bb.21:
	movb	$1, %cl
	movq	%rbx, %rdi
	jmp	.LBB2_26
.LBB2_22:
	movzwl	(%r15), %r14d
	movzwl	4(%r15,%r14,2), %ebx
	subl	%edx, %ebx
	movzwl	%bx, %edi
	addq	%r15, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	movq	%rax, %r13
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%bx, (%r15,%rax,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	subl	%edx, %ebx
	movzwl	%bx, %edi
	addq	%r15, %rdi
	callq	memmove
	movq	%r13, %rdi
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%bx, (%r15,%rcx,2)
	movw	%ax, (%r15)
	xorl	%ecx, %ecx
	jmp	.LBB2_25
.LBB2_13:
	movl	$-1, %r13d
	jmp	.LBB2_29
.LBB2_23:
	leal	1(%r14), %eax
	movl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leal	2(%r14), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movzwl	4(%r15,%r12,2), %ecx
	movzwl	-2(%r15,%r12,2), %eax
	movw	%ax, -58(%rbp)          # 2-byte Spill
	subl	%edx, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movw	%cx, -2(%r15,%r12,2)
	movzwl	%cx, %edi
	addq	%r15, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	callq	memmove
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rdx
	movq	%rax, %rcx
	movq	-72(%rbp), %rax         # 8-byte Reload
	subl	%edx, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movw	%ax, (%r15,%r14,2)
	movzwl	%ax, %edi
	addq	%r15, %rdi
	movq	(%rcx), %rsi
	movq	%rcx, %r14
	callq	memmove
	movl	-76(%rbp), %eax         # 4-byte Reload
	movw	%ax, (%r15)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movzwl	-58(%rbp), %ecx         # 2-byte Folded Reload
	movw	%cx, (%r15,%rax,2)
	movw	$0, 4(%r15,%r12,2)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	addl	8(%r14), %eax
	subl	%eax, %r13d
	addl	$-4, %r13d
	addl	$2, %ebx
	movzwl	%bx, %eax
	movw	%r13w, 2(%r15,%rax,2)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movw	%cx, 4(%r15,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB2_29
.LBB2_9:
	movw	$2, %bx
	cmpw	$4, 4(%r15)
	jae	.LBB2_16
	jmp	.LBB2_17
.LBB2_24:
	movzwl	4(%r15,%r14,2), %ebx
	subl	%edx, %ebx
	movzwl	%bx, %edi
	addq	%r15, %rdi
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	(%rcx), %rsi
	movq	%rax, %r13
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%bx, (%r15,%rax,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	subl	%edx, %ebx
	movzwl	%bx, %edi
	addq	%r15, %rdi
	callq	memmove
	movq	%r13, %rdi
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%bx, (%r15,%rcx,2)
	movw	%ax, (%r15)
	movb	$1, %cl
.LBB2_25:
	leal	(%rax,%rax), %edx
	movl	%ebx, %esi
	subl	%edx, %esi
	addl	$-6, %esi
	movzwl	%ax, %eax
	movw	%si, 2(%r15,%rax,2)
	movw	%bx, 4(%r15,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_26:
	orb	$1, 40(%rdi)
	movl	56(%r12), %eax
	addl	$1, %eax
	movl	%eax, 56(%r12)
	testb	%cl, %cl
	jne	.LBB2_28
# %bb.27:
	movl	40(%r12), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	xorl	%r13d, %r13d
	cmpl	52(%r12), %eax
	jle	.LBB2_29
.LBB2_28:
	movq	%r12, %rdi
	callq	__expand_table
	movl	%eax, %r13d
.LBB2_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__addel, .Lfunc_end2-__addel
                                        # -- End function
	.globl	__add_ovflpage          # -- Begin function __add_ovflpage
	.p2align	4, 0x90
	.type	__add_ovflpage,@function
__add_ovflpage:                         # @__add_ovflpage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	32(%rsi), %r8
	cmpl	$65536, 52(%rdi)        # imm = 0x10000
	jne	.LBB3_2
# %bb.1:
	movzwl	(%r8), %eax
	movl	%eax, %ecx
	shrl	%ecx
	cmpw	$8, %ax
	movl	$4, %eax
	cmovael	%ecx, %eax
	movl	%eax, 52(%r15)
.LBB3_2:
	orb	$1, 40(%rsi)
	movl	32(%r15), %r9d
	movslq	%r9d, %r10
	movl	68(%r15,%r10,4), %eax
	leal	-1(%rax), %r11d
	movb	16(%r15), %cl
	addb	$3, %cl
	movl	12(%r15), %edx
	leal	-1(,%rdx,8), %ebx
	andl	%r11d, %ebx
	sarl	%cl, %r11d
	movl	36(%r15), %r14d
	sarl	%cl, %r14d
	xorl	%ecx, %ecx
	cmpl	%r11d, %r14d
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	jle	.LBB3_12
# %bb.3:
	xorl	%edi, %edi
.LBB3_4:
	movl	%eax, 36(%r15)
	movl	68(%r15,%r10,4), %r12d
	addl	$1, %r12d
	movl	%r12d, 68(%r15,%r10,4)
	testl	%r9d, %r9d
	je	.LBB3_6
# %bb.5:
	movl	64(%r15,%r10,4), %ecx
.LBB3_6:
	subl	%ecx, %r12d
	cmpl	$2048, %r12d            # imm = 0x800
	jl	.LBB3_9
# %bb.7:
	cmpl	$31, %r9d
	jge	.LBB3_11
# %bb.8:
	leal	1(%r10), %r9d
	movl	%r9d, 32(%r15)
	movl	68(%r15,%r10,4), %eax
	movl	%eax, 72(%r15,%r10,4)
	addl	$-1, %eax
	movl	%eax, 68(%r15,%r10,4)
	movl	$1, %r12d
.LBB3_9:
	movslq	12(%r15), %rax
	leal	-1(,%rax,8), %ecx
	cmpl	%ecx, %ebx
	jne	.LBB3_36
# %bb.10:
	cmpl	$31, %r11d
	jl	.LBB3_47
.LBB3_11:
	movl	$.L.str, %esi
	movl	$49, %edx
	movl	$2, %edi
	callq	write
	jmp	.LBB3_56
.LBB3_12:
	movslq	%r14d, %r13
	movslq	%r11d, %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	shll	$3, %r14d
	movq	%r13, %r12
	movl	%r9d, -60(%rbp)         # 4-byte Spill
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movq	%rbx, -80(%rbp)         # 8-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	jmp	.LBB3_14
	.p2align	4, 0x90
.LBB3_13:                               #   in Loop: Header=BB3_14 Depth=1
	addl	$8, %r14d
	cmpq	-56(%rbp), %r12         # 8-byte Folded Reload
	leaq	1(%r12), %r12
	jge	.LBB3_52
.LBB3_14:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_25 Depth 2
	movq	336(%r15,%r12,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB3_19
# %bb.15:                               #   in Loop: Header=BB3_14 Depth=1
	movslq	592(%r15), %rax
	cmpq	%rax, %r12
	jge	.LBB3_55
# %bb.16:                               #   in Loop: Header=BB3_14 Depth=1
	movq	%r10, %r13
	movq	%r8, %rbx
	movslq	12(%r15), %rdi
	callq	malloc
	movq	%rax, 336(%r15,%r12,8)
	testq	%rax, %rax
	je	.LBB3_55
# %bb.17:                               #   in Loop: Header=BB3_14 Depth=1
	movzwl	196(%r15,%r12,2), %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	callq	__get_page
	movq	336(%r15,%r12,8), %rdi
	testl	%eax, %eax
	jne	.LBB3_54
# %bb.18:                               #   in Loop: Header=BB3_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	%rbx, %r8
	movq	%r13, %r10
	movl	-60(%rbp), %r9d         # 4-byte Reload
	movl	-44(%rbp), %r11d        # 4-byte Reload
	movq	-80(%rbp), %rbx         # 8-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	je	.LBB3_56
.LBB3_19:                               #   in Loop: Header=BB3_14 Depth=1
	movl	%ebx, %ecx
	cmpq	-56(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB3_21
# %bb.20:                               #   in Loop: Header=BB3_14 Depth=1
	movl	12(%r15), %eax
	leal	-1(,%rax,8), %ecx
.LBB3_21:                               #   in Loop: Header=BB3_14 Depth=1
	xorl	%eax, %eax
	movl	$0, %edx
	cmpq	%r13, %r12
	jne	.LBB3_23
# %bb.22:                               #   in Loop: Header=BB3_14 Depth=1
	movl	12(%r15), %eax
	leal	-1(,%rax,8), %eax
	andl	36(%r15), %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$5, %edx
	andl	$-32, %eax
.LBB3_23:                               #   in Loop: Header=BB3_14 Depth=1
	cmpl	%ecx, %eax
	jg	.LBB3_13
# %bb.24:                               #   in Loop: Header=BB3_14 Depth=1
	movslq	%edx, %rdx
	leaq	(%rdi,%rdx,4), %rdx
	.p2align	4, 0x90
.LBB3_25:                               #   Parent Loop BB3_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	cmpl	$-1, %esi
	jne	.LBB3_27
# %bb.26:                               #   in Loop: Header=BB3_25 Depth=2
	addl	$32, %eax
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jle	.LBB3_25
	jmp	.LBB3_13
.LBB3_27:
	xorl	%ebx, %ebx
	testb	$1, %sil
	je	.LBB3_31
# %bb.28:                               # %.preheader1
	xorl	%ebx, %ebx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	movl	%ebx, %edx
	leal	1(%rdx), %ebx
	cmpl	$30, %edx
	ja	.LBB3_31
# %bb.30:                               #   in Loop: Header=BB3_29 Depth=1
	addl	%ecx, %ecx
	movl	%ecx, %edx
	andl	%esi, %edx
	jne	.LBB3_29
.LBB3_31:
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rbx,%rax), %ecx
	movl	$1, %edx
	shll	%cl, %edx
	leal	(%rbx,%rax), %esi
	addl	$31, %esi
	testl	%ecx, %ecx
	cmovnsl	%ecx, %esi
	sarl	$5, %esi
	movslq	%esi, %rcx
	orl	%edx, (%rdi,%rcx,4)
	imull	12(%r15), %r14d
	addl	%ebx, %r14d
	leal	(%rax,%r14), %ecx
	addl	$1, %ecx
	cmpl	36(%r15), %ecx
	jl	.LBB3_33
# %bb.32:
	leal	(%r14,%rax), %edx
	movl	%edx, 36(%r15)
.LBB3_33:
	xorl	%r12d, %r12d
	testl	%r9d, %r9d
	jle	.LBB3_40
	.p2align	4, 0x90
.LBB3_34:                               # =>This Inner Loop Header: Depth=1
	cmpl	68(%r15,%r12,4), %ecx
	jle	.LBB3_38
# %bb.35:                               #   in Loop: Header=BB3_34 Depth=1
	addq	$1, %r12
	cmpq	%r10, %r12
	jl	.LBB3_34
	jmp	.LBB3_39
.LBB3_36:
	leal	1(%rbx), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	addl	$32, %ebx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %ebx
	sarl	$5, %ebx
	movslq	%ebx, %rcx
	orl	%eax, (%rdi,%rcx,4)
.LBB3_37:
	shll	$11, %r9d
	movl	%r9d, %ecx
	jmp	.LBB3_42
.LBB3_38:
	testl	%r12d, %r12d
	je	.LBB3_51
.LBB3_39:
	movslq	%r12d, %rcx
	subl	64(%r15,%rcx,4), %r14d
	leal	(%r14,%rax), %ecx
	addl	$1, %ecx
.LBB3_40:
	cmpl	$2046, %ecx             # imm = 0x7FE
	jg	.LBB3_56
.LBB3_41:
	shll	$11, %r12d
.LBB3_42:
	addl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB3_57
# %bb.43:
	movq	%r8, %r14
	movzwl	%r12w, %esi
	movq	%r15, %rdi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movl	$1, %ecx
	callq	__get_buf
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB3_57
# %bb.44:
	orb	$1, 40(%rax)
	movzwl	(%r14), %ecx
	movzwl	4(%r14,%rcx,2), %edx
	movw	%dx, 8(%r14,%rcx,2)
	movzwl	2(%r14,%rcx,2), %edx
	addl	$-4, %edx
	movw	%dx, 6(%r14,%rcx,2)
	movw	%r12w, 2(%r14,%rcx,2)
	movw	$0, 4(%r14,%rcx,2)
	addq	$2, %rcx
	movw	%cx, (%r14)
	jmp	.LBB3_58
.LBB3_47:
	movl	%r11d, -44(%rbp)        # 4-byte Spill
	movl	%r9d, %r13d
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rax, %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB3_55
# %bb.48:
	movq	%rax, %rbx
	movl	%r13d, %r14d
	shll	$11, %r14d
	addl	%r12d, %r14d
	addl	$1, 592(%r15)
	movl	$4, %edx
	movq	%rax, %rdi
	xorl	%esi, %esi
	callq	memset
	movq	%rbx, %rdi
	addq	$4, %rdi
	movslq	12(%r15), %rdx
	addq	$-4, %rdx
	movl	$255, %esi
	callq	memset
	movl	$-1, (%rbx)
	movslq	-44(%rbp), %rax         # 4-byte Folded Reload
	movw	%r14w, 198(%r15,%rax,2)
	movq	%rbx, 344(%r15,%rax,8)
	movl	%r13d, %r9d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rax
	addl	$1, 68(%r15,%rax,4)
	cmpl	$2047, %r12d            # imm = 0x7FF
	jl	.LBB3_53
# %bb.49:
	cmpl	$31, %r9d
	jge	.LBB3_11
# %bb.50:
	leal	1(%rax), %r9d
	movl	%r9d, 32(%r15)
	movl	68(%r15,%rax,4), %ecx
	movslq	%r9d, %rdx
	movl	%ecx, 68(%r15,%rdx,4)
	addl	$-1, %ecx
	movl	%ecx, 68(%r15,%rax,4)
	xorl	%r12d, %r12d
	movq	-56(%rbp), %r8          # 8-byte Reload
	jmp	.LBB3_37
.LBB3_51:
	xorl	%r12d, %r12d
	cmpl	$2046, %ecx             # imm = 0x7FE
	jle	.LBB3_41
	jmp	.LBB3_56
.LBB3_52:
	movl	68(%r15,%r10,4), %eax
	xorl	%ecx, %ecx
	jmp	.LBB3_4
.LBB3_53:
	addl	$1, %r12d
	movq	-56(%rbp), %r8          # 8-byte Reload
	jmp	.LBB3_37
.LBB3_54:
	callq	free
.LBB3_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_56:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_57:
	xorl	%eax, %eax
.LBB3_58:
	movl	$42, __A_VARIABLE(%rip)
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__add_ovflpage, .Lfunc_end3-__add_ovflpage
                                        # -- End function
	.globl	__get_page              # -- Begin function __get_page
	.p2align	4, 0x90
	.type	__get_page,@function
__get_page:                             # @__get_page
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%edx, %ebx
	movq	%rsi, %r15
	movslq	12(%rdi), %rdx
	testl	%r8d, %r8d
	je	.LBB4_5
# %bb.1:
	movq	%rdi, %r14
	movl	284(%rdi), %r12d
	cmpl	$-1, %r12d
	je	.LBB4_5
# %bb.2:
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	testl	%ecx, %ecx
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	je	.LBB4_6
# %bb.3:
	movl	60(%r14), %r13d
	addl	%ebx, %r13d
	testl	%ebx, %ebx
	je	.LBB4_8
# %bb.4:
	addl	$1, %ebx
	movl	%ebx, %edi
	callq	__log2
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r14,%rax,4), %eax
	jmp	.LBB4_11
.LBB4_5:
	movw	$0, (%r15)
	movl	%edx, %eax
	addl	$-6, %eax
	movw	%ax, 2(%r15)
	movw	%dx, 4(%r15)
.LBB4_31:
	xorl	%r13d, %r13d
	jmp	.LBB4_32
.LBB4_6:
	movl	%ebx, %ecx
	shrl	$11, %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movl	%edi, %r13d
	movl	60(%r14), %ecx
	addl	$-1, %r13d
	je	.LBB4_9
# %bb.7:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	__log2
	movl	-44(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r14,%rax,4), %eax
	jmp	.LBB4_10
.LBB4_8:
	xorl	%eax, %eax
	jmp	.LBB4_11
.LBB4_9:
	xorl	%eax, %eax
.LBB4_10:
	andl	$2047, %ebx             # imm = 0x7FF
	addl	%ebx, %r13d
	addl	%ecx, %r13d
.LBB4_11:
	addl	%eax, %r13d
	movslq	%r13d, %rsi
	movb	16(%r14), %cl
	shlq	%cl, %rsi
	movl	%r12d, %edi
	xorl	%edx, %edx
	callq	lseek
	movl	$-1, %r13d
	cmpq	$-1, %rax
	je	.LBB4_32
# %bb.12:
	movl	%r12d, %edi
	movq	%r15, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	read
	cmpl	$-1, %eax
	je	.LBB4_32
# %bb.13:
	testl	%eax, %eax
	je	.LBB4_16
# %bb.14:
	cmpl	%eax, %ebx
	je	.LBB4_17
# %bb.15:
	callq	__errno
	movl	$79, (%rax)
	jmp	.LBB4_32
.LBB4_16:
	movw	$0, (%r15)
.LBB4_17:
	movl	-48(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB4_19
# %bb.18:
	cmpw	$0, (%r15)
	je	.LBB4_30
.LBB4_19:
	xorl	%r13d, %r13d
	cmpl	$1234, 8(%r14)          # imm = 0x4D2
	je	.LBB4_32
# %bb.20:
	testl	%eax, %eax
	je	.LBB4_24
# %bb.21:
	movl	12(%r14), %eax
	cmpl	$4, %eax
	jl	.LBB4_32
# %bb.22:
	shrq	$2, %rax
	xorl	%r13d, %r13d
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_23:                               # =>This Inner Loop Header: Depth=1
	movl	(%r15,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, (%r15,%rcx,4)
	addq	$1, %rcx
	cmpq	%rax, %rcx
	jb	.LBB4_23
	jmp	.LBB4_32
.LBB4_24:
	movzwl	(%r15), %eax
	rolw	$8, %ax
	movw	%ax, (%r15)
	movzwl	%ax, %esi
	leal	1(%rsi), %edx
	addl	$2, %eax
	andl	$3, %eax
	movl	$1, %ecx
	cmpl	$3, %edx
	jb	.LBB4_27
# %bb.25:
	movq	%rax, %rdx
	subq	%rsi, %rdx
	addq	$-2, %rdx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB4_26:                               # =>This Inner Loop Header: Depth=1
	rolw	$8, (%r15,%rcx,2)
	rolw	$8, 2(%r15,%rcx,2)
	rolw	$8, 4(%r15,%rcx,2)
	rolw	$8, 6(%r15,%rcx,2)
	leaq	(%rdx,%rcx), %rsi
	addq	$4, %rsi
	addq	$4, %rcx
	cmpq	$1, %rsi
	jne	.LBB4_26
.LBB4_27:
	testw	%ax, %ax
	je	.LBB4_32
# %bb.28:                               # %.preheader
	leaq	(%r15,%rcx,2), %rcx
	xorl	%r13d, %r13d
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB4_29:                               # =>This Inner Loop Header: Depth=1
	rolw	$8, (%rcx,%rdx,2)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB4_29
.LBB4_32:
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
.LBB4_30:
	movw	$0, (%r15)
	movl	12(%r14), %eax
	movl	%eax, %ecx
	addl	$-6, %ecx
	movw	%cx, 2(%r15)
	movw	%ax, 4(%r15)
	jmp	.LBB4_31
.Lfunc_end4:
	.size	__get_page, .Lfunc_end4-__get_page
                                        # -- End function
	.globl	__put_page              # -- Begin function __put_page
	.p2align	4, 0x90
	.type	__put_page,@function
__put_page:                             # @__put_page
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r8d, %r14d
	movl	%edx, %r12d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movslq	12(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	284(%rdi), %r13d
	cmpl	$-1, %r13d
	jne	.LBB5_4
# %bb.1:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	leaq	-72(%rbp), %r13
	movq	%r13, %rdi
	callq	sigfillset
	leaq	-64(%rbp), %rdx
	xorl	%edi, %edi
	movq	%r13, %rsi
	callq	sigprocmask
	movl	$open_temp.namestr, %edi
	callq	mkstemp
	movl	%eax, 284(%r15)
	cmpl	$-1, %eax
	je	.LBB5_3
# %bb.2:
	movl	$open_temp.namestr, %edi
	callq	unlink
.LBB5_3:
	leaq	-64(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	sigprocmask
	movl	284(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r13d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB5_27
.LBB5_4:
	cmpl	$1234, 8(%r15)          # imm = 0x4D2
	je	.LBB5_15
# %bb.5:
	testl	%r14d, %r14d
	je	.LBB5_9
# %bb.6:
	movl	12(%r15), %eax
	cmpl	$4, %eax
	jl	.LBB5_15
# %bb.7:
	shrq	$2, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rsi,4), %edx
	bswapl	%edx
	movl	%edx, (%rbx,%rsi,4)
	addq	$1, %rsi
	cmpq	%rax, %rsi
	jb	.LBB5_8
	jmp	.LBB5_15
.LBB5_9:
	movzwl	(%rbx), %edx
	movl	%edx, %eax
	rolw	$8, %ax
	movw	%ax, (%rbx)
	leal	1(%rdx), %esi
	leal	2(%rdx), %eax
	andl	$3, %eax
	movl	$1, %edi
	cmpl	$3, %esi
	jb	.LBB5_12
# %bb.10:
	movq	%rax, %rsi
	subq	%rdx, %rsi
	addq	$-2, %rsi
	movl	$1, %edi
	.p2align	4, 0x90
.LBB5_11:                               # =>This Inner Loop Header: Depth=1
	rolw	$8, (%rbx,%rdi,2)
	rolw	$8, 2(%rbx,%rdi,2)
	rolw	$8, 4(%rbx,%rdi,2)
	rolw	$8, 6(%rbx,%rdi,2)
	leaq	(%rsi,%rdi), %rdx
	addq	$4, %rdx
	addq	$4, %rdi
	cmpq	$1, %rdx
	jne	.LBB5_11
.LBB5_12:
	testw	%ax, %ax
	je	.LBB5_15
# %bb.13:                               # %.preheader
	leaq	(%rbx,%rdi,2), %rsi
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB5_14:                               # =>This Inner Loop Header: Depth=1
	rolw	$8, (%rsi,%rdx,2)
	addq	$1, %rdx
	cmpq	%rdx, %rax
	jne	.LBB5_14
.LBB5_15:
	testl	%ecx, %ecx
	je	.LBB5_19
# %bb.16:
	movl	60(%r15), %r14d
	addl	%r12d, %r14d
	testl	%r12d, %r12d
	je	.LBB5_17
# %bb.18:
	addl	$1, %r12d
	movl	%r12d, %edi
	callq	__log2
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r15,%rax,4), %eax
	jmp	.LBB5_23
.LBB5_19:
	movl	%r12d, %ecx
	shrl	$11, %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movl	%edi, %r14d
	movl	60(%r15), %ecx
	addl	$-1, %r14d
	je	.LBB5_20
# %bb.21:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	__log2
	movl	-44(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r15,%rax,4), %eax
	jmp	.LBB5_22
.LBB5_17:
	xorl	%eax, %eax
	jmp	.LBB5_23
.LBB5_20:
	xorl	%eax, %eax
.LBB5_22:
	andl	$2047, %r12d            # imm = 0x7FF
	addl	%r12d, %r14d
	addl	%ecx, %r14d
.LBB5_23:
	addl	%eax, %r14d
	movslq	%r14d, %rsi
	movb	16(%r15), %cl
	shlq	%cl, %rsi
	movl	%r13d, %edi
	xorl	%edx, %edx
	callq	lseek
	movl	$-1, %r14d
	cmpq	$-1, %rax
	je	.LBB5_28
# %bb.24:
	movl	%r13d, %edi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	write
	cmpl	$-1, %eax
	je	.LBB5_28
# %bb.25:
	xorl	%r14d, %r14d
	cmpl	%eax, %ebx
	je	.LBB5_28
# %bb.26:
	callq	__errno
	movl	$79, (%rax)
.LBB5_27:
	movl	$-1, %r14d
.LBB5_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	__put_page, .Lfunc_end5-__put_page
                                        # -- End function
	.globl	__ibitmap               # -- Begin function __ibitmap
	.p2align	4, 0x90
	.type	__ibitmap,@function
__ibitmap:                              # @__ibitmap
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
	movl	%edx, %r13d
	movl	%esi, %r15d
	movq	%rdi, %r12
	movslq	12(%rdi), %rdi
	callq	malloc
	testq	%rax, %rax
	je	.LBB6_1
# %bb.2:
	movq	%rax, %rbx
	addl	$1, 592(%r12)
	leal	-1(%r13), %eax
	sarl	$5, %eax
	movl	%r14d, -48(%rbp)        # 4-byte Spill
	movslq	%eax, %r14
	movl	%r15d, -44(%rbp)        # 4-byte Spill
	leaq	4(,%r14,4), %r15
	movq	%rbx, %rdi
	xorl	%esi, %esi
	movq	%r15, %rdx
	callq	memset
	leaq	(%rbx,%r14,4), %rdi
	addq	$4, %rdi
	movslq	12(%r12), %rdx
	subq	%r15, %rdx
	movl	$255, %esi
	callq	memset
	movl	$-1, %eax
	movl	%r13d, %ecx
	shll	%cl, %eax
	movl	%eax, (%rbx,%r14,4)
	orb	$1, (%rbx)
	movslq	-48(%rbp), %rax         # 4-byte Folded Reload
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movw	%cx, 196(%r12,%rax,2)
	movq	%rbx, 336(%r12,%rax,8)
	xorl	%eax, %eax
	jmp	.LBB6_3
.LBB6_1:
	movl	$1, %eax
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__ibitmap, .Lfunc_end6-__ibitmap
                                        # -- End function
	.globl	__free_ovflpage         # -- Begin function __free_ovflpage
	.p2align	4, 0x90
	.type	__free_ovflpage,@function
__free_ovflpage:                        # @__free_ovflpage
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	24(%rsi), %eax
	movl	%eax, %ecx
	shrl	$11, %ecx
	andl	$31, %ecx
	je	.LBB7_1
# %bb.2:
	movslq	%ecx, %rcx
	movl	64(%r15,%rcx,4), %ecx
	jmp	.LBB7_3
.LBB7_1:
	xorl	%ecx, %ecx
.LBB7_3:
	andl	$2047, %eax             # imm = 0x7FF
	movl	%ecx, %esi
	addl	%eax, %esi
	leal	(%rcx,%rax), %edx
	addl	$-1, %edx
	cmpl	36(%r15), %esi
	jg	.LBB7_5
# %bb.4:
	movl	%edx, 36(%r15)
.LBB7_5:
	movb	16(%r15), %cl
	addb	$3, %cl
	movslq	12(%r15), %rax
	leal	-1(,%rax,8), %ebx
	andl	%edx, %ebx
	sarl	%cl, %edx
	movslq	%edx, %r12
	movq	336(%r15,%r12,8), %rdi
	testq	%rdi, %rdi
	jne	.LBB7_12
# %bb.6:
	cmpl	%edx, 592(%r15)
	jle	.LBB7_10
# %bb.7:
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 336(%r15,%r12,8)
	testq	%rax, %rax
	je	.LBB7_10
# %bb.8:
	movzwl	196(%r15,%r12,2), %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	callq	__get_page
	movq	336(%r15,%r12,8), %rdi
	testl	%eax, %eax
	je	.LBB7_11
# %bb.9:
	callq	free
.LBB7_10:
	xorl	%edi, %edi
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_12:
	movl	$-2, %eax
	movl	%ebx, %ecx
	roll	%cl, %eax
	leal	31(%rbx), %ecx
	testl	%ebx, %ebx
	cmovnsl	%ebx, %ecx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	andl	%eax, (%rdi,%rcx,4)
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	__reclaim_buf
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	__free_ovflpage, .Lfunc_end7-__free_ovflpage
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"HASH: Out of overflow pages.  Increase page size\n"
	.size	.L.str, 50

	.type	open_temp.namestr,@object # @open_temp.namestr
	.data
open_temp.namestr:
	.asciz	"_hashXXXXXX"
	.size	open_temp.namestr, 12

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
