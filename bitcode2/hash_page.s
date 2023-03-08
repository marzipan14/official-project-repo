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
	movzwl	(%r12), %r13d
	movslq	%edx, %rax
	movzwl	2(%r12,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$3, %rdx
	ja	.LBB0_2
# %bb.1:
	movq	%r15, %rsi
	callq	__big_delete
	jmp	.LBB0_15
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %ebx
	jne	.LBB0_3
# %bb.4:
	movzwl	12(%rdi), %r14d
	jmp	.LBB0_5
.LBB0_3:
	movzwl	-2(%r12,%rax,2), %r14d
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	subl	%edx, %r14d
	leal	-1(%r13), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %eax
	jne	.LBB0_7
# %bb.6:
	movq	%r13, %rax
	jmp	.LBB0_14
.LBB0_7:
	movzwl	4(%r12,%r13,2), %eax
	leaq	(%r12,%rax), %rsi
	movq	%rdi, -48(%rbp)         # 8-byte Spill
	movzwl	%r14w, %edi
	addq	%rsi, %rdi
	subq	%rax, %rdx
	callq	memmove
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	leal	2(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r13d, %eax
	jle	.LBB0_8
.LBB0_13:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r12), %eax
.LBB0_14:
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
.LBB0_15:
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
.LBB0_8:
	cltq
	jmp	.LBB0_9
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_9 Depth=1
	addl	%r14d, %edx
	movslq	%ebx, %rsi
	movw	%dx, (%r12,%rsi,2)
	addl	%r14d, %ecx
.LBB0_12:                               #   in Loop: Header=BB0_9 Depth=1
	leal	1(%rbx), %edx
	movslq	%edx, %rdx
	movw	%cx, (%r12,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rax
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %ebx
	cmpq	%r13, %rax
	jg	.LBB0_13
.LBB0_9:                                # =>This Inner Loop Header: Depth=1
	leal	3(%rbx), %ecx
	movslq	%ecx, %rcx
	movzwl	(%r12,%rcx,2), %ecx
	movzwl	(%r12,%rax,2), %edx
	movl	$42, __A_VARIABLE(%rip)
	testw	%cx, %cx
	jne	.LBB0_11
# %bb.10:                               #   in Loop: Header=BB0_9 Depth=1
	movslq	%ebx, %rcx
	movw	%dx, (%r12,%rcx,2)
	xorl	%ecx, %ecx
	jmp	.LBB0_12
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
	movq	%rdi, %rbx
	movzwl	12(%rdi), %r15d
	movl	%esi, -80(%rbp)         # 4-byte Spill
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, -104(%rbp)         # 4-byte Folded Spill
	testq	%rax, %rax
	je	.LBB1_55
# %bb.1:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rbx, %rdi
	movl	%r14d, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_55
# %bb.2:
	movq	%rax, %rcx
	movq	-48(%rbp), %rax         # 8-byte Reload
	orb	$9, 40(%rax)
	orb	$9, 40(%rcx)
	movq	32(%rax), %r12
	movq	%rcx, -144(%rbp)        # 8-byte Spill
	movq	32(%rcx), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r12), %eax
	movl	$0, -104(%rbp)          # 4-byte Folded Spill
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %ax
	jb	.LBB1_12
# %bb.3:
	movq	%rbx, -176(%rbp)        # 8-byte Spill
	movl	$1, -112(%rbp)          # 4-byte Folded Spill
	movl	$1, %r14d
	movl	$0, -56(%rbp)           # 4-byte Folded Spill
	movl	%r15d, %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_6
	.p2align	4, 0x90
.LBB1_4:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%r12,%r14,2), %eax
	leaq	(%r12,%rax), %rcx
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movzwl	(%r12,%r14,2), %ecx
	subq	%rax, %rcx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	movq	-72(%rbp), %r13         # 8-byte Reload
	movzwl	(%r13), %eax
	movq	%rax, -168(%rbp)        # 8-byte Spill
	movzwl	4(%r13,%rax,2), %r15d
	subl	%ebx, %r15d
	movzwl	%r15w, %edi
	addq	%r13, %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memmove
	movq	-168(%rbp), %rbx        # 8-byte Reload
	leal	1(%rbx), %eax
	movzwl	%ax, %eax
	movw	%r15w, (%r13,%rax,2)
	movq	-88(%rbp), %rdx         # 8-byte Reload
	subl	%edx, %r15d
	movzwl	%r15w, %edi
	addq	%r13, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	movq	%rbx, %rdx
	leal	2(%rbx), %eax
	movzwl	%ax, %ecx
	movw	%r15w, (%r13,%rcx,2)
	movw	%ax, (%r13)
	leal	(%rbx,%rbx), %eax
	addl	$4, %eax
	negl	%eax
	addl	%r15d, %eax
	addl	$-6, %eax
	movw	%ax, 2(%r13,%rcx,2)
	movw	%r15w, 4(%r13,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, -56(%rbp)           # 4-byte Folded Spill
.LBB1_5:                                #   in Loop: Header=BB1_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	2(%r12,%r14,2), %r15d
	addq	$2, %r14
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r14
	jae	.LBB1_46
.LBB1_6:                                # =>This Inner Loop Header: Depth=1
	cmpw	$3, 2(%r12,%r14,2)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB1_13
# %bb.7:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	(%r12,%r14,2), %eax
	leaq	(%r12,%rax), %rsi
	movzwl	%r15w, %r13d
	movq	%r13, %rbx
	subq	%rax, %rbx
	movq	-176(%rbp), %rdi        # 8-byte Reload
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movl	%ebx, %edx
	callq	__call_hash
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-80(%rbp), %eax         # 4-byte Folded Reload
	jne	.LBB1_4
# %bb.8:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	2(%r12,%r14,2), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rbx        # 8-byte Reload
	subw	%r15w, %bx
	je	.LBB1_10
# %bb.9:                                #   in Loop: Header=BB1_6 Depth=1
	movzwl	%ax, %eax
	addl	%eax, %ebx
	movzwl	%bx, %edi
	addq	%r12, %rdi
	leaq	(%rax,%r12), %rsi
	subl	%eax, %r13d
	movslq	%r13d, %rdx
	callq	memmove
	movzwl	(%r12,%r14,2), %eax
	addw	%bx, %ax
	subw	2(%r12,%r14,2), %ax
	movl	-112(%rbp), %edx        # 4-byte Reload
	movslq	%edx, %rcx
	movw	%ax, (%r12,%rcx,2)
	movw	%bx, 2(%r12,%rcx,2)
	movl	%ebx, %eax
	jmp	.LBB1_11
.LBB1_10:                               #   in Loop: Header=BB1_6 Depth=1
	movl	-112(%rbp), %edx        # 4-byte Reload
.LBB1_11:                               #   in Loop: Header=BB1_6 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addl	$2, %edx
	movl	%edx, -112(%rbp)        # 4-byte Spill
                                        # kill: def $ax killed $ax def $rax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	jmp	.LBB1_5
.LBB1_12:
	movl	%r15d, %esi
	xorl	%ecx, %ecx
	jmp	.LBB1_47
.LBB1_13:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	32(%rax), %r15
	movq	-144(%rbp), %rcx        # 8-byte Reload
	movq	32(%rcx), %rdx
	movq	%rdx, -160(%rbp)        # 8-byte Spill
	movzwl	(%r15), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB1_51
# %bb.14:
	movzwl	-56(%rbp), %edx         # 2-byte Folded Reload
	movl	%edx, -76(%rbp)         # 4-byte Spill
	addl	$-1, %r13d
	xorl	%edx, %edx
	movq	%rdx, -136(%rbp)        # 8-byte Spill
	movq	%r15, -152(%rbp)        # 8-byte Spill
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	-176(%rbp), %r14        # 8-byte Reload
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	(%r15), %r13w
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB1_49
.LBB1_16:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB1_35 Depth 2
	movzwl	4(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %ax
	ja	.LBB1_23
# %bb.17:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testw	%ax, %ax
	je	.LBB1_23
# %bb.18:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-128(%rbp), %rcx        # 8-byte Reload
	movl	24(%rcx), %r8d
	leaq	-208(%rbp), %rax
	movq	%rax, (%rsp)
	movq	%r14, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movl	-80(%rbp), %r9d         # 4-byte Reload
	callq	__big_split
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ecx
	testl	%eax, %eax
	jne	.LBB1_56
# %bb.19:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-200(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_56
# %bb.20:                               #   in Loop: Header=BB1_16 Depth=1
	movq	32(%rdi), %rdx
	movq	-208(%rbp), %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	movq	-48(%rbp), %rax         # 8-byte Reload
	je	.LBB1_53
# %bb.21:                               #   in Loop: Header=BB1_16 Depth=1
	movq	32(%rbx), %rsi
	movq	-192(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_52
# %bb.22:                               #   in Loop: Header=BB1_16 Depth=1
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movq	%rsi, -160(%rbp)        # 8-byte Spill
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	movq	32(%rcx), %r15
	movq	%rcx, %rax
	jmp	.LBB1_30
	.p2align	4, 0x90
.LBB1_23:                               #   in Loop: Header=BB1_16 Depth=1
	movzwl	%r13w, %eax
	cmpw	$0, 2(%r15,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB1_25
# %bb.24:                               #   in Loop: Header=BB1_16 Depth=1
	movq	-128(%rbp), %rax        # 8-byte Reload
	jmp	.LBB1_31
.LBB1_25:                               #   in Loop: Header=BB1_16 Depth=1
	movzwl	(%r15,%rax,2), %esi
	movzwl	(%r15), %eax
	subl	-76(%rbp), %eax         # 4-byte Folded Reload
	leal	-2(%rax), %ecx
	movw	%cx, (%r15)
	movzwl	%cx, %ecx
	addl	%eax, %eax
	addl	$-4, %eax
	movq	-120(%rbp), %rdi        # 8-byte Reload
	movl	%edi, %edx
	subl	%eax, %edx
	addl	$-6, %edx
	movw	%dx, 2(%r15,%rcx,2)
	movw	%di, 4(%r15,%rcx,2)
	movq	%r14, %rdi
	movq	-128(%rbp), %rdx        # 8-byte Reload
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_48
# %bb.26:                               #   in Loop: Header=BB1_16 Depth=1
	movq	%rax, %rbx
	movq	32(%rax), %r15
	movzwl	12(%r14), %eax
	movq	%rax, -120(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_28
# %bb.27:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
	movq	%r14, %rdi
	callq	__free_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_29
.LBB1_28:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$0, -76(%rbp)           # 4-byte Folded Spill
.LBB1_29:                               #   in Loop: Header=BB1_16 Depth=1
	movq	%rbx, %rax
.LBB1_30:                               #   in Loop: Header=BB1_16 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	movq	%rax, -136(%rbp)        # 8-byte Spill
.LBB1_31:                               #   in Loop: Header=BB1_16 Depth=1
	movl	12(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movw	$1, %r13w
	movq	%rax, -128(%rbp)        # 8-byte Spill
	jb	.LBB1_15
# %bb.32:                               #   in Loop: Header=BB1_16 Depth=1
	movw	$1, %r13w
	movq	%r15, -104(%rbp)        # 8-byte Spill
	jmp	.LBB1_35
.LBB1_33:                               #   in Loop: Header=BB1_35 Depth=2
	movzwl	(%r15), %r14d
	movzwl	4(%r15,%r14,2), %r13d
	subl	%r12d, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%r15,%rax,2)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%r15,%rcx,2)
	movw	%ax, (%r15)
	movq	-56(%rbp), %r14         # 8-byte Reload
	.p2align	4, 0x90
.LBB1_34:                               #   in Loop: Header=BB1_35 Depth=2
	leal	(%rax,%rax), %ecx
	movl	%r13d, %edx
	subl	%ecx, %edx
	addl	$-6, %edx
	movzwl	%ax, %eax
	movw	%dx, 2(%r15,%rax,2)
	movw	%r13w, 4(%r15,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	orb	$1, 40(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	-168(%rbp), %r13d       # 4-byte Reload
	addl	$2, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %r15        # 8-byte Reload
	cmpw	(%r15), %r13w
	movl	$42, __A_VARIABLE(%rip)
	movq	-176(%rbp), %r14        # 8-byte Reload
	movq	-112(%rbp), %rcx        # 8-byte Reload
	jae	.LBB1_15
.LBB1_35:                               #   Parent Loop BB1_16 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzwl	%r13w, %eax
	cmpw	$4, 2(%r15,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_15
# %bb.36:                               #   in Loop: Header=BB1_35 Depth=2
	movzwl	(%r15,%rax,2), %edx
	leaq	(%r15,%rdx), %rsi
	movzwl	%cx, %r12d
	subq	%rdx, %r12
	movzwl	2(%r15,%rax,2), %ebx
	addq	%rbx, %r15
	subq	%rbx, %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movl	%r12d, %edx
	callq	__call_hash
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-80(%rbp), %eax         # 4-byte Folded Reload
	movq	%rbx, -112(%rbp)        # 8-byte Spill
	movq	%r15, -96(%rbp)         # 8-byte Spill
	movl	%r13d, -168(%rbp)       # 4-byte Spill
	jne	.LBB1_41
# %bb.37:                               #   in Loop: Header=BB1_35 Depth=2
	movq	-152(%rbp), %r15        # 8-byte Reload
	cmpw	$4, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_39
# %bb.38:                               #   in Loop: Header=BB1_35 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	addq	$8, %rax
	movzwl	(%r15), %ecx
	movzwl	2(%r15,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB1_45
.LBB1_39:                               #   in Loop: Header=BB1_35 Depth=2
	movq	%r14, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_48
# %bb.40:                               #   in Loop: Header=BB1_35 Depth=2
	movq	%rax, %r14
	movq	32(%rax), %r15
	movzwl	(%r15), %ebx
	movzwl	4(%r15,%rbx,2), %r13d
	subl	%r12d, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%rbx), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%r15,%rax,2)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	leal	2(%rbx), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%r15,%rcx,2)
	movw	%ax, (%r15)
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movq	%r15, -152(%rbp)        # 8-byte Spill
	jmp	.LBB1_34
	.p2align	4, 0x90
.LBB1_41:                               #   in Loop: Header=BB1_35 Depth=2
	movq	-160(%rbp), %r15        # 8-byte Reload
	cmpw	$4, 4(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB1_43
# %bb.42:                               #   in Loop: Header=BB1_35 Depth=2
	movq	-64(%rbp), %rax         # 8-byte Reload
	addq	%r12, %rax
	addq	$8, %rax
	movzwl	(%r15), %ecx
	movzwl	2(%r15,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB1_33
.LBB1_43:                               #   in Loop: Header=BB1_35 Depth=2
	movq	%r14, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_48
# %bb.44:                               #   in Loop: Header=BB1_35 Depth=2
	movq	%rax, %r14
	movq	32(%rax), %r15
	movzwl	(%r15), %ebx
	movzwl	4(%r15,%rbx,2), %r13d
	subl	%r12d, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%rbx), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%r15,%rax,2)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	leal	2(%rbx), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%r15,%rcx,2)
	movw	%ax, (%r15)
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movq	%r15, -160(%rbp)        # 8-byte Spill
	jmp	.LBB1_34
.LBB1_45:                               #   in Loop: Header=BB1_35 Depth=2
	movzwl	(%r15), %r14d
	movzwl	4(%r15,%r14,2), %r13d
	subl	%r12d, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%r12, %rdx
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%r15,%rax,2)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%r15, %rdi
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memmove
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%r15,%rcx,2)
	movw	%ax, (%r15)
	movq	-72(%rbp), %r14         # 8-byte Reload
	jmp	.LBB1_34
.LBB1_46:
	movq	-120(%rbp), %rsi        # 8-byte Reload
	movl	-56(%rbp), %ecx         # 4-byte Reload
.LBB1_47:
	subl	%ecx, %eax
	movw	%ax, (%r12)
	movzwl	%ax, %ecx
	addl	%eax, %eax
	movl	%esi, %edx
	subl	%eax, %edx
	addl	$-6, %edx
	movw	%dx, 2(%r12,%rcx,2)
	movw	%si, 4(%r12,%rcx,2)
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB1_54
.LBB1_48:
	movl	$-1, %ecx
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB1_53
.LBB1_49:
	movl	$42, __A_VARIABLE(%rip)
	movq	-136(%rbp), %rsi        # 8-byte Reload
	testq	%rsi, %rsi
	je	.LBB1_57
# %bb.50:
	movq	%r14, %rdi
	callq	__free_ovflpage
	movq	-48(%rbp), %rax         # 8-byte Reload
.LBB1_51:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_52:
	xorl	%ecx, %ecx
.LBB1_53:
	movl	%ecx, -104(%rbp)        # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_54:
	andb	$-9, 40(%rax)
	movq	-144(%rbp), %rax        # 8-byte Reload
	andb	$-9, 40(%rax)
.LBB1_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-104(%rbp), %eax        # 4-byte Reload
	addq	$184, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB1_57:
	xorl	%ecx, %ecx
.LBB1_56:
	movq	-48(%rbp), %rax         # 8-byte Reload
	jmp	.LBB1_53
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
	movq	%rdi, %r15
	movq	32(%rsi), %rbx
	.p2align	4, 0x90
.LBB2_5:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rbx), %r13d
	movl	$42, __A_VARIABLE(%rip)
	testw	%r13w, %r13w
	je	.LBB2_15
# %bb.6:                                #   in Loop: Header=BB2_5 Depth=1
	movzwl	4(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r13w, %r14d
	cmpw	$4, %cx
	jae	.LBB2_10
# %bb.7:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %cx
	jne	.LBB2_1
# %bb.8:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %r13w
	je	.LBB2_9
.LBB2_1:                                #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$0, (%rbx,%r14,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_12
# %bb.2:                                #   in Loop: Header=BB2_5 Depth=1
	movzwl	-2(%rbx,%r14,2), %esi
	movq	%r15, %rdi
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_5 Depth=1
	cmpw	$4, (%rbx,%r14,2)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB2_16
# %bb.11:                               #   in Loop: Header=BB2_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_12:                               #   in Loop: Header=BB2_5 Depth=1
	movq	%r15, %rcx
	movzwl	2(%rbx,%r14,2), %r12d
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	8(%rdx), %rdx
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	8(%rsi), %rsi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %r15d
	cmpq	%r12, %rsi
	jb	.LBB2_24
# %bb.13:                               #   in Loop: Header=BB2_5 Depth=1
	movzwl	-2(%rbx,%r15,2), %esi
	movq	%rcx, %r15
	movq	%rcx, %rdi
.LBB2_3:                                #   in Loop: Header=BB2_5 Depth=1
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_14
# %bb.4:                                #   in Loop: Header=BB2_5 Depth=1
	movq	32(%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_5
.LBB2_15:
	xorl	%r13d, %r13d
.LBB2_16:
	cmpw	$4, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_18
# %bb.17:
	movq	-48(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rdx
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	8(%rcx), %rcx
	leaq	(%rdx,%rcx), %rsi
	addq	$8, %rsi
	movzwl	%r13w, %ecx
	movzwl	2(%rbx,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rsi
	jbe	.LBB2_23
.LBB2_18:
	movq	%r15, %rdi
	movq	%rax, %rsi
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB2_30
# %bb.19:
	movq	%rax, %rsi
	movq	32(%rax), %rbx
	cmpw	$4, 4(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB2_21
# %bb.20:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rdx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rax
	addq	%rdx, %rax
	addq	$8, %rax
	movzwl	(%rbx), %r14d
	movzwl	2(%rbx,%r14,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rax
	jbe	.LBB2_25
.LBB2_21:
	movq	%r15, %rdi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rsi, %rbx
	callq	__big_insert
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_30
# %bb.22:
	movb	$1, %cl
	movq	%rbx, %r12
	jmp	.LBB2_27
.LBB2_14:
	movl	$-1, %r13d
	jmp	.LBB2_30
.LBB2_23:
	movq	%rax, %r12
	movq	32(%rax), %rbx
	movzwl	(%rbx), %r14d
	movzwl	4(%rbx,%r14,2), %r13d
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%rbx, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%rbx,%rax,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%rbx, %rdi
	callq	memmove
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%rbx,%rcx,2)
	movw	%ax, (%rbx)
	xorl	%ecx, %ecx
	jmp	.LBB2_26
.LBB2_24:
	leal	1(%r14), %eax
	movl	%eax, %eax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	leal	2(%r14), %eax
	movl	%eax, -76(%rbp)         # 4-byte Spill
	movzwl	4(%rbx,%r15,2), %ecx
	movzwl	-2(%rbx,%r15,2), %eax
	movw	%ax, -58(%rbp)          # 2-byte Spill
	subl	%edx, %ecx
	movq	%rcx, -72(%rbp)         # 8-byte Spill
	movw	%cx, -2(%rbx,%r15,2)
	movzwl	%cx, %edi
	addq	%rbx, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	callq	memmove
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	8(%rax), %rdx
	movq	%rax, %rcx
	movq	-72(%rbp), %rax         # 8-byte Reload
	subl	%edx, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movw	%ax, (%rbx,%r14,2)
	movzwl	%ax, %edi
	addq	%rbx, %rdi
	movq	(%rcx), %rsi
	movq	%rcx, %r14
	callq	memmove
	movl	-76(%rbp), %eax         # 4-byte Reload
	movw	%ax, (%rbx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movzwl	-58(%rbp), %ecx         # 2-byte Folded Reload
	movw	%cx, (%rbx,%rax,2)
	movw	$0, 4(%rbx,%r15,2)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movl	8(%rax), %eax
	addl	8(%r14), %eax
	subl	%eax, %r12d
	addl	$-4, %r12d
	addl	$2, %r13d
	movzwl	%r13w, %eax
	movw	%r12w, 2(%rbx,%rax,2)
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movw	%cx, 4(%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
	jmp	.LBB2_30
.LBB2_25:
	movq	%rsi, %r12
	movzwl	4(%rbx,%r14,2), %r13d
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%rbx, %rdi
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	callq	memmove
	leal	1(%r14), %eax
	movzwl	%ax, %eax
	movw	%r13w, (%rbx,%rax,2)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	8(%rax), %rdx
	subl	%edx, %r13d
	movzwl	%r13w, %edi
	addq	%rbx, %rdi
	callq	memmove
	leal	2(%r14), %eax
	movzwl	%ax, %ecx
	movw	%r13w, (%rbx,%rcx,2)
	movw	%ax, (%rbx)
	movb	$1, %cl
.LBB2_26:
	leal	(%rax,%rax), %edx
	movl	%r13d, %esi
	subl	%edx, %esi
	addl	$-6, %esi
	movzwl	%ax, %eax
	movw	%si, 2(%rbx,%rax,2)
	movw	%r13w, 4(%rbx,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_27:
	orb	$1, 40(%r12)
	movl	56(%r15), %eax
	addl	$1, %eax
	movl	%eax, 56(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testb	%cl, %cl
	jne	.LBB2_29
# %bb.28:
	movl	40(%r15), %ecx
	addl	$1, %ecx
	cltd
	idivl	%ecx
	xorl	%r13d, %r13d
	cmpl	52(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB2_30
.LBB2_29:
	movq	%r15, %rdi
	callq	__expand_table
	movl	%eax, %r13d
.LBB2_30:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB2_9:
	movw	$2, %r13w
	jmp	.LBB2_16
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
	movq	32(%rsi), %rdi
	cmpl	$65536, 52(%r15)        # imm = 0x10000
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_3
# %bb.1:
	movzwl	(%rdi), %eax
	movl	%eax, %ecx
	shrl	%ecx
	movl	%ecx, 52(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	ja	.LBB3_3
# %bb.2:
	movl	$4, 52(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	orb	$1, 40(%rsi)
	movl	32(%r15), %r8d
	movslq	%r8d, %r9
	movl	68(%r15,%r9,4), %eax
	leal	-1(%rax), %r10d
	movb	16(%r15), %cl
	addb	$3, %cl
	movl	12(%r15), %edx
	leal	-1(,%rdx,8), %r13d
	andl	%r10d, %r13d
	sarl	%cl, %r10d
	movl	36(%r15), %r14d
	sarl	%cl, %r14d
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r10d, %r14d
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	jle	.LBB3_13
# %bb.4:
	xorl	%edi, %edi
.LBB3_5:
	movl	%eax, 36(%r15)
	movl	68(%r15,%r9,4), %r12d
	addl	$1, %r12d
	movl	%r12d, 68(%r15,%r9,4)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB3_7
# %bb.6:
	movl	64(%r15,%r9,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	subl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2048, %r12d            # imm = 0x800
	jl	.LBB3_10
# %bb.8:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %r8d
	jge	.LBB3_12
# %bb.9:
	leal	1(%r9), %r8d
	movl	%r8d, 32(%r15)
	movl	68(%r15,%r9,4), %eax
	movl	%eax, 72(%r15,%r9,4)
	addl	$-1, %eax
	movl	%eax, 68(%r15,%r9,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB3_10:
	movslq	12(%r15), %rax
	leal	-1(,%rax,8), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %r13d
	jne	.LBB3_32
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %r10d
	jl	.LBB3_52
.LBB3_12:
	movl	$.L.str, %esi
	movl	$49, %edx
	movl	$2, %edi
	callq	write
	jmp	.LBB3_61
.LBB3_13:
	movslq	%r14d, %r11
	movslq	%r10d, %rbx
	shll	$3, %r14d
	movq	%r11, %r12
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movq	%r11, -64(%rbp)         # 8-byte Spill
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB3_15
	.p2align	4, 0x90
.LBB3_14:                               #   in Loop: Header=BB3_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$8, %r14d
	cmpq	%rbx, %r12
	leaq	1(%r12), %r12
	jge	.LBB3_57
.LBB3_15:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB3_26 Depth 2
	movq	336(%r15,%r12,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB3_20
# %bb.16:                               #   in Loop: Header=BB3_15 Depth=1
	movslq	592(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jge	.LBB3_60
# %bb.17:                               #   in Loop: Header=BB3_15 Depth=1
	movl	%r8d, %r13d
	movq	%r9, %rbx
	movslq	12(%r15), %rdi
	callq	malloc
	movq	%rax, 336(%r15,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_60
# %bb.18:                               #   in Loop: Header=BB3_15 Depth=1
	movzwl	196(%r15,%r12,2), %edx
	movq	%r15, %rdi
	movq	%rax, %rsi
	xorl	%ecx, %ecx
	movl	$1, %r8d
	movl	$1, %r9d
	callq	__get_page
	movq	336(%r15,%r12,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB3_59
# %bb.19:                               #   in Loop: Header=BB3_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	movq	%rbx, %r9
	movl	%r13d, %r8d
	movl	-44(%rbp), %r10d        # 4-byte Reload
	movq	-72(%rbp), %r13         # 8-byte Reload
	movq	-64(%rbp), %r11         # 8-byte Reload
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB3_61
.LBB3_20:                               #   in Loop: Header=BB3_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %ecx
	cmpq	%rbx, %r12
	je	.LBB3_22
# %bb.21:                               #   in Loop: Header=BB3_15 Depth=1
	movl	12(%r15), %eax
	leal	-1(,%rax,8), %ecx
.LBB3_22:                               #   in Loop: Header=BB3_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %edx
	cmpq	%r11, %r12
	jne	.LBB3_24
# %bb.23:                               #   in Loop: Header=BB3_15 Depth=1
	movl	12(%r15), %eax
	leal	-1(,%rax,8), %eax
	andl	36(%r15), %eax
	leal	31(%rax), %edx
	testl	%eax, %eax
	cmovnsl	%eax, %edx
	sarl	$5, %edx
	andl	$-32, %eax
.LBB3_24:                               #   in Loop: Header=BB3_15 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %eax
	jg	.LBB3_14
# %bb.25:                               #   in Loop: Header=BB3_15 Depth=1
	movslq	%edx, %rdx
	leaq	(%rdi,%rdx,4), %rdx
	.p2align	4, 0x90
.LBB3_26:                               #   Parent Loop BB3_15 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	(%rdx), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %esi
	jne	.LBB3_28
# %bb.27:                               #   in Loop: Header=BB3_26 Depth=2
	addl	$32, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$4, %rdx
	cmpl	%ecx, %eax
	jle	.LBB3_26
	jmp	.LBB3_14
.LBB3_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movl	$1, %ecx
	.p2align	4, 0x90
.LBB3_29:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %ecx
	je	.LBB3_36
# %bb.30:                               #   in Loop: Header=BB3_29 Depth=1
	leal	(%rcx,%rcx), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %ebx
	je	.LBB3_35
# %bb.31:                               #   in Loop: Header=BB3_29 Depth=1
	shll	$2, %ecx
	addl	$2, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$32, %edx
	jb	.LBB3_29
	jmp	.LBB3_36
.LBB3_32:
	leal	1(%r13), %ecx
	movl	$1, %eax
	shll	%cl, %eax
	addl	$32, %r13d
	testl	%ecx, %ecx
	cmovnsl	%ecx, %r13d
	sarl	$5, %r13d
	movslq	%r13d, %rcx
	orl	%eax, (%rdi,%rcx,4)
.LBB3_33:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_34:
	shll	$11, %r8d
	movl	%r8d, %ecx
	jmp	.LBB3_47
.LBB3_35:
	addl	$1, %edx
.LBB3_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rdx,%rax), %ecx
	movl	$1, %esi
	shll	%cl, %esi
	leal	(%rdx,%rax), %ebx
	addl	$31, %ebx
	testl	%ecx, %ecx
	cmovnsl	%ecx, %ebx
	sarl	$5, %ebx
	movslq	%ebx, %rcx
	orl	%esi, (%rdi,%rcx,4)
	imull	12(%r15), %r14d
	addl	%edx, %r14d
	leal	(%rax,%r14), %ecx
	addl	$1, %ecx
	cmpl	36(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jl	.LBB3_38
# %bb.37:
	leal	(%r14,%rax), %edx
	movl	%edx, 36(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_38:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	testl	%r8d, %r8d
	jle	.LBB3_44
	.p2align	4, 0x90
.LBB3_39:                               # =>This Inner Loop Header: Depth=1
	cmpl	68(%r15,%r12,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB3_42
# %bb.40:                               #   in Loop: Header=BB3_39 Depth=1
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r9, %r12
	jl	.LBB3_39
# %bb.41:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB3_43
.LBB3_42:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB3_56
.LBB3_43:
	movslq	%r12d, %rcx
	subl	64(%r15,%rcx,4), %r14d
	leal	(%r14,%rax), %ecx
	addl	$1, %ecx
.LBB3_44:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_45:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2046, %ecx             # imm = 0x7FE
	jg	.LBB3_61
# %bb.46:
	shll	$11, %r12d
.LBB3_47:
	addl	%ecx, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testw	%r12w, %r12w
	je	.LBB3_62
# %bb.48:
	movzwl	%r12w, %esi
	movq	%r15, %rdi
	movq	-88(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	movl	$1, %ecx
	callq	__get_buf
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_62
# %bb.49:
	orb	$1, 40(%rax)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movzwl	(%rsi), %ecx
	movzwl	4(%rsi,%rcx,2), %edx
	movw	%dx, 8(%rsi,%rcx,2)
	movzwl	2(%rsi,%rcx,2), %edx
	addl	$-4, %edx
	movw	%dx, 6(%rsi,%rcx,2)
	movw	%r12w, 2(%rsi,%rcx,2)
	movw	$0, 4(%rsi,%rcx,2)
	addq	$2, %rcx
	movw	%cx, (%rsi)
	jmp	.LBB3_63
.LBB3_52:
	movl	%r10d, -44(%rbp)        # 4-byte Spill
	movl	%r8d, %r13d
	movq	%rax, %rdi
	callq	malloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_60
# %bb.53:
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
	movl	%r13d, %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r13d, %rax
	addl	$1, 68(%r15,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2047, %r12d            # imm = 0x7FF
	jl	.LBB3_58
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$31, %r8d
	jge	.LBB3_12
# %bb.55:
	leal	1(%rax), %r8d
	movl	%r8d, 32(%r15)
	movl	68(%r15,%rax,4), %ecx
	movslq	%r8d, %rdx
	movl	%ecx, 68(%r15,%rdx,4)
	addl	$-1, %ecx
	movl	%ecx, 68(%r15,%rax,4)
	xorl	%r12d, %r12d
	jmp	.LBB3_33
.LBB3_56:
	xorl	%r12d, %r12d
	jmp	.LBB3_45
.LBB3_57:
	movl	68(%r15,%r9,4), %eax
	xorl	%ecx, %ecx
	jmp	.LBB3_5
.LBB3_58:
	addl	$1, %r12d
	jmp	.LBB3_34
.LBB3_59:
	callq	free
.LBB3_60:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_61:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_62:
	xorl	%eax, %eax
.LBB3_63:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	%edx, %r15d
	movq	%rsi, %r14
	movl	284(%rdi), %r13d
	movslq	12(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB4_2
# %bb.1:
	cmpl	$-1, %r13d
	je	.LBB4_2
# %bb.3:
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	je	.LBB4_7
# %bb.4:
	movl	60(%r12), %ebx
	addl	%r15d, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB4_5
# %bb.6:
	addl	$1, %r15d
	movl	%r15d, %edi
	callq	__log2
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r12,%rax,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_11
.LBB4_2:
	movw	$0, (%r14)
	movl	%edx, %eax
	addl	$-6, %eax
	movw	%ax, 2(%r14)
	movw	%dx, 4(%r14)
.LBB4_30:
	xorl	%ebx, %ebx
	jmp	.LBB4_31
.LBB4_7:
	movl	%r15d, %ecx
	shrl	$11, %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movl	%edi, %ebx
	movl	60(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	je	.LBB4_8
# %bb.9:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	__log2
	movl	-44(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r12,%rax,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_10
.LBB4_5:
	xorl	%eax, %eax
	jmp	.LBB4_11
.LBB4_8:
	xorl	%eax, %eax
.LBB4_10:
	andl	$2047, %r15d            # imm = 0x7FF
	addl	%r15d, %ebx
	addl	%ecx, %ebx
.LBB4_11:
	addl	%eax, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ebx, %rsi
	movb	16(%r12), %cl
	shlq	%cl, %rsi
	movl	%r13d, %edi
	xorl	%edx, %edx
	callq	lseek
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %ebx
	cmpq	$-1, %rax
	je	.LBB4_31
# %bb.12:
	movl	%r13d, %edi
	movq	%r14, %rsi
	movq	-56(%rbp), %rdx         # 8-byte Reload
	callq	read
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB4_31
# %bb.13:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_14
# %bb.18:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, -56(%rbp)         # 4-byte Folded Reload
	je	.LBB4_15
# %bb.19:
	callq	__errno
	movl	$79, (%rax)
	jmp	.LBB4_31
.LBB4_14:
	movw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
	movl	-48(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jne	.LBB4_20
# %bb.16:
	cmpw	$0, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB4_17
.LBB4_20:
	xorl	%ebx, %ebx
	cmpl	$1234, 8(%r12)          # imm = 0x4D2
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_21
.LBB4_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB4_21:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB4_25
# %bb.22:
	movl	12(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB4_29
# %bb.23:
	shrq	$2, %rax
	xorl	%ecx, %ecx
	.p2align	4, 0x90
.LBB4_24:                               # =>This Inner Loop Header: Depth=1
	movl	(%r14,%rcx,4), %edx
	bswapl	%edx
	movl	%edx, (%r14,%rcx,4)
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jb	.LBB4_24
	jmp	.LBB4_29
.LBB4_25:
	movzwl	(%r14), %eax
	rolw	$8, %ax
	movw	%ax, (%r14)
	movzwl	%ax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %eax
	andl	$65534, %ecx            # imm = 0xFFFE
	addq	$2, %rcx
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB4_26:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	rolw	$8, 2(%r14,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	rolw	$8, 4(%r14,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rsi
	cmpq	%rsi, %rcx
	jne	.LBB4_26
# %bb.27:
	testw	%ax, %ax
	je	.LBB4_29
# %bb.28:
	rolw	$8, 6(%r14,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_29
.LBB4_17:
	movw	$0, (%r14)
	movl	12(%r12), %eax
	movl	%eax, %ecx
	addl	$-6, %ecx
	movw	%cx, 2(%r14)
	movw	%ax, 4(%r14)
.LBB4_29:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_30
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
	movl	%edx, %r13d
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movslq	12(%rdi), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movl	284(%rdi), %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	jne	.LBB5_4
# %bb.1:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	leaq	-72(%rbp), %r12
	movq	%r12, %rdi
	callq	sigfillset
	leaq	-64(%rbp), %rdx
	xorl	%edi, %edi
	movq	%r12, %rsi
	callq	sigprocmask
	movl	$open_temp.namestr, %edi
	callq	mkstemp
	movl	%eax, 284(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB5_3
# %bb.2:
	movl	$open_temp.namestr, %edi
	callq	unlink
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	leaq	-64(%rbp), %rsi
	movl	$2, %edi
	xorl	%edx, %edx
	callq	sigprocmask
	movl	284(%r15), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %r12d
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB5_26
.LBB5_4:
	cmpl	$1234, 8(%r15)          # imm = 0x4D2
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB5_14
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB5_9
# %bb.6:
	movl	12(%r15), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %eax
	jl	.LBB5_13
# %bb.7:
	shrq	$2, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_8:                                # =>This Inner Loop Header: Depth=1
	movl	(%rbx,%rsi,4), %edx
	bswapl	%edx
	movl	%edx, (%rbx,%rsi,4)
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rsi
	jb	.LBB5_8
	jmp	.LBB5_13
.LBB5_9:
	movzwl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movb	%ah, (%rbx)
	movb	%al, 1(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edi
	andl	$1, %edi
	andl	$-2, %eax
	addq	$2, %rax
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB5_10:                               # =>This Inner Loop Header: Depth=1
	movq	%rsi, %rdx
	rolw	$8, 2(%rbx,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	rolw	$8, 4(%rbx,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$2, %rsi
	cmpq	%rsi, %rax
	jne	.LBB5_10
# %bb.11:
	testw	%di, %di
	je	.LBB5_13
# %bb.12:
	rolw	$8, 6(%rbx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB5_14:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB5_18
# %bb.15:
	movl	60(%r15), %r14d
	addl	%r13d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB5_16
# %bb.17:
	addl	$1, %r13d
	movl	%r13d, %edi
	callq	__log2
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r15,%rax,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_22
.LBB5_18:
	movl	%r13d, %ecx
	shrl	$11, %ecx
	movl	$1, %edi
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edi
	movl	%edi, %r14d
	movl	60(%r15), %ecx
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	je	.LBB5_19
# %bb.20:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	callq	__log2
	movl	-44(%rbp), %ecx         # 4-byte Reload
                                        # kill: def $eax killed $eax def $rax
	addl	$-1, %eax
	movl	68(%r15,%rax,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_21
.LBB5_16:
	xorl	%eax, %eax
	jmp	.LBB5_22
.LBB5_19:
	xorl	%eax, %eax
.LBB5_21:
	andl	$2047, %r13d            # imm = 0x7FF
	addl	%r13d, %r14d
	addl	%ecx, %r14d
.LBB5_22:
	addl	%eax, %r14d
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r14d, %rsi
	movb	16(%r15), %cl
	shlq	%cl, %rsi
	movl	%r12d, %edi
	xorl	%edx, %edx
	callq	lseek
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r14d
	cmpq	$-1, %rax
	je	.LBB5_27
# %bb.23:
	movl	%r12d, %edi
	movq	%rbx, %rsi
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdx
	callq	write
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB5_27
# %bb.24:
	xorl	%r14d, %r14d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ebx
	je	.LBB5_27
# %bb.25:
	callq	__errno
	movl	$79, (%rax)
.LBB5_26:
	movl	$-1, %r14d
.LBB5_27:
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	andl	$31, %ecx
	je	.LBB7_1
# %bb.2:
	movslq	%ecx, %rcx
	movl	64(%r15,%rcx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	jg	.LBB7_5
# %bb.4:
	movl	%edx, 36(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_5:
	movb	16(%r15), %cl
	addb	$3, %cl
	movslq	12(%r15), %rax
	leal	-1(,%rax,8), %ebx
	andl	%edx, %ebx
	sarl	%cl, %edx
	movslq	%edx, %r12
	movq	336(%r15,%r12,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	jne	.LBB7_12
# %bb.6:
	cmpl	%edx, 592(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB7_10
# %bb.7:
	movq	%rax, %rdi
	callq	malloc
	movq	%rax, 336(%r15,%r12,8)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB7_11
# %bb.9:
	callq	free
.LBB7_10:
	xorl	%edi, %edi
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
