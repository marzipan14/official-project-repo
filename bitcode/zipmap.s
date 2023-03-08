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
	movl	%r8d, %r12d
                                        # kill: def $edx killed $edx def $rdx
	leal	(%r12,%rdx), %eax
	xorl	%ebx, %ebx
	cmpl	$253, %edx
	seta	%bl
	leal	(%rax,%rbx,4), %r8d
	addl	$3, %r8d
	cmpl	$253, %r12d
	leal	7(%rax,%rbx,4), %eax
	cmovbel	%r8d, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r9, %rbx
	movq	%rcx, %r15
	movq	%rdi, %r13
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB1_2
# %bb.1:
	movl	$0, (%rbx)
.LBB1_2:
	leaq	-44(%rbp), %rcx
	movq	%r13, %rdi
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rdx, -72(%rbp)         # 8-byte Spill
                                        # kill: def $edx killed $edx killed $rdx
	callq	zipmapLookupRaw
	testq	%rax, %rax
	movq	%r15, -96(%rbp)         # 8-byte Spill
	je	.LBB1_11
# %bb.3:
	movq	%rax, %r14
	testq	%rbx, %rbx
	je	.LBB1_5
# %bb.4:
	movl	$1, (%rbx)
.LBB1_5:
	movzbl	(%r14), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB1_7
# %bb.6:
	leaq	1(%r14), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB1_7:
	movq	%r13, -56(%rbp)         # 8-byte Spill
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rbx), %r15
	movzbl	(%r14,%rbx), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB1_9
# %bb.8:
	leaq	1(%r15), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15,%rdx), %edx
	movl	$42, __A_VARIABLE(%rip)
	addl	%eax, %ebx
	leal	(%rbx,%rcx,4), %eax
	addl	$1, %eax
	leal	1(%rdx,%rax), %r13d
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdx         # 8-byte Reload
	movl	%edx, %r15d
	subl	%r13d, %r15d
	jbe	.LBB1_14
# %bb.10:
	movq	-56(%rbp), %rdi         # 8-byte Reload
	subq	%rdi, %r14
	movl	-44(%rbp), %ebx
	subl	%r13d, %ebx
	leal	(%rbx,%rdx), %esi
	callq	zrealloc
	movq	-64(%rbp), %rcx         # 8-byte Reload
	addl	%ebx, %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r14d, %ebx
	movq	%rax, -56(%rbp)         # 8-byte Spill
	addq	%rax, %rbx
	movq	-64(%rbp), %rax         # 8-byte Reload
	leaq	(%rbx,%rax), %rdi
	movl	%r13d, %esi
	addq	%rbx, %rsi
	addl	%r14d, %r13d
	notl	%r13d
	addl	-44(%rbp), %r13d
	movq	%r13, %rdx
	callq	memmove
	movq	-64(%rbp), %rdx         # 8-byte Reload
	addl	%r15d, -44(%rbp)
	movl	%edx, %r13d
	movq	%rbx, %r14
	jmp	.LBB1_14
.LBB1_11:
	movl	-44(%rbp), %r14d
	movq	-64(%rbp), %rbx         # 8-byte Reload
	leal	(%r14,%rbx), %esi
	movq	%r13, %rdi
	callq	zrealloc
	movq	%rbx, %rdx
	leal	(%r14,%rbx), %ecx
	addl	$-1, %ecx
	movb	$-1, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %ecx
	leaq	-1(%rax,%rcx), %r14
	addl	%ebx, %ecx
	movl	%ecx, -44(%rbp)
	movb	(%rax), %cl
	cmpb	$-3, %cl
	movq	%rax, -56(%rbp)         # 8-byte Spill
	ja	.LBB1_13
# %bb.12:
	addb	$1, %cl
	movb	%cl, (%rax)
.LBB1_13:
	movl	%edx, %r13d
.LBB1_14:
	movl	%r13d, %r15d
	subl	%edx, %r15d
	cmpl	$4, %r15d
	jb	.LBB1_16
