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
	movl	8(%rdx), %r8d
	movq	(%rcx), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	8(%rcx), %r14d
	movzwl	(%r12), %eax
	leaq	(%r12,%rax,2), %rcx
	addq	$2, %rcx
	testl	%r8d, %r8d
	je	.LBB0_13
# %bb.1:
	movl	%r14d, -44(%rbp)        # 4-byte Spill
	movq	(%rdx), %rsi
	jmp	.LBB0_4
	.p2align	4, 0x90
.LBB0_2:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rbx, %r13
	movq	-64(%rbp), %rsi         # 8-byte Reload
.LBB0_3:                                #   in Loop: Header=BB0_4 Depth=1
	addq	%r14, %rsi
	orb	$1, 40(%r13)
	movq	32(%r13), %r12
	movzwl	(%r12), %eax
	leaq	(%r12,%rax,2), %rcx
	addq	$2, %rcx
	testl	%r8d, %r8d
	je	.LBB0_10
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%rcx), %ecx
	addl	$-8, %ecx
	movzwl	%cx, %ecx
	cmpl	%ecx, %r8d
	cmovlel	%r8d, %ecx
	movzwl	%ax, %eax
	movzwl	4(%r12,%rax,2), %r15d
	movzwl	%cx, %r14d
	subl	%ecx, %r15d
	movzwl	%r15w, %edi
	addq	%r12, %rdi
	movq	%r13, %rbx
	movl	%r8d, %r13d
	movq	%rsi, -64(%rbp)         # 8-byte Spill
	movq	%r14, %rdx
	callq	memmove
	movzwl	(%r12), %eax
	movw	%r15w, 2(%r12,%rax,2)
	leaq	2(%rax), %rcx
	movw	%cx, (%r12)
	leal	(%rax,%rax), %ecx
	negl	%ecx
	addl	%r15d, %ecx
	addl	$-10, %ecx
	leal	2(%rax), %edx
	movzwl	%dx, %edx
	movw	%cx, 2(%r12,%rdx,2)
	movw	%r15w, 4(%r12,%rdx,2)
	movw	$1, 4(%r12,%rax,2)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	__add_ovflpage
	testq	%rax, %rax
	je	.LBB0_21
# %bb.5:                                #   in Loop: Header=BB0_4 Depth=1
	movq	%rax, %rbx
	subl	%r14d, %r13d
	movl	%r13d, %r8d
	jne	.LBB0_2
# %bb.6:                                #   in Loop: Header=BB0_4 Depth=1
	movzwl	(%r12), %ecx
	movzwl	2(%r12,%rcx,2), %eax
	testl	%eax, %eax
	je	.LBB0_8
# %bb.7:                                #   in Loop: Header=BB0_4 Depth=1
	movl	-44(%rbp), %edx         # 4-byte Reload
	cmpl	%eax, %edx
	cmovlel	%edx, %eax
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
	movl	%r8d, -68(%rbp)         # 4-byte Spill
	movq	%r15, %rsi
	callq	memmove
	movl	-68(%rbp), %r8d         # 4-byte Reload
	movq	-88(%rbp), %rax         # 8-byte Reload
	addq	%rax, %r15
	movq	%r15, -56(%rbp)         # 8-byte Spill
	subl	%eax, -44(%rbp)         # 4-byte Folded Spill
	movq	%rax, %rdx
	movq	-96(%rbp), %rax         # 8-byte Reload
	movw	$3, -4(%r12,%rax,2)
	movzwl	(%r12), %eax
	subw	%dx, 2(%r12,%rax,2)
	addq	$2, %rax
	jmp	.LBB0_9
.LBB0_8:                                #   in Loop: Header=BB0_4 Depth=1
	leaq	-2(%rcx), %rax
	movw	$2, %r13w
.LBB0_9:                                #   in Loop: Header=BB0_4 Depth=1
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movw	%r13w, (%r12,%rax,2)
	movq	%rbx, %r13
	jmp	.LBB0_3
.LBB0_10:
	movl	-44(%rbp), %r14d        # 4-byte Reload
	jmp	.LBB0_13
	.p2align	4, 0x90
.LBB0_11:                               #   in Loop: Header=BB0_13 Depth=1
	movw	$3, 4(%r12,%rcx,2)
