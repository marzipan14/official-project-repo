	.text
	.file	"netbuf.c"
	.globl	netbuf_new              # -- Begin function netbuf_new
	.p2align	4, 0x90
	.type	netbuf_new,@function
netbuf_new:                             # @netbuf_new
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movl	$6, %edi
	callq	memp_malloc
	movq	%rax, %rbx
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movl	$48, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end0:
	.size	netbuf_new, .Lfunc_end0-netbuf_new
                                        # -- End function
	.globl	netbuf_delete           # -- Begin function netbuf_delete
	.p2align	4, 0x90
	.type	netbuf_delete,@function
netbuf_delete:                          # @netbuf_delete
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB1_4
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB1_3
# %bb.2:
	callq	pbuf_free
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
.LBB1_3:
	movl	$6, %edi
	movq	%rbx, %rsi
	callq	memp_free
.LBB1_4:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end1:
	.size	netbuf_delete, .Lfunc_end1-netbuf_delete
                                        # -- End function
	.globl	netbuf_alloc            # -- Begin function netbuf_alloc
	.p2align	4, 0x90
	.type	netbuf_alloc,@function
netbuf_alloc:                           # @netbuf_alloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB2_1
# %bb.3:
	movl	%esi, %r14d
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB2_5
# %bb.4:
	callq	pbuf_free
.LBB2_5:
	movzwl	%r14w, %esi
	movl	$74, %edi
	movl	$640, %edx              # imm = 0x280
	callq	pbuf_alloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB2_6
# %bb.7:
	cmpw	%r14w, 18(%rax)
	jb	.LBB2_8
# %bb.9:
	movq	%rax, 8(%rbx)
	movq	8(%rax), %rax
	jmp	.LBB2_10
.LBB2_6:
	xorl	%eax, %eax
.LBB2_10:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_1:
	movl	$.L.str, %edi
	jmp	.LBB2_2
.LBB2_8:
	movl	$.L.str.3, %edi
.LBB2_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end2:
	.size	netbuf_alloc, .Lfunc_end2-netbuf_alloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	movq	%rdi, %r10
	testb	%al, %al
	je	.LBB3_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB3_2:
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
	movl	$uk_pr_crit.__str, %esi
	movl	$uk_pr_crit.__str.13, %edx
	xorl	%edi, %edi
	movl	$198, %ecx
	movq	%r10, %r8
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end3:
	.size	uk_pr_crit, .Lfunc_end3-uk_pr_crit
                                        # -- End function
	.globl	netbuf_free             # -- Begin function netbuf_free
	.p2align	4, 0x90
	.type	netbuf_free,@function
netbuf_free:                            # @netbuf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB4_4
# %bb.1:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB4_3
# %bb.2:
	callq	pbuf_free
.LBB4_3:
	xorps	%xmm0, %xmm0
	movups	%xmm0, (%rbx)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB4_4:
	movl	$.L.str.4, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	netbuf_free, .Lfunc_end4-netbuf_free
                                        # -- End function
	.globl	netbuf_ref              # -- Begin function netbuf_ref
	.p2align	4, 0x90
	.type	netbuf_ref,@function
netbuf_ref:                             # @netbuf_ref
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB5_7
# %bb.1:
	movl	%edx, %r14d
	movq	%rsi, %r15
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	testq	%rdi, %rdi
	je	.LBB5_3
# %bb.2:
	callq	pbuf_free
.LBB5_3:
	movl	$74, %edi
	xorl	%esi, %esi
	movl	$65, %edx
	callq	pbuf_alloc
	movq	%rax, (%rbx)
	testq	%rax, %rax
	je	.LBB5_4
# %bb.5:
	movq	%r15, 8(%rax)
	movw	%r14w, 16(%rax)
	movw	%r14w, 18(%rax)
	movq	%rax, 8(%rbx)
	xorl	%eax, %eax
	jmp	.LBB5_6
.LBB5_4:
	movq	$0, 8(%rbx)
	movb	$-1, %al
.LBB5_6:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB5_7:
	movl	$.L.str.5, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end5:
	.size	netbuf_ref, .Lfunc_end5-netbuf_ref
                                        # -- End function
	.globl	netbuf_chain            # -- Begin function netbuf_chain
	.p2align	4, 0x90
	.type	netbuf_chain,@function
netbuf_chain:                           # @netbuf_chain
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	testq	%rdi, %rdi
	je	.LBB6_1
# %bb.3:
	movq	%rsi, %r14
	testq	%rsi, %rsi
	je	.LBB6_4
