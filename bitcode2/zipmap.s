	.text
	.file	"zipmap.c"
	.globl	zipmapNew               # -- Begin function zipmapNew
	.p2align	4, 0x90
	.type	zipmapNew,@function
zipmapNew:                              # @zipmapNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$2, %edi
	callq	zmalloc
	movw	$-256, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end0:
	.size	zipmapNew, .Lfunc_end0-zipmapNew
                                        # -- End function
	.globl	zipmapSet               # -- Begin function zipmapSet
	.p2align	4, 0x90
	.type	zipmapSet,@function
zipmapSet:                              # @zipmapSet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%r9, %r15
	movl	%r8d, %r12d
	movq	%rcx, -96(%rbp)         # 8-byte Spill
                                        # kill: def $edx killed $edx def $rdx
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %edx
	jb	.LBB1_2
# %bb.1:
	leal	(%r12,%rdx), %r13d
	addl	$7, %r13d
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB1_3
.LBB1_2:
	leal	(%r12,%rdx), %r13d
	addl	$3, %r13d
.LBB1_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %r12d
	jb	.LBB1_5
# %bb.4:
	addl	$4, %r13d
	movl	$42, __A_VARIABLE(%rip)
.LBB1_5:
	movl	%r13d, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_7
# %bb.6:
	movl	$0, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	leaq	-44(%rbp), %rcx
	movq	%rbx, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -64(%rbp)         # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	callq	zipmapLookupRaw
	movq	%rbx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%r12, -80(%rbp)         # 8-byte Spill
	je	.LBB1_16
# %bb.8:
	movq	%rax, %r14
	movq	%rdi, -56(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB1_10
# %bb.9:
	movl	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_10:
	movzbl	(%r14), %eax
	movl	%eax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB1_12
# %bb.11:
	leaq	1(%r14), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB1_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rbx), %r15
	movzbl	(%r14,%rbx), %eax
	movl	%eax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB1_14
# %bb.13:
	leaq	1(%r15), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB1_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15,%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ebx
	leal	(%rbx,%rcx,4), %eax
	addl	$1, %eax
	leal	1(%rdx,%rax), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	subl	%r12d, %r15d
	jbe	.LBB1_19
# %bb.15:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %r14
	movl	-44(%rbp), %ebx
	subl	%r12d, %ebx
	leal	(%rbx,%r13), %esi
	callq	zrealloc
	leal	(%rbx,%r13), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ebx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	%rax, %rbx
	movq	-72(%rbp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	movl	%r12d, %esi
	addq	%rbx, %rsi
	addl	%r14d, %r12d
	notl	%r12d
	addl	-44(%rbp), %r12d
	movq	%r12, %rdx
	callq	memmove
	addl	%r15d, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r12d
	movq	%rbx, %r14
	jmp	.LBB1_19
.LBB1_16:
	movl	-44(%rbp), %ebx
	leal	(%rbx,%r13), %esi
	callq	zrealloc
	leal	(%rbx,%r13), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx
	leaq	-1(%rax,%rcx), %r14
	leal	(%rcx,%r13), %ecx
	movl	%ecx, -44(%rbp)
	movb	(%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-3, %cl
	movq	%rax, -56(%rbp)         # 8-byte Spill
	ja	.LBB1_18
# %bb.17:
	addb	$1, %cl
	movb	%cl, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_18:
	movl	%r13d, %r12d
.LBB1_19:
	movl	%r12d, %r15d
	subl	%r13d, %r15d
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$4, %r15d
	jb	.LBB1_21
# %bb.20:
	movq	%r14, %r13
	subq	-56(%rbp), %r13         # 8-byte Folded Reload
	movq	-72(%rbp), %rdi         # 8-byte Reload
	addq	%r14, %rdi
	movl	%r12d, %esi
	addq	%r14, %rsi
	addl	%r13d, %r12d
	notl	%r12d
	addl	-44(%rbp), %r12d
	movq	%r12, %rdx
	callq	memmove
	movl	-44(%rbp), %ebx
	subl	%r15d, %ebx
	movl	%ebx, -44(%rbp)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	zrealloc
	addl	$-1, %ebx
	movb	$-1, (%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r14d
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	%rax, %r14
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r15d, %r15d
	jmp	.LBB1_22
.LBB1_21:
	movl	$42, __A_VARIABLE(%rip)
.LBB1_22:
	movq	-80(%rbp), %r12         # 8-byte Reload
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB1_25
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %ecx
	ja	.LBB1_26
# %bb.24:
	movb	%cl, (%r14)
	movl	$1, %eax
	jmp	.LBB1_27
.LBB1_25:
	xorl	%eax, %eax
	cmpl	$253, %ecx
	seta	%al
	leaq	1(,%rax,4), %rax
	jmp	.LBB1_27
.LBB1_26:
	movb	$-2, (%r14)
	leaq	1(%r14), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movl	$5, %eax
.LBB1_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r14
	movl	%ecx, %ebx
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r14
	movl	%r12d, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %r12d
	ja	.LBB1_29
# %bb.28:
	movb	%r12b, (%r14)
	movl	$1, %eax
	jmp	.LBB1_30
.LBB1_29:
	movb	$-2, (%r14)
	leaq	1(%r14), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$5, %eax
.LBB1_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rax), %rdi
	addq	$1, %rdi
	movb	%r15b, (%r14,%rax)
	movl	%r12d, %edx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax         # 8-byte Reload
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end1:
	.size	zipmapSet, .Lfunc_end1-zipmapSet
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function zipmapLookupRaw
	.type	zipmapLookupRaw,@function
zipmapLookupRaw:                        # @zipmapLookupRaw
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	leaq	1(%rdi), %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movb	1(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB2_1
# %bb.2:
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rcx,4), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rcx,4), %ecx
	leal	1(%rax,%rcx), %eax
	leaq	1(%rax,%rdx), %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rax,%rdx), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB2_12
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	%al, %r14d
	movl	%r14d, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %r14b
	jb	.LBB2_5
