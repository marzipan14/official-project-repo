	.text
	.file	"intset.c"
	.globl	intsetNew               # -- Begin function intsetNew
	.p2align	4, 0x90
	.type	intsetNew,@function
intsetNew:                              # @intsetNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$8, %edi
	callq	zmalloc
	movq	$2, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	intsetNew, .Lfunc_end0-intsetNew
                                        # -- End function
	.globl	intsetAdd               # -- Begin function intsetAdd
	.p2align	4, 0x90
	.type	intsetAdd,@function
intsetAdd:                              # @intsetAdd
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %r15
	movq	%rsi, %r12
	movslq	%r12d, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB1_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	jmp	.LBB1_3
.LBB1_2:
	movswq	%r12w, %rax
	xorl	%ecx, %ecx
	cmpq	%r12, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_5
# %bb.4:
	movb	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, %ecx
	jae	.LBB1_34
# %bb.6:
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movq	%r12, %rax
	subq	$-2147483648, %rax      # imm = 0x80000000
	shrq	$32, %rax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, -72(%rbp)         # 8-byte Spill
	je	.LBB1_8
# %bb.7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	jmp	.LBB1_9
.LBB1_34:
	leaq	-56(%rbp), %rdx
	movq	%rdi, %rbx
	movq	%r12, %rsi
	callq	intsetSearch
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB1_38
# %bb.35:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_36
# %bb.37:
	movb	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	jmp	.LBB1_51
.LBB1_8:
	movswq	%r12w, %rax
	xorl	%ecx, %ecx
	cmpq	%r12, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	movslq	4(%rdi), %r13
	movl	%eax, (%rdi)
	leal	1(%r13), %esi
	imull	%eax, %esi
	addq	$8, %rsi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	movl	-44(%rbp), %ecx         # 4-byte Reload
	je	.LBB1_22
# %bb.10:
	movq	-72(%rbp), %r14         # 8-byte Reload
	shrq	$63, %r14
	leaq	6(,%r13), %r15
	addq	%r13, %r15
	leaq	4(,%r13,4), %r12
	addq	%r13, %r14
	movq	%r13, %rbx
	shlq	$3, %rbx
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB1_11
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_11 Depth=1
	movq	%rdx, (%rax,%r14,8)
.LBB1_21:                               #   in Loop: Header=BB1_11 Depth=1
	movl	-44(%rbp), %ecx         # 4-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-2, %r15
	addq	$-4, %r12
	addq	$-8, %rbx
	addq	$-1, %r14
	addl	$-1, %r13d
	je	.LBB1_22
.LBB1_11:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$8, %cl
	jne	.LBB1_13
