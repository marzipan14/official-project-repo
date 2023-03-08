	.text
	.file	"rax.c"
	.globl	raxSetDebugMsg          # -- Begin function raxSetDebugMsg
	.p2align	4, 0x90
	.type	raxSetDebugMsg,@function
raxSetDebugMsg:                         # @raxSetDebugMsg
# %bb.0:
	movl	%edi, raxDebugMsg(%rip)
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
	leaq	(%rcx,%rax), %rdx
	addq	$4, %rdx
	testl	%esi, %esi
	leaq	12(%rcx,%rax), %rdi
	cmoveq	%rdx, %rdi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB1_1
# %bb.2:
	shll	$3, %ebx
	movl	%ebx, (%rax)
	jmp	.LBB1_3
.LBB1_1:
	xorl	%eax, %eax
.LBB1_3:
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
	testq	%rax, %rax
	je	.LBB2_5
# %bb.1:
	movq	%rax, %rbx
	movaps	.LCPI2_0(%rip), %xmm0   # xmm0 = [0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0]
	movups	%xmm0, 8(%rax)
	movl	$8, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB2_4
# %bb.2:
	movl	$0, (%rax)
	movq	%rax, (%rbx)
	jmp	.LBB2_6
.LBB2_4:
	movq	$0, (%rbx)
	movq	%rbx, %rdi
	callq	zfree
.LBB2_5:
	xorl	%ebx, %ebx
.LBB2_6:
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
	testq	%rsi, %rsi
	je	.LBB3_5