# %bb.4:                                #   in Loop: Header=BB2_3 Depth=1
	leaq	1(%r15), %rsi
	movl	$4, %edx
	leaq	-44(%rbp), %rdi
	callq	memcpy
	movl	-44(%rbp), %r14d
.LBB2_5:                                #   in Loop: Header=BB2_3 Depth=1
	xorl	%eax, %eax
	cmpl	$253, %r14d
	seta	%al
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rax,4), %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB2_9
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	testq	%r13, %r13
	jne	.LBB2_9
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	-52(%rbp), %r14d        # 4-byte Folded Reload
	jne	.LBB2_8
# %bb.14:                               #   in Loop: Header=BB2_3 Depth=1
	movl	%r12d, %edi
	addq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB2_15
.LBB2_8:                                #   in Loop: Header=BB2_3 Depth=1
	xorl	%r13d, %r13d
.LBB2_9:                                #   in Loop: Header=BB2_3 Depth=1
	addl	%r14d, %r12d
	leaq	(%r15,%r12), %rbx
	movzbl	(%r15,%r12), %eax
	movl	%eax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB2_11
# %bb.10:                               #   in Loop: Header=BB2_3 Depth=1
	leaq	1(%rbx), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movl	-48(%rbp), %eax
	jmp	.LBB2_11
.LBB2_15:                               #   in Loop: Header=BB2_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %r13
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	jne	.LBB2_9
# %bb.16:
	movq	%r15, %r13
	jmp	.LBB2_17
.LBB2_1:
	xorl	%r13d, %r13d
.LBB2_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_17
# %bb.13:
	subl	-80(%rbp), %r15d        # 4-byte Folded Reload
	addl	$1, %r15d
	movl	%r15d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rax
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	zipmapLookupRaw, .Lfunc_end2-zipmapLookupRaw
                                        # -- End function
	.globl	zipmapDel               # -- Begin function zipmapDel
	.p2align	4, 0x90
	.type	zipmapDel,@function
