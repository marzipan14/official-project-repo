	.text
	.file	"tlsf.c"
	.globl	init_memory_pool        # -- Begin function init_memory_pool
	.p2align	4, 0x90
	.type	init_memory_pool,@function
init_memory_pool:                       # @init_memory_pool
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movq	$-1, %rax
	cmpq	$6392, %rdi             # imm = 0x18F8
	jb	.LBB0_7
# %bb.1:
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.2:
	testb	$7, %bl
	jne	.LBB0_7
# %bb.3:
	cmpl	$710539865, (%rbx)      # imm = 0x2A59FA59
	jne	.LBB0_5
# %bb.4:
	movq	6280(%rbx), %rax
	jmp	.LBB0_6
.LBB0_5:
	movq	%rdi, %r14
	movl	$6264, %edx             # imm = 0x1878
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movl	$710539865, (%rbx)      # imm = 0x2A59FA59
	movq	$16, 6280(%rbx)
	leaq	6288(%rbx), %r15
	leaq	6304(%rbx), %rax
	addq	$-6328, %r14            # imm = 0xE748
	movq	%r14, %rcx
	andq	$-16, %rcx
	movq	%rcx, 6312(%rbx)
	leaq	6320(%rbx), %rdi
	xorps	%xmm0, %xmm0
	movups	%xmm0, 6320(%rbx)
	andl	$-16, %r14d
	leaq	(%rbx,%r14), %rcx
	addq	$6320, %rcx             # imm = 0x18B0
	movq	%rax, 6320(%rbx,%r14)
	movq	$2, 6328(%rbx,%r14)
	movq	$0, 6296(%rbx)
	movq	%rcx, 6288(%rbx)
	movq	%rbx, %rsi
	callq	free_ex
	movq	%r15, 8(%rbx)
	movq	6312(%rbx), %rax
.LBB0_6:
	andl	$-8, %eax
.LBB0_7:
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	init_memory_pool, .Lfunc_end0-init_memory_pool
                                        # -- End function
	.globl	free_ex                 # -- Begin function free_ex
	.p2align	4, 0x90
	.type	free_ex,@function
free_ex:                                # @free_ex
# %bb.0:
	testq	%rdi, %rdi
	je	.LBB1_34
# %bb.1:
	pushq	%rbx
	movq	-8(%rdi), %rdx
	movq	%rdx, %r9
	orq	$1, %r9
	movq	%r9, -8(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	andl	$-8, %edx
	movq	8(%rdi,%rdx), %rax
	testb	$1, %al
	je	.LBB1_14
# %bb.2:
	addq	%rdi, %rdx
	andl	$-8, %eax
	cmpq	$127, %rax
	ja	.LBB1_4
# %bb.3:
	shrq	$2, %rax
	xorl	%r8d, %r8d
	jmp	.LBB1_5
.LBB1_4:
	xorl	%ecx, %ecx
	cmpl	$255, %eax
	seta	%cl
	shll	$3, %ecx
	xorl	%r8d, %r8d
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	seta	%r8b
	cmpl	$65536, %eax            # imm = 0x10000
	leal	16(,%r8,8), %r8d
	cmovbl	%ecx, %r8d
	movl	%eax, %r9d
	movl	%r8d, %ecx
	shrl	%cl, %r9d
	movl	table(,%r9,4), %r9d
	leal	(%r9,%r8), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	addl	$-32, %eax
	addl	%r9d, %r8d
	addl	$-6, %r8d
.LBB1_5:
	movq	24(%rdx), %r9
	testq	%r9, %r9
	je	.LBB1_7
# %bb.6:
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%r9)
.LBB1_7:
	movq	16(%rdx), %r9
	testq	%r9, %r9
	je	.LBB1_9
# %bb.8:
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%r9)
.LBB1_9:
	movslq	%r8d, %r9
	movq	%r9, %rcx
	shlq	$8, %rcx
	addq	%rsi, %rcx
	movslq	%eax, %r10
	cmpq	%rdx, 120(%rcx,%r10,8)
	jne	.LBB1_13
# %bb.10:
	leaq	(%rcx,%r10,8), %r10
	addq	$120, %r10
	movq	24(%rdx), %rcx
	movq	%rcx, (%r10)
	testq	%rcx, %rcx
	jne	.LBB1_13
# %bb.11:
	leaq	(%rsi,%r9,4), %r10
	movl	$-2, %r11d
	movl	%eax, %ecx
	roll	%cl, %r11d
	sarl	$5, %eax
	cltq
	andl	%r11d, 20(%r10,%rax,4)
	movl	$-2, %eax
	cmpl	$0, 20(%rsi,%r9,4)
	jne	.LBB1_13
# %bb.12:
	movl	%r8d, %ecx
	roll	%cl, %eax
	sarl	$5, %r8d
	movslq	%r8d, %rcx
	andl	%eax, 16(%rsi,%rcx,4)
