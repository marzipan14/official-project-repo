	.text
	.file	"alloc.c"
	.globl	sys_malloc              # -- Begin function sys_malloc
	.p2align	4, 0x90
	.type	sys_malloc,@function
sys_malloc:                             # @sys_malloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	uk_alloc_get_default
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB0_1
# %bb.2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB0_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB0_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB0_3
.Lfunc_end0:
	.size	sys_malloc, .Lfunc_end0-sys_malloc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_alloc_get_default
	.type	uk_alloc_get_default,@function
uk_alloc_get_default:                   # @uk_alloc_get_default
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$32, %rsp
	#APP
	xorl	%ecx, %ecx
	rdpkru
	movl	%eax, %esi
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	%esi, -20(%rbp)
	movl	-20(%rbp), %eax
	movl	$42, __A_VARIABLE(%rip)
	movl	%eax, %ecx
	subl	$1073741811, %ecx       # imm = 0x3FFFFFF3
	je	.LBB1_4
	jmp	.LBB1_1
.LBB1_1:
	movl	%eax, %ecx
	subl	$1073741820, %ecx       # imm = 0x3FFFFFFC
	je	.LBB1_3
	jmp	.LBB1_2
.LBB1_2:
	subl	$1073741823, %eax       # imm = 0x3FFFFFFF
	je	.LBB1_5
	jmp	.LBB1_6
.LBB1_3:
	movq	_uk_alloc_head, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	$42, __A_VARIABLE
	jmp	.LBB1_7
.LBB1_4:
	movq	flexos_comp1_alloc, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	$42, __A_VARIABLE
	jmp	.LBB1_7
.LBB1_5:
	movl	$42, __A_VARIABLE
.LBB1_6:
	movb	$0, %al
	callq	uk_pr_debug
	movq	_uk_alloc_head, %rax
	movq	%rax, -16(%rbp)
	movl	$1, -4(%rbp)
	movl	$42, __A_VARIABLE
.LBB1_7:
	movq	-16(%rbp), %rax
	movl	$42, __A_VARIABLE
	addq	$32, %rsp
	popq	%rbp
	retq
.Lfunc_end1:
	.size	uk_alloc_get_default, .Lfunc_end1-uk_alloc_get_default
                                        # -- End function
	.globl	sys_calloc              # -- Begin function sys_calloc
	.p2align	4, 0x90
	.type	sys_calloc,@function
sys_calloc:                             # @sys_calloc
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %r14
	movl	%edi, %ebx
	callq	uk_alloc_get_default
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB2_1
# %bb.2:
	movslq	%ebx, %rsi
	movl	$42, __A_VARIABLE(%rip)
	movq	%rax, %rdi
	movq	%r14, %rdx
	callq	*8(%rax)
	movl	$42, __A_VARIABLE(%rip)
.LBB2_3:
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
.LBB2_1:
	callq	__errno
	movl	$12, (%rax)
	xorl	%eax, %eax
	jmp	.LBB2_3
.Lfunc_end2:
	.size	sys_calloc, .Lfunc_end2-sys_calloc
                                        # -- End function
	.globl	sys_free                # -- Begin function sys_free
	.p2align	4, 0x90
	.type	sys_free,@function
sys_free:                               # @sys_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%rbx
	pushq	%rax
	movq	%rdi, %rbx
	callq	uk_alloc_get_default
	movl	$42, __A_VARIABLE(%rip)
	testq	%rax, %rax
	je	.LBB3_2
# %bb.1:
	movq	%rax, %rdi
	movq	%rbx, %rsi
	callq	*40(%rax)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%rbx
	popq	%rbp
	retq
.LBB3_2:
	movl	$.L.str.1, %esi
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end3:
	.size	sys_free, .Lfunc_end3-sys_free
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB4_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB4_2:
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
	movl	$uk_pr_crit.__str.2, %edx
	movl	$.L.str, %r8d
	xorl	%edi, %edi
	movl	$198, %ecx
	callq	_uk_vprintk
	movl	$42, __A_VARIABLE(%rip)
	addq	$208, %rsp
	popq	%rbp
	retq
.Lfunc_end4:
	.size	uk_pr_crit, .Lfunc_end4-uk_pr_crit
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_debug
	.type	uk_pr_debug,@function
uk_pr_debug:                            # @uk_pr_debug
# %bb.0:
	subq	$200, %rsp
	testb	%al, %al
	je	.LBB5_2
# %bb.1:
	movaps	%xmm0, 48(%rsp)
	movaps	%xmm1, 64(%rsp)
	movaps	%xmm2, 80(%rsp)
	movaps	%xmm3, 96(%rsp)
	movaps	%xmm4, 112(%rsp)
	movaps	%xmm5, 128(%rsp)
	movaps	%xmm6, 144(%rsp)
	movaps	%xmm7, 160(%rsp)
.LBB5_2:
	movq	%rsi, 8(%rsp)
	movq	%rdx, 16(%rsp)
	movq	%rcx, 24(%rsp)
	movq	%r8, 32(%rsp)
	movq	%r9, 40(%rsp)
	movl	$42, __A_VARIABLE(%rip)
	movl	$42, __A_VARIABLE(%rip)
	addq	$200, %rsp
	retq
.Lfunc_end5:
	.size	uk_pr_debug, .Lfunc_end5-uk_pr_debug
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"a"
	.size	.L.str.1, 2

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.2,@object # @uk_pr_crit.__str.2
uk_pr_crit.__str.2:
	.asciz	"alloc.c"
	.size	uk_pr_crit.__str.2, 8

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