# %bb.1:
	movl	(%rdi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	%eax, %esi
	andl	$-8, %esi
	testb	$4, %al
	movl	$8, %edx
	cmovel	%esi, %edx
	testb	$1, %al
	jne	.LBB3_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB3_4
.LBB3_5:
	movq	%rdi, %rax
	retq
.LBB3_3:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB3_4:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$8, %rsi
	jmp	zrealloc                # TAILCALL
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
	testq	%rsi, %rsi
	je	.LBB4_2
# %bb.1:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %eax
	cmovel	%ecx, %eax
	addq	%rdx, %rax
	addq	%rax, %rdi
	addq	$4, %rdi
	leaq	-8(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB4_3
.LBB4_2:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB4_3:
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
	testb	$2, %al
	jne	.LBB5_1
# %bb.2:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leaq	(%rsi,%rdx), %rcx
	addq	$4, %rcx
	testb	$1, %al
	jne	.LBB5_4
# %bb.3:
	xorl	%eax, %eax
	jmp	.LBB5_5
.LBB5_1:
	xorl	%eax, %eax
	jmp	.LBB5_6
.LBB5_4:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB5_5:
	addq	%rax, %rcx
	leaq	(%rdi,%rcx), %rsi
	addq	$-8, %rsi
	leaq	-8(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-8(%rbp), %rax
.LBB5_6:
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
	testb	$4, %r15b
	jne	.LBB6_22
# %bb.1:
	movq	%rcx, %r14
	movq	%r15, %r13
	shrq	$3, %r13
	testb	$1, %r15b
	jne	.LBB6_3
# %bb.2:
	xorl	%eax, %eax
	jmp	.LBB6_4
.LBB6_3:
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
	testb	$1, %r15b
	movl	%esi, -52(%rbp)         # 4-byte Spill
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	jne	.LBB6_6
# %bb.5:
	xorl	%ebx, %ebx
	jmp	.LBB6_7
.LBB6_6:
	movl	%r15d, %ebx
	shll	$2, %ebx
	notl	%ebx
	andl	$8, %ebx
.LBB6_7:
	addl	$-8, %eax
	movl	%eax, (%rdi)
	movq	%rdi, -64(%rbp)         # 8-byte Spill
	movl	$8, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB6_18
# %bb.8:
	movq	%rax, %r12
	movq	%r14, -80(%rbp)         # 8-byte Spill
	movl	$3, %eax
	leal	1(%r13), %ecx
	subl	%r13d, %eax
	andl	$536870911, %ecx        # imm = 0x1FFFFFFF
	andl	$7, %eax
	leal	8(,%r13,8), %r14d
	addl	%ecx, %eax
	addl	$4, %eax
	addq	%rax, %r14
	addq	%rbx, %r14
	movl	$0, (%r12)
	movq	%r12, -72(%rbp)
	movq	-64(%rbp), %rdi         # 8-byte Reload
	movq	%r14, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB6_19
# %bb.9:
	movl	$4, %ecx
	subl	%r13d, %ecx
	andl	$7, %ecx
	andl	$-8, %r15d
	addq	%rcx, %r13
	addq	%r13, %r15
	addq	$4, %r15
	leaq	4(%rax), %r12
	movl	(%rax), %r8d
	xorl	%ebx, %ebx
	cmpq	$8, %r8
	jb	.LBB6_13
# %bb.10:
	movq	%r8, %rcx
	shrq	$3, %rcx
	xorl	%ebx, %ebx
	movl	-52(%rbp), %edx         # 4-byte Reload
	.p2align	4, 0x90
.LBB6_11:                               # =>This Inner Loop Header: Depth=1
	cmpb	%dl, (%r12,%rbx)
	ja	.LBB6_13
# %bb.12:                               #   in Loop: Header=BB6_11 Depth=1
	addq	$1, %rbx
	cmpq	%rcx, %rbx
	jb	.LBB6_11
.LBB6_13:
	addq	-48(%rbp), %r15         # 8-byte Folded Reload
	movl	%r8d, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	jne	.LBB6_15
# %bb.14:
	movq	%rax, %r13
	leaq	(%rax,%r15), %rsi
	addq	$-8, %rsi
	leaq	(%rax,%r14), %rdi
	addq	$-8, %rdi
	movl	$8, %edx
	callq	memmove
	movq	%r13, %rax
	movl	(%r13), %r8d
.LBB6_15:
	movq	%rax, -64(%rbp)         # 8-byte Spill
	subq	%r15, %r14
	shrl	$3, %r8d
	leaq	(%r12,%r8), %rcx
	movl	$4, %r15d
	movl	$4, %edx
	subl	%r8d, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%ebx, %r13d
	leaq	(,%r13,8), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	leaq	(%rdx,%r13,8), %rsi
	leaq	(%r14,%rsi), %rdi
	addq	$-8, %rdi
	addq	$-8, %r14
	addq	$8, %rdi
	subl	%ebx, %r8d
	movslq	%r8d, %rdx
	shlq	$3, %rdx
	callq	memmove
	testq	%r14, %r14
	je	.LBB6_17
# %bb.16:
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
.LBB6_17:
	leaq	(%r12,%r13), %rsi
	leaq	(%r12,%r13), %rdi
	addq	$1, %rdi
	movq	-64(%rbp), %r14         # 8-byte Reload
	movl	(%r14), %eax
	shrl	$3, %eax
	subl	%ebx, %eax
	movslq	%eax, %rdx
	callq	memmove
	movl	-52(%rbp), %eax         # 4-byte Reload
	movb	%al, 4(%r14,%r13)
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
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rbx, (%rax)
	movq	%r14, %rax
	jmp	.LBB6_21
.LBB6_18:
	movq	$0, -72(%rbp)
	jmp	.LBB6_20
.LBB6_19:
	movq	%r12, %rdi
	callq	zfree
.LBB6_20:
	xorl	%eax, %eax
.LBB6_21:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB6_22:
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
	subq	$40, %rsp
	cmpl	$4, (%rdi)
	jae	.LBB7_21
# %bb.1:
	movq	%rcx, %r14
	movq	%rdx, %r15
	movq	%rsi, %rbx
	movq	%rdi, %r12
	movl	$8, %edi
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB7_2
# %bb.3:
	movl	$0, (%rax)
	movq	%rax, (%r14)
	movl	$4, %ecx
	subl	%r15d, %ecx
	andl	$7, %ecx
	leaq	(%r15,%rcx), %r13
	addq	$12, %r13
	movl	(%r12), %eax
	testb	$1, %al
	movq	%rbx, -72(%rbp)         # 8-byte Spill
	jne	.LBB7_5
# %bb.4:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	jmp	.LBB7_9
.LBB7_2:
	movq	$0, (%r14)
	xorl	%ebx, %ebx
	jmp	.LBB7_20
.LBB7_5:
	movq	%r14, -64(%rbp)         # 8-byte Spill
	leaq	(%r15,%rcx), %r14
	addq	$4, %r14
	movl	%eax, %ecx
	andl	$2, %ecx
	jne	.LBB7_6
# %bb.7:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%r12,%rax), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	(%r12), %ecx
	andl	$2, %ecx
	jmp	.LBB7_8
.LBB7_6:
	xorl	%eax, %eax
	movq	%rax, -48(%rbp)         # 8-byte Spill
.LBB7_8:
	addq	$16, %r14
	testl	%ecx, %ecx
	cmoveq	%r14, %r13
	movq	-64(%rbp), %r14         # 8-byte Reload
.LBB7_9:
	movq	%r12, %rdi
	movq	%r13, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB7_10
# %bb.11:
	movq	%rax, %rbx
	movl	(%rax), %eax
	andl	$3, %eax
	leal	(%rax,%r15,8), %eax
	addl	$4, %eax
	movl	%eax, (%rbx)
	leaq	4(%rbx), %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	movq	%r15, %rdx
	callq	memcpy
	movl	(%rbx), %eax
	movb	$1, %dl
	testb	$1, %al
	je	.LBB7_16
# %bb.12:
	movq	-48(%rbp), %rdx         # 8-byte Reload
	movq	%rdx, -56(%rbp)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rbx)
	testq	%rdx, %rdx
	je	.LBB7_14
# %bb.13:
	andl	$-3, %ecx
	movl	%ecx, (%rbx)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %eax
	cmovel	%ecx, %eax
	addq	%rdx, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB7_15
.LBB7_10:
	movq	(%r14), %rdi
	callq	zfree
	xorl	%ebx, %ebx
	jmp	.LBB7_20
.LBB7_14:
	orl	$3, %eax
	movl	%eax, (%rbx)
.LBB7_15:
	movl	(%rbx), %eax
	testb	$1, %al
	sete	%dl
.LBB7_16:
	movl	%eax, %ecx
	shrl	$3, %ecx
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addl	%ecx, %esi
	addl	$4, %esi
	movl	%eax, %edi
	andl	$-8, %edi
	testb	$4, %al
	movl	$8, %ecx
	cmovel	%edi, %ecx
	addq	%rsi, %rcx
	testb	%dl, %dl
	je	.LBB7_18
# %bb.17:
	xorl	%eax, %eax
	jmp	.LBB7_19
.LBB7_18:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	negq	%rax
.LBB7_19:
	movq	%rbx, %rdx
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rdi
	addq	$-8, %rdi
	movl	$8, %edx
	movq	%r14, %rsi
	callq	memcpy
.LBB7_20:
	movq	%rbx, %rax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB7_21:
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
	subq	$104, %rsp
	movl	%r9d, -104(%rbp)        # 4-byte Spill
	movq	%rcx, -112(%rbp)        # 8-byte Spill
	movq	%rdx, %r15
	movq	%rsi, %r13
	movq	%rdi, -80(%rbp)         # 8-byte Spill
	movq	(%rdi), %rdi
	movq	%rdi, -56(%rbp)
	xorl	%r14d, %r14d
	testq	%rdx, %rdx
	movq	%r8, -120(%rbp)         # 8-byte Spill
	je	.LBB8_19
# %bb.1:
	movl	(%rdi), %ecx
	cmpl	$8, %ecx
	jb	.LBB8_19
# %bb.2:
	movl	(%rdi), %eax
	movq	-80(%rbp), %rbx         # 8-byte Reload
	xorl	%r12d, %r12d
	.p2align	4, 0x90
.LBB8_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB8_12 Depth 2
                                        #     Child Loop BB8_6 Depth 2
	shrl	$3, %eax
	testb	$4, %cl
	jne	.LBB8_10
# %bb.4:                                #   in Loop: Header=BB8_3 Depth=1
	testl	%eax, %eax
	je	.LBB8_41
# %bb.5:                                #   in Loop: Header=BB8_3 Depth=1
	movq	%rbx, %rsi
	movb	(%r13,%r12), %bl
	xorl	%edx, %edx
	.p2align	4, 0x90
.LBB8_6:                                #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%bl, 4(%rdi,%rdx)
	je	.LBB8_8
# %bb.7:                                #   in Loop: Header=BB8_6 Depth=2
	addq	$1, %rdx
	cmpq	%rax, %rdx
	jb	.LBB8_6
.LBB8_8:                                #   in Loop: Header=BB8_3 Depth=1
	cmpq	%rax, %rdx
	je	.LBB8_42
# %bb.9:                                #   in Loop: Header=BB8_3 Depth=1
	addq	$1, %r12
	movq	%rdx, %rax
	jmp	.LBB8_16
	.p2align	4, 0x90
.LBB8_10:                               #   in Loop: Header=BB8_3 Depth=1
	xorl	%r14d, %r14d
	cmpq	%r15, %r12
	jae	.LBB8_15
# %bb.11:                               #   in Loop: Header=BB8_3 Depth=1
	testl	%eax, %eax
	je	.LBB8_15
	.p2align	4, 0x90
.LBB8_12:                               #   Parent Loop BB8_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rdi,%r14), %edx
	cmpb	(%r13,%r12), %dl
	jne	.LBB8_15
# %bb.13:                               #   in Loop: Header=BB8_12 Depth=2
	addq	$1, %r14
	addq	$1, %r12
	cmpq	%r15, %r12
	jae	.LBB8_15
# %bb.14:                               #   in Loop: Header=BB8_12 Depth=2
	cmpq	%rax, %r14
	jb	.LBB8_12
	.p2align	4, 0x90
.LBB8_15:                               #   in Loop: Header=BB8_3 Depth=1
	cmpq	%rax, %r14
	jne	.LBB8_20
.LBB8_16:                               #   in Loop: Header=BB8_3 Depth=1
	movl	%ecx, %edx
	shrl	$3, %edx
	addq	%rdx, %rdi
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdi, %rsi
	testb	$4, %cl
	movl	$0, %ecx
	cmovneq	%rcx, %rax
	leaq	4(%rsi,%rax,8), %rbx
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-56(%rbp), %rdi
	cmpq	%r15, %r12
	jae	.LBB8_41
# %bb.17:                               #   in Loop: Header=BB8_3 Depth=1
	movl	(%rdi), %eax
	movl	%eax, %ecx
	cmpl	$7, %eax
	ja	.LBB8_3
.LBB8_41:
	xorl	%r14d, %r14d
	jmp	.LBB8_20
.LBB8_19:
	movq	-80(%rbp), %rbx         # 8-byte Reload
	xorl	%r12d, %r12d
.LBB8_20:
	movq	%rdi, -48(%rbp)
	movl	(%rdi), %eax
	shll	$29, %eax
	sarl	$31, %eax
	andl	%eax, %r14d
	cmpq	%r15, %r12
	jne	.LBB8_27
# %bb.21:
	movl	(%rdi), %eax
	testl	%r14d, %r14d
	je	.LBB8_31
# %bb.22:
	movl	%eax, %ecx
	andl	$4, %ecx
	je	.LBB8_31
# %bb.23:
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	shrl	$3, %eax
	subl	%r14d, %eax
	movslq	%eax, %r15
	movl	$4, %r13d
	movl	$4, %eax
	subl	%r15d, %eax
	andl	$7, %eax
	xorl	%ecx, %ecx
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	setne	%cl
	leaq	(%r15,%rcx,8), %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$12, %rdi
	callq	zmalloc
	movq	%rax, %rbx
	movq	%rax, -96(%rbp)
	movslq	%r14d, %rax
	subl	%r14d, %r13d
	andl	$7, %r13d
	movq	%rax, %r12
	addq	%rax, %r13
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$1, %eax
	sete	%cl
	leaq	12(,%rcx,8), %rdi
	addq	%r13, %rdi
	callq	zmalloc
	movq	%rax, -64(%rbp)
	testq	%rax, %rax
	je	.LBB8_40
# %bb.24:
	testq	%rbx, %rbx
	je	.LBB8_40
# %bb.25:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB8_54
# %bb.26:
	xorl	%ecx, %ecx
	jmp	.LBB8_55
.LBB8_27:
	movl	(%rdi), %eax
	testb	$4, %al
	je	.LBB8_120
# %bb.28:
	shrq	$3, %rax
	movl	$4, %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	addq	%rax, %rcx
	movl	(%rdi), %eax
	andl	$3, %eax
	xorl	%edx, %edx
	xorl	%esi, %esi
	cmpl	$1, %eax
	sete	%dl
	leaq	(%rcx,%rdx,8), %rax
	setne	%sil
	addq	%rdi, %rax
	leaq	(%rax,%rsi,8), %rsi
	addq	$-4, %rsi
	leaq	-96(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	testl	%r14d, %r14d
	movq	%rbx, -144(%rbp)        # 8-byte Spill
	jne	.LBB8_37
# %bb.29:
	movl	%ecx, %eax
	andl	$1, %eax
	je	.LBB8_37
# %bb.30:
	xorl	%eax, %eax
	testb	$2, %cl
	sete	%al
	leaq	-64(%rbp), %rdx
	movq	%rdx, -128(%rbp)        # 8-byte Spill
	leaq	16(,%rax,8), %rdi
	jmp	.LBB8_38
.LBB8_31:
	testb	$1, %al
	je	.LBB8_34
# %bb.32:
	cmpl	$0, -104(%rbp)          # 4-byte Folded Reload
	je	.LBB8_61
# %bb.33:
	andl	$2, %eax
	je	.LBB8_61
.LBB8_34:
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB8_59
# %bb.35:
	movl	(%rdi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	%eax, %esi
	andl	$-8, %esi
	testb	$4, %al
	movl	$8, %edx
	cmovel	%esi, %edx
	testb	$1, %al
	jne	.LBB8_57
# %bb.36:
	xorl	%eax, %eax
	jmp	.LBB8_58
.LBB8_37:
	leaq	-64(%rbp), %rax
	movq	%rax, -128(%rbp)        # 8-byte Spill
	movl	$16, %edi
.LBB8_38:
	shrl	$3, %ecx
	movq	%rcx, -104(%rbp)        # 8-byte Spill
	movl	%r14d, %ebx
	notl	%ebx
	callq	zmalloc
	testq	%rax, %rax
	je	.LBB8_43
# %bb.39:
	movl	$8, (%rax)
	jmp	.LBB8_44
.LBB8_40:
	movq	%rbx, %rdi
	callq	zfree
	movq	-64(%rbp), %rdi
	callq	zfree
	jmp	.LBB8_140
.LBB8_42:
	movq	%rsi, %rbx
	movq	%rax, %r14
	jmp	.LBB8_20
.LBB8_43:
	xorl	%eax, %eax
.LBB8_44:
	movq	-104(%rbp), %rsi        # 8-byte Reload
	addl	%ebx, %esi
	movslq	%r14d, %rdx
	movq	%rax, -64(%rbp)
	movq	$0, -72(%rbp)
	movq	$0, -88(%rbp)
	testl	%r14d, %r14d
	movq	%rsi, -104(%rbp)        # 8-byte Spill
	je	.LBB8_46
# %bb.45:
	movl	$4, %eax
	subl	%r14d, %eax
	andl	$7, %eax
	addq	%rdx, %rax
	movq	-48(%rbp), %rcx
	movl	(%rcx), %ecx
	andl	$3, %ecx
	xorl	%esi, %esi
	cmpl	$1, %ecx
	sete	%sil
	leaq	(%rax,%rsi,8), %rdi
	addq	$12, %rdi
	movq	%rdx, %rbx
	callq	zmalloc
	movq	%rbx, %rdx
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -72(%rbp)
.LBB8_46:
	movslq	%esi, %rcx
	testl	%ecx, %ecx
	movq	-144(%rbp), %rbx        # 8-byte Reload
	je	.LBB8_48
# %bb.47:
	movl	$4, %eax
	subl	%esi, %eax
	andl	$7, %eax
	leaq	(%rcx,%rax), %rdi
	addq	$12, %rdi
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	callq	zmalloc
	movq	-136(%rbp), %rcx        # 8-byte Reload
	movq	-120(%rbp), %rdx        # 8-byte Reload
	movq	-104(%rbp), %rsi        # 8-byte Reload
	movq	%rax, -88(%rbp)
.LBB8_48:
	movq	-64(%rbp), %rdi
	testq	%rdi, %rdi
	je	.LBB8_53
# %bb.49:
	testl	%r14d, %r14d
	je	.LBB8_51
# %bb.50:
	cmpq	$0, -72(%rbp)
	je	.LBB8_53
.LBB8_51:
	testl	%esi, %esi
	je	.LBB8_75
# %bb.52:
	cmpq	$0, -88(%rbp)
	jne	.LBB8_75
.LBB8_53:
	callq	zfree
	movq	-72(%rbp), %rdi
	callq	zfree
	movq	-88(%rbp), %rdi
	callq	zfree
	jmp	.LBB8_140
.LBB8_54:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_55:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rsi
	addq	$-8, %rsi
	leaq	-72(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movl	(%rbx), %eax
	andl	$7, %eax
	leal	(%rax,%r15,8), %eax
	movl	%eax, (%rbx)
	xorl	%eax, %eax
	cmpl	$1, %r15d
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
	leaq	(%rax,%r12), %rsi
	addq	$4, %rsi
	movq	%r15, %rdx
	callq	memcpy
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -56(%rbp)
	movl	(%rbx), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rbx)
	testq	%rdx, %rdx
	je	.LBB8_68
# %bb.56:
	andl	$-3, %ecx
	movl	%ecx, (%rbx)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %eax
	cmovel	%ecx, %eax
	addq	%rdx, %rax
	leaq	(%rbx,%rax), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_69
.LBB8_57:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB8_58:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$8, %rsi
	callq	zrealloc
	movq	%rax, %rdi
.LBB8_59:
	movq	%rdi, -48(%rbp)
	testq	%rdi, %rdi
	je	.LBB8_140
# %bb.60:
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-48(%rbp), %rdi
.LBB8_61:
	testq	%rdi, %rdi
	je	.LBB8_140
# %bb.62:
	movl	(%rdi), %eax
	testb	$1, %al
	jne	.LBB8_65
# %bb.63:
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -56(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	testq	%rdx, %rdx
	je	.LBB8_87
# %bb.64:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %eax
	cmovel	%ecx, %eax
	addq	%rdx, %rax
	addq	%rax, %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_88
.LBB8_65:
	movq	-120(%rbp), %rbx        # 8-byte Reload
	testq	%rbx, %rbx
	je	.LBB8_91
# %bb.66:
	testb	$2, %al
	jne	.LBB8_89
# %bb.67:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%rdi,%rax), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rax
	jmp	.LBB8_90
.LBB8_68:
	orl	$3, %eax
	movl	%eax, (%rbx)
.LBB8_69:
	movq	-96(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	movq	-144(%rbp), %rbx        # 8-byte Reload
	jne	.LBB8_71
# %bb.70:
	xorl	%ecx, %ecx
	jmp	.LBB8_72
.LBB8_71:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_72:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdi
	addq	$-8, %rdi
	leaq	-72(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 16(%rax)
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	andl	$7, %ecx
	leal	(%rcx,%r14,8), %ecx
	movl	%ecx, (%rax)
	xorl	%eax, %eax
	cmpl	$1, %r14d
	setg	%al
	movq	-64(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-64(%rbp), %rax
	andl	$-2, (%rax)
	movq	-64(%rbp), %rax
	andl	$-3, (%rax)
	movq	-64(%rbp), %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rsi
	addq	$4, %rsi
	movq	%r12, %rdx
	callq	memcpy
	leaq	-64(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	testb	$1, %cl
	je	.LBB8_83
# %bb.73:
	testb	$2, %cl
	jne	.LBB8_79
# %bb.74:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rdx
	jmp	.LBB8_80
.LBB8_75:
	movq	%rcx, -136(%rbp)        # 8-byte Spill
	movq	-48(%rbp), %rax
	movb	4(%rax,%rdx), %al
	movb	%al, 4(%rdi)
	testl	%r14d, %r14d
	movq	%rdx, -120(%rbp)        # 8-byte Spill
	je	.LBB8_94
# %bb.76:
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	andl	$7, %ecx
	leal	(%rcx,%r14,8), %ecx
	movl	%ecx, (%rax)
	movq	-72(%rbp), %rdi
	addq	$4, %rdi
	movq	-48(%rbp), %rsi
	addq	$4, %rsi
	callq	memcpy
	xorl	%eax, %eax
	cmpl	$1, %r14d
	setg	%al
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-5, %edx
	leal	(%rdx,%rax,4), %eax
	movl	%eax, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$1, %eax
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-2, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %eax
	andl	$2, %eax
	movq	-72(%rbp), %rcx
	movl	(%rcx), %edx
	andl	$-3, %edx
	orl	%eax, %edx
	movl	%edx, (%rcx)
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movl	%ecx, %edx
	andl	$3, %edx
	cmpl	$1, %edx
	jne	.LBB8_100
# %bb.77:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %r14d
	cmovnel	%r14d, %edx
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdx, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rsi
	movq	-72(%rbp), %rax
	movq	%rsi, -56(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, %edx
	orl	$1, %edx
	movl	%edx, (%rax)
	testq	%rsi, %rsi
	je	.LBB8_99
# %bb.78:
	andl	$-3, %edx
	movl	%edx, (%rax)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	cmovel	%edx, %r14d
	addq	%rsi, %r14
	leaq	(%rax,%r14), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_100
.LBB8_79:
	xorl	%edx, %edx
.LBB8_80:
	movq	-64(%rbp), %rax
	movq	%rdx, -56(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, %esi
	orl	$1, %esi
	movl	%esi, (%rax)
	testq	%rdx, %rdx
	je	.LBB8_82
# %bb.81:
	andl	$-3, %esi
	movl	%esi, (%rax)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %ecx
	cmovel	%edx, %ecx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_83
.LBB8_82:
	orl	$3, %ecx
	movl	%ecx, (%rax)
.LBB8_83:
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB8_85
# %bb.84:
	xorl	%ecx, %ecx
	jmp	.LBB8_86
.LBB8_85:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_86:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdi
	addq	$-8, %rdi
	leaq	-96(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 8(%rax)
	movq	-48(%rbp), %rdi
	callq	zfree
	movl	$1, %eax
	jmp	.LBB8_142
.LBB8_87:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_88:
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 8(%rax)
	movl	$1, %eax
	jmp	.LBB8_142
.LBB8_89:
	xorl	%eax, %eax
.LBB8_90:
	movq	%rax, (%rbx)
.LBB8_91:
	cmpl	$0, -104(%rbp)          # 4-byte Folded Reload
	je	.LBB8_98
# %bb.92:
	movq	-48(%rbp), %rax
	movq	-112(%rbp), %rsi        # 8-byte Reload
	movq	%rsi, -56(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, %edx
	orl	$1, %edx
	movl	%edx, (%rax)
	testq	%rsi, %rsi
	je	.LBB8_97
# %bb.93:
	andl	$-3, %edx
	movl	%edx, (%rax)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %ecx
	cmovel	%edx, %ecx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_98
.LBB8_94:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	testb	$1, %cl
	je	.LBB8_108
# %bb.95:
	testb	$2, %cl
	jne	.LBB8_104
# %bb.96:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rdx
	jmp	.LBB8_105
.LBB8_97:
	orl	$3, %ecx
	movl	%ecx, (%rax)
.LBB8_98:
	callq	__errno
	movl	$0, (%rax)
	jmp	.LBB8_141
.LBB8_99:
	orl	$3, %ecx
	movl	%ecx, (%rax)
.LBB8_100:
	movq	-72(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB8_102
# %bb.101:
	xorl	%ecx, %ecx
	jmp	.LBB8_103
.LBB8_102:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_103:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %r14
	addq	$-8, %r14
	movl	$8, %edx
	movq	%r14, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
	leaq	-72(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 16(%rax)
	movq	%r14, %rbx
	jmp	.LBB8_109
.LBB8_104:
	xorl	%edx, %edx
.LBB8_105:
	movq	-64(%rbp), %rax
	movq	%rdx, -56(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, %esi
	orl	$1, %esi
	movl	%esi, (%rax)
	testq	%rdx, %rdx
	je	.LBB8_107
# %bb.106:
	andl	$-3, %esi
	movl	%esi, (%rax)
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %ecx
	cmovel	%edx, %ecx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_108
.LBB8_107:
	orl	$3, %ecx
	movl	%ecx, (%rax)
.LBB8_108:
	movl	$8, %edx
	movq	%rbx, %rdi
	movq	-128(%rbp), %rsi        # 8-byte Reload
	callq	memcpy
.LBB8_109:
	movq	-104(%rbp), %rdx        # 8-byte Reload
	testl	%edx, %edx
	movq	-120(%rbp), %rsi        # 8-byte Reload
	je	.LBB8_112
# %bb.110:
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
	addq	%rax, %rsi
	addq	$5, %rsi
	movq	-136(%rbp), %rdx        # 8-byte Reload
	callq	memcpy
	movq	-88(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB8_113
# %bb.111:
	xorl	%ecx, %ecx
	jmp	.LBB8_114
.LBB8_112:
	movq	-96(%rbp), %rax
	movq	%rax, -88(%rbp)
	jmp	.LBB8_115
.LBB8_113:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_114:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdi
	addq	$-8, %rdi
	leaq	-96(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 16(%rax)
.LBB8_115:
	movq	-64(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB8_117
# %bb.116:
	xorl	%ecx, %ecx
	jmp	.LBB8_118
.LBB8_117:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rcx, %rdx
	negq	%rcx
.LBB8_118:
	addq	%rdx, %rax
	leaq	(%rcx,%rax), %rdi
	addq	$-8, %rdi
	leaq	-88(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rdi
	callq	zfree
	movq	-64(%rbp), %rdi
.LBB8_119:
	movq	%rdi, -48(%rbp)
.LBB8_120:
	cmpq	%r15, %r12
	jae	.LBB8_128
# %bb.121:
	cmpl	$7, (%rdi)
	ja	.LBB8_125
# %bb.122:
	movq	%r15, %r14
	subq	%r12, %r14
	cmpq	$2, %r14
	jb	.LBB8_125
# %bb.123:
	cmpq	$536870911, %r14        # imm = 0x1FFFFFFF
	movl	$536870911, %eax        # imm = 0x1FFFFFFF
	cmovaeq	%rax, %r14
	leaq	(%r12,%r13), %rsi
	movq	%r14, %rdx
	leaq	-56(%rbp), %rcx
	callq	raxCompressNode
	testq	%rax, %rax
	je	.LBB8_138
# %bb.124:
	movq	%rax, -48(%rbp)
	movl	$8, %edx
	movq	%rbx, %rdi
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovnel	%edi, %edx
	addq	%rsi, %rdx
	andl	$3, %ecx
	xorl	%esi, %esi
	xorl	%edi, %edi
	cmpl	$1, %ecx
	sete	%sil
	leaq	(%rdx,%rsi,8), %rcx
	setne	%dil
	addq	%rax, %rcx
	leaq	(%rcx,%rdi,8), %rbx
	addq	$-12, %rbx
	jmp	.LBB8_127
.LBB8_125:
	movzbl	(%r13,%r12), %esi
	leaq	-56(%rbp), %rdx
	leaq	-96(%rbp), %rcx
	callq	raxAddChild
	testq	%rax, %rax
	je	.LBB8_138
# %bb.126:
	movq	%rax, -48(%rbp)
	movl	$8, %edx
	movq	%rbx, %rdi
	leaq	-48(%rbp), %rsi
	callq	memcpy
	movq	-96(%rbp), %rbx
	movl	$1, %r14d
.LBB8_127:
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 16(%rax)
	addq	%r14, %r12
	movq	-56(%rbp), %rdi
	jmp	.LBB8_119
.LBB8_128:
	cmpq	$0, -112(%rbp)          # 8-byte Folded Reload
	je	.LBB8_133
# %bb.129:
	movl	(%rdi), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rdx, %rcx
	addq	$4, %rcx
	movl	%eax, %esi
	andl	$-8, %esi
	testb	$4, %al
	movl	$8, %edx
	cmovel	%esi, %edx
	testb	$1, %al
	jne	.LBB8_131
# %bb.130:
	xorl	%eax, %eax
	jmp	.LBB8_132
.LBB8_131:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB8_132:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$8, %rsi
	callq	zrealloc
	movq	%rax, %rdi
.LBB8_133:
	testq	%rdi, %rdi
	je	.LBB8_138
# %bb.134:
	movq	%rdi, -48(%rbp)
	testb	$1, (%rdi)
	jne	.LBB8_136
# %bb.135:
	movq	-80(%rbp), %rax         # 8-byte Reload
	addq	$1, 8(%rax)
.LBB8_136:
	movq	-112(%rbp), %rdx        # 8-byte Reload
	movq	%rdx, -56(%rbp)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	testq	%rdx, %rdx
	je	.LBB8_143
# %bb.137:
	andl	$-3, %ecx
	movl	%ecx, (%rdi)
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %eax
	cmovel	%ecx, %eax
	addq	%rdx, %rax
	addq	%rax, %rdi
	addq	$4, %rdi
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB8_144
.LBB8_138:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$7, %ecx
	ja	.LBB8_140
# %bb.139:
	orl	$2, %ecx
	movl	%ecx, (%rax)
	movq	-48(%rbp), %rax
	orl	$1, (%rax)
	movq	-80(%rbp), %rdi         # 8-byte Reload
	addq	$1, 8(%rdi)
	movq	%r13, %rsi
	movq	%r12, %rdx
	xorl	%ecx, %ecx
	callq	raxRemove
	testl	%eax, %eax
	je	.LBB8_145
.LBB8_140:
	callq	__errno
	movl	$12, (%rax)
.LBB8_141:
	xorl	%eax, %eax
.LBB8_142:
	addq	$104, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB8_143:
	orl	$3, %eax
	movl	%eax, (%rdi)
.LBB8_144:
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movl	$1, %eax
	jmp	.LBB8_142
.LBB8_145:
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
	subq	$56, %rsp
	movq	%rdi, %r15
	movq	(%rdi), %r12
	movq	%r12, -80(%rbp)
	xorl	%r14d, %r14d
	testq	%rdx, %rdx
	je	.LBB9_39
# %bb.1:
	movl	(%r12), %edi
	cmpl	$8, %edi
	jb	.LBB9_39
# %bb.2:
	movq	%rsi, -88(%rbp)         # 8-byte Spill
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	movq	%r9, -64(%rbp)          # 8-byte Spill
	movq	16(%rbp), %rax
	addq	$24, %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%r13d, %r13d
	movq	%rdx, -96(%rbp)         # 8-byte Spill
	.p2align	4, 0x90
.LBB9_3:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB9_11 Depth 2
                                        #     Child Loop BB9_17 Depth 2
	movl	(%r12), %esi
	shrq	$3, %rsi
	testb	$4, %dil
	jne	.LBB9_7
# %bb.4:                                #   in Loop: Header=BB9_3 Depth=1
	testl	%esi, %esi
	je	.LBB9_15
# %bb.5:                                #   in Loop: Header=BB9_3 Depth=1
	movq	-88(%rbp), %rcx         # 8-byte Reload
	movb	(%rcx,%r13), %cl
	cmpb	%cl, 4(%r12)
	jne	.LBB9_16
# %bb.6:                                #   in Loop: Header=BB9_3 Depth=1
	xorl	%r14d, %r14d
	cmpq	%rsi, %r14
	jne	.LBB9_20
	jmp	.LBB9_41
	.p2align	4, 0x90
.LBB9_7:                                #   in Loop: Header=BB9_3 Depth=1
	cmpq	%rdx, %r13
	jae	.LBB9_23
# %bb.8:                                #   in Loop: Header=BB9_3 Depth=1
	testl	%esi, %esi
	je	.LBB9_23
# %bb.9:                                #   in Loop: Header=BB9_3 Depth=1
	movb	4(%r12), %cl
	movq	-88(%rbp), %rdi         # 8-byte Reload
	cmpb	(%rdi,%r13), %cl
	jne	.LBB9_23
# %bb.10:                               #   in Loop: Header=BB9_3 Depth=1
	movl	(%r12), %esi
	shrq	$3, %rsi
	leaq	1(%r13), %r9
	leaq	(%rdi,%r13), %r8
	addq	$1, %r8
	xorl	%r14d, %r14d
	.p2align	4, 0x90
.LBB9_11:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movq	%r14, %rcx
	addq	$1, %r14
	leaq	(%r9,%rcx), %rdi
	cmpq	%rdx, %rdi
	jae	.LBB9_14
# %bb.12:                               #   in Loop: Header=BB9_11 Depth=2
	cmpq	%rsi, %r14
	jae	.LBB9_14
# %bb.13:                               #   in Loop: Header=BB9_11 Depth=2
	movzbl	5(%r12,%rcx), %ebx
	cmpb	(%r8,%rcx), %bl
	je	.LBB9_11
.LBB9_14:                               #   in Loop: Header=BB9_3 Depth=1
	movl	%esi, %esi
	addq	%rcx, %r13
	addq	$1, %r13
	cmpq	%rsi, %r14
	je	.LBB9_25
	jmp	.LBB9_41
	.p2align	4, 0x90
.LBB9_23:                               #   in Loop: Header=BB9_3 Depth=1
	xorl	%r14d, %r14d
	cmpq	%rsi, %r14
	je	.LBB9_25
	jmp	.LBB9_41
.LBB9_15:                               #   in Loop: Header=BB9_3 Depth=1
	xorl	%r14d, %r14d
	xorl	%esi, %esi
	cmpq	%rsi, %r14
	jne	.LBB9_20
	jmp	.LBB9_41
.LBB9_16:                               #   in Loop: Header=BB9_3 Depth=1
	movl	(%r12), %esi
	shrq	$3, %rsi
	movl	$5, %edi
	.p2align	4, 0x90
.LBB9_17:                               #   Parent Loop BB9_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	leaq	-4(%rdi), %r14
	cmpq	%rsi, %r14
	jae	.LBB9_19
# %bb.18:                               #   in Loop: Header=BB9_17 Depth=2
	cmpb	%cl, (%r12,%rdi)
	leaq	1(%rdi), %rdi
	jne	.LBB9_17
.LBB9_19:                               #   in Loop: Header=BB9_3 Depth=1
	movl	%esi, %esi
	cmpq	%rsi, %r14
	je	.LBB9_41
.LBB9_20:                               #   in Loop: Header=BB9_3 Depth=1
	addq	$1, %r13
.LBB9_25:                               #   in Loop: Header=BB9_3 Depth=1
	movq	16(%rbp), %rbx
	testq	%rbx, %rbx
	je	.LBB9_34
# %bb.26:                               #   in Loop: Header=BB9_3 Depth=1
	movq	8(%rbx), %rsi
	cmpq	16(%rbx), %rsi
	jne	.LBB9_33
# %bb.27:                               #   in Loop: Header=BB9_3 Depth=1
	movq	(%rbx), %rdi
	cmpq	-72(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB9_30
# %bb.28:                               #   in Loop: Header=BB9_3 Depth=1
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB9_37
# %bb.29:                               #   in Loop: Header=BB9_3 Depth=1
	movq	%rax, (%rbx)
	jmp	.LBB9_32
.LBB9_30:                               #   in Loop: Header=BB9_3 Depth=1
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB9_36
# %bb.31:                               #   in Loop: Header=BB9_3 Depth=1
	movq	16(%rbx), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-72(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
.LBB9_32:                               #   in Loop: Header=BB9_3 Depth=1
	shlq	16(%rbx)
	movq	8(%rbx), %rsi
.LBB9_33:                               #   in Loop: Header=BB9_3 Depth=1
	movq	(%rbx), %rax
	movq	%r12, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 8(%rbx)
.LBB9_34:                               #   in Loop: Header=BB9_3 Depth=1
	movq	-80(%rbp), %rax
	movl	(%rax), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	addq	%rax, %rdx
	andl	$7, %esi
	addq	%rdx, %rsi
	testb	$4, %cl
	movl	$0, %eax
	cmovneq	%rax, %r14
	leaq	4(%rsi,%r14,8), %r15
	movl	$8, %edx
	leaq	-80(%rbp), %rdi
	movq	%r15, %rsi
	callq	memcpy
	movq	-80(%rbp), %r12
	movq	-96(%rbp), %rdx         # 8-byte Reload
	cmpq	%rdx, %r13
	jae	.LBB9_40
# %bb.35:                               #   in Loop: Header=BB9_3 Depth=1
	movl	(%r12), %edi
	cmpl	$7, %edi
	ja	.LBB9_3
	jmp	.LBB9_40
.LBB9_36:                               #   in Loop: Header=BB9_3 Depth=1
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, (%rbx)
.LBB9_37:                               #   in Loop: Header=BB9_3 Depth=1
	movl	$1, 280(%rbx)
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB9_34
.LBB9_39:
	xorl	%r13d, %r13d
	testq	%rcx, %rcx
	jne	.LBB9_43
	jmp	.LBB9_44
.LBB9_40:
	xorl	%r14d, %r14d
.LBB9_41:
	movq	-64(%rbp), %r9          # 8-byte Reload
	movq	-56(%rbp), %r8          # 8-byte Reload
	movq	-48(%rbp), %rcx         # 8-byte Reload
	testq	%rcx, %rcx
	je	.LBB9_44
.LBB9_43:
	movq	%r12, (%rcx)
.LBB9_44:
	testq	%r8, %r8
	je	.LBB9_46
# %bb.45:
	movq	%r15, (%r8)
.LBB9_46:
	testq	%r9, %r9
	je	.LBB9_49
# %bb.47:
	testb	$4, (%r12)
	je	.LBB9_49
# %bb.48:
	movl	%r14d, (%r9)
.LBB9_49:
	movq	%r13, %rax
	addq	$56, %rsp
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
	subq	$344, %rsp              # imm = 0x158
	movq	%rcx, %r15
	movq	%rdx, %rbx
	movq	%rdi, %r14
	leaq	-352(%rbp), %rax
	movq	%rax, -376(%rbp)
	movaps	.LCPI10_0(%rip), %xmm0  # xmm0 = [0,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0]
	movups	%xmm0, -368(%rbp)
	movl	$0, -96(%rbp)
	movl	$0, -76(%rbp)
	leaq	-376(%rbp), %rax
	movq	%rax, (%rsp)
	xorl	%r13d, %r13d
	leaq	-48(%rbp), %r12
	leaq	-76(%rbp), %r9
	movq	%r12, %rcx
	xorl	%r8d, %r8d
	callq	raxLowWalk
	cmpq	%rbx, %rax
	jne	.LBB10_6
# %bb.1:
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	cmpl	$0, -76(%rbp)
	setne	%dl
	testb	$1, %cl
	je	.LBB10_6
# %bb.2:
	movl	%ecx, %ebx
	shrb	$2, %bl
	andb	%dl, %bl
	jne	.LBB10_6
# %bb.3:
	testq	%r15, %r15
	je	.LBB10_7
# %bb.4:
	testb	$2, %cl
	jne	.LBB10_8
# %bb.5:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-72(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-72(%rbp), %rcx
	movq	-48(%rbp), %rax
	jmp	.LBB10_9
.LBB10_6:
	movq	-376(%rbp), %rdi
	jmp	.LBB10_70
.LBB10_7:
	leaq	-48(%rbp), %r12
	jmp	.LBB10_10
.LBB10_8:
	xorl	%ecx, %ecx
.LBB10_9:
	movq	%rcx, (%r15)
	movl	(%rax), %ecx
.LBB10_10:
	andl	$-2, %ecx
	movl	%ecx, (%rax)
	addq	$-1, 8(%r14)
	movq	-48(%rbp), %r15
	movl	(%r15), %eax
	shrl	$3, %eax
	cmpl	$1, %eax
	je	.LBB10_32
# %bb.11:
	testl	%eax, %eax
	jne	.LBB10_69
# %bb.12:
	cmpq	%r15, (%r14)
	jne	.LBB10_14
	jmp	.LBB10_69
	.p2align	4, 0x90
.LBB10_13:                              #   in Loop: Header=BB10_14 Depth=1
	cmpq	(%r14), %r15
	je	.LBB10_20
.LBB10_14:                              # =>This Inner Loop Header: Depth=1
	movq	%r15, %rbx
	movq	%r15, %rdi
	callq	zfree
	addq	$-1, 16(%r14)
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	je	.LBB10_16
# %bb.15:                               #   in Loop: Header=BB10_14 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, -368(%rbp)
	movq	-376(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %r15
	movq	%r15, %rax
	jmp	.LBB10_17
	.p2align	4, 0x90
.LBB10_16:                              #   in Loop: Header=BB10_14 Depth=1
	xorl	%r15d, %r15d
	xorl	%eax, %eax
.LBB10_17:                              #   in Loop: Header=BB10_14 Depth=1
	movq	%r15, (%r12)
	movl	(%rax), %eax
	testb	$1, %al
	jne	.LBB10_20
# %bb.18:                               #   in Loop: Header=BB10_14 Depth=1
	testb	$4, %al
	jne	.LBB10_13
# %bb.19:                               #   in Loop: Header=BB10_14 Depth=1
	andl	$-8, %eax
	cmpl	$8, %eax
	je	.LBB10_13
.LBB10_20:
	testq	%rbx, %rbx
	je	.LBB10_69
# %bb.21:
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	raxRemoveChild
	movq	%rax, -56(%rbp)
	movq	-48(%rbp), %r12
	cmpq	%r12, %rax
	je	.LBB10_26
# %bb.22:
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	je	.LBB10_28
# %bb.23:
	movq	-376(%rbp), %rcx
	movq	-8(%rcx,%rax,8), %rax
	testq	%rax, %rax
	je	.LBB10_28
# %bb.24:
	movl	(%rax), %ecx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rbx
	addq	$-4, %rbx
	leaq	-72(%rbp), %r15
	.p2align	4, 0x90
.LBB10_25:                              # =>This Inner Loop Header: Depth=1
	addq	$8, %rbx
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	cmpq	%r12, -72(%rbp)
	jne	.LBB10_25
	jmp	.LBB10_29
.LBB10_26:
	movq	%rax, %r15
	jmp	.LBB10_30
.LBB10_28:
	movq	%r14, %rbx
.LBB10_29:
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	movq	-56(%rbp), %r15
.LBB10_30:
	movl	(%r15), %eax
	andl	$-7, %eax
	cmpl	$8, %eax
	jne	.LBB10_69
# %bb.31:
	movq	%r15, -48(%rbp)
.LBB10_32:
	cmpl	$0, -96(%rbp)
	jne	.LBB10_69
# %bb.33:
	movq	-368(%rbp), %rax
	testq	%rax, %rax
	je	.LBB10_41
# %bb.34:
	movq	-376(%rbp), %rcx
	addq	$-1, %rax
	jmp	.LBB10_36
.LBB10_35:                              #   in Loop: Header=BB10_36 Depth=1
	movq	%r13, -48(%rbp)
	movq	%r13, %r15
	addq	$-1, %rax
	jae	.LBB10_42
.LBB10_36:                              # =>This Inner Loop Header: Depth=1
	movq	%rax, -368(%rbp)
	movq	(%rcx,%rax,8), %r13
	testq	%r13, %r13
	je	.LBB10_41
# %bb.37:                               #   in Loop: Header=BB10_36 Depth=1
	movl	(%r13), %edx
	testb	$1, %dl
	jne	.LBB10_40
# %bb.38:                               #   in Loop: Header=BB10_36 Depth=1
	testb	$4, %dl
	jne	.LBB10_35
# %bb.39:                               #   in Loop: Header=BB10_36 Depth=1
	andl	$-8, %edx
	cmpl	$8, %edx
	je	.LBB10_35
.LBB10_40:
	movb	$1, %al
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_44
.LBB10_41:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	jmp	.LBB10_43
.LBB10_42:
	xorl	%eax, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	movq	%r13, %r15
.LBB10_43:
	xorl	%r13d, %r13d
.LBB10_44:
	movl	(%r15), %ecx
	shrq	$3, %rcx
	movl	$1, %r12d
	movq	%r15, %rax
	jmp	.LBB10_46
	.p2align	4, 0x90
.LBB10_45:                              #   in Loop: Header=BB10_46 Depth=1
	shrq	$3, %rcx
	addq	%rbx, %rcx
	addl	$1, %r12d
	cmpq	$536870912, %rcx        # imm = 0x20000000
	jae	.LBB10_50
.LBB10_46:                              # =>This Inner Loop Header: Depth=1
	movq	%rcx, %rbx
	movl	(%rax), %edx
	movq	%rdx, %rcx
	shrq	$3, %rcx
	testl	%ecx, %ecx
	je	.LBB10_51
# %bb.47:                               #   in Loop: Header=BB10_46 Depth=1
	movl	$4, %esi
	subl	%ecx, %esi
	andl	$7, %esi
	addq	%rsi, %rcx
	movl	%edx, %esi
	andl	$-8, %esi
	testb	$4, %dl
	movl	$8, %edx
	cmovnel	%edx, %esi
	addq	%rcx, %rsi
	movl	(%rax), %ecx
	andl	$3, %ecx
	xorl	%edx, %edx
	xorl	%edi, %edi
	cmpl	$1, %ecx
	sete	%dl
	leaq	(%rsi,%rdx,8), %rcx
	setne	%dil
	addq	%rax, %rcx
	leaq	(%rcx,%rdi,8), %rsi
	addq	$-12, %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %ecx
	testb	$1, %cl
	jne	.LBB10_51
# %bb.48:                               #   in Loop: Header=BB10_46 Depth=1
	testb	$4, %cl
	jne	.LBB10_45
# %bb.49:                               #   in Loop: Header=BB10_46 Depth=1
	movl	%ecx, %edx
	andl	$-8, %edx
	cmpl	$8, %edx
	je	.LBB10_45
	jmp	.LBB10_51
.LBB10_50:                              # %.split_crit_edge
	cmpq	$536870911, %rcx        # imm = 0x1FFFFFFF
	seta	%al
	addb	$1, %al
	movzbl	%al, %eax
	andl	$1, %eax
	addl	%eax, %r12d
	addl	$-1, %r12d
.LBB10_51:
	cmpl	$2, %r12d
	jl	.LBB10_69
# %bb.52:
	movl	$4, %eax
	subl	%ebx, %eax
	andl	$7, %eax
	leaq	(%rbx,%rax), %rdi
	addq	$12, %rdi
	callq	zmalloc
	movq	%rax, -56(%rbp)
	testq	%rax, %rax
	je	.LBB10_60
# %bb.53:
	movq	%r13, -88(%rbp)         # 8-byte Spill
	andb	$-2, (%rax)
	movq	-56(%rbp), %rax
	andl	$-3, (%rax)
	movq	-56(%rbp), %rax
	orl	$4, (%rax)
	movq	-56(%rbp), %rax
	movl	(%rax), %ecx
	andl	$7, %ecx
	leal	(%rcx,%rbx,8), %ecx
	movl	%ecx, (%rax)
	addq	$1, 16(%r14)
	movq	%r15, -48(%rbp)
	xorl	%r13d, %r13d
	movq	%r15, %rsi
.LBB10_54:                              # =>This Inner Loop Header: Depth=1
	movl	(%rsi), %edx
	shrq	$3, %rdx
	testl	%edx, %edx
	je	.LBB10_58
# %bb.55:                               #   in Loop: Header=BB10_54 Depth=1
	movq	-56(%rbp), %rax
	leaq	(%rax,%r13), %rdi
	addq	$4, %rdi
	addq	$4, %rsi
	callq	memcpy
	movq	-48(%rbp), %rbx
	movl	(%rbx), %eax
	movq	%rax, %r12
	shrq	$3, %r12
	movl	$4, %ecx
	subl	%r12d, %ecx
	andl	$7, %ecx
	addq	%r12, %rcx
	movl	%eax, %edx
	andl	$-8, %edx
	testb	$4, %al
	movl	$8, %esi
	cmovnel	%esi, %edx
	addq	%rcx, %rdx
	andl	$3, %eax
	xorl	%ecx, %ecx
	xorl	%esi, %esi
	cmpl	$1, %eax
	sete	%cl
	leaq	(%rdx,%rcx,8), %rax
	setne	%sil
	addq	%rbx, %rax
	leaq	(%rax,%rsi,8), %rsi
	addq	$-12, %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 16(%r14)
	movq	-48(%rbp), %rsi
	movl	(%rsi), %eax
	testb	$1, %al
	jne	.LBB10_58
# %bb.56:                               #   in Loop: Header=BB10_54 Depth=1
	addq	%r12, %r13
	testb	$4, %al
	jne	.LBB10_54
# %bb.57:                               #   in Loop: Header=BB10_54 Depth=1
	andl	$-8, %eax
	cmpl	$8, %eax
	je	.LBB10_54
.LBB10_58:
	movq	-56(%rbp), %r12
	movl	(%r12), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leaq	(%rsi,%rdx), %rcx
	addq	$4, %rcx
	testb	$1, %al
	jne	.LBB10_63
# %bb.59:
	xorl	%eax, %eax
	jmp	.LBB10_64
.LBB10_60:
	movq	-376(%rbp), %rdi
	leaq	-352(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB10_62
# %bb.61:
	callq	zfree
.LBB10_62:
	movl	$1, %r13d
	jmp	.LBB10_72
.LBB10_63:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	negq	%rax
.LBB10_64:
	movq	-64(%rbp), %rbx         # 8-byte Reload
	movq	-88(%rbp), %r13         # 8-byte Reload
	addq	%r12, %rcx
	leaq	(%rax,%rcx), %rdi
	addq	$-8, %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	testb	%bl, %bl
	je	.LBB10_68
# %bb.65:
	movl	(%r13), %eax
	shrq	$3, %rax
	movl	$4, %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	addq	%rax, %rcx
	leaq	(%rcx,%r13), %rbx
	addq	$-4, %rbx
	leaq	-72(%rbp), %r14
.LBB10_66:                              # =>This Inner Loop Header: Depth=1
	addq	$8, %rbx
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	cmpq	%r15, -72(%rbp)
	jne	.LBB10_66
# %bb.67:
	leaq	-56(%rbp), %rsi
	movl	$8, %edx
	movq	%rbx, %rdi
	callq	memcpy
	jmp	.LBB10_69
.LBB10_68:
	movq	%r12, (%r14)
.LBB10_69:
	movq	-376(%rbp), %rdi
	movl	$1, %r13d
.LBB10_70:
	leaq	-352(%rbp), %rax
	cmpq	%rax, %rdi
	je	.LBB10_72
# %bb.71:
	callq	zfree
.LBB10_72:
	movl	%r13d, %eax
	addq	$344, %rsp              # imm = 0x158
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end10:
	.size	raxRemove, .Lfunc_end10-raxRemove
                                        # -- End function
	.globl	raxInsert               # -- Begin function raxInsert
	.p2align	4, 0x90
	.type	raxInsert,@function
raxInsert:                              # @raxInsert
# %bb.0:
	movl	$1, %r9d
	jmp	raxGenericInsert        # TAILCALL
.Lfunc_end11:
	.size	raxInsert, .Lfunc_end11-raxInsert
                                        # -- End function
	.globl	raxTryInsert            # -- Begin function raxTryInsert
	.p2align	4, 0x90
	.type	raxTryInsert,@function
raxTryInsert:                           # @raxTryInsert
# %bb.0:
	xorl	%r9d, %r9d
	jmp	raxGenericInsert        # TAILCALL
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
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r13
	movq	(%rdi), %rax
	movq	%rax, -48(%rbp)
	movl	(%rax), %edi
	xorl	%r12d, %r12d
	testq	%rdx, %rdx
	je	.LBB13_20
# %bb.1:
	cmpl	$8, %edi
	jb	.LBB13_20
# %bb.2:                                # %.preheader2
	movq	%rsi, %r14
	xorl	%r12d, %r12d
	leaq	-48(%rbp), %r15
	xorl	%ebx, %ebx
	.p2align	4, 0x90
.LBB13_3:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB13_12 Depth 2
                                        #     Child Loop BB13_6 Depth 2
	movl	%edi, %edx
	shrl	$3, %edx
	testb	$4, %dil
	jne	.LBB13_10
# %bb.4:                                #   in Loop: Header=BB13_3 Depth=1
	testl	%edx, %edx
	je	.LBB13_21
# %bb.5:                                #   in Loop: Header=BB13_3 Depth=1
	movb	(%r14,%rbx), %cl
	xorl	%esi, %esi
	.p2align	4, 0x90
.LBB13_6:                               #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%cl, 4(%rax,%rsi)
	je	.LBB13_8
# %bb.7:                                #   in Loop: Header=BB13_6 Depth=2
	addq	$1, %rsi
	cmpq	%rdx, %rsi
	jb	.LBB13_6
.LBB13_8:                               #   in Loop: Header=BB13_3 Depth=1
	cmpq	%rdx, %rsi
	je	.LBB13_22
# %bb.9:                                #   in Loop: Header=BB13_3 Depth=1
	addq	$1, %rbx
	jmp	.LBB13_17
	.p2align	4, 0x90
.LBB13_10:                              #   in Loop: Header=BB13_3 Depth=1
	xorl	%esi, %esi
	cmpq	%r13, %rbx
	jae	.LBB13_15
# %bb.11:                               #   in Loop: Header=BB13_3 Depth=1
	testl	%edx, %edx
	je	.LBB13_15
	.p2align	4, 0x90
.LBB13_12:                              #   Parent Loop BB13_3 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movzbl	4(%rax,%rsi), %ecx
	cmpb	(%r14,%rbx), %cl
	jne	.LBB13_15
# %bb.13:                               #   in Loop: Header=BB13_12 Depth=2
	addq	$1, %rsi
	addq	$1, %rbx
	cmpq	%r13, %rbx
	jae	.LBB13_15
# %bb.14:                               #   in Loop: Header=BB13_12 Depth=2
	cmpq	%rdx, %rsi
	jb	.LBB13_12
	.p2align	4, 0x90
.LBB13_15:                              #   in Loop: Header=BB13_3 Depth=1
	cmpq	%rdx, %rsi
	jne	.LBB13_29
# %bb.16:                               #   in Loop: Header=BB13_3 Depth=1
	movq	%rdx, %rsi
.LBB13_17:                              #   in Loop: Header=BB13_3 Depth=1
	movl	%edi, %ecx
	shrl	$3, %ecx
	addq	%rcx, %rax
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rax, %rdx
	testb	$4, %dil
	cmovneq	%r12, %rsi
	leaq	(%rdx,%rsi,8), %rsi
	addq	$4, %rsi
	movl	$8, %edx
	movq	%r15, %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	(%rax), %edi
	cmpq	%r13, %rbx
	jae	.LBB13_23
# %bb.18:                               #   in Loop: Header=BB13_3 Depth=1
	cmpl	$7, %edi
	ja	.LBB13_3
.LBB13_23:
	cmpq	%r13, %rbx
	jne	.LBB13_30
	jmp	.LBB13_24
.LBB13_20:
	xorl	%ebx, %ebx
	cmpq	%r13, %rbx
	jne	.LBB13_30
.LBB13_24:
	movl	(%rax), %edx
	movl	%edx, %esi
	andl	$4, %esi
	testl	%r12d, %r12d
	setne	%cl
	testl	%edi, %esi
	setne	%bl
	testb	$1, %dl
	je	.LBB13_30
# %bb.25:
	andb	%bl, %cl
	jne	.LBB13_30
# %bb.26:
	testb	$2, %dl
	jne	.LBB13_28
# %bb.27:
	movq	%rdx, %rcx
	shrq	$3, %rcx
	movl	$4, %edi
	subl	%ecx, %edi
	andl	$7, %edi
	addq	%rcx, %rdi
	movl	%edx, %ecx
	andl	$-8, %ecx
	testl	%esi, %esi
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rdx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rsi, %rcx
	addq	%rdi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rax
	jmp	.LBB13_31
.LBB13_28:
	xorl	%eax, %eax
	jmp	.LBB13_31
.LBB13_21:
	xorl	%r12d, %r12d
	cmpq	%r13, %rbx
	je	.LBB13_24
	jmp	.LBB13_30
.LBB13_22:
	movq	%rdx, %r12
	cmpq	%r13, %rbx
	jne	.LBB13_30
	jmp	.LBB13_24
.LBB13_29:
	movq	%rsi, %r12
	cmpq	%r13, %rbx
	je	.LBB13_24
.LBB13_30:
	movq	raxNotFound(%rip), %rax
.LBB13_31:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
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
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %r14
	movl	(%rdi), %eax
	shrq	$3, %rax
	movl	$4, %ecx
	subl	%eax, %ecx
	andl	$7, %ecx
	addq	%rax, %rcx
	leaq	(%rdi,%rcx), %rbx
	addq	$-4, %rbx
	leaq	-32(%rbp), %r15
	.p2align	4, 0x90
.LBB14_1:                               # =>This Inner Loop Header: Depth=1
	addq	$8, %rbx
	movl	$8, %edx
	movq	%r15, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	cmpq	%r14, -32(%rbp)
	jne	.LBB14_1
# %bb.2:
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
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
	subq	$24, %rsp
	movq	%rdi, %rbx
	movl	(%rdi), %eax
	testb	$4, %al
	jne	.LBB15_1
# %bb.8:
	movq	%rsi, %r12
	leaq	4(%rbx), %rcx
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	shrq	$3, %rax
	leaq	(%rbx,%rax), %rcx
	addq	$4, %rcx
	movl	$4, %r15d
	subl	%eax, %r15d
	andl	$7, %r15d
	addq	%rcx, %r15
	movq	%rbx, -56(%rbp)         # 8-byte Spill
	addq	$3, %rbx
	leaq	-48(%rbp), %r14
	movq	%r15, %r13
	.p2align	4, 0x90
.LBB15_9:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	memcpy
	addq	$8, %r13
	addq	$1, %rbx
	cmpq	%r12, -48(%rbp)
	jne	.LBB15_9
# %bb.10:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %r14d
	shrl	$3, %r14d
	movq	-64(%rbp), %r12         # 8-byte Reload
	subl	%ebx, %r12d
	leal	(%r14,%r12), %eax
	addl	$-1, %eax
	movq	%rbx, %rsi
	addq	$1, %rsi
	movslq	%eax, %rdx
	movq	%rbx, %rdi
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	callq	memmove
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
	movl	%eax, %ecx
	shrl	$3, %ecx
	leal	4(%rcx), %edx
	andl	$7, %edx
	xorl	%ebx, %ebx
	cmpl	$1, %edx
	sete	%bl
	shlq	$3, %rbx
	cmpl	$1, %edx
	jne	.LBB15_12
# %bb.11:
	addl	%r12d, %r14d
	movq	%r15, %rdi
	subq	%rbx, %rdi
	subl	%r14d, %ecx
	movslq	%ecx, %rdx
	shlq	$3, %rdx
	movq	%r15, %rsi
	callq	memmove
	movq	-56(%rbp), %rax         # 8-byte Reload
	movl	(%rax), %eax
.LBB15_12:
	testb	$1, %al
	jne	.LBB15_14
# %bb.13:
	xorl	%eax, %eax
	jmp	.LBB15_15
.LBB15_1:
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	jne	.LBB15_2
# %bb.3:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rdx, %rax
	leaq	(%rbx,%rax), %rsi
	addq	$4, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rcx
	movl	(%rbx), %eax
	jmp	.LBB15_4
.LBB15_14:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB15_15:
	negq	%rbx
	leaq	(%rbx,%r13), %rdi
	addq	$-8, %rdi
	movq	-64(%rbp), %rcx         # 8-byte Reload
	leaq	(%rax,%rcx,8), %rdx
	movq	%r13, %rsi
	callq	memmove
	movq	-56(%rbp), %rbx         # 8-byte Reload
	movl	(%rbx), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$5, %edx
	subl	%ecx, %edx
	addq	$536870911, %rcx        # imm = 0x1FFFFFFF
	leal	(,%rcx,8), %esi
	movl	%eax, %edi
	andl	$7, %edi
	leal	(%rdi,%rcx,8), %edi
	movl	%edi, (%rbx)
	andl	$536870911, %ecx        # imm = 0x1FFFFFFF
	andl	$7, %edx
	addq	%rcx, %rdx
	testb	$4, %al
	movl	$8, %ecx
	cmovel	%esi, %ecx
	leaq	(%rcx,%rdx), %rsi
	addq	$4, %rsi
	testb	$1, %al
	jne	.LBB15_17
# %bb.16:
	xorl	%eax, %eax
	jmp	.LBB15_18
.LBB15_2:
	xorl	%ecx, %ecx
.LBB15_4:
	andl	$1, %eax
	movl	%eax, (%rbx)
	je	.LBB15_19
# %bb.5:
	movq	%rcx, -48(%rbp)
	movl	$1, (%rbx)
	testq	%rcx, %rcx
	je	.LBB15_7
# %bb.6:
	movl	$1, (%rbx)
	leaq	8(%rbx), %rdi
	leaq	-48(%rbp), %rsi
	movl	$8, %edx
	callq	memcpy
	jmp	.LBB15_19
.LBB15_17:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
.LBB15_18:
	addq	%rax, %rsi
	movq	%rbx, %rdi
	callq	zrealloc
	testq	%rax, %rax
	cmovneq	%rax, %rbx
.LBB15_19:
	movq	%rbx, %rax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB15_7:
	movl	$3, (%rbx)
	jmp	.LBB15_19
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
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %edi
	andl	$-8, %edi
	testb	$4, %al
	movl	$1, %r14d
	cmovel	%ecx, %r14d
	movl	$8, %ecx
	cmovel	%edi, %ecx
	addq	%rdx, %rcx
	addq	$4, %rcx
	testb	$1, %al
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	jne	.LBB16_2
# %bb.1:
	xorl	%eax, %eax
	testl	%r14d, %r14d
	jne	.LBB16_4
	jmp	.LBB16_6
.LBB16_2:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	negq	%rax
	testl	%r14d, %r14d
	je	.LBB16_6
.LBB16_4:
	addq	-56(%rbp), %rcx         # 8-byte Folded Reload
	leaq	(%rax,%rcx), %rbx
	addq	$-8, %rbx
	leaq	-48(%rbp), %r13
	.p2align	4, 0x90
.LBB16_5:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r13, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-48(%rbp), %rsi
	movq	%r15, %rdi
	movq	%r12, %rdx
	callq	raxRecursiveFree
	addq	$-8, %rbx
	addl	$-1, %r14d
	jne	.LBB16_5
.LBB16_6:
	testq	%r12, %r12
	movq	-56(%rbp), %rbx         # 8-byte Reload
	je	.LBB16_9
# %bb.7:
	movl	(%rbx), %eax
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	jne	.LBB16_9
# %bb.8:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%rbx,%rax), %rsi
	addq	$-4, %rsi
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-48(%rbp), %rdi
	callq	*%r12
.LBB16_9:
	movq	%rbx, %rdi
	callq	zfree
	addq	$-1, 16(%r15)
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
	jne	.LBB17_1
# %bb.2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.LBB17_1:
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
	jne	.LBB18_1
# %bb.2:
	movq	%rbx, %rdi
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.LBB18_1:
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
	subq	$24, %rsp
	movq	%rdx, %r14
	movq	%rdi, %rbx
	movq	32(%rdi), %rdi
	leaq	(%rdi,%rdx), %r12
	cmpq	%r12, 40(%rbx)
	jae	.LBB20_6
# %bb.1:
	movq	%rsi, -56(%rbp)         # 8-byte Spill
	movq	16(%rbx), %rax
	leaq	48(%rbx), %rcx
	xorl	%r13d, %r13d
	movq	%rcx, -48(%rbp)         # 8-byte Spill
	cmpq	%rcx, %rax
	movl	$0, %r15d
	cmovneq	%rax, %r15
	addq	%r12, %r12
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	zrealloc
	movq	%rax, 16(%rbx)
	testq	%rax, %rax
	je	.LBB20_2
# %bb.3:
	movq	-48(%rbp), %rsi         # 8-byte Reload
	testq	%r15, %r15
	jne	.LBB20_5
# %bb.4:
	movq	32(%rbx), %rdx
	movq	%rax, %rdi
	callq	memcpy
.LBB20_5:
	movq	%r12, 40(%rbx)
	movq	32(%rbx), %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
.LBB20_6:
	addq	16(%rbx), %rdi
	movq	%r14, %rdx
	callq	memmove
	addq	%r14, 32(%rbx)
	movl	$1, %r13d
.LBB20_7:
	movl	%r13d, %eax
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB20_2:
	testq	%r15, %r15
	movq	-48(%rbp), %rax         # 8-byte Reload
	cmovneq	%r15, %rax
	movq	%rax, 16(%rbx)
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB20_7
.Lfunc_end20:
	.size	raxIteratorAddChars, .Lfunc_end20-raxIteratorAddChars
                                        # -- End function
	.globl	raxIteratorDelChars     # -- Begin function raxIteratorDelChars
	.p2align	4, 0x90
	.type	raxIteratorDelChars,@function
raxIteratorDelChars:                    # @raxIteratorDelChars
# %bb.0:
	subq	%rsi, 32(%rdi)
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
	movl	$1, %eax
	testb	$2, %cl
	jne	.LBB22_45
# %bb.1:
	movq	%rdi, %r15
	testb	$1, %cl
	jne	.LBB22_42
# %bb.2:
	movq	32(%r15), %rax
	movq	%rax, -88(%rbp)         # 8-byte Spill
	movq	176(%r15), %r13
	movq	192(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	leaq	176(%r15), %r8
	leaq	208(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	(%r13), %eax
	movl	$1, %r14d
	movq	%r13, -80(%rbp)         # 8-byte Spill
	movq	%r8, -56(%rbp)          # 8-byte Spill
	testl	%esi, %esi
	jne	.LBB22_9
.LBB22_3:
	movl	%eax, %ecx
	andl	$4, %ecx
	movl	%eax, %edx
	shrl	$3, %edx
	orl	%ecx, %edx
	je	.LBB22_9
# %bb.4:
	movq	192(%r15), %rsi
	cmpq	200(%r15), %rsi
	jne	.LBB22_29
# %bb.5:
	movq	184(%r15), %rdi
	cmpq	-48(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB22_26
# %bb.6:
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB22_50
# %bb.7:
	movq	%rax, 184(%r15)
	jmp	.LBB22_28
.LBB22_26:
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, 184(%r15)
	testq	%rax, %rax
	je	.LBB22_49
# %bb.27:
	movq	200(%r15), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
.LBB22_28:
	shlq	200(%r15)
	movq	192(%r15), %rsi
.LBB22_29:
	movq	184(%r15), %rax
	movq	%r13, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r15)
	movq	176(%r15), %r12
	leaq	4(%r12), %rsi
	movl	(%r12), %eax
	movq	%rax, %rbx
	shrq	$3, %rbx
	testb	$4, %al
	movl	%ebx, %edx
	cmovel	%r14d, %edx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB22_46
# %bb.30:
	leaq	(%r12,%rbx), %rax
	addq	$4, %rax
	movl	$4, %r12d
	subl	%ebx, %r12d
	andl	$7, %r12d
	addq	%rax, %r12
	movl	$8, %edx
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB22_37
	.p2align	4, 0x90
.LBB22_8:                               # %.loopexit
                                        #   in Loop: Header=BB22_9 Depth=1
	leaq	(%rbx,%r13), %r12
	addq	$4, %r12
	cmpl	%edx, %edi
	jne	.LBB22_21
.LBB22_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB22_19 Depth 2
	movl	%esi, %edx
	testl	%esi, %esi
	je	.LBB22_11
# %bb.10:                               #   in Loop: Header=BB22_9 Depth=1
	movq	16(%r15), %rcx
	movq	32(%r15), %rsi
	movb	-1(%rsi,%rcx), %cl
	jmp	.LBB22_16
	.p2align	4, 0x90
.LBB22_11:                              #   in Loop: Header=BB22_9 Depth=1
	movq	8(%r15), %rax
	cmpq	(%rax), %r13
	je	.LBB22_43
# %bb.12:                               #   in Loop: Header=BB22_9 Depth=1
	movq	16(%r15), %rax
	movq	32(%r15), %rsi
	movb	-1(%rsi,%rax), %cl
	movq	192(%r15), %rax
	testq	%rax, %rax
	je	.LBB22_14
# %bb.13:                               #   in Loop: Header=BB22_9 Depth=1
	leaq	-1(%rax), %rdi
	movq	%rdi, 192(%r15)
	movq	184(%r15), %rdi
	movq	-8(%rdi,%rax,8), %rax
	movq	%rax, %r13
	jmp	.LBB22_15
.LBB22_14:                              #   in Loop: Header=BB22_9 Depth=1
	xorl	%eax, %eax
	xorl	%r13d, %r13d
.LBB22_15:                              #   in Loop: Header=BB22_9 Depth=1
	movq	%rax, (%r8)
	movl	(%rax), %eax
.LBB22_16:                              #   in Loop: Header=BB22_9 Depth=1
	movl	%eax, %edi
	shrl	$3, %edi
	testb	$4, %al
	cmovel	%r14d, %edi
	subq	%rdi, %rsi
	movq	%rsi, 32(%r15)
	movl	(%r13), %eax
	xorl	%esi, %esi
	testb	$4, %al
	jne	.LBB22_9
# %bb.17:                               #   in Loop: Header=BB22_9 Depth=1
	xorl	%edi, %edi
	testl	%edx, %edx
	sete	%dil
	movq	%rax, %rdx
	shrq	$3, %rdx
	cmpl	%edi, %edx
	jbe	.LBB22_9
# %bb.18:                               #   in Loop: Header=BB22_9 Depth=1
	movl	$4, %ebx
	subl	%edx, %ebx
	andl	$7, %ebx
	addq	%rdx, %rbx
	xorl	%edi, %edi
	.p2align	4, 0x90
.LBB22_19:                              #   Parent Loop BB22_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%cl, 4(%r13,%rdi)
	ja	.LBB22_8
# %bb.20:                               #   in Loop: Header=BB22_19 Depth=2
	addq	$1, %rdi
	addq	$8, %rbx
	cmpq	%rdx, %rdi
	jb	.LBB22_19
	jmp	.LBB22_8
.LBB22_21:
	movl	%edi, %eax
	leaq	(%rax,%r13), %rsi
	addq	$4, %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	movq	176(%r15), %r13
	movq	192(%r15), %rsi
	cmpq	200(%r15), %rsi
	jne	.LBB22_25
# %bb.22:
	movq	184(%r15), %rdi
	cmpq	-48(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB22_33
# %bb.23:
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB22_50
# %bb.24:
	movq	%rax, 184(%r15)
	jmp	.LBB22_35
.LBB22_25:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	jmp	.LBB22_36
.LBB22_33:
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, 184(%r15)
	testq	%rax, %rax
	je	.LBB22_49
# %bb.34:
	movq	200(%r15), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
.LBB22_35:
	movq	-56(%rbp), %rbx         # 8-byte Reload
	shlq	200(%r15)
	movq	192(%r15), %rsi
.LBB22_36:
	movq	184(%r15), %rax
	movq	%r13, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r15)
	movl	$8, %edx
.LBB22_37:
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	472(%r15), %rax
	testq	%rax, %rax
	je	.LBB22_40
# %bb.38:
	movq	%rbx, %rdi
	callq	*%rax
	testl	%eax, %eax
	je	.LBB22_40
# %bb.39:
	movl	$8, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
.LBB22_40:
	movq	(%rbx), %r13
	movl	(%r13), %eax
	testb	$1, %al
	jne	.LBB22_31
# %bb.41:
	movq	%rbx, %r8
	xorl	%esi, %esi
	testl	%esi, %esi
	je	.LBB22_3
	jmp	.LBB22_9
.LBB22_42:
	andl	$-2, %ecx
	movl	%ecx, (%r15)
	jmp	.LBB22_45
.LBB22_43:
	orb	$2, (%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 192(%r15)
	movq	-88(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r15)
	movq	-80(%rbp), %rax         # 8-byte Reload
	movq	%rax, 176(%r15)
.LBB22_44:
	movl	$1, %eax
.LBB22_45:
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB22_31:
	testb	$2, %al
	jne	.LBB22_32
# %bb.47:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%rax,%r13), %rsi
	addq	$-4, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rax
	jmp	.LBB22_48
.LBB22_46:
	xorl	%eax, %eax
	jmp	.LBB22_45
.LBB22_32:
	xorl	%eax, %eax
.LBB22_48:
	movq	%rax, 24(%r15)
	jmp	.LBB22_44
.LBB22_49:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 184(%r15)
.LBB22_50:
	movl	$1, 464(%r15)
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB22_45
.Lfunc_end22:
	.size	raxIteratorNextStep, .Lfunc_end22-raxIteratorNextStep
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
	subq	$24, %rsp
	movq	176(%rdi), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	je	.LBB23_15
# %bb.1:
	movq	%rdi, %r14
	leaq	176(%rdi), %rdx
	movq	%rdx, -64(%rbp)         # 8-byte Spill
	leaq	208(%rdi), %rdx
	movq	%rdx, -56(%rbp)         # 8-byte Spill
	jmp	.LBB23_6
	.p2align	4, 0x90
.LBB23_2:                               #   in Loop: Header=BB23_6 Depth=1
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB23_18
# %bb.3:                                #   in Loop: Header=BB23_6 Depth=1
	movq	%rax, 184(%r14)
.LBB23_4:                               #   in Loop: Header=BB23_6 Depth=1
	xorl	%ecx, %ecx
	movzbl	-41(%rbp), %edx         # 1-byte Folded Reload
	shlq	200(%r14)
	movq	192(%r14), %rsi
.LBB23_5:                               #   in Loop: Header=BB23_6 Depth=1
	shrq	$3, %r13
	movl	$4, %eax
	subl	%r13d, %eax
	andl	$7, %eax
	addq	%r13, %rax
	addq	%rax, %r12
	movb	%dl, %cl
	leaq	(%r12,%rcx,8), %rax
	addq	%rbx, %rax
	addq	$-4, %rax
	xorl	%ecx, %ecx
	cmpl	$1, %r15d
	setne	%cl
	movq	184(%r14), %rdx
	movq	%rbx, (%rdx,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r14)
	leaq	(%rax,%rcx,8), %rsi
	addq	$-8, %rsi
	movl	$8, %edx
	movq	-64(%rbp), %rdi         # 8-byte Reload
	callq	memcpy
	movq	176(%r14), %rsi
	movl	(%rsi), %ecx
	movl	%ecx, %eax
	shrl	$3, %eax
	je	.LBB23_15
.LBB23_6:                               # =>This Inner Loop Header: Depth=1
	testb	$4, %cl
	jne	.LBB23_9
# %bb.7:                                #   in Loop: Header=BB23_6 Depth=1
	movl	%eax, %eax
	addq	%rax, %rsi
	addq	$3, %rsi
	movl	$1, %edx
	jmp	.LBB23_10
	.p2align	4, 0x90
.LBB23_9:                               #   in Loop: Header=BB23_6 Depth=1
	addq	$4, %rsi
	movl	%eax, %edx
.LBB23_10:                              #   in Loop: Header=BB23_6 Depth=1
	movq	%r14, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB23_8
# %bb.11:                               #   in Loop: Header=BB23_6 Depth=1
	movq	176(%r14), %rbx
	movq	192(%r14), %rsi
	movl	(%rbx), %r13d
	movl	%r13d, %r12d
	andl	$-8, %r12d
	testb	$4, %r13b
	movl	$8, %eax
	cmovnel	%eax, %r12d
	movl	%r13d, %r15d
	andl	$3, %r15d
	xorl	%ecx, %ecx
	cmpl	$1, %r15d
	sete	%dl
	cmpq	200(%r14), %rsi
	jne	.LBB23_5
# %bb.12:                               #   in Loop: Header=BB23_6 Depth=1
	movq	184(%r14), %rdi
	cmpq	-56(%rbp), %rdi         # 8-byte Folded Reload
	movb	%dl, -41(%rbp)          # 1-byte Spill
	jne	.LBB23_2
# %bb.13:                               #   in Loop: Header=BB23_6 Depth=1
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, 184(%r14)
	testq	%rax, %rax
	je	.LBB23_17
# %bb.14:                               #   in Loop: Header=BB23_6 Depth=1
	movq	200(%r14), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	jmp	.LBB23_4
.LBB23_15:
	movl	$1, %eax
	jmp	.LBB23_16
.LBB23_8:
	xorl	%eax, %eax
	jmp	.LBB23_16
.LBB23_17:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 184(%r14)
.LBB23_18:
	movl	$1, 464(%r14)
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
.LBB23_16:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end23:
	.size	raxSeekGreatest, .Lfunc_end23-raxSeekGreatest
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
	subq	$40, %rsp
	movl	(%rdi), %eax
	movl	$1, %r12d
	testb	$2, %al
	jne	.LBB24_39
# %bb.1:
	movq	%rdi, %r15
	testb	$1, %al
	jne	.LBB24_2
# %bb.3:
	movq	32(%r15), %rax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	176(%r15), %rcx
	movq	192(%r15), %rax
	movq	%rax, -56(%rbp)         # 8-byte Spill
	leaq	176(%r15), %r14
	testl	%esi, %esi
	setne	%dl
	leaq	208(%r15), %rax
	movq	%rax, -48(%rbp)         # 8-byte Spill
	movl	$1, %r10d
	movq	%rcx, %rax
	movq	%rcx, -64(%rbp)         # 8-byte Spill
	movq	%rcx, %rsi
	xorl	%r12d, %r12d
	jmp	.LBB24_4
	.p2align	4, 0x90
.LBB24_33:                              #   in Loop: Header=BB24_4 Depth=1
	movl	(%rax), %ecx
	xorl	%edx, %edx
	movq	%rax, %rsi
	testb	$1, %cl
	jne	.LBB24_34
.LBB24_4:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB24_16 Depth 2
	testb	$1, %dl
	je	.LBB24_6
# %bb.5:                                #   in Loop: Header=BB24_4 Depth=1
	movq	16(%r15), %rcx
	movq	32(%r15), %rdi
	movb	-1(%rdi,%rcx), %r8b
	jmp	.LBB24_12
	.p2align	4, 0x90
.LBB24_6:                               #   in Loop: Header=BB24_4 Depth=1
	movq	8(%r15), %rcx
	cmpq	(%rcx), %rax
	je	.LBB24_7
# %bb.8:                                #   in Loop: Header=BB24_4 Depth=1
	movq	16(%r15), %rax
	movq	32(%r15), %rdi
	movb	-1(%rdi,%rax), %r8b
	movq	192(%r15), %rax
	testq	%rax, %rax
	je	.LBB24_9
# %bb.10:                               #   in Loop: Header=BB24_4 Depth=1
	leaq	-1(%rax), %rsi
	movq	%rsi, 192(%r15)
	movq	184(%r15), %rsi
	movq	-8(%rsi,%rax,8), %rsi
	movq	%rsi, %rax
	jmp	.LBB24_11
.LBB24_9:                               #   in Loop: Header=BB24_4 Depth=1
	xorl	%esi, %esi
	xorl	%eax, %eax
.LBB24_11:                              #   in Loop: Header=BB24_4 Depth=1
	movq	%rsi, (%r14)
.LBB24_12:                              #   in Loop: Header=BB24_4 Depth=1
	movl	(%rsi), %ebx
	movl	%ebx, %ecx
	shrl	$3, %ecx
	testb	$4, %bl
	cmovel	%r10d, %ecx
	subq	%rcx, %rdi
	movq	%rdi, 32(%r15)
	movl	(%rax), %ebx
	testb	$4, %bl
	jne	.LBB24_33
# %bb.13:                               #   in Loop: Header=BB24_4 Depth=1
	movq	%rbx, %rdi
	shrq	$3, %rdi
	notb	%dl
	movzbl	%dl, %ecx
	andl	$1, %ecx
	cmpl	%ecx, %edi
	jbe	.LBB24_33
# %bb.14:                               #   in Loop: Header=BB24_4 Depth=1
	movl	(%rsi), %edx
	cmpq	$8, %rdx
	jb	.LBB24_33
# %bb.15:                               #   in Loop: Header=BB24_4 Depth=1
	movl	%edx, %ecx
	andl	$3, %ecx
	xorl	%r9d, %r9d
	xorl	%esi, %esi
	cmpl	$1, %ecx
	sete	%r9b
	setne	%sil
	movl	$4, %ecx
	subl	%edi, %ecx
	andl	$7, %ecx
	addq	%rcx, %rdi
	leaq	(%rdi,%rsi,8), %rcx
	andl	$-8, %ebx
	addq	%rcx, %rbx
	shrq	$3, %rdx
	addq	$3, %rdx
	leaq	(%rbx,%r9,8), %rcx
	movl	$12, %esi
	subq	%rcx, %rsi
	.p2align	4, 0x90
.LBB24_16:                              #   Parent Loop BB24_4 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	cmpb	%r8b, (%rax,%rdx)
	jb	.LBB24_20
# %bb.17:                               #   in Loop: Header=BB24_16 Depth=2
	leaq	-1(%rdx), %rdi
	addq	$-4, %rdx
	addq	$8, %rsi
	testq	%rdx, %rdx
	movq	%rdi, %rdx
	jg	.LBB24_16
# %bb.18:                               #   in Loop: Header=BB24_4 Depth=1
	cmpl	$3, %edi
	je	.LBB24_33
# %bb.19:                               #   in Loop: Header=BB24_4 Depth=1
	addq	$-4, %rdi
	movq	%rax, %r13
	subq	%rsi, %r13
	jmp	.LBB24_21
.LBB24_20:                              # %.loopexit
                                        #   in Loop: Header=BB24_4 Depth=1
	addq	$-4, %rdx
	movq	%rax, %r13
	subq	%rsi, %r13
	movq	%rdx, %rdi
.LBB24_21:                              #   in Loop: Header=BB24_4 Depth=1
	movslq	%edi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$4, %rsi
	movl	$1, %edx
	movq	%r15, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB24_39
# %bb.22:                               #   in Loop: Header=BB24_4 Depth=1
	movq	176(%r15), %rbx
	movq	192(%r15), %rsi
	cmpq	200(%r15), %rsi
	jne	.LBB24_31
# %bb.23:                               #   in Loop: Header=BB24_4 Depth=1
	movq	184(%r15), %rdi
	cmpq	-48(%rbp), %rdi         # 8-byte Folded Reload
	je	.LBB24_24
# %bb.27:                               #   in Loop: Header=BB24_4 Depth=1
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB24_28
# %bb.29:                               #   in Loop: Header=BB24_4 Depth=1
	movq	%rax, 184(%r15)
	jmp	.LBB24_30
.LBB24_24:                              #   in Loop: Header=BB24_4 Depth=1
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, 184(%r15)
	testq	%rax, %rax
	je	.LBB24_25
# %bb.26:                               #   in Loop: Header=BB24_4 Depth=1
	movq	200(%r15), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-48(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
.LBB24_30:                              #   in Loop: Header=BB24_4 Depth=1
	shlq	200(%r15)
	movq	192(%r15), %rsi
.LBB24_31:                              #   in Loop: Header=BB24_4 Depth=1
	movq	184(%r15), %rax
	movq	%rbx, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r15)
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	memcpy
	movq	%r15, %rdi
	callq	raxSeekGreatest
	testl	%eax, %eax
	je	.LBB24_39
# %bb.32:                               #   in Loop: Header=BB24_4 Depth=1
	movq	(%r14), %rax
	movl	$1, %r10d
	jmp	.LBB24_33
.LBB24_2:
	andl	$-2, %eax
	movl	%eax, (%r15)
	jmp	.LBB24_39
.LBB24_34:
	testb	$2, %cl
	jne	.LBB24_35
# %bb.36:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
	leaq	-80(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-80(%rbp), %rax
	jmp	.LBB24_37
.LBB24_7:
	orb	$2, (%r15)
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 192(%r15)
	movq	-72(%rbp), %rax         # 8-byte Reload
	movq	%rax, 32(%r15)
	movq	-64(%rbp), %rax         # 8-byte Reload
	movq	%rax, 176(%r15)
	jmp	.LBB24_38
.LBB24_35:
	xorl	%eax, %eax
.LBB24_37:
	movq	%rax, 24(%r15)
.LBB24_38:
	movl	$1, %r12d
.LBB24_39:
	movl	%r12d, %eax
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB24_25:
	movq	-48(%rbp), %rax         # 8-byte Reload
	movq	%rax, 184(%r15)
.LBB24_28:
	movl	$1, 464(%r15)
	callq	__errno
	movl	$12, (%rax)
	jmp	.LBB24_39
.Lfunc_end24:
	.size	raxIteratorPrevStep, .Lfunc_end24-raxIteratorPrevStep
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
	movq	%rcx, %r10
	movq	%rdx, %r15
	movq	%rdi, %r12
	movq	$0, 192(%rdi)
	movl	(%rdi), %eax
	movl	%eax, %ecx
	andl	$-4, %ecx
	orl	$1, %ecx
	movl	%ecx, (%rdi)
	movq	$0, 32(%rdi)
	movq	$0, 176(%rdi)
	movb	(%rsi), %cl
	leal	-60(%rcx), %edx
	cmpb	$34, %dl
	ja	.LBB25_3
# %bb.1:
	movb	$1, %bl
	xorl	%r8d, %r8d
	movzbl	%dl, %edi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	jmpq	*.LJTI25_0(,%rdi,8)
.LBB25_2:
	cmpb	$61, 1(%rsi)
	sete	%bl
	movl	$1, %r14d
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	jmp	.LBB25_9
.LBB25_3:
	cmpb	$36, %cl
	jne	.LBB25_5
# %bb.4:
	xorl	%edx, %edx
	movl	$1, %r8d
	jmp	.LBB25_8
.LBB25_5:
	callq	__errno
	movl	$0, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB25_14
.LBB25_6:
	cmpb	$61, 1(%rsi)
	sete	%bl
	movl	$1, %ecx
	xorl	%edx, %edx
	xorl	%r14d, %r14d
	jmp	.LBB25_9
.LBB25_7:
	movl	$1, %edx
	xorl	%r8d, %r8d
.LBB25_8:
	xorl	%ecx, %ecx
	xorl	%r14d, %r14d
	xorl	%ebx, %ebx
.LBB25_9:
	movq	8(%r12), %rdi
	cmpq	$0, 8(%rdi)
	je	.LBB25_12
# %bb.10:
	testl	%edx, %edx
	je	.LBB25_15
# %bb.11:
	movl	$.L.str.6, %esi
	movq	%r12, %rdi
	xorl	%edx, %edx
	xorl	%ecx, %ecx
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	raxSeek                 # TAILCALL
.LBB25_12:
	orl	$3, %eax
	movl	%eax, (%r12)
.LBB25_13:
	movl	$1, %ebx
.LBB25_14:
	movl	%ebx, %eax
	addq	$88, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB25_15:
	movl	%ecx, -48(%rbp)         # 4-byte Spill
	leaq	176(%r12), %r13
	testl	%r8d, %r8d
	je	.LBB25_20
# %bb.16:
	movq	(%rdi), %rax
	movq	%rax, 176(%r12)
	movq	%r12, %rdi
	callq	raxSeekGreatest
	testl	%eax, %eax
	je	.LBB25_22
# %bb.17:
	movq	(%r13), %rax
	movl	(%rax), %ecx
	testb	$1, %cl
	je	.LBB25_97
# %bb.18:
	testb	$2, %cl
	jne	.LBB25_23
# %bb.19:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leal	(,%rcx,4), %ecx
	notl	%ecx
	andl	$8, %ecx
	addq	%rdi, %rcx
	addq	%rsi, %rcx
	leaq	(%rax,%rcx), %rsi
	addq	$-4, %rsi
.LBB25_74:
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rax
	movq	%rax, 24(%r12)
	jmp	.LBB25_13
.LBB25_20:
	leaq	184(%r12), %rax
	movl	$0, -52(%rbp)
	movq	%rax, -72(%rbp)         # 8-byte Spill
	movq	%rax, (%rsp)
	leaq	-52(%rbp), %r9
	movq	%r15, %rsi
	movq	%r10, %rdx
	movq	%r13, %rcx
	xorl	%r8d, %r8d
	movq	%r13, -96(%rbp)         # 8-byte Spill
	movq	%r10, %r13
	callq	raxLowWalk
	cmpl	$0, 464(%r12)
	je	.LBB25_24
.LBB25_22:
	xorl	%ebx, %ebx
	jmp	.LBB25_14
.LBB25_24:
	cmpq	%r13, %rax
	setne	%cl
	xorb	$1, %bl
	orb	%cl, %bl
	movq	%r13, %rdx
	movq	-96(%rbp), %r13         # 8-byte Reload
	jne	.LBB25_31
# %bb.25:
	movq	(%r13), %rcx
	movl	(%rcx), %esi
	cmpl	$0, -52(%rbp)
	setne	%cl
	testb	$1, %sil
	je	.LBB25_31
# %bb.26:
	andl	$4, %esi
	shrl	$2, %esi
	andb	%sil, %cl
	jne	.LBB25_31
# %bb.27:
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	raxIteratorAddChars
	movl	$0, %ebx
	testl	%eax, %eax
	je	.LBB25_14
# %bb.28:
	movq	(%r13), %rax
	movl	(%rax), %ecx
	testb	$2, %cl
	jne	.LBB25_23
# %bb.29:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB25_72
# %bb.30:
	xorl	%ecx, %ecx
	jmp	.LBB25_73
.LBB25_23:
	xorl	%eax, %eax
	movq	%rax, 24(%r12)
	jmp	.LBB25_13
.LBB25_31:
	movl	%r14d, %ecx
	orl	-48(%rbp), %ecx         # 4-byte Folded Reload
	je	.LBB25_36
# %bb.32:
	movq	%rax, -80(%rbp)         # 8-byte Spill
	movq	176(%r12), %rbx
	movq	192(%r12), %rsi
	cmpq	200(%r12), %rsi
	movq	%rdx, -88(%rbp)         # 8-byte Spill
	movq	%r15, -104(%rbp)        # 8-byte Spill
	jne	.LBB25_37
# %bb.33:
	movq	184(%r12), %r15
	leaq	208(%r12), %rax
	shlq	$4, %rsi
	cmpq	%rax, %r15
	je	.LBB25_38
# %bb.34:
	movq	%r15, %rdi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB25_76
# %bb.35:
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	jmp	.LBB25_40
.LBB25_36:
	orb	$2, (%r12)
	jmp	.LBB25_13
.LBB25_37:
	movl	%r14d, -44(%rbp)        # 4-byte Spill
	jmp	.LBB25_41
.LBB25_38:
	movq	%rsi, %rdi
	callq	zmalloc
	movq	-72(%rbp), %rcx         # 8-byte Reload
	movq	%rax, (%rcx)
	testq	%rax, %rax
	je	.LBB25_75
# %bb.39:
	movq	200(%r12), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	%r15, %rsi
	callq	memcpy
.LBB25_40:
	movl	%r14d, -44(%rbp)        # 4-byte Spill
	shlq	200(%r12)
	movq	192(%r12), %rsi
	movq	-88(%rbp), %rdx         # 8-byte Reload
.LBB25_41:
	movq	184(%r12), %rax
	movq	%rbx, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r12)
	cmpq	$2, %rsi
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jb	.LBB25_50
# %bb.42:
	movl	$1, %edi
	leaq	-64(%rbp), %r14
	jmp	.LBB25_45
.LBB25_43:                              #   in Loop: Header=BB25_45 Depth=1
	addq	$4, %r15
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB25_22
.LBB25_44:                              #   in Loop: Header=BB25_45 Depth=1
	movq	-112(%rbp), %rdi        # 8-byte Reload
	addq	$1, %rdi
	movq	192(%r12), %rsi
	cmpq	%rsi, %rdi
	movq	-88(%rbp), %rdx         # 8-byte Reload
	leaq	-64(%rbp), %r14
	jae	.LBB25_50
.LBB25_45:                              # =>This Loop Header: Depth=1
                                        #     Child Loop BB25_47 Depth 2
	movq	(%rbx), %rax
	movq	-8(%rax,%rdi,8), %r15
	movl	(%r15), %ecx
	movq	%rcx, %rdx
	shrq	$3, %rdx
	testb	$4, %cl
	movq	%rdi, -112(%rbp)        # 8-byte Spill
	jne	.LBB25_43
# %bb.46:                               #   in Loop: Header=BB25_45 Depth=1
	movq	(%rax,%rdi,8), %rbx
	movq	%rdx, %rax
	addq	%r15, %rax
	movl	$4, %ecx
	subl	%edx, %ecx
	andl	$7, %ecx
	leaq	(%rcx,%rax), %r13
	addq	$4, %r13
	addq	$3, %r15
	.p2align	4, 0x90
.LBB25_47:                              #   Parent Loop BB25_45 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%r13, %rsi
	callq	memcpy
	addq	$8, %r13
	addq	$1, %r15
	cmpq	%rbx, -64(%rbp)
	jne	.LBB25_47
# %bb.48:                               #   in Loop: Header=BB25_45 Depth=1
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%r15, %rsi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	movq	-96(%rbp), %r13         # 8-byte Reload
	movq	-72(%rbp), %rbx         # 8-byte Reload
	jne	.LBB25_44
	jmp	.LBB25_22
.LBB25_50:
	testq	%rsi, %rsi
	je	.LBB25_52
# %bb.51:
	addq	$-1, %rsi
	movq	%rsi, 192(%r12)
.LBB25_52:
	movq	(%r13), %rsi
	cmpq	%rdx, -80(%rbp)         # 8-byte Folded Reload
	movl	$0, %ebx
	movq	-104(%rbp), %rcx        # 8-byte Reload
	jne	.LBB25_58
# %bb.53:
	andb	$-2, (%r12)
	movl	(%rsi), %eax
	testb	$4, %al
	jne	.LBB25_65
.LBB25_54:
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB25_56
# %bb.55:
	xorl	%ebx, %ebx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	raxIteratorNextStep
	testl	%eax, %eax
	je	.LBB25_14
.LBB25_56:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB25_89
# %bb.57:
	xorl	%ebx, %ebx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	raxIteratorPrevStep
	jmp	.LBB25_88
.LBB25_58:
	testb	$4, (%rsi)
	jne	.LBB25_68
# %bb.59:
	addq	-80(%rbp), %rcx         # 8-byte Folded Reload
	movl	$1, %edx
	movq	%r12, %rdi
	movq	%rcx, %rsi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	movl	-44(%rbp), %eax         # 4-byte Reload
	je	.LBB25_14
# %bb.60:
	andb	$-2, (%r12)
	testl	%eax, %eax
	je	.LBB25_62
# %bb.61:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	raxIteratorPrevStep
	testl	%eax, %eax
	je	.LBB25_14
.LBB25_62:
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB25_89
# %bb.63:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	raxIteratorNextStep
	jmp	.LBB25_87
.LBB25_65:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB25_54
# %bb.66:
	andl	$1, %eax
	je	.LBB25_54
# %bb.67:
	cmpl	$0, -52(%rbp)
	jne	.LBB25_89
	jmp	.LBB25_54
.LBB25_68:
	movslq	-52(%rbp), %rax
	movb	4(%rsi,%rax), %r14b
	movq	-80(%rbp), %rax         # 8-byte Reload
	movb	(%rcx,%rax), %r15b
	andl	$-2, (%r12)
	cmpl	$0, -48(%rbp)           # 4-byte Folded Reload
	je	.LBB25_79
# %bb.69:
	cmpb	%r15b, %r14b
	jbe	.LBB25_77
# %bb.70:
	xorl	%ebx, %ebx
	movq	%r12, %rdi
	xorl	%esi, %esi
	callq	raxIteratorNextStep
	testl	%eax, %eax
	jne	.LBB25_79
	jmp	.LBB25_14
.LBB25_72:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB25_73:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	jmp	.LBB25_74
.LBB25_75:
	movq	%r15, 184(%r12)
.LBB25_76:
	movl	$1, 464(%r12)
	callq	__errno
	movl	$12, (%rax)
	xorl	%ebx, %ebx
	jmp	.LBB25_14
.LBB25_77:
	movl	(%rsi), %edx
	addq	$4, %rsi
	shrq	$3, %rdx
	movq	%r12, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB25_22
# %bb.78:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	raxIteratorNextStep
	testl	%eax, %eax
	je	.LBB25_22
.LBB25_79:
	cmpl	$0, -44(%rbp)           # 4-byte Folded Reload
	je	.LBB25_89
# %bb.80:
	cmpb	%r15b, %r14b
	jae	.LBB25_85
# %bb.81:
	movq	%r12, %rdi
	callq	raxSeekGreatest
	movl	$0, %ebx
	testl	%eax, %eax
	je	.LBB25_14
# %bb.82:
	movq	(%r13), %rax
	movl	(%rax), %ecx
	testb	$2, %cl
	jne	.LBB25_93
# %bb.83:
	movq	%rcx, %rdx
	shrq	$3, %rdx
	movl	$4, %esi
	subl	%edx, %esi
	andl	$7, %esi
	addq	%rdx, %rsi
	movl	%ecx, %edx
	andl	$-8, %edx
	testb	$4, %cl
	movl	$8, %edi
	cmovel	%edx, %edi
	leaq	(%rdi,%rsi), %rdx
	addq	$4, %rdx
	testb	$1, %cl
	jne	.LBB25_94
# %bb.84:
	xorl	%ecx, %ecx
	jmp	.LBB25_95
.LBB25_85:
	movq	176(%r12), %rsi
	movl	(%rsi), %edx
	addq	$4, %rsi
	shrq	$3, %rdx
	movq	%r12, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB25_22
# %bb.86:
	movq	%r12, %rdi
	movl	$1, %esi
	callq	raxIteratorPrevStep
.LBB25_87:
	movl	$0, %ebx
.LBB25_88:
	testl	%eax, %eax
	je	.LBB25_14
.LBB25_89:
	orb	$1, (%r12)
	jmp	.LBB25_13
.LBB25_93:
	xorl	%eax, %eax
	jmp	.LBB25_96
.LBB25_94:
	shll	$2, %ecx
	notl	%ecx
	andl	$8, %ecx
.LBB25_95:
	addq	%rcx, %rdx
	leaq	(%rax,%rdx), %rsi
	addq	$-8, %rsi
	leaq	-64(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-64(%rbp), %rax
.LBB25_96:
	movq	%rax, 24(%r12)
	orb	$1, (%r12)
	jmp	.LBB25_13
.LBB25_97:
	movl	$.L.str.1, %edi
	movl	$.L__func__.raxSeek, %edx
	movl	$.L.str.7, %ecx
	movl	$1553, %esi             # imm = 0x611
	callq	__assert_func
.Lfunc_end25:
	.size	raxSeek, .Lfunc_end25-raxSeek
	.section	.rodata,"a",@progbits
	.p2align	3
.LJTI25_0:
	.quad	.LBB25_2
	.quad	.LBB25_9
	.quad	.LBB25_6
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_5
	.quad	.LBB25_7
                                        # -- End function
	.text
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
	testl	%eax, %eax
	je	.LBB26_1
# %bb.2:
	movl	$1, %eax
	testb	$2, (%rbx)
	movl	$0, %ebx
	jne	.LBB26_3
	jmp	.LBB26_4
.LBB26_1:
	movl	$12, %ebx
.LBB26_3:
	callq	__errno
	movl	%ebx, (%rax)
	xorl	%eax, %eax
.LBB26_4:
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end26:
	.size	raxNext, .Lfunc_end26-raxNext
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
	testl	%eax, %eax
	je	.LBB27_1
# %bb.2:
	movl	$1, %eax
	testb	$2, (%rbx)
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
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end27:
	.size	raxPrev, .Lfunc_end27-raxPrev
                                        # -- End function
	.section	.rodata.cst16,"aM",@progbits,16
	.p2align	4               # -- Begin function raxRandomWalk
.LCPI28_0:
	.long	1127219200              # 0x43300000
	.long	1160773632              # 0x45300000
	.long	0                       # 0x0
	.long	0                       # 0x0
.LCPI28_1:
	.quad	4841369599423283200     # double 4503599627370496
	.quad	4985484787499139072     # double 1.9342813113834067E+25
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI28_2:
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
	movq	%rdi, %r12
	movq	8(%rdi), %rax
	movq	8(%rax), %rax
	testq	%rax, %rax
	je	.LBB28_24
# %bb.1:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	jne	.LBB28_3
# %bb.2:
	movq	%rax, %xmm1
	punpckldq	.LCPI28_0(%rip), %xmm1 # xmm1 = xmm1[0],mem[0],xmm1[1],mem[1]
	subpd	.LCPI28_1(%rip), %xmm1
	movapd	%xmm1, %xmm0
	unpckhpd	%xmm1, %xmm0    # xmm0 = xmm0[1],xmm1[1]
	addsd	%xmm1, %xmm0
	callq	log
	callq	floor
	movsd	.LCPI28_2(%rip), %xmm1  # xmm1 = mem[0],zero
	movapd	%xmm0, %xmm2
	subsd	%xmm1, %xmm2
	cvttsd2si	%xmm2, %rax
	movabsq	$-9223372036854775808, %rcx # imm = 0x8000000000000000
	xorq	%rax, %rcx
	cvttsd2si	%xmm0, %r14
	ucomisd	%xmm1, %xmm0
	cmovaeq	%rcx, %r14
	addq	%r14, %r14
	callq	rand
	cltq
	xorl	%edx, %edx
	divq	%r14
	movq	%rdx, %r14
	addq	$1, %r14
.LBB28_3:
	movq	176(%r12), %rax
	movq	%rax, -48(%rbp)
	leaq	208(%r12), %rcx
	movq	%rcx, -56(%rbp)         # 8-byte Spill
	movl	$1, %r15d
	jmp	.LBB28_9
.LBB28_4:                               #   in Loop: Header=BB28_9 Depth=1
	shlq	$4, %rsi
	callq	zrealloc
	testq	%rax, %rax
	je	.LBB28_27
# %bb.5:                                #   in Loop: Header=BB28_9 Depth=1
	movq	%rax, 184(%r12)
.LBB28_6:                               #   in Loop: Header=BB28_9 Depth=1
	shlq	200(%r12)
	movq	192(%r12), %rsi
.LBB28_7:                               #   in Loop: Header=BB28_9 Depth=1
	shrq	$3, %r15
	movq	184(%r12), %rax
	movq	%r13, (%rax,%rsi,8)
	addq	$1, %rsi
	movq	%rsi, 192(%r12)
	movq	%r15, %rax
	addq	%r13, %rax
	movl	$4, %ecx
	subl	%r15d, %ecx
	andl	$7, %ecx
	addq	%rax, %rcx
	leaq	(%rcx,%rbx,8), %rsi
	addq	$4, %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rax
	movl	$1, %r15d
.LBB28_8:                               #   in Loop: Header=BB28_9 Depth=1
	movl	(%rax), %ecx
	andl	$1, %ecx
	negl	%ecx
	movslq	%ecx, %rcx
	addq	%rcx, %r14
.LBB28_9:                               # =>This Inner Loop Header: Depth=1
	testq	%r14, %r14
	jne	.LBB28_11
# %bb.10:                               #   in Loop: Header=BB28_9 Depth=1
	testb	$1, (%rax)
	jne	.LBB28_25
.LBB28_11:                              #   in Loop: Header=BB28_9 Depth=1
	movl	(%rax), %eax
	movl	%eax, %ebx
	shrl	$3, %ebx
	testb	$4, %al
	cmovnel	%r15d, %ebx
	callq	rand
	movq	-48(%rbp), %rsi
	movq	8(%r12), %rcx
	xorl	%edi, %edi
	cmpq	(%rcx), %rsi
	setne	%dil
	addl	%ebx, %edi
	cltd
	idivl	%edi
	cmpl	%ebx, %edx
	jne	.LBB28_14
# %bb.12:                               #   in Loop: Header=BB28_9 Depth=1
	movq	192(%r12), %rax
	testq	%rax, %rax
	je	.LBB28_22
# %bb.13:                               #   in Loop: Header=BB28_9 Depth=1
	leaq	-1(%rax), %rcx
	movq	%rcx, 192(%r12)
	movq	184(%r12), %rcx
	movq	-8(%rcx,%rax,8), %rax
	jmp	.LBB28_23
	.p2align	4, 0x90
.LBB28_14:                              #   in Loop: Header=BB28_9 Depth=1
	movl	%edx, %eax
	movl	(%rsi), %edx
	movslq	%eax, %rbx
	testb	$4, %dl
	jne	.LBB28_16
# %bb.15:                               #   in Loop: Header=BB28_9 Depth=1
	addq	%rbx, %rsi
	addq	$4, %rsi
	movl	$1, %edx
	jmp	.LBB28_17
	.p2align	4, 0x90
.LBB28_16:                              #   in Loop: Header=BB28_9 Depth=1
	addq	$4, %rsi
	shrq	$3, %rdx
.LBB28_17:                              #   in Loop: Header=BB28_9 Depth=1
	movq	%r12, %rdi
	callq	raxIteratorAddChars
	testl	%eax, %eax
	je	.LBB28_28
# %bb.18:                               #   in Loop: Header=BB28_9 Depth=1
	movq	-48(%rbp), %r13
	movl	(%r13), %r15d
	movq	192(%r12), %rsi
	cmpq	200(%r12), %rsi
	jne	.LBB28_7
# %bb.19:                               #   in Loop: Header=BB28_9 Depth=1
	movq	184(%r12), %rdi
	cmpq	-56(%rbp), %rdi         # 8-byte Folded Reload
	jne	.LBB28_4
# %bb.20:                               #   in Loop: Header=BB28_9 Depth=1
	shlq	$4, %rsi
	movq	%rsi, %rdi
	callq	zmalloc
	movq	%rax, 184(%r12)
	testq	%rax, %rax
	je	.LBB28_26
# %bb.21:                               #   in Loop: Header=BB28_9 Depth=1
	movq	200(%r12), %rdx
	shlq	$3, %rdx
	movq	%rax, %rdi
	movq	-56(%rbp), %rsi         # 8-byte Reload
	callq	memcpy
	jmp	.LBB28_6
.LBB28_22:                              #   in Loop: Header=BB28_9 Depth=1
	xorl	%eax, %eax
.LBB28_23:                              #   in Loop: Header=BB28_9 Depth=1
	movq	%rax, -48(%rbp)
	movl	(%rax), %ecx
	movl	%ecx, %edx
	shrl	$3, %edx
	testb	$4, %cl
	cmovel	%r15d, %edx
	subq	%rdx, 32(%r12)
	jmp	.LBB28_8
.LBB28_24:
	orb	$2, (%r12)
	jmp	.LBB28_28
.LBB28_25:
	movq	%rax, 176(%r12)
	movl	$1, %eax
	jmp	.LBB28_29
.LBB28_26:
	movq	-56(%rbp), %rax         # 8-byte Reload
	movq	%rax, 184(%r12)
.LBB28_27:
	movl	$1, 464(%r12)
	callq	__errno
	movl	$12, (%rax)
.LBB28_28:
	xorl	%eax, %eax
.LBB28_29:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end28:
	.size	raxRandomWalk, .Lfunc_end28-raxRandomWalk
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
	cmpb	$61, %al
	je	.LBB29_2
# %bb.1:
	xorl	%r12d, %r12d
	cmpb	$61, 1(%rsi)
	jne	.LBB29_3
.LBB29_2:
	movl	$1, %r12d
.LBB29_3:
	cmpb	$62, %al
	je	.LBB29_4
# %bb.5:
	cmpb	$60, %al
	jne	.LBB29_7
# %bb.6:
	xorl	%r13d, %r13d
	movl	$1, %ebx
	jmp	.LBB29_8
.LBB29_4:
	movl	$1, %r13d
	xorl	%ebx, %ebx
	jmp	.LBB29_8
.LBB29_7:
	xorl	%ebx, %ebx
	cmpb	$61, 1(%rsi)
	movl	$0, %r13d
	movl	$0, %eax
	jne	.LBB29_19
.LBB29_8:
	movq	16(%r15), %rdi
	movq	32(%r15), %rax
	cmpq	%r14, %rax
	cmovaq	%r14, %rax
	movq	%rdx, %rsi
	movq	%rax, %rdx
	callq	memcmp
	movl	%eax, %ecx
	movl	%r13d, %eax
	orl	%ebx, %eax
	je	.LBB29_9
# %bb.11:
	testl	%ecx, %ecx
	je	.LBB29_12
.LBB29_18:
	testl	%ecx, %ecx
	cmovgl	%r13d, %ebx
	movl	%ebx, %eax
	jmp	.LBB29_19
.LBB29_9:
	xorl	%eax, %eax
	testl	%ecx, %ecx
	jne	.LBB29_19
# %bb.10:
	xorl	%eax, %eax
	cmpq	%r14, 32(%r15)
	sete	%al
	jmp	.LBB29_19
.LBB29_12:
	testl	%r12d, %r12d
	je	.LBB29_14
# %bb.13:
	movl	$1, %eax
	cmpq	%r14, 32(%r15)
	je	.LBB29_19
.LBB29_14:
	testl	%ebx, %ebx
	je	.LBB29_16
# %bb.15:
	xorl	%eax, %eax
	cmpq	%r14, 32(%r15)
	setb	%al
	jmp	.LBB29_19
.LBB29_16:
	testl	%r13d, %r13d
	je	.LBB29_18
# %bb.17:
	xorl	%eax, %eax
	cmpq	%r14, 32(%r15)
	seta	%al
.LBB29_19:
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end29:
	.size	raxCompare, .Lfunc_end29-raxCompare
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
	cmpq	%rax, %rdi
	je	.LBB30_2
# %bb.1:
	callq	zfree
.LBB30_2:
	movq	184(%rbx), %rdi
	addq	$208, %rbx
	addq	$8, %rsp
	cmpq	%rbx, %rdi
	je	.LBB30_3
# %bb.4:
	popq	%rbx
	popq	%rbp
	jmp	zfree                   # TAILCALL
.LBB30_3:
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end30:
	.size	raxStop, .Lfunc_end30-raxStop
                                        # -- End function
	.globl	raxEOF                  # -- Begin function raxEOF
	.p2align	4, 0x90
	.type	raxEOF,@function
raxEOF:                                 # @raxEOF
# %bb.0:
	movl	(%rdi), %eax
	andl	$2, %eax
	retq
.Lfunc_end31:
	.size	raxEOF, .Lfunc_end31-raxEOF
                                        # -- End function
	.globl	raxSize                 # -- Begin function raxSize
	.p2align	4, 0x90
	.type	raxSize,@function
raxSize:                                # @raxSize
# %bb.0:
	movq	8(%rdi), %rax
	retq
.Lfunc_end32:
	.size	raxSize, .Lfunc_end32-raxSize
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
	movq	%rdx, %r13
	movl	%esi, -44(%rbp)         # 4-byte Spill
	movl	%edi, %r14d
	movl	(%rdx), %eax
	movl	%eax, %edx
	shrl	$3, %edx
	testb	$4, %al
	movl	$34, %eax
	movl	$91, %esi
	cmovnel	%eax, %esi
	leaq	4(%r13), %rcx
	movl	$93, %r8d
	cmovnel	%eax, %r8d
	movl	$.L.str.8, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%eax, %r12d
	movl	(%r13), %eax
	testb	$1, %al
	je	.LBB33_5
# %bb.1:
	testb	$2, %al
	jne	.LBB33_2
# %bb.3:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%rax,%r13), %rsi
	addq	$-4, %rsi
	leaq	-56(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	-56(%rbp), %rsi
	jmp	.LBB33_4
.LBB33_2:
	xorl	%esi, %esi
.LBB33_4:
	movl	$.L.str.9, %edi
	xorl	%eax, %eax
	callq	printf
	addl	%eax, %r12d
	movl	(%r13), %eax
.LBB33_5:
	movl	%eax, %ecx
	shrl	$3, %ecx
	testb	$4, %al
	movl	$1, %r15d
	cmovel	%ecx, %r15d
	testl	%r14d, %r14d
	je	.LBB33_7
# %bb.6:
	xorl	%eax, %eax
	xorl	%edx, %edx
	cmpl	$1, %r15d
	seta	%dl
	leal	(%rdx,%rdx,2), %edx
	cmovel	%r12d, %eax
	addl	-44(%rbp), %edx         # 4-byte Folded Reload
	addl	%edx, %eax
	addl	$4, %eax
	movl	%eax, -44(%rbp)         # 4-byte Spill
.LBB33_7:
	testl	%r15d, %r15d
	je	.LBB33_15
# %bb.8:
	movl	%ecx, %eax
	addq	%r13, %rax
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	leaq	(%rdx,%rax), %rbx
	addq	$4, %rbx
	addl	$1, %r14d
	movl	%r15d, %eax
	movq	%rax, -72(%rbp)         # 8-byte Spill
	xorl	%r12d, %r12d
	movl	%r15d, -60(%rbp)        # 4-byte Spill
	jmp	.LBB33_9
	.p2align	4, 0x90
.LBB33_13:                              #   in Loop: Header=BB33_9 Depth=1
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	printf
.LBB33_14:                              #   in Loop: Header=BB33_9 Depth=1
	movl	$8, %edx
	leaq	-56(%rbp), %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	-56(%rbp), %rdx
	movl	%r14d, %edi
	movl	-44(%rbp), %esi         # 4-byte Reload
	callq	raxRecursiveShow
	addq	$8, %rbx
	addq	$1, %r12
	cmpq	-72(%rbp), %r12         # 8-byte Folded Reload
	je	.LBB33_15
.LBB33_9:                               # =>This Loop Header: Depth=1
                                        #     Child Loop BB33_12 Depth 2
	cmpl	$1, %r15d
	je	.LBB33_13
# %bb.10:                               #   in Loop: Header=BB33_9 Depth=1
	movl	%r14d, %r15d
	movq	%r13, %r14
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	movl	-44(%rbp), %eax         # 4-byte Reload
	movl	%eax, %r13d
	testl	%eax, %eax
	jle	.LBB33_11
	.p2align	4, 0x90
.LBB33_12:                              #   Parent Loop BB33_9 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
	movl	$32, %edi
	callq	putchar
	addl	$-1, %r13d
	jne	.LBB33_12
.LBB33_11:                              #   in Loop: Header=BB33_9 Depth=1
	movq	%r14, %r13
	movzbl	4(%r14,%r12), %esi
	movl	$.L.str.10, %edi
	xorl	%eax, %eax
	callq	printf
	movl	%r15d, %r14d
	movl	-60(%rbp), %r15d        # 4-byte Reload
	jmp	.LBB33_14
.LBB33_15:
	addq	$40, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end33:
	.size	raxRecursiveShow, .Lfunc_end33-raxRecursiveShow
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
	popq	%rbp
	jmp	putchar                 # TAILCALL
.Lfunc_end34:
	.size	raxShow, .Lfunc_end34-raxShow
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
	je	.LBB35_7
# %bb.1:
	movq	%rsi, %r15
	movq	%rdi, %rsi
	movl	(%r15), %r9d
	movl	%r9d, %ecx
	shrl	$3, %ecx
	leaq	4(%r15), %r8
	andl	$1, %r9d
	movl	%ecx, (%rsp)
	xorl	%r14d, %r14d
	movl	$.L.str.13, %edi
	movq	%r15, %rdx
	xorl	%eax, %eax
	callq	printf
	movl	(%r15), %eax
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %esi
	andl	$-8, %esi
	testb	$4, %al
	movl	$1, %ebx
	cmovel	%ecx, %ebx
	movl	$8, %ecx
	cmovel	%esi, %ecx
	addq	%rdx, %rcx
	addq	$4, %rcx
	testb	$1, %al
	je	.LBB35_3
# %bb.2:
	shll	$2, %eax
	notl	%eax
	andl	$8, %eax
	addq	%rax, %rcx
	negq	%rax
	movq	%rax, %r14
.LBB35_3:
	testl	%ebx, %ebx
	je	.LBB35_6
# %bb.4:
	addq	%rcx, %r15
	addq	%r14, %r15
	movl	%ebx, %eax
	shlq	$3, %rax
	subq	%rax, %r15
	leaq	-32(%rbp), %r14
	.p2align	4, 0x90
.LBB35_5:                               # =>This Inner Loop Header: Depth=1
	movl	$8, %edx
	movq	%r14, %rdi
	movq	%r15, %rsi
	callq	memcpy
	addq	$8, %r15
	movq	-32(%rbp), %rsi
	movl	$.L.str.14, %edi
	xorl	%eax, %eax
	callq	printf
	addl	$-1, %ebx
	jne	.LBB35_5
.LBB35_6:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	printf
	callq	__getreent
	movq	16(%rax), %rdi
	callq	fflush
.LBB35_7:
	addq	$24, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end35:
	.size	raxDebugShowNode, .Lfunc_end35-raxDebugShowNode
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
	movl	%eax, %ecx
	andl	$3, %ecx
	cmpl	$1, %ecx
	jne	.LBB36_1
# %bb.2:
	movq	%rax, %rcx
	shrq	$3, %rcx
	movl	$4, %edx
	subl	%ecx, %edx
	andl	$7, %edx
	addq	%rcx, %rdx
	movl	%eax, %ecx
	andl	$-8, %ecx
	testb	$4, %al
	movl	$8, %esi
	cmovel	%ecx, %esi
	leal	(,%rax,4), %eax
	notl	%eax
	andl	$8, %eax
	addq	%rsi, %rax
	addq	%rdx, %rax
	leaq	(%rdi,%rax), %rsi
	addq	$-4, %rsi
	movq	%rdi, %rbx
	leaq	-48(%rbp), %rdi
	movl	$8, %edx
	callq	memcpy
	movq	%rbx, %rdi
	movq	-48(%rbp), %r13
	movl	(%rbx), %eax
	jmp	.LBB36_3
.LBB36_1:
	xorl	%r13d, %r13d
.LBB36_3:
	movl	%eax, %ecx
	shrl	$3, %ecx
	testb	$4, %al
	movl	$1, %edx
	cmovel	%ecx, %edx
	testl	%edx, %edx
	je	.LBB36_4
# %bb.6:
	movl	%ecx, %eax
	movl	$4, %ebx
	subl	%ecx, %ebx
	andl	$7, %ebx
	addq	%rax, %rbx
	movl	%edx, %eax
	movq	%rax, -64(%rbp)         # 8-byte Spill
	addq	$4, %rdi
	xorl	%r15d, %r15d
	xorl	%r14d, %r14d
	movl	%edx, -52(%rbp)         # 4-byte Spill
	.p2align	4, 0x90
.LBB36_7:                               # =>This Inner Loop Header: Depth=1
	cmpl	$1, %edx
	je	.LBB36_9
# %bb.8:                                #   in Loop: Header=BB36_7 Depth=1
	movzbl	(%rdi,%r15), %eax
	addq	%rax, %r13
.LBB36_9:                               #   in Loop: Header=BB36_7 Depth=1
	movq	%rdi, %r12
	leaq	(%rdi,%rbx), %rsi
	movl	$8, %edx
	leaq	-48(%rbp), %rdi
	callq	memcpy
	movq	-48(%rbp), %rdi
	xorl	%eax, %eax
	cmpq	$106764128, %rdi        # imm = 0x65D1760
	sete	%al
	addl	%eax, %r14d
	cmpl	$2, %r14d
	jae	.LBB36_11
# %bb.10:                               #   in Loop: Header=BB36_7 Depth=1
	callq	raxTouch
	addq	%r13, %rax
	addq	$1, %r15
	addq	$8, %rbx
	movq	%rax, %r13
	cmpq	-64(%rbp), %r15         # 8-byte Folded Reload
	movq	%r12, %rdi
	movl	-52(%rbp), %edx         # 4-byte Reload
	jb	.LBB36_7
	jmp	.LBB36_5
.LBB36_4:
	movq	%r13, %rax
.LBB36_5:
	addq	$24, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB36_11:
	movl	$1, %edi
	callq	exit
.Lfunc_end36:
	.size	raxTouch, .Lfunc_end36-raxTouch
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

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