.LBB1_13:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movq	8(%rdx), %rax
	andl	$-8, %eax
	movq	-8(%rdi), %rcx
	leaq	(%rax,%rcx), %r9
	addq	$16, %r9
	movq	%r9, -8(%rdi)
.LBB1_14:
	leaq	-16(%rdi), %r8
	testb	$2, %r9b
	jne	.LBB1_16
# %bb.15:
	addq	$-8, %rdi
	movq	%rdi, %r10
	jmp	.LBB1_28
.LBB1_16:
	movq	(%r8), %r8
	movq	8(%r8), %rax
	andl	$-8, %eax
	cmpq	$127, %rax
	ja	.LBB1_18
# %bb.17:
	shrq	$2, %rax
	xorl	%r9d, %r9d
	jmp	.LBB1_19
.LBB1_18:
	xorl	%ecx, %ecx
	cmpl	$255, %eax
	seta	%cl
	shll	$3, %ecx
	xorl	%edx, %edx
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	seta	%dl
	cmpl	$65536, %eax            # imm = 0x10000
	leal	16(,%rdx,8), %r9d
	cmovbl	%ecx, %r9d
	movl	%eax, %edx
	movl	%r9d, %ecx
	shrl	%cl, %edx
	movl	table(,%rdx,4), %edx
	leal	(%rdx,%r9), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	addl	$-32, %eax
	addl	%edx, %r9d
	addl	$-6, %r9d
