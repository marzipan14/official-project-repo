	.text
	.file	"mem.c"
	.globl	mem_init                # -- Begin function mem_init
	.p2align	4, 0x90
	.type	mem_init,@function
mem_init:                               # @mem_init
# %bb.0:
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end0:
	.size	mem_init, .Lfunc_end0-mem_init
                                        # -- End function
	.globl	mem_trim                # -- Begin function mem_trim
	.p2align	4, 0x90
	.type	mem_trim,@function
mem_trim:                               # @mem_trim
# %bb.0:
	movq	%rdi, %rax
	movl	$42, __A_VARIABLE(%rip)
	retq
.Lfunc_end1:
	.size	mem_trim, .Lfunc_end1-mem_trim
                                        # -- End function
	.globl	mem_malloc              # -- Begin function mem_malloc
	.p2align	4, 0x90
	.type	mem_malloc,@function
mem_malloc:                             # @mem_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	callq	sys_malloc
	movq	%rax, %rbx
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	jne	.LBB2_2
# %bb.1:
	callq	ukplat_lcpu_save_irqf
	movq	%rax, %rdi
	callq	ukplat_lcpu_restore_irqf
.LBB2_2:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movq	%rbx, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.Lfunc_end2:
	.size	mem_malloc, .Lfunc_end2-mem_malloc
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
	movl	$uk_pr_crit.__str.5, %edx
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
	.globl	mem_free                # -- Begin function mem_free
	.p2align	4, 0x90
	.type	mem_free,@function
mem_free:                               # @mem_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	movl	$42, __A_VARIABLE(%rip)
	testq	%rdi, %rdi
	je	.LBB4_2
# %bb.1:
	movl	$42, __A_VARIABLE(%rip)
	callq	sys_free
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.LBB4_2:
	movl	$.L.str.3, %edi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$.L.str.1, %edi
	movl	$.L.str.2, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end4:
	.size	mem_free, .Lfunc_end4-mem_free
                                        # -- End function
	.globl	mem_calloc              # -- Begin function mem_calloc
	.p2align	4, 0x90
	.type	mem_calloc,@function
mem_calloc:                             # @mem_calloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
                                        # kill: def $edi killed $edi killed $rdi
	callq	sys_calloc
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbp
	retq
.Lfunc_end5:
	.size	mem_calloc, .Lfunc_end5-mem_calloc
                                        # -- End function
	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str.1, 23

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"!(1)"
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"rmem != NULL"
	.size	.L.str.3, 13

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.5,@object # @uk_pr_crit.__str.5
uk_pr_crit.__str.5:
	.asciz	"mem.c"
	.size	uk_pr_crit.__str.5, 6

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
