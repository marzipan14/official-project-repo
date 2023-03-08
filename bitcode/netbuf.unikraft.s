	.text
	.file	"netbuf.c"
	.globl	lwip_alloc_netbuf       # -- Begin function lwip_alloc_netbuf
	.p2align	4, 0x90
	.type	lwip_alloc_netbuf,@function
lwip_alloc_netbuf:                      # @lwip_alloc_netbuf
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%rbx
	pushq	%rax
	movl	%ecx, %r14d
	movl	$40, %r8d
	xorl	%r9d, %r9d
	callq	uk_netbuf_alloc_buf
	movq	%rax, %r15
	testq	%rax, %rax
	je	.LBB0_2
# %bb.1:
	movq	32(%r15), %rbx
	movl	$42, __A_VARIABLE(%rip)
	movl	$40, %edx
	movq	%rbx, %rdi
	xorl	%esi, %esi
	callq	memset
	movw	$513, 20(%rbx)          # imm = 0x201
	movq	16(%r15), %rax
	movq	%rax, 8(%rbx)
	movb	$1, 22(%rbx)
	movq	$_netbuf_free, 24(%rbx)
	movq	%r15, 32(%rbx)
	movl	48(%r15), %eax
	subl	%r14d, %eax
	movw	%ax, 24(%r15)
.LBB0_2:
	movl	$42, __A_VARIABLE(%rip)
	movq	%r15, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.Lfunc_end0:
	.size	lwip_alloc_netbuf, .Lfunc_end0-lwip_alloc_netbuf
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function _netbuf_free
	.type	_netbuf_free,@function
_netbuf_free:                           # @_netbuf_free
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%rax
	testq	%rdi, %rdi
	je	.LBB1_1
# %bb.3:
	testb	$2, 21(%rdi)
	je	.LBB1_4
# %bb.5:
	movq	32(%rdi), %rdi
	movl	$42, __A_VARIABLE(%rip)
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_intrstack_start, %ecx
	cmpq	%rcx, %rax
	jb	.LBB1_8
# %bb.6:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	movl	$_end, %ecx
	cmpq	%rcx, %rax
	jbe	.LBB1_7
.LBB1_8:
	#APP
	movq	%rsp, %rax
	#NO_APP
	movl	$42, __A_VARIABLE(%rip)
	andq	$-65536, %rax           # imm = 0xFFFF0000
	movl	4096(%rax), %r15d
	movl	$42, __A_VARIABLE(%rip)
	#APP
	pushq	%rsi
	pushq	%rdi
	pushq	%r8
	pushq	%r9
	pushq	%r10
	pushq	%r11
	pushq	%r12
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	pushq	(%r11)
	addq	$8, %r11
	pushq	(%r11)
	movq	%r15, %r11
	shlq	$4, %r11
	addq	$tsb_comp1, %r11
	leaq	(%r11), %rcx
	movq	%rsp, (%r11)
	movq	%rbp, 8(%rcx)
.Ltmp0:
	movq	$1073741820, %rax       # imm = 0x3FFFFFFC
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741820, %rax       # imm = 0x3FFFFFFC
	jne	.Ltmp0
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp0, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	andq	$-16, %rsp
	callq	uk_netbuf_free_single
.Ltmp1:
	movq	$1073741811, %rax       # imm = 0x3FFFFFF3
	xorq	%rcx, %rcx
	xorq	%rdx, %rdx
	wrpkru
	lfence
	cmpq	$1073741811, %rax       # imm = 0x3FFFFFF3
	jne	.Ltmp1
	movq	%r15, %rsp
	shlq	$4, %rsp
	addq	$tsb_comp1, %rsp
	movq	%rsp, %rbp
	movq	(%rsp), %rsp
	addq	$8, %rbp
	movq	(%rbp), %rbp
	movq	%r15, %r12
	shlq	$4, %r12
	addq	$tsb_comp1, %r12
	addq	$8, %r12
	popq	(%r12)
	subq	$8, %r12
	popq	(%r12)
	popq	%r12
	popq	%r11
	popq	%r10
	popq	%r9
	popq	%r8
	popq	%rdi
	popq	%rsi

	#NO_APP
	jmp	.LBB1_9
.LBB1_7:
	callq	uk_netbuf_free_single
.LBB1_9:
	movl	$42, __A_VARIABLE(%rip)
	addq	$8, %rsp
	popq	%r15
	popq	%rbp
	retq
.LBB1_1:
	movl	$.L.str.3, %esi
	jmp	.LBB1_2
.LBB1_4:
	movl	$.L.str.4, %esi
.LBB1_2:
	xorl	%eax, %eax
	callq	uk_pr_crit
	movl	$3, %edi
	callq	ukplat_terminate
.Lfunc_end1:
	.size	_netbuf_free, .Lfunc_end1-_netbuf_free
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function uk_pr_crit
	.type	uk_pr_crit,@function
uk_pr_crit:                             # @uk_pr_crit
# %bb.0:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$208, %rsp
	testb	%al, %al
	je	.LBB2_2
# %bb.1:
	movaps	%xmm0, -160(%rbp)
	movaps	%xmm1, -144(%rbp)
	movaps	%xmm2, -128(%rbp)
	movaps	%xmm3, -112(%rbp)
	movaps	%xmm4, -96(%rbp)
	movaps	%xmm5, -80(%rbp)
	movaps	%xmm6, -64(%rbp)
	movaps	%xmm7, -48(%rbp)
.LBB2_2:
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
.Lfunc_end2:
	.size	uk_pr_crit, .Lfunc_end2-uk_pr_crit
                                        # -- End function
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"Assertion failure: %s\n"
	.size	.L.str, 23

	.type	uk_pr_crit.__str,@object # @uk_pr_crit.__str
	.section	.data_shared,"aw",@progbits
uk_pr_crit.__str:
	.asciz	"liblwip"
	.size	uk_pr_crit.__str, 8

	.type	uk_pr_crit.__str.2,@object # @uk_pr_crit.__str.2
uk_pr_crit.__str.2:
	.asciz	"netbuf.c"
	.size	uk_pr_crit.__str.2, 9

	.type	.L.str.3,@object        # @.str.3
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.3:
	.asciz	"p"
	.size	.L.str.3, 2

	.type	.L.str.4,@object        # @.str.4
.L.str.4:
	.asciz	"p->flags & 0x02U"
	.size	.L.str.4, 17

	.type	__A_VARIABLE,@object    # @__A_VARIABLE
	.local	__A_VARIABLE
	.comm	__A_VARIABLE,4,4
	.ident	"clang version 7.0.1-8+deb10u2 (tags/RELEASE_701/final)"
	.section	".note.GNU-stack","",@progbits