.LBB0_12:                               #   in Loop: Header=BB0_13 Depth=1
	orb	$1, 40(%r13)
	addq	%r15, -56(%rbp)         # 8-byte Folded Spill
	movzwl	%ax, %ecx
	leaq	(%r12,%rcx,2), %rcx
	addq	$2, %rcx
.LBB0_13:                               # =>This Inner Loop Header: Depth=1
	testl	%r14d, %r14d
	je	.LBB0_19
# %bb.14:                               #   in Loop: Header=BB0_13 Depth=1
	movzwl	(%rcx), %ecx
	addl	$-8, %ecx
	movzwl	%cx, %edx
	cmpl	%edx, %r14d
	cmovlel	%r14d, %ecx
	jne	.LBB0_16
# %bb.15:                               #   in Loop: Header=BB0_13 Depth=1
	movslq	%r14d, %rdx
	xorl	%esi, %esi
	movq	-104(%rbp), %rdi        # 8-byte Reload
	cmpq	%rdx, 8(%rdi)
	sete	%sil
	subl	%esi, %ecx
.LBB0_16:                               #   in Loop: Header=BB0_13 Depth=1
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
	subl	%r15d, %r14d
	je	.LBB0_11
# %bb.17:                               #   in Loop: Header=BB0_13 Depth=1
	movw	$2, 4(%r12,%rcx,2)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	movq	%r13, %rsi
	callq	__add_ovflpage
	testq	%rax, %rax
	je	.LBB0_21
# %bb.18:                               #   in Loop: Header=BB0_13 Depth=1
	movq	%rax, %r13
	movq	32(%rax), %r12
	movzwl	(%r12), %eax
	jmp	.LBB0_12
.LBB0_19:
	xorl	%eax, %eax
	jmp	.LBB0_22
.LBB0_21:
	movl	$-1, %eax
.LBB0_22:
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
	subq	$24, %rsp
	movq	%rsi, %rbx
	movq	%rdi, %r14
	leaq	32(%rsi), %rax
	xorl	%r12d, %r12d
	movl	$1, %r13d
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB1_2
	.p2align	4, 0x90
.LBB1_1:                                #   in Loop: Header=BB1_2 Depth=1
	leaq	32(%rbx), %rax
	movq	%rbx, %r12
	testq	%rbx, %rbx
	je	.LBB1_10
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	movq	(%rax), %rax
	movzwl	4(%rax), %ecx
	testl	%r15d, %r15d
	je	.LBB1_5
# %bb.3:                                #   in Loop: Header=BB1_2 Depth=1
	cmpw	$3, %cx
	je	.LBB1_11
# %bb.4:                                #   in Loop: Header=BB1_2 Depth=1
	andl	$65534, %ecx            # imm = 0xFFFE
	cmpw	$2, %cx
	cmovel	%r13d, %r15d
	jmp	.LBB1_7
	.p2align	4, 0x90
.LBB1_5:                                #   in Loop: Header=BB1_2 Depth=1
	movl	%ecx, %edx
	andl	$65534, %edx            # imm = 0xFFFE
	cmpw	$2, %dx
	cmovel	%r13d, %r15d
	cmpw	$3, %cx
	jne	.LBB1_7
# %bb.6:                                #   in Loop: Header=BB1_2 Depth=1
	movzwl	(%rax), %ecx
	movzwl	%cx, %edx
	cmpw	$0, 2(%rax,%rdx,2)
	je	.LBB1_8
	jmp	.LBB1_12
	.p2align	4, 0x90
.LBB1_7:                                #   in Loop: Header=BB1_2 Depth=1
	movzwl	(%rax), %edx
.LBB1_8:                                #   in Loop: Header=BB1_2 Depth=1
	movzwl	-2(%rax,%rdx,2), %esi
	orb	$1, 40(%rbx)
	movq	%r14, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, %rbx
	testq	%r12, %r12
	je	.LBB1_1
# %bb.9:                                #   in Loop: Header=BB1_2 Depth=1
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__free_ovflpage
	jmp	.LBB1_1
.LBB1_10:
	movl	$-1, %eax
	jmp	.LBB1_20
.LBB1_11:
	movzwl	(%rax), %ecx
.LBB1_12:
	movq	-56(%rbp), %rdx         # 8-byte Reload
	movq	(%rdx), %rdx
	cmpw	$3, %cx
	jb	.LBB1_14
