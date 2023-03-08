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
	movl	$42, __A_VARIABLE(%rip)
	movq	$-1, %rax
	cmpq	$6392, %rdi             # imm = 0x18F8
	jb	.LBB0_7
# %bb.1:
	movq	%rsi, %rbx
	testq	%rsi, %rsi
	je	.LBB0_7
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	testb	$7, %bl
	jne	.LBB0_7
# %bb.3:
	cmpl	$710539865, (%rbx)      # imm = 0x2A59FA59
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rsi
	callq	free_ex
	movq	%r15, 8(%rbx)
	movq	6312(%rbx), %rax
.LBB0_6:
	andl	$-8, %eax
.LBB0_7:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	pushq	%rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_34
# %bb.1:
	movq	-8(%rdi), %rdx
	movq	%rdx, %r9
	orq	$1, %r9
	movq	%r9, -8(%rdi)
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rdi)
	andl	$-8, %edx
	movq	8(%rdi,%rdx), %rax
	movl	$42, __A_VARIABLE(%rip)
	testb	$1, %al
	je	.LBB1_14
# %bb.2:
	addq	%rdi, %rdx
	andl	$-8, %eax
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%r9,4), %r9d
	leal	(%r9,%r8), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %eax
	addl	%r9d, %r8d
	addl	$-6, %r8d