# %bb.15:
	movq	%r12, -80(%rbp)         # 8-byte Spill
	movq	%r14, %r12
	subq	-56(%rbp), %r12         # 8-byte Folded Reload
	leaq	(%rdx,%r14), %rdi
	movl	%r13d, %esi
	addq	%r14, %rsi
	addl	%r12d, %r13d
	notl	%r13d
	addl	-44(%rbp), %r13d
	movq	%r13, %rdx
	callq	memmove
	movl	-44(%rbp), %ebx
	subl	%r15d, %ebx
	movl	%ebx, -44(%rbp)
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	zrealloc
	movq	%rax, %r13
	addl	$-1, %ebx
	movb	$-1, (%rax,%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %r14d
	movq	-80(%rbp), %r12         # 8-byte Reload
	addq	%rax, %r14
	xorl	%r15d, %r15d
	jmp	.LBB1_17
.LBB1_16:
	movq	-56(%rbp), %r13         # 8-byte Reload
.LBB1_17:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	%ecx, -48(%rbp)
	testq	%r14, %r14
	je	.LBB1_20
# %bb.18:
	cmpl	$253, %ecx
	ja	.LBB1_21
# %bb.19:
	movb	%cl, (%r14)
	movl	$1, %eax
	jmp	.LBB1_22
.LBB1_20:
	xorl	%eax, %eax
	cmpl	$253, %ecx
	seta	%al
	leaq	1(,%rax,4), %rax
	jmp	.LBB1_22
.LBB1_21:
	movb	$-2, (%r14)
	leaq	1(%r14), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movl	$5, %eax
.LBB1_22:
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r14
	movl	%ecx, %ebx
	movq	%r14, %rdi
	movq	-88(%rbp), %rsi         # 8-byte Reload
	movq	%rbx, %rdx
	callq	memcpy
	addq	%rbx, %r14
	movl	%r12d, -48(%rbp)
	cmpl	$253, %r12d
	ja	.LBB1_24
# %bb.23:
	movb	%r12b, (%r14)
	movl	$1, %eax
	jmp	.LBB1_25
.LBB1_24:
	movb	$-2, (%r14)
	leaq	1(%r14), %rdi
	leaq	-48(%rbp), %rsi
	movl	$4, %edx
	callq	memcpy
	movl	$5, %eax
.LBB1_25:
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rax), %rdi
	addq	$1, %rdi
	movb	%r15b, (%r14,%rax)
	movl	%r12d, %edx
	movq	-96(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
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
	movq	%rsi, -72(%rbp)         # 8-byte Spill
	leaq	1(%rdi), %r15
	movb	1(%rdi), %al
	cmpb	$-1, %al
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	je	.LBB2_1
# %bb.2:
	movl	%edx, -52(%rbp)         # 4-byte Spill
	movl	%edx, %ecx
	movq	%rcx, -88(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	jmp	.LBB2_3
	.p2align	4, 0x90
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=1
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rcx,4), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rcx,4), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	leaq	(%rax,%rdx), %r15
	addq	$1, %r15
	movzbl	1(%rax,%rdx), %eax
	cmpb	$-1, %al
	je	.LBB2_14
.LBB2_3:                                # =>This Inner Loop Header: Depth=1
	movzbl	%al, %r14d
	movl	%r14d, -44(%rbp)
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
	leal	1(,%rax,4), %r12d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$0, -72(%rbp)           # 8-byte Folded Reload
	je	.LBB2_11
# %bb.6:                                #   in Loop: Header=BB2_3 Depth=1
	testq	%r13, %r13
	jne	.LBB2_11
# %bb.7:                                #   in Loop: Header=BB2_3 Depth=1
	cmpl	-52(%rbp), %r14d        # 4-byte Folded Reload
	jne	.LBB2_11
# %bb.8:                                #   in Loop: Header=BB2_3 Depth=1
	movl	%r12d, %edi
	addq	%r15, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	-88(%rbp), %rdx         # 8-byte Reload
	callq	memcmp
	movl	$0, %r13d
	testl	%eax, %eax
	cmoveq	%r15, %r13
	jne	.LBB2_11