# %bb.13:
	movzwl	%cx, %esi
	movzwl	-2(%rax,%rsi,2), %eax
	movw	%ax, 2(%rdx)
	movw	$0, 4(%rdx)
	movq	16(%rbx), %rax
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	%rax, 16(%rdi)
	jmp	.LBB1_15
.LBB1_14:
	movq	-48(%rbp), %rdi         # 8-byte Reload
	movq	$0, 16(%rdi)
.LBB1_15:
	leal	-2(%rcx), %eax
	movw	%ax, (%rdx)
	movl	12(%r14), %esi
	addl	%ecx, %ecx
	negl	%ecx
	addl	%esi, %ecx
	addl	$-2, %ecx
	movzwl	%ax, %eax
	movw	%cx, 2(%rdx,%rax,2)
	addl	$-1, %esi
	movw	%si, 4(%rdx,%rax,2)
	orb	$1, 40(%rdi)
	testq	%rbx, %rbx
	je	.LBB1_17
# %bb.16:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	__free_ovflpage
.LBB1_17:
	cmpq	%rbx, %r12
	je	.LBB1_19
# %bb.18:
	movq	%r14, %rdi
	movq	%r12, %rsi
	callq	__free_ovflpage
.LBB1_19:
	addl	$-1, 56(%r14)
	xorl	%eax, %eax
.LBB1_20:
	addq	$24, %rsp
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
	movq	%rsi, %r13
	movq	%rdi, %r14
	movq	32(%rsi), %rdi
	movzwl	12(%r14), %ecx
	movslq	%edx, %rsi
	subw	(%rdi,%rsi,2), %cx
	movzwl	%cx, %ebx
	cmpl	%r8d, %ebx
	jle	.LBB2_2
# %bb.1:
	movq	%rdi, %r15
	movl	%r8d, %esi
	jmp	.LBB2_10
.LBB2_2:                                # %.preheader
	movl	%r8d, %esi
	movq	%rdi, %r15
	movl	%r8d, -44(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movslq	%edx, %r12
	cmpw	$1, 2(%r15,%r12,2)
	jne	.LBB2_10
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%esi, -48(%rbp)         # 4-byte Spill
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movzwl	(%r15,%r12,2), %eax
	addq	%rax, %rdi
	movzwl	%cx, %ebx
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r9, %rsi
	movq	%rbx, %rdx
	callq	memcmp
	testl	%eax, %eax
	jne	.LBB2_5
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	movzwl	4(%r15,%r12,2), %esi
	movq	%r14, %rdi
	movq	%r13, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB2_7
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	movq	%rax, %r13
	movl	-48(%rbp), %esi         # 4-byte Reload
	subl	-52(%rbp), %esi         # 4-byte Folded Reload
	movq	32(%rax), %rdi
	movzwl	12(%r14), %ecx
	subw	2(%rdi), %cx
	movq	-64(%rbp), %r9          # 8-byte Reload
	addq	%rbx, %r9
	movzwl	%cx, %ebx
	movl	$1, %edx
	movq	%rdi, %r15
	movl	-44(%rbp), %r8d         # 4-byte Reload
	cmpl	%r8d, %ebx
	jle	.LBB2_3
# %bb.9:
	movl	$1, %edx
	movq	%rdi, %r15
.LBB2_10:
	movl	$-2, %eax
	cmpl	%ebx, %esi
	jne	.LBB2_12
# %bb.11:
	movslq	%edx, %rbx
	movzwl	(%r15,%rbx,2), %eax
	addq	%rax, %rdi
	movzwl	%cx, %edx
	movq	%r9, %rsi
	callq	memcmp
	testl	%eax, %eax
	movl	$-2, %eax
	cmovnel	%eax, %ebx
	movl	%ebx, %eax
	jmp	.LBB2_12
.LBB2_5:
	movl	$-2, %eax
	jmp	.LBB2_12
.LBB2_7:
	movl	$-3, %eax
.LBB2_12:
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
	testq	%rax, %rax
	je	.LBB3_10
.LBB3_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rax), %rcx
	movzwl	(%rcx), %edx
	cmpw	$3, 4(%rcx)
	jne	.LBB3_1
# %bb.3:                                #   in Loop: Header=BB3_2 Depth=1
	cmpw	$2, %dx
	je	.LBB3_8