.LBB1_19:
	movq	24(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB1_21
# %bb.20:
	movq	16(%r8), %rdx
	movq	%rdx, 16(%rcx)
.LBB1_21:
	movq	16(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB1_23
# %bb.22:
	movq	24(%r8), %rdx
	movq	%rdx, 24(%rcx)
.LBB1_23:
	movslq	%r9d, %r10
	movq	%r10, %rcx
	shlq	$8, %rcx
	addq	%rsi, %rcx
	movslq	%eax, %rdx
	cmpq	%r8, 120(%rcx,%rdx,8)
	jne	.LBB1_27
# %bb.24:
	leaq	(%rcx,%rdx,8), %rcx
	addq	$120, %rcx
	movq	24(%r8), %rdx
	movq	%rdx, (%rcx)
	testq	%rdx, %rdx
	jne	.LBB1_27
# %bb.25:
	leaq	(%rsi,%r10,4), %r11
	movl	$-2, %edx
	movl	%eax, %ecx
	roll	%cl, %edx
	sarl	$5, %eax
	cltq
	andl	%edx, 20(%r11,%rax,4)
	movl	$-2, %eax
	cmpl	$0, 20(%rsi,%r10,4)
	jne	.LBB1_27
# %bb.26:
	movl	%r9d, %ecx
	roll	%cl, %eax
	sarl	$5, %r9d
	movslq	%r9d, %rcx
	andl	%eax, 16(%rsi,%rcx,4)
.LBB1_27:
	leaq	8(%r8), %r10
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r8)
	movq	-8(%rdi), %rax
	andl	$-8, %eax
	movq	8(%r8), %rcx
	leaq	(%rax,%rcx), %r9
	addq	$16, %r9
	movq	%r9, 8(%r8)
.LBB1_28:
	andl	$-8, %r9d
	cmpq	$127, %r9
	ja	.LBB1_30
# %bb.29:
	movq	%r9, %rax
	shrq	$2, %rax
	xorl	%ecx, %ecx
	jmp	.LBB1_31
.LBB1_30:
	xorl	%eax, %eax
	cmpl	$255, %r9d
	seta	%al
	shll	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$16777215, %r9d         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %r9d            # imm = 0x10000
	leal	16(,%rcx,8), %edx
	cmovbl	%eax, %edx
	movl	%r9d, %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	movl	table(,%rax,4), %edi
	leal	(%rdi,%rdx), %ecx
	addb	$-5, %cl
	movq	%r9, %rax
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	addl	$-32, %eax
	leal	(%rdi,%rdx), %ecx
	addl	$-6, %ecx
.LBB1_31:
	movq	$0, 16(%r8)
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	shlq	$8, %rdi
	addq	%rsi, %rdi
	movslq	%eax, %rcx
	leaq	(%rdi,%rcx,8), %r11
	addq	$120, %r11
	movq	120(%rdi,%rcx,8), %rbx
	movq	%rbx, 24(%r8)
	movq	120(%rdi,%rcx,8), %rdi
	testq	%rdi, %rdi
	je	.LBB1_33
# %bb.32:
	movq	%r8, 16(%rdi)
	movq	(%r10), %r9
	andl	$-8, %r9d
.LBB1_33:
	movq	%r8, (%r11)
	leaq	(%rsi,%rdx,4), %r10
	movl	$1, %ebx
	movl	$1, %edi
	movl	%eax, %ecx
	shll	%cl, %edi
	sarl	$5, %eax
	cltq
	orl	%edi, 20(%r10,%rax,4)
	movl	%edx, %ecx
	shll	%cl, %ebx
	sarl	$5, %edx
	movslq	%edx, %rax
	orl	%ebx, 16(%rsi,%rax,4)
	orb	$2, 24(%r8,%r9)
	movq	%r8, 16(%r8,%r9)
	popq	%rbx
.LBB1_34:
	retq
.Lfunc_end1:
	.size	free_ex, .Lfunc_end1-free_ex
                                        # -- End function
	.globl	add_new_area            # -- Begin function add_new_area
	.p2align	4, 0x90
	.type	add_new_area,@function
add_new_area:                           # @add_new_area
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	movq	8(%r14), %rdx
	movq	$16, 8(%r15)
	leaq	32(%r15), %r12
	addq	$-64, %rbx
	movq	%rbx, %rax
	andq	$-16, %rax
	movq	%rax, 40(%r15)
	xorps	%xmm0, %xmm0
	movups	%xmm0, 48(%r15)
	andl	$-16, %ebx
	leaq	(%r15,%rbx), %r9
	addq	$48, %r9
	movq	%r12, 48(%r15,%rbx)
	movq	$2, 56(%r15,%rbx)
	movq	$0, 24(%r15)
	movq	%r9, 16(%r15)
	testq	%rdx, %rdx
	je	.LBB2_16
# %bb.1:                                # %.preheader
	movabsq	$17179869168, %r8       # imm = 0x3FFFFFFF0
	xorl	%esi, %esi
	movq	%r9, %rdi
.LBB2_2:                                # =>This Loop Header: Depth=1
                                        #     Child Loop BB2_3 Depth 2
                                        #       Child Loop BB2_4 Depth 3
	movq	%rdi, %r9
	leaq	16(%rdi), %rbx
	movq	%r12, %rdi
.LBB2_3:                                #   Parent Loop BB2_2 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB2_4 Depth 3
	movq	%rdi, %r12
	.p2align	4, 0x90
.LBB2_4:                                #   Parent Loop BB2_2 Depth=1
                                        #     Parent Loop BB2_3 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
	movq	%rdx, %rax
	leaq	-16(%rdx), %rcx
	movq	(%rdx), %rdi
	cmpq	%rcx, %rbx
	je	.LBB2_5
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=3
	leaq	16(%rdi), %rdx
	cmpq	%r15, %rdx
	je	.LBB2_10
# %bb.15:                               #   in Loop: Header=BB2_4 Depth=3
	movq	8(%rax), %rdx
	movq	%rax, %rsi
	testq	%rdx, %rdx
	jne	.LBB2_4
	jmp	.LBB2_16
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=2
	movq	8(%rax), %rdx
	cmpq	%rax, 8(%r14)
	je	.LBB2_11
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=2
	movq	%rdx, 8(%rsi)
	movq	8(%rax), %rdx
	jmp	.LBB2_13
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=2
	movq	%rdx, 8(%r14)
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=2
	movq	8(%r12), %r10
	andl	$-8, %r10d
	movq	8(%r15), %rax
	andl	$-8, %eax
	leaq	(%r10,%rax), %r11
	addq	$32, %r11
	movq	%r11, %r10
	andq	%r8, %r10
	movq	8(%rdi), %rax
	andl	$2, %eax
	orq	%r10, %rax
	movq	%rax, 8(%rdi)
	andl	$-16, %r11d
	movq	%rdi, (%r15,%r11)
	movq	%rcx, %r15
	testq	%rdx, %rdx
	jne	.LBB2_3
	jmp	.LBB2_14
	.p2align	4, 0x90
.LBB2_5:                                #   in Loop: Header=BB2_2 Depth=1
	movq	-8(%rax), %rcx
	movq	8(%rax), %rdx
	andl	$-8, %ecx
	cmpq	%rax, 8(%r14)
	je	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, 8(%rsi)
	movq	8(%rax), %rdx
	jmp	.LBB2_8
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, 8(%r14)
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movq	8(%r12), %rbx
	andl	$-8, %ebx
	addq	%rcx, %rbx
	addq	$32, %rbx
	andq	%r8, %rbx
	movq	%rbx, 8(%r12)
	movq	%r12, (%rax,%rcx)
	movq	%rdi, %r9
	testq	%rdx, %rdx
	jne	.LBB2_2
	jmp	.LBB2_16
.LBB2_14:
	movq	%rdi, %r12
	movq	%rcx, %r15
.LBB2_16:
	movq	8(%r14), %rax
	movq	%rax, 24(%r15)
	movq	%r9, 16(%r15)
	leaq	16(%r15), %rax
	movq	%rax, 8(%r14)
	leaq	16(%r12), %rdi
	movq	%r14, %rsi
	callq	free_ex
	movq	8(%r12), %rax
	andl	$-8, %eax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end2:
	.size	add_new_area, .Lfunc_end2-add_new_area
                                        # -- End function
	.globl	get_used_size           # -- Begin function get_used_size
	.p2align	4, 0x90
	.type	get_used_size,@function
get_used_size:                          # @get_used_size
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end3:
	.size	get_used_size, .Lfunc_end3-get_used_size
                                        # -- End function
	.globl	get_max_size            # -- Begin function get_max_size
	.p2align	4, 0x90
	.type	get_max_size,@function
get_max_size:                           # @get_max_size
# %bb.0:
	xorl	%eax, %eax
	retq
.Lfunc_end4:
	.size	get_max_size, .Lfunc_end4-get_max_size
                                        # -- End function
	.globl	destroy_memory_pool     # -- Begin function destroy_memory_pool
	.p2align	4, 0x90
	.type	destroy_memory_pool,@function
destroy_memory_pool:                    # @destroy_memory_pool
# %bb.0:
	movl	$0, (%rdi)
	retq
.Lfunc_end5:
	.size	destroy_memory_pool, .Lfunc_end5-destroy_memory_pool
                                        # -- End function
	.globl	tlsf_malloc             # -- Begin function tlsf_malloc
	.p2align	4, 0x90
	.type	tlsf_malloc,@function
tlsf_malloc:                            # @tlsf_malloc
# %bb.0:
	jmp	malloc_ex               # TAILCALL
.Lfunc_end6:
	.size	tlsf_malloc, .Lfunc_end6-tlsf_malloc
                                        # -- End function
	.globl	malloc_ex               # -- Begin function malloc_ex
	.p2align	4, 0x90
	.type	malloc_ex,@function
malloc_ex:                              # @malloc_ex
# %bb.0:
	pushq	%r14
	pushq	%rbx
	leaq	15(%rdi), %rax
	andq	$-16, %rax
	cmpq	$16, %rdi
	movl	$16, %r8d
	cmovaeq	%rax, %r8
	cmpq	$127, %r8
	ja	.LBB7_2
# %bb.1:
	movq	%r8, %rdx
	shrq	$2, %rdx
	xorl	%r10d, %r10d
	jmp	.LBB7_3
.LBB7_2:
	xorl	%eax, %eax
	cmpl	$255, %r8d
	seta	%al
	shll	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$16777215, %r8d         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %r8d            # imm = 0x10000
	leal	16(,%rcx,8), %ecx
	cmovbl	%eax, %ecx
	movl	%r8d, %eax
	shrl	%cl, %eax
	addl	table(,%rax,4), %ecx
	addb	$-5, %cl
	movl	$-1, %r9d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r9d
	movl	%r9d, %eax
	notl	%eax
	movslq	%eax, %rdi
	addq	%r8, %rdi
	xorl	%ecx, %ecx
	cmpl	$255, %edi
	seta	%cl
	shll	$3, %ecx
	xorl	%eax, %eax
	cmpl	$16777215, %edi         # imm = 0xFFFFFF
	seta	%al
	cmpl	$65536, %edi            # imm = 0x10000
	leal	16(,%rax,8), %eax
	cmovbl	%ecx, %eax
	movl	%edi, %ebx
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movq	%rdi, %rdx
	movl	table(,%rbx,4), %ebx
	leal	(%rax,%rbx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movslq	%r9d, %r8
	andq	%rdi, %r8
	addl	$-32, %edx
	leal	(%rax,%rbx), %r10d
	addl	$-6, %r10d
.LBB7_3:
	movslq	%r10d, %rdi
	movl	20(%rsi,%rdi,4), %eax
	movl	%edx, %ecx
	shrl	%cl, %eax
	shll	%cl, %eax
	testl	%eax, %eax
	je	.LBB7_5
# %bb.4:
	movl	%eax, %edx
	negl	%edx
	andl	%eax, %edx
	jmp	.LBB7_7
.LBB7_5:
	movl	16(%rsi), %eax
	addb	$1, %r10b
	movl	%r10d, %ecx
	shrl	%cl, %eax
	shll	%cl, %eax
	movl	%eax, %edx
	negl	%edx
	andl	%eax, %edx
	xorl	%eax, %eax
	cmpl	$255, %edx
	seta	%al
	shll	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rcx,8), %r10d
	cmovbl	%eax, %r10d
	movl	%r10d, %ecx
	shrq	%cl, %rdx
	addl	table(,%rdx,4), %r10d
	testl	%r10d, %r10d
	jle	.LBB7_17
# %bb.6:
	movslq	%r10d, %rdi
	movl	20(%rsi,%rdi,4), %eax
	movl	%eax, %edx
	negl	%edx
	andl	%eax, %edx
.LBB7_7:
	xorl	%eax, %eax
	cmpl	$255, %edx
	seta	%al
	shll	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rcx,8), %ecx
	cmovbl	%eax, %ecx
	shrq	%cl, %rdx
	addl	table(,%rdx,4), %ecx
	movslq	%ecx, %rax
	shlq	$8, %rdi
	addq	%rsi, %rdi
	movq	120(%rdi,%rax,8), %r9
	testq	%r9, %r9
	je	.LBB7_17