zipmapDel:                              # @zipmapDel
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rcx, %r14
	movq	%rdi, %r15
	leaq	-44(%rbp), %rcx
	callq	zipmapLookupRaw
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_9
# %bb.1:
	movq	%rax, %r12
	movzbl	(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB3_3
# %bb.2:
	leaq	1(%r12), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB3_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%rbx), %r13
	movzbl	(%r12,%rbx), %eax
	movl	%eax, -52(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB3_5
# %bb.4:
	leaq	1(%r13), %rsi
	leaq	-52(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-52(%rbp), %eax
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r13,%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ebx
	leal	(%rbx,%rcx,4), %eax
	addl	$1, %eax
	leal	1(%rdx,%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax
	leaq	(%r12,%r13), %rsi
	movq	%r12, %rdx
	subq	%r15, %rdx
	addq	%r13, %rdx
	notq	%rdx
	addq	%rax, %rdx
	movq	%r12, %rdi
	callq	memmove
	movl	-44(%rbp), %ebx
	subl	%r13d, %ebx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	zrealloc
	movq	%rax, %r15
	addl	$-1, %ebx
	movb	$-1, (%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rax), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-3, %al
	ja	.LBB3_7
# %bb.6:
	addb	$-1, %al
	movb	%al, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_12
# %bb.8:
	movl	$1, (%r14)
	jmp	.LBB3_11
.LBB3_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB3_12
# %bb.10:
	movl	$0, (%r14)
.LBB3_11:
	movl	$42, __A_VARIABLE(%rip)
.LBB3_12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end3:
	.size	zipmapDel, .Lfunc_end3-zipmapDel
                                        # -- End function
	.globl	zipmapRewind            # -- Begin function zipmapRewind
	.p2align	4, 0x90
	.type	zipmapRewind,@function
zipmapRewind:                           # @zipmapRewind
# %bb.0:
	leaq	1(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end4:
	.size	zipmapRewind, .Lfunc_end4-zipmapRewind
                                        # -- End function
	.globl	zipmapNext              # -- Begin function zipmapNext
	.p2align	4, 0x90
	.type	zipmapNext,@function
zipmapNext:                             # @zipmapNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movb	(%rdi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-1, %al
	je	.LBB5_1
# %bb.2:
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB5_7
# %bb.3:
	movq	%rdx, %r13
	movq	%rbx, (%r12)
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %eax
	ja	.LBB5_5
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rcx
	jmp	.LBB5_6
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_17
.LBB5_5:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r12), %rcx
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r13)
	xorl	%edx, %edx
	cmpl	$253, %eax
	seta	%dl
	leaq	(%rcx,%rdx,4), %rax
	addq	$1, %rax
	movq	%rax, (%r12)
	movl	$42, __A_VARIABLE(%rip)
	movb	(%rbx), %al
.LBB5_7:
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$-2, %al
	jb	.LBB5_9
# %bb.8:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB5_9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB5_14
# %bb.10:
	leaq	1(%rbx), %rsi
	movq	%rsi, (%r14)
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %eax
	ja	.LBB5_12
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB5_13
.LBB5_12:
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r14), %rsi
.LBB5_13:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	%eax, (%r15)
	leaq	(%rsi,%rcx,4), %rax
	addq	$1, %rax
	movq	%rax, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB5_14:
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB5_16
# %bb.15:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB5_16:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx,%rdx), %edx
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rax
.LBB5_17:
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
.Lfunc_end5:
	.size	zipmapNext, .Lfunc_end5-zipmapNext
                                        # -- End function
	.globl	zipmapGet               # -- Begin function zipmapGet
	.p2align	4, 0x90
	.type	zipmapGet,@function
zipmapGet:                              # @zipmapGet
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
	movq	%r8, %r15
	movq	%rcx, %r14
	xorl	%ebx, %ebx
	xorl	%ecx, %ecx
	callq	zipmapLookupRaw
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_6
# %bb.1:
	movq	%rax, %r12
	movq	%rax, %rbx
	movzbl	(%r12), %eax
	movl	%eax, -36(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB6_3
# %bb.2:
	leaq	1(%r12), %rsi
	leaq	-36(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-36(%rbp), %eax
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r12
	movzbl	(%rbx,%rax), %eax
	movl	%eax, -40(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$254, %eax
	jb	.LBB6_5
# %bb.4:
	leaq	1(%r12), %rsi
	leaq	-40(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-40(%rbp), %eax
.LBB6_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	%eax, (%r15)
	leaq	(%r12,%rcx,4), %rax
	addq	$2, %rax
	movq	%rax, (%r14)
	movl	$1, %ebx
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end6:
	.size	zipmapGet, .Lfunc_end6-zipmapGet
                                        # -- End function
	.globl	zipmapExists            # -- Begin function zipmapExists
	.p2align	4, 0x90
	.type	zipmapExists,@function
zipmapExists:                           # @zipmapExists
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%ecx, %ecx
	callq	zipmapLookupRaw
	xorl	%ecx, %ecx
	testq	%rax, %rax
	setne	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %eax
	popq	%rbp
	retq
.Lfunc_end7:
	.size	zipmapExists, .Lfunc_end7-zipmapExists
                                        # -- End function
	.globl	zipmapLen               # -- Begin function zipmapLen
	.p2align	4, 0x90
	.type	zipmapLen,@function
zipmapLen:                              # @zipmapLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movzbl	(%rdi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %ebx
	jbe	.LBB8_6
# %bb.1:
	movq	%rdi, %r14
	addq	$1, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	zipmapNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_2
	.p2align	4, 0x90
.LBB8_3:                                # =>This Inner Loop Header: Depth=1
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	xorl	%esi, %esi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r8d, %r8d
	callq	zipmapNext
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB8_3
# %bb.4:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$253, %ebx
	jbe	.LBB8_5
	jmp	.LBB8_6
.LBB8_2:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
.LBB8_5:
	movb	%bl, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end8:
	.size	zipmapLen, .Lfunc_end8-zipmapLen
                                        # -- End function
	.globl	zipmapBlobLen           # -- Begin function zipmapBlobLen
	.p2align	4, 0x90
	.type	zipmapBlobLen,@function
zipmapBlobLen:                          # @zipmapBlobLen
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	leaq	-4(%rbp), %rcx
	xorl	%esi, %esi
	xorl	%edx, %edx
	callq	zipmapLookupRaw
	movl	-4(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end9:
	.size	zipmapBlobLen, .Lfunc_end9-zipmapBlobLen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