# %bb.4:                                #   in Loop: Header=BB3_2 Depth=1
	cmpw	$0, (%rcx,%rdx,2)
	je	.LBB3_6
# %bb.5:                                #   in Loop: Header=BB3_2 Depth=1
	cmpw	$0, 2(%rcx,%rdx,2)
	je	.LBB3_1
.LBB3_6:
	movq	%rax, (%r14)
	cmpw	$3, %dx
	jb	.LBB3_9
# %bb.7:
	movzwl	6(%rcx), %ebx
	jmp	.LBB3_10
.LBB3_8:
	movq	%rax, (%r14)
.LBB3_9:
	xorl	%ebx, %ebx
.LBB3_10:
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
	movl	%r8d, %r13d
	movq	%rcx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	32(%rsi), %rax
	addl	$1, %edx
	movslq	%edx, %rcx
	.p2align	4, 0x90
.LBB4_1:                                # =>This Inner Loop Header: Depth=1
	movzwl	(%rax,%rcx,2), %ecx
	cmpw	$1, %cx
	jne	.LBB4_4
# %bb.2:                                #   in Loop: Header=BB4_1 Depth=1
	movzwl	(%rax), %ecx
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB4_7
# %bb.3:                                #   in Loop: Header=BB4_1 Depth=1
	movq	%rax, %rbx
	movq	32(%rax), %rax
	movl	$2, %ecx
	jmp	.LBB4_1
.LBB4_4:
	cmpw	$2, %cx
	jne	.LBB4_9
# %bb.5:
	movzwl	(%rax), %ecx
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB4_7
# %bb.6:
	movq	32(%rax), %rcx
	movzwl	24(%rax), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movzwl	2(%rcx), %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	xorl	%r12d, %r12d
	movq	%rax, %rbx
	jmp	.LBB4_16
.LBB4_9:
	movl	%r13d, -52(%rbp)        # 4-byte Spill
	movzwl	(%rax), %ecx
	cmpw	$0, 2(%rax,%rcx,2)
	movzwl	(%rax,%rcx,2), %r13d
	je	.LBB4_14
# %bb.10:
	movzwl	%r13w, %edx
	movq	%rax, %rsi
	addq	%rdx, %rsi
	movq	%rsi, (%r14)
	movzwl	2(%rax), %esi
	subq	%rdx, %rsi
	movq	%rsi, 8(%r14)
	xorl	%r13d, %r13d
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB4_8
# %bb.11:
	cmpw	$2, %cx
	jne	.LBB4_20
# %bb.12:
	movq	$0, 304(%r15)
	addl	$1, 312(%r15)
	movl	$1, 316(%r15)
	jmp	.LBB4_8
.LBB4_14:
	movzwl	2(%rax), %r12d
	movzwl	24(%rbx), %edx
	movl	%edx, -48(%rbp)         # 4-byte Spill
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	testq	%rax, %rax
	je	.LBB4_7
# %bb.15:
	movl	%r13d, -44(%rbp)        # 4-byte Spill
	subl	%r13d, %r12d
	movl	-52(%rbp), %r13d        # 4-byte Reload
.LBB4_16:
	movzwl	%r12w, %r12d
	movq	%r15, %rdi
	movq	%rax, %rsi
	movl	%r12d, %edx
	movl	%r13d, %ecx
	callq	collect_data
	cltq
	movq	%rax, 8(%r14)
	movl	$-1, %r13d
	cmpl	$-1, %eax
	je	.LBB4_8
# %bb.17:
	movl	-48(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%rbx)
	jne	.LBB4_19
# %bb.18:
	movq	288(%r15), %rdi
	movzwl	-44(%rbp), %esi         # 2-byte Folded Reload
	addq	32(%rbx), %rsi
	movq	%r12, %rdx
	callq	memmove
	movq	288(%r15), %rax
	movq	%rax, (%r14)
	xorl	%r13d, %r13d
	jmp	.LBB4_8
.LBB4_19:
	callq	__errno
	movl	$22, (%rax)
	jmp	.LBB4_8
.LBB4_20:
	movzwl	-2(%rax,%rcx,2), %esi
	xorl	%r13d, %r13d
	movq	%r15, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, 304(%r15)
	testq	%rax, %rax
	je	.LBB4_7