# %bb.8:
	movq	24(%r9), %rdi
	movslq	%r10d, %rbx
	movq	%rbx, %rdx
	shlq	$8, %rdx
	addq	%rsi, %rdx
	addq	$120, %rdx
	movq	%rdi, (%rdx,%rax,8)
	testq	%rdi, %rdi
	je	.LBB7_11
# %bb.9:
	movq	$0, 16(%rdi)
	jmp	.LBB7_13
.LBB7_17:
	xorl	%eax, %eax
	jmp	.LBB7_23
.LBB7_11:
	leaq	(%rsi,%rbx,4), %rax
	movl	$-2, %edx
	roll	%cl, %edx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	andl	%edx, 20(%rax,%rcx,4)
	movl	$-2, %eax
	cmpl	$0, 20(%rsi,%rbx,4)
	jne	.LBB7_13
# %bb.12:
	movl	%r10d, %ecx
	roll	%cl, %eax
	sarl	$5, %r10d
	movslq	%r10d, %rcx
	andl	%eax, 16(%rsi,%rcx,4)
.LBB7_13:
	leaq	16(%r9), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r9)
	movq	8(%r9), %rcx
	movl	%ecx, %edi
	andl	$-8, %edi
	movq	%rdi, %rdx
	subq	%r8, %rdx
	cmpq	$32, %rdx
	jb	.LBB7_16
