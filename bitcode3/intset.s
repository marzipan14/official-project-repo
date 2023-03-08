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
	movq	%rdx, %r14
	movq	%rsi, %r13
	movslq	%r13d, %rcx
	movl	$8, %eax
	cmpq	%rsi, %rcx
	jne	.LBB1_2
# %bb.1:
	movswq	%r13w, %rax
	xorl	%ecx, %ecx
	cmpq	%r13, %rax
	setne	%cl
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB1_2:
	testq	%r14, %r14
	je	.LBB1_4
# %bb.3:
	movb	$1, (%r14)
.LBB1_4:
	movl	(%rdi), %ecx
	cmpl	%eax, %ecx
	jae	.LBB1_31
# %bb.5:
	movl	%ecx, -64(%rbp)         # 4-byte Spill
	movq	%r13, %rax
	subq	$-2147483648, %rax      # imm = 0x80000000
	shrq	$32, %rax
	movl	$8, %eax
	jne	.LBB1_7
# %bb.6:
	movswq	%r13w, %rax
	xorl	%ecx, %ecx
	cmpq	%r13, %rax
	setne	%cl
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB1_7:
	movq	%r13, -72(%rbp)         # 8-byte Spill
	movslq	4(%rdi), %r13
	movl	%eax, (%rdi)
	leal	1(%r13), %esi
	imull	%eax, %esi
	addq	$8, %rsi
	callq	zrealloc
	movq	%rax, %rdi
	testq	%r13, %r13
	movl	-64(%rbp), %eax         # 4-byte Reload
	je	.LBB1_20
# %bb.8:
	movq	-72(%rbp), %rbx         # 8-byte Reload
	shrq	$63, %rbx
	leaq	6(,%r13), %r15
	addq	%r13, %r15
	leaq	4(,%r13,4), %r14
	addq	%r13, %rbx
	movq	%r13, %r12
	shlq	$3, %r12
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	jmp	.LBB1_9
	.p2align	4, 0x90
.LBB1_18:                               #   in Loop: Header=BB1_9 Depth=1
	movw	%ax, 6(%rdi,%rbx,2)
.LBB1_19:                               #   in Loop: Header=BB1_9 Depth=1
	movl	-64(%rbp), %eax         # 4-byte Reload
	addq	$-2, %r15
	addq	$-4, %r14
	addq	$-8, %r12
	addq	$-1, %rbx
	addl	$-1, %r13d
	je	.LBB1_20
.LBB1_9:                                # =>This Inner Loop Header: Depth=1
	cmpb	$4, %al
	je	.LBB1_12
# %bb.10:                               #   in Loop: Header=BB1_9 Depth=1
	cmpb	$8, %al
	jne	.LBB1_13
# %bb.11:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	(%rdi,%r12), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rax
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_12:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	(%rdi,%r14), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movslq	-48(%rbp), %rax
	jmp	.LBB1_14
	.p2align	4, 0x90
.LBB1_13:                               #   in Loop: Header=BB1_9 Depth=1
	leaq	(%rdi,%r15), %rsi
	movl	$2, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movswq	-48(%rbp), %rax
.LBB1_14:                               #   in Loop: Header=BB1_9 Depth=1
	movl	(%rdi), %ecx
	cmpl	$4, %ecx
	je	.LBB1_17
# %bb.15:                               #   in Loop: Header=BB1_9 Depth=1
	cmpl	$8, %ecx
	jne	.LBB1_18
# %bb.16:                               #   in Loop: Header=BB1_9 Depth=1
	movq	%rax, (%rdi,%rbx,8)
	jmp	.LBB1_19
	.p2align	4, 0x90
.LBB1_17:                               #   in Loop: Header=BB1_9 Depth=1
	movl	%eax, 4(%rdi,%rbx,4)
	jmp	.LBB1_19
.LBB1_31:
	movl	4(%rdi), %r12d
	xorl	%r15d, %r15d
	subl	$1, %r12d
	jb	.LBB1_39
# %bb.32:
	movslq	%r12d, %rax
	cmpb	$4, %cl
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	je	.LBB1_35
# %bb.33:
	cmpb	$8, %cl
	jne	.LBB1_36