# %bb.9:                                #   in Loop: Header=BB2_3 Depth=1
	cmpq	$0, -64(%rbp)           # 8-byte Folded Reload
	je	.LBB2_10
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=1
	addl	%r14d, %r12d
	leaq	(%r15,%r12), %rbx
	movzbl	(%r15,%r12), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB2_13
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=1
	leaq	1(%rbx), %rsi
	movl	$4, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movl	-48(%rbp), %eax
	jmp	.LBB2_13
.LBB2_1:
	xorl	%r13d, %r13d
.LBB2_14:
	movq	-64(%rbp), %rax         # 8-byte Reload
	testq	%rax, %rax
	je	.LBB2_16
# %bb.15:
	subl	-80(%rbp), %r15d        # 4-byte Folded Reload
	addl	$1, %r15d
	movl	%r15d, (%rax)
	jmp	.LBB2_16
.LBB2_10:
	movq	%r15, %r13
.LBB2_16:
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
	testq	%rax, %rax
	je	.LBB3_9
# %bb.1:
	movq	%rax, %r12
	movzbl	(%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB3_3
# %bb.2:
	leaq	1(%r12), %rsi
	leaq	-48(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB3_3:
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %ebx
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r12,%rbx), %r13
	movzbl	(%r12,%rbx), %eax
	movl	%eax, -52(%rbp)
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
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leal	1(,%rcx,4), %edx
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
	cmpb	$-3, %al
	ja	.LBB3_7
# %bb.6:
	addb	$-1, %al
	movb	%al, (%r15)
.LBB3_7:
	testq	%r14, %r14
	je	.LBB3_11
# %bb.8:
	movl	$1, (%r14)
	jmp	.LBB3_11
.LBB3_9:
	testq	%r14, %r14
	je	.LBB3_11
# %bb.10:
	movl	$0, (%r14)
.LBB3_11:
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
	cmpb	$-1, %al
	je	.LBB5_1
# %bb.2:
	movq	%r8, %r15
	movq	%rcx, %r14
	movq	%rsi, %r12
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB5_6
# %bb.3:
	movq	%rdx, %r13
	movq	%rbx, (%r12)
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	movq	%rbx, %rcx
	cmpl	$254, %eax
	jb	.LBB5_5
# %bb.4:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
	movq	(%r12), %rcx
.LBB5_5:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	cmpl	$253, %eax
	seta	%dl
	movl	%eax, (%r13)
	leaq	(%rcx,%rdx,4), %rax
	addq	$1, %rax
	movq	%rax, (%r12)
	movb	(%rbx), %al
.LBB5_6:
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpb	$-2, %al
	jb	.LBB5_8
# %bb.7:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rbx
	testq	%r14, %r14
	je	.LBB5_12
# %bb.9:
	leaq	1(%rbx), %rsi
	movq	%rsi, (%r14)
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	cmpl	$254, %eax
	jb	.LBB5_11
# %bb.10:
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
	movq	(%r14), %rsi
.LBB5_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, (%r15)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leaq	(%rsi,%rcx,4), %rax
	addq	$1, %rax
	movq	%rax, (%r14)
.LBB5_12:
	movzbl	(%rbx), %eax
	movl	%eax, -44(%rbp)
	cmpl	$254, %eax
	jb	.LBB5_14
# %bb.13:
	leaq	1(%rbx), %rsi
	leaq	-44(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB5_14:
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%rbx,%rdx), %edx
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	addl	%edx, %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rax
	jmp	.LBB5_15
.LBB5_1:
	xorl	%eax, %eax
.LBB5_15:
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
	testq	%rax, %rax
	je	.LBB6_6
# %bb.1:
	movq	%rax, %r12
	movq	%rax, %rbx
	movzbl	(%r12), %eax
	movl	%eax, -36(%rbp)
	cmpl	$254, %eax
	jb	.LBB6_3
# %bb.2:
	leaq	1(%r12), %rsi
	leaq	-36(%rbp), %rdi
	movl	$4, %edx
	callq	memcpy
	movl	-36(%rbp), %eax
.LBB6_3:
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(%rax,%rcx,4), %eax
	addl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %r12
	movzbl	(%rbx,%rax), %eax
	movl	%eax, -40(%rbp)
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movzbl	(%rdi), %r13d
	cmpl	$253, %r13d
	jbe	.LBB8_6
# %bb.1:
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movb	1(%rdi), %al
	cmpb	$-1, %al
	je	.LBB8_2
# %bb.7:
	leaq	1(%r14), %rbx
	xorl	%r13d, %r13d
	leaq	-48(%rbp), %r12
	.p2align	4, 0x90
.LBB8_8:                                # =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpb	$-2, %al
	jne	.LBB8_10
# %bb.9:                                #   in Loop: Header=BB8_8 Depth=1
	leaq	1(%rbx), %rsi
	movl	$4, %edx
	leaq	-44(%rbp), %rdi
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB8_10:                               #   in Loop: Header=BB8_8 Depth=1
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %eax
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rax), %r15
	movzbl	(%rbx,%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB8_12
# %bb.11:                               #   in Loop: Header=BB8_8 Depth=1
	leaq	1(%r15), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	movl	-48(%rbp), %eax
.LBB8_12:                               #   in Loop: Header=BB8_8 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	leal	1(,%rcx,4), %edx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	(%r15,%rdx), %edx
	leal	1(%rax,%rcx,4), %eax
	leal	(%rdx,%rax), %ebx
	addl	$1, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r15, %rbx
	je	.LBB8_4
# %bb.13:                               #   in Loop: Header=BB8_8 Depth=1
	addl	$1, %r13d
	movzbl	(%rbx), %eax
	cmpb	$-1, %al
	jne	.LBB8_8
	jmp	.LBB8_3
.LBB8_2:
	xorl	%r13d, %r13d
.LBB8_3:
	movl	$42, __A_VARIABLE(%rip)
.LBB8_4:
	cmpl	$253, %r13d
	ja	.LBB8_6
# %bb.5:
	movb	%r13b, (%r14)
.LBB8_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r14
	leaq	1(%rdi), %r13
	movb	1(%rdi), %al
	cmpb	$-1, %al
	je	.LBB9_7
# %bb.1:
	leaq	-48(%rbp), %r15
	leaq	-44(%rbp), %r12
	jmp	.LBB9_2
	.p2align	4, 0x90
.LBB9_6:                                #   in Loop: Header=BB9_2 Depth=1
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%rbx,%rcx,4), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movzbl	1(%rbx,%rcx,4), %ecx
	addl	%ecx, %eax
	addl	$1, %eax
	leaq	(%rax,%rdx), %r13
	addq	$1, %r13
	movzbl	1(%rax,%rdx), %eax
	cmpb	$-1, %al
	je	.LBB9_7