# %bb.14:
	leaq	120(%rsi), %r11
	addq	$-16, %rdx
	leaq	(%rax,%r8), %r10
	movq	%rdx, %rcx
	orq	$1, %rcx
	movq	%rcx, 8(%rax,%r8)
	movq	%r10, (%rax,%rdi)
	cmpq	$127, %rdx
	ja	.LBB7_18
# %bb.15:
	shrq	$2, %rdx
	xorl	%ecx, %ecx
	jmp	.LBB7_19
.LBB7_16:
	andb	$-3, 8(%rax,%rdi)
	andq	$-2, %rcx
	jmp	.LBB7_22
.LBB7_18:
	xorl	%ecx, %ecx
	cmpl	$255, %edx
	seta	%cl
	shll	$3, %ecx
	xorl	%edi, %edi
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%dil
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rdi,8), %edi
	cmovbl	%ecx, %edi
	movl	%edx, %ebx
	movl	%edi, %ecx
	shrl	%cl, %ebx
	movl	table(,%rbx,4), %ebx
	leal	(%rbx,%rdi), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	addl	$-32, %edx
	leal	(%rbx,%rdi), %ecx
	addl	$-6, %ecx
.LBB7_19:
	movq	$0, 16(%r10)
	movslq	%ecx, %rdi
	movslq	%edx, %rcx
	movq	%rdi, %rbx
	shlq	$8, %rbx
	addq	%rbx, %r11
	leaq	(%r11,%rcx,8), %r14
	movq	(%r11,%rcx,8), %rbx
	movq	%rbx, 24(%r10)
	movq	(%r11,%rcx,8), %rcx
	testq	%rcx, %rcx
	je	.LBB7_21
# %bb.20:
	movq	%r10, 16(%rcx)
.LBB7_21:
	movq	%r10, (%r14)
	leaq	(%rsi,%rdi,4), %r10
	movl	$1, %r11d
	movl	$1, %ebx
	movl	%edx, %ecx
	shll	%cl, %ebx
	sarl	$5, %edx
	movslq	%edx, %rcx
	orl	%ebx, 20(%r10,%rcx,4)
	movl	%edi, %ecx
	shll	%cl, %r11d
	sarl	$5, %edi
	movslq	%edi, %rcx
	orl	%r11d, 16(%rsi,%rcx,4)
	movq	8(%r9), %rcx
	andl	$2, %ecx
	orq	%r8, %rcx
.LBB7_22:
	movq	%rcx, 8(%r9)
.LBB7_23:
	popq	%rbx
	popq	%r14
	retq
.Lfunc_end7:
	.size	malloc_ex, .Lfunc_end7-malloc_ex
                                        # -- End function
	.globl	tlsf_free               # -- Begin function tlsf_free
	.p2align	4, 0x90
	.type	tlsf_free,@function