# %bb.12:                               #   in Loop: Header=BB1_11 Depth=1
	leaq	(%rax,%rbx), %rsi
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rdx
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	jne	.LBB1_15
# %bb.14:                               #   in Loop: Header=BB1_11 Depth=1
	leaq	(%rax,%r12), %rsi
	movl	$4, %edx
	leaq	-56(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rax         # 8-byte Reload
	movslq	-56(%rbp), %rdx
	jmp	.LBB1_16
	.p2align	4, 0x90
.LBB1_15:                               #   in Loop: Header=BB1_11 Depth=1
	leaq	(%rax,%r15), %rsi
	movl	$2, %edx
	leaq	-56(%rbp), %rdi
	callq	memcpy
	movq	-64(%rbp), %rax         # 8-byte Reload
	movswq	-56(%rbp), %rdx
.LBB1_16:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	je	.LBB1_17
# %bb.18:                               #   in Loop: Header=BB1_11 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB1_20
# %bb.19:                               #   in Loop: Header=BB1_11 Depth=1
	movl	%edx, 4(%rax,%r14,4)
	jmp	.LBB1_21
	.p2align	4, 0x90
.LBB1_20:                               #   in Loop: Header=BB1_11 Depth=1
	movw	%dx, 6(%rax,%r14,2)
	jmp	.LBB1_21
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rsi         # 8-byte Reload
	testq	%rsi, %rsi
	js	.LBB1_23
# %bb.28:
	movslq	4(%rax), %rdx
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB1_30
# %bb.29:
	movq	%rsi, 8(%rax,%rdx,8)
	jmp	.LBB1_33
.LBB1_38:
	movl	4(%rbx), %esi
	addl	$1, %esi
	imull	(%rbx), %esi
	addq	$8, %rsi
	movq	%rbx, %rdi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %ebx
	movl	4(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	subl	%ebx, %edx
	jbe	.LBB1_45
# %bb.39:
	movl	%ebx, %ecx
	addl	$1, %ecx
	movl	(%rax), %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jne	.LBB1_41
# %bb.40:
	leaq	(%rax,%rbx,8), %rsi
	addq	$8, %rsi
	movl	%ecx, %ecx
	movq	%rax, %r14
	leaq	(%rax,%rcx,8), %rdi
	addq	$8, %rdi
	movl	$3, %ecx
	jmp	.LBB1_44
.LBB1_23:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB1_25
# %bb.24:
	movq	%rsi, 8(%rax)
	jmp	.LBB1_33
.LBB1_30:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB1_32
# %bb.31:
	movl	%esi, 8(%rax,%rdx,4)
	jmp	.LBB1_33
.LBB1_36:
	movq	%rbx, %rax
	jmp	.LBB1_51
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB1_27
# %bb.26:
	movl	%esi, 8(%rax)
	jmp	.LBB1_33
.LBB1_32:
	movw	%si, 8(%rax,%rdx,2)
	jmp	.LBB1_33
.LBB1_41:
	movq	%rax, %r14
	movq	%rax, %rdi
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %esi
	jne	.LBB1_43
# %bb.42:
	leaq	(%rdi,%rbx,4), %rsi
	movl	%ecx, %eax
	leaq	(%rdi,%rax,4), %rdi
	movl	$2, %ecx
	jmp	.LBB1_44
.LBB1_27:
	movw	%si, 8(%rax)
.LBB1_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_51
.LBB1_43:
	leaq	(%rdi,%rbx,2), %rsi
	movl	%ecx, %eax
	leaq	(%rdi,%rax,2), %rdi
	movl	$1, %ecx
.LBB1_44:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-56(%rbp), %ebx
	movq	%r14, %rax
.LBB1_45:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB1_47
# %bb.46:
	movslq	%ebx, %rcx
	movq	%r12, 8(%rax,%rcx,8)
	jmp	.LBB1_50
.LBB1_47:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %ecx
	jne	.LBB1_49
# %bb.48:
	movslq	%ebx, %rcx
	movl	%r12d, 8(%rax,%rcx,4)
	jmp	.LBB1_50
.LBB1_49:
	movslq	%ebx, %rcx
	movw	%r12w, 8(%rax,%rcx,2)
.LBB1_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$1, 4(%rax)
.LBB1_51:
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
.Lfunc_end1:
	.size	intsetAdd, .Lfunc_end1-intsetAdd
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function intsetSearch
	.type	intsetSearch,@function
intsetSearch:                           # @intsetSearch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdx, %r14
	movl	4(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	subl	$1, %ebx
	jae	.LBB2_3
.LBB2_1:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_36
# %bb.2:
	movl	$0, (%r14)
	jmp	.LBB2_35
.LBB2_3:
	movq	%rsi, %r15
	movq	%rdi, %r13
	movb	(%rdi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$8, %cl
	jne	.LBB2_5
# %bb.4:
	movslq	%ebx, %rax
	leaq	8(,%rax,8), %rsi
	addq	%r13, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	jmp	.LBB2_8
.LBB2_5:
	leaq	8(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	jne	.LBB2_7
# %bb.6:
	movslq	%ebx, %rcx
	leaq	(%rax,%rcx,4), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	jmp	.LBB2_8
.LBB2_7:
	movslq	%ebx, %rcx
	leaq	(%rax,%rcx,2), %rsi
	leaq	-48(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
.LBB2_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jge	.LBB2_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB2_36
# %bb.10:
	movl	4(%r13), %eax
	movl	%eax, (%r14)
	jmp	.LBB2_35
.LBB2_11:
	movb	(%r13), %al
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r13), %rsi
	cmpb	$8, %al
	jne	.LBB2_13
# %bb.12:
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	jmp	.LBB2_16
.LBB2_13:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdi
	cmpb	$4, %al
	jne	.LBB2_15
# %bb.14:
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	jmp	.LBB2_16
.LBB2_15:
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
.LBB2_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rax
	jg	.LBB2_1
# %bb.17:
	movq	%r15, -64(%rbp)         # 8-byte Spill
	movq	%r14, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	js	.LBB2_18
# %bb.19:
	leaq	8(%r13), %r15
	xorl	%r12d, %r12d
	jmp	.LBB2_20
	.p2align	4, 0x90
.LBB2_26:                               #   in Loop: Header=BB2_20 Depth=1
	leal	1(%r14), %r12d
.LBB2_29:                               #   in Loop: Header=BB2_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r12d, %ebx
	jl	.LBB2_30
.LBB2_20:                               # =>This Inner Loop Header: Depth=1
	leal	(%rbx,%r12), %r14d
	shrl	%r14d
	movzbl	(%r13), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %eax
	cmpb	$8, %cl
	jne	.LBB2_22
# %bb.21:                               #   in Loop: Header=BB2_20 Depth=1
	leaq	(%r15,%rax,8), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_22:                               #   in Loop: Header=BB2_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %cl
	jne	.LBB2_24
# %bb.23:                               #   in Loop: Header=BB2_20 Depth=1
	leaq	(%r15,%rax,4), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movslq	-48(%rbp), %rax
	jmp	.LBB2_25
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_20 Depth=1
	leaq	(%r15,%rax,2), %rsi
	movl	$2, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movswq	-48(%rbp), %rax
.LBB2_25:                               #   in Loop: Header=BB2_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jl	.LBB2_26
# %bb.27:                               #   in Loop: Header=BB2_20 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jle	.LBB2_30
# %bb.28:                               #   in Loop: Header=BB2_20 Depth=1
	leal	-1(%r14), %ebx
	jmp	.LBB2_29
.LBB2_18:
	xorl	%r12d, %r12d
	movq	$-1, %rax
	movl	$-1, %r14d
.LBB2_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-64(%rbp), %rax         # 8-byte Folded Reload
	jne	.LBB2_33
# %bb.31:
	movb	$1, %al
	movq	-56(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB2_37
# %bb.32:
	movl	%r14d, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_37
.LBB2_33:
	movq	-56(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_36
# %bb.34:
	movl	%r12d, (%rax)
.LBB2_35:
	movl	$42, __A_VARIABLE(%rip)
.LBB2_36:
	xorl	%eax, %eax
.LBB2_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	intsetSearch, .Lfunc_end2-intsetSearch
                                        # -- End function
	.globl	intsetRemove            # -- Begin function intsetRemove
	.p2align	4, 0x90
	.type	intsetRemove,@function
intsetRemove:                           # @intsetRemove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %rbx
	movq	%rdi, %r14
	movslq	%esi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB3_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	jmp	.LBB3_3
.LBB3_2:
	movswq	%si, %rax
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB3_5
# %bb.4:
	movl	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_5:
	cmpl	%eax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB3_17
# %bb.6:
	leaq	-28(%rbp), %rdx
	movq	%r14, %rdi
	callq	intsetSearch
	movl	$42, __A_VARIABLE(%rip)
	testb	%al, %al
	je	.LBB3_17
# %bb.7:
	movl	4(%r14), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB3_9
# %bb.8:
	movl	$1, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_9:
	movl	-28(%rbp), %eax
	addl	$-1, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%r15d, %eax
	jae	.LBB3_16
# %bb.10:
	leal	1(%rax), %ecx
	movl	(%r14), %esi
	movl	4(%r14), %edx
	subl	%ecx, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jne	.LBB3_12
# %bb.11:
	movl	%ecx, %ecx
	leaq	(%r14,%rcx,8), %rsi
	addq	$8, %rsi
	leaq	(%r14,%rax,8), %rdi
	addq	$8, %rdi
	movl	$3, %ecx
	jmp	.LBB3_15
.LBB3_12:
	leaq	8(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ecx
	cmpl	$4, %esi
	jne	.LBB3_14
# %bb.13:
	leaq	(%rdi,%rcx,4), %rsi
	leaq	(%rdi,%rax,4), %rdi
	movl	$2, %ecx
	jmp	.LBB3_15
.LBB3_14:
	leaq	(%rdi,%rcx,2), %rsi
	leaq	(%rdi,%rax,2), %rdi
	movl	$1, %ecx
.LBB3_15:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_16:
	movl	(%r14), %esi
	imull	%r15d, %esi
	addq	$8, %rsi
	movq	%r14, %rdi
	callq	zrealloc
	movq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, 4(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_17:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	intsetRemove, .Lfunc_end3-intsetRemove
                                        # -- End function
	.globl	intsetFind              # -- Begin function intsetFind
	.p2align	4, 0x90
	.type	intsetFind,@function
intsetFind:                             # @intsetFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movslq	%esi, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rsi, %rax
	je	.LBB4_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	jmp	.LBB4_3
.LBB4_2:
	movswq	%si, %rax
	xorl	%ecx, %ecx
	cmpq	%rsi, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB4_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%eax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB4_5
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB4_6
.LBB4_5:
	xorl	%edx, %edx
	callq	intsetSearch
	testb	%al, %al
	setne	%al
	movl	$42, __A_VARIABLE(%rip)
.LBB4_6:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.Lfunc_end4:
	.size	intsetFind, .Lfunc_end4-intsetFind
                                        # -- End function
	.globl	intsetRandom            # -- Begin function intsetRandom
	.p2align	4, 0x90
	.type	intsetRandom,@function
intsetRandom:                           # @intsetRandom
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %rbx
	callq	rand
	xorl	%edx, %edx
	divl	4(%rbx)
	movb	(%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$8, %al
	jne	.LBB5_2
# %bb.1:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-24(%rbp), %rax
	jmp	.LBB5_5
.LBB5_2:
	addq	$8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	jne	.LBB5_4
# %bb.3:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,4), %rsi
	leaq	-16(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-16(%rbp), %rax
	jmp	.LBB5_5
.LBB5_4:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,2), %rsi
	leaq	-10(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-10(%rbp), %rax
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	intsetRandom, .Lfunc_end5-intsetRandom
                                        # -- End function
	.globl	intsetGet               # -- Begin function intsetGet
	.p2align	4, 0x90
	.type	intsetGet,@function
intsetGet:                              # @intsetGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$24, %rsp
	cmpl	%esi, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jbe	.LBB6_1
# %bb.2:
	movq	%rdx, %rbx
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$8, %al
	jne	.LBB6_4
# %bb.3:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-24(%rbp), %rax
	jmp	.LBB6_7
.LBB6_1:
	xorl	%eax, %eax
	jmp	.LBB6_8
.LBB6_4:
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$4, %al
	jne	.LBB6_6
# %bb.5:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,4), %rsi
	leaq	-16(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-16(%rbp), %rax
	jmp	.LBB6_7
.LBB6_6:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,2), %rsi
	leaq	-10(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-10(%rbp), %rax
.LBB6_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rbx)
	movb	$1, %al
.LBB6_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end6:
	.size	intsetGet, .Lfunc_end6-intsetGet
                                        # -- End function
	.globl	intsetLen               # -- Begin function intsetLen
	.p2align	4, 0x90
	.type	intsetLen,@function
intsetLen:                              # @intsetLen
# %bb.0:
	movl	4(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end7:
	.size	intsetLen, .Lfunc_end7-intsetLen
                                        # -- End function
	.globl	intsetBlobLen           # -- Begin function intsetBlobLen
	.p2align	4, 0x90
	.type	intsetBlobLen,@function
intsetBlobLen:                          # @intsetBlobLen
# %bb.0:
	movl	(%rdi), %eax
	imull	4(%rdi), %eax
	addq	$8, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end8:
	.size	intsetBlobLen, .Lfunc_end8-intsetBlobLen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