.LBB9_2:                                # =>This Inner Loop Header: Depth=1
	movzbl	%al, %eax
	movl	%eax, -44(%rbp)
	cmpb	$-2, %al
	jb	.LBB9_4
# %bb.3:                                #   in Loop: Header=BB9_2 Depth=1
	leaq	1(%r13), %rsi
	movl	$4, %edx
	movq	%r12, %rdi
	callq	memcpy
	movl	-44(%rbp), %eax
.LBB9_4:                                #   in Loop: Header=BB9_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	cmpl	$253, %eax
	seta	%cl
	movl	$42, __A_VARIABLE(%rip)
	leal	1(%rax,%rcx,4), %eax
	leaq	(%rax,%r13), %rbx
	movzbl	(%r13,%rax), %eax
	movl	%eax, -48(%rbp)
	cmpl	$254, %eax
	jb	.LBB9_6
# %bb.5:                                #   in Loop: Header=BB9_2 Depth=1
	leaq	1(%rbx), %rsi
	movl	$4, %edx
	movq	%r15, %rdi
	callq	memcpy
	movl	-48(%rbp), %eax
	jmp	.LBB9_6
.LBB9_7:
	subl	%r14d, %r13d
	addl	$1, %r13d
	movl	$42, __A_VARIABLE(%rip)
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
.Lfunc_end9:
	.size	zipmapBlobLen, .Lfunc_end9-zipmapBlobLen
                                        # -- End function
	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