tlsf_free:                              # @tlsf_free
# %bb.0:
	jmp	free_ex                 # TAILCALL
.Lfunc_end8:
	.size	tlsf_free, .Lfunc_end8-tlsf_free
                                        # -- End function
	.globl	tlsf_realloc            # -- Begin function tlsf_realloc
	.p2align	4, 0x90
	.type	tlsf_realloc,@function
tlsf_realloc:                           # @tlsf_realloc
# %bb.0:
	jmp	realloc_ex              # TAILCALL
.Lfunc_end9:
	.size	tlsf_realloc, .Lfunc_end9-tlsf_realloc
                                        # -- End function
	.globl	realloc_ex              # -- Begin function realloc_ex
	.p2align	4, 0x90
	.type	realloc_ex,@function
realloc_ex:                             # @realloc_ex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	testq	%rdi, %rdi
	je	.LBB10_7
# %bb.1:
	movq	%rdi, %rbx
	testq	%rsi, %rsi
	je	.LBB10_9
# %bb.2:
	movq	-8(%rbx), %rax
	andl	$-8, %eax
	leaq	(%rbx,%rax), %r8
	leaq	15(%rsi), %rcx
	andq	$-16, %rcx
	cmpq	$16, %rsi
	movl	$16, %r15d
	cmovaeq	%rcx, %r15
	movq	8(%rbx,%rax), %rdx
	cmpq	%rax, %r15
	jbe	.LBB10_10
# %bb.3:
	testb	$1, %dl
	je	.LBB10_5
# %bb.4:
	andl	$-8, %edx
	addq	%rdx, %rax
	cmpq	%rax, %r15
	jbe	.LBB10_15
.LBB10_5:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	malloc_ex
	testq	%rax, %rax
	je	.LBB10_14
# %bb.6:
	movq	%rax, %r12
	movq	-8(%rbx), %rax
	andl	$-8, %eax
	cmpq	%r15, %rax
	cmovaq	%r15, %rax
	movl	%eax, %edx
	movq	%r12, %rdi
	movq	%rbx, %rsi
	callq	memcpy
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	free_ex
	movq	%r12, %rbx
	jmp	.LBB10_35
.LBB10_7:
	testq	%rsi, %rsi
	je	.LBB10_14
# %bb.8:
	movq	%rsi, %rdi
	movq	%r14, %rsi
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	jmp	malloc_ex               # TAILCALL
.LBB10_9:
	movq	%rbx, %rdi
	movq	%r14, %rsi
	callq	free_ex
	xorl	%ebx, %ebx
	jmp	.LBB10_35
.LBB10_10:
	testb	$1, %dl
	je	.LBB10_27
# %bb.11:
	andl	$-8, %edx
	cmpq	$127, %rdx
	ja	.LBB10_17
# %bb.12:
	shrq	$2, %rdx
	xorl	%r9d, %r9d
	jmp	.LBB10_18
.LBB10_14:
	xorl	%ebx, %ebx
	jmp	.LBB10_35
.LBB10_15:
	cmpl	$127, %edx
	ja	.LBB10_36
# %bb.16:
	shrq	$2, %rdx
	xorl	%eax, %eax
	jmp	.LBB10_37
.LBB10_17:
	xorl	%ecx, %ecx
	cmpl	$255, %edx
	seta	%cl
	shll	$3, %ecx
	xorl	%esi, %esi
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%sil
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rsi,8), %esi
	cmovbl	%ecx, %esi
	movl	%edx, %edi
	movl	%esi, %ecx
	shrl	%cl, %edi
	movl	table(,%rdi,4), %edi
	leal	(%rdi,%rsi), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	addl	$-32, %edx
	leal	(%rdi,%rsi), %r9d
	addl	$-6, %r9d
.LBB10_18:
	leaq	16(%r8), %rdi
	movq	24(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_20
# %bb.19:
	movq	(%rdi), %rsi
	movq	%rsi, 16(%rcx)
.LBB10_20:
	movq	(%rdi), %rcx
	testq	%rcx, %rcx
	je	.LBB10_22
# %bb.21:
	movq	8(%rdi), %rsi
	movq	%rsi, 24(%rcx)
.LBB10_22:
	movslq	%r9d, %r10
	movq	%r10, %rcx
	shlq	$8, %rcx
	addq	%r14, %rcx
	movslq	%edx, %rsi
	cmpq	%r8, 120(%rcx,%rsi,8)
	jne	.LBB10_26
# %bb.23:
	leaq	(%rcx,%rsi,8), %rcx
	addq	$120, %rcx
	movq	8(%rdi), %rsi
	movq	%rsi, (%rcx)
	testq	%rsi, %rsi
	jne	.LBB10_26
# %bb.24:
	leaq	(%r14,%r10,4), %r11
	movl	$-2, %esi
	movl	%edx, %ecx
	roll	%cl, %esi
	sarl	$5, %edx
	movslq	%edx, %rcx
	andl	%esi, 20(%r11,%rcx,4)
	movl	$-2, %edx
	cmpl	$0, 20(%r14,%r10,4)
	jne	.LBB10_26
# %bb.25:
	movl	%r9d, %ecx
	roll	%cl, %edx
	sarl	$5, %r9d
	movslq	%r9d, %rcx
	andl	%edx, 16(%r14,%rcx,4)
.LBB10_26:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r8)
	movq	8(%r8), %rcx
	andl	$-8, %ecx
	addq	%rcx, %rax
	addq	$16, %rax
	addq	%rcx, %rdi
	movq	%rdi, %r8