.LBB1_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rdx), %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB1_7
# %bb.6:
	movq	16(%rdx), %rcx
	movq	%rcx, 16(%r9)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_7:
	movq	16(%rdx), %r9
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB1_9
# %bb.8:
	movq	24(%rdx), %rcx
	movq	%rcx, 24(%r9)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_9:
	movslq	%r8d, %r9
	movq	%r9, %rcx
	shlq	$8, %rcx
	addq	%rsi, %rcx
	movslq	%eax, %r10
	cmpq	%rdx, 120(%rcx,%r10,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_13
# %bb.10:
	leaq	(%rcx,%r10,8), %r10
	addq	$120, %r10
	movq	24(%rdx), %rcx
	movq	%rcx, (%r10)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB1_13
# %bb.11:
	leaq	(%rsi,%r9,4), %r11
	movl	$-2, %r10d
	movl	$-2, %ebx
	movl	%eax, %ecx
	roll	%cl, %ebx
	sarl	$5, %eax
	cltq
	andl	%ebx, 20(%r11,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 20(%rsi,%r9,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_13
# %bb.12:
	movl	%r8d, %ecx
	roll	%cl, %r10d
	sarl	$5, %r8d
	movslq	%r8d, %rax
	andl	%r10d, 16(%rsi,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_13:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rdx)
	movq	8(%rdx), %rax
	andl	$-8, %eax
	movq	-8(%rdi), %rcx
	leaq	(%rax,%rcx), %r9
	addq	$16, %r9
	movq	%r9, -8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_14:
	leaq	-16(%rdi), %r8
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	leal	16(,%rdx,8), %edx
	cmovbl	%ecx, %edx
	movl	%eax, %ebx
	movl	%edx, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rbx,4), %ebx
	leal	(%rbx,%rdx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %eax
	leal	(%rbx,%rdx), %r9d
	addl	$-6, %r9d
.LBB1_19:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_21
# %bb.20:
	movq	16(%r8), %rdx
	movq	%rdx, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_21:
	movq	16(%r8), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB1_23
# %bb.22:
	movq	24(%r8), %rdx
	movq	%rdx, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB1_23:
	movslq	%r9d, %r11
	movq	%r11, %rcx
	shlq	$8, %rcx
	addq	%rsi, %rcx
	movslq	%eax, %rdx
	cmpq	%r8, 120(%rcx,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_27
# %bb.24:
	leaq	(%rcx,%rdx,8), %rcx
	addq	$120, %rcx
	movq	24(%r8), %rdx
	movq	%rdx, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	jne	.LBB1_27
# %bb.25:
	leaq	(%rsi,%r11,4), %rdx
	movl	$-2, %r10d
	movl	$-2, %ebx
	movl	%eax, %ecx
	roll	%cl, %ebx
	sarl	$5, %eax
	cltq
	andl	%ebx, 20(%rdx,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 20(%rsi,%r11,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB1_27
# %bb.26:
	movl	%r9d, %ecx
	roll	%cl, %r10d
	sarl	$5, %r9d
	movslq	%r9d, %rax
	andl	%r10d, 16(%rsi,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
.LBB1_28:
	andl	$-8, %r9d
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rax,4), %edi
	leal	(%rdi,%rdx), %ecx
	addb	$-5, %cl
	movq	%r9, %rax
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %eax
	leal	(%rdi,%rdx), %ecx
	addl	$-6, %ecx
.LBB1_31:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r8)
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	shlq	$8, %rdi
	addq	%rsi, %rdi
	movslq	%eax, %rbx
	leaq	(%rdi,%rbx,8), %r11
	addq	$120, %r11
	movq	120(%rdi,%rbx,8), %rcx
	movq	%rcx, 24(%r8)
	movq	120(%rdi,%rbx,8), %rdi
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB1_33
# %bb.32:
	movq	%r8, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	movq	(%r10), %r9
	andl	$-8, %r9d
.LBB1_33:
	movq	%r8, (%r11)
	leaq	(%rsi,%rdx,4), %rdi
	movl	$1, %ebx
	movl	%eax, %ecx
	shll	%cl, %ebx
	sarl	$5, %eax
	cltq
	orl	%ebx, 20(%rdi,%rax,4)
	movl	$1, %eax
	movl	%edx, %ecx
	shll	%cl, %eax
	movl	$42, __A_VARIABLE(%rip)
	sarl	$5, %edx
	movslq	%edx, %rcx
	orl	%eax, 16(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	orb	$2, 24(%r8,%r9)
	movq	%r8, 16(%r8,%r9)
.LBB1_34:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rcx, %rbx
	je	.LBB2_5
# %bb.9:                                #   in Loop: Header=BB2_4 Depth=3
	leaq	16(%rdi), %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%r15, %rdx
	je	.LBB2_10
# %bb.15:                               #   in Loop: Header=BB2_4 Depth=3
	movq	8(%rax), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rsi
	testq	%rdx, %rdx
	jne	.LBB2_4
	jmp	.LBB2_16
	.p2align	4, 0x90
.LBB2_10:                               #   in Loop: Header=BB2_3 Depth=2
	movq	8(%rax), %rdx
	cmpq	%rax, 8(%r14)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_11
# %bb.12:                               #   in Loop: Header=BB2_3 Depth=2
	movq	%rdx, 8(%rsi)
	movq	8(%rax), %rdx
	jmp	.LBB2_13
.LBB2_11:                               #   in Loop: Header=BB2_3 Depth=2
	movq	%rdx, 8(%r14)
.LBB2_13:                               #   in Loop: Header=BB2_3 Depth=2
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB2_6
# %bb.7:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, 8(%rsi)
	movq	8(%rax), %rdx
	jmp	.LBB2_8
.LBB2_6:                                #   in Loop: Header=BB2_2 Depth=1
	movq	%rdx, 8(%r14)
.LBB2_8:                                #   in Loop: Header=BB2_2 Depth=1
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r12), %rbx
	andl	$-8, %ebx
	addq	%rcx, %rbx
	addq	$32, %rbx
	andq	%r8, %rbx
	movq	%rbx, 8(%r12)
	movq	%r12, (%rax,%rcx)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end5:
	.size	destroy_memory_pool, .Lfunc_end5-destroy_memory_pool
                                        # -- End function
	.globl	tlsf_malloc             # -- Begin function tlsf_malloc
	.p2align	4, 0x90
	.type	tlsf_malloc,@function
tlsf_malloc:                            # @tlsf_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	malloc_ex
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$15, %rdi
	ja	.LBB7_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %edi
	jmp	.LBB7_3
.LBB7_2:
	addq	$15, %rdi
	andq	$-16, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rdi
	ja	.LBB7_4
.LBB7_3:
	movq	%rdi, %rdx
	shrq	$2, %rdx
	xorl	%r8d, %r8d
	jmp	.LBB7_5
.LBB7_4:
	xorl	%eax, %eax
	cmpl	$255, %edi
	seta	%al
	shll	$3, %eax
	xorl	%ecx, %ecx
	cmpl	$16777215, %edi         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %edi            # imm = 0x10000
	movl	$42, __A_VARIABLE(%rip)
	leal	16(,%rcx,8), %ecx
	cmovbl	%eax, %ecx
	movl	$42, __A_VARIABLE(%rip)
	movl	%edi, %eax
	shrl	%cl, %eax
	addl	table(,%rax,4), %ecx
	addb	$-5, %cl
	movl	$-1, %r8d
                                        # kill: def $cl killed $cl killed $ecx
	shll	%cl, %r8d
	movl	%r8d, %eax
	notl	%eax
	movslq	%eax, %rcx
	addq	%rdi, %rcx
	xorl	%edx, %edx
	cmpl	$255, %ecx
	seta	%dl
	shll	$3, %edx
	xorl	%eax, %eax
	cmpl	$16777215, %ecx         # imm = 0xFFFFFF
	seta	%al
	cmpl	$65536, %ecx            # imm = 0x10000
	leal	16(,%rax,8), %eax
	cmovbl	%edx, %eax
	movq	%rcx, %rdx
	movslq	%r8d, %rdi
	andq	%rcx, %rdi
	movl	%ecx, %ebx
	movl	%eax, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rbx,4), %ebx
	leal	(%rbx,%rax), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %edx
	leal	(%rbx,%rax), %r8d
	addl	$-6, %r8d
.LBB7_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movslq	%r8d, %rax
	movl	20(%rsi,%rax,4), %ebx
	movl	%edx, %ecx
	shrl	%cl, %ebx
	shll	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	testl	%ebx, %ebx
	je	.LBB7_7
# %bb.6:
	movl	%ebx, %edx
	negl	%edx
	andl	%ebx, %edx
	jmp	.LBB7_10
.LBB7_7:
	movl	16(%rsi), %eax
	addb	$1, %r8b
	movl	%r8d, %ecx
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
	leal	16(,%rcx,8), %r8d
	cmovbl	%eax, %r8d
	movl	%r8d, %ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	addl	table(,%rdx,4), %r8d
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testl	%r8d, %r8d
	jle	.LBB7_8
# %bb.9:
	movslq	%r8d, %rax
	movl	20(%rsi,%rax,4), %ecx
	movl	%ecx, %edx
	negl	%edx
	andl	%ecx, %edx
.LBB7_10:
	xorl	%ebx, %ebx
	cmpl	$255, %edx
	seta	%bl
	shll	$3, %ebx
	xorl	%ecx, %ecx
	cmpl	$16777215, %edx         # imm = 0xFFFFFF
	seta	%cl
	cmpl	$65536, %edx            # imm = 0x10000
	leal	16(,%rcx,8), %ecx
	cmovbl	%ebx, %ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	table(,%rdx,4), %ecx
	movl	$42, __A_VARIABLE(%rip)
	movslq	%ecx, %rdx
	shlq	$8, %rax
	addq	%rsi, %rax
	movq	120(%rax,%rdx,8), %r9
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%r9, %r9
	je	.LBB7_11
# %bb.12:
	movq	24(%r9), %rbx
	movslq	%r8d, %r10
	movq	%r10, %rax
	shlq	$8, %rax
	addq	%rsi, %rax
	addq	$120, %rax
	movq	%rbx, (%rax,%rdx,8)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rbx, %rbx
	je	.LBB7_14
# %bb.13:
	movq	$0, 16(%rbx)
.LBB7_16:
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_17
.LBB7_11:
	xorl	%eax, %eax
	jmp	.LBB7_27
.LBB7_14:
	leaq	(%rsi,%r10,4), %rax
	movl	$-2, %edx
	movl	$-2, %ebx
	roll	%cl, %ebx
	sarl	$5, %ecx
	movslq	%ecx, %rcx
	andl	%ebx, 20(%rax,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 20(%rsi,%r10,4)
	movl	$42, __A_VARIABLE(%rip)
	je	.LBB7_15
.LBB7_17:
	leaq	16(%r9), %rax
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%r9)
	movq	8(%r9), %rcx
	movl	%ecx, %edx
	andl	$-8, %edx
	movq	%rdx, %rbx
	subq	%rdi, %rbx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rbx
	jb	.LBB7_24
# %bb.18:
	leaq	120(%rsi), %r11
	addq	$-16, %rbx
	leaq	(%rax,%rdi), %r10
	movq	%rbx, %rcx
	orq	$1, %rcx
	movq	%rcx, 8(%rax,%rdi)
	movq	%r10, (%rax,%rdx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rbx
	ja	.LBB7_20
# %bb.19:
	shrq	$2, %rbx
	xorl	%ecx, %ecx
	jmp	.LBB7_21
.LBB7_24:
	andb	$-3, 8(%rax,%rdx)
	andq	$-2, %rcx
	jmp	.LBB7_25
.LBB7_8:
	movl	$42, __A_VARIABLE(%rip)
	xorl	%eax, %eax
	jmp	.LBB7_26
.LBB7_20:
	xorl	%ecx, %ecx
	cmpl	$255, %ebx
	seta	%cl
	shll	$3, %ecx
	xorl	%edx, %edx
	cmpl	$16777215, %ebx         # imm = 0xFFFFFF
	seta	%dl
	cmpl	$65536, %ebx            # imm = 0x10000
	leal	16(,%rdx,8), %r8d
	cmovbl	%ecx, %r8d
	movl	%ebx, %edx
	movl	%r8d, %ecx
	shrl	%cl, %edx
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rdx,4), %edx
	leal	(%rdx,%r8), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %ebx
	leal	(%rdx,%r8), %ecx
	addl	$-6, %ecx
.LBB7_21:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r10)
	movslq	%ecx, %r8
	movslq	%ebx, %rdx
	movq	%r8, %rcx
	shlq	$8, %rcx
	addq	%rcx, %r11
	leaq	(%r11,%rdx,8), %r14
	movq	(%r11,%rdx,8), %rcx
	movq	%rcx, 24(%r10)
	movq	(%r11,%rdx,8), %rdx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdx, %rdx
	je	.LBB7_23
# %bb.22:
	movq	%r10, 16(%rdx)
	movl	$42, __A_VARIABLE(%rip)
.LBB7_23:
	movq	%r10, (%r14)
	movl	$1, %edx
	movl	%ebx, %ecx
	shll	%cl, %edx
	leaq	(%rsi,%r8,4), %rcx
	movl	$1, %r10d
	sarl	$5, %ebx
	movslq	%ebx, %rbx
	orl	%edx, 20(%rcx,%rbx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	%r8d, %ecx
	shll	%cl, %r10d
	sarl	$5, %r8d
	movslq	%r8d, %rcx
	orl	%r10d, 16(%rsi,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movq	8(%r9), %rcx
	andl	$2, %ecx
	orq	%rdi, %rcx
.LBB7_25:
	movq	%rcx, 8(%r9)
.LBB7_26:
	movl	$42, __A_VARIABLE(%rip)
.LBB7_27:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	retq
.LBB7_15:
	movl	%r8d, %ecx
	roll	%cl, %edx
	sarl	$5, %r8d
	movslq	%r8d, %rax
	andl	%edx, 16(%rsi,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	jmp	.LBB7_16
.Lfunc_end7:
	.size	malloc_ex, .Lfunc_end7-malloc_ex
                                        # -- End function
	.globl	tlsf_free               # -- Begin function tlsf_free
	.p2align	4, 0x90
	.type	tlsf_free,@function
tlsf_free:                              # @tlsf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	free_ex
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end8:
	.size	tlsf_free, .Lfunc_end8-tlsf_free
                                        # -- End function
	.globl	tlsf_realloc            # -- Begin function tlsf_realloc
	.p2align	4, 0x90
	.type	tlsf_realloc,@function
tlsf_realloc:                           # @tlsf_realloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	callq	realloc_ex
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_9
# %bb.1:
	movq	%rdi, %r12
	testq	%rsi, %rsi
	je	.LBB10_11
# %bb.2:
	movq	-8(%r12), %rax
	andl	$-8, %eax
	leaq	(%r12,%rax), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$16, %r15d
	cmpq	$16, %rsi
	jb	.LBB10_4
# %bb.3:
	addq	$15, %rsi
	andq	$-16, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rsi, %r15
.LBB10_4:
	movq	8(%rbx), %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jbe	.LBB10_12
# %bb.5:
	testb	$1, %dl
	je	.LBB10_7
# %bb.6:
	andl	$-8, %edx
	addq	%rdx, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	%rax, %r15
	jbe	.LBB10_17
.LBB10_7:
	movq	%r15, %rdi
	movq	%r14, %rsi
	callq	malloc_ex
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB10_16
# %bb.8:
	movq	%rax, %rbx
	movq	-8(%r12), %rax
	andl	$-8, %eax
	cmpq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	cmovaq	%r15, %rax
	movl	%eax, %edx
	movq	%rbx, %rdi
	movq	%r12, %rsi
	callq	memcpy
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	free_ex
	movq	%rbx, %r12
	jmp	.LBB10_37
.LBB10_9:
	testq	%rsi, %rsi
	je	.LBB10_15
# %bb.10:
	movq	%rsi, %rdi
	movq	%r14, %rsi
	callq	malloc_ex
	movq	%rax, %r12
	jmp	.LBB10_37
.LBB10_11:
	movq	%r12, %rdi
	movq	%r14, %rsi
	callq	free_ex
	xorl	%r12d, %r12d
	jmp	.LBB10_37
.LBB10_12:
	testb	$1, %dl
	je	.LBB10_29
# %bb.13:
	andl	$-8, %edx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rdx
	ja	.LBB10_19
# %bb.14:
	shrq	$2, %rdx
	xorl	%r8d, %r8d
	jmp	.LBB10_20
.LBB10_15:
	movl	$42, __A_VARIABLE(%rip)
.LBB10_16:
	xorl	%r12d, %r12d
	jmp	.LBB10_37
.LBB10_17:
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$127, %edx
	ja	.LBB10_38
# %bb.18:
	shrq	$2, %rdx
	xorl	%r9d, %r9d
	jmp	.LBB10_39
.LBB10_19:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rdi,4), %edi
	leal	(%rdi,%rsi), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %edx
	leal	(%rdi,%rsi), %r8d
	addl	$-6, %r8d
.LBB10_20:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	leaq	16(%rbx), %rdi
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_22
# %bb.21:
	movq	(%rdi), %rsi
	movq	%rsi, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_22:
	movq	(%rdi), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_24
# %bb.23:
	movq	8(%rdi), %rsi
	movq	%rsi, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_24:
	movslq	%r8d, %r10
	movq	%r10, %rcx
	shlq	$8, %rcx
	addq	%r14, %rcx
	movslq	%edx, %rsi
	cmpq	%rbx, 120(%rcx,%rsi,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_28
# %bb.25:
	leaq	(%rcx,%rsi,8), %rcx
	addq	$120, %rcx
	movq	8(%rdi), %rsi
	movq	%rsi, (%rcx)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rsi, %rsi
	jne	.LBB10_28
# %bb.26:
	leaq	(%r14,%r10,4), %r11
	movl	$-2, %r9d
	movl	$-2, %esi
	movl	%edx, %ecx
	roll	%cl, %esi
	sarl	$5, %edx
	movslq	%edx, %rcx
	andl	%esi, 20(%r11,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 20(%r14,%r10,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_28
# %bb.27:
	movl	%r8d, %ecx
	roll	%cl, %r9d
	sarl	$5, %r8d
	movslq	%r8d, %rcx
	andl	%r9d, 16(%r14,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_28:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movq	8(%rbx), %rcx
	andl	$-8, %ecx
	addq	%rcx, %rax
	addq	$16, %rax
	addq	%rcx, %rdi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rdi, %rbx
.LBB10_29:
	subq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rax
	jb	.LBB10_37
# %bb.30:
	addq	$-16, %rax
	leaq	(%r12,%r15), %r8
	movq	%rax, %rcx
	orq	$1, %rcx
	movq	%rcx, 8(%r12,%r15)
	movq	%r8, (%rbx)
	orb	$2, 8(%rbx)
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rax
	ja	.LBB10_32
# %bb.31:
	shrq	$2, %rax
	xorl	%ecx, %ecx
	jmp	.LBB10_33
.LBB10_32:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rdi,4), %edi
	leal	(%rdi,%rdx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %eax
	leal	(%rdi,%rdx), %ecx
	addl	$-6, %ecx
.LBB10_33:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r8)
	movslq	%ecx, %rdx
	movq	%rdx, %rdi
	shlq	$8, %rdi
	addq	%r14, %rdi
	movslq	%eax, %rbx
	leaq	(%rdi,%rbx,8), %rcx
	addq	$120, %rcx
	movq	120(%rdi,%rbx,8), %rsi
	movq	%rsi, 24(%r8)
	movq	120(%rdi,%rbx,8), %rdi
.LBB10_34:
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB10_36
# %bb.35:
	movq	%r8, 16(%rdi)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_36:
	movq	%r8, (%rcx)
	movl	$1, %esi
	movl	%eax, %ecx
	shll	%cl, %esi
	leaq	(%r14,%rdx,4), %rcx
	movl	$1, %edi
	sarl	$5, %eax
	cltq
	orl	%esi, 20(%rcx,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	%edx, %ecx
	shll	%cl, %edi
	sarl	$5, %edx
	movslq	%edx, %rax
	orl	%edi, 16(%r14,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movq	-8(%r12), %rax
	andl	$2, %eax
	orq	%r15, %rax
	movq	%rax, -8(%r12)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_37:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%r12, %rax
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB10_38:
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
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rsi,4), %esi
	leal	(%rsi,%rax), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rdx
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %edx
	leal	(%rsi,%rax), %r9d
	addl	$-6, %r9d
.LBB10_39:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	24(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_41
# %bb.40:
	movq	16(%rbx), %rax
	movq	%rax, 16(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_41:
	movq	16(%rbx), %rcx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	je	.LBB10_43
# %bb.42:
	movq	24(%rbx), %rax
	movq	%rax, 24(%rcx)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_43:
	leaq	-16(%r12), %rsi
	movslq	%r9d, %rdi
	movslq	%edx, %rcx
	movq	%rdi, %rax
	shlq	$8, %rax
	addq	%r14, %rax
	addq	$120, %rax
	cmpq	%rbx, (%rax,%rcx,8)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_47
# %bb.44:
	leaq	(%rax,%rcx,8), %rax
	movq	24(%rbx), %rcx
	movq	%rcx, (%rax)
	movl	$42, __A_VARIABLE(%rip)
	testq	%rcx, %rcx
	jne	.LBB10_47
# %bb.45:
	leaq	(%r14,%rdi,4), %r10
	movl	$-2, %r8d
	movl	$-2, %eax
	movl	%edx, %ecx
	roll	%cl, %eax
	sarl	$5, %edx
	movslq	%edx, %rcx
	andl	%eax, 20(%r10,%rcx,4)
	movl	$42, __A_VARIABLE(%rip)
	cmpl	$0, 20(%r14,%rdi,4)
	movl	$42, __A_VARIABLE(%rip)
	jne	.LBB10_47
# %bb.46:
	movl	%r9d, %ecx
	roll	%cl, %r8d
	sarl	$5, %r9d
	movslq	%r9d, %rax
	andl	%r8d, 16(%r14,%rax,4)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
.LBB10_47:
	xorps	%xmm0, %xmm0
	movups	%xmm0, 16(%rbx)
	movq	8(%rbx), %rax
	andl	$-8, %eax
	movq	-8(%r12), %rcx
	addq	%rax, %rcx
	addq	$16, %rcx
	movq	%rcx, -8(%r12)
	andl	$-8, %ecx
	movq	%rsi, (%r12,%rcx)
	andb	$-3, 8(%r12,%rcx)
	movq	%rcx, %rax
	subq	%r15, %rax
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$32, %rax
	jb	.LBB10_37
# %bb.48:
	addq	$-16, %rax
	leaq	(%r12,%r15), %r8
	movq	%rax, %rdx
	orq	$1, %rdx
	movq	%rdx, 8(%r12,%r15)
	movq	%r8, (%r12,%rcx)
	orb	$2, 8(%r12,%rcx)
	leaq	120(%r14), %rdi
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$127, %rax
	ja	.LBB10_50
# %bb.49:
	shrq	$2, %rax
	xorl	%ecx, %ecx
	jmp	.LBB10_51
.LBB10_50:
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
	movl	%eax, %ebx
	movl	%edx, %ecx
	shrl	%cl, %ebx
	movl	$42, __A_VARIABLE(%rip)
	movl	table(,%rbx,4), %ebx
	leal	(%rbx,%rdx), %ecx
	addb	$-5, %cl
                                        # kill: def $cl killed $cl killed $ecx
	shrq	%cl, %rax
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addl	$-32, %eax
	leal	(%rbx,%rdx), %ecx
	addl	$-6, %ecx
.LBB10_51:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	$0, 16(%r8)
	movslq	%ecx, %rdx
	movslq	%eax, %rbx
	movq	%rdx, %rcx
	shlq	$8, %rcx
	addq	%rcx, %rdi
	leaq	(%rdi,%rbx,8), %rcx
	movq	(%rdi,%rbx,8), %rsi
	movq	%rsi, 24(%r8)
	movq	(%rdi,%rbx,8), %rdi
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
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
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
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

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
