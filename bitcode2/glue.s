	.text
	.file	"glue.c"
	.globl	uk_tlsf_init            # -- Begin function uk_tlsf_init
	.p2align	4, 0x90
	.type	uk_tlsf_init,@function
uk_tlsf_init:                           # @uk_tlsf_init
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rsi, %rdx
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$103, %rsi
	ja	.LBB0_2
# %bb.1:
	xorl	%ebx, %ebx
	movl	$104, %esi
	xorl	%eax, %eax
	callq	uk_pr_err
	jmp	.LBB0_5
.LBB0_2:
	movq	%rdi, %rbx
	movq	%rdx, 88(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	addq	$-104, %rdx
	leaq	104(%rdi), %rsi
	movq	%rdx, %rdi
	callq	init_memory_pool
	movl	$42, __A_VARIABLE(%rip)
	cmpq	$-1, %rax
	je	.LBB0_3
# %bb.4:
	movq	$uk_malloc_ifmalloc, (%rbx)
	movq	$uk_calloc_compat, 8(%rbx)
	movq	$uk_realloc_ifmalloc, 16(%rbx)
	movq	$uk_posix_memalign_ifmalloc, 24(%rbx)
	movq	$uk_memalign_compat, 32(%rbx)
	movl	$uk_tlsf_free, %eax
	movq	%rax, %xmm0
	movl	$uk_free_ifmalloc, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 40(%rbx)
	movl	$uk_palloc_compat, %eax
	movq	%rax, %xmm0
	movl	$uk_tlsf_malloc, %eax
	movq	%rax, %xmm1
	punpcklqdq	%xmm0, %xmm1    # xmm1 = xmm1[0],xmm0[0]
	movdqu	%xmm1, 56(%rbx)
	movq	$uk_pfree_compat, 72(%rbx)
	movq	$0, 80(%rbx)
	movq	%rbx, %rdi
	callq	uk_alloc_register
	jmp	.LBB0_5
.LBB0_3:
	xorl	%ebx, %ebx
.LBB0_5:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	uk_tlsf_init, .Lfunc_end0-uk_tlsf_init
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_err
	.type	uk_pr_err,@function
uk_pr_err:                              # @uk_pr_err
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB1_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB1_2:
	movq	%rsi, -200(%rbp)
	movq	%rdx, -192(%rbp)
	movq	%rcx, -184(%rbp)
	movq	%r8, -176(%rbp)
	movq	%r9, -168(%rbp)
	leaq	-208(%rbp), %rax
	movq	%rax, -16(%rbp)
	leaq	16(%rbp), %rax
	movq	%rax, -24(%rbp)
	movabsq	$206158430216, %rax     # imm = 0x3000000008
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %r9
	movl	$uk_pr_err.__str, %esi
	movl	$uk_pr_err.__str.2, %edx
	movl	$.L.str, %r8d
	movl	$1, %edi
	movl	$190, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_pr_err, .Lfunc_end1-uk_pr_err
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_tlsf_malloc
	.type	uk_tlsf_malloc,@function
uk_tlsf_malloc:                         # @uk_tlsf_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	leaq	104(%rdi), %rsi
	movq	%rax, %rdi
	callq	tlsf_malloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end2:
	.size	uk_tlsf_malloc, .Lfunc_end2-uk_tlsf_malloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_tlsf_free
	.type	uk_tlsf_free,@function
uk_tlsf_free:                           # @uk_tlsf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movq	%rsi, %rax
	leaq	104(%rdi), %rsi
	movq	%rax, %rdi
	callq	tlsf_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end3:
	.size	uk_tlsf_free, .Lfunc_end3-uk_tlsf_free
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Not enough space for allocator: %lu B required but only %lx B usable\n"
	.size	.L.str, 70

	.type	uk_pr_err.__str,@object # @uk_pr_err.__str
	.section	.data_shared,"aw",@progbits
uk_pr_err.__str:
	.asciz	"libtlsf"
	.size	uk_pr_err.__str, 8

	.type	uk_pr_err.__str.2,@object # @uk_pr_err.__str.2
uk_pr_err.__str.2:
	.asciz	"glue.c"
	.size	uk_pr_err.__str.2, 7

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
