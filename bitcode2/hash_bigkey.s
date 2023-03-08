	.text
	.file	"hash_bigkey.c"
	.globl	__big_insert            # -- Begin function __big_insert
	.p2align	4, 0x90
	.type	__big_insert,@function
__big_insert:                           # @__big_insert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$72, %rsp
	movq	%rsi, %r13
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	32(%rsi), %r12
	movq	(%rdx), %rsi
	movl	8(%rdx), %r8d
	movq	(%rcx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	8(%rcx), %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB0_3
	.p2align	4, 0x90
.LBB0_1:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rbx, %r13
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_2:                                #   in Loop: Header=BB0_3 Depth=1
	orb	$1, 40(%r13)
	addq	%r14, %rsi
	movq	32(%r13), %r12
.LBB0_3:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%r12), %eax
	movzwl	2(%r12,%rax,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	je	.LBB0_10
# %bb.4:                                #   in Loop: Header=BB0_3 Depth=1
	addl	$-8, %ecx
	movzwl	%cx, %ecx
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	movzwl	%ax, %eax
	movzwl	4(%r12,%rax,2), %ebx
	movzwl	%cx, %r14d
	subl	%ecx, %ebx
	movzwl	%bx, %edi
	addq	%r12, %rdi
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r13, %r15
	movl	%r8d, %r13d
	movq	%r14, %rdx
	callq	memmove
	movzwl	(%r12), %eax
	movw	%bx, 2(%r12,%rax,2)
	leaq	2(%rax), %rcx
	movw	%cx, (%r12)
	leal	(%rax,%rax), %ecx
	negl	%ecx
	addl	%ebx, %ecx
	addl	$-10, %ecx
	leal	2(%rax), %edx
	movzwl	%dx, %edx
	movw	%cx, 2(%r12,%rdx,2)
	movw	%bx, 4(%r12,%rdx,2)
	movw	$1, 4(%r12,%rax,2)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r15, %rsi
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.5:                                #   in Loop: Header=BB0_3 Depth=1
	movq	%rax, %rbx
	movzwl	(%r12), %ecx
	movl	$42, __A_VARIABLE(%rip)
	subl	%r14d, %r13d
	movl	%r13d, %r8d
	jne	.LBB0_1
# %bb.6:                                #   in Loop: Header=BB0_3 Depth=1
	movzwl	2(%r12,%rcx,2), %eax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_3 Depth=1
	movl	-44(%rbp), %esi         # 4-byte Reload
	cmpl	%eax, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmovlel	%esi, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, -96(%rbp)         # 8-byte Spill
	movl	%ecx, %ecx
	movzwl	4(%r12,%rcx,2), %r13d
	movzwl	%ax, %edx
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	subl	%eax, %r13d
	movw	%r13w, (%r12,%rcx,2)
	movzwl	%r13w, %eax
	movq	%r12, %rdi
	addq	%rax, %rdi
	movq	-56(%rbp), %r15         # 8-byte Reload
	movq	%r15, %rsi
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	callq	memmove
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	movq	%r15, -56(%rbp)         # 8-byte Spill
	subl	%eax, -44(%rbp)         # 4-byte Folded Spill
	movq	%rax, %rsi
	movq	-96(%rbp), %rax         # 8-byte Reload
	movw	$3, -4(%r12,%rax,2)
	movzwl	(%r12), %eax
	subw	%si, 2(%r12,%rax,2)
	addq	$2, %rax
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_3 Depth=1
	leaq	-2(%rcx), %rax
	movw	$2, %r13w
.LBB0_9:                                #   in Loop: Header=BB0_3 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movw	%r13w, (%r12,%rax,2)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r13
	jmp	.LBB0_2
.LBB0_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %esi         # 4-byte Reload
	testl	%esi, %esi
	jne	.LBB0_14
.LBB0_11:
	xorl	%eax, %eax
	jmp	.LBB0_23
	.p2align	4, 0x90
.LBB0_12:                               #   in Loop: Header=BB0_14 Depth=1
	movw	$3, 4(%r12,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_13:                               #   in Loop: Header=BB0_14 Depth=1
	addq	%r15, -56(%rbp)         # 8-byte Folded Spill
	orb	$1, 40(%r13)
	movzwl	%ax, %ecx
	movzwl	2(%r12,%rcx,2), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %esi
	testl	%r14d, %r14d
	je	.LBB0_11
.LBB0_14:                               # =>This Inner Loop Header: Depth=1
	addl	$-8, %ecx
	movzwl	%cx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	cmovlel	%esi, %ecx
	jne	.LBB0_17
# %bb.15:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%esi, %r14d
	movslq	%esi, %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	cmpq	%rdx, 8(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB0_18
# %bb.16:                               #   in Loop: Header=BB0_14 Depth=1
	addl	$-1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB0_18
	.p2align	4, 0x90
.LBB0_17:                               #   in Loop: Header=BB0_14 Depth=1
	movl	%esi, %r14d
.LBB0_18:                               #   in Loop: Header=BB0_14 Depth=1
	movzwl	%ax, %eax
	movzwl	4(%r12,%rax,2), %ebx
	subl	%ecx, %ebx
	movzwl	%cx, %r15d
	movzwl	%bx, %edi
	addq	%r12, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	memmove
	movzwl	(%r12), %ecx
	leal	(%rcx,%rcx), %edx
	negl	%edx
	leal	2(%rcx), %eax
	movw	%bx, 2(%r12,%rcx,2)
	movw	%ax, (%r12)
	addl	%ebx, %edx
	addl	$-10, %edx
	movzwl	%ax, %esi
	movw	%dx, 2(%r12,%rsi,2)
	movw	%bx, 4(%r12,%rsi,2)
	movl	$42, __A_VARIABLE(%rip)
	subl	%r15d, %r14d
	je	.LBB0_12
# %bb.19:                               #   in Loop: Header=BB0_14 Depth=1
	movw	$2, 4(%r12,%rcx,2)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_22
# %bb.20:                               #   in Loop: Header=BB0_14 Depth=1
	movq	%rax, %r13
	movq	32(%rax), %r12
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%r12), %eax
	jmp	.LBB0_13
.LBB0_22:
	movl	$-1, %eax
.LBB0_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$72, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	__big_insert, .Lfunc_end0-__big_insert
                                        # -- End function
	.globl	__big_delete            # -- Begin function __big_delete
	.p2align	4, 0x90
	.type	__big_delete,@function
__big_delete:                           # @__big_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r12
	movq	%rdi, %r14
	xorl	%r15d, %r15d
	movq	%rsi, %rbx
	xorl	%r13d, %r13d
	jmp	.LBB1_1
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %r15
	testq	%rbx, %rbx
	je	.LBB1_13
.LBB1_1:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rax), %ecx
	testl	%r13d, %r13d
	je	.LBB1_6
# %bb.2:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %cx
	je	.LBB1_3
.LBB1_6:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %cx
	jne	.LBB1_7
# %bb.9:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB1_10
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %cx
	jne	.LBB1_10
# %bb.8:                                #   in Loop: Header=BB1_1 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %ecx
	cmpw	$0, 2(%rax,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jne	.LBB1_4
.LBB1_10:                               #   in Loop: Header=BB1_1 Depth=1
	movzwl	(%rax), %ecx
	movzwl	-2(%rax,%rcx,2), %esi
	orb	$1, 40(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_12
# %bb.11:                               #   in Loop: Header=BB1_1 Depth=1
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__free_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_12
.LBB1_13:
	movl	$-1, %eax
	jmp	.LBB1_18
.LBB1_3:
	movzwl	(%rax), %ecx
.LBB1_4:
	movzwl	%cx, %esi
	movzwl	-2(%rax,%rsi,2), %edx
	movq	32(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %si
	jb	.LBB1_14
# %bb.5:
	movw	%dx, 2(%rax)
	movw	$0, 4(%rax)
	movq	16(%rbx), %rdx
	movq	%rdx, 16(%r12)
	jmp	.LBB1_15
.LBB1_14:
	movq	$0, 16(%r12)
.LBB1_15:
	movl	$42, __A_VARIABLE(%rip)
	leal	-2(%rcx), %edx
	movw	%dx, (%rax)
	movl	12(%r14), %esi
	addl	%ecx, %ecx
	negl	%ecx
	addl	%esi, %ecx
	addl	$-2, %ecx
	movzwl	%dx, %edx
	movw	%cx, 2(%rax,%rdx,2)
	addl	$-1, %esi
	movw	%si, 4(%rax,%rdx,2)
	orb	$1, 40(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__free_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %r15
	je	.LBB1_17
# %bb.16:
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	__free_ovflpage
	movl	$42, __A_VARIABLE(%rip)
.LBB1_17:
	addl	$-1, 56(%r14)
	xorl	%eax, %eax
.LBB1_18:
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
.Lfunc_end1:
	.size	__big_delete, .Lfunc_end1-__big_delete
                                        # -- End function
	.globl	__find_bigpair          # -- Begin function __find_bigpair
	.p2align	4, 0x90
	.type	__find_bigpair,@function
__find_bigpair:                         # @__find_bigpair
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r9
	movq	%rdi, %r12
	movq	32(%rsi), %rdi
	movzwl	12(%r12), %ebx
	movslq	%edx, %rcx
	subw	(%rdi,%rcx,2), %bx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%bx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r8d, %ecx
	jle	.LBB2_2
# %bb.1:
	movq	%rdi, %r13
	movl	%r8d, %esi
	jmp	.LBB2_10
.LBB2_2:                                # %.preheader
	movq	%rsi, %r14
	movl	%r8d, %esi
	movq	%rdi, %r13
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	movq	%r12, -64(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movslq	%edx, %r12
	cmpw	$1, 2(%r13,%r12,2)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB2_10
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%ecx, -52(%rbp)         # 4-byte Spill
	movzwl	(%r13,%r12,2), %ecx
	addq	%rcx, %rdi
	movzwl	%bx, %ebx
	movq	%r9, %r15
	movq	%r9, %rsi
	movq	%rbx, %rdx
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	movzwl	4(%r13,%r12,2), %esi
	movq	-64(%rbp), %r12         # 8-byte Reload
	movq	%r12, %rdi
	movq	%r14, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_7
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, %r14
	movl	-48(%rbp), %esi         # 4-byte Reload
	subl	-52(%rbp), %esi         # 4-byte Folded Reload
	movq	%r15, %r9
	addq	%rbx, %r9
	movq	32(%rax), %rdi
	movzwl	12(%r12), %ebx
	subw	2(%rdi), %bx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%bx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movq	%rdi, %r13
	movl	-44(%rbp), %r8d         # 4-byte Reload
	cmpl	%r8d, %ecx
	jle	.LBB2_3
# %bb.9:
	movl	$1, %edx
	movq	%rdi, %r13
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %r14d
	cmpl	%ecx, %esi
	jne	.LBB2_12
# %bb.11:
	movslq	%edx, %r14
	movzwl	(%r13,%r14,2), %ecx
	addq	%rcx, %rdi
	movzwl	%bx, %edx
	movq	%r9, %rsi
	callq	memcmp
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$-2, %eax
	cmovnel	%eax, %r14d
	jmp	.LBB2_12
.LBB2_5:
	movl	$-2, %r14d
	jmp	.LBB2_12
.LBB2_7:
	movl	$-3, %r14d
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	__find_bigpair, .Lfunc_end2-__find_bigpair
                                        # -- End function
	.globl	__find_last_page        # -- Begin function __find_last_page
	.p2align	4, 0x90
	.type	__find_last_page,@function
__find_last_page:                       # @__find_last_page
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movq	(%rsi), %rax
	xorl	%ebx, %ebx
	jmp	.LBB3_2
	.p2align	4, 0x90
.LBB3_1:                                #   in Loop: Header=BB3_2 Depth=1
	movzwl	-2(%rcx,%rdx,2), %esi
	movq	%r15, %rdi
	movq	%rax, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_10
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rcx), %edx
	cmpw	$3, 4(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB3_1
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %dx
	je	.LBB3_8
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	cmpw	$0, (%rcx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	cmpw	$0, 2(%rcx,%rdx,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB3_1
.LBB3_6:
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %dx
	jb	.LBB3_9
# %bb.7:
	movzwl	6(%rcx), %ebx
	jmp	.LBB3_10
.LBB3_8:
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:
	xorl	%ebx, %ebx
.LBB3_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	__find_last_page, .Lfunc_end3-__find_last_page
                                        # -- End function
	.globl	__big_return            # -- Begin function __big_return
	.p2align	4, 0x90
	.type	__big_return,@function
__big_return:                           # @__big_return
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	%r8d, %r12d
	movq	%rcx, %r13
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	32(%rsi), %rax
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, %edx
	movslq	%edx, %rcx
	movzwl	(%rax,%rcx,2), %edx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$1, %dx
	jne	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movzwl	(%rax), %ecx
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_23
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	%rax, %rbx
	movq	32(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	4(%rax), %edx
	jmp	.LBB4_1
.LBB4_4:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %ecx
	cmpw	$2, %dx
	jne	.LBB4_7
# %bb.5:
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_23
# %bb.6:
	movl	%r12d, -56(%rbp)        # 4-byte Spill
	movq	32(%rax), %rcx
	movzwl	24(%rax), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movzwl	2(%rcx), %r14d
	xorl	%r12d, %r12d
	movq	%rax, %rbx
	jmp	.LBB4_15
.LBB4_7:
	cmpw	$0, 2(%rax,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	movzwl	(%rax,%rdx,2), %r14d
	je	.LBB4_13
# %bb.8:
	movzwl	%r14w, %esi
	movq	%rax, %rdi
	addq	%rsi, %rdi
	movq	%rdi, (%r13)
	movzwl	2(%rax), %edi
	subq	%rsi, %rdi
	movq	%rdi, 8(%r13)
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB4_24
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %cx
	jne	.LBB4_19
# %bb.10:
	movq	$0, 304(%r15)
	addl	$1, 312(%r15)
	movl	$1, 316(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_24
.LBB4_13:
	movl	%r12d, -56(%rbp)        # 4-byte Spill
	movzwl	2(%rax), %r12d
	movzwl	24(%rbx), %edx
	movl	%edx, -44(%rbp)         # 4-byte Spill
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_23
# %bb.14:
	subl	%r14d, %r12d
.LBB4_15:
	movl	$42, __A_VARIABLE(%rip)
	movzwl	%r12w, %r12d
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	%r12d, %edx
	movl	-56(%rbp), %ecx         # 4-byte Reload
	callq	collect_data
	cltq
	movq	%r13, -56(%rbp)         # 8-byte Spill
	movq	%rax, 8(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	cmpl	$-1, %eax
	je	.LBB4_24
# %bb.16:
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_18
# %bb.17:
	movq	288(%r15), %rdi
	movzwl	%r14w, %esi
	addq	32(%rbx), %rsi
	movq	%r12, %rdx
	callq	memmove
	movq	288(%r15), %rax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	xorl	%r13d, %r13d
	jmp	.LBB4_24
.LBB4_18:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB4_24
.LBB4_19:
	movzwl	-2(%rax,%rdx,2), %esi
	xorl	%r13d, %r13d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, 304(%r15)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB4_23
# %bb.20:
	movl	$1, 316(%r15)
	movq	32(%rax), %rax
	cmpw	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB4_24
# %bb.21:
	addl	$1, 312(%r15)
	movq	$0, 304(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB4_24
.LBB4_23:
	movl	$-1, %r13d
.LBB4_24:
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end4:
	.size	__big_return, .Lfunc_end4-__big_return
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function collect_data
	.type	collect_data,@function
collect_data:                           # @collect_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r15
	movq	%rdi, %r14
	movq	32(%rsi), %r12
	movslq	12(%rdi), %rbx
	movzwl	2(%r12), %eax
	subq	%rax, %rbx
	movzwl	24(%rsi), %eax
	cmpw	$3, 4(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jne	.LBB5_11
# %bb.1:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	addl	%edx, %ebx
	movq	288(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB5_3:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movslq	%ebx, %rdi
	callq	malloc
	movq	%rax, 288(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB5_16
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB5_5
# %bb.6:
	movl	$1, 316(%r14)
	movzwl	(%r12), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jne	.LBB5_8
# %bb.7:
	movq	$0, 304(%r14)
	addl	$1, 312(%r14)
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB5_13
.LBB5_11:
	movzwl	(%r12), %eax
	movzwl	-2(%r12,%rax,2), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB5_16
# %bb.12:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	leal	(%rbx,%rcx), %edx
	movq	%r14, %rdi
	movq	%rax, %rsi
	movl	-48(%rbp), %ecx         # 4-byte Reload
	callq	collect_data
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	testl	%eax, %eax
	jg	.LBB5_13
	jmp	.LBB5_16
.LBB5_5:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB5_13
.LBB5_8:
	movzwl	-2(%r12,%rax,2), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB5_16
# %bb.9:
	movq	32(%rax), %rax
	cmpw	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_13
# %bb.10:
	addl	$1, 312(%r14)
	movq	$0, 304(%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_13:
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB5_14
# %bb.15:
	movslq	-72(%rbp), %rdi         # 4-byte Folded Reload
	addq	288(%r14), %rdi
	movzwl	2(%r12), %esi
	addq	32(%r15), %rsi
	movq	%rbx, %rdx
	callq	memmove
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB5_16
.LBB5_14:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r13d
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end5:
	.size	collect_data, .Lfunc_end5-collect_data
                                        # -- End function
	.globl	__big_keydata           # -- Begin function __big_keydata
	.p2align	4, 0x90
	.type	__big_keydata,@function
__big_keydata:                          # @__big_keydata
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r15
	movq	%rdi, %rbx
	xorl	%r14d, %r14d
	xorl	%edx, %edx
	callq	collect_key
	cltq
	movq	%rax, 8(%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB6_1
# %bb.2:
	movq	296(%rbx), %rax
	movq	%rax, (%r15)
	jmp	.LBB6_3
.LBB6_1:
	movl	$-1, %r14d
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	__big_keydata, .Lfunc_end6-__big_keydata
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function collect_key
	.type	collect_key,@function
collect_key:                            # @collect_key
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
                                        # kill: def $edx killed $edx def $rdx
	movq	%rsi, %r15
	movq	%rdi, %r12
	movq	32(%rsi), %rdi
	movslq	12(%r12), %r14
	movzwl	2(%rdi), %eax
	subq	%rax, %r14
	movzwl	24(%rsi), %esi
	leal	(%r14,%rdx), %ebx
	movzwl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %ax
	movq	%rdx, -80(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movq	%rdi, -72(%rbp)         # 8-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	je	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$3, %ax
	jne	.LBB7_6
.LBB7_2:
	movq	296(%r12), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB7_4
# %bb.3:
	callq	free
	movl	$42, __A_VARIABLE(%rip)
.LBB7_4:
	movslq	%ebx, %rdi
	callq	malloc
	movq	%rax, 296(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB7_11
# %bb.5:
	movq	%r12, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	callq	__big_return
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB7_11
	jmp	.LBB7_8
.LBB7_6:
	movzwl	(%rdi), %eax
	movzwl	-2(%rdi,%rax,2), %esi
	movq	%r12, %rdi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB7_11
# %bb.7:
	movq	%r12, %rdi
	movq	%rax, %rsi
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	callq	collect_key
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, -44(%rbp)         # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB7_11
.LBB7_8:
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB7_9
# %bb.10:
	movslq	-80(%rbp), %rdi         # 4-byte Folded Reload
	addq	296(%r12), %rdi
	movq	-72(%rbp), %rax         # 8-byte Reload
	movzwl	2(%rax), %esi
	addq	32(%r15), %rsi
	movq	%r14, %rdx
	callq	memmove
	movl	-44(%rbp), %r13d        # 4-byte Reload
	jmp	.LBB7_11
.LBB7_9:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %r13d
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end7:
	.size	collect_key, .Lfunc_end7-collect_key
                                        # -- End function
	.globl	__big_split             # -- Begin function __big_split
	.p2align	4, 0x90
	.type	__big_split,@function
__big_split:                            # @__big_split
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movl	%r9d, -48(%rbp)         # 4-byte Spill
	movl	%r8d, %ebx
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, %r12
	leaq	-72(%rbp), %rcx
	movq	%r14, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	callq	collect_key
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$-1, %eax
	je	.LBB8_11
# %bb.1:
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	296(%r12), %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	movl	%eax, %edx
	callq	__call_hash
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r14, %rbx
	jmp	.LBB8_3
	.p2align	4, 0x90
.LBB8_2:                                #   in Loop: Header=BB8_3 Depth=1
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r12, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_12
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	movzwl	(%rax), %ecx
	cmpw	$3, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_2
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %cx
	je	.LBB8_13
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	cmpw	$0, (%rax,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_7
# %bb.6:                                #   in Loop: Header=BB8_3 Depth=1
	cmpw	$0, 2(%rax,%rcx,2)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_2
.LBB8_7:
	movl	$42, __A_VARIABLE(%rip)
	cmpw	$2, %cx
	jbe	.LBB8_14
# %bb.8:
	movzwl	6(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbp), %rax
	movw	%si, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB8_15
# %bb.9:
	movq	%r12, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_16
	jmp	.LBB8_21
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$-1, %eax
	jmp	.LBB8_20
.LBB8_12:
	movq	%r14, %rbx
	jmp	.LBB8_14
.LBB8_13:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_14:
	movq	16(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movw	$0, 24(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_15:
	movq	$0, 16(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_16:
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	-48(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	cmovneq	%r15, %rax
	orb	$1, 40(%rax)
	movq	%r14, 16(%rax)
	movq	32(%rax), %rax
	movzwl	(%rax), %ecx
	movzwl	4(%rax,%rcx,2), %r8d
	movzwl	2(%rax,%rcx,2), %esi
	leal	1(%rcx), %edi
	movzwl	%di, %edi
	movl	-52(%rbp), %edx         # 4-byte Reload
	movw	%dx, (%rax,%rdi,2)
	leal	2(%rcx), %ecx
	movzwl	%cx, %edi
	movw	$0, (%rax,%rdi,2)
	movw	%cx, (%rax)
	movq	16(%rbp), %rcx
	movw	%r8w, 4(%rax,%rdi,2)
	addl	$-4, %esi
	movw	%si, 2(%rax,%rdi,2)
	movq	%r15, (%rcx)
	movq	%r13, 8(%rcx)
	movq	32(%rbx), %r14
	orb	$1, 40(%rbx)
	movzwl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$3, %eax
	jb	.LBB8_19
# %bb.17:
	movzwl	8(%r14), %r15d
	movzwl	2(%r14,%rax,2), %ecx
	movzwl	4(%r14,%rax,2), %edx
	addl	$-2, %eax
	movw	%ax, (%r14)
	addl	$4, %ecx
	movzwl	%ax, %eax
	movw	%cx, 2(%r14,%rax,2)
	movw	%dx, 4(%r14,%rax,2)
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	__add_ovflpage
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_21
# %bb.18:
	movq	%rax, %rbx
	movw	%r15w, 8(%r14)
	movq	16(%rbp), %rcx
.LBB8_19:
	xorl	%eax, %eax
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	-48(%rbp), %edx         # 4-byte Folded Reload
	sete	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, (%rcx,%rax,8)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB8_20
.LBB8_21:
	movl	$-1, %eax
.LBB8_20:
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
.Lfunc_end8:
	.size	__big_split, .Lfunc_end8-__big_split
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