.LBB10_27:
	subq	%r15, %rax
	cmpq	$32, %rax
	jb	.LBB10_35
# %bb.28:
	addq	$-16, %rax
	leaq	(%rbx,%r15), %r9
	movq	%rax, %rcx
	orq	$1, %rcx
	movq	%rcx, 8(%rbx,%r15)
	movq	%r9, (%r8)
	orb	$2, 8(%r8)
	cmpq	$127, %rax
	ja	.LBB10_30
# %bb.29:
	shrq	$2, %rax
	xorl	%ecx, %ecx
	jmp	.LBB10_31
.LBB10_30:
	xorl	%ecx, %ecx
	cmpl	$255, %eax
	seta	%cl
	shll	$3, %ecx
	xorl	%edx, %edx
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	seta	%dl
	cmpl	$65536, %eax            # imm = 0x10000
	leal	16(,%rdx,8), %edx
	cmovbl	%ecx, %edx
	movl	%eax, %edi
	movl	%edx, %ecx
	shrl	%cl, %edi
	movl	table(,%rdi,4), %edi
	leal	(%rdi,%rdx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	addl	$-32, %eax
	leal	(%rdi,%rdx), %ecx
	addl	$-6, %ecx
.LBB10_31:
	movq	$0, 16(%r9)
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	shlq	$8, %rdi
	addq	%r14, %rdi
	movslq	%eax, %rsi
	leaq	(%rdi,%rsi,8), %r8
	addq	$120, %r8
	movq	120(%rdi,%rsi,8), %rcx
	movq	%rcx, 24(%r9)
	movq	120(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB10_33
# %bb.32:
	movq	%r9, 16(%rdi)
.LBB10_33:
	movq	%r9, (%r8)
.LBB10_34:
	leaq	(%r14,%rdx,4), %r8
	movl	$1, %edi
	movl	$1, %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	sarl	$5, %eax
	cltq
	orl	%esi, 20(%r8,%rax,4)
	movl	%edx, %ecx
	shll	%cl, %edi
	sarl	$5, %edx
	movslq	%edx, %rax
	orl	%edi, 16(%r14,%rax,4)
	movq	-8(%rbx), %rax
	andl	$2, %eax
	orq	%r15, %rax
	movq	%rax, -8(%rbx)
.LBB10_35:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_36:
	xorl	%ecx, %ecx
	cmpl	$255, %edx
	seta	%cl
	shll	$3, %ecx
	xorl	%eax, %eax
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%al
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rax,8), %eax
	cmovbl	%ecx, %eax
	movl	%edx, %esi
	movl	%eax, %ecx
	shrl	%cl, %esi
	movl	table(,%rsi,4), %esi
	leal	(%rsi,%rax), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	addl	$-32, %edx
	addl	%esi, %eax
	addl	$-6, %eax
.LBB10_37:
	movq	24(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_39
# %bb.38:
	movq	16(%r8), %rsi
	movq	%rsi, 16(%rcx)
.LBB10_39:
	movq	16(%r8), %rcx
	testq	%rcx, %rcx
	je	.LBB10_41
# %bb.40:
	movq	24(%r8), %rsi
	movq	%rsi, 24(%rcx)
.LBB10_41:
	leaq	-16(%rbx), %r9
	movslq	%eax, %rdi
	movslq	%edx, %rcx
	movq	%rdi, %rsi
	shlq	$8, %rsi
	addq	%r14, %rsi
	addq	$120, %rsi
	cmpq	%r8, (%rsi,%rcx,8)
	jne	.LBB10_45
# %bb.42:
	leaq	(%rsi,%rcx,8), %rcx
	movq	24(%r8), %rsi
	movq	%rsi, (%rcx)
	testq	%rsi, %rsi
	jne	.LBB10_45
# %bb.43:
	leaq	(%r14,%rdi,4), %r10
	movl	$-2, %esi
	movl	%edx, %ecx
	roll	%cl, %esi
	sarl	$5, %edx
	movslq	%edx, %rcx
	andl	%esi, 20(%r10,%rcx,4)
	movl	$-2, %edx
	cmpl	$0, 20(%r14,%rdi,4)
	jne	.LBB10_45
# %bb.44:
	movl	%eax, %ecx
	roll	%cl, %edx
	sarl	$5, %eax
	cltq
	andl	%edx, 16(%r14,%rax,4)
.LBB10_45:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r8)
	movq	8(%r8), %rax
	andl	$-8, %eax
	movq	-8(%rbx), %rcx
	addq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, -8(%rbx)
	andl	$-8, %ecx
	movq	%r9, (%rbx,%rcx)
	andb	$-3, 8(%rbx,%rcx)
	movq	%rcx, %rax
	subq	%r15, %rax
	cmpq	$32, %rax
	jb	.LBB10_35
# %bb.46:
	leaq	120(%r14), %rdi
	addq	$-16, %rax
	leaq	(%rbx,%r15), %r8
	movq	%rax, %rdx
	orq	$1, %rdx
	movq	%rdx, 8(%rbx,%r15)
	movq	%r8, (%rbx,%rcx)
	orb	$2, 8(%rbx,%rcx)
	cmpq	$127, %rax
	ja	.LBB10_48
# %bb.47:
	shrq	$2, %rax
	xorl	%ecx, %ecx
	jmp	.LBB10_49
.LBB10_48:
	xorl	%ecx, %ecx
	cmpl	$255, %eax
	seta	%cl
	shll	$3, %ecx
	xorl	%edx, %edx
	cmpl	$16777215, %eax         # imm = 0xFFFFFF
	seta	%dl
	cmpl	$65536, %eax            # imm = 0x10000
	leal	16(,%rdx,8), %edx
	cmovbl	%ecx, %edx
	movl	%eax, %esi
	movl	%edx, %ecx
	shrl	%cl, %esi
	movl	table(,%rsi,4), %esi
	leal	(%rsi,%rdx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	addl	$-32, %eax
	leal	(%rsi,%rdx), %ecx
	addl	$-6, %ecx
.LBB10_49:
	movq	$0, 16(%r8)
	movslq	%ecx, %rdx
	movslq	%eax, %rsi
	movq	%rdx, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rdi
	leaq	(%rdi,%rsi,8), %r9
	movq	(%rdi,%rsi,8), %rcx
	movq	%rcx, 24(%r8)
	movq	(%rdi,%rsi,8), %rdi
	testq	%rdi, %rdi
	je	.LBB10_51
# %bb.50:
	movq	%r8, 16(%rdi)
.LBB10_51:
	movq	%r8, (%r9)
	jmp	.LBB10_34
.Lfunc_end10:
	.size	realloc_ex, .Lfunc_end10-realloc_ex
                                        # -- End function
	.globl	tlsf_calloc             # -- Begin function tlsf_calloc
	.p2align	4, 0x90
	.type	tlsf_calloc,@function
tlsf_calloc:                            # @tlsf_calloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	.LBB11_5
# %bb.1:
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB11_5
# %bb.2:
	imulq	%rdi, %rbx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	malloc_ex
	testq	%rax, %rax
	je	.LBB11_3
# %bb.4:
	movq	%rax, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	jmp	.LBB11_5
.LBB11_3:
	xorl	%r14d, %r14d
.LBB11_5:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end11:
	.size	tlsf_calloc, .Lfunc_end11-tlsf_calloc
                                        # -- End function
	.globl	calloc_ex               # -- Begin function calloc_ex
	.p2align	4, 0x90
	.type	calloc_ex,@function
calloc_ex:                              # @calloc_ex
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	xorl	%r14d, %r14d
	testq	%rdi, %rdi
	je	.LBB12_5
# %bb.1:
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB12_5
# %bb.2:
	imulq	%rdi, %rbx
	movq	%rbx, %rdi
	movq	%rdx, %rsi
	callq	malloc_ex
	testq	%rax, %rax
	je	.LBB12_3
# %bb.4:
	movq	%rax, %r14
	movq	%rax, %rdi
	xorl	%esi, %esi
	movq	%rbx, %rdx
	callq	memset
	jmp	.LBB12_5
.LBB12_3:
	xorl	%r14d, %r14d
.LBB12_5:
	movq	%r14, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.Lfunc_end12:
	.size	calloc_ex, .Lfunc_end12-calloc_ex
                                        # -- End function
	.type	table,@object           # @table
	.section	.data_shared,"a",@progbits
	.p2align	4
table:
	.long	4294967295              # 0xffffffff
	.long	0                       # 0x0
	.long	1                       # 0x1
	.long	1                       # 0x1
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	2                       # 0x2
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	3                       # 0x3
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	4                       # 0x4
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	5                       # 0x5
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	6                       # 0x6
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.long	7                       # 0x7
	.size	table, 1024

	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
