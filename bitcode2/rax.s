	.text
	.file	"rax.c"
	.globl	raxSetDebugMsg          # -- Begin function raxSetDebugMsg
	.p2align	4, 0x90
	.type	raxSetDebugMsg,@function
raxSetDebugMsg:                         # @raxSetDebugMsg
# %bb.0:
	movl	%edi, raxDebugMsg(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	raxSetDebugMsg, .Lfunc_end0-raxSetDebugMsg
                                        # -- End function
	.globl	raxNewNode              # -- Begin function raxNewNode
	.p2align	4, 0x90
	.type	raxNewNode,@function
raxNewNode:                             # @raxNewNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	leaq	(%rdi,%rdi,8), %rax
	movl	$4, %ecx
	subl	%ebx, %ecx
	andl	$7, %ecx
	leaq	(%rcx,%rax), %rdi
	addq	$4, %rdi
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB1_2
# %bb.1:
	addq	$8, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB1_2:
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB1_3
# %bb.4:
	shll	$3, %ebx
	movl	%ebx, (%rax)
	jmp	.LBB1_5
.LBB1_3:
	xorl	%eax, %eax
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	raxNewNode, .Lfunc_end1-raxNewNode
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function raxNew
.LCPI2_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	1                       # 0x1
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.globl	raxNew
	.p2align	4, 0x90
	.type	raxNew,@function
raxNew:                                 # @raxNew
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$24, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_5
# %bb.1:
	movq	%rax, %rbx
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movups	%xmm0, 8(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_4
# %bb.2:
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB2_6
.LBB2_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rdi
	callq	zfree
.LBB2_5:
	xorl	%ebx, %ebx
.LBB2_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	raxNew, .Lfunc_end2-raxNew
                                        # -- End function
	.globl	raxReallocForData       # -- Begin function raxReallocForData
	.p2align	4, 0x90
	.type	raxReallocForData,@function
raxReallocForData:                      # @raxReallocForData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB3_7
# %bb.1:
	movl	(%rax), %ecx
	movq	%rcx, %rsi
	shrq	$3, %rsi
	movl	$4, %edi
	subl	%esi, %edi
	andl	$7, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB3_3
# %bb.2:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB3_3:
	addq	%rdi, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB3_5
# %bb.4:
	xorl	%ecx, %ecx
	jmp	.LBB3_6
.LBB3_5:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB3_6:
	addq	%rdx, %rsi
	addq	%rcx, %rsi
	addq	$8, %rsi
	movq	%rax, %rdi
	callq	zrealloc
.LBB3_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	raxReallocForData, .Lfunc_end3-raxReallocForData
                                        # -- End function
	.globl	raxSetData              # -- Begin function raxSetData
	.p2align	4, 0x90
	.type	raxSetData,@function
raxSetData:                             # @raxSetData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	%rsi, -8(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	je	.LBB4_4
# %bb.1:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB4_3
# %bb.2:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB4_3:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-8(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB4_5
.LBB4_4:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB4_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	raxSetData, .Lfunc_end4-raxSetData
                                        # -- End function
	.globl	raxGetData              # -- Begin function raxGetData
	.p2align	4, 0x90
	.type	raxGetData,@function
raxGetData:                             # @raxGetData
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB5_1
# %bb.2:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %al
	jne	.LBB5_4
# %bb.3:
	movl	%eax, %ecx
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB5_4:
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB5_6
# %bb.5:
	xorl	%eax, %eax
	jmp	.LBB5_7
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_8
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB5_7:
	addq	%rax, %rcx
	leaq	(%rdi,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-8(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-8(%rbp), %rax
.LBB5_8:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$16, %rsp
	popq	%rbp
	retq
.Lfunc_end5:
	.size	raxGetData, .Lfunc_end5-raxGetData
                                        # -- End function
	.globl	raxAddChild             # -- Begin function raxAddChild
	.p2align	4, 0x90
	.type	raxAddChild,@function
raxAddChild:                            # @raxAddChild
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	jne	.LBB6_23
# %bb.1:
	movq	%rcx, %r14
	movq	%r15, %r13
	shrq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB6_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB6_4
.LBB6_3:
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%r15,4), %eax
	notl	%eax
	andl	$8, %eax
.LBB6_4:
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	%r15d, %eax
	andl	$7, %eax
	leal	(%rax,%r13,8), %eax
	addl	$8, %eax
	movl	%eax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	jne	.LBB6_6
# %bb.5:
	xorl	%r12d, %r12d
	jmp	.LBB6_7
.LBB6_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	%r15d, %r12d
	shll	$2, %r12d
	notl	%r12d
	andl	$8, %r12d
.LBB6_7:
	addl	$-8, %eax
	movl	%eax, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	$8, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_19
# %bb.8:
	movq	%rax, %rbx
	movq	%r14, -88(%rbp)         # 8-byte Spill
	movl	$3, %eax
	leal	1(%r13), %ecx
	subl	%r13d, %eax
	andl	$536870911, %ecx        # imm = 0x1FFFFFFF
	andl	$7, %eax
	leal	8(,%r13,8), %r14d
	addl	%ecx, %eax
	addl	$4, %eax
	addq	%rax, %r14
	addq	%r12, %r14
	movl	$0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB6_20
# %bb.9:
	movl	$4, %ecx
	subl	%r13d, %ecx
	andl	$7, %ecx
	andl	$-8, %r15d
	addq	%rcx, %r13
	addq	%r13, %r15
	addq	$4, %r15
	movl	$42, __A_VARIABLE(%rip)
	leaq	4(%rax), %r12
	movl	(%rax), %ebx
	xorl	%r13d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$8, %rbx
	jb	.LBB6_13
# %bb.10:
	movq	%rbx, %rcx
	shrq	$3, %rcx
	xorl	%r13d, %r13d
	movl	-52(%rbp), %edx         # 4-byte Reload
	.p2align	4, 0x90
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	cmpb	%dl, (%r12,%r13)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_11 Depth=1
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r13
	jb	.LBB6_11
.LBB6_13:
	addq	-48(%rbp), %r15         # 8-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %bl
	je	.LBB6_16
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %bl
	jne	.LBB6_16
# %bb.15:
	movq	%rax, %rbx
	leaq	(%rax,%r15), %rsi
	addq	$-8, %rsi
	leaq	(%rax,%r14), %rdi
	addq	$-8, %rdi
	movl	$8, %edx
	callq	memmove
	movq	%rbx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %ebx
.LBB6_16:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	subq	%r15, %r14
	shrl	$3, %ebx
	leaq	(%r12,%rbx), %rcx
	movl	$4, %r15d
	movl	$4, %edx
	subl	%ebx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%r13d, %ecx
	leaq	(,%rcx,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movq	%rcx, -80(%rbp)         # 8-byte Spill
	leaq	(%rdx,%rcx,8), %rsi
	leaq	(%r14,%rsi), %rdi
	addq	$-8, %rdi
	addq	$-8, %r14
	addq	$8, %rdi
	subl	%r13d, %ebx
	movslq	%ebx, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB6_18
# %bb.17:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	shrq	$3, %rax
	subl	%eax, %r15d
	addq	%r12, %rax
	andl	$7, %r15d
	addq	%rax, %r15
	addq	%r15, %r14
	movq	%r14, %rdi
	movq	%r15, %rsi
	movq	-48(%rbp), %rdx         # 8-byte Reload
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
.LBB6_18:
	movq	-80(%rbp), %rbx         # 8-byte Reload
	leaq	(%r12,%rbx), %rsi
	leaq	(%r12,%rbx), %rdi
	addq	$1, %rdi
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	(%r14), %eax
	shrl	$3, %eax
	subl	%r13d, %eax
	movslq	%eax, %rdx
	callq	memmove
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, 4(%r14,%rbx)
	movl	(%r14), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$3, %ebx
	subl	%ecx, %ebx
	addq	$1, %rcx
	andl	$7, %eax
	leal	(%rax,%rcx,8), %eax
	movl	%eax, (%r14)
	andl	$536870911, %ecx        # imm = 0x1FFFFFFF
	addq	%r12, %rcx
	andl	$7, %ebx
	addq	%rcx, %rbx
	addq	-48(%rbp), %rbx         # 8-byte Folded Reload
	leaq	-72(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-72(%rbp), %rax
	movq	-96(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	%r14, %rax
	jmp	.LBB6_22
.LBB6_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -72(%rbp)
	jmp	.LBB6_21
.LBB6_20:
	movq	%rbx, %rdi
	callq	zfree
.LBB6_21:
	xorl	%eax, %eax
.LBB6_22:
	movl	$42, __A_VARIABLE(%rip)
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
.LBB6_23:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxAddChild, %edx
	movl	$.L.str.2, %ecx
	movl	$255, %esi
	callq	__assert_func
.Lfunc_end6:
	.size	raxAddChild, .Lfunc_end6-raxAddChild
                                        # -- End function
	.globl	raxCompressNode         # -- Begin function raxCompressNode
	.p2align	4, 0x90
	.type	raxCompressNode,@function
raxCompressNode:                        # @raxCompressNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	ja	.LBB7_29
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB7_29
# %bb.2:
	movq	%rcx, %r13
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edi
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_3
# %bb.4:
	movq	%rbx, -64(%rbp)         # 8-byte Spill
	movl	$0, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %r12d
	subl	%r15d, %r12d
	andl	$7, %r12d
	leaq	(%r15,%r12), %rbx
	addq	$12, %rbx
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	movq	%r13, -56(%rbp)         # 8-byte Spill
	jne	.LBB7_6
# %bb.5:
	xorl	%r13d, %r13d
	jmp	.LBB7_13
.LBB7_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, (%r13)
	xorl	%ebx, %ebx
	jmp	.LBB7_28
.LBB7_6:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB7_7
# %bb.8:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB7_10
# %bb.9:
	movl	%eax, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	addq	%rdx, %rcx
	leaq	(%r14,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
	jmp	.LBB7_11
.LBB7_7:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r13d, %r13d
.LBB7_11:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB7_13
# %bb.12:
	leaq	(%r15,%r12), %rbx
	addq	$4, %rbx
	addq	$16, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_13:
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB7_14
# %bb.15:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$3, %eax
	leal	(%rax,%r15,8), %eax
	addl	$4, %eax
	movl	%eax, (%rbx)
	leaq	4(%rbx), %rdi
	movq	-64(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB7_22
# %bb.16:
	movq	%r13, -48(%rbp)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB7_20
# %bb.17:
	andl	$-3, %ecx
	movl	%ecx, (%rbx)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edi
	testb	$4, %al
	jne	.LBB7_19
# %bb.18:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
.LBB7_19:
	addq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rbx, %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB7_21
.LBB7_14:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rdi
	callq	zfree
	xorl	%ebx, %ebx
	jmp	.LBB7_28
.LBB7_20:
	orl	$3, %eax
	movl	%eax, (%rbx)
.LBB7_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
.LBB7_22:
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addl	%ecx, %edx
	addl	$4, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %al
	jne	.LBB7_24
# %bb.23:
	movl	%eax, %ecx
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB7_24:
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	movq	-56(%rbp), %rsi         # 8-byte Reload
	jne	.LBB7_26
# %bb.25:
	xorl	%eax, %eax
	jmp	.LBB7_27
.LBB7_26:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negq	%rax
.LBB7_27:
	movq	%rbx, %rdx
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rdi
	addq	$-8, %rdi
	movl	$8, %edx
	callq	memcpy
.LBB7_28:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_29:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxCompressNode, %edx
	movl	$.L.str.3, %ecx
	movl	$396, %esi              # imm = 0x18C
	callq	__assert_func
.Lfunc_end7:
	.size	raxCompressNode, .Lfunc_end7-raxCompressNode
                                        # -- End function
	.globl	raxGenericInsert        # -- Begin function raxGenericInsert
	.p2align	4, 0x90
	.type	raxGenericInsert,@function
raxGenericInsert:                       # @raxGenericInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$136, %rsp
	movl	%r9d, %r14d
	movq	%r8, %r15
	movq	%rcx, %r13
	movq	%rdx, %rbx
	movq	%rdi, %r12
	movl	$0, -52(%rbp)
	movq	$0, (%rsp)
	leaq	-48(%rbp), %rcx
	leaq	-104(%rbp), %r8
	leaq	-52(%rbp), %r9
	movq	%rsi, -144(%rbp)        # 8-byte Spill
	callq	raxLowWalk
	movq	%rbx, %rdx
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rax
	jne	.LBB8_1
# %bb.6:
	movq	-48(%rbp), %rdi
	movl	(%rdi), %eax
	movl	-52(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB8_8
# %bb.7:
	testl	%ecx, %ecx
	jne	.LBB8_2
.LBB8_8:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB8_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_23
# %bb.10:
	andl	$2, %eax
	je	.LBB8_23
.LBB8_11:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_18
# %bb.12:
	movl	(%rdi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %al
	jne	.LBB8_14
# %bb.13:
	movl	%eax, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB8_14:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_16
# %bb.15:
	xorl	%eax, %eax
	jmp	.LBB8_17
.LBB8_1:
	movq	-48(%rbp), %rdi
.LBB8_2:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	movq	-144(%rbp), %r15        # 8-byte Reload
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	je	.LBB8_145
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jne	.LBB8_4
.LBB8_145:
	movl	(%rdi), %r14d
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r14b
	je	.LBB8_136
# %bb.146:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jne	.LBB8_136
# %bb.147:
	shrl	$3, %r14d
	movslq	-52(%rbp), %rax
	subq	%rax, %r14
	movl	$4, %ebx
	movl	$4, %eax
	subl	%r14d, %eax
	andl	$7, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, -112(%rbp)        # 8-byte Spill
	testq	%r13, %r13
	je	.LBB8_148
# %bb.149:
	movq	%r12, %r13
	leaq	(%r14,%rax), %rdi
	addq	$4, %rdi
	addq	$16, %rdi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_150
.LBB8_4:
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	addq	%rcx, %rax
	addq	$12, %rax
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_49
# %bb.5:
	xorl	%ecx, %ecx
	jmp	.LBB8_50
.LBB8_49:
	testb	$2, %cl
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB8_50:
	movzbl	%cl, %ecx
	leaq	(%rax,%rcx,8), %rax
	leaq	(%rdi,%rax), %rsi
	addq	$-8, %rsi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_52
# %bb.51:
	xorl	%eax, %eax
	jmp	.LBB8_53
.LBB8_52:
	andl	$2, %eax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-8(,%rax,8), %rax
.LBB8_53:
	movq	%r13, -112(%rbp)        # 8-byte Spill
	addq	%rax, %rsi
	leaq	-96(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %r15d
	movslq	-52(%rbp), %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB8_55
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %r15b
	jne	.LBB8_56
.LBB8_55:
	movq	%r12, %r13
	leaq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$16, %eax
.LBB8_57:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
.LBB8_58:
	shrl	$3, %r15d
	movl	%r14d, %r12d
	notl	%r12d
	callq	zmalloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_59
# %bb.60:
	movl	$8, (%rax)
	jmp	.LBB8_61
.LBB8_59:
	xorl	%eax, %eax
.LBB8_61:
	movq	%r15, %rdx
	addl	%r12d, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -72(%rbp)
	movq	$0, -80(%rbp)
	movq	$0, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	movq	%r13, %r12
	movq	-112(%rbp), %r13        # 8-byte Reload
	movq	-144(%rbp), %r15        # 8-byte Reload
	je	.LBB8_66
# %bb.62:
	movl	$4, %eax
	subl	%r14d, %eax
	andl	$7, %eax
	leaq	(%r14,%rax), %rdi
	addq	$12, %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %r13
	testb	$1, %cl
	je	.LBB8_65
# %bb.63:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_65
# %bb.64:
	leaq	(%r14,%rax), %rdi
	addq	$4, %rdi
	addq	$16, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB8_65:
	callq	zmalloc
	movq	%rax, -80(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r13, %rdx
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB8_66:
	movq	%r14, -160(%rbp)        # 8-byte Spill
	movslq	%edx, %r14
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_68
# %bb.67:
	movl	$4, %eax
	subl	%edx, %eax
	andl	$7, %eax
	leaq	(%r14,%rax), %rdi
	addq	$12, %rdi
	movq	%r14, -136(%rbp)        # 8-byte Spill
	movq	%r12, %r14
	movq	%r15, %r12
	movq	%r13, %r15
	movq	%rdx, %r13
	callq	zmalloc
	movq	%r13, %rdx
	movq	%r15, %r13
	movq	%r12, %r15
	movq	%r14, %r12
	movq	-136(%rbp), %r14        # 8-byte Reload
	movq	%rax, -88(%rbp)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_68:
	movq	-72(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_73
# %bb.69:
	movq	-80(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -160(%rbp)          # 4-byte Folded Reload
	je	.LBB8_71
# %bb.70:
	testq	%rax, %rax
	je	.LBB8_73
.LBB8_71:
	movq	-88(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB8_74
# %bb.72:
	testq	%rax, %rax
	jne	.LBB8_74
.LBB8_73:
	callq	zfree
	movq	-80(%rbp), %rdi
	callq	zfree
	movq	-88(%rbp), %rdi
	callq	zfree
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB8_231
.LBB8_16:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB8_17:
	addq	%rdx, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$12, %rsi
	callq	zrealloc
	movq	%rax, %rdi
.LBB8_18:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_19
# %bb.22:
	movq	-104(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rdi
.LBB8_23:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_20
# %bb.24:
	testb	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_25
# %bb.43:
	movq	%r13, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_47
# %bb.44:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_46
# %bb.45:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_46:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_48
.LBB8_19:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_20
.LBB8_25:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	je	.LBB8_35
# %bb.26:
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB8_27
# %bb.28:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %al
	jne	.LBB8_30
# %bb.29:
	movl	%eax, %ecx
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_30:
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_32
# %bb.31:
	xorl	%eax, %eax
	jmp	.LBB8_33
.LBB8_148:
	movq	%r12, %r13
	leaq	(%r14,%rax), %rdi
	addq	$12, %rdi
.LBB8_150:
	callq	zmalloc
	movq	%rax, %r12
	movq	%rax, -96(%rbp)
	movslq	-52(%rbp), %rax
	subl	%eax, %ebx
	andl	$7, %ebx
	leaq	(%rax,%rbx), %rdi
	addq	$12, %rdi
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB8_153
# %bb.151:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_153
# %bb.152:
	leaq	(%rax,%rbx), %rdi
	addq	$4, %rdi
	addq	$16, %rdi
	movl	$42, __A_VARIABLE(%rip)
.LBB8_153:
	callq	zmalloc
	movq	%rax, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_155
# %bb.154:
	testq	%r12, %r12
	je	.LBB8_155
# %bb.156:
	movq	-48(%rbp), %rax
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rcx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %dl
	jne	.LBB8_158
# %bb.157:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB8_158:
	addq	%rsi, %rcx
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB8_160
# %bb.159:
	xorl	%edx, %edx
	jmp	.LBB8_161
.LBB8_155:
	movq	%r12, %rdi
	callq	zfree
	movq	-72(%rbp), %rdi
	callq	zfree
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_231
.LBB8_56:
	movq	%r12, %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	-72(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %edi
	movl	$24, %eax
	testb	$2, %r15b
	je	.LBB8_57
	jmp	.LBB8_58
.LBB8_160:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
.LBB8_161:
	addq	%rdx, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-8, %rsi
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_163
# %bb.162:
	xorl	%eax, %eax
	jmp	.LBB8_164
.LBB8_163:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_164:
	addq	%rax, %rsi
	leaq	-80(%rbp), %rdi
	movl	$8, %r15d
	movl	$8, %edx
	callq	memcpy
	movl	(%r12), %eax
	andl	$7, %eax
	leal	(%rax,%r14,8), %eax
	movl	%eax, (%r12)
	xorl	%eax, %eax
	cmpl	$1, %r14d
	seta	%al
	movq	-96(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-96(%rbp), %rax
	orl	$1, (%rax)
	movq	-96(%rbp), %rax
	andl	$-3, (%rax)
	movq	-96(%rbp), %rbx
	leaq	4(%rbx), %rdi
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$4, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -64(%rbp)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB8_168
# %bb.165:
	andl	$-3, %ecx
	movl	%ecx, (%rbx)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	movq	%r13, %r14
	jne	.LBB8_167
# %bb.166:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %r15
.LBB8_167:
	addq	%rcx, %r15
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%r15, %rbx
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB8_169
.LBB8_74:
	movq	-48(%rbp), %rcx
	movslq	-52(%rbp), %rax
	movb	4(%rcx,%rax), %cl
	movb	%cl, 4(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	%rdx, -152(%rbp)        # 8-byte Spill
	je	.LBB8_75
# %bb.91:
	movq	-80(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$7, %edx
	leal	(%rdx,%rax,8), %eax
	movl	%eax, (%rcx)
	movq	-80(%rbp), %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rsi
	addq	$4, %rsi
	movslq	-52(%rbp), %rdx
	callq	memcpy
	xorl	%eax, %eax
	cmpl	$1, -52(%rbp)
	setg	%al
	movq	-80(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-2, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	movq	-80(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-3, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB8_107
# %bb.92:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_107
# %bb.93:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_94
# %bb.95:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB8_97
# %bb.96:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_97:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_99
# %bb.98:
	xorl	%ecx, %ecx
	jmp	.LBB8_100
.LBB8_168:
	orl	$3, %eax
	movl	%eax, (%rbx)
	movq	%r13, %r14
.LBB8_169:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-96(%rbp), %rax
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rcx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %dl
	jne	.LBB8_171
# %bb.170:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB8_171:
	addq	%rsi, %rcx
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB8_173
# %bb.172:
	xorl	%edx, %edx
	jmp	.LBB8_174
.LBB8_173:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
.LBB8_174:
	addq	%rdx, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$-8, %rdi
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_176
# %bb.175:
	xorl	%eax, %eax
	jmp	.LBB8_177
.LBB8_176:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_177:
	addq	%rax, %rdi
	leaq	-80(%rbp), %rsi
	movl	$8, %ebx
	movl	$8, %edx
	callq	memcpy
	addq	$1, 16(%r14)
	movl	-52(%rbp), %eax
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$7, %edx
	leal	(%rdx,%rax,8), %eax
	movl	%eax, (%rcx)
	xorl	%eax, %eax
	cmpl	$1, -52(%rbp)
	setg	%al
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-72(%rbp), %rax
	andl	$-2, (%rax)
	movq	-72(%rbp), %rax
	andl	$-3, (%rax)
	movq	-72(%rbp), %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rsi
	addq	$4, %rsi
	movslq	-52(%rbp), %rdx
	callq	memcpy
	movq	-104(%rbp), %rdi
	leaq	-72(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	testb	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_192
# %bb.178:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_179
# %bb.180:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB8_182
# %bb.181:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_182:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_184
# %bb.183:
	xorl	%ecx, %ecx
	jmp	.LBB8_185
.LBB8_47:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, 8(%r12)
	jmp	.LBB8_230
.LBB8_179:
	xorl	%ecx, %ecx
	jmp	.LBB8_186
.LBB8_27:
	xorl	%eax, %eax
	jmp	.LBB8_34
.LBB8_75:
	movq	-48(%rbp), %rax
	testb	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB8_90
# %bb.76:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB8_77
# %bb.78:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB8_80
# %bb.79:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB8_80:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_82
# %bb.81:
	xorl	%ecx, %ecx
	jmp	.LBB8_83
.LBB8_184:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB8_185:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rcx
.LBB8_186:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_190
# %bb.187:
	andl	$-3, %edx
	movl	%edx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_189
# %bb.188:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_189:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_191
.LBB8_190:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_191:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_192:
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB8_194
# %bb.193:
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rbx
.LBB8_194:
	addq	%rdx, %rbx
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_196
# %bb.195:
	xorl	%ecx, %ecx
	jmp	.LBB8_197
.LBB8_196:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB8_197:
	addq	%rcx, %rbx
	leaq	(%rax,%rbx), %rdi
	addq	$-8, %rdi
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_199
# %bb.198:
	xorl	%eax, %eax
	jmp	.LBB8_200
.LBB8_199:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_200:
	addq	%rax, %rdi
	leaq	-96(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	addq	$1, 8(%r14)
	movq	-48(%rbp), %rdi
	callq	zfree
	movl	$1, %eax
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_231
.LBB8_32:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB8_33:
	addq	%rax, %rcx
	leaq	(%rdi,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rax
.LBB8_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_35:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB8_42
# %bb.36:
	movq	-48(%rbp), %rdi
	movq	%r13, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_40
# %bb.37:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_39
# %bb.38:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_39:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_41
.LBB8_40:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_42:
	callq	__errno
	movl	$0, (%rax)
	xorl	%eax, %eax
	jmp	.LBB8_231
.LBB8_77:
	xorl	%ecx, %ecx
	jmp	.LBB8_84
.LBB8_94:
	xorl	%ecx, %ecx
	jmp	.LBB8_101
.LBB8_82:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB8_83:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rcx
.LBB8_84:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_88
# %bb.85:
	andl	$-3, %edx
	movl	%edx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_87
# %bb.86:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_87:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_89
.LBB8_88:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_89:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_90:
	movq	-104(%rbp), %rdi
	movl	$8, %edx
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	jmp	.LBB8_116
.LBB8_99:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB8_100:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rcx
.LBB8_101:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-80(%rbp), %rdi
	movq	%rcx, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %edx
	orl	$1, %edx
	movl	%edx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB8_105
# %bb.102:
	andl	$-3, %edx
	movl	%edx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_104
# %bb.103:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_104:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_106
.LBB8_105:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_106:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_107:
	movq	-80(%rbp), %rax
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rcx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %dl
	jne	.LBB8_109
# %bb.108:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB8_109:
	addq	%rsi, %rcx
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	movq	%r14, -136(%rbp)        # 8-byte Spill
	jne	.LBB8_111
# %bb.110:
	xorl	%edx, %edx
	jmp	.LBB8_112
.LBB8_111:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
.LBB8_112:
	addq	%rdx, %rcx
	leaq	(%rax,%rcx), %r14
	addq	$-8, %r14
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_114
# %bb.113:
	xorl	%eax, %eax
	jmp	.LBB8_115
.LBB8_114:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_115:
	addq	%rax, %r14
	movl	$8, %edx
	movq	%r14, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	movq	-104(%rbp), %rdi
	leaq	-80(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	%r14, -104(%rbp)
	addq	$1, 16(%r12)
	movq	-136(%rbp), %r14        # 8-byte Reload
.LBB8_116:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-152(%rbp), %rdx        # 8-byte Reload
	testl	%edx, %edx
	je	.LBB8_126
# %bb.117:
	movq	-88(%rbp), %rax
	andl	$-2, (%rax)
	movq	-88(%rbp), %rax
	andl	$-3, (%rax)
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	andl	$7, %ecx
	leal	(%rcx,%rdx,8), %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
	cmpl	$1, %edx
	setne	%al
	movq	-88(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-88(%rbp), %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rax
	movslq	-52(%rbp), %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$5, %rsi
	movq	%r14, %rdx
	callq	memcpy
	movq	-88(%rbp), %rax
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rcx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %dl
	jne	.LBB8_119
# %bb.118:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB8_119:
	addq	%rsi, %rcx
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB8_121
# %bb.120:
	xorl	%edx, %edx
	jmp	.LBB8_122
.LBB8_126:
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB8_127
.LBB8_121:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
.LBB8_122:
	addq	%rdx, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$-8, %rdi
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_124
# %bb.123:
	xorl	%eax, %eax
	jmp	.LBB8_125
.LBB8_124:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_125:
	addq	%rax, %rdi
	leaq	-96(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	addq	$1, 16(%r12)
.LBB8_127:
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rax
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rcx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %dl
	jne	.LBB8_129
# %bb.128:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rcx
.LBB8_129:
	addq	%rsi, %rcx
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB8_131
# %bb.130:
	xorl	%edx, %edx
	jmp	.LBB8_132
.LBB8_131:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
.LBB8_132:
	addq	%rdx, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$-8, %rdi
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_134
# %bb.133:
	xorl	%eax, %eax
	jmp	.LBB8_135
.LBB8_134:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB8_135:
	addq	%rax, %rdi
	leaq	-88(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rdi
	callq	zfree
	movq	-72(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rdx        # 8-byte Reload
.LBB8_136:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jae	.LBB8_210
# %bb.137:
	movq	%r13, -112(%rbp)        # 8-byte Spill
	leaq	-64(%rbp), %r14
	jmp	.LBB8_138
.LBB8_204:                              #   in Loop: Header=BB8_138 Depth=1
	andl	$2, %eax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-8(,%rax,8), %rax
.LBB8_205:                              #   in Loop: Header=BB8_138 Depth=1
	movq	%r15, %r12
	addq	%rax, %rcx
	movq	%rcx, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movq	-144(%rbp), %r15        # 8-byte Reload
.LBB8_208:                              #   in Loop: Header=BB8_138 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	addq	$1, 16(%r12)
	addq	%r13, %rbx
	movq	-64(%rbp), %rdi
	movq	%rdi, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rbx
	jae	.LBB8_209
.LBB8_138:                              # =>This Inner Loop Header: Depth=1
	cmpl	$7, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB8_206
# %bb.139:                              #   in Loop: Header=BB8_138 Depth=1
	movq	%rdx, %r13
	subq	%rbx, %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %r13
	jb	.LBB8_206
# %bb.140:                              #   in Loop: Header=BB8_138 Depth=1
	cmpq	$536870911, %r13        # imm = 0x1FFFFFFF
	movl	$536870911, %eax        # imm = 0x1FFFFFFF
	cmovaeq	%rax, %r13
	leaq	(%r15,%rbx), %rsi
	movq	%r13, %rdx
	movq	%r14, %rcx
	callq	raxCompressNode
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_215
# %bb.141:                              #   in Loop: Header=BB8_138 Depth=1
	movq	%r12, %r15
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rdi
	movl	$8, %r12d
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	jne	.LBB8_143
# %bb.142:                              #   in Loop: Header=BB8_138 Depth=1
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %r12
.LBB8_143:                              #   in Loop: Header=BB8_138 Depth=1
	addq	%rdx, %r12
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB8_201
# %bb.144:                              #   in Loop: Header=BB8_138 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB8_202
	.p2align	4, 0x90
.LBB8_206:                              #   in Loop: Header=BB8_138 Depth=1
	movzbl	(%r15,%rbx), %esi
	movq	%r14, %rdx
	leaq	-96(%rbp), %rcx
	callq	raxAddChild
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB8_215
# %bb.207:                              #   in Loop: Header=BB8_138 Depth=1
	movq	%rax, -48(%rbp)
	movq	-104(%rbp), %rdi
	movl	$8, %edx
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movq	-96(%rbp), %rax
	movq	%rax, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	movq	-120(%rbp), %rdx        # 8-byte Reload
	jmp	.LBB8_208
.LBB8_201:                              #   in Loop: Header=BB8_138 Depth=1
	testb	$2, %cl
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB8_202:                              #   in Loop: Header=BB8_138 Depth=1
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movzbl	%cl, %ecx
	leaq	(%r12,%rcx,8), %rcx
	addq	%rax, %rcx
	addq	$-8, %rcx
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_204
# %bb.203:                              #   in Loop: Header=BB8_138 Depth=1
	xorl	%eax, %eax
	jmp	.LBB8_205
.LBB8_215:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB8_216
.LBB8_209:
	movq	-112(%rbp), %r13        # 8-byte Reload
.LBB8_210:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_221
# %bb.211:
	movl	(%rdi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %al
	jne	.LBB8_213
# %bb.212:
	movl	%eax, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB8_213:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB8_219
# %bb.214:
	xorl	%eax, %eax
	jmp	.LBB8_220
.LBB8_219:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB8_220:
	addq	%rdx, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$12, %rsi
	callq	zrealloc
	movq	%rax, %rdi
.LBB8_221:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB8_216
# %bb.222:
	movq	%rdi, -48(%rbp)
	testb	$1, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB8_224
# %bb.223:
	addq	$1, 8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB8_224:
	movq	%r13, -64(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB8_228
# %bb.225:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB8_227
# %bb.226:
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdx
.LBB8_227:
	addq	%rcx, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_229
.LBB8_216:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %ecx
	ja	.LBB8_20
# %bb.217:
	orl	$2, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	orl	$1, (%rax)
	addq	$1, 8(%r12)
	movq	%r12, %rdi
	movq	%r15, %rsi
	movq	%rbx, %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB8_218
.LBB8_20:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB8_231
.LBB8_228:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_229:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-104(%rbp), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
.LBB8_230:
	movl	$1, %eax
.LBB8_231:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$136, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_218:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxGenericInsert, %edx
	movl	$.L.str.4, %ecx
	movl	$894, %esi              # imm = 0x37E
	callq	__assert_func
.Lfunc_end8:
	.size	raxGenericInsert, .Lfunc_end8-raxGenericInsert
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function raxLowWalk
	.type	raxLowWalk,@function
raxLowWalk:                             # @raxLowWalk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%rsi, %r15
	movq	%rdi, %r13
	movq	(%rdi), %rsi
	movq	%rsi, -72(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jb	.LBB9_1
# %bb.2:
	movq	%rdx, %r14
	xorl	%ebx, %ebx
	jmp	.LBB9_3
	.p2align	4, 0x90
.LBB9_22:                               #   in Loop: Header=BB9_3 Depth=1
	leaq	(%rax,%r12,8), %r13
	movl	$8, %edx
	leaq	-72(%rbp), %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rsi
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %eax
	jbe	.LBB9_23
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_6 Depth 2
                                        #     Child Loop BB9_14 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB9_23
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB9_5
# %bb.11:                               #   in Loop: Header=BB9_3 Depth=1
	cmpl	$8, %ecx
	jb	.LBB9_12
# %bb.13:                               #   in Loop: Header=BB9_3 Depth=1
	movb	(%r15,%rbx), %al
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB9_14:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%al, 4(%rsi,%r12)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_16
# %bb.15:                               #   in Loop: Header=BB9_14 Depth=2
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ecx
	shrq	$3, %rcx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %r12
	jb	.LBB9_14
	jmp	.LBB9_16
	.p2align	4, 0x90
.LBB9_5:                                #   in Loop: Header=BB9_3 Depth=1
	xorl	%r12d, %r12d
	cmpl	$8, %ecx
	jb	.LBB9_9
	.p2align	4, 0x90
.LBB9_6:                                #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r14, %rbx
	jae	.LBB9_9
# %bb.7:                                #   in Loop: Header=BB9_6 Depth=2
	movzbl	4(%rsi,%r12), %eax
	cmpb	(%r15,%rbx), %al
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB9_9
# %bb.8:                                #   in Loop: Header=BB9_6 Depth=2
	addq	$1, %r12
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %eax
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	jb	.LBB9_6
	.p2align	4, 0x90
.LBB9_9:                                #   in Loop: Header=BB9_3 Depth=1
	movl	(%rsi), %eax
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	je	.LBB9_18
	jmp	.LBB9_10
	.p2align	4, 0x90
.LBB9_12:                               #   in Loop: Header=BB9_3 Depth=1
	xorl	%r12d, %r12d
.LBB9_16:                               #   in Loop: Header=BB9_3 Depth=1
	movl	(%rsi), %eax
	shrq	$3, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r12
	je	.LBB9_10
# %bb.17:                               #   in Loop: Header=BB9_3 Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
.LBB9_18:                               #   in Loop: Header=BB9_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	16(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB9_20
# %bb.19:                               #   in Loop: Header=BB9_3 Depth=1
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	movq	-72(%rbp), %rsi
.LBB9_20:                               #   in Loop: Header=BB9_3 Depth=1
	movl	(%rsi), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	movl	$4, %edx
	subl	%eax, %edx
	addq	%rsi, %rax
	andl	$7, %edx
	addq	%rdx, %rax
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB9_22
# %bb.21:                               #   in Loop: Header=BB9_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB9_22
.LBB9_1:
	xorl	%r12d, %r12d
	xorl	%ebx, %ebx
	jmp	.LBB9_24
.LBB9_23:
	xorl	%r12d, %r12d
	jmp	.LBB9_24
.LBB9_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_24:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	-56(%rbp), %rcx         # 8-byte Reload
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB9_26
# %bb.25:
	movq	%rsi, (%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_26:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB9_28
# %bb.27:
	movq	%r13, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_28:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB9_31
# %bb.29:
	testb	$4, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB9_31
# %bb.30:
	movl	%r12d, (%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB9_31:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end9:
	.size	raxLowWalk, .Lfunc_end9-raxLowWalk
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function raxRemove
.LCPI10_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.globl	raxRemove
	.p2align	4, 0x90
	.type	raxRemove,@function
raxRemove:                              # @raxRemove
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$360, %rsp              # imm = 0x168
	movq	%rcx, %r14
	movq	%rdx, %rbx
	movq	%rdi, %r15
	leaq	-360(%rbp), %rax
	movq	%rax, -384(%rbp)
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0]
	movups	%xmm0, -376(%rbp)
	movl	$0, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, -68(%rbp)
	leaq	-384(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%r13d, %r13d
	leaq	-48(%rbp), %r12
	leaq	-68(%rbp), %r9
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	callq	raxLowWalk
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB10_4
# %bb.1:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	-68(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB10_3
# %bb.2:
	testl	%edx, %edx
	jne	.LBB10_4
.LBB10_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB10_8
.LBB10_4:
	movq	-384(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-360(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB10_7
# %bb.5:
	callq	zfree
	xorl	%r13d, %r13d
.LBB10_6:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
	addq	$360, %rsp              # imm = 0x168
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_8:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	je	.LBB10_14
# %bb.9:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB10_15
# %bb.10:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB10_12
# %bb.11:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB10_12:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB10_16
# %bb.13:
	xorl	%ecx, %ecx
	jmp	.LBB10_17
.LBB10_14:
	leaq	-48(%rbp), %r12
	jmp	.LBB10_19
.LBB10_15:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ecx, %ecx
	jmp	.LBB10_18
.LBB10_16:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB10_17:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rax
.LBB10_18:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_19:
	andb	$-2, (%rax)
	addq	$-1, 8(%r15)
	movq	-48(%rbp), %rdi
	movl	(%rdi), %eax
	shrl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_32
# %bb.20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %eax
	jne	.LBB10_114
# %bb.21:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
.LBB10_22:
	cmpl	$0, -104(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_114
# %bb.23:
	movl	$42, __A_VARIABLE(%rip)
	movq	-376(%rbp), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_58
# %bb.24:
	movq	-384(%rbp), %r8
	leaq	-1(%rcx), %rdx
	movq	%rdx, -376(%rbp)
	movq	-8(%r8,%rcx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r13, %r13
	je	.LBB10_50
# %bb.25:                               # %.preheader1
	addq	$-2, %rcx
.LBB10_26:                              # =>This Inner Loop Header: Depth=1
	movq	%r13, %rdx
	movl	(%r13), %esi
	movl	$42, __A_VARIABLE(%rip)
	movb	$1, %bl
	testb	$1, %sil
	jne	.LBB10_56
# %bb.27:                               #   in Loop: Header=BB10_26 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %sil
	jne	.LBB10_29
# %bb.28:                               #   in Loop: Header=BB10_26 Depth=1
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %esi
	jne	.LBB10_56
.LBB10_29:                              #   in Loop: Header=BB10_26 Depth=1
	movq	%rdx, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rcx
	je	.LBB10_57
# %bb.30:                               #   in Loop: Header=BB10_26 Depth=1
	movq	%rcx, -376(%rbp)
	movq	(%r8,%rcx,8), %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdx, %rax
	movq	%rdx, %rdi
	testq	%r13, %r13
	jne	.LBB10_26
# %bb.31:
	xorl	%ebx, %ebx
	movq	%rdx, %rdi
	movq	%rdx, %rax
	jmp	.LBB10_59
.LBB10_32:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdi, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_34
	jmp	.LBB10_111
	.p2align	4, 0x90
.LBB10_33:                              #   in Loop: Header=BB10_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpq	(%r15), %rdi
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_40
.LBB10_34:                              # =>This Inner Loop Header: Depth=1
	movq	%rdi, %rbx
	callq	zfree
	addq	$-1, 16(%r15)
	movq	-376(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_36
# %bb.35:                               #   in Loop: Header=BB10_34 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, -376(%rbp)
	movq	-384(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rdi
	movq	%rdi, %rax
	jmp	.LBB10_37
.LBB10_36:                              #   in Loop: Header=BB10_34 Depth=1
	xorl	%edi, %edi
	xorl	%eax, %eax
.LBB10_37:                              #   in Loop: Header=BB10_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, (%r12)
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_40
# %bb.38:                               #   in Loop: Header=BB10_34 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB10_33
# %bb.39:                               #   in Loop: Header=BB10_34 Depth=1
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	je	.LBB10_33
.LBB10_40:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB10_112
# %bb.41:
	movq	%rbx, %rsi
	callq	raxRemoveChild
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r12, %rax
	je	.LBB10_53
# %bb.42:
	movq	-376(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_48
# %bb.43:
	movq	-384(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_51
# %bb.44:
	movl	(%rax), %r13d
	shrq	$3, %r13
	movq	%rax, -80(%rbp)         # 8-byte Spill
	addq	%r13, %rax
	movl	$4, %r14d
	subl	%r13d, %r14d
	andl	$7, %r14d
	leaq	(%r14,%rax), %rbx
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	memcpy
	cmpq	%r12, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_49
# %bb.45:                               # %.preheader3
	addq	%r14, %r13
	movq	-80(%rbp), %rax         # 8-byte Reload
	leaq	(%rax,%r13), %rbx
	addq	$12, %rbx
	leaq	-64(%rbp), %r14
.LBB10_46:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addq	$8, %rbx
	cmpq	%r12, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_46
# %bb.47:                               # %.loopexit4
	addq	$-8, %rbx
	jmp	.LBB10_49
.LBB10_48:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rbx
.LBB10_49:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_52
.LBB10_50:
	xorl	%ebx, %ebx
	jmp	.LBB10_59
.LBB10_56:
	movq	%rdx, %r13
	jmp	.LBB10_59
.LBB10_51:
	movq	%r15, %rbx
.LBB10_52:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movq	-56(%rbp), %rax
.LBB10_53:
	movl	(%rax), %edx
	movl	%edx, %ecx
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %ecx
	jne	.LBB10_111
# %bb.54:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB10_111
# %bb.55:
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	jmp	.LBB10_22
.LBB10_57:
	movq	%rdx, %rdi
	movq	%rdx, %rax
.LBB10_58:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%ebx, %ebx
	xorl	%r13d, %r13d
.LBB10_59:
	movl	(%rax), %r14d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_112
# %bb.60:
	movq	%rbx, -96(%rbp)         # 8-byte Spill
	shrq	$3, %r14
	movl	$1, %r12d
	leaq	-48(%rbp), %rbx
	movq	%rax, -80(%rbp)         # 8-byte Spill
.LBB10_61:                              # =>This Inner Loop Header: Depth=1
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addl	%edx, %esi
	addl	$4, %esi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB10_63
# %bb.62:                               #   in Loop: Header=BB10_61 Depth=1
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
.LBB10_63:                              #   in Loop: Header=BB10_61 Depth=1
	addq	%rsi, %rdx
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB10_65
# %bb.64:                               #   in Loop: Header=BB10_61 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB10_66
.LBB10_65:                              #   in Loop: Header=BB10_61 Depth=1
	testb	$2, %cl
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB10_66:                              #   in Loop: Header=BB10_61 Depth=1
	movzbl	%cl, %ecx
	leaq	(%rdx,%rcx,8), %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-8, %rsi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_68
# %bb.67:                               #   in Loop: Header=BB10_61 Depth=1
	xorl	%eax, %eax
	jmp	.LBB10_69
.LBB10_68:                              #   in Loop: Header=BB10_61 Depth=1
	andl	$2, %eax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-8(,%rax,8), %rax
.LBB10_69:                              #   in Loop: Header=BB10_61 Depth=1
	addq	%rax, %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-48(%rbp), %rdi
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_75
# %bb.70:                               #   in Loop: Header=BB10_61 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB10_72
# %bb.71:                               #   in Loop: Header=BB10_61 Depth=1
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	jne	.LBB10_75
.LBB10_72:                              #   in Loop: Header=BB10_61 Depth=1
	movl	(%rdi), %esi
	shrq	$3, %rsi
	addq	%r14, %rsi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$536870911, %rsi        # imm = 0x1FFFFFFF
	ja	.LBB10_75
# %bb.73:                               #   in Loop: Header=BB10_61 Depth=1
	addl	$1, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rdi), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rax
	movq	%rsi, %r14
	jne	.LBB10_61
# %bb.74:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r14
	jmp	.LBB10_76
.LBB10_75:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$2, %r12d
	jb	.LBB10_113
.LBB10_76:
	movl	$4, %eax
	subl	%r14d, %eax
	andl	$7, %eax
	leaq	(%r14,%rax), %rdi
	addq	$12, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_96
# %bb.77:
	movq	%r13, -88(%rbp)         # 8-byte Spill
	andb	$-2, (%rax)
	movq	-56(%rbp), %rax
	andl	$-3, (%rax)
	movq	-56(%rbp), %rax
	orl	$4, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	andl	$7, %ecx
	leal	(%rcx,%r14,8), %ecx
	movl	%ecx, (%rax)
	addq	$1, 16(%r15)
	movq	-80(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %eax
	shrl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_92
# %bb.78:                               # %.preheader
	xorl	%r12d, %r12d
	leaq	-48(%rbp), %r14
	jmp	.LBB10_80
.LBB10_79:                              #   in Loop: Header=BB10_80 Depth=1
	addq	%r13, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %eax
	shrl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_92
.LBB10_80:                              # =>This Inner Loop Header: Depth=1
	movq	-56(%rbp), %rcx
	leaq	(%rcx,%r12), %rdi
	addq	$4, %rdi
	addq	$4, %rsi
	movl	%eax, %edx
	callq	memcpy
	movq	-48(%rbp), %rbx
	movl	(%rbx), %ecx
	movq	%rcx, %r13
	shrq	$3, %r13
	movl	$4, %eax
	subl	%r13d, %eax
	andl	$7, %eax
	addq	%r13, %rax
	addq	$4, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB10_82
# %bb.81:                               #   in Loop: Header=BB10_80 Depth=1
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rdx
.LBB10_82:                              #   in Loop: Header=BB10_80 Depth=1
	addq	%rdx, %rax
	movl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB10_84
# %bb.83:                               #   in Loop: Header=BB10_80 Depth=1
	xorl	%ecx, %ecx
	jmp	.LBB10_85
.LBB10_84:                              #   in Loop: Header=BB10_80 Depth=1
	testb	$2, %cl
	sete	%cl
	movl	$42, __A_VARIABLE(%rip)
.LBB10_85:                              #   in Loop: Header=BB10_80 Depth=1
	movzbl	%cl, %ecx
	leaq	(%rax,%rcx,8), %rax
	leaq	(%rbx,%rax), %rsi
	addq	$-8, %rsi
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_87
# %bb.86:                               #   in Loop: Header=BB10_80 Depth=1
	xorl	%eax, %eax
	jmp	.LBB10_88
.LBB10_87:                              #   in Loop: Header=BB10_80 Depth=1
	andl	$2, %eax
	shrl	%eax
	movl	$42, __A_VARIABLE(%rip)
	leaq	-8(,%rax,8), %rax
.LBB10_88:                              #   in Loop: Header=BB10_80 Depth=1
	addq	%rax, %rsi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	memcpy
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 16(%r15)
	movq	-48(%rbp), %rsi
	movl	(%rsi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_91
# %bb.89:                               #   in Loop: Header=BB10_80 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB10_79
# %bb.90:                               #   in Loop: Header=BB10_80 Depth=1
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$8, %eax
	je	.LBB10_79
.LBB10_91:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_92:
	movq	-56(%rbp), %rbx
	movl	(%rbx), %ecx
	movq	%rcx, %rax
	shrq	$3, %rax
	movl	$4, %edx
	subl	%eax, %edx
	andl	$7, %edx
	addq	%rax, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %eax
	testb	$4, %cl
	jne	.LBB10_94
# %bb.93:
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movq	%rcx, %rax
.LBB10_94:
	addq	%rdx, %rax
	movl	(%rbx), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	movq	-88(%rbp), %r13         # 8-byte Reload
	movq	-96(%rbp), %r14         # 8-byte Reload
	jne	.LBB10_99
# %bb.95:
	xorl	%ecx, %ecx
	jmp	.LBB10_100
.LBB10_96:
	movq	-384(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	leaq	-360(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB10_98
# %bb.97:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB10_98:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	jmp	.LBB10_6
.LBB10_99:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB10_100:
	addq	%rcx, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$-8, %rdi
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB10_102
# %bb.101:
	xorl	%eax, %eax
	jmp	.LBB10_103
.LBB10_102:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	orq	$-9, %rax
	addq	$1, %rax
.LBB10_103:
	addq	%rax, %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	testb	%r14b, %r14b
	je	.LBB10_109
# %bb.104:
	movl	(%r13), %r15d
	shrq	$3, %r15
	leaq	(%r15,%r13), %rax
	movl	$4, %r12d
	subl	%r15d, %r12d
	andl	$7, %r12d
	leaq	(%r12,%rax), %rbx
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	memcpy
	movq	-80(%rbp), %r14         # 8-byte Reload
	cmpq	%r14, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB10_108
# %bb.105:
	addq	%r12, %r15
	leaq	(%r15,%r13), %rbx
	addq	$12, %rbx
	leaq	-64(%rbp), %r15
.LBB10_106:                             # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addq	$8, %rbx
	cmpq	%r14, -64(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_106
# %bb.107:
	addq	$-8, %rbx
.LBB10_108:
	movl	$42, __A_VARIABLE(%rip)
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB10_110
.LBB10_109:
	movq	%rbx, (%r15)
.LBB10_110:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_111:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_112:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_113:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_114:
	movl	$42, __A_VARIABLE(%rip)
	movq	-384(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r13d
	leaq	-360(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB10_6
# %bb.115:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB10_6
.Lfunc_end10:
	.size	raxRemove, .Lfunc_end10-raxRemove
                                        # -- End function
	.globl	raxInsert               # -- Begin function raxInsert
	.p2align	4, 0x90
	.type	raxInsert,@function
raxInsert:                              # @raxInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$1, %r9d
	callq	raxGenericInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end11:
	.size	raxInsert, .Lfunc_end11-raxInsert
                                        # -- End function
	.globl	raxTryInsert            # -- Begin function raxTryInsert
	.p2align	4, 0x90
	.type	raxTryInsert,@function
raxTryInsert:                           # @raxTryInsert
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	xorl	%r9d, %r9d
	callq	raxGenericInsert
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end12:
	.size	raxTryInsert, .Lfunc_end12-raxTryInsert
                                        # -- End function
	.globl	raxFind                 # -- Begin function raxFind
	.p2align	4, 0x90
	.type	raxFind,@function
raxFind:                                # @raxFind
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdx, %rbx
	movl	$0, -12(%rbp)
	movq	$0, (%rsp)
	leaq	-24(%rbp), %rcx
	leaq	-12(%rbp), %r9
	xorl	%r8d, %r8d
	callq	raxLowWalk
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rax
	jne	.LBB13_4
# %bb.1:
	movq	-24(%rbp), %rax
	movl	(%rax), %ecx
	movl	-12(%rbp), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %cl
	je	.LBB13_3
# %bb.2:
	testl	%edx, %edx
	jne	.LBB13_4
.LBB13_3:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB13_5
.LBB13_4:
	movq	raxNotFound(%rip), %rax
.LBB13_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB13_5:
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB13_6
# %bb.7:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB13_9
# %bb.8:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB13_9:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB13_11
# %bb.10:
	xorl	%ecx, %ecx
	jmp	.LBB13_12
.LBB13_6:
	xorl	%eax, %eax
	jmp	.LBB13_13
.LBB13_11:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB13_12:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-32(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-32(%rbp), %rax
.LBB13_13:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB13_14
.Lfunc_end13:
	.size	raxFind, .Lfunc_end13-raxFind
                                        # -- End function
	.globl	raxFindParentLink       # -- Begin function raxFindParentLink
	.p2align	4, 0x90
	.type	raxFindParentLink,@function
raxFindParentLink:                      # @raxFindParentLink
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %r15
	movl	(%rdi), %r12d
	shrq	$3, %r12
	leaq	(%rdi,%r12), %rax
	movl	$4, %r13d
	subl	%r12d, %r13d
	andl	$7, %r13d
	leaq	(%rax,%r13), %rbx
	addq	$4, %rbx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	movq	%rbx, %rsi
	callq	memcpy
	cmpq	%r14, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB14_4
# %bb.1:                                # %.preheader
	addq	%r13, %r12
	leaq	(%r15,%r12), %rbx
	addq	$12, %rbx
	leaq	-48(%rbp), %r15
	.p2align	4, 0x90
.LBB14_2:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addq	$8, %rbx
	cmpq	%r14, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB14_2
# %bb.3:                                # %.loopexit
	addq	$-8, %rbx
.LBB14_4:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end14:
	.size	raxFindParentLink, .Lfunc_end14-raxFindParentLink
                                        # -- End function
	.globl	raxRemoveChild          # -- Begin function raxRemoveChild
	.p2align	4, 0x90
	.type	raxRemoveChild,@function
raxRemoveChild:                         # @raxRemoveChild
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$40, %rsp
	movq	%rdi, %r14
	movl	(%rdi), %r15d
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %r15b
	jne	.LBB15_9
# %bb.1:
	movq	%rsi, %r12
	leaq	4(%r14), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	shrq	$3, %r15
	leaq	(%r14,%r15), %r13
	addq	$4, %r13
	movq	%r14, %rbx
	movl	$4, %r14d
	subl	%r15d, %r14d
	andl	$7, %r14d
	addq	%r14, %r13
	movl	$42, __A_VARIABLE(%rip)
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	movq	%r13, %rsi
	callq	memcpy
	movq	%rbx, %rcx
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, %rbx
	movq	%r13, -72(%rbp)         # 8-byte Spill
	cmpq	%r12, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_5
# %bb.2:                                # %.preheader
	addq	%r14, %r15
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	(%rcx,%r15), %r13
	addq	$12, %r13
	leaq	-48(%rbp), %r15
	movq	%rax, %r14
	movq	%rax, %rbx
	.p2align	4, 0x90
.LBB15_3:                               # =>This Inner Loop Header: Depth=1
	addq	$1, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	memcpy
	addq	$8, %r13
	cmpq	%r12, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB15_3
# %bb.4:                                # %.loopexit
	addq	$-8, %r13
	movq	-64(%rbp), %rcx         # 8-byte Reload
	movq	%r14, %rax
.LBB15_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rcx), %r15d
	shrl	$3, %r15d
	subl	%ebx, %eax
	movq	%rax, %r12
	addl	%r15d, %eax
	addl	$-1, %eax
	movslq	%eax, %rdx
	leaq	1(%rbx), %rsi
	movq	%rbx, %rdi
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	movq	%rcx, %r14
	callq	memmove
	movl	(%r14), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%rcx), %edx
	andl	$7, %edx
	xorl	%ebx, %ebx
	cmpl	$1, %edx
	sete	%bl
	shlq	$3, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %edx
	jne	.LBB15_7
# %bb.6:
	addl	%r12d, %r15d
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%rsi, %rdi
	subq	%rbx, %rdi
	subl	%r15d, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	callq	memmove
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
.LBB15_7:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB15_11
# %bb.8:
	xorl	%eax, %eax
	jmp	.LBB15_12
.LBB15_9:
	movl	%r15d, %eax
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %eax
	jne	.LBB15_16
# %bb.10:
	movl	%eax, (%r14)
	jmp	.LBB15_25
.LBB15_11:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB15_12:
	movq	%r13, %rdi
	subq	%rbx, %rdi
	addq	$8, %r13
	movq	-56(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,8), %rdx
	movq	%r13, %rsi
	callq	memmove
	movl	(%r14), %eax
	movq	%rax, %rdx
	shrq	$3, %rdx
	movl	$5, %ecx
	subl	%edx, %ecx
	addq	$536870911, %rdx        # imm = 0x1FFFFFFF
	movl	%eax, %esi
	andl	$7, %esi
	leal	(%rsi,%rdx,8), %esi
	movl	%esi, (%r14)
	movl	%edx, %esi
	andl	$536870911, %esi        # imm = 0x1FFFFFFF
	andl	$7, %ecx
	addq	%rsi, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %al
	jne	.LBB15_14
# %bb.13:
	shll	$3, %edx
	movl	%edx, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB15_14:
	addq	%rcx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB15_20
# %bb.15:
	xorl	%eax, %eax
	jmp	.LBB15_21
.LBB15_16:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %r15b
	jne	.LBB15_22
# %bb.17:
	movq	%r15, %rax
	shrq	$3, %rax
	movl	$4, %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	movl	$42, __A_VARIABLE(%rip)
	addq	%rax, %rcx
	leal	(,%r15,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rcx, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	(%r14,%rax), %rsi
	addq	$4, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$1, %ecx
	movl	%ecx, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB15_26
# %bb.18:
	movq	%rax, -48(%rbp)
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB15_23
# %bb.19:
	leaq	-48(%rbp), %rsi
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	8(%r14), %rdi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB15_24
.LBB15_20:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB15_21:
	addq	%rax, %rsi
	movq	%r14, %rdi
	callq	zrealloc
	testq	%rax, %rax
	cmovneq	%rax, %r14
	jmp	.LBB15_26
.LBB15_22:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, -48(%rbp)
	movl	$1, (%r14)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_23:
	movl	$3, (%r14)
.LBB15_24:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB15_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB15_26:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r14, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end15:
	.size	raxRemoveChild, .Lfunc_end15-raxRemoveChild
                                        # -- End function
	.globl	raxRecursiveFree        # -- Begin function raxRecursiveFree
	.p2align	4, 0x90
	.type	raxRecursiveFree,@function
raxRecursiveFree:                       # @raxRecursiveFree
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
	movq	%rdi, %r15
	movl	(%rsi), %eax
	movl	%eax, %r14d
	shrl	$3, %r14d
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB16_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ecx
	subl	%r14d, %ecx
	andl	$7, %ecx
	addl	%r14d, %ecx
	addl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$-8, %edx
	jmp	.LBB16_3
.LBB16_1:
	movl	$4, %ecx
	subl	%r14d, %ecx
	andl	$7, %ecx
	addl	%r14d, %ecx
	addl	$4, %ecx
	movl	$8, %edx
	movl	$1, %r14d
.LBB16_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ecx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jne	.LBB16_5
# %bb.4:
	xorl	%eax, %eax
	jmp	.LBB16_6
.LBB16_5:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negq	%rax
.LBB16_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r14d, %r14d
	je	.LBB16_9
# %bb.7:
	addq	-56(%rbp), %rcx         # 8-byte Folded Reload
	leaq	(%rax,%rcx), %rbx
	addq	$-8, %rbx
	leaq	-48(%rbp), %r13
	.p2align	4, 0x90
.LBB16_8:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	raxRecursiveFree
	addq	$-8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	jne	.LBB16_8
.LBB16_9:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r12, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB16_15
# %bb.10:
	movl	(%rbx), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB16_15
# %bb.11:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB16_15
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB16_14
# %bb.13:
	movl	%eax, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB16_14:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	addq	%rdx, %rcx
	leaq	(%rbx,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	callq	*%r12
	movl	$42, __A_VARIABLE(%rip)
.LBB16_15:
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 16(%r15)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end16:
	.size	raxRecursiveFree, .Lfunc_end16-raxRecursiveFree
                                        # -- End function
	.globl	raxFreeWithCallback     # -- Begin function raxFreeWithCallback
	.p2align	4, 0x90
	.type	raxFreeWithCallback,@function
raxFreeWithCallback:                    # @raxFreeWithCallback
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rdx
	movq	%rdi, %rbx
	movq	(%rdi), %rsi
	callq	raxRecursiveFree
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB17_2
# %bb.1:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB17_2:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxFreeWithCallback, %edx
	movl	$.L.str.5, %ecx
	movl	$1242, %esi             # imm = 0x4DA
	callq	__assert_func
.Lfunc_end17:
	.size	raxFreeWithCallback, .Lfunc_end17-raxFreeWithCallback
                                        # -- End function
	.globl	raxFree                 # -- Begin function raxFree
	.p2align	4, 0x90
	.type	raxFree,@function
raxFree:                                # @raxFree
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	(%rdi), %rsi
	xorl	%edx, %edx
	callq	raxRecursiveFree
	cmpq	$0, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB18_2
# %bb.1:
	movq	%rbx, %rdi
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB18_2:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxFreeWithCallback, %edx
	movl	$.L.str.5, %ecx
	movl	$1242, %esi             # imm = 0x4DA
	callq	__assert_func
.Lfunc_end18:
	.size	raxFree, .Lfunc_end18-raxFree
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function raxStart
.LCPI19_0:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	128                     # 0x80
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
.LCPI19_1:
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	32                      # 0x20
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.byte	0                       # 0x0
	.text
	.globl	raxStart
	.p2align	4, 0x90
	.type	raxStart,@function
raxStart:                               # @raxStart
# %bb.0:
	movl	$2, (%rdi)
	movq	%rsi, 8(%rdi)
	leaq	48(%rdi), %rax
	movq	%rax, 16(%rdi)
	movaps	.LCPI19_0(%rip), %xmm0  # xmm0 = [0,0,0,0,0,0,0,0,128,0,0,0,0,0,0,0]
	movups	%xmm0, 32(%rdi)
	movq	$0, 24(%rdi)
	movq	$0, 472(%rdi)
	leaq	208(%rdi), %rax
	movq	%rax, 184(%rdi)
	movaps	.LCPI19_1(%rip), %xmm0  # xmm0 = [0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0]
	movups	%xmm0, 192(%rdi)
	movl	$0, 464(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end19:
	.size	raxStart, .Lfunc_end19-raxStart
                                        # -- End function
	.globl	raxIteratorAddChars     # -- Begin function raxIteratorAddChars
	.p2align	4, 0x90
	.type	raxIteratorAddChars,@function
raxIteratorAddChars:                    # @raxIteratorAddChars
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
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	leaq	(%rdi,%rdx), %r12
	cmpq	%r12, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jae	.LBB20_9
# %bb.1:
	movq	16(%rbx), %r15
	leaq	48(%rbx), %r13
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r13, %r15
	movq	%rsi, -48(%rbp)         # 8-byte Spill
	je	.LBB20_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB20_4
.LBB20_2:
	xorl	%r15d, %r15d
.LBB20_4:
	addq	%r12, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	zrealloc
	movq	%rax, 16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB20_5
# %bb.6:
	movl	$42, __A_VARIABLE(%rip)
	testq	%r15, %r15
	jne	.LBB20_8
# %bb.7:
	movq	32(%rbx), %rdx
	movq	%rax, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB20_8:
	movq	%r12, 40(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	32(%rbx), %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
.LBB20_9:
	addq	16(%rbx), %rdi
	movq	%r14, %rdx
	callq	memmove
	addq	%r14, 32(%rbx)
	movl	$1, %eax
.LBB20_10:
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
.LBB20_5:
	testq	%r15, %r15
	cmovneq	%r15, %r13
	movq	%r13, 16(%rbx)
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB20_10
.Lfunc_end20:
	.size	raxIteratorAddChars, .Lfunc_end20-raxIteratorAddChars
                                        # -- End function
	.globl	raxIteratorDelChars     # -- Begin function raxIteratorDelChars
	.p2align	4, 0x90
	.type	raxIteratorDelChars,@function
raxIteratorDelChars:                    # @raxIteratorDelChars
# %bb.0:
	subq	%rsi, 32(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end21:
	.size	raxIteratorDelChars, .Lfunc_end21-raxIteratorDelChars
                                        # -- End function
	.globl	raxIteratorNextStep     # -- Begin function raxIteratorNextStep
	.p2align	4, 0x90
	.type	raxIteratorNextStep,@function
raxIteratorNextStep:                    # @raxIteratorNextStep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$56, %rsp
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testb	$2, %cl
	jne	.LBB22_56
# %bb.1:
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB22_49
# %bb.2:
	movq	32(%r15), %rax
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	176(%r15), %rax
	leaq	184(%r15), %r14
	movq	192(%r15), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	leaq	176(%r15), %r13
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -72(%rbp)         # 8-byte Spill
                                        # implicit-def: $ecx
                                        # kill: killed $ecx
	movq	%r14, -88(%rbp)         # 8-byte Spill
.LBB22_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_19 Depth 2
                                        #       Child Loop BB22_31 Depth 3
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	testb	$4, %cl
	jne	.LBB22_5
# %bb.4:                                #   in Loop: Header=BB22_3 Depth=1
	shrl	$3, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
.LBB22_5:                               #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB22_19
# %bb.6:                                #   in Loop: Header=BB22_3 Depth=1
	testl	%edx, %edx
	je	.LBB22_19
# %bb.7:                                #   in Loop: Header=BB22_3 Depth=1
	movq	%r14, %rdi
	movq	%rax, %rsi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_57
# %bb.8:                                #   in Loop: Header=BB22_3 Depth=1
	movq	%r13, %rbx
	movq	(%r13), %r14
	leaq	4(%r14), %rsi
	movl	(%r14), %ecx
	movq	%rcx, %r13
	shrq	$3, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testb	$4, %cl
	je	.LBB22_10
# %bb.9:                                #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %eax
.LBB22_10:                              #   in Loop: Header=BB22_3 Depth=1
	movl	%eax, %edx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_58
# %bb.11:                               #   in Loop: Header=BB22_3 Depth=1
	movl	$4, %r12d
	subl	%r13d, %r12d
	andl	$7, %r12d
	leaq	(%r14,%r13), %rax
	addq	$4, %rax
	addq	%rax, %r12
	movl	$8, %edx
	movq	%rbx, %r13
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	472(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_14
# %bb.12:                               #   in Loop: Header=BB22_3 Depth=1
	movq	%r13, %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_14
# %bb.13:                               #   in Loop: Header=BB22_3 Depth=1
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB22_14:                              #   in Loop: Header=BB22_3 Depth=1
	movq	(%r13), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	movq	-88(%rbp), %r14         # 8-byte Reload
	jne	.LBB22_59
# %bb.15:                               #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_48
.LBB22_16:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	.p2align	4, 0x90
.LBB22_17:                              #   in Loop: Header=BB22_19 Depth=2
	xorl	%esi, %esi
.LBB22_18:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	jne	.LBB22_47
.LBB22_19:                              #   Parent Loop BB22_3 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB22_31 Depth 3
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	je	.LBB22_21
# %bb.20:                               #   in Loop: Header=BB22_19 Depth=2
	movq	16(%r15), %rax
	movq	32(%r15), %rdx
	movb	-1(%rdx,%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r15), %rax
	movq	%rax, %rdi
	jmp	.LBB22_26
	.p2align	4, 0x90
.LBB22_21:                              #   in Loop: Header=BB22_19 Depth=2
	movq	8(%r15), %rax
	movq	176(%r15), %rcx
	cmpq	(%rax), %rcx
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB22_51
# %bb.22:                               #   in Loop: Header=BB22_19 Depth=2
	movq	16(%r15), %rax
	movq	32(%r15), %rdx
	movb	-1(%rdx,%rax), %cl
	movl	$42, __A_VARIABLE(%rip)
	movq	192(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_24
# %bb.23:                               #   in Loop: Header=BB22_19 Depth=2
	leaq	-1(%rax), %rdi
	movq	%rdi, 192(%r15)
	movq	184(%r15), %rdi
	movq	-8(%rdi,%rax,8), %rdi
	movq	%rdi, %rax
	jmp	.LBB22_25
.LBB22_24:                              #   in Loop: Header=BB22_19 Depth=2
	xorl	%edi, %edi
	xorl	%eax, %eax
.LBB22_25:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, (%r13)
	movl	$42, __A_VARIABLE(%rip)
.LBB22_26:                              #   in Loop: Header=BB22_19 Depth=2
	movl	(%rdi), %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testb	$4, %dil
	je	.LBB22_28
# %bb.27:                               #   in Loop: Header=BB22_19 Depth=2
	shrl	$3, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %ebx
.LBB22_28:                              #   in Loop: Header=BB22_19 Depth=2
	movl	%ebx, %edi
	subq	%rdi, %rdx
	movq	%rdx, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %dl
	jne	.LBB22_17
# %bb.29:                               #   in Loop: Header=BB22_19 Depth=2
	xorl	%edi, %edi
	testl	%esi, %esi
	sete	%dil
	shrq	$3, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edi, %edx
	jbe	.LBB22_17
# %bb.30:                               #   in Loop: Header=BB22_19 Depth=2
	movl	$4, %edi
	subl	%edx, %edi
	andl	$7, %edi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	%rdx, %rdi
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB22_31:                              #   Parent Loop BB22_3 Depth=1
                                        #     Parent Loop BB22_19 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	cmpb	%cl, 4(%rax,%rsi)
	movl	$42, __A_VARIABLE(%rip)
	ja	.LBB22_33
# %bb.32:                               #   in Loop: Header=BB22_31 Depth=3
	addq	$1, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rdi
	cmpq	%rdx, %rsi
	jb	.LBB22_31
.LBB22_33:                              # %.loopexit
                                        #   in Loop: Header=BB22_19 Depth=2
	leaq	(%rax,%rdi), %r12
	addq	$4, %r12
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%edx, %esi
	je	.LBB22_16
# %bb.34:                               #   in Loop: Header=BB22_19 Depth=2
	movl	%esi, %ecx
	leaq	(%rax,%rcx), %rsi
	addq	$4, %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movq	176(%r15), %rsi
	movq	%r14, %rdi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_43
# %bb.35:                               #   in Loop: Header=BB22_19 Depth=2
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	472(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB22_38
# %bb.36:                               #   in Loop: Header=BB22_19 Depth=2
	movq	%r13, %rdi
	callq	*%rax
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB22_38
# %bb.37:                               #   in Loop: Header=BB22_19 Depth=2
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
.LBB22_38:                              #   in Loop: Header=BB22_19 Depth=2
	movq	(%r13), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$5, %esi
	testb	$1, %cl
	je	.LBB22_46
# %bb.39:                               #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB22_44
# %bb.40:                               #   in Loop: Header=BB22_19 Depth=2
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %cl
	jne	.LBB22_42
# %bb.41:                               #   in Loop: Header=BB22_19 Depth=2
	movl	%ecx, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB22_42:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	callq	memcpy
	movq	-56(%rbp), %rax
	jmp	.LBB22_45
.LBB22_43:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	movl	$1, %esi
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_18
.LBB22_44:                              #   in Loop: Header=BB22_19 Depth=2
	xorl	%eax, %eax
.LBB22_45:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	movl	$1, %esi
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
.LBB22_46:                              #   in Loop: Header=BB22_19 Depth=2
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB22_18
	.p2align	4, 0x90
.LBB22_47:                              #   in Loop: Header=BB22_3 Depth=1
	cmpl	$5, %esi
	jne	.LBB22_50
.LBB22_48:                              #   in Loop: Header=BB22_3 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rax
	xorl	%esi, %esi
	jmp	.LBB22_3
.LBB22_49:
	andl	$-2, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB22_56
.LBB22_50:                              # %.loopexit1
	movl	-44(%rbp), %eax         # 4-byte Reload
	jmp	.LBB22_55
.LBB22_51:
	orb	$2, (%r15)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 192(%r15)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 176(%r15)
.LBB22_52:
	movl	$1, %eax
.LBB22_53:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_54:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_55:
	movl	$42, __A_VARIABLE(%rip)
.LBB22_56:
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
.LBB22_57:
	xorl	%eax, %eax
	jmp	.LBB22_54
.LBB22_58:
	xorl	%eax, %eax
	jmp	.LBB22_53
.LBB22_59:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB22_63
# %bb.60:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %cl
	jne	.LBB22_62
# %bb.61:
	movl	%ecx, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB22_62:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rax
	jmp	.LBB22_64
.LBB22_63:
	xorl	%eax, %eax
.LBB22_64:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	jmp	.LBB22_52
.Lfunc_end22:
	.size	raxIteratorNextStep, .Lfunc_end22-raxIteratorNextStep
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function raxStackPush
	.type	raxStackPush,@function
raxStackPush:                           # @raxStackPush
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movq	%rdi, %rbx
	movq	8(%rdi), %rsi
	cmpq	16(%rdi), %rsi
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB23_9
# %bb.1:
	movq	(%rbx), %r15
	leaq	24(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	shlq	$4, %rsi
	cmpq	%rax, %r15
	je	.LBB23_2
# %bb.5:
	movq	%r15, %rdi
	callq	zrealloc
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_6
# %bb.7:
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB23_8
.LBB23_2:
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB23_3
# %bb.4:
	movq	16(%rbx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	memcpy
.LBB23_8:
	movl	$42, __A_VARIABLE(%rip)
	shlq	16(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%rbx), %rsi
.LBB23_9:
	movq	(%rbx), %rax
	movq	%r14, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 8(%rbx)
	movl	$1, %eax
.LBB23_10:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB23_6:
	movl	$1, 280(%rbx)
	callq	__errno
	movl	$12, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB23_10
.LBB23_3:
	movq	%r15, (%rbx)
	movl	$1, 280(%rbx)
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB23_10
.Lfunc_end23:
	.size	raxStackPush, .Lfunc_end23-raxStackPush
                                        # -- End function
	.globl	raxSeekGreatest         # -- Begin function raxSeekGreatest
	.p2align	4, 0x90
	.type	raxSeekGreatest,@function
raxSeekGreatest:                        # @raxSeekGreatest
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %r15
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%rdi), %rsi
	movl	(%rsi), %edi
	movl	%edi, %ecx
	shrl	$3, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	je	.LBB24_16
# %bb.1:
	leaq	176(%r15), %r13
	leaq	184(%r15), %r12
	.p2align	4, 0x90
.LBB24_2:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	testb	$4, %dil
	jne	.LBB24_4
# %bb.3:                                #   in Loop: Header=BB24_2 Depth=1
	addq	%rdx, %rsi
	addq	$3, %rsi
	movl	$1, %edx
	jmp	.LBB24_5
	.p2align	4, 0x90
.LBB24_4:                               #   in Loop: Header=BB24_2 Depth=1
	addq	$4, %rsi
.LBB24_5:                               #   in Loop: Header=BB24_2 Depth=1
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_15
# %bb.6:                                #   in Loop: Header=BB24_2 Depth=1
	movq	(%r13), %rsi
	movl	(%rsi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %ecx
	testb	$4, %al
	jne	.LBB24_8
# %bb.7:                                #   in Loop: Header=BB24_2 Depth=1
	movl	%eax, %ecx
	andl	$-8, %ecx
	movl	$42, __A_VARIABLE(%rip)
.LBB24_8:                               #   in Loop: Header=BB24_2 Depth=1
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB24_10
# %bb.9:                                #   in Loop: Header=BB24_2 Depth=1
	leaq	(%rsi,%rcx), %rbx
	addq	$-8, %rbx
	xorl	%r14d, %r14d
	jmp	.LBB24_11
	.p2align	4, 0x90
.LBB24_10:                              #   in Loop: Header=BB24_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	shll	$2, %edx
	notl	%edx
	andl	$8, %edx
	addq	%rdx, %rcx
	leaq	(%rsi,%rcx), %rbx
	addq	$-8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	sete	%r14b
.LBB24_11:                              #   in Loop: Header=BB24_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rdi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB24_14
# %bb.12:                               #   in Loop: Header=BB24_2 Depth=1
	xorb	$1, %r14b
	movzbl	%r14b, %eax
	leaq	(%rbx,%rax,8), %rsi
	addq	$-8, %rsi
	movl	$8, %edx
	movq	%r13, %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r13), %rsi
	movl	(%rsi), %edi
	movl	%edi, %ecx
	shrl	$3, %ecx
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB24_2
# %bb.13:
	movl	$1, %eax
	jmp	.LBB24_16
.LBB24_14:
	movl	$42, __A_VARIABLE(%rip)
.LBB24_15:
	xorl	%eax, %eax
.LBB24_16:
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
.Lfunc_end24:
	.size	raxSeekGreatest, .Lfunc_end24-raxSeekGreatest
                                        # -- End function
	.globl	raxIteratorPrevStep     # -- Begin function raxIteratorPrevStep
	.p2align	4, 0x90
	.type	raxIteratorPrevStep,@function
raxIteratorPrevStep:                    # @raxIteratorPrevStep
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	(%rdi), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	testb	$2, %cl
	jne	.LBB25_42
# %bb.1:
	movq	%rdi, %r12
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB25_2
# %bb.3:
	movq	32(%r12), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	movq	176(%r12), %r13
	leaq	184(%r12), %r14
	movq	192(%r12), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	176(%r12), %r15
	movl	$42, __A_VARIABLE(%rip)
	testl	%esi, %esi
	setne	%dl
	movq	%r13, %rax
	movq	%r13, %rsi
	.p2align	4, 0x90
.LBB25_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_22 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	je	.LBB25_5
# %bb.11:                               #   in Loop: Header=BB25_4 Depth=1
	movq	16(%r12), %rcx
	movq	32(%r12), %rdi
	movb	-1(%rdi,%rcx), %r8b
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_12
	.p2align	4, 0x90
.LBB25_5:                               #   in Loop: Header=BB25_4 Depth=1
	movq	8(%r12), %rcx
	cmpq	(%rcx), %rax
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB25_6
# %bb.7:                                #   in Loop: Header=BB25_4 Depth=1
	movq	16(%r12), %rax
	movq	32(%r12), %rdi
	movb	-1(%rdi,%rax), %r8b
	movl	$42, __A_VARIABLE(%rip)
	movq	192(%r12), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB25_8
# %bb.9:                                #   in Loop: Header=BB25_4 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%r12)
	movq	184(%r12), %rcx
	movq	-8(%rcx,%rax,8), %rsi
	movq	%rsi, %rax
	jmp	.LBB25_10
.LBB25_8:                               #   in Loop: Header=BB25_4 Depth=1
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB25_10:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, (%r15)
.LBB25_12:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rsi), %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ecx
	testb	$4, %bl
	je	.LBB25_14
# %bb.13:                               #   in Loop: Header=BB25_4 Depth=1
	shrl	$3, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %ecx
.LBB25_14:                              #   in Loop: Header=BB25_4 Depth=1
	movl	%ecx, %ecx
	subq	%rcx, %rdi
	movq	%rdi, 32(%r12)
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rax), %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %bl
	jne	.LBB25_31
# %bb.15:                               #   in Loop: Header=BB25_4 Depth=1
	movq	%rbx, %rdi
	shrq	$3, %rdi
	notb	%dl
	movzbl	%dl, %ecx
	andl	$1, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ecx, %edi
	jbe	.LBB25_31
# %bb.16:                               #   in Loop: Header=BB25_4 Depth=1
	movl	$4, %ecx
	subl	%edi, %ecx
	andl	$7, %ecx
	addq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	andl	$-8, %ebx
	addq	%rbx, %rdi
	addq	$4, %rdi
	movl	(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %dl
	jne	.LBB25_18
# %bb.17:                               #   in Loop: Header=BB25_4 Depth=1
	leaq	(%rax,%rdi), %rbx
	addq	$-8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	xorl	%esi, %esi
	jmp	.LBB25_19
.LBB25_18:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rdx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdi
	leaq	(%rax,%rdi), %rbx
	addq	$-8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	andl	$2, %ecx
	shrl	%ecx
	movl	$42, __A_VARIABLE(%rip)
	leaq	-8(,%rcx,8), %rsi
.LBB25_19:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$7, %edx
	ja	.LBB25_21
# %bb.20:                               #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB25_30
.LBB25_21:                              #   in Loop: Header=BB25_4 Depth=1
	addq	%rsi, %rbx
	shrl	$3, %edx
	.p2align	4, 0x90
.LBB25_22:                              #   Parent Loop BB25_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%r8b, 3(%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	jb	.LBB25_23
# %bb.24:                               #   in Loop: Header=BB25_22 Depth=2
	addq	$-8, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-1, %rdx
	jg	.LBB25_22
# %bb.25:                               #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	jne	.LBB25_26
	jmp	.LBB25_30
.LBB25_23:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB25_26:                              #   in Loop: Header=BB25_4 Depth=1
	addq	$-1, %rdx
	movslq	%edx, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$4, %rsi
	movl	$1, %edx
	movq	%r12, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_39
# %bb.27:                               #   in Loop: Header=BB25_4 Depth=1
	movq	(%r15), %rsi
	movq	%r14, %rdi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_39
# %bb.28:                               #   in Loop: Header=BB25_4 Depth=1
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%r12, %rdi
	callq	raxSeekGreatest
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB25_39
# %bb.29:                               #   in Loop: Header=BB25_4 Depth=1
	movq	(%r15), %rax
.LBB25_30:                              #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_31:                              #   in Loop: Header=BB25_4 Depth=1
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB25_32
# %bb.38:                               #   in Loop: Header=BB25_4 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movq	%rax, %rsi
	jmp	.LBB25_4
.LBB25_2:
	andl	$-2, %ecx
	movl	%ecx, (%r12)
	jmp	.LBB25_42
.LBB25_32:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB25_33
# %bb.34:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %cl
	jne	.LBB25_36
# %bb.35:
	movl	%ecx, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB25_36:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rax
	jmp	.LBB25_37
.LBB25_6:
	orb	$2, (%r12)
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 192(%r12)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r12)
	movq	%r13, 176(%r12)
	movl	$1, %eax
	jmp	.LBB25_41
.LBB25_33:
	xorl	%eax, %eax
.LBB25_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r12)
	movl	$1, %eax
	jmp	.LBB25_40
.LBB25_39:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
.LBB25_40:
	movl	$42, __A_VARIABLE(%rip)
.LBB25_41:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB25_42:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end25:
	.size	raxIteratorPrevStep, .Lfunc_end25-raxIteratorPrevStep
                                        # -- End function
	.globl	raxSeek                 # -- Begin function raxSeek
	.p2align	4, 0x90
	.type	raxSeek,@function
raxSeek:                                # @raxSeek
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$88, %rsp
	movq	%rcx, %r8
	movq	%rdx, %r10
	movq	%rdi, %r15
	movq	$0, 192(%rdi)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 176(%rdi)
	movb	(%rsi), %cl
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$62, %cl
	jne	.LBB26_3
# %bb.1:
	xorl	%ecx, %ecx
	cmpb	$61, 1(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	jne	.LBB26_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	jmp	.LBB26_6
.LBB26_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$60, %cl
	jne	.LBB26_8
# %bb.4:
	xorl	%ecx, %ecx
	cmpb	$61, 1(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	jne	.LBB26_10
# %bb.5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r14d
	xorl	%edx, %edx
	xorl	%esi, %esi
.LBB26_6:
	movl	$1, %ebx
	jmp	.LBB26_18
.LBB26_7:
	xorl	%edx, %edx
	jmp	.LBB26_16
.LBB26_8:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %cl
	jne	.LBB26_11
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	xorl	%ecx, %ecx
	xorl	%edx, %edx
	xorl	%esi, %esi
	xorl	%r14d, %r14d
	jmp	.LBB26_18
.LBB26_10:
	xorl	%edx, %edx
	xorl	%esi, %esi
	jmp	.LBB26_17
.LBB26_11:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$94, %cl
	jne	.LBB26_13
# %bb.12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	xorl	%ecx, %ecx
	jmp	.LBB26_15
.LBB26_13:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$36, %cl
	jne	.LBB26_51
# %bb.14:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%edx, %edx
	movl	$1, %ecx
.LBB26_15:
	xorl	%esi, %esi
.LBB26_16:
	xorl	%r14d, %r14d
.LBB26_17:
	xorl	%ebx, %ebx
.LBB26_18:
	movq	8(%r15), %rdi
	cmpq	$0, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_21
# %bb.19:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB26_24
# %bb.20:
	movl	$.L.str.6, %esi
	movq	%r15, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	callq	raxSeek
	movl	%eax, %r12d
	jmp	.LBB26_23
.LBB26_21:
	orl	$3, %eax
	movl	%eax, (%r15)
.LBB26_22:
	movl	$1, %r12d
.LBB26_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r12d, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB26_24:
	leaq	176(%r15), %r13
	movl	$42, __A_VARIABLE(%rip)
	testl	%ecx, %ecx
	je	.LBB26_31
# %bb.25:
	movq	(%rdi), %rax
	movq	%rax, 176(%r15)
	movq	%r15, %rdi
	callq	raxSeekGreatest
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_41
# %bb.26:
	movq	(%r13), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	je	.LBB26_109
# %bb.27:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB26_49
# %bb.28:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rsi, %rdx
	addq	$4, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %esi
	testb	$4, %cl
	jne	.LBB26_30
# %bb.29:
	movl	%ecx, %esi
	andl	$-8, %esi
	movl	$42, __A_VARIABLE(%rip)
.LBB26_30:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	addq	%rsi, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	jmp	.LBB26_50
.LBB26_31:
	movl	%esi, -52(%rbp)         # 4-byte Spill
	leaq	184(%r15), %rax
	movl	$0, -56(%rbp)
	movq	%rax, -96(%rbp)         # 8-byte Spill
	movq	%rax, (%rsp)
	xorl	%r12d, %r12d
	leaq	-56(%rbp), %r9
	movq	%r10, %rsi
	movq	%r8, %rdx
	movq	%r13, %rcx
	movq	%r8, -88(%rbp)          # 8-byte Spill
	xorl	%r8d, %r8d
	movq	%r10, -80(%rbp)         # 8-byte Spill
	callq	raxLowWalk
	cmpl	$0, 464(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_108
# %bb.32:
	movq	%rax, %rsi
	movq	%r13, -64(%rbp)         # 8-byte Spill
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	movq	-88(%rbp), %rdx         # 8-byte Reload
	je	.LBB26_37
# %bb.33:
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rdx, %rsi
	jne	.LBB26_37
# %bb.34:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %eax
	movl	-56(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	je	.LBB26_36
# %bb.35:
	testl	%ecx, %ecx
	jne	.LBB26_37
.LBB26_36:
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB26_69
.LBB26_37:
	movl	%r14d, %eax
	orl	-52(%rbp), %eax         # 4-byte Folded Reload
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_52
# %bb.38:
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rsi
	movq	-96(%rbp), %rbx         # 8-byte Reload
	movq	%rbx, %rdi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_41
# %bb.39:
	movl	%r14d, -68(%rbp)        # 4-byte Spill
	movq	192(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$2, %rax
	jb	.LBB26_53
# %bb.40:
	movl	$1, %ecx
	jmp	.LBB26_44
.LBB26_41:
	xorl	%r12d, %r12d
	jmp	.LBB26_23
.LBB26_42:                              #   in Loop: Header=BB26_44 Depth=1
	movq	%r15, %rdi
	movq	%r13, %rsi
	movq	%r14, %rdx
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_82
.LBB26_43:                              #   in Loop: Header=BB26_44 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-120(%rbp), %rcx        # 8-byte Reload
	addq	$1, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movq	192(%r15), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rcx
	jae	.LBB26_53
.LBB26_44:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB26_47 Depth 2
	movq	(%rbx), %rax
	movq	-8(%rax,%rcx,8), %rdx
	movq	%rcx, -120(%rbp)        # 8-byte Spill
	movq	(%rax,%rcx,8), %r12
	movl	(%rdx), %eax
	leaq	4(%rdx), %r13
	movq	%rax, %r14
	shrq	$3, %r14
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB26_42
# %bb.45:                               #   in Loop: Header=BB26_44 Depth=1
	movq	%rdx, -112(%rbp)        # 8-byte Spill
	leaq	(%rdx,%r14), %rax
	movl	$4, %ebx
	subl	%r14d, %ebx
	andl	$7, %ebx
	leaq	(%rbx,%rax), %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	cmpq	%r12, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB26_48
# %bb.46:                               #   in Loop: Header=BB26_44 Depth=1
	addq	%rbx, %r14
	movq	-112(%rbp), %rax        # 8-byte Reload
	leaq	(%rax,%r14), %rbx
	addq	$12, %rbx
	leaq	-48(%rbp), %r14
	.p2align	4, 0x90
.LBB26_47:                              #   Parent Loop BB26_44 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	addq	$1, %r13
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	addq	$8, %rbx
	cmpq	%r12, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_47
.LBB26_48:                              #   in Loop: Header=BB26_44 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%r13, %rsi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	movq	-96(%rbp), %rbx         # 8-byte Reload
	jne	.LBB26_43
	jmp	.LBB26_97
.LBB26_49:
	xorl	%eax, %eax
.LBB26_50:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	jmp	.LBB26_22
.LBB26_51:
	callq	__errno
	movl	$0, (%rax)
	xorl	%r12d, %r12d
	jmp	.LBB26_23
.LBB26_52:
	orb	$2, (%r15)
	jmp	.LBB26_107
.LBB26_53:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	-104(%rbp), %rdi        # 8-byte Reload
	je	.LBB26_55
# %bb.54:
	addq	$-1, %rax
	movq	%rax, 192(%r15)
.LBB26_55:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rdi
	movl	-68(%rbp), %ebx         # 4-byte Reload
	movq	-80(%rbp), %rcx         # 8-byte Reload
	movl	-52(%rbp), %edx         # 4-byte Reload
	movq	-64(%rbp), %rax         # 8-byte Reload
	jne	.LBB26_62
# %bb.56:
	movl	$42, __A_VARIABLE(%rip)
	movq	176(%r15), %rax
	andb	$-2, (%r15)
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB26_75
.LBB26_57:
	movl	$42, __A_VARIABLE(%rip)
	testl	%edx, %edx
	je	.LBB26_59
# %bb.58:
	xorl	%r12d, %r12d
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	raxIteratorNextStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_108
.LBB26_59:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB26_78
# %bb.60:
	xorl	%r12d, %r12d
	movq	%r15, %rdi
	xorl	%esi, %esi
	callq	raxIteratorPrevStep
	jmp	.LBB26_68
.LBB26_62:
	movq	(%rax), %rsi
	testb	$4, (%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB26_79
# %bb.63:
	addq	%rdi, %rcx
	movl	$1, %edx
	movq	%r15, %rdi
	movq	%rcx, %rsi
	callq	raxIteratorAddChars
	xorl	%r12d, %r12d
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_108
# %bb.64:
	andb	$-2, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB26_66
# %bb.65:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	raxIteratorPrevStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_108
.LBB26_66:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB26_78
# %bb.67:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	raxIteratorNextStep
.LBB26_68:
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB26_78
	jmp	.LBB26_108
.LBB26_69:
	movq	%r15, %rdi
	movq	-80(%rbp), %rsi         # 8-byte Reload
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_108
# %bb.70:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB26_83
# %bb.71:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB26_73
# %bb.72:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB26_73:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB26_98
# %bb.74:
	xorl	%ecx, %ecx
	jmp	.LBB26_99
.LBB26_75:
	movl	-56(%rbp), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB26_57
# %bb.76:
	andl	$1, %eax
	je	.LBB26_57
# %bb.77:
	testl	%ecx, %ecx
	je	.LBB26_57
.LBB26_78:
	orb	$1, (%r15)
	jmp	.LBB26_106
.LBB26_79:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	-56(%rbp), %rax
	movb	4(%rsi,%rax), %r14b
	movb	(%rcx,%rdi), %r12b
	andl	$-2, (%r15)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -52(%rbp)           # 4-byte Folded Reload
	je	.LBB26_87
# %bb.80:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r12b, %r14b
	jbe	.LBB26_84
# %bb.81:
	movq	%r15, %rdi
	xorl	%esi, %esi
	jmp	.LBB26_86
.LBB26_82:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_97
.LBB26_83:
	xorl	%eax, %eax
	jmp	.LBB26_100
.LBB26_84:
	movl	(%rsi), %edx
	addq	$4, %rsi
	shrq	$3, %rdx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_97
# %bb.85:
	movq	%r15, %rdi
	movl	$1, %esi
.LBB26_86:
	callq	raxIteratorNextStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_97
.LBB26_87:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB26_105
# %bb.88:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	%r12b, %r14b
	jae	.LBB26_95
# %bb.89:
	movq	%r15, %rdi
	callq	raxSeekGreatest
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_97
# %bb.90:
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	(%rax), %rax
	movl	(%rax), %ecx
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %cl
	jne	.LBB26_101
# %bb.91:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	addq	$4, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %cl
	jne	.LBB26_93
# %bb.92:
	movl	%ecx, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB26_93:
	addq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %cl
	jne	.LBB26_102
# %bb.94:
	xorl	%ecx, %ecx
	jmp	.LBB26_103
.LBB26_95:
	movq	176(%r15), %rsi
	movl	(%rsi), %edx
	addq	$4, %rsi
	shrq	$3, %rdx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB26_97
# %bb.96:
	movq	%r15, %rdi
	movl	$1, %esi
	callq	raxIteratorPrevStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	jne	.LBB26_105
.LBB26_97:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
	jmp	.LBB26_108
.LBB26_98:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB26_99:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
.LBB26_100:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	jmp	.LBB26_106
.LBB26_101:
	xorl	%eax, %eax
	jmp	.LBB26_104
.LBB26_102:
	movl	$42, __A_VARIABLE(%rip)
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB26_103:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
.LBB26_104:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, 24(%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_105:
	orb	$1, (%r15)
	movl	$42, __A_VARIABLE(%rip)
.LBB26_106:
	movl	$42, __A_VARIABLE(%rip)
.LBB26_107:
	movl	$1, %r12d
.LBB26_108:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB26_23
.LBB26_109:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxSeek, %edx
	movl	$.L.str.7, %ecx
	movl	$1553, %esi             # imm = 0x611
	callq	__assert_func
.Lfunc_end26:
	.size	raxSeek, .Lfunc_end26-raxSeek
                                        # -- End function
	.globl	raxNext                 # -- Begin function raxNext
	.p2align	4, 0x90
	.type	raxNext,@function
raxNext:                                # @raxNext
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	raxIteratorNextStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB27_1
# %bb.2:
	testb	$2, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	$0, %ebx
	jne	.LBB27_3
	jmp	.LBB27_4
.LBB27_1:
	movl	$12, %ebx
.LBB27_3:
	callq	__errno
	movl	%ebx, (%rax)
	xorl	%eax, %eax
.LBB27_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	raxNext, .Lfunc_end27-raxNext
                                        # -- End function
	.globl	raxPrev                 # -- Begin function raxPrev
	.p2align	4, 0x90
	.type	raxPrev,@function
raxPrev:                                # @raxPrev
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	xorl	%esi, %esi
	callq	raxIteratorPrevStep
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB28_1
# %bb.2:
	testb	$2, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %eax
	movl	$0, %ebx
	jne	.LBB28_3
	jmp	.LBB28_4
.LBB28_1:
	movl	$12, %ebx
.LBB28_3:
	callq	__errno
	movl	%ebx, (%rax)
	xorl	%eax, %eax
.LBB28_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end28:
	.size	raxPrev, .Lfunc_end28-raxPrev
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function raxRandomWalk
.LCPI29_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI29_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI29_2:
	.quad	4890909195324358656     # double 9.2233720368547758E+18
	.text
	.globl	raxRandomWalk
	.p2align	4, 0x90
	.type	raxRandomWalk,@function
raxRandomWalk:                          # @raxRandomWalk
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movq	%rdi, %r13
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_1
# %bb.2:
	movq	%rsi, %r14
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB29_4
# %bb.3:
	movq	%rax, %xmm1
	punpckldq	.LCPI29_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI29_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	callq	log
	callq	floor
	movsd	.LCPI29_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %rbx
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %rbx
	addq	%rbx, %rbx
	callq	rand
	cltq
	xorl	%edx, %edx
	divq	%rbx
	movq	%rdx, %r14
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
.LBB29_4:
	movq	176(%r13), %rax
	movq	%rax, -48(%rbp)
	movl	$42, __A_VARIABLE(%rip)
	leaq	184(%r13), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movq	%rax, %rcx
	jmp	.LBB29_5
	.p2align	4, 0x90
.LBB29_24:                              #   in Loop: Header=BB29_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_5:                               # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	testq	%r14, %r14
	jne	.LBB29_7
# %bb.6:                                #   in Loop: Header=BB29_5 Depth=1
	testb	$1, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB29_27
.LBB29_7:                               #   in Loop: Header=BB29_5 Depth=1
	movl	(%rax), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	testb	$4, %al
	jne	.LBB29_9
# %bb.8:                                #   in Loop: Header=BB29_5 Depth=1
	shrl	$3, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ebx
.LBB29_9:                               #   in Loop: Header=BB29_5 Depth=1
	callq	rand
	movq	-48(%rbp), %rsi
	movq	8(%r13), %rcx
	xorl	%edi, %edi
	cmpq	(%rcx), %rsi
	setne	%dil
	addl	%ebx, %edi
	cltd
	idivl	%edi
	movl	$42, __A_VARIABLE(%rip)
	cmpl	%ebx, %edx
	jne	.LBB29_16
# %bb.10:                               #   in Loop: Header=BB29_5 Depth=1
	movq	192(%r13), %rax
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB29_11
# %bb.12:                               #   in Loop: Header=BB29_5 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%r13)
	movq	184(%r13), %rcx
	movq	-8(%rcx,%rax,8), %rcx
	movq	%rcx, %rax
	jmp	.LBB29_13
	.p2align	4, 0x90
.LBB29_16:                              #   in Loop: Header=BB29_5 Depth=1
	movl	%edx, %eax
	movl	(%rsi), %edx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%eax, %r12
	testb	$4, %dl
	jne	.LBB29_17
# %bb.18:                               #   in Loop: Header=BB29_5 Depth=1
	addq	%r12, %rsi
	addq	$4, %rsi
	movl	$1, %edx
	jmp	.LBB29_19
	.p2align	4, 0x90
.LBB29_17:                              #   in Loop: Header=BB29_5 Depth=1
	addq	$4, %rsi
	shrq	$3, %rdx
.LBB29_19:                              #   in Loop: Header=BB29_5 Depth=1
	movq	%r13, %rdi
	callq	raxIteratorAddChars
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_26
# %bb.20:                               #   in Loop: Header=BB29_5 Depth=1
	movq	-48(%rbp), %rbx
	movl	(%rbx), %r15d
	movq	-56(%rbp), %rdi         # 8-byte Reload
	movq	%rbx, %rsi
	callq	raxStackPush
	movl	$42, __A_VARIABLE(%rip)
	testl	%eax, %eax
	je	.LBB29_25
# %bb.21:                               #   in Loop: Header=BB29_5 Depth=1
	shrq	$3, %r15
	addq	%r15, %rbx
	movl	$4, %eax
	subl	%r15d, %eax
	andl	$7, %eax
	addq	%rbx, %rax
	leaq	(%rax,%r12,8), %rsi
	addq	$4, %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	-48(%rbp), %rcx
	movq	%rcx, %rax
	jmp	.LBB29_22
.LBB29_11:                              #   in Loop: Header=BB29_5 Depth=1
	xorl	%ecx, %ecx
	xorl	%eax, %eax
.LBB29_13:                              #   in Loop: Header=BB29_5 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, -48(%rbp)
	movl	(%rax), %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %esi
	testb	$4, %dl
	je	.LBB29_15
# %bb.14:                               #   in Loop: Header=BB29_5 Depth=1
	shrl	$3, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %esi
.LBB29_15:                              #   in Loop: Header=BB29_5 Depth=1
	movl	%esi, %edx
	subq	%rdx, 32(%r13)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB29_22:                              #   in Loop: Header=BB29_5 Depth=1
	testb	$1, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB29_24
# %bb.23:                               #   in Loop: Header=BB29_5 Depth=1
	addq	$-1, %r14
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB29_24
.LBB29_1:
	orb	$2, (%r13)
	xorl	%eax, %eax
	jmp	.LBB29_29
.LBB29_25:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_26:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB29_28
.LBB29_27:
	movq	%rcx, 176(%r13)
	movl	$1, %eax
.LBB29_28:
	movl	$42, __A_VARIABLE(%rip)
.LBB29_29:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	raxRandomWalk, .Lfunc_end29-raxRandomWalk
                                        # -- End function
	.globl	raxCompare              # -- Begin function raxCompare
	.p2align	4, 0x90
	.type	raxCompare,@function
raxCompare:                             # @raxCompare
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rcx, %r14
	movq	%rdi, %r15
	movb	(%rsi), %al
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$61, %al
	je	.LBB30_2
# %bb.1:
	xorl	%r12d, %r12d
	cmpb	$61, 1(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_3
.LBB30_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %r12d
.LBB30_3:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$62, %al
	jne	.LBB30_5
# %bb.4:
	xorl	%ebx, %ebx
	movl	$1, %r13d
	jmp	.LBB30_7
.LBB30_5:
	movl	$42, __A_VARIABLE(%rip)
	cmpb	$60, %al
	jne	.LBB30_14
# %bb.6:
	xorl	%r13d, %r13d
	movl	$1, %ebx
.LBB30_7:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_8:
	movq	32(%r15), %rax
	cmpq	%r14, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaq	%r14, %rax
	movq	16(%r15), %rdi
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcmp
	movl	%r13d, %ecx
	orl	%ebx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB30_11
# %bb.9:
	testl	%eax, %eax
	je	.LBB30_15
.LBB30_10:
	testl	%eax, %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovgl	%r13d, %ebx
	jmp	.LBB30_23
.LBB30_11:
	xorl	%ebx, %ebx
	testl	%eax, %eax
	jne	.LBB30_22
# %bb.12:
	xorl	%ebx, %ebx
	cmpq	%r14, 32(%r15)
	sete	%bl
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB30_22
.LBB30_14:
	xorl	%ebx, %ebx
	cmpb	$61, 1(%rsi)
	movl	$42, __A_VARIABLE(%rip)
	movl	$0, %r13d
	je	.LBB30_8
	jmp	.LBB30_23
.LBB30_15:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r12d, %r12d
	je	.LBB30_18
# %bb.16:
	cmpq	%r14, 32(%r15)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB30_18
# %bb.17:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %ebx
	jmp	.LBB30_23
.LBB30_18:
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB30_20
# %bb.19:
	xorl	%ebx, %ebx
	cmpq	%r14, 32(%r15)
	setb	%bl
	jmp	.LBB30_22
.LBB30_20:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r13d, %r13d
	je	.LBB30_10
# %bb.21:
	xorl	%ebx, %ebx
	cmpq	%r14, 32(%r15)
	seta	%bl
.LBB30_22:
	movl	$42, __A_VARIABLE(%rip)
.LBB30_23:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%ebx, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end30:
	.size	raxCompare, .Lfunc_end30-raxCompare
                                        # -- End function
	.globl	raxStop                 # -- Begin function raxStop
	.p2align	4, 0x90
	.type	raxStop,@function
raxStop:                                # @raxStop
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	movq	16(%rdi), %rdi
	leaq	48(%rbx), %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %rdi
	je	.LBB31_2
# %bb.1:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB31_2:
	movq	184(%rbx), %rdi
	addq	$208, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rbx, %rdi
	je	.LBB31_4
# %bb.3:
	callq	zfree
	movl	$42, __A_VARIABLE(%rip)
.LBB31_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end31:
	.size	raxStop, .Lfunc_end31-raxStop
                                        # -- End function
	.globl	raxEOF                  # -- Begin function raxEOF
	.p2align	4, 0x90
	.type	raxEOF,@function
raxEOF:                                 # @raxEOF
# %bb.0:
	movl	(%rdi), %eax
	andl	$2, %eax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end32:
	.size	raxEOF, .Lfunc_end32-raxEOF
                                        # -- End function
	.globl	raxSize                 # -- Begin function raxSize
	.p2align	4, 0x90
	.type	raxSize,@function
raxSize:                                # @raxSize
# %bb.0:
	movq	8(%rdi), %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end33:
	.size	raxSize, .Lfunc_end33-raxSize
                                        # -- End function
	.globl	raxRecursiveShow        # -- Begin function raxRecursiveShow
	.p2align	4, 0x90
	.type	raxRecursiveShow,@function
raxRecursiveShow:                       # @raxRecursiveShow
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
	movl	%esi, %r13d
	movl	%edi, %r15d
	movl	(%rdx), %eax
	movl	%eax, %edx
	shrl	$3, %edx
	testb	$4, %al
	movl	$34, %eax
	movl	$91, %esi
	cmovnel	%eax, %esi
	leaq	4(%r14), %rcx
	movl	$93, %r8d
	cmovnel	%eax, %r8d
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%eax, %r12d
	movl	(%r14), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB34_7
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB34_2
# %bb.3:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB34_5
# %bb.4:
	movl	%eax, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB34_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	addq	%rdx, %rcx
	leaq	(%r14,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rsi
	jmp	.LBB34_6
.LBB34_2:
	xorl	%esi, %esi
.LBB34_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%eax, %r12d
	movl	$42, __A_VARIABLE(%rip)
	movl	(%r14), %eax
.LBB34_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, -44(%rbp)           # 4-byte Folded Spill
	testb	$4, %al
	jne	.LBB34_9
# %bb.8:
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	%ecx, -44(%rbp)         # 4-byte Spill
	movl	$42, __A_VARIABLE(%rip)
.LBB34_9:
	movl	$42, __A_VARIABLE(%rip)
	testl	%r15d, %r15d
	je	.LBB34_12
# %bb.10:
	xorl	%ecx, %ecx
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -44(%rbp)           # 4-byte Folded Reload
	seta	%cl
	leal	(%rcx,%rcx,2), %ecx
	leal	4(%r13,%rcx), %r13d
	jne	.LBB34_12
# %bb.11:
	addl	%r12d, %r13d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB34_13
.LBB34_12:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB34_20
.LBB34_13:
	shrl	$3, %eax
	leaq	(%r14,%rax), %rcx
	movl	$4, %edx
	subl	%eax, %edx
	andl	$7, %edx
	leaq	(%rdx,%rcx), %rbx
	addq	$4, %rbx
	addl	$1, %r15d
	movl	-44(%rbp), %eax         # 4-byte Reload
	movq	%rax, -80(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movq	%r14, -72(%rbp)         # 8-byte Spill
	movl	%r15d, -60(%rbp)        # 4-byte Spill
	jmp	.LBB34_14
	.p2align	4, 0x90
.LBB34_18:                              #   in Loop: Header=BB34_14 Depth=1
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
.LBB34_19:                              #   in Loop: Header=BB34_14 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-56(%rbp), %rdx
	movl	%r15d, %edi
	movl	%r13d, %esi
	callq	raxRecursiveShow
	addq	$8, %rbx
	addq	$1, %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	-80(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB34_20
.LBB34_14:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB34_17 Depth 2
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB34_18
# %bb.15:                               #   in Loop: Header=BB34_14 Depth=1
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r13d, %r14d
	movq	%r13, %r15
	testl	%r13d, %r13d
	jle	.LBB34_16
	.p2align	4, 0x90
.LBB34_17:                              #   Parent Loop BB34_14 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	putchar
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %r14d
	jne	.LBB34_17
.LBB34_16:                              #   in Loop: Header=BB34_14 Depth=1
	movq	-72(%rbp), %r14         # 8-byte Reload
	movzbl	4(%r14,%r12), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movq	%r15, %r13
	movl	-60(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB34_19
.LBB34_20:
	movl	$42, __A_VARIABLE(%rip)
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end34:
	.size	raxRecursiveShow, .Lfunc_end34-raxRecursiveShow
                                        # -- End function
	.globl	raxShow                 # -- Begin function raxShow
	.p2align	4, 0x90
	.type	raxShow,@function
raxShow:                                # @raxShow
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	(%rdi), %rdx
	xorl	%edi, %edi
	xorl	%esi, %esi
	callq	raxRecursiveShow
	movl	$10, %edi
	callq	putchar
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end35:
	.size	raxShow, .Lfunc_end35-raxShow
                                        # -- End function
	.globl	raxDebugShowNode        # -- Begin function raxDebugShowNode
	.p2align	4, 0x90
	.type	raxDebugShowNode,@function
raxDebugShowNode:                       # @raxDebugShowNode
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	subq	$24, %rsp
	cmpl	$0, raxDebugMsg(%rip)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB36_11
# %bb.1:
	movq	%rsi, %r15
	movq	%rdi, %rsi
	movl	(%r15), %r9d
	movl	%r9d, %ecx
	shrl	$3, %ecx
	leaq	4(%r15), %r8
	andl	$1, %r9d
	movl	%ecx, (%rsp)
	movl	$.L.str.13, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	printf
	movl	(%r15), %eax
	movl	%eax, %ebx
	shrl	$3, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testb	$4, %al
	jne	.LBB36_2
# %bb.3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$4, %ecx
	subl	%ebx, %ecx
	andl	$7, %ecx
	addl	%ebx, %ecx
	addl	$4, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %edx
	andl	$-8, %edx
	jmp	.LBB36_4
.LBB36_2:
	movl	$4, %ecx
	subl	%ebx, %ecx
	andl	$7, %ecx
	addl	%ebx, %ecx
	addl	$4, %ecx
	movl	$8, %edx
	movl	$1, %ebx
.LBB36_4:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %ecx
	addq	%rdx, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB36_6
# %bb.5:
	xorl	%eax, %eax
	jmp	.LBB36_7
.LBB36_6:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	negq	%rax
.LBB36_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB36_10
# %bb.8:
	addq	%rcx, %r15
	addq	%rax, %r15
	movl	%ebx, %eax
	shlq	$3, %rax
	subq	%rax, %r15
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB36_9:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$8, %r15
	movq	-32(%rbp), %rsi
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-1, %ebx
	jne	.LBB36_9
.LBB36_10:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
	movl	$42, __A_VARIABLE(%rip)
.LBB36_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end36:
	.size	raxDebugShowNode, .Lfunc_end36-raxDebugShowNode
                                        # -- End function
	.globl	raxTouch                # -- Begin function raxTouch
	.p2align	4, 0x90
	.type	raxTouch,@function
raxTouch:                               # @raxTouch
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$24, %rsp
	movl	(%rdi), %eax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	jne	.LBB37_2
# %bb.1:
	xorl	%r12d, %r12d
	jmp	.LBB37_8
.LBB37_2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$2, %al
	jne	.LBB37_3
# %bb.4:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	$42, __A_VARIABLE(%rip)
	movl	$8, %edx
	testb	$4, %al
	jne	.LBB37_6
# %bb.5:
	movl	%eax, %edx
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
.LBB37_6:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	addq	%rdx, %rcx
	leaq	(%rdi,%rcx), %rsi
	addq	$-8, %rsi
	movq	%rdi, %rbx
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	%rbx, %rdi
	movq	-56(%rbp), %r12
	movl	$42, __A_VARIABLE(%rip)
	movl	(%rbx), %eax
	jmp	.LBB37_7
.LBB37_3:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%r12d, %r12d
.LBB37_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB37_8:
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$1, %edx
	testb	$4, %al
	jne	.LBB37_12
# %bb.9:
	movl	$42, __A_VARIABLE(%rip)
	movl	%ecx, %edx
	testl	%ecx, %ecx
	je	.LBB37_10
.LBB37_12:
	movl	%ecx, %eax
	movl	$4, %ebx
	subl	%ecx, %ebx
	andl	$7, %ebx
	addq	%rax, %rbx
	movl	%edx, %r13d
	addq	$4, %rdi
	xorl	%r14d, %r14d
	movl	$0, -44(%rbp)           # 4-byte Folded Spill
	jmp	.LBB37_13
	.p2align	4, 0x90
.LBB37_16:                              #   in Loop: Header=BB37_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
.LBB37_19:                              #   in Loop: Header=BB37_13 Depth=1
	callq	raxTouch
	addq	%r12, %rax
	addq	$1, %r14
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rbx
	movq	%rax, %r12
	cmpq	%r13, %r14
	movq	%r15, %rdi
	jae	.LBB37_11
.LBB37_13:                              # =>This Inner Loop Header: Depth=1
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$1, %r13d
	je	.LBB37_15
# %bb.14:                               #   in Loop: Header=BB37_13 Depth=1
	movzbl	(%rdi,%r14), %eax
	addq	%rax, %r12
	movl	$42, __A_VARIABLE(%rip)
.LBB37_15:                              #   in Loop: Header=BB37_13 Depth=1
	movq	%rdi, %r15
	leaq	(%rdi,%rbx), %rsi
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	callq	memcpy
	movq	-56(%rbp), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$106764128, %rdi        # imm = 0x65D1760
	jne	.LBB37_16
# %bb.17:                               #   in Loop: Header=BB37_13 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	-44(%rbp), %eax         # 4-byte Reload
	testl	%eax, %eax
	jg	.LBB37_20
# %bb.18:                               #   in Loop: Header=BB37_13 Depth=1
	addl	$1, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
	jmp	.LBB37_19
.LBB37_10:
	movq	%r12, %rax
.LBB37_11:
	movl	$42, __A_VARIABLE(%rip)
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB37_20:
	movl	$1, %edi
	callq	exit
.Lfunc_end37:
	.size	raxTouch, .Lfunc_end37-raxTouch
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"rax-not-found-pointer"
	.size	.L.str, 22

	.type	raxNotFound,@object     # @raxNotFound
	.data
	.globl	raxNotFound
	.p2align	3
raxNotFound:
	.quad	.L.str
	.size	raxNotFound, 8

	.type	raxDebugMsg,@object     # @raxDebugMsg
	.p2align	2
raxDebugMsg:
	.long	1                       # 0x1
	.size	raxDebugMsg, 4

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"/root/.unikraft/apps/redis/build/libredis/origin/redis-5.0.6/src/rax.c"
	.size	.L.str.1, 71

	.type	.L__func__.raxAddChild,@object # @__func__.raxAddChild
.L__func__.raxAddChild:
	.asciz	"raxAddChild"
	.size	.L__func__.raxAddChild, 12

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"n->iscompr == 0"
	.size	.L.str.2, 16

	.type	.L__func__.raxCompressNode,@object # @__func__.raxCompressNode
.L__func__.raxCompressNode:
	.asciz	"raxCompressNode"
	.size	.L__func__.raxCompressNode, 16

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"n->size == 0 && n->iscompr == 0"
	.size	.L.str.3, 32

	.type	.L__func__.raxGenericInsert,@object # @__func__.raxGenericInsert
.L__func__.raxGenericInsert:
	.asciz	"raxGenericInsert"
	.size	.L__func__.raxGenericInsert, 17

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"raxRemove(rax,s,i,NULL) != 0"
	.size	.L.str.4, 29

	.type	.L__func__.raxFreeWithCallback,@object # @__func__.raxFreeWithCallback
.L__func__.raxFreeWithCallback:
	.asciz	"raxFreeWithCallback"
	.size	.L__func__.raxFreeWithCallback, 20

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"rax->numnodes == 0"
	.size	.L.str.5, 19

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	">="
	.size	.L.str.6, 3

	.type	.L__func__.raxSeek,@object # @__func__.raxSeek
.L__func__.raxSeek:
	.asciz	"raxSeek"
	.size	.L__func__.raxSeek, 8

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"it->node->iskey"
	.size	.L.str.7, 16

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"%c%.*s%c"
	.size	.L.str.8, 9

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"=%p"
	.size	.L.str.9, 4

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	" `-(%c) "
	.size	.L.str.10, 9

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"\n"
	.size	.L.str.11, 2

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	" -> "
	.size	.L.str.12, 5

	.type	.L.str.13,@object       # @.str.13
.L.str.13:
	.asciz	"%s: %p [%.*s] key:%d size:%d children:"
	.size	.L.str.13, 39

	.type	.L.str.14,@object       # @.str.14
.L.str.14:
	.asciz	"%p "
	.size	.L.str.14, 4

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