# %bb.21:
	movl	$1, 316(%r15)
	movq	32(%rax), %rax
	cmpw	$0, (%rax)
	jne	.LBB4_8
# %bb.22:
	addl	$1, 312(%r15)
	movq	$0, 304(%r15)
	jmp	.LBB4_8
.LBB4_7:
	movl	$-1, %r13d
.LBB4_8:
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
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%eax, -60(%rbp)         # 4-byte Spill
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	jne	.LBB5_11
# %bb.1:
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	addl	%edx, %ebx
	movq	288(%r14), %rdi
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	free
.LBB5_3:
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movslq	%ebx, %rdi
	callq	malloc
	movq	%rax, 288(%r14)
	movl	$-1, %r13d
	testq	%rax, %rax
	je	.LBB5_16
# %bb.4:
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB5_5
# %bb.6:
	movl	$1, 316(%r14)
	movzwl	(%r12), %eax
	cmpq	$2, %rax
	jne	.LBB5_8
# %bb.7:
	movq	$0, 304(%r14)
	addl	$1, 312(%r14)
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB5_13
.LBB5_11:
	movzwl	(%r12), %eax
	movzwl	-2(%r12,%rax,2), %esi
	movq	%r14, %rdi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
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
	testq	%rax, %rax
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB5_16
# %bb.9:
	movq	32(%rax), %rax
	cmpw	$0, (%rax)
	jne	.LBB5_13
# %bb.10:
	addl	$1, 312(%r14)
	movq	$0, 304(%r14)
.LBB5_13:
	movl	-60(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%r15)
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
	cmpl	$-1, %eax
	je	.LBB6_1
# %bb.2:
	movq	296(%rbx), %rax
	movq	%rax, (%r15)
	jmp	.LBB6_3
.LBB6_1:
	movl	$-1, %r14d
.LBB6_3:
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
	movq	%rdi, %r13
	movq	32(%rsi), %r12
	movslq	12(%rdi), %r14
	movzwl	2(%r12), %eax
	subq	%rax, %r14
	movzwl	24(%rsi), %esi
	leal	(%r14,%rdx), %ebx
	movzwl	4(%r12), %eax
	andl	$-2, %eax
	cmpw	$2, %ax
	movq	%rdx, -72(%rbp)         # 8-byte Spill
	movl	%ebx, -44(%rbp)         # 4-byte Spill
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movl	%r8d, -48(%rbp)         # 4-byte Spill
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	jne	.LBB7_5
# %bb.1:
	movq	296(%r13), %rdi
	testq	%rdi, %rdi
	je	.LBB7_3
# %bb.2:
	callq	free
.LBB7_3:
	movslq	%ebx, %rdi
	callq	malloc
	movq	%rax, 296(%r13)
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# %bb.4:
	movq	%r13, %rdi
	movq	%r15, %rsi
	movl	$1, %edx
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	callq	__big_return
	testl	%eax, %eax
	jne	.LBB7_10
	jmp	.LBB7_7
.LBB7_5:
	movzwl	(%r12), %eax
	movzwl	-2(%r12,%rax,2), %esi
	movq	%r13, %rdi
	movq	%r15, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movl	$-1, %ebx
	testq	%rax, %rax
	je	.LBB7_10