# %bb.34:
	leaq	(%rdi,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jge	.LBB1_42
	jmp	.LBB1_38
.LBB1_20:
	movq	-72(%rbp), %rdx         # 8-byte Reload
	testq	%rdx, %rdx
	js	.LBB1_21
# %bb.26:
	movslq	4(%rdi), %rax
	movl	(%rdi), %ecx
	cmpl	$4, %ecx
	je	.LBB1_29
# %bb.27:
	cmpl	$8, %ecx
	jne	.LBB1_30
# %bb.28:
	movq	%rdx, 8(%rdi,%rax,8)
	jmp	.LBB1_73
.LBB1_21:
	movl	(%rdi), %eax
	cmpl	$4, %eax
	je	.LBB1_24
# %bb.22:
	cmpl	$8, %eax
	jne	.LBB1_25
# %bb.23:
	movq	%rdx, 8(%rdi)
	jmp	.LBB1_73
.LBB1_29:
	movl	%edx, 8(%rdi,%rax,4)
	jmp	.LBB1_73
.LBB1_30:
	movw	%dx, 8(%rdi,%rax,2)
	jmp	.LBB1_73
.LBB1_35:
	leaq	(%rdi,%rax,4), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jl	.LBB1_38
.LBB1_42:
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movb	(%rcx), %al
	leaq	8(%rcx), %rsi
	leaq	-48(%rbp), %rdi
	cmpb	$4, %al
	je	.LBB1_45
# %bb.43:
	cmpb	$8, %al
	jne	.LBB1_46
# %bb.44:
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jle	.LBB1_48
	jmp	.LBB1_39
.LBB1_36:
	leaq	(%rdi,%rax,2), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jge	.LBB1_42
.LBB1_38:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movl	4(%rdi), %r15d
	jmp	.LBB1_39
.LBB1_24:
	movl	%edx, 8(%rdi)
	jmp	.LBB1_73
.LBB1_25:
	movw	%dx, 8(%rdi)
	jmp	.LBB1_73
.LBB1_45:
	movl	$4, %edx
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movslq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jle	.LBB1_48
	jmp	.LBB1_39
.LBB1_46:
	movl	$2, %edx
	callq	memcpy
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movswq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jg	.LBB1_39
.LBB1_48:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	testl	%r12d, %r12d
	js	.LBB1_49
# %bb.50:
	leaq	8(%rdi), %r14
	xorl	%r15d, %r15d
	jmp	.LBB1_51
	.p2align	4, 0x90
.LBB1_57:                               #   in Loop: Header=BB1_51 Depth=1
	addl	$1, %ebx
	movl	%ebx, %r15d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	cmpl	%r15d, %r12d
	jl	.LBB1_61
.LBB1_51:                               # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %ebx
	shrl	%ebx
	movzbl	(%rdi), %eax
	cmpb	$4, %al
	je	.LBB1_54
# %bb.52:                               #   in Loop: Header=BB1_51 Depth=1
	cmpb	$8, %al
	jne	.LBB1_55
# %bb.53:                               #   in Loop: Header=BB1_51 Depth=1
	movl	%ebx, %eax
	leaq	(%r14,%rax,8), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jl	.LBB1_57
	jmp	.LBB1_58
	.p2align	4, 0x90
.LBB1_54:                               #   in Loop: Header=BB1_51 Depth=1
	movl	%ebx, %eax
	leaq	(%r14,%rax,4), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jl	.LBB1_57
	jmp	.LBB1_58
	.p2align	4, 0x90
.LBB1_55:                               #   in Loop: Header=BB1_51 Depth=1
	movl	%ebx, %eax
	leaq	(%r14,%rax,2), %rsi
	movl	$2, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%r13, %rax
	jl	.LBB1_57
.LBB1_58:                               #   in Loop: Header=BB1_51 Depth=1
	movq	-56(%rbp), %rdi         # 8-byte Reload
	jle	.LBB1_61
# %bb.59:                               #   in Loop: Header=BB1_51 Depth=1
	addl	$-1, %ebx
	movl	%ebx, %r12d
	cmpl	%r15d, %r12d
	jge	.LBB1_51
	jmp	.LBB1_61
.LBB1_49:
	movq	$-1, %rax
	xorl	%r15d, %r15d
.LBB1_61:
	cmpq	%r13, %rax
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB1_39
# %bb.62:
	testq	%rax, %rax
	je	.LBB1_74
# %bb.63:
	movb	$0, (%rax)
	jmp	.LBB1_74
.LBB1_39:
	movl	4(%rdi), %esi
	addl	$1, %esi
	imull	(%rdi), %esi
	addq	$8, %rsi
	callq	zrealloc
	movq	%rax, %rdi
	movl	4(%rax), %edx
	subl	%r15d, %edx
	jbe	.LBB1_68
# %bb.40:
	leal	1(%r15), %eax
	movl	(%rdi), %esi
	cmpl	$8, %esi
	jne	.LBB1_64
# %bb.41:
	movl	%r15d, %ecx
	leaq	(%rdi,%rcx,8), %rsi
	addq	$8, %rsi
	movl	%eax, %eax
	movq	%rdi, %r14
	leaq	(%rdi,%rax,8), %rdi
	addq	$8, %rdi
	movl	$3, %ecx
	jmp	.LBB1_67
.LBB1_64:
	movq	%rdi, %r14
	movq	%rdi, %rcx
	addq	$8, %rcx
	cmpl	$4, %esi
	jne	.LBB1_66
# %bb.65:
	movl	%r15d, %esi
	leaq	(%rcx,%rsi,4), %rsi
	movl	%eax, %eax
	leaq	(%rcx,%rax,4), %rdi
	movl	$2, %ecx
	jmp	.LBB1_67
.LBB1_66:
	movl	%r15d, %esi
	leaq	(%rcx,%rsi,2), %rsi
	movl	%eax, %eax
	leaq	(%rcx,%rax,2), %rdi
	movl	$1, %ecx
.LBB1_67:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	callq	memmove
	movq	%r14, %rdi
.LBB1_68:
	movl	(%rdi), %eax
	cmpl	$4, %eax
	je	.LBB1_71
# %bb.69:
	cmpl	$8, %eax
	jne	.LBB1_72
# %bb.70:
	movslq	%r15d, %rax
	movq	%r13, 8(%rdi,%rax,8)
	jmp	.LBB1_73
.LBB1_71:
	movslq	%r15d, %rax
	movl	%r13d, 8(%rdi,%rax,4)
	jmp	.LBB1_73
.LBB1_72:
	movslq	%r15d, %rax
	movw	%r13w, 8(%rdi,%rax,2)
.LBB1_73:
	addl	$1, 4(%rdi)
.LBB1_74:
	movq	%rdi, %rax
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
	.globl	intsetRemove            # -- Begin function intsetRemove
	.p2align	4, 0x90
	.type	intsetRemove,@function
intsetRemove:                           # @intsetRemove
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
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movslq	%ebx, %rcx
	movl	$8, %eax
	cmpq	%rsi, %rcx
	jne	.LBB2_2
# %bb.1:
	movswq	%bx, %rax
	xorl	%ecx, %ecx
	cmpq	%rbx, %rax
	setne	%cl
	leal	(%rcx,%rcx), %eax
	addl	$2, %eax
.LBB2_2:
	testq	%r14, %r14
	je	.LBB2_4
# %bb.3:
	movl	$0, (%r14)
.LBB2_4:
	movl	(%r15), %ecx
	cmpl	%eax, %ecx
	jb	.LBB2_42
# %bb.5:
	movl	4(%r15), %r13d
	subl	$1, %r13d
	jb	.LBB2_42
# %bb.6:
	movslq	%r13d, %rax
	cmpb	$4, %cl
	je	.LBB2_9
# %bb.7:
	cmpb	$8, %cl
	jne	.LBB2_10
# %bb.8:
	leaq	(%r15,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jge	.LBB2_12
	jmp	.LBB2_42
.LBB2_9:
	leaq	(%r15,%rax,4), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jge	.LBB2_12
	jmp	.LBB2_42
.LBB2_10:
	leaq	(%r15,%rax,2), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB2_42
.LBB2_12:
	movb	(%r15), %al
	leaq	8(%r15), %rsi
	leaq	-48(%rbp), %rdi
	cmpb	$4, %al
	je	.LBB2_15
# %bb.13:
	cmpb	$8, %al
	jne	.LBB2_16
# %bb.14:
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jle	.LBB2_18
	jmp	.LBB2_42
.LBB2_15:
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jle	.LBB2_18
	jmp	.LBB2_42
.LBB2_16:
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jg	.LBB2_42
.LBB2_18:
	testl	%r13d, %r13d
	movq	%r14, -64(%rbp)         # 8-byte Spill
	js	.LBB2_19
# %bb.20:
	leaq	8(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r14d, %r14d
	jmp	.LBB2_21
	.p2align	4, 0x90
.LBB2_27:                               #   in Loop: Header=BB2_21 Depth=1
	leal	1(%r12), %r14d
	cmpl	%r14d, %r13d
	jl	.LBB2_31
.LBB2_21:                               # =>This Inner Loop Header: Depth=1
	leal	(%r14,%r13), %r12d
	shrl	%r12d
	movzbl	(%r15), %eax
	cmpb	$4, %al
	je	.LBB2_24
# %bb.22:                               #   in Loop: Header=BB2_21 Depth=1
	cmpb	$8, %al
	jne	.LBB2_25
# %bb.23:                               #   in Loop: Header=BB2_21 Depth=1
	movl	%r12d, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB2_27
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_24:                               #   in Loop: Header=BB2_21 Depth=1
	movl	%r12d, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB2_27
	jmp	.LBB2_28
	.p2align	4, 0x90
.LBB2_25:                               #   in Loop: Header=BB2_21 Depth=1
	movl	%r12d, %eax
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %rsi
	movl	$2, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB2_27
.LBB2_28:                               #   in Loop: Header=BB2_21 Depth=1
	jle	.LBB2_31
# %bb.29:                               #   in Loop: Header=BB2_21 Depth=1
	leal	-1(%r12), %r13d
	cmpl	%r14d, %r13d
	jge	.LBB2_21
	jmp	.LBB2_31
.LBB2_19:
	movq	$-1, %rax
	movl	$-1, %r12d
.LBB2_31:
	cmpq	%rbx, %rax
	jne	.LBB2_42
# %bb.32:
	movl	4(%r15), %ebx
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_34
# %bb.33:
	movl	$1, (%rax)
.LBB2_34:
	addl	$-1, %ebx
	cmpl	%ebx, %r12d
	jae	.LBB2_41
# %bb.35:
	leal	1(%r12), %eax
	movl	(%r15), %esi
	movl	4(%r15), %edx
	subl	%eax, %edx
	cmpl	$8, %esi
	jne	.LBB2_37
# %bb.36:
	movl	%eax, %eax
	leaq	(%r15,%rax,8), %rsi
	addq	$8, %rsi
	movl	%r12d, %eax
	leaq	(%r15,%rax,8), %rdi
	addq	$8, %rdi
	movl	$3, %ecx
	jmp	.LBB2_40
.LBB2_37:
	leaq	8(%r15), %rcx
	movl	%eax, %eax
	cmpl	$4, %esi
	jne	.LBB2_39
# %bb.38:
	leaq	(%rcx,%rax,4), %rsi
	movl	%r12d, %eax
	leaq	(%rcx,%rax,4), %rdi
	movl	$2, %ecx
	jmp	.LBB2_40
.LBB2_39:
	leaq	(%rcx,%rax,2), %rsi
	movl	%r12d, %eax
	leaq	(%rcx,%rax,2), %rdi
	movl	$1, %ecx
.LBB2_40:
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %edx
	callq	memmove
.LBB2_41:
	movl	(%r15), %esi
	imull	%ebx, %esi
	addq	$8, %rsi
	movq	%r15, %rdi
	callq	zrealloc
	movq	%rax, %r15
	movl	%ebx, 4(%rax)
.LBB2_42:
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	intsetRemove, .Lfunc_end2-intsetRemove
                                        # -- End function
	.globl	intsetFind              # -- Begin function intsetFind
	.p2align	4, 0x90
	.type	intsetFind,@function
intsetFind:                             # @intsetFind
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
	movslq	%ebx, %rax
	movl	$8, %ecx
	cmpq	%rsi, %rax
	jne	.LBB3_2
# %bb.1:
	movswq	%bx, %rax
	xorl	%ecx, %ecx
	cmpq	%rbx, %rax
	setne	%cl
	addl	%ecx, %ecx
	addl	$2, %ecx
.LBB3_2:
	movl	(%r14), %eax
	cmpl	%ecx, %eax
	jb	.LBB3_3
# %bb.4:
	movl	4(%r14), %r12d
	subl	$1, %r12d
	jae	.LBB3_6
.LBB3_3:
	xorl	%eax, %eax
.LBB3_30:
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB3_6:
	cmpb	$4, %al
	je	.LBB3_9
# %bb.7:
	cmpb	$8, %al
	jne	.LBB3_13
# %bb.8:
	movslq	%r12d, %rax
	leaq	(%r14,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB3_3
	jmp	.LBB3_10
.LBB3_9:
	movslq	%r12d, %rax
	leaq	(%r14,%rax,4), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB3_3
	jmp	.LBB3_10
.LBB3_13:
	movslq	%r12d, %rax
	leaq	(%r14,%rax,2), %rsi
	addq	$8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB3_3
.LBB3_10:
	movb	(%r14), %al
	leaq	8(%r14), %rsi
	leaq	-48(%rbp), %rdi
	cmpb	$4, %al
	je	.LBB3_15
# %bb.11:
	cmpb	$8, %al
	jne	.LBB3_26
# %bb.12:
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jg	.LBB3_3
	jmp	.LBB3_16
.LBB3_15:
	movl	$4, %edx
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jg	.LBB3_3
	jmp	.LBB3_16
.LBB3_26:
	movl	$2, %edx
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jg	.LBB3_3
.LBB3_16:
	testl	%r12d, %r12d
	js	.LBB3_28
# %bb.17:
	leaq	8(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	xorl	%r15d, %r15d
	jmp	.LBB3_19
	.p2align	4, 0x90
.LBB3_18:                               #   in Loop: Header=BB3_19 Depth=1
	addl	$1, %r13d
	movl	%r13d, %r15d
	cmpl	%r15d, %r12d
	jl	.LBB3_29
.LBB3_19:                               # =>This Inner Loop Header: Depth=1
	leal	(%r15,%r12), %r13d
	shrl	%r13d
	movzbl	(%r14), %ecx
	movl	%r13d, %eax
	cmpb	$4, %cl
	je	.LBB3_22
# %bb.20:                               #   in Loop: Header=BB3_19 Depth=1
	cmpb	$8, %cl
	jne	.LBB3_23
# %bb.21:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,8), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB3_18
	jmp	.LBB3_24
	.p2align	4, 0x90
.LBB3_22:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,4), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movslq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jge	.LBB3_24
	jmp	.LBB3_18
	.p2align	4, 0x90
.LBB3_23:                               #   in Loop: Header=BB3_19 Depth=1
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rcx,%rax,2), %rsi
	movl	$2, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movswq	-48(%rbp), %rax
	cmpq	%rbx, %rax
	jl	.LBB3_18
.LBB3_24:                               #   in Loop: Header=BB3_19 Depth=1
	jle	.LBB3_29
# %bb.25:                               #   in Loop: Header=BB3_19 Depth=1
	addl	$-1, %r13d
	movl	%r13d, %r12d
	cmpl	%r15d, %r12d
	jge	.LBB3_19
	jmp	.LBB3_29
.LBB3_28:
	movq	$-1, %rax
.LBB3_29:
	cmpq	%rbx, %rax
	sete	%al
	jmp	.LBB3_30
.Lfunc_end3:
	.size	intsetFind, .Lfunc_end3-intsetFind
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
	cmpb	$4, %al
	je	.LBB4_3
# %bb.1:
	cmpb	$8, %al
	jne	.LBB4_4
# %bb.2:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-24(%rbp), %rax
	jmp	.LBB4_5
.LBB4_3:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,4), %rsi
	addq	$8, %rsi
	leaq	-16(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-16(%rbp), %rax
	jmp	.LBB4_5
.LBB4_4:
	movslq	%edx, %rax
	leaq	(%rbx,%rax,2), %rsi
	addq	$8, %rsi
	leaq	-10(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-10(%rbp), %rax
.LBB4_5:
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end4:
	.size	intsetRandom, .Lfunc_end4-intsetRandom
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
	jbe	.LBB5_1
# %bb.2:
	movq	%rdx, %rbx
	movb	(%rdi), %al
	cmpb	$4, %al
	je	.LBB5_5
# %bb.3:
	cmpb	$8, %al
	jne	.LBB5_6
# %bb.4:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,8), %rsi
	addq	$8, %rsi
	leaq	-24(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-24(%rbp), %rax
	jmp	.LBB5_7
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_8
.LBB5_5:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,4), %rsi
	addq	$8, %rsi
	leaq	-16(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movslq	-16(%rbp), %rax
	jmp	.LBB5_7
.LBB5_6:
	movslq	%esi, %rax
	leaq	(%rdi,%rax,2), %rsi
	addq	$8, %rsi
	leaq	-10(%rbp), %rdi
	movl	$2, %edx
	callq	memcpy
	movswq	-10(%rbp), %rax
.LBB5_7:
	movq	%rax, (%rbx)
	movb	$1, %al
.LBB5_8:
                                        # kill: def $al killed $al killed $eax
	addq	$24, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end5:
	.size	intsetGet, .Lfunc_end5-intsetGet
                                        # -- End function
	.globl	intsetLen               # -- Begin function intsetLen
	.p2align	4, 0x90
	.type	intsetLen,@function
intsetLen:                              # @intsetLen
# %bb.0:
	movl	4(%rdi), %eax
	retq
.Lfunc_end6:
	.size	intsetLen, .Lfunc_end6-intsetLen
                                        # -- End function
	.globl	intsetBlobLen           # -- Begin function intsetBlobLen
	.p2align	4, 0x90
	.type	intsetBlobLen,@function
intsetBlobLen:                          # @intsetBlobLen
# %bb.0:
	movl	(%rdi), %eax
	imull	4(%rdi), %eax
	addq	$8, %rax
	retq
.Lfunc_end7:
	.size	intsetBlobLen, .Lfunc_end7-intsetBlobLen
                                        # -- End function
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