# %bb.5:
	movq	%rdi, %rbx
	movq	(%rdi), %rdi
	movq	(%r14), %rsi
	callq	pbuf_cat
	movq	(%rbx), %rax
	movq	%rax, 8(%rbx)
	movl	$6, %edi
	movq	%r14, %rsi
	callq	memp_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB6_1:
	movl	$.L.str.6, %edi
	jmp	.LBB6_2
.LBB6_4:
	movl	$.L.str.7, %edi
.LBB6_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end6:
	.size	netbuf_chain, .Lfunc_end6-netbuf_chain
                                        # -- End function
	.globl	netbuf_data             # -- Begin function netbuf_data
	.p2align	4, 0x90
	.type	netbuf_data,@function
netbuf_data:                            # @netbuf_data
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB7_1
# %bb.3:
	testq	%rsi, %rsi
	je	.LBB7_4
# %bb.5:
	testq	%rdx, %rdx
	je	.LBB7_6
# %bb.7:
	movq	8(%rdi), %rax
	testq	%rax, %rax
	je	.LBB7_8
# %bb.9:
	movq	8(%rax), %rax
	movq	%rax, (%rsi)
	movq	8(%rdi), %rax
	movzwl	18(%rax), %eax
	movw	%ax, (%rdx)
	xorl	%eax, %eax
	jmp	.LBB7_10
.LBB7_8:
	movb	$-2, %al
.LBB7_10:
	movl	$42, __A_VARIABLE(%rip)
                                        # kill: def $al killed $al killed $eax
	popq	%rbp
	retq
.LBB7_1:
	movl	$.L.str.8, %edi
	jmp	.LBB7_2
.LBB7_4:
	movl	$.L.str.9, %edi
	jmp	.LBB7_2
.LBB7_6:
	movl	$.L.str.10, %edi
.LBB7_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end7:
	.size	netbuf_data, .Lfunc_end7-netbuf_data
                                        # -- End function
	.globl	netbuf_next             # -- Begin function netbuf_next
	.p2align	4, 0x90
	.type	netbuf_next,@function
netbuf_next:                            # @netbuf_next
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB8_5
# %bb.1:
	movq	8(%rdi), %rax
	movq	(%rax), %rax
	testq	%rax, %rax
	je	.LBB8_2
# %bb.3:
	movq	%rax, 8(%rdi)
	cmpq	$0, (%rax)
	sete	%al
	jmp	.LBB8_4
.LBB8_2:
	movb	$-1, %al
.LBB8_4:
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB8_5:
	movl	$.L.str.11, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end8:
	.size	netbuf_next, .Lfunc_end8-netbuf_next
                                        # -- End function
	.globl	netbuf_first            # -- Begin function netbuf_first
	.p2align	4, 0x90
	.type	netbuf_first,@function
netbuf_first:                           # @netbuf_first
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	testq	%rdi, %rdi
	je	.LBB9_2
# %bb.1:
	movq	(%rdi), %rax
	movq	%rax, 8(%rdi)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB9_2:
	movl	$.L.str.12, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end9:
	.size	netbuf_first, .Lfunc_end9-netbuf_first
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"netbuf_alloc: invalid buf"
	.size	.L.str, 26

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"check that first pbuf can hold size"
	.size	.L.str.3, 36

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"netbuf_free: invalid buf"
	.size	.L.str.4, 25

	.type	.L.str.5,@object        # @.str.5
.L.str.5:
	.asciz	"netbuf_ref: invalid buf"
	.size	.L.str.5, 24

	.type	.L.str.6,@object        # @.str.6
.L.str.6:
	.asciz	"netbuf_chain: invalid head"
	.size	.L.str.6, 27

	.type	.L.str.7,@object        # @.str.7
.L.str.7:
	.asciz	"netbuf_chain: invalid tail"
	.size	.L.str.7, 27

	.type	.L.str.8,@object        # @.str.8
.L.str.8:
	.asciz	"netbuf_data: invalid buf"
	.size	.L.str.8, 25

	.type	.L.str.9,@object        # @.str.9
.L.str.9:
	.asciz	"netbuf_data: invalid dataptr"
	.size	.L.str.9, 29

	.type	.L.str.10,@object       # @.str.10
.L.str.10:
	.asciz	"netbuf_data: invalid len"
	.size	.L.str.10, 25

	.type	.L.str.11,@object       # @.str.11
.L.str.11:
	.asciz	"netbuf_next: invalid buf"
	.size	.L.str.11, 25

	.type	.L.str.12,@object       # @.str.12
.L.str.12:
	.asciz	"netbuf_first: invalid buf"
	.size	.L.str.12, 26

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.13,@object # @uk_pr_crit.__str.13
uk_pr_crit.__str.13:
	.asciz	"netbuf.c"
	.size	uk_pr_crit.__str.13, 9

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