# %bb.6:
	movq	%r13, %rdi
	movq	%rax, %rsi
	movl	-44(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	-48(%rbp), %r8d         # 4-byte Reload
	callq	collect_key
	movl	%eax, -44(%rbp)         # 4-byte Spill
	testl	%eax, %eax
	jle	.LBB7_10
.LBB7_7:
	movl	-52(%rbp), %eax         # 4-byte Reload
	cmpl	%eax, 24(%r15)
	jne	.LBB7_8
# %bb.9:
	movslq	-72(%rbp), %rdi         # 4-byte Folded Reload
	addq	296(%r13), %rdi
	movzwl	2(%r12), %esi
	addq	32(%r15), %rsi
	movq	%r14, %rdx
	callq	memmove
	movl	-44(%rbp), %ebx         # 4-byte Reload
	jmp	.LBB7_10
.LBB7_8:
	callq	__errno
	movl	$22, (%rax)
	movl	$-1, %ebx
.LBB7_10:
	movl	%ebx, %eax
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
	movq	%rcx, %r15
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r13
	leaq	-80(%rbp), %rcx
	movq	%r15, %rsi
	xorl	%edx, %edx
	xorl	%r8d, %r8d
	callq	collect_key
	movl	$-1, %ecx
	cmpl	$-1, %eax
	je	.LBB8_23
# %bb.1:
	movl	%ebx, -52(%rbp)         # 4-byte Spill
	movq	296(%r13), %rsi
	movq	%r13, %rdi
	movl	%eax, %edx
	callq	__call_hash
	movl	%eax, -44(%rbp)         # 4-byte Spill
	movq	%r15, %rbx
	jmp	.LBB8_2
	.p2align	4, 0x90
.LBB8_7:                                #   in Loop: Header=BB8_2 Depth=1
	movzwl	-2(%rax,%rcx,2), %esi
	movq	%r13, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	__get_buf
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB8_8
.LBB8_2:                                # =>This Inner Loop Header: Depth=1
	movq	32(%rbx), %rax
	movzwl	(%rax), %ecx
	cmpw	$3, 4(%rax)
	jne	.LBB8_7
# %bb.3:                                #   in Loop: Header=BB8_2 Depth=1
	cmpw	$2, %cx
	je	.LBB8_4
# %bb.5:                                #   in Loop: Header=BB8_2 Depth=1
	cmpw	$0, (%rax,%rcx,2)
	je	.LBB8_9
# %bb.6:                                #   in Loop: Header=BB8_2 Depth=1
	cmpw	$0, 2(%rax,%rcx,2)
	je	.LBB8_7
.LBB8_9:
	leaq	32(%rbx), %r9
	cmpw	$2, %cx
	jbe	.LBB8_10
# %bb.18:
	movzwl	6(%rax), %esi
	movq	16(%rbp), %rax
	movw	%si, 24(%rax)
	testl	%esi, %esi
	je	.LBB8_12
# %bb.19:
	movq	%r13, %rdi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	movq	%r9, -64(%rbp)          # 8-byte Spill
	callq	__get_buf
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	16(%rbp), %rcx
	movq	%rax, 16(%rcx)
	testq	%rax, %rax
	jne	.LBB8_13
# %bb.20:
	movl	$-1, %ecx
	jmp	.LBB8_23
.LBB8_8:
	movq	%r15, %rbx
.LBB8_4:
	movq	16(%rbp), %rax
	leaq	32(%rbx), %r9
	jmp	.LBB8_11
.LBB8_10:
	movq	16(%rbp), %rax
.LBB8_11:
	movw	$0, 24(%rax)
.LBB8_12:
	movq	$0, 16(%rax)
.LBB8_13:
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	-48(%rbp), %eax         # 4-byte Folded Reload
	movq	%r12, %rax
	cmovneq	%r14, %rax
	orb	$1, 40(%rax)
	movq	%r15, 16(%rax)
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
	movq	%r14, (%rcx)
	movq	%r12, 8(%rcx)
	movq	(%r9), %r14
	orb	$1, 40(%rbx)
	movzwl	(%r14), %eax
	cmpl	$3, %eax
	jb	.LBB8_16
# %bb.14:
	movzwl	8(%r14), %r15d
	movzwl	2(%r14,%rax,2), %ecx
	movzwl	4(%r14,%rax,2), %edx
	addl	$-2, %eax
	movw	%ax, (%r14)
	addl	$4, %ecx
	movzwl	%ax, %eax
	movw	%cx, 2(%r14,%rax,2)
	movw	%dx, 4(%r14,%rax,2)
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	__add_ovflpage
	testq	%rax, %rax
	movl	$-1, %ecx
	je	.LBB8_23
# %bb.15:
	movq	%rax, %rbx
	movw	%r15w, 8(%r14)
	movq	16(%rbp), %rcx
.LBB8_16:
	movl	-44(%rbp), %eax         # 4-byte Reload
	cmpl	-48(%rbp), %eax         # 4-byte Folded Reload
	je	.LBB8_21
# %bb.17:
	movq	%rbx, (%rcx)
	jmp	.LBB8_22
.LBB8_21:
	movq	%rbx, 8(%rcx)
.LBB8_22:
	xorl	%ecx, %ecx
.LBB8_23:
	movl	%ecx, %eax
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
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
